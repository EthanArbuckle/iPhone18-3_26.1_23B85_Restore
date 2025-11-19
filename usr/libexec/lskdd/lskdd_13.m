uint64_t sub_100342914@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W6>, int a4@<W7>, uint64_t a5@<X8>)
{
  v19 = (((v10 ^ 0x632BD90A) - 1663817994) ^ ((v10 ^ 0x98239084) + a3) ^ (v5 - 878684704 + (v10 ^ (a1 + 110)) + 189434032)) + 833141958;
  v20 = (v19 ^ 0x3663FBAC) & (2 * (v19 & 0xA073C3CD)) ^ v19 & 0xA073C3CD;
  v21 = ((2 * (v19 ^ 0x76C7FDA4)) ^ 0xAD687CD2) & (v19 ^ 0x76C7FDA4) ^ (2 * (v19 ^ 0x76C7FDA4)) & v6;
  v22 = v21 ^ 0x52940229;
  v23 = (v21 ^ (v11 + 2108)) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x5AD0F9A4) & v22 ^ (4 * v22) & v6;
  v25 = (v24 ^ 0x52903820) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ (a4 + 583))) ^ 0x6B43E690) & (v24 ^ (a4 + 583)) ^ (16 * (v24 ^ (a4 + 583))) & (v6 - 8);
  v27 = v25 ^ (v6 + 1) ^ (v26 ^ a2) & (v25 << 8);
  v28 = v19 ^ (2 * ((v27 << 16) & 0x56B40000 ^ v27 ^ ((v27 << 16) ^ 0x3E690000) & (((v26 ^ 0x94B41869) << 8) & 0x56B40000 ^ 0x42800000 ^ (((v26 ^ 0x94B41869) << 8) ^ 0x343E0000) & (v26 ^ 0x94B41869))));
  v29 = v28 ^ v7;
  v30 = __ROR8__((v9 + v29) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = (v18 - v30) & 0x89D73D24A5146FB9 | (v30 + v14) & 0x7428C2DB5AEB9046;
  v32 = __ROR8__(v31 ^ 0x646F63B58120DF3DLL, 8);
  v31 ^= 0x143449BAA5BA3427uLL;
  v33 = (v32 + v31) ^ v12;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v35 + v34 - ((2 * (v35 + v34)) & 0xF278DCE9F46AB3C8) - 0x6C3918B05CAA61CLL) ^ 0xE53EB12FDFB73A09;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v15;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v13;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v17;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0x7D2E210365CC6152) + 0x3E971081B2E630A9) ^ 0x8C152E9512DA33CELL;
  *(a5 + v29) = (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v43, 61))) ^ v16) >> (8 * ((v9 + (v28 ^ v7)) & 7))) ^ *(v9 + v29);
  return (*(STACK[0x57D8] + 8 * ((20513 * (v28 == v7)) ^ v8)))();
}

uint64_t sub_100342C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14.val[0].i64[0] = (v5 ^ 0x2963) & (v3 + a1 - 1);
  v14.val[0].i64[1] = (v3 + a1 + 14) & 0xF;
  v14.val[1].i64[0] = (v3 + a1 + 13) & 0xF;
  v14.val[1].i64[1] = (v3 + a1 + 12) & 0xF;
  v14.val[2].i64[0] = (v3 + a1 + 11) & 0xF;
  v14.val[2].i64[1] = (v3 + a1 + 10) & 0xF;
  v14.val[3].i64[0] = (v3 + a1 + 9) & 0xF;
  v14.val[3].i64[1] = (v3 + a1) & 0xF ^ 8;
  *(a2 + v3) = veor_s8(veor_s8(veor_s8(*(v11 + v14.val[0].i64[0]), *(a3 + v3)), veor_s8(*(v14.val[0].i64[0] + v10 + 4), *(v9 + v14.val[0].i64[0]))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, v8[26]), v12)));
  return (*(STACK[0x57D8] + 8 * (((v4 == a1) * v7) ^ v6)))(a1 - 8, a2 - 8, a3 - 8);
}

uint64_t sub_100342DAC()
{
  v0 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1420]));
  STACK[0x8CB8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1424]));
  return v0();
}

uint64_t sub_100342E04()
{
  v0 = STACK[0x51B8] - 22614;
  v1 = STACK[0x51B8] - 20782;
  LODWORD(STACK[0x6EB0]) = STACK[0x4B90];
  v2 = STACK[0x57D8];
  STACK[0x8418] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x264B) + v1)))();
}

uint64_t sub_100342E64()
{
  v2 = *(STACK[0x57D8] + 8 * ((62 * ((((v0 + 7311) ^ (v1 == 0)) & 1) == 0)) ^ v0));
  LODWORD(STACK[0x57A0]) = -143156082;
  return v2();
}

uint64_t sub_100342F8C@<X0>(uint64_t a1@<X8>)
{
  v9 = STACK[0x51B8] + v5;
  v10 = a1 - 1;
  STACK[0xD2F8] = v10;
  LOBYTE(STACK[0xFC43]) = (v1 ^ v7) * (v1 + 17);
  v11 = (*(*v3 + 32 * *(((v2 + v10 - *v4) & 0xFFFFFFFFFFFFFFF0) + *v8 + 8) + 16))();
  return (*(STACK[0x57D8] + 8 * (((STACK[0xD2F8] == 0) * v6) ^ v9)))(v11);
}

uint64_t sub_100343148@<X0>(int a1@<W8>)
{
  v2 = a1 - 96;
  v3 = ((a1 + 1819194601) & 0x9390D7EF) - 551681480;
  v4 = (((v1 ^ 0x28C91A43) - 684268099) ^ ((v1 ^ 0x688715CD) - 1753683405) ^ ((v1 ^ 0x92528F1A) + 1840083174)) + 917237266;
  v5 = ((v4 ^ 0xE6D961B6) + 2108289841) ^ v4 ^ ((v4 ^ 0x92355350) + 155566551) ^ ((v4 ^ 0xFFFFEFBE) + 1687125305) ^ ((v4 ^ 0x3082B9DE ^ v3) + 1961632424);
  LODWORD(STACK[0xDEF0]) = v5 ^ 0xB693EDED;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v2 + 432)))(v5 ^ 0x648F6D79);
  STACK[0x82A8] = v7;
  return (*(v6 + 8 * ((28 * (v7 != 0)) ^ v2)))();
}

uint64_t sub_100343390@<X0>(int a1@<W8>)
{
  v2 = STACK[0x57D8];
  STACK[0x6100] = *(STACK[0x57D8] + 8 * a1);
  STACK[0x77F0] = v1;
  v3 = STACK[0x7ED8];
  v4 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x68B0] = v4;
  STACK[0x7ED8] = v3 + 128;
  v5 = (*(v2 + 8 * (STACK[0x51B8] ^ 0x240D)))(v4, 0, 120);
  v6 = STACK[0x1308];
  STACK[0x7A18] = *(v2 + 8 * SLODWORD(STACK[0x1308]));
  return (*(v2 + 8 * ((LODWORD(STACK[0x1304]) + 9050) ^ v6)))(v5);
}

uint64_t sub_100343484()
{
  v2 = STACK[0x8E80] + 4 * (((v1 + 22524) ^ 0xCB0EBD8B) + v0);
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = v2;
  LODWORD(STACK[0x9094]) = -32197465;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100343514()
{
  LODWORD(STACK[0xE004]) = v0;
  LODWORD(STACK[0xE008]) = v0 | 0x10;
  v2 = (((LODWORD(STACK[0xDFE4]) ^ 0xAAC6129C) + 1429859684) ^ (((v1 + 10532) ^ LODWORD(STACK[0xDFE4]) ^ 0x79205C44) - 2032146753) ^ (((v1 - 7136) | 0x520) + (LODWORD(STACK[0xDFE4]) ^ 0x1FA8B49) - 33198186)) - 588863295;
  if (v0 + 181020733 > v2 && v2 > 0xACA282C)
  {
    v4 = STACK[0x5640];
  }

  else
  {
    v4 = STACK[0x5790];
  }

  LODWORD(STACK[0xE00C]) = v4;
  return (*(STACK[0x57D8] + 8 * ((10337 * (v4 == -143113071)) ^ v1)))();
}

uint64_t sub_100343694()
{
  LODWORD(STACK[0xB354]) = v1;
  v4 = STACK[0x2620];
  LODWORD(STACK[0x1D4D4]) = (v0 - 2031199209) ^ STACK[0x2620];
  STACK[0x1D4C0] = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v0 + 1451493860;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4E0]) = v4 + v0 - 2031199209 + 76;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 2031199209) ^ 0xDA3) - v4;
  STACK[0x1D4D8] = v2 + v4;
  v5 = v0 + 9182;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_10034372C()
{
  v1 = (v0 - 1433752786) & STACK[0xFEC];
  STACK[0xB7C8] = 0;
  STACK[0xADA8] = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0xF7783817)))(STACK[0x63F8], &STACK[0x93B0], STACK[0x3E50], &STACK[0xB7C8], &STACK[0xADA8]);
  v4 = (v3 ^ 0xFF7E7DBB) + (v1 ^ 0xF7F989E9) + ((2 * v3) & 0xFEFCFB76);
  return (*(v2 + 8 * ((210 * ((((v0 + 143132890) ^ (((v4 - v0) | (v0 - v4)) >> 31)) & 1) == 0)) ^ (v0 + 143118567))))();
}

uint64_t sub_1003438A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v14 = v8 + v6 + a5;
  v15 = *(*v9 + ((*v13 & ((v14 & 0xFFFFFFF8) + a3)) & 0xFFFFFFFFFFFFFFF8));
  v16 = (__ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8) + v15) ^ 0x8BFE417BEF7F1026;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v12;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v10;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ (((v7 - 11278) | 0x4044u) + 0x3662C1F52A6E53E8);
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0xAE6A5E3D7C275A04) - (v24 + v23) - 0x57352F1EBE13AD02) ^ 0x2A3CB0E452DB5FBCLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a4;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  *(a1 + v6) = (((__ROR8__((((2 * (v29 + v28)) | 0x46F0344053E0EAALL) - (v29 + v28) - 0x23781A2029F0755) ^ 0x5C859B5886E98437, 8) + ((((2 * (v29 + v28)) | 0x46F0344053E0EAALL) - (v29 + v28) - 0x23781A2029F0755) ^ 0x5C859B5886E98437 ^ __ROR8__(v28, 61))) ^ v11) >> (8 * (v14 & 7u))) ^ *v14;
  return (*(STACK[0x57D8] + 8 * ((15 * (((v6 + 1) ^ v5) == a2)) ^ v7)))();
}

uint64_t sub_100343A6C()
{
  LODWORD(STACK[0x6B04]) = -769884012;
  STACK[0x78F0] = 0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x6B04];
  LODWORD(STACK[0x9094]) = -32197471;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100343CD4()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 23784)))(192);
  STACK[0xAAB0] = v3;
  v4 = STACK[0x4C30];
  if (v3)
  {
    v4 = v1;
  }

  return (*(v2 + 8 * (((v4 != -143113071) * (((v0 + 8432) | 0x1810) ^ 0x587D)) ^ v0)))();
}

uint64_t sub_100343F74()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 - 16855)))(v2);
}

uint64_t sub_100343FA4()
{
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717166316) ^ (1964904101 * ((((v1 - 240) | 0x1F54E577) - (v1 - 240) + ((v1 - 240) & 0xE0AB1A88)) ^ 0xE5760EF3));
  STACK[0x1D4C8] = STACK[0x4168];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 26881)))(v1 - 240);
  v4 = STACK[0xA5E4];
  LODWORD(STACK[0xDD7C]) = STACK[0xA5E4];
  return (*(v2 + 8 * (((((v0 + 89) ^ (v4 == -143113071)) & 1) * ((v0 + 21337) ^ 0x6681)) ^ v0)))(v3);
}

uint64_t sub_100344238()
{
  v0 = STACK[0x51B8] + 327873210;
  v1 = STACK[0x51B8] - 1954996420;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0x5C50]);
  STACK[0x5C50] = 0;
  return (*(v2 + 8 * (v1 ^ 0x8B795D53 ^ (7785 * (v1 != (v0 ^ 0xC901B277))))))(v3);
}

uint64_t sub_1003442AC()
{
  v1 = STACK[0x57D8];
  STACK[0x9770] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((16112 * ((v0 ^ 0xA497519B) < 0x9BE336D)) ^ (v0 + 2151))))();
}

uint64_t sub_100344338()
{
  v0 = STACK[0x51B8] + 4652;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x5C80]);
  STACK[0x5C80] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100344378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = v6 + 461;
  v9 = a6 != ((v8 - 21346) ^ (v8 - 21347));
  return (*(v7 + 8 * ((v9 | (16 * v9)) ^ v8)))();
}

uint64_t sub_1003445C0()
{
  v2 = v0 - 453;
  *v1 = 0;
  v1[1] = 0;
  v3 = v0 + 9207;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * v3))(v1);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_100344634()
{
  LODWORD(STACK[0xB5C4]) = v1;
  v4 = 1534937323 * ((0x2288A4C667E5D0A8 - ((v3 - 240) | 0x2288A4C667E5D0A8) + STACK[0x23E0]) ^ 0x100FD3FB5EF4D410);
  STACK[0x1D4C0] = v2 ^ v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v0 + 1451493860;
  LODWORD(STACK[0x1D4D4]) = (v0 - 759437273) ^ v4;
  LODWORD(STACK[0x1D4C8]) = v0 - 759437273 - v4 + 3790;
  LODWORD(STACK[0x1D4E0]) = ((v0 - 759437273) ^ 0x1E3) + v4;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  v5 = v0 + 9182;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1003447A8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x7ED8] = STACK[0x7ED8] - 20650 + (v2 + 3013);
  *(STACK[0x61F8] - 0x30BDFED8F32E6831) = a2;
  return (*(STACK[0x57D8] + 8 * ((220 * (*(STACK[0xCA20] + 16) == a1)) ^ v2)))();
}

uint64_t sub_1003448CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19.i64[0] = a3 + v3 + (v5 ^ 0xFFFFFFFFFFFFDCF7);
  v19.i64[1] = a3 + v3 - 4;
  v20 = v19;
  *&STACK[0x56C0] = v19;
  v19.i64[0] = a3 + v3 - 1;
  v19.i64[1] = a3 + v3 - 2;
  v21 = v19;
  *&STACK[0x5680] = v19;
  v19.i64[0] = a3 + v3 - 5;
  v19.i64[1] = a3 + v3 - 6;
  v22 = v19;
  *&STACK[0x5660] = v19;
  v19.i64[0] = a3 + v3 - 7;
  v19.i64[1] = a3 + v3 - 8;
  v23 = v19;
  *&STACK[0x5670] = v19;
  v19.i64[0] = a3 + v3 - 9;
  v19.i64[1] = a3 + v3 - 10;
  v24 = v19;
  *&STACK[0x5700] = v19;
  v19.i64[0] = a3 + v3 - 11;
  v19.i64[1] = a3 + v3 - 12;
  v25 = v19;
  *&STACK[0x56F0] = v19;
  v19.i64[0] = a3 + v3 - 13;
  v26.i64[0] = a3 + v3 - 15;
  v19.i64[1] = a3 + v3 - 14;
  v27 = v19;
  *&STACK[0x56D0] = v19;
  *&STACK[0x5710] = *(a3 + v3 - 16);
  v26.i64[1] = a3 + v3 - 16;
  *&STACK[0x56E0] = v26;
  v19.i64[0] = a2 + v3 + v14;
  v28.i64[0] = a2 + v3 + v8;
  v19.i64[1] = a2 + v3 + v4;
  v29 = v19;
  v30 = a2 + v3 + v10;
  v28.i64[1] = v30;
  v31 = v28;
  v32 = vandq_s8(v26, *&STACK[0x4D70]);
  v33 = vandq_s8(v27, *&STACK[0x4D70]);
  v34 = vandq_s8(v25, *&STACK[0x4D70]);
  v35 = vandq_s8(v24, *&STACK[0x4D70]);
  v36 = vandq_s8(v23, *&STACK[0x4D70]);
  v37 = vandq_s8(v22, *&STACK[0x4D70]);
  v38 = vandq_s8(v21, *&STACK[0x4D70]);
  v39 = vandq_s8(v20, *&STACK[0x4D70]);
  v40 = *&STACK[0x4D70];
  v41 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v49 = vaddq_s64(vsubq_s64(v48, vandq_s8(vaddq_s64(vaddq_s64(v48, v48), v17), v16)), v15);
  v50 = vaddq_s64(vsubq_s64(v47, vandq_s8(vaddq_s64(vaddq_s64(v47, v47), v17), v16)), v15);
  v51 = vaddq_s64(vsubq_s64(v46, vandq_s8(vaddq_s64(vaddq_s64(v46, v46), v17), v16)), v15);
  v52 = vaddq_s64(vsubq_s64(v45, vandq_s8(vaddq_s64(vaddq_s64(v45, v45), v17), v16)), v15);
  v53 = vaddq_s64(vsubq_s64(v44, vandq_s8(vaddq_s64(vaddq_s64(v44, v44), v17), v16)), v15);
  v54 = vaddq_s64(vsubq_s64(v43, vandq_s8(vaddq_s64(vaddq_s64(v43, v43), v17), v16)), v15);
  v55 = vaddq_s64(vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), v17), v16)), v15);
  v56 = vaddq_s64(vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), v17), v16)), v15);
  v57 = veorq_s8(v56, v18);
  v58 = veorq_s8(v55, v18);
  v59 = veorq_s8(v54, v18);
  v60 = veorq_s8(v53, v18);
  v61 = veorq_s8(v52, v18);
  v62 = veorq_s8(v51, v18);
  v63 = veorq_s8(v50, v18);
  v64 = veorq_s8(v49, v18);
  v65 = veorq_s8(v49, *&STACK[0x5650]);
  v66 = veorq_s8(v50, *&STACK[0x5650]);
  v67 = veorq_s8(v51, *&STACK[0x5650]);
  v68 = veorq_s8(v52, *&STACK[0x5650]);
  v69 = veorq_s8(v53, *&STACK[0x5650]);
  v70 = veorq_s8(v54, *&STACK[0x5650]);
  v71 = veorq_s8(v55, *&STACK[0x5650]);
  v72 = veorq_s8(v56, *&STACK[0x5650]);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v65), *&STACK[0x4690]);
  v74 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66), *&STACK[0x4690]);
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v67), *&STACK[0x4690]);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v68), *&STACK[0x4690]);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v69), *&STACK[0x4690]);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v70), *&STACK[0x4690]);
  v79 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v71), *&STACK[0x4690]);
  v83 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v72), *&STACK[0x4690]);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v86 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v87 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v88 = veorq_s8(v77, v83);
  v89 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v90 = veorq_s8(v75, v81);
  v91 = veorq_s8(v74, v80);
  v92 = veorq_s8(v73, v79);
  v93 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v92);
  v101 = vaddq_s64(v98, v90);
  v102 = veorq_s8(vaddq_s64(v93, v85), *&STACK[0x4640]);
  v103 = veorq_s8(vaddq_s64(v94, v86), *&STACK[0x4640]);
  v104 = veorq_s8(vaddq_s64(v95, v87), *&STACK[0x4640]);
  v105 = veorq_s8(vaddq_s64(v96, v88), *&STACK[0x4640]);
  v106 = veorq_s8(vaddq_s64(v97, v89), *&STACK[0x4640]);
  v107 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v109 = veorq_s8(v101, *&STACK[0x4640]);
  v110 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v111 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v113 = veorq_s8(vaddq_s64(v99, v91), *&STACK[0x4640]);
  v114 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v115 = veorq_s8(v100, *&STACK[0x4640]);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v117 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v118 = veorq_s8(v109, v114);
  v119 = veorq_s8(v106, v112);
  v120 = veorq_s8(v105, v111);
  v121 = veorq_s8(v104, v110);
  v122 = veorq_s8(v103, v108);
  v123 = veorq_s8(v102, v107);
  v124 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v121);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v119);
  v130 = veorq_s8(vaddq_s64(v124, v116), *&STACK[0x46D0]);
  v131 = veorq_s8(vaddq_s64(v125, v117), *&STACK[0x46D0]);
  v132 = veorq_s8(vaddq_s64(v126, v118), *&STACK[0x46D0]);
  v133 = veorq_s8(v129, *&STACK[0x46D0]);
  v134 = veorq_s8(vaddq_s64(v127, v120), *&STACK[0x46D0]);
  v135 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v136 = veorq_s8(v128, *&STACK[0x46D0]);
  v137 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v122), *&STACK[0x46D0]);
  v141 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v123), *&STACK[0x46D0]);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v144 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v145 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v146 = veorq_s8(v134, v141);
  v147 = veorq_s8(v133, v139);
  v148 = veorq_s8(v132, v138);
  v149 = veorq_s8(v131, v137);
  v150 = veorq_s8(v130, v135);
  v151 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v150);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v149);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v148);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v147);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v146);
  v158 = vaddq_s64(v152, v145);
  v159 = vaddq_s64(v151, v144);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v161 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), *&STACK[0x5620]), v153), *&STACK[0x5640]);
  v162 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), *&STACK[0x5620]), v156), *&STACK[0x5640]);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v160, v160), *&STACK[0x5620]), v160), *&STACK[0x5640]), *&STACK[0x5630]);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v159, v159), *&STACK[0x5620]), v159), *&STACK[0x5640]), *&STACK[0x5630]);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v158, v158), *&STACK[0x5620]), v158), *&STACK[0x5640]), *&STACK[0x5630]);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v157, v157), *&STACK[0x5620]), v157), *&STACK[0x5640]), *&STACK[0x5630]);
  v167 = veorq_s8(v162, *&STACK[0x5630]);
  v168 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v169 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v155, v155), *&STACK[0x5620]), v155), *&STACK[0x5640]), *&STACK[0x5630]);
  v171 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v154, v154), *&STACK[0x5620]), v154), *&STACK[0x5640]), *&STACK[0x5630]);
  v175 = veorq_s8(v161, *&STACK[0x5630]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v177 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v178 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v179 = veorq_s8(v167, v173);
  v180 = veorq_s8(v166, v172);
  v181 = veorq_s8(v165, v171);
  v182 = veorq_s8(v164, v169);
  v183 = veorq_s8(v163, v168);
  *&STACK[0x5580] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v184 = *&STACK[0x45B0];
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v177), *&STACK[0x45B0]);
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v178), *&STACK[0x45B0]);
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v179), *&STACK[0x45B0]);
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v180), *&STACK[0x45B0]);
  v189 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v181), *&STACK[0x45B0]);
  v191 = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v182), *&STACK[0x45B0]);
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v183), *&STACK[0x45B0]);
  *&STACK[0x5590] = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  *&STACK[0x5560] = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v195 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v196 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  *&STACK[0x55B0] = veorq_s8(v187, v192);
  *&STACK[0x5550] = veorq_s8(v186, v191);
  v197 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  *&STACK[0x5570] = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  *&STACK[0x5540] = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v198 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  *&STACK[0x55A0] = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v199 = vandq_s8(v31, v40);
  v200 = vandq_s8(v29, v40);
  v201 = v29;
  v202 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v203 = *&STACK[0x46B0];
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), *&STACK[0x46B0]);
  v205 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), *&STACK[0x46B0]);
  v207 = veorq_s8(v206, *&STACK[0x45A0]);
  v208 = veorq_s8(v204, *&STACK[0x45A0]);
  v209 = *&STACK[0x45A0];
  v210 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v211 = veorq_s8(v204, *&STACK[0x4660]);
  v212 = veorq_s8(v206, *&STACK[0x4660]);
  v213 = vaddq_s64(v198, v196);
  v214 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v212);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v211);
  v216 = vsubq_s64(vorrq_s8(vaddq_s64(v214, v214), *&STACK[0x5720]), v214);
  v217 = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v218 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v215, v215), *&STACK[0x5720]), v215), *&STACK[0x55C0]), *&STACK[0x5730]);
  v219 = veorq_s8(vaddq_s64(v216, *&STACK[0x55C0]), *&STACK[0x5730]);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v221 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), *&STACK[0x46E0]);
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v221), *&STACK[0x46E0]);
  v224 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v225 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v226 = veorq_s8(v222, v224);
  v227 = vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v226);
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v195), *&STACK[0x4BB0]);
  v230 = veorq_s8(vaddq_s64(v227, v225), *&STACK[0x46A0]);
  v231 = veorq_s8(v228, *&STACK[0x46A0]);
  v232 = veorq_s8(v213, *&STACK[0x4BB0]);
  v233 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v234 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v235 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v236 = veorq_s8(v232, v210);
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v234);
  v238 = vaddq_s64(v235, v233);
  v239 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v240 = *&STACK[0x5740];
  v241 = vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL);
  v242 = *&STACK[0x5760];
  v243 = veorq_s8(vaddq_s64(vsubq_s64(v238, vandq_s8(vaddq_s64(v238, v238), *&STACK[0x5740])), *&STACK[0x57A0]), *&STACK[0x5760]);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(v237, vandq_s8(vaddq_s64(v237, v237), *&STACK[0x5740])), *&STACK[0x57A0]), *&STACK[0x5760]);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v246 = veorq_s8(v243, v241);
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), veorq_s8(v229, v217));
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v249 = *&STACK[0x45C0];
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v246), *&STACK[0x45C0]);
  v251 = vaddq_s64(v239, v236);
  v252 = vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL);
  v253 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v254 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v255 = *&STACK[0x54E0];
  v256 = veorq_s8(v248, *&STACK[0x45C0]);
  v257 = veorq_s8(v256, v252);
  v258 = vsubq_s64(v251, vandq_s8(vaddq_s64(v251, v251), *&STACK[0x54E0]));
  v259 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v260 = vaddq_s64(v254, v253);
  v261 = vsubq_s64(vorrq_s8(vaddq_s64(v260, v260), *&STACK[0x5790]), v260);
  v262 = vdupq_n_s64(0x38uLL);
  v263 = *&STACK[0x54D0];
  v264 = *&STACK[0x55D0];
  v265 = vaddq_s64(v259, v257);
  v266 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v247, vandq_s8(vaddq_s64(v247, v247), *&STACK[0x54E0])), *&STACK[0x54D0]), *&STACK[0x55D0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5660], 3uLL), v262)));
  v267 = vsubq_s64(vorrq_s8(vaddq_s64(v265, v265), *&STACK[0x5790]), v265);
  v183.i64[0] = v30 + (v5 ^ 0xFFFFFFFFFFFFDCF7) + 8;
  v183.i64[1] = a2 + v3 + v13;
  *&STACK[0x5530] = v183;
  v268 = *&STACK[0x5750];
  v269 = veorq_s8(vaddq_s64(v261, *&STACK[0x5750]), *&STACK[0x57C0]);
  v270 = veorq_s8(vaddq_s64(v267, *&STACK[0x5750]), *&STACK[0x57C0]);
  v271 = veorq_s8(v270, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v272 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v273 = vshlq_u64(veorq_s8(vaddq_s64(v258, v263), v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5670], 3uLL), v262)));
  v274 = vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v265.i64[0] = a2 + v3 + v11;
  v265.i64[1] = a2 + v3 + v12;
  v276 = veorq_s8(*&STACK[0x5580], v184);
  v277 = vaddq_s64(v275, v272);
  v278 = vandq_s8(v265, v40);
  v279 = veorq_s8(v276, v189);
  v280 = vaddq_s64(v274, v271);
  v281 = vandq_s8(v183, v40);
  v282 = *&STACK[0x5770];
  v283 = veorq_s8(vaddq_s64(vsubq_s64(v277, vandq_s8(vaddq_s64(v277, v277), *&STACK[0x57B0])), *&STACK[0x5780]), *&STACK[0x5770]);
  v284 = vshlq_n_s64(v201, 3uLL);
  v418.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v280, vandq_s8(vaddq_s64(v280, v280), *&STACK[0x57B0])), *&STACK[0x5780]), *&STACK[0x5770]), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v262))), v273);
  v418.val[2] = veorq_s8(vshlq_u64(v283, vnegq_s64(vandq_s8(v284, v262))), v266);
  v285 = vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL);
  v286 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL), v203);
  v287 = v209;
  v288 = veorq_s8(v286, v209);
  v289 = vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL);
  v290 = *&STACK[0x4660];
  v291 = veorq_s8(v286, *&STACK[0x4660]);
  v292 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v291);
  v293 = *&STACK[0x5720];
  v294 = vsubq_s64(vorrq_s8(vaddq_s64(v292, v292), *&STACK[0x5720]), v292);
  *&STACK[0x5510] = vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL);
  *&STACK[0x5500] = vaddq_s64(v289, v279);
  *&STACK[0x5520] = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v295 = *&STACK[0x55C0];
  v296 = *&STACK[0x5730];
  v297 = veorq_s8(vaddq_s64(v294, *&STACK[0x55C0]), *&STACK[0x5730]);
  v298 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL));
  *&STACK[0x54F0] = vaddq_s64(v205, v197);
  v299 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v300 = *&STACK[0x5550];
  *&STACK[0x5670] = vsraq_n_u64(vshlq_n_s64(*&STACK[0x5550], 3uLL), *&STACK[0x5550], 0x3DuLL);
  *&STACK[0x5660] = vaddq_s64(v202, v300);
  v301 = *&STACK[0x46E0];
  v302 = veorq_s8(vaddq_s64(v299, v298), *&STACK[0x46E0]);
  v303 = veorq_s8(v302, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v304 = *&STACK[0x46A0];
  v305 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL), v303), *&STACK[0x46A0]);
  v306 = *&STACK[0x4BB0];
  v307 = veorq_s8(vaddq_s64(*&STACK[0x5540], *&STACK[0x5560]), *&STACK[0x4BB0]);
  v308 = veorq_s8(v305, vsraq_n_u64(vshlq_n_s64(v303, 3uLL), v303, 0x3DuLL));
  v309 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL), v308);
  v310 = veorq_s8(vaddq_s64(vsubq_s64(v309, vandq_s8(vaddq_s64(v309, v309), v240)), *&STACK[0x57A0]), v242);
  v311 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL), veorq_s8(v307, vsraq_n_u64(vshlq_n_s64(*&STACK[0x5560], 3uLL), *&STACK[0x5560], 0x3DuLL)));
  v312 = veorq_s8(v310, vsraq_n_u64(vshlq_n_s64(v308, 3uLL), v308, 0x3DuLL));
  v313 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v314 = vsubq_s64(v311, vandq_s8(vaddq_s64(v311, v311), v255));
  v315 = v249;
  v316 = veorq_s8(vaddq_s64(v313, v312), v249);
  v317 = veorq_s8(v316, vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL));
  v318 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v316, 0x38uLL), v316, 8uLL), v317);
  v319 = vsubq_s64(vorrq_s8(vaddq_s64(v318, v318), *&STACK[0x5790]), v318);
  v320 = vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL);
  v321.i64[0] = a2 + v3 + v7;
  v322 = v263;
  v323 = veorq_s8(vaddq_s64(v319, v268), *&STACK[0x57C0]);
  v324 = vshlq_u64(veorq_s8(vaddq_s64(v314, v263), v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5680], 3uLL), v262)));
  v263.i64[0] = a2 + v3 - 0x7146233D53CCF94DLL;
  v321.i64[1] = a2 + v3 + v9;
  v325 = v321;
  *&STACK[0x5680] = v321;
  v263.i64[1] = a2 + v3 - 0x7146233D53CCF94ELL;
  v326 = v263;
  *&STACK[0x5580] = v263;
  v327 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), veorq_s8(v323, v320));
  v328 = vaddq_s64(v285, v203);
  v418.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v327, vandq_s8(vaddq_s64(v327, v327), *&STACK[0x57B0])), *&STACK[0x5780]), v282), vnegq_s64(vandq_s8(vshlq_n_s64(v265, 3uLL), v262))), v324);
  v329 = veorq_s8(v328, v287);
  v330 = v287;
  v331 = veorq_s8(v328, v290);
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), v331);
  v333 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v332, v332), v293), v332), v295), v296);
  v334 = veorq_s8(vaddq_s64(*&STACK[0x5570], *&STACK[0x5590]), v306);
  v335 = veorq_s8(v333, vsraq_n_u64(vshlq_n_s64(v331, 3uLL), v331, 0x3DuLL));
  v336 = veorq_s8(v334, vsraq_n_u64(vshlq_n_s64(*&STACK[0x5590], 3uLL), *&STACK[0x5590], 0x3DuLL));
  v337 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v338 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v335), v301);
  v339 = vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL);
  v340 = veorq_s8(v338, v337);
  v341 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL), v340), v304);
  v342 = veorq_s8(v341, vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL));
  v343 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL), v342);
  v344 = vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL);
  v300.i64[0] = a2 + v3 - 0x7146233D53CCF94FLL;
  v300.i64[1] = a2 + v3 - 0x7146233D53CCF950;
  v345 = veorq_s8(vaddq_s64(vsubq_s64(v343, vandq_s8(vaddq_s64(v343, v343), v240)), *&STACK[0x57A0]), v242);
  v346 = vaddq_s64(v339, v336);
  v347 = veorq_s8(v345, v344);
  v348 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL), v347), v315);
  v349 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL));
  v350 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), v349);
  v351 = v255;
  v352 = vsubq_s64(v346, vandq_s8(vaddq_s64(v346, v346), v255));
  v353 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v350, v350), *&STACK[0x5790]), v350), v268), *&STACK[0x57C0]);
  v354 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL));
  v355 = vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL);
  v353.i64[0] = a2 + v3 - 0x7146233D53CCF951;
  v353.i64[1] = v30 - 8;
  v356 = vaddq_s64(v355, v354);
  v357 = vandq_s8(v353, *&STACK[0x4D70]);
  v358 = vandq_s8(v300, *&STACK[0x4D70]);
  v359 = v262;
  v360 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v356, vandq_s8(vaddq_s64(v356, v356), *&STACK[0x57B0])), *&STACK[0x5780]), v282), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5530], 3uLL), v262)));
  v361 = vandq_s8(v326, *&STACK[0x4D70]);
  v418.val[1] = veorq_s8(v360, vshlq_u64(veorq_s8(vaddq_s64(v352, v322), v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56C0], 3uLL), v262))));
  v362 = vandq_s8(v325, *&STACK[0x4D70]);
  *&STACK[0x5570] = vsraq_n_u64(vshlq_n_s64(v362, 0x38uLL), v362, 8uLL);
  v363 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v364 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL), v203);
  *&STACK[0x5590] = xmmword_101237190;
  v365 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL), v203);
  *&STACK[0x56C0] = vqtbl4q_s8(v418, xmmword_101237190);
  v418.val[0] = veorq_s8(v365, v330);
  v418.val[1] = veorq_s8(v364, v330);
  v418.val[2] = veorq_s8(v364, v290);
  v418.val[3] = veorq_s8(v365, v290);
  v418.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), v418.val[3]);
  v418.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[1], 0x38uLL), v418.val[1], 8uLL), v418.val[2]);
  v366 = *&STACK[0x55B0];
  *&STACK[0x5560] = vsraq_n_u64(vshlq_n_s64(*&STACK[0x55B0], 3uLL), *&STACK[0x55B0], 0x3DuLL);
  v418.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v418.val[1], v418.val[1]), v293), v418.val[1]), v295), v296);
  v418.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v418.val[0], v418.val[0]), v293), v418.val[0]), v295), v296);
  *&STACK[0x55B0] = vaddq_s64(*&STACK[0x55A0], v366);
  v367 = vsraq_n_u64(vshlq_n_s64(v418.val[2], 3uLL), v418.val[2], 0x3DuLL);
  v418.val[2] = veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v418.val[3], 3uLL), v418.val[3], 0x3DuLL));
  v418.val[3] = veorq_s8(*&STACK[0x54F0], v306);
  v368 = veorq_s8(v418.val[1], v367);
  v369 = vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL);
  v370 = veorq_s8(*&STACK[0x5500], v306);
  v371 = v306;
  v418.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[1], 0x38uLL), v418.val[1], 8uLL), v368);
  v418.val[1] = veorq_s8(vaddq_s64(v369, v418.val[2]), v301);
  v418.val[0] = veorq_s8(v418.val[0], v301);
  v372 = v301;
  v373 = veorq_s8(v370, *&STACK[0x5510]);
  v374 = vsraq_n_u64(vshlq_n_s64(v418.val[2], 3uLL), v418.val[2], 0x3DuLL);
  v418.val[2] = veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL));
  v375 = veorq_s8(v418.val[1], v374);
  v376 = veorq_s8(v418.val[3], *&STACK[0x5520]);
  v377 = vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL);
  v418.val[0] = vsraq_n_u64(vshlq_n_s64(v418.val[1], 0x38uLL), v418.val[1], 8uLL);
  v418.val[1] = vsraq_n_u64(vshlq_n_s64(v370, 0x38uLL), v370, 8uLL);
  v378 = vaddq_s64(v377, v418.val[2]);
  v379 = vsraq_n_u64(vshlq_n_s64(v418.val[2], 3uLL), v418.val[2], 0x3DuLL);
  v418.val[2] = vsraq_n_u64(vshlq_n_s64(v418.val[3], 0x38uLL), v418.val[3], 8uLL);
  v380 = veorq_s8(v378, v304);
  v418.val[0] = veorq_s8(vaddq_s64(v418.val[0], v375), v304);
  v381 = v304;
  v418.val[3] = veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v375, 3uLL), v375, 0x3DuLL));
  v382 = vaddq_s64(v418.val[2], v376);
  v418.val[2] = veorq_s8(v380, v379);
  v383 = vaddq_s64(v418.val[1], v373);
  v384 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL), v418.val[2]);
  v418.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), v418.val[3]);
  v418.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v418.val[0], vandq_s8(vaddq_s64(v418.val[0], v418.val[0]), *&STACK[0x5740])), *&STACK[0x57A0]), *&STACK[0x5760]);
  v385 = veorq_s8(vaddq_s64(vsubq_s64(v384, vandq_s8(vaddq_s64(v384, v384), *&STACK[0x5740])), *&STACK[0x57A0]), *&STACK[0x5760]);
  v418.val[2] = veorq_s8(v385, vsraq_n_u64(vshlq_n_s64(v418.val[2], 3uLL), v418.val[2], 0x3DuLL));
  v418.val[1] = veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v418.val[3], 3uLL), v418.val[3], 0x3DuLL));
  v418.val[3] = vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL);
  v386 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), v418.val[1]);
  v418.val[0] = veorq_s8(vaddq_s64(v418.val[3], v418.val[2]), v315);
  v387 = veorq_s8(v386, v315);
  v418.val[1] = veorq_s8(v387, vsraq_n_u64(vshlq_n_s64(v418.val[1], 3uLL), v418.val[1], 0x3DuLL));
  v418.val[2] = veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v418.val[2], 3uLL), v418.val[2], 0x3DuLL));
  v418.val[3] = vsraq_n_u64(vshlq_n_s64(v387, 0x38uLL), v387, 8uLL);
  v388 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), v418.val[2]);
  v418.val[0] = vaddq_s64(v418.val[3], v418.val[1]);
  v418.val[3] = vsraq_n_u64(vshlq_n_s64(v418.val[1], 3uLL), v418.val[1], 0x3DuLL);
  v418.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v418.val[0], v418.val[0]), *&STACK[0x5790]), v418.val[0]), *&STACK[0x5750]), *&STACK[0x57C0]);
  v389 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v388, v388), *&STACK[0x5790]), v388), *&STACK[0x5750]), *&STACK[0x57C0]);
  v418.val[1] = veorq_s8(v389, vsraq_n_u64(vshlq_n_s64(v418.val[2], 3uLL), v418.val[2], 0x3DuLL));
  v418.val[2] = vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL);
  v390 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), veorq_s8(v418.val[0], v418.val[3]));
  v418.val[0] = vaddq_s64(v418.val[2], v418.val[1]);
  v418.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v382, vandq_s8(vaddq_s64(v382, v382), v351)), v322), v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56D0], 3uLL), v359)));
  v391 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v383, vandq_s8(vaddq_s64(v383, v383), v351)), v322), v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56E0], 3uLL), v359)));
  v392 = vsubq_s64(v418.val[0], vandq_s8(vaddq_s64(v418.val[0], v418.val[0]), *&STACK[0x57B0]));
  v418.val[0] = vaddq_s64(v363, v203);
  v417.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v392, *&STACK[0x5780]), *&STACK[0x5770]), vnegq_s64(vandq_s8(vshlq_n_s64(v353, 3uLL), v359))), v391);
  v417.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v390, vandq_s8(vaddq_s64(v390, v390), *&STACK[0x57B0])), *&STACK[0x5780]), *&STACK[0x5770]), vnegq_s64(vandq_s8(vshlq_n_s64(v300, 3uLL), v359))), v418.val[1]);
  v418.val[1] = veorq_s8(v418.val[0], v330);
  v418.val[0] = veorq_s8(v418.val[0], v290);
  v418.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[1], 0x38uLL), v418.val[1], 8uLL), v418.val[0]);
  v393 = veorq_s8(*&STACK[0x5660], v371);
  v418.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v418.val[1], v418.val[1]), *&STACK[0x5720]), v418.val[1]), v295), *&STACK[0x5730]);
  v418.val[0] = veorq_s8(v418.val[1], vsraq_n_u64(vshlq_n_s64(v418.val[0], 3uLL), v418.val[0], 0x3DuLL));
  v394 = veorq_s8(v393, *&STACK[0x5670]);
  v418.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[1], 0x38uLL), v418.val[1], 8uLL), v418.val[0]), v372);
  v418.val[1] = vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL);
  v395 = veorq_s8(v418.val[2], vsraq_n_u64(vshlq_n_s64(v418.val[0], 3uLL), v418.val[0], 0x3DuLL));
  v396 = vaddq_s64(v418.val[1], v394);
  v418.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[2], 0x38uLL), v418.val[2], 8uLL), v395), v381);
  v397 = veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v395, 3uLL), v395, 0x3DuLL));
  v418.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), v397);
  v418.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v418.val[0], vandq_s8(vaddq_s64(v418.val[0], v418.val[0]), *&STACK[0x5740])), *&STACK[0x57A0]), *&STACK[0x5760]);
  v398 = veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL));
  v418.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), v398), v315);
  v399 = veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL));
  v418.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), v399);
  v418.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v418.val[0], v418.val[0]), *&STACK[0x5790]), v418.val[0]), *&STACK[0x5750]), *&STACK[0x57C0]);
  v400 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL)));
  v418.val[0] = vaddq_s64(*&STACK[0x5570], v203);
  v417.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v400, vandq_s8(vaddq_s64(v400, v400), *&STACK[0x57B0])), *&STACK[0x5780]), *&STACK[0x5770]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5580], 3uLL), v359))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v396, vandq_s8(vaddq_s64(v396, v396), v351)), v322), v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56F0], 3uLL), v359))));
  v401 = veorq_s8(v418.val[0], v330);
  v418.val[0] = veorq_s8(v418.val[0], v290);
  v402 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL), v418.val[0]);
  v403 = veorq_s8(*&STACK[0x55B0], v371);
  v404 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v402, v402), *&STACK[0x5720]), v402), v295), *&STACK[0x5730]);
  v418.val[0] = veorq_s8(v404, vsraq_n_u64(vshlq_n_s64(v418.val[0], 3uLL), v418.val[0], 0x3DuLL));
  v418.val[1] = veorq_s8(v403, *&STACK[0x5560]);
  v418.val[2] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v418.val[0]), v372);
  v405 = vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL);
  v406 = veorq_s8(v418.val[2], vsraq_n_u64(vshlq_n_s64(v418.val[0], 3uLL), v418.val[0], 0x3DuLL));
  v407 = vaddq_s64(v405, v418.val[1]);
  v418.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[2], 0x38uLL), v418.val[2], 8uLL), v406), v381);
  v418.val[1] = veorq_s8(v418.val[0], vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL));
  v408 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418.val[0], 0x38uLL), v418.val[0], 8uLL), v418.val[1]);
  v409 = veorq_s8(vaddq_s64(vsubq_s64(v408, vandq_s8(vaddq_s64(v408, v408), *&STACK[0x5740])), *&STACK[0x57A0]), *&STACK[0x5760]);
  v418.val[0] = veorq_s8(v409, vsraq_n_u64(vshlq_n_s64(v418.val[1], 3uLL), v418.val[1], 0x3DuLL));
  v410 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL), v418.val[0]), v315);
  v418.val[0] = veorq_s8(v410, vsraq_n_u64(vshlq_n_s64(v418.val[0], 3uLL), v418.val[0], 0x3DuLL));
  v411 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL), v418.val[0]);
  v412 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v411, v411), *&STACK[0x5790]), v411), *&STACK[0x5750]), *&STACK[0x57C0]);
  v413 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), veorq_s8(v412, vsraq_n_u64(vshlq_n_s64(v418.val[0], 3uLL), v418.val[0], 0x3DuLL)));
  v417.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v413, vandq_s8(vaddq_s64(v413, v413), *&STACK[0x57B0])), *&STACK[0x5780]), *&STACK[0x5770]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5680], 3uLL), v359))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v407, vandq_s8(vaddq_s64(v407, v407), v351)), v322), v264), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5700], 3uLL), v359))));
  v414 = *&STACK[0x56C0];
  v414.i64[1] = vqtbl4q_s8(v417, *&STACK[0x5590]).u64[0];
  v415 = vrev64q_s8(v414);
  *(v30 - 8) = veorq_s8(vextq_s8(v415, v415, 8uLL), *&STACK[0x5710]);
  return (*(STACK[0x57D8] + 8 * ((14785 * (a1 == 0)) ^ v6)))(a1 - 16, a2 - 16, a3 - 16);
}

uint64_t sub_100345F18@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x9F50]) = v1;
  v2 = v1 == -143113071;
  LOBYTE(STACK[0xA91F]) = v2;
  return (*(STACK[0x57D8] + 8 * (((((a1 - 8022) | 4) - 18287) * v2) ^ a1)))();
}

uint64_t sub_100345FD4@<X0>(int a1@<W8>)
{
  STACK[0xCAB0] = v1 + a1;
  v3 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * (((v2 + 1719) ^ 0x17C0) + v2)))();
}

uint64_t sub_1003460B4@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v23 = (((v12 ^ a6) + a1) ^ ((v12 ^ a5) + a7) ^ ((v12 ^ v16) + 746189310)) + a4;
  v24 = (v23 ^ v9) & (2 * (v23 & v14)) ^ v23 & v14;
  v25 = ((2 * (v23 ^ a2)) ^ v20) & (v23 ^ a2) ^ (2 * (v23 ^ a2)) & a3;
  v26 = v25 ^ v8;
  v27 = (v25 ^ v19) & (4 * v24) ^ v24;
  v28 = ((4 * v26) ^ 0xABC900A8) & v26 ^ (4 * v26) & (a3 - 2);
  v29 = v27 ^ a3 ^ (v28 ^ 0xAAC00020) & (16 * v27);
  v30 = (16 * (v28 ^ 0x40324002)) & (a3 - 10) ^ 0x40D2400A ^ ((16 * (v28 ^ 0x40324002)) ^ 0xAF2402A0) & (v28 ^ 0x40324002);
  v31 = (v29 << 8) & (v17 + 0x4000) ^ v29 ^ ((v29 << 8) ^ 0xF2402A00) & v30;
  v32 = v23 ^ (2 * ((v31 << 16) & 0x6AF20000 ^ v31 ^ ((v31 << 16) ^ 0x402A0000) & ((v30 << 8) & v17 ^ 0x8B20000 ^ ((v30 << 8) ^ 0x72400000) & v30)));
  v33 = a8 + v11 + (((v32 ^ 0xBAB30F1D) - 2111732827) ^ ((v32 ^ 0x206838C8) + 419083378) ^ ((v32 ^ 0x8FAAC407) - 1221048129));
  v34 = *(*v18 + ((*v13 & ((v33 & 0x60A57928) + (v33 & 0x9F5A86D0 | 0x60A5792E) - 1725099927)) & 0xFFFFFFFFFFFFFFF8));
  v35 = (__ROR8__(v33 & 0xFFFFFFFFFFFFFFF8, 8) + v34) ^ v22;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x153242EE3CF06A49;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x2275D4C73835399BLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xE5AF1AB32EBD3CDDLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * ((v43 + v42) ^ 0xA4CDA10010CED8BDLL)) | 0xD431F6ADFBC5A512) - ((v43 + v42) ^ 0xA4CDA10010CED8BDLL) - 0x6A18FB56FDE2D289) ^ 0x90893A02169BD15 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__((((2 * ((v43 + v42) ^ 0xA4CDA10010CED8BDLL)) | 0xD431F6ADFBC5A512) - ((v43 + v42) ^ 0xA4CDA10010CED8BDLL) - 0x6A18FB56FDE2D289) ^ 0x90893A02169BD15, 8) + v44) ^ 0xA82620A559D2DA78;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x5F8DEC3EA3980A1BLL;
  *v33 = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v33 & 7u))) ^ *(STACK[0xCED0] + (v32 ^ v15));
  return (*(STACK[0x57D8] + 8 * (((v32 == v15) * v21) ^ v10)))();
}

uint64_t sub_1003464D4()
{
  v0 = STACK[0x57D8];
  v1 = STACK[0xEF4];
  v2 = LODWORD(STACK[0xEF4]) + 20013;
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xEF4]));
  return (*(v0 + 8 * ((v2 ^ 0x5F18) + v1)))();
}

uint64_t sub_100346514()
{
  v0 = STACK[0x51B8] + 8563;
  v1 = STACK[0x51B8] - 20748;
  v2 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v3 = STACK[0x6250];
  v4 = STACK[0xE038];
  v5 = STACK[0x57D8];
  STACK[0x9D20] = *(STACK[0x57D8] + 8 * v1);
  return (*(v5 + 8 * ((v0 ^ 0x59FD) + v1)))(&STACK[0xD760], v2, v3, v4);
}

uint64_t sub_100346714()
{
  v0 = STACK[0x51B8];
  STACK[0x7ED8] += STACK[0x51B8] - 600 - 22030;
  return (*(STACK[0x57D8] + 8 * (v0 - 14999)))();
}

uint64_t sub_10034678C()
{
  v1 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 ^ 0x4205)))();
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1003467E8()
{
  v0 = 6 * LODWORD(STACK[0x28EC]);
  v1 = STACK[0x57D8];
  v2 = STACK[0x28E8];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x28E8]));
  return (*(v1 + 8 * ((v0 ^ 0x3D5A) + v2)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_100346890()
{
  v2 = STACK[0x57D8];
  STACK[0x9948] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x28A ^ ((v1 ^ 0xAA6) * v0))))();
}

uint64_t sub_100346918@<X0>(unsigned int a1@<W8>)
{
  v2 = STACK[0x7F58];
  STACK[0x5780] = (((3 * (a1 ^ 0x38C8)) ^ 0xFFFFEC7C) + v1);
  v3 = *(STACK[0x57D8] + 8 * a1);
  STACK[0x5770] = 4 * v1;
  STACK[0x57B0] = v2;
  return v3();
}

uint64_t sub_1003469A4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0x308E083E0C524CBELL) = v2;
  return (*(STACK[0x57D8] + 8 * v3))();
}

void *sub_1003469D4@<X0>(int a1@<W8>)
{
  v2 = (a1 - 14152) | 0x1031u;
  v3 = STACK[0x57D8];
  STACK[0xC9A0] = *(STACK[0x57D8] + 8 * v1);
  v4 = a1 - 21892;
  LODWORD(STACK[0x74D8]) = -769884012;
  LODWORD(STACK[0xBBEC]) = -769884012;
  STACK[0x83B0] = 0;
  LODWORD(STACK[0xCE04]) = 0;
  STACK[0x6528] = 0;
  LODWORD(STACK[0x91A4]) = 1280;
  v5 = STACK[0x7ED8];
  STACK[0xAF00] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v5 + (v2 ^ 0x31BF);
  STACK[0xA6E0] = 0;
  LODWORD(STACK[0xA158]) = -769884012;
  STACK[0x7498] = 0;
  return (*(v3 + 8 * (v4 ^ 0x16FC)))(&STACK[0x7498]);
}

uint64_t sub_100346B10()
{
  if (LOBYTE(STACK[0xC2BB]))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 == -143113071;
  }

  v3 = v2;
  return (*(STACK[0x57D8] + 8 * ((v3 * ((6 * (v0 ^ 0xC2A)) ^ 0x457B)) ^ v0)))();
}

uint64_t sub_100346B84@<X0>(int a1@<W8>)
{
  v2 = STACK[0x55C0];
  if ((STACK[0x57A0] & 2) != 0)
  {
    v2 = STACK[0x54B0];
  }

  LODWORD(STACK[0x55A0]) = v2;
  LODWORD(STACK[0x57A0]) = LODWORD(STACK[0x5740]) ^ 0xB0EAEB7D;
  LODWORD(STACK[0x5340]) = LODWORD(STACK[0x53D8]) ^ v1;
  LODWORD(STACK[0x53F0]) = LODWORD(STACK[0x53E0]) ^ 0x63636363;
  return (*(STACK[0x57D8] + 8 * a1))(392612715);
}

uint64_t sub_100346E98()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 16983)))(v2, &STACK[0x1D270], &STACK[0x67A7]);
}

uint64_t sub_100346F88(unint64_t a1)
{
  v7 = STACK[0x57D8];
  STACK[0xB218] = *(STACK[0x57D8] + 8 * v3);
  v8 = STACK[0x7ED8];
  STACK[0x7ED8] += 16;
  v9 = ((2 * v4) & 0x1FFE0) + (v4 & 0xFFF0 ^ 0xF6DFFFFB) + 503182957;
  v10 = (2 * (v9 & (3 * (v1 ^ 0x5997) + 132173))) & 0x200 ^ v9 & (3 * (v1 ^ 0x5997) + 132173) ^ ((2 * (v9 & (3 * (v1 ^ 0x5997) + 132173))) | 0x10) & (v9 ^ 0x7D3A830B);
  v11 = (2 * (v9 ^ 0x7D3A830B)) & 0x92088A82 ^ 0x92088A91 ^ ((2 * (v9 ^ 0x7D3A830B)) ^ 0x28211522) & (v9 ^ 0x7D3A830B);
  v12 = (4 * v10) & 0x16188A90 ^ v10 ^ ((4 * v10) ^ 0x60) & v11;
  v13 = (4 * v11) & 0x96188A90 ^ LODWORD(STACK[0x1680]) ^ ((4 * v11) ^ 0x58622A4C) & v11;
  v14 = (16 * v12) & 0x16188A90 ^ v12 ^ ((16 * v12) ^ 0x180) & v13;
  v15 = (16 * v13) & 0x96188A90 ^ 0x96100283 ^ ((16 * v13) ^ 0x6188A930) & v13;
  v16 = v14 ^ LODWORD(STACK[0x1690]) ^ (v14 << 8) & 0x96188A00 ^ ((v14 << 8) ^ 0x9800) & v15;
  v17 = (v16 << 16) & 0x16180000 ^ v16 ^ ((v16 << 16) ^ 0xA930000) & ((v15 << 8) & 0x96180000 ^ 0x6100000 ^ ((v15 << 8) ^ 0x188A0000) & v15);
  v18 = 410706167 * ((((2 * (v6 - 240)) | 0x455BBC68) - (v6 - 240) - 581819956) ^ 0xB972F262);
  LODWORD(STACK[0x1D4D0]) = v18 ^ v9 ^ (2 * v17) ^ 0x7D532D6A;
  v19 = (&STACK[0x10120] + v8);
  *v19 = 0xF0F4AC8F77622A0BLL;
  v19[1] = 0xEA57D5EA5DA2DC2ALL;
  STACK[0x1D4D8] = v19;
  LODWORD(STACK[0x1D4CC]) = (v1 + 6572) ^ v18;
  STACK[0x1D4C0] = a1;
  STACK[0x1D4E0] = v2 + 3;
  v20 = (*(v7 + 8 * (v1 + 9354)))(v6 - 240);
  v21 = LODWORD(STACK[0x1D4C8]) != 1610120464;
  if (LODWORD(STACK[0x1D4C8]) == 1610120464)
  {
    v22 = 0;
  }

  else
  {
    v22 = -20;
  }

  *(v5 + 2720) = v22;
  STACK[0x7ED8] -= 16;
  if ((v4 & 0xFFF0) == v4)
  {
    v21 = 1;
  }

  return (*(v7 + 8 * ((929 * v21) ^ (v1 + 6482))))(v20);
}

uint64_t sub_1003472A4()
{
  v1 = STACK[0x57D8];
  STACK[0x8860] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 2249) | 0x212) + 8323) ^ v0)))();
}

uint64_t sub_100347330@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, int a4@<W6>, char a5@<W7>, int a6@<W8>)
{
  v23 = *(*v17 + ((*v18 & (((v6 + v11) & 0xFFFFFFF8) + ((a6 - 1508) ^ v14) - ((v6 + v11) & 0xFFFFFFF8 & v13) + ((v6 + v11) & 0xFFFFFFF8 | a4))) & 0xFFFFFFFFFFFFFFF8));
  v24 = __ROR8__((v6 + v11) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (a3 - ((v24 + v23) | a3) + ((v24 + v23) | v15)) ^ 0xD2F7EEB19623A92DLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0x132F442B58A4C7EELL) - (v27 + v26) + 0x76685DEA53AD9C08) ^ v22;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((a2 | (2 * (v30 + v29))) - (v30 + v29) + a1) ^ 0x8C2E77E3019A351DLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xE1A1FD5BD155F97ALL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((v35 + v34 - ((2 * (v35 + v34)) & 0x656BAE5B0BE491B2) + 0x32B5D72D85F248D9) ^ 0xE8D59C218650F740, 8);
  v37 = (v35 + v34 - ((2 * (v35 + v34)) & 0x656BAE5B0BE491B2) + 0x32B5D72D85F248D9) ^ 0xE8D59C218650F740 ^ __ROR8__(v34, 61);
  v38 = (v36 + v37 - ((2 * (v36 + v37)) & 0xA7A07D7D1164EF04) + 0x53D03EBE88B27782) ^ 0xA9E5DC73438C4645;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xD2F00CE620E5D3AELL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (v6 + v7) & 0xF;
  *(v8 + v6) = (v43 * a5) ^ *(v9 + v6) ^ *(v20 + v43) ^ *(v43 + v21 + 4) ^ *(v19 + v43) ^ (((v42 + v41) ^ 0xF4730B31AE70757BLL) >> (v10 & 0x38));
  return (*(STACK[0x57D8] + 8 * (((v6 == v12) * v16) ^ a6)))();
}

uint64_t sub_100347570(int a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  LODWORD(STACK[0x5370]) = v6;
  LODWORD(STACK[0x5480]) = a1;
  v7 = *(STACK[0x5490] + 1);
  v8 = STACK[0x5490];
  v9 = (((v7 ^ 0x7A) & (2 * ((v7 ^ 0x7A) & (2 * ((v7 ^ 0x7A) & (2 * ((v7 ^ 0x7A) & (2 * ((v7 ^ 0x7A) & (2 * ((LODWORD(STACK[0x5700]) - 993) & (2 * v7) & ((LODWORD(STACK[0x5700]) + 3867) ^ v7) ^ v7 ^ 0xFFFFFFC2)) ^ v7 ^ 0xFFFFFFC2)) ^ v7 ^ 0xFFFFFFC2)) ^ v7 ^ 0xFFFFFFC2)) ^ v7 ^ 0xFFFFFFC2)) ^ v7 ^ 0xFFFFFFC2) << 25) ^ (v7 << 24);
  v10 = STACK[0x5630];
  v11 = (v9 ^ 0x4B030462) & (v10 ^ 0x1A42D9C) ^ v10 & 0x34030462;
  v12 = STACK[0x5540];
  v13 = (((2 * v11) ^ 0x800) - 1628610645 - ((4 * v11) & 0x3FF80000) + 904) ^ v9;
  v14 = (v13 ^ 0xE1ED6333) & STACK[0x5760];
  v15 = v13 & 0xDA26256A ^ 0xC0242122 ^ (v13 ^ 0xE1ED6333) & (LODWORD(STACK[0x5650]) ^ 0xCAC32484);
  v16 = v14 << STACK[0x5790];
  v17 = STACK[0x5790];
  STACK[0x5790] = STACK[0x5790];
  v18 = v15 >> STACK[0x57C0];
  v19 = STACK[0x57C0];
  v20 = a3 + 545 * v12 - 1552 * ((2767376 * (a3 + 545 * v12)) >> 32);
  v21 = a3 + 545 * HIBYTE(v12);
  v22 = BYTE2(v12);
  v23 = v12;
  LODWORD(STACK[0x5338]) = v20;
  v24 = STACK[0x5770];
  v25 = *(STACK[0x5770] + 4 * v20);
  v26 = a3 + 545 * BYTE1(v12) - 1552 * ((2767376 * (a3 + 545 * BYTE1(v12))) >> 32);
  v27 = v21 - 1552 * ((2767376 * v21) >> 32);
  v28 = a3 + 545 * v22;
  LODWORD(STACK[0x52A8]) = v27;
  v29 = *(v24 + 4 * v27);
  LODWORD(STACK[0x52F0]) = v26;
  v30 = *(v24 + 4 * v26);
  v31 = v28 - 1552 * ((2767376 * v28) >> 32);
  LODWORD(STACK[0x5298]) = v31;
  v32 = *(v8 + 2);
  v33 = v8;
  v34 = v29 ^ LODWORD(STACK[0x5400]) ^ __ROR4__(v25, 24) ^ __ROR4__(v30, 16) ^ __ROR4__(*(v24 + 4 * v31), 8) ^ v16 ^ v18;
  v35 = STACK[0x5740];
  v36 = LODWORD(STACK[0x5350]) ^ LODWORD(STACK[0x5740]) ^ v34;
  LODWORD(v8) = LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x55F0]);
  v37 = STACK[0x5750];
  LODWORD(v18) = LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x4FB0]);
  LODWORD(STACK[0x5290]) = v18;
  v38 = ((v18 ^ v8 ^ v36) + a5 - (a4 & (2 * (v18 ^ v8 ^ v36)))) ^ a5;
  LOBYTE(v31) = v32 & 0x43 ^ 0xE4;
  v39 = *(STACK[0x57A0] + ((v32 ^ (2 * ((v32 ^ 0x7A) & (2 * ((v32 ^ 0x7A) & (2 * ((v32 ^ 0x7A) & (2 * ((v32 ^ 0x7A) & (2 * ((v32 ^ 0x7A) & (2 * ((v32 ^ 0x7A) & (2 * v32) & 0xF7 ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ (a6 + 2643)));
  LODWORD(STACK[0x56F0]) = v39;
  LODWORD(v16) = v8;
  LODWORD(v8) = v38 ^ v8;
  v40 = v35;
  LODWORD(STACK[0x5740]) = v35;
  v41 = v23;
  LODWORD(STACK[0x52B0]) = v23 ^ v35;
  v42 = v16;
  LODWORD(v18) = v16 ^ v23 ^ v35 ^ v38;
  v43 = 855638016 - 1426063360 * (((v39 ^ 0x5C) - 84) ^ ((v39 ^ 0xE4) + 20) ^ ((v39 ^ 0x29) - 33));
  LODWORD(v16) = 2 * ((v43 ^ 0x1F69D9EE) & (v10 ^ LODWORD(STACK[0x4F28])) ^ v10 & 0x1F69D9EE);
  v44 = ((v16 ^ 0x2D09108) - 347984037 - 2 * ((v16 ^ 0x2D09108) & 0x6B422F5E ^ v16 & 4)) ^ v43;
  v45 = STACK[0x5660];
  v46 = STACK[0x5720];
  v47 = 545 * BYTE2(v18);
  LODWORD(STACK[0x50F0]) = v47;
  v48 = *(v24 + 4 * (v47 + 281220 - 1552 * ((2767376 * (v47 + 281220)) >> 32)));
  LODWORD(v16) = 545 * v18;
  LODWORD(STACK[0x50E0]) = v16;
  v49 = 545 * BYTE3(v18);
  LODWORD(STACK[0x50E8]) = v49;
  LODWORD(STACK[0x5388]) = v18;
  LODWORD(v16) = *(v24 + 4 * (v16 + 281220 - 1552 * ((2767376 * (v16 + 281220)) >> 32)));
  LODWORD(v18) = 545 * BYTE1(v18);
  LODWORD(STACK[0x50D8]) = v18;
  LODWORD(v16) = *(v24 + 4 * (v49 + 281220 - 1552 * ((2767376 * (v49 + 281220)) >> 32))) ^ __ROR4__(v48, 8) ^ __ROR4__(v16, 24);
  v50 = __ROR4__(*(v24 + 4 * (v18 + 281220 - 1552 * ((2767376 * (v18 + 281220)) >> 32))), 16);
  LODWORD(STACK[0x50F8]) = v34;
  v51 = v16 ^ v50 ^ (((v44 & 0xF4D7B09 ^ 0xB402B09 ^ (v44 ^ 0xEB422F5B) & (v45 ^ 0x6C11BCFF)) << v17) | (((v44 ^ 0xEB422F5B) & v46) >> v19)) ^ v34;
  v52 = v42 ^ v40;
  LODWORD(STACK[0x5108]) = v36;
  LODWORD(STACK[0x55E0]) = v42 ^ v40;
  v53 = v51 ^ v42 ^ v40 ^ v36;
  v54 = v51;
  STACK[0x56C0] = v51;
  LODWORD(v16) = v53 ^ v37;
  LODWORD(STACK[0x5100]) = v8;
  v55 = ((v8 ^ v53 ^ v37) + a5 - (a4 & (2 * (v8 ^ v53 ^ v37)))) ^ a5;
  v56 = v33[4];
  v57 = v38 ^ v41 ^ v55;
  v58 = (v56 ^ (2 * ((v56 ^ 0x7A) & (2 * ((v56 ^ 0x7A) & (2 * ((v56 ^ 0x7A) & (2 * ((v56 ^ 0x7A) & (2 * ((v56 ^ 0x7A) & (2 * ((v56 ^ 0x72) & (2 * v56) & 0xFFFFFFF7 ^ v56 & 0x7B)) ^ v56 & 0x7B)) ^ v56 & 0x7B)) ^ v56 & 0x7B)) ^ v56 & 0x7B)) ^ v56 & 0x7B)) ^ 0x7D) << 24;
  v59 = (v58 ^ 0x6000000) & (v10 ^ 0x5D000000) ^ v58 & 0x5C000000;
  v60 = (((2 * v59) ^ 0x8000000) - ((4 * v59) & 0xEC000000) - 143727252) ^ v58;
  v61 = v60 ^ 0x716EE56C;
  v62 = (v60 & STACK[0x4F20] ^ 0x12AC008 ^ (v60 ^ 0x716EE56C) & (v45 ^ 0xE4F60F6C)) << STACK[0x57B0];
  v63 = v19;
  STACK[0x57C0] = v19;
  LODWORD(v62) = v62 ^ ((v61 & v46) >> v19);
  v64 = v57;
  STACK[0x55B0] = v57;
  LODWORD(STACK[0x5530]) = v53 ^ v42 ^ 0x6E087113;
  LODWORD(STACK[0x5680]) = v55 ^ v42 ^ 0x6E087113;
  LODWORD(v8) = v55 ^ v42;
  LODWORD(STACK[0x5520]) = v55 ^ v42;
  LODWORD(v19) = v42;
  v65 = *(v24 + 4 * (545 * v57 + 281220 - 1552 * ((2767376 * (545 * v57 + 281220)) >> 32)));
  v66 = *(v24 + 4 * (545 * BYTE2(v57) + 281220 - 1552 * ((2767376 * (545 * BYTE2(v57) + 281220)) >> 32)));
  v67 = *(v24 + 4 * (545 * BYTE3(v57) + 281220 - 1552 * ((2767376 * (545 * BYTE3(v57) + 281220)) >> 32))) ^ __ROR4__(*(v24 + 4 * (545 * BYTE1(v57) + 281220 - 1552 * ((2767376 * (545 * BYTE1(v57) + 281220)) >> 32))), 16) ^ __ROR4__(v66, 8) ^ v54 ^ v62 ^ ((v65 >> ((BYTE1(v57) & 0x18 ^ 0x18) + (BYTE1(v57) & 0x18u))) | (v65 << 8));
  LODWORD(STACK[0x55A0]) = v67;
  LODWORD(v57) = ((v67 ^ v16) - 449890787 - ((2 * (v67 ^ v16)) & 0xCA5E6C3A)) ^ 0xE52F361D;
  LODWORD(STACK[0x5180]) = v57;
  LODWORD(v16) = v57 ^ v37;
  v68 = v33[8];
  LODWORD(v65) = v68 & 0xFFFFFFDB ^ 0x30;
  v69 = (v68 ^ (2 * ((v68 ^ 0x7A) & (2 * ((v68 ^ 0x7A) & (2 * ((v68 ^ 0x7A) & (2 * ((v68 ^ 0x7A) & (2 * ((v68 ^ 0x7A) & (2 * ((v68 ^ 0xFFFFFFF3) & (2 * v68) & 0x76 ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ 0x3B) << 24;
  LODWORD(v62) = ((v57 ^ v37 ^ v8) - 449890787 - ((2 * (v57 ^ v37 ^ v8)) & 0xCA5E6C3A)) ^ 0xE52F361D;
  LODWORD(v65) = (v10 & 0xB841E5EF ^ 0x80406484 ^ (v69 ^ 0x5841E5EF) & (v10 ^ 0x81626484)) << (!(v66 & 0x100) + (BYTE1(v66) & 1));
  v70 = (v65 - ((2 * v65) & 0xF123EEBE) - 124651681) ^ v69;
  v71 = v70 ^ 0x1891F75F;
  v72 = v70 & 0xB5BD6999 ^ 0x10916119 ^ (v70 ^ 0x1891F75F) & (v45 ^ 0xD6E1AE6F);
  LODWORD(v65) = v62 ^ v64;
  v73 = v62 ^ v64 ^ v52;
  v74 = STACK[0x52C8];
  LODWORD(STACK[0x50D0]) = HIBYTE(v73);
  v75 = v74 + 55 * HIBYTE(v73);
  v76 = v75 & 0xD6 ^ 0x99;
  LOBYTE(v75) = v75 ^ (2 * ((v75 ^ 0x24) & (2 * ((v75 ^ 0x24) & (2 * ((v75 ^ 0x24) & (2 * ((v75 ^ 0x24) & (2 * (v76 ^ v75 & 0x32)) ^ v76)) ^ v76)) ^ v76)) ^ v76));
  v77 = v46;
  v78 = STACK[0x5790];
  v79 = (v72 << STACK[0x5790]) | ((v71 & v46) >> v63);
  v80 = STACK[0x57A0] + 132728 + (((v75 ^ 0x2BAD94A80D695ED4) - 0x2BAD94A80D695E1ELL) ^ ((v75 ^ 0xF61DB06B58D28EB1) + 0x9E24F94A72D7185) ^ ((v75 ^ 0xDDB024C355BBD01FLL) + 0x224FDB3CAA442F2BLL));
  LODWORD(v57) = 545 * BYTE1(v73);
  LODWORD(STACK[0x50C0]) = v57;
  LODWORD(v80) = 545 * ((((v75 ^ *(v80 + 2717) ^ 0x9C) + 100) ^ ((v75 ^ *(v80 + 2717) ^ 0xA2) + 94) ^ ((v75 ^ *(v80 + 2717) ^ 0xEA) + 22)) - 57) + 281220;
  v81 = *(v24 + 4 * (v57 + 281220 - 1552 * ((2767376 * (v57 + 281220)) >> 32)));
  LODWORD(v57) = 545 * BYTE2(v73);
  LODWORD(STACK[0x50C8]) = v57;
  v82 = v57 + 281220 - 1552 * ((2767376 * (v57 + 281220)) >> 32);
  LODWORD(v80) = *(v24 + 4 * (v80 - 1552 * ((2767376 * v80) >> 32)));
  LODWORD(v57) = 545 * (v62 ^ v64 ^ v52);
  v83 = *(v24 + 4 * v82);
  LODWORD(STACK[0x50B8]) = v57;
  v84 = v80 ^ __ROR4__(v83, 8) ^ __ROR4__(*(v24 + 4 * (v57 + 281220 - 1552 * ((2767376 * (v57 + 281220)) >> 32))), 24) ^ v67 ^ ((v81 << ((v75 & 0x10 ^ 0x10) + (v75 & 0x10u))) + WORD1(v81)) ^ v79;
  v85 = v33[16];
  v86 = v85 & 0xFFFFFF95 ^ 0x5D;
  v87 = (((v85 ^ 0x7A) & (2 * ((v85 ^ 0x7A) & (2 * ((v85 ^ 0x7A) & (2 * ((v85 ^ 0x7A) & (2 * ((v85 ^ 0x7A) & (2 * (((2 * v85) & 0x76 ^ 0x6E) & (v85 ^ 0x7A) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86) << 25) ^ (v85 << 24);
  v88 = v10;
  v89 = (v87 ^ 0x15000000) & (v10 ^ 0x2B000000) ^ v87 & 0x2A000000;
  v90 = v87 ^ 0x6471A584 ^ (2 * v89 - (v89 >> 27 << 29) - 244210300);
  LODWORD(STACK[0x5720]) = v77;
  v91 = STACK[0x5780];
  v92 = STACK[0x5760];
  LOBYTE(v74) = v78;
  v93 = ((v90 & v77) >> STACK[0x5780]) + ((v90 & STACK[0x5760]) << v78);
  LODWORD(v16) = ((v84 ^ v16) - 449890787 - ((2 * (v84 ^ v16)) & 0xCA5E6C3A)) ^ 0xE52F361D;
  LODWORD(STACK[0x5360]) = v62 ^ v19;
  v94 = STACK[0x5740];
  LODWORD(v62) = v62 ^ v19 ^ LODWORD(STACK[0x5740]) ^ v16;
  v95 = v65 ^ v62;
  LODWORD(v57) = 545 * (v65 ^ v62);
  LODWORD(v65) = *(v24 + 4 * (545 * ((v65 ^ v62) >> 24) + 281220 - 1552 * ((2767376 * (545 * ((v65 ^ v62) >> 24) + 281220)) >> 32)));
  LODWORD(STACK[0x5268]) = v57;
  v96 = v57 + 281220 - 1552 * ((2767376 * (v57 + 281220)) >> 32);
  LODWORD(v57) = 545 * BYTE2(v95);
  LODWORD(STACK[0x5288]) = v57;
  LODWORD(v80) = v57 + 281220 - 1552 * ((2767376 * (v57 + 281220)) >> 32);
  LODWORD(v57) = 545 * BYTE1(v95);
  LODWORD(STACK[0x5260]) = v57;
  LODWORD(v65) = v65 ^ __ROR4__(*(v24 + 4 * v96), 24) ^ __ROR4__(*(v24 + 4 * v80), 8);
  v97 = __ROR4__(*(v24 + 4 * (v57 + 281220 - 1552 * ((2767376 * (v57 + 281220)) >> 32))), 16);
  LODWORD(STACK[0x5560]) = v84;
  LODWORD(v57) = v65 ^ v97 ^ v93 ^ v84;
  LODWORD(STACK[0x53E0]) = v57;
  LODWORD(STACK[0x56E0]) = v16;
  LODWORD(v78) = STACK[0x5750];
  v98 = v57 ^ 0x742361FB;
  v99 = v57 ^ 0x742361FB ^ LODWORD(STACK[0x5750]) ^ (v16 + 1948475899 - ((2 * v16) & 0xE846C3F6));
  LODWORD(v65) = v33[32];
  STACK[0x5490] = v33;
  LODWORD(v80) = v65 & 0xFFFFFFD1 ^ 0x3F;
  LODWORD(v80) = (((v65 ^ 0x7A) & (2 * ((v65 ^ 0x7A) & (2 * ((v65 ^ 0x7A) & (2 * ((v65 ^ 0x7A) & (2 * ((v65 ^ 0x7A) & (2 * (((2 * v65) & 0x76 ^ 0x2A) & (v65 ^ 0x7A) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80) << 25) ^ (v65 << 24);
  v100 = STACK[0x5640];
  LODWORD(STACK[0x55D0]) = v19;
  v101 = v62 ^ v19;
  v102 = (v99 - 449890787 - ((2 * v99) & 0xCA5E6C3A)) ^ 0xE52F361D;
  STACK[0x5240] = v101;
  LODWORD(v65) = v101 ^ v94 ^ v102;
  LODWORD(STACK[0x54A0]) = v102;
  LODWORD(STACK[0x5258]) = v95;
  LODWORD(v101) = v78;
  v103 = (2 * ((v80 ^ 0xEA2DA23) & (v100 ^ 0x3299A815) ^ v100 & 0x5FA2DA23)) ^ 0x25011002;
  v104 = v80 ^ 0xC9750B04 ^ (v103 - ((2 * v103) & 0x30EA1638) + 410323716);
  LODWORD(v80) = v19 ^ ((v95 ^ v78 ^ v65) - 449890787 - ((2 * (v95 ^ v78 ^ v65)) & 0xCA5E6C3A));
  v105 = v80 ^ 0xE52F361D;
  v106 = v105 - ((2 * v105) & 0xF325798C) + 0x6BBD210C7992BCC6;
  LODWORD(STACK[0x55C0]) = (v106 >> 3) & 0xFFFFFFE0;
  LOBYTE(v95) = (v106 >> 3) & 0xE0 | ((v105 >> 11) - ((v105 >> 10) & 0x18) + 28) & 0x1F;
  v107 = 545 * (BYTE2(v106) ^ 0x92) + 281220 - 1552 * ((2767376 * (545 * (BYTE2(v106) ^ 0x92u) + 281220)) >> 32);
  v108 = (v95 ^ 0xC3u) + 112924 + STACK[0x57A0];
  LOBYTE(v108) = 117 * (((v95 ^ *(v108 + 1252) ^ 0x7D) + 107) ^ ((v95 ^ *(v108 + 1252) ^ 0xBC) - 84) ^ ((v95 ^ *(v108 + 1252) ^ 0xD4) - 60)) - 95;
  STACK[0x5430] = v105;
  LODWORD(v105) = 545 * BYTE3(v105);
  LODWORD(STACK[0x5510]) = v105;
  v109 = *(v24 + 4 * v107);
  v110 = *(v24 + 4 * (v105 + 281220 - 1552 * ((2767376 * (v105 + 281220)) >> 32)));
  LODWORD(v105) = 545 * (v80 ^ 0x1D);
  LODWORD(STACK[0x5500]) = v105;
  v111 = v110 ^ __ROR4__(v109, 8) ^ __ROR4__(*(v24 + 4 * (545 * v108 + 281220 - 1552 * ((2767376 * (545 * v108 + 281220)) >> 32))), 16) ^ __ROR4__(*(v24 + 4 * (v105 + 281220 - 1552 * ((2767376 * (v105 + 281220)) >> 32))), 24) ^ ((v104 & v92) << v74) ^ ((v104 & v77) >> v91);
  LODWORD(v62) = v98 ^ (v111 + 1948475899 - ((2 * v111) & 0xE846C3F6));
  v112 = STACK[0x5610];
  LODWORD(STACK[0x5610]) = STACK[0x5610];
  v113 = v33[64];
  LODWORD(v108) = v113 & 0xFFFFFFE7 ^ 0xFFFFFF96;
  LODWORD(v78) = STACK[0x5730];
  v114 = STACK[0x5710];
  v115 = (v113 ^ (2 * ((v113 ^ 0x7A) & (2 * ((v113 ^ 0x7A) & (2 * ((v113 ^ 0x7A) & (2 * ((v113 ^ 0x7A) & (2 * ((v113 ^ 0x7A) & (2 * ((v113 ^ 0x7A) & (2 * v113) & 0x76 ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ 0x56) << 24;
  v116 = STACK[0x55F0];
  LODWORD(v80) = LODWORD(STACK[0x55F0]) ^ v101 ^ (v112 - 449890787 - ((2 * v112) & 0xCA5E6C3A)) ^ v80;
  v117 = (2 * ((v115 ^ 0x31000000) & (v88 ^ 0x31000000) ^ v115 & 0x30000000)) ^ 0x60000000;
  v118 = (v117 - ((2 * v117) & 0x785683FC) + 1009467893) ^ v115;
  LODWORD(v19) = STACK[0x5650];
  v119 = STACK[0x57B0];
  v120 = STACK[0x57C0];
  v121 = ((v118 & 0xC666D643 ^ 0x84224041 ^ (v118 ^ 0x8D2B41F5) & (LODWORD(STACK[0x5660]) ^ 0xA53A11B5)) << STACK[0x57B0]) ^ ((v118 & 0xB349D26E ^ 0x81094064 ^ (v118 ^ 0x8D2B41F5) & (LODWORD(STACK[0x5650]) ^ 0xA3ACD380)) >> STACK[0x57C0]);
  LODWORD(v105) = STACK[0x55D0];
  LODWORD(STACK[0x54F0]) = v65 ^ LODWORD(STACK[0x55D0]);
  v122 = v101 ^ 0xA559ADA1 ^ v102 ^ v62;
  LODWORD(v65) = v114 ^ 0xCC9B47EB ^ (v78 - ((2 * v78) & 0xD385D494) + 1774381642) ^ v65 ^ v105 ^ v122;
  LODWORD(v108) = v80 ^ v65;
  LODWORD(v8) = 545 * (v80 ^ v65);
  LODWORD(STACK[0x5218]) = v8;
  LODWORD(v80) = v8 + 281220 - 1552 * ((2767376 * (v8 + 281220)) >> 32);
  LODWORD(STACK[0x5590]) = BYTE3(v108);
  v123 = v108;
  LODWORD(v8) = 545 * BYTE1(v108);
  LODWORD(STACK[0x51C0]) = v8;
  LODWORD(v91) = v8 + 281220 - 1552 * ((2767376 * (v8 + 281220)) >> 32);
  LODWORD(STACK[0x5580]) = v108;
  LODWORD(v8) = 545 * BYTE2(v108);
  LODWORD(v80) = *(v24 + 4 * v80);
  LODWORD(STACK[0x51A0]) = v8;
  LODWORD(v80) = *(v24 + 4 * ((545 * (((BYTE3(v108) ^ 0x154BAA2B) + 1014840197) ^ ((BYTE3(v108) ^ 0x2C601127) + 89555081) ^ ((BYTE3(v108) ^ 0x392BBB0C) + 270346916)) + 1121460948) % 0x610u)) ^ __ROR4__(v80, 24) ^ __ROR4__(*(v24 + 4 * v91), 16);
  v124 = __ROR4__(*(v24 + 4 * (v8 + 281220 - 1552 * ((2767376 * (v8 + 281220)) >> 32))), 8);
  LODWORD(STACK[0x5250]) = v62;
  LODWORD(v62) = v80 ^ v124 ^ v121 ^ v62;
  STACK[0x56D0] = (v112 - 1520849503 - ((2 * v112) & 0x4AB35B42)) ^ v116 ^ v122;
  v125 = v114 ^ v78 ^ v122 ^ (v62 - 1520849503 - ((2 * v62) & 0x4AB35B42));
  v126 = v65 ^ v105;
  LODWORD(STACK[0x5158]) = v125;
  LODWORD(v65) = v125 ^ v101;
  v127 = v101;
  LODWORD(STACK[0x51B0]) = v126;
  v128 = STACK[0x5490];
  v129 = *(STACK[0x5490] + 128);
  LODWORD(v108) = v129 & 0x37 ^ 0xFFFFFFAE;
  v130 = (((v129 ^ 0x7A) & (2 * ((v129 ^ 0x7A) & (2 * ((v129 ^ 0x7A) & (2 * ((v129 ^ 0x7A) & (2 * ((v129 ^ 0x7A) & (2 * ((v129 ^ 0x7A) & (2 * v129) & 0xFFFFFFF7 ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108)) ^ v108) << 25) ^ (v129 << 24);
  LODWORD(v108) = (2 * ((v130 ^ 0x8935AF6) & (v100 ^ 0x32D408CD) ^ v100 & 0x3F935AF6)) ^ 0x65201188;
  v131 = (v108 - ((2 * v108) & 0x470F117C) + 596084925) ^ v130;
  LODWORD(v108) = v131 & 0xAFB79C6C ^ 0x487882C;
  v131 ^= 0x148788BDu;
  v132 = v108 ^ v131 & (v19 ^ 0xBF529D82);
  v133 = ((v126 ^ v125 ^ v127) - 449890787 - ((2 * (v126 ^ v125 ^ v127)) & 0xCA5E6C3A)) ^ 0xE52F361D;
  v134 = v123 ^ LODWORD(STACK[0x55E0]) ^ v133;
  LODWORD(STACK[0x5160]) = BYTE2(v134);
  v135 = STACK[0x5760];
  LOBYTE(v19) = v119;
  v136 = (v132 >> v120) | ((v131 & STACK[0x5760]) << v119);
  LODWORD(v8) = 545 * v134;
  LODWORD(STACK[0x5178]) = v8;
  LODWORD(v132) = v8 + 281220 - 1552 * ((2767376 * (v8 + 281220)) >> 32);
  LODWORD(v8) = 545 * BYTE1(v134);
  LODWORD(STACK[0x5170]) = v8;
  HIDWORD(v137) = *(v24 + 4 * v132);
  LODWORD(v137) = HIDWORD(v137);
  LODWORD(v78) = (v137 >> 24) ^ __ROR4__(*(v24 + 4 * (545 * BYTE2(v134) + 281220 - 1552 * ((2767376 * (545 * BYTE2(v134) + 281220)) >> 32))), 8);
  LODWORD(v137) = __ROR4__(*(v24 + 4 * (v8 + 281220 - 1552 * ((2767376 * (v8 + 281220)) >> 32))), 16);
  v138 = *(v24 + 4 * (545 * BYTE3(v134) + 281220 - 1552 * ((2767376 * (545 * BYTE3(v134) + 281220)) >> 32))) ^ v136;
  LODWORD(STACK[0x5190]) = v62;
  LODWORD(v78) = v78 ^ v137 ^ v138 ^ v62;
  LODWORD(v62) = v133 ^ v105;
  LODWORD(v119) = v105;
  v139 = ((v65 ^ v78) - 449890787 - ((2 * (v65 ^ v78)) & 0xCA5E6C3A)) ^ 0xE52F361D;
  LODWORD(v105) = STACK[0x5740];
  LODWORD(STACK[0x5168]) = v62;
  LODWORD(v65) = v139 ^ v105 ^ v62;
  STACK[0x52F8] = v134;
  LODWORD(v132) = *(v128 + 27);
  LODWORD(v91) = v132 & 0x6D ^ 0xFFFFFFD9;
  LODWORD(v132) = (((v132 ^ 0x7A) & (2 * ((v132 ^ 0x7A) & (2 * ((v132 ^ 0x7A) & (2 * ((v132 ^ 0x7A) & (2 * ((v132 ^ 0x7A) & (2 * (((2 * v132) & 0xFFFFFFF7 ^ 0x16) & (v132 ^ 0x72) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91) << 25) ^ (v132 << 24);
  v140 = STACK[0x5630];
  v141 = (2 * ((v132 ^ 0x1C617641) & (v140 ^ 0x1746CB2) ^ v140 & 0x71617641)) ^ 0x2C0C800;
  LODWORD(v132) = (v141 - ((2 * v141) & 0x1D98DE78) - 1899204827) ^ v132;
  LODWORD(v132) = ((v132 & 0x7E5DC248 ^ 0x624C4200 ^ (v132 ^ 0xE3CC6F25) & (LODWORD(STACK[0x5660]) ^ 0x1D0105BE)) << STACK[0x5790]) ^ (((v132 ^ 0xE3CC6F25) & STACK[0x5720]) >> v120);
  LODWORD(v78) = v78 ^ v116;
  LODWORD(v8) = STACK[0x5610];
  LODWORD(v101) = v116 ^ LODWORD(STACK[0x5610]);
  v142 = v101 ^ ((v134 ^ v127 ^ v65) - 449890787 - ((2 * (v134 ^ v127 ^ v65)) & 0xCA5E6C3A));
  LODWORD(STACK[0x5550]) = v142;
  v142 ^= 0xE52F361D;
  STACK[0x5570] = v139;
  LODWORD(STACK[0x5138]) = v139 ^ v8;
  LODWORD(v62) = 545 * BYTE2(v142);
  LODWORD(STACK[0x5140]) = v62;
  LODWORD(STACK[0x5130]) = v142;
  v143 = *(v24 + 4 * (545 * BYTE1(v142) + 281220 - 1552 * ((2767376 * (545 * BYTE1(v142) + 281220)) >> 32)));
  LODWORD(v91) = *(v24 + 4 * (v62 + 281220 - 1552 * ((2767376 * (v62 + 281220)) >> 32)));
  HIDWORD(v137) = *(v24 + 4 * ((v142 + 516) * ((~v116 & 0x221) + (v116 & 0x221u)) % 0x610));
  LODWORD(v137) = HIDWORD(v137);
  LODWORD(v62) = 545 * HIBYTE(v142);
  LODWORD(STACK[0x5150]) = v62;
  LODWORD(v143) = (v137 >> 24) ^ __ROR4__(v91, 8) ^ *(v24 + 4 * (v62 + 281220 - 1552 * ((2767376 * (v62 + 281220)) >> 32))) ^ v132 ^ ((v143 >> (((v139 ^ v8) & 0x10 ^ 0x10) + ((v139 ^ v8) & 0x10))) | (v143 << 16));
  LODWORD(STACK[0x5148]) = v78 ^ v116;
  LODWORD(v62) = v139 ^ v105 ^ v78 ^ v116 ^ v143;
  LODWORD(v8) = v143 ^ v78;
  LODWORD(STACK[0x55E0]) = v101;
  LODWORD(STACK[0x5280]) = v65 ^ v101;
  LODWORD(v105) = v65 ^ v101 ^ v105 ^ v62;
  LODWORD(STACK[0x55F0]) = v105;
  LODWORD(STACK[0x5470]) = v62;
  v144 = v101 ^ 0x5D3B549D ^ ((v142 ^ v127 ^ v105 ^ 0xB8146280) - 449890787 - 2 * ((v142 ^ v127 ^ v105 ^ 0xB8146280) & 0x652F361F ^ (v142 ^ v127 ^ v105) & 2));
  LODWORD(v78) = 545 * BYTE2(v144);
  LODWORD(STACK[0x5210]) = v78;
  v145 = *(v128 + 54);
  LODWORD(v143) = v145 & 0xFFFFFFBF ^ 0x62;
  v146 = (v145 ^ (2 * ((v145 ^ 0x7A) & (2 * ((v145 ^ 0x7A) & (2 * ((v145 ^ 0x7A) & (2 * ((v145 ^ 0x7A) & (2 * ((v145 ^ 0x7A) & (2 * ((v145 ^ 0xFFFFFFF3) & (2 * v145) & 0x76 ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ v143)) ^ 0xCCCCCCCC) << 24;
  LODWORD(v143) = LODWORD(STACK[0x2DC8]) ^ (2 * ((v146 ^ 0x1EEF9B7C) & (v140 ^ 0x1FC2C84) ^ v140 & 0x6DEF9B7C));
  v147 = (v143 - ((2 * v143) & 0x917F8064) + 1220526131) ^ v146;
  LODWORD(v78) = *(v24 + 4 * (v78 + 281220 - 1552 * ((2767376 * (v78 + 281220)) >> 32)));
  v148 = ((v147 & 0x695A050B ^ 0x291A0003 ^ (v147 ^ 0x3BBFC033) & (LODWORD(STACK[0x5650]) ^ 0x79BF04E5u)) >> v120) ^ (((v147 ^ 0x3BBFC033) & v135) << v19);
  LODWORD(v143) = 545 * v144;
  LODWORD(STACK[0x5188]) = v143;
  LODWORD(STACK[0x54E0]) = v144;
  LODWORD(v65) = 545 * BYTE1(v144);
  LODWORD(STACK[0x5220]) = v65;
  v149 = 545 * HIBYTE(v144);
  LODWORD(STACK[0x51A8]) = v149;
  HIDWORD(v137) = *(v24 + 4 * (v143 + 281220 - 1552 * ((2767376 * (v143 + 281220)) >> 32)));
  LODWORD(v137) = HIDWORD(v137);
  v150 = (v137 >> 24) ^ __ROR4__(v78, 8) ^ __ROR4__(*(v24 + 4 * (v65 + 281220 - 1552 * ((2767376 * (v65 + 281220)) >> 32))), 16) ^ *(v24 + 4 * (v149 + 281220 - 1552 * ((2767376 * (v149 + 281220)) >> 32))) ^ v148;
  LODWORD(STACK[0x50B0]) = v8;
  LODWORD(STACK[0x5198]) = v8 ^ v116;
  LODWORD(STACK[0x50A8]) = v150;
  LODWORD(STACK[0x5420]) = (v150 ^ v127 ^ v62 ^ v8 ^ v116) - 449890787 - ((2 * (v150 ^ v127 ^ v62 ^ v8 ^ v116)) & 0xCA5E6C3A);
  v151 = STACK[0x5430];
  LODWORD(v65) = LODWORD(STACK[0x54A0]) ^ v119;
  LODWORD(STACK[0x5410]) = (545 * (((BYTE1(v65) ^ 0x44089915) + 430738551) ^ ((BYTE1(v65) ^ LODWORD(STACK[0x2DCC])) + 874651733) ^ ((BYTE1(v65) ^ 0x2D8EAC22u) + 1881848130)) - 1515293156) % 0x610;
  STACK[0x53C0] = (((v151 >> 13) & 0xF8 | (v151 >> 21) & 7) - 2 * (((v151 >> 13) & 0x78 | (v151 >> 21) & 5) ^ (v151 >> 13) & 0x10) + 109) ^ 0xFFFFFFA9;
  v152 = STACK[0x57A0];
  LOBYTE(v78) = *(STACK[0x57A0] + 86464 + ((((((v151 >> 13) & 0xF8 | (v151 >> 21) & 7) - 2 * (((v151 >> 13) & 0x78 | (v151 >> 21) & 5) ^ (v151 >> 13) & 0x10) + 109) ^ 0x1EB7DAD792424464) - 0x1EB7DAD7924244CDLL) ^ (((((v151 >> 13) & 0xF8 | (v151 >> 21) & 7) - 2 * (((v151 >> 13) & 0x78 | (v151 >> 21) & 5) ^ (v151 >> 13) & 0x10) + 109) ^ 0x9F05207D20512307) + 0x60FADF82DFAEDC52) ^ (((((v151 >> 13) & 0xF8 | (v151 >> 21) & 7) - 2 * (((v151 >> 13) & 0x78 | (v151 >> 21) & 5) ^ (v151 >> 13) & 0x10) + 109) ^ 0x81B2FAAAB21367E9) + 0x7E4D05554DEC98C0)) + 3107);
  LODWORD(v78) = 545 * ((((v78 ^ 0x34) - 69) ^ (v78 - 113) ^ ((v78 ^ 0xF) - 126)) + 46);
  v153 = v78 - 1552 * ((2767376 * v78) >> 32);
  LODWORD(v78) = LODWORD(STACK[0x5500]) - 1552 * ((2767376 * LODWORD(STACK[0x5500])) >> 32);
  v154 = LODWORD(STACK[0x5510]) - 1552 * ((2767376 * LODWORD(STACK[0x5510])) >> 32);
  LODWORD(STACK[0x5510]) = 545 * BYTE2(v65) - 1552 * ((2767376 * (545 * BYTE2(v65))) >> 32);
  LODWORD(v105) = STACK[0x53E0];
  HIDWORD(v137) = *(v24 + 4 * (545 * BYTE1(v105) - 1552 * ((2767376 * (545 * BYTE1(v105))) >> 32)));
  LODWORD(v137) = HIDWORD(v137);
  LODWORD(v91) = (v137 >> 16) ^ __ROR4__(*(v24 + 4 * (545 * BYTE2(v105) - 1552 * ((2767376 * (545 * BYTE2(v105))) >> 32))), 8);
  v155 = 545 * LODWORD(STACK[0x53E0]) - 1552 * ((2767376 * (545 * LODWORD(STACK[0x53E0]))) >> 32);
  STACK[0x5430] = (*(v24 + 4 * v154) ^ __ROR4__(*(v24 + 4 * v153), 8)) ^ __ROR4__(*(v24 + 4 * v78), 24) ^ __ROR4__(*(v24 + 4 * (545 * BYTE1(v151) - 1552 * ((2767376 * (545 * BYTE1(v151))) >> 32))), 16);
  LODWORD(v132) = STACK[0x54F0];
  STACK[0x5278] = v91 ^ __ROR4__(*(v24 + 4 * v155), 24) ^ *(v24 + 4 * ((545 * (((BYTE3(v105) ^ 0x314F4656) - 1187167579) ^ ((BYTE3(v105) ^ 0xFFBD4F28) + 2010074075) ^ ((BYTE3(v105) ^ 0xCEF2097E) + 1182797197)) - 2059176275) % 0x610));
  v156 = STACK[0x56C0];
  v157 = STACK[0x55B0];
  v158 = v157 - ((2 * v157) & 0x469C7596);
  LOBYTE(v78) = *(v152 + (BYTE1(STACK[0x56C0]) ^ 0x1BAFAu));
  v159 = *(((((v157 - ((2 * v157) & 0x46) - 93) ^ 0x9414D4A03CADC01ALL) + 0x6BEB2B5FC3523FA1) ^ (((v157 - ((2 * v157) & 0x46) - 93) ^ 0x4B067439D9FD82CBLL) - 0x4B067439D9FD828ELL) ^ (((v157 - ((2 * v157) & 0x46) - 93) ^ 0xDF12A099E5504271) + 0x20ED5F661AAFBDCCLL)) + v152 + 47461);
  v160 = 48 - 85 * (((((v159 >> 3) | (32 * v159)) ^ 5) + 69) ^ ((((v159 >> 3) | (32 * v159)) ^ 0x39) + 121) ^ ((((v159 >> 3) | (32 * v159)) ^ 0xFFFFFFFE) - 64));
  LODWORD(v143) = v160 & 0x6C ^ 0x64;
  LODWORD(v151) = STACK[0x5520];
  v161 = *(v152 + (((v151 >> 19) & 0xE0 | (v151 >> 27)) ^ 0x12DDLL));
  v162 = v160 ^ (2 * ((v160 ^ 0x24) & (2 * ((v160 ^ 0x24) & (2 * ((v160 ^ 0x24) & (2 * ((v160 ^ 0x24) & (2 * v143) ^ v143)) ^ v143)) ^ v143)) ^ v143));
  LODWORD(v143) = ((v161 ^ 0x71) - 113) ^ ((v161 ^ 0x36) - 54) ^ ((v161 ^ 0xFFFFFFFA) + 6);
  v163 = v143 + 77;
  LODWORD(v143) = (v143 - 51) & 0xFFFFFF91 | 0x2A;
  LODWORD(v91) = v143 ^ v163 & 0x74;
  v164 = v163 ^ (2 * ((v163 ^ 0x10) & (2 * ((v163 ^ 0x10) & (2 * ((v163 ^ 0x10) & (2 * ((v163 ^ 0x10) & (2 * (v163 & (2 * (v163 & (2 * v143) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91));
  v165 = v156 - ((2 * v156) & 0x138BE38D8) + 0x27B47AA19C5F1C6CLL;
  LODWORD(STACK[0x53A0]) = v162 ^ 0xFFFFFFD1;
  LODWORD(v33) = (545 * (((v162 ^ 0xE21CAD7F) + 501437010) ^ ((v162 ^ 0xBD631550) + 1117579903) ^ ((v162 ^ 0x5F7FB843) - 1602205842)) + 103005) % 0x610;
  LODWORD(v157) = STACK[0x5530];
  LODWORD(v143) = HIBYTE(LODWORD(STACK[0x5530]));
  LODWORD(v78) = (LODWORD(STACK[0x5090]) - 85 * (((v78 ^ 0x3D) + 79) ^ ((v78 ^ 0x46) + 54) ^ ((v78 ^ 0xC3) - 79)));
  HIDWORD(v137) = *(v24 + 4 * (545 * (BYTE2(v165) ^ 0x5F) - 1552 * ((2767376 * (545 * (BYTE2(v165) ^ 0x5Fu))) >> 32)));
  LODWORD(v137) = HIDWORD(v137);
  v166 = (v137 >> 8);
  LODWORD(v78) = *(v24 + 4 * ((545 * (v78 | ((v78 < 0x3C) << 8)) - 32700) % 0x610));
  LODWORD(v156) = *(v24 + 4 * (545 * v156 - 1552 * ((2767376 * (545 * v156)) >> 32)));
  STACK[0x51D8] = v166;
  LODWORD(v19) = v166 ^ __ROR4__(v78, 16) ^ __ROR4__(v156, 24);
  STACK[0x56C0] = (*(v24 + 4 * ((545 * (((((v158 + 0x5579A157234E3ACBLL) >> 24) ^ 0xC681ACA4) - 903860209) ^ ((((v158 + 0x5579A157234E3ACBLL) >> 24) ^ 0xEE90FC8) + 38310755) ^ ((((v158 + 0x5579A157234E3ACBLL) >> 24) ^ LODWORD(STACK[0x4F18])) - 1117230874)) - 380719306) % 0x610)) ^ __ROR4__(*(v24 + 4 * ((545 * (((((v158 + 15051) >> 8) ^ 0x6DC630D9) + 113842617) ^ ((((v158 + 15051) >> 8) ^ 0x68340C2E) + 54207824) ^ ((((v158 + 15051) >> 8) ^ 0x5F23CCDu) + 1862079917)) + 347665188) % 0x610)), 16));
  LODWORD(STACK[0x5340]) = *(v24 + 4 * ((545 * (((BYTE3(v157) ^ 0xD23C3E38) - 1310804074) ^ ((BYTE3(v157) ^ 0x992C929A) - 87155912) ^ ((BYTE3(v157) ^ 0x4B10ACCC) + 686957922)) + 1522054588) % 0x610)) ^ __ROR4__(*(v24 + 4 * (545 * (BYTE2(v157) ^ 8) - 1552 * ((2767376 * (545 * (BYTE2(v157) ^ 8u))) >> 32))), 8);
  LODWORD(v156) = LODWORD(STACK[0x52C0]) + 13 * (((((v158 + 592329419) >> 16) & 0x1B ^ 0xFFFFFFA8) + 87) ^ ((((v158 + 592329419) >> 16) & 0x1B) - 1) ^ ((((v158 + 592329419) >> 16) & 0x1B ^ 0xFFFFFF82) + 125));
  LOBYTE(v162) = v156 & 0x3C ^ 0x4C;
  LOBYTE(v156) = v156 ^ (2 * ((v156 ^ 0x24) & (2 * ((v156 ^ 0x24) & (2 * ((v156 ^ 0x24) & (2 * ((v156 ^ 0x24) & (2 * v162) ^ v162)) ^ v162)) ^ v162)) ^ v162));
  LODWORD(v156) = ((v156 ^ 0xC3) & (BYTE2(v165) ^ 0xD9) ^ v156 & 0x79) == 190;
  STACK[0x4F60] = STACK[0x4F30] + STACK[0x5408];
  STACK[0x5308] = LODWORD(STACK[0x56F0]) ^ 0x3Cu;
  LODWORD(STACK[0x56E0]) ^= LODWORD(STACK[0x55D0]);
  LODWORD(STACK[0x54A0]) = LODWORD(STACK[0x55C0]) ^ 0xFFFFFFAD;
  v167 = LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x55E0]);
  LODWORD(STACK[0x5228]) = LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x55E0]);
  LODWORD(v157) = LODWORD(STACK[0x5420]) ^ 0xE52F361D;
  v168 = STACK[0x5740];
  LODWORD(STACK[0x5470]) = v167;
  LODWORD(STACK[0x50A0]) = v157;
  LODWORD(v166) = LODWORD(STACK[0x5610]) ^ v168;
  LODWORD(STACK[0x53C8]) = v116;
  LODWORD(STACK[0x5098]) = v166 ^ v116;
  LODWORD(v166) = v166 ^ v116 ^ LODWORD(STACK[0x54E0]);
  LODWORD(STACK[0x5318]) = *(v24 + 4 * LODWORD(STACK[0x5410]));
  v169 = *(v24 + 4 * LODWORD(STACK[0x5510]));
  LODWORD(STACK[0x53D8]) = *(v24 + 4 * (545 * BYTE1(v132) - 1552 * ((2767376 * (545 * BYTE1(v132))) >> 32)));
  LODWORD(STACK[0x51E0]) = v167 ^ v168 ^ v157 ^ v166;
  LODWORD(v143) = v143 ^ 0xFFFFFFD3;
  LODWORD(STACK[0x53A8]) = v151 - ((2 * v151) & 0xFFFFFFCA) - 27;
  LODWORD(STACK[0x5380]) = ((v158 + 0x5579A157234E3ACBLL) >> 16) ^ 0x57;
  v170 = 117 * (v164 ^ 0xFFFFFFC4);
  LODWORD(v166) = *(v24 + 4 * (545 * v151 - 1552 * ((2767376 * (545 * v151)) >> 32)));
  LODWORD(v139) = STACK[0x5540];
  v171 = *(v24 + 4 * v33);
  LODWORD(STACK[0x56F0]) = ((((v165 >> 24) ^ 0x34) + 102) ^ (((v165 >> 24) ^ 0xFFFFFFE6) - 72) ^ (((v165 >> 24) ^ 0x4E) + 32)) + 55;
  v172 = *(STACK[0x57D8] + 8 * (((2 * v156) | (32 * v156)) ^ LODWORD(STACK[0x5700])));
  LODWORD(STACK[0x52A0]) = v166 << 8;
  LODWORD(STACK[0x52E0]) = LODWORD(STACK[0x5590]) ^ 0xFFFFFFE5;
  LODWORD(STACK[0x5390]) = v132 ^ 0x6A;
  STACK[0x55F0] = v169 >> 8;
  LODWORD(STACK[0x5300]) = HIWORD(LODWORD(STACK[0x5680])) ^ 0x2B;
  LODWORD(STACK[0x5408]) = v170 + 92;
  LODWORD(STACK[0x5368]) = HIBYTE(v171) ^ 0x42;
  STACK[0x55B0] = LODWORD(STACK[0x5580]);
  STACK[0x55C0] = LODWORD(STACK[0x5400]);
  LODWORD(STACK[0x52E8]) = v139;
  STACK[0x51C8] = LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x5500]) = v19;
  LODWORD(STACK[0x5420]) = v19;
  LODWORD(STACK[0x5398]) = v143;
  LODWORD(STACK[0x5510]) = v143;
  return v172();
}

uint64_t sub_100349E5C()
{
  v0 = STACK[0x57D8];
  v1 = STACK[0x1D00];
  v2 = STACK[0x1D00] + 20044;
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * STACK[0x1D00]);
  return (*(v0 + 8 * (v1 ^ 0x432B ^ v2)))();
}

uint64_t sub_100349E9C(unint64_t a1)
{
  STACK[0x4D98] = STACK[0x57B0] - 0x30BDFED8F32E674DLL;
  LODWORD(STACK[0x4DE0]) = LODWORD(STACK[0x4DC8]) ^ 0xC99D80B4;
  v2 = *(STACK[0x57D8] + 8 * (v1 - 2963));
  STACK[0x4DA0] = a1;
  return v2();
}

uint64_t sub_10034A17C()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  STACK[0x66A8] = 0;
  return (*(v0 + 8 * SLODWORD(STACK[0x365C])))(v1);
}

uint64_t sub_10034A354()
{
  v0 = 15 * (STACK[0x51B8] ^ 0x584D);
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9192)))((5 * LODWORD(STACK[0x9E5C])));
  STACK[0x7C88] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (v0 - 208)) ^ LODWORD(STACK[0x1C00]))))();
}

uint64_t sub_10034A564()
{
  v1 = STACK[0x51B8] + 8042;
  LODWORD(STACK[0x9DA4]) = v0;
  return (*(STACK[0x57D8] + 8 * ((54 * (STACK[0x7870] == 0)) ^ v1)))();
}

uint64_t sub_10034A7B4@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v6 = v3 - 0x4903A00EA949970BLL + (v4 + 3034);
  v7 = __ROR8__((v2 + v6) & ((v4 + 3066) - 9049), 8) - 0x67659A219E1678C8;
  v8 = __ROR8__(v7 ^ 0xAF44247A204C829CLL, 8);
  v7 ^= 0x6B970A892F00BB58uLL;
  v9 = (v8 + v7) ^ 0x767CBF12CE87AC7DLL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xBD6CE439E669F3DFLL;
  v12 = __ROR8__(v11, 8);
  v13 = v11 ^ __ROR8__(v10, 61);
  v14 = (v12 + v13) ^ v5;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v16 + v15 - ((2 * (v16 + v15)) & 0x90098B9DB9A2A01CLL) + 0x4804C5CEDCD1500ELL) ^ 0x10EB690514063655;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ a1;
  v20 = __ROR8__(v19, 8);
  v21 = v19 ^ __ROR8__(v18, 61);
  v22 = (v20 + v21 - ((2 * (v20 + v21)) & 0x21A8583F5552E6D2) + 0x10D42C1FAAA97369) ^ 0x94BD9EFBFCEA3350;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  LOBYTE(v22) = (((v24 + v23 - ((2 * (v24 + v23)) & 0x38347C04E1D27DD8) + 0x1C1A3E0270E93EECLL) ^ 0x15D25B181C9340B6) >> (8 * ((v2 + v6) & 7))) ^ *(v2 + v6);
  LODWORD(v6) = ((((v22 ^ 0x42) + 85) ^ ((v22 ^ 0x9F) - 118) ^ ((v22 ^ 0xDD) - 52)) - *(a2 + v6)) == 23;
  return (*(STACK[0x57D8] + 8 * (((2 * v6) | (8 * v6)) ^ v4)))();
}

uint64_t sub_10034AA50(double a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v26 = a14 & 0xF;
  v28 = v23[25];
  v29.i64[0] = vqtbl4q_s8(*(&a2 - 1), v28).u64[0];
  v29.i64[1] = vqtbl4q_s8(*a5.n128_u64, v28).u64[0];
  v30 = vrev64q_s8(veorq_s8(veorq_s8(veorq_s8(*(a10 + a14), *(v16 + v26 - 15)), *(v18 + v26 - 15)), *((v19 ^ v22) + v26 + v17 + v21)));
  v31 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v30, v30, 8uLL), v24), vmulq_s8(v29, v25)));
  *(a12 + a13) = vextq_s8(v31, v31, 8uLL);
  return (*(STACK[0x57D8] + 8 * (((a16 == 0) * v20) ^ v19)))();
}

uint64_t sub_10034ACCC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v18 = *(*v14 + ((*v15 & ((v13 & 0xFFFFFFF8 ^ 0x2EA9C890) + 1267888266 + ((2 * (v13 & 0xFFFFFFF8)) & 0x5D539120))) & 0xFFFFFFFFFFFFFFF8));
  v19 = (v18 + __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8)) ^ a3;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a2;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (v7 - ((v23 + v22) | v7) + ((v23 + v22) | 0xC8A9F78764AE9C15)) ^ 0x2D2946FAE86B7944 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__((v7 - ((v23 + v22) | v7) + ((v23 + v22) | 0xC8A9F78764AE9C15)) ^ 0x2D2946FAE86B7944, 8) + v24) ^ v16;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a5;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ a1;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ a4;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  LOBYTE(v32) = v11 + ((((((2 * (v33 + v32)) & 0x63B995B2E3EB4F2) - (v33 + v32) - 0x31DCCAD971F5A7ALL) ^ 0x8913863C690D0FDuLL) >> (v10 & 0x38)) ^ *(v9 + a6));
  *(*(v17 + 3768) + (v12 & 0x7F)) = (((2 * v32) | 8) - ((4 * v32) & 0xCF) - 25) ^ 0x30;
  v34 = *(STACK[0x57D8] + 8 * ((481 * (a6 == 15)) ^ v8));
  *(v17 + 3788) = v6;
  return v34();
}

uint64_t sub_10034AE74()
{
  v1 = STACK[0x51B8];
  v2 = (STACK[0x51B8] - 1843886126) ^ 0xC;
  v3 = 1534937323 * ((v0 - 240) ^ 0xCD7888C2C6EEFB47);
  STACK[0x1D4C0] = STACK[0x6E70] ^ v3;
  LODWORD(STACK[0x1D4CC]) = v3 + 1451493860 + v1;
  LODWORD(STACK[0x1D4E0]) = v2 + v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4C8]) = v1 - 1843886126 - v3 + 3456;
  LODWORD(STACK[0x1D4D4]) = (v1 - 1843886126) ^ v3;
  STACK[0x1D4D8] = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2462)))(v0 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_10034AF24()
{
  *v1 = -769884012;
  *(v0 + 24) = 0xD38CBDD3ACAFF84ALL;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = -769884012;
  *(v0 + 52) = -769884012;
  *(v0 + 56) = 0;
  *(v0 + 64) = -769884012;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xD38CBDD3ACAFF84ALL;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = -769884012;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xD38CBDD3ACAFF84ALL;
  *(v0 + 152) = -769884012;
  *(v0 + 160) = 0x2F0471E20AD18A8CLL;
  *(v0 + 144) = 0;
  v3 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * ((v2 ^ 0x2F6) + v2)))();
}

uint64_t sub_10034B07C()
{
  STACK[0x57C0] = 0;
  v3 = STACK[0x8818];
  v4 = STACK[0x8238] + 16 * v0;
  STACK[0x7098] = *v4;
  v5 = *(v4 + 8);
  LODWORD(STACK[0x7944]) = v5;
  STACK[0x8278] = 0x1883660EE8144416;
  STACK[0x7810] = v3;
  *(v2 + 2348) = -2013569042;
  STACK[0x8000] = &STACK[0x8278];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = v5;
  return (*(STACK[0x57D8] + 8 * (v1 & 0x48263FE5)))();
}

uint64_t sub_10034B1B8(int a1)
{
  LODWORD(STACK[0x5C88]) = -769884012;
  LODWORD(STACK[0xC624]) = -769884012;
  LODWORD(STACK[0x5A4C]) = -769884012;
  LODWORD(STACK[0x7D74]) = -769884012;
  STACK[0x5800] = 0;
  STACK[0x9A88] = 0;
  STACK[0x7630] = 0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 76;
  return (*(STACK[0x57D8] + 8 * (v1 - 295)))();
}

uint64_t sub_10034B36C(uint64_t a1)
{
  LODWORD(STACK[0xE014]) = -143113071;
  v2 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 - 5614 + 3 * (v1 ^ 0x34A))))(a1, 16390, -22613, 22798, 4294961082, 186);
}

uint64_t sub_10034B568@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, int8x16_t a3@<Q3>, int8x16_t a4@<Q4>)
{
  v10 = ~v6 + v4;
  v11 = *(v9 + v10 - 15);
  v12 = *(v9 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a4)), a3);
  *(v13 - 31) = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a4)), a3);
  return (*(STACK[0x57D8] + 8 * (v8 | (32 * ((v7 ^ a1) + v6 == v5)))))();
}

uint64_t sub_10034B5CC()
{
  v1 = *(STACK[0x7510] - 0x683CBC57EAB92A3ELL);
  STACK[0xC3A0] = 0;
  LODWORD(STACK[0x940C]) = -769884012;
  STACK[0xBD10] = 0;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0x308E083E0C524CBELL) * (v0 ^ 0x58EB)) ^ (v0 + 5599))))();
}

uint64_t sub_10034B668()
{
  v2 = STACK[0x51C8];
  LODWORD(STACK[0x53B8]) = ((((v0 ^ ((v0 & STACK[0x51C0]) >> 1) ^ 0xA9C27999) & STACK[0x5550] | LODWORD(STACK[0x4DA8])) ^ 0xA9C27999) << LODWORD(STACK[0x5148])) | ((LODWORD(STACK[0x4DB8]) ^ 0xA ^ (v0 ^ ((v0 & STACK[0x51C0]) >> 1) ^ 0x49EECF0E) & v1) >> LODWORD(STACK[0x57A0]));
  v3 = STACK[0x57C0];
  v4 = STACK[0x51E0];
  v5 = STACK[0x5370];
  if (STACK[0x57C0])
  {
    v6 = STACK[0x51E0];
  }

  else
  {
    v6 = STACK[0x5370];
  }

  v7 = STACK[0x51D0];
  if (v3)
  {
    v4 = STACK[0x51D8];
  }

  else
  {
    v5 = STACK[0x51D0];
    v7 = STACK[0x51D8];
  }

  if ((v3 & 2) == 0)
  {
    v6 = v7;
  }

  LODWORD(STACK[0x51D8]) = v6;
  if ((v3 & 2) != 0)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  LODWORD(STACK[0x51D0]) = v8;
  if ((v3 & 2) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  LODWORD(STACK[0x51E0]) = v9;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_10034B940()
{
  v0 = STACK[0x51B8] - 2681;
  v1 = STACK[0x57D8];
  v2 = STACK[0x3AC0];
  STACK[0xCB60] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3AC0]));
  return (*(v1 + 8 * (v0 - 18013 + v2)))();
}

uint64_t sub_10034BCA8@<X0>(int a1@<W5>, int a2@<W8>)
{
  LODWORD(STACK[0x53C0]) = a1;
  LODWORD(STACK[0x5348]) = v3;
  v4 = STACK[0x57B0];
  if ((STACK[0x57C0] & 2) != 0)
  {
    v4 = STACK[0x57A0];
  }

  LODWORD(STACK[0x5580]) = v4;
  LODWORD(STACK[0x5570]) += a2;
  return (*(STACK[0x57D8] + 8 * (v2 + 20108)))();
}

uint64_t sub_10034BD78()
{
  v2 = (v0 - 9627) | 0x810;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 + 9207)))();
  *(v1 + 8) = 0;
  return (*(v3 + 8 * (v2 + 2469)))(v4);
}

uint64_t sub_10034BDBC@<X0>(int a1@<W1>, int a2@<W8>)
{
  STACK[0x57C0] = 0;
  STACK[0x7810] = v10;
  STACK[0x8000] = v11;
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = ((((v3 + ((a2 + 1069410014) & 0xFF7BEDFF) - 1830653257) & 0xFFFFFFF0 ^ a1) + v9) ^ (((v3 + ((a2 + 1069410014) & 0xFF7BEDFF) - 1830653257) & 0xFFFFFFF0 ^ v7) + v6) ^ ((v5 ^ (v3 + ((a2 + 1069410014) & 0xFF7BEDFF) - 1830653257) & 0xFFFFFFF0) + v8)) + v4;
  LODWORD(STACK[0xC0DC]) = v2;
  return (*(STACK[0x57D8] + 8 * a2))();
}

uint64_t sub_10034BF0C()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0x91F8];
  STACK[0xB628] = 0x1883660EE8144416;
  STACK[0x7810] = v1;
  STACK[0x8000] = &STACK[0xB628];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2101965968;
  LODWORD(STACK[0xC0DC]) = -2013569061;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10034BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v10 = v8 + 1345166825 < v9;
  if (v9 < a7 != (v8 + 1345166825) < 0x7B0FC2B5)
  {
    v10 = v9 < a7;
  }

  return (*(STACK[0x57D8] + 8 * ((2011 * v10) ^ v7)))();
}

uint64_t sub_10034C818()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + ((v0 + 5) | 0x1040) - 311)))();
}

uint64_t sub_10034C8D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x5388]) = a4;
  LODWORD(STACK[0x5630]) = 0;
  v5 = *STACK[0x51E8];
  v6 = *STACK[0x51F0];
  v7 = *(v6 + (v5 & STACK[0x4FE8]));
  v8 = (v7 + STACK[0x4FF8]) ^ 0xB88801D4E1C76353;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) | 0x9D29702C0A1C8A76) - (v10 + v9) + 0x316B47E9FAF1BAC5) ^ 0xF65C097CE20B2D4CLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = ((((v13 + v12) << (((v4 - 84) | 0x19) ^ 0x1Cu)) & 0xE9BDDDAB5F1CD640) - (v13 + v12) + 0xB21112A507194DFLL) ^ 0xEEA1A057DCB4718ELL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v16 + v15 - ((2 * (v16 + v15)) & 0xC8C3DC357EEFF59ELL) - 0x1B9E11E540880531) ^ 0x5C013416E2203B5;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0xA990F75CD409823 - ((v19 + v18) | 0xA990F75CD409823) + ((v19 + v18) | 0xF566F08A32BF67DCLL)) ^ 0x2F06BB86311DD845;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x321FCB36A8A0252ALL) - (v22 + v21) + 0x66F01A64ABAFED6BLL) ^ 0x633A07569F6E2352;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = STACK[0x5000];
  v26 = (__ROR8__(v23, 8) + v24) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5760]) = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v24, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4FF0]) ^ *(STACK[0x5000] + 1);
  LODWORD(STACK[0x57B0]) = v4;
  v27 = *(v6 + (v5 & STACK[0x4F70]));
  v28 = (v27 + STACK[0x4F68] - ((2 * (v27 + STACK[0x4F68])) & 0x8571AC16F4B6209ALL) + 0x42B8D60B7A5B104DLL) ^ 0xFA30D7DF9B9C731ELL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x38C8B16AE7056877;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (0x2952FEE84A52F45ELL - ((v32 + v31) | 0x2952FEE84A52F45ELL) + ((v32 + v31) | 0xD6AD0117B5AD0BA1)) ^ 0x332DB06A3968EEF0;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (0x2B05F22EC915D75DLL - ((v35 + v34) | 0x2B05F22EC915D75DLL) + ((v35 + v34) | 0xD4FA0DD136EA28A2)) ^ 0x355BF08AE7BFD1D8;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xDA604B0C03A2BF99;
  v39 = __ROR8__(v38, 8);
  v40 = v38 ^ __ROR8__(v37, 61);
  v41 = (0x7062D14345ECF4DCLL - ((v39 + v40) | 0x7062D14345ECF4DCLL) + ((v39 + v40) | 0x8F9D2EBCBA130B23)) ^ 0x75A8CC71712D3AE4;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5750]) = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4F60]) ^ *(v25 + 11);
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x57B0])))();
}

uint64_t sub_10034E350()
{
  v2 = *(STACK[0x57D8] + 8 * ((15430 * ((v1 | 0x20811400) != 300219888)) ^ ((v1 | 0x20811400) - 631352210)));
  STACK[0x5660] = ((4 * (v1 | 0x20811400)) ^ 0x10480) & v0;
  LODWORD(STACK[0x5650]) = ((4 * (v1 | 0x20811400)) ^ 0x9686D47C) - 7821;
  return v2();
}

uint64_t sub_10034E554()
{
  v1 = STACK[0x51B8] - 5009;
  v2 = STACK[0x51B8] - 13972;
  STACK[0x9B38] = 4;
  v3 = STACK[0x57D8];
  if ((*(STACK[0x57D8] + 8 * (v1 + 14284)))(*v0, 1, 0, 0, &STACK[0xA194], &STACK[0x9B38]))
  {
    v4 = 0;
  }

  else
  {
    v4 = STACK[0x9B38] == 4;
  }

  v5 = v4;
  return (*(v3 + 8 * ((v5 * (v2 ^ 0x21E1)) ^ v1)))();
}

uint64_t sub_10034E5E4()
{
  v1 = STACK[0x25F0];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 24322)))(((v1 - 6613) ^ 0x82B688E3) + LODWORD(STACK[0x9E3C]));
  STACK[0x6F00] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (v0 - 22557)) ^ v1)))();
}

uint64_t sub_10034E658()
{
  STACK[0xC0E8] = v1;
  STACK[0x79F8] = &STACK[0xB120];
  STACK[0x5D08] = 0;
  STACK[0x9230] = &STACK[0x6408];
  LODWORD(STACK[0x96B0]) = 1334554960;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10034E784()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  *(v1 + 104) = 0;
  return (*(v2 + 8 * (v0 - 464)))(v3);
}

uint64_t sub_10034E838()
{
  v0 = (STACK[0x51B8] - 2125) | 0x140;
  v1 = STACK[0x51B8] - 19734;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 + v0 - 18609)))();
}

uint64_t sub_10034E898()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xB228];
  LODWORD(STACK[0x9094]) = -32197392;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10034E970@<X0>(int a1@<W8>)
{
  STACK[0xC4A8] = STACK[0x5CD8];
  STACK[0x6390] = 0;
  LODWORD(STACK[0x70A8]) = 2101965948;
  STACK[0xB018] = 0;
  STACK[0xCBC0] = &STACK[0xB018];
  LODWORD(STACK[0x94E4]) = -65547328;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10034E9EC()
{
  STACK[0xC0E8] = v1;
  STACK[0x79F8] = &STACK[0x6A48];
  STACK[0x5D08] = &STACK[0x61E0];
  STACK[0x9230] = &STACK[0xBB80];
  LODWORD(STACK[0x96B0]) = 1334554967;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10034EAA4()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x5A4C];
  LODWORD(STACK[0x9094]) = -32197434;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10034EC30()
{
  v1 = v0 - 4328;
  if (*STACK[0x7BC8])
  {
    v2 = -1512672354;
  }

  else
  {
    v2 = 1334002480;
  }

  LODWORD(STACK[0x74C8]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10034ED14()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 5060)))(v2);
}

uint64_t sub_10034ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v8 = v6 - 348933584;
  v9 = (a6 < v7) ^ (v8 < 0x27383342);
  v10 = v8 < a6;
  if (v9)
  {
    v10 = a6 < v7;
  }

  return (*(STACK[0x57D8] + 8 * ((109 * !v10) ^ a5)))();
}

uint64_t sub_10034F6D0@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, int a6@<W6>, unsigned int a7@<W7>, unsigned int a8@<W8>)
{
  v22 = STACK[0x4FC0] + a8;
  v23 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & (a6 + v11 + (v22 & 0xFFFFFFF8))) & 0xFFFFFFFFFFFFFFF8));
  v24 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = __ROR8__((v18 - ((v24 + v23) | v18) + ((v24 + v23) | a3)) ^ v16, 8);
  v26 = (v18 - ((v24 + v23) | v18) + ((v24 + v23) | a3)) ^ v16 ^ __ROR8__(v23, 61);
  v27 = ((v21 | (2 * (v25 + v26))) - (v25 + v26) + a5) ^ v9;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v19 - ((v29 + v28) | v19) + ((v29 + v28) | v8)) ^ v12;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xE1A1FD5BD155F97ALL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xDA604B0C03A2BF99;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((v17 - ((v36 + v35) | v17) + ((v36 + v35) | v14)) ^ a4, 8);
  v38 = (v17 - ((v36 + v35) | v17) + ((v36 + v35) | v14)) ^ a4 ^ __ROR8__(v35, 61);
  v39 = (((__ROR8__((v37 + v38) ^ 0xD2F00CE620E5D3AELL, 8) + ((v37 + v38) ^ 0xD2F00CE620E5D3AELL ^ __ROR8__(v38, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v22 & 7u))) ^ *(v13 + a8);
  v40 = LODWORD(STACK[0x5420]) > v10;
  *v22 = v39;
  if (v40 != v15 < v20)
  {
    v41 = v40;
  }

  else
  {
    v41 = a7 > v15;
  }

  return (*(STACK[0x57D8] + 8 * ((!v41 * a2) ^ a1)))();
}

uint64_t sub_10034F92C(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 46;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_10034FAF0()
{
  LODWORD(STACK[0x798C]) = 1978581539;
  STACK[0xAA48] = 4;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9152)))(&STACK[0x1D1CD], &STACK[0x6DAC], &STACK[0xAA48], 0, 0);
  v4 = 551690071 * ((~(v1 - 240) & 0x5F8FAD5410E70E4FLL | (v1 - 240) & 0xA07052ABEF18F1B0) ^ 0x2E12FF9A5E0A5D18);
  LODWORD(STACK[0x1D4C8]) = v0 + 1258523545 - v4 + 2735;
  LODWORD(STACK[0x1D4CC]) = v0 + 1258523545 - v4 + 2827;
  LODWORD(STACK[0x1D4D0]) = v4;
  STACK[0x1D4D8] = -551690071 * ((~(v1 - 240) & 0x5F8FAD5410E70E4FLL | (v1 - 240) & 0xA07052ABEF18F1B0) ^ 0x2E12FF9A5E0A5D18);
  STACK[0x1D4E0] = v4 + v3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v4;
  LODWORD(STACK[0x1D4C4]) = (v0 + 1258522999) ^ v4;
  v5 = (*(v2 + 8 * (v0 + 9201)))(v1 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_10034FC60()
{
  LODWORD(STACK[0x5630]) = 0;
  LODWORD(STACK[0x5760]) = v0;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5760])))();
}

uint64_t sub_10034FF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v17 = v9 + a7 + 8;
  v18 = __ROR8__(v17 & (((v8 - 12003) | 0x5802) ^ 0xFFFFFFFFFFFFA7AELL), 8);
  v19 = (0x7659A219E1678C7 - v18) & 0x566A5ACDCECC164 | (v18 + v11) & 0xF8995A5323133E9BLL;
  v20 = __ROR8__(v19 ^ 0xAA2281D6FCA043F8, 8);
  v19 ^= 0x6EF1AF25F3EC7A3CuLL;
  v21 = (((2 * (v20 + v19)) | 0x2FAC20A477253944) - (v20 + v19) + 0x6829EFADC46D635ELL) ^ 0xE1AAAF40F51530DFLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xBD6CE439E669F3DFLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (0xF4B4B19D65F72024 - ((v25 + v24) | 0xF4B4B19D65F72024) + ((v25 + v24) | 0xB4B4E629A08DFDBLL)) ^ 0x115702FB3CBB094BLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = *(*v15 + ((*v16 & (((a1 + v9) & 0xFFFFFFF8) + a4)) & 0xFFFFFFFFFFFFFFF8));
  v30 = (__ROR8__((a1 + v9) & 0xFFFFFFFFFFFFFFF8, 8) + v29) ^ a2;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a5;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (0x465361B1B7836F56 - ((v28 + v27) | 0x465361B1B7836F56) + ((v28 + v27) | 0xB9AC9E4E487C90A9)) ^ 0xE143328580ABF6F2;
  v35 = (__ROR8__(v32, 8) + v33) ^ a6;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = v34 ^ __ROR8__(v27, 61);
  v38 = __ROR8__(v35, 8) + v36;
  v39 = (__ROR8__(v34, 8) + v37) ^ a3;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v10;
  v42 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61));
  v43 = (v38 - ((2 * v38) & 0xA19EFEAB68E7D08) + 0x50CF7F55B473E84) ^ 0xE0A3ED4675FA0259;
  v44 = v43 ^ __ROR8__(v36, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v14;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v12;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v42 ^ 0x9C8651A6C7A7E5AuLL) >> (8 * (v17 & 7u));
  v51 = (((v49 + v48) ^ 0x39A6968350CDD3A6) - ((2 * ((v49 + v48) ^ 0x39A6968350CDD3A6)) & 0x3DC9C7A34DED70BELL) + 0x1EE4E3D1A6F6B85FLL) ^ 0x78CF996C55A361E2;
  *(a1 + v9) = v50 ^ (((__ROR8__(v51, 8) + (v51 ^ __ROR8__(v48, 61))) ^ v13) >> (8 * ((a1 + v9) & 7))) ^ *(v9 + a7 + 8);
  return (*(STACK[0x57D8] + 8 * ((101 * (((v9 + 1) ^ v7) == 3232888750)) ^ v8)))();
}

uint64_t sub_1003502BC@<X0>(char a1@<W1>, int a2@<W3>, uint64_t a3@<X4>, char a4@<W5>, uint64_t a5@<X7>, int a6@<W8>)
{
  v9 = *(v6 + (((((a2 ^ 0x4B35DA40) - ((a2 << ((31 * (v7 ^ 0x14) - 103) ^ 0x57)) & 0x966BB480 ^ 0x966BB482)) & 0xFFFFFFF8) + 1158177752) & a6));
  v10 = (v9 + a3) ^ a5;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * ((v12 + v11) ^ 0xCC736BA7DD99C6CALL)) | 0x6FBA9BEA0DFF3B76) - ((v12 + v11) ^ 0xCC736BA7DD99C6CALL) - 0x37DD4DF506FF9DBBLL) ^ 0xEE9C64BCE7963138;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x2275D4C73835399BLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE5AF1AB32EBD3CDDLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0x1A47D90CD4138BAALL) - 0x72DC137995F63A2BLL) ^ 0x4AFE2570A64C72F4;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xA82620A559D2DA78;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (((2 * ((v23 + v24) ^ 0x1C25BD10223D1CBELL)) | 0xDBDC90569E9ADCA8) - ((v23 + v24) ^ 0x1C25BD10223D1CBELL) + 0x1211B7D4B0B291ACLL) ^ 0xAE461905CEE878F1;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  LOBYTE(v26) = (((((2 * (v27 + v26)) | 0x1606FFE8D2DD6CALL) - (v27 + v26) - 0xB037FF4696EB65) ^ 0xC173FF2DE253A34DLL) >> a4) ^ a1;
  LODWORD(v26) = ((((v26 ^ 0x42) + 22) ^ ((v26 ^ 0xC4) - 108) ^ ((v26 ^ 0x86) - 46)) - *(v8 + 2895)) != 19;
  return (*(STACK[0x57D8] + 8 * (((2 * v26) | (8 * v26)) ^ v7)))();
}

uint64_t sub_1003505D8()
{
  v0 = (STACK[0x51B8] - 20549) | 0x3000;
  v1 = STACK[0x51B8] - 19342;
  STACK[0xC310] = STACK[0xB8E8] + 8;
  return (*(STACK[0x57D8] + 8 * (v1 - 12297 + v0)))();
}

uint64_t sub_100350678()
{
  STACK[0x57C0] = 0;
  v1 = v0 ^ 0xC77472E8;
  v2 = ((((LODWORD(STACK[0x5D00]) ^ 0x9C479B51) + 1673028783) ^ ((LODWORD(STACK[0x5D00]) ^ 0xFB67C819) + 77084647) ^ ((LODWORD(STACK[0x5D00]) ^ 0xB53CD3DC) + 1254304804)) - 769883981) & (((v0 ^ 0xC77472E8) - 806086865) ^ 0xFFFFB258);
  v3 = STACK[0xBC78];
  STACK[0xA228] = 0x1883660EE8144416;
  STACK[0x7810] = v3;
  LODWORD(STACK[0xC0DC]) = -2013569067;
  STACK[0x8000] = &STACK[0xA228];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v2 ^ 0xC5271652) + 876349080) ^ ((v2 ^ 0x48B36AAF) - 1180140949) ^ ((v2 ^ 0x8D947CFD) + 2089774137)) - 1943116874;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x300C2738 ^ (13279 * (v1 > 0x982229CD)))))();
}

uint64_t sub_1003509F4()
{
  STACK[0x5EA8] = v0;
  LODWORD(STACK[0xB75C]) = -2005731662;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x924])))();
}

uint64_t sub_100350ADC@<X0>(int a1@<W8>)
{
  STACK[0x92D8] = 0;
  LODWORD(STACK[0xC64C]) = -769884012;
  return (*(STACK[0x57D8] + 8 * (((v1 - 0x2C73422C535007B6 - ((((a1 - 26981) | 0x5010u) - 0x58E68458A6A067C2) & (2 * v1)) == 0xD38CBDD3ACAFF84ALL) * (((a1 + 307650100) & 0xEDA933F1) - 973)) | a1)))();
}

uint64_t sub_100350C20@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v5 = (a1 + 3101) | 0xF20;
  v6 = (LODWORD(STACK[0x56D0]) << 24) | (LODWORD(STACK[0x5680]) << 16) | LODWORD(STACK[0x5660]);
  v7 = ((LODWORD(STACK[0x5700]) | (LODWORD(STACK[0x5720]) << 16)) + LODWORD(STACK[0x56F0]) + LODWORD(STACK[0x56C0])) ^ 0x9DA2DE6F;
  v8 = v4 + (LODWORD(STACK[0x5710]) | (LODWORD(STACK[0x5730]) << 16));
  LODWORD(STACK[0x57B0]) = v5;
  v9 = (v5 ^ 0x6FDEu) & (v7 >> 8);
  v10 = v8 ^ v3;
  v11 = STACK[0x55F0];
  v12 = *(STACK[0x55F0] + v9);
  v13 = *(STACK[0x55F0] + (v8 ^ v3));
  v14 = (a1 - 1009324095) ^ (v6 + LODWORD(STACK[0x5740]));
  v15 = *(STACK[0x55F0] + BYTE1(v2));
  v16 = *(STACK[0x55F0] + BYTE2(v7));
  v17 = *(STACK[0x55F0] + BYTE2(v2));
  v18 = *(STACK[0x55F0] + BYTE1(v10));
  v19 = *(STACK[0x55F0] + (v2 >> 24));
  v20 = *(STACK[0x55F0] + v2);
  v21 = *(STACK[0x55F0] + (v10 >> 24));
  v22 = *(STACK[0x55F0] + BYTE2(v10));
  v23 = *(STACK[0x55F0] + (v7 >> 24));
  v24 = *(STACK[0x55F0] + v7);
  v25 = *(&off_101353600 + a1 - 20755) - 4;
  LODWORD(v7) = (*&v25[8 * (v12 ^ 0x91)] >> 16) ^ (*&v25[8 * (v13 ^ 0x91)] >> 8) ^ (*&v25[8 * (*(STACK[0x55F0] + BYTE1(v14)) ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v15 ^ 0x91));
  v26 = (*&v25[8 * (*(STACK[0x55F0] + (v14 >> 24)) ^ 0x91)] >> 8) ^ 0xCF4FFCFCF8F0D7 ^ (*&v25[8 * (v19 ^ 0x91)] >> 16) ^ (*&v25[8 * (v22 ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v23 ^ 0x91));
  v27 = (*&v25[8 * (*(STACK[0x55F0] + BYTE2(v14)) ^ 0x91)] >> 16) ^ (*&v25[8 * (v16 ^ 0x91)] >> 8) ^ (*&v25[8 * (v17 ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v18 ^ 0x91)) ^ 0x524CC16C;
  v28 = v7 ^ 0xB4370637;
  v29 = (*&v25[8 * (v21 ^ 0x91)] >> 24) ^ (*&v25[8 * (v20 ^ 0x91)] >> 16) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v24 ^ 0x91)) ^ 0xA72C778A ^ (*&v25[8 * (*(STACK[0x55F0] + v14) ^ 0x91)] >> 8);
  v30 = *(STACK[0x55F0] + (v26 ^ 0x9Bu));
  v31 = *(STACK[0x55F0] + BYTE2(v29));
  v32 = *(STACK[0x55F0] + (v29 >> 24));
  v33 = *(STACK[0x55F0] + (v28 >> 24));
  v34 = *(STACK[0x55F0] + v28);
  v35 = *(STACK[0x55F0] + v29);
  v36 = *(STACK[0x55F0] + BYTE1(v29));
  v37 = *(STACK[0x55F0] + BYTE1(v28));
  v38 = *&v25[8 * (*(STACK[0x55F0] + BYTE2(v28)) ^ 0x91)];
  LODWORD(v34) = (*&v25[8 * (v35 ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v34 ^ 0x91)) ^ (*&v25[8 * (*(STACK[0x55F0] + (v27 >> 24)) ^ 0x91)] >> 8);
  LODWORD(v21) = *(*(&off_101353600 + a1 - 20755) + 2 * (v37 ^ 0x91)) ^ (*&v25[8 * (v36 ^ 0x91)] >> 24) ^ (*&v25[8 * (*(STACK[0x55F0] + v27) ^ 0x91)] >> 8);
  v39 = *(*(&off_101353600 + a1 - 20755) + 2 * (v31 ^ 0x91)) ^ (*&v25[8 * (*(STACK[0x55F0] + BYTE1(v27)) ^ 0x91)] >> 16) ^ ((((2 * v38) & 0x81D450511CLL ^ 0xFE6BEFFEF3) + 0x41B5B0BD55 + (((v38 ^ 0xFAA2509F13BAF560) + 0x55DAF60EC450AA0) ^ ((v38 ^ 0xBF7E9AF8227F11D7) + 0x40816507DD80EE29) ^ ((v38 ^ 0x67FA4D7071) + 0x75A3869805B28F8FLL))) >> 8) ^ 0x6FF432C9 ^ (((*&v25[8 * (v30 ^ 0x91)] & 0x40000000000 | 0xE39840EA000000) ^ *&v25[8 * (v30 ^ 0x91)] & 0xFFFBFFFF000000uLL) >> 24);
  LODWORD(v24) = *(*(&off_101353600 + a1 - 20755) + 2 * (*(STACK[0x55F0] + BYTE2(v27)) ^ 0x91)) ^ (*&v25[8 * (v32 ^ 0x91)] >> 16) ^ (*&v25[8 * (v33 ^ 0x91)] >> 24) ^ 0xF3A14E7C;
  v40 = *(STACK[0x55F0] + BYTE2(v39));
  v41 = (*&v25[8 * (*(STACK[0x55F0] + ((v26 ^ 0x459B) >> 8)) ^ 0x91)] >> 8) ^ v24;
  v42 = v34 ^ 0x40624095 ^ (*&v25[8 * (*(STACK[0x55F0] + ((v26 ^ 0xA258459B) >> 16)) ^ 0x91)] >> 16);
  v43 = v21 ^ 0xB9656331 ^ (*&v25[8 * (*(STACK[0x55F0] + (BYTE3(v26) ^ 0xA2)) ^ 0x91)] >> 16);
  v44 = *(STACK[0x55F0] + BYTE1(v43));
  v45 = *(STACK[0x55F0] + v39);
  v46 = *(STACK[0x55F0] + (v41 >> 24));
  LODWORD(v31) = *(STACK[0x55F0] + (v39 >> 24));
  v47 = *(STACK[0x55F0] + BYTE2(v43));
  v48 = *(STACK[0x55F0] + (v43 >> 24));
  v49 = *(STACK[0x55F0] + v43);
  v50 = *(STACK[0x55F0] + BYTE1(v39));
  v51 = *(STACK[0x55F0] + v41);
  v52 = *&v25[8 * (v40 ^ 0x91)];
  LODWORD(v40) = *(*(&off_101353600 + a1 - 20755) + 2 * (*(v11 + BYTE2(v41)) ^ 0x91)) ^ (*&v25[8 * (*(v11 + (v42 >> 24)) ^ 0x91)] >> 8) ^ (*&v25[8 * (v44 ^ 0x91)] >> 16);
  LODWORD(v41) = *(STACK[0x55F0] + BYTE1(v41)) ^ 0xE5;
  LODWORD(v50) = (*&v25[8 * (v50 ^ 0x91)] >> 16) ^ (*&v25[8 * (v49 ^ 0x91)] >> 8) ^ (*&v25[8 * (v41 - ((2 * v41) & 0xE8)) + 928] >> 24);
  v53 = (*&v25[8 * (v48 ^ 0x91)] >> 16) ^ (*&v25[8 * (*(STACK[0x55F0] + BYTE1(v42)) ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v51 ^ 0x91)) ^ 0xD5E66DD5 ^ (*&v25[8 * (v45 ^ 0x91)] >> 24);
  v54 = v40 ^ 0xE1B91EBB ^ (v52 >> 24);
  v55 = (*&v25[8 * (*(STACK[0x55F0] + v42) ^ 0x91)] >> 24) ^ (*&v25[8 * (v46 ^ 0x91)] >> 16) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v47 ^ 0x91)) ^ 0x3B9DFC17 ^ (*&v25[8 * ((v31 ^ 0xE5) - ((2 * (v31 ^ 0xE5)) & 0xE8)) + 928] >> 8);
  v56 = *(a2 + (v40 ^ 0xBBu ^ BYTE3(v52)));
  v57 = *(a2 + (((*&v25[8 * (*(STACK[0x55F0] + v42) ^ 0x91)] >> 24) ^ WORD1(*&v25[8 * (v46 ^ 0x91)]) ^ *(*(&off_101353600 + a1 - 20755) + 4 * (v47 ^ 0x91)) ^ 0xFC17 ^ (*&v25[8 * ((v31 ^ 0xE5) - ((2 * (v31 ^ 0xE5)) & 0xE8)) + 928] >> 8)) >> 8));
  v58 = *(a2 + (BYTE3(*&v25[8 * (*(STACK[0x55F0] + v42) ^ 0x91)]) ^ BYTE2(*&v25[8 * (v46 ^ 0x91)]) ^ *(*(&off_101353600 + a1 - 20755) + 8 * (v47 ^ 0x91)) ^ 0x17 ^ BYTE1(*&v25[8 * ((v31 ^ 0xE5) - ((2 * (v31 ^ 0xE5)) & 0xE8)) + 928])));
  v59 = v50 ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(STACK[0x55F0] + BYTE2(v42)) ^ 0x91)) ^ 0x9AC9CD2D;
  v60 = *(a2 + (v50 ^ *(*(&off_101353600 + a1 - 20755) + 8 * (*(STACK[0x55F0] + BYTE2(v42)) ^ 0x91)) ^ 0x2D));
  v61 = v55 >> 24;
  v62 = (*&v25[8 * (v58 ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v56 ^ 0x91)) ^ (*&v25[8 * (*(a2 + v53) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + (v59 >> 24)) ^ 0x91)] >> 24) ^ 0xF67229C0;
  v63 = *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + BYTE1(v59)) ^ 0x91)) ^ (*&v25[8 * (*(a2 + BYTE2(v53)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + BYTE2(v54)) ^ 0x91)] >> 8) ^ 0x393BE632 ^ (*&v25[8 * (*(a2 + BYTE2(v55)) ^ 0x91)] >> 16);
  v64 = (*&v25[8 * (*(a2 + BYTE1(v53)) ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v60 ^ 0x91)) ^ (*&v25[8 * (*(a2 + BYTE1(v54)) ^ 0x91)] >> 8) ^ (*&v25[8 * (v57 ^ 0x91)] >> 16) ^ 0x75C8557E;
  v65 = *(a2 + (BYTE3(*&v25[8 * (*(a2 + BYTE1(v53)) ^ 0x91)]) ^ *(*(&off_101353600 + a1 - 20755) + 8 * (v60 ^ 0x91)) ^ BYTE1(*&v25[8 * (*(a2 + BYTE1(v54)) ^ 0x91)]) ^ BYTE2(*&v25[8 * (v57 ^ 0x91)]) ^ 0x7E));
  v66 = (*&v25[8 * (*(a2 + (v54 >> 24)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + BYTE2(v59)) ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + (v53 >> 24)) ^ 0x91)) ^ (*&v25[8 * (*(a2 + v61) ^ 0x91)] >> 24) ^ 0x24526B2F;
  v67 = *(a2 + v63);
  v68 = *(a2 + v62);
  v69 = *(a2 + (v63 >> 24));
  v70 = *(a2 + v66);
  v71 = *(a2 + BYTE1(v62));
  v72 = *(a2 + BYTE1(v64));
  v73 = *(a2 + BYTE1(v63));
  v74 = *(a2 + BYTE2(v62));
  v75 = __ROR8__(__ROR8__(*&v25[8 * (*(a2 + BYTE2(v63)) ^ 0x91)] ^ 0x2B4021A00000, 21) ^ 0x1000000004B074A3, 43);
  LODWORD(v65) = (*&v25[8 * (v65 ^ 0x91)] >> 8) ^ *&v25[8 * (*(a2 + (v62 >> 24)) ^ 0x91) + 4] ^ (*&v25[8 * (*(a2 + (v66 >> 24)) ^ 0x91)] >> 24);
  v76 = v72 ^ 0xE5 ^ -(v72 ^ 0xE5) ^ (0x17E31C529186F66CLL - (v72 ^ 0x17E31C529186F689));
  v77 = (*&v25[8 * (v72 ^ 0x91)] ^ (v76 - ((2 * v76 + 0x38A5230DECD8) & 0x66019711298CuLL) - 0x307F30ACA2F074CELL)) >> 16;
  LODWORD(v71) = (*&v25[8 * (*(a2 + BYTE1(v66)) ^ 0x91)] >> 24) ^ (*&v25[8 * (v67 ^ 0x91)] >> 16) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v71 ^ 0x91));
  v78 = *&v25[8 * (*(a2 + BYTE2(v66)) ^ 0x91)];
  v79 = *&v25[8 * (v74 ^ 0x91)];
  v80 = *&v25[8 * (*(a2 + BYTE2(v64)) ^ 0x91)] >> 8;
  v81 = (*&v25[8 * (v69 ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v70 ^ 0x91)) ^ (*&v25[8 * (v68 ^ 0x91)] >> 8) ^ 0x31CB73C4 ^ v77;
  LODWORD(v68) = v65 ^ LODWORD(STACK[0x2BA4]);
  v82 = v68 ^ (v75 >> 16);
  v83 = *(a2 + v81);
  v84 = (v78 >> 16) ^ 0xCF4FFCFCF8F0D7 ^ (v79 >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + (v64 >> 24)) ^ 0x91)) ^ (*&v25[8 * (v73 ^ 0x91)] >> 8);
  v85 = v71 ^ v80 ^ 0x49FA0F50;
  v86 = v84 ^ 0x3C12E96D;
  LODWORD(v77) = (((v83 ^ 0x17E31C529186F689 ^ -(v83 ^ 0x17E31C529186F689) ^ ((*&v25[8 * (v83 ^ 0x91)] ^ 0xCF80B300CB8894C6) - ((v83 - 0x307F4CFF34776B3ALL - ((2 * v83) & 0x18C)) ^ 0x17E31C529186F689 ^ *&v25[8 * (v83 ^ 0x91)]))) + (*&v25[8 * (v83 ^ 0x91)] ^ 0x80B300CB8894C6)) >> 24) ^ (*&v25[8 * (*(a2 + (v82 >> 24)) ^ 0x91)] >> 16) ^ 0xD48AF0CC;
  LODWORD(v78) = *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + (v85 >> 24)) ^ 0x91)) ^ 0xA4803712;
  LODWORD(v57) = v77 + v78 - 2 * (v77 & v78);
  v87 = ((*(a2 + BYTE1(v85)) ^ 0xE5) - 0x307F4CFF34776B3ALL - ((2 * (*(a2 + BYTE1(v85)) ^ 0xE5)) & 0x18C)) ^ 0x6B0084127BAEDEE2 ^ *&v25[8 * (*(a2 + BYTE1(v85)) ^ 0x91)];
  LODWORD(v64) = (*&v25[8 * (*(a2 + ((v68 ^ WORD1(v75)) >> 8)) ^ 0x91)] >> 16) ^ (v87 >> (v87 & 0x20) >> (v87 & 0x20 ^ 0x20)) ^ (*&v25[8 * (*(a2 + BYTE2(v81)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + (v84 ^ 0x6Du)) ^ 0x91)] >> 8);
  v88 = (*&v25[8 * (*(a2 + BYTE2(v86)) ^ 0x91)] >> 8) ^ 0x65E291E2 ^ v57;
  v89 = (*&v25[8 * (*(a2 + (v71 ^ v80 ^ 0x50)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + BYTE1(v81)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + (v68 ^ BYTE2(v75))) ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + (v86 >> 24)) ^ 0x91)) ^ LODWORD(STACK[0x55B0]);
  v90 = *(a2 + (((*&v25[8 * (*(a2 + BYTE2(v86)) ^ 0x91)] >> 8) ^ 0x91E2 ^ v57) >> 8));
  v91 = v64 ^ 0xC7EC15EA;
  v92 = *(a2 + BYTE1(v91));
  v93 = (*&v25[8 * (*(a2 + BYTE2(v82)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + (BYTE1(v84) ^ 0xE9)) ^ 0x91)] >> 16) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + (v81 >> 24)) ^ 0x91)) ^ (*&v25[8 * (*(a2 + BYTE2(v85)) ^ 0x91)] >> 8) ^ 0xC2AD1FBB;
  v94 = *(a2 + BYTE1(v89));
  v95 = *(a2 + BYTE2(v93));
  v96 = *(a2 + v89);
  v97 = *(a2 + (v93 >> 24));
  v98 = *(a2 + BYTE2(v88));
  v99 = *(a2 + BYTE2(v91));
  v100 = *(a2 + v93);
  v101 = *(a2 + (v91 >> 24));
  v102 = *(a2 + BYTE2(v89));
  v103 = v89 >> 24;
  v104 = *(a2 + BYTE1(v93));
  v105 = *(a2 + v91);
  v106 = *(a2 + (v88 >> 24));
  v107 = *(a2 + v103);
  v108 = *(a2 + v88);
  v109 = *&v25[8 * (v90 ^ 0x91)] >> 8;
  LODWORD(v90) = (*&v25[8 * (v96 ^ 0x91)] >> 16) ^ (*&v25[8 * (v92 ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v95 ^ 0x91));
  LODWORD(v102) = (*&v25[8 * (v100 ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v101 ^ 0x91)) ^ (*&v25[8 * (v102 ^ 0x91)] >> 24);
  LODWORD(v107) = (*&v25[8 * (v104 ^ 0x91)] >> 24) ^ (*&v25[8 * (v107 ^ 0x91)] >> 8);
  v110 = *(*(&off_101353600 + a1 - 20755) + 2 * (v99 ^ 0x91)) ^ (*&v25[8 * (v94 ^ 0x91)] >> 24) ^ (*&v25[8 * (v97 ^ 0x91)] >> 8) ^ 0xAD92812D ^ (*&v25[8 * (v98 ^ 0x91)] >> 16);
  v111 = *(a2 + (v110 >> 24));
  v112 = v90 ^ 0xC6AC0112 ^ v109;
  v113 = v102 ^ 0xCAB729FA ^ (*&v25[8 * (v106 ^ 0x91)] >> 16);
  v114 = *(a2 + ((v102 ^ 0x29FA ^ WORD1(*&v25[8 * (v106 ^ 0x91)])) >> 8));
  v115 = *(*(&off_101353600 + a1 - 20755) + 2 * (v108 ^ 0x91)) ^ v107 ^ (*&v25[8 * (v105 ^ 0x91)] >> 16) ^ 0x5BD38D33;
  v116 = *(a2 + ((*(*(&off_101353600 + a1 - 20755) + 4 * (v108 ^ 0x91)) ^ v107 ^ WORD1(*&v25[8 * (v105 ^ 0x91)]) ^ 0x8D33) >> 8));
  v117 = *(a2 + v110);
  v118 = *(a2 + BYTE2(v113));
  v119 = *(a2 + (v112 >> 24));
  v120 = *(a2 + v112);
  v121 = *(a2 + BYTE1(v110));
  v122 = *(a2 + BYTE2(v110));
  v123 = *(a2 + BYTE1(v112));
  v124 = *&v25[8 * (*(a2 + BYTE2(v112)) ^ 0x91)];
  v125 = *(a2 + v113);
  LODWORD(v111) = (*&v25[8 * (v111 ^ 0x91)] >> 16) ^ (v124 >> 8) ^ (*&v25[8 * (v114 ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v116 ^ 0x91));
  LODWORD(v121) = (*&v25[8 * (*(a2 + (v115 >> 24)) ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + (v113 >> 24)) ^ 0x91)) ^ (*&v25[8 * (v120 ^ 0x91)] >> 16) ^ (*&v25[8 * (v121 ^ 0x91)] >> 24);
  LODWORD(v122) = (*&v25[8 * (v123 ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + v115) ^ 0x91)] >> 16) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v122 ^ 0x91)) ^ (*&v25[8 * (v125 ^ 0x91)] >> 8);
  v126 = v111 ^ 0x55EC85F8;
  v127 = *(*(&off_101353600 + a1 - 20755) + 2 * (v118 ^ 0x91)) ^ (*&v25[8 * (v117 ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + BYTE2(v115)) ^ 0x91)] >> 8) ^ (*&v25[8 * (v119 ^ 0x91)] >> 16) ^ 0x3F60D19B;
  v128 = v122 ^ 0x1333C7C3;
  v129 = v121 ^ 0x6D9DF8AA;
  v130 = *(a2 + BYTE2(v128));
  v131 = *(a2 + ((v129 >> (v125 & 8 ^ 8)) >> (v125 & 8)));
  v132 = *(a2 + (*(*(&off_101353600 + a1 - 20755) + 8 * (v118 ^ 0x91)) ^ BYTE3(*&v25[8 * (v117 ^ 0x91)]) ^ (BYTE1(*&v25[8 * (*(a2 + BYTE2(v115)) ^ 0x91)]) ^ WORD1(*&v25[8 * (v119 ^ 0x91)])) ^ 0x9B));
  v133 = *(a2 + (v128 >> 24));
  v134 = *(a2 + BYTE1(v127));
  v135 = *(a2 + v128);
  v136 = *(a2 + BYTE1(v128));
  v137 = *(a2 + BYTE2(v127));
  LODWORD(v120) = *(*(&off_101353600 + a1 - 20755) + 2 * (((*(a2 + (v126 >> 24)) ^ 0xE5) - (*(a2 + (v126 >> 24)) ^ 0x91)) ^ 0xFFFFFFF8) + 2 * (*(a2 + (v126 >> 24)) ^ 0xE5));
  v138 = (*&v25[8 * (*(a2 + (v127 >> 24)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + BYTE2(v126)) ^ 0x91)] >> 16) ^ (*&v25[8 * (v130 ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v131 ^ 0x91)) ^ 0x17FBD28A;
  v139 = (*&v25[8 * (*(a2 + BYTE2(v129)) ^ 0x91)] >> 16) ^ (*&v25[8 * (v132 ^ 0x91)] >> 8) ^ (*&v25[8 * (v133 ^ 0x91)] >> 24) ^ 0x135004F0 ^ v120;
  v140 = *(*(&off_101353600 + a1 - 20755) + 2 * (v135 ^ 0x91)) ^ (*&v25[8 * (*(a2 + (v129 >> 24)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + (v111 ^ 0xF8u)) ^ 0x91)] >> 8) ^ (*&v25[8 * (v134 ^ 0x91)] >> 16) ^ 0x57F5976E;
  v141 = (*&v25[8 * (*(a2 + BYTE1(v126)) ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v136 ^ 0x91)) ^ (*&v25[8 * (v137 ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + v129) ^ 0x91)] >> 24) ^ 0x3B5B8410;
  v142 = *(a2 + ((WORD1(*&v25[8 * (*(a2 + BYTE2(v129)) ^ 0x91)]) ^ (*&v25[8 * (v132 ^ 0x91)] >> 8) ^ (*&v25[8 * (v133 ^ 0x91)] >> 24) ^ 0x4F0 ^ v120) >> 8));
  v143 = *(a2 + (v140 >> 24));
  v144 = *(a2 + BYTE2(v138));
  LODWORD(v111) = (*&v25[8 * (*(a2 + BYTE2(v141)) ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + v140) ^ 0x91)) ^ (*&v25[8 * (*(a2 + (v138 >> 24)) ^ 0x91)] >> 16);
  LODWORD(v137) = (*&v25[8 * (*(a2 + v138) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + (v141 >> 24)) ^ 0x91)] >> 8);
  v145 = (*&v25[8 * (v142 ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + BYTE1(v138)) ^ 0x91)) ^ (*&v25[8 * (*(a2 + BYTE2(v140)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + v141) ^ 0x91)] >> 24) ^ 0x33EA78E9;
  v146 = v111 ^ (*&v25[8 * (*(a2 + (v139 >> 24)) ^ 0x91)] >> 24) ^ 0xBD2AC814;
  v147 = (*&v25[8 * (v143 ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + BYTE1(v141)) ^ 0x91)) ^ (*&v25[8 * (*(a2 + BYTE2(v139)) ^ 0x91)] >> 16) ^ (*&v25[8 * (v144 ^ 0x91)] >> 8) ^ 0x12624A36;
  v148 = v137 ^ (*&v25[8 * (*(a2 + v139) ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + BYTE1(v140)) ^ 0x91)) ^ 0x85311F63;
  v149 = *(a2 + (BYTE3(*&v25[8 * (v143 ^ 0x91)]) ^ *(*(&off_101353600 + a1 - 20755) + 8 * (*(a2 + BYTE1(v141)) ^ 0x91)) ^ BYTE2(*&v25[8 * (*(a2 + BYTE2(v139)) ^ 0x91)]) ^ BYTE1(*&v25[8 * (v144 ^ 0x91)]) ^ 0x36));
  v150 = *(a2 + (v148 >> 24));
  v151 = *(a2 + BYTE1(v148));
  LODWORD(v117) = *(a2 + (v146 >> 24));
  v152 = *(a2 + v148);
  v153 = *(a2 + BYTE2(v147));
  v154 = *(a2 + BYTE2(v148));
  LODWORD(v148) = *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + BYTE2(v145)) ^ 0x91)) ^ (*&v25[8 * (*(a2 + (v147 >> 24)) ^ 0x91)] >> 8) ^ (*&v25[8 * (v154 ^ 0x91)] >> 24);
  v155 = (*&v25[8 * (*(a2 + BYTE2(v146)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + BYTE1(v147)) ^ 0x91)] >> 16) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v152 ^ 0x91)) ^ (*&v25[8 * (*(a2 + v145) ^ 0x91)] >> 8) ^ 0xB89DE320;
  v156 = (*&v25[8 * (v151 ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + BYTE1(v145)) ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (v153 ^ 0x91)) ^ (*&v25[8 * (((v117 ^ 0xE5) - (v117 ^ 0x91)) ^ 0xFFFFFFF8) + 8 * (v117 ^ 0xE5)] >> 8) ^ 0x94240234;
  v157 = (*&v25[8 * (v149 ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + (v145 >> 24)) ^ 0x91)) ^ (*&v25[8 * (*(a2 + BYTE1(v146)) ^ 0x91)] >> 16) ^ (*&v25[8 * (v150 ^ 0x91)] >> 24) ^ 0xE3ADC9F;
  v158 = v148 ^ (*&v25[8 * (*(a2 + v146) ^ 0x91)] >> 16) ^ 0x48136CBF;
  LODWORD(v149) = *(a2 + BYTE1(v155));
  v159 = *(a2 + BYTE2(v155));
  v160 = v158 >> 24;
  LODWORD(v143) = (*&v25[8 * (*(a2 + v155) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + (v157 >> 24)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + BYTE1(v158)) ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + v156) ^ 0x91));
  LODWORD(v139) = (*&v25[8 * (*(a2 + BYTE1(v156)) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(a2 + BYTE2(v158)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + v157) ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (((v149 ^ -v149 ^ (229 - (v149 ^ 0xE5))) + 229) ^ 0x74));
  LODWORD(v158) = (*&v25[8 * (*(a2 + BYTE2(v157)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + v158) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(a2 + (v155 >> 24)) ^ 0x91)] >> 24);
  v161 = v143 ^ 0x723D82C8;
  v162 = *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + v160) ^ 0x91)) ^ (*&v25[8 * (*(a2 + BYTE1(v157)) ^ 0x91)] >> 8) ^ (*&v25[8 * (v159 ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + BYTE2(v156)) ^ 0x91)] >> 24) ^ 0x1C3FC450;
  v163 = v139 ^ 0x7F892BED;
  v164 = v158 ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + (v156 >> 24)) ^ 0x91)) ^ 0xF6D7C1E8;
  LODWORD(v146) = *(a2 + BYTE1(v161)) ^ 0xE5;
  v165 = ((*(a2 + BYTE2(v164)) - (*(a2 + BYTE2(v164)) ^ 0xE5)) ^ 0xFFFFFFFE) + *(a2 + BYTE2(v164));
  v166 = &v25[8 * (*(a2 + BYTE1(v162)) ^ 0x91)];
  v167 = (*&v25[8 * (*(a2 + (v162 >> 24)) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(a2 + ((v158 ^ *(*(&off_101353600 + a1 - 20755) + 8 * (*(a2 + (v156 >> 24)) ^ 0x91))) ^ 0xE8u)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + BYTE2(v161)) ^ 0x91)] >> 24) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + (v163 >> 24)) ^ 0x91)) ^ 0xBA512B61;
  v168 = &v25[8 * (*(STACK[0x55F0] + BYTE2(v167)) ^ 0x91)];
  v169 = *(*(&off_101353600 + a1 - 20755) + 2 * (*(a2 + BYTE1(v164)) ^ 0x91)) ^ (*&v25[8 * (*(a2 + v162) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(a2 + (v161 >> 24)) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(a2 + v163) ^ 0x91)] >> 16) ^ 0x55B69E64;
  v170 = &v25[8 * (*(STACK[0x55F0] + ((BYTE1(*&v25[8 * (*(a2 + (v162 >> 24)) ^ 0x91)]) ^ WORD1(*&v25[8 * (*(a2 + v164) ^ 0x91)]) ^ BYTE3(*&v25[8 * (*(a2 + BYTE2(v161)) ^ 0x91)]) ^ *(*(&off_101353600 + a1 - 20755) + 8 * (*(a2 + (v163 >> 24)) ^ 0x91))) ^ 0x61u)) ^ 0x91)];
  v171 = (*&v25[8 * (*(a2 + BYTE2(v163)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + BYTE2(v162)) ^ 0x91)] >> 24) ^ *&v25[8 * (*(a2 + (v164 >> 24)) ^ 0x91) + 4] ^ (*&v25[8 * (v146 - ((2 * v146) & 0xE8)) + 928] >> 8) ^ 0x6CDBCD01;
  v172 = (*&v25[8 * (*(a2 + (v143 ^ 0xC8u)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(a2 + BYTE1(v163)) ^ 0x91)] >> 24) ^ ((*&v25[8 * (v165 ^ 0x74)] ^ (v165 - 0x307F4CFF34776B3ALL - ((2 * v165) & 0x19711298CuLL))) >> 8) ^ *(v166 + 1) ^ 0x57F5337E;
  v173 = *(*(&off_101353600 + a1 - 20755) + 2 * (*(v11 + (v169 >> 24)) ^ 0x91)) ^ (*&v25[8 * (*(v11 + (v167 >> 24)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(v11 + (WORD1(*&v25[8 * (*(a2 + (v143 ^ 0xC8u)) ^ 0x91)]) ^ BYTE3(*&v25[8 * (*(a2 + BYTE1(v163)) ^ 0x91)]) ^ ((*&v25[8 * (v165 ^ 0x74)] ^ (v165 - 27450 - ((2 * v165) & 0x298C))) >> 8) ^ v166[4] ^ 0x7E)) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(v11 + (v171 >> 24)) ^ 0x91)] >> 16) ^ 0xF7739958;
  v174 = *(*(&off_101353600 + a1 - 20755) + 2 * (*(v11 + BYTE1(v171)) ^ 0x91)) ^ (*&v25[8 * (*(v11 + BYTE2(v172)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(v11 + BYTE1(v167)) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(v11 + BYTE1(v169)) ^ 0x91)] >> 16) ^ 0xD2395868;
  v175 = (*&v25[8 * (*(v11 + BYTE1(v172)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(v11 + v169) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(v11 + v171) ^ 0x91)] >> 24) ^ *(v170 + 1) ^ 0x6F3FF8E3;
  LODWORD(v75) = __ROR4__(*(STACK[0x55F0] + BYTE2(v175)), 2);
  v176 = &v25[8 * (*(STACK[0x55F0] + BYTE2(v173)) ^ 0x91)];
  v177 = *(v168 + 1) ^ (*&v25[8 * (*(v11 + BYTE2(v169)) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(v11 + (v172 >> 24)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(v11 + BYTE2(v171)) ^ 0x91)] >> 24) ^ 0x522D769C;
  v178 = *(*(&off_101353600 + a1 - 20755) + 2 * (*(v11 + (v173 >> 24)) ^ 0x91)) ^ (*&v25[8 * (*(v11 + v177) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(v11 + v175) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(v11 + BYTE1(v174)) ^ 0x91)] >> 16) ^ 0x1FE0348D;
  v179 = (*&v25[8 * (*(v11 + BYTE1(v175)) ^ 0x91)] >> 8) ^ *(*(&off_101353600 + a1 - 20755) + 2 * (*(v11 + v173) ^ 0x91)) ^ (*&v25[8 * (*(v11 + BYTE1(v177)) ^ 0x91)] >> 24) ^ (((*(v11 + BYTE2(v174)) - 0x307F4CFF34776B3ALL - ((2 * *(v11 + BYTE2(v174))) & 0x18C)) ^ 0x6B0084127BAEDE07uLL ^ *&v25[8 * (*(v11 + BYTE2(v174)) ^ 0x91)]) >> (v154 & 0x10) >> (v154 & 0x10 ^ 0x10)) ^ 0x32EFDF06;
  LODWORD(v157) = *(v11 + BYTE2(v179)) | (*(v11 + (*(*(&off_101353600 + a1 - 20755) + 8 * (*(v11 + (v173 >> 24)) ^ 0x91)) ^ BYTE3(*&v25[8 * (*(v11 + v177) ^ 0x91)]) ^ (BYTE1(*&v25[8 * (*(v11 + v175) ^ 0x91)]) ^ WORD1(*&v25[8 * (*(v11 + BYTE1(v174)) ^ 0x91)])) ^ 0x8D)) << 8);
  v180 = (*&v25[8 * (*(v11 + (v174 >> 24)) ^ 0x91)] >> 8) ^ (*&v25[8 * (*(v11 + BYTE2(v177)) ^ 0x91)] >> 16) ^ (*&v25[8 * (*(v11 + BYTE1(v173)) ^ 0x91)] >> 24) ^ 0x1E57C136 ^ *(*(&off_101353600 + a1 - 20755) + 2 * (__ROR4__((v75 ^ 0x40000039) + 42264463 - 2 * ((v75 ^ 0x40000039) & 0xF), 30) ^ 0xA139E48u));
  v181 = (*&v25[8 * (*(v11 + (v177 >> 24)) ^ 0x91)] >> 24) ^ (*&v25[8 * (*(v11 + v174) ^ 0x91)] >> 16) ^ *(v176 + 1) ^ (*&v25[8 * (*(v11 + (v175 >> 24)) ^ 0x91)] >> 8) ^ 0x650F937;
  LODWORD(v174) = (v157 | (*(v11 + BYTE1(v180)) << 24) | (*(v11 + BYTE2(v181)) << 16)) ^ 0xC78F2137;
  LODWORD(v171) = ((*(v11 + (v179 >> 24)) << 24) | (*(v11 + BYTE2(v180)) << 16) | (*(v11 + (v181 >> 24)) << 8) | *(STACK[0x55F0] + BYTE1(v178))) ^ 0xD93915F3;
  LODWORD(v25) = ((*(v11 + (v180 >> 24)) << 16) | (*(v11 + v181) << 8) | *(v11 + BYTE2(v178)) | (*(v11 + v179) << 24)) ^ 0x647CFF94;
  LODWORD(v178) = (*(v11 + BYTE1(v181)) | (*(v11 + (v178 >> 24)) << 24) | (*(v11 + v180) << 8) | (*(v11 + BYTE1(v179)) << 16)) ^ 0x64755364;
  v182 = STACK[0x5790];
  v183 = (BYTE3(v171) - ((v171 >> 23) & 0xDE) - 17) ^ STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x41));
  v184 = ((LODWORD(STACK[0x5780]) - (STACK[0x5790] ^ 0x4A)) ^ 0xFFFFFFFC) + LODWORD(STACK[0x5780]);
  v185 = (v171 >> 8) - ((v171 >> 7) & 0x1FFFFDE);
  LODWORD(v170) = WORD1(v171) - ((v171 >> 15) & 0x1FFDE);
  v186 = v171 - ((2 * v171) & 0xDF);
  LODWORD(v166) = (v25 >> 16) - ((v25 >> 15) & 0x1FFDE);
  LODWORD(v165) = (v25 >> 24) - ((v25 >> 23) & 0x1DE);
  LOBYTE(v117) = v25 - ((2 * v25) & 0xDF);
  LODWORD(v135) = (v25 >> 8) - ((v25 >> 7) & 0x1FFFFDE);
  LODWORD(v154) = BYTE3(v178) - ((v178 >> 23) & 0x1DE);
  LODWORD(v171) = (v178 >> 8) - ((v178 >> 7) & 0x1FFFFDE);
  LODWORD(v179) = STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x7A)) ^ (v174 - ((2 * v174) & 0xFFFFFFDF) - 17);
  LODWORD(v25) = STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0xD2)) ^ 0x51 ^ (BYTE3(v174) - ((v174 >> 23) & 0x1DE) - 17);
  LODWORD(v176) = STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x2C)) ^ 0xAF ^ (WORD1(v174) - ((v174 >> 15) & 0x1FFDE) - 17);
  LODWORD(v157) = STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 9)) ^ 0x8A ^ (v178 - ((2 * v178) & 0xFFFFFFDF) - 17);
  LODWORD(v178) = (v184 - ((2 * v184) & 0xFFFFFFDF) - 17) ^ WORD1(v178) ^ *(STACK[0x57C0] + (v184 ^ 0x9B));
  LODWORD(v164) = STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x95)) ^ 0x16 ^ (v154 - 17);
  LODWORD(v11) = STACK[0x55E0];
  v187 = *(&off_101353600 + a1 - 20922) - 12;
  LOBYTE(v174) = v187[(STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x33))) ^ 0xB0 ^ (BYTE1(v174) - ((v174 >> 7) & 0xDE) - 17)];
  v188 = LODWORD(STACK[0x55E0]) < LODWORD(STACK[0x55D0]);
  v189 = (STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x5A))) ^ 0xD9u ^ (v117 - 17);
  v190 = (STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x4B))) ^ 0xC8u ^ (v135 - 17);
  v191 = (STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x5C)) ^ (v166 - 17)) ^ 0xDFu;
  LOBYTE(v166) = v187[v179 ^ 0xF9];
  LOBYTE(v25) = v187[v25];
  LOBYTE(v154) = v187[v176];
  LOBYTE(v135) = v187[((v183 ^ 0x41 ^ -(v183 ^ 0x41) ^ (200 - (v183 ^ 0x89u))) + 200) ^ 0x4BLL];
  LOBYTE(v175) = v187[(STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x8D)) ^ (v170 - 17)) ^ 0xE];
  LODWORD(v176) = v187[(STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x94))) ^ 0x17 ^ (v185 - 17)];
  v192 = v187[(STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x70)) ^ (v186 - 17)) ^ 0xF3];
  LOBYTE(v189) = v187[v189];
  LOBYTE(v190) = v187[v190];
  LOBYTE(v191) = v187[v191];
  v193 = v187[(STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0xE2))) ^ 0x61 ^ (v165 - 17)];
  LOBYTE(v157) = v187[v157];
  LOBYTE(v179) = v187[v164];
  LOBYTE(v178) = v187[v178 ^ 0x18];
  LOBYTE(v187) = v187[(STACK[0x5790] ^ *(STACK[0x57C0] + (v182 ^ 0x71))) ^ 0xF2 ^ (v171 - 17)];
  v194 = STACK[0xCF60];
  v194[2] = v25 ^ 0xB4;
  v194[1] = v166 ^ 0xB4;
  *v194 = v174 ^ 0xB4;
  v194[3] = v154 ^ 0xB4;
  v194[4] = v135 ^ 0xB4;
  LODWORD(STACK[0x57C0]) = v176 ^ 0xFFFFFFB4;
  v194[5] = v175 ^ 0xB4;
  v194[6] = v176 ^ 0xB4;
  v194[8] = v191 ^ 0xB4;
  v194[9] = v190 ^ 0xB4;
  v194[7] = v192 ^ 0xB4;
  v194[10] = v189 ^ 0xB4;
  v194[11] = v193 ^ 0xB4;
  v194[12] = v157 ^ 0xB4;
  v194[14] = v178 ^ 0xB4;
  v194[15] = v187 ^ 0xB4;
  LODWORD(v178) = LODWORD(STACK[0x57A0]) + 1428458720;
  v194[13] = v179 ^ 0xB4;
  LODWORD(v179) = v188 ^ (v178 < 0xA7D94621);
  v195 = v178 < v11;
  STACK[0xCF58] += 16;
  if (v179)
  {
    v195 = v188;
  }

  STACK[0xCF60] = (v194 + 16);
  return (*(STACK[0x57D8] + 8 * (a1 ^ (25 * !v195))))();
}

uint64_t sub_100352FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x51B8];
  v5 = __ROR8__(STACK[0x6910] & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (v5 - 0x5B3EC18598D49E0ALL) ^ 0xAD114E495B9659F5;
  v7 = (__ROR8__((v5 - 0x5B3EC18598D49E0ALL) ^ 0x8B18BD9A62CD5640, 8) + v6) ^ 0x9D63C3648794ABC0;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (((2 * (v9 + v8)) & 0xD9CBCC88F147D5FALL) - (v9 + v8) + 0x131A19BB875C1502) ^ 0x9A2D6B0B84DFE2DELL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = __ROR8__((((2 * (v12 + v11)) | 0x5AD801E643723BB4) - (v12 + v11) - 0x2D6C00F321B91DDALL) ^ 0x54E096AAA65BDB9, 8);
  v14 = (((2 * (v12 + v11)) | 0x5AD801E643723BB4) - (v12 + v11) - 0x2D6C00F321B91DDALL) ^ 0x54E096AAA65BDB9 ^ __ROR8__(v11, 61);
  v15 = (v13 + v14) ^ 0xEE93EFF9FB91609BLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x5DC0C52EDBDD025;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x2EAD2D51E70187D4;
  *STACK[0x6910] = (((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0x5FC4102E9580487DuLL) >> (8 * (STACK[0x6910] & 7u))) ^ 5;
  return (*(STACK[0x57D8] + 8 * (v4 - 7323)))(0x282209998BDCA063, 0x893772B00383F7DCLL, a3, a4, 0xFA35E2CDCB3E31C7, 0xE580B17D8CC5E551, 2050767130, 385182804);
}

uint64_t sub_100353274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = STACK[0x51B8] - 1932801477;
  v6 = STACK[0x51B8] - 20154;
  STACK[0x6A38] = STACK[0x71F0] + 16;
  v7 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v6);
  return (*(v7 + 8 * ((v5 ^ (a5 + 3900)) + v6)))();
}

uint64_t sub_100353338()
{
  v3 = v1 + v0;
  v4 = STACK[0x62C8];
  v5 = 1534937323 * ((0xD7444D2FBB878317 - ((v2 - 240) | 0xD7444D2FBB878317) + STACK[0x1FC8]) ^ 0xE5C33A12829687AFLL);
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4D4]) = v5 ^ v3 ^ 0xB6A65AB8;
  LODWORD(STACK[0x1D4CC]) = v5 + v1 + 1451493860;
  STACK[0x1D4C0] = v4 ^ v5;
  STACK[0x1D4D8] = v5;
  LODWORD(STACK[0x1D4C8]) = (v3 | 0xB6A6576C) - v5;
  LODWORD(STACK[0x1D4E0]) = (v3 ^ 0xB6A65AB0) + v5;
  v6 = v1 ^ 0x2462;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * v6))(v2 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4E4])))(v8);
}

uint64_t sub_100353410@<X0>(unint64_t a1@<X8>)
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 13531;
  LODWORD(STACK[0x1D4C8]) = (STACK[0x51B8] - 1723133771) ^ (1917435887 * ((((2 * (v1 - 240)) | 0x5F73053A) - (v1 - 240) - 800686749) ^ 0xC902D99B));
  STACK[0x1D4C0] = a1;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2466)))(v1 - 240);
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_1003534D8()
{
  LODWORD(STACK[0x57C0]) = (v0 - 12748) ^ 0x5B0C;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x24F)))(1028);
  STACK[0xD258] = v2;
  return (*(v1 + 8 * ((90 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1003535FC@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>)
{
  v2 = STACK[0x6B80];
  v3 = STACK[0x7ED8];
  STACK[0x79A8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v3 + (a2 ^ 0x485);
  STACK[0xC3B0] = v2;
  STACK[0xA960] = 0;
  STACK[0xAFE8] = 0;
  LODWORD(STACK[0x8D04]) = 2101965948;
  v4 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * a2);
  return (*(v4 + 8 * ((6920 * ((a2 ^ 0x93AC1F8D) > 0x245EA9C2)) ^ (a2 + 1365))))(4294960487, a1, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_1003537DC@<X0>(int a1@<W8>)
{
  v3 = (v1 ^ 0xAF8DBDAFDBAF8FDFLL) + ((2 * v1) & 0x1B75F1FBELL) + 0x50724250E36882F1;
  v5 = v3 < (((a1 - 25885) | 0x110u) ^ 0xBF18119FuLL) || v3 > *(v2 + 8) + 3206025932u;
  return (*(STACK[0x57D8] + 8 * (a1 ^ (16 * v5))))();
}

uint64_t sub_10035386C()
{
  v1 = v0 - 2044;
  v2 = (v0 - 651083237) & 0x26CEEDDD;
  v3 = STACK[0x7768];
  *v3 = STACK[0xC3D0];
  *(v3 + 8) = STACK[0xBD30];
  *(v3 + 16) = STACK[0xC800];
  *(v3 + 24) = -769884028;
  STACK[0xC7A8] = 0;
  LODWORD(STACK[0x90B4]) = 0;
  v4 = STACK[0x57D8];
  STACK[0x6928] = *(STACK[0x57D8] + 8 * v1);
  return (*(v4 + 8 * (v1 - 14579 + v2)))(88);
}

uint64_t sub_100353920(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 100;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1003539B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x57D8];
  STACK[0xCF80] = *(STACK[0x57D8] + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x18E2)))(a1, a2, a3, a4, 0xFA35E2CDCB3E31C7, 0xE580B17D8CC5E551, 2050767130, 385182804);
}

uint64_t sub_100353B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  LODWORD(STACK[0xA61C]) = STACK[0xC15C];
  v8 = STACK[0x7058];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (v7 - 21328));
  return (*(v9 + 8 * (v7 - 17418)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100353C00(unint64_t a1, uint64_t a2)
{
  v8 = STACK[0x57D8];
  STACK[0xC248] = *(STACK[0x57D8] + 8 * v4);
  *(a2 + 324) = v5;
  STACK[0x87A8] = a1;
  STACK[0x83A0] = v6;
  STACK[0x60A0] = v7;
  v9 = STACK[0x7ED8];
  v10 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xBAD8] = v10;
  STACK[0x7888] = v10;
  STACK[0x7ED8] = (((v3 - 22290) | 0x4413u) ^ 0xFFFFFFFFFFFF985FLL) + v9 + 1288 * (v3 ^ 0x5851u);
  STACK[0x8AC0] = 0x79296B4A625EDF44;
  *v10 = 2097153;
  *(v10 + 1) = v5;
  v10[28] = 0;
  STACK[0xABB8] = (v10 + 28);
  return (*(v8 + 8 * ((v3 + 4076) ^ (32 * (v2 == 0)))))();
}

uint64_t sub_100353CD8()
{
  v3 = STACK[0x35CC];
  v4 = STACK[0x7590] - STACK[0x3570] + (((v1 - STACK[0x35C0]) | (STACK[0x35C0] - v1)) >> 63);
  v5 = 1534937323 * ((0x50CDF4AEA6F44BDCLL - ((v2 - 240) | 0x50CDF4AEA6F44BDCLL) + STACK[0x3568]) ^ 0x624A83939FE54F64);
  STACK[0x1D4D8] = v5 - 0x537B3EBB2B1C68ECLL;
  LODWORD(STACK[0x1D4CC]) = v5 + 1451493860 + STACK[0x51B8];
  LODWORD(STACK[0x1D4C8]) = LODWORD(STACK[0x3564]) - v5;
  LODWORD(STACK[0x1D4D4]) = v3 ^ v5;
  LODWORD(STACK[0x1D4D0]) = v5;
  STACK[0x1D4C0] = v4 ^ v5;
  LODWORD(STACK[0x1D4E0]) = (v3 ^ 0x1D) + v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v0))(v2 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_100353E28()
{
  v0 = STACK[0x51B8];
  STACK[0xBBC8] = &STACK[0x7270];
  LODWORD(STACK[0xCDD8]) = 550409995;
  return (*(STACK[0x57D8] + 8 * (v0 - 17563)))();
}

uint64_t sub_100353ED0()
{
  if (v1 == v2)
  {
    v4 = -143113071;
  }

  else
  {
    v4 = -143155739;
  }

  if (!v3)
  {
    v4 = -143155721;
  }

  LODWORD(STACK[0xE02C]) = v4;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100353F18@<X0>(int a1@<W8>)
{
  v2 = *v1 + 863282760;
  v3 = (v2 < 0x388DE86F) ^ (a1 + 298997708 < ((STACK[0x51B8] + 913252869) & 0xC990BDBE ^ 0x388DD075));
  v4 = a1 + 298997708 > v2;
  if (v3)
  {
    v4 = a1 + 298997708 < ((STACK[0x51B8] + 913252869) & 0xC990BDBE ^ 0x388DD075);
  }

  return (*(STACK[0x57D8] + 8 * ((v4 * (((STACK[0x51B8] - 22598) | 0x5846) ^ 0x5869)) ^ (STACK[0x51B8] + 7869))))();
}

uint64_t sub_100354040(uint64_t a1, uint64_t a2)
{
  v2 = (STACK[0x51B8] + 13617328) | 0x49000E11;
  v3 = STACK[0x51B8] - 22330;
  v4 = STACK[0xADD8];
  v5 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v3);
  return (*(v5 + 8 * ((v2 - 1238375390) ^ v3)))(v4, a2, 1238384546, 998, 43);
}

uint64_t sub_100354148(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = STACK[0x57D8];
  v5 = *(STACK[0x57D8] + 8 * (v3 + 7229));
  STACK[0x54E0] = a3;
  v6 = v5(1028);
  STACK[0xD190] = v6;
  return (*(v4 + 8 * (((((v6 == 0) ^ (v3 - 1)) & 1) * ((v3 - 2927) ^ 0x6BEF)) ^ v3)))();
}

uint64_t sub_100354294()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  *(v1 + 40) = 0;
  return (*(v2 + 8 * (v0 - 564)))(v3);
}

uint64_t sub_100354370()
{
  LODWORD(STACK[0x1D4CC]) = 551690071 * (((v2 - 240) & 0xD54C603B | ~((v2 - 240) | 0xD54C603B)) ^ 0x645ECC93) - 1360448773 + v0;
  STACK[0x1D4C0] = v1 - 0x79296B4A625EDF14;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6ACB)))(v2 - 240);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_100354430@<X0>(unsigned int a1@<W8>)
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] + 2044846096;
  v6 = 1534937323 * (((v2 | 0x92ED682532413320) - v2 + (v2 & 0x6D1297DACDBECCD8)) ^ 0x5F95E0E7F4AFC867);
  *(v1 + 616) = v6 + a1;
  *(v1 + 604) = v6 + 1451493860 + v4;
  *(v1 + 592) = v6;
  *(v1 + 624) = v6 + v5 - 87;
  *(v1 + 600) = (v5 ^ 0xFC0) - v6;
  *(v1 + 612) = v5 ^ v6;
  *(v1 + 608) = v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v4 + 9182)))(v3 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4E4])))(v8);
}

uint64_t sub_100354508@<X0>(int a1@<W8>)
{
  v4 = (v1 ^ 0x3FD7FFDEEB77EFFFLL) + ((v1 << (v2 ^ 0x57u)) & 0x1D6EFDFFELL) - 0x3FD7FFDE92EF08CELL;
  v6 = v4 < ((a1 + 784242838) & 0xD14113AALL ^ 0x5888E4A3uLL) || v4 > *(v3 + 8) + 1485367081;
  return (*(STACK[0x57D8] + 8 * ((194 * v6) ^ a1)))();
}

uint64_t sub_100354624@<X0>(unint64_t a1@<X8>)
{
  STACK[0xB130] = a1;
  v3 = STACK[0x7ED8];
  STACK[0xBA58] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v3 + 32;
  STACK[0x78A0] = v2;
  return (*(STACK[0x57D8] + 8 * ((((2 * (v1 ^ 0x1224)) ^ 0x5845) * (v2 != 0)) ^ v1)))();
}

uint64_t sub_100354688(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v16.val[0].i64[0] = (v4 + a1 - 1) & 0xF;
  v16.val[0].i64[1] = (v4 + a1 + 14) & 0xF;
  v16.val[1].i64[0] = (v4 + a1 + 13) & 0xF;
  v16.val[1].i64[1] = (v4 + a1 + 12) & 0xF;
  v16.val[2].i64[0] = (v4 + a1 + 11) & 0xF;
  v16.val[2].i64[1] = (v4 + a2 + (a4 & (v8 + 48))) & 0xF;
  v16.val[3].i64[0] = (v4 + a1 + 9) & 0xF;
  v16.val[3].i64[1] = (v4 + a1) & 0xF ^ 8;
  *(a3 + v4) = veor_s8(veor_s8(veor_s8(*(v13 + v16.val[0].i64[0]), *(v6 + v4)), veor_s8(*(v16.val[0].i64[0] + v12 + 4), *(v11 + v16.val[0].i64[0]))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, v10[26]), v14)));
  return (*(STACK[0x57D8] + 8 * (((v5 == a1) * v9) ^ v7)))(a1 - 8, a2 - 8, a3 - 8);
}

uint64_t sub_100354788()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 7820)))();
  STACK[0xA2D8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003547EC()
{
  v8 = *(*v0 + (*v3 & 0x13F614F0)) & 0x7FFFFFFFFFFFFFFFLL ^ v5;
  v9 = *(v1 + 448) ^ 0x2E907533603ED926 ^ (v8 + 0x285A0863BBA8E1D3 - ((2 * v8) & 0x50B410C77751C3A6));
  v10 = 1534937323 * ((v7 - 0x509266EC5D66371ELL - 2 * ((v7 - 240) & 0xAF6D9913A299C9D2)) ^ 0x621511D164773295);
  *(v2 + 616) = v10 + 0x2E907533603ED926;
  *(v2 + 592) = v9 ^ v10;
  v11 = STACK[0x2D3C];
  *(v2 + 612) = LODWORD(STACK[0x2D3C]) ^ v10;
  *(v2 + 600) = v11 - v10 - 3199;
  *(v2 + 608) = v10;
  *(v2 + 624) = v10 + v11 + 61;
  v12 = STACK[0x51B8];
  *(v2 + 604) = v10 + v4 + STACK[0x51B8];
  v13 = STACK[0x57D8];
  v14 = (*(STACK[0x57D8] + 8 * (v12 + v6)))(v7 - 240);
  return (*(v13 + 8 * *(v2 + 628)))(v14);
}

uint64_t sub_100354950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x53F0] = v8;
  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  return (*(STACK[0x57D8] + 8 * (((((v6 - 11829) | 0x920) + ((v6 + 1391464877) & (a6 + 3781)) - 27178) * v11) ^ v6)))();
}

uint64_t sub_100354A90()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20063));
  return (*(v1 + 8 * (v0 - 18047)))();
}

uint64_t sub_100354B70()
{
  v3 = STACK[0x25E0];
  v4 = (LODWORD(STACK[0x25E0]) - 866631590) & 0x33A7FCFF;
  *(v0 + 600) = LODWORD(STACK[0x25E0]) - 289235981 * ((1286360013 - (v1 | 0x4CAC4BCD) + (v1 | 0xB353B432)) ^ 0x34D1640D) + 14505;
  v5 = STACK[0x4658];
  *(v0 + 592) = STACK[0x4658];
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 + 24928)))(v2 - 240);
  v9 = *(v0 + 604) != ((v3 + 1704977667) & 0x9A605856 ^ 0x5856) || *v5 == 0;
  return (*(v6 + 8 * ((v9 * (v4 ^ 0x2BD2)) ^ v3)))(v7);
}

uint64_t sub_100354C4C()
{
  STACK[0xC0E8] = (((v0 ^ 0x6FB52C5A971DE43CLL) - 0x6FB52C5A971DE43CLL) ^ ((v0 ^ 0xC2CF290E4147F400) + 0x3D30D6F1BEB80C00) ^ ((v0 ^ 0xAD7A0554044690A8) + 0x5285FAABFBB95B49 + (v1 - 8251))) + 3525083284u;
  STACK[0x79F8] = &STACK[0xB140];
  STACK[0x5D08] = &STACK[0xBED8];
  STACK[0x9230] = &STACK[0xAEA0];
  LODWORD(STACK[0x96B0]) = 1334554965;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100354EF0()
{
  v0 = (STACK[0x51B8] + 1667179379) & 0x9CA0FDFF;
  v1 = STACK[0x51B8] - 20735;
  v2 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v3 = STACK[0x6250];
  v4 = STACK[0xE068];
  v5 = STACK[0x57D8];
  STACK[0x9D20] = *(STACK[0x57D8] + 8 * v1);
  return (*(v5 + 8 * ((v0 ^ 0x59EE) + v1)))(&STACK[0xD760], v2, v3, v4);
}

uint64_t sub_100354FFC()
{
  v1 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x4B905A90)) & 0x7FFFFFFFFFFFFFFFLL;
  v2 = (((STACK[0xA7C8] ^ 0xD7D59F089281786FLL) + 0x282A60F76D7E8791) ^ ((STACK[0xA7C8] ^ 0x5424390199E64AE6) - 0x5424390199E64AE6) ^ ((STACK[0xA7C8] ^ 0x507D1BDAA7C8CAC3) - 0x507D1BDAA7C8CAC3)) + (LODWORD(STACK[0xC68C]) ^ 0xD21C8094) - 0x2C73422C403732CCLL < 0x1318D4EA;
  LODWORD(v1) = (v1 ^ 0x1412FC33B664102CLL) + 320394474 + (((STACK[0x5E00] ^ 0x6855C5F78EBC97EBLL) - 0x6855C5F78EBC97EBLL) ^ ((STACK[0x5E00] ^ 0x2C812D65CA31270DLL) - 0x2C812D65CA31270DLL) ^ ((v1 ^ 0x50C614A1F2E9A0CALL ^ STACK[0x5E00]) - (v1 ^ 0x50C614A1F2E9A0CALL))) < 0x1318D4EA;
  v3 = STACK[0xC20];
  v4 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = STACK[0xC20] + 1451493860 + STACK[0x51B8];
  v5 = STACK[0xC2C];
  LODWORD(STACK[0x1D4D4]) = LODWORD(STACK[0xC2C]) ^ v3;
  LODWORD(STACK[0x1D4C8]) = LODWORD(STACK[0xC28]) - v3;
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4D8] = (v2 ^ v1) + v3;
  LODWORD(STACK[0x1D4E0]) = v3 + v5 - 9;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v4 + 9182)))(v0 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1003552FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = STACK[0x5390];
  v9 = LODWORD(STACK[0x5390]) ^ LODWORD(STACK[0x5068]) ^ v6 ^ (LODWORD(STACK[0x4F38]) - LODWORD(STACK[0x4F10]));
  LODWORD(STACK[0x4F10]) = LODWORD(STACK[0x54E0]) ^ 0x6C3499CD;
  LODWORD(STACK[0x54E0]) = LODWORD(STACK[0x4FC8]) - LODWORD(STACK[0x4F18]);
  LODWORD(STACK[0x5358]) = v6;
  v10 = LODWORD(STACK[0x53C8]) ^ v6 ^ ((v6 ^ v8) >> 7) ^ 0x90900100;
  LODWORD(STACK[0x4FC8]) = 1840300745 * LODWORD(STACK[0x4EA0]);
  LODWORD(STACK[0x4F38]) = v10 - LODWORD(STACK[0x50A8]);
  LODWORD(STACK[0x4F18]) = LODWORD(STACK[0x51A8]) << (v4 + 34);
  LODWORD(STACK[0x53C8]) = (v5 ^ LODWORD(STACK[0x5770])) + LODWORD(STACK[0x4EC0]);
  v11 = LODWORD(STACK[0x4EB0]) - 45706027 + LODWORD(STACK[0x4EB8]) + LODWORD(STACK[0x4ED8]);
  v12 = v9 - (LODWORD(STACK[0x4EC8]) ^ 0x3D2058BE);
  LODWORD(STACK[0x4ED8]) = 1975432521 * LODWORD(STACK[0x4EA8]);
  LODWORD(STACK[0x5068]) = LODWORD(STACK[0x4ED0]) + v12;
  v13 = LODWORD(STACK[0x5050]) - LODWORD(STACK[0x5040]);
  v14 = STACK[0x5350];
  v15 = STACK[0x4EE0] & LODWORD(STACK[0x5350]);
  LODWORD(STACK[0x4F08]) = LODWORD(STACK[0x4F00]) - LODWORD(STACK[0x4F08]);
  LODWORD(STACK[0x50A8]) = LODWORD(STACK[0x4EF0]) - LODWORD(STACK[0x4EE8]);
  LODWORD(STACK[0x5770]) = v14 ^ 0xCCD9CF01;
  LODWORD(STACK[0x51A8]) = LODWORD(STACK[0x56E0]) ^ v13 ^ 0x28847C12;
  v16 = STACK[0x5750];
  v17 = (LODWORD(STACK[0x5750]) ^ 0x5C0BD2C5) - 2102333731;
  LODWORD(STACK[0x5350]) = LODWORD(STACK[0x5600]) ^ ~v15;
  return (*(STACK[0x57D8] + 8 * v4))(v7, a2, v11 ^ 0xDFE796DB, a4, (LODWORD(STACK[0x5380]) + LODWORD(STACK[0x5060])), (v4 + 1684), 0x7128DCD700000000, (((v16 ^ 0x6D347A5E) - 1282455992) ^ ((v16 ^ 0x35BF99EF) - 352016905) ^ v17) - 1574907305);
}

uint64_t sub_100355784@<X0>(unsigned int a1@<W8>)
{
  v1 = (((LODWORD(STACK[0xC96C]) ^ 0xA602232765684352) + 0x59FDDCD89A97BCAELL) ^ ((LODWORD(STACK[0xC96C]) ^ 0x9327ECABD3926D2ELL) + 0x6CD813542C6D92D2) ^ (((((a1 - 7217) | 0x208) + 0x3525CF8C64E69B39) ^ LODWORD(STACK[0xC96C])) - 0x3525CF8C64E6AEE8)) + ((69 * (a1 ^ 0x2D1A)) ^ 0xD21CB4DELL) == 0;
  STACK[0x8F00] = (((LODWORD(STACK[0xC96C]) ^ 0xA602232765684352) + 0x59FDDCD89A97BCAELL) ^ ((LODWORD(STACK[0xC96C]) ^ 0x9327ECABD3926D2ELL) + 0x6CD813542C6D92D2) ^ (((((a1 - 7217) | 0x208) + 0x3525CF8C64E69B39) ^ LODWORD(STACK[0xC96C])) - 0x3525CF8C64E6AEE8)) + ((69 * (a1 ^ 0x2D1A)) ^ 0xD21CB4DELL);
  STACK[0x9AB8] = 0xD38CBDD3ACAFF84ALL;
  v2 = v1;
  return (*(STACK[0x57D8] + 8 * ((985 * v2) ^ a1)))();
}

uint64_t sub_1003559C4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v1 + 8 * (v0 - 3134)))(v2);
}

uint64_t sub_1003559EC@<X0>(_BYTE *a1@<X8>)
{
  v2 = STACK[0x51B8] - 1220;
  v1[23] = a1[115];
  v1[22] = a1[114];
  v1[21] = a1[113];
  v1[20] = a1[112];
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_100355A24@<X0>(int a1@<W8>)
{
  v5 = *(STACK[0x57D8] + 8 * v2);
  *v1 = ((HIBYTE(v4) ^ 0xAC) - ((2 * (HIBYTE(v4) ^ 0xAC)) & 0x66) - 77) ^ 0xB3;
  v1[1] = ((BYTE6(v4) ^ 0x23) - 2 * ((BYTE6(v4) ^ 0x23) & 0x7A ^ BYTE6(v4) & 8) - 14) ^ 0xF2;
  v1[2] = ((BYTE5(v4) ^ 0xD3) - 2 * ((BYTE5(v4) ^ 0xD3) & 0x15 ^ BYTE5(v4) & 4) + 17) ^ 0x11;
  v1[3] = ((BYTE4(v4) ^ 0x12) - ((2 * (BYTE4(v4) ^ 0x12)) & 0xC4) + 98) ^ 0x62;
  v1[4] = ((BYTE3(v4) ^ 0x68) - ((2 * BYTE3(v4)) & 0x20) - 112) ^ 0x90;
  v1[5] = ((BYTE2(v4) ^ 0xA5) - ((2 * (BYTE2(v4) ^ 0xA5)) & 0x36) - 101) ^ 0x9B;
  v1[6] = ((BYTE1(v4) ^ 0x15) - ((2 * (BYTE1(v4) ^ 0x15)) & 8) - 84) ^ 0xAC;
  v1[7] = v4 ^ 0xA2;
  v1[8] = HIBYTE(a1) ^ 0x71;
  v1[9] = BYTE2(a1) ^ 0xF5;
  v1[10] = BYTE1(a1) ^ 0x98;
  v1[11] = a1 ^ 0xC4;
  v1[12] = HIBYTE(v3);
  v1[13] = BYTE2(v3);
  v1[14] = BYTE1(v3);
  v1[15] = v3;
  return v5();
}

uint64_t sub_100355C48@<X0>(int a1@<W8>)
{
  v10 = *(STACK[0x57C0] + (((v1 - 11448) | 0x4682) ^ 0x556D) * a1 + 8698028 - 5816 * ((((((((v1 - 11448) | 0x4682) ^ 0x556Du) * a1 + 8698028) >> 3) * v7) >> 32) >> 7));
  v11 = (((v10 ^ 0xF7C3BC78) + 138167176) ^ ((v10 ^ 0xD2F57D16) + 755663594) ^ ((v10 ^ 0x2536C1A9) - 624345513)) * v9 + 66101552;
  v12 = *(v3 + 4 * (v11 - (((v11 * v6) >> 32) >> 12) * v5));
  v13 = 4843 * (((HIBYTE(v12) ^ 0xB30800B7) + 1441894809) ^ ((HIBYTE(v12) ^ 0xDF09943B) + 972031253) ^ ((HIBYTE(v12) ^ 0x6C0194E4) - 1963457076)) + 1829724841;
  v14 = 4843 * ((~(v12 >> 15) & 6) + (BYTE2(v12) ^ 0x54C));
  v15 = 4843 * (((v12 ^ 0xFEF674CC) - 1244906648) ^ ((v12 ^ 0x5FF31441) + 348740587) ^ ((v12 ^ 0xA1056007) - 364957779)) - 666384501;
  v16 = *(STACK[0x57C0] + v14 - 5816 * (((v14 * v2) >> 32) >> 4)) << 8;
  v17 = *(STACK[0x57C0] + v8 + 4843 * (BYTE1(v12) ^ 0xB6) - 5816 * ((((v8 + 4843 * (BYTE1(v12) ^ 0xB6u)) * v2) >> 32) >> 4));
  v18 = ((((*(STACK[0x57C0] + v13 - 5816 * ((((v13 >> 3) * v7) >> 32) >> 7)) << 16) ^ 0xA62DE1) & (v16 ^ 0xFF2AF7) | v16 & 0xD200) ^ 0x3780A3) & (v17 ^ (v4 - 19));
  v19 = *(STACK[0x57C0] + v15 - 5816 * ((((v15 >> 3) * v7) >> 32) >> 7));
  *(v3 + 4 * (a1 * v9 + 9469466 - ((((a1 * v9 + 9469466) * v6) >> 32) >> 12) * v5)) = ((((v18 ^ v17 & 0xBD) << 8) ^ 0xDB49BCDC) & (v19 ^ 0xFFFFFF38) | v19 & 0x23) ^ 0xE569CD55;
  return (*(STACK[0x57D8] + 8 * ((127 * (a1 != 255)) ^ v1)))();
}

uint64_t sub_100355EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x51B8] ^ 0x1E17;
  v7 = STACK[0x8D28];
  v8 = STACK[0x57D8];
  v9 = STACK[0x2A64];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2A64]));
  return (*(v8 + 8 * (v6 ^ v9 ^ 0x5E73)))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_10035609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unsigned __int8 *a47)
{
  STACK[0x438] = a47[5];
  STACK[0x440] = a47[4];
  STACK[0x4B8] = a47[2];
  STACK[0x448] = a47[1];
  STACK[0x4B0] = a47[6];
  STACK[0x430] = a47[8];
  STACK[0x428] = *a47;
  LODWORD(STACK[0x450]) = a47[3];
  STACK[0x4C8] = a47[9];
  STACK[0x4C0] = a47[15];
  STACK[0x458] = a47[11];
  STACK[0x4E0] = a47[13];
  STACK[0x468] = a47[10];
  STACK[0x460] = a47[12];
  STACK[0x4D8] = a47[14];
  LODWORD(STACK[0x4E8]) = 1;
  return (*(v48 + 8 * v47))(a41);
}

uint64_t sub_100356158@<X0>(int a1@<W8>)
{
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x4BAAu)))(v1 ^ (4 * a1) ^ v2);
  STACK[0x9460] = v5;
  return (*(v4 + 8 * (((v5 == 0) * ((v3 - 6277) ^ 0x1F5C)) ^ v3)))();
}

uint64_t sub_1003561CC@<X0>(_BYTE *a1@<X8>)
{
  a1[112] = v1[20];
  a1[113] = v1[21];
  a1[114] = v1[22];
  a1[115] = v1[23];
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1003563D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x5700]) = LODWORD(STACK[0x5410]) ^ 0x1484EA10;
  v11 = v9 + v10 - 2 * LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x56F0]) = v11;
  LODWORD(STACK[0x51F8]) = v11 ^ 0x12CFA59C;
  STACK[0x5780] = STACK[0xD688] - 0x5DA6670A2472BB8ALL;
  return (*(STACK[0x57D8] + 8 * a8))(a1, a2, (v8 + 1), 0x95821A1238397600, a5, 0x61E72DD900000000);
}

uint64_t sub_100356570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xC0B4]) = v8;
  v9 = STACK[0x57D8];
  STACK[0x8868] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * ((v7 ^ 0x150D) + v7)))(a1, a2, a3, a4, a5, a6, a7, 16714);
}

uint64_t sub_100356648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, int a39, int a40, int a41, int a42, uint64_t a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x4E8]) = 0;
  LODWORD(STACK[0x4D0]) = v80 ^ 0x2D13;
  v84 = a48 - 85 * a5;
  v85 = v84 - 35 + a45;
  v86 = a46 + 113 * v85;
  v87 = a49 + 27 * v86;
  v113 = a39 - 87 * v87;
  v88 = a40 - 67 * v113;
  v89 = v82;
  v90 = a37 + ((v80 ^ 0x2D13) - 83) * (a41 + 19 * v88);
  v91 = a38 - v90 + (v90 << 6);
  v92 = -15 * v91 + v83;
  v93 = a47 + 27 * v92;
  v94 = a51 - 115 * v93;
  v95 = a52 + 125 * v94;
  v96 = a50 + 121 * v95;
  v97 = a42 + 47 * v96;
  v98 = LODWORD(STACK[0x218]) + 105 * (-7 * (LODWORD(STACK[0x22C]) - 117 * (a76 - 53 * v97)) + a71);
  LODWORD(STACK[0x218]) = v98;
  v99 = STACK[0x210] - v98;
  STACK[0x210] = v99;
  v100 = STACK[0x208] - 33 * v99;
  STACK[0x208] = v100;
  LODWORD(v100) = LODWORD(STACK[0x228]) - 41 * (a75 + 79 * (-3 * (a78 + 47 * (a80 - 105 * (a79 - v100 + 32 * v100))) + a77));
  LODWORD(STACK[0x228]) = v100;
  v101 = STACK[0x200] + 107 * (a73 + 47 * v100);
  STACK[0x200] = v101;
  v102 = a5 + 27 * (a72 + 11 * v101 + a74);
  v103 = v102 & 0xFFFFFFD1 ^ 0xFFFFFFA5;
  v104 = v89 ^ STACK[0x230];
  LODWORD(STACK[0x474]) = v102;
  v105 = a6 ^ STACK[0x238];
  v106 = (v84 - ((2 * (v84 - 35)) & 0x76) - 104) ^ 0xFFFFFFBB ^ HIWORD(v104);
  v107 = (v85 - ((2 * v85) & 0xFFFFFFD2) - 23) ^ 0xFFFFFFE9 ^ (v104 >> 40);
  v108 = (v86 - ((2 * v86) & 0xFFFFFFB6) - 37) ^ 0xFFFFFFDB ^ HIDWORD(v104);
  STACK[0x4B0] = (v88 - ((2 * v88) & 0xFFFFFF98) - 52) ^ 0xFFFFFFCC ^ (v104 >> 8);
  v109 = HIBYTE(v105) ^ (v90 - ((2 * v90) & 0xFFFFFFDA) + 109) ^ 0x6D;
  v110 = (v87 - ((2 * v87) & 0xFFFFFFBA) - 35) ^ 0xFFFFFFDD ^ (v104 >> 24);
  LODWORD(STACK[0x478]) = v92;
  v111 = *(v81 + 8 * v80);
  STACK[0x448] = v106;
  STACK[0x468] = (v105 >> 40) ^ (v92 - ((2 * v92) & 0xFFFFFFA0) + 80) ^ 0x50;
  STACK[0x438] = (v113 + (~(2 * v113) | 0x39) + 100) ^ 0x63 ^ (v104 >> 16);
  STACK[0x4D8] = (v105 >> 8) ^ (v96 + (~(2 * v96) | 0xFFFFFFBD) - 94) ^ 0xFFFFFFA1;
  STACK[0x460] = (v105 >> 24) ^ (v94 - ((2 * v94) & 0x38) + 28) ^ 0x1C;
  STACK[0x4C0] = v105 ^ (v97 - ((2 * v97) & 0x6C) - 74) ^ 0xFFFFFFB6;
  LODWORD(STACK[0x450]) = v108;
  STACK[0x4B8] = v107;
  STACK[0x440] = v110;
  STACK[0x428] = HIBYTE(v104) ^ v102 ^ (2 * ((v102 ^ 0x16) & (2 * ((v102 ^ 0x16) & (2 * ((v102 ^ 0x16) & (2 * ((v102 ^ 0x16) & (2 * ((v102 ^ 0x16) & (2 * (((2 * v102) & 0x2E ^ 0x46) & (v102 ^ 6) ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ 0xFFFFFFD1;
  STACK[0x4E0] = (v105 >> 16) ^ (v95 - ((2 * v95) & 0xFFFFFFDC) - 18) ^ 0xFFFFFFEE;
  STACK[0x4C8] = HIWORD(v105) ^ (v91 - ((2 * v91) & 0xFFFFFFCA) + 101) ^ 0x65;
  STACK[0x430] = v109;
  STACK[0x458] = HIDWORD(v105) ^ (v93 - 16 * (v93 >> 3) + 120) ^ 0x78;
  return v111(v110, (v105 >> 16) ^ (v95 - ((2 * v95) & 0xFFFFFFDC) - 18) ^ 0xFFFFFFEE, v108, v106);
}

uint64_t sub_100356CE0()
{
  v0 = STACK[0x51B8];
  *(STACK[0x9808] - 0x1883660EE814440ALL) = STACK[0xDC20];
  return (*(STACK[0x57D8] + 8 * ((12907 * (((((LODWORD(STACK[0xDC24]) - (v0 - 143135685)) | (v0 - 143135685 - LODWORD(STACK[0xDC24]))) >> (STACK[0xF08] ^ 0xF9)) & 1) == 0)) ^ (v0 - 20080))))();
}

uint64_t sub_100356DB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x5740] = v13;
  STACK[0x5750] = v12;
  STACK[0x5760] = v11;
  STACK[0x5770] = v10;
  STACK[0x5790] = a7;
  STACK[0x57A0] = a1;
  STACK[0x57B0] = v9;
  STACK[0x57C0] = v8;
  STACK[0x5780] = a8;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3F80])))();
}

uint64_t sub_100356E28()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xAC70] = 0;
  return (*(v1 + 8 * (v0 - 2407)))(v2);
}

uint64_t sub_100356E60()
{
  STACK[0x57A0] = 0;
  LODWORD(STACK[0x5790]) = 0;
  LODWORD(STACK[0x5780]) = 0;
  LODWORD(STACK[0xE33C]) = v0;
  v3 = *(STACK[0x57D8] + 8 * (v1 + 1851));
  STACK[0xE340] = STACK[0x7A10];
  LODWORD(STACK[0x57B0]) = -769884012;
  LODWORD(STACK[0x57C0]) = -769884012;
  return v3(0xB90E924F943B4E10, 3525083284, 3525083284, 16 * (v2 == ((v1 - 13036) ^ 0xF77861FB)), 3525083284, 213, 3525083284, 0x1F52A40E16363DABLL);
}

uint64_t sub_100357028()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2426)))(STACK[0x57C0]);
  return (*(v1 + 8 * (v0 - 6293)))(v2);
}

uint64_t sub_100357058@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v2 = STACK[0x4D10];
  v3 = STACK[0x6200] << 7;
  *(*(v2 + 8) + v3 + 16) = a1;
  return (*(STACK[0x57D8] + 8 * (((*(*(v2 + 8) + v3) != 0xD38CBDD3ACAFF84ALL) * ((((a2 - 19876) ^ 0x71AE747B) - 1907235101) ^ ((a2 - 19876) | 0x5842))) ^ a2)))();
}

uint64_t sub_100357160@<X0>(uint64_t a1@<X4>, int a2@<W5>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  *(v11 + 4 * (v12 * v6)) = a3 ^ v7 ^ v8 ^ v9 ^ v10 ^ a4 ^ a2 ^ 0x9B53B5CC ^ *(*(a1 + 8 * (v5 ^ 0x38A4)) + 4 * (((v12 * v6) ^ v13) ^ 0xE9u) - 4);
  v14 = (((11 * (v5 ^ 0x35B1)) ^ 0x69AA) & (2 * v12)) + (v12 ^ 1u) < a5 + 256;
  return (*(STACK[0x57D8] + 8 * (((2 * v14) | (16 * v14)) ^ v5)))();
}

uint64_t sub_100357308()
{
  v0 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3F70]));
  return (*(v0 + 8 * SLODWORD(STACK[0x3F6C])))();
}

uint64_t sub_1003573D0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = (a2 + 696195443) & STACK[0xA40];
  v3 = STACK[0xBB70];
  STACK[0xA2A0] = STACK[0xBB70];
  LODWORD(STACK[0x64B0]) = ((((LODWORD(STACK[0x82A4]) ^ 0xF7D3DE4C) + 137109940) ^ ((LODWORD(STACK[0x82A4]) ^ 0x5FAFA360) - 1605346144) ^ (v2 + (LODWORD(STACK[0x82A4]) ^ 0x7A60FDB8) - 2053184969)) - 769883997) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v3;
  STACK[0xC880] = 0xD6B3399B029E788BLL;
  LODWORD(STACK[0xCD80]) = -1944433780;
  return (*(STACK[0x57D8] + 8 * a2))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1003575E4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xC1E8] = 0;
  return (*(v1 + 8 * (v0 - 14017)))(v2);
}

uint64_t sub_100357790()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x6DC0];
  v2 = 0xED11BF8A5DC85C10 - 0x8D9DCB36D5391B9 * STACK[0xB1A8];
  v3 = (v2 ^ (STACK[0x51B8] - 21257 - 0x1A3E33E3D5D03461)) & (2 * (v2 & 0xE9D5CE5C034FE2F1)) ^ v2 & 0xE9D5CE5C034FE2F1;
  v4 = ((2 * (v2 ^ 0xE4E1C82C2E3650ECLL)) ^ (3313 * (STACK[0x51B8] ^ 0x5851) + 0x1A680CE05AF309A3)) & (v2 ^ 0xE4E1C82C2E3650ECLL) ^ (2 * (v2 ^ 0xE4E1C82C2E3650ECLL)) & 0xD3406702D79B21CLL;
  v5 = v4 ^ 0x514021025089205;
  v6 = (v4 ^ 0x820006008710008) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x34D019C0B5E6C874) & v5 ^ (4 * v5) & 0xD3406702D79B21CLL;
  v8 = (v7 ^ 0x410004025608010) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x924063008193209)) ^ 0xD3406702D79B21D0) & (v7 ^ 0x924063008193209) ^ (16 * (v7 ^ 0x924063008193209)) & 0xD3406702D79B210;
  v10 = (v9 ^ 0x100060005192000) & (v8 << 8) ^ v8;
  v11 = (((v9 ^ 0xC3400702860920DLL) << 8) ^ 0x3406702D79B21D00) & (v9 ^ 0xC3400702860920DLL) ^ ((v9 ^ 0xC3400702860920DLL) << 8) & 0xD3406702D79B200;
  v12 = v10 ^ 0xD3406702D79B21DLL ^ (v11 ^ 0x404002029300000) & (v10 << 16);
  *(v1 + 448) = v2 ^ *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x13F614F0)) & 0x7FFFFFFFFFFFFFFFLL ^ (2 * ((v12 << 32) & 0xD34067000000000 ^ v12 ^ ((v12 << 32) ^ 0x2D79B21D00000000) & (((v11 ^ 0x93006500449A21DLL) << 16) & 0xD34067000000000 ^ 0x904020000000000 ^ (((v11 ^ 0x93006500449A21DLL) << 16) ^ 0x6702D7900000000) & (v11 ^ 0x93006500449A21DLL)))) ^ 0xDBBAA7D81182076DLL;
  *(v1 + 400) = STACK[0x94F0];
  *(v1 + 408) = -769884028;
  *(v1 + 800) = STACK[0xA438];
  return (*(STACK[0x57D8] + 8 * ((27417 * ((((LOBYTE(STACK[0x5B2F]) - (v0 - 22613)) | (v0 - 22613 - LOBYTE(STACK[0x5B2F]))) & 0x80) == 0)) ^ ((v0 - 22613) | 0x3FFC))))();
}

uint64_t sub_100357B48(uint64_t a1)
{
  *a1 = 16;
  *(a1 + 8) = v1;
  *(a1 + 40) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xD38CBDD3ACAFF84ALL;
  v3 = STACK[0x57D8];
  v4 = *(v3 + 8 * (((((v2 - 35) ^ ((*(STACK[0x57D8] + 8 * (v2 | 0x582C)))(256) == 0)) & 1) * (((v2 - 484189219) & 0x1CDC731F) - 29406)) ^ v2));
  return v4();
}

uint64_t sub_100357BE4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = STACK[0x8F68];
  STACK[0xB840] = STACK[0x8F68];
  LODWORD(STACK[0x742C]) = ((((LODWORD(STACK[0x7A88]) ^ 0xF05BB313) + 262425837) ^ ((LODWORD(STACK[0x7A88]) ^ 0xA36AF9C7) + 1553270329) ^ (((a2 + 2803) ^ LODWORD(STACK[0x7A88]) ^ 0x812DEA51) + 2127705536)) - 769883997) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xA69F2A76F2C71801;
  LODWORD(STACK[0xCD80]) = -1732677352;
  return (*(STACK[0x57D8] + 8 * a2))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_100357DFC@<X0>(unint64_t a1@<X8>)
{
  v4 = v2 - 15318;
  v5 = v1;
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v2 + 1717148634) ^ (1964904101 * ((245071399 - ((v3 - 240) | 0xE9B7E27) + ((v3 - 240) | 0xF16481D8)) ^ 0xB466A5C));
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2413)))(v3 - 240);
  *v5 = 0;
  return (*(v6 + 8 * v4))(v7);
}

uint64_t sub_100357E9C()
{
  STACK[0xC0E8] = v1;
  STACK[0x79F8] = &STACK[0xB100];
  STACK[0x5D08] = &STACK[0x67F0];
  STACK[0x9230] = &STACK[0x7CA0];
  LODWORD(STACK[0x96B0]) = 1334554966;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100357F80()
{
  v0 = STACK[0x51B8] - 17174;
  STACK[0xB7A0] = STACK[0xDD60];
  LODWORD(STACK[0xC4EC]) = STACK[0xDD5C];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xDD6C]) == -143113071) * (LODWORD(STACK[0x363C]) - 14148)) ^ v0)))();
}

uint64_t sub_100357FF0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x1D4C8]) = v1 + 289235981 * ((((2 * (v3 - 240)) | 0x47D9D412) - (v3 - 240) + 1544754679) ^ 0x246E3A36) + 11989;
  STACK[0x1D4C0] = a1;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 + 26059)))(v3 - 240);
  *(*(STACK[0x4D10] + 8) + (v2 << 7) + 8) = 0x79296B4A625EDF44;
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_100358094()
{
  v0 = *STACK[0x51E8];
  v1 = *STACK[0x51F0];
  v2 = LODWORD(STACK[0x5924]) ^ 0x462E6B12 ^ *(v1 + (v0 & 0xFADE648C)) & 0x7FFFFFFF;
  v3 = *(v1 + (v0 & (STACK[0x51B8] ^ 0x4B9002C6))) & 0x7FFFFFFFFFFFFFFFLL;
  v4 = (v3 ^ 0x1412FC33B664102CLL) + (((STACK[0x5EC0] ^ 0x2D9532A358B87F5CLL) - 0x2D9532A358B87F5CLL) ^ ((STACK[0x5EC0] ^ 0xDBA1835288BB6D67) + 0x245E7CAD77449299) ^ ((v3 ^ 0xE2264DC266670217 ^ STACK[0x5EC0]) - (v3 ^ 0xE2264DC266670217))) + 1432432936;
  v7 = (v4 < 0x55613128 || v4 >= v2 + 1432432936) && LODWORD(STACK[0x9758]) == -890445604;
  return (*(STACK[0x57D8] + 8 * ((8913 * v7) ^ (STACK[0x51B8] - 18458))))();
}

uint64_t sub_1003581E8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9209)))();
  return (*(v1 + 8 * (v0 + 2833)))(v2);
}

uint64_t sub_100358214()
{
  v0 = STACK[0x51B8] - 8204;
  *STACK[0xC060] = STACK[0x9760];
  *STACK[0x5988] = 256;
  v1 = STACK[0xA8E8];
  *STACK[0xB060] = *(**(STACK[0xA8E8] - 0x79296B4A625EDC44) + 16);
  *STACK[0xBC50] = *(**(v1 - 0x79296B4A625EDC44) + 24);
  *STACK[0xA678] = STACK[0x9B90];
  *STACK[0x9980] = STACK[0x7D08];
  *STACK[0xA840] = STACK[0x79C8];
  *STACK[0x6C30] = 20;
  *STACK[0x75C0] = v1 - 0x79296B4A625EDCB4;
  *STACK[0x72C8] = *(v1 - 0x79296B4A625EDC78);
  return (*(STACK[0x57D8] + 8 * ((25 * ((LODWORD(STACK[0x419C]) ^ LOBYTE(STACK[0xCD97])) & 1)) ^ v0)))();
}

uint64_t sub_100358980()
{
  STACK[0x1D4C0] = v0;
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723133771) ^ (1917435887 * ((2 * (((v2 - 240) ^ 0x27AD4D4C) & 0x3D34C3F8) - ((v2 - 240) ^ 0x27AD4D4C) + 1120615430) ^ 0x83DD2A4C));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9178)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 5713)))(v4);
}

uint64_t sub_100358B64()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0xA2E0] = 0;
  return (*(v1 + 8 * (v0 - 18005)))(v2);
}

uint64_t sub_100358BA0@<X0>(int a1@<W8>)
{
  STACK[0xDAF8] = 0xD38CBDD3ACAFF84ALL;
  LODWORD(STACK[0xAD74]) = -769884012;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_100358CC0()
{
  LODWORD(STACK[0x5710]) = v1;
  v2 = v0 + 23382;
  v3 = (2 * (v0 + 23382)) ^ 0xB0B0u;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 25310)))(1032);
  STACK[0xD4C8] = v5;
  STACK[0x57B0] = v3;
  return (*(v4 + 8 * (((v5 == 0) * (v3 - 22435)) ^ v2)))();
}

uint64_t sub_100358D7C()
{
  v1 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v0 + 9146)))(STACK[0xD800]);
  (*(v1 + 8 * (v0 ^ 0x2446)))(STACK[0xD818]);
  (*(v1 + 8 * (v0 ^ 0x2446)))(STACK[0xD840]);
  (*(v1 + 8 * (v0 + 9146)))(STACK[0xD848]);
  (*(v1 + 8 * (v0 + 9146)))(STACK[0xD820]);
  (*(v1 + 8 * (v0 ^ 0x2446)))(STACK[0xD830]);
  (*(v1 + 8 * (v0 + 9146)))(STACK[0xD828] - 0x579802BA7EDE156ELL);
  (*(v1 + 8 * (v0 + 9146)))(STACK[0xD810]);
  return (*(v1 + 8 * (v0 - 15147)))(STACK[0x6278]);
}

uint64_t sub_10035969C@<X0>(int a1@<W8>)
{
  v2 = LODWORD(STACK[0xC624]);
  STACK[0x6B48] = v2 ^ 0xD38CBDD37EB378DELL;
  STACK[0x5898] = STACK[0x9A88];
  LODWORD(STACK[0x6A04]) = STACK[0x5A4C];
  STACK[0xCF10] = 0xD38CBDD3ACAFF84ALL;
  STACK[0x80D8] = 0;
  LODWORD(STACK[0xAA1C]) = -769884012;
  LODWORD(STACK[0x9A4C]) = -769884012;
  v4 = STACK[0x60D0] != 0xD38CBDD3ACAFF84ALL && v2 != -769884012;
  return (*(STACK[0x57D8] + 8 * ((v4 * ((a1 + 17210) ^ v1 ^ 0x3B)) ^ a1)))();
}

uint64_t sub_100359834(int a1, uint64_t a2, int a3, int a4, char a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v25 = (v12 + v10);
  v26 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(*v14 + ((*a6 & ((v26 ^ a3) + a4 + ((v26 << ((v8 + v13) ^ a5)) & a1))) & 0xFFFFFFFFFFFFFFF8));
  v28 = (__ROR8__(v26, 8) + v27) ^ a7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((v21 & (2 * (v30 + v29))) - (v30 + v29) + v22) ^ v23;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x2275D4C73835399BLL;
  v34 = __ROR8__(v33, 8);
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = (((v34 + v35) ^ v24) - (v15 & (2 * ((v34 + v35) ^ v24))) + v16) ^ 0xF6D3DC81BCE4652CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xC7DDC9F6CC45B721;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (a2 - ((v40 + v39) | a2) + ((v40 + v39) | a8)) ^ v17;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = ((v18 & (2 * (v43 + v42))) - (v43 + v42) + v19) ^ v20;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  *v25 = ((((2 * (v46 + v45)) | 0x346CBB2774A942E4) - (v46 + v45) + 0x65C9A26C45AB5E8ELL) ^ 0x5BF595411E91E95AuLL) >> (8 * (v25 & 7u));
  return (*(STACK[0x57D8] + 8 * (((v10 == 55) * v9) ^ v11)))();
}

uint64_t sub_100359B34@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X4>, int a4@<W5>, int a5@<W6>, int a6@<W8>)
{
  v13 = *(*(a3 + 8 * (a6 - 5589)) + 4 * ((v6 ^ v11) ^ 0xC4u) - 8);
  *(a1 + 4 * v11) = a4 ^ a5 ^ v7 ^ v8 ^ v9 ^ v10 ^ (v13 << 29) ^ __ROR4__((a6 + 2129018553) ^ a2 ^ v13 & 0xFFFFFFF8, 3) ^ 0x87D49833;
  return (*(STACK[0x57D8] + 8 * ((8607 * (v12 == 0)) ^ a6)))();
}

uint64_t sub_100359C28()
{
  v0 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3F9C]));
  return (*(v0 + 8 * SLODWORD(STACK[0x3F98])))();
}

uint64_t sub_100359D0C@<X0>(uint64_t a1@<X8>)
{
  v3 = (STACK[0x51B8] ^ 0x4DCD) + 457493801;
  v4 = STACK[0x51B8] + 6709;
  *(a1 + 4) = v1;
  return (*(STACK[0x57D8] + 8 * ((44 * (((v2 + 8 > (a1 + 8)) ^ (v3 + 1)) & 1)) ^ v4)))();
}

uint64_t sub_100359DA0(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 104;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100359EA0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xA3D8] = 0;
  return (*(v1 + 8 * (v0 - 6968)))(v2);
}

void *sub_10035A148@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x57D8];
  STACK[0x6678] = *(STACK[0x57D8] + 8 * v2);
  STACK[0xB760] = v3;
  STACK[0x9D40] = a1;
  STACK[0xAFE0] = v1;
  LODWORD(STACK[0xBB8C]) = -769884012;
  LODWORD(STACK[0x9EBC]) = -769884012;
  STACK[0xBD70] = 0;
  LODWORD(STACK[0x8C04]) = 0;
  STACK[0x68A8] = 0;
  LODWORD(STACK[0x7B2C]) = 1280;
  v6 = STACK[0x7ED8];
  STACK[0x6F38] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v6 + ((v4 + 11884) ^ 0x31BFLL);
  STACK[0xC598] = 0;
  LODWORD(v6) = *(a1 + 80) - 2101965948;
  LODWORD(STACK[0x959C]) = -769884012;
  if (v6 >= 0x500)
  {
    v7 = -143155762;
  }

  else
  {
    v7 = -143113071;
  }

  if (*(a1 + 72))
  {
    v8 = v7;
  }

  else
  {
    v8 = -143155721;
  }

  LODWORD(STACK[0xCB78]) = v8;
  STACK[0x8BC8] = 0;
  return (*(v5 + 8 * (v4 ^ 0x16FD)))(&STACK[0x8BC8]);
}

uint64_t sub_10035A35C(uint64_t a1, int a2, int a3, int a4)
{
  v9 = LODWORD(STACK[0x5118]) ^ LODWORD(STACK[0x50D8]);
  v10 = (v5 + v7 - ((v7 + v6 - ((v7 + v6) >> 16)) >> 8) - ((v7 + v6) >> 16) - a3) ^ 0xF2A264F0;
  v11 = v10 - (v10 >> 9) - ((v10 - (v10 >> 9)) >> 2);
  v12 = ((a2 + 2505) ^ 0x89C86712) + v11 + ((((a2 + 2505) ^ 0x89C86712) + v11) >> 11);
  v13 = v12 + (v12 >> 6);
  v14 = (v13 ^ 0xA88C2D59) + ((v13 ^ 0xA88C2D59) >> 13) - (((v13 ^ 0xA88C2D59) + ((v13 ^ 0xA88C2D59) >> 13)) >> 2);
  v15 = v14 - 1391595809 - ((v14 - 1391595809) >> 9) - ((v14 - 1391595809 - ((v14 - 1391595809) >> 9)) >> 3);
  v16 = v15 + 13042593 - ((v15 + 13042593) >> 11) + ((v15 + 13042593 - ((v15 + 13042593) >> 11)) >> 5);
  v17 = (v16 ^ 0xEBEF4CF0) - ((v16 ^ 0xEBEF4CF0) >> 14) + (((v16 ^ 0xEBEF4CF0) - ((v16 ^ 0xEBEF4CF0) >> 14)) >> 5);
  v18 = ((v17 ^ 0xCB1C53B6) >> 13) + (v17 ^ 0xCB1C53B6) - 2 * ((v17 ^ 0xCB1C53B6) >> 13);
  v19 = v18 + (v18 >> 8);
  v20 = v19 + 684725097 - ((v19 + 684725097) >> 11) - ((v19 + 684725097 - ((v19 + 684725097) >> 11)) >> 4);
  v21 = v20 - 413089388 + ((v20 - 413089388) >> 8) - ((v20 - 413089388 + ((v20 - 413089388) >> 8)) >> 4);
  v22 = LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x50E0]) ^ LODWORD(STACK[0x53D8]) ^ LODWORD(STACK[0x5100]) ^ LODWORD(STACK[0x5108]) ^ v4 ^ v13 ^ v16 ^ v20 ^ v8 & ((v16 ^ v13 ^ v20) >> 1);
  v23 = (LODWORD(STACK[0x5760]) + 1884652660 - ((2 * LODWORD(STACK[0x5760])) & 0xE0AB08E8)) ^ LODWORD(STACK[0x5710]);
  v24 = STACK[0x56D0];
  LODWORD(STACK[0x53D8]) = v23;
  v25 = v8 & ((v23 ^ v24) >> 1) ^ v23 ^ v24;
  v26 = 530294952 - ((v17 ^ v14 ^ v21) & 0x23134050) + (v8 & ((v17 ^ v14 ^ v21) >> 1));
  v27 = v8 & (v24 >> 1) ^ 0x3008C23A ^ ((v25 ^ -v25 ^ (v22 - (v22 ^ v25))) + v22);
  v28 = STACK[0x5740];
  LODWORD(STACK[0x51C8]) = 2 * LODWORD(STACK[0x5740]);
  v29 = (v28 + 530294952 - ((2 * v28) & 0x3F375150)) ^ LODWORD(STACK[0x5700]);
  v30 = LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5790]) ^ v9;
  v31 = LODWORD(STACK[0x51D8]) ^ v8 & (LODWORD(STACK[0x5700]) >> 1) ^ v29 ^ v8 & ((v29 ^ LODWORD(STACK[0x55D0])) >> 1) ^ a4 ^ v14 ^ v17;
  LODWORD(STACK[0x5530]) = v9;
  LODWORD(STACK[0x5140]) = v8 & (v9 >> 1);
  LODWORD(STACK[0x51D8]) = (2 * v27) & 0xE0AB08E8;
  LODWORD(STACK[0x5118]) = (2 * (v31 ^ v21 ^ 0x1C9C450 ^ v26)) & 0x3F375150;
  LODWORD(STACK[0x5720]) = LODWORD(STACK[0x54F0]) ^ LODWORD(STACK[0x5110]) ^ LODWORD(STACK[0x5138]) ^ LODWORD(STACK[0x51A8]);
  LODWORD(STACK[0x5138]) = (v15 ^ v11 ^ v19) >> 1;
  LODWORD(STACK[0x51A8]) = 1140072028 - (v30 & 0x83800CB0) + (v8 & (v30 >> 1));
  LODWORD(STACK[0x54F0]) = v27 + 1884652660;
  return (*(STACK[0x57D8] + 8 * a2))(672998565);
}

uint64_t sub_10035AB34()
{
  STACK[0x7ED8] -= 400;
  v2 = LODWORD(STACK[0xBF84]);
  v3 = 1534937323 * ((~((v1 - 240) | 0x3534F201930F1119) + ((v1 - 240) & 0x3534F201930F1119)) ^ 0x7B3853CAA1E15A1);
  LODWORD(STACK[0x1D4D4]) = (v0 - 1399779523) ^ v3;
  LODWORD(STACK[0x1D4C8]) = ((v0 - 1399779523) ^ 0x103A) - v3;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  LODWORD(STACK[0x1D4E0]) = v3 + v0 - 1399779523 - 19;
  STACK[0x1D4D8] = v3 + 1951403181;
  STACK[0x1D4C0] = v2 ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_10035ADF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0xAF90] = STACK[0xBF88];
  LODWORD(STACK[0x88FC]) = 1837095939;
  return (*(STACK[0x57D8] + 8 * v3))(113, a2, a3, 108);
}

uint64_t sub_10035AE44()
{
  v0 = STACK[0x2520];
  v1 = 6 * (LODWORD(STACK[0x2520]) ^ 0x4982);
  v2 = STACK[0x6EE8];
  v3 = *(STACK[0x6EE8] - 0x1883660EE814440ALL) + 16;
  LODWORD(STACK[0xEBD0]) = v3;
  v4 = 515 * (v0 ^ 0x4739) - 720828864 + *(v2 - 0x1883660EE814440ELL);
  v3 -= 720827834;
  v5 = v3 < (v1 ^ 0x52522694u);
  v6 = v4 < v3;
  if (v5 != v4 < 0x52527EC2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = (STACK[0x95F8] == 0) | v7 & 1;
  if (v8)
  {
    v9 = -143155721;
  }

  else
  {
    v9 = -143113071;
  }

  LODWORD(STACK[0xEBD4]) = v9;
  return (*(STACK[0x57D8] + 8 * (v0 ^ (96 * v8))))();
}

uint64_t sub_10035AF4C(__n128 a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6.n128_u64[0] = (v5 + v4 + 13) & 0xF;
  v6.n128_u64[1] = (v5 + v4 + 12) & 0xF;
  v7.n128_u64[0] = (v5 + v4 + 11) & 0xF;
  v7.n128_u64[1] = (v5 + v4 + 10) & 0xF;
  v8.n128_u64[0] = (v5 + v4 + 9) & 0xF;
  v8.n128_u64[1] = ((v5 ^ 8) + v4) & 0xF;
  v9.n128_u64[0] = (v5 + v4 + 7) & 0xF;
  v9.n128_u64[1] = (v5 + v4 + 6) & 0xF;
  v10.n128_u64[0] = (v5 + v4 + 5) & 0xF;
  v10.n128_u64[1] = (v5 + v4 + 4) & 0xF;
  v11.n128_u64[0] = (v5 + v4 + 3) & 0xFLL;
  v11.n128_u64[1] = (v5 + v4 + 2) & 0xFLL;
  v12.n128_u64[0] = (v5 + v4 + 1) & 0xFLL;
  v12.n128_u64[1] = (v5 + v4) & 0xFLL;
  return (*(STACK[0x57D8] + 8 * (a4 ^ 0xD4FA7F14 ^ (63648 * (a4 > 0xE2ED31D1)))))(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10035B114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x5780]) = STACK[0x5150] & 0x4D31F73E;
  v10 = (v9 ^ 0x190FE7E2EA023527) - ((v9 ^ 0x190FE7E2EA023527uLL) >> 30) + (((v9 ^ 0x190FE7E2EA023527) - ((v9 ^ 0x190FE7E2EA023527uLL) >> 30)) >> 14);
  v11 = ((v10 - (v10 >> 7)) ^ 0x63C7C67B3D8D0ED6) + (((v10 - (v10 >> 7)) ^ 0x63C7C67B3D8D0ED6) >> 24) + ((((v10 - (v10 >> 7)) ^ 0x63C7C67B3D8D0ED6) + (((v10 - (v10 >> 7)) ^ 0x63C7C67B3D8D0ED6) >> 24)) >> 13);
  v12 = ((v11 - (v11 >> 6)) ^ 0xDDFAC0FD6E2FA4DBLL) + (((v11 - (v11 >> 6)) ^ 0xDDFAC0FD6E2FA4DBLL) >> 26) + ((((v11 - (v11 >> 6)) ^ 0xDDFAC0FD6E2FA4DBLL) + (((v11 - (v11 >> 6)) ^ 0xDDFAC0FD6E2FA4DBLL) >> 26)) >> 14);
  v13 = v12 - (v12 >> 1);
  v14 = v13 - 0x122AEC67E2EBEE5ELL + ((v13 - 0x122AEC67E2EBEE5ELL) >> 24) - ((v13 - 0x122AEC67E2EBEE5ELL + ((v13 - 0x122AEC67E2EBEE5ELL) >> 24)) >> 13);
  v15 = v14 + (v14 >> 5) - 0x4D35EDA7233725F1 - ((v14 + (v14 >> 5) - 0x4D35EDA7233725F1) >> 24) - ((v14 + (v14 >> 5) - 0x4D35EDA7233725F1 - ((v14 + (v14 >> 5) - 0x4D35EDA7233725F1) >> 24)) >> 15);
  v16 = v15 + (v15 >> 3) + 0x3A889493B9EAC550 - ((v15 + (v15 >> 3) + 0x3A889493B9EAC550) >> 28) + ((v15 + (v15 >> 3) + 0x3A889493B9EAC550 - ((v15 + (v15 >> 3) + 0x3A889493B9EAC550) >> 28)) >> 12);
  v17 = v16 + (v16 >> 4);
  LODWORD(v13) = v17 ^ v13;
  v18 = v17 + 0x1F029AA24E928DABLL + ((v17 + 0x1F029AA24E928DABLL) >> 29) - ((v17 + 0x1F029AA24E928DABLL + ((v17 + 0x1F029AA24E928DABLL) >> 29)) >> 9);
  v19 = v18 + (v18 >> 1) + 0x18F2DB87AFE1ED31 + ((v18 + (v18 >> 1) + 0x18F2DB87AFE1ED31) >> 27) + ((v18 + (v18 >> 1) + 0x18F2DB87AFE1ED31 + ((v18 + (v18 >> 1) + 0x18F2DB87AFE1ED31) >> 27)) >> 12);
  v20 = v19 + (v19 >> 8) - 0x76F2F6D54339999BLL - ((v19 + (v19 >> 8) - 0x76F2F6D54339999BLL) >> 26) - ((v19 + (v19 >> 8) - 0x76F2F6D54339999BLL - ((v19 + (v19 >> 8) - 0x76F2F6D54339999BLL) >> 26)) >> 10);
  return (*(STACK[0x57D8] + 8 * a7))(v13 ^ v8 & (2 * v13) ^ v7 ^ (v20 - (v20 >> 2)) ^ v8 & (2 * (v20 - (v20 >> 2))), -1416043002);
}

uint64_t sub_10035B330(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 58;
  return (*(STACK[0x57D8] + 8 * (v1 - 295)))();
}

uint64_t sub_10035B600()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x6128];
  LODWORD(STACK[0x9094]) = -32197395;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10035B67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8 + a4 + a2;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8) + 0x31BF74D3543665CBLL;
  v15 = __ROR8__((a5 + 2565) ^ 0x90B241F9F0AB2A69 ^ v14, 8);
  v14 ^= 0x1D49E76351185C66uLL;
  v16 = (((2 * (v15 + v14)) & 0xEE85EC07E7726862) - (v15 + v14) - 0x7742F603F3B93432) ^ 0x639829CB5A5AFF21;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ a8;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0xEEF18F2D76CC4B12) - (v20 + v19) + v11) ^ v12;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x67D37711E3C8D077;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x59A39C28B755E357;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0xE37E50AA4CE9FE1ALL) + 0x71BF28552674FF0DLL) ^ 0xFAA91D5DC2251305;
  *(v9 + a4) = (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v26, 61))) ^ v10) >> (8 * (v13 & 7u))) ^ *v13;
  return (*(STACK[0x57D8] + 8 * ((58 * (a4 == 15)) ^ a5)))();
}

uint64_t sub_10035B82C@<X0>(int a1@<W8>)
{
  v3 = a1 + 1;
  v4 = v3 + 1999550264 < v2;
  if (v2 < 0x772EB738 != v3 >= 0x88D148C8)
  {
    v4 = v2 < 0x772EB738;
  }

  return (*(STACK[0x57D8] + 8 * ((114 * v4) ^ v1)))();
}

uint64_t sub_10035C1F8()
{
  LODWORD(STACK[0xB698]) = LODWORD(STACK[0xBAC4]) + v0;
  v1 = STACK[0x57D8];
  v2 = STACK[0x1C8C];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1C8C]));
  return (*(v1 + 8 * (v2 ^ 0x1330)))();
}

uint64_t sub_10035C56C()
{
  STACK[0x76B0] = v0;
  STACK[0x8C30] = v3;
  return (*(STACK[0x57D8] + 8 * (((v2 == 0) * (v1 - 22504)) ^ (v1 + 3555))))();
}

uint64_t sub_10035C5A4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B10])))(v2);
}

uint64_t sub_10035C698()
{
  v2 = (STACK[0x1C98] - ((v1 - 240) | 0x1CBF0743C88F7AA7) + 0x1CBF0743C88F7AA7) ^ 0x92DDAA72799DD60FLL;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ (551690071 * ((LODWORD(STACK[0x1C98]) - ((v1 - 240) | 0xC88F7AA7) - 930121049) ^ 0x799DD60F));
  LODWORD(STACK[0x1D4C4]) = (551690071 * v2) ^ (v0 + 1160694909) ^ 0xF82;
  v3 = v0 + 1160694909 - 551690071 * v2;
  LODWORD(STACK[0x1D4CC]) = v3;
  STACK[0x1D4E0] = 551690071 * v2;
  LODWORD(STACK[0x1D4C8]) = v3 - 11;
  STACK[0x1D4D8] = -551690071 * v2;
  LODWORD(STACK[0x1D4D0]) = 551690071 * v2;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2411)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_10035C788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a6 + 650477278 - ((a6 + 650477278) >> 12) + ((a6 + 650477278 - ((a6 + 650477278) >> 12)) >> 5);
  LODWORD(STACK[0x5230]) = v7;
  v8 = v7 - 981453883 - ((v7 - 981453883) >> 11) - ((v7 - 981453883 - ((v7 - 981453883) >> 11)) >> 2);
  LODWORD(STACK[0x5228]) = v8;
  LODWORD(STACK[0x5220]) = v8 - 1215832170 + ((v8 - 1215832170) >> 9) - ((v8 - 1215832170 + ((v8 - 1215832170) >> 9)) >> 1);
  return (*(STACK[0x57D8] + 8 * v6))(LODWORD(STACK[0x5130]), a2, LODWORD(STACK[0x5340]), STACK[0x5128], LODWORD(STACK[0x5770]));
}

uint64_t sub_10035C904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x51B8] ^ 0x1E17;
  v7 = STACK[0xC4B0];
  v8 = STACK[0x57D8];
  v9 = STACK[0x2234];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2234]));
  return (*(v8 + 8 * (v6 + v9 - 15927)))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_10035C9DC@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v7 = v2 + v3 - 0x3747B733DD03AC3;
  v8 = __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = v8 - ((2 * v8 + 0x9827CF4CE56C3ECLL) & 0x3957F10543DB6692) + 0x416D36FD0919153FLL;
  v10 = v9 ^ 0x31BAB6CBFA7BEABCLL;
  v11 = (__ROR8__(v9 ^ 0x17B34518C320E509, 8) + (v9 ^ 0x31BAB6CBFA7BEABCLL)) ^ 0x9D63C3648794ABC0;
  v12 = __ROR8__(v11, 8);
  v13 = *(STACK[0x57D8] + 8 * v4);
  v14 = v11 ^ __ROR8__(v10, 61);
  v15 = (v12 + v14) ^ 0x893772B00383F7DCLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - ((2 * (v17 + v16)) & 0xD6B62F72DA3AF558) - 0x14A4E84692E28554) ^ 0xC3791E20E6C1DACFLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v5;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v19, 61);
  v23 = (v21 + v22 - ((2 * (v21 + v22)) & 0x2FDC4994DED0F27ELL) + 0x17EE24CA6F68793FLL) ^ 0x1232289882D5A91ALL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x2EAD2D51E70187D4;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  *v7 = (((((2 * (v27 + v26)) | 0x92B6D773076E6100) - (v27 + v26) + 0x36A494467C48CF80) ^ 0x969F7B97163778FDLL) >> (8 * (v7 & 7u))) ^ HIBYTE(a2) ^ 0x87;
  v28 = __ROR8__((v7 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = v28 - ((2 * v28 + 0x49827CF4CE56C3ECLL) & 0xC99C1DCC454814BCLL) - 0x7670B29F763093ACLL;
  v30 = v29 ^ 0x6FD6B37C40695C1ELL;
  v29 ^= 0x49DF40AF793253ABuLL;
  v31 = (__ROR8__(v30, 8) + v29) ^ 0x9D63C3648794ABC0;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((v33 + v32 - ((2 * (v33 + v32)) & 0xB386C3C7855383A0) - 0x263C9E1C3D563E30) ^ 0x50F41353C12A360CLL, 8);
  v35 = (v33 + v32 - ((2 * (v33 + v32)) & 0xB386C3C7855383A0) - 0x263C9E1C3D563E30) ^ 0x50F41353C12A360CLL ^ __ROR8__(v32, 61);
  v36 = (v34 + v35) ^ 0x282209998BDCA063;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (0x160D9F1C57F957A8 - ((v38 + v37) | 0x160D9F1C57F957A8) + ((v38 + v37) | 0xE9F260E3A806A857)) ^ 0x7618F1A5397C8CCLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) | 0x3B9F87464EC80908) - (v41 + v40) + 0x62303C5CD89BFB7CLL) ^ 0x9813CFF1CAD9D4A1;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) & 0xD1A48FD1CB971A3ALL) - (v44 + v43) - 0x68D247E8E5CB8D1ELL) ^ 0xB9809546FD35F536;
  v46 = __ROR8__((v7 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v7 + 1) = (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v43, 61))) ^ 0x5FC4102E9580487DLL) >> (8 * ((v7 + 1) & 7))) ^ BYTE6(a2) ^ 0x32;
  v47 = ((2 * (v46 - 0x5B3EC18598D49E0ALL)) | 0xE03B6E28800C33FELL) - (v46 - 0x5B3EC18598D49E0ALL) - 0x701DB714400619FFLL;
  v48 = v47 ^ 0xFB050A8E22CB4FBFLL;
  v47 ^= 0xDD0CF95D1B90400ALL;
  v49 = __ROR8__(v48, 8);
  v50 = (((2 * (v49 + v47)) | 0xA87531EBA9B966ALL) - (v49 + v47) + 0x7ABC5670A2B234CBLL) ^ 0x18206AEBDAD960F5;
  v51 = v50 ^ __ROR8__(v47, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x893772B00383F7DCLL;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) & 0xD83815A221AB35C8) - (v54 + v53) - 0x6C1C0AD110D59AE5) ^ 0xBBC1FCB764F6C578;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (0xF24E521F574762C7 - ((v57 + v56) | 0xF24E521F574762C7) + ((v57 + v56) | 0xDB1ADE0A8B89D38)) ^ 0xE32242195329FDA3;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x5DC0C52EDBDD025;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (0xEB5B73780973251ALL - ((v62 + v61) | 0xEB5B73780973251ALL) + ((v62 + v61) | 0x14A48C87F68CDAE5)) ^ 0x3A09A1D6118D5D31;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  *(v7 + 2) = (((0x28BAF2687A7AF374 - ((v65 + v64) | 0x28BAF2687A7AF374) + ((v65 + v64) | 0xD7450D9785850C8BLL)) ^ 0x88811DB9100544F6) >> (8 * ((v7 + 2) & 7))) ^ BYTE5(a2) ^ 0xDA;
  v66 = __ROR8__((v7 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v67 = -2 - (((v6 - v66) | 0x214CCD444D3DA228) + ((v66 + 0x24C13E7A672B61F6) | 0xDEB332BBB2C25DD7));
  v68 = __ROR8__(v67 ^ 0xAA5470DE2FF0F468, 8);
  v67 ^= 0x8C5D830D16ABFBDDLL;
  v69 = (v68 + v67) ^ 0x9D63C3648794ABC0;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x893772B00383F7DCLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x282209998BDCA063;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) | 0xA86919FDD4060E30) - (v75 + v74) - 0x54348CFEEA030718) ^ 0xBAA7630711926783;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x5DC0C52EDBDD025;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0x2EAD2D51E70187D4;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  *(v7 + 3) = (((((v82 + v81) ^ 0x4E7DD96BC7B5F115) - ((2 * ((v82 + v81) ^ 0x4E7DD96BC7B5F115)) & 0x37F102CB054546F6) + 0x1BF8816582A2A37BLL) ^ 0xA414820D0971A13uLL) >> (8 * ((v7 + 3) & 7))) ^ BYTE4(a2) ^ 0x1C;
  v83 = __ROR8__((v7 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v84 = -2 - (((a1 - v83) | 0xC146854EDF38E771) + ((v83 - 0x5B3EC18598D49E0ALL) | 0x3EB97AB120C7188ELL));
  v85 = v84 ^ 0x4A5E38D4BDF5B131;
  v84 ^= 0x6C57CB0784AEBE84uLL;
  v86 = __ROR8__(v85, 8);
  v87 = (((2 * (v86 + v84)) & 0x5B856D54EE81EBEELL) - (v86 + v84) + 0x523D495588BF0A08) ^ 0xCF5E8A310F2BA1C8;
  v88 = v87 ^ __ROR8__(v84, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x893772B00383F7DCLL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x282209998BDCA063;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ v5;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (0x231414532152812BLL - ((v95 + v94) | 0x231414532152812BLL) + ((v95 + v94) | 0xDCEBEBACDEAD7ED4)) ^ 0xD937E7FE3310AEF1;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0x2EAD2D51E70187D4;
  v99 = __ROR8__(v98, 8);
  v100 = __ROR8__(v97, 61);
  *(v7 + 4) = (((((2 * (v99 + (v98 ^ v100))) | 0x35D78A885745178CLL) - (v99 + (v98 ^ v100)) + 0x65143ABBD45D743ALL) ^ 0xC52FD56ABE22C3BBLL) >> (8 * ((v7 + 4) & 7))) ^ BYTE3(a2) ^ 0x37;
  v101 = __ROR8__((v7 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v102 = ((2 * (v101 - 0x5B3EC18598D49E0ALL)) | 0xFB0A84D7C1F34BCLL) - (v101 - 0x5B3EC18598D49E0ALL) + 0x7827ABD941F065A2;
  v103 = v102 ^ 0xCC0E9BCDCC2CC1ELL;
  v102 ^= 0x2AC91A6FE599C3ABuLL;
  v104 = __ROR8__(v103, 8);
  v105 = __ROR8__((((2 * (v104 + v102)) & 0x33EE57D4AAA8E4CELL) - (v104 + v102) + 0x6608D415AAAB8D98) ^ 0xFB6B17712D3F2658, 8);
  v106 = (((2 * (v104 + v102)) & 0x33EE57D4AAA8E4CELL) - (v104 + v102) + 0x6608D415AAAB8D98) ^ 0xFB6B17712D3F2658 ^ __ROR8__(v102, 61);
  v107 = (v105 + v106 - ((2 * (v105 + v106)) & 0x3BD6F6090EF3F7CCLL) + 0x1DEB7B048779FBE6) ^ 0x94DC09B484FA0C3ALL;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (0x455302FC178A4769 - ((v109 + v108) | 0x455302FC178A4769) + ((v109 + v108) | 0xBAACFD03E875B896)) ^ 0x928EF49A63A918F5;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((2 * ((v112 + v111) ^ 0xBF3BA610F34FDCF3)) & 0x9EF6EC6C774AB486) - ((v112 + v111) ^ 0xBF3BA610F34FDCF3) - 0x4F7B76363BA55A44) ^ 0xE12CC020CC8419D4;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (v115 + v114 - ((2 * (v115 + v114)) & 0x8D73200556F12CC0) + 0x46B99002AB789660) ^ 0x43659C5046C54645;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0x2EAD2D51E70187D4;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = __ROR8__(v118, 8);
  *(v7 + 5) = (((((2 * (v120 + v119)) & 0xFE44E0D5AC34F454) - (v120 + v119) - 0x7F22706AD61A7A2BLL) ^ 0xDF199FBBBC65CDA8) >> (8 * ((v7 + 5) & 7))) ^ BYTE2(a2) ^ 0xFC;
  v121 = __ROR8__((v7 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v122 = ((2 * (v121 - 0x5B3EC18598D49E0ALL)) | 0x647981ABE5E50392) - (v121 - 0x5B3EC18598D49E0ALL) - 0x323CC0D5F2F281C9;
  v123 = v122 ^ 0xB9247D4F903FD789;
  v122 ^= 0x9F2D8E9CA964D83CLL;
  v124 = __ROR8__(v123, 8);
  v125 = (((2 * (v124 + v122)) & 0xDC8A7A59EF48667ELL) - (v124 + v122) + 0x11BAC2D3085BCCC0) ^ 0x8CD901B78FCF6700;
  v126 = v125 ^ __ROR8__(v122, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x893772B00383F7DCLL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (0xED54D5F7E432E537 - ((v129 + v128) | 0xED54D5F7E432E537) + ((v129 + v128) | 0x12AB2A081BCD1AC8)) ^ 0x3A8923919011BAABLL;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = __ROR8__(v130, 8);
  v133 = (((2 * (v132 + v131)) & 0x9CDEA8C4145BD2B0) - (v132 + v131) - 0x4E6F54620A2DE959) ^ 0x5F0344640E43763CLL;
  v134 = v133 ^ __ROR8__(v131, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((2 * (v135 + v134)) & 0x13CD403E6C4B9C20) - (v135 + v134) - 0x9E6A01F3625CE11) ^ 0xF3C553B22467E1CALL;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0x2EAD2D51E70187D4;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  *(v7 + 6) = (((v140 + v139 - ((2 * (v140 + v139)) & 0xDBE44936F6129DEELL) - 0x120DDB6484F6B109) ^ 0xB23634B5EE89068ALL) >> (8 * ((v7 + 6) & 7))) ^ BYTE1(a2) ^ 0x50;
  v141 = __ROR8__((v7 + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v142 = ((v141 - 0x5B3EC18598D49E0ALL) | 0x70C93B313AA7E14DLL) - ((v141 - 0x5B3EC18598D49E0ALL) | 0x8F36C4CEC5581EB2) - 0x70C93B313AA7E14ELL;
  v143 = v142 ^ 0xFBD186AB586AB70DLL;
  v142 ^= 0xDDD875786131B8B8;
  v144 = (__ROR8__(v143, 8) + v142) ^ 0x9D63C3648794ABC0;
  v145 = __ROR8__(v144, 8);
  v146 = v144 ^ __ROR8__(v142, 61);
  v147 = (((2 * (v145 + v146)) & 0xAD23570A2DCE8E8ELL) - (v145 + v146) - 0x5691AB8516E74748) ^ 0x205926CAEA9B4F64;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0x282209998BDCA063;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v152 = (((2 * (v151 + v150)) & 0x7B9FFAA596DA8668) - (v151 + v150) + 0x423002AD3492BCCBLL) ^ 0xACA3ED54CF03DC50;
  v153 = v152 ^ __ROR8__(v150, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0x5DC0C52EDBDD025;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = __ROR8__(v154, 8);
  v157 = (((2 * (v156 + v155)) & 0x33262DBFAA1200CALL) - (v156 + v155) + 0x666CE9202AF6FF9ALL) ^ 0x48C1C471CDF7784ELL;
  *(v7 + 7) = (((__ROR8__(v157, 8) + (v157 ^ __ROR8__(v155, 61))) ^ 0x5FC4102E9580487DuLL) >> (8 * ((v7 + 7) & 7))) ^ a2 ^ 0xB;
  return v13();
}

uint64_t sub_10035D984()
{
  v3 = STACK[0x51B8];
  *(v0 + 600) = (STACK[0x51B8] + 1518564385) ^ (1089234077 * ((v2 - 240) ^ 0xE05DDC78));
  v4 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v3 + 9214)))(v2 - 240);
  STACK[0xBF00] = *(v0 + 592);
  *(v0 + 600) = v3 + 800103191 * ((((v2 - 240) | 0x943F8A70) - ((v2 - 240) & 0x943F8A70)) ^ 0xE57BC713) + 771467867;
  (*(v4 + 8 * (v3 + 9246)))(v2 - 240);
  STACK[0x7978] = *(v0 + 592);
  *(v0 + 592) = (v3 - 673070585) ^ (((2 * ((v2 - 240) & 0x19DD270) - (v2 - 240) + 2120363400) ^ 0xB88CD6CF) * v1);
  v5 = (*(v4 + 8 * SLODWORD(STACK[0x121C])))(v2 - 240);
  STACK[0x9D98] = *(v0 + 600);
  return (*(v4 + 8 * SLODWORD(STACK[0x1210])))(v5);
}

uint64_t sub_10035DAC8()
{
  STACK[0x67E0] = STACK[0xDD40];
  LODWORD(STACK[0xBBB8]) = -769883974;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x21AC])))();
}

uint64_t sub_10035DB58()
{
  STACK[0x57C0] = STACK[0xC9F8];
  STACK[0x53A0] = STACK[0x9F70];
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x37A7)))();
}

uint64_t sub_10035DC34()
{
  v1 = STACK[0x51B8] - 20019;
  LODWORD(STACK[0xBCE4]) = LODWORD(STACK[0xB698]) + v0;
  return (*(STACK[0x57D8] + 8 * (((*(STACK[0x60B8] + 856) == 0) * (v1 - 12688 + LODWORD(STACK[0x2120]))) ^ LODWORD(STACK[0x1C90]))))();
}

uint64_t sub_10035DCB0()
{
  STACK[0x5FE8] = STACK[0xB348];
  LODWORD(STACK[0xB8AC]) = v1 - 2;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10035DD30()
{
  v0 = (STACK[0x51B8] + 546442665) & 0xDF6DFF5F;
  v1 = STACK[0x6DC0];
  STACK[0x7C08] = STACK[0x6DC0];
  v2 = STACK[0x7ED8];
  STACK[0x8BB0] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v2 + STACK[0x36C0] + (v0 ^ 0xFFFFFFFFFFFFF6B1);
  STACK[0x5D80] = 0;
  return (*(STACK[0x57D8] + 8 * ((19 * (0xF726234C92AC6E47 * *(v1 + 480) == 0x291872199EE7C0FFLL)) ^ LODWORD(STACK[0x2D84]))))();
}

uint64_t sub_10035DE34()
{
  v0 = LODWORD(STACK[0x3938]) - 12229;
  STACK[0xC4D0] = &STACK[0xBC78];
  LODWORD(STACK[0x7EBC]) = -1389924012;
  STACK[0x7910] = 0xB04A9CE3275EFA71;
  LODWORD(STACK[0x9C14]) = 0;
  LODWORD(STACK[0xA25C]) = -232423389;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10035DF58@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  v5 = *v2;
  v6 = __ROR8__((v5 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = ((2 * (v6 + a1)) | 0xEEFC30F2A2334930) - (v6 + a1) + 0x881E786AEE65B68;
  v8 = v7 ^ 0x18C646E8752D141CLL;
  v7 ^= 0x689D6CE751B7FF06uLL;
  v9 = (__ROR8__(v8, 8) + v7) ^ 0x1F7B92942DEF21EFLL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x1C02DF5B258263EDLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x51FC477E33DE4033;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (0x54C3E2063D671C49 - ((v15 + v14) | 0x54C3E2063D671C49) + ((v15 + v14) | 0xAB3C1DF9C298E3B6)) ^ 0x897014338694EFBDLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xA199F9AE5F876A45;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = *v4;
  v22 = (0xC3785CBDBE0290C0 - ((v20 + v19) | 0xC3785CBDBE0290C0) + ((v20 + v19) | 0x3C87A34241FD6F3FLL)) ^ 0x8E059D56E1C16C58;
  v23 = __ROR8__((v5 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v5 + 4) = v3 ^ 0x46 ^ (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v19, 61))) ^ 0x69517CAD07781183) >> (8 * ((v5 + 4) & 7)));
  v24 = (0xB1F49ABE1B6CA29CLL - v23) & 0xA8EC9B5FEED3CB67 | (v23 + a1) & 0x551364A0112C3498;
  v25 = v24 ^ 0x4554C5CECAE77BE3;
  v24 ^= 0x350FEFC1EE7D90F9uLL;
  v26 = (__ROR8__(v25, 8) + v24) ^ 0x1F7B92942DEF21EFLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x1C02DF5B258263EDLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x51FC477E33DE4033;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x224C09CA440C0C0BLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (v34 + v33 - ((2 * (v34 + v33)) & 0x2A5E8F67628A4158) + 0x152F47B3B14520ACLL) ^ 0xB4B6BE1DEEC24AE9;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xB2823E14A03C0367;
  v38 = __ROR8__(v37, 8);
  v39 = __ROR8__(v36, 61);
  *(v5 + 5) = a2 ^ 0xA ^ (((((2 * ((v38 + (v37 ^ v39)) ^ 0x660F192E9415E41BLL)) & 0x5329D8C9DC6CC36CLL) - ((v38 + (v37 ^ v39)) ^ 0x660F192E9415E41BLL) + 0x566B139B11C99E49) ^ 0x5935761882A46BD1) >> (8 * ((v5 + 5) & 7)));
  return v21();
}

uint64_t sub_10035E2C8@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char a6@<W5>, int a7@<W6>, unint64_t a8@<X8>)
{
  LODWORD(STACK[0x9C34]) = STACK[0x57C0];
  STACK[0xA438] = v8;
  LODWORD(STACK[0x8454]) = v10;
  STACK[0xA900] = v16;
  LODWORD(STACK[0xBD24]) = a4;
  LODWORD(STACK[0xB474]) = v14;
  LODWORD(STACK[0x8F18]) = v21;
  LODWORD(STACK[0x7450]) = v13;
  LODWORD(STACK[0x6DA8]) = v17;
  LODWORD(STACK[0x8F1C]) = a7;
  LODWORD(STACK[0x646C]) = a5;
  LOBYTE(STACK[0xA723]) = a6;
  LODWORD(STACK[0x71C4]) = v12;
  LODWORD(STACK[0x916C]) = v18;
  LODWORD(STACK[0x773C]) = a2;
  LODWORD(STACK[0xA0E8]) = a3;
  STACK[0xB1A8] = a1;
  LOBYTE(STACK[0x5B2F]) = v9;
  LOBYTE(STACK[0x878B]) = v20;
  LOBYTE(STACK[0x78C7]) = v19;
  LODWORD(STACK[0x9758]) = v11;
  STACK[0xC458] = a8;
  return (*(STACK[0x57D8] + 8 * ((229 * ((v15 ^ 0xC5 ^ (v12 == ((v15 + 9178) ^ 0xD21CD8C2))) & 1)) ^ v15)))();
}

uint64_t sub_10035E460()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0xD5C32DA2)))();
  STACK[0xA040] = 0;
  return (*(v1 + 8 * ((((v0 + 708642482) | 0x2002) - 708640474) ^ v0 ^ (25970 * (v0 > 0xD03FFDCB)))))(v2);
}

uint64_t sub_10035E57C()
{
  STACK[0x7AA8] = 0;
  LODWORD(STACK[0x8404]) = -769884012;
  return (*(STACK[0x57D8] + 8 * (((v1 == (v0 ^ 0xF778053D)) * (((v0 - 2097938925) & 0x7D0BD7C9) + 8270)) ^ v0)))();
}

uint64_t sub_10035E634@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 22429;
  LOWORD(STACK[0xD54E]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1366 ^ (13336 * ((v1 ^ 0x4A8B9DF0) == 677081041)))))();
}

uint64_t sub_10035E6FC()
{
  v0 = STACK[0x51B8] - 14027;
  STACK[0x61E8] = STACK[0xE7D0];
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10035E734@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x5C56;
  LODWORD(STACK[0x1D4C8]) = (a1 ^ 0x5C56) - 16169987 * ((((v1 - 240) | 0x4D6F047A) - (v1 - 240) + ((v1 - 240) & 0xB290FB80)) ^ 0x18E13152) - 1606516495;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x7865)))(v1 - 240);
  return (*(v3 + 8 * (v2 - 10862)))(v4);
}

uint64_t sub_10035E824()
{
  v0 = (STACK[0x51B8] - 191849047) & 0xB6F7EAF;
  v1 = STACK[0x51B8] - 3398;
  v2 = STACK[0x58B0];
  STACK[0x87C8] = STACK[0x58B0];
  return (*(STACK[0x57D8] + 8 * (((v2 != 0x79CEC8CF5A6FCEBALL) * (v0 - 29828)) ^ v1)))();
}

uint64_t sub_10035E894@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDA50]) = v1;
  LODWORD(STACK[0xDA4C]) = v2;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_10035E8D0(uint64_t a1)
{
  STACK[0x7ED0] = v1;
  STACK[0xC880] = v2;
  LODWORD(STACK[0xCD80]) = 947320125;
  return (*(STACK[0x57D8] + 8 * v3))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_10035E9A0(uint64_t a1, int a2)
{
  v2 = STACK[0x4B88];
  *(v2 + 11496) = STACK[0x5138];
  *(v2 + 11488) = STACK[0x53C8];
  return (*(STACK[0x57D8] + 8 * a2))();
}

uint64_t sub_10035EA18()
{
  v0 = STACK[0x51B8] - 17899;
  v1 = STACK[0x51B8] - 19614;
  STACK[0x7778] = STACK[0x7F78] + SLODWORD(STACK[0xC1E4]);
  v2 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x88C)))();
}

uint64_t sub_10035EA94(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = STACK[0x51B8];
  v5 = (STACK[0x51B8] - 588491109) & 0xAFDF739F;
  STACK[0x8FC0] = STACK[0x8290] + 16;
  v6 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (v4 - 20137));
  return (*(v6 + 8 * ((((v4 + 1377935654) > 0x3E1C735A) * (a4 + v5 + 332)) ^ (v4 - 15852))))();
}

uint64_t sub_10035EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x50D0]) = v6;
  v7 = LODWORD(STACK[0x55B0]) ^ 0xB9D6CA66 ^ LODWORD(STACK[0x5398]);
  v8 = STACK[0x5258];
  if (STACK[0x5258])
  {
    v9 = STACK[0x5108];
  }

  else
  {
    v9 = STACK[0x5160];
  }

  if (v8)
  {
    v10 = STACK[0x5408];
  }

  else
  {
    v10 = STACK[0x5130];
  }

  LODWORD(STACK[0x5398]) = v10;
  if (v8)
  {
    v11 = STACK[0x5100];
  }

  else
  {
    v11 = v7;
  }

  if (v8)
  {
    v12 = STACK[0x50F0];
  }

  else
  {
    v7 = STACK[0x50F8];
    v12 = STACK[0x51B0];
  }

  if (v8)
  {
    v13 = STACK[0x50E8];
  }

  else
  {
    v13 = STACK[0x5168];
  }

  if (v8)
  {
    v14 = STACK[0x51A8];
  }

  else
  {
    v14 = STACK[0x51A0];
  }

  if (v8)
  {
    v15 = STACK[0x5158];
  }

  else
  {
    v15 = STACK[0x5188];
  }

  if (v8)
  {
    v16 = STACK[0x53A0];
  }

  else
  {
    v16 = STACK[0x52F8];
  }

  v17 = STACK[0x5050];
  if (LODWORD(STACK[0x52E0]) == 134236192)
  {
    v18 = STACK[0x5068];
  }

  else
  {
    v17 = STACK[0x5060];
    v18 = STACK[0x50C0];
  }

  v19 = STACK[0x53E8];
  if (STACK[0x53E8])
  {
    v20 = STACK[0x5378];
  }

  else
  {
    v20 = STACK[0x5380];
  }

  if (v19)
  {
    v21 = STACK[0x53A0];
  }

  else
  {
    v21 = STACK[0x52F8];
  }

  if (v19)
  {
    v22 = STACK[0x5570] ^ 0xE82D998F ^ LODWORD(STACK[0x50E0]);
  }

  else
  {
    v22 = STACK[0x5028];
  }

  if (v19)
  {
    v23 = STACK[0x5040];
  }

  else
  {
    v23 = STACK[0x4FE8];
  }

  if (v19)
  {
    v24 = STACK[0x4FE8];
  }

  else
  {
    v24 = STACK[0x5570] ^ 0xE82D998F ^ LODWORD(STACK[0x50E0]);
  }

  v25 = STACK[0x5298];
  if (v19)
  {
    v26 = STACK[0x52D0];
  }

  else
  {
    v25 = STACK[0x52A0];
    v26 = STACK[0x5290];
  }

  v27 = (STACK[0x53E8] & 2) == 0;
  v28 = STACK[0x5268];
  if ((v19 & 2) == 0)
  {
    v28 = STACK[0x5260];
  }

  LODWORD(STACK[0x5290]) = v28;
  if ((v19 & 2) != 0)
  {
    v29 = STACK[0x4FF0];
  }

  else
  {
    v29 = STACK[0x5008];
  }

  if ((v19 & 2) != 0)
  {
    v30 = v21;
  }

  else
  {
    v30 = v20;
  }

  LODWORD(STACK[0x51A0]) = v30;
  if ((v19 & 2) != 0)
  {
    v31 = v20;
  }

  else
  {
    v31 = v21;
  }

  v32 = STACK[0x5010];
  if ((v19 & 2) != 0)
  {
    v33 = v17;
  }

  else
  {
    v33 = STACK[0x5010];
  }

  LODWORD(STACK[0x5040]) = v33;
  if ((v19 & 2) != 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = v17;
  }

  LODWORD(STACK[0x5010]) = v34;
  if ((v19 & 2) != 0)
  {
    v35 = STACK[0x5048];
  }

  else
  {
    v35 = v18;
  }

  if ((v19 & 2) != 0)
  {
    v36 = v18;
  }

  else
  {
    v36 = STACK[0x5048];
  }

  v37 = STACK[0x5288];
  if (v27)
  {
    v37 = STACK[0x5280];
    v38 = v22;
  }

  else
  {
    v38 = v23;
  }

  LODWORD(STACK[0x50C0]) = v38;
  if (v27)
  {
    v39 = v23;
  }

  else
  {
    v39 = v22;
  }

  LODWORD(STACK[0x5050]) = v39;
  v40 = STACK[0x5030];
  if (v27)
  {
    v41 = v24;
  }

  else
  {
    v41 = STACK[0x5030];
  }

  LODWORD(STACK[0x5048]) = v41;
  if (v27)
  {
    v42 = v40;
  }

  else
  {
    v42 = v24;
  }

  LODWORD(STACK[0x5068]) = v42;
  if (v27)
  {
    v43 = v25;
  }

  else
  {
    v43 = v26;
  }

  LODWORD(STACK[0x5280]) = v43;
  if (v27)
  {
    v44 = v26;
  }

  else
  {
    v44 = v25;
  }

  LODWORD(STACK[0x52A0]) = v44;
  v45 = STACK[0x5278];
  if (!v27)
  {
    v45 = STACK[0x5270];
  }

  LODWORD(STACK[0x52F8]) = v45;
  v46 = (v8 & 2) == 0;
  v47 = STACK[0x53E0];
  if ((v8 & 2) != 0)
  {
    v47 = STACK[0x53A8];
  }

  LODWORD(STACK[0x5288]) = v47;
  v48 = STACK[0x5170];
  if ((v8 & 2) != 0)
  {
    v49 = v16;
  }

  else
  {
    v49 = STACK[0x5170];
  }

  LODWORD(STACK[0x50F8]) = v49;
  if ((v8 & 2) != 0)
  {
    v50 = v48;
  }

  else
  {
    v50 = v16;
  }

  LODWORD(STACK[0x50F0]) = v50;
  v51 = STACK[0x54D0];
  if ((v8 & 2) != 0)
  {
    v51 = STACK[0x5460];
  }

  LODWORD(STACK[0x53A8]) = v51;
  v52 = STACK[0x5420];
  if ((v8 & 2) != 0)
  {
    v52 = STACK[0x5410];
  }

  LODWORD(STACK[0x53A0]) = v52;
  v53 = STACK[0x5180];
  v54 = STACK[0x5178];
  if ((v8 & 2) != 0)
  {
    v55 = STACK[0x5180];
  }

  else
  {
    v55 = STACK[0x5178];
  }

  LODWORD(STACK[0x50E8]) = v55;
  if ((v8 & 2) != 0)
  {
    v56 = v54;
  }

  else
  {
    v56 = v53;
  }

  LODWORD(STACK[0x5268]) = v56;
  v57 = STACK[0x54B0];
  if ((v8 & 2) == 0)
  {
    v57 = STACK[0x5470];
  }

  LODWORD(STACK[0x53E0]) = v57;
  v58 = STACK[0x5440];
  if ((v8 & 2) != 0)
  {
    v58 = STACK[0x5430];
  }

  LODWORD(STACK[0x5130]) = v58;
  v59 = STACK[0x5190];
  if ((v8 & 2) != 0)
  {
    v60 = v11;
  }

  else
  {
    v60 = STACK[0x5190];
  }

  LODWORD(STACK[0x5380]) = v60;
  if ((v8 & 2) == 0)
  {
    v59 = v11;
  }

  LODWORD(STACK[0x5378]) = v59;
  v61 = STACK[0x53D8];
  if ((v8 & 2) == 0)
  {
    v61 = STACK[0x5368];
  }

  LODWORD(STACK[0x5410]) = v61;
  v62 = STACK[0x5390];
  if ((v8 & 2) != 0)
  {
    v62 = STACK[0x5358];
  }

  LODWORD(STACK[0x5408]) = v62;
  if ((v8 & 2) != 0)
  {
    v63 = STACK[0x5198];
  }

  else
  {
    v63 = v7;
  }

  if ((v8 & 2) == 0)
  {
    v7 = STACK[0x5198];
  }

  LODWORD(STACK[0x5368]) = v7;
  if ((v8 & 2) != 0)
  {
    v64 = v13;
  }

  else
  {
    v64 = v12;
  }

  if ((v8 & 2) != 0)
  {
    v65 = v12;
  }

  else
  {
    v65 = v13;
  }

  LODWORD(STACK[0x53D8]) = v65;
  v66 = STACK[0x51D8];
  v67 = STACK[0x51C0];
  if ((v8 & 2) != 0)
  {
    v68 = STACK[0x51C0];
  }

  else
  {
    v68 = STACK[0x51D8];
  }

  LODWORD(STACK[0x5460]) = v68;
  if ((v8 & 2) != 0)
  {
    v69 = v66;
  }

  else
  {
    v69 = v67;
  }

  LODWORD(STACK[0x5430]) = v69;
  v70 = STACK[0x5348];
  if ((v8 & 2) != 0)
  {
    v70 = STACK[0x5340];
  }

  LODWORD(STACK[0x5470]) = v70;
  v71 = STACK[0x5338];
  if ((v8 & 2) != 0)
  {
    v71 = STACK[0x5310];
  }

  LODWORD(STACK[0x54B0]) = v71;
  if ((v8 & 2) != 0)
  {
    v72 = v14;
  }

  else
  {
    v72 = v15;
  }

  LODWORD(STACK[0x5390]) = v72;
  if ((v8 & 2) != 0)
  {
    v73 = v15;
  }

  else
  {
    v73 = v14;
  }

  v74 = STACK[0x5320];
  if ((v8 & 2) == 0)
  {
    v74 = STACK[0x5318];
  }

  LODWORD(STACK[0x54D0]) = v74;
  v75 = STACK[0x5700];
  LODWORD(STACK[0x5320]) = a6 ^ (2 * (a6 & STACK[0x5700]));
  LODWORD(STACK[0x5338]) = v31 ^ (2 * (v31 & v75));
  if ((v8 & 2) != 0)
  {
    v76 = v10;
  }

  else
  {
    v76 = v9;
  }

  LODWORD(STACK[0x50D8]) = v9;
  v77 = v75;
  v78 = STACK[0x56F0];
  v79 = STACK[0x5720];
  v80 = STACK[0x57C0];
  v81 = (((v76 ^ (2 * (v76 & v75))) & STACK[0x56F0]) << (STACK[0x5680] & 0x1A ^ 8) << (STACK[0x5680] & 0x25 ^ 5)) ^ (((v76 ^ (2 * (v76 & v75))) & STACK[0x5720]) >> STACK[0x57C0]);
  LODWORD(STACK[0x5190]) = v81;
  v82 = STACK[0x5670];
  v83 = LODWORD(STACK[0x5018]) ^ (2 * (STACK[0x5018] & LODWORD(STACK[0x5670])));
  v84 = LODWORD(STACK[0x5038]) ^ (2 * (STACK[0x5038] & v75));
  v85 = STACK[0x57B0];
  v86 = ((v83 & v78) << STACK[0x57B0]) | ((v83 & v79) >> v80);
  LODWORD(STACK[0x5060]) = v86;
  LODWORD(STACK[0x5108]) = v63;
  v87 = STACK[0x5630];
  v88 = STACK[0x5760];
  v89 = ((v84 & v79) >> v80) | ((v84 & STACK[0x5760]) << v85);
  LODWORD(STACK[0x5038]) = v89;
  v90 = STACK[0x56E0];
  v91 = (((v37 ^ (2 * (v37 & v82))) & STACK[0x56E0]) >> v80) + (((v37 ^ (2 * (v37 & v82))) & v88) << v85);
  LODWORD(STACK[0x5158]) = v91;
  v92 = LODWORD(STACK[0x50A0]) ^ (2 * (STACK[0x50A0] & v82));
  v93 = STACK[0x5790];
  v94 = ((v92 & v78) << STACK[0x5790]) ^ ((v92 & v90) >> v80);
  LODWORD(STACK[0x5270]) = v94;
  v95 = v36 ^ (2 * (v36 & v82));
  v96 = (((2 * ((v63 ^ 0x321513B) & v77 ^ v87 & 0x63AEC204)) ^ 0x3588008) - 527461569 - ((2 * ((2 * ((v63 ^ 0x321513B) & v77 ^ v87 & 0x63AEC204)) ^ 0x3588008)) & 0xC11F267C)) ^ v63;
  v97 = STACK[0x5780];
  v98 = ((v96 & v79) >> STACK[0x5780]) + ((v96 & v88) << v85);
  LODWORD(STACK[0x5358]) = (((v29 ^ (2 * (v29 & v82))) & v79) >> STACK[0x5780]) | (((v29 ^ (2 * (v29 & v82))) & v88) << v85);
  LODWORD(STACK[0x56C0]) = ((v95 & v90) >> v80) + ((v95 & v88) << v85);
  LODWORD(STACK[0x5100]) = v64;
  v99 = v64 ^ (2 * (v64 & v77));
  v100 = v90;
  v101 = v80;
  LODWORD(v80) = ((v99 & v90) >> v80) + ((v99 & v78) << v85);
  LODWORD(STACK[0x51B0]) = v80;
  v102 = LODWORD(STACK[0x50C8]) ^ (2 * (STACK[0x50C8] & v77));
  LODWORD(STACK[0x5318]) = ((v102 & v78) << v93) ^ ((v102 & v90) >> v97);
  LODWORD(STACK[0x5310]) = (((v35 ^ (2 * (v35 & v77))) & v88) << v85) | (((v35 ^ (2 * (v35 & v77))) & v79) >> v97);
  v103 = STACK[0x5640];
  v104 = 2 * ((v72 ^ 0x6ABA0499) & v82 ^ STACK[0x5640] & 0x220D16D2);
  LODWORD(STACK[0x5278]) = (v104 ^ 0x44080980) - 927526325 - 2 * ((v104 ^ 0x44080980) & 0x48B7124E ^ v104 & 4);
  LODWORD(STACK[0x5348]) = v73;
  v105 = (v73 ^ 0x4BBBFD8C) & v77 ^ v87 & 0x30CEFC7;
  v106 = v103;
  v107 = 2 * ((LODWORD(STACK[0x5540]) ^ 0x48B7124B) & (v103 ^ 0x11CFF5C0) ^ STACK[0x5540] & 0x231B7805);
  v108 = STACK[0x55C0];
  v109 = (LODWORD(STACK[0x55C0]) ^ 0x1E4A183D) & v82 ^ v103 & 0x56FD0A76;
  v110 = ((v107 ^ 0x262002) - 927526325 - 2 * ((v107 ^ 0x262002) & 0x48B7125A ^ v107 & 0x10)) ^ LODWORD(STACK[0x5540]);
  LODWORD(STACK[0x52D0]) = ((v110 & v88) << v85) + ((v110 & v100) >> v97);
  v111 = (((2 * v105) ^ 0x218D908) - 927526325 - 2 * (((2 * v105) ^ 0x218D908) & 0x48B7125E ^ (2 * v105) & 0x14)) ^ v73;
  v112 = ((v111 & v78) << v93) + ((v111 & v100) >> v101);
  v113 = (2 * v109) ^ 0x25A81088;
  v114 = v113 & 0x48B7124E ^ (2 * v109) & 4;
  v115 = v80 + LODWORD(STACK[0x53F8]) - v112;
  LODWORD(STACK[0x5198]) = v112;
  v116 = 1435819441 * ((769513087 * v115 - ((769513087 * v115) >> 16) + ((769513087 * v115 - ((769513087 * v115) >> 16)) >> 8)) ^ LODWORD(STACK[0x5450]));
  v117 = STACK[0x53D0];
  v118 = 1663691833 * ((v116 ^ HIWORD(v116)) + LODWORD(STACK[0x53D0]) - ((v116 ^ HIWORD(v116)) >> 8));
  v119 = STACK[0x53B0];
  v120 = (v118 ^ HIWORD(v118)) - LODWORD(STACK[0x53B0]) + ((v118 ^ HIWORD(v118)) >> 8);
  v121 = v98;
  LODWORD(STACK[0x51A8]) = v98;
  v122 = (-1811301273 * ((v98 - v81) ^ v119)) ^ ((-1811301273 * ((v98 - v81) ^ v119)) >> 16);
  v123 = -2045095201 * (v122 + LODWORD(STACK[0x52E8]) - (v122 >> 8));
  v124 = v123 + HIWORD(v123);
  LODWORD(STACK[0x5340]) = v124;
  LODWORD(STACK[0x5260]) = v124 >> 8;
  v125 = -812030687 * (v124 + v117 - (v124 >> 8)) - ((-812030687 * (v124 + v117 - (v124 >> 8))) >> 16);
  v126 = -556056889 * v120 + ((-556056889 * v120) >> 16) + ((-556056889 * v120 + ((-556056889 * v120) >> 16)) >> 8);
  v127 = -269086093 * (v125 + LODWORD(STACK[0x52A8]) + (v125 >> 8)) + ((-269086093 * (v125 + LODWORD(STACK[0x52A8]) + (v125 >> 8))) >> 16) + ((-269086093 * (v125 + LODWORD(STACK[0x52A8]) + (v125 >> 8)) + ((-269086093 * (v125 + LODWORD(STACK[0x52A8]) + (v125 >> 8))) >> 16)) >> 8);
  if (v46)
  {
    v128 = STACK[0x5398];
  }

  else
  {
    v128 = v9;
  }

  LODWORD(STACK[0x50E0]) = v128;
  LODWORD(STACK[0x5298]) = v127 - v126;
  v129 = v127 - v126 - v126;
  LODWORD(STACK[0x51C0]) = v129;
  v130 = v129 - v126;
  if ((v129 - v126))
  {
    v131 = v86;
  }

  else
  {
    v131 = v94;
  }

  LODWORD(STACK[0x5420]) = v131;
  if (v130)
  {
    v132 = v91;
  }

  else
  {
    v132 = v89;
  }

  LODWORD(STACK[0x5440]) = v132;
  LODWORD(STACK[0x50C8]) = v126;
  v133 = 8 * v126;
  LODWORD(STACK[0x4FD8]) = 8 * v126;
  v134 = -8 * v126;
  LODWORD(STACK[0x55B0]) = v134;
  if ((v130 & 2) != 0)
  {
    v135 = v132;
  }

  else
  {
    v135 = v131;
  }

  v136 = v133 & 0x18;
  v27 = (v133 & 0x18) == 0;
  v137 = (v135 << (v133 & 0x18)) ^ (v135 >> (v134 & 0x18));
  v138 = LODWORD(STACK[0x51A0]) ^ (2 * (STACK[0x51A0] & v82));
  v139 = v79;
  v140 = v97;
  v141 = ((v138 & v88) << v85) | ((v138 & v79) >> v97);
  v142 = ((STACK[0x5320] & v78) << v85) ^ ((STACK[0x5320] & v79) >> v97);
  v143 = ((STACK[0x5338] & v78) << v85) ^ ((STACK[0x5338] & v139) >> v97);
  v144 = STACK[0x5700];
  v145 = LODWORD(STACK[0x52F8]) ^ (2 * (STACK[0x52F8] & LODWORD(STACK[0x5700])));
  v146 = v78;
  v147 = (((v145 & v78) << (STACK[0x5680] & 0x2E ^ 0xC)) << (STACK[0x5680] & 0x11 ^ 1)) | ((v145 & v139) >> v140);
  LODWORD(STACK[0x4BA8]) = v135;
  if (v27)
  {
    v137 = v135;
  }

  LODWORD(STACK[0x52F8]) = v137;
  if (v127)
  {
    v148 = v142;
  }

  else
  {
    v148 = v141;
  }

  if (v127)
  {
    v149 = v141;
  }

  else
  {
    v149 = v147;
  }

  LODWORD(STACK[0x5338]) = v149;
  if (v127)
  {
    v150 = v147;
  }

  else
  {
    v150 = v143;
  }

  LODWORD(STACK[0x4FD0]) = v150;
  if ((v127 & 1) == 0)
  {
    v143 = v142;
  }

  LODWORD(STACK[0x51D8]) = v143;
  v151 = v113 - 927526325 - 2 * v114;
  v152 = STACK[0x5380];
  v153 = (2 * ((LODWORD(STACK[0x5380]) ^ 0x6992FDD1) & v82 ^ v106 & 0x91D6EEE)) ^ 0x281988;
  v154 = STACK[0x56E0];
  v155 = STACK[0x57C0];
  v156 = (((LODWORD(STACK[0x5278]) ^ LODWORD(STACK[0x5390])) & STACK[0x56E0]) >> STACK[0x57C0]) | (((LODWORD(STACK[0x5278]) ^ LODWORD(STACK[0x5390])) & v146) << v93);
  LODWORD(STACK[0x5188]) = v156;
  v157 = (((v151 ^ v108) & v88) << v93) ^ (((v151 ^ v108) & v139) >> v140);
  LODWORD(STACK[0x5180]) = v157;
  v158 = v153 - 527461569 - ((2 * v153) & 0xC11F267C);
  v159 = STACK[0x5378];
  v160 = (LODWORD(STACK[0x5378]) ^ 0x787C55AC) & v144;
  v161 = STACK[0x5630];
  v162 = v160 ^ STACK[0x5630] & 0x18F3C693;
  v163 = (((v158 ^ v152) & v146) << v93) | (((v158 ^ v152) & v154) >> v155);
  LODWORD(STACK[0x5178]) = v163;
  v164 = STACK[0x5368];
  v165 = (2 * ((LODWORD(STACK[0x5368]) ^ 0x608F933F) & (v161 ^ 0x3EBD3F74) ^ STACK[0x5368] & 0x3F5153F0)) ^ 0x40022660;
  v166 = (((2 * v162) ^ 0x1C08900) - 527461569 - ((2 * ((2 * v162) ^ 0x1C08900)) & 0xC11F267C)) ^ v159;
  v167 = ((v166 & v146) << v93) | ((v166 & v139) >> v140);
  LODWORD(STACK[0x5168]) = v167;
  v168 = (v165 - 527461569 - ((2 * v165) & 0xC11F267C)) ^ v164;
  v169 = v146;
  v170 = ((v168 & v154) >> v155) | ((v168 & v146) << v93);
  LODWORD(STACK[0x5160]) = v170;
  v171 = STACK[0x52D0];
  if (v127)
  {
    v171 = v112;
  }

  LODWORD(STACK[0x5170]) = v171;
  v172 = STACK[0x5358];
  if (v127)
  {
    v173 = STACK[0x5310];
  }

  else
  {
    v173 = STACK[0x5358];
  }

  v174 = STACK[0x5318];
  if (v127)
  {
    v175 = STACK[0x56C0];
  }

  else
  {
    v175 = STACK[0x5318];
  }

  if (v127)
  {
    v176 = v156;
  }

  else
  {
    v176 = v157;
  }

  if (v127)
  {
    v177 = v121;
  }

  else
  {
    v177 = v163;
  }

  if (v127)
  {
    v167 = v170;
  }

  else
  {
    v174 = STACK[0x5310];
    v172 = STACK[0x56C0];
  }

  if (v130)
  {
    v178 = STACK[0x5038];
  }

  else
  {
    v178 = STACK[0x5060];
  }

  v179 = STACK[0x5270];
  if ((v130 & 1) == 0)
  {
    v179 = STACK[0x5158];
  }

  if ((v127 & 2) != 0)
  {
    v180 = v174;
  }

  else
  {
    v180 = v172;
  }

  if ((v127 & 2) != 0)
  {
    v174 = v172;
    v181 = v175;
  }

  else
  {
    v181 = v173;
  }

  if ((v127 & 2) != 0)
  {
    v182 = v173;
  }

  else
  {
    v182 = v175;
  }

  if ((v127 & 2) != 0)
  {
    v183 = v148;
  }

  else
  {
    v183 = v150;
  }

  if ((v130 & 2) != 0)
  {
    v184 = v178;
  }

  else
  {
    v184 = v179;
  }

  v185 = STACK[0x55B0];
  v186 = (v180 >> (STACK[0x55B0] & 0x18)) ^ (v180 << v136);
  v187 = (v174 >> (STACK[0x55B0] & 0x18)) + (v174 << v136);
  if ((STACK[0x55B0] & 0x18) == 0)
  {
    v187 = v174;
  }

  LODWORD(STACK[0x5320]) = v187;
  LODWORD(STACK[0x4B80]) = v180;
  if ((v185 & 0x18) != 0)
  {
    v188 = v186;
  }

  else
  {
    v188 = v180;
  }

  LODWORD(STACK[0x5318]) = v188;
  if ((v130 & 2) != 0)
  {
    v189 = v179;
  }

  else
  {
    v189 = v178;
  }

  v190 = __ROR4__(v189, v185 & 0x18);
  if ((v185 & 0x18) != 0)
  {
    v189 = v190;
  }

  LODWORD(STACK[0x5278]) = v189;
  v191 = LODWORD(STACK[0x5280]) ^ (2 * (STACK[0x5280] & v82));
  v192 = LODWORD(STACK[0x5290]) ^ (2 * (STACK[0x5290] & v82));
  v193 = STACK[0x5680];
  v194 = STACK[0x5680] & 0x38 ^ 8;
  STACK[0x5038] = v194;
  STACK[0x5060] = v193 & 7 ^ 5;
  v195 = ((v191 & v88) << (v193 & 7 ^ 5) << v194) | ((v191 & v139) >> v140);
  LODWORD(STACK[0x4FF0]) = v195;
  v196 = v88;
  v197 = ((v192 & v88) << v85) | ((v192 & v154) >> v140);
  LODWORD(STACK[0x5030]) = v197;
  v198 = LODWORD(STACK[0x52A0]) ^ (2 * (STACK[0x52A0] & v82));
  v199 = ((v198 & v139) >> v155) + ((v198 & v169) << v85);
  v200 = LODWORD(STACK[0x5058]) ^ (2 * (STACK[0x5058] & v82));
  v201 = (((v200 & v169) << (v193 & 0x28 ^ 8)) << (v193 & 0x17 ^ 5)) | ((v200 & v154) >> v140);
  LODWORD(STACK[0x5008]) = v201;
  v202 = STACK[0x4FD8];
  v203 = (v184 >> (v185 & 0x18)) ^ (v184 << (STACK[0x4FD8] & 0x18));
  if ((STACK[0x4FD8] & 0x18) == 0)
  {
    v203 = v184;
  }

  LODWORD(STACK[0x5270]) = v203;
  v204 = STACK[0x5298];
  if (STACK[0x5298])
  {
    v205 = v201;
  }

  else
  {
    v205 = v199;
  }

  v206 = v199;
  if (v204)
  {
    v207 = v197;
  }

  else
  {
    v207 = v195;
  }

  if ((v204 & 2) != 0)
  {
    v208 = v205;
  }

  else
  {
    v208 = v207;
  }

  if ((v204 & 2) != 0)
  {
    v205 = v207;
  }

  v209 = __ROR4__(v183, v185 & 0x18);
  if ((v185 & 0x18) != 0)
  {
    v210 = v209;
  }

  else
  {
    v210 = v183;
  }

  LODWORD(STACK[0x5158]) = v210;
  v211 = __ROR4__(v205, v185 & 0x18);
  if ((v185 & 0x18) != 0)
  {
    v205 = v211;
  }

  LODWORD(STACK[0x51A0]) = v205;
  v212 = v127 + LODWORD(STACK[0x53E8]);
  v213 = STACK[0x53D0];
  if (v212)
  {
    v214 = STACK[0x53F8];
  }

  else
  {
    v214 = STACK[0x53D0];
  }

  LODWORD(STACK[0x4FE0]) = v214;
  v215 = STACK[0x5450];
  v216 = STACK[0x53B0];
  if (v212)
  {
    v215 = STACK[0x53B0];
  }

  LODWORD(STACK[0x4FE8]) = v215;
  if ((v212 & 2) == 0)
  {
    v215 = v214;
  }

  v217 = v185 & 0x18;
  if ((v185 & 0x18) != 0)
  {
    v215 = (v215 << (v202 & 0x18)) + (v215 >> (v185 & 0x18));
  }

  LODWORD(STACK[0x5018]) = v215;
  v218 = (v208 >> v217) + (v208 << (v202 & 0x18));
  LODWORD(STACK[0x4B90]) = v208;
  if ((v202 & 0x18) == 0)
  {
    v218 = v208;
  }

  LODWORD(STACK[0x5028]) = v218;
  LODWORD(STACK[0x5098]) = v127;
  v219 = (v127 & 2) == 0;
  if ((v127 & 2) != 0)
  {
    v220 = STACK[0x4FD0];
  }

  else
  {
    v220 = v148;
  }

  v221 = STACK[0x5338];
  v222 = STACK[0x51D8];
  if (v219)
  {
    v223 = STACK[0x5338];
  }

  else
  {
    v223 = STACK[0x51D8];
  }

  LODWORD(STACK[0x4FD0]) = v223;
  if (v219)
  {
    v224 = v222;
  }

  else
  {
    v224 = v221;
  }

  LODWORD(STACK[0x4D58]) = v177;
  LODWORD(STACK[0x4C68]) = v167;
  if (v219)
  {
    v225 = v167;
  }

  else
  {
    v225 = v177;
  }

  LODWORD(STACK[0x5280]) = v225;
  LODWORD(STACK[0x4D98]) = v176;
  v226 = STACK[0x5170];
  if (v219)
  {
    v226 = v176;
  }

  LODWORD(STACK[0x52A0]) = v226;
  v227 = v202;
  v228 = __ROR4__(v181, v217);
  if ((v202 & 0x18) != 0)
  {
    v229 = v228;
  }

  else
  {
    v229 = v181;
  }

  LODWORD(STACK[0x5290]) = v229;
  STACK[0x51D8] = v182 >> v217;
  v230 = (v182 << (v202 & 0x18)) ^ (v182 >> v217);
  if ((v202 & 0x18) == 0)
  {
    v230 = v182;
  }

  LODWORD(STACK[0x5310]) = v230;
  LODWORD(STACK[0x50A0]) = v130;
  if ((v130 & 2) != 0)
  {
    v231 = STACK[0x5420];
  }

  else
  {
    v231 = STACK[0x5440];
  }

  v232 = 2 * ((LODWORD(STACK[0x5048]) ^ 0x30F4AD51) & STACK[0x5700] ^ STACK[0x5630] & 0x5C5DB05A);
  v233 = v232 ^ 0x984000;
  v234 = (v232 ^ 0x984000) & 0x6CA91D1E ^ v232 & 0x14;
  v27 = (v202 & 0x18) == 0;
  v235 = (v231 >> v217) + (v231 << (v202 & 0x18));
  v236 = ((((v233 + 1823022347 - 2 * v234) ^ LODWORD(STACK[0x5048])) & v139) >> v140) + ((((v233 + 1823022347 - 2 * v234) ^ LODWORD(STACK[0x5048])) & v196) << v85);
  v237 = 2 * ((LODWORD(STACK[0x5050]) ^ 0x6CA91D0B) & (LODWORD(STACK[0x5640]) ^ 0x655F7845) ^ STACK[0x5050] & 0x578BF580);
  v238 = ((v237 ^ 0x89122A00) + 1823022347 - 2 * ((v237 ^ 0x89122A00) & 0x6CA91D0E ^ v237 & 4)) ^ LODWORD(STACK[0x5050]);
  v239 = v139;
  v240 = ((v238 & v196) << v85) ^ ((v238 & v139) >> v140);
  v241 = v206;
  v242 = v216;
  v243 = (-1811301273 * ((LODWORD(STACK[0x56C0]) - v206) ^ v216)) ^ ((-1811301273 * ((LODWORD(STACK[0x56C0]) - v206) ^ v216)) >> 16);
  v244 = -2045095201 * (v243 + LODWORD(STACK[0x52E8]) - (v243 >> 8));
  v245 = v213;
  v246 = (2 * ((LODWORD(STACK[0x5068]) ^ 0x6CA91D0B) & (LODWORD(STACK[0x5640]) ^ 0x59C05F39) ^ STACK[0x5068] & 0x6B14D2FC)) ^ 0xD0002010;
  v247 = -812030687 * (v244 + HIWORD(v244) + v213 - ((v244 + HIWORD(v244)) >> 8));
  v248 = (v247 - HIWORD(v247) + ((v247 - HIWORD(v247)) >> 8)) & 0x5E2C97DA;
  v249 = (v246 + 1823022347 - ((2 * v246) & 0xD9523A14)) ^ LODWORD(STACK[0x5068]);
  v250 = STACK[0x57C0];
  v251 = STACK[0x56F0];
  v252 = STACK[0x5790];
  v253 = (((v249 & v239) >> STACK[0x57C0]) | ((v249 & STACK[0x56F0]) << STACK[0x5790])) ^ 0x5E2C97DA ^ ((v248 ^ 0x5E2C97DA) + v248);
  v254 = (((2 * ((LODWORD(STACK[0x50C0]) ^ 0x6CA91D0B) & (LODWORD(STACK[0x5630]) ^ 0x62D97773) ^ STACK[0x50C0] & 0x63351BF7)) ^ 0xC0423206) + 1823022347 - ((2 * ((2 * ((LODWORD(STACK[0x50C0]) ^ 0x6CA91D0B) & (LODWORD(STACK[0x5630]) ^ 0x62D97773) ^ STACK[0x50C0] & 0x63351BF7)) ^ 0xC0423206)) & 0xD9523A14)) ^ LODWORD(STACK[0x50C0]);
  v255 = v196;
  v256 = STACK[0x56E0];
  v257 = ((v254 & v196) << STACK[0x5790]) | ((v254 & STACK[0x56E0]) >> STACK[0x57C0]);
  LODWORD(STACK[0x5420]) = v231;
  if (v27)
  {
    v235 = v231;
  }

  LODWORD(STACK[0x5068]) = v235;
  v258 = STACK[0x51C0];
  if (STACK[0x51C0])
  {
    v259 = v240;
  }

  else
  {
    v259 = v236;
  }

  if (v258)
  {
    v260 = v253;
  }

  else
  {
    v260 = v240;
  }

  if (v258)
  {
    v253 = v257;
    v257 = v236;
  }

  v261 = STACK[0x51C0];
  if ((v258 & 2) != 0)
  {
    v262 = v259;
  }

  else
  {
    v262 = v253;
  }

  if ((v258 & 2) != 0)
  {
    v263 = v260;
  }

  else
  {
    v263 = v257;
  }

  v264 = __ROR4__(v262, v217);
  if ((v227 & 0x18) != 0)
  {
    v262 = v264;
  }

  LODWORD(STACK[0x5058]) = v262;
  if ((v227 & 0x18) != 0)
  {
    v265 = (v263 << (v227 & 0x18)) + (v263 >> v217);
  }

  else
  {
    v265 = v263;
  }

  LODWORD(STACK[0x5338]) = v265;
  v266 = STACK[0x5298];
  v267 = STACK[0x5008];
  if (STACK[0x5298])
  {
    v267 = STACK[0x4FF0];
  }

  if (v266)
  {
    v268 = v241;
  }

  else
  {
    v268 = STACK[0x5030];
  }

  if ((v266 & 2) != 0)
  {
    v269 = v268;
  }

  else
  {
    v269 = v267;
  }

  v270 = v227 & 0x18;
  v271 = (v220 << (v227 & 0x18)) + (v220 >> v217);
  if ((v227 & 0x18) == 0)
  {
    v271 = v220;
  }

  LODWORD(STACK[0x4FF0]) = v271;
  v272 = __ROR4__(STACK[0x4FD0], v217);
  if ((v227 & 0x18) == 0)
  {
    v272 = STACK[0x4FD0];
  }

  LODWORD(STACK[0x5008]) = v272;
  v273 = (v224 << v270) ^ (v224 >> v217);
  if ((v227 & 0x18) == 0)
  {
    v273 = v224;
  }

  LODWORD(STACK[0x56C0]) = v273;
  if ((v227 & 0x18) != 0)
  {
    v269 = (v269 << v270) + (v269 >> v217);
  }

  LODWORD(STACK[0x5030]) = v269;
  v274 = STACK[0x5450];
  if ((v212 & 1) == 0)
  {
    v274 = STACK[0x53F8];
    v213 = v242;
  }

  v275 = v245;
  v276 = v212;
  LODWORD(STACK[0x5358]) = v212;
  if ((v212 & 2) != 0)
  {
    v277 = v213;
  }

  else
  {
    v277 = v274;
  }

  if ((v212 & 2) != 0)
  {
    v213 = v274;
  }

  v278 = v227 & 0x18;
  if ((v227 & 0x18) != 0)
  {
    v279 = (v277 >> v217) + (v277 << (v227 & 0x18));
  }

  else
  {
    v279 = v277;
  }

  v280 = __ROR4__(v213, v217);
  if ((v227 & 0x18) != 0)
  {
    v281 = v280;
  }

  else
  {
    v281 = v213;
  }

  if ((v261 & 2) != 0)
  {
    v282 = v253;
  }

  else
  {
    v282 = v259;
  }

  if ((v261 & 2) != 0)
  {
    v283 = v257;
  }

  else
  {
    v283 = v260;
  }

  v284 = STACK[0x55B0];
  v285 = STACK[0x55B0] & 0x18;
  v286 = __ROR4__(v282, v285);
  if ((STACK[0x55B0] & 0x18) != 0)
  {
    v287 = v286;
  }

  else
  {
    v287 = v282;
  }

  LODWORD(STACK[0x5048]) = v287;
  if ((v284 & 0x18) != 0)
  {
    v288 = (v283 >> v285) + (v283 << v278);
  }

  else
  {
    v288 = v283;
  }

  LODWORD(STACK[0x5050]) = v288;
  v289 = LODWORD(STACK[0x5010]) ^ (2 * (STACK[0x5010] & LODWORD(STACK[0x5670])));
  v290 = v255;
  v291 = ((v289 & v255) << v252) | ((v289 & v239) >> v140);
  v292 = LODWORD(STACK[0x50B0]) ^ (2 * (STACK[0x50B0] & LODWORD(STACK[0x5700])));
  v293 = ((v292 & v256) >> v140) | ((v292 & v251) << v252);
  v294 = STACK[0x5700];
  v295 = LODWORD(STACK[0x5040]) ^ (2 * (STACK[0x5040] & LODWORD(STACK[0x5700])));
  v296 = ((v295 & v251) << v252) | ((v295 & v256) >> v250);
  v297 = LODWORD(STACK[0x50B8]) ^ (2 * (STACK[0x50B8] & LODWORD(STACK[0x5670])));
  v298 = v250;
  v299 = ((v297 & v251) << STACK[0x57B0]) | ((v297 & v256) >> v250);
  LODWORD(STACK[0x4B58]) = v296;
  LODWORD(STACK[0x4B50]) = v299;
  if ((v266 & 1) == 0)
  {
    v296 = v299;
  }

  LODWORD(STACK[0x4B68]) = v291;
  LODWORD(STACK[0x4B60]) = v293;
  if (v266)
  {
    v300 = v291;
  }

  else
  {
    v300 = v293;
  }

  if ((v266 & 2) == 0)
  {
    v267 = v268;
  }

  LODWORD(STACK[0x4B78]) = v296;
  LODWORD(STACK[0x4B70]) = v300;
  if ((v266 & 2) == 0)
  {
    v300 = v296;
  }

  LODWORD(STACK[0x52E8]) = v300;
  if ((v284 & 0x18) != 0)
  {
    v267 = (v267 << v278) ^ (v267 >> (v284 & 0x18));
  }

  LODWORD(STACK[0x5040]) = v267;
  if ((v276 & 2) != 0)
  {
    v301 = STACK[0x4FE0];
  }

  else
  {
    v301 = STACK[0x4FE8];
  }

  LODWORD(STACK[0x50C0]) = v278;
  LODWORD(STACK[0x50B8]) = v284 & 0x18;
  if ((v284 & 0x18) != 0)
  {
    v302 = (v301 << v278) ^ (v301 >> (v284 & 0x18));
  }

  else
  {
    v302 = v301;
  }

  v303 = (((STACK[0x5570] ^ (2 * (STACK[0x5570] & v294))) & v239) >> v140) ^ (((STACK[0x5570] ^ (2 * (STACK[0x5570] & v294))) & v251) << v252);
  v304 = v303 - 2097460732 - ((2 * v303) & 0x5F69408);
  v305 = -812030687 * (LODWORD(STACK[0x5340]) - LODWORD(STACK[0x5260]) + v275);
  v306 = -269086093 * (v305 - HIWORD(v305) + LODWORD(STACK[0x52A8]) + ((v305 - HIWORD(v305)) >> 8));
  v307 = v306 + HIWORD(v306) + LODWORD(STACK[0x53E8]) + ((v306 + HIWORD(v306)) >> 8);
  v308 = STACK[0x5620];
  v309 = STACK[0x5620] & 0x2E2E2E2E ^ 0x333F1D1D;
  v310 = v239;
  v311 = v290;
  v312 = v309 & v290;
  v313 = STACK[0x57B0];
  v314 = LODWORD(STACK[0x4FF0]) ^ ((v312 << STACK[0x57B0]) | ((v309 & v239) >> v298)) ^ v279;
  v315 = (v314 - 2097460732 - ((2 * v314) & 0x5F69408)) ^ v304;
  v316 = 545 * (((v314 + 18948 - ((2 * v314) & 0x9408)) ^ v304) >> 8) + 702505;
  v317 = STACK[0x5650];
  LODWORD(STACK[0x4FD8]) = v309;
  v318 = v308;
  STACK[0x4FD0] = v312 << v252;
  LODWORD(v312) = LODWORD(STACK[0x5008]) ^ ((v312 << v252) | ((v308 & 0xC04 ^ 0x10101C14 ^ v309 & (v317 ^ 0x351D3Au)) >> v140));
  v319 = ((v312 ^ LODWORD(STACK[0x5018])) - 2097460732 - ((2 * (v312 ^ LODWORD(STACK[0x5018]))) & 0x5F69408)) ^ v304;
  v320 = STACK[0x5600] & 0x2E2E2E2E ^ 0x151F1F1F;
  v321 = STACK[0x5600];
  v322 = STACK[0x5660];
  v323 = STACK[0x5600] & 0x2C2E0420 ^ 0x151F1411 ^ (LODWORD(STACK[0x5660]) ^ 0x1E231307) & v320;
  v324 = v252;
  v325 = LODWORD(STACK[0x5158]) ^ (v323 << v252) ^ ((STACK[0x5600] & 0xE082C22 ^ 0x4080C12 ^ (v317 ^ 0x1E2D2D1C) & v320) >> v140) ^ v281;
  v326 = (v325 - 2097460732 - ((2 * v325) & 0x5F69408)) ^ v304;
  v327 = v313;
  LODWORD(STACK[0x4BA0]) = v320;
  v328 = v310 & v320;
  STACK[0x4B88] = v328;
  v329 = v328 >> v298;
  STACK[0x4B98] = v329;
  LODWORD(v313) = LODWORD(STACK[0x56C0]) ^ (v323 << v313) ^ v329 ^ v302;
  LODWORD(v329) = (v313 - 2097460732 - ((2 * v313) & 0x5F69408)) ^ v304;
  LODWORD(v313) = 545 * ((v313 + 4 - ((2 * v313) & 8)) ^ v304) + 702505;
  v330 = v321 & 0xCACACACA ^ 0x67ADAD6D;
  v331 = (v321 & 0x8A0208 ^ 0x258C2528 ^ (v322 ^ 0x46C2E0CE) & v330) << v327;
  v332 = v310 & v330;
  LODWORD(STACK[0x5158]) = v330;
  STACK[0x5008] = v332;
  v333 = v332 >> v140;
  STACK[0x4FE0] = v333;
  v334 = v304;
  LODWORD(v333) = v304 ^ v331 ^ v333 ^ LODWORD(STACK[0x5358]);
  LODWORD(STACK[0x50B0]) = v307;
  v335 = STACK[0x5770];
  LODWORD(STACK[0x56C0]) = v333 ^ v307 ^ LODWORD(STACK[0x5028]) ^ __ROR4__(*(STACK[0x5770] + 4 * (v316 - 1552 * ((2767376 * v316) >> 32))), 16) ^ *(STACK[0x5770] + 4 * (545 * HIBYTE(v326) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v326) + 702505)) >> 32))) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE2(v319) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v319) + 702505)) >> 32))), 8) ^ __ROR4__(*(STACK[0x5770] + 4 * (v313 - 1552 * ((2767376 * v313) >> 32))), 24);
  LOBYTE(v313) = *(STACK[0x57A0] + (((v329 >> 11) & 0xE0 | (v329 >> 19) & 0x1F) ^ 0x7E) + 110528);
  v336 = STACK[0x57A0];
  LODWORD(v313) = (117 * (((v313 ^ 0x85) + 117) ^ ((v313 ^ 0xB8) + 74) ^ ((v313 ^ 0x1F) - 17))) ^ 0x80;
  v337 = (545 * (v313 | ((v313 < 0x64) << 8)) + 648005) % 0x610;
  v338 = v318 & 0xCACACACA ^ 0x25ED6FEF;
  v339 = (v338 & v311) << v324;
  v340 = LODWORD(STACK[0x51A0]) ^ (v339 | ((v338 & v310) >> v140)) ^ __ROR4__(*(v335 + 4 * (545 * v319 + 702505 - 1552 * ((2767376 * (545 * v319 + 702505)) >> 32))), 24) ^ __ROR4__(*(v335 + 4 * v337), 8);
  v341 = v335;
  v342 = v340 ^ __ROR4__(*(v335 + 4 * (545 * BYTE1(v326) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v326) + 702505)) >> 32))), 16) ^ *(v335 + 4 * (545 * HIBYTE(v315) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v315) + 702505)) >> 32)));
  v343 = *(v335 + 4 * (545 * BYTE2(v326) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v326) + 702505)) >> 32)));
  v344 = *(v335 + 4 * (545 * BYTE3(v329) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v329) + 702505)) >> 32)));
  LODWORD(STACK[0x55B0]) = v342 - 2097460732 - ((2 * v342) & 0x5F69408);
  v345 = v344 ^ __ROR4__(v343, 8);
  LOBYTE(v343) = *(v336 + (v315 ^ 0x40u) + 161476);
  LOBYTE(v343) = ((v343 >> 4) ^ 0x66) & ((16 * v343) ^ 0x3F) | (16 * v343) & 0x9F;
  v346 = 545 * (LODWORD(STACK[0x4E38]) - 85 * (((v343 ^ 0x24) - 89) ^ ((v343 ^ 0xD1) + 84) ^ ((v343 ^ 0x8D) + 16))) + 702505;
  LODWORD(v333) = v334;
  v347 = *(v335 + 4 * (v346 - 1552 * ((2767376 * v346) >> 32)));
  v348 = ((v334 & 0x4F ^ 0x4B) + (v334 & 0x4F ^ 4) + 123) ^ HIBYTE(v347);
  v349 = v345 ^ __ROR4__(*(v335 + 4 * (545 * BYTE1(v319) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v319) + 702505)) >> 32))), 16) ^ ((LODWORD(STACK[0x4A48]) - 85 * (((v348 ^ *(v336 + (v348 ^ 0xD43)) ^ 0xA9) + 24) ^ ((v348 ^ *(v336 + (v348 ^ 0xD43)) ^ 0x75) - 52) ^ ((v348 ^ *(v336 + (v348 ^ 0xD43)) ^ 0x4F) - 14))) | (v347 << 8));
  v350 = STACK[0x5650];
  LODWORD(STACK[0x4FE8]) = v338;
  LODWORD(v339) = LODWORD(STACK[0x5030]) ^ v339 ^ ((v318 & STACK[0x22B4] ^ v338 & (v350 ^ 0xC421664F) ^ 0x4C467A1) >> v298) ^ v349;
  v351 = v339 - 2097460732 - ((2 * v339) & 0x5F69408);
  v352 = LODWORD(STACK[0x5040]) ^ v331 ^ ((v321 & 0x424088C0 ^ 0x4201AD41 ^ (v350 ^ 0x42A4AC2F) & v330) >> v298) ^ __ROR4__(*(v335 + 4 * (545 * v326 + 702505 - 1552 * ((2767376 * (545 * v326 + 702505)) >> 32))), 24) ^ __ROR4__(*(v335 + 4 * (545 * BYTE1(v329) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v329) + 702505)) >> 32))), 16) ^ *(v335 + 4 * (545 * HIBYTE(v319) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v319) + 702505)) >> 32)));
  v353 = __ROR4__(*(v335 + 4 * (545 * BYTE2(v315) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v315) + 702505)) >> 32))), 8);
  LODWORD(v312) = v321 & 0x9090908 ^ 0x858C8D8C;
  LODWORD(STACK[0x51A0]) = v312;
  v354 = v321 & 0x9080808 ^ 0x85888808 ^ (v350 ^ 0x8D0D8984) & v312;
  v355 = STACK[0x5780];
  v356 = STACK[0x5760] & v312;
  STACK[0x5030] = v356;
  LODWORD(v354) = (v356 << STACK[0x5790]) | (v354 >> v355);
  v357 = 55 * (HIWORD(LODWORD(STACK[0x56C0])) ^ 0x82FB) + 1731640521;
  LOBYTE(v356) = ((2 * (v357 ^ 0xF)) ^ 0x70) & (v357 ^ 0xF) ^ (2 * (v357 ^ 0xF)) & 0x38;
  LOBYTE(v326) = (v357 ^ 0x27) & (2 * (v357 & 0x37)) ^ v357 & 0x37;
  LOBYTE(v357) = (55 * (HIWORD(LODWORD(STACK[0x56C0])) ^ 0xFB) - 55) ^ 0x70 ^ (2 * (((4 * (v356 ^ 8)) & 0x38 ^ 0x20 ^ ((4 * (v356 ^ 8)) ^ 0xE0) & (v356 ^ 8)) & (16 * ((v356 ^ 0x30) & (4 * v326) ^ v326)) ^ (v356 ^ 0x30) & (4 * v326) ^ v326));
  LOBYTE(v357) = *(v336 + (v357 ^ 0xC39)) ^ v357;
  v358 = 545 * ((((v357 ^ 0x79) - 39) ^ (94 - v357) ^ ((v357 ^ 0xB3) + 19)) + 94) + 702505;
  LODWORD(v356) = LODWORD(STACK[0x55B0]) ^ v333;
  LODWORD(STACK[0x5018]) = v356;
  v359 = ((v352 ^ v353) - 2097460732 - ((2 * (v352 ^ v353)) & 0x5F69408)) ^ v333;
  STACK[0x5028] = v359;
  v360 = v359 - ((2 * v359) & 0x1A70CF9B2) + 0x23A8E7FD3867CD9;
  STACK[0x5340] = v360;
  LODWORD(STACK[0x5010]) = v351 ^ v333;
  LODWORD(STACK[0x5440]) = v333;
  v361 = 545 * ((v351 ^ v333) >> 24) + 702505;
  STACK[0x55B0] = v361;
  LODWORD(v354) = LODWORD(STACK[0x5338]) ^ v354 ^ *(v341 + 4 * (v361 - 1552 * ((2767376 * v361) >> 32))) ^ __ROR4__(*(v341 + 4 * (v358 - 1552 * ((2767376 * v358) >> 32))), 8) ^ __ROR4__(*(v341 + 4 * (545 * (v356 + 1289) - 1552 * ((2767376 * (545 * (v356 + 1289))) >> 32))), 24);
  v362 = __ROR4__(*(v341 + 4 * (545 * (BYTE1(v360) ^ 0x7C) + 702505 - 1552 * ((2767376 * (545 * (BYTE1(v360) ^ 0x7Cu) + 702505)) >> 32))), 16);
  LODWORD(v360) = ((v354 ^ v362) - 2097460732 - ((2 * (v354 ^ v362)) & 0x5F69408)) ^ v333;
  LODWORD(STACK[0x5338]) = v360;
  LODWORD(STACK[0x52A8]) = (545 * BYTE3(v360) + 702505) % (((545 * BYTE3(v360) + 702505) & 0x610 ^ 0x610) + ((545 * BYTE3(v360) + 702505) & 0x610));
  v363 = STACK[0x50F0];
  v364 = STACK[0x5288];
  v365 = STACK[0x5148];
  v366 = STACK[0x50F8];
  v367 = STACK[0x50E8];
  v368 = (LODWORD(STACK[0x56D0]) - 34107179) & 0x7EF92F7F;
  STACK[0x5040] = v368;
  LODWORD(v368) = v368 - 2096149314;
  LODWORD(STACK[0x5260]) = v368;
  LODWORD(v360) = (v364 ^ v363 ^ v366 ^ v365 ^ v367) - ((2 * (v364 ^ v363 ^ v366 ^ v365 ^ v367)) & 0x266959B6) + (v368 ^ 0x9334DAFA);
  v369 = STACK[0x5130];
  v370 = STACK[0x5070];
  LODWORD(v360) = LODWORD(STACK[0x53A8]) ^ LODWORD(STACK[0x53A0]) ^ LODWORD(STACK[0x53E0]) ^ LODWORD(STACK[0x5070]) ^ ((v360 ^ v369) - 1825264421 - ((2 * (v360 ^ v369)) & 0x266959B6));
  v371 = STACK[0x5268];
  v372 = STACK[0x5150];
  v373 = ((LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x50D8]) ^ v371) - 1825264421 - ((2 * (LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x50D8]) ^ v371)) & 0x266959B6)) ^ LODWORD(STACK[0x5150]);
  v374 = STACK[0x5078];
  v375 = STACK[0x5140];
  v376 = LODWORD(STACK[0x5078]) ^ LODWORD(STACK[0x5140]) ^ (v373 - 1825264421 - ((2 * v373) & 0x266959B6));
  v377 = (v376 - 527461569 - ((2 * v376) & 0xC11F267E)) ^ LODWORD(STACK[0x5108]);
  v378 = (v377 - 527461569 - ((2 * v377) & 0xC11F267E)) ^ LODWORD(STACK[0x5368]);
  v379 = LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x53D8]) ^ LODWORD(STACK[0x5380]) ^ LODWORD(STACK[0x5470]) ^ LODWORD(STACK[0x5460]) ^ (v378 - 527461569 - ((2 * v378) & 0xC11F267E));
  v380 = (v379 - 927526325 - ((2 * v379) & 0x916E2496)) ^ LODWORD(STACK[0x5540]);
  v381 = (v380 - 927526325 - ((2 * v380) & 0x916E2496)) ^ LODWORD(STACK[0x5348]);
  LODWORD(v341) = STACK[0x51C8];
  LODWORD(v336) = STACK[0x50A8];
  v382 = STACK[0x5218];
  LODWORD(v360) = LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5408]) ^ LODWORD(STACK[0x50A8]) ^ LODWORD(STACK[0x5378]) ^ LODWORD(STACK[0x5218]) ^ LODWORD(STACK[0x5100]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5510]) ^ LODWORD(STACK[0x5430]) ^ (v360 - 527461569 - ((2 * v360) & 0xC11F267E));
  v383 = LODWORD(STACK[0x5530]) ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x54B0]) ^ (v381 - 927526325 - ((2 * v381) & 0x916E2496));
  v384 = STACK[0x5700];
  v385 = STACK[0x5630];
  LODWORD(v360) = LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5390]) ^ (v360 - 927526325 - ((2 * v360) & 0x916E2496));
  LODWORD(v356) = (2 * ((v383 ^ 0x432C3102) & STACK[0x5700] ^ STACK[0x5630] & 0x38620F91)) ^ 0xC01900;
  LODWORD(v361) = 2 * ((v360 ^ 0x7B4E3E93) & (LODWORD(STACK[0x5630]) ^ 0x2B59DD25) ^ v360 & 0x2AB5B1A1);
  LODWORD(v360) = ((v361 ^ 0x54086102) + 142868289 - 2 * ((v361 ^ 0x54086102) & 0x883FF5C ^ v361 & 0x1C)) ^ v360;
  LODWORD(v329) = STACK[0x5660];
  LODWORD(v359) = (v356 - ((2 * v356) & 0x9705591C) + 1266855054) ^ v383;
  v386 = STACK[0x5650];
  LODWORD(STACK[0x5348]) = (((v360 & 0x8E4AA1D8 ^ 0x824881D0 ^ (v360 ^ 0xF3CDC1D2) & (LODWORD(STACK[0x5660]) ^ 0xED16662E)) << STACK[0x5038]) << STACK[0x5060]) | ((v360 & 0x863AD8A9 ^ 0x8208C080 ^ (v360 ^ 0xF3CDC1D2) & (LODWORD(STACK[0x5650]) ^ 0x96DFD947)) >> v355);
  LODWORD(v368) = v364;
  v387 = STACK[0x5670];
  LODWORD(v360) = v368 ^ (2 * (v368 & LODWORD(STACK[0x5670])));
  v388 = STACK[0x57B0];
  v389 = STACK[0x57C0];
  LODWORD(STACK[0x5288]) = ((v359 & 0xCFA10C1E ^ 0x8080001C ^ (v359 ^ 0xB0CC921D) & (v386 ^ 0xDF440DF0)) >> STACK[0x57C0]) + ((v359 & 0x35D685D6 ^ 0x30C48014 ^ (v359 ^ 0xB0CC921D) & (v329 ^ 0x568A4220)) << STACK[0x57B0]);
  v390 = STACK[0x5680];
  LODWORD(v359) = STACK[0x5760];
  LODWORD(v331) = STACK[0x56E0];
  LODWORD(STACK[0x5108]) = ((v360 & STACK[0x5760]) << (STACK[0x5680] & 0x14 ^ 4) << (STACK[0x5680] & 0x2B ^ 9)) ^ ((v360 & STACK[0x56E0]) >> v389);
  LODWORD(v333) = v384;
  LODWORD(v360) = v365 ^ (2 * (v365 & v384));
  v391 = LODWORD(STACK[0x50E0]) ^ (2 * (STACK[0x50E0] & v387));
  v392 = STACK[0x56F0];
  LOBYTE(v326) = v389;
  LODWORD(STACK[0x5100]) = ((v360 & STACK[0x56F0]) << (v390 & 0x1F ^ 0xD)) + ((v360 & v331) >> v389);
  LODWORD(v360) = v366 ^ (2 * (v366 & v387));
  v393 = v331;
  v394 = (v360 & v331) >> v389;
  LODWORD(v331) = v359;
  LODWORD(STACK[0x50F8]) = v394 + ((v360 & v359) << v388);
  LODWORD(v360) = v363 ^ (2 * (v363 & v387));
  LOBYTE(v366) = v388;
  v395 = STACK[0x5720];
  LODWORD(STACK[0x50F0]) = ((v360 & v359) << v388) ^ ((v360 & STACK[0x5720]) >> v326);
  LODWORD(STACK[0x50E8]) = ((v391 & v393) >> v326) ^ ((v391 & v359) << (v390 & 0x3F ^ 0xD));
  LODWORD(STACK[0x50E0]) = (((v367 ^ (2 * (v367 & v333))) & v392) << v388) + (((v367 ^ (2 * (v367 & v333))) & v393) >> v326);
  LODWORD(STACK[0x50D8]) = (((v371 ^ (2 * (v371 & v333))) & v359) << (v390 & 0x13 ^ 1) << (v390 & 0x2C ^ 0xC)) + (((v371 ^ (2 * (v371 & v333))) & v393) >> v355);
  LODWORD(v360) = (2 * ((v372 ^ 0x1334ACDB) & (v385 ^ 0x5DAD76E6) ^ v372 & 0x5C411A62)) ^ 0x20001084;
  LODWORD(v360) = (v360 - 1825264421 - ((2 * v360) & 0x266959B4)) ^ v372;
  LODWORD(v356) = (2 * ((v369 ^ 0x1334ACDB) & (LODWORD(STACK[0x5640]) ^ 0x636B8CCE) ^ v369 & 0x51BF010B)) ^ 0x22680016;
  v396 = (v356 - 1825264421 - ((2 * v356) & 0x266959B4)) ^ v369;
  v397 = STACK[0x5790];
  LOBYTE(v371) = v326;
  LODWORD(STACK[0x5150]) = ((v396 & v393) >> v326) ^ ((v396 & v392) << STACK[0x5790]);
  LODWORD(v390) = v395;
  LODWORD(STACK[0x5148]) = ((v360 & v359) << v366) | ((v360 & v395) >> v326);
  LODWORD(v360) = 2 * ((LODWORD(STACK[0x53A0]) ^ 0x1334ACDB) & (v385 ^ 0x39B24864) ^ STACK[0x53A0] & LODWORD(STACK[0x22B0]));
  LODWORD(v360) = ((v360 ^ 0x20284980) - 1825264421 - 2 * ((v360 ^ 0x20284980) & 0x1334ACDE ^ v360 & 4)) ^ LODWORD(STACK[0x53A0]);
  v398 = 2 * ((v375 ^ 0x1334ACDB) & (v385 ^ 0x25C45E08) ^ v375 & 0x2428328C);
  v399 = ((v398 ^ 0x404110) - 1825264421 - 2 * ((v398 ^ 0x404110) & 0x1334ACDE ^ v398 & 4)) ^ v375;
  LODWORD(v356) = LODWORD(STACK[0x53A8]) ^ (2 * (STACK[0x53A8] & v387));
  LODWORD(STACK[0x5140]) = ((v360 & v393) >> v326) | ((v360 & v392) << v397);
  LODWORD(STACK[0x5130]) = ((v399 & v359) << v366) | ((v399 & v393) >> v355);
  LODWORD(v360) = LODWORD(STACK[0x53E0]) ^ (2 * (LODWORD(STACK[0x53E0]) & v333));
  LODWORD(STACK[0x5268]) = ((v356 & v395) >> v355) + ((v356 & v392) << v366);
  v400 = ((v360 & v359) << v397) ^ ((v360 & v393) >> v355);
  v401 = v392;
  v402 = (((v370 ^ (2 * (v370 & v387))) & v393) >> v355) ^ (((v370 ^ (2 * (v370 & v387))) & v392) << v397);
  LODWORD(v360) = v374 ^ (2 * (v374 & v333));
  v403 = (v360 & v392) << v397;
  LOBYTE(v395) = v397;
  LOBYTE(v397) = v355;
  v404 = v403 + ((v360 & v390) >> v355);
  LODWORD(v359) = v333;
  LODWORD(v360) = LODWORD(STACK[0x53D8]) ^ (2 * (LODWORD(STACK[0x53D8]) & v333));
  LODWORD(v355) = (((v382 ^ (2 * (v382 & v333))) & v331) << v395) + (((v382 ^ (2 * (v382 & v333))) & v390) >> v355);
  v405 = (((v336 ^ (2 * (v336 & v387))) & v390) >> v326) ^ (((v336 ^ (2 * (v336 & v387))) & v331) << v366);
  LODWORD(v403) = LODWORD(STACK[0x5410]) ^ (2 * (STACK[0x5410] & v387));
  v406 = ((v403 & v331) << v366) + ((v403 & v390) >> v397);
  LODWORD(v403) = LODWORD(STACK[0x5408]) ^ (2 * (LODWORD(STACK[0x5408]) & v333));
  v407 = ((v403 & v390) >> v397) + ((v403 & v331) << v395);
  LODWORD(v336) = (((v341 ^ (2 * (v341 & v387))) & v390) >> v326) + (((v341 ^ (2 * (v341 & v387))) & v331) << v366);
  LODWORD(v403) = LODWORD(STACK[0x5460]) ^ (2 * (LODWORD(STACK[0x5460]) & v333));
  LODWORD(v356) = LODWORD(STACK[0x5510]) ^ (2 * (LODWORD(STACK[0x5510]) & v333));
  v408 = (v356 & v390) >> v326;
  LOBYTE(v333) = v395;
  v409 = (v408 & 0x7FF8 | (((v408 >> 3) & 0xFFFFF000 | (v408 << 29)) >> 12 << 15) | (((v408 >> 3) | (v408 << 29)) >> 29)) + ((v356 & v331) << v395);
  LODWORD(v356) = LODWORD(STACK[0x5470]) ^ (2 * (STACK[0x5470] & v387));
  LODWORD(v408) = LODWORD(STACK[0x5430]) ^ (2 * (STACK[0x5430] & v387));
  LODWORD(v368) = v393;
  v410 = ((v408 & v331) << v366) + ((v408 & v393) >> v397);
  LODWORD(v408) = LODWORD(STACK[0x55F0]) ^ (2 * (LODWORD(STACK[0x55F0]) & v359));
  LOBYTE(v387) = v333;
  v411 = ((v408 & v368) >> v397) ^ ((v408 & v401) << v333);
  LODWORD(v333) = ((v360 & v331) << v366) | ((v360 & v368) >> v326);
  LOBYTE(v382) = v387;
  LODWORD(v408) = v390;
  LODWORD(v390) = ((v403 & v401) << v387) + ((v403 & v390) >> v397);
  v412 = ((v356 & v408) >> v326) | ((v356 & v331) << v366);
  LODWORD(v360) = LODWORD(STACK[0x5520]) ^ (2 * (LODWORD(STACK[0x5520]) & v359));
  LODWORD(v403) = LODWORD(STACK[0x5530]) ^ (2 * (LODWORD(STACK[0x5530]) & v359));
  v413 = ((v360 & v331) << v366) + ((v360 & v368) >> v397);
  v414 = ((v403 & v331) << v366) ^ ((v403 & v368) >> v397);
  LODWORD(v360) = LODWORD(STACK[0x54B0]) ^ (2 * (LODWORD(STACK[0x54B0]) & v359));
  LODWORD(v403) = LODWORD(STACK[0x54D0]) ^ (2 * (LODWORD(STACK[0x54D0]) & v359));
  LODWORD(v356) = ((v403 & v401) << v382) + ((v403 & v408) >> v371);
  LODWORD(v397) = v408;
  LODWORD(v359) = ((v360 & v408) >> v371) | ((v360 & v331) << v366);
  LODWORD(STACK[0x4B28]) = v410;
  LODWORD(STACK[0x4B18]) = v412;
  LODWORD(v360) = v410 ^ v412 ^ LODWORD(STACK[0x50F0]) ^ LODWORD(STACK[0x50F8]) ^ LODWORD(STACK[0x5268]);
  LODWORD(STACK[0x5078]) = v400;
  LODWORD(STACK[0x5070]) = v402;
  LODWORD(STACK[0x5060]) = v404;
  LODWORD(STACK[0x4AF8]) = v336;
  LODWORD(STACK[0x4B08]) = v406;
  LODWORD(STACK[0x4B00]) = v407;
  LODWORD(STACK[0x4B10]) = v405;
  LODWORD(v403) = v407 ^ v406 ^ v405 ^ LODWORD(STACK[0x51B0]);
  LODWORD(STACK[0x4B48]) = v355;
  LODWORD(STACK[0x4B40]) = v411;
  LODWORD(STACK[0x4B38]) = v333;
  LODWORD(STACK[0x4B20]) = v390;
  LODWORD(v360) = v360 ^ v402 ^ v400 ^ v404 ^ v336 ^ v403 ^ v355 ^ v333 ^ v411 ^ v390 ^ LODWORD(STACK[0x5100]) ^ LODWORD(STACK[0x50E8]);
  LODWORD(STACK[0x4AF0]) = v413;
  LODWORD(v403) = LODWORD(STACK[0x50E0]) ^ v413;
  LODWORD(STACK[0x4AE8]) = v414;
  LODWORD(STACK[0x4AE0]) = v356;
  LODWORD(STACK[0x4AD8]) = v359;
  LODWORD(v360) = v360 ^ v403 ^ v414 ^ v356 ^ v359 ^ LODWORD(STACK[0x5108]) ^ LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x50D8]) ^ LODWORD(STACK[0x5148]) ^ LODWORD(STACK[0x5150]) ^ LODWORD(STACK[0x51A8]) ^ LODWORD(STACK[0x5168]) ^ LODWORD(STACK[0x5160]);
  LODWORD(v368) = STACK[0x5178];
  LODWORD(STACK[0x4B30]) = v409;
  LODWORD(STACK[0x5520]) = v360 ^ v368 ^ v409 ^ LODWORD(STACK[0x5140]) ^ LODWORD(STACK[0x5130]) ^ LODWORD(STACK[0x5188]) ^ LODWORD(STACK[0x52D0]) ^ LODWORD(STACK[0x5198]);
  LODWORD(v359) = STACK[0x56C0];
  v415 = STACK[0x5018];
  v416 = STACK[0x5010];
  v417 = STACK[0x57A0];
  v418 = *(STACK[0x57A0] + (((LODWORD(STACK[0x5010]) >> 3) | (32 * (STACK[0x5010] & 7))) ^ 0xA3B));
  LODWORD(STACK[0x5540]) = v418;
  LODWORD(v356) = (((v418 ^ 0x50) - 80) ^ ((v418 ^ 0xFFFFFFAA) + 86) ^ ((v418 ^ 0x47) - 71)) - 100;
  LODWORD(v408) = v356 & 0xFFFFFF92 ^ 0xFFFFFFD0;
  LODWORD(v356) = v356 ^ (2 * ((v356 ^ 0x70) & (2 * ((v356 ^ 0x70) & (2 * ((v356 ^ 0x70) & (2 * ((v356 ^ 0x70) & (2 * (v356 & (2 * v408) | v408)) ^ v408)) ^ v408)) ^ v408)) ^ v408));
  LODWORD(v356) = (LODWORD(STACK[0x4E70]) + 117 * ((((v356 >> 3) & 0x10 ^ v356 ^ 0xED) - 49) ^ (((v356 >> 3) & 0x10 ^ v356 ^ 0x78) + 92) ^ (((v356 >> 3) & 0x10 ^ v356 ^ 0x76) + 86)));
  v419 = STACK[0x5028];
  v420 = STACK[0x5770];
  LODWORD(v360) = *(STACK[0x5770] + 4 * ((545 * (((BYTE3(v359) ^ 0x70ABAC47) + 1800173507) ^ ((BYTE3(v359) ^ 0x88805F9D) - 1821932519) ^ ((BYTE3(v359) ^ 0xF82BF358) - 473159458)) - 1754174431) % 0x610)) ^ LODWORD(STACK[0x5048]) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE1(v415) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v415) + 702505)) >> 32))), 16) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * v356 + 702505 - 1552 * ((2767376 * (545 * v356 + 702505)) >> 32))), 24);
  v421 = __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE2(v419) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v419) + 702505)) >> 32))), 8);
  v422 = STACK[0x5030] << v366;
  LODWORD(v355) = v397;
  v423 = (v397 & STACK[0x51A0]) >> STACK[0x5780];
  STACK[0x5048] = v422;
  LODWORD(v422) = v422 + v423;
  LODWORD(STACK[0x55C0]) = v422;
  v424 = STACK[0x5440];
  LODWORD(v422) = LODWORD(STACK[0x5440]) ^ v422 ^ ((v360 ^ v421) - 2097460732 - ((2 * (v360 ^ v421)) & 0x5F69408));
  LODWORD(STACK[0x5510]) = v422;
  LODWORD(v360) = ((v422 >> 13) & 0xF8 | (v422 >> 21) & 7) - 2 * (((v422 >> 13) & 0x38 | (v422 >> 21) & 7) ^ (v422 >> 13) & 0x18) + 501727783;
  LOBYTE(v423) = ((v360 ^ 0xE8) - 26) ^ ((v360 ^ 0x8C) - 126) ^ ((v360 ^ 0x4F) + 67);
  LOBYTE(v360) = *(((((((v422 >> 13) & 0xF8 | (v422 >> 21) & 7) - 2 * (((v422 >> 13) & 0x38 | (v422 >> 21) & 7) ^ (v422 >> 13) & 0x18) + 39) ^ 0x93A32DE061802F4DLL) + 0x6C5CD21F9E7FD062) ^ (((((v422 >> 13) & 0xF8 | (v422 >> 21) & 7) - 2 * (((v422 >> 13) & 0x38 | (v422 >> 21) & 7) ^ (v422 >> 13) & 0x18) + 39) ^ 0x285BAC223DF822C4) - 0x285BAC223DF82217) ^ (((((v422 >> 13) & 0xF8 | (v422 >> 21) & 7) - 2 * (((v422 >> 13) & 0x38 | (v422 >> 21) & 7) ^ (v422 >> 13) & 0x18) + 39) ^ 0xBBF881C25C780DD4) + 0x44077E3DA387F2F9)) + v417 + 43534);
  LOBYTE(v360) = v423 + (((v360 ^ 0x36) - 54) ^ ((v360 ^ 0xAD) + 83) ^ ((v360 ^ 0x26) - 38));
  LOBYTE(v423) = v360 - 32;
  LOBYTE(v360) = v360 & 0x10;
  LOBYTE(v356) = ((2 * v360) ^ 0x26) & (v423 ^ 0x26);
  LOBYTE(v360) = v360 ^ 0x75;
  LOBYTE(v360) = v423 ^ (2 * ((v423 ^ 0x36) & (2 * ((v423 ^ 0x36) & (2 * ((v423 ^ 0x36) & (2 * ((v423 ^ 0x36) & (2 * ((v423 ^ 0x36) & (2 * (v356 ^ v360)) ^ v360)) ^ v360)) ^ v360)) ^ v360)) ^ v360));
  LODWORD(v360) = ((((v360 ^ 0xCE) - 85) ^ ((v360 ^ 0x41) + 38) ^ ((v360 ^ 0x43) + 40)) - 1);
  BYTE1(v411) = BYTE1(v359);
  v425 = *(v420 + 4 * ((545 * (((v359 ^ 0xBE9728B4) - 1836361681) ^ ((v359 ^ 0xD96AD16) + 562748813) ^ ((v359 ^ 0xB30185A6) - 1625426627)) + 394196394) % 0x610));
  LODWORD(STACK[0x5680]) = (545 * (v360 | ((v360 < 0x44) << 8)) + 665445) % 0x610;
  LOBYTE(v356) = *(((v425 >> 24) ^ 0xEE) + v417 + 44160);
  LOBYTE(v356) = 11 * (((v356 ^ 0x2C) - 44) ^ ((v356 ^ 0x68) - 104) ^ ((v356 ^ 0xF9) + 7));
  LOBYTE(v418) = (v356 + 113) & 0x2C | 0x43;
  LOBYTE(v356) = (v356 + 113) ^ (2 * (((v356 + 113) ^ 0x2E) & (2 * (((v356 + 113) ^ 0x2E) & (2 * (((v356 + 113) ^ 0x2E) & (2 * (((v356 + 113) ^ 0x2E) & (2 * (((v356 + 113) ^ 0x2E) & (2 * (v418 ^ (2 - v356) & 2)) ^ v418)) ^ v418)) ^ v418)) ^ v418)) ^ v418));
  LOBYTE(v356) = 110 - 85 * (((v356 ^ 0xC0) - 74) ^ (v356 + 118) ^ ((v356 ^ 0x45) + 49));
  LOBYTE(v333) = v356 & 0x63 ^ 0xEE;
  LOBYTE(v356) = v356 ^ (2 * ((v356 ^ 0x16) & (2 * ((v356 ^ 0x16) & (2 * ((v356 ^ 0x16) & (2 * ((v356 ^ 0x16) & (2 * ((v356 ^ 0x16) & (2 * ((v356 ^ 0x16) & (2 * v356) & 0x2E ^ v333)) ^ v333)) ^ v333)) ^ v333)) ^ v333)) ^ v333));
  HIDWORD(v426) = *(v420 + 4 * (545 * BYTE2(v415) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v415) + 702505)) >> 32)));
  LODWORD(v426) = HIDWORD(v426);
  v427 = STACK[0x5340] >> 24;
  STACK[0x5530] = v427;
  LODWORD(v425) = LODWORD(STACK[0x5050]) ^ *(v420 + 4 * ((545 * (((v427 ^ 0x2D0F054E) + 1482326176) ^ ((v427 ^ 0x688F9951) + 500833409) ^ ((v427 ^ 0x7F0EE3CC) + 173762078)) - 54822970) % 0x610)) ^ __ROR4__(*(v420 + 4 * (545 * BYTE1(v416) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v416) + 702505)) >> 32))), 16) ^ ((v426 >> 8) - ((2 * (v426 >> 8)) & 0x3904B0E2) + 478304369) ^ 0x552A048E ^ ((v356 & 0xFE ^ 0xFFFFFF9C) & ((v425 << 8) ^ 0x49A85CDE) | v356 & 0x21);
  v428 = STACK[0x5620];
  LODWORD(v331) = STACK[0x5650];
  LODWORD(v397) = STACK[0x5620] & 0x9090908 ^ 0x858D8D8C;
  v429 = STACK[0x5660];
  v430 = STACK[0x5790];
  LODWORD(v359) = v424;
  LODWORD(v427) = v424 ^ (((v428 & 0x8010908 ^ 0x84858D0C ^ v397 & (LODWORD(STACK[0x5660]) ^ 0x8D890888)) << STACK[0x5790]) | ((v428 & 0x1010900 ^ 0x81850D04 ^ v397 & (LODWORD(STACK[0x5650]) ^ 0x81000C88)) >> v371)) ^ (v425 - 2097460732 - ((2 * v425) & 0x5F69408));
  LODWORD(STACK[0x5460]) = v427;
  LODWORD(v425) = 545 * BYTE1(v427) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v427) + 702505)) >> 32);
  v431 = v429;
  v432 = (v428 & 0x9080908 ^ 0x850C8D08 ^ v397 & (v429 ^ LODWORD(STACK[0x48B0]))) << v366;
  LODWORD(STACK[0x5038]) = v397;
  v433 = v397 & v355;
  STACK[0x5030] = v433;
  LOBYTE(v397) = ((2 * ((55 * BYTE2(v416) + 103) ^ 0xF3)) ^ 0xD4) & ((55 * BYTE2(v416) + 103) ^ 0xF3) ^ (2 * ((55 * BYTE2(v416) + 103) ^ 0xF3)) & 0x6A;
  LOBYTE(v366) = ((55 * BYTE2(v416) + 103) ^ 0xD1) & (2 * ((55 * BYTE2(v416) + 103) & 0x99)) ^ (55 * BYTE2(v416) + 103) & 0x99;
  LOBYTE(v333) = (55 * BYTE2(v416) + 103) ^ 0xD4 ^ (2 * (((4 * (v397 ^ 0x2A)) & 0x68 ^ LOBYTE(STACK[0x48A8]) ^ ((4 * (v397 ^ 0x2A)) ^ 0xA8) & (v397 ^ 0x2A)) & (16 * ((v397 ^ 0x40) & (4 * v366) ^ v366)) ^ (v397 ^ 0x40) & (4 * v366) ^ v366));
  v434 = v417;
  LODWORD(v333) = 545 * ((((v333 ^ *((v333 ^ 0x44u) + v417 + 37952) ^ 0xE3) + 72) ^ ((v333 ^ *((v333 ^ 0x44u) + v417 + 37952) ^ 0x61) - 58) ^ ((v333 ^ *((v333 ^ 0x44u) + v417 + 37952) ^ 0x97) + 52)) + 65) + 702505;
  LOBYTE(v397) = *(v417 + (((STACK[0x5640] & 0x60 ^ 0x40) + (STACK[0x5640] & 0x60 ^ 0xFFFFFFBF)) & 0xE8 ^ 0x21 ^ ((v415 >> 19) & 0xE0 | (v415 >> 27))) - (STACK[0x5600] & 0xCACA0800 ^ 0x98521000 ^ STACK[0x5158] & 0xEFEE2C00));
  LODWORD(v397) = (117 * (((v397 ^ 0x22) + 71) ^ ((v397 ^ 0x3D) + 90) ^ ((v397 ^ 0x58) + 61)) - 71);
  LODWORD(v397) = 545 * (v397 | ((v397 < 0x2D) << 8)) + 677980;
  v435 = v359;
  LODWORD(v432) = v359 ^ ((v432 ^ (v433 >> v371)) - 2097460732 - ((2 * (v432 ^ (v433 >> v371))) & 0x5F69408)) ^ LODWORD(STACK[0x5058]) ^ __ROR4__(*(v420 + 4 * (545 * (BYTE1(v411) ^ 0x4A) + 702505 - 1552 * ((2767376 * (545 * (BYTE1(v411) ^ 0x4Au) + 702505)) >> 32))), 16) ^ __ROR4__(*(v420 + 4 * (545 * v419 + 702505 - 1552 * ((2767376 * (545 * v419 + 702505)) >> 32))), 24);
  LODWORD(v426) = __ROR4__(*(v420 + 4 * (v333 - 1552 * ((2767376 * v333) >> 32))), 8);
  v436 = v432 ^ v426 ^ *(v420 + 4 * (v397 % 0x610));
  LODWORD(v432) = 545 * (v432 ^ v426 ^ *(v420 + 4 * (v397 % 0x610))) + 702505;
  LODWORD(v397) = STACK[0x5338];
  LOBYTE(v418) = *((BYTE1(LODWORD(STACK[0x5338])) ^ 0xEAu) + v417 + 34368);
  LODWORD(v408) = v432 - 1552 * ((2767376 * v432) >> 32);
  LODWORD(v432) = (LODWORD(STACK[0x5080]) - 85 * (((v418 ^ 8) + 127) ^ ((v418 ^ 0x1C) + 107) ^ ((v418 ^ 0xA0) - 41)));
  v437 = (545 * (v432 | ((v432 < 4) << 8)) + 700325) % 0x610;
  LODWORD(v360) = LODWORD(STACK[0x52F8]) ^ __ROR4__(*(v420 + 4 * LODWORD(STACK[0x5680])), 8) ^ __ROR4__(*(v420 + 4 * v425), 16) ^ __ROR4__(*(v420 + 4 * v408), 24) ^ *(v420 + 4 * LODWORD(STACK[0x52A8]));
  LODWORD(v425) = v360 - 2097460732 - ((2 * v360) & 0x5F69408);
  LODWORD(v432) = STACK[0x5600];
  v438 = STACK[0x5600] & 0xC4C4C4C4 ^ 0x62A2A262;
  v439 = STACK[0x5780];
  v440 = STACK[0x5760] & v438;
  STACK[0x5050] = v440;
  v441 = v440 << v430;
  LODWORD(v390) = v359 ^ v441 ^ ((v432 & 0x8484C0C4 ^ 0x22A28262 ^ (v331 ^ 0xA642C200) & v438) >> v439) ^ v425;
  v442 = v428 & 0xC4C4C4C4 ^ 0x26E262E2;
  v443 = v428 & 0x80404404 ^ 0x2626022 ^ v442 & (v431 ^ LODWORD(STACK[0x22B8]));
  v444 = STACK[0x5510];
  v445 = (545 * BYTE1(v444) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v444) + 702505)) >> 32));
  LODWORD(STACK[0x55F0]) = HIBYTE(v436);
  LODWORD(v417) = STACK[0x5460];
  LODWORD(v333) = 545 * LODWORD(STACK[0x5460]) + 702505;
  STACK[0x5680] = v445;
  LODWORD(v425) = LODWORD(STACK[0x5270]) ^ __ROR4__(*(v420 + 4 * v445), 16) ^ *(v420 + 4 * ((545 * (((HIBYTE(v436) ^ 0xDCF690B2) + 1773398017) ^ ((HIBYTE(v436) ^ 0x88777A86) + 1026687541) ^ ((HIBYTE(v436) ^ 0x5481EA34) - 507211129)) + 388285206) % 0x610)) ^ __ROR4__(*(v420 + 4 * (545 * BYTE2(v397) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v397) + 702505)) >> 32))), 8);
  LODWORD(v426) = __ROR4__(*(v420 + 4 * (v333 - 1552 * ((2767376 * v333) >> 32))), 24);
  LODWORD(STACK[0x5058]) = v438;
  v446 = STACK[0x57C0];
  v447 = v435 ^ v441 ^ ((v432 & STACK[0x22BC] ^ (v331 ^ 0xE0246600) & v438 ^ 0x60802262) >> STACK[0x57C0]) ^ ((v425 ^ v426) - 2097460732 - ((2 * (v425 ^ v426)) & 0x5F69408));
  LODWORD(v425) = *(v434 + (((v444 >> 5) | (8 * (v444 & 0x1F))) ^ 0x50) + 89280) ^ (STACK[0x55C0] & 0xB3 ^ 0xD) & (LODWORD(STACK[0x55C0]) | 0x4C) ^ STACK[0x55C0] & 0xB2;
  LODWORD(v425) = ((((v425 ^ 0x4B) - 100) ^ ((v425 ^ 0xCC) + 29) ^ ((v425 ^ 0x85) + 86)) - 103);
  LODWORD(v425) = *(v420 + 4 * ((545 * (v425 | ((v425 < 8) << 8)) + 698145) % 0x610));
  LODWORD(STACK[0x55C0]) = BYTE3(v425);
  LODWORD(v425) = (BYTE3(v425) ^ 0x7128DE03) & ((v425 << 8) ^ 0x7BBBDFFF) | (v425 << 8) & 0x8ED72100;
  LOBYTE(v333) = *(v434 + ((55 * BYTE2(v436)) ^ 0x1C9D6u));
  LODWORD(v333) = ((((v333 ^ 0x75) - 96) ^ ((v333 ^ 0x74) - 97) ^ ((v333 ^ 0xD4) + 63)) + 43);
  LODWORD(v445) = LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x5180]);
  LODWORD(v432) = *(v420 + 4 * v437);
  LODWORD(STACK[0x50A8]) = v445;
  LODWORD(v432) = LODWORD(STACK[0x5348]) ^ v445 ^ 0x7128DE03 ^ LODWORD(STACK[0x5288]) ^ LODWORD(STACK[0x5068]) ^ __ROR4__(v432, 16) ^ *(v420 + 4 * (545 * BYTE3(v417) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v417) + 702505)) >> 32)));
  LODWORD(v426) = __ROR4__(*(v420 + 4 * ((545 * (v333 | ((v333 < 0x78) << 8)) + 637105) % 0x610)), 8);
  v448 = v443 << STACK[0x57B0];
  LODWORD(STACK[0x5068]) = v442;
  v449 = v442 & STACK[0x5720];
  v450 = v435 ^ (v448 | (v449 >> v439)) ^ ((v432 ^ v426 ^ v425) - 2097460732 - ((2 * (v432 ^ v426 ^ v425)) & 0x5F69408));
  v451 = v450 - ((2 * v450) & 0x77D625D6) - 0x122628B5C414ED15;
  STACK[0x5520] = v451 >> 24;
  v452 = v447 - ((2 * v447) & 0xAEED7ED4) - 0x748BEBB8A8894096;
  LODWORD(v425) = *(v420 + 4 * ((545 * ((((v451 >> 24) ^ LODWORD(STACK[0x22C4])) + 1250094687) ^ (((v451 >> 24) ^ 0xD1B812B6) + 1707213673) ^ (((v451 >> 24) ^ 0xF697A70D) + 1122875092)) - 2114317437) % 0x610)) ^ __ROR4__(*(v420 + 4 * (545 * (BYTE2(v452) ^ 0x76) + 702505 - 1552 * ((2767376 * (545 * (BYTE2(v452) ^ 0x76u) + 702505)) >> 32))), 8);
  LODWORD(STACK[0x54B0]) = v425;
  LODWORD(STACK[0x54D0]) = (545 * BYTE2(v390) + 702505) % ((v425 & 0x610 ^ 0x610) + (v425 & 0x610));
  v453 = 545 * LODWORD(STACK[0x5338]) + 702505;
  STACK[0x52F8] = v449;
  v454 = v449 >> v446;
  STACK[0x5028] = v454;
  LODWORD(v425) = LODWORD(STACK[0x5278]) ^ (((v448 + 314870655 - ((2 * v448) & 0x258916FE)) ^ 0x12C48B7F) + v454) ^ *(v420 + 4 * (545 * HIBYTE(v444) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v444) + 702505)) >> 32))) ^ __ROR4__(*(v420 + 4 * (545 * BYTE2(v417) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v417) + 702505)) >> 32))), 8) ^ __ROR4__(*(v420 + 4 * (545 * BYTE1(v436) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v436) + 702505)) >> 32))), 16);
  LODWORD(v426) = __ROR4__(*(v420 + 4 * (v453 - 1552 * ((2767376 * v453) >> 32))), 24);
  v455 = ((v425 ^ v426) - 2097460732 - ((2 * (v425 ^ v426)) & 0x5F69408)) ^ v435;
  v456 = v455 - ((2 * v455) & 0x1FB2AB87ALL) - 0x15A877EF026AA3C3;
  HIDWORD(v426) = *(v420 + 4 * (545 * (BYTE2(v456) ^ 0x95) + 702505 - 1552 * ((2767376 * (545 * (BYTE2(v456) ^ 0x95u) + 702505)) >> 32)));
  LODWORD(v426) = HIDWORD(v426);
  LODWORD(v408) = (v447 + 1289) * (((HIDWORD(v426) >> 8) & 0x221 ^ 0x221) + ((HIDWORD(v426) >> 8) & 0x221));
  LODWORD(v408) = *(v420 + 4 * (v408 - 1552 * ((2767376 * v408) >> 32)));
  v457 = (v408 << 8);
  STACK[0x5430] = v457;
  v458 = (BYTE3(v408) ^ 0x506EC82E) & (v457 ^ 0xF3EEFCFF) | v457 & 0xAF913700;
  STACK[0x5470] = v452;
  LODWORD(STACK[0x5510]) = BYTE1(v452);
  LODWORD(v417) = 545 * (BYTE1(v452) ^ 0xBF) + 702505 - 1552 * ((2767376 * (545 * (BYTE1(v452) ^ 0xBFu) + 702505)) >> 32);
  LODWORD(STACK[0x53A0]) = v390;
  LODWORD(v408) = *(v420 + 4 * ((545 * (((v390 ^ 0x5665A519) + 1088102659) ^ ((v390 ^ LODWORD(STACK[0x22C0])) - 1047534452) ^ ((v390 ^ 0x8154C589) - 1746255469)) - 1804371827) % 0x610));
  LODWORD(v331) = BYTE3(v408);
  v459 = (BYTE3(v408) ^ 0x9EF661F9) & ((v408 << 8) ^ 0x9FFE7DFF) | (v408 << 8) & 0x61099E00;
  LODWORD(v408) = (v452 >> 21) & 0xFFFFFFF8;
  LODWORD(STACK[0x53E0]) = v408;
  LODWORD(v447) = (v408 ^ 0xFFFFFFC3) & ((v447 >> 29) ^ 0xFFFFFFFB) ^ ((v447 >> 29) & 4 | 0x39);
  LODWORD(STACK[0x5368]) = v447;
  v460 = STACK[0x57A0];
  LOBYTE(v447) = *(STACK[0x57A0] + (v447 ^ 0x36u) + 7936);
  LOBYTE(v447) = (((v447 ^ 0x55) - 85) ^ ((v447 ^ 0x65) - 101) ^ ((v447 ^ 0x8D) + 115)) - 69;
  LOBYTE(v397) = v447 & 0xD9 ^ 0x18;
  LOBYTE(v447) = v447 ^ (2 * ((v447 ^ 0x28) & (2 * ((v447 ^ 0x28) & (2 * ((v447 ^ 0x28) & (2 * ((v447 ^ 0x28) & (2 * (v447 & (2 * (((2 * v447) & 0x52 | 0x29) & v447)) ^ v397)) ^ v397)) ^ v397)) ^ v397)) ^ v397));
  LODWORD(v447) = 545 * ((v447 ^ (8 * v447) ^ 0x12) + 100) + 702505;
  LODWORD(v408) = v447 - 1552 * ((2767376 * v447) >> 32);
  LODWORD(v447) = (v450 >> 3) | (32 * (v450 & 7));
  v461 = (v447 ^ 0xE7) + 130394;
  LODWORD(v447) = ((((v447 - ((2 * v447) & 0x1DA) + 109) ^ 0xFFFFFFB1) - 121) ^ (((v447 - ((2 * v447) & 0x1DA) + 109) ^ 0xFFFFFFD9) - 17) ^ (((v447 - ((2 * v447) & 0x1DA) + 109) ^ 0xFFFFFF92) - 90)) - 78;
  LODWORD(v450) = (v447 & 0xFFFFFF83 | 0x44) ^ v447 & 0xFFFFFF88;
  v462 = v447 ^ (2 * ((v447 ^ 2) & (2 * ((v447 ^ 2) & (2 * ((v447 ^ 2) & (2 * ((v447 ^ 2) & (2 * ((v447 ^ 2) & (2 * ((v447 ^ 2) & (2 * v450) ^ v450)) ^ v450)) ^ v450)) ^ v450)) ^ v450)) ^ v450));
  LODWORD(STACK[0x5408]) = (((v456 >> 16) ^ 5) + 80) ^ (((v456 >> 16) ^ 0xFFFFFF85) - 48) ^ (((v456 >> 16) ^ 0x15) + 96);
  LODWORD(STACK[0x53D8]) = (((v451 >> 16) ^ 0xFFFFFF87) + 114) ^ (((v451 >> 16) ^ 0x2C) - 37) ^ (((v451 >> 16) ^ 0x40) - 73);
  LODWORD(STACK[0x5530]) = ((STACK[0x5530] ^ 0x7A) - 68) ^ ((STACK[0x5530] ^ 0xFFFFFF92) + 84) ^ ((STACK[0x5530] ^ 0x3B) - 5);
  v463 = v456 >> 8;
  STACK[0x5218] = (v456 >> 8) ^ 0x45;
  LODWORD(v408) = *(v420 + 4 * v408) ^ __ROR4__(*(v420 + 4 * ((545 * (((BYTE1(v456) ^ 0xFB08B34D) + 83315960) ^ ((BYTE1(v456) ^ 0x5E5AF502) - 1583019335) ^ ((BYTE1(v456) ^ 0xA5524613) + 1521334698)) + 716130) % 0x610)), 16);
  LOBYTE(v456) = *(v460 + v461);
  LODWORD(STACK[0x4FF0]) = v462 ^ 0xFFFFFFDA;
  LODWORD(v456) = 545 * (117 * (v456 ^ v462 ^ 0xDA ^ 0x3E)) + 702505;
  LODWORD(v456) = *(v420 + 4 * (v456 - 1552 * ((2767376 * v456) >> 32)));
  LODWORD(v461) = BYTE3(v456);
  LODWORD(v456) = (BYTE3(v456) ^ 0x3853FE0D) & ((v456 << 8) ^ 0x7A77FEFF) | (v456 << 8) & STACK[0x48A0];
  LODWORD(v452) = v408 - ((2 * v408) & 0xC27FC608);
  v464 = *(v420 + 4 * ((545 * (((BYTE3(v390) ^ 0x989DC7C) + 142319588) ^ ((BYTE3(v390) ^ 0x759E5354) + 1953239244) ^ ((BYTE3(v390) ^ 0x7C178F28) + 2112212152)) - 615989111) % 0x610u)) ^ ((v426 >> 8) - 2 * ((v426 >> 8) & 0xD29A97F ^ (HIDWORD(v426) >> 8) & 0xF) - 1926649488) ^ v458 ^ 0xDD47615E;
  LODWORD(STACK[0x5460]) = (v451 >> 8) ^ 0x43;
  LODWORD(STACK[0x5398]) = (545 * (((BYTE1(v451) ^ 0x7CFCB6EB) - 2096936616) ^ ((BYTE1(v451) ^ 0xD4377448) + 734563317) ^ ((BYTE1(v451) ^ 0xA8CBC2B1) + 1463041294)) + 746650) % 0x610;
  v465 = *(v420 + 4 * (545 * BYTE1(v390) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v390) + 702505)) >> 32)));
  v466 = v465 >> (((v463 & 0x10 | 0xA6) ^ ((v463 & 0x10) - 102) ^ ((v463 & 0x10 ^ 0x96) - 112)) + ((v463 & 0x10 | 0xAF) ^ ((v463 | 0xEF) + 72) ^ ((v463 & 0x10) + 49)) + 77);
  LODWORD(v463) = v466 | (v465 << 16);
  LODWORD(v465) = LODWORD(STACK[0x5318]) ^ 0x9EF661F9 ^ __ROR4__(*(v420 + 4 * v417), 16) ^ __ROR4__(*(v420 + 4 * (545 * (BYTE2(v451) ^ 0xEB) + 702505 - 1552 * ((2767376 * (545 * (BYTE2(v451) ^ 0xEBu) + 702505)) >> 32))), 8) ^ *(v420 + 4 * (545 * BYTE3(v455) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v455) + 702505)) >> 32))) ^ v459;
  v467 = STACK[0x5600] & 0xB2B2B2B2;
  v468 = STACK[0x5600] & 0x22223222 ^ 0xA004108 ^ (LODWORD(STACK[0x5650]) ^ 0x3AC372C0) & (v467 ^ 0x5BC9C959);
  LODWORD(v447) = STACK[0x5660];
  v469 = STACK[0x5600] & 0xB0B0B282 ^ 0x11898140 ^ (LODWORD(STACK[0x5660]) ^ 0xD2E17030) & (v467 ^ 0x5BC9C959);
  v470 = LODWORD(STACK[0x5320]) - 2097460732 - ((2 * LODWORD(STACK[0x5320])) & 0x5F69408);
  v471 = LODWORD(STACK[0x54B0]) ^ LODWORD(STACK[0x5290]) ^ __ROR4__(*(v420 + 4 * (545 * v455 + 702505 - 1552 * ((2767376 * (545 * v455 + 702505)) >> 32))), 24) ^ v463;
  v472 = STACK[0x57B0];
  STACK[0x51C8] = v468;
  v473 = v468 >> STACK[0x5780];
  STACK[0x5018] = v473;
  LODWORD(v390) = STACK[0x5440];
  v474 = LODWORD(STACK[0x5440]) ^ (v469 << v472) ^ v473 ^ (v465 - 2097460732 - ((2 * v465) & 0x5F69408));
  LODWORD(v469) = STACK[0x5640] & 0x59595959;
  v475 = (v469 ^ 0x10500941) << (((v466 & 0x3B ^ 0xBB) + (v466 & 0x3B)) & 0x41);
  LODWORD(v465) = LODWORD(STACK[0x5310]) - 2097460732 - ((2 * LODWORD(STACK[0x5310])) & 0x5F69408);
  v476 = STACK[0x5790];
  LODWORD(v448) = STACK[0x5720];
  v477 = STACK[0x57C0];
  LODWORD(v466) = v475 ^ 0x59595959;
  v478 = v475 & 0x53D11040 ^ 0x51511040 ^ (v475 ^ 0x59595959) & (v447 ^ 0x348DD7B2);
  LODWORD(v443) = (((((2 * v469) ^ 0x79F94BDBu) & STACK[0x5760]) << STACK[0x5790]) | ((((2 * v469) ^ 0x79F94BDBu) & STACK[0x5720]) >> STACK[0x57C0])) ^ LODWORD(STACK[0x5440]) ^ v470 ^ (v452 - 515906812) ^ v456 ^ __ROR4__(*(v420 + 4 * LODWORD(STACK[0x54D0])), 8);
  LODWORD(v452) = HIBYTE(v474) == (HIBYTE(v474) - 112);
  LODWORD(v452) = v452 | (32 * v452) | LODWORD(STACK[0x56D0]);
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x51E0]) ^ 0x7E;
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x5220]) ^ 0x3B;
  LODWORD(STACK[0x54B0]) = LODWORD(STACK[0x5240]) ^ 0x7F;
  v479 = STACK[0x5340] >> 8;
  LODWORD(STACK[0x5410]) = v331 ^ 0x18;
  v480 = STACK[0x5470] >> 16;
  LODWORD(STACK[0x5390]) = LODWORD(STACK[0x5510]) ^ 0xD5;
  LODWORD(STACK[0x5320]) = LODWORD(STACK[0x53E0]) | 5;
  LODWORD(STACK[0x5338]) = STACK[0x5520] ^ 2;
  LODWORD(v473) = STACK[0x53A0];
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x53A0]) ^ 0xFFFFFFE5;
  LODWORD(STACK[0x53E0]) = WORD1(v473);
  LODWORD(STACK[0x5380]) = v480 ^ 0x6F;
  LODWORD(STACK[0x5408]) += 124;
  LODWORD(STACK[0x5520]) = LODWORD(STACK[0x55C0]) ^ 0xFFFFFFE5;
  LODWORD(STACK[0x5470]) = LODWORD(STACK[0x5530]) - 14;
  LODWORD(STACK[0x5270]) = LODWORD(STACK[0x56C0]) ^ 0xFFFFFFB4;
  LODWORD(v447) = *(v420 + 4 * LODWORD(STACK[0x5398]));
  LODWORD(STACK[0x5290]) = v479 ^ 0x77;
  LODWORD(STACK[0x5398]) = v461 ^ 0xFFFFFFBD;
  STACK[0x5240] = v464;
  LODWORD(v464) = v464 ^ __ROR4__(v447, 16);
  v481 = (v466 & v448) >> v477;
  STACK[0x55C0] = v467 ^ 0x2909000;
  LODWORD(STACK[0x53D8]) = (v471 - 2097460732 - ((2 * v471) & 0x5F69408)) ^ v390;
  v482 = v443 ^ 0xD96C1D09;
  LODWORD(STACK[0x52A8]) = v482 - ((2 * v482) & 0xFFFFFFDC) + 110;
  LODWORD(STACK[0x5318]) = v464;
  LODWORD(v473) = v465 ^ v390 ^ v464;
  STACK[0x5278] = v478;
  LODWORD(STACK[0x5340]) = v473;
  v483 = (v478 << v472) ^ v473 ^ v481;
  LODWORD(STACK[0x5530]) = HIBYTE(LODWORD(STACK[0x5228])) ^ 0xFFFFFFE5;
  LODWORD(STACK[0x5378]) = (LODWORD(STACK[0x54E0]) >> 8) ^ 0xFFFFFFBD;
  v484 = *(STACK[0x57D8] + 8 * v452);
  LODWORD(STACK[0x53A0]) = v483 - ((2 * v483) & 0x7A) - 67;
  LODWORD(STACK[0x51E0]) = (((BYTE1(v474) ^ 0x1049168) + 478752043) ^ ((BYTE1(v474) ^ 0x827DFB16) - 1611643051) ^ ((BYTE1(v474) ^ 0x83796A7E) - 1628121539)) - 495826746;
  STACK[0x55F0] = v481;
  STACK[0x56C0] = STACK[0x51D8];
  LODWORD(STACK[0x5228]) = v467 ^ 0x5BC9C959;
  STACK[0x51D8] = (STACK[0x5760] & (v467 ^ 0x5BC9C959)) << v476;
  LODWORD(STACK[0x5220]) = ((v482 - ((2 * v482) & 0x7A3D3264uLL) - 0x3823B95EC2E166CELL) >> 24) ^ 0xFFFFFF80;
  LODWORD(STACK[0x54E0]) = (v474 >> 8) ^ 0x57;
  STACK[0x56D0] = v483;
  LODWORD(STACK[0x5510]) = WORD1(v483) ^ 0xFFFFFFBD;
  return v484();
}

uint64_t sub_100363FB0(int a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = *(v8 + v10) * a4;
  v13 = v10 + a2 + (v12 ^ v9) - (((v12 ^ v9) + v10) >> (a7 ^ 0xBE)) + (((v12 ^ v9) + v10 - (((v12 ^ v9) + v10) >> (a7 ^ 0xBE))) >> 8);
  v14 = v10 + a2 + (v13 ^ v12) - (((v13 ^ v12) + v10) >> 16) + (((v13 ^ v12) + v10 - (((v13 ^ v12) + v10) >> 16)) >> 8);
  v15 = v10 + a2 + (v14 ^ v12) - (((v14 ^ v12) + v10) >> 16) + (((v14 ^ v12) + v10 - (((v14 ^ v12) + v10) >> 16)) >> 8);
  return (*(STACK[0x57D8] + 8 * ((21883 * (v7 == v10)) ^ a7)))(v13 ^ a1 ^ v11 & (2 * v13) ^ v14 ^ v11 & (2 * v14) ^ v15 ^ v11 & (2 * v15));
}

uint64_t sub_1003641D8()
{
  *(v0 + 3672) = v3;
  v6 = (v2 + 1072598680) ^ v1;
  v7 = STACK[0x2358];
  LODWORD(STACK[0x1D4D0]) = STACK[0x2358];
  STACK[0x1D4C0] = v7;
  LODWORD(STACK[0x1D4CC]) = v7 + v2 + 1451493860;
  LODWORD(STACK[0x1D4E0]) = v6 + v7;
  STACK[0x1D4D8] = v4 + v7;
  LODWORD(STACK[0x1D4D4]) = (v2 + 1072598680) ^ v7;
  LODWORD(STACK[0x1D4C8]) = ((v2 + 1072598680) ^ 0xF71) - v7;
  v8 = v2 ^ 0x2462;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * v8))(v5 - 240);
  return (*(v9 + 8 * SLODWORD(STACK[0x1D4E4])))(v10);
}

uint64_t sub_100364314()
{
  v3 = STACK[0x2690];
  *(v0 + 540) = v1 + v2;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_100364454()
{
  LODWORD(STACK[0x5EB4]) = v1;
  LODWORD(STACK[0xC224]) = 1675573713;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100364500()
{
  LODWORD(STACK[0x1D4C8]) = v0 - 16169987 * ((2 * ((v2 - 240) & 0x4F705C0) - (v2 - 240) + 2064185915) ^ 0x2E86CF13) + v1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9231)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 812)))(v4);
}

uint64_t sub_100364580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v6 = STACK[0x3948] & 0xBEFEF5F;
  v7 = STACK[0x51B8] - 2577;
  *a6 += 2;
  v8 = STACK[0xED70];
  v9 = (v8 ^ 0x79A46259) & (2 * (v8 & (v6 + 1925116730))) ^ v8 & (v6 + 1925116730);
  v10 = ((2 * (v8 ^ 0xF0EC66F9)) ^ 0x1A940942) & (v8 ^ 0xF0EC66F9) ^ (2 * (v8 ^ 0xF0EC66F9)) & 0x8D4A04A0;
  v11 = v10 ^ 0x854A04A1;
  v12 = (v10 ^ 0x8400400) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x35281284) & v11 ^ (4 * v11) & 0x8D4A04A0;
  v14 = (v13 ^ 0x5080080) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x88420421)) ^ 0xD4A04A10) & (v13 ^ 0x88420421) ^ (16 * (v13 ^ 0x88420421)) & 0x8D4A04A0;
  return (*(STACK[0x57D8] + 8 * ((52 * ((STACK[0xED70] ^ (2 * ((((v15 ^ 0x94A04A1) << 8) & 0x8D4A0400 ^ (((v15 ^ 0x94A04A1) << 8) ^ 0x4A040000) & (v15 ^ 0x94A04A1) ^ 0x8000000) & (((v15 ^ 0x84000000) & (v14 << 8) ^ v14) << 16) ^ (v15 ^ 0x84000000) & (v14 << 8) ^ v14))) != 2108056152)) ^ v7)))();
}

uint64_t sub_1003647D8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xAE68] = 0;
  return (*(v1 + 8 * (v0 - 12050)))(v2);
}

uint64_t sub_100364810()
{
  v0 = STACK[0x3660];
  v1 = STACK[0x3660] ^ 0x105A;
  STACK[0x5C98] = 0;
  LODWORD(STACK[0xA4E4]) = -769884012;
  STACK[0x91F0] = STACK[0xBCC0];
  STACK[0x6018] = STACK[0xA020];
  v2 = STACK[0x7ED8];
  STACK[0xA130] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v1 + v2 - 4512;
  v3 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v3 + 8 * (v0 + 4202)))();
}

uint64_t sub_100364918()
{
  LODWORD(STACK[0x4FB8]) = LODWORD(STACK[0x4FA8]) ^ 0xF5F5F5F5;
  LODWORD(STACK[0x4FA8]) = LODWORD(STACK[0x4F90]) - LODWORD(STACK[0x4F98]);
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100364C24()
{
  v2 = STACK[0x8128] + 4 * ((v1 ^ 0xBBA957A4) + v0);
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = v2;
  LODWORD(STACK[0x9094]) = -32197490;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100365FE8(int a1, int a2)
{
  v10 = a1 - 10546;
  v11 = (a1 - 487921943) & 0x1D14EFE2;
  v12 = STACK[0x5750];
  v13 = (v9 + ((a2 + v7 + ((a2 + v7) >> 16)) >> 8) + ((a2 + v7) >> 16) + a2 + v6 - 1) ^ 0xC5617561;
  v14 = v13 - (v13 >> 12) + ((v13 - (v13 >> 12)) >> 5);
  v15 = (v14 ^ 0x63FC5B0A) + ((v14 ^ 0x63FC5B0A) >> 15);
  v16 = v14 ^ v4;
  v17 = v15 + (v15 >> 1);
  v18 = v17 ^ v2;
  v19 = (v17 ^ 0xBF7C1EC9) + ((v17 ^ 0xBF7C1EC9) >> 15) + (((v17 ^ 0xBF7C1EC9) + ((v17 ^ 0xBF7C1EC9) >> 15)) >> 7);
  v20 = v19 + 573618605 - ((v19 + 573618605) >> 15) - ((v19 + 573618605 - ((v19 + 573618605) >> 15)) >> 1);
  v21 = v16 ^ v20;
  v22 = (v20 ^ 0x6220D51A) + ((v20 ^ 0x6220D51A) >> 11) - (((v20 ^ 0x6220D51A) + ((v20 ^ 0x6220D51A) >> 11)) >> 5);
  v23 = v18 ^ v22;
  v24 = v22 + 1578928324 - ((v22 + 1578928324) >> 12) + ((v22 + 1578928324 - ((v22 + 1578928324) >> 12)) >> 7);
  v25 = v24 - 1255408131 + ((v24 - 1255408131) >> 8) - ((v24 - 1255408131 + ((v24 - 1255408131) >> 8)) >> 5);
  v26 = v21 ^ v25;
  v27 = (v25 ^ 0x1FEFEDF) + ((v25 ^ 0x1FEFEDF) >> 12) - (((v25 ^ 0x1FEFEDF) + ((v25 ^ 0x1FEFEDF) >> 12)) >> 7);
  v28 = v23 ^ v27;
  v29 = v19 ^ v3 ^ v24 ^ ((v27 ^ 0xF14257BF) - ((v27 ^ 0xF14257BF) >> 13) - (((v27 ^ 0xF14257BF) - ((v27 ^ 0xF14257BF) >> 13)) >> 4));
  v30 = v26 & 0xFE ^ 0x78;
  LODWORD(STACK[0x54C0]) = v30;
  v31 = 16843009 * v30;
  v33 = v29 & 7;
  v32 = (v29 & 7) == 0;
  v34 = 16843009 * (v26 ^ 0xC1 ^ ((v26 ^ 0x6C1) >> 8) ^ ((v26 ^ 0x9ABB06C1) >> 16) ^ HIBYTE(v26) ^ 0x30);
  v35 = 16843009 * (((v28 ^ 0xB8FF592B) >> 16) ^ HIBYTE(v28) ^ v28 ^ 0x2B ^ ((v28 ^ 0x592B) >> 8) ^ 0x2F);
  LODWORD(STACK[0x51C0]) = v34;
  LODWORD(STACK[0x5138]) = v35;
  v36 = v34 ^ 0x3D3D3D3D ^ v35;
  v37 = STACK[0x5368];
  v38 = LODWORD(STACK[0x51F8]) ^ (32 * (v33 ^ 0xC748164D ^ (v37 - 951577011 + 2 * ((v37 | 0x7FFFFFFD) ^ LODWORD(STACK[0x5540])) + 2)));
  v39 = LODWORD(STACK[0x5220]) ^ 0x516CC05;
  LODWORD(STACK[0x51F8]) = v33 ^ 0xC748164D;
  v40 = v33 ^ 0xC748164D ^ v37 ^ (v38 - 951577011 - ((2 * v38) & 0x8E902C9A));
  v41 = STACK[0x5520];
  LODWORD(STACK[0x5480]) = v36;
  v42 = v36 - v41;
  v43 = v39 + 687772319 * (v36 - v41);
  v44 = *(*(&off_101353600 + v10 - 12003) + v33 - 1) ^ 0x63D83207;
  LODWORD(STACK[0x51A0]) = 25920457 * v42;
  STACK[0x5380] = v33;
  v45 = ((v33 ^ 0x5E23B91C) + 1720996015) ^ (v33 + 993521203) ^ ((v33 ^ 0x7777BA7C) + 1338004431);
  LODWORD(STACK[0x5220]) = v31 >> 1;
  v46 = (v26 & 0xFFFFFF01 | (2 * (v31 >> 1))) ^ 0xCFE83400;
  v47 = ((v11 - 12074) & v12 | v37) ^ 0x8E714A18;
  v48 = STACK[0x5180];
  v49 = (STACK[0x5180] & 0xFE | v5) ^ 0x8E714A00;
  v50 = ((LODWORD(STACK[0x5208]) ^ 0x9E06C4FF) + 1643723521) ^ ((LODWORD(STACK[0x5208]) ^ 0x4F07AD4) - 82868948) ^ ((LODWORD(STACK[0x5208]) ^ 0x25CEBBCB) - 634305483);
  LODWORD(STACK[0x5108]) = ((v29 ^ 0xF6F7427D) - 1395645222) ^ ((v29 ^ 0xE455B2A0) - 1099770875) ^ ((v29 ^ 0xDD4AC4A5) - 2022858238);
  LODWORD(STACK[0x51A8]) = v46 & 0x38B38375 ^ v26 & 1;
  LODWORD(v33) = STACK[0x56D0];
  LODWORD(STACK[0x57C0]) = v47;
  LODWORD(STACK[0x5208]) = v40 + 1029989927 * (v47 - v33);
  LODWORD(STACK[0x5150]) = 477652643 * (v47 - v33);
  v51 = STACK[0x5770];
  v52 = -v29 & 7;
  v53 = (-489630529 * LODWORD(STACK[0x5770])) ^ LODWORD(STACK[0x5560]) ^ (4 * v29) ^ (-489630529 * v52);
  LODWORD(STACK[0x5540]) = v29;
  LODWORD(STACK[0x5100]) = v50 + 1426544829 + (v29 ^ 0xCFE83478);
  LODWORD(STACK[0x54D0]) = v53 ^ (4 * (v29 ^ 0xCFE83478));
  v54 = v26 ^ 0xCFE83478;
  LODWORD(STACK[0x5190]) = 1037242897 * ((v26 ^ 0xCFE83478) - v46);
  v55 = v44 ^ LODWORD(STACK[0x5510]) ^ __ROR4__(*(*(&off_101353600 + v10 - 11544) + v37 - 2), 21) ^ (2 * v44 * v44);
  v56 = STACK[0x56F0];
  v57 = LODWORD(STACK[0x56F0]) ^ 0x8E714A1A;
  LODWORD(STACK[0x5560]) = v49 ^ v57 ^ LODWORD(STACK[0x5450]) ^ ((v49 ^ v57) >> 4);
  LODWORD(STACK[0x5198]) = v49;
  LODWORD(v33) = v49 ^ v57 ^ (v49 << 8) ^ v43;
  LODWORD(STACK[0x50F8]) = v33;
  LODWORD(STACK[0x50F0]) = v33 & (v8 + 3945) ^ (v57 << 8) & (v8 + 3806);
  LODWORD(STACK[0x5500]) = (1173721019 * v56) ^ LODWORD(STACK[0x51E0]) ^ (1103677917 * LODWORD(STACK[0x5500])) ^ (1173721019 * (v26 ^ 0x41997E62));
  LODWORD(STACK[0x5148]) = ((v51 + LODWORD(STACK[0x5530]) - v52) ^ v12) - ((2 * ((v51 + LODWORD(STACK[0x5530]) - v52) ^ v12)) & 0xD4615A46) + 1781574947;
  if (v32)
  {
    v58 = 0;
  }

  else
  {
    v58 = 255;
  }

  v59 = v58 << v52;
  LODWORD(STACK[0x5308]) = (-922746880 * v59) & v28;
  if (v32)
  {
    v60 = 0;
  }

  else
  {
    v60 = ~v59;
  }

  LODWORD(STACK[0x57A0]) = v26 & v60;
  LODWORD(STACK[0x51B0]) = *(*(&off_101353600 + (v10 ^ 0x2CA1)) + v51 - 2);
  v61 = *(&off_101353600 + (v10 ^ 0x2A37));
  LODWORD(STACK[0x51D8]) ^= 0x516CC05u;
  LODWORD(STACK[0x57B0]) = v52;
  LODWORD(STACK[0x5130]) = *(v61 + 4 * v52 - 12);
  LODWORD(STACK[0x5510]) = v46;
  LODWORD(STACK[0x50D8]) = v46 - 1196194956;
  LODWORD(STACK[0x50E0]) = v45 - v37;
  LODWORD(STACK[0x5128]) = -v57;
  LODWORD(STACK[0x50E8]) = (v57 << 8) & 0x76988100;
  LODWORD(STACK[0x5450]) = v28;
  LODWORD(STACK[0x51D0]) = v28 ^ 0xE0148F4E;
  v62 = *(STACK[0x57D8] + 8 * v10);
  LODWORD(STACK[0x5178]) = v31;
  LODWORD(STACK[0x5120]) = v31 >> 6;
  LODWORD(STACK[0x5118]) = v48 >> 6;
  LODWORD(STACK[0x5440]) = v54;
  LODWORD(STACK[0x5110]) = 641872283 * v54;
  LODWORD(STACK[0x51E0]) = v55;
  LODWORD(STACK[0x5530]) = v55 ^ 0xE073CA64;
  return v62(0x6AA8BB170A81870DLL);
}

uint64_t sub_100366BD4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B44])))(v2);
}

uint64_t sub_100366E10()
{
  v2 = 0;
  v3 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xEEC3B11C));
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v3 ^ 0xEEC3B11F) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3 ^ 0xEEC3B11F;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  v10 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  v11 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v10 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v10;
  STACK[0xEE70] = 0;
  STACK[0xEE78] = v0;
  v12 = 16777619 * ((-289165025 * v11 + 7) ^ (-289165025 * v11)) % 7;
  v13 = 16777619 * ((-289165025 * v11 + 6) ^ (-289165025 * v11)) % 6;
  v14 = 16777619 * ((-289165025 * v11 + 5) ^ (-289165025 * v11)) % 5;
  v15 = 16777619 * ((-289165025 * v11 + 3) ^ (-289165025 * v11)) % 3;
  v16 = *(&STACK[0xEE70] | v12);
  *(&STACK[0xEE70] | v12) = STACK[0xEE77];
  v17 = *(&STACK[0xEE70] | v13);
  *(&STACK[0xEE70] | v13) = STACK[0xEE76];
  v18 = *(&STACK[0xEE70] | v14);
  *(&STACK[0xEE70] | v14) = STACK[0xEE75];
  v19 = STACK[0xEE70];
  LOBYTE(STACK[0xEE70]) = STACK[0xEE74];
  v20 = *(&STACK[0xEE70] | v15);
  *(&STACK[0xEE70] | v15) = STACK[0xEE73];
  v21 = vdup_n_s32(-289165025 * v11);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = -289165025 * v11 + 1;
  LOBYTE(STACK[0xEE77]) = v16;
  LOBYTE(STACK[0xEE76]) = v17;
  LOBYTE(STACK[0xEE75]) = v18;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  LOBYTE(STACK[0xEE74]) = v19;
  LOBYTE(STACK[0xEE73]) = v20;
  v24 = STACK[0xEE71];
  LOBYTE(STACK[0xEE72]) = STACK[0xEE70];
  LOWORD(STACK[0xEE70]) = v24;
  v25 = vdup_n_s32(0x1000193u);
  STACK[0xEE70] = vmla_s32(v23, STACK[0xEE70], v25);
  v26 = STACK[0xEE78];
  v27 = (-289165025 * STACK[0xEE78]) ^ v11;
  v28 = vdupq_n_s32(v27);
  v29 = xmmword_1012370F0;
  v30 = xmmword_101237100;
  v31 = xmmword_101237110;
  v32 = xmmword_101237120;
  v33.i64[0] = 0x1000000010;
  v33.i64[1] = 0x1000000010;
  v34.i64[0] = 0x9393939393939393;
  v34.i64[1] = 0x9393939393939393;
  do
  {
    v35 = *(v26 + v2);
    v49.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237140), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v49.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237150), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v49.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237160), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v49.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_101237170), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v2) = vmulq_s8(vqtbl4q_s8(v49, xmmword_101237130), v34);
    v2 += 16;
    v32 = vaddq_s32(v32, v33);
    v31 = vaddq_s32(v31, v33);
    v30 = vaddq_s32(v30, v33);
    v29 = vaddq_s32(v29, v33);
  }

  while (v2 != 16);
  v36 = (v26 + 8);
  v37 = 1;
  for (i = 3; i > 2; --i)
  {
    v39 = 16777619 * ((v27 + v37) ^ v27) % v37;
    v40 = *(v26 + 8 * v39) ^ *v36;
    *v36 = v40;
    v41 = *(v26 + 8 * v39) ^ v40;
    *(v26 + 8 * v39) = v41;
    *v36-- ^= v41;
    --v37;
  }

  v42 = *(&STACK[0xEE78] + v12);
  *(&STACK[0xEE78] + v12) = STACK[0xEE7F];
  LOBYTE(STACK[0xEE7F]) = v42;
  v43 = *(&STACK[0xEE78] + v13);
  *(&STACK[0xEE78] + v13) = STACK[0xEE7E];
  LOBYTE(STACK[0xEE7E]) = v43;
  v44 = *(&STACK[0xEE78] + v14);
  *(&STACK[0xEE78] + v14) = STACK[0xEE7D];
  LOBYTE(STACK[0xEE7D]) = v44;
  v45 = STACK[0xEE78];
  LOBYTE(STACK[0xEE78]) = STACK[0xEE7C];
  LOBYTE(STACK[0xEE7C]) = v45;
  v46 = *(&STACK[0xEE78] + v15);
  *(&STACK[0xEE78] + v15) = STACK[0xEE7B];
  LOBYTE(STACK[0xEE7B]) = v46;
  v47 = STACK[0xEE79];
  LOBYTE(STACK[0xEE7A]) = STACK[0xEE78];
  LOWORD(STACK[0xEE78]) = v47;
  STACK[0xEE78] = vmla_s32(v23, STACK[0xEE78], v25);
  *STACK[0x4420] = STACK[0xEE78] ^ STACK[0xEE70];
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1003672FC()
{
  v7 = STACK[0xC7B8];
  *(v7 + 392) = v2;
  *(v7 + 396) = STACK[0x8C14];
  *(v7 + 400) = STACK[0x6410];
  v8 = v4 - v0 + 552445502;
  v9 = (v8 ^ 0x9ED85DAB) & (2 * (v8 & 0xDF1259C2)) ^ v8 & 0xDF1259C2;
  v10 = ((v6 - 14094) ^ 0x7FEA275E) & (2 * (v8 ^ 0xA0F85C2B)) ^ ((2 * (v8 ^ 0xA0F85C2B)) ^ 0xFFD40BD2) & (v8 ^ 0xA0F85C2B);
  v11 = v10 ^ 0x2A0429;
  v12 = (v10 ^ 0x7CE00121) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xFFA817A4) & v11 ^ (4 * v11) & 0x7FEA05E8;
  v14 = (v13 ^ 0x7FA805A0) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x420049)) ^ 0xFEA05E90) & (v13 ^ 0x420049) ^ (16 * (v13 ^ 0x420049)) & 0x7FEA05E0;
  v16 = v14 ^ 0x7FEA05E9 ^ (v15 ^ 0x7EA00400) & (v14 << 8);
  *(v7 + 408) = v8 ^ (2 * ((v16 << 16) & 0x7FEA0000 ^ v16 ^ ((v16 << 16) ^ 0x5E90000) & (((v15 ^ 0x14A0169) << 8) & 0x7FEA0000 ^ 0x15EA0000 ^ (((v15 ^ 0x14A0169) << 8) ^ 0x6A050000) & (v15 ^ 0x14A0169)))) ^ 0xF90AD284;
  *(v7 + 416) = v1 + (v0 - 2056410192);
  v17 = (*(v5 + 48 * v3 + 8))(STACK[0x5790], v7 + 392) == 0;
  return (*(STACK[0x57D8] + 8 * ((15093 * v17) ^ v6)))();
}

uint64_t sub_10036750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (STACK[0x51B8] - 11296) | 0x109;
  v8 = STACK[0x51B8] - 21263;
  v9 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v10 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v8);
  return (*(v10 + 8 * ((v7 - 10625) ^ v8 ^ (4789 * ((v8 ^ 0x43612883u) < 0xDD36C1DB)))))(v9, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1003675EC(int a1)
{
  STACK[0xCF30] = v2 - 16;
  v5 = (v1 + (a1 - 16));
  *v4 = *v5;
  v4[1] = v5[1];
  v4[2] = v5[2];
  v4[3] = v5[3];
  v4[4] = v5[4];
  v4[5] = v5[5];
  v4[6] = v5[6];
  v4[7] = v5[7];
  v4[8] = v5[8];
  v4[9] = v5[9];
  v4[10] = v5[10];
  v4[11] = v5[11];
  v4[12] = v5[12];
  v4[13] = v5[13];
  v4[14] = v5[14];
  v4[15] = v5[15];
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_1003676A0()
{
  v0 = STACK[0x51B8];
  STACK[0x5DA0] = 0xD38CBDD3ACAFF84ALL;
  return (*(STACK[0x57D8] + 8 * (v0 - 20426)))();
}

uint64_t sub_10036781C()
{
  v1 = STACK[0x57D8];
  STACK[0x7E68] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 175034090 + ((v0 - 17892385) & 0xB7FFF77))))();
}

uint64_t sub_10036788C()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6018)))();
  *(v1 + 8) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1003679BC()
{
  v0 = STACK[0xECC];
  v1 = LODWORD(STACK[0xECC]) + 11216;
  v2 = STACK[0x57D8];
  STACK[0xC2A0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xECC]));
  return (*(v2 + 8 * ((v1 ^ 0x3CAD) + v0)))();
}

uint64_t sub_100367A8C@<X0>(int a1@<W8>)
{
  v4 = STACK[0x57D8];
  STACK[0xA7B0] = *(STACK[0x57D8] + 8 * a1);
  v5 = STACK[0x7ED8];
  v6 = (&STACK[0x10120] + v5);
  *v6 = 0x5C32CD6D166A9C1DLL;
  v6[1] = 0xBA82D57C8ACBE819;
  *(&STACK[0x10120] + v5 + 16) = veorq_s8(*(&STACK[0x10120] + v5), xmmword_1012371D0);
  STACK[0x7ED8] = v5 + 32;
  STACK[0xCF30] = ((v3 - 2996) ^ 0x5BA7u) + ((v3 - 2996) | 0xC03u) + STACK[0xCF30] - 26634;
  STACK[0xD5B8] = v1;
  STACK[0xD5B0] = v2;
  return (*(v4 + 8 * ((439 * ((&STACK[0x10120] + v5 + 16) != v2)) ^ v3)))();
}

uint64_t sub_100367C4C()
{
  LODWORD(STACK[0x53E8]) = v0;
  LODWORD(STACK[0x4E50]) = v1;
  STACK[0xD6B8] = 0;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 + 12598)))(1028);
  STACK[0xD6B8] = v4;
  v5 = (*(v3 + 8 * (v2 ^ 0x313E)))(1028);
  STACK[0xD6C8] = v5;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(v3 + 8 * ((v7 * ((v2 - 3403) ^ v2 ^ 0x6A38 ^ 0x2E1C)) ^ v2)))();
}

uint64_t sub_100367D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 + 3353)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100367EEC@<X0>(int a1@<W2>, uint64_t a2@<X3>, int a3@<W5>, int a4@<W8>)
{
  v5 = *(STACK[0x5358] + ((((STACK[0x5338] & 0x552FEE17) + (STACK[0x5338] | 0x552FEE17) + 621562627) & STACK[0x53E8]) & 0xFFFFFFFFFFFFFFF8));
  v6 = __ROR8__((v5 + STACK[0x5360]) ^ 0xB88801D4E1C76353, 8);
  v7 = (v5 + STACK[0x5360]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v5, 61);
  v8 = (v6 + v7 - ((2 * (v6 + v7)) & 0xFECD91E64E2B64) + 0x7F66C8F32715B2) ^ 0x38B7D7A214227DC5;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xE580B17D8CC5E551;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xE1A1FD5BD155F97ALL;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (((v13 + v14) ^ 0xFDA35E6F955E11DALL | 0xEFA773601EEB0F1ALL) - ((v13 + v14) ^ 0xFDA35E6F955E11DALL | 0x10588C9FE114F0E5) + 0x10588C9FE114F0E5) ^ 0xC86466038817A159;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((v17 + v16 - ((2 * (v17 + v16)) & 0x524A001C3873CA02) - 0x56DAFFF1E3C61AFFLL) ^ 0x5310E2C3D707D4C6, 8);
  v19 = (v17 + v16 - ((2 * (v17 + v16)) & 0x524A001C3873CA02) - 0x56DAFFF1E3C61AFFLL) ^ 0x5310E2C3D707D4C6 ^ __ROR8__(v16, 61);
  v20 = (v18 + v19) ^ 0xD2F00CE620E5D3AELL;
  v21 = __ROR8__(v20, 8);
  v22 = STACK[0x5450];
  v23 = *(STACK[0x5450] + (a2 & (STACK[0x5440] + (((a3 ^ 0x119CF985) - STACK[0x5440]) | 0xC1B44FF5) + ((STACK[0x5440] + 778250775) | 0xC1B44FF5) - 1199052506)));
  v24 = v20 ^ __ROR8__(v19, 61);
  v25 = (STACK[0x56E0] + v23) ^ 0xB88801D4E1C76353;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x38C8B16AE7056877;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xE580B17D8CC5E551;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0xE888152B2D7E5E92) - 0xBBBF56A6940D0B7) ^ 0x15E5F7CE47EAD633;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((v34 + v33) | 0xD189C91469371838) - ((v34 + v33) | 0x2E7636EB96C8E7C7) + 0x2E7636EB96C8E7C7) ^ 0xBE982186A95A7A1;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = v21 + v24;
  v38 = (__ROR8__(v35, 8) + v36) ^ 0xFA35E2CDCB3E31C7;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xD2F00CE620E5D3AELL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = v42 + v41 - ((2 * (v42 + v41)) & 0xE9C0C4B06096DE24);
  LODWORD(STACK[0x53B0]) = 2 * a4;
  v44 = *(v22 + ((((a4 ^ 0x63771067) + 382019763 + ((2 * a4) & 0xC6EE20C0)) & STACK[0x5460]) & 0xFFFFFFFFFFFFFFF8));
  v45 = (((2 * (v44 + STACK[0x56F0])) & 0xD870C9BB17AEB1E2) - (v44 + STACK[0x56F0]) + 0x13C79B227428A70ELL) ^ 0xAB4F9AF695EFC45DLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__((v47 + v46 - ((2 * (v47 + v46)) & 0x9C6F14F326A0BB6) - 0x7B1C875866CAFA25) ^ 0xBC2BC9CD7E306DACLL, 8);
  v49 = (v47 + v46 - ((2 * (v47 + v46)) & 0x9C6F14F326A0BB6) - 0x7B1C875866CAFA25) ^ 0xBC2BC9CD7E306DACLL ^ __ROR8__(v46, 61);
  v50 = (v48 + v49) ^ 0xE580B17D8CC5E551;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((2 * (v52 + v51)) & 0x3EE5F91FBD46533ELL) - (v52 + v51) - 0x1F72FC8FDEA329A0) ^ 0x12CFE2BF0092F1ALL;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xDA604B0C03A2BF99;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xFA35E2CDCB3E31C7;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (((v59 + v58) | 0xCD0CD0CCCA7CFE41) - ((v59 + v58) | 0x32F32F33358301BELL) + 0x32F32F33358301BELL) ^ 0x1FFCDC2AEA992DEFLL;
  v61 = (__ROR8__(v60, 8) + (v60 ^ __ROR8__(v58, 61))) ^ 0x1E592809C0C3EA69;
  LODWORD(v58) = v4 + 15963;
  v62 = *STACK[0x51E8];
  v63 = *(STACK[0x54C0] + (v62 & 0xFFFFFFF8 & ((STACK[0x54B0] & 0xD046DA78) + (STACK[0x54B0] | 0xD046DA7B) - 1443537249)));
  v64 = __ROR8__((v63 + STACK[0x5600]) ^ 0xB88801D4E1C76353, 8);
  v65 = (v63 + STACK[0x5600]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v63, 61);
  v66 = (((v64 + v65) | 0x4B67E7D6FDC08582) - ((v64 + v65) | ((v4 - 2314) | 0x4300u) ^ 0xB4981829023F357DLL) - 0x4B67E7D6FDC08583) ^ 0x73AF56BC1AC5EDF5;
  v67 = __ROR8__(v66, 8);
  v68 = v66 ^ __ROR8__(v65, 61);
  v69 = (((2 * (v67 + v68)) & 0x7AED2A7E086AEE4ALL) - (v67 + v68) + 0x42896AC0FBCA88DALL) ^ 0xA709DBBD770F6D8BLL;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0xE1A1FD5BD155F97ALL;
  v72 = __ROR8__(v71, 8);
  v73 = v71 ^ __ROR8__(v70, 61);
  v74 = (((v72 + v73) | 0xA11A0BDDFC0998BCLL) - ((v72 + v73) | 0x5EE5F42203F66743) + 0x5EE5F42203F66743) ^ 0x7B7A40D1FFAB2725;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xFA35E2CDCB3E31C7;
  v77 = __ROR8__(v76, 8);
  v78 = v76 ^ __ROR8__(v75, 61);
  v79 = (((2 * (v77 + v78)) | 0x90C8A7FD87420836) - (v77 + v78) - 0x486453FEC3A1041BLL) ^ 0x9A945F18E344D7B5;
  v80 = __ROR8__(v79, 8) + (v79 ^ __ROR8__(v78, 61));
  v81 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v82 = *(STACK[0x54C0] + (v62 & 0xFFFFFFF8 & ((v81 & 0xFFFFFFF8) + a1)));
  v83 = __ROR8__(v81 & 0xFFFFFFFFFFFFFFF8, 8);
  v84 = __ROR8__((v82 + v83) ^ 0xB88801D4E1C76353, 8);
  v85 = (v82 + v83) ^ 0xB88801D4E1C76353 ^ __ROR8__(v82, 61);
  v86 = (((2 * (v84 + v85)) & 0xFCD48710AE36985ALL) - (v84 + v85) - 0x7E6A4388571B4C2ELL) ^ 0xB95D0D1D4FE1DBA5;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) | 0x977FE22F89C0C540) - (v88 + v87) - 0x4BBFF117C4E062A0) ^ 0xAE3F406A482587F1;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0xE1A1FD5BD155F97ALL;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v94 = v93 + v92 - ((2 * (v93 + v92)) & 0x52ED37BE73BB8EBALL);
  LODWORD(STACK[0x5368]) = LODWORD(STACK[0x57C0]) ^ ((v37 ^ 0xF4730B31AE70757BLL) >> STACK[0x57B0]);
  LODWORD(STACK[0x53A8]) = LODWORD(STACK[0x5790]) ^ (((v43 - 0xB1F9DA7CFB490EELL) ^ 0x9369699E3B1A69) >> STACK[0x5780]);
  LODWORD(STACK[0x53A0]) = LODWORD(STACK[0x5670]) ^ (((((2 * v61) & 0x5B6D6E4D6DECDEE4) - v61 - 0x2DB6B726B6F66F73) ^ 0x38636BE127BA0F9FuLL) >> STACK[0x5378]);
  v95 = (v94 - 0x56896420C62238A3) ^ 0x7316D0D33A7F78C4 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__((v94 - 0x56896420C62238A3) ^ 0x7316D0D33A7F78C4, 8) + v95) ^ 0xFA35E2CDCB3E31C7;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xD2F00CE620E5D3AELL;
  v99 = __ROR8__(v98, 8) + (v98 ^ __ROR8__(v97, 61));
  v100 = *(*STACK[0x51F0] + (v62 & 0xFFFFFFF8 & ((v81 & 0xFFFFFFF8 ^ 0xB1A9A6EB) - 929918417 + ((2 * (v81 & 0xFFFFFFF8)) & 0x63534DD0))));
  v101 = (((v100 + v83) | 0xDEB8AD3C4D5452A9) - ((v100 + v83) | 0x214752C3B2ABAD56) + 0x214752C3B2ABAD56) ^ 0x6630ACE8AC9331FALL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x38C8B16AE7056877;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((2 * ((v105 + v104) ^ 0x39223BAE93C60CE3)) | 0xB34477F29FD631F6) - ((v105 + v104) ^ 0x39223BAE93C60CE3) - 0x59A23BF94FEB18FBLL) ^ 0x8500B12A50E8F149;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  v109 = __ROR8__((((2 * (v108 + v107)) | 0x8E6AD0CB4C23392) - (v108 + v107) + 0x7B8CA979A59EE637) ^ 0x65D2ABDD8B34E0B3, 8);
  v110 = (((2 * (v108 + v107)) | 0x8E6AD0CB4C23392) - (v108 + v107) + 0x7B8CA979A59EE637) ^ 0x65D2ABDD8B34E0B3 ^ __ROR8__(v107, 61);
  v111 = (v109 + v110) ^ 0xDA604B0C03A2BF99;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0xFA35E2CDCB3E31C7;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  LODWORD(STACK[0x5348]) = LODWORD(STACK[0x5740]) ^ ((v80 ^ 0xF4730B31AE70757BLL) >> STACK[0x5700]);
  v116 = (((v115 + v114) | 0xB0F26A9C58D42890) - ((v115 + v114) | 0x4F0D9563A72BD76FLL) + 0x4F0D9563A72BD76FLL) ^ 0x6202667A7831FB3ELL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = __ROR8__(v116, 8);
  LODWORD(v116) = *v81;
  LOBYTE(v81) = 8 * (v81 & 7);
  v119 = ((((v118 + v117) ^ 0x18BFCF3710B8D212) - ((2 * ((v118 + v117) ^ 0x18BFCF3710B8D212)) & 0xBC84B20D1FE55086) + 0x5E4259068FF2A843) ^ 0xB28E9D00313A0F2ALL) >> v81;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 40;
  HIDWORD(v118) = ((v99 ^ 0xF4730B31AE70757BLL) >> v81) ^ v116;
  LODWORD(v118) = (v119 ^ v116) << 24;
  LODWORD(v99) = *(STACK[0x57A0] + (((v118 >> 29) - ((2 * (v118 >> 29)) & 0x58) + 44) ^ 0xA4u) + 39744);
  LODWORD(STACK[0x5408]) = (((v99 ^ 0x20) + 3) ^ ((v99 ^ 0xFFFFFFB3) - 110) ^ ((v99 ^ 0xFFFFFFED) - 48)) + 99;
  LODWORD(v99) = LODWORD(STACK[0x53D0]) == 40;
  STACK[0x52F8] = 40;
  return (*(STACK[0x57D8] + 8 * (v58 ^ ((4 * v99) | (8 * v99)))))();
}

uint64_t sub_100368B84()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1260) | 0x4039) ^ 0x49B2) + v0)))(0x308E083E0C524CBELL);
}

uint64_t sub_100368C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2 - 22261;
  v4 = STACK[0x8FF8];
  v5 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v3);
  return (*(v5 + 8 * (v3 ^ 0x49D03C53 ^ ((v3 + 138414496) | 0x41902416))))(v4, a2, 1238384546, 998, 43);
}

uint64_t sub_100368D34()
{
  v0 = STACK[0x51B8] - 16999;
  v1 = STACK[0x51B8] - 19585;
  STACK[0x93C0] = STACK[0x5860] + SLODWORD(STACK[0x6EE4]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0xC9D)))();
}

uint64_t sub_100368E24()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 | 0x2B69)))(1028);
  STACK[0xD780] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * (v0 - 20569)) ^ v0)))();
}

uint64_t sub_100368E9C()
{
  STACK[0xE9B0] = v3;
  STACK[0xE9B8] = v0;
  return (*(STACK[0x57D8] + 8 * (((v2 > ((v1 + 1450292421) & 0xA98E2FF7) - 3053) * (v1 - 6075)) ^ v1)))();
}

uint64_t sub_100368F4C()
{
  *STACK[0xBB50] = -769884029;
  LODWORD(STACK[0x57C0]) = STACK[0xA8FC];
  v1 = *(STACK[0x57D8] + 8 * (v0 ^ 0x27E1 ^ (14 * (v0 ^ 0x890))));
  LODWORD(STACK[0x57B0]) = 1731848135;
  LODWORD(STACK[0x57A0]) = 369616918;
  LODWORD(STACK[0x5780]) = -86914138;
  LODWORD(STACK[0x5770]) = -1490893388;
  LODWORD(STACK[0x5760]) = 1968239400;
  LODWORD(STACK[0x5750]) = 816019771;
  LODWORD(STACK[0x5740]) = -402686977;
  LODWORD(STACK[0x5730]) = -585011874;
  LODWORD(STACK[0x5720]) = 175992728;
  LODWORD(STACK[0x5700]) = 1730983145;
  LODWORD(STACK[0x5790]) = -1576182346;
  LODWORD(STACK[0x5710]) = 1299980023;
  return v1(1365428518, 4166133790, 1374078001, 2424315156, 959770943);
}

void *sub_10036916C@<X0>(void *a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, int a4@<W8>)
{
  v10 = STACK[0x57D8];
  STACK[0xCAC8] = *(STACK[0x57D8] + 8 * a4);
  STACK[0x60B8] = v8;
  STACK[0x9410] = a3;
  v11 = STACK[0x7ED8];
  STACK[0x7308] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v11 + 16;
  LODWORD(STACK[0x97AC]) = (v4 + 2147481507) & v6 ^ v9 ^ v7;
  LODWORD(STACK[0xC8FC]) = v5;
  STACK[0x9BF0] = 0;
  v12 = *(*a1 + (*a2 & 0x4B905A90));
  STACK[0xBE98] = 0;
  STACK[0x6308] = v12 & 0x7FFFFFFFFFFFFFFFLL ^ 0x1412FC33B664102CLL;
  v13 = *(v10 + 8 * v4);
  STACK[0xADE0] = 0;
  STACK[0x8F80] = v13;
  return (*(v10 + 8 * (v4 ^ 0x265E)))(&STACK[0x6308]);
}

uint64_t sub_1003692F4()
{
  STACK[0x8338] = STACK[0xB7D0];
  LODWORD(STACK[0xC9DC]) = STACK[0x971C];
  LODWORD(STACK[0xAC20]) = STACK[0x5FD8];
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1400])))();
}

uint64_t sub_1003693BC()
{
  LODWORD(STACK[0x1D4C8]) = v0 - 289235981 * ((((v1 - 240) | 0x5C7DC7AB) - (v1 - 240) + ((v1 - 240) & 0xA3823850)) ^ 0xDBFF1794) - 1201;
  STACK[0x1D4C0] = STACK[0x4268];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9222)))(v1 - 240);
  return (*(v2 + 8 * (v0 - 7544)))(v3);
}

uint64_t sub_100369474()
{
  v0 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 15405));
  LODWORD(STACK[0x4E44]) = -769884028;
  return v0();
}

uint64_t sub_1003694B0(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 1;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100369544(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7)
{
  v8 = STACK[0x9D4];
  v9 = STACK[0x5B0C];
  v10 = STACK[0x5E80];
  v11 = STACK[0x5E80] + (LODWORD(STACK[0x5B0C]) + 18);
  v12 = *(*a6 + ((*a7 & ((v11 & 0xFFFFFFF8 ^ 0xEBD8F82E) - 441748255 + ((((LODWORD(STACK[0x9D4]) + 1064086455) & 0xC0937DFD) + 676182761) | (2 * (v11 & 0xFFFFFFF8))) + 3302)) & 0xFFFFFFFFFFFFFFF8));
  v13 = (LODWORD(STACK[0x9D4]) + 899) ^ 0xF41651499F5E12E1 ^ (__ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8) + v12);
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x70BA342B64D64336) - (v15 + v14) + 0x47A2E5EA4D94DE64) ^ 0x5290A7047164B42DLL ^ __ROR8__(v14, 61);
  v17 = (__ROR8__((((2 * (v15 + v14)) & 0x70BA342B64D64336) - (v15 + v14) + 0x47A2E5EA4D94DE64) ^ 0x5290A7047164B42DLL, 8) + v16) ^ a3;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0xF9B62B791E6FD560) + 0x7CDB15BC8F37EAB0) ^ 0x99740F0FA18AD66DLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a4;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xA82620A559D2DA78;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5F8DEC3EA3980A1BLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  *v11 = (((((v28 + v27) ^ 0xAC7D964B97D75AA2) - ((2 * ((v28 + v27) ^ 0xAC7D964B97D75AA2)) & 0x225646619026A6BCLL) + 0x112B2330C813535ELL) ^ 0x7C957DA9FB0141D4) >> (8 * (v11 & 7u))) ^ 0x53;
  v29 = v10 + (v9 + 19);
  v30 = *(*a6 + ((*a7 & (a1 + (v29 & 0x8F9D1860 | 0x7062E79B) + (v29 & 0x7062E798 | 0x8F9D1864) + 1)) & 0xFFFFFFFFFFFFFFF8));
  v31 = __ROR8__(v29 & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = (((v30 + v31) | 0x8EB605C755F0FB0DLL) - ((v30 + v31) | 0x7149FA38AA0F04F2) + 0x7149FA38AA0F04F2) ^ 0x7AA0548ECAAEC76ALL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a2;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a3;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v7;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a4;
  v41 = __ROR8__(v40, 8);
  v42 = v40 ^ __ROR8__(v39, 61);
  v43 = (v41 + v42) ^ 0xA82620A559D2DA78;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((2 * (v45 + v44)) | 0x593AA79E1FF83C6) - (v45 + v44) + 0x7D362AC30F003E1DLL) ^ 0xDD4439025367CBF8;
  *v29 = (((__ROR8__(v46, 8) + (v46 ^ __ROR8__(v44, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v29 & 7u))) ^ 0x10;
  return (*(STACK[0x57D8] + 8 * ((137 * (STACK[0xC808] <= v10 + (v9 + 20))) ^ v8)))();
}

uint64_t sub_1003698F8()
{
  v1 = v0 - 4758;
  v2 = (v0 - 10491) | 0x4000;
  v3 = v0 + 736708364;
  v4 = STACK[0x6CB8];
  v5 = *(STACK[0x6CB8] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xE68C]) = v5 + 8;
  v6 = (v2 ^ 0xDBDFFAA5) + (v3 & 0xD4167FAE) + *(v4 - 0x1883660EE814440ELL);
  v7 = v5 - 606098681;
  v8 = (v7 < 0x59291F7B) ^ (v6 < 0x59291F7B);
  v9 = v6 < v7;
  if (v8)
  {
    v10 = v7 < 0x59291F7B;
  }

  else
  {
    v10 = v9;
  }

  v11 = STACK[0x8B58] == 0 || v10;
  if (v11)
  {
    v12 = -143155721;
  }

  else
  {
    v12 = -143113071;
  }

  LODWORD(STACK[0xE690]) = v12;
  return (*(STACK[0x57D8] + 8 * ((115 * v11) ^ v1)))();
}

uint64_t sub_100369A90()
{
  v0 = STACK[0xEEC];
  v1 = STACK[0x57D8];
  v2 = 3769 * (LODWORD(STACK[0xEEC]) ^ 0xA16);
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xEEC]));
  return (*(v1 + 8 * (v0 ^ 0x4331 ^ v2)))();
}

uint64_t sub_100369B34(int a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v22 = *(a4 + 4 * ((v11 ^ v21) + 512)) ^ v19;
  *(v17 + 4 * (((((v11 ^ (2 * (v11 & v8))) & a3) >> v12) | ((v11 ^ (2 * (v11 & v8))) << v9)) ^ v15)) = ((((v22 ^ (2 * (v22 & v8))) & v18) << v9) | (((v22 ^ (2 * (v22 & v8))) & a5) >> v12)) ^ v14;
  v23 = bswap32(*(a7 + 2 * ((((v10 ^ v20) + v13) ^ v11) + 1027)) ^ v16);
  v24 = HIWORD(v23) ^ (2 * (HIWORD(v23) & v8));
  *(STACK[0x57B0] + 4 * (((((v11 ^ (2 * (v11 & v8))) & a3) >> v12) | ((v11 ^ (2 * (v11 & v8))) << v9)) ^ v15)) = (((v24 & v18) << v9) | ((v24 & a8) >> v12)) ^ a1;
  return (*(STACK[0x57D8] + 8 * (v10 ^ (2 * (v11 == 255)))))();
}

uint64_t sub_100369BF0@<X0>(int a1@<W1>, int a2@<W8>)
{
  v8 = STACK[0x5750];
  if ((STACK[0x57A0] & 2) != 0)
  {
    v8 = STACK[0x5740];
  }

  LODWORD(STACK[0x5610]) = v8;
  v9 = (STACK[0x5780] & 2) == 0;
  v10 = STACK[0x5410];
  if ((STACK[0x5780] & 2) != 0)
  {
    v10 = STACK[0x5400];
  }

  LODWORD(STACK[0x53C0]) = v10;
  v11 = STACK[0x53F8];
  if (v9)
  {
    v11 = STACK[0x5550];
  }

  LODWORD(STACK[0x5430]) = v11;
  v12 = (v3 + v7 - ((v7 + a2 - ((v7 + a2) >> 16)) >> 8) - ((v7 + a2) >> 16) - v2) ^ 0xF2A264F0;
  v13 = v12 - (v12 >> 9) - ((v12 - (v12 >> 9)) >> 2);
  v14 = v13 ^ v6;
  v15 = v13 - 1983368416 + ((v13 - 1983368416) >> 11) + ((v13 - 1983368416 + ((v13 - 1983368416) >> 11)) >> 6);
  v16 = v15 ^ a1;
  v17 = (v15 ^ 0xA88C2D59) + ((v15 ^ 0xA88C2D59) >> 13) - (((v15 ^ 0xA88C2D59) + ((v15 ^ 0xA88C2D59) >> 13)) >> 2);
  v18 = ((v17 - 1391595809 - ((v17 - 1391595809) >> 9)) >> 3) + v17 - 1391595809 - ((v17 - 1391595809) >> 9) - 2 * ((v17 - 1391595809 - ((v17 - 1391595809) >> 9)) >> 3);
  v19 = v14 ^ v18;
  v20 = v18 + 13042593 - ((v18 + 13042593) >> 11) + ((v18 + 13042593 - ((v18 + 13042593) >> 11)) >> 5);
  v21 = v16 ^ v20;
  v22 = (v20 ^ 0xEBEF4CF0) - ((v20 ^ 0xEBEF4CF0) >> 14) + (((v20 ^ 0xEBEF4CF0) - ((v20 ^ 0xEBEF4CF0) >> 14)) >> 5);
  v23 = (v22 ^ 0xCB1C53B6) - ((v22 ^ 0xCB1C53B6) >> 13) + (((v22 ^ 0xCB1C53B6) - ((v22 ^ 0xCB1C53B6) >> 13)) >> 8);
  v24 = v23 + 684725097 - ((v23 + 684725097) >> 11) - ((v23 + 684725097 - ((v23 + 684725097) >> 11)) >> 4);
  v25 = v19 ^ v23;
  v26 = v21 ^ v24;
  v27 = v17 ^ v4 ^ v22 ^ (v24 - 413089388 + ((v24 - 413089388) >> 8) - ((v24 - 413089388 + ((v24 - 413089388) >> 8)) >> 4));
  LODWORD(STACK[0x53F0]) = 16843009 * (v25 & 0xFE ^ 0x56);
  v28 = v27 & 7 ^ 6;
  LODWORD(STACK[0x5190]) = v28;
  LODWORD(STACK[0x5740]) = v27;
  LODWORD(STACK[0x5600]) = v27 & 0xFFFFFFF8;
  v29 = -v28 & 7;
  if ((v27 & 7) == 6)
  {
    v30 = 0;
  }

  else
  {
    v30 = 255;
  }

  LODWORD(STACK[0x5168]) = v29;
  if ((v27 & 7) == 6)
  {
    v31 = 0;
  }

  else
  {
    v31 = ~(v30 << v29);
  }

  LODWORD(STACK[0x54F0]) = (v25 & v31);
  LODWORD(STACK[0x5760]) = v26;
  LODWORD(STACK[0x5750]) = v25;
  LODWORD(STACK[0x55F0]) = v25 ^ 0x8F007356;
  return (*(STACK[0x57D8] + 8 * v5))(0xE54E6036F096EEEELL);
}

uint64_t sub_10036A268()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 22591)))(v1);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10036A358@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W6>, int a4@<W8>)
{
  LODWORD(STACK[0x5020]) = LODWORD(STACK[0x5790]) + LODWORD(STACK[0x57C0]);
  LODWORD(STACK[0x5018]) = v5 + v4;
  LODWORD(STACK[0x51D0]) = a4 + a2 + a1;
  return (*(STACK[0x57D8] + 8 * a3))();
}

uint64_t sub_10036A580()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0x51B8];
  v2 = STACK[0xC560];
  STACK[0x6E48] = 0x1883660EE8144416;
  v3 = LODWORD(STACK[0x2418]) + v0;
  if ((((v0 - (v1 - 22614)) | (v1 - 22614 - v0)) & 0x80000000) == 0)
  {
    v4 = 2050775527;
  }

  else
  {
    v4 = 2050775528;
  }

  STACK[0x7810] = v2;
  STACK[0x8000] = &STACK[0x6E48];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = v3 + v4;
  LODWORD(STACK[0xC0DC]) = -2013569058;
  return (*(STACK[0x57D8] + 8 * (v1 - 18197)))();
}

uint64_t sub_10036A64C@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x92;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * ((a1 ^ 0x92) + 9082)))(v2);
  *(v1 + 8) = v5;
  return (*(v4 + 8 * (((((v3 + 3) ^ (v5 == 0)) & 1) * (((v3 - 6320) | 0x1842) ^ 0x584F)) ^ v3)))();
}

uint64_t sub_10036A758()
{
  v0 = STACK[0x51B8] - 16529;
  v1 = STACK[0xA8A0];
  LOBYTE(STACK[0x6013]) = 38;
  STACK[0xA6A0] = STACK[0x8848];
  LODWORD(STACK[0x8A2C]) = STACK[0x6BCC];
  STACK[0x6E28] = v1;
  STACK[0x5908] = &STACK[0x77E0];
  STACK[0x8E78] = &STACK[0x8AAC];
  LODWORD(STACK[0x9058]) = 2048;
  LODWORD(STACK[0xCF24]) = -1060642910;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10036A814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  *(STACK[0x8410] - 0x1883660EE814440ALL) = STACK[0xE608];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xE60C]) == -143113071) * (v7 + 1242)) ^ LODWORD(STACK[0x1988]))))(a1, a2, a3, a4, a5, a6, a7, 4294958552);
}

uint64_t sub_10036A884(__n128 a1)
{
  v4.n128_u64[0] = (v1 + 13) & 0xF;
  v4.n128_u64[1] = (v1 + 12) & 0xF;
  v5.n128_u64[0] = (v1 + 11) & 0xF;
  v5.n128_u64[1] = (v1 + 10) & 0xF;
  v6.n128_u64[0] = (v1 + 9) & 0xF;
  v6.n128_u64[1] = v3 & 0xF ^ 1;
  v7.n128_u64[0] = (v1 + 7) & 0xF;
  v7.n128_u64[1] = (v1 + 6) & 0xF;
  v8.n128_u64[0] = (v1 + 5) & 0xF;
  v8.n128_u64[1] = (v1 + 4) & 0xF;
  v9.n128_u64[0] = (v1 + 3) & 0xF;
  v9.n128_u64[1] = (v1 + 2) & 0xF;
  v10.n128_u64[0] = (v1 + 1) & 0xF;
  v10.n128_u64[1] = v1 & 0xF;
  return (*(STACK[0x57D8] + 8 * v2))((v1 & 0x10) - 16, a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10036A96C()
{
  v1 = STACK[0x2B6C] & 0xD73576BF;
  v2 = (STACK[0x51B8] - 22550) | 0x708A;
  v3 = STACK[0x51B8] + 6262;
  LODWORD(STACK[0x6C94]) = v0;
  return (*(STACK[0x57D8] + 8 * ((((v1 ^ 0x3ACEE29B) + v2) * (v0 == -143113071)) ^ v3)))();
}

uint64_t sub_10036A9DC(int a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned __int8 a5, int a6, int a7, char a8)
{
  v22 = STACK[0x57B0];
  v23 = *(*(&off_101353600 + (STACK[0x57B0] + a6)) + (v17 ^ 0x94u) - 1);
  v24 = ((((((v17 & STACK[0x5760]) << a8) ^ v17) & STACK[0x5750]) >> v9) | ((((v17 & STACK[0x5760]) << a8) ^ v17) << LODWORD(STACK[0x57C0]))) ^ a5;
  *(STACK[0xD410] + 4 * v24) = a1 ^ ((((v23 ^ (2 * ((v23 ^ v21) & v12))) & (v14 + 3077) ^ v15 ^ (v23 ^ (2 * ((v23 ^ v21) & v12)) ^ v10) & v11) >> LODWORD(STACK[0x5790]) >> LODWORD(STACK[0x57A0])) + ((((v23 ^ (2 * ((v23 ^ v21) & v12)) ^ v19) & STACK[0x5780] | a7) ^ v13) << LODWORD(STACK[0x5770])));
  v25 = *(v8 + 4 * (v17 ^ a3));
  HIDWORD(v26) = v25 ^ v16;
  LODWORD(v26) = v25 ^ 0x55555555;
  *(a4 + 4 * v24) = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5730]) ^ (v26 >> 28) ^ (4 * (v26 >> 28)) ^ v18;
  return (*(STACK[0x57D8] + 8 * (((v17 == 255) * v20) ^ v22)))();
}

uint64_t sub_10036AB84@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(a1 + 604) = v2 - 1917435887 * ((v3 - 2087380129 - 2 * ((v3 - 240) & 0x83951C4F)) ^ 0x652E4749) - 1094310621;
  *(a1 + 592) = a2 - 1917435887 * ((v3 + 0x2C61438483951B5FLL - 2 * ((v3 - 240) & 0x2C61438483951C4FLL)) ^ 0xF96A2F7A652E4749) - ((2 * a2) & 0xAF7C07E1364426CELL) - 0x2841FC0F64DE44EFLL + 7538 * (v2 ^ 0x2F46u);
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x53EA)))(v3 - 240);
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_10036AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = STACK[0x57D8];
  STACK[0x8868] = *(STACK[0x57D8] + 8 * a8);
  return (*(v8 + 8 * ((a8 + 6865) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, 16714);
}

uint64_t sub_10036ACD8@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x9EEC]) = v3;
  STACK[0xA4E8] = v2;
  STACK[0x9E68] = v4;
  v6 = v4 != a1 && v2 != 0;
  return (*(STACK[0x57D8] + 8 * ((v6 * (((a2 - 20196) | 0x4800) - 22511)) ^ a2)))();
}

uint64_t sub_10036AD88()
{
  v1 = LODWORD(STACK[0x22F8]) + 17698;
  v2 = 2 * LODWORD(STACK[0x22F8]);
  v3 = STACK[0x51B8] - 4676;
  v4 = STACK[0xE53C];
  LODWORD(STACK[0xD6F4]) = LODWORD(STACK[0xE53C]) + 4;
  v5 = ((v0 ^ 0xA1D2B1B9) + 1580027463) ^ ((v0 ^ 0x34B860DB) - 884498651) ^ ((v2 ^ 0x6A95949A) + (v0 ^ 0x956A0B24));
  LODWORD(STACK[0xD6F8]) = v5 + (v1 ^ 0x1454783E);
  v6 = v4 + 55882 + v5;
  LODWORD(STACK[0xD6FC]) = v6;
  v7 = LODWORD(STACK[0xE544]) + 2041403895;
  v8 = v6 + 2145083594 > v7;
  if (v7 < 0x7FDB60CA != v6 > 0x80249F35)
  {
    v8 = v6 > 0x80249F35;
  }

  return (*(STACK[0x57D8] + 8 * ((62 * v8) ^ v3)))();
}

uint64_t sub_10036AEE8@<X0>(int a1@<W8>)
{
  STACK[0x8638] = v2;
  v4 = STACK[0x2684];
  v5 = STACK[0x51B8];
  v6 = STACK[0x2678];
  STACK[0x1D4E0] = (LODWORD(STACK[0x2684]) ^ a1 ^ 0x4D4BE39Fu) + STACK[0x2678];
  LODWORD(STACK[0x1D4CC]) = v4 - v6;
  LODWORD(STACK[0x1D4C0]) = (v5 - 1079089617) ^ v6;
  LODWORD(STACK[0x1D4C4]) = LODWORD(STACK[0x2680]) ^ v6;
  LODWORD(STACK[0x1D4C8]) = v4 - v6 + 95;
  LODWORD(STACK[0x1D4D0]) = v6;
  STACK[0x1D4D8] = v1 - v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v5 + 9201)))(v3 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4D4])))(v8);
}

uint64_t sub_10036B0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, int a8)
{
  v10 = ((a8 + (LODWORD(STACK[0xA0C4]) ^ 0x96B6F179) + 1607) ^ ((LODWORD(STACK[0xA0C4]) ^ 0xEB0D88CD) + 351434547) ^ ((LODWORD(STACK[0xA0C4]) ^ (v8 - 300975964) & a5 ^ 0xAFA7EAFA) + 1347946208)) + 243682531;
  v11 = v10 < a6;
  v12 = v9 + 538523096 < v10;
  if (v9 + 538523096 < a6 != v11)
  {
    v12 = v11;
  }

  return (*(STACK[0x57D8] + 8 * ((11537 * v12) ^ v8)))();
}

uint64_t sub_10036B1F4()
{
  v0 = STACK[0x51B8] + 549;
  v1 = *(STACK[0x87E8] + 24);
  STACK[0x8750] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * (((v0 ^ 0x7DB8) - 5295) ^ 0x13E2)) ^ v0)))();
}

uint64_t sub_10036B24C@<X0>(int a1@<W8>)
{
  v1 = *STACK[0x51E8];
  v2 = *STACK[0x51F0];
  v3 = *(v2 + (LODWORD(STACK[0x5070]) & v1));
  v4 = (((2 * (v3 + STACK[0x5138])) & 0x50487A29AAE5832) - (v3 + STACK[0x5138]) - 0x28243D14D572C1ALL) ^ 0x45F5BDFA536FB0B5;
  v5 = a1 ^ 0x58CD;
  v6 = v4 ^ __ROR8__(v3, 61);
  v7 = (__ROR8__(v4, 8) + v6) ^ 0x38C8B16AE7056877;
  v8 = __ROR8__(v7, 8);
  v9 = v7 ^ __ROR8__(v6, 61);
  v10 = (v8 + v9 - (((v5 - 17324) + 0x38EA1C452718C788) & (2 * (v8 + v9))) - 0x638AF1DD6C73916CLL) ^ 0x79F5BF5F1F498BC5;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (0x8D2C8A219E117002 - ((v12 + v11) | 0x8D2C8A219E117002) + ((v12 + v11) | 0x72D375DE61EE8FFDLL)) ^ 0x93728885B0BB7687;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = STACK[0x56F0];
  v16 = (__ROR8__(v13, 8) + v14) ^ 0xDA604B0C03A2BF99;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v14, 61);
  v19 = (((2 * (v17 + v18)) | 0x3784C381B35FB214) - (v17 + v18) - 0x1BC261C0D9AFD90ALL) ^ 0xE1F7830D1291E8CDLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x2242BFA2B5CDA284) - (v21 + v20) - 0x11215FD15AE6D143) ^ 0x3C2EACC885FCFD13;
  LODWORD(STACK[0x5740]) = (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v20, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5140]) ^ *(STACK[0x56F0] + 15);
  v23 = *(v2 + (LODWORD(STACK[0x5068]) & v1));
  v24 = (v23 + STACK[0x51A8]) ^ 0xB88801D4E1C76353;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0xCD5CBC91286572CELL) - (v26 + v25) - 0x66AE5E489432B967) ^ 0x5E66EF227337D110;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xE580B17D8CC5E551;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xE1A1FD5BD155F97ALL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xDA604B0C03A2BF99;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((2 * ((v35 + v34) ^ 0xC78615927E074CFCLL)) | 0x579BC92D4FA29846) - ((v35 + v34) ^ 0xC78615927E074CFCLL) + 0x54321B69582EB3DDLL) ^ 0x967E13C912E83118;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5750]) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x51A0]) ^ v15[8];
  v39 = *(v2 + (LODWORD(STACK[0x5060]) & v1));
  v40 = (v39 + STACK[0x5150]) ^ 0xB88801D4E1C76353;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x38C8B16AE7056877;
  v43 = __ROR8__(v42, 8);
  v44 = v42 ^ __ROR8__(v41, 61);
  v45 = (0x14C49F07DDB0DE3 - ((v43 + v44) | 0x14C49F07DDB0DE3) + ((v43 + v44) | 0xFEB3B60F8224F21CLL)) ^ 0x1B3307720EE1174DLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0xE1A1FD5BD155F97ALL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0xDA604B0C03A2BF99;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xFA35E2CDCB3E31C7;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xD2F00CE620E5D3AELL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  LODWORD(STACK[0x5730]) = (((((2 * (v55 + v54)) | 0xDA9160F0F5C01734) - (v55 + v54) - 0x6D48B0787AE00B9ALL) ^ 0x993BBB49D4907EE1) >> STACK[0x5148]) ^ v15[14];
  v56 = *(v2 + (STACK[0x5050] & v1));
  v57 = (v56 + STACK[0x5208]) ^ 0xB88801D4E1C76353;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (0xFC8F4ECF2EAF6D3BLL - ((v59 + v58) ^ 0x65C99BE05AC1C6D6 | 0xFC8F4ECF2EAF6D3BLL) + ((v59 + v58) ^ 0x65C99BE05AC1C6D6 | 0x370B130D15092C4)) ^ 0x5E719BBA6C943C65;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (v62 + v61 - ((2 * (v62 + v61)) & 0xA19DEFED58FB7EALL) - 0x7AF310809538240BLL) ^ 0x608C5E02E6023EA4;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xE1A1FD5BD155F97ALL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__((0xE312035CFA0BFE85 - ((v67 + v66) | 0xE312035CFA0BFE85) + ((v67 + v66) | 0x1CEDFCA305F4017ALL)) ^ 0xC68DB7AF0656BEE3, 8);
  v69 = (0xE312035CFA0BFE85 - ((v67 + v66) | 0xE312035CFA0BFE85) + ((v67 + v66) | 0x1CEDFCA305F4017ALL)) ^ 0xC68DB7AF0656BEE3 ^ __ROR8__(v66, 61);
  v70 = (v68 + v69 - ((2 * (v68 + v69)) & 0x781815A6AAC6A32) - 0x7C3F3F52CAA9CAE7) ^ 0x79F52260FE6804DELL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v72 + v71 - ((2 * (v72 + v71)) & 0x669105A8D4CB02C6) + 0x334882D46A658163) ^ 0xE1B88E324A8052CDLL;
  LODWORD(STACK[0x5760]) = (((__ROR8__(v73, 8) + (v73 ^ __ROR8__(v71, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5200]) ^ v15[1];
  v74 = *(v2 + (LODWORD(STACK[0x5048]) & v1));
  v75 = __ROR8__((v74 + STACK[0x5130]) ^ 0xB88801D4E1C76353, 8);
  v76 = (v74 + STACK[0x5130]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v74, 61);
  v77 = (0xEA7A844C65EEEEE7 - ((v75 + v76) | 0xEA7A844C65EEEEE7) + ((v75 + v76) | 0x15857BB39A111118)) ^ 0x2D4DCAD97D14796FLL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xE580B17D8CC5E551;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xE1A1FD5BD155F97ALL;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (0x77A996D03EA5A7D6 - ((v83 + v82) | 0x77A996D03EA5A7D6) + ((v83 + v82) | 0x8856692FC15A5829)) ^ 0x52362223C2F8E7B0;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = __ROR8__((v86 + v85 - ((2 * (v86 + v85)) & 0x3840F0E1AD9A8B06) + 0x1C207870D6CD4583) ^ 0xE6159ABD1DF37444, 8);
  v88 = (v86 + v85 - ((2 * (v86 + v85)) & 0x3840F0E1AD9A8B06) + 0x1C207870D6CD4583) ^ 0xE6159ABD1DF37444 ^ __ROR8__(v85, 61);
  v89 = (v87 + v88 - ((2 * (v87 + v88)) & 0x6B2B6CA606693B9ELL) - 0x4A6A49ACFCCB6231) ^ 0x6765BAB523D14E61;
  v90 = (((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v88, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5230]) ^ v15[2];
  LODWORD(STACK[0x5388]) = 3;
  LODWORD(STACK[0x5530]) = STACK[0x57B0];
  return (*(STACK[0x57D8] + 8 * v5))(v90);
}

uint64_t sub_10036CBA8()
{
  STACK[0x1D4C0] = v0;
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723133771) ^ (1917435887 * ((v2 + 1398917063 - 2 * ((v2 - 240) & 0x5361C8B7)) ^ 0xB5DA93B1));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2466)))(v2 - 240);
  return (*(v3 + 8 * (v1 - 13179)))(v4);
}

uint64_t sub_10036CD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x5680]) = LODWORD(STACK[0x53E8]) ^ 0x4F72EC86;
  LODWORD(STACK[0x5130]) = LODWORD(STACK[0x5360]) ^ (v8 - v7) ^ 0x71286D0D;
  return (*(STACK[0x57D8] + 8 * a7))(a1, a2, a3, a4, (v9 + 1));
}

uint64_t sub_10036CE04()
{
  v0 = STACK[0x51B8] - 20202;
  STACK[0x7ED8] += STACK[0x51B8] ^ 0xFFFFFFFFFFFFA7E6;
  return (*(STACK[0x57D8] + 8 * ((26656 * (LODWORD(STACK[0x8234]) == -143113071)) ^ v0)))();
}

uint64_t sub_10036CE68()
{
  STACK[0x5B00] = v1 + 2;
  v5 = *(v3 + (((v2 & 0xFFFFFFF8) - 103642729) & v4 & 0xFFFFFFF8));
  v6 = (v5 + __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((v8 + v7) | 0xAA56A7512ABEFF5DLL) - ((v8 + v7) | ((v0 + 14149) | 6u) ^ 0x55A958AED54158F4) + 0x55A958AED54100A2) ^ ((v0 - 6475) - 0x409B1A40E9B172ACLL);
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x2275D4C73835399BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xE5AF1AB32EBD3CDDLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * ((v15 + v14) ^ 0x1AB3A6C0A425645)) & 0x8D4D7CEF3235AF50) - ((v15 + v14) ^ 0x1AB3A6C0A425645) - 0x46A6BE77991AD7A9) ^ 0x7F2FB212A0E2C933;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) | 0xD541E2408545A314) - ((v18 + v17) | 0x2ABE1DBF7ABA5CEBLL) + 0x2ABE1DBF7ABA5CEBLL) ^ 0x7D67C2E5DC97796CLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) | 0x52B02BC3A1B4B8C2) - (v21 + v20) - 0x295815E1D0DA5C61) ^ 0x76D5F9DF7342567ALL;
  v23 = (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v20, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v2 & 7u))) ^ *(v1 + 1);
  return (*(STACK[0x57D8] + 8 * ((6522 * ((((v23 ^ 0xAB) + 73) ^ ((v23 ^ 0x16) - 10) ^ ((v23 ^ 0xBD) + 95)) == 244)) ^ v0)))();
}

uint64_t sub_10036D1A4()
{
  STACK[0x8AB0] = STACK[0x7898] + 16;
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x246 ^ (v0 + 4158))))();
}

uint64_t sub_10036D350(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  LODWORD(STACK[0x4B48]) = 2 * STACK[0x4FD0];
  v9 = STACK[0x51E8];
  STACK[0x4B88] = *STACK[0x51E8];
  v10 = STACK[0x51F0];
  STACK[0x4B58] = *STACK[0x51F0];
  STACK[0x4BA0] = *v9;
  STACK[0x4B90] = *v10;
  LODWORD(STACK[0x4B60]) = v8 ^ 0x1E;
  LODWORD(STACK[0x4B50]) = 2 * STACK[0x4DC0];
  LODWORD(STACK[0x4B40]) = (v7 + 891066254) ^ 0x351CE726;
  v11 = STACK[0x4FC0] + a7;
  v12 = *v11;
  STACK[0x4B98] = *v9;
  STACK[0x4B80] = *v10;
  STACK[0x4BA8] = v11 & 0xFFFFFFFFFFFFFFF8;
  STACK[0x4B78] = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x4B68] = 8 * (v11 & 7);
  LODWORD(STACK[0x4B70]) = v12 ^ a1;
  return (*(STACK[0x57D8] + 8 * (v7 ^ (109 * (LODWORD(STACK[0x53D0]) == 15)))))();
}

uint64_t sub_10036D4C4@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0x7718] + v3;
  v7 = 1978732275 * (v4 - ((v2 - 1753109807) & 0x687E5FCC ^ v1 ^ (((v2 + 161094389) & 0xF665FA7E) + 971521102))) + 1811988974;
  v8 = ((v7 ^ 0x361B028A) - 1511768932) ^ v7 ^ ((v7 ^ 0x29A2229) - 1855644615) ^ ((v7 ^ 0xAE7A8EF2) + 1032171748) ^ ((v7 ^ 0xF6FB6FBF) + 1694781871);
  v9 = ((v8 ^ 0xC9A11472) - 882628296) ^ ((v8 ^ 0xD0938589) - 766068531) ^ ((v8 ^ 0x75325015) + 2012704081);
  STACK[0x7ED8] = a1;
  LODWORD(STACK[0xCA9C]) = v9 + 243496912;
  STACK[0xE040] = v6;
  STACK[0x9C18] = &STACK[0x10120] + v5;
  STACK[0x7368] = 0;
  return (*(STACK[0x57D8] + 8 * ((6288 * (((((v9 + 4) ^ v9 ^ ((v9 ^ 0xFB) + 9) ^ (((v9 - 48) ^ 0xF9) + 11)) ^ ((((((v8 ^ 0x72) + 56) ^ ((v8 ^ 0x89) - 51) ^ ((v8 ^ 0x15) + 81)) - 48) ^ 0xE) + 14)) & 0xF) == 12)) ^ v2)))();
}

uint64_t sub_10036D698()
{
  LODWORD(STACK[0x7304]) = v1;
  LODWORD(STACK[0xC224]) = 480485957;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10036D764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = STACK[0x51C0];
  v13 = STACK[0x5168];
  v14 = v11 ^ (2 * (v11 & STACK[0x5168]));
  v15 = STACK[0x55B0];
  v16 = STACK[0x5178];
  v17 = STACK[0x55C0];
  LODWORD(STACK[0x5358]) = ((((v14 ^ 0x9810B7FE) & STACK[0x55C0] | LODWORD(STACK[0x4E34])) ^ 0x9810B7FE) << STACK[0x5180]) ^ ((v14 & STACK[0x55B0]) >> LODWORD(STACK[0x5178]));
  v18 = v9 ^ (2 * (v8 & STACK[0x5188]));
  v19 = (v18 ^ v10) & STACK[0x4E38];
  LODWORD(STACK[0x57C0]) = v12 ^ 0x4B66;
  v20 = STACK[0x5170];
  LODWORD(STACK[0x5368]) = ((v18 & 0x765C0931 ^ v12 ^ 0x4B66 ^ v19 ^ 0x214661Fu) >> LODWORD(STACK[0x5150])) ^ ((((v18 ^ 0x6D8040DC) & STACK[0x5378] | LODWORD(STACK[0x4E24])) ^ 0xE79793DA) << LODWORD(STACK[0x5170]));
  LODWORD(STACK[0x5360]) = ((((a8 ^ (2 * (a8 & v13)) ^ 0x3009B324) & v17 | LODWORD(STACK[0x4E28])) ^ 0x3009B324) << v20) + (((a8 ^ (2 * (a8 & v13))) & v15) >> v16);
  v21 = STACK[0x57B0];
  v22 = STACK[0x51C8];
  if (STACK[0x57B0])
  {
    v23 = STACK[0x51C8];
  }

  else
  {
    v23 = STACK[0x51D0];
  }

  v24 = STACK[0x5390];
  if (v21)
  {
    v22 = STACK[0x5390];
  }

  v25 = STACK[0x51D8];
  if (v21)
  {
    v24 = STACK[0x51D8];
    v25 = STACK[0x51D0];
  }

  if ((v21 & 2) != 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = v22;
  }

  LODWORD(STACK[0x51C8]) = v26;
  if ((v21 & 2) == 0)
  {
    v22 = v25;
  }

  LODWORD(STACK[0x51D8]) = v22;
  if ((v21 & 2) != 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = v23;
  }

  LODWORD(STACK[0x51D0]) = v27;
  return (*(STACK[0x57D8] + 8 * v12))();
}

uint64_t sub_10036D9EC()
{
  v1 = STACK[0x51B8] - 14439;
  STACK[0xACD0] = 0;
  LODWORD(STACK[0x9D34]) = 2101965948;
  return (*(STACK[0x57D8] + 8 * (((v1 ^ 0xE1C) * v0) ^ LODWORD(STACK[0x1544]))))();
}

uint64_t sub_10036DA84(unint64_t a1)
{
  v2 = STACK[0x953C];
  v3 = STACK[0xC758];
  STACK[0x81B0] = STACK[0x8228];
  LODWORD(STACK[0x9DAC]) = v2;
  LOBYTE(STACK[0x732F]) = -126;
  STACK[0x60C8] = v3;
  LODWORD(STACK[0x803C]) = -769884028;
  STACK[0x8A48] = &STACK[0x8F0C];
  STACK[0xC910] = &STACK[0x5DB0];
  STACK[0x6830] = a1;
  LODWORD(STACK[0x9E18]) = 1593041218;
  return (*(STACK[0x57D8] + 8 * (v1 + 9012)))();
}

uint64_t sub_10036DC2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, char a7, char a8)
{
  v25 = (*(*(&off_101353600 + (v14 ^ v19)) + ((a8 ^ v18 ^ a7 ^ v12) ^ v20) - 2) - 123735787) ^ v15;
  v26 = v10 + (((v25 ^ 0xB4888D3A) - 245088342) ^ ((v25 ^ v17) - 141983043) ^ ((v25 ^ 0x6EDBD15) + 1124142983)) - ((((2 * ((v14 ^ 0xF8D2D5AC ^ v25) & v8 ^ v9)) ^ 0x612F0A10) + 813289230) ^ (((2 * ((v14 ^ 0xF8D2D5AC ^ v25) & v8 ^ v9)) ^ 0xB3096478) - 497049242) ^ (((2 * ((v14 ^ 0xF8D2D5AC ^ v25) & v8 ^ v9)) ^ 0xD327EE64) - 2106512518));
  v27 = (v26 ^ 0xD14BAC07) & (2 * (v26 & 0xC40A2E46)) ^ v26 & 0xC40A2E46;
  v28 = ((2 * (v26 ^ 0x514BEC8B)) ^ 0x2A83859A) & (v26 ^ 0x514BEC8B) ^ (2 * (v26 ^ 0x514BEC8B)) & a4;
  v29 = ((4 * (v28 ^ 0x95404245)) ^ 0x55070B34) & (v28 ^ 0x95404245) ^ (4 * (v28 ^ 0x95404245)) & 0x9541C2CC;
  v30 = (v29 ^ 0x15010200) & (16 * ((v28 ^ 0x18008) & (4 * v27) ^ v27)) ^ (v28 ^ 0x18008) & (4 * v27) ^ v27;
  v31 = ((16 * (v29 ^ 0x8040C0C9)) ^ v23) & (v29 ^ 0x8040C0C9) ^ (16 * (v29 ^ 0x8040C0C9)) & 0x9541C2C0;
  v32 = v30 ^ 0x9541C2CD ^ (v31 ^ 0x1400000D) & (v30 << 8);
  *(v11 + 4 * v12) = a6 ^ v26 ^ (2 * ((v32 << 16) & v16 ^ v32 ^ ((v32 << 16) ^ 0x42CD0000) & (((v31 ^ v24) << 8) & v16 ^ v22 ^ (((v31 ^ v24) << 8) ^ 0x41C20000) & (v31 ^ v24)))) ^ 0xBD4B5FEA;
  return (*(STACK[0x57D8] + 8 * (((v13 == 0) * v21) ^ v14)))();
}

uint64_t sub_10036DF80@<X0>(int a1@<W8>)
{
  STACK[0x6CE0] = v4;
  LODWORD(STACK[0x6AE4]) = a1;
  STACK[0x7DE0] = v2;
  STACK[0xA460] = v3;
  LOWORD(STACK[0xAA06]) = -3415;
  return (*(STACK[0x57D8] + 8 * ((213 * (v4 != 0)) ^ v1)))();
}

uint64_t sub_10036DFDC()
{
  STACK[0xBBC8] = &STACK[0xA048];
  LODWORD(STACK[0xCDD8]) = 550409991;
  return (*(STACK[0x57D8] + 8 * ((6923 * (LODWORD(STACK[0x1208]) < 0xF776C643)) ^ LODWORD(STACK[0x1204]))))();
}

uint64_t sub_10036E04C()
{
  v0 = (STACK[0x51B8] + 179536661) & 0xF54C75DD;
  v1 = STACK[0x51B8] - 19809;
  v2 = STACK[0xD610];
  *(v2 + 516) = 0;
  *(v2 + 533) = 0;
  v3 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x4864 ^ v0)))();
}

uint64_t sub_10036E100(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(v10 + v8) * v13;
  v15 = (v14 ^ v12) + v11;
  v16 = (v15 - HIWORD(v15)) >> 8;
  v17 = (v8 + a7 + (v14 ^ v12) - HIWORD(v15) + v16) ^ a3;
  v18 = (v8 + a8 + (v14 ^ v12) - HIWORD(v15) + v16) ^ v14;
  LODWORD(v16) = (v18 + v11) >> 16;
  v19 = (v18 + v11 - v16) >> 8;
  v20 = v8 + a5 - v16 + (v9 ^ 0x3BEF) + v18 + v19;
  LODWORD(v16) = (v8 + a8 + v18 - v16 + v19) ^ v14;
  return (*(STACK[0x57D8] + 8 * ((30 * (v8 + a6 == 15)) ^ v9)))(a1, a2, v17 ^ v20 ^ (v8 + a7 + v16 - ((v16 + v11) >> 16) + ((v16 + v11 - ((v16 + v11) >> 16)) >> 8)), a4, a5 + 1, a6 + 1, a7 + 1, a8 + 1);
}

uint64_t sub_10036E324@<X0>(int a1@<W5>, int a2@<W8>)
{
  v7 = *(v2 + (((v6 + a1) ^ 0xFFFFD005) & a2 & (((v3 + v5) & 0xFFFFFFF8) + ((v6 + 14453) ^ 0xF9D2D1C1))));
  v8 = __ROR8__((v3 + v5) & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (((2 * (v8 + v7)) & 0x59636F94C26A6622) - (v8 + v7) - 0x2CB1B7CA61353312) ^ 0x2758197C0194F089;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x153242EE3CF06A49;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (0x58092B57BCFC13DFLL - ((v13 + v12) | 0x58092B57BCFC13DFLL) + ((v13 + v12) | 0xA7F6D4A84303EC20)) ^ 0x8583006F7B36D5BBLL;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xE5AF1AB32EBD3CDDLL;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v15, 61);
  v19 = (((2 * (v17 + v18)) & 0x5BEF77EE2EB71FELL) - (v17 + v18) - 0x2DF7BBF7175B900) ^ 0x3AFD4DB642CFF021;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xA82620A559D2DA78;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (0xBF002BD0884D75CDLL - ((v23 + v22) | 0xBF002BD0884D75CDLL) + ((v23 + v22) | 0x40FFD42F77B28A32)) ^ 0x1F723811D42A8029;
  LODWORD(v22) = ((((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v22, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v3 + v5) & 7))) ^ *(v3 + v5)) - *(v4 + v5);
  return (*(STACK[0x57D8] + 8 * ((16363 * ((v22 ^ 0xFEF7F7EF) + ((2 * v22) & 0xFDEFEFDE) == -17303569)) ^ v6)))();
}

uint64_t sub_10036E674@<X0>(unint64_t a1@<X2>, unint64_t a2@<X3>, int a3@<W4>, unint64_t a4@<X5>, unint64_t a5@<X6>, int8x16_t *a6@<X8>)
{
  v28.i64[0] = v8 + v9;
  v28.i64[1] = v8 + v9 + 1;
  v29.i64[0] = v8 + v9 + 6;
  v29.i64[1] = v8 + v9 + 7;
  v30.i64[0] = v8 + v9 + 4;
  v30.i64[1] = v8 + v9 + 5;
  v31.i64[0] = v8 + v9 + 2;
  v31.i64[1] = v10 + v9 + v12;
  v32 = vandq_s8(v31, v24);
  v33 = vandq_s8(v30, v24);
  v34 = vandq_s8(v29, v24);
  v35 = vandq_s8(v28, v24);
  v36 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v38 = vdupq_n_s64(a5);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v38);
  v40 = vdupq_n_s64(v13);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v38);
  v42 = veorq_s8(v39, v40);
  v43 = vdupq_n_s64(v20);
  v44.i64[0] = v8 + v9 + 14;
  v45 = veorq_s8(v41, v40);
  v46 = veorq_s8(v41, v43);
  v47 = veorq_s8(v39, v43);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v47);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46);
  v50 = vdupq_n_s64(v21);
  v51 = vdupq_n_s64(v22);
  v52 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), v50), v48), v51);
  v53 = vdupq_n_s64(v23);
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), v50), v49), v51), v53);
  v55 = veorq_s8(v52, v53);
  v56 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v57 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56), v25);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57), v25);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v61 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v62 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = vdupq_n_s64(a1);
  v66 = vdupq_n_s64(a4);
  v67 = vaddq_s64(vsubq_s64(vorrq_s8(v63, v65), vorrq_s8(v63, v66)), v66);
  v68 = vdupq_n_s64(v14);
  v69 = veorq_s8(v67, v68);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v64, v65), vorrq_s8(v64, v66)), v66), v68);
  v71 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v72 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v72);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v71);
  v75 = vdupq_n_s64(v15);
  v76 = vsubq_s64(vandq_s8(vaddq_s64(v73, v73), v75), v73);
  v77 = vdupq_n_s64(v16);
  v78 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v74, v74), v75), v74), v77);
  v79 = vdupq_n_s64(v17);
  v80 = veorq_s8(vaddq_s64(v76, v77), v79);
  v81 = veorq_s8(v78, v79);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vdupq_n_s64(v18);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v83);
  v87 = vaddq_s64(v84, v82);
  v88 = vdupq_n_s64(v19);
  v89 = vsubq_s64(vorrq_s8(v86, v85), vorrq_s8(v86, v88));
  v90 = vdupq_n_s64(a2);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v87, v85), vorrq_s8(v87, v88)), v88), v90);
  v92 = veorq_s8(vaddq_s64(v89, v88), v90);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v94);
  v97 = veorq_s8(vaddq_s64(v95, v93), v26);
  v98 = veorq_s8(v96, v26);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v100 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = vdupq_n_s64(v6);
  v103 = vaddq_s64(v36, v38);
  v214.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v100), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v102)));
  v214.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v101, v99), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v102)));
  v104 = veorq_s8(v103, v40);
  v105 = veorq_s8(v103, v43);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), v50), v106), v51), v53);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v25);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v65), vorrq_s8(v111, v66)), v66), v68);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), v75), v114), v77), v79);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v117, v85), vorrq_s8(v117, v88)), v88), v90);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v26);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v119.i64[0] = v8 + v9 + 12;
  v44.i64[1] = v8 + v9 + 15;
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v120.i64[0] = v8 + v9 + 10;
  v119.i64[1] = v8 + v9 + 13;
  v120.i64[1] = v8 + v9 + 11;
  v123 = vaddq_s64(v37, v38);
  v214.val[2] = vshlq_u64(veorq_s8(v122, v27), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v102)));
  v124 = veorq_s8(v123, v40);
  v125 = veorq_s8(v123, v43);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v126, v126), v50), v126), v51), v53);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v25);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v65), vorrq_s8(v131, v66)), v66), v68);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), v75), v134), v77), v79);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v137, v85), vorrq_s8(v137, v88)), v88), v90);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v26);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v143 = vandq_s8(v120, v24);
  v144 = vaddq_s64(v142, v141);
  v145 = vandq_s8(v119, v24);
  v214.val[1] = vshlq_u64(veorq_s8(v144, v27), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v102)));
  v146 = vandq_s8(v44, v24);
  v147 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v38);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v38);
  v150 = a6[25];
  v146.i64[0] = vqtbl4q_s8(v214, v150).u64[0];
  v214.val[0] = veorq_s8(v149, v40);
  v214.val[1] = veorq_s8(v148, v40);
  v151 = veorq_s8(v148, v43);
  v152 = veorq_s8(v149, v43);
  v214.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[0], 0x38uLL), v214.val[0], 8uLL), v152);
  v214.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL), v151);
  v214.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v214.val[1], v214.val[1]), v50), v214.val[1]), v51), v53);
  v214.val[2] = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v214.val[0], v214.val[0]), v50), v214.val[0]), v51), v53);
  v155 = veorq_s8(v154, v153);
  v214.val[0] = veorq_s8(v214.val[1], v214.val[2]);
  v214.val[2] = vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL), v214.val[0]);
  v214.val[1] = veorq_s8(vaddq_s64(v214.val[2], v155), v25);
  v214.val[2] = vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL);
  v157 = veorq_s8(v156, v25);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v214.val[0] = veorq_s8(v214.val[1], v214.val[2]);
  v214.val[2] = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214.val[1], 0x38uLL), v214.val[1], 8uLL), v214.val[0]);
  v214.val[1] = vaddq_s64(v214.val[2], v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v159, v65), vorrq_s8(v159, v66)), v66), v68);
  v214.val[2] = vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL);
  v214.val[0] = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v214.val[1], v65), vorrq_s8(v214.val[1], v66)), v66), v68);
  v214.val[0] = veorq_s8(v161, v214.val[0]);
  v214.val[1] = veorq_s8(v160, v214.val[2]);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v214.val[1]);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v214.val[0]);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), v75), v163), v77), v79);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v162, v162), v75), v162), v77), v79);
  v214.val[2] = vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL);
  v214.val[0] = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v214.val[1], 3uLL), v214.val[1], 0x3DuLL));
  v214.val[1] = veorq_s8(v164, v214.val[2]);
  v214.val[2] = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v214.val[1]);
  v167 = vaddq_s64(v214.val[2], v214.val[0]);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, v85), vorrq_s8(v166, v88)), v88), v90);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, v85), vorrq_s8(v167, v88)), v88), v90);
  v214.val[0] = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL));
  v214.val[1] = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v214.val[1], 3uLL), v214.val[1], 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v214.val[0]), v26);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v214.val[1]), v26);
  v172 = vaddq_s64(v147, v38);
  v214.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v214.val[0], 3uLL), v214.val[0], 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v102)));
  v214.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v214.val[1], 3uLL), v214.val[1], 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v119, 3uLL), v102)));
  v173 = veorq_s8(v172, v40);
  v174 = veorq_s8(v172, v43);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v175, v175), v50), v175), v51), v53);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v25);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180, v65), vorrq_s8(v180, v66)), v66), v68);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v75), v183), v77), v79);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, v85), vorrq_s8(v186, v88)), v88), v90);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v26);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v189.i64[0] = v8 + v9 + 8;
  v189.i64[1] = v8 + v9 + 9;
  v214.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v191, v190), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v120, 3uLL), v102)));
  v192 = vandq_s8(v189, v24);
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v38);
  v194 = veorq_s8(v193, v40);
  v195 = veorq_s8(v193, v43);
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v196, v196), v50), v196), v51), v53);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v25);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v201, v65), vorrq_s8(v201, v66)), v66), v68);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v204, v204), v75), v204), v77), v79);
  v206 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v208 = veorq_s8(v205, v206);
  v209 = vaddq_s64(v207, v208);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v209, v85), vorrq_s8(v209, v88)), v88), v90);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211), v26);
  v214.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v189, 3uLL), v102)));
  v146.i64[1] = vqtbl4q_s8(v214, v150).u64[0];
  *(v8 + v9) = v146;
  return (*(STACK[0x57D8] + 8 * (((v11 == v9) * a3) ^ v7)))();
}

uint64_t sub_10036F070@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0xA6A8];
  v4 = STACK[0x6280] + 4;
  v5 = v1 - 5978 + LODWORD(STACK[0x9A24]);
  v6 = 1917435887 * ((-438393003 - ((v2 - 240) | 0xE5DEA755) + ((v2 - 240) | 0x1A2158AA)) ^ 0xFC9A03AC);
  STACK[0x1D4C8] = *STACK[0x92A8] + 4;
  STACK[0x1D4D0] = v4;
  STACK[0x1D4E0] = a1;
  LODWORD(STACK[0x1D4D8]) = (v5 ^ 0xEF6D519D) - v6 + ((2 * v5) & 0xDEDAA33A) + 1408679680;
  STACK[0x1D4E8] = v3;
  LODWORD(STACK[0x1D4C0]) = (v1 + 6444) ^ v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v1 + 25943)))();
  return (*(v7 + 8 * v1))(v8);
}

uint64_t sub_10036F1B0()
{
  v0 = 1123 * (STACK[0x51B8] ^ 0x5853);
  v1 = STACK[0x51B8] - 19572;
  STACK[0xC770] = STACK[0x8098] + SLODWORD(STACK[0xB30C]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0xCAA ^ v0)))();
}

uint64_t sub_10036F2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0xAB68];
  *(v4 + 3728) = STACK[0xAB68];
  *(v5 + 16) = a3;
  return (*(STACK[0x57D8] + 8 * ((((((3769 * (v3 ^ 0x2B5A)) ^ (*(STACK[0x4D10] + 16) == 0)) & 1) == 0) * (v3 ^ 0x2B67)) ^ v3)))();
}

uint64_t sub_10036F314()
{
  v2 = STACK[0x51B8];
  v3 = (v0 + STACK[0x51B8] + 3051) & 0x4ACE77BE;
  v4 = STACK[0x51B8] + 1372;
  v5 = STACK[0xC000];
  v6 = STACK[0x7710];
  v7 = STACK[0xC9C0];
  v8 = STACK[0xCEA4];
  v9 = 1379010179 * ((((v1 - 240) | 0xB24ECC31) - (v1 - 240) + ((v1 - 240) & 0x4DB133C8)) ^ 0x961FF55F);
  STACK[0x1D4C0] = STACK[0x5D60];
  LODWORD(STACK[0x1D4C8]) = (v2 + 847660746) ^ v9;
  LODWORD(STACK[0x1D4E8]) = v9 - 467101311 + 1806817213 * v8;
  STACK[0x1D4D8] = v5;
  STACK[0x1D4D0] = v7;
  STACK[0x1D4E0] = v6;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v2 + 9236)))(v1 - 240);
  return (*(v10 + 8 * (((LODWORD(STACK[0x1D4EC]) == 221187128) * (v3 - 4777)) ^ v4)))(v11);
}

uint64_t sub_10036F42C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x9CBC];
  LODWORD(STACK[0x89E8]) = STACK[0x9CBC];
  STACK[0x5980] = STACK[0xB468];
  v2 = *STACK[0x45F8];
  v3 = *STACK[0x45F0];
  v4 = (3 * (v3 + v2) - ((6 * (v3 + v2)) & 4) + 2) & 7;
  v5 = ((((v1 >> 4) ^ 0x9CE99BCD) + 1910237294) ^ (((a1 + 6142) | 0x4056) + ((v1 >> 4) ^ 0x377B2963) - 632749458) ^ (((a1 + 2048) | 0x5054) + ((v1 >> 4) ^ 0xA6B37AA7) + 1266725042)) - 1799811595 + ((v4 - 857946924) ^ (v4 + 324223940) ^ ((v4 ^ 0x6FD6DAAA) - 1488592502)) + 1953;
  LODWORD(STACK[0x9324]) = (16 * (((v5 ^ 0xC3F9A489) + 23484184) ^ v5 ^ ((v5 ^ 0x92B2094) + 196399883) ^ ((v5 ^ 0x24D77C2) + 13796445) ^ ((v5 ^ 0x5FFFFBE) + 123735073))) ^ 0xD600C610;
  v6 = 3 * (v3 ^ v2);
  v7 = v6 & 0xF;
  if (v7 == 1)
  {
    v7 = 0;
  }

  LODWORD(STACK[0xA804]) = v7;
  v8 = STACK[0x5C70];
  STACK[0xBA60] = STACK[0x5C70] - 0x30BDFED8F32E65CDLL;
  LODWORD(STACK[0x8E4C]) = 16 * (v6 & 7) + 80;
  v9 = (3 * (v3 - v2)) & 0xF;
  if (v9 == 1)
  {
    v9 = 0;
  }

  LODWORD(STACK[0x7654]) = v9;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0x6B67 ^ (14 * (((*(v8 - 0x30BDFED8F32E655DLL) - a1) | (a1 - *(v8 - 0x30BDFED8F32E655DLL))) >> 31)))))();
}

uint64_t sub_10036F77C@<X0>(int a1@<W8>)
{
  v3 = a1 + v1;
  v4 = 1534937323 * ((((v2 - 240) | 0xEDEC6B4682E38192) - ((v2 - 240) & 0xEDEC6B4682E38192)) ^ 0x2094E384440D7AD5);
  STACK[0x1D4C0] = STACK[0x8120] ^ v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4E0]) = (v3 ^ 0x30EAFE71) + v4;
  LODWORD(STACK[0x1D4D4]) = (v3 + 820706893) ^ v4;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + a1 + 1451493860;
  LODWORD(STACK[0x1D4C8]) = 820704103 - v4 + v3;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (a1 + 9182)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_10036F858()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x667A)))(1032);
  STACK[0xD840] = v2;
  return (*(v1 + 8 * (((((197 * (v0 ^ 0x1D9E) - 6041) | 0x5814) ^ 0x585E) * (v2 == 0)) | v0)))();
}

uint64_t sub_10036F908()
{
  v0 = (STACK[0x51B8] - 1370054761) & 0x51A9595B;
  v1 = STACK[0x51B8] - 19798;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x5991) + v1)))();
}

uint64_t sub_10036FA14@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xC96C]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xC96C];
  LODWORD(STACK[0x9094]) = -32197459;
  return (*(STACK[0x57D8] + 8 * (a1 - 1228)))();
}

uint64_t sub_10036FC34()
{
  LODWORD(STACK[0x609C]) = v0;
  v2 = LODWORD(STACK[0xC0A4]) + (((v1 - 1587043113) | 0x56104081) ^ 0x5CC33BE8);
  v3 = v2 < ((v1 - 1961699142) & 0x74ECD94D ^ 0x1BF22892u);
  v4 = v0 + 468859347 < v2;
  if (v0 > 0xE40DC62C != v3)
  {
    v4 = v3;
  }

  return (*(STACK[0x57D8] + 8 * ((112 * v4) ^ v1)))();
}

uint64_t sub_10036FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x55A0]) = a5;
  LODWORD(STACK[0x5710]) = v6;
  v7 = 172 * (v5 ^ 0x13F0);
  LODWORD(STACK[0x57C0]) = v7;
  v8 = (v7 - 6754) | 0x3904;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * (v5 + 26656)))(1028);
  STACK[0xD240] = v10;
  return (*(v9 + 8 * (((v8 - 13194) * (v10 == 0)) ^ v5)))();
}

uint64_t sub_10036FE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(v8 + v6);
  v10 = (a3 + v6);
  *v10 = *(v8 + v6 - 16);
  v10[1] = v9;
  return (*(STACK[0x57D8] + 8 * ((v7 - 2366) ^ (2 * (a6 & ~((v7 + 2866) ^ (a2 == 0)))))))(a1, a2 - 32, a3 - 32);
}

uint64_t sub_10036FF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = STACK[0x51B8] - 1932801477;
  v6 = STACK[0x51B8] - 20070;
  STACK[0x6FD8] = STACK[0x5E48] + 16;
  v7 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v6);
  return (*(v7 + 8 * (v5 ^ (a5 + 3080) ^ v6)))();
}

uint64_t sub_100370010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = v13 + (v8 + v9 + 8);
  v15 = *(*a8 + ((*v11 & (((v10 - 4156) ^ 0x87B1DC3C ^ v14 & 0xFFFFFFF8) - 1074459604 + ((2 * (v14 & 0xFFFFFFF8)) & 0xF63B450))) & 0xFFFFFFFFFFFFFFF8));
  v16 = (__ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8) + v15) ^ 0x8BFE417BEF7F1026;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ a7;
  v19 = __ROR8__(v18, 8);
  v20 = v18 ^ __ROR8__(v17, 61);
  v21 = (a5 - ((v19 + v20) | a5) + ((v19 + v20) | 0x8DF1E79720D1CE80)) ^ 0xBCA4747B2C40FAD5;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x3662C1F52A6EAC3ELL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x7D099FFAECC8F2BELL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0xF4D867224A23D936) - 0x593CC6EDAEE1365) ^ 0xDEF773CD03DEC93DLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x5EB21AFA84768362;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  *(v12 + v9 + 820) = (((v32 + v31 - ((2 * (v32 + v31)) & 0xF3D35F32B1BEA15ALL) - 0x6165066A720AF53) ^ 0xBE55FB5FDB43D8A9) >> (8 * (v14 & 7u))) ^ *v14;
  return (*(STACK[0x57D8] + 8 * ((12594 * (v9 == 15)) ^ v10)))();
}

uint64_t sub_100370210@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x57D8];
  STACK[0x7D78] = *(STACK[0x57D8] + 8 * v2);
  LODWORD(STACK[0xED84]) = v4;
  STACK[0xED78] = a1;
  STACK[0xED88] = v3;
  LODWORD(STACK[0x9A1C]) = 0;
  if (a1)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v5 + 8 * ((v7 * (v1 + (((v1 - 20922) | 0x2287) ^ 0xFFFF9404) + 1404)) ^ v1)))();
}

uint64_t sub_1003702E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x54A0]) = v5;
  LODWORD(STACK[0x5480]) = v8;
  v10 = 117 * (((*(v9 + v6) ^ 0x7B) - 83) ^ ((*(v9 + v6) ^ 0xFFFFFF9E) + 74) ^ ((*(v9 + v6) ^ (((v7 - 960961363) | 0x184) + 107)) - 63)) - 27;
  v11 = v10 & 0x1D ^ 0x70;
  LODWORD(STACK[0x5510]) = v10 ^ (2 * ((v10 ^ 0x3C) & (2 * ((v10 ^ 0x3C) & (2 * ((v10 ^ 0x3C) & (2 * ((v10 ^ 0x3C) & (2 * ((v10 ^ 0x3C) & (2 * (v10 & (2 * v10) & 0x7A ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ a5;
  return (*(STACK[0x57D8] + 8 * ((36917 * (v7 == 339267752)) ^ (v7 - 960939371))))();
}

uint64_t sub_10037068C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v10 = v5 + v7 + v6;
  v11 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = v11 - (((v11 << ((a1 ^ 0x10u) - 85)) + 0x49827CF4CE56C3ECLL) & 0x89E86F40934273D0) + 0x69B5761AB0CC9BDELL;
  v13 = v12 ^ 0x4FEC8A3A2B6C6FA8;
  v12 ^= 0x69E579E91237601DuLL;
  v14 = __ROR8__(v13, 8);
  v15 = __ROR8__((((2 * (v14 + v12)) & 0xBB783B160B29A69CLL) - (v14 + v12) - 0x5DBC1D8B0594D34FLL) ^ 0x3F2021107DFF8771, 8);
  v16 = (((2 * (v14 + v12)) & 0xBB783B160B29A69CLL) - (v14 + v12) - 0x5DBC1D8B0594D34FLL) ^ 0x3F2021107DFF8771 ^ __ROR8__(v12, 61);
  v17 = (v15 + v16) ^ 0x893772B00383F7DCLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0xB5C9B22F089FC2BCLL) - (v19 + v18) + 0x251B26E87BB01EA2) ^ 0xF2C6D08E0F93413DLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (v22 + v21 - ((2 * (v22 + v21)) & 0xA924929AE5194ABALL) - 0x2B6DB6B28D735AA3) ^ 0x3A01A6B4891DC5C6;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a3;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v9;
  *v10 = (((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v26, 61))) ^ 0x5FC4102E9580487DuLL) >> (8 * (v10 & 7u))) ^ *(a5 + v7);
  return (*(STACK[0x57D8] + 8 * (((((v7 + 1) ^ v8) == a4) * a2) ^ a1)))();
}

uint64_t sub_100370894@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v10 = v3 + v6 + v4;
  v11 = __ROR8__((a3 + v6) & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = ((0x5B3EC18598D49E09 - v11) & 0x7123834746586C6DLL) + (v7 - 680089770) + v11 - 0x5B3EC18598D4F660 - (((v7 - 680089770) + v11 - 0x5B3EC18598D4F660) & 0x7523834746586C6DLL);
  v13 = v12 ^ 0xFE3B3EDD24953A2DLL;
  v12 ^= 0xD832CD0E1DCE3598;
  v14 = __ROR8__(v13, 8);
  v15 = (((2 * (v14 + v12)) & 0x424811A4656E0CD4) - (v14 + v12) - 0x212408D232B7066BLL) ^ 0x43B834494ADC5255;
  v16 = v15 ^ __ROR8__(v12, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0x751C9F52864B4574) - (v17 + v16) + 0x4571B056BCDA5D45) ^ 0xCC46C2E6BF59AA99;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__(v10 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((2 * v21 + 0x49827CF4CE56C3ECLL) & 0xFA7BD26FD466709ELL) - v21 + 0x5E00D84DAEA165BALL;
  v23 = v22 ^ 0x89DAAB52770191F0;
  v22 ^= 0xAFD358814E5A9E45;
  v24 = __ROR8__(v23, 8);
  v25 = (((2 * (v24 + v22)) | 0x42798638670D2B9ELL) - (v24 + v22) + 0x5EC33CE3CC796A31) ^ 0x3C5F0078B4123E0FLL;
  v26 = v25 ^ __ROR8__(v22, 61);
  v27 = (((2 * (v20 + v19)) & 0x317FA37C5EB805DCLL) - (v20 + v19) - 0x18BFD1BE2F5C02EFLL) ^ 0xCF6227D85B7F5D72;
  v28 = (__ROR8__(v25, 8) + v26) ^ 0x893772B00383F7DCLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = v27 ^ __ROR8__(v19, 61);
  v31 = __ROR8__(v28, 8) + v29;
  v32 = (2 * v31) | 0x5B29C370FFFCF55CLL;
  v33 = (__ROR8__(v27, 8) + v30) ^ a1;
  v34 = v33 ^ __ROR8__(v30, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v8;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ a2;
  v38 = __ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61));
  v39 = (v32 - v31 + 0x526B1E4780018552) ^ 0x85B6E821F422DACDLL ^ __ROR8__(v29, 61);
  v40 = __ROR8__((v32 - v31 + 0x526B1E4780018552) ^ 0x85B6E821F422DACDLL, 8);
  v41 = (0xE2ABE88494AF0A95 - ((v40 + v39) | 0xE2ABE88494AF0A95) + ((v40 + v39) | 0x1D54177B6B50F56ALL)) ^ 0xF3C7F88290C195F1 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__((0xE2ABE88494AF0A95 - ((v40 + v39) | 0xE2ABE88494AF0A95) + ((v40 + v39) | 0x1D54177B6B50F56ALL)) ^ 0xF3C7F88290C195F1, 8) + v41) ^ v8;
  v43 = __ROR8__(v42, 8);
  v44 = v42 ^ __ROR8__(v41, 61);
  v45 = (v43 + v44 - ((2 * (v43 + v44)) & 0x1B8BA272A6498524) - 0x723A2EC6ACDB3D6ELL) ^ 0xA368FC68B4254546;
  *v10 = (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v44, 61))) ^ v9) >> (8 * (v10 & 7u))) ^ ((v38 ^ v9) >> (8 * ((a3 + v6) & 7))) ^ *(a3 + v6);
  return (*(STACK[0x57D8] + 8 * (v7 ^ 0x2889EABB | (4 * (((((v6 + 1) ^ v5) - v7) | (v7 - ((v6 + 1) ^ v5))) >= 0)))))();
}

uint64_t sub_100370C98()
{
  v2 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0xA3A0] = 0;
  STACK[0xB778] = 0;
  return (*(STACK[0x57D8] + 8 * (((((v2 == 0x308E083E0C524CBELL) ^ (v0 + 119)) & 1) * ((v0 + 1458115942) & 0xA916DDF7 ^ 0x59BE)) ^ v0)))();
}

uint64_t sub_100370D2C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 == 0xB4CD795C194A8D75;
  v3 = STACK[0x273C];
  v4 = LODWORD(STACK[0x273C]) ^ 7;
  v5 = 1534937323 * ((~((v1 - 240) | 0x15C01575DAC70D7ELL) + ((v1 - 240) & 0x15C01575DAC70D7ELL)) ^ 0x27476248E3D609C6);
  if (v2)
  {
    v6 = 1534937323 * ((~((v1 - 240) | 0x15C01575DAC70D7ELL) + ((v1 - 240) & 0x15C01575DAC70D7ELL)) ^ 0x27476248E3D609C6);
  }

  else
  {
    v6 = v5 + 1;
  }

  STACK[0x1D4D8] = v6;
  LODWORD(STACK[0x1D4C8]) = v3 - v5 - 4033;
  v7 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = v5 + 1451493860 + STACK[0x51B8];
  LODWORD(STACK[0x1D4E0]) = v4 + v5;
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4D4]) = v3 ^ v5;
  STACK[0x1D4C0] = v5;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v7 ^ 0x2462)))(v1 - 240);
  return (*(v8 + 8 * SLODWORD(STACK[0x1D4E4])))(v9);
}

uint64_t sub_100370F48()
{
  v2 = STACK[0x6A08];
  STACK[0xB420] = STACK[0x89E0];
  LODWORD(STACK[0x8C54]) = -769884028;
  STACK[0x8EA0] = v2;
  LODWORD(STACK[0xBC38]) = v1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100371028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0xD0A8] = STACK[0x7348];
  STACK[0xAFD8] = 0;
  LODWORD(STACK[0x7940]) = 0;
  v9 = *(v8 + 104);
  v10 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v10 + 8 * (v7 - 1569404569 + ((v7 + 2140926696) & 0xDDEF3F9B) + 3604)))(v9, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100371130()
{
  v2 = STACK[0xCCB8];
  STACK[0x9890] = STACK[0xCCB8];
  LODWORD(STACK[0x791C]) = STACK[0x68CC];
  STACK[0xCAA8] = STACK[0x8370];
  v3 = STACK[0x7ED8];
  v4 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xC108] = v4;
  STACK[0xA5F0] = (v4 + 16);
  STACK[0xA528] = (v4 + 32);
  STACK[0x7ED8] = v3 + 432;
  STACK[0x6070] = 0x79296B4A625EDF44;
  LOWORD(STACK[0xB942]) = -3415;
  STACK[0x7850] = v1;
  STACK[0xA1D8] = 0;
  LODWORD(STACK[0xAB34]) = 0;
  STACK[0x6DC8] = 0;
  LODWORD(STACK[0xAD14]) = -769884012;
  if (v2)
  {
    v5 = v1 == 0xD38CBDD3ACAFF84ALL;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(STACK[0x57D8] + 8 * (((((7538 * (v0 ^ 0x5CF0) - 20053) | 0x1500) - 7933) * v6) ^ v0)))();
}

uint64_t sub_1003712F4()
{
  v1 = STACK[0x6938];
  v2 = *(STACK[0x6938] - 0x1883660EE814440ALL) - 769884012 + (((LODWORD(STACK[0xAE9C]) ^ 0x3E2F44C9) - 1043285193) ^ ((LODWORD(STACK[0xAE9C]) ^ 0xF0998CC0) + ((v0 + 2439) ^ 0xF662B16)) ^ ((LODWORD(STACK[0xAE9C]) ^ 0x1CAA489D) + ((v0 - 19114) ^ 0xE355B346)));
  LODWORD(STACK[0xE6BC]) = v2;
  v3 = *(v1 - 0x1883660EE814440ELL) - 2005084622;
  v2 -= 2005084622;
  v4 = v2 < 0x5C64AAE;
  v5 = v3 < v2;
  if (v3 < 0x5C64AAE != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = (STACK[0xCBF8] == 0) | v6;
  if (v7)
  {
    v8 = -143155721;
  }

  else
  {
    v8 = -143113071;
  }

  LODWORD(STACK[0xE6C0]) = v8;
  return (*(STACK[0x57D8] + 8 * ((31 * ((v7 & 1) == 0)) ^ v0)))();
}

uint64_t sub_1003714AC()
{
  v2 = STACK[0x6A54];
  v3 = STACK[0xCBEC];
  v4 = STACK[0xA854];
  LODWORD(STACK[0x831C]) = STACK[0x6398];
  LODWORD(STACK[0x7864]) = v3;
  LODWORD(STACK[0xA4E0]) = v2;
  LODWORD(STACK[0x5834]) = v4;
  return (*(STACK[0x57D8] + 8 * ((60 * (v1 != ((3769 * (v0 ^ 0x5E1D) - 143152065) ^ (v0 - 7703)))) ^ v0)))();
}

uint64_t sub_1003715A0()
{
  STACK[0x57C0] = 0;
  v1 = ((((LODWORD(STACK[0x6E50]) ^ 0x56CD51B2) - 1456296370) ^ ((LODWORD(STACK[0x6E50]) ^ 0x8FADE593) + 1884428909) ^ ((LODWORD(STACK[0x6E50]) ^ 0xB7C34B5) - 192689333)) - 769883981) & ((v0 + 937115245) & 0xC824FDF9 ^ 0xFFFFB258);
  v2 = STACK[0x7BA0];
  STACK[0xAE88] = 0x1883660EE8144416;
  STACK[0x7810] = v2;
  LODWORD(STACK[0xC0DC]) = -2013569065;
  STACK[0x8000] = &STACK[0xAE88];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v1 ^ 0xF63300A7) - 529585958) ^ ((v1 ^ 0xA2F38919) - 1263558296) ^ ((v1 ^ 0x54C089BE) + 1117561281)) + 1726827517;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1003717A4()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * (v0 + 3031));
  return (*(v1 + 8 * (((v0 + 3031) ^ 0x12B) + v0 + 3031)))();
}

uint64_t sub_1003717DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x6BAC]) = v8;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 + 3407)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_100371938()
{
  STACK[0xB5E0] = 0;
  LODWORD(STACK[0xBCF4]) = v1;
  STACK[0x6D08] = 0;
  LODWORD(STACK[0x8A6C]) = v1;
  STACK[0x8128] = 0;
  LODWORD(STACK[0xBD04]) = v1;
  STACK[0x6480] = 0;
  LODWORD(STACK[0xCC1C]) = v1;
  STACK[0xADF8] = 0;
  LODWORD(STACK[0x783C]) = v1;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBCF4];
  LODWORD(STACK[0x9094]) = -32197491;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x54C)))();
}

uint64_t sub_100371B8C()
{
  v3 = STACK[0x57D8];
  STACK[0xA600] = *(STACK[0x57D8] + 8 * v2);
  STACK[0x82D0] = v0;
  v4 = STACK[0x7ED8];
  STACK[0xC2B0] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v4 + (((v1 - 565) | 0x1016u) ^ 0x5876);
  v5 = (*(v3 + 8 * (v1 + 12745)))(23);
  *v0 = v5;
  return (*(v3 + 8 * ((233 * (((v1 - 116) ^ (v5 == 0)) & 1)) ^ v1)))();
}

uint64_t sub_100371C38()
{
  if (STACK[0xBDD8])
  {
    v0 = STACK[0xBF20] == 0;
  }

  else
  {
    v0 = 1;
  }

  v1 = v0;
  return (*(STACK[0x57D8] + 8 * ((22 * (((((STACK[0x51B8] ^ 0x427E) - 2122587601) & 0x7E845BFE ^ v1) & 1) == 0)) | STACK[0x51B8] ^ 0x427E)))();
}

uint64_t sub_100371CF8(int a1, unsigned int a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x5760]) = v10;
  STACK[0x5770] = v5;
  STACK[0x5780] = v4;
  v11 = (LODWORD(STACK[0x5750]) - 1459811799) & 0x5702FF88;
  v12 = -1591669921 * *(v6 + v9);
  v13 = v9 + v7;
  LODWORD(STACK[0x5790]) = v11;
  v14 = (v12 ^ a2) + ((v9 + v7 + (v12 ^ a2)) >> (v11 ^ 0x18));
  v15 = (v14 + v8) >> 8;
  v16 = v9 + v7 + v14 + v15;
  v17 = v9 + a4;
  v18 = v17 + v14 + v15;
  v19 = ((v18 ^ v12) + v8 + (((v18 ^ v12) + v8) >> 16)) >> 8;
  v20 = v13 + (v18 ^ v12) + (((v18 ^ v12) + v8) >> 16) + v19;
  LODWORD(v19) = v17 + (v18 ^ v12) + (((v18 ^ v12) + v8) >> 16) + v19;
  v21 = (v16 >> 1) & 0x515377FB;
  LODWORD(v15) = v16 ^ LODWORD(STACK[0x57C0]);
  v22 = (v20 >> 1) & 0x515377FB;
  v23 = v19 ^ v12;
  v24 = v15 ^ v21;
  v25 = (v23 + v8);
  v26 = v24 ^ v20;
  v27 = v25 >> 16;
  v28 = (v25 + WORD1(v25)) >> 8;
  LODWORD(STACK[0x57C0]) = v26 ^ v22 ^ (v13 + v23 + v27 + v28) ^ ((v13 + v23 + v27 + v28) >> 1) & 0x515377FB;
  return (*(STACK[0x57D8] + 8 * ((119 * (v13 == 15)) ^ LODWORD(STACK[0x5740]))))(v18 ^ a1 ^ (v18 >> 1) & 0x515377FB ^ v19 ^ (v19 >> 1) & 0x515377FB ^ (v17 + v23 + v27 + v28) ^ ((v17 + v23 + v27 + v28) >> 1) & 0x515377FB);
}

uint64_t sub_100371FA4()
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] - 22614;
  v6 = STACK[0x68A8];
  v7 = 1534937323 * ((((v3 - 240) ^ 0x1F8C9F5BD4327E25 | 0xE0F6D242EC7A2B6ELL) - ((v3 - 240) ^ 0x1F8C9F5BD4327E25) + (((v3 - 240) ^ 0x1F8C9F5BD4327E25) & 0x1F092DBD1385D491)) ^ 0x3202C5DBFEA6AE0CLL);
  *(v2 + 608) = v7;
  *(v2 + 592) = v7;
  *(v2 + 624) = v4 + 466806805 + v7 + 3478;
  *(v2 + 612) = (466829419 - v1 + 2 * v5 + 3487) ^ v7;
  *(v2 + 604) = v7 + 1451493860 + v4;
  *(v2 + 600) = 466829419 - v7 + v0;
  *(v2 + 616) = v6 + v7;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v4 + 9182)))(v3 - 240);
  return (*(v8 + 8 * *(v2 + 628)))(v9);
}

uint64_t sub_100372248(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = (v4 - 17029) | 0x2042;
  LODWORD(STACK[0x5650]) = v5;
  return (*(STACK[0x57D8] + 8 * (((a4 == ((v4 - 17029) ^ 0x182)) * (v5 - 4549)) ^ v4)))();
}

uint64_t sub_100372300()
{
  v0 = STACK[0x51B8] + 1782;
  v1 = STACK[0x5B88];
  *v1 = STACK[0xAEE8];
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1414217035;
  *(v1 + 28) = 0x800000002;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = -491200154;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1768711563;
  *(v1 + 68) = 0x400000001;
  *(v1 + 76) = 2;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1003723F8()
{
  v1 = v0 - 20811;
  v2 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((((v1 - 1235) | 0x4005) ^ 0x4949) + v1)))(0x308E083E0C524CBELL);
}

uint64_t sub_100372554()
{
  v4 = STACK[0x51B8];
  v5 = STACK[0xCB8];
  v6 = STACK[0x51B8] - STACK[0xCB8];
  LODWORD(STACK[0x1D4C8]) = v6 - v0 + 1041890043;
  STACK[0x1D4D8] = 4151854225u - v5;
  LODWORD(STACK[0x1D4C0]) = (v4 - 1079089617) ^ v5;
  STACK[0x1D4E0] = v1 + v5;
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4CC]) = v6 + 1041889362;
  LODWORD(STACK[0x1D4C4]) = v5 ^ v2 ^ 0x3E1A5D54;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v4 + 9201)))(v3 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4D4])))(v8);
}

uint64_t sub_1003725FC()
{
  v0 = STACK[0x51B8];
  STACK[0xBBC8] = &STACK[0xCB8C];
  LODWORD(STACK[0xCDD8]) = 550409988;
  return (*(STACK[0x57D8] + 8 * (v0 - 17563)))();
}

uint64_t sub_10037269C()
{
  LODWORD(STACK[0xDF48]) = STACK[0x4C30];
  STACK[0xCDB0] = 0;
  LOBYTE(STACK[0xDF4F]) = 0;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1003726D8@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W5>, int a4@<W6>, int a5@<W8>)
{
  v9 = STACK[0x5790];
  v10 = LODWORD(STACK[0x5790]) + 1416639997;
  v11 = (v5 + a4) >> 8;
  v12 = v5 - ((v11 + 968456041 + v5 + a1) >> (LODWORD(STACK[0x5790]) + 54));
  v13 = (v12 + a3 + v11) >> 3;
  v14 = v11 + 968456041 - v13 + v12 + a1;
  v15 = v11 - ((v12 + a2 + v11 + ((v12 + a2 + v11 - v13) >> 15) - v13) >> 6) - v13 + v12 + ((v12 + a2 + v11 - v13) >> 15) + a2;
  v16 = (v15 ^ 0x4E4CD557) - ((v15 ^ 0x4E4CD557) >> 8) - (((v15 ^ 0x4E4CD557) - ((v15 ^ 0x4E4CD557) >> 8)) >> 7) - 69837674;
  v17 = v16 - (v16 >> 10) - ((v16 - (v16 >> 10)) >> 7);
  v18 = v17 - 2047249099 + ((v17 - 2047249099) >> 14) + ((v17 - 2047249099 + ((v17 - 2047249099) >> 14)) >> 8);
  v19 = v18 - 1001601100 - ((v18 - 1001601100) >> 11) + ((v18 - 1001601100 - ((v18 - 1001601100) >> 11)) >> 2) + 1453661299;
  v20 = v19 - (v19 >> 10) - ((v19 - (v19 >> 10)) >> ((v6 & 6 ^ 6) + (v6 & 6)));
  v21 = (v20 ^ 0xAE729DB) + ((v20 ^ 0xAE729DB) >> 13) + (((v20 ^ 0xAE729DB) + ((v20 ^ 0xAE729DB) >> 13)) >> 5);
  LOBYTE(v19) = *(STACK[0x57A0] + ((55 * (0x4CEE3C39 % STACK[0x5278])) ^ 0x1CC5Bu));
  v22 = *(STACK[0x4E98] + ((((v19 ^ 0x2E) - 108) ^ ((v19 ^ 0x14) - 86) ^ ((v19 ^ 0xA) - 72)) + 101));
  v23 = *(STACK[0x57A0] + (((v22 ^ 0x5941FCA9) - 1497496582) ^ ((v22 ^ 0xCE782772) + 830986275) ^ ((v22 ^ 0x9739DB16) + 1757815879)) + 68130);
  v24 = 27 - 85 * (((v23 ^ 0xFFFFFFDB) - 45) ^ ((v23 ^ 0x7F) + 119) ^ ((v23 ^ 0x1F) + 23));
  v25 = *(STACK[0x4E98] + ((v24 ^ 0x7FCFBDCF) + ((2 * v24) & 0x19E) - 2144320975) % STACK[0x5278]) - 117;
  v26 = ((v25 | ((v25 < 0x61) << 8)) - 97) % STACK[0x5278];
  v27 = *(STACK[0x4E98] + ((v26 + 391678653 - ((2 * v26) & 0x2EB1157A)) ^ 0x17588ABD));
  v28 = v27 + 44;
  v29 = ((v27 + 44) ^ 0xA) & (2 * (((v27 + 44) ^ 0x5A) & (2 * (((v27 + 44) ^ 0x5A) & (2 * ((v27 + 44) | 0xFFFFFFAC)) ^ ((v27 + 44) | 0xFFFFFFAC))) ^ ((v27 + 44) | 0xFFFFFFAC))) ^ ((v27 + 44) | 0xFFFFFFAC);
  v30 = ~(v27 + 44) & 0x25;
  LOBYTE(v27) = 2 * (((-90 - 2 * v27) & 0x5A | v30) ^ (-90 - 2 * v27) & (v27 + 44));
  LOBYTE(v27) = 2 * ((v27 & 0x5A | v30) ^ v27 & v28);
  LOBYTE(v27) = 2 * ((v27 & 0x5A | v30) ^ v27 & v28);
  LOBYTE(v27) = 2 * ((v27 & 0x5A | v30) ^ v27 & v28);
  LOBYTE(v27) = 2 * ((v27 & 0x5A | v30) ^ v27 & v28);
  v31 = ((16 * v29) ^ (8 * v28)) & 0xFFFFFFF8 | ((v28 ^ (2 * ((v27 & 0xDF | v30) ^ v27 & v28))) >> 5);
  v32 = v31 ^ *(STACK[0x57A0] + (v31 ^ 0xABu) + 123914);
  v33 = (((v32 ^ 0xFD) - 84) ^ ((v32 ^ 0xF8) - 81) ^ ((v32 ^ 0x1A) + 77)) + 26;
  LOBYTE(v33) = 55 * *(STACK[0x4E98] + ((v33 ^ 0x77FCCDED) - 2013059931 + ((2 * v33) & 0x1DAu) + 3438) % STACK[0x5278]) + 69;
  LOBYTE(v31) = (v33 & 0x22 | 0xC9) ^ v33 & 0x96;
  LOBYTE(v33) = *(((v33 ^ (2 * ((v33 ^ 0x22) & (2 * ((v33 ^ 0x22) & (2 * ((v33 ^ 0x22) & (2 * ((v33 ^ 0x22) & (2 * ((v33 ^ 0x22) & (2 * ((v33 ^ 0x22) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0xC3u) + 129215 + STACK[0x57A0] + 2462);
  v34 = ((((v33 ^ 0x66) + 66) ^ ((v33 ^ 0xB4) - 108) ^ ((v33 ^ 0x57) + 113)) + 80) % STACK[0x5278];
  v35 = (32 * v34) | (v34 >> 3);
  v36 = (((v35 ^ 0xFFFFFF81) + 86) ^ ((v35 ^ 0xFFFFFF9A) + 79) ^ ((v35 ^ 0xFFFFFFE5) + 50)) - 61;
  v37 = v36 & 0x75 ^ 0xFFFFFFF4;
  v38 = v35 ^ v36 ^ *(STACK[0x57A0] + (v35 ^ 0xAFu) + 60608) ^ (2 * ((v36 ^ 0xC) & (2 * ((v36 ^ 0xC) & (2 * ((v36 ^ 0xC) & (2 * ((v36 ^ 0xC) & (2 * ((v36 ^ 0xC) & (2 * (v36 & (2 * v36) & 0x1A ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37));
  v39 = v38 & 0xFFFFFFEC ^ 0x24 | v38 & 0xFFFFFFEC ^ 0xFFFFFFC8;
  LODWORD(STACK[0x57C0]) = a5 ^ v14 ^ v17 ^ v20 ^ 0xF2B92203 ^ v7 & ((v17 ^ v14 ^ v20) >> 2);
  LODWORD(STACK[0x57B0]) = v8 ^ v15 ^ v18 ^ v21 ^ 0xC3EDCE2C ^ v7 & ((v18 ^ v15 ^ v21) >> 2);
  LODWORD(STACK[0x5740]) = ((117 * (v38 ^ (v39 - ((2 * v39) & 0x10) + 9) ^ 0x3F)) ^ 0xF735BA4F) - 1423183965 + ((234 * (v38 ^ (v39 - ((2 * v39) & 0x10) + 9) ^ 0x3F)) & 0x9E);
  v40 = *(STACK[0x57D8] + 8 * (v9 ^ 0xAB904A03 ^ (64882 * (v9 >= 0xF25DAF48))));
  LODWORD(STACK[0x5780]) = v10;
  v41 = (v10 + 5808877) & 0xFFA73FFB;
  LODWORD(STACK[0x5700]) = v41;
  LODWORD(STACK[0x5710]) = v41 - 14264;
  return v40();
}

uint64_t sub_100372DE0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 6955)))((v0 - 153637123));
  *STACK[0x7948] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((((v1 - 3082) | 0x2064) - 7435) ^ v1 ^ 0x3945)) ^ v1)))();
}

uint64_t sub_100372E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  STACK[0x5168] = a8;
  STACK[0x51A8] = v8;
  STACK[0x51B0] = v9;
  LODWORD(STACK[0x51C0]) = v11;
  STACK[0x5158] = v10;
  LODWORD(STACK[0x52B8]) = (v12 - 24396) | 0x1000;
  v13 = STACK[0x4FC0] + LODWORD(STACK[0x5540]);
  STACK[0x5140] = v13;
  STACK[0x5160] = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(v13) = STACK[0x5008];
  v14 = LODWORD(STACK[0x5008]) + 8;
  LODWORD(STACK[0x5540]) = v14;
  return (*(STACK[0x57D8] + 8 * (v12 ^ (228 * (LODWORD(STACK[0x53D0]) != ((120 * (((247 - v13) | v14) & 0xFFFFFF8F)) & 0xF8))))))(4294967269);
}

uint64_t sub_1003731AC()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x11E2) + v0)))();
}

uint64_t sub_100373330()
{
  v1 = *(STACK[0xBC20] + 24);
  STACK[0x6C68] = v1;
  return (*(STACK[0x57D8] + 8 * (((((v1 == 0) ^ (v0 - 1)) & 1) * ((v0 ^ 0x3680) - 22555)) ^ v0)))();
}

uint64_t sub_100373390()
{
  STACK[0xE850] = v1;
  v2 = STACK[0xA9F8];
  STACK[0xE858] = STACK[0xA9F8];
  return (*(STACK[0x57D8] + 8 * ((27451 * (v1 - v2 > (((v0 ^ 0x2EEAu) + 22377) ^ 0x585FuLL))) ^ v0)))();
}

uint64_t sub_100373448()
{
  v3 = *(v0 + 3080);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0xFFFFFFF8 ^ 0x48D03CE5) + 1241512903 + ((2 * (v3 & 0xFFFFFFF8)) & 0x91A079C0))) & 0xFFFFFFFFFFFFFFF8));
  v5 = (v4 + __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (v7 + v6 - ((2 * (v7 + v6)) & 0xA16EBACD60ACD06ALL) - 0x2F48A2994FA997CBLL) ^ 0xB54509BBA8DBDCC9 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__((v7 + v6 - ((2 * (v7 + v6)) & 0xA16EBACD60ACD06ALL) - 0x2F48A2994FA997CBLL) ^ 0xB54509BBA8DBDCC9, 8) + v8) ^ 0x6FF046966119128DLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ v2;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) & 0xFAAEB951E5FA2A6) - (v17 + v16) - 0x7D575CA8F2FD154) ^ 0xAC7F8B1BFA61ED23;
  LODWORD(v3) = 3903 * ((((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v16, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v3 & 7u))) ^ *(v0 + 295)) + 4008381;
  *(*(v0 + 4000) + 39294) = *(*(v0 + 4008) + v3 - 5896 * (((1456909 * v3) >> 32) >> 1));
  v19 = *(v0 + 3984) + 34;
  *(v0 + 296) = v19;
  v20 = STACK[0x57D8];
  v21 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D50]) + 31658));
  *(v0 + 3088) = v19;
  *(v0 + 280) = v21;
  return (*(v20 + 8 * (v1 ^ 0x51A6u)))();
}

uint64_t sub_1003736E0@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W8>)
{
  v20 = v18 + v3 * v19 - (((((v18 + v3 * v19) >> 3) * v15) >> 32) >> 7) * a1;
  v21 = ((*(v12 + v20) ^ 0xCA92DFA8) + v17) ^ ((*(v12 + v20) ^ 0xCD9B1FE7) + 845471769) ^ ((*(v12 + v20) ^ LODWORD(STACK[0x36A8])) - 118079624);
  *(v11 + 4 * (v3 * v16 + 9458650 - ((((v3 * v16 + 9458650) * v14) >> 32) >> 12) * v13)) = 1750054538;
  v22 = v3 * v16 + 9469466 - ((((v3 * v16 + 9469466) * v14) >> 32) >> 12) * v13;
  v23 = *(v11 + 4 * v22);
  v24 = *(v12 + a2 + 4843 * v21 - 5816 * (((((a2 + 4843 * v21) >> 3) * v15) >> 32) >> 7));
  v25 = v23 ^ 0x55;
  v26 = v10 ^ v23;
  if (v24)
  {
    v26 = v25;
  }

  if ((v24 & 2) == 0)
  {
    v26 ^= v9 ^ 0xC7;
  }

  if ((v24 & 4) == 0)
  {
    v26 ^= v4 ^ 0xC7;
  }

  if ((v24 & 8) != 0)
  {
    v26 ^= v5 ^ 0xC7;
  }

  if (((v24 ^ 0x30) & 0x10) == 0)
  {
    v26 ^= v6 ^ 0xC7;
  }

  if (((v24 ^ 0x30) & 0x20) == 0)
  {
    v26 ^= v7 ^ 0xC7;
  }

  if ((v24 & 0x40) == 0)
  {
    v26 ^= v8 ^ 0xC7;
  }

  if (v24 >= 0)
  {
    v27 = *(v12 + 293) ^ 0xC7 ^ v26;
  }

  else
  {
    v27 = v26;
  }

  *(v11 + 4 * v22) = v27 ^ 0x684FB655;
  return (*(STACK[0x57D8] + 8 * ((31273 * (2 * (v3 & 1) + v3 + ((v3 - (v3 ^ 1)) ^ 0xFFFFFFFE) < 0x100)) ^ a3)))(2078045390);
}

uint64_t sub_1003738A4()
{
  LODWORD(STACK[0x8B54]) = v0;
  v2 = STACK[0x57D8];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 + 3855)))(0x1C64917143BAF700);
}

uint64_t sub_100373990@<X0>(unsigned int a1@<W6>, uint64_t a2@<X8>)
{
  v7 = v2 + 8 * ((STACK[0x57A0] ^ a2) + v6 + ((v6 < 0x1085958F) << 32));
  v8 = v6 + 458654772;
  *(v4 + v7) = *(v3 + v7) ^ 0x8484848484848484;
  if (v5 < a1 != v8 < 0x2BDC19C2)
  {
    v9 = v5 < a1;
  }

  else
  {
    v9 = v5 > v8;
  }

  return (*(STACK[0x57D8] + 8 * (STACK[0x57B0] | (32 * !v9))))();
}

uint64_t sub_100374C9C()
{
  v0 = STACK[0x57C0];
  LODWORD(STACK[0x4F90]) = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5540]);
  return (*(STACK[0x57D8] + 8 * v0))(2880744102);
}

uint64_t sub_100374EDC()
{
  v0 = STACK[0x1998] | 0x220;
  *(STACK[0x6938] - 0x1883660EE814440ALL) = STACK[0xE6BC];
  return (*(STACK[0x57D8] + 8 * ((14024 * (LODWORD(STACK[0xE6C0]) == (v0 ^ 0xF7784EB9))) ^ (STACK[0x51B8] - 2074))))();
}

uint64_t sub_100374F50()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 31773)))();
  v3 = v2 == (*(v1 + 8 * (v0 + 31782)))();
  return (*(v1 + 8 * ((v3 * (((v0 ^ 0xB0A) + 19721) ^ 0x609D)) ^ v0)))();
}

uint64_t sub_100374FB8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = 5 * (v4 ^ 0x56B);
  LODWORD(STACK[0x55A0]) = LODWORD(STACK[0x5760]) + 1134511447;
  v6 = ((v5 + 419402725) * LODWORD(STACK[0x5780])) & STACK[0x5790];
  LODWORD(STACK[0x5670]) = STACK[0x5750] & LODWORD(STACK[0x57C0]);
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5730]) ^ 0x42;
  LODWORD(STACK[0x5760]) = LODWORD(STACK[0x5590]) ^ ~v6;
  LODWORD(STACK[0x57B0]) = LODWORD(STACK[0x5420]) - 1532832212;
  v7 = *(STACK[0x57D8] + 8 * v4);
  LODWORD(STACK[0x5790]) = a3 & 1 | 0xCBB6187E;
  LODWORD(STACK[0x5780]) = v3 + 1369940608;
  LODWORD(STACK[0x5730]) = v3 - 2069698017;
  LODWORD(STACK[0x5710]) = v3 + 1535510075;
  LODWORD(STACK[0x5750]) = a3 & 1 | 0xC0750802;
  LODWORD(STACK[0x5720]) = v3 + 1917657615;
  LODWORD(STACK[0x5740]) = a3 & 1 | 0xB7E46B76;
  LODWORD(STACK[0x56F0]) = v3 + 2083227082;
  LODWORD(STACK[0x5700]) = v3 - 1147058959;
  LODWORD(STACK[0x57C0]) = v5;
  v8 = (v5 + 1244696804) & 0xB5CF4F3F;
  LODWORD(STACK[0x5620]) = v8;
  LODWORD(STACK[0x56E0]) = v8 ^ 0x4B7745A8;
  return v7();
}

uint64_t sub_100375368()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 3609) ^ v0)))();
}

uint64_t sub_1003753B8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 1796759014)))();
  return (*(v1 + 8 * ((8832 * (v0 > 0xCC119CFF)) ^ (v0 + 1796734982))))(v2);
}

uint64_t sub_1003754C8(uint64_t a1, int a2, int a3)
{
  v6 = (*(v5 + v4) >> 2) | (*(v5 + v4) << 6);
  v7 = (((v6 ^ 0x3A) - 29) ^ ((v6 ^ v3) + 54) ^ ((v6 ^ ((a2 ^ a3) + 56)) + 68)) + 112;
  v8 = v7 & 0xFFFFFFF4 ^ 7;
  LODWORD(STACK[0x52A8]) = 110;
  v9 = v7 ^ (2 * ((v7 ^ 0x6E) & (2 * ((v7 ^ 0x6E) & (2 * ((v7 ^ 0x6E) & (2 * ((v7 ^ 0x6E) & (2 * (((2 * (v8 ^ v7 & 0x1A)) ^ 0x14) & (v7 ^ 0x6E) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8));
  v10 = *(STACK[0x57D8] + 8 * a2);
  LODWORD(STACK[0x54B0]) = v9 ^ 0xFFFFFF8B;
  LODWORD(STACK[0x52F0]) = 111;
  LODWORD(STACK[0x5220]) = 189;
  LODWORD(STACK[0x5338]) = 57;
  return v10(a1, LODWORD(STACK[0x52E0]));
}

uint64_t sub_1003755D4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0x6DB8] = 0;
  return (*(v1 + 8 * (v0 - 8450)))(v2);
}

uint64_t sub_100375608()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x378A)))();
  STACK[0x9BF0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003756BC(int a1)
{
  v6 = ((a1 - 1300266348) & 0x4D806CEF) + 72796014 + v2 * v1;
  *(v5 + 4 * (v6 - (((v6 * v4) >> 32) >> 12) * v3)) = *(v5 + 4 * (v2 * v1 + 74383605 - ((((v2 * v1 + 74383605) * v4) >> 32) >> 12) * v3));
  return (*(STACK[0x57D8] + 8 * ((28592 * (v2 == 164617336)) ^ a1)))();
}

uint64_t sub_100375834()
{
  v2 = STACK[0xAE50];
  v3 = 1534937323 * ((((v1 - 240) | 0x1B83F5A4B83D81B7) - (v1 - 240) + ((v1 - 240) & 0xE47C0A5B47C27E48)) ^ 0xD6FB7D667ED37AF0);
  LODWORD(STACK[0x1D4C8]) = ((v0 - 22614) ^ 0xEA10CC67) - v3;
  STACK[0x1D4D8] = v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4E0]) = ((v0 - 22614) ^ 0xEA10DC2B) + v3;
  LODWORD(STACK[0x1D4D4]) = v3 ^ (v0 - 22614) ^ 0xEA10DC34;
  LODWORD(STACK[0x1D4CC]) = v3 + v0 + 1451493860;
  STACK[0x1D4C0] = v2 ^ v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_10037592C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19.val[0].i64[0] = (a6 + v12 - 10) & 0xF;
  v19.val[0].i64[1] = (a6 + v12 + 5) & 0xF;
  v19.val[1].i64[0] = (a6 + v12 + 4) & 0xF;
  v19.val[1].i64[1] = (a6 + v12 + 3) & 0xF;
  v19.val[2].i64[0] = (a6 + v12 + 2) & 0xF;
  v19.val[2].i64[1] = (a6 + v12 + (a1 ^ 0xFD) - 9) & 0xF;
  v19.val[3].i64[0] = (a6 + v12) & 0xF;
  v19.val[3].i64[1] = (((v10 + v14) ^ 8) + v9) & 0xF;
  *(a7 + v13 + v15) = veor_s8(veor_s8(veor_s8(*(v16 + v19.val[0].i64[0]), *(a2 + v10)), veor_s8(*(v19.val[0].i64[0] + v8 + 4), *(a8 + v19.val[0].i64[0]))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v19, v11[26]), v17)));
  return (*(STACK[0x57D8] + 8 * ((243 * (a3 == a5)) ^ a4)))();
}

uint64_t sub_100375A7C@<X0>(uint64_t a1@<X1>, void *a2@<X3>, _DWORD *a3@<X4>, uint64_t a4@<X8>)
{
  v9 = *(*a2 + (*a3 & (((v6 + 5660) | 0x1840) - 22622) & (((a4 + v7) & 0x2BD6E548) - 1237943934 + ((a4 + v7) & 0xD4291AB0 | 0x2BD6E54C) + 2849)));
  v10 = __ROR8__((a4 + v7) & 0xFFFFFFFFFFFFFFF8, 8);
  v11 = (((2 * (v10 + v9)) | 0x9B2739DAA45C24C8) - (v10 + v9) + 0x326C6312ADD1ED9CLL) ^ 0x6071E591CECEF3B9;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((((2 * (v13 + v12)) | 0xCB1706BAC34DF27ELL) - (v13 + v12) - 0x658B835D61A6F93FLL) ^ 0x6C7EFBE24F46C63FLL, 8);
  v15 = (((2 * (v13 + v12)) | 0xCB1706BAC34DF27ELL) - (v13 + v12) - 0x658B835D61A6F93FLL) ^ 0x6C7EFBE24F46C63FLL ^ __ROR8__(v12, 61);
  v16 = (v14 + v15 - ((2 * (v14 + v15)) & 0xA9ED35756DC2232ALL) + 0x54F69ABAB6E11195) ^ 0xEC0100314B4ACFA5;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0x70D9049F3A645112 - ((v18 + v17) | 0x70D9049F3A645112) + ((v18 + v17) | 0x8F26FB60C59BAEEDLL)) ^ 0xA174D9D458F3D73CLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0xC61D33A87CFFE736 - ((v21 + v20) | 0xC61D33A87CFFE736) + ((v21 + v20) | 0x39E2CC57830018C9)) ^ 0xC84FC858E09B661ALL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * ((v24 + v23) ^ 0x8BEE96EA22CAE062)) & 0x8F986210B4378A0) - ((v24 + v23) ^ 0x8BEE96EA22CAE062) + 0x7B833CEF7A5E43AFLL) ^ 0x3135CA5F4B6B02D5;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  *(a4 + v7) = *(v4 + v7) ^ (((v29 + v28 - ((2 * (v29 + v28)) & 0xAB92A11027AE3036) + 0x55C9508813D7181BLL) ^ v8) >> (8 * ((a4 + v7) & 7))) ^ 0xF;
  return (*(STACK[0x57D8] + 8 * ((28455 * (v7 + 1 == v5)) ^ v6)))();
}

uint64_t sub_100375F58()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0xB1C0];
  v3 = STACK[0xAAA8];
  STACK[0x1D4C0] = *STACK[0x68F8];
  STACK[0x1D4C8] = v3;
  LODWORD(STACK[0x1D4D4]) = LODWORD(STACK[0x15CC]) ^ (711523751 * ((v0 - 240) ^ 0x301A21D1));
  STACK[0x1D4D8] = v2;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2425)))(v0 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x15D0])))(v5);
}

uint64_t sub_100376084@<X0>(int a1@<W0>, int a2@<W1>, unsigned __int8 a3@<W2>, int a4@<W3>, int a5@<W5>, int a6@<W8>)
{
  LODWORD(STACK[0x49B8]) = LODWORD(STACK[0x5520]) + LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x5640]) = a2 & (a1 ^ 0xFA336F9C);
  LODWORD(STACK[0x5520]) = a5 & (a4 ^ 0xD694B423);
  LODWORD(STACK[0x53D0]) = a6 & (a3 ^ 0x40F25175);
  LODWORD(STACK[0x54C0]) = v14 & (v13 ^ 0xFBBB6BAE);
  LODWORD(STACK[0x5530]) = v10 & (v7 ^ 0xC20801FF);
  LODWORD(STACK[0x5430]) = v8 & (v6 ^ 0xA4E7BC0);
  LODWORD(STACK[0x5440]) = v11 & (v9 ^ 0xE7C80CE9);
  return (*(STACK[0x57D8] + 8 * v12))();
}

uint64_t sub_1003761A4(uint64_t a1)
{
  v2 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * (v1 - 19865));
  return (*(v2 + 8 * ((v1 - 14979) ^ (v1 - 19865) ^ 0x5CE)))(a1, 16390, -22613, 22798, 4294961082, 186);
}

uint64_t sub_100376214()
{
  v0 = STACK[0x57D8];
  v1 = 2352 * (STACK[0x51B8] ^ 0x5850);
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x34C4]));
  return (*(v0 + 8 * (LODWORD(STACK[0x34C0]) + v1)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_10037627C()
{
  v4 = v3 < v1;
  if (v4 == (v2 + 725400708) < 0x3787F82A)
  {
    v4 = v2 + 725400708 < v3;
  }

  return (*(STACK[0x57D8] + 8 * (((2 * v4) | (32 * v4)) ^ v0)))();
}

uint64_t sub_100376AAC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x32A4]) = LODWORD(STACK[0x4E70]) | LODWORD(STACK[0x4E68]);
  LODWORD(STACK[0x324C]) = LODWORD(STACK[0x4E78]) | LODWORD(STACK[0x4E50]);
  LODWORD(STACK[0x3250]) = v7 | LODWORD(STACK[0x4E34]);
  LODWORD(STACK[0x3328]) = v3 | LODWORD(STACK[0x4E20]);
  LODWORD(STACK[0x3218]) = v6;
  LODWORD(STACK[0x31F0]) = v2 & (a2 ^ 0x74B3BDAA);
  LODWORD(STACK[0x3200]) = v5 & (v4 ^ 0xDBD2FB59);
  v9 = *STACK[0x4F60];
  v10 = *STACK[0x5268];
  v11 = *STACK[0x52A8];
  v12 = *STACK[0x5088];
  v13 = v10 & 0x88 | 0x52;
  v14 = v12 & 0xD2 ^ 0xBF;
  v15 = (((v10 ^ (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0x88) << 16) | (((v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & 0x36 ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xD2) << 8);
  v16 = v11 & 0x7A ^ 0xCB;
  v17 = v11 ^ 0x64;
  v18 = (((v11 ^ (2 * (v17 & (2 * (v17 & (2 * (v17 & (2 * (v17 & (2 * (v17 & (2 * (v16 ^ v11 & 0x1E)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x3893D8) & ~v15 | v15 & 0xC76C00) << 8;
  LOBYTE(v15) = v9 & 0x7A ^ 0x4B;
  LODWORD(STACK[0x31E8]) = (v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * (v15 ^ v9 & 0x1E)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)));
  LODWORD(STACK[0x31E0]) = v18 ^ 0x452841FF;
  LODWORD(STACK[0x3228]) = v18 & 0xA2D43C00;
  return (*(STACK[0x57D8] + 8 * v8))(a1, 21613735);
}

uint64_t sub_100376DF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6)
{
  v10 = *(*(a3 + 1360) + v9 - 35072 * ((((v8 >> 6) * a5) >> 64) >> 1));
  *(*(a3 + 1368) + v6 - 6152 * (((v6 * a4) >> 64) >> 12)) = (((v10 ^ 0x10) - 69) ^ ((v10 ^ 0xDF) + 118) ^ ((v10 ^ 0x29) - 124)) - 1;
  return (*(STACK[0x57D8] + 8 * ((22747 * (v7 == 0)) ^ a6)))();
}

uint64_t sub_100376F00(__n128 a1, double a2, double a3, double a4, __n128 a5, __n128 a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v14 = *(STACK[0x57D8] + 8 * (((((a13 - 13472) | 0xC90) - 8069) * (v13 == a9)) ^ a13));
  STACK[0x57A0] = v13;
  return v14(0xCC5AB6FA0074CFA2, a1, *&STACK[0x56F0], *&STACK[0x5740], *&STACK[0x5730], a5, a6, a7, *&STACK[0x5720]);
}

uint64_t sub_100377094@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8244]) = v1;
  v3 = STACK[0x7100];
  v4 = 1534937323 * ((0xB75CE1915DF887CDLL - ((v2 - 240) | 0xB75CE1915DF887CDLL) + STACK[0x37D0]) ^ 0x85DB96AC64E98375);
  STACK[0x1D4C0] = v4;
  LODWORD(STACK[0x1D4E0]) = ((a1 - 22614) ^ 0x7DA40A83) + v4;
  LODWORD(STACK[0x1D4C8]) = 2107901310 - v4 + a1 - 22614 + 7;
  STACK[0x1D4D8] = v3 + v4;
  LODWORD(STACK[0x1D4D4]) = (a1 + 2107879978) ^ v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + a1 + 1451493860;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2462)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_100377188(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = LODWORD(STACK[0x5780]) ^ a1;
  v22 = *(v13 + 528) + 4 * v19;
  v23 = *STACK[0x51E8];
  v24 = *v14;
  v25 = *(*v14 + (((v22 & 0xFFFFFFF8) - 133448597) & v23 & 0xFFFFFFFFFFFFFFF8));
  v26 = (__ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8) + v25) ^ v18;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  STACK[0x5760] = v21;
  v30 = (v28 + v27 - (((v28 + v27) << (v21 ^ 0xF6u)) & 0x98C7DBAD68695240) - 0x339C12294BCB56E0) ^ 0x46249C9A47B8EEA3;
  v31 = v30 ^ __ROR8__(v27, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) & 0xBD00E1915153A6ACLL) - (v32 + v31) - 0x5E8070C8A8A9D357) ^ 0x3146B4D4D3F03D9;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x1C031738E4A64104;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = *(STACK[0x57C0] + 8) + 4 * v19;
  v38 = (__ROR8__(v35, 8) + v36) ^ a2;
  v39 = *(v24 + (((v37 & 0xFFFFFFF8) - 133448597) & v23 & 0xFFFFFFF8));
  v40 = v38 ^ __ROR8__(v36, 61);
  v41 = (__ROR8__(v37 & 0xFFFFFFFFFFFFFFF8, 8) + v39) ^ v18;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v38, 8);
  v44 = (__ROR8__(v41, 8) + v42) ^ 0x8A47714CF38C4783;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v12;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x1C031738E4A64104;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ a2;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ a3;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (v43 + v40 - ((2 * (v43 + v40)) & 0x49047ED44335C934) - 0x5B7DC095DE651B66) ^ 0xF673B72339423238;
  v56 = v55 ^ __ROR8__(v40, 61);
  v57 = (((2 * ((v54 + v53) ^ 0x79D3BCAE0BE23A60)) | 0x414159F878DB86DCLL) - ((v54 + v53) ^ 0x79D3BCAE0BE23A60) + 0x5F5F5303C3923C92) ^ 0xD253623CC679C3A1;
  v58 = __ROR8__(v55, 8);
  v59 = HIDWORD(v15) + STACK[0x57A0] * ((((__ROR8__(v57, 8) + (v57 ^ __ROR8__(v53, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * (v37 & 7u))) ^ *v37);
  v60 = (((v58 + v56) & 0x9A83AF1AADF6CD8FLL ^ 0x202A9008C044D03) + ((v58 + v56) & a7 ^ 0x158404502010241) - 1) ^ 0x87A9B2B7FF375ECLL;
  v61 = *(v24 + ((((v22 - 4) & 0xCB299BD0) + ((v22 - 4) & 0x34D66428 | 0xCB299BD0) + 753016984) & v23));
  v62 = (__ROR8__((v22 - 4) & 0xFFFFFFFFFFFFFFF8, 8) + v61) ^ v18;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (a8 - ((v64 + v63) | a8) + ((v64 + v63) | v8)) ^ v9;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ v12;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v16 - ((v69 + v68) | v16) + ((v69 + v68) | a6)) ^ v17;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ a2;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ a3;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xB20726EF1F63AAFLL;
  v77 = __ROR8__(v76, 8);
  v78 = __ROR8__(v75, 61);
  v79 = STACK[0x57B0];
  *(v22 - 4) = (v59 + ((((__ROR8__(v60, 8) + (v60 ^ __ROR8__(v56, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * (v22 & 7u))) ^ *v22) + HIDWORD(v20)) ^ (((v77 + (v76 ^ v78) - (v11 & (2 * (v77 + (v76 ^ v78)))) - 0x45079A6554D9FADALL) ^ v10) >> (8 * ((v22 - 4) & 7)));
  return (*(STACK[0x57D8] + 8 * ((16607 * (v19 + 1 == v79)) ^ LODWORD(STACK[0x5770]))))(17569);
}

void *sub_100377618@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0xB9A0] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * (((a1 + 18638) ^ 0x544B) + a1)))(&STACK[0x5E60]);
}

uint64_t sub_1003776E0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 + 324)))(v2);
}

uint64_t sub_100377760(void *a1)
{
  v1 = STACK[0x57D8];
  v2 = *(STACK[0x57D8] + 8 * LODWORD(STACK[0x41F4]));
  a1[31] = *(STACK[0x4D10] + 24) + 16 * a1[424];
  a1[32] = 0xD38CBDD3ACAFF84ALL;
  a1[30] = v2;
  return (*(v1 + 8 * (STACK[0x51B8] + 8829)))();
}

uint64_t sub_1003777F8@<X0>(uint64_t a1@<X8>)
{
  *&STACK[0x5630] = v4;
  *&STACK[0x5640] = v6;
  *&STACK[0x5650] = v14;
  *&STACK[0x5660] = v13;
  *&STACK[0x5670] = v12;
  *&STACK[0x5680] = v11;
  *&STACK[0x56C0] = v7;
  *&STACK[0x56D0] = v10;
  *&STACK[0x56E0] = v9;
  *&STACK[0x56F0] = v8;
  *&STACK[0x5700] = v5;
  return (*(STACK[0x57D8] + 8 * v3))(a1 + v2, v1 + v2);
}

uint64_t sub_100377A14()
{
  LODWORD(STACK[0xB25C]) = v1;
  v4 = STACK[0x2618];
  LODWORD(STACK[0x1D4C8]) = ((v0 + 228493951) ^ 0xDEB) - STACK[0x2618];
  STACK[0x1D4D8] = v2 + v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4E0]) = v4 + v0 + 228493951 + 4;
  LODWORD(STACK[0x1D4D4]) = (v0 + 228493951) ^ v4;
  STACK[0x1D4C0] = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v0 + 1451493860;
  v5 = v0 ^ 0x2462;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_100377C30(uint64_t a1)
{
  v3 = *(STACK[0xA930] - 0x683CBC57EAB92A3ELL);
  STACK[0x7858] = 0;
  STACK[0xB678] = 0;
  return (*(STACK[0x57D8] + 8 * (((v3 == a1) * (v1 - 24372 + ((v1 - 22053) | v2))) ^ (v1 - 3534))))();
}

uint64_t sub_100377D04@<X0>(int a1@<W2>, int a2@<W8>)
{
  v8 = *(STACK[0x57C0] + ((a2 - 14440) | 0x2504) + 8686502 + a1 * v7 - 5816 * (((((((a2 - 14440) | 0x2504u) + 8686502 + a1 * v7) >> 3) * v6) >> 32) >> 7));
  v9 = 6157 * (((v8 ^ 0x48625D19) - 1214405913) ^ ((v8 ^ 0xF1A80814) + 240646124) ^ ((v8 ^ 0xB9CA55CA) + 1177922102)) + 59753685;
  v10 = *(v2 + 4 * (v9 - (((v9 * v5) >> 32) >> 12) * v4));
  v11 = BYTE1(v10) ^ 0xB6;
  v12 = (((HIBYTE(v10) ^ 0xF21F3843) - 1753322992) ^ ((HIBYTE(v10) ^ 0xEAC1D2C6) - 1885306741) ^ ((HIBYTE(v10) ^ 0x18DEEAED) + 2109716642)) * v7 + 406965706;
  v13 = (((v10 ^ 0x67857311) + 50118439) ^ ((v10 ^ 0xEDBE9F33) - 2000203003) ^ ((v10 ^ 0x8A3BECA8) - 280878944)) * v7 + 1227522391;
  v14 = *(STACK[0x57C0] + (BYTE2(v10) ^ 0x4F) * v7 + 6213569 - 5816 * (((11815591 * ((BYTE2(v10) ^ 0x4Fu) * v7 + 6213569)) >> 32) >> 4));
  v15 = *(STACK[0x57C0] + v11 * v7 + 6213569 - 5816 * (((11815591 * (v11 * v7 + 6213569)) >> 32) >> 4));
  v16 = ((((v14 << 8) ^ 0xFF2840) & ((*(STACK[0x57C0] + v12 - 5816 * ((((v12 >> 3) * v6) >> 32) >> 7)) << 16) ^ 0xDCEF40) & 0xFFFFEFFF | (((v14 >> 4) & 1) << 12)) ^ 0x28947B) & (v15 ^ (v3 + 156));
  v17 = *(STACK[0x57C0] + v13 - 5816 * ((((v13 >> 3) * v6) >> 32) >> 7));
  *(v2 + 4 * (6157 * a1 + 9458650 - ((((6157 * a1 + 9458650) * v5) >> 32) >> 12) * v4)) = ((((v16 ^ v15 & 0xC4) << 8) ^ 0x51996371) & (v17 ^ 0xFFFFFF38) | v17 & 0x8E) ^ 0xAAD2A7D;
  return (*(STACK[0x57D8] + 8 * (((2 * (a1 == 255)) | (16 * (a1 == 255))) ^ a2)))();
}

uint64_t sub_100378064@<X0>(int a1@<W8>)
{
  STACK[0xE100] = v1;
  STACK[0x7ED8] += (a1 - 200170903) & 0xBEE37F5 ^ 0x3295;
  return (*(STACK[0x57D8] + 8 * ((v1 != 0) | ((v1 != 0) << 6) | (a1 - 1580))))();
}

uint64_t sub_1003780CC@<X0>(int a1@<W8>)
{
  v1 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = (LODWORD(STACK[0xBF08]) ^ LODWORD(STACK[0x1454])) - 134262830 + (((a1 ^ 0x4BF9) - 17723096) & (2 * LODWORD(STACK[0xBF08])));
  STACK[0x6230] = v1;
  LODWORD(STACK[0x6974]) = -1318776753;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_100378150@<X0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  STACK[0x8C18] = v7;
  STACK[0x6290] = v9;
  STACK[0xC5D0] = v10;
  STACK[0xAC90] = v11;
  *(a5 + 348) = v12;
  LODWORD(STACK[0x8F64]) = v13;
  STACK[0xC088] = v14;
  *(a6 + 3924) = a3;
  STACK[0xAD30] = a1;
  LODWORD(STACK[0x9138]) = a4;
  *(v15 + 1244) = a2;
  STACK[0x80C8] = &STACK[0x10120] + a7;
  STACK[0x7ED8] = a7 + 80;
  STACK[0x8C40] = 0x1FF90131E266DB89;
  STACK[0x6D98] = 0x1FF90131E266DB89;
  return (*(STACK[0x57D8] + 8 * (((a2 != (((v8 + 71) & 0xFE) + 65)) * (((v8 - 247) | 0x100) - 11402)) ^ v8)))();
}

uint64_t sub_100378258(unint64_t a1)
{
  STACK[0xDCD0] = a1;
  LODWORD(STACK[0xDCCC]) = -143113071;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x1844)))();
}

uint64_t sub_1003782F8()
{
  v2 = STACK[0x97F0];
  STACK[0x6BD8] = *(STACK[0x97F0] + 96);
  LODWORD(STACK[0x75F8]) = *(v2 + 104);
  STACK[0x6F78] = *(v2 + 112);
  return (*(STACK[0x57D8] + 8 * (((v1 == v0 - 143135161) * ((v0 + 9380) ^ 0x5A80)) ^ v0)))();
}

uint64_t sub_100378378()
{
  v0 = (STACK[0x51B8] - 891024007) & 0x351BDF35;
  v1 = STACK[0x51B8] - 143135685;
  v2 = STACK[0xE004];
  LODWORD(STACK[0xD3DC]) = LODWORD(STACK[0xE004]) + ((STACK[0x51B8] - 22486) | 0xA18) - 2692;
  v3 = v2 + 1253958449;
  v4 = (((LODWORD(STACK[0xDFE4]) ^ (v0 + 684672712)) - 684690381) ^ ((LODWORD(STACK[0xDFE4]) ^ 0x7C865131) - 2089177393) ^ ((LODWORD(STACK[0xDFE4]) ^ 0x86555A68) + 2041226648)) + 484074417;
  v5 = v2 > 0xB5421CCE;
  v6 = v5 ^ (v4 < 0x4ABDE31D);
  v7 = v3 > v4;
  if (!v6)
  {
    v5 = v7;
  }

  if (v5)
  {
    v8 = -143113107;
  }

  else
  {
    v8 = STACK[0xE00C];
  }

  LODWORD(STACK[0xE010]) = v8;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0xF7785F70 ^ (12532 * (((v8 - v1) | (v1 - v8)) >= 0)))))();
}

uint64_t sub_10037852C()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x7144];
  LODWORD(STACK[0x9094]) = -32197411;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1003786F8()
{
  v1 = v0 ^ 0x7F844F4;
  v2 = STACK[0x5570];
  if ((STACK[0x53A8] & 2) != 0)
  {
    v2 = STACK[0x5230];
  }

  LODWORD(STACK[0x5450]) = v2;
  LODWORD(STACK[0x5790]) = LODWORD(STACK[0x5220]) ^ LODWORD(STACK[0x5310]);
  LODWORD(STACK[0x5310]) = (v1 - 471617302) ^ LODWORD(STACK[0x53E8]);
  return (*(STACK[0x57D8] + 8 * (v1 ^ (22277 * (v0 > 0x37124004)))))();
}

uint64_t sub_100378B2C@<X0>(int a1@<W8>)
{
  v1 = 6 * (a1 ^ 0x595E);
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x241B)))();
  return (*(v2 + 8 * (v1 - 11122)))(v3);
}

uint64_t sub_100378D58()
{
  v1 = STACK[0x4E18];
  v2 = *(&off_101353600 + v0 - 201688874);
  v3 = *(v1 + 10) ^ 0xB0 ^ *(v2 + (*(v1 + 10) ^ 0x47));
  v4 = v2;
  v5 = *(STACK[0x4E18] + 13);
  v6 = (*(v1 + 14) ^ *(v2 + (*(v1 + 14) ^ 0xCALL)) ^ 0xFC) << 8;
  v7 = *(*(&off_101353600 + (v0 ^ 0xC058479)) + (v5 ^ 0x93) - 12);
  v8 = *(&off_101353600 + (v0 ^ 0xC058479)) - 12;
  v9 = *(STACK[0x4E18] + 5) ^ 0x2A;
  LODWORD(STACK[0x57C0]) = v0 - 201676045;
  LODWORD(STACK[0x57A0]) = v0 - 201688907;
  LODWORD(v5) = v6 | ((v5 ^ 0x33 ^ v7) << 16) | ((*(v1 + 12) ^ 0xCB ^ *(v4 + (*(v1 + 12) ^ 0xC3))) << 24);
  v10 = *(&off_101353600 + v0 - 201688156) - 12;
  v11 = ((v10[((v0 - 13) ^ v9)] ^ 0x67) << 16) | ((v10[*(v1 + 4) ^ 0xA5] ^ 0x24) << 24);
  v12 = *(&off_101353600 + v0 - 201688729) - 8;
  v13 = (*v1 ^ *(v4 + (*v1 ^ 0xDCLL)) ^ 0x7E) << 24;
  v14 = v12[*(v1 + 9) ^ 0x3FLL];
  v15 = v12[*(v1 + 11) ^ 0xC6] | (v3 << 8) | ((*(v1 + 8) ^ v8[*(v1 + 8) ^ 0x3DLL] ^ 0x78) << 24);
  v16 = STACK[0xD670];
  v17 = *(STACK[0xD670] + 15);
  STACK[0x5680] = v17;
  v18 = v14 ^ 0x15;
  LOBYTE(v14) = v8[v17 ^ 0xBB] ^ v17;
  v19 = *(v16 + 2);
  STACK[0x5580] = v19;
  LODWORD(v5) = v5 & 0xFFFFFF00 | v14;
  v20 = v8;
  v21 = v15 | (v18 << 16);
  v22 = v19 ^ 0xA0 ^ v8[v19 ^ 0xB7];
  v23 = *(v16 + 6);
  STACK[0x56E0] = v23;
  v24 = v13 | (v22 << 8);
  v25 = v10[v23 ^ 0x53];
  v26 = *(v16 + 7);
  STACK[0x5700] = v26;
  v27 = v26 ^ 0x26 ^ -(v26 ^ 0x26) ^ (65 - (v26 ^ 0x67));
  LODWORD(v26) = v11 | ((v25 ^ 6) << 8);
  STACK[0x5760] = 2 * v16;
  v28 = v16 + 0x5D562B132970EF00 - ((2 * v16) & 0xBAAC562652E1DE4CLL) + 38;
  v29 = (((v28 & 0xFFFFFFF8 ^ 0x193FC342) - 1192854553) ^ ((v28 & 0xFFFFFFF8 ^ 0xC3FEC049) + 1646754030) ^ ((v28 & 0xFFFFFFF8 ^ 0xF3B1EC2B) + 1382569104)) - 1433658982;
  LODWORD(v19) = (v29 ^ 0x2E87F081) & (2 * (v29 & 0xAED7F8D0)) ^ v29 & 0xAED7F8D0;
  v30 = ((2 * (v29 ^ 0x3222B101)) ^ 0x39EA93A2) & (v29 ^ 0x3222B101) ^ (2 * (v29 ^ 0x3222B101)) & 0x9CF549D0;
  LODWORD(v19) = (v30 ^ 0x18E00991) & (4 * v19) ^ v19;
  v31 = ((4 * (v30 ^ 0x84154851)) ^ 0x73D52744) & (v30 ^ 0x84154851) ^ (4 * (v30 ^ 0x84154851)) & 0x9CF549D0;
  LODWORD(v19) = (v31 ^ 0x10D50140) & (16 * v19) ^ v19;
  v32 = ((16 * (v31 ^ 0x8C204891)) ^ 0xCF549D10) & (v31 ^ 0x8C204891) ^ (16 * (v31 ^ 0x8C204891)) & 0x9CF549D0;
  LODWORD(v19) = v19 ^ 0x9CF549D1 ^ (v32 ^ 0x8C5409C1) & (v19 << 8);
  v33 = *(v16 + 1);
  STACK[0x5470] = v33;
  v34 = v26 | v12[v27 + 65] ^ 0xD2;
  v35 = v24 | ((v33 ^ 0xA6 ^ *(v20 + (v33 ^ 0x45))) << 16);
  v36 = *(v16 + 3);
  STACK[0x5480] = v36;
  v37 = v36 ^ *(v4 + (v36 ^ 0x20)) ^ 4;
  v38 = (v35 | v37) - 386179719 - 2 * ((v35 | v37) & 0x68FB6CBE ^ v37 & 0x1A);
  *(&v39 + 1) = v28 & 0xFFFFFFF8 ^ 0x20;
  *&v39 = v28 ^ 0x5D562B132970EF00;
  v40 = *STACK[0x51E8];
  v41 = *STACK[0x51E8];
  STACK[0x5340] = v40;
  STACK[0x55D0] = v40 & 0xFFFFFFF8;
  v42 = *(*STACK[0x51F0] + (v40 & 0xFFFFFFF8 & (v29 ^ (2 * ((v19 << 16) & 0x1CF50000 ^ v19 ^ ((v19 << 16) ^ 0x49D10000) & (((v32 ^ 0x10A140C1) << 8) & 0x1CF50000 ^ 0x8B40000 ^ (((v32 ^ 0x10A140C1) << 8) ^ 0x75490000) & (v32 ^ 0x10A140C1)))) ^ 0x869F6B70)));
  v43 = *STACK[0x51F0];
  v44 = v42 + (v39 >> 8);
  *&v39 = __ROR8__(v42, 61);
  v45 = (v39 - ((2 * v39) & 0xFA232918B3F0357ELL) + 0x7D11948C59F81ABFLL) ^ v44;
  *&v39 = __ROR8__(v44 ^ 0xF00E6B4B707138E4, 8);
  v46 = v45 ^ 0x30F7C94855178370;
  v47 = (((v39 ^ 0xB1FAA392A7059BALL) + 0x2ED607A3D0DF0B2FLL) ^ ((v39 ^ 0x8A0592D946B98F7ALL) - 0x5033C0BC43E92211) ^ ((v39 ^ 0xB847D4F25B254719) - 0x627186975E75EA72)) - 0x3C901CD03D344B3CLL + (((v45 ^ 0xCEDEDB9A327D7194) + 0x1D6ED2D98950D1CLL) ^ ((v45 ^ 0xE1639A326DFD41F2) + 0x2E6BAC85C7153D7ELL) ^ ((v45 ^ 0xFF4EAC589A98CB04) + 0x30469AEF3070B78CLL));
  *&v39 = __ROR8__(v46, 61);
  v48 = v47 ^ v39;
  v49 = ((((v47 << 56) ^ 0xBDCDFC3CF89AB77ALL) + 0x3994B76B2F69CD3) ^ (((v47 << 56) ^ 0xF6EAEF974F4E8141) + 0x48BE58DD0522AAEALL) ^ (((v47 << 56) ^ 0x4B2713ABB7D4363BLL) - 0xA8C5B1E0247E26CLL)) + ((((v47 >> 8) ^ 0x3CB1CF10E39EBCD5) + 0x7718C9FE12860020) ^ (((v47 >> 8) ^ 0x94225A8DBD912A3BLL) - 0x2074A39CB376690ELL) ^ (((v47 >> 8) ^ 0xA89A60E5E12176D1) - 0x1CCC99F4EFC635E4)) + (((v47 ^ v39 ^ 0xDD68CB4184CE6696) + 0x3305C7B0A799094) ^ ((v47 ^ v39 ^ 0x483808A49AC3F99FLL) - 0x699F6061EB8BF065) ^ ((v47 ^ v39 ^ 0x9C849E9EB096609ELL) + 0x42DC09A43E21969CLL)) + 0x1E7D8ADE47316DCELL;
  v50 = (v49 ^ 0x68E9606386F96B18) & ((8 * v48) ^ 0x4EA2EBDD74DFFCB8) ^ (8 * v48) & 0x501EFAE87B52B528;
  v51 = v49 ^ 0x777BF7BC73850F3CLL;
  v52 = ((((8 * v48) ^ 0xBF1BDCE823A5B892) - 0x52DB63CDDF9160BFLL) ^ (((8 * v48) ^ 0x5BB2252918920700) + 0x498D65F31B5920D3) ^ (((8 * v48) ^ 0xAA0B121C4FE8432ALL) - 0x47CBAD39B3DC9B07)) + (((v49 ^ 0xFC87710AAD4131C2) + 0x74037949213BC102) ^ ((v49 ^ 0x669D87FA61B944EDLL) - 0x11E67046123C4BD1) ^ ((v49 ^ 0x22ED6C7B3153AB1FLL) - 0x55969BC742D6A423)) - ((((2 * v50) ^ 0x96E5143A13D424C9) - 0x239118CE59AB60D1) ^ (((2 * v50) ^ 0xF21F2D49F4AAE7B0) - 0x476B21BDBED5A3A8) ^ (((2 * v50) ^ 0xE4FFECE307DBAB29) - 0x518BE0174DA4EF31)) + 0x3D7CE8CB6C3FC959;
  *&v39 = __ROR8__(v51, 8);
  v53 = v52 ^ (v48 >> 61);
  v54 = (((v39 ^ 0x731583A62EBD3E4) - 0x440A193854315EDLL) ^ ((v39 ^ 0xE50B5D7AABF45853) + 0x19855B2CB3A361A6) ^ ((v39 ^ 0xEEF5892DFE91A566) + 0x127B8F7BE6C69C91)) + 0x4A0D26AB1B4C2343 + (((v53 ^ 0xDC7182CF37E72909) + 0x19C0CDD6833DEC9ELL) ^ ((v53 ^ 0x9F1759A7E3448500) + 0x5AA616BE579E4095) ^ ((v53 ^ 0x4366DB68D4A3AC09) - 0x79286B8E9F869662));
  *(&v39 + 1) = v53;
  *&v39 = v52;
  v55 = v54 ^ 0xAC37B0F0FAB7D0B8 ^ (v39 >> 61);
  *&v39 = __ROR8__(v54 ^ 0xAC37B0F0FAB7D0B8, 8);
  v56 = v55 ^ 0x7EA72151C75A810ALL;
  *&v39 = __ROR8__((((v55 ^ 0x13E62B0B68DEC8F1) - 0x6D410A5AAF8449FBLL) ^ ((v55 ^ 0xDB5C4168A7B5EB2DLL) + 0x5A049FC69F1095D9) ^ ((v55 ^ 0x4ADFF827A8B48AB5) - 0x3478D9766FEE0BBFLL)) - 0x326E964EE853AB2BLL + (((v39 ^ 0x4B6F019011C2C24ELL) + 0xDDC2D66DD7DCE6BLL) ^ ((v39 ^ 0x26144DF94405E11ELL) + 0x60A7610F88BAED3BLL) ^ ((v39 ^ 0x4F929FB11A0FCF9) + 0x424A050DDD1FF0DELL)), 16);
  v57 = __ROR8__((v39 - ((2 * v39) & 0x530699B5B1781C34) - 0x567CB3252743F1E6) ^ 0x425EDC4C2D75A4FALL, 48) ^ 0xFFF0B85274F983F6;
  v58 = v57 ^ __ROR8__(v56, 61);
  *&v39 = __ROR8__(v57, 8);
  v59 = (((v58 ^ 0x5ECC3AA9260C517BLL) + 0x7CC2D6917DB4F06FLL) ^ ((v58 ^ 0x3366B9327938CF7ALL) + 0x1168550A22806E70) ^ ((v58 ^ 0x157452A2E69FCBE6) + 0x377ABE9ABD276AF4)) + (((v39 ^ 0x38187086025D118ELL) + 0x6CF39F778425A589) ^ ((v39 ^ 0xACAA13F1A0FDE578) - 0x7BE03FFD97AAE81) ^ ((v39 ^ 0x6C2CA83E361D76E0) + 0x38C747CFB065C2E7)) - 0x74561B9F4D92B04;
  *&v39 = __ROR8__(v58 ^ 0xDDF113C7A4475EEALL, 61);
  v60 = v59 ^ v39 ^ 0xE82677AAFC9FF975;
  *(&v39 + 1) = v59 ^ v39 ^ 0x82677AAFC9FF975;
  *&v39 = v59 ^ ~v39;
  v61 = v39 >> 61;
  *&v39 = __ROR8__(v59 ^ 0xC158605A13FFA118, 8);
  v62 = ((v39 + v60) ^ 0x4267924AAAF3CDACLL ^ v61) + (((v39 + v60) ^ 0x4267924AAAF3CDACLL) << 56) + (((v39 + v60) ^ 0x4267924AAAF3CDACLL) >> 8);
  LODWORD(STACK[0x5740]) = *(v16 + 8);
  STACK[0x55F0] = v16 + 8;
  v63 = 2 * (v16 + 8);
  STACK[0x5630] = v63;
  v64 = v16 + 0x37D7FFE0C5B9A708 - (v63 & 0x6FAFFFC18B734E18) + 12;
  LODWORD(v63) = (v16 - 977688824 - (v63 & 0x8B734E18) + 12) & 0xFFFFFFF8;
  LODWORD(v56) = (((v63 ^ 0xE3B8C6A5) - 1459282112) ^ ((v63 ^ 0xEC3442B3) - 1500931286) ^ ((v63 ^ 0xCA35231E) - 2138506619)) - 1723651387;
  *(&v39 + 1) = v63 ^ 8;
  *&v39 = v64 ^ 0x37D7FFE0C5B9A700;
  v65 = v39 >> 8;
  STACK[0x5420] = v43;
  v66 = *(v43 + (v40 & 0xFFFFFFF8 & (v56 ^ ((v56 ^ 0xA8835071) + 289837288) ^ ((v56 ^ 0xFDF25D69) + 1144495616) ^ ((v56 ^ 0xE8B4CD8E) + 1366363417) ^ ((v56 ^ 0xFBFFFFFF) + 1111113578) ^ 0x463A3F68)));
  *&v39 = __ROR8__(v66, 61);
  v67 = v66 + v65;
  v68 = (v39 - ((2 * v39) & 0x9D1850C8A781E7CCLL) + 0x4E8C286453C0F3E6) ^ v67;
  *&v39 = __ROR8__(v67 ^ 0x38D8ABF0177573D0, 8);
  v69 = (((v39 ^ 0xBF0C627233B2794FLL) + 0x719E779F4F419D91) ^ ((v39 ^ 0xD611DE7D61E275FDLL) + 0x1883CB901D119123) ^ ((v39 ^ 0x648886DDDEDB9920) - 0x55E56CCF5DD78200)) - 0x5DF5203B62B7CB49 + (((v68 ^ 0x7FA17F438FD847C2) + 0x622DEA032C70C04) ^ ((v68 ^ 0xD63717DFB1F781D4) - 0x504B49C3F31735EALL) ^ ((v68 ^ 0x4AF83984F10FD42DLL) + 0x337B98674C109FEDLL));
  v70 = v69 ^ __ROR8__(v68 ^ 0x867C5E1C42E0B43ELL, 61);
  *&v39 = __ROR8__(v69, 8);
  v71 = (((v70 ^ 0x2906671C40EFEF07) - 0x5DD073AE241A3522) ^ ((v70 ^ 0x1B6E59536668555DLL) - 0x6FB84DE1029D8F78) ^ ((v70 ^ 0x130D3ED46662B571) - 0x67DB2A6602976F54)) + 0x57E6FA701272ADLL + ((((v39 - ((2 * v39) & 0xC005D2094794840) - 0x79FFD16FB5C35BE0) ^ 0x420913F8A8707BB3) - 0x6EA41AC11163A233) ^ (((v39 - ((2 * v39) & 0xC005D2094794840) - 0x79FFD16FB5C35BE0) ^ 0x9B2644F23DEF321ELL) + 0x4874B2347B031462) ^ (((v39 - ((2 * v39) & 0xC005D2094794840) - 0x79FFD16FB5C35BE0) ^ 0x5F268CE2608D0DB2) - 0x738B85DBD99ED432));
  v72 = v71 ^ 0x8F1049766BC0DB1FLL ^ __ROR8__(((v70 >> 53) & 0x100 | ((((v70 >> 53) ^ 0xB86F175F227EEAE8) & ((v70 << 11) ^ 0x96EBA5581B87A2FFLL) | (v70 << 11) & 0x4790E8A0DD811000) ^ 0xB2BB77B718518C08) & ((v70 >> 53) & 0x700 ^ 0xFFFFFFFFFFFFFEFFLL)) ^ 0x6F7E47252CD83FBBLL, 8);
  v73 = v72 ^ 0xAF24590223DAB41CLL;
  v74 = ((((v71 >> 8) ^ 0xD8356AAF4BB4003DLL) - 0x3C35B95610308115) ^ (((v71 >> 8) ^ 0xBC889B36A2090950) - 0x588848CFF98D8878) ^ (((v71 >> 8) ^ 0x640506036240A2B3) + 0x7FFA2A05C63BDC65)) + (((((v71 ^ 0x8F1049766BC0DB1FLL) << 56) ^ 0x8026531E7FFDA4F9) - 0x60BB97B888D678A4) ^ ((((v71 ^ 0x8F1049766BC0DB1FLL) << 56) ^ 0xEFA7ED29289E1599) - 0xF3A298FDFB5C9C4) ^ ((((v71 ^ 0x8F1049766BC0DB1FLL) << 56) ^ 0x4081BE375763B160) + 0x5FE3856E5FB792C3)) + (((v72 ^ 0x2EC15140BE927C18) + 0x7E1AF7BD62B737FCLL) ^ ((v72 ^ 0x5727B2D526363FLL) + 0x508C814F09037DDDLL) ^ ((v72 ^ 0x49140FE030C1B940) + 0x19CFA91DECE4F2A4)) + 0x7CFC091B40544ECELL;
  STACK[0x5338] = v16;
  STACK[0x5710] = v16 + 16;
  v75 = 2 * (v16 + 16);
  STACK[0x5750] = v75;
  v76 = v16 + 0x7614B3BABEA2CF10 - (v75 & 0xEC2967757D459EBALL) + 93;
  LODWORD(v75) = (v16 - 1096626416 - (v75 & 0x7D459EBA) + 93) & 0xFFFFFFF8;
  LODWORD(v51) = (((v75 ^ 0xDE0499FA) - 667386259) ^ ((v75 ^ 0x16393F1) + 123696232) ^ ((v75 ^ 0x61C5C553) + 1744380614)) + 1863701378;
  *(&v39 + 1) = v75 ^ 0x58;
  *&v39 = v76 ^ 0x7614B3BABEA2CF00;
  v77 = v74 ^ __ROR8__(v73, 61) ^ 0x6B6322375812420FLL;
  v78 = *(v43 + ((v51 ^ ((v51 ^ 0x398DD0F) - 1178488685) ^ ((v51 ^ 0x4DCFE55) - 1098542135) ^ ((v51 ^ 0x3C1D46CF) - 2042352813) ^ ((v51 ^ 0x7EFFF7F7) - 995714453) ^ 0x45A69260) & 0xFFFFFFF8 & v41)) + (v39 >> 8);
  *&v39 = __ROR8__(*(v43 + ((v51 ^ ((v51 ^ 0x398DD0F) - 1178488685) ^ ((v51 ^ 0x4DCFE55) - 1098542135) ^ ((v51 ^ 0x3C1D46CF) - 2042352813) ^ ((v51 ^ 0x7EFFF7F7) - 995714453) ^ 0x45A69260) & 0xFFFFFFF8 & v41)), 61);
  v79 = (v39 - ((2 * v39) & 0xCDDC126EE1ED4386) + 0x66EE093770F6A1C3) ^ v78;
  *&v39 = __ROR8__(v78 ^ 0x31A16F1B891321A9, 8);
  v80 = v79 ^ 0xEBF1DBCFE8173283;
  v81 = 2 * ((v79 ^ 0x4B0C704BEC16401ELL) & (v39 ^ 0x5042EE23419FC841) ^ v79 & 0x24DEAD35268A3B81);
  v82 = (((v80 ^ v39 ^ 0x6A67CF82912D522CLL) + 0x3AC68EE43C1B8E7ALL) ^ ((v80 ^ v39 ^ 0x61FD70C325CBB0B0) + 0x315C31A588FD6CE6) ^ ((v80 ^ v39 ^ 0x5FFB57D3D7F263C1) + 0xF5A16B57AC4BF95)) - 0xA598A6B7B75FEA6 + (((v81 ^ 0x55CCF5CC58A5D97FLL) + 0x504C55B8BDF278E4) ^ ((v81 ^ 0x1B8BABD9E9DCE550) + 0x1E0B0BAD0C8B44CDLL) ^ ((v81 ^ 0x4E5F1E17F97D3C2FLL) + 0x4BDFBE631C2A9DB4));
  v83 = v82 ^ __ROR8__(v80, 61);
  *&v39 = __ROR8__(v82, 8);
  v84 = (((v83 ^ 0x8EEEB2277FBC831ELL) - 0x1D8BCEC89CD4C702) ^ ((v83 ^ 0x4553BE4DE4E56E8ELL) + 0x29C93D5DF872D56ELL) ^ ((v83 ^ 0xC5A528F595B24679) - 0x56C0541A76DA0265)) + 0x13150C6727A7C69BLL + ((((v39 - ((2 * v39) & 0x62C5589AEFB5BF1CLL) + 0x3162AC4D77DADF8ELL) ^ 0x963DF0C83ADBD84FLL) + 0x2D3EE5F437F3CEA8) ^ (((v39 - ((2 * v39) & 0x62C5589AEFB5BF1CLL) + 0x3162AC4D77DADF8ELL) ^ 0x376680EB89C9F824) - 0x739A6A287B1E1133) ^ (((v39 - ((2 * v39) & 0x62C5589AEFB5BF1CLL) + 0x3162AC4D77DADF8ELL) ^ 0x903029167BE61FDALL) + 0x2B333C2A76CE0933));
  v85 = v84 ^ 0x9EF133B2769BFEC1;
  v86 = v84 ^ __ROR8__(v83, 61);
  *&v39 = __ROR8__(v85, 8);
  v87 = v86 ^ 0x26CD0395BDE8F7FALL;
  v88 = (((v86 ^ 0xFCC713B0B994225FLL) + 0x25F5EFDAFB832A5BLL) ^ ((v86 ^ 0x278D537F8321A711) - 0x14050EA3EC950EBLL) ^ ((v86 ^ 0x137CFEBCB0430436) - 0x35B1FD290DABF3CCLL)) + 0x76B58012315F8C08 + (((v39 ^ 0x1131B67A7F547A98) - 0x67AE72F8BC9E5F3ELL) ^ ((v39 ^ 0x80851C026AE841F5) + 0x9E5277F56DD9BADLL) ^ ((v39 ^ 0x6092ACD12C370B4DLL) - 0x160D6853EFFD2EEBLL));
  v89 = __ROR8__(v88 ^ 0x445A97C1024CC11ELL, 8);
  v90 = v88 ^ __ROR8__(v87, 61);
  v91 = v90 ^ 0x47C85D3EF2A2A6E6;
  v92 = (((v90 ^ 0x6420CCADF101F4BALL) - 0x23E8919303A3525CLL) ^ ((v90 ^ 0x71E60309D793FD4) - 0x40D63D0E6FDB9932) ^ ((v90 ^ 0x3AB1611849E306A8) - 0x7D793C26BB41A04ELL)) - 0x4448D5A495FB21ADLL + (((v89 ^ 0x4DFCB2B06654298CLL) - 0x1FF9239A81007E07) ^ ((v89 ^ 0x6D3E2B85897AD0D1) - 0x3F3BBAAF6E2E875ALL) ^ ((v89 ^ 0xEFA891809AB1DDE5) + 0x4252FF55821A7592));
  v93 = (__ROR8__(v74 ^ 0x2E5222B49D6879D1, 8) + v77) ^ 0xF1AD040F639B7ED3;
  v94 = v93 ^ __ROR8__(v77, 61);
  v95 = (v94 + __ROR8__(v93, 8)) ^ 0xC158605A13FFA118;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (v96 + __ROR8__(v95, 8)) ^ 0x4267924AAAF3CDACLL;
  v98 = v92 ^ __ROR8__(v91, 61);
  *(&v39 + 1) = v98 ^ 0x39181D1DA5027D3;
  *&v39 = v98;
  v99 = (v97 ^ __ROR8__(v96, 61)) + __ROR8__(v97, 8);
  v100 = (__ROR8__(v92 ^ 0xF1AD040F639B7ED3, 8) + (v98 ^ 0x39181D1DA5027D3)) ^ 0xC158605A13FFA118;
  v101 = v100 ^ (v39 >> 61);
  v102 = __ROR8__(v100, 8) + v101;
  v103 = v102 ^ 0x267924AAAF3CDACLL ^ __ROR8__(v101, 61);
  *&v39 = __ROR8__(v102 ^ 0x4267924AAAF3CDACLL, 8);
  v104 = 8 * (v16 & 7);
  v105 = (v62 ^ 0xBF8CA48E12B6B115) >> v104;
  v99 ^= 0xBF8CA48E12B6B115;
  STACK[0x5490] = v104;
  STACK[0x5520] = v104 ^ 0x3C;
  v106 = v105 + 16 * (v99 << (v104 ^ 0x3Cu));
  LODWORD(v98) = ((v12[BYTE1(v106) ^ 0x3ELL] ^ 0x6A) << 16) | ((*(v4 + (v105 ^ 0x32)) ^ v105 ^ 0x8B) << 24);
  LODWORD(v85) = v12[BYTE2(v106) ^ 0xB9] ^ 0xD0;
  LODWORD(v91) = v12[((v105 + 16 * (v99 << (v104 ^ 0x3C))) >> 24) ^ 0x72];
  STACK[0x5198] = v12;
  v107 = ((v98 | (v85 << 8) | v91 ^ 3) - ((2 * (v98 | (v85 << 8) | v91 ^ 3)) & 0x310E25FE) + 411505407) ^ (v38 + 3883);
  LODWORD(STACK[0x5640]) = v107;
  v108 = ((*(v20 + (BYTE4(v106) ^ 0xE5)) ^ HIDWORD(v106) ^ 0x4E) << 24) | ((*(v4 + (BYTE5(v106) ^ 0xA2)) ^ BYTE5(v106) ^ 0x4A) << 16);
  LODWORD(v85) = *(v20 + (BYTE6(v106) ^ 0xDELL));
  STACK[0x51A8] = v20;
  LODWORD(v106) = v108 | ((v85 ^ BYTE6(v106) ^ 0x68) << 8) | v10[HIBYTE(v106) ^ 0x94] ^ 0x42;
  LODWORD(v43) = v106 + v34 - 2 * (v106 & v34);
  v109 = v99 >> v104;
  v110 = v109 + 16 * (((v39 + v103) ^ 0xF8CA48E12B6B115) << (v104 ^ 0x3Cu));
  LODWORD(v109) = ((v12[v109 ^ 0xFLL] ^ 0xC) << 24) | ((*(v4 + (BYTE1(v110) ^ 0x1ELL)) ^ BYTE1(v110) ^ 0x51) << 16);
  STACK[0x51A0] = v10;
  LODWORD(v91) = (v109 & 0xFFFFFF00 | ((v10[BYTE2(v110) ^ 0xDFLL] ^ 0xB8) << 8) | *(v4 + (BYTE3(v110) ^ 0x1DLL)) ^ BYTE3(v110) ^ 0x17) ^ v21;
  LODWORD(STACK[0x5780]) = v91;
  v111 = *(v4 + (BYTE4(v110) ^ 0x7ELL));
  STACK[0x51B0] = v4;
  LODWORD(v98) = (((v10[BYTE5(v110) ^ 0xE0] ^ 0x73) << 16) | ((v111 ^ HIDWORD(v110) ^ 0xAE) << 24) | ((*(v4 + (BYTE6(v110) ^ 0x1BLL)) ^ BYTE6(v110) ^ 0xFD) << 8) | *(v20 + (HIBYTE(v110) ^ 0xBF)) ^ HIBYTE(v110) ^ 0xE9) ^ v5;
  v112 = v0;
  v113 = *(&off_101353600 + (v0 ^ 0xC058668)) - 12;
  LODWORD(v110) = *&v113[4 * (BYTE2(v98) ^ 0x63)];
  v114 = *(&off_101353600 + SLODWORD(STACK[0x57A0])) - 12;
  LODWORD(v5) = *&v114[4 * (BYTE3(v98) ^ 0xD8)] ^ ((BYTE3(v98) ^ 0xBE) - (BYTE3(v98) ^ 0x448CE7AC)) ^ 0xE71397;
  v115 = *&v113[4 * (BYTE1(v98) ^ 0x63)];
  LODWORD(STACK[0x5720]) = v98;
  LODWORD(v109) = *&v113[4 * (v98 ^ 0x58)];
  LODWORD(v110) = v109 ^ ((v109 ^ 0xE6C37DBA) >> 4) ^ ((v109 ^ 0xE6C37DBA) >> 2) ^ __ROR4__(v110 ^ 0x65B01801 ^ ((v110 ^ 0xE6C37DBA) >> 4) ^ ((v110 ^ 0xE6C37DBA) >> 2), 16) ^ __ROR4__(v115 ^ 0x65B01801 ^ ((v115 ^ 0xE6C37DBA) >> 4) ^ ((v115 ^ 0xE6C37DBA) >> 2), 24);
  LODWORD(STACK[0x56D0]) = v43;
  v116 = v43 - 1863726549 - ((2 * v43) & 0x21D39456);
  LODWORD(STACK[0x5660]) = v98 ^ 0xCC15870;
  LODWORD(v5) = v110 ^ __ROR4__(v5, 8) ^ v107;
  LODWORD(STACK[0x5730]) = v5;
  LODWORD(v110) = v116 ^ v5 ^ 0x8656C9CA;
  LODWORD(STACK[0x5620]) = v110;
  v117 = v110 ^ v91 ^ v98 ^ 0xCC15870;
  v118 = v112;
  v119 = *(&off_101353600 + (v112 ^ 0xC0582A5)) - 4;
  LODWORD(v109) = *&v119[4 * (HIBYTE(v117) ^ 0x31)];
  LODWORD(v1) = *&v119[4 * (((v117 ^ 0x25C88ED0) >> 16) ^ 0xBB)];
  v120 = *&v119[4 * (((v117 ^ 0x8ED0) >> 8) ^ 0x72)];
  LODWORD(v85) = v120 ^ 0xFC4C5E10 ^ (2 * (v120 ^ 0x3BDA0EEC) * (v120 ^ 0x3BDA0EEC));
  v121 = *&v113[4 * (v117 ^ 0xA9)] ^ 0xE6C37DBA;
  LODWORD(v109) = v121 ^ __ROR4__(v109 ^ 0xFC4C5E10 ^ (2 * (v109 ^ 0x3BDA0EEC) * (v109 ^ 0x3BDA0EEC)), 8) ^ __ROR4__(v1 ^ 0xFC4C5E10 ^ (2 * (v1 ^ 0x3BDA0EEC) * (v1 ^ 0x3BDA0EEC)), 16) ^ __ROR4__(v85, 24) ^ (((v121 >> 2) & 0x1DEB0454 ^ v121 & 0x5DEB0454 | (v121 >> 2) & 0x2214FBA8 ^ v121 & 0xA214FBA8) >> 2);
  LODWORD(v109) = v109 - 1863726549 - ((2 * v109) & 0x21D39456);
  LODWORD(STACK[0x54A0]) = v110 ^ v91 ^ 0x60;
  v122 = v116 ^ v109;
  LODWORD(v110) = v110 ^ v91 ^ 0x60 ^ v116 ^ v109;
  LODWORD(STACK[0x5790]) = v110;
  v123 = v110 ^ 0x51208F02;
  LODWORD(v110) = v110 ^ 0x51208F02 ^ v117 ^ 0x25C88ED0;
  LODWORD(STACK[0x5408]) = v110;
  v124 = *&v119[4 * (((v110 ^ 0x845A3C1A) >> 16) ^ 0xC1)];
  DWORD1(v39) = v124 ^ 0xFC4C5E10 ^ (2 * (v124 ^ 0x3BDA0EEC) * (v124 ^ 0x3BDA0EEC));
  LODWORD(v39) = DWORD1(v39);
  LODWORD(v105) = v5 ^ 0x8656C9CA ^ v109;
  LODWORD(STACK[0x56C0]) = v105;
  v125 = v110 ^ 0xC15A3C42;
  v126 = v113;
  LODWORD(v1) = *&v113[4 * (((v110 ^ 0x3C1A) >> 8) ^ 0x63)];
  LODWORD(v109) = *&v113[4 * (v110 ^ 0x21)] ^ ((*&v113[4 * (v110 ^ 0x21)] ^ 0xE6C37DBA) >> 4) ^ ((*&v113[4 * (v110 ^ 0x21)] ^ 0xE6C37DBA) >> 2) ^ ((v39 >> 16) + 1247316689 - ((2 * (v39 >> 16)) & 0x94B115A2)) ^ __ROR4__(v1 ^ 0x65B01801 ^ ((v1 ^ 0xE6C37DBA) >> 4) ^ ((v1 ^ 0xE6C37DBA) >> 2), 24) ^ v105;
  LODWORD(v39) = __ROR4__(*&v114[4 * (HIBYTE(v125) ^ 0xD8)] ^ ((HIBYTE(v125) ^ 0xBE) - (HIBYTE(v125) ^ 0x448CE7AC)) ^ 0xE71397, 8);
  LODWORD(STACK[0x5670]) = v109 ^ v39;
  LODWORD(v105) = v109 ^ v39 ^ 0x4A588AD3;
  LODWORD(STACK[0x5650]) = v105;
  LODWORD(STACK[0x5610]) = v105 ^ v122;
  v127 = v105 ^ v122 ^ 0x6E0EA8D4;
  v128 = v127 ^ v123 ^ 0x259E3F0A;
  v129 = v127 ^ v123;
  LODWORD(STACK[0x55B0]) = v127 ^ v123;
  LODWORD(STACK[0x5600]) = v128 ^ v110 ^ 0xC15A3C42;
  v130 = *&v113[4 * (((v105 ^ v122 ^ 0xA8D4 ^ v123 ^ 0x3F0A ^ v110 ^ 0x3C42) >> 8) ^ 6)];
  LODWORD(v1) = (v128 ^ v110 ^ 0x42);
  v131 = (v1 ^ 0x5F) - (v1 ^ 0x448CE74D);
  v132 = *&v119[4 * (((v128 ^ v110 ^ 0xC15A3C42) >> 24) ^ 0xD1)];
  LODWORD(v1) = *&v114[4 * (v1 ^ 0x39)];
  LODWORD(v113) = *&v113[4 * (((v128 ^ v110 ^ 0xC15A3C42) >> 16) ^ 0x10)];
  LODWORD(STACK[0x5770]) = v118;
  v133 = v1 ^ __ROR4__(v130 ^ 0x65B01801 ^ ((v130 ^ 0xE6C37DBA) >> 4) ^ ((v130 ^ 0xE6C37DBA) >> 2), 24) ^ __ROR4__(v132 ^ 0xFC4C5E10 ^ (2 * (v132 ^ 0x3BDA0EEC) * (v132 ^ 0x3BDA0EEC)), 8) ^ __ROR4__(v113 ^ 0x65B01801 ^ ((v113 ^ 0xE6C37DBA) >> 4) ^ ((v113 ^ 0xE6C37DBA) >> 2), 16) ^ v105 ^ v131;
  LODWORD(STACK[0x5530]) = v133;
  v134 = v133 ^ v127 ^ v110 ^ 0xC15A3C42;
  v135 = v133 ^ v127;
  v136 = v134 ^ 0x91F4B795;
  v137 = BYTE2(v134);
  LODWORD(STACK[0x55E0]) = v134;
  v138 = *(&off_101353600 + (v118 ^ 0xC05864E));
  v139 = -315074815 * *(v138 + 4 * (((v134 ^ 0xB795) >> 8) ^ 0xA5u));
  v140 = (v139 >> 2) & 0x20000000;
  if ((v140 & v139) != 0)
  {
    v140 = -v140;
  }

  v141 = (v139 >> 2) & 0xE89263E ^ 0x3B8A6687 ^ (v140 - 315074815 * *(*(&off_101353600 + (v118 ^ 0xC05864E)) + (((v134 ^ 0xB795) >> 8) ^ 0xA5u)));
  v142 = (v134 ^ 0x46) - (v134 ^ 0x448CE754);
  HIDWORD(v144) = *&v114[4 * (HIBYTE(v136) ^ 0xDF)] ^ ((HIBYTE(v136) ^ 0xB9) - (HIBYTE(v136) ^ 0x448CE7AB)) ^ 0xE71397;
  LODWORD(v144) = HIDWORD(v144);
  v143 = v144 >> 8;
  LODWORD(v144) = __ROR4__(v141, 24);
  v145 = (v143 ^ v144) - ((2 * (v143 ^ v144)) & 0x2644D70) - 2127419720;
  v146 = *&v114[4 * (v136 ^ 0xB5)];
  v147 = v146 & 0x20;
  if ((v142 & v146 & 0x20) != 0)
  {
    v147 = -v147;
  }

  v148 = v133 ^ v146 & 0xFFFFFFDF ^ __ROR4__(*&v114[4 * (v137 ^ 0x42)] ^ ((v137 ^ 0x24) - (v137 ^ 0x448CE736)) ^ 0xE71397, 16) ^ (v147 + v142) ^ v145;
  LODWORD(STACK[0x5430]) = v148;
  v149 = v148 ^ 0x22F15B85 ^ v129;
  LODWORD(STACK[0x53F0]) = v149;
  v150 = v149 ^ 0x8F6F897E;
  v151 = v149 ^ 0x8F6F897E ^ v136;
  LODWORD(STACK[0x5540]) = v149 ^ 0x8F6F897E;
  v152 = -315074815 * *(v138 + 4 * (HIBYTE(v151) ^ 0x1D));
  v153 = *&v119[4 * (BYTE1(v151) ^ 0x1E)];
  v154 = v114;
  v155 = *&v114[4 * (v151 ^ 0xC1)] ^ __ROR4__(v152 ^ 0x3B8A6687 ^ (v152 >> 2) & 0x2E89263E, 8) ^ __ROR4__(v153 ^ 0xFC4C5E10 ^ (2 * (v153 ^ 0x3BDA0EEC) * (v153 ^ 0x3BDA0EEC)), 24) ^ v148 ^ 0x22F15B85 ^ ((v151 ^ 0xA7) - (v151 ^ 0x448CE7B5));
  v156 = __ROR4__(*&v114[4 * (BYTE2(v151) ^ 0x47)] ^ ((BYTE2(v151) ^ 0x21) - (BYTE2(v151) ^ 0x448CE733)) ^ 0xE71397, 16);
  v157 = v148 ^ 0x22F15B85 ^ v135;
  LODWORD(STACK[0x5460]) = v157;
  LODWORD(STACK[0x5410]) = v135;
  LODWORD(STACK[0x55A0]) = v157 ^ 0xE7711D9F;
  v158 = v155 ^ v156 ^ v157 ^ 0xE7711D9F;
  LODWORD(STACK[0x55C0]) = v158;
  v159 = v155 ^ v156;
  LODWORD(STACK[0x5590]) = v155 ^ v156;
  v160 = v158 ^ 0xA7D9B678 ^ v136;
  LODWORD(STACK[0x54B0]) = v158 ^ 0xA7D9B678;
  v161 = *&v119[4 * (((v160 ^ 0x79C9) >> 8) ^ 0xB7)];
  v162 = *&v114[4 * (BYTE2(v160) ^ 0x63)] ^ ((BYTE2(v160) ^ 5) - (BYTE2(v160) ^ 0x448CE717)) ^ 0xE71397;
  v163 = v160 ^ 0xC3286170;
  LODWORD(STACK[0x5570]) = v160 ^ 0xC3286170;
  v164 = *(v138 + 4 * (v160 ^ 0x29u));
  v165 = *&v119[4 * (HIBYTE(v160) ^ 0x71)];
  v166 = ((-315074815 * v164) >> 2) & 0x2E89263E ^ (-315074815 * v164) ^ __ROR4__(v161 ^ 0xFC4C5E10 ^ (2 * (v161 ^ 0x3BDA0EEC) * (v161 ^ 0x3BDA0EEC)), 24) ^ __ROR4__(v165 ^ 0xFC4C5E10 ^ (2 * (v165 ^ 0x3BDA0EEC) * (v165 ^ 0x3BDA0EEC)), 8) ^ v159 ^ __ROR4__(v162, 16);
  LODWORD(STACK[0x5560]) = v166;
  v167 = v166 ^ 0x97E66D3E ^ v150;
  LODWORD(STACK[0x5500]) = v167;
  LODWORD(STACK[0x5550]) = v167 ^ v163;
  v168 = *(v126 + 4 * (((v167 ^ v163 ^ 0xA612) >> 8) ^ 0x60u));
  v169 = *&v119[4 * (((v167 ^ v163 ^ 0x3263A612) >> 16) ^ 0x38)];
  v170 = *(v126 + 4 * (((v167 ^ v163) >> 24) ^ 0x99));
  v171 = -315074815 * *(v138 + 4 * ((v167 ^ v163) ^ 0xE2u));
  v172 = v166 ^ 0x97E66D3E ^ v158 ^ 0xA7D9B678;
  v173 = v167 ^ v163 ^ 0x64203DDC;
  LODWORD(STACK[0x5400]) = v173;
  v174 = (v171 >> 2) & 0x2E89263E ^ v171 ^ __ROR4__(v169 ^ 0xFC4C5E10 ^ (2 * (v169 ^ 0x3BDA0EEC) * (v169 ^ 0x3BDA0EEC)), 16) ^ __ROR4__(v168 ^ 0x65B01801 ^ ((v168 ^ 0xE6C37DBA) >> 4) ^ ((v168 ^ 0xE6C37DBA) >> 2), 24) ^ __ROR4__(v170 ^ 0x65B01801 ^ ((v170 ^ 0xE6C37DBA) >> 4) ^ ((v170 ^ 0xE6C37DBA) >> 2), 8) ^ v166;
  v175 = v174 ^ 0x97BCDF6;
  LODWORD(STACK[0x54E0]) = v174 ^ 0x97BCDF6;
  v176 = v172 ^ v174;
  LODWORD(STACK[0x53F8]) = v172;
  v177 = v176 ^ v167 ^ 0xF941DC2D;
  LODWORD(STACK[0x5510]) = v177;
  v178 = v177 ^ v173;
  v179 = *(v138 + 4 * (((v177 ^ v173) >> 16) ^ 0x87u));
  STACK[0x53B8] = v138;
  HIDWORD(v180) = (-315074815 * v179) ^ 0x3B8A6687 ^ ((-315074815 * v179) >> 2) & 0x2E89263E;
  LODWORD(v180) = HIDWORD(v180);
  v181 = (v180 >> 16) - ((2 * (v180 >> 16)) & 0xB9549F94) + 1554665418;
  STACK[0x52A8] = v154;
  HIDWORD(v180) = *(v154 + 4 * (HIBYTE(v178) ^ 4)) ^ 0xE71397 ^ ((((HIBYTE(v178) ^ 0x27CC8075) - 1016903727) ^ ((HIBYTE(v178) ^ 0xC29F8715) + 640696497) ^ ((HIBYTE(v178) ^ 0xE5530702) + 33341608)) - (((HIBYTE(v178) ^ 0x6972E2CE) + 1293645457) ^ ((HIBYTE(v178) ^ 0xE0750869) - 1004757960) ^ ((HIBYTE(v178) ^ 0xCD8B0DD7) - 371025526)) + 2083892071);
  LODWORD(v180) = HIDWORD(v180);
  v182 = (v180 >> 8) - ((2 * (v180 >> 8)) & 0xC0D7D692) + 1617685321;
  v183 = v177 ^ v173 ^ 0x408BBFC1;
  v184 = -315074815 * *(v138 + 4 * (((v177 ^ v173) >> 8) ^ 0x2Eu));
  HIDWORD(v180) = v184 ^ 0x3B8A6687 ^ (v184 >> 2) & 0x2E89263E;
  LODWORD(v180) = HIDWORD(v180);
  STACK[0x5298] = v126;
  v185 = *(v126 + 4 * ((v177 ^ v173) ^ 0x36u)) ^ (*(v126 + 4 * ((v177 ^ v173) ^ 0x36u)) >> 4) ^ (*(v126 + 4 * ((v177 ^ v173) ^ 0x36u)) >> 2) ^ v181 ^ ((v180 >> 24) - ((2 * (v180 >> 24)) & 0xB0441060) - 668858320) ^ v175 ^ v182;
  LODWORD(STACK[0x54D0]) = v185;
  v186 = v176 ^ v167 ^ 0x4B7A0221;
  LODWORD(STACK[0x54F0]) = v185 ^ 0x2CFC12B6;
  v187 = v185 ^ 0x2CFC12B6 ^ v176 ^ 0x48F4EBD2;
  LODWORD(STACK[0x5440]) = v176 ^ 0x48F4EBD2;
  LODWORD(STACK[0x54C0]) = v187;
  v188 = v176 ^ v167 ^ 0x420C7C9A ^ v187;
  v189 = *(v154 + 4 * (((v188 ^ v183) >> 24) ^ 0xF2)) ^ ((((v188 ^ v183) >> 24) ^ 0x94) - (((v188 ^ v183) >> 24) ^ 0x448CE786)) ^ 0xE71397;
  STACK[0x56F0] = v119;
  v190 = *&v119[4 * (((v188 ^ v183) >> 8) ^ 0x35)];
  v191 = *(v126 + 4 * (((v188 ^ v183) >> 16) ^ 0xCEu));
  HIDWORD(v180) = v191 ^ 0x65B01801 ^ ((v191 ^ 0xE6C37DBA) >> 4) ^ ((v191 ^ 0xE6C37DBA) >> 2);
  LODWORD(v180) = HIDWORD(v180);
  LODWORD(STACK[0x53E8]) = v188 ^ v183;
  v192 = *&v119[4 * ((v188 ^ v183) ^ 0x97)];
  v193 = v192 ^ (2 * (v192 ^ 0x3BDA0EEC) * (v192 ^ 0x3BDA0EEC)) ^ __ROR4__(v190 ^ 0xFC4C5E10 ^ (2 * (v190 ^ 0x3BDA0EEC) * (v190 ^ 0x3BDA0EEC)), 24) ^ ((v180 >> 16) - ((2 * (v180 >> 16)) & 0xE819A570) + 1946997432) ^ __ROR4__(v189, 8) ^ 0x9CCDF331;
  LODWORD(STACK[0x5450]) = v193;
  v194 = STACK[0x5408];
  v195 = ((LODWORD(STACK[0x5780]) ^ 0x392505F6) + 291819138) ^ ((LODWORD(STACK[0x5780]) ^ 0xEA1E6E02) - 1033919114) ^ ((LODWORD(STACK[0x5780]) ^ 0x2DCBFE41) + 92943671);
  LODWORD(STACK[0x53C0]) = (v148 ^ 0x18BAF335 ^ v166 ^ 0x97E66D3E ^ v158 ^ 0xA7D9B678) - 1556980463;
  v196 = v133 ^ v127 ^ v128;
  LODWORD(STACK[0x5380]) = ((v125 + 1958653960 - 2 * (v125 & 0x74BEB01C ^ v194 & 0x14)) ^ 0x51AA67C8 ^ v127) + 228671090;
  LODWORD(v154) = v193 ^ v176 ^ 0x48F4EBD2;
  LODWORD(STACK[0x5370]) = v195 - 1218205738 + (((v154 ^ 0xC17A503E) - 1008431843) ^ ((v154 ^ 0x1C89BCC2) + 504848865) ^ ((v154 ^ 0x8FF20D9E) - 1922248515));
  v197 = LODWORD(STACK[0x54A0]) - 2089589317 - ((2 * LODWORD(STACK[0x54A0])) & 0x6E6CBC2);
  v198 = (LODWORD(STACK[0x53F0]) ^ 0x234F3E42 ^ v183) + 1758929176;
  LODWORD(STACK[0x5368]) = (v117 ^ 0x20A50FCF ^ v154 ^ v188 ^ 0x3EB2E014) + 677182328;
  v199 = (((v122 ^ 0x7B80FE69) - 1608485734) ^ ((v122 ^ 0xEED67554) + 896991141) ^ ((v122 ^ 0x773A3414) - 1399144731)) - (((v117 ^ 0x454496A6) + 1892748227) ^ ((v117 ^ 0xEA297952) - 541268937) ^ ((v117 ^ 0x5516488F) + 1619252716));
  v200 = STACK[0x56D0];
  v201 = (((v200 ^ 0x8FFC48B2) + 1824290942) ^ ((v200 ^ 0x2B766E1) - 503884241) ^ ((v200 ^ 0x73BBBB03) - 1862562867)) - (((v154 ^ v188 ^ 0x8E7BE936) + 1425206061) ^ ((v154 ^ v188 ^ 0x5FE446B7) - 2056436562) ^ ((v154 ^ v188 ^ 0x35F3E721) - 277158596)) - 457444509;
  v202 = v197 + 38;
  v203 = (((v122 ^ 0xA3DDD42F) + 2021482208) ^ ((v122 ^ 0xD6E755D9) + 222813994) ^ ((v122 ^ 0x97563EDF) + 1291236400)) + ((((v197 + 38) ^ 0xE6CF7C8A) + 546185028) ^ (((v197 + 38) ^ 0xC442B327) + 33804527) ^ (((v197 + 38) ^ 0x5744551C) - 1861929258)) + 313184429;
  v204 = STACK[0x5790];
  v205 = v154 ^ v188 ^ 0x3EB2E014 ^ v188 ^ v183;
  v206 = (((v204 ^ 0xEB9A156F) - 862102548) ^ ((v204 ^ 0x5DB106E2) + 2058766439) ^ ((v204 ^ 0xA834C945) - 1892448318)) - (((v205 ^ 0xF91EAC05) - 145227442) ^ ((v205 ^ 0x2C75A2FA) + 573771699) ^ ((v205 ^ 0x2518521D) + 727646038));
  LODWORD(STACK[0x5390]) = v206;
  v207 = STACK[0x5670];
  LODWORD(STACK[0x5378]) = (((v194 ^ 0xA57392F6) + 1701675356) ^ ((v194 ^ 0x1142037C) - 782495534) ^ ((v194 ^ 0x2E74775A) - 295017224)) - 1030834249 + (((LODWORD(STACK[0x5670]) ^ 0x50E88B9B) + 90257772) ^ ((LODWORD(STACK[0x5670]) ^ 0x3411F068) + 1637368473) ^ ((LODWORD(STACK[0x5670]) ^ 0x87D7311D) - 765557778));
  v208 = LODWORD(STACK[0x5650]) ^ v200;
  LODWORD(STACK[0x54A0]) = v200 ^ 0xC2FD5B97;
  v209 = -147483443 - (LODWORD(STACK[0x5460]) ^ 0xDA46F5FD ^ LODWORD(STACK[0x5400]));
  v210 = 438081056 - (((v117 ^ 0x3674FDB7) + 65102036) ^ ((v117 ^ 0x412E7518) + 1958471805) ^ ((v117 ^ 0x8D212FD4) - 1196117327)) - (((v196 ^ 0x3640E03A) - 503015226) ^ ((v196 ^ 0x6C7927E6) - 1203937510) ^ ((v196 ^ 0x1B4A606D) - 821159789)) + 1765;
  v211 = v186 ^ v202;
  LODWORD(STACK[0x5358]) = v186 ^ v202;
  LODWORD(STACK[0x56D0]) = v210 ^ 0xB8518320 ^ v186;
  LODWORD(STACK[0x5400]) = v117 ^ v210 ^ 0x37E3BEEA;
  LODWORD(STACK[0x53F0]) = v204 ^ 0xE30F9A94;
  LODWORD(STACK[0x5388]) = v203;
  LODWORD(STACK[0x53E0]) = v122 ^ v203 ^ 0xC09725B4;
  v212 = v207 ^ 0xB9C97D75;
  LODWORD(STACK[0x5408]) = v194 ^ 0x6755A68C;
  v213 = v196 ^ 0x58A0F947;
  LODWORD(STACK[0x52E8]) = v201;
  LODWORD(STACK[0x52E0]) = v209;
  v214 = v201 ^ v209;
  v215 = v201 ^ v209 ^ LODWORD(STACK[0x5530]);
  v216 = v215 ^ 0x691E4915;
  v217 = v203 ^ 0xDFEBDAC1;
  LODWORD(STACK[0x5190]) = v198;
  v218 = v198 ^ v203 ^ 0xDFEBDAC1;
  LODWORD(STACK[0x5790]) = v218;
  v219 = v218 ^ LODWORD(STACK[0x56C0]);
  LODWORD(STACK[0x53D8]) = v219;
  v220 = (((v219 ^ 0x7C264779) + 1624646296) ^ ((v219 ^ 0xA9FB520F) - 1257555998) ^ ((v219 ^ 0x97FA6F5E) - 1962276175)) - 1157873873 + ((v215 - 1207194565) ^ (v215 + 1593908351) ^ ((v215 ^ 0x97C7A7A7) + 19272014));
  v221 = v211 ^ 0x3A04EB2;
  LODWORD(STACK[0x5158]) = v208 ^ 0xDAEEF16C;
  v222 = v198 ^ v211 ^ 0x3A04EB2 ^ v208 ^ 0xDAEEF16C;
  LODWORD(STACK[0x5310]) = v222;
  LODWORD(STACK[0x56C0]) = v222 ^ 0xF320F0 ^ v205;
  v223 = v198 ^ v221 ^ v208;
  LODWORD(STACK[0x5670]) = v223 ^ 0xCE02C5DE ^ v154 ^ v188;
  v224 = *(&off_101353600 + LODWORD(STACK[0x57A0]) + 172) - 8;
  LODWORD(STACK[0x5460]) = v224;
  v225 = v220 ^ (v224 - 202573837);
  v226 = STACK[0x5620];
  LODWORD(STACK[0x57A0]) = LODWORD(STACK[0x5620]) ^ 0xA4BB1EB7 ^ v154;
  LODWORD(STACK[0x5650]) = v223 ^ 0x786F6C1C ^ v154;
  v227 = STACK[0x5640];
  LODWORD(v154) = LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x5660]);
  LODWORD(STACK[0x52B8]) = v199 - 1776155578;
  v228 = (v199 - 1776155578) ^ 0xC31D87BA;
  LODWORD(STACK[0x52C8]) = v154;
  LODWORD(STACK[0x52C0]) = v154 ^ 0x16E3019D;
  v229 = v228 ^ v154 ^ 0x16E3019D;
  LODWORD(STACK[0x5660]) = v229 ^ 0xE490DC03 ^ v183;
  v230 = v151 ^ 0x29755E20;
  LODWORD(STACK[0x53F8]) ^= 0x548788A3u;
  LODWORD(STACK[0x5720]) ^= 0xC2FD5BAC;
  LODWORD(STACK[0x52D8]) = v217;
  v231 = (v206 + 1340840993) ^ v217;
  v232 = v231 ^ v188;
  v233 = v232 ^ 0x22C31650;
  v234 = (((v232 ^ 0x50DC502B) - 1914652283) ^ (v232 - 1278675736) ^ ((v232 ^ 0xA790954B) + 2058124517)) - 907104579 + (((v225 ^ 0x185BA16F) - 887824464) ^ (v225 - 1821118547) ^ (v225 + 2026158385));
  v235 = STACK[0x5540];
  v236 = LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x54B0]) ^ 0xDAFDD1FB;
  LODWORD(STACK[0x54B0]) = v227 ^ 0x32812513;
  LODWORD(STACK[0x53D0]) = v226 ^ v210 ^ 0x3882A8F6;
  LODWORD(STACK[0x52D0]) = v210;
  LODWORD(STACK[0x53B0]) = LODWORD(STACK[0x5730]) ^ v210 ^ 0x2E3DAB17;
  v237 = LODWORD(STACK[0x55B0]) ^ 0x30CCB591;
  v238 = LODWORD(STACK[0x5610]) ^ 0x4AE2921D;
  v239 = LODWORD(STACK[0x5600]) ^ 0x15528A9B;
  v240 = (v206 + 1340840993) ^ LODWORD(STACK[0x5380]);
  v241 = v206 + 1340840993;
  LODWORD(STACK[0x5360]) = v206 + 1340840993;
  v242 = v212 ^ v240;
  v243 = v237 ^ v240;
  v244 = v238 ^ v240;
  v245 = v239 ^ v240;
  LODWORD(STACK[0x52F0]) = v214;
  v246 = v214 ^ 0x48D39CA6 ^ LODWORD(STACK[0x5410]);
  v247 = v214 ^ 0x48D39CA6 ^ LODWORD(STACK[0x55E0]);
  v248 = LODWORD(STACK[0x5430]) ^ 0xB668BF5D;
  v249 = v213 ^ v214;
  v250 = v234 + 1208;
  if ((v234 + 1208))
  {
    v251 = v214 ^ 0x48D39CA6 ^ LODWORD(STACK[0x5410]);
  }

  else
  {
    v251 = v216;
  }

  LODWORD(STACK[0x5640]) = v251;
  if ((v234 - 72))
  {
    v252 = v249;
  }

  else
  {
    v252 = v246;
  }

  LODWORD(STACK[0x5730]) = v252;
  if ((v234 - 72))
  {
    v253 = v247;
  }

  else
  {
    v253 = v249;
  }

  LODWORD(STACK[0x5620]) = v253;
  if ((v234 - 72))
  {
    v254 = v216;
  }

  else
  {
    v254 = v247;
  }

  LODWORD(STACK[0x5610]) = v254;
  v255 = LODWORD(STACK[0x5570]) ^ 0xC84A6F92;
  v256 = LODWORD(STACK[0x55A0]) ^ 0xE57227BF;
  v257 = v235 ^ 0x2E1B374D;
  LODWORD(STACK[0x52B0]) = v228;
  v258 = LODWORD(STACK[0x5368]) ^ v228;
  v259 = v230 ^ v258;
  v260 = v248 ^ v258;
  v261 = v256 ^ v258;
  v262 = v257 ^ v258;
  v263 = LODWORD(STACK[0x55C0]) ^ 0xABD5D1F7;
  v264 = LODWORD(STACK[0x5590]) ^ 0xB64D7771;
  v265 = LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x5378]);
  LODWORD(STACK[0x5290]) = v265;
  v266 = v236 ^ v265;
  v267 = v255 ^ v265;
  v268 = v263 ^ v265;
  v269 = v264 ^ v265;
  if (v250)
  {
    v270 = v267;
  }

  else
  {
    v270 = v266;
  }

  LODWORD(STACK[0x5540]) = v270;
  if ((v250 & 1) == 0)
  {
    v266 = v268;
  }

  LODWORD(STACK[0x55A0]) = v266;
  if (v250)
  {
    v271 = v268;
  }

  else
  {
    v271 = v269;
  }

  LODWORD(STACK[0x5530]) = v271;
  if (v250)
  {
    v272 = v269;
  }

  else
  {
    v272 = v267;
  }

  LODWORD(STACK[0x5590]) = v272;
  LODWORD(STACK[0x55E0]) = LODWORD(STACK[0x5500]) ^ 0x35A3585F;
  v273 = LODWORD(STACK[0x5550]) ^ 0x463036CA;
  v274 = LODWORD(STACK[0x5560]) ^ 0x74B48315;
  LODWORD(STACK[0x52A0]) = v229;
  v275 = v229 ^ 0x3AA1FB30 ^ LODWORD(STACK[0x5510]);
  v276 = v229 ^ 0x21D0774 ^ LODWORD(STACK[0x5440]);
  v277 = v229 ^ 0xABBF3A17 ^ LODWORD(STACK[0x54E0]);
  v278 = LODWORD(STACK[0x53E8]) ^ 0xBE034BC4;
  v279 = LODWORD(STACK[0x54C0]) ^ 0xDB7FCC40;
  v280 = LODWORD(STACK[0x54D0]) ^ 0x8DCE5815;
  LODWORD(STACK[0x52F8]) = v231;
  v281 = v278 ^ v231;
  v282 = v279 ^ v231;
  v283 = v280 ^ v231;
  if (v250)
  {
    v284 = v233;
  }

  else
  {
    v284 = v282;
  }

  LODWORD(STACK[0x5510]) = v284;
  if (v250)
  {
    v285 = v282;
  }

  else
  {
    v285 = v283;
  }

  LODWORD(STACK[0x5570]) = v285;
  if (v250)
  {
    v286 = v283;
  }

  else
  {
    v286 = v281;
  }

  LODWORD(STACK[0x5500]) = v286;
  if (v250)
  {
    v287 = v281;
  }

  else
  {
    v287 = v233;
  }

  LODWORD(STACK[0x5560]) = v287;
  v288 = v222 ^ LODWORD(STACK[0x54F0]) ^ 0xED50EEA2 ^ LODWORD(STACK[0x5450]);
  v289 = (LODWORD(STACK[0x5740]) ^ 0x3F) - ((2 * (LODWORD(STACK[0x5740]) ^ 0x3F)) & 0x82);
  v290 = LODWORD(STACK[0x57A0]) + 491079627;
  LODWORD(STACK[0x5350]) = v290;
  v291 = v241 ^ v290 ^ LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x5288]) = v291;
  v292 = v291 ^ LODWORD(STACK[0x54A0]);
  v293 = v291 ^ LODWORD(STACK[0x5780]) ^ 0xC2FD5B72;
  v294 = LODWORD(STACK[0x5400]) ^ LODWORD(STACK[0x5358]);
  v295 = LODWORD(STACK[0x53F0]) ^ LODWORD(STACK[0x5790]);
  v296 = LODWORD(STACK[0x53E0]) ^ LODWORD(STACK[0x5190]);
  v297 = LODWORD(STACK[0x5408]) ^ LODWORD(STACK[0x5790]);
  v298 = LODWORD(STACK[0x53D8]) ^ 0xE30F9A11;
  v299 = LODWORD(STACK[0x5370]) ^ LODWORD(STACK[0x5190]);
  v300 = LODWORD(STACK[0x53F8]) ^ v299;
  v301 = v291 ^ LODWORD(STACK[0x5720]);
  v302 = v291 ^ LODWORD(STACK[0x54B0]);
  LODWORD(STACK[0x54B0]) = v301;
  if (v250)
  {
    v303 = v301;
  }

  else
  {
    v303 = v293;
  }

  if (v250)
  {
    v304 = v293;
  }

  else
  {
    v304 = v292;
  }

  LODWORD(STACK[0x55C0]) = v304;
  LODWORD(STACK[0x5348]) = v302;
  if ((v250 & 1) == 0)
  {
    v292 = v302;
  }

  v305 = LODWORD(STACK[0x53D0]) ^ v221;
  LODWORD(STACK[0x5160]) = v221;
  v306 = LODWORD(STACK[0x53B0]) ^ v221;
  if (v250)
  {
    v307 = LODWORD(STACK[0x53B0]) ^ v221;
  }

  else
  {
    v307 = v294;
  }

  LODWORD(STACK[0x5408]) = v307;
  v308 = STACK[0x56D0];
  if (v250)
  {
    v308 = v294;
  }

  LODWORD(STACK[0x54F0]) = v308;
  LODWORD(STACK[0x5330]) = v305;
  if (v250)
  {
    v309 = v305;
  }

  else
  {
    v309 = v306;
  }

  LODWORD(STACK[0x54E0]) = v309;
  LODWORD(STACK[0x53A0]) = v298;
  if (v250)
  {
    v310 = v298;
  }

  else
  {
    v310 = v297;
  }

  LODWORD(STACK[0x5600]) = v310;
  if (v250)
  {
    v311 = v297;
  }

  else
  {
    v311 = v295;
  }

  LODWORD(STACK[0x5398]) = v311;
  LODWORD(STACK[0x53D0]) = v296;
  if (v250)
  {
    v312 = v295;
  }

  else
  {
    v312 = v296;
  }

  LODWORD(STACK[0x5550]) = v312;
  LODWORD(STACK[0x5410]) = v244;
  if (v250)
  {
    v313 = v244;
  }

  else
  {
    v313 = v242;
  }

  LODWORD(STACK[0x54D0]) = v313;
  if (v250)
  {
    v314 = v242;
  }

  else
  {
    v314 = v245;
  }

  LODWORD(STACK[0x5740]) = v314;
  LODWORD(STACK[0x54A0]) = v243;
  if (v250)
  {
    v315 = v245;
  }

  else
  {
    v315 = v243;
  }

  if (v250)
  {
    v316 = v260;
  }

  else
  {
    v316 = v259;
  }

  LODWORD(STACK[0x55B0]) = v316;
  LODWORD(STACK[0x5400]) = v261;
  if (v250)
  {
    v317 = v261;
  }

  else
  {
    v317 = v260;
  }

  LODWORD(STACK[0x54C0]) = v317;
  LODWORD(STACK[0x53F0]) = v262;
  if (v250)
  {
    v318 = v259;
  }

  else
  {
    v318 = v262;
  }

  v319 = v299;
  LODWORD(STACK[0x5780]) = v299;
  v320 = LODWORD(STACK[0x55E0]) ^ v299;
  v321 = v273 ^ v319;
  v322 = v274 ^ v319;
  if (v250)
  {
    v323 = v320;
  }

  else
  {
    v323 = v300;
  }

  LODWORD(STACK[0x55E0]) = v323;
  LODWORD(STACK[0x5300]) = v322;
  if ((v250 & 1) == 0)
  {
    v300 = v322;
  }

  LODWORD(STACK[0x5318]) = v321;
  if (v250)
  {
    v320 = v321;
  }

  LODWORD(STACK[0x53F8]) = v275;
  LODWORD(STACK[0x53E8]) = v276;
  if (v250)
  {
    v324 = v275;
  }

  else
  {
    v324 = v276;
  }

  LODWORD(STACK[0x53E0]) = v277;
  if (v250)
  {
    v325 = v277;
  }

  else
  {
    v325 = STACK[0x5660];
  }

  v326 = STACK[0x5670];
  if (v250)
  {
    v326 = STACK[0x56C0];
  }

  LODWORD(STACK[0x53D8]) = v288;
  if (v250)
  {
    v327 = STACK[0x5650];
  }

  else
  {
    v327 = v288;
  }

  LODWORD(STACK[0x57A0]) = v250;
  if ((v250 & 2) != 0)
  {
    v328 = v292;
  }

  else
  {
    v328 = v303;
  }

  LODWORD(STACK[0x53B0]) = v328;
  if ((v250 & 2) != 0)
  {
    v329 = v303;
  }

  else
  {
    v329 = v292;
  }

  LODWORD(STACK[0x53A8]) = v329;
  if ((v250 & 2) != 0)
  {
    v330 = v320;
  }

  else
  {
    v330 = v300;
  }

  LODWORD(STACK[0x5440]) = v330;
  if ((v250 & 2) != 0)
  {
    v320 = v300;
  }

  LODWORD(STACK[0x5450]) = v320;
  if ((v250 & 2) != 0)
  {
    v331 = v326;
  }

  else
  {
    v331 = v327;
  }

  LODWORD(STACK[0x5430]) = v331;
  if ((v250 & 2) != 0)
  {
    v332 = v327;
  }

  else
  {
    v332 = v326;
  }

  LODWORD(STACK[0x5720]) = v332;
  v333 = STACK[0x5198];
  v334 = STACK[0x51A0];
  v335 = ((*(STACK[0x51A0] + (STACK[0x5470] ^ 0x58)) ^ 2) << 16) | ((*(STACK[0x5198] + (STACK[0x5580] ^ 0x26)) ^ 0x53) << 8);
  v336 = STACK[0x5338];
  v337 = STACK[0x51B0];
  v338 = STACK[0x51A8];
  v339 = ((*(STACK[0x5198] + (v289 + 65)) ^ 0x94) << 24) | ((*(STACK[0x51A0] + (v336[9] ^ 0x41)) ^ 0x44) << 16) | ((v336[10] ^ 0x5C ^ *(STACK[0x51A8] + (v336[10] ^ 0xA0))) << 8);
  v340 = ((v336[5] ^ 0x5C ^ *(STACK[0x51B0] + (v336[5] ^ 0xB3))) << 16) | ((STACK[0x56E0] ^ 0x5C ^ *(STACK[0x51A8] + (STACK[0x56E0] ^ 0xA0))) << 8);
  v341 = *(STACK[0x51A0] + (STACK[0x5480] ^ 0x22));
  LODWORD(STACK[0x56E0]) = STACK[0x5680] ^ 0x12 ^ *(STACK[0x51B0] + (STACK[0x5680] ^ 0x98)) | ((*(STACK[0x5198] + (v336[14] ^ 0xCFLL)) ^ 0xDB) << 8) | ((v336[13] ^ 0x25 ^ *(STACK[0x51B0] + (v336[13] ^ 0x91))) << 16) | ((*(STACK[0x5198] + (v336[12] ^ 0xDBLL)) ^ 0x75) << 24);
  v342 = v341 ^ 0x9E | v335;
  v343 = STACK[0x5700] ^ 0xA7;
  v344 = *v336 ^ 0xBLL;
  LODWORD(STACK[0x5700]) = *(v333 + (v336[11] ^ 0x90)) ^ 0x8F | v339;
  v345 = v342 | ((*(v333 + v344) ^ 0xDA) << 24);
  v346 = *(v333 + v343) ^ 5 | v340 | ((v336[4] ^ 0xB1 ^ *(v338 + (v336[4] ^ 0x85))) << 24);
  v347 = STACK[0x5760] & 0xE4E01A5E2F339FCALL;
  v348 = &v336[-v347 - 0xD8FF2D0E866301BLL];
  LODWORD(v347) = (v336 + 395955968 - v347 + 229) & 0xFFFFFFF8;
  v349 = (((v347 ^ 0x1339107) + 819669128) ^ ((v347 ^ 0xD29AE31E) - 479044961) ^ ((v347 ^ 0xC430BDF9) - 170392454)) - 611982285;
  LODWORD(v343) = (v349 ^ 0xD4D4CF1A) & (2 * (v349 & 0xE0160F5B)) ^ v349 & 0xE0160F5B;
  LODWORD(v344) = ((2 * (v349 ^ 0x54FCD1AC)) ^ 0x69D5BDEE) & (v349 ^ 0x54FCD1AC) ^ (2 * (v349 ^ 0x54FCD1AC)) & 0xB4EADEF6;
  LODWORD(v343) = (v344 ^ 0xC01CE4) & (4 * v343) ^ v343;
  LODWORD(v344) = ((4 * (v344 ^ 0x942A4211)) ^ 0xD3AB7BDC) & (v344 ^ 0x942A4211) ^ (4 * (v344 ^ 0x942A4211)) & 0xB4EADEF4;
  LODWORD(v343) = (v344 ^ 0x90AA5AD3) & (16 * v343) ^ v343;
  LODWORD(v344) = ((16 * (v344 ^ 0x24408423)) ^ 0x4EADEF70) & (v344 ^ 0x24408423) ^ (16 * (v344 ^ 0x24408423)) & 0xB4EADEF0;
  LODWORD(v343) = v343 ^ 0xB4EADEF7 ^ (v344 ^ 0x4A8CE87) & (v343 << 8);
  *(&v350 + 1) = v347 ^ 0xE0;
  *&v350 = v348 ^ 0xF2700D2F1799CF00;
  v351 = STACK[0x5340];
  v352 = *(STACK[0x5420] + (v351 & (v349 ^ (2 * ((v343 << 16) & 0x34EA0000 ^ v343 ^ ((v343 << 16) ^ 0x5EF70000) & (((v344 ^ 0xB0421087) << 8) & 0x34EA0000 ^ 0x14200000 ^ (((v344 ^ 0xB0421087) << 8) ^ 0xEADE0000) & (v344 ^ 0xB0421087)))) ^ 0x7378B4C0) & 0xFFFFFFF8 ^ v351 & 0xD37F0670)) + (v350 >> 8);
  *&v350 = __ROR8__(*(STACK[0x5420] + (v351 & (v349 ^ (2 * ((v343 << 16) & 0x34EA0000 ^ v343 ^ ((v343 << 16) ^ 0x5EF70000) & (((v344 ^ 0xB0421087) << 8) & 0x34EA0000 ^ 0x14200000 ^ (((v344 ^ 0xB0421087) << 8) ^ 0xEADE0000) & (v344 ^ 0xB0421087)))) ^ 0x7378B4C0) & 0xFFFFFFF8 ^ v351 & 0xD37F0670)), 61);
  v353 = v352 ^ 0xFFB990BFD1E2F213;
  v354 = (v350 - ((2 * v350) & 0x937FA79BD87335D0) + 0x49BFD3CDEC399AE8) ^ v352;
  *&v350 = __ROR8__(v353, 8);
  v355 = v354 ^ 0x99D720E59032288CLL;
  v356 = (((v350 ^ 0x805E2AE13F5C8DBDLL) + 0x2AF5A02509D10720) ^ ((v350 ^ 0x1AAD739C183B7B98) - 0x4FF906A7D1490EC5) ^ ((v350 ^ 0x54A10294E42AF436) - 0x1F577AF2D58816BLL)) + 0x1890B926EB2ACB07 + (((v354 ^ 0xC71D51D5206657A9) - 0x5ECA7130B0547F25) ^ ((v354 ^ 0xBC2930279A3A9B6ALL) - 0x25FE10C20A08B3E6) ^ ((v354 ^ 0x9F69CB43CA85B7F6) - 0x6BEEBA65AB79F7ALL));
  *&v350 = __ROR8__(v355, 61);
  v357 = v356 ^ v350 ^ 0xECA0A1D291D79630;
  v358 = (((v356 ^ v350 ^ 0x85E9EFD95F1A88E5) - 0x69494E0BCECD1ED5) ^ ((v356 ^ v350 ^ 0x1BEBF868ED094CF6) + 0x8B4A6458321253ALL) ^ ((v356 ^ v350 ^ 0x7BA33DA99BA966D8) + 0x68FC6384F5810F18)) + ((((v356 << 56) ^ 0x1231F13434A136ABLL) - 0x73A9396A9C67A42FLL) ^ (((v356 << 56) ^ 0x137B163E5F012839) - 0x72E3DE60F7C7BABDLL) ^ (((v356 << 56) ^ 0x14AE70A6BA01E92) - 0x60D22F54C3668C16)) + ((((v356 >> 8) ^ 0xE752A720803A8D36) - 0x411BF0D6EA4C6795) ^ (((v356 >> 8) ^ 0x3E236A857F0561B9) + 0x6795C28CEA8C74E6) ^ (((v356 >> 8) ^ 0xD97838DD40110CB0) - 0x7F316F2B2A67E613)) + 0x10DAF6B8368BD21BLL;
  v359 = v358 & 0xFFFFFFFFFFDFFFFFLL ^ 0xBF735EBE3475E5FFLL ^ (0xB8F79A8BFDABDE30 - (v358 & 0x200000));
  v360 = __ROR8__(v359, 8);
  v361 = v359 ^ __ROR8__(v357, 61);
  v362 = v361 ^ 0x4DB7ACF4E07D9443;
  v363 = (((v360 ^ 0x2243573FF2AF96E8) + 0x2D41E6A350C4259BLL) ^ ((v360 ^ 0x10200B5E8D1F328ELL) + 0x1F22BAC22F7481FDLL) ^ ((v360 ^ 0xCDDC2F3FC184D183) - 0x3D21615C9C109D0ELL)) + (((v361 ^ 0xEC9092966C222546) + 0x5ED8C19D73A04EFBLL) ^ ((v361 ^ 0xBD6269AB7008731FLL) + 0xF2A3AA06F8A18A4) ^ ((v361 ^ 0xA68DFBD6EB36147ELL) + 0x14C5A8DDF4B47FC3)) - 0x35F516A304FDF034;
  *&v350 = __ROR8__(v362, 61);
  v364 = v363 ^ v350 ^ 0x853F43ED41D376F2;
  v365 = (((v363 ^ v350 ^ 0xACDF4992A75258B4) - 0x29E00A7FE6812E46) ^ ((v363 ^ v350 ^ 0x98B3E815819D90A6) - 0x1D8CABF8C04EE654) ^ ((v363 ^ v350 ^ 0xCC7BE3CB00A902E6) - 0x4944A026417A7414)) + ((((v363 << 56) ^ 0x192C450A116A402CLL) + 0x2576521835215F01) ^ (((v363 << 56) ^ 0xD5C0C6BBF24EEB55) - 0x16652E5629FA0B86) ^ (((v363 << 56) ^ 0x1DEC83B1E324AB79) + 0x21B694A3C76FB456)) + ((((v363 >> 8) ^ 0x330186B5B8F4E676) - 0x6CF139514AADF66DLL) ^ (((v363 >> 8) ^ 0x2EB32DAC7B49B64ALL) - 0x714392488910A651) ^ (((v363 >> 8) ^ 0x1D9CF93B77203845) - 0x426C46DF8579285ELL)) - 0x105327AA75D0EAC5;
  v366 = v365 ^ __ROR8__(v364, 61);
  *&v350 = __ROR8__(v365 ^ 0xF1AD040F639B7ED3, 8);
  v367 = v366 ^ 0xF51D068069F72B94;
  v368 = ((2 * v350) & 0xFB77B64D77FDFDEELL) + (v350 ^ 0xFDBBDB26BBFEFEF7) + (((v366 ^ 0x81AF42ACF7E29575) - 0x74B2442C9E15BEE1) ^ ((v366 ^ 0x90D3A12CB6A069CLL) + 0x3EFC36D5D62D2F8) ^ ((v366 ^ 0x904F71BA62BE0D09) - 0x6552773A0B49269DLL));
  v369 = v368 - 0xFCBCBA2843D4983;
  v370 = (v368 - ((2 * (v368 - 0xFCBCBA2843D4983)) & 0x659F4C50016E6476) - 0x5CFC257A83861748) ^ __ROR8__(v367, 61) ^ 0x1C17BA53AD453884;
  v371 = (v370 + __ROR8__(v369 ^ 0xC158605A13FFA118, 8)) ^ 0x4267924AAAF3CDACLL;
  v372 = (v371 ^ __ROR8__(v370, 61)) + __ROR8__(v371, 8);
  v373 = STACK[0x55F0] - (STACK[0x5630] & 0x28B0B560FFA9AC2ELL) + 0x14585AB07FD4D617;
  LODWORD(v367) = (((v373 & 0xFFFFFFF8 ^ 0x50311FC4) + 1474910850) ^ ((v373 & 0xFFFFFFF8 ^ 0x5C65F7F4) + 1539158706) ^ ((v373 & 0xFFFFFFF8 ^ 0x73803E20) + 1951955814)) - 1037605126;
  v374 = *(STACK[0x5420] + (STACK[0x55D0] & (v367 ^ ((v367 ^ 0x666733BE) - 1044489183) ^ ((v367 ^ 0x8445BFD6) + 597479497) ^ ((v367 ^ 0x5DD2C3F6) - 99898263) ^ ((v367 ^ 0xE7D6DFFF) + 1074770018) ^ 0x58269060)));
  *&v350 = __ROR8__(v374, 61);
  v375 = ((((v373 >> 8) ^ 0x4E52A07CEA1D0847) - 0x4B728903D747A6B3) ^ (((v373 >> 8) ^ 0x9A13F2A3B8670750) + 0x60CC24237AC2565CLL) ^ (((v373 >> 8) ^ 0xD4550A85E205DBC1) + 0x2E8ADC0520A08ACBLL)) + (((((v373 & 0xFFFFFFFFFFFFFFF8) << 56) ^ 0x260DC3C4D946E468) - 0x17090364BCA08CFDLL) ^ ((((v373 & 0xFFFFFFFFFFFFFFF8) << 56) ^ 0xCCF63D38A1891EBFLL) + 0x20D02673B9089D6) ^ ((((v373 & 0xFFFFFFFFFFFFFFF8) << 56) ^ 0xFAFBFEFC78CFFAD7) + 0x3400C1A3E2D66DBELL)) + 0x263931C5F30BE2B7 + v374;
  v376 = (v350 - ((2 * v350) & 0x2115AB89F6F65A20) - 0x6F752A3B0484D2F0) ^ v375;
  *&v350 = __ROR8__(v375 ^ 0xBFBA2C3639272695, 8);
  v377 = (((v376 ^ 0xB10A35F9D372299FLL) - 0x1FD9ACB48765A1C4) ^ ((v376 ^ 0x44426CB230684FCBLL) + 0x156E0A009B803870) ^ ((v376 ^ 0xC820F5F38481AA99) - 0x66F36CBED09622C2)) + (((v350 ^ 0xD8DF1387B9142E69) + 0x324DA494C7E2D83ELL) ^ ((v350 ^ 0xCF51E3AB589D031CLL) + 0x25C354B8266BF549) ^ ((v350 ^ 0x5F9CA879AB2CEAB2) - 0x4AF1E0952A25E319)) - 0xEC5B95100C6ECFELL;
  v378 = v377 ^ __ROR8__(v376 ^ 0xAED3994D5417885BLL, 61);
  *&v350 = __ROR8__(v377, 8);
  v379 = ((((v378 ^ 0x8D9837CF8CFFA29DLL) + 0x2D912D25E799C9F2) ^ ((v378 ^ 0x89CC658EB05897EELL) + 0x29C57F64DB3EFC83) ^ ((v378 ^ 0x907885578E252EC7) + 0x30719FBDE54345ACLL)) + 0x7454F8A4E232E17 + ((((v350 - ((2 * v350) & 0x4DED21E6C38BEAECLL) - 0x59096F0C9E3A0A8ALL) ^ 0x3CC080D09DAB6A64) + 0x5EAB072394B81E23) ^ (((v350 - ((2 * v350) & 0x4DED21E6C38BEAECLL) - 0x59096F0C9E3A0A8ALL) ^ 0x1206AAF729326052) + 0x706D2D0420211415) ^ (((v350 - ((2 * v350) & 0x4DED21E6C38BEAECLL) - 0x59096F0C9E3A0A8ALL) ^ 0x88394FAC6A721F7FLL) - 0x15AD37A09C9E94C6))) ^ 0xC56BEA64FCF88A4DLL;
  *&v350 = __ROR8__(v379, 8);
  v380 = v379 ^ __ROR8__(v378, 61);
  v381 = v380 ^ 0xD5276DCDA469ED91;
  v382 = ((((v350 ^ 0x880A6FC4D30F550FLL) - 0x20AC40D1FB53ACDLL) ^ ((v350 ^ 0xB38090FCB0F94CB4) - 0x39803B357C432376) ^ ((v350 ^ 0x46F763488CF74AEFLL) + 0x3308377EBFB2DAD3)) + (((v380 ^ 0xF5E54B200CB1DED3) - 0x20C226EDA8D83342) ^ ((v380 ^ 0x28FA10626C246574) + 0x222825037B2771BLL) ^ ((v380 ^ 0x1E59318F5D6327ELL) + 0x2B3D012AAE402011)) + 0x15ADD5054E5A0DELL) ^ 0x9D590D2C398EDFB2;
  v383 = v382 ^ __ROR8__(v381, 61);
  *&v350 = __ROR8__(v382, 8);
  v384 = (((v383 ^ 0xF0BE204CE934367ALL) + 0x7D4EA9D397154EDALL) ^ ((v383 ^ 0xA02E3F398A86B05ALL) + 0x2DDEB6A6F4A7C8FALL) ^ ((v383 ^ 0xAD761C544E070203) + 0x208695CB30267AA1)) + (((v350 ^ 0x43197D8604D397ADLL) + 0x3EFD461D83CF9AA2) ^ ((v350 ^ 0xB9F98F1A49F64609) - 0x3BE24B7E3115B4FALL) ^ ((v350 ^ 0x9953F9B3D5813702) - 0x1B483DD7AD62C5F1)) + 0x7192448D8CB217D4;
  v385 = v384 ^ __ROR8__(v383 ^ 0x720F766081DE875CLL, 61);
  *&v350 = __ROR8__(v384 ^ 0x7D5BC896DF876118, 8);
  v386 = (((v385 ^ 0x868FECDB91D5863FLL) - 0x39978DE5F2F8787FLL) ^ ((v385 ^ 0x9D8EB35020098A7DLL) - 0x2296D26E4324743DLL) ^ ((v385 ^ 0x95E7F189B11F696DLL) - 0x2AFF90B7D232972DLL)) + 0x15E43DD3E65DB304 + (((v350 ^ 0x50CB6500E2058B46) - 0x78A2FD5BF9D680CCLL) ^ ((v350 ^ 0x6E5AEB5FD89AE06ALL) - 0x46337304C349EBE0) ^ ((v350 ^ 0xF51D7893A3237733) + 0x228B1F37470F8347));
  v387 = v386 ^ __ROR8__(v385 ^ 0xBF18613E632DFE40, 61);
  *(&v350 + 1) = v386 ^ 0x18;
  *&v350 = v386 ^ 0xC158605A13FFA100;
  v388 = v350 >> 8;
  *(&v350 + 1) = v387 ^ 0xEAE19B90C8B7A61;
  *&v350 = v387 ^ 0x4000000000000000;
  v389 = __ROR8__((v388 + (v387 ^ 0x4EAE19B90C8B7A61)) ^ 0x4267924AAAF3CDACLL, 8) + ((v388 + (v387 ^ 0x4EAE19B90C8B7A61)) ^ 0x4267924AAAF3CDACLL ^ (v350 >> 61));
  v390 = STACK[0x5710] + 0x4517B4946E50300 - (STACK[0x5750] & 0x8A2F6928DCA0780) + 192;
  LODWORD(v381) = (((v390 & 0xFFFFFFF8 ^ 0xBBD00E39) - 1832262196) ^ ((v390 & 0xFFFFFFF8 ^ 0xE4579472) - 850493567) ^ ((v390 & 0xFFFFFFF8 ^ 0x1962998B) + 813396602)) - 1402126526;
  v391 = (v381 ^ 0xC53B4170) & (2 * (v381 & 0xC5A3427A)) ^ v381 & 0xC5A3427A;
  v392 = ((2 * (v381 ^ 0xC73B45C4)) ^ 0x5300F7C) & (v381 ^ 0xC73B45C4) ^ (2 * (v381 ^ 0xC73B45C4)) & 0x29807BE;
  v393 = (v392 ^ 0x10033A) & (4 * v391) ^ v391;
  v394 = ((4 * (v392 ^ 0x2880082)) ^ 0xA601EF8) & (v392 ^ 0x2880082) ^ (4 * (v392 ^ 0x2880082)) & 0x29807BC;
  v395 = (v394 ^ 0x20006A6) & (16 * v393) ^ v393;
  v396 = ((16 * (v394 ^ 0x980106)) ^ 0x29807BE0) & (v394 ^ 0x980106) ^ (16 * (v394 ^ 0x980106)) & 0x29807B0;
  v397 = v395 ^ 0x29807BE ^ (v396 ^ 0x80031E) & (v395 << 8);
  v398 = (v397 << 16) ^ 0x7BE0000;
  *(&v350 + 1) = v390 & 0xFFFFFFF8 ^ 0xC0;
  *&v350 = v390 ^ 0x4517B4946E50300;
  v399 = *(STACK[0x5420] + (((v381 ^ (2 * ((v397 << 16) & 0x2980000 ^ v397 ^ v398 & (((v396 ^ 0x218041E) << 8) & 0x2980000 ^ 0x2980000 ^ (((v396 ^ 0x218041E) << 8) ^ 0x98070000) & (v396 ^ 0x218041E))))) & 0xFFFFFFF8 ^ 0xC5A34D00) & STACK[0x5340])) + (v350 >> 8);
  *&v350 = __ROR8__(*(STACK[0x5420] + (((v381 ^ (2 * ((v397 << 16) & 0x2980000 ^ v397 ^ v398 & (((v396 ^ 0x218041E) << 8) & 0x2980000 ^ 0x2980000 ^ (((v396 ^ 0x218041E) << 8) ^ 0x98070000) & (v396 ^ 0x218041E))))) & 0xFFFFFFF8 ^ 0xC5A34D00) & STACK[0x5340])), 61);
  v400 = v350 - ((2 * v350) & 0xCB8A418B0F3090FCLL) + 0x65C520C58798487ELL;
  *&v350 = __ROR8__(v399 ^ 0x503B556002F6729ALL, 8);
  v401 = v400 ^ v399;
  v402 = v401 ^ 0x731A3545E8DE5756;
  v403 = (((v350 ^ 0xFD206E7908F5B63ELL) - 0x2E95FFC15DCCF754) ^ ((v350 ^ 0x9D835FE4BE01CD5CLL) - 0x4E36CE5CEB388C36) ^ ((v350 ^ 0x275EE8B1AA6A6DF1) + 0xB1486F600ACD365)) + 0x4F85B5913D4E56EELL + (((v401 ^ 0x9205CF35DBB99161) + 0x1EE0058FCC9839C9) ^ ((v401 ^ 0xE935724C91A3C467) + 0x65D0B8F686826CCFLL) ^ ((v401 ^ 0xB317E4C05162FCA5) + 0x3FF22E7A4643540DLL));
  v404 = __ROR8__(v403, 8);
  v405 = v403 ^ __ROR8__(v402, 61);
  v406 = ((((v405 ^ 0xF94EAD2EAE592B29) + 0x3228C3538C607BC7) ^ ((v405 ^ 0xD24783A708843D18) + 0x1921EDDA2ABD6DF8) ^ ((v405 ^ 0xFB1731D1150ADE9CLL) + 0x30715FAC37338E74)) - 0x5FF25745CBF9AEBLL + ((((v404 - ((2 * v404) & 0x257193492AC04162) - 0x6D47365B6A9FDF4FLL) ^ 0xDC5A52A6A5069273) - 0x5B9225CBBA66AFA5) ^ (((v404 - ((2 * v404) & 0x257193492AC04162) - 0x6D47365B6A9FDF4FLL) ^ 0x5E83ABFDA2DFE710) + 0x26B4236F4240253ALL) ^ (((v404 - ((2 * v404) & 0x257193492AC04162) - 0x6D47365B6A9FDF4FLL) ^ 0x1068C5872D97B5EDLL) + 0x685F4D15CD0877C5))) ^ 0x4014408476272734;
  v407 = v406 ^ __ROR8__(v405, 61);
  *&v350 = __ROR8__(v406, 8);
  v408 = (v407 ^ 0x781320CA1532BC6ALL) >> ((v324 ^ 0x2B) & 0x30 ^ 0x20) >> ((v324 ^ 0x2B) & 0xD ^ 0xC) >> (v324 & 9 ^ 8) >> (v324 & 0x34 ^ 0x30);
  v409 = ((((v350 ^ 0x1528719773F0F204) - 0x18039E3E46515D02) ^ ((v350 ^ 0xFF35361D86CB21EALL) + 0xDE1264B4C957114) ^ ((v350 ^ 0xEEE5A450FAB05F17) + 0x1C31B40630EE0FEFLL)) + (((v407 ^ 0x14722790492C31C0) - 0x319B28F13B99A1C4) ^ ((v407 ^ 0xDC3BEDF4CCC03EDLL) - 0x282AB1BE3E7993E9) ^ ((v407 ^ 0x61A2B98510D28E47) - 0x444BB6E462671E43)) + 0x67CD3C1EA1B1506DLL) ^ 0x2E5222B49D6879D1;
  v410 = v409 ^ (((((8 * v407) ^ 0xEE35BCBD1089A980) + 0x190CCD67F763978ALL) ^ (((8 * v407) ^ 0x73D3BE8CCB04C96BLL) - 0x7B1530A9D311089DLL) ^ (((8 * v407) ^ 0x5D7F0461721883BBLL) - 0x55B98A446A0D424DLL)) + 0x20BB6343640EA78 + (((v408 ^ 0x5DAE6A3050F8F97) - 0x3C76CB1D81CF4845) ^ ((v408 ^ 0xD3767EFEE8BCCE2DLL) + 0x1525ACBF9383F601) ^ ((v408 ^ 0xD6AC985DEDB341BALL) + 0x10FF4A1C968C7998)));
  *&v350 = __ROR8__(v409, 8);
  v411 = v410 + v350 - 0xE52FBF09C64812DLL - ((2 * (v410 + v350)) & 0xE35A081EC736FDA6);
  v412 = v411 ^ __ROR8__(v410, 61);
  v413 = (v412 + __ROR8__(v411, 8)) ^ 0xC158605A13FFA118;
  v414 = v413 ^ __ROR8__(v412, 61);
  v415 = v414 + __ROR8__(v413, 8);
  v416 = __ROR8__(v414, 61) ^ 0x267924AAAF3CDACLL ^ v415;
  *&v350 = __ROR8__(v415 ^ 0x4267924AAAF3CDACLL, 8);
  v417 = (v372 ^ 0xBF8CA48E12B6B115) >> STACK[0x5490];
  v389 ^= 0xBF8CA48E12B6B115;
  v418 = v389 >> STACK[0x5490];
  v419 = STACK[0x5520];
  v420 = v417 + 16 * (v389 << STACK[0x5520]);
  v421 = v345 ^ 0xCF ^ (((*(v338 + (v417 ^ 0xB7)) ^ v417 ^ 0xA0) << 24) | (((*(v338 + (BYTE1(v420) ^ 0xF6)) ^ BYTE1(v420)) ^ 0x60) << 16) | ((*(v338 + (BYTE2(v420) ^ 0x71)) ^ BYTE2(v420) ^ 0x5D) << 8) | BYTE3(v420) ^ *(v337 + (BYTE3(v420) ^ 0x97)));
  LODWORD(STACK[0x5760]) = v421;
  LODWORD(v389) = v346 ^ (((*(v334 + (BYTE4(v420) ^ 0x20)) ^ 0xA4) << 24) | ((*(v334 + (BYTE5(v420) ^ 0xFCLL)) ^ 0x9C) << 16) | ((*(v337 + (BYTE6(v420) ^ 7)) ^ BYTE6(v420) ^ 0xE) << 8) | HIBYTE(v420) ^ *(v337 + (HIBYTE(v420) ^ 0x3E)));
  v422 = v418 + 16 * (((v350 + v416) ^ 0xF8CA48E12B6B115) << v419);
  v423 = (((*(v337 + (v418 ^ 0xE9)) ^ v418 ^ 0xFFFFFFFB) << 24) | ((BYTE1(v422) ^ *(v338 + (BYTE1(v422) ^ 0xCELL))) << 16) | ((*(v334 + (BYTE2(v422) ^ 0x98)) ^ 0xD5) << 8) | *(v333 + (BYTE3(v422) ^ 0xA3)) ^ 0xD3) ^ LODWORD(STACK[0x5700]);
  LODWORD(v422) = (((*(v337 + (BYTE4(v422) ^ 0x94)) ^ HIDWORD(v422) ^ 0x89) << 24) | ((*(v337 + (BYTE5(v422) ^ 0xA0)) ^ BYTE5(v422) ^ 0x72) << 16) | ((*(v337 + (BYTE6(v422) ^ 0x66)) ^ BYTE6(v422) ^ 0x8F) << 8) | HIBYTE(v422) ^ *(v337 + (HIBYTE(v422) ^ 0xF7))) ^ LODWORD(STACK[0x56E0]);
  v424 = STACK[0x52A8];
  LODWORD(v416) = ((BYTE1(v422) ^ 0xBE) - (BYTE1(v422) ^ 0x448CE7AC)) ^ *(STACK[0x52A8] + 4 * (BYTE1(v422) ^ 0xD8u));
  v425 = STACK[0x5298];
  v426 = *(STACK[0x5298] + 4 * (BYTE2(v422) ^ 0x63u));
  v427 = v422 ^ 0xE8;
  v428 = v422 ^ 0x30;
  LODWORD(STACK[0x5490]) = v422 ^ 0x30;
  LODWORD(v417) = (v422 ^ 0x8E) - (v422 ^ 0x448CE79C);
  v429 = STACK[0x56F0];
  LODWORD(v422) = *(STACK[0x56F0] + 4 * (BYTE3(v422) ^ 0xC1));
  v430 = *(v424 + 4 * v427) ^ __ROR4__(v426 ^ 0x65B01801 ^ ((v426 ^ 0xE6C37DBA) >> 4) ^ ((v426 ^ 0xE6C37DBA) >> 2), 16) ^ __ROR4__(v422 ^ 0xFC4C5E10 ^ (2 * (v422 ^ 0x3BDA0EEC) * (v422 ^ 0x3BDA0EEC)), 8) ^ v421 ^ v417 ^ __ROR4__(v416, 24) ^ 0xE7139700;
  LODWORD(STACK[0x5750]) = v389 ^ 0x10;
  v431 = v430 ^ v389 ^ 0x10;
  v432 = v428 ^ v423;
  v433 = v431 ^ v428 ^ v423;
  v434 = STACK[0x53B8];
  v435 = -315074815 * *(STACK[0x53B8] + 4 * (HIBYTE(v433) ^ 0xB3));
  DWORD1(v350) = v435 ^ 0x3B8A6687 ^ (v435 >> 2) & 0x2E89263E;
  LODWORD(v350) = DWORD1(v350);
  v436 = v350 >> 8;
  v437 = STACK[0x54F0];
  if ((v250 & 2) == 0)
  {
    v437 = STACK[0x54E0];
  }

  LODWORD(STACK[0x5420]) = v437;
  v438 = STACK[0x5600];
  if ((v250 & 2) == 0)
  {
    v438 = STACK[0x5550];
  }

  LODWORD(STACK[0x55F0]) = v438;
  LODWORD(STACK[0x5340]) = v315;
  v439 = STACK[0x54D0];
  if ((v250 & 2) == 0)
  {
    v439 = v315;
  }

  LODWORD(STACK[0x56E0]) = v439;
  v440 = STACK[0x5730];
  if ((v250 & 2) != 0)
  {
    v440 = STACK[0x5610];
  }

  LODWORD(STACK[0x5308]) = v440;
  v441 = STACK[0x5640];
  if ((v250 & 2) != 0)
  {
    v441 = STACK[0x5620];
  }

  LODWORD(STACK[0x5700]) = v441;
  LODWORD(STACK[0x5338]) = v318;
  v442 = STACK[0x54C0];
  if ((v250 & 2) == 0)
  {
    v442 = v318;
  }

  LODWORD(STACK[0x5680]) = v442;
  v443 = STACK[0x55A0];
  if ((v250 & 2) != 0)
  {
    v443 = STACK[0x5590];
  }

  LODWORD(STACK[0x5580]) = v443;
  v444 = STACK[0x5540];
  if ((v250 & 2) != 0)
  {
    v444 = STACK[0x5530];
  }

  LODWORD(STACK[0x5630]) = v444;
  STACK[0x5328] = v324;
  LODWORD(STACK[0x5320]) = v325;
  if ((v250 & 2) != 0)
  {
    v445 = v325;
  }

  else
  {
    v445 = v324;
  }

  LODWORD(STACK[0x55D0]) = v445;
  v446 = STACK[0x5510];
  if ((v250 & 2) == 0)
  {
    v446 = STACK[0x5500];
  }

  LODWORD(STACK[0x5710]) = v446;
  v447 = STACK[0x5570];
  if ((v250 & 2) == 0)
  {
    v447 = STACK[0x5560];
  }

  LODWORD(STACK[0x5520]) = v447;
  v448 = v436 & 0x1000;
  if ((v430 & v436 & 0x1000) != 0)
  {
    v448 = -v448;
  }

  v449 = v448 + v430;
  v450 = *(v425 + 4 * (BYTE1(v433) ^ 0x70u));
  v451 = v433 ^ 0x7FE71397;
  v452 = *(v425 + 4 * (BYTE2(v433) ^ 0x84u));
  v453 = v436 & 0xFFFFEFFF ^ *(v424 + 4 * ((v431 ^ v428 ^ v423) ^ 0x4Fu)) ^ __ROR4__(v450 ^ 0x65B01801 ^ ((v450 ^ 0xE6C37DBA) >> 4) ^ ((v450 ^ 0xE6C37DBA) >> 2), 24) ^ __ROR4__(v452 ^ 0x65B01801 ^ ((v452 ^ 0xE6C37DBA) >> 4) ^ ((v452 ^ 0xE6C37DBA) >> 2), 16) ^ v449 ^ (((v431 ^ v428 ^ v423) ^ 0x29) - ((v431 ^ v428 ^ v423) ^ 0x448CE73B));
  LODWORD(STACK[0x5470]) = v453;
  LODWORD(STACK[0x5480]) = v423;
  v454 = v423 - 683208510 - ((2 * v423) & 0xAE8E2184);
  v455 = v451 ^ v454 ^ v453 ^ 0xD74710C2;
  v456 = -315074815 * *(v434 + 4 * (BYTE2(v455) ^ 0xCCu));
  v457 = v425;
  v458 = *(v425 + 4 * (BYTE1(v455) ^ 0x63u));
  v459 = v458 ^ 0x65B01801 ^ ((v458 ^ 0xE6C37DBA) >> 4) ^ ((v458 ^ 0xE6C37DBA) >> 2);
  v460 = *(v425 + 4 * (HIBYTE(v455) ^ 0x26));
  v461 = *(v425 + 4 * (v455 ^ 0x63u)) ^ 0xE6C37DBA;
  v462 = v461 ^ (v461 >> 4) ^ (v461 >> 2) ^ __ROR4__(v456 ^ 0x3B8A6687 ^ (v456 >> 2) & 0x2E89263E, 16) ^ __ROR4__(v459, 24) ^ __ROR4__(v460 ^ 0x65B01801 ^ ((v460 ^ 0xE6C37DBA) >> 4) ^ ((v460 ^ 0xE6C37DBA) >> 2), 8);
  v463 = v432 ^ v462;
  v464 = v429;
  v465 = *(v429 + 4 * (BYTE1(v463) ^ 0xA4u));
  v466 = *(v429 + 4 * (BYTE2(v463) ^ 0xB2u));
  v467 = *(v464 + 4 * (HIBYTE(v463) ^ 0x94));
  v468 = *(v424 + 4 * (v463 ^ 0x63u)) ^ __ROR4__(v465 ^ 0xFC4C5E10 ^ (2 * (v465 ^ 0x3BDA0EEC) * (v465 ^ 0x3BDA0EEC)), 24) ^ __ROR4__(v466 ^ 0xFC4C5E10 ^ (2 * (v466 ^ 0x3BDA0EEC) * (v466 ^ 0x3BDA0EEC)), 16) ^ __ROR4__(v467 ^ 0xFC4C5E10 ^ (2 * (v467 ^ 0x3BDA0EEC) * (v467 ^ 0x3BDA0EEC)), 8) ^ (v462 - 683208510 - ((2 * v462) & 0xAE8E2184)) ^ ((v463 ^ 5) - (v463 ^ 0x448CE717));
  v469 = v453 ^ 0xD74710C2 ^ v468;
  LODWORD(STACK[0x5280]) = v469;
  v470 = v468 ^ v454;
  v471 = v470 ^ 0x41E71397 ^ v463 ^ 0x557365BB;
  v472 = v470 ^ 0x41E71397 ^ v463;
  v473 = *(v464 + 4 * (BYTE1(v471) ^ 0xA4u));
  v474 = -315074815 * *(v434 + 4 * (HIBYTE(v471) ^ 0x99));
  v475 = *(v464 + 4 * (BYTE2(v471) ^ 0xB2u));
  v476 = *(v425 + 4 * (v472 ^ 0x63u)) ^ 0xE6C37DBA;
  v477 = v476 ^ (v476 >> 4) ^ (v476 >> 2) ^ __ROR4__(v473 ^ 0xFC4C5E10 ^ (2 * (v473 ^ 0x3BDA0EEC) * (v473 ^ 0x3BDA0EEC)), 24) ^ __ROR4__(v474 ^ 0x3B8A6687 ^ (v474 >> 2) & 0x2E89263E, 8) ^ __ROR4__(v475 ^ 0xFC4C5E10 ^ (2 * (v475 ^ 0x3BDA0EEC) * (v475 ^ 0x3BDA0EEC)), 16);
  v478 = v462 ^ 0x7FE71397 ^ v431 ^ v477;
  v479 = v470 ^ 0x97E71397 ^ v478;
  v480 = v479 ^ v472;
  v481 = v480 ^ 0x7A;
  v482 = v480 ^ 0x2D7365BB;
  v483 = *(v425 + 4 * (BYTE2(v480) ^ 0x10u));
  v484 = ((((v480 ^ 0x65BB) >> 8) ^ 0xBE) - (((v480 ^ 0x65BB) >> 8) ^ 0x448CE7AC)) ^ *(v424 + 4 * (((v480 ^ 0x65BB) >> 8) ^ 0xD8u));
  v485 = *(v425 + 4 * (HIBYTE(v480) ^ 0x4E)) ^ 0xE6C37DBA;
  v486 = *(v464 + 4 * v481) ^ (2 * (*(v464 + 4 * v481) ^ 0x3BDA0EEC) * (*(v464 + 4 * v481) ^ 0x3BDA0EEC)) ^ v477 ^ __ROR4__(v483 ^ 0x65B01801 ^ ((v483 ^ 0xE6C37DBA) >> 4) ^ ((v483 ^ 0xE6C37DBA) >> 2), 16) ^ __ROR4__((v485 >> 4) ^ (v485 >> 2) ^ (v485 - 2089589317 - ((2 * v485) & 0x6E6CB76)), 8) ^ v469 ^ __ROR4__(v484, 24) ^ 0xDCC999EC;
  v487 = v486 ^ v478;
  v488 = v486 ^ v478 ^ v479;
  v489 = v488 ^ v482;
  v490 = v488 ^ v482 ^ 0xF70226D0;
  v491 = -315074815 * *(v434 + 4 * (BYTE1(v490) ^ 0xCCu));
  v492 = v488 ^ v482 ^ 0x8F0226D0;
  v493 = -315074815 * *(v434 + 4 * (BYTE2(v490) ^ 0xCCu));
  v494 = -315074815 * *(v434 + 4 * ((v488 ^ v482) ^ 0x1Cu));
  v495 = v494 ^ __ROR4__(v491 ^ 0x3B8A6687 ^ (v491 >> 2) & 0x2E89263E, 24) ^ (v494 >> 2) & 0x2E89263E ^ __ROR4__(v493 ^ 0x3B8A6687 ^ (v493 >> 2) & 0x2E89263E, 16) ^ v486 ^ __ROR4__(*(v424 + 4 * (HIBYTE(v492) ^ 0xD8)) ^ ((HIBYTE(v492) ^ 0xBE) - (HIBYTE(v492) ^ 0x448CE7AC)) ^ 0xE71397, 8);
  v496 = v488 ^ 0xA271436B;
  LODWORD(STACK[0x5278]) = v495 ^ 0x1494762C;
  v497 = v495 ^ 0x1494762C ^ v487;
  LODWORD(STACK[0x5270]) = v497 ^ 0xBA94762C;
  v498 = v497 ^ 0xBA94762C ^ v488 ^ 0xA271436B;
  v499 = v498 ^ v488 ^ v482;
  v500 = v499 ^ 0x67FB25EC;
  v501 = v424;
  v502 = ((((v499 ^ 0x25EC) >> 8) ^ 0xBE) - (((v499 ^ 0x25EC) >> 8) ^ 0x448CE7AC)) ^ *(v424 + 4 * (((v499 ^ 0x25EC) >> 8) ^ 0xD8u));
  v503 = *(v464 + 4 * (BYTE2(v499) ^ 0x3Au));
  v504 = -315074815 * *(v434 + 4 * ((v498 ^ v488 ^ v482) ^ 0x20u));
  v505 = (v504 >> 2) & 0x2E89263E ^ v504 ^ __ROR4__(v503 ^ 0xFC4C5E10 ^ (2 * (v503 ^ 0x3BDA0EEC) * (v503 ^ 0x3BDA0EEC)), 16) ^ v495 ^ __ROR4__(*(v501 + 4 * (((v499 ^ 0x67FB25ECu) >> 24) ^ 0xD8)) ^ ((((v499 ^ 0x67FB25ECu) >> 24) ^ 0xBE) - (((v499 ^ 0x67FB25ECu) >> 24) ^ 0x448CE7AC)) ^ 0xE71397, 8) ^ __ROR4__(v502, 24);
  v506 = v488 ^ 0xB1F0A6D6 ^ v505;
  v507 = v506 ^ v499;
  v508 = *(v425 + 4 * (((v506 ^ v499) >> 8) ^ 0x12u));
  v509 = v507 ^ 0x4D;
  v510 = STACK[0x5700] & 0x10;
  v511 = (v507 ^ 0x656B7181) >> (v510 ^ 0x10);
  v512 = v507 ^ 0xACA3A5FA;
  v513 = *(v425 + 4 * (HIBYTE(v507) ^ 6));
  LODWORD(v464) = *(v501 + 4 * ((v511 >> v510) ^ 0xD8u)) ^ (((v511 >> v510) ^ 0xBE) - ((v511 >> v510) ^ 0x448CE7AC)) ^ 0xE71397;
  v514 = v497 ^ 0x65FA1EF7;
  v515 = v505 ^ 0xFF3E4AE5;
  v516 = v514 ^ v505;
  v517 = (-315074815 * *(v434 + 4 * v509) - ((1517334018 * *(v434 + 4 * v509)) & 0x53FEB850) + 704601128) ^ ((-315074815 * *(v434 + 4 * v509)) >> 2) & 0x2E89263E ^ __ROR4__(v508 ^ 0x65B01801 ^ ((v508 ^ 0xE6C37DBA) >> 4) ^ ((v508 ^ 0xE6C37DBA) >> 2), 24) ^ __ROR4__(v513 ^ 0x65B01801 ^ ((v513 ^ 0xE6C37DBA) >> 4) ^ ((v513 ^ 0xE6C37DBA) >> 2), 8) ^ v505 ^ 0xFF3E4AE5 ^ __ROR4__(v464, 16);
  v518 = v517 ^ 0xFF1964C4 ^ v514 ^ v505;
  v519 = v518 ^ v506 ^ v512;
  v520 = v519 ^ 0xC1A1E837;
  v521 = v519 ^ 0x73F7579F;
  v522 = -315074815 * *(v434 + 4 * (HIBYTE(v519) ^ 0x73));
  HIDWORD(v523) = v522 ^ 0x3B8A6687 ^ (v522 >> 2) & 0x2E89263E;
  LODWORD(v523) = HIDWORD(v523);
  LODWORD(v457) = *(v457 + 4 * (v520 ^ 0x90u)) ^ 0xE6C37DBA;
  v524 = __ROR4__(v457 ^ (v457 >> 4) ^ (v457 >> 2) ^ v517 ^ 0xFF1964C4 ^ 0x5DE53547 ^ ((v523 >> 8) - ((2 * (v523 >> 8)) & 0xB4BF264A) - 631270619), 12) ^ 0x4ED082F9;
  LODWORD(v457) = -315074815 * *(v434 + 4 * (BYTE2(v520) ^ 0x83u));
  HIDWORD(v523) = v457 ^ 0x3B8A6687 ^ (v457 >> 2) & 0x2E89263E;
  LODWORD(v523) = HIDWORD(v523);
  v525 = (v523 >> 16) ^ __ROR4__(v524, 20) ^ __ROR4__(((BYTE1(v520) ^ 0xCC) - (BYTE1(v520) ^ 0x448CE7DE)) ^ *(v501 + 4 * (BYTE1(v520) ^ 0xAAu)), 24) ^ 0x5E5C565E;
  v526 = LODWORD(STACK[0x5290]) ^ (v489 & 0x10000000 | 0x2E4021EC) ^ v492 & 0xEFFFFFFF;
  v527 = (LODWORD(STACK[0x5390]) - 2 * ((v518 ^ v506 ^ 0x4FAC2838) & STACK[0x5360]) + (((v518 ^ v506 ^ 0x95FAEEA7) - 1415251600) ^ ((v518 ^ v506 ^ 0x48C8C509) + 1989595842) ^ ((v518 ^ v506 ^ 0x129E0396) + 750785631)) + 1576623152) ^ LODWORD(STACK[0x5388]);
  LODWORD(v501) = v527 ^ 0x49B4CDAC;
  v528 = v527 ^ 0x6E6E13E6;
  v529 = (((LODWORD(STACK[0x52F0]) ^ 0x960E6A84 ^ LODWORD(STACK[0x5280])) + (LODWORD(STACK[0x5790]) ^ 0x42277AF7 ^ LODWORD(STACK[0x5470]))) ^ LODWORD(STACK[0x5460])) + 789999153 + v501;
  v530 = LODWORD(STACK[0x5288]) ^ 0xFEF09550;
  v531 = v530 ^ LODWORD(STACK[0x5760]);
  v532 = v530 ^ LODWORD(STACK[0x5750]);
  v533 = v530 ^ LODWORD(STACK[0x5480]);
  v534 = LODWORD(STACK[0x53C0]) ^ 0xFEF09550 ^ ((LODWORD(STACK[0x5490]) ^ LODWORD(STACK[0x5360]) ^ -(LODWORD(STACK[0x5490]) ^ LODWORD(STACK[0x5360])) ^ (LODWORD(STACK[0x5350]) - (LODWORD(STACK[0x5490]) ^ LODWORD(STACK[0x5360]) ^ LODWORD(STACK[0x5350])))) + LODWORD(STACK[0x5350]));
  v535 = LODWORD(STACK[0x5290]) ^ 0x22316287 ^ v486;
  v536 = LODWORD(STACK[0x5290]) ^ 0x3334457 ^ v496;
  v537 = LODWORD(STACK[0x5290]) ^ 0x8C316287 ^ v487;
  v538 = LODWORD(STACK[0x5780]) ^ 0x724D2131 ^ v498;
  v539 = LODWORD(STACK[0x5780]) ^ 0x5F3E448A ^ LODWORD(STACK[0x5270]);
  v540 = LODWORD(STACK[0x5780]) ^ 0x47DB71CD ^ LODWORD(STACK[0x5278]);
  v541 = LODWORD(STACK[0x5780]) ^ 0x9AB4220D ^ v500;
  v542 = LODWORD(STACK[0x52A0]) ^ 0x1222DB15 ^ v512;
  v543 = LODWORD(STACK[0x52A0]) ^ 0xFD6CD559 ^ v516;
  v544 = LODWORD(STACK[0x52A0]) ^ 0x18B691E0 ^ v515;
  v545 = LODWORD(STACK[0x52A0]) ^ 0xD97A5B03 ^ v506;
  if (v529)
  {
    v546 = LODWORD(STACK[0x52A0]) ^ 0xD97A5B03 ^ v506;
  }

  else
  {
    v546 = LODWORD(STACK[0x52A0]) ^ 0xFD6CD559 ^ v516;
  }

  if ((v529 & 1) == 0)
  {
    v543 = v544;
  }

  LODWORD(STACK[0x5480]) = v543;
  if (v529)
  {
    v547 = v544;
  }

  else
  {
    v547 = v542;
  }

  LODWORD(STACK[0x5470]) = v547;
  if ((v529 & 1) == 0)
  {
    v542 = v545;
  }

  LODWORD(STACK[0x5460]) = v542;
  if (v529)
  {
    v548 = LODWORD(STACK[0x52F8]) ^ 0xC41662FB ^ v521;
  }

  else
  {
    v548 = v528;
  }

  if (v529)
  {
    v549 = LODWORD(STACK[0x52F8]) ^ 0xA5260B81 ^ v517;
  }

  else
  {
    v549 = LODWORD(STACK[0x52F8]) ^ 0xC41662FB ^ v521;
  }

  if (v529)
  {
    v550 = LODWORD(STACK[0x52F8]) ^ 0x7CB9B572 ^ v518;
  }

  else
  {
    v550 = LODWORD(STACK[0x52F8]) ^ 0xA5260B81 ^ v517;
  }

  if (v529)
  {
    v551 = v528;
  }

  else
  {
    v551 = LODWORD(STACK[0x52F8]) ^ 0x7CB9B572 ^ v518;
  }

  v552 = v506 ^ LODWORD(STACK[0x5310]) ^ v525;
  v553 = v552 ^ v521 ^ 0x60887E28;
  v554 = v552 ^ 0xAC91B373;
  v555 = LODWORD(STACK[0x5310]) ^ v525;
  v556 = v555 ^ v518 ^ 0xDAB7FDCC;
  v557 = v555 ^ 0xAE01E71E;
  if (v529)
  {
    v558 = v556;
  }

  else
  {
    v558 = v557;
  }

  LODWORD(STACK[0x5490]) = v558;
  LODWORD(STACK[0x51C0]) = v554;
  if (v529)
  {
    v559 = v554;
  }

  else
  {
    v559 = v556;
  }

  LODWORD(STACK[0x51C8]) = v553;
  if (v529)
  {
    v560 = v557;
  }

  else
  {
    v560 = v553;
  }

  LODWORD(STACK[0x5260]) = v532;
  LODWORD(STACK[0x5258]) = v533;
  if (v529)
  {
    v532 = v533;
  }

  LODWORD(STACK[0x5280]) = v531;
  LODWORD(STACK[0x5250]) = v534;
  if (v529)
  {
    v561 = v531;
  }

  else
  {
    v561 = v534;
  }

  LODWORD(STACK[0x5248]) = v526;
  LODWORD(STACK[0x5200]) = v536;
  if (v529)
  {
    v562 = v526;
  }

  else
  {
    v562 = v536;
  }

  LODWORD(STACK[0x5240]) = v535;
  LODWORD(STACK[0x51F8]) = v537;
  if (v529)
  {
    v563 = v537;
  }

  else
  {
    v563 = v535;
  }

  LODWORD(STACK[0x51E0]) = v539;
  LODWORD(STACK[0x51D8]) = v540;
  if (v529)
  {
    v564 = v539;
  }

  else
  {
    v564 = v540;
  }

  LODWORD(STACK[0x51D0]) = v541;
  if (v529)
  {
    v538 = v541;
  }

  v565 = v546;
  LODWORD(STACK[0x53B8]) = v529;
  v566 = (v529 & 2) == 0;
  if ((v529 & 2) != 0)
  {
    v567 = v563;
  }

  else
  {
    v567 = v562;
  }

  LODWORD(STACK[0x5278]) = v567;
  if ((v529 & 2) == 0)
  {
    v562 = v563;
  }

  LODWORD(STACK[0x5270]) = v562;
  v568 = (((LODWORD(STACK[0x5720]) ^ 0x68B2588C) + 455038447) ^ ((LODWORD(STACK[0x5720]) ^ 0x563A37C7) + 630667942) ^ ((LODWORD(STACK[0x5720]) ^ 0x6C072E0C) + 531243887)) - ((((LODWORD(STACK[0x5580]) ^ 0x10760BE4) - 276171748) ^ ((LODWORD(STACK[0x5580]) ^ 0x2BAFF495) - 732951701) ^ ((LODWORD(STACK[0x5580]) ^ 0xAE40DF9A) + 1371480166)) + (((LODWORD(STACK[0x5630]) ^ 0xC48990B9) + 997617479) ^ ((LODWORD(STACK[0x5630]) ^ 0xF0780624) + 260569564) ^ ((LODWORD(STACK[0x5630]) ^ 0xA168B676) + 1586973066))) - 482880347;
  v569 = ((2 * LODWORD(STACK[0x5630])) ^ 0x66C91E4C) - 432658405;
  v570 = LODWORD(STACK[0x53C8]) >> 3;
  LODWORD(STACK[0x5760]) = v570;
  v571 = (((((LODWORD(STACK[0x5710]) ^ 0xDA1A398) - 228696984) ^ ((LODWORD(STACK[0x5710]) ^ 0x4C22A3A0) - 1277338528) ^ ((LODWORD(STACK[0x5710]) ^ 0xFAF8CE40) + 84357568)) + (((LODWORD(STACK[0x55D0]) ^ 0x40BA52A0) - 109484019) ^ ((LODWORD(STACK[0x55D0]) ^ 0x7D6CBA18) - 995131211) ^ ((LODWORD(STACK[0x55D0]) ^ 0x1ED17932) - 1491975265)) + (((LODWORD(STACK[0x55F0]) ^ 0x5D6EB951) - 1567537489) ^ ((LODWORD(STACK[0x55F0]) ^ 0x8BDC7634) + 1948486092) ^ ((LODWORD(STACK[0x55F0]) ^ 0x779A2F5C) - 2006593372)) + 1880563503) >> 1) - 1226134490;
  STACK[0x5750] = v570 ^ 0x4EC165u;
  LODWORD(STACK[0x5188]) = v532;
  if (v566)
  {
    v572 = v532;
  }

  else
  {
    v572 = v561;
  }

  LODWORD(STACK[0x5390]) = v572;
  LODWORD(STACK[0x5230]) = v564;
  LODWORD(STACK[0x5208]) = v538;
  if (v566)
  {
    v573 = v564;
  }

  else
  {
    v573 = v538;
  }

  LODWORD(STACK[0x5268]) = v573;
  v574 = STACK[0x5470];
  if (!v566)
  {
    v574 = v565;
  }

  LODWORD(STACK[0x5290]) = v574;
  LODWORD(STACK[0x5220]) = v548;
  LODWORD(STACK[0x5210]) = v550;
  if (v566)
  {
    v575 = v548;
  }

  else
  {
    v575 = v550;
  }

  LODWORD(STACK[0x5298]) = v575;
  v576 = STACK[0x5480];
  if (v566)
  {
    v576 = STACK[0x5460];
  }

  LODWORD(STACK[0x5288]) = v576;
  LODWORD(STACK[0x5238]) = v549;
  LODWORD(STACK[0x5218]) = v551;
  if (v566)
  {
    v577 = v549;
  }

  else
  {
    v577 = v551;
  }

  LODWORD(STACK[0x52A0]) = v577;
  LODWORD(STACK[0x52F0]) = v559;
  LODWORD(STACK[0x5228]) = v560;
  if (v566)
  {
    v578 = v559;
  }

  else
  {
    v578 = v560;
  }

  LODWORD(STACK[0x52A8]) = v578;
  v579 = LODWORD(STACK[0x5770]) - 201675980;
  v580 = LODWORD(STACK[0x5770]) == -1756836647;
  LODWORD(STACK[0x5310]) = v568 >> 1;
  LODWORD(STACK[0x5790]) = v569;
  LODWORD(STACK[0x5780]) = (v568 >> 1) + 1499489985;
  LODWORD(STACK[0x5770]) = v571;
  return (*(STACK[0x57D8] + 8 * ((22447 * v580) ^ v579)))();
}