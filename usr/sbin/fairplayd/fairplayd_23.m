uint64_t sub_1006CC700@<X0>(int a1@<W8>)
{
  v4 = ((a1 + 47997) ^ 0x8B5802EC) + (((v1 & 0xFFFFFFF0 ^ 0x28873FA9) - 1979460679) ^ ((v1 & 0xFFFFFFF0 ^ 0x3ADE0501) - 1738872559) ^ ((v1 & 0xFFFFFFF0 ^ 0x12593AA8) - 1327638854));
  LODWORD(STACK[0x2C0]) = v4 ^ ((v4 ^ 0x46A2C59B) - 1803515037) ^ ((v4 ^ 0x851CD35C) + 1463721382) ^ ((v4 ^ 0x959C1936) + 1203656656) ^ ((v4 ^ 0x7BFFBEF7) - 1445072881) ^ 0xC4087617;
  LODWORD(STACK[0x3A0]) = v1 - (v2 ^ 0xE9D5C711);
  return (*(v3 + 8 * (a1 ^ 0x7AAA)))();
}

uint64_t sub_1006CC864@<X0>(int a1@<W8>)
{
  v2 = STACK[0x4B8];
  LOBYTE(STACK[0x5B3]) = *(STACK[0x4B8] + 15);
  LOBYTE(STACK[0x5B2]) = v2[14];
  LOBYTE(STACK[0x5B1]) = v2[13];
  LOBYTE(STACK[0x5B0]) = v2[12];
  LOBYTE(STACK[0x5AF]) = v2[11];
  LOBYTE(STACK[0x5AE]) = v2[10];
  LOBYTE(STACK[0x5AD]) = v2[9];
  LOBYTE(STACK[0x5AC]) = v2[8];
  LOBYTE(STACK[0x5AB]) = v2[7];
  LOBYTE(STACK[0x5AA]) = v2[6];
  LOBYTE(STACK[0x5A9]) = v2[5];
  LOBYTE(STACK[0x5A8]) = v2[4];
  LOBYTE(STACK[0x5A7]) = v2[3];
  LOBYTE(STACK[0x5A6]) = v2[2];
  LOBYTE(STACK[0x5A5]) = v2[1];
  LOBYTE(STACK[0x5A4]) = *v2;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1006CC9FC(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v11 = v3 > v5;
  if (v11 == a3 < ((v9 + v6) | v7) + v4)
  {
    LOBYTE(v11) = a3 < a1;
  }

  return (*(STACK[0xF18] + 8 * (((((v9 - 1) ^ v10 & v11) & 1) * v8) ^ v9)))();
}

uint64_t sub_1006CCBFC()
{
  v1 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * (v0 - 29685));
  return (*(v1 + 52040))();
}

uint64_t sub_1006CCDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{
  *v18 = v19;
  v21 = *(v16 + 8);
  v22 = ((1389 * (((v17 + 1611664908) | 0x1041004E) ^ 0x7051295Eu)) ^ 0xC31DA1F13ADFA0B5) + v21;
  v23 = (*(&a16 + (a16 & 3)) % (((v22 / 4) - ((2 * (v22 / 4)) & 0x81ED5424) - 1057576430) ^ 0xC0F6AA12) + 43) & 0x1FC;
  v24 = (v21 ^ 0x329FFAA1) & (2 * (v21 & 0x3ADFFC88)) ^ v21 & 0x3ADFFC88;
  LODWORD(v22) = ((2 * (v21 ^ 0x761C43B1)) ^ 0x99877E72) & (v21 ^ 0x761C43B1) ^ (2 * (v21 ^ 0x761C43B1)) & 0x4CC3BF38;
  v25 = v22 ^ 0x44408109;
  LODWORD(v22) = (v22 ^ 0x8833620) & (4 * v24) ^ v24;
  v26 = ((4 * v25) ^ 0x330EFCE4) & v25 ^ (4 * v25) & 0x4CC3BF38;
  LODWORD(v22) = (v26 ^ 0x2BC20) & (16 * v22) ^ v22;
  v27 = ((16 * (v26 ^ 0x4CC10319)) ^ 0xCC3BF390) & (v26 ^ 0x4CC10319) ^ (16 * (v26 ^ 0x4CC10319)) & 0x4CC3BF10;
  LODWORD(v22) = v22 ^ 0x4CC3BF39 ^ (v27 ^ 0x4C03B300) & (v22 << 8);
  LODWORD(v21) = v21 ^ (2 * ((v22 << 16) & 0x4CC30000 ^ v22 ^ ((v22 << 16) ^ 0x3F390000) & (((v27 ^ 0xC00C29) << 8) & 0x4CC30000 ^ 0xC400000 ^ (((v27 ^ 0xC00C29) << 8) ^ 0xC3BF0000) & (v27 ^ 0xC00C29))));
  return (*(v20 + 8 * ((24731 * ((((v21 ^ 0x6E082116) + 1432170679) ^ ((v21 ^ 0x6A96E36E) + 1371796175) ^ ((v21 ^ 0xBFC44082) - 2070851293)) - (((v23 ^ 0x7EC62FD5) + 1712181011) ^ ((v23 ^ 0x4CF3CE0A) + 1412968142) ^ ((v23 ^ 0x3235E1DF) + 721289497)) - 1732489900 < 0x7FFFFFFF)) ^ v17)))();
}

uint64_t sub_1006CD07C()
{
  v3 = *(v0 + v1);
  v4 = 11881 * (((v2 - 5723) | 0x8B3A) ^ 0x8B38) - 54782609 + (((*(v0 - 0x217E172EFA1E804) ^ 0xF0200EAA) + 266334550) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0x275A6E34) - 660237876) ^ ((*(v0 - 0x217E172EFA1E804) ^ 0x3EAFA78F) - 1051699087));
  v5 = 634647737 * (((((&STACK[0x10000] + 3800) ^ 0x87106540) & 0x8FD27F48) + ((&STACK[0x10000] + 3800) ^ 0x38E61A8B) - (((&STACK[0x10000] + 3800) ^ 0x38E61A8B) & 0x8FD27F48)) ^ 0xDAA24A3F);
  LODWORD(STACK[0x10EF8]) = v2 - v5 + 34053;
  LODWORD(STACK[0x10ED8]) = v4 ^ v5;
  STACK[0x10EF0] = v3;
  STACK[0x10F00] = v0 - 0x217E172EFA1E800;
  STACK[0x10EE0] = &STACK[0x26F4];
  STACK[0x10EE8] = &STACK[0x5284];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 46184)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((48729 * (LODWORD(STACK[0x10F08]) == -371865839)) ^ v2)))(v7);
}

uint64_t sub_1006CD20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v33 - 152) = 0x71045A70E80CEAAFLL;
  v34 = *(*(v32 + 8 * ((v30 + 1781914298) ^ 0x6A369464)) - 586084794);
  *(v33 - 144) = -a30;
  *(v33 - 140) = v30 + 1216130663 - a30 + 4304;
  *(v33 - 128) = a30;
  *(v33 - 120) = v34 - a30;
  *(v33 - 112) = v30 + 1781914298 - a30 + 1282826110;
  *(v33 - 108) = ((v30 + 1216130663) & 0x487FFB41) - a30;
  *(v33 - 132) = v30 + 1216130663 + a30;
  v35 = (*(v31 + 8 * (v30 + 4116)))(v33 - 144);
  return (*(v31 + 8 * *(v33 - 136)))(v35);
}

uint64_t sub_1006CD3BC@<X0>(int a1@<W8>)
{
  v3 = (((*v2 ^ 0xF9BD286C) + 105043860) ^ ((*v2 ^ 0x5D83FCF1) - 1568931057) ^ (((11881 * (v1 ^ 0x9AC0) + 1307215953) ^ *v2) + (((v1 ^ 0x9AC0) + 38243) ^ 0xB2147912))) + 1140128864;
  v4 = v3 < 0x5A1F354F;
  v5 = a1 - 498977818 < v3;
  if ((a1 - 498977818) < 0x5A1F354F != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((29 * !v5) ^ v1)))();
}

uint64_t sub_1006CD4F0()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006CD944@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  STACK[0xED0] = v2 + 24;
  STACK[0xEC0] = v3 + 32;
  return (*(STACK[0xF18] + 8 * a2))(1864610357, a1, 2948493333, 2948493334, 87783936, 2191375790, 2948493335, 3947402372);
}

uint64_t sub_1006CDA58@<X0>(int a1@<W8>)
{
  v9 = *v3;
  v10 = *v2;
  v11 = STACK[0x3E8];
  v12 = STACK[0x3F0];
  v13 = (v10 + (v1 - 194741835));
  v14 = ((*(*STACK[0x3F0] + (*STACK[0x3E8] & v7)) ^ v13) & 0x7FFFFFFF) * v4;
  v15 = (v14 ^ HIWORD(v14)) * v4;
  v16 = *((v15 >> 24) + v5 + 2);
  v17 = v5;
  v18 = STACK[0x3C0];
  *v13 = *(v8 + (v15 >> 24)) ^ HIBYTE(a1) ^ v16 ^ *((v15 >> 24) + STACK[0x3C0] + 4) ^ v15 ^ (BYTE3(v15) * v6) ^ 0x4A;
  v19 = (v10 + (v1 - 194741834));
  LODWORD(v15) = ((*(*v12 + (*v11 & v7)) ^ v19) & 0x7FFFFFFF) * v4;
  v20 = (v15 ^ WORD1(v15)) * v4;
  *v19 = *(v8 + (v20 >> 24)) ^ BYTE2(a1) ^ *((v20 >> 24) + v17 + 2) ^ *((v20 >> 24) + v18 + 4) ^ v20 ^ (BYTE3(v20) * v6) ^ 0xB0;
  v21 = (v10 + (v1 - 194741833));
  LODWORD(v20) = ((*(*v12 + (*v11 & v7)) ^ v21) & 0x7FFFFFFF) * v4;
  v22 = (v20 ^ WORD1(v20)) * v4;
  *v21 = *(v8 + (v22 >> 24)) ^ BYTE1(a1) ^ *((v22 >> 24) + v17 + 2) ^ *((v22 >> 24) + v18 + 4) ^ v22 ^ (BYTE3(v22) * v6) ^ 0x7E;
  v23 = (v10 + (v1 - 194741832));
  LODWORD(v10) = ((*(*v12 + (*v11 & v7)) ^ v23) & 0x7FFFFFFF) * v4;
  v24 = (v10 ^ WORD1(v10)) * v4;
  *v23 = a1 ^ *(v8 + (v24 >> 24)) ^ *((v24 >> 24) + v17 + 2) ^ *((v24 >> 24) + v18 + 4) ^ v24 ^ (BYTE3(v24) * v6) ^ 0x1A;
  return v9();
}

uint64_t sub_1006CDC34()
{
  v6 = 23958;
  atomic_compare_exchange_strong(v4, &v6, v2);
  return (*(v5 + 8 * (((v6 == v3) * v1) ^ v0)))();
}

uint64_t sub_1006CDCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v36 = ((2 * (v30 - 2014859922)) & 0x13E) + ((v30 - 2014859922) ^ 0x4D7D3FD9FC57FD9FLL);
  if (v36 >= 0x4D7D3FD9FC57FD9FLL)
  {
    v38 = (4 * v36 + a28 - 0x35F4FF67F15FF67CLL);
  }

  else
  {
    v38 = (4 * v36 + a27 - 0x35F4FF67F15FF804);
  }

  v35 = ((3 * v30 + 84) ^ 0xE7) & (2 * ((3 * v30 + 84) & 0xF6)) ^ (3 * v30 + 84) & 0xF6;
  v37 = *(v33 + 4 * (((3 * v30 + 84) ^ (2 * (((3 * v30 + 84) ^ 0xA7) & (2 * ((3 * v30 + 84) ^ 0xA7)) & (4 * v35) ^ v35))) & 0x1F ^ 0x16u));
  v39 = ((v37 ^ 0xE4372474) + 466148236) ^ ((v37 ^ 0x16FAE5C7) - 385541575) ^ ((v37 ^ 0xD9A67E9C) + 643400036);
  *(v33 + 4 * ((7 * v30) & 0x1F)) ^= 0x40309F7C ^ (-2042045743 * (((((*v38 ^ 0x31E4FB2C) - 837090092) ^ ((*v38 ^ 0x5AA20BA8) - 1520569256) ^ ((*v38 ^ 0x15859E15) - 361078293)) - 1358145728) * (v39 + v34) - 810084527 * v39) - 1586220529);
  v40 = 3 * v30 - (v29 - 244311396) % 0x85u;
  v41 = v40 - 1749612337;
  LODWORD(v42) = v40 - 1749612470;
  if (v41 >= 0x85)
  {
    v42 = v42;
  }

  else
  {
    v42 = v41;
  }

  v43 = ((2 * v42) & 0x46) + (v42 ^ 0x5FFFFF57FF5FDF23);
  v44 = v43 - 0x5FFFFF57FF5FDF85;
  v45 = (a28 + 4 * v43 - 0x7FFFFD5FFD7F7C8CLL);
  if (v44 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v45 = (a27 + 4 * v44);
  }

  v46 = ((*v45 ^ 0x9360290A) + 1822414582) ^ ((*v45 ^ 0x915E84DD) + 1856076579) ^ ((*v45 ^ 0x7CFDC346) - 2097005382);
  *(v32 + 4 * ((13 * v30 + 22) & 0x1F)) = *(v32 + 4 * ((13 * v30 + 22) & 0x1F)) - 507501053 * ((v46 + 2126737041) * (v30 - 1503989244) - 510870678 * v46) - 486107874;
  return (*(v31 + 8 * ((2 * (v30 != 2014859953)) | (4 * (v30 != 2014859953)) | v28)))();
}

uint64_t sub_1006CE010@<X0>(int *a1@<X7>, uint64_t a2@<X8>)
{
  STACK[0x1878] = *(*(v2 + 168) + 40) + ((a2 - 3627) | 0xC42Au) + (*(*v4 + (*a1 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0xCD60E52FFB9405D6) + (*(*v4 + (*a1 & 0xFFFFFFFFED9E3EB8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x10D2D42CA170A687) - 50857;
  STACK[0x1708] = *(v3 + 8 * a2);
  return (*(v3 + 8 * (a2 ^ 0x372C)))();
}

uint64_t sub_1006CE0C0(uint64_t result)
{
  if ((*(result + 4) + 193924789 * ((2 * (result & 0x6C5C7602) - result - 1817998851) ^ 0x2518BB9B) - 1219944531) >= 3)
  {
    v1 = 118;
  }

  else
  {
    v1 = 119;
  }

  *result = v1;
  return result;
}

void sub_1006CE130(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = (*a1 ^ 0xFDDBFBFB3F7EEFDDLL) + 0x22404057D969333 + ((2 * *a1) & 0xFBB7F7F67EFDDFBALL);
  v4 = v3 < 0xBD158310;
  v5 = v3 > v2 + 3172303632u;
  if (v2 > 0xFFFFFFFF42EA7CEFLL != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 44) ^ (1603510583 * (((a1 | 0xB2745B11) - (a1 & 0xB2745B11)) ^ 0x25AF69BA));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1006CE370(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (((a1 ^ 0x4D49F4F1FE9E1E58) + (v5 ^ 0xB2B60B0E0161FDF3)) ^ ((v5 ^ 0xA325F1205E7F5BDBLL) + 0x5CDA0EDFA180A425) ^ (((((a1 + 30223) | 0x110) + 0x1812C32270F2A0FALL) ^ v5) - 0x1812C32270F3346ELL)) + 0x981390CF0E759A4;
  v11 = (((*v6 ^ v8) - 0x7241F7229333A902) ^ ((*v6 ^ 0x930D1CC99CB17A75) + 0x6CF2E336634E858BLL) ^ ((*v6 ^ 0xE8CDD2E7206F4131) + a5)) + 0x981390CF0E759A4;
  v12 = (v11 < v7) ^ (v10 < v7);
  v13 = v11 < v10;
  if (v12)
  {
    v13 = v10 < v7;
  }

  return (*(v9 + 8 * ((41 * v13) ^ a1)))();
}

uint64_t sub_1006CE51C()
{
  v6 = 23958;
  atomic_compare_exchange_strong(v3, &v6, v2);
  return (*(v5 + 8 * (((((v6 == v4) ^ (v0 + 1)) & 1) * v1) | v0)))();
}

uint64_t sub_1006CE54C()
{
  v0 = STACK[0xF10] - 12322;
  v1 = (((LODWORD(STACK[0x332C]) ^ 0x22738EAE) - 577998510) ^ ((LODWORD(STACK[0x332C]) ^ 0x5241CE4) - 86252772) ^ (((STACK[0xF10] - 830354912) ^ LODWORD(STACK[0x332C])) + 830319269)) - LODWORD(STACK[0x5D58]) + 556488295;
  v2 = (v1 ^ 0xFFB482EA) & (2 * (v1 & 0xFC36AA0B)) ^ v1 & 0xFC36AA0B;
  v3 = ((2 * (v1 ^ 0xA7F086EC)) ^ 0xB78C59CE) & (v1 ^ 0xA7F086EC) ^ (2 * (v1 ^ 0xA7F086EC)) & 0x5BC62CE6;
  v4 = v3 ^ 0x48422421;
  v5 = (v3 ^ 0x11840844) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x6F18B39C) & v4 ^ (4 * v4) & 0x5BC62CE4;
  v7 = (v6 ^ 0x4B002080) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x10C60C63)) ^ 0xBC62CE70) & (v6 ^ 0x10C60C63) ^ (16 * (v6 ^ 0x10C60C63)) & 0x5BC62CE0;
  v9 = v7 ^ 0x5BC62CE7 ^ (v8 ^ 0x18420C00) & (v7 << 8);
  LODWORD(STACK[0x70E4]) = v1 ^ (2 * ((v9 << 16) & 0x5BC60000 ^ v9 ^ ((v9 << 16) ^ 0x2CE70000) & (((v8 ^ 0x43842087) << 8) & 0x5BC60000 ^ 0x19C20000 ^ (((v8 ^ 0x43842087) << 8) ^ 0x462C0000) & (v8 ^ 0x43842087)))) ^ 0xB3E334D4;
  return (*(STACK[0xF18] + 8 * ((1453 * (((v1 ^ (2 * v9)) & 0xF) == 5)) ^ v0)))();
}

uint64_t sub_1006CE770(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  *v7 = 0x80000000;
  v9.n128_u64[0] = 0x8000000080000000;
  v9.n128_u64[1] = 0x8000000080000000;
  return (*(v8 + 8 * ((v6 ^ 0x4A141590) - 1781935670)))(a1, a2, a3, a4, a5, a6, v9);
}

uint64_t sub_1006CE8E4()
{
  v3 = LOBYTE(STACK[0x171B]) ^ 0x5F;
  v4 = ((LOBYTE(STACK[0x1718]) ^ 0x5F) << 24) | ((LOBYTE(STACK[0x1719]) ^ 0x5F) << 16) | ((LOBYTE(STACK[0x171A]) ^ 0x5F) << 8) | v3;
  *(STACK[0x8A8] + 24) = (v4 - 2 * (v4 & (4811 * (v0 ^ 0x7919) + 1775603388) ^ v3 & 0xC) + v1) ^ v1;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1006CEAFC@<X0>(int a1@<W8>)
{
  v8 = STACK[0x1B30] + v4;
  v9 = STACK[0x18E4];
  v10 = 297845113 * ((((2 * (v7 - 256)) | 0x6B3085D8) - (v7 - 256) - 899171052) ^ 0x42AB5E72);
  *(v7 - 240) = v8;
  *(v7 - 216) = (((v9 ^ 0x61F84618) + ((v3 - 1650507497) ^ 0x9E07A881)) ^ ((v9 ^ 0x8B31F9E8) + 1959659032) ^ ((v9 ^ 0x97114AC4) + 1760474428)) - v10 - 1105623293;
  *(v7 - 256) = v2;
  *(v7 - 232) = v10 ^ v1 ^ 0xE067E2B8;
  *(v7 - 224) = &STACK[0x107C];
  *(v7 - 248) = v10 + 1891786909 + v3;
  *(v7 - 244) = v10 ^ 0xAD5F74AD ^ a1;
  v11 = (*(v6 + 8 * (v3 ^ 0x62601A89)))(v7 - 256);
  v12 = *(v7 - 212);
  STACK[0x1198] = v8 + (v5 - 1112065615);
  return (*(v6 + 8 * ((16148 * (((v12 - (v3 - 2022377793)) | (v3 - 2022377793 - v12)) >= 0)) ^ (v3 - 1650507497))))(v11);
}

uint64_t sub_1006CED58()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xD32F)))(40);
  STACK[0x1980] = v2;
  return (*(v1 + 8 * ((2016 * (((v2 == 0) ^ (29 * (((v0 ^ 0x4F) + 119) & 0xF7 ^ 0x84))) & 1)) ^ v0 ^ 0x724F)))();
}

uint64_t sub_1006CEE8C()
{
  v1 = LODWORD(STACK[0x2B4]) | 0x42601052;
  STACK[0x17A0] = *(v0 + 28296);
  return (*(v0 + 8 * (LODWORD(STACK[0x2B0]) ^ v1)))();
}

uint64_t sub_1006CF014()
{
  v0 = STACK[0xF10] - 15576;
  v2 = LODWORD(STACK[0x2210]) != (v0 ^ 0x4E63) && STACK[0x8540] != 0;
  return (*(STACK[0xF18] + 8 * (((2 * v2) | (8 * v2)) ^ v0)))();
}

uint64_t sub_1006CF13C@<X0>(int a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unsigned int a46)
{
  v49 = v46[396] ^ ((*v46 & (a2 ^ 0x7FFF7AA7) | v46[623] & 0x80000000) >> 1);
  v46[623] = (((a2 + 1803514433) & 0xFEB69DF7) + v49 - (a1 & (2 * v49)) + 2111198493) ^ *(v48 + 4 * (*v46 & 1));
  return (*(v47 + 8 * ((206 * (a46 > 0x26F)) ^ a2)))();
}

uint64_t sub_1006CF1CC()
{
  STACK[0x250] = 0;
  STACK[0x350] = v1;
  v2 = ~LOBYTE(STACK[0x2D6]) & 3;
  STACK[0x228] = &STACK[0x2D4];
  v3 = (((*(&STACK[0x2D4] + v2) ^ 0x5B) - 13 * ((330382100 * (*(&STACK[0x2D4] + v2) ^ 0x5Bu)) >> 32) + 7) & 0x1C) == 0;
  return (*(STACK[0x2A0] + 8 * (((2 * v3) | (4 * v3)) ^ v0)))();
}

uint64_t sub_1006CF418@<X0>(int a1@<W8>)
{
  STACK[0x1200] = *(v3 + 8 * v1);
  LODWORD(STACK[0x1A50]) = a1;
  return (*(v3 + 8 * (((*STACK[0x6E8] != 0) * ((v2 + 1650491367) ^ 0x6260D0A2)) ^ v2)))();
}

uint64_t sub_1006CF464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  STACK[0x7E0] = STACK[0x1800];
  STACK[0x7A0] = STACK[0x12A0];
  LODWORD(STACK[0x798]) = STACK[0x840];
  return (*(v5 + 8 * a5))();
}

uint64_t sub_1006CF4A4@<X0>(int a1@<W8>)
{
  v3 = (((v1 ^ 0x92A4C1CE) + (a1 ^ 0x2B6FBDEA) + 1834696205) ^ ((v1 ^ 0xF4E4BCF9) + 186336007) ^ ((v1 ^ (568 * (a1 ^ 0x2B6FBDEA)) ^ 0x8F95E83E) + 1886012890)) + 356882536;
  v4 = ((v3 ^ 0xEC0161BB) + 949035916) ^ v3 ^ ((v3 ^ 0x13A62D92) - 952733789) ^ ((v3 ^ 0xAB370C89) + 2141671098) ^ ((v3 ^ 0x7FFFFD6F) - 1418739872);
  return (*(v2 + 8 * (a1 ^ 0x2B6F11E8 ^ (30 * (((v4 - a1) | (a1 - v4)) >> 31)))))();
}

uint64_t sub_1006CF650@<X0>(int a1@<W8>)
{
  *(v2 + 40) = (v1 ^ 0x82E5) + a1 - 3550;
  *(v5 - 256) = *(v2 + 32);
  *(v5 - 248) = v1 + 155453101 * (((v3 | 0x3DF7EC65) - (v3 | 0xC208139A) - 1039658086) ^ 0xDBD1F7AA) + 296752080;
  (*(v4 + 8 * (v1 + 15248)))(v5 - 256);
  v6 = *(v2 + 48);
  *(v5 - 240) = v1 - 906386353 * (v3 ^ 0x3101CD24) + 5222;
  *(v5 - 248) = v6;
  v7 = (*(v4 + 8 * (v1 ^ 0x4466)))(v5 - 256);
  return (*(v4 + 8 * v1))(v7);
}

uint64_t sub_1006CF75C()
{
  v8 = 23958;
  atomic_compare_exchange_strong((*(v7 + 8 * v0) + v2), &v8, v3);
  return (*(v6 + 8 * (((v8 == v4) * v1) ^ v5)))();
}

uint64_t sub_1006CF958@<X0>(int a1@<W3>, __int16 a2@<W5>, int a3@<W8>)
{
  v10 = *(v9 + a3 + (v5 + 391) * v4 - ((((a3 + (v5 + 391) * v4) * v7) >> 32) >> 9) * v8);
  v11 = (((v10 ^ 0xC4275E11) + 1004052823) ^ ((v10 ^ 0xAE06644C) + 1375312652) ^ ((v10 ^ 0x6A213A7B) - 1780562627)) * a1 + 29971;
  *(v9 + (v4 * a2 - (v4 * a2) / 0x3CCu * v8)) = *(v3 + v11 - v11 / 0x3A0 * v6) ^ 0x5C;
  return (*(STACK[0x6A0] + 8 * ((60369 * (((v4 + 1 - v5) | (v5 - (v4 + 1))) >= 0)) ^ (v5 + 22869))))();
}

uint64_t sub_1006CFD40(uint64_t a1, unsigned int a2, int a3)
{
  v8 = (v4 | ((v4 < a2) << 32)) - 328366497;
  v9 = v8 < ((v5 + 371905158) ^ 0xD9780212uLL);
  v10 = v8 > v3 - 0x61E4F89A842DCC62;
  if (v3 - 0x61E4F89A842DCC62 < (v5 ^ 0x30AD5C94uLL) != v9)
  {
    v10 = v9;
  }

  if (v10)
  {
    v6 = a3;
  }

  LODWORD(STACK[0x85C]) = v6;
  return (*(v7 + 8 * (v5 ^ 0xE9D5E7AC ^ (1291 * ((((v6 - v5) | (v5 - v6)) & 0x80000000) == 0)))))();
}

uint64_t sub_1006CFEE8()
{
  *(v3 - 256) = (v0 - 1762650694) ^ (906386353 * (((v1 | 0x3A9671F) - (v1 & 0x3A96718)) ^ 0x32A8AA3B));
  *(v3 - 248) = 0;
  v4 = (*(v2 + 8 * (v0 + 26852)))(v3 - 256);
  if (*STACK[0x6F0])
  {
    v5 = 1;
  }

  else
  {
    v5 = *STACK[0x6E8] == 0;
  }

  v6 = v5;
  return (*(v2 + 8 * ((v6 * (((v0 + 541040251) | 0x4220D002) ^ ((v0 ^ 0x6260B187) + 6))) ^ v0)))(v4);
}

void sub_1006CFFE4(uint64_t a1)
{
  v2 = *a1 + 1603510583 * ((((2 * a1) | 0x81C9631E) - a1 + 1058754161) ^ 0x573F8324);
  v3 = *(a1 + 16);
  **(a1 + 48) = -1;
  v4 = *(&off_1010A0B50 + (v2 ^ 0x12C2)) - 810145054;
  v5 = *&v4[8 * ((((*&v4[8 * v2 + 370808])(v3, 0) >> 31) * (((v2 ^ 0xAE3D1989) + 1371777430) ^ 0xB892)) ^ v2)];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1006D0214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x598]) = STACK[0xE00] & 0xFE;
  LODWORD(STACK[0x9CC]) = STACK[0xE10] & 0xFFFFFFF7;
  LODWORD(STACK[0xE70]) = *(*STACK[0xE50] + (*STACK[0xE58] & 0x7D86BAEC));
  v6 = STACK[0xE90];
  v7 = *(STACK[0xF18] + 8 * SLODWORD(STACK[0xE90]));
  STACK[0xDD0] = 0x7AAA74DE8DDEDDBALL;
  LODWORD(STACK[0xE80]) = (v6 - 9609) | 0x6900;
  STACK[0xED0] = *(&off_1010A0B50 + (v6 ^ 0x3A8F)) - 13150474;
  return v7(a1, 117670337, 2336, *(&off_1010A0B50 + (v6 ^ 0x2379)) - 355232782, a5, a6, 0xD890FB5F987624BELL);
}

uint64_t sub_1006D0580()
{
  STACK[0xF40] = v0 + 36;
  *(v4 - 256) = (v1 - 526) ^ (1603510583 * ((2 * (((v4 - 256) ^ 0x39D74B48) & 0x31D7A8F0) - ((v4 - 256) ^ 0x39D74B48) - 836217074) ^ 0x60242EED));
  (*(v3 + 8 * (v1 + 18488)))(v4 - 256);
  STACK[0x1618] = STACK[0xCD8] + 112;
  v5 = STACK[0x1428];
  STACK[0x2030] = &STACK[0x2720] + STACK[0x1428];
  STACK[0x1428] = (v1 + 893) + (v1 - 21609) + v5 - 46374;
  v6 = (*(v3 + 8 * (v1 ^ 0x4981)))(64);
  STACK[0x850] = v6 + v2;
  return (*(v3 + 8 * ((57 * (v6 != 0)) ^ v1)))();
}

uint64_t sub_1006D0D88@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = ((a2 + v5 + 1479227538) | (((a2 + v5 + 1479227538) < 0xED0B152A) << 32)) - 664107002;
  v8 = v2 - 0x61E4F89A98311597 + 3 * (v3 ^ 0x6D41u);
  v9 = v7 < 0xC5759D2C;
  v10 = v7 > v8;
  if (v8 < 0xC5759D2C != v9)
  {
    v10 = v9;
  }

  if (v10)
  {
    v4 = 371891407;
  }

  LODWORD(STACK[0x165C]) = v4;
  return (*(v6 + 8 * ((58442 * (v4 == 101 * (v3 ^ 0x75B7) - 371866041)) ^ v3)))(a1, 3976926506);
}

void sub_1006D0F34()
{
  v0 = __chkstk_darwin();
  v1 = 155453101 * (((v0 | 0x46551452) - v0 + (v0 & 0xB9AAEBAD)) ^ 0xA0730F9D);
  v2 = *(v0 + 16) + v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 20) ^ v1;
  v5 = *(&off_1010A0B50 + v2 - 12509) - 810145054;
  (*&v5[8 * (v2 ^ 0xFFCA)])(v8, 0, 296);
  if (v3)
  {
    v6 = (((v4 ^ 0x1A7AB8CF) - 444250319) ^ ((v4 ^ 0xD4478BA2) + 733508702) ^ ((v4 ^ 0x98CDA5F6) + 1731353098)) == -1458607739;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1006D10BC()
{
  v1 = STACK[0x430];
  v2 = (*(STACK[0x430] + 8 * (v0 ^ 0x9C51)))();
  return (*(v1 + 8 * (v0 - 16623)))(v2);
}

uint64_t sub_1006D10F0@<X0>(unint64_t a1@<X8>)
{
  v6 = v2 ^ 0x220;
  v7 = 1112314453 * ((((&STACK[0x10000] + 3800) ^ 0x81460594 | 0x3840EC8B) - ((&STACK[0x10000] + 3800) ^ 0x81460594) + (((&STACK[0x10000] + 3800) ^ 0x81460594) & 0xC7BF1374)) ^ 0x5650C3C6);
  STACK[0x10EF0] = STACK[0x4850];
  STACK[0x10F10] = v3;
  LODWORD(STACK[0x10F08]) = (v2 ^ 0x220) - v7 + 385645808;
  LODWORD(STACK[0x10EE8]) = ((v4 & 0x5BEDF54E) + 2117722112 + ((109 * (v2 ^ 0x1ABC) - 1376358548) ^ v5)) ^ v7;
  STACK[0x10EE0] = a1;
  STACK[0x10ED8] = v1;
  STACK[0x10F00] = &STACK[0xF28] ^ 0x8CE360827F544B43;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v2 ^ 0xD76C)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * v6))(v9);
}

uint64_t sub_1006D1208@<X0>(int a1@<W8>)
{
  v6 = v1 == -371865846 && a1 == -371866014;
  if (v1 == v3 && a1 == -371866004)
  {
    v6 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((164 * (((v4 ^ 0xDF6B ^ v6) & 1) == 0)) ^ v2)))();
}

uint64_t sub_1006D1268(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (v4 - 0x22EE7697F6EE48EBLL) < 0x92AEF8DD;
  v6 = *(v3 + 24) - 0x22EE7697F6EE48EBLL;
  v7 = v5 ^ (v6 < 0x92AEF8DD);
  v8 = v6 < v4 - 0x22EE7697F6EE48EBLL;
  if (!v7)
  {
    v5 = v8;
  }

  return (*(STACK[0xF18] + 8 * ((v5 * (((a3 + 1662080520) & 0x9CEEA9F6) - 37618)) ^ a3)))();
}

uint64_t sub_1006D1348()
{
  STACK[0x5C50] = 0x3AE1413A0D5C97D2;
  LODWORD(STACK[0x1374]) = -1101218869;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006D14A8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF8AE)))(48) == 0;
  return (*(v1 + 8 * ((119 * ((v2 ^ (v0 + 1)) & 1)) ^ v0)))();
}

uint64_t sub_1006D14F8()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 41634)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006D15D8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a5 = (v8 + 22016) ^ (353670337 * (((&a3 | 0x7B321B26) - (&a3 | 0x84CDE4D9) - 2066881319) ^ 0xCF13E31B));
  a3 = v6;
  a4 = v6;
  a6 = a1;
  v9 = (*(v7 + 8 * (v8 ^ 0xD343)))(&a3);
  return (*(v7 + 8 * v8))(v9);
}

uint64_t sub_1006D1650@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int64x2_t a6@<Q4>, int64x2_t a7@<Q5>, int64x2_t a8@<Q6>, int8x16_t a9@<Q7>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, uint64_t a54, uint64_t a55)
{
  v105.val[2] = veorq_s8(veorq_s8(veorq_s8(a5, vaddq_s64(veorq_s8(a5, v56), v57)), veorq_s8(vaddq_s64(veorq_s8(a5, v58), v59), vaddq_s64(veorq_s8(a5, v60), v61))), veorq_s8(vaddq_s64(veorq_s8(a5, v62), v63), v64));
  v105.val[3] = vaddq_s64(a5, v65);
  v68 = v105.val[3].i64[0];
  v69 = v105.val[2].i64[0];
  v70 = veorq_s8(veorq_s8(veorq_s8(a4, vaddq_s64(veorq_s8(a4, v56), v57)), veorq_s8(vaddq_s64(veorq_s8(a4, v58), v59), vaddq_s64(veorq_s8(a4, v60), v61))), veorq_s8(vaddq_s64(veorq_s8(a4, v62), v63), v64));
  v71 = v70.i64[1];
  v72 = v70.i64[0];
  v73 = veorq_s8(veorq_s8(veorq_s8(a3, vaddq_s64(veorq_s8(a3, v56), v57)), veorq_s8(vaddq_s64(veorq_s8(a3, v58), v59), vaddq_s64(veorq_s8(a3, v60), v61))), veorq_s8(vaddq_s64(veorq_s8(a3, v62), v63), v64));
  v74 = vaddq_s64(a4, v65);
  v75 = v74.i64[1];
  v76 = v74.i64[0];
  v77 = v73.i64[1];
  v78 = v73.i64[0];
  v79 = vaddq_s64(a3, v65);
  v80 = v79.i64[1];
  v81 = v79.i64[0];
  v82 = veorq_s8(veorq_s8(veorq_s8(a9, vaddq_s64(veorq_s8(a9, v56), v57)), veorq_s8(vaddq_s64(veorq_s8(a9, v58), v59), vaddq_s64(veorq_s8(a9, v60), v61))), veorq_s8(vaddq_s64(veorq_s8(a9, v62), v63), v64));
  v105.val[0] = vaddq_s64(a8, v65);
  v83 = veorq_s8(veorq_s8(veorq_s8(a8, vaddq_s64(veorq_s8(a8, v56), v57)), veorq_s8(vaddq_s64(veorq_s8(a8, v58), v59), vaddq_s64(veorq_s8(a8, v60), v61))), veorq_s8(vaddq_s64(veorq_s8(a8, v62), v63), v64));
  v105.val[1] = vaddq_s64(a9, v65);
  v84 = v105.val[1].i64[0];
  v85 = v83.i64[1];
  v86 = v83.i64[0];
  v87 = v82.i64[1];
  v88 = v82.i64[0];
  v89 = vaddq_s64(a7, v65);
  v90 = veorq_s8(veorq_s8(veorq_s8(a7, vaddq_s64(veorq_s8(a7, v56), v57)), veorq_s8(vaddq_s64(veorq_s8(a7, v58), v59), vaddq_s64(veorq_s8(a7, v60), v61))), veorq_s8(vaddq_s64(veorq_s8(a7, v62), v63), v64));
  v91 = vaddq_s64(a6, v65);
  v92 = veorq_s8(veorq_s8(veorq_s8(a6, vaddq_s64(veorq_s8(a6, v56), v57)), veorq_s8(vaddq_s64(veorq_s8(a6, v58), v59), vaddq_s64(veorq_s8(a6, v60), v61))), veorq_s8(vaddq_s64(veorq_s8(a6, v62), v63), v64));
  v93 = v92.i64[1];
  v94 = v92.i64[0];
  v95 = v105.val[2].i64[1] * v105.val[3].i64[1];
  v96 = veorq_s8(veorq_s8(veorq_s8(a2, vaddq_s64(veorq_s8(a2, v56), v57)), veorq_s8(vaddq_s64(veorq_s8(a2, v58), v59), vaddq_s64(veorq_s8(a2, v60), v61))), veorq_s8(vaddq_s64(veorq_s8(a2, v62), v63), v64));
  v105.val[1].i64[0] = v86 * v105.val[0].i64[0];
  v97 = v87 * v105.val[1].i64[1];
  v105.val[1].i64[1] = v85 * v105.val[0].i64[1];
  v105.val[0].i64[0] = v88 * v84;
  v105.val[0].i64[1] = v97;
  v105.val[2].i64[0] = v90.i64[0] * v89.i64[0];
  v98 = v96.i64[1];
  v99 = v96.i64[0];
  v105.val[2].i64[1] = v90.i64[1] * v89.i64[1];
  v100 = vaddq_s64(a2, v65);
  v105.val[3].i64[0] = v94 * v91.i64[0];
  v105.val[3].i64[1] = v93 * v91.i64[1];
  v101 = v69 * v68;
  v102 = v100.i64[0];
  v100.i64[0] = vqtbl4q_s8(v105, v66).u64[0];
  v105.val[0].i64[0] = v101;
  v105.val[0].i64[1] = v95;
  v105.val[1].i64[0] = v72 * v76;
  v105.val[1].i64[1] = v71 * v75;
  v105.val[2].i64[0] = v78 * v81;
  v105.val[2].i64[1] = v77 * v80;
  v105.val[3].i64[0] = v99 * v102;
  v105.val[3].i64[1] = v98 * v100.i64[1];
  v100.i64[1] = vqtbl4q_s8(v105, v66).u64[0];
  v103 = vrev64q_s8(v100);
  *(a54 - a1 + 127) = vextq_s8(v103, v103, 8uLL);
  LODWORD(v94) = ((((a55 + 1189) ^ 0x535) + a1 - a55) | (a55 - (((a55 + 1189) ^ 0x535) + a1))) >= 0;
  return (*(v55 + 8 * (a53 ^ (v94 | (2 * v94)))))(vaddq_s64(a2, v67), vaddq_s64(a3, v67), vaddq_s64(a4, v67), vaddq_s64(a5, v67), vaddq_s64(a6, v67), vaddq_s64(a7, v67), vaddq_s64(a8, v67), vaddq_s64(a9, v67));
}

uint64_t sub_1006D1A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int64x2_t a17, int64x2_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unsigned int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  v65 = (*(v64 + 8 * (v63 ^ 0x7FA5)))(a52);
  v66 = vdupq_n_s64((&a63 ^ 0x65BDDFDB3BDDDBF7) - 0x99111A841010 + ((&a63 << ((v63 ^ 0x7Cu) + 70)) & 0xCB7BBFB677BBB7E0));
  return (*(v64 + 8 * v63))(v65, vaddq_s64(v66, xmmword_100F52360), vaddq_s64(v66, xmmword_100F52370), vaddq_s64(v66, a18), vaddq_s64(v66, a17), vdupq_n_s64(0x538B161E69C03B70uLL), vdupq_n_s64(0x9A42B935DEA63419), vdupq_n_s64(0x530A3435DC843350uLL), vdupq_n_s64(0x93935E576ECC1ED2));
}

uint64_t sub_1006D1D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x510] = a5;
  STACK[0x518] = a8;
  LODWORD(STACK[0xD50]) = *(*STACK[0xE50] + (*STACK[0xE58] & 0x7D86BAEC));
  v8 = *(STACK[0xF18] + 8 * SLODWORD(STACK[0xE40]));
  LODWORD(STACK[0xE30]) = LODWORD(STACK[0xE40]) ^ 0xC91A4871;
  STACK[0xD70] = 0x76DB05ECA41C8AC3;
  STACK[0xD80] = 0x7EC805FED5990A76;
  return v8(a1, 117670337);
}

uint64_t sub_1006D2038()
{
  *(v3 - 256) = *(v1 + 16);
  *(v3 - 248) = v0 + 155453101 * ((((v3 - 256) | 0xA6EE4906) - ((v3 - 256) | 0x5911B6F9) + 1494333177) ^ 0x40C852C9) + 296756551;
  (*(v2 + 8 * (v0 + 19719)))(v3 - 256);
  return (*(v2 + 8 * ((54 * (*(v1 + 32) == 0)) ^ v0)))();
}

void *sub_1006D20D4()
{
  *(v2 - 256) = (v0 + 30778) ^ (1603510583 * ((2 * ((v2 - 256) & 0xDE263F0) - (v2 - 256) - 232940532) ^ 0x65C6AEA7));
  v3 = (*(v1 + 8 * (v0 ^ 0xC380)))(v2 - 256);
  return (*(v1 + 8 * (((v0 + 24058) ^ 0xD194) + v0)))(&STACK[0x1E70], v3);
}

uint64_t sub_1006D217C()
{
  STACK[0x10EE8] = *(v0 + v1);
  LODWORD(STACK[0x10EE4]) = (v2 + 40875) ^ (297845113 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x7EA8D668) + 2124994155) ^ 0x99BCAF5));
  STACK[0x10ED8] = &STACK[0x7808];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 45851)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((26925 * (LODWORD(STACK[0x10EE0]) == (((v2 ^ 0x1890) - 371866166) ^ 0x8B3B ^ (109 * (v2 ^ 0x1890))))) ^ v2)))(v4);
}

uint64_t sub_1006D2254@<X0>(unint64_t a1@<X8>)
{
  STACK[0x5658] = a1;
  LODWORD(STACK[0x2564]) = -469805225;
  return (*(STACK[0xF18] + 8 * ((v1 - 30523) | 0x10)))();
}

uint64_t sub_1006D2330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, unsigned __int8 a29)
{
  v33 = -1802333311 * v31;
  v313 = v31;
  v314 = v30;
  v34 = *(*(v32 + 8 * (v29 ^ 0x2B2)) + ((-127 * v31) ^ 0xEBLL) - 1205049923) - 55;
  v35 = v32;
  v36 = *(*(v32 + 8 * (v29 ^ 0x25E)) + (((v29 + 112) ^ 0x14C8) & HIWORD(v33) ^ 0x6BLL) - 742410495);
  v37 = ((v36 >> 3) | (32 * v36)) << 16;
  v38 = (((((*(*(v35 + 8 * (v29 - 293)) + (((-27775 * v31) >> 8) ^ 0x4ALL) - 2049403822) ^ ((((-27775 * v31) >> 8) ^ 0x79) + 11)) << 8) ^ 0x7237FB33) & (v37 ^ 0xF69FFF3B) | v37 & 0xC80000) ^ 0xFEAC3EB5) & (v34 ^ 0xFFFFFFA7) | v34 & 0x79;
  v39 = (v38 ^ 0x73204C20) & (((((HIBYTE(v33) ^ 0xFFFFFFFD) - 6) ^ 0x67 ^ *(*(v35 + 8 * (v29 - 941)) + (HIBYTE(v33) ^ 0x36) - 1786978934)) << 24) ^ 0x67724CA0) ^ v38 & 0x548DB35F;
  v40 = *(v35 + 8 * (v29 - 2477)) - 767252598;
  v41 = *(v40 + (a22 ^ 0x36)) ^ a22;
  v42 = *(v35 + 8 * (v29 - 2476)) - 456139883;
  v43 = *(v35 + 8 * (v29 - 2996)) - 1173477043;
  v44 = ((2 * a19) ^ 0x3D) + *(v43 + (a19 ^ 0xFELL));
  v45 = *(v35 + 8 * (v29 ^ 0x16F)) - 182727542;
  v46 = ((2 * a15) ^ 0x27) + *(v43 + (a15 ^ 0xF3));
  v47 = *(v40 + (a26 ^ 0xEDLL)) ^ a26;
  v48 = v47 ^ 0x41;
  v49 = v47 & 0xD0;
  if (a29)
  {
    v50 = v48;
  }

  else
  {
    v50 = v48 | 0xD0;
  }

  v51 = *(v43 + (a27 ^ 0x2DLL)) + ((2 * a27) ^ 0x9B);
  v52 = *(v40 + (a18 ^ 0x7ALL));
  v53 = *(v40 + (a14 & 0x9E ^ 0x60718ACF ^ ((a14 & 0x9E ^ 0xEFBB3F75) - (a14 ^ 0xE79B2575) - ((2 * ((a14 & 0x9E ^ 0xEFBB3F75) - (a14 ^ 0xE79B2575))) & 0x100021B6) + 1750175963)));
  v54 = *(v43 + (a23 ^ 8));
  v55 = *(v45 + (a16 ^ 0x56));
  v56 = *(v45 + (a28 ^ 0xCB) - ((2 * (a28 ^ 0xCB)) & 0x72u) + 57);
  v57 = *(v45 + (a20 ^ 0xECLL));
  v58 = *(v45 + (a24 ^ 0x43));
  v59 = ((2 * a23) ^ 0xD1) + v54;
  v60 = *(v42 + (a21 ^ 0xAALL));
  v61 = *(v42 + (a17 ^ 0xCBLL));
  v62 = *(v42 + (a29 ^ 0x6BLL));
  v63 = *(v42 + (a25 ^ 0x4DLL));
  v64 = ((((v59 + 23) << 16) ^ 0x6FD904B9) & ((v41 << 24) ^ 0xEFF4EB9) | (v41 << 24) & 0x90000000) ^ 0x925716BF;
  v65 = *(v35 + 8 * (v29 - 3983)) - 1151563110;
  v66 = *(v35 + 8 * (v29 - 1820)) - 377146715;
  v67 = *(v35 + 8 * (v29 - 4555)) - 866892162;
  LODWORD(v68) = *(v66 + 4 * ((a14 - ((2 * a14) & 0x46) + 35) ^ 0x23u ^ v53)) ^ __ROR4__(*(v65 + 4 * ((v44 + 23) ^ 0x74u)), 14);
  HIDWORD(v68) = v68;
  v69 = (v68 >> 14) ^ __ROR4__(*(v67 + 4 * (v58 ^ 0xB8)), 14);
  v70 = *(v35 + 8 * (v29 - 4469)) - 2028486270;
  LODWORD(v62) = *(v70 + 4 * (v62 ^ 0xF6));
  HIDWORD(v68) = v62 ^ 0x129;
  LODWORD(v68) = v62 ^ 0x43CA0000;
  LODWORD(v62) = v68 >> 16;
  HIDWORD(v68) = v69 ^ 0xBC67FC89;
  LODWORD(v68) = v69 ^ 0xBC67FC89;
  v71 = v68 >> 18;
  LODWORD(v58) = (v62 - (v71 ^ 0x38F7066A ^ v62)) ^ v71 ^ 0x38F7066A;
  v72 = v58 + v62 + (v71 ^ (84960663 - (v71 ^ 0x38F7066A) - ((-2 * (v71 ^ 0x38F7066A)) & 0xA20CB2E)) ^ (v58 - (v58 ^ -(v71 ^ 0x38F7066A))) ^ 0x3DE763FD);
  LODWORD(v68) = __ROR4__(*(v66 + 4 * (v52 ^ (a18 - ((2 * a18) & 0x46) + 35) ^ 0x8B)) ^ __ROR4__(*(v65 + 4 * BYTE2(v64)), 14) ^ *(v67 + 4 * (v56 ^ 0xA4)) ^ 0x607590FB, 19);
  v73 = *(v66 + 4 * HIBYTE(v64));
  v74 = *(v65 + 4 * ((v51 + 23) ^ 0x71u));
  v75 = ((((*(v70 + 4 * (v61 ^ 0xBD)) << 16) ^ 0x1290000) - ((*(v70 + 4 * (v61 ^ 0xBD)) << 17) & 0x788C0000) + 1011243461) ^ 0x3C4659C5 | HIWORD(*(v70 + 4 * (v61 ^ 0xBD))) ^ 0x43CA) ^ __ROR4__(v68 ^ 0xB2D526EC, 13);
  LODWORD(v55) = v73 ^ __ROR4__(v74, 14) ^ *(v67 + 4 * (v55 ^ 0x94)) ^ __ROR4__(*(v70 + 4 * (v60 ^ 0xA5)), 16);
  LODWORD(v57) = *(v67 + 4 * (v57 ^ 0x6F));
  v76 = *(v66 + 4 * (v50 & (v49 ^ 0x6F) ^ 0xB5u)) ^ 0x99628AB4;
  HIDWORD(v68) = *(v70 + 4 * (v63 ^ 0xF8));
  LODWORD(v68) = HIDWORD(v68);
  LODWORD(v57) = (v68 >> 16) ^ __ROR4__(*(v65 + 4 * ((v46 + 23) ^ 0xBu)), 14) ^ ((-(v57 ^ 0x56B33FC0) ^ ((v57 ^ 0x56B33FC0) - 2 * ((v57 ^ 0x56B33FC0) & 0x6F2C2A4F ^ v57 & 9) - 282318266) ^ 0xEF2C2A46 ^ (v76 - (v57 ^ 0x56B33FC0 ^ v76))) + v76);
  LODWORD(v63) = *(v66 + 4 * (HIBYTE(v72) ^ 0xA0)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v75) ^ 0x31u)), 14) ^ *(v67 + 4 * (((v55 ^ 0xDBCAE0CF) >> (v63 & 8) >> (v63 & 8 ^ 8)) ^ 0xAAu)) ^ __ROR4__(*(v70 + 4 * (v57 ^ 0x3Fu)), 16);
  LODWORD(v61) = *(v66 + 4 * (HIBYTE(v75) ^ 0x9D)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v55) ^ 0x23u)), 14) ^ *(v67 + 4 * (BYTE1(v57) ^ 0x7Du)) ^ __ROR4__(*(v70 + 4 * (v72 ^ 0xD0u)), 16);
  LODWORD(v56) = *(v66 + 4 * (BYTE3(v55) ^ 0x49)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v57) ^ 0xD8u)), 14) ^ *(v67 + 4 * (BYTE1(v72) ^ 0x89u)) ^ __ROR4__(*(v70 + 4 * (v75 ^ 0xB0u)), 16);
  v77 = *(v65 + 4 * (BYTE2(v72) ^ 0x27u));
  v78 = *(v66 + 4 * ((v57 ^ 0x3831D7C1) >> 24)) ^ (v77 >> 14) ^ (v77 << 18) ^ *(v67 + 4 * (BYTE1(v75) ^ 0x7Bu)) ^ __ROR4__(*(v70 + 4 * (v55 ^ 0x31u)), 16);
  v79 = *(v66 + 4 * (BYTE3(v63) ^ 0x26)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v61) ^ 0x3Du)), 14) ^ *(v67 + 4 * (BYTE1(v56) ^ 0xF3u)) ^ __ROR4__(*(v70 + 4 * (v78 ^ 0xCFu)), 16);
  v80 = *(v66 + 4 * ((((BYTE3(v61) ^ 1) - (BYTE3(v61) ^ 0x93)) ^ 0xFFFFFFFC) + (BYTE3(v61) ^ 1))) ^ __ROR4__(*(v65 + 4 * (BYTE2(v56) ^ 0xEFu)), 14) ^ *(v67 + 4 * (BYTE1(v78) ^ 0x2Fu)) ^ __ROR4__(*(v70 + 4 * (v63 ^ 0xD0u)), 16);
  v81 = *(v66 + 4 * (BYTE3(v56) ^ 0xA4)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v78) ^ 0x17u)), 14) ^ *(v67 + 4 * ((v63 ^ 0x87D0) >> 8)) ^ __ROR4__(*(v70 + 4 * (v61 ^ 0xB5u)), 16);
  v82 = *(v66 + 4 * (HIBYTE(v78) ^ 0x2D)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v63) ^ 0xC4u)), 14) ^ *(v67 + 4 * (BYTE1(v61) ^ 0xADu)) ^ __ROR4__(*(v70 + 4 * (v56 ^ 0xC9u)), 16);
  if ((v81 & 2) != 0)
  {
    v83 = -2;
  }

  else
  {
    v83 = 2;
  }

  v84 = v83 + (v81 ^ 0x18);
  v85 = v82 ^ 0x7468ED9A;
  v86 = v82 ^ 0x9A;
  if (v86 < 0xD6)
  {
    v87 = v82 ^ 0x9A;
  }

  else
  {
    v86 -= 214;
    v87 = v85 + 42;
  }

  v88 = v86 == 0;
  v89 = v79 ^ 0x64;
  v90 = *(v66 + 4 * (HIBYTE(v80) ^ 0x6F)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v81) ^ 0x8Eu)), 14) ^ *(v67 + 4 * BYTE1(v85)) ^ __ROR4__(*(v70 + 4 * (((2 * (((v89 - (v79 ^ 0x9A)) ^ 0x91) & v89 ^ v79 & 0x6D)) ^ 0xC8) + ((v89 - (v79 ^ 0x9A)) ^ 0xE2298871 ^ (v89 - 2 * (v89 & 0xFFFFFF9F ^ v79 & 0x12) + 500594573)))), 16);
  if (!v88)
  {
    v87 = 0;
  }

  v91 = v85 - v87;
  v92 = *(v67 + 4 * (BYTE1(v79) ^ 0x88u)) ^ __ROR4__(*(v65 + 4 * BYTE2(v85)), 14) ^ *(v66 + 4 * (HIBYTE(v81) ^ 0xB5));
  v93 = *(v70 + 4 * (v80 ^ 0x62u));
  if ((v92 & 0x20000 & (v93 << 16)) != 0)
  {
    v94 = -(v92 & 0x20000);
  }

  else
  {
    v94 = v92 & 0x20000;
  }

  v95 = v94 + ((v93 << 16) ^ 0x1290000);
  v96 = BYTE2(v79) ^ 0x5C;
  v97 = v92 & 0xFFFDFFFF ^ HIWORD(v93) ^ 0xC7D52AB9 ^ v95;
  v98 = *(v66 + 4 * (HIBYTE(v79) ^ 0x82)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v80) ^ 0x90u)), 14) ^ *(v67 + 4 * (BYTE1(v81) ^ 0xD6u)) ^ __ROR4__(*(v70 + 4 * (v91 ^ 0xFEu)), 16) ^ 0x14F37920;
  v100 = __PAIR64__(v98, __ROR4__(*(v65 + 4 * v96), 14));
  v99 = *(v66 + 4 * (HIBYTE(v82) ^ 0xE6)) ^ v100;
  LODWORD(v100) = v98;
  v101 = __PAIR64__((v100 >> 21) ^ 0x132, (v100 >> 21) ^ 0x7F6D7000) >> 11;
  v102 = v99 ^ *(v67 + 4 * (BYTE1(v80) ^ 0x31u)) ^ __ROR4__(*(v70 + 4 * (v84 ^ 0xFCu)), 16);
  v103 = v97 - 1;
  if ((v97 & 1) == 0)
  {
    v103 = v97 + 1;
  }

  v104 = v103 ^ 0xBCB7F34C;
  v105 = *(v65 + 4 * (BYTE2(v90) ^ 0x34u));
  if (v101 < 0)
  {
    v106 = -128;
  }

  else
  {
    v106 = 128;
  }

  v107 = *(v66 + 4 * ((v106 + HIBYTE(v101)) ^ 0x12));
  v108 = (v107 ^ 0x99628AB4 ^ ((v107 ^ 0x669D754B) + 1) ^ (((v105 >> 14) ^ 0xDC07) - (v107 ^ 0x99628AB4 ^ (v105 >> 14) ^ 0xDC07))) + ((v105 >> 14) ^ 0xDC07);
  v109 = *(v67 + 4 * BYTE1(v104)) ^ (v105 << 18) ^ 0x5EB73FC0;
  v110 = (v108 + v109 - 2 * (v108 & v109)) ^ __ROR4__(*(v70 + 4 * (v102 ^ 0xDDu)), 16);
  v111 = *(v65 + 4 * BYTE2(v104)) << 18;
  v112 = *(v67 + 4 * (BYTE1(v102) ^ 0x20u)) ^ *(v66 + 4 * (HIBYTE(v90) ^ 0xB1)) ^ ((HIDWORD(v111) ^ 0xEE8E963) & (v111 ^ 0x47FFFFFF) | v111 & 0xF1140000) ^ __ROR4__(*(v70 + 4 * (v101 ^ 0xFEu)), 16);
  v113 = *(v66 + 4 * HIBYTE(v104)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v102) ^ 0xD2u)), 14) ^ *(v67 + 4 * (BYTE1(v101) ^ 0xAAu)) ^ __ROR4__(*(v70 + 4 * (v90 ^ 0x5Fu)), 16);
  v114 = *(v66 + 4 * (HIBYTE(v102) ^ 0xE2)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v101) ^ 0xE9u)), 14) ^ 0x7F1F4C75;
  v115 = (((*(v70 + 4 * v104) ^ 0x43CA0129) << (v112 & 0x10 ^ 0x10) << (v112 & 0x10)) + (HIWORD(*(v70 + 4 * v104)) ^ 0x43CA)) ^ *(v67 + 4 * (BYTE1(v90) ^ 0x1Bu)) ^ ((v114 & 0xCC5C46E8 ^ 0x54AF53CC) & (v114 & 0x33A3B917 ^ 0xFDDE4FFB) | v114 & 0x2300A813);
  v116 = v113 ^ 0x32;
  v117 = *(v66 + 4 * (HIBYTE(v110) ^ 0x7C)) ^ __ROR4__(*(v65 + 4 * ((v112 ^ 0x72DD0D16u) >> 16)), 14) ^ *(v67 + 4 * ((v113 ^ 0x8332) >> 8));
  v118 = *(v67 + 4 * (BYTE1(v115) ^ 0xFBu));
  v119 = v117 & 0xEC6709E7 ^ __ROR4__(*(v70 + 4 * (v115 & 0xFE ^ (v115 & 1 | 0xE156EE10) ^ 0xE156EEC5)), 16);
  v120 = *(v66 + 4 * ((v112 ^ 0x72DD0D16u) >> 24)) ^ __ROR4__(*(v65 + 4 * (((v113 ^ 0xE2668332) >> 16) ^ 0xE9u)), 14) ^ __ROR4__(*(v70 + 4 * (v110 ^ 0xEAu)), 16) ^ (((2 * v118) & 0x2731EC30 ^ 0xFDEE7FCF) + 1489289201 + (((v118 ^ 0x1471673F) - 342976319) ^ ((v118 ^ 0xFBCC3F0B) + 70500597) ^ ((v118 ^ 0xAA9691EC) + 1432972820)));
  v121 = *(v66 + 4 * (HIBYTE(v113) ^ 0x70)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v115) ^ 0x14u)), 14) ^ *(v67 + 4 * ((v110 ^ 0x28EA) >> 8)) ^ __ROR4__(*(v70 + 4 * (v112 ^ 0xE8u)), 16);
  v122 = *(v65 + 4 * (BYTE2(v110) ^ 0x25u));
  v123 = *(v66 + 4 * (HIBYTE(v115) ^ 0xC6)) ^ (v122 << 18) ^ (v122 >> 14) ^ *(v67 + 4 * (BYTE1(v112) ^ 0xA7u)) ^ __ROR4__(*(v70 + 4 * v116), 16);
  v124 = v119 ^ v117 & 0x1398F618;
  v125 = v124 & 0xFE | v119 & 1;
  v126 = *(v66 + 4 * (HIBYTE(v124) ^ 0x10)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v120) ^ 0xB1u)), 14) ^ __ROR4__(*(v70 + 4 * (v123 ^ 0x55u)), 16) ^ *(v67 + 4 * (BYTE1(v121) ^ 0x99u));
  v127 = v123 ^ 0x862190AB;
  v128 = *(v66 + 4 * (HIBYTE(v120) ^ 0x4C)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v121) ^ 0x7Cu)), 14) ^ *(v67 + 4 * (BYTE1(v123) ^ 0x3Au)) ^ __ROR4__(*(v70 + 4 * (v125 ^ 3u)), 16);
  v129 = *(v67 + 4 * (BYTE1(v124) ^ 0x54u)) ^ *(v66 + 4 * (HIBYTE(v121) ^ 0x14)) ^ __ROR4__(*(v65 + 4 * BYTE2(v127)), 14) ^ __ROR4__(*(v70 + 4 * (v120 ^ 5u)), 16);
  v130 = *(v70 + 4 * (v121 ^ 0xBAu));
  v131 = *(v66 + 4 * HIBYTE(v127)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v124) ^ 0xC6u)), 14) ^ HIWORD(v130) ^ *(v67 + 4 * (BYTE1(v120) ^ 0x31u));
  v132 = v131 ^ (v130 << 16) ^ 0x5480B518;
  v133 = (v129 & 0x40000 | 0x6A41B147) ^ v129 & 0xFFFBFFFF;
  v134 = *(v66 + 4 * (HIBYTE(v126) ^ 0x30)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v128) ^ 0xDDu)), 14) ^ *(v67 + 4 * (((v129 ^ 0xB147) >> 8) ^ 0x80u)) ^ __ROR4__(*(v70 + 4 * v132), 16);
  v135 = *(v66 + 4 * (HIBYTE(v128) ^ 0x54)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v133) ^ 0x11u)), 14) ^ *(v67 + 4 * (BYTE1(v131) ^ 0x1Fu)) ^ __ROR4__(*(v70 + 4 * (v126 ^ 0x7Fu)), 16);
  v136 = *(v66 + 4 * (HIBYTE(v133) ^ 0x54)) ^ __ROR4__(*(v65 + 4 * BYTE2(v132)), 14) ^ *(v67 + 4 * (BYTE1(v126) ^ 0xA6u)) ^ __ROR4__(*(v70 + 4 * (v128 ^ 0xF7u)), 16);
  v137 = *(v67 + 4 * (BYTE1(v128) ^ 0xBCu)) ^ *(v66 + 4 * ((3 * (v132 / 0x3000000) + (HIBYTE(v132) - 3 * ((171 * HIBYTE(v132)) >> 9))) ^ 0x92)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v126) ^ 0x2Eu)), 14) ^ __ROR4__(*(v70 + 4 * (v133 ^ 0x47u)), 16);
  BYTE1(v127) = BYTE1(v134) ^ 0xB3;
  v138 = BYTE2(v134) ^ 0x3D;
  v139 = v136 ^ 2;
  v140 = *(v66 + 4 * (((v134 ^ 0x95D0B3B0) >> 24) ^ 0xF4)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v135) ^ 0xF8u)), 14) ^ *(v67 + 4 * (((v136 ^ 0x8602) >> 8) ^ 0xAAu)) ^ __ROR4__(*(v70 + 4 * (v137 ^ 0xA9u)), 16);
  v141 = *(v70 + 4 * (v134 ^ 0xBu));
  v142 = (v141 << 16) ^ 0x55900231;
  v141 >>= 16;
  v143 = *(v66 + 4 * (HIBYTE(v135) ^ 0x4B)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v136) ^ 0x59u)), 14) ^ (v142 & (v141 ^ 0xFFFFC93B) | v141 & 0xFDCE) ^ *(v67 + 4 * (BYTE1(v137) ^ 0x27u));
  v144 = *(v66 + 4 * (HIBYTE(v136) ^ 0xB)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v137) ^ 0x28u)), 14);
  v145 = BYTE1(v127) ^ 0x12;
  v146 = (v135 >> 8) ^ 0xD911A3;
  LOBYTE(v136) = v141 & 0x10;
  LOBYTE(v141) = BYTE2(v135) & 0x10;
  v147 = *(v70 + 4 * (v135 ^ 0xB1u)) ^ 0x43CA0129;
  v148 = v144 ^ *(v67 + 4 * v145) ^ (((v147 << v136 << (v136 ^ 0x10)) ^ 0xA90D7094) & ~(v147 >> (v141 ^ 0x10) >> v141) | (v147 >> (v141 ^ 0x10) >> v141) & 0x56F28F6B);
  v149 = v139;
  if (v139 >= 0xC9u)
  {
    v149 = v139 - 201;
  }

  v150 = v139 + 55;
  if (v139 < 0xC9u)
  {
    v150 = v139;
  }

  v151 = v146;
  if (v146 >= 0xDCu)
  {
    v151 = v146 - 220;
  }

  v152 = v146 + 36;
  if (v146 < 0xDCu)
  {
    v152 = v146;
  }

  if (v151)
  {
    v153 = 0;
  }

  else
  {
    v153 = v152;
  }

  v154 = v146 - v153;
  if (v149)
  {
    v155 = 0;
  }

  else
  {
    v155 = v150;
  }

  v156 = *(v66 + 4 * (HIBYTE(v137) ^ 0xB3)) ^ __ROR4__(*(v65 + 4 * (v138 ^ 0xE9u)), 14) ^ *(v67 + 4 * (v154 ^ 0xAAu)) ^ __ROR4__(*(v70 + 4 * ((v139 - v155) ^ 0xFEu)), 16);
  v157 = *(v35 + 8 * (v29 - 4210)) - 907188579;
  v158 = *(v35 + 8 * (v29 ^ 0x1456)) - 815940423;
  v159 = *(v35 + 8 * (v29 ^ 0x1954)) - 1777319987;
  v160 = *(v35 + 8 * (v29 ^ 0x1B44)) - 688591555;
  v161 = *(v159 + 4 * (BYTE1(v156) ^ 0xD0u));
  v162 = (((v161 ^ 0x3B3A7B24) - (v161 ^ 0x505FA637)) ^ 0xFFFFFFFE) + (v161 ^ 0x3B3A7B24);
  v312 = v29;
  v163 = v39 ^ (v140 ^ BYTE2(v148)) ^ *(v157 + 4 * (HIBYTE(v143) ^ 0x79)) ^ *(v160 + 4 * (v140 ^ 0x62u)) ^ *(v158 + 4 * (BYTE2(v148) ^ 0xD8u)) ^ v162 ^ 0x3C258980 ^ (v162 >> 1) & 0x55C08B0D;
  v164 = v39 ^ 0xAFFBCCE0;
  v165 = *(v159 + 4 * (BYTE1(v140) ^ 0xC6u));
  v166 = (v143 ^ BYTE2(v156)) ^ v39 ^ 0xAFFBCCE0 ^ v165 ^ *(v157 + 4 * (HIBYTE(v148) ^ 0xF1)) ^ *(v160 + 4 * (v143 ^ 0xAFu)) ^ *(v158 + 4 * (BYTE2(v156) ^ 0x25u)) ^ (v165 >> 1) & 0x55C08B0D;
  v167 = *(v159 + 4 * (BYTE1(v148) ^ 0xD0u));
  v168 = v39 ^ BYTE2(v143) ^ v156 ^ *(v158 + 4 * (BYTE2(v143) ^ 0xC4u)) ^ *(v157 + 4 * (HIBYTE(v140) ^ 0x19)) ^ v167 ^ *(v160 + 4 * (v156 ^ 0xCBu)) ^ (v167 >> 1) & 0x55C08B0D ^ v166 ^ 0x9E954B66;
  v169 = v166 ^ 0x63CB112B;
  v170 = v168 ^ v163;
  v171 = v170 - ((2 * v170) & 0x2A8E5286) + 356985155;
  v172 = v39 ^ (v148 ^ BYTE2(v140)) ^ *(v158 + 4 * (BYTE2(v140) ^ 0x5Du)) ^ *(v159 + 4 * (BYTE1(v143) ^ 0xDBu)) ^ *(v160 + 4 * (v148 ^ 0x71u)) ^ *(v157 + 4 * (HIBYTE(v156) ^ 0x94)) ^ (*(v159 + 4 * (BYTE1(v143) ^ 0xDBu)) >> 1) & 0x55C08B0D ^ 0xED76BACC;
  v173 = v169 ^ v163;
  v174 = v170 ^ v169 ^ v172;
  v175 = v172 ^ v173;
  v176 = *(v65 + 4 * (((v172 ^ v173) >> 16) ^ 0xF6u));
  HIDWORD(v178) = v176 ^ 0x201;
  LODWORD(v178) = v176 ^ 0x3701C000;
  v177 = v178 >> 14;
  v179 = *(v66 + 4 * (HIBYTE(v171) ^ 7));
  v180 = ~v179 & 0x80;
  if ((v180 & v177) != 0)
  {
    v180 = -v180;
  }

  v181 = v171 ^ v173;
  v182 = *(v67 + 4 * (BYTE1(v174) ^ 8u)) ^ v179 & 0xFFFFFF7F ^ __ROR4__(*(v70 + 4 * ((v171 ^ v173) ^ 0x7Du)), 16) ^ (v180 + v177);
  HIDWORD(v183) = (v181 >> 22) ^ 1;
  LODWORD(v183) = (v181 << 10) ^ 0xC0000000;
  v184 = *(v66 + 4 * (HIBYTE(v175) ^ 0x79)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v174) ^ 0xDDu)), 14) ^ *(v67 + 4 * (BYTE1(v181) ^ 0xF7u)) ^ __ROR4__(*(v70 + 4 * (v171 ^ 0xDAu)), 16);
  v185 = *(v67 + 4 * (BYTE1(v171) ^ 4u));
  v186 = *(v66 + 4 * (HIBYTE(v174) ^ 0x36)) ^ __ROR4__(*(v65 + 4 * (v183 >> 26)), 14) ^ __ROR4__(*(v70 + 4 * (v175 ^ 0xC3u)), 16) ^ ((((v185 ^ 0x452BC9D8) - (v185 ^ 0x56B33FC0)) ^ 0xFFFFFFF0) + (v185 ^ 0x452BC9D8));
  v187 = *(v66 + 4 * (HIBYTE(v181) ^ 5)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v171) ^ 0xB3u)), 14) ^ *(v67 + 4 * (BYTE1(v175) ^ 0x48u));
  LODWORD(v183) = __ROR4__(*(v70 + 4 * ((-(v174 ^ 0x3E) ^ (254 - (v174 ^ 0xC0)) ^ 0x52830A76 ^ ((v174 ^ 0x3E) - ((2 * (v174 ^ 0x3E)) & 0xECu) + 1384319606)) + 254)), 16);
  v188 = v187 ^ v183;
  v189 = *(v66 + 4 * (HIBYTE(v182) ^ 0xD7)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v184) ^ 0xD4u)), 14) ^ *(v67 + 4 * (BYTE1(v186) ^ 0xACu)) ^ __ROR4__(*(v70 + 4 * ((v187 ^ v183) ^ 0x56u)), 16);
  v190 = *(v66 + 4 * ((v184 ^ 0x9F3D624B) >> 24)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v186) ^ 0xD4u)), 14) ^ *(v67 + 4 * (((v187 ^ v183) >> 8) ^ 0x27u)) ^ __ROR4__(*(v70 + 4 * (v182 ^ 0x9Bu)), 16);
  v191 = BYTE2(v182) ^ 0x2E;
  v192 = *(v66 + 4 * (HIBYTE(v186) ^ 0x3E)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v188) ^ 0xA8u)), 14) ^ *(v67 + 4 * (BYTE1(v182) ^ 0x89u)) ^ __ROR4__(*(v70 + 4 * (v184 ^ 0x4Bu)), 16);
  v193 = *(v66 + 4 * (HIBYTE(v188) ^ 0x34)) ^ __ROR4__(*(v65 + 4 * v191), 14) ^ *(v67 + 4 * (BYTE1(v184) ^ 0xC8u)) ^ __ROR4__(*(v70 + 4 * (v186 ^ 0x3Bu)), 16);
  v194 = HIBYTE(v186) ^ 0xA7EEF88C;
  if ((v186 & 0xFF0000) != 0x3D0000)
  {
    v194 = -1477510945;
  }

  v88 = ((v194 ^ 0x580006DF) & (HIBYTE(v186) ^ 0xDCE64EB6) ^ v194 & 0x2308B01A) == -1114395;
  v195 = *(v70 + 4 * (v193 ^ 0xFEu));
  HIDWORD(v197) = v195 ^ 0x129;
  LODWORD(v197) = v195 ^ 0x43CA0000;
  v196 = v197 >> 16;
  v198 = v190 ^ 0x97CBF0F;
  v199 = *(v66 + 4 * (HIBYTE(v189) ^ 9)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v190) ^ 0x95u)), 14) ^ *(v67 + 4 * (BYTE1(v192) ^ 0x90u));
  if (v88)
  {
    v200 = (v189 ^ 0x9B4D7EFA) >> 16;
  }

  else
  {
    v200 = v189 ^ 0xFA;
  }

  v201 = v199 ^ 0xC7D56973;
  if ((v196 & 0x10000000 & v199) != 0)
  {
    v202 = -(v196 & 0x10000000);
  }

  else
  {
    v202 = v196 & 0x10000000;
  }

  v203 = *(v66 + 4 * HIBYTE(v198)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v192) ^ 0xCu)), 14);
  v204 = (v202 + v201) ^ v196 & 0xEFFFFFFF;
  v205 = __ROR4__(*(v67 + 4 * (BYTE1(v193) ^ 0x8Cu)), 17) ^ 0xC2DE4554;
  v206 = (v192 ^ 0xFAE53AE8) >> 25;
  v207 = ((v192 ^ 0xFAE53AE8) >> 24) - 170;
  if (v206 < 0x55)
  {
    v207 = (v192 ^ 0xFAE53AE8) >> 24;
  }

  if (v206 <= 0x54)
  {
    v208 = 0;
  }

  else
  {
    v208 = 170;
  }

  if (v207)
  {
    v208 = (v192 ^ 0xFAE53AE8) >> 24;
  }

  HIDWORD(v209) = v205;
  LODWORD(v209) = v205;
  v210 = *(v70 + 4 * (v200 ^ 0xFEu));
  v211 = (((((v210 << 16) & 0x50800000 ^ 0xDAAE2C8E) & (HIWORD(v210) & 0x21DC ^ 0xDAAE2C16) | HIWORD(v210) & 0x150) ^ 0x6F47BD36) & ((((v210 << 16) & 0xAF7F0000 ^ 0x4FE89AB3) & (HIWORD(v210) & 0xDE23 ^ 0xFFFFFCF1) | HIWORD(v210) & 0x4400) ^ 0xB32C294D) | ((v210 << 16) & 0xAF7F0000 ^ 0x4FE89AB3) & (HIWORD(v210) & 0xDE23 ^ 0xFFFFFCF1) & 0xA164E03 | HIWORD(v210) & 0x4400) ^ ((-((v209 >> 15) ^ 0xDC1ABA7C) ^ ((v203 ^ 0x916656B3) - (v203 ^ (v209 >> 15) ^ 0x4D7CECCF)) ^ (((v209 >> 15) ^ 0xDC1ABA7C) + 1480039883 + (~(2 * ((v209 >> 15) ^ 0xDC1ABA7C)) | 0x4F90C46B)) ^ 0x58379DCA) + (v203 ^ 0x916656B3));
  v212 = *(v65 + 4 * (BYTE2(v189) ^ 0xA4u));
  v213 = *(v66 + 4 * (v208 ^ 0x92)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v193) ^ 0xF3u)), 14) ^ *(v67 + 4 * (BYTE1(v189) ^ 0xD4u)) ^ __ROR4__(*(v70 + 4 * v198), 16);
  HIDWORD(v209) = v212 ^ 0x201;
  LODWORD(v209) = v212 ^ 0x3701C000;
  v214 = *(v66 + 4 * (HIBYTE(v193) ^ 9)) ^ 0x99628AB4;
  v215 = *(v67 + 4 * BYTE1(v198)) ^ __ROR4__(*(v70 + 4 * (v192 ^ 0x16u)), 16) ^ ((-(v209 >> 14) ^ (v214 - (v214 ^ (v209 >> 14))) ^ 0x67F813D3 ^ ((v209 >> 14) - ((2 * (v209 >> 14)) & 0xCFF027A6) + 1744311251)) + v214);
  v216 = *(v67 + 4 * (BYTE1(v213) ^ 0x94u));
  v217 = *(v66 + 4 * (HIBYTE(v204) ^ 0x14)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v211) ^ 1u)), 14);
  v218 = v217 & 0x8000;
  v88 = (v217 & 0x8000 & v216) == 0;
  v219 = v216 ^ 0x56B33FC0;
  if (!v88)
  {
    v218 = -v218;
  }

  v220 = v217 & 0xFFFF7FFF ^ __ROR4__(*(v70 + 4 * (v215 ^ 0x7Cu)), 16) ^ (v218 + v219);
  v221 = *(v66 + 4 * (HIBYTE(v211) ^ 0x3F)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v213) ^ 0x44u)), 14) ^ *(v67 + 4 * (BYTE1(v215) ^ 0x50u)) ^ __ROR4__(*(v70 + 4 * (v204 ^ 0x82u)), 16) ^ 0x63445828;
  v222 = (v221 & 0x3D933A47 ^ 0x4436F549) & (v221 & 0xC26CC5B8 ^ 0x7FDFBF4F) | v221 & 0x824800B0;
  v223 = *(v66 + 4 * (HIBYTE(v213) ^ 6)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v215) ^ 0xBEu)), 14) ^ *(v67 + 4 * (BYTE1(v204) ^ 0x8Bu)) ^ __ROR4__(*(v70 + 4 * (v211 ^ 0xDDu)), 16);
  v224 = BYTE1(v222) ^ 0x5F;
  LODWORD(v226) = __ROR4__(*(v66 + 4 * (HIBYTE(v215) ^ 0xD9)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v204) ^ 0xBAu)), 14) ^ *(v67 + 4 * (BYTE1(v211) ^ 0xF4u)) ^ __ROR4__(*(v70 + 4 * (v213 ^ 0xBCu)), 16) ^ 0xE68D4911, 22) ^ 0x1527E5D7;
  HIDWORD(v226) = v226;
  v225 = v226 >> 10;
  v227 = *(v66 + 4 * (HIBYTE(v220) ^ 0xF5)) ^ __ROR4__(*(v65 + 4 * ((v222 ^ 0xB9355FC4) >> 16)), 14);
  v228 = *(v67 + 4 * (BYTE1(v223) ^ 0x7Bu));
  HIDWORD(v226) = *(v70 + 4 * ((v226 >> 10) ^ 0xEBu));
  LODWORD(v226) = HIDWORD(v226);
  v229 = (v226 >> 16) & 0xFFFDFFFF ^ (v227 ^ v228) & 0xFFEFFFFF ^ ((v226 >> 16) & 0x20000 | 0x548435A3 | (v227 ^ ~v228) & 0x100000 | 0x210);
  v230 = *(v66 + 4 * (HIBYTE(v222) ^ 0x2B)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v223) ^ 0xFAu)), 14) ^ *(v67 + 4 * (BYTE1(v225) ^ 0x89u)) ^ __ROR4__(*(v70 + 4 * (v220 ^ 5u)), 16);
  LODWORD(v226) = __ROR4__(*(v70 + 4 * (v222 ^ 0xC4u)), 16);
  v231 = *(v65 + 4 * (BYTE2(v225) ^ 0x6Fu));
  v232 = *(v66 + 4 * (HIBYTE(v225) ^ 0x73));
  v233 = *(v66 + 4 * (HIBYTE(v223) ^ 0xD)) ^ v226 ^ (v231 >> 14) ^ (v231 << 18) ^ *(v67 + 4 * (BYTE1(v220) ^ 0xCu));
  v234 = v232 ^ __ROR4__(*(v65 + 4 * (BYTE2(v220) ^ 0xE7u)), 14) ^ *(v67 + 4 * v224) ^ __ROR4__(*(v70 + 4 * (v223 ^ 0xAAu)), 16);
  v235 = (v230 ^ 0x22088624 ^ v230 & 0x1B0B5362 ^ 0xE6FCAEBD) + (v230 & 0x1B0B5362 ^ 0xE6FCAEBD) - 2 * ((v230 ^ 0x22088624 ^ v230 & 0x1B0B5362 ^ 0xE6FCAEBD) & (v230 & 0x1B0B5362 ^ 0xE6FCAEBD));
  v236 = *(v66 + 4 * (HIBYTE(v229) ^ 0x4B)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v235) ^ 0xE9u)), 14) ^ *(v67 + 4 * (BYTE1(v233) ^ 0x13u)) ^ __ROR4__(*(v70 + 4 * (v234 ^ 0xD6u)), 16);
  v237 = *(v67 + 4 * (BYTE1(v234) ^ 0xACu));
  v238 = *(v66 + 4 * (HIBYTE(v235) ^ 0x92)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v233) ^ 0x64u)), 14) ^ 0xB21A7AE0;
  v239 = v238 & 0x1000;
  if ((v238 & 0x1000 & v237) != 0)
  {
    v239 = -v239;
  }

  v240 = *(v70 + 4 * (v229 ^ 0xFBu));
  v241 = (v239 + (v237 ^ 0x452BC9D8)) ^ v238 & 0xFFFFEFFF ^ __ROR4__(((v240 << 10) & 0x392A800 | ((((v240 << 10) | 0x1FFFFFFF) & ((v240 >> 22) ^ 0x217AB960) | (v240 << 10) & 0xDC000000) ^ 0x2D17ED50) & ((v240 << 10) & 0x3FFFC00 ^ 0xFDEB5BFF)) ^ 0xF281EC79, 26);
  v242 = *(v66 + 4 * (HIBYTE(v233) ^ 0xC1)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v234) ^ 0x13u)), 14) ^ *(v67 + 4 * (BYTE1(v229) ^ 0xF8u)) ^ __ROR4__(*(v70 + 4 * (v235 ^ 0xFEu)), 16);
  v243 = *(v70 + 4 * (v233 ^ 0x45u));
  v244 = *(v66 + 4 * (HIBYTE(v234) ^ 0xF3)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v229) ^ 0x81u)), 14) ^ *(v67 + 4 * ((-BYTE1(v235) ^ (170 - (BYTE1(v235) ^ 0xAA)) ^ (BYTE1(v235) - ((v235 >> 7) & 0x62) + 672837425) ^ 0x281AAF31) + 170)) ^ HIWORD(v243) ^ ((v243 ^ 0x43CA0129) << (BYTE4(v111) & 0x10) << (BYTE4(v111) & 0x10 ^ 0x10));
  v245 = v241 ^ 0xFD40;
  v246 = v244 ^ 0x48C0680F;
  v247 = *(v66 + 4 * (HIBYTE(v236) ^ 0x9C)) ^ __ROR4__(*(v65 + 4 * ((v241 ^ 0xB650FD40) >> 16)), 14) ^ *(v67 + 4 * (BYTE1(v242) ^ 0x4Eu)) ^ __ROR4__(*(v70 + 4 * (v244 ^ 0xFu)), 16);
  v248 = *(v66 + 4 * (HIBYTE(v241) ^ 0x24)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v242) ^ 0x1Du)), 14) ^ *(v67 + 4 * (BYTE1(v244) ^ 0xC2u)) ^ __ROR4__(*(v70 + 4 * (v236 ^ 0xB1u)), 16);
  v249 = v241 ^ 0x40;
  v250 = v249 >= 0x86;
  if (v249 >= 0x86)
  {
    v249 -= 134;
  }

  v251 = v245 + 122;
  if (!v250)
  {
    v251 = v241 ^ 0x40;
  }

  v88 = v249 == 0;
  v252 = *(v66 + 4 * (HIBYTE(v242) ^ 0xF4)) ^ __ROR4__(*(v65 + 4 * BYTE2(v246)), 14) ^ *(v67 + 4 * (BYTE1(v236) ^ 0x95u));
  v253 = BYTE2(v236) ^ 0xD8;
  if (!v88)
  {
    v251 = 0;
  }

  v254 = v252 ^ __ROR4__(*(v70 + 4 * ((v245 - v251) ^ 0xFEu)), 16);
  v255 = *(v66 + 4 * HIBYTE(v246)) ^ __ROR4__(*(v65 + 4 * v253), 14) ^ *(v67 + 4 * (HIBYTE(v245) ^ 0xAAu)) ^ __ROR4__(*(v70 + 4 * (v242 ^ 0x1Fu)), 16);
  v256 = *(v66 + 4 * (HIBYTE(v247) ^ 0x73)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v248) ^ 0x70u)), 14) ^ *(v67 + 4 * (BYTE1(v254) ^ 0xE1u)) ^ __ROR4__(*(v70 + 4 * (v255 ^ 0x57u)), 16);
  v257 = *(v66 + 4 * (HIBYTE(v248) ^ 0x25)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v254) ^ 0xCFu)), 14) ^ *(v67 + 4 * (BYTE1(v255) ^ 0x84u));
  v258 = *(v70 + 4 * (v247 ^ 0xD3u));
  HIDWORD(v260) = v258 ^ 0x129;
  LODWORD(v260) = v258 ^ 0x43CA0000;
  v259 = v260 >> 16;
  v261 = v257 & 0x80;
  if ((BYTE2(v260) & v257 & 0x80) != 0)
  {
    v261 = -v261;
  }

  v262 = (v261 + v259) ^ v257 & 0xFFFFFF7F;
  v263 = *(v67 + 4 * (BYTE1(v247) ^ 0x29u));
  v264 = v263 ^ (328791576 - (v263 ^ 0x56B33FC0)) ^ 0x452BC9D8 ^ (-1160497624 - (((v263 ^ 0x8D938DA) - 148453594) ^ ((v263 ^ 0x2E09F4F2) - 772404466) ^ ((v263 ^ 0x63FB05F0) - 1677395440)));
  v265 = HIBYTE(v255) ^ 0xA3;
  v266 = *(v66 + 4 * (HIBYTE(v254) ^ 0xEE)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v255) ^ 0xF6u)), 14) ^ __ROR4__(*(v70 + 4 * (v248 ^ 0x2Fu)), 16) ^ (v264 + 328791576);
  v267 = *(v66 + 4 * v265) ^ __ROR4__(*(v65 + 4 * (BYTE2(v247) ^ 0x6Au)), 14) ^ *(v67 + 4 * (BYTE1(v248) ^ 0x25u)) ^ __ROR4__(*(v70 + 4 * (v254 ^ 0xE7u)), 16);
  v268 = HIBYTE(v262) ^ 0xF1;
  v269 = ((v268 - (HIBYTE(v262) ^ 0x237C2CA2)) ^ 0xFFFFFFFE) + v268;
  v270 = v269 & v268;
  v271 = v269 + v268;
  v272 = *(v66 + 4 * (HIBYTE(v256) ^ 0xD1)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v262) ^ 0x10u)), 14) ^ *(v67 + 4 * (BYTE1(v266) ^ 0x20u)) ^ __ROR4__(*(v70 + 4 * (v267 ^ 7u)), 16);
  v273 = *(v66 + 4 * (HIBYTE(v262) ^ 0x63)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v266) ^ 0x77u)), 14) ^ (v271 - 2 * v270) ^ *(v67 + 4 * (BYTE1(v267) ^ 0x7Bu)) ^ __ROR4__(*(v70 + 4 * (v256 ^ 0xF4u)), 16);
  v274 = *(v70 + 4 * (v262 ^ 0xBBu));
  v275 = HIWORD(v274) ^ 0x43CA;
  v276 = __ROR4__((((v274 >> 12) ^ 0xD84236E5) & ((v274 << 20) ^ 0xEAEA37FF) | (v274 << 20) & 0x27B00000) ^ __ROR4__(*(v66 + 4 * (HIBYTE(v266) ^ 0x29)) ^ __ROR4__(*(v65 + 4 * (BYTE2(v267) ^ 0xD9u)), 14) ^ *(v67 + 4 * (BYTE1(v256) ^ 0x1Bu)) ^ 0xBD4C86EE, 28) ^ 0x328AD4C5, 4);
  v277 = *(v66 + 4 * (HIBYTE(v267) ^ 0xA8));
  v278 = (-v275 ^ (v275 - ((2 * v275) & 0x1967A) - 1051145411) ^ 0xC158CB3D ^ ((v276 ^ 0x741C61BF) - (v276 ^ 0x741C61BF ^ v275))) + (v276 ^ 0x741C61BF);
  v279 = v277 ^ __ROR4__(*(v65 + 4 * (BYTE2(v256) ^ 0xA2u)), 14) ^ *(v67 + 4 * (BYTE1(v262) ^ 0x46u));
  v281 = __ROR4__(*(v70 + 4 * ((-(v266 ^ 0x50) ^ (254 - (v266 ^ 0xAE)) ^ 0xA8ECAA42 ^ ((v266 ^ 0x50) - ((2 * (v266 ^ 0x50)) & 0x84) - 1460884926)) + 254)), 16);
  v280 = v279 ^ v281;
  v282 = *(v157 + 4 * (HIBYTE(v273) ^ 0x80)) ^ *(v159 + 4 * (((v279 ^ v281) >> 8) ^ 0x57u)) ^ (*(v159 + 4 * (((v279 ^ v281) >> 8) ^ 0x57u)) >> 1) & 0x55C08B0D ^ *(v158 + 4 * (BYTE2(v278) ^ 0xFDu));
  v283 = v282 ^ BYTE2(v278);
  v284 = *(v160 + 4 * (v272 ^ 0xBAu));
  v285 = v284 ^ v272;
  HIDWORD(v286) = v283 ^ v285;
  LODWORD(v286) = v282 ^ v284;
  v287 = ((v285 ^ 0x8C0F73) + 1) ^ v285 ^ ((v283 ^ 0x4ABDCFF3) - (__ROR4__((v286 >> 20) ^ 0xAA685D24, 12) ^ 0x678499FA));
  v288 = (((v287 & 0x5FF91633 ^ 0x6B36B366) & (v287 & 0xA006E9CC ^ 0xDFFD1FFB) | v287 & 0x80004888) ^ 0xB447E3EE) + (v283 ^ 0x4ABDCFF3);
  v289 = *(v159 + 4 * (BYTE1(v272) ^ 0x9Eu));
  v290 = *(v159 + 4 * (BYTE1(v278) ^ 0x67u));
  v291 = *(v159 + 4 * (BYTE1(v273) ^ 0xBEu));
  v292 = (v273 ^ BYTE2(v280)) ^ *(v158 + 4 * (BYTE2(v280) ^ 0x97u)) ^ v289 ^ *(v160 + 4 * ((v273 ^ 0xA4) + ((2 * v273) & 0xC0 ^ 0xFFFFFFBF) + 97)) ^ (v289 >> 1) & 0x55C08B0D ^ 0x9D7E2043 ^ *(v157 + 4 * (HIBYTE(v278) ^ 0x60));
  v293 = BYTE2(v273) ^ *(v157 + 4 * (HIBYTE(v272) ^ 0x65)) ^ *(v158 + 4 * (BYTE2(v273) ^ 9u)) ^ v280 ^ *(v160 + 4 * (v280 ^ 0x33u)) ^ v290 ^ (v290 >> 1) & 0x55C08B0D ^ 0x1B3A8698 ^ v288;
  v294 = v291 ^ *(v157 + 4 * (HIBYTE(v280) ^ 0xD4)) ^ (v291 >> 1) & 0x55C08B0D ^ (v278 ^ BYTE2(v272)) ^ *(v158 + 4 * (BYTE2(v272) ^ 0x5Eu)) ^ *(v160 + 4 * (v278 ^ 0x29u));
  v295 = v293 ^ v292;
  v296 = v293 ^ v292 ^ v164;
  v297 = v294 ^ v292 ^ v288;
  v298 = v297 ^ v294 ^ v164 ^ v295;
  v299 = v293 ^ v294 ^ v164;
  v300 = (-(v297 ^ 0x487567E7) ^ (v164 - (v297 ^ 0x487567E7 ^ v164)) ^ 0x96CBD223 ^ ((v297 ^ 0x487567E7) - 2 * ((v297 ^ 0x487567E7) & 0x16CBD233 ^ v297 & 0x10) - 1765027293)) + v164;
  v301 = *(&off_1010A0B50 + v312 - 4063) - 270776374;
  v313[4] = v301[v296 ^ 0x2FLL] ^ 0xCE;
  v313[11] = v301[v298 ^ 0xC5] ^ 0xCE;
  v302 = *(&off_1010A0B50 + v312 - 1176) - 1884022455;
  v313[5] = v302[BYTE1(v299) ^ 0x53] ^ 0xC6;
  v303 = *(&off_1010A0B50 + (v312 ^ 0x1D67)) - 1275983806;
  v304 = v303[BYTE2(v300) ^ 0x81];
  HIDWORD(v286) = ~v304;
  LODWORD(v286) = (v304 ^ 0x40) << 24;
  v313[14] = (v286 >> 28) ^ (16 * (v286 >> 28) * (v286 >> 28)) ^ 0x37;
  v305 = v303[BYTE2(v296) ^ 3];
  v306 = (16 * ~v305 - 32 * ((v305 & 1) == 0) + 19) ^ 0x13;
  v313[13] = (v306 | (v305 >> 4) ^ 4) ^ (16 * ((v305 >> 4) ^ 4) * (v306 | (v305 >> 4) ^ 4)) ^ 0x37;
  v307 = *(&off_1010A0B50 + (v312 ^ 0x15AA)) - 1466539403;
  LOBYTE(v305) = v307[(v295 ^ ~v164) >> 24];
  LOBYTE(v305) = (-109 * v305 - 63) ^ (4 * ((-109 * v305 - 63) ^ (24 * v305 + 8)));
  v313[1] = (v305 & 0xA5 ^ 0xA0) + (v305 & 0x5A ^ 0xFB) + 95;
  LOBYTE(v305) = v307[HIBYTE(v300) ^ 0xF3];
  v313[7] = (-109 * v305 - 63) ^ (4 * ((-109 * v305 - 63) ^ (24 * v305 + 8))) ^ 0xFA;
  v313[10] = ((v301[v300 ^ 0xC9] & 0x9E ^ 0x83) & (v301[v300 ^ 0xC9] & 0x61 ^ 0xDE) | v301[v300 ^ 0xC9] & 0x60) ^ 0x4C;
  LOBYTE(v305) = v307[HIBYTE(v299) ^ 0xE7];
  *v313 = (-109 * v305 - 63) ^ (4 * ((-109 * v305 - 63) ^ (24 * v305 + 8))) ^ 0xFA;
  v313[3] = v302[BYTE1(v298) ^ 0x58] ^ 0xC6;
  v308 = v303[BYTE2(v299) ^ 0x71];
  HIDWORD(v286) = ~v308;
  LODWORD(v286) = (v308 ^ 0x40) << 24;
  v309 = v286 >> 28;
  v313[2] = ((-16 * v309 * v309) ^ (16 * v309 * v309 - 32 * ((v309 * v309) & 1) + 23) ^ ((v309 ^ 0x37) - (v309 ^ 0x31 ^ ((16 * v309 * v309) | 6))) ^ 0x17) + (v309 ^ 0x37);
  LODWORD(v303) = v303[BYTE2(v298) ^ 0xA2];
  v310 = (((v303 >> 4) ^ 4) - ((v303 >> 3) & 4) - 94) ^ 0xFFFFFFA2;
  v313[9] = (v310 + 16 * ~v303) ^ (16 * v310 * v310) ^ 0x37;
  v313[15] = v302[BYTE1(v296) ^ 0x73] ^ 0xC6;
  v313[8] = v301[v299 ^ 0x17] ^ 0xCE;
  v313[12] = v302[BYTE1(v300) ^ 0x30] ^ 0xC6;
  LOBYTE(v310) = v307[(-(HIBYTE(v298) ^ 0xE2) ^ (8 - (HIBYTE(v298) ^ 0xEA)) ^ 0xE7E5BDB7 ^ ((HIBYTE(v298) ^ 0xE2) - 404374088 + (~(2 * (HIBYTE(v298) ^ 0xE2)) | 0xFFFFFE91))) + 8];
  v313[6] = (-109 * v310 - 63) ^ (4 * ((24 * v310 + 8) ^ (-109 * v310 - 63))) ^ 0xFA;
  return (*(v314 + 8 * v312))(a1);
}

uint64_t sub_1006D4F64@<X0>(void *a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46)
{
  a1[3] = STACK[0x230];
  a1[4] = *(v46 + 80);
  *(v46 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = STACK[0x208];
  return (*(v47 + 8 * (((a2 + 55 + a2 + 3344 - 23824) * (a46 > 0xFFFFFFFFFFFFFFD6)) ^ a2)))();
}

uint64_t sub_1006D5090@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  v20 = a1 < v13;
  *(&a12 + (v15 - 1447182404)) = *(v19 + v16) + ((v17 - 62) ^ 0x7C) - ((2 * *(v19 + v16)) & 0xBF);
  if (v20 == v16 + 1 > v12)
  {
    v20 = v16 + 1621467937 < a1;
  }

  return (*(v18 + 8 * ((!v20 * v14) ^ v17)))();
}

uint64_t sub_1006D5290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  v29 = 47 * (v28 ^ 0x1813u);
  v30 = *(v27 + 8 * ((32704 * ((((a27 ^ 0x5D201C8A) - 1562400257 + v29) ^ ((a27 ^ 0xCB54C371) + 883637391) ^ ((a27 ^ 0x7FA116A1 ^ (v28 - 2783)) - 2141264106)) - 371865859 < 0x7FFFFFEC)) ^ v28));
  return v30(a1, v30, v29, a4, a7, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1006D5398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v46 = ((*(v30 + (v36 & 7)) ^ 0xDF) + 33) ^ ((*(v30 + (v36 & 7)) ^ v31) + 85) ^ ((*(v30 + (v36 & 7)) ^ v39) - 43);
  *(v44 - 152) = v41 + (((*v38 ^ v32) - 103) ^ ((*v38 ^ v33) - 105) ^ ((*v38 ^ v34) - 81)) - 94;
  *(v44 - 148) = v40;
  *(v44 - 144) = v41 + v46 - 77;
  v47 = (*(v45 + 8 * v42))(v44 - 152);
  return (*(a30 + 8 * ((22 * ((v35 | v43) >> 63)) | v37)))(v47);
}

uint64_t sub_1006D55E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  LODWORD(STACK[0x18B8]) = v5;
  LODWORD(STACK[0x1D9C]) += 4;
  return (*(v8 + 191296))();
}

uint64_t sub_1006D5868()
{
  v1 = (((LODWORD(STACK[0xEC4]) ^ 0xF186DD3D) + 242819779) ^ ((LODWORD(STACK[0xEC4]) ^ 0x3140E7BA) - 826337210) ^ ((LODWORD(STACK[0xEC4]) ^ 0x2913FD96) - 689175958)) - LODWORD(STACK[0x1C54]) - 1232504063;
  LODWORD(STACK[0x1714]) = ((v1 ^ 0x990A3F7D) + 816153027) ^ v1 ^ ((v1 ^ 0x905561FB) + 972742469) ^ ((v1 ^ 0xA0F0A038) + 157228680) ^ ((v1 ^ 0xFFFFBFFE) + 1448083778) ^ 0xBF858651;
  return (*(v0 + 8 * ((35230 * ((((((v1 ^ 0x7D) - 61) ^ v1 ^ ((v1 ^ 0xFB) + 69) ^ ((v1 ^ 0x38) - 120)) ^ ((v1 ^ 0xFE) + 66)) & 0xF) == 0)) ^ 0x2B38u)))();
}

uint64_t sub_1006D5C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v17 = *(v10 + 4 * ((v16 + v13) & 0x1F));
  v18 = ((3039 * (a7 ^ 0xB8ABu)) ^ 0x5306) & (a1 + v13);
  v19 = *(v9 + 4 * ((3 * v13 + v15 + ((a7 + 5) ^ 5)) & 0x1F));
  v20 = -1664881833 * (*(v10 + 4 * v18) ^ ((-1107296256 * v17) | ((-1709456289 * v17) >> 7)) ^ (v19 - ((2 * v19) & 0x6D592AB0) + v7) ^ v7);
  *(v10 + 4 * v18) = v20;
  v21 = *(v14 + 4 * ((v13 + 14) & 0x1F));
  *(v10 + 4 * v18) = *(v14 + 4 * ((v13 + 8) & 0x1F)) & ~*(v14 + 4 * ((v13 + 30) & 0x1F)) ^ (v21 - ((2 * v21) & 0x84B3EA5C) + v8) ^ v8 ^ v20;
  return (*(v12 + 8 * (a7 ^ (123 * (v11 != 28)))))();
}

uint64_t sub_1006D5E28(uint64_t a1, uint64_t a2)
{
  STACK[0x348] = 0;
  v5 = STACK[0x280] < 0x7FFFFFFFFFFFFF82;
  STACK[0x300] = *(v4 + 8 * v2);
  return (*(v4 + 8 * ((((3964 * (v3 ^ 0x157C)) ^ (v3 - 1247912844) & 0x4A61AF3F ^ 0x791F) * v5) ^ v3)))(a1, a2, 4137755032, 1007852693, 3274628274, 65241351, 848134491, &STACK[0x5EC]);
}

uint64_t sub_1006D60A0@<X0>(__int16 a1@<W8>)
{
  LOWORD(STACK[0x1FF6]) = v1;
  LODWORD(STACK[0x89CC]) = v2;
  v4 = (((v3 + 18634) & 0x55E7 ^ 0x7BF6) + a1);
  v5 = (v1 > 0x17DCu) ^ (v4 < 0xE823);
  v6 = v4 < (v1 - 6109);
  if (v5)
  {
    v6 = v1 > 0x17DCu;
  }

  return (*(STACK[0xF18] + 8 * ((109 * (((v3 + 10) ^ v6) & 1)) ^ v3)))();
}

uint64_t sub_1006D61A0()
{
  v3 = v0 + 6190;
  v4 = *(v2 + 8 * v3);
  STACK[0x3D8] = v1;
  LODWORD(STACK[0x380]) = v3 + 15305;
  return v4();
}

uint64_t sub_1006D62B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = (*(v63 + 8 * (v62 ^ 0x512Eu)))(264);
  v65 = STACK[0x358];
  STACK[0x380] = v64 + 0x7D79982B90C8BFA0;
  return (*(v65 + 8 * (((v64 == 0) * ((((v62 + 5309) | 0x508) - 24051) ^ ((v62 - 22073) | 0x1208))) | v62)))(v64, v66, v67, v68, v69, v70, (v62 + 5309) | 0x508u, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1006D664C@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v22 = (v12 ^ 0xD54F3C62) & (2 * (v12 & v13)) ^ v12 & v13;
  v23 = ((2 * (v9 ^ v12 ^ 0xF5466732)) ^ 0x4A53EE02) & (v9 ^ v12 ^ 0xF5466732) ^ (2 * (v9 ^ v12 ^ 0xF5466732)) & a6;
  v24 = v23 ^ 0x25281101;
  v25 = (v23 ^ 0x1E600) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x94A7DC04) & v24 ^ (4 * v24) & a6;
  v27 = (v26 ^ 0x421D400) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x21082301)) ^ a7) & (v26 ^ 0x21082301) ^ (16 * (v26 ^ 0x21082301)) & a6;
  v29 = v27 ^ a5 ^ (v28 ^ v11) & (v27 << 8);
  v30 = (v12 ^ (2 * ((v29 << 16) & v20 ^ v29 ^ ((v29 << 16) ^ v19) & (((v28 ^ v17) << 8) & v20 ^ v16 ^ (((v28 ^ v17) << 8) ^ v10) & (v28 ^ v17))))) >> 6;
  return (*(v8 + 8 * ((464 * ((((v30 ^ v14) + v18) ^ ((v30 ^ v15) + a8) ^ ((v30 ^ a2) + a3)) + a4 != v21)) ^ a1)))();
}

uint64_t sub_1006D6790()
{
  v3 = *(v2 + 8 * v1);
  STACK[0x978] = (((v0 ^ 0x78798D506489334CLL) - 0x78798D506489334CLL) ^ ((v0 ^ 0xEE33303CD408F7A8) + 0x11CCCFC32BF70858) ^ ((v0 ^ 0x964ABD6C595403F5) + 0x69B54293A6ABFC0BLL)) + 0x26F1CF3AFB03D540;
  STACK[0x1550] = v3;
  return (*(v2 + 8 * (((v1 - 1848778077) & 0x6E32AF5F ^ 0xA9E3) + v1)))();
}

uint64_t sub_1006D686C()
{
  v1 = STACK[0x1E68];
  v2 = (*(v0 + 415048))(*(STACK[0x1E68] + 640));
  *(v1 + 640) = 0;
  *(v1 + 648) = 42803857;
  return (*(v0 + 165088))(v2);
}

uint64_t sub_1006D6B14@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x5D4]) = a1;
  v2 = STACK[0x498];
  v3 = STACK[0x430];
  v4 = (*(STACK[0x430] + 8 * (v1 + 38138)))(STACK[0x498] + 16, 0);
  v5 = STACK[0x408];
  v5[2] = *(v2 + 16) - 1914233542 + ((184 * (v1 ^ 0x367B)) ^ 0xFFFFA907 ^ (2 * *(v2 + 16)) & 0x1BCE3A72);
  v5[1] = *(v2 + 24) - ((2 * *(v2 + 24)) & 0x1BCE3A72) - 1914233543;
  v6 = (*(v3 + 8 * (v1 + 38081)))(v4);
  v5[3] = v6 - ((2 * v6) & 0x1BCE3A72) - 1914233543;
  v7 = (*(v3 + 8 * (v1 + 38081)))();
  *v5 = v7 - ((2 * v7) & 0x1BCE3A72) - 1914233543;
  LODWORD(STACK[0x3D0]) = STACK[0x388] - ((2 * STACK[0x388]) & 0xA1B17288) + 1356380484;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1006D6C24(uint64_t a1)
{
  *(a1 + 8) = v3;
  v7 = STACK[0x2290];
  *(a1 + 16) = STACK[0x228C];
  *(a1 + 20) = v7;
  *(a1 + 24) = v2;
  *v4 = a1;
  return (*(v5 + 8 * (((v1 ^ 1) * (((v6 - 779328084) & 0x2E737BFF) - 10989)) ^ v6)))();
}

uint64_t sub_1006D6C78()
{
  v5 = (v1 ^ 0x79EEE5F9EFEFCC5FLL) - 0x79EEE5F99E916B7BLL + ((v1 << ((v0 - 34) & 0xFB ^ 0xF8u)) & 0x1DFDF98BELL);
  v6 = (v3 ^ 0x1F9DFEDD7BAC1FFFLL) - 0x1F9DFEDD2A4DBF1FLL + (((v0 - 14138) + 4149751833) & (2 * v3));
  v7 = v5 < 0x515E60E0;
  v8 = v5 > v6;
  if (v6 < 0x515E60E0 != v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = 371891407;
  }

  else
  {
    v10 = v2;
  }

  LODWORD(STACK[0x1D78]) = v10;
  return (*(v4 + 8 * ((54 * !v9) ^ v0)))();
}

uint64_t sub_1006D6DD0()
{
  v3 = *(v2 - 216);
  v4 = (*(v3 + 8 * (v0 ^ 0x4B8D)))(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  STACK[0x4A0] = 0;
  STACK[0x498] = 0;
  *(v2 - 256) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  STACK[0x4B0] = 0;
  *(v2 - 224) = v0 - 27892;
  v5 = *(v3 + 8 * (((v4 == 0) * ((v0 - 27892) ^ 0x98F6 ^ (v0 + 1353997500) & 0xAF4BAEBF)) ^ v0));
  *(v2 - 148) = -1391007032;
  STACK[0x480] = v1;
  return v5();
}

uint64_t sub_1006D6FE4()
{
  v3 = v1 - 18750;
  v4 = v2 + v0;
  v5 = STACK[0x2614];
  v6 = STACK[0x7F48];
  LODWORD(STACK[0x30EC]) = v4;
  LODWORD(STACK[0x2614]) = v5 + v4;
  STACK[0xB498] = *v6;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1006D70E8()
{
  LODWORD(STACK[0x1F14]) = v1;
  v4 = (((v2 ^ 0x818B260A) + 2121587190) ^ ((v2 ^ 0x5D5901D5) - 1566114261) ^ (v0 - 889749253 + (v2 ^ (1889 * (v0 ^ 0x9E31) + 889697416)))) - 2064628282;
  v5 = v4 < 0x9B1A7EB5;
  v6 = v1 + 1757451210 < v4;
  if ((v1 + 1757451210) < 0x9B1A7EB5 != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((113 * !v6) ^ v0)))();
}

uint64_t sub_1006D71C0@<X0>(unint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v3 = STACK[0x430];
  STACK[0x648] = *(STACK[0x430] + 8 * a3);
  STACK[0x6E0] = &STACK[0x48C];
  STACK[0x6E8] = a1;
  STACK[0x580] = a1;
  LODWORD(STACK[0x564]) = a2;
  STACK[0x5E0] = 0;
  return (*(v3 + 8 * ((a3 + 20520) ^ a3)))();
}

uint64_t sub_1006D7218()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0xE9BF)))((16 * (v1 - ((2 * v1) & 0x8D02066)) + 1182860080) ^ 0x46810330u);
  *v0 = v4;
  return (*(v3 + 8 * (((v4 != 0) * (3 * (v2 ^ 0xD4E) - 35623)) ^ v2)))();
}

uint64_t sub_1006D7284()
{
  v0 = (STACK[0xF10] - 34229) | 0xA21;
  STACK[0x6AE0] = STACK[0x3428] + 48;
  v1 = STACK[0xF18];
  STACK[0x3988] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 49597 + v0 + 46840)))();
}

uint64_t sub_1006D7358(uint64_t a1)
{
  v3 = 8 * (LODWORD(STACK[0x2BC]) ^ 0x6496);
  STACK[0x330] = (((*(a1 + 16) ^ 0x74B0CBCB1F44782BLL) - 0x74B0CBCB1F44782BLL) ^ ((*(a1 + 16) ^ 0x97DFC82091FA35E6) + 0x682037DF6E05CA1ALL) ^ ((((v3 ^ 0x4741u) + (v3 ^ 0x2E07u) - 0x1C90FC149894E77CLL) ^ *(a1 + 16)) + 0x1C90FC1498947524)) + *a1 + 3923101465;
  return (*(v2 + 8 * ((55023 * (*(a1 + 24) == v1)) ^ v3)))();
}

uint64_t sub_1006D7440()
{
  v1 = *(&STACK[0xF9C] + (STACK[0xF9D] & 3));
  v2 = 1009 * (((v1 ^ 0x877B) + 30853) ^ ((v1 ^ 0xABD9) + 21543) ^ ((v1 ^ 0x2CAE) - 11438)) + 4356;
  v3 = v2 & 0x10C8 ^ 0x940;
  v4 = (v2 ^ (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * ((v2 ^ 0x1E48) & (2 * v3) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3))) ^ 0xDADE;
  v5 = ((65 * (((v4 ^ 0x6C8803F0) - 1820853232) ^ ((v4 ^ 0x62A2F9A) - 103427994) ^ ((v4 ^ 0x6AA2E67Cu) + 6101380)) + 9457558) >> 16);
  v6 = STACK[0x798] + v5 + ((v5 < 0x5D) << 8);
  v7 = (v6 ^ 0x3E8497F2DA197CACLL) & (2 * (v6 & 0x3ED6D7FADA5C7EACLL)) ^ v6 & 0x3ED6D7FADA5C7EACLL;
  v8 = ((2 * (v6 ^ 0x662D3E064E8995ECLL)) ^ 0xB1F7D3F929ABD680) & (v6 ^ 0x662D3E064E8995ECLL) ^ (2 * (v6 ^ 0x662D3E064E8995ECLL)) & 0x58FBE9FC94D5EB40;
  v9 = v8 ^ 0x4808280494542940;
  v10 = (v8 ^ 0x10F3C1F80081C200) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x63EFA7F25357AD00) & v9 ^ (4 * v9) & 0x58FBE9FC94D5EB40;
  v12 = (v11 ^ 0x40EBA1F01055A900) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x1810480C84804240)) ^ 0x8FBE9FC94D5EB400) & (v11 ^ 0x1810480C84804240) ^ (16 * (v11 ^ 0x1810480C84804240)) & 0x58FBE9FC94D5EB40;
  v14 = (v13 ^ 0x8BA89C80454A000) & (v12 << 8) ^ v12;
  v15 = (((v13 ^ 0x5041603490814B40) << 8) ^ 0xFBE9FC94D5EB4000) & (v13 ^ 0x5041603490814B40) ^ ((v13 ^ 0x5041603490814B40) << 8) & 0x58FBE9FC94D5E000;
  v16 = v14 ^ 0x58FBE9FC94D5EB40 ^ (v15 ^ 0x58E9E89494C10000) & (v14 << 16);
  v17 = (v6 ^ (2 * ((v16 << 32) & 0x58FBE9FC00000000 ^ v16 ^ ((v16 << 32) ^ 0x14D5EB4000000000) & (((v15 ^ 0x1201680014AB40) << 16) & 0x58FBE9FC00000000 ^ 0x1003692800000000 ^ (((v15 ^ 0x1201680014AB40) << 16) ^ 0x69FC94D500000000) & (v15 ^ 0x1201680014AB40))))) & 0xFFFFFFFFFFFFFFFCLL;
  STACK[0xA70] = (((v17 ^ 0xE5D0427C95C5C122) + 0x575041801BFC6EDELL) ^ ((v17 ^ 0xB37B1FC6AF8A981ELL) + 0x1FB1C3A21B337E2) ^ ((v17 ^ 0xF8298B39C9B8F110) + 0x4AA988C547815EF0)) + 0xAEEF9BA9360065BLL;
  v18 = *(&STACK[0xF9C] + (STACK[0xF9E] & 3));
  v19 = 5042 * (((v18 ^ 0x6469) + 7063) ^ ((v18 ^ 0x1B79) - 7033) ^ ((v18 ^ 0x7F1C) + 228)) - 30447;
  LOWORD(v17) = v19 & 0xCEC ^ 0x54D6;
  v20 = ((v19 ^ (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * ((v19 ^ 0x6344) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xDC6C) & 0xFFFE;
  v21 = ((13 * (((v20 ^ 0x88AA08C6) + 2002122554) ^ ((v20 ^ 0xB6B969A) - 191600282) ^ ((v20 ^ 0x83C14EDC) + 4108580)) + 8164992) >> 16) + 121;
  return (*(v0 + 8 * ((56 * (((v21 ^ (2 * ((v21 ^ 0xC) & (2 * ((v21 ^ 0x1C) & (2 * (v21 & 0x58 | 0xA6)) ^ (v21 & 0x58 | 0xA6))) ^ (v21 & 0x58 | 0xA6)))) & 0x1C) != 24)) ^ 0x7491u)))();
}

uint64_t sub_1006D7B10()
{
  v6 = *(STACK[0xED0] - 0x217E172EFA1E81CLL);
  v7 = 40409587 * LODWORD(STACK[0x93E0]) - 1378563772;
  v8 = ((-2 - ((~(&STACK[0x10000] + 3800) | 0x96E288BD) + ((&STACK[0x10000] + 3800) | 0x691D7742))) ^ 0x70C49372) * v3;
  LOWORD(STACK[0x10F00]) = v1 - ((-2 - ((~(&STACK[0x10000] + 3800) | 0x88BD) + ((&STACK[0x10000] + 3800) | 0x7742))) ^ 0x9372) * v3;
  LODWORD(STACK[0x10ED8]) = v7 ^ v8;
  STACK[0x10F10] = v6;
  LODWORD(STACK[0x10EF4]) = v8 ^ v0;
  LODWORD(STACK[0x10F04]) = v8 + 2069619737;
  LODWORD(STACK[0x10F08]) = v2 - v8 + 1777283590;
  STACK[0x10EF8] = 0;
  STACK[0x10EE8] = v4 ^ 0xB2C981EB4C311DF0 ^ (v2 - 3732);
  STACK[0x10EE0] = &STACK[0x896C];
  LODWORD(STACK[0x10EF0]) = v8 ^ 0xE2FBFE53;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v2 + 44369)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * ((36242 * (LODWORD(STACK[0x10F0C]) == v5)) ^ v2)))(v10);
}

uint64_t sub_1006D7C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x7804]) = LODWORD(STACK[0x4574]) + LODWORD(STACK[0x2C9C]) + LODWORD(STACK[0x7804]) - 1699451797;
  LODWORD(STACK[0x5624]) = v7;
  v8 = v7 == -371865839;
  LOBYTE(STACK[0x330F]) = v8;
  return (*(STACK[0xF18] + 8 * ((v8 * ((v6 ^ 0x98CD) + 5529)) ^ (v6 - 16155))))(a1, a2, a3, a4, a5, a6, STACK[0x950]);
}

uint64_t sub_1006D7CF0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x4C8] = *(v4 + 8 * v1);
  STACK[0x568] = a1;
  STACK[0x570] = v3;
  STACK[0x578] = v2;
  return (*(v4 + 8 * ((35443 * (*(a1 + 24) == ((v5 - 9094) ^ 0xE9D58E58))) ^ (v5 - 13939))))();
}

uint64_t sub_1006D7EE4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1BA4]) = v2;
  v4 = ((v1 - 1650511938) & a1) == 0;
  LOBYTE(STACK[0xA27]) = v4;
  return (*(v3 + 8 * ((53 * v4) ^ (v1 - 1650481529))))();
}

uint64_t sub_1006D8064()
{
  v3 = v0 - 1501607290;
  v4 = ((((LODWORD(STACK[0x3DC]) | 0x8405) ^ 0x2278D058) + (v1 ^ 0xDD87AA83)) ^ ((v1 ^ 0xDAF9DA20) + 621159904) ^ (((LODWORD(STACK[0x3D8]) | 0x89) ^ 0x11544597) + (v1 ^ 0xEEABB7B2))) - 1873473129;
  v5 = v0 > 0x5980B579;
  v6 = v5 ^ (v4 < 0xA67F4A86);
  v7 = v3 > v4;
  if (!v6)
  {
    v5 = v7;
  }

  return (*(v2 + 8 * ((51 * v5) ^ 0x3E47u)))();
}

uint64_t sub_1006D822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v7 + 8 * ((((519 * ((2 * (v6 ^ 0x9BBD)) ^ 0x67A3) + 1650430528) ^ (2 * (v6 ^ 0x9BBD) + 1650485346)) * (*(a6 + 24) == STACK[0x6C0])) ^ (2 * (v6 ^ 0x9BBD))));
  STACK[0x7A0] = STACK[0x6C0];
  return v8();
}

void sub_1006D8294(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 ^ 0x7EF97FDA) + ((2 * a3) & 0xFDF2B090) == 2130280410)
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891401;
  }

  *(v4 + 8) = v3;
}

uint64_t sub_1006D830C@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0xF18] + 8 * a1);
  LODWORD(STACK[0xED0]) = (((a1 - 6419) | 0x1900) + 56251007) & 0xFCA5BFBB;
  return v1(1017734176, 3581715249, 116, 19);
}

uint64_t sub_1006D8528()
{
  v2 = *(v0 - 0x217E172EFA1E7ECLL);
  STACK[0x8430] = v2;
  return (*(STACK[0xF18] + 8 * ((15 * (v2 != 0)) ^ v1)))();
}

uint64_t sub_1006D866C(int a1)
{
  v3 = v1 < 0x80000000F8109083;
  v4 = *(v2 + 8) - 0x3CE25E0DCD0F72F5;
  v5 = v3 ^ (v4 < (a1 - 26685) - 0x7FFFFFFF07EFCFE2);
  v6 = v4 < v1;
  if (!v5)
  {
    v3 = v6;
  }

  v7 = *(STACK[0x3D0] + 8 * ((v3 * ((a1 ^ 0xD2E6) - 6612)) ^ a1));
  STACK[0x2D8] = v2;
  return v7();
}

uint64_t sub_1006D88DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17)
{
  v21 = *(v18 + (a17 & 3)) % (v19 - 1732489899);
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  return (*(v20 + 8 * v17))(4127126874, 243, 1871352405, v22, 180, 226, (v17 ^ 0x5C3Du) + 23605);
}

uint64_t sub_1006D8AB0(int a1, uint64_t a2, int a3)
{
  v6 = (2 * LODWORD(STACK[0x2BC])) ^ 0xF69D;
  v7 = LODWORD(STACK[0x2BC]) - 10152;
  v8 = STACK[0x298];
  LODWORD(STACK[0x510]) = STACK[0x298];
  LODWORD(STACK[0x4FC]) = v4;
  LODWORD(STACK[0x500]) = v3;
  LODWORD(STACK[0x504]) = a3;
  LODWORD(STACK[0x508]) = a1;
  return (*(v5 + 8 * ((104 * (((v6 + 16765180) & v8) == 3071561)) ^ v7)))();
}

uint64_t sub_1006D8B10()
{
  LODWORD(STACK[0x1014]) = STACK[0x7D5C];
  LODWORD(STACK[0x5E4C]) = STACK[0x2F1C];
  return (*(STACK[0xF18] + 8 * (((((v0 - 24) ^ (STACK[0x4698] == 0)) & 1) * ((v0 - 2010991971) & 0x77DCCAFF ^ 0x8B3)) ^ (v0 - 15872))))();
}

uint64_t sub_1006D8B98()
{
  LODWORD(STACK[0x21E8]) = STACK[0x20D4];
  v1 = *(STACK[0xE88] + 32) + 599190376;
  v2 = (v1 ^ 0x9F00C492) & (2 * (v1 & 0xDC491493)) ^ v1 & 0xDC491493;
  v3 = ((2 * (v1 ^ 0x8F90CD92)) ^ 0xA7B3B202) & (v1 ^ 0x8F90CD92) ^ (2 * (v1 ^ 0x8F90CD92)) & 0x53D9D900;
  v4 = v3 ^ 0x50484901;
  v5 = (v3 ^ 0x3009000) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x4F676404) & v4 ^ (4 * v4) & 0x53D9D900;
  v7 = (v6 ^ 0x43414000) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x10989901)) ^ 0x3D9D9010) & (v6 ^ 0x10989901) ^ (16 * (v6 ^ 0x10989901)) & 0x53D9D900;
  v9 = v7 ^ 0x53D9D901 ^ (v8 ^ 0x11999000) & (v7 << 8);
  LODWORD(STACK[0x21EC]) = v1 ^ (2 * ((v9 << 16) & 0x53D90000 ^ v9 ^ ((v9 << 16) ^ 0x59010000) & (((v8 ^ 0x42404901) << 8) & 0x53D90000 ^ (((v8 ^ 0x42404901) << 8) ^ 0x59D90000) & (v8 ^ 0x42404901) ^ 0x2000000))) ^ 0x875C788B;
  return (*(v0 + 40672))();
}

void sub_1006D8D34(uint64_t a1)
{
  v1 = *(a1 + 16) - 906386353 * (((a1 | 0x9AD986AC) - (a1 | 0x65267953) + 1697020243) ^ 0xABD84B88);
  v2 = (v1 - 1884367103) | 0x7821;
  v4 = v3 + (*(a1 + 8) ^ 0x55BFEDB102C40440);
  v3[0] = (v4 & 0x222524A2) + ((2 * v4) & 0x1241002) + ((2 * v4) & 0x29120A0) + (((v4 & 0x54924909) + 680692241) & 0x54924909) + 570499232 + ((-1814448904 - (v4 & (v2 ^ 0x8948EA25))) & 0x89489254);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1006D8FC8@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v15 = *(a2 + 24);
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = v16 - ((a4 + 2 * v16) & a5) + a6;
  v18 = v17 ^ v7;
  v19 = v17 ^ v8;
  v20 = (__ROR8__(v18, 8) + v19) ^ ((a7 ^ 0x5AB1u) * a3 + v10);
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = ((v11 & (2 * (v22 + v21))) - (v22 + v21) + v12) ^ v13;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = ((v14 & (2 * (v25 + v24))) - (v25 + v24) - 0x37C9457DDB76962DLL) ^ 0x754B976BE583C8B9;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0xAF61CEC5111CD554) - (v28 + v27) - 0x57B0E762888E6AAALL) ^ 0xD500677537CDAAC3;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((v31 + v30) ^ 0x4490EAA1A851112) - ((2 * ((v31 + v30) ^ 0x4490EAA1A851112)) & 0x8F2E44BDC36E01F6) - 0x3868DDA11E48FF05) ^ 0x6943F64E19D6C595;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((v34 + v33) | 0x63224E5879BFB98BLL) - ((v34 + v33) | 0x9CDDB1A786404674) - 0x63224E5879BFB98CLL) ^ 0xEC906F1B8764D538;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((((2 * (v37 + v36)) & 0xED83DFEE9E5AF520) - (v37 + v36) + 0x93E1008B0D2856FLL) ^ 0x9222642FD5CC8A77) >> (8 * (v15 & 7u))) ^ *v15;
  v39 = __ROR8__((v15 + 1) & 0xFFFFFFFFFFFFFFF8, 8) - 0x296E95066F186A7FLL;
  v40 = __ROR8__(v39 ^ 0x72219E3FC273472, 8);
  v39 ^= 0xB3A94E2F7B1B987CLL;
  v41 = (((v40 + v39) | 0x252FC6E1911959E6) - ((v40 + v39) | 0xDAD0391E6EE6A619) - 0x252FC6E1911959E7) ^ 0x3195C1ABBE813603;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x57B4C35A3E2D4C8ELL) + 0x2BDA61AD1F16A647) ^ 0x7EDE9EEE6B2C8DFLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xBD7D2DE9C10AA16ALL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x82B08017BF43C069;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xAA9DDABAE2E4D47CLL;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((v52 + v51) | 0xCF618B1C3928C1C8) - ((v52 + v51) | 0x309E74E3C6D73E37) + 0x309E74E3C6D73E37) ^ 0x40D3AA5FC7F3AD7BLL;
  v54 = (((((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v51, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v15 + 1) & 7))) ^ *(v15 + 1)) << 16) | (v38 << 24);
  v55 = __ROR8__((v15 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = ((v55 - 0x296E95066F186A7FLL) ^ 0x98C64FE140E86560) - ((2 * ((v55 - 0x296E95066F186A7FLL) ^ 0x98C64FE140E86560)) & 0x803AB186F4A78ABELL) + 0x401D58C37A53C55FLL;
  v57 = v56 ^ 0xDFF90EC1C69C944DLL;
  v56 ^= 0x6B72590D41A03843uLL;
  v58 = __ROR8__(v57, 8);
  v59 = __ROR8__((((2 * (v58 + v56)) & 0xDCD0B15D40A15D88) - (v58 + v56) + 0x1197A7515FAF513BLL) ^ 0x52DA01B70373EDELL, 8);
  v60 = (((2 * (v58 + v56)) & 0xDCD0B15D40A15D88) - (v58 + v56) + 0x1197A7515FAF513BLL) ^ 0x52DA01B70373EDELL ^ __ROR8__(v56, 61);
  v61 = (((2 * (v59 + v60)) | 0xD177E8BFF47AC606) - (v59 + v60) + 0x17440BA005C29CFDLL) ^ 0xC48C7C1C03990D9BLL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xBD7D2DE9C10AA16ALL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) & 0x29050A28E5D4F31ALL) - (v65 + v64) + 0x6B7D7AEB8D158672) ^ 0xE9CDFAFC3256461BLL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0xA354FA515250B188) - (v68 + v67) + 0x2E5582D756D7A73BLL) ^ 0x84C8586DB4337347;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (v71 + v70 - ((2 * (v71 + v70)) & 0x8FED1427EB2BCE92) - 0x380975EC0A6A18B7) ^ 0x4844AB500B4E8BFALL;
  v73 = v54 | (((((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v70, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v15 + 2) & 7))) ^ *(v15 + 2)) << 8);
  v74 = *(v15 + 3);
  v15 += 3;
  v75 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = -2 - (((0x296E95066F186A7ELL - v75) | 0x68AC7E14CE94E3C5) + ((v75 + 0x56916AF990E79581) | 0x975381EB316B1C3ALL));
  v77 = v76 ^ 0x6F8E67F732B3D7B7;
  v76 ^= 0xDB05303BB58F7BB9;
  v78 = (__ROR8__(v77, 8) + v76) ^ 0x14BA074A2F986FE5;
  v79 = __ROR8__(v78, 8);
  v80 = v78 ^ __ROR8__(v76, 61);
  v81 = (((2 * (v79 + v80)) & 0x34730F1C839D635CLL) - (v79 + v80) + 0x65C67871BE314E51) ^ 0x49F1F032479520C9;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * (v83 + v82)) & 0x5E55E85CCAE627B0) - (v83 + v82) + 0x50D50BD19A8CEC27) ^ 0xEDA826385B864D4DLL;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x82B08017BF43C069;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) & 0xC226F70DB67B1B88) - (v88 + v87) - 0x61137B86DB3D8DC5) ^ 0x34715EC3C626A647;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x8FB22143FEDB6CB3;
  LODWORD(v15) = (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v90, 61))) ^ 0x9B1C7427651E0F18) >> (8 * (v15 & 7u))) ^ v74;
  LODWORD(v15) = ((v73 - ((2 * v73) & 0xE39E2600) - 238087291) ^ 0x990319DA) & ~v15 ^ (v15 & 0xA0 | 0x96318100);
  return (*(STACK[0x6A0] + 8 * ((30 * ((((v15 ^ 0xDBF8E48B) + 858740539) ^ ((v15 ^ 0xBBD6936F) + 1392582879) ^ ((v15 ^ 0x9ED3FCBB) + 1979993867)) - (*v9 ^ a1) != 231060956)) | a7)))();
}

uint64_t sub_1006D98B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 - 266163502;
  if ((v4 - 266163502) <= 0x40)
  {
    v7 = 64;
  }

  return (*(v6 + 8 * ((103 * (v7 - v4 + 266163502 < (((v5 ^ 0x8C34) - 5754) ^ 0x2694u))) ^ v5)))(226, a2, a3, a4, 0);
}

uint64_t sub_1006D9928()
{
  v3 = (*(v2 + 8 * (v1 + 20537)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006D9958@<X0>(int a1@<W8>)
{
  v15 = (*v2 + v4);
  v16 = (*v2 + (v3 + v10));
  v17 = *v15;
  v18 = *(*v8 + (*v6 & v12));
  v19 = ((((v18 ^ v15) & 0x7FFFFFFF) * v7) ^ ((((v18 ^ v15) & 0x7FFFFFFF) * v7) >> 16)) * v7;
  v20 = ((((v18 ^ v16) & 0x7FFFFFFF) * v7) ^ ((((v18 ^ v16) & 0x7FFFFFFF) * v7) >> 16)) * v7;
  *v16 = *(v5 + (v19 >> 24)) ^ v17 ^ *((v19 >> 24) + v9 + 1) ^ *(v14 + (v19 >> 24)) ^ *(v5 + (v20 >> 24)) ^ *((v20 >> 24) + v9 + 1) ^ *(v14 + (v20 >> 24)) ^ v19 ^ v20 ^ (-63 * BYTE3(v19)) ^ (-63 * BYTE3(v20));
  return (*(v13 + 8 * (((a1 != 1) * v11) ^ v1)))();
}

uint64_t sub_1006D9B30(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v8 = (a5 | ((a5 < 0x4D39BA71) << 32)) + 0x30CAEDC57F5998A6;
  v9 = v8 + a6 + ((a6 < a7) << 32);
  v10 = v9 - 0x30CAEDC5DF945978;
  STACK[0x16A0] = v9 - 0x30CAEDC5DF945978;
  v11 = v9 - 0x30CAEDC5569F326BLL;
  v12 = ((((a2 - 2003936128) & 0x7771BA3Fu) + 1650505251) ^ 0xCF35123ADE0103A4) + v8;
  v13 = v10 > 0xFFFFFFFF770AD8F2;
  v14 = v11 > v12;
  if (v13 == v12 < 0x88F5270D)
  {
    v13 = v14;
  }

  return (*(v7 + 8 * ((41604 * v13) ^ a2)))(a1, STACK[0x408]);
}

uint64_t sub_1006D9D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = ~v5 + v3;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = v8 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v5 + a1 + v6 == v4) * v7) ^ v2)))();
}

uint64_t sub_1006D9E84@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x12D4]) = v3;
  LODWORD(STACK[0x1B88]) = v2;
  return (*(v5 + 8 * (((a1 == (((v4 ^ 0x6260D090) * v1) ^ 0xE9D5D8C5)) * (((v4 - 1200886630) & 0xE5337FF7) + 26480)) ^ (v4 - 1650503806))))();
}

uint64_t sub_1006D9FD8()
{
  v3 = LODWORD(STACK[0x5D4])++;
  *(STACK[0x318] - 775311879) = v3 + 1;
  v4 = *(v1 - 586084794);
  v5 = 1603510583 * STACK[0x220];
  *(v2 - 152) = v5 ^ 0x13FF;
  *(v2 - 136) = v4 ^ v5;
  *(v2 - 112) = v0 - v5 - 1781259153;
  *(v2 - 144) = (v0 + 364105848) ^ v5;
  *(v2 - 124) = v0 + 364105848 - v5 - 191;
  *(v2 - 120) = v5;
  *(v2 - 128) = (v0 + 364109462) ^ v5;
  v6 = STACK[0x430];
  v7 = (*(STACK[0x430] + 8 * (v0 ^ 0x9C79)))(v2 - 152);
  return (*(v6 + 8 * *(v2 - 116)))(v7);
}

uint64_t sub_1006DA0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(&STACK[0x258] + v3) + (((*(a3 + (v3 & 0xF)) ^ 0x44) - 68) ^ ((*(a3 + (v3 & 0xF)) ^ 0x3F) - 63) ^ ((*(a3 + (v3 & 0xF)) ^ 0x9A) + 102)) + 36;
  v6 = v5 & 0x53 ^ 0xDB;
  v7 = v5 ^ 0x3C;
  *(a3 + (v3 & 0xF)) = v5 ^ (2 * (v7 & (2 * (v7 & (2 * (v7 & (2 * (v7 & (2 * (v7 & (2 * (((2 * v5) & 0x7A ^ 0x6E) & v7 ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ 0xB2;
  return (*(STACK[0x228] + 8 * (v4 | (16 * (v3 != 39)))))();
}

uint64_t sub_1006DA1AC@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0xD37A;
  v2 = STACK[0x6998];
  v3 = 906386353 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x2D96DB38) - 1382622402) ^ 0x9C97161A);
  STACK[0x10ED8] = &STACK[0x5B88];
  STACK[0x10EE8] = v2;
  STACK[0x10EF0] = &STACK[0x327C];
  LODWORD(STACK[0x10EE0]) = v3 - 5880 + v1;
  LODWORD(STACK[0x10EE4]) = v3 ^ 0xF1D0BA31;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF9B7)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (((LODWORD(STACK[0x10EF8]) == ((v1 + 1898150041) & 0x8EDCDFFF ^ 0xE9D54C2A)) * (((v1 - 9656) | 0x204) + 32162)) ^ v1)))(v5);
}

uint64_t sub_1006DA618()
{
  v3 = *(STACK[0xCD8] + 304);
  v4 = LODWORD(STACK[0x1E70]) ^ 0x7EFF7FDB;
  v5 = (LODWORD(STACK[0x1E70]) << LODWORD(STACK[0x540])) & 0xFDFEFFB6;
  v6 = 353670337 * ((v0 - 2 * (v0 & 0x33EB10B8) + 871043261) ^ 0x87CAE880);
  *(v2 - 240) = STACK[0xB68];
  *(v2 - 232) = v3;
  *(v2 - 248) = 48077 - v6;
  *(v2 - 256) = v4 - v6 + v5 - 707155008;
  v7 = (*(v1 + 8 * LODWORD(STACK[0x53C])))(v2 - 256);
  return (*(v1 + 188968))(v7);
}

uint64_t sub_1006DA6FC()
{
  v1 = STACK[0x358];
  v2 = (*(STACK[0x358] + 8 * (v0 + 10804)))(1028);
  STACK[0x370] = v2;
  return (*(v1 + 8 * (((((v0 - 33) ^ (v2 == 0)) & 1) * ((v0 ^ 0xF29F) - 21005)) | v0)))();
}

uint64_t sub_1006DA868()
{
  v3 = ((20663 * (v0 ^ 0x5304u)) ^ 0xFFFFFFFFFFFF5E91) + v1;
  v5 = v3 <= (24 * (v0 ^ 0x522Cu)) - 7137 && ((v1 - 1) & 0xFu) >= (v3 & 0xF);
  return (*(v2 + 8 * (((4 * v5) | (16 * v5)) ^ v0)))();
}

uint64_t sub_1006DA8F8@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v17 = v3 - 1;
  v18 = (v9 & (2 * v17)) + ((v2 + v12) ^ v17 ^ v13);
  v19 = (v4 + v18);
  v20 = (v5 + v18);
  v21 = *(*v6 + (*v15 & v11));
  v22 = ((((v19 ^ v21) & 0x7FFFFFFF) * a1) ^ ((((v19 ^ v21) & 0x7FFFFFFF) * a1) >> 16)) * a1;
  v23 = ((((v20 ^ v21) & 0x7FFFFFFF) * a1) ^ ((((v20 ^ v21) & 0x7FFFFFFF) * a1) >> 16)) * a1;
  *v20 = *(a2 + (v22 >> 24)) ^ *v19 ^ *(v7 + (v22 >> 24) + 1) ^ *(v16 + (v22 >> 24) + 1) ^ *(a2 + (v23 >> 24)) ^ *(STACK[0x7C8] + (v23 >> 24) + 1) ^ *(v16 + (v23 >> 24) + 1) ^ v22 ^ v23 ^ (BYTE3(v22) * v8) ^ (BYTE3(v23) * v8);
  return (*(v14 + 8 * (((v17 == 0) * v10) ^ v2)))();
}

uint64_t sub_1006DA9D8@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 256) = (v2 - 1650505768) ^ (155453101 * ((v3 - 2 * (v3 & 0x2CF4EB50) - 1393235120) ^ 0x4AD2F09F));
  *(v5 - 248) = a1;
  v6 = (*(v4 + 8 * (v2 - 1650460022)))(v5 - 256);
  *(v1 + 280) = 0;
  return (*(v4 + 8 * (v2 - 1650476131)))(v6);
}

uint64_t sub_1006DAA60()
{
  v3 = STACK[0x1BD0];
  STACK[0x1B78] = STACK[0x1BD0];
  v4 = 634647737 * ((((v2 - 256) | 0xD87F14A) - ((v2 - 256) | 0xF2780EB5) - 227012939) ^ 0x6011DEB6);
  *(v2 - 248) = v3;
  *(v2 - 240) = v0 - v4 + 18713;
  *(v2 - 256) = v4 - 1431125376;
  v5 = (*(v1 + 8 * (v0 + 49699)))(v2 - 256);
  LODWORD(STACK[0x1004]) = (((STACK[0x18F8] & 0xFFFFFFFB ^ 0xC9F8B95A) + 574023979) ^ ((STACK[0x18F8] & 0xFFFFFFFB ^ 0xD35738A) - 419748869) ^ ((STACK[0x18F8] & 0xFFFFFFFB ^ 0x2D180DC5) - 959029834)) + (v0 ^ 0x1AE0883A);
  STACK[0x18E8] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x38FD ^ (31539 * ((v0 ^ 0xF2D6A37u) < 0xFB926384)))))(v5);
}

uint64_t sub_1006DABB4@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13.n128_u64[0] = (v11 + 13) & 0xF;
  v13.n128_u64[1] = (v11 + 12) & 0xF;
  v14.n128_u64[0] = (v11 + 11) & 0xF;
  v14.n128_u64[1] = (v11 + 10) & 0xF;
  v15.n128_u64[0] = (v11 + 9) & 0xF;
  v15.n128_u64[1] = v11 & 0xF ^ 8;
  v18.val[0].i64[0] = (v11 + 7) & 0xF;
  v18.val[0].i64[1] = (v11 + 6) & 0xF;
  v18.val[1].i64[0] = (v11 + 5) & 0xF;
  v18.val[1].i64[1] = (v11 + 4) & 0xF;
  v18.val[2].i64[0] = (v11 + 3) & 0xF;
  v18.val[2].i64[1] = (v11 + 2) & 0xF;
  v18.val[3].i64[0] = (v11 + 1) & 0xF;
  v18.val[3].i64[1] = v11 & 0xF;
  v16.n128_u64[0] = 0xC7C7C7C7C7C7C7C7;
  v16.n128_u64[1] = 0xC7C7C7C7C7C7C7C7;
  return (*(a11 + 8 * v12))(v12 ^ 0x9AD6u, v11 + a1 - 16, v11 - 1, (v11 & 0x10) - 16, -36847, 48768, a2, v13, v14, v15, xmmword_100BC76B0, vqtbl4q_s8(v18, xmmword_100BC76B0), v16);
}

uint64_t sub_1006DAE6C()
{
  v4 = 4 * (63 - v1);
  v5 = *(v3 + v4 - 12);
  v6 = *(v3 + v4 - 28);
  v7 = v0 + v4;
  *(v7 + 4) = v5;
  *(v7 - 12) = v6;
  return (*(STACK[0xF18] + 8 * ((2223 * (v1 - 50249 + ((v2 - 41737) | 0xC411) == 64)) ^ v2)))();
}

uint64_t sub_1006DAED0()
{
  LODWORD(STACK[0x21C8]) = STACK[0x20D4];
  v1 = *(STACK[0xE88] + 32) + 545343294;
  v2 = v1 & 0xDF7EB8BD ^ 0x13322324 ^ (v1 ^ 0xDE7CBAB9) & (2 * (v1 & 0xDF7EB8BD));
  v3 = (2 * (v1 ^ 0xCC4C9B99)) & 0x13322324 ^ 0x11122124 ^ ((2 * (v1 ^ 0xCC4C9B99)) ^ 0x26644648) & (v1 ^ 0xCC4C9B99);
  v4 = (4 * v2) & 0x13322324 ^ v2 ^ ((4 * v2) ^ 0x4CC88C90) & v3;
  v5 = (4 * v3) & 0x13322320 ^ 0x13322324 ^ ((4 * v3) ^ 0x4CC88C90) & v3;
  v6 = ((16 * v4) ^ 0x33223240) & v5;
  v7 = (16 * v5) & 0x13322300 ^ 0x100124 ^ ((16 * v5) ^ 0x33223240) & v5;
  v8 = (16 * v4) & 0x13322320 ^ v4 ^ v6 ^ (((16 * v4) & 0x13322320 ^ v4 ^ v6) << 8) & 0x13322300 ^ ((((16 * v4) & 0x13322320 ^ v4 ^ v6) << 8) ^ 0x10012400) & v7 ^ 0x3220200;
  LODWORD(STACK[0x21CC]) = v1 ^ (2 * ((v8 << 16) & 0x13320000 ^ v8 ^ ((v8 << 16) ^ 0x23240000) & ((v7 << 8) & 0x13320000 ^ 0x1100000 ^ ((v7 << 8) ^ 0x32230000) & v7))) ^ 0x56079269;
  return (*(v0 + 40672))();
}

uint64_t sub_1006DB0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = v39 + 23;
  *v40 = (v42 ^ 0x981390C2FED8F7DLL) + a39 - ((2 * a39) & 0x130272185FDB248CLL);
  return (*(v41 + 8 * v42))();
}

uint64_t sub_1006DB144()
{
  v1 = STACK[0xF10] - 14390;
  *(STACK[0x3DD8] + LODWORD(STACK[0x33C4])) = (((STACK[0xF10] - 57) | 0x78) ^ 0x44) + LOBYTE(STACK[0x1213]) * v0 - 99 * (-79 * v0 - 82 * LOBYTE(STACK[0x1213]));
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1006DB1E4()
{
  v1 = STACK[0xF18];
  STACK[0x3988] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 3474) | 0xC486) - 43901) ^ v0)))();
}

uint64_t sub_1006DB230()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 14605) ^ (17902189 * ((~(&STACK[0x10000] + 3800) & 0x7DD53A93 | (&STACK[0x10000] + 3800) & 0x822AC568) ^ 0xF39A2C83));
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x40E2)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((53205 * ((v0 + 1127661397) > 0x52FE7651)) ^ (v0 - 17904))))(4294925764, 4294939698, 29638, 4294949607, 1243838960, 3051146239, 35632, 2523);
}

uint64_t sub_1006DB3B4()
{
  v3 = ((((&STACK[0x10000] + 3800) | 0x6C8EFF3D) + (~(&STACK[0x10000] + 3800) | 0x937100C2)) ^ 0x5D8F3218) * v2;
  LODWORD(STACK[0x10EE4]) = v3 ^ 0xF1D0BA30;
  LODWORD(STACK[0x10EE0]) = v3 - 28561 + v0;
  STACK[0x10ED8] = &STACK[0x6868];
  STACK[0x10EE8] = v1;
  STACK[0x10EF0] = &STACK[0x23B8];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 16346)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v0 - 27259)))(v5);
}

uint64_t sub_1006DB4CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, unsigned int a8)
{
  v8 = (((*a7 ^ a5) + a6) ^ ((*a7 ^ a2) + a3) ^ ((*a7 ^ (a8 + 19482) ^ 0x4123F918A1004E7ALL) + a4)) + (a8 ^ 0x981390C3B7A5F57);
  v9 = (a1 < 0xB8C9113) ^ (v8 < 0xB8C9113);
  v10 = v8 < a1;
  if (v9)
  {
    v11 = a1 < 0xB8C9113;
  }

  else
  {
    v11 = v10;
  }

  return (*(STACK[0xF18] + 8 * ((58715 * v11) ^ (a8 + 6))))();
}

uint64_t sub_1006DB5E8@<X0>(int a1@<W8>)
{
  v7 = STACK[0xF18];
  STACK[0x75C8] = *(STACK[0xF18] + 8 * a1);
  STACK[0x9450] = v6;
  STACK[0x2258] = v2;
  STACK[0xB2E0] = v3 + 36;
  STACK[0xB2E8] = v5;
  STACK[0xB2F0] = v4;
  STACK[0x1530] = 0;
  LODWORD(STACK[0x7174]) = -371865839;
  return (*(v7 + 8 * (((v6 == 0) * ((v1 ^ 0x269A) - 35641)) | v1)))();
}

uint64_t sub_1006DB934()
{
  v2 = 260 * (v1 ^ 0x9D3A);
  v3 = v0 >= ((v2 + 3149) ^ 0x5386u) - 30231;
  return (*(STACK[0xF18] + 8 * ((8 * v3) | (16 * v3) | v2)))();
}

uint64_t sub_1006DBABC@<X0>(__int16 a1@<W8>)
{
  v2 = *(STACK[0x8B28] - 0x427A3CD3E8C5DA2FLL);
  v3 = 139493411 * ((((&STACK[0x10000] + 3800) | 0xD926123F) - ((&STACK[0x10000] + 3800) & 0xD9261238)) ^ 0xD50BF37A);
  LODWORD(STACK[0x10EF8]) = v3 + LODWORD(STACK[0x23CC]) * ((508 * (v1 ^ 0x6A1C)) ^ 0x73F61EFB) + 777074195;
  STACK[0x10EF0] = v2;
  LODWORD(STACK[0x10EE8]) = v3 - 231254985;
  STACK[0x10EE0] = &STACK[0x3BC8];
  LODWORD(STACK[0x10ED8]) = v1 - v3 + 18163;
  LOWORD(STACK[0x10EFC]) = -32733 * ((((&STACK[0x10000] + 3800) | 0x123F) - ((&STACK[0x10000] + 3800) & 0x1238)) ^ 0xF37A) + a1 - 1280;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xA156)))(&STACK[0x10ED8]);
  v6 = STACK[0x10F00];
  LODWORD(STACK[0x94A8]) = STACK[0x10F00];
  return (*(v4 + 8 * ((55327 * (v6 == ((v1 - 7108) ^ 0x5944D2DB))) ^ v1)))(v5);
}

uint64_t sub_1006DBC30()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 39510)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006DBCE8@<X0>(int a1@<W8>)
{
  v4 = (v2 - 1866276958);
  v5 = (v3 + 4 * v4);
  v6 = *(*STACK[0x278] + (*STACK[0x270] & 0xFFFFFFFFCD3E32C0)) + v5;
  *(STACK[0x2A8] + 4 * v4) ^= (182338128 * v5) ^ *v5 ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v6 - 851561791) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((((a1 - 1172988993) & 0x45EA7D9Du) - 851581650 + v6) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 0xC7E07091;
  return (*(v1 + 8 * a1))();
}

uint64_t sub_1006DBE40()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 28813)))(v2);
}

void sub_1006DBE6C(uint64_t a1)
{
  v1 = *(a1 + 24) + 193924789 * ((2 * (a1 & 0x280A58C6) - a1 + 1475716921) ^ 0xE14E955F);
  v2 = *(a1 + 16);
  v5 = *(&off_1010A0B50 + (v1 ^ 0x7FD3)) - v2 - 684063723 > 0xF && *(&off_1010A0B50 + v1 - 26203) - v2 - 1694463243 > 0xF && *(&off_1010A0B50 + (v1 ^ 0x7DEC)) - v2 - 407452058 > 0xF;
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1006DE474(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 8 * a2;
  v8 = ((LODWORD(STACK[0xE30]) ^ (8 * a2) ^ 0x790FDBDA) + 166730410) ^ (((8 * a2) ^ 0x9732EA2B) - 405960602) ^ (((8 * a2) ^ 0xEA5DB02A) - 1700605339);
  v9 = (16 * a2) & 0x300;
  v10 = STACK[0xED0];
  v11 = *(STACK[0xED0] + 4 * ((2899 * (((a2 ^ 0xA78F32FB) + 419684062) ^ ((a2 ^ 0x4CE69BE5) - 227903548) ^ ((a2 ^ 0x2BE5AD44) - 1788264093)) + 491111516) % 0x26C4));
  v12 = (((8 * a2) ^ 0xDC52714F) + 1496322081) ^ (((8 * a2) ^ 0x1151A94B) - 1808545755) ^ (((8 * a2) ^ 0xC963FAE3) + 1275173773);
  v13 = ((((8 * a2) ^ 0xD5D76656) - 921717054) ^ (((8 * a2) ^ 0xA05A11D0) - 1132281528) ^ (((8 * a2) ^ 0x71ED555F) + 1832224201)) * v5 - 501326814;
  LODWORD(STACK[0xE40]) = ((v9 + 733706003) ^ (v9 - 197888245) ^ ((v9 ^ 0xADE3D18E) + 1725409133)) + ((((8 * a2) ^ 0x436EC2D6) + 2043582421) ^ (((8 * a2) ^ 0x4193BA91) + 2067001236) ^ (((8 * a2) ^ 0x69D5B18) + 1010634267));
  v14 = ((((8 * a2) ^ 0x21EC4CEF) + 1157497680) ^ (((8 * a2) ^ 0xBF66BBFC) - 629869475) ^ (((8 * a2) ^ 0x9AEAD5F1) - 484782)) * v5 + 291724565;
  v15 = (707 * (((v11 ^ 0x3123595A) - 1848904862) ^ ((v11 ^ 0x6BFF6C8F) - 887634251) ^ ((v11 ^ 0x8D170D3B) + 771729153)) - 121447298) % 0x300;
  v16 = (((8 * a2) ^ 0xBDCEF1E9) - 672760827) ^ (((8 * a2) ^ 0xEDF135BD) - 2015774639) ^ (((8 * a2) ^ 0x545FE6B5) + 1048013657);
  v17 = (((8 * a2) ^ 0xD24D1E65) - 1587522177) ^ (((8 * a2) ^ 0x27C028A4) + 1424843712) ^ (((8 * a2) ^ 0xF1ED1422) - 2101321926);
  v18 = (((a2 ^ 0x62F547C8) - 1660241864) ^ ((a2 ^ 0xE0D26143) + 523083453) ^ ((a2 ^ 0x42AB22D8) - 1118511832)) - 413910997;
  v19 = (v18 ^ 0x9CB78B29) & (2 * (v18 & 0xD937CC29)) ^ v18 & 0xD937CC29;
  v20 = ((2 * (v18 ^ 0x3C90933B)) ^ 0xCB4EBE24) & (v18 ^ 0x3C90933B) ^ (2 * (v18 ^ 0x3C90933B)) & 0xE5A75F12;
  v21 = (v20 ^ 0xC1061000) & (4 * v19) ^ v19;
  v22 = v14 - ((((v14 >> 5) * v6) >> 32) >> 1) * v4;
  v23 = ((4 * (v20 ^ 0x24A14112)) ^ 0x969D7C48) & (v20 ^ 0x24A14112) ^ (4 * (v20 ^ 0x24A14112)) & 0xE5A75F10;
  v24 = v23 ^ 0x61220312;
  v25 = v8 * v5 - 330871457 - (((((v8 * v5 - 330871457) >> 5) * v6) >> 32) >> 1) * v4;
  v26 = *(STACK[0xEC0] + 4 * v15);
  v27 = (v23 ^ 0x84855C00) & (16 * v21) ^ v21;
  v28 = (((v7 ^ 0x5D08228F) - 1226936023) ^ ((v7 ^ 0x4029FDC2) - 1409307034) ^ ((v7 ^ 0x1941FD95) - 224940493)) * v5 + 271652153;
  v29 = v28 - ((((v28 >> 5) * v6) >> 32) >> 1) * v4;
  v30 = ((16 * v24) ^ 0x5A75F120) & v24 ^ (16 * v24) & 0xE5A75F00;
  v31 = (2899 * (((v26 ^ 0x9812F511) + 906143881) ^ ((v26 ^ 0x93088C4F) + 1025036759) ^ ((v26 ^ 0x1A47F0B3) - 1269322453)) - 1583147247) % 0x26C4;
  v32 = v27 ^ 0xE5A75F12;
  v33 = v30 ^ 0xA5820E12;
  v34 = (((v7 ^ 0xF50B8744) - 1860835335) ^ ((v7 ^ 0x6345CE7A) + 123449031) ^ ((v7 ^ 0x922E6BDB) - 164623512)) * v5 + 211253238;
  v35 = v12 * v5 + 992823679 - (((((v12 * v5 + 992823679) >> 5) * v6) >> 32) >> 1) * v4;
  v36 = (v30 ^ 0x40255100) & (v27 << 8);
  v37 = (((v7 ^ 0x5449FC1C) + 2027571388) ^ ((v7 ^ 0xA75F4694) - 1949502924) ^ ((v7 ^ 0xF7769853) - 605737739)) * v5 + 534439908;
  v38 = v37 - ((((v37 >> 5) * v6) >> 32) >> 1) * v4;
  v39 = v17 * v5 - 323908977 - (((((v17 * v5 - 323908977) >> 5) * v6) >> 32) >> 1) * v4;
  v40 = v32 ^ v36;
  v41 = (((v7 ^ 0x9C0419EE) - 1472349809) ^ ((v7 ^ 0x2CB0760F) + 411686512) ^ ((v7 ^ 0xB4D44D3C) - 2131890851)) * v5 + 2089551979;
  v42 = v41 - ((((v41 >> 5) * v6) >> 32) >> 1) * v4;
  v43 = (((v7 ^ 0xEFA4636A) - 1812280772) ^ ((v7 ^ 0x576E0767) + 724610615) ^ ((v7 ^ 0xBCAA46D1) - 1057689727)) * v5 + 23134747;
  v44 = v43 - ((((v43 >> 5) * v6) >> 32) >> 1) * v4;
  v45 = ((v7 ^ 0xC577D8A6) - 1615467536) ^ ((v7 ^ 0x6C17E64F) + 919983367) ^ ((v7 ^ 0xAD001C0D) - 138268859);
  v46 = (((v7 ^ 0x82B672FA) - 1428582446) ^ ((v7 ^ 0x2100ADE8) + 158290116) ^ ((v7 ^ 0xA7D6FDCD) - 1883701017)) * v5 - 518048724;
  v47 = v46 - ((((v46 >> 5) * v6) >> 32) >> 1) * v4;
  v48 = ((v40 << 16) ^ 0x5F120000) & ((v33 << 8) & 0x65A70000 ^ 0x40A00000 ^ ((v33 << 8) ^ 0x275F0000) & v33);
  v49 = (((v7 ^ 0xCE001B3D) + 1495974875) ^ ((v7 ^ 0xE2783A10) + 1968366328) ^ ((v7 ^ 0x281803CD) - 1087186133)) * v5 - 1116984264;
  v50 = (v40 << 16) & 0x65A70000 ^ v40;
  v51 = v49 - ((((v49 >> 5) * v6) >> 32) >> 1) * v4;
  v52 = ((v7 ^ 0x1BFE9C98) + 386842046) ^ ((v7 ^ 0xCC504C76) - 1063228076) ^ ((v7 ^ 0xD3CEF3B5) - 549530991);
  v53 = *(v10 + 4 * v31);
  v54 = *(a4 + 8 * (v13 - ((((v13 >> 5) * v6) >> 32) >> 1) * v4));
  v55 = *(a4 + 8 * v29);
  v56 = *(a4 + 8 * v38);
  v57 = *(a4 + 8 * (v34 - ((((v34 >> 5) * v6) >> 32) >> 1) * v4));
  v58 = (STACK[0xEB0] + (v53 ^ 0xC6A71E2));
  v59 = v18 ^ (2 * (v50 ^ v48));
  v60 = v16 * v5 + 107332891 - (((((v16 * v5 + 107332891) >> 5) * v6) >> 32) >> 1) * v4;
  v61 = v45 * v5 - 1013863870 - (((((v45 * v5 - 1013863870) >> 5) * v6) >> 32) >> 1) * v4;
  v62 = 1864610357 * ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) >> 16));
  v63 = v52 + (((v9 ^ 0xD4335EA1) - 199806515) ^ (v9 + 926322578) ^ ((v9 ^ 0x7F9E0BD7) + 1606051003));
  v64 = *(a4 + 8 * v60);
  v65 = v63 * v5 + 1771977275 - (((((v63 * v5 + 1771977275) >> 5) * v6) >> 32) >> 1) * v4;
  v66 = v62 ^ *v58 ^ *(STACK[0xE90] + (v62 >> 24)) ^ *(STACK[0xE80] + (v62 >> 24)) ^ (-107 * ((1864610357 * ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *((v62 >> 24) + STACK[0xE70] + 1);
  v67 = *(a4 + 8 * v35) ^ 0xD90E9D4376BCA941;
  if ((v66 & 1) == 0)
  {
    v67 = 0x9857B18CF647505ELL;
  }

  v68 = *(a4 + 8 * v42);
  v69 = *(a4 + 8 * v47) ^ 0x34BE24968252D3A6;
  v70 = v54 ^ 0xDE127FF4A2006874;
  if ((((v62 ^ *v58 ^ *(STACK[0xE90] + (v62 >> 24)) ^ *(STACK[0xE80] + (v62 >> 24))) ^ ((-107 * ((1864610357 * ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *((v62 >> 24) + STACK[0xE70] + 1))) & 1) == 0)
  {
    v70 = 0x8C55586F96FAAA35;
  }

  v71 = *(a4 + 8 * v65);
  v72 = *(a4 + 8 * v61);
  if ((((v62 ^ *v58 ^ *(STACK[0xE90] + (v62 >> 24)) ^ *(STACK[0xE80] + (v62 >> 24))) ^ ((-107 * ((1864610357 * ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *((v62 >> 24) + STACK[0xE70] + 1))) & 0x40) == 0)
  {
    v69 = 0x66F9030DB6A811E7;
  }

  v73 = v64 ^ 0xF4124D9D77B75435;
  if ((((v62 ^ *v58 ^ *(STACK[0xE90] + (v62 >> 24)) ^ *(STACK[0xE80] + (v62 >> 24))) ^ ((-107 * ((1864610357 * ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *((v62 >> 24) + STACK[0xE70] + 1))) & 0x40) != 0)
  {
    v74 = v73;
  }

  else
  {
    v74 = 0xB54B6152F74CAD2ALL;
  }

  v75 = (((v66 ^ 0xB) - 68) ^ ((v66 ^ 0xB6) + 7) ^ ((v66 ^ 0xBD) + 14)) + 79;
  v76 = 0xAC01EF4BA38EB4CALL;
  if ((((v62 ^ *v58 ^ *(STACK[0xE90] + (v62 >> 24)) ^ *(STACK[0xE80] + (v62 >> 24))) ^ ((-107 * ((1864610357 * ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v58 ^ LODWORD(STACK[0xD90])) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ *((v62 >> 24) + STACK[0xE70] + 1))) & 2) != 0)
  {
    v76 = v55 ^ 0xFE46C8D09774768BLL;
  }

  v77 = *(a4 + 8 * v25) ^ 0x344CBEFBE3C26B3ELL;
  v78 = v57 ^ 0x770D195CC726FE70;
  v79 = v68 ^ 0xFFFBEBFEE3CAD43FLL;
  if ((v66 & 2) == 0)
  {
    v77 = 0x7515923463399221;
  }

  if ((v66 & 4) == 0)
  {
    v78 = 0x3654359347DD076FLL;
  }

  v80 = v56 ^ 0xD302E315ED889E3CLL;
  if ((v66 & 4) == 0)
  {
    v80 = 0x8145C48ED9725C7DLL;
  }

  if ((v66 & 0x10) == 0)
  {
    v79 = 0xADBCCC65D730167ELL;
  }

  v81 = *(a4 + 8 * v39) ^ 0x8CB0880314D3A815;
  if ((v66 & 0x10) == 0)
  {
    v81 = 0xCDE9A4CC9428510ALL;
  }

  v82 = v71 ^ 0x967492DBF2CA6EA9;
  if ((v66 & 8) == 0)
  {
    v82 = 0xC433B540C630ACE8;
  }

  v83 = v72 ^ 0xF093858A37E9A74DLL;
  if ((v66 & 8) == 0)
  {
    v83 = 0xB1CAA945B7125E52;
  }

  v84 = v67 ^ STACK[0xDC0] ^ v81 ^ v74;
  v85 = v78 ^ v77;
  v86 = *(a4 + 8 * (LODWORD(STACK[0xE40]) * v5 - 3166585 - (((((LODWORD(STACK[0xE40]) * v5 - 3166585) >> 5) * v6) >> 32) >> 1) * v4)) ^ 0x6B81B7339A3DE91;
  if (v75 >= 0)
  {
    v86 = 0x54FF3CE80D591CD0;
  }

  v87 = *(a4 + 8 * v51) ^ 0x788737313E587E94;
  if (v75 >= 0)
  {
    v87 = 0x39DE1BFEBEA3878BLL;
  }

  v88 = *(a4 + 8 * v22) ^ 0x6AF94DC1388D19F6;
  if ((v66 & 0x20) == 0)
  {
    v88 = 0x2BA0610EB876E0E9;
  }

  v89 = v70 ^ STACK[0xE60] ^ v76 ^ v69 ^ v80 ^ v79 ^ v82;
  STACK[0xDC0] = v84 ^ v85 ^ v88 ^ v83 ^ v87;
  v90 = *(a4 + 8 * v44) ^ 0xAD92733AC0D6019ALL;
  if ((v66 & 0x20) == 0)
  {
    v90 = 0xFFD554A1F42CC3DBLL;
  }

  v91 = v89 ^ v90 ^ v86;
  v92 = *(STACK[0xF18] + 8 * ((219 * ((((v59 ^ 0x6BD8424D) - 858338323) ^ ((v59 ^ 0xAEE411A2) + 166369284) ^ ((v59 ^ 0x5D4121E2) - 95442876)) - 1064565677 < 0x30)) ^ LODWORD(STACK[0xDA0])));
  STACK[0xE60] = v91 ^ 0x54D61CBB2DB36F8;
  return v92();
}

uint64_t sub_1006DF360@<X0>(int a1@<W8>)
{
  if (v3)
  {
    v2 = (v3 + 24);
  }

  *v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  *STACK[0x5E30] += ((a1 + 275010532) & 0xEF9BFFE7) - 28776;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1006DF3C4()
{
  v0 = STACK[0xF10] - 29747;
  v1 = STACK[0x5670];
  STACK[0x8FE8] = *(STACK[0x75F8] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1986359923;
  LODWORD(STACK[0x704C]) = -2116087623;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006DF710@<X0>(int a1@<W8>)
{
  LOBYTE(STACK[0x643F]) = 1;
  LODWORD(STACK[0x1284]) = v1;
  LODWORD(STACK[0x12E8]) = v1;
  return (*(STACK[0xF18] + 8 * ((22446 * (a1 != 845305901)) ^ (a1 + 256433277))))();
}

uint64_t sub_1006DF7C4()
{
  v2 = STACK[0x6A78];
  v3 = LODWORD(STACK[0x34A0]) ^ 0x17A9D2D2;
  *(*(v2 + 112) + 72 * v3 + 32) = v1;
  return (*(STACK[0xF18] + 8 * (((*(*(v2 + 112) + 72 * v3 + 32) != 0) * (((v0 - 1351514490) & 0x508ECB7B) - 35516)) ^ v0)))();
}

uint64_t sub_1006DF910(uint64_t a1, _DWORD *a2)
{
  v9 = (v2 + v4) & v5;
  v11 = *a2 == v7 && v3 == ((v9 + v6) | v8) + 315830529;
  return (*(STACK[0xF18] + 8 * ((2 * v11) | (8 * v11) | v9)))();
}

uint64_t sub_1006DF958(__n128 a1)
{
  a1.n128_u16[0] = 24415;
  a1.n128_u8[2] = 95;
  a1.n128_u8[3] = 95;
  a1.n128_u8[4] = 95;
  a1.n128_u8[5] = 95;
  a1.n128_u8[6] = 95;
  a1.n128_u8[7] = 95;
  return (*(v2 + 8 * v1))((v1 - 8477) ^ 0x1F87, 19, a1);
}

uint64_t sub_1006DF9DC()
{
  STACK[0x29F8] = 0x427A3CD3E8C5DA2FLL;
  *STACK[0x32D8] = *(STACK[0x2140] - 0x10A99C80114D144BLL);
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x775 ^ (v0 + 3966))))();
}

uint64_t sub_1006DFA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a5 - 20186;
  v7 = (*(v5 + 8 * (a5 ^ 0x7FEB)))(257);
  v8 = STACK[0x358];
  STACK[0x388] = v7;
  return (*(v8 + 8 * ((11 * (v7 == 0)) ^ v6)))();
}

uint64_t sub_1006DFAB0()
{
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v3.n128_u64[0] = 0x5F0000005F000000;
  v3.n128_u64[1] = 0x5F0000005F000000;
  return (*(v0 + 8 * (v1 + 27565)))(vdupq_n_s32(0x69D5C71Bu), vdupq_n_s32(0xE9D5C711), v2, v3);
}

void sub_1006DFD28(uint64_t a1)
{
  v1 = *(a1 + 24) - 1603510583 * ((((2 * a1) | 0x60024440) - a1 + 1342103008) ^ 0x27DA108B);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1006DFE1C()
{
  v2 = v0 ^ 0x6300;
  v3 = v0 ^ 0xB9E7;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF844)))((v1 + (v0 ^ 0x6300) + 16885));
  STACK[0x1E98] = v5;
  return (*(v4 + 8 * (((v5 != 0) * (v3 - 34663)) ^ v2)))();
}

uint64_t sub_1006DFE98@<X0>(int a1@<W8>)
{
  v2 = LODWORD(STACK[0x6134]) + 758852934;
  v3 = (v2 < 0x93E5C6FA) ^ (LODWORD(STACK[0x72D0]) > ((v1 + 1781847287) & 0x95CABDBD ^ 0x6C1A1D38));
  v4 = v2 < LODWORD(STACK[0x72D0]) - 1813657862;
  if (v3)
  {
    v4 = LODWORD(STACK[0x72D0]) > ((v1 + 1781847287) & 0x95CABDBD ^ 0x6C1A1D38);
  }

  if (a1 != -371865839)
  {
    v4 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((v4 * ((v1 + 1781847287) ^ 0x6A356663)) ^ v1)))();
}

uint64_t sub_1006DFF54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = ((2 * v10) ^ a4) & v10 ^ (2 * v10) & a5;
  v13 = v12 ^ a6;
  v14 = v12 & (4 * ((a3 ^ (2 * v10) & a2) & v10)) ^ (a3 ^ (2 * v10) & a2) & v10;
  *(v8 + a8 - 1) = (v10 ^ (2 * ((a7 ^ (4 * v13)) & v13 & (16 * v14) ^ v14)) ^ 0xBF) * (v10 + 22);
  return (*(v11 + 8 * (v9 ^ (8 * (a8 - 1 > a1)))))(a1, a2, a3, a4, a5, a6, a7, a8 - 1);
}

uint64_t sub_1006E0038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x278C]) = v7;
  v8 = STACK[0xF18];
  STACK[0x3F60] = *(STACK[0xF18] + 8 * v6);
  return (*(v8 + 8 * (((v6 ^ 0x8BAF) - 10202) ^ v6)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1006E00E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int64_t a52)
{
  STACK[0x388] = 0;
  v54 = v52 + 7244;
  v55 = ((v52 + 559365562) & 0xDEA8FFFD ^ 0x80000000B2E6F466) - v53;
  STACK[0x3D0] = &STACK[0x47C];
  v57 = a52 > 0x80000000B2E6A29ELL || a52 < v55;
  return (*(STACK[0x430] + 8 * ((32722 * v57) ^ v54)))();
}

uint64_t sub_1006E07E8()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 - 757568468)))(STACK[0x5988]);
  return (*(v1 + 8 * ((15294 * (v0 < 0x6E2D3334)) ^ (v0 - 757617192))))(v2);
}

uint64_t sub_1006E089C()
{
  v2 = STACK[0xF18];
  v3 = v0;
  v4 = (*(STACK[0xF18] + 8 * (v1 + 37328)))((((v1 + 28778) | 0x1003) ^ 0x890926C9) + LODWORD(STACK[0x8A68]));
  return (*(v2 + 8 * ((42849 * (v3 == -371865839)) ^ v1)))(v4);
}

uint64_t sub_1006E0908@<X0>(int a1@<W8>)
{
  if (v1 - a1 == -631152840)
  {
    v4 = 371891400;
  }

  else
  {
    v4 = v2;
  }

  return (*(STACK[0xF18] + 8 * (((v4 == ((v3 - 544175549) & 0x206FCF3B ^ 0xE9D54C2A)) * (v3 + 14280)) ^ v3)))();
}

uint64_t sub_1006E09B4@<X0>(int a1@<W8>)
{
  v8 = a1 ^ v1;
  v9 = 3 * (a1 ^ v3);
  v10 = a1 + v4;
  v11 = (*(v7 + 8 * (a1 ^ v5)))(v2);
  return (*(v7 + 8 * ((((v9 - 1980) ^ v8) * (v6 != 0)) | v10)))(v11);
}

uint64_t sub_1006E0AC8()
{
  *(v2 - 152) = v0 + 1012831759 * ((~(v2 - 152) & 0xDAC16AF1 | (v2 - 152) & 0x253E9508) ^ 0xCA527C7B) + 27961;
  v3 = STACK[0x430];
  v4 = (*(STACK[0x430] + 8 * (v0 + 37882)))(v2 - 152);
  return (*(v3 + 8 * (((*(v2 - 148) == v1) * ((v0 - 7041) ^ (v0 + 8096) ^ 0xF475)) ^ v0)))(v4);
}

uint64_t sub_1006E0B6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v145 = v69;
  v80 = a1 + 1607884547;
  LODWORD(STACK[0x200]) = v67;
  v81 = v73 + (a67 ^ 0x35A010AE) - 133 * (((a67 ^ 0x35A010AEu) + v73) / 0x85);
  v82 = ((v81 << (a67 - 87)) & 0x9E) + (v81 ^ 0xB57C37FDFE7B5D4FLL);
  v83 = v82 + 0x4A83C8020184A24FLL;
  v84 = (a4 + 4 * v82 + 0x2A0F200806128AC4);
  if (v83 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v84 = (a3 + 4 * v83);
  }

  v85 = (v68 ^ 0x13935B71) & (2 * (v68 & 0x9BA31A65)) ^ v68 & 0x9BA31A65;
  v86 = ((2 * (v68 ^ 0x10D36F31)) ^ 0x16E0EAA8) & (v68 ^ 0x10D36F31) ^ (2 * (v68 ^ 0x10D36F31)) & 0x8B707554;
  v87 = v86 ^ 0x89101554;
  v88 = (v86 ^ 0x2006000) & (4 * v85) ^ v85;
  v89 = ((4 * v87) ^ 0x2DC1D550) & v87 ^ (4 * v87) & 0x8B707550;
  v90 = (v89 ^ 0x9405550) & (16 * v88) ^ v88;
  v91 = ((16 * (v89 ^ 0x82302004)) ^ 0xB7075540) & (v89 ^ 0x82302004) ^ (16 * (v89 ^ 0x82302004)) & 0x8B707540;
  v92 = v90 ^ 0x8B707554 ^ (v91 ^ 0x83005500) & (v90 << 8);
  LODWORD(STACK[0x210]) = v72;
  v93 = *v84 ^ v68 ^ (2 * ((v92 << 16) & 0xB700000 ^ v92 ^ ((v92 << 16) ^ 0x75540000) & (((v91 ^ 0x8702014) << 8) & 0xB700000 ^ 0xB000000 ^ (((v91 ^ 0x8702014) << 8) ^ 0x70750000) & (v91 ^ 0x8702014))));
  v94 = 4 * (v67 % 0x16);
  v95 = (a59 + v94);
  v96 = (v94 + a58 - 36);
  if (v67 % 0x16 <= 8)
  {
    v96 = v95;
  }

  v97 = (((v93 ^ 0xC311C0C4) - 936192585) ^ ((v93 ^ 0x99BF1509) - 1835270020) ^ ((v93 ^ 0xAB8E4B91) - 1599250716)) + ((((*v96 ^ 0x3E4D5DE0) - 1045257696) ^ ((*v96 ^ 0x2EEC3B0) - 49202096) ^ ((*v96 ^ 0x16C38E8C) - 381914764)) + 710938844) * *(v78 + 4 * (v80 ^ a37 ^ ((v80 ^ 0x6EC01E87) - 823542148) ^ ((v80 ^ 0xF2A3DA2A) + 1384807127) ^ ((v80 ^ 0xBC6A6459) + 474203302) ^ ((v80 ^ 0x7FDFFFF7) - 537501940) ^ 0x831D00EDLL));
  v98 = ((2 * (v72 % 0x85)) & 0x1BA) + ((v72 % 0x85) ^ 0x3CFEFE9D3EFA7BDDLL);
  v99 = v98 - 0x3CFEFE9D3EFA7C3FLL;
  v100 = (a4 + 4 * v98 + 0xC04058B0416108CLL);
  if (v99 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v100 = (a3 + 4 * v99);
  }

  v101 = *(v78 + 4 * ((a44 + a1 - v97) & 0x1F)) * a7 + (133 * (((*v100 ^ 0xB6FA52C2) + 1225108798) ^ ((*v100 ^ 0x7ED39840) - 2127796288) ^ ((*v100 ^ 0xB6EAA413) + 1226136557)) - 611815083) * (*(v77 + 4 * (v71 & 0x1F)) - 450790015) * (v97 + HIDWORD(a33));
  v102 = (((v101 - ((2 * v101) & 0x4322FD06) - 1584300413) ^ 0xDDDBF4CE) + 572787506) ^ (((v101 - ((2 * v101) & 0x4322FD06) - 1584300413) ^ 0x22934F9C) - 580079516) ^ (((v101 - ((2 * v101) & 0x4322FD06) - 1584300413) ^ 0x5ED9C5D1) - 1591330257);
  v103 = ((2 * (a1 + a41 - 133 * (v74 / 0x85))) & 0x34) + ((a1 + a41 - 133 * (v74 / 0x85)) ^ 0xFFA9FEBFEAC45B1ALL);
  v104 = v103 + 0x560140153BA484;
  v105 = (a4 + 4 * v103 + 0x158050054EE9398);
  if (v104 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v105 = (a3 + 4 * v104);
  }

  v106 = ((*v105 ^ 0xCB6534E7) + 882559769) ^ ((*v105 ^ 0x23DB5990) - 601577872) ^ ((*v105 ^ 0x967D03E6) + 1770191898);
  v107 = (a47 + a1) & 0x1F;
  v108 = (((*(v75 + 4 * v107) ^ 0x3D3AFC98) - 1027275928) ^ ((*(v75 + 4 * v107) ^ 0xFE2A5BEF) + 30778385) ^ ((*(v75 + 4 * v107) ^ 0xE87B1858) + 394586024)) - 514830630 * v106 + (v102 + 684915314) * (-2126737041 - v106) - 121694162;
  *(v75 + 4 * v107) = v108 ^ ((v108 ^ 0xE681C82) - 1586437895) ^ ((v108 ^ 0x3613AE5) - 1401305440) ^ ((v108 ^ 0x62138A1D) - 854886808) ^ ((v108 ^ 0x3FFDAFFF) - 1864019066) ^ 0x7B8CBCAA;
  LOBYTE(v107) = (v76 + v102) & 3 ^ 0x1C ^ ((v76 + v102) ^ 0x1B) & (2 * ((v76 + v102) & 3));
  v109 = *(v78 + 4 * (((v76 + v102) ^ (2 * (((2 * ((v76 + v102) ^ 0x1F)) & 0x1C ^ ((2 * ((v76 + v102) ^ 0x1F)) ^ 0x38) & ((v76 + v102) ^ 0x1F) ^ 8) & (4 * v107) ^ v107))) & 0x1F ^ 0x1Bu));
  LODWORD(v107) = ((2 * (v80 & 0x3D ^ 0x94E8433E)) ^ 0x2918867C) & (v80 ^ 0x34C1E3C3) ^ v80 & 0x3D ^ 0x94E8433E ^ ((2 * (v80 & 0x3D ^ 0x94E8433E)) & 0xC0003A | 0x80000);
  v110 = ((2 * (v80 ^ 0x34C1E3C3)) ^ 0x2918867C) & (v80 ^ 0x34C1E3C3) ^ (2 * (v80 ^ 0x34C1E3C3)) & 0x9420413E;
  LODWORD(v107) = v107 ^ v110 & 0x22160078 ^ ((4 * v107) ^ 0x725F0C60) & (v110 ^ 0xC8023E);
  v111 = ((4 * v110) ^ 0x21FE0888) & (v110 ^ 0xC8023E) ^ v110 & 0x22160078;
  LODWORD(v107) = v107 ^ v111 & 0x22DE0078 ^ ((16 * v107) ^ 0x6C5A3398) & (v111 ^ 0xC8003E);
  v112 = ((16 * v111) ^ 0x2E5E03F8) & (v111 ^ 0xC8003E) ^ v111 & 0x22DE0078;
  LODWORD(v107) = v107 ^ v112 & 0x22DE0078 ^ ((v107 << 8) ^ 0x29D0678) & (v112 ^ 0xC8003E);
  v113 = ((v112 << 8) ^ 0xEADE3878) & (v112 ^ 0xC8003E) ^ v112 & 0x22DE0078;
  v114 = 27 * (a32 ^ (v80 ^ (2 * (v107 ^ v113 & 0x22DE0078 ^ ((v107 << 16) ^ 0x61E00078) & (v113 ^ 0x14200000) ^ ((v107 << 16) ^ 0x61E00078) & 0x14E80038)) ^ 0x2CE641B2) & a36) % 0x16;
  v115 = 4 * v114;
  v116 = (a59 + v115);
  v117 = v115 + a58 - 36;
  if (v114 <= 8)
  {
    v118 = v116;
  }

  else
  {
    v118 = v117;
  }

  v119 = (-710938844 - (((*v118 ^ 0x811734ED) + 2129185555) ^ ((*v118 ^ 0x304F89A1) - 810518945) ^ ((*v118 ^ 0x9B38AD90) + 1690784368))) * v109 - 27 * *(STACK[0x218] + 4 * ((a46 + a1) & 0x1F)) + v102 - 1701229529;
  v120 = (v119 ^ 0xEE45E79) & (2 * (v119 & 0xACE95F71)) ^ v119 & 0xACE95F71;
  v121 = ((2 * (v119 ^ 0x46A66C9B)) ^ 0xD49E67D4) & (v119 ^ 0x46A66C9B) ^ (2 * (v119 ^ 0x46A66C9B)) & 0xEA4F33EA;
  v122 = v121 ^ 0x2A41102A;
  v123 = (v121 ^ 0xC00E23C0) & (4 * v120) ^ v120;
  v124 = ((4 * v122) ^ 0xA93CCFA8) & v122 ^ (4 * v122) & 0xEA4F33E8;
  v125 = (v124 ^ 0xA80C03A0) & (16 * v123) ^ v123;
  v126 = ((16 * (v124 ^ 0x42433042)) ^ 0xA4F33EA0) & (v124 ^ 0x42433042) ^ (16 * (v124 ^ 0x42433042)) & 0xEA4F33E0;
  v127 = v125 ^ 0xEA4F33EA ^ (v126 ^ 0xA0433200) & (v125 << 8);
  v128 = (v127 << 16) & 0x6A4F0000 ^ v127 ^ ((v127 << 16) ^ 0x33EA0000) & (((v126 ^ 0x4A0C014A) << 8) & 0x6A4F0000 ^ 0x204C0000 ^ (((v126 ^ 0x4A0C014A) << 8) ^ 0x4F330000) & (v126 ^ 0x4A0C014A));
  v129 = a1 - 22;
  if (a1 < 0x16)
  {
    v129 = a1;
  }

  v130 = (v129 + 22) % 0x16u;
  v131 = 4 * v130;
  v132 = (a59 + v131);
  v133 = v131 + a58 - 36;
  if (v130 <= 8)
  {
    v134 = v132;
  }

  else
  {
    v134 = v133;
  }

  v135 = 0x1ECC07B301ECC08 * (((*v134 ^ 0xA18EA8E48A9F0EFLL) - 0x2A18EA8E48A9F0EFLL) ^ ((*v134 ^ 0x137B2F3D4246DC29) + 0x4C84D0C2BDB923D7) ^ ((*v134 ^ 0x1963C5B3208F3C1ALL) + 0x669C3A4CDF70C3E6)) + 0x7AE8287A17312FA7;
  v136 = v135 ^ ((v135 ^ 0x6A34467601C4E29ALL) + 0x36984B1D02C245A3) ^ ((v135 ^ 0x30AD3983F97BA4D4) + 0x6C0134E8FA7D03EDLL) ^ ((v135 ^ 0x4C27F29CDB19FD56) + 0x108BFFF7D81F5A6FLL) ^ ((v135 ^ 0xB5ED7FFDDF5FE3DFLL) - 0x16BE8D6923A6BB18);
  v137 = ((v136 ^ 0x75F4DBA04A01D5BFLL) - 0x5A2A337B871918BDLL) ^ ((v136 ^ 0xC37E9E6B604683C9) + 0x135F894F52A1B135);
  LODWORD(v136) = __CFADD__(133 * (v137 ^ ((v136 ^ 0x15D9B75FD6BE0EB1) - 0x3A075F841BA6C3B3)), 0x54EAB24EA32CF59) + (((v137 ^ ((v136 ^ 0x15D9B75FD6BE0EB1) - 0x3A075F841BA6C3B3)) * 0x85uLL) >> 64) + 133 * ((__CFADD__(v136 ^ 0x75F4DBA04A01D5BFLL, 0xA5D5CC8478E6E743) - 1) ^ (__CFADD__(v136 ^ 0xC37E9E6B604683C9, 0x135F894F52A1B135) - 1) ^ (__CFADD__(v136 ^ 0x15D9B75FD6BE0EB1, 0xC5F8A07BE4593C4DLL) - 1)) + 253142433;
  v138 = v79 - (v136 + 133 * ((v79 - v136) / 0x85u));
  v139 = ((2 * v138) & 0xF6) + (v138 ^ 0xBBADE4BDDF7FBF7BLL);
  v140 = v139 + 0x44521B4220804023;
  v141 = (a4 + 4 * v139 + 0x11486D0882010214);
  if (v140 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v141 = (a3 + 4 * v140);
  }

  v142 = 27 * (((*v141 ^ 0x8482F021) + 2071793631) ^ ((*v141 ^ 0x816755B9) + 2123934279) ^ ((*v141 ^ 0x7B26CB09) - 2066139913)) - *(v77 + 4 * a35);
  *(v77 + 4 * (v145 & 0x1F)) += 133 * (v119 ^ (v142 - ((2 * v142 + 855005076) & 0x27F9DA36) + 225974501) ^ (2 * v128) ^ 0xAF1FD5BE);
  v143 = ((HIDWORD(a31) ^ v80 ^ ((v80 ^ 0x1493061A) - 1262835993) ^ ((v80 ^ 0x40CE449F) - 521673628) ^ ((v80 ^ 0x3451E259) - 1804057946) ^ ((v80 ^ 0x3FDAFFDF) - 1611440348) ^ 0x31B3F0F4u) + 23) % 0x17 == 0;
  return (*(a5 + 8 * (v143 | a67)))(a1, a39 - 133 * (v70 / 0x85), a3, a4, 246, a6, *(a5 + 8 * (v143 | a67)), 333, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_1006E1B90@<X0>(int a1@<W8>)
{
  v1 = STACK[0x7F20];
  v2 = (*v1 ^ 0xDAEFFBFB) + ((2 * *v1) & 0xFFF7) + ((a1 + 1117) ^ 0x679D44B8);
  v3 = STACK[0x20F8];
  v4 = STACK[0x8AF0];
  STACK[0x6DF8] = STACK[0x94A0];
  LODWORD(STACK[0x41E4]) = STACK[0x31E8];
  STACK[0x71A0] = v1;
  LODWORD(STACK[0x7A74]) = v2;
  STACK[0x64A8] = v3;
  STACK[0x7A68] = v4;
  LODWORD(STACK[0x3430]) = -1948857485;
  return (*(STACK[0xF18] + 8 * a1))(&off_1010A0B50);
}

uint64_t sub_1006E1C28()
{
  v1 = STACK[0x6F60];
  if ((v0 ^ 0x62A7) != 0x21DD)
  {
    v1 = 0;
  }

  LOWORD(STACK[0x3BCE]) = v1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006E1D48()
{
  v1 = v0 - 92;
  v2 = v0 ^ 0x2878u;
  v3 = v0 + 6152;
  v4 = STACK[0x2EC0];
  v5 = STACK[0x10F8];
  *v4 = *(STACK[0x10F8] - 0x10A99C80114D142FLL);
  v4[1] = *(v5 - 0x10A99C80114D142BLL);
  return (*(STACK[0xF18] + 8 * (((2 * ((v1 ^ (v5 - 0x10A99C80114D142FLL - v4 < v2 - 41763)) & 1)) & 0xF7 | (8 * ((v1 ^ (v5 - 0x10A99C80114D142FLL - v4 < v2 - 41763)) & 1))) ^ v3)))();
}

uint64_t sub_1006E1E00@<X0>(__int16 a1@<W8>)
{
  LOBYTE(STACK[0x5C97]) = v1;
  LOWORD(STACK[0x1556]) = a1;
  return (*(STACK[0xF18] + 8 * ((55 * (((v2 == v3 - 371900483) ^ (v3 - 19)) & 1)) ^ v3)))();
}

uint64_t sub_1006E2128()
{
  v1 = STACK[0x36A0];
  STACK[0x7690] -= 48;
  return (*(STACK[0xF18] + 8 * ((21354 * (v1 == ((v0 - 26526) ^ 0xE9D5E48C))) ^ (v0 - 29274))))();
}

uint64_t sub_1006E2178()
{
  v3 = STACK[0x3D90];
  STACK[0x6E20] = STACK[0x3D90];
  v4 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x1AF24605) - ((&STACK[0x10000] + 3800) | 0xE50DB9FA) - 452085254) ^ 0x776469F9);
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EE8]) = v2 - v4 + 12326;
  LODWORD(STACK[0x10ED8]) = v4 - 1431125376;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0xEAD0)))(&STACK[0x10ED8]);
  v7 = (((v1 & 0xFFFFFFFB ^ 0xDC7A3AFE) + 984463504) ^ ((v1 & 0xFFFFFFFB ^ 0xCF36FE3C) + 702643278) ^ (326 * (v2 ^ 0x21FE) + (v1 & 0xFFFFFFFB ^ 0xFA9903D7) + 474891725)) - 116289894;
  LODWORD(STACK[0x2048]) = v7;
  v8 = (LODWORD(STACK[0x3C94]) + v7) ^ (((LODWORD(STACK[0x3C94]) + v7) ^ 0xC3719404) + 1860048953) ^ (((LODWORD(STACK[0x3C94]) + v7) ^ 0xE995D56E) + 1144674643) ^ (((LODWORD(STACK[0x3C94]) + v7) ^ 0x74BCF42) - 1427881089) ^ (((LODWORD(STACK[0x3C94]) + v7) ^ 0x7FFFFDEB) - 766479912) ^ 0xBB85B4D2;
  STACK[0x5400] = v3;
  STACK[0x41A0] = v0;
  LODWORD(STACK[0x20CC]) = v8;
  LODWORD(STACK[0x38AC]) = -1634890389;
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_1006E239C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, char a6, int a7)
{
  v16 = a4 - 1;
  *(v7 + v16) = (v10 ^ ((v10 ^ v11) + v12) ^ ((v10 ^ v13) + a1) ^ ((v10 ^ a2) + a3) ^ ((v10 ^ a5 ^ v8) + 93) ^ a6) * (v10 - 71);
  return (*(v14 + 8 * (a7 | (8 * (((v16 - v9) | (v9 - v16)) >> 63)))))(a1, a2);
}

uint64_t sub_1006E2520()
{
  v1 = STACK[0x1E30];
  *(*(*(v1 + 520) + 8) + 120 * STACK[0x1750] + 8) = 0x981390C2FED9246;
  *(v1 + 480) = 0;
  v2 = STACK[0xF18];
  STACK[0x7DD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0xF6A7 ^ (v0 + 48781))))();
}

uint64_t sub_1006E26B8()
{
  if ((((LODWORD(STACK[0x9604]) ^ 0xB3A0231A) + 1281350886) ^ ((LODWORD(STACK[0x9604]) ^ 0xEDDEC565) + 304167579) ^ ((LODWORD(STACK[0x9604]) ^ 0xB7AB216E) + 1213521554)) - 371865839 >= 8133 * (v0 ^ 0xD5E73A7C) + 352553)
  {
    v2 = 77;
  }

  else
  {
    v2 = 78;
  }

  *v1 = v2;
  return (*(STACK[0xF18] + 8 * ((12533 * (v0 > 0xABFD4267)) ^ (v0 + 706288677))))();
}

uint64_t sub_1006E287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  STACK[0x2B0] = v60;
  v63 = *(v59 + 8 * (HIDWORD(a34) ^ 0x3972));
  v61 = *(v58 + 8 * (((*(v63 - 1401400883) == ((113 * (BYTE4(a34) ^ 0xC4)) ^ 0x54)) * (HIDWORD(a34) ^ 0x42EC)) ^ HIDWORD(a34)));
  STACK[0x230] = *(v59 + 8 * (HIDWORD(a34) ^ 0x3FA6)) - 1799565999;
  return v61(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, v63, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_1006E2924@<X0>(char a1@<W8>)
{
  v2 = *STACK[0xE50];
  v3 = *STACK[0xE58] >> 2;
  v4 = *(v2 + 4 * ((0x3B352011 % v3) & 0x3FFFFFFC));
  v5 = *(v2 + 4 * ((v3 + 0xFFFF) & ((v1 + 1195139028) & 0xB8C39FF4 ^ 0xE65B) & v4)) & ((v1 + 1195139028) ^ 0x473C8650) ^ 0xFFFF;
  v6 = STACK[0x8B0];
  v7 = *(STACK[0x8B0] - 527405895);
  v8 = *(STACK[0x8B8] + 4 * v7);
  v10 = v5 & ~HIWORD(v4);
  v9 = v10 == 0;
  v11 = v10 + v10 * v8;
  v12 = v9;
  if (v9)
  {
    v13 = *(STACK[0x8B8] + 4 * v7);
  }

  else
  {
    v13 = 0;
  }

  *(STACK[0x8B8] + 4 * v7) = (v13 + v11) * v8;
  *(v6 - 527405895) = (v7 + 1) % 6u;
  if (a1 == 33)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((14773 * v14) ^ v1)))();
}

uint64_t sub_1006E2B44()
{
  v4 = LODWORD(STACK[0x23FC]) + (((v1 ^ 0xD0C00B1B) + 792720613) ^ ((v1 ^ 0xE5C17187) + 440307321) ^ ((v1 ^ 0xDCD4BD8D) + 590037619));
  LODWORD(STACK[0xE4C]) = v4 + v2;
  v4 -= 1874893952;
  v5 = *(v0 + 128) - 936508077;
  v6 = v4 < 0x353867D;
  v7 = v4 > v5;
  if (v5 < 0x353867D != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = -42018;
  }

  else
  {
    v8 = STACK[0x24EC];
  }

  LODWORD(STACK[0x1250]) = v8;
  return (*(v3 + 8 * ((31946 * (v8 == 0)) ^ 0x16EAu)))();
}

uint64_t sub_1006E2CE8@<X0>(uint64_t a1@<X8>)
{
  v4 = 567 * (*(v3 + (119 * (v1 & 0xF) + 111503) % ((v2 + 11138) ^ 0x4EFFu)) ^ (16 * (*(v3 + (119 * (v1 >> 4) + 111503) % 0x3C2) & 0xF)) ^ 0x87) + 349272;
  *(v3 + (119 * v1 + 2023) % 0x3C2u) = 16 * *(v3 + (119 * ((*(a1 + (v4 - 928 * ((4628198 * v4) >> 32))) >> 4) ^ 4) - 24600) % 0x3C2u);
  return (*(STACK[0x6A0] + 8 * ((43116 * (v1 == 255)) ^ v2)))();
}

uint64_t sub_1006E2F04(int a1)
{
  v5 = v2 - 0x22EE7697EB341E66 + (a1 ^ v3);
  v6 = v5 < 0x9E694877;
  v7 = ((3362 * (a1 ^ 0x642Eu)) ^ 0xDD11896814CCB173) + *(v1 + 24);
  v8 = v6 ^ (v7 < 0x9E694877);
  v9 = v7 < v5;
  if (!v8)
  {
    v6 = v9;
  }

  return (*(v4 + 8 * (a1 | (8 * v6))))(3362 * (a1 ^ 0x642Eu), v1);
}

uint64_t sub_1006E3050@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x1B50] = v2;
  STACK[0x1848] = a1;
  LODWORD(STACK[0xC8C]) = v3;
  STACK[0x1C78] = 0;
  return (*(v4 + 8 * (((a1 == 0) * ((a2 + 1650496096) ^ a2 ^ 0x31D3 ^ 0x62609258)) ^ a2)))();
}

uint64_t sub_1006E30A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8)
{
  LODWORD(STACK[0x7A0]) = a2;
  STACK[0x7E0] = v10;
  v14 = *(*v12 + (*a8 & v9));
  v15 = 1864610357 * ((1864610357 * ((v14 ^ (v8 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v14 ^ (v8 + 1)) & 0x7FFFFFFFu)) >> 16));
  v16 = 1864610357 * ((1864610357 * ((v14 ^ (v8 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v14 ^ (v8 + 2)) & 0x7FFFFFFFu)) >> 16));
  return (*(v11 + 8 * a6))(a1, (v15 >> 24) + 4, v16 >> 24, (v16 >> 24) + 2, (v16 >> 24) + 4, (((1864610357 * ((1864610357 * ((v14 ^ (v8 + 1)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v14 ^ (v8 + 1)) & 0x7FFFFFFFu)) >> 16))) >> 24) * v13) ^ v15, (((1864610357 * ((1864610357 * ((v14 ^ (v8 + 2)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v14 ^ (v8 + 2)) & 0x7FFFFFFFu)) >> 16))) >> 24) * v13) ^ v16, 0x362E28808281302BLL);
}

uint64_t sub_1006E325C@<X0>(__int16 a1@<W3>, int a2@<W5>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  v13 = *(v5 + ((v6 ^ 1) * a1 - 30018 - (((((v6 ^ 1) * a1 - 30018) * a4) >> 16) >> 8) * v8));
  v14 = a3 + ((((2 * v13) & 0x4E ^ ((v7 ^ 0x81) + 19)) + (v13 ^ 0x4B)) ^ 4) * a2;
  *(v12 + a5 + v6 * a2 - ((((a5 + v6 * a2) * v9) >> 32) >> 9) * v10) = *(v12 + (v14 - ((v14 * v11) >> 32) * v10));
  return (*(STACK[0x6A0] + 8 * ((28829 * (v6 == 15)) ^ v7)))();
}

uint64_t sub_1006E3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x2230]) = v4;
  v6 = *(STACK[0xE88] + 32) + 552724524;
  LODWORD(STACK[0x2234]) = ((v6 ^ 0xFAD945BB) + 634868342) ^ v6 ^ ((v6 ^ 0x94D0BBB0) + 1272884351) ^ ((v6 ^ 0x3103F9C5) - 301076980) ^ ((v6 ^ 0x7FFBEFFF) - 1594492878) ^ 0xC4510FB8;
  return (*(v5 + 41408))(a1, a2, a3, a4, STACK[0x808], 1864610357);
}

uint64_t sub_1006E36E0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x17F8]) = v2;
  if (a1)
  {
    v4 = v2 == ((a2 + 1525650526) & 0xA51059D7 ^ 0xE9D5DF50);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return (*(v3 + 8 * ((v5 * (a2 ^ 0x7618)) ^ a2)))();
}

uint64_t sub_1006E37F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(&a27 + a3 - 889358049) = 920645125;
  if (a4 > 75213350 != a3 + 1182912249 < (v27 ^ 0x13A0) - 75225872)
  {
    v28 = a3 + 1182912249 < (v27 ^ 0x13A0) - 75225872;
  }

  else
  {
    v28 = a3 + 1182912249 > a2;
  }

  return (*(a22 + 8 * ((47 * v28) ^ v27)))(a1);
}

uint64_t sub_1006E389C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + a4) ^ *(v4 + a3);
  *(v4 + a4) = v6;
  v7 = *(v4 + a3) ^ v6;
  *(v4 + a3) = v7;
  *(v4 + a4) ^= v7;
  return (*(v5 + 8 * a1))();
}

uint64_t sub_1006E394C()
{
  v2 = *(STACK[0x75F8] - 0x217E172EFA1E81CLL);
  v3 = STACK[0x1E10];
  v4 = 40409587 * LODWORD(STACK[0x5670]) - 1378563772;
  v5 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x6EE2D0CA) - ((&STACK[0x10000] + 3800) | 0x911D2F35) - 1860358347) ^ 0x88C4CB05);
  LODWORD(STACK[0x10EF0]) = v5 ^ 0xDA000E07;
  LODWORD(STACK[0x10EF4]) = ((v0 ^ 0x19D4) + 508 + (v3 ^ 0xD0136581) + 2094512641 + ((2 * v3) & 0xFFFDEF8E ^ 0x5FD9248C)) ^ v5;
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10F08]) = v0 - v5 + 1777284546;
  STACK[0x10F10] = v2;
  LODWORD(STACK[0x10F04]) = v5 + 2069619737;
  LODWORD(STACK[0x10ED8]) = v4 ^ v5;
  STACK[0x10EE8] = (11881 * (v0 ^ 0x19D4u) - 0x4D367E14B3CF782CLL) ^ &STACK[0xF28];
  STACK[0x10EE0] = &STACK[0x2CEC];
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((((&STACK[0x10000] + 3800) | 0xD0CA) - ((&STACK[0x10000] + 3800) | 0x2F35) + 12085) ^ 0xCB05);
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD333)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((41812 * (LODWORD(STACK[0x10F0C]) == v1)) ^ v0)))(v7);
}

uint64_t sub_1006E3B1C(unint64_t a1)
{
  STACK[0x298] = a1;
  STACK[0x278] = v3;
  LODWORD(STACK[0x274]) = v2 - 6833;
  v6 = v1;
  v7 = *(v1 + 8 * (v2 ^ 0xB651)) - 1521354722;
  v8 = *(v5 - 127);
  v9 = v2;
  v10 = *(v6 + 8 * (v2 - 43496)) - 1710581807;
  v11 = 69 * *(v10 + (v8 ^ 0xD1)) - 106;
  v12 = ((v11 >> 1) & 0x61 ^ v11) << 16;
  v13 = ((((*(v7 + (*(v5 - 128) ^ 0x51)) + 34) ^ 0xDE) << ((v2 + 79) ^ 0xB6)) ^ 0x9189DCF) & ~v12;
  v14 = v12 & 0xFFE7FFFF;
  v15 = *(v6 + 8 * (v2 ^ 0xA403)) - 392933154;
  v16 = v14 | 0x81004200;
  v17 = *(v5 - 125);
  v18 = *(v6 + 8 * (v2 ^ 0xBB56)) - 1009363215;
  v19 = *(v18 + (v17 ^ 0xE6));
  v20 = *(v5 - 124) ^ 0x7CLL;
  LODWORD(v8) = (*(v15 + (*(v5 - 126) ^ 0xD5)) ^ 0xBD) << (v8 & 8 ^ 8) << (v8 & 8);
  LODWORD(v8) = v8 - ((2 * v8) & 0x17E902A) - 624998379;
  LODWORD(STACK[0x260]) = v8;
  v21 = v16 ^ v13 ^ v8;
  LODWORD(STACK[0x210]) = v21;
  LODWORD(v8) = v19 ^ v17;
  v22 = *(v5 - 123);
  v23 = (*(v7 + v20) + 34) ^ 7;
  LODWORD(STACK[0x268]) = v23;
  LODWORD(v22) = 69 * *(v10 + (v22 ^ 0xE4)) - 106;
  LODWORD(v22) = (v22 >> 1) & 0x61 ^ v22;
  LODWORD(STACK[0x264]) = v22;
  v24 = ((v22 << 16) ^ 0x495CD77A) & ((v23 << 24) ^ 0xC9FFDF7E) | (v23 << 24) & 0xB6000000;
  v25 = *(v5 - 121);
  v26 = *(v15 + (*(v5 - 122) ^ 0x76));
  STACK[0x250] = v26;
  LODWORD(v17) = *(v7 + (*(v5 - 120) ^ 0xEBLL));
  v27 = (v25 + (~(2 * v25) | 0xFFFFFFDF) + 17) ^ *(v18 + (v25 ^ 0x56));
  STACK[0x240] = v27;
  LODWORD(STACK[0x25C]) = v17 + 34;
  LODWORD(v25) = (v17 + 34) ^ 0x54;
  LODWORD(v22) = (((v24 ^ 0x2102884) & ((v26 << 8) ^ 0xB11C9A4) | v24 & 0xF4EE0012) ^ 0x37449C20) & (v27 ^ 0xFFFFFF6A) ^ v27 & 0x69;
  v28 = 69 * *(v10 + (*(v5 - 119) ^ 0xF8)) - 106;
  v29 = (v28 >> 1) & 0x61 ^ v28;
  LODWORD(STACK[0x24C]) = v29;
  LODWORD(v17) = v29 << 16;
  v30 = (v17 ^ 0xFF22B8DB) & ((v25 << 24) ^ 0x66A7B8DB);
  LODWORD(v25) = v17 & 0x580000;
  LODWORD(v10) = 69 * *(v10 + (*(v5 - 115) ^ 0xA9)) - 106;
  LODWORD(v7) = *(v7 + (*(v5 - 116) ^ 0x11));
  v31 = (*(v5 - 117) - ((2 * *(v5 - 117)) & 0x20) + 16) ^ *(v18 + (*(v5 - 117) ^ 0xC7));
  STACK[0x238] = v31;
  v32 = *(v15 + (*(v5 - 118) ^ 0x64));
  STACK[0x230] = v32;
  v33 = ((v30 ^ 0x7004720) & ((v32 << 8) ^ 0x4F273860) ^ (v30 & 0xB080A099 | v25) ^ 0x9AE34067) & (v31 ^ 0xFFFFFFFA) ^ v31 & 0x61;
  LODWORD(v10) = (((v10 >> 1) & 0x61 ^ v10) << 16) ^ 0x4AD81D3C;
  v34 = v10 & (((v7 << 24) + 570425344) ^ 0xBFFF9F7F) | ((v7 << 24) + 570425344) & 0xB5000000;
  v35 = *(v15 + (*(v5 - 114) ^ 0xE7));
  STACK[0x228] = v35;
  v36 = (*(v5 - 113) - ((2 * *(v5 - 113)) & 0x20) + 16) ^ *(v18 + (*(v5 - 113) ^ 0x46));
  LODWORD(v35) = (v34 ^ 0x9ADDD467) & ((v35 << 8) ^ 0xFFFF1D7F) | (v35 << 8) & 0x3600;
  LODWORD(v18) = (v35 ^ 0x33B929E) & (((*(v5 - 113) - ((2 * *(v5 - 113)) & 0x20) + 16) ^ *(v18 + (*(v5 - 113) ^ 0x46))) ^ 0xFFFFFF7B) ^ ((*(v5 - 113) - ((2 * *(v5 - 113)) & 0x20) + 16) ^ *(v18 + (*(v5 - 113) ^ 0x46))) & 0x3A;
  v37 = *(v6 + 8 * (v9 ^ 0xB772)) - 654754763;
  v38 = *(v6 + 8 * (v9 ^ 0xBA44)) - 1663825771;
  LODWORD(v35) = *(v38 + 4 * (BYTE1(v35) ^ 0xA3u)) ^ BYTE1(v35) ^ 0xEE0892D2;
  LODWORD(STACK[0x214]) = v21 ^ v8;
  LODWORD(v10) = BYTE2(v10);
  LODWORD(STACK[0x224]) = v10;
  LODWORD(v8) = v21 ^ v8 ^ 0x218D85B8 ^ *(v37 + 4 * (v10 ^ 0x26));
  v39 = *(v6 + 8 * (v9 ^ 0xB626)) - 444549151;
  STACK[0x218] = v36;
  LODWORD(v35) = *(v39 + 4 * (v36 ^ 0xF2u)) ^ ((v36 ^ 0x89) - 1871105495) ^ (v35 + v8 - 2 * (v35 & v8));
  LODWORD(STACK[0x354]) = v35;
  v40 = *(v6 + 8 * (v9 ^ 0xB14E)) - 400057031;
  v41 = HIBYTE(v34);
  STACK[0x208] = v41;
  LODWORD(v25) = (*(v40 + (v41 ^ 0xE0)) + 72) ^ 0x8F9AD709 ^ v35;
  LODWORD(STACK[0x300]) = v25;
  LODWORD(v36) = v22 ^ v25 ^ 0x13A39125;
  LODWORD(v41) = v33 ^ (v36 - ((2 * v36) & 0x84E08822) + 1114653713);
  v42 = v18 ^ v41 ^ 0x177CBA8E;
  v252 = BYTE2(v42);
  v245 = BYTE1(v42);
  LODWORD(v18) = *(v38 + 4 * (BYTE1(v42) ^ 0x58u)) ^ *(v37 + 4 * (BYTE2(v42) ^ 0x57u));
  LODWORD(STACK[0x2FC]) = v42;
  LODWORD(v26) = v18 ^ *(v39 + 4 * (v42 ^ 0xA1u)) ^ v25 ^ BYTE1(v42) ^ ((v42 ^ 0xDA) - 1871105495);
  LODWORD(STACK[0x2E4]) = v26;
  v43 = HIBYTE(v42);
  STACK[0x200] = v43;
  LOBYTE(v43) = *(v40 + (v43 ^ 0x94));
  v44 = (v41 ^ 0x177CBA8E) - ((2 * (v41 ^ 0x177CBA8E)) & 0xDB2ED224) - 308844270;
  LODWORD(STACK[0x348]) = v44;
  v240 = v26 ^ 0x47790E32;
  v45 = v26 ^ 0x47790E32 ^ (((-72 - v43) ^ (117 - ((v43 + 72) ^ 0x75)) ^ (v43 - 2 * (v43 & 2 ^ (v43 + 72)) + 69) ^ 0xFD) + 117);
  LODWORD(STACK[0x344]) = v36;
  LODWORD(STACK[0x2E0]) = v45;
  v231 = v45 ^ v36;
  LODWORD(v22) = (v44 - 2 * (v44 & 0xF3ADE2D ^ v41 & 1) + 255516204) ^ 0x8B218A3B ^ v45 ^ v36;
  LOBYTE(v41) = v22 ^ v42;
  v46 = v22;
  LODWORD(STACK[0x340]) = v22;
  v47 = v22 ^ v42 ^ 0x2D51BDBE;
  v247 = BYTE2(v47);
  LODWORD(v22) = *(v37 + 4 * (BYTE2(v47) ^ 0x5Fu));
  v237 = BYTE1(v47);
  LODWORD(v43) = *(v38 + 4 * (BYTE1(v47) ^ 0xAEu));
  LODWORD(STACK[0x284]) = v41;
  v251 = HIBYTE(v47);
  LODWORD(v41) = v43 ^ v22 ^ *(v39 + 4 * (v41 ^ 0x25u)) ^ ((v41 ^ 0x5E) - 1871105495) ^ BYTE1(v47) ^ (*(v40 + (v251 ^ 0x28)) + 72);
  v48 = v41 ^ v36;
  LODWORD(v43) = v41 ^ v36 ^ v46;
  LODWORD(v35) = v43;
  LODWORD(STACK[0x33C]) = v43;
  v49 = (-(v43 ^ 0xB4D2CFAC) ^ (v47 - (v43 ^ 0xB4D2CFAC ^ v47)) ^ 0xDAD5B0B5 ^ ((v43 ^ 0xB4D2CFAC) - ((2 * (v43 ^ 0xB4D2CFAC)) & 0xB5AB616A) - 623529803)) + v47;
  v243 = BYTE2(v49);
  v233 = BYTE1(v49);
  LODWORD(v22) = *(v38 + 4 * (BYTE1(v49) ^ 0xEFu)) ^ *(v37 + 4 * (BYTE2(v49) ^ 0x98u));
  LODWORD(STACK[0x310]) = v41 ^ v45;
  v50 = v41 ^ v45 ^ 0xFF09D649;
  LODWORD(STACK[0x314]) = v49;
  v249 = HIBYTE(v49);
  v250 = v22 ^ *(v39 + 4 * (v49 ^ 0x22u)) ^ v50 ^ BYTE1(v49) ^ ((v49 ^ 0x59) - 1871105495);
  LODWORD(v22) = v250 ^ 0xEEAB5EB7 ^ (*(v40 + (v249 ^ 0xDE)) + 72);
  LODWORD(STACK[0x2F8]) = v22;
  LODWORD(v41) = v22 ^ 0x9A9AB325;
  LODWORD(v43) = v22 ^ 0x9A9AB325 ^ v48;
  LODWORD(STACK[0x304]) = v43;
  LODWORD(v22) = v43 ^ 0xD065BE99;
  LODWORD(v51) = __ROR4__(v43 ^ 0xD065BE99 ^ v35, 2) ^ 0x479AB27C;
  HIDWORD(v51) = v51;
  LODWORD(v35) = v51 >> 30;
  LODWORD(STACK[0x338]) = v35;
  v52 = v35 ^ 0xA40FDE68;
  LODWORD(v43) = v35 ^ 0xA40FDE68 ^ v49;
  v242 = BYTE2(v43);
  v224 = BYTE1(v43);
  v53 = v35 ^ 0x68 ^ v49;
  v244 = BYTE3(v43);
  LODWORD(v43) = *(v38 + 4 * (((v35 ^ 0xDE68 ^ v49) >> 8) ^ 0x12u)) ^ *(v37 + 4 * (BYTE2(v43) ^ 0xDDu)) ^ *(v39 + 4 * (v53 ^ 0x24u)) ^ v41 ^ ((v35 ^ 0xDE68 ^ v49) >> 8) ^ (*(v40 + (v244 ^ 0xEE)) + 72) ^ ((v53 ^ 0x5F) - 1871105495);
  LODWORD(STACK[0x330]) = v43;
  LODWORD(v41) = v43 ^ 0xF258741E;
  LODWORD(v43) = v43 ^ 0xF258741E ^ v22;
  LODWORD(STACK[0x328]) = v43;
  LODWORD(v22) = v43 ^ 0x8DCA0298;
  v54 = v43 ^ 0x8DCA0298 ^ v49;
  v236 = BYTE2(v54);
  v222 = BYTE1(v54);
  LODWORD(v43) = *(v38 + 4 * (BYTE1(v54) ^ 0x1Cu)) ^ *(v37 + 4 * (BYTE2(v54) ^ 9u));
  LODWORD(STACK[0x2DC]) = v54;
  v220 = v43 ^ *(v39 + 4 * (v54 ^ 0xAu)) ^ v41 ^ BYTE1(v54) ^ ((v54 ^ 0x71) - 1871105495);
  v239 = HIBYTE(v54);
  LODWORD(v43) = v220 ^ (*(v40 + (v239 ^ 0xF3)) + 72);
  LODWORD(STACK[0x358]) = v43;
  LODWORD(v43) = v43 ^ 0xE7911F2B;
  LODWORD(STACK[0x31C]) = v43 ^ v35 ^ 0xA40FDE68;
  LODWORD(v41) = v43 ^ v35 ^ 0xA40FDE68 ^ 0xE60046D3;
  LODWORD(v36) = ((v41 ^ v54) >> 16);
  LODWORD(STACK[0x30C]) = v36;
  LODWORD(v25) = *(v37 + 4 * (v36 ^ 0x99));
  v55 = ((v41 ^ v54) >> 8);
  LODWORD(v36) = *(v38 + 4 * (v55 ^ 0xD3u));
  v56 = (v41 ^ v54);
  LODWORD(STACK[0x2F4]) = v56;
  LODWORD(v36) = v36 ^ v25 ^ *(v39 + 4 * (v56 ^ 0x66u)) ^ v43 ^ v55 ^ ((v56 ^ 0x1D) - 1871105495);
  LODWORD(STACK[0x334]) = v36;
  LODWORD(v25) = v43 ^ v22;
  LODWORD(STACK[0x324]) = v43 ^ v22;
  v57 = (v41 ^ v54) >> 24;
  STACK[0x2E8] = v57;
  LODWORD(v35) = v36 ^ (*(v40 + (v57 ^ 0x90)) + 72);
  LODWORD(STACK[0x308]) = v35;
  v212 = v35 ^ 0xE80D9AD4 ^ v25;
  v58 = v212 ^ 0x1E52836D ^ v54;
  v226 = BYTE2(v58);
  v215 = BYTE1(v58);
  LODWORD(v25) = v58;
  LODWORD(v57) = v212 ^ 0x1E52836D ^ v41;
  v228 = (v58 ^ 0x87) - 1871105495;
  v230 = *(v38 + 4 * (BYTE1(v58) ^ 8u)) ^ *(v37 + 4 * (BYTE2(v58) ^ 0xEDu)) ^ *(v39 + 4 * (v58 ^ 0xFCu)) ^ v35 ^ 0xE80D9AD4 ^ BYTE1(v58);
  v238 = HIBYTE(v58);
  LODWORD(v41) = (*(v40 + (v238 ^ 0x58)) + 72);
  LODWORD(STACK[0x32C]) = v230 ^ v228;
  v59 = v230 ^ ((v58 ^ 0x87) + 41) ^ v41;
  LODWORD(v36) = v230 ^ v228 ^ v41 ^ 0xBF6935B7;
  LODWORD(v41) = v36 ^ v212 ^ 0x1E52836D;
  v60 = v41 ^ 0xF1 ^ v57;
  v61 = v41 ^ 0x4387D2F1 ^ v57 ^ 0x9B17808B;
  LODWORD(STACK[0x2A8]) = v41 ^ 0x4387D2F1 ^ v57;
  v217 = ((v61 ^ v58) >> 16);
  v214 = ((v61 ^ v58) >> 8);
  v62 = *(v38 + 4 * (v214 ^ 0x4Eu)) ^ *(v37 + 4 * (v217 ^ 0x5Cu));
  v63 = (v61 ^ v58);
  LODWORD(STACK[0x2D8]) = v63;
  v235 = (v61 ^ v58) >> 24;
  LODWORD(v36) = v62 ^ *(v39 + 4 * (v63 ^ 0xEBu)) ^ v36 ^ ((v63 ^ 0x90) - 1871105495) ^ (*(v40 + (v235 ^ 0x5A)) + 72);
  LODWORD(STACK[0x320]) = v36;
  LODWORD(STACK[0x2D4]) = v36 ^ v214;
  v211 = v36 ^ v214 ^ 0x8B0D7D68;
  LODWORD(v36) = v211 ^ v41 ^ 0x4387D2F1;
  LODWORD(STACK[0x318]) = v36;
  LODWORD(v35) = v36 ^ 0xE9973FAA ^ v58;
  v221 = BYTE2(v35);
  v210 = *(v37 + 4 * (BYTE2(v35) ^ 0x3Eu));
  v64 = BYTE1(v35);
  v208 = *(v38 + 4 * (BYTE1(v35) ^ 0x72u));
  LODWORD(v26) = v36 ^ 0xAA ^ v58;
  v205 = v35;
  v207 = *(v39 + 4 * (v26 ^ 0xC3));
  v186 = BYTE3(v35);
  v188 = *(v40 + (v186 ^ 0x31));
  LOBYTE(v56) = v22 ^ v52;
  LODWORD(STACK[0x2AC]) = v22 ^ v52;
  v200 = v9;
  v65 = *(v6 + 8 * (v9 ^ 0xBCD6)) - 781439375;
  v66 = *(v6 + 8 * (v9 - 45039)) - 721160814;
  v67 = *(v6 + 8 * (v9 - 44228)) - 1811821035;
  LODWORD(v38) = v36 ^ 0xE9973FAA ^ v61;
  v178 = *(v65 + 4 * (v36 ^ 0xAA ^ v61 ^ 0xEDu));
  v193 = BYTE3(v38) ^ 0x92;
  HIDWORD(v51) = *(v66 + 4 * (BYTE1(v38) ^ 0x78u));
  LODWORD(v51) = HIDWORD(v51);
  LODWORD(v22) = *(v67 + 4 * (BYTE2(v38) ^ 0x33u));
  v68 = *(v6 + 8 * (v9 - 43648)) - 1755073927;
  v182 = v178 ^ v22 ^ (v51 >> 14) ^ ((v51 >> 14) >> 5) ^ ((v51 >> 14) >> 2);
  HIDWORD(v51) = *(v66 + 4 * (BYTE1(v35) ^ 0x2Fu));
  LODWORD(v51) = HIDWORD(v51);
  v180 = (v51 >> 14) ^ ((v51 >> 14) >> 5) ^ ((v51 >> 14) >> 2);
  v69 = v59 ^ 0xDB;
  LODWORD(v37) = *(v65 + 4 * (v41 ^ 0x76u));
  HIDWORD(v51) = *(v66 + 4 * (BYTE1(v41) ^ 0x90u));
  LODWORD(v51) = HIDWORD(v51);
  LODWORD(v22) = BYTE3(v41) ^ 0xCF;
  v70 = v37 ^ *(v67 + 4 * (BYTE2(v41) ^ 0x6Cu)) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ (((4 * v37) ^ 0xE3B5BA9C) + 517042684) ^ *(v68 + 4 * v22) ^ (*(v68 + 4 * v22) >> 3) ^ (*(v68 + 4 * v22) >> 2) ^ 0x646AD061;
  HIDWORD(v51) = *(v66 + 4 * (BYTE1(v57) ^ 0x15u));
  LODWORD(v51) = HIDWORD(v51);
  v206 = __ROR4__(v70, 7) ^ 0x3656290;
  v176 = *(v67 + 4 * (BYTE2(v57) ^ 0x9Au)) ^ *(v65 + 4 * (v57 ^ 0x40u)) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5);
  v177 = *(v65 + 4 * (v57 ^ 0x40u));
  v71 = *(v68 + 4 * (BYTE3(v57) ^ 0xEB));
  v166 = v71 ^ (v71 >> 3) ^ (v71 >> 2);
  LODWORD(v41) = v25 ^ 0x72;
  v72 = LODWORD(STACK[0x358]);
  STACK[0x358] = v4;
  v73 = v72 ^ 0xEA;
  v74 = LODWORD(STACK[0x31C]) ^ 0x16;
  v75 = *(v65 + 4 * (LODWORD(STACK[0x2F4]) ^ 0x6Bu));
  HIDWORD(v51) = *(v66 + 4 * (v55 ^ 0xF3u));
  LODWORD(v51) = HIDWORD(v51);
  LODWORD(v22) = *(v68 + 4 * (STACK[0x2E8] ^ 0xB4));
  LODWORD(STACK[0x290]) = v22 ^ (v51 >> 14) ^ v75 ^ (v22 >> 3) ^ ((v51 >> 14) >> 5) ^ (((4 * v75) ^ 0xE3B5BA9C) + 517042684) ^ *(v67 + 4 * (LODWORD(STACK[0x30C]) ^ 0x80u)) ^ ((v22 ^ (v51 >> 14)) >> 2);
  LODWORD(v22) = LODWORD(STACK[0x328]) ^ 0xE2;
  v171 = LODWORD(STACK[0x304]) ^ 0xB66B5E73;
  BYTE1(v6) = (LOWORD(STACK[0x304]) ^ 0x5E73) >> 8;
  LODWORD(v37) = LOBYTE(STACK[0x304]) ^ 0x41;
  v168 = HIBYTE(LODWORD(STACK[0x304])) ^ 0xEF;
  LODWORD(v25) = *(v65 + 4 * (v50 ^ 0x46u));
  HIDWORD(v51) = *(v66 + 4 * (BYTE1(v50) ^ 0x7Du));
  LODWORD(v51) = HIDWORD(v51);
  v76 = *(v68 + 4 * (HIBYTE(LODWORD(STACK[0x310])) ^ 0xDu));
  LODWORD(STACK[0x294]) = *(v67 + 4 * (BYTE2(v50) ^ 0xB8u)) ^ v25 ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ (((4 * v25) ^ 0xE3B5BA9C) + 517042684) ^ v76 ^ (v76 >> 2) ^ (v76 >> 3);
  LODWORD(STACK[0x2D0]) = *(v65 + 4 * (LODWORD(STACK[0x2D4]) ^ 0xF7u));
  LODWORD(v35) = STACK[0x318];
  LODWORD(STACK[0x2C0]) = *(v65 + 4 * (LODWORD(STACK[0x318]) ^ 0x56u));
  v173 = *(v65 + 4 * (v26 ^ 0x94));
  LODWORD(STACK[0x2B0]) = v48;
  v158 = *(v65 + 4 * (v48 ^ 0x24u));
  HIDWORD(v51) = *(v66 + 4 * (BYTE1(v48) ^ 0x36u));
  LODWORD(v51) = HIDWORD(v51);
  LODWORD(STACK[0x30C]) = *(v65 + 4 * v69);
  LODWORD(STACK[0x2B4]) = *(v65 + 4 * (v60 ^ 0x8Eu));
  LODWORD(STACK[0x2BC]) = *(v65 + 4 * (LODWORD(STACK[0x2D8]) ^ 0xE8u));
  LODWORD(STACK[0x304]) = *(v65 + 4 * (LODWORD(STACK[0x308]) ^ 0x1Au));
  LODWORD(STACK[0x2CC]) = *(v65 + 4 * (v212 ^ 0x13u));
  LODWORD(STACK[0x308]) = *(v65 + 4 * v41);
  LODWORD(STACK[0x28C]) = *(v65 + 4 * v73);
  v77 = STACK[0x324];
  LODWORD(STACK[0x2C8]) = *(v65 + 4 * (LODWORD(STACK[0x324]) ^ 0x13u));
  LODWORD(STACK[0x2E8]) = *(v65 + 4 * v74);
  LODWORD(v57) = STACK[0x330];
  LODWORD(STACK[0x2D4]) = *(v65 + 4 * (LODWORD(STACK[0x330]) ^ 0xDu));
  LODWORD(STACK[0x310]) = *(v65 + 4 * v22);
  LODWORD(STACK[0x2F4]) = *(v65 + 4 * (v56 ^ 0xBDu));
  LODWORD(v41) = LODWORD(STACK[0x2E0]) ^ 0xD8;
  LODWORD(STACK[0x2E0]) = *(v65 + 4 * (LODWORD(STACK[0x2DC]) ^ 0x1Au));
  LODWORD(STACK[0x2D8]) = *(v65 + 4 * (LODWORD(STACK[0x2F8]) ^ 0x60u));
  LODWORD(STACK[0x2B8]) = *(v65 + 4 * v37);
  LODWORD(STACK[0x2A4]) = *(v65 + 4 * (LODWORD(STACK[0x338]) ^ 0xACu));
  LODWORD(STACK[0x2C4]) = *(v65 + 4 * (v53 ^ 0xB8u));
  LODWORD(STACK[0x2F8]) = *(v65 + 4 * (LODWORD(STACK[0x33C]) ^ 0xC4u));
  LODWORD(STACK[0x314]) = *(v65 + 4 * (LODWORD(STACK[0x314]) ^ 0xABu));
  LODWORD(STACK[0x2DC]) = *(v65 + 4 * v41);
  v163 = HIBYTE(LODWORD(STACK[0x2E4])) ^ 0xB7;
  LODWORD(STACK[0x2E4]) = *(v65 + 4 * (v231 ^ 0x77u));
  v78 = STACK[0x340];
  LODWORD(STACK[0x288]) = *(v65 + 4 * (LODWORD(STACK[0x340]) ^ 0x59u));
  v79 = STACK[0x348];
  LODWORD(v41) = LODWORD(STACK[0x348]) ^ 0x9D;
  v162 = *(v65 + 4 * (LODWORD(STACK[0x284]) ^ 0x48u));
  LODWORD(STACK[0x284]) = *(v65 + 4 * (LODWORD(STACK[0x300]) ^ 0x9Au));
  LODWORD(STACK[0x300]) = *(v65 + 4 * LODWORD(STACK[0x344]));
  v161 = *(v65 + 4 * v41);
  LODWORD(STACK[0x2FC]) = *(v65 + 4 * (LODWORD(STACK[0x2FC]) ^ 0xA3u));
  v152 = v212 ^ 0x98C99AC0;
  v164 = v208 ^ v210 ^ v207 ^ v211 ^ v64;
  v80 = v224 ^ 0xCD;
  v196 = *(v66 + 4 * (BYTE1(LODWORD(STACK[0x320])) ^ 0x8Au));
  v195 = *(v66 + 4 * (BYTE1(v35) ^ 0xEDu));
  v81 = STACK[0x2A8];
  v191 = *(v66 + 4 * (BYTE1(LODWORD(STACK[0x2A8])) ^ 0xBu));
  v194 = *(v66 + 4 * (v214 ^ 0x9Au));
  v209 = *(v66 + 4 * (BYTE1(LODWORD(STACK[0x334])) ^ 0x13u));
  v199 = *(v66 + 4 * (((v212 ^ 0x9AC0) >> 8) ^ 0xA0u));
  v213 = *(v66 + 4 * (v215 ^ 0xCDu));
  v225 = *(v66 + 4 * (BYTE1(v220) ^ 0x34u));
  v197 = *(v66 + 4 * BYTE1(v77));
  v201 = *(v66 + 4 * (BYTE1(v57) ^ 0x81u));
  v204 = *(v66 + 4 * (v222 ^ 0xE4u));
  v202 = *(v66 + 4 * (((v250 ^ 0x5EB7) >> 8) ^ 0x95u));
  v192 = *(v66 + 4 * (BYTE1(v6) ^ 0x5Fu));
  v198 = *(v66 + 4 * v80);
  v216 = *(v66 + 4 * (v233 ^ 0xC4u));
  v203 = *(v66 + 4 * (BYTE1(v240) ^ 1u));
  v223 = *(v66 + 4 * (BYTE1(v78) ^ 0xA5u));
  v175 = *(v66 + 4 * (v237 ^ 0x53u));
  v234 = *(v66 + 4 * (BYTE1(LODWORD(STACK[0x354])) ^ 0x6Du));
  v167 = *(v66 + 4 * (BYTE1(v79) ^ 0xBCu));
  v246 = *(v66 + 4 * (v245 ^ 0xAAu));
  v141 = v164 ^ (v188 + 72) ^ ((v26 ^ 0xB8) - 1871105495);
  v143 = v141 ^ 0xF1462DB6 ^ v36 ^ 0xE9973FAA;
  v146 = v141 ^ 0xF1462DB6 ^ v61;
  LODWORD(v66) = BYTE2(LODWORD(STACK[0x320])) ^ 0x2B;
  v154 = HIBYTE(LODWORD(STACK[0x318])) ^ 0xE3;
  v82 = BYTE2(LODWORD(STACK[0x318])) ^ 0xE7;
  LODWORD(v22) = v182 ^ (((4 * v178) ^ 0xE3B5BA9C) + 517042684) ^ 0x22A9B60F;
  LODWORD(STACK[0x318]) = (v22 & 0x41308EAB ^ 0x60579937) & (v22 & 0xBECF7154 ^ 0x77F8DEFB) | v22 & 0x9E886040;
  v148 = v173 ^ 0xD73EED1D;
  v150 = ((4 * v173) ^ 0xE3B5BA9C) - ((2 * ((4 * v173) ^ 0xE3B5BA9C) + 1034085368) & 0xDFA70770) - 1901791818;
  LODWORD(v22) = BYTE2(v81) ^ 0x5A;
  v83 = v217 ^ 0xFA;
  v218 = HIBYTE(LODWORD(STACK[0x334])) ^ 0x4C;
  LODWORD(v25) = BYTE2(LODWORD(STACK[0x334])) ^ 0xC4;
  v84 = BYTE2(v77) ^ 0x41;
  v85 = BYTE2(LODWORD(STACK[0x2B0])) ^ 0x67;
  LODWORD(STACK[0x334]) = HIBYTE(LODWORD(STACK[0x33C])) ^ 0xE4;
  v86 = BYTE2(v240) ^ 0xFB;
  LODWORD(STACK[0x32C]) = HIBYTE(v231) ^ 0x77;
  LODWORD(v41) = v247 ^ 0xC3;
  v87 = STACK[0x354];
  v169 = *(v67 + 4 * v66);
  v165 = *(v67 + 4 * v82);
  v227 = *(v67 + 4 * (v221 ^ 4u));
  v157 = *(v67 + 4 * v22);
  v160 = *(v67 + 4 * v83);
  v241 = *(v67 + 4 * v25);
  v179 = *(v67 + 4 * (BYTE2(v152) ^ 7u));
  v248 = *(v67 + 4 * (v226 ^ 0xB9u));
  v88 = HIBYTE(LODWORD(STACK[0x330])) ^ 0x97;
  v174 = *(v67 + 4 * v84);
  v183 = *(v67 + 4 * (BYTE2(LODWORD(STACK[0x330])) ^ 0xA4u));
  v89 = STACK[0x348];
  LODWORD(v35) = BYTE2(LODWORD(STACK[0x348])) ^ 0x85;
  v189 = *(v67 + 4 * (v236 ^ 0x7Bu));
  v90 = HIBYTE(LODWORD(STACK[0x338])) ^ 0x37;
  v185 = *(v67 + 4 * (((v250 ^ 0xEEAB5EB7) >> 16) ^ 0x49u));
  v156 = *(v67 + 4 * (BYTE2(v171) ^ 0xBu));
  v172 = *(v67 + 4 * (v242 ^ 0x38u));
  LODWORD(v22) = *(v67 + 4 * v85);
  LODWORD(STACK[0x31C]) = *(v67 + 4 * (v243 ^ 0xDu));
  v187 = *(v67 + 4 * v86);
  v136 = *(v67 + 4 * v41);
  v131 = *(v67 + 4 * v35);
  v253 = *(v67 + 4 * (v252 ^ 0x87u));
  v232 = (-(v148 ^ v150) ^ ((v180 ^ 0xBF3889D5) - (v148 ^ v150 ^ v180 ^ 0xBF3889D5)) ^ 0x3831272C ^ ((v148 ^ v150) - ((2 * (v148 ^ v150)) & 0x70624E58) + 942745388)) + (v180 ^ 0xBF3889D5);
  LODWORD(v41) = v176 ^ (((4 * v177) ^ 0xE3B5BA9C) + 517042684);
  LODWORD(STACK[0x330]) = (-(v41 ^ 0x79A69302) ^ ((v166 ^ 0x4A37CE5E) - (v41 ^ 0x79A69302 ^ v166 ^ 0x4A37CE5E)) ^ 0xEC34CA23 ^ ((v41 ^ 0x79A69302) - 2 * ((v41 ^ 0x79A69302) & 0x6C34CA2B ^ v41 & 8) - 332084701)) + (v166 ^ 0x4A37CE5E);
  LODWORD(v35) = v244 ^ 0xE5;
  LODWORD(v41) = (v51 >> 14) ^ v158 ^ ((v51 >> 14) >> 5) ^ ((v51 >> 14) >> 2) ^ (((4 * v158) ^ 0xE3B5BA9C) + 517042684);
  v151 = (-(v41 ^ 0x7D5E772) ^ ((v22 ^ 0x7E737470) - (v22 ^ 0x7E737470 ^ v41 ^ 0x7D5E772)) ^ 0x8E4B229A ^ ((v41 ^ 0x7D5E772) - 2 * ((v41 ^ 0x7D5E772) & 0xE4B229B ^ v41 & 1) - 1907678566)) + (v22 ^ 0x7E737470);
  LODWORD(v37) = v251 ^ 0xE9;
  v140 = *(v68 + 4 * (HIBYTE(LODWORD(STACK[0x320])) ^ 0x68u));
  v130 = *(v68 + 4 * v154);
  LODWORD(STACK[0x320]) = *(v68 + 4 * v193);
  v181 = *(v68 + 4 * (v186 ^ 0xB0));
  v126 = *(v68 + 4 * (HIBYTE(LODWORD(STACK[0x2A8])) ^ 0x89u));
  v129 = *(v68 + 4 * (v235 ^ 0xDE));
  v91 = HIBYTE(LODWORD(STACK[0x2B0])) ^ 0x48;
  LODWORD(v244) = *(v68 + 4 * v218);
  v149 = *(v68 + 4 * HIBYTE(v152));
  LODWORD(v251) = *(v68 + 4 * (v238 ^ 0x21));
  LODWORD(STACK[0x354]) = *(v68 + 4 * (HIBYTE(v220) ^ 0xE4));
  v139 = *(v68 + 4 * (HIBYTE(LODWORD(STACK[0x324])) ^ 0x7Cu));
  v155 = *(v68 + 4 * v88);
  LODWORD(STACK[0x324]) = *(v68 + 4 * (HIBYTE(LODWORD(STACK[0x328])) ^ 2u));
  LODWORD(STACK[0x328]) = *(v68 + 4 * (v239 ^ 0x9A));
  v159 = *(v68 + 4 * (HIBYTE(v250) ^ 0x1A));
  v127 = *(v68 + 4 * v168);
  LODWORD(STACK[0x33C]) = *(v68 + 4 * v90);
  v144 = *(v68 + 4 * v35);
  v135 = *(v68 + 4 * v91);
  v132 = ((4 * LODWORD(STACK[0x2D0])) ^ 0xE3B5BA9C) + 517042684;
  v128 = ((4 * LODWORD(STACK[0x2C0])) ^ 0xE3B5BA9C) + 517042684;
  v123 = ((4 * LODWORD(STACK[0x2B4])) ^ 0xE3B5BA9C) + 517042684;
  v125 = ((4 * LODWORD(STACK[0x2BC])) ^ 0xE3B5BA9C) + 517042684;
  v229 = ((4 * LODWORD(STACK[0x304])) ^ 0xE3B5BA9C) + 517042684;
  v137 = ((4 * LODWORD(STACK[0x2CC])) ^ 0xE3B5BA9C) + 517042684;
  LODWORD(v239) = ((4 * LODWORD(STACK[0x308])) ^ 0xE3B5BA9C) + 517042684;
  v133 = ((4 * LODWORD(STACK[0x2C8])) ^ 0xE3B5BA9C) + 517042684;
  v138 = ((4 * LODWORD(STACK[0x2D4])) ^ 0xE3B5BA9C) + 517042684;
  v153 = ((4 * LODWORD(STACK[0x2E0])) ^ 0xE3B5BA9C) + 517042684;
  v142 = ((4 * LODWORD(STACK[0x2D8])) ^ 0xE3B5BA9C) + 517042684;
  v124 = ((4 * LODWORD(STACK[0x2B8])) ^ 0xE3B5BA9C) + 517042684;
  v134 = ((4 * LODWORD(STACK[0x2C4])) ^ 0xE3B5BA9C) + 517042684;
  LODWORD(STACK[0x2AC]) = ((4 * LODWORD(STACK[0x314])) ^ 0xE3B5BA9C) + 517042684;
  LODWORD(STACK[0x2A8]) = *(v68 + 4 * (v249 ^ 0x8F));
  v147 = ((4 * LODWORD(STACK[0x2DC])) ^ 0xE3B5BA9C) + 517042684;
  v145 = *(v68 + 4 * v163);
  LODWORD(STACK[0x340]) = *(v68 + 4 * HIBYTE(LODWORD(STACK[0x340])));
  v92 = *(v68 + 4 * v37);
  LODWORD(STACK[0x344]) = *(v68 + 4 * (HIBYTE(v87) ^ 0x8F));
  LODWORD(v36) = *(v68 + 4 * (HIBYTE(v89) ^ 7));
  v219 = ((4 * LODWORD(STACK[0x2FC])) ^ 0xE3B5BA9C) + 517042684;
  LODWORD(STACK[0x200]) = *(v68 + 4 * (STACK[0x200] ^ 0x64));
  v93 = *(&off_1010A0B50 + v200 - 44288) - 1151230983;
  LODWORD(v22) = HIBYTE(LODWORD(STACK[0x210])) ^ 0x58;
  v94 = BYTE2(LODWORD(STACK[0x210])) ^ 0x36;
  v95 = *(&off_1010A0B50 + v200 - 41812) - 1782783227;
  v96 = *(&off_1010A0B50 + (v200 ^ 0xBB88)) - 1344653775;
  LODWORD(STACK[0x260]) = *&v96[4 * (BYTE1(LODWORD(STACK[0x260])) ^ 0x34)] ^ 0xEAEF77D2;
  v97 = LODWORD(STACK[0x214]) ^ 0xD5;
  v98 = *(&off_1010A0B50 + (v200 ^ 0xB141)) - 650559058;
  LODWORD(v25) = LODWORD(STACK[0x268]) ^ 0xA5;
  LOBYTE(v78) = LODWORD(STACK[0x264]) ^ 0xC5;
  LODWORD(STACK[0x2B0]) = *&v96[4 * (STACK[0x250] ^ 0x35)] ^ 0xCF012154;
  v99 = STACK[0x240] ^ 0x82;
  v100 = STACK[0x230] ^ 0x50;
  v101 = STACK[0x208] ^ 0xAA;
  LODWORD(STACK[0x250]) = *&v93[4 * v22];
  LODWORD(STACK[0x334]) = *&v93[4 * v25];
  LODWORD(STACK[0x240]) = *&v93[4 * (LODWORD(STACK[0x25C]) ^ 0x68)];
  LODWORD(v22) = *&v96[4 * v100];
  LODWORD(STACK[0x338]) = *&v93[4 * v101];
  LODWORD(STACK[0x348]) = *&v93[4 * (HIBYTE(v141) ^ 0x68)];
  LODWORD(STACK[0x264]) = *&v93[4 * (HIBYTE(v143) ^ 0x1A)];
  LOBYTE(v87) = LODWORD(STACK[0x24C]) ^ 0xA4;
  LODWORD(v6) = *&v93[4 * (HIBYTE(v146) ^ 0xDC)];
  v102 = v22 ^ 0x68ED09D;
  LODWORD(v25) = *&v93[4 * (((v146 ^ v205) >> 24) ^ 0x25)];
  v103 = STACK[0x238] ^ 0x59;
  v104 = LODWORD(STACK[0x224]) ^ 0x8E;
  LODWORD(STACK[0x268]) = *&v96[4 * (STACK[0x228] ^ 0xAC)] ^ 0x496933B2;
  LODWORD(STACK[0x24C]) = *&v95[4 * v94];
  LODWORD(STACK[0x214]) = *&v95[4 * v78];
  LODWORD(STACK[0x238]) = *&v95[4 * v87];
  LODWORD(STACK[0x210]) = *&v95[4 * v104];
  LODWORD(STACK[0x25C]) = *&v95[4 * (BYTE2(v143) ^ 0x63)];
  v105 = *&v95[4 * (BYTE2(v146) ^ 0xB5)];
  LODWORD(v66) = *&v95[4 * (((v146 ^ v205) >> 16) ^ 0x48)];
  v106 = STACK[0x218] ^ 0xE1;
  LODWORD(STACK[0x32C]) = *&v96[4 * (BYTE1(v141) ^ 0x56)];
  LODWORD(v100) = *&v96[4 * (((v146 ^ v205) >> 8) ^ 0x4E)];
  v107 = *&v96[4 * (BYTE1(v143) ^ 0xEB)] ^ 0x5E2C5DD2;
  LODWORD(v27) = *&v96[4 * (BYTE1(v146) ^ 0x25)] ^ 0x79EAB3B;
  v108 = v105 ^ v27 ^ v98[v146 ^ 0x89];
  v109 = v98[v97];
  LODWORD(STACK[0x228]) = v98[v99];
  v110 = v6 ^ (v6 >> 7) ^ (v6 >> 3) ^ v108 ^ (4 * v27) & 0xD6881A48;
  v111 = v98[v103];
  LODWORD(STACK[0x230]) = v98[v106];
  LODWORD(v106) = v98[v143 ^ 0xDELL];
  LODWORD(v41) = v25 ^ (v25 >> 7) ^ (v25 >> 3) ^ v66 ^ 0x27519B23;
  LODWORD(v93) = v100 ^ 0x36625D96;
  HIDWORD(v51) = v167;
  LODWORD(v51) = v167;
  LODWORD(v100) = v131 ^ v161 ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ (((4 * v161) ^ 0xE3B5BA9C) + 517042684) ^ v36 ^ (v36 >> 2) ^ (v36 >> 3);
  HIDWORD(v51) = v175;
  LODWORD(v51) = v175;
  v112 = v136 ^ v162 ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ (((4 * v162) ^ 0xE3B5BA9C) + 517042684) ^ v92 ^ (v92 >> 2) ^ (v92 >> 3);
  HIDWORD(v51) = v191;
  LODWORD(v51) = v191;
  LODWORD(v95) = v157 ^ LODWORD(STACK[0x2B4]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v123 ^ v126 ^ (v126 >> 2) ^ (v126 >> 3);
  LODWORD(v22) = (v100 ^ 0x8C4E03E8) - 755382980;
  v113 = v98[(v146 ^ v205) ^ 0x61] ^ v93 ^ (4 * v93) & 0xD6881A48 ^ ((v41 & 0xADF966F9 ^ 0x78771FE) & (v41 & 0x52069906 ^ 0xBDFBFFFF) | v41 & 0x50008800);
  HIDWORD(v51) = v194;
  LODWORD(v51) = v194;
  LODWORD(v6) = LODWORD(STACK[0x2BC]) ^ v160 ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v125 ^ v129 ^ (v129 >> 2) ^ (v129 >> 3) ^ 0x6557685F;
  HIDWORD(v51) = v192;
  LODWORD(v51) = v192;
  LODWORD(v93) = v156 ^ LODWORD(STACK[0x2B8]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v124 ^ v127 ^ (v127 >> 2) ^ (v127 >> 3);
  HIDWORD(v51) = v195;
  LODWORD(v51) = v195;
  LODWORD(v41) = v165 ^ LODWORD(STACK[0x2C0]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v128 ^ v130 ^ (v130 >> 2) ^ (v130 >> 3);
  LODWORD(STACK[0x2B4]) = v22;
  LODWORD(v22) = v22 + (v112 ^ 0x5F943D68);
  LODWORD(v68) = v93 ^ 0xB0B59057;
  LODWORD(STACK[0x2C0]) = v22;
  LODWORD(STACK[0x218]) = v95 ^ 0x5262B203;
  LODWORD(v93) = v22 + (v95 ^ 0x5262B203);
  LODWORD(STACK[0x2BC]) = v93;
  LODWORD(v22) = (v41 ^ 0x5E175D3D) + v93 - v6 + v68 - 665966622;
  LODWORD(v41) = LODWORD(STACK[0x240]) ^ (LODWORD(STACK[0x240]) >> 7) ^ (LODWORD(STACK[0x240]) >> 3) ^ v102 ^ v111 ^ LODWORD(STACK[0x238]) ^ (4 * v102) & 0xD6881A48;
  v114 = LODWORD(STACK[0x250]) ^ (LODWORD(STACK[0x250]) >> 7) ^ (LODWORD(STACK[0x250]) >> 3);
  LODWORD(STACK[0x250]) = v22;
  LODWORD(v68) = v22 + (v41 ^ 0x34E0FDF3);
  LODWORD(STACK[0x2B8]) = v68 - 1755146588;
  HIDWORD(v51) = v196;
  LODWORD(v51) = v196;
  LODWORD(v36) = v114 ^ LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x260]) ^ v109 ^ (4 * LODWORD(STACK[0x260])) & 0xD6881A48;
  v170 = v132 ^ LODWORD(STACK[0x2D0]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ v169 ^ ((v51 >> 14) >> 5) ^ v140 ^ (v140 >> 2) ^ (v140 >> 3);
  HIDWORD(v51) = v197;
  LODWORD(v51) = v197;
  LODWORD(v98) = v174 ^ LODWORD(STACK[0x2C8]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v133 ^ v139 ^ (v139 >> 2) ^ (v139 >> 3);
  HIDWORD(v51) = v199;
  LODWORD(v51) = v199;
  LODWORD(v103) = LODWORD(STACK[0x2CC]) ^ v179 ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v137 ^ v149 ^ (v149 >> 2) ^ (v149 >> 3) ^ 0x2A184B80;
  HIDWORD(v51) = v198;
  LODWORD(v51) = v198;
  LODWORD(v96) = v172 ^ LODWORD(STACK[0x2C4]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v134 ^ v144 ^ (v144 >> 2) ^ (v144 >> 3);
  HIDWORD(v51) = v201;
  LODWORD(v51) = v201;
  LODWORD(v25) = v183 ^ LODWORD(STACK[0x2D4]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v138 ^ v155 ^ (v155 >> 2) ^ (v155 >> 3);
  v115 = STACK[0x358];
  v184 = LODWORD(STACK[0x264]) ^ (LODWORD(STACK[0x264]) >> 7) ^ (LODWORD(STACK[0x264]) >> 3) ^ LODWORD(STACK[0x25C]) ^ v107 ^ v106 ^ (4 * v107) & 0xD6881A48;
  HIDWORD(v51) = v202;
  LODWORD(v51) = v202;
  LODWORD(v95) = v185 ^ LODWORD(STACK[0x2D8]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v142 ^ v159 ^ (v159 >> 2) ^ (v159 >> 3);
  HIDWORD(v51) = v204;
  LODWORD(v51) = v204;
  v116 = v189 ^ LODWORD(STACK[0x2E0]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v153 ^ LODWORD(STACK[0x328]) ^ (LODWORD(STACK[0x328]) >> 2) ^ (LODWORD(STACK[0x328]) >> 3);
  HIDWORD(v51) = v203;
  LODWORD(v51) = v203;
  LODWORD(v41) = v187 ^ (v51 >> 14) ^ LODWORD(STACK[0x2DC]) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v147 ^ v145;
  HIDWORD(v51) = v206;
  LODWORD(v51) = v206;
  LODWORD(v100) = v41 ^ (v145 >> 2) ^ (v145 >> 3);
  LODWORD(STACK[0x2D8]) = v68 + 1600991357;
  LODWORD(v36) = v68 + 1600991357 - (v36 ^ 0x82872BB2);
  LODWORD(v41) = LODWORD(STACK[0x294]) ^ 0x53F74EFE;
  LODWORD(STACK[0x2DC]) = v36;
  LODWORD(v41) = v36 - v41;
  LODWORD(STACK[0x2E0]) = v41;
  LODWORD(v41) = v41 + (v170 ^ 0x56799F9D) - (v135 ^ (v135 >> 3) ^ (v135 >> 2) ^ v151 ^ 0x90094E07);
  LODWORD(STACK[0x2D0]) = v41;
  v190 = v51 >> 25;
  LODWORD(v41) = v41 - 1827753727 - (LODWORD(STACK[0x290]) ^ 0xF7DE0840);
  LODWORD(STACK[0x2CC]) = v41;
  LODWORD(STACK[0x208]) = v190 ^ 0x99C512A1;
  LODWORD(STACK[0x328]) = v41 + 182597177 + (v190 ^ 0x99C512A1);
  LODWORD(v41) = v41 + 182597177 + (v190 ^ 0x99C512A1) - 1858909454;
  v117 = LODWORD(STACK[0x330]) ^ 0xA2C8400E;
  LODWORD(STACK[0x2D4]) = v41;
  LODWORD(v41) = v41 + v117;
  LODWORD(STACK[0x264]) = v41;
  v118 = v41 - (v98 ^ 0xD8ACD942);
  LODWORD(STACK[0x260]) = v118;
  LODWORD(v106) = v118 - v103;
  LODWORD(v41) = v118 - v103 + 1079833442;
  LODWORD(STACK[0x2C8]) = v41;
  LODWORD(v41) = v41 + (v96 ^ 0x977997B);
  LODWORD(STACK[0x2C4]) = v41;
  v119 = v41 + (v25 ^ 0xF93449ED);
  LODWORD(STACK[0x364]) = -885864987;
  v120 = (v184 ^ 0x1E4A839A) - 1202608886 + v119 - (v95 ^ 0x2CDC16E4) - (v116 ^ 0x3E1B4A09) + 1914626306 - (v113 ^ 0x8BFFDDF2) + (v100 ^ 0x2D89309A);
  HIDWORD(v51) = v209;
  LODWORD(v51) = v209;
  LODWORD(STACK[0x304]) ^= v241 ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v229 ^ v244 ^ (v244 >> 2) ^ (v244 >> 3);
  HIDWORD(v51) = v213;
  LODWORD(v51) = v213;
  LODWORD(STACK[0x308]) ^= v248 ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v239 ^ v251 ^ (v251 >> 2) ^ (v251 >> 3);
  HIDWORD(v51) = v246;
  LODWORD(v51) = v246;
  LODWORD(STACK[0x30C]) = v253 ^ LODWORD(STACK[0x2FC]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ v219 ^ LODWORD(STACK[0x200]) ^ (LODWORD(STACK[0x200]) >> 2) ^ (LODWORD(STACK[0x200]) >> 3);
  LODWORD(STACK[0x2FC]) = v119 ^ 0xF4D297F0;
  LODWORD(STACK[0x300]) = v106;
  LODWORD(STACK[0x2F8]) = v120;
  LODWORD(v106) = v120 - 664819934 + (v110 ^ 0x1B2812D9);
  HIDWORD(v51) = v216;
  LODWORD(v51) = v216;
  LODWORD(STACK[0x320]) = LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x314]) ^ (v51 >> 14) ^ ((v51 >> 14) >> 2) ^ ((v51 >> 14) >> 5) ^ LODWORD(STACK[0x2AC]) ^ LODWORD(STACK[0x2A8]) ^ (LODWORD(STACK[0x2A8]) >> 2) ^ (LODWORD(STACK[0x2A8]) >> 3);
  STACK[0x448] = 0;
  STACK[0x450] = 0x6F1F52B07D899AFCLL;
  STACK[0x3B0] = 0;
  STACK[0x3F8] = 0;
  STACK[0x380] = 0x7D79982B90C8BFA0;
  STACK[0x3E0] = 0;
  STACK[0x370] = 0;
  STACK[0x378] = 0;
  STACK[0x368] = 0;
  STACK[0x418] = 0;
  STACK[0x420] = 0;
  STACK[0x3A0] = 0;
  HIDWORD(v51) = v225;
  LODWORD(v51) = v225;
  LODWORD(v96) = v51 >> 14;
  STACK[0x438] = 0x461E6230EBFA3204;
  STACK[0x440] = 0;
  STACK[0x390] = 0;
  STACK[0x3C0] = 0;
  STACK[0x398] = 0x417E989A56845D1DLL;
  STACK[0x458] = 0;
  STACK[0x460] = 0;
  STACK[0x3E8] = 0;
  STACK[0x388] = 0;
  STACK[0x3D8] = 0;
  STACK[0x3B8] = 0;
  STACK[0x3A8] = 0;
  STACK[0x3D0] = 0;
  STACK[0x468] = 0;
  STACK[0x430] = 0;
  STACK[0x428] = 0;
  STACK[0x408] = 0;
  STACK[0x410] = 0;
  STACK[0x3C8] = 0;
  HIDWORD(v51) = v223;
  LODWORD(v51) = v223;
  LODWORD(v25) = v51 >> 14;
  LODWORD(STACK[0x2AC]) = (4 * LODWORD(STACK[0x28C])) ^ 0xE3B5BA9C;
  LODWORD(STACK[0x278]) = (4 * LODWORD(STACK[0x288])) ^ 0xE3B5BA9C;
  LODWORD(STACK[0x2A8]) = (4 * LODWORD(STACK[0x284])) ^ 0xE3B5BA9C;
  HIDWORD(v51) = v234;
  LODWORD(v51) = v234;
  LODWORD(STACK[0x200]) = (v93 - v6) & v6;
  LODWORD(STACK[0x25C]) = v106 - 84622844;
  LODWORD(STACK[0x31C]) = v106;
  LODWORD(STACK[0x324]) = v181 ^ v227 ^ (v181 >> 2) ^ (v181 >> 3) ^ v232 ^ 0x59025420 ^ (v120 - 664819934);
  v121 = *(v115 + 8 * (v200 - 6789));
  LODWORD(STACK[0x318]) = v96;
  LODWORD(STACK[0x240]) = LODWORD(STACK[0x33C]) >> 2;
  LODWORD(STACK[0x310]) = v25;
  LODWORD(STACK[0x314]) = v51 >> 14;
  LODWORD(STACK[0x2E4]) = LODWORD(STACK[0x334]) >> 7;
  LODWORD(STACK[0x24C]) = 4 * LODWORD(STACK[0x2B0]);
  LODWORD(STACK[0x2F4]) = LODWORD(STACK[0x338]) >> 7;
  LODWORD(STACK[0x238]) = 4 * LODWORD(STACK[0x268]);
  LODWORD(STACK[0x224]) = 4 * LODWORD(STACK[0x32C]);
  return v121(2889041586);
}

uint64_t sub_1006E6C5C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  STACK[0x218] = a3;
  v5 = *(v4 + 8 * ((7426 * (v3 < 0x9364DB2C)) ^ (v3 - 1730413768)));
  STACK[0x220] = a2;
  return v5();
}

uint64_t sub_1006E7158@<X0>(int a1@<W8>)
{
  v4 = (*(STACK[0x80C8] + 8) + (((((a1 + 1684963330) & 0x9B91338E) - 7629) ^ 0x1422) * v3 + 87073225) % (*(STACK[0x80C8] + 32) - 5));
  v5 = *v4;
  v6 = (STACK[0x8930] + (v2 - 563106077));
  v7 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x72D7ACF8));
  v8 = *v6;
  v9 = 1864610357 * ((1864610357 * ((v7 ^ v4) & 0x7FFFFFFF)) ^ ((1864610357 * ((v7 ^ v4) & 0x7FFFFFFF)) >> 16));
  v10 = 1864610357 * ((1864610357 * ((v7 ^ v6) & 0x7FFFFFFF)) ^ ((1864610357 * ((v7 ^ v6) & 0x7FFFFFFF)) >> 16));
  LODWORD(v9) = (v5 ^ v8 ^ *(STACK[0x7C8] + (v9 >> 24)) ^ *((v9 >> 24) + STACK[0x7C0] + 2) ^ *((v9 >> 24) + STACK[0x7D0] + 4) ^ *(STACK[0x8A0] + (v10 >> 24)) ^ *((v10 >> 24) + STACK[0x898] + 3) ^ *((v10 >> 24) + STACK[0x8A8] + 2) ^ v9 ^ v10 ^ (13 * BYTE3(v9)) ^ (27 * BYTE3(v10)) ^ 0xE4);
  v11 = STACK[0x3E40];
  LODWORD(v9) = (((v9 ^ 0x776647C5) - 2003191749) ^ ((v9 ^ 0xD6084384) + 704101500) ^ ((v9 ^ 0xA16E04A5) + 1586625371)) + 228;
  *v11 = v9;
  LODWORD(STACK[0x3E80]) = v1 + 1;
  STACK[0x7198] = (v11 + 1);
  LODWORD(STACK[0x13F4]) = v2 - 563106076;
  v12 = (v9 ^ 0x7FDEF3F7) + ((2 * v9) & 0xFFBDE7EE);
  LODWORD(STACK[0x4AD8]) = v12 - 1887568864;
  LODWORD(STACK[0x3D0C]) = *(STACK[0x80C8] + 32) + 2052581033;
  LODWORD(v11) = v2 + 1106351289 + v12 - 1887568864;
  v13 = (((LODWORD(STACK[0x7FF8]) ^ 0xE6893E6C) + 427213204) ^ ((LODWORD(STACK[0x7FF8]) ^ 0x33628224) - 862093860) ^ ((LODWORD(STACK[0x7FF8]) ^ 0x3C3E7B59) - 1010727769)) + 1555340541;
  v14 = v11 < 0x72DED5EC;
  v15 = v11 > v13;
  if (v13 < 0x72DED5EC != v14)
  {
    v15 = v14;
  }

  if ((v12 - 2145317900) < 0xFFFFFFEB)
  {
    v15 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((52240 * v15) ^ a1)))();
}

uint64_t sub_1006E7448()
{
  v1 = STACK[0xF18];
  v2 = *(STACK[0xF18] + 8 * v0);
  STACK[0xED0] = v2;
  STACK[0x8F00] = v2;
  return (*(v1 + 8 * ((v0 + 10395 + ((v0 - 510) | 0xC40)) ^ (19741 * ((v0 ^ 0x8942E75C) < 0x68FE2400)))))();
}

uint64_t sub_1006E74F8(uint64_t a1)
{
  v4 = v2;
  v6 = v1 & 0xE79FD7ED;
  *a1 = v4 ^ 0x19FEBB69;
  *(a1 + 16) = 0;
  *(a1 + 4) = 0x21E23A8900000000;
  v7 = (*(v3 + 8 * (v1 & 0xE79FD7ED ^ 0x8D7C)))(((v4 ^ 0x19FEBB69) << ((((v1 & 0xED) + 44) | 0x42) - 79)) ^ 0x4EAE3888u);
  *(a1 + 16) = v7;
  return (*(v3 + 8 * ((4070 * (v7 == 0)) ^ v6)))();
}

uint64_t sub_1006E75A0()
{
  v1 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xB4F5 ^ (138 * (v0 ^ 0xE7E)))))();
}

uint64_t sub_1006E760C(double a1, __n128 a2, uint64_t a3, int a4)
{
  a2.n128_u16[0] = -30327;
  a2.n128_u8[2] = -119;
  a2.n128_u8[3] = -119;
  a2.n128_u8[4] = -119;
  a2.n128_u8[5] = -119;
  a2.n128_u8[6] = -119;
  a2.n128_u8[7] = -119;
  return (*(v5 + 8 * a4))(v4 - 8, xmmword_100F523B0, a2);
}

uint64_t sub_1006E7654@<X0>(unsigned int a1@<W8>)
{
  v2 = (((LODWORD(STACK[0x8538]) ^ 0xDEF19B64) + 554591388) ^ ((LODWORD(STACK[0x8538]) ^ 0xA01BFB08) + 1608779000) ^ ((LODWORD(STACK[0x8538]) ^ (v1 - 505103808) & 0x1E1AF7EB ^ 0x973FE496) + 1757436035)) + 305926783;
  v3 = v2 < 0x28664B6E;
  v4 = a1 + (v1 ^ 0x1291) + 677759040 < v2;
  if (a1 > 0xD799B491 != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((951 * v4) ^ v1)))();
}

uint64_t sub_1006E7804@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 16 * v2) = v3;
  *(*(v1 + 40) + 16 * (((v5 - 66) | 1) + (*(v1 + 32))++ - 94) + 8) = *(a1 + 8);
  return (*(STACK[0xF18] + 8 * v5))();
}

uint64_t sub_1006E789C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xA8C1)))(1028);
  v3 = STACK[0x358];
  STACK[0x390] = v2;
  return (*(v3 + 8 * (((v2 == 0) * (v0 ^ 0xD7DC ^ ((v0 + 17116) | 0x100E))) ^ v0)))();
}

uint64_t sub_1006E7908()
{
  v7 = v1 - 1778817150;
  if ((v1 - 1778817150) >= 0x19)
  {
    v8 = -1778817175;
  }

  else
  {
    v8 = -1778817150;
  }

  v9 = ((v0 + 4) ^ 0x4BAF) + v1 + v8 - ((((((v0 + 4) ^ 0x4BAF) + v1 + v8) * v2) >> 32) >> 3) * v3;
  v10 = *(v4 + 4 * v7) - 686988095 * *(v5 + 4 * v9);
  *(v4 + 4 * v7) = v10;
  *(v5 + 4 * v9) += 478674045 * v10;
  return (*(v6 + 8 * (v0 | (4 * (v1 == 1778817181)))))();
}

uint64_t sub_1006E7F0C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = a2 - 20275;
  *(a1 + 16 * v3 + 8) = ((v4 + 30042) + 0x981390CC637CA1CLL) ^ *(v2 + 20);
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_1006E7FA8()
{
  v1 = v0 - 1151;
  v2 = v0 - 66;
  v3 = v0 + 121;
  if (STACK[0x62D8])
  {
    v4 = STACK[0x41F0] == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((53 * ((v5 ^ (v3 ^ v2)) & 1)) ^ v1)))();
}

uint64_t sub_1006E80C8()
{
  v2 = STACK[0x7248];
  v3 = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  v4 = 139493411 * ((~(&STACK[0x10000] + 3800) & 0x1135BF67 | (&STACK[0x10000] + 3800) & 0xEECA4098) ^ 0x1D185E22);
  LOWORD(STACK[0x10EFC]) = -32733 * ((~(&STACK[0x10000] + 3800) & 0xBF67 | (&STACK[0x10000] + 3800) & 0x4098) ^ 0x5E22) + 27993;
  LODWORD(STACK[0x10EF8]) = v4 + 1945538087 * v0 + 777031789 + v1 + 36510;
  STACK[0x10EF0] = v3;
  LODWORD(STACK[0x10ED8]) = v1 - v4 + 39488;
  STACK[0x10EE0] = &STACK[0x7EA8];
  LODWORD(STACK[0x10EE8]) = v4 - 215655622;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 46075)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x26B0]) = STACK[0x10F00];
  STACK[0x8FE8] = *(v2 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v0;
  LODWORD(STACK[0x7FD8]) = 1954115685;
  LODWORD(STACK[0x704C]) = -2116087598;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_1006E8348(int a1)
{
  v4 = v2 - 0x22EE7697D63E0172;
  v5 = v1 - 0x22EE7697D63E0172;
  v6 = (v5 < 0xB35F4056) ^ (v4 < ((a1 - 5245) | 0x5090u) + 3009342406u);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < ((a1 - 5245) | 0x5090u) + 3009342406u;
  }

  return (*(v3 + 8 * ((173 * v7) ^ a1)))();
}

uint64_t sub_1006E8428@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, unint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v40 = (17 * v28 + v36) ^ v23;
  v41 = (*(v30 + 4 * v40) ^ v27) + HIDWORD(a4);
  v42 = *(v26 + 4 * v40);
  v43 = HIDWORD(v34) + v41 + ((((v42 ^ v38) + v39) ^ ((v42 ^ a7) + v37) ^ ((v42 ^ a1) + a5)) + v27) * v32;
  *(v30 + 4 * ((((v23 ^ v24) + v31) ^ ((v23 ^ 0x49C39C21) - 1237556257) ^ ((v23 ^ a6) + 1263086246)) - 1169964264)) = v43 - ((2 * v43) & 0x6DBFDC0A) + v27;
  v44 = (((v23 ^ 0xAE1491E1) + 1374383647) ^ ((v23 ^ 0xF29F05BA) + 224459334) ^ ((v23 ^ 0xE6C85742) + 423078078)) + 881740050;
  v45 = ((v44 ^ 0xE2E89C3D) + 1734207035) ^ v44 ^ ((v44 ^ 0xB2C879A4) + 930939812) ^ ((v44 ^ 0x34959F9A) - 1323244130) ^ ((v44 ^ 0x1EFFFFFB) - 1689614851);
  LODWORD(v42) = (((v45 ^ 0x75DFFCFE) + 1244218849) ^ ((v45 ^ 0xEC1584A1) - 740082240) ^ ((v45 ^ 0xE380FDA7) + v29)) + v33;
  v46 = (a3 > -1121802476) ^ (v42 < v35);
  v47 = v42 < v25;
  if (v46)
  {
    v47 = a3 > -1121802476;
  }

  return (*(a23 + 8 * ((45779 * v47) ^ a2)))();
}

uint64_t sub_1006E863C@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + 965345310;
  *v1 = STACK[0x330];
  v5 = STACK[0x2E0];
  v1[1] = *(STACK[0x2E0] + 80);
  *(v5 + 80) = a1;
  *(v1[1] + 24) = a1;
  *(v1 - 2) = ((v4 + 1247242089) & 0x7C1EDDFF) - *(v1 - 2) + 0x79C4BC1D8A3FA8F3;
  return (*(v3 + 8 * ((16900 * (v4 < 0x9883CF00)) ^ (v4 - 965348627))))();
}

uint64_t sub_1006E8710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v64 = *(v61 + 8 * a7);
  v62 = a61 & 0x3F;
  *(&a52 + v62) = -33;
  return (*(v61 + 8 * ((38226 * (v62 > HIDWORD(a20))) ^ a20)))(a1, a2, a3, a4, a5, 989400312, a6, 777287484, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v64);
}

uint64_t sub_1006E878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v6 <= 0x40)
  {
    v6 = v7;
  }

  return (*(v8 + 8 * (((v5 ^ 0xFFFF9C11) + v6 >= ((v5 + 513) ^ 0xC5FBBAF0) + v4) ^ v5)))(a1, a2, a3, a4, 0);
}

uint64_t sub_1006E87D8()
{
  STACK[0x2D8] = *(v1 + 8 * v0);
  STACK[0x388] = v2;
  return (*(v1 + 8 * (v0 ^ (52996 * (*(v2 + 24) == -371865839)) ^ 0x424A ^ (v0 + 24559) ^ 0x60AD)))();
}

uint64_t sub_1006E884C@<X0>(int a1@<W8>)
{
  v2 = STACK[0xF10] ^ 0x89BC;
  v3 = STACK[0xF10] - 29459;
  LODWORD(STACK[0x709C]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 + 8964) * (v1 == a1)) ^ v3)))();
}

uint64_t sub_1006E88D4(int a1, uint64_t a2)
{
  v5 = v4[396] ^ ((*v4 & ((v2 + 8300) ^ 0x7FFF9331) | v4[623] & 0x80000000) >> 1);
  v4[623] = (v5 - ((2 * v5) & 0x938AC4AC) + a1) ^ *(a2 + 4 * (((9 * (v2 ^ 0x4074)) ^ 0x6CCEu) & *v4));
  return (*(v3 + 8 * ((58865 * (LODWORD(STACK[0x2C4]) > 0x26F)) ^ v2)))();
}

uint64_t sub_1006E8994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  LODWORD(STACK[0x18B8]) = v5;
  return (*(v8 + 92960))(STACK[0x19F0], 3976926506, 371891407, 55, 95, 2525398098, 4294967274, 2525398095);
}

uint64_t sub_1006E8BC8()
{
  (*(v2 + 8 * (v0 ^ 0xD796u)))(STACK[0x1F28]);
  STACK[0x1F28] = 0;
  v4 = *(STACK[0xCD8] + 280);
  *(v3 - 256) = v0 - 1012831759 * (((v1 | 0xCAF06447) - (v1 | 0x350F9BB8) + 890215352) ^ 0xDA6372CD) + 29525;
  *(v3 - 224) = &STACK[0x1574];
  *(v3 - 232) = &STACK[0x1F28];
  *(v3 - 248) = v4;
  v5 = (*(v2 + 8 * (v0 ^ 0xD66Cu)))(v3 - 256);
  return (*(v2 + 8 * (((*(v3 - 240) == 17 * (v0 ^ 0x1B6C) - 371893362) * (752 * (v0 ^ 0x1D0E) - 3849)) ^ v0)))(v5);
}

uint64_t sub_1006E8E68()
{
  v2 = LODWORD(STACK[0x1A6C]) + LODWORD(STACK[0x1D9C]) + ((v0 + 538961069) | 0x42404052) - 1109393380;
  v3 = (((LODWORD(STACK[0x1B1C]) ^ 0x38DDD6CD) - 954062541) ^ ((LODWORD(STACK[0x1B1C]) ^ 0x8E0B0422) + 1911880670) ^ ((LODWORD(STACK[0x1B1C]) ^ 0x5F0315FE) - 1594037758)) - 1628015594;
  v4 = (v2 < 0xB520AD05) ^ (v3 < 0xB520AD05);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0xB520AD05;
  }

  return (*(v1 + 8 * ((62 * v5) ^ v0)))();
}

uint64_t sub_1006E918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v11 < 0x488AC31F;
  *(v10 + v9) = 0;
  if (v13 == (v8 ^ 0x5891uLL) + v9 > 0xFFFFFFFFB7753CE0)
  {
    v13 = v9 + 1217053472 < v11;
  }

  return (*(a8 + 8 * ((!v13 * v12) ^ v8)))();
}

uint64_t sub_1006E9244(unint64_t a1)
{
  STACK[0x1F28] = a1;
  LODWORD(STACK[0x1574]) = *STACK[0x18D8] - ((2 * *STACK[0x18D8]) & 0xD3AB8E22) - 371865839;
  v4 = STACK[0x13F0];
  *(v3 - 248) = *STACK[0x13F0];
  *(v3 - 256) = LODWORD(STACK[0x3EC]) ^ (906386353 * ((2 * ((v1 ^ 0xC0503709) & 0x56B478F9) - (v1 ^ 0xC0503709) + 692815618) ^ 0xD81A7D2F));
  (*(v2 + 8 * LODWORD(STACK[0x3E8])))(v3 - 256);
  v5 = STACK[0x19B8];
  v4[2] = *(STACK[0x19B8] + 48);
  v4[3] = *(v5 + 56);
  *(v3 - 256) = *v4;
  *(v3 - 248) = 155453101 * ((~v1 & 0xD1AAB766 | v1 & 0x2E554898) ^ 0x378CACA9) + 296788746;
  (*(v2 + 8 * LODWORD(STACK[0x3E4])))(v3 - 256);
  v6 = STACK[0x1DA8];
  v7 = 297845113 * (((v1 | 0x97E79AD5) - (v1 | 0x6818652A) + 1746429226) ^ 0xE0D4864B);
  *(v3 - 240) = v4;
  LOBYTE(STACK[0x2F4C]) = v7 + 11;
  *(v3 - 256) = 9479 - v7;
  *(v3 - 252) = v7 + v6 + 728389906;
  v8 = (*(v2 + 8 * LODWORD(STACK[0x3E0])))(v3 - 256);
  return (*(v2 + 258864))(v8);
}

uint64_t sub_1006E93FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, char a41, char a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49)
{
  *(a17 + 19) = a47;
  *(a17 + 18) = a46;
  *(a17 + 10) = a49;
  *(a17 + 2) = a48;
  *(a17 + 1) = a42;
  *a17 = a41;
  return (*(v50 + 8 * v49))();
}

uint64_t sub_1006E961C()
{
  STACK[0x790] = 3999510726;
  STACK[0x2580] = v0;
  v2 = STACK[0x1428];
  v3 = &STACK[0x2720] + STACK[0x1428];
  STACK[0x2588] = (v3 + 256);
  STACK[0x2590] = (v3 + 288);
  STACK[0x2598] = (v3 + 304);
  STACK[0x1428] = v2 + 320;
  v4 = STACK[0x2AC];
  (*(v1 + 8 * LODWORD(STACK[0x2AC])))(0x100FD03F0, v3, 256);
  (*(v1 + 8 * v4))(*(&off_1010A0B50 + LODWORD(STACK[0x268])) - 1251473830, v3 + 256, 16);
  v5 = STACK[0x2A8];
  (*(v1 + 8 * LODWORD(STACK[0x2A8])))(*(&off_1010A0B50 + SLODWORD(STACK[0x2A4])) - 1951424891, v3 + 272, 16);
  (*(v1 + 8 * v5))(*(&off_1010A0B50 + LODWORD(STACK[0x2A0])) - 1758937507, v3 + 288, 16);
  (*(v1 + 8 * v4))(0x100ED1350, v3 + 304, 16);
  v6 = *(v0 + 8);
  STACK[0x7E0] = v6;
  STACK[0x25A0] = v6;
  v7 = *(v1 + 45832);
  STACK[0x7A0] = STACK[0x9F0];
  STACK[0x798] = v3;
  return v7(642420154, 1938312893);
}

uint64_t sub_1006E97DC()
{
  v1 = 2 * (((LODWORD(STACK[0x2548]) ^ 0xAE33A210) + 1158906232) ^ LODWORD(STACK[0x2548]) ^ ((LODWORD(STACK[0x2548]) ^ 0xEEA1275) + 1707749651) ^ ((LODWORD(STACK[0x2548]) ^ 0x49B1D002) + 579990374) ^ ((LODWORD(STACK[0x2548]) ^ 0x7DB7BCFF) + 379035545));
  v2 = ((LODWORD(STACK[0x20D4]) ^ 0xD9154318) + 652917992) ^ ((LODWORD(STACK[0x20D4]) ^ 0x6747A317) - 1732748055) ^ ((LODWORD(STACK[0x20D4]) ^ 0x5787271E) - 1468475166);
  LODWORD(STACK[0x1710]) = ((((v1 ^ 0x4900FF14) - 1224150468) ^ ((v1 ^ 0xA6666ED5) + 1483629563) ^ ((v1 ^ 0xC6D928F0) + 953230816)) - 544205885) * (v2 - 371865839) + 1220032542 * v2 + 1880674811;
  return (*(v0 + 40672))();
}

uint64_t sub_1006E9A54@<X0>(int a1@<W8>)
{
  v3 = *(&STACK[0x258] + (v1 - 7892) % 0x28u);
  v4 = *(&STACK[0x258] + (v1 + 43) % 0x28u);
  v5 = *(&STACK[0x258] + (a1 + 14462 + v1 + 28280) % 0x28u);
  *(v2 + 4 * v1 - 0x1065C7B54) = (v4 - ((2 * v4) & 0xE0) + 1633603696) & 0x1C0 ^ 0xEB70BE7F ^ ((((*(&STACK[0x258] + (v1 - 7891) % 0x28u) << 8) ^ 0x222E8561) & (((v5 << 24) | (v3 << 16)) ^ 0x7FAFFFE3) | ((v5 << 24) | (v3 << 16)) & 0xDDD10000) ^ 0xC95E3B5E) & ((v4 - ((2 * v4) & 0xE0) + 1633603696) ^ 0x9EA12F0F);
  return (*(STACK[0x228] + 8 * ((114 * (v1 == 1100423124)) ^ a1)))();
}

uint64_t sub_1006E9BA8(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, int a6)
{
  v7.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v7.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v8.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v8.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v6 + 8 * ((a6 ^ 0x62608F66) - 1650490880)))(a1, a6 ^ 0xCFB6u, (a6 ^ 0x62608F66u) - 1650490893, a2, a3, a4, v7, v8);
}

uint64_t sub_1006E9C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v82 = ((2 * ((a68 + (v73 + 533806338) * a69) % 0x81u)) & 0x1DE) + (((a68 + (v73 + 533806338) * a69) % 0x81u) ^ 0x73EC7BFFFA7F36EFLL);
  v83 = (v78 + 4 * (v82 + a6));
  v84 = __CFADD__(v82 + a6, 125);
  v86 = (v70 + 4 * v82 + 0x304E100016032444);
  v87 = (2 * (v73 ^ 0xA471D010)) & 0x612 ^ 0x212 ^ ((2 * (v73 ^ 0xA471D010)) ^ 0xF806B024) & (v73 ^ 0xA471D010);
  if (!v84)
  {
    v86 = v83;
  }

  v85 = (((2 * (v73 & 0x202)) ^ 0x48024400) & (v73 ^ 0xA471D010) | 0x27002A28) ^ (v73 & 0x202 | ((((v73 & 0x202) >> 9) & 1) << 10));
  v88 = (4 * v85) & 0x40026E10 ^ v85 ^ ((4 * v85) ^ 0xD402C0A0) & v87;
  v89 = (4 * v87) & v79 ^ 0x18024612 ^ ((4 * v87) ^ 0x280BD048) & v87;
  v90 = (16 * v88) & v79 ^ v88 ^ ((16 * v88) ^ 0x70002280) & v89;
  v91 = (16 * v89) & v80 ^ 0x58000E12 ^ ((16 * v89) ^ 0x8026E120) & v89;
  v92 = v90 ^ (v90 << 8) & v80 ^ ((v90 << 8) ^ 0x202800) & v91 ^ 0x2F02663A;
  v93 = v73 ^ (2 * (((v92 << 16) ^ 0x6E120000) & ((v91 << 8) & a7 ^ 0x58000000 ^ ((v91 << 8) ^ 0x26E0000) & v91) ^ v92 ^ ((v92 << 16) & a7 | 0x6E10))) ^ 0xE4B5A9B6;
  v94 = (((v93 ^ 0xFB85774D344C5A56) + 0x47A88B2CBB3A5AALL) ^ ((v93 ^ 0x115E87DA8A5F17A5) - 0x115E87DA8A5F17A5) ^ ((v93 ^ 0xEADBF09786D55A43) + 0x15240F68792AA5BDLL)) * a5 + 0x2C3960FFD127BC57;
  v95 = ((2 * (v94 ^ 0xDA93CE3EC382CE00)) ^ 0xD1E37888173C14F2) & (v94 ^ 0xDA93CE3EC382CE00) ^ (2 * (v94 ^ 0xDA93CE3EC382CE00)) & v77;
  v96 = (v94 ^ 0xBA536A7AC39AC670) & (2 * (v94 & 0xB262727AC81CC479)) ^ v94 & 0xB262727AC81CC479;
  v97 = v95 ^ 0x2810844408820A09;
  v98 = (v95 ^ 0x4081180000140060) & (4 * v96) ^ v96;
  v99 = ((4 * v97) ^ 0xA3C6F1102E7829E4) & v97 ^ (4 * v97) & v77;
  v100 = (((*v86 ^ 0xAD3531B4) + 1389022796) ^ ((*v86 ^ 0xBF13B7B) - 200358779) ^ ((*v86 ^ 0x9354769E) + 1823181154)) - 1988481079;
  v101 = (v99 ^ 0x20C0B0000A180860) & (16 * v98) ^ v98;
  v102 = ((16 * (v99 ^ 0x48310C4401860219)) ^ 0x8F1BC440B9E0A790) & (v99 ^ 0x48310C4401860219) ^ (16 * (v99 ^ 0x48310C4401860219)) & 0x68F1BC440B9E0A50;
  v103 = (v102 ^ 0x811844009800200) & (v101 << 8) ^ v101;
  v104 = (((v102 ^ 0x60E03804021E0869) << 8) ^ 0xF1BC440B9E0A7900) & (v102 ^ 0x60E03804021E0869) ^ ((v102 ^ 0x60E03804021E0869) << 8) & 0x68F1BC440B9E0800;
  v105 = v94 ^ (2 * (((v103 ^ 0x68F1BC440B9E0A79 ^ (v104 ^ 0x60B004000A0A0000) & (v103 << 16)) << 32) & v75 ^ v103 ^ 0x68F1BC440B9E0A79 ^ (v104 ^ 0x60B004000A0A0000) & (v103 << 16) ^ (((v103 ^ 0x68F1BC440B9E0A79 ^ (v104 ^ 0x60B004000A0A0000) & (v103 << 16)) << 32) ^ 0xB9E0A7900000000) & (((v104 ^ 0x841B84401940279) << 16) & v75 ^ 0x40B1B44000000000 ^ (((v104 ^ 0x841B84401940279) << 16) ^ 0x3C440B9E00000000) & (v104 ^ 0x841B84401940279))));
  v106 = ((v105 ^ 0x8955550A0672AB0ELL) - 0x63FA9927033756E8) ^ ((v105 ^ 0x8346175A0E9B266ELL) - 0x69E9DB770BDEDB88);
  v107 = __CFADD__((v106 ^ ((v105 ^ 0x78B25822D7C95DEBLL) + 0x6DE26BF02D735FF3)) * v74, 0xA955429C9F1714CBLL) + (((v106 ^ ((v105 ^ 0x78B25822D7C95DEBLL) + 0x6DE26BF02D735FF3)) * v74) >> 64) + ((a8 + __CFADD__(v105 ^ 0x8955550A0672AB0ELL, 0x9C0566D8FCC8A918)) ^ (a8 + __CFADD__(v105 ^ 0x8346175A0E9B266ELL, 0x96162488F4212478)) ^ (a8 + __CFADD__(v105 ^ 0x78B25822D7C95DEBLL, 0x6DE26BF02D735FF3))) * v74 + 358542225;
  v108 = 358542238 - v107 - ((((358542238 - v107) * v81) >> 32) >> 4) * v74;
  v109 = ((2 * v108) & 0x36) + (v108 ^ 0x7DFFF7E7EA3FD5DBLL);
  v110 = v109 - 0x7DFFF7E7EA3FD5DELL;
  v111 = (v72 + 4 * v109 + 0x80020605700A894);
  if (v110 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v111 = (v69 + 4 * v110);
  }

  v112 = v100 * (v73 - 59523582) - 1407824760 * v73;
  v113 = v107 - 358542189 - ((((v107 - 358542189) * v81) >> 32) >> 4) * v74;
  v114 = ((2 * v113) & 0x3C) + (v113 ^ 0xFEBBF9DEBFF5B9FELL);
  v115 = v114 + 0x1440621400A45FFLL;
  v116 = (v72 + 4 * v114 + 0x510188500291808);
  v117 = ((*v111 ^ 0x94D5C1C9) + 1797930551) ^ ((*v111 ^ 0x9CA9332D) + 1666632915) ^ ((*v111 ^ 0x7050490B) - 1884309771);
  if (v115 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v116 = (v69 + 4 * v115);
  }

  v118 = *v116 & 0x1F ^ 0xFLL;
  v119 = *(a4 + 4 * v118) - 114197132 * v117 + (v112 + 524486276) * (-2016197615 - v117);
  v120 = (((11 * v73 - 654759402) % 0x81u) ^ 0x5DD8FDFFFDAFCFFFLL) + 2 * ((11 * v73 - 654759402) % 0x81u);
  v121 = v120 - 0x5DD8FDFFFDAFD07CLL;
  v122 = v70 + 4 * v120 - 0x7763F7FFF6BF3FFCLL;
  *(a4 + 4 * v118) = v119 - 1144530100;
  if (v121 >= 0xFFFFFFFFFFFFFF83)
  {
    v123 = v122;
  }

  else
  {
    v123 = (v78 + 4 * v121);
  }

  v124 = ((*v123 ^ 0x51593302) - 1364800258) ^ ((*v123 ^ 0x69E41594) - 1776555412) ^ ((*v123 ^ 0xD2D5AC7) - 221076167);
  v125 = ((17 * v73 - 62) ^ 0x57) & (2 * ((17 * v73 - 62) & 0x60)) ^ (17 * v73 - 62) & 0x60;
  v126 = ((17 * v73 - 62) ^ (2 * ((v125 | 7) ^ ((2 * ((17 * v73 - 62) ^ 0x17)) ^ 0x80) & ((17 * v73 - 62) ^ 0x17) & (4 * v125)))) & 0x1F ^ 0xE;
  *(v76 + 4 * v126) += 2014252218 * (-v71 - 1167818786 * v124 + (v124 + 898661457) * (v73 + 1108295204)) + 1297775530;
  return (*(STACK[0x228] + 8 * (((32 * (v73 != 59523613)) | ((v73 != 59523613) << 6)) ^ a66)))();
}

uint64_t sub_1006EA50C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  STACK[0x2050] = v7;
  LODWORD(STACK[0xE20]) = a5;
  STACK[0xD00] = v6;
  v9 = (LODWORD(STACK[0x1580]) + 858529751) * (a4 - 1575347102) + 1353318196 * a4 - 2006829867;
  *(STACK[0x1968] + 48 * STACK[0xCF0] + 0x64141B82EA58CEA4) = LODWORD(STACK[0x19A4]) ^ v9 ^ ((v9 ^ 0xDC45EE7F) + 531022702) ^ ((v9 ^ 0x5BDEAD55) - 1740799928) ^ ((v9 ^ 0x44FCEE38) - 2027961557) ^ ((v9 ^ 0xFF7B7FFF) + 1016615662) ^ 0xD5C915FC;
  LODWORD(STACK[0x18B8]) = v5;
  LODWORD(STACK[0x177C]) += 4;
  return (*(v8 + 145656))();
}

uint64_t sub_1006EA644@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v3 + v4);
  v7 = v4 - 1;
  *(a1 + v7) = v6;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v2)))();
}

uint64_t sub_1006EA7B4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *(*(a5 + 8 * v6) + (v15 ^ (v5 ^ v14) ^ v9) + v10);
  *(v13 + v5) = v8 ^ ((((v17 >> 3) | (32 * v17)) & 0xF0) >> 4) ^ ((v17 >> 3) | (32 * v17)) ^ v11 ^ (((((v17 >> 3) | (32 * v17)) ^ v11) >> 6) | 0x58) ^ v12;
  return (*(v16 + 8 * (((v7 == 0) * a1) ^ a2)))();
}

uint64_t sub_1006EA8A0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x5308] = v3;
  LODWORD(STACK[0xB740]) = v2;
  STACK[0x2E18] = v5;
  STACK[0x2CB8] = a1;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4748] = v7;
  STACK[0x9860] = v7;
  STACK[0x94F0] = (v7 + 16);
  STACK[0x8D18] = (v7 + 32);
  STACK[0x7F30] = (v7 + 48);
  STACK[0x6460] = (v7 + 64);
  STACK[0x7690] = v6 + 112;
  LODWORD(STACK[0x5AF0]) = v1;
  LODWORD(STACK[0x4974]) = 0;
  LODWORD(STACK[0x307C]) = 1699451797;
  STACK[0x30E0] = 0;
  STACK[0x1718] = 0;
  STACK[0x4D98] = 0;
  STACK[0x4158] = 0;
  if (v3)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(STACK[0xF18] + 8 * ((116 * (((v4 + 90) ^ v9) & 1)) ^ v4)))();
}

uint64_t sub_1006EA9C4()
{
  v4 = 4 * v0;
  v5 = *(v3 + 4 * v0);
  v6 = veorq_s8(vmlaq_s32(vdupq_n_s32(0x73E7CCFCu), veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v5, vdupq_n_s32(0x2AEF9EC1u)), vdupq_n_s32(0xD510613F)), vaddq_s32(veorq_s8(v5, vdupq_n_s32(0xA43BA10B)), vdupq_n_s32(0x5BC45EF5u))), vaddq_s32(veorq_s8(v5, vdupq_n_s32(0xB54221FE)), vdupq_n_s32(0x4ABDDE02u))), vdupq_n_s32(0xE40D3CFB)), *(v2 + 4 * v0));
  v7 = veorq_s8(vmulq_s32(v6, vdupq_n_s32(0x1D17C115u)), v5);
  *(v3 + v4) = v7;
  *(v2 + v4) = veorq_s8(vmlaq_s32(vdupq_n_s32(0x6212ED3Cu), veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v7, vdupq_n_s32(0xE47EEB0E)), vdupq_n_s32(0x1B8114F2u)), vaddq_s32(veorq_s8(v7, vdupq_n_s32(0x4B3670D4u)), vdupq_n_s32(0xB4C98F2C))), vaddq_s32(veorq_s8(v7, vdupq_n_s32(0x94DE85EE)), vdupq_n_s32(0x6B217A12u))), vdupq_n_s32(0xC73E594B)), v6);
  return (*(STACK[0x228] + 8 * ((30682 * (v0 + 4 == (v1 - 15802) - 29334)) ^ v1)))();
}

uint64_t sub_1006EABF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = STACK[0x3AB8];
  v5 = 155453101 * ((((2 * &STACK[0x10ED8]) | 0xD38E947186FCDD54) - &STACK[0x10ED8] - 0x69C74A38C37E6EAALL) ^ 0xD5B014CD25587565);
  STACK[0x10EF8] = v1;
  LODWORD(STACK[0x10EE0]) = v5 + v2 + 14821;
  STACK[0x10EF0] = (((v2 + 24939) + 0x704C0EACF69645E8) ^ v4) - v5;
  STACK[0x10EE8] = v3 + v5;
  STACK[0x10ED8] = &STACK[0x34CC];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 41214)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_1006EAF94()
{
  v1 = STACK[0xF18];
  STACK[0x1968] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x3B1C ^ (v0 + 1762200495) & 0x96F6F47F)))();
}

uint64_t sub_1006EB16C@<X0>(char a1@<W0>, int a2@<W1>, __int16 a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, unint64_t a7@<X6>, int a8@<W7>, int a9@<W8>)
{
  v20 = *(v19 + ((((v9 - ((v9 << a1) & 0xF2) + 121) ^ v18) * a3) & 0x1FF ^ 0x100));
  v21 = v20 & a4 ^ 0xFC;
  v22 = 2899 * ((v20 ^ (2 * ((v20 ^ a5) & (2 * ((v20 ^ a5) & (2 * ((v20 ^ a5) & (2 * ((v20 ^ a5) & (2 * ((v20 ^ a5) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xD5) + 8882536;
  v23 = *(v17 + 4 * (v22 - (((13849149 * v22) >> 32) >> 5) * v14)) ^ 0xF374B66A;
  LOBYTE(v22) = *(v19 + ((BYTE2(v23) * a3) & 0x1FF));
  v24 = *(v19 + ((BYTE1(v23) * a3) & 0x1FF));
  v25 = *(v19 + ((HIBYTE(v23) * a3) & 0x1FF));
  v26 = v25 & v15 ^ 0xFA;
  v27 = v22 & v16 ^ 0x73;
  v28 = v24 & a4 ^ 0x7C;
  v29 = v25 ^ (2 * ((v25 ^ a5) & (2 * ((v25 ^ a5) & (2 * ((v25 ^ a5) & (2 * ((v25 ^ a5) & (2 * ((v25 ^ a5) & (2 * v26) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v30 = *(v19 + ((v23 * a3) & 0x1FF));
  v31 = v30 & 0xFFFFFF82 ^ 0x2E;
  v32 = (v30 ^ a5) & (2 * ((v30 ^ a5) & (2 * ((v30 ^ a5) & (2 * ((v30 ^ a5) & (2 * ((v30 ^ a5) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31;
  v33 = ((v22 ^ (2 * ((v22 ^ 0x36) & (2 * ((v22 ^ 0x36) & (2 * ((v22 ^ 0x36) & (2 * ((v22 ^ 0x36) & (2 * (((2 * (v27 ^ v22 & 0x22)) ^ 0x44) & (v22 ^ 0x36) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v16) << 8) | ((v29 ^ v15) << 16);
  *(v12 + 4 * (*(STACK[0xED0] + 4 * (v11 - v11 / 0x26C4 * v14)) ^ a7)) = a2 ^ ((v10 ^ ((((v24 ^ (2 * ((v24 ^ a5) & (2 * ((v24 ^ a5) & (2 * ((v24 ^ a5) & (2 * ((v24 ^ a5) & (2 * ((v24 ^ a5) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x9C2CF5) & ~v33 | v33 & 0x63D300) << 8)) & ((v30 ^ (2 * v32)) ^ v13) | (v30 ^ (2 * v32)) & a6);
  return (*(STACK[0xF18] + 8 * (((v9 != 255) * a8) ^ a9)))();
}

uint64_t sub_1006EB3F0()
{
  v1 = STACK[0xF18];
  STACK[0x1270] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 19751) ^ v0)))();
}

uint64_t sub_1006EB4BC@<X0>(char a1@<W0>, uint64_t a2@<X2>, int a3@<W3>, char a4@<W4>, uint64_t a5@<X6>, char a6@<W8>)
{
  v24 = (a4 ^ v8) & (2 * (a4 & v23)) ^ a4 & v23;
  v25 = ((2 * (a4 ^ a6)) ^ v9) & (a4 ^ a6) ^ (2 * (a4 ^ a6)) & (((a3 + a1) & v19) + v10);
  v26 = a4 ^ (2 * (((4 * (v25 ^ v11)) & v16 ^ v22 ^ ((4 * (v25 ^ v11)) ^ v12) & (v25 ^ v11)) & (16 * (v25 & (4 * v24) ^ v24)) ^ v25 & (4 * v24) ^ v24));
  v27 = a2 - 1;
  STACK[0x900] = v27;
  *(a5 + v27) = ((((v26 ^ v20) + 5) ^ ((v26 ^ v7) + v6) ^ ((v26 ^ 0x12) + v14)) + 69) * (a4 + v15) + a4 * v17 + v13;
  return (*(v21 + 8 * (((STACK[0x900] == 0) * v18) ^ a3)))();
}

uint64_t sub_1006EB5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  v21 = v17 - 1;
  v18 = ((v11 & a1) << a2) & (v11 ^ a3) ^ v11 & a1;
  v19 = ((2 * (v11 ^ v9)) ^ a4) & (v11 ^ v9) ^ (2 * (v11 ^ v9)) & a5;
  *(v8 + v21) = (v11 ^ (2 * (((4 * (v19 ^ a6)) & v13 ^ v14 ^ ((4 * (v19 ^ a6)) ^ a8) & (v19 ^ a6)) & (16 * ((v19 ^ a7) & (4 * v18) ^ v18)) ^ (v19 ^ a7) & (4 * v18) ^ v18)) ^ v15) * (v11 - 72);
  return (*(v12 + 8 * (((v21 != 0) * v16) ^ v10)))(a1, a2, a3, a4, a5);
}

uint64_t sub_1006EB688@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, uint64_t a7@<X8>)
{
  v15 = (a7 + (a1 - 1143981516) % v7);
  v16 = *v15;
  v17 = ((((v15 ^ v8) & 0x7FFFFFFF) * ((v9 - 23559) ^ 0x6F23FC89)) ^ ((((v15 ^ v8) & 0x7FFFFFFF) * ((v9 - 23559) ^ 0x6F23FC89)) >> 16)) * v11;
  LODWORD(v17) = *(v10 + (v17 >> 24)) ^ v16 ^ *(v12 + (v17 >> 24)) ^ *(a2 + (v17 >> 24)) ^ v17 ^ (v17 >> 24);
  v18 = (a1 ^ 0x3B8030A3) & (2 * (a1 & 0xBBD03A23)) ^ a1 & 0xBBD03A23;
  v19 = ((2 * (a1 ^ 0x5E0000E5)) ^ 0xCBA0758C) & (a1 ^ 0x5E0000E5) ^ (2 * (a1 ^ 0x5E0000E5)) & 0x65D03AC6;
  v20 = v19 ^ 0x24500A42;
  v21 = (v19 ^ 0xC1803084) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0x9740EB18) & v20 ^ (4 * v20) & v13;
  v23 = (v22 ^ 0x85402A00) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x609010C6)) ^ 0x5D03AC60) & (v22 ^ 0x609010C6) ^ (16 * (v22 ^ 0x609010C6)) & v13;
  v25 = v23 ^ 0xE5D03AC6 ^ (v24 ^ 0x45002800) & (v23 << 8);
  v26 = (4 * ((v25 << 16) & v14 ^ v25 ^ ((v25 << 16) ^ 0x3AC60000) & (((v24 ^ 0xA0D01286) << 8) & v14 ^ 0x25C00000 ^ (((v24 ^ 0xA0D01286) << 8) ^ 0x103A0000) & (v24 ^ 0xA0D01286)))) ^ (2 * a1);
  v27 = (a7 + ((((v26 ^ 0x853A9E46) + 676602267) ^ ((v26 ^ 0xAD474DC4) + 2748953) ^ ((v26 ^ a3) + a4)) + a5) % v7);
  v28 = ((((v27 ^ v8) & 0x7FFFFFFF) * v11) ^ ((((v27 ^ v8) & 0x7FFFFFFF) * v11) >> 16)) * v11;
  return (*(STACK[0xF18] + 8 * (((((((*(v10 + (v28 >> 24)) ^ *v27 ^ *(v12 + (v28 >> 24)) ^ *(a2 + (v28 >> 24))) ^ (v28 ^ BYTE3(v28))) & 7 | 0xF0) ^ v17 & 7) != 240) * a6) ^ v9)))();
}

uint64_t sub_1006EC220@<X0>(int a1@<W8>)
{
  *(v3 - 586084794) = v1;
  STACK[0x490] -= 32;
  return (*(v2 + 8 * (a1 + 5321)))();
}

uint64_t sub_1006EC2C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, char a8)
{
  LODWORD(STACK[0x698]) = v15;
  v19 = (v15 + 498229978) & 0xE24DEE8F;
  v20 = v9 - v11 + 1652377609;
  LODWORD(STACK[0x680]) = v19;
  v21 = v10 + (v19 ^ 0x286BB1D8) - v20;
  v22 = a3 - (v8 - a5);
  v23 = v22 + a6;
  v24 = v22 + a5;
  v25 = (v21 + v11 + 337509842) ^ -v11;
  v26 = v25 + (v20 ^ 0x62C5E428);
  v27 = v26 ^ v25;
  v28 = v25 ^ 0x1D0BEF77;
  v29 = v23 ^ v24;
  v30 = (v24 + 337509842) ^ -a5;
  v31 = (v26 ^ 0x1D0BEF77) + v11 + 1646538226;
  v32 = ((v8 - a5 - ((2 * (v8 - a5)) & 0xE110218A) - 259518267) ^ (v25 ^ 0x1D0BEF77) & 0x60404428 ^ (v25 & 0x62C5E428 ^ 0xE14BB38C) & (v25 ^ 0xFFFC001F | 0x9D3A1BD7) ^ 0x7307A341) + v30;
  v33 = (v29 + a5 + 1646538226 + (v32 ^ v30)) ^ 0xDDC42294;
  v34 = (((v21 + v11) ^ (v21 + a7)) + v11 + 1646538226 + v27) ^ 0xDDC42294;
  v35 = (v32 ^ 0x1D0BEF77) + a5 + 1646538226;
  v36 = v11 - 1009449673 + v28;
  v37 = a5 - 1521143947 + (v30 ^ 0x1D0BEF77);
  v38 = v35 - v37;
  v39 = v35 + v35 - (a5 - 1521143947) + 1253660653;
  v40 = v31 - v36;
  v41 = v31 + v31 - (v11 - 1009449673) - 313095195;
  v42 = (v11 + v36 + v34 - 646285638 + v41) ^ 0xBFB1B1EF;
  v43 = (a5 + v37 + v33 + 2081925810 + v39) ^ 0xBFB1B1EF;
  v44 = v39 - v37 - v43 + 2116746071;
  v45 = v41 - v36 - v42 + 411923171;
  v46 = (v39 - v44 + 341163309) ^ (v38 - v43 + 1074448663);
  v47 = (v41 - v45 - 1875353865) ^ (v40 - v42 + 1586142937);
  v48 = v47 ^ v45;
  v49 = v46 ^ v44;
  v50 = v47 - v48 - 1554878015;
  v51 = v46 - v49 + 100302727;
  v48 -= 1808686442;
  v52 = v40 + 1526615946 + v50;
  v53 = v38 - 148609016 + v51;
  v54 = (v48 - 963024805 + v50) ^ 0x592BDA1E;
  v49 += 2085002126;
  v55 = v42 - v47;
  v56 = v52 - v54 - 1180387749;
  v57 = v52 + v48;
  v58 = v49 + 2078040477 + v51;
  v59 = v43 - v46;
  v60 = v53 + v49;
  v61 = v53 + v49 + 1656651035;
  v58 ^= 0x592BDA1Eu;
  v62 = v54 - v55;
  v63 = (v56 ^ (v57 + 1747022361)) - v62 + 1056017989;
  v64 = v53 - v58 - 1672037803;
  v65 = v58 - v59;
  v66 = (v63 + v56) ^ (v62 + 379516087);
  v67 = v55 + v57 - 1491926946 + v63 + v56;
  v68 = (v64 ^ v61) - v65 + 1056017989;
  v69 = v56 - (v66 + v63);
  v70 = v67 ^ (v66 + v63) ^ 0x71A7E57D ^ (v66 - ((2 * v66) & 0xE34FCAFA) + 1906828669);
  v71 = (v68 + v64) ^ (v65 + 379516087);
  v72 = v66 - v70;
  v73 = v59 + v60 - 1582298272 + v68 + v64;
  v74 = v70 - v69;
  v75 = v74 + v63;
  v76 = v73 ^ (v71 + v68) ^ 0xB5B34228 ^ (v71 - ((2 * v71) & 0x6B668450) - 1246543320);
  v77 = v64 - (v71 + v68);
  v78 = v71 - v76;
  v79 = (v72 ^ 0x7D212D6E) - v74;
  v80 = v76 - v77;
  v81 = (v78 ^ 0x7D212D6E) - v80;
  v82 = v75 - v79 + 16462919;
  v83 = v82 + (v69 ^ 0x867336B1);
  v84 = v80 + v68;
  v85 = v84 - v81 + 16462919;
  v86 = v85 + (v77 ^ 0x867336B1);
  v87 = (((v83 & 0x80000000) + v79) ^ v83 & 0x7FFFFFFF) + 354396034;
  v88 = v87 ^ v82;
  v89 = (v86 ^ v81) + 354396034;
  v90 = v87 - v88;
  v91 = v88 + (v74 ^ v75 ^ 0x3DEDBFE8 ^ (v83 + 1493510893));
  v92 = v80 ^ v84 ^ 0x3DEDBFE8 ^ (v86 + 1493510893);
  v93 = v89 - (v89 ^ v85);
  v94 = v92 + (v89 ^ v85);
  v95 = v94 + (v89 ^ v85);
  v96 = v91 + v88;
  v97 = v95 - 1191485094;
  v98 = v95 + v86;
  v99 = v96 - 1191485094;
  v94 += 2114405023;
  v91 += 2114405023;
  v100 = v96 + v83;
  v101 = v94 ^ v93 ^ (v95 - ((2 * (v95 - 1191485094)) & 0x749CE49C) + 1934218152);
  v102 = v101 ^ 0x45B18DB1;
  v103 = v91 ^ v90 ^ (v96 - ((2 * (v96 - 1191485094)) & 0x33F984BA) + 1391993783);
  v104 = v103 ^ 0x66033DA2;
  v105 = v100 - 831108543 + (v99 ^ 0x5898502);
  v103 ^= 0x5B4B0619u;
  v106 = v103 ^ v105;
  v103 -= 1052529016;
  v101 ^= 0x78F9B60Au;
  v107 = v98 - 831108543 + (v97 ^ 0x5898502);
  v108 = v101 ^ v107;
  v109 = v106 - v103;
  v101 -= 1052529016;
  v110 = v108 - v101;
  v111 = (v94 ^ 0x8768DEB3) - v107 + v102 + v110;
  v112 = (v91 ^ 0x8768DEB3) - v105 + v104 + v109;
  v103 ^= 0x62484655u;
  v101 ^= 0x62484655u;
  v113 = (((v111 + 1) & 0x4A92CF7A ^ 0x4A92CF7A) + ((v111 + 1) & 0x4A92CF7A)) ^ (v112 - 1232808938);
  v114 = ~v112 + v100 - v103 - 1668804895;
  v115 = v101 - 408093410;
  v116 = v98 - v101 - (v111 + 1) - 1668804895;
  v117 = v110 - 481997421 + v115;
  v118 = v103 - 408093410;
  v119 = v109 - 481997421 + v103 - 408093410;
  v115 ^= 0xF8DB731B;
  v120 = (v111 - 1232808938) ^ 0x4A92CF7A;
  v121 = v114 ^ v119 ^ 0x199CD5C6 ^ (v113 - ((2 * v113) & 0x3339AB8C) + 429708742);
  v122 = v116 ^ v117 ^ 0x3BF026EF ^ (v120 - ((2 * v120) & 0x77E04DDE) + 1005594351);
  v123 = v122 ^ v115;
  v124 = v121 ^ v118 ^ 0xF8DB731B;
  v125 = v119 - (v118 ^ 0xF8DB731B) - v124;
  v126 = v122 - 880620673;
  v127 = v117 - v115 - (v122 ^ v115);
  v128 = v113 + v125;
  v129 = v123 - 613875223;
  v130 = v120 + v127;
  LOBYTE(v123) = v130 - 42;
  LOBYTE(v117) = v125 - 55;
  v131 = v121 + v124 - 613875223;
  LOBYTE(STACK[0xBAC]) = (v128 - 42) ^ 0x87;
  LOBYTE(STACK[0x992]) = v129 - ((2 * v129) & 0x5E) + 47;
  v128 += 1033748607;
  LOBYTE(STACK[0x7FB]) = v126 - ((2 * v126) & 0x5E) + 47;
  v132 = v127 + 1456703177;
  LOBYTE(v127) = v121 - 11;
  LOBYTE(v121) = (v121 - 11) & a8 ^ 0xF3;
  LOBYTE(STACK[0x977]) = v127 ^ (2 * ((v127 ^ 0xA) & (2 * ((v127 ^ 0xA) & (2 * ((v127 ^ 0xA) & (2 * ((v127 ^ 0xA) & (2 * (((2 * v127) & 0x14 | 0x62) & (v127 ^ 0xA) ^ v121)) ^ v121)) ^ v121)) ^ v121)) ^ v121)) ^ 0xEF;
  v133 = 2 * (v124 - 613875223);
  v134 = (v131 - 880620673) ^ v128 ^ 0xFBBC77F4 ^ (v124 - (v133 & 0xF778EFE8) - 685409827);
  LOBYTE(STACK[0xB0E]) = (v124 - 23 - (v133 & 0xDF) + 111) ^ 0xE8;
  v135 = ((v131 - 880620673) ^ (v125 + 1456703177)) - (v131 - 880620673);
  v136 = v130 + 1033748607;
  v137 = v135 + v128;
  LOBYTE(STACK[0xA30]) = v123 - ((2 * v123) & 0x5E) + 47;
  LOBYTE(STACK[0xB29]) = v132 - ((2 * v132) & 0x5E) + 47;
  v138 = v129 + v126;
  LOBYTE(STACK[0x8D9]) = (v117 + (v12 ^ (2 * v117) | 0xE7) + 13) ^ v14;
  v139 = (v129 + v126) ^ v129 ^ v136;
  v140 = (v132 ^ v138) - v138;
  LOBYTE(STACK[0x9D2]) = (v134 - ((2 * v134) & 0x87) + 67) ^ 0xC4;
  LOBYTE(STACK[0x9ED]) = v140 - ((2 * v140) & 0x5E) + 47;
  LOBYTE(STACK[0x856]) = v139 ^ 0x2F;
  v141 = v138 - 1111681550;
  LOBYTE(STACK[0xA70]) = (v137 - ((2 * v137) & 0x8C) - 58) ^ 0x41;
  v142 = v140 + v136;
  v143 = v135 - v134;
  v144 = v135 - v134 + 5785931;
  LOBYTE(STACK[0x83B]) = (v131 - 71) ^ (2 * ((v18 ^ (2 * (((16 * (((((16 * ((((v131 + 930024377) ^ 0x38) >> 3) & 1)) | 8) & ((v131 + 930024377) ^ 0x38)) >> 3) & 3)) | 8) & ((v131 - 71) ^ 0x38)))) & ((v131 - 71) ^ 0x38))) ^ 0x4F;
  v145 = (v134 - 134058410) ^ (v131 - 1992302223);
  LOBYTE(STACK[0x8F4]) = v142 - ((2 * v142) & 0x5E) + 47;
  v146 = v137 ^ 0xA075F91E;
  LOBYTE(STACK[0xA8B]) = v141 - ((2 * v141) & 0x5E) + 47;
  v147 = ((v139 ^ 0x25244A91) + 894393155) ^ ((v139 ^ 0x7F8A52C1) + 1877033747) ^ ((v139 ^ 0x5AAE1850) + 1254427012);
  v148 = v140 - v147;
  v149 = v142 ^ 0xA075F91E;
  v150 = v134 - 1601961000;
  LOBYTE(STACK[0xB69]) = v135 ^ 0x87;
  v151 = (v16 & (2 * (v146 - v144 - 714379661))) + ((v146 - v144 - 714379661) ^ v13);
  LOBYTE(STACK[0x896]) = v150 ^ 0x87;
  LOBYTE(STACK[0xB84]) = v149 - (v148 + 31) - ((2 * (v149 - (v148 + 31))) & 0x5E) + 47;
  v152 = (v147 - 409510782) ^ v141;
  v153 = (((v139 ^ 0xBDAF273B) - 1379649815) ^ ((v139 ^ 0x3BECC25C) + 730321808) ^ ((v139 ^ 0x8643E567) - 1775700811)) - 1877413372;
  LOBYTE(STACK[0x94F]) = (v147 - 126) ^ v141 ^ 0x72;
  v154 = v145 ^ 0xDAA7B05D ^ (v144 + v150);
  LOBYTE(STACK[0xAE6]) = v153 - ((2 * v153) & 0x5E) + 47;
  LOBYTE(STACK[0x8B1]) = v148 + 31 - ((2 * (v148 + 31)) & 0x5E) + 47;
  v155 = v148 + 281238303 + v153;
  LOBYTE(STACK[0x934]) = ((v137 ^ 0x1E) - (v143 + 75)) ^ 0x87;
  LOBYTE(STACK[0xACB]) = v145 ^ 0xDA;
  v156 = v143 - 2002409764;
  if ((v152 & 0x20 & v155) != 0)
  {
    v157 = -(v152 & 0x20);
  }

  else
  {
    v157 = v152 & 0x20;
  }

  LOBYTE(STACK[0xA2D]) = v144 ^ 0x87;
  v158 = v148 - 1726957392;
  v159 = v152 & 0xFFFFFFDF ^ 0x1A84678F ^ (v157 + v155 - 2 * ((v157 + v155) & 0x4023D7D3 ^ v155 & 1) - 1071392814);
  v160 = v149 - (v148 - 1726957392);
  v161 = (v154 - 93) & 0x6E ^ 0x51;
  v162 = (v154 - 93) ^ 0x4C;
  LOBYTE(STACK[0xA48]) = v160 - ((2 * v160) & 0x5E) + 47;
  v163 = v159 + 563628399;
  LOBYTE(STACK[0x98F]) = (v154 - 93) ^ (2 * (v162 & (2 * (v162 & (2 * (v162 & (2 * (v162 & (2 * (v162 & (2 * (v161 ^ (v154 - 93) & 0x22)) ^ v161)) ^ v161)) ^ v161)) ^ v161)) ^ v161)) ^ 0xE9;
  LOBYTE(STACK[0x813]) = v159 + 111 - ((2 * (v159 + 111)) & 0x5E) + 47;
  v164 = (v155 - 55) & 0xC9 ^ 0xA3;
  v165 = (v155 - 55) ^ 0xA;
  LOBYTE(STACK[0x9AA]) = (v155 - 55) ^ (2 * (v165 & (2 * (v165 & (2 * (v165 & (2 * (v165 & (2 * (v165 & (2 * (((2 * (v155 - 55)) & 0x16 ^ v17) & ((v155 - 55) ^ 2) ^ v164)) ^ v164)) ^ v164)) ^ v164)) ^ v164)) ^ v164)) ^ 0xE6;
  LOBYTE(STACK[0xB41]) = v158 ^ 0x18;
  v166 = ((v16 & (2 * (v146 - v144 + 115))) + ((v146 - v144 + 115) ^ v13) - 6) & 0xF5;
  v167 = ((v16 & (2 * (v146 - v144 + 115))) + ((v146 - v144 + 115) ^ v13) + 122) ^ 0x74;
  LOBYTE(STACK[0x7F8]) = (v151 - 6) ^ (2 * (v167 & (2 * (v167 & (2 * (v167 & (2 * (v167 & (2 * (v167 & (2 * ((v151 + 122) & (2 * v166) ^ v166)) ^ v166)) ^ v166)) ^ v166)) ^ v166)) ^ v166)) ^ 0xF2;
  v168 = v144 + v150 - 817135020 - (v154 + 563628399);
  LOBYTE(STACK[0x8F1]) = (v156 + (~(2 * v156) | 0x93) + 55) ^ 0x86;
  v169 = v159 + 563628399 + (v158 ^ 0xEA90C037);
  v170 = (v168 + 1978521334) ^ (v154 + 563628399 + (v156 ^ 0xEA90C037));
  v171 = (v154 + 563628399) ^ 0xBBEF1D1;
  v172 = (v151 - 1762745033) ^ v171;
  LOBYTE(STACK[0xB26]) = (v144 + v150 + 84) ^ 0x87;
  LOBYTE(STACK[0xA88]) = (v172 - ((2 * v172) & 0xD2) + 105) ^ 0xEE;
  v173 = v155 - v159 + 597757915;
  v174 = v169 ^ v173;
  LOBYTE(STACK[0xAA3]) = v163 ^ 0xFE;
  v175 = v163 ^ (v160 + 524026568);
  v176 = v168 - v172;
  LOBYTE(STACK[0x853]) = (v154 + 111) ^ 0x56;
  LOBYTE(STACK[0x9EA]) = (v144 + v150 + 84 - (v154 + 111) - 10 - ((2 * (v144 + v150 + 84 - (v154 + 111) - 10)) & 0x5C) - 82) ^ 0x29;
  v177 = v137 & 0xDA2E6E36 ^ 0xA5F5F9DF;
  v178 = v170 + 868831730;
  v179 = v176 - 1749202192;
  LOBYTE(STACK[0x86E]) = v173 - ((2 * v173) & 0x5E) + 47;
  v180 = (v172 ^ v170) + v170 + 868831730;
  v181 = v171 - v170 + (v170 ^ 0x9413BFAD) + ((2 * v170) & 0x28277F5A) + 941813345;
  v182 = v171 & 0xB8C4041C;
  LOBYTE(STACK[0x90C]) = v175 ^ 0xFE;
  v183 = STACK[0x6B0];
  *(STACK[0x6B0] + v177 - (v146 & 0xDA2E6E36) - 634490424) = (v170 - ((2 * v170) & 0x18) - 116) ^ 0xB;
  v184 = v175 ^ 0x8799A827 ^ (v174 - ((2 * v174) & 0x184EB3EC) - 1943578122);
  LOBYTE(STACK[0xA05]) = v174 - ((2 * v174) & 0x5E) + 47;
  v185 = v174 + 868831730;
  v186 = (v163 ^ 0xBBEF1D1) - 868831730;
  *(v183 + 863170097 * (((v182 ^ 0xB8C4041C) + v182) | 0x284C3408)) = ((v179 & 0xBC ^ 0xBC) + (v179 & 0xBC)) & ((v174 - 14) | (13 - v174)) & 0xAA ^ v180 ^ 0x2F;
  LOBYTE(STACK[0xAE3]) = (~(2 * v181) + v181) ^ 0x78;
  LOBYTE(STACK[0x8C9]) = v174 - 14 - ((2 * (v174 - 14)) & 0x5E) + 47;
  LOBYTE(STACK[0xAFE]) = v173 - (v175 ^ 0xD1) - 6 - ((2 * (v173 - (v175 ^ 0xD1) - 6)) & 0x5E) + 47;
  LOBYTE(STACK[0x967]) = v186 - ((2 * v186) & 0x5E) + 47;
  LOBYTE(STACK[0xB9C]) = v184 + v174 - 14 - ((2 * (v184 + v174 - 14)) & 0x5E) + 47;
  LOBYTE(STACK[0xA45]) = v178 ^ 0x87;
  v187 = (v184 + v185 + v173 - (v175 ^ 0xBBEF1D1) + 567243770) ^ (v185 - v186);
  v188 = v178 - v181;
  v189 = (v178 - v181) ^ (v180 + v179);
  LOBYTE(STACK[0x8AE]) = (v179 - ((2 * v179) & 0x96) - 53) ^ 0x4C;
  v190 = v188 + 1738434970;
  LOBYTE(STACK[0x810]) = (v180 - ((2 * v180) & 0x50) + 40) ^ 0xF3;
  LOBYTE(STACK[0x82B]) = v186 ^ 0x41;
  LOBYTE(STACK[0xB59]) = v185 - v186 - 102 - ((2 * (v185 - v186 - 102)) & 0x5E) + 47;
  LOBYTE(STACK[0x9C2]) = v187 ^ 0x2F;
  LOBYTE(STACK[0xB3E]) = (v189 + (~(2 * v189) | 0x77) - 59) ^ 0x43;
  v191 = ((v186 ^ 0x754FB58F) - 1261945096) ^ ((v186 ^ 0x6449DA59) - 1513205470) ^ ((v186 ^ 0x42752BB8) - 2081251135);
  v192 = (v188 + 1738434970 - v189) ^ ((v180 ^ 0x988D37DC) + 1299853184);
  v193 = ((v184 + v185) ^ 0x988D37DC) + 1299853184;
  v194 = v185 - v186 + 1738434970 - v187;
  v195 = (v189 ^ 0x386F7FF9) - 1195283005;
  LOBYTE(STACK[0xA60]) = v193 + (~(2 * v193) | 0xA1) + 48;
  v196 = v190 - v189 - 1453437475;
  LODWORD(v183) = v194 ^ v193;
  v197 = (v187 ^ 0x386F7FF9) - 1195283005;
  LOBYTE(STACK[0xAA0]) = ((v192 ^ v195) - ((2 * (v192 ^ v195)) & 0xE3) - 15) ^ 0x76;
  LOBYTE(STACK[0x9A7]) = (v181 - ((2 * v181) & 0x48) - 92) ^ 0x4D;
  v198 = (v181 ^ 0x5373446E) + v189 + v192;
  v199 = v198 + (v192 ^ v195);
  v200 = v191 + v183 + 530883942 + (((v187 ^ 0x1537E62) + 1278604769) ^ ((v187 ^ 0xC788C936) - 1964096843) ^ ((v187 ^ 0xC6DBB754) - 1950532393));
  LOBYTE(STACK[0xABB]) = v191 + v183 + 102 + (((v187 ^ 0x62) - 31) ^ ((v187 ^ 0x36) - 75) ^ ((v187 ^ 0x54) - 41)) - ((2 * (v191 + v183 + 102 + (((v187 ^ 0x62) - 31) ^ ((v187 ^ 0x36) - 75) ^ ((v187 ^ 0x54) - 41)))) & 0x5E) + 47;
  LOBYTE(v198) = v198 + 101;
  LOBYTE(v187) = v198 & 0xD1 ^ 0xAF;
  LOBYTE(STACK[0x909]) = v190 ^ 0x87;
  LOBYTE(STACK[0x86B]) = v198 ^ (2 * ((v198 ^ 0x1A) & (2 * ((v198 ^ 0x1A) & (2 * ((v198 ^ 0x1A) & (2 * ((v198 ^ 0x1A) & (2 * ((v198 ^ 0x1A) & (2 * (((2 * v198) & 0x36 ^ 0x4A) & (v198 ^ 0x1A) ^ v187)) ^ v187)) ^ v187)) ^ v187)) ^ v187)) ^ v187)) ^ 0x56;
  v201 = v194 - 1453437475;
  LOBYTE(STACK[0x924]) = v183 ^ v197 ^ 0x2F;
  v202 = v200 + (v183 ^ v197);
  v203 = v192 ^ v195 ^ 0x3B8B3E46;
  v204 = v196 - (v192 ^ v195);
  v205 = v199 + v203;
  LOBYTE(STACK[0xA02]) = (v195 - ((2 * v195) & 0x83) + 65) ^ 0xC6;
  LOBYTE(STACK[0x886]) = v197 - ((2 * v197) & 0x5E) + 47;
  v206 = v199 + v203 + 1810645075;
  LOBYTE(STACK[0xB99]) = v196 ^ 0x87;
  v207 = v203 + v204;
  v208 = v199 ^ v195;
  LOBYTE(STACK[0xA1D]) = v201 - ((2 * v201) & 0x5E) + 47;
  v209 = v201 - (v183 ^ v197);
  LODWORD(v210) = __ROR4__(v197 ^ 0x3C8B3D13 ^ v202, 13);
  v211 = v202 + (v183 ^ v197 ^ 0x3B8B3E46);
  v212 = (v183 ^ v197 ^ 0x3B8B3E46) + v209;
  LODWORD(v210) = v210 ^ 0x744AABC2;
  HIDWORD(v210) = v210;
  v213 = v210 >> 19;
  v214 = (v208 ^ 0x8CBA98D7 ^ v204) + 2 * ((v208 ^ 0x8CBA98D7) & v204);
  LOBYTE(STACK[0xB16]) = v213 ^ 0x62;
  v215 = (v213 ^ 0xE549EB4D) + v209;
  LOBYTE(STACK[0xAFB]) = ((v213 & 0xA8 ^ 0xA0) + (v213 & 0xA8 ^ 8)) ^ v205 ^ 0x2F;
  LOBYTE(STACK[0x97F]) = v211 - ((2 * v211) & 0x5E) + 47;
  LOBYTE(STACK[0x8C6]) = v208 ^ 0x50;
  LOBYTE(STACK[0x8E1]) = v215 - ((2 * v215) & 0x5E) + 47;
  v216 = (v208 ^ 0x8CBA98D7) - v206 + 1810645075;
  LOBYTE(STACK[0xBB4]) = v212 + (~(2 * v212) | 0xA1) + 48;
  LOBYTE(STACK[0x964]) = (v203 + v204 + (~(2 * (v203 + v204)) | 0x11) - 8) ^ 0x70;
  v217 = (v205 ^ (v207 + 369154169)) - (v207 + 369154169);
  v218 = v215 - (v212 + 369154169);
  v219 = v211 ^ (v212 + 369154169);
  v220 = v218 ^ ((v213 ^ 0xE549EB4D) - v211);
  LOBYTE(STACK[0xA5D]) = v214 ^ 0x87;
  v221 = v214 - (v203 + v204 + 369154169);
  v222 = v221 ^ v216;
  v223 = v219 - v212 - 369154169;
  LOBYTE(STACK[0x843]) = v223 - ((2 * v223) & 0x5E) + 47;
  v224 = v221 ^ v217;
  LOBYTE(v203) = ((59 - v212) & 0x83 | 0x68) ^ (v212 - 60) & 0xD2;
  LOBYTE(v213) = (v212 - 60) ^ 2;
  LOBYTE(STACK[0xA78]) = (v212 - 60) ^ (2 * (v213 & (2 * (v213 & (2 * (v213 & (2 * (v213 & (2 * (v213 & (2 * (v213 & (2 * v203) ^ v203)) ^ v203)) ^ v203)) ^ v203)) ^ v203)) ^ v203)) ^ 0x7E;
  LOBYTE(STACK[0x9DA]) = v220 ^ 0x2F;
  v225 = v218 ^ v223;
  LOBYTE(v213) = (v207 + 88) & 0x5F ^ 0xF8;
  LOBYTE(v205) = (v207 + 88) ^ 0x6E;
  LOBYTE(STACK[0x828]) = (v207 + 88) ^ (2 * (v205 & (2 * (v205 & (2 * (v205 & (2 * (v205 & (2 * (v205 & (2 * (v205 & (2 * (v207 + 88)) & 0x5E ^ v213)) ^ v213)) ^ v213)) ^ v213)) ^ v213)) ^ v213)) ^ 0xD8;
  LOBYTE(STACK[0xB71]) = v218 ^ v223 ^ 0x2F;
  LOBYTE(STACK[0x9BF]) = (v217 + (~(2 * v217) | 0xFB) + 3) ^ 0x85;
  v226 = (v224 ^ 0x25400F5D) + 1497866515 + ((2 * v224) & 0x4A801EBA);
  LOBYTE(v205) = v207 + v226;
  LOBYTE(STACK[0xB56]) = (v222 + (~(2 * v222) | 0x91) - 72) ^ 0x30;
  v227 = v207 - 853438275 + v222;
  v228 = v217 - v207 - 1911424350 + v226;
  v229 = v207 + 413557835 + v227;
  v230 = v207 + v226 + v229;
  LOBYTE(STACK[0x921]) = v224 ^ 0x87;
  LOBYTE(v224) = v207 - 61;
  LOBYTE(v207) = ((60 - v207) & 0x88 | 0x43) ^ (v207 - 61) & 0x96;
  LOBYTE(STACK[0xAB8]) = v224 ^ (2 * ((v224 ^ 8) & (2 * ((v224 ^ 8) & (2 * ((v224 ^ 8) & (2 * ((v224 ^ 8) & (2 * ((v224 ^ 8) & (2 * ((v224 ^ 8) & (2 * v207) ^ v207)) ^ v207)) ^ v207)) ^ v207)) ^ v207)) ^ v207)) ^ 0x99;
  LOBYTE(STACK[0xA1A]) = (v227 - ((2 * v227) & 0x10) + 8) ^ 0x8F;
  v231 = v212 + 413557835;
  v232 = v223 - (v212 + 413557835);
  v233 = v212 - 987627020 + (((v220 ^ 0x57ACACD1) + 1347625498) ^ ((v220 ^ 0xA032FDEC) - 1479707867) ^ ((v220 ^ 0xF79E513D) - 262021130));
  v234 = (((v225 ^ 0x30651817) - 917669445) ^ ((v225 ^ 0xA649AD31) + 1600244893) ^ ((v225 ^ 0x962CB526) + 1862587532)) + 739749295;
  v235 = v234 + v232;
  LOBYTE(STACK[0x93C]) = v231 - ((2 * v231) & 0x5E) + 47;
  LOBYTE(STACK[0xBB1]) = (v205 + 56) ^ 0x87;
  LOBYTE(STACK[0xAD3]) = v235 - ((2 * v235) & 0x5E) + 47;
  v236 = v234 + v231;
  LOBYTE(STACK[0x89E]) = v233 - ((2 * v233) & 0x5E) + 47;
  LOBYTE(STACK[0xA35]) = v234 + v231 - ((2 * (v234 + v231)) & 0x5E) + 47;
  v237 = v235 ^ v233;
  v238 = v228 ^ v227;
  v239 = v233 + v231;
  LOBYTE(STACK[0x883]) = (v228 + (~(2 * v228) | 0x4D) - 38) ^ 0x5E;
  v240 = v229 ^ v227 ^ 0xD5849CF1;
  LOBYTE(STACK[0xB2E]) = v233 ^ 0xDE;
  LOBYTE(STACK[0x800]) = (v233 + v231) ^ v233 ^ 0xDE;
  LOBYTE(STACK[0x97C]) = v229 ^ v227 ^ 0x76;
  LOBYTE(v218) = ((v228 ^ v227) + 122) & 0x6B ^ 0xDC;
  LOBYTE(v191) = ((v228 ^ v227) + 122) ^ 0x72;
  v241 = v230 + ((v240 - 714379661) ^ 0xD56B6E72) - ((2 * (v240 - 714379661)) & 0x5529231A) - 1084308679;
  v242 = v239 + v236 - (((v239 ^ v233 ^ 0xD3DEF1D) + 1231432742) ^ ((v239 ^ v233 ^ 0x560A3F0F) + 307362872) ^ ((v239 ^ v233 ^ 0x8EB34CE3) - 890728484)) - 1847631926;
  LOBYTE(STACK[0xB13]) = ((v228 ^ v227) + 122) ^ (2 * (v191 & (2 * (v191 & (2 * (v191 & (2 * (v191 & (2 * (v191 & (2 * (v191 & (2 * ((v228 ^ v227) + 122)) ^ v218)) ^ v218)) ^ v218)) ^ v218)) ^ v218)) ^ v218)) ^ 0xEC;
  LOBYTE(STACK[0x8F9]) = v242 - ((2 * v242) & 0x5E) + 47;
  v243 = v242 - ((v233 + v231) ^ v233 ^ 0xD5849CF1);
  v244 = 2 * (v237 + 538664813);
  LOBYTE(STACK[0x997]) = v237 + 109 + (~v244 | 0xA1) + 48;
  LOBYTE(STACK[0xA75]) = v241 ^ 0x87;
  v245 = (v233 + v231) ^ v233 ^ 0xBBA43CC7 ^ (v237 - (v244 & 0xDC41406C) - 1908670557);
  LOBYTE(STACK[0x8DE]) = (v227 - ((2 * v227) & 0x58) - 84) ^ 0xDA;
  v246 = v237 + 538664813 + (v233 ^ 0xD5849CF1);
  v247 = (v237 + 538664813) ^ v239;
  v248 = ((v238 + 538664813) ^ v240) - 1054453801;
  v249 = (v238 + 538664813) ^ v229;
  v250 = v245 - 1054453801;
  v251 = v243 ^ v246;
  v252 = v241 - v240;
  v253 = v252 ^ (v238 + 538664813 + (v227 ^ 0xD5849CF1));
  LOBYTE(STACK[0x85B]) = v251 ^ 0x2F;
  LOBYTE(STACK[0x840]) = v248 ^ 0x87;
  v254 = 2 * (v245 - 1054453801);
  LOBYTE(STACK[0xA90]) = v245 - 41 - (v254 & 0x5E) + 47;
  LOBYTE(STACK[0xB6E]) = v249 ^ 0x8E;
  LOBYTE(STACK[0xB89]) = v243 ^ 0xF0;
  LOBYTE(STACK[0x9F2]) = v247 ^ 0x26;
  v255 = v245 - 1054453801 + (v247 ^ 0x31E25709);
  v256 = v253 ^ 0x4824FF8C;
  LOBYTE(STACK[0x9D7]) = v253 ^ 0x87;
  v257 = v248 + (v249 ^ 0x31E25709);
  v258 = v248 ^ 0x169F71D1;
  LOBYTE(STACK[0x939]) = (v252 + (~(2 * v252) | 0xCD) + 26) ^ 0x41;
  v259 = (v248 ^ 0xE524BEDF ^ v252) - v256;
  v260 = v259 ^ v248 ^ 0x169F71D1;
  v251 ^= 0x4824FF8Cu;
  v261 = v243 ^ 0xE892765A ^ (v245 - (v254 & 0x1B6D910A) - 824371108);
  LOBYTE(v243) = v256 + v258;
  LOBYTE(STACK[0xAD0]) = (v260 - ((2 * v260) & 0xF7) + 123) ^ 0xFC;
  v262 = v261 - v251;
  v263 = v260 - v259;
  v264 = v251 + (v250 ^ 0x169F71D1);
  v265 = (v261 - v251) ^ v250;
  LOBYTE(v251) = (v256 + v258 + 106) & 0x5A ^ 0x62;
  v266 = v257 + 1880313696 - v263;
  LOBYTE(STACK[0x954]) = v265 ^ 0xFE;
  LOBYTE(STACK[0x89B]) = (v243 + 106) ^ (2 * (((v243 + 106) ^ 0x14) & (2 * (((v243 + 106) ^ 0x14) & (2 * (((v243 + 106) ^ 0x14) & (2 * (((v243 + 106) ^ 0x14) & (2 * (((v243 + 106) ^ 0x14) & (2 * v251) ^ v251)) ^ v251)) ^ v251)) ^ v251)) ^ v251)) ^ 0xDD;
  LOBYTE(STACK[0xAEB]) = v264 - ((2 * v264) & 0x5E) + 47;
  LOBYTE(STACK[0x7FD]) = v259 ^ 0x87;
  LOBYTE(v238) = (v255 - 112) & 0xB1;
  LOBYTE(STACK[0x8B6]) = (v255 + 16) ^ (2 * (((v255 - 112) ^ 0x30) & (2 * (((v255 - 112) ^ 0x30) & (2 * (((v255 - 112) ^ 0x30) & (2 * (((v255 - 112) ^ 0x30) & (2 * (((2 * (((2 * v238) ^ 0x31) & (v255 - 112))) ^ 0x31) & (v255 - 112))) ^ v238)) ^ v238)) ^ v238)) ^ (v238 | 0x40))) ^ 0x9E;
  LOBYTE(STACK[0xA4D]) = v262 + (~(2 * v262) | 0xA1) + 48;
  v267 = (v265 ^ 0x169F71D1) - v262;
  v268 = v256 + v258 + v263;
  LOBYTE(v263) = v259 - v268 - 71;
  LOBYTE(v259) = v257 - 45;
  LOBYTE(v258) = (v257 + 109) & 0xF4 ^ 0x10;
  LOBYTE(v251) = (v257 + 109) ^ (2 * (((v257 + 109) ^ 0x54) & (2 * (((v257 + 109) ^ 0x54) & (2 * (((v257 + 109) ^ 0x54) & (2 * (((v257 + 109) ^ 0x54) & (2 * (((v257 + 109) ^ 0x54) & (2 * v258) ^ v258)) ^ v258)) ^ v258)) ^ v258)) ^ v258)) ^ 0x73;
  v269 = v267 + v264;
  LOBYTE(v258) = v257 & 0x32 ^ 0xA9;
  LOBYTE(STACK[0x994]) = v257 ^ (2 * ((v257 ^ 0x60) & (2 * ((v257 ^ 0x60) & (2 * ((v257 ^ 0x60) & (2 * ((v257 ^ 0x60) & (2 * ((v257 ^ 0x60) & (2 * (v258 ^ v257 & 0x12)) ^ v258)) ^ v258)) ^ v258)) ^ v258)) ^ v258)) ^ 0x35;
  LOBYTE(STACK[0xA32]) = v251;
  v270 = v268 ^ v266;
  LOBYTE(v251) = v255 + 96;
  LOBYTE(v262) = v262 - v269;
  v271 = v255 + 1880313696 - v267;
  LOBYTE(STACK[0x8F6]) = (v266 - ((2 * v266) & 0x84) + 66) ^ 0xC5;
  LOBYTE(STACK[0x818]) = v255 + 96 + (~(2 * (v255 + 96)) | 0xA1) + 48;
  LOBYTE(v255) = v263 + v266;
  LOBYTE(STACK[0xA8D]) = v263 ^ 0x87;
  LOBYTE(STACK[0xB2B]) = (v270 - ((2 * v270) & 0x6C) + 54) ^ 0xB1;
  LOBYTE(STACK[0xB46]) = v271 - ((2 * v271) & 0x5E) + 47;
  v272 = v271 ^ v269;
  LOBYTE(v263) = 44 - v257;
  LOBYTE(v262) = v262 - 71;
  LOBYTE(v257) = v255 ^ (v266 + v257 + 96);
  LOBYTE(STACK[0x911]) = v262 - ((2 * v262) & 0x5E) + 47;
  LOBYTE(STACK[0x9AF]) = v272 ^ 0x2F;
  v273 = (((v272 ^ 0x6ACA2BC8) + 569744804) ^ ((v272 ^ 0x9187F454) - 625458624) ^ ((v272 ^ 0xFB4DDF9C) - 1334679048)) + 1926715954;
  LOBYTE(v259) = ((v263 & 0xAD) + (v259 & 0xAD) - 15 + v270) ^ v266;
  LOBYTE(v266) = v262 + v271;
  LOBYTE(v263) = ((((v272 ^ 0xC8) - 92) ^ ((v272 ^ 0x54) + 64) ^ ((v272 ^ 0x9C) - 8)) + 50) ^ v271;
  LOBYTE(v262) = (v262 + v271) ^ (v271 + v251);
  LODWORD(STACK[0x5B8]) = v270 - 1105784674;
  v274 = LODWORD(STACK[0x4B4]) - 90699880;
  v275 = LODWORD(STACK[0x4B0]) - 1811827360;
  LODWORD(STACK[0x688]) = v273;
  LOBYTE(STACK[0x858]) = (v257 + (~(2 * v257) | 0xF3) - 121) ^ 1;
  LOBYTE(STACK[0x9EF]) = (v270 - 98 - (v259 ^ 0x5F)) ^ 0x87;
  LOBYTE(STACK[0x873]) = v273 - (v263 ^ 0x5F) + (~(2 * (v273 - (v263 ^ 0x5F))) | 0xA1) + 48;
  LOBYTE(STACK[0xBA1]) = v266 - 49 - ((2 * (v266 - 49)) & 0x5E) + 47;
  LOBYTE(STACK[0x951]) = (v255 - 49) ^ 0x87;
  LOBYTE(STACK[0xAA8]) = v262 ^ 0x2F;
  LOBYTE(STACK[0xA0A]) = v263 ^ 0x70;
  LOBYTE(STACK[0xB86]) = v259 ^ 0xD8;
  if (v275 < 0x69ED8F1F != v274 < 0x69ED8F1F)
  {
    v276 = v274 < 0x69ED8F1F;
  }

  else
  {
    v276 = v274 > v275;
  }

  return (*(STACK[0x6A0] + 8 * ((v276 | (4 * v276)) ^ (LODWORD(STACK[0x698]) + 25300))))();
}

uint64_t sub_1006EE2A8()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -457059951;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006EE328()
{
  v1 = (((*(STACK[0x3068] + 80) ^ 0xF5D07098) + 170889064) ^ ((*(STACK[0x3068] + 80) ^ 0xEC726671) + 328046991) ^ (v0 + 260563163 + (*(STACK[0x3068] + 80) ^ (((v0 + 10571) ^ 0xAE917FD7) + 1105643593)))) + 763656129;
  v2 = (v1 ^ 0x3C194F4E) & (2 * (v1 & 0xBC514F50)) ^ v1 & 0xBC514F50;
  v3 = ((2 * (v1 ^ 0x5CB9CDEE)) ^ 0xC1D1057C) & (v1 ^ 0x5CB9CDEE) ^ (2 * (v1 ^ 0x5CB9CDEE)) & 0xE0E882BE;
  v4 = v3 ^ 0x20288282;
  v5 = (v3 ^ 0xC0C00000) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x83A20AF8) & v4 ^ (4 * v4) & 0xE0E882B8;
  v7 = (v6 ^ 0x80A002A0) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x60488006)) ^ 0xE882BE0) & (v6 ^ 0x60488006) ^ (16 * (v6 ^ 0x60488006)) & 0xE0E882A0;
  return (*(STACK[0xF18] + 8 * ((169 * ((v1 ^ (2 * ((((v8 ^ 0xE060801E) << 8) & 0x60E80000 ^ 0x60800000 ^ (((v8 ^ 0xE060801E) << 8) ^ 0xE8820000) & (v8 ^ 0xE060801E)) & (((v8 ^ 0x880200) & (v7 << 8) ^ v7) << 16) ^ (v8 ^ 0x880200) & (v7 << 8) ^ v7))) == -1135521968)) ^ (v0 + 10571))))();
}

uint64_t sub_1006EE5E0()
{
  LODWORD(STACK[0x2328]) = v0;
  v2 = *(STACK[0x19D8] + 32) + 991225323;
  LODWORD(STACK[0x232C]) = ((v2 ^ 0x10E4F993) - 737156195) ^ v2 ^ ((v2 ^ 0x943F7FAF) + 1356096929) ^ ((v2 ^ 0xC4369C33) + 14517821) ^ ((v2 ^ 0x7BF9FFFF) - 1089280527) ^ 0xACB9B304;
  return (*(v1 + 41408))();
}

uint64_t sub_1006EE6B4@<X0>(char a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v18 = v8 + a2;
  v19 = v8 + a3;
  v20 = (a5 + v19 + v7);
  v21 = *v20;
  v22 = ((((v20 ^ v5) & 0x7FFFFFFF) * v15) ^ ((((v20 ^ v5) & 0x7FFFFFFF) * v15) >> 16)) * v15;
  *(a4 + v19) = v21 ^ *(v16 + (v22 >> 24)) ^ *(v13 + (v22 >> 24)) ^ *((v22 >> 24) + v14 + 3) ^ v22 ^ (BYTE3(v22) * a1) ^ v12;
  return (*(v17 + 8 * (((v18 + v9 == v10) * v11) ^ v6)))();
}

uint64_t sub_1006EE734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v8 = v5 + 666446097 + (((*(v6 + 16) ^ 0x744990C5) - 1950978245) ^ ((*(v6 + 16) ^ 0x38C5C401) - 952484865) ^ (((a5 + 179031863) & 0xF553FDFF) + 1520841360 + (*(v6 + 16) ^ 0xA55993D5)));
  v9 = (v8 ^ 0x808EFB1B) & (2 * (v8 & 0xA02CFB9C)) ^ v8 & 0xA02CFB9C;
  v10 = ((2 * (v8 ^ 0x80CE5B33)) ^ 0x41C5415E) & (v8 ^ 0x80CE5B33) ^ (2 * (v8 ^ 0x80CE5B33)) & 0x20E2A0AE;
  v11 = v10 ^ 0x2022A0A1;
  v12 = (v10 ^ 0xC00000) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x838A82BC) & v11 ^ (4 * v11) & 0x20E2A0AC;
  v14 = (v13 ^ 0x8280A0) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x20602003)) ^ 0xE2A0AF0) & (v13 ^ 0x20602003) ^ (16 * (v13 ^ 0x20602003)) & 0x20E2A0A0;
  v16 = v14 ^ 0x20E2A0AF ^ (v15 ^ 0x220000) & (v14 << 8);
  LODWORD(STACK[0x550]) = v8 ^ (2 * ((v16 << 16) & 0x20E20000 ^ v16 ^ ((v16 << 16) ^ 0x20AF0000) & (((v15 ^ 0x20C0A00F) << 8) & 0x20E20000 ^ 0x420000 ^ (((v15 ^ 0x20C0A00F) << 8) ^ 0x62A00000) & (v15 ^ 0x20C0A00F)))) ^ 0x49787DD3;
  return (*(v7 + 8 * (a5 + 1658)))(a1, a2, a3, a4, 124769379, 2707603221, 1587364075, 1480496510);
}

uint64_t sub_1006EE98C()
{
  v3 = (&STACK[0x5E8] + (v0 | 0x1D));
  v4.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v4.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v5.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v5.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v6 = vaddq_s8(vsubq_s8(*(&STACK[0x670] + (v0 | 0x1D) + 16), vandq_s8(vaddq_s8(*(&STACK[0x670] + (v0 | 0x1D) + 16), *(&STACK[0x670] + (v0 | 0x1D) + 16)), v4)), v5);
  *v3 = vaddq_s8(vsubq_s8(*(&STACK[0x670] + (v0 | 0x1D)), vandq_s8(vaddq_s8(*(&STACK[0x670] + (v0 | 0x1D)), *(&STACK[0x670] + (v0 | 0x1D))), v4)), v5);
  v3[1] = v6;
  return (*(v2 + 8 * ((110 * (v0 - 20692 + 22 * (v1 ^ 0xB508u) != 96)) ^ v1)))();
}

uint64_t sub_1006EEA44@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v29 = a1[4];
  v36 = a1[3];
  v30 = *a1;
  v31 = (*a1)[1];
  *(v28 - 112) = *a1;
  *(v28 - 104) = v29;
  *(v28 - 128) = &a22;
  *(v28 - 120) = a2;
  *(v28 - 136) = v27 + 23381 + 1112314453 * ((((v28 - 144) | 0xB7F157F9) - ((v28 - 144) | 0x480EA806) + 1208920070) ^ 0x58A77D20);
  *(v28 - 144) = v31;
  (*(v26 + 8 * (v27 ^ 0xE710)))(v28 - 144);
  v32 = 2 * (v28 - 144);
  *(v28 - 144) = v30;
  *(v28 - 136) = &a22;
  *(v28 - 112) = v27 + 1012831759 * (((v32 | 0x9BEC6E26) - (v28 - 144) - 1307981587) ^ 0x5D652199) + 1051074809;
  *(v28 - 128) = &a10;
  *(v28 - 120) = v29;
  (*(v26 + 8 * (v27 ^ 0xE6C8)))(v28 - 144);
  *(v28 - 136) = v27 + 23381 + 1112314453 * (((v32 | 0x116594CC) - (v28 - 144) - 145934950) ^ 0xE7E4E0BF);
  *(v28 - 144) = &a22;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  *(v28 - 128) = &a26;
  *(v28 - 120) = &a10;
  (*(v26 + 8 * (v27 ^ 0xE710)))(v28 - 144);
  *(v28 - 136) = v27 + 23381 + 1112314453 * ((2 * ((v28 - 144) & 0x67AB8E18) - (v28 - 144) - 1739296285) ^ 0x77025B3A);
  *(v28 - 144) = &a26;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  *(v28 - 128) = &a20;
  *(v28 - 120) = &a10;
  (*(v26 + 8 * (v27 ^ 0xE710)))(v28 - 144);
  *(v28 - 128) = &a14;
  *(v28 - 120) = &a10;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  *(v28 - 136) = v27 + 23381 + 1112314453 * (((v32 | 0x20A74612) - (v28 - 144) + 1873566967) ^ 0x7F0589D0);
  *(v28 - 144) = &a20;
  (*(v26 + 8 * (v27 ^ 0xE710)))(v28 - 144);
  *(v28 - 136) = v27 + 23381 + 1112314453 * ((((v28 - 144) ^ 0x648D94FC) - 2 * (((v28 - 144) ^ 0x648D94FC) & 0x42786810) - 1032296431) ^ 0x49A3D634);
  *(v28 - 144) = &a14;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  *(v28 - 128) = &a16;
  *(v28 - 120) = &a10;
  (*(v26 + 8 * (v27 ^ 0xE710)))(v28 - 144);
  *(v28 - 128) = &a24;
  *(v28 - 120) = &a10;
  *(v28 - 136) = v27 + 23381 + 1112314453 * (((v32 | 0x9AA8FE36) - (v28 - 144) + 850100453) ^ 0x220255C2);
  *(v28 - 144) = &a16;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  (*(v26 + 8 * (v27 + 40176)))(v28 - 144);
  *(v28 - 144) = &a24;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  *(v28 - 128) = &a18;
  *(v28 - 120) = &a10;
  *(v28 - 136) = v27 + 23381 + 1112314453 * ((((v28 - 144) | 0xF96D863B) + (~(v28 - 144) | 0x69279C4)) ^ 0x163BACE3);
  (*(v26 + 8 * (v27 ^ 0xE710)))(v28 - 144);
  *(v28 - 136) = v27 + 23381 + 1112314453 * ((((v28 - 144) | 0x6A67622B) - ((v28 - 144) & 0x6A676228)) ^ 0x853148F2);
  *(v28 - 128) = &a10;
  *(v28 - 120) = &a10;
  *(v28 - 144) = &a18;
  *(v28 - 112) = v30;
  *(v28 - 104) = v29;
  (*(v26 + 8 * (v27 ^ 0xE710)))(v28 - 144);
  v33 = *v30;
  *(v28 - 128) = &a12;
  *(v28 - 136) = (v27 + 38787) ^ (155453101 * ((((v28 - 144) | 0xADF40533) - ((v28 - 144) & 0xADF40530)) ^ 0x4BD21EFC));
  *(v28 - 144) = v33;
  (*(v26 + 8 * (v27 ^ 0xE73E)))(v28 - 144);
  *(v28 - 144) = v36;
  *(v28 - 136) = v27 - 297845113 * ((~(v28 - 144) & 0xD1A2410 | (v28 - 144) & 0xF2E5DBE8) ^ 0x7A29388E) + 14215;
  v34 = (*(v26 + 8 * (v27 ^ 0xE642)))(v28 - 144);
  return (*(v26 + 8 * ((993 * (((v27 + 1166583288) & 0xBA777FF4) + 27847 + *(v28 - 132) - 2094030622 < 0x7FFFFFFF)) ^ v27)))(v34);
}

uint64_t sub_1006EEF58@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x18A0];
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EF0]) = v2 - 1022166737 * (((((&STACK[0x10000] + 3800) | 0x8D664C2) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0xF7299B3D)) ^ 0x4D397AAF) - 24107;
  STACK[0x10EE0] = a1;
  STACK[0x10ED8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xBBB1)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_1006EF088()
{
  STACK[0x8FE8] = *(STACK[0x8900] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1986096245;
  LODWORD(STACK[0x704C]) = -2116087626;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v0 - 29747)))();
}

uint64_t sub_1006EF10C()
{
  STACK[0x5C50] = 0x3AE1413A0D5C9752;
  LODWORD(STACK[0x1374]) = 759625376;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006EF3B4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 1045745514;
  *(a1 + 40) = 1850287412;
  v4 = (*(v3 + 8 * ((v2 ^ 0x2CC2) + 5209)))(v1);
  STACK[0x970] = v4;
  STACK[0x1F68] = v4;
  return (*(v3 + 8 * (((v4 == 0) * ((((v2 ^ 0x2CC2) + 1928086455) & 0xEF73D65B) - 1650511834)) ^ v2 ^ 0x2CC2)))();
}

uint64_t sub_1006EF510()
{
  *(v4 - 248) = v0;
  *(v4 - 252) = (v1 + 14737) ^ (1012831759 * (v2 ^ 0x1093168A));
  v5 = (*(v3 + 8 * (v1 ^ 0xF99C)))(v4 - 256);
  *(STACK[0xCD8] + 136) = 0;
  return (*(v3 + 8 * v1))(v5);
}

uint64_t sub_1006EF56C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = *(v4 + 8 * a2);
  *(a1 + (v3 - 714641378)) = HIBYTE(v2) ^ 0xFB;
  *(a1 + (v3 - 714641377)) = BYTE2(v2) ^ 0x72;
  *(a1 + (v3 - 714641376)) = BYTE1(v2) ^ 2;
  *(a1 + (v3 - 714641375)) = v2 ^ 0x70;
  return v5();
}

uint64_t sub_1006EF5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a9)
  {
    v27 = v24 == 0;
  }

  else
  {
    v27 = 1;
  }

  v29 = v27 || a2 == 0;
  return (*(v26 + 8 * ((1018 * ((v29 ^ (v25 + (v25 ^ 0xF9))) & 1)) ^ v25)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1006EF620()
{
  v4 = v3[130];
  v5 = v3[36];
  v3[215] = &STACK[0xBA0] + v0 + ((v1 - 26918) | 0xA04Au) - 0x3240C0231B29CCDDLL;
  v3[55] = v0;
  v3[59] = v4;
  v3[92] = v5;
  v6 = (*(v2 + 8 * (v1 ^ 0xBBEC)))();
  STACK[0x840] = 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v2 + 8 * ((164 * v8) ^ v1)))(v6);
}

uint64_t sub_1006EF850()
{
  v2 = v1 + 1640 * STACK[0xB390];
  STACK[0xEB0] = v2 + 32;
  STACK[0xE90] = v2 + 236;
  v3 = *(STACK[0xF18] + 8 * v0);
  v4 = STACK[0xF10];
  LODWORD(STACK[0xED0]) = 829 * (STACK[0xF10] ^ 0x8B25);
  LODWORD(STACK[0xEC0]) = v4 - 22792;
  LODWORD(STACK[0xE80]) = v4 + 196266403;
  LODWORD(STACK[0xE70]) = (v4 + 196266403) ^ 0x12E3;
  v5 = 634647737 * ((((2 * &STACK[0x10ED8]) | 0xCB61FAFB80B8A24ALL) - &STACK[0x10ED8] - 0x65B0FD7DC05C5125) ^ 0xBF6B5292ADCA7ED9);
  LODWORD(STACK[0xE40]) = v4 - 933293016;
  LODWORD(STACK[0xE30]) = (v4 - 933293016) ^ 0x127C;
  STACK[0xE20] = (2 * (&STACK[0x10ED8] & 0x5EFC4AE4928FD948) - &STACK[0x10ED8] + 0x2103B51B6D7026B0) ^ 0xFBD81AF400E6094CLL;
  LODWORD(STACK[0xE10]) = v4 + 35364267;
  LODWORD(STACK[0xE00]) = (v4 + 35364267) ^ 0xF3;
  STACK[0xDF0] = ((&STACK[0x10ED8] | 0x9713C83DA029EADFLL) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x68EC37C25FD61520)) ^ 0x4DC867D2CDBFC523;
  LODWORD(STACK[0xDD0]) = (v4 - 1045149959) ^ 0x35;
  LODWORD(STACK[0xDE0]) = v4 - 1045149959;
  LODWORD(STACK[0xDC0]) = (v4 - 1045149959) ^ 0x139B;
  STACK[0xDB0] = &STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL;
  STACK[0xD90] = (-2 - ((~&STACK[0x10ED8] | 0x5E9C6B174B229285) + (&STACK[0x10ED8] | 0xA16394E8B4DD6D7ALL))) ^ 0x8447C4F826B4BD79;
  LODWORD(STACK[0xDA0]) = v4 - 2137291934;
  LODWORD(STACK[0xD80]) = (v4 - 2137291934) ^ 0x124C;
  LODWORD(STACK[0xD70]) = v4 - 24272;
  STACK[0xE60] = v5;
  STACK[0xD60] = v5 ^ 0x46ECF5F2;
  LODWORD(STACK[0xD50]) = v4 + 16305;
  LODWORD(STACK[0xD40]) = v4 ^ 0x41D7;
  return v3();
}

uint64_t sub_1006EFB48@<X0>(uint64_t a1@<X8>)
{
  v6 = &STACK[0xC4D0] + a1;
  STACK[0x4BD8] = &STACK[0xC4D0] + a1;
  STACK[0x9830] = (v2 + 80);
  v7 = v2[192];
  STACK[0x8F60] = (v2 + 128);
  STACK[0x3528] = (v2 + 48);
  STACK[0x69E8] = (v2 + 16);
  v8 = STACK[0xE58];
  v9 = *STACK[0xE58] & 0xFFFFFFFFE6F073DCLL;
  v10 = STACK[0xE50];
  v11 = *STACK[0xE50];
  v12 = *(v11 + v9);
  v13 = 1864610357 * (((1864610357 * ((v12 ^ (v2 + 192)) & 0x7FFFFFFFu)) >> ((((v1 ^ 0xA2) - 66) | 1) ^ 0x2B)) ^ (1864610357 * ((v12 ^ (v2 + 192)) & 0x7FFFFFFF)));
  v14 = 51 * ((1864610357 * (((1864610357 * ((v12 ^ (v2 + 192)) & 0x7FFFFFFFu)) >> ((((v1 ^ 0xA2) - 66) | 1) ^ 0x2B)) ^ (1864610357 * ((v12 ^ (v2 + 192)) & 0x7FFFFFFF)))) >> 24);
  v15 = *(v3 + (v13 >> 24));
  v16 = *((v13 >> 24) + v4 + 1);
  v17 = *(v5 + (v13 >> 24));
  v18 = v2[176];
  STACK[0xED0] = (v2 + 176);
  v19 = 1864610357 * ((1864610357 * ((v12 ^ (v2 + 176)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v12 ^ (v2 + 176)) & 0x7FFFFFFFu)) >> 16));
  *v6 = v7 ^ v16 ^ v15 ^ v17 ^ *((v19 >> 24) + v4 + 1) ^ *(v3 + (v19 >> 24)) ^ *(v5 + (v19 >> 24)) ^ v19 ^ v13 ^ v18 ^ (51 * BYTE3(v19)) ^ v14 ^ 0x9D;
  LOBYTE(v13) = v2[177];
  v20 = v2[193];
  LODWORD(v9) = *(v11 + v9);
  STACK[0x6410] = (v2 + 32);
  v21 = 1864610357 * ((1864610357 * ((v9 ^ (v2 + 193)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v9 ^ (v2 + 193)) & 0x7FFFFFFF)) >> 16));
  v22 = 51 * ((1864610357 * ((1864610357 * ((v9 ^ (v2 + 193)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v9 ^ (v2 + 193)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v23 = 1864610357 * ((1864610357 * ((v9 ^ (v2 + 177)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v9 ^ (v2 + 177)) & 0x7FFFFFFF)) >> 16));
  v6[1] = *((v21 >> 24) + v4 + 1) ^ *(v3 + (v21 >> 24)) ^ *(v5 + (v21 >> 24)) ^ *((v23 >> 24) + v4 + 1) ^ *(v3 + (v23 >> 24)) ^ *(v5 + (v23 >> 24)) ^ v20 ^ v23 ^ v21 ^ v13 ^ (51 * BYTE3(v23)) ^ v22 ^ 0x9D;
  LODWORD(v23) = *(*v10 + (*v8 & 0xFFFFFFFFE6F073DCLL));
  v24 = 1864610357 * ((1864610357 * (((v2 + 194) ^ v23) & 0x7FFFFFFF)) ^ ((1864610357 * (((v2 + 194) ^ v23) & 0x7FFFFFFF)) >> 16));
  v25 = 51 * ((1864610357 * ((1864610357 * (((v2 + 194) ^ v23) & 0x7FFFFFFF)) ^ ((1864610357 * (((v2 + 194) ^ v23) & 0x7FFFFFFF)) >> 16))) >> 24);
  v26 = 1864610357 * ((1864610357 * (((v2 + 178) ^ v23) & 0x7FFFFFFF)) ^ ((1864610357 * (((v2 + 178) ^ v23) & 0x7FFFFFFF)) >> 16));
  v6[2] = *((v24 >> 24) + v4 + 1) ^ *(v3 + (v24 >> 24)) ^ *(v5 + (v24 >> 24)) ^ v2[194] ^ *((v26 >> 24) + v4 + 1) ^ *(v3 + (v26 >> 24)) ^ *(v5 + (v26 >> 24)) ^ v2[178] ^ v26 ^ v24 ^ (51 * BYTE3(v26)) ^ v25 ^ 0x9D;
  v27 = v8;
  v28 = *(*v10 + (*v8 & 0xFFFFFFFFE6F073DCLL));
  v29 = 1864610357 * ((1864610357 * ((v28 ^ (v2 + 195)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v28 ^ (v2 + 195)) & 0x7FFFFFFFu)) >> 16));
  v30 = *(&off_1010A0B50 + (v1 ^ 0xC2A2) + 1672) - 605402682;
  v31 = *(&off_1010A0B50 + (v1 ^ 0xC2A2) - 1131) - 775976135;
  v32 = *(&off_1010A0B50 + (v1 ^ 0xCB52)) - 867827570;
  v33 = 1864610357 * ((1864610357 * ((v28 ^ (v2 + 179)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v28 ^ (v2 + 179)) & 0x7FFFFFFFu)) >> 16));
  v34 = STACK[0x4BD8];
  *(v34 + 3) = v30[v29 >> 24] ^ v31[v29 >> 24] ^ v32[v29 >> 24] ^ *((v33 >> 24) + v4 + 1) ^ v33 ^ (53 * ((53 * (v28 ^ (v2 - 61))) ^ ((1864610357 * ((v28 ^ (v2 + 195)) & 0x7FFFFFFFu)) >> 16))) ^ *(v3 + (v33 >> 24)) ^ *(v5 + (v33 >> 24)) ^ (51 * BYTE3(v33)) ^ (57 * ((1864610357 * ((1864610357 * ((v28 ^ (v2 + 195)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v28 ^ (v2 + 195)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ v2[195] ^ v2[179] ^ 0x9D;
  LOBYTE(v33) = v2[196];
  STACK[0x8910] = (v2 + 96);
  v35 = *v8 & 0xFFFFFFFFE6F073DCLL;
  v36 = *(*v10 + v35);
  v37 = 1864610357 * ((1864610357 * ((v36 ^ (v2 + 196)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v36 ^ (v2 + 196)) & 0x7FFFFFFFu)) >> 16));
  v38 = 1864610357 * ((1864610357 * ((v36 ^ (v2 + 180)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v36 ^ (v2 + 180)) & 0x7FFFFFFFu)) >> 16));
  *(v34 + 4) = v30[v37 >> 24] ^ v31[v37 >> 24] ^ v32[v37 >> 24] ^ v30[v38 >> 24] ^ v31[v38 >> 24] ^ v32[v38 >> 24] ^ v33 ^ (53 * ((53 * (v36 ^ (v2 - 76))) ^ ((1864610357 * ((v36 ^ (v2 + 180)) & 0x7FFFFFFFu)) >> 16))) ^ (53 * ((53 * (v36 ^ (v2 - 60))) ^ ((1864610357 * ((v36 ^ (v2 + 196)) & 0x7FFFFFFFu)) >> 16))) ^ v2[180] ^ (57 * ((1864610357 * ((1864610357 * ((v36 ^ (v2 + 180)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v36 ^ (v2 + 180)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ (57 * ((1864610357 * ((1864610357 * ((v36 ^ (v2 + 196)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v36 ^ (v2 + 196)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ 0x9D;
  v39 = *(*v10 + v35);
  v40 = 1864610357 * ((1864610357 * ((v39 ^ (v2 + 197)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v39 ^ (v2 + 197)) & 0x7FFFFFFFu)) >> 16));
  v41 = 1864610357 * ((1864610357 * ((v39 ^ (v2 + 181)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v39 ^ (v2 + 181)) & 0x7FFFFFFFu)) >> 16));
  v6[5] = v30[v40 >> 24] ^ v31[v40 >> 24] ^ v32[v40 >> 24] ^ v30[v41 >> 24] ^ v31[v41 >> 24] ^ v32[v41 >> 24] ^ v2[197] ^ (53 * ((53 * (v39 ^ (v2 - 75))) ^ ((1864610357 * ((v39 ^ (v2 + 181)) & 0x7FFFFFFFu)) >> 16))) ^ (53 * ((53 * (v39 ^ (v2 - 59))) ^ ((1864610357 * ((v39 ^ (v2 + 197)) & 0x7FFFFFFFu)) >> 16))) ^ v2[181] ^ (57 * ((1864610357 * ((1864610357 * ((v39 ^ (v2 + 181)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v39 ^ (v2 + 181)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ (57 * ((1864610357 * ((1864610357 * ((v39 ^ (v2 + 197)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v39 ^ (v2 + 197)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ 0x9D;
  v42 = *v8 & 0xFFFFFFFFE6F073DCLL;
  v43 = *(*v10 + v42);
  v44 = 1864610357 * ((1864610357 * ((v43 ^ (v2 + 198)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v2 + 198)) & 0x7FFFFFFFu)) >> 16));
  v45 = 1864610357 * ((1864610357 * ((v43 ^ (v2 + 182)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v2 + 182)) & 0x7FFFFFFFu)) >> 16));
  v6[6] = v30[v44 >> 24] ^ v31[v44 >> 24] ^ v32[v44 >> 24] ^ v30[v45 >> 24] ^ v31[v45 >> 24] ^ v32[v45 >> 24] ^ v2[198] ^ (53 * ((53 * (v43 ^ (v2 - 74))) ^ ((1864610357 * ((v43 ^ (v2 + 182)) & 0x7FFFFFFFu)) >> 16))) ^ (53 * ((53 * (v43 ^ (v2 - 58))) ^ ((1864610357 * ((v43 ^ (v2 + 198)) & 0x7FFFFFFFu)) >> 16))) ^ v2[182] ^ (57 * ((1864610357 * ((1864610357 * ((v43 ^ (v2 + 182)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v2 + 182)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ (57 * ((1864610357 * ((1864610357 * ((v43 ^ (v2 + 198)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ (v2 + 198)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ 0x9D;
  v46 = *(*v10 + v42);
  v47 = 1864610357 * ((1864610357 * ((v46 ^ (v2 + 199)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v46 ^ (v2 + 199)) & 0x7FFFFFFFu)) >> 16));
  v48 = 1864610357 * ((1864610357 * ((v46 ^ (v2 + 183)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v46 ^ (v2 + 183)) & 0x7FFFFFFFu)) >> 16));
  v6[7] = v30[v47 >> 24] ^ v31[v47 >> 24] ^ v32[v47 >> 24] ^ v30[v48 >> 24] ^ v31[v48 >> 24] ^ v32[v48 >> 24] ^ v2[199] ^ (53 * ((53 * (v46 ^ (v2 - 73))) ^ ((1864610357 * ((v46 ^ (v2 + 183)) & 0x7FFFFFFFu)) >> 16))) ^ (53 * ((53 * (v46 ^ (v2 - 57))) ^ ((1864610357 * ((v46 ^ (v2 + 199)) & 0x7FFFFFFFu)) >> 16))) ^ v2[183] ^ (57 * ((1864610357 * ((1864610357 * ((v46 ^ (v2 + 183)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v46 ^ (v2 + 183)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ (57 * ((1864610357 * ((1864610357 * ((v46 ^ (v2 + 199)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v46 ^ (v2 + 199)) & 0x7FFFFFFFu)) >> 16))) >> 24)) ^ 0x9D;
  LOBYTE(v41) = v2[200];
  STACK[0x5A78] = (v2 + 144);
  v49 = *v10;
  v50 = *v8 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v42) = *(*v10 + v50);
  v51 = 1864610357 * ((1864610357 * ((v42 ^ (v2 + 200)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 200)) & 0x7FFFFFFF)) >> 16));
  v52 = 1864610357 * ((1864610357 * ((v42 ^ (v2 + 184)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 184)) & 0x7FFFFFFF)) >> 16));
  v6[8] = v30[v51 >> 24] ^ v31[v51 >> 24] ^ v32[v51 >> 24] ^ v30[v52 >> 24] ^ v31[v52 >> 24] ^ v32[v52 >> 24] ^ v41 ^ (53 * ((53 * (v42 ^ (v2 - 72))) ^ ((1864610357 * ((v42 ^ (v2 + 184)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v42 ^ (v2 - 56))) ^ ((1864610357 * ((v42 ^ (v2 + 200)) & 0x7FFFFFFF)) >> 16))) ^ v2[184] ^ (57 * ((1864610357 * ((1864610357 * ((v42 ^ (v2 + 184)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 184)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (57 * ((1864610357 * ((1864610357 * ((v42 ^ (v2 + 200)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 200)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x9D;
  LODWORD(v49) = *(v49 + v50);
  v53 = 1864610357 * ((1864610357 * ((v49 ^ (v2 + 201)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v49 ^ (v2 + 201)) & 0x7FFFFFFF)) >> 16));
  v54 = 1864610357 * ((1864610357 * ((v49 ^ (v2 + 185)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v49 ^ (v2 + 185)) & 0x7FFFFFFF)) >> 16));
  v6[9] = v30[v53 >> 24] ^ v31[v53 >> 24] ^ v32[v53 >> 24] ^ v30[v54 >> 24] ^ v31[v54 >> 24] ^ v32[v54 >> 24] ^ v2[201] ^ (53 * ((53 * (v49 ^ (v2 - 71))) ^ ((1864610357 * ((v49 ^ (v2 + 185)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v49 ^ (v2 - 55))) ^ ((1864610357 * ((v49 ^ (v2 + 201)) & 0x7FFFFFFF)) >> 16))) ^ v2[185] ^ (57 * ((1864610357 * ((1864610357 * ((v49 ^ (v2 + 185)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v49 ^ (v2 + 185)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (57 * ((1864610357 * ((1864610357 * ((v49 ^ (v2 + 201)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v49 ^ (v2 + 201)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x9D;
  LOBYTE(v51) = v2[202];
  LOBYTE(v48) = v2[186];
  STACK[0x4408] = (v2 + 112);
  v55 = *v10;
  v56 = *v8 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v42) = *(*v10 + v56);
  v57 = 1864610357 * ((1864610357 * ((v42 ^ (v2 + 202)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 202)) & 0x7FFFFFFF)) >> 16));
  v58 = 1864610357 * ((1864610357 * ((v42 ^ (v2 + 186)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 186)) & 0x7FFFFFFF)) >> 16));
  v6[10] = v30[v57 >> 24] ^ v31[v57 >> 24] ^ v32[v57 >> 24] ^ v30[v58 >> 24] ^ v31[v58 >> 24] ^ v32[v58 >> 24] ^ v51 ^ (53 * ((53 * (v42 ^ (v2 - 70))) ^ ((1864610357 * ((v42 ^ (v2 + 186)) & 0x7FFFFFFF)) >> 16))) ^ (53 * ((53 * (v42 ^ (v2 - 54))) ^ ((1864610357 * ((v42 ^ (v2 + 202)) & 0x7FFFFFFF)) >> 16))) ^ v48 ^ (57 * ((1864610357 * ((1864610357 * ((v42 ^ (v2 + 186)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 186)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (57 * ((1864610357 * ((1864610357 * ((v42 ^ (v2 + 202)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 202)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x9D;
  LODWORD(v55) = *(v55 + v56);
  v59 = 1864610357 * ((1864610357 * ((v55 ^ (v2 + 203)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v55 ^ (v2 + 203)) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v8) = 51 * ((1864610357 * ((1864610357 * ((v55 ^ (v2 + 203)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v55 ^ (v2 + 203)) & 0x7FFFFFFF)) >> 16))) >> 24);
  v60 = *(&off_1010A0B50 + (v1 ^ 0xCAD8)) - 1942701354;
  v61 = *(&off_1010A0B50 + (v1 ^ 0xCBD3)) - 1724436459;
  v62 = *(&off_1010A0B50 + (v1 ^ 0xC73F)) - 301081719;
  v63 = 1864610357 * ((1864610357 * ((v55 ^ (v2 + 187)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v55 ^ (v2 + 187)) & 0x7FFFFFFF)) >> 16));
  v6[11] = v60[(v59 >> 24) + 1] ^ v61[v59 >> 24] ^ v62[v59 >> 24] ^ v30[v63 >> 24] ^ v63 ^ v59 ^ v31[v63 >> 24] ^ v32[v63 >> 24] ^ (57 * BYTE3(v63)) ^ v8 ^ v2[203] ^ v2[187] ^ 0x9D;
  LOBYTE(v31) = v2[204];
  STACK[0x6248] = (v2 + 160);
  v64 = *v10;
  v65 = *v27 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v42) = *(*v10 + v65);
  v66 = 1864610357 * ((1864610357 * ((v42 ^ (v2 + 204)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 204)) & 0x7FFFFFFF)) >> 16));
  v67 = 1864610357 * ((1864610357 * ((v42 ^ (v2 + 188)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 188)) & 0x7FFFFFFF)) >> 16));
  v6[12] = v60[(v66 >> 24) + 1] ^ v61[v66 >> 24] ^ v62[v66 >> 24] ^ v60[(v67 >> 24) + 1] ^ v61[v67 >> 24] ^ v62[v67 >> 24] ^ v31 ^ v67 ^ (53 * ((53 * (v42 ^ (v2 - 52))) ^ ((1864610357 * ((v42 ^ (v2 + 204)) & 0x7FFFFFFF)) >> 16))) ^ v2[188] ^ (51 * ((1864610357 * ((1864610357 * ((v42 ^ (v2 + 188)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 188)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (51 * ((1864610357 * ((1864610357 * ((v42 ^ (v2 + 204)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v42 ^ (v2 + 204)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x9D;
  LOBYTE(v31) = v2[205];
  LOBYTE(v48) = v2[189];
  STACK[0x7DF0] = v2;
  LODWORD(v64) = *(v64 + v65);
  v68 = 1864610357 * ((1864610357 * ((v64 ^ (v2 + 205)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v64 ^ (v2 + 205)) & 0x7FFFFFFF)) >> 16));
  v69 = 1864610357 * ((1864610357 * ((v64 ^ (v2 + 189)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v64 ^ (v2 + 189)) & 0x7FFFFFFF)) >> 16));
  v6[13] = v60[(v68 >> 24) + 1] ^ v61[v68 >> 24] ^ v62[v68 >> 24] ^ v60[(v69 >> 24) + 1] ^ v61[v69 >> 24] ^ v62[v69 >> 24] ^ v31 ^ v69 ^ (53 * ((53 * (v64 ^ (v2 - 51))) ^ ((1864610357 * ((v64 ^ (v2 + 205)) & 0x7FFFFFFF)) >> 16))) ^ v48 ^ (51 * ((1864610357 * ((1864610357 * ((v64 ^ (v2 + 189)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v64 ^ (v2 + 189)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (51 * ((1864610357 * ((1864610357 * ((v64 ^ (v2 + 205)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v64 ^ (v2 + 205)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x9D;
  LOBYTE(v31) = v2[206];
  LOBYTE(v48) = v2[190];
  STACK[0x8740] = STACK[0xED0];
  v70 = *v10;
  v71 = *v27 & 0xFFFFFFFFE6F073DCLL;
  LODWORD(v65) = *(*v10 + v71);
  v72 = 1864610357 * ((1864610357 * ((v65 ^ (v2 + 206)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v65 ^ (v2 + 206)) & 0x7FFFFFFF)) >> 16));
  v73 = 1864610357 * ((1864610357 * ((v65 ^ (v2 + 190)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v65 ^ (v2 + 190)) & 0x7FFFFFFF)) >> 16));
  v6[14] = v60[(v72 >> 24) + 1] ^ v61[v72 >> 24] ^ v62[v72 >> 24] ^ v60[(v73 >> 24) + 1] ^ v61[v73 >> 24] ^ v62[v73 >> 24] ^ v31 ^ v73 ^ (53 * ((53 * (v65 ^ (v2 - 50))) ^ ((1864610357 * ((v65 ^ (v2 + 206)) & 0x7FFFFFFF)) >> 16))) ^ v48 ^ (51 * ((1864610357 * ((1864610357 * ((v65 ^ (v2 + 190)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v65 ^ (v2 + 190)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ (51 * ((1864610357 * ((1864610357 * ((v65 ^ (v2 + 206)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v65 ^ (v2 + 206)) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0x9D;
  v75 = v2[191];
  v74 = v2 + 191;
  LOBYTE(v31) = v74[16];
  LODWORD(v70) = *(v70 + v71);
  v76 = 1864610357 * ((1864610357 * ((v70 ^ (v74 + 16)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v70 ^ (v74 + 16)) & 0x7FFFFFFF)) >> 16));
  LODWORD(v48) = 51 * ((1864610357 * ((1864610357 * ((v70 ^ (v74 + 16)) & 0x7FFFFFFF)) ^ ((1864610357 * ((v70 ^ (v74 + 16)) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v71) = v60[(v76 >> 24) + 1];
  LOBYTE(v65) = v61[v76 >> 24];
  LOBYTE(v73) = v62[v76 >> 24];
  v77 = 1864610357 * ((1864610357 * ((v70 ^ v74) & 0x7FFFFFFF)) ^ ((1864610357 * ((v70 ^ v74) & 0x7FFFFFFF)) >> 16));
  STACK[0xEC0] = v60;
  v78 = v60[(v77 >> 24) + 1];
  STACK[0xEB0] = v61;
  v79 = v61[v77 >> 24];
  STACK[0xEA0] = v62;
  v6[15] = v71 ^ v65 ^ v73 ^ v78 ^ v79 ^ v62[v77 >> 24] ^ v31 ^ v77 ^ v76 ^ v75 ^ (51 * BYTE3(v77)) ^ v48 ^ 0x9D;
  STACK[0x9608] = (v74 - 127);
  v80 = *(STACK[0xF18] + 8 * (v1 ^ 0xF669));
  v81 = STACK[0xF10];
  LODWORD(STACK[0xE90]) = STACK[0xF10] - 26920;
  LODWORD(STACK[0xE80]) = v81 - 20097;
  return v80();
}

uint64_t sub_1006F0770@<X0>(int a1@<W8>)
{
  STACK[0x5658] = STACK[0x3D00];
  LODWORD(STACK[0x2564]) = -696377316;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1006F0990()
{
  v2 = STACK[0xF10] ^ 0x802C;
  v3 = STACK[0xF10] + 1835;
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (*(STACK[0xF18] + 8 * (((LODWORD(STACK[0x50F4]) == 20) * (v2 ^ 0xB1D)) ^ v3)))();
}

uint64_t sub_1006F0B20@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x97C4]) = v3;
  LODWORD(STACK[0x7EB8]) = v4;
  LODWORD(STACK[0x3044]) = v2;
  STACK[0x9360] = v1;
  STACK[0x48A0] = v6;
  STACK[0x84A0] = v5;
  return (*(STACK[0xF18] + 8 * (((v5 != 0) * (((a1 + 111679147) & 0xF957F6FD) - 45152)) ^ a1)))();
}

uint64_t sub_1006F0B88()
{
  LODWORD(STACK[0x8654]) = v0;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x9AC4 ^ (v1 + 30227))))();
}

uint64_t sub_1006F0CC8()
{
  v2 = STACK[0x7DB0];
  v3 = STACK[0x4128] + (LODWORD(STACK[0x6A94]) - 1650982676);
  v4 = 634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1E890800) + 512296960) ^ 0x731F27FC);
  LODWORD(STACK[0x10EFC]) = v4 + (LODWORD(STACK[0x7754]) ^ 0xDE77FEFE) + ((2 * LODWORD(STACK[0x7754])) & 0xBCEFFDFC) + 2147473276;
  STACK[0x10F00] = STACK[0x6E0];
  LODWORD(STACK[0x10ED8]) = ((v1 ^ 0xA6C4) + 21041) ^ v4;
  STACK[0x10EE0] = v2;
  STACK[0x10EE8] = v3;
  STACK[0x10EF0] = v0;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * ((v1 ^ 0xA6C4) + 40687)))(&STACK[0x10ED8]);
  v7 = STACK[0x10EF8];
  LODWORD(STACK[0xB3C4]) = STACK[0x10EF8];
  return (*(v5 + 8 * ((60336 * (v7 == (((((v1 ^ 0xA6C4) - 11479) | 0x251) + 34754) ^ 0xE9D54C2A))) ^ v1 ^ 0xA6C4)))(v6);
}

uint64_t sub_1006F0DF4()
{
  STACK[0x10EE0] = *(STACK[0x78B0] + 272);
  LODWORD(STACK[0x10ED8]) = v0 - 1012831759 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x309A4C20) + 815418407) ^ 0x20095AAD) + 26110;
  STACK[0x10EF0] = &STACK[0x6A98];
  STACK[0x10EF8] = &STACK[0x8BA4];
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE1C5)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((LODWORD(STACK[0x10EE8]) == (v0 ^ 0xE9D5ED87)) * (((v0 - 33369383) & 0x1FD5EB4) - 17021)) ^ v0)))(v2);
}

uint64_t sub_1006F0F2C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *v69 = 0x80000000;
  v70.n128_u64[0] = 0x8000000080000000;
  v70.n128_u64[1] = 0x8000000080000000;
  return (*(v68 + 8 * v67))(a1, a2, a3, a4, a5, v70, a67, a66);
}

uint64_t sub_1006F1008(uint64_t a1)
{
  v3.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v3.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v4.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v4.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(STACK[0xF18] + 8 * (v2 - 17170)))(a1, a1 + 40, (v1 & 0xE0) - 32, (v2 + 12267) ^ 0xBBD9, 58205, v3, v4);
}

uint64_t sub_1006F104C()
{
  v1 = STACK[0x5DF0];
  v2 = STACK[0xAC0];
  *v1 = *(STACK[0xAC0] + 224);
  v1[1] = v2[225];
  v1[2] = v2[226];
  v1[3] = v2[227];
  v1[4] = v2[228];
  v1[5] = v2[229];
  v1[6] = v2[230];
  v1[7] = v2[231];
  v1[8] = v2[232];
  v1[9] = v2[233];
  v1[10] = v2[234];
  v1[11] = v2[235];
  v1[12] = v2[236];
  v1[13] = v2[237];
  v1[14] = v2[238];
  v1[15] = v2[239];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006F10F8()
{
  v0 = STACK[0xF18];
  v1 = *(STACK[0xF18] + 8 * ((STACK[0xF10] - 34619) | 0x14));
  STACK[0xED0] = v1;
  STACK[0x8F00] = v1;
  return (*(v0 + 120920))();
}

uint64_t sub_1006F1320(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8 * (v3 ^ 0x3144)) - 441620979;
  v6 = *(v5 + v2 + 16);
  v7 = (v4 + v2);
  *v7 = *(v5 + v2);
  v7[1] = v6;
  return (*(STACK[0xF18] + 8 * ((56 * (v2 + 32 != ((v3 - 7573) ^ 0x22E2))) ^ v3)))();
}

uint64_t sub_1006F1384(uint64_t a1, int a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x680]) = a4;
  LODWORD(STACK[0x688]) = a3;
  LODWORD(STACK[0x698]) = v9;
  v15 = STACK[0x6B0];
  v16 = a3 - a3 / 0x114 * v13;
  v17 = (v9 - 16584) * LODWORD(STACK[0x60C]);
  LODWORD(STACK[0x620]) = v17;
  v18 = v10 + 2104481092;
  v19 = *(a1 + 4 * (v17 - 9981 - (((((v17 - 9981) >> 2) * v12) >> 16) >> 4) * v13));
  v20 = *(a1 + 4 * (a4 - a4 / 0x114 * v13));
  v21 = *(STACK[0x6A8] + 4 * (v17 - 9734 - (((((v17 - 9734) >> 2) * v12) >> 16) >> 4) * v13));
  v23 = __PAIR64__(v20, __ROR4__(v20, 7));
  v22 = (v20 >> 3) ^ v23;
  LODWORD(v23) = v20;
  v25 = v21 ^ 0xF0EC90FE;
  v26 = v10 - ((2 * (v10 + 2104481092)) & 0xC0CC3BE4) + 1574302518;
  v27 = v22 ^ ((v23 >> 18) - ((2 * (v23 >> 18)) & 0x5A755F7A) + 758820797);
  v28 = v27 ^ 0x2D3AAFBD;
  v29 = v21 >> 10;
  v30 = *(STACK[0x6A8] + 4 * v16);
  v31 = a6 - 1810645075;
  v33 = __PAIR64__(v30, __ROR4__(v25, 19));
  v32 = v29 ^ __ROR4__(v25, 17) ^ v33;
  LODWORD(v33) = v30;
  v34 = v8 + v11;
  v35 = (v19 >> 3) ^ __ROR4__(v19 ^ 0xA51B9052, 18) ^ __ROR4__(v19 ^ 0xA51B9052, 7) ^ 0xDD086023;
  v36 = (v33 >> 17) ^ (v30 >> 10) ^ __ROR4__(v30, 19) ^ 0x72BC6EF8;
  v37 = v32 ^ 0x2107178E;
  v38 = (a6 - ((2 * (a6 - 1810645075)) & 0x594C0F5C) + 1085917019) ^ (v8 + v11) ^ v27;
  v39 = v38 ^ 0x819CA813;
  v40 = v18 - a5;
  v42 = v35 ^ v26;
  v43 = (v38 ^ 0x819CA813) - 2 * ((v38 ^ 0x819CA813) & 0x60661DF6 ^ v38 & 4) - 530178574;
  v44 = v34 - a2;
  v45 = (a5 - (v40 ^ a7)) ^ v40 ^ a7;
  v46 = (v35 ^ (a8 - ((2 * a8) & 0xC0CC3BE4) - 530178574)) - a8;
  v47 = v42 - v18;
  v48 = v14 ^ ((v14 ^ 0xF7A1F9A8) - 540356873) ^ ((v14 ^ 0x7E6BE8C7) + 1442897818) ^ ((v14 ^ 0xA1A33671) - 1983381200) ^ ((v14 ^ 0xFFFDEFBF) - 677979934) ^ (v44 - ((2 * v44) & 0x95FE0A2A) - 889256683) ^ 0x1D6BCDB4;
  v49 = (v43 ^ v35) - v39;
  v50 = (a2 - v48) ^ v48;
  v51 = v34 - a2 - v50;
  v52 = (v31 + v44) ^ v44;
  LODWORD(STACK[0x670]) = v52;
  LODWORD(STACK[0x668]) = v34 - a2;
  LODWORD(STACK[0x678]) = v40;
  v53 = (v40 + a8) ^ v40;
  v54 = (a5 - (v40 ^ a7)) ^ v40;
  v55 = v40 - v45;
  v56 = v50 + v52;
  v57 = v47 ^ v49;
  v58 = (a2 - v48) ^ (v34 - a2);
  v59 = (2 * (v40 - v45)) & 0xE578DDF0;
  v60 = v57 ^ 0x823EA9B5;
  LODWORD(STACK[0x660]) = v53;
  v61 = (v36 ^ (v53 - ((2 * v53) & 0xE578DDF0) + 1924951800)) - v53;
  v62 = v45 + v53;
  v63 = (v50 + v52) ^ v58;
  v64 = v52 ^ v51 ^ 0xD3C68593 ^ (v37 - ((2 * v37) & 0xA78D0B26) - 741964397);
  v65 = ((v36 ^ (v55 - v59 + 1924951800)) - v55) ^ (v61 - ((2 * v61) & 0x63E37490) - 1309558200) ^ 0xB1F1BA48;
  v66 = v50 + v52 + 1557966963;
  LODWORD(STACK[0x654]) = v66;
  LODWORD(STACK[0x638]) = v62;
  v67 = (v62 ^ v54) + v62;
  LODWORD(STACK[0x640]) = v67;
  v68 = ((v66 & 0x709C36E3 ^ 0x709C36E3) + (v66 & 0x709C36E3)) * LODWORD(STACK[0x690]);
  LODWORD(STACK[0x648]) = v63 + v56;
  v69 = v50 - v51;
  v70 = *(STACK[0x6A8] + 4 * (v68 % 0x114));
  v71 = v69 - (v63 + v56);
  LODWORD(STACK[0x630]) = v71;
  v72 = v45 - v55;
  v73 = STACK[0x620];
  v74 = LODWORD(STACK[0x698]) + (v56 & 0xD1) + (v56 & 0xD1 ^ 0xD1);
  v75 = v70 + a2 + v58 + *(STACK[0x6A8] + 4 * ((LOWORD(STACK[0x620]) - 8442) % 0x114u)) + v37 + v28;
  LODWORD(STACK[0x658]) = 304;
  *(STACK[0x6A8] + 4 * ((19 * v74 + 304) % 0x114u)) = v75 + 219984077;
  v76 = *(STACK[0x6A8] + 4 * ((v73 - 11235) % 0x114u)) + *(STACK[0x6A8] + 4 * ((v73 - 11064) % 0x114u)) + (((v60 ^ (v46 - ((2 * v46) & 0x47D536A) - 2109822539)) - a5) ^ 0xFFFFEDFB) + ((2 * ((v60 ^ (v46 - ((2 * v46) & 0x47D536A) - 2109822539)) - a5)) & 0xFFFFDBF6) + (v65 ^ (((v64 - ((2 * v64) & 0xE578DDF0) + 1924951800) ^ v36) - v64)) - v54;
  LODWORD(STACK[0x628]) = v76;
  v77 = v76 + v71 + 1967055897;
  v78 = v75 - (v72 - v67) + 439968154;
  v79 = *(v15 + (407 * (HIWORD(v77) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIWORD(v77) & 0xF) + 143671)) >> 32)));
  v80 = *(v15 + (407 * ((v77 >> 8) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v77 >> 8) & 0xF) + 143671)) >> 32)));
  v81 = *(v15 + (407 * (v77 & 0xF) + 143671 - 972 * ((4418691 * (407 * (v77 & 0xF) + 143671)) >> 32)));
  v82 = *(STACK[0x6B0] + (407 * (HIWORD(v78) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIWORD(v78) & 0xF) + 143671)) >> 32)));
  v83 = 407 * (v78 >> 4) + 143671 - 972 * ((4418691 * (407 * (v78 >> 4) + 143671)) >> 32);
  v84 = *(STACK[0x6B0] + (407 * ((v78 >> 8) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v78 >> 8) & 0xF) + 143671)) >> 32)));
  v85 = (*(v15 + (407 * ((v78 >> 20) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v78 >> 20) & 0xF) + 143671)) >> 32))) << 12) ^ (((v82 ^ 0xFFFFFFC0) & ((*(v15 + (407 * (v78 >> 28) + 143671 - 972 * ((4418691 * (407 * (v78 >> 28) + 143671)) >> 32))) << 12) ^ (*(v15 + (407 * (HIBYTE(v78) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIBYTE(v78) & 0xF) + 143671)) >> 32))) << 8) ^ 0xA4EB67) | v82 & 0x98) << 8) ^ 0xE12251;
  v86 = (*(v15 + (407 * ((v77 >> 20) & 0xF) + 143671 - 972 * ((4418691 * (407 * ((v77 >> 20) & 0xF) + 143671)) >> 32))) << 12) ^ (((v79 ^ 0xFFFFFFC0) & ((*(v15 + (407 * (v77 >> 28) + 143671 - 972 * ((4418691 * (407 * (v77 >> 28) + 143671)) >> 32))) << 12) ^ (*(v15 + (407 * (HIBYTE(v77) & 0xF) + 143671 - 972 * ((4418691 * (407 * (HIBYTE(v77) & 0xF) + 143671)) >> 32))) << 8) ^ 0xED6CE9) | v79 & 0x16) << 8);
  v87 = ((v85 & (v84 ^ 0xFFFF5A) | v84 & 0xAE) << 8) ^ (*(STACK[0x6B0] + (407 * (v78 >> 12) + 143671 - 972 * ((4418691 * (407 * (v78 >> 12) + 143671)) >> 32))) << 12);
  v88 = v86 ^ 0x791D15;
  v89 = (v86 ^ 0x791D15) & (v80 ^ 0xFFFF50);
  v90 = *(STACK[0x6B0] + (407 * (v78 & 0xF) + 143671 - 972 * ((4418691 * (407 * (v78 & 0xF) + 143671)) >> 32)));
  v91 = ((v89 | v80 & 0xEA) << 8) ^ (*(v15 + (407 * ((v76 + v71 - 7143) >> 12) + 143671 - 972 * ((4418691 * (407 * ((v76 + v71 - 7143) >> 12) + 143671)) >> 32))) << 12);
  v92 = (~v90 & 0xF) << ((((v81 & 4 ^ 0xEF) + 101) ^ ((v81 & 4 ^ 0xCF) + 69) ^ ((v81 & 4 ^ 0x24) - 80)) + (((v81 & 4 ^ 0xAE) - 75) ^ ((v81 & 4) + 93) ^ ((v81 & 4 ^ 0x8D) - 104)) + 85);
  v93 = 407 * (v81 & 0xF ^ 0xC339F59E ^ (v92 - ((2 * v92) & 0x8673EB22) - 1019611759));
  v94 = *(STACK[0x6B0] + (v93 + 154253) % 0x3CC) ^ LODWORD(STACK[0x610]);
  v95 = ((v91 ^ 0xB4EF2CAC) & (v81 ^ 0xFFFFFF93) | v81 & 0x53) ^ (16 * *(v15 + (407 * ((v76 + v71 + 25) >> 4) + 143671 - 972 * ((4418691 * (407 * ((v76 + v71 + 25) >> 4) + 143671)) >> 32))));
  LOWORD(v54) = *(STACK[0x6B0] + v83) ^ (((v87 ^ 0x85482170) & (v90 ^ 0xFFFFFF50) | v90 & 0x80) >> 4);
  v96 = 407 * (((v94 ^ 0xD6FBA117) + 2022620668) ^ ((v94 ^ 0xFC0BD202) + 1384042223) ^ ((v94 ^ 0x2AF071CA) - 2071630553));
  v97 = ((*(STACK[0x6B0] + (v96 - 1546557213) % 0x3CC) >> 4) | 0xB0) ^ *(STACK[0x6B0] + (v93 + 290191) % 0x3CC);
  v98 = 407 * (((v95 >> 4) | (16 * (v54 & 0xF))) ^ 0x85);
  v99 = *(STACK[0x6B0] + (v98 + 154253 - 972 * ((4418691 * (v98 + 154253)) >> 32))) ^ (16 * *(STACK[0x6B0] + (407 * (((v97 ^ 0x6C132BCA) - 1813195722) ^ ((v97 ^ 0x70E3F506) - 1893987590) ^ ((v97 ^ 0x1CF0DE51u) - 485547601)) + 218152) % 0x3CC));
  v100 = 407 * (((v99 ^ 0x2DEA3632) - 908728248) ^ ((v99 ^ 0x1E8ACE90) - 88796954) ^ ((v99 ^ 0x3360FA7D) - 681630711));
  LOBYTE(v99) = *(STACK[0x6B0] + (v98 + 290191 - 972 * ((4418691 * (v98 + 290191)) >> 32)));
  v101 = *(STACK[0x6B0] + (v100 + 511482290) % 0x3CCu) >> 4;
  LOBYTE(v98) = (((v101 ^ 0xC7) - 43) ^ ((v101 ^ 0x47) + 85) ^ ((v101 ^ 0x82) - 110)) - (((v101 ^ v99 ^ 0x68) + 124) ^ ((v101 ^ v99 ^ 0xE9) - 5) ^ ((v101 ^ v99 ^ 0xAC) - 64)) - 91;
  LOBYTE(v93) = v98 & 0x88 | 0x27;
  LOBYTE(v86) = v93 ^ v98 & 0x5E;
  LOBYTE(v15) = 72 - (((v99 ^ 0x9B) + 101) ^ ((v99 ^ 0x97) + 105) ^ ((v99 ^ 0x23) - 35));
  LOBYTE(v93) = v86 ^ v15 & 5 ^ 0x4E ^ (v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * ((v15 ^ 8) & (2 * (((2 * (((2 * (((2 * v15) & 0x16 | 9) & v15)) | 9) & v15)) ^ 0xC) & (v15 ^ 8) ^ v15 & 5 ^ 0x4E)) ^ v15 & 5 ^ 0x4E)) ^ v15 & 5 ^ 0x4E)) ^ (v98 ^ 8) & (2 * ((v98 ^ 8) & (2 * ((v98 ^ 8) & (2 * ((v98 ^ 8) & (2 * ((v98 ^ 8) & (2 * (v98 & (2 * v93) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86));
  v102 = (v95 >> 8) & 0xF;
  LOBYTE(v99) = v15 ^ v99;
  v103 = STACK[0x6B0];
  v104 = 407 * ((((v101 ^ 0x1C) + 16) ^ (v101 + 20) ^ ((v101 ^ 0xE) + 30)) + (((v99 ^ v98 ^ (2 * v93) ^ 0xC3) - 72) ^ ((v99 ^ v98 ^ (2 * v93) ^ 0x96) - 29) ^ ((v99 ^ v98 ^ (2 * v93) ^ 0xA9) - 34)) + 101) + 154253;
  v105 = 407 * ((v54 | 0xFFFFFE0F) & (v102 ^ 0xE89602FE) ^ 0xE89602CF);
  v106 = *(STACK[0x6B0] + (v105 + 154253 - 972 * ((4418691 * (v105 + 154253)) >> 32))) ^ (16 * *(STACK[0x6B0] + (v104 - 972 * ((4418691 * v104) >> 32))));
  v107 = 407 * (((v106 ^ 0x6D40322) - 1247778798) ^ ((v106 ^ 0x4C81F619) - 680661) ^ ((v106 ^ 0x4A55F7E4) - 115237672));
  v108 = v91 ^ 0x7FCEAAF2;
  v109 = v96 - 1546693151;
  v110 = *(STACK[0x6B0] + (v105 + 290191 - 972 * ((4418691 * (v105 + 290191)) >> 32))) ^ (*(STACK[0x6B0] + (v107 - 1309669948) % 0x3CCu) >> 4);
  v111 = v108 >> 12;
  v112 = 407 * (((v87 >> 8) & 0xF0 ^ 0xD5D594FE) & (v111 ^ 0xFDFFB4F8) ^ ((v108 >> 12) & 1 | 0xD5D5947E));
  v113 = *(STACK[0x6B0] + (v112 + 154253 - 972 * ((4418691 * (v112 + 154253)) >> 32))) ^ (16 * *(STACK[0x6B0] + (407 * (((v110 ^ 0x9DB8DAF6) + 1648829769) ^ ((v110 ^ 0x2456C6C2) - 609666691) ^ ((v110 ^ 0xB9EE1C19) + 1175577512)) + 198209) % 0x3CC));
  v114 = ((*(STACK[0x6B0] + (407 * (((v113 ^ 0x4BB67387) - 1480078518) ^ ((v113 ^ 0x63970218) - 1880704297) ^ ((v113 ^ 0x28217340u) - 1001337969)) + 389389041) % 0x3CC) >> 4) | 0xE0) ^ *(STACK[0x6B0] + (v112 + 290191 - 972 * ((4418691 * (v112 + 290191)) >> 32)));
  v115 = ((v114 ^ 0x50783304) - 1350054660) ^ ((v114 ^ 0x7A76280C) - 2054563852);
  v116 = v114 ^ 0x2A0E1BC5;
  v117 = *(STACK[0x6B0] + (v100 + 511346352) % 0x3CCu);
  v118 = (v113 & 0x17B ^ 0x120) + (v113 & 0x17B ^ 0x5B) + (v115 ^ (v116 - 705567685)) + 205;
  v119 = 407 * (((v87 >> 12) & 0xF0 | HIWORD(v108) & 0xF) ^ 0xFE);
  v120 = *(STACK[0x6B0] + (v119 + 154253 - 972 * ((4418691 * (v119 + 154253)) >> 32))) ^ (16 * *(STACK[0x6B0] + ((v118 & 0x197 ^ 0x197) + (v118 & 0x197u)) * v118 % 0x3CC));
  v121 = *(STACK[0x6B0] + (v119 + 290191 - 972 * ((4418691 * (v119 + 290191)) >> 32)));
  v122 = 407 * (((v120 ^ 0x7FF7692F) - 1036601707) ^ ((v120 ^ 0x6CCEDA1A) - 787544670) ^ ((v120 ^ 0x1339B1EA) - 1359450542));
  v123 = v121 ^ (*(STACK[0x6B0] + (v122 + 1355641340) % 0x3CCu) >> 4);
  v124 = (*(STACK[0x6B0] + (v107 - 1309805886) % 0x3CCu) << 8) ^ (16 * v117);
  v125 = 407 * (((v123 ^ 0x14458798) - 340101008) ^ ((v123 ^ 0xD9846E4B) + 645632445) ^ ((v123 ^ 0xCDC1E9FE) + 842929674)) + 169312;
  v126 = 407 * (((v85 >> 8) & 0xF0 | (v88 >> 12)) ^ 0xB0);
  v127 = ((v113 ^ 0xDA7A5C9A) + 906749013) ^ ((v113 ^ 0xDC3AEE74) + 810243771);
  v128 = *(STACK[0x6B0] + (v126 + 154253 - 972 * ((4418691 * (v126 + 154253)) >> 32))) ^ (16 * *(STACK[0x6B0] + v125 % 0x3CC));
  v129 = (v113 ^ 0x640B031) - 365885184;
  v130 = 407 * (((v128 ^ 0x5DB02B18) - 560978199) ^ ((v128 ^ 0x306BB645) - 1286882378) ^ ((v128 ^ 0x6DDB9F82) - 285502861));
  v131 = *(STACK[0x6B0] + (v126 + 290191 - 972 * ((4418691 * (v126 + 290191)) >> 32))) ^ (*(STACK[0x6B0] + (v130 - 2012460993) % 0x3CCu) >> 4);
  v132 = 407 * ((((v85 >> 12) & 0xF0 ^ 0xC39CA7C2) & (HIWORD(v88) & 0xF ^ 0xC39CA7F3) | HIWORD(v88) & 0xD) ^ 0xC39CA7BA);
  v133 = (407 * (v127 ^ v129) + 389253103) % 0x3CC;
  v134 = *(STACK[0x6B0] + (v132 + 154253) % 0x3CC) ^ (16 * *(STACK[0x6B0] + (407 * (((v131 ^ 0x431BAE7E) - 1125887645) ^ ((v131 ^ 0xDA3CCE7A) + 633549159) ^ ((v131 ^ 0x99276029) + 1725472566)) + 238095) % 0x3CC));
  v135 = ((v134 ^ 0xB1F54F7F) + 499662613) ^ ((v134 ^ 0x1FBD7E3B) - 1283453359) ^ ((v134 ^ 0xAE48339B) + 41239537);
  v136 = (407 * v135 + 709950666) % 0x3CC;
  v137 = *(STACK[0x6B0] + (v132 + 290191) % 0x3CC) ^ (*(STACK[0x6B0] + (407 * (v135 + (v136 & 0x2C9) + (v136 & 0x2C9 ^ 0x2C9)) + 709796413) % 0x3CC) >> 4);
  v138 = *(STACK[0x6B0] + v109 % 0x3CC);
  v139 = *(STACK[0x6B0] + (407 * (((HIWORD(v85) & 0xE0 ^ 0xFFFFC03F) & ((v89 >> 20) ^ 0xC91F40E7) | HIWORD(v85) & 0x10) ^ 0xC91F40FB) + 154253) % 0x3CC) ^ (16 * *(STACK[0x6B0] + (407 * (((v137 ^ 0x49F68DD4) - 1240894777) ^ ((v137 ^ 0x134B5B3D) - 323705808) ^ ((v137 ^ 0x5ABDD6C4u) - 1522390569)) + 232397) % 0x3CC));
  v140 = v138 ^ 0xE1CB57FF ^ v124;
  v141 = v140 ^ (*(STACK[0x6B0] + v133) << 12);
  v142 = v141 ^ (*(STACK[0x6B0] + (v122 + 1355505402) % 0x3CCu) << 16);
  v143 = v142 ^ (*(STACK[0x6B0] + (v130 - 2012596931) % 0x3CCu) << 20) ^ ((*(STACK[0x6B0] + v136) ^ 0xFFFFFFC7) << 24);
  v144 = ((16 * (v138 & 0xF)) ^ 0xFFFFFF8F) & (v81 | 0xD22E33F0);
  v145 = *(STACK[0x6B0] + (407 * (((v139 ^ 0x235C6CDE) - 1330758984) ^ ((v139 ^ 0xF60446DA) + 1710624948) ^ ((v139 ^ 0xD55828DB) + 1185578675)) - 910316644) % 0x3CC) << 28;
  v146 = 407 * (v144 ^ 0xD22E337F) + 9768 - 972 * ((4418691 * (407 * (v144 ^ 0xD22E337F) + 9768)) >> 32);
  v147 = 407 * ((v140 & 0xF0 | (v95 >> 4)) ^ 0x25) + 9768 - 972 * ((4418691 * (407 * ((v140 & 0xF0 | (v95 >> 4)) ^ 0x25) + 9768)) >> 32);
  v148 = ((v124 >> 4) & 0xF0 ^ 0x7049BB2F) & (v102 ^ 0x7049BBF1);
  v149 = 407 * (v148 ^ 0x7049BBF0) + 9768 - 972 * ((4418691 * (407 * (v148 ^ 0x7049BBF0u) + 9768)) >> 32);
  v150 = 407 * (((v141 >> 8) & 0xF0 ^ 0xFFFFFFDF) & (v111 ^ 0xF9A9BAF9) ^ 0xF9A9BA5F) + 9768;
  v151 = 407 * (((v143 ^ 0xB168A20) >> 16) & 0xF0 | (v88 >> 12)) + 9768;
  v152 = 407 * ((((v143 ^ 0xB168A20) >> 20) & 0xA0 | 0xAF9A9A51) ^ (((v143 ^ 0xB168A20) >> 20) & 0x50 | HIWORD(v88) & 0xF) ^ 0xAF9A9A59) + 9768;
  v153 = 407 * ((~(((v143 ^ 0xB168A20) + (v145 ^ 0xF0000000) + ((2 * ((v145 ^ 0x2C42C479) & (v143 ^ 0xB1AB0A2) ^ v143 & 0x5C42C479)) ^ 0xEFFAFFBF) + 1) >> 24) | 0xFFFFFF0F) & ((v89 >> 20) ^ 0xE56BB3FE) ^ 0xE56BB3F2) + 9768;
  v154 = *(STACK[0x6B0] + v146);
  v155 = v154 ^ (16 * *(STACK[0x6B0] + v147));
  v156 = v155 ^ (*(STACK[0x6B0] + v149) << 8) ^ 0x8B760361;
  v157 = v156 ^ (*(STACK[0x6B0] + (v150 - 972 * ((4418691 * v150) >> 32))) << 12);
  v158 = v157 ^ (*(STACK[0x6B0] + (407 * ((((v142 >> 12) & 0xF0 | 0xB0BC5A0B) & (HIWORD(v108) & 0xF ^ 0xBDFC7EF5) | HIWORD(v108) & 4) ^ 0xB0BC5A6F) + 9768) % 0x3CC) << 16) ^ 0x61B342C;
  v159 = v158 ^ (*(STACK[0x6B0] + (v151 - 972 * ((4418691 * v151) >> 32))) << 20);
  v160 = v159 ^ ((*(STACK[0x6B0] + (v152 - 972 * ((4418691 * v152) >> 32))) ^ 0xE6) << 24) ^ 0xA2BF5550;
  v161 = *(STACK[0x6B0] + (v153 - 972 * ((4418691 * v153) >> 32)));
  *(STACK[0x6A8] + 4 * ((v73 - 10931) % 0x114u)) = LODWORD(STACK[0x628]) + 983530255;
  v162 = ((v160 ^ (v161 << 28)) >> 28) ^ 1;
  v163 = HIBYTE(v160) & 0xF ^ 4;
  v164 = 3512817 * v162;
  LOWORD(v147) = 407 * (((v157 & 0xF000) >> 12) ^ 0xD) - 972 * (((3512817 * (((v157 & 0xF000) >> 12) ^ 0xDu)) >> 16) >> 7);
  LOWORD(v157) = 407 * v162;
  LOWORD(v162) = 407 * v163 - 972 * (((3512817 * v163) >> 16) >> 7);
  v165 = 407 * ((v156 >> 8) & 0xF ^ 0xE) - 972 * ((3512817 * ((v156 >> 8) & 0xF ^ 0xE)) >> 23);
  LOWORD(v156) = 407 * ((v155 >> 4) ^ 0xD) - 972 * (((3512817 * ((v155 >> 4) ^ 0xDu)) >> 16) >> 7);
  v166 = (((v154 & 0xF | 0xC0) ^ 0xFD925FAD) + 40738899) ^ (((v154 & 0xF | 0xC0) ^ 0xA1D60F57) + 1579806889) ^ (((v154 & 0xF | 0xC0) ^ 0x5C445035) - 1547980853);
  v167 = *(v103 + (407 * (BYTE2(v158) & 0xF) - 972 * (((3512817 * (HIWORD(v158) & 0xF)) >> 16) >> 7)));
  v168 = *(v103 + (407 * v166 + 84249) % 0x3CC);
  v169 = ((*(v103 + v147) << 12) ^ ((((*(v103 + (407 * ((v159 >> 20) & 0xF ^ 0xB) - 972 * (((3512817 * ((v159 >> 20) & 0xF ^ 0xB)) >> 16) >> 7))) << 12) ^ ((((*(v103 + (v157 - 972 * (v164 >> 23))) << 12) ^ (*(v103 + v162) << 8) ^ 0xB41E80) & ~v167 & 0xFFFFFF80 | v167 & 0x7F) << 8) ^ 0x2F854B) & (*(v103 + v165) ^ 0xFFFF40) | *(v103 + v165) & 0xB4) << 8) ^ 0x56B7446) & (v168 ^ 0xFFFFFFF8);
  v170 = STACK[0x6A8];
  *(STACK[0x6A8] + 4 * ((v73 - 9696) % 0x114u)) = (LODWORD(STACK[0x638]) - ((2 * (LODWORD(STACK[0x638]) + 1557966963)) & 0x1ABE612C) - 365174519) ^ (16 * *(v103 + v156)) ^ 0x2F981E2B ^ (v169 | v168 & 0xB9);
  v171 = LODWORD(STACK[0x698]) != 47;
  *(v170 + 4 * ((LOWORD(STACK[0x658]) + 19 * LOWORD(STACK[0x698])) % 0x114u)) = v77 ^ LODWORD(STACK[0x654]);
  v172 = *(STACK[0x6A0] + 8 * ((28 * v171) ^ LODWORD(STACK[0x61C])));
  LODWORD(STACK[0x690]) -= 38655727;
  return v172();
}

uint64_t sub_1006F2E84()
{
  LODWORD(STACK[0x193C]) = v0;
  v4 = LODWORD(STACK[0x1C2C]) + LODWORD(STACK[0x14F4]) + 1175242930;
  LODWORD(STACK[0x1E1C]) = v4;
  v5 = v4 + 719138492 + (((v1 ^ 0x2C4F27CC) - 1194112224) ^ ((v1 ^ 0x57E66525) - 1015412233) ^ (((v2 - 115398836) ^ ((v2 + 3593) | 0x817) ^ v1) + 1837333000));
  v6 = LODWORD(STACK[0x16BC]) - 999468208;
  v7 = v5 < 0xB121C4F4;
  v8 = v5 > v6;
  if (v6 < 0xB121C4F4 != v7)
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((14 * !v8) ^ v2)))();
}

uint64_t sub_1006F2F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X7>, int a6@<W8>)
{
  v11 = (*STACK[0xAD0] + (a6 - 1845484524));
  v12 = 1864610357 * ((*(*v10 + (*a5 & (((v6 + 21701) | 0x1362u) + 1926689170))) ^ v11) & 0x7FFFFFFF);
  v13 = 1864610357 * (v12 ^ HIWORD(v12));
  *v11 = *(v8 + (v13 >> 24)) ^ *(STACK[0x680] + (v13 >> 24) + 2) ^ *(STACK[0x670] + (v13 >> 24) + 2) ^ v13 ^ (-37 * BYTE3(v13)) ^ 0x80;
  v14 = (((LODWORD(STACK[0x1660]) ^ 0xCA9FEF61) + 895488159) ^ ((LODWORD(STACK[0x1660]) ^ 0x209B7D4) - 34191316) ^ ((LODWORD(STACK[0x1660]) ^ 0x21439FA4) - 558079908)) - 691415250;
  v15 = v14 < 0xECF4101D;
  if ((a6 + 2129933362) < 0xECF4101D == v15)
  {
    v15 = a6 + 2129933362 < v14;
  }

  return (*(v9 + 8 * ((!v15 * v7) ^ v6)))(a1, a2, a3, a4, 2129933363, 26663, 2449482773, 1864567123);
}

uint64_t sub_1006F31CC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x1350]) = a1;
  LODWORD(STACK[0x1C6C]) = v1;
  return (*(v4 + 8 * (((v1 == v3) * (v2 - 1650511929)) ^ (v2 - 1650502857))))();
}

uint64_t sub_1006F332C()
{
  v2 = *(v0 + 8);
  v3 = STACK[0x1E30];
  v4 = 1112314453 * ((~(&STACK[0x10000] + 3800) & 0xA0CF836B | (&STACK[0x10000] + 3800) & 0x5F307C90) ^ 0x4F99A9B2);
  LODWORD(STACK[0x10EE0]) = *(v0 + 16) - v4;
  STACK[0x10EF0] = v2;
  STACK[0x10EE8] = v3;
  LODWORD(STACK[0x10ED8]) = (v1 + 8778) ^ v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 27616)))(&STACK[0x10ED8]);
  *(v3 + 476) = 740984379;
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_1006F33DC@<X0>(uint64_t a1@<X0>, char a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W7>, char a7@<W8>)
{
  v24 = ((v11 ^ v9) + a2) ^ v11 ^ ((v11 ^ a3) + a4) ^ ((v11 ^ a5) + a6) ^ ((((v12 ^ 0x57) + 116) ^ v11) + v8);
  v25 = (((v24 ^ v14) + v15) ^ ((v24 ^ v16) + v17) ^ ((v24 ^ v18) + v19)) + v20;
  STACK[0x308] = a1 - 1;
  *(v7 + a1 - 1) = v25 * (v11 + v13) + (v25 * v22 + (v11 + v13) * v23) * v10 + a7;
  return (*(v21 + 8 * (((2 * (STACK[0x308] == 0)) | (4 * (STACK[0x308] == 0))) ^ v12)))();
}

uint64_t sub_1006F3490()
{
  STACK[0x11D8] = *(v7 + 8 * v6);
  LODWORD(STACK[0x150C]) = v3;
  LODWORD(STACK[0x1408]) = v2;
  STACK[0x10C8] = v1;
  STACK[0xD88] = v5;
  STACK[0x2010] = v4;
  return (*(v7 + 8 * (((v4 == 0) ^ ((v0 - 5) ^ (v0 + 90))) & 1 | (2 * (((v4 == 0) ^ ((v0 - 5) ^ (v0 + 90))) & 1)) | v0)))();
}

uint64_t sub_1006F355C()
{
  *(v0 - 1) = v5;
  *v0 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v3) ^ v1)))();
}

uint64_t sub_1006F3584(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v10 = v5 < a3;
  v11 = (((v9 ^ a4) * a5) ^ v6) + v8;
  v12 = v10 ^ (v11 < a3);
  v13 = v11 < v5;
  if (!v12)
  {
    v10 = v13;
  }

  return (*(STACK[0xF18] + 8 * ((v10 * v7) ^ v9)))();
}

uint64_t sub_1006F36DC()
{
  STACK[0x7A0] = *(v1 + 16);
  v4 = *(v2 + 8 * (v3 ^ 0x770D));
  STACK[0x7E0] = v0;
  v5 = v4(24) != 0;
  return (*(v2 + 8 * ((v5 * (((v3 - 34671) | 0x4048) ^ 0x7628)) ^ v3)))();
}

uint64_t sub_1006F3794(uint64_t a1)
{
  v1 = 1112314453 * ((~a1 & 0xBA764C39 | a1 & 0x4589B3C6) ^ 0x552066E0);
  v2 = *(a1 + 4) + v1;
  v3 = -639114101 * (*a1 + v1);
  v5 = v3 + 736078343;
  v4 = v3 + 736078343 < 0;
  v6 = -736078343 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 16) + 4);
  v8 = v7 - 1051086576;
  v4 = v7 - 1051086576 < 0;
  v9 = 1051086576 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_1010A0B50 + v2 - 7752) + 8 * ((16530 * ((v6 >> 5) < v9)) ^ v2) - 810145054))();
}

uint64_t sub_1006F3890()
{
  v4 = *(v2 + 132) - (((v1 ^ 0xB03907D0) + 1338439728) ^ ((v1 ^ 0x8B9D57A7) + 1952622681) ^ ((v1 ^ 0xD2719766) + 764307610)) + ((v0 + 986299759) & 0x535F7F5 ^ 0x162A0F30);
  *(v2 + 128) = -371865839;
  *(v2 + 132) = v4;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_1006F3928(uint64_t result)
{
  v1 = *(result + 8);
  v2 = (v1[3] << 24) | (v1[2] << 16) | (v1[1] << 8);
  *(result + 16) = v2 & 0xA09C5700 ^ 0x28864B7C ^ ((*v1 - ((2 * *v1) & 0x138) + 764149404) ^ 0x72E85621) & (v2 ^ 0x7F73FFFF);
  return result;
}

double sub_1006F399C(uint64_t *a1)
{
  v1 = *a1;
  *(v1 - 0x427A3CD3E8C5DA2FLL) = 0;
  *(v1 - 0x427A3CD3E8C5DA27) = 3923101457;
  *(v1 - 0x427A3CD3E8C5DA1FLL) = -371865839;
  result = 0.0;
  *(v1 - 0x427A3CD3E8C5DA1BLL) = 0u;
  *(v1 - 0x427A3CD3E8C5DA0BLL) = 0xE9D5C71100000000;
  return result;
}

uint64_t sub_1006F3A58()
{
  v3 = *(STACK[0x2B68] - 0x217E172EFA1E81CLL);
  v4 = (v0 ^ 0x86BB6B26) & (2 * (v0 & 0xA6BB63B6)) ^ v0 & 0xA6BB63B6;
  v5 = (((v0 ^ 0xC78F292A) << (v1 - 56)) ^ 0xC2689538) & (v0 ^ 0xC78F292A) ^ ((v0 ^ 0xC78F292A) << (v1 - 56)) & ((11881 * (v1 ^ 0x403A)) ^ 0x6134C1A7);
  v6 = v5 ^ 0x21144A84;
  v7 = (v5 ^ 0x200018) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x84D12A70) & v6 ^ (4 * v6) & 0x61344A9C;
  v9 = (v8 ^ 0x100A00) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x6124408C)) ^ 0x1344A9C0) & (v8 ^ 0x6124408C) ^ (16 * (v8 ^ 0x6124408C)) & 0x61344A80;
  v11 = v9 ^ 0x61344A9C ^ (v10 ^ 0x1040800) & (v9 << 8);
  v12 = (v11 << 16) & 0x61340000 ^ v11 ^ ((v11 << 16) ^ 0x4A9C0000) & (((v10 ^ 0x6030421C) << 8) & 0x61340000 ^ 0x41340000 ^ (((v10 ^ 0x6030421C) << 8) ^ 0x344A0000) & (v10 ^ 0x6030421C));
  v13 = 1022166737 * ((2 * ((&STACK[0x10000] + 3800) & 0x70F7E628) - (&STACK[0x10000] + 3800) + 252189137) ^ 0xB518F843);
  LODWORD(STACK[0x10EDC]) = v13 + 14739 + v1;
  LODWORD(STACK[0x10EF0]) = v13 ^ v0 ^ (2 * v12) ^ 0x4F1F3766;
  STACK[0x10EE0] = &STACK[0x86AC];
  STACK[0x10EE8] = v3;
  v14 = STACK[0xF18];
  v15 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8B5E)))(&STACK[0x10ED8]);
  return (*(v14 + 8 * ((115 * (LODWORD(STACK[0x10ED8]) == v2)) ^ v1)))(v15);
}

uint64_t sub_1006F3D64(_DWORD *a1)
{
  v1 = *a1 ^ (297845113 * (((a1 | 0xBDB33282) - a1 + (a1 & 0x424CCD7D)) ^ 0xCA802E1C));
  v2 = *(&off_1010A0B50 + (v1 - 1029245461));
  v3 = *(v2 - 1840193783);
  v6 = v1 + 634647737 * (((v5 | 0xF8C41BA) - (v5 & 0xF8C41B8)) ^ 0x621A6E46) - 1029222648;
  v5[1] = v3;
  result = (*(*(&off_1010A0B50 + (v1 ^ 0x3D5915CE)) + 8 * (v1 - 1029195462) - 810145054))(v5);
  *(v2 - 1840193783) = 0;
  return result;
}

void sub_1006F3EA0(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (297845113 * (a1 ^ 0x77331C9E));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1006F4428()
{
  LOBYTE(STACK[0x1967]) = v0 >> 28 == 6;
  LODWORD(STACK[0x1F34]) = v0 & 0xFFFFFFF ^ 0x9D5C711;
  return (*(v1 + 250456))();
}

uint64_t sub_1006F44DC@<X0>(uint64_t a1@<X6>, _DWORD *a2@<X7>, unint64_t a3@<X8>)
{
  v20 = ((v9 ^ v19) + a1) ^ ((v9 ^ v10) - 0x2EDFD45DEF577A6FLL) ^ ((v9 ^ (STACK[0x5B8] - 0x7A1B96E4E9AF0A39)) + 0x7A1B96E42EDF1CC0);
  v21 = (v20 + 2573754629u) * (v20 + 0x42DE6F7A87532DEELL) + v20 * v16 + 0x310810B515B02DF9;
  v22 = v21 - 3377535439u * (((v21 * a3) >> 64) >> 31);
  v23 = ((2 * v22) & 0x18FDF737ALL) + (v22 ^ 0x7EF77DBFC7EFB9BDLL);
  v24 = ((v8 ^ 0x21EADD88449ED291) - 0x21EADD88449ED291) ^ ((v8 ^ 0x1D626FCFC122BB17) - 0x1D626FCFC122BB17) ^ ((v8 ^ 0x3C88B247FAFB6512) - 0x3C88B247FAFB6512);
  v25 = (v24 + 2135362708) * (v24 + 0x67D767F1297B0077) - 0x67D767F0AA33F3E3 * v24 + 2575459919 * v23 + 0x620DA0E6DD9B05A8;
  v26 = v25 - 2352885817u * (((v25 * v11) >> 64) >> 31);
  v27 = (((((v26 - ((2 * v26) & 0x7C059522) - 0x1420F56CC1FD356FLL) ^ 0xF2DC792F33683753) + 0xD2386D0CC97C8ADLL) ^ (((v26 - ((2 * v26) & 0x7C059522) - 0x1420F56CC1FD356FLL) ^ 0xBC36884248337ABLL) - 0xBC36884248337ABLL) ^ (((v26 - ((2 * v26) & 0x7C059522) - 0x1420F56CC1FD356FLL) ^ 0x12C01B3829E9CA69) - 0x12C01B3829E9CA69)) - 0x2BA8B8E5F7D385A2) * (v23 - 0x7EF77DBFC7EFB9BDLL) + 0x1787C37935D65033 * v23 - 0xA61ACCDD49EF2CFLL;
  v28 = (v4 + v3);
  v29 = ((v28 ^ *(*v18 + (*a2 & 0x72D7ACF8))) & 0x7FFFFFFF) * v14;
  v30 = (v29 ^ HIWORD(v29)) * v14;
  v31 = ((v27 ^ 0xC55D225EAF365EC4) + 0x49C009B11FE5BCE4) ^ v27 ^ ((v27 ^ 0xDCF7890B303F6D6ELL) + 0x506AA2E480EC8F4ALL) ^ ((v27 ^ 0x866640BA22CAD337) + 0xAFB6B5592193111) ^ ((v27 ^ 0xECAE3FFFF2EFFD45) + 0x60331410423C1F63);
  *v28 = *(v7 + v3) ^ *(v15 + (v30 >> 24)) ^ *(v5 + (v30 >> 24) + 2) ^ *(v13 + (v30 >> 24) + 2) ^ v30 ^ (BYTE3(v30) * v12) ^ (v31 >> 15) ^ 0x58;
  v32 = v3 + 1;
  v33 = ((*(*v18 + (*a2 & 0x72D7ACF8)) ^ (v4 + v32)) & 0x7FFFFFFF) * v14;
  v34 = (v33 ^ HIWORD(v33)) * v14;
  *(v4 + v32) = *(v7 + v32) ^ *(v15 + (v34 >> 24)) ^ *(v5 + (v34 >> 24) + 2) ^ *(v13 + (v34 >> 24) + 2) ^ v34 ^ (BYTE3(v34) * v12) ^ (v31 >> 23) ^ 0x9E;
  v35 = v3 + 2;
  v36 = ((*(*v18 + (*a2 & 0x72D7ACF8)) ^ (v4 + v35)) & 0x7FFFFFFF) * v14;
  v37 = (v36 ^ HIWORD(v36)) * v14;
  *(v4 + v35) = *(v7 + v35) ^ *(v15 + (v37 >> 24)) ^ *(v5 + (v37 >> 24) + 2) ^ *(v13 + (v37 >> 24) + 2) ^ v37 ^ (BYTE3(v37) * v12) ^ (v31 >> 31) ^ 0x20;
  v38 = (((v6 ^ 0x8B5AB642) + 1217686951) ^ v6 ^ ((v6 ^ 0xCC1DF0BD) + 265497434) ^ ((v6 ^ 0x84889538) + 1195790048) ^ ((v6 ^ 0xFFFEF7DC) + 1009790012)) & 0xFFFFFFFC ^ 0x3C31241BLL;
  v39 = (v4 + v38);
  LODWORD(v34) = (*(*v18 + (*a2 & 0x72D7ACF8)) ^ (v4 + v38)) & 0x7FFFFFFF;
  v40 = ((v34 * v14) ^ ((v34 * v14) >> 16)) * v14;
  LODWORD(v31) = *(v7 + v38) ^ *(v15 + (v40 >> 24)) ^ *(v5 + (v40 >> 24) + 2) ^ *(v13 + (v40 >> 24) + 2) ^ v40 ^ ((v40 >> 24) * v12) ^ 0xA8 ^ (v31 >> 39);
  v41 = LODWORD(STACK[0x7E0]) > 0xD0E21AFD;
  *v39 = v31;
  v42 = (v6 - 219365141) < LODWORD(STACK[0x7A0]);
  if (v41 != (v6 - 219365141) < 0x2F1DE502)
  {
    v42 = v41;
  }

  return (*(v17 + 8 * ((124 * !v42) ^ 0x7E29u)))();
}

uint64_t sub_1006F4B80(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = (((v6[503] & 0xFB ^ a1) - 12) ^ ((v6[503] & 0xFB ^ 0x59) + 117) ^ ((v6[503] & 0xFB ^ 0xA7) - 117)) + (((v6[468] ^ 0x51) - 81) ^ ((v6[468] ^ 0x96) + 106) ^ (((v4 - 18) | 0x28) + (v6[468] ^ 0x9C) + 44)) + 87;
  v10 = v9 & 0x94 ^ 0xD3;
  v11 = v9 ^ (2 * ((v9 ^ 0x76) & (2 * ((v9 ^ 0x76) & (2 * ((v9 ^ 0x76) & (2 * ((v9 ^ 0x76) & (2 * (((2 * (v10 ^ v9 & 0x62)) ^ 0x44) & (v9 ^ 0x76) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  v6[468] = v11 ^ 0xCF;
  v12 = v6[373];
  v13 = (((v6[12] ^ 0x90) & ~v6[330] ^ (v6[330] | 0x8F)) & v12 ^ 1) & ~(v6[330] & (v6[12] ^ 0x5F)) & a4 | v6[330] & (v6[12] ^ 0x5F) & 0x92;
  v14 = v6[248];
  v15 = (v14 ^ 0x5F) & (v12 ^ 0x98);
  v16 = (v12 & 0x44 ^ v6[385] & 0x48 ^ (v6[385] ^ 0x21) & (v12 ^ 0x3B) ^ 4) & (v15 ^ (v14 | 0x68));
  v17 = (v16 | 0x93) & (v13 ^ 0x55) | (v16 ^ v15) & 0x28;
  v18 = (((v6[455] ^ 0x67) - 103) ^ ((v6[455] ^ 0xCD) + 51) ^ ((v6[455] ^ 0xF1) + 15)) - (((v17 ^ 0x43) + 76) ^ ((v17 ^ 0xB4) - 67) ^ ((v17 ^ 0xA3) - 84)) + 3;
  v19 = v18 & 0x77 ^ 0xE1;
  v6[455] = v18 ^ (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * (((2 * v18) & 0x6A ^ 0x42) & v18 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ 0x2C;
  v20 = v5[v6[82] & 0x3F ^ 0x1FLL];
  v21 = (((v20 ^ 0x85) + 123) ^ ((v20 ^ 0x11) - 17) ^ ((v20 ^ 0xCF) + 49)) + (((v11 ^ 0xC0) - 15) ^ ((v11 ^ 0xB6) - 121) ^ ((v11 ^ 0xE2) - 45)) - 27;
  v22 = v21 & 0x9F ^ 0xE7;
  v6[468] = v21 ^ (2 * ((v21 ^ 0x50) & (2 * ((v21 ^ 0x50) & (2 * ((v21 ^ 0x50) & (2 * ((v21 ^ 0x50) & (2 * ((v21 ^ 0x50) & (2 * (((2 * v21) & 0x22 ^ 0x4E) & v21 ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ 0xC4;
  v23 = STACK[0x7A0];
  v24 = *(STACK[0x7A0] + (v6[74] & 0x3F ^ 0x1FLL));
  v25 = ((v24 ^ 0x9D) + 99) ^ ((v24 ^ 0x11) - 17) ^ ((v24 ^ 0x69) - 105);
  v26 = 89 * v25 + 24;
  v27 = v26 & 0xE3 ^ 0x37;
  v6[452] = v26 ^ (2 * ((v26 ^ 4) & (2 * ((v26 ^ 4) & (2 * ((v26 ^ 4) & (2 * ((v26 ^ 4) & (2 * (((2 * (((2 * v25) & 0xA | 5) & v26)) ^ 0x66) & (v26 ^ 4) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ 0xB8;
  v6[428] ^= 0x32u;
  v28 = (((v6[213] ^ 0x24) - 100) ^ ((v6[213] ^ 0x3C) + 68) ^ ((v6[213] ^ 7) + 121)) * v7 + 27;
  v29 = v28 & 0xCD ^ 0x1A;
  v6[218] ^= v28 ^ (2 * ((v28 ^ 0x58) & (2 * ((v28 ^ 0x58) & (2 * ((v28 ^ 0x58) & (2 * ((v28 ^ 0x58) & (2 * ((v28 ^ 0x58) & (2 * (v28 & (2 * v28) & 0x32 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ 0xCD;
  v6[500] = (2 * ((v6[378] & 0x53 ^ 0x2D) & (v6[378] | 0xFD) ^ v6[378] & 2)) ^ 5;
  v30 = (((v6[61] ^ 0xC3) + 61) ^ ((v6[61] ^ 0x83) + 125) ^ ((v6[61] ^ 0x1F) - 31)) - ((((2 * v6[2]) ^ 9) + 86) ^ (((2 * v6[2]) ^ 0x9C) - 63) ^ (((2 * v6[2]) ^ 0x2B) + 120)) - 116;
  v31 = v30 & 0xAA ^ 0x9A;
  v6[393] = v30 ^ (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * ((v30 ^ 0x34) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ 0x4F;
  v6[510] = v6[429] & 0xA2 ^ 0xFB;
  v32 = ((v6[394] ^ 0xC) - 12) ^ ((v6[394] ^ 1) - 1) ^ ((v6[394] ^ 0xE8) + 24);
  v33 = (v32 - 27) * (v32 + 32) - 59 * v32;
  v34 = (v33 + 57) * (v32 + 37) - (v33 << 6);
  v35 = (v34 - 64) * (v34 + 107) + 85 * v34 + 24;
  v36 = ((2 * (v35 ^ 0x25)) ^ 0x1A) & (v35 ^ 0x25);
  v37 = v36 & (4 * (((2 * v35) & 0x50 ^ 0xA8) & v35)) ^ ((2 * v35) & 0x50 ^ 0xA8) & v35;
  v6[246] = v35 ^ (2 * (v36 & (4 * v36) & (16 * v37) ^ v37)) ^ 0xF7;
  v38 = STACK[0x7E0];
  v6[167] ^= *(STACK[0x7E0] + (v6[93] & 0x3F ^ 0x1FLL)) ^ 0xC;
  v39 = (((v6[386] ^ 0xA5) + 91) ^ ((v6[386] ^ 0xCF) + 49) ^ ((v6[386] ^ 0x8F) + 113)) - (((v6[237] ^ 0x9E) + 98) ^ ((v6[237] ^ 0xE2) + 30) ^ ((v6[237] ^ 0x23) - 35)) - 86;
  v40 = v39 & 0xFA ^ 0x99;
  v6[386] = v39 ^ (2 * ((v39 ^ 0x48) & (2 * ((v39 ^ 0x48) & (2 * ((v39 ^ 0x48) & (2 * ((v39 ^ 0x48) & (2 * ((v39 ^ 0x48) & (2 * (v39 & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ 0x1F;
  v41 = ((v6[38] ^ 0xA6) + 90) ^ ((v6[38] ^ 0x26) - 38) ^ ((v6[38] ^ 0xDF) + 33);
  v42 = ((v41 - 76) * (v41 + 95) - 85 * v41 - 119) * (v41 + 95);
  v43 = (0x6Du >> ((4 - (v42 - 20 * v41)) & 6) >> ((4 - (v42 - 20 * v41)) & 1)) ^ (109 << (((v42 - 20 * v41 + 106) ^ (2 * (v42 - 20 * v41 + 106))) & 5) << ((1 - v42) & 2));
  LOBYTE(v43) = (((v6[472] ^ 0x8A) + 118) ^ ((v6[472] ^ 0xEE) + 18) ^ ((v6[472] ^ 0x3F) - 63)) - (((v43 ^ 0x55) - 23) ^ ((v43 ^ 0x64) - 38) ^ ((v43 ^ 0x31) - 115)) - 126;
  v44 = v43 & 3 ^ 0x5E;
  v6[472] = v43 ^ (2 * ((v43 ^ 0x16) & (2 * ((v43 ^ 0x16) & (2 * ((v43 ^ 0x16) & (2 * ((v43 ^ 0x16) & (2 * ((v43 ^ 0x16) & (2 * ((v43 ^ 0x16) & (2 * v43) & 0x2E ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ 0x58;
  LOBYTE(v43) = v5[v6[138] & 0x3F ^ 0x1FLL] & 0x78;
  LOBYTE(v43) = (((v43 ^ 0x34) - 73) ^ ((v43 ^ 0xA6) + 37) ^ ((v43 ^ 0x30) - 77)) + (((v6[500] ^ 0x5C) - 92) ^ ((v6[500] ^ 0x1C) - 28) ^ ((v6[500] ^ 0x1B) - 27)) - 88;
  v45 = (v43 & 0x92 | 0x6C) ^ v43 & 0xF8;
  v6[500] = v43 ^ (2 * ((v43 ^ 0x10) & (2 * ((v43 ^ 0x10) & (2 * ((v43 ^ 0x10) & (2 * ((v43 ^ 0x10) & (2 * (v43 & (2 * v45) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ 0x31;
  v6[82] = v6[139] & 0x20 | 0x4D;
  LOBYTE(v43) = ((v6[369] ^ 0x53) - 84) ^ ((v6[369] ^ 0xCC) + 53) ^ ((v6[369] ^ 0x98) + 97);
  LOBYTE(v43) = v43 * v43 * v43 - 47;
  v46 = v43 & 0x5F ^ 0x98;
  v6[144] = v43 ^ (2 * ((v43 ^ 0x2E) & (2 * ((v43 ^ 0x2E) & (2 * ((v43 ^ 0x2E) & (2 * ((v43 ^ 0x2E) & (2 * ((v43 ^ 0x2E) & (2 * ((v43 ^ 0x2E) & (2 * v43) & 0x5E ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  LOBYTE(v43) = v23[v6[191] & 0x3F ^ 0x1FLL];
  LOBYTE(v43) = -3 * (((v43 ^ 0x26) - 38) ^ ((v43 ^ 0x18) - 24) ^ ((v43 ^ 0xDB) + 37)) + (((v6[201] ^ 0xB0) - 2) ^ ((v6[201] ^ 0xF6) - 68) ^ ((v6[201] ^ 0xE6) - 84)) + (((v6[479] ^ 0xB5) + 75) ^ ((v6[479] ^ 0x6C) - 108) ^ ((v6[479] ^ 0x82) + 126)) + 9;
  v47 = v43 & 0x83 ^ 0x2F;
  v6[479] = v43 ^ (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * (((2 * v43) & 0x6A ^ 0x36) & (v43 ^ 0x34) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ 0xD8;
  LOBYTE(v43) = *v38;
  v48 = v5[v6[17] & 0x3F ^ 0x1FLL];
  v6[483] = (v48 & 0xEF ^ (v48 ^ 0x1E) & (*v38 ^ 0xEF) ^ 0x8F) & (*v5 & 0xB2 ^ 0x12) ^ (*v5 & 0x80 | 0x5B);
  v6[219] ^= v43 ^ 0xC;
  LOBYTE(v43) = v6[487];
  v49 = v6[181];
  v50 = v6[244];
  v51 = (v50 & 0x2D ^ 0xD3 ^ (v50 ^ 0xA0) & (v49 ^ 0x8D)) & (v43 ^ 0x5B);
  v52 = (v50 ^ 0x5F) & (v49 ^ 0x9E) ^ v50 & 0xC1;
  LOBYTE(v43) = (v51 ^ (v43 & 0xC | 0xB0)) & (v52 ^ 0xBE) ^ v52 & 0x47;
  v53 = v5[v6[85] & 0x3F ^ 0x1FLL];
  v54 = v6[56];
  v55 = v53 & 0x80 | v54 & (v53 ^ 0x80) & 0x99;
  v56 = (v54 ^ 0x5F) & (v53 ^ 0xCC) ^ v54 & 0x97;
  v57 = (v55 ^ 0xE9) & (v56 ^ 0xEE) ^ v56 & 0xF;
  LOBYTE(v43) = (v57 & 0xB9 ^ 0xDE ^ (v57 ^ 0xF7) & (v43 ^ 0x40)) & (v57 & (v43 ^ 6) | 0xF8) ^ 0x8A;
  v58 = v5[v6[41] & 0x3F ^ 0x1FLL];
  v6[387] = v43;
  LOBYTE(v43) = v6[369];
  v59 = (v58 ^ 0x81) & ~v43 & 0xD1 | v43 & 1;
  LOBYTE(v43) = (v43 ^ 0xC) & (v58 ^ 0x71) ^ v43 & 0x2A;
  LOBYTE(v43) = (v59 ^ 0xE2) & ~v43 | v43 & 0xCD;
  LOBYTE(v43) = (((v6[458] & 0x51 ^ 0x52) - 63) ^ ((v6[458] & 0x51 ^ 0x78) - 21) ^ ((v6[458] & 0x51 ^ 0xFD) + 112)) + (((v43 ^ 0xF0) - 56) ^ ((v43 ^ 0xD7) - 31) ^ ((v43 ^ 0x1D) + 43)) - 64;
  v60 = v43 & 0x20 ^ 0xAA;
  v6[428] ^= v43 ^ (2 * ((v43 ^ 0x6C) & (2 * ((v43 ^ 0x6C) & (2 * ((v43 ^ 0x6C) & (2 * ((v43 ^ 0x6C) & (2 * ((v43 ^ 0x6C) & (2 * v60) | v60)) ^ v60)) ^ v60)) ^ v60)) ^ v60)) ^ 0x20;
  v61 = v6[336];
  v62 = v61 & 0xEEEEEEEE;
  v63 = (v5[v6[154] & 0x3F ^ 0x1FLL] ^ 0x71) & (v61 ^ 0xFFFFFFF3) ^ v61 & 0x2A;
  v64 = (v63 ^ 0xFFFFFFDC) & (v62 ^ 0xFFFFFF98);
  v65 = v6[342];
  v66 = v6[77];
  v67 = v6[321];
  v68 = ((v67 ^ 0xFFFFFFF3) & (v66 ^ 0xA0) ^ 0x9B) & (v65 ^ 0xC);
  v69 = v67 & 0xFFFFFFA9 ^ 0xFFFFFFF5 ^ (v67 ^ 0xC) & (v66 ^ 0xFFFFFFF6);
  v70 = v68 & 2 ^ v69 & 0xFFFFFF9B ^ (v65 & 0x64 ^ v68 ^ 0x60) & v69;
  v71 = (v63 & 0x6B ^ 0xFFFFFFB6 ^ v64) - (v70 ^ ((v70 ^ 0xC) + 53) ^ ((v70 ^ 0xFFFFFFB6) - 113) ^ 0xFFFFFFC7) + 62;
  v72 = v71 & 0xFFFFFFD8 ^ 0x28;
  v73 = v71 ^ (2 * ((v71 ^ 8) & (2 * ((v71 ^ 8) & (2 * ((v71 ^ 8) & (2 * ((v71 ^ 8) & (2 * ((v71 ^ 8) & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72));
  LODWORD(STACK[0x790]) = v6[169];
  v74 = 2 * v23[v6[76] & 0x3F ^ 0x1FLL];
  v75 = (43691 * (((v74 ^ 0xA59EFD8C) + 1516362075) ^ ((v74 ^ 0xAC45B6F5) + 1404736036) ^ ((v74 ^ 0x9DB4AB3) - 165384602)) + 1637413793) >> 17;
  LOBYTE(v69) = v75 & 8 | 0x33;
  v6[236] = v75 ^ (2 * ((v75 ^ 0xAA) & (2 * ((v75 ^ 0x2A) & (2 * ((v75 ^ 0x2A) & (2 * ((v75 ^ 0x2A) & (2 * ((v75 ^ 0x2A) & (2 * ((v75 ^ 0x2A) & (2 * ((v75 ^ 0x2A) & (2 * v69) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ 0x57;
  LOWORD(v75) = v23[v6[149] & 0x3F ^ 0x1FLL];
  LOWORD(v75) = ((v75 ^ 0x917F) + 28289) ^ ((v75 ^ 0x611A) - 24858) ^ ((v75 ^ 0xF080) + 3968);
  v76 = (v75 + 284);
  LOWORD(v75) = 171 * v75 - 265;
  LOBYTE(v68) = (v75 >> 9) & 0x21 ^ 0x3A;
  v77 = (v75 >> 9) ^ 0xC;
  v6[18] ^= (((v76 > 0x11D) << 7) | (v75 >> 9)) ^ (2 * (((v75 >> 9) ^ 0xCC) & (2 * (v77 & (2 * (v77 & (2 * (v77 & (2 * (v77 & (2 * (v77 & BYTE1(v75) & 0x1A ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ 0x21;
  LOBYTE(v75) = v6[321];
  LOBYTE(v76) = v75 & 0xB2;
  LOBYTE(v75) = (v38[v6[29] & 0x3F ^ 0x1FLL] ^ 0x37) & (v75 ^ 0xF3) ^ v75 & 0x3B;
  LOBYTE(v75) = (v75 ^ 0x8C) & (v76 ^ 0xBE) | v75 & 0x41;
  v78 = v38[v6[96] & 0x3F ^ 0x1FLL];
  v79 = ((v78 ^ 0x65D3) - 26067) ^ ((v78 ^ 0x6384) - 25476) ^ ((v78 ^ 0x65B) - 1627);
  v80 = (v79 + 56);
  v81 = 205 * v79 - 612;
  LOWORD(v80) = ((v80 > 0x3A) << 6) | (v81 >> 10);
  LOBYTE(v68) = (v81 >> 10) & 0xEF ^ 0x36;
  v6[451] ^= v75 ^ v80 ^ (2 * ((v80 ^ 0x42) & (2 * ((v80 ^ 2) & (2 * ((v80 ^ 2) & (2 * ((v80 ^ 2) & (2 * ((v80 ^ 2) & (2 * ((v80 ^ 2) & (v81 >> 9) & 6 ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ 0x90;
  LOBYTE(v75) = (((v6[28] ^ 0xE8) + 24) ^ ((v6[28] ^ 0x31) - 49) ^ ((v6[28] ^ 0x86) + 122)) + (((v6[203] ^ 0x9E) + 98) ^ ((v6[203] ^ 0xB4) + 76) ^ ((v6[203] ^ 0x75) - 117)) - 60;
  LOBYTE(v81) = v75 & 0x10 ^ 0x1F;
  v6[203] = v75 ^ (2 * ((v75 ^ 0x7A) & (2 * ((v75 ^ 0x7A) & (2 * ((v75 ^ 0x7A) & (2 * ((v75 ^ 0x7A) & (2 * ((v75 ^ 0x7A) & (2 * ((v75 ^ 0x7A) & 0x2A ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ 0x4F;
  v82 = (v6[394] ^ -v6[394] ^ ((v6[394] ^ 0x1A) - 26)) + (((v6[496] ^ 0x4D) - 77) ^ ((v6[496] ^ 0x59) - 89) ^ ((v6[496] ^ 0x4F) - 79)) - 102;
  LOBYTE(v81) = v82 & 0xB9 ^ 0x89;
  v6[496] = v82 ^ (2 * ((v82 ^ 0x26) & (2 * ((v82 ^ 0x26) & (2 * ((v82 ^ 0x26) & (2 * ((v82 ^ 0x26) & (2 * ((v82 ^ 0x26) & (2 * ((((2 * v82) & 0x4E ^ 0x1E) & 6 | v81) ^ ((2 * v82) & 0x4E ^ 0x1E) & v82)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ 0xE2;
  LOBYTE(v80) = v6[449];
  v83 = (((v6[474] ^ 0xFFFFFFB3) + 77) ^ ((v6[474] ^ 0xFFFFFFD8) + 40) ^ ((v6[474] ^ 0x30) - 48)) - (((v5[v6[3] & 0x3F ^ 0x1FLL] ^ 0x5B) << ((5 - (((v80 ^ 2) + 6) ^ v80 ^ ((v80 ^ 0xFD) + 3))) & 7)) ^ ((v5[v6[3] & 0x3F ^ 0x1FLL] ^ 0x5B) >> (v80 & 7 ^ 3)) | (v6[94] >> 1) ^ 0x2F) - 82;
  LOBYTE(v81) = v83 & 0x49 ^ 0xD6;
  v6[474] = v83 ^ (2 * ((v83 ^ 0x2C) & (2 * ((v83 ^ 0x2C) & (2 * ((v83 ^ 0x2C) & (2 * ((v83 ^ 0x2C) & (2 * ((v83 ^ 0x2C) & (2 * ((v83 ^ 0x2C) & (2 * v83) & 0x5A ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ 0x12;
  LOBYTE(v83) = (((v6[439] ^ 0x16) - 22) ^ ((v6[439] ^ 0xD3) + 45) ^ ((v6[439] ^ 0x20) - 32)) - (((v6[321] ^ 0x81) + 127) ^ ((v6[321] ^ 0xD3) + 45) ^ ((v6[321] ^ 0x5E) - 94)) + 5;
  LOBYTE(v81) = v83 & 0x68 ^ 0xCA;
  v6[439] = v83 ^ (2 * ((v83 ^ 0x54) & (2 * ((v83 ^ 0x54) & (2 * ((v83 ^ 0x54) & (2 * ((v83 ^ 0x54) & (2 * ((v83 ^ 0x54) & (2 * v81) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ 0x8D;
  LODWORD(STACK[0x788]) = v6[157] >> 1;
  LOBYTE(v68) = v38[v6[221] & 0x3F ^ 0x1FLL];
  LOBYTE(v80) = (v68 ^ 0xC) & (*v38 ^ 0x31) ^ v68 & 0x3D;
  LOBYTE(v81) = (((v6[464] ^ 0xCA) + 54) ^ ((v6[464] ^ 0x75) - 117) ^ ((v6[464] ^ 0xE4) + 28)) + (v80 & 0x8F ^ (v80 ^ 0xF3) & (v5[v6[103] & 0x3F ^ 0x1FLL] ^ 0x2B) ^ 0x7C) - 103;
  LOBYTE(v80) = v81 & 0x18 ^ 0xAF;
  v6[464] = v81 ^ (2 * ((v81 ^ 0x42) & (2 * ((v81 ^ 0x42) & (2 * ((v81 ^ 0x42) & (2 * ((v81 ^ 0x42) & (2 * ((v81 ^ 0x42) & (2 * ((v81 ^ 0x42) & 0x1A ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ 0x43;
  v84 = (((v6[478] ^ 0x5A) - 90) ^ ((v6[478] ^ 0xFFFFFFC6) + 58) ^ ((v6[478] ^ 0xFFFFFFC7) + 57)) + ((205 * (v6[458] ^ 0x5Bu)) >> 10) - 116;
  LOBYTE(v80) = v84 & 0xD9 ^ 0xD;
  v6[478] = v84 ^ (2 * ((v84 ^ 0x4E) & (2 * ((v84 ^ 0x4E) & (2 * ((v84 ^ 0x4E) & (2 * ((v84 ^ 0x4E) & (2 * ((v84 ^ 0xE) & (2 * (((2 * (v84 & 0xF)) ^ 0x16) & (v84 ^ 0xE) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ 0x82;
  LOBYTE(v84) = v23[v6[165] & 0x3F ^ 0x1FLL];
  LOBYTE(v80) = v5[v6[35] & 0x3F ^ 0x1FLL];
  v6[483] ^= ((v6[497] ^ 0xA0) & (v80 ^ 0x82) ^ (v80 | 0xFB) ^ (v6[497] ^ 0xA0) & 0x26) + (v6[380] & 0x30 ^ (v38[v6[37] & 0x3F ^ 0x1FLL] ^ 0x3C) & (v6[380] ^ 0xF3) ^ 0x30 | v84 & 0x5F ^ 0x45 ^ (v84 ^ 0xE5) & (v6[380] ^ 0x53));
  LOBYTE(v84) = ((v6[330] & 0x5D ^ 0x40) & (v6[22] ^ 0xEA) ^ v6[330] & 0x15 ^ (v6[22] ^ 0xEA) & 0x4C | v6[369] & 0xA2) ^ 4;
  LOBYTE(v68) = v38[v6[163] & 0x3F ^ 0x1FLL];
  LOBYTE(v68) = ((v68 ^ 0xA2) + 94) ^ ((v68 ^ 0xD8) + 40) ^ ((v68 ^ 0x76) - 118);
  v85 = ((v6[321] ^ 0xBE) + 66) ^ ((v6[321] ^ 0x45) - 69) ^ ((v6[321] ^ 0xF7) + 9);
  LOBYTE(v84) = (((v85 + 105) * (v68 + 41) + 85 * (23 * v68 + 87 * v85) - 65) & (~v6[95] | 0xFE)) + ((v84 - ((2 * v84) & 0xCA) - 27) ^ v6[431]);
  v6[431] = v84 - ((2 * v84) & 0xCA) - 27;
  LOBYTE(v84) = (((v6[14] ^ 0x8C) + 116) ^ ((v6[14] ^ 0x14) - 20) ^ ((v6[14] ^ 0xC7) + 57)) + (((v6[49] ^ 0x35) - 53) ^ ((v6[49] ^ 0xBA) + 70) ^ ((v6[49] ^ 0xD0) + 48)) + 55;
  LOBYTE(v80) = v84 & 0x8B ^ 0x82;
  v6[49] = v84 ^ (2 * ((v84 ^ 6) & (2 * ((v84 ^ 6) & (2 * ((v84 ^ 6) & (2 * ((v84 ^ 6) & (2 * ((v84 ^ 6) & (2 * ((v84 ^ 6) & (2 * v84) & 0xE ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ 0xD4;
  LOBYTE(v84) = v6[397];
  LOBYTE(v80) = v5[v6[1] & 0x3F ^ 0x1FLL];
  LOBYTE(v80) = ((v80 & 0xA4 | (v73 ^ 0xCE) & 0x12) ^ (v80 ^ 0x49) & (v73 ^ 0xCE)) & (v84 ^ 0xE5);
  v6[404] = ((v84 & 0x9B ^ (v6[124] ^ 0xC4) & (v84 ^ 0x1A) ^ 0xE7) & ~v80 | v80 & 2) ^ 0x18;
  LOWORD(v84) = ((v6[91] ^ 0xD3D2) + 11310) ^ ((v6[91] ^ 0x3077) - 12407) ^ ((v6[91] ^ 0xE3FA) + 7174);
  v86 = ((((v84 + 96) > 0x6Eu) << 6) | ((205 * v84 - 3053) >> 10)) + 94;
  LOBYTE(v80) = (((v6[414] ^ 0xD) - 13) ^ ((v6[414] ^ 0x51) - 81) ^ ((v6[414] ^ 0xB9) + 71)) - (v6[18] & 0x22 ^ 0x82 ^ (v6[18] & 0x7F ^ 0xDF) & (v6[468] ^ 0xF9) | v6[369] & 0x80) + 38;
  LOBYTE(v68) = v80 & 0x1B ^ 0xF6;
  v6[414] = v80 ^ (2 * ((v80 ^ 0x3E) & (2 * ((v80 ^ 0x3E) & (2 * ((v80 ^ 0x3E) & (2 * ((v80 ^ 0x3E) & (2 * ((v80 ^ 0x3E) & (2 * ((v80 ^ 0x3E) & (2 * v80) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ 0xFE;
  if (((((v6[394] ^ 0x268A) - 9866) ^ ((v6[394] ^ 0x7A80) - 31360) ^ ((v6[394] ^ 0x5CEF) - 23791)) + 308) <= 0xD5u)
  {
    v89 = 0;
  }

  else
  {
    v89 = -64;
  }

  v88 = v6[144];
  v90 = (((v6[438] ^ 0xFFFFFFE2) + 30) ^ ((v6[438] ^ 0xFFFFFFCE) + 50) ^ ((v6[438] ^ 0xFFFFFFC9) + 55)) - (((v88 ^ 0xFFFFFFB4) + 76) ^ ((v88 ^ 0xFFFFFFD8) + 40) ^ ((v88 ^ 0x33) - 51)) + v89 - (((205 * ((((v6[394] ^ 0x268A) - 9866) ^ ((v6[394] ^ 0x7A80) - 31360) ^ ((v6[394] ^ 0x5CEF) - 23791)) + 308) + 21693) & 0xFC00) >> 10) - 70;
  v91 = v90 & 0x7F ^ 0x47;
  v6[438] = v90 ^ (2 * ((v90 ^ 0x70) & (2 * ((v90 ^ 0x70) & (2 * ((v90 ^ 0x70) & (2 * ((v90 ^ 0x70) & (2 * ((v90 ^ 0x70) & (2 * (((2 * v90) & 0x62 ^ 0xE) & v90 ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ 0x9A;
  LOBYTE(v90) = v6[330];
  v92 = ((v90 ^ 0x79) - 121) ^ -v90 ^ ((v90 ^ 0x8A) + 118);
  v6[506] ^= ((v92 + 12) * ((((v90 ^ 0x65) - 101) ^ ((v90 ^ 0xAC) + 84) ^ ((v90 ^ 0xC5) + 59)) + 111) - 99 * v92 + 92) & 0xB5;
  LOBYTE(v90) = (((v6[65] ^ 0xF0) + 16) ^ ((v6[65] ^ 0x3C) - 60) ^ ((v6[65] ^ 0x93) + 109)) + (((v6[255] ^ 0xC1) + 63) ^ ((v6[255] ^ 0x11) - 17) ^ ((v6[255] ^ 0x8F) + 113)) + 38;
  v93 = v90 & 0x1E ^ 0x49;
  v6[255] = v90 ^ (2 * ((v90 ^ 0xC) & (2 * ((v90 ^ 0xC) & (2 * ((v90 ^ 0xC) & (2 * ((v90 ^ 0xC) & (2 * ((v90 ^ 0xC) & (2 * (v93 ^ v90 & 0x12)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ 0x41;
  LOBYTE(v90) = ((v6[244] ^ 0xD8) + 40) ^ ((v6[244] ^ 0x22) - 34) ^ ((v6[244] ^ 0xA5) + 91);
  v94 = v90 - 55;
  LOBYTE(v90) = ((54 - v90) & 0x93 | 0x60) ^ (v90 - 55) & 0xE2;
  LOBYTE(v90) = v94 ^ (2 * ((v94 ^ 0x12) & (2 * ((v94 ^ 0x12) & (2 * ((v94 ^ 0x12) & (2 * ((v94 ^ 0x12) & (2 * ((v94 ^ 0x12) & (2 * ((v94 ^ 2) & (2 * v90) ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ v90)) ^ 0x2E;
  v95 = v5[(v86 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v86 ^ 0x2C)) & 0x68 ^ 0x34) & (v86 ^ 0x2C))) ^ 0x34) & (v86 ^ 0x2C))) ^ 0x34) & (v86 ^ 0x2C))) ^ 0x74) & (v86 ^ 0x2C)))) & 0x3F ^ 0x34];
  v6[244] = v90;
  v6[384] ^= v38[(v5[v6[251] & 0x3F ^ 0x1FLL] & 0x3D | (v95 & 2)) ^ 0x1B] ^ 0xC;
  LOBYTE(v90) = (v6[385] ^ 0xE5) & (v6[181] ^ 0xDD) ^ v6[385] & 0x82;
  v96 = v5[v6[241] & 0x3F ^ 0x1FLL];
  v97 = v23[v6[169] & 0x3F ^ 0x1FLL];
  LOBYTE(v90) = (((v90 ^ 0xC3) + 53) ^ ((v90 ^ 0x5E) - 86) ^ ((v90 ^ 0x1D) - 21)) - (((v97 ^ 0x1A) & (v96 ^ 0xB9) ^ v97 & 0x1D) & 0xB6 ^ 0xA6 ^ ((v97 ^ 0x1A) & (v96 ^ 0xB9) ^ v97 & 0x1D ^ 0xE7) & (v6[443] ^ 0x53) | v97 & 0xE4 ^ 0xE4 ^ (v97 ^ 0xE5) & (v96 ^ 0xBF)) - 26;
  v98 = v90 & 0x28 | 0xC7;
  v99 = v90 ^ 0x22;
  v6[482] = v90 ^ (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * (v99 & (2 * (v90 & (2 * (v90 & 0x28 | 5)) ^ (v90 & 0x28 | 5))) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ 0x73;
  v100 = 52429 * (*v5 ^ 0x5B) * (*v5 ^ 0x5B);
  v6[473] = (v100 >> 18) - ((v100 >> 17) & 0xB6) + 91;
  LOWORD(v100) = v5[v6[232] & 0x3F ^ 0x1FLL];
  LOWORD(v100) = (((v100 ^ 0x8230) + 32208) ^ ((v100 ^ 0xB505) + 19195) ^ ((v100 ^ 0x376E) - 14190)) + 191;
  v101 = ((v100 > 0x86u) << 6) | ((205 * v100 - 27668) >> 10);
  LOBYTE(v100) = (((v100 > 0x86u) << 6) | ((205 * v100 - 27668) >> 10) & 0xEF) ^ 0x94;
  v6[415] = v101 ^ (2 * ((v101 ^ 0x46) & (2 * ((v101 ^ 6) & (2 * ((v101 ^ 6) & (2 * ((v101 ^ 6) & (2 * ((v101 ^ 6) & (2 * ((v101 ^ 6) & (2 * v100) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ 0xA;
  LOBYTE(v100) = v38[v23[v6[183] & 0x3F ^ 0x1FLL] & 0x3F ^ 0x25];
  v102 = v23[v6[122] & 0x3F ^ 0x1FLL];
  v103 = (v102 ^ 0x1A) & (v100 ^ 0x69) ^ v102 & 0x9A;
  LOBYTE(v100) = (((v6[478] ^ 0x8B) + 117) ^ ((v6[478] ^ 0x6D) - 109) ^ ((v6[478] ^ 0xBD) + 67)) + (v103 & 0x66 ^ 0x64 ^ (v103 ^ 0xE5) & (v6[420] ^ 0x83) | v102 & 0x7C ^ 0x64 ^ (v102 ^ 0xE5) & (v100 ^ 0x70)) - 123;
  LOBYTE(v101) = v100 & 0xAA ^ 0xEA;
  v6[478] = v100 ^ (2 * ((v100 ^ 0x54) & (2 * ((v100 ^ 0x54) & (2 * ((v100 ^ 0x54) & (2 * ((v100 ^ 0x54) & (2 * ((v100 ^ 0x54) & (2 * v101) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0xF1;
  LOBYTE(v100) = v23[v6[152] & 0x3F ^ 0x1FLL];
  LOBYTE(v100) = (((v6[389] ^ 0x31) - 49) ^ ((v6[389] ^ 0x1C) - 28) ^ ((v6[389] ^ 0xC8) + 56)) - (((v100 ^ 0x94) + 108) ^ ((v100 ^ 0x7B) - 123) ^ ((v100 ^ 0xA) - 10)) + 57;
  LOBYTE(v101) = (v100 & 0xC7 | 0x30) ^ v100 & 0xE0;
  v6[389] = v100 ^ (2 * ((v100 ^ 0x46) & (2 * ((v100 ^ 0x46) & (2 * ((v100 ^ 0x46) & (2 * ((v100 ^ 0x46) & (2 * ((v100 ^ 0x46) & (2 * ((v100 ^ 0x46) & (2 * v101) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0xC2;
  LOBYTE(v100) = (((v6[43] ^ 0x10) - 16) ^ ((v6[43] ^ 0xEC) + 20) ^ ((v6[43] ^ 0xA3) + 93)) - 17;
  LOBYTE(v101) = v100 & 1 | 0x26;
  v6[43] = v100 ^ (2 * ((v100 ^ 0x44) & (2 * ((v100 ^ 0x44) & (2 * ((v100 ^ 0x44) & (2 * ((v100 ^ 0x44) & (2 * ((v100 ^ 0x44) & (2 * (v100 & (2 * v100) & 0xA ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0x5E;
  v87 = v86 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v86 ^ 0x2C)) & 0x68 ^ 0x34) & (v86 ^ 0x2C))) ^ 0x34) & (v86 ^ 0x2C))) ^ 0x34) & (v86 ^ 0x2C))) ^ 0x74) & (v86 ^ 0x2C)));
  LOBYTE(v100) = ((v6[439] ^ 0xD5) & (v87 ^ 0x74) ^ v87 & 0x30 | v6[439] & 0xB ^ 0xA) ^ 0x30;
  v6[197] ^= 0x48 ^ (v100 - ((2 * v100) & 0x6E) - 73);
  v104 = v6[387];
  v105 = v6[33];
  v106 = (v105 ^ 0x5F) & (v104 ^ 0xFFFFFFE7);
  v107 = (v23[v6[123] & 0x3F ^ 0x1FLL] ^ 2) & (v104 ^ 0x1A) ^ v104 & 0xFFFFFFE7;
  v108 = (v107 ^ 0xFFFFFFFD) & ((v105 & 2 | 0xFFFFFFFC) ^ v106);
  LODWORD(STACK[0x778]) = v108 & 0xFFFFFFE2 ^ 0xFFFFFFE2 ^ (v108 ^ v107 & 1 ^ 0xFFFFFFFE) & (v6[144] ^ 0xFFFFFFBF);
  LODWORD(STACK[0x780]) = ((v73 ^ 0x78) - 116) ^ ((v73 ^ 0x2E) - 34) ^ ((v73 ^ 0x3C) - 48);
  v109 = v38[v6[147] & 0x3F ^ 0x1FLL];
  v110 = v6[19];
  LOBYTE(v108) = (v110 & 0xD5 ^ 0x3B ^ (v110 ^ 0xA0) & (v109 ^ 0x26)) & (v6[429] ^ 0xE5) ^ v6[429] & 0x44;
  LOBYTE(v108) = (((v6[507] ^ 0x3E) - 62) ^ ((v6[507] ^ 0xA4) + 92) ^ ((v6[507] ^ 0xC1) + 63)) - ((*v5 ^ 0x1E | v6[458] ^ 0x1E) & 0xB2 | *v5 & 0x5D ^ 0x59 ^ (*v5 ^ 0x5B) & (v6[458] ^ 6)) + (v108 & 0xE7 ^ 0x5C ^ (v108 ^ 0xBB) & (v110 & 0xEC ^ 0x54 ^ (v110 ^ 0x5F) & (v109 ^ 0xE0))) + 92;
  v111 = v108 & 0x97 ^ 0x5C;
  v112 = 2 * ((2 * v108) & v108 ^ (2 * v108) ^ v111);
  v113 = 2 * ((2 * (v112 ^ v111 ^ v112 & v108)) ^ v111 ^ (2 * (v112 ^ v111 ^ v112 & v108)) & v108);
  v114 = 2 * ((2 * (v113 ^ v111 ^ v113 & v108)) ^ v111 ^ (2 * (v113 ^ v111 ^ v113 & v108)) & v108);
  v6[507] = v108 ^ (2 * (v114 ^ v111 ^ v114 & v108)) ^ 0xCC;
  LOBYTE(v108) = ((v6[96] ^ 0x56) - 86) ^ ((v6[96] ^ 0x8F) + 113) ^ ((v6[96] ^ 0x86) + 122);
  v115 = v38[(v108 + 61 + (v108 + 61) * v108 + 4) & 0x3F];
  v116 = v6[322];
  STACK[0x770] = v115;
  v117 = v23[v115 & 0x3F ^ 0xC] ^ 0x2C;
  v118 = v117 & (v116 ^ 6) ^ v116 & 0xC9 ^ v117 & 0xA;
  v119 = (((v6[504] ^ 0xFB) + 5) ^ ((v6[504] ^ 0xA5) + 91) ^ ((v6[504] ^ 5) - 5)) + (v118 & 0x58 ^ 0xAF ^ (v118 ^ 0xF7) & (v116 & 0xA4 ^ (v6[146] ^ 0xFB) & (v116 ^ 0xF3) ^ 7)) - 116;
  v120 = v119 & 0xE9 ^ 0x15;
  v6[504] = v119 ^ (2 * ((v119 ^ 0x4E) & (2 * ((v119 ^ 0x4E) & (2 * ((v119 ^ 0x4E) & (2 * ((v119 ^ 0x4E) & (2 * ((v119 ^ 0x4E) & (2 * (((2 * (v119 & 0xF)) ^ 0x26) & (v119 ^ 0xE) ^ v120)) ^ v120)) ^ v120)) ^ v120)) ^ v120)) ^ v120)) ^ 0xB2;
  v121 = v38[v6[458] & 0x3F ^ 0x1BLL];
  v122 = (((v6[438] ^ 0x2D) - 45) ^ ((v6[438] ^ 0x25) - 37) ^ ((v6[438] ^ 0xED) + 19)) - (((v121 ^ 0xE1) + 31) ^ ((v121 ^ 8) - 8) ^ ((v121 ^ 0xE5) + 27)) + 46;
  v123 = v122 & 0xE3 ^ 0x2C;
  v124 = v122 ^ (2 * ((v122 ^ 0x2A) & (2 * ((v122 ^ 0x2A) & (2 * ((v122 ^ 0x2A) & (2 * ((v122 ^ 0x2A) & (2 * ((v122 ^ 0x2A) & (2 * ((v122 ^ 2) & (2 * v122) & 0x56 ^ v123)) ^ v123)) ^ v123)) ^ v123)) ^ v123)) ^ v123)) ^ 6;
  v125 = v38[v6[226] & 0x3F ^ 0x1FLL];
  v6[438] = v124;
  v126 = ((v125 ^ 0xC0) + 64) ^ ((v125 ^ 0xF7) + 9) ^ ((v125 ^ 0x3B) - 59);
  v127 = ((v125 ^ 0x25) - 37) ^ ((v125 ^ 0x41) - 65) ^ ((v125 ^ 0x68) - 104);
  v128 = (((v6[467] ^ 0xC7) + 57) ^ ((v6[467] ^ 0xA6) + 90) ^ ((v6[467] ^ 0x3A) - 58)) - (((v126 - 118) * (v127 + 43) - (62 * v127 - v126) + 32 * (62 * v127 - v126) + 98) & 0x73) - 54;
  v129 = v128 & 0x91 | 0x2A;
  v130 = v129 ^ v128 & 0x74;
  v6[467] = v128 ^ (2 * ((v128 ^ 0x10) & (2 * ((v128 ^ 0x10) & (2 * ((v128 ^ 0x10) & (2 * ((v128 ^ 0x10) & (2 * (v128 & (2 * (v128 & (2 * v129) ^ v130)) ^ v130)) ^ v130)) ^ v130)) ^ v130)) ^ v130)) ^ 0xBE;
  v131 = (v6[458] ^ 0x5B) + 11;
  v6[398] = (v131 >> 1) - (v131 & 0xCA) - 27;
  v132 = ((*v23 ^ 0xE5) << (~v6[214] & 7)) ^ ((*v23 ^ 0xE5u) >> ((v6[214] + 1) & 7));
  v133 = ((v6[54] ^ 0xC9) + 55) ^ ((v6[54] ^ 0xFD) + 3) ^ ((v6[54] ^ 0x6B) - 107);
  v134 = (((v6[478] ^ 0x6B) - 107) ^ ((v6[478] ^ 0xFFFFFFEF) + 17) ^ ((v6[478] ^ 0xFFFFFFDF) + 33)) - ((v132 >> ((((v133 + 9) * (v133 - 75) - 28) * (v133 + 95)) & 7)) ^ (v132 << (-(((v133 + 9) * (v133 - 75) - 28) * (v133 + 95)) & 7))) + 103;
  v135 = v134 & 0xF4 | 3;
  v136 = v135 ^ v134 & 0xE;
  v6[478] = v134 ^ (2 * ((v134 ^ 0x74) & (2 * ((v134 ^ 0x74) & (2 * ((v134 ^ 0x74) & (2 * ((v134 ^ 0x74) & (2 * ((v134 ^ 0x74) & (2 * (v134 & (2 * v135) ^ v136)) ^ v136)) ^ v136)) ^ v136)) ^ v136)) ^ v136)) ^ 0xA1;
  v137 = v6[192];
  v138 = (*v5 ^ 0x5B) << ((v137 ^ 0xE) & 5 ^ 1) << ((v137 ^ 0xE) & 2);
  v139 = ((v137 ^ 0xB) - 11) ^ ((v137 ^ 0xC7) + 57) ^ (-110 - (v137 ^ 0x93));
  v140 = (((v6[500] ^ 0xFFFFFF9D) + 99) ^ ((v6[500] ^ 0x5D) - 93) ^ ((v6[500] ^ 0xFFFFFF9B) + 101)) - 3 * (((*v5 ^ 0x5B) >> (v139 & 7 ^ (2 * v139) & 4 ^ 2)) ^ v138) - 98;
  v141 = v140 & 0x43 ^ 0xC3;
  v6[500] = v140 ^ (2 * ((v140 ^ 0x3C) & (2 * ((v140 ^ 0x3C) & (2 * ((v140 ^ 0x3C) & (2 * ((v140 ^ 0x3C) & (2 * ((v140 ^ 0x3C) & (2 * (((2 * ~v140) | 0x84) & (v140 ^ 0x3C) ^ v141)) ^ v141)) ^ v141)) ^ v141)) ^ v141)) ^ v141)) ^ 0x18;
  v142 = ((((v6[433] ^ 0xFFFFFF97) + 105) ^ ((v6[433] ^ 0xFFFFFF85) + 123) ^ ((v6[433] ^ 0xFFFFFFF7) + 9)) - 27) * ((*v38 >> 1) ^ 6) + 29;
  LOBYTE(v140) = v142 & 0xBB ^ 0x6C;
  v6[474] = v142 ^ (2 * ((v142 ^ 0x62) & (2 * ((v142 ^ 0x62) & (2 * ((v142 ^ 0x62) & (2 * ((v142 ^ 0x62) & (2 * ((v142 ^ 0x62) & (2 * ((v142 ^ 0xC3) & (2 * v142) & 0x46 ^ v140)) ^ v140)) ^ v140)) ^ v140)) ^ v140)) ^ v140)) ^ 0xE0;
  v6[15] = v6[1];
  v143 = (((*STACK[0x798] ^ 0x51D9E6B8) - 1373234872) ^ ((*STACK[0x798] ^ 0xC2CB99EA) + 1026844182) ^ ((*STACK[0x798] ^ 0x814A13C1) + 2125851711)) == -307784851;
  LODWORD(STACK[0x7E0]) = v23[v6[119] & 0x3F ^ 0x1FLL];
  return (*(v8 + 8 * ((14 * v143) ^ v4)))();
}

uint64_t sub_1006F7B1C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = (a2 - 1067709157);
  STACK[0x8960] = v3;
  return (*(STACK[0xF18] + 8 * (((*(a1 + 16 * v3 + 8) == 0) * ((((v2 - 25933) | 0x220) ^ 0xFFFF889B) + ((v2 + 1800) ^ 0x984))) ^ (v2 + 1800))))();
}

uint64_t sub_1006F7B80()
{
  v0 = (STACK[0xF10] - 34931) | 0x4030;
  v1 = STACK[0xF10] - 25493;
  v2 = STACK[0x1FB8];
  STACK[0x7690] = STACK[0xF10] - 11417 + STACK[0x7690] - 24370;
  return (*(STACK[0xF18] + 8 * ((14 * (v2 != v0 - 371882983)) ^ v1)))();
}

uint64_t sub_1006F7CD8()
{
  *v1 = ((v0 + 12432) | 0x23C0) + *STACK[0x3E40] - ((2 * *STACK[0x3E40]) & 0xD3AB8E22) - 371891400;
  v2 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x198D)))();
}

uint64_t sub_1006F7DB0@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x8378] = *(STACK[0xF18] + 8 * (a1 - 14368));
  return (*(v1 + 8 * ((((a1 - 16562) | 0x4878) - 11267) ^ (a1 - 14368))))();
}

uint64_t sub_1006F7EA4()
{
  LODWORD(STACK[0x4700]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4920] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x47AD ^ ((v0 - 3272) | 0x5882))))();
}

uint64_t sub_1006F7EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  (*(v30 + 8 * (v31 + 18927)))();
  (*(v30 + 8 * (v31 ^ 0x4A3F)))(&STACK[0x4A0], 0, 1024);
  (*(v30 + 8 * (v31 + 18927)))(&STACK[0x8A0], 0, 1024);
  (*(v30 + 8 * (v31 ^ 0x4A3F)))(&STACK[0xCA0], 0, 1024);
  (*(v30 + 8 * (v31 + 18927)))(&STACK[0x10A0], 0, 1024);
  (*(v30 + 8 * (v31 ^ 0x4A29)))(*(&off_1010A0B50 + (v31 ^ 0x8756)) - 1848253874, &STACK[0x14A0], 12);
  a22 = 1;
  v32 = (*(v30 + 8 * (v31 ^ 0x4C74)))(0, &a22);
  if (v32)
  {
    v40 = a22 == 1;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;
  return (*(v30 + 8 * ((((((v31 - 15560) ^ v41) & 1) == 0) * (((v31 - 32551) | 0x141A) - 5105)) ^ v31)))(v32, v33, v34, v35, v36, v37, v38, v39, v29, a10, &STACK[0xCA0], &STACK[0x8A0], &STACK[0x4A0], &a29);
}

uint64_t sub_1006F8098(uint64_t a1)
{
  *(a1 + 8) = 0x9984EA2AFD46A994;
  *(a1 + 16) = 0x9984EA2AFD46A994;
  *(a1 + 24) = 0x9984EA2AFD46A994;
  *(a1 + 32) = 0x9984EA2AFD46A994;
  *(a1 + 40) = 670443510;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1006F811C()
{
  LOBYTE(STACK[0x2C17]) = 123;
  LODWORD(STACK[0x3F8C]) = 1497668682;
  LODWORD(STACK[0x4530]) = 1497668682;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x6C6C03CB ^ (25706 * (v0 != 1501472575)))))();
}

uint64_t sub_1006F819C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = STACK[0x930];
  v14 = STACK[0xB850] + v11;
  v15 = STACK[0x948];
  v16 = STACK[0x950];
  v17 = 1864610357 * ((1864610357 * ((v14 ^ v12) & 0x7FFFFFFF)) ^ ((1864610357 * ((v14 ^ v12) & 0x7FFFFFFF)) >> 16));
  v18 = a7 ^ a4 ^ v9 ^ *(STACK[0x930] + v10) ^ *(STACK[0x948] + v10) ^ *(STACK[0x950] + v10) ^ *(STACK[0x930] + (v17 >> 24)) ^ *(STACK[0x948] + (v17 >> 24)) ^ *(STACK[0x950] + (v17 >> 24)) ^ v17 ^ (-71 * ((1864610357 * ((1864610357 * ((v14 ^ v12) & 0x7FFFFFFF)) ^ ((1864610357 * ((v14 ^ v12) & 0x7FFFFFFF)) >> 16))) >> 24));
  *v14 = v18;
  LODWORD(v14) = *(*STACK[0xE50] + (*STACK[0xE58] & ((54 * (v8 ^ 0x2E61)) ^ 0x72D7E344u))) ^ v14;
  LODWORD(v14) = 1864610357 * ((v14 & 0x7FFFFFFF) - (v14 & 0x7FFFFFFC)) - 1131493164 * ((v14 >> 2) & 0x1FFFFFFF);
  v19 = 1864610357 * (v14 ^ WORD1(v14));
  LODWORD(v19) = *(v15 + (v19 >> 24)) ^ *(v13 + (v19 >> 24)) ^ *(v16 + (v19 >> 24)) ^ v18 ^ v19 ^ (-71 * (v19 >> 24));
  *(v7 + 8 * (v19 >> 6)) = ((1 << v19) & 0xE236E940D18EE8C9 | (*(v7 + 8 * (v19 >> 6)) ^ 0xC24A81B5BC997131) & ~(1 << v19)) ^ 0xC24A81B5BC997131;
  return (*(STACK[0xF18] + 8 * v8))();
}

uint64_t sub_1006F8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = LODWORD(STACK[0x690]) + v6 - 23424 - 1605439089;
  v9 = *(STACK[0x6A0] + 8 * v6);
  LODWORD(STACK[0x340]) = -1496831281;
  LODWORD(STACK[0x31C]) = 1266563982;
  LODWORD(STACK[0x344]) = 832369119;
  LODWORD(STACK[0x2E0]) = 1391789930;
  LODWORD(STACK[0x2D8]) = -797377805;
  LODWORD(STACK[0x318]) = -2127980891;
  LODWORD(STACK[0x2EC]) = 924822612;
  LODWORD(STACK[0x30C]) = 235672395;
  LODWORD(STACK[0x350]) = 373775642;
  LODWORD(STACK[0x338]) = -1897036266;
  LODWORD(STACK[0x348]) = 1485898130;
  LODWORD(STACK[0x33C]) = 804833952;
  LODWORD(STACK[0x310]) = 1976092396;
  LODWORD(STACK[0x2D0]) = 1476500653;
  LODWORD(STACK[0x330]) = 1984635878;
  LODWORD(STACK[0x2E4]) = -124945548;
  LODWORD(STACK[0x304]) = -1072822078;
  LODWORD(STACK[0x300]) = 1843311148;
  LODWORD(STACK[0x334]) = -1205194842;
  LODWORD(STACK[0x2DC]) = 99514791;
  LODWORD(STACK[0x32C]) = 206640663;
  LODWORD(STACK[0x308]) = -417743381;
  LODWORD(STACK[0x328]) = -1189370861;
  LODWORD(STACK[0x2F0]) = -667882708;
  LODWORD(STACK[0x2E8]) = 709449799;
  LODWORD(STACK[0x314]) = 313227675;
  LODWORD(STACK[0x2CC]) = 2035241806;
  LODWORD(STACK[0x2FC]) = 394578572;
  LODWORD(STACK[0x34C]) = 1892618819;
  LODWORD(STACK[0x2C8]) = -1053174195;
  LODWORD(STACK[0x2D4]) = 1759838216;
  LODWORD(STACK[0x320]) = 809393505;
  v10 = LODWORD(STACK[0x680]);
  v11 = LODWORD(STACK[0x688]);
  LODWORD(STACK[0x374]) = v8;
  return v9(1, v7, a3, 26, v11, a6, v10, 242);
}

uint64_t sub_1006F8534@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v8 = (v6 - 1) & 0xF;
  v9 = -a2 - v6;
  v11 = (v2 - a2) >= 0x10 && v9 + v5 + v8 + 1 >= ((a1 - 24149) ^ 0x486Eu) - 22004 && (v9 + v4 + v8 + 5) >= 0x10;
  v12 = v9 + v3 + v8 + 2;
  v14 = !v11 || v12 < 0x10;
  return (*(v7 + 8 * ((23 * v14) ^ (a1 - 20728))))();
}

uint64_t sub_1006F85BC()
{
  LODWORD(STACK[0x23B8]) = STACK[0x20D4];
  v1 = *(STACK[0x930] + 32) + 377787;
  LODWORD(STACK[0x23C4]) = ((v1 ^ 0x8EBFB20F) + 1900383793) ^ v1 ^ ((v1 ^ 0x211786E2) - 554845474) ^ ((v1 ^ 0xC25A0812) + 1033909294) ^ ((v1 ^ 0x6DF7FF3F) - 1844591871) ^ 0xEE060DA8;
  return (*(v0 + 40672))();
}

uint64_t sub_1006F8888(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62)
{
  v67 = ((v65 & 0x7FFFFFFFFFFFFFFCLL ^ 0x7BC839719464A594) + 0x2202713A95611477) ^ ((v65 & 0x7FFFFFFFFFFFFFFCLL ^ 0x8002FF8DB3BD03F9) - 0x263748394D474DE4) ^ ((v65 & 0x7FFFFFFFFFFFFFFCLL ^ v62 ^ 0xFBCAC6FC45B9763FLL) - 0x5DFF7148D923E870);
  a1[3] = STACK[0x6C0];
  a1[4] = *(v63 + 80);
  *(v63 + 80) = a1;
  *(a1[4] + 24) = a1;
  v68 = ((((v67 - 1004908163) ^ 0xF40E8A85) - 825133565) ^ (v67 - 1004908163) ^ (((v67 - 1004908163) ^ 0xAE9F829E) - 1807712742) ^ (((v67 - 1004908163) ^ 0x647EF49E) + 1587611674) ^ (((v67 - 1004908163) ^ 0xFBCFFFFD) + (a62 & 0xF6EDF052) + 1588540201)) & 0xFFFFFFFC;
  a1[1] = v67 - 0x1CE7EA3C3BE5AE83;
  return (*(v66 + 8 * ((34540 * ((((v68 ^ 0x4E17089DEE172AEALL) - 0x47BF2E268DA60A4BLL) ^ ((v68 ^ 0x830192E92EAD147FLL) + 0x75564BADB2E3CB22) ^ ((v68 ^ 0xCD169A74059A3DEDLL) + 0x3B41433099D4E2B4)) + 0x9A826BBA69123B0 < 0xFFFFFFFFFFFFFFD7)) ^ v64)))();
}

uint64_t sub_1006F8A80()
{
  *STACK[0x1258] = v0 & 0xFFFFFFF | 0xE0000000;
  *STACK[0x1390] = STACK[0x1DA0];
  return (*(v1 + 127904))();
}

uint64_t sub_1006F8AB8()
{
  if (v0 == ((v3 + 36510) ^ 0xF8267B1B))
  {
    v6 = 1685479788;
  }

  else
  {
    v6 = 0;
  }

  if (v0 == -731040519)
  {
    v6 = 1735811436;
  }

  *v2 = 0;
  *v1 = -371865839;
  STACK[0x8FE8] = *(v4 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v5;
  LODWORD(STACK[0x7FD8]) = v6;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  LODWORD(STACK[0x704C]) = -2116087583;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_1006F8B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v28 - 120) = v24;
  *(v28 - 112) = v25;
  *(v28 - 104) = v27 - ((v28 - 128) ^ 0x97DB32AB) * v26 + 29160;
  v29 = (*(a24 + 8 * (v27 + 31762)))(v28 - 128);
  return (*(a24 + 8 * ((55975 * (*(v28 - 128) > ((17 * (v27 ^ 0x4A5E)) ^ (v27 + 307026873)))) ^ v27)))(v29);
}

uint64_t sub_1006F8C1C@<X0>(unsigned int a1@<W8>)
{
  v3 = 0;
  v4 = *(*STACK[0xE50] + (*v2 & 0xFFFFFFFFCA475F48)) ^ 0xCA475F4BLL;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = v1 - 0x10A99C80114D1487;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v13 = v12 ^ (-901292213 * (v1 - 290264199)) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  v14 = vdupq_n_s32(v13);
  v15 = xmmword_100BC7620;
  v16 = xmmword_100BC7630;
  v17 = xmmword_100BC7640;
  v18 = xmmword_100BC7650;
  v19.i64[0] = 0x9393939393939393;
  v19.i64[1] = 0x9393939393939393;
  v20.i64[0] = 0x1000000010;
  v20.i64[1] = 0x1000000010;
  do
  {
    v21 = *(v11 + v3);
    v28.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7690), v14), vmulq_s32(vaddq_s32(v17, v14), vsubq_s32(v17, v14)));
    v28.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC76A0), v14), vmulq_s32(vaddq_s32(v18, v14), vsubq_s32(v18, v14)));
    v28.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7680), v14), vmulq_s32(vaddq_s32(v16, v14), vsubq_s32(v16, v14)));
    v28.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v21, xmmword_100BC7670), v14), vmulq_s32(vaddq_s32(v15, v14), vsubq_s32(v15, v14)));
    *(v11 + v3) = vmulq_s8(vqtbl4q_s8(v28, xmmword_100BC7660), v19);
    v3 += 16;
    v18 = vaddq_s32(v18, v20);
    v17 = vaddq_s32(v17, v20);
    v16 = vaddq_s32(v16, v20);
    v15 = vaddq_s32(v15, v20);
  }

  while (v3 != 384);
  v22 = (v1 - 0x10A99C80114D130FLL);
  for (i = 49; i > 2; --i)
  {
    v24 = 16777619 * ((i - 2 + v13) ^ v13) % (i - 2);
    v25 = *(v11 + 8 * v24) ^ *v22;
    *v22 = v25;
    v26 = *(v11 + 8 * v24) ^ v25;
    *(v11 + 8 * v24) = v26;
    *v22-- ^= v26;
  }

  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1006F8E60()
{
  *(*(v3 + 8 * (v1 - 4750)) - 1248606635) = v0 + 1449079423;
  *(*(v3 + 8 * (v1 - 2796)) - 1072237815) = v0 + ((v1 + 4949) | 0x4040) + 1449052442;
  return (*(v2 + 8 * ((15489 * (v0 + 1449079423 < ((v1 + 7461) ^ 0x30F6u))) ^ v1)))();
}

uint64_t sub_1006F8EF0()
{
  v1 = *STACK[0x9B8];
  STACK[0x1A30] = v1;
  return (*(v0 + 8 * ((56 * (v1 != 0)) ^ 0x3B58u)))();
}

uint64_t sub_1006F8F48()
{
  LODWORD(STACK[0x7A4C]) = v1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 - 32582));
  return (*(v2 + 8 * ((v0 - 2333) ^ (v0 - 32582) ^ 0x806E ^ (7508 * ((v0 - 713963116) > 0x1A55083E)))))();
}

uint64_t sub_1006F90A0()
{
  v2 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] += 64;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 35089)))(*(&off_1010A0B50 + (v0 ^ 0x4056)) - 1268920906, v2, 48);
  v4 = (*(v3 + 8 * (v0 ^ 0x8B71)))(*(&off_1010A0B50 + v0 - 15266) - 957476066, v2 + 48, 16);
  return (*(v3 + 8 * ((112 * ((((1011 * (v0 ^ 0x41B9) - 809280525) ^ (*v1 == -371865839)) & 1) == 0)) ^ v0)))(v4);
}

uint64_t sub_1006F9280()
{
  v1 = STACK[0xF18];
  STACK[0x44B8] = *(STACK[0xF18] + 8 * (v0 - 32685));
  return (*(v1 + 8 * ((v0 ^ 0xC740) + v0 - 32685)))();
}

uint64_t sub_1006F9310@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 520);
  *(a1 + 480) = *(*(v3 + 8) + 120 * v1 + 112);
  return (*(STACK[0xF18] + 8 * (((*(*(v3 + 8) + 120 * v1 + 40) == 0) * (((v2 - 28902) | 0x120) ^ 0x3B7)) ^ v2)))();
}

uint64_t sub_1006F9394()
{
  v1 = STACK[0xF10] + 12472;
  v2 = (((LODWORD(STACK[0x5AF0]) ^ 0xE6C05EEB) + 423600405) ^ ((LODWORD(STACK[0x5AF0]) ^ 0x3AD0AAE3) - 986753763) ^ ((LODWORD(STACK[0x5AF0]) ^ 0x35C53319) - 902116121)) - 276025329;
  v3 = (v2 ^ 0xF005D7F4) & (2 * (v2 & 0xFA499701)) ^ v2 & 0xFA499701;
  v4 = ((2 * (((STACK[0xF10] - 29275) | 0xA312) ^ 0xA4176A06 ^ v2)) ^ 0xBCBC8DEA) & (((STACK[0xF10] - 29275) | 0xA312) ^ 0xA4176A06 ^ v2) ^ (2 * (((STACK[0xF10] - 29275) | 0xA312) ^ 0xA4176A06 ^ v2)) & 0x5E5E46F4;
  v5 = v4 ^ 0x42424215;
  v6 = (v4 ^ 0x180C0400) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x79791BD4) & v5 ^ (4 * v5) & 0x5E5E46F4;
  v8 = (v7 ^ 0x585802D0) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x6064421)) ^ 0xE5E46F50) & (v7 ^ 0x6064421) ^ (16 * (v7 ^ 0x6064421)) & 0x5E5E46D0;
  v10 = v8 ^ 0x5E5E46F5 ^ (v9 ^ 0x44444600) & (v8 << 8);
  v11 = v2 ^ (2 * ((v10 << 16) & 0x5E5E0000 ^ v10 ^ ((v10 << 16) ^ 0x46F50000) & (((v9 ^ 0x1A1A00A5) << 8) & 0x5E5E0000 ^ (((v9 ^ 0x1A1A00A5) << 8) ^ 0x5E460000) & (v9 ^ 0x1A1A00A5) ^ 0x180000)));
  LODWORD(STACK[0x5AF0]) = v11 ^ 0x2388DDFA;
  if (v0 == -1921375990)
  {
    v12 = STACK[0xA0B4];
  }

  else
  {
    v12 = 371891407;
  }

  v13 = (((v11 ^ 0xD52FED3A) + 156815168) ^ ((v11 ^ 0x2E42C2F) - 560787925) ^ ((v11 ^ 0x1D96DBFE) - 1042155012)) - LODWORD(STACK[0x7A8C]) + 1364321591;
  LODWORD(STACK[0x2158]) = v13 ^ ((v13 ^ 0x55095AD9) - 324587933) ^ ((v13 ^ 0x8C9102D1) + 893351531) ^ ((v13 ^ 0xC032A8B3) + 2040323081) ^ ((v13 ^ 0x5FFB7BFF) - 430633147) ^ 0xAF844C55;
  return (*(STACK[0xF18] + 8 * ((32174 * (v12 == -371865839)) ^ v1)))();
}

uint64_t sub_1006F98C4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD5B7)))();
  *(v0 + 16) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006F9904@<X0>(int a1@<W8>)
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
  STACK[0xBCA0] = 0;
  STACK[0xBCA8] = v1;
  v13 = 16777619 * ((1269228062 * v12 + 7) ^ (1269228062 * v12)) % 7;
  v14 = 16777619 * ((1269228062 * v12 + 6) ^ (1269228062 * v12)) % 6;
  v15 = 16777619 * ((1269228062 * v12 + 5) ^ (1269228062 * v12)) % 5;
  v16 = *(&STACK[0xBCA0] | v13);
  *(&STACK[0xBCA0] | v13) = STACK[0xBCA7];
  v17 = *(&STACK[0xBCA0] | v14);
  *(&STACK[0xBCA0] | v14) = STACK[0xBCA6];
  v18 = *(&STACK[0xBCA0] | v15);
  *(&STACK[0xBCA0] | v15) = STACK[0xBCA5];
  v19 = 16777619 * ((1269228062 * v12 + 3) ^ (1269228062 * v12)) % 3;
  v20 = vdup_n_s32(1269228062 * v12);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = (1269228062 * v12) | 1;
  LOBYTE(STACK[0xBCA7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  LOBYTE(STACK[0xBCA6]) = v17;
  LOBYTE(STACK[0xBCA5]) = v18;
  v23 = STACK[0xBCA0];
  LOBYTE(STACK[0xBCA0]) = STACK[0xBCA4];
  LOBYTE(STACK[0xBCA4]) = v23;
  v24 = *(&STACK[0xBCA0] | v19);
  *(&STACK[0xBCA0] | v19) = STACK[0xBCA3];
  LOBYTE(STACK[0xBCA3]) = v24;
  v25 = STACK[0xBCA1];
  LOBYTE(STACK[0xBCA2]) = STACK[0xBCA0];
  LOWORD(STACK[0xBCA0]) = v25;
  STACK[0xBCA0] = vmla_s32(v22, STACK[0xBCA0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBCA8];
  v27 = (1269228062 * STACK[0xBCA8]) ^ v12;
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
  v48 = *(&STACK[0xBCA8] + v13);
  *(&STACK[0xBCA8] + v13) = STACK[0xBCAF];
  LOBYTE(STACK[0xBCAF]) = v48;
  v49 = *(&STACK[0xBCA8] + v14);
  *(&STACK[0xBCA8] + v14) = STACK[0xBCAE];
  LOBYTE(STACK[0xBCAE]) = v49;
  v50 = *(&STACK[0xBCA8] + v15);
  *(&STACK[0xBCA8] + v15) = STACK[0xBCAD];
  LOBYTE(STACK[0xBCAD]) = v50;
  v51 = STACK[0xBCA8];
  LOBYTE(STACK[0xBCA8]) = STACK[0xBCAC];
  v52 = *(&STACK[0xBCA8] + v19);
  *(&STACK[0xBCA8] + v19) = STACK[0xBCAB];
  LOBYTE(STACK[0xBCAC]) = v51;
  LOBYTE(STACK[0xBCAB]) = v52;
  v53 = STACK[0xBCA9];
  LOBYTE(STACK[0xBCAA]) = STACK[0xBCA8];
  LOWORD(STACK[0xBCA8]) = v53;
  STACK[0xBCA8] = vmla_s32(v22, STACK[0xBCA8], vdup_n_s32(0x1000193u));
  *(v2 + 264) = STACK[0xBCA8] ^ STACK[0xBCA0];
  return (*(STACK[0xF18] + 8 * (a1 - 26100)))();
}

uint64_t sub_1006F9E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (v27 < 0)
  {
    v27 = -v27;
  }

  v28 = a3 + v26;
  v29 = v25 - a3;
  if (v28 < 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  return (*(a24 + 8 * ((v24 + 8247) ^ (4231 * (v27 > v30)))))(a1, (2 * v27), v30);
}

uint64_t sub_1006F9F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, _DWORD *a8)
{
  v17 = *(v14 + 8 * v9);
  v18 = (v10 + (v8 - 1077842507));
  v19 = *(*v15 + (*a8 & v12));
  v20 = *v18;
  v21 = ((((v19 ^ v18) & 0x7FFFFFFF) * a6) ^ ((((v19 ^ v18) & 0x7FFFFFFF) * a6) >> 16)) * a6;
  LODWORD(v21) = (*(v11 + (v21 >> 24)) ^ v20 ^ *((v21 >> 24) + a5 + 2) ^ *((v21 >> 24) + v13 + 4) ^ v21 ^ ((v21 >> 24) * v16)) << 24;
  v22 = (v10 + (v8 - 1077842506));
  v23 = ((((v19 ^ v22) & 0x7FFFFFFF) * a6) ^ ((((v19 ^ v22) & 0x7FFFFFFF) * a6) >> 16)) * a6;
  LODWORD(v21) = v21 & 0xFF00FFFF | ((*(v11 + (v23 >> 24)) ^ *v22 ^ *((v23 >> 24) + a5 + 2) ^ *((v23 >> 24) + v13 + 4) ^ v23 ^ (BYTE3(v23) * v16)) << 16);
  v24 = (v10 + (v8 - 1077842505));
  LOBYTE(v23) = *v24;
  v25 = ((((v19 ^ v24) & 0x7FFFFFFF) * a6) ^ ((((v19 ^ v24) & 0x7FFFFFFF) * a6) >> 16)) * a6;
  LODWORD(v21) = v21 & 0xFFFF00FF | ((v23 ^ v25 ^ (BYTE3(v25) * v16) ^ *(v11 + (v25 >> 24)) ^ *((v25 >> 24) + a5 + 2) ^ *((v25 >> 24) + v13 + 4)) << 8);
  v26 = (v10 + (v8 - 1077842504));
  LODWORD(v25) = *v26;
  v27 = ((((v19 ^ v26) & 0x7FFFFFFF) * a6) ^ ((((v19 ^ v26) & 0x7FFFFFFF) * a6) >> 16)) * a6;
  v28 = (v27 >> 24) * v16;
  LODWORD(v27) = *(v11 + (v27 >> 24)) ^ v25 ^ *((v27 >> 24) + a5 + 2) ^ *((v27 >> 24) + v13 + 4) ^ v27;
  LODWORD(STACK[0x20D4]) = ((v27 ^ v28) & 0xDE | (v27 ^ ~v28 | 0xFFFFFF00) & ((v21 - ((2 * v21) & 0xF7B35200) - 69621294) ^ 0xC37D84F3)) ^ 0xD171EA30;
  return v17();
}

uint64_t sub_1006FA104@<X0>(uint64_t a1@<X8>)
{
  STACK[0x43D0] = v2;
  LOBYTE(STACK[0x5F37]) = v3;
  LODWORD(STACK[0x60B4]) = 0;
  if (a1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * ((v5 * (((v1 - 413199136) & 0x18A0AFBB ^ 0xFFFF3939) + 3 * (v1 ^ 0xDC90))) ^ v1)))();
}

uint64_t sub_1006FA238()
{
  v1 = *(STACK[0x2DC0] + 4);
  STACK[0x4F90] = STACK[0x88B8];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393278;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1006FA274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X7>, uint64_t a4@<X8>)
{
  v9 = *(STACK[0xF18] + 8 * v7);
  v10 = (v6 + v5);
  v11 = 1864610357 * ((*(*a3 + (*v8 & 0x72D7ACF8)) ^ (v10 + 1546128096)) & 0x7FFFFFFF);
  v12 = 1864610357 * (v11 ^ HIWORD(v11));
  *(v10 - 0x3D0CA9E4A3D7F520) = HIBYTE(a4) ^ *(a2 + (v12 >> 24)) ^ *(a1 + (v12 >> 24)) ^ *((v12 >> 24) + STACK[0x968] + 1) ^ v12 ^ (107 * BYTE3(v12)) ^ 0x6E;
  LODWORD(v12) = 1864610357 * ((*(*a3 + (*v8 & 0x72D7ACF8)) ^ (v10 + 1546128097)) & 0x7FFFFFFF);
  v13 = 1864610357 * (v12 ^ WORD1(v12));
  v14 = *(&off_1010A0B50 + v4 - 33272) - 1084492803;
  v15 = *(&off_1010A0B50 + (v4 ^ 0x8BE9)) - 1236683774;
  v16 = *(&off_1010A0B50 + (v4 ^ 0x87BC)) - 839786143;
  *(v10 - 0x3D0CA9E4A3D7F51FLL) = BYTE6(a4) ^ v14[v13 >> 24] ^ v15[v13 >> 24] ^ v16[v13 >> 24] ^ v13 ^ (-109 * BYTE3(v13)) ^ 0x98;
  LODWORD(v13) = 1864610357 * ((*(*a3 + (*v8 & 0x72D7ACF8)) ^ (v10 + 1546128098)) & 0x7FFFFFFF);
  v17 = 1864610357 * (v13 ^ WORD1(v13));
  *(v10 - 0x3D0CA9E4A3D7F51ELL) = BYTE5(a4) ^ v14[v17 >> 24] ^ v15[v17 >> 24] ^ v16[v17 >> 24] ^ v17 ^ (-109 * BYTE3(v17)) ^ 0xF5;
  v18 = 1864610357 * ((*(*a3 + (*v8 & 0x72D7ACF8)) ^ (v10 + 1546128099)) & 0x7FFFFFFF);
  v19 = 1864610357 * (v18 ^ HIWORD(v18));
  *(v10 - 0x3D0CA9E4A3D7F51DLL) = BYTE4(a4) ^ v14[v19 >> 24] ^ v15[v19 >> 24] ^ v16[v19 >> 24] ^ v19 ^ (-109 * BYTE3(v19)) ^ 0x18;
  LODWORD(v19) = 1864610357 * ((*(*a3 + (*v8 & 0x72D7ACF8)) ^ (v10 + 1546128100)) & 0x7FFFFFFF);
  v20 = 1864610357 * (v19 ^ WORD1(v19));
  *(v10 - 0x3D0CA9E4A3D7F51CLL) = BYTE3(a4) ^ v14[v20 >> 24] ^ v15[v20 >> 24] ^ v16[v20 >> 24] ^ v20 ^ (-109 * BYTE3(v20)) ^ 0xDC;
  LODWORD(v17) = 1864610357 * ((*(*a3 + (*v8 & 0x72D7ACF8)) ^ (v10 + 1546128101)) & 0x7FFFFFFF);
  v21 = 1864610357 * (v17 ^ WORD1(v17));
  *(v10 - 0x3D0CA9E4A3D7F51BLL) = BYTE2(a4) ^ v14[v21 >> 24] ^ v15[v21 >> 24] ^ v16[v21 >> 24] ^ v21 ^ (-109 * BYTE3(v21)) ^ 0xA5;
  LODWORD(v20) = 1864610357 * ((*(*a3 + (*v8 & 0x72D7ACF8)) ^ (v10 + 1546128102)) & 0x7FFFFFFF);
  v22 = 1864610357 * (v20 ^ WORD1(v20));
  *(v10 - 0x3D0CA9E4A3D7F51ALL) = BYTE1(a4) ^ v14[v22 >> 24] ^ v15[v22 >> 24] ^ v16[v22 >> 24] ^ v22 ^ (-109 * BYTE3(v22)) ^ 5;
  v10 -= 0x3D0CA9E4A3D7F519uLL;
  v23 = 1864610357 * ((*(*a3 + (*v8 & 0x72D7ACF8)) ^ v10) & 0x7FFFFFFF);
  v24 = 1864610357 * (v23 ^ HIWORD(v23));
  *v10 = a4 ^ v14[v24 >> 24] ^ v15[v24 >> 24] ^ v16[v24 >> 24] ^ v24 ^ (-109 * BYTE3(v24)) ^ 0x38;
  return v9();
}

uint64_t sub_1006FA690@<X0>(int a1@<W8>)
{
  v3 = STACK[0x83A8];
  *v3 = 1802923124;
  *(v3 + 8) = STACK[0x7C08];
  *(v3 + 16) = v1 - 0x7E666516A39B349ELL;
  *(v3 + 24) = STACK[0x1600];
  *(v3 + 32) = *(v1 + v2);
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1006FA7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, void *a43)
{
  STACK[0x3D0] = &STACK[0x47C];
  v47 = v45 + 0x5E6BF8DE5B048E67;
  v48 = STACK[0x300];
  *(v48 + 8) = v47;
  *a43 = v47;
  a43[1] = 0x9B4E56ED202491DFLL - v46;
  a43[2] = (((LOBYTE(STACK[0x47F]) ^ 0x1E089A9BAD2AC2E4) - 0x1E089A9BAD2AC2E4) ^ ((LOBYTE(STACK[0x47F]) ^ 0x45EAD393B825AB11) - 0x45EAD393B825AB11) ^ ((LOBYTE(STACK[0x47F]) ^ 0x5BE24908150F6932) + ((v43 + 8556) ^ 0xA41DB6F7EAF0C036))) + 0x73B4913AF7D02F06;
  *a42 = 0x3CE25E0EC5200378;
  *(STACK[0x308] + 40) += v44;
  STACK[0x388] = (a43 + 3);
  v49 = *(STACK[0x430] + 8 * v43);
  STACK[0x310] = v48;
  return v49(0xBA152C6C47DA54EFLL, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1006FA90C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v5 = *(a2 + 4) - 7 * ((((37 * *(a2 + 4)) >> 8) + (((*(a2 + 4) - ((37 * *(a2 + 4)) >> 8)) & 0xFE) >> 1)) >> 2);
  v6 = v2 - 2051137858 + (v4 ^ 0x6D23) + 48107;
  v7 = ((v5 ^ 0x8A) + ((2 * v5) & 4) - 109) * v3 - 415478175;
  v9 = v6 < 0xE73C5033 || v6 >= v7;
  return (*(STACK[0xF18] + 8 * ((v9 * a1) ^ v4)))();
}

uint64_t sub_1006FAA28()
{
  v2 = v0 + 7146;
  v3 = *(v1 - 0x217E172EFA1E81CLL);
  v4 = 40409587 * LODWORD(STACK[0x5670]) - 1378563772;
  v5 = (((v0 + 14248) | 0x1509) ^ 0xFBBFBA17) & (2 * LODWORD(STACK[0x1E10])) ^ 0x5B9B248C;
  v6 = 327 * ((v0 + 7146) ^ 0x255F) + (LODWORD(STACK[0x1E10]) ^ 0x523265B1);
  v7 = 155453101 * ((~(&STACK[0x10000] + 3800) & 0x2CE6288 | (&STACK[0x10000] + 3800) & 0xFD319D70) ^ 0xE4E87947);
  LODWORD(STACK[0x10F04]) = v7 + 2069619737;
  LODWORD(STACK[0x10F08]) = v2 - v7 + 1777281639;
  STACK[0x10F10] = v3;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((~(&STACK[0x10000] + 3800) & 0x6288 | (&STACK[0x10000] + 3800) & 0x9D70) ^ 0x7947);
  LODWORD(STACK[0x10ED8]) = v4 ^ v7;
  LODWORD(STACK[0x10EF0]) = v7 ^ 0xDA000E07;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = &STACK[0x2CEC];
  LODWORD(STACK[0x10EF4]) = (v6 + v5 - 17420139) ^ v7;
  STACK[0x10EF8] = 0;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v2 ^ 0xEFD6)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * ((57702 * (LODWORD(STACK[0x10F0C]) == -371865839)) ^ v2)))(v9);
}

uint64_t sub_1006FABE8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE4]) = v1 - 1012831759 * ((((&STACK[0x10000] + 3800) | 0xE3B82287) + (~(&STACK[0x10000] + 3800) | 0x1C47DD78)) ^ 0xF32B340C) + 39730;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD2D6)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 152) = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1006FAC74()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 1952374347;
  v2 = STACK[0x2BF8];
  STACK[0x36F0] = STACK[0x7AD8];
  STACK[0x73E8] = v2;
  LODWORD(STACK[0x56B8]) = 744170678;
  return (*(STACK[0xF18] + 8 * ((16123 * (v1 > 0x55FDDF75)) ^ (v0 - 29790))))();
}

uint64_t sub_1006FACDC()
{
  v1 = v0 - 6989;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((((v1 + 4497) | 0x2000) ^ 0x2D1B) + v1)))();
}

uint64_t sub_1006FAD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44)
{
  v51 = *(v44 + 4 * (v48 - 1649386814));
  v52 = 1664525 * (((v51 ^ (v51 >> 30) ^ 0x9901A29B) - 295255702) ^ ((v51 ^ (v51 >> 30) ^ 0x890BC372) - 26435455) ^ ((v51 ^ (v51 >> 30) ^ 0x100A61E9) + 1735197212)) + 162730249;
  v53 = (v52 ^ 0xEC7F6132) & (2 * (v52 & 0xF17F09A0)) ^ v52 & 0xF17F09A0;
  v54 = ((2 * (v52 ^ 0x8EC76332)) ^ 0xFF70D524) & (v52 ^ 0x8EC76332) ^ (2 * (v52 ^ 0x8EC76332)) & 0x7FB86A92;
  v55 = v54 ^ 0x882A92;
  v56 = (v54 ^ 0x4F304000) & (4 * v53) ^ v53;
  v57 = ((4 * v55) ^ 0xFEE1AA48) & v55 ^ (4 * v55) & 0x7FB86A90;
  v58 = (v57 ^ 0x7EA02A00) & (16 * v56) ^ v56;
  v59 = ((16 * (v57 ^ 0x1184092)) ^ 0xFB86A920) & (v57 ^ 0x1184092) ^ (16 * (v57 ^ 0x1184092)) & 0x7FB86A80;
  v60 = v58 ^ 0x7FB86A92 ^ (v59 ^ 0x7B802800) & (v58 << 8);
  v61 = (v60 << 16) & 0x7FB80000 ^ v60 ^ ((v60 << 16) ^ 0x6A920000) & (((v59 ^ 0x4384292) << 8) & 0x7FB80000 ^ 0x47900000 ^ (((v59 ^ 0x4384292) << 8) ^ 0x386A0000) & (v59 ^ 0x4384292));
  v62 = *(v46 + 4 * (v49 - 506509311));
  v63 = v52 ^ *(v44 + 4 * (v48 - 1649386813)) ^ (2 * v61);
  *(v44 + 4 * (v48 - 1649386813)) = v49 + (((v62 ^ 0x8C8BF5E) - 147373918) ^ ((v62 ^ 0x7EC73D76) - 2126986614) ^ ((v62 ^ 0x92E949F7) + 1830204937)) - 1806704738 + (((v63 ^ 0xFDF70D24) + 348055010) ^ ((v63 ^ 0xF50374) - 373494862) ^ ((v63 ^ 0x262DD2D4) - 815515118));
  v64 = (v47 + 805786205) ^ a44;
  *(v50 - 120) = v64 ^ 0x130B;
  *(v50 - 116) = ((v47 + 805786205) ^ 0x35) - a44;
  *(v50 - 136) = v64;
  *(v50 - 144) = (v48 - 1482780791) ^ a44;
  *(v50 - 104) = v47 - a44 + 731768277;
  *(v50 - 112) = a44;
  *(v50 - 128) = a41;
  v65 = (*(v45 + 8 * (v47 - 1781910289)))(v50 - 144);
  return (*(v45 + 8 * *(v50 - 108)))(v65);
}

uint64_t sub_1006FB188@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 520);
  *(a1 + 480) = *(*(v3 + 8) + 120 * v1 + 112);
  return (*(STACK[0xF18] + 8 * (((*(*(v3 + 8) + 120 * v1 + 40) == 0) * (((v2 ^ 0xC3EE) + 34676) ^ 0x8B40)) ^ v2)))();
}

uint64_t sub_1006FB2F0@<X0>(__int16 a1@<W8>)
{
  v3 = v1 - 13990;
  v4 = 139493411 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x8F3459C5) + ((&STACK[0x10000] + 3800) | 0x70CBA63A))) ^ 0x8319B880);
  STACK[0x10EF0] = *(v2 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10ED8]) = v1 - 13990 - v4 + 26636;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10EE8]) = v4 - 466197451;
  LOWORD(STACK[0x10EFC]) = -32733 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x59C5) + ((&STACK[0x10000] + 3800) | 0xA63A))) ^ 0xB880) + ((2 * a1) & 0xDEF8) + (a1 ^ (v1 - 13990) ^ 0x4630 ^ (v1 + 12189) & 0xDBBB ^ 0xEB4B) - 548;
  LODWORD(STACK[0x10EF8]) = v4 + 1133646169;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 19233)))(&STACK[0x10ED8]);
  v7 = STACK[0x10F00];
  v8 = *(v2 - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x1764]) = STACK[0x10F00];
  STACK[0x7BF0] = v8;
  v9 = STACK[0x7690];
  STACK[0x5880] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v9 + 32;
  if (v8)
  {
    v10 = v7 == 1497668682;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(v5 + 8 * ((152 * v11) ^ v3)))(v6);
}

uint64_t sub_1006FB5B0()
{
  v1 = v0 - 47126;
  v2 = STACK[0xF18];
  STACK[0x9558] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x3C5F ^ (v1 + 1299524817) & 0xB28ADFFB)))();
}

uint64_t sub_1006FB6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = STACK[0x74A0];
  v7 = STACK[0xF18];
  STACK[0x9020] = *(STACK[0xF18] + 8 * v5);
  return (*(v7 + 8 * ((((v5 + 13252) | 0xA0) ^ 0x4A9) + v5)))(a1, a2, a3, a4, a5, v6);
}

uint64_t sub_1006FB7BC()
{
  v0 = (STACK[0xF10] + 643371408) & 0xD9A6EB7F;
  v1 = STACK[0xF10] - 35570;
  v2 = STACK[0xF18];
  STACK[0x61A0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 23138 + v0)))();
}

uint64_t sub_1006FB810()
{
  v1 = STACK[0xF10] + 93;
  v2 = STACK[0xF10] - 371901482;
  STACK[0x3EE0] = STACK[0x1F68];
  return (*(STACK[0xF18] + 8 * (v2 ^ 0xE9D5A241 ^ (4542 * (((((v0 - v2) | (v2 - v0)) >> (v1 ^ 0x87)) & 1) == 0)))))();
}

uint64_t sub_1006FB9B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X5>, int a4@<W7>, uint64_t a5@<X8>)
{
  v14 = v9 + 4 * a5;
  v15 = (*(v10 + v14) ^ *(a3 + v14) ^ v12) + *(v5 + v14) * v11;
  *(v10 + v14) = v15;
  *(v6 + v14) += v15 * v13;
  return (*(v8 + 8 * (((a5 + 1 != a1) * a2) ^ (v7 + a4))))();
}

uint64_t sub_1006FBA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = v8[1];
  v11 = (((*v8 ^ 0x1FF49FD) - 33507837) ^ (v7 - 14727 + a7 + (*v8 ^ 0x78009560)) ^ ((*v8 ^ 0x902A1B8C) + 1876288628)) - 1821910262;
  v12 = v11 < 0xA99213F9;
  v13 = v11 > v10 - 1450044423;
  if (v10 > 0x566DEC06 != v12)
  {
    v13 = v12;
  }

  return (*(v9 + 8 * ((50331 * v13) ^ v7)))();
}

uint64_t sub_1006FBD48(uint64_t a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  LODWORD(STACK[0x698]) = a4 + 831700959;
  v7 = v6 + a4 + 831700959 - a2 - 590946955 + v5;
  v8 = v7 > v5 + 1961916142;
  if (v7 < a4 - 1890335472 != v5 + 1961916142 < a5)
  {
    v8 = v7 < a4 - 1890335472;
  }

  return (*(STACK[0x6A0] + 8 * ((4 * v8) | (8 * v8) | a4)))(3463232587);
}

uint64_t sub_1006FBEBC(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 24);
  *v2 = v1[8];
  v2[1] = v1[9];
  v2[2] = v1[10];
  v2[3] = v1[11];
  v2[4] = v1[12];
  v2[5] = v1[13];
  v2[6] = v1[14];
  v2[7] = v1[15];
  return result;
}

uint64_t sub_1006FBF74()
{
  v3 = v2 == 0;
  LOBYTE(STACK[0x5AFB]) = v3;
  if (v1)
  {
    v3 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((((((v0 - 4166) ^ 0xB4DF) - 1687) ^ (v0 - 4166) ^ 0xBA05) * v3) ^ (v0 - 4166))))();
}

void sub_1006FBFCC(uint64_t a1)
{
  v1 = *(a1 + 48) + 155453101 * (((a1 | 0x4953E47) - (a1 | 0xFB6AC1B8) - 76889672) ^ 0xE2B32588);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1006FC10C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _DWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v25 = a10 + v23;
  v26 = (v25 ^ 0x10C48853) & (2 * (v25 & 0x5AE62D5A)) ^ v25 & 0x5AE62D5A;
  return (*(a5 + 8 * (a22 ^ (8 * (*(v24 + 4 * (*a13 + a4 + 3 * v23 + 83 + (a22 ^ 0x45))) == v22)))))((((2 * (v25 ^ 0x24489057)) ^ 0xFD5D7A1A) & (v25 ^ 0x24489057) ^ (2 * (v25 ^ 0x24489057)) & 0x7EAEBD0C ^ 0x7C083808) & (4 * v26) ^ v26, 797984413, 1333258848, a5, 813700230, 537907599, 3078289941, 1356167808, a9, a10, a11, a12, a13);
}

uint64_t sub_1006FC364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v11 = *a8 >> 2;
  v12 = *(*v10 + 4 * ((0x63C2B7F5 % v11) & 0x3FFFFFFC));
  v13 = STACK[0x5D8];
  v14 = *(STACK[0x5D8] - 527405895);
  v15 = *(STACK[0x5E0] + 4 * v14);
  v17 = ((4 * (v8 ^ 0x12A2)) ^ 0xE8BF ^ *(*v10 + 4 * ((v11 + 0xFFFF) & (((v8 - 5030) | 0x13) + 64544) & v12))) & ~HIWORD(v12);
  v16 = v17 == 0;
  v18 = v17 + v17 * v15;
  if (v16)
  {
    v19 = *(STACK[0x5E0] + 4 * v14);
  }

  else
  {
    v19 = 0;
  }

  *(STACK[0x5E0] + 4 * v14) = (v19 + v18) * v15;
  *(v13 - 527405895) = (v14 + 1) % 6u;
  v20 = v16;
  return (*(v9 + 8 * ((28266 * v20) ^ v8)))();
}

uint64_t sub_1006FC498@<X0>(uint64_t a1@<X8>)
{
  *v1 = STACK[0x6C0];
  v4 = STACK[0x6C8];
  v1[1] = *(STACK[0x6C8] + 80);
  *(v4 + 80) = a1;
  *(v1[1] + 24) = a1;
  *(v1 - 2) = (v2 - 34194) - *(v1 - 2) + 0x79C4BC1C8A4006F1;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1006FC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = (v19 - 12617) | 0x2010;
  *(v21 - 128) = a11;
  *(v21 - 124) = (v22 - 3159) ^ a12;
  *(v21 - 136) = v17;
  (*(v18 + 8 * (v22 ^ 0xFEEC)))(v21 - 136);
  *(v21 - 136) = a16;
  *(v21 - 120) = v16;
  *(v21 - 128) = (v22 + 37222) ^ a10;
  (*(v18 + 8 * (v22 + 38581)))(v21 - 136);
  *(v21 - 112) = a16;
  *(v21 - 128) = v17;
  *(v21 - 136) = v22 - a9 * v20 + 12476;
  v23 = (*(v18 + 8 * (v22 + 38558)))(v21 - 136);
  return (*(v18 + 8 * (((*(v21 - 120) < 0x3AF7D7A4u) * (v22 - 37910 + 523 * (v22 ^ 0x343B))) | v22)))(v23);
}

uint64_t sub_1006FC668(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 16) + 155453101 * ((((2 * a1) | 0xDA85BF7C) - a1 + 314384450) ^ 0xB64C471);
  return (*(*(&off_1010A0B50 + (v1 ^ 0x2C8B)) + 8 * ((v3 * (((v1 - 2049) | 0x831) - 10443)) | v1) - 810145054))();
}

uint64_t sub_1006FC6FC(uint64_t a1)
{
  v460 = v1;
  v6 = -1802333311 * v4;
  v7 = *(*(v5 + 8 * (v2 - 9467)) + ((v6 >> ((v2 ^ 0x30) + 61)) ^ 0x31) - 1394005854) << 8;
  v8 = v2;
  v459 = v4;
  v9 = v5;
  v10 = (*(*(v5 + 8 * (v2 ^ 0x215E)) + (HIBYTE(v6) ^ 0x81) - 660218003) ^ ((HIBYTE(v6) ^ 0x28) - 30)) << 24;
  v11 = *(*(v5 + 8 * (v8 - 7793)) + ((-127 * v4) ^ 0xBLL) - 282367110) ^ (((-127 * v4) ^ 8) + 6);
  v458 = (v10 & 0x97000000 ^ 0xC33FCAF9 ^ (((((*(*(v9 + 8 * (v8 - 7328)) + (BYTE2(v6) ^ 0x32) - 1643843627) + 123) << 16) ^ 0x84E28E32) & (v11 ^ 0xC4FFBEE5) | v11 & 0xCD) ^ 0xEC32E525) & (v10 ^ 0x83FFFFFF)) & (v7 ^ 0xFFFFC1FF) ^ v7 & 0x5E00;
  v12 = *(v9 + 8 * (v8 & 0x49D3933A)) - 1281175894;
  v13 = *(v12 + (v3[8] ^ 0x84));
  v14 = *(v9 + 8 * (v8 ^ 0x2AE8)) - 153750707;
  v15 = *(v14 + ((v3[7] - 2 * (v3[7] & 0x7Fu) + 127) ^ 0xF1));
  v16 = *(v14 + (v3[3] ^ 0xD5));
  v17 = *(v14 + (v3[11] ^ 0xDCLL));
  v18 = *(v9 + 8 * (v8 ^ 0x26BF)) - 1981065978;
  v19 = *(v18 + (v3[2] ^ 0x64));
  HIDWORD(v21) = v19 ^ 8;
  LODWORD(v21) = (v19 ^ 0xC0) << 24;
  v20 = v21 >> 29;
  v22 = *(v14 + (v3[15] ^ 0xB4));
  v23 = *(v9 + 8 * (v8 ^ 0x39E2)) - 1910132095;
  v457 = *(v23 + (v3[5] ^ 0x8ALL));
  LODWORD(v14) = ((*(v12 + (*v3 ^ 0x40)) >> 3) | (32 * *(v12 + (*v3 ^ 0x40)))) ^ 0x44;
  v24 = *(v12 + (v3[12] ^ 0x87));
  v25 = *(v12 + (v3[4] ^ 0x3ELL));
  v26 = (v14 >> 5) | (8 * v14);
  v27 = *(v23 + (v3[9] ^ 0xCBLL));
  v28 = *(v23 + (v3[13] ^ 0x49));
  v29 = *(v18 + (v3[6] ^ 0x41));
  v30 = (((*(v23 + (v3[1] ^ 0x31)) << 16) ^ 0xB813283) & (v16 ^ 0xFFFFB22B) | v16 & 0x7C) ^ 0xC0E40040;
  HIDWORD(v21) = v29 ^ 8;
  LODWORD(v21) = (v29 ^ 0xC0) << 24;
  v31 = v21 >> 29;
  LODWORD(v14) = *(v18 + (v3[10] ^ 0x7DLL));
  HIDWORD(v21) = v14 ^ 8;
  LODWORD(v21) = (v14 ^ 0xC0) << 24;
  v32 = v21 >> 29;
  v33 = *(v18 + (v3[14] ^ 0x64));
  v456 = 8 * v33;
  v34 = *(v9 + 8 * (v8 ^ 0x233C)) - 443884895;
  v35 = *(v9 + 8 * (v8 - 7199)) - 165009314;
  v36 = *(v35 + 4 * (v457 ^ 0x6C)) + 341949584;
  v37 = 32 * v36;
  v38 = (32 * v36) & 0x20;
  if ((v38 & v36) != 0)
  {
    v38 = -v38;
  }

  v39 = v38 + v36;
  v462 = v8;
  v40 = *(v9 + 8 * (v8 - 9226)) - 1577769703;
  v41 = *(v9 + 8 * (v8 - 6097)) - 916183270;
  v42 = v25 ^ (16 * v25) ^ 0x3D;
  v43 = *(v34 + 4 * ((v26 ^ (16 * v26)) ^ 0xACu));
  v44 = (-1529559353 * v43 - 1367921339) ^ v22 ^ ((-1529559353 * v43 - 1367921339) >> 1) ^ ((-1529559353 * v43 - 1367921339) >> 3) ^ (*(v40 + 4 * (v32 ^ 8u)) - 31041545) ^ v37 & 0xFFFFFFC0 ^ *(v41 + 4 * (v22 ^ 0x22)) ^ v39;
  v45 = -1529559353 * *(v34 + 4 * v42) - 1367921339;
  v46 = *(v35 + 4 * (v27 ^ 0x6C)) + 341949584;
  v47 = *(v41 + 4 * (v16 ^ 0xD9)) ^ v30 ^ v46 ^ (32 * v46) ^ (*(v40 + 4 * ((((v33 >> 5) ^ 0x55) & ((8 * v33) ^ 0xB7) | (8 * v33) & 0xA8) ^ 0xD7)) - 31041545) ^ ((-((v45 >> 3) ^ (v45 >> 1)) ^ (v45 - ((v45 >> 3) ^ (v45 >> 1) ^ v45)) ^ 0x685B2FB2 ^ (((v45 >> 3) ^ (v45 >> 1)) - ((2 * ((v45 >> 3) ^ (v45 >> 1))) & 0xD0B65F64) + 1750806450)) + v45);
  v48 = *(v35 + 4 * (v28 ^ 0x9C));
  v49 = -1529559353 * *(v34 + 4 * ((((v17 ^ 0xFFFFFF7F) & ((v13 << 28) ^ (v13 << 24) ^ 0x7A808181) | v17 & 0x7E) ^ 0xE0E740C8) >> 24)) - 1367921339;
  v50 = v49 ^ (v49 >> 3) ^ (v49 >> 1) ^ (32 * (v48 + 341949584)) ^ (*(v40 + 4 * (v20 ^ 0xA4u)) - 31041545) ^ (v48 - 2 * ((v48 + 341949584) & 0x48C5943D ^ v48 & 9) - 584625980);
  v51 = v24 ^ (16 * v24) ^ 0x47;
  v52 = v15 ^ 0x355DF744 ^ *(v41 + 4 * (v15 ^ 0xEF));
  v53 = v51 + 3;
  if (v51 >= 0xFDu)
  {
    v54 = -3;
  }

  else
  {
    v53 = v24 ^ (16 * v24) ^ 0x47;
    v54 = 0;
  }

  if (!v53)
  {
    v51 = v54;
  }

  v55 = v50 & 0x4000;
  if ((v50 & 0x4000 & v52) != 0)
  {
    v55 = -v55;
  }

  v56 = (v55 + v52) ^ v50 & 0xFFFFBFFF;
  v57 = *(v35 + 4 * (BYTE2(v30) ^ 0xAAu));
  v58 = -1367921339 - 1529559353 * *(v34 + 4 * (v51 ^ 6u));
  v59 = v58 ^ (v58 >> 3) ^ (v58 >> 1) ^ (*(v40 + 4 * (v31 ^ 0x33u)) - 31041545) ^ (32 * (v57 + 341949584)) ^ (v57 - 2 * ((v57 + 341949584) & 0x40119CFF ^ v57 & 2) - 730637939) ^ 0xC0119CFD;
  v60 = ((v17 ^ 0x7F) & 0x81 | v17 & 0x7E) ^ 0xC8 ^ *(v41 + 4 * (v17 ^ 0xB9)) ^ 0x355DF7DB;
  v61 = v59 + v60 - 2 * (v59 & v60);
  v62 = *(v35 + 4 * (BYTE2(v47) ^ 7u)) + 341949584;
  v63 = -1367921339 - 1529559353 * *(v34 + 4 * ((v44 ^ 0x956702B4) >> 24));
  v64 = v63 ^ (v63 >> 3) ^ (v63 >> 1) ^ (*(v40 + 4 * (BYTE1(v56) ^ 0xE2u)) - 31041545) ^ *(v41 + 4 * (v61 ^ 0x96u)) ^ __ROR4__((2 * (v62 & 0x7FFFFFF)) ^ __ROR4__(v62, 4) ^ 0x9EFF8B48, 28) ^ v61;
  v65 = *(v34 + 4 * (HIBYTE(v56) ^ 0x25));
  v66 = -1701259040 * v65 - 823809888;
  v67 = 1784898432 * v65;
  v68 = -1367921339 - 1529559353 * v65;
  v69 = (v66 & 0xFFFFFF00 | (v68 >> 27)) ^ ((v67 & 0xFFFFFF80 | (v68 >> 25)) + 999727744) ^ 0x4E29B77D;
  v70 = -1367921339 - 1529559353 * *(v34 + 4 * ((HIBYTE(v47) ^ 0x50) - ((v47 >> 23) & 0xC) + 6));
  v71 = *(v35 + 4 * (BYTE2(v56) ^ 0xCu)) + 341949584;
  v72 = v71 ^ v44 ^ 0xB4 ^ v70 ^ *(v41 + 4 * (v44 ^ 0xC4u)) ^ (v70 >> 1) ^ (v70 >> 3) ^ (32 * v71) ^ (*(v40 + 4 * (BYTE1(v61) ^ 0x82u)) - 31041545);
  v73 = -(HIBYTE(v61) ^ 0x8B) ^ (6 - (HIBYTE(v61) ^ 0x8D)) ^ 0xCF880F67 ^ ((HIBYTE(v61) ^ 0x8B) - 2 * ((HIBYTE(v61) ^ 0x8B) & 0x77777777 ^ HIBYTE(v61) & 0x10) - 813166745);
  v74 = *(v35 + 4 * (BYTE2(v61) ^ 0x21u)) + 341949584;
  HIDWORD(v75) = v69;
  LODWORD(v75) = v69;
  v76 = v68 ^ v47 ^ v74 ^ (32 * v74) ^ *(v41 + 4 * (v47 ^ 0xA6u)) ^ (*(v40 + 4 * (BYTE1(v44) ^ 0xCBu)) - 31041545) ^ ((v75 >> 7) >> 1);
  v77 = -1367921339 - 1529559353 * *(v34 + 4 * (v73 + 6));
  v78 = *(v35 + 4 * (BYTE2(v44) ^ 0x6Cu)) + 341949584;
  v79 = __ROR4__(v56 ^ v78 ^ v77 ^ (v77 >> 1) ^ *(v41 + 4 * (v56 ^ 0x37u)) ^ (v77 >> 3) ^ (*(v40 + 4 * (BYTE1(v47) ^ 0xACu)) - 31041545) ^ (32 * v78) ^ 0x8C8F348B, 9) ^ 0x4D6EE743;
  v80 = (v64 ^ 0xA901BA96) >> 25;
  v81 = (v64 ^ 0xA901BA96) >> 24;
  if (v80 >= 0x61)
  {
    v81 -= 194;
  }

  if (v80 <= 0x60)
  {
    v82 = 0;
  }

  else
  {
    v82 = 194;
  }

  HIDWORD(v84) = v79;
  LODWORD(v84) = v79;
  v83 = v84 >> 23;
  v85 = -1367921339 - 1529559353 * *(v34 + 4 * ((v81 + v82) ^ 6));
  v86 = *(v35 + 4 * ((v72 ^ 0x2040D599u) >> 16)) + 341949584;
  v87 = v86 ^ v85 ^ *(v41 + 4 * ((v84 >> 23) ^ 0x2Au)) ^ (v85 >> 1) ^ (v85 >> 3) ^ (32 * v86) ^ (*(v40 + 4 * (BYTE1(v76) ^ 0xC3u)) - 31041545);
  v88 = -1367921339 - 1529559353 * *(v34 + 4 * ((v72 ^ 0x2040D599u) >> 24));
  v89 = *(v35 + 4 * (BYTE2(v76) ^ 0x2Fu)) + 341949584;
  v90 = (*(v40 + 4 * (BYTE1(v83) ^ 0x5Au)) - 31041545) ^ v64 ^ 0x96 ^ *(v41 + 4 * (v64 ^ 0xE6u)) ^ v88 ^ v89 ^ (v88 >> 1) ^ (v88 >> 3) ^ (32 * v89);
  v91 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v76) ^ 0xB3));
  v92 = *(v35 + 4 * (BYTE2(v83) ^ 0xE9u)) + 341949584;
  v93 = v91 ^ v72 ^ 0x99 ^ v92 ^ (v91 >> 1) ^ (v91 >> 3) ^ (*(v40 + 4 * (BYTE1(v64) ^ 0x73u)) - 31041545) ^ (32 * v92) ^ *(v41 + 4 * (v72 ^ 0xE9u));
  v94 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v83) ^ 0x11));
  v95 = *(v35 + 4 * (BYTE2(v64) ^ 0xAu)) + 341949584;
  v96 = v94 ^ (v94 >> 3) ^ (v94 >> 1) ^ v95 ^ (32 * v95) ^ (*(v40 + 4 * (BYTE1(v72) ^ 0x1Cu)) - 31041545);
  v97 = v76;
  v98 = *(v41 + 4 * (v76 ^ 0x7Cu)) ^ __ROR4__(__ROR4__(v96, 17) ^ 0x4E8950D9, 15);
  v99 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v87) ^ 0x11));
  v100 = *(v35 + 4 * (BYTE2(v90) ^ 0x2Du)) + 341949584;
  v101 = v98 ^ v97;
  v102 = v101 ^ 0x285D3E26;
  v103 = v99 ^ v100 ^ (v99 >> 3) ^ (v99 >> 1) ^ (32 * v100) ^ (*(v40 + 4 * (BYTE1(v93) ^ 0x3Cu)) - 31041545) ^ *(v41 + 4 * (v101 ^ 0x56u));
  v104 = *(v35 + 4 * (BYTE2(v93) ^ 0xF9u));
  v105 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v90) ^ 7));
  v106 = v105 ^ (v105 >> 3) ^ (v105 >> 1) ^ (32 * (v104 + 341949584)) ^ (v104 - 2 * ((v104 + 341949584) & 0x2A9CDEAC ^ v104 & 4) + 1056873272);
  v107 = *(v40 + 4 * BYTE1(v102));
  v108 = (v107 ^ 0x97DB5B12) & (2 * (v107 & 0xC79A1813)) ^ v107 & 0xC79A1813;
  v109 = ((2 * (v107 ^ 0x17CF6B16)) ^ 0xA0AAE60A) & (v107 ^ 0x17CF6B16) ^ (2 * (v107 ^ 0x17CF6B16)) & 0xD0557304;
  v110 = (v109 ^ 0x6000) & (4 * v108) ^ v108;
  v111 = ((4 * (v109 ^ 0x50551105)) ^ 0x4155CC14) & (v109 ^ 0x50551105) ^ (4 * (v109 ^ 0x50551105)) & 0xD0557304;
  v112 = (v111 ^ 0x40554000) & (16 * v110) ^ v110;
  v113 = ((16 * (v111 ^ 0x90003301)) ^ 0x5573050) & (v111 ^ 0x90003301) ^ (16 * (v111 ^ 0x90003301)) & 0xD0557300;
  v114 = v112 ^ 0xD0557305 ^ (v113 ^ 0x553000) & (v112 << 8);
  v115 = (((4 * ((v114 << 16) & 0x10440000 ^ v114 ^ ((v114 << 16) ^ 0x13040000) & (((v113 ^ 0xD0004305) << 8) & 0x10550000 ^ (((v113 ^ 0xD0004305) << 8) ^ 0x15730000) & (v113 ^ 0xD0004305) ^ 0x40000))) ^ (2 * v107)) & 0x6D187FC8 ^ 0xC107C00) + (v107 ^ ((v107 ^ 0x42D03373) - 2058736798) ^ ((v107 ^ 0x41C7B578) - 2040681109) ^ ((v107 ^ 0x548D9E51) - 1827174844) ^ ((v107 ^ 0x6FFFFFB7) - 1469716570) ^ 0xEE9D809);
  v116 = v106 & 0x200000;
  if ((v115 & v106 & 0x200000) != 0)
  {
    v116 = -v116;
  }

  v117 = *(v41 + 4 * ((v87 ^ v83) ^ 0xB6u)) ^ (v87 ^ v83) ^ v106 & 0xFFDFFFFF ^ (v116 + v115);
  v118 = -1367921339 - 1529559353 * *(v34 + 4 * ((v93 ^ 0xFFF2F568) >> 24));
  v119 = *(v35 + 4 * (BYTE2(v98) ^ 0x56u)) + 341949584;
  v120 = v118 ^ v90 ^ v119 ^ (v118 >> 3) ^ (v118 >> 1) ^ (32 * v119) ^ (*(v40 + 4 * (BYTE1(v87) ^ 0xCAu)) - 31041545) ^ *(v41 + 4 * (v90 ^ 0x29u));
  v121 = -1367921339 - 1529559353 * *(v34 + 4 * HIBYTE(v102));
  v122 = *(v35 + 4 * (BYTE2(v87) ^ 0xD8u)) + 341949584;
  v123 = v121 ^ v93 ^ 0x68 ^ (v121 >> 1) ^ (v121 >> 3) ^ v122 ^ *(v41 + 4 * (v93 ^ 0x18u)) ^ (32 * v122) ^ (*(v40 + 4 * (BYTE1(v90) ^ 0xA1u)) - 31041545);
  v124 = v117 ^ 0x5E8D5151;
  v125 = ((v117 ^ 0x5E8D5151) >> 16);
  if (v125 >= 0x92)
  {
    v125 = ((v117 ^ 0x5E8D5151) >> 16) - 146;
  }

  v126 = HIWORD(v124) + 110;
  if (BYTE2(v124) < 0x92u)
  {
    v126 = HIWORD(v124);
  }

  if (v125)
  {
    v127 = 0;
  }

  else
  {
    v127 = v126;
  }

  v128 = BYTE2(v124) - v127;
  if (((v120 ^ 0xBB5D0D52) & 0x10) != 0)
  {
    v129 = -16;
  }

  else
  {
    v129 = 16;
  }

  v130 = v129 + (v120 ^ 0x52);
  v131 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v103) ^ 0x45));
  v132 = v131 ^ (*(v40 + 4 * (BYTE1(v120) ^ 0xC4u)) - 31041545) ^ (v131 >> 1) ^ (v131 >> 3) ^ *(v41 + 4 * (v123 ^ 0x1Fu));
  v133 = -1529559353 * *(v34 + 4 * HIBYTE(v124));
  v134 = *(v35 + 4 * (BYTE2(v120) ^ 0x56u)) + 341949584;
  v135 = v134 ^ (32 * v134) ^ ((v133 - 1367921339) >> 1) ^ ((v133 - 1367921339) >> 3) ^ (v133 - ((2 * (v133 - 1367921339)) & 0x8F5862CC) + 1982029483);
  v136 = *(v40 + 4 * (BYTE1(v123) ^ 0x10u)) - 31041545;
  v137 = v135 ^ 0xC7AC3166;
  if ((v135 & v136 & 0x10000) != 0)
  {
    v138 = -(v136 & 0x10000);
  }

  else
  {
    v138 = v136 & 0x10000;
  }

  v139 = v138 + v137;
  v140 = *(v40 + 4 * (BYTE1(v103) ^ 0x59u));
  v141 = (v140 ^ 0x87D39042) & (2 * (v140 & 0xC79A1813)) ^ v140 & 0xC79A1813;
  v142 = ((2 * (v140 ^ 0x83C3B046)) ^ 0x88B350AA) & (v140 ^ 0x83C3B046) ^ (2 * (v140 ^ 0x83C3B046)) & 0x4459A854;
  v143 = ((4 * (v142 ^ 0x4448A855)) ^ 0x1166A154) & (v142 ^ 0x4448A855) ^ (4 * (v142 ^ 0x4448A855)) & 0x4459A854;
  v144 = (v142 ^ 0x100000) & (4 * v141) ^ v141 ^ 0x4459A855 ^ (v143 ^ 0x40A050) & (16 * ((v142 ^ 0x100000) & (4 * v141) ^ v141));
  v145 = (16 * (v143 ^ 0x44190801)) & 0x4459A850 ^ 0x412805 ^ ((16 * (v143 ^ 0x44190801)) ^ 0x459A8550) & (v143 ^ 0x44190801);
  v146 = (v144 << 8) & 0x4459A800 ^ v144 ^ ((v144 << 8) ^ 0x59A85500) & v145;
  v147 = (((4 * ((v146 << 16) & 0x400000 ^ v146 ^ ((v146 << 16) ^ 0x8440000) & ((v145 << 8) & 0x4590000 ^ ((v145 << 8) ^ 0x19A80000) & v145 ^ 0x400000))) ^ (2 * v140)) & 0x6D187FC8 ^ 0xD101140) + (v140 ^ ((v140 ^ 0xD246A409) + 366787612) ^ ((v140 ^ 0x8BA7034F) + 1279073118) ^ ((v140 ^ 0x9E2BBD44) + 1504814423) ^ ((v140 ^ 0xFFAFFDEF) + 943056382) ^ 0xEE9D809);
  v148 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v120) ^ 0xBD));
  v149 = *(v35 + 4 * (BYTE2(v123) ^ 7u)) + 341949584;
  v150 = v148 ^ v149 ^ (v148 >> 1) ^ *(v41 + 4 * (v117 ^ 0x21u)) ^ (v148 >> 3) ^ (32 * v149);
  LOBYTE(v149) = v103 ^ v102;
  v151 = *(v35 + 4 * (BYTE2(v103) ^ 0x82u));
  v152 = v150 ^ v117 ^ 0x51 ^ v147;
  v153 = ((2 * (((v151 ^ 0x6E0036AC) + 439387451) ^ v151 ^ ((v151 ^ 0x51026ED4) + 624090435) ^ ((v151 ^ 0xB322BAF) + 1057134650) ^ ((v151 ^ 0x3FFF3FBE) + 198151209))) & 0x406211F2 ^ 0x210D2) + (v151 ^ ((v151 ^ 0x356B5918) - 1050940785) ^ ((v151 ^ 0xB4C8ED91) + 1090018824) ^ ((v151 ^ 0x7597069F) - 2119715574) ^ ((v151 ^ 0xFFFBFE7F) + 197873130) ^ 0x2BFE4490);
  v154 = v130 ^ 0x355DF7CB ^ *(v41 + 4 * (v130 ^ 0x60u));
  v155 = -1529559353 * *(v34 + 4 * (HIBYTE(v123) ^ 2));
  v156 = ((v155 - 1367921339) >> 3) ^ ((v155 - 1367921339) >> 1) ^ (v155 - ((2 * (v155 - 1367921339)) & 0xFAD0E418) + 736075601) ^ v153 ^ (*(v40 + 4 * BYTE1(v124)) - 31041545) ^ (32 * v153) ^ 0x7D68720C;
  LODWORD(v157) = __ROR4__(v149 ^ *(v41 + 4 * (v149 ^ 0x4Au)) ^ v136 & 0xFFFEFFFF ^ 0x487AC4FC ^ v139, 16);
  v158 = (v156 + v154 - 2 * (v156 & v154)) ^ 0x31BD6BA1;
  v159 = *(v35 + 4 * (v128 ^ 0xBu)) + 341949584;
  v160 = v132 ^ v159 ^ (32 * v159);
  v161 = v132 ^ v159 ^ ~(32 * v159);
  v162 = *(v40 + 4 * (BYTE1(v152) ^ 0x32u));
  v163 = (v162 ^ 0x87DB964A) & (2 * (v162 & 0xC79A1813)) ^ v162 & 0xC79A1813;
  v164 = ((2 * (v162 ^ 0x89FBA668)) ^ 0x9CC37CF6) & (v162 ^ 0x89FBA668) ^ (2 * (v162 ^ 0x89FBA668)) & 0x4E61BE7A;
  v165 = (v164 ^ 0xC402050) & (4 * v163) ^ v163;
  v166 = ((4 * (v164 ^ 0x42208209)) ^ 0x3986F9EC) & (v164 ^ 0x42208209) ^ (4 * (v164 ^ 0x42208209)) & 0x4E61BE78;
  v167 = (v166 ^ 0x800B860) & (16 * v165) ^ v165;
  v168 = ((16 * (v166 ^ 0x46610613)) ^ 0xE61BE7B0) & (v166 ^ 0x46610613) ^ (16 * (v166 ^ 0x46610613)) & 0x4E61BE70;
  v169 = v167 ^ 0x4E61BE7B ^ (v168 ^ 0x4601A600) & (v167 << 8);
  v170 = (((4 * ((v169 << 16) & 0xA400000 ^ v169 ^ ((v169 << 16) ^ 0x1A420000) & (((v168 ^ 0x860184B) << 8) & 0xE610000 ^ 0xA400000 ^ (((v168 ^ 0x860184B) << 8) ^ 0x21BE0000) & (v168 ^ 0x860184B)))) ^ (2 * v162)) & 0x6D187FC8 ^ 0xD1049C8) + (v162 ^ ((v162 ^ 0x4ED891BA) - 1992128087) ^ ((v162 ^ 0x810411BB) + 1184762282) ^ ((v162 ^ 0xC56B013) - 875780094) ^ ((v162 ^ 0xFBEFD7FF) + 1014353902) ^ 0xEE9D809);
  LODWORD(v157) = v157 ^ 0xB6BCFDCA;
  HIDWORD(v157) = v157;
  v171 = v157 >> 16;
  v172 = -1367921339 - 1529559353 * *(v34 + 4 * HIBYTE(v161));
  v173 = *(v35 + 4 * ((v171 ^ 0x80A3A64u) >> 16)) + 341949584;
  v174 = v173 ^ v172 ^ (v172 >> 3) ^ (v172 >> 1) ^ (32 * v173) ^ *(v41 + 4 * (v158 ^ 0x70u)) ^ v158 ^ v170;
  v175 = *(v35 + 4 * (BYTE2(v152) ^ 0x59u)) + 341949584;
  v176 = v175 ^ (v160 ^ v123) ^ (32 * v175) ^ (*(v40 + 4 * (BYTE1(v158) ^ 0xC9u)) - 31041545) ^ *(v41 + 4 * ((v160 ^ v123) ^ 0x62u));
  v177 = -1367921339 - 1529559353 * *(v34 + 4 * ((v171 ^ 0x80A3A64u) >> 24));
  v178 = v176 ^ v177 ^ (v177 >> 1) ^ (v177 >> 3);
  v179 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v152) ^ 0x36));
  v180 = *(v35 + 4 * (BYTE2(v158) ^ 0xBu)) + 341949584;
  v181 = v179 ^ v180 ^ BYTE2(v157) ^ 0x64 ^ *(v41 + 4 * (BYTE2(v157) ^ 0x14u)) ^ (v179 >> 1) ^ (v179 >> 3) ^ (32 * v180) ^ (*(v40 + 4 * (BYTE1(v160) ^ 0x79u)) - 31041545);
  v182 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v158) ^ 6));
  v183 = *(v35 + 4 * (BYTE2(v160) ^ 0x15u)) + 341949584;
  v184 = v183 ^ v182 ^ (v182 >> 3) ^ (v182 >> 1) ^ (32 * v183) ^ (*(v40 + 4 * (BYTE3(v157) ^ 0xF3u)) - 31041545) ^ *(v41 + 4 * (v152 ^ 0x39u));
  v185 = v184 ^ v152;
  v186 = ((v184 ^ v152) ^ 2) - ((2 * v185) & 0xE0);
  v187 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v174) ^ 0x15));
  v188 = *(v35 + 4 * (BYTE2(v178) ^ 0x73u)) + 341949584;
  v189 = v187 ^ v188 ^ (v187 >> 3) ^ (v187 >> 1) ^ (32 * v188) ^ (*(v40 + 4 * (((v181 ^ 0x9D6D) >> 8) - (((v181 ^ 0x9E949D6D) >> 7) & 0x192) + 201)) - 31041545) ^ *(v41 + 4 * (v186 + 112));
  v190 = (v185 & 0xE9 ^ v189 & 0x967AEDE9 ^ 0x69851236) & (v189 & 0x69851216 ^ v185 & 0x16 ^ 0x3DD164F4) | (v185 & 0xE9 ^ v189 & 0x967AEDE9) & 0x822A8909;
  v191 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v178) ^ 0x9E));
  v192 = v191 ^ (*(v40 + 4 * (BYTE1(v184) ^ 0x76u)) - 31041545) ^ (v191 >> 1) ^ (v191 >> 3) ^ *(v41 + 4 * (v174 ^ 0x4Au));
  v193 = *(v35 + 4 * (BYTE2(v181) ^ 0x9Fu)) + 341949584;
  v194 = v192 ^ v193 ^ (32 * v193);
  v195 = BYTE2(v184) ^ 0xC1;
  v196 = HIBYTE(v184) ^ 0xAA;
  v197 = -1367921339 - 1529559353 * *(v34 + 4 * ((v181 ^ 0x9E949D6D) >> 24));
  v198 = *(v35 + 4 * v195) + 341949584;
  v199 = v198 ^ v178 ^ v197 ^ (v197 >> 3) ^ (v197 >> 1) ^ (32 * v198) ^ (*(v40 + 4 * (BYTE1(v174) ^ 0xE7u)) - 31041545) ^ *(v41 + 4 * (v178 ^ 0x1Au));
  v200 = *(v35 + 4 * (BYTE2(v174) ^ 0x7Cu));
  v201 = -1367921339 - 1529559353 * *(v34 + 4 * v196);
  v202 = (*(v40 + 4 * (BYTE1(v178) ^ 0x11u)) - 31041545) ^ (32 * (v200 + 341949584)) ^ v201 ^ (v201 >> 1) ^ (v201 >> 3) ^ (v200 - ((2 * (v200 + 341949584)) & 0x2428BDFE) - 1502209137) ^ 0x92145EFF;
  v203 = *(v41 + 4 * ((v181 ^ 0x6D) + ((2 * v181) & 0xE0 ^ 0xFFFFFF3F) + 113)) ^ v181 ^ 0x355DF7B6;
  v204 = (-v203 ^ (v203 - ((2 * v203) & 0x249CDE86) + 307130179) ^ 0x124E6F43 ^ (v202 - (v203 ^ v202))) + v202;
  v205 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v190) ^ 0x63));
  v206 = *(v35 + 4 * (BYTE2(v194) ^ 0x18u)) + 341949584;
  v207 = v204;
  v208 = v206 ^ v205 ^ (v205 >> 3) ^ (v205 >> 1) ^ (32 * v206) ^ (*(v40 + 4 * (BYTE1(v199) ^ 0x9Au)) - 31041545) ^ *(v41 + 4 * (v204 ^ 0x1Bu));
  v209 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v194) ^ 0xE2));
  v210 = *(v35 + 4 * (BYTE2(v199) ^ 0x32u)) + 341949584;
  v211 = v210 ^ v209 ^ v190 ^ (v209 >> 1) ^ *(v41 + 4 * (v190 ^ 0xF4u)) ^ (v209 >> 3) ^ (32 * v210) ^ (*(v40 + 4 * (BYTE1(v204) ^ 0x6Cu)) - 31041545);
  v212 = -1367921339 - 1529559353 * *(v34 + 4 * ((v199 ^ 0x4A3953CDu) >> 24));
  v213 = *(v35 + 4 * (BYTE2(v204) ^ 0x1Bu)) + 341949584;
  v214 = v212 ^ (v194 ^ v174) ^ v213 ^ (v212 >> 3) ^ (v212 >> 1) ^ (32 * v213) ^ (*(v40 + 4 * (BYTE1(v190) ^ 0xDFu)) - 31041545) ^ *(v41 + 4 * ((v194 ^ v174) ^ 0xDCu));
  v215 = v199 ^ 0xCD;
  v216 = -v215 ^ (112 - (v199 ^ 0xBD)) ^ 0xC7F0DC2B ^ (v215 - ((2 * (v199 ^ 0x4A3953CD)) & 0x56) - 940516309);
  v217 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v204) ^ 0xE3));
  v218 = *(v35 + 4 * (BYTE2(v190) ^ 0x5Fu)) + 341949584;
  v219 = v217 ^ v215 ^ (v217 >> 3) ^ (v217 >> 1) ^ v218 ^ *(v41 + 4 * (v216 + 112)) ^ (32 * v218) ^ (*(v40 + 4 * (BYTE1(v194) ^ 0xB9u)) - 31041545);
  v220 = v219 ^ 0x5B2E375B;
  v221 = v219 ^ 0x2B;
  v222 = *(v35 + 4 * (BYTE2(v214) ^ 0xDDu)) + 341949584;
  v223 = 32 * v222;
  v224 = (32 * v222) & 0x20000;
  if ((v224 & v222) != 0)
  {
    v224 = -v224;
  }

  v225 = v224 + v222;
  v226 = v208 ^ v207;
  v227 = v208 ^ v207 ^ 0x13FCF8ED;
  v228 = *(v41 + 4 * (v226 ^ 0x9Du)) ^ v227 ^ v223 & 0xFFFDFFFF;
  v229 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v211) ^ 0xC7));
  v230 = v228 ^ (*(v40 + 4 * (BYTE1(v220) - ((v220 >> 7) & 0x192) + 201)) - 31041545) ^ v229 ^ (v229 >> 1) ^ (v229 >> 3) ^ v225;
  v231 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v214) ^ 0xBB));
  v232 = *(v35 + 4 * BYTE2(v220)) + 341949584;
  v233 = v232 ^ v211 ^ v231 ^ (v231 >> 1) ^ *(v41 + 4 * (v211 ^ 0xB8u)) ^ (v231 >> 3) ^ (32 * v232) ^ (*(v40 + 4 * (BYTE1(v208) ^ 0x31u)) - 31041545);
  v234 = -1367921339 - 1529559353 * *(v34 + 4 * HIBYTE(v227));
  v235 = *(v35 + 4 * (BYTE2(v211) ^ 0x5Au)) + 341949584;
  LODWORD(v236) = __ROR4__(*(v41 + 4 * v221) ^ v235 ^ v234 ^ (v234 >> 1) ^ (v234 >> 3) ^ (32 * v235) ^ (*(v40 + 4 * ((-(BYTE1(v214) ^ 0xDB) ^ (201 - (BYTE1(v214) ^ 0x12)) ^ 0x7DC983F8 ^ ((BYTE1(v214) ^ 0xDB) - 2 * ((BYTE1(v214) ^ 0xDB) & 0xFC ^ (v214 >> 8) & 4) + 2110358520)) + 201)) - 31041545) ^ v220 ^ 0xFA035B62, 25);
  v237 = *(v35 + 4 * (BYTE2(v208) ^ 0xF7u)) + 341949584;
  v238 = -1367921339 - 1529559353 * *(v34 + 4 * HIBYTE(v220));
  v239 = v237 ^ v214 ^ (32 * v237) ^ *(v41 + 4 * (v214 ^ 0x6Bu)) ^ (*(v40 + 4 * ~(v211 >> 8)) - 31041545) ^ v238 ^ (v238 >> 1) ^ (v238 >> 3);
  v240 = *(&off_1010A0B50 + v8 - 8030) - 1001636059;
  v241 = *(&off_1010A0B50 + v8 - 8769) - 1133180630;
  v242 = *(&off_1010A0B50 + v8 - 9177) - 1365632302;
  v243 = *(&off_1010A0B50 + v8 - 8158) - 21874011;
  v244 = *&v241[4 * (BYTE2(v233) ^ 0x6B)];
  v245 = ((BYTE2(v233) ^ 0xE8) + 102443184) ^ BYTE2(v233) ^ 0xE8;
  v246 = (v244 ^ (v245 - ((v245 - ((2 * v245) & 0x80240A2) - 586812335) ^ v244)) ^ 0xDD05F451 ^ (586812335 - (((v244 ^ 0x6710C8FD) - 1729153277) ^ ((v244 ^ 0xAF00E00) - 183504384) ^ ((v244 ^ 0xB0E532AC) + 1327156564)))) + v245;
  LODWORD(v236) = v236 ^ 0x22559806;
  HIDWORD(v236) = v236;
  v247 = v236 >> 7;
  v248 = *&v242[4 * (BYTE1(v239) ^ 0x94)];
  v249 = BYTE2(v239) ^ 0x73 ^ v458 ^ 0x8CC08657 ^ ((BYTE2(v239) ^ 0x73) + 102443184) ^ *&v240[4 * (HIBYTE(v233) ^ 2)] ^ *&v241[4 * (BYTE2(v239) ^ 0xF0)] ^ *&v243[4 * (v230 ^ 0xF8)] ^ *&v242[4 * BYTE1(v247)] ^ (*&v242[4 * BYTE1(v247)] >> 3) & 0x507C997;
  v250 = BYTE2(v247) ^ 0x28;
  v251 = *&v242[4 * (((v230 ^ 0x980A845) >> (v456 & 8) >> (v456 & 8 ^ 8)) ^ 0xD0)];
  v252 = v458 ^ (2 * v250 - 2 * ((v250 + 176) & v250) + 102443184) ^ *&v240[4 * (HIBYTE(v239) ^ 0x6F)] ^ v251 ^ *&v241[4 * ((v250 & 0xAC | HIWORD(v247) & 0x53) ^ 0x83)] ^ *&v243[4 * (v233 ^ 0xDB)] ^ (v251 >> 3) & 0x507C997 ^ 0x1C64CFE9;
  v253 = *&v240[4 * (HIBYTE(v230) ^ 0x8F)] ^ v248 ^ (v248 >> 3) & 0x507C997 ^ v246 ^ *&v243[4 * ((v236 >> 7) ^ 0xBA)] ^ 0x45D62BCC;
  v254 = *&v242[4 * (BYTE1(v233) ^ 0x1D)];
  v255 = v253 ^ v249;
  v256 = v255 ^ *&v240[4 * (HIBYTE(v247) ^ 0x88)] ^ BYTE2(v230) ^ 0x80 ^ ((BYTE2(v230) ^ 0x80) + 102443184) ^ *&v241[4 * (BYTE2(v230) ^ 3)] ^ v254 ^ *&v243[4 * (v239 ^ 0xF)] ^ (v254 >> 3) & 0x507C997;
  v257 = v255 ^ v458 ^ 0x8CC08657;
  v258 = ((v257 ^ 0x3C2DC5FE ^ v256) & 0xB6B5BA79 ^ 0x63C0773) & ((v257 ^ 0x3C2DC5FE ^ v256) & 0x494A4586 ^ 0xFEF5BA7B) | (v257 ^ 0x3C2DC5FE ^ v256) & 0x49424084;
  v259 = v252 ^ v257;
  v260 = -1367921339 - 1529559353 * *(v34 + 4 * ((v256 ^ 0x9EFA28DD) >> 24));
  v261 = v252 ^ v249 ^ v256;
  v262 = v261 ^ 0x69;
  v263 = *(v35 + 4 * (((v252 ^ v257) >> 16) ^ 0x22u));
  v264 = v260 ^ (*(v40 + 4 * (((v261 ^ 0x2B69) >> 8) ^ 0xB9u)) - 31041545) ^ (32 * (v263 + 341949584)) ^ (((v260 >> (v457 & 2) >> (v457 & 2 ^ 2)) ^ v260) >> 1) ^ (v263 - 2 * ((v263 + 341949584) & 0x5D5E267F ^ v263 & 3) - 239082740) ^ 0xDD5E267C;
  v265 = v258 ^ 0xDCCE060A;
  v266 = *(v41 + 4 * (v258 ^ 0x7Au)) ^ v258 ^ 0x355DF7D1;
  v267 = v266 + v264 - 2 * (v266 & v264);
  v268 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v259) ^ 0x16));
  v269 = *(v35 + 4 * (((v261 ^ 0x5F02B69) >> 16) ^ 0x4Fu)) + 341949584;
  v270 = v268 ^ (v268 >> 3) ^ (v268 >> 1) ^ v269 ^ (32 * v269) ^ (*(v40 + 4 * (((v258 ^ 0x60A) >> 8) - ((v258 >> 7) & 0x192) + 201)) - 31041545) ^ *(v41 + 4 * ((-(v256 ^ 0xDD) ^ (112 - (v256 ^ 0xAD)) ^ ((v256 ^ 0xDD) + 405136375 + (~(2 * (v256 ^ 0x9EFA28DD)) | 0xFFFFFE13)) ^ 0x1825E3F6) + 112));
  v271 = *(v35 + 4 * BYTE2(v265)) + 341949584;
  v272 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v261) ^ 0xC6));
  v273 = v271 ^ v259 ^ (32 * v271) ^ (*(v40 + 4 * (((v256 ^ 0x28DD) >> 8) ^ 0xC9u)) - 31041545) ^ v272 ^ (v272 >> 1) ^ (v272 >> 3) ^ *(v41 + 4 * (v259 ^ 0x2Cu));
  v274 = -1367921339 - 1529559353 * *(v34 + 4 * HIBYTE(v265));
  v275 = *(v35 + 4 * ((v256 ^ 0x9EFA28DD) >> 16)) + 341949584;
  v276 = v274 ^ v262 ^ v275 ^ (v274 >> 3) ^ (v274 >> 1) ^ (32 * v275) ^ *(v41 + 4 * (v262 ^ 0x51u)) ^ (*(v40 + 4 * (BYTE1(v259) ^ 0xC7u)) - 31041545);
  v277 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v267) ^ 0x5A));
  v278 = v277 & 0x10;
  if (((v277 >> 2) & v278) != 0)
  {
    v278 = -v278;
  }

  v279 = (v278 + (v277 >> 2)) ^ v277 & 0xFFFFFFEF;
  v280 = v276 ^ 0xD0BB5842;
  v281 = *(v35 + 4 * ((((BYTE2(v270) ^ 0x35) - (BYTE2(v270) ^ 0x3E)) ^ 0xFFFFFFFE) + (BYTE2(v270) ^ 0x35))) + 341949584;
  v282 = v281 ^ v277 ^ *(v41 + 4 * (v276 ^ 0x32u)) ^ (32 * v281) ^ (*(v40 + 4 * (BYTE1(v273) ^ 0xD5u)) - 31041545) ^ v276 ^ 0x42 ^ (v279 >> 1);
  v283 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v270) ^ 0x70));
  v284 = *(v35 + 4 * (BYTE2(v273) ^ 0x28u)) + 341949584;
  v285 = v283 ^ v267 ^ v284 ^ (v283 >> 3) ^ (v283 >> 1) ^ (32 * v284) ^ (*(v40 + 4 * (BYTE1(v280) ^ 0xC9u)) - 31041545) ^ *(v41 + 4 * (v267 ^ 0x37u));
  v286 = -1367921339 - 1529559353 * *(v34 + 4 * ((v273 ^ 0x48231C19u) >> 24));
  v287 = (v270 ^ v256 ^ 0xDD);
  v288 = v287 ^ 0x4C;
  v289 = v286 ^ v287 ^ (v286 >> 3) ^ (v286 >> 1);
  v290 = *(v35 + 4 * BYTE2(v280)) + 341949584;
  v291 = v289 ^ v290 ^ *(v41 + 4 * v288) ^ (32 * v290) ^ (*(v40 + 4 * (BYTE1(v267) ^ 0xFCu)) - 31041545);
  v292 = *(v35 + 4 * (BYTE2(v267) ^ 0x86u)) + 341949584;
  v293 = -1367921339 - 1529559353 * *(v34 + 4 * HIBYTE(v280));
  v294 = v293 ^ ((v273 ^ 0x19) - ((2 * (v273 ^ 0x48231C19)) & 0x174) - 1532438342) ^ v292 ^ *(v41 + 4 * (v273 ^ 0x69u)) ^ (v293 >> 1) ^ (v293 >> 3) ^ (*(v40 + 4 * (BYTE1(v270) ^ 0xC9u)) - 31041545) ^ (32 * v292);
  v295 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v282) ^ 0x8B));
  v296 = *(v35 + 4 * (BYTE2(v285) ^ 0x1Bu)) + 341949584;
  v297 = v296 ^ v295 ^ (v295 >> 1) ^ *(v41 + 4 * ((v293 ^ ((v273 ^ 0x19) - ((2 * (v273 ^ 0x19)) & 0x74) - 70) ^ v292 ^ *(v41 + 4 * (v273 ^ 0x69u)) ^ (v293 >> 1) ^ (v293 >> 3) ^ (*(v40 + 4 * (BYTE1(v270) ^ 0xC9u)) - 9) ^ (32 * v292)) ^ 0xF1u)) ^ (v295 >> 3) ^ (32 * v296) ^ (*(v40 + 4 * (BYTE1(v291) ^ 0xCDu)) - 31041545);
  v298 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v285) ^ 0xBE));
  v299 = *(v35 + 4 * (BYTE2(v291) ^ 0x4Du)) + 341949584;
  v300 = v298 ^ v282 ^ v299 ^ (v298 >> 3) ^ (v298 >> 1) ^ (32 * v299) ^ (*(v40 + 4 * (BYTE1(v294) ^ 0xDBu)) - 31041545) ^ *(v41 + 4 * (v282 ^ 0xFu));
  v301 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v291) ^ 0xF5));
  v302 = *(v35 + 4 * (BYTE2(v294) ^ 0xA4u)) + 341949584;
  v303 = *(v41 + 4 * (v285 ^ 0xE3u)) ^ v285 ^ v302 ^ v301 ^ (v301 >> 1) ^ (v301 >> 3) ^ (32 * v302) ^ (*(v40 + 4 * (((v282 ^ 0x8D94667F) >> (BYTE2(v282) & 8) >> (BYTE2(v282) & 8 ^ 8)) ^ 0xC9u)) - 31041545);
  v304 = *(v40 + 4 * (BYTE1(v285) ^ 0x49u));
  v305 = (v304 ^ 0x871A9A13) & (2 * (v304 & 0xC79A1813)) ^ v304 & 0xC79A1813;
  v306 = ((2 * (v304 ^ 0x861ABA35)) ^ 0x8301444C) & (v304 ^ 0x861ABA35) ^ (2 * (v304 ^ 0x861ABA35)) & 0x4180A226;
  v307 = (v306 ^ 4) & (4 * v305) ^ v305;
  v308 = ((4 * (v306 ^ 0x4080A222)) ^ 0x6028898) & (v306 ^ 0x4080A222) ^ (4 * (v306 ^ 0x4080A222)) & 0x4180A220;
  v309 = (v308 ^ 0x8000) & (16 * v307) ^ v307;
  v310 = ((16 * (v308 ^ 0x41802226)) ^ 0x180A2260) & (v308 ^ 0x41802226) ^ (16 * (v308 ^ 0x41802226)) & 0x4180A220;
  v311 = v309 ^ 0x4180A226 ^ (v310 ^ 0x2200) & (v309 << 8);
  v312 = (v304 ^ (2 * ((v311 << 16) & 0x41800000 ^ v311 ^ ((v311 << 16) ^ 0x22260000) & (((v310 ^ 0x41808006) << 8) & 0x41800000 ^ 0x41000000 ^ (((v310 ^ 0x41808006) << 8) ^ 0xA20000) & (v310 ^ 0x41808006)))) ^ 0x721763BB) + ((2 * (((v304 ^ 0xA201F481) + 1704717460) ^ v304 ^ ((v304 ^ 0x11C6DA6F) + 1448919678) ^ ((v304 ^ 0x32DD36FE) + 893857517) ^ ((v304 ^ 0x397FFFFC) + 1055254512))) & 0x6D187FC8 ^ 0x60084FC8);
  v313 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v294) ^ 0xAB));
  v314 = *(v35 + 4 * (BYTE2(v282) ^ 0x9Fu)) + 341949584;
  v315 = v313 ^ v291 ^ v314 ^ (v313 >> 1) ^ *(v41 + 4 * (v291 ^ 0xAEu)) ^ (v313 >> 3) ^ (32 * v314) ^ v312;
  v316 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v297) ^ 0x7D));
  v317 = *(v35 + 4 * ((v300 ^ 0x37C4E0FDu) >> 16)) + 341949584;
  LOBYTE(v314) = v315;
  v318 = v316 ^ v317 ^ (v316 >> 3) ^ (v316 >> 1) ^ (32 * v317) ^ (*(v40 + 4 * (BYTE1(v303) ^ 0x47u)) - 31041545) ^ *(v41 + 4 * (v315 ^ 0xD2u));
  v319 = -1367921339 - 1529559353 * *(v34 + 4 * ((v300 ^ 0x37C4E0FDu) >> 24));
  v320 = (v297 ^ v294);
  v321 = *(v35 + 4 * (BYTE2(v303) ^ 0x87u)) + 341949584;
  v322 = v320 ^ v319 ^ (v319 >> 3) ^ (v319 >> 1) ^ v321 ^ (32 * v321) ^ 0xA4A8D8F4 ^ (*(v40 + 4 * (BYTE1(v315) ^ 0x6Cu)) - 31041545);
  v323 = *(v41 + 4 * (v320 ^ 0x3Eu));
  v324 = (v323 ^ (1846202527 - (((v323 ^ 0x5CD6038F) - 1557529487) ^ ((v323 ^ 0x3215596) - 52516246) ^ ((v323 ^ 0xCE027978) + 838698632))) ^ 0x91F52F61 ^ (v322 - ((v322 - ((2 * v322) & 0x23EA5EC2) - 1846202527) ^ v323))) + v322;
  v325 = BYTE2(v315) ^ 0x92;
  v326 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v303) ^ 0x11));
  v327 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v315) ^ 0xD5));
  v328 = *(v35 + 4 * (BYTE2(v297) ^ 0xC6u)) + 341949584;
  v329 = v327 ^ v303 ^ v328 ^ (v327 >> 1) ^ *(v41 + 4 * (v303 ^ 0xCDu)) ^ (v327 >> 3) ^ (32 * v328) ^ (*(v40 + 4 * (BYTE1(v300) ^ 0x29u)) - 31041545);
  v330 = *(v35 + 4 * (BYTE2(v324) ^ 0x89u)) + 341949584;
  v331 = *(v35 + 4 * v325) + 341949584;
  v332 = (*(v40 + 4 * (BYTE1(v297) ^ 0x21u)) - 31041545) ^ v300 ^ 0xFD ^ v326 ^ (v326 >> 1) ^ (v326 >> 3) ^ *(v41 + 4 * (v300 ^ 0x8Du)) ^ v331;
  v333 = v332 ^ (32 * v331);
  v334 = v329 ^ 0xE6C743E5;
  v335 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v318) ^ 4));
  v336 = v335 ^ v330 ^ (v335 >> 3) ^ (v335 >> 1) ^ (*(v40 + 4 * (BYTE1(v333) ^ 0x75u)) - 31041545) ^ *(v41 + 4 * (v329 ^ 0x95u)) ^ v329 ^ 0xE5 ^ (((2 * v330) << ((2 * v330) & 4)) << (((((2 * v330) & 4) - ((2 * v330) & 4 ^ 4)) ^ 0xF8) + ((2 * v330) & 4u)));
  LOBYTE(v335) = v318 ^ v314;
  v337 = (v318 ^ v314) ^ 0x85;
  v338 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v324) ^ 0x5C));
  v339 = *(v35 + 4 * (BYTE2(v333) ^ 0x1Bu)) + 341949584;
  v340 = v338 ^ (v338 >> 3) ^ (v338 >> 1) ^ v339 ^ (32 * v339) ^ (*(v40 + 4 * (BYTE1(v334) ^ 0xC9u)) - 31041545) ^ *(v41 + 4 * v337);
  v341 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v333) ^ 0x9F));
  v342 = *(v35 + 4 * BYTE2(v334)) + 341949584;
  v343 = v341 ^ v324 ^ (*(v40 + 4 * (BYTE1(v318) ^ 0x57u)) - 31041545) ^ v342 ^ (32 * v342) ^ *(v41 + 4 * (v324 ^ 0x43u)) ^ (((v341 & 0xA57D17CC ^ 0xBF455E56 ^ (v341 >> 2) & 0x257D17CC) & ~((v341 >> 2) & 0x1A82E832 ^ v341 & 0x5A82E832) | ((v341 >> 2) & 0x1A82E832 ^ v341 & 0x5A82E832) & 0x4082A020) >> 1);
  v344 = v333 ^ 0x2A040E1;
  v345 = __PAIR64__(v332, v344) >> 5;
  HIDWORD(v346) = v345 ^ 0x31C916E;
  LODWORD(v346) = v345 ^ 0x55555555;
  v347 = -1367921339 - 1529559353 * *(v34 + 4 * HIBYTE(v334));
  v348 = v347 ^ v344 ^ (v347 >> 3) ^ (v347 >> 1);
  v349 = *(v35 + 4 * (BYTE2(v318) ^ 0xDu)) + 341949584;
  v350 = v348 ^ v349 ^ *(v41 + 4 * ((v346 >> 27) ^ 0x61326D76)) ^ (32 * v349) ^ (*(v40 + 4 * (BYTE1(v324) ^ 0x2Du)) - 31041545);
  v351 = *(v41 + 4 * (v350 ^ 0x55u));
  v352 = v350 ^ 0xA4A8D89F;
  v353 = (1846202527 - (((v351 ^ 0x3A75522F) - 980767279) ^ ((v351 ^ 0xC070B839) + 1066354631) ^ ((v351 ^ 0x6BF0C577) - 1810941303))) ^ v351 ^ (v352 - (v351 ^ v350 ^ 0x355DF7FE));
  v354 = ((2 * ((v353 ^ 0x208818FE) & (v350 ^ 0x24A8D89F) ^ v350 & 0x9F)) ^ 0x4050213E) + ((v352 - ((2 * v352) & 0x4940B082) + 1039170369) ^ 0xAC055420 ^ v353);
  v355 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v336) ^ 0x34));
  v356 = *(v35 + 4 * (BYTE2(v340) ^ 0xF2u)) + 341949584;
  v357 = v355 ^ v356 ^ (v355 >> 3) ^ (v355 >> 1) ^ (32 * v356) ^ (*(v40 + 4 * (BYTE1(v343) ^ 0x1Cu)) - 31041545) ^ v354;
  v358 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v340) ^ 0x97));
  v359 = *(v35 + 4 * (BYTE2(v343) ^ 0xEu)) + 341949584;
  v360 = v359 ^ v336 ^ v358 ^ (v358 >> 1) ^ *(v41 + 4 * (v336 ^ 0x22u)) ^ (v358 >> 3) ^ (32 * v359) ^ (*(v40 + 4 * (BYTE1(v350) ^ 0x98u)) - 31041545);
  v361 = *(v35 + 4 * (BYTE2(v350) ^ 0xE5u)) + 341949584;
  v362 = (v340 ^ v335);
  v363 = v361 ^ v362 ^ (32 * v361);
  v364 = *(v41 + 4 * (v362 ^ 0xC0u)) ^ (*(v40 + 4 * (BYTE1(v336) ^ 0xBDu)) - 31041545);
  v365 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v343) ^ 0xE5));
  v366 = v363 ^ v364 ^ v365 ^ (v365 >> 1) ^ (v365 >> 3);
  v367 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v350) ^ 0x2F));
  v368 = *(v35 + 4 * (BYTE2(v336) ^ 0xDu)) + 341949584;
  v369 = *(v41 + 4 * (v343 ^ 0x68u)) ^ v343 ^ v368 ^ v367 ^ (v367 >> 1) ^ (v367 >> 3) ^ (32 * v368) ^ (*(v40 + 4 * (BYTE1(v340) ^ 0xCEu)) - 31041545);
  v370 = v357 ^ 0x679EC0DB;
  v371 = -1529559353 * *(v34 + 4 * ((v357 ^ 0x679EC0DBu) >> 24));
  v372 = *(v35 + 4 * (BYTE2(v360) ^ 0x84u)) + 341949584;
  v373 = (*(v40 + 4 * BYTE1(v366)) - 31041545) ^ ((v371 - 1367921339) >> 1) ^ ((v371 - 1367921339) >> 3) ^ v372 ^ (32 * v372) ^ (v371 - ((2 * (v371 - 1367921339)) & 0x3231DF5C) - 946856717) ^ 0x1918EFAE;
  v374 = *(v41 + 4 * (v369 ^ 0x14u));
  v375 = v374 ^ v369 ^ 0x355DF7BF;
  if ((v373 & 0x1000000 & ~v374) != 0)
  {
    v376 = -(v373 & 0x1000000);
  }

  else
  {
    v376 = v373 & 0x1000000;
  }

  v377 = (v376 + v375) ^ v373 & 0xFEFFFFFF;
  v378 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v360) ^ 6));
  v379 = *(v35 + 4 * (BYTE2(v366) ^ 0x12u)) + 341949584;
  v380 = v378 ^ v379 ^ (v378 >> 1) ^ v357 ^ 0xDB ^ (v378 >> 3) ^ (32 * v379) ^ *(v41 + 4 * (v357 ^ 0xABu)) ^ (*(v40 + 4 * (BYTE1(v369) ^ 0x8Cu)) - 31041545);
  v381 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v366) ^ 0xD5));
  v382 = *(v35 + 4 * (BYTE2(v369) ^ 0x6Bu)) + 341949584;
  v383 = v381 ^ v360 ^ v382 ^ (v381 >> 1) ^ *(v41 + 4 * (v360 ^ 0x9Cu)) ^ (v381 >> 3) ^ (32 * v382) ^ (*(v40 + 4 * BYTE1(v370)) - 31041545);
  v384 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v369) ^ 0xA0));
  v385 = *(v35 + 4 * (BYTE2(v370) ^ 0xBu)) + 341949584;
  v386 = v384 ^ v366 ^ v385 ^ (v384 >> 3) ^ (v384 >> 1) ^ (*(v40 + 4 * (BYTE1(v360) ^ 0x37u)) - 31041545) ^ (32 * v385) ^ *(v41 + 4 * (v366 ^ 4u));
  v387 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v377) ^ 0x77));
  v388 = *(v35 + 4 * (BYTE2(v380) ^ 0x8Bu)) + 341949584;
  v389 = v387 ^ v388 ^ (v387 >> 1) ^ (32 * v388) ^ (v387 >> 3);
  v390 = v386 ^ 0x3A814468;
  v391 = v389 ^ (*(v40 + 4 * (BYTE1(v383) ^ 0xABu)) - 31041545) ^ *(v41 + 4 * (v386 ^ 0x18u));
  v392 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v380) ^ 0x59));
  v393 = *(v35 + 4 * (BYTE2(v383) ^ 0x76u)) + 341949584;
  v394 = v377;
  v395 = *(v41 + 4 * (v377 ^ 0x77u)) ^ __ROR4__(__ROR4__(v393 ^ v392 ^ (v392 >> 3) ^ (v392 >> 1) ^ (32 * v393) ^ (*(v40 + 4 * BYTE1(v390)) - 31041545), 19) ^ 0x9E8C54FC, 13);
  v396 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v383) ^ 0xCE));
  v397 = *(v35 + 4 * BYTE2(v390)) + 341949584;
  v398 = *(v41 + 4 * (v380 ^ 0x88u)) ^ v380 ^ v397 ^ v396 ^ (v396 >> 1) ^ (v396 >> 3) ^ (32 * v397) ^ (*(v40 + 4 * (BYTE1(v377) ^ 0x98u)) - 31041545);
  v399 = -1529559353 * *(v34 + 4 * HIBYTE(v390));
  v400 = *(v35 + 4 * (BYTE2(v377) ^ 0xA8u)) + 341949584;
  v401 = v400 ^ ((v399 - 1367921339) >> 3) ^ ((v399 - 1367921339) >> 1) ^ (32 * v400) ^ (*(v40 + 4 * (BYTE1(v380) ^ 0x1Du)) - 31041545) ^ (v399 - ((2 * (v399 - 1367921339)) & 0x4FB6827C) + 1448242819);
  v402 = v383;
  v403 = *(v41 + 4 * (v383 ^ 0xD6u));
  v404 = v401 ^ 0xA7DB413E;
  if ((v401 & v403 & 0x1000) != 0)
  {
    v405 = -(v403 & 0x1000);
  }

  else
  {
    v405 = v403 & 0x1000;
  }

  v406 = (v405 + v404) ^ v403 & 0xFFFFEFFF;
  v407 = v406 ^ v402;
  v408 = v406 ^ v402 ^ 0xA472E4AE;
  v409 = -1367921339 - 1529559353 * *(v34 + 4 * (HIBYTE(v391) ^ 0x42));
  v410 = *(v35 + 4 * (BYTE2(v395) ^ 0x1Bu)) + 341949584;
  v411 = v409 ^ *(v41 + 4 * (v407 ^ 0xDEu)) ^ v410 ^ (v409 >> 1) ^ (v409 >> 3) ^ (32 * v410) ^ (*(v40 + 4 * (BYTE1(v398) ^ 0x4Eu)) - 31041545);
  v412 = *(v35 + 4 * (BYTE2(v398) ^ 0x1Bu));
  v413 = v395 ^ v394;
  v414 = v395 ^ v394 ^ 0x9410EDB9;
  v415 = -1367921339 - 1529559353 * *(v34 + 4 * HIBYTE(v414));
  v416 = v415 ^ (v415 >> 3) ^ (v415 >> 1) ^ (32 * (v412 + 341949584)) ^ (v412 - ((2 * (v412 + 341949584)) & 0x7963738) - 1741891540) ^ 0x83CB1B9C;
  v417 = *(v40 + 4 * (BYTE1(v406) ^ 0x2Du));
  v418 = v391 ^ v390;
  v419 = BYTE2(v406) ^ 0x79;
  v420 = -1529559353 * *(v34 + 4 * ((v398 ^ 0x9B1087FB) >> 24));
  v421 = -1367921339 - 1529559353 * *(v34 + 4 * HIBYTE(v408));
  v422 = ((v420 - 1367921339) >> 3) ^ ((v420 - 1367921339) >> 1) ^ 0x34A08CB4 ^ (v420 - ((2 * (v420 - 1367921339)) & 0x69411968) - 484984327);
  v423 = (((31041545 - v417) ^ (v417 - ((2 * (v417 - 31041545)) & 0xD9735396) - 354418238) ^ 0xECB9A9CB ^ (v416 - (v416 ^ (v417 - 31041545)))) + v416) ^ *(v41 + 4 * (v418 ^ 0xE1u));
  v424 = *(v35 + 4 * v419) + 341949584;
  HIDWORD(v425) = (v422 + (v424 ^ (32 * v424)) - 2 * (v422 & (v424 ^ (32 * v424)))) ^ (*(v40 + 4 * (BYTE1(v391) ^ 0x7Au)) - 31041545);
  LODWORD(v425) = HIDWORD(v425);
  v426 = *(v35 + 4 * (BYTE2(v391) ^ 0x3Bu));
  v427 = *(v41 + 4 * (v413 ^ 0xC9u)) ^ v414 ^ ((v425 >> 14) >> 18) ^ ((((v425 >> 14) << 15) | 0x4C777FFF) + (((v425 >> 14) << 14) ^ 0xD9C44000) - 641440476);
  v428 = v421 ^ v398 ^ 0xFB ^ (v421 >> 1) ^ (v421 >> 3) ^ (v426 + 341949584) ^ *(v41 + 4 * (v398 ^ 0x8Bu)) ^ (32 * (v426 + 341949584)) ^ (*(v40 + 4 * (BYTE1(v395) ^ 0x24u)) - 31041545);
  v429 = *&v242[4 * (((v421 ^ v398 ^ 0xFB ^ (v421 >> 1) ^ (v421 >> 3) ^ (v426 - 17264) ^ *(v41 + 4 * (v398 ^ 0x8Bu)) ^ (32 * (v426 - 17264)) ^ (*(v40 + 4 * (BYTE1(v395) ^ 0x24u)) + 22519)) >> 8) ^ 0xDF)];
  v430 = *&v240[4 * (HIBYTE(v423) ^ 0x1C)] ^ *&v241[4 * (BYTE2(v427) ^ 0xA3)] ^ v429 ^ *&v243[4 * ((v411 ^ v408) ^ 0xC9)] ^ (v429 >> 3) & 0x507C997 ^ BYTE2(v427) ^ 0x20 ^ ((BYTE2(v427) ^ 0x20) + 102443184) ^ 0xF5C79F20;
  v431 = BYTE2(v423);
  v432 = *&v241[4 * (BYTE2(v423) ^ 0x80)];
  v433 = BYTE2(v411);
  v434 = *&v241[4 * (BYTE2(v411) ^ 0x1B)];
  v435 = *&v240[4 * (HIBYTE(v411) ^ 0x1A)];
  v436 = *&v242[4 * (BYTE1(v411) ^ 0x98)];
  v437 = BYTE2(v428) ^ 0xFD ^ ((BYTE2(v428) ^ 0xFD) + 102443184) ^ v436 ^ *&v240[4 * (HIBYTE(v427) ^ 0xE7)] ^ (v436 >> 3) & 0x507C997 ^ *&v241[4 * (HIWORD(v428) & 0xE8 ^ 0x6B ^ (BYTE2(v428) ^ 0xFD) & (HIWORD(v428) ^ 0x15))] ^ *&v243[4 * ((v423 ^ v418) ^ 0xC0)];
  v438 = *&v242[4 * (BYTE1(v427) ^ 0xF2)];
  v439 = *&v242[4 * (BYTE1(v423) ^ 0x72)];
  v440 = ((v433 ^ 0x98) + 102443184) ^ v433 ^ 0x98 ^ v434 ^ v439 ^ *&v240[4 * (HIBYTE(v428) ^ 0x29)] ^ *&v243[4 * (v427 ^ 0xA2)] ^ (v439 >> 3) & 0x507C997;
  v441 = v438 ^ v435 ^ v432 ^ *&v243[4 * (v428 ^ 0x5A)] ^ (v438 >> 3) & 0x507C997 ^ v431 ^ 3 ^ ((v431 ^ 3) + 102443184) ^ v437 ^ v430;
  v442 = v441 ^ 0xF47BB741;
  v443 = v437 & 0xFFFFFFFE ^ (v437 & 1 | 0xB31C99BA) ^ v458 ^ 0x48888370;
  v444 = v443 ^ v441 ^ 0xF47BB741 ^ v440 ^ 0x7F1B4D7D;
  v445 = v443 ^ v430;
  LOBYTE(v432) = v445 ^ ~(v440 ^ 0x7D);
  v446 = v445 ^ v440 ^ 0x7F1B4D7D;
  v447 = v441 ^ v458 ^ 0x8CC08657;
  v448 = v440 ^ v442 ^ v446;
  v449 = *(&off_1010A0B50 + v462 - 5861) - 508027034;
  v459[12] = v449[HIBYTE(v448) ^ 0x7ALL] ^ 0x7F;
  v450 = *(&off_1010A0B50 + v462 - 5820) - 637307687;
  v459[13] = v450[BYTE2(v444) ^ 0x40] ^ 7;
  v451 = *(&off_1010A0B50 + (v462 ^ 0x2624)) - 1003235719;
  *v459 = v451[BYTE1(v446) ^ 0xB2] ^ (10 * (v451[BYTE1(v446) ^ 0xB2] ^ 0x7E)) ^ 0x77;
  v452 = *(&off_1010A0B50 + v462 - 8921) - 1177672750;
  v459[9] = v444 ^ v452[v444 ^ 0x9BLL] ^ 0xF8;
  v459[15] = v449[HIBYTE(v446) ^ 0x1DLL] ^ 0x7F;
  v459[1] = v450[BYTE2(v447) ^ 0x8BLL] ^ 7;
  v453 = v451[((((BYTE1(v444) ^ 0xCE) - (BYTE1(v444) ^ 0x1F)) ^ 0xFFFFFFFE) + (BYTE1(v444) ^ 0xCE)) ^ 0x24];
  v459[5] = v453 ^ (10 * (v453 ^ 0x7E)) ^ 0x77;
  v459[8] = ((v448 & 0x9A ^ 0x98) + (v448 ^ 0x22)) ^ v448 & 0x9A ^ 0x98 ^ 0xA ^ v452[v448 ^ 0x4BLL];
  v454 = ((~v446 & 0x9A) - ((2 * v432) & 4) - 125) ^ ((~v446 & 0x9A) + (v446 ^ 0x40)) ^ 0xFC ^ v452[v446 ^ 0x29];
  v459[7] = v454 - ((2 * v454) & 0xEA) + 117;
  v459[10] = v451[BYTE1(v447) ^ 0x51] ^ (10 * (v451[BYTE1(v447) ^ 0x51] ^ 0x7E)) ^ 0x77;
  v459[3] = v450[BYTE2(v448) ^ 0xA1] ^ 7;
  v459[6] = v449[HIBYTE(v447) ^ 0xE5] ^ 0x7F;
  v459[2] = v451[BYTE1(v448) ^ 0xC7] ^ (10 * (v451[BYTE1(v448) ^ 0xC7] ^ 0x7E)) ^ 0x77;
  v459[4] = v447 ^ 0x89 ^ v452[(((v447 ^ 0x19) + (v447 ^ 0xEA) - 2 * (v447 ^ 0xEA)) ^ 0xFFFFFFFE) + (v447 ^ 0x19)];
  v459[14] = v449[HIBYTE(v444) ^ 0x5FLL] ^ 0x7F;
  v459[11] = v450[BYTE2(v446) ^ 0xDCLL] ^ 7;
  return (*(v460 + 8 * v462))(a1);
}

void sub_100700244(uint64_t a1)
{
  v1 = *(a1 + 8) - 1112314453 * ((((2 * a1) | 0x9BB4D1B4) - a1 + 841324326) ^ 0x228C4203);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_100700380@<X0>(int a1@<W4>, uint64_t a2@<X5>, char a3@<W6>, int a4@<W8>)
{
  v17 = ((a4 - 1769438080) & a1 ^ v5) - v4 - 129 * ((((((a4 - 1769438080) & a1 ^ v5) - v4) * v8) >> 32) >> 3);
  v18 = (v7 & (2 * v17)) + (v17 ^ v6);
  v19 = v18 + v11;
  v20 = *(&off_1010A0B50 + a4 + v14) + v15;
  v21 = &v20[4 * v18 - 0x2FBCEBE7DCFFFBBCLL];
  v22 = *(&off_1010A0B50 + (a4 ^ 0x26A2)) - 555779451;
  if (v19 < 0xFFFFFFFFFFFFFF83)
  {
    v21 = &v22[4 * v19];
  }

  v23 = *v21;
  v24 = (*v21 ^ 0xF72F5BAE) + 147891282;
  v25 = (*v21 ^ 0x6E04C150) - 1845805392;
  v26 = *v21 ^ 0xACBBE6AF;
  v27 = 4 * v4 - 0x1458533D0;
  v28 = *(v12 + v27);
  v29 = *(a2 + 4 * (1365331219 - v4));
  v16 = *(v13 + 4 * ((v4 * a3 + 4) & 0x1F));
  v30 = 457880378 * ((v28 + 590238582 + (((v23 ^ 0x3B80BB2F) - 998292271) ^ ((v23 ^ 0x8C343B31) + 1942734031) ^ ((v23 ^ 0x8224FC4F) + 2111505329))) * (v29 - v16 + 2099164960) + 308422875 * (v29 - v16)) + 1585096164 * ((v16 + (v24 ^ v25 ^ (v26 + 1396971857)) - 1200503503) * (((v28 - v29) ^ 0x387FB3B6) + 114168840 + ((2 * (v28 - v29)) & 0x30FF676C)) - 2135803838 * (v16 + (v24 ^ v25 ^ (v26 + 1396971857))));
  v31 = ((v30 - 930443700) ^ 0xEDCFA3BF) & (2 * ((v30 - 930443700) & 0xE9CFB3BE)) ^ (v30 - 930443700) & 0xE9CFB3BE;
  v32 = ((2 * ((v30 - 930443700) ^ 0xAE46A697)) ^ 0x8F122A50) & ((v30 - 930443700) ^ 0xAE46A697) ^ (2 * ((v30 - 930443700) ^ 0xAE46A697)) & 0x47891528;
  v33 = v32 ^ 0x40891528;
  v34 = (v32 ^ 0x7000000) & (4 * v31) ^ v31;
  v35 = ((4 * v33) ^ 0x1E2454A0) & v33 ^ (4 * v33) & 0x47891528;
  v36 = v35 ^ 0x6001420;
  v37 = (16 * (v35 ^ 0x41890108)) & 0x47891500 ^ 0x7080528 ^ ((16 * (v35 ^ 0x41890108)) ^ 0x78915280) & (v35 ^ 0x41890108);
  v38 = ((v34 ^ 0x47891528 ^ v36 & (16 * v34)) << 8) & 0x47891500 ^ v34 ^ 0x47891528 ^ v36 & (16 * v34) ^ (((v34 ^ 0x47891528 ^ v36 & (16 * v34)) << 8) ^ 0x89152800) & v37;
  v39 = ((v30 - 930443700) ^ (2 * ((v38 << 16) & 0x47890000 ^ v38 ^ ((v38 << 16) ^ 0x15280000) & ((v37 << 8) & 0x47890000 ^ 0x46880000 ^ ((v37 << 8) ^ 0x9150000) & v37))) ^ 0x6ECF99DC) + 129;
  v40 = 129 * (((v39 * v8) >> 32) >> 3);
  *(v10 + v27) = v30 - 930443700;
  v41 = (v7 & (2 * (v39 - v40))) + ((v39 - v40) ^ 0x78FBF7CD7EF47BEFLL);
  v42 = v41 - 0x78FBF7CD7EF47C6CLL;
  v43 = &v20[4 * v41 + 0x1C1020CA042E1044];
  if (v42 < 0xFFFFFFFFFFFFFF83)
  {
    v43 = &v22[4 * v42];
  }

  *(v13 + 4 * ((13 * v4 + 28) & 0x1F)) = *(v13 + 4 * ((13 * v4 + 28) & 0x1F)) + 345209289 * (v30 - (((*v43 ^ 0x621E459F) - 1646151071) ^ ((*v43 ^ 0xF0859227) + 259681753) ^ ((*v43 ^ 0xA70BABE9) + 1492407319))) - 2096383425;
  return (*(v9 + 8 * ((50 * (v4 == 1365331219)) ^ a4)))();
}

uint64_t sub_100700928@<X0>(int a1@<W8>)
{
  v9 = *v2;
  v10 = *(v7 + 8 * a1);
  STACK[0xFE0] = 0;
  LODWORD(STACK[0x1860]) = v5;
  *(v8 - 224) = &STACK[0x1860];
  *(v8 - 256) = v1 - 1012831759 * ((2 * (v6 & 0x38384678) - v6 + 1204271489) ^ 0x5754AF0B) - 1650474942;
  *(v8 - 248) = v9;
  *(v8 - 232) = &STACK[0xFE0];
  v11 = (*(v7 + 8 * (v1 - 1650459903)))(v8 - 256);
  *v4 = STACK[0xFE0];
  *v3 = STACK[0x1860];
  return v10(v11);
}

uint64_t sub_1007009D0@<X0>(__int16 a1@<W8>)
{
  v2 = *(STACK[0x1C58] - 0x217E172EFA1E81CLL);
  v3 = 139493411 * ((2 * ((&STACK[0x10000] + 3800) & 0x1DCEE98) - (&STACK[0x10000] + 3800) - 31256224) ^ 0xF20EF025);
  LODWORD(STACK[0x10EF8]) = v3 + 1945538087 * LODWORD(STACK[0x8710]) + 777074195;
  STACK[0x10EE0] = &STACK[0x8EDC];
  LODWORD(STACK[0x10ED8]) = v1 - v3 - 5717;
  LOWORD(STACK[0x10EFC]) = a1 - 32733 * ((2 * ((&STACK[0x10000] + 3800) & 0xEE98) - (&STACK[0x10000] + 3800) + 4448) ^ 0xF025) + (v1 ^ 0xFF71);
  STACK[0x10EF0] = v2;
  LODWORD(STACK[0x10EE8]) = v3 - 231256020;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC9E)))(&STACK[0x10ED8]);
  v6 = STACK[0x10F00];
  LODWORD(STACK[0x304C]) = STACK[0x10F00];
  return (*(v4 + 8 * ((54 * (v6 != ((v1 - 15458) ^ 0x59441771))) ^ v1)))(v5);
}

uint64_t sub_100700B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = *(v19 + 8 * (v20 + 4390));
  LODWORD(v37) = v18 + 33690;
  HIDWORD(v37) = a17 + 1758514300;
  HIDWORD(v36) = v18 + 31816;
  LODWORD(v36) = v18 + 21757;
  HIDWORD(v35) = v18 + 35688;
  LODWORD(v32) = (v18 ^ 0x12EE) - 2002553142;
  HIDWORD(v32) = v18 ^ 0x12EE;
  HIDWORD(v30) = ((v18 ^ 0x12EE) - 1009430490) & 0x3C2AEFF6;
  LODWORD(v31) = (v18 ^ 0x12EE) + 39367;
  HIDWORD(v31) = HIDWORD(v30) ^ 0x6B8D;
  v22 = (v18 ^ 0x12EE) - 2068154405;
  v23 = v31 ^ 0xE328;
  LODWORD(v30) = (v18 ^ 0x12EE) - 11159;
  LODWORD(v28) = (v18 ^ 0x12EE) + 11111;
  HIDWORD(v28) = v22;
  LODWORD(v27) = v22 ^ 0x84BA853C;
  HIDWORD(v27) = v22 ^ 0x84BAA364;
  v24 = (v22 ^ 0x84BA853C) - 1651220837;
  LODWORD(v26) = v24 + 1651219537;
  HIDWORD(v26) = v24;
  HIDWORD(a9) = v24 ^ 0x9D94A2AB;
  LODWORD(v35) = (v18 + 690766829) ^ 0x292C6894;
  LODWORD(v34) = v18 - 11090;
  HIDWORD(v34) = v18 + 28448;
  HIDWORD(a18) = v18 - 6945;
  LODWORD(v29) = v31 ^ 0xE328;
  HIDWORD(v29) = v23 - 2068808400;
  HIDWORD(v33) = v18 - 8017;
  LODWORD(v33) = v18 - 8269;
  return v21(a1, v21, v23, 4292662771, (v18 ^ 0x12EEu) - 1361, (v18 + 8350), a7, a8, a9, v26, v27, v28, v29, v30, v31, v32, a17, a18, v33, v34, v35, v36, v37);
}

uint64_t sub_100700DE0()
{
  v1 = STACK[0xF10] - 29678;
  LODWORD(STACK[0x4A3C]) = v0;
  STACK[0x5C50] = 0x3AE1413A0D5C9D2ALL;
  LODWORD(STACK[0x1374]) = -316308458;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100700F44@<X0>(int a1@<W2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v24 = a1 + a2 - 523282502;
  v25 = (((((a22 - 16645) | 0x56) ^ 0x2950542F) + (v22 ^ 0xD6AF92A8)) ^ ((v22 ^ 0xA397CC74) + 1550332812) ^ ((v22 ^ 0x9CED99CD) + 1662127303 + ((a22 - 556801576) & 0x212FFD6D))) - 302846208;
  v26 = (v24 < -2078464017) ^ (v25 < -2078464017);
  v27 = v24 > v25;
  if (v26)
  {
    v27 = v24 < -2078464017;
  }

  return (*(v23 + 8 * (a22 + 8 * v27)))();
}

uint64_t sub_10070102C@<X0>(unsigned __int16 a1@<W8>)
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 24624;
  LOWORD(STACK[0x545A]) = a1;
  v4 = a1 != (v1 - 3625) || LODWORD(STACK[0x1A0C]) < 0x15;
  return (*(STACK[0xF18] + 8 * ((56 * v4) ^ v2)))();
}

uint64_t sub_1007010E8()
{
  v1 = STACK[0xF18];
  STACK[0x4D78] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xFD5E ^ (v0 + 31009))))();
}

uint64_t sub_100701190()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 36816)))();
  *(v1 + 16) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1007011C0()
{
  v2 = (v1 ^ 0xBBE7FFF795FEF9A3) + 0x467FFCAFFAB377DFLL + ((v1 << (v0 ^ 0x9Cu)) & 0x12BFDF346);
  STACK[0xB1F0] = v2;
  v3 = STACK[0x2168];
  STACK[0xB1F8] = STACK[0x2168];
  return (*(STACK[0xF18] + 8 * ((3954 * (((v0 - 565853921) & 0x21B99B77 ^ 0x70D921CE8E6508ABLL) - v3 + v2 < 0xFFFFFFFFFFFFFFF6)) ^ v0)))();
}

uint64_t sub_100701314@<X0>(unsigned int a1@<W8>)
{
  v2 = a1 | ((a1 < ((3 * (v1 ^ 0x837E)) ^ 0x1B0E086Fu)) << 32);
  STACK[0x8A70] = v2 + 0x33C51FE62C61CE55;
  return (*(STACK[0xF18] + 8 * ((61 * (*(STACK[0x7020] + 32 * (v2 - 453935956) + 8) != 0)) ^ v1)))();
}

uint64_t sub_1007014A0()
{
  LODWORD(STACK[0x155C]) = STACK[0x20D4];
  LODWORD(STACK[0xCC8]) = (((LODWORD(STACK[0x23D8]) ^ 0x74A91C5D) - 1957239901) ^ ((LODWORD(STACK[0x23D8]) ^ 0xC023C1CD) + 1071398451) ^ ((LODWORD(STACK[0x23D8]) ^ 0xA2E7E5C1) + 1561860671)) - LODWORD(STACK[0x1710]) + 2142568014;
  return (*(v0 + 50680))();
}

uint64_t sub_1007015E0()
{
  LODWORD(STACK[0x2AB4]) = v0;
  v2 = STACK[0xF18];
  STACK[0x1518] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 32484 + 12740 * (v1 ^ 0xEFC))))();
}

uint64_t sub_100701624()
{
  v1 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1021058067) & 0x3CDCAE8D) - 40690) ^ v0)))();
}

uint64_t sub_100701BA8()
{
  LODWORD(STACK[0x218C]) = STACK[0x20D4];
  v1 = *(STACK[0xE88] + 32) + 1204312873;
  v2 = (v1 ^ 0xB22726C8) & (2 * (v1 & 0xB837A4D2)) ^ v1 & 0xB837A4D2;
  v3 = ((2 * (v1 ^ 0xD20C664C)) ^ 0xD477853C) & (v1 ^ 0xD20C664C) ^ (2 * (v1 ^ 0xD20C664C)) & 0x6A3BC29E;
  v4 = v3 ^ 0x2A084282;
  v5 = (v3 ^ 0x40338018) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0xA8EF0A78) & v4 ^ (4 * v4) & 0x6A3BC298;
  v7 = (v6 ^ 0x282B0200) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x4210C086)) ^ 0xA3BC29E0) & (v6 ^ 0x4210C086) ^ (16 * (v6 ^ 0x4210C086)) & 0x6A3BC280;
  v9 = v7 ^ 0x6A3BC29E ^ (v8 ^ 0x22380000) & (v7 << 8);
  LODWORD(STACK[0x2190]) = v1 ^ (2 * ((v9 << 16) & 0x6A3B0000 ^ v9 ^ ((v9 << 16) ^ 0x429E0000) & (((v8 ^ 0x4803C21E) << 8) & 0x6A3B0000 ^ 0x40390000 ^ (((v8 ^ 0x4803C21E) << 8) ^ 0x3BC20000) & (v8 ^ 0x4803C21E)))) ^ 0xC7B18114;
  return (*(v0 + 40672))();
}

uint64_t sub_100701DB8(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = ((2 * a5) & 0x2E) + (a5 ^ 0xEE49DED7);
  v10 = (a5 ^ 0xFEDF777F) + 2 * a5;
  v11 = ((a4 ^ *(v6 + v10 + 18909313)) << 24) | ((*(v6 + v10 + 18909314) ^ v8) << 16) | ((*(v6 + v10 + 18909315) ^ v8) << 8);
  v12 = *(v6 + v10 + 18909316) ^ v8;
  v13 = (v11 | v12) - 2 * ((v11 | v12) & 0x69D5C71B ^ v12 & 0xA);
  v14 = (2 * ((v9 - 22592) & 0x169)) & ((v9 - 22592) ^ 0xF35C) ^ (v9 + 968861632) & 0x169 ^ ((2 * ((v9 - 22592) & 0x169)) & 0x210 | 0x61608824);
  v15 = (2 * ((v9 + 968861632) ^ 0x321AF35C)) & 0x65EC8A34 ^ 0x24248A15 ^ ((2 * ((v9 + 968861632) ^ 0x321AF35C)) ^ 0xCAB9146A) & ((v9 + 968861632) ^ 0x321AF35C);
  v16 = (4 * v14) & 0x85800A34 ^ v14 ^ ((4 * v14) ^ 0x85822090) & v15;
  v17 = (4 * v15) & 0x65EC8A34 ^ 0x604C8221 ^ ((4 * v15) ^ 0x97B228D4) & v15;
  v18 = v16 ^ (16 * v16) & 0xE5EC8A30 ^ ((16 * v16) ^ 0x4E088340) & v17 ^ 0x45048001;
  v19 = (16 * v17) & 0xE5EC8A10 ^ 0xA1240825 ^ ((16 * v17) ^ 0x5EC8A350) & v17;
  v20 = (v18 << 8) & 0xE5EC8A00 ^ v18 ^ ((v18 << 8) ^ 0xEC8A3500) & v19;
  *(v5 + 4 * ((((v9 + 968861632) ^ (2 * ((v20 << 16) & 0x65EC0000 ^ v20 ^ ((v20 << 16) ^ 0xA350000) & ((v19 << 8) & 0x65EC0000 ^ 0x1640000 ^ ((v19 << 8) ^ 0x6C8A0000) & v19)))) >> 2) ^ 0x355DDB40)) = ((((v13 - 371865839) ^ 0x7C8CB8B1) - 2089597105) ^ (((v13 - 371865839) ^ 0x1A732F88) - 443756424) ^ (((v13 - 371865839) ^ 0x8F2A5028) + 1893052376)) - 357845294;
  return (*(v7 + 8 * ((38 * (v9 + 297148717 < 0x40)) ^ a3)))(a1, 16);
}

uint64_t sub_10070239C()
{
  v2 = STACK[0x4B8];
  v3 = STACK[0x408];
  v3[15] = *(STACK[0x4B8] + 15);
  v3[14] = v2[14];
  v3[13] = v2[13];
  v3[12] = v2[12];
  v3[11] = v2[11];
  v3[10] = v2[10];
  v3[9] = v2[9];
  v3[8] = v2[8];
  v3[7] = v2[7];
  v3[6] = v2[6];
  v3[5] = v2[5];
  v3[4] = v2[4];
  v3[3] = v2[3];
  v3[2] = v2[2];
  v3[1] = v2[1];
  return (*(v1 + 8 * v0))();
}

void sub_100702438(uint64_t a1)
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
  v1 = *a1 + 1112314453 * (((a1 | 0x67CA5DF7) - (a1 & 0x67CA5DF7)) ^ 0x889C772E);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1007025A4@<X0>(uint64_t a1@<X8>)
{
  if (v1)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(STACK[0xF18] + 8 * ((((v2 + 446433450) & 0xE563BBFF ^ 0x8B6E) * v4) ^ v2)))();
}

uint64_t sub_10070268C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x6208] = STACK[0x6388];
  STACK[0x8AD0] = STACK[0x8118];
  v4 = STACK[0x5D98];
  STACK[0x1F80] = STACK[0x5D98];
  STACK[0x8078] = a1;
  LODWORD(STACK[0x22D8]) = v1;
  LODWORD(STACK[0x2AEC]) = v2;
  STACK[0x7300] = 0;
  v7 = LODWORD(STACK[0x3418]) != -371866690 && v4 == 0 || STACK[0x1DC0] == (v3 - 6867) + 0x22EE7698899CD160;
  return (*(STACK[0xF18] + 8 * ((v7 * (v3 - 35632)) | (v3 + 12457))))();
}

uint64_t sub_100702848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, char a54)
{
  v56 = 634647737 * ((2 * ((v55 - 200) & 0x1F996D58) - (v55 - 200) - 530148701) ^ 0x8DF0BD5F);
  *(v55 - 200) = v56 - 1431125373;
  *(v55 - 184) = a30 - v56 - 269684528;
  *(v55 - 192) = &a54;
  v57 = (*(v54 + 8 * a12))(v55 - 200);
  return (*(v54 + 8 * (a30 - 269719723 + 17029 * (a30 ^ 0x10136125))))(v57, -269705510);
}

uint64_t sub_100702934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = ((2 * (v13 ^ 0x394B) - 29340) & (2 * v12)) + (v12 ^ 0xFBD2FDDAD5F649BDLL);
  v15 = v14 + 0x42D02252A09B641;
  v16 = v14 + 0x42D02252A09B643;
  if (v15 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v17 = (a12 + v16);
  }

  else
  {
    v17 = (a11 + v15);
  }

  *(a1 + v16) ^= *v17 ^ 0x77;
  v18 = ((v12 + 1 - v13) | (v13 - (v12 + 1))) >= 0;
  return (*(STACK[0x228] + 8 * (((2 * v18) | (16 * v18)) ^ (v13 + 24658))))();
}

uint64_t sub_100702A30@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, unint64_t a43, int a44, int a45)
{
  *(v49 - 180) = ((v45 - 1316) ^ 0x2C90924D) + v46;
  *(v49 - 176) = v46 + a45;
  STACK[0x770] = a43;
  *(v49 - 172) = v46 ^ (v45 - 1316) ^ 0x2C90813A;
  STACK[0x780] = (v48 - (v45 - 1316) - 634187117 + a1) ^ v46;
  *(v49 - 200) = v46 | 1;
  *(v49 - 216) = ((v45 - 1316) | 0x2C9081CE) ^ v46;
  v50 = (*(v47 + 8 * a42))(v49 - 216);
  return (*(v47 + 8 * *(v49 - 184)))(v50);
}

uint64_t sub_100702B78@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *v46 = a44;
  v46[1] = *(a41 + 80);
  *(a41 + 80) = a1;
  *(v46[1] + 24) = a1;
  *(v46 - 2) = ((v44 + 15582) | 0x2088) - *(v46 - 2) + 0x79C4BC1D8A3F6564;
  return (*(v45 + 8 * v44))();
}

uint64_t sub_100702C38@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v15 = *(*(a5 + 8 * v10) + (v8 ^ v6 ^ v9) + v11);
  *(a1 + v6) = v15 ^ HIBYTE(v13) ^ a3 ^ (((v15 ^ v12) << a2) * (v15 ^ v12));
  return (*(v14 + 8 * (((v7 == 0) * a4) ^ a6)))();
}

uint64_t sub_100702C90@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(*(v1 + 8) + 4 * v7) = *(*(a1 + 8) + 4 * v7);
  return (*(v2 + 8 * (((v7 != v5) * v6) ^ v3)))();
}

uint64_t sub_100702CC0()
{
  v1 = (STACK[0xF10] - 990890812) & 0x3B0FE48D;
  v2 = STACK[0xF10] + 6522;
  LODWORD(STACK[0x7744]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 38036) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_1007030F8@<X0>(unint64_t a1@<X1>, int a2@<W8>)
{
  v4 = STACK[0x1560] + v3;
  STACK[0x3AD8] = v4;
  LODWORD(STACK[0xED0]) = 106;
  LOBYTE(STACK[0x1AF3]) = 106;
  STACK[0x6920] = 0;
  v5 = *(&off_1010A0B50 + (a2 ^ 0x249B)) - 811744718;
  LODWORD(STACK[0x726C]) = -187458867;
  LODWORD(STACK[0x7850]) = -371865839;
  STACK[0x3930] = v5;
  STACK[0x2A60] = a1;
  STACK[0x85E8] = v4;
  LODWORD(STACK[0x4874]) = v2;
  return (*(STACK[0xF18] + 8 * a2))();
}

uint64_t sub_1007031E4@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x200] = a4;
  LODWORD(a61) = v74;
  v78 = v76 % 0x16;
  v79 = v73 % 0x85;
  LODWORD(a64) = a8;
  v80 = HIDWORD(a34) - 133 * (v69 / 0x85);
  LODWORD(a52) = STACK[0x210] - 10571;
  v81 = a1 + 728896609;
  v82 = ((a8 % 0x85) ^ 0xFBB2A96FDBDDFFFFLL) + 2 * (a8 % 0x85);
  v83 = v82 + 0x44D56902421FF9FLL;
  v84 = (v72 + 4 * (v82 + (a52 ^ 0x44D5690242266B8)));
  if (v83 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v84 = (a6 + 4 * v83);
  }

  v85 = *v84 ^ a2 ^ ((a2 ^ 0x3B819A76) - 1489149564) ^ ((a2 ^ 0x6DBBD0D4) - 251188446) ^ ((a2 ^ 0xA96B977) - 1775615357) ^ ((a2 ^ 0x3FEFF7DF) - 1554838485);
  v86 = 4 * v78;
  v87 = (a60 + v86);
  v88 = (v86 + a59 - 36);
  if (v78 <= 8)
  {
    v88 = v87;
  }

  v89 = *(a5 + 4 * (HIDWORD(a32) ^ v81 ^ ((v81 ^ 0x8A0F0BA1) + 1585635392) ^ ((v81 ^ 0x200476E5) - 192307844) ^ ((v81 ^ 0xFE8696D2) + 705396045) ^ ((v81 ^ 0x7FFFFFF7) - 1418587030) ^ 0x83464D9F));
  v90 = ((v89 ^ 0x99DDABAD) + 1713525843) ^ ((v89 ^ 0x4F478C68) - 1330089064) ^ ((v89 ^ 0xFDF198EA) + 34498326);
  v91 = (v90 + a3) * ((((*v88 ^ 0x525C3D69) - 1381776745) ^ ((*v88 ^ 0x5809AB8C) - 1477028748) ^ ((*v88 ^ 0x20358639) - 540378681)) - 1843570550);
  v92 = ((v85 ^ 0xEBCC3479) + 897207973) ^ ((v85 ^ 0xD1C3A8D5) + 259379721) ^ ((v85 ^ 0x278FF637) - 113668885);
  v93 = ((2 * v79) & 0x196) + (v79 ^ 0xF9F9FE75FD7FBFCBLL);
  v94 = v93 + 0x606018A02803FD3;
  v95 = (v72 + 4 * v93 + 0x181806280A0100D4);
  if (v94 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v95 = (a6 + 4 * v94);
  }

  v96 = (*(a5 + 4 * ((a37 + a1 + -82 * v90 - v91 - v92) & 0x1F)) ^ 0xB6BBF2F) * v77 + (133 * (((*v95 ^ 0x79F7B40) - 127892288) ^ ((*v95 ^ 0x8D31D7A) - 148053370) ^ ((*v95 ^ 0x718F08AB) - 1905199275)) - 611815083) * (*(v75 + 4 * (v67 & 0x1F)) + v65) * (a45 - 1740457902 * v90 + v91 + v92 - 1156721181);
  v97 = (((v96 - ((2 * v96) & 0xDAF38E06) - 310786301) ^ 0x25989741) - 630757185) ^ (((v96 - ((2 * v96) & 0xDAF38E06) - 310786301) ^ 0x55B8C298) - 1438171800) ^ (((v96 - ((2 * v96) & 0xDAF38E06) - 310786301) ^ 0x9D5992DA) + 1655074086);
  v98 = ((2 * (a1 + v80)) & 0x1F6) + ((a1 + v80) ^ 0x767FEE7C783E7DFBLL);
  v99 = v98 - 0x767FEE7C783E7E5DLL;
  v100 = (v72 + 4 * v98 + 0x2600460E1F060814);
  if (v99 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v100 = (a6 + 4 * v99);
  }

  *(v70 + 4 * ((a48 + a1) & 0x1F)) = *(v70 + 4 * ((a48 + a1) & 0x1F)) - 545043424 * v97 + (v97 - 1821707240) * (-1581693617 - (((*v100 ^ 0x60F20A4D) - 1626475085) ^ ((*v100 ^ 0x1687E3DD) - 378004445) ^ ((*v100 ^ 0x8B68701) - 146179841))) - 31612160;
  v102 = 4 * (27 * (a31 ^ (v81 ^ ((v81 ^ 0xEBD62B27) + 1062977722) ^ ((v81 ^ 0x8FB7F52D) + 1530535604) ^ ((v81 ^ 0xB8EDB5F6) + 1818254953) ^ ((v81 ^ 0xF7FE7F9D) + 594777092) ^ 0xBD32DAE8) & a42) % 0x16);
  v103 = (a60 + v102);
  v104 = v102 + a59 - 36;
  if (27 * (a31 ^ (v81 ^ ((v81 ^ 0xEBD62B27) + 1062977722) ^ ((v81 ^ 0x8FB7F52D) + 1530535604) ^ ((v81 ^ 0xB8EDB5F6) + 1818254953) ^ ((v81 ^ 0xF7FE7F9D) + 594777092) ^ 0xBD32DAE8) & a42) % 0x16 <= 8)
  {
    v105 = v103;
  }

  else
  {
    v105 = v104;
  }

  v101 = *(a5 + 4 * ((((a7 + v97) ^ (a50 + a1 - v97) ^ (((a7 + v97) ^ 0xF9) + 23)) ^ ((((a7 + v97) ^ 0xB) + 5) ^ (((a7 + v97) ^ 0xFD) + 19))) & 0x1F ^ 0x10u));
  v106 = ((v101 ^ 0x3C53B0D6) - 1012117718) ^ ((v101 ^ 0x3482A581) - 880977281) ^ ((v101 ^ 0x23BAAA78) - 599435896);
  v107 = 289471514 * v106 - 27 * *(v71 + 4 * ((a47 + a1) & 0x1F)) + ((((*v105 ^ 0x4441EF5C) - 1145171804) ^ ((*v105 ^ 0x4F45DE06) - 1329978886) ^ ((*v105 ^ 0x21642186) - 560210310)) + 1000410358) * (-728481583 - v106) + v97 + 418329510;
  v108 = (v107 ^ 0x9F1E4F37) & (2 * (v107 & 0xDE5F6F38)) ^ v107 & 0xDE5F6F38;
  v109 = ((2 * (v107 ^ 0x8316DF77)) ^ 0xBA93609E) & (v107 ^ 0x8316DF77) ^ (2 * (v107 ^ 0x8316DF77)) & 0x5D49B04E;
  v110 = v109 ^ 0x45489041;
  v111 = (v109 ^ 0x18012000) & (4 * v108) ^ v108;
  v112 = ((4 * v110) ^ 0x7526C13C) & v110 ^ (4 * v110) & 0x5D49B04C;
  v113 = v111 ^ 0x5D49B04F ^ (v112 ^ 0x55008000) & (16 * v111);
  v114 = (16 * (v112 ^ 0x8493043)) & 0x5D49B040 ^ 0x940B00F ^ ((16 * (v112 ^ 0x8493043)) ^ 0xD49B04F0) & (v112 ^ 0x8493043);
  v115 = (v113 << 8) & 0x5D49B000 ^ v113 ^ ((v113 << 8) ^ 0x49B04F00) & v114;
  v116 = (v115 << 16) & 0x5D490000 ^ v115 ^ ((v115 << 16) ^ 0x304F0000) & ((v114 << 8) & 0x5D490000 ^ 0x14490000 ^ ((v114 << 8) ^ 0x49B00000) & v114);
  v117 = a1 - 22;
  if (a1 < 0x16)
  {
    v117 = a1;
  }

  v118 = (v117 + 22) % 0x16u;
  v119 = 4 * v118;
  v120 = (a60 + v119);
  v121 = v119 + a59 - 36;
  if (v118 <= 8)
  {
    v122 = v120;
  }

  else
  {
    v122 = v121;
  }

  v123 = 0x1ECC07B301ECC08 * (((*v122 ^ 0x167FEC396CEC57E7) - 0x567FEC396CEC57E7) ^ ((*v122 ^ 0x16B513253CA4E3D3) + 0x694AECDAC35B1C2DLL) ^ ((*v122 ^ 0xCAFF1C7A28A4E8) + 0x3F3500E385D75B18)) - 0x3CFAA4AC01FC3FA9;
  v124 = v123 ^ ((v123 ^ 0x14ED84F577BE3FDDLL) + 0x635E646B8A2956) ^ ((v123 ^ 0x8113AB941D50AE7) + 0x1C9FE0285DE11C70) ^ ((v123 ^ 0xC9FA74DDAA7D22A0) - 0x228B51B349B6CBD7) ^ ((v123 ^ 0x3E77EFFF7FDDFEEDLL) + 0x2AF9356E63E9E866);
  v125 = ((v124 ^ 0x212A0B9A01E393BALL) - 0xF9630ACFAA6489ALL) ^ ((v124 ^ 0xB1867DBF5456A3DLL) - 0x25A45CED0E00B11DLL);
  LODWORD(v124) = __CFADD__(133 * (v125 ^ ((v124 ^ 0xC143492F176D10F0) + 0x10008DE613D73430)), 0xC390C3C4C1E02733) + (((v125 ^ ((v124 ^ 0xC143492F176D10F0) + 0x10008DE613D73430)) * 0x85uLL) >> 64) + 133 * ((__CFADD__(v124 ^ 0x212A0B9A01E393BALL, 0xF069CF530559B766) - 1) ^ (__CFADD__(v124 ^ 0xB1867DBF5456A3DLL, 0xDA5BA312F1FF4EE3) - 1) ^ (__CFADD__(v124 ^ 0xC143492F176D10F0, 0x10008DE613D73430) - 1)) + 2053946603;
  LODWORD(a62) = a9;
  v126 = a9 - (v124 + 133 * ((a9 - v124) / 0x85u));
  v127 = ((2 * v126) & 0x1FA) + (v126 ^ 0x7B57FDAFF7EFBFFDLL);
  v128 = v127 - 0x7B57FDAFF7EFC05FLL;
  v129 = (v72 + 4 * v127 + 0x12A009402041000CLL);
  if (v128 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v129 = (a6 + 4 * v128);
  }

  v130 = 27 * (((*v129 ^ 0x32CACC66) - 852151398) ^ ((*v129 ^ 0x4FD3EDE) - 83705566) ^ ((*v129 ^ 0x48F49C29) - 1223990313)) - *(v75 + 4 * a40);
  *(v75 + 4 * (STACK[0x200] & 0x1F)) += 133 * ((v130 - ((2 * v130 + 49698708) & 0x41F35E2) - 74791237) ^ v107 ^ (2 * v116) ^ 0x54519557);
  v131 = *(STACK[0x228] + 8 * (STACK[0x210] | (2 * (((a30 ^ v81 ^ ((v81 ^ 0x8920B5F1) + 1571642992) ^ ((v81 ^ 0xD496ABBF) + 1785890) ^ ((v81 ^ 0x903BF5D0) + 1152785999) ^ ((v81 ^ 0xE6FFFFFF) + 846337122) ^ 0x3D495488) + 23) % 0x17 != 0))));
  return v131(a1, v68 % 0x85, 0x10008DE613D73430, v75, v131, a6, a7, v64 / 0x85uLL, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, v66, a64);
}

uint64_t sub_100703FB8()
{
  STACK[0xCD8] = v0 + v3 * v1;
  STACK[0x1F28] = 0;
  LODWORD(STACK[0x1574]) = v2;
  return (*(v5 + 8 * (v4 + 24759)))();
}

uint64_t sub_100703FEC@<X0>(uint64_t a1@<X8>)
{
  v3 = (((v1 ^ 0x6260C736) - 1280470236 + (*(a1 + 16) ^ 0xE9F19C8A)) ^ ((*(a1 + 16) ^ 0xC51A619F) + 988126817) ^ (((v1 + 1650505966) ^ *(a1 + 16) ^ 0xA75EEA56) + 985777660)) + 1724150979;
  v4 = (((*(a1 + 12) ^ 0xDF79939A) + 545680486) ^ ((*(a1 + 12) ^ 0x96ED50C3) + 1762832189) ^ ((*(a1 + 12) ^ 0xA0410448) + 1606351800)) + 1724150979;
  v5 = (v3 < 0x7CEEADB2) ^ (v4 < 0x7CEEADB2);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x7CEEADB2;
  }

  return (*(v2 + 8 * ((21017 * v6) ^ v1)))();
}

uint64_t sub_100704424()
{
  v3 = *(STACK[0x15C8] + v0);
  v4 = (((LODWORD(STACK[0x91A4]) ^ 0xF55D8F6D) + 178417811) ^ ((LODWORD(STACK[0x91A4]) ^ 0xE8A6F071) + 391712655) ^ (v2 - 23247 + (LODWORD(STACK[0x91A4]) ^ 0xF42EB80D) + 198238091)) - 54746966;
  v5 = 634647737 * ((((2 * (&STACK[0x10000] + 3800)) | 0xF33C8C64) - (&STACK[0x10000] + 3800) - 2040415794) ^ 0x140869CE);
  LODWORD(STACK[0x10EF8]) = v2 - v5 - 10198;
  STACK[0x10EF0] = v3;
  STACK[0x10F00] = v1;
  LODWORD(STACK[0x10ED8]) = v4 ^ v5;
  STACK[0x10EE8] = &STACK[0x7ACC];
  STACK[0x10EE0] = &STACK[0x5500];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 1933)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_100704540@<X0>(int a1@<W8>)
{
  v4 = a1 + 1590297045;
  v5 = v4 < (((v2 - 1650511885) | 0x5508) ^ 0x4B7E2634u);
  v6 = (((v2 - 1650507857) | 0x8C) ^ 0x4B7E63F4) + v1 < v4;
  if (v1 > 0xB4818C86 != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((14 * v6) ^ (v2 - 1650488798))))();
}

uint64_t sub_1007045E4(__n128 a1, __n128 a2, double a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, int a10)
{
  a1.n128_u16[0] = 29555;
  a1.n128_u8[2] = 115;
  a1.n128_u8[3] = 115;
  a1.n128_u8[4] = 115;
  a1.n128_u8[5] = 115;
  a1.n128_u8[6] = 115;
  a1.n128_u8[7] = 115;
  a2.n128_u16[0] = 10794;
  a2.n128_u8[2] = 42;
  a2.n128_u8[3] = 42;
  a2.n128_u8[4] = 42;
  a2.n128_u8[5] = 42;
  a2.n128_u8[6] = 42;
  a2.n128_u8[7] = 42;
  a4.n128_u16[0] = 27756;
  a4.n128_u8[2] = 108;
  a4.n128_u8[3] = 108;
  a4.n128_u8[4] = 108;
  a4.n128_u8[5] = 108;
  a4.n128_u8[6] = 108;
  a4.n128_u8[7] = 108;
  a5.n128_u16[0] = 4626;
  a5.n128_u8[2] = 18;
  a5.n128_u8[3] = 18;
  a5.n128_u8[4] = 18;
  a5.n128_u8[5] = 18;
  a5.n128_u8[6] = 18;
  a5.n128_u8[7] = 18;
  a6.n128_u16[0] = 21588;
  a6.n128_u8[2] = 84;
  a6.n128_u8[3] = 84;
  a6.n128_u8[4] = 84;
  a6.n128_u8[5] = 84;
  a6.n128_u8[6] = 84;
  a6.n128_u8[7] = 84;
  a7.n128_u16[0] = 14392;
  a7.n128_u8[2] = 56;
  a7.n128_u8[3] = 56;
  a7.n128_u8[4] = 56;
  a7.n128_u8[5] = 56;
  a7.n128_u8[6] = 56;
  a7.n128_u8[7] = 56;
  a8.n128_u16[0] = 31354;
  a8.n128_u8[2] = 122;
  a8.n128_u8[3] = 122;
  a8.n128_u8[4] = 122;
  a8.n128_u8[5] = 122;
  a8.n128_u8[6] = 122;
  a8.n128_u8[7] = 122;
  return (*(v12 + 8 * ((108467 * (a10 == 1544626390)) ^ (a10 + 2013494743))))(v10 & 0x18, 8 - (v10 & 0x18), -v11, v10 - 32638, v10 + *(v13 - 136) - 8, 122, a1, a2, xmmword_100F523B0, a4, a5, a6, a7, a8);
}

uint64_t sub_10070468C@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 256) = v1 + 1603510583 * ((v2 - 2 * (v2 & 0x374E54E8) - 1219603221) ^ 0x20956640) + 17951;
  *(v4 - 248) = a1;
  v5 = (*(v3 + 8 * (v1 ^ 0xF8D6)))(v4 - 256);
  *(STACK[0xCD8] + 104) = 0x427A3CD3E8C5DA2FLL;
  return (*(v3 + 8 * v1))(v5);
}

uint64_t sub_100704918()
{
  v2 = STACK[0x1E90];
  *(v1 - 248) = STACK[0x17C8];
  *(v1 - 256) = LODWORD(STACK[0x398]) ^ (1022166737 * (((((v1 - 256) | 0x99ABB7A0) ^ 0xFFFFFFFE) - (~(v1 - 256) | 0x6654485F)) ^ 0xDC44A9CD));
  *(v1 - 252) = -1022166737 * (((((v1 - 256) | 0x99ABB7A0) ^ 0xFFFFFFFE) - (~(v1 - 256) | 0x6654485F)) ^ 0xDC44A9CD) + 1446135777 * v2 + 2011904846;
  v3 = (*(v0 + 8 * LODWORD(STACK[0x394])))(v1 - 256);
  return (*(v0 + 8 * (((*(v1 - 240) == -371865839) * LODWORD(STACK[0x390])) ^ 0x10AEu)))(v3);
}

uint64_t sub_100704AA8()
{
  v2 = 0x86E02178E984A6A3 - 0x4F8EBE26231F9A5FLL * (((v0 ^ 0x49FBE57BFD65917BLL) + 0x33634BB3A18BF773) ^ ((v0 ^ 0x3A8BB10150AAEA02) + 0x40131FC90C448C0CLL) ^ ((v0 ^ 0x22B8CF36EBCFDBCFLL) + 0x582061FEB721BDC7));
  v3 = ((v2 ^ 0xAD7FFA33462A63A0) + 0x33402B10AE342E06) ^ v2 ^ ((v2 ^ 0x2E5B6BC52535A321) - 0x4F9B451932D4117BLL) ^ ((v2 ^ 0x671A805D9A018905) - 0x6DAAE818DE03B5FLL) ^ ((v2 ^ 0x85FE3F77EEFFFBDELL) + 0x1BC1EE5406E1B67CLL);
  LODWORD(STACK[0x23F4]) = (((~BYTE3(v3) | 0xBBFFFFEC) + (BYTE3(v3) | 0x44000013) - ((2 * BYTE3(v3)) ^ 0x88000026)) & ((v3 >> 40) & 0xFF00 ^ 0xB1FF5CF8) & 0xFFFFFFF8 | BYTE3(v3) & 7) ^ 0xB1FF9CFF;
  return (*(v1 + 41408))();
}

uint64_t sub_100704C88@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v21 = v11 < a4;
  v22 = v12;
  v23 = *(v19 + (v10 - 81580939));
  v24 = ((v9 | a5) ^ v13) + a2 + 1859865649 * (v10 + (v23 ^ 0x29DD2F6F) + ((2 * v23) & 0xDE));
  v25 = (v24 - a3 - 148919990 + (v24 - 261645108) % 0x101u) ^ a1;
  v26 = v12 + (((v25 ^ v17) - 1347690815) ^ ((v25 ^ 0x8F400802) - 1969007275) ^ ((v25 ^ 0xB48B0DA3) - 1318563594));
  v27 = v26 + v16;
  v28 = v26 + v16 + (a1 ^ 0x91838637);
  v29 = v26 + v22 - 1686156675;
  v30 = ((a3 ^ a7) - 1836588726) ^ a3 ^ ((a3 ^ 0x823767A6) + v18) ^ ((a3 ^ 0x98B0866F) + 1643607535) ^ ((a3 ^ v20) - 1900540673) ^ v27;
  HIDWORD(v31) = v27;
  LODWORD(v31) = v27;
  v32 = (v28 - v29 - 1355450032 + (v30 ^ 0xF8B74E16 ^ ((v31 >> 30) - ((2 * (v31 >> 30)) & 0xFC1E84D0) - 32554392))) ^ 0xE1C7F33E;
  v33 = v29 + a6 + v32;
  v34 = v32 ^ v28;
  v35 = v32 + (v30 ^ 0x6B80C7E);
  v36 = v35 ^ __ROR4__(v32, 29);
  if (v21 == v10 - 1416581676 < a4)
  {
    v21 = v10 - 1416581676 < v11;
  }

  v37 = v36 - v34 + v33;
  v38 = v37 - 1856150340;
  v39 = v34 - (v37 - 1856150340);
  v40 = v35 + a8 + v37;
  HIDWORD(v41) = v38;
  LODWORD(v41) = v38;
  v42 = (v39 - v40 + (v41 >> 29) - 1631140561) ^ v38 ^ v33;
  v43 = (((v42 ^ 0xA321FA41) + v14) ^ ((v42 ^ 0x70910400) + 1205240719) ^ ((v42 ^ v15) - 453543472)) - 44970056;
  return (*(STACK[0x6A0] + 8 * ((14 * !v21) | a9)))(v39 ^ v43 ^ ((v43 ^ 0x5E6C5CF7) - 966597560) ^ ((v43 ^ 0xEED6701F) + 1993918640) ^ ((v43 ^ 0x24B1B45C) - 1128330003) ^ ((v43 ^ 0xF3FADFFB) + 1811179340) ^ 0xF672C178, v43, (v43 + v40));
}

uint64_t sub_10070501C()
{
  v1 = STACK[0x4DA8];
  v2 = *(STACK[0x4DA8] + 72);
  STACK[0x61C8] = *(STACK[0x4DA8] + 80);
  STACK[0x8980] = v2;
  STACK[0x9630] = *(v1 + 48);
  STACK[0x5840] = *(v1 + 104);
  v3 = STACK[0xF18];
  STACK[0x31A0] = *(STACK[0xF18] + 8 * (v0 ^ 0x171B0));
  return (*(v3 + 8 * ((((v0 ^ 0x171B0 | 0x5275626Fu) < 0xCBA9B15) * ((((v0 ^ 0x171B0) - 1216) | 0xC11) ^ 0x3301)) ^ ((v0 ^ 0x171B0) + 3015))))();
}

uint64_t sub_1007050E8@<X0>(int a1@<W0>, char a2@<W2>, int a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, unsigned int a7@<W8>)
{
  v24 = v11 * v12;
  LODWORD(STACK[0x698]) = v8 ^ a3;
  v25 = (v8 ^ a3) + a1;
  v26 = (v10 + (v9 + v11));
  v27 = v24 + v13;
  v28 = &v26[-((2 * v26) & 0x30B66B587B73D57ELL)];
  v30 = v27 % v25;
  v31 = ((((&v28[v16] << 56) | 0x1FFFFFFFFFFFFFFLL) & (v23 ^ (&v28[v16] >> 8)) & 0x3FFFFFFFFFFFFFFFLL | ((&v28[v16] >> 6) << 62)) ^ 0xB984FDB64955A888) + v14;
  v32 = v31 ^ v20;
  v24 += 189329220;
  v33 = v24 * v21;
  v34 = STACK[0x6B0];
  v35 = v24 - 972 * (v33 >> 41);
  v36 = v31 ^ v17;
  v37 = __ROR8__(v32, 8) + v36;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = v37 ^ ~__ROR8__(v36, 61);
  v40 = (v37 << 56) ^ 0xE500000000000000;
  v38 ^= 0x14BA074A2F986FE5uLL;
  v41 = (a6 ^ (v37 >> 8)) + v38;
  v42 = (v41 + v40) ^ a5;
  *(&v43 + 1) = v38;
  *&v43 = v39;
  v44 = (v43 >> 61) ^ 0xA462DC1A5A8F758ELL ^ (v42 - 2 * (v42 & 0x2462DC1A5A8F758FLL ^ v41 & 6) - 0x5B9D23E5A5708A77);
  v45 = (v44 + __ROR8__(v42, 8)) ^ v19;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (v46 + __ROR8__(v45, 8)) ^ v22;
  v48 = v47 ^ __ROR8__(v46, 61);
  *(STACK[0x6B0] + v30) ^= *v26;
  v49 = v48 + __ROR8__(v47, 8);
  *&v43 = __ROR8__(v48, 61);
  v50 = ((v49 & v15 ^ v15) + (v49 & v15)) & ((v43 | 0xD5BB700A04341592) - (v43 & v18) + v18) ^ v49;
  v51 = v49 ^ v15 ^ v43;
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x8FB22143FEDB6CB3;
  *(v34 + v35) ^= ((__ROR8__(v52, 8) + (v52 ^ __ROR8__(v51, 61))) ^ a4) >> (((a2 + 8 * v28) ^ 0x5E) & 8) >> (((a2 + 8 * v28) ^ 0x5E) & 0x30 ^ 0x20u);
  v53 = a7 > v11 + 1961916143;
  if (a7 < v7 != (v11 + 1961916143) < 0x8F544CB2)
  {
    v53 = a7 < v7;
  }

  return (*(STACK[0x6A0] + 8 * ((9418 * v53) ^ (v8 + 21125))))(3463232587);
}

uint64_t sub_10070537C()
{
  v5 = v2 > 0x7FFFFFFF1B0C5509;
  v6 = 5953 * (v0 ^ 0x527);
  v7 = (v0 + 5483);
  v8 = v0 + 43402;
  v9 = (v7 ^ 0xC31DA1F21FD3BDEELL) + *(v1 + 8);
  v10 = v5 ^ (v9 < 0x80000000E4F3AAF6);
  v11 = v9 < v3;
  if (!v10)
  {
    v5 = v11;
  }

  return (*(v4 + 8 * ((!v5 * (v6 - 11779)) ^ v8)))();
}

uint64_t sub_100705468@<X0>(int a1@<W3>, int a2@<W5>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  v14 = ((v7 & v8) + (v8 & 0x61) + (v8 & 0x61 ^ 0x161)) * a2;
  LOBYTE(v14) = ((16 * *(v13 + a5 + (v8 >> 4) * a2 - ((((a5 + (v8 >> 4) * a2) * v10) >> 32) >> 9) * v11)) | 2) ^ *(v13 + v14 - (((v14 * v10) >> 32) >> 9) * v11);
  v15 = (((v14 ^ 2) - 61) ^ ((v14 ^ 0xCE) + 15) ^ ((v14 ^ 0xD1) + 18)) - 33;
  v16 = v15 & 0xB0 | 3;
  v17 = v16 ^ v15 & 6;
  v18 = v15 ^ 0x30;
  v19 = a3 + ((*(v5 + ((v14 ^ 0xF5) * a1 + 24037 - (((((v14 ^ 0xF5u) * a1 + 24037) * a4) >> 16) >> 8) * v9)) ^ v14 ^ v15 ^ (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v15 & (2 * v16) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xFE) * a2;
  *(v13 + v8 * a2 + 9768 - ((((v8 * a2 + 9768) * v10) >> 32) >> 9) * v11) = *(v13 + (v19 - ((v19 * v12) >> 32) * v11));
  return (*(STACK[0x6A0] + 8 * ((90 * (v8 == 255)) ^ v6)))();
}

uint64_t sub_100705930@<X0>(uint64_t a1@<X8>)
{
  *(v6 - 248) = a1;
  *(v6 - 256) = (v1 - 1650505768) ^ (155453101 * ((((2 * v4) | 0x3A55552C) - v4 - 489335446) ^ 0xFB0CB159));
  v7 = (*(v5 + 8 * (v1 ^ 0x62601A8E)))(v6 - 256);
  *(v2 + 304) = 0;
  return (*(v5 + 8 * v3))(v7);
}

uint64_t sub_100705A90()
{
  v1 = STACK[0x480];
  v1[15] = STACK[0x80B];
  v1[14] = STACK[0x80A];
  v1[13] = STACK[0x809];
  v1[12] = STACK[0x808];
  v1[11] = STACK[0x807];
  v1[10] = STACK[0x806];
  v1[9] = STACK[0x805];
  v1[8] = STACK[0x804];
  v1[7] = STACK[0x803];
  v1[6] = STACK[0x802];
  v1[5] = STACK[0x801];
  v1[4] = STACK[0x800];
  v1[3] = STACK[0x7FF];
  v1[2] = STACK[0x7FE];
  v1[1] = STACK[0x7FD];
  return (*(STACK[0x430] + 8 * v0))();
}

uint64_t sub_100705B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, unsigned int a14)
{
  if (a14 < 0x6DD57988 != v14 + 1842706888 < (a13 & 0xE27FAF43 ^ 0x6DD57BCB))
  {
    v16 = v14 + 1842706888 < (a13 & 0xE27FAF43 ^ 0x6DD57BCB);
  }

  else
  {
    v16 = v14 + 1842706888 > a14;
  }

  return (*(v15 + 8 * ((100 * v16) ^ a12)))();
}

uint64_t sub_100705BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  *(v57 - 256) = 353670337 * a55 + v55 - 1650510637;
  *(v57 - 232) = 353670337 * a55 + 565524158;
  *(v57 - 248) = 0x2CB8161969575A1DLL - 353670337 * a55;
  *(v57 - 240) = 353670337 * a55 + 0x31B495479FA32553;
  v58 = (*(v56 + 8 * (v55 ^ 0x62601AD6u)))(v57 - 256);
  return (*(v56 + 8 * (v55 - 1650493950)))(v58);
}

uint64_t sub_100705C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a2 + 24) = STACK[0x6C0];
  v6 = STACK[0x6C8];
  *(a2 + 32) = *(STACK[0x6C8] + 80);
  *(v6 + 80) = a2;
  *(*(a2 + 32) + 24) = a2;
  *(a3 + 8) = ((a5 - 1450051865) & 0x566DF5FC ^ 0x79C4BC1D8A404240) - *(a3 + 8);
  return (*(v5 + 8 * a5))();
}

uint64_t sub_100705CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31)
{
  v34 = STACK[0x19A8];
  STACK[0x2088] = STACK[0x19A8];
  v35 = 634647737 * ((((v33 - 256) | 0x8731ADE8) - ((v33 - 256) & 0x8731ADE8)) ^ 0xEAA78214);
  *(v33 - 256) = v35 - 1431125376;
  *(v33 - 240) = a31 - v35 + 18735;
  *(v33 - 248) = v34;
  v36 = (*(v32 + 8 * (a31 + 49721)))(v33 - 256);
  LODWORD(STACK[0x16E8]) = (((v31 ^ 0xB122A33C) + 1323130052) ^ ((v31 ^ 0x90BEFA74) + 1866532236) ^ ((v31 ^ a31 ^ 0x236E ^ 0xC849B5FF) + 934699431)) - 371865855;
  STACK[0x18E8] = *(v32 + 8 * a31);
  return (*(v32 + 8 * (a31 + 16968)))(v36);
}

uint64_t sub_100706000()
{
  v2 = 297845113 * ((((&STACK[0x10000] + 3800) | 0xF38C7D2F) - ((&STACK[0x10000] + 3800) & 0xF38C7D28)) ^ 0x84BF61B1);
  LODWORD(STACK[0x10ED8]) = ((((v1 + 1995312265) ^ 0x4A9C7172) + (v0 ^ 0xC38DE96B)) ^ ((v0 ^ 0x3891562F) - 949048879) ^ (((((v1 + 1995312265) & 0xADFFDFBC) - 304402255) ^ v0) - 315193429)) - v2 + 1140833556;
  LODWORD(STACK[0x10EDC]) = v1 - v2 - 515113388;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x9761)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((53 * (LOBYTE(STACK[0x10EE0]) != 21)) ^ v1)))(v4);
}

uint64_t sub_1007062DC()
{
  STACK[0x1E20] = 0x22EE7698899D41C8;
  LODWORD(STACK[0x1C20]) = v1;
  LODWORD(STACK[0x83C]) = v1;
  LODWORD(STACK[0xAA0]) = v1;
  LODWORD(STACK[0x1D0C]) = v1;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_100706318()
{
  LODWORD(STACK[0x1838]) = v0 & 0xF0000000 ^ 0x4FA7ABC2;
  v2 = v0 & 0xFFFFFFF;
  v3 = (*(v1 + 414912))(LODWORD(STACK[0x11A8]) ^ 0xE9D5C711);
  STACK[0x1B30] = v3;
  if (v3)
  {
    v4 = v2 == 165660433;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return (*(v1 + 8 * ((5411 * v5) ^ 0x64F3u)))();
}

uint64_t sub_1007063A4@<X0>(unsigned int a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, char a4@<W7>, int a5@<W8>)
{
  v19 = (v8 + v14);
  v20 = (v8 ^ 0x2F) & (2 * (v8 & v14)) ^ v8 & v14;
  v21 = ((2 * (v8 ^ 0x67)) ^ 0x96) & (v8 ^ 0x67) ^ (2 * (v8 ^ 0x67)) & 0xCA;
  v22 = (((v5 + v19) ^ *(*v17 + (*v18 & 0x46620868))) & 0x7FFFFFFF) * v9;
  v23 = (v22 ^ HIWORD(v22)) * v9;
  v24 = (4 * (((4 * (v21 ^ 0x49)) ^ 0x20) & (v21 ^ 0x49) & ((16 * (v20 ^ 0xCB ^ v21 & (4 * v20))) ^ 0x30) ^ v20 ^ 0xCB ^ v21 & (4 * v20))) ^ (2 * v8);
  LODWORD(v23) = *(v10 + (v23 >> 24)) ^ *(v5 + v19) ^ *((v23 >> 24) + v13 + 2) ^ *(a2 + (v23 >> 24)) ^ v23 ^ (-9 * (v23 >> 24));
  v25 = ((v24 ^ a4) - 117) ^ ((v24 ^ 0xFC) - 76) ^ ((v24 ^ 0xCC) - 124);
  v26 = (v7 + (a5 + v19));
  v27 = ((*(*v17 + (*v18 & 0x72D7ACF8)) ^ v26) & 0x7FFFFFFF) * v9;
  v28 = (v27 ^ HIWORD(v27)) * v9;
  *v26 = *(v12 + (v28 >> 24)) ^ *(a3 + (v28 >> 24)) ^ *((v28 >> 24) + v15 + 2) ^ v28 ^ (9 * BYTE3(v28)) ^ (v8 + v25 * v11 + (v25 + 69) * ((((v23 ^ 0xF5) - 75) ^ ((v23 ^ 0xA4) - 26) ^ ((v23 ^ 0x51) + 17)) - 111) - 51);
  if (v6 < a1 != v8 - 229421342 < a1)
  {
    v29 = v6 < a1;
  }

  else
  {
    v29 = v8 - 229421342 < v6;
  }

  return (*(v16 + 8 * ((4 * !v29) | (8 * !v29) | 0x7832u)))();
}

uint64_t sub_1007066E4()
{
  STACK[0x1FD0] = v0;
  LODWORD(STACK[0x12D0]) = -1077688013;
  return (*(v2 + 8 * (v1 - 1650505868)))();
}

uint64_t sub_100706764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = (a69 + 4 * v71);
  v75 = *v74;
  v76 = v74[1];
  v77 = (a71 + 4 * v71);
  v78 = v77[1];
  *v74 = *v77;
  v74[1] = v78;
  *v77 = v75;
  v77[1] = v76;
  return (*(v73 + 8 * ((7834 * (v71 == 24)) ^ v72)))();
}

uint64_t sub_1007067B4()
{
  *v2 ^= 0x49u;
  v2[1] ^= 0x2Fu;
  v2[2] ^= 0xF8u;
  v2[3] ^= 0x26u;
  v2[4] ^= (v0 - 73) ^ 0xF3;
  v2[5] ^= 0xFDu;
  v2[6] ^= 0xA1u;
  v2[7] ^= 0x2Cu;
  v2[8] ^= 0xA3u;
  v2[9] ^= 0xC5u;
  v2[10] ^= 0xABu;
  v2[11] ^= 0x80u;
  v2[12] ^= 0xEFu;
  v2[13] ^= 0xF1u;
  v2[14] ^= 0x25u;
  v2[15] ^= 0xC9u;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100706990()
{
  v1 = (STACK[0xF10] - 777568063) & 0x2E58FDF3;
  v2 = STACK[0xF10] - 15576;
  LODWORD(STACK[0x5424]) = v0;
  return (*(STACK[0xF18] + 8 * ((6834 * (v0 == v1 - 371917535)) ^ v2)))();
}

uint64_t sub_100706A38@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 1125643875;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100706AA4@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v24 = ((a9 ^ v15) + a1) ^ a9 ^ ((a9 ^ a2) + a3) ^ ((a9 ^ a4) + a5) ^ ((v23 ^ a9 ^ v9) + v14);
  v25 = ((v24 ^ a6) + a7) ^ ((v24 ^ a8) + v17) ^ ((v24 ^ v18) + v19);
  *(v13 + v10) = v11 + v25 * v21 + v12 * (v25 + v20);
  return (*(v16 + 8 * (((v10 == 0) * v22) ^ v23)))();
}

uint64_t sub_100706B38()
{
  STACK[0xAC0] = v3;
  if (v0)
  {
    v5 = (v1 & 4) == ((v2 - 1221850268) & 0x48D3D6C9 ^ (v2 - 7634));
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v4 + 8 * ((56818 * v6) ^ v2)))();
}

uint64_t sub_100706C50(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = v77 - 345209289 * v76 + 2033716254 + ((((v72 - 30771) | 0x16A6) + 610278764 + (a3 ^ 0xDB9FA2DE)) ^ ((a3 ^ 0xC473AB12) + 999052526) ^ ((a3 ^ ((v72 - 307) | 0x148) ^ 0x2A7CD4C5) - 712799645));
  v79 = v78 ^ (2014252218 * *(a71 + 4 * v75)) ^ ((v78 ^ 0x391AB5A4) - 1585837046) ^ ((v78 ^ 0x8E8F6896) + 384815420) ^ ((v78 ^ 0xEFD56EBF) + 2008405779) ^ ((v78 ^ 0x3FDFF5DF) - 1480635277);
  v80 = ((v79 ^ 0xFE239148) + 1814427353) ^ ((v79 ^ 0xF62E9104) + 1680406165) ^ ((v79 ^ 0x6F92461E) - 40623729);
  v81 = ((2 * v71) & 0xCE) + (v71 ^ 0x79FDFEB7FD779E67);
  v82 = v81 - 0x79FDFEB7FD779EE4;
  v83 = (STACK[0x218] + 4 * v81 + 0x180805200A218664);
  if (v82 < 0xFFFFFFFFFFFFFF83)
  {
    v83 = (STACK[0x220] + 4 * v82);
  }

  v84 = STACK[0x200];
  *(STACK[0x200] + 4 * (a4 & 0x1F)) -= (32737052 * (v80 - (((*v83 ^ 0x3D7BF736) + 1115949258) ^ ((*v83 ^ 0x389A38EA) - 2023373034) ^ ((*v83 ^ 0x3071B38D) + 260983923))) + 874129872) ^ 0x15084036;
  return (*(STACK[0x228] + 8 * ((27 * (*(v84 + 4 * ((v73 + v74 + 15) & 0x1F)) % 0x1Bu == 0)) ^ v72)))();
}

uint64_t sub_100706FA0()
{
  v2 = v0 - 16331;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 4907)))();
  *(v1 + 120) = 0;
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1007072FC()
{
  v11 = v1 < v2;
  if (v11 == v8 + v6 < ((v10 + v4) & v5) + v7)
  {
    v11 = v8 + v6 < v0;
  }

  return (*(STACK[0xF18] + 8 * ((v9 & ~((v10 + v3) ^ v11) | (2 * (v9 & ~((v10 + v3) ^ v11)))) ^ v10)))();
}

uint64_t sub_100707368()
{
  v1 = STACK[0x2940];
  *v1 = -371865822;
  *(v1 + 8) = 0x981390C2FED9246;
  v2 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v0 + 6356) ^ v0)))();
}

uint64_t sub_1007073E8()
{
  if (v0 == 1883846531)
  {
    v2 = -131670339;
  }

  else
  {
    v2 = -1970944299;
  }

  *(STACK[0x8DE0] + 316) = v2;
  v3 = STACK[0x1AE8];
  v4 = STACK[0x33F0];
  v5 = 155453101 * (&STACK[0x10ED8] ^ 0xBC775EF5E6261BCFLL);
  LODWORD(STACK[0x10F08]) = (v1 + 7603) ^ v5;
  STACK[0x10F28] = v3;
  STACK[0x10EF8] = 0;
  STACK[0x10F00] = ((81 * (v1 ^ 0x9722u) - 0x741B87B302879CF8) ^ v4) - v5;
  LODWORD(STACK[0x10EE0]) = v5 + 1497668682;
  STACK[0x10F18] = &STACK[0x4530];
  STACK[0x10F10] = &STACK[0x3F8C];
  STACK[0x10EF0] = &STACK[0x7368];
  STACK[0x10EE8] = 0;
  STACK[0x10ED8] = &STACK[0xF28] ^ 0xA72D128673B06877;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0x5B2D)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((LODWORD(STACK[0x10F20]) == -371865839) * ((327 * (v1 ^ 0x9752)) ^ 0xAC85)) ^ v1)))(v7);
}

uint64_t sub_1007075E0@<X0>(uint64_t a1@<X8>)
{
  v5 = (*(v1 + 2 + 6 * v2 + 2) + 5596);
  v6 = (*(v1 + 2 + 6 * v3 + 2) + 5596);
  v7 = v6 < 0x21A1;
  v8 = v5 < v6;
  if (v7 != v5 < (((v4 - 30647) & 0x8F6F) - 26023))
  {
    v8 = v7;
  }

  return (*(a1 + 8 * ((56 * v8) ^ v4)))();
}

uint64_t sub_100707670@<X0>(char a1@<W8>)
{
  v2 = (((v1 + 34) | 0x45) ^ 0x6A) - ((((a1 - LODWORD(STACK[0x22A4])) & 0xF ^ 0xA2) + 96) ^ (((a1 - LODWORD(STACK[0x22A4])) & 0xF ^ 0x9A) + 104) ^ (((a1 - LODWORD(STACK[0x22A4])) & 0xF ^ (((v1 + 64) | 0x84) - 116)) - 58));
  LOBYTE(STACK[0x19CF]) = v2;
  v3 = v2 & 0x9B ^ 0x59;
  v4 = (v2 ^ (2 * ((v2 ^ 0x68) & (2 * ((v2 ^ 0x68) & (2 * ((v2 ^ 0x68) & (2 * ((v2 ^ 0x68) & (2 * (v2 & (2 * (((2 * v2) & 0x52 ^ 0x72) & v2 ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3))) == 155;
  return (*(STACK[0xF18] + 8 * ((v4 | (4 * v4)) ^ v1)))();
}

uint64_t sub_1007077D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v43 = *(v32 + 4 * (a8 + a1));
  v44 = (*(v29 + 4 * (a8 + a1)) ^ v40) + (HIDWORD(v26) ^ 0x69D8F4A0) + ((((v43 ^ (a3 + v28 + v38)) + v39) ^ ((v43 ^ a6) + a7) ^ ((v43 ^ v33) + v35)) + v40) * v31;
  *(v29 + 4 * (a8 + v37)) = (v44 - (a2 & (2 * v44)) + a4) ^ v36;
  v45 = a8 + v41 < v42;
  if (v30 > v34 != a8 + v41 < v27)
  {
    v45 = v30 > v34;
  }

  return (*(a26 + 8 * ((v45 * a5) ^ a3)))();
}

uint64_t sub_100707890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11, char a12, uint64_t a13, unsigned int a14, uint64_t a15, uint64_t a16, int a17, char *a18)
{
  a13 = v19 + 12;
  a18 = &a12;
  a15 = v21 + a11;
  a16 = v19;
  a14 = (v22 ^ 0x63E4) - 906386353 * (&a13 ^ 0x3101CD24) + 22861;
  (*(v18 + 8 * (v22 ^ 0xE495)))(&a13);
  return (*(v18 + 8 * (((a17 == -371865839) * ((((v22 ^ 0x63E4) + 652585519) & 0xD91A1EFF) + (((v22 ^ 0x63E4) + 30636) ^ 0x7236))) ^ v22 ^ 0x63E4)))(v20);
}

uint64_t sub_100707A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = -3 * (((*(STACK[0xED0] + (a4 ^ a2)) ^ 0xC5) + 59) ^ ((*(STACK[0xED0] + (a4 ^ a2)) ^ 0xF7) + 9) ^ ((*(STACK[0xED0] + (a4 ^ a2)) ^ (a3 + 119) ^ 0x5B) + 68)) - 92;
  v7 = v6 & 0x5E ^ 0x4B;
  *(v4 + v5) = v6 ^ (2 * ((v6 ^ 0x48) & (2 * ((v6 ^ 0x48) & (2 * ((v6 ^ 0x48) & (2 * ((v6 ^ 0x48) & (2 * (v6 & (2 * (v7 ^ v6 & 0x16)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ 0xD0;
  return (*(STACK[0xF18] + 8 * a3))();
}

uint64_t sub_100707B38()
{
  LODWORD(STACK[0x21F8]) = STACK[0x20D4];
  v1 = *(STACK[0xE88] + 32) + 1887310820;
  LODWORD(STACK[0x21FC]) = ((v1 ^ 0xF50409E5) + 2055595508) ^ v1 ^ ((v1 ^ 0x4B4F6966) - 993098383) ^ ((v1 ^ 0xB8CA8C95) + 927686788) ^ ((v1 ^ 0x76FFFFFF) - 109177878) ^ 0x1803F9D;
  return (*(v0 + 40672))();
}

uint64_t sub_100707C28()
{
  LOBYTE(STACK[0x3E8B]) = 123;
  *(STACK[0x8DE0] + 316) = -131670339;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x9AD1 ^ ((v0 - 2311) | 0xA03))))();
}

uint64_t sub_100707D20()
{
  STACK[0x8FE8] = STACK[0x1320];
  LODWORD(STACK[0x44A8]) = STACK[0x1A64];
  LODWORD(STACK[0x7FD8]) = 1936287598;
  LODWORD(STACK[0x704C]) = -2116087607;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100707D90()
{
  v7 = 23958;
  atomic_compare_exchange_strong((*(v6 + 8 * v0) + v3), &v7, v4);
  return (*(STACK[0x430] + 8 * (((v7 == v5) * v1) ^ v2)))();
}

uint64_t sub_100707DF4()
{
  v2 = v1[1];
  v3 = *v1 - 1348863349;
  if (v3 < 0xDFBC657A != v2 > ((v0 + 1203257447) & 0xB847E3DD) + 541275836)
  {
    v4 = v3 < 0xDFBC657A;
  }

  else
  {
    v4 = v3 > v2 - 541301382;
  }

  return (*(STACK[0xF18] + 8 * ((46523 * v4) ^ v0)))();
}

uint64_t sub_100708300(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 8 * a1;
  v9 = *(STACK[0xED0] + 4 * (((((a1 ^ 0x4EDF3EF3) + 210760516) ^ ((a1 ^ 0x2453DDA1) + 1711476754) ^ ((a1 ^ 0x6F90808Fu) + 767577408)) * LODWORD(STACK[0xE70]) - 1741472711) % 0x26C4));
  v10 = *(STACK[0xEC0] + 4 * ((707 * (((v9 ^ 0x2CBB3556) + 1013796129) ^ ((v9 ^ 0xCE15CD3F) - 557599414) ^ ((v9 ^ 0x3565C087) + 632535282)) + 439831093) % 0x300));
  v11 = (((v8 ^ 0x64F78F69) - 1598689702) ^ ((v8 ^ 0x699ACB82) - 1378309453) ^ ((v8 ^ 0x258E5A0A) - 506709189)) * v5 + 680741623;
  v12 = (((v8 ^ 0xDB9B863E) - 962169427) ^ ((v8 ^ 0x425CC3FD) + 1600204912) ^ ((v8 ^ 0xB1245B23) - 1407604558)) * v5 - 1497252578;
  v13 = v11 - ((((v11 >> 5) * v6) >> 32) >> 1) * v7;
  v14 = (((v8 ^ 0xCD692544) - 90174985) ^ ((v8 ^ 0xF92A9CF7) - 823939002) ^ ((v8 ^ 0x1CA0A750) + 728337379)) * v5 + 1017580663;
  v15 = v12 - ((((v12 >> 5) * v6) >> 32) >> 1) * v7;
  v16 = (((a1 ^ 0xF6D268F8) + 153982728) ^ ((a1 ^ 0x96B28224) + 1766686172) ^ ((a1 ^ 0x657C8908) - 1702660360)) + 1918465789;
  v17 = STACK[0xEB0] + (*(STACK[0xED0] + 4 * ((2899 * (((v10 ^ 0x24836511) - 1789730493) ^ ((v10 ^ 0x106788CF) - 1581904739) ^ ((v10 ^ 0x25B96433u) - 1805066143)) - 301967853) % 0x26C4)) ^ 0xC6A71E2);
  v18 = (v16 ^ 0xAF2E8D1) & (2 * (v16 & 0x92C2ECD8)) ^ v16 & 0x92C2ECD8;
  v19 = ((2 * (v16 ^ 0xF72A941)) ^ 0x3B608B32) & (v16 ^ 0xF72A941) ^ (2 * (v16 ^ 0xF72A941)) & 0x9DB04598;
  v20 = (v19 ^ 0x19000100) & (4 * v18) ^ v18;
  v21 = v14 - ((((v14 >> 5) * v6) >> 32) >> 1) * v7;
  v22 = ((4 * (v19 ^ 0x84904489)) ^ 0x76C11664) & (v19 ^ 0x84904489) ^ (4 * (v19 ^ 0x84904489)) & 0x9DB04598;
  v23 = ((16 * (v22 ^ 0x89304199)) ^ 0xDB045990) & (v22 ^ 0x89304199) ^ (16 * (v22 ^ 0x89304199)) & 0x9DB04590;
  v24 = (v22 ^ 0x14800400) & (16 * v20) ^ v20 ^ 0x9DB04599 ^ (v23 ^ 0x99004100) & (((v22 ^ 0x14800400) & (16 * v20) ^ v20) << 8);
  v25 = (((v8 ^ 0xF3D701D5) - 1824179990) ^ ((v8 ^ 0x66730C41) + 115422590) ^ ((v8 ^ 0xBD471372) - 573232561)) * v5 - 1458654218;
  v26 = v25 - ((((v25 >> 5) * v6) >> 32) >> 1) * v7;
  v27 = (((v8 ^ 0x47254C45) - 321532050) ^ ((v8 ^ 0x48D356C1) - 484190742) ^ ((v8 ^ 0x27150466) - 1931114673)) * v5 + 1855242630;
  v28 = v16 ^ (2 * ((v24 << 16) & v4 ^ v24 ^ ((v24 << 16) ^ 0x45990000) & (((v23 ^ 0x4B00409) << 8) & v4 ^ 0xDB00000 ^ (((v23 ^ 0x4B00409) << 8) ^ 0x30450000) & (v23 ^ 0x4B00409))));
  v29 = (((v8 ^ 0x628B8F8A) + 451707635) ^ ((v8 ^ 0x902B6845) - 397646530) ^ ((v8 ^ 0xDA43F92B) - 1574636460)) * v5 + 2117954500;
  v30 = (1864610357 * ((1864610357 * ((v17 ^ LODWORD(STACK[0xE80])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v17 ^ LODWORD(STACK[0xE80])) & 0x7FFFFFFF)) >> 16))) >> 24;
  v31 = v29 - ((((v29 >> 5) * v6) >> 32) >> 1) * v7;
  v32 = (53 * ((53 * (v17 ^ LOBYTE(STACK[0xE80]))) ^ ((1864610357 * ((v17 ^ LODWORD(STACK[0xE80])) & 0x7FFFFFFF)) >> 16))) ^ *v17;
  v33 = (((v8 ^ 0x61C5C8C8) - 1376067174) ^ ((v8 ^ 0xFA5C76EB) + 912482235) ^ ((v8 ^ 0xB37AA0C4) + 2135263638)) * v5 - 1108811782;
  v34 = v33 - ((((v33 >> 5) * v6) >> 32) >> 1) * v7;
  v35 = (((v8 ^ 0x2FBE88D) + 1257636183) ^ ((v8 ^ 0x3DCB75BF) + 1975950437) ^ ((v8 ^ 0x17D383D7) + 1608411661)) * v5 - 1073835342;
  v36 = v32 ^ *(STACK[0xE60] + v30) ^ *(v30 + STACK[0xE40] + 3) ^ *(v30 + STACK[0xE30] + 1) ^ (-57 * v30);
  v37 = *(a4 + 8 * v13);
  v38 = *(a4 + 8 * (v27 - ((((v27 >> 5) * v6) >> 32) >> 1) * v7)) ^ 0x9FD1CC74BE245690;
  v39 = 0xCD96EBEF8ADE94D1;
  if ((v36 & 8) != 0)
  {
    v39 = v38;
  }

  v40 = v37 ^ 0x675DA8E2707DB59;
  if ((((v32 ^ *(STACK[0xE60] + v30) ^ *(v30 + STACK[0xE40] + 3)) ^ (*(v30 + STACK[0xE30] + 1) ^ (-57 * v30))) & 1) == 0)
  {
    v40 = 0x5432FD1513FD1918;
  }

  if ((((v32 ^ *(STACK[0xE60] + v30) ^ *(v30 + STACK[0xE40] + 3)) ^ (*(v30 + STACK[0xE30] + 1) ^ (-57 * v30))) & 2) != 0)
  {
    v41 = *(a4 + 8 * v15) ^ 0xF3C0EF5189946FF9;
  }

  else
  {
    v41 = 0xA187C8CABD6EADB8;
  }

  v42 = *(a4 + 8 * v31);
  v43 = *(a4 + 8 * v26) ^ 0x63F846145A0BB9CELL;
  if (((((v36 ^ 0x58) - 107) ^ ((v36 ^ 0xB5) + 122) ^ ((v36 ^ 0xED) + 34)) + 51) >= 0)
  {
    v43 = 0x31BF618F6EF17B8FLL;
  }

  v44 = v42 ^ 0x2C14392000196416;
  v45 = *(a4 + 8 * (v35 - ((((v35 >> 5) * v6) >> 32) >> 1) * v7)) ^ 0x2FAC3ABBDDD23F65;
  if ((((v32 ^ *(STACK[0xE60] + v30) ^ *(v30 + STACK[0xE40] + 3)) ^ (*(v30 + STACK[0xE30] + 1) ^ (-57 * v30))) & 0x10) == 0)
  {
    v45 = 0x7DEB1D20E928FD24;
  }

  if ((((v32 ^ *(STACK[0xE60] + v30) ^ *(v30 + STACK[0xE40] + 3)) ^ (*(v30 + STACK[0xE30] + 1) ^ (-57 * v30))) & 0x20) == 0)
  {
    v44 = 0x7E531EBB34E3A657;
  }

  v46 = *(a4 + 8 * v34) ^ 0x677AE9CC894590ADLL;
  if ((((v32 ^ *(STACK[0xE60] + v30) ^ *(v30 + STACK[0xE40] + 3)) ^ (*(v30 + STACK[0xE30] + 1) ^ (-57 * v30))) & 0x40) == 0)
  {
    v46 = 0x353DCE57BDBF52ECLL;
  }

  v47 = *(a4 + 8 * v21) ^ 0x8A7CDF150D937E38;
  if ((v36 & 4) == 0)
  {
    v47 = 0xD83BF88E3969BC79;
  }

  STACK[0xE00] ^= v40 ^ v41 ^ v44 ^ v39 ^ v45 ^ v47 ^ v46 ^ 0xE7228AFD13A1EE18 ^ v43;
  return (*(STACK[0xF18] + 8 * ((509 * ((((v28 ^ 0x8760A813) - 553561133) ^ ((v28 ^ 0xA37E0781) - 81789887) ^ ((v28 ^ 0x869CC878) - 553831494)) + 85746644 > 0x2F)) ^ LODWORD(STACK[0xE90]))))(v28 ^ 0xA79E043E);
}

uint64_t sub_100709160()
{
  STACK[0x5C50] = 0x3AE1413A0D5CA2C2;
  LODWORD(STACK[0x1374]) = -1224690616;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1007091AC(unint64_t a1)
{
  STACK[0x9D90] = a1;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((((v1 + 4205) | 0x8201) ^ 0xA1F7) + v1)))();
}

uint64_t sub_100709200()
{
  v1 = STACK[0x4C08];
  *v1 = -371865831;
  *(v1 + 8) = 0x981390C2FED9246;
  v2 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v0 ^ 0x14CA) + v0)))();
}

uint64_t sub_100709284()
{
  v3 = *(STACK[0x6F38] + v1);
  v4 = (((LODWORD(STACK[0x854C]) ^ 0xB3258085) + 1289387899) ^ ((LODWORD(STACK[0x854C]) ^ 0x3DC0C002) - 1036042242) ^ ((LODWORD(STACK[0x854C]) ^ 0x67308796) + (v2 ^ 0x98CF3400))) - 54746966;
  v5 = 634647737 * ((((&STACK[0x10000] + 3800) | 0xDE5E8576) - ((&STACK[0x10000] + 3800) | 0x21A17A89) + 564230793) ^ 0xB3C8AA8A);
  STACK[0x10F00] = v0;
  LODWORD(STACK[0x10ED8]) = v4 ^ v5;
  STACK[0x10EE0] = &STACK[0x4824];
  STACK[0x10EE8] = &STACK[0x4AFC];
  LODWORD(STACK[0x10EF8]) = v2 - v5 + 20215;
  STACK[0x10EF0] = v3;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 32346)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_1007094E8()
{
  v1 = STACK[0xF18];
  STACK[0x6550] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 31573 + 21817 * (v0 ^ 0x9A3))))();
}

uint64_t sub_10070959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, int a28)
{
  a28 = v30 + 739552252 + v28 - 1156450495;
  *(v31 - 120) = v30 + 193924789 * ((((v31 - 128) | 0x8E5C7FF1) + (~(v31 - 128) | 0x71A3800E)) ^ 0x38E74D96) - 12733;
  *(v31 - 128) = &a25;
  *(v31 - 112) = v29;
  (*(a24 + 8 * (v30 ^ 0xAE92)))(v31 - 128);
  *(v31 - 104) = v30 - 1603510583 * ((((v31 - 128) | 0x59D4094A) - (v31 - 128) + ((v31 - 128) & 0xA62BF6B0)) ^ 0xCE0F3BE1) + 23713;
  *(v31 - 120) = v29;
  *(v31 - 112) = &a27;
  v32 = (*(a24 + 8 * (v30 + 26315)))(v31 - 128);
  return (*(a24 + 8 * ((15 * (*(v31 - 128) > ((v30 - 2019812423) & 0x7863CEFFu) + 307041606)) ^ v30)))(v32);
}

uint64_t sub_1007096DC@<X0>(uint64_t a1@<X8>)
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
  *(a1 + 120) = STACK[0x1890];
  v6 = STACK[0x9A4];
  v7 = STACK[0x16A8];
  *(a1 + 128) = STACK[0x1230];
  *(a1 + 132) = v6;
  *(a1 + 136) = 0;
  return (*(v3 + 8 * (((v7 == 0) * (((v1 + 39006) ^ 0xE7FE) - 12219)) ^ v1)))();
}

uint64_t sub_100709774@<X0>(unsigned int a1@<W8>)
{
  v8 = a1 < v1;
  *(*(v5 + 16) + 8 * (v3 - 1085118216)) = v4;
  if (v8 == v3 - 1557456875 < ((v7 + 1650477330) ^ 0x81B87F4E))
  {
    v8 = v3 - 1557456875 < a1;
  }

  return (*(v6 + 8 * ((v8 * v2) ^ v7)))();
}

uint64_t sub_1007097F0()
{
  v5 = v4 - 1;
  STACK[0x568] = v5;
  v6 = ((v3 << (((2 * v1) ^ 0xFEu) - 89)) & 0xBB84D88 ^ 0x5DC26C4) & v3;
  v7 = ((2 * (v3 ^ 0x1D)) ^ 0xB2) & (v3 ^ 0x1D) ^ (2 * (v3 ^ 0x1D)) & 0xD8;
  *(v0 + v5) = (v3 ^ (2 * (((4 * (v7 ^ 0x49)) & 0xD8 ^ 0x59 ^ ((4 * (v7 ^ 0x49)) ^ 0x64) & (v7 ^ 0x49)) & (16 * ((v7 ^ 0x59) & (4 * v6) ^ v6)) ^ (v7 ^ 0x59) & (4 * v6) ^ v6)) ^ 0x7E) * (v3 - 43);
  if (v2 < 0x4046B82C != STACK[0x568] > 0xFFFFFFFFBFB947D3)
  {
    v8 = STACK[0x568] > 0xFFFFFFFFBFB947D3;
  }

  else
  {
    v8 = STACK[0x568] + 1078376492 > v2;
  }

  return (*(STACK[0x430] + 8 * ((10797 * v8) ^ v1)))();
}

uint64_t sub_100709940@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  v64 = 4 * (v63 - 506509310);
  v65 = *(*(a32 - 1680276466) + (*(a33 - 231415367) & 0x4E5E1FD0)) + a31 + v64;
  *(&a62 + v64) ^= (-1865056662 * (a31 + v64)) ^ *(a31 + v64) ^ *((a1 ^ 0x8FEE9E1770D05856 ^ qword_1010C0550) + ((v65 + 1314791379) & (qword_1010C0540 ^ 0x7226FCCC))) ^ *((a1 ^ 0x8FEE9E1770D05856 ^ qword_1010C0550) + ((v65 + 1314791381) & (qword_1010C0540 ^ 0x7226FCCC))) ^ 0xDE8B61B9;
  return (*(v62 + 8 * ((19847 * (a1 > 0x3819605B)) ^ (a1 - 1809827003))))();
}

uint64_t sub_100709AFC@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v9 = (STACK[0x14C8] + (v2 - 844753643 + LODWORD(STACK[0xF3C])));
  v10 = (*(v3 + 8) + ((v4 ^ 0xC4211347) + 9 * a2) % (v5 - 397762955));
  v11 = *(*v8 + (*STACK[0x800] & v6));
  v12 = 1864610357 * ((1864610357 * ((v11 ^ v10) & 0x7FFFFFFF)) ^ ((1864610357 * ((v11 ^ v10) & 0x7FFFFFFF)) >> 16));
  v13 = *v9;
  LOBYTE(v10) = *(STACK[0x6D8] + (v12 >> 24)) ^ *v10 ^ *(STACK[0x6E0] + (v12 >> 24)) ^ *(STACK[0x6D0] + (v12 >> 24)) ^ v12 ^ (-109 * BYTE3(v12));
  v14 = 1864610357 * ((1864610357 * ((v11 ^ v9) & 0x7FFFFFFF)) ^ ((1864610357 * ((v11 ^ v9) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v14) = *(STACK[0x6D8] + (v14 >> 24)) ^ v13 ^ *(STACK[0x6E0] + (v14 >> 24)) ^ *(STACK[0x6D0] + (v14 >> 24)) ^ v14 ^ (-109 * BYTE3(v14));
  *(a1 + 1519) = (((v14 ^ 0x90) + 103) ^ ((v14 ^ 0x85) + 116) ^ ((v14 ^ 0x15) - 28)) - (((v10 & 0xFE ^ 0xE4) + 36) ^ ((v10 & 0xFE ^ 0x19) - 33) ^ ((v10 & 0xFE ^ 0xFC) + 60)) - 48;
  return (*(v7 + 8 * v4))();
}

uint64_t sub_100709D50@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x255C]) = v1;
  v6 = ((a1 + 570432847) | 0x40609012) + v1 - 1526813951;
  v7 = (a1 ^ 0x2885) + v2 + 158264516;
  v8 = (v7 < 0x2B8483D3) ^ (v6 < 0x2B8483D3);
  v9 = v6 < v7;
  if (v8)
  {
    v9 = v7 < 0x2B8483D3;
  }

  if (v3 != v4)
  {
    v9 = 0;
  }

  return (*(v5 + 8 * ((17909 * v9) ^ a1)))();
}

uint64_t sub_10070A51C(uint64_t a1)
{
  v3 = (LODWORD(STACK[0xA04]) + 4);
  v4 = (v3 | ((v3 < 0x4ED1630A) << 32)) + STACK[0x22D8];
  v5 = STACK[0x1EC0];
  *(v4 - 1322345211) = *(STACK[0x1EC0] + 63) ^ v1;
  *(v4 - 1322345212) = v5[62] ^ v1;
  *(v4 - 1322345213) = v5[61] ^ v1;
  *(v4 - 1322345214) = v5[60] ^ v1;
  *(v4 - 1322345215) = v5[59] ^ v1;
  *(v4 - 1322345216) = v5[58] ^ v1;
  *(v4 - 1322345217) = v5[57] ^ v1;
  *(v4 - 1322345218) = v5[56] ^ v1;
  *(v4 - 1322345219) = v5[55] ^ v1;
  *(v4 - 1322345220) = v5[54] ^ v1;
  *(v4 - 1322345221) = v5[53] ^ v1;
  *(v4 - 1322345222) = v5[52] ^ v1;
  *(v4 - 1322345223) = v5[51] ^ v1;
  *(v4 - 1322345224) = v5[50] ^ v1;
  LODWORD(STACK[0xA04]) = v3;
  *(v4 - 1322345225) = v5[49] ^ v1;
  *(v4 - 1322345226) = v5[48] ^ v1;
  return (*(v2 + 162792))(a1, *STACK[0x800]);
}

uint64_t sub_10070AA7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v24 = v22 - 1;
  STACK[0x480] = v22 - 1;
  v25 = (v23 ^ v12) & (2 * (v23 & v20)) ^ v23 & v20;
  v26 = ((2 * (v23 ^ 0x9F)) ^ v13) & (v23 ^ 0x9F) ^ (2 * (v23 ^ 0x9F)) & v14;
  v27 = v23 ^ (2 * ((((4 * (v26 ^ v15)) ^ a2) & (v26 ^ v15) ^ (4 * (v26 ^ v15)) & a3) & (16 * ((v26 ^ v11) & (4 * v25) ^ v25)) ^ (v26 ^ v11) & (4 * v25) ^ v25));
  v28 = ((v27 ^ a4) + a5) ^ ((v27 ^ a6) + a7) ^ ((v27 ^ a8) + v16);
  *(a1 + v24) = a9 + v28 * v19 + v9 * (v28 + v18);
  return (*(v17 + 8 * (((STACK[0x480] != 0) * v21) ^ v10)))();
}

uint64_t sub_10070AC9C()
{
  LODWORD(STACK[0x86D4]) = v0;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 16284)))(STACK[0x1608], 0, 16);
  v3 = (*(v2 + 8 * (v1 ^ 0x41EC)))(STACK[0x9280], 0, 16);
  return (*(v2 + 8 * ((225 * ((*STACK[0x9108] & 0x800000) == ((v1 - 33782) ^ 0x745))) ^ (v1 - 16089))))(v3);
}

uint64_t sub_10070AE94@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v4 - 4209375991 + ((a2 - 1027273319) | 0x38207244u);
  v7 = ((a1 ^ 0x62) + 127) ^ a1 ^ ((a1 ^ 0xF5) - 22) ^ ((a1 ^ 0xB9) - 90) ^ ((a1 ^ 0xCD) - 46);
  v8 = (((v7 ^ 0x35) + 95) ^ ((v7 ^ 0x92) - 6) ^ ((v7 ^ 0xFE) - 106)) + 51;
  STACK[0x498] = v6;
  *(v2 + v6) = v8 * (a1 - 65) - 37 * (-3 * v8 - 18 * (a1 - 65)) - 58;
  return (*(v5 + 8 * (((STACK[0x498] != 0) * v3) ^ a2)))(a1 + 1);
}

uint64_t sub_10070B160@<X0>(int a1@<W8>)
{
  v9 = (((*v7 ^ v6) + v5) ^ ((*v7 ^ v4) + v3) ^ ((*v7 ^ v1) + a1)) + LODWORD(STACK[0xEB0]);
  v10 = STACK[0xF18];
  STACK[0x5FD0] = *(STACK[0xF18] + 8 * v2);
  v11 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] += 512;
  v12 = *(v10 + 8 * (v8 + 42055));
  v13 = *(&off_1010A0B50 + (v8 ^ 0x2C13)) - 1959152047;
  STACK[0xEB0] = (v11 + 319);
  v12(v13);
  v14 = (*(v10 + 8 * (v8 + 42055)))(*(&off_1010A0B50 + (v8 ^ 0x2114)) - 967467138, v11 + 447, 64);
  *(v11 + 383) = 0x3791C62744981E18;
  *(v11 + 391) = 0xA8B2A1CB08909364;
  *(v11 + 399) = 0x16FEC2F705DFD278;
  *(v11 + 407) = 0x4C01CEC0B921B1C9;
  *(v11 + 415) = 0xBDE686067A2A42C7;
  *(v11 + 423) = 0x45139CDAEB28B77BLL;
  *(v11 + 431) = 0xFF405961DB366CAALL;
  *(v11 + 439) = 0x886B6AA054A2BC92;
  return (*(v10 + 8 * ((((v9 - 8) > 0xF7) * (((v8 - 9071) | 0x8830) ^ 0x8BF7)) ^ v8)))(v14);
}

uint64_t sub_10070B370(uint64_t a1)
{
  v5 = 1112314453 * (v2 ^ 0xEF562AD9);
  LOWORD(STACK[0x2F44]) = 28953 - v5;
  *(v4 - 248) = a1;
  *(v4 - 256) = 27654 - v5;
  v6 = (*(v3 + 8 * (((91 * ((*(STACK[0x238] - 513219118) + *(STACK[0x240] - 544459871)) ^ 0x76)) ^ *(STACK[0x228] + (*(STACK[0x230] + (91 * ((*(STACK[0x238] - 513219118) + *(STACK[0x240] - 544459871)) ^ 0x76))) ^ 0xC6u))) + 52044)))(v4 - 256);
  if ((LODWORD(STACK[0xD40]) - 393219) >= 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = STACK[0xD40];
  }

  LODWORD(STACK[0x15B8]) = v7;
  return (*(v3 + 8 * (((v1 ^ 0x6F02) + 2743) ^ v1)))(v6);
}

uint64_t sub_10070B480()
{
  LODWORD(STACK[0x24AC]) = v0;
  v2 = LODWORD(STACK[0x24A8]);
  v3 = v0 - 1613044559 < (v2 - 321850142);
  if ((v0 - 1613044559) < 0xECD0F4E2 != v2 > 0x132F0B1D)
  {
    v3 = v2 > 0x132F0B1D;
  }

  return (*(v1 + 8 * ((246 * v3) ^ 0x837Au)))();
}

uint64_t sub_10070B4E8()
{
  LODWORD(STACK[0x242C]) = v2;
  LODWORD(STACK[0x2428]) = v3;
  LODWORD(STACK[0x96C]) = v0;
  LODWORD(STACK[0x146C]) = v3;
  return (*(v4 + 8 * v1))();
}

uint64_t sub_10070B51C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, char a7, char a8)
{
  v21 = v12 - 1;
  STACK[0x400] = v21;
  *(v8 + v21) = (v11 ^ ((v11 ^ v13) + v14) ^ ((v11 ^ v16) + v17) ^ ((v11 ^ 0x3E) + 79) ^ v20 ^ (((((v9 + a7) & a8) + v18) ^ v11) + v19)) * (v11 - 126);
  if (v10 < a5 != STACK[0x400] > a4)
  {
    v22 = STACK[0x400] > a4;
  }

  else
  {
    v22 = STACK[0x400] + a5 > v10;
  }

  return (*(v15 + 8 * ((v22 * a6) ^ v9)))();
}

uint64_t sub_10070B5E0()
{
  STACK[0x938] = STACK[0xCD8] + 36;
  *(v2 - 256) = (v0 + 21079) ^ (1603510583 * ((2 * ((v2 - 256) & 0x4CDA7690) - (v2 - 256) - 1289385623) ^ 0x24FEBBC2));
  v3 = (*(v1 + 8 * (v0 + 40093)))(v2 - 256);
  LODWORD(STACK[0x13E0]) = *(v2 - 252);
  v4 = STACK[0x1F28];
  STACK[0x13A0] = STACK[0xCD8] + 104;
  STACK[0x20C8] = 0x427A3CD3E8C5DA2FLL;
  return (*(v1 + 8 * (((v4 != 0) * ((((v0 + 13792) | 0x841) - 5185) ^ 0x58C4)) ^ v0)))(v3);
}

uint64_t sub_10070B8E8@<X0>(void *a1@<X0>, int a2@<W8>)
{
  a1[3] = v3;
  a1[4] = *(v2 + 80);
  *(v2 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = 0x3CE25E0EC52016E8;
  a1[622] = 0x3CE25E0EC52016E8;
  a1[623] = 0xBCE25E0EC5200378;
  return (*(v4 + 8 * a2))();
}

uint64_t sub_10070BD7C(int a1, int a2)
{
  v8 = *(v2 + 4 * (a2 - 3));
  v9 = ((((a1 + 177678653) & 0xF5684FDB) + 1013541991) ^ a2) + ((2 * a2) & 0x6E);
  v10 = *(v2 + 4 * (a2 - 8));
  v11 = (v8 ^ 0xFE2945BE) & (2 * (v8 & 0xFF2A103F)) ^ v8 & 0xFF2A103F;
  v12 = ((2 * (v8 ^ 0x8A294586)) ^ 0xEA06AB72) & (v8 ^ 0x8A294586) ^ (2 * (v8 ^ 0x8A294586)) & 0x750355B8;
  v13 = v12 ^ 0x15015489;
  v14 = (v12 ^ 0x60000130) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0xD40D56E4) & v13 ^ (4 * v13) & 0x750355B8;
  v16 = (v15 ^ 0x540154A0) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x21020119)) ^ 0x50355B90) & (v15 ^ 0x21020119) ^ (16 * (v15 ^ 0x21020119)) & 0x75035590;
  v18 = (v10 ^ 0xFFAA083E) & (2 * (v10 & 0xFF2A103F)) ^ v10 & 0xFF2A103F;
  v19 = ((2 * (v10 ^ 0xE5BE2866)) ^ 0x352870B2) & (v10 ^ 0xE5BE2866) ^ (2 * (v10 ^ 0xE5BE2866)) & 0x1A943858;
  v20 = v16 ^ 0x750355B9 ^ (v17 ^ 0x50015100) & (v16 << 8);
  v21 = (v19 ^ 0x10000010) & (4 * v18) ^ v18;
  v22 = ((4 * (v19 ^ 0xA940849)) ^ 0x6A50E164) & (v19 ^ 0xA940849) ^ (4 * (v19 ^ 0xA940849)) & 0x1A943858;
  v23 = (v22 ^ 0xA102040) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x10841819)) ^ 0xA9438590) & (v22 ^ 0x10841819) ^ (16 * (v22 ^ 0x10841819)) & 0x1A943850;
  v25 = v23 ^ 0x1A943859 ^ (v24 ^ 0x8000000) & (v23 << 8);
  v26 = ((v20 << 16) ^ 0x55B90000) & (((v17 ^ 0x25020429) << 8) & 0x75030000 ^ 0x74020000 ^ (((v17 ^ 0x25020429) << 8) ^ 0x3550000) & (v17 ^ 0x25020429));
  v27 = ((v25 << 16) ^ 0x38590000) & (((v24 ^ 0x12943849) << 8) & 0x1A940000 ^ 0xA840000 ^ (((v24 ^ 0x12943849) << 8) ^ 0x14380000) & (v24 ^ 0x12943849));
  v28 = v10 ^ v8;
  v29 = *(v2 + 4 * (a2 - 14));
  v30 = (v29 ^ 0xFE211C3F) & (2 * (v29 & 0xFF2A103F)) ^ v29 & 0xFF2A103F;
  v31 = v25 ^ v20 ^ (v20 << 16) & 0x75030000 ^ (v25 << 16) & 0x1A940000;
  v32 = ((2 * (v29 ^ 0x76351C35)) ^ 0x123E1814) & (v29 ^ 0x76351C35) ^ (2 * (v29 ^ 0x76351C35)) & 0x891F0C0A;
  v33 = v26 ^ v27;
  v34 = ((4 * (v32 ^ 0x8901040A)) ^ 0x247C3028) & (v32 ^ 0x8901040A) ^ (4 * (v32 ^ 0x8901040A)) & 0x891F0C08;
  v35 = v31 ^ v33;
  v36 = (v34 ^ 0x1C0000) & (16 * ((v32 ^ 0x180000) & (4 * v30) ^ v30)) ^ (v32 ^ 0x180000) & (4 * v30) ^ v30;
  v37 = ((16 * (v34 ^ 0x89030C02)) ^ 0x91F0C0A0) & (v34 ^ 0x89030C02) ^ (16 * (v34 ^ 0x89030C02)) & 0x891F0C00;
  v38 = v36 ^ 0x891F0C0A ^ (v37 ^ 0x81100000) & (v36 << 8);
  v39 = *(v2 + 4 * (a2 - 16));
  v40 = v29 ^ (2 * ((v38 << 16) & 0x91F0000 ^ v38 ^ ((v38 << 16) ^ 0xC0A0000) & (((v37 ^ 0x80F0C0A) << 8) & 0x91F0000 ^ 0x130000 ^ (((v37 ^ 0x80F0C0A) << 8) ^ 0x1F0C0000) & (v37 ^ 0x80F0C0A)))) ^ ((v28 ^ (2 * v35) ^ 0x450CDBC0) - 2 * ((v28 ^ (2 * v35) ^ 0x450CDBC0) & 0x29ED914F ^ (v28 ^ (2 * v35)) & 4) + 703435083);
  HIDWORD(v41) = v39 ^ ((v39 ^ 0x2D68C1E6) - 767372839) ^ ((v39 ^ 0x78E13A19) - 2016728536) ^ ((v39 ^ 0x2AB9E2C1) - 711724288) ^ ((v39 ^ 0x7FE5F6FF) - 2133858622) ^ v5 ^ ((v40 ^ 0xD4ED9960) - 2 * ((v40 ^ 0xD4ED9960) & 0x4827797 ^ v40 & 0x16) + v4);
  LODWORD(v41) = HIDWORD(v41);
  *(v2 + 4 * (v9 + v6)) = ((v41 >> 31) ^ v7) - 1412038702 + ((2 * (v41 >> 31)) & 0xA9FFDFDE);
  return (*(v3 + 8 * ((114 * (v9 - 1013559222 < 0x50)) ^ a1)))();
}

uint64_t sub_10070C364(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, int a6)
{
  v12 = *(v11 + 4 * ((a3 + 26 * (a4 - 21) + ((((a6 ^ 0xA1) + 35) * (a4 - 21)) ^ 0x10)) & 0x1F)) ^ *(v10 + 4 * ((v6 + a4) % 0x19u));
  v13 = STACK[0x228];
  *(v10 + 4 * ((v7 + a4) % 0x19u)) = 1218813273 * (*(v9 + 4 * ((a4 + 27) & 0x1F)) ^ *(v9 + 4 * (a4 & 0x1F ^ 0x10)) & ~*(v9 + 4 * ((a4 + 9) & 0x1F)) ^ *(v10 + 4 * ((v7 + a4) % 0x19u)) ^ __ROR4__(-1060735539 * (((v12 ^ 0x4C9489E5) - 210544012) ^ ((v12 ^ 0xAB8BD083) + 342622998) ^ ((v12 ^ 0xDC894752) + 1668191429)) - 1580149383, 13));
  return (*(v13 + 8 * (a6 ^ (8 * (v8 == 18)))))();
}

uint64_t sub_10070C628@<X0>(__int16 a1@<W8>)
{
  LOWORD(STACK[0x62AE]) = v1;
  LODWORD(STACK[0x27C4]) = v2;
  v4 = (a1 - 27307);
  v5 = (v4 < 0x1267) ^ (v1 > ((v3 + 2246) ^ 0x66A3u));
  v6 = v4 < (v1 + 4711);
  if (v5)
  {
    v6 = v1 > ((v3 + 2246) ^ 0x66A3u);
  }

  return (*(STACK[0xF18] + 8 * ((v6 * ((v3 - 29112) ^ 0x105E)) ^ v3)))();
}

uint64_t sub_10070C6A4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = v3;
  *v2 = a2;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10070C6D0()
{
  v1 = STACK[0x1E68];
  v2 = (*(v0 + 415048))(*(STACK[0x1E68] + 552));
  *(v1 + 552) = 0;
  *(v1 + 560) = 0;
  return (*(v0 + 169488))(v2);
}

uint64_t sub_10070C730@<X0>(int a1@<W8>)
{
  v2 = STACK[0xF10] - 7510;
  *(STACK[0x29B0] + 40) = a1 ^ v1;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10070CA28()
{
  v4 = STACK[0xCD8];
  *(v4 + 112) = 0x217E172EFA1E81CLL;
  v5 = *(v4 + 120);
  *(v3 - 240) = STACK[0x650];
  *(v3 - 256) = v5;
  *(v3 - 248) = (v0 + 329045686) ^ (1112314453 * ((~v1 & 0xB7C657DB | v1 & 0x4839A820) ^ 0x58907D02));
  v6 = (*(v2 + 8 * (v0 ^ 0xEE9E)))(v3 - 256);
  *(STACK[0xCD8] + 120) = 0;
  return (*(v2 + 8 * v0))(v6);
}

uint64_t sub_10070CAE8()
{
  LODWORD(STACK[0x2338]) = v0;
  v2 = *(STACK[0x19D8] + 32) + 1124303788;
  LODWORD(STACK[0x233C]) = ((v2 ^ 0xB05F8B43) + 212072206) ^ v2 ^ ((v2 ^ 0x7FEDD04B) - 1022252026) ^ ((v2 ^ 0xF14C2744) + 1303403275) ^ ((v2 ^ 0x7DFDFFFD) - 1056865356) ^ 0xE9A42B01;
  return (*(v1 + 41408))();
}

uint64_t sub_10070CBC0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = (v1 + 8575) ^ (297845113 * ((((2 * (&STACK[0x10000] + 3800)) | 0x9B4D3252) - (&STACK[0x10000] + 3800) - 1302763817) ^ 0x3A9585B7));
  STACK[0x10EE0] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 23472)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10070CC54()
{
  v0 = 41 * (STACK[0xF10] ^ 0x8868);
  v1 = STACK[0xF10] - 35638;
  v2 = STACK[0xF18];
  STACK[0x61A0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 23070 + v0)))();
}

uint64_t sub_10070CCD8()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  STACK[0x5218] = v0 + 8;
  v5 = ((v4 ^ 0xE7163BAD) + 417973331) ^ ((v4 ^ 0x3E248D91) - 1042582929) ^ ((v4 ^ 0x30E7712D) + ((v1 + 715499248) & 0xD55A5BE4 ^ 0xCF188557));
  v6 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0x27005363) + (~(&STACK[0x10000] + 3800) | 0xD8FFAC9C)) ^ 0xB0DB61C9);
  LODWORD(STACK[0x10ED8]) = v5 - v6 - 111378778;
  STACK[0x10F08] = &STACK[0x6540];
  LODWORD(STACK[0x10EF0]) = v6 + 12488 + v1;
  STACK[0x10F00] = v3;
  STACK[0x10EF8] = 0;
  STACK[0x10EE0] = 0;
  STACK[0x10EE8] = &STACK[0x3A20];
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC592)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((51647 * (LODWORD(STACK[0x10F10]) == v2)) ^ v1)))(v8);
}

uint64_t sub_10070CE2C@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0x1E50];
  STACK[0x10EF8] = a1;
  STACK[0x10EE8] = v3;
  LODWORD(STACK[0x10EE0]) = v2 - 297845113 * ((2 * ((&STACK[0x10000] + 3800) & 0x60CF9100) - (&STACK[0x10000] + 3800) - 1624215812) ^ 0xE8037262) - 25176;
  STACK[0x10ED8] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xBB07)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_10070CEC8@<X0>(int a1@<W8>)
{
  v2 = a1 - 15039;
  v3 = (*(v1 + 8 * ((a1 + 1650479512) ^ 0x62601A80)))();
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_10070CFB4@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 + 1008);
  v7 = STACK[0x5D0];
  v8 = STACK[0x5E0];
  STACK[0x380] = v6;
  v9 = 17902189 * (((v2 | 0x6215DBEA) - (v2 & 0x6215DBE8)) ^ 0xEC5ACDFA);
  *(v5 - 136) = a1;
  *(v5 - 128) = v7;
  *(v5 - 120) = ((((v1 ^ 0xB7B427E5) + 1212930075) ^ ((v1 ^ 0x3EB5475E) - 1052067678) ^ ((v1 ^ 0x60D4EE3D ^ v6) - 1624549290)) + 1159547400) ^ v9;
  *(v5 - 112) = v3 - v9 + 30955;
  *(v5 - 152) = a1;
  *(v5 - 144) = v8;
  v10 = (*(v4 + 8 * (v3 ^ 0x8E66)))(v5 - 152);
  return (*(v4 + 8 * v3))(v10);
}

uint64_t sub_10070D0D8()
{
  v1 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0x13A2CF48) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xEC5D30B0)) ^ 0xA9B22EDA);
  LODWORD(STACK[0x10EE0]) = v1 ^ LODWORD(STACK[0x4904]) ^ (22 * (v0 ^ 0xC4DB)) ^ 0x49A53DF1;
  LODWORD(STACK[0x10ED8]) = v0 - v1 - 672172506;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 1395)))(&STACK[0x10ED8]);
  v4 = LOBYTE(STACK[0x10EDC]) != ((22 * (v0 ^ 0xDB)) ^ 0x47);
  return (*(v2 + 8 * ((v4 | (32 * v4)) ^ v0)))(v3);
}

uint64_t sub_10070D1A8(unint64_t a1)
{
  STACK[0x218] = 0;
  v4 = *(v3 + 8 * ((83 * ((v1 + 1466357890) > 0x45221D48)) ^ (v1 + 5650)));
  STACK[0x250] = a1;
  STACK[0x248] = a1;
  STACK[0x310] = a1;
  STACK[0x308] = v2;
  return v4();
}

uint64_t sub_10070D2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 4 * v5;
  v12 = *(a5 + 4 * v5);
  v13 = veorq_s8(*(v8 + 4 * v5), v12);
  v14 = vaddq_s32(vsubq_s32(v12, vandq_s8(vaddq_s32(v12, v12), v9)), v10);
  *(a5 + v11) = veorq_s8(v13, v14);
  *(v8 + v11) = v14;
  return (*(v7 + 8 * (((v5 != 28) * ((v6 - 5547) ^ 0x4BB2)) | v6)))();
}

uint64_t sub_10070D33C()
{
  LODWORD(STACK[0x7F64]) = v0;
  v2 = STACK[0x4830];
  STACK[0x8FE8] = *(STACK[0x7248] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1769367926;
  LODWORD(STACK[0x704C]) = -2116087600;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10070D3C8@<X0>(char a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, char a5@<W4>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v18 = (a4 | (2 * (v9 & a3))) & (v9 ^ a2) ^ v9 & a3 ^ ((8 * (((v9 & a3) >> 2) & 1)) | 0x2820000);
  v19 = (v9 ^ a2) << (((a8 + v10) | a1) ^ a5);
  v20 = v19 & v12 ^ v13 ^ (v19 ^ a6) & (v9 ^ a2);
  v21 = (4 * v18) & v16 ^ v18 ^ ((4 * v18) ^ v14) & v20;
  v22 = (4 * v20) & v16 ^ a7 ^ ((4 * v20) ^ v17) & v20;
  v23 = (16 * v21) & 0x1BC3AA00 ^ v21 ^ ((16 * v21) ^ v11) & v22;
  v24 = (16 * v22) & 0x1BC3AA00 ^ 0x3C10A09 ^ ((16 * v22) ^ 0xBC3AA090) & v22;
  v25 = v23 ^ (v23 << 8) & 0x1BC3AA00 ^ ((v23 << 8) ^ 0x82000000) & v24 ^ 0x1941AA09;
  v26 = v9 ^ (2 * ((v25 << 16) & 0x1BC30000 ^ v25 ^ ((v25 << 16) ^ 0x2A090000) & ((v24 << 8) & 0x1BC30000 ^ 0x18410000 ^ ((v24 << 8) ^ 0x43AA0000) & v24)));
  return (*(v15 + 8 * ((25722 * (((((v26 ^ 0x5FB71050) & v8 ^ v26 & 0x9490F62 ^ 0xE0B4118B) - 444557057) ^ (((v26 ^ 0x5FB71050) & v8 ^ v26 & 0x9490F62 ^ 0xC2A6C826) - 946716332) ^ (((v26 ^ 0x5FB71050) & v8 ^ v26 & 0x9490F62 ^ 0xD4EC2612) - 774328472)) + 204835125 < 0x100)) ^ a8)))();
}

uint64_t sub_10070D778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, atomic_uint *a5)
{
  v11 = 23958;
  atomic_compare_exchange_strong(a5, &v11, v7);
  return (*(v10 + 8 * (((v11 == v8) * v6) ^ (v5 + v9))))();
}

uint64_t sub_10070D7A0@<X0>(int a1@<W2>, unsigned int a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v9 = a3 + 4 * a4;
  v10 = *(v5 + v9) ^ *(v6 + v9);
  *(v5 + v9) = v10;
  v11 = *(v6 + v9) ^ v10;
  *(v6 + v9) = v11;
  *(v5 + v9) ^= v11;
  return (*(v8 + 8 * (v4 ^ (8 * (a4 + v7 + ((v4 + a1) | a2) == 28199)))))();
}

uint64_t sub_10070D7F8@<X0>(uint64_t a1@<X8>)
{
  *STACK[0x6F98] = *(a1 + 32);
  *STACK[0x4198] = 2;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10070D908()
{
  v1 = 2 * (v0 ^ 0xEF3A);
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 7013)))();
  STACK[0x5A98] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10070D944@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (((a1 == 1862503563) * (((a1 - 2942) | 0x312) ^ 0x655E)) ^ (a1 + 5812))))();
}

uint64_t sub_10070D9A4()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 27151)))(v0 ^ 0xE9D5C711);
  *(STACK[0xED0] + 24) = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 - 1715956635) & 0x66477BF7) - 28880)) ^ v1)))();
}

uint64_t sub_10070DC1C@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, uint64_t a5@<X5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v20 = v8 - 129 * (((v8 * a1) >> 32) >> 3);
  v21 = ((2 * v20) & 0x13C) + (v20 ^ 0xA7F76FFDFB56719ELL);
  v22 = *(a5 + 4 * (v15 & v11));
  v23 = v21 + 0x5808900204A98DE5;
  v24 = (v16 + 4 * v21 + 0x6022400812A63988);
  if (v23 < 0xFFFFFFFFFFFFFF83)
  {
    v24 = (v17 + 4 * v23);
  }

  v25 = *v24;
  v26 = (v22 - 340615941 + (((v25 ^ 0x19987566) - 429421926) ^ ((v25 ^ 0xFD1C5692) + 48474478) ^ ((v25 ^ 0xD1145FA5) + 787193947))) * (*v19 - *v10 - 372264001);
  v27 = ((2 * (*v10 - v22)) & 0xAF2DF9F8) + ((*v10 - v22) ^ 0xD796FCFC);
  v28 = 457880378 * ((v27 + 677970692) * (*v19 + 582187897 + (((v25 ^ 0x7CE5AB08) - 2095426312) ^ ((v25 ^ 0x74C40F7) - 122437879) ^ ((v25 ^ 0x4E3997AE) - 1312397230))) - 55790441 * v27) + 1585096164 * (v26 + 1239277398 * (*v19 - *v10));
  v29 = ((v28 + 1292223331) ^ (((v28 + 1292223331) ^ 0xBB66CE6D) + 965183155) ^ (((v28 + 1292223331) ^ 0x865C6CAF) + 79504497) ^ (((v28 + 1292223331) ^ 0xBF9BCA15) + 1031439051) ^ (((v28 + 1292223331) ^ 0xFFBFDFF7) + 2103351081) ^ 0x7D1EB713) + 129;
  v30 = v29 - 129 * (((v29 * a1) >> 32) >> 3);
  v31 = 2 * (v30 & 0x7F) + (v30 ^ 0xFDF7BFFF1FDFB57FLL);
  *(v19 - 32) = v28 + 1292223331;
  v32 = v31 + 0x2084000E0204A04;
  v33 = v16 + 4 * v31 + 0x821000380812A04;
  if (v32 >= 0xFFFFFFFFFFFFFF83)
  {
    v34 = v33;
  }

  else
  {
    v34 = (v17 + 4 * v32);
  }

  *(a5 + 4 * (v14 & 0x1F)) += (v28 - (((*v34 ^ 0xDEB89098) + 558329704) ^ ((*v34 ^ a4) + a8) ^ ((*v34 ^ a6) + a7))) * a2 + a3;
  return (*(STACK[0x228] + 8 * ((((v12 | v13) >= 0) * v18) ^ v9)))();
}

uint64_t sub_10070DF48()
{
  v0 = STACK[0xF10] - 19499;
  STACK[0x7690] += (STACK[0xF10] - 19574) ^ 0xFFFFFFFFFFFFC125;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10070E030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v69 + 24) = v68;
  *(v63[3] + 32) = v63[4];
  *(a48 + 40) = v63[1] + *(a48 + 40) - 0x3CE25E0EC5200378;
  v70 = (((((v64 - 4999) | 0x4800u) ^ LOBYTE(STACK[0x21F]) ^ 0x80070C7E52122325) + 0x7FF8F381ADEDB0DDLL) ^ ((LOBYTE(STACK[0x21F]) ^ 0xE6E692F7884F720DLL) + 0x19196D0877B08DF3) ^ ((LOBYTE(STACK[0x21F]) ^ 0x66E19E89DA5D3DCFLL) - 0x66E19E89DA5D3DCFLL)) + 0x73B4913AF7C22C05;
  v63[1] = 0x79C4BC1D8A4006F0 - v63[1];
  v63[2] = v70;
  *(v63 + v67) = 0x3CE25E0EC5200378;
  return (*(a63 + 8 * (v64 ^ (38 * (v65 != 0x9545B36DF3F3D485)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, v66, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_10070E354(uint64_t a1, uint64_t a2)
{
  STACK[0xA350] = a2 + 48;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 49244)))(*(&off_1010A0B50 + v2 + 2128) - 433229571);
  STACK[0x98B8] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (v2 - 5941 + ((2 * v2) ^ 0x2AE6))))(v4);
}

uint64_t sub_10070E560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = *(v12 + (((a8 ^ 0xAA) + v9) & 0xF));
  v16 = (*&v15 | 0xFFFFFF00) & ((*(v12 + (v11 + 1169890893)) << 8) ^ 0xE330EA1B) | v15 & 0xE4;
  v17 = ((v16 ^ 0x341FDCE2) + 567255391) ^ ((v16 ^ 0x83E18969) - 1775110954) ^ ((v16 ^ 0x54CEE0D4) + 1092525417);
  v18 = *(v10 + (v11 + 1169890898) % (*v10 ^ v8) + 4);
  v19 = *(v12 + (((((v9 ^ 1) + 15) ^ v9 ^ ((v14 ^ 9) + 7)) ^ (((v14 ^ 3) + 13) ^ ((v14 ^ 0xFB) + 5))) & 0xF ^ 8));
  v20 = ((((v18 - ((2 * v18) & 0xD8)) << 8) + 1850764288) ^ 0xB60F818D) & (v19 ^ 0xFFFFFF82) | v19 & 0x72;
  v21 = ((v20 ^ 0xCD6D1EBF) - 964052376) ^ ((v20 ^ 0x1C741200) + 395359961) ^ ((v20 ^ 0x946E160) + 44189113);
  v22 = -1590766059 * v21 - 1215104448 * v17 + (((((41291 * v17 + 779997067) * (v17 + 153040668) + 525332905 * v17 - 640394074) * (v17 + 153040668) - 196321066 * v17 - 2024528478) * (v17 + 153040668) - 641831994 * v17 - 403242617) * (v17 + 153040668) - 721530335 * v17 + 1766210695) * (v21 + 742700792) + (((((63239 * v21 + 1008909223) * (v21 + 742700792) + 1179094305 * v21 + 1235737401) * (v21 + 742700792) - 759016769 * v21 + 793924946) * (v21 + 742700792) - 226648650 * v21 - 1329398393) * (v21 + 742700792) - 1285214519 * v21 - 82231688) * (v17 + 153040668) + 910500002;
  v23 = (v22 ^ 0xC276AEA2) & (2 * (v22 & 0xEA78CEC3)) ^ v22 & 0xEA78CEC3;
  v24 = ((2 * (v22 ^ 0x8216A722)) ^ 0xD0DCD3C2) & (v22 ^ 0x8216A722) ^ (2 * (v22 ^ 0x8216A722)) & 0x686E69E0;
  v25 = v24 ^ 0x28222821;
  v26 = (v24 ^ 0x40444100) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0xA1B9A784) & v25 ^ (4 * v25) & 0x686E69E0;
  v28 = (v27 ^ 0x20282180) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x48464861)) ^ 0x86E69E10) & (v27 ^ 0x48464861) ^ (16 * (v27 ^ 0x48464861)) & 0x686E69C0;
  v30 = v28 ^ 0x686E69E1 ^ (v29 ^ 0x660800) & (v28 << 8);
  v31 = v22 ^ (2 * ((v30 << 16) & 0x686E0000 ^ v30 ^ ((v30 << 16) ^ 0x69E10000) & (((v29 ^ 0x680861E1) << 8) & 0x686E0000 ^ (((v29 ^ 0x680861E1) << 8) ^ 0x6E690000) & (v29 ^ 0x680861E1) ^ 0x60000))) ^ 0x4337F143;
  v32 = 0x1096A846463BELL * (((v31 ^ 0x7180558D6739EC7) + 0x78E7FAA7298C6139) ^ ((v31 ^ 0x2D3379C05D344327) + 0x52CC863FA2CBBCD9) ^ ((v31 ^ 0x2A2B7C98221431A2) - 0x2A2B7C98221431A2)) - 0x6F4ADC65382C0B74;
  v33 = (v32 ^ 0xB2082C2C2ADACB6ELL) & (2 * (v32 & 0xC32CAE4CAA9AEA70)) ^ v32 & 0xC32CAE4CAA9AEA70;
  v34 = ((2 * (v32 ^ 0xB65878253EEA1BCELL)) ^ 0xEAE9ACD328E1E37CLL) & (v32 ^ 0xB65878253EEA1BCELL) ^ (2 * (v32 ^ 0xB65878253EEA1BCELL)) & 0x7574D6699470F1BCLL;
  v35 = v34 ^ 0x1514522894101082;
  v36 = (v34 ^ 0x6080410060E100) & (4 * v33) ^ v33;
  v37 = ((4 * v35) ^ 0xD5D359A651C3C6F8) & v35 ^ (4 * v35) & 0x7574D6699470F1B8;
  v38 = (v37 ^ 0x555050201040C0A0) & (16 * v36) ^ v36;
  v39 = ((16 * (v37 ^ 0x2024864984303106)) ^ 0x574D6699470F1BE0) & (v37 ^ 0x2024864984303106) ^ (16 * (v37 ^ 0x2024864984303106)) & 0x7574D6699470F1A0;
  v40 = (v39 ^ 0x5544460904001100) & (v38 << 8) ^ v38;
  v41 = (((v39 ^ 0x203090609070E01ELL) << 8) ^ 0x74D6699470F1BE00) & (v39 ^ 0x203090609070E01ELL) ^ ((v39 ^ 0x203090609070E01ELL) << 8) & 0x7574D6699470F000;
  v42 = v40 ^ 0x7574D6699470F1BELL ^ (v41 ^ 0x7454400010700000) & (v40 << 16);
  v43 = v32 ^ (2 * ((v42 << 32) & 0x7574D66900000000 ^ v42 ^ ((v42 << 32) ^ 0x1470F1BE00000000) & (((v41 ^ 0x1209669840041BELL) << 16) & 0x7574D66900000000 ^ 0x2114420900000000 ^ (((v41 ^ 0x1209669840041BELL) << 16) ^ 0x5669947000000000) & (v41 ^ 0x1209669840041BELL))));
  v44 = ((v43 ^ 0xA2AC2244937BB36FLL) + 0x6F469843F80AF2B9) ^ ((v43 ^ 0x41D5954653A927A6) - 0x73C0D0BEC727998ELL);
  LOBYTE(v43) = __CFADD__(63211 * (v44 ^ ((v43 ^ 0xE25D15CD42A99DC5) + 0x2FB7AFCA29D8DC13)), 0xF2FE2FA2318BB60CLL) + (((v44 ^ ((v43 ^ 0xE25D15CD42A99DC5) + 0x2FB7AFCA29D8DC13)) * 0xF6EBuLL) >> 64) - 21 * ((v13 + __CFADD__(v43 ^ 0xA2AC2244937BB36FLL, 0x6F469843F80AF2B9)) ^ (v13 + __CFADD__(v43 ^ 0x41D5954653A927A6, 0x8C3F2F4138D86672)) ^ (v13 + __CFADD__(v43 ^ 0xE25D15CD42A99DC5, 0x2FB7AFCA29D8DC13))) - 123;
  LOBYTE(v41) = (v43 ^ 0xD2) & (2 * (v43 & 0xDB)) ^ v43 & 0xDB;
  LOBYTE(v44) = ((2 * (v43 ^ 0xD0)) ^ 0x16) & (v43 ^ 0xD0) ^ (2 * (v43 ^ 0xD0)) & 0xA;
  *(v12 + (v11 + 1169890893)) = v43 ^ (2 * (((4 * (v44 ^ 9)) ^ 0x20) & (v44 ^ 9) & ((16 * (v41 ^ 0xB ^ v44 & (4 * v41))) ^ 0x30) ^ v41 ^ 0xB ^ v44 & (4 * v41))) ^ 0x92;
  return (*(STACK[0xF18] + 8 * a8))();
}

uint64_t sub_10070EE08(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = v7 < v8;
  if (v10 == a4 + a1 > v9)
  {
    v10 = a1 + v6 < v7;
  }

  return (*(STACK[0xF18] + 8 * ((v10 * a6) ^ a2)))();
}

uint64_t sub_10070EF0C()
{
  v2 = 297845113 * ((&STACK[0x10000] + 3800) ^ 0x77331C9E);
  LODWORD(STACK[0x10ED8]) = (((v0 ^ 0x1C2E7319) - 472806169) ^ ((v0 ^ 0xC475D738) + 998910152) ^ ((((((v1 ^ 0xC953) + 449212918) & 0xE538CEF7) + 831414333) ^ v0) - 831415088)) - v2 + 1140833556;
  LODWORD(STACK[0x10EDC]) = (v1 ^ 0xC953) - v2 - 515139667;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xC769)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((4 * (LOBYTE(STACK[0x10EE0]) == 21)) | (16 * (LOBYTE(STACK[0x10EE0]) == 21))) ^ v1 ^ 0xC953)))(v4);
}

uint64_t sub_10070F010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = *(v12 + 8 * v20);
  v22 = v9 + a1;
  *(v22 + a2) = HIBYTE(a9) ^ v10;
  *(v22 + a4) = (BYTE6(a9) ^ a3) - ((2 * (BYTE6(a9) ^ a3)) & 0xBF) + 95;
  *(v22 + a6) = (BYTE5(a9) ^ a5) - ((2 * (BYTE5(a9) ^ a5)) & 0xBF) + 95;
  *(v22 + a8) = (BYTE4(a9) ^ a7) - ((2 * (BYTE4(a9) ^ a7)) & 0xBF) + 95;
  *(v22 + v13) = (BYTE3(a9) ^ v11) - ((2 * (BYTE3(a9) ^ v11)) & 0xBF) + 95;
  *(v22 + v15) = (BYTE2(a9) ^ v14) - ((2 * (BYTE2(a9) ^ v14)) & 0xBF) + 95;
  *(v22 + v17) = (BYTE1(a9) ^ v16) - ((2 * (BYTE1(a9) ^ v16)) & 0xBF) + 95;
  *(v22 + v19) = a9 ^ v18;
  return v21();
}

uint64_t sub_10070F0DC@<X0>(int a1@<W8>)
{
  v3 = 1022166737 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x75CAB8E0) + 1976219877) ^ 0xCFDA5977);
  LODWORD(STACK[0x10ED8]) = v1 - 672142829 - v3;
  LODWORD(STACK[0x10EE0]) = v3 ^ a1 ^ (7 * (v1 ^ 0x51A3)) ^ 0x49A52B06;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0x9AA0)))(&STACK[0x10ED8]);
  LODWORD(STACK[0xED0]) = LOBYTE(STACK[0x10EDC]);
  v5 = 1022166737 * ((~&STACK[0x10ED8] & 0xD89621B1 | &STACK[0x10ED8] & 0x2769DE48) ^ 0x6286C023);
  LODWORD(STACK[0x10EE0]) = v5 ^ LODWORD(STACK[0x782C]) ^ 0x49A52AF9;
  LODWORD(STACK[0x10ED8]) = v1 - 672142829 - v5;
  v6 = (*(v4 + 8 * (v1 ^ 0x9AA0)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((64739 * (*(v2 + 272) == (v1 + 22))) ^ v1)))(v6);
}

uint64_t sub_10070F2B8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1650502139;
  *(v4 - 240) = v1 + 906386353 * ((((2 * v2) | 0xB0A58D9C) - v2 - 1481819854) ^ 0x69530BEA) + 233855229;
  v6 = STACK[0x740];
  *(v4 - 256) = a1;
  *(v4 - 248) = v6;
  v7 = (*(v3 + 8 * (v1 - 1650459779)))(v4 - 256);
  STACK[0x1EE8] = 0;
  return (*(v3 + 8 * v5))(v7);
}

uint64_t sub_10070F4FC()
{
  LODWORD(STACK[0x211C]) = STACK[0x20D4];
  v1 = *(STACK[0xE88] + 32) + 624556323;
  LODWORD(STACK[0x2120]) = ((v1 ^ 0x58FA4FB3) - 2109978267) ^ v1 ^ ((v1 ^ 0xAC6A7836) + 1991016162) ^ ((v1 ^ 0xAF6631F2) + 1973434150) ^ ((v1 ^ 0x7ECFFF5F) - 1542850167) ^ 0xF4818B74;
  return (*(v0 + 40672))();
}

uint64_t sub_10070F6A0()
{
  v4 = STACK[0x270] & 0x38EF7D5F;
  *v2 = 1;
  v5 = *STACK[0x948];
  v6 = LODWORD(STACK[0x1BA8]) - 304038648;
  v7 = LODWORD(STACK[0x1BA8]) > 0x121F42F7;
  STACK[0x1A08] = v0;
  LODWORD(STACK[0x15B0]) = v5;
  LODWORD(STACK[0x14C4]) = v1;
  if ((v5 + v1) > 0x121F42F7 != v7)
  {
    v8 = (v5 + v1) > 0x121F42F7;
  }

  else
  {
    v8 = v4 - 1258987540 + v5 + v1 > v6;
  }

  return (*(v3 + 8 * ((39 * v8) ^ 0x45D7)))();
}

uint64_t sub_10070F850()
{
  v3 = LODWORD(STACK[0x3FC]) - 26096;
  LODWORD(STACK[0x658]) = v0;
  return (*(v2 + 8 * (v3 ^ 0x268 ^ (7383 * (v3 != 661044823)))))(v1);
}

uint64_t sub_10070F8F0@<X0>(int a1@<W8>)
{
  STACK[0x17E0] = STACK[0x1578];
  LODWORD(STACK[0xB10]) = 1497668682;
  v5 = v1 == 0x217E172EFA1E81CLL || v2 == ((a1 + 842930756) & 0xCDC1FE3B ^ 0x2E1BLL);
  return (*(v3 + 8 * ((38 * (((a1 + 36) ^ v5) & 1)) ^ a1)))();
}

uint64_t sub_10070F9F8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51)
{
  v54 = v51 ^ 0x472BF1D8;
  v56 = (v52 - a1) < 0x20 || v54 < ((a51 + 1676257189) & 0xFE76DF7E ^ 0x6260D05A);
  return (*(v53 + 8 * (a51 | (16 * (((a51 - 31) ^ v56) & 1)))))();
}

uint64_t sub_10070FAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x2208]) = v4;
  v6 = *(STACK[0xE88] + 32) + 2121767424;
  LODWORD(STACK[0x220C]) = ((v6 ^ 0xAC265784) + 766390911) ^ v6 ^ ((v6 ^ 0xA133E899) + 549162340) ^ ((v6 ^ 0x8CADDAEF) + 220577558) ^ ((v6 ^ 0xFFCFFFF7) + 2118621710) ^ 0x627A1755;
  return (*(v5 + 41408))(a1, a2, a3, a4, STACK[0x808], 1864610357);
}

uint64_t sub_10070FD3C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = STACK[0x430];
  STACK[0x660] = *(STACK[0x430] + 8 * v2);
  v5 = (((*(a1 + 12) ^ 0x32142A9D) - 840182429) ^ ((*(a1 + 12) ^ 0x99F2B473) + 1712147341) ^ ((*(a1 + 12) ^ 0x423359FF) - 1110661631)) - 306104272;
  v6 = ((((a2 - 7908) | 0x608) - 1180411121 + (v3 ^ 0x465B4EC9)) ^ ((v3 ^ 0xEFCE4049) + 271695799) ^ ((v3 ^ 0x4040C991) - 1077987729)) - 306104272;
  v7 = (v6 < 0x3EB711F) ^ (v5 < 0x3EB711F);
  v8 = v5 < v6;
  if (v7)
  {
    v8 = v6 < 0x3EB711F;
  }

  return (*(v4 + 8 * ((54 * v8) ^ a2)))();
}

uint64_t sub_10070FE84@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  v5 = (v3 ^ 0xDCE31FFB) + a2 + ((2 * v3) & 0xFFFFFFF7);
  LODWORD(STACK[0x13B4]) = v5 - 2064032218;
  v5 += 589094925;
  LODWORD(STACK[0xE14]) = v5;
  LODWORD(STACK[0x8BC]) = v5;
  STACK[0x1A48] = a1;
  return (*(v4 + 8 * (v2 - 1650463461)))();
}

uint64_t sub_100710120(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = v72 + 1051166270;
  v78 = v71 + v76 - (((v74 ^ 0xACC9BEE3) + 1396064541) ^ ((v74 ^ 0x6CBA13F) - 114008383) ^ ((v74 ^ 0x89101DD2) + 1995432494)) - 1810242690;
  v79 = (v78 ^ 0xFA07A228) & (2 * (v78 & 0xE247A2B2)) ^ v78 & 0xE247A2B2;
  v80 = ((2 * ((a6 - 6471) ^ 0xFA8C311D ^ v78)) ^ 0x3196017C) & ((a6 - 6471) ^ 0xFA8C311D ^ v78) ^ (2 * ((a6 - 6471) ^ 0xFA8C311D ^ v78)) & 0x18CB00BE;
  v81 = v80 ^ 0x8490082;
  v82 = (v80 ^ 0x10020018) & (4 * v79) ^ v79;
  v83 = ((4 * v81) ^ 0x632C02F8) & v81 ^ (4 * v81) & 0x18CB00B8;
  v84 = v82 ^ 0x18CB00BE ^ (v83 ^ 0x800A0) & (16 * v82);
  v85 = (16 * (v83 ^ 0x18C30006)) & 0x18CB00A0 ^ 0x104B001E ^ ((16 * (v83 ^ 0x18C30006)) ^ 0x8CB00BE0) & (v83 ^ 0x18C30006);
  v86 = (v84 << 8) & 0x18CB0000 ^ v84 ^ ((v84 << 8) ^ 0xCB00BE00) & v85;
  v87 = v78 ^ (-162197221 * *(a71 + 4 * (a60 ^ v77 ^ ((v77 ^ 0x74C94BD2) - 1248775660) ^ ((v77 ^ 0x5E8B0591) - 1613530031) ^ ((v77 ^ 0xCB1A37C3) + 172117507) ^ ((v77 ^ 0xDFFFFFBE) + 514295424) ^ 0x66D45A55)) + 101936050) ^ (2 * ((v86 << 16) & 0x18CB0000 ^ v86 ^ ((v86 << 16) ^ 0xBE0000) & ((v85 << 8) & 0x18CB0000 ^ 0x10CB0000 ^ ((v85 << 8) ^ 0x4B000000) & v85)));
  v88 = ((v87 ^ 0xE5329B7F) - 1840935681) ^ ((v87 ^ 0xE10FDE5D) - 1770468899) ^ ((v87 ^ 0xC6F8E6EC) - 1315966610);
  v89 = ((2 * v75) & 0x1D8) + (v75 ^ 0x70D35EFEF0DFF4ECLL);
  v90 = v89 - 0x70D35EFEF0DFF527;
  v91 = (STACK[0x220] + 4 * v89 + 0x3CB284043C802C50);
  if (v90 < 0xFFFFFFFFFFFFFFC5)
  {
    v91 = (STACK[0x218] + 4 * v90);
  }

  *(a69 + 4 * (a3 & 0x1F)) -= (-102575295 * (v88 - (((*v91 ^ 0x3322F855) - 857929813) ^ ((*v91 ^ 0x32B51F9A) - 850730906) ^ ((*v91 ^ 0x2285E5C1) - 579200449))) + 1724004386) ^ 0x914CEBF;
  return (*(STACK[0x228] + 8 * ((41 * ((*(a69 + 4 * (v73 & 0x1F)) - 2024337095) % 0x1Bu == 0)) ^ a6)))();
}

uint64_t sub_100710718()
{
  LODWORD(STACK[0x215C]) = STACK[0x20D4];
  v1 = *(STACK[0xE88] + 32) + 1925971662;
  LODWORD(STACK[0x2160]) = ((v1 ^ 0x504522B2) - 579787873) ^ v1 ^ ((v1 ^ 0x52EA6390) - 539073859) ^ ((v1 ^ 0xF8BC00E) - 2101362397) ^ ((v1 ^ 0x7FEF7FFF) - 220496172) ^ 0xD15E9375;
  return (*(v0 + 40672))();
}

uint64_t sub_1007109BC()
{
  LODWORD(STACK[0x268]) = v1;
  v4 = STACK[0x2A0];
  STACK[0x290] = STACK[0x2A0] + 4;
  STACK[0x288] = v4 + 1;
  STACK[0x280] = STACK[0x298] + 6;
  v5 = *(v2 + 8 * (v0 ^ 0x4019));
  *(v3 - 172) = -971309690;
  *(v3 - 184) = 49913979;
  *(v3 - 192) = -1516191954;
  *(v3 - 168) = v2;
  return v5(3285578343);
}

uint64_t sub_100710AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0xE20]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xD10]) = 0;
  LODWORD(STACK[0xDB8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xD30]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xD38]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  v10 = (v6 - 6691) | 0x5100u;
  STACK[0xC88] = (v10 - 0x44F3E731506001DFLL) ^ a6;
  *(STACK[0xF10] + 56) = v7 ^ *(STACK[0xF50] + 103) ^ v9;
  v11 = *(v8 + 8 * v6);
  LODWORD(STACK[0xEA8]) = 1;
  STACK[0xE88] = v10;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xDF8]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xDB0]) = 1;
  LODWORD(STACK[0xD28]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xDE0]) = 1;
  LODWORD(STACK[0xD00]) = 1;
  LODWORD(STACK[0xD08]) = 1;
  LODWORD(STACK[0xDA0]) = 1;
  LODWORD(STACK[0xE08]) = 1;
  return v11(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184);
}

uint64_t sub_100710FBC@<X0>(unsigned int a1@<W8>)
{
  v8 = v1 < v2;
  *(*(v5 + 16) + 8 * (v3 - 111591582)) = v4;
  v9 = (v6 ^ 0xBEA990F6) + v3;
  v10 = v8 ^ (v9 < v2);
  v11 = v9 < v1;
  if (!v10)
  {
    v8 = v11;
  }

  return (*(v7 + 8 * ((36239 * v8) ^ a1)))();
}

uint64_t sub_100711110@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v10 = (v9 + 4 * v5);
  v11 = v10[1];
  v12 = *(v9 + 4 * (v5 + a5) + a1);
  v13 = v10[397] ^ ((v11 & 0x7FFFFFFE | v7 & 0x80000000) >> 1) ^ a3 ^ *(a2 + 4 * (v11 & 1));
  v14 = v10[398] ^ ((v12 & 0x7FFFFFFE | v11 & 0x80000000) >> 1) ^ a3 ^ *(a2 + 4 * (v12 & 1));
  *v10 = v13;
  v10[1] = v14;
  return (*(v8 + 8 * (((v5 == 224) * a4) ^ v6)))();
}

uint64_t sub_100711218@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v9 = ~v7 + v5;
  v10 = *(a1 + v9 - 15);
  v11 = *(a1 + v9 - 31);
  v12 = a5 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((a3 + v7 == v6) * a4) ^ a2)))();
}

uint64_t sub_100711364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, int a17, int a18, int a19, char a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, unsigned int a39, __int16 a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, unsigned int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v131 = a17 ^ (LODWORD(STACK[0x334]) >> 20) ^ a23;
  LODWORD(STACK[0x690]) = a18 ^ (LODWORD(STACK[0x330]) >> 21);
  v132 = LODWORD(STACK[0x27C]) ^ LODWORD(STACK[0x3F0]);
  v133 = STACK[0x290] ^ STACK[0x280];
  v134 = LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x49C]) ^ a126;
  v135 = LODWORD(STACK[0x3A0]) ^ a119 ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x224]) ^ a118 ^ a73 ^ a117 ^ LODWORD(STACK[0x228]) ^ a115 ^ LODWORD(STACK[0x394]) ^ a111 ^ LODWORD(STACK[0x398]);
  v136 = (LODWORD(STACK[0x698]) - 831717751) | 0x884;
  LODWORD(STACK[0x5E4]) = v136;
  v137 = (((-1673081951 * a14 - 1259344624) ^ 0x37DBCFB) - 459905001) ^ (-1673081951 * a14 - 1259344624) ^ (((-1673081951 * a14 - 1259344624) ^ 0x955D3E70) + 1924590238) ^ (((-1673081951 * a14 - 1259344624) ^ 0xFFF9DDFF) + 403835155) ^ a15 ^ (((-1673081951 * a14 - 1259344624) ^ 0x71CD7466) + v136 - 1775873538);
  v138 = STACK[0x4B0];
  LODWORD(STACK[0x5D8]) = LODWORD(STACK[0x4B0]) + 2081772739 + (((v137 ^ 0x3E7E355E) + 1052458484) ^ ((v137 ^ 0xA2EA134F) - 1573970973) ^ ((v137 ^ 0x5DC026D7) + 1560620667));
  LODWORD(STACK[0x678]) = (a129 >> 31) ^ (a129 >> 26) ^ (LODWORD(STACK[0x44C]) >> 3) ^ a112 ^ a94 ^ a93 ^ a122 ^ LODWORD(STACK[0x388]) ^ a130 ^ LODWORD(STACK[0x380]) ^ a67 ^ a123 ^ a108 ^ a96 ^ a95 ^ a109 ^ LODWORD(STACK[0x378]);
  v139 = STACK[0x3B8];
  v140 = v131 ^ a38 ^ a36 ^ a29 ^ a27 ^ a30 ^ a26 ^ a28 ^ (LODWORD(STACK[0x3B8]) >> 1) ^ a24 ^ a35 ^ a33;
  LODWORD(STACK[0x688]) = (a39 >> 31) ^ (v140 >> 21) ^ (v140 >> 27);
  LODWORD(STACK[0x680]) = a19 ^ v140;
  v141 = ((a39 >> 31) | 0x4419322) ^ (a39 >> 26) ^ a32 ^ a31 ^ a19;
  v142 = (STACK[0x3C8] ^ 0x7824663A) >> ((((v141 & 0x42 ^ 0x42) + (v141 & 0x42)) * (a20 & 0x2B ^ 0x28 | a20 & 0x2B ^ 3)) & 0xFE);
  v143 = a36 ^ a38 ^ a37 ^ a27 ^ a26 ^ (v139 >> 3) ^ a34 ^ a25 ^ a24 ^ a35 ^ a33 ^ v141;
  LODWORD(STACK[0x660]) = v143 ^ 0x29B9DFE7 ^ (v142 - ((2 * v142) & 0x7AE4) + 15730);
  LODWORD(STACK[0x668]) = (v143 >> 21) ^ (v143 >> 27);
  v144 = HIBYTE(a68) ^ (a68 >> 17) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x340]) ^ a40;
  v145 = (a68 >> 9) ^ 0x521338DA;
  v146 = a47 ^ a53 ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x33C]) ^ a49 ^ a66 ^ v145 ^ LODWORD(STACK[0x344]);
  v147 = (STACK[0x2F0] >> 31) ^ (STACK[0x2F0] >> 26) ^ (STACK[0x2F0] >> 3) ^ LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x2BC]) ^ LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x2B4]) ^ LODWORD(STACK[0x2C0]) ^ LODWORD(STACK[0x2CC]) ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x2AC]) ^ v132;
  v148 = v133 ^ 0x7EB0906F ^ v147;
  v149 = (v147 >> 21) ^ (v147 >> 27);
  v150 = (LODWORD(STACK[0x26C]) >> 28) ^ (LODWORD(STACK[0x26C]) >> 27) ^ (LODWORD(STACK[0x268]) >> 2) ^ a51 ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x244]) ^ LODWORD(STACK[0x3C4]) ^ a89 ^ LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x3C0]) ^ a87 ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x23C]) ^ LODWORD(STACK[0x494]) ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x370]);
  v152 = STACK[0x2EC];
  v153 = LODWORD(STACK[0x358]) ^ (a110 >> 20) ^ a104 ^ a81 ^ a107 ^ a106 ^ a80 ^ a55 ^ a45 ^ a105 ^ LODWORD(STACK[0x35C]) ^ (LODWORD(STACK[0x2EC]) >> 1) ^ a99 ^ LODWORD(STACK[0x354]);
  v149 ^= 0x63479BE2u;
  v154 = STACK[0x2F0] ^ (2 * STACK[0x2F0]) ^ (STACK[0x2F0] << 6) ^ (STACK[0x2F0] << 29) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x29C]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x40C]) ^ LODWORD(STACK[0x404]) ^ LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x408]) ^ a97 ^ LODWORD(STACK[0x3F8]) ^ v134 ^ (STACK[0x2F0] << (((~(2 * LOBYTE(STACK[0x2B4])) + LODWORD(STACK[0x2B4])) | LODWORD(STACK[0x2B4])) & 0x16)) ^ v148 ^ v149 ^ (4 * v148) ^ (32 * v148) ^ (v148 << 11) ^ (4 * v149) ^ (32 * v149) ^ (v149 << 11) ^ (16 * LODWORD(STACK[0x274])) ^ (32 * LODWORD(STACK[0x274])) ^ (LODWORD(STACK[0x274]) << 30) ^ v135 ^ LODWORD(STACK[0x270]);
  v155 = (v150 >> 27) ^ (v150 >> 21) ^ 0xB198439D;
  v156 = v154 ^ v150 ^ 0xFE3B4707 ^ (4 * (v150 ^ 0xFE3B4707)) ^ (32 * (v150 ^ 0xFE3B4707)) ^ ((v150 ^ 0xFE3B4707) << 11) ^ v155 ^ (4 * v155) ^ (32 * v155) ^ (v155 << 11) ^ LODWORD(STACK[0x2EC]) ^ (LODWORD(STACK[0x2EC]) << 12) ^ ((LODWORD(STACK[0x2EC]) << 31) | 0x238415D9) ^ LODWORD(STACK[0x32C]) ^ LODWORD(STACK[0x438]) ^ a82;
  v157 = LODWORD(STACK[0x3A8]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x364]) ^ a52 ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x360]);
  LODWORD(STACK[0x654]) = a85 ^ 0x1FE8028D;
  v158 = v153 ^ a54;
  v159 = ((a110 >> 31) | 0x56AD63F2) ^ (v158 >> 27) ^ (v158 >> 21);
  v160 = STACK[0x2DC];
  v161 = STACK[0x264];
  v162 = v156 ^ LODWORD(STACK[0x2DC]) ^ v157 ^ a85 ^ 0x1FE8028D ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x3A4]) ^ v158 ^ 0x76CC3B10 ^ (4 * (v158 ^ 0x76CC3B10)) ^ (32 * (v158 ^ 0x76CC3B10)) ^ ((v158 ^ 0x76CC3B10) << 11) ^ v159 ^ (4 * v159) ^ (32 * v159) ^ (v159 << 11) ^ (LODWORD(STACK[0x264]) << 15) ^ (LODWORD(STACK[0x264]) << 8) ^ a62 ^ a61;
  v163 = a60 ^ LODWORD(STACK[0x390]) ^ a59 ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x3D8]);
  v164 = (LODWORD(STACK[0x264]) << 23) ^ 0x48F529AE;
  LODWORD(STACK[0x658]) = v164;
  v165 = STACK[0x350];
  v166 = STACK[0x34C];
  v167 = (a68 >> 5) ^ 0x2C7566A9;
  v168 = v146 ^ LODWORD(STACK[0x34C]) ^ v167;
  v169 = v168 ^ (v144 ^ LODWORD(STACK[0x350]) ^ a44 ^ a43) ^ 0xBD9F8432;
  v170 = STACK[0x21C];
  v171 = v162 ^ LODWORD(STACK[0x21C]) ^ LODWORD(STACK[0x3E0]);
  v172 = (v161 << 27) ^ 0x2546E2D7;
  v173 = (v168 >> 21) ^ 0x5C03A4AB;
  v174 = v171 ^ v163 ^ v164 ^ a58 ^ a57 ^ LODWORD(STACK[0x3D4]) ^ v172 ^ a41 ^ a42 ^ v169 ^ (4 * v169) ^ (32 * v169) ^ (v169 << 11) ^ (4 * v173) ^ (32 * v173);
  LODWORD(STACK[0x670]) = v174;
  v175 = v174 ^ (v173 << 11) ^ v173;
  v176 = a50 ^ (a68 >> 28) ^ a46 ^ a63 ^ a64 ^ v165 ^ a47 ^ a44 ^ a43 ^ (a48 >> (STACK[0x240] & 0x15) >> (~LODWORD(STACK[0x240]) & 0x11) >> (~LODWORD(STACK[0x240]) & 4)) ^ 0xC7A41665;
  v177 = (-v176 ^ (a49 - (v176 ^ a49)) ^ 0xB53AE69E ^ (v176 - ((2 * v176) & 0x6A75CD3C) - 1254431074)) + a49;
  v178 = a66 ^ (a68 >> 2) ^ v145 ^ v166 ^ v167 ^ a65;
  v179 = STACK[0x440];
  v180 = a56 ^ (LODWORD(STACK[0x440]) >> 3) ^ a105 ^ LODWORD(STACK[0x374]) ^ a101 ^ a99 ^ a54;
  LOBYTE(v173) = (((a110 & 0x80000000) != 0) ^ (a110 >> 26) ^ a103 ^ a98 ^ a100 ^ a106 ^ a107 ^ a55 ^ a104) & 0x18;
  v181 = (LODWORD(STACK[0x440]) ^ 0x257B53D3u) << ((v173 ^ 0x18u) + v173);
  v182 = v181 + 721812004 + (~(2 * v181) | 0xA9F40BB9);
  LODWORD(v181) = LODWORD(STACK[0x450]) - 618029231;
  v183 = (v181 ^ 0xE5E7479A) & (2 * (v181 & 0xF5E7979A)) ^ v181 & 0xF5E7979A;
  v184 = ((2 * (v181 ^ 0xC4AD629E)) ^ 0x6295EA08) & (v181 ^ 0xC4AD629E) ^ (2 * (v181 ^ 0xC4AD629E)) & 0x314AF504;
  v185 = (v184 ^ 0x2000E000) & (4 * v183) ^ v183;
  v186 = ((4 * (v184 ^ 0x114A1504)) ^ 0xC52BD410) & (v184 ^ 0x114A1504) ^ (4 * (v184 ^ 0x114A1504)) & 0x314AF500;
  v187 = (v186 ^ 0x10AD400) & (16 * v185) ^ v185;
  v188 = ((16 * (v186 ^ 0x30402104)) ^ 0x14AF5040) & (v186 ^ 0x30402104) ^ (16 * (v186 ^ 0x30402104)) & 0x314AF500;
  v189 = v187 ^ 0x314AF504 ^ (v188 ^ 0x100A5000) & (v187 << 8);
  LODWORD(STACK[0x570]) = v181 ^ (2 * ((v189 << 16) & 0x314A0000 ^ v189 ^ ((v189 << 16) ^ 0x75040000) & (((v188 ^ 0x2140A504) << 8) & 0x314A0000 ^ 0x310A0000 ^ (((v188 ^ 0x2140A504) << 8) ^ 0x4AF50000) & (v188 ^ 0x2140A504))));
  LODWORD(v181) = LODWORD(STACK[0x454]) + 542777596;
  v190 = (v181 ^ 0x203DCD63) & (2 * (v181 & 0xB0B90872)) ^ v181 & 0xB0B90872;
  v191 = ((2 * (v181 ^ 0x216DDD67)) ^ 0x23A9AA2A) & (v181 ^ 0x216DDD67) ^ (2 * (v181 ^ 0x216DDD67)) & 0x91D4D514;
  v192 = (v191 ^ 0x1800000) & (4 * v190) ^ v190;
  v193 = ((4 * (v191 ^ 0x90545515)) ^ 0x47535454) & (v191 ^ 0x90545515) ^ (4 * (v191 ^ 0x90545515)) & 0x91D4D514;
  v194 = (v193 ^ 0x1505400) & (16 * v192) ^ v192;
  v195 = ((16 * (v193 ^ 0x90848101)) ^ 0x1D4D5150) & (v193 ^ 0x90848101) ^ (16 * (v193 ^ 0x90848101)) & 0x91D4D510;
  v196 = v194 ^ 0x91D4D515 ^ (v195 ^ 0x11445100) & (v194 << 8);
  LODWORD(STACK[0x5B0]) = v181 ^ (2 * ((v196 << 16) & 0x11D40000 ^ v196 ^ ((v196 << 16) ^ 0x55150000) & (((v195 ^ 0x80908405) << 8) & 0x11D40000 ^ (((v195 ^ 0x80908405) << 8) ^ 0x54D50000) & (v195 ^ 0x80908405) ^ 0x1000000)));
  LODWORD(v181) = v138 + LODWORD(STACK[0x328]) - LODWORD(STACK[0x490]) + 298572484;
  v197 = (v181 ^ 0xFE327D9C) & (2 * (v181 & 0xFF3B7DDD)) ^ v181 & 0xFF3B7DDD;
  v198 = ((2 * (v181 ^ 0xC2427FB6)) ^ 0x7AF204D6) & (v181 ^ 0xC2427FB6) ^ (2 * (v181 ^ 0xC2427FB6)) & 0x3D79026A;
  v199 = (v198 ^ 0x38700040) & (4 * v197) ^ v197;
  v200 = ((4 * (v198 ^ 0x5090229)) ^ 0xF5E409AC) & (v198 ^ 0x5090229) ^ (4 * (v198 ^ 0x5090229)) & 0x3D790268;
  v201 = (v200 ^ 0x35600020) & (16 * v199) ^ v199;
  v202 = ((16 * (v200 ^ 0x8190243)) ^ 0xD79026B0) & (v200 ^ 0x8190243) ^ (16 * (v200 ^ 0x8190243)) & 0x3D790260;
  v203 = v201 ^ 0x3D79026B ^ (v202 ^ 0x15100200) & (v201 << 8);
  LODWORD(STACK[0x5D0]) = v181 ^ (2 * ((v203 << 16) & 0x3D790000 ^ v203 ^ ((v203 << 16) ^ 0x26B0000) & (((v202 ^ 0x2869004B) << 8) & 0x3D790000 ^ 0x4790000 ^ (((v202 ^ 0x2869004B) << 8) ^ 0x79020000) & (v202 ^ 0x2869004B))));
  LODWORD(v181) = ((((LOBYTE(STACK[0xBAC]) << 16) ^ 0x744427) & ((LOBYTE(STACK[0x977]) << 8) ^ 0xFF7837) | (LOBYTE(STACK[0x977]) << 8) & 0xBBBB) ^ 0x97AF81) & (LOBYTE(STACK[0xB0E]) ^ 0xFFFF91) | STACK[0xB0E] & 0x59;
  v204 = LODWORD(STACK[0x458]) + 28313216;
  v205 = (v204 ^ 0x33F957C6) & (2 * (v204 & 0x3BF967E8)) ^ v204 & 0x3BF967E8;
  v206 = ((2 * (v204 ^ 0x157BD886)) ^ 0x5D057EDC) & (v204 ^ 0x157BD886) ^ (2 * (v204 ^ 0x157BD886)) & 0x2E82BF6E;
  v207 = (v206 ^ 0xC003E40) & (4 * v205) ^ v205;
  v208 = ((4 * (v206 ^ 0x22828122)) ^ 0xBA0AFDB8) & (v206 ^ 0x22828122) ^ (4 * (v206 ^ 0x22828122)) & 0x2E82BF68;
  v209 = (v208 ^ 0x2A02BD20) & (16 * v207) ^ v207;
  v210 = ((16 * (v208 ^ 0x4800246)) ^ 0xE82BF6E0) & (v208 ^ 0x4800246) ^ (16 * (v208 ^ 0x4800246)) & 0x2E82BF60;
  v211 = v209 ^ 0x2E82BF6E ^ (v210 ^ 0x2802B600) & (v209 << 8);
  LODWORD(STACK[0x4E4]) = v204 ^ (2 * ((v211 << 16) & 0x2E820000 ^ v211 ^ ((v211 << 16) ^ 0x3F6E0000) & (((v210 ^ 0x680090E) << 8) & 0x2E820000 ^ 0x2C000000 ^ (((v210 ^ 0x680090E) << 8) ^ 0x2BF0000) & (v210 ^ 0x680090E))));
  v212 = ((((LOBYTE(STACK[0x7FB]) << 8) ^ 0xFFFFC1FF) & ((LOBYTE(STACK[0xA30]) << 16) ^ 0x936243) | (LOBYTE(STACK[0x7FB]) << 8) & 0x9D00) ^ 0xD842AC) & (LOBYTE(STACK[0x992]) ^ 0xFFFFC0) ^ (STACK[0x992] & 0x10 | 0x1B5000);
  LODWORD(STACK[0x5C0]) = ((v181 << 8) ^ 0x25D93370) & (LOBYTE(STACK[0x8D9]) ^ 0xFFFFFFDB) | STACK[0x8D9] & 0x8F;
  LODWORD(STACK[0x5C8]) = ((v212 << 8) ^ 0x18936282) & (LOBYTE(STACK[0xB29]) ^ 0xFFFFFFA9) | STACK[0xB29] & 0x7D;
  v213 = LOBYTE(STACK[0xA8B]) << 8;
  v214 = (v213 ^ 0xFFFFF0FF) & ((LOBYTE(STACK[0x8F4]) << 16) ^ 0xD69DEC);
  LODWORD(STACK[0x5A0]) = (((((((LOBYTE(STACK[0x83B]) << 8) | 0xFFFF00FF) & ((LOBYTE(STACK[0xA70]) << 16) ^ 0x652B36) | (LOBYTE(STACK[0x83B]) << 8) & 0xD400) ^ 0xC39FD7) & (LOBYTE(STACK[0x9D2]) ^ 0xFFFFDC) | STACK[0x9D2] & 0x1E) << 8) ^ 0xA9D355F3) & (LOBYTE(STACK[0xB69]) ^ 0xFFFFFFD0) ^ (STACK[0xB69] & 0xC | 0x98044400);
  LODWORD(STACK[0x5A8]) = (((((v214 | v213 & 0x6200) ^ 0x33D4BA) & (LOBYTE(STACK[0x856]) ^ 0xFFFFFFF9) | STACK[0x856] & 0xA9) << 8) ^ 0x54F7391A) & (LOBYTE(STACK[0x9ED]) ^ 0xFFFFFFB5) | STACK[0x9ED] & 0xE5;
  v215 = ((LOBYTE(STACK[0xB84]) << 16) ^ 0xD5058) & ((LOBYTE(STACK[0x94F]) << 8) ^ 0xFFD0FD) | (LOBYTE(STACK[0x94F]) << 8) & 0xAF00;
  LODWORD(STACK[0x598]) = (((((((LOBYTE(STACK[0x934]) << 16) ^ 0x65A026) & ((LOBYTE(STACK[0xACB]) << 8) ^ 0xFF81E7) | (LOBYTE(STACK[0xACB]) << 8) & 0x5F00) ^ 0x9C710C) & (LOBYTE(STACK[0x896]) ^ 0xFFFFD1) | STACK[0x896] & 0xD5) << 8) ^ 0x9A3C655A) & (LOBYTE(STACK[0xA2D]) ^ 0xFFFFFFD5) | STACK[0xA2D] & 0xA5;
  LODWORD(STACK[0x5B8]) = ((((v215 ^ 0x50501) & (LOBYTE(STACK[0xAE6]) ^ 0xFFFF70) | STACK[0xAE6] & 0xA6) << 8) ^ 0x95ED9399) & (LOBYTE(STACK[0x8B1]) ^ 0xFFFFFFB4) | STACK[0x8B1] & 0x66;
  v216 = (LOBYTE(STACK[0x9AA]) ^ 0xFFFFC0) & ((((LOBYTE(STACK[0xA48]) << 16) ^ 0x6BD12D) & ((LOBYTE(STACK[0x813]) << 8) ^ 0xFFD4BD) | (LOBYTE(STACK[0x813]) << 8) & 0x2E00) ^ 0xAC6448) | STACK[0x9AA] & 0x9A;
  LODWORD(STACK[0x580]) = (((((((LOBYTE(STACK[0x98F]) << 8) ^ 0xFF50B7) & ((LOBYTE(STACK[0x7F8]) << 16) ^ 0x617FB7) & 0xFFFF7FFF | (((LOBYTE(STACK[0x98F]) >> 7) & 1) << 15)) ^ 0x94B51B) & (LOBYTE(STACK[0xB26]) ^ 0xFFFF91) | STACK[0xB26] & 0x53) << 8) ^ 0x57C05B73) & (LOBYTE(STACK[0x8F1]) ^ 0xFFFFFF5C) | STACK[0x8F1] & 0x8C;
  LODWORD(STACK[0x588]) = ((v216 << 8) ^ 0x2559190C) & (LOBYTE(STACK[0xB41]) ^ 0xFFFFFF50) | STACK[0xB41] & 0xF3;
  LODWORD(v181) = ((((LOBYTE(STACK[0xA88]) << 16) ^ 0x388D35) & ((LOBYTE(STACK[0x853]) << 8) ^ 0xFF92FD) | (LOBYTE(STACK[0x853]) << 8) & 0x7200) ^ 0xE4C551) & (LOBYTE(STACK[0x9EA]) ^ 0xFFFF58) | STACK[0x9EA] & 0x9B;
  LODWORD(STACK[0x590]) = (((((((LOBYTE(STACK[0xAA3]) << 8) ^ 0xFFFFC3FF) & ((LOBYTE(STACK[0x90C]) << 16) ^ 0x114416) | (LOBYTE(STACK[0xAA3]) << 8) & 0xBBBB) ^ 0x218C78) & (LOBYTE(STACK[0x86E]) ^ 0xFFFFFFC1) | STACK[0x86E] & 0x91) << 8) ^ 0xC75BE163) & (LOBYTE(STACK[0xA05]) ^ 0xFFFFFFDC) | STACK[0xA05] & 0x9C;
  LODWORD(STACK[0x578]) = ((v181 << 8) ^ 0x5D455134) & (LOBYTE(STACK[0xB81]) ^ 0xFFFFFF1A) | STACK[0xB81] & 0xCB;
  LODWORD(STACK[0x568]) = (((((((LOBYTE(STACK[0x94C]) << 16) ^ 0x1038C8) & ((LOBYTE(STACK[0xAE3]) << 8) ^ 0xFF17DD) | (LOBYTE(STACK[0xAE3]) << 8) & 0xC7FF) ^ 0x35C9FE) & (LOBYTE(STACK[0x8AE]) ^ 0xFFFF99) | STACK[0x8AE] & 0xC9) << 8) ^ 0x6C30FB1D) & (LOBYTE(STACK[0xA45]) ^ 0xFFFFFF12) | STACK[0xA45] & 0xE2;
  LODWORD(STACK[0x560]) = (((((((LOBYTE(STACK[0x967]) << 8) ^ 0xFFFFF1FF) & ((LOBYTE(STACK[0xB9C]) << 16) ^ 0x3092B7) | (LOBYTE(STACK[0x967]) << 8) & 0x6D00) ^ 0xB3B393) & (LOBYTE(STACK[0xAFE]) ^ 0xFFFF49) | STACK[0xAFE] & 0xDB) << 8) ^ 0xAA6DE0F9) & (LOBYTE(STACK[0x8C9]) ^ 0xFFFFFFD4) | STACK[0x8C9] & 6;
  v217 = ((LOBYTE(STACK[0x9A7]) << 8) ^ 0xFFFFDFFF) & ((LOBYTE(STACK[0x810]) << 16) ^ 0x4E059) & 0xFFFFE0FF | ((STACK[0x9A7] & 0x1F) << 8);
  LODWORD(STACK[0x558]) = (((((((LOBYTE(STACK[0x82B]) << 8) ^ 0xFFFFC1FF) & ((LOBYTE(STACK[0xA60]) << 16) ^ 0x694A4E) | (LOBYTE(STACK[0x82B]) << 8) & 0xB500) ^ 0x564C2A) & (LOBYTE(STACK[0x9C2]) ^ 0xFFFFDB) | STACK[0x9C2] & 0x9B) << 8) ^ 0x7FA4D969) & (LOBYTE(STACK[0xB59]) ^ 0xFFFFFF56) | STACK[0xB59] & 0x96;
  LODWORD(v181) = (v217 ^ 0xB952AA) & (LOBYTE(STACK[0xB3E]) ^ 0xFFFFDC) | STACK[0xB3E] & 0xC;
  v218 = ((((LOBYTE(STACK[0x86B]) << 8) ^ 0xFF501C) & ((LOBYTE(STACK[0xAA0]) << 16) ^ 0xDF7F1C) & 0xFFFF7FFF | (((LOBYTE(STACK[0x86B]) >> 7) & 1) << 15)) ^ 0x458CB6) & (LOBYTE(STACK[0xA02]) ^ 0xFFFFD5) | STACK[0xA02] & 0x55;
  v219 = ((LOBYTE(STACK[0xABB]) << 8) ^ 0xFFFFC0FF) & ((LOBYTE(STACK[0x924]) << 16) ^ 0x2A4512) | (LOBYTE(STACK[0xABB]) << 8) & 0xBA00;
  LODWORD(STACK[0x550]) = ((v181 << 8) ^ 0x5D1B0DA1) & (LOBYTE(STACK[0x909]) ^ 0xFFFFFF88) | STACK[0x909] & 0x5E;
  LODWORD(v181) = (v219 ^ 0xB4F1A6) & (LOBYTE(STACK[0x886]) ^ 0xFFFF99) | STACK[0x886] & 0x4B;
  LODWORD(STACK[0x548]) = ((v218 << 8) ^ 0xE82A23D9) & (LOBYTE(STACK[0xB99]) ^ 0xFFFFFFF0) | STACK[0xB99] & 0x26;
  v220 = ((LOBYTE(STACK[0xAFB]) << 8) | 0xFFFF01FF) & ((LOBYTE(STACK[0x964]) << 16) ^ 0xA92AAC) | (LOBYTE(STACK[0xAFB]) << 8) & 0xD500;
  LODWORD(STACK[0x540]) = ((v181 << 8) ^ 0x4276138C) & (LOBYTE(STACK[0xA1D]) ^ 0xFFFFFFD3) | STACK[0xA1D] & 0x73;
  LODWORD(STACK[0x538]) = ((((v220 ^ 0xECFEAE) & (LOBYTE(STACK[0x8C6]) ^ 0xFFFFA0) | STACK[0x8C6] & 0xFD) << 8) ^ 0xDEE99D56) & (LOBYTE(STACK[0xA5D]) ^ 0xFFFFFF58) | STACK[0xA5D] & 0xA9;
  LODWORD(STACK[0x530]) = (((((((LOBYTE(STACK[0xBB4]) << 16) ^ 0x29E6C2) & ((LOBYTE(STACK[0x97F]) << 8) ^ 0xFFD1E7) | (LOBYTE(STACK[0x97F]) << 8) & 0x1900) ^ 0x886FFA) & (LOBYTE(STACK[0xB16]) ^ 0xFFFF97) | STACK[0xB16] & 0xC7) << 8) ^ 0x38326CDA) & (LOBYTE(STACK[0x8E1]) ^ 0xFFFFFFD4) | STACK[0x8E1] & 0x25;
  LODWORD(STACK[0x528]) = ((((LOBYTE(STACK[0xB56]) | 0xFFFF00) & (((LOBYTE(STACK[0x9BF]) << 8) | (LOBYTE(STACK[0x828]) << 16)) ^ 0xFBDB03) | STACK[0xB56] & 0xFC) << 8) ^ 0x75E6454A) & (LOBYTE(STACK[0x921]) ^ 0xFFFFFF55) | STACK[0x921] & 0xB5;
  v221 = (((LOBYTE(STACK[0xAB8]) << 16) ^ 0x912D7D32) & ((LOBYTE(STACK[0x883]) << 8) ^ 0x9DFF50F2) ^ ((LOBYTE(STACK[0x883]) << 8) & 0x8238 | 0xF22D71C7)) & (LOBYTE(STACK[0xA1A]) ^ 0xFFFFFFD2) | STACK[0xA1A] & 0xA;
  LODWORD(STACK[0x518]) = (((((((LOBYTE(STACK[0xA78]) << 16) ^ 0xEA7804) & ((LOBYTE(STACK[0x843]) << 8) ^ 0xFFD5AF) | (LOBYTE(STACK[0x843]) << 8) & 0x87FF) ^ 0xCE377B) & (LOBYTE(STACK[0x9DA]) ^ 0xFFFFD0) | STACK[0x9DA] & 0x80) << 8) ^ 0x1E31DC7C) & (LOBYTE(STACK[0xB71]) ^ 0xFFFFFFD1) | STACK[0xB71] & 0x83;
  LODWORD(v181) = ((((*(STACK[0x6B0] + (v221 & 0x14C ^ 0x44) + (v221 & 0x14C ^ 0x108)) << 16) ^ 0xA5D030) & ((LOBYTE(STACK[0xAD3]) << 8) ^ 0xFFDAB0) | (LOBYTE(STACK[0xAD3]) << 8) & 0x2F00) ^ 0xA81CE4) & (LOBYTE(STACK[0x89E]) ^ 0xFFFFD8) | STACK[0x89E] & 0x2B;
  v222 = LOBYTE(STACK[0xBB1]);
  LODWORD(STACK[0x500]) = v222;
  LODWORD(STACK[0x520]) = ((v221 << 8) ^ 0xB90F7F37) & (v222 ^ 0xFFFFFF10);
  LODWORD(STACK[0x510]) = ((v181 << 8) ^ 0x9B20D47D) & (LOBYTE(STACK[0xA35]) ^ 0xFFFFFFD2) | STACK[0xA35] & 0x82;
  v223 = (LOBYTE(STACK[0xB2E]) ^ 0xFFFFD0) & ((((LOBYTE(STACK[0x997]) << 8) ^ 0xFFFFC1FF) & ((LOBYTE(STACK[0x800]) << 16) ^ 0x55EAB3) | (LOBYTE(STACK[0x997]) << 8) & 0x1500) ^ 0xF3A147) | STACK[0xB2E] & 0xB;
  LODWORD(STACK[0x508]) = (((((((LOBYTE(STACK[0xB13]) << 8) ^ 0xFFFF83FF) & ((LOBYTE(STACK[0x97C]) << 16) ^ 0xC0AC09) | (LOBYTE(STACK[0xB13]) << 8) & 0x5300) ^ 0xF9560E) & (LOBYTE(STACK[0x8DE]) ^ 0xFFFF98) | STACK[0x8DE] & 0xF8) << 8) ^ 0xA3FF347D) & (LOBYTE(STACK[0xA75]) ^ 0xFFFFFF52) | STACK[0xA75] & 0x82;
  LODWORD(v142) = ((v223 << 8) ^ 0x99BF0276) & (LOBYTE(STACK[0x8F9]) ^ 0xFFFFFF51) | STACK[0x8F9] & 0x89;
  LODWORD(STACK[0x4D0]) = v142;
  v224 = LOBYTE(STACK[0x9D7]);
  LODWORD(v181) = ((((v224 & 0xA8 ^ 0x18F7D2FD) + 11569) ^ ((v224 & 0xA8 ^ 0x19848A2E) + 30180) ^ ((v224 & 0xA8 ^ 0x58FB) + 42807)) + (((v224 & 0xA8) - 102) & 0xFE)) ^ (((LOBYTE(STACK[0x840]) << 8) ^ 0xFDDF) & (v224 ^ 0xFFF0) | v224 & 0x20);
  v225 = LOBYTE(STACK[0x939]);
  v226 = (v225 ^ 0x5E44FF90) & ((LOBYTE(STACK[0xB6E]) << 8) ^ 0x5E441CBD) ^ (v225 & 0x42 | 0xA28C00);
  LODWORD(STACK[0x4F8]) = ((v181 << 16) ^ 0x401025DF) & (v226 ^ 0xA1190260) ^ v226 & 0x4C00DA20;
  v227 = ((((LOBYTE(STACK[0xAD0]) << 8) ^ 0x70F33BE2) & (LOBYTE(STACK[0x89B]) ^ 0x77F7FFC8) | STACK[0x89B] & 0x1D) ^ 0x1FBC47) << (~(((LOBYTE(STACK[0x89B]) ^ 0xC8) & 0xE2 | STACK[0x89B] & 0x1D) ^ LOBYTE(STACK[0x89B])) & 8);
  LODWORD(STACK[0x4F4]) = (((((((LOBYTE(STACK[0x85B]) << 8) ^ 0xFFFFF0FF) & ((LOBYTE(STACK[0xA90]) << 16) ^ 0x681560) | (LOBYTE(STACK[0x85B]) << 8) & 0xEA00) ^ 0x91F881) & (LOBYTE(STACK[0x9F2]) ^ 0xFFFFCA) | STACK[0x9F2] & 0x1E) << 8) ^ 0xDFC70E99) & (LOBYTE(STACK[0xB89]) ^ 0xFFFFFF92) | STACK[0xB89] & 0x66;
  LODWORD(v181) = v227 ^ LOBYTE(STACK[0xA32]);
  v228 = ((((LOBYTE(STACK[0x954]) << 16) ^ 0x97D20C) & ((LOBYTE(STACK[0xAEB]) << 8) ^ 0xFFDDCC) | (LOBYTE(STACK[0xAEB]) << 8) & 0x2D00) ^ 0x593FBD) & (LOBYTE(STACK[0x8B6]) ^ 0xFFFF90) ^ (STACK[0x8B6] & 0x4E | 0x81400);
  v229 = ((LOBYTE(STACK[0xB2B]) << 8) ^ 0xFFFFF7FF) & ((LOBYTE(STACK[0x994]) << 16) ^ 0x6F18A0) | (LOBYTE(STACK[0xB2B]) << 8) & 0xE7FF;
  LODWORD(STACK[0x4EC]) = ((v181 << 8) ^ 0x51B183E8) & (LOBYTE(STACK[0x7FD]) ^ 0xFFFFFFC2) | STACK[0x7FD] & 0x17;
  LODWORD(v181) = (v229 ^ 0x3530AD) & (LOBYTE(STACK[0x8F6]) ^ 0xFFFF40) | STACK[0x8F6] & 0xF2;
  LODWORD(STACK[0x4E0]) = ((v228 << 8) ^ 0xA6903D3E) & (LOBYTE(STACK[0xA4D]) ^ 0xFFFFFF51) | STACK[0xA4D] & 0xC1;
  LODWORD(STACK[0x4F0]) = ((v181 << 8) ^ 0x931A9850) & (LOBYTE(STACK[0xA8D]) ^ 0xFFFFFFF7) | STACK[0xA8D] & 0xAF;
  LODWORD(STACK[0x4E8]) = (((((((LOBYTE(STACK[0x9AF]) << 8) ^ 0xFFD0B1) & ((LOBYTE(STACK[0x818]) << 16) ^ 0x55FAB1) | (LOBYTE(STACK[0x9AF]) << 8) & 0x500) ^ 0x6C0E66) & (LOBYTE(STACK[0xB46]) ^ 0xFFFFD0) ^ (STACK[0xB46] & 0x28 | 0x880600)) << 8) ^ 0x6C02B045) & (LOBYTE(STACK[0x911]) ^ 0xFFFFFFFA) | STACK[0x911] & 0xBA;
  v230 = a102 ^ v180 ^ (a110 >> 31) ^ (a110 >> 26) ^ a103 ^ a98 ^ a100 ^ a106 ^ a107 ^ a55 ^ a104 ^ 0xFCBA528;
  v231 = (v180 >> 27) ^ (v230 >> 21) ^ 0xAACADD87;
  v232 = v179 ^ (2 * v152) ^ (v152 << 6) ^ (v152 << 29) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x32C]) ^ LODWORD(STACK[0x438]) ^ v160 ^ LODWORD(STACK[0x3A8]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x234]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x434]) ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x3A4]) ^ v182 ^ v230 ^ (32 * v230) ^ (4 * v230) ^ (v230 << 11) ^ v231 ^ (4 * v231) ^ (32 * v231) ^ (v231 << 11) ^ (32 * v161) ^ (16 * v161) ^ (v161 << 30) ^ v170 ^ LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x260]) ^ LODWORD(STACK[0x25C]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x3D4]) ^ v172 ^ LODWORD(STACK[0x258]);
  v233 = (v177 >> 30) ^ ((v178 ^ v177) >> 21) ^ ((v178 ^ v177) >> 27) ^ 0x180D417E;
  v234 = v232 ^ a41 ^ a42 ^ v178 ^ v177 ^ 0x57272056 ^ (4 * (v178 ^ v177 ^ 0x57272056)) ^ (32 * (v178 ^ v177 ^ 0x57272056)) ^ ((v178 ^ v177 ^ 0x57272056) << 11) ^ v233 ^ (4 * v233) ^ (32 * v233) ^ (v233 << 11);
  v235 = ((LOBYTE(STACK[0x873]) << 8) ^ 0xFFFF81FF) & ((LOBYTE(STACK[0xAA8]) << 16) ^ 0x888A3A) | (LOBYTE(STACK[0x873]) << 8) & 0x7500;
  v236 = LOBYTE(STACK[0x951]);
  LODWORD(STACK[0x4D8]) = (((((((LOBYTE(STACK[0x9EF]) << 8) ^ 0xFF1050) & ((LOBYTE(STACK[0x858]) << 16) ^ 0xC83450) | (LOBYTE(STACK[0x9EF]) << 8) & 0xCB00) ^ 0x855561) & (LOBYTE(STACK[0xB86]) ^ 0xFFFFDE) | STACK[0xB86] & 0xCE) << 8) ^ 0x617EEA61) & (v236 ^ 0xFFFFFF4A) | v236 & 0x9E;
  v237 = ((LODWORD(STACK[0x4A4]) ^ 0x6F18D27D) - 1210643818) ^ ((LODWORD(STACK[0x4A4]) ^ 0x7C135B1C) - 1529052171) ^ ((LODWORD(STACK[0x4A4]) ^ 0x5713F1A7) - 1881396912);
  LODWORD(v181) = (v235 ^ 0x85FCE7) & (LOBYTE(STACK[0xA0A]) ^ 0xFFFFD2) | STACK[0xA0A] & 0x22;
  v238 = (v142 & 0x156145C9 ^ 0x5000080) + (v142 & 0x156145C9 ^ 0x10614549);
  LODWORD(STACK[0x604]) = v234 ^ 0x7EDD20D;
  LODWORD(STACK[0x7C4]) = -2009212831 * (v234 ^ 0x7EDD20D) - 75026750;
  v239 = STACK[0x3C8];
  v240 = STACK[0x218];
  v241 = STACK[0x220];
  v242 = STACK[0x200];
  LODWORD(v142) = LODWORD(STACK[0x668]) ^ 0x7D6810C8;
  v243 = LODWORD(STACK[0x3B8]) ^ (2 * STACK[0x3C8]) ^ (STACK[0x3C8] << 6) ^ (STACK[0x3C8] << 29) ^ a131 ^ a125 ^ a124 ^ a120 ^ a114 ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x220]) ^ a116 ^ a128 ^ a121 ^ a92 ^ a127 ^ a113 ^ LODWORD(STACK[0x200]) ^ LODWORD(STACK[0x660]) ^ (4 * LODWORD(STACK[0x660])) ^ (32 * LODWORD(STACK[0x660])) ^ (LODWORD(STACK[0x660]) << 11) ^ v142 ^ (4 * v142) ^ (32 * v142) ^ (v142 << 11);
  LODWORD(STACK[0x4D4]) = ((v181 << 8) ^ 0xC814296) & (LOBYTE(STACK[0xBA1]) ^ 0xFFFFFFB0) | STACK[0xBA1] & 0x69;
  LODWORD(STACK[0x7C0]) = -2009212831 * v237 + 2071516403;
  v244 = LODWORD(STACK[0x4AC]) ^ (v238 - 303728292 + (~(2 * v238) | 0xA43D6D49)) ^ 0x8600672C;
  LODWORD(STACK[0x7C8]) = -2009212831 * v244 - 75026750;
  v243 ^= 0x1D5DC890u;
  LODWORD(STACK[0x4CC]) = v243;
  LODWORD(STACK[0x7D0]) = -2009212831 * v243 - 75026750;
  v245 = ((LODWORD(STACK[0x42C]) ^ 0xC9DC66F5) - 1730926885) ^ ((LODWORD(STACK[0x42C]) ^ 0x8FAF0469) - 559463353) ^ ((LODWORD(STACK[0x42C]) ^ 0x64BD3963) + 901085517);
  v246 = v175 ^ 0x6354B1FE;
  LODWORD(STACK[0x7CC]) = -2009212831 * (v175 ^ 0x6354B1FE) - 75026750;
  v247 = LODWORD(STACK[0x678]) ^ 0xDAE08D3F;
  LODWORD(v142) = (LODWORD(STACK[0x678]) >> 27) ^ (LODWORD(STACK[0x678]) >> 21) ^ 0xF402151E;
  v248 = LODWORD(STACK[0x31C]) ^ (LODWORD(STACK[0x44C]) << 16) ^ (LODWORD(STACK[0x31C]) << 6) ^ (2 * LODWORD(STACK[0x31C])) ^ (LODWORD(STACK[0x31C]) << 29) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x314]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x30C]) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x444]) ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x304]) ^ v247 ^ (32 * v247) ^ (4 * v247) ^ (v247 << 11) ^ v142 ^ (4 * v142) ^ (32 * v142) ^ (v142 << 11) ^ (32 * LODWORD(STACK[0x2B0])) ^ (16 * LODWORD(STACK[0x2B0])) ^ ((LODWORD(STACK[0x2B0]) << 30) | 0x22F09AF8) ^ LODWORD(STACK[0x428]) ^ LODWORD(STACK[0x424]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x22C]) ^ LODWORD(STACK[0x2A4]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x254]) ^ LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x24C]) ^ a16 ^ (4 * a16) ^ (32 * a16) ^ (a16 << 11) ^ LODWORD(STACK[0x690]) ^ 0x5AB24378 ^ (4 * (LODWORD(STACK[0x690]) ^ 0x5AB24378)) ^ (32 * (LODWORD(STACK[0x690]) ^ 0x5AB24378)) ^ ((LODWORD(STACK[0x690]) ^ 0x5AB24378) << 11) ^ v239 ^ (v239 << 12) ^ ((v239 << 31) | 0x3BE9FB0) ^ a120 ^ a114 ^ LODWORD(STACK[0x20C]) ^ v240 ^ v241 ^ a116 ^ LODWORD(STACK[0x210]) ^ LODWORD(STACK[0x204]);
  LODWORD(v142) = LODWORD(STACK[0x688]) ^ 0x5D0DF2DB;
  v249 = v248 ^ a121 ^ LODWORD(STACK[0x208]) ^ a113 ^ v242 ^ a131 ^ LODWORD(STACK[0x680]) ^ 0xC4307FDC ^ (4 * (LODWORD(STACK[0x680]) ^ 0xC4307FDC)) ^ (32 * (LODWORD(STACK[0x680]) ^ 0xC4307FDC)) ^ ((LODWORD(STACK[0x680]) ^ 0xC4307FDC) << 11) ^ v142 ^ (4 * v142) ^ (32 * v142) ^ (v142 << 11);
  LODWORD(STACK[0x7D4]) = -2009212831 * v245 + 1295076497;
  v250 = v249 ^ 0xF0A68B39;
  LODWORD(STACK[0x7D8]) = -2009212831 * (v249 ^ 0xF0A68B39) - 75026750;
  LODWORD(v142) = STACK[0x4A8];
  v251 = LODWORD(STACK[0x4A8]) ^ 0xB2636832;
  LODWORD(STACK[0x7DC]) = -2009212831 * v251 - 75026750;
  LODWORD(STACK[0x49C]) = (v175 >> 28) ^ (v175 >> 27) ^ ((v175 ^ 0x6354B1FE) >> 15) ^ ((v175 ^ 0x6354B1FE) >> 2) ^ ((v175 ^ 0x6354B1FE) >> 5) ^ ((v175 ^ 0x6354B1FE) >> 4);
  v252 = (v246 >> 21) ^ (v246 >> 19);
  v253 = (v246 >> 11) ^ (v246 >> 10) ^ (v246 >> 9);
  LODWORD(STACK[0x494]) = ((v175 ^ 0x6354B1FE) >> 30) ^ ((v175 ^ 0x6354B1FE) >> 29) ^ v252 ^ ((v175 ^ 0x6354B1FE) >> 18) ^ ((v175 ^ 0x6354B1FE) >> 14) ^ ((v175 ^ 0x6354B1FE) >> 13) ^ v253 ^ ((v175 ^ 0x6354B1FE) >> 6);
  v254 = (v175 >> 20) ^ (v175 >> 1) ^ (v246 >> 25) ^ (v246 >> 22) ^ v252 ^ (v246 >> 18) ^ (v246 >> 14) ^ HIWORD(v246) ^ (v246 >> 13) ^ (v246 >> 12) ^ (v246 >> 11) ^ (v246 >> 7) ^ (v246 >> 6) ^ (v246 >> 4);
  LODWORD(STACK[0x680]) = v254;
  LODWORD(STACK[0x678]) = ((v254 >> 27) & 5 ^ ((LODWORD(STACK[0x670]) >> 31) | 0xFFFFFFFE) ^ (v254 >> 21) & 0x405) & ((v254 >> 27) & 0x1A ^ (v254 >> 21) & 0x2DA ^ 0xD6C15C95) | (v254 >> 21) & 0x120;
  LODWORD(STACK[0x648]) = v175;
  v255 = (v175 >> 17) ^ HIBYTE(v175) ^ (v246 >> 8) ^ v252 ^ (v246 >> 22) ^ HIWORD(v246) ^ (v246 >> 30) ^ (v246 >> 25) ^ (v246 >> 29) ^ (v246 >> 14) ^ (v246 >> 12) ^ v253 ^ (v246 >> 7) ^ (v246 >> 6) ^ (v246 >> 5);
  LODWORD(STACK[0x448]) = (v175 ^ 0x6354B1FE) << 11;
  LODWORD(STACK[0x444]) = (v175 ^ 0x6354B1FE) << 13;
  v256 = (v246 << 7) ^ (v246 << 10) ^ (v246 << 11) ^ (v246 << 13);
  LODWORD(STACK[0x5F0]) = v256;
  LODWORD(STACK[0x670]) = (v175 ^ 0x6354B1FE) << 16;
  LODWORD(STACK[0x638]) = (v175 ^ 0x6354B1FE) << 18;
  LODWORD(STACK[0x640]) = (v175 ^ 0x6354B1FE) << 21;
  LODWORD(STACK[0x668]) = (v175 ^ 0x6354B1FE) << 20;
  LODWORD(STACK[0x440]) = (v175 ^ 0x6354B1FE) << 22;
  LODWORD(STACK[0x43C]) = (v175 ^ 0x6354B1FE) << 23;
  v257 = (8 * v246) ^ (4 * v246) ^ 0x5275C21D;
  LODWORD(STACK[0x438]) = v257;
  LODWORD(STACK[0x434]) = (v175 ^ 0x6354B1FE) << 27;
  LODWORD(STACK[0x630]) = (v175 ^ 0x6354B1FE) << 26;
  v258 = (v255 >> 21) ^ 0xC5C4C25B;
  v259 = (v246 << 8) ^ (v246 << 15) ^ (v246 << 24) ^ v256 ^ (v246 << 16) ^ (v246 << 18) ^ (v246 << 20) ^ (v246 << 21) ^ (v246 << 22) ^ (v246 << 23) ^ (v246 << 25) ^ (v246 << 27) ^ (v246 << 26) ^ v257 ^ v255 ^ 0x3A0F4D61 ^ (4 * (v255 ^ 0x3A0F4D61)) ^ (32 * (v255 ^ 0x3A0F4D61)) ^ ((v255 ^ 0x3A0F4D61) << 11) ^ (4 * v258) ^ v244;
  LODWORD(STACK[0x4A0]) = (((v225 & 0xFFFFFFC1) - 117) ^ ((v225 & 0xFFFFFFC1) + 115) ^ ((v225 & 0xFFFFFFC1 ^ 0xFFFFFFDE) - 67)) + (((v225 & 0xFFFFFFC1 ^ 0x5E) + 76) ^ ((v225 & 0xFFFFFFC1 ^ 0xFFFFFFE8) - 2) ^ ((v225 & 0xFFFFFFC1 ^ 0xFFFFFFB7) - 93));
  v260 = v251;
  v261 = v251 >> 22;
  v262 = v251 >> 25;
  v263 = v251 >> 19;
  v264 = v251 >> 18;
  v265 = WORD1(v251);
  v266 = v251 >> 12;
  LODWORD(v181) = v251 >> 6;
  v267 = v251 >> 8;
  v268 = v251 >> 7;
  LODWORD(v239) = (v142 >> 4) ^ 0xA2A7EF1D;
  LODWORD(STACK[0x498]) = ((v142 >> 31) | 0xC31F7B7C) ^ (v142 >> 26) ^ (v251 >> 3) ^ (v251 >> 30) ^ (v251 >> 29) ^ (v251 >> 22) ^ (v251 >> 25) ^ (v251 >> 18) ^ (v251 >> 19) ^ WORD1(v251) ^ (v251 >> 15) ^ (v251 >> 12) ^ (v251 >> 8) ^ (v251 >> 7) ^ (v251 >> 6) ^ v239;
  v269 = (v251 >> 21) ^ (v251 >> 19) ^ (v251 >> 18) ^ (v251 >> 15);
  LODWORD(v251) = (v251 >> 29) ^ ((v251 >> 30) | 0xBC5F4F78) ^ 0x98E37425;
  LODWORD(STACK[0x4C4]) = (v142 >> 28) ^ (v142 >> 27) ^ (v142 >> 10) ^ (v260 >> 2) ^ v269 ^ (v260 >> 14) ^ (v260 >> 13) ^ (v260 >> 11) ^ (v260 >> 9) ^ v181 ^ (v260 >> 5) ^ v239 ^ v251;
  LODWORD(STACK[0x5F8]) = v260 << (~v236 & 6) << ((v236 & 1) == 0) << (v236 & 4) << ((v236 ^ 2) & 3 ^ 2);
  v270 = (v142 >> 20) ^ (v142 >> 1) ^ (v260 >> 21) ^ v262 ^ v261 ^ v263 ^ v264 ^ (v260 >> 14) ^ v265 ^ (v260 >> 13) ^ v266 ^ (v260 >> 11) ^ v268 ^ v181 ^ v239;
  v271 = (v260 >> 14) ^ (v142 >> 10) ^ v266 ^ (v260 >> 11) ^ (v260 >> 9) ^ v267 ^ v268 ^ v181 ^ (v260 >> 5) ^ BYTE3(v142) ^ (v142 >> 17) ^ (v260 >> 21) ^ (v261 ^ v262) ^ (v263 ^ v265) ^ v251;
  LOBYTE(v255) = (BYTE3(v142) ^ (v142 >> 17) ^ (v260 >> 21) ^ v261 ^ v262 ^ v263 ^ v265 ^ v251) & 0x17;
  v272 = v271 ^ 0x2CFA04u;
  v273 = v272 << (((v255 ^ 1) + (v255 ^ 0x16)) & 0x2D);
  v274 = v273 - ((2 * v273) & 0x263381CC);
  LODWORD(v181) = (v258 << 11) ^ (32 * v258);
  v275 = v259 ^ 0x90521E4A ^ v258;
  v276 = v272 >> (((v259 ^ 0x4A ^ v258) & 0x15 ^ 0x15) + ((v259 ^ 0x4A ^ v258) & 0x15));
  LODWORD(STACK[0x628]) = v260 << 10;
  LODWORD(STACK[0x430]) = v260 << 7;
  LODWORD(STACK[0x458]) = v260 << 23;
  LODWORD(STACK[0x690]) = v260 << 13;
  LODWORD(STACK[0x658]) = v260 << 11;
  LODWORD(STACK[0x660]) = v260 << 18;
  LODWORD(STACK[0x620]) = v260 << 16;
  LODWORD(STACK[0x61C]) = v260 << 20;
  LODWORD(STACK[0x610]) = v260 << 22;
  LODWORD(STACK[0x654]) = v260 << 21;
  LODWORD(STACK[0x428]) = v260 << 24;
  LODWORD(STACK[0x60C]) = v260 << 25;
  LODWORD(STACK[0x41C]) = 4 * v260;
  LODWORD(STACK[0x420]) = 8 * v260;
  LODWORD(v142) = (8 * v260) ^ (4 * v260) ^ 0xD0C49686;
  LODWORD(STACK[0x450]) = v142;
  v277 = (v260 << 26) ^ 0x8F9A8826;
  LODWORD(STACK[0x688]) = v277;
  LODWORD(STACK[0x44C]) = v260 << 27;
  v278 = (v260 << 15) ^ (v260 << 8) ^ (v260 << 23) ^ (v260 << 7) ^ (v260 << 10) ^ (v260 << 11) ^ (v260 << 13) ^ (v260 << 18) ^ (v260 << 16) ^ (v260 << 20) ^ (v260 << 21) ^ (v260 << 22) ^ (v260 << 24) ^ (v260 << 25) ^ (v260 << 27) ^ v277 ^ v142 ^ v271 ^ 0x943648AB ^ (4 * (v271 ^ 0x943648AB)) ^ ((v271 ^ 0x943648AB) << 11) ^ (v274 - 1827028762) ^ v250;
  LODWORD(v276) = (v276 - ((2 * v276) & 0x2642) - 27871);
  LODWORD(STACK[0x424]) = v278 ^ v276;
  v279 = v278 ^ v276 ^ (4 * v276) ^ (32 * v276) ^ (v276 << 11);
  v280 = (v259 >> 30) | 0xCDDA58F0;
  LODWORD(v272) = (v259 >> 25) ^ 0x6CCB9AAE;
  v281 = (v259 >> 29) ^ 0x3EE4B487;
  LODWORD(v251) = (v259 >> 22) ^ 0x63BEBBB8;
  LODWORD(v181) = v181 ^ v275;
  LODWORD(STACK[0x608]) = v275;
  v282 = (v181 >> 19) ^ 0x5C6004C8;
  v283 = WORD1(v181) ^ 0xC624E827;
  v284 = (v181 >> 18) ^ 0x9DF4C4D2;
  v285 = (v181 >> 12) ^ 0x8C5EE2FD;
  v286 = (v181 >> 10) ^ 0x76BD63FB;
  v287 = (v181 >> 7) ^ 0x7F4AF2D3;
  v288 = (v181 >> 8) ^ 0xBCD31DD0 ^ v287;
  v289 = (v181 >> 4) ^ 0xF7276B0F;
  LODWORD(STACK[0x4C8]) = ((v259 >> 31) | 0xF2717700) ^ (v259 >> 26) ^ v280 ^ v272 ^ v281 ^ v251 ^ (v181 >> 15) ^ (v181 >> 3) ^ v282 ^ v284 ^ v283 ^ v285 ^ v286 ^ v288 ^ v289;
  LODWORD(v276) = v272 ^ v251;
  LODWORD(v272) = (v181 >> 21) ^ 0x6D339682 ^ v282;
  v290 = (v181 >> 14) ^ 0x369C6E29;
  LODWORD(v239) = (v181 >> 11) ^ 0xA106A7F4;
  v291 = v285 ^ v239 ^ v287;
  LODWORD(STACK[0x4B8]) = v181 >> 6;
  v292 = (v181 >> 6) ^ 0xE1D4748E;
  LODWORD(STACK[0x3E8]) = v276 ^ (v181 >> 20) ^ (v181 >> 13) ^ (v181 >> 1) ^ v272 ^ v284 ^ v283 ^ v290 ^ v291 ^ v292 ^ v289;
  v293 = ((v259 ^ 0x90521E4A) >> 31) | 0xADF0C89E;
  LOWORD(v272) = v276 ^ v281 ^ HIBYTE(v259) ^ v280 ^ (v181 >> 17) ^ v272;
  v294 = v181 ^ 0x57EC6700;
  LODWORD(v251) = (4 * (v181 ^ 0x57EC6700)) ^ 0x70F6F36A;
  LODWORD(STACK[0x4B4]) = v251;
  LODWORD(STACK[0x3D8]) = (v181 ^ 0x57EC6700) << 11;
  LODWORD(STACK[0x4B0]) = (8 * (v181 ^ 0x57EC6700)) ^ 0x65187BD0;
  v295 = (v294 << 15) ^ (v294 << 8) ^ (v294 << 11) ^ v251 ^ (8 * v294) ^ 0xBC459B0A;
  v296 = (v181 ^ 0x6642DF08) << ((77 * (((v272 & 0x40 | 0xA6) ^ (v272 & 0x64 ^ 0xE3) & (v272 & 0x64 ^ 0xD6)) & (((~(2 * ((4 * v181) ^ 0x6A ^ (8 * v181) ^ 0xA)) + ((4 * v181) ^ 0x6A ^ (8 * v181) ^ 0xA)) & 0x6E) + (((4 * v181) ^ 0x6A ^ (8 * v181) ^ 0xA) & 0x6C)))) & 0xFC);
  v297 = v296 - ((2 * v296) & 0xAD8F37B8);
  LODWORD(v296) = (v181 >> 5) ^ (v181 >> 9) ^ v283 ^ v290 ^ v239 ^ v285 ^ v286 ^ v288 ^ v292;
  LODWORD(v251) = LODWORD(STACK[0x604]) ^ (LODWORD(STACK[0x648]) << 31) ^ v246 ^ (v246 << 12) ^ LODWORD(STACK[0x5F0]);
  LODWORD(STACK[0x3A0]) = v246 << 14;
  v298 = (v246 << 14) ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x638]);
  LODWORD(STACK[0x39C]) = v246 << 19;
  LODWORD(v251) = v251 ^ v298 ^ (v246 << 19) ^ LODWORD(STACK[0x668]);
  v299 = LODWORD(STACK[0x640]) ^ (v246 << 25) ^ LODWORD(STACK[0x630]);
  LODWORD(v142) = (v246 << 28) ^ 0x9679157A;
  LODWORD(STACK[0x398]) = v142;
  LODWORD(v251) = v251 ^ v299 ^ v142 ^ LODWORD(STACK[0x680]) ^ 0x21D55761 ^ (4 * (LODWORD(STACK[0x680]) ^ 0x21D55761)) ^ (32 * (LODWORD(STACK[0x680]) ^ 0x21D55761)) ^ ((LODWORD(STACK[0x680]) ^ 0x21D55761) << 11) ^ LODWORD(STACK[0x678]) ^ 0x3F180C56 ^ (4 * (LODWORD(STACK[0x678]) ^ 0x3F180C56)) ^ (32 * (LODWORD(STACK[0x678]) ^ 0x3F180C56)) ^ ((LODWORD(STACK[0x678]) ^ 0x3F180C56) << 11);
  v300 = (v181 << 25) ^ 0x57A3AE53;
  LODWORD(STACK[0x3C8]) = v300;
  LODWORD(v142) = (v181 << 26) ^ 0xDEE52E79;
  LODWORD(STACK[0x3A4]) = v142;
  LODWORD(v142) = (v181 << 24) ^ 0x16F359C3 ^ v300 ^ v142;
  LODWORD(STACK[0x490]) = v142;
  LODWORD(v251) = v251 ^ (v275 << 27) ^ ((v181 ^ 0x57EC6700) << 23) ^ v142;
  v301 = ((v181 ^ 0x57EC6700) << 10) ^ 0x8D3E6FA5;
  LODWORD(STACK[0x680]) = v301;
  LODWORD(v181) = ((v181 ^ 0x57EC6700) << 7) ^ 0xF87FB66F;
  LODWORD(STACK[0x670]) = v181;
  LODWORD(v142) = (v294 << 13) ^ 0x8B0B0DC0;
  LODWORD(STACK[0x678]) = v142;
  LODWORD(v251) = v251 ^ v181 ^ v301 ^ v142;
  v302 = (v294 << 16) ^ 0x846CD23F;
  LODWORD(STACK[0x668]) = v302;
  LODWORD(v181) = (v294 << 18) ^ 0xD12612D5;
  LODWORD(STACK[0x3D4]) = v181;
  v303 = (v294 << 21) ^ 0x69077E3A;
  LODWORD(v142) = (v294 << 22) ^ 0x53B5359A;
  LODWORD(STACK[0x454]) = v142;
  v304 = (v296 >> 21) ^ 0x92A4CD21;
  v305 = v251 ^ v181 ^ v302 ^ v303 ^ v142 ^ v295 ^ v296 ^ 0xFCAF5857 ^ v272 ^ (32 * (v296 ^ 0xFCAF5857 ^ v272)) ^ (4 * (v296 ^ 0xFCAF5857 ^ v272)) ^ ((v296 ^ 0xFCAF5857 ^ v272) << 11) ^ (4 * v304) ^ (32 * v304) ^ (v304 << 11) ^ (v297 + 1455922140);
  v306 = (v279 >> 11) ^ 0xA912A723;
  v307 = (v279 >> 13) ^ 0x95217874;
  v308 = (v278 >> 29) ^ 0xA808AF8D;
  v309 = (v279 >> 19) ^ 0xEEBF3E6;
  v310 = (v279 >> 14) ^ 0x7091EC87;
  v311 = (v279 >> 10) ^ 0x6A8B7CA8;
  v312 = (v279 >> 9) ^ 0xB273D313;
  v313 = (v279 >> 6) ^ 0xC5A8DE7;
  v314 = (v279 >> 5) ^ 0xD004198F;
  v315 = (v279 >> 4) ^ 0x35CF659F;
  LODWORD(v296) = (v279 >> 15) ^ (v279 >> 2) ^ (v278 >> 28) ^ (v278 >> 30) ^ (v278 >> 27) ^ (v279 >> 18) ^ (v279 >> 21) ^ v306 ^ v307 ^ v308 ^ v309 ^ v310 ^ v311 ^ v312 ^ v313 ^ v314 ^ v315;
  LODWORD(STACK[0x3F8]) = v296;
  v316 = (v296 >> 27) ^ (v296 >> 21);
  LODWORD(STACK[0x3E0]) = v316;
  v317 = v316 ^ 0x56;
  if (v246 < 0x40)
  {
    v317 = -99;
  }

  v318 = v279 ^ 0xD92B6DD0;
  STACK[0x3A8] = v318;
  v319 = v318 >> (((v317 ^ 0x8B) & (v316 ^ 0x64) ^ v317 & 0x50) + (v316 & 0x16 ^ 2));
  LOWORD(v318) = v319 - ((2 * v319) & 0x4592);
  v320 = (v279 >> 25) ^ 0x5FC24650;
  v321 = (v279 >> 21) ^ 0xD5280FDD;
  v322 = HIWORD(v279) ^ 0x1C5CD827;
  LODWORD(v319) = (v279 >> 12) ^ 0xD48C764A;
  v323 = (v279 >> 7) ^ 0x69DA6EC4;
  v324 = (v279 >> 20) ^ (v279 >> 1) ^ (v279 >> 18) ^ v320 ^ v321 ^ v309 ^ v322 ^ v310 ^ v307 ^ v319 ^ v306 ^ v323 ^ v313 ^ v315;
  LODWORD(STACK[0x408]) = v324 ^ 0xAFD41D1F ^ (v318 - 23863);
  LODWORD(STACK[0x404]) = ((v278 >> 31) | 0x409BE02A) ^ (v324 >> 27) ^ (v324 >> 21);
  LODWORD(v319) = (v279 >> 22) ^ HIBYTE(v279) ^ (v279 >> 17) ^ (v279 >> 8) ^ v320 ^ v308 ^ v321 ^ v309 ^ v322 ^ v310 ^ v319 ^ v306 ^ v311 ^ v312 ^ v323 ^ v314 ^ v313;
  v325 = v279 ^ 0xD7928534;
  v326 = v319 ^ (((v279 ^ 0xD7928534) >> 30) | 0x921170C0);
  LODWORD(v319) = v260 ^ (LODWORD(STACK[0x4A8]) << 31) ^ (v260 << 12);
  LODWORD(v318) = LODWORD(STACK[0x628]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x690]);
  LODWORD(STACK[0x5EC]) = v260 << 14;
  LODWORD(STACK[0x3F0]) = v260 << 19;
  LODWORD(v319) = v319 ^ v318 ^ (v260 << 14) ^ LODWORD(STACK[0x620]) ^ LODWORD(STACK[0x660]) ^ (v260 << 19) ^ LODWORD(STACK[0x61C]) ^ LODWORD(STACK[0x654]);
  v327 = (v260 << 28) ^ 0x1A883BF3;
  LODWORD(STACK[0x394]) = v327;
  LODWORD(v318) = ((v260 >> 31) | 0x736D6D4E) ^ (v270 >> 27) ^ (v270 >> 21);
  LODWORD(v319) = v319 ^ LODWORD(STACK[0x60C]) ^ LODWORD(STACK[0x688]) ^ v327 ^ LODWORD(STACK[0x42C]) ^ v270 ^ 0x2C4D317A ^ (4 * (v270 ^ 0x2C4D317A)) ^ (32 * (v270 ^ 0x2C4D317A)) ^ ((v270 ^ 0x2C4D317A) << 11) ^ v318 ^ (4 * v318) ^ (32 * v318) ^ (v318 << 11) ^ LODWORD(STACK[0x5F8]);
  v328 = (v325 << 7) ^ 0x2E0299D5 ^ (v325 << 10) ^ 0x9459710E;
  LODWORD(STACK[0x3C0]) = v328;
  v329 = (v325 << 13) ^ 0x483DC781;
  LODWORD(STACK[0x604]) = v329;
  LODWORD(v318) = (v325 << 11) ^ 0xAC42DD0F;
  LODWORD(STACK[0x5E8]) = v318;
  LODWORD(v318) = v328 ^ v318 ^ v329;
  v330 = (v325 << 16) ^ 0x7F159D3F;
  LODWORD(STACK[0x3C4]) = v330;
  LODWORD(v319) = v319 ^ (v325 << 15) ^ (v325 << 8) ^ (v325 << 24) ^ v318 ^ v330;
  v331 = (v325 << 18) ^ 0x184070D1;
  LODWORD(STACK[0x5F8]) = v331;
  v332 = (v325 << 22) ^ 0xE9473138;
  LODWORD(STACK[0x390]) = v332;
  LODWORD(v318) = (v325 << 20) ^ 0x57AD2A6B;
  LODWORD(STACK[0x3BC]) = v318;
  LODWORD(v318) = v331 ^ v318 ^ v332;
  v333 = (v325 << 21) ^ 0x16A09A66;
  LODWORD(STACK[0x3B8]) = v333;
  LODWORD(v318) = v318 ^ v333;
  v334 = (v325 << 23) ^ 0x9B34D5F4;
  LODWORD(STACK[0x38C]) = v334;
  LODWORD(v318) = v318 ^ v334;
  v335 = (v325 << 25) ^ 0xEDE0E883;
  LODWORD(STACK[0x3B4]) = v335;
  LODWORD(v319) = v319 ^ v318 ^ v335;
  v336 = (4 * v325) ^ (8 * v325) ^ 0xBF47039F;
  v337 = (v325 << 26) ^ 0x1056A860;
  LODWORD(STACK[0x5F0]) = v337;
  LODWORD(v318) = (v325 << 27) ^ 0x12FD2B52;
  v338 = v319 ^ v337 ^ v318 ^ v336 ^ v326 ^ 0x48A434F4 ^ (4 * (v326 ^ 0x48A434F4)) ^ ((v326 ^ 0x48A434F4) << 11) ^ (32 * (v326 ^ 0x48A434F4));
  v339 = v305 ^ v304;
  v340 = v339 ^ 0x9079CCD4;
  v341 = (4 * (v339 ^ 0x9079CCD4)) ^ 0xCCFB7E14;
  v342 = 8 * (v339 ^ 0x9079CCD4);
  LODWORD(STACK[0x42C]) = ((16 * (v339 ^ 0x9079CCD4)) & 0x8F15BE90 ^ 0x5CD0C2BA ^ (v341 ^ v342) & 0x8F15BE9C) & (~(v341 ^ v342 ^ (16 * (v339 ^ 0x9079CCD4))) | 0xAF3FBFDF) | (v341 ^ v342 ^ (16 * (v339 ^ 0x9079CCD4))) & 0x202A0140;
  LODWORD(v319) = (v305 >> 19) ^ 0xC87F87C8;
  v343 = (v305 >> 21) ^ 0x2AE937D8;
  v344 = (v305 >> 14) ^ 0xDECAE6BB;
  v345 = (v305 >> 11) ^ 0x63AE7CF7;
  v346 = ((v305 >> 29) | 0xDB694960) ^ (v305 >> 30) ^ 0xEFCE9A75;
  v347 = (v339 >> 10) ^ 0x63EB7CEF;
  v348 = (v339 >> 9) ^ 0x9C311C3E;
  v349 = (v339 >> 6) ^ 0x2F2714AB;
  v350 = v319 ^ v343 ^ v344 ^ v345 ^ v346 ^ v347 ^ v348 ^ v349;
  LODWORD(STACK[0x418]) = (v305 >> 28) ^ (v305 >> 27) ^ (v305 >> 18) ^ (v305 >> 15) ^ (v305 >> 13);
  LODWORD(v319) = v343 ^ v319 ^ v344 ^ v345 ^ v346 ^ v347 ^ v348 ^ v349;
  LODWORD(STACK[0x40C]) = v339;
  v351 = (v339 >> 5) ^ 0x31ACBB67;
  LODWORD(STACK[0x410]) = v350 ^ v351;
  v352 = HIBYTE(v305) ^ (v305 >> 25) ^ (v305 >> 22) ^ (v305 >> 17) ^ HIWORD(v305) ^ (v305 >> 12) ^ (v339 >> 7) ^ (v339 >> 8) ^ v319 ^ v351;
  LODWORD(STACK[0x388]) = v352;
  LODWORD(v319) = (v326 >> 21) ^ 0x64409EF9;
  v353 = v338 ^ (4 * v319) ^ (32 * v319);
  v354 = v353 ^ (v319 << 11);
  v355 = v354 ^ 0xB8E01377 ^ v319;
  v356 = LODWORD(STACK[0x4A4]) ^ (LODWORD(STACK[0x648]) << 30) ^ (32 * v246) ^ (16 * v246) ^ (v246 << 17) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x444]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x434]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x438]);
  v357 = LODWORD(STACK[0x494]) ^ LODWORD(STACK[0x49C]);
  v358 = v356 ^ v357 ^ 0x5F7CC83B ^ (4 * (v357 ^ 0x5F7CC83B)) ^ (32 * (v357 ^ 0x5F7CC83B)) ^ ((v357 ^ 0x5F7CC83B) << 11);
  v359 = (LODWORD(STACK[0x49C]) >> 27) ^ (v357 >> 21) ^ 0x7578793E;
  v360 = v358 ^ v359 ^ (4 * v359) ^ (32 * v359) ^ (v359 << 11) ^ (LODWORD(STACK[0x608]) << 31);
  LODWORD(v319) = (LODWORD(STACK[0x608]) << 28) ^ 0x5D32706E;
  LODWORD(STACK[0x444]) = v319;
  v361 = LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x3A4]) ^ LODWORD(STACK[0x3C8]) ^ v303;
  v362 = v360 ^ v294 ^ v319 ^ (v294 << 12) ^ (v294 << 19);
  LODWORD(v319) = (v294 << 20) ^ 0x664EDEE5;
  LODWORD(STACK[0x494]) = v319;
  v363 = v362 ^ v361 ^ v319 ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x678]);
  v364 = v293 ^ (LODWORD(STACK[0x3E8]) >> 27) ^ (LODWORD(STACK[0x3E8]) >> 21);
  v365 = LODWORD(STACK[0x3E8]) ^ 0x4DB67787;
  LODWORD(v319) = (v294 << 14) ^ 0xCE1DC0E7;
  LODWORD(STACK[0x440]) = v319;
  v366 = v363 ^ v319 ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x668]) ^ v365 ^ (4 * v365) ^ (32 * v365) ^ (v365 << 11) ^ v364 ^ (4 * v364) ^ (32 * v364) ^ (v364 << 11);
  LODWORD(v319) = ((v339 ^ 0x9079CCD4) << 21) ^ 0xB2D344D3;
  LODWORD(STACK[0x448]) = v319;
  v367 = v342 ^ v319 ^ v341;
  LODWORD(v319) = ((v339 ^ 0x9079CCD4) << 11) ^ 0xCD04259B;
  LODWORD(STACK[0x43C]) = v319;
  v368 = v367 ^ v319;
  LODWORD(v319) = ((v339 ^ 0x9079CCD4) << 13) ^ 0x4F404975;
  LODWORD(STACK[0x438]) = v319;
  v369 = v368 ^ v319;
  LODWORD(v319) = ((v339 ^ 0x9079CCD4) << 18) ^ 0xEC23ADD6;
  LODWORD(STACK[0x3E8]) = v319;
  v370 = v369 ^ v319;
  LODWORD(v319) = ((v339 ^ 0x9079CCD4) << 22) ^ 0x94DDDDA1;
  LODWORD(STACK[0x434]) = v319;
  v371 = v370 ^ v319;
  LODWORD(v319) = ((v339 ^ 0x9079CCD4) << 23) ^ 0x36F8DBD;
  LODWORD(STACK[0x3D4]) = v319;
  v372 = v371 ^ v319;
  LODWORD(v319) = ((v339 ^ 0x9079CCD4) << 26) ^ 0x3B2B8E66;
  LODWORD(STACK[0x3C8]) = v319;
  v373 = v372 ^ v319;
  LODWORD(v319) = ((v339 ^ 0x9079CCD4) << 27) ^ 0x44045671;
  LODWORD(STACK[0x3D8]) = v319;
  LODWORD(STACK[0x3A4]) = v366 ^ ((v339 ^ 0x9079CCD4) << 20) ^ ((v339 ^ 0x9079CCD4) << 7) ^ ((v339 ^ 0x9079CCD4) << 8) ^ ((v339 ^ 0x9079CCD4) << 10) ^ ((v339 ^ 0x9079CCD4) << 15) ^ ((v339 ^ 0x9079CCD4) << 16) ^ ((v339 ^ 0x9079CCD4) << 24) ^ ((v339 ^ 0x9079CCD4) << 25) ^ v373 ^ v319 ^ v352 ^ 0x2F09B96D ^ (4 * (v352 ^ 0x2F09B96D)) ^ (32 * (v352 ^ 0x2F09B96D)) ^ ((v352 ^ 0x2F09B96D) << 11);
  v374 = (v353 >> 30) | 0x3D3B9CAC;
  v375 = (v354 >> 22) ^ 0x622A1962;
  v376 = (v354 >> 19) ^ 0xFB8BDA90;
  LODWORD(v319) = (v353 >> 29) ^ 0xD16ABB0A;
  LODWORD(STACK[0x39C]) = v319;
  v377 = (v354 >> 12) ^ 0x38EABF97;
  v378 = HIWORD(v354) ^ 0xF6F1659F;
  v379 = (v355 >> 10) ^ 0x22770FA3;
  LODWORD(STACK[0x380]) = v379;
  v380 = (v355 >> 8) ^ 0x7CFEB396;
  LODWORD(STACK[0x398]) = v380;
  v381 = (v355 >> 7) ^ 0x6AF4E7B0;
  v382 = (v355 >> 6) ^ 0xFB96C8FA;
  v383 = (v355 >> 4) ^ 0x7B3A0913;
  v384 = (v354 >> 18) ^ (v354 >> 26) ^ (v354 >> 15) ^ v375 ^ v376 ^ v374 ^ v319 ^ v378 ^ v377 ^ (((v354 ^ 0xB8E01377) >> 31) | 0x878D2410) ^ (v355 >> 3) ^ v380 ^ v379 ^ v381 ^ v382 ^ v383;
  v385 = (v355 >> 25) ^ 0x54;
  LODWORD(STACK[0x3A0]) = v385;
  LODWORD(STACK[0x49C]) = (v355 >> 25) ^ 0xA38FC9EF ^ v384;
  LODWORD(STACK[0x4A4]) = (v384 >> 21) ^ (v384 >> 27);
  v386 = (v355 ^ 0xA8DAAD9A) >> (((v355 >> 25) & 0x12 ^ 0x10) + ((v355 >> 25) & 0x12 ^ 2));
  LODWORD(v319) = v375 ^ (v354 >> 21) ^ 0xC6ADD71F;
  LODWORD(STACK[0x378]) = v319;
  v387 = (v354 >> 13) ^ (v354 >> 20) ^ v319;
  LODWORD(v319) = (v354 >> 14) ^ 0x8171AF05;
  LODWORD(STACK[0x374]) = v319;
  v388 = v377 ^ (v354 >> 11) ^ 0xC00B8390;
  v389 = v387 ^ v376 ^ v319 ^ v378 ^ v388 ^ (v355 >> 1) ^ v383;
  LODWORD(STACK[0x370]) = v382 ^ v381;
  v390 = v382 ^ v381 ^ v385 ^ v389 ^ (v386 - ((2 * v386) & 0xF99A) + 31949);
  v391 = (v353 >> 31) ^ (v389 >> 27);
  v392 = v260 ^ (2 * v260) ^ (v260 << 6) ^ (v260 << 29) ^ LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x628]) ^ LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x5EC]);
  LODWORD(STACK[0x368]) = v260 << 17;
  v393 = v260 >> (LODWORD(STACK[0x4A0]) - 111);
  v394 = LODWORD(STACK[0x498]) ^ v393;
  LODWORD(v393) = (v393 >> 30) ^ (v394 >> 27) ^ (v394 >> 21);
  v395 = STACK[0x394];
  v396 = v392 ^ LODWORD(STACK[0x620]) ^ (v260 << 17) ^ LODWORD(STACK[0x61C]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x428]) ^ LODWORD(STACK[0x60C]) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x394]) ^ v394 ^ 0xC8B018C5 ^ (4 * (v394 ^ 0xC8B018C5)) ^ (32 * (v394 ^ 0xC8B018C5)) ^ ((v394 ^ 0xC8B018C5) << 11) ^ v393 ^ (4 * (v393 ^ 0xA5378E9C)) ^ (32 * (v393 ^ 0xA5378E9C)) ^ ((v393 ^ 0xA5378E9C) << 11);
  LODWORD(v393) = STACK[0x424];
  v397 = v396 ^ (LODWORD(STACK[0x424]) << 30) ^ (16 * v325) ^ (v325 << 17) ^ (32 * STACK[0x3A8]);
  v398 = (v325 << 21) ^ LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x604]);
  LODWORD(v319) = (v325 << 14) ^ 0x46C6FDA7;
  LODWORD(STACK[0x3A8]) = v319;
  v399 = (v325 << 19) ^ 0x3457999;
  v400 = (v325 << 28) ^ 0xCDEE7623;
  LODWORD(v318) = v397 ^ v398 ^ v319 ^ LODWORD(STACK[0x5F8]) ^ v399 ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x5F0]) ^ v318 ^ v400 ^ v336 ^ LODWORD(STACK[0x3F8]) ^ 0xB0DB0D02 ^ (4 * (LODWORD(STACK[0x3F8]) ^ 0xB0DB0D02)) ^ (32 * (LODWORD(STACK[0x3F8]) ^ 0xB0DB0D02)) ^ ((LODWORD(STACK[0x3F8]) ^ 0xB0DB0D02) << 11) ^ LODWORD(STACK[0x3E0]) ^ 0x18069F6A ^ (4 * (LODWORD(STACK[0x3E0]) ^ 0x18069F6A)) ^ (32 * (LODWORD(STACK[0x3E0]) ^ 0x18069F6A)) ^ ((LODWORD(STACK[0x3E0]) ^ 0x18069F6A) << 11) ^ v355 ^ (v355 << 19) ^ (v355 << 12);
  LODWORD(v386) = (v355 << 21) ^ 0x72648A11;
  LODWORD(STACK[0x41C]) = v386;
  LODWORD(v319) = (v355 << 20) ^ 0xD68E53B7;
  LODWORD(STACK[0x648]) = v319;
  v401 = (v355 << 11) ^ 0x696A3511;
  LODWORD(v318) = v318 ^ ((v355 << 31) | 0x1FC745E) ^ v386 ^ v319 ^ v401;
  v402 = (v355 << 10) ^ 0x21F785B5;
  v403 = (v355 << 7) ^ 0x319E36B;
  v404 = (v355 << 13) ^ 0x1FC4DAFF;
  LODWORD(STACK[0x60C]) = v403;
  LODWORD(STACK[0x61C]) = v402;
  LODWORD(STACK[0x498]) = v404;
  LODWORD(v319) = (v355 << 14) ^ 0x5D4074D0;
  LODWORD(STACK[0x628]) = v319;
  v405 = (v355 << 16) ^ 0x6B702D08;
  LODWORD(STACK[0x4A0]) = v405;
  LODWORD(v319) = v318 ^ v402 ^ v403 ^ v404 ^ v319 ^ v405;
  v406 = (v355 << 25) ^ 0xA134D4D7;
  v407 = (v355 << 26) ^ 0xE962404;
  LODWORD(v318) = (v355 << 18) ^ 0x14B5116;
  LODWORD(STACK[0x428]) = v406;
  LODWORD(STACK[0x430]) = v407;
  LODWORD(v386) = (v355 << 28) ^ 0x2D9780EE;
  LODWORD(STACK[0x620]) = v386;
  v408 = v391 ^ (v390 >> 21);
  LODWORD(v319) = v319 ^ v318 ^ v406 ^ v407 ^ v386 ^ v390 ^ 0x9DB3410D ^ (4 * (v390 ^ 0x9DB3410D)) ^ (32 * (v390 ^ 0x9DB3410D)) ^ ((v390 ^ 0x9DB3410D) << 11);
  LODWORD(v386) = (v408 ^ 0x327) << (((v353 < 0) ^ 5) + (v353 < 0));
  LODWORD(STACK[0x640]) = v386 - ((2 * v386) & 0x6BC20);
  LODWORD(STACK[0x638]) = v408 ^ 0x1196153E;
  v409 = v319 ^ v408 ^ 0x1196153E;
  LODWORD(STACK[0x630]) = v409;
  v410 = LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x39C]) ^ (v354 >> 17) ^ v374 ^ LODWORD(STACK[0x378]) ^ v376 ^ v378 ^ LODWORD(STACK[0x374]) ^ v388 ^ (v355 >> 9) ^ (v355 >> 5) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x398]) ^ (((v355 ^ 0xA8DAAD9A) >> (v409 & 0x18 ^ 0x10) >> (~v409 & 8) >> (v409 & 0x10)) | 0x3A639E00);
  LODWORD(STACK[0x420]) = v410;
  v411 = LODWORD(STACK[0x4C4]) ^ 0xDEA11180;
  LODWORD(v386) = (LODWORD(STACK[0x4C4]) >> 27) ^ (LODWORD(STACK[0x4C4]) >> 21) ^ 0xE6A06D0;
  LODWORD(v319) = (16 * v260) ^ (32 * v260) ^ (v260 << 30) ^ LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x3F0]) ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x44C]) ^ LODWORD(STACK[0x688]) ^ v395 ^ LODWORD(STACK[0x450]) ^ v411 ^ LODWORD(STACK[0x4CC]) ^ (4 * v411) ^ (32 * v411) ^ (v411 << 11) ^ v386 ^ (4 * v386) ^ (32 * v386) ^ (v386 << 11) ^ ((v393 << 31) | 0x76456038) ^ v325 ^ (v325 << 12) ^ LODWORD(STACK[0x3C0]) ^ LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x604]) ^ LODWORD(STACK[0x3A8]) ^ LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x5F8]) ^ v399 ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x5F0]) ^ LODWORD(STACK[0x3B4]) ^ v400 ^ LODWORD(STACK[0x408]) ^ (32 * LODWORD(STACK[0x408])) ^ (LODWORD(STACK[0x408]) << 11) ^ (4 * LODWORD(STACK[0x408])) ^ LODWORD(STACK[0x404]) ^ (4 * LODWORD(STACK[0x404])) ^ (32 * LODWORD(STACK[0x404])) ^ (LODWORD(STACK[0x404]) << 11);
  LODWORD(v393) = (4 * v355) ^ 0xA73180D;
  LODWORD(STACK[0x688]) = v393;
  LODWORD(v386) = (8 * v355) ^ 0x53DE6CDD;
  LODWORD(STACK[0x690]) = v386;
  LODWORD(v386) = v386 ^ v393 ^ v403 ^ v402 ^ v401 ^ v404 ^ v405 ^ v318 ^ LODWORD(STACK[0x648]);
  LODWORD(v318) = (v355 << 22) ^ 0x79990749;
  LODWORD(STACK[0x660]) = v318;
  LODWORD(v386) = v386 ^ v318 ^ LODWORD(STACK[0x41C]);
  LODWORD(v318) = (v355 << 24) ^ 0x37689A1;
  LODWORD(STACK[0x658]) = v318;
  LODWORD(STACK[0x654]) = v319 ^ (v355 << 15) ^ (v355 << 8) ^ (v355 << 23) ^ (v355 << 27) ^ v386 ^ v318 ^ v406 ^ v407 ^ LODWORD(STACK[0x3A0]) ^ 0xB05A21A6 ^ v410 ^ (4 * (LODWORD(STACK[0x3A0]) ^ 0xB05A21A6 ^ v410)) ^ (32 * (LODWORD(STACK[0x3A0]) ^ 0xB05A21A6 ^ v410)) ^ ((LODWORD(STACK[0x3A0]) ^ 0xB05A21A6 ^ v410) << 11);
  LODWORD(v319) = (LODWORD(STACK[0x388]) >> 21) ^ 0x6EFFF18B;
  v412 = LODWORD(STACK[0x3A4]) ^ (4 * v319) ^ (32 * v319) ^ (v319 << 11);
  v413 = v412 ^ v319;
  v414 = v412 ^ v319 ^ 0xE8E4CF59;
  v415 = (v414 << 13) ^ 0xD3CA2AAD;
  v416 = (v414 << 7) ^ 0x8F141A80;
  v417 = (v414 << 10) ^ 0x795C281A;
  v418 = (v414 << 14) ^ 0xD9BF564;
  v419 = (v414 << 16) ^ 0x4F4535CF;
  LODWORD(v319) = v414 ^ (2 * v414) ^ (4 * v414) ^ (8 * v414) ^ (v414 << 6) ^ (v414 << 17) ^ v416 ^ v417 ^ v415 ^ v418 ^ v419;
  v420 = (v414 << 20) ^ 0x58700000;
  v421 = -(v319 ^ 0x24813271) ^ (v420 - (v319 ^ 0x24813271 ^ v420)) ^ 0xC3950B2 ^ ((v319 ^ 0x24813271) - 2 * ((v319 ^ 0x24813271) & 0xC3950BA ^ v319 & 8) + 205082802);
  v422 = (v412 >> 25) ^ 0x7442A458;
  v423 = (v412 >> 22) ^ 0xE5F183E3;
  v424 = (v412 >> 19) ^ 0x47AABE8F;
  v425 = (v412 >> 18) ^ 0x36495344;
  v426 = (v412 >> 12) ^ 0x3A0B9C72;
  v427 = HIWORD(v412) ^ 0xF5885727;
  v428 = (v413 >> 7) ^ 0xD192990B;
  LODWORD(v393) = (v413 >> 4) ^ 0x171BF3D7;
  LODWORD(v318) = (v413 >> 6) ^ 0xA541A76B;
  LODWORD(v319) = (v412 >> 26) ^ (v412 >> 29) ^ (v412 >> 15) ^ ((v412 >> 31) | 0xC1C17D40) ^ ((v412 >> 30) | 0x13934704) ^ v422 ^ v423 ^ v424 ^ v425 ^ v427 ^ v426 ^ (v414 >> 3) ^ (v414 >> 8) ^ (v414 >> 10) ^ v428 ^ v318 ^ v393;
  v429 = (v414 << 25) ^ 0xC820022D;
  v430 = (v414 << 26) ^ 0xD3575294;
  v431 = (v414 << 28) ^ 0xEE60553D;
  v432 = (v319 >> 27) ^ (v319 >> 21);
  v433 = (v414 << 24) ^ (v414 << 22) ^ (v414 << 29) ^ v429 ^ v430 ^ v431 ^ v319 ^ 0xE0C4539D ^ (4 * (v319 ^ 0xE0C4539D)) ^ (32 * (v319 ^ 0xE0C4539D)) ^ ((v319 ^ 0xE0C4539D) << 11) ^ (v421 + v420) ^ v432 ^ 0x4AF148C ^ (4 * (v432 ^ 0x4AF148C)) ^ (32 * (v432 ^ 0x4AF148C)) ^ ((v432 ^ 0x4AF148C) << 11);
  LODWORD(v319) = (v412 >> 21) ^ (v412 >> 20) ^ (v412 >> 14) ^ (v412 >> 13) ^ (v412 >> 11) ^ (v413 >> 1);
  v434 = v423 ^ v422 ^ v424 ^ v425 ^ v427 ^ v426 ^ v428 ^ v318 ^ v393;
  v435 = LODWORD(STACK[0x4B8]) ^ 0x2DBBF202 ^ LODWORD(STACK[0x4C8]);
  LODWORD(v318) = (LODWORD(STACK[0x4C8]) >> 27) ^ (v435 >> 21) ^ 0x2AF63C9F;
  LODWORD(v386) = v294 ^ (LODWORD(STACK[0x608]) << 29) ^ LODWORD(STACK[0x444]) ^ (v294 << 6) ^ (2 * v294) ^ (v294 << 17) ^ LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x4B4]) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x668]) ^ LODWORD(STACK[0x494]) ^ LODWORD(STACK[0x454]) ^ v435 ^ (4 * v435) ^ (32 * v435) ^ (v435 << 11) ^ v318 ^ (4 * v318) ^ (32 * v318) ^ (v318 << 11) ^ (LODWORD(STACK[0x40C]) << 30);
  LODWORD(v318) = LODWORD(STACK[0x418]) ^ (v340 >> 2) ^ (v340 >> 4);
  v436 = LODWORD(STACK[0x410]) ^ v318;
  LODWORD(v318) = (v318 >> 27) ^ (v436 >> 21);
  v436 ^= 0xCCDDA407;
  LODWORD(v318) = v318 ^ 0x28367279;
  LODWORD(v386) = v386 ^ (v340 << 17) ^ (32 * v340) ^ (v340 << 14) ^ (v340 << 19) ^ (v340 << 28) ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x3C8]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x434]) ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x42C]) ^ v436 ^ (32 * v436) ^ (v436 << 11) ^ (4 * v436) ^ v318 ^ (4 * v318) ^ (32 * v318) ^ (v318 << 11) ^ v414 ^ (v414 << 12) ^ (v414 << 11) ^ (v414 << 18) ^ (v414 << 19) ^ (v414 << 21) ^ (v414 << 31);
  v437 = v434 ^ v319;
  v438 = v434 ^ v319 ^ 0xD2771AC4;
  LODWORD(v386) = v386 ^ v417 ^ v416 ^ v415 ^ v418 ^ v419 ^ v420 ^ v429 ^ v430 ^ v431 ^ v438;
  LODWORD(v319) = (v319 >> 30) ^ (v437 >> 21) ^ (v438 >> 27) ^ 0xE4941DCB;
  v439 = (32 * v438) ^ (v438 << 11) ^ v319 ^ (4 * v319) ^ (32 * v319) ^ (v319 << 11) ^ ((v386 & 0xC8B1751D ^ (4 * v438) & 0xC8B1751C ^ 0x3F5E8AF6) & ((4 * v438) & 0x374E8AE0 ^ 0x2A1C831F ^ v386 & 0x374E8AE2) | (v386 & 0xC8B1751D ^ (4 * v438) & 0xC8B1751C) & 0xC0A17400);
  LODWORD(v319) = (LODWORD(STACK[0x420]) >> 21) ^ 0x216C6122;
  v440 = LODWORD(STACK[0x654]) ^ (4 * v319) ^ (32 * v319) ^ (v319 << 11);
  v441 = v440 ^ v319;
  v442 = v440 ^ v319 ^ 0x17D76192;
  v443 = (4 * v442) ^ (8 * v442) ^ 0x32FE3924;
  LODWORD(v386) = (v442 << 11) ^ 0x8FFA0F53;
  v444 = (v442 << 13) ^ 0x6F9FBD03;
  v445 = (v442 << 18) ^ 0x9E176345;
  LODWORD(v319) = (16 * v442) ^ (32 * v442) ^ (v442 << 14) ^ (v442 << 17) ^ (v442 << 21) ^ v386 ^ v444 ^ v445 ^ v443 ^ 0x150C5B99;
  v446 = (-v319 ^ (((v442 << 19) ^ 0x66F00000) - (v319 ^ (v442 << 19) ^ 0x66F00000)) ^ 0xC3BED2B8 ^ (v319 - ((2 * v319) & 0x877DA570) - 1010904392)) + ((v442 << 19) ^ 0x66F00000);
  v447 = (v440 >> 19) ^ 0x6266B363;
  LODWORD(v393) = (v440 >> 21) ^ 0x79CD13FE;
  v448 = (v440 >> 14) ^ 0x1FE16C16;
  v449 = (v440 >> 11) ^ 0x107D2D74;
  v450 = ((v440 >> 29) | 0x9EEAD8) ^ (v440 >> 30) ^ 0xC16EC58B;
  v451 = (v441 >> 10) ^ 0xA98CF67B;
  v452 = (v441 >> 9) ^ 0x25CDB8AB;
  v453 = LODWORD(STACK[0x4A4]) ^ 0x2593E53A;
  v454 = v355 ^ (2 * v355) ^ (v355 << 6) ^ (v355 << 17) ^ (v355 << 29) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x60C]) ^ LODWORD(STACK[0x61C]) ^ LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x628]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x428]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x620]) ^ LODWORD(STACK[0x49C]) ^ (32 * LODWORD(STACK[0x49C])) ^ (LODWORD(STACK[0x49C]) << 11) ^ (4 * LODWORD(STACK[0x49C])) ^ v453 ^ (32 * v453) ^ (4 * v453) ^ (v453 << 11);
  LODWORD(v319) = (v442 << 22) ^ 0x3B28501A ^ (v442 << 23) ^ 0xE279B288 ^ (v442 << 26) ^ 0x5934FCA4;
  LODWORD(v355) = (v440 >> 18) ^ (v440 >> 13) ^ (v440 >> 28) ^ (v440 >> 27) ^ (v440 >> 15) ^ (v442 >> 2) ^ (v442 >> 4);
  v455 = (v441 >> 6) ^ 0xCA8B26A3;
  LODWORD(v318) = v447 ^ v393 ^ v448 ^ v449 ^ (v442 >> 5) ^ v450 ^ v452 ^ v451 ^ v455 ^ 0xE61108A9 ^ v355;
  v456 = v454 ^ (v442 << 28) ^ (v442 << 30) ^ v319;
  v457 = (v442 << 27) ^ 0x1936B391;
  LODWORD(v318) = v456 ^ v457 ^ v318 ^ (4 * v318) ^ (32 * v318) ^ (v318 << 11) ^ v446 ^ (v355 >> 27) ^ (v318 >> 21) ^ 0xA3691C3F ^ (4 * ((v355 >> 27) ^ (v318 >> 21) ^ 0xA3691C3F)) ^ (32 * ((v355 >> 27) ^ (v318 >> 21) ^ 0xA3691C3F)) ^ (((v355 >> 27) ^ (v318 >> 21) ^ 0xA3691C3F) << 11);
  LOWORD(v355) = (v440 >> 22) ^ (v440 >> 25) ^ HIBYTE(v440) ^ (v440 >> 17) ^ v393 ^ v447 ^ v450;
  LODWORD(v393) = (v441 ^ 0x60E72D4C) >> ((((v442 << 7) ^ v443) & 5 ^ 4) + (((v442 << 7) ^ v443) & 5 ^ 1));
  LODWORD(v393) = (v440 >> 12) ^ HIWORD(v440) ^ (v441 >> 8) ^ (v441 >> 7) ^ v355 ^ (v393 - ((2 * v393) & 0xEE89B548) - 146482524);
  v458 = v449 ^ v448 ^ v451 ^ v452 ^ v455;
  LODWORD(v355) = (LODWORD(STACK[0x478]) ^ 0xDDAE733A) & (2 * (STACK[0x478] & 0x9D287B3B)) ^ STACK[0x478] & 0x9D287B3B;
  v459 = ((2 * (LODWORD(STACK[0x478]) ^ 0xFFBE5528)) ^ 0xC52C5C26) & (LODWORD(STACK[0x478]) ^ 0xFFBE5528) ^ (2 * (LODWORD(STACK[0x478]) ^ 0xFFBE5528)) & 0x62962E12;
  LODWORD(v355) = (v459 ^ 0x40000C00) & (4 * v355) ^ v355;
  v460 = ((4 * (v459 ^ 0x22922211)) ^ 0x8A58B84C) & (v459 ^ 0x22922211) ^ (4 * (v459 ^ 0x22922211)) & 0x62962E10;
  LODWORD(v355) = (v460 ^ 0x2102800) & (16 * v355) ^ v355;
  v461 = ((16 * (v460 ^ 0x60860613)) ^ 0x2962E130) & (v460 ^ 0x60860613) ^ (16 * (v460 ^ 0x60860613)) & 0x62962E10;
  LODWORD(v355) = v355 ^ 0x62962E13 ^ (v461 ^ 0x20022000) & (v355 << 8);
  v462 = LODWORD(STACK[0x478]) ^ (2 * ((v355 << 16) & 0x62960000 ^ v355 ^ ((v355 << 16) ^ 0x2E130000) & (((v461 ^ 0x42940E03) << 8) & 0x62960000 ^ 0x60900000 ^ (((v461 ^ 0x42940E03) << 8) ^ 0x162E0000) & (v461 ^ 0x42940E03))));
  LODWORD(v355) = (LODWORD(STACK[0x464]) ^ 0x5F6812E5) & (2 * (STACK[0x464] & 0x9F7142E4)) ^ STACK[0x464] & 0x9F7142E4;
  v463 = ((2 * (LODWORD(STACK[0x464]) ^ 0x4B2A1725)) ^ 0xA8B6AB82) & (LODWORD(STACK[0x464]) ^ 0x4B2A1725) ^ (2 * (LODWORD(STACK[0x464]) ^ 0x4B2A1725)) & 0xD45B55C0;
  LODWORD(v355) = (v463 ^ 0x80020180) & (4 * v355) ^ v355;
  v464 = ((4 * (v463 ^ 0x54495441)) ^ 0x516D5704) & (v463 ^ 0x54495441) ^ (4 * (v463 ^ 0x54495441)) & 0xD45B55C0;
  LODWORD(v355) = (v464 ^ 0x50495500) & (16 * v355) ^ v355;
  v465 = ((16 * (v464 ^ 0x841200C1)) ^ 0x45B55C10) & (v464 ^ 0x841200C1) ^ (16 * (v464 ^ 0x841200C1)) & 0xD45B55C0;
  LODWORD(v355) = v355 ^ 0xD45B55C1 ^ (v465 ^ 0x44115400) & (v355 << 8);
  LODWORD(v319) = (LODWORD(STACK[0x638]) << 11) ^ (4 * LODWORD(STACK[0x638])) ^ (LODWORD(STACK[0x640]) + 1438342673) ^ LODWORD(STACK[0x630]) ^ (v442 << 21) ^ v386 ^ v444 ^ v445 ^ v319 ^ v457 ^ (v442 << 8) ^ (v442 << 7) ^ (v442 << 10) ^ (v442 << 15) ^ (v442 << 16) ^ (v442 << 20) ^ (v442 << 24) ^ (v442 << 25) ^ v443;
  LODWORD(v386) = (v393 >> 27) ^ ((v458 ^ v393) >> 21) ^ ((v458 ^ v393) >> 30) ^ 0xC0EE155D;
  LODWORD(v386) = v319 ^ v458 ^ v393 ^ 0x7D8505F7 ^ (4 * (v458 ^ v393 ^ 0x7D8505F7)) ^ (32 * (v458 ^ v393 ^ 0x7D8505F7)) ^ ((v458 ^ v393 ^ 0x7D8505F7) << 11) ^ v386 ^ (32 * v386) ^ (4 * v386) ^ (v386 << 11);
  LODWORD(v319) = v318 ^ 0x2C2DC687;
  LODWORD(v318) = LODWORD(STACK[0x464]) ^ (2 * ((v355 << 16) & 0x545B0000 ^ v355 ^ ((v355 << 16) ^ 0x55C10000) & (((v465 ^ 0x904A01C1) << 8) & 0x545B0000 ^ 0x40A0000 ^ (((v465 ^ 0x904A01C1) << 8) ^ 0x5B550000) & (v465 ^ 0x904A01C1)))) ^ v318 ^ 0x2C2DC687;
  v466 = ((v318 ^ 0xF77CBB13) - 2054497269) ^ ((v318 ^ 0xA43714DA) - 691964988) ^ ((v318 ^ 0xFBFDC13F) - 1995725273);
  LODWORD(v318) = v433 ^ 0xBC21D482;
  LODWORD(v355) = (((LODWORD(STACK[0x480]) - 966274908) ^ 0xB99804) - 1170247804) ^ (LODWORD(STACK[0x480]) - 966274908) ^ (((LODWORD(STACK[0x480]) - 966274908) ^ 0x48A1D9F8) - 232313216) ^ (((LODWORD(STACK[0x480]) - 966274908) ^ 0x729C367B) - 937770499) ^ (((LODWORD(STACK[0x480]) - 966274908) ^ 0x7FFD7FFF) - 981759879) ^ v433 ^ 0xBC21D482;
  LODWORD(STACK[0x6D8]) = 1655761618 - 2009212831 * v466;
  LODWORD(STACK[0x6DC]) = -2009212831 * (((v462 ^ v319 ^ 0x33A39D1) + 1156791241) ^ ((v462 ^ v319 ^ 0x884A158E) - 813492328) ^ ((v462 ^ v319 ^ 0xA0A38CD2) - 412447028)) - 1497310131;
  v467 = (((LODWORD(STACK[0x488]) + 1839746193) ^ 0xC399B3E7) + 1877800843) ^ (LODWORD(STACK[0x488]) + 1839746193) ^ (((LODWORD(STACK[0x488]) + 1839746193) ^ 0x5E3270A9) - 230214459) ^ (((LODWORD(STACK[0x488]) + 1839746193) ^ 0x11DC8523) - 1112948401) ^ (((LODWORD(STACK[0x488]) + 1839746193) ^ 0xDFFDFDFF) + 1938340243);
  v468 = ((v319 ^ LODWORD(STACK[0x474]) ^ 0xEDF461D0) + 302751280) ^ ((v319 ^ LODWORD(STACK[0x474]) ^ 0x8C2E7DD) - 146991069) ^ ((v319 ^ LODWORD(STACK[0x474]) ^ 0x946826A2) + 1805113694);
  v469 = (((LODWORD(STACK[0x46C]) + 268782663) ^ 0xA252DF39) + 884960155) ^ (LODWORD(STACK[0x46C]) + 268782663) ^ (((LODWORD(STACK[0x46C]) + 268782663) ^ 0x5682B2C0) - 1066465692) ^ (((LODWORD(STACK[0x46C]) + 268782663) ^ 0x6635D158) - 254253572) ^ (((LODWORD(STACK[0x46C]) + 268782663) ^ 0xFBF7F7FD) + 1830437727) ^ v433 ^ 0xBC21D482;
  LODWORD(STACK[0x6B8]) = -2009212831 * (((v355 ^ 0xDA9A34A0) + 1132507894) ^ ((v355 ^ 0x3FD752EC) - 1496460102) ^ ((v355 ^ 0xD4E644A9) + 1308410621)) - 418025551;
  LODWORD(STACK[0x6BC]) = -2009212831 * (((v469 ^ 0x5185C) + 1344054740) ^ ((v469 ^ 0xFEBD4046) - 1364918838) ^ ((v469 ^ 0xE37839DB) - 1285454763)) + 860163283;
  v470 = STACK[0x4AC];
  LODWORD(v355) = v439 ^ 0x8783AD3D;
  LODWORD(STACK[0x6F8]) = -2009212831 * ((-1663319554 - 1673081951 * a70) ^ LODWORD(STACK[0x4AC]) ^ 0x4F4AF40C ^ v439) - 75026750;
  LODWORD(STACK[0x6FC]) = -2009212831 * ((-1663319554 - 1673081951 * a69) ^ v470 ^ 0xC8C95931 ^ v439 ^ 0x8783AD3D) - 75026750;
  v471 = STACK[0x4A8];
  LODWORD(STACK[0x718]) = -2009212831 * ((-1663319554 - 1673081951 * a72) ^ LODWORD(STACK[0x4A8]) ^ 0x30D6A57D ^ v386 ^ 0x6CC0B9F0) - 75026750;
  LODWORD(STACK[0x71C]) = -2009212831 * ((-1663319554 - 1673081951 * a71) ^ v471 ^ 0x5C161C8D ^ v386) - 75026750;
  LODWORD(v393) = ((LODWORD(STACK[0x4E4]) ^ v318 ^ 0x672916AD) + 1669164889) ^ ((LODWORD(STACK[0x4E4]) ^ v318 ^ 0x3A9B0993) + 1053782119) ^ ((LODWORD(STACK[0x4E4]) ^ v318 ^ 0x13982C97) + 399267171);
  v472 = ((LODWORD(STACK[0x468]) ^ 0x5E0C816) - 522534498) ^ LODWORD(STACK[0x468]) ^ ((LODWORD(STACK[0x468]) ^ 0xB39EED8) - 301734060) ^ ((LODWORD(STACK[0x468]) ^ 0x6DC32F65) - 1996937489) ^ ((LODWORD(STACK[0x468]) ^ 0x79DFFFDF) - 1662650795) ^ v319;
  v473 = LODWORD(STACK[0x47C]) ^ 0xC1CD0D62;
  v474 = (2 * (STACK[0x47C] & 0xD04E5702)) & v473 ^ STACK[0x47C] & 0xD04E5702 ^ ((2 * (STACK[0x47C] & 0xD04E5702)) & 0x800A00 | 0x20040);
  v475 = (2 * v473) & 0x11835A60 ^ 0x10814A20 ^ ((2 * v473) ^ 0x2306B4C0) & v473;
  v476 = (4 * v474) & 0x1035800 ^ v474 ^ ((4 * v474) ^ 0x80100) & v475;
  v477 = (4 * v475) & 0x11835A60 ^ 0x11821260 ^ ((4 * v475) ^ 0x460D6980) & v475;
  v478 = (16 * v476) & 0x11835A60 ^ v476 ^ ((16 * v476) ^ 0x200400) & v477;
  v479 = (16 * v477) & 0x11835A40 ^ 0x1825860 ^ ((16 * v477) ^ 0x1835A600) & v477;
  v480 = v478 ^ (v478 << 8) & 0x11835A00 ^ ((v478 << 8) ^ 0x2004000) & v479;
  v481 = LODWORD(STACK[0x47C]) ^ (2 * (((v480 ^ 0x11811A20) << 16) & 0x11830000 ^ v480 ^ 0x11811A20 ^ (((v480 ^ 0x11811A20) << 16) ^ 0x5A600000) & ((v479 << 8) & 0x11830000 ^ 0x10810000 ^ ((v479 << 8) ^ 0x35A0000) & v479)));
  LODWORD(STACK[0x6E0]) = -2009212831 * v468 + 162052369;
  LODWORD(STACK[0x6E4]) = -2009212831 * (((v472 ^ 0x991A6448) + 913572965) ^ ((v472 ^ 0x64439DDF) - 886178316) ^ ((v472 ^ 0xD06F8873) + 2130831456)) + 1145166233;
  v482 = ((LODWORD(STACK[0x570]) ^ v318 ^ 0x2D9B139C) - 81961875) ^ ((LODWORD(STACK[0x570]) ^ v318 ^ 0xDF23A3ED) + 161868830) ^ ((LODWORD(STACK[0x570]) ^ v318 ^ 0x7318E77E) - 1516328817);
  LODWORD(STACK[0x700]) = -75026750 - 2009212831 * ((-1663319554 - 1673081951 * a75) ^ v470 ^ 0x4F4AF40C ^ v439);
  LODWORD(STACK[0x704]) = -75026750 - 2009212831 * ((-1663319554 - 1673081951 * a74) ^ v470 ^ 0xC8C95931 ^ v439 ^ 0x8783AD3D);
  LODWORD(STACK[0x6C0]) = -2009212831 * v393 + 314935685;
  LODWORD(STACK[0x6C4]) = -2009212831 * (((v467 ^ v318 ^ 0xF03B535E) + 2040646118) ^ ((v467 ^ v318 ^ 0x45C91D8C) - 866941128) ^ ((v467 ^ v318 ^ 0x92AADFDD) + 456148327)) + 402589485;
  LODWORD(v393) = ((v481 ^ v319 ^ 0xC5F4A4EA) + 484289134) ^ ((v481 ^ v319 ^ 0x3FB0B324) - 426132060) ^ ((v481 ^ v319 ^ 0x1EFF739C) - 942244580);
  v483 = (((LODWORD(STACK[0x470]) + 2092372401) ^ 0x7829126F) + 2080432633) ^ (LODWORD(STACK[0x470]) + 2092372401) ^ (((LODWORD(STACK[0x470]) + 2092372401) ^ 0x91D81252) - 1779310138) ^ (((LODWORD(STACK[0x470]) + 2092372401) ^ 0xEDD8F12A) - 370081090) ^ (((LODWORD(STACK[0x470]) + 2092372401) ^ 0xFFFFFD7F) - 69857559);
  LODWORD(STACK[0x720]) = -2009212831 * ((-1663319554 - 1673081951 * a76) ^ v471 ^ 0x5C161C8D ^ v386) - 75026750;
  LODWORD(STACK[0x724]) = -2009212831 * ((-1663319554 - 1673081951 * a77) ^ v471 ^ 0x30D6A57D ^ v386 ^ 0x6CC0B9F0) - 75026750;
  v484 = ((LODWORD(STACK[0x484]) ^ 0x1E199AA3) - 769910846) ^ LODWORD(STACK[0x484]) ^ ((LODWORD(STACK[0x484]) ^ 0xBFC27812) + 1942484337) ^ ((LODWORD(STACK[0x484]) ^ 0x68DC6FD7) - 1529224522) ^ ((LODWORD(STACK[0x484]) ^ 0xFAFDFFFB) + 922251930);
  v485 = STACK[0x45C];
  v486 = (v485 ^ 0x79F128C) & (2 * (v485 & 0xA7D852C0)) ^ v485 & 0xA7D852C0;
  v487 = ((2 * (v485 ^ 0x4A0F960C)) ^ 0xDBAF8998) & (v485 ^ 0x4A0F960C) ^ (2 * (v485 ^ 0x4A0F960C)) & 0xEDD7C4CC;
  v488 = (v487 ^ 0x89838000) & (4 * v486) ^ v486;
  v489 = ((4 * (v487 ^ 0x24504444)) ^ 0xB75F1330) & (v487 ^ 0x24504444) ^ (4 * (v487 ^ 0x24504444)) & 0xEDD7C4C8;
  v490 = (v489 ^ 0xA5570000) & (16 * v488) ^ v488;
  v491 = ((16 * (v489 ^ 0x4880C4CC)) ^ 0xDD7C4CC0) & (v489 ^ 0x4880C4CC) ^ (16 * (v489 ^ 0x4880C4CC)) & 0xEDD7C4C0;
  v492 = v490 ^ 0xEDD7C4CC ^ (v491 ^ 0xCD544400) & (v490 << 8);
  v493 = LODWORD(STACK[0x45C]) ^ (2 * ((v492 << 16) & 0x6DD70000 ^ v492 ^ ((v492 << 16) ^ 0x44CC0000) & (((v491 ^ 0x2083800C) << 8) & 0x6DD70000 ^ 0x28130000 ^ (((v491 ^ 0x2083800C) << 8) ^ 0x57C40000) & (v491 ^ 0x2083800C))));
  v494 = ((LODWORD(STACK[0x5B0]) ^ v318 ^ 0xE8A90153) - 857923319) ^ ((LODWORD(STACK[0x5B0]) ^ v318 ^ 0x2CFC0F17) + 143142733) ^ ((LODWORD(STACK[0x5B0]) ^ v318 ^ 0x1BF8681) + 634103515);
  LODWORD(STACK[0x708]) = -2009212831 * ((-1663319554 - 1673081951 * a79) ^ v470 ^ 0xC8C95931 ^ v439 ^ 0x8783AD3D) - 75026750;
  LODWORD(STACK[0x70C]) = -2009212831 * ((-1663319554 - 1673081951 * a78) ^ v470 ^ 0xC8C95931 ^ v439 ^ 0x8783AD3D) - 75026750;
  v495 = ((LODWORD(STACK[0x48C]) ^ 0x887B77B0) + 1328227443) ^ LODWORD(STACK[0x48C]) ^ ((LODWORD(STACK[0x48C]) ^ 0xA10C15BC) + 1717323391) ^ ((LODWORD(STACK[0x48C]) ^ 0x66AF114E) - 1577106803) ^ ((LODWORD(STACK[0x48C]) ^ 0x7777DF7F) - 1339585346) ^ v319;
  LODWORD(STACK[0x6C8]) = -2009212831 * v482 - 603998782;
  LODWORD(STACK[0x6CC]) = -2009212831 * v494 - 96460157;
  v496 = (((LODWORD(STACK[0x460]) - 326637178) ^ 0x37BED2B8) + 1707674422) ^ (LODWORD(STACK[0x460]) - 326637178) ^ (((LODWORD(STACK[0x460]) - 326637178) ^ 0xD4BA74F8) - 2033341066) ^ (((LODWORD(STACK[0x460]) - 326637178) ^ 0x21737ACD) + 1929683777) ^ (((LODWORD(STACK[0x460]) - 326637178) ^ 0x6FFFFAFF) + 1032332147);
  LODWORD(STACK[0x6E8]) = -2009212831 * v393 - 135650388;
  LODWORD(STACK[0x6EC]) = -2009212831 * (((v484 ^ v319 ^ 0xBAD6B39A) - 1481444177) ^ ((v484 ^ v319 ^ 0x162BF0FF) + 189773772) ^ ((v484 ^ v319 ^ 0xA8F4B668) - 1248792227)) - 2101102904;
  LODWORD(STACK[0x728]) = -2009212831 * ((-1663319554 - 1673081951 * a88) ^ v471 ^ 0x5C161C8D ^ v386) - 75026750;
  LODWORD(STACK[0x72C]) = -2009212831 * ((-1663319554 - 1673081951 * a86) ^ v471 ^ 0x5C161C8D ^ v386) - 75026750;
  v497 = ((LODWORD(STACK[0x5D8]) ^ 0x275712B6) - 885335128) ^ LODWORD(STACK[0x5D8]) ^ ((LODWORD(STACK[0x5D8]) ^ 0x17467AA3) - 81022029) ^ ((LODWORD(STACK[0x5D8]) ^ 0xDCFE830C) + 814959134) ^ ((LODWORD(STACK[0x5D8]) ^ 0xFF7DDDF7) + 319821031);
  LODWORD(STACK[0x6F4]) = -2009212831 * (((v493 ^ v319 ^ 0x86A4C32) + 1731510376) ^ ((v493 ^ v319 ^ 0xF2671973) - 1657170649) ^ ((v493 ^ v319 ^ 0x38010989) + 1465877981)) - 914697500;
  LODWORD(STACK[0x6F0]) = -2009212831 * (((v495 ^ 0xF63BADA0) - 1239136365) ^ ((v495 ^ 0x6C49A1F3) + 743852994) ^ ((v495 ^ 0x952E27FE) - 718156339)) - 1537486558;
  LODWORD(STACK[0x6D0]) = -2009212831 * (((v483 ^ v318 ^ 0x533A9D1D) - 209297410) ^ ((v483 ^ v318 ^ 0x5EBA8622) - 33143613) ^ ((v483 ^ v318 ^ 0x82843DCA) + 574160683)) - 590859668;
  LODWORD(STACK[0x6D4]) = -2009212831 * (((v496 ^ v318 ^ 0xE57D6627) - 1233140066) ^ ((v496 ^ v318 ^ 0x4CD1678E) + 533972789) ^ ((v496 ^ v318 ^ 0x70F60D46) + 603237885)) - 33074644;
  v498 = ((LODWORD(STACK[0x5D0]) ^ v319 ^ 0x91DF30D8) - 1537319247) ^ ((LODWORD(STACK[0x5D0]) ^ v319 ^ 0x1492BBAF) + 554948040) ^ ((LODWORD(STACK[0x5D0]) ^ v319 ^ 0x37A575EC) + 35920773);
  LODWORD(STACK[0x710]) = -2009212831 * ((-1663319554 - 1673081951 * a84) ^ v470 ^ 0x4F4AF40C ^ v439) - 75026750;
  LODWORD(STACK[0x714]) = -2009212831 * ((-1663319554 - 1673081951 * a83) ^ v470 ^ 0x4F4AF40C ^ v439) - 75026750;
  LODWORD(STACK[0x7B8]) = -2009212831 * (((v497 ^ v318 ^ 0xDCD323F5) - 533896565) ^ ((v497 ^ v318 ^ 0xD20B831B) - 285883803) ^ ((v497 ^ v318 ^ 0x6998BC9D) + 1432813027)) - 2050362155;
  v499 = ((LODWORD(STACK[0x5A0]) ^ v318 ^ 0x44E30556) + 307478809) ^ ((LODWORD(STACK[0x5A0]) ^ v318 ^ 0x2ABA3310) + 2081093471) ^ ((LODWORD(STACK[0x5A0]) ^ v318 ^ 0xA444A8C) + 1559531203);
  LODWORD(STACK[0x7BC]) = -2009212831 * v498 + 1880449614;
  LODWORD(STACK[0x730]) = -2009212831 * ((-1663319554 - 1673081951 * a91) ^ v471 ^ 0x30D6A57D ^ v386 ^ 0x6CC0B9F0) - 75026750;
  LODWORD(STACK[0x734]) = -2009212831 * ((-1663319554 - 1673081951 * a90) ^ v471 ^ 0x30D6A57D ^ v386 ^ 0x6CC0B9F0) - 75026750;
  LODWORD(STACK[0x738]) = -2009212831 * (LODWORD(STACK[0x5C0]) ^ 0xE29D7391 ^ v355) - 75026750;
  LODWORD(STACK[0x73C]) = -2009212831 * v499 - 1806496675;
  v500 = -2009212831 * (((v319 ^ LODWORD(STACK[0x5A8]) ^ 0x6F1045C1) - 1778264200) ^ ((v319 ^ LODWORD(STACK[0x5A8]) ^ 0xBEE9DA4A) + 1207453949) ^ ((v319 ^ LODWORD(STACK[0x5A8]) ^ 0x78965E24) - 2121806701)) + 1213841896;
  LODWORD(STACK[0x778]) = -2009212831 * (LODWORD(STACK[0x5C8]) ^ 0x510420C9 ^ v386) - 75026750;
  LODWORD(STACK[0x77C]) = v500;
  v501 = ((v319 ^ LODWORD(STACK[0x588]) ^ 0xB63BF548) - 1896024230) ^ ((v319 ^ LODWORD(STACK[0x588]) ^ 0x4D461B4C) + 1971394910) ^ ((v319 ^ LODWORD(STACK[0x588]) ^ 0x14C1FBB) + 965418411);
  LODWORD(v393) = -2009212831 * (((v318 ^ LODWORD(STACK[0x580]) ^ 0xD88000A8) + 663460173) ^ ((v318 ^ LODWORD(STACK[0x580]) ^ 0x9229300F) + 1830988268) ^ ((v318 ^ LODWORD(STACK[0x580]) ^ 0x1BD946ED) - 455942390)) + 933410163;
  LODWORD(STACK[0x740]) = -2009212831 * (((2 * (v355 ^ LODWORD(STACK[0x598]))) & 0xC6487C04 ^ 0x86484800) + (v355 ^ LODWORD(STACK[0x598]) ^ 0x24429B93));
  LODWORD(STACK[0x744]) = v393;
  v502 = -2009212831 * (((v318 ^ LODWORD(STACK[0x568]) ^ 0xEFC5C7B9) + 1540914462) ^ ((v318 ^ LODWORD(STACK[0x568]) ^ 0xCD098743) + 2031369704) ^ ((v318 ^ LODWORD(STACK[0x568]) ^ 0x987006F0) + 745389141)) - 1790982029;
  LODWORD(STACK[0x748]) = -2009212831 * (LODWORD(STACK[0x578]) ^ 0xA5ABD1D1 ^ v355) - 75026750;
  LODWORD(STACK[0x74C]) = v502;
  LODWORD(v393) = ((v319 ^ LODWORD(STACK[0x560]) ^ 0x5A4D0BB5) - 1076826394) ^ ((v319 ^ LODWORD(STACK[0x560]) ^ 0x930A70E3) + 1989645748) ^ ((v319 ^ LODWORD(STACK[0x560]) ^ 0xF8D53339) + 491312746);
  LODWORD(STACK[0x780]) = -2009212831 * (LODWORD(STACK[0x5B8]) ^ 0x847D41D9 ^ v386) - 75026750;
  v503 = STACK[0x500] & 0xC8;
  v504 = v318 ^ LODWORD(STACK[0x548]);
  v505 = LODWORD(STACK[0x558]) ^ 0x596D1B09 ^ v386;
  v506 = -2009212831 * (LODWORD(STACK[0x550]) ^ 0xC4221D41 ^ v355) - 75026750;
  v507 = -2009212831 * (LODWORD(STACK[0x590]) ^ 0xEE522309 ^ v386) - 75026750;
  LODWORD(STACK[0x784]) = -2009212831 * v501 - 1247399565;
  LODWORD(STACK[0x788]) = v507;
  LODWORD(STACK[0x78C]) = -2009212831 * v393 + 522750338;
  v508 = v319 ^ LODWORD(STACK[0x518]);
  v509 = LODWORD(STACK[0x530]) ^ 0xEC984769 ^ v386 ^ 0x6CC0B9F0;
  v510 = LODWORD(STACK[0x538]) ^ 0xBFBC5D91 ^ v355;
  LODWORD(v393) = ((v319 ^ LODWORD(STACK[0x540]) ^ 0x152D229) + 1114870427) ^ ((v319 ^ LODWORD(STACK[0x540]) ^ 0x4938351) + 1202897891) ^ ((v319 ^ LODWORD(STACK[0x540]) ^ 0xC1DA7A47) - 2097464587);
  v511 = ((v318 ^ LODWORD(STACK[0x528]) ^ 0xC99568F9) - 863217434) ^ ((v318 ^ LODWORD(STACK[0x528]) ^ 0x827251A4) - 2023005767) ^ ((v318 ^ LODWORD(STACK[0x528]) ^ 0x368FD107) + 865526044);
  LODWORD(STACK[0x750]) = v506;
  LODWORD(STACK[0x754]) = -796478874 - 2009212831 * (((v504 ^ 0x1A793B8E) - 456581984) ^ ((v504 ^ 0xA267D9FB) + 1557659371) ^ ((v504 ^ 0x39BDECBF) - 955397201));
  v512 = LODWORD(STACK[0x510]) ^ 0x8F298619 ^ v386;
  LODWORD(STACK[0x758]) = -75026750 - 2009212831 * v510;
  LODWORD(STACK[0x75C]) = -2009212831 * v511 + 150819803;
  LODWORD(STACK[0x790]) = -75026750 - 2009212831 * v505;
  LODWORD(STACK[0x794]) = -2009212831 * v393 - 351504811;
  v513 = v318 ^ LODWORD(STACK[0x508]);
  LODWORD(STACK[0x79C]) = -2009212831 * (((v508 ^ 0xF6DC4DF0) - 496607576) ^ ((v508 ^ 0xD3D230B) + 428290141) ^ ((v508 ^ 0xD96B4A14) - 841918140)) + 891877801;
  LODWORD(STACK[0x798]) = -75026750 - 2009212831 * v509;
  LODWORD(v393) = LODWORD(STACK[0x4F8]) ^ v355;
  v514 = -75026750 - 2009212831 * ((LODWORD(STACK[0x520]) | v503) ^ 0x9D856FD1 ^ v355);
  v515 = LODWORD(STACK[0x4F4]) ^ 0x532AF529 ^ v386 ^ 0x6CC0B9F0;
  v516 = v319 ^ LODWORD(STACK[0x4E0]);
  v517 = v318 ^ LODWORD(STACK[0x4EC]);
  LODWORD(STACK[0x7A4]) = -2009212831 * (((v319 ^ LODWORD(STACK[0x4D0]) ^ 0x580A5E4A) + 1323668441) ^ ((v319 ^ LODWORD(STACK[0x4D0]) ^ 0xF1E293FC) - 418554257) ^ ((v319 ^ LODWORD(STACK[0x4D0]) ^ 0x8EEAB759) - 1744471348)) - 727951356;
  LODWORD(STACK[0x7A0]) = -75026750 - 2009212831 * v512;
  v518 = ((v517 ^ 0x2D410AE0) + 384932289) ^ ((v517 ^ 0x2221E5AE) + 428963471) ^ ((v517 ^ 0x2A03C194) + 296964789);
  v519 = STACK[0x4F0];
  LODWORD(STACK[0x768]) = -2009212831 * (((2 * v393) & 0xC6487C04 ^ 0x82002000) + (v393 ^ 0xB6E76E13));
  LODWORD(STACK[0x76C]) = -2009212831 * v518 + 137456295;
  LODWORD(v318) = v318 ^ LODWORD(STACK[0x4D8]);
  v520 = STACK[0x4E8];
  LODWORD(STACK[0x760]) = v514;
  LODWORD(STACK[0x764]) = -2009212831 * (((v513 ^ 0x81A05ED7) - 354980595) ^ ((v513 ^ 0x1221E87D) + 2035735463) ^ ((v513 ^ 0xFAFD2FE0) - 1853219780)) + 677797232;
  LODWORD(STACK[0x7A8]) = -75026750 - 2009212831 * v515;
  LODWORD(STACK[0x7AC]) = -2009212831 * (((v516 ^ 0xFE784C2C) + 1020828061) ^ ((v516 ^ 0x45570F00) - 2013799759) ^ ((v516 ^ 0xC3984683) + 20484916)) - 918138206;
  LODWORD(STACK[0x770]) = -75026750 - 2009212831 * (v519 ^ 0xED915891 ^ v355);
  LODWORD(STACK[0x774]) = -2009212831 * (((v318 ^ 0xB0B31192) + 365438660) ^ ((v318 ^ 0xB2C131CD) + 398067357) ^ ((v318 ^ 0xDD1C7705) + 2020032597)) + 1837607478;
  LODWORD(v319) = -2009212831 * (((v319 ^ LODWORD(STACK[0x4D4]) ^ 0x7D0569C2) - 1860227984) ^ ((v319 ^ LODWORD(STACK[0x4D4]) ^ 0xFD35BE45) + 288357353) ^ ((v319 ^ LODWORD(STACK[0x4D4]) ^ 0x9911EDA8) + 1963698182)) - 500279777;
  LODWORD(STACK[0x7B0]) = -75026750 - 2009212831 * (v520 ^ 0xC41FE209 ^ v386);
  LODWORD(STACK[0x7B4]) = v319;
  return (*(STACK[0x6A0] + 8 * (LODWORD(STACK[0x698]) ^ 0x31934F2C ^ (10553 * (LODWORD(STACK[0x698]) < 0xECD81D55)))))(a10, STACK[0x320], 428963471, 3876413039, 1528, 0xAD22D5F321CF2B02, 0x8DC38A7EF789FC36, 0x1D7330390CAC939CLL);
}