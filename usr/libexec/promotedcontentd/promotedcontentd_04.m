uint64_t sub_1000C4928@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = 677 * (v5 ^ 0x3D28F36A ^ (v4 + 3006)) - 9479 + v3;
  v8 = *(v2 + v7 - 15);
  v9 = *(v2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((2802 * ((v3 & 0xFFFFFFE0) == 32)) | (a2 + (v5 ^ 0x3D28F36A) + 1432))))();
}

uint64_t sub_1000C4A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 + (v5 - v2) - 2437;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((v3 + v5 + 1524) | (8 * (v7 == 0)))))();
}

uint64_t sub_1000C4AAC@<X0>(int a1@<W8>)
{
  v7 = (v2 + 40);
  v8 = (v3 + 40);
  if (a1 == v1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *v9;
  v11 = STACK[0x770];
  STACK[0x638] = &STACK[0xBB0] + STACK[0x770];
  STACK[0x770] = ((38 * (v5 ^ 0x1064) - 65) & 0xFFFFFC3A) + v11;
  STACK[0x5A0] = v4;
  STACK[0x878] = 0;
  STACK[0x978] = 0;
  STACK[0x5D8] = v10;
  return (*(v6 + 8 * ((13 * (v10 != 0)) ^ v5)))();
}

uint64_t sub_1000C4B80()
{
  v4 = (*(v3 + 8 * (v0 + 3391)))();
  *v1 = 0;
  return v2(v4);
}

uint64_t sub_1000C4BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v31 = v25 + 577;
  LODWORD(STACK[0x520]) = v26;
  LODWORD(STACK[0x524]) = 212411112;
  v32 = **(v29 + 8 * ((v25 + 577) ^ (v27 + 94)));
  *(v30 - 140) = ((v31 + 745868465) ^ 0x75) + a25;
  *(v30 - 128) = ((v31 + 745868465) ^ 0x3B2) - a25;
  v33 = v30 - 152;
  *(v33 + 16) = a25;
  *(v33 + 32) = v32 ^ a25;
  *(v30 - 152) = a25;
  *(v30 - 144) = a25 + v31 - 1607385763;
  *(v30 - 112) = (v31 + 745868465) ^ a25;
  v34 = (*(v28 + 8 * (v31 + 1232701030)))(v30 - 152);
  return (*(v28 + 8 * *(v30 - 148)))(v34);
}

uint64_t sub_1000C4C88(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0xA26]) = v2;
  LODWORD(STACK[0x370]) = v2;
  return sub_100146F00(a1, a2, v3 - 8569);
}

uint64_t sub_1000C4DAC@<X0>(uint64_t a1@<X0>, int a2@<W5>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((6887 * (v7 == (v5 ^ (a2 + 1980) ^ 0x60CLL))) ^ (a3 + v5 + 2040))))();
}

uint64_t sub_1000C4DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * (((&a16 | 0xDCC09AF3) - &a16 + (&a16 & 0x233F6508)) ^ 0x6CC30285) + 8154;
  a16 = &a12;
  v20 = (*(v19 + 77096))(&a16);
  return (*(v19 + 8 * ((418 * (a17 == v18)) ^ 0x220Fu)))(v20);
}

uint64_t sub_1000C4F00()
{
  v3 = 329 * (v0 ^ 0x1D46) + (((v1 ^ 0x9C24C36E) + 1675312274) ^ ((v1 ^ 0x59E619EF) - 1508252143) ^ ((v1 ^ 0xCE0758C6 ^ (v0 - 584)) + 838384686)) - 1051717533;
  v4 = (v3 ^ 0x60756734) & (2 * (v3 & 0x4A756786)) ^ v3 & 0x4A756786;
  v5 = ((2 * (v3 ^ 0xE47DAC38)) ^ 0x5C11977C) & (v3 ^ 0xE47DAC38) ^ (2 * (v3 ^ 0xE47DAC38)) & 0xAE08CBBE;
  v6 = v5 ^ 0xA2084882;
  v7 = (v5 ^ 0x8008238) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xB8232EF8) & v6 ^ (4 * v6) & 0xAE08CBBC;
  v9 = (v8 ^ 0xA8000AA0) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x608C106)) ^ 0xE08CBBE0) & (v8 ^ 0x608C106) ^ (16 * (v8 ^ 0x608C106)) & 0xAE08CBB0;
  return (*(v2 + 8 * ((203 * ((v3 ^ (2 * ((((v10 ^ 0xE00401E) << 8) & 0xAE080000 ^ 0x8080000 ^ (((v10 ^ 0xE00401E) << 8) ^ 0x8CB0000) & (v10 ^ 0xE00401E)) & (((v10 ^ 0xA0088B00) & (v9 << 8) ^ v9) << 16) ^ (v10 ^ 0xA0088B00) & (v9 << 8) ^ v9))) != 1249208198)) ^ v0)))();
}

uint64_t sub_1000C5238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v14 = a2 - 1;
  v15 = __ROR8__((v12 + v14) & ((a5 + 2373) ^ 0xFFFFFFFFFFFFDBD8), 8) - 0x6AF7234D0CC131D5;
  v16 = __ROR8__(v15 ^ 0x49E9423B6F16E7D2, 8);
  v15 ^= 0xE1AFA7ACF6E0968ELL;
  v17 = (v6 - ((v16 + v15) | v6) + ((v16 + v15) | v7)) ^ v8;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xF5A2F1B9B5D0B209;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v5 - ((v21 + v20) | v5) + ((v21 + v20) | v9)) ^ v10;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x61459D2AF01F24F7;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v11;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x1A2AEBE44253AF03;
  *(a1 + v14) = *(v12 + v14) ^ (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v27, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v12 + v14) & 7))) ^ 0x3C;
  return (*(v13 + 8 * ((52 * (v14 == 0)) ^ a5)))();
}

uint64_t sub_1000C542C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 16257999)
  {
    v75 = STACK[0x7F8];
    v76 = *(STACK[0x7F8] + 8);
    v77 = STACK[0x658];
    v77[1] = v76;
    *v77 = *v75;
    return (*(v73 + 8 * (((v76 == 0) * ((v71 + 321) ^ (v71 + 372))) ^ (v71 + 3408))))();
  }

  else
  {
    if (v72 != 16215947)
    {
      JUMPOUT(0x1000C53D0);
    }

    return (*(v73 + 8 * (((*(STACK[0x5D8] + 8) == 0) * (((a71 - 1802) | 0xB2C) - 6190)) ^ (a71 - 1551))))();
  }
}

uint64_t sub_1000C54F4(uint64_t a1, int a2)
{
  STACK[0x698] = 0;
  v4 = *(STACK[0x798] + 8);
  STACK[0x400] = 0;
  LODWORD(STACK[0x668]) = 0;
  LODWORD(STACK[0x804]) = a2;
  return (*(v3 + 8 * (((v4 == 0) * ((v2 - 2856) ^ (v2 - 2880))) | v2)))();
}

void sub_1000C5540(uint64_t a1)
{
  v1 = *(a1 + 32) - 33731311 * ((((2 * a1) | 0x8DB3BDAE) - a1 - 1188683479) ^ 0x7F2F14F4);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_1000C5708(uint64_t a1, uint64_t a2)
{
  v9 = a2 + v7;
  v10 = a2 - 1;
  *(v4 + v10) = *(v5 + v10) ^ *(v6 + v10) ^ *(v9 + 3) ^ ((((v3 - 42) | 0x80) ^ 0xE6) * v10) ^ *(v2 + v10) ^ 0x3C;
  return (*(v8 + 8 * ((7111 * (v10 == 0)) ^ v3)))();
}

uint64_t sub_1000C585C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = (v7 ^ (a5 + 2936) ^ 0xFFFFFFFFFFFFF22CLL) + v6;
  v11 = *(v5 + v10 - 15);
  v12 = *(v5 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * ((2025 * ((v6 & 0xFFFFFFE0) == 32)) ^ (v8 + v7 + 336))))();
}

uint64_t sub_1000C58C0@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x438];
  STACK[0x508] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 + 93)) & 1) * (((a1 - 203) | 0x1582) - 6078)) ^ (a1 + 4702))))();
}

uint64_t sub_1000C59C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 16215947)
  {
    return (*(v73 + 8 * ((1267 * (*(STACK[0x5F0] + 97) == (((2 * v71) ^ 0x73) + v71 - 111))) ^ (v71 - 5109))))();
  }

  if (v72 != 16257999)
  {
    LODWORD(STACK[0x824]) = v72;
    JUMPOUT(0x1000C5AC8);
  }

  v74 = *(STACK[0x8D8] + 24);
  STACK[0x4B0] = v74;
  return (*(v73 + 8 * (((v74 == 0) * (a71 - 6072)) ^ (a71 + 1886))))();
}

uint64_t sub_1000C5B08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x3E8] = 0;
  STACK[0x7B8] = 0;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 - 7918) | 0x182) + 5661) ^ 0x17E0)) ^ v1)))();
}

uint64_t sub_1000C5B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v4);
  return sub_1001B36F0(a4, v5);
}

uint64_t sub_1000C5C30(uint64_t a1)
{
  v3 = v1 + 3447;
  v4 = (v3 - 379018183) & 0x16974A3E;
  v5 = LODWORD(STACK[0x438]) + 64;
  v6 = v5 + LODWORD(STACK[0x370]) == LODWORD(STACK[0x408]);
  LODWORD(STACK[0x57C]) = v4;
  v7 = *(v2 + 8 * ((v6 * (v4 ^ 0x3584)) ^ v3));
  LODWORD(STACK[0x438]) = v5;
  return v7(a1, 776, LODWORD(STACK[0x580]), 30175);
}

uint64_t sub_1000C5DA8()
{
  *(v0 + 24) = 107;
  *(v0 + 40) = 0;
  return sub_1000C5DB8();
}

uint64_t sub_1000C5FE0(_DWORD *a1)
{
  v1 = 1317436891 * ((a1 - 1035088277 - 2 * (a1 & 0xC24DCE6B)) ^ 0x724E561D);
  v2 = a1[1] ^ v1;
  v3 = *a1 + v1;
  **(&off_100477F30 + v2 - 7178) = v3;
  return (*(*(&off_100477F30 + (v2 ^ 0x1C10)) + (v2 ^ (8 * (v3 == 538291948))) - 1))();
}

void sub_1000C6120()
{
  v0 = *(&off_100477F30 + ((-85 * (dword_1004D5388 ^ 0xDF ^ dword_1004D54B0)) ^ byte_1003D1770[byte_1003EAD20[(-85 * (dword_1004D5388 ^ 0xDF ^ dword_1004D54B0))] ^ 0x71]) - 150);
  v1 = *(v0 - 4);
  v2 = *(&off_100477F30 + (byte_1003E29C0[byte_1003DBAE0[(-85 * ((dword_1004D54B0 - v1) ^ 0xDF))] ^ 1] ^ (-85 * ((dword_1004D54B0 - v1) ^ 0xDF))) + 14);
  v3 = (*v2 - v1) ^ &v8;
  v4 = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  v5 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v4;
  *v2 = v5;
  LOBYTE(v5) = -85 * (*(v0 - 4) ^ 0xDF ^ v5);
  **(&off_100477F30 + (byte_1003D1570[byte_1003EAC28[v5 - 8] ^ 0xDD] ^ v5) - 123) = 16257999;
  v6 = *(&off_100477F30 + ((-85 * ((dword_1004D54B0 + dword_1004D5388) ^ 0xDF)) ^ byte_1003D1770[byte_1003EAD20[(-85 * ((dword_1004D54B0 + dword_1004D5388) ^ 0xDF))] ^ 0xE9]) + 135) - 8;
  v7 = (*&v6[8 * ((-85 * ((*v2 + *(v0 - 4)) ^ 0xDF)) ^ byte_1003E29C0[byte_1003DBAE0[(-85 * ((*v2 + *(v0 - 4)) ^ 0xDF))] ^ 1]) + 75576])(512, 0x100004077774924);
  *(*(&off_100477F30 + ((-85 * (*(v0 - 4) ^ 0xDF ^ *v2)) ^ byte_1003E29C0[byte_1003DBAE0[(-85 * (*(v0 - 4) ^ 0xDF ^ *v2))] ^ 0x67]) + 159) - 4) = v7;
  __asm { BRAA            X8, X17 }
}

void sub_1000C636C(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13)
{
  *v15 = a1;
  *v14 = a2;
  a12 = a7;
  a13 = (v13 + 5993) ^ (1824088897 * (((&a11 | 0x220E8682) - &a11 + (&a11 & 0xDDF17978)) ^ 0x7A6755E0));
  (*(v16 + 8 * ((v13 + 2467) ^ 0x3758)))(&a11);
  JUMPOUT(0x1000C63F0);
}

uint64_t sub_1000C6494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (((&a14 | 0x5B696319) - (&a14 & 0x5B696319)) ^ 0x300B07B) * v21;
  a16 = a10;
  a17 = &a11;
  a15 = v23 - 731899810;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674574891;
  v24 = (*(v19 + 8 * (v22 ^ 0x35F7)))(&a14);
  return (*(v19 + 8 * (((a14 == (((v22 - 1151) | 0x202) ^ (v20 + 2558))) * ((v22 + 949) ^ 0x16F7)) ^ v22)))(v24);
}

uint64_t sub_1000C65C4@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int64x2_t a4@<Q2>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v27 = v12 - v9 + v10;
  *&v28 = v27 - 15;
  *(&v28 + 1) = v27 - 16;
  *&STACK[0x3B0] = v28;
  v29.i64[0] = v27 - 13;
  v29.i64[1] = v27 - 14;
  v30.i64[0] = v27 - 11;
  v30.i64[1] = v27 - 12;
  v31.i64[0] = v27 - 7;
  v31.i64[1] = v27 - 8;
  v32.i64[0] = v27 - 3;
  v32.i64[1] = v27 - 4;
  v33 = v12 - v9 - 1;
  v34.i64[0] = v10 + v33;
  v34.i64[1] = v27 - 2;
  v35.i64[0] = v27 - 5;
  v35.i64[1] = v27 + v16 + a1;
  v36 = vandq_s8(v35, a2);
  v37 = vandq_s8(v34, a2);
  v38 = vandq_s8(v32, a2);
  v39 = vandq_s8(v31, a2);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), a4), a5);
  v43 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), a4), a5);
  v44 = veorq_s8(v43, a6);
  v45 = veorq_s8(v42, a6);
  v46 = veorq_s8(v42, a7);
  v47 = veorq_s8(v43, a7);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), a8);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), a8);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v51 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v52 = veorq_s8(v48, v50);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v52);
  v55 = vaddq_s64(v53, v51);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(v55, vandq_s8(vaddq_s64(v55, v55), a9)), v17), v18);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(v54, vandq_s8(vaddq_s64(v54, v54), a9)), v17), v18);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), v19);
  v63 = veorq_s8(v61, v19);
  v64 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v65 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v62, v64);
  v67 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), v20);
  v70 = veorq_s8(v68, v20);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), v21);
  v77 = veorq_s8(v75, v21);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v77, v77), v22), v77), v23), v24);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), v22), v76), v23), v24);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v80), v25);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81), v25);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v84.i64[0] = v27 - 9;
  v84.i64[1] = v27 - 10;
  v87 = vandq_s8(vaddq_s64(v40, a4), a5);
  v173.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a3)));
  v173.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v85), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a3)));
  v88 = veorq_s8(v87, a6);
  v89 = veorq_s8(v87, a7);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), a8);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(v92, vandq_s8(vaddq_s64(v92, v92), a9)), v17), v18);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v19);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v20);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v21);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), v22), v99), v23), v24);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v25);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL)));
  v104 = vandq_s8(v84, a2);
  v105 = vandq_s8(vaddq_s64(v41, a4), a5);
  v173.val[0] = vshlq_u64(veorq_s8(v103, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a3)));
  v106 = veorq_s8(v105, a6);
  v107 = veorq_s8(v105, a7);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), a8);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), a9)), v17), v18);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v19);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v20);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v21);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v117, v117), v22), v117), v23), v24);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v25);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v30, a2);
  v124 = vaddq_s64(v122, v121);
  v125 = vandq_s8(v29, a2);
  v173.val[2] = vshlq_u64(veorq_s8(v124, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a3)));
  v126 = vandq_s8(*&STACK[0x3B0], a2);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v129 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), a4), a5);
  v130 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), a4), a5);
  v126.i64[0] = vqtbl4q_s8(v173, *&STACK[0x3A0]).u64[0];
  v173.val[0] = veorq_s8(v130, a6);
  v173.val[1] = veorq_s8(v129, a6);
  v173.val[2] = veorq_s8(v129, a7);
  v173.val[3] = veorq_s8(v130, a7);
  v173.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[2]), a8);
  v173.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL), v173.val[3]), a8);
  v131 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[1], v131);
  v132 = vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL);
  v173.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[3]);
  v173.val[1] = vaddq_s64(v132, v173.val[2]);
  v173.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v173.val[1], vandq_s8(vaddq_s64(v173.val[1], v173.val[1]), a9)), v17), v18);
  v173.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v173.val[0], vandq_s8(vaddq_s64(v173.val[0], v173.val[0]), a9)), v17), v18);
  v133 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[1], v133);
  v134 = vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL);
  v173.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[3]);
  v173.val[1] = veorq_s8(vaddq_s64(v134, v173.val[2]), v19);
  v173.val[0] = veorq_s8(v173.val[0], v19);
  v135 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[1], v135);
  v136 = vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL);
  v173.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[3]);
  v173.val[1] = veorq_s8(vaddq_s64(v136, v173.val[2]), v20);
  v173.val[0] = veorq_s8(v173.val[0], v20);
  v137 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[1], v137);
  v138 = vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL);
  v173.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[3]);
  v173.val[1] = veorq_s8(vaddq_s64(v138, v173.val[2]), v21);
  v173.val[0] = veorq_s8(v173.val[0], v21);
  v173.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173.val[0], v173.val[0]), v22), v173.val[0]), v23), v24);
  v173.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173.val[1], v173.val[1]), v22), v173.val[1]), v23), v24);
  v173.val[2] = veorq_s8(v173.val[1], vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[2]), v25);
  v173.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL), v173.val[3]), v25);
  v139 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v140 = vandq_s8(vaddq_s64(v127, a4), a5);
  v173.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), veorq_s8(v173.val[1], v139)), v26), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), a3)));
  v173.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL), v173.val[2]), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a3)));
  v141 = veorq_s8(v140, a6);
  v142 = veorq_s8(v140, a7);
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), a8);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(v145, vandq_s8(vaddq_s64(v145, v145), a9)), v17), v18);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v19);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), v20);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v21);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v22), v152), v23), v24);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v25);
  v156 = vandq_s8(vaddq_s64(v128, a4), a5);
  v173.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a3)));
  v157 = veorq_s8(v156, a6);
  v158 = veorq_s8(v156, a7);
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), a8);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(v161, vandq_s8(vaddq_s64(v161, v161), a9)), v17), v18);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v19);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v20);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v21);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), v22), v168), v23), v24);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v25);
  v173.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), a3)));
  v126.i64[1] = vqtbl4q_s8(v173, *&STACK[0x3A0]).u64[0];
  v173.val[0] = vrev64q_s8(*(v11 + v33));
  v173.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v173.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v173.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v173.val[0], v173.val[0], 8uLL), v173.val[1]), v126));
  *(v10 + v33 - 15) = vextq_s8(v173.val[0], v173.val[0], 8uLL);
  return (*(v14 + 8 * (((v9 + 16 == v12) * v13) ^ v15)))();
}

void sub_1000C6EF0(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, char a9, uint64_t a10, int a11)
{
  v15 = a1 ^ (v14 + 2822);
  *v12 = a4;
  *v11 = a7;
  a11 = (v15 + 954966477) ^ (1824088897 * ((&a9 + 2137437616 - 2 * (&a9 & 0x7F66B5B0)) ^ 0x270F66D2));
  a10 = a5;
  (*(v13 + 8 * (v15 + 954967743)))(&a9);
  JUMPOUT(0x10008DD40);
}

uint64_t sub_1000C703C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v13 = 169 * (a1 ^ v11);
  v14 = a1 - 570102757;
  a10 = a1 - 1710126949 * ((&a10 - 1735959748 - 2 * (&a10 & 0x98875B3C)) ^ 0xAA9C00AC) - 93781274;
  v15 = (*(v12 + 8 * (a1 ^ 0x21FB3F80u)))(&a10);
  return (*(v12 + 8 * ((8858 * (a11 == (v13 ^ 0xF8163E))) ^ v14)))(v15);
}

uint64_t sub_1000C70F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *a21, int a22, unsigned int a23)
{
  a21 = &a18;
  a23 = 1317436891 * ((((2 * &a21) | 0x703EA756) - &a21 + 1205906517) ^ 0x81CCBDD) + 8154;
  v25 = (*(v24 + 77096))(&a21);
  return (*(v24 + 8 * ((13189 * (a22 == 16257999)) ^ v23)))(v25);
}

uint64_t sub_1000C7188@<X0>(int a1@<W8>)
{
  STACK[0xB10] = v1;
  v3 = STACK[0x720];
  STACK[0xB18] = STACK[0x720];
  return (*(v2 + 8 * ((3656 * (v1 - v3 > ((241 * (a1 ^ 0x4D6u)) ^ 0x2DAuLL))) ^ a1)))();
}

void sub_1000C71DC(uint64_t a1)
{
  *(v2 - 240) = v1;
  *(v2 - 216) = a1;
  JUMPOUT(0x100099374);
}

uint64_t sub_1000C729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (v47)
  {
    v48 = a4 == 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = v48;
  LODWORD(a16) = v46 ^ 0xDD5;
  LODWORD(a28) = -42900;
  return (*(a2 + 8 * (((v46 ^ 0x1925 ^ ((v46 ^ 0x1E1E) - 1856224986) & 0x6EA3B7FB) * v49) ^ v46 ^ 0x1E1E)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_1000C737C()
{
  v2 = 863 * (v0 ^ 0x2026);
  v8 = v6;
  v9 = (v2 + 2305) ^ (1824088897 * (((&v7 ^ 0xC54180C9) + 1559224705 - 2 * ((&v7 ^ 0xC54180C9) & 0x5CEFE181)) ^ 0xC1C7B22A));
  (*(v1 + 8 * (v2 + 3571)))(&v7);
  v9 = ((v2 ^ 0x3D2) + 3151) ^ (1824088897 * ((2 * (&v7 & 0x360D8A38) - &v7 + 1240626630) ^ 0x119BA6A4));
  v8 = v4;
  (*(v1 + 8 * (v2 ^ 0x3215)))(&v7);
  return (v2 ^ 0x4BFEA469) + (v5 ^ 0xB4F95FDF) + ((2 * v5) & 0x69F2BFBE) - 16257999;
}

uint64_t sub_1000C7538@<X0>(int a1@<W8>)
{
  v2 = a1 + 1662;
  v3 = a1 + 3057;
  v4 = (*(v1 + 8 * (a1 + 6608)))(32, 0x103004054B5FA7DLL);
  STACK[0x690] = v4;
  return (*(v1 + 8 * ((((v2 ^ 0xF ^ (v4 == 0)) & 1) * (v3 ^ 0x173A)) ^ v2)))();
}

uint64_t sub_1000C7618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x350];
  if (LODWORD(STACK[0x350]) == 43491)
  {
    return (*(a72 + 8 * ((a71 + 765) ^ (360 * (LODWORD(STACK[0x2F0]) != LODWORD(STACK[0x370]))))))();
  }

  if (v72 == 28239)
  {
    v74 = LODWORD(STACK[0xAF8]) - ((2 * LODWORD(STACK[0xAF8])) & 0x4AB7A8BE) + ((a71 - 234104805) & 0xDF41FBF ^ 0xFFFFF063) - 1520708510 == -1520708513;
    return (*(a72 + 8 * ((v74 | (8 * v74)) ^ (a71 + 1810))))();
  }

  else if (v72 == 47633)
  {
    return (*(a72 + 8 * (((LODWORD(STACK[0xAE0]) == 197499227) * (a71 + 3681)) ^ (a71 - 4373))))();
  }

  else
  {
    return (*(a72 + 8 * (a71 ^ 0x17CB ^ (a71 + 3087))))(a1, 197499219);
  }
}

uint64_t sub_1000C7984()
{
  STACK[0x678] = v0;
  STACK[0x610] = *(v2 + 8 * (v1 - 8526));
  return sub_100100824(v1 - 972);
}

uint64_t sub_1000C79A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(a21 + 16);
  *(v23 - 153) = v24[15] - ((2 * v24[15]) & 0x78) + 60;
  *(v23 - 154) = v24[14] - ((2 * v24[14]) & 0x78) + 60;
  *(v23 - 155) = v24[13] - ((v24[13] << (v22 + 56 + ((v22 + 97) | 0x90) + 64)) & 0x78) + 60;
  *(v23 - 156) = v24[12] - ((2 * v24[12]) & 0x78) + 60;
  *(v23 - 157) = v24[11] - ((2 * v24[11]) & 0x78) + 60;
  *(v23 - 158) = v24[10] - ((2 * v24[10]) & 0x78) + 60;
  *(v23 - 159) = v24[9] - ((2 * v24[9]) & 0x78) + 60;
  *(v23 - 160) = v24[8] - ((2 * v24[8]) & 0x78) + 60;
  *(v23 - 161) = v24[7] - ((2 * v24[7]) & 0x78) + 60;
  *(v23 - 162) = v24[6] - ((2 * v24[6]) & 0x78) + 60;
  *(v23 - 163) = v24[5] - ((2 * v24[5]) & 0x78) + 60;
  *(v23 - 164) = v24[4] - ((2 * v24[4]) & 0x78) + 60;
  *(v23 - 165) = v24[3] - ((2 * v24[3]) & 0x78) + 60;
  *(v23 - 166) = v24[2] - ((2 * v24[2]) & 0x78) + 60;
  *(v23 - 167) = v24[1] - ((2 * v24[1]) & 0x78) + 60;
  *(v23 - 168) = *v24 - ((2 * *v24) & 0x78) + 60;
  *(v23 - 148) = v22 - 956911519 * (((v23 - 152) & 0xF4C4C6ED | ~((v23 - 152) | 0xF4C4C6ED)) ^ 0xE1AA4917) + 1986974298;
  v25 = (*(v21 + 8 * (v22 ^ 0x2C78)))(v23 - 152);
  return (*(v21 + 8 * ((47 * (*(v23 - 152) == 222)) ^ v22)))(v25);
}

uint64_t sub_1000C7CFC()
{
  memset((STACK[0x798] + 8), 60, 48);
  *&STACK[0x320] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x330] = vdupq_n_s64(0x38uLL);
  *&STACK[0x380] = vdupq_n_s64(0xF92B3AE46CD3AAB5);
  *&STACK[0x390] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x220] = vdupq_n_s64(0x6D4C51B932C554AuLL);
  *&STACK[0x300] = vdupq_n_s64(0x18849D489A333C3BuLL);
  *&STACK[0x310] = vdupq_n_s64(0xB0C278DF03C54D67);
  *&STACK[0x2E0] = vdupq_n_s64(v0);
  *&STACK[0x2F0] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x2C0] = vdupq_n_s64(0x953F7DAAA667EAE2);
  *&STACK[0x2D0] = vdupq_n_s64(0x2A7EFB554CCFD5C4uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xCC5CCB6FF3BE95FDLL);
  *&STACK[0x370] = vdupq_n_s64(0xCA86DFF3ED886062);
  *&STACK[0x280] = vdupq_n_s64(0x818073FB8640EE5DLL);
  *&STACK[0x290] = vdupq_n_s64(0x1ABC9006093BCFCFuLL);
  *&STACK[0x260] = vdupq_n_s64(0xF812420440F6AA64);
  *&STACK[0x270] = vdupq_n_s64(0xE238A9E002A50567);
  *&STACK[0x200] = vdupq_n_s64(0x276E05BB2EBB76F9uLL);
  *&STACK[0x210] = vdupq_n_s64(0x1DC7561FFD5AFA98uLL);
  *&STACK[0x240] = vdupq_n_s64(0x73A1B896F9C3D547uLL);
  *&STACK[0x250] = vdupq_n_s64(0xD891FA44D1448906);
  *&STACK[0x230] = xmmword_1003EAE50;
  return sub_1000EB228(16, 0x3537u);
}

uint64_t sub_1000C7F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  v17 = v11;
  (*(v12 + 8 * (v13 + 8476)))(a1, *(v14 + 8 * ((v13 + 1905) ^ 0xD6B)) - 12);
  (*(v12 + 8 * (v13 + 8477)))(*(v15 + v17));
  *(v16 + 356) = *(v15 + v17);
  *(v16 + 44) = 887888748;
  a11 = v13 + 1905 - 1358806181 * ((1263505625 - (&a10 | 0x4B4F90D9) + (&a10 | 0xB4B06F26)) ^ 0x8B9F03A5) + 793;
  v18 = (*(v12 + 8 * ((v13 + 1905) ^ 0x29D0)))(&a10);
  return (*(v12 + 8 * (((a10 == ((v13 + 734951608) & 0xD4319BF6 ^ 0xF80ABF)) * (((v13 - 129) | 0xA23) + 686)) ^ (v13 + 1905))))(v18);
}

uint64_t sub_1000C80F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, unsigned int a25)
{
  v27 = 1824088897 * ((&a20 & 0x153AB17A | ~(&a20 | 0x153AB17A)) ^ 0xB2AC9DE7);
  a21 = v27 + 475176934;
  a22 = a14;
  a23 = &a18;
  a24 = -654855621 - v27;
  a25 = v27 + v26 + 1674575638;
  v28 = (*(v25 + 8 * (v26 ^ 0x281C)))(&a20);
  return (*(v25 + 8 * (((a20 == 16257999) * ((((v26 - 991428038) & 0x3B17FFFF) - 3011) ^ ((v26 - 3476) | 0x434))) ^ v26)))(v28);
}

uint64_t sub_1000C82CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, ...)
{
  va_start(va, a5);
  v7 = (*(v5 + 8 * (v6 + 504)))(a5, a1, va) == (v6 ^ 0x23C2);
  return (*(v5 + 8 * ((v7 * (v6 ^ 0x23D8)) ^ v6)))();
}

void sub_1000C8314(uint64_t a1@<X5>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  STACK[0x260] = a1 + a2;
  STACK[0x250] = a59 + v59 + v60 + a2;
  JUMPOUT(0x1000C8360);
}

uint64_t sub_1000C8E40(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0xA0E]) = v2;
  LODWORD(STACK[0x360]) = v2;
  return sub_100146F00(a1, a2, v3 - 8590);
}

uint64_t sub_1000C8EF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x240] = 0;
  *a1 = 0;
  a1[1] = 0;
  *(v8 - 216) = a1;
  return sub_10012BB40(a7, v7 + 715);
}

uint64_t sub_1000C8FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a8)
  {
    v49 = v47 == 0;
  }

  else
  {
    v49 = 1;
  }

  v52 = v49 || *(a1 + 48) == 0 || *(a1 + 64) == 0;
  return (*(v48 + 8 * (v52 ^ v46)))(a1, a2, a3, v47, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_1000C9120@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_1000F4958();
}

uint64_t sub_1000C9238()
{
  STACK[0x7D8] = STACK[0x830];
  STACK[0x628] -= 32;
  return (*(v1 + 8 * ((5197 * ((((v0 + 16) | 0x2C0) ^ 0xF81917) == 16257999)) ^ (v0 + 1226))))();
}

uint64_t sub_1000C92BC@<X0>(uint64_t a1@<X8>)
{
  v8 = 956911519 * ((2 * ((v7 - 232) & 0x61D09360) - (v7 - 232) + 506424472) ^ 0xF4BE1C9D);
  *(v7 - 216) = v1 ^ v8;
  *(v7 - 200) = ((v2 ^ 0x3BF77DDC) - 989925376 + ((((v4 + 1713492672) & 0x99DE3FDF) + 2012144621) & (2 * v2))) ^ v8;
  *(v7 - 208) = v3;
  *(v7 - 192) = v8 ^ 0x5A8CE82;
  *(v7 - 188) = (v4 + 1261) ^ v8;
  *(v7 - 232) = v5;
  *(v7 - 224) = a1;
  v9 = (*(v6 + 8 * (v4 ^ 0x2085)))(v7 - 232);
  return (STACK[0x5E8])(v9);
}

uint64_t sub_1000C9394()
{
  v4 = 3079 * (v0 ^ 0x159A);
  v10 = (v0 + 2818) ^ (((-184511499 - (&v8 | 0xF50093F5) + (&v8 | 0xAFF6C0A)) ^ 0x5296BF68) * v1);
  v9 = v7;
  (*(v2 + 8 * (v0 + 4084)))(&v8);
  v10 = (v4 + 2188) ^ (((((&v8 | 0x581BE3FE) ^ 0xFFFFFFFE) - (~&v8 | 0xA7E41C01)) ^ 0xFF8DCF63) * v1);
  v9 = v6;
  (*(v2 + 8 * (v4 ^ 0x3D82)))(&v8);
  return (v3 - 16257999);
}

uint64_t sub_1000C94AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = v2;
  return sub_1000DC52C(a1, 197499219);
}

uint64_t sub_1000C94BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *a1 = 0;
  a1[1] = 0;
  v20 = *(a7 + 8 * (((a19 != 0) * ((151 * ((v19 - 2077) ^ 0x8A)) ^ 0x242D)) ^ (v19 - 2077)));
  HIDWORD(a10) = 197499219;
  STACK[0x270] = STACK[0x240];
  STACK[0x288] = 0;
  LODWORD(STACK[0x25C]) = 16257999;
  return v20(a1, a19, a3, a4, a5, a6, a7, LODWORD(STACK[0x2BC]), a9, a10, a11, 0, a13, a14, a15, a16);
}

uint64_t sub_1000C964C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x388] = v5;
  v6 = LODWORD(STACK[0x58C]) == 866378219;
  LODWORD(STACK[0x58C]) = -1143101532;
  LODWORD(STACK[0x5B0]) = -1654346954;
  v7 = *(v4 + 8 * ((971 * ((v6 ^ (v3 + 1)) & 1)) ^ v3));
  LODWORD(STACK[0x588]) = 932914950;
  return v7(2634133490, a2, a3, 1197913005);
}

uint64_t sub_1000C97A4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3309)))(128, 0x10800400FED9166);
  v3 = STACK[0x400];
  STACK[0x6F0] = v2;
  return (*(v3 + 8 * ((28 * (((((v0 + 103) ^ (v0 - 1)) ^ (v2 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1000C9814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, int a14, char a15, uint64_t a16, int a17, char a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a22 = a19;
  a23 = &a10;
  a21 = (v25 + 1230) ^ (((((&a20 | 0x1865D74A) ^ 0xFFFFFFFE) - (~&a20 | 0xE79A28B5)) ^ 0xDE6CE296) * v27);
  (*(v26 + 8 * (v25 + 7579)))(&a20);
  a24 = (v25 + 1336) ^ (1710126949 * ((&a20 & 0x86FED928 | ~(&a20 | 0x86FED928)) ^ 0x4B1A7D47));
  a25 = &a12;
  a22 = a19;
  a23 = &a18;
  (*(v26 + 8 * ((v25 - 335) ^ 0x2310)))(&a20);
  a21 = (v25 + 1230) ^ (((&a20 & 0xE555C1FD | ~(&a20 | 0xE555C1FD)) ^ 0x235CF421) * v27);
  a22 = a19;
  a23 = &a15;
  (*(v26 + 8 * ((v25 - 335) ^ 0x2316)))(&a20);
  a22 = a19;
  LODWORD(a23) = v25 - 335 - 2008441969 * ((-1859138113 - (&a20 | 0x912FCDBF) + (&a20 | 0x6ED03240)) ^ 0x2649664E) + 3998;
  v28 = (*(v26 + 8 * ((v25 - 335) ^ 0x23E4)))(&a20);
  return (*(v26 + 8 * (((a20 == 16257999) * ((v25 + 5335) ^ 0x1D30)) ^ (v25 - 335))))(v28);
}

uint64_t sub_1000C9A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19)
{
  v26 = 1875091903 * (((&a17 | 0xC6D6CB63) - (&a17 & 0xC6D6CB63)) ^ 0xF0A348E0);
  a19 = a13;
  HIDWORD(a17) = (v23 ^ 0x24FCF7EF) + ((2 * v23) & 0x49F9EFDE) - 81805637 + v26;
  a18 = v25 + 2976 + v26;
  (*(v24 + 8 * (v25 ^ 0x3721)))(&a17);
  v27 = 1875091903 * ((2 * (&a17 & 0xE448F58) - &a17 - 239374176) ^ 0xC7CEF323);
  a19 = a13;
  HIDWORD(a17) = (HIDWORD(v22) ^ 0x719CF6FF) + ((HIDWORD(v22) << (2 * (v25 ^ 0xC3) + 99)) & (v25 ^ 0xE339FF72)) - 1367359573 + v27;
  a18 = v25 + 2976 + v27;
  (*(v24 + 8 * (v25 + 4897)))(&a17);
  v28 = (v22 ^ 0xB9FEF6FF) + ((2 * v22) & 0x73FDEDFE);
  v29 = 2 * &a17;
  v30 = 1875091903 * (((v29 | 0x8829CAD0) - &a17 - 1142220136) ^ 0x726166EB);
  a19 = a13;
  HIDWORD(a17) = v28 + 1713225643 + v30;
  a18 = v25 + 2976 + v30;
  (*(v24 + 8 * (v25 ^ 0x3721)))(&a17);
  a17 = v21;
  a19 = a13;
  a18 = v25 + 1824088897 * ((2 * (&a17 & 0xADCAB10) - &a17 + 1965249769) ^ 0x2D4A878B) - 2443;
  (*(v24 + 8 * (v25 + 4842)))(&a17);
  v31 = 1875091903 * (((v29 | 0x789F4C20) - &a17 + 1135630832) ^ 0x8A3A2593);
  a19 = a13;
  HIDWORD(a17) = (v20 ^ 0xB95CBFEB) + ((2 * v20) & 0x72B97FD6) + 1723856575 + v31;
  a18 = v25 + 2976 + v31;
  (*(v24 + 8 * (v25 + 4897)))(&a17);
  v32 = 1875091903 * (((&a17 | 0x3BA281D8) - (&a17 & 0x3BA281D8)) ^ 0xDD7025B);
  a19 = a13;
  HIDWORD(a17) = (v19 ^ 0xBCBDB7AB) + ((2 * v19) & 0x16F56) + 1667170047 + v32;
  a18 = v25 + 2976 + v32;
  v33 = (*(v24 + 8 * (v25 ^ 0x3721)))(&a17);
  return (*(v24 + 8 * (((2 * (a17 != 16257999)) | (16 * (a17 != 16257999))) ^ v25)))(v33);
}

uint64_t sub_1000C9DE4@<X0>(unint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x5C8] = *a1;
  return (*(v2 + 8 * ((15 * (((v3 == 0) ^ (v1 - 72 + v1 + 1)) & 1)) ^ v1)))();
}

uint64_t sub_1000C9E9C(uint64_t result)
{
  v1 = 1710126949 * ((result - 2 * (result & 0xF410C37DA159FC11) - 0xBEF3C825EA603EFLL) ^ 0x9C16A7A49342A781);
  v2 = *(result + 12) + v1;
  v3 = *result ^ v1;
  v4 = *(result + 8) + v1;
  v5 = *(result + 4) - v1;
  v6 = *(result + 16) + v1;
  v7 = *(result + 32) ^ v1;
  v8 = v7 < v6;
  v9 = v7 < v6;
  v10 = v8;
  if (v5)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  *(result + 28) = v11 ^ v2;
  return result;
}

uint64_t sub_1000C9F28@<X0>(uint64_t a1@<X0>, int a2@<W6>, int a3@<W8>)
{
  v7 = v4 + 10 * (v5 ^ (a3 + 3498)) - 1281;
  *(a1 + v7) = *(v3 + v7) ^ 0x3C;
  return (*(v6 + 8 * ((15636 * (v7 == 0)) ^ (a2 + v5 + 2733))))();
}

uint64_t sub_1000CA9CC(unint64_t a1)
{
  v4 = *(v3 + 8 * ((((((v2 - 6194) | 0x380) ^ 0x38C1) + ((v2 + 1637312250) & 0x9E6882FF)) * (*v1 == 0)) ^ v2));
  STACK[0x3E0] = a1;
  return v4(0x3532CD90FD5B1622, 0);
}

uint64_t sub_1000CAA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v12 = (((2 * v5) & 0x7F1F73F7FFFEE0CELL) + (v5 ^ 0xBF8FB9FBFFFF7067) + v6);
  v13 = (v12[v8 + 0x4070460400007B34] << 24) | (v12[v8 + 0x4070460400007B35] << 16);
  v12 += 0x4070460400008F9BLL;
  v14 = (v13 | (*v12 << 8) | v12[1]) + 197499219 - 2 * ((v13 | (*v12 << 8) | v12[1]) & v9 ^ v12[1] & 0xC);
  v15 = ((2 * (v5 + 4)) & 0x6D77FFFB7CF1FFAELL) + ((v5 + 4) ^ 0x76BBFFFDBE78FFD7) + v6 - 0x76BBFFFDBE78FFD7;
  v16 = (_byteswap_ushort(*v15) - 2 * (_byteswap_ushort(*v15) & 0x3E9E ^ *(v15 + 1) & 0xA) + 16023);
  switch(v16)
  {
    case 28242:
      STACK[0x428] = v6 + v7;
      STACK[0x730] = a5;
      return (*(a4 + 8 * (((v14 == ((v11 - 1863) ^ 0xBC5944D)) * (v11 - 5105)) ^ (v11 - 1597))))();
    case 47636:
      return (*(a4 + 8 * ((((2 * v11) ^ 0x2FE1) * (v10 == 197499227)) ^ (v11 - 2401))))();
    case 43494:
      return (*(a4 + 8 * (((((v11 - 4061) | 0x1156) ^ 0x11A7) * (v10 == 197499223)) ^ (v11 - 2401))))();
    default:
      return sub_1001405B8(a1, a2, a3, a4);
  }
}

void sub_1000CAC84(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (1824088897 * ((((2 * a1) | 0xEF42288E) - a1 + 140438457) ^ 0xAFC8C725));
  v2 = *a1;
  v3 = *(&off_100477F30 + (v1 ^ 0x1C5E)) - 8;
  (*&v3[8 * (v1 ^ 0x3B4F)])();
  __asm { BRAA            X9, X17 }
}

void sub_1000CAD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = a6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v11 = !v8 && a7 != 0 && a8 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000CAE14()
{
  v2 = STACK[0x900];
  STACK[0x508] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 84)) & 1) * (((v0 - 124) | 0x1582) - 6078)) ^ (v0 + 4781))))();
}

uint64_t sub_1000CAEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = v15 - 1;
  *(a15 + v18) = *(a4 + v18);
  return (*(v17 + 8 * (((32 * (v18 == (v16 ^ 0x2420))) | ((v18 == (v16 ^ 0x2420)) << 6)) ^ (v16 - 4339))))(a1, a2, a3, 16257999);
}

uint64_t sub_1000CAF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 7 + ~v10 + v9) = vadd_s8(vsub_s8(*(a8 - 7 + ~v10 + v9), vand_s8(vadd_s8(*(a8 - 7 + ~v10 + v9), *(a8 - 7 + ~v10 + v9)), v13)), v14);
  v15 = ((v11 - 908030022) & 0x361F5FEF ^ 0x7A2) + v10 == (v9 & 0xFFFFFFF8);
  return (*(v12 + 8 * ((4 * v15) | (32 * v15) | v11)))();
}

void sub_1000CAFBC(uint64_t a1, int a2, int a3)
{
  LODWORD(STACK[0x4B4]) = a2;
  LODWORD(STACK[0x508]) = a3;
  LODWORD(STACK[0x518]) = v3;
  LODWORD(STACK[0x524]) = STACK[0x58C];
  LODWORD(STACK[0x4C4]) = STACK[0x588];
  LODWORD(STACK[0x588]) = STACK[0x548];
  LODWORD(STACK[0x58C]) = STACK[0x5A8];
  LODWORD(STACK[0x5A8]) = STACK[0x540];
  JUMPOUT(0x1000AB738);
}

uint64_t sub_1000CB008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, int a22, unsigned int a23, int a24)
{
  v26 = 956911519 * ((2 * (&a21 & 0x56B420E8) - &a21 - 1454645482) ^ 0x43DAAF13);
  HIDWORD(a21) = v26 + 543642722;
  a22 = v26 ^ 0x61FE7920;
  a23 = 1002199528 - v26;
  a24 = v26 ^ 0x1602;
  (*(v24 + 77008))(&a21);
  a23 = 1317436891 * ((2 * (&a21 & 0x50EE2770) - &a21 + 789698697) ^ 0x9F1240FF) + 8154;
  a21 = &a17;
  v27 = (*(v24 + 77096))(&a21);
  return (*(v24 + 8 * (v25 | (32 * (a22 == 16257999)))))(v27);
}

uint64_t sub_1000CB1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, int a18, char a19, int a20, unsigned int a21, char *a22, char *a23, char *a24, char *a25)
{
  v29 = v26 ^ 0x507;
  a25 = &a16;
  LODWORD(a24) = (v29 - 1721) ^ ((((&a20 | 0x1350D435) + (~&a20 | 0xECAF2BCA)) ^ 0x214B8FA4) * v28);
  a22 = a12;
  a23 = &a14;
  (*(v25 + 8 * (v29 + 4528)))(&a20);
  LODWORD(a23) = v29 + 956911519 * ((2 * ((&a20 ^ 0x257035F6) & 0x6E233ED2) - (&a20 ^ 0x257035F6) + 299680044) ^ 0xDE3D84DF) + 4233;
  a22 = &a11;
  a24 = a12;
  (*(v25 + 8 * (v29 + 4567)))(&a20);
  a21 = (v29 - 1827) ^ (33731311 * ((-1541042964 - (&a20 | 0xA4258CEC) + (&a20 | 0x5BDA7313)) ^ 0x622CB930));
  a22 = a12;
  a23 = &a19;
  (*(v25 + 8 * (v29 + 4522)))(&a20);
  LODWORD(a23) = v29 - 2008441969 * (((&a20 | 0x5357CD4) - &a20 + (&a20 & 0xFACA8328)) ^ 0x4DAC28DA) + 606;
  a22 = a12;
  v30 = (*(v25 + 8 * (v29 + 4572)))(&a20);
  return (*(v25 + 8 * (((a20 != v27) * (((v29 ^ 0x66) + 440) ^ v29 ^ 0x648)) ^ v29)))(v30);
}

uint64_t sub_1000CB3B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  *(v2 + 8) = *(v3 + 8);
  *(v3 + 8) = v2;
  return sub_10016F0A8(a1);
}

uint64_t sub_1000CB3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, int a17)
{
  v21 = 956911519 * (((~v20 | 0xD1419561893CAE16) + (v20 | 0x2EBE6A9E76C351E9)) ^ 0x6B881F429C5221EDLL);
  a15 = v17 + v21 - ((2 * v17) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34;
  a16 = a11;
  a14 = v21 ^ 0x3FE;
  v22 = (*(v19 + 76792))(&a14);
  return (*(v19 + 8 * ((6857 * (a17 == v18)) ^ 0x3FDu)))(v22);
}

uint64_t sub_1000CB4C8(unint64_t a1)
{
  STACK[0x6C8] = a1;
  *a1 = 5;
  *(a1 + 4) = 257;
  v3 = (*(v2 + 8 * (v1 + 4253)))(120, 0x1000040F604211FLL);
  STACK[0x868] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((2 * v1) ^ 0x3F24) - 5446 + 3 * (v1 ^ 0x1508))) ^ v1)))();
}

uint64_t sub_1000CB548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  return (*(v33 + 8 * (((1556 * (v30 ^ 0x545) + 1922) * v34) ^ v30)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1000CB588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v28 = a5 - 1;
  v29 = (a1 + v28);
  v30 = __ROR8__((a1 + v28) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = v13 - (((v22 - v30) | v12) + ((v30 + a4) | v10));
  v32 = v31 ^ v9;
  v33 = v31 ^ v11;
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xE49D77DF873DBF7ELL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((v14 & (2 * (v36 + v35))) - (v36 + v35) + v8) ^ v15;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v23;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v25;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((v43 + v42) & v18 ^ a3) + ((v43 + v42) ^ a2) - (((v43 + v42) ^ a2) & v18)) ^ v17;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v21;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = *(v26 - 216);
  *(v27 + v28 + v24) = (((v48 + v47) ^ v20) >> (8 * (v29 & 7u))) ^ *v29;
  return (*(v19 + 8 * (((v28 == 0) * a8) ^ (v16 + 2920))))(v49);
}

uint64_t sub_1000CB694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = v20 + v19 + 1317436891 * ((2 * (&a15 & 0x6886A508) - &a15 + 393829104) ^ 0xA77AC286) + 2584;
  a15 = &a10;
  v21 = (*(v17 + 8 * (v20 + v19 + 4067)))(&a15);
  return (*(v17 + 8 * ((12458 * (a16 == v18 + v19 - 1459346795 - 1082)) ^ (v19 + v20))))(v21);
}

uint64_t sub_1000CB7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int8x16_t a43, int8x16_t a44, int8x16_t a45, int8x16_t a46, int8x16_t a47, int8x16_t a48, int64x2_t a49, int8x16_t a50, int8x16_t a51, int8x16_t a52, int8x16_t a53, int64x2_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int8x16_t a59)
{
  v66 = v60 + v59 - a37;
  v67.i64[0] = v66 - 5;
  v67.i64[1] = v66 - 6;
  v68.i64[0] = v66 - 3;
  v68.i64[1] = v66 - 4;
  v69.i64[0] = v66 - 1;
  v69.i64[1] = v66 - 2;
  v70.i64[0] = v66 - 7;
  v70.i64[1] = v66 + (((v61 - 205) | 0x10u) ^ 0xFFFFFFFFFFFFF7ECLL);
  v71 = vandq_s8(v70, v63);
  v72 = vandq_s8(v69, v63);
  v73 = vandq_s8(v68, v63);
  v74 = vandq_s8(v67, v63);
  v75 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v79 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v78), *&STACK[0x210]), vorrq_s8(vaddq_s64(v78, *&STACK[0x270]), *&STACK[0x230]));
  v80 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v77), *&STACK[0x210]), vorrq_s8(vaddq_s64(v77, *&STACK[0x270]), *&STACK[0x230]));
  v81 = vsubq_s64(a54, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v75), *&STACK[0x210]), vorrq_s8(vaddq_s64(v75, *&STACK[0x270]), *&STACK[0x230])));
  v82 = vsubq_s64(a54, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v76), *&STACK[0x210]), vorrq_s8(vaddq_s64(v76, *&STACK[0x270]), *&STACK[0x230])));
  v83 = veorq_s8(v82, a53);
  v84 = veorq_s8(v81, a53);
  v85 = veorq_s8(v81, a52);
  v86 = veorq_s8(v82, a52);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85), a51);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v86), a51);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = vaddq_s64(v92, v90);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), a50), v94), a49), a48);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), a50), v93), a49), a48);
  v97 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v98 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v99 = veorq_s8(v95, v97);
  v100 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = veorq_s8(vaddq_s64(v100, v98), a47);
  v103 = veorq_s8(v101, a47);
  v104 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v105 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v106 = veorq_s8(v102, v104);
  v107 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v106);
  v109 = veorq_s8(vaddq_s64(v107, v105), *&STACK[0x200]);
  v110 = veorq_s8(v108, *&STACK[0x200]);
  v111 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v112 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v113 = veorq_s8(v109, v111);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113);
  v116 = vaddq_s64(v114, v112);
  v117 = veorq_s8(v116, a59);
  v118 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v116, v65), a46), v117), vandq_s8(v117, v65));
  v119 = veorq_s8(v115, a59);
  v120 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v115, v65), a46), v119), vandq_s8(v119, v65)), a45);
  v121 = veorq_s8(v118, a45);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), a44);
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v123), a44);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v130 = vdupq_n_s64(0x38uLL);
  v131 = vsubq_s64(a54, v80);
  v167.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v129, v127), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v67, 3uLL), v130)));
  v167.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v128, v126), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), v130)));
  v132 = veorq_s8(v131, a53);
  v133 = veorq_s8(v131, a52);
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), a51);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), a50), v136), a49), a48);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), a47);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), *&STACK[0x200]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(v143, a59);
  v145 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v143, v65), a46), v144), vandq_s8(v144, v65)), a45);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), a44);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL)));
  v149 = vsubq_s64(a54, v79);
  v167.val[0] = vshlq_u64(veorq_s8(v148, a43), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), v130)));
  v150 = veorq_s8(v149, a53);
  v151 = veorq_s8(v149, a52);
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), a51);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v154, v154), a50), v154), a49), a48);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), a47);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), *&STACK[0x200]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(v161, a59);
  v163 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v161, v65), a46), v162), vandq_s8(v162, v65)), a45);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), a44);
  v167.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL))), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), v130)));
  *(a17 + a21 + a22 + v59 - a37) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v167, v64)), *(v66 - 8));
  return (*(*(v62 - 256) + 8 * ((965 * (a37 - (v59 & 0xFFFFFFF8) == -8)) ^ v61)))(a1, a2, v66 - 4, v66 - 5, 56, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

void sub_1000CBE18(int a1@<W8>)
{
  v4 = (a1 + 449) | 0x149;
  (*(v2 + 8 * (a1 ^ 0x2DC1)))();
  *(v1 + 24) = 0;
  (*(v2 + 8 * (v4 + 6709)))(v1);
  *(v3 - 160) = 0;
  JUMPOUT(0x1000FFEE0);
}

uint64_t sub_1000CBE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34)
{
  v36 = *(&off_100477F30 + (v34 ^ 0xFD0));
  v37 = *v36;
  a17 = -39 * **v36 + 72;
  a18 = -39 * v37[1] + 72;
  a19 = v37[2] * (((v34 - 111) & 0xDF) - 125) + 72;
  a20 = -39 * v37[3] + 72;
  a21 = -39 * v37[4] + 72;
  a22 = -39 * v37[5] + 72;
  a23 = -39 * v37[6] + 72;
  a24 = -39 * v37[7] + 72;
  a25 = -39 * v37[8] + 72;
  a26 = -39 * v37[9] + 72;
  a27 = -39 * v37[10] + 72;
  a28 = -39 * v37[11] + 72;
  a29 = -39 * v37[12] + 72;
  a30 = -39 * v37[13] + 72;
  a31 = -39 * v37[14] + 72;
  a32 = -39 * v37[15] + 72;
  a33 = -39 * v37[16] + 72;
  a34 = -39 * *(*v36 + 17) + 72;
  v38 = (*(v35 + 8 * (v34 + 5815)))(&a17);
  return (*(v35 + 8 * ((31 * (v38 != 0)) ^ v34)))(v38, v38, v39, v40, v41, v42, v43, v44);
}

void sub_1000CBF9C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 40) == 0;
  v1 = *(a1 + 48) ^ (2048652491 * (((a1 | 0x338718C6) - (a1 | 0xCC78E739) - 864491719) ^ 0x82368FC3));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000CC0DC@<X0>(int a1@<W8>)
{
  result = (*(v2 + 8 * (a1 ^ 0x2C29)))();
  *(v1 + 384) = 0;
  return result;
}

void sub_1000CC104(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, unsigned int a11)
{
  v15 = (v11 + 1894) | 0xD4;
  *v13 = a1;
  *v12 = a2;
  a10 = a3;
  a11 = (v15 + 5053) ^ (1824088897 * ((676816358 - (&a9 | 0x285765E6) + (&a9 | 0xD7A89A19)) ^ 0x8FC1497B));
  (*(v14 + 8 * (v15 + 6319)))(&a9);
  JUMPOUT(0x1000CC190);
}

uint64_t sub_1000CC234@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X4>, int a3@<W8>)
{
  *v8 = a1;
  *a2 = a3;
  v6 = v3 - 2051;
  v12 = v9;
  v13 = (v3 + 2831) ^ (1824088897 * ((2 * (&v11 & 0x4EF6F650) - &v11 - 1324807763) ^ 0xE960DACF));
  (*(v4 + 8 * (v3 + 4097)))(&v11);
  v12 = v10;
  v13 = (v6 + 4882) ^ (1824088897 * ((2 * (&v11 & 0x1AF2AA28) - &v11 + 1695372757) ^ 0x3D6486B7));
  (*(v4 + 8 * (v6 ^ 0x2804)))(&v11);
  return (v5 - 16257999);
}

uint64_t sub_1000CC4A8()
{
  result = (*(v1 + 8 * (v0 ^ 0x33A4)))();
  *(v3 + 16) = v4;
  return result;
}

uint64_t sub_1000CC518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = v66 + a9;
  v73 = v66 - 1;
  v74 = __ROR8__((v65 + v73) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = (v70 | (2 * (v74 - 0x6AF7234D0CC131D5))) - (v74 - 0x6AF7234D0CC131D5) + (((v67 - 1369) | 0x16C9u) ^ 0x731CB210FB4C52ACLL);
  v76 = v75 ^ v68;
  v77 = v75 ^ v69;
  v78 = __ROR8__(v76, 8);
  v79 = ((a1 | (2 * (v78 + v77))) - (v78 + v77) + 0xC008A9762A8A187) ^ 0x176202B71A6AE107;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = __ROR8__((((2 * (v81 + v80)) & 0xB7A19A6BE498442ALL) - (v81 + v80) + 0x242F32CA0DB3DDEALL) ^ a2, 8);
  v83 = (((2 * (v81 + v80)) & 0xB7A19A6BE498442ALL) - (v81 + v80) + 0x242F32CA0DB3DDEALL) ^ a2 ^ __ROR8__(v80, 61);
  v84 = (v82 + v83) ^ 0x5963B6C555D97F1FLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x61459D2AF01F24F7;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0x64C31C027084DE6CLL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (v90 + v89 - (a3 & (2 * (v90 + v89))) + a4) ^ a5;
  v92 = __ROR8__((v72 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v93 = __ROR8__(v91, 8) + (v91 ^ __ROR8__(v89, 61));
  v94 = (v92 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v95 = (__ROR8__((v92 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v94) ^ 0xE49D77DF873DBF7ELL;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0xF5A2F1B9B5D0B209;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x5963B6C555D97F1FLL;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x61459D2AF01F24F7;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x64C31C027084DE6CLL;
  v104 = __ROR8__(v103, 8);
  v105 = v103 ^ __ROR8__(v102, 61);
  v106 = __ROR8__((v104 + v105) ^ v71, 8) + ((v104 + v105) ^ v71 ^ __ROR8__(v105, 61));
  *(v72 + 9) = ((v93 ^ 0xAB3042D228875C41) >> (8 * ((v65 + v73) & 7))) ^ (((v106 - (a6 & (2 * v106)) + a7) ^ a8) >> (8 * ((v72 + 9) & 7))) ^ *(v65 + v73);
  return (*(a65 + 8 * ((37 * (v73 == 0)) ^ v67)))();
}

uint64_t sub_1000CC794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (a2 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * ((v3 - 1124) ^ 0x92B)) ^ v3)))();
}

uint64_t sub_1000CC830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = a2 - 1;
  *(v9 + v11) = *(v5 + v11) ^ *(v7 + (v11 & 0xF)) ^ *(v8 + (v11 & 0xF) + 1) ^ ((v11 & 0xF) * (((a5 + 72) & 0xEF) + 9)) ^ *(v6 + (v11 & 0xF) + 1) ^ 0x3C;
  return (*(v10 + 8 * ((213 * (v11 != 0)) ^ (a5 - 5948))))();
}

uint64_t sub_1000CC8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20)
{
  a19 = 476323082 - 1710126949 * (((&a19 | 0x9F6D22AA) - (&a19 & 0x9F6D22AA)) ^ 0xAD76793A);
  v21 = (*(v20 + 77088))(&a19);
  return (*(v20 + 8 * ((5494 * (a20 == 16257999)) ^ 0x434u)))(v21);
}

void sub_1000CCA20(int a1@<W2>, int a2@<W7>, int a3@<W8>)
{
  v5 = STACK[0x56C];
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x2DC]) + LODWORD(STACK[0x56C]) - ((((2 * LODWORD(STACK[0x56C])) ^ 0x8B839B43) + 263730824) ^ (((2 * LODWORD(STACK[0x56C])) ^ 0x67BA16E6) - 478037213) ^ (((2 * LODWORD(STACK[0x56C])) ^ 0xEC399C7F ^ (a3 - 2055)) + 1744969826));
  v6 = v3 - 883436870;
  v7 = STACK[0x55C];
  v8 = STACK[0x570];
  v9 = STACK[0x560];
  v10 = (a2 + LODWORD(STACK[0x55C]) - 105202417) ^ (LODWORD(STACK[0x570]) - 1007845593);
  v11 = (a1 + LODWORD(STACK[0x560])) ^ v6;
  v12 = LODWORD(STACK[0x570]) + v5;
  v13 = v4 + 1607544091 + v6;
  LODWORD(STACK[0x400]) = LODWORD(STACK[0x2CC]) - (((v10 ^ 0x1F812FE0) + 372228261) ^ ((v10 ^ 0xB8596B5B) - 1309178848) ^ ((v10 ^ 0xA7D844BB) - 1367954432));
  LODWORD(STACK[0x41C]) = LODWORD(STACK[0x2A4]) + v6;
  v14 = v7 - 754109527 - (v12 + 599698498);
  LODWORD(STACK[0x404]) = LODWORD(STACK[0x28C]) - v13;
  LODWORD(STACK[0x584]) = v8 - 1007845593 - (-1353808025 - v12) - 1306416385;
  LODWORD(STACK[0x590]) = v6 + v13;
  v15 = v9 - 333659870 - v13 + 1593293593;
  LODWORD(STACK[0x580]) = v12 + 284451258;
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x2C0]) - v8 - 1185058536;
  LODWORD(STACK[0x57C]) = v14 + 1593293593;
  LODWORD(STACK[0x58C]) = (v7 - 754109527) ^ (v12 + 599698498) ^ v10 ^ 0x56463603 ^ (v14 - ((2 * (v14 + 1593293593)) & 0xAC8C6C06) - 1254231780);
  LODWORD(STACK[0x5A8]) = v13;
  LODWORD(STACK[0x56C]) = v15;
  LODWORD(STACK[0x588]) = v13 ^ (v9 - 333659870) ^ v11 ^ v15;
  STACK[0x330] = STACK[0x348];
  JUMPOUT(0x1000CCC9CLL);
}

uint64_t sub_1000CCCA4@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  STACK[0x358] = v5;
  LODWORD(STACK[0x438]) = 0;
  LODWORD(STACK[0x3F0]) = v14 - v7;
  LODWORD(STACK[0x3F4]) = v11 + ((a5 - 2010) ^ (a5 - 930) ^ 0x3BDCC673);
  LODWORD(STACK[0x3FC]) = v6 + a4 - 1589807827;
  LODWORD(STACK[0x410]) = v8 + v13 - 1505105975;
  LODWORD(STACK[0x3F8]) = (((a3 ^ 0x1C4D19AF) - 474814895) ^ ((a3 ^ 0x4FD54AD4) - 1339378388) ^ ((a3 ^ 0x8F48F808) + 1891043320)) - v15 - 399201198;
  LODWORD(STACK[0x3E8]) = v17 + 1668384471;
  LODWORD(STACK[0x40C]) = v16 + a1 - 1955212092;
  LODWORD(STACK[0x3D8]) = a2;
  LODWORD(STACK[0x408]) = a2 + ((55 - a2) & 0x3F) + 9;
  v18 = *(v12 + 8 * (a5 ^ (862 * (STACK[0x420] & 1))));
  LODWORD(STACK[0x370]) = v10;
  LODWORD(STACK[0x3E0]) = v10;
  return v18((v9 - 62195251));
}

uint64_t sub_1000CCE94(uint64_t a1)
{
  v4 = (*(v3 + 8 * (v2 + 644)))(a1, 3222665066);
  *v1 = v4;
  return (*(v3 + 8 * (((v4 == 0) * (((2 * v2) ^ 0x5CE4) + ((v2 + 845855968) & 0xCD952FFF) - 10919)) ^ v2)))();
}

uint64_t sub_1000CCF5C(int a1)
{
  v5 = *(v2 + 40);
  STACK[0x2C8] = v2;
  v6 = *(v2 + 8);
  *(v3 - 140) = a1 ^ 0x1267;
  *(v3 - 112) = veorq_s8(*v5, xmmword_1003EAE20);
  *(v3 - 152) = v4;
  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = *(v1 + 8 * (((2 * v8) | (4 * v8)) ^ a1));
  *(v3 - 144) = -42900;
  return v9();
}

uint64_t sub_1000CD11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22)
{
  v28 = 1875091903 * ((v22 & 0x6F4E0E99 | ~(v22 | 0x6F4E0E99)) ^ 0xA6C472E5);
  a22 = a14;
  a20 = (v25 ^ 0xFE5DB6AE) + ((2 * v25) & 0xFCBB6D5C) + 566165500 + v28;
  LODWORD(a21) = v27 + 4248 + v28;
  (*(v26 + 8 * (v27 + 6169)))(&a19);
  a21 = v24 + 956911519 * ((v22 - 2 * (v22 & 0x7A8DF182866035E5) + 0x7A8DF182866035E5) ^ 0x3FBB845E6CF145E0) - (((v27 - 2400) + 0x39AD4E2AD03EBD64) & (2 * v24)) - 0x632958EA97E09F34;
  a22 = a14;
  a19 = (v27 - 2454) ^ (956911519 * ((v22 - 2 * (v22 & 0x866035E5) - 2040515099) ^ 0x6CF145E0));
  (*(v26 + 8 * (v27 + 6123)))(&a19);
  v29 = 1875091903 * ((v22 - 206091250 - 2 * (v22 & 0xF3B74C0E)) ^ 0xC5C2CF8D);
  a22 = a14;
  a20 = (v23 ^ 0x227EBFAF) + ((2 * v23) & 0x44FD7F5E) - 39979269 + v29;
  LODWORD(a21) = v27 + 4248 + v29;
  v30 = (*(v26 + 8 * (v27 ^ 0x2839)))(&a19);
  return (*(v26 + 8 * ((11825 * (a19 == 16257999)) ^ v27)))(v30);
}

uint64_t sub_1000CD3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, uint64_t a18, uint64_t a19)
{
  v24 = 1875091903 * (((&a15 ^ 0xC8B56B07) & 0xCDD1B12B | ~(&a15 ^ 0xC8B56B07 | 0xCDD1B12B)) ^ 0xCCEEA650);
  a18 = a11;
  a16 = (v21 ^ 0x2E5EF6BF) + ((2 * v21) & 0x5CBDED7E) - 239222805 + v24;
  a17 = v24 + v23 + 3021;
  (*(v22 + 8 * (v23 ^ 0x37F2)))(&a15);
  v25 = 1824088897 * ((2 * (&a15 & 0x7F9C64C0) - &a15 - 2140955843) ^ 0xD80A485F);
  a18 = v19;
  a19 = a11;
  a17 = (v20 ^ 0xCFEEFEEA) - v25 + v23 - 1333 + (((4 * (v23 ^ 0x16C9)) ^ 0x9FDDEF8C) & (2 * v20)) + 2125848182;
  a15 = v25 + v23 - 946;
  v26 = (*(v22 + 8 * (v23 + 4928)))(&a15);
  return (*(v22 + 8 * ((1839 * (a16 == 16257999)) ^ v23)))(v26);
}

uint64_t sub_1000CD6C8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  LODWORD(STACK[0x370]) = a1 + 4;
  STACK[0x3B0] = STACK[0x7C0] + 24;
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0xA14]) ^ 0xD6A561FA;
  v57 = LOWORD(STACK[0xA0E]);
  LODWORD(STACK[0x360]) = v57;
  LODWORD(STACK[0x340]) = v57 ^ 0x4CF9;
  STACK[0x3A0] = STACK[0x690] + 24;
  v58 = LOWORD(STACK[0xADE]);
  LODWORD(STACK[0x350]) = v58;
  LODWORD(STACK[0x330]) = v58 ^ 0xFFFFA60A;
  LODWORD(STACK[0x2C0]) = LODWORD(STACK[0xAE4]) ^ 0xD6A561FA;
  STACK[0x390] = STACK[0x7F0] + 24;
  STACK[0x380] = STACK[0x768] + 24;
  v59 = STACK[0xA10];
  LODWORD(STACK[0x300]) = STACK[0xA10];
  LODWORD(STACK[0x320]) = v59 ^ 0xD6A561FA;
  v60 = STACK[0xAE0];
  LODWORD(STACK[0x2F0]) = STACK[0xAE0];
  LODWORD(STACK[0x310]) = v60 ^ 0xD6A561FA;
  LODWORD(STACK[0x2E0]) = v56 - 4372;
  return sub_10008B450(0x5963B6C555D97F1FLL, 0x2A5638492DD55EAELL, 169, 0xEAD4E3DB691550A9, 0x4C48AAE1C333D048, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, 0x5EA5347A8335DC6CLL, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1000CD9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v4);
  return sub_1001B36F0(a4, v5);
}

uint64_t sub_1000CDA18@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0x760] + 24);
  v2 = __ROR8__((v1 + 10) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v3 = __ROR8__(v2 ^ 0x49E9423B6F16E7D2, 8);
  v2 ^= 0xE1AFA7ACF6E0968ELL;
  v4 = (v3 + v2) ^ 0xE49D77DF873DBF7ELL;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0xF5A2F1B9B5D0B209;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (v8 + v7 - ((2 * (v8 + v7)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x61459D2AF01F24F7;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((a1 + 1795111658) & 0x9500D6FF) + 0x32B9C33CFFC0B970) ^ STACK[0x948];
  v15 = (((v13 + v12) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v13 + v12) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v16 = v15 ^ __ROR8__(v12, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x1A2AEBE44253AF03;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = *(STACK[0x3E8] + 8 * a1);
  v1[10] = (((((2 * (v19 + v18)) | 0xC38C36871CFCF294) - (v19 + v18) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v1 + 10) & 7u))) ^ HIBYTE(v14) ^ 0x75;
  v21 = __ROR8__((v1 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = v21 - ((2 * v21 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v23 = v22 ^ 0xD3FC8BFDA5C15E5;
  v22 ^= 0xA5792D2843AA64B9;
  v24 = __ROR8__(v23, 8);
  v25 = (((2 * (v24 + v22)) & 0x172EA68DBB7EC94) - (v24 + v22) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v26 = v25 ^ __ROR8__(v22, 61);
  v27 = __ROR8__(v25, 8);
  v28 = __ROR8__((((2 * (v27 + v26)) & 0xD4F2B43A3958542) - (v27 + v26) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57, 8);
  v29 = (((2 * (v27 + v26)) & 0xD4F2B43A3958542) - (v27 + v26) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57 ^ __ROR8__(v26, 61);
  v30 = (v28 + v29) ^ 0x5963B6C555D97F1FLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) | 0x3A57A17B6EDF06BLL) - ((v32 + v31) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x64C31C027084DE6CLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((v37 + v36) | 0x3F31863D75651161) - ((v37 + v36) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v1[11] = (((((2 * (v40 + v39)) | 0xAB41BFF64D60CE6CLL) - (v40 + v39) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v1 + 11) & 7u))) ^ BYTE6(v14) ^ 0x30;
  v41 = (__ROR8__((v1 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v42 = __ROR8__(v41 ^ 0x4DE9423B6F16E7D2, 8);
  v41 ^= 0xE5AFA7ACF6E0968ELL;
  v43 = (v42 + v41 - ((2 * (v42 + v41)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((v45 + v44) | 0x2D1013F9AFD52057) - ((v45 + v44) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x5963B6C555D97F1FLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (v50 + v49 - ((2 * (v50 + v49)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x64C31C027084DE6CLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x1A2AEBE44253AF03;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v1[12] = (((((2 * (v57 + v56)) & 0xA6AF603E61524BD2) - (v57 + v56) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v1 + 12) & 7u))) ^ BYTE5(v14) ^ 0x26;
  v58 = __ROR8__((v1 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = ((2 * (v58 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v58 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v60 = v59 ^ 0x1780DE40BC839FA3;
  v59 ^= 0xBFC63BD72575EEFFLL;
  v61 = __ROR8__(v60, 8);
  v62 = (((v61 + v59) | 0x524D786A2DAA5236) - ((v61 + v59) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v63 = v62 ^ __ROR8__(v59, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) | 0xC461725543BD74EALL) - (v64 + v63) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x5963B6C555D97F1FLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x61459D2AF01F24F7;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((v71 + v70) | 0xD6A77E9273FF605BLL) - ((v71 + v70) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (v74 + v73 - ((2 * (v74 + v73)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v1[13] = (((__ROR8__(v75, 8) + (v75 ^ __ROR8__(v73, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v1 + 13) & 7u))) ^ BYTE4(v14) ^ 0x9B;
  v76 = __ROR8__((v1 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = v76 - ((2 * v76 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v78 = v77 ^ 0x59C38B8127975FAELL;
  v77 ^= 0xF1856E16BE612EF2;
  v79 = (__ROR8__(v78, 8) + v77) ^ 0xE49D77DF873DBF7ELL;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xF5A2F1B9B5D0B209;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x5963B6C555D97F1FLL;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = __ROR8__((v85 + v84 - ((2 * (v85 + v84)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL, 8);
  v87 = (v85 + v84 - ((2 * (v85 + v84)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL ^ __ROR8__(v84, 61);
  v88 = (v86 + v87 - ((2 * (v86 + v87)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x1A2AEBE44253AF03;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v1[14] = (((((v92 + v91) | 0x6B6AF9C6B406ECE7) - ((v92 + v91) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v1 + 14) & 7u))) ^ BYTE3(v14) ^ 0xB0;
  v93 = __ROR8__((v1 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v94 = ((v93 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v93 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v93 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v95 = v94 ^ 0x8A84C36C7E52240;
  v94 ^= 0xA0EEA9A15E13531CLL;
  v96 = (__ROR8__(v95, 8) + v94) ^ 0xE49D77DF873DBF7ELL;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xF5A2F1B9B5D0B209;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = __ROR8__((((2 * (v100 + v99)) & 0x7EC0B560615BD22) - (v100 + v99) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71, 8);
  v102 = (((2 * (v100 + v99)) & 0x7EC0B560615BD22) - (v100 + v99) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71 ^ __ROR8__(v99, 61);
  v103 = (((v101 + v102) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v101 + v102) ^ 0xFE51A922A5729599) - (((v101 + v102) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((2 * (v105 + v104)) | 0x81910D2EFE6F15ACLL) - (v105 + v104) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((v108 + v107) | 0x452FEAF2D8983268) - ((v108 + v107) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = __ROR8__(v109, 8);
  v1[15] = (((v111 + v110 - ((2 * (v111 + v110)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v1 + 15) & 7u))) ^ BYTE2(v14) ^ 0x93;
  v112 = __ROR8__((v1 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v113 = -2 - (((0x6AF7234D0CC131D4 - v112) | 0xB9373BCC9E95648DLL) + ((v112 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v114 = v113 ^ 0xF0DE79F7F183835FLL;
  v113 ^= 0x58989C606875F203uLL;
  v115 = (__ROR8__(v114, 8) + v113) ^ 0xE49D77DF873DBF7ELL;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xF5A2F1B9B5D0B209;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x5963B6C555D97F1FLL;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((2 * (v121 + v120)) & 0x24C3B6EDA515D42ALL) - (v121 + v120) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((v124 + v123) | 0x3A521DF821A27A3ELL) - ((v124 + v123) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x1A2AEBE44253AF03;
  v128 = __ROR8__(v127, 8);
  v129 = __ROR8__(v126, 61);
  LOBYTE(v126) = (((((2 * (v128 + (v127 ^ v129))) | 0x4D724CAE0D8F11E6) - (v128 + (v127 ^ v129)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2uLL) >> (8 * ((v1 + 16) & 7u))) ^ BYTE1(v14) ^ 0x97;
  v130 = __ROR8__((v1 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v1[16] = v126;
  v131 = ((2 * ((v130 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v130 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v132 = v131 ^ 0xDE90BDF0289CA71;
  v131 ^= 0xA5AFEE489B7FBB2DLL;
  v133 = __ROR8__(v132, 8);
  v134 = (((2 * (v133 + v131)) | 0x692CEF71A0CBBC0ELL) - (v133 + v131) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v135 = v134 ^ __ROR8__(v131, 61);
  v136 = __ROR8__(v134, 8);
  v137 = __ROR8__((((2 * (v136 + v135)) & 0xFD81E0C09A12569ALL) - (v136 + v135) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v138 = (((2 * (v136 + v135)) & 0xFD81E0C09A12569ALL) - (v136 + v135) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v135, 61);
  v139 = (v137 + v138) ^ 0x5963B6C555D97F1FLL;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x61459D2AF01F24F7;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (v143 + v142 - ((2 * (v143 + v142)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (v146 + v145 - ((2 * (v146 + v145)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v1[17] = (((__ROR8__(v147, 8) + (v147 ^ __ROR8__(v145, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v1 + 17) & 7u))) ^ v14 ^ 8;
  return v20();
}

uint64_t sub_1000CE9D4()
{
  v1 = STACK[0x248];
  STACK[0x288] = v0;
  return v1();
}

uint64_t sub_1000CEA24@<X0>(unsigned int a1@<W8>, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  *a2 = a9;
  if (a4)
  {
    v16 = a15 == ((a1 - 1929705746) & 0x1304DFB3 ^ 0xBB3);
  }

  else
  {
    v16 = 1;
  }

  v18 = v16 || a5 == 0;
  return (*(v15 + 8 * ((v18 * ((a1 + 742242934) & 0x13C2377C ^ 0x1757)) ^ a1)))();
}

uint64_t sub_1000CEAB0(uint64_t a1)
{
  v6 = *(v3 + 336);
  v7 = (v4 ^ 0x3D3) + *(a1 + 4) - v1 + 92613343;
  if (v6 > 0xDA137BF1 != v7 < 0x25EC840E)
  {
    v8 = v6 > 0xDA137BF1;
  }

  else
  {
    v8 = v6 + 636257294 > v7;
  }

  return (*(v2 + 8 * (((2 * ((v5 ^ v8) & 1)) & 0xF7 | (8 * ((v5 ^ v8) & 1))) ^ v4)))();
}

uint64_t sub_1000CEB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 + 82) | 0x13) ^ 0xBCC)) ^ v3)))();
}

uint64_t sub_1000CEC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 16257999)
  {
    v75 = STACK[0x568];
    v76 = *(STACK[0x568] + 8);
    v77 = STACK[0x768];
    v77[1] = v76;
    *v77 = *v75;
    return (*(v71 + 8 * (((v76 != 0) * (v73 - 14829 + (v73 ^ 0x35A0))) ^ (v73 - 1771))))();
  }

  else
  {
    if (v72 != 16215947)
    {
      JUMPOUT(0x1000CEBD4);
    }

    return (*(v71 + 8 * (((*(STACK[0x730] + 8) != 0) * ((a71 - 1705) ^ (a71 - 1720))) ^ (a71 + 1292))))();
  }
}

uint64_t sub_1000CEED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v24 = (&a14 ^ v19) * v20;
  a18 = 1032869496 - v24;
  a19 = v24 + v23 + 1674577092;
  a16 = a9;
  a17 = &a11;
  a15 = v24 - 2048112905;
  v25 = (*(v21 + 8 * (v23 + 7586)))(&a14);
  return (*(v21 + 8 * (((((v23 + 9) ^ (a14 == v22)) & 1) * (((v23 + 182) | 0x42) - 280)) ^ (v23 + 999))))(v25);
}

uint64_t sub_1000CEF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * ((((2 * &a17) | 0xB7E861B2) - &a17 - 1542729945) ^ 0xEBF7A8AF) + 8154;
  a17 = &a15;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((97 * (a18 == v21)) | v19)))(v22);
}

uint64_t sub_1000CF0D8@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x370] = *(v3 + 8 * v2);
  STACK[0x8D8] = 0;
  return (*(v3 + 8 * (((STACK[0x8D8] < 0x20) * (a2 - 7322)) | a2)))(0x36271F876B115606, 0x832330CE2ACA7050, a1, 0x4DF528F2B3CBD6CCLL, 0x59056B86A61A1499, 0x66DD43F3C36B86, 0x43E0E1A1BF0A5C84, 1355549129);
}

uint64_t sub_1000CF1D8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = (*(v5 + 8 * (v4 ^ 0x2382)))(*(a2 + 4), 26, a1, v3, a1, va);
  return (*(v5 + 8 * ((3253 * (v4 + (v6 ^ 0xCDF93BEF) + ((2 * v6) & 0x9BF277DE) == -839302601)) ^ v4)))();
}

uint64_t sub_1000CF2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((&a14 & 0xC2F71730 | ~(&a14 | 0xC2F71730)) ^ 0x8D0B70B9) + 8154;
  a14 = &a9;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((10097 * (a15 == v17)) ^ v18)))(v19);
}

uint64_t sub_1000CF458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v4 - 204776835) & 0x90DEB987 ^ 0xFFFFFFFFFFFFEE79) + v3;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((963 * (v6 == 0)) ^ (v2 + v4 + 2089))))();
}

uint64_t sub_1000CF4BC@<X0>(int a1@<W8>)
{
  v6 = *v4;
  STACK[0x918] = *(v5 + 8 * a1);
  STACK[0x6D0] = v6;
  LODWORD(STACK[0x6CC]) = v3;
  STACK[0x448] = v1;
  return (*(v5 + 8 * (((v1 == 0) * (((v2 - 4852) | 0x1328) ^ 0x3D53)) ^ (v2 - 3498))))();
}

uint64_t sub_1000CF50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x360];
  if (LODWORD(STACK[0x360]) == 17168)
  {
    return (*(a72 + 8 * ((a71 - 3363) ^ (6594 * (LODWORD(STACK[0x300]) == LODWORD(STACK[0x370]))))))();
  }

  if (v72 == 20706)
  {
    return (*(a72 + 8 * ((215 * ((((a71 - 5465) ^ (LODWORD(STACK[0xA50]) == 197499227)) & 1) == 0)) ^ (a71 - 3404))))();
  }

  if (v72 != 33980)
  {
    JUMPOUT(0x1000CF6B0);
  }

  return (*(a72 + 8 * ((124 * (STACK[0xA60] != ((STACK[0xA60] << ((a71 + 68) ^ 0xEu)) & 0xDCE86D8E))) ^ (a71 - 1684))))();
}

uint64_t sub_1000CF648()
{
  if (v1 == 16257999)
  {
    v4 = STACK[0x5A8];
    v5 = *(STACK[0x5A8] + 8);
    v6 = STACK[0x7B0];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * ((222 * ((((v0 - 2899) ^ (v5 == 0)) & 1) == 0)) ^ (v0 - 2417))))();
  }

  else if (v1 == 16215947)
  {
    return (*(v2 + 8 * (((*(STACK[0x6E8] + 8) == 0) * ((v0 + 397) ^ (1622 * (v0 ^ 0x17CF)) ^ 7)) ^ (v0 - 915))))();
  }

  else
  {
    return (*(v2 + 8 * ((*(STACK[0x7B0] + 24) == 0) ^ (v0 + 433))))();
  }
}

uint64_t sub_1000CF720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  STACK[0x390] = *(v40 + 24);
  v45 = (v38 - 1047) | 0x1001u;
  STACK[0x3B0] = v45;
  return (*(v44 + 8 * (v38 ^ (((v42 ^ v39) < 8) | (16 * ((v42 ^ v39) < 8))))))((((v38 + 1508) + 0x3FE7DFB718DD9EF2) ^ v43 ^ v45) + ((2 * v43) & 0x31BB4EF8) - 0x3FE7DFB718DDA77CLL, 0x817DC7D3C629B1F2, a3, a4, 0x9508DCB2F33ECE2BLL, 0x8BBA1DD6A2E83279, v41, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, v40, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1000CF888()
{
  v3 = (*(v2 + 8 * (v0 + 3784)))(112, v1);
  v4 = STACK[0x330];
  STACK[0x3C0] = v3;
  return (*(v4 + 8 * (((((v0 + 1) ^ (v3 == 0)) & 1) * (((v0 - 1288361691) & 0x4CCAD5F6) - 5562)) ^ v0)))();
}

uint64_t sub_1000CF8F0@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return sub_1001B6610();
}

uint64_t sub_1000CF914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18)
{
  a18 = **(v18 + 8 * (v21 & 0xD0688E2F));
  a17 = v21 + 1710126949 * (&a17 ^ 0x321B5B90) + 4281;
  v22 = (*(v19 + 8 * (v21 ^ 0x34C8)))(&a17);
  return (*(v19 + 8 * (((*v20 == 113) * ((((v21 - 376824220) & 0x1675D5FE) + 1023) ^ 0x207)) ^ v21)))(v22);
}

uint64_t sub_1000CF9B0()
{
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(v0 + 8 * (((16 * v4) | (32 * v4)) ^ 0x225Bu)))();
}

uint64_t sub_1000CF9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, int a23, unsigned int a24)
{
  a24 = v24 + 1317436891 * (((&a22 | 0x7C041EB) - &a22 + (&a22 & 0xF83FBE10)) ^ 0xB7C3D99D) + 3548;
  a22 = &a19;
  v27 = (*(v25 + 8 * (v24 + 5031)))(&a22);
  return (*(v25 + 8 * (((a23 == v26 + ((v24 + 2003987447) & 0x888D8F6F) + 1254) * (v24 - 3622)) ^ v24)))(v27);
}

uint64_t sub_1000CFA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x558];
  v74 = STACK[0xAC8];
  v75 = 1824088897 * ((((v72 - 232) | 0x61143461) - ((v72 - 232) & 0x61143461)) ^ 0x397DE703);
  *(v72 - 200) = STACK[0x4B0];
  *(v72 - 192) = v73;
  *(v72 - 212) = 744414361 - v75 + a71;
  *(v72 - 208) = 1461241534 - v75;
  *(v72 - 216) = v75 - 1304320635;
  *(v72 - 224) = v74;
  v76 = (*(a72 + 8 * (a71 + 3618)))(v72 - 232);
  v77 = *(v72 - 232);
  LODWORD(STACK[0x94C]) = v77;
  return (*(a72 + 8 * (((v77 == 16257999) * ((185 * (a71 ^ 0x17C7)) ^ (a71 - 5315))) ^ (a71 + 798))))(v76);
}

uint64_t sub_1000CFB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v43 = ((a8 ^ 0xDAA) - 992) | 0xA0;
  *(a42 + 32) = *(v42 - 224) + v43 - ((2 * *(v42 - 224)) & 0xD1AD73C4) - 388582339;
  v44 = *(v42 - 220);
  v45 = 1358806181 * ((((v42 - 192) | 0x51D6BFA2) - ((v42 - 192) & 0x51D6BFA2)) ^ 0x6EF9D321);
  v46 = v45 + *(v42 - 236) - ((2 * *(v42 - 236)) & 0x8C601578) - 969930052;
  *(v42 - 192) = (1715190827 * BYTE1(v44) + 1851451937) ^ v45;
  *(v42 - 188) = (v43 - 1310 + 2089713731 * HIBYTE(v44) + 1964379268) ^ v45;
  *(v42 - 168) = a42;
  *(v42 - 180) = v45 + v43 + 1289038413;
  *(v42 - 176) = v46;
  *(v42 - 184) = v45 + BYTE2(v44) - ((v44 >> 15) & 0x124) + 443781778;
  v47 = (*(a7 + 8 * (v43 + 8262)))(v42 - 192);
  *a42 = 97;
  return sub_100103D6C(v47);
}

uint64_t sub_1000CFC20@<X0>(int a1@<W8>)
{
  v2 = STACK[0x508];
  STACK[0x478] = *(v1 + 8 * a1);
  return sub_1000B71E0(v2);
}

uint64_t sub_1000CFC4C@<X0>(uint64_t a1@<X8>)
{
  v6 = ((((v4 + 3260) | 0xE00u) - 7843) ^ v3) + v2;
  *(a1 - 7 + v6) = vadd_s8(vsub_s8(*(v1 - 7 + v6), vand_s8(vadd_s8(*(v1 - 7 + v6), *(v1 - 7 + v6)), 0x7878787878787878)), 0x3C3C3C3C3C3C3C3CLL);
  return (*(v5 + 8 * ((2037 * ((v2 & 0x78) - 8 == v3)) ^ v4)))();
}

void sub_1000CFCB8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x280] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x290] = vdupq_n_s64(0x38uLL);
  *&STACK[0x260] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x270] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x240] = vdupq_n_s64(v4);
  *&STACK[0x250] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x220] = vdupq_n_s64(v6);
  *&STACK[0x230] = vdupq_n_s64(v5);
  *&STACK[0x200] = vdupq_n_s64(a2);
  *&STACK[0x210] = vdupq_n_s64(a1);
  *&STACK[0x2D0] = vdupq_n_s64(a4);
  *&STACK[0x2E0] = vdupq_n_s64(a3);
  *&STACK[0x2C0] = xmmword_1003EAE50;
  JUMPOUT(0x1000CFE58);
}

uint64_t sub_1000D0B00@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v11 = v6 + 32;
  v12 = (((v7 ^ v4) + v9) ^ v11) + v5;
  v13 = *(a3 + v12 - 15);
  v14 = *(a3 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v8 != v11) * a2) ^ (v3 + v7 + 1143))))();
}

uint64_t sub_1000D0B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v19 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v20 = vdupq_n_s64(0x38uLL);
  v21 = vdupq_n_s64(a5);
  v22 = vdupq_n_s64(v17);
  v23 = vdupq_n_s64(a6);
  v24 = -a1;
  v25 = vdupq_n_s64(v11);
  v26 = vdupq_n_s64(v15);
  v27 = v7 + v9 + v18;
  v28 = v10 + v16 - a1 + 3;
  v29 = vdupq_n_s64(v13);
  v30 = vdupq_n_s64(v12);
  v31 = vdupq_n_s64(v8);
  v32 = vdupq_n_s64(v14);
  v33 = vdupq_n_s64(a7);
  v34 = vdupq_n_s64(0xF2620266DFD8DE82);
  v35 = vdupq_n_s64(0x5C3E923DC79C4710uLL);
  v36 = vdupq_n_s64(0x2E1F491EE3CE2388uLL);
  v37 = vdupq_n_s64(0x97A1B9D365930275);
  v38 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v39 = vdupq_n_s64(0x93BA3B681E438AC2);
  v40 = vdupq_n_s64(0x3622E24BF0DE3A9EuLL);
  v41 = vdupq_n_s64(0x3102FDB0D852CBCuLL);
  v42.i64[0] = v27 + v28 + ((a3 - 4344) ^ 0xFFFFFFFFFFFFF74ALL) + 4;
  v42.i64[1] = v27 + v28 - 4;
  v43.i64[0] = v27 + v28 + 3;
  v43.i64[1] = v27 + v28 + 2;
  v44.i64[0] = v27 + v28 + 1;
  v44.i64[1] = v27 + v28;
  v45.i64[0] = v27 + v28 - 1;
  v45.i64[1] = v27 + v28 - 2;
  v46 = vandq_s8(v45, v19);
  v47 = vandq_s8(v44, v19);
  v48 = vandq_s8(v43, v19);
  v49 = vandq_s8(v42, v19);
  v50 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v21);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v21);
  v54 = veorq_s8(v53, v22);
  v55 = veorq_s8(v52, v22);
  v56 = veorq_s8(v52, v23);
  v57 = veorq_s8(v53, v23);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v59, v59), v25), v59), v26), v29);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), v25), v58), v26), v29);
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v63 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v60, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = vaddq_s64(v65, v63);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v30), vorrq_s8(v66, v31)), v31), v32);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, v30), vorrq_s8(v67, v31)), v31), v32);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v70), v33);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71), v33);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v34);
  v80 = veorq_s8(v78, v34);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = vaddq_s64(v84, v82);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(v86, vandq_s8(vaddq_s64(v86, v86), v35)), v36), v37);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(v85, vandq_s8(vaddq_s64(v85, v85), v35)), v36), v37);
  v89 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = veorq_s8(vaddq_s64(v92, v90), v38);
  v95 = veorq_s8(v93, v38);
  v96 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v94, v96);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v101 = vaddq_s64(v51, v21);
  v102 = vaddq_s64(v100, v98);
  v103 = vaddq_s64(v99, v97);
  v140.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), v39), v102), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v20)));
  v140.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), v39), v103), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v20)));
  v104 = veorq_s8(v101, v22);
  v105 = veorq_s8(v101, v23);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), v25), v106), v26), v29);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v30), vorrq_s8(v109, v31)), v31), v32);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v33);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v34);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(v116, vandq_s8(vaddq_s64(v116, v116), v35)), v36), v37);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v38);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL)));
  v121 = vaddq_s64(v50, v21);
  v140.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), v39), v120), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v20)));
  v122 = veorq_s8(v121, v22);
  v123 = veorq_s8(v121, v23);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), v25), v124), v26), v29);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v30), vorrq_s8(v127, v31)), v31), v32);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v33);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v34);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(v134, vandq_s8(vaddq_s64(v134, v134), v35)), v36), v37);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v38);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL)));
  v140.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v138, v138), v39), v138), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v20)));
  *v42.i64[1] = vrev64_s8(*&vqtbl4q_s8(v140, xmmword_1003EAE30));
  return (*(STACK[0x3E8] + 8 * ((15604 * (v24 == 8 - (v16 & 0xFFFFFFF8))) ^ a3)))();
}

uint64_t sub_1000D1130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = ((2 * (a7 + 4)) & 0xEAA939CELL) + ((a7 + 4) ^ 0x7FFBC69D75549CE7) + STACK[0x5A8] - 0x7FFBC69D75549CE7;
  v29 = __ROR8__(v28 & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = v29 - ((2 * v29 + 0x2D1FA1F3BF05E3C6) & 0x75C00D07A8167688) - 0x6E9028824C71D2D9;
  v31 = v30 ^ 0xBBFDD7D6D5C2B1ALL;
  v30 ^= 0xBFC15AB3914BA400;
  v32 = (__ROR8__(v31, 8) + v30) ^ 0x8174304F61371433;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x48DE3944125A0254;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v27;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (((2 * ((v37 + v38) ^ 0x447529156CDBD5D4)) & 0x50AFE6D689874340) - ((v37 + v38) ^ 0x447529156CDBD5D4) + 0x57A80C94BB3C5E5FLL) ^ 0xE1BF27E7083F5509;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((v41 + v40) | 0x4EC3C0C8DA61D2DELL) - ((v41 + v40) | 0xB13C3F37259E2D21) - 0x4EC3C0C8DA61D2DFLL) ^ 0xF77D30055C3CF323;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x6E1E19DDB33CB23ALL;
  v45 = __ROR8__(v44, 8);
  v46 = __ROR8__(v43, 61);
  v47 = ((((2 * ((v45 + (v44 ^ v46)) ^ 0x111389794E5CD960)) & 0xA61BA91267C30EB0) - ((v45 + (v44 ^ v46)) ^ 0x111389794E5CD960) + 0x2CF22B76CC1E78A7) ^ 0x8D36F9F7F19B7E5) >> (8 * ((((2 * (a7 + 4)) & 0xCE) + ((a7 + 4) ^ 0xE7) + STACK[0x5A8] + 25) & 7));
  v48 = ((2 * (a7 + 4)) & 0xEAA939CELL) + ((a7 + 4) ^ 0x7FFBC69D75549CE7) + STACK[0x5A8] - 0x7FFBC69D75549CE6;
  v49 = __ROR8__(v48 & 0xFFFFFFFFFFFFFFF8, 8);
  v50 = v47 ^ 0x50;
  v51 = v49 - ((2 * v49 + 0x2D1FA1F3BF05E3C6) & 0x2875D5762F87DD10) + 0x6ACABBB4F746E06BLL;
  v52 = __ROR8__(v51 ^ 0x25653145AE94FED6, 8);
  v51 ^= 0x911BB68B528371CCLL;
  v53 = (v52 + v51 - ((2 * (v52 + v51)) & 0xC657C0CE72972608) + 0x632BE067394B9304) ^ 0xE25FD028587C8737;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (v55 + v54 - ((2 * (v55 + v54)) & 0x958C21846DDD45EELL) + 0x4AC610C236EEA2F7) ^ 0x218298624B4A0A3;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v27;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xF2620266DFD8DE82;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xB9BEF0CD865D21FDLL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0x6E1E19DDB33CB23ALL;
  v65 = __ROR8__(v64, 8);
  v66 = __ROR8__(v63, 61);
  return sub_1001CF604(STACK[0x5A8], 0x48DE3944125A0254, v28, v48, v50, (((v65 + (v64 ^ v66) - ((2 * (v65 + (v64 ^ v66))) & 0x8FAC96AE910F30DALL) + 0x47D64B574887986DLL) ^ 0x72E486C7B5DC8E4FLL) >> (8 * ((((2 * (a7 + 4)) & 0xCE) + ((a7 + 4) ^ 0xE7) + STACK[0x5A8] + 26) & 7))) ^ 0xFFFFFFDB, STACK[0x5A8], (a7 ^ 0x7F3F19F7CFFFFCFELL) - 0x10918460008D434 + ((2 * a7) & 0x19FFFF9FCLL), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1000D1138@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v8 = STACK[0x6D0];
      STACK[0x470] = *(v3 + 8 * (v2 - 6046));
      return sub_1001ADDE4(v8);
    case 3:
      v6 = *(a1 + 40 * v1 + 16);
      v7 = ((v6 << (29 * (v2 ^ 0xCE) + 112)) & 0xBE5B5FAE3FFF79D2) + (v2 ^ 0xDF2DAFD71FFFAB22 ^ v6) != 0xDF2DAFD71FFFBCE9;
      return (*(v3 + 8 * (((4 * v7) | (v7 << 6)) ^ (v2 - 1836))))();
    case 2:
      return (*(v3 + 8 * (((STACK[0x6D0] != 0) * (v2 - 2014)) ^ (v2 + 52))))();
    default:
      return (STACK[0x918])();
  }
}

uint64_t sub_1000D13B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 - 1616583766) & 0x605B11FF;
  LODWORD(STACK[0x804]) = *(STACK[0x518] + 112);
  v6 = (v5 - 377) | 0x1242;
  LODWORD(STACK[0x86C]) = 16257999;
  STACK[0x6D0] = *(a4 + 8 * v5);
  STACK[0x548] = &STACK[0x470];
  v7 = STACK[0x470];
  STACK[0x870] = STACK[0x470];
  return (*(a4 + 8 * (((((v6 + 1) ^ (v7 == 0)) & 1) * (v6 ^ 0x127E)) ^ v6)))();
}

uint64_t sub_1000D1454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = *(v6 + v7 - 1 - 31);
  v11 = a1 + v7 - 1;
  *(v11 - 15) = *(v6 + v7 - 1 - 15);
  *(v11 - 31) = v10;
  return (*(v9 + 8 * ((2692 * (23 * (v8 ^ (a6 + 1199)) - 5879 == (v7 & 0xFFFFFFE0))) ^ (v8 + 1576659987))))();
}

uint64_t sub_1000D14CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 - 1529) ^ (33731311 * ((&a13 + 379730644 - 2 * (&a13 & 0x16A23AD4)) ^ 0x2F54F0F7));
  a15 = a12;
  a16 = &a10;
  (*(v18 + 8 * (v16 + 4820)))(&a13);
  a15 = a12;
  LODWORD(a16) = v16 - 2008441969 * ((((&a13 | 0x1BD7A2E2) ^ 0xFFFFFFFE) - (~&a13 | 0xE4285D1D)) ^ 0xACB10913) + 904;
  v19 = (*(v18 + 8 * (v16 + 4870)))(&a13);
  return (*(v18 + 8 * (((a13 == v17) * ((v16 + 1406824187) ^ 0x53DAB1BD)) ^ v16)))(v19);
}

void sub_1000D15F4()
{
  *&STACK[0x320] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x330] = vdupq_n_s64(0x38uLL);
  *&STACK[0x380] = vdupq_n_s64(0xF92B3AE46CD3AAB5);
  *&STACK[0x390] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x220] = vdupq_n_s64(0x6D4C51B932C554AuLL);
  *&STACK[0x300] = vdupq_n_s64(0x18849D489A333C3BuLL);
  *&STACK[0x310] = vdupq_n_s64(0xB0C278DF03C54D67);
  *&STACK[0x2E0] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x2F0] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x2C0] = vdupq_n_s64(0x953F7DAAA667EAE2);
  *&STACK[0x2D0] = vdupq_n_s64(0x2A7EFB554CCFD5C4uLL);
  *&STACK[0x2A0] = vdupq_n_s64(v0);
  *&STACK[0x2B0] = vdupq_n_s64(0xCC5CCB6FF3BE95FDLL);
  *&STACK[0x370] = vdupq_n_s64(0xCA86DFF3ED886062);
  *&STACK[0x280] = vdupq_n_s64(0x818073FB8640EE5DLL);
  *&STACK[0x290] = vdupq_n_s64(0x1ABC9006093BCFCFuLL);
  *&STACK[0x260] = vdupq_n_s64(0xF812420440F6AA64);
  *&STACK[0x270] = vdupq_n_s64(0xE238A9E002A50567);
  *&STACK[0x200] = vdupq_n_s64(0x276E05BB2EBB76F9uLL);
  *&STACK[0x210] = vdupq_n_s64(0x1DC7561FFD5AFA98uLL);
  *&STACK[0x240] = vdupq_n_s64(0x73A1B896F9C3D547uLL);
  *&STACK[0x250] = vdupq_n_s64(0xD891FA44D1448906);
  *&STACK[0x230] = xmmword_1003EAE50;
  JUMPOUT(0x1000E33C0);
}

uint64_t sub_1000D18F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W4>, uint64_t a4@<X8>)
{
  v6 = *(v4 + a4 - 16);
  v7 = (v4 + a1 - 16);
  *(v7 - 1) = *(v4 + a4 - 32);
  *v7 = v6;
  return (*(v5 + 8 * ((28 * ((a3 + a2 + 78) - (v4 & 0xFFFFFFE0) != 1000)) ^ (a2 - 2032349688))))();
}

uint64_t sub_1000D1960(int a1, uint64_t a2, int a3, int a4)
{
  LODWORD(STACK[0x428]) = a3;
  LODWORD(STACK[0x42C]) = a1;
  LODWORD(STACK[0x430]) = v5;
  LODWORD(STACK[0x424]) = v8;
  LODWORD(STACK[0x420]) = v10;
  v11 = v4 + 3432;
  v12 = STACK[0x370];
  v13 = STACK[0x438];
  v14 = v11 + v6 + 776 * (LODWORD(STACK[0x3D8]) - LODWORD(STACK[0x370]) - LODWORD(STACK[0x438]));
  v15 = v14 - (((v14 * v9) >> 32) >> 9) * a4;
  *(STACK[0x5B0] + v15) ^= 0x80u;
  v16 = (v11 - 379018183) & 0x16974A3E;
  v17 = v13 + 64 + v12 == LODWORD(STACK[0x408]);
  LODWORD(STACK[0x57C]) = v16;
  v18 = *(v7 + 8 * ((v17 * (v16 ^ 0x3584)) ^ v11));
  LODWORD(STACK[0x438]) = v13 + 64;
  return v18();
}

uint64_t sub_1000D1ADC()
{
  v2 = STACK[0x8EC];
  STACK[0x740] -= 80;
  return (*(v1 + 8 * (((v2 == 16257999) * (v0 - 6014)) ^ (v0 - 911))))();
}

uint64_t sub_1000D1B5C(unint64_t a1, int a2)
{
  v5 = LODWORD(STACK[0x350]);
  if (v5 == 17168)
  {
    return (*(v3 + 8 * ((v4 - 4214) ^ (216 * (v2 == a2 + 4)))))();
  }

  if (v5 == 20706 || v5 == 33980)
  {
    STACK[0x720] = a1;
  }

  return (STACK[0x458])();
}

uint64_t sub_1000D1C54@<X0>(unint64_t a1@<X0>, __int16 a2@<W8>)
{
  STACK[0x500] = a1;
  LODWORD(STACK[0xB18]) = v5;
  LOWORD(STACK[0xB1E]) = a2;
  LODWORD(STACK[0xB20]) = v6;
  LODWORD(STACK[0xB24]) = v2;
  STACK[0xB28] = v4;
  STACK[0xB30] = v7;
  return (*(v8 + 8 * (((a1 == 0) * (((v3 + 1787714655) & 0x957197EB ^ 0xFFFFEBD9) + ((v3 + 1233667191) & 0xB6779BFF))) | v3)))();
}

uint64_t sub_1000D1D58@<X0>(int a1@<W8>)
{
  STACK[0x3B0] = *(v3 + 8 * v1);
  STACK[0x990] = 0;
  return (*(v3 + 8 * ((((a1 ^ (STACK[0x990] < 0x20)) & 1) * v2) ^ a1)))(1355549129, 0xAC03202F7027203, 0x5E0F8F2F207AD1BELL, 0x5BBB73835736972BLL, 177, 0x59056B86A61A1499, 0x43E0E1A1BF0A5C84, 4294967128);
}

uint64_t sub_1000D1F68@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8);
  STACK[0x648] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (a1 ^ 0x1AA ^ ((a1 ^ 0x452) - 5000) ^ 0x112C)) ^ a1 ^ 0x452)))();
}

uint64_t sub_1000D1FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 - 2899) - 1034) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((6050 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1000D2070()
{
  STACK[0x4B8] = 0;
  v2 = STACK[0x808];
  STACK[0x848] = *(v1 + 8 * v0);
  return sub_1001B02A0(v1, v2);
}

uint64_t sub_1000D20A0(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, uint64_t a45, int a46, int a47, int a48, unsigned int a49, uint64_t a50, unsigned int a51, uint64_t a52, uint64_t a53, _BYTE *a54, uint64_t a55)
{
  LODWORD(a34) = 0;
  v63 = ((v58 ^ 0x74983927 ^ ((((v57 << (a8 + 72)) ^ 0x330B2071) & v60 | v61) ^ 0x9E904CC1) & v62) & v59 | v55) ^ 0xF766A7FE;
  v64 = *(&off_100477F30 + (a8 ^ 0x17A7));
  v65 = *(v64 + 8 * (*(a11 + (((v58 ^ 0x27 ^ ((((v57 << (a8 + 72)) ^ 0x71) & v60 | v61) ^ 0xC1) & v62) & v59 | v55) ^ 0xFEu)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v66 = a40 ^ a44 ^ 0xF75B5A93 ^ (a42 << (a35 ^ 0x10));
  v67 = *(v64 + 8 * (*(a11 + BYTE1(v66)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v68 = a7 ^ 0x63B83748 ^ ((((a8 + 609397892) | 0x80C3010) ^ 0x2C940CAD) + a5) & a6;
  v69 = *(v64 + 8 * (*(a11 + v68) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v70 = a4 ^ 0x1A2BB4C5 ^ ((a2 | a33 & (((a38 ^ 0xA7AAB112) & a37 | a36) ^ 0x12F09102)) ^ 0x36C9785) & a3;
  v71 = *(v64 + 8 * (*(a11 + (a4 ^ 0xC5 ^ ((a2 | a33 & (((a38 ^ 0x12) & a37 | a36) ^ 2)) ^ 0x85u) & a3)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v72 = *(v64 + 8 * (*(a11 + BYTE2(v66)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v73 = *(v64 + 8 * (*(a11 + BYTE1(v68)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v74 = *(a11 + BYTE2(v68));
  v75 = *(a11 + BYTE1(v70));
  v76 = *(a11 + BYTE1(v63));
  v77 = *(a11 + (v63 >> 24));
  v78 = *(a11 + BYTE2(v63));
  v79 = *(a11 + (v70 >> 24));
  v80 = *(a11 + BYTE2(v70));
  v81 = *(a11 + (v68 >> 24));
  v82 = *(v64 + 8 * (v75 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v83 = (v82 >> 2) & 0x333FF76F00000000;
  v84 = ((v65 >> 2) & 0xF76F37900000 ^ v65) >> 16;
  v85 = *(v64 + 8 * (v76 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v86 = (((v67 >> 2) & 0x3FF76F37000000 ^ v67) >> 24) ^ (((v69 >> 2) & 0x333FF76F00000000 ^ v69) >> 32);
  v87 = *(v64 + 8 * (v74 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v88 = ((2 * *(v64 + 8 * (v80 ^ 0x7C))) & 0xEB86B864352E0958) + (*(v64 + 8 * (v80 ^ 0x7C)) ^ 0x75C35C321A9704ACLL);
  v89 = *(v64 + 8 * (v78 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v90 = *(v64 + 8 * (*(a11 + (v66 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v91 = *(v64 + 8 * (v79 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v87) = (((v89 >> 2) & 0xF76F37900000 ^ v89) >> 16) ^ (((v87 >> 2) & 0x333FF76F00000000 ^ v87) >> 32) ^ (((v88 >> 2) & 0x6F37908F00 ^ v88) >> 8);
  v92 = ((*(v64 + 8 * (v77 ^ 0x7C)) - ((2 * (*(v64 + 8 * (v77 ^ 0x7C)) + 0x75C35C321A9704ACLL)) & 0x79DC5A5ECELL) + 0x6F08C43413) ^ ((*(v64 + 8 * (v77 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x6F37908F00) >> 8;
  v93 = *(v64 + 8 * (*(a11 + ((a40 ^ a44) ^ 0x93u ^ (a42 << (a35 ^ 0x10)))) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v94 = *(v64 + 8 * (v81 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v95 = ((v93 >> 2) & 0xF76F37900000 ^ v93) >> 16;
  v96 = ((v94 >> 2) & 0x3FF76F37000000 ^ v94) >> 24;
  v97 = v86 ^ (((v71 >> 2) & 0x6F37908F00 ^ v71) >> 8) ^ 0x8297DD22 ^ v84;
  v98 = *(a11 + ((v86 ^ (((v71 >> 2) & 0x37908F00 ^ v71) >> 8) ^ 0xDD22 ^ v84) >> 8));
  v99 = (((v73 >> 2) & 0x3FF76F37000000 ^ v73) >> 24) ^ (((v72 >> 2) & 0xF76F37900000 ^ v72) >> 16) ^ ((v83 ^ v82) >> 32) ^ 0x1D0DD5BD ^ (((v85 >> 2) & 0x6F37908F00 ^ v85) >> 8);
  v100 = *(a11 + ((((v73 >> 2) & 0x37000000 ^ v73) >> 24) ^ (((v72 >> 2) & 0x37900000 ^ v72) >> 16) ^ ((v83 ^ v82) >> 32) ^ 0xBD ^ (((v85 >> 2) & 0x8F00 ^ v85) >> 8)));
  v101 = v87 ^ (((v90 >> 2) & 0x3FF76F37000000 ^ v90) >> 24) ^ 0x363916A6;
  v102 = v92 ^ (((v91 >> 2) & 0x333FF76F00000000 ^ v91) >> 32) ^ v95 ^ v96 ^ 0xF5F18FE2;
  v103 = *(v64 + 8 * (v98 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v104 = *(v64 + 8 * (v100 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v105 = *(v64 + 8 * (*(a11 + BYTE1(v101)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v104) = (((v104 >> 2) & 0xF76F37900000 ^ v104) >> 16) ^ (((v103 >> 2) & 0x6F37908F00 ^ v103) >> 8) ^ (((v105 >> 2) & 0x3FF76F37000000 ^ v105) >> 24);
  v106 = *(v64 + 8 * (*(a11 + v102) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v107 = *(v64 + 8 * (*(a11 + BYTE1(v99)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v108 = *(v64 + 8 * (*(a11 + BYTE2(v101)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v109 = *(v64 + 8 * (*(a11 + BYTE1(v102)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v108) = (((v108 >> 2) & 0x333FF76F00000000 ^ v108) >> 32) ^ (((v107 >> 2) & 0x3FF76F37000000 ^ v107) >> 24) ^ (((v109 >> 2) & 0x6F37908F00 ^ v109) >> 8);
  v110 = *(v64 + 8 * (*(a11 + BYTE2(v97)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v111 = *(v64 + 8 * (*(a11 + (v101 >> 24)) ^ 0x7CLL));
  v112 = *(v64 + 8 * (*(a11 + BYTE2(v102)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v113 = *(v64 + 8 * (*(a11 + (v97 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v112) = (((v112 >> 2) & 0xF76F37900000 ^ v112) >> 16) ^ ((((v111 + 0x75C35C321A9704ACLL) >> 2) & 0x6F37908F00 ^ (v111 + 0x75C35C321A9704ACLL)) >> 8) ^ (((v113 >> 2) & 0x3FF76F37000000 ^ v113) >> 24);
  v114 = *(v64 + 8 * (*(a11 + BYTE2(v99)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v115 = *(v64 + 8 * (((-*(a11 + (v102 >> 24)) ^ 0x256F2D56 ^ (191 - (*(a11 + (v102 >> 24)) ^ 0xBF)) ^ (*(a11 + (v102 >> 24)) + 628043094 - ((2 * *(a11 + (v102 >> 24))) & 0xAC))) + 191) ^ 0xC3u)) + 0x75C35C321A9704ACLL;
  v116 = *(v64 + 8 * (*(a11 + v97) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v117 = *(v64 + 8 * (*(a11 + (v99 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v118 = *(v64 + 8 * (*(a11 + v101) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v117) = (((v116 >> 2) & 0x333FF76F00000000 ^ v116) >> 32) ^ (((v117 >> 2) & 0x6F37908F00 ^ v117) >> 8);
  v119 = v104 ^ (((v106 >> 2) & 0x333FF76F00000000 ^ v106) >> 32) ^ 0x5DFDE4EF;
  v120 = *(a11 + BYTE2(v119));
  v121 = v112 ^ (((v114 >> 2) & 0x333FF76F00000000 ^ v114) >> 32) ^ 0x9B8F5264;
  v122 = v108 ^ (((v110 >> 2) & 0xF76F37900000 ^ v110) >> 16) ^ 0x6D57F711;
  v123 = v117 ^ (((v118 >> 2) & 0xF76F37900000 ^ v118) >> 16) ^ 0xDBD98496 ^ (((v115 >> 2) & 0x3FF76F37000000 ^ v115) >> 24);
  v124 = *(a11 + (v112 ^ (((v114 >> 2) & 0x333FF76F00000000 ^ v114) >> 32) ^ 0x64));
  v125 = *(a11 + BYTE1(v121));
  v126 = *(a11 + BYTE1(v123));
  v127 = *(a11 + BYTE2(v123));
  v128 = *(a11 + (v119 >> 24));
  v129 = *(a11 + (v123 >> 24));
  v130 = v98 & 0x10;
  v131 = *(a11 + BYTE2(v121));
  v132 = *(a11 + v119);
  LOBYTE(v118) = v98 & 0x10 ^ 0x10;
  v133 = *(a11 + BYTE1(v119));
  v134 = v122 >> v118;
  v135 = *(a11 + v123);
  v136 = v121 >> 24;
  v137 = v134 >> v130;
  v138 = *(v64 + 8 * (v120 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v139 = *(v64 + 8 * (*(a11 + (v122 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v140 = *(v64 + 8 * (v124 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v141 = *(v64 + 8 * (*(a11 + v122) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v142 = *(v64 + 8 * (v125 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v141) = (((v142 >> 2) & 0xF76F37900000 ^ v142) >> 16) ^ (((v141 >> 2) & 0x6F37908F00 ^ v141) >> 8);
  v143 = *(v64 + 8 * (v127 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v144 = *(v64 + 8 * (v128 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v145 = *(v64 + 8 * (v131 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v146 = *(v64 + 8 * (v129 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v147 = *(v64 + 8 * (v132 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v147) = (((v145 >> 2) & 0x333FF76F00000000 ^ v145) >> 32) ^ (((v147 >> 2) & 0xF76F37900000 ^ v147) >> 16);
  v148 = *(v64 + 8 * (*(a11 + BYTE1(v122)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v149 = *(v64 + 8 * (v135 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v150 = *(v64 + 8 * (v133 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v150) = (((v150 >> 2) & 0x6F37908F00 ^ v150) >> 8) ^ (((v149 >> 2) & 0x333FF76F00000000 ^ v149) >> 32);
  v151 = *(v64 + 8 * (*(a11 + v137) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v152 = *(v64 + 8 * (*(a11 + v136) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v150) = v150 ^ (((v151 >> 2) & 0xF76F37900000 ^ v151) >> 16);
  v153 = (((v139 >> 2) & 0xF76F37900000 ^ v139) >> 16) ^ (((v138 >> 2) & 0x6F37908F00 ^ v138) >> 8) ^ (((v140 >> 2) & 0x3FF76F37000000 ^ v140) >> 24) ^ 0xB4063E51 ^ ((((*(v64 + 8 * (v126 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000 ^ (*(v64 + 8 * (v126 ^ 0x7C)) + 0x75C35C321A9704ACLL)) >> 32);
  LODWORD(v150) = v150 ^ (((v152 >> 2) & 0x3FF76F37000000 ^ v152) >> 24);
  v154 = v141 ^ (((v144 >> 2) & 0x333FF76F00000000 ^ v144) >> 32) ^ 0x232A9428 ^ (((v143 >> 2) & 0x3FF76F37000000 ^ v143) >> 24);
  v155 = (((v146 >> 2) & 0x6F37908F00 ^ v146) >> 8) ^ v147 ^ (((v148 >> 2) & 0x3FF76F37000000 ^ v148) >> 24) ^ 0xB00CE8BC;
  v156 = *(v56 + (v150 ^ 0x54));
  v157 = v150 ^ 0x1EC96A54;
  v158 = *(v64 + 8 * (*(v56 + BYTE2(v153)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v159 = *(v64 + 8 * (*(v56 + BYTE1(v154)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v160 = *(v64 + 8 * (*(v56 + (((((v146 >> 2) & 0x37908F00 ^ v146) >> 8) ^ v147 ^ (((v148 >> 2) & 0x3FF76F37000000 ^ v148) >> 24) ^ 0xE8BC) >> 8)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v161 = *(v64 + 8 * (*(v56 + BYTE2(v154)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v162 = *(v64 + 8 * (*(v56 + BYTE2(v155)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v161) = (((v162 >> 2) & 0x333FF76F00000000 ^ v162) >> 32) ^ (((v161 >> 2) & 0x3FF76F37000000 ^ v161) >> 24);
  v163 = *(v64 + 8 * (*(v56 + BYTE1(v157)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v164 = *(v64 + 8 * (*(v56 + (v153 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v165 = ((v163 >> 2) & 0x6F37908F00 ^ v163) >> 8;
  v166 = *(v64 + 8 * (*(v56 + (v155 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v167 = ((v166 >> 2) & 0x6F37908F00 ^ v166) >> 8;
  v168 = *(v64 + 8 * (*(v56 + BYTE2(v157)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v169 = *(v64 + 8 * (*(v56 + v153) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v169) = v167 ^ (((v169 >> 2) & 0x3FF76F37000000 ^ v169) >> 24);
  v170 = ((2 * *(v64 + 8 * (*(v56 + (v154 >> 24)) ^ 0x7CLL))) & 0xEB86B864352E0958) + (*(v64 + 8 * (*(v56 + (v154 >> 24)) ^ 0x7CLL)) ^ 0x75C35C321A9704ACLL);
  v171 = *(v64 + 8 * (*(v56 + (v157 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v172 = *(v64 + 8 * (*(v56 + BYTE1(v153)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v173 = *(v64 + 8 * (*(v56 + v154) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v173) = (((v172 >> 2) & 0x6F37908F00 ^ v172) >> 8) ^ (((v173 >> 2) & 0xF76F37900000 ^ v173) >> 16);
  v174 = *(v64 + 8 * (*(v56 + v155) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v175 = v161 ^ (((v164 >> 2) & 0xF76F37900000 ^ v164) >> 16) ^ 0x9C79720B ^ v165;
  LODWORD(v174) = v173 ^ (((v174 >> 2) & 0x3FF76F37000000 ^ v174) >> 24);
  v176 = (((v158 >> 2) & 0xF76F37900000 ^ v158) >> 16) ^ ((*(v64 + 8 * (v156 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 8) ^ ((*(v64 + 8 * (v156 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 10) & 0x6F37908F ^ (((v159 >> 2) & 0x3FF76F37000000 ^ v159) >> 24) ^ (((v160 >> 2) & 0x333FF76F00000000 ^ v160) >> 32) ^ 0x24455CD9;
  v177 = *(v56 + (v175 >> 24));
  v178 = (((v168 >> 2) & 0xF76F37900000 ^ v168) >> 16) ^ v169 ^ (((v170 >> 2) & 0x333FF76F00000000 ^ v170) >> 32) ^ 0xFDDB86BC;
  v179 = *(v56 + ((((v168 >> 2) & 0x37900000 ^ v168) >> 16) ^ v169 ^ (((v170 >> 2) & 0x333FF76F00000000 ^ v170) >> 32) ^ 0xBC));
  v180 = v174 ^ 0x626E1890 ^ (((v171 >> 2) & 0x333FF76F00000000 ^ v171) >> 32);
  v181 = *(v56 + v180);
  v182 = *(v56 + BYTE2(v176));
  v183 = *(v56 + BYTE1(v178));
  v184 = *(v56 + (v176 >> 24));
  v185 = *(v56 + BYTE2(v180));
  v186 = *(v56 + v175);
  v187 = *(v56 + BYTE2(v178));
  v188 = *(v56 + BYTE1(v180));
  v189 = v180 >> 24;
  v190 = *(v56 + BYTE2(v175));
  v191 = *(v56 + BYTE1(v175));
  v192 = *(v56 + v189);
  v193 = *(v56 + v176);
  v194 = *(v64 + 8 * (*(v56 + BYTE1(v176)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v195 = *(v56 + (v178 >> 24));
  v196 = *(v64 + 8 * (v177 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v196) = (((v196 >> 2) & 0x333FF76F00000000 ^ v196) >> 32) ^ (((v194 >> 2) & 0x3FF76F37000000 ^ v194) >> 24);
  v197 = *(v64 + 8 * (v179 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v198 = *(v64 + 8 * (v181 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v199 = *(v64 + 8 * (v186 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v200 = v196 ^ (((v197 >> 2) & 0x6F37908F00 ^ v197) >> 8) ^ (((v198 >> 2) & 0xF76F37900000 ^ v198) >> 16);
  v201 = v199 >> 2;
  v202 = (v199 >> 2) & 0x333FF76F00000000;
  v203 = v199 & 0x20000000000000;
  v204 = v199 & 0xFFDFFFFF00000000;
  if ((v201 & v203) != 0)
  {
    v205 = -v203;
  }

  else
  {
    v205 = v203;
  }

  v206 = *(v64 + 8 * (v183 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v207 = *(v64 + 8 * (v188 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v208 = *(v64 + 8 * (v182 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v209 = *(v64 + 8 * (v187 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v210 = *(v64 + 8 * (v184 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v211 = *(v64 + 8 * (v191 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v212 = ((2 * *(v64 + 8 * (v192 ^ 0x7C))) & 0xEB86B864352E0958) + (*(v64 + 8 * (v192 ^ 0x7C)) ^ 0x75C35C321A9704ACLL);
  v213 = *(v64 + 8 * (v193 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v214 = *(v64 + 8 * (v190 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v215 = *(v64 + 8 * (v195 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v214) = (((v213 >> 2) & 0x6F37908F00 ^ v213) >> 8) ^ (((v214 >> 2) & 0xF76F37900000 ^ v214) >> 16);
  v216 = ((((*(v64 + 8 * (v185 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x3FF76F37000000 ^ (*(v64 + 8 * (v185 ^ 0x7C)) + 0x75C35C321A9704ACLL)) >> 24) ^ (((v209 >> 2) & 0xF76F37900000 ^ v209) >> 16) ^ (((v210 >> 2) & 0x333FF76F00000000 ^ v210) >> 32) ^ (((v211 >> 2) & 0x6F37908F00 ^ v211) >> 8) ^ 0xD32317D3;
  v217 = v200 ^ 0xB669443u;
  v218 = *(v56 + (v200 ^ 0x43u));
  v219 = (((v207 >> 2) & 0xF76F37900000 ^ v207) >> 16) ^ (((v206 >> 2) & 0x6F37908F00 ^ v206) >> 8) ^ (((v208 >> 2) & 0x3FF76F37000000 ^ v208) >> 24) ^ (((v205 + v202) ^ v204) >> 32) ^ 0x3E1CA202;
  v220 = (((v212 >> 2) & 0x333FF76F00000000 ^ v212) >> 32) ^ v214 ^ (((v215 >> 2) & 0x3FF76F37000000 ^ v215) >> 24) ^ 0xAB849F97;
  v221 = *(v56 + v220);
  v222 = *(v56 + BYTE1(v220));
  v223 = *(v56 + BYTE2(v217));
  v224 = *(v56 + BYTE2(v220));
  v225 = v217 >> 24;
  v226 = *(v56 + BYTE1(v217));
  v227 = *(v56 + (v220 >> 24));
  v228 = *(v56 + BYTE2(v216));
  v229 = ((((v218 ^ 0xFFFFFFFD) << 29) ^ 0x24614E1060E404A8) & ((v218 >> 3) ^ 0x2465CE5BE0EE0CBALL) | 0x911830241400D140) ^ ((v218 >> 3) ^ 0x2465CE5BE0EE0CBALL) & 0x4804BC00A0817;
  v230 = *(v64 + 8 * ((v229 >> 29) & 0x2C3029 ^ 0x43046A5DA0C52C8 ^ ((8 * v229) & 0x17021F8 ^ 0x43046A5DB50434ELL) & ((v229 >> 29) ^ 0x1C3C57FA709A1004))) + 0x75C35C321A9704ACLL;
  v231 = ((v230 >> 2) & 0x6F37908F00 ^ v230) >> 8;
  v232 = *(v64 + 8 * (*(v56 + BYTE2(v219)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v233 = *(v64 + 8 * (*(v56 + (v216 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v234 = *(v64 + 8 * (v221 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v209) = (((v232 >> 2) & 0xF76F37900000 ^ v232) >> 16) ^ (((v233 >> 2) & 0x3FF76F37000000 ^ v233) >> 24) ^ (((v234 >> 2) & 0x333FF76F00000000 ^ v234) >> 32);
  v235 = *(v64 + 8 * (*(v56 + (v219 >> 24)) ^ 0x7CLL));
  v236 = *(v64 + 8 * (*(v56 + v216) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v237 = *(v64 + 8 * (v222 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v237) = (((v236 >> 2) & 0x6F37908F00 ^ v236) >> 8) ^ (((v237 >> 2) & 0xF76F37900000 ^ v237) >> 16);
  v238 = *(v64 + 8 * (v226 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v239 = *(v64 + 8 * (*(v56 + BYTE1(v216)) ^ 0x7CLL));
  v240 = *(v64 + 8 * (v224 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v241 = *(v64 + 8 * (v223 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v242 = *(v64 + 8 * (*(v56 + v219) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v243 = *(v64 + 8 * (v227 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v244 = *(v64 + 8 * (*(v56 + v225) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v245 = *(v64 + 8 * (*(v56 + BYTE1(v219)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v246 = *(v64 + 8 * (v228 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v247 = v209 ^ 0x4DD3D7A4 ^ v231;
  v248 = (((v240 >> 2) & 0xF76F37900000 ^ v240) >> 16) ^ ((((v239 + 0x75C35C321A9704ACLL) >> 2) & 0x6F37908F00 ^ (v239 + 0x75C35C321A9704ACLL)) >> 8) ^ (((v241 >> 2) & 0x3FF76F37000000 ^ v241) >> 24) ^ (((v242 >> 2) & 0x333FF76F00000000 ^ v242) >> 32) ^ 0xE58E381;
  v249 = ((((((2 * v235) & 0xEB86B864352E0958) + (v235 ^ 0x75C35C321A9704ACLL)) >> 2) & 0x333FF76F00000000 ^ (((2 * v235) & 0xEB86B864352E0958) + (v235 ^ 0x75C35C321A9704ACLL))) >> 32) ^ v237 ^ (((v238 >> 2) & 0x3FF76F37000000 ^ v238) >> 24) ^ 0x1B1807C6;
  v250 = (((v244 >> 2) & 0x6F37908F00 ^ v244) >> 8) ^ (((v246 >> 2) & 0x3FF76F37000000 ^ v246) >> 24) ^ (((v243 >> 2) & 0x333FF76F00000000 ^ v243) >> 32) ^ 0x548664CC ^ ((((v245 >> 2) & 0x333FF76F37908F6DLL) + (v245 ^ 0xC600213CEE2D2F67) - 2 * ((v245 >> 2) & 0x333FF76F37908F6DLL & (v245 ^ 0xC600213CEE2D2F67))) >> 16);
  v251 = *(v56 + v250);
  v252 = *(v56 + BYTE2(v248));
  LODWORD(v225) = *(v56 + v248);
  v253 = *(v56 + (v247 >> 24));
  v254 = *(v56 + BYTE1(v250));
  v255 = *(v56 + BYTE2(v250));
  v256 = *(v56 + v247);
  v257 = *(v56 + (v250 >> 24));
  v258 = v248 >> 24;
  v259 = *(v56 + BYTE1(v247));
  v260 = *(v64 + 8 * (*(v56 + BYTE2(v247)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v261 = *(v64 + 8 * (*(v56 + BYTE2(v249)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v262 = *(v64 + 8 * ((-(v225 ^ 0xBF) ^ 0xEC863539 ^ (195 - (v225 ^ 0x7C)) ^ ((v225 ^ 0xBF) - 326748871 - ((2 * (v225 ^ 0xBF)) & 0x72))) + 195)) + 0x75C35C321A9704ACLL;
  v263 = *(v64 + 8 * (v251 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v264 = *(v64 + 8 * (*(v56 + (v249 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v263) = (((v261 >> 2) & 0xF76F37900000 ^ v261) >> 16) ^ (((v262 >> 2) & 0x3FF76F37000000 ^ v262) >> 24) ^ (((v263 >> 2) & 0x333FF76F00000000 ^ v263) >> 32);
  v265 = *(v64 + 8 * (*(v56 + BYTE1(v248)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v266 = *(v64 + 8 * (v254 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v267 = *(v64 + 8 * (v253 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v268 = *(v64 + 8 * (v255 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v269 = *(v64 + 8 * (v256 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v270 = *(v64 + 8 * (*(v56 + v249) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v271 = *(v64 + 8 * (v257 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v272 = *(v64 + 8 * (v259 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v273 = *(v64 + 8 * (*(v56 + BYTE1(v249)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v271) = (((v271 >> 2) & 0x333FF76F00000000 ^ v271) >> 32) ^ (((v273 >> 2) & 0xF76F37900000 ^ v273) >> 16);
  v274 = *(v64 + 8 * (*(v56 + v258) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v275 = v263 ^ 0xF89EBE71 ^ (((v260 >> 2) & 0x6F37908F00 ^ v260) >> 8);
  v276 = (((v265 >> 2) & 0x333FF76F00000000 ^ v265) >> 32) ^ (((v266 >> 2) & 0x6F37908F00 ^ v266) >> 8) ^ (((v264 >> 2) & 0x3FF76F37000000 ^ v264) >> 24) ^ 0xE7E3B42B ^ (((v267 >> 2) & 0xF76F37900000 ^ v267) >> 16);
  v277 = (((v268 >> 2) & 0x6F37908F00 ^ v268) >> 8) ^ ((((*(v64 + 8 * (v252 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000 ^ (*(v64 + 8 * (v252 ^ 0x7C)) + 0x75C35C321A9704ACLL)) >> 32) ^ (((v270 >> 2) & 0x3FF76F37000000 ^ v270) >> 24) ^ 0xD1F8A8B0 ^ (((v269 >> 2) & 0xF76F37900000 ^ v269) >> 16);
  v278 = *(v56 + (((((v268 >> 2) & 0x37908F00 ^ v268) >> 8) ^ ((((*(v64 + 8 * (v252 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000 ^ (*(v64 + 8 * (v252 ^ 0x7C)) + 0x75C35C321A9704ACLL)) >> 32) ^ (((v270 >> 2) & 0x3FF76F37000000 ^ v270) >> 24) ^ 0xA8B0 ^ (((v269 >> 2) & 0x37900000 ^ v269) >> 16)) >> 8));
  v279 = (((v272 >> 2) & 0x6F37908F00 ^ v272) >> 8) ^ v271 ^ (((v274 >> 2) & 0x3FF76F37000000 ^ v274) >> 24) ^ 0x499C9C66;
  v280 = *(v56 + (v263 ^ 0x71u ^ (((v260 >> 2) & 0x8F00 ^ v260) >> 8)));
  v281 = *(v56 + ((v263 ^ 0xBE71 ^ (((v260 >> 2) & 0x37908F00 ^ v260) >> 8)) >> 8));
  v282 = *(v64 + 8 * (*(v56 + BYTE2(v275)) ^ 0x7CLL));
  v283 = (((0xCDE568FB54 - v282) ^ (v282 - ((2 * (v282 + 0x75C35C321A9704ACLL)) & 0x17A752C69AF7F7F0) - 0x7E68FA6A97ECFF5CLL) ^ ((((v282 + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F37908F6DLL) - (((v282 + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F37908F6DLL ^ (v282 + 0x75C35C321A9704ACLL))) ^ 0x634D7BFBF8) + (((v282 + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F37908F6DLL)) >> 8;
  v284 = *(v64 + 8 * (*(v56 + (v276 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v285 = *(v64 + 8 * (v278 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v286 = *(v64 + 8 * (*(v56 + v279) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v253) = (((v285 >> 2) & 0x3FF76F37000000 ^ v285) >> 24) ^ (((v284 >> 2) & 0xF76F37900000 ^ v284) >> 16) ^ (((v286 >> 2) & 0x333FF76F00000000 ^ v286) >> 32);
  v287 = *(v64 + 8 * (*(v56 + v276) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v288 = *(v64 + 8 * (*(v56 + BYTE2(v277)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v289 = *(v64 + 8 * (*(v56 + BYTE1(v279)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v288) = (((v288 >> 2) & 0x3FF76F37000000 ^ v288) >> 24) ^ (((v287 >> 2) & 0xF76F37900000 ^ v287) >> 16);
  v290 = *(v64 + 8 * (*(v56 + (v275 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v291 = *(v64 + 8 * (*(v56 + (v277 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v292 = *(v64 + 8 * (*(v56 + BYTE2(v279)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v292) = (((v292 >> 2) & 0x333FF76F00000000 ^ v292) >> 32) ^ (((v291 >> 2) & 0x3FF76F37000000 ^ v291) >> 24) ^ 0xC6211DD2;
  v293 = *(v64 + 8 * (v280 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v293) = (((v293 >> 2) & 0x6F37908F00 ^ v293) >> 8) ^ 0x3CEE2D2F;
  v294 = *(v64 + 8 * (*(v56 + BYTE1(v276)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v295 = *(v64 + 8 * (*(v56 + (v279 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v296 = *(v64 + 8 * (v281 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v296) = (((v296 >> 2) & 0xF76F37900000 ^ v296) >> 16) ^ (((v295 >> 2) & 0x6F37908F00 ^ v295) >> 8);
  v297 = *(v64 + 8 * (*(v56 + BYTE2(v276)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v298 = *(v64 + 8 * (*(v56 + v277) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v299 = ((v298 >> 2) & 0x333FF76F00000000 ^ v298) >> 32;
  v300 = v253 ^ 0xC6F4CEC9 ^ v283;
  v301 = (((v294 >> 2) & 0xF76F37900000 ^ v294) >> 16) ^ 0x15A05A23 ^ (v292 + v293 - 2 * (v293 & v292));
  LODWORD(v297) = v296 ^ (((v297 >> 2) & 0x3FF76F37000000 ^ v297) >> 24) ^ v299;
  v302 = v288 ^ (((v289 >> 2) & 0x333FF76F00000000 ^ v289) >> 32) ^ (((v290 >> 2) & 0x6F37908F00 ^ v290) >> 8) ^ 0x467A193;
  v303 = v297 ^ 0xAACA8EA7;
  v304 = *(v56 + ((v288 ^ (((v289 >> 2) & 0x333FF76F00000000 ^ v289) >> 32) ^ (((v290 >> 2) & 0x8F00 ^ v290) >> 8)) ^ 0x93u));
  v305 = *(v56 + BYTE2(v301));
  v306 = *(v56 + (v301 >> 24));
  v307 = *(v56 + (v297 ^ 0xA7u));
  v308 = *(v56 + (v300 >> 24));
  v309 = *(v56 + v301);
  v310 = *(v56 + v300);
  v311 = *(v56 + BYTE1(v300));
  LODWORD(v300) = *(v56 + BYTE2(v300)) ^ 0xBF;
  v312 = *(v64 + 8 * (v300 - 2 * (v300 & 0xFFFFFFC3) + 195)) + 0x75C35C321A9704ACLL;
  v313 = *(v56 + BYTE1(v301));
  v314 = ((v312 >> 2) & 0x333FF76F00000000 ^ v312) >> 32;
  v315 = *(v64 + 8 * (v304 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v316 = *(v64 + 8 * (v305 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v315) = (((v315 >> 2) & 0x6F37908F00 ^ v315) >> 8) ^ (((v316 >> 2) & 0xF76F37900000 ^ v316) >> 16);
  v317 = *(v64 + 8 * (*(v56 + (v303 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v318 = *(v64 + 8 * (*(v56 + BYTE1(v302)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v319 = *(v64 + 8 * (v306 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v320 = *(v64 + 8 * (v307 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v321 = *(v64 + 8 * (v308 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v322 = (((v319 >> 2) & 0x6F37908F00 ^ v319) >> 8) ^ (((v318 >> 2) & 0x333FF76F00000000 ^ v318) >> 32) ^ (((v320 >> 2) & 0xF76F37900000 ^ v320) >> 16);
  v323 = *(v64 + 8 * (v309 ^ 0x7C));
  v324 = v322 ^ (((v321 >> 2) & 0x3FF76F37000000 ^ v321) >> 24);
  v325 = *(v64 + 8 * (*(v56 + BYTE1(v303)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v326 = *(v64 + 8 * (v310 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v327 = *(v64 + 8 * (*(v56 + BYTE2(v302)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v328 = *(v64 + 8 * (*(v56 + BYTE2(v303)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v329 = *(v64 + 8 * (v311 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v330 = *(v64 + 8 * (*(v56 + (v302 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v330) = (((v329 >> 2) & 0x6F37908F00 ^ v329) >> 8) ^ (((v328 >> 2) & 0x333FF76F00000000 ^ v328) >> 32) ^ (((v330 >> 2) & 0xF76F37900000 ^ v330) >> 16);
  v331 = *(v64 + 8 * (v313 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v332 = ((v331 >> 2) & 0x3FF76F37000000 ^ v331) >> 24;
  v333 = (((v325 >> 2) & 0x333FF76F00000000 ^ v325) >> 32) ^ (((v326 >> 2) & 0x6F37908F00 ^ v326) >> 8) ^ ((((v323 + 0x75C35C321A9704ACLL) >> 2) & 0x3FF76F37000000 ^ (v323 + 0x75C35C321A9704ACLL)) >> 24) ^ (((v327 >> 2) & 0xF76F37900000 ^ v327) >> 16) ^ 0x3325D413;
  LODWORD(v330) = v330 ^ v332;
  v334 = v315 ^ (((v317 >> 2) & 0x3FF76F37000000 ^ v317) >> 24) ^ 0xF88C01D2 ^ v314;
  v335 = v324 ^ 0xECCAAFC7;
  v336 = v330 ^ 0x83FE8FF5;
  v337 = *(v56 + (v330 ^ 0xF5u));
  v338 = *(v56 + v334);
  v339 = *(v56 + BYTE1(v334));
  v340 = *(v56 + BYTE2(v334));
  v341 = *(v64 + 8 * (*(v56 + (v334 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v342 = ((v341 >> 2) & 0x3FF76F37000000 ^ v341) >> 24;
  v343 = *(v64 + 8 * (*(v56 + BYTE2(v335)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v344 = *(v64 + 8 * (*(v56 + BYTE2(v333)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v345 = *(v64 + 8 * (v337 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v346 = *(v64 + 8 * (*(v56 + (v335 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v347 = *(v64 + 8 * (*(v56 + (v333 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v348 = *(v64 + 8 * ((((*(v56 + BYTE1(v336)) ^ 0xBF) - (*(v56 + BYTE1(v336)) ^ 0x7C)) ^ 0xFFFFFFFE) + (*(v56 + BYTE1(v336)) ^ 0xBF))) + 0x75C35C321A9704ACLL;
  v349 = *(v64 + 8 * (v338 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v350 = *(v64 + 8 * (*(v56 + v333) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v351 = *(v64 + 8 * (*(v56 + BYTE2(v336)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v352 = *(v64 + 8 * (v339 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v353 = *(v64 + 8 * (*(v56 + (v324 ^ 0xC7u)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v351) = (((v351 >> 2) & 0x333FF76F00000000 ^ v351) >> 32) ^ (((v350 >> 2) & 0x3FF76F37000000 ^ v350) >> 24) ^ (((v352 >> 2) & 0x6F37908F00 ^ v352) >> 8);
  v354 = *(v64 + 8 * (*(v56 + (v336 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v355 = *(v64 + 8 * (v340 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v355) = (((v355 >> 2) & 0x6F37908F00 ^ v355) >> 8) ^ (((v354 >> 2) & 0x333FF76F00000000 ^ v354) >> 32);
  v356 = *(v64 + 8 * (*(v56 + (BYTE1(v324) ^ 0xAFLL)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v357 = ((v356 >> 2) & 0xF76F37900000 ^ v356) >> 16;
  v358 = *(v64 + 8 * (*(v56 + BYTE1(v333)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v359 = (((v343 >> 2) & 0x333FF76F00000000 ^ v343) >> 32) ^ v342 ^ (((v344 >> 2) & 0x6F37908F00 ^ v344) >> 8) ^ (((v345 >> 2) & 0xF76F37900000 ^ v345) >> 16) ^ 0x8CDA27AC;
  v360 = ((v358 >> 2) & 0x3FF76F37000000 ^ v358) >> 24;
  v361 = v351 ^ 0x673D9A20 ^ (((v353 >> 2) & 0xF76F37900000 ^ v353) >> 16);
  v362 = *(v56 + BYTE2(v361));
  v363 = (((v347 >> 2) & 0x3FF76F37000000 ^ v347) >> 24) ^ (((v348 >> 2) & 0x333FF76F00000000 ^ v348) >> 32) ^ (((v349 >> 2) & 0x6F37908F00 ^ v349) >> 8) ^ (((v346 >> 2) & 0xF76F37900000 ^ v346) >> 16) ^ 0x1A16EA6A;
  v364 = v355 ^ v360 ^ 0x7EC5C57B ^ v357;
  v365 = *(v56 + ((((v347 >> 2) & 0x37000000 ^ v347) >> 24) ^ (((v348 >> 2) & 0x333FF76F00000000 ^ v348) >> 32) ^ (((v349 >> 2) & 0x8F00 ^ v349) >> 8) ^ (((v346 >> 2) & 0x37900000 ^ v346) >> 16) ^ 0x6A));
  v366 = *(v56 + v364);
  v367 = *(v56 + (v361 >> 24));
  v368 = *(v56 + BYTE1(v363));
  v369 = *(v56 + BYTE1(v364));
  v370 = *(v56 + BYTE1(v359));
  v371 = *(v56 + BYTE2(v364));
  v372 = *(v56 + BYTE2(v359));
  v373 = *(v56 + BYTE2(v363));
  v374 = *(v56 + v361);
  v375 = *(v56 + (v364 >> 24));
  v376 = *(v56 + (v359 >> 24));
  v377 = *(v56 + (v363 >> 24));
  v378 = *(v64 + 8 * (*(v56 + v359) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v379 = *(v56 + BYTE1(v361));
  v380 = *(v64 + 8 * (v365 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v381 = *(v64 + 8 * (v362 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v382 = (((v380 >> 2) & 0x333FF76F00000000 ^ v380) >> 32) ^ (((v378 >> 2) & 0x3FF76F37000000 ^ v378) >> 24) ^ (((v381 >> 2) & 0x6F37908F00 ^ v381) >> 8);
  v383 = *(v64 + 8 * (v366 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v384 = ((v383 >> 2) & 0xF76F37900000 ^ v383) >> 16;
  v385 = *(v64 + 8 * (v368 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v386 = *(v64 + 8 * (v367 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v387 = *(v64 + 8 * (v369 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v388 = *(v64 + 8 * (v370 ^ 0x7C));
  v389 = (((v386 >> 2) & 0x3FF76F37000000 ^ v386) >> 24) ^ (((v387 >> 2) & 0x333FF76F00000000 ^ v387) >> 32) ^ (((v385 >> 2) & 0xF76F37900000 ^ v385) >> 16);
  v390 = (((v388 + 0x75C35C321A9704ACLL) >> 2) & 0x6F37908F00 ^ (v388 + 0x75C35C321A9704ACLL)) >> 8;
  v391 = *(v64 + 8 * (v374 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v392 = ((v391 >> 2) & 0x333FF76F00000000 ^ v391) >> 32;
  v393 = *(v64 + 8 * (v371 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v394 = *(v64 + 8 * (v372 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v395 = (((v393 >> 2) & 0x6F37908F00 ^ v393) >> 8) - ((((v393 >> 2) & 0x6F37908F00 ^ v393) >> 7) & 0xECDA222C) + 1986859286;
  v396 = ((v394 >> 2) & 0xF76F37900000 ^ v394) >> 16;
  v397 = *(v64 + 8 * (v373 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v398 = v397 & 0x800000000;
  if (((v397 >> 2) & v397 & 0x800000000) != 0)
  {
    v398 = -v398;
  }

  v399 = *(v64 + 8 * (v375 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v400 = *(v64 + 8 * (v376 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v401 = *(v64 + 8 * (v377 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v402 = *(v64 + 8 * (v379 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v401) = (((v400 >> 2) & 0x6F37908F00 ^ v400) >> 8) ^ (((v399 >> 2) & 0x333FF76F00000000 ^ v399) >> 32) ^ (((v401 >> 2) & 0xF76F37900000 ^ v401) >> 16);
  v403 = v389 ^ v390 ^ 0x119767F3;
  v404 = v382 ^ v384 ^ 0x75FCF5F7;
  v405 = v401 ^ (((v402 >> 2) & 0x3FF76F37000000 ^ v402) >> 24) ^ 0x1298F4AD;
  v406 = v396 ^ v392 ^ v395 ^ 0xB77BB8FF ^ (((v398 + ((v397 >> 2) & 0x3FF76F37000000)) ^ v397 & 0xFFFFF7FF000000) >> 24);
  v407 = *(v56 + BYTE1(v405));
  v408 = *(v56 + BYTE1(v403));
  v409 = *(v56 + v405);
  v410 = *(v56 + BYTE2(v405));
  v411 = *(v56 + BYTE1(v404));
  v412 = *(v56 + BYTE2(v403));
  v413 = v405 >> 24;
  v414 = *(v56 + BYTE2(v404));
  v415 = *(v56 + (v403 >> 24));
  v416 = v404 >> 24;
  v417 = *(v64 + 8 * (*(v56 + v404) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v418 = *(v64 + 8 * (*(v56 + (v389 ^ v390 ^ 0xF3)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v419 = *(v64 + 8 * (*(v56 + BYTE1(v406)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v418) = (((v418 >> 2) & 0x333FF76F00000000 ^ v418) >> 32) ^ (((v417 >> 2) & 0x3FF76F37000000 ^ v417) >> 24);
  v420 = *(v64 + 8 * (v409 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v421 = *(v64 + 8 * (v408 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v422 = *(v64 + 8 * (*(v56 + BYTE2(v406)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v423 = *(v64 + 8 * (v407 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v423) = (((v422 >> 2) & 0x333FF76F00000000 ^ v422) >> 32) ^ (((v421 >> 2) & 0x3FF76F37000000 ^ v421) >> 24) ^ (((v423 >> 2) & 0x6F37908F00 ^ v423) >> 8);
  v424 = *(v64 + 8 * (v411 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v425 = *(v64 + 8 * (*(v56 + (v406 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v426 = *(v64 + 8 * (v410 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v427 = *(v64 + 8 * (v414 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v426) = (((v426 >> 2) & 0x3FF76F37000000 ^ v426) >> 24) ^ (((v427 >> 2) & 0x333FF76F00000000 ^ v427) >> 32) ^ (((v425 >> 2) & 0xF76F37900000 ^ v425) >> 16);
  v428 = *(v64 + 8 * (v412 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v429 = *(v64 + 8 * (*(v56 + v413) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v430 = *(v64 + 8 * (*(v56 + v416) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v431 = *(v64 + 8 * (v415 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v431) = (((v430 >> 2) & 0x3FF76F37000000 ^ v430) >> 24) ^ (((v429 >> 2) & 0xF76F37900000 ^ v429) >> 16) ^ (((v431 >> 2) & 0x333FF76F00000000 ^ v431) >> 32);
  v432 = *(v64 + 8 * (*(v56 + v406) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v433 = v418 ^ (((v419 >> 2) & 0x6F37908F00 ^ v419) >> 8) ^ (((v420 >> 2) & 0xF76F37900000 ^ v420) >> 16) ^ 0x4B48E763;
  v434 = *(v56 + (v418 ^ (((v419 >> 2) & 0x8F00 ^ v419) >> 8) ^ (((v420 >> 2) & 0x37900000 ^ v420) >> 16) ^ 0x63));
  v435 = v423 ^ (((v424 >> 2) & 0xF76F37900000 ^ v424) >> 16) ^ 0xED45C108;
  v436 = v431 ^ (((v432 >> 2) & 0x6F37908F00 ^ v432) >> 8) ^ 0x936C1935;
  v437 = *(v56 + BYTE2(v436));
  v438 = *(v56 + (v435 >> 24));
  v439 = v426 ^ (((v428 >> 2) & 0x6F37908F00 ^ v428) >> 8) ^ 0xE6CDA0B4;
  v440 = *(v56 + (v423 ^ (((v424 >> 2) & 0x37900000 ^ v424) >> 16) ^ 8));
  v441 = *(v56 + (v436 >> 24));
  v442 = *(v56 + (v426 ^ (((v428 >> 2) & 0x8F00 ^ v428) >> 8) ^ 0xB4));
  v443 = *(v56 + BYTE1(v433));
  v444 = *(v56 + ((v426 ^ (((v428 >> 2) & 0x37908F00 ^ v428) >> 8) ^ 0xA0B4) >> 8));
  v445 = *(v56 + BYTE2(v433));
  v446 = *(v56 + BYTE1(v435));
  v447 = *(v56 + BYTE1(v436));
  v448 = *(v56 + v436);
  v449 = v434 ^ 0x7C;
  v450 = *(v56 + (v433 >> 24));
  v451 = *(v56 + BYTE2(v435));
  v452 = *(v64 + 8 * v449) + 0x75C35C321A9704ACLL;
  v453 = *(v56 + BYTE2(v439));
  v454 = *(v64 + 8 * (v438 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v455 = *(v64 + 8 * (*(v56 + (v439 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v456 = *(v64 + 8 * (v437 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v457 = *(v64 + 8 * (v440 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v458 = *(v64 + 8 * (v441 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v459 = *(v64 + 8 * (v443 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v444 ^= 0x7CuLL;
  v460 = *(v64 + 8 * (v448 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v461 = *(v64 + 8 * (v445 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v462 = *(v64 + 8 * (v446 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v463 = (((v460 >> 2) & 0x333FF76F00000000 ^ v460) >> 32) ^ ((((*(v64 + 8 * v444) + 0x75C35C321A9704ACLL) >> 2) & 0x3FF76F37000000 ^ (*(v64 + 8 * v444) + 0x75C35C321A9704ACLL)) >> 24) ^ (((v461 >> 2) & 0x6F37908F00 ^ v461) >> 8) ^ (((v462 >> 2) & 0xF76F37900000 ^ v462) >> 16);
  v464 = *(v64 + 8 * (v447 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v465 = *(v64 + 8 * (v450 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v466 = *(v64 + 8 * (v451 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v464) = (((v465 >> 2) & 0x3FF76F37000000 ^ v465) >> 24) ^ (((v464 >> 2) & 0xF76F37900000 ^ v464) >> 16);
  v467 = *(v64 + 8 * (v453 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v468 = (((v454 >> 2) & 0x3FF76F37000000 ^ v454) >> 24) ^ (((v452 >> 2) & 0xF76F37900000 ^ v452) >> 16) ^ (((v455 >> 2) & 0x333FF76F00000000 ^ v455) >> 32) ^ (((((v456 - (v456 ^ 0xC600213CEE2D2F67)) ^ 0xFFFFFFFFFELL) + v456) ^ (v456 >> 2) & 0x6F37908F00) >> 8) ^ 0x52F5F94E;
  v469 = (((*(v64 + 8 * (v442 ^ 0x7C)) - ((2 * (*(v64 + 8 * (v442 ^ 0x7C)) + 0x75C35C321A9704ACLL)) & 0x8C004279DC5A5ECELL) + 0x3BC37D6F08C43413) ^ ((*(v64 + 8 * (v442 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000) >> 32) ^ (((v457 >> 2) & 0x3FF76F37000000 ^ v457) >> 24) ^ (((v458 >> 2) & 0x6F37908F00 ^ v458) >> 8) ^ (((v459 >> 2) & 0xF76F37900000 ^ v459) >> 16) ^ 0xB9C2E3A9;
  v470 = v464 ^ (((v466 >> 2) & 0x333FF76F00000000 ^ v466) >> 32) ^ (((v467 >> 2) & 0x6F37908F00 ^ v467) >> 8) ^ 0x57C9BD1C;
  v471 = v463 ^ 0x329C399B;
  v472 = *(a11 + (v471 >> 24));
  v473 = *(a11 + BYTE2(v469));
  v474 = *(v64 + 8 * (*(a11 + BYTE1(v468)) ^ 0x7CLL));
  v475 = *(a11 + BYTE1(v471));
  v476 = *(v64 + 8 * (*(a11 + (v469 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v477 = *(v64 + 8 * (*(a11 + (BYTE2(v463) ^ 0x9CLL)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v478 = *(v64 + 8 * (*(a11 + BYTE2(v470)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v476) = (((v476 >> 2) & 0xF76F37900000 ^ v476) >> 16) ^ (((v477 >> 2) & 0x3FF76F37000000 ^ v477) >> 24) ^ ((((((2 * v474) & 0xEB86B864352E0958) + (v474 ^ 0x75C35C321A9704ACLL)) >> 2) & 0x6F37908F00 ^ (((2 * v474) & 0xEB86B864352E0958) + (v474 ^ 0x75C35C321A9704ACLL))) >> 8);
  v479 = *(v64 + 8 * (*(a11 + (((((*(v64 + 8 * (v442 ^ 0x7C)) - ((2 * (*(v64 + 8 * (v442 ^ 0x7C)) + 0x75C35C321A9704ACLL)) & 0x8C004279DC5A5ECELL) + 0x3BC37D6F08C43413) ^ ((*(v64 + 8 * (v442 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000) >> 32) ^ (((v457 >> 2) & 0x37000000 ^ v457) >> 24) ^ (((v458 >> 2) & 0x8F00 ^ v458) >> 8) ^ (((v459 >> 2) & 0x37900000 ^ v459) >> 16)) ^ 0xA9u)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v480 = ((v479 >> 2) & 0x6F37908F00 ^ v479) >> 8;
  v481 = *(v64 + 8 * (v472 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v482 = *(v64 + 8 * (*(a11 + (v470 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v483 = *(v64 + 8 * (*(a11 + BYTE2(v468)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v484 = *(v64 + 8 * (*(a11 + (v463 ^ 0x9Bu)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v442) = v480 ^ (((v482 >> 2) & 0x3FF76F37000000 ^ v482) >> 24) ^ (((v483 >> 2) & 0x333FF76F00000000 ^ v483) >> 32);
  v485 = *(v64 + 8 * (*(a11 + v470) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v486 = *(v64 + 8 * (*(a11 + BYTE1(v469)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v487 = *(v64 + 8 * (*(a11 + BYTE1(v470)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v488 = *(v64 + 8 * (*(a11 + v468) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v489 = *(v64 + 8 * (v473 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v489) = (((v488 >> 2) & 0x6F37908F00 ^ v488) >> 8) ^ (((v487 >> 2) & 0x333FF76F00000000 ^ v487) >> 32) ^ (((v489 >> 2) & 0xF76F37900000 ^ v489) >> 16);
  v490 = *(v64 + 8 * (v475 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v491 = v476 ^ (((v478 >> 2) & 0x333FF76F00000000 ^ v478) >> 32) ^ 0xF9BD6719;
  v492 = v489 ^ 0xF0748F2B ^ (((v490 >> 2) & 0x3FF76F37000000 ^ v490) >> 24);
  v493 = *(a11 + v492);
  v494 = (((v481 >> 2) & 0xF76F37900000 ^ v481) >> 16) ^ v442 ^ 0x71C90BD8;
  v495 = (((v485 >> 2) & 0x6F37908F00 ^ v485) >> 8) ^ ((((*(v64 + 8 * (*(a11 + (v468 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL) >> 2) & 0xF76F37900000 ^ (*(v64 + 8 * (*(a11 + (v468 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL)) >> 16) ^ (((v486 >> 2) & 0x3FF76F37000000 ^ v486) >> 24) ^ 0xC5B80054 ^ (((v484 >> 2) & 0x333FF76F00000000 ^ v484) >> 32);
  v496 = *(a11 + (((((v485 >> 2) & 0x37908F00 ^ v485) >> 8) ^ ((((*(v64 + 8 * (*(a11 + (v468 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL) >> 2) & 0x37900000 ^ (*(v64 + 8 * (*(a11 + (v468 >> 24)) ^ 0x7CLL)) + 446104748)) >> 16) ^ (((v486 >> 2) & 0x3FF76F37000000 ^ v486) >> 24) ^ 0x54 ^ (((v484 >> 2) & 0x333FF76F00000000 ^ v484) >> 32)) >> 8));
  v497 = *(a11 + BYTE2(v495));
  v498 = *(a11 + BYTE1(v492));
  v499 = *(a11 + (v495 >> 24));
  LOBYTE(v459) = *(a11 + BYTE2(v492));
  v500 = *(a11 + (v492 >> 24));
  v501 = *(v64 + 8 * (*(a11 + BYTE2(v491)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v502 = *(a11 + v495);
  v503 = ((2 * *(v64 + 8 * (*(a11 + BYTE1(v494)) ^ 0x7CLL))) & 0xEB86B864352E0958) + (*(v64 + 8 * (*(a11 + BYTE1(v494)) ^ 0x7CLL)) ^ 0x75C35C321A9704ACLL);
  v504 = *(v64 + 8 * (v496 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v505 = *(v64 + 8 * (v493 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v495) = (((v504 >> 2) & 0x333FF76F00000000 ^ v504) >> 32) ^ (((v501 >> 2) & 0xF76F37900000 ^ v501) >> 16) ^ (((v505 >> 2) & 0x6F37908F00 ^ v505) >> 8) ^ (((v503 >> 2) & 0x3FF76F37000000 ^ v503) >> 24);
  v506 = *(v64 + 8 * (*(a11 + BYTE2(v494)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v507 = *(v64 + 8 * (v497 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v508 = *(v64 + 8 * (v498 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v509 = *(v64 + 8 * (*(a11 + (v491 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v510 = *(v64 + 8 * (v499 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v511 = *(v64 + 8 * (v459 ^ 0x7Cu)) + 0x75C35C321A9704ACLL;
  v512 = *(v64 + 8 * (*(a11 + v491) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v513 = *(v64 + 8 * (*(a11 + (v494 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v514 = *(v64 + 8 * (v500 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v515 = *(v64 + 8 * (*(a11 + BYTE1(v491)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v514) = (((v515 >> 2) & 0x333FF76F00000000 ^ v515) >> 32) ^ (((v514 >> 2) & 0x3FF76F37000000 ^ v514) >> 24);
  v516 = *(v64 + 8 * (*(a11 + v494) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v517 = *(v64 + 8 * (v502 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v518 = v495 ^ 0xD5DC1069;
  LODWORD(v516) = v514 ^ (((v516 >> 2) & 0x6F37908F00 ^ v516) >> 8) ^ (((v517 >> 2) & 0xF76F37900000 ^ v517) >> 16);
  v519 = (((v507 >> 2) & 0xF76F37900000 ^ v507) >> 16) ^ (((v506 >> 2) & 0x6F37908F00 ^ v506) >> 8) ^ (((v508 >> 2) & 0x3FF76F37000000 ^ v508) >> 24) ^ (((v509 >> 2) & 0x333FF76F00000000 ^ v509) >> 32) ^ 0x159393FB;
  v520 = v516 ^ 0x33745E04;
  v521 = (((v511 >> 2) & 0x6F37908F00 ^ v511) >> 8) ^ (((v510 >> 2) & 0x333FF76F00000000 ^ v510) >> 32) ^ (((v512 >> 2) & 0xF76F37900000 ^ v512) >> 16) ^ (((v513 >> 2) & 0x3FF76F37000000 ^ v513) >> 24) ^ 0xF10C988D;
  LODWORD(v512) = *(a11 + (((((v507 >> 2) & 0x37900000 ^ v507) >> 16) ^ (((v506 >> 2) & 0x37908F00 ^ v506) >> 8) ^ (((v508 >> 2) & 0x3FF76F37000000 ^ v508) >> 24) ^ (((v509 >> 2) & 0x333FF76F00000000 ^ v509) >> 32) ^ 0x93FB) >> 8)) | (*(a11 + BYTE1(v518)) << 8) | (*(a11 + (((((v511 >> 2) & 0x37908F00 ^ v511) >> 8) ^ (((v510 >> 2) & 0x333FF76F00000000 ^ v510) >> 32) ^ (((v512 >> 2) & 0x37900000 ^ v512) >> 16) ^ (((v513 >> 2) & 0x3FF76F37000000 ^ v513) >> 24) ^ 0x988D) >> 8)) << 24) | (*(a11 + BYTE1(v520)) << 16);
  LODWORD(v513) = *(a11 + BYTE2(v521)) | (*(a11 + BYTE2(v519)) << 8) | (*(a11 + BYTE2(v520)) << 24) | (*(a11 + BYTE2(v518)) << 16);
  LODWORD(v519) = *(a11 + (v521 >> 24)) | (*(a11 + (v519 >> 24)) << 8) | (*(a11 + (v520 >> 24)) << 24) | (*(a11 + (v518 >> 24)) << 16);
  v595 = *(a11 + (v495 ^ 0x69u)) | (*(a11 + (((((v507 >> 2) & 0x37900000 ^ v507) >> 16) ^ (((v506 >> 2) & 0x8F00 ^ v506) >> 8) ^ (((v508 >> 2) & 0x37000000 ^ v508) >> 24) ^ (((v509 >> 2) & 0x333FF76F00000000 ^ v509) >> 32)) ^ 0xFBu)) << 24);
  v522 = (__ROR8__(a54, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  v523 = v522 ^ 0xDE361A1E0EB919D3;
  v522 ^= 0x32CA3658F2D235ECuLL;
  v524 = (__ROR8__(v523, 8) + v522) ^ 0x3EC7945A9334A12DLL;
  v525 = v524 ^ __ROR8__(v522, 61);
  v526 = (__ROR8__(v524, 8) + v525) ^ 0x4ABA94BA7BE94F4;
  v527 = v526 ^ __ROR8__(v525, 61);
  v528 = (__ROR8__(v526, 8) + v527) ^ 0x87C30A0A7B081733;
  v529 = __ROR8__(v527, 61);
  v530 = (((v528 >> (v444 & 8) >> (~v444 & 8)) | (v528 << 56)) + (v528 ^ v529)) ^ 0x257DF8190A0FAA7CLL;
  v531 = v530 ^ __ROR8__(v528 ^ v529, 61);
  v532 = (__ROR8__(v530, 8) + v531) ^ 0x2E769D09049CAA6ALL;
  v533 = v532 ^ __ROR8__(v531, 61);
  v534 = (__ROR8__(v532, 8) + v533) ^ 0xCAC8DE2EE114DF37;
  v535 = __ROR8__(v534, 8);
  v536 = __ROR8__((a54 + 8) & 0xFFFFFFFFFFFFFFF8, 8) - 0x2607A7720729A79;
  v537 = v534 ^ __ROR8__(v533, 61);
  *(&v538 + 1) = v536 ^ 0x32CA3658F2D235ECLL;
  *&v538 = v536;
  v539 = (__ROR8__(v536 ^ 0xDE361A1E0EB919D3, 8) + (v536 ^ 0x32CA3658F2D235ECLL)) ^ 0x3EC7945A9334A12DLL;
  v540 = __ROR8__(v539, 8);
  v541 = v539 ^ (v538 >> 61);
  *(&v538 + 1) = v541 ^ 1;
  *&v538 = v541;
  v542 = (v541 ^ 1) + v540;
  v543 = __ROR8__(v542 ^ 0x4ABA94BA7BE94F4, 8);
  v544 = (v538 >> 61) ^ v542;
  *(&v538 + 1) = v544 ^ 0x4ABA94BA7BE94F4;
  *&v538 = v544;
  v545 = (v543 + (v544 ^ 0x4ABA94BA7BE94F4)) ^ 0x87C30A0A7B081733 ^ (v538 >> 61);
  v546 = (__ROR8__((v543 + *(&v538 + 1)) ^ 0x87C30A0A7B081733, 8) + v545) ^ 0x257DF8190A0FAA7CLL;
  v547 = v546 ^ __ROR8__(v545, 61);
  v548 = (v547 + __ROR8__(v546, 8)) ^ 0x2E769D09049CAA6ALL;
  *&v538 = __ROR8__(v547, 61);
  v549 = __ROR8__(((v548 ^ v538) + (v548 >> 8) + (v548 << 56)) ^ 0xCAC8DE2EE114DF37, 8);
  v550 = __ROR8__((a54 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v551 = ((v548 ^ v538) + (v548 >> 8) + (v548 << 56)) ^ 0xCAC8DE2EE114DF37 ^ __ROR8__(v548 ^ v538, 61);
  v552 = (v550 - 0x2607A7720729A79) ^ 0x32CA3658F2D235ECLL;
  v553 = (__ROR8__((v550 - 0x2607A7720729A79) ^ 0xDE361A1E0EB919D3, 8) + v552) ^ 0x3EC7945A9334A12DLL;
  v554 = v553 ^ __ROR8__(v552, 61);
  v555 = (v554 + __ROR8__(v553, 8)) ^ 0x4ABA94BA7BE94F4;
  v556 = v555 ^ __ROR8__(v554, 61);
  v557 = (__ROR8__(v555, 8) + v556) ^ 0x87C30A0A7B081733;
  *&v538 = __ROR8__(v556, 61);
  v558 = v557 ^ v538;
  v559 = ((v557 ^ v538) + (v557 << 56) + (v557 >> 8)) ^ 0x257DF8190A0FAA7CLL;
  v560 = v559 ^ __ROR8__(v558, 61);
  v561 = (v560 + __ROR8__(v559, 8)) ^ 0x2E769D09049CAA6ALL;
  v562 = v561 ^ __ROR8__(v560, 61);
  v563 = __ROR8__(v561, 8) + v562;
  v564 = (v551 + v549) ^ 0x67C4AB124F7C297BLL;
  LOBYTE(v497) = 8 * (a54 & 7);
  v565 = ((v535 + v537) ^ 0x67C4AB124F7C297BLL) >> v497;
  v566 = v565 + 32 * (v564 << (v497 ^ 0x3Bu));
  v567 = (v563 ^ __ROR8__(v562, 61) ^ 0x2C8DE2EE114DF37) + __ROR8__(v563 ^ 0xCAC8DE2EE114DF37, 8);
  v594 = v566 >> 24;
  v593 = v566 >> 16;
  v591 = v566 >> 8;
  v592 = HIDWORD(v566);
  v590 = v566 >> 40;
  LOBYTE(v506) = *(a52 + ((BYTE5(v566) ^ a46) ^ 0x40)) + (BYTE5(v566) ^ a46 ^ 0x97);
  v586 = HIWORD(v566);
  v589 = HIBYTE(v566);
  LOBYTE(v566) = *(a52 + ((a46 ^ (v564 >> v497)) ^ 0x23)) + (a46 ^ (v564 >> v497) ^ 0xF4);
  v568 = (v564 >> v497) + 32 * ((v567 ^ 0x7C4AB124F7C297BLL) << (v497 ^ 0x3Bu));
  v587 = v564 >> v497;
  v588 = v568 >> 8;
  v585 = v568 >> 16;
  v584 = v568 >> 24;
  v569 = *(a52 + ((a46 ^ (((v564 >> v497) + 32 * ((v567 ^ 0x4F7C297B) << (v497 ^ 0x3B))) >> 24)) ^ 0x62)) + (a46 ^ (v568 >> 24) ^ 0xB5);
  v581 = HIDWORD(v568);
  v583 = v568 >> 40;
  LODWORD(v567) = *(a52 + ((a46 ^ BYTE5(v568)) ^ 0x61)) + (a46 ^ (v568 >> 40) ^ 0xB6);
  v582 = HIWORD(v568);
  v580 = HIBYTE(v568);
  LODWORD(v512) = v512 ^ 0x32ABF226;
  LOBYTE(v474) = v512 ^ (*(a52 + ((BYTE1(v566) ^ a46) ^ 0xD0)) + (BYTE1(v566) ^ a46 ^ 7)) ^ 0xA;
  LOBYTE(v549) = (*(a52 + (((v565 + 32 * (v564 << (v497 ^ 0x3B))) >> 24) ^ a46 ^ 0x59)) + (((v565 + 32 * (v564 << (v497 ^ 0x3B))) >> 24) ^ a46 ^ 0x8E)) ^ BYTE2(v512);
  LOBYTE(v512) = (*(a52 + ((a46 ^ BYTE1(v568)) ^ 0x8DLL)) + (a46 ^ BYTE1(v568) ^ 0x5A)) ^ ((v519 ^ 0x3F9B9855) >> 24);
  LOBYTE(v564) = (*(a52 + ((a46 ^ BYTE2(v568)) ^ 0x78)) + (a46 ^ BYTE2(v568) ^ 0xAF)) ^ ((v519 ^ 0x3F9B9855) >> 16);
  v570 = v569 ^ ((v519 ^ 0x3F9B9855) >> 8);
  v571 = *(&off_100477F30 + (a8 ^ 0x16F8)) - 4;
  LODWORD(v568) = v571[((*(a52 + ((BYTE2(v566) ^ a46) ^ 0x39)) + (BYTE2(v566) ^ a46 ^ 0xEE)) ^ BYTE3(v512)) ^ 0xA];
  LODWORD(v537) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[((*(a52 + ((v565 ^ a46) ^ 0xA0)) + (v565 ^ a46 ^ 0x77)) ^ BYTE1(v512)) ^ 0xA];
  LODWORD(v562) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v549 ^ 0xA];
  v572 = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v564 ^ 0xA];
  v573 = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  v574 = v571[v513 ^ 0x93 ^ v506 ^ 0xA] ^ 0x7D ^ ((v571[v513 ^ 0x93 ^ v506 ^ 0xA] ^ 0x7Du) >> 4) ^ ((v571[v513 ^ 0x93 ^ v506 ^ 0xA] >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[((*(a52 + ((BYTE4(v566) ^ a46) ^ 0xFELL)) + (BYTE4(v566) ^ a46 ^ 0x29)) ^ ((v513 ^ 0xD293) >> 8)) ^ 0xA];
  v575 = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v519 ^ 0x55 ^ v566 ^ 0xA];
  LODWORD(v535) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[((*(a52 + ((BYTE6(v566) ^ a46) ^ 0x77)) + (BYTE6(v566) ^ a46 ^ 0xA0)) ^ ((v513 ^ 0xED93D293) >> 24)) ^ 0xA];
  LOBYTE(v519) = (*(a52 + ((HIBYTE(v566) ^ a46) ^ 0xB0)) + (HIBYTE(v566) ^ a46 ^ 0x67)) ^ BYTE2(v513) ^ 0x93 ^ 0xA;
  v576 = v562;
  LODWORD(v513) = v571[v519] ^ 0x7D ^ ((v571[v519] ^ 0x7Du) >> 4) ^ ((v571[v519] >> 7) | 0xFFFFFFD4);
  LODWORD(v519) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v512 ^ 0xA];
  v577 = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v570 ^ 0xA];
  LODWORD(v503) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = (v595 | (*(a11 + v521) << 16) | (*(a11 + v520) << 8)) ^ 0x501A7C06;
  LODWORD(v521) = v571[v595 ^ 6 ^ v567 ^ 0xA];
  LODWORD(v512) = v571[((*(a52 + ((a46 ^ HIBYTE(v568)) ^ 0x58)) + (a46 ^ HIBYTE(v568) ^ 0x8F)) ^ BYTE2(v568)) ^ 0xA];
  LODWORD(v566) = v512 ^ 0x7D ^ ((v512 ^ 0x7D) >> 4) ^ ((v512 >> 7) | 0xFFFFFFD4);
  LODWORD(v512) = v571[((*(a52 + ((a46 ^ BYTE4(v568)) ^ 0x4FLL)) + (a46 ^ BYTE4(v568) ^ 0x98)) ^ BYTE1(v568)) ^ 0xA];
  LODWORD(v568) = v571[((*(a52 + ((a46 ^ BYTE6(v568)) ^ 0x9CLL)) + (a46 ^ BYTE6(v568) ^ 0x4B)) ^ BYTE3(v568)) ^ 0xA];
  a54[1] = v571[v474] ^ 0x7D ^ ((v571[v474] ^ 0x7Du) >> 4) ^ ((v571[v474] >> 7) | 0xD4);
  *a54 = v576;
  a54[3] = v572;
  a54[2] = v537;
  a54[5] = v574;
  a54[4] = v575;
  a54[8] = v535;
  a54[7] = v513;
  a54[6] = v519;
  a54[9] = v577;
  a54[11] = v503;
  a54[10] = v573;
  a54[13] = v521 ^ 0x7D ^ ((v521 ^ 0x7D) >> 4) ^ ((v521 >> 7) | 0xD4);
  a54[15] = v566;
  a54[12] = v512 ^ 0x7D ^ ((v512 ^ 0x7D) >> 4) ^ ((v512 >> 7) | 0xD4);
  a54[14] = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xD4);
  if (a51 < 0x4493D56E != a49 + 1150539134 < 0x4493D56E)
  {
    v578 = a51 < 0x4493D56E;
  }

  else
  {
    v578 = a49 + 1150539134 < a51;
  }

  return (*(a55 + 8 * (a8 ^ (13769 * v578))))(v577, v572, v573, v574, v575, a8 - 4886, a49, a8, a9, a10, a11, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v565, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a54 + 16);
}

uint64_t sub_1000D525C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a20 = a17;
  a21 = &a16;
  a22 = (v23 + 1844) ^ (1710126949 * ((&a18 & 0xA6482EBC | ~(&a18 | 0xA6482EBC)) ^ 0x6BAC8AD3));
  a23 = &a12;
  (*(v24 + 8 * (v23 ^ 0x20BD)))(&a18);
  a20 = a17;
  a21 = &a14;
  a19 = (v23 + 1738) ^ (33731311 * ((&a18 - 548530111 - 2 * (&a18 & 0xDF4E1841)) ^ 0xE6B8D262));
  (*(v24 + 8 * (v23 + 8087)))(&a18);
  LODWORD(a21) = v23 - 2008441969 * ((&a18 & 0x5C8F79E7 | ~(&a18 | 0x5C8F79E7)) ^ 0xEBE9D216) + 4171;
  a20 = a17;
  v25 = (*(v24 + 8 * (v23 ^ 0x2049)))(&a18);
  return (*(v24 + 8 * ((11 * (a18 == v23 + 16256509)) ^ v23)))(v25);
}

uint64_t sub_1000D53C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((2 * (&a15 & 0x7EED5830) - &a15 - 2129483825) ^ 0xB309FC5F);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((57 * (a16 == 16257999)) ^ 0xEC8u)))(v17);
}

uint64_t sub_1000D5510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 - 380) ^ (33731311 * ((((2 * &a13) | 0x854E64F8) - &a13 - 1118253692) ^ 0x7B51F85F));
  a15 = a10;
  a16 = &a12;
  (*(v17 + 8 * (v16 ^ 0x2B71)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * ((&a13 - 1710814488 - 2 * (&a13 & 0x9A070AE8)) ^ 0xD29E5EE6) + 2053;
  a15 = a10;
  v19 = (*(v17 + 8 * (v16 + 6019)))(&a13);
  return (*(v17 + 8 * (((((v16 - 1) ^ (a13 == v18)) & 1) * ((13 * (v16 ^ 0xF0F)) ^ 0xE18)) ^ v16)))(v19);
}

uint64_t sub_1000D5650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = (v34 + 229020671) & 0xF2596FCB;
  if (((a21 - v34) | (v34 - a21)) <= (v38 - 972))
  {
    v39 = 0x80000000;
  }

  else
  {
    v39 = -2147483647;
  }

  *v35 = v39 + ~v34;
  (*(v36 + 8 * (v34 + 9604)))(a34);
  v40 = v35[(v38 + 5694) ^ 0x1A08];
  v41 = v35[398] ^ ((v35[2] & 0x7FFFFFFE | v40 & 0x80000000) >> 1) ^ *(v37 + 4 * (v35[2] & 1));
  *v35 = v35[397] ^ ((v40 & 0x7FFFFFFE | *v35 & 0x80000000) >> 1) ^ *(v37 + 4 * (v40 & 1));
  v35[1] = v41;
  return (*(v36 + 8 * (v38 + 1774)))();
}

uint64_t sub_1000D57B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x4D0] + 20);
  if (v5)
  {
    if (v5 == 1)
    {
      (*(a4 + 8 * (v4 ^ 0x31E5)))(STACK[0x738], 0, 32);
      v6 = STACK[0x3E8];
      LODWORD(STACK[0x3C0]) = (v4 + 1621574764) & 0x9F58B77F;
      LODWORD(STACK[0x390]) = 197499121;
      v7 = 134 * (v4 ^ 0x1462);
      LODWORD(STACK[0x3B0]) = v7;
      LODWORD(STACK[0x3A0]) = v7 ^ 0x383;
      return sub_1000FCE70(v6, &STACK[0x5F0]);
    }

    else
    {
      return sub_10011E628(a1, a2, a3, a4);
    }
  }

  else
  {
    v9 = STACK[0x5F0];
    STACK[0x778] = &STACK[0x4B0];
    STACK[0x528] = *(a4 + 8 * (v4 - 4993));
    STACK[0x828] = 0;
    LODWORD(STACK[0x62C]) = 1481390186;
    LODWORD(STACK[0x78C]) = 0;
    return (*(a4 + 8 * (((v9 == 0) * ((31 * (v4 ^ 0x1402)) ^ 0xB94)) ^ (v4 + 3988))))();
  }
}

uint64_t sub_1000D5968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, int a14, char a15, int a16, unsigned int a17, uint64_t a18, char *a19)
{
  a17 = (v20 + 591) ^ (33731311 * ((((2 * &a16) | 0xFB183242) - &a16 - 2106333473) ^ 0x447AD302));
  a18 = a12;
  a19 = &a11;
  (*(v19 + 8 * (v20 + 6940)))(&a16);
  a18 = a12;
  a19 = &a15;
  a17 = (v20 + 591) ^ (33731311 * (((&a16 | 0x24527D6C) - (&a16 & 0x24527D6C)) ^ 0x1DA4B74F));
  (*(v19 + 8 * (v20 + 6940)))(&a16);
  LODWORD(a19) = v20 - 2008441969 * ((&a16 - 2061126652 - 2 * (&a16 & 0x8525B404)) ^ 0xCDBCE00A) + 3024;
  a18 = a12;
  v21 = (*(v19 + 8 * (v20 ^ 0x2FD6)))(&a16);
  return (*(v19 + 8 * (((a16 == 16257999) * (((v20 + 1531) | 0x601) ^ 0x3FBF)) ^ v20)))(v21);
}

uint64_t sub_1000D5B0C()
{
  v4 = STACK[0x860] + 56;
  v5 = STACK[0x538];
  STACK[0x390] = STACK[0x860] + 72;
  STACK[0x380] = STACK[0x460];
  *&STACK[0x3A0] = xmmword_1003EAE50;
  return (*(v3 + 8 * ((231 * (v5 - v4 < ((((v0 + 2005439634) & 0x88777FEB ^ 0x1F60) + 2290) ^ 0x1185uLL))) ^ (((v0 + 2005439634) & 0x88777FEB) - 1617))))(0x4DE9423B6F16D00FLL, vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(0x9508DCB2F33ECE2BLL), vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL), vdupq_n_s64(0x4DE9423B6F16E7D2uLL), vdupq_n_s64(v1), vdupq_n_s64(v2), vdupq_n_s64(0xD8BAC2C7EF8C3B7CLL));
}

uint64_t sub_1000D5D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 - 4954) ^ (33731311 * (((&a15 | 0x7C05676B) - (&a15 & 0x7C05676B)) ^ 0x45F3AD48));
  a17 = a13;
  a18 = &a12;
  (*(v19 + 8 * (v18 ^ 0x3A9F)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * ((2 * (&a15 & 0x18BA2B60) - &a15 - 414853985) ^ 0xAFDC8091) - 2521;
  a17 = a13;
  v20 = (*(v19 + 8 * (v18 ^ 0x3A6D)))(&a15);
  return (*(v19 + 8 * ((16343 * (((v18 + 43) ^ (a15 == (v18 ^ 0x86F) + 16251958)) & 1)) ^ v18)))(v20);
}

uint64_t sub_1000D5EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((((&a12 | 0x25A12B46) ^ 0xFFFFFFFE) - (~&a12 | 0xDA5ED4B9)) ^ 0xE8458F29);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((12309 * (a13 == 16257999)) ^ 0x109Eu)))(v14);
}

uint64_t sub_1000D5F60(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = LODWORD(STACK[0x360]);
  if (v73 == 17168)
  {
    return (*(a71 + 8 * ((v72 - 2852) ^ (5916 * (v71 == a2 + 4)))))();
  }

  if (v73 == 20706 || v73 == 33980)
  {
    STACK[0x548] = a1;
  }

  v75 = *STACK[0x518];
  v76 = STACK[0x810];
  STACK[0x3D0] = STACK[0x810];
  STACK[0x5A0] = 0;
  LODWORD(STACK[0x874]) = a2;
  STACK[0x4E8] = 0;
  if (v75)
  {
    v77 = v76 == 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = !v77;
  return (*(a71 + 8 * ((v78 * (v72 - 5886)) ^ (v72 + 919))))();
}

uint64_t sub_1000D6020()
{
  *(v2 - 232) = &STACK[0xC97];
  *(v2 - 220) = (v0 + 2075) ^ (1824088897 * ((((v2 - 232) | 0x2B655604) - (v2 - 232) + ((v2 - 232) & 0xD49AA9F8)) ^ 0x730C8566));
  v3 = (*(v1 + 8 * (v0 ^ 0x308F)))(v2 - 232);
  return (*(v1 + 8 * (((*(v2 - 224) == 16257999) * (((v0 - 4685) | 0xA) ^ 0x32B6)) ^ v0)))(v3, 197499219);
}

void sub_1000D6210(char a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v4 = ((*a3 ^ 0x3Cu) << 56) | ((a3[1] ^ 0x3Cu) << 48) | ((a3[2] ^ (((a1 + 110) & 0x68) - 12) & 0xFCu) << 40) | ((a3[3] ^ 0x3Cu) << 32) | ((a3[4] ^ 0x3CLL) << 24) | ((a3[5] ^ 0x3CLL) << 16) | ((a3[6] ^ 0x3CLL) << 8) | a3[7] ^ 0x3CLL;
  **(v3 + 8) = (v4 - ((2 * v4) & 0x255EE531AE292C3CLL) - 0x6D508D6728EB69E2) ^ 0x92AF7298D714961ELL;
  JUMPOUT(0x100080248);
}

uint64_t sub_1000D6388()
{
  v6 = v2 - 1;
  *(v4 + v6) = *(v0 + v6);
  return (*(v5 + 8 * ((v1 + v3 + 1150) ^ (16 * (v6 == ((v3 - 1751495888) & 0xC2523EEF) - 4815)))))();
}

uint64_t sub_1000D6408@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = a1 - 179;
  v24 = (a1 + 546315166) | 0xC80F4908;
  STACK[0x2E0] = &a20;
  *(v22 - 136) = a1 - 179 + ((v22 - 136) ^ 0x321B5B90) * v21 + 2168;
  v25 = (*(v20 + 8 * ((a1 - 179) ^ 0x2DC9)))(v22 - 136);
  return (*(v20 + 8 * ((7 * (*(v22 - 120) != (v24 ^ 0xE86765B6) + (v23 ^ 0x3A2))) ^ v23)))(v25);
}

uint64_t sub_1000D64BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v4);
  return sub_1001B36F0(a4, v5);
}

uint64_t sub_1000D65E8()
{
  *(v3 - 224) = (v0 - 2140797603) ^ (914963389 * ((-1169587322 - ((v3 - 232) | 0xBA498386) + ((v3 - 232) | 0x45B67C79)) ^ 0x694ACD02));
  v4 = (*(v2 + 8 * (v0 ^ 0x2073)))(v3 - 232);
  *v1 = (((v0 + 116) | 0x82) - 31) ^ *(v3 - 232);
  return (*(v2 + 8 * v0))(v4);
}

uint64_t sub_1000D66B4(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = (((a3 ^ 0x23E3) * a7) ^ 0x1BB9) & (v10 + 15);
  v14 = -v11 - v10;
  v16 = (v14 + v8 + v13 + 1) > 0xF;
  v15 = v14 + 2;
  v16 = v16 && (v15 + v9 + v13) > 0xF;
  v17 = v16 && a4 >= (a3 - 335) - 8834;
  v18 = v15 + v7 + v13;
  v20 = v17 && v18 > 0xF;
  return (*(v12 + 8 * ((2038 * v20) ^ a3)))(a1, v10);
}

uint64_t sub_1000D67B0(double a1, int8x16_t a2, int64x2_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v84 = v80 - 16;
  v85 = *(v77 + v84 - 16);
  v86.i64[0] = v77 + v84 + v78;
  v86.i64[1] = v77 + v84 - 6;
  v87.i64[0] = v77 + v84 - 1;
  v87.i64[1] = v77 + v84 - 2;
  *&STACK[0x370] = v87;
  v88.i64[0] = v77 + v84 - 3;
  v88.i64[1] = v77 + v84 - 4;
  v89 = v88;
  *&STACK[0x390] = v88;
  v88.i64[0] = v77 + v84 - 7;
  v88.i64[1] = v77 + v84 - 8;
  v90 = v88;
  *&STACK[0x3A0] = v88;
  *&STACK[0x3B0] = v85;
  v91.i64[0] = v77 + v84 - 9;
  v91.i64[1] = v77 + v84 - 10;
  v88.i64[0] = v77 + v84 - 11;
  v88.i64[1] = v77 + v84 - 12;
  v85.i64[0] = v77 + v84 - 13;
  v85.i64[1] = v77 + v84 - 14;
  v92.i64[0] = v77 + v84 - 15;
  v92.i64[1] = v77 + v84 - 16;
  v93 = vandq_s8(v92, a72);
  v94 = vandq_s8(v85, a72);
  v95 = vandq_s8(v88, a72);
  v96 = vandq_s8(v91, a72);
  v97 = vandq_s8(v90, a72);
  v98 = vandq_s8(v89, a72);
  v99 = vandq_s8(v87, a72);
  v100 = vandq_s8(v86, a72);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), a3);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), a3);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), a3);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), a3);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), a3);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), a3);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), a3);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), a3);
  v109 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), *&STACK[0x360]), v101), *&STACK[0x350]);
  v110 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), *&STACK[0x360]), v102), *&STACK[0x350]);
  v111 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x360]), v103), *&STACK[0x350]);
  v112 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), *&STACK[0x360]), v104), *&STACK[0x350]);
  v113 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), *&STACK[0x360]), v105), *&STACK[0x350]);
  v114 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), *&STACK[0x360]), v106), *&STACK[0x350]);
  v115 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v107, v107), *&STACK[0x360]), v107), *&STACK[0x350]);
  v116 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v108, v108), *&STACK[0x360]), v108), *&STACK[0x350]);
  v117 = veorq_s8(v116, *&STACK[0x340]);
  v118 = veorq_s8(v115, *&STACK[0x340]);
  v119 = veorq_s8(v114, *&STACK[0x340]);
  v120 = veorq_s8(v113, *&STACK[0x340]);
  v121 = veorq_s8(v112, *&STACK[0x340]);
  v122 = veorq_s8(v111, *&STACK[0x340]);
  v123 = veorq_s8(v110, *&STACK[0x340]);
  v124 = veorq_s8(v109, *&STACK[0x340]);
  v125 = veorq_s8(v109, *&STACK[0x330]);
  v126 = veorq_s8(v110, *&STACK[0x330]);
  v127 = veorq_s8(v111, *&STACK[0x330]);
  v128 = veorq_s8(v112, *&STACK[0x330]);
  v129 = veorq_s8(v113, *&STACK[0x330]);
  v130 = veorq_s8(v114, *&STACK[0x330]);
  v131 = veorq_s8(v115, *&STACK[0x330]);
  v132 = veorq_s8(v116, *&STACK[0x330]);
  v133 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v132);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v131);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v130);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v129);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v128);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v127);
  v140 = vaddq_s64(v133, v126);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), *&STACK[0x320]), v141), *&STACK[0x310]), *&STACK[0x300]);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v140, v140), *&STACK[0x320]), v140), *&STACK[0x310]), *&STACK[0x300]);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v139, v139), *&STACK[0x320]), v139), *&STACK[0x310]), *&STACK[0x300]);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v138, v138), *&STACK[0x320]), v138), *&STACK[0x310]), *&STACK[0x300]);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), *&STACK[0x320]), v137), *&STACK[0x310]), *&STACK[0x300]);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), *&STACK[0x320]), v136), *&STACK[0x310]), *&STACK[0x300]);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), *&STACK[0x320]), v135), *&STACK[0x310]), *&STACK[0x300]);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), *&STACK[0x320]), v134), *&STACK[0x310]), *&STACK[0x300]);
  v150 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v154 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v155 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v156 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v157 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v158 = veorq_s8(v145, v153);
  v159 = veorq_s8(v144, v152);
  v160 = veorq_s8(v143, v151);
  v161 = veorq_s8(v142, v150);
  v162 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v161);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v160);
  v170 = vaddq_s64(v167, v159);
  v171 = vaddq_s64(v166, v158);
  v172 = vaddq_s64(v165, v157);
  v173 = vaddq_s64(v164, v156);
  v174 = vaddq_s64(v163, v155);
  v175 = vaddq_s64(v162, v154);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), *&STACK[0x2F0]), v175), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174, v174), *&STACK[0x2F0]), v174), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v173, v173), *&STACK[0x2F0]), v173), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), *&STACK[0x2F0]), v172), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), *&STACK[0x2F0]), v171), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), *&STACK[0x2F0]), v170), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), *&STACK[0x2F0]), v169), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), *&STACK[0x2F0]), v168), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v185 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v186 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v187 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v188 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v189 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v190 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v191 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v192 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v197 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v198 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v191);
  v200 = veorq_s8(vaddq_s64(v192, v184), v81);
  v201 = veorq_s8(vaddq_s64(v193, v185), v81);
  v202 = veorq_s8(vaddq_s64(v194, v186), v81);
  v203 = veorq_s8(vaddq_s64(v195, v187), v81);
  v204 = veorq_s8(vaddq_s64(v196, v188), v81);
  v205 = veorq_s8(vaddq_s64(v197, v189), v81);
  v206 = veorq_s8(vaddq_s64(v198, v190), v81);
  v207 = veorq_s8(v199, v81);
  v208 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v211 = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v212 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v215 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v216 = veorq_s8(v206, v214);
  v217 = veorq_s8(v205, v213);
  v218 = veorq_s8(v204, v212);
  v219 = veorq_s8(v203, v211);
  v220 = veorq_s8(v202, v210);
  v221 = veorq_s8(v201, v209);
  v222 = veorq_s8(v200, v208);
  v223 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v226 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v228 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v229 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v222);
  v231 = veorq_s8(vaddq_s64(v223, v215), v82);
  v232 = veorq_s8(vaddq_s64(v224, v216), v82);
  v233 = veorq_s8(vaddq_s64(v225, v217), v82);
  v234 = veorq_s8(vaddq_s64(v226, v218), v82);
  v235 = veorq_s8(vaddq_s64(v227, v219), v82);
  v236 = veorq_s8(vaddq_s64(v228, v220), v82);
  v237 = veorq_s8(vaddq_s64(v229, v221), v82);
  v238 = veorq_s8(v230, v82);
  v239 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v242 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v243 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v244 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v245 = vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL);
  v246 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v247 = veorq_s8(v237, v245);
  v248 = veorq_s8(v236, v244);
  v249 = veorq_s8(v235, v243);
  v250 = veorq_s8(v234, v242);
  v251 = veorq_s8(v233, v241);
  v252 = veorq_s8(v232, v240);
  v253 = veorq_s8(v231, v239);
  v254 = vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v257 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v258 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v260 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v253);
  v262 = veorq_s8(vaddq_s64(v254, v246), v83);
  v263 = veorq_s8(vaddq_s64(v255, v247), v83);
  v264 = veorq_s8(vaddq_s64(v256, v248), v83);
  v265 = veorq_s8(vaddq_s64(v257, v249), v83);
  v266 = veorq_s8(vaddq_s64(v258, v250), v83);
  v267 = veorq_s8(vaddq_s64(v259, v251), v83);
  v268 = veorq_s8(vaddq_s64(v260, v252), v83);
  v269 = veorq_s8(v261, v83);
  v270 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v271 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v272 = veorq_s8(v267, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v273 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v274 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v275 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v276 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v277 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v278 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v280 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v281 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v285 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v277);
  v286 = vaddq_s64(v284, v276);
  v287 = vaddq_s64(v283, v275);
  v288 = vaddq_s64(v282, v274);
  v289 = vaddq_s64(v281, v273);
  v290 = vaddq_s64(v280, v272);
  v291 = vaddq_s64(v279, v271);
  v292 = vaddq_s64(v278, v270);
  v293 = veorq_s8(vaddq_s64(vsubq_s64(v292, vandq_s8(vaddq_s64(v292, v292), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(v291, vandq_s8(vaddq_s64(v291, v291), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v295 = veorq_s8(vaddq_s64(vsubq_s64(v290, vandq_s8(vaddq_s64(v290, v290), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v296 = veorq_s8(vaddq_s64(vsubq_s64(v289, vandq_s8(vaddq_s64(v289, v289), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v297 = veorq_s8(vaddq_s64(vsubq_s64(v288, vandq_s8(vaddq_s64(v288, v288), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v298 = veorq_s8(vaddq_s64(vsubq_s64(v287, vandq_s8(vaddq_s64(v287, v287), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v299 = veorq_s8(vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v300 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v301 = veorq_s8(v300, vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL));
  v302 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v303 = veorq_s8(v298, vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL));
  v304 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL));
  v305 = veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL));
  v306 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v307 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v308 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL));
  v309 = vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL);
  v310 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v311 = vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL);
  v312 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v313 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL), v305);
  v314 = vaddq_s64(v312, v304);
  v315 = vaddq_s64(v311, v303);
  v303.i64[0] = v76 + v84 + 5;
  v303.i64[1] = v76 + v84 + 4;
  v316 = vaddq_s64(v310, v302);
  v302.i64[0] = v76 + v84 + 9;
  v302.i64[1] = v76 + v84 + 8;
  v304.i64[0] = v76 + v84 + 7;
  v304.i64[1] = v76 + v84 + 6;
  v317 = *&STACK[0x290];
  *&STACK[0x380] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL), v308), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a2)));
  v305.i64[0] = v76 + v84 + 3;
  v305.i64[1] = v76 + v84 + 2;
  v318 = veorq_s8(vaddq_s64(v309, v301), v317);
  v319 = veorq_s8(v316, v317);
  v320 = veorq_s8(v315, v317);
  v321 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v306), v317);
  v322 = vandq_s8(vshlq_n_s64(v92, 3uLL), a2);
  v323 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v307), v317), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), a2)));
  v324 = vshlq_u64(v321, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), a2)));
  v325 = vshlq_u64(veorq_s8(v313, v317), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), a2)));
  *&STACK[0x390] = vshlq_u64(v320, vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a2)));
  *&STACK[0x3A0] = vshlq_u64(veorq_s8(v314, v317), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), a2)));
  v326 = vshlq_u64(v319, vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), a2)));
  v327 = vshlq_u64(v318, vnegq_s64(v322));
  v328 = vandq_s8(v305, a72);
  v329 = vandq_s8(v304, a72);
  v330 = vandq_s8(v302, a72);
  v331 = vandq_s8(v303, a72);
  v332 = vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL);
  v333 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v334 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), a3);
  v335 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), a3);
  v336 = veorq_s8(v335, *&STACK[0x280]);
  v337 = veorq_s8(v334, *&STACK[0x280]);
  v338 = veorq_s8(v334, *&STACK[0x270]);
  v339 = veorq_s8(v335, *&STACK[0x270]);
  v340 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v338), *&STACK[0x260]);
  v341 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL), v339), *&STACK[0x260]);
  v342 = vsraq_n_u64(vshlq_n_s64(v338, 3uLL), v338, 0x3DuLL);
  v343 = veorq_s8(v341, vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL));
  v344 = veorq_s8(v340, v342);
  v345 = vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL);
  v346 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v344);
  v347 = veorq_s8(vaddq_s64(v345, v343), *&STACK[0x250]);
  v348 = veorq_s8(v346, *&STACK[0x250]);
  v349 = vsraq_n_u64(vshlq_n_s64(v343, 3uLL), v343, 0x3DuLL);
  v350 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v344, 3uLL), v344, 0x3DuLL));
  v351 = veorq_s8(v347, v349);
  v352 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v353 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v351);
  v354 = veorq_s8(vaddq_s64(v352, v350), v81);
  v355 = veorq_s8(v353, v81);
  v356 = vsraq_n_u64(vshlq_n_s64(v350, 3uLL), v350, 0x3DuLL);
  v357 = veorq_s8(v355, vsraq_n_u64(vshlq_n_s64(v351, 3uLL), v351, 0x3DuLL));
  v358 = veorq_s8(v354, v356);
  v359 = vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL);
  v360 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), v358);
  v361 = veorq_s8(vaddq_s64(v359, v357), v82);
  v362 = veorq_s8(v360, v82);
  v363 = vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL);
  v364 = veorq_s8(v362, vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL));
  v365 = veorq_s8(v361, v363);
  v366 = vsraq_n_u64(vshlq_n_s64(v362, 0x38uLL), v362, 8uLL);
  v367 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL), v365);
  v368 = veorq_s8(vaddq_s64(v366, v364), v83);
  v369 = veorq_s8(v367, v83);
  v370 = vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL);
  v371 = veorq_s8(v369, vsraq_n_u64(vshlq_n_s64(v365, 3uLL), v365, 0x3DuLL));
  v372 = veorq_s8(v368, v370);
  v373 = vsraq_n_u64(vshlq_n_s64(v369, 0x38uLL), v369, 8uLL);
  v374 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v368, 0x38uLL), v368, 8uLL), v372);
  v375 = veorq_s8(vaddq_s64(v373, v371), *&STACK[0x240]);
  v376 = veorq_s8(v374, *&STACK[0x240]);
  v377 = veorq_s8(v376, vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL));
  v378 = veorq_s8(v375, vsraq_n_u64(vshlq_n_s64(v371, 3uLL), v371, 0x3DuLL));
  v379 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v371.i64[0] = v76 + v84 + 1;
  v371.i64[1] = v76 + v84;
  v380 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL), v378);
  v378.i64[0] = v76 + v84 - 1;
  v378.i64[1] = v76 + v84 - 2;
  v381 = vaddq_s64(v379, v377);
  v382 = vsubq_s64(v380, vandq_s8(vaddq_s64(v380, v380), *&STACK[0x230]));
  v380.i64[0] = v76 + v84 - 3;
  v380.i64[1] = v76 + v84 - 4;
  v383 = vaddq_s64(v333, a3);
  v504.val[3] = veorq_s8(v325, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v381, vandq_s8(vaddq_s64(v381, v381), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v305, 3uLL), a2))));
  v504.val[1] = veorq_s8(v324, vshlq_u64(veorq_s8(vaddq_s64(v382, *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v304, 3uLL), a2))));
  v384 = veorq_s8(v383, *&STACK[0x280]);
  v385 = veorq_s8(v383, *&STACK[0x270]);
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v385), *&STACK[0x260]);
  v387 = veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v388 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387), *&STACK[0x250]);
  v389 = veorq_s8(v388, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v390 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), v389), v81);
  v391 = veorq_s8(v390, vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL));
  v392 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391), v82);
  v393 = veorq_s8(v392, vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL));
  v394 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL), v393), v83);
  v395 = veorq_s8(v394, vsraq_n_u64(vshlq_n_s64(v393, 3uLL), v393, 0x3DuLL));
  v396 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL), v395), *&STACK[0x240]);
  v397 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v395, 3uLL), v395, 0x3DuLL));
  v398 = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v396.i64[0] = v76 + v84 - 5;
  v396.i64[1] = v76 + v84 - 6;
  v399 = vaddq_s64(v398, v397);
  v400 = vaddq_s64(v332, a3);
  v504.val[0] = veorq_s8(v323, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v399, vandq_s8(vaddq_s64(v399, v399), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v302, 3uLL), a2))));
  v401 = veorq_s8(v400, *&STACK[0x280]);
  v402 = veorq_s8(v400, *&STACK[0x270]);
  v403 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL), v402), *&STACK[0x260]);
  v404 = veorq_s8(v403, vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v405 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v404), *&STACK[0x250]);
  v406 = veorq_s8(v405, vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL));
  v407 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL), v406), v81);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL));
  v409 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), v408), v82);
  v410 = veorq_s8(v409, vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v411 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL), v410), v83);
  v412 = veorq_s8(v411, vsraq_n_u64(vshlq_n_s64(v410, 3uLL), v410, 0x3DuLL));
  v413 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL), v412), *&STACK[0x240]);
  v414 = veorq_s8(v413, vsraq_n_u64(vshlq_n_s64(v412, 3uLL), v412, 0x3DuLL));
  v415 = vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL);
  v416 = vandq_s8(v396, a72);
  v417 = vaddq_s64(v415, v414);
  v418 = vandq_s8(v380, a72);
  v419 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v417, vandq_s8(vaddq_s64(v417, v417), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v303, 3uLL), a2)));
  v420 = vandq_s8(v378, a72);
  v504.val[2] = veorq_s8(*&STACK[0x380], v419);
  v421 = vandq_s8(v371, a72);
  v422 = vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL);
  v423 = vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL);
  v424 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL), a3);
  v425 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418, 0x38uLL), v418, 8uLL), a3);
  v421.i64[0] = vqtbl4q_s8(v504, *&STACK[0x200]).u64[0];
  v426 = veorq_s8(v425, *&STACK[0x280]);
  v427 = veorq_s8(v424, *&STACK[0x280]);
  v428 = veorq_s8(v424, *&STACK[0x270]);
  v429 = veorq_s8(v425, *&STACK[0x270]);
  v430 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL), v428), *&STACK[0x260]);
  v431 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL), v429), *&STACK[0x260]);
  v432 = vsraq_n_u64(vshlq_n_s64(v428, 3uLL), v428, 0x3DuLL);
  v433 = veorq_s8(v431, vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL));
  v434 = veorq_s8(v430, v432);
  v435 = vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL);
  v436 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL), v434);
  v437 = veorq_s8(vaddq_s64(v435, v433), *&STACK[0x250]);
  v438 = veorq_s8(v436, *&STACK[0x250]);
  v439 = vsraq_n_u64(vshlq_n_s64(v433, 3uLL), v433, 0x3DuLL);
  v440 = veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL));
  v441 = veorq_s8(v437, v439);
  v442 = vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL);
  v443 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL), v441);
  v444 = veorq_s8(vaddq_s64(v442, v440), v81);
  v445 = veorq_s8(v443, v81);
  v446 = vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL);
  v447 = veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL));
  v448 = veorq_s8(v444, v446);
  v449 = vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL);
  v450 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL), v448);
  v451 = veorq_s8(vaddq_s64(v449, v447), v82);
  v452 = veorq_s8(v450, v82);
  v453 = vsraq_n_u64(vshlq_n_s64(v447, 3uLL), v447, 0x3DuLL);
  v454 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL));
  v455 = veorq_s8(v451, v453);
  v456 = vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL);
  v457 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), v455);
  v458 = veorq_s8(vaddq_s64(v456, v454), v83);
  v459 = veorq_s8(v457, v83);
  v460 = vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL);
  v461 = veorq_s8(v459, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v462 = veorq_s8(v458, v460);
  v463 = vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL);
  v464 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v462);
  v465 = veorq_s8(vaddq_s64(v463, v461), *&STACK[0x240]);
  v466 = veorq_s8(v464, *&STACK[0x240]);
  v467 = vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL);
  v468 = veorq_s8(v466, vsraq_n_u64(vshlq_n_s64(v462, 3uLL), v462, 0x3DuLL));
  v469 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v465, 0x38uLL), v465, 8uLL), veorq_s8(v465, v467));
  v470 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), v468);
  v471 = vaddq_s64(v423, a3);
  v504.val[2] = veorq_s8(v327, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v470, vandq_s8(vaddq_s64(v470, v470), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v396, 3uLL), a2))));
  v504.val[1] = veorq_s8(v326, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v469, vandq_s8(vaddq_s64(v469, v469), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v380, 3uLL), a2))));
  v472 = veorq_s8(v471, *&STACK[0x280]);
  v473 = veorq_s8(v471, *&STACK[0x270]);
  v474 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL), v473), *&STACK[0x260]);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v473, 3uLL), v473, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), *&STACK[0x250]);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), v81);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v480 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479), v82);
  v481 = veorq_s8(v480, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v482 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL), v481), v83);
  v483 = veorq_s8(v482, vsraq_n_u64(vshlq_n_s64(v481, 3uLL), v481, 0x3DuLL));
  v484 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482, 0x38uLL), v482, 8uLL), v483), *&STACK[0x240]);
  v485 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484, 0x38uLL), v484, 8uLL), veorq_s8(v484, vsraq_n_u64(vshlq_n_s64(v483, 3uLL), v483, 0x3DuLL)));
  v486 = vaddq_s64(v422, a3);
  v504.val[0] = veorq_s8(*&STACK[0x390], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v485, vandq_s8(vaddq_s64(v485, v485), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v378, 3uLL), a2))));
  v487 = veorq_s8(v486, *&STACK[0x280]);
  v488 = veorq_s8(v486, *&STACK[0x270]);
  v489 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v487, 0x38uLL), v487, 8uLL), v488), *&STACK[0x260]);
  v490 = veorq_s8(v489, vsraq_n_u64(vshlq_n_s64(v488, 3uLL), v488, 0x3DuLL));
  v491 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v489, 0x38uLL), v489, 8uLL), v490), *&STACK[0x250]);
  v492 = veorq_s8(v491, vsraq_n_u64(vshlq_n_s64(v490, 3uLL), v490, 0x3DuLL));
  v493 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL), v492), v81);
  v494 = veorq_s8(v493, vsraq_n_u64(vshlq_n_s64(v492, 3uLL), v492, 0x3DuLL));
  v495 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493, 0x38uLL), v493, 8uLL), v494), v82);
  v496 = veorq_s8(v495, vsraq_n_u64(vshlq_n_s64(v494, 3uLL), v494, 0x3DuLL));
  v497 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v495, 0x38uLL), v495, 8uLL), v496), v83);
  v498 = veorq_s8(v497, vsraq_n_u64(vshlq_n_s64(v496, 3uLL), v496, 0x3DuLL));
  v499 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL), v498), *&STACK[0x240]);
  v500 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v499, 0x38uLL), v499, 8uLL), veorq_s8(v499, vsraq_n_u64(vshlq_n_s64(v498, 3uLL), v498, 0x3DuLL)));
  v501 = veorq_s8(*&STACK[0x3A0], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v500, vandq_s8(vaddq_s64(v500, v500), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v371, 3uLL), a2))));
  v421.i64[1] = vqtbl4q_s8(v504, *&STACK[0x200]).u64[0];
  v502 = vrev64q_s8(v421);
  *(v371.i64[1] - 6) = veorq_s8(vextq_s8(v502, v502, 8uLL), *&STACK[0x3B0]);
  return (*(a74 + 8 * (((v75 + v84 != 0) * v79) ^ v74)))();
}

uint64_t sub_1000D6824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = 476323082 - 1710126949 * ((2 * (&a13 & 0x394FDD38) - &a13 + 1185948357) ^ 0x74AB7955);
  v15 = (*(v14 + 77088))(&a13);
  return (*(v14 + 8 * ((193 * (a14 == 16257999)) ^ 0x87Fu)))(v15);
}

uint64_t sub_1000D68D8()
{
  *v1 = v8;
  v5 = 674 * (v2 ^ 0xCE129708);
  v11 = v9;
  v12 = (v0 + v2 + 256) ^ (1824088897 * ((&v10 & 0x2B4260E6 | ~(&v10 | 0x2B4260E6)) ^ 0x8CD44C7B));
  (*(v3 + 8 * (v0 + v2 + 1522)))(&v10);
  v12 = (v5 + 6324) ^ (1824088897 * (((&v10 | 0x8FBCD527) + (~&v10 | 0x70432AD8)) ^ 0xD7D50644));
  v11 = v7;
  (*(v3 + 8 * (v5 ^ 0x226A)))(&v10);
  return (v4 - 16257999);
}

uint64_t sub_1000D6A00()
{
  LODWORD(STACK[0x794]) = 16215971;
  STACK[0x6B8] = v0;
  STACK[0x670] = *(v2 + 8 * (v1 - 5366));
  return sub_1001C2348(v1 - 1332);
}

uint64_t sub_1000D6A14@<X0>(int a1@<W1>, int a2@<W4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, int8x16_t a6@<Q1>, int64x2_t a7@<Q2>, int8x16_t a8@<Q3>, int64x2_t a9@<Q4>, int8x16_t a10@<Q5>, int8x16_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  v29 = v13 - 8;
  v30.i64[0] = v29 + v12 + 7;
  v30.i64[1] = v29 + v12 + a5 - 3657;
  v31.i64[0] = v29 + v12 + 5;
  v31.i64[1] = v29 + v12 + 4;
  v32.i64[0] = v29 + v12 + 3;
  v32.i64[1] = v29 + v12 + 2;
  v33.i64[0] = v29 + v12 + 1;
  v33.i64[1] = v29 + v12;
  v34 = vandq_s8(v33, *&STACK[0x3B0]);
  v35 = vandq_s8(v32, *&STACK[0x3B0]);
  v36 = vandq_s8(v31, *&STACK[0x3B0]);
  v37 = vandq_s8(v30, *&STACK[0x3B0]);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), a7);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), a7);
  v42 = vaddq_s64(v39, a7);
  v43 = vaddq_s64(v38, a7);
  v44 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v40, v40), a8), v40), a9);
  v45 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v41, v41), a8), v41), a9);
  v46 = veorq_s8(v45, a10);
  v47 = veorq_s8(v44, a10);
  v48 = veorq_s8(v44, a11);
  v49 = veorq_s8(v45, a11);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v51, v51), a12), v51), v15), v16);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), a12), v50), v15), v16);
  v54 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v55 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v56 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55);
  v58 = vaddq_s64(v56, v54);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), v17), v58), v18), v19);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57, v57), v17), v57), v18), v19);
  v61 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, v20), vorrq_s8(v65, v21)), v21), v22);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v20), vorrq_s8(v66, v21)), v21), v22);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v69), v23);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70), v23);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = vaddq_s64(v76, v74);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), v24), v78), v25), v26);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), v24), v77), v25), v26);
  v81 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v27);
  v87 = veorq_s8(v85, v27);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v93 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v42, v42), a8), v42), a9);
  v131.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v92, v90), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a6)));
  v131.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v91, v89), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a6)));
  v94 = veorq_s8(v93, a10);
  v95 = veorq_s8(v93, a11);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), a12), v96), v15), v16);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), v17), v99), v18), v19);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, v20), vorrq_s8(v102, v21)), v21), v22);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v23);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v24), v107), v25), v26);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v27);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL)));
  v112 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), a8), v43), a9);
  v131.val[1] = vshlq_u64(veorq_s8(v111, v28), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a6)));
  v113 = veorq_s8(v112, a10);
  v114 = veorq_s8(v112, a11);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), a12), v115), v15), v16);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), v17), v118), v18), v19);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, v20), vorrq_s8(v121, v21)), v21), v22);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v23);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v24), v126), v25), v26);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v27);
  v131.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a6)));
  *(v29 + v12) = vrev64_s8(*&vqtbl4q_s8(v131, *&STACK[0x3A0]));
  return (*(v14 + 8 * (((a3 != a4 + 8) * a1) ^ a2)))();
}

void sub_1000D6A40(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x3E4]) = 0;
  v14 = STACK[0x538];
  v15 = HIBYTE(LODWORD(STACK[0x538]));
  LODWORD(STACK[0x528]) = a5;
  v16 = STACK[0x360];
  *v16 = v15 - ((v14 >> 23) & 0x7A) - 67;
  v17 = STACK[0x53C];
  v16[(HIBYTE(v17) & 4 ^ 4) + (HIBYTE(v17) & 4)] = HIBYTE(LODWORD(STACK[0x53C])) + (~(LODWORD(STACK[0x53C]) >> 23) | 0x85) - 66;
  v18 = STACK[0x580];
  LOBYTE(STACK[0xFA4]) = HIBYTE(LODWORD(STACK[0x580])) ^ 0xC8;
  v19 = STACK[0x58C];
  LOBYTE(STACK[0xFAC]) = HIBYTE(LODWORD(STACK[0x58C])) ^ 0xC8;
  LOBYTE(STACK[0xFA8]) = HIBYTE(v9) ^ 0xC8;
  LOBYTE(STACK[0xFB0]) = HIBYTE(LODWORD(STACK[0x5A8])) ^ 0xC8;
  LODWORD(STACK[0x500]) = a8;
  v20 = STACK[0x348];
  *(v20 + 20) = HIBYTE(a6) ^ 0xC8;
  v21 = STACK[0x534];
  LOBYTE(STACK[0xFB8]) = HIBYTE(LODWORD(STACK[0x534])) ^ 0xC8;
  LOBYTE(STACK[0xFBC]) = HIBYTE(a7) ^ 0xC8;
  v22 = STACK[0x540];
  LOBYTE(STACK[0xFA1]) = HIWORD(LODWORD(STACK[0x540])) ^ 0xC8;
  LOBYTE(STACK[0xFA5]) = BYTE2(v18) ^ 0xC8;
  *(v20 + 466820233 * (~v10 & 0x4B27E781 | v10 & 0x381u)) = BYTE2(v9) ^ 0xC8;
  LODWORD(STACK[0x55C]) = -v11 - v8 - 1082358265 + v13;
  v23 = v8 - v13;
  v24 = v8 - v13 + 376100986;
  v25 = v11 + v13 - 206064693;
  LODWORD(v16) = v24 ^ v25 ^ (LODWORD(STACK[0x508]) + v8);
  v26 = 601 * (LODWORD(STACK[0x408]) ^ 0x1CC8);
  LODWORD(STACK[0x518]) = v26;
  LODWORD(STACK[0x570]) = (~v10 & 0xDF147756 | v10 & 0x356) + v16;
  v27 = LODWORD(STACK[0x588]) + 1934484913;
  v28 = LODWORD(STACK[0x4F8]) + a1;
  v29 = v27 + (v26 ^ 0x1BC77C68);
  v30 = STACK[0x510];
  v31 = a1 + 2064466855 - LODWORD(STACK[0x510]);
  LODWORD(STACK[0x508]) = v31;
  LODWORD(STACK[0x560]) = v30 - (a1 + 2064466855 + v27);
  v32 = v30 + v29;
  LODWORD(STACK[0x520]) = v32;
  LODWORD(STACK[0x588]) = (v28 + 1440423814 - v30) ^ v31 ^ v32;
  LODWORD(STACK[0x56C]) = (v23 + 910754659) ^ v25;
  v33 = STACK[0x590];
  v34 = HIBYTE(LODWORD(STACK[0x590])) - ((LODWORD(STACK[0x590]) >> 23) & 0x7A);
  v35 = STACK[0x548];
  v36 = HIBYTE(LODWORD(STACK[0x548])) - ((LODWORD(STACK[0x548]) >> 23) & 0x7A);
  LODWORD(STACK[0x510]) = a7;
  v37 = STACK[0x524];
  LODWORD(STACK[0x4F4]) = HIBYTE(LODWORD(STACK[0x524])) - ((LODWORD(STACK[0x524]) >> 23) & 0x7A);
  v38 = STACK[0x550];
  LOBYTE(v28) = HIBYTE(LODWORD(STACK[0x550])) - ((LODWORD(STACK[0x550]) >> 23) & 0x7A);
  LODWORD(STACK[0x4F0]) = HIBYTE(v12) - ((v12 >> 23) & 0x7A);
  v39 = STACK[0x57C];
  LODWORD(STACK[0x4EC]) = HIBYTE(LODWORD(STACK[0x57C])) - ((LODWORD(STACK[0x57C]) >> 23) & 0x7A);
  LODWORD(STACK[0x4FC]) = HIWORD(v39) - ((v39 >> 15) & 0x7A);
  LODWORD(STACK[0x4F8]) = HIWORD(v17) - ((v17 >> 15) & 0x7A);
  LODWORD(STACK[0x4E8]) = HIWORD(v33) - ((v33 >> 15) & 0x7A);
  LODWORD(STACK[0x4E0]) = HIWORD(v37) - ((v37 >> 15) & 0x7A);
  v40 = v35 >> ((BYTE2(v38) & 0x10 ^ 0x10) + (BYTE2(v38) & 0x10));
  LODWORD(STACK[0x4DC]) = (v37 >> 8) - ((v37 >> 7) & 0x7A);
  LOBYTE(v16) = BYTE1(v14) - ((v14 >> 7) & 0x7A);
  v41 = v12 >> (v24 & 8) >> (v24 & 8 ^ 8);
  LOBYTE(v24) = v41 - ((2 * v41) & 0x7A);
  *v20 = HIBYTE(v22) ^ 0xC8;
  LOBYTE(STACK[0xB88]) = v34 - 67;
  LOBYTE(STACK[0xB8C]) = v28 - 67;
  LOBYTE(v28) = v14 - ((2 * v14) & 0x7A);
  LOBYTE(v41) = (~(v14 >> 15) | 0x85) + BYTE2(v14);
  LOBYTE(STACK[0xB94]) = v36 - 67;
  LOBYTE(STACK[0xB98]) = LODWORD(STACK[0x4F4]) - 67;
  LOBYTE(STACK[0xB90]) = LODWORD(STACK[0x4EC]) - 67;
  LOBYTE(STACK[0xB9C]) = LODWORD(STACK[0x4F0]) - 67;
  LODWORD(v20) = STACK[0x5A8];
  LOBYTE(STACK[0xFB1]) = HIWORD(LODWORD(STACK[0x5A8])) ^ 0xC8;
  LOBYTE(STACK[0xFB5]) = HIWORD(LODWORD(STACK[0x584])) ^ 0xC8;
  LOWORD(v14) = v19;
  LOBYTE(STACK[0xFAD]) = BYTE2(v19) ^ 0xC8;
  LOBYTE(STACK[0xFB9]) = BYTE2(v21) ^ 0xC8;
  v42 = STACK[0x510];
  LOBYTE(STACK[0xFBD]) = HIWORD(LODWORD(STACK[0x510])) ^ 0xC8;
  LOBYTE(STACK[0xB89]) = LODWORD(STACK[0x4E8]) - 67;
  LOBYTE(STACK[0xB8D]) = BYTE2(v38) - ((v38 >> 15) & 0x7A) - 67;
  LOBYTE(STACK[0xB91]) = LODWORD(STACK[0x4FC]) - 67;
  LOBYTE(STACK[0xB95]) = v40 - ((2 * v40) & 0x7A) - 67;
  LOBYTE(STACK[0xB85]) = LODWORD(STACK[0x4F8]) - 67;
  LOBYTE(STACK[0xB99]) = LODWORD(STACK[0x4E0]) - 67;
  LOBYTE(STACK[0xB81]) = v41 - 66;
  LOBYTE(STACK[0xB9D]) = BYTE2(v12) - ((v12 >> 15) & 0x7A) - 67;
  LOBYTE(STACK[0xFA2]) = BYTE1(v22) ^ 0xC8;
  v43 = STACK[0x580];
  LOBYTE(STACK[0xFA6]) = BYTE1(LODWORD(STACK[0x580])) ^ 0xC8;
  LOBYTE(v32) = v14;
  LOBYTE(STACK[0xFAE]) = BYTE1(v14) ^ 0xC8;
  v44 = STACK[0x528];
  LOBYTE(STACK[0xFB6]) = BYTE1(LODWORD(STACK[0x528])) ^ 0xC8;
  LOBYTE(STACK[0xFB2]) = BYTE1(v20) ^ 0xC8;
  LOBYTE(STACK[0xB82]) = v16 - 67;
  LOBYTE(STACK[0xB92]) = (~(v39 >> 7) | 0x85) + BYTE1(v39) - 66;
  LOBYTE(STACK[0xB9A]) = LODWORD(STACK[0x4DC]) - 67;
  LOBYTE(STACK[0xB96]) = BYTE1(v35) - ((v35 >> 7) & 0x7A) - 67;
  LOBYTE(STACK[0xB8A]) = BYTE1(v33) - ((v33 >> 7) & 0x7A) - 67;
  LODWORD(STACK[0x560]) += 807777977;
  LOBYTE(STACK[0xB9E]) = v24 - 67;
  v45 = STACK[0x500];
  v46 = STACK[0x504] & 0xB ^ 9;
  LOBYTE(STACK[0xB8E]) = BYTE1(v38) - ((v38 >> 7) & 0x7A) - 67;
  LOBYTE(STACK[0xB86]) = BYTE1(v17) - ((v17 >> 7) & 0x7A) - 67;
  LOBYTE(STACK[0xB83]) = v28 - 67;
  *(STACK[0x360] + v46 + (STACK[0x54C] & 0xB)) = v33 - ((2 * v33) & 0x7A) - 67;
  LOBYTE(STACK[0xFAA]) = BYTE1(v45) ^ 0xC8;
  LOBYTE(STACK[0xFBA]) = BYTE1(v21) ^ 0xC8;
  LOBYTE(STACK[0xFBE]) = BYTE1(v42) ^ 0xC8;
  LOBYTE(STACK[0xFA3]) = v22 ^ 0xC8;
  LOBYTE(STACK[0xFAB]) = v45 ^ 0xC8;
  LOBYTE(STACK[0xFAF]) = v32 ^ 0xC8;
  LOBYTE(STACK[0xFA7]) = v43 ^ 0xC8;
  LOBYTE(STACK[0xFBF]) = v42 ^ 0xC8;
  LOBYTE(STACK[0xFB7]) = v44 ^ 0xC8;
  LOBYTE(STACK[0xFBB]) = v21 ^ 0xC8;
  LOBYTE(STACK[0xFB3]) = v20 ^ 0xC8;
  LOBYTE(STACK[0xB87]) = v17 + (~(2 * v17) | 0x85) - 66;
  LOBYTE(STACK[0xB93]) = v39 - ((2 * v39) & 0x7A) - 67;
  LOBYTE(STACK[0xB8F]) = v38 + (~(2 * v38) | 0x85) - 66;
  LOBYTE(STACK[0xB97]) = v35 - ((2 * v35) & 0x7A) - 67;
  LOBYTE(STACK[0xB9B]) = v37 - ((2 * v37) & 0x7A) - 67;
  LOBYTE(STACK[0xB9F]) = v12 - ((2 * v12) & 0x7A) - 67;
  LODWORD(STACK[0x420]) = 1;
  JUMPOUT(0x100043B5CLL);
}

void sub_1000D70D0(__int16 a1@<W8>, uint64_t a2, char a3, unsigned __int8 a4)
{
  if ((v4 - 203186114) < 2)
  {
    (*(v5 + 8 * ((102 * (((a4 | (a1 << 8)) - 2 * ((a4 | (a1 << 8)) & 0x631B ^ a4 & 0x10)) != 0)) ^ v6)))();
  }

  else
  {
    sub_1000E3370();
  }
}

uint64_t sub_1000D7128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v5 ^ v3) + v4;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((1920 * (v7 != 0)) ^ v2)))();
}

uint64_t sub_1000D71CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = ~v6 + v2;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v6 + v7 + v5 == v3) * v8) ^ v4)))();
}

uint64_t sub_1000D7258()
{
  v5 = v1 - 8168 + ((v2 + 403) | 0xE83u);
  *(v3 + v5) = *(v0 + v5);
  return (*(v4 + 8 * ((11586 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1000D7328@<X0>(int a1@<W8>)
{
  v6 = v1 + 4010;
  v7 = v6 + v2;
  v8 = v2 - 1;
  *(*v3 + (v5 + 884750381 + v8)) = *(*v3 + (v7 - 1374813335));
  return (*(v4 + 8 * ((54 * (v8 == a1)) ^ v6)))();
}

uint64_t sub_1000D7434()
{
  *(v6 - 224) = v3 ^ (914963389 * ((((v6 - 232) | 0xFE097AD3) - (v6 - 232) + ((v6 - 232) & 0x1F68528)) ^ 0xD2F5CBA8));
  v7 = (*(v5 + 8 * v4))(v6 - 232);
  *(v2 + 8) = *(v6 - 232) ^ v1;
  return (*(v5 + 8 * ((495 * (((v0 - 86) ^ 1) & 1)) ^ (v0 - 3276))))(v7);
}

uint64_t sub_1000D754C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((&a14 & 0xB686885E | ~(&a14 | 0xB686885E)) ^ 0xF97AEFD7) + 8154;
  a14 = &a10;
  v18 = (*(v17 + 77096))(&a14);
  return (*(v17 + 8 * ((794 * (a15 == v16)) ^ 0x1D3Du)))(v18);
}

void sub_1000D75D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0xAD4]) = a69;
  STACK[0x628] = (v69 ^ 0xEC9u) + STACK[0x628] - 571;
  JUMPOUT(0x100015840);
}

uint64_t sub_1000D77BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, int *a20)
{
  a13 = 0;
  a18 = (v20 + 2258) ^ (33731311 * ((2 * (&a17 & 0x16128340) - &a17 - 370312006) ^ 0xD01BB699));
  a19 = a12;
  a20 = &a13;
  (*(v22 + 8 * (v20 ^ 0x26A3)))(&a17);
  a18 = (v20 + 2258) ^ (33731311 * (((&a17 | 0xE208E403) - &a17 + (&a17 & 0x1DF71BF8)) ^ 0xDBFE2E20));
  a19 = a12;
  a20 = &a14;
  (*(v22 + 8 * (v20 + 8607)))(&a17);
  a19 = a12;
  LODWORD(a20) = v20 - 2008441969 * ((((2 * (&a17 ^ 0x6AD2FAB3)) | 0xBC5DAB0A) - (&a17 ^ 0x6AD2FAB3) + 567356027) ^ 0xFC657B38) + 4691;
  v23 = (*(v22 + 8 * (v20 + 8657)))(&a17);
  return (*(v22 + 8 * ((51 * (a17 == (((v20 + 1720) | 0x104) ^ (v21 + 1146)))) ^ v20)))(v23);
}

uint64_t sub_1000D792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v23 = 1875091903 * ((&a14 + 569100031 - 2 * (&a14 & 0x21EBC6FF)) ^ 0x179E457C);
  a17 = a10;
  a15 = (v20 ^ 0xAC1CFEFF) + ((2 * v20) & 0x5839FDFE) + 1946138539 + v23;
  a16 = v23 + 7724;
  (*(v22 + 77160))(&a14);
  v24 = 1824088897 * ((2 * (&a14 & 0x2AA8B80) - &a14 + 2102752376) ^ 0x253CA71A);
  a17 = v18;
  a18 = a10;
  a16 = (v19 ^ 0xCFAEFB9B) - v24 + ((2 * v19) & 0x9F5DF736) + 2130046703;
  a14 = v24 + 3757;
  v25 = (*(v22 + 77048))(&a14);
  return (*(v22 + 8 * ((10785 * (a15 == v21)) ^ 0xBD0u)))(v25);
}

uint64_t sub_1000D7B84()
{
  v2 = (*(v1 + 8 * (v0 + 663)))(32, 0x103004054B5FA7DLL);
  STACK[0x5F8] = v2;
  return (*(v1 + 8 * ((30 * (((v2 == 0) ^ v0) & 1)) ^ v0)))();
}

uint64_t sub_1000D7C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a2 + v3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * ((v4 ^ 0x4663EF91) + 12021)) ^ (v2 + v4 + 3656))))();
}

uint64_t sub_1000D7D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x538] = v4 + 8;
  v6 = STACK[0x568];
  LODWORD(STACK[0x424]) = STACK[0x61C];
  STACK[0x648] = v6;
  STACK[0x6B0] = 0;
  LODWORD(STACK[0x87C]) = 197499219;
  STACK[0x810] = 0x4789E5A74F535ADDLL;
  STACK[0x708] = 0;
  v7 = (*(a4 + 8 * (v5 ^ 0x35DE)))(16, 0x20040A4A59CD2);
  v8 = STACK[0x3E8];
  STACK[0x550] = v7;
  return (*(v8 + 8 * (((v7 == 0) * ((((v5 + 118639809) & 0xF8EDBFF2) - 4481) ^ (v5 + 753094531) & 0xD31CABAD)) ^ v5)))();
}

uint64_t sub_1000D7E2C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = LOWORD(STACK[0x9E4]);
  if (v68 == 17168)
  {
    goto LABEL_4;
  }

  if (v68 == 33980)
  {
    v70 = STACK[0x920];
    STACK[0x928] = v64;
    LODWORD(STACK[0x854]) = a1;
    return (*(v67 + 8 * (((v70 + v66 == 0) * (((a64 + 2073428330) & 0x8469FEEB) - 6120)) ^ (a64 - 3757))))();
  }

  v69 = a64;
  if (v68 == 20706)
  {
LABEL_4:
    STACK[0x928] = v64;
    v65 = 16215638;
    v69 = a64;
  }

  STACK[0x4C8] = 0;
  LODWORD(STACK[0x854]) = 197499219;
  return (*(v67 + 8 * (((v65 == 16257999) * (((2 * ((v69 - 6077) | 0x480)) ^ 0x9FE) + 4127)) | (v69 - 6077) | 0x480)))();
}

uint64_t sub_1000D7F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, uint64_t a13, int a14, int a15, unint64_t a16, char *a17, int a18, int a19)
{
  v24 = 1875091903 * ((-1075403139 - (v23 | 0xBFE6A67D) + (v23 | 0x40195982)) ^ 0x766CDA01);
  a17 = a12;
  a15 = (v20 ^ 0x6A9CF6FB) + ((2 * v20) & 0xD539EDF6) - 1249919057 + v24;
  LODWORD(a16) = v24 + 7724;
  (*(v21 + 77160))(&a14);
  a16 = v19 - ((2 * v19) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + 956911519 * (((v23 | 0x74EB4361EE821814) - (v23 | 0x8B14BC9E117DE7EBLL) - 0x74EB4361EE821815) ^ 0x31DD36BD04136811);
  a17 = a12;
  a14 = (956911519 * (((v23 | 0xEE821814) - (v23 | 0x117DE7EB) + 293464043) ^ 0x4136811)) ^ 0x3FE;
  (*(v21 + 76792))(&a14);
  v25 = 1824088897 * ((1428792745 - (v23 | 0x5529A5A9) + (v23 | 0xAAD65A56)) ^ 0xF2BF8934);
  a15 = v25 - 2100247884;
  a16 = a12;
  a17 = &a11;
  a18 = 1032869496 - v25;
  a19 = v25 + 1674579114;
  v26 = (*(v21 + 76864))(&a14);
  return (*(v21 + 8 * ((15659 * (a14 == v22)) ^ 0x1FF1u)))(v26);
}

uint64_t sub_1000D8138()
{
  STACK[0x7D8] = *(v2 + 8 * v0);
  LODWORD(STACK[0x310]) = v1 - 5614;
  LODWORD(STACK[0x300]) = v1 - 5021;
  LODWORD(STACK[0x2F0]) = v1 - 5055;
  LODWORD(STACK[0x2E0]) = v1 - 4572;
  LODWORD(STACK[0x2D0]) = v1 - 5037;
  return sub_10017E63C();
}

uint64_t sub_1000D8150()
{
  STACK[0x6D0] = 0;
  STACK[0x650] = 0;
  STACK[0x518] = *(v1 + 8 * v0);
  return sub_10018870C();
}

uint64_t sub_1000D8228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, unsigned int a18, uint64_t a19, int *a20)
{
  a18 = (v21 - 4380) ^ (33731311 * ((((2 * &a17) | 0xB723DDB8) - &a17 + 611193124) ^ 0xE26724FF));
  a19 = a15;
  a20 = &a13;
  v22 = (*(v20 + 8 * (v21 + 1969)))(&a17);
  return (*(v20 + 8 * (((a13 == v21 - 7608) * ((v21 - 677937793) & 0xD305FFDD ^ 0xD305994D)) ^ v21)))(v22);
}

uint64_t sub_1000D832C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a24 = (v25 - 130) ^ (1710126949 * ((-1059534925 - (&a20 | 0xC0D8C7B3) + (&a20 | 0x3F27384C)) ^ 0xD3C63DC));
  a22 = a17;
  a23 = &a14;
  a25 = &a12;
  (*(v26 + 8 * (v25 + 6119)))(&a20);
  a21 = (v25 - 236) ^ (33731311 * ((-1736883243 - (&a20 | 0x987943D5) + (&a20 | 0x6786BC2A)) ^ 0x5E707609));
  a22 = a17;
  a23 = &a16;
  (*(v26 + 8 * ((v25 + 1732) ^ 0x3125u)))(&a20);
  LODWORD(a23) = v25 + 1732 - 2008441969 * (((&a20 | 0xC9891E2) - (&a20 & 0xC9891E2)) ^ 0x4401C5EC) + 465;
  a22 = a17;
  v28 = (*(v26 + 8 * (v25 + 6163)))(&a20);
  return (*(v26 + 8 * ((3220 * (a20 == ((v25 + 2051) ^ 0x1670 ^ (v27 - 923)))) ^ (v25 + 1732))))(v28);
}

uint64_t sub_1000D84B0()
{
  v2 = v0 + 5633;
  (*(v1 + 8 * (v0 + 7696)))();
  return (*(v1 + 8 * (((STACK[0x6D8] == 0) * ((v2 - 1446) ^ 0x111 ^ (59 * (v2 ^ 0x1D15)))) ^ v2)))();
}

uint64_t sub_1000D851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, uint64_t a17)
{
  v20 = 1875091903 * (((&a14 ^ 0x7594735B) - 1993303117 - 2 * ((&a14 ^ 0x7594735B) & 0x89309BB3)) ^ 0xCAD16B6B);
  a15 = v20 + ((2 * v17) & 0xF53BED5E) + 629063675 + (v17 ^ 0xFA9DF6AF);
  a16 = v20 + 7724;
  a17 = a11;
  v21 = (*(v18 + 77160))(&a14);
  return (*(v18 + 8 * (((a14 != v19) | (4 * (a14 != v19))) ^ 0x6E2u)))(v21);
}

uint64_t sub_1000D86EC@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 - 4889283) & 0x4A9DBF;
  STACK[0x898] = a1 - (v2 & 0x3CE5FE521F6E532CLL) + (v4 ^ 0x1E72FF290FB738BBLL);
  return (*(v3 + 8 * (((v4 - 10404 + ((v4 - 1353478446) & 0x50AC77CB)) * (STACK[0x3B0] == 0)) ^ v4)))();
}

uint64_t sub_1000D8850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v27 = 1875091903 * ((&a17 & 0xE6A90CF0 | ~(&a17 | 0xE6A90CF0)) ^ 0x2F23708C);
  a18 = (v24 ^ 0x2D1DBFFB) + ((v24 << (((v21 ^ 0xB9) - 16) ^ 0xB6)) & 0x5A3B7FF6) - 218171729 + v27;
  a19 = v27 + v21 + 4782;
  a20 = a13;
  (*(v25 + 8 * (v21 ^ 0x2ED3)))(&a17);
  v28 = (((&a17 | 0xBE38570D) - (&a17 & 0xBE38570D)) ^ 0xE651846F) * v26;
  a20 = v22;
  a21 = a13;
  a17 = v28 + v21 + 815;
  a19 = ((2 * v23) & 0xDFCFDD7E) - v28 + ((5 * (v21 ^ 0x9B9) + 1877467356) ^ v23) - 558040117;
  v29 = (*(v25 + 8 * (v21 + 6689)))(&a17);
  return (*(v25 + 8 * ((239 * (a18 == 16257999)) ^ v21)))(v29);
}

uint64_t sub_1000D8ABC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  v12 = (*(a4 + (149 * ((v8 - 3681) ^ v11) - 26945 - (149 * ((v8 - 3681) ^ v11) - 26945) / 0x3A0u * v10)) ^ 0x8C) * a6 + 478792;
  *(v9 + a2 * a6 + 733503400 - ((((a2 * a6 + 733503400) * a7) >> 32) >> 9) * a8) = *(v9 + (v12 - ((4432371 * v12) >> 32) * a8));
  return (*(a3 + 8 * ((161 * (a2 == 10124967)) ^ v8)))();
}

uint64_t sub_1000D8BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20, unsigned int a21, uint64_t a22, uint64_t a23)
{
  v27 = 1875091903 * (((&a19 | 0x2A107195) - &a19 + (&a19 & 0xD5EF8E68)) ^ 0x1C65F216);
  a20 = (v25 ^ 0x209DBEAA) + ((2 * v25) & 0x413B7D54) - 8456192 + v27;
  a21 = v27 + 7724;
  a22 = a16;
  (*(v26 + 77160))(&a19);
  v28 = 1824088897 * (((&a19 | 0x3A08751A) - (&a19 & 0x3A08751A)) ^ 0x6261A678);
  a21 = (v24 ^ 0xFFACFFAA) - v28 + ((2 * v24) & 0xFF59FF54) + 1324870368;
  a19 = v28 + 3757;
  a22 = v23;
  a23 = a16;
  v29 = (*(v26 + 77048))(&a19);
  return (*(v26 + 8 * ((67 * (a20 != 16257999)) ^ 0xF82u)))(v29);
}

uint64_t sub_1000D8D3C@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8);
  STACK[0x490] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (a1 - 10749 + 79 * ((a1 - 7326) ^ 0x683))) ^ (a1 - 7326))))();
}

uint64_t sub_1000D8D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  v55 = (*(v54 + 8 * (v53 ^ 0x3D83)))(((v53 ^ 0x1A0Bu) + 197498665) ^ LODWORD(STACK[0x854]), 0x100004077774924);
  STACK[0xA98] = v55;
  if (v55)
  {
    a53 = 16257999;
  }

  LODWORD(STACK[0xAA4]) = a53;
  return (*(v54 + 8 * (((v55 == 0) * (((v53 - 2011) | 8) - 4172)) ^ v53)))();
}

uint64_t sub_1000D8E1C@<X0>(uint64_t a1@<X3>, unint64_t a2@<X6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v58 = (a3 + 6057);
  v548 = v48 & 0xFFFFFFF0;
  v59 = a1 + v54 + v51 + v48;
  v549 = (v59 - 0x3FE7DFB718DDA78CLL);
  v60 = STACK[0x390] + v48;
  v557 = *(v60 - 16);
  v61.i64[0] = v60 - 7;
  v61.i64[1] = v60 - 8;
  v62.i64[0] = v60 - 5;
  v62.i64[1] = v60 - 6;
  v63.i64[0] = v59 - 0x3FE7DFB718DDA783;
  v63.i64[1] = v59 + v47;
  v64.i64[0] = v59 - 0x3FE7DFB718DDA781;
  v64.i64[1] = v59 - 0x3FE7DFB718DDA782;
  v65 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v66 = vandq_s8(v62, v65);
  v67 = vandq_s8(v61, v65);
  v68 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x2C0] = v68;
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v68);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68);
  v71 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x2B0] = v71;
  v72 = veorq_s8(v70, v71);
  v73 = veorq_s8(v69, v71);
  v74 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x380] = v74;
  v75 = veorq_s8(v69, v74);
  v76 = veorq_s8(v70, v74);
  v77 = vdupq_n_s64(v53);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v75), v77);
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76), v77);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = vdupq_n_s64(0x444F902103838ADEuLL);
  v86 = vdupq_n_s64(0x5DD837EF7E3E3A91uLL);
  *&STACK[0x2D0] = v86;
  v556 = vdupq_n_s64(0x578539A934117766uLL);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v85), v84), v86), v556);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), v85), v83), v86), v556);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v90 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v90);
  v93 = vdupq_n_s64(v52);
  v94 = veorq_s8(vaddq_s64(v91, v89), v93);
  v95 = veorq_s8(v92, v93);
  v96 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v98 = veorq_s8(v94, v96);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v98);
  v101 = vaddq_s64(v99, v97);
  v102 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x220] = v102;
  v103 = veorq_s8(v101, v102);
  v104 = veorq_s8(v100, v102);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v106 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v107 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v106);
  v109 = vaddq_s64(v107, v105);
  v110 = vdupq_n_s64(0x953D53DE148E1D56);
  v111 = vdupq_n_s64(0xB5615610F5B8F155);
  v112 = vdupq_n_s64(0x2E5DB5ED7AC3D0C7uLL);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v109, v109), v110), v109), v111), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v108, v108), v110), v108), v111), v112);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v116 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v117 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v116);
  v119 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v120 = veorq_s8(vaddq_s64(v117, v115), v119);
  v121 = veorq_s8(v118, v119);
  v122 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v123 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, v122));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v123);
  v126 = vdupq_n_s64(0x4AC0565324D70174uLL);
  v127 = vdupq_n_s64(v49);
  v128 = vdupq_n_s64(0xE1F014810C505D35);
  *&STACK[0x2F0] = v128;
  v129 = vdupq_n_s64(0x38uLL);
  v130 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v125, v126), vorrq_s8(v125, v127)), v127), v128), vnegq_s64(vandq_s8(vshlq_n_s64(v62, 3uLL), v129)));
  v131 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v126), vorrq_s8(v124, v127)), v127), v128), vnegq_s64(vandq_s8(vshlq_n_s64(v61, 3uLL), v129)));
  v132 = vandq_s8(v64, v65);
  v133 = vandq_s8(v63, v65);
  v134 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v136 = vdupq_n_s64(0x5B38AD8DDB3A7C5CuLL);
  v137 = vdupq_n_s64(0x89E752B3FB5DDBECLL);
  v138 = vdupq_n_s64(0x72900020EB4C2C24uLL);
  v139 = vaddq_s64(vsubq_s64(v135, vandq_s8(vaddq_s64(vaddq_s64(v135, v135), v136), v137)), v138);
  v140 = vaddq_s64(vsubq_s64(v134, vandq_s8(vaddq_s64(vaddq_s64(v134, v134), v136), v137)), v138);
  v141 = vdupq_n_s64(0xCF99C25E83E78D67);
  v142 = veorq_s8(v140, v141);
  v143 = veorq_s8(v139, v141);
  v144 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v146 = vdupq_n_s64(0xA37B7469EF0E7C16);
  v147 = veorq_s8(v139, v146);
  v148 = v146;
  *&STACK[0x290] = v146;
  v149 = vaddq_s64(v144, v147);
  v150 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v151 = veorq_s8(v140, v148);
  v152 = vaddq_s64(v145, v151);
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v154 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v155 = veorq_s8(v152, v154);
  v156 = v154;
  *&STACK[0x2A0] = v154;
  v157 = veorq_s8(v155, v153);
  v158 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v159 = veorq_s8(v149, v156);
  v160 = veorq_s8(v159, v150);
  v161 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v162 = vaddq_s64(v158, v157);
  v163 = vdupq_n_s64(0x5ABE700122B28302uLL);
  v164 = vaddq_s64(v161, v160);
  *&STACK[0x250] = v163;
  v165 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v167 = vdupq_n_s64(0xD2A0C7FF6EA6BE7FLL);
  v168 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v164, v164), v163), v164), v167);
  *&STACK[0x280] = v167;
  v169 = vdupq_n_s64(0x90D044FD8F5ED69ALL);
  v170 = veorq_s8(v168, v169);
  v171 = v169;
  *&STACK[0x370] = v169;
  v172 = veorq_s8(v170, v166);
  v173 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v163), v162), v167), v171);
  v175 = veorq_s8(v174, v165);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = vdupq_n_s64(0xA11B1487180DD3BBLL);
  *&STACK[0x350] = v177;
  v178 = vdupq_n_s64(v50);
  v179 = vsubq_s64(vorrq_s8(v176, v177), vorrq_s8(v176, v178));
  v180 = vaddq_s64(v173, v172);
  v181 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v183 = vaddq_s64(vsubq_s64(vorrq_s8(v180, v177), vorrq_s8(v180, v178)), v178);
  v184 = v178;
  *&STACK[0x310] = v178;
  v185 = vdupq_n_s64(v55);
  v186 = veorq_s8(v183, v185);
  v187 = v185;
  *&STACK[0x320] = v185;
  v188 = veorq_s8(v186, v182);
  v189 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v190 = veorq_s8(vaddq_s64(v179, v184), v187);
  v191 = veorq_s8(v190, v181);
  v192 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v193 = vaddq_s64(v189, v188);
  v194 = vdupq_n_s64(v57);
  *&STACK[0x360] = v194;
  v195 = vsubq_s64(v193, vandq_s8(vaddq_s64(v193, v193), v194));
  v196 = vaddq_s64(v192, v191);
  v197 = vsubq_s64(v196, vandq_s8(vaddq_s64(v196, v196), v194));
  v198 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v199 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v200 = vdupq_n_s64(0x817DC7D3C629B1F2);
  v201 = vdupq_n_s64(0x8BBA1DD6A2E83279);
  *&STACK[0x270] = v200;
  v202 = veorq_s8(vaddq_s64(v197, v200), v201);
  v203 = veorq_s8(v202, v199);
  v204 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v205 = veorq_s8(vaddq_s64(v195, v200), v201);
  v206 = veorq_s8(v205, v198);
  v207 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v208 = vaddq_s64(v204, v203);
  v209 = vdupq_n_s64(0x138A00D81D9F80FEuLL);
  *&STACK[0x330] = v209;
  *&STACK[0x340] = v201;
  v210 = vsubq_s64(v208, vandq_s8(vaddq_s64(v208, v208), v209));
  v211 = vaddq_s64(v207, v206);
  v212 = vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), v209));
  v213 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v215 = vdupq_n_s64(0x9C5006C0ECFC07FuLL);
  v216 = vaddq_s64(v212, v215);
  *&STACK[0x260] = v215;
  v217 = vdupq_n_s64(0x6855A70E70B2CB06uLL);
  v218 = veorq_s8(v216, v217);
  v219 = v217;
  *&STACK[0x300] = v217;
  v220 = veorq_s8(v218, v214);
  v221 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v222 = veorq_s8(vaddq_s64(v210, v215), v219);
  v223 = veorq_s8(v222, v213);
  v224 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v225 = vaddq_s64(v221, v220);
  v226 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v227 = vaddq_s64(v224, v223);
  v228 = vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL);
  v229 = vdupq_n_s64(a2);
  v230 = veorq_s8(v227, v229);
  v231 = v229;
  *&STACK[0x3B0] = v229;
  v232 = veorq_s8(v230, v228);
  v233 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v234 = veorq_s8(v225, v231);
  v235 = vaddq_s64(v233, v232);
  v236 = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  *&STACK[0x230] = v236;
  v237 = v129;
  v560.val[3] = veorq_s8(vshlq_u64(veorq_s8(v235, v236), vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), v129))), v131);
  v560.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), veorq_s8(v234, v226)), v236), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), v129))), v130);
  v233.i64[0] = v60 - 1;
  v233.i64[1] = v60 - 2;
  v238 = v65;
  v239 = vandq_s8(v233, v65);
  v241 = *&STACK[0x2B0];
  v240 = *&STACK[0x2C0];
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), *&STACK[0x2C0]);
  v243 = veorq_s8(v242, *&STACK[0x2B0]);
  v244 = veorq_s8(v242, *&STACK[0x380]);
  v245 = vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL);
  v246 = v77;
  v558 = v77;
  v247 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v244), v77);
  v248 = veorq_s8(v247, v245);
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = v85;
  v550 = v85;
  v251 = *&STACK[0x2D0];
  v252 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v249, v249), v85), v249), *&STACK[0x2D0]), v556);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253), v93);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v256 = *&STACK[0x220];
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255), *&STACK[0x220]);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258);
  v552 = v112;
  v260 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v259, v259), v110), v259), v111), v112);
  v261 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v262 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v261), v119);
  v263 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL)));
  *&STACK[0x2E0] = v126;
  v551 = v127;
  v264 = vaddq_s64(vsubq_s64(vorrq_s8(v263, v126), vorrq_s8(v263, v127)), v127);
  v265 = *&STACK[0x2F0];
  v554 = vshlq_u64(veorq_s8(v264, *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v233, 3uLL), v237)));
  v264.i64[0] = v59 - 0x3FE7DFB718DDA77DLL;
  v264.i64[1] = v59 - 0x3FE7DFB718DDA77ELL;
  v266 = vandq_s8(v264, v238);
  v267 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  *&STACK[0x240] = v136;
  *&STACK[0x200] = v137;
  *&STACK[0x210] = v138;
  v268 = vaddq_s64(vsubq_s64(v267, vandq_s8(vaddq_s64(vaddq_s64(v267, v267), v136), v137)), v138);
  v269 = v141;
  v553 = v141;
  v270 = veorq_s8(v268, v141);
  v271 = veorq_s8(v268, *&STACK[0x290]);
  v272 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v273 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), v271), *&STACK[0x2A0]);
  v274 = veorq_s8(v273, v272);
  v275 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), v274);
  v276 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v275, v275), v163), v275), *&STACK[0x280]), *&STACK[0x370]);
  v277 = veorq_s8(v276, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL));
  v278 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL), v277);
  v279 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v278, *&STACK[0x350]), vorrq_s8(v278, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v280 = veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL));
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v280);
  v282 = veorq_s8(vaddq_s64(vsubq_s64(v281, vandq_s8(vaddq_s64(v281, v281), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v283 = veorq_s8(v282, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL));
  v284 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v283);
  v285 = veorq_s8(vaddq_s64(vsubq_s64(v284, vandq_s8(vaddq_s64(v284, v284), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v286 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL));
  v287 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v286), *&STACK[0x3B0]);
  v560.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL))), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v264, 3uLL), v237))), v554);
  v288 = (v58 - 254);
  v264.i64[0] = v60 - 3;
  v264.i64[1] = v60 + (v288 ^ 0xFFFFFFFFFFFFE931);
  v289 = vandq_s8(v264, v238);
  v290 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v240);
  v291 = veorq_s8(v290, v241);
  v292 = veorq_s8(v290, *&STACK[0x380]);
  v293 = vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL);
  v294 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292), v246);
  v295 = veorq_s8(v294, v293);
  v296 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295);
  v297 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v296, v296), v250), v296), v251), v556);
  v298 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v299 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v298), v93);
  v300 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v301 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300), v256);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v303, v303), v110), v303), v111), v112);
  v305 = veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL));
  v306 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v305), v119);
  v307 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL)));
  v306.i64[0] = v59 - 0x3FE7DFB718DDA77FLL;
  v306.i64[1] = v59 - 0x3FE7DFB718DDA77CLL + (v288 ^ 0xFFFFFFFFFFFFE931);
  v308 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v307, *&STACK[0x2E0]), vorrq_s8(v307, v551)), v551), v265), vnegq_s64(vandq_s8(vshlq_n_s64(v264, 3uLL), v237)));
  v309 = vandq_s8(v306, v238);
  v310 = vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL);
  v311 = vaddq_s64(vsubq_s64(v310, vandq_s8(vaddq_s64(vaddq_s64(v310, v310), v136), v137)), v138);
  v312 = veorq_s8(v311, v269);
  v313 = veorq_s8(v311, *&STACK[0x290]);
  v314 = vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL);
  v315 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), v313), *&STACK[0x2A0]);
  v316 = veorq_s8(v315, v314);
  v317 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL), v316);
  v318 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v317, v317), *&STACK[0x250]), v317), *&STACK[0x280]), *&STACK[0x370]);
  v319 = veorq_s8(v318, vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL));
  v320 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL), v319);
  v321 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v320, *&STACK[0x350]), vorrq_s8(v320, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v322 = veorq_s8(v321, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v323 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322);
  v324 = veorq_s8(vaddq_s64(vsubq_s64(v323, vandq_s8(vaddq_s64(v323, v323), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v325 = veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v326 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v325);
  v327 = veorq_s8(vaddq_s64(vsubq_s64(v326, vandq_s8(vaddq_s64(v326, v326), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL));
  v329 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v328), *&STACK[0x3B0]);
  v560.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL))), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v306, 3uLL), v237))), v308);
  v555 = vqtbl4q_s8(v560, xmmword_1003EAE50);
  v234.i64[0] = v60 - 15;
  v234.i64[1] = v60 - 16;
  v330 = vandq_s8(v234, v238);
  v331 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v330.i64[0] = v60 - 13;
  v330.i64[1] = v60 - 14;
  v332 = vandq_s8(v330, v238);
  v333 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), *&STACK[0x2C0]);
  v334 = veorq_s8(v333, v241);
  v335 = vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL);
  v336 = vaddq_s64(v331, *&STACK[0x2C0]);
  v337 = veorq_s8(v336, v241);
  v338 = vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL);
  v339 = veorq_s8(v333, *&STACK[0x380]);
  v340 = vaddq_s64(v335, v339);
  v341 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v342 = veorq_s8(v336, *&STACK[0x380]);
  v343 = vaddq_s64(v338, v342);
  v344 = vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL);
  v345 = veorq_s8(v343, v558);
  v346 = veorq_s8(v345, v344);
  v347 = vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL);
  v348 = veorq_s8(v340, v558);
  v349 = veorq_s8(v348, v341);
  v350 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v351 = vaddq_s64(v347, v346);
  v352 = vaddq_s64(v350, v349);
  v353 = vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL);
  v354 = vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL);
  v355 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v352, v352), v550), v352), *&STACK[0x2D0]), v556);
  v356 = veorq_s8(v355, v354);
  v357 = vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL);
  v358 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v351, v351), v550), v351), *&STACK[0x2D0]), v556);
  v359 = veorq_s8(v358, v353);
  v360 = vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL);
  v361 = vaddq_s64(v357, v356);
  v362 = vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL);
  v363 = veorq_s8(vaddq_s64(v360, v359), v93);
  v364 = veorq_s8(v363, vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL));
  v365 = vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL);
  v366 = veorq_s8(v361, v93);
  v367 = veorq_s8(v366, v362);
  v368 = vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL);
  v369 = vaddq_s64(v365, v364);
  v370 = vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL);
  v371 = vaddq_s64(v368, v367);
  v372 = vsraq_n_u64(vshlq_n_s64(v367, 3uLL), v367, 0x3DuLL);
  v373 = veorq_s8(v371, *&STACK[0x220]);
  v374 = veorq_s8(v373, v372);
  v375 = vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL);
  v376 = veorq_s8(v369, *&STACK[0x220]);
  v377 = veorq_s8(v376, v370);
  v378 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v379 = vaddq_s64(v375, v374);
  v380 = vaddq_s64(v378, v377);
  v381 = vsraq_n_u64(vshlq_n_s64(v374, 3uLL), v374, 0x3DuLL);
  v382 = vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL);
  v383 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v380, v380), v110), v380), v111), v552);
  v384 = veorq_s8(v383, v382);
  v385 = vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL);
  v386 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v379, v379), v110), v379), v111), v552);
  v387 = veorq_s8(v386, v381);
  v388 = vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL);
  v389 = vaddq_s64(v385, v384);
  v390 = vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL);
  v391 = vaddq_s64(v388, v387);
  v392 = vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL);
  v393 = veorq_s8(v391, v119);
  v394 = veorq_s8(v389, v119);
  v395 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL), veorq_s8(v394, v390));
  v396 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), veorq_s8(v393, v392));
  v397 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v396, *&STACK[0x2E0]), vorrq_s8(v396, v551)), v551), *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v330, 3uLL), v237)));
  v398 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v395, *&STACK[0x2E0]), vorrq_s8(v395, v551)), v551), *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v234, 3uLL), v237)));
  v330.i64[0] = v59 - 0x3FE7DFB718DDA78BLL;
  v330.i64[1] = v59 - 0x3FE7DFB718DDA78CLL;
  v399 = vandq_s8(v330, v238);
  v400 = vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL);
  v399.i64[0] = v59 - 0x3FE7DFB718DDA789;
  v399.i64[1] = v59 - 0x3FE7DFB718DDA78ALL;
  v401 = vandq_s8(v399, v238);
  v402 = vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL);
  v403 = vaddq_s64(vsubq_s64(v402, vandq_s8(vaddq_s64(vaddq_s64(v402, v402), *&STACK[0x240]), *&STACK[0x200])), *&STACK[0x210]);
  v404 = veorq_s8(v403, v553);
  v405 = vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL);
  v406 = vaddq_s64(vsubq_s64(v400, vandq_s8(vaddq_s64(vaddq_s64(v400, v400), *&STACK[0x240]), *&STACK[0x200])), *&STACK[0x210]);
  v407 = veorq_s8(v406, v553);
  v408 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v409 = veorq_s8(v403, *&STACK[0x290]);
  v410 = vaddq_s64(v405, v409);
  v411 = vsraq_n_u64(vshlq_n_s64(v409, 3uLL), v409, 0x3DuLL);
  v412 = veorq_s8(v406, *&STACK[0x290]);
  v413 = vaddq_s64(v408, v412);
  v414 = vsraq_n_u64(vshlq_n_s64(v412, 3uLL), v412, 0x3DuLL);
  v415 = veorq_s8(v413, *&STACK[0x2A0]);
  v416 = veorq_s8(v415, v414);
  v417 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v418 = veorq_s8(v410, *&STACK[0x2A0]);
  v419 = veorq_s8(v418, v411);
  v420 = vsraq_n_u64(vshlq_n_s64(v418, 0x38uLL), v418, 8uLL);
  v421 = vaddq_s64(v417, v416);
  v422 = vaddq_s64(v420, v419);
  v423 = vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL);
  v424 = vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL);
  v425 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v422, v422), *&STACK[0x250]), v422), *&STACK[0x280]), *&STACK[0x370]);
  v426 = veorq_s8(v425, v424);
  v427 = vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL);
  v428 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v421, v421), *&STACK[0x250]), v421), *&STACK[0x280]), *&STACK[0x370]);
  v429 = veorq_s8(v428, v423);
  v430 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), v429);
  v431 = vaddq_s64(v427, v426);
  v432 = vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL);
  v433 = vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL);
  v434 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v431, *&STACK[0x350]), vorrq_s8(v431, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v435 = veorq_s8(v434, v433);
  v436 = vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL);
  v437 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v430, *&STACK[0x350]), vorrq_s8(v430, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v438 = veorq_s8(v437, v432);
  v439 = vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL);
  v440 = vaddq_s64(v436, v435);
  v441 = vaddq_s64(v439, v438);
  v442 = vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL);
  v443 = vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL);
  v444 = veorq_s8(vaddq_s64(vsubq_s64(v441, vandq_s8(vaddq_s64(v441, v441), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v445 = veorq_s8(v444, v443);
  v446 = vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL);
  v447 = veorq_s8(vaddq_s64(vsubq_s64(v440, vandq_s8(vaddq_s64(v440, v440), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v448 = veorq_s8(v447, v442);
  v449 = vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL);
  v450 = vaddq_s64(v446, v445);
  v451 = vaddq_s64(v449, v448);
  v452 = vsraq_n_u64(vshlq_n_s64(v445, 3uLL), v445, 0x3DuLL);
  v453 = vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL);
  v454 = veorq_s8(vaddq_s64(vsubq_s64(v451, vandq_s8(vaddq_s64(v451, v451), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v455 = veorq_s8(v454, v453);
  v456 = vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL);
  v457 = veorq_s8(vaddq_s64(vsubq_s64(v450, vandq_s8(vaddq_s64(v450, v450), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v458 = veorq_s8(v457, v452);
  v459 = vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL);
  v460 = vaddq_s64(v456, v455);
  v461 = vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL);
  v462 = vaddq_s64(v459, v458);
  v463 = vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL);
  v464 = veorq_s8(v462, *&STACK[0x3B0]);
  v465 = veorq_s8(v460, *&STACK[0x3B0]);
  v559.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL), veorq_s8(v464, v463)), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v330, 3uLL), v237))), v398);
  v559.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v465, 0x38uLL), v465, 8uLL), veorq_s8(v465, v461)), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v399, 3uLL), v237))), v397);
  v398.i64[0] = v60 - 11;
  v398.i64[1] = v60 - 12;
  v466 = vandq_s8(v398, v238);
  v467 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), *&STACK[0x2C0]);
  v468 = veorq_s8(v467, *&STACK[0x2B0]);
  v469 = veorq_s8(v467, *&STACK[0x380]);
  v470 = vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL);
  v471 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), v469), v558);
  v472 = veorq_s8(v471, v470);
  v473 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472);
  v474 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v473, v473), v550), v473), *&STACK[0x2D0]), v556);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), v93);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), *&STACK[0x220]);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v480 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479);
  v481 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v480, v480), v110), v480), v111), v552);
  v482 = veorq_s8(v481, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v483 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v481, 0x38uLL), v481, 8uLL), v482), v119);
  v484 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v482, 3uLL), v482, 0x3DuLL)));
  v485 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v484, *&STACK[0x2E0]), vorrq_s8(v484, v551)), v551), *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v398, 3uLL), v237)));
  v398.i64[0] = v59 - 0x3FE7DFB718DDA787;
  v398.i64[1] = v59 - 0x3FE7DFB718DDA788;
  v486 = vandq_s8(v398, v238);
  v487 = vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL);
  v488 = vaddq_s64(vsubq_s64(v487, vandq_s8(vaddq_s64(vaddq_s64(v487, v487), *&STACK[0x240]), *&STACK[0x200])), *&STACK[0x210]);
  v489 = veorq_s8(v488, v553);
  v490 = veorq_s8(v488, *&STACK[0x290]);
  v491 = vsraq_n_u64(vshlq_n_s64(v490, 3uLL), v490, 0x3DuLL);
  v492 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v489, 0x38uLL), v489, 8uLL), v490), *&STACK[0x2A0]);
  v493 = veorq_s8(v492, v491);
  v494 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v492, 0x38uLL), v492, 8uLL), v493);
  v495 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v494, v494), *&STACK[0x250]), v494), *&STACK[0x280]), *&STACK[0x370]);
  v496 = veorq_s8(v495, vsraq_n_u64(vshlq_n_s64(v493, 3uLL), v493, 0x3DuLL));
  v497 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v495, 0x38uLL), v495, 8uLL), v496);
  v498 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v497, *&STACK[0x350]), vorrq_s8(v497, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v499 = veorq_s8(v498, vsraq_n_u64(vshlq_n_s64(v496, 3uLL), v496, 0x3DuLL));
  v500 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v498, 0x38uLL), v498, 8uLL), v499);
  v501 = veorq_s8(vaddq_s64(vsubq_s64(v500, vandq_s8(vaddq_s64(v500, v500), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v502 = veorq_s8(v501, vsraq_n_u64(vshlq_n_s64(v499, 3uLL), v499, 0x3DuLL));
  v503 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v501, 0x38uLL), v501, 8uLL), v502);
  v504 = veorq_s8(vaddq_s64(vsubq_s64(v503, vandq_s8(vaddq_s64(v503, v503), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v505 = veorq_s8(v504, vsraq_n_u64(vshlq_n_s64(v502, 3uLL), v502, 0x3DuLL));
  v506 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v504, 0x38uLL), v504, 8uLL), v505), *&STACK[0x3B0]);
  v559.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v506, 0x38uLL), v506, 8uLL), veorq_s8(v506, vsraq_n_u64(vshlq_n_s64(v505, 3uLL), v505, 0x3DuLL))), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v398, 3uLL), v237))), v485);
  v398.i64[0] = v60 - 9;
  v398.i64[1] = v60 - 10;
  v507 = vandq_s8(v398, v238);
  v508 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v507, 0x38uLL), v507, 8uLL), *&STACK[0x2C0]);
  v509 = veorq_s8(v508, *&STACK[0x2B0]);
  v510 = veorq_s8(v508, *&STACK[0x380]);
  v511 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v509, 0x38uLL), v509, 8uLL), v510), v558);
  v512 = veorq_s8(v511, vsraq_n_u64(vshlq_n_s64(v510, 3uLL), v510, 0x3DuLL));
  v513 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v511, 0x38uLL), v511, 8uLL), v512);
  v514 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v513, v513), v550), v513), *&STACK[0x2D0]), v556);
  v515 = veorq_s8(v514, vsraq_n_u64(vshlq_n_s64(v512, 3uLL), v512, 0x3DuLL));
  v516 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v514, 0x38uLL), v514, 8uLL), v515), v93);
  v517 = veorq_s8(v516, vsraq_n_u64(vshlq_n_s64(v515, 3uLL), v515, 0x3DuLL));
  v518 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v516, 0x38uLL), v516, 8uLL), v517), *&STACK[0x220]);
  v519 = veorq_s8(v518, vsraq_n_u64(vshlq_n_s64(v517, 3uLL), v517, 0x3DuLL));
  v520 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v518, 0x38uLL), v518, 8uLL), v519);
  v521 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v520, v520), v110), v520), v111), v552);
  v522 = veorq_s8(v521, vsraq_n_u64(vshlq_n_s64(v519, 3uLL), v519, 0x3DuLL));
  v523 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v521, 0x38uLL), v521, 8uLL), v522), v119);
  v524 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v523, 0x38uLL), v523, 8uLL), veorq_s8(v523, vsraq_n_u64(vshlq_n_s64(v522, 3uLL), v522, 0x3DuLL)));
  v397.i64[0] = v59 - 0x3FE7DFB718DDA785;
  v397.i64[1] = v59 - 0x3FE7DFB718DDA786;
  v525 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v524, *&STACK[0x2E0]), vorrq_s8(v524, v551)), v551), *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v398, 3uLL), v237)));
  v526 = vandq_s8(v397, v238);
  v527 = vsraq_n_u64(vshlq_n_s64(v526, 0x38uLL), v526, 8uLL);
  v528 = vaddq_s64(vsubq_s64(v527, vandq_s8(vaddq_s64(vaddq_s64(v527, v527), *&STACK[0x240]), *&STACK[0x200])), *&STACK[0x210]);
  v529 = veorq_s8(v528, v553);
  v530 = veorq_s8(v528, *&STACK[0x290]);
  v531 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v529, 0x38uLL), v529, 8uLL), v530), *&STACK[0x2A0]);
  v532 = veorq_s8(v531, vsraq_n_u64(vshlq_n_s64(v530, 3uLL), v530, 0x3DuLL));
  v533 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v531, 0x38uLL), v531, 8uLL), v532);
  v534 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v533, v533), *&STACK[0x250]), v533), *&STACK[0x280]), *&STACK[0x370]);
  v535 = veorq_s8(v534, vsraq_n_u64(vshlq_n_s64(v532, 3uLL), v532, 0x3DuLL));
  v536 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v534, 0x38uLL), v534, 8uLL), v535);
  v537 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v536, *&STACK[0x350]), vorrq_s8(v536, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v538 = veorq_s8(v537, vsraq_n_u64(vshlq_n_s64(v535, 3uLL), v535, 0x3DuLL));
  v539 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v537, 0x38uLL), v537, 8uLL), v538);
  v540 = veorq_s8(vaddq_s64(vsubq_s64(v539, vandq_s8(vaddq_s64(v539, v539), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v541 = veorq_s8(v540, vsraq_n_u64(vshlq_n_s64(v538, 3uLL), v538, 0x3DuLL));
  v542 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v540, 0x38uLL), v540, 8uLL), v541);
  v543 = veorq_s8(vaddq_s64(vsubq_s64(v542, vandq_s8(vaddq_s64(v542, v542), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v544 = veorq_s8(v543, vsraq_n_u64(vshlq_n_s64(v541, 3uLL), v541, 0x3DuLL));
  v545 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v543, 0x38uLL), v543, 8uLL), v544), *&STACK[0x3B0]);
  v559.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545, 0x38uLL), v545, 8uLL), veorq_s8(v545, vsraq_n_u64(vshlq_n_s64(v544, 3uLL), v544, 0x3DuLL))), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v397, 3uLL), v237))), v525);
  v545.i64[0] = v555.i64[0];
  v545.i64[1] = vqtbl4q_s8(v559, xmmword_1003EAE50).u64[0];
  v546 = vrev64q_s8(v545);
  *v549 = veorq_s8(vextq_s8(v546, v546, 8uLL), v557);
  return (*(v56 + 8 * ((7231 * (v548 == 16)) ^ (v58 - 2601))))(v58, 0x72900020EB4C2C24, 0x953D53DE148E1D56, v288, v549, 0xCF99C25E83E78D67, 0x5B38AD8DDB3A7C5CLL, 0x89E752B3FB5DDBECLL, a4, v54, v51, a7, v548, a9, a10, v59 - 0x3FE7DFB718DDA77DLL, v59 - 0x3FE7DFB718DDA77ELL, v59 - 0x3FE7DFB718DDA77FLL, v59 - 0x3FE7DFB718DDA77CLL, v59 - 0x3FE7DFB718DDA781, a16, a17, a18, v59 - 0x3FE7DFB718DDA782, v59 - 0x3FE7DFB718DDA783, v59 + v47, v59 - 0x3FE7DFB718DDA785, v59 - 0x3FE7DFB718DDA786, v59 - 0x3FE7DFB718DDA787, v59 - 0x3FE7DFB718DDA788, v59 - 0x3FE7DFB718DDA789, v59 - 0x3FE7DFB718DDA78ALL, v59 - 0x3FE7DFB718DDA78BLL, a29, v549, a31, 16 - v548, a33, a34, a35, v237.i64[0], v237.i64[1], v550.i64[0], v550.i64[1], v551.i64[0], v551.i64[1], v111.i64[0], v111.i64[1], v552.i64[0], v552.i64[1], a46, a47, v553.i64[0], v553.i64[1], v110.i64[0], v110.i64[1], v93.i64[0], v93.i64[1], 0x3830282018100800, 0x7870686058504840, v555.i64[0], v555.i64[1]);
}

uint64_t sub_1000DA934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v26 = ((2 * (&a17 & 0x228E1930) - &a17 - 579737909) ^ 0x851835A9) * v22;
  a19 = a13;
  a20 = &a11;
  a18 = v26 + 1164957162;
  a21 = -654855621 - v26;
  a22 = v26 + v23 + 1674577759;
  v27 = (*(v24 + 8 * (v23 + 8253)))(&a17);
  return (*(v24 + 8 * (((a17 != v25) * ((v23 ^ 0x288) + (v23 ^ 0x8AB) - 5481)) ^ v23)))(v27);
}

uint64_t sub_1000DAA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v21 = (&a12 ^ 0x5869D362) * v18;
  a13 = v21 - 397571126;
  a14 = a10;
  a15 = &a9;
  a16 = -654855621 - v21;
  a17 = v21 + v20 + 1674575845;
  v22 = (*(v17 + 8 * (v20 + 6339)))(&a12);
  return (*(v17 + 8 * (((a12 == 5 * (v20 ^ 0xEE4) + v19) * ((v20 + 855642265) & 0xCCFFF7FD ^ 0x110)) ^ v20)))(v22);
}

uint64_t sub_1000DACAC()
{
  *v5 = v7;
  v11 = (v0 + v1 + 2622) ^ (((-19107852 - (&v9 | 0xFEDC6FF4) + (&v9 | 0x123900B)) ^ 0x594A4369) * v3);
  v10 = v8;
  (*(v2 + 8 * (v0 + v1 + 3888)))(&v9);
  v10 = v6;
  v11 = ((v1 ^ 0x4D903FDA) + 2622) ^ ((((&v9 | 0xAB18D7D9) - (&v9 & 0xAB18D7D9)) ^ 0xF37104BB) * v3);
  (*(v2 + 8 * ((v1 ^ 0x4D903FDA) + 3888)))(&v9);
  return 0;
}

uint64_t sub_1000DADD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, unsigned int a18, uint64_t a19, uint64_t a20)
{
  v28 = v20 + 1921295194;
  v29 = 1875091903 * (((&a16 | 0x16228E59) - &a16 + (&a16 & 0xE9DD71A0)) ^ 0x20570DDA);
  a17 = ((2 * v26) & 0x60BF7DFE) + (v26 ^ 0xB05FBEFF) + ((v28 - 3120) ^ 0x6FBCF140) + v29;
  a18 = v28 + 2833 + v29;
  a19 = a14;
  (*(v27 + 8 * (v28 + 4754)))(&a16);
  v30 = 1875091903 * (((&a16 | 0x8953275D) - (&a16 & 0x8953275D)) ^ 0xBF26A4DE);
  a19 = a14;
  a17 = (v25 ^ 0x3E5EF6FE) + ((2 * v25) & 0x7CBDEDFC) - 507658324 + v30;
  a18 = v28 + 2833 + v30;
  (*(v27 + 8 * (v28 ^ 0x36B6)))(&a16);
  v31 = 1824088897 * (&a16 ^ 0x5869D362);
  a19 = v23;
  a20 = a14;
  a18 = (v24 ^ 0x4FACEFFB) + ((2 * v24) & 0x9F59DFF6) - v31 - 17302897;
  a16 = v28 - 1134 + v31;
  (*(v27 + 8 * (v28 + 4740)))(&a16);
  a19 = a10;
  a20 = a14;
  a16 = v28 - 1134 + v31;
  a18 = (v22 ^ 0x4FE6EECA) + ((2 * v22) & 0x9FCDDD94) - v31 - 21103680;
  (*(v27 + 8 * (v28 + 4740)))(&a16);
  v32 = 1824088897 * (((&a16 | 0x389E144D) + (~&a16 | 0xC761EBB2)) ^ 0x60F7C72E);
  a20 = a14;
  a19 = a11;
  a16 = v28 - 1134 + v32;
  a18 = (v21 ^ 0xDFACFA8F) + ((2 * v21) & 0xBF59F51E) - v32 + 1861742587;
  v33 = (*(v27 + 8 * (v28 + 4740)))(&a16);
  return (*(v27 + 8 * (v28 ^ (4 * (a17 == 16257999)))))(v33);
}

uint64_t sub_1000DB0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x718] + 24);
  STACK[0x7A8] = v5;
  return (*(a4 + 8 * (((((v4 - 51) ^ (v5 == 0)) & 1) * (v4 - 3216)) ^ v4)))();
}

uint64_t sub_1000DB104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((&a14 - 292328846 - 2 * (&a14 & 0xEE936A72)) ^ 0xB6FAB910) * v21;
  a15 = v23 + 1858076724;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674577347;
  a16 = a11;
  a17 = &a12;
  v24 = (*(v19 + 8 * (v22 ^ 0x236F)))(&a14);
  return (*(v19 + 8 * (((a14 == (((v22 - 1463) | 0x40F) ^ (v20 + 801))) * ((v22 + 2838) ^ 0xC9E)) ^ v22)))(v24);
}

uint64_t sub_1000DB274(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v84 = v72 - 75;
  v85 = (v84 + a14) ^ a15;
  v86.i64[0] = v71 + v70 - 15;
  v86.i64[1] = v71 + v70 - 16;
  v87.i64[0] = v71 + v70 - 13;
  v87.i64[1] = v71 + v70 - 14;
  v88.i64[0] = v71 + v70 - 7;
  v88.i64[1] = v71 + v70 - 8;
  v89.i64[0] = v71 + v70 - 5;
  v89.i64[1] = v71 + v70 - 6;
  v90.i64[0] = v71 + v70 - 3;
  v90.i64[1] = v71 + v70 - 4;
  v91.i64[0] = v70 + v85 + v71;
  v91.i64[1] = v71 + v70 - 2;
  v92 = vandq_s8(v91, a1);
  v93 = vandq_s8(v90, a1);
  v94 = vandq_s8(v89, a1);
  v95 = vandq_s8(v88, a1);
  v96 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v100 = vaddq_s64(v97, a3);
  v101 = vaddq_s64(v96, a3);
  v102 = veorq_s8(v101, a4);
  v103 = veorq_s8(v100, a4);
  v104 = veorq_s8(v100, a5);
  v105 = veorq_s8(v101, a5);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v105);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, a6), vorrq_s8(v106, a7)), a7), a8);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, a6), vorrq_s8(v107, a7)), a7), a8);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v111 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v74);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v111), v74);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v115 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v116 = veorq_s8(v112, v114);
  v117 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v116);
  v119 = vaddq_s64(v117, v115);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, v75), vorrq_s8(v118, v76)), v76), v77);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v75), vorrq_s8(v119, v76)), v76), v77);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v78);
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v123), v78);
  v126 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v127 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v128 = veorq_s8(v124, v126);
  v129 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v128);
  v131 = veorq_s8(vaddq_s64(v129, v127), v79);
  v132 = veorq_s8(v130, v79);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v134 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v135 = veorq_s8(v131, v133);
  v136 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v135);
  v138 = veorq_s8(vaddq_s64(v136, v134), v80);
  v139 = veorq_s8(v137, v80);
  v140 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v134.i64[0] = v71 + v70 - 11;
  v134.i64[1] = v71 + v70 - 12;
  v141 = vaddq_s64(v98, a3);
  v235.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v140), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a2)));
  v235.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL))), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), a2)));
  v142 = veorq_s8(v141, a4);
  v143 = veorq_s8(v141, a5);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v144, a6), vorrq_s8(v144, a7)), a7), a8);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), v74);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v149, v75), vorrq_s8(v149, v76)), v76), v77);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v78);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v79);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v80);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v156.i64[0] = v71 + v70 - 9;
  v156.i64[1] = v71 + v70 - 10;
  v159 = vaddq_s64(v158, v157);
  v160 = vandq_s8(v156, a1);
  v161 = vaddq_s64(v99, a3);
  v235.val[1] = vshlq_u64(veorq_s8(v159, v81), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), a2)));
  v162 = veorq_s8(v161, a4);
  v163 = veorq_s8(v161, a5);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, a6), vorrq_s8(v164, a7)), a7), a8);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v74);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v75), vorrq_s8(v169, v76)), v76), v77);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v78);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v79);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v80);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v179 = vandq_s8(v134, a1);
  v180 = vaddq_s64(v178, v177);
  v181 = vandq_s8(v87, a1);
  v235.val[0] = vshlq_u64(veorq_s8(v180, v81), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), a2)));
  v182 = vandq_s8(v86, a1);
  v183 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), a3);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), a3);
  v182.i64[0] = vqtbl4q_s8(v235, v83).u64[0];
  v235.val[0] = veorq_s8(v186, a4);
  v235.val[1] = veorq_s8(v185, a4);
  v187 = veorq_s8(v185, a5);
  v188 = veorq_s8(v186, a5);
  v235.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL), v188);
  v235.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v187);
  v235.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235.val[0], a6), vorrq_s8(v235.val[0], a7)), a7), a8);
  v235.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235.val[1], a6), vorrq_s8(v235.val[1], a7)), a7), a8);
  v189 = veorq_s8(v235.val[1], vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v235.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v189), v74);
  v235.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL), v190), v74);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v191 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v192 = veorq_s8(v235.val[1], v235.val[2]);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL);
  v235.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v192);
  v235.val[1] = vaddq_s64(v235.val[2], v191);
  v235.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235.val[0], v75), vorrq_s8(v235.val[0], v76)), v76), v77);
  v235.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235.val[1], v75), vorrq_s8(v235.val[1], v76)), v76), v77);
  v193 = veorq_s8(v235.val[1], vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v235.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v193), v78);
  v235.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL), v194), v78);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  v195 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v196 = veorq_s8(v235.val[1], v235.val[2]);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL);
  v235.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v196);
  v235.val[1] = veorq_s8(vaddq_s64(v235.val[2], v195), v79);
  v235.val[0] = veorq_s8(v235.val[0], v79);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v197 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v198 = veorq_s8(v235.val[1], v235.val[2]);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL);
  v235.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v198);
  v235.val[1] = veorq_s8(vaddq_s64(v235.val[2], v197), v80);
  v235.val[0] = veorq_s8(v235.val[0], v80);
  v199 = vaddq_s64(v183, a3);
  v235.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), veorq_s8(v235.val[1], vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL))), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a2)));
  v235.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL), veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL))), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a2)));
  v200 = veorq_s8(v199, a4);
  v201 = veorq_s8(v199, a5);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202, a6), vorrq_s8(v202, a7)), a7), a8);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), v74);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v207, v75), vorrq_s8(v207, v76)), v76), v77);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209), v78);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211), v79);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), v80);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL)));
  v216 = vaddq_s64(v184, a3);
  v235.val[1] = vshlq_u64(veorq_s8(v215, v81), vnegq_s64(vandq_s8(vshlq_n_s64(v134, 3uLL), a2)));
  v217 = veorq_s8(v216, a4);
  v218 = veorq_s8(v216, a5);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v219, a6), vorrq_s8(v219, a7)), a7), a8);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v74);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v224, v75), vorrq_s8(v224, v76)), v76), v77);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v227 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226), v78);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), v79);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v80);
  v235.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL))), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v156, 3uLL), a2)));
  v182.i64[1] = vqtbl4q_s8(v235, v83).u64[0];
  v232 = vrev64q_s8(*(v70 + v85 + v71 - 15));
  v233 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v232, v232, 8uLL), v82), v182));
  *(v73 - 15 + v85 + v71) = vextq_s8(v233, v233, 8uLL);
  return (*(a70 + 8 * (((v71 != 16) * a16) ^ v84)))();
}

uint64_t sub_1000DBC4C@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xB04]) = v3;
  STACK[0xB08] = v2;
  return (*(v4 + 8 * (((((v1 + 1) ^ (a1 == 0)) & 1) * ((v1 + 2520) ^ 0xE79)) ^ v1)))();
}

uint64_t sub_1000DBC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 != 0) * (v3 + v5 + 60)) ^ (v2 + v5 + 2248))))();
}

void sub_1000DBCC0(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1000C7818);
}

uint64_t sub_1000DBCD8()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x546)))(32, 0x100004077774924);
  STACK[0x7D8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 ^ 0x208 ^ (v0 + 2144423450) & 0x802EB3F1)) ^ v0)))();
}

uint64_t sub_1000DBD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, int *a18)
{
  a12 = 0;
  a16 = (v18 - 3416) ^ (33731311 * (((&a15 | 0x985353AE) - (&a15 & 0x985353AE)) ^ 0xA1A5998D));
  a17 = a11;
  a18 = &a12;
  (*(v19 + 8 * (v18 + 2933)))(&a15);
  a17 = a11;
  a18 = &a13;
  a16 = (v18 - 3416) ^ (33731311 * (((&a15 | 0x6832767D) + (~&a15 | 0x97CD8982)) ^ 0x51C4BC5F));
  (*(v19 + 8 * (v18 + 2933)))(&a15);
  a17 = a11;
  LODWORD(a18) = v18 - 2008441969 * (&a15 ^ 0x4899540E) - 983;
  v21 = (*(v19 + 8 * (v18 ^ 0x3C6F)))(&a15);
  return (*(v19 + 8 * (((a15 != v20) * ((69 * (v18 ^ 0x19EA)) ^ 0xBEE)) ^ v18)))(v21);
}

uint64_t sub_1000DBEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x976]) = v63;
  LODWORD(STACK[0x360]) = v63;
  return sub_10008C76C(v64 - 5325, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

void sub_1000DBF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51)
{
  v53 = ((v51 + 569373155) & 0xDE0FFEB6) - 873;
  LODWORD(STACK[0xA64]) = a51;
  STACK[0x640] += v53 ^ 0xFFFFFFFFFFFFFCDBLL;
  LODWORD(STACK[0x648]) = a51;
  STACK[0x510] = *(v52 + 8 * v53);
  JUMPOUT(0x1000DBF70);
}

uint64_t sub_1000DBFB8(uint64_t a1, uint64_t a2, int a3, int8x16_t a4)
{
  v8 = v4 + v6;
  v9 = veorq_s8(*(a1 + v8 + 16), a4);
  v10 = (a2 + v8);
  *v10 = veorq_s8(*(a1 + v8), a4);
  v10[1] = v9;
  return (*(v7 + 8 * (((2 * (v5 != v8)) | ((v5 != v8) << 6)) ^ a3)))();
}

uint64_t sub_1000DC020(int8x16_t a1)
{
  v7 = (v2 - 32);
  v8 = (v3 - 32);
  v9 = veorq_s8(*v8, a1);
  v7[-1] = veorq_s8(v8[-1], a1);
  *v7 = v9;
  return (*(v6 + 8 * (((v1 == 32) * v5) ^ v4)))();
}

uint64_t sub_1000DC030@<X0>(int a1@<W8>)
{
  (*(v1 + 8 * (a1 + 7628)))();
  *(v2 + 24) = 0;
  return sub_10004FB54();
}

void sub_1000DC054()
{
  STACK[0x4F0] = 0;
  STACK[0x410] = 0;
  STACK[0x908] = *(v1 + 8 * v0);
  JUMPOUT(0x1000B8804);
}

uint64_t sub_1000DC10C()
{
  *(v3 - 224) = (v0 - 2140802201) ^ (914963389 * ((v3 - 232) ^ 0x2CFCB17B));
  v4 = (*(v2 + 8 * (v0 + 3547)))(v3 - 232);
  *v1 = *(v3 - 232) ^ 0xAC;
  return (*(v2 + 8 * ((v0 + 1071) ^ 0x7D3)))(v4);
}

uint64_t sub_1000DC1A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = a4 + 43629116;
  v10 = v6 ^ (v7 + 528);
  v11 = v4 + v6 + 897;
  v12 = v8 < v9;
  if (v9 < v8)
  {
    v12 = 1;
  }

  return (*(v5 + 8 * ((v12 * (v10 + 9905)) ^ v11)))(0xE9A6D70123396331, a2, 0);
}

uint64_t sub_1000DC300(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x638] == 0) * ((v2 + 1617627665) & 0x9F94FFDF ^ 0x17EA)) | v2)))();
}

uint64_t sub_1000DC4DC@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 + 6089)))(a1);
  *(STACK[0x4D8] + 24) = 0;
  return sub_1000DC500();
}

void sub_1000DC500()
{
  (*(v1 + 8 * (v0 ^ 0x2CB1)))();
  STACK[0x4D8] = 0;
  JUMPOUT(0x1000DC524);
}

uint64_t sub_1000E1B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4 + a2;
  v10 = ((970 * (v5 ^ 0xFF1u)) ^ 0xFFFFFFFFFFFFF0D7) + a4;
  *(v6 + v10) = *(v7 + v10) ^ *(a1 + v10) ^ *(v9 + 3) ^ *(v4 + v10) ^ (47 * v10) ^ 0x3C;
  return (*(v8 + 8 * ((8102 * (v10 == 0)) ^ v5)))();
}

uint64_t sub_1000E1C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v24 = 1875091903 * ((1389182960 - (&a14 | 0x52CD3FF0) + (&a14 | 0xAD32C00F)) ^ 0x9B47438C);
  a17 = a11;
  a15 = (v20 ^ 0x3C3FB7BB) + ((v20 << (v23 + 23)) & 0x787F6F76) - 472056081 + v24;
  a16 = v24 + v23 + 2114;
  (*(v22 + 8 * ((v23 - 3490) ^ 0x2DE5)))(&a14);
  v25 = 1824088897 * ((2 * (&a14 & 0x1C59B730) - &a14 - 475641656) ^ 0xBBCF9BAA);
  a17 = v18;
  a18 = a11;
  a14 = v25 + v23 - 3490 + 1637;
  a16 = (v19 ^ 0xCFADFF8B) + ((2 * v19) & 0x9F5BFF16) - v25 + 2130111231;
  v26 = (*(v22 + 8 * ((v23 - 3490) ^ 0x2DD7)))(&a14);
  return (*(v22 + 8 * ((7204 * (a15 == v21)) ^ (v23 - 3490))))(v26);
}

uint64_t sub_1000E1E74@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v21 = *(STACK[0x398] + v9);
  v22 = (a8 - 257 * (((((v9 + ((2 * v21) & 0xFFFFFFEF) + (v21 ^ 0x37BFBDF7) + a7) * v17 - v20 + a8) * a5) >> 32) >> 8) - v16 + a6) ^ a4;
  v23 = v22 ^ a1 ^ v12;
  v24 = v23 + v16 - 2 * v23;
  HIDWORD(v25) = v23 + a2 + (((v22 ^ ~a1) + v15) & v15) + (((v22 ^ a1) + a2) & v15);
  LODWORD(v25) = v23;
  v26 = v22 ^ v12;
  v27 = a4 - v23;
  v28 = (v27 - v24 + (v25 >> 29)) ^ v26;
  v29 = (v28 + v10) ^ v24;
  v30 = (v28 + v10) ^ v27;
  v31 = v28 + v10 + v26;
  v32 = (((__PAIR64__(v28, v28 + v10) >> 28) - v30 - v29 + (((v28 + v10) ^ (256419 - v28)) & 0x28800) + v18) ^ v31) + v11;
  v33 = ((v32 ^ v30) - (v32 + v31) + (v32 ^ v29 ^ __ROR4__(v32, 28)) + a9) ^ (v32 + v31);
  v34 = v9 + 1 + v14;
  v35 = (a3 < v14) ^ (v34 < v14);
  v36 = v34 < a3;
  if (v35)
  {
    v36 = a3 < v14;
  }

  return (*(STACK[0x598] + 8 * ((v36 * v19) ^ (v13 + 3042))))(v33);
}

uint64_t sub_1000E1E7C@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, _DWORD *a4, uint64_t a5, void *a6)
{
  *a6 = a1;
  *a4 = a2;
  return sub_10012DB58();
}

uint64_t sub_1000E20A0@<X0>(int a1@<W8>)
{
  v4 = a1 - v1 + 1055496055;
  v5 = (2 * (v4 & 0xC11668A3 ^ ((v2 ^ 0x18B5) - 1291) ^ 0x91B4B4D1)) & 0x81248000 ^ v4 & 0xC11668A3 ^ ((v2 ^ 0x18B5) - 1291) ^ 0x91B4B4D1 ^ ((2 * (v4 & 0xC11668A3 ^ ((v2 ^ 0x18B5) - 1291) ^ 0x91B4B4D1)) ^ 0x23694C22) & (v4 ^ 0x50A2CEB2);
  v6 = ((2 * (v4 ^ 0x50A2CEB2)) ^ 0x23694C22) & (v4 ^ 0x50A2CEB2) ^ (2 * (v4 ^ 0x50A2CEB2)) & 0x91B4A610;
  v7 = v5 ^ v6 & 0x696019EE ^ ((4 * v5) ^ 0x2B3281AA) & (v6 ^ 0x1200401);
  v8 = ((4 * v6) ^ 0x6DE009EE) & (v6 ^ 0x1200401) ^ v6 & 0x696019EE;
  v9 = v7 ^ v8 & 0x696019EE ^ ((16 * v7) ^ 0x722A78FE) & (v8 ^ 0x1200001);
  v10 = ((16 * v8) ^ 0x7B6019EE) & (v8 ^ 0x1200001) ^ v8 & 0x696019EE;
  v11 = v9 ^ v10 & 0x696019EE ^ ((v9 << 8) ^ 0xFDC608EE) & (v10 ^ 0x1200011);
  v12 = ((v10 << 8) ^ 0x496019EE) & (v10 ^ 0x1200011) ^ v10 & 0x696019EE;
  v13 = v4 ^ (2 * (v11 ^ v12 & 0x696019EE ^ ((v11 << 16) ^ 0xCF7119EE) & (v12 ^ 0x10940000) ^ ((v11 << 16) ^ 0xCF7119EE) & 0x11B40000));
  LODWORD(STACK[0x420]) = v13 ^ 0xEBFABDD2;
  v14 = (*(v3 + 8 * (v2 ^ 0x2ADC)))(v13 ^ 0xE03F2481, 0x100004077774924);
  STACK[0x6A8] = v14;
  return (*(v3 + 8 * ((200 * (v14 != 0)) ^ v2)))();
}

uint64_t sub_1000E2274()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x1A5)))(STACK[0x590], 0x100004077774924);
  STACK[0x718] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 4826) ^ 0x3091 ^ ((v0 - 9191) | 0x2194))) ^ v0)))();
}

uint64_t sub_1000E2334()
{
  STACK[0x740] = v3;
  LODWORD(STACK[0x78C]) = 16215976;
  STACK[0x8E0] = *(v4 + 8 * (v2 - 5861));
  STACK[0x538] = &STACK[0x8A8];
  v0 = STACK[0x8A8];
  STACK[0x818] = STACK[0x8A8];
  return (*(v4 + 8 * ((21 * (v0 != 0)) ^ v2 ^ 0x3482)))();
}

uint64_t sub_1000E2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x350];
  if (LODWORD(STACK[0x350]) == 43491)
  {
    return (*(a72 + 8 * ((a71 - 4055) | (LODWORD(STACK[0x2F0]) == LODWORD(STACK[0x370])) | (8 * (LODWORD(STACK[0x2F0]) == LODWORD(STACK[0x370]))))))();
  }

  if (v72 == 28239)
  {
    return (*(a72 + 8 * ((2038 * (LODWORD(STACK[0xB38]) - ((2 * LODWORD(STACK[0xB38])) & 0x4AB7A8BE) + a71 - 1520714604 != -1520708513)) ^ (a71 + 3113))))();
  }

  if (v72 == 47633)
  {
    return (*(a72 + 8 * (((LODWORD(STACK[0xB20]) == 197499227) * (((a71 - 5514) | 0x22) ^ 0x988)) ^ (a71 - 4055))))();
  }

  return (*(a72 + 8 * (((*(STACK[0x5F8] + 24) == 0) * ((35 * (a71 ^ 0x17D6)) ^ 0x3A5)) ^ (a71 + 1466))))();
}

uint64_t sub_1000E25AC()
{
  v3 = v5 + v0;
  *v1 = v6;
  v1[1] = v8;
  v1[2] = v9;
  v1[3] = v10;
  v14 = (v5 + v0 - 745078826) ^ (1824088897 * ((((2 * &v12) | 0xAEE38400) - &v12 + 680410624) ^ 0x8F181162));
  v13 = v7;
  (*(v2 + 8 * ((v5 + v0) ^ (v0 - 3242))))(&v12);
  v13 = v11;
  v14 = (v3 - 745078826) ^ (1824088897 * ((&v12 + 2005329675 - 2 * (&v12 & 0x7786E70B)) ^ 0x2FEF3469));
  (*(v2 + 8 * (v3 - 745077560)))(&v12);
  return 0;
}

uint64_t sub_1000E26DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v10 = v5 + 8;
  *(v8 + (a3 ^ v10) + v4) = *(v7 + (a3 ^ v10) + v4);
  return (*(v9 + 8 * (((a2 == v10) * a4) ^ v6)))();
}

uint64_t sub_1000E26E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v23 = 1875091903 * ((((2 * (&a12 ^ 0x91892227)) | 0xD129FFB6) - (&a12 ^ 0x91892227) - 1754595291) ^ 0xCF685E7F);
  a15 = a9;
  a13 = (v18 ^ 0xAB9FFEBF) + ((2 * v18) & 0x573FFD7E) + 1954330603 + v23;
  a14 = v23 + v22 + 6070;
  (*(v19 + 8 * (v22 ^ 0x23DB)))(&a12);
  v24 = 1824088897 * ((((2 * &a12) | 0xD2F301C6) - &a12 - 1769570531) ^ 0x31105381);
  a15 = v16;
  a16 = a9;
  a12 = v24 + v22 + 2103;
  a14 = ((2 * v17) & 0x9D5BDD94) - v24 + (v17 ^ 0x3019975E ^ (v22 - v21)) + 2146892736;
  v25 = (*(v19 + 8 * (v22 + 7977)))(&a12);
  return (*(v19 + 8 * ((2909 * (a13 == v20)) ^ v22)))(v25);
}

uint64_t sub_1000E2848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v23 = 1875091903 * ((&a14 + 1054837029 - 2 * (&a14 & 0x3EDF8925)) ^ 0x8AA0AA6);
  a15 = (v20 ^ 0x7EBFBEAE) + ((2 * v20) & 0xFD7F7D5C) - 1587742724 + v23;
  a16 = v23 + 7724;
  a17 = a11;
  (*(v21 + 77160))(&a14);
  v24 = 1824088897 * (((&a14 ^ 0x575C55CD) & 0xB47D2A3 | ~(&a14 ^ 0x575C55CD | 0xB47D2A3)) ^ 0xFB8DABF3);
  a17 = v18;
  a18 = a11;
  a14 = v24 + 3757;
  a16 = (v19 ^ 0xEEB7FBCB) + ((2 * v19) & 0xDD6FF796) - v24 + 1609363135;
  v25 = (*(v21 + 77048))(&a14);
  return (*(v21 + 8 * ((59 * (a15 != v22)) ^ 0x75Au)))(v25);
}

uint64_t sub_1000E29F8(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = a15 - 8;
  v29.i64[0] = a16 + v28 + 11;
  v29.i64[1] = a16 + v28 + 10;
  v30.i64[0] = a16 + v28 + 13;
  v30.i64[1] = a16 + v28 + 12;
  v31.i64[0] = a16 + v28 + 15;
  v31.i64[1] = a16 + v28 + 14;
  v32.i64[0] = a16 + v28 + 17;
  v32.i64[1] = a16 + v28 + 16;
  v33 = vandq_s8(v32, a1);
  v34 = vandq_s8(v31, a1);
  v35 = vandq_s8(v30, a1);
  v36 = vandq_s8(v29, a1);
  v37 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v41 = vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a3), a4));
  v42 = vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4));
  v43 = vaddq_s64(vsubq_s64(v38, vandq_s8(vaddq_s64(vaddq_s64(v38, v38), a3), a4)), a5);
  v44 = vaddq_s64(vsubq_s64(v37, vandq_s8(vaddq_s64(vaddq_s64(v37, v37), a3), a4)), a5);
  v45 = veorq_s8(v44, a6);
  v46 = veorq_s8(v43, a6);
  v47 = veorq_s8(v43, a7);
  v48 = veorq_s8(v44, a7);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v47), a8);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v48), a8);
  v51 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v53 = veorq_s8(v49, v51);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = veorq_s8(vaddq_s64(v54, v52), v19);
  v57 = veorq_s8(v55, v19);
  v58 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v59 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = veorq_s8(vaddq_s64(v61, v59), v20);
  v64 = veorq_s8(v62, v20);
  v65 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v66 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v67 = veorq_s8(v63, v65);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = vaddq_s64(v68, v66);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v21), v70), v22), v23);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), v21), v69), v22), v23);
  v73 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v24);
  v79 = veorq_s8(v77, v24);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v25);
  v86 = veorq_s8(v84, v25);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v92 = vaddq_s64(v41, a5);
  v93 = vaddq_s64(v91, v89);
  v94 = veorq_s8(vaddq_s64(v90, v88), v27);
  v125.val[3] = vshlq_u64(veorq_s8(v93, v27), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v125.val[2] = vshlq_u64(v94, vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v95 = veorq_s8(v92, a6);
  v96 = veorq_s8(v92, a7);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), a8);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v19);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v20);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), v21), v103), v22), v23);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v24);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v25);
  v109 = vaddq_s64(v42, a5);
  v125.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v110 = veorq_s8(v109, a6);
  v111 = veorq_s8(v109, a7);
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), a8);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v19);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v20);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), v21), v118), v22), v23);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v24);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v25);
  v125.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  *(a16 + v28 + 10) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v125, v26)), *(v16 + v28 + v17 + 1));
  return (*(STACK[0x3E8] + 8 * (((a14 == v28) * v18) ^ a12)))();
}

uint64_t sub_1000E2A18@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  STACK[0x768] = a1;
  v59 = (*(v58 + 8 * (v57 + 3224)))(32, 0x103004054B5FA7DLL);
  STACK[0x7B8] = v59;
  return (*(a57 + 8 * (((v59 == 0) * ((4 * v57) ^ 0x645D)) ^ v57)))();
}

uint64_t sub_1000E2A70(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = a15 - 8;
  v29.i64[0] = a16 + v28 + 11;
  v29.i64[1] = a16 + v28 + 10;
  v30.i64[0] = a16 + v28 + 13;
  v30.i64[1] = a16 + v28 + 12;
  v31.i64[0] = a16 + v28 + 17;
  v31.i64[1] = a16 + v28 + 16;
  v32.i64[0] = a16 + v28 + 15;
  v32.i64[1] = a16 + v28 + a10 - 3468;
  v33 = vandq_s8(v32, a1);
  v34 = vandq_s8(v31, a1);
  v35 = vandq_s8(v30, a1);
  v36 = vandq_s8(v29, a1);
  v37 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v41 = vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a3), a4));
  v42 = vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4));
  v43 = vaddq_s64(vsubq_s64(v38, vandq_s8(vaddq_s64(vaddq_s64(v38, v38), a3), a4)), a5);
  v44 = vaddq_s64(vsubq_s64(v37, vandq_s8(vaddq_s64(vaddq_s64(v37, v37), a3), a4)), a5);
  v45 = veorq_s8(v44, a6);
  v46 = veorq_s8(v43, a6);
  v47 = veorq_s8(v43, a7);
  v48 = veorq_s8(v44, a7);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v47), a8);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v48), a8);
  v51 = vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL);
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v53 = veorq_s8(v49, v51);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = veorq_s8(vaddq_s64(v54, v52), v19);
  v57 = veorq_s8(v55, v19);
  v58 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v59 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = veorq_s8(vaddq_s64(v61, v59), v20);
  v64 = veorq_s8(v62, v20);
  v65 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v66 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v67 = veorq_s8(v63, v65);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = vaddq_s64(v68, v66);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v21), v70), v22), v23);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), v21), v69), v22), v23);
  v73 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v24);
  v79 = veorq_s8(v77, v24);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v25);
  v86 = veorq_s8(v84, v25);
  v87 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v92 = vaddq_s64(v41, a5);
  v93 = vaddq_s64(v91, v89);
  v94 = veorq_s8(vaddq_s64(v90, v88), v26);
  v125.val[3] = vshlq_u64(veorq_s8(v93, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v125.val[2] = vshlq_u64(v94, vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v95 = veorq_s8(v92, a6);
  v96 = veorq_s8(v92, a7);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), a8);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v19);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v20);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), v21), v103), v22), v23);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v24);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v25);
  v109 = vaddq_s64(v42, a5);
  v125.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v110 = veorq_s8(v109, a6);
  v111 = veorq_s8(v109, a7);
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), a8);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v19);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v20);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), v21), v118), v22), v23);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v24);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v25);
  v125.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  *(a16 + v28 + 10) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v125, v27)), *(v16 + v28));
  return (*(v18 + 8 * (((a14 != v28) * v17) ^ a13)))();
}

uint64_t sub_1000E2A78(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9, int a10, char a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, int a20)
{
  LODWORD(STACK[0x4C8]) = 0;
  LODWORD(STACK[0x58C]) = 0;
  v21 = STACK[0x520];
  v22 = STACK[0x518];
  v23 = STACK[0x510];
  v24 = STACK[0x508];
  v25 = v20;
  LODWORD(STACK[0x5B0]) = a4;
  v26 = (a4 + 1445384224) & 0xA9D9379B;
  v27 = (a4 + 588) | 0xA63;
  v28 = v22 - 959741750;
  LODWORD(STACK[0x590]) = v27;
  v29 = ((v28 & 0x92F1E256) << (v27 - 122)) & (v28 ^ 0x50EDD255) ^ v28 & 0x92F1E256;
  LODWORD(STACK[0x310]) = v26;
  v30 = ((((v22 - 959741750) ^ 0x500C96D5) << (v26 + 121)) ^ 0x85FAE906) & ((v22 - 959741750) ^ 0x500C96D5) ^ (((v22 - 959741750) ^ 0x500C96D5) << (v26 + 121)) & 0xC2FD7482;
  v31 = v30 ^ 0x42051481;
  v32 = (v30 ^ 0x80C80400) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0xBF5D20C) & v31 ^ (4 * v31) & 0xC2FD7480;
  v34 = v32 ^ 0xC2FD7483 ^ (v33 ^ 0x2F55000) & (16 * v32);
  v35 = (16 * (v33 ^ 0xC0082483)) & 0xC2FD7480 ^ 0xC0283483 ^ ((16 * (v33 ^ 0xC0082483)) ^ 0x2FD74830) & (v33 ^ 0xC0082483);
  v36 = (v34 << 8) & 0xC2FD7400 ^ v34 ^ ((v34 << 8) ^ 0xFD748300) & v35;
  v37 = v28 ^ (2 * ((v36 << 16) & 0x42FD0000 ^ v36 ^ ((v36 << 16) ^ 0x74830000) & ((v35 << 8) & 0x42FD0000 ^ 0x2890000 ^ ((v35 << 8) ^ 0x7D740000) & v35)));
  v38 = (((v21 + 1878716015) ^ 0x366E23A) - 358312309) ^ (v21 + 1878716015) ^ (((v21 + 1878716015) ^ 0x21B49B65) - 931729450) ^ (((v21 + 1878716015) ^ 0x4B380DEF) - 1560643232) ^ (((v21 + 1878716015) ^ 0x7FD7FFFF) - 1776972976) ^ v23;
  v39 = (v37 & 0x749DF3 ^ 0xEDE41EE5) & (v37 & 0x749DF3 ^ 0xEDE12B54) ^ v37 & 0x708842;
  v40 = a6 + 768410505 + (((v39 ^ 0xE47C45CF) + 913211382) ^ ((v39 ^ 0xD04C5EA8) + 39740563) ^ ((v39 ^ 0xD9A48CD0) + 196523755));
  v41 = (v40 ^ 0x100C4EED) & (2 * (v40 & 0x92AC4EE9)) ^ v40 & 0x92AC4EE9;
  v42 = ((2 * (v40 ^ 0x1554C7AD)) ^ 0xFF11288) & (v40 ^ 0x1554C7AD) ^ (2 * (v40 ^ 0x1554C7AD)) & 0x87F88944;
  v43 = v42 ^ 0x80088944;
  v44 = (v42 ^ 0x7F00000) & (4 * v41) ^ v41;
  v45 = ((4 * v43) ^ 0x1FE22510) & v43 ^ (4 * v43) & 0x87F88944;
  v46 = v44 ^ 0x87F88944 ^ (v45 ^ 0x7E00100) & (16 * v44);
  v47 = (16 * (v45 ^ 0x80188844)) & 0x87F88940 ^ 0x80700904 ^ ((16 * (v45 ^ 0x80188844)) ^ 0x7F889440) & (v45 ^ 0x80188844);
  v48 = (v46 << 8) & 0x87F88900 ^ v46 ^ ((v46 << 8) ^ 0xF8894400) & v47;
  v49 = v40 ^ v37 ^ a3 ^ (2 * ((v48 << 16) & 0x7F80000 ^ v48 ^ ((v48 << 16) ^ 0x9440000) & ((v47 << 8) & 0x7F80000 ^ 0x7700000 ^ ((v47 << 8) ^ 0x78890000) & v47)));
  v50 = ((v38 ^ v24 ^ 0xBB1191F1) - 1238922676) ^ ((v38 ^ v24 ^ 0x31DC6C7) + 237755774) ^ ((v38 ^ v24 ^ 0xAE31DC79) - 1559771196);
  v51 = ((v37 ^ a3 ^ 0xF9D9EE06) - 12844013) ^ ((v37 ^ a3 ^ 0x3949A059) + 1068255822) ^ ((v37 ^ a3 ^ 0xD671450F) - 795562212);
  v52 = ((v49 ^ 0x6A6DADA6) - 878070156) ^ ((v49 ^ 0x6A3A5B27) - 872529677) ^ ((v49 ^ 0x887BA1B0) + 700430950);
  v53 = ((v38 ^ 0x4186850A) + 1461755668) ^ ((v38 ^ 0x1C5DFA51) + 184279113) ^ ((v38 ^ 0x4BE6F414) + 1564536334);
  v54 = v25 - v51;
  v55 = (((v37 ^ a3 ^ 0xBB1A49A) + 223628943) ^ ((v37 ^ a3 ^ 0xE97E1674) - 274989983) ^ ((v37 ^ a3 ^ 0xF42EB9BE) - 221555797)) - 248572398;
  v56 = ((v55 ^ 0x56596B29) - 1073670983) ^ v55 ^ ((v55 ^ 0x1D70921A) - 1960252020) ^ ((v55 ^ 0x5D5586E2) - 888276620) ^ ((v55 ^ 0x7FDBFFBF) - 377257937);
  v57 = (((v25 - v51 - 1884338700) ^ 0x7FB2B3BE) - 2036169037) ^ (v25 - v51 - 1884338700) ^ (((v25 - v51 - 1884338700) ^ 0x9DDCD439) + 1691148598) ^ (((v25 - v51 - 1884338700) ^ 0x13FE5A9B) - 353472616) ^ (((v25 - v51 - 1884338700) ^ 0xF77FF7EF) + 242205412) ^ v56;
  v58 = (((v57 ^ 0x98429D74) + 977998813) ^ ((v57 ^ 0x840FF442) + 637958891) ^ ((v57 ^ 0x730523AB) - 787698428)) + 1363840435;
  v59 = a8 - v53;
  v60 = (((v38 ^ 0x27A2565A) + 822365252) ^ ((v38 ^ 0x68ADE18F) + 2114714519) ^ ((v38 ^ 0x59323C9A) + 1335109252)) - 793212428;
  v61 = ((v60 ^ 0xAE327CDD) + 1745495873) ^ v60 ^ ((v60 ^ 0x55B51BA9) - 1819459531) ^ ((v60 ^ 0xF4BF3CE9) + 847734645) ^ ((v60 ^ 0x36FFFFFF) - 255351709);
  v62 = (((a8 - v53 - 1702374221) ^ 0x47055206) - 1545653740) ^ (a8 - v53 - 1702374221) ^ (((a8 - v53 - 1702374221) ^ 0x59A087C1) - 1116018731) ^ (((a8 - v53 - 1702374221) ^ 0x6A7D95D2) - 1901595192) ^ (((a8 - v53 - 1702374221) ^ 0x6FFDDFFF) - 1960329237) ^ v61;
  v63 = (((v62 ^ 0xFC2F3467) - 460407778) ^ ((v62 ^ 0xEC194CC8) - 189217613) ^ ((v62 ^ 0x32D44327) + 712362846)) - 839222108;
  v64 = (((v37 ^ 0x394B94BD) - 771202719) ^ ((v37 ^ 0x5CE8AA32) - 1213505552) ^ ((v37 ^ 0x734235DF) - 1744715773)) - v51 + v58 + 1317713721 + v52;
  v65 = v21 - v53 + v50 - 649347015 + v63;
  v66 = v21 - 931675903 + v63;
  v67 = (v66 ^ 0xE2CA6422) & (2 * (v66 & 0xC3088834)) ^ v66 & 0xC3088834;
  v68 = ((2 * (v66 ^ 0x62CB744A)) ^ 0x4387F8FC) & (v66 ^ 0x62CB744A) ^ (2 * (v66 ^ 0x62CB744A)) & 0xA1C3FC7E;
  v69 = v68 ^ 0xA0400402;
  v70 = (v68 ^ 0x26070) & (4 * v67) ^ v67;
  v71 = ((4 * v69) ^ 0x870FF1F8) & v69 ^ (4 * v69) & 0xA1C3FC7C;
  v72 = (v71 ^ 0x8103F060) & (16 * v70) ^ v70;
  v73 = ((16 * (v71 ^ 0x20C00C06)) ^ 0x1C3FC7E0) & (v71 ^ 0x20C00C06) ^ (16 * (v71 ^ 0x20C00C06)) & 0xA1C3FC70;
  v74 = v73 ^ 0xA1C0381E;
  v75 = v72 ^ 0xA1C3FC7E ^ (v73 ^ 0x3C400) & (v72 << 8);
  v76 = (((v37 ^ 0x8CCA9761) + 1737056957) ^ ((v37 ^ 0x5BE66358) - 1331325306) ^ ((v37 ^ 0xC1CDFF69) + 713951925)) + 1760022645 + v58;
  v77 = (2 * (v64 & 0xEAD50171)) & (v64 ^ 0xE2535DEB) ^ v64 & 0xEAD50171 ^ ((2 * (v64 & 0xEAD50171)) & 0x820082 | 0x8004010);
  v78 = (2 * (v64 ^ 0xE2535DEB)) & 0x8865C9A ^ 0x882448A ^ ((2 * (v64 ^ 0xE2535DEB)) ^ 0x110CB934) & (v64 ^ 0xE2535DEB);
  v79 = (4 * v77) & 0x8865C98 ^ v77 ^ ((4 * v77) ^ 0x20010040) & v78;
  v80 = (4 * v78) & 0x8865C98 ^ 0x8860C92 ^ ((4 * v78) ^ 0x22197268) & v78;
  v81 = (16 * v79) & 0x8865C90 ^ v79 ^ ((16 * v79) ^ 0x80040100) & v80;
  v82 = (16 * v80) & 0x8865C90 ^ 0x82141A ^ ((16 * v80) ^ 0x8865C9A0) & v80;
  v83 = v81 ^ 0x820C8A ^ (v81 << 8) & 0x8865C00 ^ ((v81 << 8) ^ 0x4401000) & v82;
  v84 = ((v76 ^ 0x78446E8) - 1284656296) ^ v76 ^ ((v76 ^ 0x5872DC85) - 325375685) ^ ((v76 ^ 0x6B0FEFD0) - 538568080) ^ ((v76 ^ 0x7FEF7FFD) - 888763837) ^ v64 ^ (2 * ((v83 << 16) & 0x8860000 ^ v83 ^ ((v83 << 16) ^ 0x5C9A0000) & ((v82 << 8) & 0x8860000 ^ 0x8820000 ^ ((v82 << 8) ^ 0x65C0000) & v82)));
  v85 = (((v54 + 787822547) ^ 0xB5875A8B) + 1202139283) ^ (v54 + 787822547) ^ (((v54 + 787822547) ^ 0x4CCB01E1) - 1091867655) ^ (((v54 + 787822547) ^ 0x36CB151) - 246621367) ^ (((v54 + 787822547) ^ 0xF7FF7FDD) + 98506181) ^ v84 ^ 0x1D0DAB30;
  v86 = v59 + 673007617;
  v87 = (((v56 ^ 0x9CCA0207) - 1466231110) ^ ((v56 ^ 0xAF2F0B69) - 1686233128) ^ ((v56 ^ 0x2433F8CD) + 274918516)) - v54 - 665743606;
  v88 = v64 + v87;
  v89 = (v64 + v87) ^ 0xA19BD1C5;
  v90 = ((v64 + v87) ^ 0xA9D1C35D) & (2 * ((v64 + v87) & 0xCDE5EB5C)) ^ (v64 + v87) & 0xCDE5EB5C;
  v91 = ((2 * v89) ^ 0xD8FC7532) & v89 ^ (2 * v89) & 0x6C7E3A98;
  v92 = v91 ^ 0x24020A89;
  v93 = (v91 ^ 0x483C3010) & (4 * v90) ^ v90;
  v94 = ((4 * v92) ^ 0xB1F8EA64) & v92 ^ (4 * v92) & 0x6C7E3A98;
  v95 = (v94 ^ 0x20782A19) & (16 * v93) ^ v93;
  v96 = ((16 * (v94 ^ 0x4C061099)) ^ 0xC7E3A990) & (v94 ^ 0x4C061099) ^ (16 * (v94 ^ 0x4C061099)) & 0x6C7E3A90;
  v97 = v95 ^ 0x6C7E3A99 ^ (v96 ^ 0x44622800) & (v95 << 8);
  v98 = v88 ^ (2 * ((v97 << 16) & 0x6C7E0000 ^ v97 ^ ((v97 << 16) ^ 0x3A990000) & (((v96 ^ 0x281C1209) << 8) & 0x6C7E0000 ^ 0x440000 ^ (((v96 ^ 0x281C1209) << 8) ^ 0x7E3A0000) & (v96 ^ 0x281C1209))));
  v99 = (((v61 ^ 0xD43D4E26) + 599935439) ^ ((v61 ^ 0x200FFDA4) - 672073139) ^ ((v61 ^ 0xB384662D) + 1148936646)) - v59 + 1395375508;
  v100 = v98 ^ v84 ^ 0x1D0DAB30;
  v101 = ((v84 ^ 0x1CEA193E) - 31961614) ^ ((v84 ^ 0xDCE60D67) + 1041521065) ^ ((v84 ^ 0x61C7A65C) - 2093616492);
  v102 = (((v100 ^ 0x824A5B8C) - 247424178) ^ ((v100 ^ 0xAA2E8B55) - 651932779) ^ ((v100 ^ 0xD18B5782) - 1568565436)) - v101 - 1503851279;
  v103 = (v102 ^ 0x93560959) & (2 * (v102 & 0xDB861262)) ^ v102 & 0xDB861262;
  v104 = ((2 * (v102 ^ a20)) ^ 0x9BA87776) & (v102 ^ a20) ^ (2 * (v102 ^ a20)) & 0xCDD43BBA;
  v105 = v104 ^ 0x44540889;
  v106 = (v104 ^ 0x88001310) & (4 * v103) ^ v103;
  v107 = ((4 * v105) ^ 0x3750EEEC) & v105 ^ (4 * v105) & 0xCDD43BB8;
  v108 = (v107 ^ 0x5502AA0) & (16 * v106) ^ v106;
  v109 = ((16 * (v107 ^ 0xC8841113)) ^ 0xDD43BBB0) & (v107 ^ 0xC8841113) ^ (16 * (v107 ^ 0xC8841113)) & 0xCDD43BB0;
  v110 = v108 ^ 0xCDD43BBB ^ (v109 ^ 0xCD403B00) & (v108 << 8);
  v111 = (v110 << 16) & 0x4DD40000 ^ v110 ^ ((v110 << 16) ^ 0x3BBB0000) & (((v109 ^ 0x94000B) << 8) & 0xCDD40000 ^ 0x9C40000 ^ (((v109 ^ 0x94000B) << 8) ^ 0xD43B0000) & (v109 ^ 0x94000B));
  v112 = (v65 ^ 0xAC31C66B) & (2 * (v65 & 0xCD35E772)) ^ v65 & 0xCD35E772;
  v113 = ((2 * (v65 ^ 0xA43388AB)) ^ 0xD20CDFB2) & (v65 ^ 0xA43388AB) ^ (2 * (v65 ^ 0xA43388AB)) & 0x69066FD8;
  v114 = v113 ^ 0x29022049;
  v115 = (v113 ^ 0x40040F91) & (4 * v112) ^ v112;
  v116 = ((4 * v114) ^ 0xA419BF64) & v114 ^ (4 * v114) & 0x69066FD8;
  v117 = (v116 ^ 0x20002F40) & (16 * v115) ^ v115;
  v118 = ((16 * (v116 ^ 0x49064099)) ^ 0x9066FD90) & (v116 ^ 0x49064099) ^ (16 * (v116 ^ 0x49064099)) & 0x69066FD0;
  v119 = v117 ^ 0x69066FD9 ^ (v118 ^ 0x66D49) & (v117 << 8);
  v120 = v66 ^ v65 ^ (2 * (v119 ^ v75 ^ (v75 << 16) & 0x21C30000 ^ (v119 << 16) & 0x69060000 ^ ((v119 << 16) ^ 0x6FD90000) & (((v118 ^ 0x69000249) << 8) & 0x69060000 ^ 0x69000000 ^ (((v118 ^ 0x69000249) << 8) ^ 0x66F0000) & (v118 ^ 0x69000249)) ^ ((v75 << 16) ^ 0x7C7E0000) & ((v74 << 8) & 0x21C30000 ^ 0x20030000 ^ ((v74 << 8) ^ 0x43FC0000) & v74)));
  v121 = ((v86 ^ 0x2EB49CA7) - 1053847787) ^ v86 ^ ((v86 ^ 0x38914DAB) - 687186407) ^ ((v86 ^ 0x7EBAE0BF) - 1860046067) ^ ((v86 ^ 0x78FBDDFF) - 1755263411) ^ v120 ^ 0x7B8830B1;
  v122 = v65 + v99;
  v123 = (v122 ^ 0xB9F7FBD8) & (2 * (v122 & 0xB207FBE1)) ^ v122 & 0xB207FBE1;
  v124 = ((2 * (v122 ^ 0xB9F9085A)) ^ 0x17FDE776) & (v122 ^ 0xB9F9085A) ^ (2 * (v122 ^ 0xB9F9085A)) & 0xBFEF3BA;
  v125 = v124 ^ 0x8021089;
  v126 = (v124 ^ 0x3CE300) & (4 * v123) ^ v123;
  v127 = ((4 * v125) ^ 0x2FFBCEEC) & v125 ^ (4 * v125) & 0xBFEF3B8;
  v128 = (v127 ^ 0xBFAC2A0) & (16 * v126) ^ v126;
  v129 = ((16 * (v127 ^ a19)) ^ 0xBFEF3BB0) & (v127 ^ a19) ^ (16 * (v127 ^ a19)) & 0xBFEF3B0;
  v130 = v128 ^ 0xBFEF3BB ^ (v129 ^ 0xBEE3300) & (v128 << 8);
  v131 = v122 ^ (2 * ((v130 << 16) & 0xBFE0000 ^ v130 ^ ((v130 << 16) ^ 0x73BB0000) & (((v129 ^ 0x10C00B) << 8) & 0xBFE0000 ^ 0x10C0000 ^ (((v129 ^ 0x10C00B) << 8) ^ 0x7EF30000) & (v129 ^ 0x10C00B))));
  v132 = (v99 ^ 0xC6D1524F) & (2 * (v99 & 0xE4D2146F)) ^ v99 & 0xE4D2146F;
  v133 = ((2 * (v99 ^ 0x46557241)) ^ 0x450ECC5C) & (v99 ^ 0x46557241) ^ (2 * (v99 ^ 0x46557241)) & 0xA287662E;
  v134 = v133 ^ 0xA2812222;
  v135 = (v133 ^ 0x1400E) & (4 * v132) ^ v132;
  v136 = ((4 * v134) ^ 0x8A1D98B8) & v134 ^ (4 * v134) & 0xA287662C;
  v137 = (v136 ^ 0x82050020) & (16 * v135) ^ v135;
  v138 = ((16 * (v136 ^ 0x20826606)) ^ 0x287662E0) & (v136 ^ 0x20826606) ^ (16 * (v136 ^ 0x20826606)) & 0xA2876620;
  v139 = v137 ^ 0xA287662E ^ (v138 ^ 0x2006620E) & (v137 << 8);
  v140 = v99 ^ (2 * ((v139 << 16) & 0x22870000 ^ v139 ^ ((v139 << 16) ^ 0x662E0000) & (((v138 ^ 0x8281040E) << 8) & 0x22870000 ^ 0x20810000 ^ (((v138 ^ 0x8281040E) << 8) ^ 0x7660000) & (v138 ^ 0x8281040E)))) ^ v121;
  v141 = v131 ^ v120 ^ 0x7B8830B1;
  v142 = ((v120 ^ 0xFC4AAE9A) + 2017288661) ^ ((v120 ^ 0x118D4311) - 1778742176) ^ ((v120 ^ 0xE0F5A583) + 1686268622);
  v143 = (v87 ^ 0xCB9EC1EA) & (2 * (v87 & 0xE310E9EB)) ^ v87 & 0xE310E9EB;
  v144 = ((2 * (v87 ^ 0xFBE502E)) ^ 0xD95D738A) & (v87 ^ 0xFBE502E) ^ (2 * (v87 ^ 0xFBE502E)) & 0xECAEB9C4;
  v145 = v144 ^ 0x24A28845;
  v146 = (v144 ^ 0x88042180) & (4 * v143) ^ v143;
  v147 = ((4 * v145) ^ 0xB2BAE714) & v145 ^ (4 * v145) & 0xECAEB9C4;
  v148 = (v147 ^ 0xA0AAA100) & (16 * v146) ^ v146;
  v149 = ((16 * (v147 ^ 0x4C0418C1)) ^ 0xCAEB9C50) & (v147 ^ 0x4C0418C1) ^ (16 * (v147 ^ 0x4C0418C1)) & 0xECAEB9C0;
  v150 = v148 ^ 0xECAEB9C5 ^ (v149 ^ 0xC8AA9800) & (v148 << 8);
  v151 = v87 ^ (2 * ((v150 << 16) & 0x6CAE0000 ^ v150 ^ ((v150 << 16) ^ 0x39C50000) & (((v149 ^ 0x24042185) << 8) & 0x6CAE0000 ^ 0x40060000 ^ (((v149 ^ 0x24042185) << 8) ^ 0x2EB90000) & (v149 ^ 0x24042185)))) ^ v85;
  v152 = ((v151 ^ 0x809AB73E) + 2129278060) ^ ((v151 ^ 0xEA4B2663) + 339453239) ^ ((v151 ^ 0xB08D87EF) + 1325204667);
  v153 = v152 + 159146775;
  v154 = ((v102 ^ (2 * v111) ^ 0x4DA1D595) + 896950054) ^ ((v102 ^ (2 * v111) ^ 0x4D77F6E2) + 899710035) ^ ((v102 ^ (2 * v111) ^ 0x87C9B698) - 14795735);
  v155 = (((v141 ^ 0x88CC2506) + 1199558573) ^ ((v141 ^ 0x38741C2C) - 137890169) ^ ((v141 ^ 0x648C5D04) - 1421887569)) - v142 + 1088180440;
  v156 = ((v155 ^ 0x357E0F78) - 1022482571) ^ v155 ^ ((v155 ^ 0x606E7140) - 1776395955) ^ ((v155 ^ 0xAA605634) + 1544584761) ^ ((v155 ^ 0xF6FFFFFF) + 9426932);
  v157 = (((v152 + 159146775) ^ 0xED3D94D6) + 1063949271) ^ (v152 + 159146775) ^ (((v152 + 159146775) ^ 0xCC448B46) + 504597575) ^ (((v152 + 159146775) ^ 0x7A2E1890) - 1468457071) ^ (((v152 + 159146775) ^ 0x76FFFFFF) - 1532430080);
  v158 = v152 - (((v157 ^ 0xA2827EC5) - 1004504751) ^ ((v157 ^ 0x4AAA05BC) + 738722346) ^ ((v157 ^ 0x8CE27BBF) - 364872661)) + 677470273;
  v159 = (v158 ^ 0xB5D30D02) & (2 * (v158 & 0xB5DA112B)) ^ v158 & 0xB5DA112B;
  v160 = ((2 * (v158 ^ 0xDE732F50)) ^ 0xD7527CF6) & (v158 ^ 0xDE732F50) ^ (2 * (v158 ^ 0xDE732F50)) & 0x6BA93E7A;
  v161 = v160 ^ 0x28A90209;
  v162 = (v160 ^ 0x43000C70) & (4 * v159) ^ v159;
  v163 = ((4 * v161) ^ 0xAEA4F9EC) & v161 ^ (4 * v161) & 0x6BA93E78;
  v164 = (v163 ^ 0x2AA03860) & (16 * v162) ^ v162;
  v165 = ((16 * (v163 ^ 0x41090613)) ^ 0xBA93E7B0) & (v163 ^ 0x41090613) ^ (16 * (v163 ^ 0x41090613)) & 0x6BA93E70;
  v166 = v164 ^ 0x6BA93E7B ^ (v165 ^ 0x2A812600) & (v164 << 8);
  v167 = v158 ^ (2 * ((v166 << 16) & 0x6BA90000 ^ v166 ^ ((v166 << 16) ^ 0x3E7B0000) & (((v165 ^ 0x4128184B) << 8) & 0x6BA90000 ^ 0x42810000 ^ (((v165 ^ 0x4128184B) << 8) ^ 0x293E0000) & (v165 ^ 0x4128184B))));
  v168 = v152 - 957002775 + (((v167 ^ 0x746E6189) - 1586686725) ^ ((v167 ^ 0x7597A87E) - 1600856818) ^ ((v167 ^ 0xC8DC5BD4) + 501165736));
  v169 = (v168 ^ 0xF03734DF) & (2 * (v168 & 0xF8B736DE)) ^ v168 & 0xF8B736DE;
  v170 = ((2 * (v168 ^ 0x413D5CDB)) ^ 0x7314D40A) & (v168 ^ 0x413D5CDB) ^ (2 * (v168 ^ 0x413D5CDB)) & 0xB98A6A04;
  v171 = v170 ^ 0x888A2A05;
  v172 = (v170 ^ 0x21004000) & (4 * v169) ^ v169;
  v173 = ((4 * v171) ^ 0xE629A814) & v171 ^ (4 * v171) & 0xB98A6A04;
  v174 = v172 ^ 0xB98A6A05 ^ (v173 ^ 0xA0082800) & (16 * v172);
  v175 = (16 * (v173 ^ 0x19824201)) & 0xB98A6A00 ^ 0x21084A05 ^ ((16 * (v173 ^ 0x19824201)) ^ 0x98A6A050) & (v173 ^ 0x19824201);
  v176 = (v174 << 8) & 0xB98A6A00 ^ v174 ^ ((v174 << 8) ^ 0x8A6A0500) & v175;
  v177 = v168 ^ v102 ^ (2 * (v176 ^ v111 ^ (v176 << 16) & 0x398A0000 ^ ((v176 << 16) ^ 0x6A050000) & ((v175 << 8) & 0x398A0000 ^ 0x31800000 ^ ((v175 << 8) ^ 0x8A6A0000) & v175)));
  v178 = ((v140 ^ 0xDFDE9E93) + 64862963) ^ ((v140 ^ 0xF721EC78) + 723699738) ^ ((v140 ^ 0xABF13E2D) + 2012355149);
  v179 = v156 ^ v140;
  v180 = (((v85 ^ 0xACF6CC99) - 617548726) ^ ((v85 ^ 0xCF5B7B7B) - 1197653076) ^ ((v85 ^ 0xD2B43B31) - 1519254558)) - v168 + (((v177 ^ 0x4502AE35) - 1562407395) ^ ((v177 ^ 0x4515653) - 477333893) ^ ((v177 ^ 0xDFB8F5D) - 366563467)) - (((v177 ^ 0xE3FD667F) - 711742925) ^ ((v177 ^ 0x4BF3526B) + 2107481639) ^ ((v177 ^ 0x7C3EEA48) + 1246766598)) - 292937318;
  v181 = v154 - 1898909756 + (((v177 ^ 0xD3CA1B86) - 442181684) ^ ((v177 ^ 0x7235347D) + 1146878001) ^ ((v177 ^ 0x75CFF1A7) + 1134640619));
  v182 = (v181 ^ 0xF971CBC3) & (2 * (v181 & 0xFA798B92)) ^ v181 & 0xFA798B92;
  v183 = ((2 * (v181 ^ 0xBDA2DBC3)) ^ 0x8FB6A0A2) & (v181 ^ 0xBDA2DBC3) ^ (2 * (v181 ^ 0xBDA2DBC3)) & 0x47DB5050;
  v184 = v183 ^ 0x40495051;
  v185 = (v183 ^ 0x3820000) & (4 * v182) ^ v182;
  v186 = ((4 * v184) ^ 0x1F6D4144) & v184 ^ (4 * v184) & 0x47DB5050;
  v187 = (v186 ^ 0x7494040) & (16 * v185) ^ v185;
  v188 = ((16 * (v186 ^ 0x40921011)) ^ 0x7DB50510) & (v186 ^ 0x40921011) ^ (16 * (v186 ^ 0x40921011)) & 0x47DB5050;
  v189 = v187 ^ 0x47DB5051 ^ (v188 ^ 0x45910000) & (v187 << 8);
  v190 = v181 ^ v177 ^ (2 * ((v189 << 16) & 0x47DB0000 ^ v189 ^ ((v189 << 16) ^ 0x50510000) & (((v188 ^ 0x24A5041) << 8) & 0x47DB0000 ^ 0x48B0000 ^ (((v188 ^ 0x24A5041) << 8) ^ 0x5B500000) & (v188 ^ 0x24A5041))));
  v191 = ((v190 ^ 0xD576B08C) - 1338633938) ^ ((v190 ^ 0x532A3314) + 912954038) ^ ((v190 ^ 0xA70176F4) - 1035872426);
  v192 = (((v156 ^ 0xEEE6EABF) - 2099098641) ^ ((v156 ^ 0x774F55D4) + 457962630) ^ ((v156 ^ 0x44379863) + 674445619)) + 1776483204 + (((v156 ^ v140 ^ 0xA1E41B) + 347406517) ^ ((v156 ^ v140 ^ 0xB18061D9) - 1516993161) ^ ((v156 ^ v140 ^ 0x3E4BBF52) + 710892542));
  v193 = (((v121 ^ 0x9B90DDA) + 1480240393) ^ ((v121 ^ 0x4D68BF63) + 485171122) ^ ((v121 ^ 0x220F264C) + 1938589343)) - (((v140 ^ 0xC8568B8D) - 647745884) ^ ((v140 ^ 0x8D1CA13B) - 1674705898) ^ ((v140 ^ 0x8F269E49) - 1642841240)) + (((v156 ^ v140 ^ 0x52AC3242) - 798635581) ^ ((v156 ^ v140 ^ 0xAEDB6CA8) + 739415849) ^ ((v156 ^ v140 ^ 0xEB85CD1D) + 1766602398)) - (((v179 ^ 0xDAC047E5) - 824925365) ^ ((v179 ^ 0xDF6FFE85) - 881124821) ^ ((v179 ^ 0x8AC583F0) - 1630443680)) + 1901087288;
  v194 = v191 + v181;
  v195 = v191 + v181 + v180 + 745567526;
  v196 = ((v195 ^ 0xD59EAAF8) - 953296167) ^ v195 ^ ((v195 ^ 0x10817E06) + 36834855) ^ ((v195 ^ 0x97A6A4CA) - 2062166805) ^ ((v195 ^ 0xBFF5FFEB) - 1387884596);
  v197 = v101 + v153 + 1970724301 + v180;
  v198 = (v197 ^ 0x40367192) & (2 * (v197 & 0x554741A0)) ^ v197 & 0x554741A0;
  v199 = ((2 * (v197 ^ 0x48BEF0D2)) ^ 0x3BF362E4) & (v197 ^ 0x48BEF0D2) ^ (2 * (v197 ^ 0x48BEF0D2)) & 0x1DF9B172;
  v200 = v199 ^ 0x4089112;
  v201 = (v199 ^ 0x19310000) & (4 * v198) ^ v198;
  v202 = ((4 * v200) ^ 0x77E6C5C8) & v200 ^ (4 * v200) & 0x1DF9B170;
  v203 = (v202 ^ 0x15E08140) & (16 * v201) ^ v201;
  v204 = ((16 * (v202 ^ 0x8193032)) ^ 0xDF9B1720) & (v202 ^ 0x8193032) ^ (16 * (v202 ^ 0x8193032)) & 0x1DF9B170;
  v205 = v203 ^ 0x1DF9B172 ^ (v204 ^ 0x1D991100) & (v203 << 8);
  v206 = v197 ^ (2 * ((v205 << 16) & 0x1DF90000 ^ v205 ^ ((v205 << 16) ^ 0x31720000) & (((v204 ^ 0x60A052) << 8) & 0x1DF90000 ^ 0x4480000 ^ (((v204 ^ 0x60A052) << 8) ^ 0x79B10000) & (v204 ^ 0x60A052))));
  v207 = v142 + v178 + 1124297584 + v193;
  v208 = ((v207 ^ 0x75E02B8A) - 1248406267) ^ v207 ^ ((v207 ^ 0xB3611A21) + 1930945712) ^ ((v207 ^ 0x9773C725) + 1459960236) ^ ((v207 ^ 0x6E7BF7FF) - 1374877326);
  v209 = ((v206 ^ 0xF70980DD) + 217449942) ^ ((v206 ^ 0x920BCFC3) + 1777617612) ^ ((v206 ^ 0x610235E9) - 1694650142);
  v210 = v194 + v209;
  v211 = v194 + v209 - 1901636029;
  v212 = v194 + v209 + 745375963;
  v213 = (v212 ^ 0xA4291CE3) & (2 * (v212 & 0xC48A5EEA)) ^ v212 & 0xC48A5EEA;
  v214 = ((2 * (v212 ^ 0xAD3D00F7)) ^ 0xD36EBC3A) & (v212 ^ 0xAD3D00F7) ^ (2 * (v212 ^ 0xAD3D00F7)) & 0x69B75E1C;
  v215 = v214 ^ 0x28914205;
  v216 = (v214 ^ 0x221C18) & (4 * v213) ^ v213;
  v217 = ((4 * v215) ^ 0xA6DD7874) & v215 ^ (4 * v215) & 0x69B75E1C;
  v218 = (v217 ^ 0x20955800) & (16 * v216) ^ v216;
  v219 = ((16 * (v217 ^ 0x49220609)) ^ 0x9B75E1D0) & (v217 ^ 0x49220609) ^ (16 * (v217 ^ 0x49220609)) & 0x69B75E10;
  v220 = v218 ^ 0x69B75E1D ^ (v219 ^ 0x9354000) & (v218 << 8);
  v221 = v212 ^ (2 * ((v220 << 16) & 0x320000 ^ v220 ^ ((v220 << 16) ^ 0x1D0000) & (((v219 ^ 0x60821E0D) << 8) & 0x69B70000 ^ 0x210000 ^ (((v219 ^ 0x60821E0D) << 8) ^ 0x375E0000) & (v219 ^ 0x60821E0D))));
  v222 = v192 ^ v179 ^ ((v192 ^ 0x957FD460) + 554408138) ^ ((v192 ^ 0x7257236F) - 970756153) ^ ((v192 ^ 0x53DCBB2E) - 408356984) ^ ((v192 ^ 0xFF7FFF77) + 1259058143);
  v223 = ((v222 ^ 0x58ED9A95) + 938190197) ^ ((v222 ^ 0x906A1A5C) - 9689666) ^ ((v222 ^ 0xC66090F) + 1667249903);
  v224 = v223 + v192;
  v225 = (((v224 + v193 - 856617254) ^ 0x4CEED761) + 945899393) ^ (v224 + v193 - 856617254) ^ (((v224 + v193 - 856617254) ^ 0x43446F7D) + 936116125) ^ (((v224 + v193 - 856617254) ^ 0x7B2529DD) + 262846781) ^ (((v224 + v193 - 856617254) ^ 0xFFFFFEDF) - 1955566017);
  v226 = (((v196 ^ 0xF9DB9DD7) - 1852382429) ^ ((v196 ^ 0xCBCD5108) - 1551880194) ^ ((v196 ^ 0x6CF7A67B) + 79353999)) + v209;
  v227 = v226 + 1153318134;
  v228 = v211 - (v226 + 1153318134) + 454561862;
  v229 = ((v228 ^ 0xC3EE2D3A) + 24730957) ^ v228 ^ ((v228 ^ 0x83FA2969) + 1097685280) ^ ((v228 ^ 0x2CB7627) - 1067710894) ^ ((v228 ^ 0x7FB7FDFD) - 1121940084);
  v230 = ((v208 ^ 0x9A327DA8) + 303094422) ^ ((v208 ^ 0xFD511B58) + 1970519142) ^ ((v208 ^ 0x10BE3E32) - 1734567664);
  v231 = v191 + v211 - (v226 + 1153318134) + 897375110;
  v232 = (v231 ^ 0x5C951F1D) & (2 * (v231 & 0x9EA59F5D)) ^ v231 & 0x9EA59F5D;
  v233 = ((2 * (v231 ^ 0x6D97352F)) ^ 0xE66554E4) & (v231 ^ 0x6D97352F) ^ (2 * (v231 ^ 0x6D97352F)) & 0xF332AA72;
  v234 = v233 ^ 0x1112AA12;
  v235 = (v233 ^ 0xE2200062) & (4 * v232) ^ v232;
  v236 = ((4 * v234) ^ 0xCCCAA9C8) & v234 ^ (4 * v234) & 0xF332AA70;
  v237 = (v236 ^ 0xC002A840) & (16 * v235) ^ v235;
  v238 = ((16 * (v236 ^ 0x33300232)) ^ 0x332AA720) & (v236 ^ 0x33300232) ^ (16 * (v236 ^ 0x33300232)) & 0xF332AA70;
  v239 = v237 ^ 0xF332AA72 ^ (v238 ^ 0x3322A200) & (v237 << 8);
  v240 = (v239 << 16) & 0x73320000 ^ v239 ^ ((v239 << 16) ^ 0x2A720000) & (((v238 ^ 0xC0100852) << 8) & 0x73320000 ^ 0x41100000 ^ (((v238 ^ 0xC0100852) << 8) ^ 0x32AA0000) & (v238 ^ 0xC0100852));
  v241 = v224 + 145387205 + v230;
  v242 = (((484697282 - v210) ^ 0x3E6F1F37) + 4926529) ^ (484697282 - v210) ^ (((484697282 - v210) ^ 0x5ABB49) + 8292415) ^ (((484697282 - v210) ^ 0x19718) + 2466928) ^ (((484697282 - v210) ^ 0x6FFFEE) + 4967578);
  v243 = v230 + (((v225 ^ 0x1ED40726) - 394224120) ^ ((v225 ^ 0x7E130C97) - 2008574537) ^ ((v225 ^ 0x581A81D4) - 1370613514));
  v244 = v243 + 1509059681;
  v245 = v242 & 0x749DF3;
  v246 = v231 ^ (v226 + 3328109) ^ (((v226 + 3328109) ^ 0xB2F2AB53) + 2123318441) ^ (((v226 + 3328109) ^ 0x56F75C7D) - 1702186105) ^ (((v226 + 3328109) ^ 0x20783885) - 335161473) ^ (((v226 + 3328109) ^ 0xF7FFDFAF) + 998387797) ^ (2 * v240);
  v247 = v223 + v241 - (v243 + 1509059681) + 217256319;
  v248 = (v247 ^ 0xF42B7D00) & (2 * (v247 & 0xE4A37DA4)) ^ v247 & 0xE4A37DA4;
  v249 = ((2 * (v247 ^ 0x3C693448)) ^ 0xB19493D8) & (v247 ^ 0x3C693448) ^ (2 * (v247 ^ 0x3C693448)) & 0xD8CA49EC;
  v250 = v249 ^ 0x484A4824;
  v251 = (v249 ^ 0x90800180) & (4 * v248) ^ v248;
  v252 = ((4 * v250) ^ 0x632927B0) & v250 ^ (4 * v250) & 0xD8CA49EC;
  v253 = (v252 ^ 0x400801AC) & (16 * v251) ^ v251;
  v254 = ((16 * (v252 ^ 0x98C2484C)) ^ 0x8CA49EC0) & (v252 ^ 0x98C2484C) ^ (16 * (v252 ^ 0x98C2484C)) & 0xD8CA49E0;
  v255 = v253 ^ 0xD8CA49EC ^ (v254 ^ 0x88800800) & (v253 << 8);
  v256 = v241 - (v243 + 1509059681) + 1767077695;
  v257 = ((v256 ^ 0x26FEAC8) - 67791392) ^ v256 ^ ((v256 ^ 0x6EFF8BB5) - 1754925917) ^ ((v256 ^ 0x950A1E4A) + 1821401438) ^ ((v256 ^ 0xFFFFFFDF) + 107315401);
  v258 = v227 - (((v229 ^ 0x73B39B4A) - 2017359769) ^ ((v229 ^ 0xFE6C0A26) + 169744651) ^ ((v229 ^ 0xB0B71EE5) + 1153764810)) - (((v245 ^ 0x647C9A44) + 903050214) ^ ((v245 ^ 0x4E53DE07) + 536623015) ^ ((v245 ^ 0x2A7FC8C3) + 2077237603)) - (((v221 & 0x749DF3 ^ 0xDF8EDB11) + 149463242) ^ ((v221 & 0x749DF3 ^ 0xFA559473) + 758378412) ^ ((v221 & 0x749DF3 ^ 0x259FCFB2) - 218516373));
  v259 = v243 - 1645390181;
  v260 = ((v243 - 1645390181) ^ 0x6F572D3) & (2 * ((v243 - 1645390181) & 0x96E662DB)) ^ (v243 - 1645390181) & 0x96E662DB;
  v261 = ((2 * ((v243 - 1645390181) ^ 0xE7D7361)) ^ 0x31362374) & ((v243 - 1645390181) ^ 0xE7D7361) ^ (2 * ((v243 - 1645390181) ^ 0xE7D7361)) & 0x989B11BA;
  v262 = v261 ^ 0x8889108A;
  v263 = (v261 ^ 0x10120130) & (4 * v260) ^ v260;
  v264 = ((4 * v262) ^ 0x626C46E8) & v262 ^ (4 * v262) & 0x989B11B8;
  v265 = (v264 ^ 0x800A2) & (16 * v263) ^ v263;
  v266 = ((16 * (v264 ^ 0x98931112)) ^ 0x89B11BA0) & (v264 ^ 0x98931112) ^ (16 * (v264 ^ 0x98931112)) & 0x989B11B0;
  v267 = v265 ^ 0x989B11BA ^ (v266 ^ 0x88911100) & (v265 << 8);
  v268 = v247 ^ v259 ^ (2 * (v255 ^ v267 ^ (v267 << 16) & 0x189B0000 ^ (v255 << 16) & 0x58CA0000 ^ ((v267 << 16) ^ 0x11BA0000) & (((v266 ^ 0x100A001A) << 8) & 0x989B0000 ^ 0x8A0000 ^ (((v266 ^ 0x100A001A) << 8) ^ 0x9B110000) & (v266 ^ 0x100A001A)) ^ ((v255 << 16) ^ 0x49EC0000) & (((v254 ^ 0x504A412C) << 8) & 0x58CA0000 ^ 0x10820000 ^ (((v254 ^ 0x504A412C) << 8) ^ 0x4A490000) & (v254 ^ 0x504A412C))));
  v269 = (((v246 ^ 0x9B14EA4F) - 597130943) ^ ((v246 ^ 0xBEC5BA46) - 105262774) ^ ((v246 ^ 0x2AF78BB4) + 1837883580)) + 1867527295;
  v270 = v269 ^ ((v269 ^ 0xFB64977C) + 848544660) ^ ((v269 ^ 0xD1B89178) + 407881112) ^ ((v269 ^ 0xE3AB52E3) + 710673933) ^ ((v269 ^ 0xFF7FFFF7) + 914926361) ^ 0x8704AC2D;
  v271 = v244 - (((v257 ^ 0x4FF5BF4F) - 1479180974) ^ ((v257 ^ 0x1028D933) - 133686482) ^ ((v257 ^ 0x59B8E694) - 1315429237));
  v272 = ((v229 ^ 0x12114AAD) - 2006476746) ^ ((v229 ^ 0x7DEB4848) - 409101615) ^ ((v229 ^ 0xEED74021) + 1956745914);
  v273 = v272 - 294663929;
  v274 = (((v229 ^ v196 ^ 0xCE84D954) - 1823142538) ^ ((v229 ^ v196 ^ 0xD3B96BC3) - 1905737757) ^ ((v229 ^ v196 ^ 0x79B74C92) + 610703540)) - v258;
  v275 = (((v274 - 1785828314) ^ 0x9A5B0B9E) + 740907236) ^ (v274 - 1785828314) ^ (((v274 - 1785828314) ^ 0x2A3F44C) - 1261328590) ^ (((v274 - 1785828314) ^ 0xA6CAACAB) + 280559575) ^ (((v274 - 1785828314) ^ 0x77BFFFFB) - 1043485561) ^ v270;
  v276 = ((v275 ^ 0xAC22B8CF) + 24247236) ^ ((v275 ^ 0x8C511BD4) + 553801945) ^ ((v275 ^ 0xD8F208A4) + 1973504937);
  v277 = (((v257 ^ v225 ^ 0xED3B8547) + 357274332) ^ ((v257 ^ v225 ^ 0x90C0E0A4) + 1756428089) ^ ((v257 ^ v225 ^ 0x44407446) - 1137679397)) - v271;
  v278 = v258 - v272;
  v279 = (v273 ^ 0xC4D8EE6D) & (2 * (v273 & 0xE6D28F0E)) ^ v273 & 0xE6D28F0E;
  v280 = ((2 * (v273 ^ 0x80FCEE61)) ^ 0xCC5CC2DE) & (v273 ^ 0x80FCEE61) ^ (2 * (v273 ^ 0x80FCEE61)) & 0x662E616E;
  v281 = v280 ^ 0x22222121;
  v282 = (v280 ^ 0x40C4048) & (4 * v279) ^ v279;
  v283 = ((4 * v281) ^ 0x98B985BC) & v281 ^ (4 * v281) & 0x662E616C;
  v284 = (v283 ^ 0x280120) & (16 * v282) ^ v282;
  v285 = ((16 * (v283 ^ 0x66066043)) ^ 0x62E616F0) & (v283 ^ 0x66066043) ^ (16 * (v283 ^ 0x66066043)) & 0x662E6160;
  v286 = v284 ^ 0x662E616F ^ (v285 ^ 0x62260000) & (v284 << 8);
  v287 = (v286 << 16) & 0x662E0000 ^ v286 ^ ((v286 << 16) ^ 0x616F0000) & (((v285 ^ 0x408610F) << 8) & 0x662E0000 ^ 0x400E0000 ^ (((v285 ^ 0x408610F) << 8) ^ 0x2E610000) & (v285 ^ 0x408610F));
  v288 = v278 + 348792298;
  v289 = (((v268 ^ 0xE031BAC3) - 443078496) ^ ((v268 ^ 0x423A9C3F) + 1201409636) ^ ((v268 ^ 0xE048892F) - 437380236)) + 2067042999;
  v290 = v289 ^ ((v289 ^ 0x13A8F1D9) - 1390372860) ^ ((v289 ^ 0x3084C564) - 1911771969) ^ ((v289 ^ 0x9CA055E3) + 573062202) ^ ((v289 ^ 0xFEFBF77B) + 1081319074) ^ 0xDF7C03AA;
  v291 = v288 ^ v273 ^ ((v288 ^ 0x1C75983A) - 902866536) ^ ((v288 ^ 0x26F11B42) - 257172752) ^ ((v288 ^ 0xCCD202D5) + 445170553) ^ ((v288 ^ 0xDFF3BFFF) + 162102867) ^ (2 * v287) ^ v270;
  v292 = ((v257 ^ 0x151DCF9B) - 443318761) ^ ((v257 ^ 0xD4E45FE8) + 610987622) ^ ((v257 ^ 0x7BD9DDD6) - 1957204900);
  v293 = v292 - 615142307;
  v294 = v271 - v292;
  v295 = v274 - 1785828314 + v288;
  v296 = v295 + 1484519344 + (((v291 ^ 0xE50DB755) - 36189838) ^ ((v291 ^ 0x22347BF9) + 988677598) ^ ((v291 ^ 0xB542B813) - 1382496712));
  v297 = v294 - 817185392;
  v298 = v295 - v276;
  v299 = v295 - v276 - 599353171;
  v300 = (((v277 - 1488364835) ^ 0xF3B87BB3) + 1048409456) ^ (v277 - 1488364835) ^ (((v277 - 1488364835) ^ 0x1C2FC045) - 773140838) ^ (((v277 - 1488364835) ^ 0xF652B62A) + 999799031) ^ (((v277 - 1488364835) ^ 0x2BFFFCFF) - 432344540) ^ v290;
  v301 = v276 - 1951637846 + v296;
  v274 += 1864998157;
  v302 = (v274 ^ 0x4AF0A6FF) & (2 * (v274 & 0x6CE4A6FC)) ^ v274 & 0x6CE4A6FC;
  v303 = ((2 * (v274 ^ 0x5BB0AADF)) ^ 0x6EA81846) & (v274 ^ 0x5BB0AADF) ^ (2 * (v274 ^ 0x5BB0AADF)) & 0x37540C22;
  v304 = v303 ^ 0x11540421;
  v305 = (v303 ^ 0x26000800) & (4 * v302) ^ v302;
  v306 = ((4 * v304) ^ 0xDD50308C) & v304 ^ (4 * v304) & 0x37540C20;
  v307 = v305 ^ 0x37540C23 ^ (v306 ^ 0x15500000) & (16 * v305);
  v308 = (16 * (v306 ^ 0x22040C23)) & 0x37540C20 ^ 0x2140C03 ^ ((16 * (v306 ^ 0x22040C23)) ^ 0x7540C230) & (v306 ^ 0x22040C23);
  v309 = (v307 << 8) & 0x37540C00 ^ v307 ^ ((v307 << 8) ^ 0x540C2300) & v308;
  v310 = v274 ^ (2 * ((v309 << 16) & 0x37540000 ^ v309 ^ ((v309 << 16) ^ 0xC230000) & ((v308 << 8) & 0x37540000 ^ 0x23500000 ^ ((v308 << 8) ^ 0x540C0000) & v308)));
  v311 = (v297 ^ 0x19A3AF09) & (2 * (v297 & 0x99B00FA9)) ^ v297 & 0x99B00FA9;
  v312 = ((2 * (v297 ^ 0x9A3AB4B)) ^ 0x202749C4) & (v297 ^ 0x9A3AB4B) ^ (2 * (v297 ^ 0x9A3AB4B)) & 0x9013A4E2;
  v313 = v312 ^ 0x9010A422;
  v314 = (v312 ^ 0xC0) & (4 * v311) ^ v311;
  v315 = ((4 * v313) ^ 0x404E9388) & v313 ^ (4 * v313) & 0x9013A4E0;
  v316 = (v315 ^ 0x28082) & (16 * v314) ^ v314;
  v317 = ((16 * (v315 ^ 0x90112462)) ^ 0x13A4E20) & (v315 ^ 0x90112462) ^ (16 * (v315 ^ 0x90112462)) & 0x9013A4E0;
  v318 = v316 ^ 0x9013A4E2 ^ (v317 ^ 0x1204C2) & (v316 << 8);
  v319 = ((v293 ^ 0x9A15FADC) + 1351402808) ^ v293 ^ ((v293 ^ 0x43C7E32A) - 1990271806) ^ ((v293 ^ 0x916A2A1D) + 1542657527) ^ ((v293 ^ 0x7DDEF3FF) - 1220031467) ^ (v294 - 817185392) ^ (2 * ((v318 << 16) & 0x10130000 ^ v318 ^ ((v318 << 16) ^ 0x24E20000) & (((v317 ^ 0x9001A0C2) << 8) & 0x10130000 ^ 0x130000 ^ (((v317 ^ 0x9001A0C2) << 8) ^ 0x13A40000) & (v317 ^ 0x9001A0C2)))) ^ v290;
  v320 = ((v310 ^ 0x861E1AF9) + 1536391365) ^ ((v310 ^ 0x41C7D5F4) - 1672824886) ^ ((v310 ^ 0xE5AB52CF) + 942026995);
  v321 = v277 - 1488364835 + v297;
  v322 = ((v300 ^ 0x52577A35) + 1553407898) ^ ((v300 ^ 0x86161CEE) - 1999210173) ^ ((v300 ^ 0x78700277) + 1991272412);
  v323 = ((v319 ^ 0xE4C0A240) + 164511868) ^ ((v319 ^ 0x3D9278FD) - 795043129) ^ ((v319 ^ 0xCBACC94B) + 648162161);
  v324 = v296 - v298 - v301 + 1784711896;
  v325 = v299 + v324 + v320 + v324 + v320;
  v326 = (v325 ^ 0xDE5534) & (2 * (v325 & 0xA4C099B6)) ^ v325 & 0xA4C099B6;
  v327 = ((2 * (v325 ^ 0x405E453C)) ^ 0xC93DB914) & (v325 ^ 0x405E453C) ^ (2 * (v325 ^ 0x405E453C)) & 0xE49EDC8A;
  v328 = v327 ^ 0x2482448A;
  v329 = (v327 ^ 0x80048800) & (4 * v326) ^ v326;
  v330 = ((4 * v328) ^ 0x927B7228) & v328 ^ (4 * v328) & 0xE49EDC88;
  v331 = (v330 ^ 0x801A5000) & (16 * v329) ^ v329;
  v332 = ((16 * (v330 ^ 0x64848C82)) ^ 0x49EDC8A0) & (v330 ^ 0x64848C82) ^ (16 * (v330 ^ 0x64848C82)) & 0xE49EDC80;
  v333 = v331 ^ 0xE49EDC8A ^ (v332 ^ 0x408CC800) & (v331 << 8);
  v334 = (v333 << 16) & 0x649E0000 ^ v333 ^ ((v333 << 16) ^ 0x5C8A0000) & (((v332 ^ 0xA412140A) << 8) & 0x649E0000 ^ 0x60020000 ^ (((v332 ^ 0xA412140A) << 8) ^ 0x1EDC0000) & (v332 ^ 0xA412140A));
  v277 += 1771163749;
  v335 = (v277 ^ 0x5B8A1938) & (2 * (v277 & 0x9B8A1DBA)) ^ v277 & 0x9B8A1DBA;
  v336 = ((2 * (v277 ^ 0x689A1858)) ^ 0xE6200BC4) & (v277 ^ 0x689A1858) ^ (2 * (v277 ^ 0x689A1858)) & 0xF31005E2;
  v337 = v336 ^ 0x11100422;
  v338 = (v336 ^ 0xE20001C0) & (4 * v335) ^ v335;
  v339 = ((4 * v337) ^ 0xCC401788) & v337 ^ (4 * v337) & 0xF31005E0;
  v340 = v338 ^ 0xF31005E2 ^ (v339 ^ 0xC0000582) & (16 * v338);
  v341 = (16 * (v339 ^ 0x33100062)) & 0xF31005E0 ^ 0xC21001C2 ^ ((16 * (v339 ^ 0x33100062)) ^ 0x31005E20) & (v339 ^ 0x33100062);
  v342 = (v340 << 8) & 0xF3100500 ^ v340 ^ ((v340 << 8) ^ 0x1005E200) & v341;
  v343 = v277 ^ (2 * ((v342 << 16) & 0x73100000 ^ v342 ^ ((v342 << 16) ^ 0x5E20000) & ((v341 << 8) & 0xF3100000 ^ 0x63100000 ^ ((v341 << 8) ^ 0x10050000) & v341)));
  v344 = v321 + v322 + v323 - 917276214;
  v345 = ((v343 ^ 0x2A41EA52) - 1977474900) ^ ((v343 ^ 0x855344BB) + 623939139) ^ ((v343 ^ 0xF08E9BEF) + 1357730071);
  v346 = v345 + 1355678692 - v322;
  v347 = (((v320 - 995895455) ^ 0x583974C4) - 643437862) ^ (v320 - 995895455) ^ (((v320 - 995895455) ^ 0x11F83ECC) - 1872453422) ^ (((v320 - 995895455) ^ 0xC8DDF435) + 1229023785) ^ (((v320 - 995895455) ^ 0xFF7FDFDF) + 2128822723) ^ v325 ^ (2 * v334);
  v348 = v346 + v345 - v321 - 42303269;
  v349 = (v348 ^ 0x525994F3) & (2 * (v348 & 0x629D14F3)) ^ v348 & 0x629D14F3;
  v350 = ((2 * (v348 ^ 0x12639417)) ^ 0xE1FD01C8) & (v348 ^ 0x12639417) ^ (2 * (v348 ^ 0x12639417)) & 0x70FE80E4;
  v351 = v350 ^ 0x10028024;
  v352 = (v350 ^ 0xFC00C0) & (4 * v349) ^ v349;
  v353 = ((4 * v351) ^ 0xC3FA0390) & v351 ^ (4 * v351) & 0x70FE80E4;
  v354 = (v353 ^ 0x40FA0080) & (16 * v352) ^ v352;
  v355 = ((16 * (v353 ^ 0x30048064)) ^ 0xFE80E40) & (v353 ^ 0x30048064) ^ (16 * (v353 ^ 0x30048064)) & 0x70FE80E0;
  v356 = v354 ^ 0x70FE80E4 ^ (v355 ^ 0xE800A4) & (v354 << 8);
  v357 = (v356 << 16) & 0x70FE0000 ^ v356 ^ ((v356 << 16) ^ 0xE40000) & (((v355 ^ 0x701680A4) << 8) & 0x70FE0000 ^ (((v355 ^ 0x701680A4) << 8) ^ 0x7E800000) & (v355 ^ 0x701680A4) ^ 0x7E0000);
  v358 = v320 - 1828038077;
  v359 = v301 - v320 - 1319161952;
  v360 = (((v345 - 1353611667) ^ 0x3DB02F32) - 1419853788) ^ (v345 - 1353611667) ^ (((v345 - 1353611667) ^ 0xAE8813C2) + 946273492) ^ (((v345 - 1353611667) ^ 0x8556D2F1) + 330841569) ^ (((v345 - 1353611667) ^ 0x7F7FFEEF) - 376368641) ^ v348 ^ (2 * v357);
  v361 = v345 - 1829042975;
  v362 = v344 - v345 + 1429459013;
  v363 = (((v347 ^ 0xCEEE390B) + 1560943646) ^ ((v347 ^ 0x29BB62B4) - 1168160861) ^ ((v347 ^ 0x7DDF1AFF) - 298106902)) - 511459661;
  v364 = (v363 ^ 0x8500F7CF) & (2 * (v363 & 0xA9A2C7EC)) ^ v363 & 0xA9A2C7EC;
  v365 = ((2 * (v363 ^ 0xD4057C9F)) ^ 0xFB4F76E6) & (v363 ^ 0xD4057C9F) ^ (2 * (v363 ^ 0xD4057C9F)) & 0x7DA7BB72;
  v366 = v365 ^ 0x4A08911;
  v367 = (v365 ^ 0x69073260) & (4 * v364) ^ v364;
  v368 = ((4 * v366) ^ 0xF69EEDCC) & v366 ^ (4 * v366) & 0x7DA7BB70;
  v369 = (v368 ^ 0x7486A940) & (16 * v367) ^ v367;
  v370 = ((16 * (v368 ^ 0x9211233)) ^ 0xDA7BB730) & (v368 ^ 0x9211233) ^ (16 * (v368 ^ 0x9211233)) & 0x7DA7BB70;
  v371 = v369 ^ 0x7DA7BB73 ^ (v370 ^ 0x5823B300) & (v369 << 8);
  v372 = (v371 << 16) & 0x7DA70000 ^ v371 ^ ((v371 << 16) ^ 0x3B730000) & (((v370 ^ 0x25840843) << 8) & 0x7DA70000 ^ 0x58040000 ^ (((v370 ^ 0x25840843) << 8) ^ 0x27BB0000) & (v370 ^ 0x25840843));
  v373 = (v362 ^ 0xDF51F2BB) & (2 * (v362 & 0x1F15F2BA)) ^ v362 & 0x1F15F2BA;
  v374 = ((2 * (v362 ^ 0xC37917DF)) ^ 0xB8D9CACA) & (v362 ^ 0xC37917DF) ^ (2 * (v362 ^ 0xC37917DF)) & 0xDC6CE564;
  v375 = v374 ^ 0x44242525;
  v376 = (v374 ^ 0x9848C040) & (4 * v373) ^ v373;
  v377 = ((4 * v375) ^ 0x71B39594) & v375 ^ (4 * v375) & 0xDC6CE564;
  v378 = (v377 ^ 0x50208500) & (16 * v376) ^ v376;
  v379 = ((16 * (v377 ^ 0x8C4C6061)) ^ 0xC6CE5650) & (v377 ^ 0x8C4C6061) ^ (16 * (v377 ^ 0x8C4C6061)) & 0xDC6CE560;
  v380 = v378 ^ 0xDC6CE565 ^ (v379 ^ 0xC44C4400) & (v378 << 8);
  v381 = ((v358 ^ 0xEF611E91) + 552233713) ^ v358 ^ ((v358 ^ 0x93705102) + 1559962980) ^ ((v358 ^ 0x321A2BF2) - 40804460) ^ ((v358 ^ 0x7E7FEFFF) - 1309369441) ^ v363 ^ (2 * v372);
  v382 = ((v381 ^ 0xD1635DEE) - 1918285569) ^ ((v381 ^ 0x1FC265D3) + 1124626628) ^ ((v381 ^ 0xDE7E02A9) - 2102126662);
  v383 = ((v360 ^ 0xA34BF26) - 659180330) ^ ((v360 ^ 0x19B56880) - 885759116) ^ ((v360 ^ 0xF838D273) + 716822913);
  v384 = ((v383 - 2088251856) ^ 0xD7D40CDF) & (2 * ((v383 - 2088251856) & 0xD7D50E9F)) ^ (v383 - 2088251856) & 0xD7D50E9F;
  v385 = ((2 * ((v383 - 2088251856) ^ 0xD95401D1)) ^ 0x1D021E9C) & ((v383 - 2088251856) ^ 0xD95401D1) ^ (2 * ((v383 - 2088251856) ^ 0xD95401D1)) & 0xE810F4E;
  v386 = v385 ^ 0x2810142;
  v387 = (v385 ^ 0xC000E0C) & (4 * v384) ^ v384;
  v388 = ((4 * v386) ^ 0x3A043D38) & v386 ^ (4 * v386) & 0xE810F4C;
  v389 = (v388 ^ 0xA000D00) & (16 * v387) ^ v387;
  v390 = ((16 * (v388 ^ 0x4810246)) ^ 0xE810F4E0) & (v388 ^ 0x4810246) ^ (16 * (v388 ^ 0x4810246)) & 0xE810F40;
  v391 = v389 ^ 0xE810F4E ^ (v390 ^ 0x800040E) & (v389 << 8);
  v392 = ((v361 ^ 0x5BE71E1D) - 1803692065) ^ v361 ^ ((v361 ^ 0x9BE8C21C) + 1416760288) ^ ((v361 ^ 0xD9115C2) - 1039410174) ^ ((v361 ^ 0xFDFBFFFF) + 845231677) ^ (v383 - 2088251856) ^ (2 * ((v391 << 16) & 0xE810000 ^ v391 ^ ((v391 << 16) ^ 0xF4E0000) & (((v390 ^ 0x6810B0E) << 8) & 0xE810000 ^ 0xE800000 ^ (((v390 ^ 0x6810B0E) << 8) ^ 0x10F0000) & (v390 ^ 0x6810B0E))));
  v393 = ((v392 ^ 0xC3C333DE) + 1796847354) ^ ((v392 ^ 0xDFB0FCDD) + 2003466747) ^ ((v392 ^ 0xFAC1E93C) + 1377528860);
  v394 = v346 - v344 + v362 + v393;
  v395 = v383 + v394;
  v396 = v383 + v394 + 1794501024;
  v397 = (v396 ^ 0xFE99FFE9) & (2 * (v396 & 0xFE21FFED)) ^ v396 & 0xFE21FFED;
  v398 = ((2 * (v396 ^ 0x8AD97063)) ^ 0xE9F11F1C) & (v396 ^ 0x8AD97063) ^ (2 * (v396 ^ 0x8AD97063)) & 0x74F88F8E;
  v399 = v398 ^ 0x14088082;
  v400 = (v398 ^ 0x60800F0C) & (4 * v397) ^ v397;
  v401 = ((4 * v399) ^ 0xD3E23E38) & v399 ^ (4 * v399) & 0x74F88F8C;
  v402 = (v401 ^ 0x50E00E00) & (16 * v400) ^ v400;
  v403 = ((16 * (v401 ^ 0x24188186)) ^ 0x4F88F8E0) & (v401 ^ 0x24188186) ^ (16 * (v401 ^ 0x24188186)) & 0x74F88F80;
  v404 = v402 ^ 0x74F88F8E ^ (v403 ^ 0x44888800) & (v402 << 8);
  v405 = v360 ^ v362 ^ v396 ^ (2 * ((v380 << 16) & 0x5C6C0000 ^ v380 ^ ((v380 << 16) ^ 0x65650000) & (((v379 ^ 0x1820A125) << 8) & 0xDC6C0000 ^ 0x10080000 ^ (((v379 ^ 0x1820A125) << 8) ^ 0x6CE50000) & (v379 ^ 0x1820A125)) ^ v404 ^ (v404 << 16) & 0x74F80000 ^ ((v404 << 16) ^ 0xF8E0000) & (((v403 ^ 0x3070070E) << 8) & 0x74F80000 ^ 0x4700000 ^ (((v403 ^ 0x3070070E) << 8) ^ 0x788F0000) & (v403 ^ 0x3070070E))));
  v406 = v299 + v324 + v382;
  v407 = v406 + (((v347 ^ 0xA5A2D946) + 910621777) ^ ((v347 ^ 0xFF0A8C5) - 1676374572) ^ ((v347 ^ 0x30D830C3) - 1556343338));
  v408 = (((v405 ^ 0xFB83129E) - 1493551967) ^ ((v405 ^ 0xC49F3D5A) - 1712972955) ^ ((v405 ^ 0xE561F290) - 1206332241)) - v396 - 876711303;
  v409 = ((v408 ^ 0x4E2B0C3D) - 516841964) ^ v408 ^ ((v408 ^ 0x688807D6) - 946694663) ^ ((v408 ^ 0x49B989C5) - 425518100) ^ ((v408 ^ 0x3FFFEFFF) - 1864008238);
  v410 = ((v359 ^ 0x6294571C) - 850396176) ^ v359 ^ ((v359 ^ 0x3239C480) - 1646106508) ^ ((v359 ^ 0x6F763D2F) - 1062366755) ^ ((v359 ^ 0x6FFFFDBF) - 1071361715) ^ v347 ^ (v407 - 1845422083) ^ (((v407 - 1845422083) ^ 0xE2E5E826) + 1173949907) ^ (((v407 - 1845422083) ^ 0x478BC73A) - 526966065) ^ (((v407 - 1845422083) ^ 0x846ACAA8) + 594947933) ^ (((v407 - 1845422083) ^ 0x79E7FFBF) - 553969076);
  v411 = (((v410 ^ 0xB6B6698B) - 1854599858) ^ ((v410 ^ 0x28B685AC) + 259383659) ^ ((v410 ^ 0xC4DE460) + 730759335)) - v407;
  v412 = ((v411 + 2006578646) ^ 0x1D311FB7) & (2 * ((v411 + 2006578646) & 0x99B99FB6)) ^ (v411 + 2006578646) & 0x99B99FB6;
  v413 = ((2 * ((v411 + 2006578646) ^ 0x1C51379B)) ^ 0xBD1505A) & ((v411 + 2006578646) ^ 0x1C51379B) ^ (2 * ((v411 + 2006578646) ^ 0x1C51379B)) & 0x85E8A82C;
  v414 = v413 ^ 0x8428A825;
  v415 = (v413 ^ 0x1C00008) & (4 * v412) ^ v412;
  v416 = ((4 * v414) ^ 0x17A2A0B4) & v414 ^ (4 * v414) & 0x85E8A82C;
  v417 = (v416 ^ 0x5A0A020) & (16 * v415) ^ v415;
  v418 = ((16 * (v416 ^ 0x80480809)) ^ 0x5E8A82D0) & (v416 ^ 0x80480809) ^ (16 * (v416 ^ 0x80480809)) & 0x85E8A820;
  v419 = v418 ^ 0x8160282D;
  v420 = v417 ^ 0x85E8A82D ^ (v418 ^ 0x4888000) & (v417 << 8);
  v421 = (((v382 + 2028190513) ^ 0x8362C95D) - 1116323193) ^ (v382 + 2028190513) ^ (((v382 + 2028190513) ^ 0xAED5A8A4) - 1866390656) ^ (((v382 + 2028190513) ^ 0x93B3EB26) - 1381539586) ^ (((v382 + 2028190513) ^ 0x7FEFFEFB) + 1106998561) ^ (v411 + 2006578646) ^ (2 * ((v420 << 16) & 0x5E80000 ^ v420 ^ ((v420 << 16) ^ 0x282D0000) & ((v419 << 8) & 0x5E80000 ^ 0x5400000 ^ ((v419 << 8) ^ 0x68A80000) & v419)));
  v422 = (((v421 ^ 0xA178EDB1) + 215615030) ^ ((v421 ^ 0xC50D4078) + 1756343293) ^ ((v421 ^ 0x37A61601) - 1710948986)) - 1580017933;
  v423 = (v422 ^ 0xF9FD0EE5) & (2 * (v422 & 0xFDF12E88)) ^ v422 & 0xFDF12E88;
  v424 = ((2 * (v422 ^ 0xB8FF5AE5)) ^ 0x8A1CE8DA) & (v422 ^ 0xB8FF5AE5) ^ (2 * (v422 ^ 0xB8FF5AE5)) & 0x450E746C;
  v425 = v424 ^ 0x45021425;
  v426 = (v424 ^ 0xE6045) & (4 * v423) ^ v423;
  v427 = ((4 * v425) ^ 0x1439D1B4) & v425 ^ (4 * v425) & 0x450E746C;
  v428 = (v427 ^ 0x4085020) & (16 * v426) ^ v426;
  v429 = ((16 * (v427 ^ 0x41062449)) ^ 0x50E746D0) & (v427 ^ 0x41062449) ^ (16 * (v427 ^ 0x41062449)) & 0x450E7460;
  v430 = v428 ^ 0x450E746D ^ (v429 ^ 0x40064400) & (v428 << 8);
  v431 = v422 ^ (2 * ((v430 << 16) & 0x450E0000 ^ v430 ^ ((v430 << 16) ^ 0x746D0000) & (((v429 ^ 0x508302D) << 8) & 0x450E0000 ^ 0x410A0000 ^ (((v429 ^ 0x508302D) << 8) ^ 0xE740000) & (v429 ^ 0x508302D))));
  v432 = v431 ^ 0xB30122CF;
  v433 = v407 + 2060859438;
  v434 = ((v407 + 2060859438) ^ 0x1AD0E6E9) + 301171573;
  v435 = ((v407 + 2060859438) ^ 0x383C2C46) + 857688540;
  v436 = ((v407 + 2060859438) ^ 0x39CDAF92) + 854510096;
  v437 = v394 - 806613817;
  v438 = (v437 ^ 0x2C5DFA1A) & (2 * (v437 & 0x4C99E29C)) ^ v437 & 0x4C99E29C;
  v439 = ((2 * ((v394 - 806613817) ^ 0x3C4FBA32)) ^ 0xE1ACB15C) & ((v394 - 806613817) ^ 0x3C4FBA32) ^ (2 * ((v394 - 806613817) ^ 0x3C4FBA32)) & 0x70D658AE;
  v440 = v439 ^ 0x105248A2;
  v441 = (v439 ^ 0x60841000) & (4 * v438) ^ v438;
  v442 = ((4 * v440) ^ 0xC35962B8) & v440 ^ (4 * v440) & 0x70D658AC;
  v443 = (v442 ^ 0x405040A0) & (16 * v441) ^ v441;
  v444 = ((16 * (v442 ^ 0x30861806)) ^ 0xD658AE0) & (v442 ^ 0x30861806) ^ (16 * (v442 ^ 0x30861806)) & 0x70D658A0;
  v445 = v444 ^ 0x7092500E;
  v446 = v443 ^ 0x70D658AE ^ (v444 ^ 0x440800) & (v443 << 8);
  v447 = v395 - 1179678323;
  v448 = (v446 << 16) & 0x70D60000 ^ v446 ^ ((v446 << 16) ^ 0x58AE0000) & ((v445 << 8) & 0x70D60000 ^ 0x20860000 ^ ((v445 << 8) ^ 0x56580000) & v445);
  v449 = v411 - (((v431 ^ 0x9DB51E3F) - 783564016) ^ ((v431 ^ 0x756D64EB) + 965982684) ^ ((v431 ^ 0x172DBC86) + 1540579767));
  v450 = v434 ^ v433 ^ v435 ^ v436 ^ ((v433 ^ 0xEFFDFF5F) - 455173437) ^ (v449 - 969821232) ^ (((v449 - 969821232) ^ 0x4A394523) - 1273644994) ^ (((v449 - 969821232) ^ 0xDDB12797) + 597547658) ^ (((v449 - 969821232) ^ 0xE9649FAA) + 390619829) ^ (((v449 - 969821232) ^ 0x7F3FFFFF) - 2129460510);
  LODWORD(v451) = __ROR4__((v393 + 1920358633) ^ (((v393 + 1920358633) ^ 0x9449ECD) + 1265296451) ^ (((v393 + 1920358633) ^ 0xBE99C1BA) - 55067850) ^ (((v393 + 1920358633) ^ 0xB5F625E8) - 136814744) ^ (((v393 + 1920358633) ^ 0xBFFAFFEF) - 36403871) ^ 0x2AA588CA ^ v409, 26) ^ 0x9C3C9888;
  HIDWORD(v451) = v451;
  v452 = ((((v451 >> 6) ^ 0x6DA3DCEF) + 982172964) ^ (((v451 >> 6) ^ 0x4453C061) + 326818222) ^ (((v451 >> 6) ^ 0xCC118E87) - 1690790068)) + 683114647;
  v453 = ((v452 ^ 0xBB4D0F90) + 2046314235) ^ v452 ^ ((v452 ^ 0xF5A311F) - 839944074) ^ ((v452 ^ 0xFCA27FE5) + 1041708688) ^ ((v452 ^ 0x75FFF7FF) - 1219838314);
  v454 = (((v409 ^ 0x578C98F3) - 288575476) ^ ((v409 ^ 0x184FEDC) - 1195059675) ^ ((v409 ^ 0x6ED0BFE) - 1079172345)) - (((v453 ^ 0xE9FF32FE) - 445191152) ^ ((v453 ^ 0x56A4B0E0) + 1512926738) ^ ((v453 ^ 0x8211348B) - 1902581125));
  v455 = ((v454 - 2054533333) ^ 0x8A5BC3C9) & (2 * ((v454 - 2054533333) & 0xC293D410)) ^ (v454 - 2054533333) & 0xC293D410;
  v456 = ((2 * ((v454 - 2054533333) ^ 0x8F7DC3E9)) ^ 0x9BDC2FF2) & ((v454 - 2054533333) ^ 0x8F7DC3E9) ^ (2 * ((v454 - 2054533333) ^ 0x8F7DC3E9)) & 0x4DEE17F8;
  v457 = v456 ^ 0x44221009;
  v458 = (v456 ^ 0x8CC00C0) & (4 * v455) ^ v455;
  v459 = ((4 * v457) ^ 0x37B85FE4) & v457 ^ (4 * v457) & 0x4DEE17F8;
  v460 = (v459 ^ 0x5A817E0) & (16 * v458) ^ v458;
  v461 = ((16 * (v459 ^ 0x48460019)) ^ 0xDEE17F90) & (v459 ^ 0x48460019) ^ (16 * (v459 ^ 0x48460019)) & 0x4DEE17F0;
  v462 = v460 ^ 0x4DEE17F9 ^ (v461 ^ 0x4CE01700) & (v460 << 8);
  v463 = v449 - 857189680;
  v464 = v453 ^ 0xF376210E;
  v465 = ((v447 ^ 0x35D11672) - 913118804) ^ v447 ^ ((v447 ^ 0x5451AD4E) - 1475194216) ^ ((v447 ^ 0xDC304E5) - 243205315) ^ ((v447 ^ 0x6FFFBFFF) - 1816379353) ^ (v454 - 2054533333) ^ (2 * ((v462 << 16) & 0x4DEE0000 ^ v462 ^ ((v462 << 16) ^ 0x17F90000) & (((v461 ^ 0x10E0069) << 8) & 0x4DEE0000 ^ 0x1E80000 ^ (((v461 ^ 0x10E0069) << 8) ^ 0x6E170000) & (v461 ^ 0x10E0069))));
  v466 = v463 - (((v450 ^ 0x62092C60) - 154298534) ^ ((v450 ^ 0x5872CD0C) - 860457418) ^ ((v450 ^ 0xCF7479EF) + 1538310871)) + 1939592227;
  v467 = (v466 ^ 0xD11589A6) & (2 * (v466 & 0xE5A5ADB7)) ^ v466 & 0xE5A5ADB7;
  v468 = ((2 * (v466 ^ 0x1814C88C)) ^ 0xFB62CA76) & (v466 ^ 0x1814C88C) ^ (2 * (v466 ^ 0x1814C88C)) & 0xFDB1653A;
  v469 = v468 ^ 0x4912509;
  v470 = (v468 ^ 0xB9204030) & (4 * v467) ^ v467;
  v471 = ((4 * v469) ^ 0xF6C594EC) & v469 ^ (4 * v469) & 0xFDB16538;
  v472 = (v471 ^ 0xF4810420) & (16 * v470) ^ v470;
  v473 = ((16 * (v471 ^ 0x9306113)) ^ 0xDB1653B0) & (v471 ^ 0x9306113) ^ (16 * (v471 ^ 0x9306113)) & 0xFDB16530;
  v474 = v472 ^ 0xFDB1653B ^ (v473 ^ 0xD9104100) & (v472 << 8);
  v475 = v466 ^ (2 * ((v474 << 16) & 0x7DB10000 ^ v474 ^ ((v474 << 16) ^ 0x653B0000) & (((v473 ^ 0x24A1240B) << 8) & 0x7DB10000 ^ 0x4C900000 ^ (((v473 ^ 0x24A1240B) << 8) ^ 0x31650000) & (v473 ^ 0x24A1240B))));
  v476 = v454 - (((v465 ^ 0x8DCCE3E8) + 901632761) ^ ((v465 ^ 0xFF8AEA9F) + 1207688080) ^ ((v465 ^ 0x2365F2B3) - 1693138012)) + 1333332595;
  v477 = ((v476 ^ 0x9614682) - 392780513) ^ v476 ^ ((v476 ^ 0xAA8DD732) + 1266300079) ^ ((v476 ^ 0x421D562C) - 1544899151) ^ ((v476 ^ 0xFFF9DBFF) + 504248420);
  v478 = (((v475 ^ v432 ^ 0x5624B1AB) + 1157251095) ^ ((v475 ^ v432 ^ 0x1DADDF7D) + 259206849) ^ ((v475 ^ v432 ^ 0xD3D8ED8A) - 1056564168)) + 728594126;
  v479 = ((v475 ^ 0xD33FAAA3) + 109056212) ^ ((v475 ^ 0xB66E29B9) + 1674679242) ^ ((v475 ^ 0x4F11C695) - 1699840794);
  v480 = ((v477 ^ v464 ^ 0x74639AE2) + 1905447931) ^ ((v477 ^ v464 ^ 0x8FF3FE00) - 1979533543) ^ ((v477 ^ v464 ^ 0x2BA4EF1A) + 777364995);
  v481 = ((v477 ^ 0x6CCD6337) + 1944036070) ^ ((v477 ^ 0xCABF64A6) - 710040203) ^ ((v477 ^ 0x469F39BC) + 1502476399);
  v482 = (((v450 ^ 0x2F045CB9) - 2127812640) ^ ((v450 ^ 0xE954E4B8) + 1199349727) ^ ((v450 ^ 0x97873C98) + 967788543)) + 780048009;
  v483 = v478 + v479 + 428569190;
  v484 = (((v406 + 1357733740) ^ 0xAA887A21) - 1050902357) ^ (v406 + 1357733740) ^ (((v406 + 1357733740) ^ 0x54E34E75) + 1060615423) ^ (((v406 + 1357733740) ^ 0x9CBFC6DE) - 143967146) ^ (((v406 + 1357733740) ^ 0xF6FFF7FE) - 1658122890) ^ v432 ^ (v479 + 428569190 + v482) ^ (((v479 + 428569190 + v482) ^ 0xC559284F) + 1923932000) ^ (((v479 + 428569190 + v482) ^ 0xDD62A1CF) + 1788303072) ^ (((v479 + 428569190 + v482) ^ 0xAEDA7690) + 422543745) ^ (((v479 + 428569190 + v482) ^ 0xFEEBF7FF) + 1226703088);
  v485 = v479 - 1825983700 + (((v484 ^ 0x1F6D439B) + 943823084) ^ ((v484 ^ 0x8F64F8FF) - 1471667312) ^ ((v484 ^ 0xDC5262) + 670075155));
  v486 = v482 - v478;
  v487 = (((v465 ^ 0xBC38DDC1) - 312042064) ^ ((v465 ^ 0x2EE9FF93) + 2142748670) ^ ((v465 ^ 0x672AC58C) + 913606115)) + 1583369673 + v481 + 1482504815;
  v488 = v480 + v481 + 1482504815 + 556307805;
  v489 = (v488 ^ 0x598DB82A) & (2 * (v488 & 0x5D2E3A2C)) ^ v488 & 0x5D2E3A2C;
  v490 = ((2 * (v488 ^ 0xF195BC72)) ^ 0x59770CBC) & (v488 ^ 0xF195BC72) ^ (2 * (v488 ^ 0xF195BC72)) & 0xACBB865E;
  v491 = v490 ^ 0xA4888242;
  v492 = (v490 ^ 0x8310010) & (4 * v489) ^ v489;
  v493 = ((4 * v491) ^ 0xB2EE1978) & v491 ^ (4 * v491) & 0xACBB865C;
  v494 = (v493 ^ 0xA0AA0040) & (16 * v492) ^ v492;
  v495 = ((16 * (v493 ^ 0xC118606)) ^ 0xCBB865E0) & (v493 ^ 0xC118606) ^ (16 * (v493 ^ 0xC118606)) & 0xACBB8650;
  v496 = v494 ^ 0xACBB865E ^ (v495 ^ 0x88B80400) & (v494 << 8);
  v497 = v488 ^ (2 * ((v496 << 16) & 0x2CBB0000 ^ v496 ^ ((v496 << 16) ^ 0x65E0000) & (((v495 ^ 0x2403821E) << 8) & 0x2CBB0000 ^ 0x4390000 ^ (((v495 ^ 0x2403821E) << 8) ^ 0x3B860000) & (v495 ^ 0x2403821E))));
  v498 = v497 ^ 0x6E1D101D;
  v499 = v486 - v485 + 949350037;
  v500 = (v499 ^ 0xED947919) & (2 * (v499 & 0xED917D5C)) ^ v499 & 0xED917D5C;
  v501 = ((2 * (v499 ^ 0xA79693B1)) ^ 0x940FDDDA) & (v499 ^ 0xA79693B1) ^ (2 * (v499 ^ 0xA79693B1)) & 0x4A07EEEC;
  v502 = v501 ^ 0x4A002225;
  v503 = (v501 ^ 0x7CCC5) & (4 * v500) ^ v500;
  v504 = ((4 * v502) ^ 0x281FBBB4) & v502 ^ (4 * v502) & 0x4A07EEEC;
  v505 = (v504 ^ 0x807AAA0) & (16 * v503) ^ v503;
  v506 = ((16 * (v504 ^ 0x42004449)) ^ 0xA07EEED0) & (v504 ^ 0x42004449) ^ (16 * (v504 ^ 0x42004449)) & 0x4A07EEE0;
  v507 = v505 ^ 0x4A07EEED ^ (v506 ^ 0x6EE00) & (v505 << 8);
  v508 = v499 ^ (2 * ((v507 << 16) & 0x4A070000 ^ v507 ^ ((v507 << 16) ^ 0x6EED0000) & (((v506 ^ 0x4A01002D) << 8) & 0x4A070000 ^ 0x48010000 ^ (((v506 ^ 0x4A01002D) << 8) ^ 0x7EE0000) & (v506 ^ 0x4A01002D))));
  v509 = v437 ^ (2 * v448) ^ v464 ^ v487 ^ ((v487 ^ 0x14D11FC5) - 1337077804) ^ ((v487 ^ 0x4E9A931D) - 368688372) ^ ((v487 ^ 0x7EC75C6E) - 631534471) ^ ((v487 ^ 0x7FEFFF5F) - 613208246);
  v510 = (620460466 - v486) ^ v486 ^ ((v486 ^ 0xE08973BF) + 999159283) ^ ((v486 ^ 0xAA589F2F) + 1901861219) ^ ((v486 ^ 0x91D56ADD) + 1255271569) ^ v484;
  v511 = v487 - (((v497 ^ 0x33658BD0) - 1568185293) ^ ((v497 ^ 0x5D133A7F) - 856566370) ^ ((v497 ^ 0x621B873F) - 201758498));
  v512 = (v483 ^ 0x9CE46683) & (2 * (v483 & 0xDCF170C3)) ^ v483 & 0xDCF170C3;
  v513 = ((2 * (v483 ^ 0x3C86E601)) ^ 0xC0EF2D84) & (v483 ^ 0x3C86E601) ^ (2 * (v483 ^ 0x3C86E601)) & 0xE07796C2;
  v514 = v513 ^ 0x20109242;
  v515 = (v513 ^ 0xC0470400) & (4 * v512) ^ v512;
  v516 = ((4 * v514) ^ 0x81DE5B08) & v514 ^ (4 * v514) & 0xE07796C0;
  v517 = (v516 ^ 0x80561200) & (16 * v515) ^ v515;
  v518 = ((16 * (v516 ^ 0x602184C2)) ^ 0x7796C20) & (v516 ^ 0x602184C2) ^ (16 * (v516 ^ 0x602184C2)) & 0xE07796C0;
  v519 = v517 ^ 0xE07796C2 ^ (v518 ^ 0x710400) & (v517 << 8);
  v520 = v483 ^ (2 * ((v519 << 16) & 0x60770000 ^ v519 ^ ((v519 << 16) ^ 0x16C20000) & (((v518 ^ 0xE00692C2) << 8) & 0x60770000 ^ 0x610000 ^ (((v518 ^ 0xE00692C2) << 8) ^ 0x77960000) & (v518 ^ 0xE00692C2)))) ^ v508;
  v521 = (v511 - 1465018464) ^ v509 ^ (((v511 - 1465018464) ^ 0x16EB6F5A) - 1886093644) ^ (((v511 - 1465018464) ^ 0xCEFC82FD) + 1468240661) ^ (((v511 - 1465018464) ^ 0xE9685C6C) + 1880575366) ^ (((v511 - 1465018464) ^ 0x57FF5FDD) - 830452171);
  v522 = v511 - (v481 + (((v509 ^ 0x3F963D9F) - 2044992215) ^ ((v509 ^ 0xB7093D9A) + 243590446) ^ ((v509 ^ 0x11F9EBB7) - 1468779775)));
  v523 = v520 ^ v510 ^ 0x8D21BD81;
  v524 = ((v508 ^ 0xEF78093E) - 499665173) ^ ((v508 ^ 0x8D8863A1) - 2134385546) ^ ((v508 ^ 0x8F64CA19) - 2111081010);
  v525 = ((v520 ^ v510 ^ 0x676A3845) + 364149308) ^ ((v520 ^ v510 ^ 0x1D6D4B51) + 1874004272) ^ ((v520 ^ v510 ^ 0x3F271E61) + 1308187680);
  v526 = 2 * (v523 & 0x7349EE3C ^ (v520 ^ v510 ^ 0x45206D75) & (v508 ^ 0x1EDD4EBA));
  v527 = ((v522 - 1191401920) ^ 0xB5BA746) & (2 * ((v522 - 1191401920) & 0xAA1B3650)) ^ (v522 - 1191401920) & 0xAA1B3650;
  v528 = ((2 * ((v522 - 1191401920) ^ 0xB5BC7E6)) ^ 0x4281E36C) & ((v522 - 1191401920) ^ 0xB5BC7E6) ^ (2 * ((v522 - 1191401920) ^ 0xB5BC7E6)) & 0xA140F1B6;
  v529 = v528 ^ 0xA1401092;
  v530 = (v528 ^ 0xE100) & (4 * v527) ^ v527;
  v531 = ((4 * v529) ^ 0x8503C6D8) & v529 ^ (4 * v529) & 0xA140F1B4;
  v532 = (v531 ^ 0x8100C080) & (16 * v530) ^ v530;
  v533 = ((16 * (v531 ^ 0x20403126)) ^ 0x140F1B60) & (v531 ^ 0x20403126) ^ (16 * (v531 ^ 0x20403126)) & 0xA140F1B0;
  v534 = v532 ^ 0xA140F1B6 ^ (v533 ^ 0x1100) & (v532 << 8);
  v535 = (v522 - 1191401920) ^ v498 ^ (2 * ((v534 << 16) & 0x21400000 ^ v534 ^ ((v534 << 16) ^ 0x71B60000) & (((v533 ^ 0xA140E096) << 8) & 0x21400000 ^ 0x21000000 ^ (((v533 ^ 0xA140E096) << 8) ^ 0x40F10000) & (v533 ^ 0xA140E096))));
  v536 = (((v510 ^ 0xB8706691) - 1418250789) ^ ((v510 ^ 0xA79BFD20) - 1264800148) ^ ((v510 ^ 0xABC50B05) - 1195222961)) - 2046212782;
  v537 = v524 + v525 - (((v526 ^ 0x9481B0BF) + 1843722017) ^ ((v526 ^ 0xAF4AB44C) + 1445983188) ^ ((v526 ^ 0xBBC8849B) + 1118683909)) - 897288881;
  v538 = ((2 * (v537 & 0x9609044A)) & 0x20020800 | v537 & 0x9609044A) ^ (2 * (v537 & 0x9609044A)) & (v537 ^ 0x64E78F22);
  v539 = ((2 * (v537 ^ 0x64E78F22)) ^ 0xE5DD16D0) & (v537 ^ 0x64E78F22) ^ (2 * (v537 ^ 0x64E78F22)) & 0xF2EE8B68;
  v540 = v539 ^ 0x12228928;
  v541 = (v539 ^ 0xE24E8A40) & (4 * v538) ^ v538;
  v542 = ((4 * v540) ^ 0xCBBA2DA0) & v540 ^ (4 * v540) & 0xF2EE8B68;
  v543 = (v542 ^ 0xC2AA0920) & (16 * v541) ^ v541;
  v544 = ((16 * (v542 ^ 0x30448248)) ^ 0x2EE8B680) & (v542 ^ 0x30448248) ^ (16 * (v542 ^ 0x30448248)) & 0xF2EE8B60;
  v545 = v543 ^ 0xF2EE8B68 ^ (v544 ^ 0x22E88200) & (v543 << 8);
  v546 = v537 ^ (2 * ((v545 << 16) & 0x72EE0000 ^ v545 ^ ((v545 << 16) ^ 0xB680000) & (((v544 ^ 0xD0060968) << 8) & 0x72EE0000 ^ 0x10640000 ^ (((v544 ^ 0xD0060968) << 8) ^ 0x6E8B0000) & (v544 ^ 0xD0060968))));
  v547 = ((v536 ^ 0x2A3C379E) - 2046141902) ^ v536 ^ ((v536 ^ 0x2B81D08E) - 2018001630) ^ ((v536 ^ 0x2F0B8AFF) - 2093095087) ^ ((v536 ^ 0x7D7FFFBF) - 783707631) ^ v523;
  v548 = ((v546 ^ v523 ^ a18) + 296820933) ^ ((v546 ^ v523 ^ 0xC5DD1C9A) - 623667014) ^ ((v546 ^ v523 ^ 0x74677A13) + 1802108465);
  LOBYTE(STACK[0x94C]) = v546 ^ 0x58;
  v549 = v485 - v483 + (((v520 ^ 0xBEDA436B) + 553430434) ^ ((v520 ^ 0xEEAA26E8) + 1888274467) ^ ((v520 ^ 0xA17E9842) + 1062762121)) - v548 - 2003396502;
  v550 = ((v549 ^ 0x15778B7C) - 1789931762) ^ v549 ^ ((v549 ^ 0xD8C6199D) + 1493065197) ^ ((v549 ^ 0x4D999C94) - 845031194) ^ ((v549 ^ 0xFFEFB5FB) + 2144858507);
  v551 = v521 ^ 0x5875A5CF ^ v498;
  v552 = (((v521 ^ 0xE0F6D529) + 1199345434) ^ ((v521 ^ 0x6E00C05) - 1586866634) ^ ((v521 ^ 0x19F0DC88) - 1099266375)) - 1669106459;
  v553 = v552 ^ v521 ^ 0x5875A5CF ^ ((v552 ^ 0xC6BB01F7) + 583181169) ^ ((v552 ^ 0x75535A16) - 1859454830) ^ ((v552 ^ 0x5719F866) - 1285530910) ^ ((v552 ^ 0xFF77FEFF) + 453926009) ^ v535;
  LOBYTE(STACK[0x83D]) = v547 ^ 0x90;
  v554 = (((v509 ^ 0xA99CF656) + 269561570) ^ ((v509 ^ 0x204FBCD8) - 1715313552) ^ ((v509 ^ 0x10B5A13C) - 1455916660)) - v480 - v522 + 1953688380 + (((v535 ^ 0x559B6114) - 1532175267) ^ ((v535 ^ 0xF2C88450) + 67057945) ^ ((v535 ^ 0x6FB916F5) - 1634817090));
  v555 = ((v554 ^ 0xE7D2A82E) + 287966230) ^ v554 ^ ((v554 ^ 0x419C6B88) - 1218132044) ^ ((v554 ^ 0xF0364B9D) + 114223015) ^ ((v554 ^ 0x5F7FDBFF) - 1450739771);
  LOBYTE(STACK[0xAA5]) = v550 ^ 0xBA;
  LOBYTE(STACK[0xAC0]) = ((v554 ^ 0x2E) + 22) ^ v554 ^ ((v554 ^ 0x88) - 76) ^ ((v554 ^ 0x9D) - 89) ^ (-v554 - 60) ^ 0x37;
  v556 = (((v546 ^ 0x5048996A) - 784724754) ^ ((v546 ^ 0xB7376A35) + 910557107) ^ ((v546 ^ 0xB22F33) - 2118075723)) - v548;
  v557 = ((v547 ^ 0x60745A68) + 821021417) ^ ((v547 ^ 0xA54D7737) - 170465352) ^ ((v547 ^ 0x5EF16FFB) + 241893244);
  v558 = v557 + 1106686430;
  LOBYTE(STACK[0x967]) = v551 ^ 0xE3;
  LOBYTE(STACK[0x858]) = v553 ^ 0x51;
  LOBYTE(v521) = ((v548 - 116) ^ 0x25) & (2 * ((v548 - 116) & 0x26)) ^ (v548 - 116) & 0x26;
  LOBYTE(v509) = ((2 * ((v548 - 116) ^ 0x21)) ^ 0xE) & ((v548 - 116) ^ 0x21) ^ (2 * ((v548 - 116) ^ 0x21)) & 6;
  LOBYTE(v509) = (v548 - 116) ^ (2 * (((4 * v509) ^ 0x10) & v509 & ((16 * (v521 ^ 7 ^ v509 & (4 * v521))) ^ 0x70) ^ v521 ^ 7 ^ v509 & (4 * v521))) ^ 0x1C;
  v559 = v548 - v557 - v556;
  v560 = v559 - 338018451;
  LOBYTE(STACK[0x9B1]) = (((v522 + 64) ^ 0xD3) - 99) ^ (v522 + 64) ^ (((v522 + 64) ^ 0x90) - 32) ^ (((v522 + 64) ^ 0xD) + 67) ^ (((v522 + 64) ^ 0xFE) - 78) ^ 0x43;
  v561 = ((v558 ^ 0xA49A73CC) + 71789545) ^ v558 ^ ((v558 ^ 0xEE4C5301) + 1318144806) ^ ((v558 ^ 0xE38B38E1) + 1129717958) ^ ((v558 ^ 0xF67FFFF7) + 1453516756) ^ (v559 - 338018451) ^ (((v559 - 338018451) ^ 0x7A8327AD) + 762942579) ^ (((v559 - 338018451) ^ 0x384533B6) + 1874821226) ^ (((v559 - 338018451) ^ 0x15FCE7C4) + 1107711004) ^ (((v559 - 338018451) ^ 0xFF3FBFFF) - 1463481311);
  v562 = (((v551 ^ 0x7DAD2D6D) - 2007297231) ^ ((v551 ^ 0x2501251) - 140104691) ^ ((v551 ^ 0x2AD7772C) - 551466638)) - v522;
  v563 = v562 + 841697536;
  LOBYTE(STACK[0x996]) = v509;
  v564 = ((v553 ^ 0xBB387DFE) + 1724604873) ^ ((v553 ^ 0xC060670E) + 496204601) ^ ((v553 ^ 0xFA71452) - 766244763);
  v565 = v564 - 2092802897;
  v566 = v522 - (v562 + 841697536) - v564;
  v567 = v566 + 767107005;
  v568 = (2 * ((v566 + 767107005) & 0x6662CF1E)) & ((v566 + 767107005) ^ 0x7458EFDF) ^ (v566 + 767107005) & 0x6662CF1E;
  v569 = ((2 * ((v566 + 767107005) ^ 0xF419FFE3)) ^ 0x24F661FA) & ((v566 + 767107005) ^ 0xF419FFE3) ^ (2 * ((v566 + 767107005) ^ 0xF419FFE3)) & 0x927B30FC;
  v570 = v569 ^ 0x92091005;
  v571 = (v569 ^ 0x1220F8) & (4 * v568) ^ v568;
  v572 = ((4 * v570) ^ 0x49ECC3F4) & v570 ^ (4 * v570) & 0x927B30FC;
  v573 = (v572 ^ 0x6800E0) & (16 * v571) ^ v571;
  v574 = ((16 * (v572 ^ 0x92133009)) ^ 0x27B30FD0) & (v572 ^ 0x92133009) ^ (16 * (v572 ^ 0x92133009)) & 0x927B30F0;
  v575 = v573 ^ 0x927B30FD ^ (v574 ^ 0x2330000) & (v573 << 8);
  v576 = (v565 ^ 0x51D88AD4) & (2 * (v565 & 0x81D92CE4)) ^ v565 & 0x81D92CE4;
  v577 = ((2 * (v565 ^ 0x5158D314)) ^ 0xA103FFE0) & (v565 ^ 0x5158D314) ^ (2 * (v565 ^ 0x5158D314)) & 0xD081FFF0;
  v578 = v577 ^ 0x50800010;
  v579 = (v577 ^ 0x3FFE0) & (4 * v576) ^ v576;
  v580 = ((4 * v578) ^ 0x4207FFC0) & v578 ^ (4 * v578) & 0xD081FFF0;
  v581 = (v580 ^ 0x4001FFC0) & (16 * v579) ^ v579;
  v582 = ((16 * (v580 ^ 0x90800030)) ^ 0x81FFF00) & (v580 ^ 0x90800030) ^ (16 * (v580 ^ 0x90800030)) & 0xD081FFF0;
  v583 = v581 ^ 0xD081FFF0 ^ (v582 ^ 0x1FF00) & (v581 << 8);
  v584 = (((v550 ^ 0x68B1801C) - 139413285) ^ ((v550 ^ 0x862E18C7) + 422518786) ^ ((v550 ^ 0x67F775D8) - 118076129)) - (v559 - 338018451);
  v585 = (v566 + 767107005) ^ v565 ^ (2 * (v575 ^ v583 ^ (v583 << 16) & 0x50810000 ^ ((v583 << 16) ^ 0x7FF00000) & (((v582 ^ 0xD08000F0) << 8) & 0xD0810000 ^ 0x50000000 ^ (((v582 ^ 0xD08000F0) << 8) ^ 0x81FF0000) & (v582 ^ 0xD08000F0)) ^ (v575 << 16) & 0x127B0000 ^ ((v575 << 16) ^ 0x30FD0000) & (((v574 ^ 0x9048302D) << 8) & 0x127B0000 ^ 0x4B0000 ^ (((v574 ^ 0x9048302D) << 8) ^ 0x7B300000) & (v574 ^ 0x9048302D))));
  v586 = (((v555 ^ 0xFE46A524) - 512759557) ^ ((v555 ^ 0x187D59A9) + 122950776) ^ ((v555 ^ 0x1993F9C4) + 112899099)) - (v566 + 767107005) + 68213019;
  LOBYTE(v547) = (2 * ((v566 - 67) & 0x1E)) & ((v566 - 67) ^ 0x5D) ^ (v566 - 67) & 0x1E;
  LOBYTE(v555) = ((2 * ((v566 - 67) ^ 0x71)) ^ 0xDE) & ((v566 - 67) ^ 0x71) ^ (2 * ((v566 - 67) ^ 0x71)) & 0x6E;
  LOBYTE(v546) = v555 ^ 0x21;
  LOBYTE(v555) = v547 ^ 0x6F ^ (v555 ^ 0x49) & (4 * v547);
  LOBYTE(STACK[0x793]) = (v566 - 67) ^ (2 * ((16 * v555) & 0x60 ^ v555 ^ ((16 * v555) ^ 0x70) & ((4 * v546) & 0x60 ^ ((4 * v546) ^ 0xB0) & v546 ^ 0x40))) ^ 0xF3;
  v587 = v559 + 1725588474 + (((v561 ^ 0x39C5FEE0) + 985416672) ^ ((v561 ^ 0x7083CDA2) + 1945792670) ^ ((v561 ^ 0xBE6198B9) - 1122491001));
  v588 = (v587 ^ 0xCC1B76AD) & (2 * (v587 & 0xE89C788E)) ^ v587 & 0xE89C788E;
  v589 = ((2 * (v587 ^ 0xD2B46B1)) ^ 0xCB6E7C7E) & (v587 ^ 0xD2B46B1) ^ (2 * (v587 ^ 0xD2B46B1)) & 0xE5B73E3E;
  v590 = v589 ^ 0x24910201;
  v591 = (v589 ^ 0xC0222438) & (4 * v588) ^ v588;
  v592 = ((4 * v590) ^ 0x96DCF8FC) & v590 ^ (4 * v590) & 0xE5B73E3C;
  v593 = (v592 ^ 0x84943820) & (16 * v591) ^ v591;
  v594 = ((16 * (v592 ^ 0x61230603)) ^ 0x5B73E3F0) & (v592 ^ 0x61230603) ^ (16 * (v592 ^ 0x61230603)) & 0xE5B73E30;
  v595 = v593 ^ 0xE5B73E3F ^ (v594 ^ 0x41332200) & (v593 << 8);
  v596 = v587 ^ (2 * ((v595 << 16) & 0x65B70000 ^ v595 ^ ((v595 << 16) ^ 0x3E3F0000) & (((v594 ^ 0xA4841C0F) << 8) & 0x65B70000 ^ 0x40810000 ^ (((v594 ^ 0xA4841C0F) << 8) ^ 0x373E0000) & (v594 ^ 0xA4841C0F))));
  LOBYTE(v594) = ((v562 - 109) ^ 0xFD) & (2 * ((v562 - 109) & 0xF8)) ^ (v562 - 109) & 0xF8;
  LOBYTE(v595) = ((2 * ((v562 - 109) ^ 0xED)) ^ 0x2A) & ((v562 - 109) ^ 0xED) ^ (2 * ((v562 - 109) ^ 0xED)) & 0x14;
  LOBYTE(STACK[0x749]) = (v562 - 109) ^ (2 * ((v595 ^ 0x15) & (16 * (v595 & (4 * v594) ^ v594)) & ((4 * (v595 ^ 0x15)) ^ 0x40) ^ v595 & (4 * v594) ^ v594)) ^ 0xB;
  v597 = v566 - 1608663135 + (((v585 ^ 0xCCFE3912) + 945599497) ^ ((v585 ^ 0x19E5CFA8) - 314096973) ^ ((v585 ^ 0x36A78B5A) - 1039858111));
  LOBYTE(v550) = ((v584 - 1) ^ 0x52) & (2 * ((v584 - 1) & 0x5B)) ^ (v584 - 1) & 0x5B;
  LOBYTE(v595) = ((2 * ((v584 - 1) ^ 0x42)) ^ 0x32) & ((v584 - 1) ^ 0x42) ^ (2 * ((v584 - 1) ^ 0x42)) & 0x18;
  LOBYTE(STACK[0x887]) = (v584 - 1) ^ (2 * ((((4 * (v595 ^ 9)) ^ 0x60) & (v595 ^ 9) ^ (4 * (v595 ^ 9)) & 0x10) & (16 * ((v595 ^ 0x10) & (4 * v550) ^ v550)) ^ (v595 ^ 0x10) & (4 * v550) ^ v550)) ^ 0x6F;
  LOBYTE(STACK[0x8A2]) = ((v586 ^ 0x19) + 56) ^ v586 ^ ((v586 ^ 0x56) + 121) ^ ((v586 ^ 0xE1) - 48) ^ ((v586 ^ 0x7F) + 82) ^ 0x22;
  LOBYTE(v583) = ((2 * (v556 + 65)) & 0x42 ^ 0x21) & (v556 + 65);
  LOBYTE(v595) = ((2 * ((v556 + 65) ^ 0xF7)) ^ 0xAC) & ((v556 + 65) ^ 0xF7) ^ (2 * ((v556 + 65) ^ 0xF7)) & 0xD6;
  LOBYTE(v595) = (v556 + 65) ^ (2 * (((4 * (v595 ^ 0x52)) & 0xD0 ^ 0x50 ^ ((4 * (v595 ^ 0x52)) ^ 0x50) & (v595 ^ 0x52)) & (16 * ((v595 ^ 0xD4) & (4 * v583) ^ v583)) ^ (v595 ^ 0xD4) & (4 * v583) ^ v583));
  LOBYTE(v595) = (((v595 ^ 0x69) + 42) ^ ((v595 ^ 0x5D) + 30) ^ ((v595 ^ 0x15) + 86)) + 40;
  LOBYTE(v583) = v595 & 0x45 ^ 0x57;
  LOBYTE(v583) = v595 ^ (2 * ((v595 ^ 0x5E) & (2 * ((v595 ^ 0x5E) & (2 * ((v595 ^ 0x5E) & (2 * ((v595 ^ 0x5E) & (2 * ((v595 ^ 0x5E) & (2 * (((2 * (v595 & 0x1F)) ^ 0x1A) & (v595 ^ 0x1E) ^ v583)) ^ v583)) ^ v583)) ^ v583)) ^ v583)) ^ v583)) ^ 0x71;
  LOBYTE(STACK[0x9FB]) = v585 ^ 0x13;
  LOBYTE(STACK[0x9E0]) = v561 ^ 0xCF;
  v598 = v586 - v597;
  LOBYTE(STACK[0x72E]) = v583;
  v599 = v567 - (v562 + 841697536) + 771343871;
  v600 = (v599 ^ 0xE0B23742) & (2 * (v599 & 0x82BB4794)) ^ v599 & 0x82BB4794;
  v601 = ((2 * (v599 ^ 0xE5B6BB4A)) ^ 0xCE1BF9BC) & (v599 ^ 0xE5B6BB4A) ^ (2 * (v599 ^ 0xE5B6BB4A)) & 0x670DFCDE;
  v602 = v601 ^ 0x21040442;
  v603 = (v601 ^ 0x6093890) & (4 * v600) ^ v600;
  v604 = ((4 * v602) ^ 0x9C37F378) & v602 ^ (4 * v602) & 0x670DFCDC;
  v605 = (v604 ^ 0x405F040) & (16 * v603) ^ v603;
  v606 = ((16 * (v604 ^ 0x63080C86)) ^ 0x70DFCDE0) & (v604 ^ 0x63080C86) ^ (16 * (v604 ^ 0x63080C86)) & 0x670DFCD0;
  v607 = v605 ^ 0x670DFCDE ^ (v606 ^ a17) & (v605 << 8);
  v608 = (v562 - 1604673597) ^ 0xEEB51CF;
  v609 = (2 * ((v562 - 1604673597) & 0x83BE749C)) & v608 ^ (v562 - 1604673597) & 0x83BE749C ^ ((2 * ((v562 - 1604673597) & 0x83BE749C)) & 0x5542110 | 0x8000002);
  v610 = (2 * v608) & 0x8D552552 ^ 0x85552551 ^ ((2 * v608) ^ 0x1AAA4AA6) & v608;
  v611 = (4 * v609) & 0x8D552550 ^ v609 ^ ((4 * v609) ^ a16) & v610;
  v612 = (4 * v610) & 0x8D552550 ^ 0x88012013 ^ ((4 * v610) ^ 0x3554954C) & v610;
  v613 = (16 * v611) & 0x8D552550 ^ v611 ^ ((16 * v611) ^ 0x80000020) & v612;
  v614 = (16 * v612) & 0x8D552550 ^ 0x8052043 ^ ((16 * v612) ^ 0xD5525530) & v612;
  v615 = v613 ^ (v613 << 8) & 0x8D552500 ^ ((v613 << 8) ^ 0x200) & v614 ^ 0x5552551;
  v616 = v599 ^ (v562 - 1604673597) ^ (2 * ((v615 << 16) & 0xD550000 ^ v615 ^ ((v615 << 16) ^ 0x25530000) & ((v614 << 8) & 0x8D550000 ^ 0x8500000 ^ ((v614 << 8) ^ 0x55250000) & v614) ^ v607 ^ (v607 << 16) & 0x670D0000 ^ ((v607 << 16) ^ 0x7CDE0000) & (((v606 ^ 0x700301E) << 8) & 0x670D0000 ^ 0x62010000 ^ (((v606 ^ 0x700301E) << 8) ^ 0xDFC0000) & (v606 ^ 0x700301E))));
  v617 = v598 + 1643280395;
  v618 = (v617 ^ 0x2347ADFD) & (2 * (v617 & 0xB057A1E0)) ^ v617 & 0xB057A1E0;
  v619 = ((2 * ((v598 + 1643280395) ^ 0x436AAFBD)) ^ 0xE67A1CBA) & ((v598 + 1643280395) ^ 0x436AAFBD) ^ (2 * ((v598 + 1643280395) ^ 0x436AAFBD)) & 0xF33D0E5C;
  v620 = v619 ^ 0x11050245;
  v621 = (v619 ^ 0xC2380C00) & (4 * v618) ^ v618;
  v622 = ((4 * v620) ^ 0xCCF43974) & v620 ^ (4 * v620) & 0xF33D0E5C;
  v623 = (v622 ^ 0xC0340840) & (16 * v621) ^ v621;
  v624 = ((16 * (v622 ^ 0x33090609)) ^ 0x33D0E5D0) & (v622 ^ 0x33090609) ^ (16 * (v622 ^ 0x33090609)) & 0xF33D0E50;
  v625 = v623 ^ 0xF33D0E5D ^ (v624 ^ 0x3310040D) & (v623 << 8);
  v626 = v617 ^ (2 * ((v625 << 16) & 0x733D0000 ^ v625 ^ ((v625 << 16) ^ 0xE5D0000) & (((v624 ^ 0xC02D0A0D) << 8) & 0xF33D0000 ^ 0x42310000 ^ (((v624 ^ 0xC02D0A0D) << 8) ^ 0x3D0E0000) & (v624 ^ 0xC02D0A0D))));
  v627 = v560 - v556 + 1717025926;
  v628 = v584 - (((v596 ^ 0x2B424CB0) - 2063255101) ^ ((v596 ^ 0xEA193DD6) + 1147029669) ^ ((v596 ^ 0xAAC77596) + 75497701)) - 1006172440;
  v629 = (v628 ^ 0x89EF29E9) & (2 * (v628 & 0xCD8E29F0)) ^ v628 & 0xCD8E29F0;
  v630 = ((2 * (v628 ^ 0xAF72BE9)) ^ 0x8EF20432) & (v628 ^ 0xAF72BE9) ^ (2 * (v628 ^ 0xAF72BE9)) & 0xC7790218;
  v631 = v630 ^ 0x41090209;
  v632 = (v630 ^ 0x7F00000) & (4 * v629) ^ v629;
  v633 = ((4 * v631) ^ 0x1DE40864) & v631 ^ (4 * v631) & 0xC7790218;
  v634 = v632 ^ 0xC7790219 ^ (v633 ^ 0x5600000) & (16 * v632);
  v635 = (16 * (v633 ^ 0xC2190219)) & 0xC7790210 ^ 0x80690209 ^ ((16 * (v633 ^ 0xC2190219)) ^ 0x77902190) & (v633 ^ 0xC2190219);
  v636 = (v634 << 8) & 0xC7790200 ^ v634 ^ ((v634 << 8) ^ 0x79021900) & v635;
  v637 = v628 ^ (2 * ((v636 << 16) & 0x47790000 ^ v636 ^ ((v636 << 16) ^ 0x2190000) & ((v635 << 8) & 0xC7790000 ^ 0x6790000 ^ ((v635 << 8) ^ 0x79020000) & v635)));
  LOBYTE(v636) = (2 * (v560 ^ 0xAB)) & 0x4A ^ 0x49 ^ ((2 * (v560 ^ 0xAB)) ^ 0x96) & (v560 ^ 0xAB);
  LOBYTE(v635) = v560 & 0xE0 ^ 0x4B ^ (v560 ^ 0xEB) & (2 * (v560 & 0xE0));
  LOBYTE(v636) = v560 ^ (2 * ((16 * v635) & 0x40 ^ v635 ^ ((4 * v636) & 0x48 ^ ((4 * v636) ^ 0x20) & v636 ^ 0x40) & ((16 * v635) ^ 0x30))) ^ 0x42;
  LOBYTE(v560) = v562 + 97;
  LOBYTE(STACK[0xA45]) = v626 ^ 0xA9;
  LOBYTE(v635) = (v560 ^ 0x63) & (2 * (v560 & 0xB)) ^ v560 & 0xB;
  LOBYTE(v562) = ((2 * ((v562 + 97) ^ 0x67)) ^ 0xD8) & ((v562 + 97) ^ 0x67) ^ (2 * ((v562 + 97) ^ 0x67)) & 0x6C;
  LOBYTE(v631) = v562 ^ 0x24;
  LOBYTE(v562) = v635 ^ 0x6C ^ (v562 ^ 0x48) & (4 * v635);
  LOBYTE(STACK[0x8EC]) = v560 ^ (2 * ((16 * v562) & 0x60 ^ v562 ^ ((16 * v562) ^ 0x40) & ((4 * v631) & 0x60 ^ ((4 * v631) ^ 0xB0) & v631 ^ 0x40))) ^ 0xA0;
  v638 = v556 - 86738083;
  v639 = ((v556 - 86738083) ^ 0x74E2EE0B) & (2 * ((v556 - 86738083) & 0x6684E842)) ^ (v556 - 86738083) & 0x6684E842;
  v640 = ((2 * ((v556 - 86738083) ^ 0x74EBAE0F)) ^ 0x24DE8C9A) & ((v556 - 86738083) ^ 0x74EBAE0F) ^ (2 * ((v556 - 86738083) ^ 0x74EBAE0F)) & 0x126F464C;
  v641 = v640 ^ 0x12214245;
  v642 = (v640 ^ 0x6004C) & (4 * v639) ^ v639;
  v643 = ((4 * v641) ^ 0x49BD1934) & v641 ^ (4 * v641) & 0x126F464C;
  v644 = (v643 ^ 0x2D0000) & (16 * v642) ^ v642;
  v645 = ((16 * (v643 ^ 0x12424649)) ^ 0x26F464D0) & (v643 ^ 0x12424649) ^ (16 * (v643 ^ 0x12424649)) & 0x126F4640;
  v646 = v644 ^ 0x126F464D ^ (v645 ^ 0x2644400) & (v644 << 8);
  v647 = (v646 << 16) & 0x126F0000 ^ v646 ^ ((v646 << 16) ^ 0x464D0000) & (((v645 ^ 0x100B020D) << 8) & 0x126F0000 ^ 0x10290000 ^ (((v645 ^ 0x100B020D) << 8) ^ 0x6F460000) & (v645 ^ 0x100B020D));
  LOBYTE(STACK[0x778]) = v636;
  LOBYTE(v575) = (v556 + 65) ^ (-98 - v556) ^ (((v556 + 65) ^ 0x8C) - 83) ^ (((v556 + 65) ^ 0x74) + 85) ^ (((v556 + 65) ^ 0xD8) - 7);
  LOBYTE(v575) = (((v575 ^ 0xF2) + 50) ^ ((v575 ^ 0xEC) + 48) ^ ((v575 ^ 0xC1) + 3)) + 73;
  LOBYTE(v636) = v575 & 0xCA ^ 0xB3;
  LOBYTE(STACK[0x8D1]) = v575 ^ (2 * ((v575 ^ 0x64) & (2 * ((v575 ^ 0x64) & (2 * ((v575 ^ 0x64) & (2 * ((v575 ^ 0x64) & (2 * ((v575 ^ 0x64) & (2 * ((v575 ^ 0x64) & 0x2E ^ v636)) ^ v636)) ^ v636)) ^ v636)) ^ v636)) ^ v636)) ^ 0xFE;
  v648 = ((v596 ^ 0xC5BA5B22) - 991482370) ^ ((v596 ^ 0x10DCD7EA) + 293708086) ^ ((v596 ^ 0x2BC405E8) + 714699576);
  LOBYTE(STACK[0x7C2]) = v596 ^ 0x14;
  v649 = v556 - v648 - 847415983;
  v650 = (v649 ^ 0x39814552) & (2 * (v649 & 0xBD81895B)) ^ v649 & 0xBD81895B;
  v651 = ((2 * (v649 ^ 0x2B8057C6)) ^ 0x2C03BD3A) & (v649 ^ 0x2B8057C6) ^ (2 * (v649 ^ 0x2B8057C6)) & 0x9601DE9C;
  v652 = v651 ^ 0x92004285;
  v653 = (v651 ^ 0x4000C18) & (4 * v650) ^ v650;
  v654 = ((4 * v652) ^ 0x58077A74) & v652 ^ (4 * v652) & 0x9601DE9C;
  v655 = (v654 ^ 0x10015A10) & (16 * v653) ^ v653;
  v656 = ((16 * (v654 ^ 0x86008489)) ^ 0x601DE9D0) & (v654 ^ 0x86008489) ^ (16 * (v654 ^ 0x86008489)) & 0x9601DE90;
  v657 = v655 ^ 0x9601DE9D ^ (v656 ^ 0x1C800) & (v655 << 8);
  v658 = v649 ^ (2 * ((v657 << 16) & 0x16010000 ^ v657 ^ ((v657 << 16) ^ 0x5E9D0000) & (((v656 ^ 0x9600160D) << 8) & 0x16010000 ^ 0x16010000 ^ (((v656 ^ 0x9600160D) << 8) ^ 0x1DE0000) & (v656 ^ 0x9600160D))));
  v659 = ((v597 ^ 0xFC511CDB) + 546185958) ^ v597 ^ ((v597 ^ 0xEC25424D) + 821722228) ^ ((v597 ^ 0xC4AB62AC) + 410279059) ^ ((v597 ^ 0xF7FFFDFB) + 723567558);
  v660 = v627 ^ v638 ^ ((v627 ^ 0x54309AC) - 909470685) ^ ((v627 ^ 0x3777138B) - 67203578) ^ ((v627 ^ 0x6E3987ED) - 1565517212) ^ ((v627 ^ 0x6F7BFFBB) - 1544396234) ^ (2 * v647);
  LOBYTE(STACK[0xA2A]) = v637 ^ 0xF6;
  LOBYTE(STACK[0x7DD]) = ((v597 ^ 0xDB) - 26) ^ v597 ^ ((v597 ^ 0x4D) + 116) ^ ((v597 ^ 0xAC) - 109) ^ ((v597 ^ 0xFB) - 58) ^ 0xE2;
  LOBYTE(STACK[0x936]) = v616 ^ 0xE1;
  LOBYTE(STACK[0x91B]) = v660 ^ 0x9D;
  v661 = v648 - 757224655 + (((v637 ^ 0x4A20286F) + 521405750) ^ ((v637 ^ 0xE4771237) - 1320992914) ^ ((v637 ^ 0x6B19179A) + 1043151553));
  v662 = v563 - (((v659 ^ 0x7CA47C2) + 1287677636) ^ ((v659 ^ 0xED68A7D1) - 1503492399) ^ ((v659 ^ 0x5CBCAC02) + 397839620));
  v663 = (((v659 ^ 0xE3614725) - 1469356507) ^ ((v659 ^ 0x9C8C453D) - 679058371) ^ ((v659 ^ 0xC9F34E09) - 2097582327)) + 1706532469 + (((v626 ^ 0x112B8163) - 1539025954) ^ ((v626 ^ 0xAE5CA754) + 456357355) ^ ((v626 ^ 0xED609B6D) + 1477396948));
  v664 = (v663 ^ 0xB5331241) & (2 * (v663 & 0xB5BB8495)) ^ v663 & 0xB5BB8495;
  v665 = ((2 * (v663 ^ 0x9E751A43)) ^ 0x579D3DAC) & (v663 ^ 0x9E751A43) ^ (2 * (v663 ^ 0x9E751A43)) & 0x2BCE9ED6;
  v666 = v665 ^ 0x28428252;
  v667 = (v665 ^ 0x38C1484) & (4 * v664) ^ v664;
  v668 = ((4 * v666) ^ 0xAF3A7B58) & v666 ^ (4 * v666) & 0x2BCE9ED4;
  v669 = (v668 ^ 0x2B0A1A50) & (16 * v667) ^ v667;
  v670 = ((16 * (v668 ^ 0xC48486)) ^ a15) & (v668 ^ 0xC48486) ^ (16 * (v668 ^ 0xC48486)) & 0x2BCE9ED0;
  v671 = v669 ^ 0x2BCE9ED6 ^ (v670 ^ 0x28C88C00) & (v669 << 8);
  v672 = (v671 << 16) & 0x2BCE0000 ^ v671 ^ ((v671 << 16) ^ 0x1ED60000) & (((v670 ^ 0x3061296) << 8) & 0x2BCE0000 ^ 0x21400000 ^ (((v670 ^ 0x3061296) << 8) ^ 0x4E9E0000) & (v670 ^ 0x3061296));
  v673 = v658 ^ v660;
  v674 = v658 ^ v660 ^ v637;
  LOBYTE(v660) = (((v658 ^ 0x40) - 87) ^ ((v658 ^ 0xDD) + 54) ^ ((v658 ^ 0xFC) + 21)) - 67;
  LOBYTE(v666) = v660 & 0x92 ^ 0xBB;
  v675 = (v662 + 1416691664) ^ v616 ^ (((v662 + 1416691664) ^ 0x78881742) - 1128348433) ^ (((v662 + 1416691664) ^ 0x8CB7C07D) + 1216418770) ^ (((v662 + 1416691664) ^ 0x3C094C9B) - 130048200) ^ (((v662 + 1416691664) ^ 0xF3FFB7F7) + 935945308);
  v676 = ((v658 ^ 0x5A7C8999) + 249397170) ^ ((v658 ^ 0x5A0F737E) + 246318423) ^ ((v658 ^ 0xBDF3CE86) - 380487505);
  LOBYTE(STACK[0xA74]) = v660 ^ (2 * ((v660 ^ 0x3C) & (2 * ((v660 ^ 0x3C) & (2 * ((v660 ^ 0x3C) & (2 * ((v660 ^ 0x3C) & (2 * ((v660 ^ 0x3C) & (2 * ((v660 ^ 0x3C) & 0x2E ^ v666)) ^ v666)) ^ v666)) ^ v666)) ^ v666)) ^ v666)) ^ 0xA6;
  v677 = v661 ^ v674 ^ ((v661 ^ 0xF7B91249) + 1796294269) ^ ((v661 ^ 0xA8D69018) + 880722990) ^ ((v661 ^ 0x45C75664) - 647036334) ^ ((v661 ^ 0x79FF7FFF) - 447271989);
  v678 = v626 ^ v675;
  v679 = v663 ^ v626 ^ v675 ^ (2 * v672);
  v680 = (((v674 ^ 0xEDFA4AD8) + 130418918) ^ ((v674 ^ 0x554A7E88) - 1082770250) ^ ((v674 ^ 0xB5C82B5A) + 1609853288)) - v676;
  LOBYTE(STACK[0x980]) = v679 ^ 0xD1;
  v681 = (((v673 ^ 0x15AE114B) + 1431929300) ^ ((v673 ^ 0xE912BFBB) - 1444597980) ^ ((v673 ^ 0x348A9C38) + 1954352289)) - 179580399;
  v682 = ((v681 ^ 0x7FFF350B) - 166506707) ^ v681 ^ ((v681 ^ 0x6CE7965A) - 452203394) ^ ((v681 ^ 0x1AF4F976) - 1827110062) ^ ((v681 ^ 0x7FFFDFFF) - 166484519);
  v662 -= 363834842;
  v683 = (v662 ^ 0x43691711) & (2 * (v662 & 0x886DA75A)) ^ v662 & 0x886DA75A;
  v684 = ((2 * (v662 ^ 0x53601F91)) ^ 0xB61B7196) & (v662 ^ 0x53601F91) ^ (2 * (v662 ^ 0x53601F91)) & 0xDB0DB8CA;
  v685 = v684 ^ 0x49048849;
  v686 = (v684 ^ 0x2093080) & (4 * v683) ^ v683;
  v687 = ((4 * v685) ^ 0x6C36E32C) & v685 ^ (4 * v685) & 0xDB0DB8C8;
  v688 = (v687 ^ 0x4804A000) & (16 * v686) ^ v686;
  v689 = ((16 * (v687 ^ 0x930918C3)) ^ 0xB0DB8CB0) & (v687 ^ 0x930918C3) ^ (16 * (v687 ^ 0x930918C3)) & 0xDB0DB8C0;
  v690 = v688 ^ 0xDB0DB8CB ^ (v689 ^ 0x90098800) & (v688 << 8);
  v691 = v662 ^ (2 * ((v690 << 16) & 0x5B0D0000 ^ v690 ^ ((v690 << 16) ^ 0x38CB0000) & (((v689 ^ 0x4B04304B) << 8) & 0x5B0D0000 ^ 0x52050000 ^ (((v689 ^ 0x4B04304B) << 8) ^ 0xDB80000) & (v689 ^ 0x4B04304B))));
  v692 = (((v675 ^ 0x5D365424) - 1323001384) ^ ((v675 ^ 0x4016C137) - 1409020731) ^ ((v675 ^ 0x31E73952) - 571083614)) - 1921939909;
  v693 = ((v692 ^ 0x7CB7D0F0) - 989538708) ^ v692 ^ ((v692 ^ 0xF44FA0F7) + 1308403309) ^ ((v692 ^ 0xB14956DC) + 150622280) ^ ((v692 ^ 0x7FFDDFBF) - 967911131);
  v694 = (((v678 ^ 0x4B82B8EA) - 318744487) ^ ((v678 ^ 0xDC470195) + 2059788584) ^ ((v678 ^ 0xE915A864) + 1335314647)) - (((v691 ^ 0xA8F6F90D) + 1742489794) ^ ((v691 ^ 0xD4092251) + 455316382) ^ ((v691 ^ 0x729B0D90) - 1112425379));
  v695 = ((v676 - 520513296) ^ 0x4FFAEAC5) & (2 * ((v676 - 520513296) & 0x8FFACAC9)) ^ (v676 - 520513296) & 0x8FFACAC9;
  v696 = ((2 * ((v676 - 520513296) ^ 0x59BB7B45)) ^ 0xAC836318) & ((v676 - 520513296) ^ 0x59BB7B45) ^ (2 * ((v676 - 520513296) ^ 0x59BB7B45)) & 0xD641B18C;
  v697 = v696 ^ 0x52409084;
  v698 = (v696 ^ 0x4012108) & (4 * v695) ^ v695;
  v699 = ((4 * v697) ^ 0x5906C630) & v697 ^ (4 * v697) & 0xD641B18C;
  v700 = (v699 ^ 0x50008000) & (16 * v698) ^ v698;
  v701 = ((16 * (v699 ^ 0x8641318C)) ^ 0x641B18C0) & (v699 ^ 0x8641318C) ^ (16 * (v699 ^ 0x8641318C)) & 0xD641B180;
  v702 = v700 ^ 0xD641B18C ^ (v701 ^ 0x44011000) & (v700 << 8);
  v703 = v677 ^ (v676 - 520513296) ^ (2 * ((v702 << 16) & 0x56410000 ^ v702 ^ ((v702 << 16) ^ 0x318C0000) & (((v701 ^ 0x9240A10C) << 8) & 0x56410000 ^ 0x16400000 ^ (((v701 ^ 0x9240A10C) << 8) ^ 0x41B10000) & (v701 ^ 0x9240A10C))));
  v704 = v680 + (((v677 ^ 0x72ED02A) + 1082271905) ^ ((v677 ^ 0x40A2FA05) + 118358672) ^ ((v677 ^ 0x29A39EEF) + 1846503014));
  v705 = v703 ^ 0x9927FB20 ^ v682;
  LOBYTE(STACK[0xABE]) = v682 ^ 0xEC;
  LOBYTE(v701) = ((2 * (v694 + 22)) & 0x82 ^ 0x41) & (v694 + 22);
  LOBYTE(v682) = ((2 * ((v694 + 22) ^ 0x13)) ^ 0xA4) & ((v694 + 22) ^ 0x13) ^ (2 * ((v694 + 22) ^ 0x13)) & 0x52;
  LOBYTE(STACK[0x827]) = (v694 + 22) ^ (2 * (((4 * (v682 ^ 0x52)) & 0x50 ^ ((4 * (v682 ^ 0x52)) ^ 0x40) & (v682 ^ 0x52) ^ 0x40) & (16 * (v682 & (4 * v701) ^ v701)) ^ v682 & (4 * v701) ^ v701)) ^ 0xB2;
  v706 = (((v704 - 784069688) ^ 0x20A236E6) - 1940008930) ^ (v704 - 784069688) ^ (((v704 - 784069688) ^ 0x4EFDB411) - 503164181) ^ (((v704 - 784069688) ^ 0x42A06048) - 295729484) ^ (((v704 - 784069688) ^ 0x7FFFFBBB) - 754967231) ^ v703 ^ 0x9927FB20;
  LOBYTE(STACK[0xA8F]) = v691 ^ 0x3F;
  LOBYTE(STACK[0x965]) = v677 ^ 0xF4;
  v707 = v679 ^ v691;
  v708 = v679 ^ v691 ^ 0xD3C37154;
  v709 = (((v705 ^ 0x7A63DADA) - 1504274456) ^ ((v705 ^ 0x3F61A99D) - 480975711) ^ ((v705 ^ 0xC76010AE) + 458579348)) - (v704 - 784069688) + 1292545773;
  v710 = (v709 ^ 0x875C3238) & (2 * (v709 & 0xA79E3B42)) ^ v709 & 0xA79E3B42;
  v711 = ((2 * (v709 ^ 0xC45432B8)) ^ 0xC79413F4) & (v709 ^ 0xC45432B8) ^ (2 * (v709 ^ 0xC45432B8)) & 0x63CA09FA;
  v712 = v711 ^ 0x204A080A;
  v713 = (v711 ^ 0x2800110) & (4 * v710) ^ v710;
  v714 = ((4 * v712) ^ 0x8F2827E8) & v712 ^ (4 * v712) & 0x63CA09F8;
  v715 = (v714 ^ 0x30801E0) & (16 * v713) ^ v713;
  v716 = ((16 * (v714 ^ 0x60C20812)) ^ 0x3CA09FA0) & (v714 ^ 0x60C20812) ^ (16 * (v714 ^ 0x60C20812)) & 0x63CA09F0;
  v717 = v715 ^ 0x63CA09FA ^ (v716 ^ 0x20800900) & (v715 << 8);
  v718 = v709 ^ (2 * ((v717 << 16) & 0x63CA0000 ^ v717 ^ ((v717 << 16) ^ 0x9FA0000) & (((v716 ^ 0x434A005A) << 8) & 0x63CA0000 ^ 0x21C20000 ^ (((v716 ^ 0x434A005A) << 8) ^ 0x4A090000) & (v716 ^ 0x434A005A))));
  LOBYTE(STACK[0x80C]) = (v680 - 40) ^ (-15 - v680) ^ (((v680 - 40) ^ 0xC8) - 1) ^ (((v680 - 40) ^ 0x3F) + 10) ^ (((v680 - 40) ^ 0xC1) - 8) ^ 0xFD;
  LOBYTE(STACK[0xAD9]) = v693 ^ 0x97;
  v719 = v680 - (((v703 ^ 0x6168754D) + 129003923) ^ ((v703 ^ 0x5C3FEB7) + 1662777961) ^ ((v703 ^ 0x9FD96EB) + 1864733237)) + 162167442;
  v720 = (v719 ^ 0x8D2ADD4B) & (2 * (v719 & 0xA9AADE4C)) ^ v719 & 0xA9AADE4C;
  v721 = ((2 * (v719 ^ 0x8D7E7543)) ^ 0x49A9561E) & (v719 ^ 0x8D7E7543) ^ (2 * (v719 ^ 0x8D7E7543)) & 0x24D4AB0E;
  v722 = v721 ^ 0x2454A901;
  v723 = (v721 ^ 0x800201) & (4 * v720) ^ v720;
  v724 = ((4 * v722) ^ 0x9352AC3C) & v722 ^ (4 * v722) & 0x24D4AB0C;
  v725 = (v724 ^ 0x50A800) & (16 * v723) ^ v723;
  v726 = ((16 * (v724 ^ 0x24840303)) ^ 0x4D4AB0F0) & (v724 ^ 0x24840303) ^ (16 * (v724 ^ 0x24840303)) & 0x24D4AB00;
  v727 = v725 ^ 0x24D4AB0F ^ (v726 ^ 0x440A000) & (v725 << 8);
  v728 = v719 ^ 0xEC001656 ^ (2 * ((v727 << 16) & 0x24D40000 ^ v727 ^ ((v727 << 16) ^ 0x2B0F0000) & (((v726 ^ 0x20940B0F) << 8) & 0x24D40000 ^ 0x20540000 ^ (((v726 ^ 0x20940B0F) << 8) ^ 0x54AB0000) & (v726 ^ 0x20940B0F))));
  v729 = v708 ^ v693;
  v730 = v704 + 1551668393;
  v731 = (v704 + 1551668393) ^ 0xDD7E81F2;
  v732 = ((v704 + 1551668393) ^ 0x5DFF89F2) & (2 * ((v704 + 1551668393) & 0x59FFCDF8)) ^ (v704 + 1551668393) & 0x59FFCDF8;
  v733 = ((2 * v731) ^ 0x9029814) & v731 ^ (2 * v731) & 0x84814C0A;
  v734 = v733 ^ 0x8481440A;
  v735 = (v733 ^ 0x800) & (4 * v732) ^ v732;
  v736 = ((4 * v734) ^ 0x12053028) & v734 ^ (4 * v734) & 0x84814C08;
  v737 = (v736 ^ 0x10002) & (16 * v735) ^ v735;
  v738 = ((16 * (v736 ^ 0x84804C02)) ^ 0x4814C0A0) & (v736 ^ 0x84804C02) ^ (16 * (v736 ^ 0x84804C02)) & 0x84814C00;
  v739 = v737 ^ 0x84814C0A ^ (v738 ^ 0x4000) & (v737 << 8);
  v740 = v730 ^ (2 * ((v739 << 16) & 0x4810000 ^ v739 ^ ((v739 << 16) ^ 0x4C0A0000) & (((v738 ^ 0x84810C0A) << 8) & 0x84810000 ^ 0x4810000 ^ (((v738 ^ 0x84810C0A) << 8) ^ 0x14C0000) & (v738 ^ 0x84810C0A))));
  v741 = v706 ^ v728 ^ v718 ^ 0x49B7A9CF;
  v742 = v694 + (((v679 ^ 0x2F3DD011) + 869535882) ^ ((v679 ^ 0x7C1D1CF2) + 1626659947) ^ ((v679 ^ 0xDA5A64C1) - 961305510));
  v743 = v694 - (((v707 ^ 0xF50B6F9C) - 650649288) ^ ((v707 ^ 0x581A3670) + 1948694748) ^ ((v707 ^ 0x2A0F2702) + 104049066)) - 1807750244;
  v744 = (v743 ^ 0xFF9F7301) & (2 * (v743 & 0xFFDE7A01)) ^ v743 & 0xFFDE7A01;
  v745 = ((2 * (v743 ^ 0x65172301)) ^ 0x3592B200) & (v743 ^ 0x65172301) ^ (2 * (v743 ^ 0x65172301)) & 0x9AC95900;
  v746 = v745 ^ 0x8A494900;
  v747 = (v745 ^ 0x10801000) & (4 * v744) ^ v744;
  v748 = ((4 * v746) ^ 0x6B256400) & v746 ^ (4 * v746) & 0x9AC95900;
  v749 = v747 ^ 0x9AC95900 ^ (v748 ^ 0xA014000) & (16 * v747);
  v750 = (16 * (v748 ^ 0x90C81900)) & 0x9AC95900 ^ 0x12484900 ^ ((16 * (v748 ^ 0x90C81900)) ^ 0xAC959000) & (v748 ^ 0x90C81900);
  v751 = (v749 << 8) & 0x9AC95900 ^ v749 ^ ((v749 << 8) ^ 0xC9590000) & v750;
  v752 = v743 ^ (2 * ((v751 << 16) & 0x1AC90000 ^ v751 ^ ((v751 << 16) ^ 0x59000000) & ((v750 << 8) & 0x1AC90000 ^ 0x12800000 ^ ((v750 << 8) ^ 0xC9590000) & v750))) ^ 0xA23CF3FE;
  v753 = ((v742 + 1593250193) ^ 0xE078F382) & (2 * ((v742 + 1593250193) & 0xF470FB0B)) ^ (v742 + 1593250193) & 0xF470FB0B;
  v754 = ((2 * ((v742 + 1593250193) ^ 0xC0994590)) ^ 0x69D37D36) & ((v742 + 1593250193) ^ 0xC0994590) ^ (2 * ((v742 + 1593250193) ^ 0xC0994590)) & 0x34E9BE9A;
  v755 = v754 ^ 0x14288289;
  v756 = (v754 ^ 0x20C13C10) & (4 * v753) ^ v753;
  v757 = ((4 * v755) ^ 0xD3A6FA6C) & v755 ^ (4 * v755) & 0x34E9BE98;
  v758 = (v757 ^ 0x10A0BA00) & (16 * v756) ^ v756;
  v759 = ((16 * (v757 ^ 0x24490493)) ^ 0x4E9BE9B0) & (v757 ^ 0x24490493) ^ (16 * (v757 ^ 0x24490493)) & 0x34E9BE90;
  v760 = v758 ^ 0x34E9BE9B ^ (v759 ^ 0x489A800) & (v758 << 8);
  v761 = (v742 + 1593250193) ^ v708 ^ (2 * ((v760 << 16) & 0x34E90000 ^ v760 ^ ((v760 << 16) ^ 0x3E9B0000) & (((v759 ^ 0x3060160B) << 8) & 0x34E90000 ^ 0x14410000 ^ (((v759 ^ 0x3060160B) << 8) ^ 0x69BE0000) & (v759 ^ 0x3060160B))));
  LOBYTE(STACK[0x871]) = v761 ^ 0x74;
  v762 = (((v729 ^ 0xA4FE08DA) + 803111020) ^ ((v729 ^ 0x8D8B446) - 2080883464) ^ ((v729 ^ 0xBEB74A42) + 899138292)) - (v742 + 1593250193) - 1262421398;
  v763 = ((v762 ^ 0x55AF08B5) - 390888272) ^ v762 ^ ((v762 ^ 0x1F873E1) - 1125842948) ^ ((v762 ^ 0x6B4BB70E) - 698926315) ^ ((v762 ^ 0x7DFFBFBF) - 1058851930);
  LOBYTE(v760) = ((v762 ^ 0xB5) - 80) ^ v762 ^ ((v762 ^ 0xE1) - 4) ^ ((v762 ^ 0xE) + 21) ^ ((v762 ^ 0xBF) - 90) ^ 0x99;
  LOBYTE(STACK[0x9AF]) = v706 ^ v728 ^ 5;
  v764 = v752 ^ v761;
  v765 = (((v718 ^ 0xF81A91E4) + 1314047957) ^ ((v718 ^ 0xFA2D283F) + 1281719824) ^ ((v718 ^ a14) - 673069218)) + 1560731014;
  v766 = (v765 ^ 0xC8D3E9B0) & (2 * (v765 & 0xECD3C931)) ^ v765 & 0xECD3C931;
  v767 = ((2 * (v765 ^ 0x50D67B92)) ^ 0x780B6546) & (v765 ^ 0x50D67B92) ^ (2 * (v765 ^ 0x50D67B92)) & 0xBC05B2A2;
  v768 = v767 ^ 0x840492A1;
  v769 = (v767 ^ 0x30012000) & (4 * v766) ^ v766;
  v770 = ((4 * v768) ^ 0xF016CA8C) & v768 ^ (4 * v768) & 0xBC05B2A0;
  v771 = (v770 ^ 0xB0048280) & (16 * v769) ^ v769;
  v772 = ((16 * (v770 ^ 0xC013023)) ^ 0xC05B2A30) & (v770 ^ 0xC013023) ^ (16 * (v770 ^ 0xC013023)) & 0xBC05B2A0;
  v773 = v771 ^ 0xBC05B2A3 ^ (v772 ^ 0x80012200) & (v771 << 8);
  v774 = v765 ^ (2 * ((v773 << 16) & 0x3C050000 ^ v773 ^ ((v773 << 16) ^ 0x32A30000) & (((v772 ^ 0x3C049083) << 8) & 0x3C050000 ^ 0x38050000 ^ (((v772 ^ 0x3C049083) << 8) ^ 0x5B20000) & (v772 ^ 0x3C049083))));
  v775 = v774 ^ 0x47813A32;
  LOBYTE(STACK[0x856]) = v706 ^ 1;
  v776 = STACK[0x5A0];
  *(v776 + ((v740 ^ 0xF62840B5) & 0x2AA ^ 0xE7B7EE1C81F07AB3 ^ ((v740 ^ 0xF62840B5) & 0x2AA ^ 0xE7B7EE1C81F07819) & ((v740 ^ 0xF62840B5) & 0x2AA ^ 0xF7BFEE5FC5F4785DLL))) = v764 ^ 0x8B;
  LOBYTE(STACK[0x8BB]) = v763 ^ 0x16;
  v777 = (((v774 ^ 0x47813A32 ^ v740 ^ 0xF62840B5 ^ 0x63547A6B) - 1666480747) ^ ((v774 ^ 0x47813A32 ^ v740 ^ 0xF62840B5 ^ 0xEBBD1559) + 339929767) ^ ((v774 ^ 0x47813A32 ^ v740 ^ 0xF62840B5 ^ 0x9567EC2E) + 1788351442)) + 850597119;
  v778 = ((v777 ^ 0x1E52767F) - 1139624169) ^ v777 ^ ((v777 ^ 0x9414A6C1) + 911501225) ^ ((v777 ^ 0xA00401F7) + 38060191) ^ ((v777 ^ 0x77FDEFDF) - 709022025);
  v779 = v778 ^ 0x36A9F12C;
  v780 = v718 ^ 0x49B7A9CF ^ v728;
  v781 = (((v742 - 1564572061) ^ 0xFF437808) + 396529182) ^ (v742 - 1564572061) ^ (((v742 - 1564572061) ^ 0x782A7F9C) - 1865709174) ^ (((v742 - 1564572061) ^ 0x7DC8F18D) - 1792473191) ^ (((v742 - 1564572061) ^ a13) + 90048999);
  LOBYTE(v717) = v740 ^ 0xD8;
  v782 = v764 ^ v763 ^ 0x6380E699;
  LOBYTE(STACK[0x762]) = v781 ^ 0x19;
  v783 = (((v763 ^ 0x4BDF0EF6) - 677374063) ^ ((v763 ^ 0x4916F4BF) - 714478118) ^ ((v763 ^ 0x402A89AC) - 598372149)) - 2027722247;
  v784 = (v783 ^ 0x39F1489D) & (2 * (v783 & 0xB9F150C1)) ^ v783 & 0xB9F150C1;
  v785 = ((2 * (v783 ^ 0x4A91489F)) ^ 0xE6C030BC) & (v783 ^ 0x4A91489F) ^ (2 * (v783 ^ 0x4A91489F)) & 0xF360185E;
  v786 = v785 ^ 0x11200842;
  v787 = (v785 ^ 0xE240000C) & (4 * v784) ^ v784;
  v788 = ((4 * v786) ^ 0xCD806178) & v786 ^ (4 * v786) & 0xF360185C;
  v789 = (v788 ^ 0xC1000050) & (16 * v787) ^ v787;
  v790 = ((16 * (v788 ^ 0x32601806)) ^ 0x360185E0) & (v788 ^ 0x32601806) ^ (16 * (v788 ^ 0x32601806)) & 0xF3601850;
  v791 = v789 ^ 0xF360185E ^ (v790 ^ 0x32000000) & (v789 << 8);
  v792 = v783 ^ (2 * ((v791 << 16) & 0x73600000 ^ v791 ^ ((v791 << 16) ^ 0x185E0000) & (((v790 ^ 0xC160181E) << 8) & 0x73600000 ^ 0x13600000 ^ (((v790 ^ 0xC160181E) << 8) ^ 0x60180000) & (v790 ^ 0xC160181E))));
  LOBYTE(STACK[0x747]) = v717;
  LOBYTE(v717) = v752 ^ v760;
  v793 = (((v741 ^ 0x646434B8) - 760115584) ^ ((v741 ^ 0x17806350) - 1588209256) ^ ((v741 ^ 0xB2B7B7A0) + 73534824)) - (((v778 ^ 0xF99EF319) + 818478539) ^ ((v778 ^ 0x77892C45) - 1092672873) ^ ((v778 ^ 0xD3A8E1CA) + 452914970));
  LOBYTE(STACK[0x8A0]) = v718 ^ 0x82;
  v794 = (((v792 ^ v781 ^ 0x2D8DEAF9) - 21135954) ^ ((v792 ^ v781 ^ 0xFCDC95AA) + 803996415) ^ ((v792 ^ v781 ^ 0xB9FE16C4) + 1791918481)) + 1961742964;
  v795 = ((v794 ^ 0x5AF1ED7C) - 601460887) ^ v794 ^ ((v794 ^ 0xE847555) - 2007763134) ^ ((v794 ^ 0x13A612B5) - 1787719518) ^ ((v794 ^ 0x3EFBF777) - 1205045916);
  LOBYTE(v794) = ((v794 ^ 0x7C) + 105) ^ v794 ^ ((v794 ^ 0x55) + 66) ^ ((v794 ^ 0xB5) - 94) ^ ((v794 ^ 0x77) + 100) ^ 0x2D;
  v796 = v778 ^ 0x36A9F12C ^ v780;
  LOBYTE(STACK[0x9F9]) = v780 ^ 0x47;
  LOBYTE(STACK[0xA14]) = v717 ^ 0x7E;
  LOBYTE(STACK[0x791]) = (((v793 - 93) ^ 7) + 22) ^ (v793 - 93) ^ (((v793 - 93) ^ 0xA1) - 76) ^ (((v793 - 93) ^ 0xF0) - 29) ^ (((v793 - 93) ^ 0xBB) - 86) ^ 0xD9;
  LOBYTE(STACK[0x8EA]) = v778 ^ 0xA2;
  v797 = (((v782 ^ 0x2E3E751F) - 1081962519) ^ ((v782 ^ 0xBFA3755F) + 773820329) ^ ((v782 ^ 0x58702744) - 909320780)) - (((v795 ^ 0x61DC2D98) - 1076468149) ^ ((v795 ^ 0xD889E60E) + 109293021) ^ ((v795 ^ 0xC07DB67D) + 511180208));
  LOBYTE(v782) = (((v782 ^ 0x1F) - 23) ^ ((v782 ^ 0x5F) - 87) ^ ((v782 ^ 0x44) - 76)) - (((v795 ^ 0x98) + 75) ^ ((v795 ^ 0xE) - 35) ^ ((v795 ^ 0x7D) - 80)) - 16;
  LOBYTE(STACK[0x7AC]) = ((v782 ^ 0x79) + 45) ^ v782 ^ ((v782 ^ 0x3A) + 112) ^ ((v782 ^ 0x36) + 100) ^ ((v782 ^ 0xDF) - 117) ^ 0x59;
  LOBYTE(STACK[0x905]) = v795 ^ 0x18;
  v798 = (v793 + 151821349) ^ v774 ^ 0x47813A32 ^ (((v793 + 151821349) ^ 0x309E829A) - 1404169024) ^ (((v793 + 151821349) ^ 0xBED8E421) + 570978821) ^ (((v793 + 151821349) ^ 0x11D4D0DC) - 1929099526) ^ (((v793 + 151821349) ^ 0xFCBDDFBD) + 1617775001);
  LOBYTE(STACK[0xA43]) = v774 ^ 0x3F;
  v799 = v796 ^ v798;
  LOBYTE(v774) = v792 ^ 0xED;
  LOBYTE(STACK[0xA5E]) = v792 ^ 0xF2;
  v800 = (v797 - 2121326033) ^ v792 ^ 0x224C03ED ^ (((v797 - 2121326033) ^ 0xDF9142DF) - 1976905611) ^ (((v797 - 2121326033) ^ 0x5605702B) + 62841473) ^ (((v797 - 2121326033) ^ 0x5E2F305F) + 194290421) ^ (((v797 - 2121326033) ^ 0x7DFF6FFF) + 675609941);
  v801 = (((v792 & 0x29E509BC ^ 0x6C2B806C) - 110211913) ^ ((v792 & 0x29E509BC ^ 0x877F0C7D) + 305840296) ^ ((v792 & 0x29E509BC ^ 0xC3F08CAD) + 1454719096)) + (((v792 & 0x29E509BC ^ 0x59D24655) + 1609085365) ^ ((v792 & 0x29E509BC ^ 0x46FFBE11) + 1086671345) ^ ((v792 & 0x29E509BC ^ 0x1E6CF144) + 408290982)) + 1585940196;
  v802 = (v801 ^ 0xDF982992) & (2 * (v801 & 0xDC1AADD3)) ^ v801 & 0xDC1AADD3;
  v803 = ((2 * (v801 ^ 0x5F9C7A96)) ^ 0x70DAE8A) & (v801 ^ 0x5F9C7A96) ^ (2 * (v801 ^ 0x5F9C7A96)) & 0x8386D744;
  v804 = v803 ^ 0x80825145;
  v805 = (v803 ^ 0x48601) & (4 * v802) ^ v802;
  v806 = ((4 * v804) ^ 0xE1B5D14) & v804 ^ (4 * v804) & 0x8386D744;
  v807 = (v806 ^ 0x2025500) & (16 * v805) ^ v805;
  v808 = ((16 * (v806 ^ 0x81848241)) ^ 0x386D7450) & (v806 ^ 0x81848241) ^ (16 * (v806 ^ 0x81848241)) & 0x8386D740;
  v809 = v807 ^ 0x8386D745 ^ (v808 ^ 0x45400) & (v807 << 8);
  v810 = v801 ^ (2 * ((v809 << 16) & 0x3860000 ^ v809 ^ ((v809 << 16) ^ 0x57450000) & (((v808 ^ 0x83828305) << 8) & 0x3860000 ^ (((v808 ^ 0x83828305) << 8) ^ 0x6D70000) & (v808 ^ 0x83828305) ^ 0x1000000)));
  LOBYTE(v717) = v794 ^ v717 ^ v800;
  v811 = v779 ^ v775;
  v812 = (((v798 ^ 0x24C1C00C) + 783745666) ^ ((v798 ^ 0x6403D22) + 204930992) ^ ((v798 ^ 0x5E052BCD) + 1416882497)) + 783469501;
  v813 = (v812 ^ 0x21DC09AF) & (2 * (v812 & 0xB1DC41AE)) ^ v812 & 0xB1DC41AE;
  v814 = ((2 * (v812 ^ 0x60EC0AF3)) ^ 0xA26096BA) & (v812 ^ 0x60EC0AF3) ^ (2 * (v812 ^ 0x60EC0AF3)) & 0xD1304B5C;
  v815 = v814 ^ 0x51104945;
  v816 = (v814 ^ 0x80200218) & (4 * v813) ^ v813;
  v817 = ((4 * v815) ^ 0x44C12D74) & v815 ^ (4 * v815) & 0xD1304B5C;
  v818 = (v817 ^ 0x40000949) & (16 * v816) ^ v816;
  v819 = ((16 * (v817 ^ 0x91304209)) ^ 0x1304B5D0) & (v817 ^ 0x91304209) ^ (16 * (v817 ^ 0x91304209)) & 0xD1304B50;
  v820 = v818 ^ 0xD1304B5D ^ (v819 ^ 0x11000100) & (v818 << 8);
  v821 = v812 ^ (2 * ((v820 << 16) & 0x51300000 ^ v820 ^ ((v820 << 16) ^ 0x4B5D0000) & (((v819 ^ 0xC0304A0D) << 8) & 0x51300000 ^ 0x41300000 ^ (((v819 ^ 0xC0304A0D) << 8) ^ 0x304B0000) & (v819 ^ 0xC0304A0D))));
  LOBYTE(v794) = v794 ^ v774;
  LOBYTE(STACK[0xAA8]) = v794 ^ 0xD9;
  v822 = (((v800 ^ 0x5B478F2) + 359371000) ^ ((v800 ^ 0x9F0994E5) - 1881768735) ^ ((v800 ^ 0xC1F4CBAF) - 785701973)) + 1644101576;
  v823 = ((v822 ^ 0x6E1546BA) - 939649814) ^ v822 ^ ((v822 ^ a12) + 1252773042) ^ ((v822 ^ 0x74B68A0A) - 581052326) ^ ((v822 ^ 0xAFF7FFFE) + 102542766);
  v824 = v793 - (((v810 ^ 0x698C7711) - 852800179) ^ ((v810 ^ 0xBCBF3ECA) + 404227224) ^ ((v810 ^ 0x709EDFB7) - 734403093));
  LOBYTE(v797) = (((v797 - 90) ^ 0x41) - 21) ^ (v797 - 90) ^ (v797 + 82) ^ (((v797 - 90) ^ 0xEA) + 66) ^ (-82 - v797);
  v825 = (((v811 ^ 0x13D87DD8) + 1434981074) ^ ((v811 ^ 0xD2EE3CC9) - 1799466047) ^ ((v811 ^ 0xB58B3192) - 203727204)) + 712509720 + (((v799 ^ 0x7E62307E) - 51087030) ^ ((v799 ^ 0xC99DDE8F) + 1259050937) ^ ((v799 ^ 0xD0298DDB) + 1388299501));
  LOBYTE(STACK[0x7DB]) = v799 ^ 0x1E;
  LOBYTE(v819) = 2 * (v824 + 99);
  LOBYTE(v810) = (v819 & 0xA0 ^ 0xD0) & (v824 + 99);
  LOBYTE(v800) = (v824 + 99) ^ (2 * (((4 * ((v819 ^ 0x2A) & ((v824 + 99) ^ 0xD1))) ^ 0x10) & ((v819 ^ 0x2A) & ((v824 + 99) ^ 0xD1) ^ 0x80) & (16 * ((v819 ^ 0x2A) & ((v824 + 99) ^ 0xD1) & (4 * v810) ^ v810)) ^ (v819 ^ 0x2A) & ((v824 + 99) ^ 0xD1) & (4 * v810) ^ v810));
  LOBYTE(v800) = (((v800 ^ 0xA3) + 19) ^ ((v800 ^ 0x19) - 87) ^ ((v800 ^ 0x6A) - 36)) + 7;
  LOBYTE(v819) = v800 & 0x67 ^ 0xC3;
  LOBYTE(STACK[0x840]) = v823 ^ 0x5F;
  LOBYTE(STACK[0x934]) = v800 ^ (2 * ((v800 ^ 0x60) & (2 * ((v800 ^ 0x60) & (2 * ((v800 ^ 0x60) & (2 * ((v800 ^ 0x60) & (2 * (v800 & (2 * (((2 * v800) & 0x42 ^ 6) & v800 ^ v819)) ^ v819)) ^ v819)) ^ v819)) ^ v819)) ^ v819)) ^ 0x53;
  v826 = (((v824 + 644258013) ^ 0xECEB17B3) + 1818907181) ^ (v824 + 644258013) ^ (((v824 + 644258013) ^ 0x93666ED0) + 333917008) ^ (((v824 + 644258013) ^ 0xFF1D38F8) + 2140962152) ^ (((v824 + 644258013) ^ 0xFFEEFBFB) + 2138029669);
  LOBYTE(STACK[0xA8D]) = v811 ^ 0xB7;
  LOBYTE(STACK[0x7F6]) = v717;
  v827 = ((v826 ^ v811 ^ 0xEC9803BB) + 750564030) ^ ((v826 ^ v811 ^ 0x6F4E5F7E) - 1351946631) ^ ((v826 ^ v811 ^ 0x88159626) + 1211180833);
  v828 = ((v826 ^ 0xF4412884) - 1549011578) ^ ((v826 ^ 0xA910C7E4) - 17163546) ^ ((v826 ^ 0xF544CD9E) - 1565650784);
  LOBYTE(v826) = (v794 ^ 0x2A) + 97 + (((v717 ^ 0x1C) + 3) ^ ((v717 ^ 0x99) - 120) ^ ((v717 ^ 0x76) + 105));
  LOBYTE(STACK[0x94F]) = v797 ^ 0xA7;
  v829 = (v825 ^ 0x38528C3F) & (2 * (v825 & 0xBD5AAD3F)) ^ v825 & 0xBD5AAD3F;
  v830 = ((2 * (v825 ^ 0x1A478E43)) ^ 0x4E3A46F8) & (v825 ^ 0x1A478E43) ^ (2 * (v825 ^ 0x1A478E43)) & 0xA71D237C;
  v831 = v830 ^ 0xA1052104;
  v832 = (v830 ^ 0x6180078) & (4 * v829) ^ v829;
  v833 = ((4 * v831) ^ 0x9C748DF0) & v831 ^ (4 * v831) & 0xA71D237C;
  v834 = (v833 ^ 0x84140170) & (16 * v832) ^ v832;
  v835 = ((16 * (v833 ^ 0x2309220C)) ^ 0x71D237C0) & (v833 ^ 0x2309220C) ^ (16 * (v833 ^ 0x2309220C)) & 0xA71D2370;
  v836 = v834 ^ 0xA71D237C ^ (v835 ^ 0x21102300) & (v834 << 8);
  v837 = v825 ^ (2 * ((v836 << 16) & 0x271D0000 ^ v836 ^ ((v836 << 16) ^ 0x237C0000) & (((v835 ^ 0x860D003C) << 8) & 0x271D0000 ^ 0x221C0000 ^ (((v835 ^ 0x860D003C) << 8) ^ 0x1D230000) & (v835 ^ 0x860D003C)))) ^ v821;
  LOBYTE(STACK[0x825]) = v821 ^ 0x20;
  v838 = (((v837 ^ 0xD6F2CC47) - 209733272) ^ ((v837 ^ 0x99F183D9) - 1132660998) ^ ((v837 ^ 0x6BC7734D) + 1313474158)) - v828;
  v839 = ((v827 + 2000726746) ^ 0xB2500CC2) & (2 * ((v827 + 2000726746) & 0xA25AAEC8)) ^ (v827 + 2000726746) & 0xA25AAEC8;
  v840 = ((2 * ((v827 + 2000726746) ^ 0xB6414452)) ^ 0x2837D534) & ((v827 + 2000726746) ^ 0xB6414452) ^ (2 * ((v827 + 2000726746) ^ 0xB6414452)) & 0x141BEA9A;
  v841 = v840 ^ 0x14082A8A;
  v842 = (v840 ^ 0x13C000) & (4 * v839) ^ v839;
  v843 = ((4 * v841) ^ 0x506FAA68) & v841 ^ (4 * v841) & 0x141BEA98;
  v844 = (v843 ^ 0x100BAA00) & (16 * v842) ^ v842;
  v845 = ((16 * (v843 ^ 0x4104092)) ^ 0x41BEA9A0) & (v843 ^ 0x4104092) ^ (16 * (v843 ^ 0x4104092)) & 0x141BEA90;
  v846 = v844 ^ 0x141BEA9A ^ (v845 ^ 0x1AA800) & (v844 << 8);
  v847 = (v827 + 2000726746) ^ (2 * ((v846 << 16) & 0x141B0000 ^ v846 ^ ((v846 << 16) ^ 0x6A9A0000) & (((v845 ^ 0x1401421A) << 8) & 0x141B0000 ^ 0x4110000 ^ (((v845 ^ 0x1401421A) << 8) ^ 0x1BEA0000) & (v845 ^ 0x1401421A))));
  v848 = v825 - 324110962 + (((v847 ^ 0xE60D65D6) + 1490408862) ^ ((v847 ^ 0xA9BB4C33) + 392428665) ^ ((v847 ^ 0xC5EF5219) + 2067259987));
  v849 = ((v848 ^ 0xFACD2987) + 1726431872) ^ v848 ^ ((v848 ^ 0x1288D24D) - 1901938250) ^ ((v848 ^ 0xF47D1032) + 1750563787) ^ ((v848 ^ 0x7FED7FFF) - 473492472);
  LOBYTE(v845) = (2 * (v826 & 0xB1)) & (v826 ^ 0x94) ^ v826 & 0xB1 ^ (2 * (v826 & 0xB1)) & 0x20;
  LOBYTE(v846) = ((2 * (v826 ^ 0x94)) ^ 0x4A) & (v826 ^ 0x94) ^ (2 * (v826 ^ 0x94)) & 0x24;
  LOBYTE(v768) = v823 ^ v826 ^ (2 * ((((4 * (v846 ^ 0x25)) ^ 0x94) & (v846 ^ 0x25) ^ (4 * (v846 ^ 0x25)) & 0x24) & (16 * ((v846 ^ 1) & (4 * v845) ^ v845)) ^ (v846 ^ 1) & (4 * v845) ^ v845 ^ 0x25));
  LOBYTE(v786) = ((v797 ^ v794 ^ 0xB) + 70) ^ ((v797 ^ v794 ^ 0x81) - 48) ^ ((v797 ^ v794 ^ 0xF4) - 69);
  LOBYTE(v841) = (((v823 & 0xB6 ^ 0x66) + 60) ^ ((v823 & 0xB6 ^ 0x5A) + 8) ^ ((v823 & 0xB6 ^ 0x98) - 58)) + (((v823 & 0xB6 ^ 0x42) - 99) ^ ((v823 & 0xB6 ^ 0xF2) + 45) ^ ((v823 & 0xB6 ^ 0xA2) + 125)) + v828 + v827 + 123;
  v850 = (((v823 & 0x60C09B6 ^ 0x9D8F9766) - 1051580356) ^ ((v823 & 0x60C09B6 ^ 0x3727CD5A) + 1811575304) ^ ((v823 & 0x60C09B6 ^ 0xACAC5398) - 260969274)) + (((v823 & 0x60C09B6 ^ 0xA5F2E842) + 1338271901) ^ ((v823 & 0x60C09B6 ^ 0xE658F3F2) + 208565037) ^ ((v823 & 0x60C09B6 ^ 0x43A21BA2) - 1449878659)) + v828 + v827 + 135730413;
  LOBYTE(v797) = ((v797 ^ 0x23) + 23) ^ ((v797 ^ 0x85) - 79) ^ ((v797 ^ 0x6C) + 90);
  LOBYTE(v794) = (((v768 ^ 0xD4) + 45) ^ ((v768 ^ 0x3B) - 60) ^ ((v768 ^ 0xB8) + 65)) - v797 - 68;
  LOBYTE(v794) = ((v794 ^ 0x4B) - 39) ^ v794 ^ ((v794 ^ 0xE5) + 119) ^ ((v794 ^ 0x35) - 89) ^ ((v794 ^ 0xF7) + 101);
  LOBYTE(v797) = (((v797 + 17 + v786) ^ 0xD1) + 109) ^ (v797 + 17 + v786) ^ (((v797 + 17 + v786) ^ 0x7F) - 61) ^ (((v797 + 17 + v786) ^ 0x12) - 80) ^ (((v797 + 17 + v786) ^ 0xFE) + 68);
  LOBYTE(v827) = (((v786 + 87) ^ 0x14) - 20) ^ (v786 + 87) ^ (((v786 + 87) ^ 0xE0) + 32) ^ (((v786 + 87) ^ 0x3B) - 59) ^ (((v786 + 87) ^ 0xCF) + 49);
  LOBYTE(STACK[0x731]) = v797 ^ 0xB1;
  LOBYTE(v768) = (v841 ^ 0x9A) & (2 * (v841 & 0xD8)) ^ v841 & 0xD8;
  LOBYTE(v786) = ((2 * (v841 ^ 0x1A)) ^ 0x84) & (v841 ^ 0x1A) ^ (2 * (v841 ^ 0x1A)) & 0xC2;
  LOBYTE(v841) = v841 ^ (2 * ((16 * (v768 ^ 0xC2 ^ v786 & (4 * v768))) & 0x40 ^ v768 ^ 0xC2 ^ v786 & (4 * v768) ^ ((16 * (v768 ^ 0xC2 ^ v786 & (4 * v768))) ^ 0x20) & (((4 * v786) ^ 8) & (v786 ^ 0x82) ^ 0x42)));
  LOBYTE(v841) = ((v841 ^ 0x3E) + 16) ^ ((v841 ^ 0x5D) + 109) ^ ((v841 ^ 0x3F) + 15);
  LOBYTE(v786) = v841 + 36;
  v851 = v841 & 2;
  v852 = v851 >> 1;
  LOBYTE(v851) = v851 | 0x65;
  LOBYTE(STACK[0x97E]) = v849 ^ 0x33;
  v853 = ((v850 ^ 0x8DEC6C3F) + 1831944593) ^ v850 ^ ((v850 ^ 0xAE6E3B33) + 1320359581) ^ ((v850 ^ 0x83DD78B7) + 1660966169) ^ ((v850 ^ 0xBF7DFDEB) + 1604374597) ^ v849;
  LOBYTE(STACK[0xAD7]) = v786 ^ (2 * ((v786 ^ 0x38) & (2 * ((v786 ^ 0x38) & (2 * ((v786 ^ 0x38) & (2 * ((v786 ^ 0x38) & (2 * ((v786 ^ 0x38) & (2 * (((4 * (v852 & 1)) | 0x3A) & (v786 ^ 0x38) ^ v851)) ^ v851)) ^ v851)) ^ v851)) ^ v851)) ^ v851)) ^ 0x36;
  LOBYTE(v826) = v826 + 127 + (((v827 ^ 0x30) + 88) ^ ((v827 ^ 0xD7) - 79) ^ ((v827 ^ 0xE7) - 127));
  LOBYTE(v819) = (v826 ^ 0x83) & (2 * (v826 & 0xCA)) ^ v826 & 0xCA;
  LOBYTE(v800) = ((2 * (v826 ^ 0x93)) ^ 0xB2) & (v826 ^ 0x93) ^ (2 * (v826 ^ 0x93)) & 0x58;
  LOBYTE(v800) = v826 ^ (2 * ((v800 ^ 0x10) & (4 * v819) ^ v819 ^ 0x59 ^ (((4 * (v800 ^ 0x49)) ^ 0x64) & (v800 ^ 0x49) ^ (4 * (v800 ^ 0x49)) & 0x58 ^ 0x40) & (16 * ((v800 ^ 0x10) & (4 * v819) ^ v819))));
  LOBYTE(STACK[0x88A]) = v827 ^ 0xF3;
  LOBYTE(STACK[0x999]) = v800 ^ 0x8B;
  v854 = v853 ^ v847;
  LOBYTE(STACK[0x86F]) = v847 ^ 0xC8;
  v855 = ((v849 ^ 0x3DBD6DD2) - 1910648105) ^ ((v849 ^ 0x5A5D6711) - 369240042) ^ ((v849 ^ 0x2BBF4A38) - 1742736067);
  v856 = ((v853 ^ v847 ^ 0x3C657331) & 0xF9F3F64A ^ 0xC8C347BE) & ((v853 ^ v847) & 0xF9F3F64A ^ 0xB8E313F6) ^ (v853 ^ v847 ^ 0x3C657331) & 0xB1B2D002;
  LOBYTE(v828) = ((((v855 + 29) ^ a11) + 25) ^ (v855 + 29) ^ (((v855 + 29) ^ 0x42) - 82) ^ (((v855 + 29) ^ 0x5A) - 74) ^ (-13 - v855)) & 0xEE;
  v857 = ((v856 ^ 0xE34F969C) - 1153410324) ^ ((v856 ^ 0xF18CB04E) - 1451000774) ^ ((v856 ^ 0x6BB2912E) + 868048218);
  LOBYTE(v846) = ((v838 + 41) ^ 0xD2) & (2 * ((v838 + 41) & 0xE3)) ^ (v838 + 41) & 0xE3;
  LOBYTE(v856) = ((2 * ((v838 + 41) ^ 0xD4)) ^ 0x6E) & ((v838 + 41) ^ 0xD4) ^ (2 * ((v838 + 41) ^ 0xD4)) & 0x36;
  LOBYTE(v659) = v856 ^ 0x11;
  LOBYTE(v856) = v846 ^ 0x37 ^ (v856 ^ 5) & (4 * v846);
  LOBYTE(v659) = (16 * v856) & 0x30 ^ v856 ^ ((16 * v856) ^ 0x70) & ((4 * v659) & 0x30 ^ ((4 * v659) ^ 0xD0) & v659 ^ 0x20);
  LOBYTE(v846) = v800 ^ v797;
  LOBYTE(v856) = v800 ^ v797 ^ v827;
  LOBYTE(v827) = (v838 + 41) ^ (2 * v659) ^ 0xD9;
  v858 = v838 - (((v853 ^ 0xC24877B0) + 1089844427) ^ ((v853 ^ 0x9F27FA80) + 496646651) ^ ((v853 ^ 0x2198CB67) - 1557854178)) + (((v853 ^ 0xE8CAE713) + 1786193002) ^ ((v853 ^ 0x23E691A9) - 1587850540) ^ ((v853 ^ 0xB7DB30ED) + 895939480)) + 1860297844 + v857;
  v859 = ((v858 ^ 0x710C66A0) + 91109730) ^ v858 ^ ((v858 ^ 0x1FFF834F) + 1805507727) ^ ((v858 ^ 0x9A91BA6C) - 286005842) ^ ((v858 ^ 0x7FFFFFBD) + 194879613);
  v860 = (((v854 ^ 0x6BDE0F6F) - 1471904862) ^ ((v854 ^ 0xEDF078C4) + 778761227) ^ ((v854 ^ 0x70804A00) - 1290090801)) - (((v849 ^ 0xCE1F6692) - 1125465909) ^ ((v849 ^ 0x9D5C8B07) - 274125472) ^ ((v849 ^ 0x1C2ACDAB) + 1860135924)) + 369150833;
  v861 = ((v860 ^ 0x3B48FBD2) - 919604642) ^ v860 ^ ((v860 ^ 0x123D351D) - 530957165) ^ ((v860 ^ 0x4B12C640) - 1183461424) ^ ((v860 ^ 0x6FFFFEFF) - 1650919567);
  LOBYTE(STACK[0x9C8]) = v827;
  LOBYTE(v827) = (((v856 ^ 0x74) - 81) ^ ((v856 ^ 0xBB) + 98) ^ ((v856 ^ 0xF5) + 48)) - (((v800 ^ 0xA3) - 61) ^ ((v800 ^ 0x68) + 10) ^ ((v800 ^ 0x8A) - 20));
  LOBYTE(v856) = v827 + 4;
  LOBYTE(v854) = ((v827 + 4) ^ 0xBE) & (2 * ((v827 + 4) & 0x3C)) ^ (v827 + 4) & 0x3C;
  LOBYTE(v851) = ((2 * (v827 + 4)) ^ 0x74) & (v827 + 4) ^ (2 * (v827 + 4)) & 0xBA;
  LOBYTE(v786) = (v851 ^ 0x3A) & (4 * v854) ^ v854;
  LOBYTE(STACK[0x9E3]) = v794 ^ 0x9F;
  v862 = (((v853 ^ 0xC228D5C6) + 1083512509) ^ ((v853 ^ 0xEC49274E) + 1861542965) ^ ((v853 ^ 0x5296B4DF) - 802457690)) - (((v861 ^ 0x227E6731) + 415694777) ^ ((v861 ^ 0x17F9BDF6) + 759244160) ^ ((v861 ^ a10) + 44545087)) + 950776363;
  LOBYTE(STACK[0xA2D]) = (v827 + 4) ^ (2 * (((4 * v851) ^ 0xE0) & v851 & (16 * v786) ^ v786)) ^ 0xCF;
  LOBYTE(STACK[0x77B]) = v800 ^ 0x77;
  LOBYTE(STACK[0x760]) = v849 ^ 0xCF;
  LOBYTE(STACK[0x7C5]) = v794 ^ 0x9F;
  LOBYTE(v827) = (((v800 ^ 0xE3) - 31) ^ ((v800 ^ 4) + 8) ^ ((v800 ^ 0x63) + 97)) - v827;
  LOBYTE(v860) = v827 + 4;
  LOBYTE(v849) = ((v853 ^ 0x24) - 126) ^ ((v853 ^ 0xD4) + 114) ^ ((v853 ^ 0xA7) + 3);
  LOBYTE(v853) = v849 + 113;
  LOBYTE(v849) = ((v849 - 15) & 0x8A | 0x51) ^ (v849 + 113) & 0xA6;
  LOBYTE(STACK[0x8B9]) = v853 ^ (2 * ((v853 ^ 0xA) & (2 * ((v853 ^ 0xA) & (2 * ((v853 ^ 0xA) & (2 * ((v853 ^ 0xA) & (2 * ((v853 ^ 0xA) & (2 * ((v853 ^ 0xA) & (2 * v849) ^ v849)) ^ v849)) ^ v849)) ^ v849)) ^ v849)) ^ v849)) ^ 0x18;
  LOBYTE(v849) = (((v846 ^ 0xBB) - 6) ^ ((v846 ^ 0x1D) + 96) ^ ((v846 ^ 0x9C) - 33)) + (((v828 ^ 0x95) + 84) ^ ((v828 ^ 0xBB) + 126) ^ ((v828 ^ 0x2E) - 23)) + (((v828 ^ 8) + 9) ^ ((v828 ^ 0xD9) - 38) ^ ((v828 ^ 0x3F) + 64)) - 51;
  LOBYTE(STACK[0xA12]) = v861 ^ 0x44;
  v863 = (v862 ^ 0x6DBC790F) & (2 * (v862 & 0x8DB87D8F)) ^ v862 & 0x8DB87D8F;
  v864 = ((2 * (v862 ^ 0x678C6805)) ^ 0xD4682B14) & (v862 ^ 0x678C6805) ^ (2 * (v862 ^ 0x678C6805)) & 0xEA34158A;
  v865 = v864 ^ 0x2A14148A;
  v866 = (v864 ^ 0x40200000) & (4 * v863) ^ v863;
  v867 = ((4 * v865) ^ 0xA8D05628) & v865 ^ (4 * v865) & 0xEA341588;
  v868 = v866 ^ 0xEA34158A ^ (v867 ^ 0xA8101400) & (16 * v866);
  v869 = (16 * (v867 ^ 0x42240182)) & 0xEA341580 ^ 0x4834050A ^ ((16 * (v867 ^ 0x42240182)) ^ 0xA34158A0) & (v867 ^ 0x42240182);
  v870 = (v868 << 8) & 0xEA341500 ^ v868 ^ ((v868 << 8) ^ 0x34158A00) & v869;
  v871 = v862 ^ v859 ^ (2 * ((v870 << 16) & 0x6A340000 ^ v870 ^ ((v870 << 16) ^ 0x158A0000) & ((v869 << 8) & 0x6A340000 ^ 0x4A200000 ^ ((v869 << 8) ^ 0x34150000) & v869)));
  LOBYTE(STACK[0x8D4]) = ((v849 ^ 0x9C) - 96) ^ v849 ^ ((v849 ^ 0x88) - 116) ^ ((v849 ^ 0x15) + 23) ^ ((v849 ^ 0xFD) - 1) ^ 0xF;
  LOBYTE(v870) = v849 - v856;
  v872 = v855 - (((v861 ^ 0x20FB34E) + 951528392) ^ ((v861 ^ 0x74784D82) + 1321260300) ^ ((v861 ^ 0x7BEF08BC) + 1096257590)) + 1679886469;
  LOBYTE(STACK[0x7AA]) = v861 & 0xC0 ^ (v861 ^ 0x6F) & 0x45 ^ (v861 ^ 0x6F) & (v861 ^ 5) & 0xC7 ^ v859 ^ 0x4A;
  v873 = v862 - v872;
  v874 = v862 - v872 + 1449893955 + (((v871 ^ 0x9363141C) - 560806435) ^ ((v871 ^ 0x712EEFE2) + 1021263395) ^ ((v871 ^ 0x70280D5B) + 1037687964));
  v875 = ((v874 ^ 0xDF831C4C) + 1530549053) ^ v874 ^ ((v874 ^ 0x775B236E) - 203264993) ^ ((v874 ^ 0x2C607056) - 1462157529) ^ ((v874 ^ 0xFFFEFFFB) + 2068295820);
  LOBYTE(v871) = (v870 ^ 0x8E) & (2 * (v870 & 0xC8)) ^ v870 & 0xC8;
  LOBYTE(v874) = ((2 * (v870 ^ 0x8E)) ^ 0x8C) & (v870 ^ 0x8E) ^ (2 * (v870 ^ 0x8E)) & 0x46;
  LOBYTE(v828) = v870 ^ v794 ^ (2 * ((((4 * (v874 ^ 0x42)) ^ 0x18) & (v874 ^ 0x42) ^ (4 * (v874 ^ 0x42)) & 0x44) & (16 * (v874 & (4 * v871) ^ v871)) ^ v874 & (4 * v871) ^ v871 ^ 0x46));
  LOBYTE(v874) = v870 - v827;
  LOBYTE(v871) = v870 - v827 - 4;
  v876 = ((v872 ^ 0xF872EF32) + 713918791) ^ v872 ^ ((v872 ^ 0x19582DF2) - 878228601) ^ ((v872 ^ 0xB3D585B4) + 1630200769) ^ ((v872 ^ 0x7FFFDEFF) - 1392461684) ^ v875;
  LOBYTE(v870) = ((v856 ^ 0xC5) - 1) ^ v856 ^ ((v856 ^ 0x38) + 4) ^ ((v856 ^ 0xC7) - 3) ^ ((v856 ^ 0xFE) - 58);
  v877 = ((v861 ^ 0xBCA56631) + 1309533539) ^ ((v861 ^ 0xE497C5FE) + 373245614) ^ ((v861 ^ 0x5565DF63) - 1479713743);
  v878 = (((v873 - v877 - 267993526) ^ 0xAA8213C2) + 1492936579) ^ (v873 - v877 - 267993526) ^ (((v873 - v877 - 267993526) ^ 0x7882894A) - 1963131637) ^ (((v873 - v877 - 267993526) ^ 0xE03EFED8) + 306219673) ^ (((v873 - v877 - 267993526) ^ 0x3FBFEFEF) - 842949712);
  LOBYTE(v861) = v874 + 37 + (((v828 ^ 0x80) - 126) ^ ((v828 ^ 0xC4) - 58) ^ ((v828 ^ 0x6C) + 110));
  LOBYTE(v828) = ((2 * (v861 & 0x41)) & 0x80 | v861 & 0x41) ^ (2 * (v861 & 0x41)) & (v861 ^ 0x8C);
  LOBYTE(v856) = ((2 * (v861 ^ 0x8C)) ^ 0x9A) & (v861 ^ 0x8C) ^ (2 * (v861 ^ 0x8C)) & 0xCC;
  LOBYTE(v828) = v861 ^ (2 * ((((4 * (v856 ^ 0x45)) ^ 0x34) & (v856 ^ 0x45) ^ (4 * (v856 ^ 0x45)) & 0xCC) & (16 * ((v856 ^ 0x49) & (4 * v828) ^ v828)) ^ (v856 ^ 0x49) & (4 * v828) ^ v828 ^ 0xCD));
  LOBYTE(v862) = ((v870 ^ 0x57) + 58) ^ ((v870 ^ 0x4E) + 33) ^ ((v870 ^ 1) + 112);
  LOBYTE(v856) = (v860 ^ 0xB4) & (2 * (v860 & 0x34)) ^ v860 & 0x34;
  LOBYTE(v870) = ((2 * (v860 ^ 0x9C)) ^ 0x50) & (v860 ^ 0x9C) ^ (2 * (v860 ^ 0x9C)) & 0xA8;
  LOBYTE(v860) = v860 ^ (2 * ((((4 * (v870 ^ 0xA8)) ^ 0xA0) & (v870 ^ 0xA8) ^ (4 * (v870 ^ 0xA8)) & 0xA8 ^ 0xA0) & (16 * (v870 & (4 * v856) ^ v856)) ^ v870 & (4 * v856) ^ v856 ^ 0xA8));
  LOBYTE(STACK[0x903]) = v876 ^ 0x30;
  LOBYTE(STACK[0x968]) = v828 ^ 0x28;
  LOBYTE(v861) = (v875 ^ 0x8F) - 123;
  LOBYTE(v870) = ((v876 ^ 0x58) - 13) ^ ((v876 ^ 0xE7) + 78) ^ ((v876 ^ 0xBB) + 18);
  LOBYTE(v856) = ((2 * (v871 ^ 0x68)) ^ 0xF8) & (v871 ^ 0x68) ^ (2 * (v871 ^ 0x68)) & 0xFC;
  LOBYTE(v851) = (v856 ^ 0xF0) & (4 * (((2 * v871) & 0x28 ^ 0x94) & v871)) ^ ((2 * v871) & 0x28 ^ 0x94) & v871;
  LOBYTE(v846) = v877 - 34;
  LOBYTE(v856) = ((4 * v856) & 0xF8 ^ 0x6C ^ ((4 * v856) ^ 0xF0) & v856) & (16 * v851) ^ v851;
  LOBYTE(v851) = v860 ^ v828;
  LOBYTE(STACK[0xA77]) = v871 ^ (2 * v856) ^ 0x67;
  LOBYTE(v856) = (((v874 - v862 + 117) ^ 0xB6) - 75) ^ (v874 - v862 + 117) ^ (((v874 - v862 + 117) ^ 0x88) - 117) ^ (((v874 - v862 + 117) ^ 0x3C) + 63) ^ (-(v874 - v862 + 117) - 3);
  LOBYTE(STACK[0x80F]) = (((v862 - 76) ^ 0xB7) - 43) ^ (v862 - 76) ^ (((v862 - 76) ^ 0x30) + 84) ^ (((v862 - 76) ^ 0xE6) - 122) ^ (((v862 - 76) ^ 0xFD) - 97) ^ 0x6F;
  LOBYTE(STACK[0x91E]) = v860 ^ v828 ^ 0x4C;
  LOBYTE(v874) = v862 - ((v856 ^ 0xFD) + 122);
  LOBYTE(v871) = v875 ^ 0xBB;
  v879 = ((v876 ^ v878 ^ 0xC6D39E7D) - 1097890594) ^ ((v876 ^ v878 ^ 0x39FE06D8) + 1101143161) ^ ((v876 ^ v878 ^ 0xA4EA3A1E) - 592043841);
  v880 = v877 - (((v878 ^ 0x7A66E822) + 1194887896) ^ ((v878 ^ 0x4ADA98D3) + 2005203495) ^ ((v878 ^ 0x3D3DFB4E) + 6527420));
  LOBYTE(STACK[0x94D]) = v871;
  LOBYTE(v877) = (v873 ^ 0x50) & (2 * (v873 & 0x1A)) ^ v873 & 0x1A;
  LOBYTE(v876) = ((2 * (v873 ^ 0x74)) ^ 0xDC) & (v873 ^ 0x74) ^ (2 * (v873 ^ 0x74)) & 0x6E;
  LOBYTE(STACK[0xA5C]) = v873 ^ (2 * (((4 * (v876 ^ 0x22)) & 0x60 ^ ((4 * (v876 ^ 0x22)) ^ 0xA0) & (v876 ^ 0x22) ^ 0x20) & (16 * ((v876 ^ 0x48) & (4 * v877) ^ v877)) ^ (v876 ^ 0x48) & (4 * v877) ^ v877)) ^ 0x2E;
  LOBYTE(v873) = ((v851 ^ v856 ^ 0xAB) - 13) ^ ((v851 ^ v856 ^ 0x43) + 27) ^ ((v851 ^ v856 ^ 0xAA) - 12);
  LOBYTE(v871) = (((v828 ^ 0xE6) + 117) ^ ((v828 ^ 0x22) - 79) ^ ((v828 ^ 0x1F) - 114)) + (((v851 ^ 0xB4) - 105) ^ ((v851 ^ 0x6C) + 79) ^ ((v851 ^ 0x67) + 70));
  LOBYTE(v877) = (2 * (v846 & 0xB1 ^ 0x45)) & 0x40 ^ v846 & 0xB1 ^ 0x45 ^ ((2 * (v846 & 0xB1 ^ 0x45)) ^ 0x8A) & (v846 ^ 0xF4);
  LOBYTE(v876) = (2 * (v846 ^ 0xF4)) & 0x44 ^ 0x45 ^ ((2 * (v846 ^ 0xF4)) ^ 0x8A) & (v846 ^ 0xF4);
  LOBYTE(v877) = (4 * v877) & 0x44 ^ v877 ^ ((4 * v877) ^ 0x14) & v876;
  LOBYTE(STACK[0x7F4]) = v846 ^ (2 * ((16 * v877) & 0x40 ^ v877 ^ ((16 * v877) ^ 0x10) & ((4 * v876) & 0x44 ^ 0x41 ^ ((4 * v876) ^ 0x14) & v876))) ^ 7;
  LOBYTE(v876) = (((v879 + 23) ^ 0x82) + 79) ^ (v879 + 23) ^ (((v879 + 23) ^ 0xAB) + 104) ^ (((v879 + 23) ^ 0xE1) + 46) ^ (((v879 + 23) ^ 0xFB) + 56);
  LOBYTE(v876) = (((v876 ^ 0x54) - 68) ^ ((v876 ^ 0x42) - 82) ^ ((v876 ^ 0x25) - 53)) + 76;
  LOBYTE(v846) = v876 & 0x9A ^ 0xD1;
  LOBYTE(STACK[0xAA6]) = v876 ^ (2 * ((v876 ^ 0x78) & (2 * ((v876 ^ 0x78) & (2 * ((v876 ^ 0x78) & (2 * ((v876 ^ 0x78) & (2 * ((v876 ^ 0x78) & (2 * (v846 ^ v876 & 0x22)) ^ v846)) ^ v846)) ^ v846)) ^ v846)) ^ v846)) ^ 0xAE;
  LOBYTE(v876) = (((v873 + 30) ^ 0xF2) + 21) ^ (v873 + 30) ^ (((v873 + 30) ^ 0xEF) + 10) ^ (((v873 + 30) ^ 0xFA) + 29) ^ (((v873 + 30) ^ 0xFE) + 25) ^ 0xEA;
  LOBYTE(v828) = (((v874 - 91) ^ 0x27) - 52) ^ (v874 - 91) ^ (((v874 - 91) ^ 0x34) - 39);
  LOBYTE(v828) = ((v828 ^ 0x4F) - 24) ^ ((v828 ^ 0x93) + 60) ^ ((v828 ^ 0xCF) + 104);
  LOBYTE(v846) = v828 - 6;
  LOBYTE(v828) = v828 & 1;
  LOBYTE(v862) = v828 ^ 0x2F;
  LOBYTE(v851) = (v846 ^ 0x4A) & (2 * ((v846 ^ 0x4A) & (2 * ((v846 ^ 0x4A) & (2 * ((v846 ^ 0x4A) & (2 * ((v846 ^ 0x4A) & (2 * (((2 * v828) ^ 0x4A) & (v846 ^ 0x4A) ^ v828 ^ 0x2F)) ^ v828 ^ 0x2F)) ^ v828 ^ 0x2F)) ^ v828 ^ 0x2F)) ^ v828 ^ 0x2F));
  LOBYTE(v828) = v880 - 89;
  LOBYTE(v871) = v871 - v873 + 118;
  LOBYTE(STACK[0xAC1]) = v876;
  LOBYTE(STACK[0x9B2]) = v846 ^ (2 * (v851 ^ v862)) ^ 0xF2;
  v881 = v879 + (((v878 ^ 0x9AE7205D) + 1143023487) ^ ((v878 ^ 0xEB74E3E4) + 900916424) ^ ((v878 ^ 0xA230904A) + 2096535402));
  LOBYTE(STACK[0x83E]) = v878 ^ 0xC7;
  LOBYTE(v861) = v861 + v870 - v879;
  LOBYTE(v870) = (v871 ^ 0xBC) & (2 * (v871 & 0xBE)) ^ v871 & 0xBE;
  LOBYTE(v878) = ((2 * (v871 ^ 0xC4)) ^ 0xF4) & (v871 ^ 0xC4) ^ (2 * (v871 ^ 0xC4)) & 0x7A;
  LOBYTE(v862) = v878 ^ 0xA;
  LOBYTE(v878) = v870 ^ 0x7A ^ (v878 ^ 0x70) & (4 * v870);
  LOBYTE(STACK[0x74A]) = v871 ^ (2 * ((16 * v878) ^ v878 ^ ((16 * v878) ^ 0x20) & ((4 * v862) & 0x70 ^ ((4 * v862) ^ 0xE0) & v862 ^ 0x10))) ^ 0xF9;
  LOBYTE(STACK[0x859]) = v856 ^ 0x42;
  LOBYTE(v870) = (((v856 ^ 0x9C) - 127) ^ ((v856 ^ 0x88) - 107) ^ ((v856 ^ 0xA5) - 70)) - 44 + v873 + 30;
  v882 = v879 - v880;
  v883 = v879 - v880 + 50882551;
  LOBYTE(v877) = (v828 ^ 0xB7) & (2 * (v828 & 0xB4)) ^ v828 & 0xB4;
  LOBYTE(v880) = ((2 * ((v880 - 89) ^ 0x9F)) ^ 0x56) & ((v880 - 89) ^ 0x9F) ^ (2 * ((v880 - 89) ^ 0x9F)) & 0x2A;
  LOBYTE(STACK[0x997]) = v828 ^ (2 * ((16 * (v877 ^ 0x2B ^ v880 & (4 * v877))) & 0x20 ^ v877 ^ 0x2B ^ v880 & (4 * v877) ^ (((4 * (v880 ^ 0x29)) ^ 0xA0) & (v880 ^ 0x29) ^ (4 * (v880 ^ 0x29)) & 0x20) & ((16 * (v877 ^ 0x2B ^ v880 & (4 * v877))) ^ 0x30))) ^ 0x96;
  LOBYTE(v880) = v861 - (v881 + v882);
  v884 = (v881 + 1616185598) ^ v883 ^ (((v881 + 1616185598) ^ 0x2C2FEC0F) + 1550965563) ^ (((v881 + 1616185598) ^ 0x8064E4C3) - 264580105) ^ (((v881 + 1616185598) ^ 0x5D15BFF9) + 759924941) ^ (((v881 + 1616185598) ^ 0x7EFF7FFF) + 245450955) ^ ((v883 ^ 0x58A2568D) - 758421294) ^ ((v883 ^ 0x592CB524) - 750417031) ^ ((v883 ^ 0xAE79DFD) - 2138135646) ^ ((v883 ^ 0x7EFFBFF7) - 191462996);
  LOBYTE(v874) = v873 - v874;
  LOBYTE(v877) = v871 - v874 - v870 + 32;
  LOBYTE(STACK[0x72F]) = (v861 - 24) ^ 0x34;
  LOBYTE(v874) = v874 - 100;
  LOBYTE(STACK[0x9E1]) = v884 ^ 0x5D;
  LOBYTE(STACK[0x8A3]) = v874 - ((2 * v874) & 0xE7) - 13;
  LOBYTE(v870) = v874 ^ v870 ^ ((v870 ^ 0xF2) - 105) ^ ((v870 ^ 0x62) + 7) ^ ((v870 ^ 0xF4) - 111) ^ (-v870 - 101);
  v885 = (((v884 ^ 0x2F854989) - 971900046) ^ ((v884 ^ 0x9517A014) + 2088964845) ^ ((v884 ^ 0x40A5E0F4) - 1456385523)) - v882;
  LOBYTE(STACK[0x8ED]) = v877 + (~(2 * v877) | 0x19) - 12;
  LOBYTE(STACK[0x9FC]) = v870 ^ 0x68;
  LOBYTE(v877) = v877 - v874;
  LOBYTE(v870) = (v870 ^ 0x9B) - v874;
  LOBYTE(STACK[0x888]) = (v882 + 84) ^ 0x34;
  LOBYTE(STACK[0x779]) = (v879 + 5) ^ 0x34;
  LOBYTE(STACK[0x794]) = v876;
  LOBYTE(v876) = v880 - v882;
  LOBYTE(v879) = (v879 + 5 + (((v884 ^ 0x89) + 114) ^ ((v884 ^ 0x14) - 19) ^ ((v884 ^ 0xF4) + 13)) - v882 + 26) ^ (v880 - v882 + 111);
  LOBYTE(v871) = v876 + 84;
  LOBYTE(v873) = (v873 + 5 + v870) ^ v877;
  LOBYTE(STACK[0x8D2]) = (v880 - 61) ^ 0x34;
  LOBYTE(STACK[0x7DE]) = v870 + 78 - ((2 * (v870 + 78)) & 0xE7) - 13;
  LOBYTE(v882) = v880 - v882 + 84 + ((v882 + 84) ^ 0xBC);
  LOBYTE(STACK[0x937]) = v873 + (~(2 * v873) | 0x19) - 12;
  LOBYTE(v877) = v877 - 27;
  LOBYTE(STACK[0x7C3]) = (v885 + 104) ^ 0x34;
  LOBYTE(STACK[0x91C]) = v879 ^ 0x34;
  LOBYTE(v828) = v879 + v876 + 84;
  LOBYTE(STACK[0xA2B]) = v882 ^ 0x34;
  LOBYTE(v874) = v877 + (v874 ^ 0xBC);
  LOBYTE(v881) = v882 - v828;
  LOBYTE(STACK[0xA46]) = v874 - ((2 * v874) & 0xE7) - 13;
  LOBYTE(v884) = v873 + v877;
  LOBYTE(v879) = v885 - v876;
  LOBYTE(v882) = v885 - v876 + 127;
  LOBYTE(v873) = v885 - v876 + 20;
  LOBYTE(STACK[0xA75]) = (v876 + 84) ^ 0x34;
  *(v776 + ((v885 + 1592434202) & 0x370 ^ 0x370) + ((v885 + 1592434202) & 0x370)) = v877 - ((2 * v877) & 0xE7) - 13;
  LOBYTE(v876) = (v828 ^ 0x67) + v881;
  LOBYTE(v862) = v874 - v884;
  LOBYTE(v874) = v870 + 78 - v877;
  LOBYTE(v880) = (v881 ^ v871) - v881;
  LOBYTE(STACK[0x80D]) = v876 ^ 0x34;
  LOBYTE(v877) = (v862 ^ v877) - v862;
  LOBYTE(v884) = v884 ^ 0x67;
  LOBYTE(STACK[0xADA]) = v884 - ((2 * v884) & 0xE7) - 13;
  LOBYTE(v881) = v862 + v884;
  LOBYTE(v862) = v874 - (v862 + v884);
  LOBYTE(STACK[0x966]) = (v873 - v876) ^ 0x34;
  LOBYTE(STACK[0x872]) = v877 - ((2 * v877) & 0xE7) - 13;
  LOBYTE(v877) = v877 - v881;
  LOBYTE(STACK[0x857]) = v880 ^ 0x34;
  LOBYTE(v880) = v880 - v876;
  LOBYTE(STACK[0x981]) = v862 + (~(2 * v862) | 0x19) - 12;
  LOBYTE(STACK[0x828]) = v881 + (~(2 * v881) | 0x19) - 12;
  LOBYTE(STACK[0xABF]) = v828 ^ 0x53;
  LOBYTE(v871) = (v828 ^ 0x67) - (v873 - v876) - v880;
  LOBYTE(v870) = v884 - v862 - v877;
  LOBYTE(v828) = v880 - 20;
  LOBYTE(STACK[0x8BC]) = v870 - ((2 * v870) & 0xE7) - 13;
  LOBYTE(STACK[0x9B0]) = (v876 + 112) ^ 0x34;
  LOBYTE(STACK[0x9CB]) = v881 + 112 - ((2 * (v881 + 112)) & 0xE7) - 13;
  LOBYTE(STACK[0x8A1]) = v871 ^ 0x34;
  LOBYTE(STACK[0x748]) = (v879 - 49) ^ 0x34;
  LOBYTE(v880) = v877 - 20;
  LOBYTE(v877) = v879 - 49;
  LOBYTE(STACK[0xA15]) = v880 - ((2 * v880) & 0xE7) - 13;
  LOBYTE(STACK[0x763]) = v874 - 69 - ((2 * (v874 - 69)) & 0xE7) - 13;
  LOBYTE(v879) = v880 ^ (v874 - 69);
  LOBYTE(STACK[0x9FA]) = v828 ^ 0x34;
  LOBYTE(v881) = v881 + 112 - (v874 - 69);
  LOBYTE(v880) = (v874 - 69) ^ 0xEE ^ v870 ^ (v881 - 18 - ((2 * v881) & 0xDC));
  LOBYTE(v873) = v876 + 13 - v873;
  v886 = v828 & 0x72;
  LOBYTE(v884) = (v828 ^ v877) - (v873 - 88);
  LOBYTE(v828) = (v882 - ((2 * v877) & 0x5E) - 1) ^ v871 ^ (v873 - 88);
  *(v776 + (v886 ^ 0x42) + (v886 ^ 0x30u)) = (v873 - v882 + 68) ^ 0x34;
  v887 = STACK[0x58C];
  v888 = LODWORD(STACK[0x4C4]) + 1685945447;
  v889 = (LODWORD(STACK[0x58C]) + 1651014502) < 0x62687B26;
  LOBYTE(STACK[0x7F7]) = v879 - v881 - ((2 * (v879 - v881)) & 0xE7) - 13;
  LOBYTE(STACK[0x7AD]) = v881 - v874 + 49 - ((2 * (v881 - v874 + 49)) & 0xE7) - 13;
  LOBYTE(STACK[0x7DC]) = v884 ^ 0x34;
  LOBYTE(STACK[0x906]) = v874 + v879 - v881 - 49 + (~(2 * (v874 + v879 - v881 - 49)) | 0x19) - 12;
  LOBYTE(STACK[0x8EB]) = (v882 + v884 + 100) ^ 0x34;
  LOBYTE(STACK[0xA5F]) = v880 - ((2 * v880) & 0xE7) - 13;
  LOBYTE(STACK[0xA44]) = v828 ^ 0x9B;
  if (v888 < 0x62687B26 != v889)
  {
    v890 = v889;
  }

  else
  {
    v890 = v887 + 1651014502 > v888;
  }

  return (*(STACK[0x598] + 8 * ((28 * v890) ^ LODWORD(STACK[0x5B0]))))();
}

uint64_t sub_1000E2AC4@<X0>(int a1@<W8>)
{
  v8 = v1 + v3;
  v9 = v3 - 1;
  *(*v6 + (v2 + v9)) = *(*v6 + (v8 + v4));
  return (*(v7 + 8 * (((v9 == a1) * v5) ^ v1)))();
}

uint64_t sub_1000E2B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23, int a24)
{
  v29 = 1875091903 * ((2 * (&a20 & 0x5FC3A2D0) - &a20 - 1606656721) ^ 0x9649DEAC);
  v30 = v24 + a14;
  a23 = a18;
  a21 = (v26 ^ 0x605CBEBA) + ((2 * v26) & 0xC0B97D74) - 1077938192 + v29;
  LODWORD(a22) = v24 + a14 + v29;
  v31 = v24 - 1410481873;
  (*(v27 + 8 * v31))(&a20);
  v32 = 1875091903 * ((-278035941 - (&a20 | 0xEF6D821B) + (&a20 | 0x10927DE4)) ^ 0x26E7FE67);
  a23 = a18;
  a21 = (a13 ^ 0x73BEB7BF) + ((2 * a13) & 0xE77D6F7E) - 1403126037 + v32;
  LODWORD(a22) = v30 + v32;
  (*(v27 + 8 * v31))(&a20);
  v33 = *v25;
  if (*v25 == 3)
  {
    v39 = 96 * (v28 ^ (v28 - 46));
    v43 = 1875091903 * (&a20 ^ 0x36758383);
    a21 = v43 + 538752685;
    LODWORD(a22) = v43 + a14 + v28;
    a23 = a18;
    (*(v27 + 8 * (v28 ^ 0x541241D3u)))(&a20);
    goto LABEL_7;
  }

  if (v33 == 2)
  {
    v39 = v28 + a14 - 3308;
    v40 = 1875091903 * ((720462014 - (&a20 | 0x2AF160BE) + (&a20 | 0xD50E9F41)) ^ 0xE37B1CC2);
    a21 = v40 + 538752684;
    LODWORD(a22) = v28 + a14 + v40;
    a23 = a18;
    (*(v27 + 8 * (v28 ^ 0x541241D3u)))(&a20);
    v41 = v25[1];
    v42 = 1875091903 * ((-846521411 - (&a20 | 0xCD8B1BBD) + (&a20 | 0x3274E442)) ^ 0x40167C1);
    a23 = a18;
    a21 = v42 + (v41 ^ (v28 + a14 - 1377986109)) + ((2 * v41) & 0x5BBB6FDE) + 1916731067;
    LODWORD(a22) = v28 + a14 + v42;
    (*(v27 + 8 * (v28 - 1410481873)))(&a20);
LABEL_7:
    v44 = v39 ^ 0x161Eu;
    v45 = 956911519 * ((&a20 - 2 * (&a20 & 0x9ED2D2C20533A561) - 0x612D2D3DFACC5A9FLL) ^ 0xDBE4A71EEFA2D564);
    a22 = v45 + *(v25 + 1) - ((v44 + 0x39AD4E2AD03EBA3ALL) & (2 * *(v25 + 1))) - 0x632958EA97E09F34;
    a23 = a18;
    a20 = (v39 - 3394) ^ v45;
    v46 = (*(v27 + 8 * (v39 ^ 0x343F)))(&a20);
    return (*(v27 + 8 * ((60 * (a24 != ((v44 + 335674562) | 0x4010605E) - 1394233519)) ^ v44)))(v46);
  }

  if (v33 != 1)
  {
    JUMPOUT(0x100066870);
  }

  v34 = 1875091903 * ((2 * (&a20 & 0x5ED777F8) - &a20 - 1591179262) ^ 0x975D0B81);
  a23 = a18;
  a21 = v34 + 538752683;
  LODWORD(a22) = v28 + a14 + v34;
  (*(v27 + 8 * (v28 - 1410481873)))(&a20);
  v35 = v25[4];
  v36 = 1875091903 * ((((2 * &a20) | 0xAC681140) - &a20 + 701232992) ^ 0xE0418B23);
  a23 = a18;
  a21 = v36 + (v28 ^ (v28 - 354)) + (v35 ^ 0xA0FFF6AF) + ((2 * v35) & 0x41FFED5E) + 2132588697;
  LODWORD(a22) = v28 + a14 + v36;
  v37 = (*(v27 + 8 * (v28 ^ 0x541241D3u)))(&a20);
  return (*(v27 + 8 * ((11 * (v25[4] == 0)) ^ (v28 - 1410488574))))(v37);
}

uint64_t sub_1000E3044(double a1, int8x16_t a2, int64x2_t a3, int64x2_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v88 = a16 - 8;
  v89.i64[0] = v88 + a14 + 3;
  STACK[0x3B0] = *(v88 + a14 + 2);
  v89.i64[1] = v88 + a14 + 2;
  v90.i64[0] = v88 + a14 + 7;
  v90.i64[1] = v88 + a14 + 6;
  v91.i64[0] = v88 + a14 + 9;
  v91.i64[1] = v88 + a14 + 8;
  v92.i64[0] = v88 + a14 + 5;
  v92.i64[1] = v88 + a14 + v73 + 10;
  v93 = vandq_s8(v92, v87);
  v94 = vandq_s8(v91, v87);
  v95 = vandq_s8(v90, v87);
  v96 = vandq_s8(v89, v87);
  v97 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v101 = vaddq_s64(v100, a3);
  v102 = vaddq_s64(v99, a3);
  v103 = vaddq_s64(v98, a3);
  v104 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a4, v100), a5), v101), vandq_s8(v101, a5));
  v105 = vaddq_s64(v97, a3);
  v106 = vaddq_s64(vandq_s8(vsubq_s64(a4, v97), a5), v105);
  v107 = vandq_s8(v105, a5);
  v108 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a4, v99), a5), v102), vandq_s8(v102, a5));
  v109 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(a4, v98), a5), v103), vandq_s8(v103, a5));
  v110 = vsubq_s64(v106, v107);
  v111 = veorq_s8(v110, a6);
  v112 = veorq_s8(v109, a6);
  v113 = veorq_s8(v109, a7);
  v114 = veorq_s8(v110, a7);
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), a8);
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v114), a8);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v118);
  v121 = vaddq_s64(v119, v117);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), v75), v121), v76), v77);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), v75), v120), v76), v77);
  v124 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v125 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v126 = veorq_s8(v122, v124);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v126);
  v129 = vaddq_s64(v127, v125);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(v129, vandq_s8(vaddq_s64(v129, v129), v78)), v79), v80);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), v78)), v79), v80);
  v132 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v133 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v134 = veorq_s8(v130, v132);
  v135 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v134);
  v137 = veorq_s8(vaddq_s64(v135, v133), v81);
  v138 = veorq_s8(v136, v81);
  v139 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v140 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v141 = veorq_s8(v137, v139);
  v142 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v141);
  v144 = veorq_s8(vaddq_s64(v142, v140), v82);
  v145 = veorq_s8(v143, v82);
  v146 = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v147 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v148 = veorq_s8(v144, v146);
  v149 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v148);
  v151 = veorq_s8(vaddq_s64(v149, v147), v83);
  v152 = veorq_s8(v150, v83);
  v153 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v154 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), veorq_s8(v151, v153));
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v154);
  v190.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v155, v155), v84), v155), v85), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), a2)));
  v190.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), v84), v156), v85), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), a2)));
  v157 = veorq_s8(v108, a6);
  v158 = veorq_s8(v108, a7);
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), a8);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), v75), v161), v76), v77);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(v164, vandq_s8(vaddq_s64(v164, v164), v78)), v79), v80);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v81);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v82);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v83);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL)));
  v190.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), v84), v172), v85), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), a2)));
  v173 = veorq_s8(v104, a6);
  v174 = veorq_s8(v104, a7);
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), a8);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v177, v177), v75), v177), v76), v77);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(v180, vandq_s8(vaddq_s64(v180, v180), v78)), v79), v80);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v81);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v82);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186), v83);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL)));
  v190.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188, v188), v84), v188), v85), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), a2)));
  *(v72 - 8 + a14) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v190, *&STACK[0x3A0])), STACK[0x3B0]);
  return (*(a71 + 8 * (((a14 != a15 + 8) * v74) ^ v71)))();
}

uint64_t sub_1000E30B0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x994]) = v71;
  v73 = (v71 ^ a2) + STACK[0x2A0];
  STACK[0x998] = v73;
  return (*(v72 + 8 * ((a71 - 4836) ^ (59 * (v73 > a31)))))();
}

uint64_t sub_1000E3160@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = 1875091903 * ((1994217836 - ((v38 - 192) | 0x76DD596C) + ((v38 - 192) | 0x8922A693)) ^ 0xBF572510);
  *(v38 - 168) = a36;
  *(v38 - 184) = STACK[0x240];
  *(v38 - 176) = a2 - v39 - 3627;
  *(v38 - 172) = ((v37 ^ 0xFF78DFEF) + 2080370424 + ((17 * (a2 ^ 0x1435) - 17712583) & v36)) ^ v39;
  v40 = (*(a1 + 8 * (a2 ^ 0x31D7)))(v38 - 192);
  return sub_10012E578(v40, v41, v42, v43, v44, v45);
}

uint64_t sub_1000E3254()
{
  v2 = *(STACK[0x640] + 24);
  STACK[0x678] = v2;
  return (*(v0 + 8 * (((((v1 - 30) ^ (v2 == 0)) & 1) * ((v1 - 1297012704) & 0x4D4ED7DF ^ 0x17A6)) ^ (v1 + 1005))))();
}

uint64_t sub_1000E33B4(uint64_t a1, int a2)
{
  v24 = (v5 + 72);
  v25 = (a2 + v2) & v3;
  v26.i64[0] = v24->i64 + 2;
  v26.i64[1] = v24->i64 + 3;
  v27 = v26;
  *&STACK[0x350] = v26;
  v28.i64[0] = v24->i64 + 4;
  v28.i64[1] = v24->i64 + 5;
  v29.i64[0] = v24->i64 + 6;
  v29.i64[1] = v24->i64 + 7;
  v30.i64[0] = v24;
  v30.i64[1] = v24->i64 + 1;
  v26.i64[0] = v24->i64 + v4 + (v25 ^ v6) * v7;
  v26.i64[1] = &v24->i64[1] + 1;
  *&STACK[0x3B0] = v26;
  v26.i64[0] = &v24->i64[1] + 2;
  v26.i64[1] = &v24->i64[1] + 3;
  *&STACK[0x3A0] = v26;
  v31 = vandq_s8(v30, *&STACK[0x390]);
  v32 = vandq_s8(v29, *&STACK[0x390]);
  v33 = vandq_s8(v28, *&STACK[0x390]);
  v34 = vandq_s8(v27, *&STACK[0x390]);
  v35 = *&STACK[0x320];
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0x320]);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0x320]);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0x320]);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x320]);
  v40 = vsubq_s64(vorrq_s8(v36, *&STACK[0x380]), vorrq_s8(v36, v18));
  v41 = vsubq_s64(vorrq_s8(v37, *&STACK[0x380]), vorrq_s8(v37, v18));
  v42 = vsubq_s64(vorrq_s8(v38, *&STACK[0x380]), vorrq_s8(v38, v18));
  *&STACK[0x360] = vsubq_s64(vorrq_s8(v39, *&STACK[0x380]), vorrq_s8(v39, v18));
  v43 = vaddq_s64(v41, v18);
  v44 = vaddq_s64(v40, v18);
  v45 = veorq_s8(v44, v23);
  v46 = veorq_s8(v43, v23);
  v47 = *&STACK[0x2F0];
  v48 = veorq_s8(v43, *&STACK[0x300]);
  v49 = veorq_s8(v44, *&STACK[0x300]);
  v50 = *&STACK[0x300];
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v48), *&STACK[0x2F0]);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v49), *&STACK[0x2F0]);
  v53 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = veorq_s8(vaddq_s64(v56, v54), v11);
  v59 = veorq_s8(v57, v11);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v61 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = *&STACK[0x2D0];
  v66 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), *&STACK[0x2D0])), v12), v13);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), *&STACK[0x2D0])), v12), v13);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v14);
  v73 = veorq_s8(v71, v14);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v78 = vaddq_s64(v76, v74);
  v79 = *&STACK[0x370];
  v80 = *&STACK[0x290];
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v78, v78), *&STACK[0x370]), v78), *&STACK[0x290]), v17);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v77, v77), *&STACK[0x370]), v77), *&STACK[0x290]), v17);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v84 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v85 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v84);
  v87 = vaddq_s64(v85, v83);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v86, v19), vorrq_s8(v86, v21)), v21), v20);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v87, v19), vorrq_s8(v87, v21)), v21), v20);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v91 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v92.i64[0] = &v24->i64[1] + 4;
  v92.i64[1] = &v24->i64[1] + 5;
  *&STACK[0x340] = v92;
  v93 = vaddq_s64(v42, v18);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL)));
  v95 = vaddq_s64(v91, v90);
  v210.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, v22), vorrq_s8(v95, v15)), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v10)));
  v210.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, v22), vorrq_s8(v94, v15)), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v10)));
  v96 = veorq_s8(v93, v23);
  v97 = veorq_s8(v93, v50);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v47);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v11);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(v102, vandq_s8(vaddq_s64(v102, v102), v65)), v12), v13);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v14);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v107, v107), v79), v107), v80), v17);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v110, v19), vorrq_s8(v110, v21)), v21), v20);
  v29.i64[0] = &v24->i64[1] + 6;
  v29.i64[1] = &v24->i64[1] + 7;
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL)));
  v113 = vandq_s8(v29, *&STACK[0x390]);
  v114 = vaddq_s64(*&STACK[0x360], v18);
  v210.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v22), vorrq_s8(v112, v15)), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v10)));
  v115 = veorq_s8(v114, v23);
  v116 = veorq_s8(v114, v50);
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v47);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v11);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(v121, vandq_s8(vaddq_s64(v121, v121), v65)), v12), v13);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v14);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v126, v126), v79), v126), v80), v17);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, v19), vorrq_s8(v129, v21)), v21), v20);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v133 = vandq_s8(v92, *&STACK[0x390]);
  v134 = vaddq_s64(v132, v131);
  v135 = vandq_s8(*&STACK[0x3A0], *&STACK[0x390]);
  v210.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v134, v22), vorrq_s8(v134, v15)), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v10)));
  v136 = vandq_s8(*&STACK[0x3B0], *&STACK[0x390]);
  v137 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v35);
  v141 = vaddq_s64(v139, v35);
  v142 = vaddq_s64(v138, v35);
  v143 = vaddq_s64(v137, v35);
  v144 = vsubq_s64(vorrq_s8(v141, *&STACK[0x380]), vorrq_s8(v141, v18));
  v145 = vsubq_s64(vorrq_s8(v142, *&STACK[0x380]), vorrq_s8(v142, v18));
  v146 = vsubq_s64(vorrq_s8(v143, *&STACK[0x380]), vorrq_s8(v143, v18));
  v147 = vaddq_s64(v144, v18);
  v148 = vaddq_s64(vsubq_s64(vorrq_s8(v140, *&STACK[0x380]), vorrq_s8(v140, v18)), v18);
  v143.i64[0] = vqtbl4q_s8(v210, *&STACK[0x230]).u64[0];
  v149 = veorq_s8(v148, v23);
  v210.val[0] = veorq_s8(v147, v23);
  v210.val[1] = veorq_s8(v147, v50);
  v210.val[2] = veorq_s8(v148, v50);
  v210.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210.val[0], 0x38uLL), v210.val[0], 8uLL), v210.val[1]), v47);
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v210.val[2]), v47);
  v151 = vsraq_n_u64(vshlq_n_s64(v210.val[1], 3uLL), v210.val[1], 0x3DuLL);
  v210.val[1] = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v210.val[2], 3uLL), v210.val[2], 0x3DuLL));
  v210.val[2] = veorq_s8(v210.val[0], v151);
  v152 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210.val[0], 0x38uLL), v210.val[0], 8uLL), v210.val[2]);
  v210.val[0] = veorq_s8(vaddq_s64(v152, v210.val[1]), v11);
  v154 = veorq_s8(v153, v11);
  v155 = vsraq_n_u64(vshlq_n_s64(v210.val[1], 3uLL), v210.val[1], 0x3DuLL);
  v210.val[1] = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v210.val[2], 3uLL), v210.val[2], 0x3DuLL));
  v210.val[2] = veorq_s8(v210.val[0], v155);
  v156 = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210.val[0], 0x38uLL), v210.val[0], 8uLL), v210.val[2]);
  v210.val[0] = vaddq_s64(v156, v210.val[1]);
  v210.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v210.val[0], vandq_s8(vaddq_s64(v210.val[0], v210.val[0]), v65)), v12), v13);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(v157, vandq_s8(vaddq_s64(v157, v157), v65)), v12), v13);
  v159 = vsraq_n_u64(vshlq_n_s64(v210.val[1], 3uLL), v210.val[1], 0x3DuLL);
  v210.val[1] = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v210.val[2], 3uLL), v210.val[2], 0x3DuLL));
  v210.val[2] = veorq_s8(v210.val[0], v159);
  v160 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210.val[0], 0x38uLL), v210.val[0], 8uLL), v210.val[2]);
  v210.val[0] = veorq_s8(vaddq_s64(v160, v210.val[1]), v14);
  v162 = veorq_s8(v161, v14);
  v163 = vsraq_n_u64(vshlq_n_s64(v210.val[1], 3uLL), v210.val[1], 0x3DuLL);
  v210.val[1] = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v210.val[2], 3uLL), v210.val[2], 0x3DuLL));
  v210.val[2] = veorq_s8(v210.val[0], v163);
  v164 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210.val[0], 0x38uLL), v210.val[0], 8uLL), v210.val[2]);
  v210.val[0] = vaddq_s64(v164, v210.val[1]);
  v210.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v210.val[0], v210.val[0]), *&STACK[0x370]), v210.val[0]), v80), v17);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), *&STACK[0x370]), v165), v80), v17);
  v167 = vsraq_n_u64(vshlq_n_s64(v210.val[1], 3uLL), v210.val[1], 0x3DuLL);
  v210.val[1] = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v210.val[2], 3uLL), v210.val[2], 0x3DuLL));
  v210.val[2] = veorq_s8(v210.val[0], v167);
  v168 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210.val[0], 0x38uLL), v210.val[0], 8uLL), v210.val[2]);
  v210.val[0] = vaddq_s64(v168, v210.val[1]);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v19), vorrq_s8(v169, v21)), v21), v20);
  v210.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v210.val[0], v19), vorrq_s8(v210.val[0], v21)), v21), v20);
  v171 = vaddq_s64(v145, v18);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v210.val[2], 3uLL), v210.val[2], 0x3DuLL)));
  v210.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210.val[0], 0x38uLL), v210.val[0], 8uLL), veorq_s8(v210.val[0], vsraq_n_u64(vshlq_n_s64(v210.val[1], 3uLL), v210.val[1], 0x3DuLL)));
  v210.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v210.val[0], v22), vorrq_s8(v210.val[0], v15)), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v10)));
  v210.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, v22), vorrq_s8(v172, v15)), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), v10)));
  v173 = veorq_s8(v171, v23);
  v174 = veorq_s8(v171, v50);
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v47);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v11);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(v179, vandq_s8(vaddq_s64(v179, v179), v65)), v12), v13);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v14);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v184, v184), *&STACK[0x370]), v184), v80), v17);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v187, v19), vorrq_s8(v187, v21)), v21), v20);
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL)));
  v190 = vaddq_s64(v146, v18);
  v210.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v189, v22), vorrq_s8(v189, v15)), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v10)));
  v191 = veorq_s8(v190, v23);
  v192 = veorq_s8(v190, v50);
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v47);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v11);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(v197, vandq_s8(vaddq_s64(v197, v197), v65)), v12), v13);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v14);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v202, v202), *&STACK[0x370]), v202), v80), v17);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205, v19), vorrq_s8(v205, v21)), v21), v20);
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL)));
  v208 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v207, v22), vorrq_s8(v207, v15)), v15), v16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v10)));
  v143.i64[1] = vqtbl4q_s8(v210, *&STACK[0x230]).u64[0];
  *v24 = v143;
  return (*(v9 + 8 * (v8 ^ v25)))(a1);
}

uint64_t sub_1000E3ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x550];
  LODWORD(STACK[0x49C]) = 16257999;
  return sub_1000E8C5C(a4, v4);
}

uint64_t sub_1000E3F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, unsigned int a18, uint64_t a19, uint64_t a20)
{
  v25 = 1875091903 * (&a16 ^ 0x36758383);
  a19 = a13;
  a17 = (v23 ^ 0xBEFEF7EE) + ((2 * v23) & 0x7DFDEFDC) + v25 + 1629339324;
  a18 = v25 + 7724;
  (*(v24 + 77160))(&a16);
  v26 = 1824088897 * ((2 * (&a16 & 0x2CBCCEA0) - &a16 - 750571175) ^ 0x8B2AE23B);
  a19 = v21;
  a20 = a13;
  a16 = v26 + 3757;
  a18 = (v22 ^ 0xCFE6EBCA) - v26 + ((2 * v22) & 0x9FCDD794) + 2126380736;
  (*(v24 + 77048))(&a16);
  v27 = 1824088897 * (((&a16 | 0x410473A9) + (~&a16 | 0xBEFB8C56)) ^ 0x196DA0CA);
  a16 = v27 + 3757;
  a18 = 1319430794 - v27;
  a19 = 0;
  a20 = a13;
  (*(v24 + 77048))(&a16);
  v28 = 1875091903 * (((&a16 | 0xB609802D) + (~&a16 | 0x49F67FD2)) ^ 0x807C03AF);
  a17 = (v20 ^ 0xEDDCB7AB) + ((2 * v20) & 0xDBB96F56) + 843054847 + v28;
  a18 = v28 + 7724;
  a19 = a13;
  v29 = (*(v24 + 77160))(&a16);
  return (*(v24 + 8 * ((4684 * (a16 == 16257999)) ^ 0xA0Eu)))(v29);
}

uint64_t sub_1000E4684(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v20[5] = ((BYTE1(a5) ^ 0xA6) - ((2 * (BYTE1(a5) ^ 0xA6)) & 0x96) - 53) ^ 0xCB;
  v19[18] = BYTE6(a5) ^ 0x3C;
  v20[15] = ((BYTE2(a5) ^ 0x73) - ((2 * (BYTE2(a5) ^ 0x73)) & 0xBB) - 35) ^ 0xDD;
  v19[16] = ((BYTE4(a5) & 0xF2 ^ 0xF4) & (BYTE4(a5) & 0xD ^ 0xFB) | BYTE4(a5) & 9) ^ 0xE8;
  v19[11] = BYTE3(a5) ^ 0xEE;
  v10 = v8 >> (a7 & 0x20) >> (a7 & 0x20 ^ 0x20u);
  *(v23 + 18) = BYTE1(v8);
  v20[1] = (BYTE2(v8) + ((v25 - 98) | 0x5D) + (~(2 * BYTE2(v8)) | 0x4F) + 124) ^ 0xD8;
  v19[10] = (v10 - ((2 * v10) & 0x66) + 51) ^ 0x33;
  v20[4] = HIBYTE(a5) ^ 0xEB;
  v20[12] = (BYTE3(v8) - ((2 * BYTE3(v8)) & 0xCC) + 102) ^ 0x66;
  *(v23 + 8) = BYTE5(a5) ^ 0xEF;
  *v24 = a5 ^ 0x12;
  v19[9] = BYTE5(v8);
  v20[19] = (v8 - ((2 * v8) & 0x66) - 77) ^ 0xB3;
  v20[10] = (BYTE6(v8) - ((2 * BYTE6(v8)) & 0x2C) - 106) ^ 0x96;
  v20[22] = (BYTE2(result) - ((2 * BYTE2(result)) & 0x88) - 60) ^ 0xC4;
  v20[21] = (HIBYTE(v8) - ((2 * HIBYTE(v8)) & 0x96) - 53) ^ 0xCB;
  *(v23 + 19) = BYTE3(result);
  v20[17] = (BYTE1(result) - ((2 * BYTE1(result)) & 0x77) - 69) ^ 0xBB;
  *(v23 + 26) = result;
  LOBYTE(v10) = *(v21 + ((BYTE4(result) + 76) ^ 0x5ELL));
  v19[14] = (HIBYTE(result) + (~(2 * HIBYTE(result)) | 0xD3) - 105) ^ 0x96;
  v11 = ((((BYTE4(result) + 76) ^ 0xDF) - 93) ^ (((BYTE4(result) + 76) ^ 0x79) + 5) ^ (((BYTE4(result) + 76) ^ 0x8D) - 15)) + v10 - 69;
  v12 = v11 & 0xD8 ^ 0xBD;
  v13 = v11 ^ (2 * ((v11 ^ 0x6E) & (2 * ((v11 ^ 0x6E) & (2 * ((v11 ^ 0x6E) & (2 * ((v11 ^ 0x6E) & (2 * ((v11 ^ 0x6E) & (2 * ((v11 ^ 0x6E) & 0x36 ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ 0x83;
  *(v23 + 3) = BYTE5(result);
  v20[7] = (BYTE1(a2) - ((2 * BYTE1(a2)) & 0x88) + 68) ^ 0x44;
  v20[20] = (BYTE6(result) - ((2 * BYTE6(result)) & 0x40) + 32) ^ 0x20;
  *(v23 + 28) = BYTE2(a2);
  v19[17] = (a2 - ((2 * a2) & 0xA0) + 80) ^ 0x50;
  v20[9] = (((v13 >> 1) | (v13 << 7)) - (v13 & 0xA2) - 47) ^ 0xD1;
  v14 = *(a8 + (((a2 >> 22) & 0xFC | (a2 >> 30)) ^ 0x70));
  *(v23 + 27) = 63 * (((v14 >> 7) | (2 * v14)) ^ (2 * ((v14 >> 7) | (2 * v14)) * ((v14 >> 7) | (2 * v14))) ^ 0x44);
  v15 = *(v9 + (((a2 >> 30) & 0xFC | (a2 >> 38) & 3) ^ 0x65) + 2);
  *(v23 + 14) = BYTE5(a2);
  v15 += 15;
  v16 = v15 & 0x50 ^ 0x7B;
  v17 = v15 ^ (2 * ((v15 ^ 0x62) & (2 * ((v15 ^ 0x62) & (2 * ((v15 ^ 0x62) & (2 * ((v15 ^ 0x62) & (2 * ((v15 ^ 0x62) & (2 * ((v15 ^ 0x62) & 0x32 ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16));
  *(v23 + 2) = a3;
  *(v23 + 1) = BYTE4(a3);
  *(v23 + 12) = BYTE1(a3);
  *(v23 + 17) = BYTE6(a4) ^ 0x6A;
  v18 = (v17 >> 6) ^ (v17 >> 4);
  *v23 = BYTE3(a3);
  *(v23 + 16) = HIBYTE(a2);
  *(v23 + 21) = BYTE5(a3);
  *(v23 + 22) = BYTE2(a3);
  *(v23 + 15) = v17 ^ ((v18 ^ 4) - ((2 * v18) & 4) - 14) ^ 0x8F;
  *(v23 + 25) = HIBYTE(a3);
  *(v23 + 24) = BYTE6(a3);
  *(v23 + 4) = v22 + 1;
  return result;
}

uint64_t sub_1000E4B2C()
{
  v4 = (((*(v2 + 16) ^ 0x15930BC6) + 1582809041) ^ ((*(v2 + 16) ^ 0xC36EF42E) - 2002108359) ^ (((v1 - 2001639072) & 0x774E97EB ^ 0x290217DC ^ *(v2 + 16)) + 1657189378)) - 2115239256;
  v5 = v0 + 908545682 > v4;
  v6 = (v0 > 0xC9D8B16D) ^ (v4 < 0x36274E92);
  v7 = v5;
  if (v6)
  {
    v8 = v0 > 0xC9D8B16D;
  }

  else
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((238 * !v8) ^ v1)))();
}

uint64_t sub_1000E4C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * (((&a14 | 0x7422EDAB) - &a14 + (&a14 & 0x8BDD1250)) ^ 0xC42175DD) + 8154;
  a14 = &a11;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((7523 * (a15 == v17)) ^ 0xACA)))(v18);
}

uint64_t sub_1000E4D28@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = ~v7 + v4;
  v13 = *(a4 + v12 - 15);
  v14 = *(a4 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v11 + 8 * ((((((v9 ^ (v8 + 33)) * v10) ^ a2) + v7 != v6) * a3) ^ (v9 + v5))))();
}

uint64_t sub_1000E4D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  if (a10 == 925652384)
  {
    v25 = -654855621;
  }

  else
  {
    v25 = 1032869496;
  }

  v26 = ((&a16 & 0xAEE8DE55 | ~(&a16 | 0xAEE8DE55)) ^ 0x97EF2C8) * v21;
  a17 = v26 - 1820687232;
  a18 = a14;
  a19 = &a11;
  a20 = v25 - v26;
  a21 = v26 + v24 + 1674577811;
  v27 = (*(v22 + 8 * (v24 ^ 0x209F)))(&a16);
  return (*(v22 + 8 * (((a16 == (v24 ^ 0x1FEE ^ (v23 - 2713))) * ((v24 + 4281) ^ 0x15E0)) ^ v24)))(v27);
}

uint64_t sub_1000E4E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD **a26)
{
  v33 = *a26;
  if ((*a26 & 3) != (((v26 - 2111108894) | 0x802u) ^ 0x862) || (v34 = *(v31 + 8 * (v26 - 2111108962)), v36 = *(v34 - 4), v35 = (v34 - 4), v36))
  {
    *a11 = 16215950;
    JUMPOUT(0x1000E4AF0);
  }

  v37 = v26 - 2111104340;
  *v35 = v33;
  **(v31 + 8 * (v26 - 2111108893)) = 255;
  *v33 |= ~v33[*v33 & 0x3ELL] << (v29 + v26 - 84 + v28 - 95);
  v33[4] |= (v33[v33[4] & 0x3ELL] ^ (v29 + v26 - 2111104340 - v27 + 469 - 624)) << 16;
  v33[8] |= ~v33[v33[8] & 0x3ELL] << 16;
  v33[12] |= ~v33[v33[12] & 0x3ELL] << 16;
  v33[16] |= ~v33[v33[16] & 0x3ELL] << 16;
  v33[20] |= ~v33[v33[20] & 0x3ELL] << 16;
  v33[24] |= ~v33[v33[24] & 0x3ELL] << 16;
  v33[28] |= ~v33[v33[28] & 0x3ELL] << 16;
  v33[32] |= ~v33[v33[32] & 0x3ELL] << 16;
  v33[36] |= ~v33[v33[36] & 0x3ELL] << 16;
  v33[40] |= ~v33[v33[40] & 0x3ELL] << 16;
  v33[44] |= ~v33[v33[44] & 0x3ELL] << 16;
  v33[48] |= ~v33[v33[48] & 0x3ELL] << 16;
  v33[52] |= ~v33[v33[52] & 0x3ELL] << 16;
  v33[56] |= ~v33[v33[56] & 0x3ELL] << 16;
  v33[60] |= ~v33[v33[60] & 0x3ELL] << 16;
  v38 = v26 - 2111104607;
  *(v32 - 144) = *(v31 + 8 * ((v26 - 2111104340) ^ 0x120D));
  *(v32 - 136) = v26 - 2111104607 - 33731311 * ((((v32 - 152) | 0xFDE92FC2) - (v32 - 152) + ((v32 - 152) & 0x216D038)) ^ 0xC41FE5E1);
  v39 = (v26 - 2111104340) ^ 0x3773;
  (*(v30 + 8 * v39))(v32 - 152);
  *(v32 - 144) = *(v31 + 8 * (v37 - 4538)) - 4;
  *(v32 - 136) = v38 - 33731311 * ((((v32 - 152) | 0x80C71177) - ((v32 - 152) & 0x80C71177)) ^ 0xB931DB54);
  v40 = (*(v30 + 8 * v39))(v32 - 152);
  return (*(v30 + 8 * ((187 * (*(v32 - 152) == 0)) ^ v37)))(v40);
}

uint64_t sub_1000E5180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, unsigned int a25)
{
  v29 = (((&a20 | 0x4F2BE621) - &a20 + (&a20 & 0xB0D419D8)) ^ 0x17423543) * v28;
  a21 = v29 + 939228412;
  a24 = -654855621 - v29;
  a25 = v29 + v26 + 1674575243;
  a22 = a15;
  a23 = &a18;
  v30 = (*(v25 + 8 * (v26 + 5737)))(&a20);
  return (*(v25 + 8 * ((7569 * (a20 == (((v26 ^ 0x1DD0) - 1401) ^ (v27 + 2762)))) ^ v26)))(v30);
}

uint64_t sub_1000E5240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = v66 + a4;
  v76 = v66 - 1;
  v77 = __ROR8__((v65 + v76) & 0xFFFFFFFFFFFFFFF8, 8);
  v78 = (((v77 - 0x6AF7234D0CC131D5) << (v67 ^ 0x33u)) | a2) - (v77 - 0x6AF7234D0CC131D5) + v72;
  v79 = v78 ^ v74;
  v80 = v78 ^ v68;
  v81 = __ROR8__(v79, 8);
  v82 = ((v69 | (2 * (v81 + v80))) - (v81 + v80) + v70) ^ v71;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = __ROR8__(v82, 8);
  v85 = __ROR8__(((v73 & (2 * (v84 + v83))) - (v84 + v83) + a1) ^ a3, 8);
  v86 = ((v73 & (2 * (v84 + v83))) - (v84 + v83) + a1) ^ a3 ^ __ROR8__(v83, 61);
  v87 = (v85 + v86) ^ 0x5963B6C555D97F1FLL;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x61459D2AF01F24F7;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x64C31C027084DE6CLL;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (v93 + v92 - ((2 * (v93 + v92)) & 0xA5A39F44AA2858D8) + 0x52D1CFA255142C6CLL) ^ 0x48FB24461747836FLL;
  v95 = __ROR8__((v75 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = __ROR8__(v94, 8) + (v94 ^ __ROR8__(v92, 61));
  v97 = (v95 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v98 = (__ROR8__((v95 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v97) ^ 0xE49D77DF873DBF7ELL;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0xF5A2F1B9B5D0B209;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0x5963B6C555D97F1FLL;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x61459D2AF01F24F7;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x64C31C027084DE6CLL;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0x1A2AEBE44253AF03;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = __ROR8__(v108, 8);
  *(v75 + 9) = ((v96 ^ 0xAB3042D228875C41) >> (8 * ((v65 + v76) & 7))) ^ (((v110 + v109 - ((2 * (v110 + v109)) & 0xBCFFAF874FA44A5ALL) - 0x2180283C582DDAD3) ^ 0x754F95118F55796CLL) >> (8 * ((v75 + 9) & 7))) ^ *(v65 + v76);
  return (*(a65 + 8 * ((3673 * (v76 == 0)) ^ v67)))();
}

uint64_t sub_1000E54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19)
{
  a17 = (v20 + 2083) ^ (33731311 * (&a16 ^ 0x39F6CA23));
  a18 = a10;
  a19 = &a13;
  v22 = (*(v19 + 8 * (v20 + 8432)))(&a16);
  return (*(v19 + 8 * (((a16 == v21) * ((v20 - 1617110204) & 0x2EFB ^ 0x166)) ^ v20)))(v22);
}

uint64_t sub_1000E5620@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_100190B4C();
}

uint64_t sub_1000E5634@<X0>(uint64_t a1@<X2>, unsigned __int8 *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, _BYTE *a32)
{
  *(v35 - 160) = v33;
  v36 = ((v34 ^ 0x3D47) - 1107600487) & 0x4204AEE8;
  v37 = *(&off_100477F30 + (v34 ^ 0x3D47) - 6480) - 12;
  v38 = v37[a2[11] ^ 0x1ELL];
  v39 = v37[a2[3] ^ 0xCCLL];
  v40 = *(&off_100477F30 + (v34 ^ 0x3D47) - 6485) - 12;
  v41 = v40[a2[10] ^ 0x2CLL] * (((v34 ^ 0x47) - 103) & 0xE8 | 0x13);
  v42 = v41 + 93;
  v41 -= 35;
  v43 = (v41 ^ (2 * ((v42 ^ 0x2E) & (2 * ((v42 ^ 0x2E) & (2 * ((v42 ^ 0x2E) & (2 * ((v42 ^ 0x2E) & (2 * ((v42 ^ 0x2E) & (2 * ((v42 ^ 0xE) & (2 * (v41 & 0x2F)) ^ v41 & 0x2F)) ^ v41 & 0x2F)) ^ v41 & 0x2F)) ^ v41 & 0x2F)) ^ v41 & 0x2F)) ^ (v41 & 0x2F | 0x40))));
  v44 = *(&off_100477F30 + (v34 ^ 0x3D47) - 6555) - 8;
  v45 = v44[a2[12] ^ 0xD6];
  v46 = ((v43 << 8) ^ 0xAC601968) & (v38 ^ 0xADF3FF02) | v38 & 0x97;
  v47 = v37[a2[15] ^ 0xEDLL];
  v48 = v44[a2[8] ^ 0xFLL] << 24;
  v49 = *(&off_100477F30 + (v34 ^ 0x3D47) - 6639) - 8;
  v50 = (v46 ^ 0x983DB503) & (v48 ^ 0x1BFFFFFF);
  v51 = v48 & 0xCB000000;
  LOBYTE(v48) = -109 * v40[a2[6] ^ 0xELL];
  v52 = v48 & 0x9C ^ 8;
  LOBYTE(v48) = v48 ^ (2 * ((v48 ^ 0xC) & (2 * ((v48 ^ 0xC) & (2 * ((v48 ^ 0xC) & (2 * ((v48 ^ 0xC) & (2 * ((v48 ^ 0xC) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  v53 = ((v48 << 8) ^ 0x4AFF04C1) & ((v49[a2[5] ^ 0x87] << 16) ^ 0x4A7387C1) & 0xFFFF87FF | (((v48 >> 3) & 0xF) << 11);
  v54 = -109 * v40[a2[2] ^ 0x8DLL] + 92;
  LOBYTE(v40) = v40[a2[14] ^ 0x3BLL];
  v55 = -76 - 4 * v40;
  v56 = 4 * v40 + 76 - 49 * v40;
  LOBYTE(v40) = v54 & 0x34 | 0x82;
  LODWORD(v40) = (v54 ^ (2 * ((v54 ^ 0x30) & (2 * ((v54 ^ 0x30) & (2 * ((v54 ^ 0x30) & (2 * ((v54 ^ 0x30) & (2 * ((v54 ^ 0x30) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) << 8;
  LODWORD(v40) = (v40 & 0xB900 | (v40 ^ 0xFFFF03FF) & ((((v49[a2[1] ^ 0xBCLL] << 16) ^ 0x64CA2CE4) & (v39 ^ 0x6FFFAF1A) | v39 & 0x1B) ^ 0x29F36AF2)) ^ 0x6E98397E;
  v57 = v44[*a2 ^ 0x68] << 24;
  v58 = v57 & 0xDC000000 ^ 0xF29680BA ^ v40 & (v57 ^ 0x55FFFFFF);
  LODWORD(v40) = v49[a2[9] ^ 0xE6];
  LOBYTE(v49) = v49[a2[13] ^ 0xCALL];
  LODWORD(v44) = v44[a2[4] ^ 0x1BLL];
  v59 = (v51 ^ 0x6FBE4B70 ^ v50) & ((v40 << 16) ^ 0xFF17FFFF) ^ (v40 << 16) & 0x1C0000;
  *(v35 - 148) = v59;
  v60 = (v44 ^ 0x61) << 24;
  LOBYTE(v44) = v56 + 16 * v55;
  v61 = ((((v49 ^ 6) << 16) | 0xB1D483E5) ^ (((((v45 ^ 0x5A) << 24) ^ 0x2A9402CF) & (v47 ^ 0xFF97AB1B) | v47 & 0x30) ^ 0x4840813A) & ~((v49 ^ 6) << 16)) + (v44 << 8);
  v62 = *(&off_100477F30 + (v34 ^ 0x25B6)) - 12;
  LODWORD(v40) = (v53 ^ 0x9022CB06) & (v60 ^ 0xFFFFFFC7) ^ (v60 | 0xDA9724C7) | v37[a2[7] ^ 0xD3] ^ 0xEE;
  v63 = *(&off_100477F30 + (v34 ^ 0x25DC)) - 4;
  v64 = *&v62[4 * (v45 ^ 0x16)] ^ *&v63[4 * (v49 ^ 0x14)] ^ 0xF181685F;
  v65 = *(&off_100477F30 + ((v34 ^ 0x3D47) & 0x3991227D)) - 8;
  v66 = (v64 - ((2 * v64) & 0xA6A3E16) - 2060116213) ^ *&v65[4 * (v47 ^ 0x9B)];
  v67 = *(&off_100477F30 + (v34 ^ 0x3D47) - 6569) - 4;
  LODWORD(v37) = *&v67[4 * (v44 ^ 0xC3)];
  HIDWORD(v68) = v37 ^ 0x1CE;
  LODWORD(v68) = v37 ^ 0x8904B000;
  HIDWORD(v213) = v58;
  v69 = v58 ^ ((v66 ^ (v68 >> 10)) - ((2 * (v66 ^ (v68 >> 10))) & 0xB292BDC2) - 649503007);
  *(&v213 + 4) = __PAIR64__(v61, v40);
  LODWORD(v47) = ((v69 ^ v40) - ((2 * (v69 ^ v40)) & 0xE831B89A) + 1947786317) ^ v59;
  v70 = v47 ^ v61;
  LODWORD(v44) = v47 ^ v61 ^ 0x653F9E6F;
  v71 = *&v67[4 * (BYTE1(v44) ^ 0xA4)];
  HIDWORD(v68) = v71 ^ 0x1CE;
  LODWORD(v68) = v71 ^ 0x8904B000;
  v72 = ((v68 >> 10) - ((2 * (v68 >> 10)) & 0x8985B1AE) + 1153620183) ^ *&v63[4 * (BYTE2(v44) ^ 0xC7)];
  LODWORD(v44) = (v72 - ((2 * v72) & 0xA6A3E16) - 2060116213) ^ *&v65[4 * (v44 ^ 0x5E)];
  HIDWORD(v212) = v70 ^ 0x4A30EABE;
  LODWORD(v213) = v69;
  v73 = v69 ^ *&v62[4 * (HIBYTE(v70) ^ 0xF2)] ^ (v44 - ((2 * v44) & 0x6A876110) - 1253855096);
  HIDWORD(v211) = v47 ^ 0x3FB7E395;
  LODWORD(v212) = v69 ^ v40 ^ 0x5044A9A8;
  HIDWORD(v210) = v73 ^ v212 ^ 0xF864C9F6 ^ v47 ^ 0x3FB7E395;
  v74 = HIDWORD(v210) ^ 0x88C8B1CB ^ v70 ^ 0x4A30EABE;
  LODWORD(v44) = *&v67[4 * (BYTE1(v74) ^ 0x43)];
  HIDWORD(v68) = v44 ^ 0x1CE;
  LODWORD(v68) = v44 ^ 0x8904B000;
  v75 = *&v65[4 * (BYTE4(v210) ^ 0xCB ^ BYTE4(v212) ^ 0x1D)] ^ *&v63[4 * (((HIDWORD(v210) ^ 0x88C8B1CB ^ HIDWORD(v212)) >> 16) ^ 0x82)] ^ 0xC1F7C7DC ^ (v68 >> 10);
  HIDWORD(v209) = (v75 - ((2 * v75) & 0x6A876110) - 1253855096) ^ *&v62[4 * (HIBYTE(v74) ^ 0x6A)] ^ v73;
  LODWORD(v210) = HIDWORD(v210) ^ 0x88C8B1CB ^ HIDWORD(v212);
  LODWORD(v209) = v73 ^ v212 ^ 0xF864C9F6 ^ HIDWORD(v209) ^ 0xC3AD36D6;
  HIDWORD(v208) = HIDWORD(v210) ^ 0x88C8B1CB ^ v209;
  v76 = HIDWORD(v208) ^ 0x144DB8F9 ^ v74;
  BYTE2(v72) = BYTE2(v76) ^ 0x4A;
  v77 = *&v65[4 * (v76 ^ 0xC4)] ^ *&v62[4 * (HIBYTE(v76) ^ 0xA4)];
  LODWORD(v208) = v76;
  LODWORD(v40) = v76 ^ 0x1C92804B;
  v78 = *&v67[4 * (((v76 ^ 0x804B) >> 8) ^ 0xD0)];
  HIDWORD(v68) = v78 ^ 0x1CE;
  LODWORD(v68) = v78 ^ 0x8904B000;
  v79 = (v68 >> 10) ^ *&v63[4 * (BYTE2(v72) ^ 0x10)] ^ ((v77 ^ 0x3076AF83) - 2 * ((v77 ^ 0x3076AF83) & 0x44C2D8DF ^ v77 & 8) + 1153620183);
  HIDWORD(v206) = HIDWORD(v208) ^ 0x144DB8F9 ^ v73 ^ v212 ^ 0xF864C9F6 ^ v79;
  LODWORD(v40) = v40 ^ HIDWORD(v206);
  LODWORD(v37) = *&v67[4 * (BYTE1(v40) ^ 0xB5)];
  HIDWORD(v68) = v37 ^ 0x1CE;
  LODWORD(v68) = v37 ^ 0x8904B000;
  LODWORD(v37) = ((v68 >> 10) - ((2 * (v68 >> 10)) & 0x6A876110) - 1253855096) ^ *&v62[4 * ((v40 >> 24) ^ 0x49)];
  LODWORD(v37) = (v37 - ((2 * v37) & 0x8985B1AE) + 1153620183) ^ *&v63[4 * (BYTE2(v40) ^ 0xD1)];
  HIDWORD(v207) = HIDWORD(v209) ^ 0xC3AD36D6 ^ v79;
  v80 = HIDWORD(v207) ^ *&v65[4 * (v40 ^ 0xC1)] ^ (v37 - ((2 * v37) & 0xA6A3E16) - 2060116213);
  v81 = v80 ^ HIDWORD(v208) ^ 0x144DB8F9;
  LODWORD(v206) = v40;
  LODWORD(v47) = *&v65[4 * ((v81 ^ v40) ^ 0x18)] ^ *&v62[4 * (((v81 ^ v40) >> 24) ^ 0x90)] ^ 0x3076AF83;
  HIDWORD(v204) = v81 ^ v40;
  v82 = v81 ^ v40 ^ 0x28C17697;
  LODWORD(v44) = *&v67[4 * (((v81 ^ v40 ^ 0x7697) >> 8) ^ 0xD0)];
  HIDWORD(v68) = v44 ^ 0x1CE;
  LODWORD(v68) = v44 ^ 0x8904B000;
  LODWORD(v37) = (v47 - ((2 * v47) & 0x8985B1AE) + 1153620183) ^ *&v63[4 * (((v81 ^ v40) >> 16) ^ 9)] ^ (v68 >> 10);
  LODWORD(v207) = v73 ^ v212 ^ 0xF864C9F6 ^ v79;
  v83 = v37 ^ v207 ^ 0x8DF38B2;
  v205 = __PAIR64__(v80, v81);
  HIDWORD(v203) = v81 ^ v83;
  LODWORD(v204) = v37 ^ v207;
  LODWORD(v44) = v81 ^ v83 ^ 0x3B3DAA49;
  LODWORD(v40) = *&v67[4 * (((v82 ^ v81 ^ v83 ^ 0xAA49) >> 8) ^ 0x69)];
  HIDWORD(v68) = v40 ^ 0x1CE;
  LODWORD(v68) = v40 ^ 0x8904B000;
  v84 = *&v65[4 * ((v82 ^ v81 ^ v83 ^ 0x49) ^ 0x1F)] ^ *&v63[4 * (((v82 ^ v44) >> 16) ^ 0x2D)] ^ (v68 >> 10);
  HIDWORD(v202) = v80 ^ v37;
  LODWORD(v203) = v82 ^ v44;
  LODWORD(v202) = v80 ^ v37 ^ *&v62[4 * (((v82 ^ v44) >> 24) ^ 0x21)] ^ ((v84 ^ 0xC1F7C7DC) - 2 * ((v84 ^ 0xC1F7C7DC) & 0x3543B08A ^ v84 & 2) - 1253855096);
  HIDWORD(v201) = v202 ^ 0xCD000000 ^ v83;
  v85 = HIDWORD(v201) ^ 0x7B000000 ^ v82;
  v86 = *&v67[4 * (((v202 ^ v83 ^ v82) >> 8) ^ 0xD0)];
  HIDWORD(v68) = v86 ^ 0x1CE;
  LODWORD(v68) = v86 ^ 0x8904B000;
  v87 = *&v65[4 * ((v202 ^ v83 ^ v82) ^ 0x8F)] ^ *&v63[4 * (BYTE2(v85) ^ 0xC8)] ^ 0xC1F7C7DC ^ (v68 >> 10);
  LODWORD(v40) = (v87 - ((2 * v87) & 0x6A876110) - 1253855096) ^ *&v62[4 * (HIBYTE(v85) ^ 0xB8)] ^ v202 ^ 0xCD000000;
  v88 = v40 ^ v44;
  v89 = v85 ^ v40 ^ v44;
  LODWORD(v47) = *&v67[4 * (((v89 ^ 0x4EEB) >> 8) ^ 0x69)];
  HIDWORD(v68) = v47 ^ 0x1CE;
  LODWORD(v68) = v47 ^ 0x8904B000;
  LODWORD(v47) = *&v63[4 * (((v89 ^ 0x5C014EEB) >> 16) ^ 0x32)] ^ *&v65[4 * (v89 ^ 0x3A)] ^ 0xC1F7C7DC ^ (v68 >> 10);
  v200 = __PAIR64__(v40, v89);
  v90 = v40 ^ *&v62[4 * (HIBYTE(v89) ^ 0xCA)] ^ (v47 - ((2 * v47) & 0x6A876110) - 1253855096);
  LODWORD(v199) = HIDWORD(v201) ^ 0x7B000000 ^ v40;
  v91 = v90 ^ v199 ^ 0x2D16C792;
  LODWORD(v201) = v85;
  v92 = v91 ^ v85 ^ 0xCED813D9;
  LODWORD(v198) = v91 ^ v85 ^ 0x8B0889B7;
  LODWORD(v47) = *&v67[4 * (BYTE1(v92) ^ 0x4A)];
  HIDWORD(v68) = v47 ^ 0x1CE;
  LODWORD(v68) = v47 ^ 0x8904B000;
  LODWORD(v47) = ((v68 >> 10) - ((2 * (v68 >> 10)) & 0x6A876110) - 1253855096) ^ *&v62[4 * (((v91 ^ v85) >> 24) ^ 0x33)];
  LODWORD(v47) = (v47 - ((2 * v47) & 0x8985B1AE) + 1153620183) ^ *&v63[4 * (BYTE2(v92) ^ 0x18)];
  LODWORD(v62) = (v47 - ((2 * v47) & 0xA6A3E16) - 2060116213) ^ *&v65[4 * ((v90 ^ BYTE4(v201) ^ v40 ^ 0x92 ^ BYTE4(v201) ^ v82) ^ 0x38)];
  v93 = *(&off_100477F30 + (v34 ^ 0x25F8)) - 4;
  v94 = *(&off_100477F30 + (v34 ^ 0x3D47) - 6651);
  v95 = ((v93[v32[13] ^ 0xC7] ^ 0x34) << 16) | ((*(v94 + (v32[12] ^ 0x18)) ^ 0x37) << 24);
  v96 = *(&off_100477F30 + (v34 ^ 0x2466)) - 12;
  v197 = v94;
  LODWORD(v40) = v96[v32[11] ^ 0xEALL] ^ 5 | ((v93[v32[9] ^ 0xD2] ^ 0xBC) << 16) | ((*(v94 + (v32[8] ^ 0x83)) ^ 0x7A) << 24);
  LODWORD(v63) = *(v94 + (*v32 ^ 0x1BLL)) ^ 0x3A;
  LODWORD(v47) = v96[v32[7] ^ 0x74] ^ 0x1B | ((*(v94 + (v32[4] ^ 6)) ^ 0x33333333) << 24) | ((v93[v32[5] ^ 0x46] ^ 0x5A) << 16);
  v97 = *(&off_100477F30 + ((v34 ^ 0x3D47) & 0xFD544123)) - 8;
  v196 = v96;
  v98 = (v96[v32[15] ^ 0x9ELL] ^ 0x51 | v95 | ((v97[v32[14] ^ 0x8DLL] ^ 0x24) << 8)) ^ 0x7C7C7CB5;
  HIDWORD(v195) = (((*(v35 - 160) ^ 0x442D90B7) + 514254226) ^ ((*(v35 - 160) ^ 0xF254B540) - 1461731225) ^ ((*(v35 - 160) ^ 0xBBB5B79A) - 515980611)) + 1876508861;
  LODWORD(v195) = *(v35 - 148) ^ 0x885D6950;
  LODWORD(v194) = HIDWORD(v201) ^ 0x7B000000 ^ v44;
  LODWORD(v193) = v88 ^ 0x318B55BD;
  HIDWORD(v193) = v62 ^ v199 ^ 0x2D16C792;
  HIDWORD(v192) = v88 ^ 0x1F6DFFAE;
  HIDWORD(v198) = v91;
  HIDWORD(v191) = v91 ^ v88 ^ 0xA623E46C ^ HIDWORD(v193);
  LODWORD(v192) = v91 ^ v88;
  v99 = (v40 | ((v97[v32[10] ^ 0x56] ^ 0x98) << 8)) ^ 0x7C7C7C7C;
  LODWORD(v37) = (v47 | ((v97[v32[6] ^ 0xCBLL] ^ 0xC) << 8)) ^ 0x7C7C7C7C;
  v100 = (v96[v32[3] ^ 0xEALL] ^ 5 | (v63 << 24) | ((v97[v32[2] ^ 0x13] ^ 0x92) << 8) | ((v93[v32[1] ^ 0x88] ^ 0x2A) << 16)) ^ 0x7C7C7C7C;
  HIDWORD(v199) = v90;
  LODWORD(v191) = v62 ^ v90;
  *(v35 - 148) = 0;
  v101 = __ROR8__(a31 & ((v36 - 96021122) & 0x5B91FFF ^ 0xFFFFFFFFFFFFE606), 8);
  v102 = (v101 + 0x568FD0F9DF82F1E3) ^ 0x85215C3045409F44;
  v103 = ((((v101 + 0x568FD0F9DF82F1E3) ^ 0x315FDBFEB957105EuLL) >> (((((v34 ^ 0x47) - 103) & 0xE8) + 57) ^ 0xB1u)) + v102 + (((v101 + 0x568FD0F9DF82F1E3) ^ 0x315FDBFEB957105ELL) << 56)) ^ 0x8174304F61371433;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x48DE3944125A0254;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x57D072DFC3A5F657;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (v108 + __ROR8__(v107, 8)) ^ 0xF2620266DFD8DE82;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (v110 + __ROR8__(v109, 8)) ^ 0xB9BEF0CD865D21FDLL;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x6E1E19DDB33CB23ALL;
  LOBYTE(v57) = 8 * (a31 & 7);
  v114 = ((__ROR8__(v113, 8) + (v113 ^ __ROR8__(v112, 61))) ^ 0x3532CD90FD5B1622uLL) >> v57;
  v115 = __ROR8__((a31 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = (v115 + 0x568FD0F9DF82F1E3) ^ 0x85215C3045409F44;
  v117 = (__ROR8__((v115 + 0x568FD0F9DF82F1E3) ^ 0x315FDBFEB957105ELL, 8) + v116) ^ 0x8174304F61371433;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (v118 + __ROR8__(v117, 8)) ^ 0x48DE3944125A0254;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x57D072DFC3A5F657;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0xF2620266DFD8DE82;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xB9BEF0CD865D21FDLL;
  v127 = __ROR8__(v124, 61);
  v126 = v125 ^ v127;
  v128 = ((v125 ^ v127) + (v125 >> 8) + (v125 << 56)) ^ 0x6E1E19DDB33CB23ALL;
  v129 = (__ROR8__(v128, 8) + (v128 ^ __ROR8__(v126, 61))) ^ 0x3532CD90FD5B1622;
  v130 = v129 >> v57;
  LOBYTE(v57) = v57 ^ 0x3F;
  v131 = v114 + 2 * (v129 << v57);
  v132 = *a31;
  v133 = (__ROR8__(a31 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x568FD0F9DF82F1E3;
  v134 = v133 ^ 0x85215C3045409F44;
  v135 = (__ROR8__(v133 ^ 0x315FDBFEB957105ELL, 8) + (v133 ^ 0x85215C3045409F44)) ^ 0x8174304F61371433;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = (v136 + __ROR8__(v135, 8)) ^ 0x48DE3944125A0254;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (v138 + __ROR8__(v137, 8)) ^ 0x57D072DFC3A5F657;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (v140 + __ROR8__(v139, 8)) ^ 0xF2620266DFD8DE82;
  v142 = __ROR8__(v141, 8);
  v143 = v141 ^ __ROR8__(v140, 61);
  v144 = (v142 + v143) ^ 0xB9BEF0CD865D21FDLL;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = (v145 + __ROR8__(v144, 8)) ^ 0x6E1E19DDB33CB23ALL;
  v147 = v130 + 2 * ((((v146 ^ __ROR8__(v145, 61)) + __ROR8__(v146, 8)) ^ 0x3532CD90FD5B1622) << v57);
  LODWORD(v146) = ((*(v197 + (v114 ^ 0x66)) ^ 0x95) << 24) | ((v93[BYTE1(v131) ^ 0x91] ^ 0xD8) << 16) | ((v97[BYTE2(v131) ^ 0xD9] ^ 0xB7) << 8) | v96[BYTE3(v131) ^ 9] ^ 0xC7;
  v148 = ((*(v197 + (BYTE4(v131) ^ 0x67)) ^ 0x12) << 24) | ((v93[BYTE5(v131) ^ 0x70] ^ 0xDB) << 16) | ((v97[BYTE6(v131) ^ 0x8ALL] ^ 0x5C) << 8) | v96[HIBYTE(v131) ^ 0xFA] ^ 0xCC;
  LODWORD(v130) = ((*(v197 + (v130 ^ 0xD8)) ^ 0x36) << 24) | ((v93[BYTE1(v147) ^ 0x10] ^ 0xB6) << 16) | ((v97[BYTE2(v147) ^ 0xC0] ^ 0x81) << 8) | v96[BYTE3(v147) ^ 0xECLL] ^ 0xC8;
  HIDWORD(v127) = v97[BYTE6(v147) ^ 0xEALL];
  LODWORD(v127) = (HIDWORD(v127) ^ 0x40) << 24;
  v149 = ((*(v197 + (BYTE4(v147) ^ 0xCLL)) ^ 0x4E) << 24) | ((v93[BYTE5(v147) ^ 0x38] ^ 0xAC) << 16) | ((((((v127 >> 26) ^ 0x91) >> 6) | (4 * ((v127 >> 26) ^ 0x91))) ^ 0x7D) << 8) | v96[HIBYTE(v147) ^ 0x2F] ^ 0x9A;
  *(v35 - 224) = 7;
  v150 = *(a31 + 7) ^ 0xDLL;
  *(v35 - 232) = 11;
  LODWORD(v150) = v96[v150];
  *(v35 - 168) = 13;
  LODWORD(v131) = v96[*(a31 + 11) ^ 0x8ALL];
  v151 = *(a31 + 13) ^ 0xCFLL;
  *(v35 - 160) = 2;
  LODWORD(v151) = v93[v151] ^ 0xC6;
  v152 = *(a31 + 2) ^ 0x77;
  *(v35 - 176) = 15;
  LODWORD(v152) = v97[v152] ^ 0x93;
  *(v35 - 200) = 1;
  LODWORD(v151) = v96[*(a31 + 15) ^ 0xA3] ^ 0x51 | (v151 << 16);
  LODWORD(v152) = (v152 << 8) | ((v93[*(a31 + 1) ^ 0x79] ^ 0x16) << 16);
  *(v35 - 184) = 12;
  LODWORD(v151) = v151 | ((*(v197 + (*(a31 + 12) ^ 0xE8)) ^ 0x26) << 24);
  *(v35 - 256) = 10;
  LODWORD(v142) = v131 ^ 0x51 | ((v97[*(a31 + 10) ^ 0xCBLL] ^ 0xC) << 8);
  *(v35 - 216) = 3;
  LODWORD(v131) = v96[*(a31 + 3) ^ 0xE5];
  *(v35 - 240) = 4;
  v153 = *(a31 + 4);
  *(v35 - 192) = 6;
  LODWORD(v150) = v150 ^ 0x51 | ((*(v197 + (v153 ^ 0x81)) ^ 0xF0) << 24) | ((v97[*(a31 + 6) ^ 0xE2] ^ 0xD4) << 8);
  *(v35 - 208) = 14;
  LODWORD(v151) = v151 | ((v97[*(a31 + 14) ^ 0x99] ^ 0x58) << 8);
  LODWORD(v129) = v131 ^ 0x51 | v152 | ((*(v197 + (v132 ^ 0xF6)) ^ 0x22222222) << 24);
  LODWORD(v152) = v142 | ((*(v197 + (*(a31 + 8) ^ 0xF7)) ^ 0xA5) << 24);
  *(v35 - 248) = 5;
  LODWORD(v130) = v130 ^ v99 ^ (v152 | ((v93[*(a31 + 9) ^ 0xC5] ^ 0xEA) << 16));
  v154 = ((v146 ^ v100 ^ v129) - 649503007 - ((2 * (v146 ^ v100 ^ v129)) & 0xB292BDC2)) ^ HIDWORD(v213);
  LODWORD(v130) = v195 ^ (v130 + 1947786317 - ((2 * v130) & 0xE831B89A));
  LODWORD(v129) = DWORD1(v213) ^ v37 ^ (v150 | ((v93[*(a31 + 5) ^ 0x5ELL] ^ 0x97) << 16)) ^ 0x351AA66E ^ v148;
  LODWORD(v37) = DWORD2(v213) ^ v98 ^ v151 ^ 0x56506F87;
  v155 = *(&off_100477F30 + (v36 ^ 0x241E));
  LODWORD(v150) = v37 ^ v149;
  v156 = *(&off_100477F30 + (v36 ^ 0x259B)) - 12;
  v157 = *(&off_100477F30 + v36 - 9231) - 4;
  LODWORD(v152) = *&v157[4 * ((v37 ^ v149) >> 16)];
  LODWORD(v37) = *(v155 + 4 * (v154 ^ 0x1Du)) ^ 0x5B8985CE ^ *&v156[4 * ((v37 ^ v149) >> 8)];
  LODWORD(v151) = *&v157[4 * BYTE2(v129)];
  HIDWORD(v127) = v152 ^ 0x14;
  LODWORD(v127) = v152 ^ 0x3AA4CEC0;
  LODWORD(v152) = v127 >> 6;
  HIDWORD(v127) = v151 ^ 0x14;
  LODWORD(v127) = v151 ^ 0x3AA4CEC0;
  LODWORD(v151) = ((v127 >> 6) + 1249955843 - ((2 * (v127 >> 6)) & 0x9501A006)) ^ *&v156[4 * BYTE1(v130)];
  LODWORD(v146) = *&v157[4 * BYTE2(v130)];
  HIDWORD(v127) = v146 ^ 0x14;
  LODWORD(v127) = v146 ^ 0x3AA4CEC0;
  LODWORD(v142) = v127 >> 6;
  v154 ^= 0x4848C858u;
  v158 = *&v157[4 * BYTE2(v154)];
  HIDWORD(v127) = v158 ^ 0x14;
  LODWORD(v127) = v158 ^ 0x3AA4CEC0;
  LODWORD(v152) = *(v155 + 4 * v129) ^ (v152 + 285824461 - ((2 * v152) & 0x2212AB9A));
  v159 = *&v156[4 * BYTE1(v129)] ^ *(v155 + 4 * v130) ^ (v127 >> 6);
  LODWORD(v151) = (v151 + 285824461 - ((2 * v151) & 0x2212AB9A)) ^ *(v155 + 4 * v150);
  LODWORD(v152) = *&v156[4 * BYTE1(v154)] ^ (v152 + 1249955843 - ((2 * v152) & 0x9501A006));
  v160 = *(&off_100477F30 + (v36 ^ 0x24E5)) - 4;
  LODWORD(v129) = (v37 - 1088813785 - ((2 * v37) & 0x7E340A4E)) ^ v212 ^ *&v160[4 * BYTE3(v129)] ^ v142;
  LODWORD(v37) = *&v160[4 * HIBYTE(v154)] ^ v213 ^ (v151 - 1088813785 - ((2 * v151) & 0x7E340A4E));
  LODWORD(v150) = *&v160[4 * BYTE3(v150)] ^ HIDWORD(v212) ^ ((v159 ^ 0x5B8985CE) - 1088813785 - 2 * ((v159 ^ 0x5B8985CE) & 0x3F1A0537 ^ v159 & 0x10));
  LODWORD(v151) = *&v160[4 * BYTE3(v130)] ^ HIDWORD(v211) ^ (v152 - 1088813785 - ((2 * v152) & 0x7E340A4E));
  LODWORD(v130) = (((v150 ^ 0x2EAFF13C) - (v150 ^ 0x85D15116)) ^ 0xFFFFFFFC) + (v150 ^ 0x2EAFF13C);
  LODWORD(v150) = *&v157[4 * ((v130 ^ 0x8C0045) >> 16)];
  HIDWORD(v127) = v150 ^ 0x14;
  LODWORD(v127) = v150 ^ 0x3AA4CEC0;
  LODWORD(v142) = ((v127 >> 6) + 285824461 - ((2 * (v127 >> 6)) & 0x2212AB9A)) ^ *(v155 + 4 * (v129 ^ 0x43u));
  LODWORD(v150) = v151 ^ 0x571001F;
  v161 = *&v156[4 * BYTE1(v151)] ^ *(v155 + 4 * (v130 ^ 0x45u));
  LODWORD(v131) = *&v160[4 * ((v129 ^ 0x41241443) >> 24)] ^ 0xAE1350EA ^ *(v155 + 4 * (v37 ^ 0x22u));
  LODWORD(v96) = *(v155 + 4 * (v151 ^ 0x1Fu)) ^ *&v160[4 * BYTE3(v130)] ^ 0xAE1350EA;
  LODWORD(v151) = *&v157[4 * ((v129 ^ 0x41241443) >> 16)];
  HIDWORD(v127) = v151 ^ 0x14;
  LODWORD(v127) = v151 ^ 0x3AA4CEC0;
  LODWORD(v151) = *&v160[4 * ((v37 ^ 0x870D2C22) >> 24)];
  v162 = (v151 ^ 0xBF1A0527) + (v161 ^ (v127 >> 6) ^ 0x756F2FDD) + ((2 * ((v161 ^ (v127 >> 6) ^ 0x756F2FDD) & (v151 ^ 0x1EB6BAB) ^ (v161 ^ (v127 >> 6)) & 0x3EF16E8C)) ^ 0x973DA2E7);
  LODWORD(v151) = (v142 + 1249955843 - ((2 * v142) & 0x9501A006)) ^ *&v156[4 * ((v37 ^ 0x2C22) >> 8)];
  LODWORD(v152) = *&v157[4 * BYTE2(v150)];
  HIDWORD(v127) = v152 ^ 0x14;
  LODWORD(v127) = v152 ^ 0x3AA4CEC0;
  LODWORD(v152) = v127 >> 6;
  LODWORD(v37) = *&v157[4 * (BYTE2(v37) ^ 0x81)];
  HIDWORD(v127) = v37 ^ 0x14;
  LODWORD(v127) = v37 ^ 0x3AA4CEC0;
  LODWORD(v37) = (v96 + 1249955843 - ((2 * v96) & 0x9501A006)) ^ v210 ^ *&v156[4 * (BYTE1(v129) ^ 0x93)] ^ (v127 >> 6);
  LODWORD(v129) = BYTE3(v150);
  LODWORD(v150) = v162 + 1;
  v163 = v73 ^ v212 ^ *&v156[4 * (BYTE1(v130) ^ 0x87)] ^ (v131 + 1249955843 - ((2 * v131) & 0x9501A006)) ^ 0xA797EBB0 ^ v152;
  LODWORD(v129) = HIDWORD(v210) ^ *&v160[4 * v129] ^ 0xDAE38AD ^ (v151 - 1088813785 - ((2 * v151) & 0x7E340A4E));
  LODWORD(v96) = v37 ^ 0x579B45C1;
  LODWORD(v131) = *&v156[4 * ((v37 ^ 0x45C1) >> 8)];
  LODWORD(v37) = *&v157[4 * (BYTE2(v37) ^ 0x17)];
  LODWORD(v130) = v73 ^ 0x9F79C814 ^ v150;
  HIDWORD(v127) = v37 ^ 0x14;
  LODWORD(v127) = v37 ^ 0x3AA4CEC0;
  LODWORD(v151) = v127 >> 6;
  LODWORD(v37) = *&v160[4 * HIBYTE(v163)] ^ v131;
  LODWORD(v150) = *&v157[4 * BYTE2(v130)];
  HIDWORD(v127) = v150 ^ 0x14;
  LODWORD(v127) = v150 ^ 0x3AA4CEC0;
  LODWORD(v131) = (v127 >> 6) - 1088813785 - ((2 * (v127 >> 6)) & 0x7E340A4E);
  LODWORD(v152) = *&v157[4 * BYTE2(v163)];
  HIDWORD(v127) = v152 ^ 0x14;
  LODWORD(v127) = v152 ^ 0x3AA4CEC0;
  LODWORD(v131) = v131 ^ *&v160[4 * (v96 >> 24)];
  LODWORD(v131) = (v131 + 285824461 - ((2 * v131) & 0x2212AB9A)) ^ *(v155 + 4 * v129);
  LODWORD(v151) = *&v160[4 * BYTE3(v129)] ^ (v151 - 1088813785 - ((2 * v151) & 0x7E340A4E));
  LODWORD(v151) = (v151 + 1249955843 - ((2 * v151) & 0x9501A006)) ^ *&v156[4 * BYTE1(v130)];
  LODWORD(v96) = *&v160[4 * BYTE3(v130)] ^ *(v155 + 4 * v96) ^ (v127 >> 6) ^ 0xEEDFCFE2;
  LODWORD(v152) = *&v156[4 * BYTE1(v129)] ^ 0x24AAE518;
  LODWORD(v96) = (v152 ^ -v152 ^ (v96 - (v96 ^ v152))) + v96;
  LODWORD(v152) = *(v155 + 4 * v130);
  LODWORD(v130) = *(v155 + 4 * v163) ^ HIDWORD(v208) ^ (v151 + 285824461 - ((2 * v151) & 0x2212AB9A));
  LODWORD(v151) = v209 ^ v152 ^ ((v37 ^ 0xF59AD524) + 285824461 - 2 * ((v37 ^ 0xF59AD524) & 0x110955CF ^ v37 & 2));
  v164 = v208 ^ *&v156[4 * BYTE1(v163)] ^ 0x99CF5618 ^ (v131 + 1249955843 - ((2 * v131) & 0x9501A006));
  LODWORD(v150) = *&v157[4 * BYTE2(v164)];
  HIDWORD(v127) = v150 ^ 0x14;
  LODWORD(v127) = v150 ^ 0x3AA4CEC0;
  LODWORD(v131) = v127 >> 6;
  LODWORD(v152) = *&v157[4 * ((v130 ^ 0x8DB936D4) >> 16)];
  HIDWORD(v127) = v152 ^ 0x14;
  LODWORD(v127) = v152 ^ 0x3AA4CEC0;
  BYTE1(v142) = BYTE1(v96) ^ BYTE5(v209);
  LODWORD(v96) = v96 ^ HIDWORD(v209) ^ 0xBA670131;
  LODWORD(v152) = ((v127 >> 6) + 285824461 - ((2 * (v127 >> 6)) & 0x2212AB9A)) ^ *(v155 + 4 * v96);
  v165 = *&v157[4 * BYTE2(v129)];
  LODWORD(v129) = v151 ^ (v165 >> 6) ^ 0xF19B17D;
  LODWORD(v151) = *&v157[4 * BYTE2(v129)];
  HIDWORD(v127) = v151 ^ 0x14;
  LODWORD(v127) = v151 ^ 0x3AA4CEC0;
  LODWORD(v151) = ((v127 >> 6) + 285824461 - ((2 * (v127 >> 6)) & 0x2212AB9A)) ^ *(v155 + 4 * v164);
  LODWORD(v131) = (v131 - 1088813785 - ((2 * v131) & 0x7E340A4E)) ^ *&v160[4 * ((v130 ^ 0x8DB936D4) >> 24)];
  LODWORD(v153) = *&v157[4 * BYTE2(v96)];
  HIDWORD(v127) = v153 ^ 0x14;
  LODWORD(v127) = v153 ^ 0x3AA4CEC0;
  LODWORD(v96) = (v151 - 1088813785 - ((2 * v151) & 0x7E340A4E)) ^ *&v160[4 * (v96 >> 24)];
  LODWORD(v151) = (v152 + 1249955843 - ((2 * v152) & 0x9501A006)) ^ *&v156[4 * BYTE1(v164)];
  LODWORD(v131) = (v131 + 285824461 - ((2 * v131) & 0x2212AB9A)) ^ *(v155 + 4 * v129);
  v166 = ((v127 >> 6) - 1088813785 - ((2 * (v127 >> 6)) & 0x7E340A4E)) ^ *&v160[4 * HIBYTE(v164)];
  LODWORD(v150) = (v166 + 285824461 - ((2 * v166) & 0x2212AB9A)) ^ *(v155 + 4 * (v130 ^ 0xD4u));
  LODWORD(v151) = *&v160[4 * ((v129 ^ (v165 << 26)) >> 24)] ^ v207 ^ (v151 - 1088813784 + ~((2 * v151) & 0x7E340A4E));
  LODWORD(v152) = *&v156[4 * BYTE1(v129)];
  LODWORD(v129) = HIDWORD(v207) ^ *&v156[4 * (BYTE1(v130) ^ 0xB1)] ^ 0x603254D1 ^ (v96 + 1249955844 + ~((2 * v96) & 0x9501A006));
  LODWORD(v130) = v206 ^ v152 ^ 0x7444B31D ^ (v150 + 1249955843 - ((2 * v150) & 0x9501A006));
  LODWORD(v150) = *&v157[4 * (BYTE2(v151) ^ 0xED)];
  HIDWORD(v127) = v150 ^ 0x14;
  LODWORD(v127) = v150 ^ 0x3AA4CEC0;
  LODWORD(v150) = HIDWORD(v206) ^ *&v156[4 * (BYTE1(v142) ^ 0x86)] ^ 0xA6357FBA ^ (v131 + 1249955843 - ((2 * v131) & 0x9501A006));
  LODWORD(v131) = *&v160[4 * BYTE3(v150)] ^ *(v155 + 4 * (v151 ^ 0x63u)) ^ (*&v157[4 * BYTE2(v130)] << 26) ^ (*&v157[4 * BYTE2(v130)] >> 6);
  LODWORD(v152) = *&v156[4 * (BYTE1(v151) ^ 0x6C)] ^ *(v155 + 4 * v150) ^ 0x5B8985CE;
  LODWORD(v142) = (v131 ^ 0xFEF9C3D1) + 1249955843 - 2 * ((v131 ^ 0xFEF9C3D1) & 0x4A80D00F ^ v131 & 0xC);
  LODWORD(v96) = *&v160[4 * BYTE3(v129)] ^ ((v127 >> 6) - 1088813785 - ((2 * (v127 >> 6)) & 0x7E340A4E));
  LODWORD(v96) = (v96 + 285824461 - ((2 * v96) & 0x2212AB9A)) ^ *(v155 + 4 * v130);
  LODWORD(v131) = *&v156[4 * BYTE1(v130)] ^ 0xF59AD524 ^ *&v160[4 * (BYTE3(v151) ^ 0x68)];
  LODWORD(v151) = *&v157[4 * BYTE2(v129)];
  HIDWORD(v127) = v151 ^ 0x14;
  LODWORD(v127) = v151 ^ 0x3AA4CEC0;
  v167 = v127 >> 6;
  LODWORD(v151) = *&v157[4 * BYTE2(v150)];
  HIDWORD(v127) = v151 ^ 0x14;
  LODWORD(v127) = v151 ^ 0x3AA4CEC0;
  LODWORD(v151) = HIDWORD(v205) ^ v207 ^ *(v155 + 4 * v129) ^ (v127 >> 6) ^ (v131 + 285824461 - ((2 * v131) & 0x2212AB9A));
  LODWORD(v131) = *&v160[4 * BYTE3(v130)];
  LODWORD(v130) = v205 ^ *&v156[4 * BYTE1(v129)] ^ 0x8EF4092D ^ v142;
  LODWORD(v152) = HIDWORD(v204) ^ v131 ^ v167 ^ 0xAD9CA0C4 ^ (v152 - 1088813785 - ((2 * v152) & 0x7E340A4E));
  LODWORD(v129) = *&v156[4 * BYTE1(v150)] ^ HIDWORD(v205);
  LODWORD(v150) = *&v157[4 * BYTE2(v152)];
  LODWORD(v129) = v129 ^ (v96 + 1249955843 - ((2 * v96) & 0x9501A006));
  HIDWORD(v127) = v150 ^ 0x14;
  LODWORD(v127) = v150 ^ 0x3AA4CEC0;
  LODWORD(v96) = *&v160[4 * (BYTE3(v129) ^ 0x40)] ^ *(v155 + 4 * v152) ^ 0xAE1350EA;
  LODWORD(v131) = ((v127 >> 6) + 1249955843 - ((2 * (v127 >> 6)) & 0x9501A006)) ^ *&v156[4 * (BYTE1(v129) ^ 0x1A)];
  LODWORD(v150) = v96 + 1249955843 - ((2 * v96) & 0x9501A006);
  LOWORD(v153) = v151 ^ 0x6C63;
  LODWORD(v96) = *&v160[4 * ((v151 ^ 0x7F616C63) >> 24)] ^ *(v155 + 4 * (v129 ^ 0xF4u));
  LODWORD(v129) = *&v157[4 * (BYTE2(v129) ^ 0x2C)];
  HIDWORD(v127) = v129 ^ 0x14;
  LODWORD(v127) = v129 ^ 0x3AA4CEC0;
  LODWORD(v129) = ((v127 >> 6) - 1088813785 - ((2 * (v127 >> 6)) & 0x7E340A4E)) ^ *&v160[4 * BYTE3(v152)];
  LODWORD(v151) = *&v157[4 * (BYTE2(v151) ^ 0xED)];
  HIDWORD(v127) = v151 ^ 0x14;
  LODWORD(v127) = v151 ^ 0x3AA4CEC0;
  LODWORD(v142) = v127 >> 6;
  LODWORD(v131) = (v131 - 1088813785 - ((2 * v131) & 0x7E340A4E)) ^ *&v160[4 * BYTE3(v130)];
  LODWORD(v151) = (v129 + 285824461 - ((2 * v129) & 0x2212AB9A)) ^ *(v155 + 4 * v130);
  v168 = *&v157[4 * BYTE2(v130)];
  HIDWORD(v127) = v168 ^ 0x14;
  LODWORD(v127) = v168 ^ 0x3AA4CEC0;
  v169 = v151 + 1249955843 - ((2 * v151) & 0x9501A006);
  LODWORD(v151) = *(v155 + 4 * v153) ^ HIDWORD(v203) ^ (v131 + 285824461 - ((2 * v131) & 0x2212AB9A));
  LODWORD(v142) = *&v156[4 * BYTE1(v130)] ^ HIDWORD(v202) ^ v142 ^ v150;
  LODWORD(v150) = v204 ^ *&v156[4 * BYTE1(v152)] ^ (v127 >> 6) ^ 0x24F32246 ^ ((v96 ^ 0xAE1350EA) + 1249955843 - 2 * ((v96 ^ 0xAE1350EA) & 0x4A80D013 ^ v96 & 0x10));
  LODWORD(v152) = v203 ^ *&v156[4 * BYTE1(v153)] ^ 0x1CB86FC3 ^ v169;
  LODWORD(v130) = *&v157[4 * BYTE2(v150)];
  HIDWORD(v127) = v130 ^ 0x14;
  LODWORD(v127) = v130 ^ 0x3AA4CEC0;
  LODWORD(v130) = ((v127 >> 6) + 285824461 - ((2 * (v127 >> 6)) & 0x2212AB9A)) ^ *(v155 + 4 * ((v203 ^ v156[4 * BYTE1(v153)]) ^ 0xC3u ^ v169));
  LODWORD(v130) = (v130 - 1088813785 - ((2 * v130) & 0x7E340A4E)) ^ *&v160[4 * (BYTE3(v142) ^ 0xC)];
  LODWORD(v131) = *&v157[4 * BYTE2(v152)];
  HIDWORD(v127) = v131 ^ 0x14;
  LODWORD(v127) = v131 ^ 0x3AA4CEC0;
  LODWORD(v131) = v127 >> 6;
  v170 = *&v157[4 * ((v151 ^ 0xF5F48E2D) >> 16)];
  HIDWORD(v127) = v170 ^ 0x14;
  LODWORD(v127) = v170 ^ 0x3AA4CEC0;
  LODWORD(v96) = *(v155 + 4 * v150) ^ *&v160[4 * ((v151 ^ 0xF5F48E2D) >> 24)] ^ v131;
  LODWORD(v131) = *&v160[4 * BYTE3(v150)] ^ (v127 >> 6) ^ *&v156[4 * BYTE1(v152)];
  v171 = v131 ^ 0xF59AD524;
  LODWORD(v37) = (v131 ^ 0xF59AD524) & 0x110955CF ^ v131 & 2;
  LODWORD(v131) = *&v157[4 * (BYTE2(v142) ^ 0x32)];
  HIDWORD(v127) = v131 ^ 0x14;
  LODWORD(v127) = v131 ^ 0x3AA4CEC0;
  LODWORD(v96) = v194 ^ *&v156[4 * (BYTE1(v142) ^ 0x54)] ^ ((v96 ^ 0xAE1350EA) + 1249955843 - 2 * ((v96 ^ 0xAE1350EA) & 0x4A80D013 ^ v96 & 0x10));
  LODWORD(v130) = v202 ^ *&v156[4 * (BYTE1(v151) ^ 9)] ^ 0x9A2C1AF4 ^ (v130 + 1249955843 - ((2 * v130) & 0x9501A006));
  LODWORD(v37) = HIDWORD(v201) ^ *(v155 + 4 * (v142 ^ 0xD1u)) ^ 0x2C2C1AF4 ^ (v171 + 285824461 - 2 * v37);
  LODWORD(v151) = v201 ^ *&v156[4 * BYTE1(v150)] ^ *(v155 + 4 * (v151 ^ 0x2Du)) ^ ((v127 >> 6) + 285824461 - ((2 * (v127 >> 6)) & 0x2212AB9A)) ^ 0x70C70377;
  LOWORD(v150) = v96 ^ 0xA364;
  LODWORD(v151) = v151 ^ *&v160[4 * BYTE3(v152)];
  LODWORD(v131) = *(v155 + 4 * v37) ^ 0xAE1350EA ^ *&v160[4 * ((v96 ^ 0xCE45A364) >> 24)];
  LODWORD(v96) = *&v157[4 * (BYTE2(v96) ^ 0xC9)];
  HIDWORD(v127) = v96 ^ 0x14;
  LODWORD(v127) = v96 ^ 0x3AA4CEC0;
  LODWORD(v96) = *&v160[4 * (v37 >> 24)] ^ *&v156[4 * BYTE1(v151)] ^ (v127 >> 6);
  LODWORD(v152) = *&v157[4 * BYTE2(v130)];
  HIDWORD(v127) = v152 ^ 0x14;
  LODWORD(v127) = v152 ^ 0x3AA4CEC0;
  LODWORD(v152) = *(v155 + 4 * v150) ^ *&v160[4 * BYTE3(v151)] ^ 0xAE1350EA ^ (v127 >> 6);
  LODWORD(v142) = *&v157[4 * BYTE2(v151)];
  HIDWORD(v127) = v142 ^ 0x14;
  LODWORD(v127) = v142 ^ 0x3AA4CEC0;
  LODWORD(v131) = *&v156[4 * BYTE1(v130)] ^ (v127 >> 6) ^ (v131 + 1249955843 - ((2 * v131) & 0x9501A006));
  LODWORD(v142) = *&v157[4 * BYTE2(v37)];
  HIDWORD(v127) = v142 ^ 0x14;
  LODWORD(v127) = v142 ^ 0x3AA4CEC0;
  LODWORD(v151) = ((v127 >> 6) + 285824461 - ((2 * (v127 >> 6)) & 0x2212AB9A)) ^ *(v155 + 4 * v151);
  LODWORD(v151) = (v151 - 1088813785 - ((2 * v151) & 0x7E340A4E)) ^ *&v160[4 * BYTE3(v130)];
  LODWORD(v150) = *&v156[4 * BYTE1(v150)] ^ HIDWORD(v200) ^ (v151 + 1249955843 - ((2 * v151) & 0x9501A006));
  LODWORD(v130) = v199 ^ *(v155 + 4 * v130) ^ 0xBC3254D1 ^ ((v96 ^ 0xF59AD524) + 285824461 - 2 * ((v96 ^ 0xF59AD524) & 0x110955DD ^ v96 & 0x10));
  LODWORD(v37) = v200 ^ *&v156[4 * BYTE1(v37)] ^ 0xF7A621E6 ^ (v152 + 1249955843 - ((2 * v152) & 0x9501A006));
  LODWORD(v96) = *&v157[4 * BYTE2(v130)];
  HIDWORD(v127) = v96 ^ 0x14;
  LODWORD(v127) = v96 ^ 0x3AA4CEC0;
  v172 = ((v127 >> 6) - 1088813784 + ~((2 * (v127 >> 6)) & 0x7E340A4E)) ^ *&v160[4 * ((v150 ^ 0xBC32D3D1) >> 24)];
  LODWORD(v142) = ((v131 ^ 0x2EE6AA13 ^ -(v131 ^ 0x2EE6AA13) ^ (v193 - (HIDWORD(v192) ^ v131))) + v193) ^ 0x3ABA12EF;
  LODWORD(v96) = *&v157[4 * BYTE2(v142)];
  HIDWORD(v127) = v96 ^ 0x14;
  LODWORD(v127) = v96 ^ 0x3AA4CEC0;
  LODWORD(v151) = *(v155 + 4 * (v150 ^ 0xD1u)) ^ *&v156[4 * BYTE1(v37)] ^ 0x5B8985CE ^ (v127 >> 6);
  LODWORD(v131) = *&v160[4 * BYTE3(v142)] ^ *(v155 + 4 * v130);
  LODWORD(v96) = *&v160[4 * (v37 >> 24)] ^ *&v156[4 * BYTE1(v130)];
  v173 = *(v155 + 4 * v142);
  LODWORD(v155) = *(v155 + 4 * v37);
  LODWORD(v37) = *&v157[4 * BYTE2(v37)];
  HIDWORD(v127) = v37 ^ 0x14;
  LODWORD(v127) = v37 ^ 0x3AA4CEC0;
  LODWORD(v37) = v127 >> 6;
  LODWORD(v129) = v172 + 285824461 - ((2 * v172) & 0x2212AB9A);
  v174 = *(v35 - 148);
  LODWORD(v157) = *&v157[4 * (BYTE2(v150) ^ 0x32)];
  v175 = (v129 ^ v155) + 1249955844 + ~((2 * (v129 ^ v155)) & 0x9501A006);
  HIDWORD(v127) = v157 ^ 0x14;
  LODWORD(v127) = v157 ^ 0x3AA4CEC0;
  LODWORD(v129) = v173 ^ v198 ^ (v127 >> 6) ^ ((v96 ^ 0xF59AD524) + 285824461 - 2 * ((v96 ^ 0xF59AD524) & 0x110955DF ^ v96 & 0x12));
  LODWORD(v157) = (v151 - 1088813785 - ((2 * v151) & 0x7E340A4E)) ^ HIDWORD(v198) ^ *&v160[4 * BYTE3(v130)];
  LODWORD(v150) = v192 ^ *&v156[4 * (BYTE1(v150) ^ 0x54)] ^ v37 ^ 0xC7FB326B ^ ((v131 ^ 0xAE1350EA) + 1249955843 - 2 * ((v131 ^ 0xAE1350EA) & 0x4A80D013 ^ v131 & 0x10));
  LODWORD(v130) = v157 ^ 0xB500C5DE;
  v176 = *(&off_100477F30 + v36 - 9076) - 4;
  v177 = *(&off_100477F30 + v36 - 9077) - 4;
  LODWORD(v160) = *&v156[4 * BYTE1(v142)] ^ v90 ^ v175;
  LODWORD(v96) = *&v177[4 * BYTE3(v150)] ^ *&v176[4 * (v157 ^ 0xDE)];
  v178 = *(&off_100477F30 + v36 - 9222) - 4;
  v179 = *(&off_100477F30 + (v36 ^ 0x2425)) - 12;
  LODWORD(v155) = v160 ^ 0x73081B69;
  v180 = *&v179[4 * ((v160 ^ 0x73081B69) >> 16)];
  LODWORD(v156) = (*&v178[4 * BYTE1(v150)] - ((2 * *&v178[4 * BYTE1(v150)] + 852523798) & 0x3E51DF4C) + 1485909297) ^ *&v179[4 * BYTE2(v157)];
  LODWORD(v152) = *&v179[4 * (BYTE2(v129) ^ 0x79)];
  LODWORD(v179) = *&v179[4 * BYTE2(v150)] ^ (*&v178[4 * (BYTE1(v129) ^ 0x80)] + 963132811) ^ *&v176[4 * (v160 ^ 0x69)];
  LODWORD(v157) = *&v176[4 * v150];
  v181 = *&v178[4 * (BYTE1(v160) ^ 0x4C)];
  LODWORD(v160) = *&v178[4 * BYTE1(v130)];
  LODWORD(v150) = (v156 - ((2 * v156) & 0x1EEAD640) + 259353376) ^ *&v176[4 * (v129 ^ 0xCE)];
  LODWORD(v156) = *&v177[4 * (BYTE3(v129) ^ 0xEC)];
  LODWORD(v130) = *&v177[4 * BYTE3(v130)];
  LODWORD(v176) = v191 ^ *&v177[4 * BYTE3(v155)];
  LODWORD(v129) = v152 ^ HIDWORD(v191) ^ ((v96 ^ 0x4C15EFA2) + 522776486 - 2 * ((v96 ^ 0x4C15EFA2) & 0x1F28EFBF ^ v96 & 0x19)) ^ (v181 + 963132811);
  v182 = *(&off_100477F30 + (v36 ^ 0x24D2)) - 8;
  a32[*(v35 - 256)] = v182[((v152 ^ WORD2(v191) ^ ((v96 ^ 0xEFA2) - 4186 - 2 * ((v96 ^ 0xEFA2) & 0xEFBF ^ v96 & 0x19)) ^ (v181 + 15755)) >> 8) ^ 0x21] ^ 0xED;
  LODWORD(v177) = v176 ^ (v150 + 1130398850 - ((2 * v150) & 0x86C10904));
  v183 = *(&off_100477F30 + v36 - 9244) - 12;
  LODWORD(v150) = v183[BYTE3(v129) ^ 0x4BLL];
  HIDWORD(v127) = v150 ^ 6;
  LODWORD(v127) = (v150 ^ 0xFFFFFFDF) << 24;
  a32[8] = (v127 >> 28) ^ 0x46;
  v184 = v130 ^ HIDWORD(v193) ^ ((v179 ^ 0x105D8486) + 1130398850 - 2 * ((v179 ^ 0x105D8486) & 0x436084A2 ^ v179 & 0x20));
  v185 = *(&off_100477F30 + (v36 ^ 0x2436)) - 12;
  a32[*(v35 - 232)] = (27 * v185[(v152 ^ BYTE4(v191) ^ ((v96 ^ 0xA2) - 90 - 2 * ((v96 ^ 0xA2) & 0xBF ^ v96 & 0x19)) ^ (v181 - 117)) ^ 0x84] + 8) ^ 0xE3;
  a32[*(v35 - 224)] = (27 * v185[v184 ^ 0x83] + 8) ^ 0xBD;
  v186 = *(&off_100477F30 + v36 - 9229) - 8;
  a32[9] = ((BYTE2(v129) ^ 0x92) + v186[BYTE2(v129) ^ 0x53] - 100) ^ 0x94;
  LODWORD(v96) = v183[BYTE3(v184) ^ 0x41];
  HIDWORD(v127) = v96 ^ 6;
  LODWORD(v127) = (v96 ^ 0xFFFFFFDF) << 24;
  a32[*(v35 - 240)] = (v127 >> 28) ^ 0x30;
  a32[*(v35 - 248)] = ((BYTE2(v184) ^ 0xFB) + v186[BYTE2(v184) ^ 0x3ALL] - 100) ^ 0x25;
  a32[*(v35 - 200)] = ((BYTE2(v177) ^ 0xF1) + v186[BYTE2(v177) ^ 0x30] - 100) ^ 0x4E;
  a32[*(v35 - 216)] = (27 * v185[v177 ^ 0x92] + 8) ^ 0x54;
  LODWORD(v96) = v183[(v177 >> 24) ^ 0xD3];
  HIDWORD(v127) = v96 ^ 6;
  LODWORD(v127) = (v96 ^ 0xFFFFFFDF) << 24;
  *a32 = (v127 >> 28) ^ 0xD7;
  LODWORD(v96) = (v157 ^ v180 ^ 0x105D8486) + 1130398850 - 2 * ((v157 ^ v180 ^ 0x105D8486) & 0x4360849B ^ (v157 ^ v180) & 0x19);
  v187 = (v160 + 963132811);
  v188 = HIDWORD(v191) ^ v198 ^ v156 ^ v187 ^ v96;
  a32[*(v35 - 208)] = v182[BYTE1(v188) ^ 0x59] ^ 0xCD;
  LODWORD(v96) = v183[BYTE3(v188) ^ 0x87];
  HIDWORD(v127) = v96 ^ 6;
  LODWORD(v127) = (v96 ^ 0xFFFFFFDF) << 24;
  a32[*(v35 - 184)] = (v127 >> 28) ^ 0x43;
  a32[*(v35 - 192)] = v182[BYTE1(v184) ^ 0xE8] ^ 0x62;
  a32[*(v35 - 176)] = (27 * v185[v188 ^ 0xD1] + 8) ^ 0x5D;
  a32[*(v35 - 168)] = ((BYTE2(v188) ^ 0x36) + v186[BYTE2(v188) ^ 0xF7] - 100) ^ 0xCF;
  a32[*(v35 - 160)] = ~v182[BYTE1(v177) ^ 0xF5];
  v189 = (v174 - 954128359) < HIDWORD(v195);
  if (HIDWORD(v195) < 0xC7212809 != (v174 - 954128359) < 0xC7212809)
  {
    v189 = HIDWORD(v195) < 0xC7212809;
  }

  HIDWORD(v194) = v73 ^ 0x9F79C814;
  LODWORD(v211) = v73 ^ v212;
  return (*(a1 + 8 * ((14 * v189) ^ ((v34 ^ 0x3D47) - 1107600487) & 0x4204AEE8)))(v187, v184, 274564230, 25, v183, v188, v182, 8, a3, v191, v192, v193, v194, v195, v97, v196, v197, v93, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, *(&v213 + 1), a1);
}

uint64_t sub_1000E813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a15 = a10;
  a16 = &a12;
  a14 = (v16 - 1605) ^ (33731311 * ((&a13 - 1440329874 - 2 * (&a13 & 0xAA264F6E)) ^ 0x93D0854D));
  (*(v17 + 8 * (v16 + 4744)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * (((&a13 | 0x14DE29DE) - (&a13 & 0x14DE29DE)) ^ 0x5C477DD0) + 828;
  a15 = a10;
  v19 = (*(v17 + 8 * (v16 ^ 0x377A)))(&a13);
  return (*(v17 + 8 * (((a13 == v18) * ((v16 + 266) ^ 0x1DD2)) ^ v16)))(v19);
}

uint64_t sub_1000E822C@<X0>(unsigned int a1@<W8>)
{
  v9 = v2 < a1;
  if (v9 == v6 > v5)
  {
    v9 = v6 + v4 < v3;
  }

  return (*(v8 + 8 * ((v9 * v7) ^ v1)))();
}

uint64_t sub_1000E826C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v2 + v4 + 3351) ^ 0xFFFFFFFFFFFFF960) + v3;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((506 * (v6 == 0)) ^ (v2 + v4 + 3447))))();
}

uint64_t sub_1000E82A8(uint64_t a1, int a2, int a3)
{
  v8 = (v4 - 32);
  v9 = (v5 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((a2 & ~((v6 + 3303) ^ (v3 == 32))) * a3) ^ (v6 + 904))))();
}

uint64_t sub_1000E82F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = (v23 - 680584866) & 0x2890DDD7;
  v25 = (((2 * v22) & 0x3E1EF6B77DFF31DCLL) + (v22 ^ 0x9F0F7B5BBEFF98EELL) + a3);
  v26 = v25[v24 ^ 0x60F084A441006605] << 24;
  v25 += 0x60F084A441006605;
  v27 = v26 | (v25[270] << 16) | (v25[271] << 8);
  HIDWORD(a10) = (v27 | v25[272]) + 197499219 - 2 * ((v27 | v25[272]) & 0xBC5995F ^ v25[272] & 0xC);
  STACK[0x2A8] = a3;
  STACK[0x230] = 0;
  STACK[0x250] = *(a7 + 8 * v24);
  return (*(a7 + 8 * ((42 * (a1 != 0)) ^ v24 ^ (((v24 - 23) | 0x10E8) - 3225) ^ 0x1A46)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000E83A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v74 = vdupq_n_s64(0x38uLL);
  v75 = vdupq_n_s64(0x2A11B965E67D9C56uLL);
  v76 = vdupq_n_s64(v66);
  v77 = vdupq_n_s64(v67);
  v78 = vdupq_n_s64(v68);
  v79 = vdupq_n_s64(v69);
  v80 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v81 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v82 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v83 = vdupq_n_s64(v70);
  v84 = vdupq_n_s64(v71);
  v85 = vdupq_n_s64(v72);
  v86 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  v87 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v88 = vdupq_n_s64(0xAB3042D228875C41);
  v89.i64[0] = a4 + a1 + -8 - a2 + 11;
  v89.i64[1] = a4 + a1 + -8 - a2 + 10;
  v90.i64[0] = a4 + a1 + -8 - a2 + 13;
  v90.i64[1] = a4 + a1 + -8 - a2 + 12;
  v91.i64[0] = a4 + a1 + -8 - a2 + 15;
  v91.i64[1] = a4 + a1 + -8 - a2 + 14;
  v92.i64[0] = a4 + a1 - a2 + ((a3 - 331) ^ 0xAE7);
  v92.i64[1] = a4 + a1 + -8 - a2 + 16;
  v93 = vandq_s8(v92, v73);
  v94 = vandq_s8(v91, v73);
  v95 = vandq_s8(v90, v73);
  v96 = vandq_s8(v89, v73);
  v97 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v101 = vsubq_s64(v99, vandq_s8(vaddq_s64(vaddq_s64(v99, v99), v75), v76));
  v102 = vsubq_s64(v100, vandq_s8(vaddq_s64(vaddq_s64(v100, v100), v75), v76));
  v103 = vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(vaddq_s64(v98, v98), v75), v76)), v77);
  v104 = vaddq_s64(vsubq_s64(v97, vandq_s8(vaddq_s64(vaddq_s64(v97, v97), v75), v76)), v77);
  v105 = veorq_s8(v104, v78);
  v106 = veorq_s8(v103, v78);
  v107 = veorq_s8(v103, v79);
  v108 = veorq_s8(v104, v79);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v80);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v108), v80);
  v111 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v112 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v113 = veorq_s8(v109, v111);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113);
  v116 = veorq_s8(vaddq_s64(v114, v112), v81);
  v117 = veorq_s8(v115, v81);
  v118 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v119 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v120 = veorq_s8(v116, v118);
  v121 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v120);
  v123 = veorq_s8(vaddq_s64(v121, v119), v82);
  v124 = veorq_s8(v122, v82);
  v125 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v126 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v127 = veorq_s8(v123, v125);
  v128 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v127);
  v130 = vaddq_s64(v128, v126);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), v83), v130), v84), v85);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v83), v129), v84), v85);
  v133 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v134 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v135 = veorq_s8(v131, v133);
  v136 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v135);
  v138 = veorq_s8(vaddq_s64(v136, v134), v86);
  v139 = veorq_s8(v137, v86);
  v140 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v141 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v142 = veorq_s8(v138, v140);
  v143 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v142);
  v145 = veorq_s8(vaddq_s64(v143, v141), v87);
  v146 = veorq_s8(v144, v87);
  v147 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v148 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v149 = veorq_s8(v145, v147);
  v150 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v152 = vaddq_s64(v101, v77);
  v153 = vaddq_s64(v151, v149);
  v154 = veorq_s8(vaddq_s64(v150, v148), v88);
  v185.val[3] = vshlq_u64(veorq_s8(v153, v88), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), v74)));
  v185.val[2] = vshlq_u64(v154, vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), v74)));
  v155 = veorq_s8(v152, v78);
  v156 = veorq_s8(v152, v79);
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), v80);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v81);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v82);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), v83), v163), v84), v85);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v86);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v87);
  v169 = vaddq_s64(v102, v77);
  v185.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), v74)));
  v170 = veorq_s8(v169, v78);
  v171 = veorq_s8(v169, v79);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v80);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v81);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v82);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v83), v178), v84), v85);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v86);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v87);
  v185.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v74)));
  *(a4 + a1 + -8 - a2 + ((a3 - 331) ^ 0xAE7) + 1) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v185, xmmword_1003EAE30)), *(v65 + a1 + -8 - a2));
  return (*(a65 + 8 * ((4791 * (-(a1 & 0xFFFFFFF8) == -8 - a2)) ^ a3)))();
}

uint64_t sub_1000E8A00(uint64_t a1)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((102 * (v6 != ((v3 + v2) | 0x118Bu) - 5515)) ^ (v3 + v2 + 1027))))();
}

uint64_t sub_1000E8A44()
{
  v2 = v0 + 1093 + LODWORD(STACK[0x8D4]) - 4180;
  LODWORD(STACK[0x8D4]) = v2;
  return (*(v1 + 8 * ((2285 * (v2 == ((v0 - 2987) | 0x1000) - 4197)) ^ (v0 + 1093))))();
}

uint64_t sub_1000E8B2C()
{
  v1 = *(STACK[0x480] + 24);
  STACK[0x768] = v1;
  return (*(STACK[0x330] + 8 * (((v1 != 0) * (((v0 - 4182) | 0x1056) - 5526)) | (v0 + 296))))();
}

uint64_t sub_1000E8CA8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  v14 = a1 - 645253674;
  v15 = a1 - 645253674;
  a12 = a1 - 1710126949 * (&a12 ^ 0x321B5B90) - 168932879;
  v16 = (*(v13 + 8 * (a1 - 645246325)))(&a12);
  return (*(v13 + 8 * (((a13 == (v14 ^ 0xF81B20)) | (16 * (a13 == (v14 ^ 0xF81B20)))) ^ v15)))(v16);
}

uint64_t sub_1000E8D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = (((&a17 | 0x188A5834) - (&a17 & 0x188A5834)) ^ 0x40E38B56) * v22;
  a21 = -654855621 - v25;
  a22 = v25 + v24 + 1674577975;
  a18 = v25 - 1202429229;
  a19 = a11;
  a20 = &a15;
  v26 = (*(v23 + 8 * (v24 + 8469)))(&a17);
  return (*(v23 + 8 * (((a17 == 2 * (v24 ^ 0x657) + 16256903) * (17 * (v24 ^ 0x57C) + 1332)) ^ v24)))(v26);
}

uint64_t sub_1000E8EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v50 = (*(v48 + 8 * (v47 + 3477)))(0, 0, 0);
  (*(v48 + 8 * (v47 + 3512)))(v50, *(&off_100477F30 + v47 - 6123) - 4, a45, ((2 * v47) ^ 0xE004610034102815) + v46);
  v51 = *(v48 + 8 * (v47 ^ 0x3E6F));
  *(v49 - 216) = v50;
  v52 = *(v48 + 8 * ((56 * (((v47 + 8) ^ (v51(v45, v50) == 0)) & 1)) ^ v47));
  return v52();
}

uint64_t sub_1000E8F98(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = a4 - 115;
  v75 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v76 = vdupq_n_s64(0x38uLL);
  v77 = vdupq_n_s64(0x2A11B965E67D9C56uLL);
  v78 = vdupq_n_s64(v64);
  v79 = vdupq_n_s64(v65);
  v80 = vdupq_n_s64(v66);
  v81 = vdupq_n_s64(v72);
  v82 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v83 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v84 = vdupq_n_s64(v70);
  v85 = vdupq_n_s64(v67);
  v86 = vdupq_n_s64(v68);
  v87 = vdupq_n_s64(v69);
  v88 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  v89 = vdupq_n_s64(v71);
  v90 = vdupq_n_s64(0xAB3042D228875C41);
  v91.i64[0] = v63 - a2 + a1 + 3;
  v91.i64[1] = v63 - a2 + a1 + 2;
  v92.i64[0] = v63 - a2 + a1 + 5;
  v92.i64[1] = v63 - a2 + a1 + 4;
  v93.i64[0] = v63 - a2 + a1 + 9;
  v93.i64[1] = v63 - a2 + a1 + 8;
  v94.i64[0] = v63 - a2 + a1 + 7;
  v94.i64[1] = v63 - a2 + a1 + (((v74 - 4919) | 0x291u) ^ 0x3DFLL);
  v95 = vandq_s8(v94, v75);
  v96 = vandq_s8(v93, v75);
  v97 = vandq_s8(v92, v75);
  v98 = vandq_s8(v91, v75);
  v99 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v103 = vsubq_s64(v101, vandq_s8(vaddq_s64(vaddq_s64(v101, v101), v77), v78));
  v104 = vsubq_s64(v102, vandq_s8(vaddq_s64(vaddq_s64(v102, v102), v77), v78));
  v105 = vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(vaddq_s64(v100, v100), v77), v78)), v79);
  v106 = vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(vaddq_s64(v99, v99), v77), v78)), v79);
  v107 = veorq_s8(v106, v80);
  v108 = veorq_s8(v105, v80);
  v109 = veorq_s8(v105, v81);
  v110 = veorq_s8(v106, v81);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v82);
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110), v82);
  v113 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v114 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v115 = veorq_s8(v111, v113);
  v116 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v115);
  v118 = veorq_s8(vaddq_s64(v116, v114), v83);
  v119 = veorq_s8(v117, v83);
  v120 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v121 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v122 = veorq_s8(v118, v120);
  v123 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v122);
  v125 = veorq_s8(vaddq_s64(v123, v121), v84);
  v126 = veorq_s8(v124, v84);
  v127 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v128 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v129 = veorq_s8(v125, v127);
  v130 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v129);
  v132 = vaddq_s64(v130, v128);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), v85), v132), v86), v87);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), v85), v131), v86), v87);
  v135 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v136 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v137 = veorq_s8(v133, v135);
  v138 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v137);
  v140 = veorq_s8(vaddq_s64(v138, v136), v88);
  v141 = veorq_s8(v139, v88);
  v142 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v143 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v144 = veorq_s8(v140, v142);
  v145 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v144);
  v147 = veorq_s8(vaddq_s64(v145, v143), v89);
  v148 = veorq_s8(v146, v89);
  v149 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v150 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v151 = veorq_s8(v147, v149);
  v152 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v154 = vaddq_s64(v103, v79);
  v155 = vaddq_s64(v153, v151);
  v156 = veorq_s8(vaddq_s64(v152, v150), v90);
  v187.val[3] = vshlq_u64(veorq_s8(v155, v90), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), v76)));
  v187.val[2] = vshlq_u64(v156, vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v76)));
  v157 = veorq_s8(v154, v80);
  v158 = veorq_s8(v154, v81);
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v82);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v83);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v84);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), v85), v165), v86), v87);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v88);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v89);
  v171 = vaddq_s64(v104, v79);
  v187.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL))), v90), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v76)));
  v172 = veorq_s8(v171, v80);
  v173 = veorq_s8(v171, v81);
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v82);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v83);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v84);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v85), v180), v86), v87);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v88);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v89);
  v187.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL))), v90), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v76)));
  *(v63 - a2 + a1 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v187, xmmword_1003EAE30)), *(a63 - a2 - 8 + a1));
  return (*(*(v73 - 256) + 8 * ((141 * (a2 - (a1 & 0xFFFFFFF8) != -8)) ^ v74)))();
}

uint64_t sub_1000E9550@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = a1 ^ 0x199C;
  v68 = ((a1 ^ 0x199C) + 817133979) & 0x4F4B7FDB;
  v69 = ((a1 ^ 0x199C) + 1309756320) & 0xB1EE97BF;
  v70 = *(v65 + 8);
  STACK[0x830] = v66;
  STACK[0x7E8] = 0;
  STACK[0x4E0] = 0;
  return (*(a65 + 8 * (((v68 - 6478 + v69) * (v70 == 0)) ^ v67)))();
}

uint64_t sub_1000E95C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7)
{
  *v8 = a1;
  *a7 = v9;
  *a6 = v16;
  v12 = (v7 ^ 0x7A5) + 1361;
  v18 = v15;
  v19 = ((v7 ^ 0x7A5) + 5353) ^ (1824088897 * ((((2 * &v17) | 0xD3F897EC) - &v17 + 369341450) ^ 0xB1959894));
  (*(v10 + 8 * (v7 ^ 0x2998)))(&v17);
  v18 = v14;
  v19 = (v12 + 3992) ^ (1824088897 * (((&v17 | 0x78EFD12F) + (~&v17 | 0x87102ED0)) ^ 0x2086024C));
  (*(v10 + 8 * (v12 + 5258)))(&v17);
  return (v11 - 16257999);
}

uint64_t sub_1000E9804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a10;
  a16 = 1317436891 * (&a14 ^ 0xB0039876) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((16 * (a15 == v17)) | (32 * (a15 == v17)) | v18)))(v19);
}

void sub_1000E9898(uint64_t a1, int a2)
{
  v6 = (*(v5 - 136) - 848) | 0x18;
  *(v5 - 128) = v3 ^ 0xB98D4A5B;
  *(v5 - 124) = v4 ^ 0x6A10CEE4;
  *(v5 - 132) = (v6 + 1096869397) ^ v2;
  *(v5 - 120) = a2 ^ 0xCA86C5FA;
  JUMPOUT(0x1000E0860);
}

uint64_t sub_1000E98F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, char a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, char *a24)
{
  a20 = (v24 - 2440) ^ (33731311 * ((1554504433 - (&a19 | 0x5CA7DAF1) + (&a19 | 0xA358250E)) ^ 0x9AAEEF2D));
  a21 = a18;
  a22 = &a16;
  (*(v25 + 8 * (v24 ^ 0x334D)))(&a19);
  a24 = &a13;
  a23 = (v24 - 2334) ^ (((2 * (&a19 & 0x33850268) - &a19 - 864354928) ^ 0xFE61A600) * v26);
  a21 = a18;
  a22 = &a11;
  (*(v25 + 8 * (v24 + 3915)))(&a19);
  LODWORD(a22) = v24 - 2008441969 * ((2 * (&a19 & 0x195F1F40) - &a19 + 1721819324) ^ 0x2E39B4B2) - 7;
  a21 = a18;
  v28 = (*(v25 + 8 * (v24 + 3959)))(&a19);
  return (*(v25 + 8 * (((a19 == v27) * (v24 - 5646)) ^ v24)))(v28);
}

uint64_t sub_1000E9A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8 * (v4 + 5684)))();
  v6 = STACK[0x3E8];
  STACK[0x598] = 0;
  return (*(v6 + 8 * (((((STACK[0x590] == 0) ^ (-29 * ((v4 + 38) & 0xED ^ 0x73))) & 1) * (((((v4 + 1453712934) & 0xA95A1BED) + 1361320427) & 0xAEDBD6B1) - 278)) ^ (v4 + 1453712934) & 0xA95A1BED)))(v5);
}

uint64_t sub_1000E9C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  v16 = (v13 >> (((4 - a7) ^ v13) & 4)) * (a5 - 2020) + 220384;
  LOBYTE(v16) = v12 ^ (16 * *(v8 + v16 - (((v16 * v11) >> 32) >> 9) * v10));
  v17 = *(v8 + ((v13 & 0xF) * a8 + 220384 - ((((v13 & 0xF) * a8 + 220384) * v9) >> 32) * v10)) ^ 0x83 ^ (v16 - ((2 * v16) & 0x60) - 67);
  v18 = *(a4 + (v17 * v14 - (((2693771 * v17) >> 16) >> 8) * v15));
  v19 = (((v18 & 0x5E ^ 0x5E) + (v18 & 0x5E)) ^ ((v18 >> 2) | (v18 << 6))) * a8 + 478792;
  *(v8 + a7 * a8 - 1357356425 - ((((a7 * a8 - 1357356425) * v11) >> 32) >> 9) * v10) = *(v8 + (v19 - ((v19 * v9) >> 32) * v10));
  return (*(a3 + 8 * ((1433 * (a7 == -645815812)) ^ a5)))();
}

uint64_t sub_1000E9D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  a15 = a11;
  a16 = (v17 + 4123) ^ ((((&a14 | 0x363676F2) - (&a14 & 0x363676F2)) ^ 0x6E5FA590) * v18);
  v19 = (*(v16 + 8 * (v17 ^ 0x35F3)))(&a14);
  return sub_1000E9DE8(v19);
}

uint64_t sub_1000E9DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  a16 = (v18 + 4760) ^ ((&a14 ^ 0x5869D362) * v17);
  a15 = a10;
  v19 = (*(v16 + 8 * (v18 + 6026)))(&a14);
  return sub_1000E9E2C(v19);
}

void sub_1000E9EB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int16 a8@<W8>)
{
  if ((v11 - 203186114) < 2)
  {
    (*(v8 + 8 * ((486 * ((((a8 << (v10 ^ 0xAA)) | *(v9 + 1)) - 2 * (((a8 << (v10 ^ 0xAA)) | *(v9 + 1)) & 0x631B ^ *(v9 + 1) & 0x10)) == 0)) ^ (v10 + 4188))))(a1, a2, a3, a4, a5, a6, a7, 530310775);
  }

  else if (v11 == 203186112 || v11 == 203186117)
  {
    (*(v8 + 8 * ((((a8 & 0xFE) != (((v10 - 35) & 0xFD) - 125)) * ((v10 - 239186083) & 0xE41ADF7 ^ 0xDFA)) ^ (v10 - 540))))();
  }

  else
  {
    sub_1000EA21C();
  }
}

uint64_t sub_1000EA25C()
{
  v0 = STACK[0x3E4];
  v1 = LOWORD(STACK[0x8AE]);
  STACK[0x7B0] = STACK[0x8B0];
  return (*(STACK[0x3E8] + 8 * (((v1 == 17168) * ((v0 + 1873813896) & 0x904FCFF2 ^ 0x316)) ^ (v0 - 2471))))();
}

uint64_t sub_1000EA2D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = v15 - 8;
  v24.i64[0] = v19 + v23 - 5;
  v24.i64[1] = v19 + v23 - 6;
  v25.i64[0] = v19 + v23 - 3;
  v25.i64[1] = v19 + v23 - 4;
  v26.i64[0] = v19 + v23 - 1;
  v26.i64[1] = v19 + v23 - 2;
  v27 = v23 + (((v16 - 3000) | 0x1101u) ^ 0xFFFFFFFFFFFFEE3CLL);
  v28.i64[0] = v19 + v27;
  v28.i64[1] = v19 + v23 - 8;
  v29.i64[0] = a3 + v23;
  v29.i64[1] = v14 + v23;
  v30.i64[0] = a1 + v23;
  v30.i64[1] = a5 + v23;
  v31.i64[0] = a8 + v23;
  v31.i64[1] = a7 + v23;
  v32.i64[0] = v17 + v27;
  v32.i64[1] = STACK[0x3B0] + v23;
  v33 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v34 = vandq_s8(v28, v33);
  v35 = vandq_s8(v26, v33);
  v36 = vandq_s8(v25, v33);
  v37 = vandq_s8(v24, v33);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vdupq_n_s64(0x38uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v43 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v44 = vaddq_s64(v42, v43);
  v45 = vaddq_s64(v40, v43);
  v46 = vaddq_s64(v39, v43);
  v47 = vaddq_s64(v38, v43);
  v48 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v49 = veorq_s8(v47, v48);
  v50 = veorq_s8(v46, v48);
  v51 = veorq_s8(v45, v48);
  v52 = veorq_s8(v44, v48);
  v53 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v54 = veorq_s8(v44, v53);
  v55 = veorq_s8(v45, v53);
  v56 = veorq_s8(v46, v53);
  v57 = veorq_s8(v47, v53);
  v58 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v60 = vaddq_s64(v58, v54);
  v61 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v62 = veorq_s8(v60, v61);
  v63 = veorq_s8(v59, v61);
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v56), v61);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v57), v61);
  v66 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v67 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v69 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v70 = veorq_s8(v63, v67);
  v71 = veorq_s8(v62, v66);
  v72 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v73 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v74 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v71);
  v76 = vaddq_s64(v74, v70);
  v77 = vaddq_s64(v73, v69);
  v78 = vaddq_s64(v72, v68);
  v79 = vdupq_n_s64(v22);
  v80 = vdupq_n_s64(v9);
  v81 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), v79), v75), v80);
  v82 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), v79), v76), v80);
  v83 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v77, v77), v79), v77), v80);
  v84 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v78, v78), v79), v78), v80);
  v85 = vdupq_n_s64(v13);
  v86 = veorq_s8(v84, v85);
  v87 = veorq_s8(v83, v85);
  v88 = veorq_s8(v82, v85);
  v89 = veorq_s8(v81, v85);
  v90 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v93 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v94 = veorq_s8(v88, v92);
  v95 = veorq_s8(v87, v91);
  v96 = veorq_s8(v86, v90);
  v97 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v96);
  v101 = vaddq_s64(v97, v93);
  v102 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v103 = veorq_s8(v101, v102);
  v104 = veorq_s8(vaddq_s64(v98, v94), v102);
  v105 = veorq_s8(vaddq_s64(v99, v95), v102);
  v106 = veorq_s8(v100, v102);
  v107 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v110 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v111 = veorq_s8(v105, v109);
  v112 = veorq_s8(v104, v108);
  v113 = veorq_s8(v103, v107);
  v114 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v113);
  v118 = vaddq_s64(v114, v110);
  v119 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v120 = veorq_s8(v118, v119);
  v121 = veorq_s8(vaddq_s64(v115, v111), v119);
  v122 = veorq_s8(vaddq_s64(v116, v112), v119);
  v123 = veorq_s8(v117, v119);
  v124 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v127 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v128 = veorq_s8(v122, v126);
  v129 = veorq_s8(v121, v125);
  v130 = veorq_s8(v120, v124);
  v131 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v130);
  v135 = vaddq_s64(v133, v129);
  v136 = vaddq_s64(v132, v128);
  v137 = vaddq_s64(v131, v127);
  v138 = vdupq_n_s64(a2);
  v139 = vdupq_n_s64(v12);
  v140 = vdupq_n_s64(a6);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), v138), v137), v139), v140);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), v138), v136), v139), v140);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), v138), v135), v139), v140);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), v138), v134), v139), v140);
  v145 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v148 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v149 = veorq_s8(v143, v147);
  v150 = veorq_s8(v142, v146);
  v151 = veorq_s8(v141, v145);
  v152 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v151);
  v156 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v157 = veorq_s8(vaddq_s64(v152, v148), v156);
  v158 = veorq_s8(vaddq_s64(v153, v149), v156);
  v159 = veorq_s8(vaddq_s64(v154, v150), v156);
  v160 = veorq_s8(v155, v156);
  v161 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v164 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v165 = veorq_s8(v157, v161);
  v166 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v165);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, v162));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), veorq_s8(v159, v163));
  v170 = vdupq_n_s64(0x4AC0565324D70174uLL);
  v171 = vaddq_s64(v166, v164);
  v172 = vorrq_s8(v171, v170);
  v173 = vorrq_s8(v169, v170);
  v174 = vorrq_s8(v168, v170);
  v175 = vdupq_n_s64(v10);
  v176 = vaddq_s64(vsubq_s64(vorrq_s8(v167, v170), vorrq_s8(v167, v175)), v175);
  v177 = vdupq_n_s64(v20);
  v178 = veorq_s8(v176, v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(v174, vorrq_s8(v168, v175)), v175), v177);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(v173, vorrq_s8(v169, v175)), v175), v177);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(v172, vorrq_s8(v171, v175)), v175), v177);
  v182 = vandq_s8(vshlq_n_s64(v24, 3uLL), v41);
  v183 = vandq_s8(vshlq_n_s64(v25, 3uLL), v41);
  v184 = vshlq_u64(v181, vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v41)));
  v185 = vshlq_u64(v180, vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v41)));
  v186 = vshlq_u64(v179, vnegq_s64(v183));
  v187 = vshlq_u64(v178, vnegq_s64(v182));
  v188 = vandq_s8(v32, v33);
  v189 = vandq_s8(v31, v33);
  v190 = vandq_s8(v30, v33);
  v191 = vandq_s8(v29, v33);
  v192 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v196 = vdupq_n_s64(0x5B38AD8DDB3A7C5CuLL);
  v197 = vaddq_s64(vaddq_s64(v192, v192), v196);
  v198 = vaddq_s64(vaddq_s64(v193, v193), v196);
  v199 = vaddq_s64(vaddq_s64(v194, v194), v196);
  v200 = vaddq_s64(vaddq_s64(v195, v195), v196);
  v201 = vdupq_n_s64(0x89E752B3FB5DDBECLL);
  v202 = vsubq_s64(v195, vandq_s8(v200, v201));
  v203 = vdupq_n_s64(0x72900020EB4C2C24uLL);
  v204 = vaddq_s64(v202, v203);
  v205 = vaddq_s64(vsubq_s64(v194, vandq_s8(v199, v201)), v203);
  v206 = vaddq_s64(vsubq_s64(v193, vandq_s8(v198, v201)), v203);
  v207 = vaddq_s64(vsubq_s64(v192, vandq_s8(v197, v201)), v203);
  v208 = vdupq_n_s64(0xCF99C25E83E78D67);
  v209 = veorq_s8(v207, v208);
  v210 = veorq_s8(v206, v208);
  v211 = veorq_s8(v205, v208);
  v212 = veorq_s8(v204, v208);
  v213 = vdupq_n_s64(a4);
  v214 = veorq_s8(v204, v213);
  v215 = veorq_s8(v205, v213);
  v216 = veorq_s8(v206, v213);
  v217 = veorq_s8(v207, v213);
  v218 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v215);
  v220 = vaddq_s64(v218, v214);
  v221 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v222 = veorq_s8(v220, v221);
  v223 = veorq_s8(v219, v221);
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v216), v221);
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v217), v221);
  v226 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v228 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v229 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v230 = veorq_s8(v224, v228);
  v231 = veorq_s8(v223, v227);
  v232 = veorq_s8(v222, v226);
  v233 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v234 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL);
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v232);
  v237 = vaddq_s64(v235, v231);
  v238 = vaddq_s64(v234, v230);
  v239 = vaddq_s64(v233, v229);
  v240 = vdupq_n_s64(0x5ABE700122B28302uLL);
  v241 = vdupq_n_s64(0xD2A0C7FF6EA6BE7FLL);
  v242 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v236, v236), v240), v236), v241);
  v243 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v237, v237), v240), v237), v241);
  v244 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238, v238), v240), v238), v241);
  v245 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v239, v239), v240), v239), v241);
  v246 = vdupq_n_s64(0x90D044FD8F5ED69ALL);
  v247 = veorq_s8(v245, v246);
  v248 = veorq_s8(v244, v246);
  v249 = veorq_s8(v243, v246);
  v250 = veorq_s8(v242, v246);
  v251 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v254 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v255 = veorq_s8(v249, v253);
  v256 = veorq_s8(v248, v252);
  v257 = veorq_s8(v247, v251);
  v258 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v260 = vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v257);
  v262 = vaddq_s64(v260, v256);
  v263 = vaddq_s64(v259, v255);
  v264 = vaddq_s64(v258, v254);
  v265 = vdupq_n_s64(0xA11B1487180DD3BBLL);
  v266 = vdupq_n_s64(v11);
  v267 = vsubq_s64(vorrq_s8(v261, v265), vorrq_s8(v261, v266));
  v268 = vaddq_s64(vsubq_s64(vorrq_s8(v264, v265), vorrq_s8(v264, v266)), v266);
  v269 = vaddq_s64(vsubq_s64(vorrq_s8(v263, v265), vorrq_s8(v263, v266)), v266);
  v270 = vaddq_s64(vsubq_s64(vorrq_s8(v262, v265), vorrq_s8(v262, v266)), v266);
  v271 = vdupq_n_s64(0x5C9047B9C167908FuLL);
  v272 = veorq_s8(vaddq_s64(v267, v266), v271);
  v273 = veorq_s8(v270, v271);
  v274 = veorq_s8(v269, v271);
  v275 = veorq_s8(v268, v271);
  v276 = vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL);
  v278 = veorq_s8(v275, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v279 = veorq_s8(v274, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v280 = veorq_s8(v273, v277);
  v281 = veorq_s8(v272, v276);
  v282 = vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL);
  v284 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v281);
  v285 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), v280);
  v286 = vaddq_s64(v283, v279);
  v287 = vaddq_s64(v282, v278);
  v288 = vdupq_n_s64(0x2FB8FA78C5363E4uLL);
  v289 = vdupq_n_s64(0x817DC7D3C629B1F2);
  v290 = vaddq_s64(vsubq_s64(v284, vandq_s8(vaddq_s64(v284, v284), v288)), v289);
  v291 = vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), v288)), v289);
  v292 = vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), v288)), v289);
  v293 = vaddq_s64(vsubq_s64(v287, vandq_s8(vaddq_s64(v287, v287), v288)), v289);
  v294 = vdupq_n_s64(0x8BBA1DD6A2E83279);
  v295 = veorq_s8(v293, v294);
  v296 = veorq_s8(v292, v294);
  v297 = veorq_s8(v291, v294);
  v298 = veorq_s8(v290, v294);
  v299 = vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL);
  v300 = vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL);
  v301 = vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL);
  v302 = veorq_s8(v298, vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL));
  v303 = veorq_s8(v297, v301);
  v304 = veorq_s8(v296, v300);
  v305 = veorq_s8(v295, v299);
  v306 = vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v309 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v305);
  v310 = vaddq_s64(v308, v304);
  v311 = vaddq_s64(v307, v303);
  v312 = vaddq_s64(v306, v302);
  v313 = vdupq_n_s64(0x138A00D81D9F80FEuLL);
  v314 = vdupq_n_s64(0x9C5006C0ECFC07FuLL);
  v315 = vaddq_s64(vsubq_s64(v309, vandq_s8(vaddq_s64(v309, v309), v313)), v314);
  v316 = vaddq_s64(vsubq_s64(v310, vandq_s8(vaddq_s64(v310, v310), v313)), v314);
  v317 = vaddq_s64(vsubq_s64(v311, vandq_s8(vaddq_s64(v311, v311), v313)), v314);
  v318 = vaddq_s64(vsubq_s64(v312, vandq_s8(vaddq_s64(v312, v312), v313)), v314);
  v319 = vdupq_n_s64(0x6855A70E70B2CB06uLL);
  v320 = veorq_s8(v318, v319);
  v321 = veorq_s8(v317, v319);
  v322 = veorq_s8(v316, v319);
  v323 = veorq_s8(v315, v319);
  v324 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v325 = vsraq_n_u64(vshlq_n_s64(v303, 3uLL), v303, 0x3DuLL);
  v326 = vsraq_n_u64(vshlq_n_s64(v304, 3uLL), v304, 0x3DuLL);
  v327 = veorq_s8(v323, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL));
  v328 = veorq_s8(v322, v326);
  v329 = veorq_s8(v321, v325);
  v330 = veorq_s8(v320, v324);
  v331 = vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL);
  v332 = vsraq_n_u64(vshlq_n_s64(v322, 0x38uLL), v322, 8uLL);
  v333 = vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL);
  v334 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v330);
  v335 = vaddq_s64(v331, v327);
  v336 = vdupq_n_s64(v8);
  v337 = veorq_s8(v335, v336);
  v338 = veorq_s8(vaddq_s64(v332, v328), v336);
  v339 = veorq_s8(vaddq_s64(v333, v329), v336);
  v340 = veorq_s8(v334, v336);
  v341 = vsraq_n_u64(vshlq_n_s64(v327, 3uLL), v327, 0x3DuLL);
  v342 = vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL);
  v343 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), veorq_s8(v339, vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL)));
  v344 = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  v345 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL), veorq_s8(v338, v342)), v344), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v41)));
  v347.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), veorq_s8(v340, vsraq_n_u64(vshlq_n_s64(v330, 3uLL), v330, 0x3DuLL))), v344), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v41))), v187);
  v347.val[1] = veorq_s8(vshlq_u64(veorq_s8(v343, v344), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v41))), v186);
  v347.val[0] = veorq_s8(v345, v185);
  v347.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), veorq_s8(v337, v341)), v344), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v41))), v184);
  *v32.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v347, xmmword_1003EAE30)), *(v19 + v23 - 8));
  return (*(v21 + 8 * ((255 * (v18 == v23)) ^ v16)))();
}

uint64_t sub_1000EA2DC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X2>, int a3@<W8>)
{
  *v9 = a1;
  *a2 = a3;
  v7 = v3 ^ 0x28B;
  v14 = ((v3 ^ 0x3E9) + 5843) ^ (((-735021301 - (&v12 | 0xD430770B) + (&v12 | 0x2BCF88F4)) ^ 0x73A65B96) * v4);
  v13 = v10;
  (*(v5 + 8 * ((v3 ^ 0x3E9) + 7109)))(&v12);
  v13 = v11;
  v14 = (v7 + 6133) ^ ((((&v12 | 0x70A5C94B) + (~&v12 | 0x8F5A36B4)) ^ 0x28CC1A28) * v4);
  (*(v5 + 8 * (v7 + 7399)))(&v12);
  return (v6 - 16257999);
}

uint64_t sub_1000EA408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  *(*(v47 + 8 * (v45 ^ 0xB6869F91)) - 12) = 113;
  v48 = (*(v46 + 8 * (v45 ^ 0xB686BADD)))(&a45, 0, 1024);
  return (*(v46 + 8 * ((251 * (((v45 - 1391329902) & 0x9C677F9F) != 7311)) ^ (v45 + 1232698636))))(v48);
}

uint64_t sub_1000EA448()
{
  v3 = STACK[0x6E0];
  STACK[0x4A0] = STACK[0x6E0];
  v4 = STACK[0x930];
  v5 = STACK[0x6B8];
  v6 = (v0 + 1778911642 + (LODWORD(STACK[0x574]) ^ 0x95F7F173)) ^ ((LODWORD(STACK[0x574]) ^ 0xF94F9FA8) + 112222296) ^ ((LODWORD(STACK[0x574]) ^ 0x677DF788) + ((v0 + 4824) ^ 0x98821FB3));
  v7 = 2048652491 * ((2 * ((v2 - 232) & 0x7DD37798) - (v2 - 232) - 2111010719) ^ 0x339D1F64);
  *(v2 - 192) = v3;
  *(v2 - 184) = v3;
  *(v2 - 224) = v4;
  *(v2 - 216) = v5;
  *(v2 - 204) = v6 - v7 + 340520430;
  *(v2 - 200) = v7 ^ 0x6600C1C6;
  *(v2 - 208) = v7 + v0 + 4265;
  v8 = (*(v1 + 8 * (v0 ^ 0x2140)))(v2 - 232);
  return (*(v1 + 8 * ((10204 * (*(v2 - 232) == 16257999)) ^ v0)))(v8);
}

uint64_t sub_1000EA578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 4);
  *(a1 + 20) = v6;
  return (*(a4 + 8 * (((v6 == ((v4 + 8345) ^ 0x24D7)) * (v4 + 4545)) ^ v4)))();
}

uint64_t sub_1000EA658@<X0>(unint64_t a1@<X8>)
{
  v6 = LOWORD(STACK[0x95C]);
  switch(v6)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v7 = STACK[0x7E0] + v2;
      STACK[0x6A8] = a1;
      LODWORD(STACK[0x844]) = v1;
      STACK[0x428] = v7;
      v4 = 16257999;
      return (*(v3 + 8 * (((v4 == 16257999) * (((v5 - 50575685) & 0x303B7FB) - 5749)) ^ (v5 - 3658))))();
    case 20706:
LABEL_4:
      STACK[0x6A8] = a1;
      LODWORD(STACK[0x844]) = v1;
      v4 = 16215638;
      break;
  }

  return (*(v3 + 8 * (((v4 == 16257999) * (((v5 - 50575685) & 0x303B7FB) - 5749)) ^ (v5 - 3658))))();
}

uint64_t sub_1000EA714@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = LOWORD(STACK[0x9C8]);
  if (v68 == 17168)
  {
    goto LABEL_4;
  }

  if (v68 == 33980)
  {
    v70 = STACK[0x870];
    STACK[0x700] = v64;
    LODWORD(STACK[0x544]) = a1;
    return (*(v67 + 8 * (((v70 + v66 != 0) * (a64 - 5892)) ^ (a64 + 2936))))();
  }

  v69 = a64;
  if (v68 == 20706)
  {
LABEL_4:
    STACK[0x700] = v64;
    v65 = 16215638;
    v69 = a64;
  }

  STACK[0x7A8] = 0;
  LODWORD(STACK[0x544]) = 197499219;
  return (*(v67 + 8 * ((6207 * (v65 == ((113 * (v69 ^ 0x17C9)) ^ 0xF8132D))) ^ v69 ^ 0x1345)))();
}

uint64_t sub_1000EA7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = LODWORD(STACK[0x3E4]) ^ 0x375F;
  v5 = STACK[0x5F8];
  v6 = STACK[0x7D0];
  v7 = STACK[0x618];
  STACK[0x5E0] = *(a4 + 8 * (LODWORD(STACK[0x3E4]) - 4319));
  STACK[0x490] = v5;
  LODWORD(STACK[0x57C]) = v7;
  STACK[0x728] = v6;
  STACK[0x730] = 0;
  LODWORD(STACK[0x68C]) = 197499219;
  STACK[0x458] = 0x431A33AA2E6D965FLL;
  STACK[0x428] = 0;
  v8 = (*(a4 + 8 * (v4 + 616)))(16, 0x20040A4A59CD2);
  v9 = STACK[0x3E8];
  STACK[0x838] = v8;
  return (*(v9 + 8 * (((v8 == 0) * (v4 - 14232 + ((v4 - 1494213963) & 0x590FD675))) ^ v4)))();
}

uint64_t sub_1000EAACC(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a1 = 0;
  *a2 = 0;
  a15 = 476323082 - 1710126949 * ((2 * (&a15 & 0x3B173580) - &a15 - 991376775) ^ 0xF6F391E9);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((7 * (a16 != 16257999)) | 0x19E8)))(v17);
}

uint64_t sub_1000EAC74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v15 = v6 - 1;
  v16 = v4 + v15 + a4;
  v17 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = ((29 * (v7 ^ 0x1752u) + 0x1C315CF4BA39BAD5) | (2 * (v17 + 0x2D9C56C6ED9D3E2ELL))) - (v17 + 0x2D9C56C6ED9D3E2ELL) + v14;
  v19 = v18 ^ a1;
  v20 = v18 ^ v8;
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__(((v9 & (2 * (v21 + v20))) - (v21 + v20) + v10) ^ a2, 8);
  v23 = ((v9 & (2 * (v21 + v20))) - (v21 + v20) + v10) ^ a2 ^ __ROR8__(v20, 61);
  v24 = (((2 * (v22 + v23)) & 0x9351D0703669CB12) - (v22 + v23) + 0x365717C7E4CB1A76) ^ 0x8BD86B3AFACC8D6DLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v5 - ((v26 + v25) | v5) + ((v26 + v25) | 0x1323CE1A44C5F46ELL)) ^ 0xEEA89D249DAFB75ALL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xAC7DA0564C1838BLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (((2 * (v31 + v30)) & 0x2A5861B0BA21BA34) - (v31 + v30) - 0x152C30D85D10DD1BLL) ^ a3;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v11;
  *v16 = ((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ v12) >> (8 * (v16 & 7u));
  return (*(v13 + 8 * ((8 * (v15 != 0)) | (32 * (v15 != 0)) | (v7 - 2370))))();
}

uint64_t sub_1000EAE20()
{
  v2 = *(STACK[0x7D0] + 24);
  STACK[0x4F8] = v2;
  return (*(v1 + 8 * (((((79 * (v0 ^ 0x23C5) - 5539) | 0x80A) ^ 0xA29) * (v2 != 0)) ^ v0)))();
}

uint64_t sub_1000EB068@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_10015B090();
}

uint64_t sub_1000EB078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  HIDWORD(a13) = v14 - 869295389 * ((&a12 + 456950827 - 2 * (&a12 & 0x1B3C842B)) ^ 0xAA68A878) - 656014454;
  a12 = 0;
  (*(v13 + 8 * (v14 + 7756)))(&a12);
  v16 = a13;
  a13 = *v15;
  LODWORD(a12) = v14 + 1358806181 * (((&a12 ^ 0x4915638E) - 191959927 - 2 * ((&a12 ^ 0x4915638E) & 0xF48EEC89)) ^ 0x82B4E384) + 1405;
  v17 = (*(v13 + 8 * (v14 ^ 0x221A)))(&a12);
  return (*(v13 + 8 * ((6316 * (v16 == v14 + 16256041)) ^ v14)))(v17);
}

uint64_t sub_1000EB1DC()
{
  v2 = STACK[0x508];
  STACK[0x478] = *(v1 + 8 * v0);
  return sub_1000B71E0(v2);
}

uint64_t sub_1000EB228@<X0>(uint64_t a1@<X2>, unsigned int a2@<W8>)
{
  v22 = *(v7 + 8 * v6);
  v23.i64[0] = v3->i64 + 4;
  v23.i64[1] = v3->i64 + (v2 ^ a2 ^ v4);
  v24 = v23;
  *&STACK[0x350] = v23;
  v25.i64[0] = v3->i64 + 2;
  v25.i64[1] = v3->i64 + 3;
  v26.i64[0] = v3->i64 + 6;
  v26.i64[1] = v3->i64 + 7;
  v27.i64[0] = v3;
  v27.i64[1] = v3->i64 + 1;
  v23.i64[0] = &v3->i64[1];
  v23.i64[1] = &v3->i64[1] + 1;
  *&STACK[0x3B0] = v23;
  v23.i64[0] = &v3->i64[1] + 2;
  v23.i64[1] = &v3->i64[1] + 3;
  *&STACK[0x3A0] = v23;
  v28 = vandq_s8(v27, *&STACK[0x390]);
  v29 = vandq_s8(v26, *&STACK[0x390]);
  v30 = vandq_s8(v25, *&STACK[0x390]);
  v31 = vandq_s8(v24, *&STACK[0x390]);
  v32 = *&STACK[0x320];
  v33 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), *&STACK[0x320]);
  v34 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), *&STACK[0x320]);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), *&STACK[0x320]);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0x320]);
  v37 = vsubq_s64(vorrq_s8(v33, *&STACK[0x380]), vorrq_s8(v33, v16));
  v38 = vsubq_s64(vorrq_s8(v34, *&STACK[0x380]), vorrq_s8(v34, v16));
  v39 = vsubq_s64(vorrq_s8(v35, *&STACK[0x380]), vorrq_s8(v35, v16));
  *&STACK[0x360] = vsubq_s64(vorrq_s8(v36, *&STACK[0x380]), vorrq_s8(v36, v16));
  v40 = vaddq_s64(v38, v16);
  v41 = vaddq_s64(v37, v16);
  v42 = veorq_s8(v41, v21);
  v43 = veorq_s8(v40, v21);
  v44 = *&STACK[0x2F0];
  v45 = veorq_s8(v40, *&STACK[0x300]);
  v46 = veorq_s8(v41, *&STACK[0x300]);
  v47 = *&STACK[0x300];
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v45), *&STACK[0x2F0]);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v46), *&STACK[0x2F0]);
  v50 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v51 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v52 = veorq_s8(v48, v50);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v52);
  v55 = veorq_s8(vaddq_s64(v53, v51), v9);
  v56 = veorq_s8(v54, v9);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v58 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v59 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = *&STACK[0x2D0];
  v63 = veorq_s8(vaddq_s64(vsubq_s64(v61, vandq_s8(vaddq_s64(v61, v61), *&STACK[0x2D0])), v10), v11);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(v60, vandq_s8(vaddq_s64(v60, v60), *&STACK[0x2D0])), v10), v11);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), v12);
  v70 = veorq_s8(v68, v12);
  v71 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v72 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v73 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = *&STACK[0x370];
  v77 = *&STACK[0x290];
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), *&STACK[0x370]), v75), *&STACK[0x290]), v15);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v74, v74), *&STACK[0x370]), v74), *&STACK[0x290]), v15);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v83, v17), vorrq_s8(v83, v19)), v19), v18);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v17), vorrq_s8(v84, v19)), v19), v18);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v89.i64[0] = &v3->i64[1] + 4;
  v89.i64[1] = &v3->i64[1] + 5;
  *&STACK[0x340] = v89;
  v90 = vaddq_s64(v39, v16);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL)));
  v92 = vaddq_s64(v88, v87);
  v207.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v92, v20), vorrq_s8(v92, v13)), v13), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v8)));
  v207.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v91, v20), vorrq_s8(v91, v13)), v13), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v8)));
  v93 = veorq_s8(v90, v21);
  v94 = veorq_s8(v90, v47);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v44);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v9);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(v99, v99), v62)), v10), v11);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v12);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v76), v104), v77), v15);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, v17), vorrq_s8(v107, v19)), v19), v18);
  v26.i64[0] = &v3->i64[1] + 6;
  v26.i64[1] = &v3->i64[1] + 7;
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL)));
  v110 = vandq_s8(v26, *&STACK[0x390]);
  v111 = vaddq_s64(*&STACK[0x360], v16);
  v207.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v20), vorrq_s8(v109, v13)), v13), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v8)));
  v112 = veorq_s8(v111, v21);
  v113 = veorq_s8(v111, v47);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v44);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v9);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(v118, vandq_s8(vaddq_s64(v118, v118), v62)), v10), v11);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v12);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v76), v123), v77), v15);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v17), vorrq_s8(v126, v19)), v19), v18);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v130 = vandq_s8(v89, *&STACK[0x390]);
  v131 = vaddq_s64(v129, v128);
  v132 = vandq_s8(*&STACK[0x3A0], *&STACK[0x390]);
  v207.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v20), vorrq_s8(v131, v13)), v13), v14), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v8)));
  v133 = vandq_s8(*&STACK[0x3B0], *&STACK[0x390]);
  v134 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v32);
  v138 = vaddq_s64(v136, v32);
  v139 = vaddq_s64(v135, v32);
  v140 = vaddq_s64(v134, v32);
  v141 = vsubq_s64(vorrq_s8(v138, *&STACK[0x380]), vorrq_s8(v138, v16));
  v142 = vsubq_s64(vorrq_s8(v139, *&STACK[0x380]), vorrq_s8(v139, v16));
  v143 = vsubq_s64(vorrq_s8(v140, *&STACK[0x380]), vorrq_s8(v140, v16));
  v144 = vaddq_s64(v141, v16);
  v145 = vaddq_s64(vsubq_s64(vorrq_s8(v137, *&STACK[0x380]), vorrq_s8(v137, v16)), v16);
  v140.i64[0] = vqtbl4q_s8(v207, *&STACK[0x230]).u64[0];
  v146 = veorq_s8(v145, v21);
  v207.val[0] = veorq_s8(v144, v21);
  v207.val[1] = veorq_s8(v144, v47);
  v207.val[2] = veorq_s8(v145, v47);
  v207.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[1]), v44);
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v207.val[2]), v44);
  v148 = vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL);
  v207.val[1] = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v207.val[2], 3uLL), v207.val[2], 0x3DuLL));
  v207.val[2] = veorq_s8(v207.val[0], v148);
  v149 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[2]);
  v207.val[0] = veorq_s8(vaddq_s64(v149, v207.val[1]), v9);
  v151 = veorq_s8(v150, v9);
  v152 = vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL);
  v207.val[1] = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v207.val[2], 3uLL), v207.val[2], 0x3DuLL));
  v207.val[2] = veorq_s8(v207.val[0], v152);
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[2]);
  v207.val[0] = vaddq_s64(v153, v207.val[1]);
  v207.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v207.val[0], vandq_s8(vaddq_s64(v207.val[0], v207.val[0]), v62)), v10), v11);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(v154, vandq_s8(vaddq_s64(v154, v154), v62)), v10), v11);
  v156 = vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL);
  v207.val[1] = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v207.val[2], 3uLL), v207.val[2], 0x3DuLL));
  v207.val[2] = veorq_s8(v207.val[0], v156);
  v157 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[2]);
  v207.val[0] = veorq_s8(vaddq_s64(v157, v207.val[1]), v12);
  v159 = veorq_s8(v158, v12);
  v160 = vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL);
  v207.val[1] = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v207.val[2], 3uLL), v207.val[2], 0x3DuLL));
  v207.val[2] = veorq_s8(v207.val[0], v160);
  v161 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[2]);
  v207.val[0] = vaddq_s64(v161, v207.val[1]);
  v207.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v207.val[0], v207.val[0]), *&STACK[0x370]), v207.val[0]), v77), v15);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), *&STACK[0x370]), v162), v77), v15);
  v164 = vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL);
  v207.val[1] = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v207.val[2], 3uLL), v207.val[2], 0x3DuLL));
  v207.val[2] = veorq_s8(v207.val[0], v164);
  v165 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), v207.val[2]);
  v207.val[0] = vaddq_s64(v165, v207.val[1]);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, v17), vorrq_s8(v166, v19)), v19), v18);
  v207.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v207.val[0], v17), vorrq_s8(v207.val[0], v19)), v19), v18);
  v168 = vaddq_s64(v142, v16);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v207.val[2], 3uLL), v207.val[2], 0x3DuLL)));
  v207.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207.val[0], 0x38uLL), v207.val[0], 8uLL), veorq_s8(v207.val[0], vsraq_n_u64(vshlq_n_s64(v207.val[1], 3uLL), v207.val[1], 0x3DuLL)));
  v207.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v207.val[0], v20), vorrq_s8(v207.val[0], v13)), v13), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v8)));
  v207.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v20), vorrq_s8(v169, v13)), v13), v14), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), v8)));
  v170 = veorq_s8(v168, v21);
  v171 = veorq_s8(v168, v47);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v44);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v9);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(v176, vandq_s8(vaddq_s64(v176, v176), v62)), v10), v11);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v12);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), *&STACK[0x370]), v181), v77), v15);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v184, v17), vorrq_s8(v184, v19)), v19), v18);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL)));
  v187 = vaddq_s64(v143, v16);
  v207.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, v20), vorrq_s8(v186, v13)), v13), v14), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v8)));
  v188 = veorq_s8(v187, v21);
  v189 = veorq_s8(v187, v47);
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189), v44);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v192 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191), v9);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(v194, vandq_s8(vaddq_s64(v194, v194), v62)), v10), v11);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v197 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196), v12);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v199, v199), *&STACK[0x370]), v199), v77), v15);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202, v17), vorrq_s8(v202, v19)), v19), v18);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL)));
  v205 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v204, v20), vorrq_s8(v204, v13)), v13), v14), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v8)));
  v140.i64[1] = vqtbl4q_s8(v207, *&STACK[0x230]).u64[0];
  *v3 = v140;
  return (*(v7 + 8 * (((a1 == 16) * v5) ^ v2)))(v22, 0);
}

uint64_t sub_1000EBD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, char *a15, unsigned int a16, unsigned int a17)
{
  v20 = (((&a12 | 0x5194FED7) - (&a12 & 0x5194FED7)) ^ 0x9FD2DB5) * v17;
  a13 = v20 + 145382764;
  a16 = -654855621 - v20;
  a17 = v20 + v19 + 1674574015;
  a14 = a9;
  a15 = &a10;
  v21 = (*(v18 + 8 * (v19 ^ 0x3663)))(&a12);
  return (*(v18 + 8 * (((a12 == ((v19 - 266) ^ 0xF8012E)) * (v19 ^ 0x1C68)) ^ v19)))(v21);
}

void sub_1000EBDE4()
{
  LODWORD(STACK[0x3A8]) = 0;
  LODWORD(STACK[0x3EC]) = v0 + 1333578251;
  LODWORD(STACK[0x420]) += LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x3E4]) += LODWORD(STACK[0x584]);
  LODWORD(STACK[0x3E8]) += 64;
  JUMPOUT(0x1000A385CLL);
}

uint64_t sub_1000EBEC4()
{
  v3 = *(v1 + 8);
  STACK[0x470] = *(v2 + 8 * v0);
  return sub_1001ADDE4(v3);
}

uint64_t sub_1000EBF44(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, uint64_t a26, int a27, unsigned int a28)
{
  v31 = 1358806181 * ((~(&a25 | 0x5E31EB0E) + (&a25 & 0x5E31EB0E)) ^ 0x9EE17872);
  a26 = v28;
  a27 = v30 - v31 + 4382;
  a28 = (((a4 & 0xFFFFFFF0) + 16) ^ 0x7F7C5F3B) + ((2 * ((a4 & 0xFFFFFFF0) + 16)) & 0xFEF8BE60) + ((43 * (v30 ^ 0xD45)) ^ 0xBE9FFC37) + v31;
  a25 = ((a4 - a13 + 1374807828) ^ 0xFBF1F5BF) - v31 + ((2 * (a4 - a13 + 1374807828)) & 0xF7E3EB7E) + 2103438080;
  v32 = (*(v29 + 8 * (v30 ^ 0x28A9)))(&a25);
  return (*(v29 + 8 * ((7106 * (*(v28 + 24) == 16257999)) ^ v30)))(v32);
}

uint64_t sub_1000EC0A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x390] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x320] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x330] = vdupq_n_s64(0x38uLL);
  *&STACK[0x300] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x310] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x2E0] = vdupq_n_s64(v16);
  *&STACK[0x2F0] = vdupq_n_s64(v17);
  *&STACK[0x2C0] = vdupq_n_s64(a5);
  *&STACK[0x2D0] = vdupq_n_s64(v15);
  *&STACK[0x2A0] = vdupq_n_s64(a7);
  *&STACK[0x2B0] = vdupq_n_s64(a6);
  *&STACK[0x280] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x290] = vdupq_n_s64(a8);
  *&STACK[0x370] = vdupq_n_s64(a4);
  *&STACK[0x380] = vdupq_n_s64(a2);
  *&STACK[0x260] = vdupq_n_s64(v12);
  *&STACK[0x270] = vdupq_n_s64(v19);
  *&STACK[0x220] = vdupq_n_s64(a1);
  *&STACK[0x230] = vdupq_n_s64(a3);
  *&STACK[0x240] = vdupq_n_s64(v13);
  *&STACK[0x250] = vdupq_n_s64(v14);
  *&STACK[0x360] = xmmword_1003EAE50;
  v20 = *&STACK[0x2F0];
  v21 = *&STACK[0x2C0];
  v22 = *&STACK[0x290];
  v24 = *&STACK[0x230];
  v23 = *&STACK[0x240];
  v25 = *&STACK[0x370];
  v26 = *&STACK[0x270];
  v27 = *&STACK[0x250];
  v28 = *&STACK[0x330];
  v29.i64[0] = v8 + v9 + 9;
  v29.i64[1] = v8 + ((v10 - 1475407838) & 0x17F0FFCF ^ 0x17C3 | v9);
  v30 = v29;
  *&STACK[0x350] = v29;
  v31.i64[0] = v8 + v9 + 7;
  v31.i64[1] = v8 + v9 + 6;
  v32.i64[0] = v8 + v9 + 5;
  v32.i64[1] = v8 + v9 + 4;
  v33.i64[0] = v8 + v9 + 3;
  v33.i64[1] = v8 + v9 + 2;
  v29.i64[0] = v8 + v9 + 1;
  v29.i64[1] = v8 + v9;
  *&STACK[0x3B0] = v29;
  v29.i64[0] = v8 + v9 - 1;
  v29.i64[1] = v8 + v9 - 2;
  *&STACK[0x3A0] = v29;
  v34 = vandq_s8(v33, *&STACK[0x390]);
  v35 = vandq_s8(v32, *&STACK[0x390]);
  v36 = vandq_s8(v31, *&STACK[0x390]);
  v37 = vandq_s8(v30, *&STACK[0x390]);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = *&STACK[0x320];
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x320]);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0x320]);
  v43 = veorq_s8(v42, *&STACK[0x310]);
  v44 = veorq_s8(v41, *&STACK[0x310]);
  v45 = *&STACK[0x310];
  v46 = *&STACK[0x300];
  v47 = veorq_s8(v41, *&STACK[0x300]);
  v48 = veorq_s8(v42, *&STACK[0x300]);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), v20);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v48), v20);
  v51 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v52 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v53 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52);
  v55 = vaddq_s64(v53, v51);
  v57 = *&STACK[0x2D0];
  v56 = *&STACK[0x2E0];
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v55, v55), *&STACK[0x2E0]), v55), *&STACK[0x2D0]), v21);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v54, v54), *&STACK[0x2E0]), v54), *&STACK[0x2D0]), v21);
  v60 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = vaddq_s64(v63, v61);
  v67 = *&STACK[0x2A0];
  v66 = *&STACK[0x2B0];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(v65, vandq_s8(vaddq_s64(v65, v65), *&STACK[0x2B0])), *&STACK[0x2A0]), v22);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), *&STACK[0x2B0])), *&STACK[0x2A0]), v22);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v71 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v72 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71);
  v74 = *&STACK[0x280];
  v75 = veorq_s8(vaddq_s64(v72, v70), *&STACK[0x280]);
  v76 = veorq_s8(v73, *&STACK[0x280]);
  v77 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = vaddq_s64(v80, v78);
  v83 = *&STACK[0x380];
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v81, *&STACK[0x380]), vorrq_s8(v81, v24)), v24), v25);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, *&STACK[0x380]), vorrq_s8(v82, v24)), v24), v25);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v87 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), v26);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87), v26);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v91.i64[0] = v8 + v9 - 3;
  v91.i64[1] = v8 + v9 - 4;
  *&STACK[0x340] = v91;
  v92 = vaddq_s64(v39, v40);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL))), *&STACK[0x260]);
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), veorq_s8(v88, v90)), *&STACK[0x260]);
  v189.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v94, v27), vorrq_s8(v94, *&STACK[0x220])), *&STACK[0x220]), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v28)));
  v189.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v93, v27), vorrq_s8(v93, *&STACK[0x220])), *&STACK[0x220]), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v28)));
  v95 = v45;
  v96 = veorq_s8(v92, v45);
  v97 = veorq_s8(v92, v46);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v20);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), v56), v100), v57), v21);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), v66)), v67), v22);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v74);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, v83), vorrq_s8(v108, v24)), v24), v25);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v26);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v110.i64[0] = v8 + v9 - 5;
  v110.i64[1] = v8 + v9 - 6;
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), *&STACK[0x260]);
  v114 = vandq_s8(v110, *&STACK[0x390]);
  v115 = vaddq_s64(v38, v40);
  v189.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v113, v27), vorrq_s8(v113, *&STACK[0x220])), *&STACK[0x220]), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v28)));
  v116 = veorq_s8(v115, v45);
  v117 = veorq_s8(v115, v46);
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v20);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), v56), v120), v57), v21);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(v123, vandq_s8(vaddq_s64(v123, v123), v66)), v67), v22);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v74);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, v83), vorrq_s8(v128, v24)), v24), v25);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v26);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v134 = vandq_s8(v91, *&STACK[0x390]);
  v135 = veorq_s8(vaddq_s64(v133, v132), *&STACK[0x260]);
  v136 = vandq_s8(*&STACK[0x3A0], *&STACK[0x390]);
  v189.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v135, v27), vorrq_s8(v135, *&STACK[0x220])), *&STACK[0x220]), v23), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v28)));
  v137 = vandq_s8(*&STACK[0x3B0], *&STACK[0x390]);
  v138 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v40);
  v141 = vaddq_s64(v139, v40);
  v139.i64[0] = vqtbl4q_s8(v189, *&STACK[0x360]).u64[0];
  v189.val[0] = veorq_s8(v141, v95);
  v189.val[1] = veorq_s8(v140, v95);
  v189.val[2] = veorq_s8(v140, v46);
  v189.val[3] = veorq_s8(v141, v46);
  v189.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[1], 0x38uLL), v189.val[1], 8uLL), v189.val[2]), v20);
  v189.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v189.val[3]), v20);
  v142 = vsraq_n_u64(vshlq_n_s64(v189.val[2], 3uLL), v189.val[2], 0x3DuLL);
  v189.val[2] = veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v189.val[3], 3uLL), v189.val[3], 0x3DuLL));
  v189.val[3] = veorq_s8(v189.val[1], v142);
  v143 = vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL);
  v189.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[1], 0x38uLL), v189.val[1], 8uLL), v189.val[3]);
  v189.val[1] = vaddq_s64(v143, v189.val[2]);
  v189.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189.val[1], v189.val[1]), v56), v189.val[1]), v57), v21);
  v189.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189.val[0], v189.val[0]), v56), v189.val[0]), v57), v21);
  v144 = vsraq_n_u64(vshlq_n_s64(v189.val[2], 3uLL), v189.val[2], 0x3DuLL);
  v189.val[2] = veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v189.val[3], 3uLL), v189.val[3], 0x3DuLL));
  v189.val[3] = veorq_s8(v189.val[1], v144);
  v145 = vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL);
  v189.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[1], 0x38uLL), v189.val[1], 8uLL), v189.val[3]);
  v189.val[1] = vaddq_s64(v145, v189.val[2]);
  v189.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v189.val[1], vandq_s8(vaddq_s64(v189.val[1], v189.val[1]), v66)), v67), v22);
  v189.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v189.val[0], vandq_s8(vaddq_s64(v189.val[0], v189.val[0]), v66)), v67), v22);
  v146 = vsraq_n_u64(vshlq_n_s64(v189.val[2], 3uLL), v189.val[2], 0x3DuLL);
  v189.val[2] = veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v189.val[3], 3uLL), v189.val[3], 0x3DuLL));
  v189.val[3] = veorq_s8(v189.val[1], v146);
  v147 = vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL);
  v189.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[1], 0x38uLL), v189.val[1], 8uLL), v189.val[3]);
  v189.val[1] = veorq_s8(vaddq_s64(v147, v189.val[2]), v74);
  v189.val[0] = veorq_s8(v189.val[0], v74);
  v148 = vsraq_n_u64(vshlq_n_s64(v189.val[2], 3uLL), v189.val[2], 0x3DuLL);
  v189.val[2] = veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v189.val[3], 3uLL), v189.val[3], 0x3DuLL));
  v189.val[3] = veorq_s8(v189.val[1], v148);
  v149 = vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL);
  v189.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[1], 0x38uLL), v189.val[1], 8uLL), v189.val[3]);
  v189.val[1] = vaddq_s64(v149, v189.val[2]);
  v189.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v189.val[0], *&STACK[0x380]), vorrq_s8(v189.val[0], v24)), v24), *&STACK[0x370]);
  v189.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v189.val[1], *&STACK[0x380]), vorrq_s8(v189.val[1], v24)), v24), *&STACK[0x370]);
  v189.val[2] = veorq_s8(v189.val[1], vsraq_n_u64(vshlq_n_s64(v189.val[2], 3uLL), v189.val[2], 0x3DuLL));
  v189.val[3] = veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v189.val[3], 3uLL), v189.val[3], 0x3DuLL));
  v189.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[1], 0x38uLL), v189.val[1], 8uLL), v189.val[2]), v26);
  v189.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL), v189.val[3]), v26);
  v150 = vsraq_n_u64(vshlq_n_s64(v189.val[2], 3uLL), v189.val[2], 0x3DuLL);
  v189.val[2] = veorq_s8(v189.val[0], vsraq_n_u64(vshlq_n_s64(v189.val[3], 3uLL), v189.val[3], 0x3DuLL));
  v189.val[3] = veorq_s8(v189.val[1], v150);
  v151 = vsraq_n_u64(vshlq_n_s64(v189.val[0], 0x38uLL), v189.val[0], 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v40);
  v189.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189.val[1], 0x38uLL), v189.val[1], 8uLL), v189.val[3]);
  v189.val[1] = veorq_s8(vaddq_s64(v151, v189.val[2]), *&STACK[0x260]);
  v189.val[0] = veorq_s8(v189.val[0], *&STACK[0x260]);
  v189.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v189.val[0], v27), vorrq_s8(v189.val[0], *&STACK[0x220])), *&STACK[0x220]), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v110, 3uLL), v28)));
  v189.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v189.val[1], v27), vorrq_s8(v189.val[1], *&STACK[0x220])), *&STACK[0x220]), v23), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), v28)));
  v153 = veorq_s8(v152, v95);
  v154 = veorq_s8(v152, v46);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v20);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v157, v157), v56), v157), v57), v21);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(v160, vandq_s8(vaddq_s64(v160, v160), v66)), v67), v22);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v74);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v165, *&STACK[0x380]), vorrq_s8(v165, v24)), v24), *&STACK[0x370]);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v26);
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL))), *&STACK[0x260]);
  v170 = vaddq_s64(v138, v40);
  v189.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v27), vorrq_s8(v169, *&STACK[0x220])), *&STACK[0x220]), v23), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v28)));
  v171 = veorq_s8(v170, v95);
  v172 = veorq_s8(v170, v46);
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v20);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v56), v175), v57), v21);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(v178, vandq_s8(vaddq_s64(v178, v178), v66)), v67), v22);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v74);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v183, *&STACK[0x380]), vorrq_s8(v183, v24)), v24), *&STACK[0x370]);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v26);
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL))), *&STACK[0x260]);
  v189.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v187, v27), vorrq_s8(v187, *&STACK[0x220])), *&STACK[0x220]), v23), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v28)));
  v139.i64[1] = vqtbl4q_s8(v189, *&STACK[0x360]).u64[0];
  v189.val[0] = vrev64q_s8(*(v11 - 15 + v9 - 1));
  v189.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v189.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v189.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v189.val[0], v189.val[0], 8uLL), v189.val[1]), v139));
  *v110.i64[1] = vextq_s8(v189.val[0], v189.val[0], 8uLL);
  return (*(v18 + 8 * ((7795 * (v9 == 16)) ^ v10)))();
}

uint64_t sub_1000ECC50()
{
  v5 = STACK[0x89C];
  STACK[0x640] = v0;
  LODWORD(STACK[0x9F0]) = v3;
  LOWORD(STACK[0x9F6]) = v2;
  LODWORD(STACK[0x9F8]) = v5;
  LODWORD(STACK[0x9FC]) = STACK[0x504];
  STACK[0xA00] = STACK[0x710];
  STACK[0x578] = STACK[0x440];
  return (*(v4 + 8 * (((((v0 == 0) ^ (v1 - 3)) & 1) * ((v1 + 2703) ^ 0x168D)) ^ v1)))();
}

void sub_1000ECD28()
{
  STACK[0x720] = 0;
  STACK[0x558] = 0;
  STACK[0x908] = *(v1 + 8 * ((v0 + 1029316138) & 0x42A5BFBE));
  JUMPOUT(0x10001269CLL);
}

uint64_t sub_1000ECE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *v23 = v25;
  *(v25 + 8) = *(v24 + 8);
  *(v24 + 8) = v25;
  *(v26 - 240) = a23;
  return sub_1000FFEF0();
}

uint64_t sub_1000ECE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  a12 = &a9;
  a14 = 1317436891 * ((1963869603 - (&a12 | 0x750E45A3) + (&a12 | 0x8AF1BA5C)) ^ 0x3AF2222A) + 8154;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * (((16 * ((((a13 == v15) ^ 0x676) & 1) == 0)) & 0xDF | (32 * ((~(a13 == v15) ^ 0x76) & 1))) ^ 0x1491u)))(v16);
}

uint64_t sub_1000ECF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, int a39, int a40, uint64_t a41, uint64_t a42)
{
  v44 = v43 - 152;
  v45 = 1710126949 * ((0x7BB1587321DD536FLL - ((v43 - 152) | 0x7BB1587321DD536FLL) + a35) ^ 0xEC48C355EC39F700);
  *(v44 + 16) = (v42 + 1) - v45;
  *(v43 - 152) = a40 ^ v45;
  *(v43 - 148) = v45;
  *(v43 - 128) = v45 ^ 0x4EF48A69;
  *(v43 - 144) = a38 - v45;
  *(v43 - 140) = a36 - v45;
  *(v44 + 32) = v45 ^ 3;
  v46 = (*(a42 + 77568))(v43 - 152);
  return (*(a42 + 8 * *(v43 - 124)))(v46);
}

void sub_1000ED05C()
{
  LODWORD(STACK[0x378]) = 0;
  LODWORD(STACK[0x384]) = LODWORD(STACK[0x590]) - 173196290 + ((v0 + 1831598818) & 0x92D41FDB);
  LODWORD(STACK[0x36C]) = -193708652;
  v1 = STACK[0x380];
  LODWORD(STACK[0x2B4]) = (LODWORD(STACK[0x380]) + 107238597) & 0xF99BA526;
  LODWORD(STACK[0x37C]) = v1 + 1953430782;
  LODWORD(STACK[0x2D4]) = 1664509045;
  LODWORD(STACK[0x344]) = -208340902;
  LODWORD(STACK[0x354]) = 1590967919;
  LODWORD(STACK[0x2D8]) = 1925824307;
  LODWORD(STACK[0x2D0]) = 1246408178;
  LODWORD(STACK[0x328]) = 956475228;
  LODWORD(STACK[0x338]) = 983842159;
  LODWORD(STACK[0x2E8]) = 265744065;
  LODWORD(STACK[0x318]) = -1111054927;
  LODWORD(STACK[0x348]) = 2070142582;
  LODWORD(STACK[0x31C]) = -194274085;
  LODWORD(STACK[0x2E4]) = 2005456537;
  LODWORD(STACK[0x360]) = 270548299;
  LODWORD(STACK[0x358]) = -1265663572;
  LODWORD(STACK[0x320]) = -390585731;
  LODWORD(STACK[0x2FC]) = -1400802295;
  LODWORD(STACK[0x2F0]) = -1363987117;
  LODWORD(STACK[0x2C8]) = 1794410512;
  LODWORD(STACK[0x340]) = -400452135;
  LODWORD(STACK[0x314]) = -2136741393;
  LODWORD(STACK[0x2EC]) = -143470825;
  LODWORD(STACK[0x308]) = -1948284743;
  LODWORD(STACK[0x33C]) = 1087608305;
  LODWORD(STACK[0x310]) = 676451177;
  LODWORD(STACK[0x2F8]) = 1793873007;
  LODWORD(STACK[0x2CC]) = -151876413;
  LODWORD(STACK[0x330]) = 251028286;
  LODWORD(STACK[0x394]) = 52;
  LODWORD(STACK[0x2F4]) = 1912463715;
  LODWORD(STACK[0x2E0]) = 811883256;
  LODWORD(STACK[0x2DC]) = -1606862964;
  LODWORD(STACK[0x300]) = -377587447;
  LODWORD(STACK[0x2C0]) = 1211065387;
  JUMPOUT(0x100038194);
}

void sub_1000ED280(int a1@<W1>, unsigned int a2@<W3>, int a3@<W4>, unsigned int a4@<W8>)
{
  v13 = (a3 - 2162) * (a1 & 0xF) + 478792 - (((((a3 - 2162) * (a1 & 0xFu) + 478792) * v6) >> 32) >> 9) * v12;
  v14 = STACK[0xC3A];
  LOBYTE(STACK[0xC3A]) = *(v5 + v13);
  *(v5 + v13) = v14;
  v15 = (((a2 % 0xF + 618) | (405 - a2 % 0xF)) & v10) * (a2 % 0xF + 618);
  v16 = v15 - ((4432371 * v15) >> 32) * v12;
  v17 = a2 + 1501470859;
  v18 = STACK[0xF42];
  LOBYTE(STACK[0xF42]) = *(v5 + v16);
  *(v5 + (a2 % 0xF * v10 + 479568 - ((4432371 * (a2 % 0xF * v10 + 479568)) >> 32) * v12)) = v18;
  v19 = a4 % 0xE * v10 + 480344 - ((4432371 * (a4 % 0xE * v10 + 480344)) >> 32) * v12;
  v20 = a1 + 76858707;
  v21 = STACK[0xE81];
  LOBYTE(STACK[0xE81]) = *(v5 + v19);
  *(v5 + v19) = v21;
  LOBYTE(v19) = STACK[0xDC0];
  v22 = a2 + 1501470859 + a4;
  v23 = v7 ^ a4;
  v24 = v7 % 0xD * v10 + 481120 - ((4432371 * (v7 % 0xD * v10 + 481120)) >> 32) * v12;
  LOBYTE(STACK[0xDC0]) = *(v5 + v24);
  v25 = v20 + v22;
  v26 = v23 - (v20 + v22);
  *(v5 + v24) = v19;
  v27 = v25 % 0xC * v10 + 481896 - ((4432371 * (v25 % 0xC * v10 + 481896)) >> 32) * v12;
  v28 = v17 - v26;
  LOBYTE(v23) = STACK[0xCFF];
  LOBYTE(STACK[0xCFF]) = *(v5 + v27);
  *(v5 + v27) = v23;
  LOBYTE(v27) = STACK[0xC3E];
  v29 = (v28 - v28 / 0xB * v4) * v10 + 482672;
  v30 = v29 - ((4432371 * v29) >> 32) * v12;
  LOBYTE(STACK[0xC3E]) = *(v5 + v30);
  *(v5 + v30) = v27;
  v31 = v22 ^ 0xEDCECD9F;
  v32 = v31 % 0xA * v10 + 483448 - ((4432371 * (v31 % 0xA * v10 + 483448)) >> 32) * v12;
  LOBYTE(v23) = STACK[0xF46];
  LOBYTE(STACK[0xF46]) = *(v5 + v32);
  v33 = v26 % 9 * v10 + 484224;
  *(v5 + v32) = v23;
  v34 = v33 - 1938 * ((2216186 * v33) >> 32);
  if (v34 >= 0x3C9)
  {
    v34 -= 969;
  }

  v35 = STACK[0xE85];
  LOBYTE(STACK[0xE85]) = *(v5 + v34);
  v36 = v26 - v28;
  v37 = v28 ^ v31;
  v38 = (v36 ^ v25) - 1194124740;
  *(v5 + (v33 - ((4432371 * v33) >> 32) * v12)) = v35;
  v39 = (((v36 ^ v25) + 60) & 7) * v10 + 485000 - ((4432371 * ((((v36 ^ v25) + 60) & 7u) * v10 + 485000)) >> 32) * v12;
  v40 = (v36 ^ v31) + 1675149192;
  v41 = v40 + v37;
  v42 = *(v5 + (v39 & 0x1F4 ^ 0x1F4) + (v39 & 0x1F4));
  LOBYTE(STACK[0xDC4]) = *(v5 + v39);
  *(v5 + v39) = v42;
  v43 = v41 % 7 * v10 + 485776 - ((4432371 * (v41 % 7 * v10 + 485776)) >> 32) * v12;
  v44 = STACK[0xD03];
  LOBYTE(STACK[0xD03]) = *(v5 + v43);
  *(v5 + v43) = v44;
  v45 = v40 % 6;
  v46 = v41 + v11;
  v47 = ((v45 + 627) & 0x208 ^ (396 - v45) & 0x108) * (v45 + 627);
  v48 = v42 & v4 ^ 9 | v42 & v4 ^ 2;
  LOBYTE(v42) = STACK[0xC42];
  LOBYTE(STACK[0xC42]) = *(v5 + (v47 - ((4432371 * v47) >> 32) * v12));
  *(v5 + (v45 * v10 + 486552 - ((4432371 * (v45 * v10 + 486552)) >> 32) * v12)) = v42;
  LOBYTE(v47) = STACK[0xF4A];
  v49 = (v48 + (v36 ^ v9) % 5) * v10 + 478792;
  v50 = v49 - ((4432371 * v49) >> 32) * v12;
  LOBYTE(STACK[0xF4A]) = *(v5 + v50);
  *(v5 + v50) = v47;
  v51 = v8 + ((v46 + v38) & 3) * v10 - 776;
  v52 = v51 - (((v51 * v6) >> 32) >> 9) * v12;
  v53 = STACK[0xE89];
  LOBYTE(STACK[0xE89]) = *(v5 + v52);
  *(v5 + v52) = v53;
  v54 = v8 + (v46 - (v40 ^ v38)) % 3 * v10 - ((4432371 * (v8 + (v46 - (v40 ^ v38)) % 3 * v10)) >> 32) * v12;
  LOBYTE(v47) = STACK[0xDC8];
  LOBYTE(STACK[0xDC8]) = *(v5 + v54);
  STACK[0x5B0] = v5;
  *(v5 + v54) = v47;
  v55 = 1575;
  if (((v40 ^ ((v36 ^ v25) + 60)) - (v46 + (v36 ^ v25) + 60)))
  {
    v55 = 1382;
  }

  v56 = STACK[0xD07];
  LOBYTE(STACK[0xD07]) = *(&STACK[0x6E0] + v55);
  *(&STACK[0x6E0] + v55) = v56;
  JUMPOUT(0x1000ED740);
}

uint64_t sub_1000ED838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v22 = 1824088897 * ((((&a15 | 0x5F08032) ^ 0xFFFFFFFE) - (~&a15 | 0xFA0F7FCD)) ^ 0xA266ACAF);
  a17 = a11;
  a18 = &a10;
  a16 = v22 - 2139650835;
  a19 = -654855621 - v22;
  a20 = v22 + v21 + 1674575345;
  v23 = (*(v20 + 8 * (v21 ^ 0x2B31)))(&a15);
  return (*(v20 + 8 * (((a15 == (v21 ^ 0xF81D76)) * ((v21 + 762) ^ 0x11C1)) ^ v21)))(v23);
}

uint64_t sub_1000ED908@<X0>(int a1@<W2>, int a2@<W3>, unint64_t a3@<X4>, int a4@<W5>, int a5@<W8>)
{
  v11 = *(v9 + 4 * (v5 + 1));
  v12 = *(v9 + 4 * (((v7 + a5 + 2741) ^ a3) + v5)) ^ ((v11 & 0x7FFFFFFE | v6 & 0x80000000) >> 1);
  *(v9 + 4 * v5) = (a1 + v12 - (a2 & (2 * v12))) ^ *(v8 + 4 * (v11 & 1));
  return (*(v10 + 8 * (((v5 == 226) * a4) ^ a5)))();
}

uint64_t sub_1000ED974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * ((801146525 - (&a16 | 0x2FC0869D) + (&a16 | 0xD03F7962)) ^ 0x603CE114) + 8154;
  a16 = &a15;
  v20 = (*(v18 + 77096))(&a16);
  return (*(v18 + 8 * ((47 * (a17 == 16257999)) ^ v19)))(v20);
}

uint64_t sub_1000EDA18@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = a2 + 7;
  v5 = a2 + 1116;
  v6 = (a2 + 2113006710) & 0x820E1FF7;
  *(v3 - 228) = a2 + 7 - 33731311 * ((98700545 - ((v3 - 232) | 0x5E20D01) + ((v3 - 232) | 0xFA1DF2FE)) ^ 0xC3EB38DD) + 1934672318;
  v7 = *(v2 + 8 * (a2 + 5518));
  STACK[0x3E8] = v2;
  v7(v3 - 232);
  return (*(STACK[0x3E8] + 8 * (((*(v3 - 232) == v6 + 16250712) * (v5 ^ 0x1F47)) ^ v4)))(a1);
}