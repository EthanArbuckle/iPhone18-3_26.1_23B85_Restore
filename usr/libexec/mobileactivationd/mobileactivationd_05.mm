void sub_1000F2A60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x350] = vdupq_n_s64(v12);
  *&STACK[0x360] = vdupq_n_s64(a7);
  *&STACK[0x330] = vdupq_n_s64(v8);
  *&STACK[0x340] = vdupq_n_s64(v14);
  *&STACK[0x310] = vdupq_n_s64(v10);
  *&STACK[0x320] = vdupq_n_s64(v9);
  *&STACK[0x2F0] = vdupq_n_s64(v13);
  *&STACK[0x300] = vdupq_n_s64(v11);
  *&STACK[0x2D0] = vdupq_n_s64(a8);
  *&STACK[0x2E0] = vdupq_n_s64(a1);
  *&STACK[0x2B0] = vdupq_n_s64(0x52D1CFA255142C6CuLL);
  *&STACK[0x2C0] = vdupq_n_s64(0xA5A39F44AA2858D8);
  *&STACK[0x290] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x2A0] = vdupq_n_s64(0x48FB24461747836FuLL);
  *&STACK[0x270] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x280] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x250] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x260] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x230] = vdupq_n_s64(0xBCFFAF874FA44A5ALL);
  *&STACK[0x240] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x210] = vdupq_n_s64(0x754F95118F55796CuLL);
  *&STACK[0x220] = vdupq_n_s64(0xDE7FD7C3A7D2252DLL);
  *&STACK[0x200] = xmmword_100382E40;
  JUMPOUT(0x1000F2C6CLL);
}

uint64_t sub_1000F3ED0()
{
  if (v1 == 16257999)
  {
    v4 = STACK[0x6B8];
    v5 = *(STACK[0x6B8] + 8);
    v6 = STACK[0x7F0];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v0 + 8 * (((v5 != 0) * (((v2 - 3701) ^ 0x14F1) - 7569)) ^ (v2 - 3701))))();
  }

  else if (v1 == 16215947)
  {
    return (*(v0 + 8 * (((*(STACK[0x490] + 8) == 0) * (((3 * (v2 ^ 0x1408)) ^ 0xFFFFFE65) + (v2 ^ 0x1CA2))) ^ (v2 - 3858))))();
  }

  else
  {
    return (*(v0 + 8 * ((v2 + 2482) | (2 * (((*(STACK[0x7F0] + 24) == 0) ^ (3 * ((v2 + 124) & 0xF7 ^ 0x8A))) & 1)))))();
  }
}

uint64_t sub_1000F3FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *(STACK[0x5A0] + 24);
  STACK[0x760] = v73;
  return (*(a72 + 8 * (((v73 == 0) * (v72 ^ (v72 - 3842) ^ 0x1FEC)) ^ (v72 - 2380))))();
}

uint64_t sub_1000F4030(uint64_t result)
{
  v1 = 1358806181 * ((result & 0xAE1A1F50 | ~(result | 0xAE1A1F50)) ^ 0x6ECA8C2C);
  v2 = *(result + 24);
  v3 = *(result + 4) ^ v1;
  v4 = *(result + 8) - v1;
  v5 = *result ^ v1;
  v6 = *(result + 16) - v1;
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  return result;
}

uint64_t sub_1000F4090(int a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v16 = (v13 + *(&STACK[0x5B8] + v13) * v14 - 915721494) * v9 - a5 + 1465391161;
  v17 = ((a3 ^ v7 ^ (v16 + v16 % 0xBC3 * v8)) + a1) ^ v10;
  v18 = v17 ^ a1;
  v19 = v7 - v17;
  v20 = a3 - v17;
  v21 = v18 + a6 + (v20 ^ __ROR4__(v17, 31) ^ v19);
  v22 = v20 - v21;
  v23 = v21 ^ v18;
  v24 = v21 + v19;
  HIDWORD(v25) = v21;
  LODWORD(v25) = v21;
  v26 = ((v22 + (v25 >> 31) - v24) ^ v23) + v12;
  v27 = v26 ^ v23;
  v28 = v26 ^ v22;
  v29 = v26 + v24 + v27 + (v28 ^ __ROR4__(v26, 29));
  return (*(v15 + 8 * ((510 * (v13 != 73)) ^ a7)))(v27 - (v29 ^ v11), a2, v29 ^ v11 ^ v28);
}

void oGBEROq3()
{
  v0 = *(&off_1003E6550 + ((-85 * (dword_100403520 ^ 0xDF ^ dword_1004033E0)) ^ byte_100369760[byte_100382D10[(-85 * (dword_100403520 ^ 0xDF ^ dword_1004033E0))] ^ 0x71]) + 43);
  v1 = *(&off_1003E6550 + (byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 + *v0) ^ 0xDF))] ^ 0x71] ^ (-85 * ((dword_1004033E0 + *v0) ^ 0xDF))) + 42);
  v2 = &v4[*v1 ^ *v0];
  *v0 = (2054362027 * v2) ^ 0xB4207763EF64BDFLL;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((v5 + 1476401679 - 2 * (v5 & 0x58001A0F)) ^ 0x6A1B419F);
  LOBYTE(v1) = -85 * ((*v1 + *v0) ^ 0xDF);
  v3 = *(&off_1003E6550 + ((-85 * (dword_100403520 ^ 0xDF ^ dword_1004033E0)) ^ byte_10037A9B0[byte_100373AD0[(-85 * (dword_100403520 ^ 0xDF ^ dword_1004033E0))] ^ 1]) + 92) - 8;
  (*&v3[8 * (v1 ^ byte_100369760[byte_100382D10[v1] ^ 0x1F]) + 76384])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000F437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18)
{
  v25 = 956911519 * ((-2 - ((~&a15 | 0x8943E140B5BF1E39) + (&a15 | 0x76BC1EBF4A40E1C6))) ^ 0xCC75949C5F2E6E3CLL);
  a16 = v22 - ((2 * v22) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v25;
  a17 = a11;
  LODWORD(a15) = (v24 - 3067) ^ v25;
  (*(v23 + 8 * (v24 + 5510)))(&a15);
  a15 = v21;
  a17 = a11;
  LODWORD(a16) = v24 + 1824088897 * ((&a15 & 0x280FD6AA | ~(&a15 | 0x280FD6AA)) ^ 0x8F99FA37) - 1784;
  (*(v23 + 8 * (v24 ^ 0x2A8F)))(&a15);
  v26 = 1875091903 * ((&a15 & 0xCB53F811 | ~(&a15 | 0xCB53F811)) ^ 0x2D9846D);
  HIDWORD(a15) = (v20 ^ 0xE37FBFEA) + v24 - 2801 + v26 + ((v20 << (((2 * v24) ^ 0xC) + 3)) & 0xC6FF7FD4) + 1016918456;
  LODWORD(a16) = v26 + v24 + 3635;
  a17 = a11;
  (*(v23 + 8 * (v24 ^ 0x2A54)))(&a15);
  v27 = 1824088897 * ((2078121781 - (&a15 | 0x7BDD9F35) + (&a15 | 0x842260CA)) ^ 0xDC4BB3A8);
  LODWORD(a16) = (v19 ^ 0xDEE4EB9B) + ((2 * v19) & 0xBDC9D736) - v27 + 1874853615;
  LODWORD(a15) = v27 + v24 - 332;
  a17 = v18;
  a18 = a11;
  v28 = (*(v23 + 8 * (v24 ^ 0x2A66)))(&a15);
  return (*(v23 + 8 * ((7 * (HIDWORD(a15) != 16257999)) ^ v24)))(v28);
}

uint64_t sub_1000F49AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a15 = a10;
  a16 = &a12;
  a14 = (v16 - 163) ^ (33731311 * ((&a13 & 0x34A98D68 | ~(&a13 | 0x34A98D68)) ^ 0xF2A0B8B4));
  (*(v17 + 8 * (v16 + 6186)))(&a13);
  a15 = a10;
  LODWORD(a16) = v16 - 2008441969 * ((((2 * &a13) | 0x4FB60AB0) - &a13 + 1478818472) ^ 0xEF425156) + 2270;
  v18 = (*(v17 + 8 * (v16 + 6236)))(&a13);
  return (*(v17 + 8 * ((7903 * (a13 == ((v16 - 88429152) & 0xFDFF7F6B ^ 0xF8422984))) ^ v16)))(v18);
}

void Y2Zxt()
{
  v0 = *(&off_1003E6550 + ((-85 * (dword_100403518 ^ 0xDF ^ dword_1004033E0)) ^ byte_100369760[byte_100382D10[(-85 * (dword_100403518 ^ 0xDF ^ dword_1004033E0))] ^ 0xE2]) + 258);
  v1 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + *v0) ^ 0xDF)) ^ byte_1003739D0[byte_100369460[(-85 * ((dword_1004033E0 + *v0) ^ 0xDF))] ^ 0xEE]) + 85);
  v2 = &v4[*v0 + *v1];
  *v0 = 2054362027 * v2 - 0xB4207763EF64BDFLL;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5 = 476323082 - 1710126949 * ((-349893200 - (&v5 | 0xEB250DB0) + (&v5 | 0x14DAF24F)) ^ 0x26C1A9DF);
  LOBYTE(v1) = -85 * ((*v1 - *v0) ^ 0xDF);
  v3 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_100403518) ^ 0xDF)) ^ byte_10037A9B0[byte_100373AD0[(-85 * ((dword_1004033E0 - dword_100403518) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v3[8 * (byte_1003739DC[(byte_100369460[v1] ^ 0xEE) - 12] ^ v1) + 76160])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000F4E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = 1875091903 * (((&a14 ^ 0x39BD2703) - 566921700 - 2 * ((&a14 ^ 0x39BD2703) & 0xDE35761C)) ^ 0xD1FDD29C);
  a15 = ((2 * v21) & 0xD0F9ED76) + (v21 ^ 0xE87CF6BB) + 933216239 + v24;
  LODWORD(a16) = v24 + 7724;
  a17 = a9;
  (*(v22 + 77160))(&a14);
  LODWORD(a18) = (33731311 * (((&a14 | 0x36F1A340) - &a14 + (&a14 & 0xC90E5CB8)) ^ 0xF076963)) ^ 0x208C;
  a16 = v20;
  a17 = a9;
  (*(v22 + 77256))(&a14);
  v25 = 1824088897 * (&a14 ^ 0x5869D362);
  a14 = v25 + 3757;
  LODWORD(a16) = (v19 ^ 0xFEB7EAEE) + ((2 * v19) & 0xFD6FD5DC) - v25 + 1340931996;
  a17 = v18;
  a18 = a9;
  v26 = (*(v22 + 77048))(&a14);
  return (*(v22 + 8 * ((6084 * (a15 == v23)) ^ 0xC0Bu)))(v26);
}

uint64_t sub_1000F5090()
{
  LODWORD(STACK[0x664]) = 128;
  v3 = (*(v0 + 8 * (v1 + 6297)))(128, v2);
  v4 = STACK[0x3E8];
  STACK[0x430] = v3;
  return (*(v4 + 8 * (((v3 == 0) * ((v1 ^ 0xC27) - 6010 + 19 * (v1 ^ 0xC27))) ^ v1)))();
}

uint64_t sub_1000F5108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = v3 ^ 0x7C ^ *(a2 + v5);
  return (*(v4 + 8 * (((4 * (v5 == 0)) | (16 * (v5 == 0))) ^ v3)))();
}

uint64_t sub_1000F51B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = v68 + a8 - v69;
  v73 = (a39 + v67 + a2 + a8 - v69);
  v74.i64[0] = v72 - 7;
  v74.i64[1] = v72 - 8;
  v75.i64[0] = v72 - 5;
  v75.i64[1] = v72 - 6;
  v76.i64[0] = v72 - 3;
  v76.i64[1] = v72 - 4;
  v77.i64[0] = v72 - 1;
  v77.i64[1] = v68 + a8 + (a6 - 965) - v69 - 3110;
  v78 = vandq_s8(v77, *&STACK[0x310]);
  v79 = vandq_s8(v76, *&STACK[0x310]);
  v80 = vandq_s8(v75, *&STACK[0x310]);
  v81 = vandq_s8(v74, *&STACK[0x310]);
  v82 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v86 = vdupq_n_s64(0x38uLL);
  v87 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v85), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v85, *&STACK[0x300]), *&STACK[0x2F0]));
  v88 = vorrq_s8(vaddq_s64(v82, *&STACK[0x300]), *&STACK[0x2F0]);
  v89 = vorrq_s8(vsubq_s64(*&STACK[0x2E0], v82), *&STACK[0x2D0]);
  v90 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v84), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v84, *&STACK[0x300]), *&STACK[0x2F0]));
  v91 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(v89, v88));
  v92 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v83), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v83, *&STACK[0x300]), *&STACK[0x2F0])));
  v93 = veorq_s8(v92, *&STACK[0x290]);
  v94 = veorq_s8(v91, *&STACK[0x290]);
  v95 = veorq_s8(v91, *&STACK[0x280]);
  v96 = veorq_s8(v92, *&STACK[0x280]);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), *&STACK[0x270]);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v96), *&STACK[0x270]);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v101);
  v104 = vaddq_s64(v102, v100);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), *&STACK[0x260]), v104), *&STACK[0x250]), *&STACK[0x240]);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), *&STACK[0x260]), v103), *&STACK[0x250]), *&STACK[0x240]);
  v107 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v108 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v109 = veorq_s8(v105, v107);
  v110 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v109);
  v112 = veorq_s8(vaddq_s64(v110, v108), *&STACK[0x230]);
  v113 = veorq_s8(v111, *&STACK[0x230]);
  v114 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v115 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v116 = veorq_s8(v112, v114);
  v117 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v116);
  v119 = veorq_s8(vaddq_s64(v117, v115), *&STACK[0x2C0]);
  v120 = veorq_s8(v118, *&STACK[0x2C0]);
  v121 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v122 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v123 = veorq_s8(v119, v121);
  v124 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v123);
  v126 = vaddq_s64(v124, v122);
  v127 = veorq_s8(v126, *&STACK[0x2B0]);
  v128 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v126, v70), *&STACK[0x220]), v127), vandq_s8(v127, v70));
  v129 = veorq_s8(v125, *&STACK[0x2B0]);
  v130 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v125, v70), *&STACK[0x220]), v129), vandq_s8(v129, v70)), *&STACK[0x210]);
  v131 = veorq_s8(v128, *&STACK[0x210]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v133 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), *&STACK[0x200]);
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v133), *&STACK[0x200]);
  v136 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v137 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v138 = veorq_s8(v134, v136);
  v139 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v141 = vsubq_s64(*&STACK[0x2A0], v90);
  v142 = veorq_s8(vaddq_s64(v139, v137), a67);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v140, v138), a67), vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), v86)));
  v178.val[2] = vshlq_u64(v142, vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v86)));
  v143 = veorq_s8(v141, *&STACK[0x290]);
  v144 = veorq_s8(v141, *&STACK[0x280]);
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), *&STACK[0x270]);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), *&STACK[0x260]), v147), *&STACK[0x250]), *&STACK[0x240]);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), *&STACK[0x230]);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), *&STACK[0x2C0]);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(v154, *&STACK[0x2B0]);
  v156 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v154, v70), *&STACK[0x220]), v155), vandq_s8(v155, v70)), *&STACK[0x210]);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), *&STACK[0x200]);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL)));
  v160 = vsubq_s64(*&STACK[0x2A0], v87);
  v178.val[1] = vshlq_u64(veorq_s8(v159, a67), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v86)));
  v161 = veorq_s8(v160, *&STACK[0x290]);
  v162 = veorq_s8(v160, *&STACK[0x280]);
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), *&STACK[0x270]);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), *&STACK[0x260]), v165), *&STACK[0x250]), *&STACK[0x240]);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), *&STACK[0x230]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), *&STACK[0x2C0]);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(v172, *&STACK[0x2B0]);
  v174 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v172, v70), *&STACK[0x220]), v173), vandq_s8(v173, v70)), *&STACK[0x210]);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), *&STACK[0x200]);
  v178.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL))), a67), vnegq_s64(vandq_s8(vshlq_n_s64(v77, 3uLL), v86)));
  *v73 = veor_s8(vrev64_s8(*&vqtbl4q_s8(v178, v71)), *(v72 - 8));
  return (*(STACK[0x330] + 8 * ((11087 * (v69 - (a8 & 0xFFFFFFF8) == -8)) ^ a6)))(a1, v72 - 5, v72 - 7, a4, a5, a6, v73, v77.i64[1], a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

void TBGzuU3p5n1n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000F578C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17)
{
  a16 = 476323082 - 1710126949 * ((1872661036 - (&a16 ^ 0xB57BE482 | 0x6F9E8A2C) + (&a16 ^ 0xB57BE482 | 0x906175D3)) ^ 0x1701CAC1);
  v19 = (*(v17 + 77088))(&a16);
  return (*(v17 + 8 * ((7646 * (a17 == 16257999)) ^ v18)))(v19);
}

uint64_t sub_1000F583C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x5D0] = v2 + v3;
  STACK[0x740] = (((v5 - 6603) | 8u) ^ 0x4DELL) + a1;
  STACK[0x780] = v1;
  STACK[0x560] = 0;
  STACK[0x428] = 0;
  STACK[0x7C8] = 0;
  LODWORD(STACK[0x520]) = v6;
  LODWORD(STACK[0x8FC]) = 0;
  STACK[0x710] = 0;
  STACK[0x950] = 0;
  LODWORD(STACK[0x3DC]) = v6;
  v8 = (*(v7 + 8 * (v5 ^ 0x3BD1)))();
  return (*(v7 + 8 * (((((v5 - 7248) | 0x202A) ^ 0x2210) * (v4 == v6)) ^ v5)))(v8);
}

uint64_t sub_1000F598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  LODWORD(STACK[0x2B0]) = v61;
  LODWORD(STACK[0x210]) = v60;
  v64 = (*(a7 + 8 * (v62 + 97)))(32, 0x103004054B5FA7DLL);
  return (*(*(v63 - 256) + 8 * ((63 * (((v64 == 0) ^ (v62 + 54 + v62 - 109)) & 1)) ^ v62)))(v64, v65, v66, v67, v68, v69, *(v63 - 256), v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1000F5A24()
{
  v3 = STACK[0x858];
  STACK[0x7C0] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 8730) ^ 0x244A) - 444)) ^ (v1 + 8730))))();
}

_DWORD *sub_1000F5B4C@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  v4 = v2 - 864559157;
  v5 = v4 < 0x2E7658EB;
  v6 = v3 + 779507947 < v4;
  if (v3 > 0xD189A714 != v5)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 + 1;
  }

  *result = v7;
  return result;
}

uint64_t sub_1000F5CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x270] = STACK[0x2A8];
  LODWORD(STACK[0x25C]) = v8;
  LODWORD(STACK[0x258]) = v9;
  return (*(a7 + 8 * (((*(v10 - 200) != 0) * (((v7 ^ 0x7E7) + 1424877183) & 0xAB12176F ^ 0x551)) ^ ((((v7 ^ 0x7E7) + 1424877183) & 0xAB12176F) + 4254))))();
}

uint64_t sub_1000F5D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = ((&a14 & 0xF9A414D0 | ~(&a14 | 0xF9A414D0)) ^ 0x5E32384D) * v20;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674576090;
  a15 = v22 - 132419727;
  a16 = a10;
  a17 = &a12;
  v23 = (*(v19 + 8 * (v21 + 6584)))(&a14);
  return (*(v19 + 8 * ((6200 * (a14 == (v21 ^ 0xBD2) + 16250705 + 3646 * (v21 ^ 0xBD2))) ^ v21)))(v23);
}

void sub_1000F5E40(uint64_t a1)
{
  v1 = 1358806181 * ((-2 - ((~a1 | 0xD8F25D3E) + (a1 | 0x270DA2C1))) ^ 0xE7DD31BD);
  v2 = *(a1 + 32) - v1;
  v3 = (*(a1 + 36) ^ v1) == 326284622;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000F5F18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1001BE914(a4, 0);
}

uint64_t sub_1000F5FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((1300 * (v5 == ((v3 + 444030009) & 0xE58897FD) - 5465)) ^ v3)))();
}

uint64_t sub_1000F601C(uint64_t a1)
{
  *(a1 + 80) = 16640;
  *a1 = 1442350434;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  *(a1 + 72) = 0;
  v3 = STACK[0x3C0];
  *(v3 + 84) = 7;
  *(v3 + 104) = 0;
  *(v3 + 88) = v2;
  *(v3 + 96) = v2;
  *(v3 + 108) = 0;
  *v1 = v3;
  return (STACK[0x848])();
}

uint64_t sub_1000F6128(uint64_t a1)
{
  *(a1 + 16) = *v2;
  *(a1 + 88) = *(v2 + 72);
  *(a1 + 92) = *(v2 + 76);
  *(a1 + 96) = *(v2 + 80);
  *(a1 + 97) = *(v2 + 81);
  *(a1 + 120) = *(v2 + 104);
  *(a1 + 100) = *(v2 + 84);
  *(a1 + 124) = *(v2 + 108) & (v1 - 23);
  *(a1 + 55) = *(v2 + 39) ^ 0x13 ^ *(*(v3 + 8 * ((v1 - 273) ^ 0x671)) + 7) ^ *(*(v3 + 8 * (v1 - 1484)) + 6) ^ *(*(v3 + 8 * (v1 - 1521)) + 15) ^ 0x3C;
  return (*(v4 + 12544))();
}

uint64_t sub_1000F62F8()
{
  v0 = STACK[0x808];
  *v0 = 0u;
  v0[1] = 0u;
  return sub_1000F6318();
}

uint64_t sub_1000F6318@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  STACK[0x4C0] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (((v4 == 0) * (((v1 + 533503904) & 0xE0335FFB ^ 0xFFFFECBC) + (v1 ^ 0x1CCA))) ^ v1)))();
}

uint64_t sub_1000F64FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(v4 + 8 * (v5 ^ 0x2C98)))((1223 * (v5 ^ 0x938u) + 197496773) ^ LODWORD(STACK[0x964]), 0x100004077774924);
  v8 = STACK[0x400];
  STACK[0xA88] = v7;
  if (v7)
  {
    v9 = 16257999;
  }

  else
  {
    v9 = a4;
  }

  LODWORD(STACK[0xA94]) = v9;
  return (*(v8 + 8 * (((v7 != 0) * ((16 * v5) ^ 0x93E5)) | v5)))();
}

void sub_1000F6590(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&STACK[0x380] = vdupq_n_s64(0x731CB210FB4C4567uLL);
  *&STACK[0x390] = vdupq_n_s64(0x19C69BDE09677532uLL);
  *&STACK[0x350] = vdupq_n_s64(0x6D4CEA43F2532C17uLL);
  *&STACK[0x360] = vdupq_n_s64(0xC50A0FD46BA55D4BLL);
  *&STACK[0x340] = vdupq_n_s64(0xE7FEEAD13AAEBCF2);
  STACK[0x330] = 16 - (v10 & 0xFFFFFFF0);
  *&STACK[0x320] = vdupq_n_s64(v11);
  STACK[0x310] = a9 + v10;
  *&STACK[0x300] = vdupq_n_s64(v12);
  STACK[0x2F0] = v9 + v10;
  LODWORD(STACK[0x370]) = v13 ^ 0x795;
  *&STACK[0x2D0] = vdupq_n_s64(a2);
  *&STACK[0x2E0] = vdupq_n_s64(a1);
  *&STACK[0x2B0] = vdupq_n_s64(a4);
  *&STACK[0x2C0] = vdupq_n_s64(a3);
  *&STACK[0x290] = vdupq_n_s64(a6);
  *&STACK[0x2A0] = vdupq_n_s64(a5);
  *&STACK[0x270] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x280] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x250] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x260] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x230] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x240] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x210] = vdupq_n_s64(a8);
  *&STACK[0x220] = vdupq_n_s64(a7);
  STACK[0x200] = ((v13 ^ 0x795u) - 658) ^ 0xFFFFFFFFFFFFF079;
  JUMPOUT(0x1000F6784);
}

uint64_t sub_1000F7A38(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int32x4_t a25, int8x16_t a26, int8x16_t a27)
{
  v32 = vld1q_dup_f32(v27);
  v33.i64[0] = 0x8000000080000000;
  v33.i64[1] = 0x8000000080000000;
  a2.i32[0] = *(v27 + 4 * ((v28 - 9354) | 0x640u) - 6924);
  a2.i32[1] = *(v27 + 8);
  a2.i32[2] = *(v27 + 12);
  v34 = vextq_s8(v32, a2, 0xCuLL);
  v35 = a2;
  v35.i32[3] = *(v27 + 16);
  v36 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v35, a27), vandq_s8(v34, v33)), 1uLL), *(v27 + 1588));
  v34.i32[0] = *(v30 + 4 * (*(v27 + 4 * ((v28 - 9354) | 0x640u) - 6924) & 1));
  v34.i32[1] = *(v30 + 4 * (*(v27 + 8) & 1));
  v34.i32[2] = *(v30 + 4 * (*(v27 + 12) & 1));
  v34.i32[3] = *(v30 + 4 * (v35.i8[12] & 1));
  *v27 = veorq_s8(vaddq_s32(vsubq_s32(v36, vandq_s8(vaddq_s32(v36, v36), a26)), a25), v34);
  return (*(v29 + 8 * (v28 - 6791)))(3961607843, 3628248390, v31 - 224, -6924);
}

uint64_t sub_1000F7A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v27)
  {
    v28 = a4 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  return (*(a2 + 8 * ((((v26 - 1792) ^ 0x4E4) * v29) ^ v26)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1000F7AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44)
{
  v47 = *(v44 + 8 * (v46 - 2177));
  v48 = *(v47 - 4);
  a14 = *v48 + ((v46 - 80) ^ 0x47);
  a15 = v46 - 56 + v48[1] - 85;
  a16 = v48[2] - 123;
  a17 = v48[3] - 123;
  a18 = v48[4] - 123;
  a19 = v48[5] - 123;
  a20 = v48[6] - 123;
  a21 = v48[7] - 123;
  a22 = v48[8] - 123;
  a23 = v48[9] - 123;
  a24 = v48[10] - 123;
  a25 = v48[11] - 123;
  a26 = v48[12] - 123;
  a27 = v48[13] - 123;
  a28 = v48[14] - 123;
  a29 = v48[15] - 123;
  a30 = v48[16] - 123;
  a31 = v48[17] - 123;
  a32 = v48[18] - 123;
  a33 = v48[19] - 123;
  v49 = *(v47 - 4);
  a34 = v49[20] - 123;
  a35 = v49[21] - 123;
  a36 = v49[22] - 123;
  a37 = v49[23] - 123;
  a38 = v49[24] - 123;
  a39 = v49[25] - 123;
  a40 = v49[26] - 123;
  a41 = v49[27] - 123;
  a42 = v49[28] - 123;
  a43 = v49[29] - 123;
  a44 = v49[30] - 123;
  v50 = (*(v45 + 8 * (v46 + 7306)))(&a14);
  return (*(v45 + 8 * ((56 * (v50 != 0)) ^ v46)))(v50, v51, v52, v53, v54, v55, v56, v57);
}

uint64_t sub_1000F7C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1824088897 * ((1327682174 - (&a15 ^ 0x12622678 | 0x4F22D27E) + (&a15 ^ 0x12622678 | 0xB0DD2D81)) ^ 0xFAD6D89B);
  a18 = v19;
  a19 = a10;
  a17 = (v20 ^ 0xDFBFEFFF) + ((2 * v20) & 0xBF7FDFFE) - v23 + v22 + 1860499025;
  a15 = v23 + v22 + 2675;
  v24 = (*(v21 + 8 * (v22 + 8549)))(&a15);
  return (*(v21 + 8 * (((a16 != 16257999) * ((v22 + 1610603893) & 0xF6FBFFF5 ^ 0x56FBE1A3)) ^ v22)))(v24);
}

uint64_t sub_1000F7D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43)
{
  v46 = v44[396] ^ ((((a9 - 2129792) & 0xB6A6FF7D ^ 0x36869F5D) & v44[623] | *v44 & 0x7FFFFFFE) >> 1);
  v44[623] = (v46 + a3 - ((v46 << ((a9 - 2) ^ (a2 - 1))) & a4)) ^ *(v43 + 4 * (*v44 & 1));
  return (*(v45 + 8 * ((16144 * (a43 > 0x26F)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1000F7E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v14 - 144) = *v12;
  *(v14 - 143) = *(v12 + 1);
  *(v14 - 135) = *(v12 + 9);
  *(v14 - 131) = *(v12 + 13);
  *(v14 - 129) = *(v12 + 15);
  if (v10)
  {
    v15 = *(v13 + 40) == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  return (*(a1 + 8 * ((v16 * (((((v11 ^ 0x3939) + 1178359096) & 0xB9C39F9D) + 1738) ^ 0x1C46)) | v11 ^ 0x3939)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1000F7F14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  *v4 = a1;
  return (*(a4 + 8 * ((114 * (((STACK[0x460] == 0) ^ (23 * ((v5 + 72) & 0xF5 ^ 0x86))) & 1)) ^ (v5 - 3178))))();
}

uint64_t sub_1000F7F74(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int8x16_t a19, int8x16_t a20, int8x16_t a21, int64x2_t a22, int8x16_t a23, uint64_t a24, uint64_t a25, int8x16_t a26, int8x16_t a27, int8x16_t a28, int64x2_t a29, int8x16_t a30, int64x2_t a31, int8x16_t a32, int8x16_t a33, int8x16_t a34, int64x2_t a35, int8x16_t a36, int8x16_t a37, int64x2_t a38, int8x16_t a39, int8x16_t a40, int64x2_t a41, int8x16_t a42, int8x16_t a43, int8x16_t a44, int8x16_t a45, int64x2_t a46)
{
  v56 = a4 - 16;
  *&STACK[0x2C0] = *(a8 + v56 - 16);
  v57.i64[0] = a8 + v56 - 3;
  v57.i64[1] = a8 + v56 + v53;
  v58.i64[0] = a8 + v56 - 1;
  v58.i64[1] = a8 + v56 - 2;
  v59.i64[0] = a8 + v56 - 5;
  v59.i64[1] = a8 + v56 - 6;
  v60.i64[0] = a8 + v56 - 7;
  v60.i64[1] = a8 + v56 - 8;
  v61.i64[0] = a8 + v56 - 9;
  v61.i64[1] = a8 + v56 - 10;
  v62.i64[0] = a8 + v56 - 11;
  v62.i64[1] = a8 + v56 - 12;
  v63.i64[0] = a8 + v56 - 13;
  v63.i64[1] = a8 + v56 - 14;
  v64.i64[0] = a8 + v56 - 15;
  v64.i64[1] = a8 + v56 - 16;
  v65.i64[0] = a7 + v56 - 15;
  v65.i64[1] = a7 + v56 - 16;
  *&STACK[0x270] = v65;
  v66 = vandq_s8(v64, a26);
  v67 = vandq_s8(v63, a26);
  v68 = vandq_s8(v62, a26);
  v69 = vandq_s8(v61, a26);
  v70 = vandq_s8(v60, a26);
  v71 = vandq_s8(v59, a26);
  v72 = vandq_s8(v58, a26);
  v73 = vandq_s8(v57, a26);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), a46);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), a46);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), a46);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), a46);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), a46);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), a46);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), a46);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), a46);
  v82 = veorq_s8(v81, a45);
  v83 = veorq_s8(v80, a45);
  v84 = veorq_s8(v79, a45);
  v85 = veorq_s8(v78, a45);
  v86 = veorq_s8(v77, a45);
  v87 = veorq_s8(v76, a45);
  v88 = veorq_s8(v75, a45);
  v89 = veorq_s8(v74, a45);
  v90 = veorq_s8(v74, a44);
  v91 = veorq_s8(v75, a44);
  v92 = veorq_s8(v76, a44);
  v93 = veorq_s8(v77, a44);
  v94 = veorq_s8(v78, a44);
  v95 = veorq_s8(v79, a44);
  v96 = veorq_s8(v80, a44);
  v97 = veorq_s8(v81, a44);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), a43);
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91), a43);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v92), a43);
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v93), a43);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v94), a43);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v95), a43);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v96), a43);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v97), a43);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v107 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v108 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v109 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v110 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v111 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v112 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v113 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v114 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v117 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v113);
  v122 = vaddq_s64(v120, v112);
  v123 = vaddq_s64(v119, v111);
  v124 = vaddq_s64(v118, v110);
  v125 = vaddq_s64(v117, v109);
  v126 = vaddq_s64(v116, v108);
  v127 = vaddq_s64(v115, v107);
  v128 = vaddq_s64(v114, v106);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), a42), v128), a41), a40);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), a42), v127), a41), a40);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), a42), v126), a41), a40);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), a42), v125), a41), a40);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), a42), v124), a41), a40);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), a42), v123), a41), a40);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), a42), v122), a41), a40);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v121, v121), a42), v121), a41), a40);
  v137 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v141 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v142 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v143 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v144 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v145 = veorq_s8(v132, v140);
  v146 = veorq_s8(v131, v139);
  v147 = veorq_s8(v130, v138);
  v148 = veorq_s8(v129, v137);
  v149 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v148);
  v157 = vaddq_s64(v155, v147);
  v158 = vaddq_s64(v154, v146);
  v159 = vaddq_s64(v153, v145);
  v160 = vaddq_s64(v152, v144);
  v161 = vaddq_s64(v151, v143);
  v162 = vaddq_s64(v150, v142);
  v163 = vaddq_s64(v149, v141);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), a39), v163), a38), a37);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), a39), v162), a38), a37);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), a39), v161), a38), a37);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), a39), v160), a38), a37);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), a39), v159), a38), a37);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), a39), v158), a38), a37);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v157, v157), a39), v157), a38), a37);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), a39), v156), a38), a37);
  v172 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v176 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v177 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v178 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v179 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v180 = veorq_s8(v167, v175);
  v181 = veorq_s8(v166, v174);
  v182 = veorq_s8(v165, v173);
  v183 = veorq_s8(v164, v172);
  v184 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v183);
  v192 = vaddq_s64(v190, v182);
  v193 = vaddq_s64(v189, v181);
  v194 = vaddq_s64(v188, v180);
  v195 = vaddq_s64(v187, v179);
  v196 = vaddq_s64(v186, v178);
  v197 = vaddq_s64(v185, v177);
  v198 = vaddq_s64(v184, v176);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), a36), v198), a35), a34);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197, v197), a36), v197), a35), a34);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), a36), v196), a35), a34);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), a36), v195), a35), a34);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v194, v194), a36), v194), a35), a34);
  v204 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v193, v193), a36), v193), a35), a34);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), a36), v192), a35), a34);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191, v191), a36), v191), a35), a34);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v208 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v209 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v210 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v211 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v212 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v213 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v214 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v215 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v218 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v214);
  v223 = veorq_s8(vaddq_s64(v215, v207), *&STACK[0x2D0]);
  v224 = veorq_s8(vaddq_s64(v216, v208), *&STACK[0x2D0]);
  v225 = veorq_s8(vaddq_s64(v217, v209), *&STACK[0x2D0]);
  v226 = veorq_s8(vaddq_s64(v218, v210), *&STACK[0x2D0]);
  v227 = veorq_s8(vaddq_s64(v219, v211), *&STACK[0x2D0]);
  v228 = veorq_s8(vaddq_s64(v220, v212), *&STACK[0x2D0]);
  v229 = veorq_s8(vaddq_s64(v221, v213), *&STACK[0x2D0]);
  v230 = veorq_s8(v222, *&STACK[0x2D0]);
  v231 = *&STACK[0x2D0];
  v232 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v233 = vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL);
  v234 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v239 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v240 = veorq_s8(v229, v238);
  v241 = veorq_s8(v228, v237);
  v242 = veorq_s8(v227, v236);
  v243 = veorq_s8(v226, v235);
  v244 = veorq_s8(v225, v234);
  v245 = veorq_s8(v224, v233);
  v246 = veorq_s8(v223, v232);
  v247 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v248 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v249 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v246);
  v255 = veorq_s8(vaddq_s64(v247, v239), a33);
  v256 = veorq_s8(vaddq_s64(v248, v240), a33);
  v257 = veorq_s8(vaddq_s64(v249, v241), a33);
  v258 = veorq_s8(vaddq_s64(v250, v242), a33);
  v259 = veorq_s8(vaddq_s64(v251, v243), a33);
  v260 = veorq_s8(vaddq_s64(v252, v244), a33);
  v261 = veorq_s8(vaddq_s64(v253, v245), a33);
  v262 = veorq_s8(v254, a33);
  v263 = vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL);
  v264 = vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL);
  v265 = vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL);
  v266 = vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL);
  v267 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v268 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v269 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v270 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v271 = veorq_s8(v258, v266);
  v272 = veorq_s8(v257, v265);
  v273 = veorq_s8(v256, v264);
  v274 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL);
  v280 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v244.i64[0] = a7 + v56 - 7;
  v244.i64[1] = a7 + v56 - 8;
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), veorq_s8(v255, v263));
  v243.i64[0] = a7 + v56 - 5;
  v243.i64[1] = a7 + v56 - 6;
  v282 = vaddq_s64(v280, v273);
  v65.i64[0] = a7 + v56 - 1;
  v65.i64[1] = a7 + v56 - 2;
  v283 = vaddq_s64(v279, v272);
  v272.i64[0] = a7 + v56 - 3;
  v272.i64[1] = a7 + v56 + v53;
  *&STACK[0x230] = v272;
  v284 = vaddq_s64(v278, v271);
  v285 = vaddq_s64(v277, v270);
  v286 = vaddq_s64(v276, v269);
  v287 = vaddq_s64(v275, v268);
  v288 = vaddq_s64(v274, v267);
  v289 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v283, v283), a32), v283), a31);
  v290 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v286, v286), a32), v286), a31);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v287, v287), a32), v287), a31), a30);
  v292 = vandq_s8(vshlq_n_s64(v61, 3uLL), v55);
  v293 = vandq_s8(vshlq_n_s64(v60, 3uLL), v55);
  *&STACK[0x250] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v282, v282), a32), v282), a31), a30), vnegq_s64(vandq_s8(vshlq_n_s64(v58, 3uLL), v55)));
  *&STACK[0x260] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v281, v281), a32), v281), a31), a30), vnegq_s64(vandq_s8(vshlq_n_s64(v57, 3uLL), v55)));
  v294 = vshlq_u64(veorq_s8(v289, a30), vnegq_s64(vandq_s8(vshlq_n_s64(v59, 3uLL), v55)));
  v295 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v284, v284), a32), v284), a31), a30), vnegq_s64(v293));
  *&STACK[0x2A0] = vshlq_u64(veorq_s8(v290, a30), vnegq_s64(vandq_s8(vshlq_n_s64(v62, 3uLL), v55)));
  *&STACK[0x2B0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v285, v285), a32), v285), a31), a30), vnegq_s64(v292));
  *&STACK[0x280] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v288, v288), a32), v288), a31), a30), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), v55)));
  *&STACK[0x290] = vshlq_u64(v291, vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), v55)));
  v296 = vandq_s8(v272, a26);
  v297 = vandq_s8(v65, a26);
  v298 = vandq_s8(v243, a26);
  v299 = vandq_s8(v244, a26);
  v300 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v301 = vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL);
  v302 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v303 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v304 = vorrq_s8(vaddq_s64(v300, *&STACK[0x310]), *&STACK[0x300]);
  v305 = vorrq_s8(vaddq_s64(v301, *&STACK[0x310]), *&STACK[0x300]);
  v306 = vorrq_s8(vaddq_s64(v302, *&STACK[0x310]), *&STACK[0x300]);
  v307 = vorrq_s8(vsubq_s64(*&STACK[0x2F0], v300), *&STACK[0x2E0]);
  v308 = vorrq_s8(vsubq_s64(*&STACK[0x2F0], v301), *&STACK[0x2E0]);
  v309 = vorrq_s8(vsubq_s64(*&STACK[0x2F0], v302), *&STACK[0x2E0]);
  *&STACK[0x240] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2F0], v303), *&STACK[0x2E0]), vorrq_s8(vaddq_s64(v303, *&STACK[0x310]), *&STACK[0x300]));
  v310 = vaddq_s64(v309, v306);
  v311 = vsubq_s64(a29, vaddq_s64(v307, v304));
  v312 = vsubq_s64(a29, vaddq_s64(v308, v305));
  v313 = vsubq_s64(a29, v310);
  v314 = veorq_s8(v312, a28);
  v315 = veorq_s8(v311, a28);
  v316 = veorq_s8(v311, a27);
  v317 = veorq_s8(v312, a27);
  v318 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL), v317);
  v319 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL), v316);
  v320 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v319, v319), a23), v319), a22), a21);
  v321 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v318, v318), a23), v318), a22), a21);
  v322 = veorq_s8(v321, vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL));
  v323 = veorq_s8(v320, vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL));
  v324 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322), a19);
  v325 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v323), a19);
  v326 = veorq_s8(v325, vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL));
  v327 = veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v328 = vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL);
  v329 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v327);
  v330 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v331 = veorq_s8(vaddq_s64(v328, v326), v330);
  v332 = veorq_s8(v329, v330);
  v333 = veorq_s8(v332, vsraq_n_u64(vshlq_n_s64(v327, 3uLL), v327, 0x3DuLL));
  v334 = veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL));
  v335 = vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL);
  v336 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), v334);
  v337 = vaddq_s64(v335, v333);
  v338 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v339 = veorq_s8(v337, v338);
  v340 = veorq_s8(v336, v338);
  v341 = vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL);
  v342 = veorq_s8(v340, vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL));
  v343 = veorq_s8(v339, v341);
  v344 = vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL);
  v345 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), v343);
  v346 = v231;
  v347 = veorq_s8(vaddq_s64(v344, v342), v231);
  v348 = veorq_s8(v345, v231);
  v349 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v343, 3uLL), v343, 0x3DuLL));
  v350 = veorq_s8(v347, vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL));
  v351 = vdupq_n_s64(v47);
  v352 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), v349), v351);
  v353 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v350), v351);
  v354 = vdupq_n_s64(v48);
  v355 = vdupq_n_s64(v46);
  v356 = vaddq_s64(vsubq_s64(vorrq_s8(v352, v354), vorrq_s8(v352, v355)), v355);
  v357 = vdupq_n_s64(v49);
  v358 = veorq_s8(v356, v357);
  v359 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v353, v354), vorrq_s8(v353, v355)), v355), v357);
  v360 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL), veorq_s8(v358, vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL)));
  v361 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL), veorq_s8(v359, vsraq_n_u64(vshlq_n_s64(v350, 3uLL), v350, 0x3DuLL)));
  v362 = vdupq_n_s64(v50);
  v363 = vsubq_s64(vandq_s8(vaddq_s64(v361, v361), v362), v361);
  v364 = vsubq_s64(vandq_s8(vaddq_s64(v360, v360), v362), v360);
  v365 = vdupq_n_s64(v51);
  v366 = vaddq_s64(v364, v365);
  v367 = vdupq_n_s64(v52);
  v459.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v363, v365), v367), vnegq_s64(vandq_s8(vshlq_n_s64(v244, 3uLL), v55))), v295);
  v459.val[2] = veorq_s8(vshlq_u64(veorq_s8(v366, v367), vnegq_s64(vandq_s8(vshlq_n_s64(v243, 3uLL), v55))), v294);
  v368 = veorq_s8(v313, a28);
  v369 = veorq_s8(v313, a27);
  v370 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v368, 0x38uLL), v368, 8uLL), v369);
  v371 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v370, v370), a23), v370), a22), a21);
  v372 = veorq_s8(v371, vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL));
  v373 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v371, 0x38uLL), v371, 8uLL), v372), a19);
  v374 = veorq_s8(v373, vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL));
  *&STACK[0x200] = v330;
  *&STACK[0x210] = v338;
  v375 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL), v374), v330);
  v376 = veorq_s8(v375, vsraq_n_u64(vshlq_n_s64(v374, 3uLL), v374, 0x3DuLL));
  v377 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL), v376), v338);
  v378 = veorq_s8(v377, vsraq_n_u64(vshlq_n_s64(v376, 3uLL), v376, 0x3DuLL));
  v379 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL), v378), v346);
  v380 = veorq_s8(v379, vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL));
  v381 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v379, 0x38uLL), v379, 8uLL), v380), v351);
  v382 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v381, v354), vorrq_s8(v381, v355)), v355), v357);
  v295.i64[0] = a7 + v56 - 13;
  v295.i64[1] = a7 + v56 - 14;
  v383 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL), veorq_s8(v382, vsraq_n_u64(vshlq_n_s64(v380, 3uLL), v380, 0x3DuLL)));
  v348.i64[0] = a7 + v56 - 11;
  v348.i64[1] = a7 + v56 - 12;
  v384 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v383, v383), v362), v383), v365), v367), vnegq_s64(vandq_s8(vshlq_n_s64(v65, 3uLL), v55)));
  v65.i64[0] = a7 + v56 - 9;
  v65.i64[1] = a7 + v56 - 10;
  *&STACK[0x220] = v65;
  v385 = vsubq_s64(a29, *&STACK[0x240]);
  v459.val[0] = veorq_s8(v384, *&STACK[0x250]);
  v386 = veorq_s8(v385, a28);
  v387 = veorq_s8(v385, a27);
  v388 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387);
  v389 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v388, v388), a23), v388), a22), a21);
  v390 = veorq_s8(v389, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v391 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL), v390), a19);
  v392 = veorq_s8(v391, vsraq_n_u64(vshlq_n_s64(v390, 3uLL), v390, 0x3DuLL));
  v393 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL), v392), v330);
  v394 = veorq_s8(v393, vsraq_n_u64(vshlq_n_s64(v392, 3uLL), v392, 0x3DuLL));
  v395 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), v394), v338);
  v396 = veorq_s8(v395, vsraq_n_u64(vshlq_n_s64(v394, 3uLL), v394, 0x3DuLL));
  v397 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), v396), v346);
  v398 = veorq_s8(v397, vsraq_n_u64(vshlq_n_s64(v396, 3uLL), v396, 0x3DuLL));
  v399 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v397, 0x38uLL), v397, 8uLL), v398), v351);
  v400 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v399, v354), vorrq_s8(v399, v355)), v355), v357);
  v401 = veorq_s8(v400, vsraq_n_u64(vshlq_n_s64(v398, 3uLL), v398, 0x3DuLL));
  v402 = vsraq_n_u64(vshlq_n_s64(v400, 0x38uLL), v400, 8uLL);
  v403 = vandq_s8(v65, a26);
  v404 = vaddq_s64(v402, v401);
  v405 = vandq_s8(v348, a26);
  v406 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v404, v404), v362), v404), v365), v367), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x230], 3uLL), v55)));
  v407 = vandq_s8(v295, a26);
  v459.val[1] = veorq_s8(v406, *&STACK[0x260]);
  v408 = vandq_s8(*&STACK[0x270], a26);
  v409 = vsraq_n_u64(vshlq_n_s64(v408, 0x38uLL), v408, 8uLL);
  v410 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v411 = vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL);
  v412 = vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL);
  v413 = vsubq_s64(a29, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2F0], v409), *&STACK[0x2E0]), vorrq_s8(vaddq_s64(v409, *&STACK[0x310]), *&STACK[0x300])));
  v414 = vsubq_s64(a29, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2F0], v410), *&STACK[0x2E0]), vorrq_s8(vaddq_s64(v410, *&STACK[0x310]), *&STACK[0x300])));
  v410.i64[0] = vqtbl4q_s8(v459, a20).u64[0];
  v459.val[0] = veorq_s8(v414, a28);
  v459.val[1] = veorq_s8(v413, a28);
  v415 = veorq_s8(v413, a27);
  v459.val[2] = veorq_s8(v414, a27);
  v459.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459.val[0], 0x38uLL), v459.val[0], 8uLL), v459.val[2]);
  v459.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459.val[1], 0x38uLL), v459.val[1], 8uLL), v415);
  v459.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v459.val[1], v459.val[1]), a23), v459.val[1]), a22), a21);
  v459.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v459.val[0], v459.val[0]), a23), v459.val[0]), a22), a21);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v415, 3uLL), v415, 0x3DuLL);
  v416 = veorq_s8(v459.val[0], vsraq_n_u64(vshlq_n_s64(v459.val[2], 3uLL), v459.val[2], 0x3DuLL));
  v459.val[2] = veorq_s8(v459.val[1], v459.val[3]);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v459.val[0], 0x38uLL), v459.val[0], 8uLL);
  v459.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459.val[1], 0x38uLL), v459.val[1], 8uLL), v459.val[2]);
  v459.val[1] = veorq_s8(vaddq_s64(v459.val[3], v416), a19);
  v459.val[0] = veorq_s8(v459.val[0], a19);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL);
  v417 = veorq_s8(v459.val[0], vsraq_n_u64(vshlq_n_s64(v459.val[2], 3uLL), v459.val[2], 0x3DuLL));
  v459.val[2] = veorq_s8(v459.val[1], v459.val[3]);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v459.val[0], 0x38uLL), v459.val[0], 8uLL);
  v459.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459.val[1], 0x38uLL), v459.val[1], 8uLL), v459.val[2]);
  v459.val[1] = veorq_s8(vaddq_s64(v459.val[3], v417), *&STACK[0x200]);
  v459.val[0] = veorq_s8(v459.val[0], *&STACK[0x200]);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v417, 3uLL), v417, 0x3DuLL);
  v418 = veorq_s8(v459.val[0], vsraq_n_u64(vshlq_n_s64(v459.val[2], 3uLL), v459.val[2], 0x3DuLL));
  v459.val[2] = veorq_s8(v459.val[1], v459.val[3]);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v459.val[0], 0x38uLL), v459.val[0], 8uLL);
  v459.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459.val[1], 0x38uLL), v459.val[1], 8uLL), v459.val[2]);
  v459.val[1] = veorq_s8(vaddq_s64(v459.val[3], v418), *&STACK[0x210]);
  v459.val[0] = veorq_s8(v459.val[0], *&STACK[0x210]);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v418, 3uLL), v418, 0x3DuLL);
  v419 = veorq_s8(v459.val[0], vsraq_n_u64(vshlq_n_s64(v459.val[2], 3uLL), v459.val[2], 0x3DuLL));
  v459.val[2] = veorq_s8(v459.val[1], v459.val[3]);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v459.val[0], 0x38uLL), v459.val[0], 8uLL);
  v459.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459.val[1], 0x38uLL), v459.val[1], 8uLL), v459.val[2]);
  v459.val[1] = veorq_s8(vaddq_s64(v459.val[3], v419), *&STACK[0x2D0]);
  v459.val[0] = veorq_s8(v459.val[0], *&STACK[0x2D0]);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL);
  v420 = veorq_s8(v459.val[0], vsraq_n_u64(vshlq_n_s64(v459.val[2], 3uLL), v459.val[2], 0x3DuLL));
  v459.val[2] = veorq_s8(v459.val[1], v459.val[3]);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v459.val[0], 0x38uLL), v459.val[0], 8uLL);
  v459.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459.val[1], 0x38uLL), v459.val[1], 8uLL), v459.val[2]);
  v459.val[1] = veorq_s8(vaddq_s64(v459.val[3], v420), v351);
  v459.val[0] = veorq_s8(v459.val[0], v351);
  v459.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v459.val[1], v354), vorrq_s8(v459.val[1], v355)), v355), v357);
  v459.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v459.val[0], v354), vorrq_s8(v459.val[0], v355)), v355), v357);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v420, 3uLL), v420, 0x3DuLL);
  v421 = veorq_s8(v459.val[0], vsraq_n_u64(vshlq_n_s64(v459.val[2], 3uLL), v459.val[2], 0x3DuLL));
  v459.val[2] = veorq_s8(v459.val[1], v459.val[3]);
  v459.val[3] = vsraq_n_u64(vshlq_n_s64(v459.val[0], 0x38uLL), v459.val[0], 8uLL);
  v459.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459.val[1], 0x38uLL), v459.val[1], 8uLL), v459.val[2]);
  v422 = vaddq_s64(v459.val[3], v421);
  v423 = vsubq_s64(a29, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2F0], v411), *&STACK[0x2E0]), vorrq_s8(vaddq_s64(v411, *&STACK[0x310]), *&STACK[0x300])));
  v459.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v422, v422), v362), v422), v365), v367), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x270], 3uLL), v55))), *&STACK[0x280]);
  v459.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v459.val[0], v459.val[0]), v362), v459.val[0]), v365), v367), vnegq_s64(vandq_s8(vshlq_n_s64(v295, 3uLL), v55))), *&STACK[0x290]);
  v424 = veorq_s8(v423, a28);
  v425 = veorq_s8(v423, a27);
  v426 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v424, 0x38uLL), v424, 8uLL), v425);
  v427 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v426, v426), a23), v426), a22), a21);
  v428 = veorq_s8(v427, vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL));
  v429 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL), v428), a19);
  v430 = veorq_s8(v429, vsraq_n_u64(vshlq_n_s64(v428, 3uLL), v428, 0x3DuLL));
  v431 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL), v430), *&STACK[0x200]);
  v432 = veorq_s8(v431, vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL));
  v433 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL), v432), *&STACK[0x210]);
  v434 = veorq_s8(v433, vsraq_n_u64(vshlq_n_s64(v432, 3uLL), v432, 0x3DuLL));
  v435 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL), v434), *&STACK[0x2D0]);
  v436 = veorq_s8(v435, vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL));
  v437 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL), v436), v351);
  v438 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v437, v354), vorrq_s8(v437, v355)), v355), v357);
  v439 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL)));
  v440 = vsubq_s64(a29, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2F0], v412), *&STACK[0x2E0]), vorrq_s8(vaddq_s64(v412, *&STACK[0x310]), *&STACK[0x300])));
  v459.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v439, v439), v362), v439), v365), v367), vnegq_s64(vandq_s8(vshlq_n_s64(v348, 3uLL), v55))), *&STACK[0x2A0]);
  v441 = veorq_s8(v440, a28);
  v442 = veorq_s8(v440, a27);
  v443 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v441, 0x38uLL), v441, 8uLL), v442);
  v444 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v443, v443), a23), v443), a22), a21);
  v445 = veorq_s8(v444, vsraq_n_u64(vshlq_n_s64(v442, 3uLL), v442, 0x3DuLL));
  v446 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL), v445), a19);
  v447 = veorq_s8(v446, vsraq_n_u64(vshlq_n_s64(v445, 3uLL), v445, 0x3DuLL));
  v448 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL), v447), *&STACK[0x200]);
  v449 = veorq_s8(v448, vsraq_n_u64(vshlq_n_s64(v447, 3uLL), v447, 0x3DuLL));
  v450 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL), v449), *&STACK[0x210]);
  v451 = veorq_s8(v450, vsraq_n_u64(vshlq_n_s64(v449, 3uLL), v449, 0x3DuLL));
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v451), *&STACK[0x2D0]);
  v453 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v454 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL), v453), v351);
  v455 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v454, v354), vorrq_s8(v454, v355)), v355), v357);
  v456 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL), veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL)));
  v459.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v456, v456), v362), v456), v365), v367), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x220], 3uLL), v55))), *&STACK[0x2B0]);
  v410.i64[1] = vqtbl4q_s8(v459, a20).u64[0];
  v457 = vrev64q_s8(v410);
  *(a7 + v56 - 16) = veorq_s8(vextq_s8(v457, v457, 8uLL), *&STACK[0x2C0]);
  return (*(STACK[0x330] + 8 * (((a6 == v56) * v54) ^ a3)))();
}

uint64_t sub_1000F813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x988] = v66;
  STACK[0x990] = v64;
  return (*(a64 + 8 * ((8525 * (v65 > ((v67 - 8020) ^ 0x2AC ^ (v67 - 784081848) & 0x2EBC0ADAu ^ 0xB3CuLL))) ^ (v67 - 8020))))();
}

uint64_t sub_1000F81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a13;
  a19 = 1317436891 * ((((&a17 | 0x624F459C) ^ 0xFFFFFFFE) - (~&a17 | 0x9DB0BA63)) ^ 0x2DB32215) + 8154;
  v21 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((18 * (a18 == 16257999)) ^ v19)))(v21);
}

uint64_t sub_1000F825C()
{
  STACK[0x528] = STACK[0x430];
  LODWORD(STACK[0x64C]) = STACK[0x828];
  LODWORD(STACK[0x390]) = 16257999;
  STACK[0x7D8] = *(v2 + 8 * (((v0 + 464802820) & 0xE44BBDFE) - 5015));
  LODWORD(STACK[0x310]) = v1 - 5614;
  LODWORD(STACK[0x300]) = v1 - 5021;
  LODWORD(STACK[0x2F0]) = v1 - 5055;
  LODWORD(STACK[0x2E0]) = v1 - 4572;
  LODWORD(STACK[0x2D0]) = v1 - 5037;
  return sub_1001705C4();
}

uint64_t sub_1000F82C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x966]) = v63;
  LODWORD(STACK[0x380]) = v63;
  return sub_10007E6F4(v64 - 5276, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

void sub_1000F8310(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, unsigned int a7)
{
  v9 = a1 - 6723;
  v10 = 914963389 * (((&a3 | 0xB9F6746F) + (~&a3 | 0x46098B90)) ^ 0x950AC515);
  a4 = (v9 - 1317) ^ v10;
  a3 = 0;
  a5 = v7;
  a6 = v10 ^ 0x19EC40F9;
  a7 = -1686438660 - v10;
  (*(v8 + 8 * (v9 ^ 0x2CC1)))(&a3);
  sub_10016EB68();
}

uint64_t sub_1000F843C()
{
  v2 = STACK[0x78C];
  STACK[0x740] += (v0 - 5268) ^ 0xFFFFFFFFFFFFFCB7;
  return (*(v1 + 8 * ((13494 * (v2 == 16257999)) ^ v0)))();
}

uint64_t sub_1000F84D8@<X0>(int a1@<W8>)
{
  *v2 = a1;
  v6 = 5 * ((v1 - 1737) ^ 0x4AA);
  v12 = (v1 + 5300) ^ (((&v10 - 175567974 - 2 * (&v10 & 0xF5890B9A)) ^ 0xADE0D8F8) * v5);
  v11 = v8;
  (*(v3 + 8 * (v1 + 6566)))(&v10);
  v11 = v9;
  v12 = (v6 + 6151) ^ ((((&v10 | 0x4CDFC420) - &v10 + (&v10 & 0xB3203BD8)) ^ 0x14B61742) * v5);
  (*(v3 + 8 * (v6 + 7417)))(&v10);
  return (v4 - 16257999);
}

uint64_t sub_1000F8670()
{
  v3 = STACK[0x32C];
  LODWORD(STACK[0x35C]) = STACK[0x2F0];
  LOBYTE(STACK[0x79B]) = STACK[0x310];
  LODWORD(STACK[0x49C]) = STACK[0x2D0];
  STACK[0x8A8] = v0;
  LODWORD(STACK[0x8B4]) = v1;
  return (*(v2 + 8 * (((v1 == 316 * (v3 ^ 0x15E5) - 328595766) * ((v3 + 1134778729) & 0xBC5C91A3 ^ 0x1E6B)) ^ (v3 - 3340))))();
}

void sub_1000F86F8(int a1@<W8>)
{
  *v7 = *v2;
  *v6 = v1;
  *v2 = 0;
  *(v2 + 8) = 0x1A2B28D61A2B28D6;
  v3 = a1 ^ 0xFFFFF2B0;
  v4 = *(v2 + 24);
  v5 = *(v2 + 20) & v3;
  *(v2 + 16) = 1374807828;
  *(v2 + 20) = v5;
  *(v8 + 44) = v4;
}

uint64_t sub_1000F8780@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9)
{
  v11 = (((a8 ^ 0xE00AC47) - 234925127) ^ ((a8 ^ 0x64C0B268) - 1690350184) ^ ((a8 ^ 0xDC9875C1 ^ v10) + 593995819)) + 525420103;
  v12 = ((v11 ^ 0x36D64CA) - 1804966023) ^ v11 ^ ((v11 ^ 0xC7869539) + 1350669964) ^ ((v11 ^ 0xC3A41241) + 1419973108) ^ ((v11 ^ 0x6FB71FFF) - 122676146);
  v13 = v9 - 4422;
  v15 = v12 != 1761147981 && (v12 & 0xF) == v13 - 9133 + ((v13 - 699578591) & 0x29B2BAFC);
  return (*(a1 + 8 * ((458 * v15) ^ v13)))((v13 - 1822), a1, a2, a3, a4, a5, a6, a7, a9);
}

uint64_t sub_1000F88B8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x868] = a1;
  v3 = (*(v2 + 8 * (v1 ^ 0x3568)))(32, 0x103004054B5FA7DLL);
  STACK[0x580] = v3;
  return (*(v2 + 8 * (v1 | (16 * ((((v1 ^ 0x61) + 32) ^ (v3 == 0)) & 1)))))();
}

uint64_t sub_1000F8928(double a1, int8x16_t a2, int64x2_t a3)
{
  v13 = v8 - 16;
  *&STACK[0x3D0] = *(v4 + v13 - 16);
  v14.i64[0] = v4 + v13 - 5;
  v14.i64[1] = v4 + v13 + v5 - 1650;
  v15.i64[0] = v4 + v13 - 1;
  v15.i64[1] = v4 + v13 - 2;
  *&STACK[0x390] = v15;
  v16.i64[0] = v4 + v13 - 3;
  v16.i64[1] = v4 + v13 - 4;
  v17 = v16;
  *&STACK[0x3B0] = v16;
  v16.i64[0] = v4 + v13 - 7;
  v16.i64[1] = v4 + v13 - 8;
  v18 = v16;
  *&STACK[0x3C0] = v16;
  v19.i64[0] = v4 + v13 - 9;
  v19.i64[1] = v4 + v13 - 10;
  v16.i64[0] = v4 + v13 - 11;
  v16.i64[1] = v4 + v13 - 12;
  v20.i64[0] = v4 + v13 - 13;
  v20.i64[1] = v4 + v13 - 14;
  v21.i64[0] = v4 + v13 - 15;
  v21.i64[1] = v4 + v13 - 16;
  v22 = *&STACK[0x210];
  v23 = vandq_s8(v21, *&STACK[0x210]);
  v24 = vandq_s8(v20, *&STACK[0x210]);
  v25 = vandq_s8(v16, *&STACK[0x210]);
  v26 = vandq_s8(v19, *&STACK[0x210]);
  v27 = vandq_s8(v18, *&STACK[0x210]);
  v28 = vandq_s8(v17, *&STACK[0x210]);
  v29 = vandq_s8(v15, *&STACK[0x210]);
  v30 = vandq_s8(v14, *&STACK[0x210]);
  v31 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL), a3);
  v32 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL), a3);
  v33 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL), a3);
  v34 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL), a3);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL), a3);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), a3);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), a3);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), a3);
  v39 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v31, v31), *&STACK[0x380]), v31), *&STACK[0x370]);
  v40 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v32, v32), *&STACK[0x380]), v32), *&STACK[0x370]);
  v41 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v33, v33), *&STACK[0x380]), v33), *&STACK[0x370]);
  v42 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v34, v34), *&STACK[0x380]), v34), *&STACK[0x370]);
  v43 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v35, v35), *&STACK[0x380]), v35), *&STACK[0x370]);
  v44 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v36, v36), *&STACK[0x380]), v36), *&STACK[0x370]);
  v45 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v37, v37), *&STACK[0x380]), v37), *&STACK[0x370]);
  v46 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v38, v38), *&STACK[0x380]), v38), *&STACK[0x370]);
  v47 = veorq_s8(v46, *&STACK[0x360]);
  v48 = veorq_s8(v45, *&STACK[0x360]);
  v49 = veorq_s8(v44, *&STACK[0x360]);
  v50 = veorq_s8(v43, *&STACK[0x360]);
  v51 = veorq_s8(v42, *&STACK[0x360]);
  v52 = veorq_s8(v41, *&STACK[0x360]);
  v53 = veorq_s8(v40, *&STACK[0x360]);
  v54 = veorq_s8(v39, *&STACK[0x360]);
  v55 = veorq_s8(v39, *&STACK[0x350]);
  v56 = veorq_s8(v40, *&STACK[0x350]);
  v57 = veorq_s8(v41, *&STACK[0x350]);
  v58 = veorq_s8(v42, *&STACK[0x350]);
  v59 = veorq_s8(v43, *&STACK[0x350]);
  v60 = veorq_s8(v44, *&STACK[0x350]);
  v61 = veorq_s8(v45, *&STACK[0x350]);
  v62 = veorq_s8(v46, *&STACK[0x350]);
  v63 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v62);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v61);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v60);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v59);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v58);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v57);
  v70 = vaddq_s64(v63, v56);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v71, v71), *&STACK[0x340]), v71), *&STACK[0x330]), *&STACK[0x320]);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v70, v70), *&STACK[0x340]), v70), *&STACK[0x330]), *&STACK[0x320]);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v69, v69), *&STACK[0x340]), v69), *&STACK[0x330]), *&STACK[0x320]);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v68, v68), *&STACK[0x340]), v68), *&STACK[0x330]), *&STACK[0x320]);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v67, v67), *&STACK[0x340]), v67), *&STACK[0x330]), *&STACK[0x320]);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v66, v66), *&STACK[0x340]), v66), *&STACK[0x330]), *&STACK[0x320]);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v65, v65), *&STACK[0x340]), v65), *&STACK[0x330]), *&STACK[0x320]);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v64, v64), *&STACK[0x340]), v64), *&STACK[0x330]), *&STACK[0x320]);
  v80 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v84 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v85 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v86 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v87 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v88 = veorq_s8(v75, v83);
  v89 = veorq_s8(v74, v82);
  v90 = veorq_s8(v73, v81);
  v91 = veorq_s8(v72, v80);
  v92 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v91);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v90);
  v100 = vaddq_s64(v97, v89);
  v101 = vaddq_s64(v96, v88);
  v102 = vaddq_s64(v95, v87);
  v103 = vaddq_s64(v94, v86);
  v104 = vaddq_s64(v93, v85);
  v105 = vaddq_s64(v92, v84);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), *&STACK[0x310]), v105), *&STACK[0x300]), *&STACK[0x2F0]);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), *&STACK[0x310]), v104), *&STACK[0x300]), *&STACK[0x2F0]);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), *&STACK[0x310]), v103), *&STACK[0x300]), *&STACK[0x2F0]);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), *&STACK[0x310]), v102), *&STACK[0x300]), *&STACK[0x2F0]);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v101, v101), *&STACK[0x310]), v101), *&STACK[0x300]), *&STACK[0x2F0]);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), *&STACK[0x310]), v100), *&STACK[0x300]), *&STACK[0x2F0]);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), *&STACK[0x310]), v99), *&STACK[0x300]), *&STACK[0x2F0]);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), *&STACK[0x310]), v98), *&STACK[0x300]), *&STACK[0x2F0]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v115 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v116 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v117 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v118 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v119 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v120 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v121 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v121);
  v130 = veorq_s8(vaddq_s64(v122, v114), v10);
  v131 = veorq_s8(vaddq_s64(v123, v115), v10);
  v132 = veorq_s8(vaddq_s64(v124, v116), v10);
  v133 = veorq_s8(vaddq_s64(v125, v117), v10);
  v134 = veorq_s8(vaddq_s64(v126, v118), v10);
  v135 = veorq_s8(vaddq_s64(v127, v119), v10);
  v136 = veorq_s8(vaddq_s64(v128, v120), v10);
  v137 = veorq_s8(v129, v10);
  v138 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v145 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v146 = veorq_s8(v136, v144);
  v147 = veorq_s8(v135, v143);
  v148 = veorq_s8(v134, v142);
  v149 = veorq_s8(v133, v141);
  v150 = veorq_s8(v132, v140);
  v151 = veorq_s8(v131, v139);
  v152 = veorq_s8(v130, v138);
  v153 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v152);
  v161 = veorq_s8(vaddq_s64(v153, v145), v11);
  v162 = veorq_s8(vaddq_s64(v154, v146), v11);
  v163 = veorq_s8(vaddq_s64(v155, v147), v11);
  v164 = veorq_s8(vaddq_s64(v156, v148), v11);
  v165 = veorq_s8(vaddq_s64(v157, v149), v11);
  v166 = veorq_s8(vaddq_s64(v158, v150), v11);
  v167 = veorq_s8(vaddq_s64(v159, v151), v11);
  v168 = veorq_s8(v160, v11);
  v169 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v176 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v177 = veorq_s8(v167, v175);
  v178 = veorq_s8(v166, v174);
  v179 = veorq_s8(v165, v173);
  v180 = veorq_s8(v164, v172);
  v181 = veorq_s8(v163, v171);
  v182 = veorq_s8(v162, v170);
  v183 = veorq_s8(v161, v169);
  v184 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v183);
  v192 = veorq_s8(vaddq_s64(v184, v176), v12);
  v193 = veorq_s8(vaddq_s64(v185, v177), v12);
  v194 = veorq_s8(vaddq_s64(v186, v178), v12);
  v195 = veorq_s8(vaddq_s64(v187, v179), v12);
  v196 = veorq_s8(vaddq_s64(v188, v180), v12);
  v197 = veorq_s8(vaddq_s64(v189, v181), v12);
  v198 = veorq_s8(vaddq_s64(v190, v182), v12);
  v199 = veorq_s8(v191, v12);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v201 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v202 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v203 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v204 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v205 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v206 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v207 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v208 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v211 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v212 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v207);
  v216 = vaddq_s64(v214, v206);
  v217 = vaddq_s64(v213, v205);
  v218 = vaddq_s64(v212, v204);
  v219 = vaddq_s64(v211, v203);
  v220 = vaddq_s64(v210, v202);
  v221 = vaddq_s64(v209, v201);
  v222 = vaddq_s64(v208, v200);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(v222, vandq_s8(vaddq_s64(v222, v222), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v224 = veorq_s8(vaddq_s64(vsubq_s64(v221, vandq_s8(vaddq_s64(v221, v221), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(v220, vandq_s8(vaddq_s64(v220, v220), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(v219, vandq_s8(vaddq_s64(v219, v219), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v227 = veorq_s8(vaddq_s64(vsubq_s64(v218, vandq_s8(vaddq_s64(v218, v218), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(v217, vandq_s8(vaddq_s64(v217, v217), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(v216, vandq_s8(vaddq_s64(v216, v216), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(v215, vandq_s8(vaddq_s64(v215, v215), *&STACK[0x2E0])), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v232 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v233 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v234 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v235 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v236 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v237 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v238 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v239 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v242 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v235);
  v244 = vaddq_s64(v242, v234);
  v245 = vaddq_s64(v241, v233);
  v233.i64[0] = v3 + v13 + 5;
  v233.i64[1] = v3 + v13 + 4;
  v246 = vaddq_s64(v240, v232);
  v232.i64[0] = v3 + v13 + 9;
  v232.i64[1] = v3 + v13 + 8;
  v234.i64[0] = v3 + v13 + 7;
  v234.i64[1] = v3 + v13 + 6;
  v247 = *&STACK[0x2B0];
  *&STACK[0x3A0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v238), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), a2)));
  v235.i64[0] = v3 + v13 + 3;
  v235.i64[1] = v3 + v13 + 2;
  v248 = veorq_s8(vaddq_s64(v239, v231), v247);
  v249 = veorq_s8(v246, v247);
  v250 = veorq_s8(v245, v247);
  v251 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v236), v247);
  v252 = vandq_s8(vshlq_n_s64(v21, 3uLL), a2);
  v253 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v237), v247), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), a2)));
  v254 = vshlq_u64(v251, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), a2)));
  v255 = vshlq_u64(veorq_s8(v243, v247), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), a2)));
  *&STACK[0x3B0] = vshlq_u64(v250, vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), a2)));
  *&STACK[0x3C0] = vshlq_u64(veorq_s8(v244, v247), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), a2)));
  v256 = vshlq_u64(v249, vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), a2)));
  v257 = vshlq_u64(v248, vnegq_s64(v252));
  v258 = vandq_s8(v235, v22);
  v259 = vandq_s8(v234, v22);
  v260 = vandq_s8(v232, v22);
  v261 = vandq_s8(v233, v22);
  v262 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v263 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), a3);
  v265 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), a3);
  v266 = veorq_s8(v265, *&STACK[0x2A0]);
  v267 = veorq_s8(v264, *&STACK[0x2A0]);
  v268 = veorq_s8(v264, *&STACK[0x290]);
  v269 = veorq_s8(v265, *&STACK[0x290]);
  v270 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), v268), *&STACK[0x280]);
  v271 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v269), *&STACK[0x280]);
  v272 = vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL);
  v273 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v274 = veorq_s8(v270, v272);
  v275 = vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL);
  v276 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), v274);
  v277 = veorq_s8(vaddq_s64(v275, v273), *&STACK[0x270]);
  v278 = veorq_s8(v276, *&STACK[0x270]);
  v279 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v280 = veorq_s8(v278, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL));
  v281 = veorq_s8(v277, v279);
  v282 = vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL);
  v283 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v281);
  v284 = veorq_s8(vaddq_s64(v282, v280), v10);
  v285 = veorq_s8(v283, v10);
  v286 = vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL);
  v287 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL));
  v288 = veorq_s8(v284, v286);
  v289 = vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL);
  v290 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v288);
  v291 = veorq_s8(vaddq_s64(v289, v287), v11);
  v292 = veorq_s8(v290, v11);
  v293 = vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL);
  v294 = veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL));
  v295 = veorq_s8(v291, v293);
  v296 = vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL);
  v297 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v295);
  v298 = veorq_s8(vaddq_s64(v296, v294), v12);
  v299 = veorq_s8(v297, v12);
  v300 = vsraq_n_u64(vshlq_n_s64(v294, 3uLL), v294, 0x3DuLL);
  v301 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v302 = veorq_s8(v298, v300);
  v303 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v304 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL), v302);
  v305 = veorq_s8(vaddq_s64(v303, v301), *&STACK[0x260]);
  v306 = veorq_s8(v304, *&STACK[0x260]);
  v307 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL));
  v308 = veorq_s8(v305, vsraq_n_u64(vshlq_n_s64(v301, 3uLL), v301, 0x3DuLL));
  v309 = vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL);
  v301.i64[0] = v3 + v13 + 1;
  v301.i64[1] = v3 + v13;
  v310 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL), v308);
  v308.i64[0] = v3 + v13 - 1;
  v308.i64[1] = v3 + v13 - 2;
  v311 = vaddq_s64(v309, v307);
  v312 = vsubq_s64(v310, vandq_s8(vaddq_s64(v310, v310), *&STACK[0x250]));
  v310.i64[0] = v3 + v13 - 3;
  v310.i64[1] = v3 + v13 - 4;
  v313 = vaddq_s64(v263, a3);
  v434.val[3] = veorq_s8(v255, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v311, vandq_s8(vaddq_s64(v311, v311), *&STACK[0x250])), *&STACK[0x240]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v235, 3uLL), a2))));
  v434.val[1] = veorq_s8(v254, vshlq_u64(veorq_s8(vaddq_s64(v312, *&STACK[0x240]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v234, 3uLL), a2))));
  v314 = veorq_s8(v313, *&STACK[0x2A0]);
  v315 = veorq_s8(v313, *&STACK[0x290]);
  v316 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL), v315), *&STACK[0x280]);
  v317 = veorq_s8(v316, vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL));
  v318 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v316, 0x38uLL), v316, 8uLL), v317), *&STACK[0x270]);
  v319 = veorq_s8(v318, vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL));
  v320 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL), v319), v10);
  v321 = veorq_s8(v320, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v322 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v321), v11);
  v323 = veorq_s8(v322, vsraq_n_u64(vshlq_n_s64(v321, 3uLL), v321, 0x3DuLL));
  v324 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v322, 0x38uLL), v322, 8uLL), v323), v12);
  v325 = veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL));
  v326 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v325), *&STACK[0x260]);
  v327 = veorq_s8(v326, vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL));
  v328 = vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL);
  v326.i64[0] = v3 + v13 - 5;
  v326.i64[1] = v3 + v13 - 6;
  v329 = vaddq_s64(v328, v327);
  v330 = vaddq_s64(v262, a3);
  v434.val[0] = veorq_s8(v253, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v329, vandq_s8(vaddq_s64(v329, v329), *&STACK[0x250])), *&STACK[0x240]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v232, 3uLL), a2))));
  v331 = veorq_s8(v330, *&STACK[0x2A0]);
  v332 = veorq_s8(v330, *&STACK[0x290]);
  v333 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), v332), *&STACK[0x280]);
  v334 = veorq_s8(v333, vsraq_n_u64(vshlq_n_s64(v332, 3uLL), v332, 0x3DuLL));
  v335 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v334), *&STACK[0x270]);
  v336 = veorq_s8(v335, vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL));
  v337 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL), v336), v10);
  v338 = veorq_s8(v337, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v339 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v338), v11);
  v340 = veorq_s8(v339, vsraq_n_u64(vshlq_n_s64(v338, 3uLL), v338, 0x3DuLL));
  v341 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL), v340), v12);
  v342 = veorq_s8(v341, vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL));
  v343 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL), v342), *&STACK[0x260]);
  v344 = veorq_s8(v343, vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL));
  v345 = vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL);
  v346 = vandq_s8(v326, v22);
  v347 = vaddq_s64(v345, v344);
  v348 = vandq_s8(v310, v22);
  v349 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v347, vandq_s8(vaddq_s64(v347, v347), *&STACK[0x250])), *&STACK[0x240]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v233, 3uLL), a2)));
  v350 = vandq_s8(v308, v22);
  v434.val[2] = veorq_s8(*&STACK[0x3A0], v349);
  v351 = vandq_s8(v301, v22);
  v352 = vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL);
  v353 = vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL);
  v354 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL), a3);
  v355 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), a3);
  v351.i64[0] = vqtbl4q_s8(v434, *&STACK[0x230]).u64[0];
  v356 = veorq_s8(v355, *&STACK[0x2A0]);
  v357 = veorq_s8(v354, *&STACK[0x2A0]);
  v358 = veorq_s8(v354, *&STACK[0x290]);
  v359 = veorq_s8(v355, *&STACK[0x290]);
  v360 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL), v358), *&STACK[0x280]);
  v361 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL), v359), *&STACK[0x280]);
  v362 = vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL);
  v363 = veorq_s8(v361, vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL));
  v364 = veorq_s8(v360, v362);
  v365 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v366 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v360, 0x38uLL), v360, 8uLL), v364);
  v367 = veorq_s8(vaddq_s64(v365, v363), *&STACK[0x270]);
  v368 = veorq_s8(v366, *&STACK[0x270]);
  v369 = vsraq_n_u64(vshlq_n_s64(v363, 3uLL), v363, 0x3DuLL);
  v370 = veorq_s8(v368, vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL));
  v371 = veorq_s8(v367, v369);
  v372 = vsraq_n_u64(vshlq_n_s64(v368, 0x38uLL), v368, 8uLL);
  v373 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v367, 0x38uLL), v367, 8uLL), v371);
  v374 = veorq_s8(vaddq_s64(v372, v370), v10);
  v375 = veorq_s8(v373, v10);
  v376 = vsraq_n_u64(vshlq_n_s64(v370, 3uLL), v370, 0x3DuLL);
  v377 = veorq_s8(v375, vsraq_n_u64(vshlq_n_s64(v371, 3uLL), v371, 0x3DuLL));
  v378 = veorq_s8(v374, v376);
  v379 = vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL);
  v380 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL), v378);
  v381 = veorq_s8(vaddq_s64(v379, v377), v11);
  v382 = veorq_s8(v380, v11);
  v383 = vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL);
  v384 = veorq_s8(v382, vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL));
  v385 = veorq_s8(v381, v383);
  v386 = vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL);
  v387 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL), v385);
  v388 = veorq_s8(vaddq_s64(v386, v384), v12);
  v389 = veorq_s8(v387, v12);
  v390 = vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL);
  v391 = veorq_s8(v389, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v392 = veorq_s8(v388, v390);
  v393 = vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL);
  v394 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), v392);
  v395 = veorq_s8(vaddq_s64(v393, v391), *&STACK[0x260]);
  v396 = veorq_s8(v394, *&STACK[0x260]);
  v397 = vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL);
  v398 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v392, 3uLL), v392, 0x3DuLL));
  v399 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), veorq_s8(v395, v397));
  v400 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL), v398);
  v401 = vaddq_s64(v353, a3);
  v434.val[2] = veorq_s8(v257, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v400, vandq_s8(vaddq_s64(v400, v400), *&STACK[0x250])), *&STACK[0x240]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v326, 3uLL), a2))));
  v434.val[1] = veorq_s8(v256, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v399, vandq_s8(vaddq_s64(v399, v399), *&STACK[0x250])), *&STACK[0x240]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v310, 3uLL), a2))));
  v402 = veorq_s8(v401, *&STACK[0x2A0]);
  v403 = veorq_s8(v401, *&STACK[0x290]);
  v404 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL), v403), *&STACK[0x280]);
  v405 = veorq_s8(v404, vsraq_n_u64(vshlq_n_s64(v403, 3uLL), v403, 0x3DuLL));
  v406 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL), v405), *&STACK[0x270]);
  v407 = veorq_s8(v406, vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL));
  v408 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL), v407), v10);
  v409 = veorq_s8(v408, vsraq_n_u64(vshlq_n_s64(v407, 3uLL), v407, 0x3DuLL));
  v410 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v408, 0x38uLL), v408, 8uLL), v409), v11);
  v411 = veorq_s8(v410, vsraq_n_u64(vshlq_n_s64(v409, 3uLL), v409, 0x3DuLL));
  v412 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL), v411), v12);
  v413 = veorq_s8(v412, vsraq_n_u64(vshlq_n_s64(v411, 3uLL), v411, 0x3DuLL));
  v414 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), v413), *&STACK[0x260]);
  v415 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL), veorq_s8(v414, vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL)));
  v416 = vaddq_s64(v352, a3);
  v434.val[0] = veorq_s8(*&STACK[0x3B0], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v415, vandq_s8(vaddq_s64(v415, v415), *&STACK[0x250])), *&STACK[0x240]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v308, 3uLL), a2))));
  v417 = veorq_s8(v416, *&STACK[0x2A0]);
  v418 = veorq_s8(v416, *&STACK[0x290]);
  v419 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v417, 0x38uLL), v417, 8uLL), v418), *&STACK[0x280]);
  v420 = veorq_s8(v419, vsraq_n_u64(vshlq_n_s64(v418, 3uLL), v418, 0x3DuLL));
  v421 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v419, 0x38uLL), v419, 8uLL), v420), *&STACK[0x270]);
  v422 = veorq_s8(v421, vsraq_n_u64(vshlq_n_s64(v420, 3uLL), v420, 0x3DuLL));
  v423 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL), v422), v10);
  v424 = veorq_s8(v423, vsraq_n_u64(vshlq_n_s64(v422, 3uLL), v422, 0x3DuLL));
  v425 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v423, 0x38uLL), v423, 8uLL), v424), v11);
  v426 = veorq_s8(v425, vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL));
  v427 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL), v426), v12);
  v428 = veorq_s8(v427, vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL));
  v429 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL), v428), *&STACK[0x260]);
  v430 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL), veorq_s8(v429, vsraq_n_u64(vshlq_n_s64(v428, 3uLL), v428, 0x3DuLL)));
  v431 = veorq_s8(*&STACK[0x3C0], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v430, vandq_s8(vaddq_s64(v430, v430), *&STACK[0x250])), *&STACK[0x240]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v301, 3uLL), a2))));
  v351.i64[1] = vqtbl4q_s8(v434, *&STACK[0x230]).u64[0];
  v432 = vrev64q_s8(v351);
  *(v301.i64[1] - 6) = veorq_s8(vextq_s8(v432, v432, 8uLL), *&STACK[0x3D0]);
  return (*(STACK[0x3E8] + 8 * (((v7 == v13) * v6) ^ v9)))();
}

uint64_t sub_1000F8A20()
{
  v5 = 12 * (v1 ^ 0x1104) + *(v2 + 8) + v0 - 1319436895;
  v7 = (*(v3 + 20) & 1) == 0 || v5 > 0xFFFFFFBE;
  return (*(v4 + 8 * ((v7 * (v1 ^ 0x10F9)) ^ v1)))();
}

void sub_1000F8A80()
{
  (*(v2 + 8 * ((v0 | 0x5C2) + 8126)))();
  *(v1 + 24) = 0;
  sub_1000A87DC();
}

uint64_t sub_1000F8AA8()
{
  v2 = STACK[0x800];
  LODWORD(STACK[0x70C]) = LODWORD(STACK[0x800]) + 1;
  return (*(v1 + 8 * (((v2 < 5) * ((v0 - 3646) ^ 0x8D4)) | v0)))();
}

uint64_t sub_1000F8AF8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x418];
  STACK[0x770] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((v2 != 0) * (2 * (a1 ^ 0x756) - 2618)) | a1 ^ (a1 + 2704) ^ 0x273)))();
}

uint64_t sub_1000F8DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v4)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(v5 + 8 * ((v7 * (v3 ^ 0x37A8)) ^ (v3 - 5207))))(a1, a2, a3, 16215976);
}

uint64_t sub_1000F8DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v8 + 8 * ((((v7 ^ 0x1498) + 2498 + 32 * (v7 ^ 0x1498) - 4839) * (LODWORD(STACK[0x4C4]) == LODWORD(STACK[0x5B0]))) ^ v7));
  LODWORD(STACK[0x5B0]) = -1254758812;
  return v9(a1, 3442015863, a3, 1348422546, 668742127, a6, a7, 4278255361);
}

uint64_t sub_1000F8F78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *&STACK[0x300] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x310] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2E0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x2D0] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x290] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x270] = vdupq_n_s64(a3);
  *&STACK[0x280] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x250] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x260] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x230] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x240] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x2C0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x220] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x200] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x210] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  return sub_1000D4270(a1, 2021816022);
}

uint64_t sub_1000F92F0()
{
  v10 = *(v0 + 16);
  v11 = ((-2 - ((~v7 | 0x5F49AF3459486BF9) + (v7 | 0xA0B650CBA6B79406))) ^ 0xC5B9EAF3AE12D81) * v5;
  *(v9 - 120) = v6;
  *(v9 - 112) = v11 + v4 + v10 - ((2 * v10) & 0xC0A4457886BED430);
  *(v9 - 104) = v3 - v11 + v2;
  v12 = (*(v1 + 8 * v8))(v9 - 120);
  return (*(v1 + 8 * ((5385 * (*(v9 - 100) == 16257999)) ^ v2)))(v12);
}

uint64_t sub_1000F93AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v4;
  return sub_1001A5240(a1, a2, a3, a4);
}

void sub_1000F93DC(uint64_t a1)
{
  v1 = *(a1 + 24) - 2048652491 * ((a1 + 991404335 - 2 * (a1 & 0x3B17A12F)) ^ 0x8AA6362A);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000F94B8@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_1000FE680();
}

uint64_t sub_1000F94C8@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x1794;
  v4 = ((a1 ^ 0x1794) + 1921) | 0x781;
  v5 = ((a1 ^ 0x1794) + 1725737790) & 0x99234FDF;
  v6 = STACK[0x7D8];
  STACK[0x810] = v1 + 116;
  STACK[0x518] = v6;
  return (*(v2 + 8 * (((v4 - 7027 + v5) * (v6 != 0)) ^ v3)))();
}

uint64_t sub_1000F9578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39)
{
  v41 = a14 - v39 - 3252;
  v42 = (*(v40 + 8 * (a14 + 1307)))(&STACK[0x5A0], 0);
  v43 = LODWORD(STACK[0x5A8]) + 2043257836 - ((v41 ^ 0x4515D885) & (2 * LODWORD(STACK[0x5A8])));
  LODWORD(STACK[0x598]) = LODWORD(STACK[0x5A0]) + 2043257836 - ((2 * LODWORD(STACK[0x5A0])) & 0xF39347D8);
  LODWORD(STACK[0x594]) = v43;
  v44 = (*(v40 + 8 * (a14 + 1250)))(v42);
  LODWORD(STACK[0x59C]) = v44 + 2043257836 - ((2 * v44) & 0xF39347D8);
  v45 = (*(v40 + 8 * a12))();
  *a39 = v45 + 2043257836 - ((2 * v45) & 0xF39347D8);
  LODWORD(a32) = a33 + 1;
  return sub_1000F9644(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1000F9644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v46 = *(v43 + 4 * (v44 - 1));
  *(v43 + 4 * v44) = (*(a39 + 4 * v42) ^ 0x79C9A3EC) + v42 + ((1664525 * (v46 ^ (v46 >> 30))) ^ *(v43 + 4 * v44));
  *(v45 - 128) = (v41 - 1737626868) ^ v40;
  *(v45 - 152) = (v41 + 118388790) ^ v40;
  *(v45 - 148) = v40;
  v47 = v45 - 152;
  *(v47 + 16) = v44 + 1 - v40;
  *(v47 + 32) = a34;
  *(v45 - 144) = ((v41 + 118388790) ^ 0x9A) - v40;
  *(v45 - 140) = ((v41 + 118388790) ^ 0x32B) - v40;
  v48 = (*(a40 + 8 * (v41 + 1232701059)))(v45 - 152);
  return (*(a40 + 8 * *(v45 - 124)))(v48);
}

uint64_t sub_1000F9710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LOWORD(STACK[0x9B6]);
  STACK[0x4E0] = STACK[0x9B8];
  return (*(v71 + 8 * ((13 * (((v72 == 17168) ^ (a71 - 92)) & 1)) ^ (a71 - 3719))))();
}

uint64_t sub_1000F9768@<X0>(__int16 a1@<W0>, __int16 a2@<W1>, __int16 a3@<W2>, int a4@<W3>, __int16 a5@<W8>)
{
  v12 = a5 + (*(v11 + ((a3 ^ 2) * a1 - ((a3 ^ 2) * a1) / 0x3B0u * a2)) ^ 0xA7) * ((a4 - 27734) & 0x71EC ^ 0x1152);
  *(v10 + (v8 * v5 - 13782 - (((((v8 * v5 - 13782) & 0xFFFEu) * v6) >> 16) >> 7) * v7)) = *(v10 + (v12 - ((((v12 & 0xFFFEu) * v6) >> 16) >> 7) * v7));
  return (*(v9 + 8 * ((122 * (v8 != -581887727)) ^ a4)))();
}

uint64_t sub_1000F987C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = 16 - ((a2 + 2) & ((v2 + 1012) ^ 0x146A) ^ 8u);
  LODWORD(STACK[0x658]) = v3;
  return (*(a1 + 8 * ((2150 * ((v2 ^ 0x9FB ^ a2 ^ 0x79EDFC5ADFE77675) + ((2 * a2) & 0x1BFCEDFFELL) + (v3 ^ 0xFEAF79FD1F76AE67) + 2 * (v3 & 7) - 0x789D7657FF5E1E66 < 0xFFFFFFF6)) ^ v2)))();
}

uint64_t sub_1000F99C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = v10 - 1;
  v21 = __ROR8__((v9 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((v21 - 0x2607A7720729A79) | 0x7F50B0EAB20D7126) - ((v21 - 0x2607A7720729A79) | v12) + v12;
  v23 = __ROR8__(v22 ^ 0xA166AAF4BCB468F5, 8);
  v24 = v17 ^ 0x4D9A86B240DF4A72 ^ v22;
  v25 = (((2 * (v23 + v24)) | 0x8E237DE192A9CA6ALL) - (v23 + v24) + 0x38EE410F36AB1ACBLL) ^ 0xF9D62AAA5A604418;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0x7381049A069EAA6) - (v27 + v26) - 0x39C0824D034F554) ^ 0xF8C85E9088759E58;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x87C30A0A7B081733;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((((2 * (v32 + v31)) & 0x295CF5CC1B28F7C6) - (v32 + v31) - 0x14AE7AE60D947BE4) ^ 0xCE2C7D00F8642E60, 8);
  v34 = (((2 * (v32 + v31)) & 0x295CF5CC1B28F7C6) - (v32 + v31) - 0x14AE7AE60D947BE4) ^ 0xCE2C7D00F8642E60 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34) ^ 0x2E769D09049CAA6ALL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * ((v37 + v36) ^ 0xB26D991E94D41A74)) | 0x113E4DE7F9261D5ELL) - ((v37 + v36) ^ 0xB26D991E94D41A74) - 0x89F26F3FC930EAFLL) ^ 0x703A61C38953CBECLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__((a9 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = __ROR8__(v38, 8);
  v42 = ((v40 - 0x6AF7234D0CC131D5) & a4 ^ a5) + ((v40 - 0x6AF7234D0CC131D5) & a2 ^ a3) - 1;
  v43 = v42 ^ a6;
  v44 = v42 ^ a7;
  v45 = v41 + v39 - ((2 * (v41 + v39)) & 0x1B79F8777AE58672);
  v46 = (__ROR8__(v43, 8) + v44) ^ 0xE49D77DF873DBF7ELL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v13;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v14;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x61459D2AF01F24F7;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x64C31C027084DE6CLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v15;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  *(a9 + v20) = (((v45 + v16) ^ a1) >> (8 * ((v9 + v20) & 7))) ^ (((v11 - ((v58 + v57) | v11) + ((v58 + v57) | a8)) ^ v18) >> (8 * ((a9 + v20) & 7))) ^ *(v9 + v20);
  return (*(v19 + 8 * ((7461 * (v20 == 0)) ^ v17)))();
}

uint64_t sub_1000F9D14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x560] = 0;
  STACK[0x758] = 0;
  return (*(v2 + 8 * ((((v1 + 601645555) & 0xDC237A7F ^ 6) * (v3 == 0)) ^ v1)))();
}

uint64_t sub_1000F9D78@<X0>(uint64_t a1@<X8>)
{
  v7 = *(a1 + 8);
  STACK[0x660] = *(v6 + 8 * v5);
  STACK[0x808] = v4;
  STACK[0x3E0] = 0;
  STACK[0x690] = 0;
  if (v7)
  {
    v1 = v4 == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  return (*(v6 + 8 * ((173 * v2) ^ ((v5 - 675) | 0x1300))))();
}

uint64_t sub_1000F9E18@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v2 - 748;
  v7 = v3 ^ a2;
  v9 = (v4 - a1) < 0x20 || v7 < 8;
  return (*(v5 + 8 * ((11 * ((v9 ^ (v6 - 4)) & 1)) ^ v6)))();
}

_DWORD *sub_1000F9E64()
{
  result = v1;
  *v1 = (v3 ^ 0x38F99FFF) - 939625520 + ((v3 << (v2 + 72)) & 0x71F230DA);
  return result;
}

uint64_t sub_1000FA06C@<X0>(int a1@<W8>)
{
  v5 = (a1 + 585119312) & 0xDD1FDCBF;
  v2[47] = v2[15] - ((2 * v2[15]) & 0x78) + 60;
  v2[46] = v2[14] - ((2 * v2[14]) & 0x78) + 60;
  v2[45] = v2[13] - ((((a1 + 80) & 0xBF) - 46) & (2 * v2[13])) + 60;
  v2[44] = v2[12] - ((2 * v2[12]) & 0x78) + 60;
  v2[43] = v2[11] - ((2 * v2[11]) & 0x78) + 60;
  v2[42] = v2[10] - ((2 * v2[10]) & 0x78) + 60;
  v2[41] = v2[9] - ((2 * v2[9]) & 0x78) + 60;
  v2[40] = v2[8] - ((2 * v2[8]) & 0x78) + 60;
  v2[39] = v2[7] - ((2 * v2[7]) & 0x78) + 60;
  v2[38] = v2[6] - ((2 * v2[6]) & 0x78) + 60;
  v2[37] = v2[5] - ((2 * v2[5]) & 0x78) + 60;
  v2[36] = v2[4] - ((2 * v2[4]) & 0x78) + 60;
  v2[35] = v2[3] - ((2 * v2[3]) & 0x78) + 60;
  v2[34] = v2[2] - ((2 * v2[2]) & 0x78) + 60;
  v2[33] = v2[1] - ((2 * v2[1]) & 0x78) + 60;
  *v1 = *v2 - ((2 * *v2) & 0x78) + 60;
  *(v4 - 224) = (a1 - 2140797540) ^ (914963389 * ((1535196317 - ((v4 - 232) | 0x5B813C9D) + ((v4 - 232) | 0xA47EC362)) ^ 0x88827219));
  v6 = (*(v3 + 8 * (a1 + 8208)))(v4 - 232);
  *v2 = *(v4 - 232) ^ 0xAC;
  return (*(v3 + 8 * v5))(v6);
}

uint64_t sub_1000FA2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v21 = 1824088897 * (&a14 ^ 0x5869D362);
  a16 = a12;
  a17 = &a10;
  a18 = -654855621 - v21;
  a19 = v21 + 1674579114;
  a15 = v21 + 868831800;
  v22 = (*(v19 + 76864))(&a14);
  return (*(v19 + 8 * ((5109 * (a14 == v20 + 5014)) ^ 0xC6Bu)))(v22);
}

uint64_t sub_1000FA6E4()
{
  STACK[0x688] = STACK[0x648];
  LODWORD(STACK[0x8A4]) = STACK[0x46C];
  LODWORD(STACK[0x85C]) = 16257999;
  STACK[0x580] = *(v1 + 8 * (((v0 + 218371799) & 0xF2FBF7CB) - 5641));
  return sub_10007B4D4();
}

void sub_1000FA7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x4D8] = 0;
  STACK[0x500] = *(a72 + 8 * (v72 - 6069));
  JUMPOUT(0x1000FA830);
}

void LainiFYJT9auDqhZYWzW(int a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && a3 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000FA96C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3AF9)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x400];
  STACK[0x8A8] = v2;
  return (*(v3 + 8 * (((v2 == 0) * (((v0 + 441026197) & 0xE5B67E2F) - 9002)) ^ v0)))();
}

void sub_1000FAA50(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  *&STACK[0x3C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x350] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x360] = vdupq_n_s64(0x38uLL);
  *&STACK[0x330] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x340] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x310] = vdupq_n_s64(v13);
  *&STACK[0x320] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x2F0] = vdupq_n_s64(a2);
  *&STACK[0x300] = vdupq_n_s64(v9);
  *&STACK[0x2D0] = vdupq_n_s64(a3);
  *&STACK[0x2E0] = vdupq_n_s64(v11);
  *&STACK[0x2B0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x2C0] = vdupq_n_s64(v14);
  *&STACK[0x3A0] = vdupq_n_s64(a5);
  *&STACK[0x3B0] = vdupq_n_s64(a4);
  *&STACK[0x290] = vdupq_n_s64(a6);
  *&STACK[0x2A0] = vdupq_n_s64(v12);
  *&STACK[0x280] = vdupq_n_s64(v6);
  *&STACK[0x250] = vdupq_n_s64(v10);
  *&STACK[0x260] = vdupq_n_s64(v7);
  *&STACK[0x390] = xmmword_100382E40;
  *&STACK[0x270] = vdupq_n_s64(v8);
  JUMPOUT(0x1000FAB94);
}

uint64_t sub_1000FB610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, char a20, unsigned int a21, uint64_t a22, int *a23)
{
  a22 = a19;
  a23 = &a18;
  a21 = (v23 - 1002) ^ (33731311 * ((1013938664 - (&a20 | 0x3C6F79E8) + (&a20 | 0xC3908617)) ^ 0xFA664C34));
  v25 = (*(v24 + 8 * ((v23 - 1220) ^ 0x2EAB)))(&a20);
  v26 = a18 != ((v23 - 2081) | 0x10) - 2165;
  return (*(v24 + 8 * (((8 * v26) | (16 * v26)) ^ (v23 - 1220))))(v25);
}

uint64_t sub_1000FB6BC()
{
  v2 = STACK[0x6E0];
  v3 = *STACK[0x9A0];
  STACK[0x958] = *(v1 + 8 * v0);
  STACK[0x5F0] = v3;
  LODWORD(STACK[0x6FC]) = 1;
  STACK[0x8D0] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 1000002677) & 0x3B9ADFFB ^ 0xBAC)) ^ (v0 + 5607))))();
}

void sub_1000FB72C(_DWORD *a1)
{
  v1 = *a1 + 1710126949 * ((2 * (a1 & 0x272FA8CB) - a1 - 657434828) ^ 0xEACB0CA4);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000FB84C@<X0>(_DWORD *a1@<X7>, int a2@<W8>)
{
  *a1 = a2;
  v4 = 3 * ((v2 - 944) ^ 0xB6D);
  v10 = (v2 + 3531) ^ (1824088897 * ((2 * (&v8 & 0x377787F8) - &v8 - 930580477) ^ 0x90E1AB61));
  v9 = v7;
  (*(v3 + 8 * (v2 + 4797)))(&v8);
  v9 = v6;
  v10 = (v4 + 4932) ^ (1824088897 * ((-878821449 - (&v8 | 0xCB9E3FB7) + (&v8 | 0x3461C048)) ^ 0x6C08132A));
  (*(v3 + 8 * (v4 + 6198)))(&v8);
  return 0;
}

uint64_t sub_1000FB9A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = a4 & 0x94B13FCF;
  v22 = v16 + a13 + v13 + a12 + a1;
  v514 = *(v18 + a1 - 16);
  v23.i64[0] = v18 + a1 - 7;
  v23.i64[1] = v18 + a1 - 8;
  v24.i64[0] = v18 + a1 - 5;
  v24.i64[1] = v18 + a1 - 6;
  v25.i64[0] = v22 + 0x6154020981223458;
  v25.i64[1] = v22 + 0x6154020981223457;
  v26.i64[0] = v22 + 0x615402098122345ALL;
  v26.i64[1] = v22 + 0x6154020981223459;
  v27 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v28 = vandq_s8(v24, v27);
  v29 = vandq_s8(v23, v27);
  v30 = vdupq_n_s64(0x38uLL);
  v31 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x3A0] = v31;
  v32 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL), v31);
  v33 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v34 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL), v31);
  v35 = veorq_s8(v34, v33);
  v36 = veorq_s8(v32, v33);
  v37 = vdupq_n_s64(a2);
  *&STACK[0x250] = v37;
  v38 = veorq_s8(v32, v37);
  v39 = veorq_s8(v34, v37);
  v40 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x240] = v40;
  v41 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v38), v40);
  v42 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v39), v40);
  v43 = veorq_s8(v42, vsraq_n_u64(vshlq_n_s64(v39, 3uLL), v39, 0x3DuLL));
  v44 = veorq_s8(v41, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v45 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v44);
  v47 = vaddq_s64(v45, v43);
  v48 = vdupq_n_s64(0x444F902103838ADEuLL);
  v49 = vdupq_n_s64(a3);
  *&STACK[0x220] = v49;
  *&STACK[0x230] = v48;
  v50 = vdupq_n_s64(0x578539A934117766uLL);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v47, v47), v48), v47), v49), v50);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v46, v46), v48), v46), v49), v50);
  v53 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v54 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54);
  v57 = vaddq_s64(v55, v53);
  v58 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x2F0] = v58;
  v59 = veorq_s8(v57, v58);
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v67 = veorq_s8(vaddq_s64(v64, v62), v66);
  v68 = veorq_s8(v65, v66);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v71 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = vdupq_n_s64(0x953D53DE148E1D56);
  v75 = vdupq_n_s64(0xB5615610F5B8F155);
  v76 = vdupq_n_s64(0x2E5DB5ED7AC3D0C7uLL);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v73, v73), v74), v73), v75), v76);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v72, v72), v74), v72), v75), v76);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v81 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80);
  v83 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v84 = veorq_s8(vaddq_s64(v81, v79), v83);
  v85 = veorq_s8(v82, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), veorq_s8(v84, v86));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v87);
  v90 = vdupq_n_s64(0x4AC0565324D70174uLL);
  v91 = vdupq_n_s64(v14);
  v92 = vdupq_n_s64(0xE1F014810C505D35);
  *&STACK[0x310] = v92;
  v93 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v89, v90), vorrq_s8(v89, v91)), v91), v92), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v30)));
  v94 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v88, v90), vorrq_s8(v88, v91)), v91), v92), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v30)));
  v95 = vandq_s8(v26, v27);
  v96 = vandq_s8(v25, v27);
  v97 = v27;
  v98 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v100 = vdupq_n_s64(0x5B38AD8DDB3A7C5CuLL);
  v101 = vdupq_n_s64(0x89E752B3FB5DDBECLL);
  v102 = vdupq_n_s64(0x72900020EB4C2C24uLL);
  v103 = vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(vaddq_s64(v99, v99), v100), v101)), v102);
  v104 = vdupq_n_s64(0xCF99C25E83E78D67);
  v105 = vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(vaddq_s64(v98, v98), v100), v101)), v102);
  v106 = veorq_s8(v105, v104);
  v107 = veorq_s8(v103, v104);
  v108 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v110 = vdupq_n_s64(0xA37B7469EF0E7C16);
  v111 = veorq_s8(v103, v110);
  v112 = v110;
  *&STACK[0x2E0] = v110;
  v113 = vaddq_s64(v108, v111);
  v114 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v115 = veorq_s8(v105, v112);
  v116 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v117 = veorq_s8(vaddq_s64(v109, v115), v116);
  *&STACK[0x210] = v116;
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v120 = veorq_s8(v113, v116);
  v121 = veorq_s8(v120, v114);
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vaddq_s64(v119, v118);
  v124 = vdupq_n_s64(0x5ABE700122B28302uLL);
  v125 = vaddq_s64(v122, v121);
  *&STACK[0x2A0] = v124;
  v126 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v127 = vdupq_n_s64(0xD2A0C7FF6EA6BE7FLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v129 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v125, v125), v124), v125), v127);
  *&STACK[0x2D0] = v127;
  v130 = vdupq_n_s64(0x90D044FD8F5ED69ALL);
  v131 = veorq_s8(v129, v130);
  v132 = v130;
  *&STACK[0x390] = v130;
  v133 = veorq_s8(v131, v128);
  v134 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), v124), v123), v127), v132);
  v136 = veorq_s8(v135, v126);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = vdupq_n_s64(0xA11B1487180DD3BBLL);
  v139 = vdupq_n_s64(v15);
  *&STACK[0x370] = v138;
  v140 = vsubq_s64(vorrq_s8(v137, v138), vorrq_s8(v137, v139));
  v141 = vaddq_s64(v134, v133);
  v142 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v144 = vaddq_s64(vsubq_s64(vorrq_s8(v141, v138), vorrq_s8(v141, v139)), v139);
  v145 = v139;
  *&STACK[0x330] = v139;
  v146 = vdupq_n_s64(0x5C9047B9C167908FuLL);
  v147 = veorq_s8(v144, v146);
  v148 = v146;
  *&STACK[0x340] = v146;
  v149 = veorq_s8(v147, v143);
  v150 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v151 = veorq_s8(vaddq_s64(v140, v145), v148);
  v152 = veorq_s8(v151, v142);
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v154 = vaddq_s64(v150, v149);
  v155 = vdupq_n_s64(0x2FB8FA78C5363E4uLL);
  *&STACK[0x380] = v155;
  v156 = vsubq_s64(v154, vandq_s8(vaddq_s64(v154, v154), v155));
  v157 = vaddq_s64(v153, v152);
  v158 = vsubq_s64(v157, vandq_s8(vaddq_s64(v157, v157), v155));
  v159 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v161 = vdupq_n_s64(0x817DC7D3C629B1F2);
  v162 = vaddq_s64(v158, v161);
  *&STACK[0x2C0] = v161;
  v163 = vdupq_n_s64(0x8BBA1DD6A2E83279);
  v164 = veorq_s8(v162, v163);
  v165 = v163;
  *&STACK[0x360] = v163;
  v166 = veorq_s8(v164, v160);
  v167 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v168 = veorq_s8(vaddq_s64(v156, v161), v165);
  v169 = veorq_s8(v168, v159);
  v170 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v171 = vaddq_s64(v167, v166);
  v172 = vdupq_n_s64(0x138A00D81D9F80FEuLL);
  *&STACK[0x350] = v172;
  v173 = vsubq_s64(v171, vandq_s8(vaddq_s64(v171, v171), v172));
  v174 = vaddq_s64(v170, v169);
  v175 = vsubq_s64(v174, vandq_s8(vaddq_s64(v174, v174), v172));
  v176 = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v177 = vdupq_n_s64(0x9C5006C0ECFC07FuLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  v179 = vaddq_s64(v175, v177);
  *&STACK[0x2B0] = v177;
  v180 = vdupq_n_s64(0x6855A70E70B2CB06uLL);
  v181 = veorq_s8(v179, v180);
  v182 = v180;
  *&STACK[0x320] = v180;
  v183 = veorq_s8(v181, v178);
  v184 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v185 = veorq_s8(vaddq_s64(v173, v177), v182);
  v186 = veorq_s8(v185, v176);
  v187 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v188 = vaddq_s64(v184, v183);
  v189 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v190 = vaddq_s64(v187, v186);
  v191 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v192 = vdupq_n_s64(v19);
  v193 = veorq_s8(v190, v192);
  v194 = v192;
  *&STACK[0x3B0] = v192;
  v195 = veorq_s8(v193, v191);
  v196 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v197 = veorq_s8(v188, v194);
  v198 = vaddq_s64(v196, v195);
  v199 = vdupq_n_s64(v17);
  *&STACK[0x280] = v199;
  v518.val[3] = veorq_s8(vshlq_u64(veorq_s8(v198, v199), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v30))), v94);
  v518.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), veorq_s8(v197, v189)), v199), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v30))), v93);
  v196.i64[0] = v18 + a1 - 1;
  v196.i64[1] = v18 + a1 - 2;
  v200 = v97;
  v201 = vandq_s8(v196, v97);
  v202 = *&STACK[0x3A0];
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), *&STACK[0x3A0]);
  v204 = veorq_s8(v203, v33);
  v206 = *&STACK[0x240];
  v205 = *&STACK[0x250];
  v207 = veorq_s8(v203, *&STACK[0x250]);
  v208 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v209 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v207), *&STACK[0x240]);
  v210 = veorq_s8(v209, v208);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210);
  v212 = *&STACK[0x220];
  v213 = *&STACK[0x230];
  v214 = v50;
  v511 = v50;
  v215 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v211, v211), *&STACK[0x230]), v211), *&STACK[0x220]), v50);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), *&STACK[0x2F0]);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), v66);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220);
  *&STACK[0x200] = v74;
  v512 = v76;
  v222 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v221, v221), v74), v221), v75), v76);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), v83);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL)));
  *&STACK[0x300] = v90;
  v515 = v91;
  v226 = vaddq_s64(vsubq_s64(vorrq_s8(v225, v90), vorrq_s8(v225, v91)), v91);
  v227 = *&STACK[0x310];
  v510 = v30;
  v513 = vshlq_u64(veorq_s8(v226, *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v196, 3uLL), v30)));
  v226.i64[0] = v22 + 0x615402098122345ELL;
  v226.i64[1] = v22 + 0x615402098122345DLL;
  v228 = vandq_s8(v226, v200);
  v229 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  *&STACK[0x290] = v100;
  *&STACK[0x260] = v101;
  *&STACK[0x270] = v102;
  v230 = vaddq_s64(vsubq_s64(v229, vandq_s8(vaddq_s64(vaddq_s64(v229, v229), v100), v101)), v102);
  v231 = v104;
  v516 = v104;
  v232 = veorq_s8(v230, v104);
  v233 = veorq_s8(v230, *&STACK[0x2E0]);
  v234 = vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL);
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), *&STACK[0x210]);
  v236 = veorq_s8(v235, v234);
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236);
  v238 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v237, v237), v124), v237), *&STACK[0x2D0]), *&STACK[0x390]);
  v239 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v240 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239);
  v241 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v240, *&STACK[0x370]), vorrq_s8(v240, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x340]);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), *&STACK[0x380])), *&STACK[0x2C0]), *&STACK[0x360]);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(v246, vandq_s8(vaddq_s64(v246, v246), *&STACK[0x350])), *&STACK[0x2B0]), *&STACK[0x320]);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v249 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248), *&STACK[0x3B0]);
  v518.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL))), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v226, 3uLL), v30))), v513);
  v250 = 481 * (v21 ^ 0x17D0);
  v226.i64[0] = v18 + a1 - 3;
  v226.i64[1] = v18 + a1 - 9143 + v250;
  v251 = vandq_s8(v226, v200);
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v202);
  v253 = veorq_s8(v252, v33);
  v254 = veorq_s8(v252, v205);
  v255 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v256 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254), v206);
  v257 = veorq_s8(v256, v255);
  v258 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v257);
  v259 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v258, v258), v213), v258), v212), v214);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v261 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260), *&STACK[0x2F0]);
  v262 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v263 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), v262), v66);
  v264 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v262, 3uLL), v262, 0x3DuLL));
  v265 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v265, v265), v74), v265), v75), v76);
  v267 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL));
  v268 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v267), v83);
  v269 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL)));
  v268.i64[0] = v22 + 0x615402098122345CLL;
  v268.i64[1] = v22 + 0x61540209812210A8 + v250;
  v270 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v269, *&STACK[0x300]), vorrq_s8(v269, v515)), v515), v227), vnegq_s64(vandq_s8(vshlq_n_s64(v226, 3uLL), v30)));
  v271 = vandq_s8(v268, v200);
  v272 = vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL);
  v273 = vaddq_s64(vsubq_s64(v272, vandq_s8(vaddq_s64(vaddq_s64(v272, v272), v100), v101)), v102);
  v274 = veorq_s8(v273, v231);
  v275 = veorq_s8(v273, *&STACK[0x2E0]);
  v276 = vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL);
  v277 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), v275), *&STACK[0x210]);
  v278 = veorq_s8(v277, v276);
  v279 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v278);
  v280 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v279, v279), *&STACK[0x2A0]), v279), *&STACK[0x2D0]), *&STACK[0x390]);
  v281 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v282 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v281);
  v283 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v282, *&STACK[0x370]), vorrq_s8(v282, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x340]);
  v284 = veorq_s8(v283, vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL));
  v285 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL), v284);
  v286 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), *&STACK[0x380])), *&STACK[0x2C0]), *&STACK[0x360]);
  v287 = veorq_s8(v286, vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL));
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287);
  v289 = veorq_s8(vaddq_s64(vsubq_s64(v288, vandq_s8(vaddq_s64(v288, v288), *&STACK[0x350])), *&STACK[0x2B0]), *&STACK[0x320]);
  v290 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v291 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v290), *&STACK[0x3B0]);
  v518.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL))), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v268, 3uLL), v30))), v270);
  v197.i64[0] = v18 + a1 - 15;
  v197.i64[1] = v18 + a1 - 16;
  v292 = vandq_s8(v197, v200);
  v293 = vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL);
  v292.i64[0] = v18 + a1 - 13;
  v292.i64[1] = v18 + a1 - 14;
  v294 = vandq_s8(v292, v200);
  v295 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), *&STACK[0x3A0]);
  v296 = veorq_s8(v295, v33);
  v297 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v298 = vaddq_s64(v293, *&STACK[0x3A0]);
  v299 = veorq_s8(v298, v33);
  v300 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v301 = veorq_s8(v295, v205);
  v302 = vaddq_s64(v297, v301);
  v303 = vsraq_n_u64(vshlq_n_s64(v301, 3uLL), v301, 0x3DuLL);
  v304 = veorq_s8(v298, v205);
  v305 = vaddq_s64(v300, v304);
  v306 = vsraq_n_u64(vshlq_n_s64(v304, 3uLL), v304, 0x3DuLL);
  v307 = veorq_s8(v305, *&STACK[0x240]);
  v308 = veorq_s8(v307, v306);
  v309 = vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL);
  v310 = veorq_s8(v302, *&STACK[0x240]);
  v311 = veorq_s8(v310, v303);
  v312 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v313 = vaddq_s64(v309, v308);
  v314 = vaddq_s64(v312, v311);
  v315 = vsraq_n_u64(vshlq_n_s64(v308, 3uLL), v308, 0x3DuLL);
  v316 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v317 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v314, v314), v213), v314), *&STACK[0x220]), v511);
  v318 = veorq_s8(v317, v316);
  v319 = vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL);
  v320 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v313, v313), v213), v313), *&STACK[0x220]), v511);
  v321 = veorq_s8(v320, v315);
  v322 = vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL);
  v323 = vaddq_s64(v319, v318);
  v324 = vsraq_n_u64(vshlq_n_s64(v318, 3uLL), v318, 0x3DuLL);
  v325 = veorq_s8(vaddq_s64(v322, v321), *&STACK[0x2F0]);
  v326 = veorq_s8(v325, vsraq_n_u64(vshlq_n_s64(v321, 3uLL), v321, 0x3DuLL));
  v327 = vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL);
  v328 = veorq_s8(v323, *&STACK[0x2F0]);
  v329 = veorq_s8(v328, v324);
  v330 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v331 = vaddq_s64(v327, v326);
  v332 = vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL);
  v333 = vaddq_s64(v330, v329);
  v334 = vsraq_n_u64(vshlq_n_s64(v329, 3uLL), v329, 0x3DuLL);
  v335 = veorq_s8(v333, v66);
  v336 = veorq_s8(v335, v334);
  v337 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v338 = veorq_s8(v331, v66);
  v339 = veorq_s8(v338, v332);
  v340 = vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL);
  v341 = vaddq_s64(v337, v336);
  v342 = vaddq_s64(v340, v339);
  v343 = vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL);
  v344 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v345 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v342, v342), *&STACK[0x200]), v342), v75), v512);
  v346 = veorq_s8(v345, v344);
  v347 = vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL);
  v348 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v341, v341), *&STACK[0x200]), v341), v75), v512);
  v349 = veorq_s8(v348, v343);
  v350 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v351 = vaddq_s64(v347, v346);
  v352 = vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL);
  v353 = vaddq_s64(v350, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL);
  v355 = veorq_s8(v353, v83);
  v356 = veorq_s8(v351, v83);
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL), veorq_s8(v356, v352));
  v358 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL), veorq_s8(v355, v354));
  v359 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v358, *&STACK[0x300]), vorrq_s8(v358, v515)), v515), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v292, 3uLL), v510)));
  v360 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v357, *&STACK[0x300]), vorrq_s8(v357, v515)), v515), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v197, 3uLL), v510)));
  v292.i64[0] = v22 + 0x6154020981223450;
  v292.i64[1] = v22 + 0x615402098122344FLL;
  v361 = vandq_s8(v292, v200);
  v362 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v361.i64[0] = v22 + 0x6154020981223452;
  v361.i64[1] = v22 + 0x6154020981223451;
  v363 = vandq_s8(v361, v200);
  v364 = vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL);
  v365 = vaddq_s64(vsubq_s64(v364, vandq_s8(vaddq_s64(vaddq_s64(v364, v364), *&STACK[0x290]), *&STACK[0x260])), *&STACK[0x270]);
  v366 = veorq_s8(v365, v516);
  v367 = vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL);
  v368 = vaddq_s64(vsubq_s64(v362, vandq_s8(vaddq_s64(vaddq_s64(v362, v362), *&STACK[0x290]), *&STACK[0x260])), *&STACK[0x270]);
  v369 = veorq_s8(v368, v516);
  v370 = vsraq_n_u64(vshlq_n_s64(v369, 0x38uLL), v369, 8uLL);
  v371 = veorq_s8(v365, *&STACK[0x2E0]);
  v372 = vaddq_s64(v367, v371);
  v373 = vsraq_n_u64(vshlq_n_s64(v371, 3uLL), v371, 0x3DuLL);
  v374 = veorq_s8(v368, *&STACK[0x2E0]);
  v375 = vaddq_s64(v370, v374);
  v376 = vsraq_n_u64(vshlq_n_s64(v374, 3uLL), v374, 0x3DuLL);
  v377 = veorq_s8(v375, *&STACK[0x210]);
  v378 = veorq_s8(v377, v376);
  v379 = vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL);
  v380 = veorq_s8(v372, *&STACK[0x210]);
  v381 = veorq_s8(v380, v373);
  v382 = vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL);
  v383 = vaddq_s64(v379, v378);
  v384 = vaddq_s64(v382, v381);
  v385 = vsraq_n_u64(vshlq_n_s64(v378, 3uLL), v378, 0x3DuLL);
  v386 = vsraq_n_u64(vshlq_n_s64(v381, 3uLL), v381, 0x3DuLL);
  v387 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v384, v384), *&STACK[0x2A0]), v384), *&STACK[0x2D0]), *&STACK[0x390]);
  v388 = veorq_s8(v387, v386);
  v389 = vsraq_n_u64(vshlq_n_s64(v387, 0x38uLL), v387, 8uLL);
  v390 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v383, v383), *&STACK[0x2A0]), v383), *&STACK[0x2D0]), *&STACK[0x390]);
  v391 = veorq_s8(v390, v385);
  v392 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391);
  v393 = vaddq_s64(v389, v388);
  v394 = vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL);
  v395 = vsraq_n_u64(vshlq_n_s64(v388, 3uLL), v388, 0x3DuLL);
  v396 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v393, *&STACK[0x370]), vorrq_s8(v393, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x340]);
  v397 = veorq_s8(v396, v395);
  v398 = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v399 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v392, *&STACK[0x370]), vorrq_s8(v392, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x340]);
  v400 = veorq_s8(v399, v394);
  v401 = vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL);
  v402 = vaddq_s64(v398, v397);
  v403 = vaddq_s64(v401, v400);
  v404 = vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL);
  v405 = vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL);
  v406 = veorq_s8(vaddq_s64(vsubq_s64(v403, vandq_s8(vaddq_s64(v403, v403), *&STACK[0x380])), *&STACK[0x2C0]), *&STACK[0x360]);
  v407 = veorq_s8(v406, v405);
  v408 = vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL);
  v409 = veorq_s8(vaddq_s64(vsubq_s64(v402, vandq_s8(vaddq_s64(v402, v402), *&STACK[0x380])), *&STACK[0x2C0]), *&STACK[0x360]);
  v410 = veorq_s8(v409, v404);
  v411 = vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL);
  v412 = vaddq_s64(v408, v407);
  v413 = vaddq_s64(v411, v410);
  v414 = vsraq_n_u64(vshlq_n_s64(v407, 3uLL), v407, 0x3DuLL);
  v415 = vsraq_n_u64(vshlq_n_s64(v410, 3uLL), v410, 0x3DuLL);
  v416 = veorq_s8(vaddq_s64(vsubq_s64(v413, vandq_s8(vaddq_s64(v413, v413), *&STACK[0x350])), *&STACK[0x2B0]), *&STACK[0x320]);
  v417 = veorq_s8(v416, v415);
  v418 = vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL);
  v419 = veorq_s8(vaddq_s64(vsubq_s64(v412, vandq_s8(vaddq_s64(v412, v412), *&STACK[0x350])), *&STACK[0x2B0]), *&STACK[0x320]);
  v420 = veorq_s8(v419, v414);
  v421 = vsraq_n_u64(vshlq_n_s64(v419, 0x38uLL), v419, 8uLL);
  v422 = vaddq_s64(v418, v417);
  v423 = vsraq_n_u64(vshlq_n_s64(v417, 3uLL), v417, 0x3DuLL);
  v424 = vaddq_s64(v421, v420);
  v425 = vsraq_n_u64(vshlq_n_s64(v420, 3uLL), v420, 0x3DuLL);
  v426 = veorq_s8(v424, *&STACK[0x3B0]);
  v427 = veorq_s8(v422, *&STACK[0x3B0]);
  v517.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL), veorq_s8(v426, v425)), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v292, 3uLL), v510))), v360);
  v517.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL), veorq_s8(v427, v423)), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v361, 3uLL), v510))), v359);
  v360.i64[0] = v18 + a1 - 11;
  v360.i64[1] = v18 + a1 - 12;
  v428 = vandq_s8(v360, v200);
  v429 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), *&STACK[0x3A0]);
  v430 = veorq_s8(v429, v33);
  v431 = veorq_s8(v429, *&STACK[0x250]);
  v432 = vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL);
  v433 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL), v431), *&STACK[0x240]);
  v434 = veorq_s8(v433, v432);
  v435 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL), v434);
  v436 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v435, v435), *&STACK[0x230]), v435), *&STACK[0x220]), v511);
  v437 = veorq_s8(v436, vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL));
  v438 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL), v437), *&STACK[0x2F0]);
  v439 = veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v440 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL), v439), v66);
  v441 = veorq_s8(v440, vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v442 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL), v441);
  v443 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v442, v442), *&STACK[0x200]), v442), v75), v512);
  v444 = veorq_s8(v443, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL));
  v445 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL), v444), v83);
  v446 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v444, 3uLL), v444, 0x3DuLL)));
  v447 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v446, *&STACK[0x300]), vorrq_s8(v446, v515)), v515), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v360, 3uLL), v510)));
  v360.i64[0] = v22 + 0x6154020981223454;
  v360.i64[1] = v22 + 0x6154020981223453;
  v448 = vandq_s8(v360, v200);
  v449 = vsraq_n_u64(vshlq_n_s64(v448, 0x38uLL), v448, 8uLL);
  v450 = vaddq_s64(vsubq_s64(v449, vandq_s8(vaddq_s64(vaddq_s64(v449, v449), *&STACK[0x290]), *&STACK[0x260])), *&STACK[0x270]);
  v451 = veorq_s8(v450, v516);
  v452 = veorq_s8(v450, *&STACK[0x2E0]);
  v453 = vsraq_n_u64(vshlq_n_s64(v452, 3uLL), v452, 0x3DuLL);
  v454 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), v452), *&STACK[0x210]);
  v455 = veorq_s8(v454, v453);
  v456 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL), v455);
  v457 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v456, v456), *&STACK[0x2A0]), v456), *&STACK[0x2D0]), *&STACK[0x390]);
  v458 = veorq_s8(v457, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v459 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL), v458);
  v460 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v459, *&STACK[0x370]), vorrq_s8(v459, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x340]);
  v461 = veorq_s8(v460, vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL));
  v462 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL), v461);
  v463 = veorq_s8(vaddq_s64(vsubq_s64(v462, vandq_s8(vaddq_s64(v462, v462), *&STACK[0x380])), *&STACK[0x2C0]), *&STACK[0x360]);
  v464 = veorq_s8(v463, vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL));
  v465 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v463, 0x38uLL), v463, 8uLL), v464);
  v466 = veorq_s8(vaddq_s64(vsubq_s64(v465, vandq_s8(vaddq_s64(v465, v465), *&STACK[0x350])), *&STACK[0x2B0]), *&STACK[0x320]);
  v467 = veorq_s8(v466, vsraq_n_u64(vshlq_n_s64(v464, 3uLL), v464, 0x3DuLL));
  v468 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), v467), *&STACK[0x3B0]);
  v517.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), veorq_s8(v468, vsraq_n_u64(vshlq_n_s64(v467, 3uLL), v467, 0x3DuLL))), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v360, 3uLL), v510))), v447);
  v360.i64[0] = v18 + a1 - 9;
  v360.i64[1] = v18 + a1 - 10;
  v469 = vandq_s8(v360, v200);
  v470 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL), *&STACK[0x3A0]);
  v471 = veorq_s8(v470, v33);
  v472 = veorq_s8(v470, *&STACK[0x250]);
  v473 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472), *&STACK[0x240]);
  v474 = veorq_s8(v473, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v475 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v473, 0x38uLL), v473, 8uLL), v474);
  v476 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v475, v475), *&STACK[0x230]), v475), *&STACK[0x220]), v511);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v474, 3uLL), v474, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), *&STACK[0x2F0]);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v480 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479), v66);
  v481 = veorq_s8(v480, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v482 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL), v481);
  v483 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v482, v482), *&STACK[0x200]), v482), v75), v512);
  v484 = veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v481, 3uLL), v481, 0x3DuLL));
  v485 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), v484), v83);
  v486 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v485, 0x38uLL), v485, 8uLL), veorq_s8(v485, vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL)));
  v359.i64[0] = v22 + 0x6154020981223456;
  v359.i64[1] = v22 + 0x6154020981223455;
  v487 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v486, *&STACK[0x300]), vorrq_s8(v486, v515)), v515), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v360, 3uLL), v510)));
  v488 = vandq_s8(v359, v200);
  v489 = vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL);
  v490 = vaddq_s64(vsubq_s64(v489, vandq_s8(vaddq_s64(vaddq_s64(v489, v489), *&STACK[0x290]), *&STACK[0x260])), *&STACK[0x270]);
  v491 = veorq_s8(v490, v516);
  v492 = veorq_s8(v490, *&STACK[0x2E0]);
  v493 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL), v492), *&STACK[0x210]);
  v494 = veorq_s8(v493, vsraq_n_u64(vshlq_n_s64(v492, 3uLL), v492, 0x3DuLL));
  v495 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493, 0x38uLL), v493, 8uLL), v494);
  v496 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v495, v495), *&STACK[0x2A0]), v495), *&STACK[0x2D0]), *&STACK[0x390]);
  v497 = veorq_s8(v496, vsraq_n_u64(vshlq_n_s64(v494, 3uLL), v494, 0x3DuLL));
  v498 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v496, 0x38uLL), v496, 8uLL), v497);
  v499 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v498, *&STACK[0x370]), vorrq_s8(v498, *&STACK[0x330])), *&STACK[0x330]), *&STACK[0x340]);
  v500 = veorq_s8(v499, vsraq_n_u64(vshlq_n_s64(v497, 3uLL), v497, 0x3DuLL));
  v501 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v499, 0x38uLL), v499, 8uLL), v500);
  v502 = veorq_s8(vaddq_s64(vsubq_s64(v501, vandq_s8(vaddq_s64(v501, v501), *&STACK[0x380])), *&STACK[0x2C0]), *&STACK[0x360]);
  v503 = veorq_s8(v502, vsraq_n_u64(vshlq_n_s64(v500, 3uLL), v500, 0x3DuLL));
  v504 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v502, 0x38uLL), v502, 8uLL), v503);
  v505 = veorq_s8(vaddq_s64(vsubq_s64(v504, vandq_s8(vaddq_s64(v504, v504), *&STACK[0x350])), *&STACK[0x2B0]), *&STACK[0x320]);
  v506 = veorq_s8(v505, vsraq_n_u64(vshlq_n_s64(v503, 3uLL), v503, 0x3DuLL));
  v507 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v505, 0x38uLL), v505, 8uLL), v506), *&STACK[0x3B0]);
  v517.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v507, 0x38uLL), v507, 8uLL), veorq_s8(v507, vsraq_n_u64(vshlq_n_s64(v506, 3uLL), v506, 0x3DuLL))), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v359, 3uLL), v510))), v487);
  v507.i64[0] = vqtbl4q_s8(v518, xmmword_100382E40).u64[0];
  v507.i64[1] = vqtbl4q_s8(v517, xmmword_100382E40).u64[0];
  v508 = vrev64q_s8(v507);
  *(v22 + 0x615402098122344FLL) = veorq_s8(vextq_s8(v508, v508, 8uLL), v514);
  return (*(v20 + 8 * ((13542 * ((a1 & 0xFFFFFFF0) == 16)) ^ (v21 - 638))))(0xB5615610F5B8F155, 0xE1F014810C505D35, 0x5B38AD8DDB3A7C5CLL, 0x2E5DB5ED7AC3D0C7, 0x49E9423B6F16E7D2);
}

uint64_t sub_1000FE270@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x39BB)))(a1);
  *(STACK[0x420] + 24) = 0;
  return sub_10012C108();
}

uint64_t sub_1000FE29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return sub_1001A842C(a1, a2, a3, a4);
}

void uhO2GULXwfgKwPcp4YR2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v7 = v4 || *a3 != 0 || a2 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000FE414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17, int a18)
{
  v20 = 956911519 * ((2 * (&a15 & 0xEEDEA8) - &a15 + 2131829073) ^ 0x95805154);
  HIDWORD(a15) = v20 + 543642722;
  a16 = v20 ^ 0x61FE7920;
  a17 = 1002199528 - v20;
  a18 = v20 ^ 0x1602;
  (*(v18 + 77008))(&a15);
  a15 = &a11;
  a17 = 1317436891 * (((&a15 | 0x24ABC054) - &a15 + (&a15 & 0xDB543FA8)) ^ 0x94A85822) + 8154;
  v21 = (*(v18 + 77096))(&a15);
  return (*(v18 + 8 * ((15247 * (a16 == v19)) ^ 0x180Eu)))(v21);
}

uint64_t sub_1000FE5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LOWORD(STACK[0x926]);
  STACK[0x720] = STACK[0x928];
  return (*(v71 + 8 * ((6032 * (v72 == (((a71 + 27922) & 0x7FFF) + 15931))) ^ (a71 - 4846))))();
}

void sub_1000FE61C()
{
  (*(v2 + 8 * (v0 ^ 0x324F)))();
  *(v1 + 24) = 0;
  (*(v2 + 8 * ((v0 ^ 0x143C) + 8589)))(v1);
  JUMPOUT(0x1000FE660);
}

uint64_t sub_1000FE68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v12 - 116) = v11 - 1875091903 * ((((v12 - 120) | 0xE45B8641) - (v12 - 120) + ((v12 - 120) & 0x1BA479B8)) ^ 0xD22E05C2) + 960665617;
  (*(v10 + 8 * (v11 ^ 0x2DB6)))(v12 - 120);
  v13 = 1875091903 * ((v12 - 120) ^ 0x36758383);
  *(v12 - 120) = (v11 - 119668876) ^ v13;
  *(v12 - 116) = v13 ^ 0x5D845C70;
  v14 = (*(v10 + 8 * (v11 + 7501)))(v12 - 120);
  return (*(v10 + 8 * (((2 * (((v11 + 1) ^ (a10 >= 0)) & 1)) & 0xF7 | (8 * (((v11 + 1) ^ (a10 >= 0)) & 1))) ^ v11)))(v14);
}

uint64_t sub_1000FE770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * ((&a16 - 558538160 - 2 * (&a16 & 0xDEB56250)) ^ 0x6EB6FA26) + 8154;
  a16 = &a12;
  v20 = (*(v18 + 77096))(&a16);
  return (*(v18 + 8 * ((157 * (a17 == v19)) ^ 0x1450u)))(v20);
}

uint64_t sub_1000FE804@<X0>(int a1@<W8>)
{
  v2 = STACK[0x3E8];
  STACK[0x760] = *(v1 + 8 * a1);
  return sub_1001588E0(v2);
}

uint64_t sub_10010C31C()
{
  STACK[0x9F8] = v1;
  v3 = STACK[0x7F8];
  STACK[0xA00] = STACK[0x7F8];
  return (*(v2 + 8 * ((104 * (v1 - v3 > ((v0 - 904323884) & 0x35E6D1B7) - 302)) ^ v0)))();
}

uint64_t sub_10010C384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (*(v67 + 8 * (v65 + 4928)))(LODWORD(STACK[0x7E4]) ^ 0xBC59953u, 0x100004077774924);
  STACK[0xA28] = v68;
  if (v68)
  {
    a51 = v66;
  }

  LODWORD(STACK[0xA34]) = a51;
  return (*(a65 + 8 * (((v68 != 0) * ((v65 ^ 0x123B) - 66)) ^ v65)))();
}

uint64_t sub_10010C440()
{
  v0 = STACK[0x3E4];
  v1 = LOWORD(STACK[0x88E]);
  STACK[0x620] = STACK[0x890];
  return (*(STACK[0x3E8] + 8 * (((v1 == 17168) * (v0 - 2477)) ^ (v0 - 563))))();
}

uint64_t sub_10010C48C@<X0>(unsigned int a1@<W1>, uint64_t a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(((a1 << ((a3 + 37) ^ 0x14u)) & 0x16AD7B78ALL) + (a1 ^ 0xE36FBFFEB56BDBC5) + a64 + 0x1C9040014A94243BLL) = 0;
  *(((2 * (a1 + 4)) & 0x13FB6FB7CLL) + ((a1 + 4) ^ 0xF595FF5E9FDB7DBELL) + a64 + 0xA6A00A160248242) = -9392;
  v64 = a1 + 6;
  v65 = v64 ^ 0xDDFACFFFF95FF8CCLL;
  v66 = (2 * v64) & 0x1F2BFF198;
  v67 = (a60 ^ 0x17ABC746) & (2 * (a60 & 0x16)) ^ a60 & 0x16;
  LODWORD(v64) = ((2 * (a60 ^ 0x15CB4E62)) ^ 0x44811208) & (a60 ^ 0x15CB4E62) ^ (2 * (a60 ^ 0x15CB4E62)) & 0x92088834;
  v68 = v64 ^ 0x92088814;
  LODWORD(v64) = (v64 ^ 0xE0) & (4 * v67) ^ v67;
  v69 = ((4 * v68) ^ 0xC9E227D0) & v68 ^ (4 * v68) & 0xB27889F4;
  LODWORD(v64) = (v69 ^ 0x806001C0) & (16 * v64) ^ v64;
  v70 = ((16 * (v69 ^ 0x32188824)) ^ 0x27889F40) & (v69 ^ 0x32188824) ^ (16 * (v69 ^ 0x32188824)) & 0xB27889F0;
  v71 = v70 ^ 0x907000B4;
  v72 = v64 ^ 0xB27889F4 ^ (v70 ^ 0x22088900) & (v64 << 8);
  v73 = a60 ^ (2 * ((v72 << 16) & 0x32780000 ^ v72 ^ ((v72 << 16) ^ 0x9F40000) & ((v71 << 8) & 0x32780000 ^ 0x2700000 ^ ((v71 << 8) ^ 0x78890000) & v71)));
  v74 = (v66 + v65 + a64 + 0x2205300006A00734);
  *v74 = HIBYTE(v73) ^ 0xC3;
  v74[1] = BYTE2(v73) ^ 0xA2;
  v74[2] = BYTE1(v73) ^ 0xD4;
  v74[3] = v73 ^ 0x7E;
  return (*(a2 + 8 * ((2044 * ((LODWORD(STACK[0x62C]) | ((LODWORD(STACK[0x62C]) < 0x584C386A) << 32)) != 1481390186)) ^ a3)))();
}

uint64_t sub_10010C728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(v39 - 144) = *v38;
  *(v39 - 143) = *(v38 + 1);
  *(v39 - 135) = *(v38 + 9);
  *(v39 - 131) = *(v38 + 13);
  *(v39 - 129) = *(v38 + 15);
  return sub_10007FC28(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

void sub_10010C8C0(uint64_t a1)
{
  v1 = *a1 - 1710126949 * (((a1 | 0x5644DFC3) - (a1 & 0x5644DFC3)) ^ 0x645F8453);
  v2 = *(a1 + 8);
  v3 = 956911519 * (v5 ^ 0xEA917005);
  v5[1] = 439036670 - v3;
  v5[2] = v1 - v3 + 76;
  v6 = v2;
  v7 = v2 + 48;
  v4 = *(&off_1003E6550 + (v1 ^ 0x11CE)) - 8;
  (*&v4[8 * (v1 ^ 0x36C0)])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10010CA38@<X0>(int a1@<W8>)
{
  v8 = (a1 + 428) | 0x42;
  v9 = *(v4 + 120);
  v10 = (*(v4 + 100) ^ 0xFFA8EF9B) + 553105022 + ((*(v4 + 100) << (((a1 - 84) | 0x42) + 51)) & 0xFF51DF36);
  v11 = 914963389 * ((((v6 - 232) | 0x3008948) - ((v6 - 232) & 0x3008948)) ^ 0x2FFC3833);
  *(v6 - 168) = v4 + 104;
  *(v6 - 232) = 1491323843 - v11;
  *(v6 - 192) = v10 ^ v11;
  *(v6 - 224) = v2;
  *(v6 - 184) = v2;
  *(v6 - 200) = v1;
  *(v6 - 208) = v11 + (v9 ^ 0xFABBFDAB) + ((2 * v9) & 0xF577FB56) + 267205504;
  *(v6 - 216) = (((v3 ^ 0xB652EE18) + 1236079080) ^ ((v3 ^ 0x5295ABE0) - 1385540576) ^ ((v3 ^ 0xEF02DCAB) + 285025109)) - v11 + 1996137537;
  *(v6 - 176) = v11 + a1 - 3331;
  v12 = (*(v7 + 8 * (a1 ^ 0x3B26)))(v6 - 232);
  return (*(v7 + 8 * ((((((v8 - 2844) | 0x44) ^ 0xFFFFE070) + 283 * (v8 ^ 0x20C3)) * (*(v6 - 212) == v5)) ^ v8)))(v12);
}

uint64_t sub_10010CC04@<X0>(void *a1@<X0>, int a2@<W8>)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v4 + 8 * (((a2 & ~((((v3 | 0x4CC) ^ 0xDD6) - 2186) ^ (v2 == 0))) * (4 * ((v3 | 0x4CC) ^ 0xDD6) - 8775)) ^ (v3 | 0x4CC))))();
}

uint64_t sub_10010CC4C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (v13 ^ 0xFFFFFFFFFFFFE877 ^ (v14 + 2590)) + v12;
  *(a12 - 7 + v16) = *(a1 - 7 + v16);
  return (*(v15 + 8 * ((5656 * ((v12 & 0xFFFFFFF8) - 8 == v13)) ^ v14)))();
}

uint64_t sub_10010CCA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v22 = ((a7 - 1045) ^ 0xFFFFFFFFFFFFFC0FLL) + v20;
  v23 = (v8 + v22);
  v24 = v15 + v22 + v9;
  v25 = __ROR8__((v8 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 - 0x6AF7234D0CC131D5) | 0x4CFAC71E5A50EC49) - ((v25 - 0x6AF7234D0CC131D5) | a3) + a3;
  v27 = __ROR8__(v26 ^ 0x513852535460B9BLL, 8);
  v26 ^= 0xAD5560B2ACB07AC7;
  v28 = (v27 + v26) ^ 0xE49D77DF873DBF7ELL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = __ROR8__((v32 + v31 - ((2 * (v32 + v31)) & 0x68767FB9A21293ELL) + 0x343B3FDCD10949FLL) ^ 0x5A20053898C9EB80, 8);
  v34 = (v32 + v31 - ((2 * (v32 + v31)) & 0x68767FB9A21293ELL) + 0x343B3FDCD10949FLL) ^ 0x5A20053898C9EB80 ^ __ROR8__(v31, 61);
  v35 = (a2 - ((v33 + v34) | a2) + ((v33 + v34) | 0x20842EAD28A8535ALL)) ^ 0x41C1B387D8B777ADLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8) + v36;
  v38 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((v13 - v38) & 0x5879FD990C46CAD5) + v38 + 0x568FD0F9DF82F1E3 - ((v38 + 0x568FD0F9DF82F1E3) & 0x5E79FD990C46CAD5);
  v40 = v39 ^ 0x6F262667B511DA8BLL;
  v39 ^= 0xDB58A1A949065591;
  v41 = __ROR8__(v40, 8);
  v42 = (a4 - (v37 | a4) + (v37 | 0x9D61AAA81A10264DLL)) ^ 0xF9A2B6AA6A94F821;
  v43 = v42 ^ __ROR8__(v36, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v14;
  v45 = (((2 * ((v41 + v39) ^ 0xBC7AB44B3A189480)) | 0xF0BA186BA47F666CLL) - ((v41 + v39) ^ 0xBC7AB44B3A189480) - 0x785D0C35D23FB336) ^ v11;
  v46 = v45 ^ __ROR8__(v39, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61));
  v49 = (v47 + v46 - (v12 & (2 * (v47 + v46))) + a6) ^ v7;
  v50 = v49 ^ __ROR8__(v46, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x57D072DFC3A5F657;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - (a1 & (2 * (v53 + v52))) + v17) ^ v16;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (a5 - ((v56 + v55) | a5) + ((v56 + v55) | v19)) ^ v18;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x6E1E19DDB33CB23ALL;
  *v24 = (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ 0x3532CD90FD5B1622uLL) >> (8 * (v24 & 7u))) ^ (((((2 * v48) & 0x170BF460A85E9EEELL) - v48 - 0xB85FA30542F4F78) ^ v10) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v21 + 8 * ((6925 * (v22 == 0)) ^ a7)))();
}

void sub_10010D044(id a1)
{
  v1 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + dword_100403458) ^ 0xDF)) ^ byte_1003739D0[byte_100369460[(-85 * ((dword_1004033E0 + dword_100403458) ^ 0xDF))] ^ 0xEE]) + 123);
  v2 = -85 * ((dword_1004033E0 + *v1) ^ 0xDF);
  v3 = *(&off_1003E6550 + (byte_10037A9B8[(byte_100373AD8[v2 - 8] ^ 0xBF) - 8] ^ v2) - 14);
  v4 = &v8[1] + *v1 + *v3;
  *v1 = 2054362027 * v4 + 0x1FC86B74B1533AF5;
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v7 = 0;
  v8[0] = 4;
  LODWORD(v3) = 2054362027 * ((*v3 + *v1) ^ 0x3EF64BDF);
  LODWORD(v1) = byte_100382D1C[v3 - 12];
  v5 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + dword_100403458) ^ 0xDF)) ^ byte_10037AAB0[byte_100373BD0[(-85 * ((dword_1004033E0 + dword_100403458) ^ 0xDF))] ^ 0x2A]) + 107) - 8;
  v6 = *&v5[8 * ((6854 * ((*&v5[8 * (byte_100369760[v1 ^ 0x1F] ^ v3) + 77224])(*(&off_1003E6550 + (v3 ^ byte_100369760[v1 ^ 0xE9]) + 92) - 4, &v7, v8, 0, 0) == 0)) ^ 0xA12)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10010D224(uint64_t result)
{
  v1 = 2048652491 * ((((2 * result) | 0x3EA0794FBED6934CLL) - result - 0x1F503CA7DF6B49A6) ^ 0xCBB4B32B6EDADEA3);
  v2 = *(result + 8) + v1;
  v3 = *(result + 32) ^ v1;
  v4 = v3 > v2;
  v5 = v3 == v2;
  v6 = v4;
  if ((*(result + 40) ^ (2048652491 * ((((2 * result) | 0xBED6934C) - result + 546616922) ^ 0x6EDADEA3))))
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 == 0;
  v9 = 24;
  if (!v8)
  {
    v9 = 16;
  }

  *(result + 20) = (*(result + v9) - 2048652491 * ((((2 * result) | 0xBED6934C) - result + 546616922) ^ 0x6EDADEA3)) ^ (*(result + 28) - 2048652491 * ((((2 * result) | 0xBED6934C) - result + 546616922) ^ 0x6EDADEA3));
  return result;
}

void aC4q7GWh()
{
  v0 = *(&off_1003E6550 + ((-85 * (dword_100403058 ^ 0xDF ^ dword_1004033E0)) ^ byte_100369760[byte_100382D10[(-85 * (dword_100403058 ^ 0xDF ^ dword_1004033E0))] ^ 0x71]) + 51);
  v1 = -85 * (*v0 ^ dword_1004033E0 ^ 0xDF);
  v2 = *(&off_1003E6550 + (byte_100369560[byte_100382C18[v1 - 8] ^ 0xDD] ^ v1) - 42);
  v3 = *v0 ^ &v5 ^ *v2;
  *v0 = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((((v6 | 0xE440A85C) ^ 0xFFFFFFFE) - (~v6 | 0x1BBF57A3)) ^ 0x29A40C33);
  LODWORD(v2) = 2054362027 * ((*v2 + *v0) ^ 0x3EF64BDF);
  v4 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + dword_100403058) ^ 0xDF)) ^ byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 + dword_100403058) ^ 0xDF))] ^ 0xE9]) + 135) - 8;
  (*&v4[8 * (byte_10036976C[(byte_100382D1C[v2 - 12] ^ 0xE9) - 12] ^ v2) + 75936])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10010D544()
{
  v2 = *(STACK[0x538] + 24);
  STACK[0x840] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 ^ 0x81D) + 1355) ^ 0x1595)) ^ v0)))();
}

uint64_t sub_10010D5C8(double a1, double a2, int8x16_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7, int64x2_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14)
{
  v27 = a11 - 16;
  v28.i64[0] = v27 + a12;
  v28.i64[1] = v27 + a12 + a14 + 7;
  v29.i64[0] = v27 + a12 + 6;
  v29.i64[1] = v27 + a12 + 5;
  v30.i64[0] = v27 + a12 + 4;
  v30.i64[1] = v27 + a12 + 3;
  v31.i64[0] = v27 + a12 + 2;
  v31.i64[1] = v27 + a12 + 1;
  *&v32 = v27 + a12 - 2;
  *(&v32 + 1) = v27 + a12 - 3;
  *&STACK[0x3D0] = v32;
  *&v32 = v27 + a12 - 4;
  *(&v32 + 1) = v27 + a12 - 5;
  *&STACK[0x3C0] = v32;
  v33 = vandq_s8(v31, v17);
  v34 = vandq_s8(v30, v17);
  v35 = vandq_s8(v29, v17);
  v36 = vandq_s8(v28, v17);
  *&STACK[0x3B0] = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0x370]);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x370]);
  v40 = veorq_s8(v39, *&STACK[0x360]);
  v41 = veorq_s8(v38, *&STACK[0x360]);
  v42 = veorq_s8(v38, a6);
  v43 = veorq_s8(v39, a6);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v43);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v42);
  v46 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v45, v45), a7), v45), a8), v15);
  v47 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v44, v44), a7), v44), a8), v15);
  v48 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v49 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v50, v14), vorrq_s8(v50, v16)), v16), v18);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v51, v14), vorrq_s8(v51, v16)), v16), v18);
  v54 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v55 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54), v19);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55), v19);
  v58 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v59 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = veorq_s8(vaddq_s64(v61, v59), v20);
  v64 = veorq_s8(v62, v20);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v69 = vaddq_s64(v67, v65);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(v69, vandq_s8(vaddq_s64(v69, v69), v21)), v22), v23);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(v68, vandq_s8(vaddq_s64(v68, v68), v21)), v22), v23);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), v24);
  v77 = veorq_s8(v75, v24);
  v78 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v78.i64[0] = v27 + a12 - 6;
  v78.i64[1] = v27 + a12 - 7;
  v81 = vaddq_s64(v37, *&STACK[0x370]);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v79);
  v174.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v82, v82), v25), v82), v26), *&STACK[0x270]), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a3)));
  v174.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v83, v83), v25), v83), v26), *&STACK[0x270]), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a3)));
  v84 = veorq_s8(v81, *&STACK[0x360]);
  v85 = veorq_s8(v81, a6);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v86, v86), a7), v86), a8), v15);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v89, v14), vorrq_s8(v89, v16)), v16), v18);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v19);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v20);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v21)), v22), v23);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v24);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v99.i64[0] = v27 + a12 - 8;
  v99.i64[1] = v27 + a12 - 9;
  v102 = vaddq_s64(v101, v100);
  v103 = vsubq_s64(vandq_s8(vaddq_s64(v102, v102), v25), v102);
  v104 = vandq_s8(v99, v17);
  v105 = vaddq_s64(*&STACK[0x3B0], *&STACK[0x370]);
  v174.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v103, v26), *&STACK[0x270]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a3)));
  v106 = veorq_s8(v105, *&STACK[0x360]);
  v107 = veorq_s8(v105, a6);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), a7), v108), a8), v15);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v14), vorrq_s8(v111, v16)), v16), v18);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v19);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v20);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(v118, vandq_s8(vaddq_s64(v118, v118), v21)), v22), v23);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v24);
  v122 = vandq_s8(v78, v17);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL)));
  v124 = vandq_s8(*&STACK[0x3C0], v17);
  v174.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), v25), v123), v26), *&STACK[0x270]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a3)));
  v125 = vandq_s8(*&STACK[0x3D0], v17);
  v126 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), *&STACK[0x370]);
  v130 = vaddq_s64(v128, *&STACK[0x370]);
  v174.val[3].i64[0] = vqtbl4q_s8(v174, *&STACK[0x3A0]).u64[0];
  v174.val[0] = veorq_s8(v130, *&STACK[0x360]);
  v174.val[1] = veorq_s8(v129, *&STACK[0x360]);
  v131 = veorq_s8(v129, a6);
  v174.val[2] = veorq_s8(v130, a6);
  v174.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174.val[0], 0x38uLL), v174.val[0], 8uLL), v174.val[2]);
  v174.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174.val[1], 0x38uLL), v174.val[1], 8uLL), v131);
  v174.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174.val[1], v174.val[1]), a7), v174.val[1]), a8), v15);
  v174.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174.val[0], v174.val[0]), a7), v174.val[0]), a8), v15);
  v132 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v133 = veorq_s8(v174.val[0], vsraq_n_u64(vshlq_n_s64(v174.val[2], 3uLL), v174.val[2], 0x3DuLL));
  v174.val[2] = veorq_s8(v174.val[1], v132);
  v134 = vsraq_n_u64(vshlq_n_s64(v174.val[0], 0x38uLL), v174.val[0], 8uLL);
  v174.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174.val[1], 0x38uLL), v174.val[1], 8uLL), v174.val[2]);
  v174.val[1] = vaddq_s64(v134, v133);
  v174.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v174.val[0], v14), vorrq_s8(v174.val[0], v16)), v16), v18);
  v174.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v174.val[1], v14), vorrq_s8(v174.val[1], v16)), v16), v18);
  v135 = veorq_s8(v174.val[1], vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v174.val[2] = veorq_s8(v174.val[0], vsraq_n_u64(vshlq_n_s64(v174.val[2], 3uLL), v174.val[2], 0x3DuLL));
  v174.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174.val[1], 0x38uLL), v174.val[1], 8uLL), v135), v19);
  v174.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174.val[0], 0x38uLL), v174.val[0], 8uLL), v174.val[2]), v19);
  v136 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v137 = veorq_s8(v174.val[0], vsraq_n_u64(vshlq_n_s64(v174.val[2], 3uLL), v174.val[2], 0x3DuLL));
  v174.val[2] = veorq_s8(v174.val[1], v136);
  v138 = vsraq_n_u64(vshlq_n_s64(v174.val[0], 0x38uLL), v174.val[0], 8uLL);
  v174.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174.val[1], 0x38uLL), v174.val[1], 8uLL), v174.val[2]);
  v174.val[1] = veorq_s8(vaddq_s64(v138, v137), v20);
  v174.val[0] = veorq_s8(v174.val[0], v20);
  v139 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v140 = veorq_s8(v174.val[0], vsraq_n_u64(vshlq_n_s64(v174.val[2], 3uLL), v174.val[2], 0x3DuLL));
  v174.val[2] = veorq_s8(v174.val[1], v139);
  v141 = vsraq_n_u64(vshlq_n_s64(v174.val[0], 0x38uLL), v174.val[0], 8uLL);
  v174.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174.val[1], 0x38uLL), v174.val[1], 8uLL), v174.val[2]);
  v174.val[1] = vaddq_s64(v141, v140);
  v174.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v174.val[1], vandq_s8(vaddq_s64(v174.val[1], v174.val[1]), v21)), v22), v23);
  v174.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v174.val[0], vandq_s8(vaddq_s64(v174.val[0], v174.val[0]), v21)), v22), v23);
  v142 = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v143 = veorq_s8(v174.val[0], vsraq_n_u64(vshlq_n_s64(v174.val[2], 3uLL), v174.val[2], 0x3DuLL));
  v174.val[2] = veorq_s8(v174.val[1], v142);
  v144 = vsraq_n_u64(vshlq_n_s64(v174.val[0], 0x38uLL), v174.val[0], 8uLL);
  v174.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174.val[1], 0x38uLL), v174.val[1], 8uLL), v174.val[2]);
  v174.val[1] = veorq_s8(vaddq_s64(v144, v143), v24);
  v174.val[0] = veorq_s8(v174.val[0], v24);
  v145 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v146 = veorq_s8(v174.val[0], vsraq_n_u64(vshlq_n_s64(v174.val[2], 3uLL), v174.val[2], 0x3DuLL));
  v174.val[2] = veorq_s8(v174.val[1], v145);
  v147 = vsraq_n_u64(vshlq_n_s64(v174.val[0], 0x38uLL), v174.val[0], 8uLL);
  v174.val[0] = vsraq_n_u64(vshlq_n_s64(v174.val[1], 0x38uLL), v174.val[1], 8uLL);
  v174.val[1] = vaddq_s64(v127, *&STACK[0x370]);
  v174.val[0] = vaddq_s64(v174.val[0], v174.val[2]);
  v148 = vaddq_s64(v147, v146);
  v173.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174.val[0], v174.val[0]), v25), v174.val[0]), v26), *&STACK[0x270]), vnegq_s64(vandq_s8(vshlq_n_s64(v99, 3uLL), a3)));
  v173.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v25), v148), v26), *&STACK[0x270]), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), a3)));
  v149 = veorq_s8(v174.val[1], *&STACK[0x360]);
  v174.val[0] = veorq_s8(v174.val[1], a6);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v174.val[0]);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v150, v150), a7), v150), a8), v15);
  v174.val[0] = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v174.val[0]);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v152, v14), vorrq_s8(v152, v16)), v16), v18);
  v174.val[0] = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v174.val[0]), v19);
  v174.val[0] = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v174.val[0]), v20);
  v174.val[0] = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v174.val[0]);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(v156, vandq_s8(vaddq_s64(v156, v156), v21)), v22), v23);
  v174.val[0] = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v174.val[0]), v24);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL)));
  v174.val[0] = vaddq_s64(v126, *&STACK[0x370]);
  v173.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v159, v159), v25), v159), v26), *&STACK[0x270]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), a3)));
  v160 = veorq_s8(v174.val[0], *&STACK[0x360]);
  v174.val[0] = veorq_s8(v174.val[0], a6);
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v174.val[0]);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v161, v161), a7), v161), a8), v15);
  v174.val[0] = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v174.val[0]);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v163, v14), vorrq_s8(v163, v16)), v16), v18);
  v174.val[0] = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v174.val[0]), v19);
  v174.val[0] = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v174.val[0]), v20);
  v174.val[0] = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v174.val[0]);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(v167, vandq_s8(vaddq_s64(v167, v167), v21)), v22), v23);
  v174.val[0] = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v174.val[0]), v24);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v174.val[0], 3uLL), v174.val[0], 0x3DuLL)));
  v173.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), v25), v170), v26), *&STACK[0x270]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), a3)));
  v174.val[3].i64[1] = vqtbl4q_s8(v173, *&STACK[0x3A0]).u64[0];
  v171 = vrev64q_s8(v174.val[3]);
  *(v27 + a12 - 9) = vextq_s8(v171, v171, 8uLL);
  return (*(STACK[0x3E8] + 8 * ((992 * (a10 == 16)) ^ a13)))();
}

uint64_t sub_10010D5D4()
{
  LOWORD(STACK[0x886]) = v1;
  LODWORD(STACK[0x2C0]) = v1;
  return (*(STACK[0x330] + 8 * (v0 - 5256)))();
}

uint64_t sub_10010D69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v45 = 956911519 * ((1999085841 - ((v44 - 232) | 0x7727A111) + ((v44 - 232) | 0x88D85EEE)) ^ 0x62492EEB);
  v49 = (*(a40 + 24) + v41) ^ 0x7ECFAF5C;
  *(v44 - 224) = v42 - v45 - 1427045090;
  *(v44 - 232) = v49 ^ v45;
  v46 = (*(v40 + 8 * (v42 ^ 0x3A3A)))(v44 - 232);
  v47 = *(STACK[0x3E8] + 8 * ((67 * (*(v44 - 228) != ((v42 - 3882) ^ 0x1B16) + 1664645330)) ^ v42));
  LODWORD(STACK[0x3E4]) = v43;
  return v47(v46);
}

void sub_10010D7C0(_BYTE *a1)
{
  a1[47] = v1[47];
  a1[46] = v1[46];
  a1[45] = v1[45];
  a1[44] = v1[44];
  a1[43] = v1[43];
  a1[42] = v1[42];
  a1[41] = v1[41];
  a1[40] = v1[40];
  a1[39] = v1[39];
  a1[38] = v1[38];
  a1[37] = v1[37];
  a1[36] = v1[36];
  a1[35] = v1[35];
  a1[34] = v1[34];
  a1[33] = v1[33];
  a1[32] = v1[32];
  a1[31] = v1[31];
  a1[30] = v1[30];
  a1[29] = v1[29];
  a1[28] = v1[28];
  a1[27] = v1[27];
  a1[26] = v1[26];
  a1[25] = v1[25];
  a1[24] = v1[24];
  a1[23] = v1[23];
  a1[22] = v1[22];
  a1[21] = v1[21];
  a1[20] = v1[20];
  a1[19] = v1[19];
  a1[18] = v1[18];
  a1[17] = v1[17];
  a1[16] = v1[16];
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
  JUMPOUT(0x10010D9A0);
}

uint64_t sub_10010DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v52 = v48 + v46 + (v49 ^ 0xA4A40192);
  v54 = ((((v47 + 13 + (v52 ^ 0xB9)) ^ ((v52 ^ 0x46) - 60)) ^ 0x7A ^ (122 - v52)) & 0xF) == 0xA && (((v52 ^ 0x5E54F7A) - 171729664) ^ v52 ^ (v47 + 1856589837 + (v52 ^ 0x9E8F8AB9)) ^ ((v52 ^ 0x6B4C5646) - 1687517756) ^ ((v52 ^ 0xFFFFBFFF) + 265907323)) != (v50 ^ 0xFD92690 ^ (v50 - 1761716056) & 0x69019DFD);
  return (*(v51 + 8 * ((125 * v54) ^ v50)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_10010DB68(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0x9EA]) = v2;
  LODWORD(STACK[0x340]) = v2;
  return sub_100138E88(a1, a2, v3 - 8557);
}

uint64_t sub_10010DB84(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x944]) = a4;
  STACK[0x498] = STACK[0x880];
  STACK[0x8E8] = *(STACK[0x400] + 8 * (v4 - 9069));
  return sub_100158AEC();
}

_DWORD *sub_10010DBD8(_DWORD *result)
{
  v1 = 1875091903 * ((result & 0x4BD02336 | ~(result | 0x4BD02336)) ^ 0x825A5F4A);
  v2 = result[1] ^ v1;
  v3 = *(*(&off_1003E6550 + (v1 ^ *result ^ 0xF8DE07C4)) + 23);
  if (v2 != 1568955504)
  {
    v3 = 203144075;
  }

  result[2] = v3;
  return result;
}

void sub_10010DC88(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (2008441969 * ((-2 - ((~a1 | 0x655E3A76) + (a1 | 0x9AA1C589))) ^ 0x2DC76E78));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10010DE84@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  *(v3 + 72) = 32;
  *(v3 + 39) = a2[55];
  *(v3 + 38) = a2[54];
  *(v3 + 37) = a2[53];
  *(v3 + 36) = a2[52];
  *(v3 + 35) = a2[51];
  *(v3 + 34) = a2[50];
  *(v3 + 33) = a2[49];
  *(v3 + 32) = a2[48];
  *(v3 + 31) = a2[47];
  *(v3 + 30) = a2[46];
  *(v3 + 29) = a2[45];
  *(v3 + 28) = a2[44];
  *(v3 + 27) = a2[43];
  *(v3 + 26) = a2[42];
  *(v3 + 25) = a2[41];
  *(v3 + 24) = a2[40];
  *(v3 + 23) = a2[39];
  *(v3 + 22) = a2[38];
  *(v3 + 21) = a2[37];
  *(v3 + 20) = a2[36];
  *(v3 + 19) = a2[35];
  *(v3 + 18) = a2[34];
  *(v3 + 17) = a2[33];
  *(v3 + 16) = a2[32];
  *(v3 + 15) = a2[31];
  *(v3 + 14) = a2[30];
  *(v3 + 13) = a2[29];
  *(v3 + 12) = a2[28];
  *(v3 + 11) = a2[27];
  *(v3 + 10) = a2[26];
  *(v3 + 9) = a2[25];
  *(v3 + 8) = a2[24];
  return (*(a1 + 8 * (((STACK[0x698] != 0) * (((661 * (v2 & 0xC0213FFF ^ 0x3FF)) ^ 0xFFFFFFA7) + (v2 & 0xC0213FFF ^ 0x179F))) ^ v2 & 0xC0213FFF)))();
}

uint64_t sub_10010DFF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = LODWORD(STACK[0x3E4]) ^ 0x3142;
  *a1 = 0;
  a1[1] = 0;
  *(v4 + 8) = a1;
  v6 = (*(a4 + 8 * (v5 ^ 0x85)))(16, 0x20040A4A59CD2);
  return (*(STACK[0x3E8] + 8 * (((v6 == 0) * (((v5 + 1880198990) & 0x8FEE5FEF) - 5208)) ^ v5)))();
}

uint64_t sub_10010E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = 476323082 - 1710126949 * ((-348791821 - (&a13 | 0xEB35DBF3) + (&a13 | 0x14CA240C)) ^ 0x26D17F9C);
  v16 = (*(v14 + 77088))(&a13);
  return (*(v14 + 8 * ((15809 * (a14 == 16257999)) ^ v15)))(v16);
}

uint64_t sub_10010E13C@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return sub_1001345FC();
}

uint64_t sub_10010E1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = (&a15 ^ 0x5869D362) * v20;
  a16 = v23 - 1746111970;
  a19 = -654855621 - v23;
  a20 = v23 + 1674579114;
  a17 = a12;
  a18 = &a10;
  v24 = (*(v21 + 76864))(&a15);
  return (*(v21 + 8 * ((121 * (a15 != v22)) ^ 0x9BD)))(v24);
}

uint64_t sub_10010E284()
{
  v3 = STACK[0x628];
  v4 = &STACK[0xB20] + STACK[0x628];
  STACK[0x538] = (v4 + 32);
  STACK[0x460] = (v4 + 48);
  STACK[0x628] = v3 - 7251 + ((v1 - 1060296889) & 0x3F32CFCFu) + 6280;
  v5 = (*(v2 + 8 * (v1 ^ 0x28B4)))(v4, 0, 32);
  STACK[0x8F8] = 0;
  STACK[0x860] = v0;
  return (*(v2 + 8 * (v1 ^ (v0 == 0))))(v5);
}

uint64_t sub_10010E314()
{
  *(v5 - 224) = v4 ^ (((-759341880 - ((v5 - 232) | 0xD2BD5CC8) + ((v5 - 232) | 0x2D42A337)) ^ 0x1BE124C) * v2);
  v6 = (*(v0 + 8 * (v1 ^ 0x3050)))(v5 - 232);
  v7 = STACK[0x330];
  *(v3 + 8) = *(v5 - 232) ^ ((v1 ^ 0xA1) + 85);
  return (*(v7 + 8 * ((v1 - 4026) ^ 0x1D10)))(v6);
}

uint64_t sub_10010E41C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x824]) = 16257999;
  STACK[0x7C0] = STACK[0x5F0];
  return sub_100177070();
}

uint64_t sub_10010E4AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (a2 - 32);
  v9 = (a3 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v6 == 32) * a4) ^ (v4 + v5 + 1925))))();
}

uint64_t sub_10010E510@<X0>(int a1@<W8>)
{
  v5 = LODWORD(STACK[0x370]);
  if (v5 == 17168)
  {
    return (*(v4 + 8 * ((v3 - 3714) ^ (4599 * (a1 == v2 + 4)))))();
  }

  if (v5 == 20706 || (v7 = v3, v5 == 33980))
  {
    STACK[0x4E0] = v1;
    v7 = v3;
  }

  v8 = *STACK[0x650];
  v9 = STACK[0x600];
  STACK[0x530] = STACK[0x600];
  STACK[0x678] = 0;
  STACK[0x6C0] = 0;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  return (*(v4 + 8 * ((v11 * (v7 - 6066)) ^ (v7 + 932))))();
}

uint64_t sub_10010E604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v44 = ((2 * v42) & 0x1FDCFB6BALL) + ((v41 + 6751) ^ v42 ^ 0xFF6B9937FEE7FBAFLL) + a1;
  *(((v41 + 2523) | 0x410u) + v44 + 0x9466C801181025) = 0;
  v44 += 0x9466C8011824A4;
  *v44 = 0;
  *(v44 + 2) = 0;
  *(((2 * (v42 + 4)) & 0x1FFBFE7ACLL) + ((v42 + 4) ^ 0xA17DFFD2FFDFF3D6) + a1 + 0x5E82002D00200C2ALL) = -9392;
  v45 = ((2 * (v42 + 6)) & 0x1E8BFBDC0) + ((v42 + 6) ^ 0xFC5CB3FEF45FDEE0) + a1 + 0x3A34C010BA02120;
  *v45 = 0;
  *(v45 + 2) = 0;
  *(v45 + 3) = ((a41 ^ 0xD0) + 1) ^ ((a41 ^ 0xA5) + 118) ^ ((a41 ^ 0x75) - 90);
  return (*(v43 + 8 * (v41 ^ (14 * ((a41 - 2089962543) > 7)))))();
}

uint64_t sub_10010E79C()
{
  *v2 = v0;
  v5 = (v1 - 1160) | 0x11CE;
  v11 = (v1 + 7137) ^ (((2030178440 - (&v9 | 0x79021088) + (&v9 | 0x86FDEF77)) ^ 0xDE943C15) * v3);
  v10 = v8;
  (*(v4 + 8 * (v1 + 8403)))(&v9);
  v10 = v7;
  v11 = (v5 + 3739) ^ (((&v9 & 0x99EDD937 | ~(&v9 | 0x99EDD937)) ^ 0x3E7BF5AA) * v3);
  (*(v4 + 8 * (v5 + 5005)))(&v9);
  return 0;
}

uint64_t sub_10010E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v22 = ((((2 * &a13) | 0x9170C696) - &a13 + 927440053) ^ 0x90D1B029) * v19;
  a17 = -654855621 - v22;
  a18 = v22 + v21 + 1674573213;
  a14 = v22 + 359075865;
  a15 = a10;
  a16 = &a11;
  v23 = (*(v18 + 8 * (v21 ^ 0x3285u)))(&a13);
  return (*(v18 + 8 * (((a13 == v20) * (((v21 - 5613) | 0x808) + 10103 + 395 * (v21 ^ 0x170E))) ^ v21)))(v23);
}

uint64_t sub_10010E9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, int a19)
{
  *v20 = a16;
  *v19 = a19;
  v23 = (*(v22 + 8 * (v21 + 3012)))();
  return (*(v22 + 8 * ((55 * (a16 - ((2 * a16) & 0x3503BC70) + 444718648 == ((((4 * v21) ^ 0x742C) + 444706065) ^ (2591 * (v21 ^ 0x19DD))))) ^ v21)))(v23);
}

uint64_t sub_10010EB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x470] + 24);
  STACK[0x4E0] = v4;
  return (*(STACK[0x400] + 8 * (((v4 == 0) * ((((v3 + 4478) | 0x420) ^ 0xFFFFD5A2) + (v3 ^ 0x12))) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_10010EBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((((2 * &a14) | 0xBDFC1FB8) - &a14 + 553775140) ^ 0x6EFD97AA) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((14673 * (a15 == v17)) ^ v18)))(v19);
}

uint64_t sub_10010EC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  if (v20 == 925652384)
  {
    v25 = -654855621;
  }

  else
  {
    v25 = 1032869496;
  }

  v26 = ((&a15 & 0xEA70A0EF | ~(&a15 | 0xEA70A0EF)) ^ 0x4DE68C72) * v21;
  a16 = v26 - 745770008;
  a19 = v25 - v26;
  a20 = v26 + v24 + 1674573586;
  a17 = a11;
  a18 = &a13;
  v27 = (*(v22 + 8 * (v24 + 4080)))(&a15);
  return (*(v22 + 8 * (((a15 == v23) * (((v24 - 3476) | 0x100A) + 7432)) ^ v24)))(v27);
}

uint64_t sub_10010EDD8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x650] = a1;
  STACK[0x760] = *(v2 + 8 * v1);
  return sub_1001588E0(a1);
}

uint64_t sub_10010EE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v67 - 224) = (v65 - 2140798744) ^ (914963389 * ((((2 * (v67 - 232)) | 0x40D780B8) - (v67 - 232) + 1603551140) ^ 0x8C977127));
  v68 = (*(v64 + 8 * (v65 + 7004)))(v67 - 232);
  *(v66 + 8) = *(v67 - 232) ^ 0xAC;
  return (*(a64 + 8 * (v65 + 5666)))(v68);
}

uint64_t sub_10010EF08@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = a2 + 3058;
  (*(a1 + 8 * (a2 ^ 0x3191)))();
  v3 = STACK[0x3E8];
  STACK[0x510] = 0;
  return (*(v3 + 8 * (((((STACK[0x430] == 0) ^ (v2 - 6)) & 1) * ((v2 - 1923607724) & 0x72A7DDBF ^ 0x1120)) ^ v2)))();
}

uint64_t sub_10010EF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = ((2 * (&a17 & 0x714B9A48) - &a17 - 1900780111) ^ 0xD6DDB6D3) * v22;
  a18 = v25 - 1940530245;
  a19 = a14;
  a20 = &a13;
  a21 = -654855621 - v25;
  a22 = v25 + a12 + 1674576615;
  v26 = (*(v24 + 8 * (a12 ^ 0x2C4B)))(&a17);
  return (*(v24 + 8 * ((973 * (a17 != ((((a12 + 1645222461) | 0x8AD08C) - 1654320565) ^ (v23 + 329)))) ^ a12)))(v26);
}

void sub_10010F070(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x310] = vdupq_n_s64(0x38uLL);
  *&STACK[0x320] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x380] = vdupq_n_s64(a3);
  *&STACK[0x390] = vdupq_n_s64(0x2D9C56C6ED9D3E2EuLL);
  *&STACK[0x2F0] = vdupq_n_s64(a2);
  *&STACK[0x300] = vdupq_n_s64(v14);
  *&STACK[0x2D0] = vdupq_n_s64(v10);
  *&STACK[0x2E0] = vdupq_n_s64(v9);
  *&STACK[0x2B0] = vdupq_n_s64(a7);
  *&STACK[0x2C0] = vdupq_n_s64(v11);
  *&STACK[0x370] = vdupq_n_s64(0x365717C7E4CB1A76uLL);
  *&STACK[0x290] = vdupq_n_s64(0x8BD86B3AFACC8D6DLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x9351D0703669CB12);
  *&STACK[0x210] = vdupq_n_s64(v8);
  *&STACK[0x270] = vdupq_n_s64(0xEEA89D249DAFB75ALL);
  *&STACK[0x280] = vdupq_n_s64(0x1323CE1A44C5F46EuLL);
  *&STACK[0x360] = vdupq_n_s64(0xAC7DA0564C1838BuLL);
  *&STACK[0x250] = vdupq_n_s64(0xEAD3CF27A2EF22E5);
  *&STACK[0x260] = vdupq_n_s64(0x2A5861B0BA21BA34uLL);
  *&STACK[0x230] = vdupq_n_s64(v12);
  *&STACK[0x240] = vdupq_n_s64(a8);
  *&STACK[0x220] = vdupq_n_s64(v13);
  *&STACK[0x350] = xmmword_100382E40;
  JUMPOUT(0x10010F204);
}

uint64_t sub_10010FD58@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_100193A1C();
}

uint64_t sub_10010FDD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v9 = LOWORD(STACK[0x892]);
  switch(v9)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v11 = STACK[0x620];
      STACK[0x6A0] = a4;
      LODWORD(STACK[0x6C4]) = v6;
      STACK[0x7C8] = v11 + v5;
      v12 = *(STACK[0x348] + 20);
      v15 = 16215950;
      if (v12)
      {
        v13 = v7;
        if (v12 == 1)
        {
          return sub_100182EBC(a1, a2, a3);
        }

        goto LABEL_13;
      }

      if (*(STACK[0x348] + 97) == 65)
      {
        v15 = 16215797;
      }

      else
      {
        v15 = 16215950;
      }

LABEL_12:
      v13 = v7;
LABEL_13:
      v10 = (v13 - 1509283327) & 0x59F5C0BF;
      LODWORD(STACK[0x394]) = v15;
      goto LABEL_14;
    case 20706:
LABEL_4:
      STACK[0x6A0] = a4;
      LODWORD(STACK[0x6C4]) = v6;
      v15 = 16215638;
      goto LABEL_12;
  }

  v10 = v7 - 5439;
  LODWORD(STACK[0x394]) = v4;
LABEL_14:
  STACK[0x7E8] = STACK[0x348];
  STACK[0x670] = *(v8 + 8 * v10);
  return sub_1001B42D0(v10 + 4107);
}

uint64_t sub_1001100A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v8 = a7 ^ 0x1C65;
  v9 = (a7 ^ 0x1C65) + 2353;
  v10 = STACK[0x3C8];
  STACK[0x758] = STACK[0x3C8];
  return (*(v7 + 8 * (((((v10 == 0) ^ v9) & 1) * (v8 ^ 0xAC9)) ^ v8)))(a1, a2, a3, a4, a5, a6, v9 | 0x402u);
}

uint64_t sub_100110154()
{
  v2 = (*(v1 + 8 * (v0 + 690)))(32, 0x100004077774924);
  STACK[0x578] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 342) ^ 0x219D)) ^ v0)))();
}

uint64_t sub_1001101AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(STACK[0x4B8] + 20);
  if (!v29)
  {
    return sub_10016C7BC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
  }

  if (v29 != 1)
  {
    return sub_100128E28(a1, a2);
  }

  (*(v28 + 8 * (v27 + 6966)))(STACK[0x3C8], 0, 32);
  return sub_100176CC4(&STACK[0x580]);
}

uint64_t sub_100110274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  v19 = (v16 - 772848933) & 0x2E10AFED;
  a15 = a12;
  a16 = (v16 + 2943) ^ ((((&a14 | 0xEDEEDB39) - &a14 + (&a14 & 0x121124C0)) ^ 0xB587085B) * v18);
  (*(v17 + 8 * (v16 + 4209)))(&a14);
  a16 = (v19 + 6326) ^ ((((&a14 | 0x7C519F29) + (~&a14 | 0x83AE60D6)) ^ 0x24384C4A) * v18);
  a15 = a11;
  v20 = (*(v17 + 8 * (v19 + 7592)))(&a14);
  return sub_10011034C(v20);
}

uint64_t sub_10011038C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3FD0)))(32, 0x100004077774924);
  STACK[0x878] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 ^ 0x1B37) + 9106) ^ (29 * (v0 ^ 0x1B37)))) ^ v0)))();
}

uint64_t sub_100110410@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v11 = v6 - 1;
  v12 = __ROR8__((v8 + v11) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v13 = __ROR8__(v12 ^ 0x49E9423B6F16E7D2, 8);
  v14 = v12 ^ (((2 * a1) ^ 0xB34u) - 0x1E505853091F8278);
  v15 = (v2 - ((v13 + v14) | v2) + ((v13 + v14) | v7)) ^ v3;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xF5A2F1B9B5D0B209;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (a2 - ((v19 + v18) | a2) + ((v19 + v18) | v4)) ^ v5;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x61459D2AF01F24F7;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x64C31C027084DE6CLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x1A2AEBE44253AF03;
  *(v9 + v11) = *(v8 + v11) ^ (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v25, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v8 + v11) & 7))) ^ 0x3C;
  return (*(v10 + 8 * ((59 * (v11 == 0)) ^ a1)))();
}

uint64_t sub_100110578()
{
  STACK[0x430] = STACK[0x4B0];
  LODWORD(STACK[0x664]) = STACK[0x5EC];
  return sub_1001105B0();
}

uint64_t sub_1001105B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x6D8]) = v4;
  STACK[0x480] = *(a4 + 8 * (v5 - 4659));
  return sub_10010D9E0(a1, a2, a3, a4);
}

uint64_t sub_10011060C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3 = *(v2 + 8);
  STACK[0x808] = v3;
  return (*(a1 + 8 * (((v3 == 0) * ((209 * (a2 ^ 0x2130)) ^ (a2 - 3671))) ^ a2)))();
}

uint64_t sub_100110688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = 956911519 * ((-2 - ((~v23 | 0xAA1BFF8959B17BEDLL) + (v23 | 0x55E40076A64E8412))) ^ 0xEF2D8A55B3200BE8);
  a15 = v24 ^ 0x3FE;
  a17 = v21 + v24 - ((2 * v21) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34;
  a18 = a13;
  (*(v22 + 76792))(&a15);
  v25 = 1824088897 * (v23 ^ 0x5869D362);
  a18 = v19;
  a19 = a13;
  LODWORD(a17) = (v20 ^ 0xFEF5EBEE) + ((2 * v20) & 0xFDEBD7DC) - v25 + 1336868508;
  a15 = v25 + 3757;
  v26 = (*(v22 + 77048))(&a15);
  return (*(v22 + 8 * ((12972 * (a16 == 16257999)) ^ 0x1286u)))(v26);
}

uint64_t sub_100110808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = *STACK[0x5F0];
  STACK[0x738] = 0;
  STACK[0x608] = 0;
  return (*(v71 + 8 * (((v72 == 0) * (((a71 - 394) | 0x18A) - 6062)) ^ (a71 + 2560))))();
}

uint64_t sub_100110858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x16_t a7, int8x16_t a8, int64x2_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14)
{
  v24 = a5 - 16;
  v25.i64[0] = a2 + v24 + 11;
  v25.i64[1] = a2 + v24 + 10;
  v26.i64[0] = a2 + v24 + 13;
  v26.i64[1] = a2 + v24 + 12;
  v27.i64[0] = a2 + v24 + 15;
  v27.i64[1] = a2 + v24 + 14;
  v28.i64[0] = a3 + v24 + 16;
  v28.i64[1] = a2 + v24 + 18;
  v29.i64[0] = a2 + v24 + 21;
  v29.i64[1] = a2 + v24 + 20;
  v30.i64[0] = a2 + v24 + 23;
  v30.i64[1] = a2 + v24 + 22;
  v31.i64[0] = a2 + v24 + 25;
  v31.i64[1] = a2 + v24 + 24;
  v32 = vandq_s8(v31, a7);
  v33 = vandq_s8(v30, a7);
  v34 = vandq_s8(v29, a7);
  v35 = vandq_s8(v28, a7);
  v36 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), a9);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), a9);
  v40 = veorq_s8(v39, a10);
  v41 = veorq_s8(v38, a10);
  v42 = veorq_s8(v38, a11);
  v43 = veorq_s8(v39, a11);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v43);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v42);
  v46 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v44, a12), vorrq_s8(v44, a13)), a13), a14);
  v47 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v45, a12), vorrq_s8(v45, a13)), a13), a14);
  v48 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v49 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48), v16);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49), v16);
  v52 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = vaddq_s64(v55, v53);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v56, v17), vorrq_s8(v56, v18)), v18), v19);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v57, v17), vorrq_s8(v57, v18)), v18), v19);
  v60 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v61 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v62 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v60), v20);
  v63 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v61), v20);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v65 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v66 = veorq_s8(v62, v64);
  v67 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), v21);
  v70 = veorq_s8(v68, v21);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), v22);
  v77 = veorq_s8(v75, v22);
  v78 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v79 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v80 = veorq_s8(v76, v78);
  v78.i64[0] = a2 + v24 + 17;
  v78.i64[1] = a2 + v24 + 16;
  v81 = vaddq_s64(v36, a9);
  v169.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a8)));
  v169.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v79), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a8)));
  v82 = veorq_s8(v81, a10);
  v83 = veorq_s8(v81, a11);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, a12), vorrq_s8(v84, a13)), a13), a14);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), v16);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v89, v17), vorrq_s8(v89, v18)), v18), v19);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v20);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v21);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v22);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL)));
  v98 = vandq_s8(v78, a7);
  v99 = vaddq_s64(v37, a9);
  v169.val[1] = vshlq_u64(veorq_s8(v97, v23), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a8)));
  v100 = veorq_s8(v99, a10);
  v101 = veorq_s8(v99, a11);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, a12), vorrq_s8(v102, a13)), a13), a14);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v16);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, v17), vorrq_s8(v107, v18)), v18), v19);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v20);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v21);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v22);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v117 = vandq_s8(v27, a7);
  v118 = vaddq_s64(v116, v115);
  v119 = vandq_s8(v26, a7);
  v169.val[0] = vshlq_u64(veorq_s8(v118, v23), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a8)));
  v120 = vandq_s8(v25, a7);
  v121 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v125 = vaddq_s64(v122, a9);
  v126 = vaddq_s64(v121, a9);
  v122.i64[0] = vqtbl4q_s8(v169, *&STACK[0x310]).u64[0];
  v169.val[0] = veorq_s8(v126, a10);
  v169.val[1] = veorq_s8(v125, a10);
  v127 = veorq_s8(v125, a11);
  v169.val[2] = veorq_s8(v126, a11);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[2]);
  v169.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v127);
  v169.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[0], a12), vorrq_s8(v169.val[0], a13)), a13), a14);
  v169.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[1], a12), vorrq_s8(v169.val[1], a13)), a13), a14);
  v128 = veorq_s8(v169.val[1], vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL));
  v169.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v128), v16);
  v169.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[2]), v16);
  v169.val[3] = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v129 = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL));
  v169.val[2] = veorq_s8(v169.val[1], v169.val[3]);
  v169.val[3] = vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[2]);
  v169.val[1] = vaddq_s64(v169.val[3], v129);
  v169.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[0], v17), vorrq_s8(v169.val[0], v18)), v18), v19);
  v169.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[1], v17), vorrq_s8(v169.val[1], v18)), v18), v19);
  v130 = veorq_s8(v169.val[1], vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL));
  v169.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v130), v20);
  v169.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[2]), v20);
  v169.val[3] = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v131 = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL));
  v169.val[2] = veorq_s8(v169.val[1], v169.val[3]);
  v169.val[3] = vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[2]);
  v169.val[1] = veorq_s8(vaddq_s64(v169.val[3], v131), v21);
  v169.val[0] = veorq_s8(v169.val[0], v21);
  v169.val[3] = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v132 = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL));
  v169.val[2] = veorq_s8(v169.val[1], v169.val[3]);
  v169.val[3] = vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[2]);
  v169.val[1] = veorq_s8(vaddq_s64(v169.val[3], v132), v22);
  v169.val[0] = veorq_s8(v169.val[0], v22);
  v133 = vaddq_s64(v123, a9);
  v169.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), veorq_s8(v169.val[1], vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL))), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), a8)));
  v169.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL))), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), a8)));
  v134 = veorq_s8(v133, a10);
  v135 = veorq_s8(v133, a11);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v136, a12), vorrq_s8(v136, a13)), a13), a14);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v16);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v141, v17), vorrq_s8(v141, v18)), v18), v19);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v20);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v21);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v22);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL)));
  v150 = vaddq_s64(v124, a9);
  v169.val[1] = vshlq_u64(veorq_s8(v149, v23), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a8)));
  v151 = veorq_s8(v150, a10);
  v152 = veorq_s8(v150, a11);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v153, a12), vorrq_s8(v153, a13)), a13), a14);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v16);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v158, v17), vorrq_s8(v158, v18)), v18), v19);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v20);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v21);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v22);
  v169.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL))), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), a8)));
  v122.i64[1] = vqtbl4q_s8(v169, *&STACK[0x310]).u64[0];
  v166 = vrev64q_s8(*v25.i64[1]);
  v164.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v164.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v167 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v166, v166, 8uLL), v164), v122));
  *(a4 + v24) = vextq_s8(v167, v167, 8uLL);
  return (*(v15 + 8 * (((a1 == v24) * a6) ^ v14)))();
}

uint64_t sub_1001108B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (*(v67 + 8 * (v65 ^ 0x3D42)))(LODWORD(STACK[0x7E4]) ^ 0xBC59953u, 0x100004077774924);
  STACK[0xA08] = v68;
  if (v68)
  {
    a51 = v66;
  }

  LODWORD(STACK[0xA14]) = a51;
  return (*(a65 + 8 * (((v68 != 0) * (((v65 + 663223071) & 0xD877FEAB) - 4772)) | v65)))();
}

uint64_t sub_100110954()
{
  v5 = **(&off_1003E6550 + (v2 ^ 0x515));
  v6 = 2 * (v4 - 232);
  *(v4 - 232) = v2 + 1710126949 * (((v6 | 0x564E00DE) - (v4 - 232) - 723976303) ^ 0x193C5BFF) + 7387;
  *(v4 - 224) = v5;
  (*(v0 + 8 * (v2 + 8298)))(v4 - 232);
  *(v4 - 228) = (v2 - 1451033470) ^ ((((v6 | 0xE8E367C4) - (v4 - 232) + 193874974) ^ 0x1EE0C3E7) * v3);
  v7 = (*(STACK[0x3E8] + 8 * (v2 + 8274)))(v4 - 232);
  return (*(STACK[0x3E8] + 8 * ((14 * (((v2 + 16) ^ (*(v4 - 232) == v1)) & 1)) ^ v2)))(v7);
}

uint64_t sub_100110BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (v64 - 1785) | 0xA48;
  *(v66 - 224) = (v68 - 2140798744) ^ (914963389 * ((((v66 - 232) | 0x95E9CF4F) - ((v66 - 232) & 0x95E9CF4F)) ^ 0xB9157E34));
  v69 = (*(v67 + 8 * (v68 + 7004)))(v66 - 232);
  *v65 = *(v66 - 232) ^ 0xAC;
  return (*(a64 + 8 * (v68 + 6687)))(v69);
}

uint64_t sub_100110C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *&STACK[0x2E0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x340] = vdupq_n_s64(0xF92B3AE46CD3AAB5);
  *&STACK[0x350] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2C0] = vdupq_n_s64(0x18849D489A333C3BuLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xB0C278DF03C54D67);
  *&STACK[0x2A0] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x2B0] = vdupq_n_s64(v63);
  *&STACK[0x280] = vdupq_n_s64(0x953F7DAAA667EAE2);
  *&STACK[0x290] = vdupq_n_s64(0x2A7EFB554CCFD5C4uLL);
  *&STACK[0x260] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x270] = vdupq_n_s64(0xCC5CCB6FF3BE95FDLL);
  *&STACK[0x330] = vdupq_n_s64(0xCA86DFF3ED886062);
  *&STACK[0x240] = vdupq_n_s64(0x818073FB8640EE5DLL);
  *&STACK[0x250] = vdupq_n_s64(0x1ABC9006093BCFCFuLL);
  *&STACK[0x220] = vdupq_n_s64(0xF812420440F6AA64);
  *&STACK[0x230] = vdupq_n_s64(0xE238A9E002A50567);
  *&STACK[0x200] = vdupq_n_s64(0x73A1B896F9C3D547uLL);
  *&STACK[0x210] = vdupq_n_s64(0xD891FA44D1448906);
  return sub_1001AEA04(a1, 16, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100110EC8()
{
  v2 = STACK[0x7D8];
  STACK[0x3E0] = STACK[0x520] + 108;
  STACK[0x850] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 ^ 0x1FA4) - 4762) ^ ((v0 ^ 0x1FA4) - 4770))) | v0 ^ 0x1FA4)))();
}

uint64_t sub_100110F68()
{
  STACK[0x618] = 0;
  v2 = STACK[0x66C];
  STACK[0x8F8] = 0;
  return (*(v0 + 8 * (((v2 == v1 + 16251916) * (((v1 - 4482) | 0x1182) - 4487)) ^ (v1 - 5248))))();
}

void sub_100110FC4()
{
  *&STACK[0x270] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x280] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x250] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x260] = vdupq_n_s64(v2);
  *&STACK[0x230] = vdupq_n_s64(v3);
  *&STACK[0x240] = vdupq_n_s64(v0);
  *&STACK[0x210] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x220] = vdupq_n_s64(0x9A4BC939D526EF5ELL);
  *&STACK[0x200] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x370] = vdupq_n_s64(v1);
  *&STACK[0x3A0] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x3B0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x380] = vdupq_n_s64(0x2AB11F016CBDAD66uLL);
  *&STACK[0x390] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  JUMPOUT(0x10011125CLL);
}

uint64_t sub_100112860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = (*(v71 + 8 * (v69 + 7251)))(LODWORD(STACK[0x654]) ^ v70, 0x100004077774924);
  STACK[0xA38] = v72;
  if (v72)
  {
    a69 = 16257999;
  }

  LODWORD(STACK[0xA44]) = a69;
  return (*(v71 + 8 * (((v72 == 0) * ((3 * (v69 ^ 0xB0E)) ^ 0x6F9)) ^ v69)))();
}

void sub_1001128E0(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1000F0A1CLL);
}

void sub_100112950(int a1@<W8>)
{
  if (a1 == 1019475988)
  {
    v2 = 16257999;
  }

  else
  {
    v2 = 16215975;
  }

  *v1 = v2;
}

uint64_t sub_100112A40()
{
  v3 = STACK[0x558];
  STACK[0x700] = STACK[0x558];
  v4 = *(STACK[0x5B8] + 100);
  v5 = STACK[0x5B8] + 104;
  v6 = STACK[0x990];
  v7 = (*(STACK[0x5B8] + 120) ^ 0x377EFDFE) - 604784832 + (((v0 ^ 0x2DA6) + 1862136438) & (2 * *(STACK[0x5B8] + 120)));
  v8 = 236591001 * (((LODWORD(STACK[0x76C]) ^ (v0 + 2061072447)) - 2061081695) ^ ((LODWORD(STACK[0x76C]) ^ 0x74BDF08E) - 1958604942) ^ ((LODWORD(STACK[0x76C]) ^ 0x5A1F582) - 94500226)) + 179962559;
  v9 = 1358806181 * ((374951210 - ((v1 - 232) | 0x16594D2A) + ((v1 - 232) | 0xE9A6B2D5)) ^ 0xD689DE56);
  *(v1 - 216) = v9 - 1498995465;
  *(v1 - 224) = v6;
  *(v1 - 200) = v9 + (v0 ^ 0x2DA6) + 34;
  *(v1 - 196) = v7 ^ v9;
  *(v1 - 192) = v8 ^ v9;
  *(v1 - 188) = v9 + 1334444757 * v4 + 206659825;
  *(v1 - 184) = v3;
  *(v1 - 176) = v3;
  *(v1 - 208) = v5;
  v10 = (*(v2 + 8 * ((v0 ^ 0x2DA6) + 7261)))(v1 - 232);
  return (*(STACK[0x400] + 8 * ((11470 * (*(v1 - 232) == 16257999)) ^ v0 ^ 0x2DA6)))(v10);
}

uint64_t sub_100112C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48)
{
  v50 = *(&off_1003E6550 + (v48 ^ 0xEDF));
  v51 = *v50;
  a18 = **v50 - 84;
  a19 = v51[1] - 84;
  a20 = ((v48 + 91) | 0x21) + v51[2] + 75;
  a21 = v51[3] - 84;
  a22 = v51[4] - 84;
  a23 = v51[5] - 84;
  a24 = v51[6] + ((v48 + 26) & 0x56 ^ 0xFA);
  a25 = v51[7] - 84;
  a26 = v51[8] - 84;
  a27 = v51[9] - 84;
  a28 = v51[10] - 84;
  a29 = v51[11] - 84;
  a30 = v51[12] - 84;
  a31 = v51[13] - 84;
  a32 = v51[14] - 84;
  a33 = v51[15] - 84;
  a34 = v51[16] - 84;
  a35 = v51[17] - 84;
  a36 = v51[18] - 84;
  a37 = v51[19] - 84;
  v52 = *v50;
  a38 = v52[20] - 84;
  a39 = v52[21] - 84;
  a40 = v52[22] - 84;
  a41 = v52[23] - 84;
  a42 = v52[24] - 84;
  a43 = v52[25] - 84;
  a44 = v52[26] - 84;
  a45 = v52[27] - 84;
  a46 = v52[28] - 84;
  a47 = v52[29] - 84;
  a48 = v52[30] - 84;
  v53 = (*(v49 + 8 * (v48 ^ 0x2B79)))(&a18);
  return (*(v49 + 8 * ((31 * (v53 != 0)) ^ v48)))(v53, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
}

uint64_t sub_100112E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a10;
  a16 = 1317436891 * (((&a14 | 0x1EE433E4) - &a14 + (&a14 & 0xE11BCC18)) ^ 0xAEE7AB92) + 8154;
  v19 = (*(v17 + 77096))(&a14);
  return (*(v17 + 8 * ((6346 * (a15 == v18)) ^ v16)))(v19);
}

uint64_t sub_100112F24@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_1001345FC();
}

uint64_t sub_100114B48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
{
  v22 = a2 - 8;
  STACK[0x3B0] = *(v13 + v22 - 8);
  v23.i64[0] = v13 + v22 + v11;
  v23.i64[1] = v13 + v22 - 4;
  v24.i64[0] = v13 + v22 - 1;
  v24.i64[1] = v13 + v22 - 2;
  v25.i64[0] = v13 + v22 - 5;
  v25.i64[1] = v13 + v22 - 6;
  v26.i64[0] = v13 + v22 - 7;
  v26.i64[1] = v13 + v22 - 8;
  v27.i64[0] = v12 + v22 - 7;
  v27.i64[1] = v12 + v22 - 8;
  v28.i64[0] = v12 + v22 - 5;
  v28.i64[1] = v12 + v22 - 6;
  v29.i64[0] = v12 + v22 - 1;
  v29.i64[1] = v12 + v22 - 2;
  v30.i64[0] = v12 + v22 + v11;
  v30.i64[1] = v12 + v22 - 4;
  v31 = vandq_s8(v26, a4);
  v32 = vandq_s8(v25, a4);
  v33 = vandq_s8(v24, a4);
  v34 = vandq_s8(v23, a4);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), *&STACK[0x390]);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0x390]);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0x390]);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x390]);
  v39 = veorq_s8(v38, *&STACK[0x380]);
  v40 = veorq_s8(v37, *&STACK[0x380]);
  v41 = veorq_s8(v36, *&STACK[0x380]);
  v42 = veorq_s8(v35, *&STACK[0x380]);
  v43 = veorq_s8(v35, *&STACK[0x370]);
  v44 = veorq_s8(v36, *&STACK[0x370]);
  v45 = veorq_s8(v37, *&STACK[0x370]);
  v46 = veorq_s8(v38, *&STACK[0x370]);
  v47 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v43), *&STACK[0x360]);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v44), *&STACK[0x360]);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v45), *&STACK[0x360]);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v46), *&STACK[0x360]);
  v51 = vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL);
  v52 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v53 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v54 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v55 = veorq_s8(v49, v53);
  v56 = veorq_s8(v48, v52);
  v57 = veorq_s8(v47, v51);
  v58 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v60 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v57);
  v62 = vaddq_s64(v60, v56);
  v63 = vaddq_s64(v59, v55);
  v64 = vaddq_s64(v58, v54);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), *&STACK[0x350]), v64), *&STACK[0x340]), *&STACK[0x330]);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), *&STACK[0x350]), v63), *&STACK[0x340]), *&STACK[0x330]);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v62, v62), *&STACK[0x350]), v62), *&STACK[0x340]), *&STACK[0x330]);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), *&STACK[0x350]), v61), *&STACK[0x340]), *&STACK[0x330]);
  v69 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v70 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v72 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v73 = veorq_s8(v67, v71);
  v74 = veorq_s8(v66, v70);
  v75 = veorq_s8(v65, v69);
  v76 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v75);
  v80 = vaddq_s64(v78, v74);
  v81 = vaddq_s64(v77, v73);
  v82 = vaddq_s64(v76, v72);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v82, v82), *&STACK[0x320]), v82), *&STACK[0x310]), *&STACK[0x300]);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v81, v81), *&STACK[0x320]), v81), *&STACK[0x310]), *&STACK[0x300]);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), *&STACK[0x320]), v80), *&STACK[0x310]), *&STACK[0x300]);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v79, v79), *&STACK[0x320]), v79), *&STACK[0x310]), *&STACK[0x300]);
  v87 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v90 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v91 = veorq_s8(v85, v89);
  v92 = veorq_s8(v84, v88);
  v93 = veorq_s8(v83, v87);
  v94 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v93);
  v98 = vaddq_s64(v96, v92);
  v99 = vaddq_s64(v95, v91);
  v100 = vaddq_s64(v94, v90);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v100, v100), *&STACK[0x2E0]), v100), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), *&STACK[0x2E0]), v99), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), *&STACK[0x2E0]), v98), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), *&STACK[0x2E0]), v97), *&STACK[0x2C0]), *&STACK[0x2B0]);
  v105 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v108 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v109 = veorq_s8(v103, v107);
  v110 = veorq_s8(v102, v106);
  v111 = veorq_s8(v101, v105);
  v112 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v111);
  v116 = veorq_s8(vaddq_s64(v112, v108), v19);
  v117 = veorq_s8(vaddq_s64(v113, v109), v19);
  v118 = veorq_s8(vaddq_s64(v114, v110), v19);
  v119 = veorq_s8(v115, v19);
  v120 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v123 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v124 = veorq_s8(v118, v122);
  v125 = veorq_s8(v117, v121);
  v126 = veorq_s8(v116, v120);
  v127 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v126);
  v131 = veorq_s8(vaddq_s64(v127, v123), *&STACK[0x2A0]);
  v132 = veorq_s8(vaddq_s64(v128, v124), *&STACK[0x2A0]);
  v133 = veorq_s8(vaddq_s64(v129, v125), *&STACK[0x2A0]);
  v134 = veorq_s8(v130, *&STACK[0x2A0]);
  v135 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v138 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), veorq_s8(v131, v135));
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), veorq_s8(v132, v136));
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), veorq_s8(v133, v137));
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v138);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v142, v142), *&STACK[0x290]), v142), *&STACK[0x280]), *&STACK[0x270]);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v141, v141), *&STACK[0x290]), v141), *&STACK[0x280]), *&STACK[0x270]);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), *&STACK[0x290]), v140), *&STACK[0x280]), *&STACK[0x270]);
  *&STACK[0x3A0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v139, v139), *&STACK[0x290]), v139), *&STACK[0x280]), *&STACK[0x270]), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), a5)));
  v146 = vshlq_u64(v145, vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), a5)));
  v147 = vshlq_u64(v144, vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), a5)));
  v148 = vshlq_u64(v143, vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), a5)));
  v149 = vandq_s8(v30, a4);
  v150 = vandq_s8(v29, a4);
  v151 = vandq_s8(v28, a4);
  v152 = vandq_s8(v27, a4);
  v153 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v157 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x240], v156), *&STACK[0x220]), vorrq_s8(vaddq_s64(v156, *&STACK[0x260]), *&STACK[0x250]));
  v158 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x240], v155), *&STACK[0x220]), vorrq_s8(vaddq_s64(v155, *&STACK[0x260]), *&STACK[0x250]));
  v159 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x240], v154), *&STACK[0x220]), vorrq_s8(vaddq_s64(v154, *&STACK[0x260]), *&STACK[0x250]));
  v160 = vsubq_s64(*&STACK[0x2F0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x240], v153), *&STACK[0x220]), vorrq_s8(vaddq_s64(v153, *&STACK[0x260]), *&STACK[0x250])));
  v161 = vsubq_s64(*&STACK[0x2F0], v159);
  v162 = vsubq_s64(*&STACK[0x2F0], v158);
  v163 = veorq_s8(v161, v21);
  v164 = veorq_s8(v160, v21);
  v165 = veorq_s8(v160, v20);
  v166 = veorq_s8(v161, v20);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v166);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), v15), v168), v16), v17);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v167, v167), v15), v167), v16), v17);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v172 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v173 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v172);
  v175 = veorq_s8(vaddq_s64(v173, v171), v18);
  v176 = veorq_s8(v174, v18);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v178 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v179 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v178);
  v181 = vaddq_s64(v179, v177);
  v182 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v183 = veorq_s8(v181, v182);
  v184 = veorq_s8(v180, v182);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v186 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v187 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v186);
  v189 = vaddq_s64(v187, v185);
  v190 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v191 = veorq_s8(v189, v190);
  v192 = veorq_s8(v188, v190);
  v193 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v194 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v195 = veorq_s8(v191, v193);
  v196 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v195);
  v198 = veorq_s8(vaddq_s64(v196, v194), v19);
  v199 = veorq_s8(v197, v19);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v201 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200);
  v203 = vdupq_n_s64(a3);
  v204 = veorq_s8(v202, v203);
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v201), v203);
  v206 = vdupq_n_s64(v5);
  v207 = vdupq_n_s64(0x401A42DCA8550D2EuLL);
  v208 = vaddq_s64(vsubq_s64(vorrq_s8(v204, v206), vorrq_s8(v204, v207)), v207);
  v209 = vdupq_n_s64(v6);
  v210 = veorq_s8(v208, v209);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205, v206), vorrq_s8(v205, v207)), v207), v209);
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL)));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL)));
  v214 = vdupq_n_s64(v7);
  v215 = vsubq_s64(vandq_s8(vaddq_s64(v212, v212), v214), v212);
  v216 = vdupq_n_s64(v8);
  v217 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v213, v213), v214), v213), v216);
  v218 = vdupq_n_s64(v9);
  v253.val[3] = veorq_s8(vshlq_u64(veorq_s8(v217, v218), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a5))), v148);
  v253.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v215, v216), v218), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a5))), v147);
  v219 = veorq_s8(v162, v21);
  v220 = veorq_s8(v162, v20);
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220);
  v222 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v221, v221), v15), v221), v16), v17);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), v18);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), v182);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227), v190);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), v19);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), v203);
  v233 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v232, v206), vorrq_s8(v232, v207)), v207), v209);
  v234 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL)));
  v235 = vsubq_s64(*&STACK[0x2F0], v157);
  v253.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v234, v234), v214), v234), v216), v218), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a5))), v146);
  v236 = veorq_s8(v235, v21);
  v237 = veorq_s8(v235, v20);
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238, v238), v15), v238), v16), v17);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v18);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v243 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242), v182);
  v244 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v245 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v244), v190);
  v246 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v247 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v246), v19);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v249 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248), v203);
  v250 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v249, v206), vorrq_s8(v249, v207)), v207), v209);
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL)));
  v253.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v251, v251), v214), v251), v216), v218), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a5))), *&STACK[0x3A0]);
  *(v12 + v22 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v253, *&STACK[0x2D0])), STACK[0x3B0]);
  return (*(v14 + 8 * (((2 * (a1 == v22)) | ((a1 == v22) << 6)) ^ v10)))();
}

uint64_t sub_100114DE4@<X0>(_BYTE *a1@<X8>)
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
  return sub_10011B31C(STACK[0x6B0]);
}

uint64_t sub_100114FA0@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x33C4)))(a1);
  *(STACK[0x6B0] + 24) = 0;
  return sub_100114FC8();
}

uint64_t sub_100114FC8()
{
  v2 = (*(v1 + 8 * (v0 + 2830)))();
  STACK[0x6B0] = 0;
  return sub_100114FF8(v2);
}

uint64_t sub_100114FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x538];
  STACK[0x850] = STACK[0x538];
  return (*(v4 + 8 * (((((v5 == 0) ^ (v3 + 92)) & 1) * (((v3 - 4335) | 0x98) - 109)) ^ v3)))(a1, a2, a3, 16215976);
}

void sub_100115050()
{
  (*(v1 + 8 * (v2 + 5616)))();
  *(v0 + 24) = 0;
  JUMPOUT(0x10003AFA0);
}

uint64_t sub_10011507C@<X0>(int8x16_t *a1@<X8>)
{
  v5 = 19 * (v1 ^ 0x11097);
  v6.i64[0] = 0x7878787878787878;
  v6.i64[1] = 0x7878787878787878;
  v7 = vsubq_s8(v2[1], vandq_s8(vaddq_s8(v2[1], v2[1]), v6));
  v8 = vandq_s8(vaddq_s8(*v2, *v2), v6);
  v6.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v6.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *a1 = vaddq_s8(vsubq_s8(*v2, v8), v6);
  a1[1] = vaddq_s8(v7, v6);
  (*(v4 + 8 * (v5 + 4451)))(v3, 0, 24);
  v2[6].i64[1] = 0x1FA834112;
  v2[7].i64[0] = 0x200000004;
  STACK[0x638] = v3;
  LODWORD(STACK[0x5E4]) = 0;
  STACK[0x460] = 0;
  v9 = (*(v4 + 8 * (v5 ^ 0x31BF)))(128, 0x10800400FED9166);
  STACK[0x458] = v9;
  return (*(v4 + 8 * (((v9 == 0) * (((v5 + 942) ^ 0xFFFFFF9D) + (v5 ^ 0x3D6))) ^ v5)))();
}

uint64_t sub_1001151D4@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v14 = v5 + a4;
  v15 = v5 - 1;
  v16 = __ROR8__((v4 + v15) & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (a1 | (2 * (v16 - 0x6AF7234D0CC131D5))) - (v16 - 0x6AF7234D0CC131D5) + v12;
  v18 = (1874 * (v6 ^ 0x8BAu)) ^ 0xC50A0FD46BA548BDLL ^ v17;
  v19 = v17 ^ v8;
  v20 = __ROR8__(v18, 8);
  v21 = ((v9 | (2 * (v20 + v19))) - (v20 + v19) + v10) ^ v11;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__(((v7 & (2 * (v23 + v22))) - (v23 + v22) + 0x242F32CA0DB3DDEALL) ^ 0xD18DC373B8636FE3, 8);
  v25 = ((v7 & (2 * (v23 + v22))) - (v23 + v22) + 0x242F32CA0DB3DDEALL) ^ 0xD18DC373B8636FE3 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x64C31C027084DE6CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0xA5A39F44AA2858D8) + 0x52D1CFA255142C6CLL) ^ 0x48FB24461747836FLL;
  v34 = __ROR8__((v14 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = __ROR8__(v33, 8) + (v33 ^ __ROR8__(v31, 61));
  v36 = (v34 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v37 = (__ROR8__((v34 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v36) ^ 0xE49D77DF873DBF7ELL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xF5A2F1B9B5D0B209;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x5963B6C555D97F1FLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x61459D2AF01F24F7;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x64C31C027084DE6CLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  *(v14 + 9) = ((v35 ^ 0xAB3042D228875C41) >> (8 * ((v4 + v15) & 7))) ^ (((v49 + v48 - ((2 * (v49 + v48)) & 0xBCFFAF874FA44A5ALL) + a2) ^ a3) >> (8 * ((v14 + 9) & 7))) ^ *(v4 + v15);
  return (*(v13 + 8 * ((6964 * (v15 == 0)) ^ v6)))();
}

uint64_t sub_100115714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = v4;
  return sub_10012C128(a1, a2, a3);
}

uint64_t sub_100115728(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 40);
  *(v5 - 112) = veorq_s8(**(a1 + 24), xmmword_100382E50);
  if (v3)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = *(v4 + 8 * ((31 * v8) ^ a3));
  *(v5 - 128) = -42900;
  return v9(a1, a2);
}

uint64_t sub_100115798@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(a1 + 24);
  v70 = __ROR8__((v69 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = (v70 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v72 = (__ROR8__((v70 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v71) ^ 0xE49D77DF873DBF7ELL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xF5A2F1B9B5D0B209;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (v76 + v75 - ((2 * (v76 + v75)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x61459D2AF01F24F7;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = v65 ^ v67 ^ v68;
  v83 = (0x3C6F945F92C5D13ALL - ((v81 + v80) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + ((v81 + v80) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5)) ^ 0xDE926C5E552A4CDBLL;
  v84 = v83 ^ __ROR8__(v80, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x1A2AEBE44253AF03;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = *(a65 + 8 * v66);
  v69[10] = (((((2 * (v87 + v86)) | 0xC38C36871CFCF294) - (v87 + v86) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v69 + 10) & 7u))) ^ HIBYTE(v82) ^ 0x75;
  v89 = __ROR8__((v69 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v90 = v89 - ((2 * v89 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v91 = v90 ^ 0xD3FC8BFDA5C15E5;
  v90 ^= 0xA5792D2843AA64B9;
  v92 = __ROR8__(v91, 8);
  v93 = (((2 * (v92 + v90)) & 0x172EA68DBB7EC94) - (v92 + v90) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v94 = v93 ^ __ROR8__(v90, 61);
  v95 = __ROR8__(v93, 8);
  v96 = __ROR8__((((2 * (v95 + v94)) & 0xD4F2B43A3958542) - (v95 + v94) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57, 8);
  v97 = (((2 * (v95 + v94)) & 0xD4F2B43A3958542) - (v95 + v94) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57 ^ __ROR8__(v94, 61);
  v98 = (v96 + v97) ^ 0x5963B6C555D97F1FLL;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (0xFC5A85E849120F94 - ((v100 + v99) | 0xFC5A85E849120F94) + ((v100 + v99) | 0x3A57A17B6EDF06BLL)) ^ 0x62E0E73D46F2D49CLL;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x64C31C027084DE6CLL;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (0xC0CE79C28A9AEE9ELL - ((v105 + v104) | 0xC0CE79C28A9AEE9ELL) + ((v105 + v104) | 0x3F31863D75651161)) ^ 0x251B6DD93736BE62;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  v69[11] = (((((2 * (v108 + v107)) | 0xAB41BFF64D60CE6CLL) - (v108 + v107) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v69 + 11) & 7u))) ^ BYTE6(v82) ^ 0x30;
  v109 = (__ROR8__((v69 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v110 = v109 ^ 0x4DE9423B6F16E7D2;
  v109 ^= 0xE5AFA7ACF6E0968ELL;
  v111 = __ROR8__(v110, 8);
  v112 = (v111 + v109 - ((2 * (v111 + v109)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v113 = v112 ^ __ROR8__(v109, 61);
  v114 = __ROR8__(v112, 8);
  v115 = __ROR8__((0xD2EFEC06502ADFA8 - ((v114 + v113) | 0xD2EFEC06502ADFA8) + ((v114 + v113) | 0x2D1013F9AFD52057)) ^ 0xD8B2E2401A05925ELL, 8);
  v116 = (0xD2EFEC06502ADFA8 - ((v114 + v113) | 0xD2EFEC06502ADFA8) + ((v114 + v113) | 0x2D1013F9AFD52057)) ^ 0xD8B2E2401A05925ELL ^ __ROR8__(v113, 61);
  v117 = (v115 + v116) ^ 0x5963B6C555D97F1FLL;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (v119 + v118 - ((2 * (v119 + v118)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x64C31C027084DE6CLL;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0x1A2AEBE44253AF03;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v69[12] = (((((2 * (v126 + v125)) & 0xA6AF603E61524BD2) - (v126 + v125) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v69 + 12) & 7u))) ^ BYTE5(v82) ^ 0x26;
  v127 = __ROR8__((v69 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v128 = ((2 * (v127 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v127 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v129 = v128 ^ 0x1780DE40BC839FA3;
  v128 ^= 0xBFC63BD72575EEFFLL;
  v130 = __ROR8__(v129, 8);
  v131 = (0xADB28795D255ADC9 - ((v130 + v128) | 0xADB28795D255ADC9) + ((v130 + v128) | 0x524D786A2DAA5236)) ^ 0xB6D00FB5AA97ED48;
  v132 = v131 ^ __ROR8__(v128, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (((2 * (v133 + v132)) | 0xC461725543BD74EALL) - (v133 + v132) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0x5963B6C555D97F1FLL;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0x61459D2AF01F24F7;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (0x2958816D8C009FA4 - ((v140 + v139) | 0x2958816D8C009FA4) + ((v140 + v139) | 0xD6A77E9273FF605BLL)) ^ 0xB2646290037BBE37;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (v143 + v142 - ((2 * (v143 + v142)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v69[13] = (((__ROR8__(v144, 8) + (v144 ^ __ROR8__(v142, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v69 + 13) & 7u))) ^ BYTE4(v82) ^ 0x9B;
  v145 = __ROR8__((v69 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v146 = v145 - ((2 * v145 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v147 = v146 ^ 0x59C38B8127975FAELL;
  v146 ^= 0xF1856E16BE612EF2;
  v148 = (__ROR8__(v147, 8) + v146) ^ 0xE49D77DF873DBF7ELL;
  v149 = v148 ^ __ROR8__(v146, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ 0xF5A2F1B9B5D0B209;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ 0x5963B6C555D97F1FLL;
  v153 = __ROR8__(v152, 8);
  v154 = v152 ^ __ROR8__(v151, 61);
  v155 = (v153 + v154 - ((2 * (v153 + v154)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL;
  v156 = v155 ^ __ROR8__(v154, 61);
  v157 = __ROR8__(v155, 8);
  v158 = (v157 + v156 - ((2 * (v157 + v156)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v159 = v158 ^ __ROR8__(v156, 61);
  v160 = (__ROR8__(v158, 8) + v159) ^ 0x1A2AEBE44253AF03;
  v161 = v160 ^ __ROR8__(v159, 61);
  v162 = __ROR8__(v160, 8);
  v69[14] = (((0x949506394BF91318 - ((v162 + v161) | 0x949506394BF91318) + ((v162 + v161) | 0x6B6AF9C6B406ECE7)) ^ 0xC05ABB149C81B0A6) >> (8 * ((v69 + 14) & 7u))) ^ BYTE3(v82) ^ 0xB0;
  v163 = __ROR8__((v69 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v164 = ((v163 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v163 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v163 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v165 = __ROR8__(v164 ^ 0x8A84C36C7E52240, 8);
  v164 ^= 0xA0EEA9A15E13531CLL;
  v166 = (v165 + v164) ^ 0xE49D77DF873DBF7ELL;
  v167 = v166 ^ __ROR8__(v164, 61);
  v168 = (__ROR8__(v166, 8) + v167) ^ 0xF5A2F1B9B5D0B209;
  v169 = v168 ^ __ROR8__(v167, 61);
  v170 = __ROR8__(v168, 8);
  v171 = (((2 * (v170 + v169)) & 0x7EC0B560615BD22) - (v170 + v169) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71;
  v172 = v171 ^ __ROR8__(v169, 61);
  v173 = __ROR8__(v171, 8);
  v174 = (((v173 + v172) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v173 + v172) ^ 0xFE51A922A5729599) - (((v173 + v172) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v175 = v174 ^ __ROR8__(v172, 61);
  v176 = __ROR8__(v174, 8);
  v177 = (((2 * (v176 + v175)) | 0x81910D2EFE6F15ACLL) - (v176 + v175) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v178 = v177 ^ __ROR8__(v175, 61);
  v179 = __ROR8__(v177, 8);
  v180 = (0xBAD0150D2767CD97 - ((v179 + v178) | 0xBAD0150D2767CD97) + ((v179 + v178) | 0x452FEAF2D8983268)) ^ 0x5F0501169ACB9D6BLL;
  v181 = v180 ^ __ROR8__(v178, 61);
  v182 = __ROR8__(v180, 8);
  v69[15] = (((v182 + v181 - ((2 * (v182 + v181)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v69 + 15) & 7u))) ^ BYTE2(v82) ^ 0x93;
  v183 = __ROR8__((v69 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v184 = -2 - (((0x6AF7234D0CC131D4 - v183) | 0xB9373BCC9E95648DLL) + ((v183 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v185 = __ROR8__(v184 ^ 0xF0DE79F7F183835FLL, 8);
  v184 ^= 0x58989C606875F203uLL;
  v186 = (v185 + v184) ^ 0xE49D77DF873DBF7ELL;
  v187 = v186 ^ __ROR8__(v184, 61);
  v188 = (__ROR8__(v186, 8) + v187) ^ 0xF5A2F1B9B5D0B209;
  v189 = v188 ^ __ROR8__(v187, 61);
  v190 = (__ROR8__(v188, 8) + v189) ^ 0x5963B6C555D97F1FLL;
  v191 = v190 ^ __ROR8__(v189, 61);
  v192 = __ROR8__(v190, 8);
  v193 = (((2 * (v192 + v191)) & 0x24C3B6EDA515D42ALL) - (v192 + v191) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v194 = v193 ^ __ROR8__(v191, 61);
  v195 = __ROR8__(v193, 8);
  v196 = (0xC5ADE207DE5D85C1 - ((v195 + v194) | 0xC5ADE207DE5D85C1) + ((v195 + v194) | 0x3A521DF821A27A3ELL)) ^ 0x5E9101FA5126A452;
  v197 = v196 ^ __ROR8__(v194, 61);
  v198 = (__ROR8__(v196, 8) + v197) ^ 0x1A2AEBE44253AF03;
  v199 = __ROR8__(v198, 8);
  v200 = __ROR8__(v197, 61);
  LOBYTE(v197) = (((((2 * (v199 + (v198 ^ v200))) | 0x4D724CAE0D8F11E6) - (v199 + (v198 ^ v200)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2uLL) >> (8 * ((v69 + 16) & 7u))) ^ BYTE1(v82) ^ 0x97;
  v201 = __ROR8__((v69 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v69[16] = v197;
  v202 = ((2 * ((v201 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v201 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v203 = v202 ^ 0xDE90BDF0289CA71;
  v202 ^= 0xA5AFEE489B7FBB2DLL;
  v204 = __ROR8__(v203, 8);
  v205 = (((2 * (v204 + v202)) | 0x692CEF71A0CBBC0ELL) - (v204 + v202) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v206 = v205 ^ __ROR8__(v202, 61);
  v207 = __ROR8__(v205, 8);
  v208 = __ROR8__((((2 * (v207 + v206)) & 0xFD81E0C09A12569ALL) - (v207 + v206) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v209 = (((2 * (v207 + v206)) & 0xFD81E0C09A12569ALL) - (v207 + v206) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v206, 61);
  v210 = (v208 + v209) ^ 0x5963B6C555D97F1FLL;
  v211 = v210 ^ __ROR8__(v209, 61);
  v212 = (__ROR8__(v210, 8) + v211) ^ 0x61459D2AF01F24F7;
  v213 = v212 ^ __ROR8__(v211, 61);
  v214 = __ROR8__(v212, 8);
  v215 = (v214 + v213 - ((2 * (v214 + v213)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v216 = v215 ^ __ROR8__(v213, 61);
  v217 = __ROR8__(v215, 8);
  v218 = (v217 + v216 - ((2 * (v217 + v216)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v69[17] = (((__ROR8__(v218, 8) + (v218 ^ __ROR8__(v216, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v69 + 17) & 7u))) ^ v82 ^ 8;
  return v88();
}

uint64_t sub_1001167A0(int8x16_t a1, int8x16_t a2, double a3, double a4, int32x4_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, int a15)
{
  a2.i64[0] = *(v17 + 4);
  a2.i32[2] = *(v17 + 12);
  v21 = vextq_s8(a1, a2, 0xCuLL);
  v22 = a2;
  v22.i32[3] = *(v17 + 16);
  v23 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v22, a8), vandq_s8(v21, a6)), 1uLL), *(v17 - 908));
  v21.i32[0] = *(v18 + 4 * (*(v17 + 4) & (((v15 ^ (a10 + 1)) * a13) ^ a14)));
  v21.i32[1] = *(v18 + 4 * (*(v17 + 8) & 1));
  v21.i32[2] = *(v18 + 4 * (*(v17 + 12) & 1));
  v21.i32[3] = *(v18 + 4 * (v22.i8[12] & 1));
  *v17 = veorq_s8(vaddq_s32(vsubq_s32(v23, vandq_s8(vaddq_s32(v23, v23), a7)), a5), v21);
  return (*(v20 + 8 * (((v16 != 4) * a15) ^ (v19 + v15 + 2405))))();
}

uint64_t sub_1001168D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, int a14, uint64_t a15)
{
  v19 = 1875091903 * ((&a12 & 0xF9B9BFD1 | ~(&a12 | 0xF9B9BFD1)) ^ 0x3033C3AD);
  a13 = ((2 * v15) & 0xC63B7FDE) + v19 + ((((3 * (v18 ^ 0x1135)) ^ 0x13AC) + 1662892878) ^ v15) - 1124141381;
  a14 = v19 + v18 + 1938;
  a15 = a10;
  v20 = (*(v16 + 8 * (v18 ^ 0x3337)))(&a12);
  return (*(v16 + 8 * ((407 * (a12 != v17)) ^ v18)))(v20);
}

uint64_t sub_1001169AC()
{
  v3 = v1 - 2037;
  v4 = (*(v0 + 8 * (v3 + 6317)))(v2, *(&off_1003E6550 + (v3 ^ 0xDB4))) == 0;
  return (*(v0 + 8 * ((v4 * (((v3 + 1604661758) & 0xA05ACFFB) - 3911)) | v3)))();
}

uint64_t sub_100116A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v27 = v21 ^ 0x162;
  v28 = 1875091903 * (((&a17 | 0x128781F2) - (&a17 & 0x128781F2)) ^ 0x24F20271);
  a20 = a14;
  a18 = (v24 ^ 0x7E9CBFBB) + ((v24 << ((v27 + 30) & 0xBF ^ 0xA4)) & 0xFD397F76) + v28 - 1585449233;
  a19 = v28 + v27 + 5221;
  (*(v25 + 8 * (v27 + 7142)))(&a17);
  v29 = 1824088897 * ((&a17 & 0x619B5BF2 | ~(&a17 | 0x619B5BF2)) ^ 0xC60D776F);
  a19 = (v23 ^ 0x5FEDFF8F) + ((2 * v23) & 0xBFDBFF1E) - v29 - 290002181;
  a17 = v29 + v27 + 1254;
  a20 = v22;
  a21 = a14;
  v30 = (*(v25 + 8 * (v27 ^ 0x2C58u)))(&a17);
  return (*(v25 + 8 * ((4623 * (a18 == v26)) ^ v27)))(v30);
}

uint64_t sub_100116D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  v24 = ((v23 - 2129130941 - 2 * ((v23 - 152) & 0x81180ADB)) ^ 0x6B897ADE) * v19;
  *(v23 - 144) = v22;
  *(v23 - 152) = 554685624 - v24;
  *(v23 - 148) = v24 + a19 + 6343;
  *(v23 - 132) = v24 ^ 0xB546D09F;
  v25 = (*(v21 + 8 * (a19 ^ 0x2A43)))(v23 - 152);
  return (*(v21 + 8 * ((4732 * (*(v23 - 136) == ((a19 + 3958) ^ (v20 - 2909)))) ^ a19)))(v25);
}

uint64_t sub_100116E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v26 = ((&a17 & 0xDA264E64 | ~(&a17 | 0xDA264E64)) ^ 0x7DB062F9) * v23;
  a18 = v26 - 1199756691;
  a21 = -654855621 - v26;
  a22 = v26 + v25 + 1674575108;
  a19 = a15;
  a20 = &a14;
  v27 = (*(v24 + 8 * (v25 ^ 0x2A2E)))(&a17);
  return (*(v24 + 8 * ((23 * (((v25 ^ (a17 == v22 + ((v25 - 1665) | 0x640) - 3941)) & 1) == 0)) ^ v25)))(v27);
}

uint64_t sub_100116EE8@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = ((a2 ^ 0x16ED) + 1588223240) & 0xA1559EF7;
  **(a1 + 8) = v5 + v6 + (v7 ^ 0x63F);
  return (*(v3 + 8 * ((4202 * (*(a3 + 24) == v4 + 2 * (v7 ^ 0x2F1) + 2383)) ^ v7)))();
}

uint64_t sub_100116F54(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29 = a15 - 8;
  v30.i64[0] = a16 + v29 + 11;
  v30.i64[1] = a16 + v29 + 10;
  v31.i64[0] = a16 + v29 + 13;
  v31.i64[1] = a16 + v29 + 12;
  v32.i64[0] = a16 + v29 + 15;
  v32.i64[1] = a16 + v29 + 14;
  v33.i64[0] = v18 + v29 + a11 + 8;
  v33.i64[1] = a16 + v29 + 16;
  v34 = vandq_s8(v33, a1);
  v35 = vandq_s8(v32, a1);
  v36 = vandq_s8(v31, a1);
  v37 = vandq_s8(v30, a1);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v42 = vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4));
  v43 = vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4));
  v44 = vaddq_s64(vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a3), a4)), a5);
  v45 = vaddq_s64(vsubq_s64(v38, vandq_s8(vaddq_s64(vaddq_s64(v38, v38), a3), a4)), a5);
  v46 = veorq_s8(v45, a6);
  v47 = veorq_s8(v44, a6);
  v48 = veorq_s8(v44, a7);
  v49 = veorq_s8(v45, a7);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48), a8);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49), a8);
  v52 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = veorq_s8(vaddq_s64(v55, v53), v20);
  v58 = veorq_s8(v56, v20);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v61 = veorq_s8(v57, v59);
  v62 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = veorq_s8(vaddq_s64(v62, v60), v21);
  v65 = veorq_s8(v63, v21);
  v66 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v22), v71), v23), v24);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v22), v70), v23), v24);
  v74 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v25);
  v80 = veorq_s8(v78, v25);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v26);
  v87 = veorq_s8(v85, v26);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v93 = vaddq_s64(v42, a5);
  v94 = vaddq_s64(v92, v90);
  v95 = veorq_s8(vaddq_s64(v91, v89), v27);
  v126.val[3] = vshlq_u64(veorq_s8(v94, v27), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v126.val[2] = vshlq_u64(v95, vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v96 = veorq_s8(v93, a6);
  v97 = veorq_s8(v93, a7);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), a8);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v20);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v21);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v22), v104), v23), v24);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), v25);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v26);
  v110 = vaddq_s64(v43, a5);
  v126.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v111 = veorq_s8(v110, a6);
  v112 = veorq_s8(v110, a7);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), a8);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v20);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v21);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), v22), v119), v23), v24);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v25);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v26);
  v126.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL))), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  *(v17 + v29 + a11 + 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v126, v28)), *(v19 + v29));
  return (*(STACK[0x400] + 8 * ((30 * (a14 == v29)) ^ v16)))();
}

uint64_t sub_1001170A8(uint64_t a1)
{
  v2 = *(a1 + 16) + 31943069 * (((a1 | 0x3D7238B5) - (a1 | 0xC28DC74A) - 1030895798) ^ 0x5EDB7ECD);
  v3 = *a1;
  v4 = *(a1 + 8) - 31943069 * (((a1 | 0x8AA577063D7238B5) - (a1 | 0x755A88F9C28DC74ALL) + 0x755A88F9C28DC74ALL) ^ 0xD9B7469D5EDB7ECDLL);
  v8[1] = v2 - 1875091903 * ((2 * (v8 & 0x578D6448) - v8 + 678599605) ^ 0x1E071836) + 376411080;
  v5 = *(&off_1003E6550 + (v2 ^ 0x22D30DAA)) - 8;
  (*&v5[8 * v2 - 0x1169737D8])(v8);
  v6 = 1824088897 * ((((2 * v8) | 0x94327AF38601545CLL) - v8 + 0x35E6C2863CFF55D2) ^ 0xA79E50729B69794CLL);
  v11 = v2 + v6 - 584252443;
  v9 = v3;
  v10 = v6 + (v4 ^ 0xD43C13C2366ADA6CLL);
  v8[0] = 1077815187 - v6;
  result = (*&v5[8 * v2 - 0x1169735E8])(v8);
  *(a1 + 20) = v12;
  return result;
}

void sub_1001172A8()
{
  if (v5 == v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  *v0 = v4;
}

uint64_t sub_1001172D0()
{
  v6 = LOWORD(STACK[0x9A2]);
  if (v6 == 17168)
  {
    goto LABEL_4;
  }

  if (v6 != 33980)
  {
    if (v6 != 20706)
    {
LABEL_5:
      STACK[0x700] = 0;
      LODWORD(STACK[0x6B4]) = v3;
      return (*(v4 + 8 * (((*STACK[0x5D0] == 0) * ((((((v5 - 6041) | 0x841) + 997) | 0x82) - 3042) ^ ((((v5 - 6041) | 0x841) - 2155) | 2))) ^ ((v5 - 6041) | 0x841))))();
    }

LABEL_4:
    STACK[0x7B0] = v1;
    goto LABEL_5;
  }

  v8 = STACK[0x740];
  STACK[0x7B0] = v1;
  LODWORD(STACK[0x6B4]) = v0;
  return (*(v4 + 8 * ((238 * (((v8 + v2 == 0) ^ (v5 + 26)) & 1)) ^ (v5 + 932))))();
}

void sv65rt7ugf9si4()
{
  v0 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_1004033F8) ^ 0xDF)) ^ byte_10037A9B0[byte_100373AD0[(-85 * ((dword_1004033E0 - dword_1004033F8) ^ 0xDF))] ^ 0xBF]) - 39);
  v1 = *(v0 - 4);
  v2 = *(&off_1003E6550 + (byte_10037A9B8[(byte_100373AD8[(-85 * ((dword_1004033E0 - v1) ^ 0xDF)) - 8] ^ 0x9B) - 8] ^ (-85 * ((dword_1004033E0 - v1) ^ 0xDF))) + 128);
  v3 = v1 - &v5 + *v2;
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * ((v6 ^ 0x9B381DD7) & 0x4F3E744A) - (v6 ^ 0x9B381DD7) + 817990581) ^ 0x99E2CDF2);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + dword_1004033F8) ^ 0xDF)) ^ byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 + dword_1004033F8) ^ 0xDF))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_10036976C[(byte_100382D1C[v2 - 12] ^ 0xB1) - 12] ^ v2) + 76728])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10011765C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, char a14, char *a15, char *a16, uint64_t a17, unsigned int a18, int a19)
{
  v22 = 1317436891 * ((((&a14 | 0xE8955CB6) ^ 0xFFFFFFFE) - (~&a14 | 0x176AA349)) ^ 0xA7693B3F);
  a18 = 1594819192 - v22;
  a19 = (v21 + 953) ^ v22;
  a16 = &a10;
  a17 = v19;
  a15 = &a12;
  v23 = (*(v20 + 8 * (v21 ^ 0x2032)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) != 16257999) * (v21 - 482)) ^ v21)))(v23);
}

uint64_t sub_100117700()
{
  v2 = *(STACK[0x720] + 8);
  STACK[0x758] = *(v1 + 8 * (v0 - 5373));
  return sub_10012D9EC(v2);
}

uint64_t sub_10011773C()
{
  v3 = (v0 - 8486) | 0x104;
  STACK[0xA68] = v1;
  v4 = STACK[0x7C0];
  STACK[0xA70] = STACK[0x7C0];
  return (*(v2 + 8 * (((v1 - v4 > 9) * (((v3 - 1156) | 0x106) + ((v3 + 100243927) & 0xFA066B6E) + 4005)) ^ v3)))();
}

uint64_t sub_1001177B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v26 = (((&a17 | 0x23795708) - (&a17 & 0x23795708)) ^ 0x7B10846A) * v23;
  a19 = a14;
  a20 = &a12;
  a18 = v26 - 813528954;
  a21 = -654855621 - v26;
  a22 = v26 + v22 + 1674576691;
  v27 = (*(v24 + 8 * (v22 + 7185)))(&a17);
  return (*(v24 + 8 * ((176 * (a17 != v25 + ((v22 - 210) ^ 0x28B) - 2606)) ^ v22)))(v27);
}

uint64_t sub_10011786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v66 - 224) = (v64 - 2140797856) ^ (914963389 * ((-2019020743 - ((v66 - 232) | 0x87A83039) + ((v66 - 232) | 0x7857CFC6)) ^ 0x54AB7EBD));
  v68 = (*(v67 + 8 * (v64 + 7892)))(v66 - 232);
  *v65 = *(v66 - 232) ^ 0xAC;
  return (*(a64 + 8 * ((((((v64 - 1175771103) & 0x4614F3DC) - 807019249) & 0x301A0A6A) - 2627) ^ (v64 - 1175771103) & 0x4614F3DC)))(v68);
}

uint64_t sub_100117964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x92E]) = v63;
  LODWORD(STACK[0x330]) = v63;
  return sub_100123DD4(a1, a63 - 2216, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1001179D4()
{
  v2 = STACK[0x7C0];
  STACK[0x4B8] = STACK[0x7C0];
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 104)) & 1) * ((v0 - 4569) ^ 0x487)) ^ v0)))();
}

uint64_t sub_100117B84(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = *(v6 + a5 + 16);
  v9 = (a2 + a5);
  *(v9 - 1) = *(v6 + a5);
  *v9 = v8;
  return (*(v7 + 8 * (((v5 == a5) * a4) ^ a3)))();
}

uint64_t sub_100117BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = 1317436891 * ((((&a14 | 0xAB8FD060) ^ 0xFFFFFFFE) - (~&a14 | 0x54702F9F)) ^ 0xE473B7E9) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((2778 * (a15 == v17)) ^ v18)))(v19);
}

uint64_t sub_100117C7C()
{
  v3 = (((2 * v1) & 0x6FEFF9DEF3BBBFEELL) + (v1 ^ 0xF7F7FCEF79DDDFF7) + v0 + 0x808031086222009);
  v4 = (v3[1] << ((v2 - 123) ^ 0xC8u)) | (*v3 << 56) | (v3[2] << 40) | (v3[3] << 32) | (v3[4] << 24) | (v3[5] << 16) | (v3[6] << 8) | v3[7];
  STACK[0x748] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_100117D3C();
}

uint64_t sub_100117D50@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x614]) = 16257999;
  STACK[0x8A8] = STACK[0x458];
  return (*(v1 + 8 * ((13558 * (LODWORD(STACK[0x614]) == ((((a1 - 1241206287) & 0x49FB5FEB) + 635) ^ 0xF80989))) ^ (((a1 - 1241206287) & 0x49FB5FEB) - 911))))();
}

uint64_t sub_100117E4C()
{
  v2 = (*(v1 + 8 * (v0 + 4238)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x400];
  STACK[0x750] = v2;
  return (*(v3 + 8 * (((v2 != 0) * ((v0 ^ 0x3134) + (v0 ^ 0x22D) - 15152)) ^ v0)))();
}

void sub_100117EB8(uint64_t a1@<X8>)
{
  v3[a1] = v1;
  v4 = a1 + v1 + 1 - ((2 * (a1 + v1 + 1)) & 0x1BBA) + 3549;
  *v3 = (v4 >> (v2 ^ 0x75)) ^ 0xD;
  v3[1] = v4 ^ 0xDD;
  ++v3[v3[2] + 3];
  sub_1000DC1A4();
}

void sub_100117F18(id a1)
{
  v1 = *(&off_1003E6550 + ((-85 * (dword_100403088 ^ 0xDF ^ dword_1004033E0)) ^ byte_100369560[byte_100382C10[(-85 * (dword_100403088 ^ 0xDF ^ dword_1004033E0))] ^ 0xDD]) - 68);
  v2 = *(v1 - 4);
  v3 = *(&off_1003E6550 + (byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 + v2) ^ 0xDF))] ^ 0xE2] ^ (-85 * ((dword_1004033E0 + v2) ^ 0xDF))) + 171);
  v4 = v2 - &v9 + *v3;
  *(v1 - 4) = 2054362027 * v4 + 0x1FC86B74B1533AF5;
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v7 = 0;
  v8 = 4;
  LODWORD(v3) = 2054362027 * ((*v3 - *(v1 - 4)) ^ 0x3EF64BDF);
  v5 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + dword_100403088) ^ 0xDF)) ^ byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 + dword_100403088) ^ 0xDF))] ^ 0xB1]) + 234) - 8;
  v6 = *&v5[8 * ((98 * ((*&v5[8 * (v3 ^ byte_100369760[byte_100382D10[v3] ^ 0xE9]) + 76776])(*(&off_1003E6550 + (v3 ^ byte_100369760[byte_100382D10[v3] ^ 0x71]) + 77) - 4, &v7, &v8, 0, 0) == 0)) ^ 0x1B3F)];
  __asm { BRAA            X8, X17 }
}

void sub_1001180F4(uint64_t a1)
{
  v1 = 914963389 * (((a1 ^ 0x43971FA1 | 0xF937576B) - ((a1 ^ 0x43971FA1) & 0xF937576B)) ^ 0x965CF9B1);
  __asm { BRAA            X10, X17 }
}

void Ehn34khqq1jgEJw()
{
  v0 = *(&off_1003E6550 + ((-85 * (dword_100403510 ^ 0xDF ^ dword_1004033E0)) ^ byte_100369760[byte_100382D10[(-85 * (dword_100403510 ^ 0xDF ^ dword_1004033E0))] ^ 0xB1]) + 228);
  v1 = *(v0 - 4);
  v2 = *(&off_1003E6550 + (byte_10037A9B0[byte_100373AD0[(-85 * (v1 ^ dword_1004033E0 ^ 0xDF))] ^ 0x67] ^ (-85 * (v1 ^ dword_1004033E0 ^ 0xDF))) + 143);
  v3 = (*v2 + v1) ^ &v5;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0xD5882259) + (~v6 | 0x2A77DDA6)) ^ 0xE79379C8);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + dword_100403510) ^ 0xDF)) ^ byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 + dword_100403510) ^ 0xDF))] ^ 0xD9]) + 49) - 8;
  (*&v4[8 * (v2 ^ byte_10037A9B0[byte_100373AD0[v2] ^ 0x9B]) + 76504])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_100118504()
{
  LODWORD(STACK[0x534]) = v0;
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v1;
  JUMPOUT(0x100151B6CLL);
}

uint64_t sub_100118560@<X0>(int a1@<W8>)
{
  STACK[0x410] = *(v5 + 8 * a1);
  STACK[0x600] = v1;
  LODWORD(STACK[0x60C]) = v4;
  v6 = STACK[0x770];
  STACK[0x448] = &STACK[0xBB0] + STACK[0x770];
  STACK[0x770] = v6 + 32;
  STACK[0x508] = v3;
  STACK[0x488] = 0;
  STACK[0x530] = 0;
  STACK[0x5A8] = 0;
  LODWORD(STACK[0x564]) = 197499219;
  LODWORD(STACK[0x5C4]) = 0;
  STACK[0x8B0] = 0;
  STACK[0x718] = 0;
  LODWORD(STACK[0x7EC]) = 197499219;
  v7 = (*(v5 + 8 * (v2 ^ 0x477)))();
  if (v3)
  {
    v8 = v4 == ((v2 + 1355432825) & 0xAF35BEAF) - 9248;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(STACK[0x400] + 8 * ((1005 * (((v2 - 76) ^ v9) & 1)) ^ v2)))(v7);
}

uint64_t sub_10011862C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v24 = 1875091903 * (((&a15 | 0x6FA92371) - (&a15 & 0x6FA92371)) ^ 0x59DCA0F2);
  a18 = a13;
  a16 = (v21 ^ 0xF81FB7AF) + v24 + ((((v23 - 1208) ^ 0x4BE) - 264281498) & (2 * v21)) + 670891771;
  a17 = v24 + v23 + 4398;
  (*(v22 + 8 * (v23 ^ 0x2953)))(&a15);
  v25 = 1824088897 * (((~&a15 & 0x64C95B26) - (~&a15 | 0x64C95B27)) ^ 0x3CA08845);
  a17 = (v20 ^ 0x5FF6FBAA) + ((2 * v20) & 0xBFEDF754) - v25 - 290591008;
  a15 = v25 + v23 + 431;
  a18 = v19;
  a19 = a13;
  v26 = (*(v22 + 8 * (v23 ^ 0x2961)))(&a15);
  return (*(v22 + 8 * ((7152 * (a16 == 16257999)) ^ v23)))(v26);
}

uint64_t sub_1001187D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x3F8];
  v74 = STACK[0x878];
  v75 = 1824088897 * ((((v72 - 232) | 0x22F98343) - ((v72 - 232) & 0x22F98343)) ^ 0x7A905021);
  *(v72 - 216) = v75 - 125652507;
  *(v72 - 212) = 744414361 - v75 + a71;
  *(v72 - 224) = a39;
  *(v72 - 208) = 1461241534 - v75;
  *(v72 - 200) = v74;
  *(v72 - 192) = v73;
  v76 = (*(a72 + 8 * (a71 + 3618)))(v72 - 232);
  v77 = *(v72 - 232);
  LODWORD(STACK[0x960]) = v77;
  return (*(a72 + 8 * (((v77 == 16257999) * (((a71 + 2503) ^ 0x2371) + 2265)) ^ (a71 - 54))))(v76);
}

uint64_t sub_100118970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20)
{
  v26 = 1875091903 * ((2 * (&a17 & 0x24A97048) - &a17 - 615084110) ^ 0xED230C31);
  a18 = (v23 ^ 0xFD3CB6AA) + ((2 * v23) & 0xFA796D54) + 585105408 + v26;
  a19 = v25 + 574 + v26;
  a20 = a12;
  (*(v24 + 8 * (v25 + 2495)))(&a17);
  v27 = 1875091903 * ((2 * (&a17 & 0x3949B9B8) - &a17 - 961132989) ^ 0xF0C3C5C0);
  a20 = a12;
  a18 = (HIDWORD(v22) ^ 0xE9FFF7AF) + v27 + ((v25 - 738208912) & (2 * HIDWORD(v22))) + 907853563;
  a19 = v25 + 574 + v27;
  (*(v24 + 8 * (v25 + 2495)))(&a17);
  v28 = 1875091903 * ((&a17 + 452748195 - 2 * (&a17 & 0x1AFC63A3)) ^ 0x2C89E020);
  a20 = a12;
  a18 = (v22 ^ 0x221FB6EE) + ((2 * v22) & 0x443F6DDC) - 33751108 + v28;
  a19 = v25 + 574 + v28;
  (*(v24 + 8 * (v25 ^ 0x3E43)))(&a17);
  v29 = 1875091903 * ((2 * (&a17 & 0x777101D0) - &a17 - 2003894740) ^ 0xBEFB7DAF);
  a18 = (v21 ^ 0x251EBEBE) + ((2 * v21) & 0x4A3D7D7C) - 84019220 + v29;
  a19 = v25 + 574 + v29;
  a20 = a12;
  (*(v24 + 8 * (v25 ^ 0x3E43)))(&a17);
  v30 = 1875091903 * ((2 * (&a17 & 0x2BB6D840) - &a17 - 733403208) ^ 0xE23CA43B);
  a20 = a12;
  a18 = v30 + 538752682;
  a19 = v25 + 574 + v30;
  v31 = (*(v24 + 8 * (v25 + 2495)))(&a17);
  return (*(v24 + 8 * ((2035 * (a17 == v20)) ^ v25)))(v31);
}

void CdfajkOy32ff()
{
  v0 = *(&off_1003E6550 + ((-85 * (dword_100403400 ^ 0xDF ^ dword_1004033E0)) ^ byte_100369760[byte_100382D10[(-85 * (dword_100403400 ^ 0xDF ^ dword_1004033E0))] ^ 0xD9]) - 41);
  v1 = *(v0 - 4);
  v2 = *(&off_1003E6550 + (byte_100369760[byte_100382D10[(-85 * (v1 ^ dword_1004033E0 ^ 0xDF))] ^ 0xE2] ^ (-85 * (v1 ^ dword_1004033E0 ^ 0xDF))) + 171);
  v3 = v1 ^ &v5 ^ *v2;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((-440779525 - (v6 | 0xE5BA3CFB) + (v6 | 0x1A45C304)) ^ 0x285E9894);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_100403400) ^ 0xDF)) ^ byte_10037A9B0[byte_100373AD0[(-85 * ((dword_1004033E0 - dword_100403400) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v4[8 * (v2 ^ byte_100369760[byte_100382D10[v2] ^ 0xD9]) + 75248])(v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100118ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x688];
  v74 = STACK[0x760];
  v75 = 1824088897 * ((v72 + 145189174 - 2 * ((v72 - 232) & 0x8A76A1E)) ^ 0x50CEB97C);
  *(v72 - 224) = STACK[0xB08];
  *(v72 - 208) = 1461241535 - v75;
  *(v72 - 200) = v74;
  *(v72 - 192) = v73;
  *(v72 - 216) = v75 - 1304320635;
  *(v72 - 212) = 744414353 - v75 + a71;
  v76 = (*(v71 + 8 * (a71 + 3610)))(v72 - 232);
  v77 = *(v72 - 232);
  LODWORD(STACK[0x98C]) = v77;
  return (*(v71 + 8 * (((v77 == (((a71 - 167) | 0x811) ^ 0xF80CFA)) * ((a71 + 1414888498) & 0xABAA6F3A ^ 0x301)) ^ (a71 - 311))))(v76);
}

uint64_t sub_100118FC4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = LOWORD(STACK[0x9E6]);
  if (v67 == 17168)
  {
    goto LABEL_4;
  }

  if (v67 == 33980)
  {
    v69 = STACK[0x5B0];
    STACK[0x558] = v64;
    LODWORD(STACK[0x854]) = a1;
    return (*(v66 + 8 * (((v69 + v65 == 0) * (((a64 - 1118083901) & 0x42A4977F) - 5127)) | (a64 - 251))))();
  }

  v68 = a64;
  if (v67 == 20706)
  {
LABEL_4:
    STACK[0x558] = v64;
    v68 = a64;
  }

  STACK[0x4C8] = 0;
  LODWORD(STACK[0x854]) = 197499219;
  return (*(v66 + 8 * (((*STACK[0x408] == 0) * (((((v68 - 5643) | 0x1807) - 6166) ^ 0xFFFFFACB) + ((v68 - 5643) | 0x1807) - 5433)) | (v68 - 5643) | 0x1807)))();
}

uint64_t sub_100119108()
{
  STACK[0x968] = v1;
  v3 = STACK[0x3A0];
  STACK[0x970] = STACK[0x3A0];
  return (*(v2 + 8 * (((v1 - v3 > (v0 - 6868) - 379) * ((v0 - 1027976586) & 0x3D459B7B ^ 0x37C7)) ^ v0)))();
}

void sub_10011916C(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1710126949 * ((a1 & 0x4A7829F3 | ~(a1 | 0x4A7829F3)) ^ 0x879C8D9C));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100119234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v48 = a6 - 6299;
  v49 = (a6 - 3449);
  v50 = *(v47 + 8 * (((v49 ^ (a8 < ((2 * v48) ^ 0x99Eu))) & 1 | (8 * ((v49 ^ (a8 < ((2 * v48) ^ 0x99Eu))) & 1))) ^ v48));
  return v50(a1, a2, a3, a4, a5, v49, v50, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

void LLb3qVEd()
{
  v0 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_100403550) ^ 0xDF)) ^ byte_10037A9B0[byte_100373AD0[(-85 * ((dword_1004033E0 - dword_100403550) ^ 0xDF))] ^ 0x6D]) + 177);
  v1 = -85 * ((dword_1004033E0 - *v0) ^ 0xDF);
  v2 = *(&off_1003E6550 + (byte_10037A9B8[(byte_100373AD8[v1 - 8] ^ 0x9B) - 8] ^ v1) + 128);
  v3 = (*v2 ^ *v0) - &v5;
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6 = 476323082 - 1710126949 * ((&v6 & 0xB61F5917 | ~(&v6 | 0xB61F5917)) ^ 0x7BFBFD78);
  LOBYTE(v2) = -85 * ((*v2 - *v0) ^ 0xDF);
  v4 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 - dword_100403550) ^ 0xDF)) ^ byte_100369760[byte_100382D10[(-85 * ((dword_1004033E0 - dword_100403550) ^ 0xDF))] ^ 0xB1]) + 234) - 8;
  (*&v4[8 * (byte_10036976C[(byte_100382D1C[v2 - 12] ^ 0xB1) - 12] ^ v2) + 76728])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100119578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  if (a9 == v23 + 925645957)
  {
    v25 = -654855621;
  }

  else
  {
    v25 = 1032869496;
  }

  v26 = ((2 * (&a16 & 0x225522E8) - &a16 + 1571478802) ^ 0x5C30E70) * v21;
  a20 = v25 - v26;
  a21 = v26 + v24 + 1674571781;
  a18 = a12;
  a19 = &a14;
  a17 = v26 - 692751275;
  v27 = (*(v22 + 8 * (v24 + 2275)))(&a16);
  return (*(v22 + 8 * (((a16 == 16257999) * (222 * (v24 ^ 0x1CAC) + 12551)) ^ v24)))(v27);
}

uint64_t sub_100119724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v62 = STACK[0xA70];
  v63 = STACK[0xA40];
  STACK[0x290] = ((STACK[0xA70] + 4) ^ 0x6EEB7373FE7FF71FLL) - 0x8A831024E005309 + ((2 * (STACK[0xA70] + 4)) & 0xDDD6E6E7FCFFEE3ELL);
  v64 = STACK[0xA90];
  STACK[0x280] = ((((v76 - 334425596) & 0x13EEFEBCu) + 1315 + STACK[0xA90] - 6087) ^ 0x76DF63FFBEFFEF9FLL) - 0x109C218E0E804B89 + ((2 * (((v76 - 334425596) & 0x13EEFEBCu) + 1315 + STACK[0xA90] - 6087)) & 0xEDBEC7FF7DFFDF3ELL);
  STACK[0x270] = ((v63 + 4) ^ 0xFE6347F3F67FB71FLL) + 0x67DFFA7DB9FFECF7 + ((2 * (v63 + 4)) & 0xFCC68FE7ECFF6E3ELL);
  v65 = STACK[0xAB0];
  STACK[0x260] = ((STACK[0xAB0] + 4) ^ 0x6E536371BE7FB53FLL) - 0x81021000E001129 + ((2 * (STACK[0xAB0] + 4)) & 0xDCA6C6E37CFF6A7ELL);
  v66 = STACK[0xAD0];
  STACK[0x250] = ((STACK[0xAD0] + 4) ^ 0xF74FFE7DFDFFBFF6) + 0x6EF343F3B27FE420 + ((2 * (STACK[0xAD0] + 4)) & 0xEE9FFCFBFBFF7FECLL);
  v67 = STACK[0xAF0];
  STACK[0x240] = ((STACK[0xAF0] + 4) ^ 0x7FDBF6F3B77FA51FLL) - 0x1998B48207000109 + ((2 * (STACK[0xAF0] + 4)) & 0xFFB7EDE76EFF4A3ELL);
  v68 = STACK[0xB00];
  STACK[0x230] = ((STACK[0xB00] + 4) ^ 0xFE6346F5B5FFB4B7) + 0x67DFFB7BFA7FEF5FLL + ((2 * (STACK[0xB00] + 4)) & 0xFCC68DEB6BFF696ELL);
  v69 = STACK[0xA30];
  STACK[0x220] = ((STACK[0xA30] + 4) ^ 0xE77F6F75BF7FBCD7) + 0x7EC3D2FBF0FFE73FLL + ((2 * (STACK[0xA30] + 4)) & 0xCEFEDEEB7EFF79AELL);
  v70 = STACK[0xA20];
  STACK[0x210] = ((STACK[0xA20] + 4) ^ 0xFECFDBF1BE7FBDF6) + 0x6773667FF1FFE620 + ((2 * (STACK[0xA20] + 4)) & 0xFD9FB7E37CFF7BECLL);
  v71 = STACK[0xA10];
  STACK[0x200] = ((STACK[0xA10] + 4) ^ 0xE6DFF379B3FFAF56) + 0x7F634EF7FC7FF4C0 + ((2 * (STACK[0xA10] + 4)) & 0xCDBFE6F367FF5EACLL);
  v72 = STACK[0xA00];
  v73 = STACK[0xB58];
  v84 = ((v67 + 6) ^ 0xF34EFFFFFDFFF3FFLL) + 0x6EBFBFB9FAFBFD3ALL + ((2 * (v67 + 6)) & 0xE69DFFFFFBFFE7FELL);
  v83 = ((STACK[0x9F0] + 6) ^ 0xFB3EBFFDFFFBF7B9) + 0x66CFFFBBF8FFF980 + ((2 * (STACK[0x9F0] + 6)) & 0xF67D7FFBFFF7EF72);
  v82 = ((STACK[0xB58] + 6) ^ 0x627EBFB9FEFFF1BBLL) - 0x70000006040082 + ((2 * (STACK[0xB58] + 6)) & 0xC4FD7F73FDFFE376);
  STACK[0x2A0] = v63 + 10;
  v81 = v67 + 10;
  v77 = ((v67 + 10) ^ 0xF2FEFFBBF8FBFB7DLL) + 0x6F0FBFFDFFFFF5BCLL + ((2 * (v67 + 10)) & 0xE5FDFF77F1F7F6FALL);
  v80 = STACK[0xA38];
  STACK[0x3B0] = STACK[0x758];
  STACK[0x330] = STACK[0x5B0];
  STACK[0x320] = STACK[0x920];
  STACK[0x310] = STACK[0x890];
  STACK[0x300] = STACK[0x870];
  STACK[0x3A0] = STACK[0x3F8];
  v74 = STACK[0xAE8];
  STACK[0x390] = STACK[0x3D0];
  v79 = STACK[0xAF8];
  STACK[0x2F0] = STACK[0x480];
  STACK[0x2E0] = STACK[0x6F8];
  STACK[0x2D0] = STACK[0x438];
  STACK[0x2C0] = STACK[0x4B0];
  STACK[0x2B0] = STACK[0x430];
  STACK[0x380] = STACK[0x810];
  v78 = STACK[0xB50];
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x9D2]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x9B6]);
  LODWORD(STACK[0x350]) = LOWORD(STACK[0x9A6]);
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x966]);
  return sub_1000E78B0(0xF99C96608AFF80DELL, 0x6FEAED2DD55A32A7, 0xC3E67D93F2F32D7, v72, 0x1D5EE00E4A8A2CA0, 0x84D53DF2213B4FA4, 0xF29EBFF9FEFFF1C0, 0xF1508FF8DABAE9B0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, ((v73 + 10) ^ 0xEF3EBFFBFBFFF1FBLL) + 0x72CFFFBDFCFBFF3ELL + ((2 * (v73 + 10)) & 0xDE7D7FF7F7FFE3F6), ((v68 + 10) ^ 0x738EBFBBF8FBFFFDLL) - 0x1180000200000EC4 + ((2 * (v68 + 10)) & 0xE71D7F77F1F7FFFALL), v77, ((v63 + 10) ^ 0xE3AEBFFBF9FFFF7BLL) + 0x7E5FFFBDFEFBF1BELL + ((2 * (v63 + 10)) & 0xC75D7FF7F3FFFEF6), v78, v79, v74, v80, v73 + 10, v68 + 10, a34, v81, a36, v82, a38, v83, a40, ((v72 + 6) ^ 0xEA2FFFBBFAFFFB7BLL) + 0x77DEBFFDFDFBF5BELL + ((2 * (v72 + 6)) & 0xD45FFF77F5FFF6F6), a42, ((v71 + 6) ^ 0xFE1EBFBFF9FFFDFDLL) + 0x63EFFFF9FEFBF33CLL + ((2 * (v71 + 6)) & 0xFC3D7F7FF3FFFBFALL), a44, ((v70 + 6) ^ 0x7B5EFFBFFEFFFB79) - 0x1950400606040A40 + ((2 * (v70 + 6)) & 0xF6BDFF7FFDFFF6F2), a46, ((v68 + 6) ^ 0x6EDFBFBDF9FBF93FLL) - 0xCD1000401000806 + ((2 * (v68 + 6)) & 0xDDBF7F7BF3F7F27ELL), a48, v84, a50, a51, a52, ((v69 + 6) ^ 0xFA7EFFB9FDFBF33FLL) + 0x678FBFFFFAFFFDFALL + ((2 * (v69 + 6)) & 0xF4FDFF73FBF7E67ELL), a54, ((v66 + 6) ^ 0xEB7EBFFDFFFFF3B9) + 0x768FFFBBF8FBFD80 + ((2 * (v66 + 6)) & 0xD6FD7FFBFFFFE772), a56, ((v65 + 6) ^ 0xEA7FFFB9FEFBFBFFLL) + 0x778EBFFFF9FFF53ALL + ((2 * (v65 + 6)) & 0xD4FFFF73FDF7F7FELL), a58, ((v64 + 6) ^ 0x6F6FFFBFF9FBFF79) - 0xD61400601000E40 + ((2 * (v64 + 6)) & 0xDEDFFF7FF3F7FEF2), a60, ((v63 + 6) ^ 0xF22FFFFDFEFFFFBDLL) + 0x6FDEBFBBF9FBF17CLL + ((2 * (v63 + 6)) & 0xE45FFFFBFDFFFF7ALL), a62, ((v62 + 6) ^ 0x6B1EBFB9FDFFFF79) - 0x910000005040E40 + ((2 * (v62 + 6)) & 0xD63D7F73FBFFFEF2));
}

uint64_t sub_100119840()
{
  v5 = v2 - 1;
  *(v0 + v5) = *(v3 + v5) - (((-113 * (v1 ^ 0x45)) ^ 0xD4) & (2 * *(v3 + v5))) + 60;
  return (*(v4 + 8 * ((6230 * (v5 == 0)) ^ v1)))();
}

void sub_1001198F0(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (914963389 * (((a1 | 0x9F65DC51) - (a1 & 0x9F65DC51)) ^ 0xB3996D2A));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001199A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a12 = &a10;
  a14 = v15 + 1317436891 * ((((2 * &a12) | 0x1D87914) - &a12 + 2132001654) ^ 0x30EFA4FC) + 949;
  v16 = (*(v14 + 8 * (v15 ^ 0x3980u)))(&a12);
  return (*(v14 + 8 * (((a13 == (((v15 + 282133471) | 0x492E5803) ^ 0x59076BC8)) * ((v15 - 4220) ^ 0x32E0)) ^ v15)))(v16);
}

uint64_t sub_100119AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = v3 ^ 0xA9 ^ *(a2 + v5);
  return (*(v4 + 8 * ((196 * (v5 != 0)) ^ v3 ^ 0xC4)))();
}

uint64_t sub_100119AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t a14, uint64_t a15)
{
  v22 = 1875091903 * ((&a12 - 1708875746 - 2 * (&a12 & 0x9A24A01E)) ^ 0xAC51239D);
  HIDWORD(a12) = (v20 ^ 0xBB9CB6AF) + ((2 * v20) & 0x77396D5E) + 1686110203 + v22;
  a13 = v22 + 7724;
  a14 = a10;
  (*(v21 + 77160))(&a12);
  v23 = 1875091903 * (((&a12 ^ 0x3EAB618C | 0xF89EB463) - (&a12 ^ 0x3EAB618C) + ((&a12 ^ 0x3EAB618C) & 0x7614B9C)) ^ 0xF040566C);
  HIDWORD(a12) = (HIDWORD(v19) ^ 0x329FBFBF) + ((2 * HIDWORD(v19)) & 0x653F7F7E) - 310577429 + v23;
  a13 = v23 + 7724;
  a14 = a10;
  (*(v21 + 77160))(&a12);
  v24 = 1875091903 * (((&a12 | 0xFC0A3A39) - &a12 + (&a12 & 0x3F5C5C0)) ^ 0xCA7FB9BA);
  HIDWORD(a12) = (v19 ^ 0xBF3FFFFF) + ((2 * v19) & 0x7E7FFFFE) + 1625077419 + v24;
  a13 = v24 + 7724;
  a14 = a10;
  (*(v21 + 77160))(&a12);
  a13 = 1824088897 * ((&a12 - 237885721 - 2 * (&a12 & 0xF1D226E7)) ^ 0xA9BBF585) + 2305;
  a12 = v18;
  a14 = a10;
  (*(v21 + 76720))(&a12);
  v25 = 1875091903 * (((&a12 | 0x7050360E) - &a12 + (&a12 & 0x8FAFC9F0)) ^ 0x4625B58D);
  a14 = a10;
  HIDWORD(a12) = (v17 ^ 0x69BDF7BE) + ((2 * v17) & 0xD37BEF7C) - 1235304724 + v25;
  a13 = v25 + 7724;
  (*(v21 + 77160))(&a12);
  v26 = 1824088897 * ((&a12 & 0x7A544FE0 | ~(&a12 | 0x7A544FE0)) ^ 0xDDC2637D);
  LODWORD(a12) = v26 + 3757;
  a13 = (v16 ^ 0xDFADEE8A) + ((2 * v16) & 0xBF5BDD14) - v26 + 1861680128;
  a14 = v15;
  a15 = a10;
  v27 = (*(v21 + 77048))(&a12);
  return (*(v21 + 8 * ((55 * (HIDWORD(a12) == 16257999)) ^ 0x149Bu)))(v27);
}

void PhUojZmspd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    v11 = a11 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100119EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x598] + 24);
  STACK[0x698] = v5;
  return (*(v4 + 8 * (((v5 == 0) * (((v3 + 7468) | 0x20) + ((v3 + 2878) | 0x449) - 14969)) | v3)))(a1, a2, a3, 16215976);
}

void sub_100119F74(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x10004AC98);
}

uint64_t sub_100119F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W6>, uint64_t a5@<X8>)
{
  v17 = v12 + 32;
  v5 = (((v13 ^ (a4 + 3583)) * v15 + a2) ^ v17) + v11;
  v6 = *(a5 + v5 - 15);
  v7 = *(a5 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v16 + 8 * (((v14 == v17) * a3) ^ (v13 + v10))))();
}

uint64_t sub_10011A020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, unint64_t a3@<X8>)
{
  STACK[0x220] = a3;
  v8 = (v6 - a1 + a2 - v3 - v4) > 0xF;
  return (*(v7 + 8 * ((v8 | (16 * v8)) ^ v5)))();
}

uint64_t sub_10011A0BC()
{
  *(v3 - 224) = (v0 - 2140802201) ^ (914963389 * ((((v3 - 232) | 0x4528311E) - (v3 - 232) + ((v3 - 232) & 0xBAD7CEE0)) ^ 0x69D48065));
  v4 = (*(v2 + 8 * (v0 + 3547)))(v3 - 232);
  *(v1 + 8) = *(v3 - 232) ^ (v0 - 31);
  return (*(v2 + 8 * (v0 - 297)))(v4);
}

uint64_t sub_10011A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  (*(a7 + 8 * (a8 + 8245)))(v8);
  result = a1;
  *(a1 + 4) = v9;
  return result;
}

uint64_t sub_10011A248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = v70 - 1;
  v81 = __ROR8__((v76 + v80) & 0xFFFFFFFFFFFFFFF8, 8);
  v82 = ((v81 - 0x6AF7234D0CC131D5) | a8) - ((v81 - 0x6AF7234D0CC131D5) | v67) + v67;
  v83 = __ROR8__(v82 ^ v66, 8);
  v84 = v82 ^ v71;
  v85 = (v83 + v84) ^ 0xE49D77DF873DBF7ELL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = __ROR8__(((v72 | (2 * (v87 + v86))) - (v87 + v86) + a2) ^ a1, 8);
  v89 = ((v72 | (2 * (v87 + v86))) - (v87 + v86) + a2) ^ a1 ^ __ROR8__(v86, 61);
  v90 = ((a4 & (2 * (v88 + v89))) - (v88 + v89) + v68) ^ a5;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ v65;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0x64C31C027084DE6CLL;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (v69 - ((v96 + v95) | v69) + ((v96 + v95) | a3)) ^ v75;
  *(v79 + v80) = *(v73 + (v80 & 0xF)) ^ *(v76 + v80) ^ *((v80 & 0xF) + a6 + 2) ^ ((v80 & 0xF) * v77) ^ *((v80 & 0xF) + a7 + 1) ^ (((__ROR8__(v97, 8) + (v97 ^ __ROR8__(v95, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v76 + v80) & 7)));
  return (*(a65 + 8 * (((v80 == 0) * v78) ^ (v74 - 5031))))();
}

void sub_10011A3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x350] = v71 + 56;
  *&STACK[0x300] = vdupq_n_s64(0x38uLL);
  *&STACK[0x310] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3A0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x220] = vdupq_n_s64(0x3F2C2F035CDE3F7EuLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x893A92C7CC372753);
  *&STACK[0x2F0] = vdupq_n_s64(0xC0D3D0FCA321C081);
  *&STACK[0x2C0] = vdupq_n_s64(0xC41AAC7C4B06DFA4);
  *&STACK[0x2D0] = vdupq_n_s64(0x217C775055C1560FuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x97AFA7879053DDDBLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x9DF2A9C1DA7C902ELL);
  *&STACK[0x280] = vdupq_n_s64(0x7010B40069EC0004uLL);
  *&STACK[0x290] = vdupq_n_s64(0x1FDE97FF2C27FFF6uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x330] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x260] = vdupq_n_s64(0x321FCFCE9C141D67uLL);
  *&STACK[0x270] = vdupq_n_s64(0x297302C53C357F1BuLL);
  *&STACK[0x210] = vdupq_n_s64(0xCDE0303163EBE298);
  *&STACK[0x240] = vdupq_n_s64(v73);
  *&STACK[0x250] = vdupq_n_s64(0x2835242ADE47B264uLL);
  *&STACK[0x230] = xmmword_100382EA0;
  LODWORD(STACK[0x200]) = a71 - 4803;
  *&STACK[0x320] = xmmword_100382E40;
  *&STACK[0x340] = vdupq_n_s64(v72);
  JUMPOUT(0x10011A660);
}

uint64_t sub_10011A71C()
{
  *(v4 - 224) = (v0 - 2140802193) ^ (((v4 + 2041100696 - 2 * ((v4 - 232) & 0x79A8BA80)) ^ 0x55540BFB) * v3);
  v5 = (*(v2 + 8 * (v0 ^ 0x3265)))(v4 - 232);
  *(v1 + 8) = *(v4 - 232) ^ 0xAC;
  return (*(v2 + 8 * ((v0 + 2396) ^ 0x27)))(v5);
}

uint64_t sub_10011A7D4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x66C]) = 16257999;
  STACK[0x8F8] = STACK[0x618];
  return (*(v1 + 8 * ((((a1 ^ 0x1126) == 835) * ((((a1 ^ 0x1126) + 766) | 0x1182) - 4487)) ^ a1 ^ 0x1126)))();
}

uint64_t sub_10011A83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v24 = v12 - 1;
  v25 = __ROR8__((v19 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 - 0x6AF7234D0CC131D5) | v23) - ((v25 - 0x6AF7234D0CC131D5) | v22) + v22;
  v27 = __ROR8__(v26 ^ a1, 8);
  v28 = v26 ^ a2;
  v29 = (v27 + v28) ^ v17;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(((a3 | (2 * (v31 + v30))) - (v31 + v30) + a5) ^ a6, 8);
  v33 = ((a3 | (2 * (v31 + v30))) - (v31 + v30) + a5) ^ a6 ^ __ROR8__(v30, 61);
  v34 = ((a7 & (2 * (v32 + v33))) - (v32 + v33) + v10) ^ v11;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x61459D2AF01F24F7;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x64C31C027084DE6CLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v21 - ((v40 + v39) | v21) + ((v40 + v39) | v20)) ^ v9;
  *(v18 + v24) = *(v15 + (v24 & 0xF)) ^ *(v19 + v24) ^ *((v24 & 0xF) + v16 + 2) ^ ((v24 & 0xF) * a4) ^ *((v24 & 0xF) + v13 + 1) ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v39, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v19 + v24) & 7)));
  return (*(a9 + 8 * (((v24 != 0) * a8) ^ (v14 - 2901))))();
}

uint64_t sub_10011AA40()
{
  v2[47] = v2[15] - ((2 * v2[15]) & 0x78) + 60;
  v2[46] = v2[14] - ((2 * v2[14]) & 0x78) + 60;
  v2[45] = v2[13] - ((2 * v2[13]) & 0x78) + 60;
  v2[44] = v2[12] - ((2 * v2[12]) & 0x78) + 60;
  v2[43] = v2[11] - ((2 * v2[11]) & 0x78) + 60;
  v2[42] = v2[10] - ((2 * v2[10]) & 0x78) + 60;
  v2[41] = v2[9] - ((2 * v2[9]) & 0x78) + 60;
  v2[40] = v2[8] - ((2 * v2[8]) & 0x78) + 60;
  v2[39] = v2[7] - ((2 * v2[7]) & 0x78) + 60;
  v2[38] = v2[6] - ((2 * v2[6]) & 0x78) + 60;
  v2[37] = v2[5] - ((2 * v2[5]) & 0x78) + 60;
  v2[36] = v2[4] - ((2 * v2[4]) & 0x78) + 60;
  v2[35] = v2[3] - ((2 * v2[3]) & 0x78) + 60;
  v2[34] = v2[2] - ((2 * v2[2]) & 0x78) + 60;
  v2[33] = v2[1] - ((2 * v2[1]) & 0x78) + 60;
  *v0 = *v2 - ((2 * *v2) & 0x78) + 60;
  *(v5 - 224) = (v1 - 2140805427) ^ (((((v5 - 232) | 0xF1D2A1AB) - ((v5 - 232) & 0xF1D2A1AB)) ^ 0xDD2E10D0) * v4);
  v6 = (*(v3 + 8 * (v1 + 321)))(v5 - 232);
  *v2 = *(v5 - 232) ^ 0xAC;
  return (*(v3 + 8 * v1))(v6);
}

uint64_t sub_10011ACA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29)
{
  STACK[0x2E0] = *(v30 + 120);
  STACK[0x2E8] = &a12;
  *(v32 - 132) = (v29 + 324) ^ (33731311 * ((((v32 - 136) | 0x4B698267) - (v32 - 136) + ((v32 - 136) & 0xB4967D98)) ^ 0x729F4844));
  (*(v31 + 8 * (v29 ^ 0x2E31)))(v32 - 136);
  STACK[0x2E0] = a29;
  *(v32 - 120) = v29 - 2008441969 * ((v32 + 1626426635 - 2 * ((v32 - 136) & 0x60F14D93)) ^ 0x2868199D) + 2757;
  v33 = (*(v31 + 8 * (v29 + 6723)))(v32 - 136);
  return (*(v31 + 8 * ((155 * (((v29 - 1) ^ (*(v32 - 136) == ((v29 + 52609179) & 0xFCDD3FCF ^ 0xF8180C))) & 1)) ^ v29)))(v33);
}

uint64_t sub_10011ADE4()
{
  STACK[0x6A0] = 0;
  LODWORD(STACK[0x88C]) = v0;
  STACK[0x498] = *(v2 + 8 * (v1 - 1732));
  return sub_10011AE28();
}

uint64_t sub_10011AE28()
{
  STACK[0x7A0] = v1;
  STACK[0x768] = 0;
  LODWORD(STACK[0x48C]) = 270786407;
  LODWORD(STACK[0x774]) = v2;
  return (*(v4 + 8 * (((v3 == 0) * (v0 ^ 0x790 ^ (v0 - 393))) ^ v0)))();
}

uint64_t sub_10011AE8C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v4 + 8 * v2);
  v6 = *(v4 + 8 * ((((v1 - a1) < 0x10) * (v3 - 3480)) ^ v3));
  STACK[0x978] = v5;
  return v6(0x6A785729F20EEA42, 0xDBB8563E21D61BA0, 0x38403E00000281, 0x2047A9C1DE29E45FLL, 0x44520400020E41ELL, 0x499422456F36014CLL, 0xE1D2C7D2F6C07010, 0x6D6EFEEB143C2D7CLL);
}

uint64_t sub_10011AFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = a4 + v70;
  v81 = a4 + v70 + 9;
  v82 = __ROR8__(v81 & (a6 ^ 0xFFFFFFFFFFFFF3E5), 8);
  v83 = v82 - ((2 * v82 + 0x2A11B965E67D9C56) & v72) + v73;
  v84 = v83 ^ v74;
  v85 = v83 ^ v75;
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xE49D77DF873DBF7ELL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xF5A2F1B9B5D0B209;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x5963B6C555D97F1FLL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = ((v76 & (2 * (v92 + v91))) - (v92 + v91) + v77) ^ a1;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = a4 - 1;
  v96 = (__ROR8__(v93, 8) + v94) ^ 0x64C31C027084DE6CLL;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ v79;
  *(v80 + 9) = (((__ROR8__(v98, 8) + (v98 ^ __ROR8__(v97, 61))) ^ v78) >> (8 * (v81 & 7u))) ^ *(v71 + v95);
  return (*(a70 + 8 * ((12026 * (v95 == 0)) ^ a6)))();
}

uint64_t sub_10011B1E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>)
{
  STACK[0x3B0] = *(v5 + 8 * v3);
  STACK[0x950] = 0;
  return (*(v5 + 8 * (((STACK[0x950] < (((a3 - 3159) | 0x701u) ^ 0x17E3uLL)) * v4) ^ a3)))(0x5BBB73835736972BLL, 0x43E0E1A1BF0A5C84, a1, a2, 0x5E0F8F2F207AD1BELL, 177, 0xAC03202F7027203, 4294967128);
}

uint64_t sub_10011B31C@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x598];
  *v3 = 0x431A33AA2E6D965FLL;
  *(v3 + 8) = *(a1 + 108) + (((v1 - 4428) | 0x49) ^ 0xBC59A9A) - ((2 * *(a1 + 108)) & 0x178B32A6);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0x1F146D841;
  *(v3 + 32) = 197499223;
  *(v3 + 36) = 689955740;
  STACK[0x858] = v3;
  LODWORD(STACK[0x81C]) = 0;
  STACK[0x368] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x316E)))(128, 0x10800400FED9166);
  v5 = STACK[0x330];
  STACK[0x720] = v4;
  return (*(v5 + 8 * ((450 * (v4 == 0)) ^ v1)))();
}

void sub_10011BDD4()
{
  (*(v2 + 8 * (v1 ^ 0x324F)))();
  *(v0 + 24) = 0;
  JUMPOUT(0x10011BDF8);
}

uint64_t sub_10011BE38()
{
  v0.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v0.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return sub_10011BE54(v0);
}

uint64_t sub_10011BE54@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, int8x16_t a3@<Q0>)
{
  v10 = ~v7 + v3;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = v9 + v10;
  *(v13 - 15) = veorq_s8(v11, a3);
  *(v13 - 31) = veorq_s8(v12, a3);
  return (*(a1 + 8 * (((v7 + v6 - 3177 == v4) * v8) ^ v5)))();
}

uint64_t sub_10011BF30@<X0>(int a1@<W8>)
{
  v3 = a1 - 3706;
  v4 = (*(v1 + 8 * (a1 + 1070)))();
  v5 = 6 * (v3 ^ 0x10FF);
  STACK[0x628] = STACK[0x628] + (v5 ^ 0x198Fu) - 4930 - 571;
  return (*(v1 + 8 * ((6971 * (v2 == 16257999)) ^ v5)))(v4, 197499219);
}

uint64_t sub_10011C068()
{
  v0 = STACK[0x3E4];
  v1 = LOWORD(STACK[0x8BE]);
  STACK[0x7B8] = STACK[0x8C0];
  return (*(STACK[0x3E8] + 8 * ((11135 * (v1 == (((v0 + 2429) & 0xE7FD) + 15664))) ^ (v0 - 2531))))();
}

uint64_t sub_10011C244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = (v15 + 1542);
  v18 = STACK[0x370] == a14;
  STACK[0x3B0] = v17;
  return (*(v16 + 8 * (((v17 ^ 0x14D9) * v18) ^ v15)))(a12, 0x817DC7D3C629B1F2, 0xE1AFA7ACF6E0968ELL, STACK[0x3A0], 0x9508DCB2F33ECE2BLL, 0x8BBA1DD6A2E83279, v14, 0x61459D2AF01F24F7);
}

uint64_t sub_10011C374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, __int16 a17, char a18, int a19, int a20, char a21, uint64_t a22, int a23, unsigned int a24, uint64_t a25, char *a26, unsigned int a27, char *a28)
{
  a25 = a22;
  a26 = &a18;
  a28 = &a21;
  a27 = (v29 + 1305603623) ^ (1358806181 * (((&a23 | 0xED63E7E5) - &a23 + (&a23 & 0x129C1818)) ^ 0xD24C8B66));
  (*(v30 + 8 * (v29 ^ 0x344C)))(&a23);
  a24 = (v29 - 1282) ^ (33731311 * ((&a23 - 538875462 - 2 * (&a23 & 0xDFE169BA)) ^ 0xE617A399));
  a25 = a22;
  a26 = &a16;
  (*(v30 + 8 * (v29 ^ 0x34F7)))(&a23);
  a25 = a22;
  LODWORD(a26) = v29 - 2008441969 * ((2 * (&a23 & 0x5C4A6238) - &a23 + 599104964) ^ 0x6B2CC9CA) + 1151;
  v31 = (*(v30 + 8 * (v29 + 5117)))(&a23);
  return (*(v30 + 8 * (((a23 == v28) * (((v29 - 413) | 0x82) - 1162)) ^ v29)))(v31);
}

uint64_t sub_10011C4F8@<X0>(uint64_t a1@<X8>)
{
  v3 = (((53 * (v2 ^ 0xA55u) + 0x6EDFF6F7FDF64683) & (2 * v1)) + (v1 ^ 0xF76FFB7BFEFB2677) + a1 + 0x89004840104D989);
  v4 = (*v3 << 24) | (v3[1] << 16) | (v3[2] << 8);
  LODWORD(STACK[0x44C]) = (v4 | v3[3]) + 197499219 - 2 * ((v4 | v3[3]) & 0xBC5995F ^ v3[3] & 0xC);
  return sub_100170598();
}

uint64_t sub_10011C5A0(uint64_t a1)
{
  result = (*(*(&off_1003E6550 + (*(a1 + 12) - 1824088897 * ((a1 - 1187285120 - 2 * (a1 & 0xB93B7780)) ^ 0xE152A4E2) - 1624354567)) - 4))(*a1);
  *(a1 + 8) = (result ^ 0xC1FE3FEF) + 1056560096 + ((2 * result) & 0x83FC7FDE);
  return result;
}

uint64_t sub_10011C648()
{
  v9 = (v0 + 6840) ^ (((&v7 + 295814124 - 2 * (&v7 & 0x11A1C3EC)) ^ 0x49C8108E) * v2);
  v8 = v6;
  (*(v1 + 8 * (v0 ^ 0x206E)))(&v7);
  v9 = ((v0 ^ 0x1053) + 2793) ^ ((((&v7 | 0x7C356B0) - (&v7 & 0x7C356B0)) ^ 0x5FAA85D2) * v2);
  v8 = v5;
  (*(v1 + 8 * ((v0 ^ 0x1053) + 4059)))(&v7);
  return (v3 - 16257999);
}

void U4HBs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10011C888()
{
  v2 = *(STACK[0x7E8] + 24);
  STACK[0x3F8] = v2;
  return (*(v1 + 8 * (((v0 + 87) ^ (v2 == 0)) & 1 ^ v0)))();
}

uint64_t sub_10011C8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x470];
  STACK[0x818] = *(a4 + 8 * (v4 - 4681));
  return (*(a4 + 8 * (((v5 == 0) * ((v4 ^ 0x1543) - 283)) ^ (v4 + 2574))))();
}

uint64_t sub_10011C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, unsigned int a25)
{
  v28 = (((&a20 | 0x26B95A71) + (~&a20 | 0xD946A58E)) ^ 0x7ED08912) * v25;
  a21 = v28 - 1205195816;
  a22 = a14;
  a23 = &a18;
  a24 = -654855621 - v28;
  a25 = v28 + v27 + 1674574887;
  v29 = (*(v26 + 8 * (v27 + 5381)))(&a20);
  return (*(v26 + 8 * ((1487 * (a20 == (v27 ^ 0x11D) + (v27 ^ 0x6C5) + 16247787)) ^ v27)))(v29);
}

void sub_10011C9E0(uint64_t a1@<X8>)
{
  v9 = ((2 * a1) & 0x2CDE77BFFFF6F97ELL) + (a1 ^ 0x166F3BDFFFFB7CBFLL) + v1;
  v10 = (*(v9 - 0x166F3BDFFFFB7CBFLL) << 24) | (*(v9 + v4 - 0x166F3BDFFFFB92B4) << 16) | (*(v9 - 0x166F3BDFFFFB7CBDLL) << 8);
  v11 = (v10 | *(v9 - 0x166F3BDFFFFB7CBCLL)) + 197499219 - 2 * ((v10 | *(v9 - 0x166F3BDFFFFB7CBCLL)) & v5 ^ *(v9 - 0x166F3BDFFFFB7CBCLL) & 0xC);
  v12 = ((2 * (a1 + 4)) & 0x4B76EDF326D7F4EELL) + ((a1 + 4) ^ 0x65BB76F9936BFA77) + v1 - 0x65BB76F9936BFA77;
  v13 = (_byteswap_ushort(*v12) - 2 * (_byteswap_ushort(*v12) & 0x3E9E ^ *(v12 + 1) & 0xA) + 16023);
  switch(v13)
  {
    case 28242:
      STACK[0x568] = v1 + v3;
      STACK[0x608] = v2;
      (*(v8 + 8 * (((v11 == ((330 * (v7 ^ 0x15F9)) ^ 0xBC58A05)) * ((v7 + 1544565193) & 0xA3EFB87F ^ 0x1EDC)) ^ (v7 - 3089))))();
      break;
    case 47636:
      (*(v8 + 8 * (((((v7 - 236) | 0x14) ^ 0x153D) * (v6 == 197499227)) ^ (v7 - 3109))))();
      break;
    case 43494:
      (*(v8 + 8 * ((((v7 + 1714782216) & 0x99CA7F1F ^ 0x99C) * (v6 == 197499223)) ^ (v7 - 3109))))();
      break;
    default:
      sub_1001C6B84();
      break;
  }
}

uint64_t sub_10011CC54@<X0>(uint64_t a1@<X8>)
{
  STACK[0x870] = 0;
  STACK[0x648] = 0;
  STACK[0x540] = *(STACK[0x400] + 8 * (v2 ^ 0x33F6));
  return sub_100128BC0(a1);
}

uint64_t sub_10011CCD0()
{
  v1 = *(STACK[0x7C8] + 24);
  STACK[0x478] = v1;
  return (*(STACK[0x3E8] + 8 * ((2044 * (v1 != 0)) ^ v0)))();
}

uint64_t sub_10011CD18@<X0>(unint64_t a1@<X5>, unint64_t a2@<X6>, unint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v16 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v17 = vdupq_n_s64(0x38uLL);
  v18 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x3B0] = vdupq_n_s64(v7);
  *&STACK[0x3C0] = vdupq_n_s64(v15);
  *&STACK[0x390] = vdupq_n_s64(v8);
  *&STACK[0x3A0] = vdupq_n_s64(v6);
  *&STACK[0x370] = vdupq_n_s64(v12);
  *&STACK[0x380] = vdupq_n_s64(v9);
  *&STACK[0x350] = vdupq_n_s64(a1);
  *&STACK[0x360] = vdupq_n_s64(v14);
  *&STACK[0x330] = vdupq_n_s64(a2);
  *&STACK[0x340] = vdupq_n_s64(v13);
  v19 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v20 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v21 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x310] = vdupq_n_s64(0x52D1CFA255142C6CuLL);
  *&STACK[0x320] = vdupq_n_s64(0xA5A39F44AA2858D8);
  v22 = vdupq_n_s64(0x48FB24461747836FuLL);
  v23 = vdupq_n_s64(0xAB3042D228875C41);
  v24 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v25 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v26 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v27 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v28 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v29 = vdupq_n_s64(0xBCFFAF874FA44A5ALL);
  v30 = vdupq_n_s64(0xDE7FD7C3A7D2252DLL);
  *&STACK[0x300] = xmmword_100382E20;
  v31 = vdupq_n_s64(a3);
  v32 = STACK[0x3E8];
  STACK[0x3D0] = *(v4 + v10 - v11 - 8);
  v33.i64[0] = v4 + v10 - 7481 - v11 + ((v5 - 1851869525) & 0x6E615F34);
  v33.i64[1] = v4 + v10 - v11 - 6;
  v34.i64[0] = v4 + v10 - v11 - 1;
  v34.i64[1] = v4 + v10 - v11 - 2;
  v35.i64[0] = v4 + v10 - v11 - 3;
  v35.i64[1] = v4 + v10 - v11 - 4;
  v36.i64[0] = v4 + v10 - v11 - 7;
  v36.i64[1] = v4 + v10 - v11 - 8;
  v37.i64[0] = a4 + v10 - v11 + 5;
  v37.i64[1] = a4 + v10 - v11 + 4;
  v38.i64[0] = a4 + v10 - v11 + 9;
  v38.i64[1] = a4 + v10 - v11 + 8;
  v39 = vandq_s8(v36, v16);
  v40 = vandq_s8(v35, v16);
  v41 = vandq_s8(v34, v16);
  v42 = vandq_s8(v33, v16);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v18);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v18);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v18);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v18);
  v47 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), *&STACK[0x3C0]), v43), *&STACK[0x3B0]);
  v48 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v44, v44), *&STACK[0x3C0]), v44), *&STACK[0x3B0]);
  v49 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v45, v45), *&STACK[0x3C0]), v45), *&STACK[0x3B0]);
  v50 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v46, v46), *&STACK[0x3C0]), v46), *&STACK[0x3B0]);
  v51 = veorq_s8(v50, *&STACK[0x3A0]);
  v52 = veorq_s8(v49, *&STACK[0x3A0]);
  v53 = veorq_s8(v48, *&STACK[0x3A0]);
  v54 = veorq_s8(v47, *&STACK[0x3A0]);
  v55 = veorq_s8(v47, *&STACK[0x390]);
  v56 = veorq_s8(v48, *&STACK[0x390]);
  v57 = veorq_s8(v49, *&STACK[0x390]);
  v58 = veorq_s8(v50, *&STACK[0x390]);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v58);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v57);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v55);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v62, v62), *&STACK[0x380]), v62), *&STACK[0x370]), *&STACK[0x360]);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v61, v61), *&STACK[0x380]), v61), *&STACK[0x370]), *&STACK[0x360]);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v60, v60), *&STACK[0x380]), v60), *&STACK[0x370]), *&STACK[0x360]);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v59, v59), *&STACK[0x380]), v59), *&STACK[0x370]), *&STACK[0x360]);
  v67 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v68 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v69 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v70 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v71 = veorq_s8(v65, v69);
  v72 = veorq_s8(v64, v68);
  v73 = veorq_s8(v63, v67);
  v74 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v73);
  v78 = vaddq_s64(v76, v72);
  v79 = vaddq_s64(v75, v71);
  v80 = vaddq_s64(v74, v70);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v80, v80), *&STACK[0x350]), v80), *&STACK[0x340]), *&STACK[0x330]);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), *&STACK[0x350]), v79), *&STACK[0x340]), *&STACK[0x330]);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), *&STACK[0x350]), v78), *&STACK[0x340]), *&STACK[0x330]);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), *&STACK[0x350]), v77), *&STACK[0x340]), *&STACK[0x330]);
  v85 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v88 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v89 = veorq_s8(v83, v87);
  v90 = veorq_s8(v82, v86);
  v91 = veorq_s8(v81, v85);
  v92 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v91);
  v96 = veorq_s8(vaddq_s64(v92, v88), v19);
  v97 = veorq_s8(vaddq_s64(v93, v89), v19);
  v98 = veorq_s8(vaddq_s64(v94, v90), v19);
  v99 = veorq_s8(v95, v19);
  v100 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v103 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v104 = veorq_s8(v98, v102);
  v105 = veorq_s8(v97, v101);
  v106 = veorq_s8(v96, v100);
  v107 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v106);
  v111 = veorq_s8(vaddq_s64(v107, v103), v20);
  v112 = veorq_s8(vaddq_s64(v108, v104), v20);
  v113 = veorq_s8(vaddq_s64(v109, v105), v20);
  v114 = veorq_s8(v110, v20);
  v115 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v117 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v118 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v119 = veorq_s8(v113, v117);
  v120 = veorq_s8(v112, v116);
  v121 = veorq_s8(v111, v115);
  v122 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v121);
  v126 = veorq_s8(vaddq_s64(v122, v118), v21);
  v127 = veorq_s8(vaddq_s64(v123, v119), v21);
  v128 = veorq_s8(vaddq_s64(v124, v120), v21);
  v129 = veorq_s8(v125, v21);
  v130 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v133 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v134 = veorq_s8(v128, v132);
  v135 = veorq_s8(v127, v131);
  v136 = veorq_s8(v126, v130);
  v137 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v136);
  v141 = vaddq_s64(v139, v135);
  v142 = vaddq_s64(v138, v134);
  v143 = vaddq_s64(v137, v133);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(v143, vandq_s8(vaddq_s64(v143, v143), *&STACK[0x320])), *&STACK[0x310]), v22);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(v142, vandq_s8(vaddq_s64(v142, v142), *&STACK[0x320])), *&STACK[0x310]), v22);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(v141, vandq_s8(vaddq_s64(v141, v141), *&STACK[0x320])), *&STACK[0x310]), v22);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(v140, vandq_s8(vaddq_s64(v140, v140), *&STACK[0x320])), *&STACK[0x310]), v22);
  v148 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v149 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v150 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v151 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v152 = veorq_s8(v144, v148);
  v153 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v135.i64[0] = a4 + v10 - v11 + 7;
  v135.i64[1] = a4 + v10 - v11 + 6;
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v152);
  v152.i64[0] = a4 + v10 - v11 + 3;
  v152.i64[1] = a4 + v10 - v11 + 2;
  v157 = vshlq_u64(veorq_s8(v156, v23), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v17)));
  v158 = vshlq_u64(veorq_s8(vaddq_s64(v155, v151), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v17)));
  v159 = vshlq_u64(veorq_s8(vaddq_s64(v154, v150), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v17)));
  v160 = vshlq_u64(veorq_s8(vaddq_s64(v153, v149), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v17)));
  v161 = vandq_s8(v152, v16);
  v162 = vandq_s8(v135, v16);
  v163 = vandq_s8(v38, v16);
  v164 = vandq_s8(v37, v16);
  v165 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v18);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v18);
  v169 = veorq_s8(v168, v24);
  v170 = veorq_s8(v167, v24);
  v171 = veorq_s8(v167, v25);
  v172 = veorq_s8(v168, v25);
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v26);
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v172), v26);
  v175 = vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL);
  v176 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v177 = veorq_s8(v173, v175);
  v178 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v177);
  v180 = veorq_s8(vaddq_s64(v178, v176), v27);
  v181 = veorq_s8(v179, v27);
  v182 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v183 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v184 = veorq_s8(v180, v182);
  v185 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v184);
  v187 = veorq_s8(vaddq_s64(v185, v183), v19);
  v188 = veorq_s8(v186, v19);
  v189 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v190 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v191 = veorq_s8(v187, v189);
  v192 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v191);
  v194 = veorq_s8(vaddq_s64(v192, v190), v20);
  v195 = veorq_s8(v193, v20);
  v196 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v197 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v198 = veorq_s8(v194, v196);
  v199 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v198);
  v201 = veorq_s8(vaddq_s64(v199, v197), v21);
  v202 = veorq_s8(v200, v21);
  v203 = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v204 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v205 = veorq_s8(v201, v203);
  v206 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v205);
  v208 = veorq_s8(vaddq_s64(v206, v204), v28);
  v209 = veorq_s8(v207, v28);
  v210 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v211 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), veorq_s8(v208, v210));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v211);
  v214 = vaddq_s64(v166, v18);
  v245.val[3] = veorq_s8(v160, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v213, vandq_s8(vaddq_s64(v213, v213), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v152, 3uLL), v17))));
  v245.val[1] = veorq_s8(v159, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v212, vandq_s8(vaddq_s64(v212, v212), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v135, 3uLL), v17))));
  v215 = veorq_s8(v214, v24);
  v216 = veorq_s8(v214, v25);
  v217 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), v26);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), v27);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), v19);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), v20);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224), v21);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v227 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226), v28);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL)));
  v229 = vaddq_s64(v165, v18);
  v245.val[0] = veorq_s8(v158, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v228, vandq_s8(vaddq_s64(v228, v228), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v17))));
  v230 = veorq_s8(v229, v24);
  v231 = veorq_s8(v229, v25);
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), v26);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), v27);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), v19);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237), v20);
  v239 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v240 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239), v21);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241), v28);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL)));
  v245.val[2] = veorq_s8(v157, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v17))));
  *(a4 + v10 - v11 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v245, *&STACK[0x300])), STACK[0x3D0]);
  return (*(v32 + 8 * ((8016 * (8 - (v10 & 0xFFFFFFF8) == -v11)) ^ v5)))();
}

void sub_10011D8A0(int a1@<W8>)
{
  v7 = STACK[0x338];
  v8 = 1358806181 * ((-543009589 - ((v5 - 232) | 0xDFA254CB) + ((v5 - 232) | 0x205DAB34)) ^ 0x1F72C7B7);
  *(v5 - 232) = v2;
  *(v5 - 216) = v1;
  *(v5 - 208) = v2;
  *(v5 - 224) = v8 + a1 - 3060;
  *(v5 - 220) = (v4 ^ 0x7D7FF8BD) - v8 - 269951144 + ((v4 << ((17 * (a1 ^ 0xE)) ^ 0xCF)) & 0xFAFFF17A);
  *(v5 - 192) = v7;
  *(v5 - 200) = (v3 ^ 0xBD9DD0A9) + v8;
  (*(v6 + 8 * (a1 + 1698)))(v5 - 232);
  JUMPOUT(0x10010CBA4);
}

uint64_t sub_10011DAC8@<X0>(uint64_t a1@<X6>, int a2@<W8>)
{
  v5 = *(v4 - 216);
  STACK[0x248] = *(a1 + 8 * v3);
  v6 = *(a1 + 8 * (((v5 == 0) * (a2 - 1276)) ^ (a2 + 5319)));
  STACK[0x288] = v2;
  return v6();
}

uint64_t sub_10011E0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, unsigned int a24)
{
  v28 = ((&a19 - 1588554301 - 2 * (&a19 & 0xA15095C3)) ^ 0xF93946A1) * v25;
  a23 = -654855621 - v28;
  a24 = v28 + v27 + 1674574539;
  a20 = v28 - 371126296;
  a21 = a15;
  a22 = &a16;
  v29 = (*(v26 + 8 * (v27 + 5033)))(&a19);
  return (*(v26 + 8 * (((a19 == ((v27 + 1508039696) & 0xA61D1AFF ^ (v24 + 1873))) * (((v27 + 640064792) & 0xD9D9572E) + 11431)) ^ v27)))(v29);
}

uint64_t sub_10011E1D4()
{
  v2 = *(STACK[0x720] + 24);
  STACK[0x5B0] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 + 10)) & 1) * ((v0 + 1546) ^ 0x12AD)) ^ v0)))();
}

uint64_t sub_10011E284@<X0>(int a1@<W8>)
{
  v3 = STACK[0x8A8];
  STACK[0x5B8] = *(v2 + 8 * a1);
  return (*(v2 + 8 * (((v3 == 0) * (((v1 + 1565123252) & 0xA2B605AB) - 31)) ^ (v1 - 4628))))();
}

uint64_t sub_10011E2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, char *a25)
{
  a23 = (v26 - 5098) ^ (((1941127638 - (&a22 | 0x73B341D6) + (&a22 | 0x8C4CBE29)) ^ 0xB5BA740A) * v25);
  a24 = a20;
  a25 = &a19;
  (*(v27 + 8 * (v26 ^ 0x5EF)))(&a22);
  a23 = (v26 - 5098) ^ ((((&a22 | 0xE7A95F4A) - &a22 + (&a22 & 0x1856A0B0)) ^ 0xDE5F9569) * v25);
  a24 = a20;
  a25 = &a16;
  (*(v27 + 8 * (v26 + 1251)))(&a22);
  a24 = a20;
  LODWORD(a25) = v26 - 2008441969 * (((&a22 | 0x7383B9E8) - (&a22 & 0x7383B9E8)) ^ 0x3B1AEDE6) - 2665;
  v28 = (*(v27 + 8 * (v26 ^ 0x51D)))(&a22);
  return (*(v27 + 8 * (((a22 == v26 + 16249673) * ((v26 + 1867370841) & 0x90B21EF3 ^ 0x10F8)) ^ v26)))(v28);
}

uint64_t sub_10011E44C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11)
{
  v12 = (a1 + 1837748633) | 0x1020;
  v13 = a1 + 1837752754;
  a10 = a1 - 1710126949 * ((&a10 & 0xD5EB6B73 | ~(&a10 | 0xD5EB6B73)) ^ 0x180FCF1C) - 1980897269;
  v14 = (*(v11 + 8 * (a1 ^ 0x9276115B)))(&a10);
  return (*(v11 + 8 * (((a11 != 16257999) * (v12 ^ 0x16B1)) ^ v13)))(v14);
}

uint64_t sub_10011E544(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *(a4 + 8 * (((v70 != v69) * (((a1 + 342081704) & 0xEB9C3DFF) - 6424)) ^ a1));
  STACK[0x290] = v70;
  return v71(a69, a2, 0x71C80D200006C20, 0x61459D2AF01F24F7, 0x518DC1691103FE2CLL, 1280, -2, 0x1508DCB2F33ECE2BLL);
}

uint64_t sub_10011E6A0@<X0>(uint64_t a1@<X8>)
{
  v7 = 7 * (v2 ^ 0x17A9);
  v8 = *(v4 + 120);
  v9 = 914963389 * ((2 * ((v6 - 232) & 0x24FA43C0) - (v6 - 232) - 620381125) ^ 0xF7F90D40);
  *(v6 - 192) = ((*(v4 + 100) ^ 0x6BFCF79B) - 1264341378 + ((*(v4 + 100) << ((7 * (v2 ^ 0xA9)) ^ 0x36)) & 0xD7F9EF36)) ^ v9;
  *(v6 - 200) = v1;
  *(v6 - 224) = a1;
  *(v6 - 232) = 1491323843 - v9;
  *(v6 - 176) = v9 + v2 - 1051;
  *(v6 - 208) = v9 + (v8 ^ 0x4FED792F) + ((2 * v8) & 0x9FDAF25E) - 1162100740;
  *(v6 - 216) = (((v3 ^ 0x9AE35186) + 1696378490) ^ ((v3 ^ 0xEC2B64B9) + 332700487) ^ ((v3 ^ 0x7D0DAC6C) - 2098048108)) - v9 + 1996137537;
  *(v6 - 168) = v4 + 104;
  *(v6 - 184) = a1;
  v10 = (*(v5 + 8 * (v2 ^ 0x303E)))(v6 - 232);
  return (*(v5 + 8 * ((13523 * (*(v6 - 212) == (v7 ^ 0x7FC) + 16247620 + v7 - 350 + 487)) ^ v7)))(v10);
}

uint64_t sub_10011E850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a12 = &a11;
  a14 = v16 + 1317436891 * ((((2 * &a12) | 0xBE1665A) - &a12 - 99660589) ^ 0xB5F32B5B) + 4481;
  v17 = (*(v14 + 8 * (v16 + 5964)))(&a12);
  return (*(v14 + 8 * (((a13 == v15) * (v16 + 3507)) ^ v16)))(v17);
}

void sub_10011E8D8(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 4) = *(v1 + 4);
  *(a1 + 5) = *(v1 + 5);
  JUMPOUT(0x1000B9C8CLL);
}

uint64_t sub_10011E950(int8x16_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = v8 + a3;
  v12 = veorq_s8(*(a4 + v11 + 16), a1);
  v13 = (a5 + v11);
  *v13 = veorq_s8(*(a4 + v11), a1);
  v13[1] = v12;
  return (*(v10 + 8 * (((v9 == v11) * a6) ^ (v6 + v7 + 1393))))();
}

uint64_t sub_10011E958()
{
  v3 = v0 == ((v2 - 3658) ^ 0xEC6A1747);
  LOBYTE(STACK[0x7EB]) = v3;
  return (*(v1 + 8 * ((6075 * v3) ^ (v2 - 2816))))();
}

uint64_t sub_10011E998()
{
  LODWORD(STACK[0x54C]) = 16215815;
  LOBYTE(STACK[0x77F]) = 0;
  return (*(v1 + 8 * (((STACK[0x4E8] != 0) * (v0 - 2253)) | v0)))();
}

void qdrn6()
{
  v0 = *(&off_1003E6550 + ((-85 * (dword_100403540 ^ 0xDF ^ dword_1004033E0)) ^ byte_100369760[byte_100382D10[(-85 * (dword_100403540 ^ 0xDF ^ dword_1004033E0))] ^ 0x1F]) + 224);
  v1 = *(v0 - 4);
  v2 = *(&off_1003E6550 + (byte_10036976C[(byte_100382D1C[(-85 * ((dword_1004033E0 - v1) ^ 0xDF)) - 12] ^ 0x71) - 12] ^ (-85 * ((dword_1004033E0 - v1) ^ 0xDF))) + 42);
  v3 = (*v2 ^ v1) - &v5;
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((-2 - ((v6 ^ 0x88202142 | 0x7795DCAD) + (v6 ^ 0x66854C84 | 0x886A2352))) ^ 0x2341C9A9);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_1003E6550 + ((-85 * ((dword_1004033E0 + dword_100403540) ^ 0xDF)) ^ byte_10037A9B0[byte_100373AD0[(-85 * ((dword_1004033E0 + dword_100403540) ^ 0xDF))] ^ 0xBF]) + 64) - 8;
  (*&v4[8 * (byte_10037A9B8[(byte_100373AD8[v2 - 8] ^ 0x6D) - 8] ^ v2) + 76952])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10011ECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *STACK[0x6F0];
  STACK[0x598] = 0;
  STACK[0x640] = 0;
  return (*(v4 + 8 * (((((v3 ^ 0xA77 ^ (v5 == 0)) & 1) == 0) * ((544 * (v3 ^ 0x948)) ^ 0x241B)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_10011ED18()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x324F)))();
  v3 = STACK[0x8EC];
  STACK[0x740] -= 80;
  return (*(v1 + 8 * (((v3 == 16257999) * (v0 - 6014)) ^ (v0 - 911))))(v2);
}

uint64_t sub_10011EE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned int a23, int a24, int a25, uint64_t a26, uint64_t a27)
{
  v32 = v27 + 32 * v29;
  v33 = *v32 ^ 0xDEA7EFFE;
  v34 = (2 * *v32) & 0xBD4FDFFC;
  v35 = (((&a23 | 0x8F32B03) - (&a23 & 0x8F32B03)) ^ 0x509AF861) * v28;
  a26 = *(v32 + 8);
  a27 = a20;
  a23 = v31 - 1632 + v35;
  a25 = v33 - v35 + v34 + 1878850188;
  (*(v30 + 8 * (v31 + 4242)))(&a23);
  v36 = *(v32 + 16);
  v37 = (&a23 ^ 0x5869D362) * v28;
  a26 = *(v32 + 24);
  a27 = a20;
  a23 = v31 - 1632 + v37;
  a25 = v31 - 2394 - v37 + (v36 ^ 0xDFF6FFCE) + ((2 * v36) & 0xBFEDFF9C) + 1856888585;
  v38 = (*(v30 + 8 * (v31 + 4242)))(&a23);
  return (*(v30 + 8 * (((4 * (a16 <= (v29 + 1))) | (16 * (a16 <= (v29 + 1)))) ^ v31)))(v38);
}

uint64_t sub_10011EF40@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x2782;
  v3 = (*(v1 + 8 * (a1 + 8228)))();
  STACK[0x700] = 0;
  v4 = STACK[0x81C];
  STACK[0x628] -= 48;
  return (*(v1 + 8 * (((v4 == 16257999) * (((v2 - 8930) | 0x44B) + 4877)) ^ ((v2 - 8930) | 0x44B))))(v3, 197499219);
}

uint64_t sub_10011EFD0@<X0>(int a1@<W4>, int a2@<W8>)
{
  v10 = *(v7 + 8 * v2);
  v11 = *v4;
  v12 = v3 + a1;
  *(*v4 + v12) = (HIBYTE(a2) ^ v9) - 2 * ((HIBYTE(a2) ^ v9) & 0x3E ^ HIBYTE(a2) & 2) + 60;
  *(v11 + v12 + 1) = (v8 ^ BYTE2(a2)) - ((2 * (v8 ^ BYTE2(a2))) & 0x78) + 60;
  *(v11 + v12 + 2) = (v6 ^ BYTE1(a2)) - ((2 * (v6 ^ BYTE1(a2))) & 0x78) + 60;
  *(v11 + v12 + 3) = a2 ^ v5;
  return v10();
}

uint64_t sub_10011F054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a9 - 1;
  v26 = (v10 + v25);
  v27 = __ROR8__((v10 + v25) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = v24 - (((v21 - v27) | a8) + ((v27 + a5) | a7));
  v29 = v28 ^ v13;
  v30 = v28 ^ a2;
  v31 = (__ROR8__(v29, 8) + v30) ^ a6;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = ((v17 & (2 * (v33 + v32))) - (v33 + v32) + a1) ^ v9;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v20;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v16;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((v40 + v39) & a3 ^ v14) + ((v40 + v39) ^ v12) - (((v40 + v39) ^ v12) & a3)) ^ v18;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x1A2AEBE44253AF03;
  *(v22 + v25 + v11) = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ 0xAB3042D228875C41) >> (8 * (v26 & 7u))) ^ *v26;
  return (*(*(v23 - 256) + 8 * (((v25 == 0) * v19) ^ (v15 + a4))))();
}

uint64_t sub_10011F17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20)
{
  a19 = v21 - 1710126949 * (((&a19 | 0xAD69109E) - &a19 + (&a19 & 0x5296EF60)) ^ 0x9F724B0E) + 476320827;
  v22 = (*(v20 + 8 * (v21 ^ 0x2D6Bu)))(&a19);
  return (*(v20 + 8 * (((a20 == 16257999) * (v21 - 2198)) ^ v21)))(v22);
}

void sub_10011F470(uint64_t a1)
{
  v1 = *(a1 + 8) - 1358806181 * (((a1 | 0x4DE180A1) - (a1 | 0xB21E7F5E) - 1306624162) ^ 0x72CEEC22);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_10011F734()
{
  result = v1;
  *(v1 + 36) = (v2 ^ 0x4CFA3BEF) - 1275209760 + ((2 * v2) & 0x99F430DA);
  return result;
}

void sub_10011F7A4()
{
  v3 = __chkstk_darwin();
  v0 = *v3 + 1358806181 * ((-2 - ((v3 | 0x2BD95748) + (~v3 | 0xD426A8B7))) ^ 0xEB09C434);
  v1 = *(&off_1003E6550 + v0 - 5812) - 8;
  (*&v1[8 * v0 + 28072])(v4, 0, 4097);
  v2 = *&v1[8 * ((((*&v1[8 * (v0 ^ 0x3269)])(8, 0x1000040789AEA99) != 0) * ((v0 - 2818) ^ (v0 - 5268))) ^ v0)];
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10011F960@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = (((v2 - 203023368) & 0xC19DDDE) + 1547391525) & 0xA3C4A59F;
  *v8 = a1;
  *a2 = v11;
  v6 = (v5 - 1170) | 0x18C8;
  v14 = (v5 + 7175) ^ (1824088897 * ((&v12 & 0x7D3F359B | ~(&v12 | 0x7D3F359B)) ^ 0xDAA91906));
  v13 = v9;
  (*(v3 + 8 * (v5 + 8441)))(&v12);
  v13 = v10;
  v14 = (v6 + 2001) ^ (1824088897 * ((((2 * &v12) | 0x957E1B7E) - &v12 + 893448769) ^ 0x92D6DEDD));
  (*(v3 + 8 * (v6 ^ 0x3D45)))(&v12);
  return (v4 - 16257999);
}

uint64_t sub_10011FAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, int a23)
{
  a22 = a15;
  a23 = (v24 + 6030) ^ (((&a21 + 782711178 - 2 * (&a21 & 0x2EA7398A)) ^ 0x76CEEAE8) * v23);
  v26 = (*(v25 + 8 * (v24 + 7296)))(&a21);
  return sub_10011FB50(v26);
}

uint64_t sub_10011FB50()
{
  v6[1] = v5;
  v7 = (v2 + 2580) ^ ((((v6 | 0x3881E679) - (v6 & 0x3881E679)) ^ 0x60E8351B) * v1);
  (*(v3 + 8 * (v2 ^ 0x330A)))(v6);
  return (v0 - 16257999);
}

uint64_t sub_10011FCC8(uint64_t a1)
{
  v4 = (*(v3 + 8 * (v1 + 5857)))(a1, 3638310758);
  *v2 = v4;
  return (*(v3 + 8 * (((((v4 == 0) ^ ((v1 ^ 0xBF) + 1)) & 1) * (v1 ^ 0xEC2)) ^ v1)))();
}

uint64_t sub_10011FD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v4 = STACK[0x680];
  v5 = STACK[0x890];
  STACK[0x458] = STACK[0x890];
  STACK[0x8C8] = v4;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(STACK[0x400] + 8 * ((v7 * (((a4 - 7295) ^ 0x236C) - 9244)) | a4)))(a1, a2, a3, 16215976);
}

uint64_t sub_10011FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 - 4103) | 0x504;
  v6 = v5 ^ 0x41F;
  (*(a4 + 8 * (v5 ^ 0x3080)))();
  v7 = STACK[0x3E8];
  STACK[0x430] = 0;
  return (*(v7 + 8 * ((((v6 - 509705180) & 0x1E617BFE ^ ((v6 - 2331) | 0x750) ^ 0x1E4B) * (STACK[0x710] == 0)) ^ v6)))();
}

uint64_t sub_10011FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = 386747561 * (*(a9 + 40) ^ v32) + 2135074729;
  v37 = (v33 - 180582830 + (v36 ^ 0x70FFD98)) ^ v36 ^ ((v36 ^ 0xB4CC8968) + 1191175419) ^ ((v35 ^ 0x41F84C06 ^ v36) - 1278526255) ^ ((v36 ^ 0xFFF7B7DF) + 231004750);
  v39 = v37 == 231510637 || ((v34 ^ 0x1EE7) & v37) != 13;
  return (*(a3 + 8 * ((119 * ((v34 ^ 0x51 ^ v39) & 1)) ^ v34 ^ 0x3A51)))(231004750, 3016441041, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_100120008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _DWORD *a11, _DWORD *a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, int a17, int a18)
{
  *a11 = a15;
  *a12 = a18;
  v20 = (*(v19 + 8 * (v18 + 6178)))();
  return (*(v19 + 8 * (((a15 != ((2 * a15) & 0x3503BC70)) * (((v18 - 2912) | 0x2002) - 8723)) ^ v18)))(v20);
}

uint64_t sub_1001200F4()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 - v3 + 1;
  v10 = v1 + v9;
  v11 = ((((v4 - 3359) | 0xBu) + 3429) ^ 0x1ED1) + v8;
  v12 = v1 + v11;
  v13 = v8 + v0 + 2;
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

  return (*(v5 + 8 * ((234 * v17) ^ v4)))();
}

uint64_t sub_100120184()
{
  v3 = *(v1 + 8);
  STACK[0x670] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (v0 - 11304 + ((v0 + 572069456) & 0xDDE6F5E7))) ^ v0)))();
}

uint64_t sub_1001201F0@<X0>(int a1@<W0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v12 = v8 + 32;
  v13 = (v12 ^ v10 ^ v7) + v5;
  v14 = *(v4 + v13 - 15);
  v15 = *(v4 + v13 - 31);
  v16 = a2 + v13;
  *(v16 - 15) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a3)), a4);
  *(v16 - 31) = vaddq_s8(vsubq_s8(v15, vandq_s8(vaddq_s8(v15, v15), a3)), a4);
  return (*(v11 + 8 * (((v9 == v12) * a1) ^ (v6 + 1288))))();
}

uint64_t sub_1001201F8@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x6E0] + 24);
  STACK[0x420] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 - 1)) & 1) * ((a1 - 606) ^ 0x15E3)) ^ a1)))();
}

uint64_t sub_100120248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  a15 = v17;
  a16 = a12;
  a17 = (33731311 * (((&a14 | 0x2124F509) + (~&a14 | 0xDEDB0AF6)) ^ 0x18D23F2B)) ^ 0x208C;
  v20 = (*(v19 + 77256))(&a14);
  return (*(v19 + 8 * ((7840 * (a14 == ((v18 + 2400) ^ 0xEE0))) ^ 0x497u)))(v20);
}

uint64_t sub_1001203D8()
{
  v2 = (*(v1 + 8 * (v0 + 6361)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x6F0] = v2;
  return (*(v3 + 8 * (((v2 == 0) * (((3 * (v0 ^ 0xB9B)) ^ 0xFFFFCBD2) + v0 + 5398)) ^ v0)))();
}

uint64_t sub_100120450@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = 1875091903 * ((2 * ((v38 - 192) & 0x4D62038) - (v38 - 192) + 2066341828) ^ 0x4D5C5C47);
  *(v38 - 176) = (a2 + 2951) ^ v39;
  *(v38 - 168) = a36;
  *(v38 - 192) = ((v36 & 0xD4D35FFE) + (v37 ^ 0x6A69AFFF) + ((a2 - 3771) ^ 0xDDDED3E5)) ^ v39;
  *(v38 - 184) = STACK[0x240];
  v40 = (*(a1 + 8 * (a2 ^ 0x326B)))(v38 - 192);
  return sub_100120500(v40);
}

uint64_t sub_1001205B4(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int64x2_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v33 = v17 - 8;
  v34.i64[0] = v33 + a15 + v19;
  v34.i64[1] = v33 + a15 + 6;
  v35.i64[0] = v33 + a15 + 9;
  v35.i64[1] = v33 + a15 + 8;
  v36.i64[0] = v33 + a15 + 5;
  v36.i64[1] = v33 + a15 + 4;
  v37.i64[0] = v33 + a15 + 3;
  v37.i64[1] = v33 + a15 + 2;
  v38 = vandq_s8(v37, a1);
  v39 = vandq_s8(v36, a1);
  v40 = vandq_s8(v35, a1);
  v41 = vandq_s8(v34, a1);
  v42 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), a3);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), a3);
  v46 = veorq_s8(v45, a4);
  v47 = veorq_s8(v44, a4);
  v48 = veorq_s8(v44, a5);
  v49 = veorq_s8(v45, a5);
  v50 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48), a6);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49), a6);
  v52 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v53);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v56, v56), a7), v56), a8), v20);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v55, v55), a7), v55), a8), v20);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v61 = veorq_s8(v57, v59);
  v62 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = vaddq_s64(v62, v60);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(v64, vandq_s8(vaddq_s64(v64, v64), v21)), v22), v23);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(v63, vandq_s8(vaddq_s64(v63, v63), v21)), v22), v23);
  v67 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v24);
  v73 = veorq_s8(v71, v24);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, v25), vorrq_s8(v78, v26)), v26), v27);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v79, v25), vorrq_s8(v79, v26)), v26), v27);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v82), v28);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v83), v28);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v88 = veorq_s8(v84, v86);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v91 = vaddq_s64(v43, a3);
  v92 = veorq_s8(vaddq_s64(v89, v87), v29);
  v93 = veorq_s8(vaddq_s64(v90, v88), v29);
  v130.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v93, v30), vorrq_s8(v93, v31)), v31), v32), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a2)));
  v130.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v92, v30), vorrq_s8(v92, v31)), v31), v32), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v94 = veorq_s8(v91, a4);
  v95 = veorq_s8(v91, a5);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), a6);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), a7), v98), a8), v20);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), v21)), v22), v23);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v24);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, v25), vorrq_s8(v106, v26)), v26), v27);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v28);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL))), v29);
  v111 = vaddq_s64(v42, a3);
  v130.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v110, v30), vorrq_s8(v110, v31)), v31), v32), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v112 = veorq_s8(v111, a4);
  v113 = veorq_s8(v111, a5);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), a6);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), a7), v116), a8), v20);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(v119, vandq_s8(vaddq_s64(v119, v119), v21)), v22), v23);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v24);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v25), vorrq_s8(v124, v26)), v26), v27);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v28);
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL))), v29);
  v130.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, v30), vorrq_s8(v128, v31)), v31), v32), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  *(v33 + a15 + 2) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v18 - 8 + a15)), 0x3C3C3C3C3C3C3C3CLL), *&vqtbl4q_s8(v130, *&STACK[0x310])));
  return (*(STACK[0x330] + 8 * (((2 * (v16 != -8)) | (4 * (v16 != -8))) ^ v15)))();
}

uint64_t sub_100120950@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_1001490C8();
}

uint64_t sub_1001209E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x518];
  *(v5 + 104) = 16;
  *(v5 + 103) = *(v6 + 23);
  *(v5 + 102) = *(v6 + 22);
  *(v5 + 101) = *(v6 + 21);
  *(v5 + 100) = *(v6 + 20);
  *(v5 + 99) = *(v6 + 19);
  *(v5 + 98) = *(v6 + 18);
  *(v5 + 97) = *(v6 + 17);
  *(v5 + 96) = *(v6 + 16);
  *(v5 + 95) = *(v6 + 15);
  *(v5 + 94) = *(v6 + 14);
  *(v5 + 93) = *(v6 + 13);
  *(v5 + 92) = *(v6 + 12);
  *(v5 + 91) = *(v6 + 11);
  *(v5 + 90) = *(v6 + 10);
  *(v5 + 89) = *(v6 + 9);
  *(v5 + 88) = *(v6 + 8);
  *(v5 + 84) = *v6;
  return (*(a4 + 8 * (((*(v6 + 4) == 0) * (v4 ^ 0x1600)) ^ v4)))();
}

void sub_100120CC0(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v29 = a1 - 1;
  *v27 = v29 ^ v26 ^ 0x36869F5D | (((a20 - v29) | (v29 - a20)) >> 31);
  (*(v28 + 8 * (v29 ^ 0x2584)))(a26);
  vld1q_dup_f32(v27);
  JUMPOUT(0x100120D70);
}

uint64_t sub_100120E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 16 - ((2 * (v3 + 1981691014)) & 8 ^ (v3 + 1981691014) & 0xF ^ (((v4 - 1230) | 0x800) - 2077));
  LODWORD(STACK[0x90C]) = v7;
  return (*(v6 + 8 * ((3300 * ((v3 ^ 0xFEFC71FADFAE72F7) + ((2 * v3) & 0x1BF5CE5EELL) + (v7 ^ 0x36EDFFB79BD77DCDLL) + ((2 * v7) & 0x1A) - 0x35EA71B27B85F0C4 < 0xFFFFFFF6)) ^ v4)))(a1, a2, a3, (v5 + 5));
}

uint64_t sub_100120EF8()
{
  v12 = ((v1 ^ 0xC6A13AD2) + v0) ^ ((((&v10 | 0xFD29B59F) - (&v10 & 0xFD29B59F)) ^ 0xA54066FD) * v4);
  v11 = v7;
  (*(v3 + 8 * ((v1 ^ 0xC6A13AD2) + 962527244)))(&v10);
  v11 = v9;
  v12 = ((v1 ^ 0xC6A13AD2) + v2) ^ ((((&v10 | 0xFDC29665) - &v10 + (&v10 & 0x23D6998)) ^ 0xA5AB4507) * v4);
  (*(v3 + 8 * ((v1 ^ 0xC6A13AD2) + v5)))(&v10);
  return (v8 ^ 0xE2F99FEF) + (v1 ^ 0x1DFE6CB2) + ((2 * v8) & 0xC5F33FDE) - 16257999;
}

uint64_t sub_100121038()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x78A)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x400];
  STACK[0x988] = v2;
  return (*(v3 + 8 * ((((((v0 - 5536) ^ (v2 == 0)) & 1) == 0) * (((v0 + 472) | 0x20) ^ 0x245B)) ^ v0)))();
}

void sub_100121100(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  v5 = (((2 * v3) & 0x4E7EF3BF7DF6EEFCLL) + (v3 ^ 0xA73F79DFBEFB777ELL) + v2 + 0x58C0862041047A5CLL);
  v6 = (v5[3622] << 24) | (v5[3623] << 16) | (v5[(v4 + 1515178266) & 0xA5B02F2F] << 8);
  LODWORD(STACK[0x68C]) = (v6 | v5[3625]) + 197499219 - 2 * ((v6 | v5[3625]) & 0xBC5995F ^ v5[3625] & 0xC);
  sub_1001BDE20(a1, a2);
}

uint64_t sub_100121244@<X0>(int a1@<W8>)
{
  if (LODWORD(STACK[0x9AC]))
  {
    v2 = (LODWORD(STACK[0x9AC]) ^ 0x49FA7FDF) + ((a1 + 4680) ^ 0xB6FD85CD) + ((2 * LODWORD(STACK[0x9AC])) & 0x93F4FFBE) == 16257999;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(v1 + 8 * ((v3 * ((a1 + 378) ^ 0xF1A)) ^ a1)))();
}

uint64_t sub_100121310()
{
  (*(v2 + 8 * (v0 ^ 0x2D7D)))();
  *(v1 + 24) = 0;
  return sub_100178BA8();
}

uint64_t sub_100121400@<X0>(uint64_t a1@<X0>, int a2@<W8>, _DWORD *a3)
{
  *v3 = a1;
  *a3 = a2;
  return sub_10019E694();
}

uint64_t sub_100121408@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v72 = vdupq_n_s64(0x38uLL);
  v73 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x350] = vdupq_n_s64(0x731CB210FB4C4567uLL);
  *&STACK[0x360] = vdupq_n_s64(0x19C69BDE09677532uLL);
  *&STACK[0x330] = vdupq_n_s64(0x6D4CEA43F2532C17uLL);
  *&STACK[0x340] = vdupq_n_s64(v66);
  *&STACK[0x310] = vdupq_n_s64(0xC008A9762A8A187uLL);
  *&STACK[0x320] = vdupq_n_s64(0xE7FEEAD13AAEBCF2);
  *&STACK[0x2F0] = vdupq_n_s64(v69);
  *&STACK[0x300] = vdupq_n_s64(0x176202B71A6AE107uLL);
  *&STACK[0x2D0] = vdupq_n_s64(a2);
  *&STACK[0x2E0] = vdupq_n_s64(a1);
  v74 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v75 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v76 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x2B0] = vdupq_n_s64(a4);
  *&STACK[0x2C0] = vdupq_n_s64(a3);
  v77 = vdupq_n_s64(a5);
  v78 = vdupq_n_s64(0xAB3042D228875C41);
  v79 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v80 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v81 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v82 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v83 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v84 = vdupq_n_s64(a6);
  v85 = vdupq_n_s64(a7);
  v86 = vdupq_n_s64(a8);
  *&STACK[0x2A0] = xmmword_100382E20;
  STACK[0x370] = *(v65 + v67 - v68 - 8);
  v87.i64[0] = v65 + v67 - v68 + (((v70 + 2651) | 0x10Au) ^ 0xFFFFFFFFFFFFEEF3);
  v87.i64[1] = v65 + v67 - v68 - 4;
  v88.i64[0] = v65 + v67 - v68 - 1;
  v88.i64[1] = v65 + v67 - v68 - 2;
  v89.i64[0] = v65 + v67 - v68 - 5;
  v89.i64[1] = v65 + v67 - v68 - 6;
  v90.i64[0] = v65 + v67 - v68 - 7;
  v90.i64[1] = v65 + v67 - v68 - 8;
  v91.i64[0] = a9 + v67 - v68 + 7;
  v91.i64[1] = a9 + v67 - v68 + 6;
  v92.i64[0] = a9 + v67 - v68 + 9;
  v92.i64[1] = a9 + v67 - v68 + 8;
  v93 = vandq_s8(v90, v71);
  v94 = vandq_s8(v89, v71);
  v95 = vandq_s8(v88, v71);
  v96 = vandq_s8(v87, v71);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v73);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v73);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v73);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v73);
  v101 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v97, v97), *&STACK[0x360]), v97), *&STACK[0x350]);
  v102 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), *&STACK[0x360]), v98), *&STACK[0x350]);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), *&STACK[0x360]), v99), *&STACK[0x350]);
  v104 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), *&STACK[0x360]), v100), *&STACK[0x350]);
  v105 = veorq_s8(v104, *&STACK[0x340]);
  v106 = veorq_s8(v103, *&STACK[0x340]);
  v107 = veorq_s8(v102, *&STACK[0x340]);
  v108 = veorq_s8(v101, *&STACK[0x340]);
  v109 = veorq_s8(v101, *&STACK[0x330]);
  v110 = veorq_s8(v102, *&STACK[0x330]);
  v111 = veorq_s8(v103, *&STACK[0x330]);
  v112 = veorq_s8(v104, *&STACK[0x330]);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v112);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v111);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), *&STACK[0x320]), v116), *&STACK[0x310]), *&STACK[0x300]);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v115, v115), *&STACK[0x320]), v115), *&STACK[0x310]), *&STACK[0x300]);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v114, v114), *&STACK[0x320]), v114), *&STACK[0x310]), *&STACK[0x300]);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v113, v113), *&STACK[0x320]), v113), *&STACK[0x310]), *&STACK[0x300]);
  v121 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v124 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v125 = veorq_s8(v119, v123);
  v126 = veorq_s8(v118, v122);
  v127 = veorq_s8(v117, v121);
  v128 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v127);
  v132 = vaddq_s64(v130, v126);
  v133 = vaddq_s64(v129, v125);
  v134 = vaddq_s64(v128, v124);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), *&STACK[0x2F0]), v134), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), *&STACK[0x2F0]), v133), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), *&STACK[0x2F0]), v132), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), *&STACK[0x2F0]), v131), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v139 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v142 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v143 = veorq_s8(v137, v141);
  v144 = veorq_s8(v136, v140);
  v145 = veorq_s8(v135, v139);
  v146 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v145);
  v150 = veorq_s8(vaddq_s64(v146, v142), v74);
  v151 = veorq_s8(vaddq_s64(v147, v143), v74);
  v152 = veorq_s8(vaddq_s64(v148, v144), v74);
  v153 = veorq_s8(v149, v74);
  v154 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v157 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v158 = veorq_s8(v152, v156);
  v159 = veorq_s8(v151, v155);
  v160 = veorq_s8(v150, v154);
  v161 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v160);
  v165 = veorq_s8(vaddq_s64(v161, v157), v75);
  v166 = veorq_s8(vaddq_s64(v162, v158), v75);
  v167 = veorq_s8(vaddq_s64(v163, v159), v75);
  v168 = veorq_s8(v164, v75);
  v169 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v172 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v173 = veorq_s8(v167, v171);
  v174 = veorq_s8(v166, v170);
  v175 = veorq_s8(v165, v169);
  v176 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v175);
  v180 = veorq_s8(vaddq_s64(v176, v172), v76);
  v181 = veorq_s8(vaddq_s64(v177, v173), v76);
  v182 = veorq_s8(vaddq_s64(v178, v174), v76);
  v183 = veorq_s8(v179, v76);
  v184 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v187 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v188 = veorq_s8(v182, v186);
  v189 = veorq_s8(v181, v185);
  v190 = veorq_s8(v180, v184);
  v191 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v190);
  v195 = vaddq_s64(v193, v189);
  v196 = vaddq_s64(v192, v188);
  v197 = vaddq_s64(v191, v187);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(v197, vandq_s8(vaddq_s64(v197, v197), *&STACK[0x2C0])), *&STACK[0x2B0]), v77);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(v196, vandq_s8(vaddq_s64(v196, v196), *&STACK[0x2C0])), *&STACK[0x2B0]), v77);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(v195, vandq_s8(vaddq_s64(v195, v195), *&STACK[0x2C0])), *&STACK[0x2B0]), v77);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(v194, vandq_s8(vaddq_s64(v194, v194), *&STACK[0x2C0])), *&STACK[0x2B0]), v77);
  v202 = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v203 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v204 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v205 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v206 = veorq_s8(v198, v202);
  v207 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v189.i64[0] = a9 + v67 - v68 + 5;
  v189.i64[1] = a9 + v67 - v68 + 4;
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v206);
  v206.i64[0] = a9 + v67 - v68 + 3;
  v206.i64[1] = a9 + v67 - v68 + 2;
  v211 = vshlq_u64(veorq_s8(v210, v78), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), v72)));
  v212 = vshlq_u64(veorq_s8(vaddq_s64(v209, v205), v78), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v72)));
  v213 = vshlq_u64(veorq_s8(vaddq_s64(v208, v204), v78), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), v72)));
  v214 = vshlq_u64(veorq_s8(vaddq_s64(v207, v203), v78), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), v72)));
  v215 = vandq_s8(v206, v71);
  v216 = vandq_s8(v189, v71);
  v217 = vandq_s8(v92, v71);
  v218 = vandq_s8(v91, v71);
  v219 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v73);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v73);
  v223 = veorq_s8(v222, v79);
  v224 = veorq_s8(v221, v79);
  v225 = veorq_s8(v221, v80);
  v226 = veorq_s8(v222, v80);
  v227 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), v81);
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v226), v81);
  v229 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v230 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v231 = veorq_s8(v227, v229);
  v232 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v231);
  v234 = veorq_s8(vaddq_s64(v232, v230), v82);
  v235 = veorq_s8(v233, v82);
  v236 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v237 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v238 = veorq_s8(v234, v236);
  v239 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v240 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v238);
  v241 = veorq_s8(vaddq_s64(v239, v237), v74);
  v242 = veorq_s8(v240, v74);
  v243 = vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL);
  v244 = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v245 = veorq_s8(v241, v243);
  v246 = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v245);
  v248 = veorq_s8(vaddq_s64(v246, v244), v75);
  v249 = veorq_s8(v247, v75);
  v250 = vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL);
  v251 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v252 = veorq_s8(v248, v250);
  v253 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v252);
  v255 = veorq_s8(vaddq_s64(v253, v251), v76);
  v256 = veorq_s8(v254, v76);
  v257 = vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL);
  v258 = veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v259 = veorq_s8(v255, v257);
  v260 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v259);
  v262 = veorq_s8(vaddq_s64(v260, v258), v83);
  v263 = veorq_s8(v261, v83);
  v264 = vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL);
  v265 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL));
  v266 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), veorq_s8(v262, v264));
  v267 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v265);
  v268 = vaddq_s64(v220, v73);
  v299.val[3] = veorq_s8(v214, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v267, vandq_s8(vaddq_s64(v267, v267), v84)), v85), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v206, 3uLL), v72))));
  v299.val[2] = veorq_s8(v213, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v266, vandq_s8(vaddq_s64(v266, v266), v84)), v85), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v189, 3uLL), v72))));
  v269 = veorq_s8(v268, v79);
  v270 = veorq_s8(v268, v80);
  v271 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), v270), v81);
  v272 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL));
  v273 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v272), v82);
  v274 = veorq_s8(v273, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v275 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), v274), v74);
  v276 = veorq_s8(v275, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL));
  v277 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL), v276), v75);
  v278 = veorq_s8(v277, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v278), v76);
  v280 = veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v281 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v280), v83);
  v282 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL), veorq_s8(v281, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL)));
  v283 = vaddq_s64(v219, v73);
  v299.val[0] = veorq_s8(v212, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v282, vandq_s8(vaddq_s64(v282, v282), v84)), v85), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v72))));
  v284 = veorq_s8(v283, v79);
  v285 = veorq_s8(v283, v80);
  v286 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v285), v81);
  v287 = veorq_s8(v286, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v288 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287), v82);
  v289 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v290 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v289), v74);
  v291 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL));
  v292 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v291), v75);
  v293 = veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL));
  v294 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), v293), v76);
  v295 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL));
  v296 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295), v83);
  v297 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL), veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL)));
  v299.val[1] = veorq_s8(v211, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v297, vandq_s8(vaddq_s64(v297, v297), v84)), v85), v86), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), v72))));
  *(a9 + v67 - v68 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v299, *&STACK[0x2A0])), STACK[0x370]);
  return (*(a65 + 8 * ((7134 * (8 - (v67 & 0xFFFFFFF8) == -v68)) ^ v70)))();
}

uint64_t sub_100121F0C()
{
  STACK[0xA38] = v1;
  v3 = STACK[0x638];
  STACK[0xA40] = STACK[0x638];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (6 * ((v0 + 5642873) & 0xFFA9D97F ^ 0xC9) - 1631)) ^ v0)))();
}

uint64_t sub_100121FA8()
{
  STACK[0x348] = 0;
  v3 = STACK[0x394];
  STACK[0x5C8] = 0;
  STACK[0x728] -= 32;
  return (*(v2 + 8 * (((v3 == v0) * (((v1 - 4850) | 0x8B9) ^ 0xDF4)) ^ (v1 - 2617))))();
}

uint64_t sub_100121FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X5>, unint64_t a4@<X7>, unint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v76 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v77 = vdupq_n_s64(0x38uLL);
  *&STACK[0x340] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x350] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x320] = vdupq_n_s64(a3);
  *&STACK[0x330] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v78 = -v69;
  *&STACK[0x300] = vdupq_n_s64(a4);
  *&STACK[0x310] = vdupq_n_s64(v73);
  *&STACK[0x2E0] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x2F0] = vdupq_n_s64(v71);
  *&STACK[0x2C0] = vdupq_n_s64(0x5B4E7A73A872D06CuLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x8D788362149CAEAALL);
  *&STACK[0x2B0] = vdupq_n_s64(0xE50EF93BD6C6A2AALL);
  v79 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x280] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x290] = vdupq_n_s64(0xEC3D1E48E4838A5DLL);
  *&STACK[0x260] = vdupq_n_s64(0x39627EADB2F598AFuLL);
  *&STACK[0x270] = vdupq_n_s64(0x8D3B02A49A14CEA0);
  *&STACK[0x240] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x250] = vdupq_n_s64(0x92523C7F9A72C4EELL);
  *&STACK[0x220] = vdupq_n_s64(v74);
  *&STACK[0x230] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x210] = vdupq_n_s64(0x2AB11F016CBDAD66uLL);
  v80 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  v81 = vdupq_n_s64(0x63585D3A03AB4AB4uLL);
  v82 = vdupq_n_s64(0xCB1EB8AD9A5D3BE8);
  v83 = vdupq_n_s64(v75);
  v84 = vdupq_n_s64(v61);
  v85 = vdupq_n_s64(v62);
  v86 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x200] = xmmword_100382E20;
  STACK[0x370] = *(v72 + a2 + v78 - 8);
  v87 = v78 + ((v70 - 1106) | 0x16u);
  v88.i64[0] = v72 + a2 - 4123 + v87;
  v88.i64[1] = v72 + a2 + v78 - 6;
  v89.i64[0] = v72 + a2 + v78 - 1;
  v89.i64[1] = v72 + a2 + v78 - 2;
  v90.i64[0] = v72 + a2 + v78 - 3;
  v90.i64[1] = v72 + a2 + v78 - 4;
  v91.i64[0] = v72 + a2 + v78 - 7;
  v91.i64[1] = v72 + a2 + v78 - 8;
  v92.i64[0] = a1 + a2 + v78 - 7;
  v92.i64[1] = a1 + a2 + v78 - 8;
  v93.i64[0] = a1 + a2 + v78 - 3;
  v93.i64[1] = a1 + a2 + v78 - 4;
  v94.i64[0] = a1 + a2 + v78 - 1;
  v94.i64[1] = a1 + a2 + v78 - 2;
  v95.i64[0] = a1 + a2 - 4123 + v87;
  v95.i64[1] = a1 + a2 + v78 - 6;
  v96 = vandq_s8(v91, v76);
  v97 = vandq_s8(v90, v76);
  v98 = vandq_s8(v89, v76);
  v99 = vandq_s8(v88, v76);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), *&STACK[0x350]);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), *&STACK[0x350]);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), *&STACK[0x350]);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), *&STACK[0x350]);
  v104 = veorq_s8(v103, *&STACK[0x340]);
  v105 = veorq_s8(v102, *&STACK[0x340]);
  v106 = veorq_s8(v101, *&STACK[0x340]);
  v107 = veorq_s8(v100, *&STACK[0x340]);
  v108 = veorq_s8(v100, *&STACK[0x330]);
  v109 = veorq_s8(v101, *&STACK[0x330]);
  v110 = veorq_s8(v102, *&STACK[0x330]);
  v111 = veorq_s8(v103, *&STACK[0x330]);
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), *&STACK[0x320]);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v109), *&STACK[0x320]);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v110), *&STACK[0x320]);
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v111), *&STACK[0x320]);
  v116 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v117 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v119 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v120 = veorq_s8(v114, v118);
  v121 = veorq_s8(v113, v117);
  v122 = veorq_s8(v112, v116);
  v123 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v122);
  v127 = vaddq_s64(v125, v121);
  v128 = vaddq_s64(v124, v120);
  v129 = vaddq_s64(v123, v119);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), *&STACK[0x310]), v129), *&STACK[0x300]), *&STACK[0x2F0]);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), *&STACK[0x310]), v128), *&STACK[0x300]), *&STACK[0x2F0]);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x310]), v127), *&STACK[0x300]), *&STACK[0x2F0]);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), *&STACK[0x310]), v126), *&STACK[0x300]), *&STACK[0x2F0]);
  v134 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v137 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v138 = veorq_s8(v132, v136);
  v139 = veorq_s8(v131, v135);
  v140 = veorq_s8(v130, v134);
  v141 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v140);
  v145 = vaddq_s64(v143, v139);
  v146 = vaddq_s64(v142, v138);
  v147 = vaddq_s64(v141, v137);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v147, v147), *&STACK[0x2E0]), v147), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v146, v146), *&STACK[0x2E0]), v146), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v145, v145), *&STACK[0x2E0]), v145), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v144, v144), *&STACK[0x2E0]), v144), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v152 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v155 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v156 = veorq_s8(v150, v154);
  v157 = veorq_s8(v149, v153);
  v158 = veorq_s8(v148, v152);
  v159 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v158);
  v163 = vaddq_s64(v161, v157);
  v164 = vaddq_s64(v160, v156);
  v165 = vaddq_s64(v159, v155);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), *&STACK[0x2B0]), v165), *&STACK[0x2A0]), *&STACK[0x290]);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), *&STACK[0x2B0]), v164), *&STACK[0x2A0]), *&STACK[0x290]);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), *&STACK[0x2B0]), v163), *&STACK[0x2A0]), *&STACK[0x290]);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v162, v162), *&STACK[0x2B0]), v162), *&STACK[0x2A0]), *&STACK[0x290]);
  v170 = vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v173 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v174 = veorq_s8(v168, v172);
  v175 = veorq_s8(v167, v171);
  v176 = veorq_s8(v166, v170);
  v177 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v176);
  v181 = veorq_s8(vaddq_s64(v177, v173), v79);
  v182 = veorq_s8(vaddq_s64(v178, v174), v79);
  v183 = veorq_s8(vaddq_s64(v179, v175), v79);
  v184 = veorq_s8(v180, v79);
  v185 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v188 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v189 = veorq_s8(v183, v187);
  v190 = veorq_s8(v182, v186);
  v191 = veorq_s8(v181, v185);
  v192 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v191);
  v196 = veorq_s8(vaddq_s64(v192, v188), *&STACK[0x280]);
  v197 = veorq_s8(vaddq_s64(v193, v189), *&STACK[0x280]);
  v198 = veorq_s8(vaddq_s64(v194, v190), *&STACK[0x280]);
  v199 = veorq_s8(v195, *&STACK[0x280]);
  v200 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v203 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), veorq_s8(v196, v200));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), veorq_s8(v197, v201));
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), veorq_s8(v198, v202));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v203);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v207, v207), *&STACK[0x270]), v207), *&STACK[0x260]), *&STACK[0x250]);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v206, v206), *&STACK[0x270]), v206), *&STACK[0x260]), *&STACK[0x250]);
  v210 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205, v205), *&STACK[0x270]), v205), *&STACK[0x260]), *&STACK[0x250]);
  *&STACK[0x360] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v204, v204), *&STACK[0x270]), v204), *&STACK[0x260]), *&STACK[0x250]), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v77)));
  v211 = vshlq_u64(v210, vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), v77)));
  v212 = vshlq_u64(v209, vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), v77)));
  v213 = vshlq_u64(v208, vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), v77)));
  v214 = vandq_s8(v95, v76);
  v215 = vandq_s8(v94, v76);
  v216 = vandq_s8(v93, v76);
  v217 = vandq_s8(v92, v76);
  v218 = vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL);
  v222 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v221), *&STACK[0x210]), vorrq_s8(vaddq_s64(v221, *&STACK[0x240]), *&STACK[0x230]));
  v223 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v220), *&STACK[0x210]), vorrq_s8(vaddq_s64(v220, *&STACK[0x240]), *&STACK[0x230]));
  v224 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v219), *&STACK[0x210]), vorrq_s8(vaddq_s64(v219, *&STACK[0x240]), *&STACK[0x230]));
  v225 = vsubq_s64(v80, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v218), *&STACK[0x210]), vorrq_s8(vaddq_s64(v218, *&STACK[0x240]), *&STACK[0x230])));
  v226 = vsubq_s64(v80, v224);
  v227 = vsubq_s64(v80, v223);
  v228 = veorq_s8(v226, v81);
  v229 = veorq_s8(v225, v81);
  v230 = veorq_s8(v225, v82);
  v231 = veorq_s8(v226, v82);
  v232 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v231);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v233, v233), v83), v233), v84), v85);
  v235 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v232, v232), v83), v232), v84), v85);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v237 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v238 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v237);
  v240 = veorq_s8(vaddq_s64(v238, v236), v86);
  v241 = veorq_s8(v239, v86);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v243 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v244 = vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL);
  v245 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v243);
  v246 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v247 = veorq_s8(vaddq_s64(v244, v242), v246);
  v248 = veorq_s8(v245, v246);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v250 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v251 = vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL);
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v250);
  v253 = vaddq_s64(v251, v249);
  v254 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v255 = veorq_s8(v253, v254);
  v256 = veorq_s8(v252, v254);
  v257 = vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL);
  v258 = veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v259 = veorq_s8(v255, v257);
  v260 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v259);
  v262 = veorq_s8(vaddq_s64(v260, v258), v79);
  v263 = veorq_s8(v261, v79);
  v264 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL));
  v265 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v266 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v264);
  v267 = vdupq_n_s64(v63);
  v268 = veorq_s8(v266, v267);
  v269 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v265), v267);
  v270 = vdupq_n_s64(v64);
  v271 = vdupq_n_s64(a5);
  v272 = vaddq_s64(vsubq_s64(vorrq_s8(v268, v270), vorrq_s8(v268, v271)), v271);
  v273 = vdupq_n_s64(v65);
  v274 = veorq_s8(v272, v273);
  v275 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v269, v270), vorrq_s8(v269, v271)), v271), v273);
  v276 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), veorq_s8(v274, vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL)));
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL), veorq_s8(v275, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL)));
  v278 = vdupq_n_s64(v66);
  v279 = vsubq_s64(vandq_s8(vaddq_s64(v277, v277), v278), v277);
  v280 = vsubq_s64(vandq_s8(vaddq_s64(v276, v276), v278), v276);
  v281 = vdupq_n_s64(v67);
  v282 = vaddq_s64(v280, v281);
  v283 = vdupq_n_s64(v68);
  v318.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v279, v281), v283), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v77))), v213);
  v318.val[1] = veorq_s8(vshlq_u64(veorq_s8(v282, v283), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v77))), v212);
  v284 = veorq_s8(v227, v81);
  v285 = veorq_s8(v227, v82);
  v286 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v285);
  v287 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v286, v286), v83), v286), v84), v85);
  v288 = veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v289 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), v288), v86);
  v290 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL));
  v291 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v290), v246);
  v292 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL));
  v293 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292), v254);
  v294 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v295 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL), v294), v79);
  v296 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v294, 3uLL), v294, 0x3DuLL));
  v297 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v296), v267);
  v298 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v297, v270), vorrq_s8(v297, v271)), v271), v273);
  v299 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL), veorq_s8(v298, vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL)));
  v300 = vsubq_s64(v80, v222);
  v318.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v299, v299), v278), v299), v281), v283), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v77))), v211);
  v301 = veorq_s8(v300, v81);
  v302 = veorq_s8(v300, v82);
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v303, v303), v83), v303), v84), v85);
  v305 = veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL));
  v306 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v305), v86);
  v307 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL));
  v308 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), v307), v246);
  v309 = veorq_s8(v308, vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL));
  v310 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), v309), v254);
  v311 = veorq_s8(v310, vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL));
  v312 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL), v311), v79);
  v313 = veorq_s8(v312, vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL));
  v314 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), v313), v267);
  v315 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v314, v270), vorrq_s8(v314, v271)), v271), v273);
  v316 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL), veorq_s8(v315, vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL)));
  v318.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v316, v316), v278), v316), v281), v283), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), v77))), *&STACK[0x360]);
  *(a1 + a2 + v78 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v318, *&STACK[0x200])), STACK[0x370]);
  return (*(a61 + 8 * (((8 - (a2 & 0xFFFFFFF8) == v78) | (8 * (8 - (a2 & 0xFFFFFFF8) == v78))) ^ v70)))();
}

uint64_t sub_100122CB8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  v15 = (a1 + v13) | 0x600;
  v16 = a1 + v13 + 1550;
  a12 = a1 - 1710126949 * (((&a12 | 0xC53B70EA) - &a12 + (&a12 & 0x3AC48F10)) ^ 0xF7202B7A) + 1246360537;
  v17 = (*(v14 + 8 * (a1 + 770047091)))(&a12);
  return (*(v14 + 8 * (((a13 == 16257999) * (v15 ^ 0x1B21)) ^ v16)))(v17);
}

uint64_t sub_100122D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (((&a12 | 0xA6706463) + (~&a12 | 0x598F9B9C)) ^ 0x1673FC14) + 8154;
  a12 = &a9;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((10963 * (a13 == v15)) ^ 0x81Eu)))(v16);
}

uint64_t sub_100122E20@<X0>(unint64_t a1@<X8>)
{
  STACK[0x788] = a1;
  v3 = (*(v2 + 8 * (v1 + 3190)))(32, 0x103004054B5FA7DLL);
  STACK[0x768] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 - 6170) | 0x2240) - 8914)) ^ v1)))();
}

uint64_t sub_100123090()
{
  v6 = LOWORD(STACK[0x9A6]);
  if (v6 == 17168)
  {
    goto LABEL_4;
  }

  if (v6 != 33980)
  {
    if (v6 != 20706)
    {
LABEL_5:
      STACK[0x8A8] = 0;
      LODWORD(STACK[0x654]) = v3;
      return (*(v4 + 8 * ((v5 - 4450) | (8 * (*STACK[0x8D8] != 0)))))();
    }

LABEL_4:
    STACK[0x898] = v1;
    goto LABEL_5;
  }

  v8 = STACK[0x778];
  STACK[0x898] = v1;
  LODWORD(STACK[0x654]) = v0;
  return (*(v4 + 8 * (((v8 + v2 == 0) * ((v5 ^ 0x1E8C) - 2180)) ^ (v5 - 3172))))();
}

uint64_t sub_100123314(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v9 = v3 - 32;
  v10 = v8 + v9;
  v11 = *(v10 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = vaddq_s8(vaddq_s8(*(v10 - 15), a3), vmvnq_s8(vandq_s8(vaddq_s8(*(v10 - 15), *(v10 - 15)), a2)));
  *(v12 - 31) = vaddq_s8(vaddq_s8(v11, a3), vmvnq_s8(vandq_s8(vaddq_s8(v11, v11), a2)));
  return (*(v7 + 8 * (((v4 != 32) * v6) ^ v5)))();
}

uint64_t sub_100123320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, unint64_t a16, uint64_t a17, uint64_t a18)
{
  v24 = 956911519 * (((v22 | 0xCD8CA08E736A275ELL) - (v22 & 0xCD8CA08E736A275ELL)) ^ 0x88BAD55299FB575BLL);
  a14 = v24 ^ 0x3FE;
  a16 = v20 - ((2 * v20) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v24;
  a17 = a10;
  (*(v21 + 76792))(&a14);
  v25 = 1824088897 * (((v22 ^ 0xE3E88C7A) & 0xE4C438AC | ~(v22 ^ 0xE3E88C7A | 0xE4C438AC)) ^ 0xA0BA984B);
  a17 = v18;
  a18 = a10;
  a14 = v25 + 3757;
  LODWORD(a16) = ((2 * v19) & 0xFFDDF774) - v25 + (v19 ^ 0x7FEEFBBA) - 826937648;
  v26 = (*(v21 + 77048))(&a14);
  return (*(v21 + 8 * ((8 * (a15 != v23)) | 0x1791u)))(v26);
}

uint64_t sub_10012356C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x5E8] = v1;
  STACK[0x6A0] = 0;
  STACK[0x720] = 0;
  if (a1)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((((v2 ^ v5) & 1) * (v2 ^ 0x21EF)) ^ v2)))();
}

uint64_t sub_1001235D0()
{
  v9 = *(v8 + 8 * v5);
  v10 = *v6;
  v11 = __ROR8__((v10 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = (v11 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v13 = __ROR8__((v11 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v14 = (v3 - ((v13 + v12) | v3) + ((v13 + v12) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v1 - ((v16 + v15) | v1) + ((v16 + v15) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5963B6C555D97F1FLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v0 - ((v21 + v20) | v0) + ((v21 + v20) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) & 0x95D159776768EC9ALL) - (v24 + v23) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xD800CF627F7DCE02) - (v27 + v26) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  *(v10 + 4) = v7 ^ 0x98 ^ (((((2 * (v30 + v29)) & 0x4CC31BBC7D14A244) - (v30 + v29) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v10 + 4) & 7)));
  v31 = __ROR8__((v10 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((2 * (v31 - 0x6AF7234D0CC131D5)) | 0x3E48AF211110F5F6) - (v31 - 0x6AF7234D0CC131D5) - 0x1F24579088887AFBLL;
  v33 = v32 ^ 0x56CD15ABE79E9D29;
  v32 ^= 0xFE8BF03C7E68EC75;
  v34 = __ROR8__(v33, 8);
  v35 = (((2 * (v34 + v32)) & 0x42379E9795A534D6) - (v34 + v32) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0xF087926224A8E20ALL) - (v37 + v36) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x5963B6C555D97F1FLL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x61459D2AF01F24F7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0x8BD1FBA0C354CF8ELL) - (v44 + v43) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  *(v10 + 5) = v4 ^ 0x9E ^ (((v2 - (v48 | v2) + (v48 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v10 + 5) & 7)));
  return v9();
}

uint64_t sub_100123B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 - 2098) | 0x820;
  v6 = ((1037 * (v5 ^ 0xA39u)) ^ 0xFFFFFFFFFFFFF3D8) + v2;
  *(a1 + v6) = *(a2 + v6);
  return (*(v4 + 8 * ((118 * (v6 != 0)) ^ v5)))();
}

uint64_t sub_100123BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((2 * (&a12 & 0x1A458CB8) - &a12 + 1706718021) ^ 0x57A128D5);
  v15 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((2599 * (a13 == (v14 ^ 0xF80FEA))) ^ 0x466u)))(v15);
}

uint64_t sub_100123CB4@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x7F8] = v2;
  LODWORD(STACK[0x6DC]) = STACK[0x660];
  return (*(a1 + 8 * (((STACK[0x440] != 0) * ((a2 ^ 0x2124) - 653 + 377 * (a2 ^ 0x2124))) ^ a2)))();
}

void sub_100123D04()
{
  LODWORD(STACK[0x47C]) = v1;
  LODWORD(STACK[0x754]) = 197499219;
  LODWORD(STACK[0x6C4]) = 197499219;
  LODWORD(STACK[0x3D4]) = v2;
  STACK[0x728] = v0;
  JUMPOUT(0x1001756A0);
}

uint64_t sub_100124450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int *a40, void *a41)
{
  v49 = v44 - 9486;
  v50 = ((v44 ^ 0x369F) - 1468873879) & 0x578D2FEF;
  *v43 = v42 + 1;
  v51 = ((v41 ^ (v41 >> 11) ^ v49) << 7) & 0x9D2C5680 ^ v41 ^ (v41 >> 11) ^ v49;
  v52 = (v50 - 272238314) & (v51 << 15) ^ v51 ^ ((((v50 - 272238314) & (v51 << 15) ^ v51) + ((-(((v49 ^ 0xFFFFFFFFFFFFEC00) + v42) ^ ((v49 ^ 0xFFFFEC00) + v42)) | ((v49 ^ 0xFFFFFFFFFFFFEC00) + v42)) > (v44 ^ 0xFFFFFFFFFFFFDAF1))) >> 18);
  v53 = v48 - 184 + (v47 - 1);
  v54 = -778651209 * ((*(*a41 + (*a40 & 0xFFFFFFFFE234C000)) ^ v53) & 0x7FFFFFFF);
  v55 = -778651209 * (v54 ^ HIWORD(v54));
  v56 = *(*(v46 + 8 * (v50 - 1723)) + (v55 >> 24) - 6);
  v57 = *(*(v46 + 8 * (v50 - 1415)) + (v55 >> 24) - 8);
  v58 = (v52 + ~((v50 - 11204 + ((v50 - 639015355) & 0x2616B7DE)) & (2 * v52)) + 27) ^ *(*(v46 + 8 * (v50 - 1478)) + (v55 >> 24)) ^ v56 ^ v57 ^ v55 ^ (105 * (v55 >> 24));
  LODWORD(v55) = ((v52 + ~(((((v44 ^ 0x9F) + 105) & 0xEF) + 60 + (((((v44 ^ 0x9F) + 105) & 0xEF) + 69) & 0xDE)) & (2 * v52)) + 27) ^ *(*(v46 + 8 * (v50 - 1478)) + (v55 >> 24)) ^ v56 ^ v57 ^ v55 ^ (105 * BYTE3(v55)));
  *v53 = v58 ^ 0x1A;
  return (*(v45 + 8 * ((481 * (v47 == (v55 != 26))) ^ v50)))();
}

uint64_t sub_1001246A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x418] = 0;
  STACK[0x8B0] = 0;
  v67 = (*(v66 + 8 * (v64 ^ 0x3AC5)))(8, 0x1000040789AEA99);
  HIDWORD(a50) = v65 - 5;
  return (*(a64 + 8 * (((v67 != 0) * ((v64 ^ 0xFFFFE325) + v64 - 7062)) ^ v64)))(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_100124720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a16 = &a13;
  a18 = 1317436891 * ((2 * (&a16 & 0x45E4F548) - &a16 + 974850738) ^ 0x8A1892C4) + 8154;
  v21 = (*(v19 + 77096))(&a16);
  return (*(v19 + 8 * ((9055 * (a17 == v20)) ^ v18)))(v21);
}

uint64_t sub_1001247A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v20 = v10 + v9 + 0x5841187443210861;
  v21 = (v14 - 2335) | 0x8D1;
  v22 = v12 - 1;
  v23 = __ROR8__((a6 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((13 * (v21 ^ 0xF15u)) ^ a7) - ((v23 + 0x1508DCB2F33ECE2BLL) | 0xE79B7CAD81EAE601) - ((v17 - v23) | 0x186483527E1519FELL);
  v25 = v24 ^ 0x518DC1691103FE2CLL;
  v26 = v24 ^ v18;
  v27 = (__ROR8__(v25, 8) + v26) ^ a2;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__(((v8 & (2 * (v29 + v28))) - (v29 + v28) + a3) ^ v15, 8);
  v31 = ((v8 & (2 * (v29 + v28))) - (v29 + v28) + a3) ^ v15 ^ __ROR8__(v28, 61);
  v32 = (v30 + v31) ^ 0x5963B6C555D97F1FLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x61459D2AF01F24F7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((v36 + v35) & v11 ^ v13) + ((v36 + v35) ^ a4) - (((v36 + v35) ^ a4) & v11)) ^ a8;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x1A2AEBE44253AF03;
  *(a1 + v22 + v20) = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0xAB3042D228875C41) >> (8 * ((a6 + v22) & 7))) ^ *(a6 + v22);
  return (*(v19 + 8 * (((v22 != 0) * v16) ^ v21)))();
}

uint64_t sub_100124AA0()
{
  LODWORD(STACK[0x544]) = 16257999;
  *STACK[0x490] = STACK[0x838];
  return (STACK[0x5E0])();
}

uint64_t sub_100124AD0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  v15 = (a1 - 1821789103) & 0x215EDEFA;
  v16 = v13 + a1 + 2807;
  a12 = a1 - 1710126949 * ((((2 * &a12) | 0xAB871382) - &a12 - 1438878145) ^ 0x67D8D251) - 785605666;
  v17 = (*(v14 + 8 * (a1 ^ 0x4B37A488u)))(&a12);
  return (*(v14 + 8 * ((208 * (a13 == (v15 ^ 0xF807B7))) ^ v16)))(v17);
}

uint64_t sub_100124B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 8);
  STACK[0x6B8] = *(a4 + 8 * v4);
  return sub_1001893F0(a4, v6);
}

void sub_100124BD8(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  STACK[0x638] = STACK[0x5F8];
  STACK[0x6D0] = *(a1 + 8 * a2);
  JUMPOUT(0x1000C3388);
}

void sub_100124C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  *&STACK[0x380] = vdupq_n_s64(0x38uLL);
  *&STACK[0x390] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x360] = vdupq_n_s64(v12);
  *&STACK[0x370] = vdupq_n_s64(a5);
  *&STACK[0x340] = vdupq_n_s64(v7);
  *&STACK[0x350] = vdupq_n_s64(a6);
  *&STACK[0x320] = vdupq_n_s64(v9);
  *&STACK[0x330] = vdupq_n_s64(v11);
  *&STACK[0x300] = vdupq_n_s64(v10);
  *&STACK[0x310] = vdupq_n_s64(v8);
  *&STACK[0x2E0] = vdupq_n_s64(0xF2620266DFD8DE82);
  *&STACK[0x2F0] = vdupq_n_s64(a7);
  *&STACK[0x2C0] = vdupq_n_s64(0x2E1F491EE3CE2388uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x5C3E923DC79C4710uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x97A1B9D365930275);
  *&STACK[0x280] = vdupq_n_s64(0x3622E24BF0DE3A9EuLL);
  *&STACK[0x290] = vdupq_n_s64(0x93BA3B681E438AC2);
  *&STACK[0x270] = vdupq_n_s64(0x3102FDB0D852CBCuLL);
  *&STACK[0x3A0] = xmmword_100382E40;
  JUMPOUT(0x100124D64);
}

uint64_t sub_1001257A8(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v25 = a11 - 16;
  v26.i64[0] = a14 + v25 - 15;
  v26.i64[1] = a14 + v25 - 16;
  v27.i64[0] = a14 + v25 - 13;
  v27.i64[1] = a14 + v25 - 14;
  v28.i64[0] = a14 + v25 - 11;
  v28.i64[1] = a14 + v25 - 12;
  v29.i64[0] = a14 + v25 - 7;
  v29.i64[1] = a14 + v25 - 8;
  v30.i64[0] = a14 + v25 - 5;
  v30.i64[1] = a14 + v25 - 6;
  v31.i64[0] = a14 + v25 - 3;
  v31.i64[1] = a14 + v25 - 4;
  v32.i64[0] = a14 + v25 - 1;
  v32.i64[1] = a15 + v25 + a12;
  v33 = vandq_s8(v32, a1);
  v34 = vandq_s8(v31, a1);
  v35 = vandq_s8(v30, a1);
  v36 = vandq_s8(v29, a1);
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), a3);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), a3);
  v41 = veorq_s8(v40, a4);
  v42 = veorq_s8(v39, a4);
  v43 = veorq_s8(v39, a5);
  v44 = veorq_s8(v40, a5);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v44);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v43);
  v47 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v45, a6), vorrq_s8(v45, a7)), a7), a8);
  v48 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v46, a6), vorrq_s8(v46, a7)), a7), a8);
  v49 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v50 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), v17);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), v17);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = vaddq_s64(v56, v54);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v57, v18), vorrq_s8(v57, v19)), v19), v20);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, v18), vorrq_s8(v58, v19)), v19), v20);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v62 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v61), v21);
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62), v21);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v66 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v67 = veorq_s8(v63, v65);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = veorq_s8(vaddq_s64(v68, v66), v22);
  v71 = veorq_s8(v69, v22);
  v72 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v73 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v74 = veorq_s8(v70, v72);
  v75 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74);
  v77 = veorq_s8(vaddq_s64(v75, v73), v23);
  v78 = veorq_s8(v76, v23);
  v79 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v79.i64[0] = a14 + v25 - 9;
  v79.i64[1] = a14 + v25 - 10;
  v82 = vaddq_s64(v37, a3);
  v170.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v170.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v80), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v83 = veorq_s8(v82, a4);
  v84 = veorq_s8(v82, a5);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v84);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, a6), vorrq_s8(v85, a7)), a7), a8);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), v17);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v90, v18), vorrq_s8(v90, v19)), v19), v20);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v21);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v22);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v23);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL)));
  v99 = vandq_s8(v79, a1);
  v100 = vaddq_s64(v38, a3);
  v170.val[1] = vshlq_u64(veorq_s8(v98, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v101 = veorq_s8(v100, a4);
  v102 = veorq_s8(v100, a5);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v103, a6), vorrq_s8(v103, a7)), a7), a8);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v17);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, v18), vorrq_s8(v108, v19)), v19), v20);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v21);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v22);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v23);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v118 = vandq_s8(v28, a1);
  v119 = vaddq_s64(v117, v116);
  v120 = vandq_s8(v27, a1);
  v170.val[0] = vshlq_u64(veorq_s8(v119, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v121 = vandq_s8(v26, a1);
  v122 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v124 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v126 = vaddq_s64(v123, a3);
  v127 = vaddq_s64(v122, a3);
  v123.i64[0] = vqtbl4q_s8(v170, *&STACK[0x3D0]).u64[0];
  v170.val[0] = veorq_s8(v127, a4);
  v170.val[1] = veorq_s8(v126, a4);
  v128 = veorq_s8(v126, a5);
  v170.val[2] = veorq_s8(v127, a5);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), v170.val[2]);
  v170.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v128);
  v170.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170.val[0], a6), vorrq_s8(v170.val[0], a7)), a7), a8);
  v170.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170.val[1], a6), vorrq_s8(v170.val[1], a7)), a7), a8);
  v129 = veorq_s8(v170.val[1], vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v170.val[2] = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL));
  v170.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v129), v17);
  v170.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), v170.val[2]), v17);
  v170.val[3] = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v130 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL));
  v170.val[2] = veorq_s8(v170.val[1], v170.val[3]);
  v170.val[3] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v170.val[2]);
  v170.val[1] = vaddq_s64(v170.val[3], v130);
  v170.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170.val[0], v18), vorrq_s8(v170.val[0], v19)), v19), v20);
  v170.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170.val[1], v18), vorrq_s8(v170.val[1], v19)), v19), v20);
  v131 = veorq_s8(v170.val[1], vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v170.val[2] = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL));
  v170.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v131), v21);
  v170.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), v170.val[2]), v21);
  v170.val[3] = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v132 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL));
  v170.val[2] = veorq_s8(v170.val[1], v170.val[3]);
  v170.val[3] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v170.val[2]);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[3], v132), v22);
  v170.val[0] = veorq_s8(v170.val[0], v22);
  v170.val[3] = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v133 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL));
  v170.val[2] = veorq_s8(v170.val[1], v170.val[3]);
  v170.val[3] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v170.val[2]);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[3], v133), v23);
  v170.val[0] = veorq_s8(v170.val[0], v23);
  v134 = vaddq_s64(v124, a3);
  v170.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), veorq_s8(v170.val[1], vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), a2)));
  v170.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v135 = veorq_s8(v134, a4);
  v136 = veorq_s8(v134, a5);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v137, a6), vorrq_s8(v137, a7)), a7), a8);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v17);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v142, v18), vorrq_s8(v142, v19)), v19), v20);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), v21);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), v22);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v23);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL)));
  v151 = vaddq_s64(v125, a3);
  v170.val[1] = vshlq_u64(veorq_s8(v150, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a2)));
  v152 = veorq_s8(v151, a4);
  v153 = veorq_s8(v151, a5);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v154, a6), vorrq_s8(v154, a7)), a7), a8);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), v17);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v159, v18), vorrq_s8(v159, v19)), v19), v20);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v21);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v22);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v23);
  v170.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL))), v24), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), a2)));
  v123.i64[1] = vqtbl4q_s8(v170, *&STACK[0x3D0]).u64[0];
  v167 = vrev64q_s8(*v26.i64[1]);
  v165.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v165.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v168 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v167, v167, 8uLL), v165), v123));
  *(a16 + v25) = vextq_s8(v168, v168, 8uLL);
  return (*(STACK[0x3E8] + 8 * (((a13 == v25) * v16) ^ a10)))();
}

uint64_t sub_100125884(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16215947)
  {
    v6 = (v4 - 5147) | 0xB0;
    v7 = STACK[0x6F0];
    LODWORD(STACK[0x5C4]) = (v6 + 1473588146) * *(STACK[0x6F0] + 16) - 516596334;
  }

  else
  {
    if (a4 != 16257999)
    {
      LODWORD(STACK[0x794]) = a4;
      JUMPOUT(0x10003BD34);
    }

    v6 = STACK[0x3F8] ^ 0x3495;
    v7 = STACK[0x6F0];
  }

  v8 = *v7;
  STACK[0x660] = 0;
  STACK[0x820] = 0;
  return (*(v5 + 8 * (((v8 == 0) * ((((v6 ^ 0x11A5) + 543) ^ 0xFFFFDF6A) + 34 * (v6 ^ 0x11A5))) ^ v6)))(a1, a2, a3, 16215976);
}

void sub_100125D24(unsigned int a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v10 = STACK[0xC3A];
  v11 = (a5 & 0xF) * v6;
  LOBYTE(STACK[0xC3A]) = *(v9 + (v11 + 478792) % ((v11 + 478792) & 0x3C8 | (439 - v11) & v8));
  *(v9 + (v11 + 478792 - ((4432371 * (v11 + 478792)) >> 32) * v8)) = v10;
  v12 = STACK[0xF42];
  v13 = a3 % 0xF * v6 + 479568 - ((4432371 * (a3 % 0xF * v6 + 479568)) >> 32) * v8;
  LOBYTE(STACK[0xF42]) = *(v9 + v13);
  v14 = a3 + 1501470859;
  *(v9 + v13) = v12;
  v15 = v5 % 0xE * v6 + 480344 - ((4432371 * (v5 % 0xE * v6 + 480344)) >> 32) * v8;
  LOBYTE(v13) = STACK[0xE81];
  v16 = v14 + v5;
  LOBYTE(STACK[0xE81]) = *(v9 + v15);
  v17 = a1 % 0xD;
  v18 = a5 + v14 + v5 + 76858707;
  *(v9 + v15) = v13;
  LOBYTE(v13) = STACK[0xDC0];
  v19 = a1 % 0xD * v6 + 481120 - ((4432371 * (a1 % 0xD * v6 + 481120)) >> 32) * v8;
  LOBYTE(STACK[0xDC0]) = *(v9 + v19);
  *(v9 + v19) = v13;
  v20 = (v5 ^ a1) - v18;
  v21 = STACK[0xCFF];
  v22 = v18 % 0xC * v6 + 481896 - ((4432371 * (v18 % 0xC * v6 + 481896)) >> 32) * v8;
  v23 = v14 - v20;
  LOBYTE(STACK[0xCFF]) = *(v9 + v22);
  v24 = v16 ^ 0xEDCECD9F;
  *(v9 + v22) = v21;
  v25 = (v16 ^ 0xEDCECD9F) % 0xA;
  v26 = v25 + (((v23 % 0xB + 5) | (1018 - v23 % 0xB)) & 0x269);
  v27 = v23 % 0xB * v6 + 482672 - ((4432371 * (v23 % 0xB * v6 + 482672)) >> 32) * v8;
  v28 = STACK[0xC3E];
  LOBYTE(STACK[0xC3E]) = *(v9 + v27);
  *(v9 + v27) = v28;
  LOBYTE(v27) = STACK[0xF46];
  v29 = v20 % 9;
  LOBYTE(STACK[0xF46]) = *(v9 + (v25 * v6 + 483448 - ((4432371 * (v25 * v6 + 483448)) >> 32) * v8));
  *(v9 + (v26 * v6 + 4656 - ((4432371 * (v26 * v6 + 4656)) >> 32) * v8)) = v27;
  v30 = v20 - v23;
  v31 = (v20 - v23) ^ v18;
  v32 = STACK[0xE85];
  v33 = (v29 & 8 | 0x200 | v29 & 8 ^ 0x108) * (v29 | 0x270);
  LOBYTE(STACK[0xE85]) = *(v9 + (v33 - ((4432371 * v33) >> 32) * v8));
  v31 -= 1194124740;
  *(v9 + (v29 * v6 + 484224 - ((4432371 * (v29 * v6 + 484224)) >> 32) * v8)) = v32;
  v34 = (v31 & 7) * v6 + 485000 - ((4432371 * ((v31 & 7u) * v6 + 485000)) >> 32) * v8;
  v35 = (v30 ^ v24) + 1675149192;
  v36 = v35 + (v23 ^ v24);
  LOBYTE(v29) = *(v9 + 500);
  LOBYTE(STACK[0xDC4]) = *(v9 + v34);
  *(v9 + v34) = v29;
  v37 = (-2117439599 * (((2147483021 - v36 % 7) & 0x4491BC05) + ((v36 % 7 + 626) & 0x25)) - 558995693) * (v36 % 7 + 626);
  LOBYTE(v26) = STACK[0xD03];
  LOBYTE(STACK[0xD03]) = *(v9 + v37 - (((v37 * v7) >> 32) >> 9) * v8);
  *(v9 + (v36 % 7 * v6 + 485776 - ((4432371 * (v36 % 7 * v6 + 485776)) >> 32) * v8)) = v26;
  v38 = v35 % 6 * v6 + 486552 - ((4432371 * (v35 % 6 * v6 + 486552)) >> 32) * v8;
  v39 = (v30 ^ 0xAEC46AD2) % 5;
  LOBYTE(v30) = STACK[0xC42];
  v36 += 1600322197;
  LOBYTE(STACK[0xC42]) = *(v9 + v38);
  *(v9 + v38) = v30;
  v40 = v39 * v6 + 487328 - ((4432371 * (v39 * v6 + 487328)) >> 32) * v8;
  LOBYTE(v38) = v36 + v31;
  LOBYTE(v26) = STACK[0xF4A];
  LOBYTE(STACK[0xF4A]) = *(v9 + v40);
  *(v9 + v40) = v26;
  v41 = ((v36 + v31) & 3) * v6 + 488104;
  v42 = v41 - ((4432371 * v41) >> 32) * v8;
  LOBYTE(v26) = STACK[0xE89];
  LOBYTE(STACK[0xE89]) = *(v9 + v42);
  *(v9 + v42) = v26;
  v43 = v35 ^ v31;
  LOBYTE(v35) = STACK[0xDC8];
  v44 = (v36 - v43) % 3 * v6 + 488880 - ((4432371 * ((v36 - v43) % 3 * v6 + 488880)) >> 32) * v8;
  LOBYTE(STACK[0xDC8]) = *(v9 + v44);
  v45 = ((v43 - v38) & 1) + 631;
  *(v9 + v44) = v35;
  LOBYTE(v35) = STACK[0xD07];
  LOBYTE(STACK[0xD07]) = *(v9 + (v45 * v6 - ((4432371 * (v45 * v6)) >> 32) * v8));
  *(v9 + (v45 * (((1020 - v17) | (v17 + 3)) & v6) - ((4432371 * (v45 * (((1020 - v17) | (v17 + 3)) & v6))) >> 32) * v8)) = v35;
  JUMPOUT(0x100126234);
}

uint64_t sub_100126378@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = (4 * (v4 ^ 0x26C4) - 43327669) & 0x2952F7E;
  v6 = (*(v3 + 8 * (v4 + 543)))(**(v2 + 8 * (v4 - 8879)), va, ((((a1 - 1042051496 + v5) & 0xFFFFF000 ^ 0x1805A03C) + 1499585886) ^ (((a1 - 1042051496 + v5) & 0xFFFFF000 ^ 0xDBBB22FA) - 1696637028) ^ (((a1 - 1042051496 + v5) & 0xFFFFF000 ^ 0xC3BE82C6) - 2099576920)) - 1097104738, 1) != 0;
  return (*(v3 + 8 * ((74 * v6) ^ v4)))();
}

void sub_100126568()
{
  STACK[0x6B8] = 0;
  STACK[0x500] = *(v0 + 8 * (v1 - 6050));
  JUMPOUT(0x10012659CLL);
}

uint64_t sub_1001265A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v5 + (158 * a4 + 3002 - 969 * (((158 * a4 + 3002) & 0xFFFEu) / 0x3C9))) = a4 - ((2 * a4) & 0x10) + 25;
  *(v5 + (158 * a4 + 3160 - 969 * (((158 * a4 + 3160) & 0xFFFEu) / 0x3C9))) = a4 - ((a4 << (-28 * (v4 ^ 0x5E) + 113)) & 0x10) + 24;
  return (*(v6 + 8 * ((7 * (a4 == 14)) ^ v4)))();
}

uint64_t sub_1001266FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (((&a14 | 0xA288AC5F) - (&a14 & 0xA288AC5F)) ^ 0xFAE17F3D) * v21;
  a16 = a11;
  a17 = &a12;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674576994;
  a15 = v23 + 621241051;
  v24 = (*(v20 + 8 * (v22 + 7488)))(&a14);
  return (*(v20 + 8 * (((a14 == v19) * ((v22 ^ 0xCB5) + 4408)) | v22)))(v24);
}

uint64_t sub_1001267B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = 1317436891 * ((((&a15 | 0xE5B93728) ^ 0xFFFFFFFE) - (~&a15 | 0x1A46C8D7)) ^ 0xAA4550A1) + 8154;
  a15 = &a13;
  v20 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((4713 * (a16 == v19)) ^ v18)))(v20);
}

uint64_t sub_100126840()
{
  v0 = STACK[0x32C];
  v1 = LOWORD(STACK[0x8E6]);
  STACK[0x698] = STACK[0x8E8];
  return (*(STACK[0x330] + 8 * ((2860 * (v1 == 17168)) ^ (v0 + 31))))();
}

uint64_t sub_10012695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  v29 = v28 + 4981;
  a25 = &a14;
  a24 = (v29 - 5224) ^ (((2 * (&a20 & 0x53C8910) - &a20 + 2059630315) ^ 0x48D82D7B) * v26);
  a22 = a15;
  a23 = &a12;
  (*(v25 + 8 * (v29 ^ 0x401)))(&a20);
  a21 = (v29 - 5330) ^ (33731311 * ((&a20 + 602780313 - 2 * (&a20 & 0x23EDB299)) ^ 0x1A1B78BA));
  a22 = a15;
  a23 = &a17;
  (*(v25 + 8 * (v29 ^ 0x407)))(&a20);
  a22 = a15;
  LODWORD(a23) = v29 - 2008441969 * ((2 * (&a20 & 0x35529760) - &a20 + 1252878495) ^ 0x2343C91) - 2897;
  v30 = (*(v25 + 8 * (v29 ^ 0x4F5)))(&a20);
  return (*(v25 + 8 * ((173 * (a20 == (v29 ^ 0x33BA) + v27 + 19 * (v29 ^ 0x21FC))) ^ v29)))(v30);
}

uint64_t sub_100126B90()
{
  v11 = (v5 + v1) ^ ((((&v9 | 0x1965042B) - &v9 + (&v9 & 0xE69AFBD0)) ^ 0x410CD749) * v2);
  v10 = v8;
  (*(v3 + 8 * (v5 ^ (v0 + 1413))))(&v9);
  v11 = (v5 + v1) ^ (((2 * (&v9 & 0x1BA93250) - &v9 - 464073304) ^ 0xBC3F1ECA) * v2);
  v10 = v7;
  (*(v3 + 8 * (v5 + v1 + 1266)))(&v9);
  return (v4 - 16257999);
}

uint64_t sub_100126C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, int a14, uint64_t a15)
{
  v20 = v19 - 853;
  v21 = *v15 + v17;
  v22 = 1875091903 * (((&a12 | 0x5F80331A) - (&a12 & 0x5F80331A)) ^ 0x69F5B099);
  a15 = a11;
  a13 = v22 + ((v20 - 143) | 0x90) - 1752049109 + (((v21 ^ 0xAC90CBB1) + 1399796815) ^ ((v21 ^ 0x67489FBA) - 1732812730) ^ (((4 * v20) ^ 0x2BB0 ^ v21 ^ 0xBCAD77FE) + 1129486830));
  a14 = v22 + v20 + 3989;
  v23 = (*(v16 + 8 * (v20 + 5910)))(&a12);
  return (*(v16 + 8 * ((15 * (a12 != v18)) ^ v20)))(v23);
}

uint64_t sub_100126DA0(uint64_t a1)
{
  v5 = v1 - 1;
  *(v2 + v5) = *(a1 + v5) ^ 0x3C;
  return (*(v3 + 8 * ((15 * (v5 == 0)) ^ (v4 - 7073))))();
}

uint64_t sub_100126F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v25 = (((&a16 | 0x710133B) + (~&a16 | 0xF8EFECC4)) ^ 0x5F79C058) * v23;
  a17 = v25 - 1599705032;
  a18 = a14;
  a19 = &a13;
  a20 = -654855621 - v25;
  a21 = v25 + v21 + 1674574223;
  v26 = (*(v24 + 8 * (v21 + 4717)))(&a16);
  return (*(v24 + 8 * ((2668 * (a16 == (v22 ^ 0xF81524))) ^ v21)))(v26);
}

uint64_t sub_100126FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((19 * (((v4 - 58) ^ (v6 == 0)) & 1)) | (v2 + v4 + 2099))))();
}

uint64_t sub_100127034(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x584]) = a7;
  v16 = 16 * (LOBYTE(STACK[0xDF4]) ^ v14);
  v17 = 58 * (LODWORD(STACK[0x570]) ^ 0x19BC);
  LODWORD(STACK[0x580]) = v17;
  LODWORD(STACK[0x550]) = v17 ^ 0xDAD;
  LODWORD(STACK[0x54C]) = v16 ^ v14;
  v18 = STACK[0x58C];
  LODWORD(STACK[0x590]) = 16;
  v19 = 16 * LODWORD(STACK[0x550]);
  v20 = STACK[0x5A0];
  v21 = *(STACK[0x5A0] + 4 * (v19 - 2055 - (v19 - 2055) / 0x116u * v9)) ^ (v11 + 53);
  v22 = v11 + 53;
  LODWORD(STACK[0x56C]) = v11 + 53;
  HIDWORD(v23) = v21;
  LODWORD(v23) = v21;
  v24 = LODWORD(STACK[0x590]) * v10;
  v25 = *(v20 + 4 * (LOWORD(STACK[0x590]) * v10 + 26030 - (LOWORD(STACK[0x590]) * v10 + 26030) / 0x116u * v9));
  v26 = (v23 >> 7) ^ (v21 >> 3);
  HIDWORD(v23) = v25;
  LODWORD(v23) = v25;
  v27 = v23 >> 7;
  v28 = *(v20 + 4 * (v19 - 274 - (v19 - 274) / 0x116u * v9)) ^ v22;
  v29 = a3 + 315247240;
  v30 = (v25 >> 3) & 0x20000;
  HIDWORD(v23) = v28;
  LODWORD(v23) = v28;
  v31 = v23 >> 17;
  if ((v30 & v27) != 0)
  {
    v30 = -v30;
  }

  v32 = v26 ^ __ROR4__(v21, 18);
  v33 = (v25 >> 3) & 0xFFFDFFFF ^ __ROR4__(v25, 18) ^ (v30 + v27);
  v34 = *(v20 + 4 * (v24 + 27811 - (v24 + 27811) / 0x116u * v9));
  v35 = v31 ^ (v28 >> 10) ^ __ROR4__(v28, 19);
  v36 = LODWORD(STACK[0x584]) + 552306858;
  v37 = v36 ^ v29 ^ v33;
  v38 = (v34 >> 10) ^ __ROR4__(v34, 17) ^ __ROR4__(v34, 19);
  v39 = v13 + v29;
  v40 = a5 + LODWORD(STACK[0x5A8]);
  v41 = ((v32 ^ LODWORD(STACK[0x5A8])) - LODWORD(STACK[0x5A8])) ^ ((v32 ^ v8) - v8) ^ ((v37 ^ v32) - v37);
  v42 = v13 - v36;
  v43 = (v13 - v36) ^ (v18 + 1654119610);
  v44 = a5 - v8;
  v45 = (v12 + 1654119610) ^ (a5 - v8);
  v46 = v8 - v40;
  v47 = v36 - v39;
  v48 = v39 + v43;
  v49 = v43;
  LODWORD(STACK[0x588]) = v43;
  v50 = (v39 + v43) ^ v47;
  v51 = v12;
  v52 = v44 - v40;
  v53 = v45 + v40;
  LODWORD(STACK[0x58C]) = v45;
  v54 = v53 ^ v46;
  LODWORD(STACK[0x5A8]) = v53;
  LODWORD(STACK[0x560]) = v53 ^ v46 ^ v52;
  v55 = v50 ^ (v42 - v39);
  v56 = ((v38 ^ v53) - v53) ^ ((v38 ^ v54) - v54) ^ ((v35 ^ v47 ^ v38) - (v35 ^ v47));
  v57 = v50;
  LODWORD(STACK[0x57C]) = v50;
  v58 = (v48 - v50) ^ v55;
  LODWORD(STACK[0x55C]) = v58;
  v59 = v49 - v51 + *(v20 + 4 * ((v24 + 16577) % 0x116u)) + *(v20 + 4 * ((v24 + 17810) % 0x116u)) + v35 + 1448028288 + v41;
  *(v20 + 4 * ((v24 + 18769) % 0x116u)) = v59 + a8;
  v60 = *(v20 + 4 * ((v24 + 7261) % 0x116u));
  v61 = v55 + 1635391389 + v59;
  LODWORD(STACK[0x584]) = v57 - 1104613716 - v58 + (v58 & 0xD5180004) + (v58 & 0xD5180004 ^ 0xD5180004);
  v62 = *(v20 + 4 * ((v24 + 8494) % 0x116u)) - 150763033;
  v63 = ((v18 - 150763033 + v60 + v33) ^ v62) + 2 * ((v18 - 150763033 + v60 + v33) & v62) + v56 - v45;
  *(v20 + 4 * ((v24 + 9453) % 0x116u)) = v63 + v15;
  v64 = v63 - (v54 ^ v52) - 1635391389;
  v65 = ((((*(STACK[0x5B0] + (776 * (HIBYTE(v61) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v61) & 0xF) + 531560)) >> 32))) ^ v14) << 8) ^ ((*(STACK[0x5B0] + (776 * (v61 >> 28) + 531560 - 969 * ((4432371 * (776 * (v61 >> 28) + 531560)) >> 32))) ^ v14) << 12) | *(STACK[0x5B0] + (776 * (HIWORD(v61) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v61) & 0xF) + 531560)) >> 32))) ^ v14) << 8) ^ ((*(STACK[0x5B0] + (776 * ((v61 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v61 >> 20) & 0xF) + 531560)) >> 32))) ^ v14) << 12);
  v66 = v65 | *(STACK[0x5B0] + (776 * ((v61 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v61 >> 8) & 0xF) + 531560)) >> 32))) ^ v14;
  v67 = (v66 << 8) ^ ((*(STACK[0x5B0] + (776 * (v61 >> 12) + 531560 - 969 * ((4432371 * (776 * (v61 >> 12) + 531560)) >> 32))) ^ v14) << 12);
  v68 = *(STACK[0x5B0] + (776 * ((v55 - 99 + v59) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v55 - 99 + v59) & 0xFu) + 531560)) >> 32))) ^ v14;
  v69 = (v67 | v68) ^ (16 * (*(STACK[0x5B0] + (776 * ((v55 - 99 + v59) >> 4) + 531560 - 969 * ((4432371 * (776 * ((v55 - 99 + v59) >> 4) + 531560)) >> 32))) ^ v14));
  v70 = ((*(STACK[0x5B0] + (776 * (HIBYTE(v64) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v64) & 0xF) + 531560)) >> 32))) ^ v14) << 8) ^ ((*(STACK[0x5B0] + (776 * (v64 >> 28) + 531560 - 969 * ((4432371 * (776 * (v64 >> 28) + 531560)) >> 32))) ^ v14) << 12);
  v71 = ((v70 | *(STACK[0x5B0] + (776 * (HIWORD(v64) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v64) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 8) ^ ((*(STACK[0x5B0] + (776 * ((v64 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v64 >> 20) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 12);
  v72 = *(STACK[0x5B0] + (776 * (v64 >> 12) + 531560 - 969 * ((4432371 * (776 * (v64 >> 12) + 531560)) >> 32))) ^ 0xBD;
  v73 = 776 * ((v64 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v64 >> 8) & 0xF) + 531560)) >> 32);
  v74 = v64 & 0xF;
  v75 = v68 & 0xF;
  v76 = 776 * ((((v73 & 0x28C ^ 0x28C) + (v73 & 0x28C)) | 0x25) + (v64 >> 4));
  LOBYTE(v46) = *(STACK[0x5B0] + (v76 - 969 * ((4432371 * v76) >> 32)));
  v77 = ((v71 | *(STACK[0x5B0] + v73) ^ 0xBD) << 8) ^ (v72 << 12);
  v78 = *(STACK[0x5B0] + (776 * v74 + 531560 - 969 * ((4432371 * (776 * v74 + 531560)) >> 32))) ^ 0xBD;
  LOBYTE(v46) = v46 ^ ((v77 | v78) >> 4);
  v79 = 776 * (v75 & 0xFFFFFF0F | (16 * (v78 & 0xF)));
  v80 = v79 - 969 * ((4432371 * v79) >> 32);
  v81 = *(STACK[0x5B0] + (v79 + 273152 - 969 * ((4432371 * (v79 + 273152)) >> 32))) ^ LODWORD(STACK[0x54C]);
  LOBYTE(v79) = v46 ^ 0xBD;
  v82 = 776 * v81 + 273152 - 969 * ((4432371 * (776 * v81 + 273152)) >> 32);
  v83 = ((v82 & 0x308 ^ 0x308) + (v82 & 0x308)) * v81;
  v84 = (*(STACK[0x5B0] + (v83 - 969 * ((4432371 * v83) >> 32))) >> 4) ^ 0xB;
  v85 = 776 * ((v84 - ((2 * v84) & 0xFB) - 67) ^ *(STACK[0x5B0] + v80)) + 273152;
  v86 = 776 * ((v69 >> 4) | (16 * ((v46 ^ 0xBD) & 0xF)));
  v87 = *(STACK[0x5B0] + (v86 - 969 * ((4432371 * v86) >> 32)));
  v88 = 776 * (*(STACK[0x5B0] + (v86 + 273152 - 969 * ((4432371 * (v86 + 273152)) >> 32))) ^ (16 * (*(STACK[0x5B0] + (v85 - 969 * ((4432371 * v85) >> 32))) ^ 0xBD)) ^ 0xBD);
  v89 = v88 + 273152 - 969 * ((4432371 * (v88 + 273152)) >> 32);
  v90 = *(STACK[0x5B0] + (v88 - 969 * ((4432371 * v88) >> 32))) >> 4;
  v91 = ((v90 ^ 0xB) + ((2 * ((v90 ^ 0xB | 0x7D) ^ v90)) ^ 0x13) - 66) ^ v87;
  v92 = 776 * (v79 & 0xF0 | (v69 >> 8) & 0xF);
  v93 = 16 * (*(STACK[0x5B0] + (776 * v91 + 273152 - 969 * ((4432371 * (776 * v91 + 273152)) >> 32))) ^ 0xBD);
  v94 = *(STACK[0x5B0] + (v92 + 273152 - 969 * ((4432371 * (v92 + 273152)) >> 32))) ^ 0xBD;
  v95 = *(STACK[0x5B0] + (v92 - 969 * ((4432371 * v92) >> 32)));
  v96 = (v93 ^ -v93 ^ (v94 - (v93 ^ v94))) + v94;
  v97 = (((671 - v96) ^ (v96 + 352)) & 0x308) * (v96 + 352);
  v98 = *(STACK[0x5B0] + 776 * v96 % 0x3C9u) >> 4;
  v99 = 776 * (((v98 ^ 0xB) + ((2 * ((v98 ^ 0xB | 0x7D) ^ v98)) ^ 0x13) - 66) ^ v95) + 273152;
  v100 = 776 * ((v77 >> 8) & 0xF0 | (v67 >> 12));
  v101 = 776 * (*(STACK[0x5B0] + (v100 + 273152 - 969 * ((4432371 * (v100 + 273152)) >> 32))) ^ (16 * (*(STACK[0x5B0] + (v99 - 969 * ((4432371 * v99) >> 32))) ^ 0xBD)) ^ 0xBD);
  v102 = *(STACK[0x5B0] + (v101 + 273152 - 969 * ((4432371 * (v101 + 273152)) >> 32)));
  v103 = *(STACK[0x5B0] + (v101 - 969 * ((4432371 * v101) >> 32))) >> 4;
  v104 = ((v102 ^ 0xBD) << 12) ^ ((*(STACK[0x5B0] + v97 % 0x3C9) ^ 0xBD) << 8);
  v105 = 776 * (((v103 ^ 0xB) + ((2 * ((v103 ^ 0xB | 0x7D) ^ v103)) ^ 0x13) - 66) ^ *(STACK[0x5B0] + (v100 - 969 * ((4432371 * v100) >> 32)))) + 273152;
  v106 = 776 * ((v77 >> 12) & 0xF0 | HIWORD(v67) & 0xF);
  v107 = 776 * (*(STACK[0x5B0] + (v106 + 273152 - 969 * ((4432371 * (v106 + 273152)) >> 32))) ^ (16 * (*(STACK[0x5B0] + (v105 - 969 * ((4432371 * v105) >> 32))) ^ 0xBD)) ^ 0xBD);
  v108 = v107 + 273152 - 969 * ((4432371 * (v107 + 273152)) >> 32);
  v109 = *(STACK[0x5B0] + (v107 - 969 * ((4432371 * v107) >> 32))) >> 4;
  v110 = 776 * (((v109 ^ 0xB) + ((2 * ((v109 ^ 0xB | 0x7D) ^ v109)) ^ 0x13) - 66) ^ *(STACK[0x5B0] + (v106 - 969 * ((4432371 * v106) >> 32)))) + 273152;
  v111 = 776 * ((v71 >> 8) & 0xF0 | (v65 >> 12));
  v112 = 776 * (*(STACK[0x5B0] + (v111 + 273152 - 969 * ((4432371 * (v111 + 273152)) >> 32))) ^ (16 * (*(STACK[0x5B0] + (v110 - 969 * ((4432371 * v110) >> 32))) ^ 0xBD)) ^ 0xBD);
  v113 = v112 + 273152 - 969 * ((4432371 * (v112 + 273152)) >> 32);
  v114 = *(STACK[0x5B0] + (v112 - 969 * ((4432371 * v112) >> 32))) >> 4;
  v115 = 776 * (((v114 ^ 0xB) + ((2 * ((v114 ^ 0xB | 0x7D) ^ v114)) ^ 0x13) - 66) ^ *(STACK[0x5B0] + (v111 - 969 * ((4432371 * v111) >> 32)))) + 273152;
  v116 = 776 * ((v71 >> 12) & 0xF0 | HIWORD(v65) & 0xF);
  v117 = 776 * (*(STACK[0x5B0] + (v116 + 273152 - 969 * ((4432371 * (v116 + 273152)) >> 32))) ^ (16 * (*(STACK[0x5B0] + (v115 - 969 * ((4432371 * v115) >> 32))) ^ 0xBD)) ^ 0xBD);
  v118 = v117 + 273152 - 969 * ((4432371 * (v117 + 273152)) >> 32);
  v119 = *(STACK[0x5B0] + (v117 - 969 * ((4432371 * v117) >> 32))) >> 4;
  v120 = ((v119 ^ 0xB) + ((2 * ((v119 ^ 0xB | 0x7D) ^ v119)) ^ 0x13) - 66) ^ *(STACK[0x5B0] + (v116 - 969 * ((4432371 * v116) >> 32)));
  v121 = 776 * ((v70 >> 8) & 0xF0 | (v66 >> 20) & 0xF) + 273152;
  v122 = 776 * (*(STACK[0x5B0] + (v121 - 969 * ((4432371 * v121) >> 32))) ^ (16 * (*(STACK[0x5B0] + (776 * v120 + 273152 - 969 * ((4432371 * (776 * v120 + 273152)) >> 32))) ^ 0xBD)) ^ 0xBD) + 273152;
  v123 = v122 - 969 * ((4432371 * v122) >> 32);
  v124 = *(STACK[0x5B0] + v82) ^ 0xBD;
  v125 = v124 ^ (16 * (*(STACK[0x5B0] + v89) ^ 0xBD));
  v126 = 776 * ((v75 & 0xFFFFFF0F | (16 * (v124 & 0xF))) + 709);
  *(v20 + 4 * (v24 % 0x116u)) = LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x56C]) ^ v61;
  v127 = 776 * (v125 & 0xF0 | (v69 >> 4)) + 550184;
  v128 = v127 - 969 * ((4432371 * v127) >> 32);
  v129 = v104 ^ v125 ^ ((*(STACK[0x5B0] + v108) ^ 0xBD) << 16);
  v130 = ((v104 ^ v125) >> 4) & 0xF0 | (v69 >> 8) & 0xF;
  v131 = 776 * v130 + 550184 - 969 * ((4432371 * (776 * v130 + 550184)) >> 32);
  v132 = 776 * ((v104 >> 8) & 0xF0 | (v67 >> 12)) + 550184;
  v133 = v132 - 969 * ((4432371 * v132) >> 32);
  v134 = v129 ^ ((*(STACK[0x5B0] + v113) ^ 0xBD) << 20);
  v135 = v134 ^ ((*(STACK[0x5B0] + v118) ^ 0xBD) << 24);
  v136 = 776 * ((v129 >> 12) & 0xF0 | HIWORD(v67) & 0xF) + 550184;
  v137 = 776 * (HIWORD(v134) & 0xF0 | (v65 >> 12)) + 550184;
  v138 = v137 - 969 * ((4432371 * v137) >> 32);
  v139 = *(STACK[0x5B0] + (v126 - 969 * ((4432371 * v126) >> 32)));
  v140 = *(STACK[0x5B0] + v128);
  v141 = 776 * ((v135 >> 20) & 0xF0 | HIWORD(v65) & 0xF) + 550184;
  v142 = v141 - 969 * ((4432371 * v141) >> 32);
  v143 = v139 ^ (16 * (v140 ^ 0xBD)) ^ 0xBD;
  v144 = v143 ^ ((*(STACK[0x5B0] + v131) ^ 0xBD) << 8);
  v145 = v144 ^ ((*(STACK[0x5B0] + v133) ^ 0xBD) << 12);
  v146 = v145 ^ ((*(STACK[0x5B0] + (v136 - 969 * ((4432371 * v136) >> 32))) ^ 0xBD) << 16);
  v147 = v146 ^ ((*(STACK[0x5B0] + v138) ^ 0xBD) << 20);
  v148 = 776 * (((v135 ^ ((*(STACK[0x5B0] + v123) ^ 0xFFFFFFFD) << 28)) >> 24) & 0xF0 | (v66 >> 20) & 0xF) + 550184;
  v149 = v147 ^ ((*(STACK[0x5B0] + v142) ^ 0xBD) << 24);
  v150 = (v149 ^ ((*(STACK[0x5B0] + (v148 - 969 * ((4432371 * v148) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28;
  v151 = ((((((*(STACK[0x5B0] + (776 * (HIBYTE(v149) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v149) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 8) ^ ((*(STACK[0x5B0] + (776 * v150 + 204088 - 969 * ((4432371 * (776 * v150 + 204088)) >> 32))) ^ 0xBD) << 12) | *(STACK[0x5B0] + (776 * (HIWORD(v146) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v146) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 8) ^ ((*(STACK[0x5B0] + (776 * ((v147 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v147 >> 20) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 12) | *(STACK[0x5B0] + (776 * ((v144 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v144 >> 8) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 8) ^ ((*(STACK[0x5B0] + (776 * (v145 >> 12) + 204088 - 969 * ((4432371 * (776 * (v145 >> 12) + 204088)) >> 32))) ^ 0xBD) << 12);
  v152 = LODWORD(STACK[0x560]) ^ (LODWORD(STACK[0x5A8]) - v54);
  v153 = v54 + LODWORD(STACK[0x58C]) + 1640849244;
  *(v20 + 4 * ((v24 + 28085) % 0x116u)) = v152 ^ (16 * (*(STACK[0x5B0] + (776 * (v143 >> 4) + 204088 - 969 * ((4432371 * (776 * (v143 >> 4) + 204088)) >> 32))) ^ 0xBD)) ^ (v151 | *(STACK[0x5B0] + (776 * (v139 & 0xF ^ 0xD) + 204088 - 969 * ((4432371 * (776 * (v139 & 0xF ^ 0xDu) + 204088)) >> 32))) ^ 0xBD);
  v154 = LODWORD(STACK[0x590]) == 63;
  LODWORD(STACK[0x5A8]) = (v153 + v152) ^ 0x2FA912B9;
  return (*(STACK[0x598] + 8 * ((14 * v154) ^ LODWORD(STACK[0x570]))))();
}

uint64_t sub_100127FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v5 + 4413)))(LODWORD(STACK[0x7F4]) ^ 0xBC59953u, 0x100004077774924);
  v7 = STACK[0x3E8];
  STACK[0x988] = v6;
  if (v6)
  {
    v8 = 16257999;
  }

  else
  {
    v8 = v4;
  }

  LODWORD(STACK[0x994]) = v8;
  return (*(v7 + 8 * ((59 * (((v5 + 69) ^ 0xCF ^ (v6 == 0)) & 1)) ^ (v5 + 4259))))();
}

uint64_t sub_100128070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x5C8] = 0;
  STACK[0x570] = 0;
  STACK[0x848] = *(a4 + 8 * v4);
  return sub_1001A2228();
}

uint64_t sub_100128090()
{
  STACK[0x350] = 0;
  *STACK[0x5F8] = STACK[0x350];
  return (STACK[0x408])();
}

uint64_t sub_1001280B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 + 673) ^ (33731311 * ((((2 * &a15) | 0x49337358) - &a15 - 614054316) ^ 0x1D6F738F));
  a17 = a13;
  a18 = &a11;
  (*(v20 + 8 * (v18 + 7022)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * ((&a15 + 305549332 - 2 * (&a15 & 0x12365014)) ^ 0x5AAF041A) + 3106;
  a17 = a13;
  v21 = (*(v20 + 8 * (v18 + 7072)))(&a15);
  return (*(v20 + 8 * ((6647 * (a15 == v19 + v18 - 1534 - 1021)) ^ v18)))(v21);
}

uint64_t sub_1001281FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((((2 * &a14) | 0xABFA40F6) - &a14 - 1442652283) ^ 0xE5FEB80D) + 8154;
  a14 = &a12;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((2918 * (a15 == 16257999)) ^ v17)))(v18);
}

uint64_t sub_1001282D4@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  STACK[0x6E8] = a1;
  v59 = (*(v58 + 8 * ((v57 + 2760) ^ 0x2B87)))(32, 0x103004054B5FA7DLL);
  STACK[0x4C0] = v59;
  return (*(a57 + 8 * (((v59 == 0) * (((v57 - 851) | 0xA40) ^ ((v57 + 4263) | 0x150) ^ 0x1F9D)) ^ (v57 + 2760))))();
}

void sub_1001283A4()
{
  *(v1 - 240) = *v0;
  *(v1 - 239) = v0[1];
  *(v1 - 238) = v0[2];
  *(v1 - 237) = v0[3];
  *(v1 - 236) = v0[4];
  *(v1 - 235) = v0[5];
  *(v1 - 234) = v0[6];
  *(v1 - 233) = v0[7];
  *(v1 - 232) = v0[8];
  *(v1 - 231) = v0[9];
  *(v1 - 230) = v0[10];
  *(v1 - 229) = v0[11];
  *(v1 - 228) = v0[12];
  *(v1 - 227) = v0[13];
  *(v1 - 226) = v0[14];
  *(v1 - 225) = v0[15];
  JUMPOUT(0x10007DA88);
}

uint64_t sub_100128494()
{
  v2 = v0 - 4624;
  v3 = ((v0 - 4624) ^ 0x495) + LODWORD(STACK[0x4F4]) == 0;
  v4 = (v0 - 4624) ^ 0x492;
  LODWORD(STACK[0x4F4]) += v2 ^ 0x495;
  v5 = v3;
  return (*(v1 + 8 * (((((4 * v2) ^ 0x16DC) + 937 * v4 - 6378) * v5) ^ v2)))();
}

uint64_t sub_100128534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a13 = &a11;
  a15 = 1317436891 * ((&a13 & 0xF908E906 | ~(&a13 | 0xF908E906)) ^ 0xB6F48E8F) + 8154;
  v16 = (*(v15 + 77096))(&a13);
  return (*(v15 + 8 * ((253 * (((a14 == 16257999) ^ 0xFB) & 1)) ^ 0x135Eu)))(v16);
}

uint64_t sub_1001285D8()
{
  v2 = *(STACK[0x410] + 24);
  STACK[0x7E0] = v2;
  return (*(v1 + 8 * ((11 * (((v2 == 0) ^ ((v0 ^ 0xD6) - 1)) & 1)) | v0 ^ 0xFD6)))();
}

uint64_t sub_10012862C()
{
  v3 = *(v1 + 8);
  STACK[0x7C8] = 0;
  STACK[0x7B8] = 0;
  return (*(v2 + 8 * (((v3 == 0) * (((v0 - 1995967868) & 0x76F81765) + (v0 ^ 0xFFFFE6EF))) ^ v0)))();
}

uint64_t sub_10012869C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = ((v2 ^ 0x477F397BB7FF3C24 ^ a1) + ((2 * v2) & 0xEFE72F76FFE6CDCLL) + a2 - 0x477F397BB7FF366ELL);
  v10 = (*v9 << 24) | (v9[1] << 16) | (v9[2] << 8);
  v11 = (v10 | v9[3]) + 197499219 - 2 * ((v10 | v9[3]) & v5 ^ v9[3] & 0xC);
  v12 = ((2 * (v2 + 4)) & 0x7FF6E973A5FDF6FELL) + ((v2 + 4) ^ 0xFFFB74B9D2FEFB7FLL) + a2 + 0x48B462D010481;
  v13 = (_byteswap_ushort(*v12) - 2 * (_byteswap_ushort(*v12) & 0x3E9E ^ *(v12 + 1) & 0xA) + 16023);
  switch(v13)
  {
    case 28242:
      STACK[0x430] = a2 + v4;
      STACK[0x828] = v3;
      return (*(v8 + 8 * (((v11 == ((v7 + 2141576629) ^ 0x7FA5EE7A) + 197496782) * ((v7 + 2141576629) & 0x805A19BB ^ 0x11C3)) ^ (v7 - 991))))();
    case 47636:
      return (*(v8 + 8 * ((((7 * (v7 ^ 0x971)) ^ 0x3999) * (v6 == 197499227)) ^ (v7 + 1411))))();
    case 43494:
      return (*(v8 + 8 * (((v7 ^ 0x1E6E) * (v6 == 197499223)) ^ (v7 + 1411))))();
    default:
      return sub_100128684();
  }
}

uint64_t sub_1001288BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x8F0]) = 16257999;
  *STACK[0x950] = STACK[0x5B0];
  return (STACK[0x740])(a1, a2, a3, 16257999);
}

uint64_t sub_1001289E4()
{
  LODWORD(STACK[0x7E8]) = v0;
  *STACK[0x460] = STACK[0x4A0];
  return (STACK[0x468])();
}

uint64_t sub_100128A08@<X0>(void *a1@<X2>, _DWORD *a2@<X3>, int a3@<W4>, int a4@<W5>, unsigned int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v46 = &a42 + (a4 - 1);
  v47 = ((*(*a1 + (*a2 & (1039 * (v43 ^ 0x1C88) - 1730020821))) ^ v46) & 0x7FFFFFFF) * a3;
  v48 = (v47 ^ HIWORD(v47)) * a3;
  v49 = *(*(v45 + 8 * (v43 - 7227)) + (v48 >> 24));
  v50 = *(*(v45 + 8 * (v43 - 7073)) + (v48 >> 24) - 12);
  v51 = *(v45 + 8 * (v43 ^ 0x1C71));
  v52 = ((v43 ^ 0x1C88) + 6657 + (a5 >> v42) - ((2 * (a5 >> v42)) & 0xF6) - 13) ^ v49 ^ v50 ^ *(v51 + (v48 >> 24) - 2) ^ v48 ^ (-15 * (v48 >> 24));
  LODWORD(v48) = (((v43 ^ 0x88) + 1 + (a5 >> v42) - ((2 * (a5 >> v42)) & 0xF6) - 13) ^ v49 ^ v50 ^ *(v51 + (v48 >> 24) - 2) ^ v48 ^ (-15 * BYTE3(v48)));
  *v46 = v52 ^ 0xFB;
  return (*(v44 + 8 * ((41 * (a4 != (v48 != 251))) ^ v43)))();
}

uint64_t sub_100128BC0@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xB54]) = v1;
  STACK[0xB58] = v3;
  return (*(v4 + 8 * ((((((v2 - 4567) ^ (a1 == 0)) & 1) == 0) * (((v2 - 4567) | 0x181) - 4960)) ^ v2)))();
}

uint64_t sub_100128D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  *(v31 - 144) = &a29 + a26;
  *(v31 - 152) = v30 + 1710126949 * ((2 * ((v31 - 152) & 0xD7F3CA8) - (v31 - 152) - 226442412) ^ 0xC09B98C4) - 2788;
  v32 = (*(v29 + 8 * (v30 ^ 0x3E15)))(v31 - 152);
  return (*(v29 + 8 * (((*(v31 - 136) == 16257999) * (((v30 - 572439744) & 0x221EBBCE) - 4843)) ^ v30)))(v32);
}

uint64_t sub_100128E28(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x614]) = v3;
  STACK[0x500] = *(v4 + 8 * (v2 - 2309));
  return sub_100186D00(a1, a2);
}

uint64_t sub_100128EB0@<X0>(int a1@<W8>)
{
  STACK[0xB90] = v1;
  v3 = STACK[0x640];
  STACK[0xB98] = STACK[0x640];
  return (*(v2 + 8 * ((14285 * (v1 - v3 > ((2 * a1) ^ 0x2E1Eu) - 9919 + (272 * (a1 ^ 0x1679u)))) ^ a1)))();
}

uint64_t sub_100129D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = 1317436891 * ((2 * (&a14 & 0x6AB0C290) - &a14 + 357514603) ^ 0xA54CA51D) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((2641 * (a15 == v18)) ^ v17)))(v19);
}

uint64_t sub_100129DCC(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = v16 - 16;
  v29.i64[0] = a14 + v28 + 11;
  v29.i64[1] = a14 + v28 + 10;
  v30.i64[0] = a14 + v28 + 13;
  v30.i64[1] = a14 + v28 + 12;
  v31.i64[0] = a14 + v28 + 15;
  v31.i64[1] = a14 + v28 + 14;
  v32.i64[0] = a14 + v28 + 19;
  v32.i64[1] = a14 + v28 + 18;
  v33.i64[0] = a14 + v28 + 21;
  v33.i64[1] = a14 + v28 + 20;
  v34.i64[0] = a14 + v28 + 23;
  v34.i64[1] = a14 + v28 + 22;
  v35.i64[0] = a14 + v28 + 25;
  v35.i64[1] = a15 + v28 + 16;
  v36 = vandq_s8(v35, a1);
  v37 = vandq_s8(v34, a1);
  v38 = vandq_s8(v33, a1);
  v39 = vandq_s8(v32, a1);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a3), a4));
  v45 = vsubq_s64(v43, vandq_s8(vaddq_s64(vaddq_s64(v43, v43), a3), a4));
  v46 = vaddq_s64(vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4)), a5);
  v47 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4)), a5);
  v48 = veorq_s8(v47, a6);
  v49 = veorq_s8(v46, a6);
  v50 = veorq_s8(v46, a7);
  v51 = veorq_s8(v47, a7);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), a8);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), a8);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(v57, v55), v19);
  v60 = veorq_s8(v58, v19);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = veorq_s8(vaddq_s64(v64, v62), v20);
  v67 = veorq_s8(v65, v20);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v21), v72), v22), v23);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v21), v71), v22), v23);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v24);
  v80 = veorq_s8(v78, v24);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v25);
  v87 = veorq_s8(v85, v25);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v82.i64[0] = a14 + v28 + 17;
  v82.i64[1] = a14 + v28 + 16;
  v89 = vaddq_s64(v44, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v88), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v90 = veorq_s8(v89, a6);
  v91 = veorq_s8(v89, a7);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), a8);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v19);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v20);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), v21), v98), v22), v23);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v24);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v25);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL)));
  v105 = vandq_s8(v82, a1);
  v106 = vaddq_s64(v45, a5);
  v191.val[1] = vshlq_u64(veorq_s8(v104, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v107 = veorq_s8(v106, a6);
  v108 = veorq_s8(v106, a7);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a8);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v19);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v20);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), v21), v115), v22), v23);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v24);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v25);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v31, a1);
  v124 = vaddq_s64(v122, v121);
  v125 = vandq_s8(v30, a1);
  v191.val[0] = vshlq_u64(veorq_s8(v124, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v126 = vandq_s8(v29, a1);
  v127 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v131 = vsubq_s64(v129, vandq_s8(vaddq_s64(vaddq_s64(v129, v129), a3), a4));
  v132 = vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a3), a4)), a5);
  v133 = vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(vaddq_s64(v127, v127), a3), a4)), a5);
  v128.i64[0] = vqtbl4q_s8(v191, v27).u64[0];
  v134 = veorq_s8(v133, a6);
  v191.val[0] = veorq_s8(v132, a6);
  v135 = veorq_s8(v132, a7);
  v136 = veorq_s8(v133, a7);
  v191.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v135), a8);
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v136), a8);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v139);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v138), v19);
  v141 = veorq_s8(v140, v19);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v143);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v142), v20);
  v145 = veorq_s8(v144, v20);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v147);
  v191.val[0] = vaddq_s64(v191.val[1], v146);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191.val[0], v191.val[0]), v21), v191.val[0]), v22), v23);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v21), v148), v22), v23);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v151);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v150), v24);
  v153 = veorq_s8(v152, v24);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v155);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v154), v25);
  v157 = veorq_s8(v156, v25);
  v158 = vaddq_s64(v131, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v159 = veorq_s8(v158, a6);
  v160 = veorq_s8(v158, a7);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), a8);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v19);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v20);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v21), v167), v22), v23);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v24);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v25);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL)));
  v174 = vaddq_s64(vsubq_s64(v130, vandq_s8(vaddq_s64(vaddq_s64(v130, v130), a3), a4)), a5);
  v191.val[1] = vshlq_u64(veorq_s8(v173, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v175 = veorq_s8(v174, a6);
  v176 = veorq_s8(v174, a7);
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), a8);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v19);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v20);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v21), v183), v22), v23);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v24);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v25);
  v191.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), a2)));
  v128.i64[1] = vqtbl4q_s8(v191, v27).u64[0];
  v189 = vrev64q_s8(v128);
  *(a14 + v28 + 10) = veorq_s8(vextq_s8(v189, v189, 8uLL), *(a16 + v28));
  return (*(v18 + 8 * (((a13 == v28) * v17) ^ a12)))();
}

uint64_t sub_100129DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = v64 + 6080;
  *(v66 - 228) = (v68 + v65) ^ (956911519 * (((v66 - 232) & 0x74BB8A63 | ~((v66 - 232) | 0x74BB8A63)) ^ 0x61D50599));
  v69 = (*(v67 + 8 * (v68 + 1369)))(v66 - 232);
  return (*(a64 + 8 * (((*(v66 - 232) == ((34 * (v68 ^ 0x202F)) ^ 0x2015A208)) * (((v68 + 880752481) & 0xCB80ABF7) - 699)) ^ v68)))(v69);
}

uint64_t sub_100129ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x8B8] = v64;
  v67 = STACK[0x4F0];
  *(v67 + 112) = 197499219;
  *(v67 + 116) = 197499219;
  *(v67 + 108) = 0;
  *(v67 + 104) = 0;
  STACK[0x418] = v67;
  v68 = STACK[0x640];
  v69 = &STACK[0xAB0] + STACK[0x640];
  STACK[0x6B8] = (v69 + 32);
  STACK[0x620] = (v69 + 48);
  STACK[0x640] = ((v65 + 1362595245) & 0xAEC86EDA ^ 0x652) + v68;
  v70 = (*(v66 + 8 * (v65 ^ 0x2FCA)))(v69, 0, 32);
  STACK[0x4C8] = 0;
  STACK[0x8A8] = v67;
  return (*(a64 + 8 * ((30 * (v67 == 0)) ^ (v65 + 5400))))(v70);
}

uint64_t sub_10012A034@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unsigned int a57, uint64_t a58)
{
  v58 = LODWORD(STACK[0x300]);
  if (v58 == 17168)
  {
    return (*(a58 + 8 * ((a57 - 1310) ^ (122 * (a2 == 197499223)))))();
  }

  if (v58 == 20706)
  {
    return (*(a58 + 8 * ((7380 * (a2 == (a57 ^ 0xBC59311))) ^ (a57 - 1655))))();
  }

  v60 = 0;
  v61 = a57;
  if (v58 == 33980)
  {
    STACK[0x4E8] = STACK[0x838] + STACK[0x270];
    v61 = (a57 + 1970966693) & 0x8A856F5A;
    STACK[0x5A0] = STACK[0x910];
    LODWORD(STACK[0x470]) = STACK[0x904];
    LOWORD(STACK[0x48E]) = STACK[0x90A];
    LODWORD(STACK[0x62C]) = STACK[0x90C];
    v60 = 1;
  }

  return (*(a58 + 8 * (((((v61 + 4139) ^ 0x1B1F) + 1974) * v60) ^ (v61 + 2970))))(a1, 16215976);
}

uint64_t sub_10012B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v23 = 1875091903 * (((&a14 | 0x5A61A103) + (~&a14 | 0xA59E5EFC)) ^ 0x6C142281);
  a17 = a10;
  a15 = (v20 ^ 0x781EFFAA) + ((2 * v20) & 0xF03DFF54) + v23 - 1476544768;
  a16 = v23 + 7724;
  (*(v21 + 77160))(&a14);
  v24 = 1824088897 * (((&a14 ^ 0x3B3E9515) & 0x5A69CC60 | ~(&a14 ^ 0x3B3E9515 | 0x5A69CC60)) ^ 0xC6C175E8);
  a14 = v24 + 3757;
  a16 = (v19 ^ 0x5FACFF8B) + ((2 * v19) & 0xBF59FF16) - v24 - 285742337;
  a17 = v18;
  a18 = a10;
  v25 = (*(v21 + 77048))(&a14);
  return (*(v21 + 8 * ((43 * (a15 != v22)) ^ 0xA42u)))(v25);
}

uint64_t sub_10012B20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v14 = v6 - 1;
  v15 = __ROR8__((v5 + v14) & ((v8 - 435) ^ v7), 8) - 0x6AF7234D0CC131D5;
  v16 = __ROR8__(v15 ^ 0x49E9423B6F16E7D2, 8);
  v15 ^= 0xE1AFA7ACF6E0968ELL;
  v17 = (0x34CC4CF581555827 - ((v16 + v15) | 0x34CC4CF581555827) + ((v16 + v15) | a1)) ^ a2;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v10;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0xEEA2190ABF8C59C3 - ((v21 + v20) | 0xEEA2190ABF8C59C3) + ((v21 + v20) | a3)) ^ a4;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x61459D2AF01F24F7;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x64C31C027084DE6CLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v12;
  *(v9 + v14) = *(v5 + v14) ^ (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v27, 61))) ^ v11) >> (8 * ((v5 + v14) & 7))) ^ 0x3C;
  return (*(v13 + 8 * (((v14 != 0) * a5) ^ v8)))();
}

uint64_t sub_10012B3C4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = v10 - 8;
  v26.i64[0] = v25 + a1 - 7;
  v26.i64[1] = v20 - 8 + a1;
  v27.i64[0] = v25 + a1 - 5;
  v27.i64[1] = v25 + a1 - 6;
  v28.i64[0] = v25 + a1 - 3;
  v28.i64[1] = v25 + a1 - 4;
  v29.i64[0] = v25 + a1 - 1;
  v29.i64[1] = v25 + a1 - 2;
  v30.i64[0] = v11 - 8 + a1;
  v30.i64[1] = v9 - 8 + a1;
  v31.i64[0] = v19 - 8 + a1;
  v31.i64[1] = v18 - 8 + a1;
  v32.i64[0] = a8 - 8 + a1;
  v32.i64[1] = a7 - 8 + a1;
  v33.i64[0] = a6 - 8 + a1;
  v33.i64[1] = v21 - 8 + a1;
  v34 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v35 = vdupq_n_s64(0x38uLL);
  v36 = vandq_s8(v29, v34);
  v37 = vandq_s8(v28, v34);
  v38 = vandq_s8(v27, v34);
  v39 = vandq_s8(v26, v34);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v45 = vaddq_s64(v43, v44);
  v46 = vaddq_s64(v42, v44);
  v47 = vaddq_s64(v41, v44);
  v48 = vaddq_s64(v40, v44);
  v49 = vdupq_n_s64(0x4CFAC71E5A50EC49uLL);
  v50 = vdupq_n_s64(a2);
  v51 = vsubq_s64(vorrq_s8(v45, v49), vorrq_s8(v45, v50));
  v52 = vsubq_s64(vorrq_s8(v46, v49), vorrq_s8(v46, v50));
  v53 = vsubq_s64(vorrq_s8(v47, v49), vorrq_s8(v47, v50));
  v54 = vaddq_s64(vsubq_s64(vorrq_s8(v48, v49), vorrq_s8(v48, v50)), v50);
  v55 = vaddq_s64(v53, v50);
  v56 = vaddq_s64(v52, v50);
  v57 = vdupq_n_s64(0x513852535460B9BuLL);
  v58 = vaddq_s64(v51, v50);
  v59 = veorq_s8(v58, v57);
  v60 = veorq_s8(v56, v57);
  v61 = veorq_s8(v55, v57);
  v62 = vdupq_n_s64(v8);
  v63 = veorq_s8(v54, v57);
  v64 = veorq_s8(v54, v62);
  v65 = veorq_s8(v55, v62);
  v66 = veorq_s8(v56, v62);
  v67 = veorq_s8(v58, v62);
  v68 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v65);
  v70 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v71 = veorq_s8(vaddq_s64(v68, v64), v70);
  v72 = veorq_s8(v69, v70);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v66), v70);
  v74 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v67), v70);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v77 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v78 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v79 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v78);
  v83 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v84 = veorq_s8(vaddq_s64(v79, v75), v83);
  v85 = veorq_s8(vaddq_s64(v80, v76), v83);
  v86 = veorq_s8(vaddq_s64(v81, v77), v83);
  v87 = veorq_s8(v82, v83);
  v88 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v91 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v92 = veorq_s8(v86, v90);
  v93 = veorq_s8(v85, v89);
  v94 = veorq_s8(v84, v88);
  v95 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v94);
  v99 = vaddq_s64(v97, v93);
  v100 = vaddq_s64(v96, v92);
  v101 = vaddq_s64(v95, v91);
  v102 = vdupq_n_s64(0x68767FB9A21293EuLL);
  v103 = vdupq_n_s64(v16);
  v104 = vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(v98, v98), v102)), v103);
  v105 = vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(v99, v99), v102)), v103);
  v106 = vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(v100, v100), v102)), v103);
  v107 = vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(v101, v101), v102)), v103);
  v108 = vdupq_n_s64(v15);
  v109 = veorq_s8(v107, v108);
  v110 = veorq_s8(v106, v108);
  v111 = veorq_s8(v105, v108);
  v112 = veorq_s8(v104, v108);
  v113 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v116 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v117 = veorq_s8(v111, v115);
  v118 = veorq_s8(v110, v114);
  v119 = veorq_s8(v109, v113);
  v120 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v119);
  v124 = vaddq_s64(v122, v118);
  v125 = vaddq_s64(v121, v117);
  v126 = vaddq_s64(v120, v116);
  v127 = vdupq_n_s64(v24);
  v128 = vdupq_n_s64(v14);
  v129 = vaddq_s64(vsubq_s64(vorrq_s8(v126, v127), vorrq_s8(v126, v128)), v128);
  v130 = vaddq_s64(vsubq_s64(vorrq_s8(v125, v127), vorrq_s8(v125, v128)), v128);
  v131 = vaddq_s64(vsubq_s64(vorrq_s8(v124, v127), vorrq_s8(v124, v128)), v128);
  v132 = vaddq_s64(vsubq_s64(vorrq_s8(v123, v127), vorrq_s8(v123, v128)), v128);
  v133 = vdupq_n_s64(v23);
  v134 = veorq_s8(v132, v133);
  v135 = veorq_s8(v131, v133);
  v136 = veorq_s8(v130, v133);
  v137 = veorq_s8(v129, v133);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v139 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v140 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v141 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v142 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v141);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v140);
  v146 = vaddq_s64(v143, v139);
  v147 = vaddq_s64(v142, v138);
  v148 = vdupq_n_s64(0x9D61AAA81A10264DLL);
  v149 = vdupq_n_s64(a3);
  v150 = vsubq_s64(vorrq_s8(v144, v148), vorrq_s8(v144, v149));
  v151 = vaddq_s64(vsubq_s64(vorrq_s8(v147, v148), vorrq_s8(v147, v149)), v149);
  v152 = vaddq_s64(vsubq_s64(vorrq_s8(v146, v148), vorrq_s8(v146, v149)), v149);
  v153 = vaddq_s64(vsubq_s64(vorrq_s8(v145, v148), vorrq_s8(v145, v149)), v149);
  v154 = vdupq_n_s64(a5);
  v155 = veorq_s8(vaddq_s64(v150, v149), v154);
  v156 = veorq_s8(v153, v154);
  v157 = veorq_s8(v152, v154);
  v158 = veorq_s8(v151, v154);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v160 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v161 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v162 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v163 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v164 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v165 = veorq_s8(vaddq_s64(v163, v159), v164);
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v160), v164);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v161), v164);
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v162), v164);
  v169 = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v172 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), veorq_s8(v165, v169));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), veorq_s8(v166, v170));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), veorq_s8(v167, v171));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v172);
  v177 = vdupq_n_s64(v13);
  v178 = vdupq_n_s64(0xF47A05CFABD0B088);
  v179 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v173, v173), v177), v173), v178);
  v180 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174, v174), v177), v174), v178);
  v181 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v177), v175), v178);
  v182 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v176, v176), v177), v176), v178);
  v183 = vdupq_n_s64(0x5F4A471D8357ECC9uLL);
  v184 = veorq_s8(v182, v183);
  v185 = veorq_s8(v181, v183);
  v186 = veorq_s8(v180, v183);
  v187 = veorq_s8(v179, v183);
  v188 = vandq_s8(vshlq_n_s64(v26, 3uLL), v35);
  v189 = vandq_s8(vshlq_n_s64(v27, 3uLL), v35);
  v190 = vshlq_u64(v187, vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v35)));
  v191 = vshlq_u64(v186, vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v35)));
  v192 = vshlq_u64(v185, vnegq_s64(v189));
  v193 = vshlq_u64(v184, vnegq_s64(v188));
  v194 = vandq_s8(v33, v34);
  v195 = vandq_s8(v32, v34);
  v196 = vandq_s8(v31, v34);
  v197 = vandq_s8(v30, v34);
  v198 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v199 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v200 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v201 = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v203 = vaddq_s64(v202, v201);
  v204 = vaddq_s64(v200, v201);
  v205 = vaddq_s64(v199, v201);
  v206 = vdupq_n_s64(0x29702F06207D0E1CuLL);
  v207 = vaddq_s64(v198, v201);
  v208 = vdupq_n_s64(0x5879FD990C46CAD5uLL);
  v209 = vaddq_s64(vandq_s8(vsubq_s64(v206, v198), v208), v207);
  v210 = vaddq_s64(vandq_s8(vsubq_s64(v206, v199), v208), v205);
  v211 = vaddq_s64(vandq_s8(vsubq_s64(v206, v200), v208), v204);
  v212 = vaddq_s64(vandq_s8(vsubq_s64(v206, v202), v208), v203);
  v213 = vdupq_n_s64(0x5E79FD990C46CAD5uLL);
  v214 = vsubq_s64(v212, vandq_s8(v203, v213));
  v215 = vsubq_s64(v211, vandq_s8(v204, v213));
  v216 = vsubq_s64(v210, vandq_s8(v205, v213));
  v217 = vsubq_s64(v209, vandq_s8(v207, v213));
  v218 = vdupq_n_s64(0x6F262667B511DA8BuLL);
  v219 = veorq_s8(v217, v218);
  v220 = veorq_s8(v216, v218);
  v221 = veorq_s8(v215, v218);
  v222 = veorq_s8(v214, v218);
  v223 = vdupq_n_s64(0xDB58A1A949065591);
  v224 = veorq_s8(v214, v223);
  v225 = veorq_s8(v215, v223);
  v226 = veorq_s8(v216, v223);
  v227 = veorq_s8(v217, v223);
  v228 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v225);
  v230 = vaddq_s64(v228, v224);
  v231 = vdupq_n_s64(0xBC7AB44B3A189480);
  v232 = veorq_s8(v230, v231);
  v233 = veorq_s8(v229, v231);
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v226), v231);
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v227), v231);
  v236 = vdupq_n_s64(0xF0BA186BA47F666CLL);
  v237 = vdupq_n_s64(0x87A2F3CA2DC04CCALL);
  v238 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v232, v232), v236), v232), v237);
  v239 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v233, v233), v236), v233), v237);
  v240 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v234, v234), v236), v234), v237);
  v241 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v235, v235), v236), v235), v237);
  v242 = vdupq_n_s64(0x4553883189103385uLL);
  v243 = veorq_s8(v241, v242);
  v244 = veorq_s8(v240, v242);
  v245 = veorq_s8(v239, v242);
  v246 = veorq_s8(v238, v242);
  v247 = vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL);
  v248 = vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL);
  v249 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v250 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v251 = veorq_s8(v244, v248);
  v252 = veorq_s8(v243, v247);
  v253 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v255 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v252);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v251);
  v257 = vaddq_s64(v254, v250);
  v258 = vaddq_s64(v253, v249);
  v259 = vdupq_n_s64(0x78DE71CD2967B0CEuLL);
  v260 = vdupq_n_s64(0xBC6F38E694B3D867);
  v261 = vdupq_n_s64(0xF4B101A286E9DA33);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(v258, vandq_s8(vaddq_s64(v258, v258), v259)), v260), v261);
  v263 = veorq_s8(vaddq_s64(vsubq_s64(v257, vandq_s8(vaddq_s64(v257, v257), v259)), v260), v261);
  v264 = veorq_s8(vaddq_s64(vsubq_s64(v256, vandq_s8(vaddq_s64(v256, v256), v259)), v260), v261);
  v265 = veorq_s8(vaddq_s64(vsubq_s64(v255, vandq_s8(vaddq_s64(v255, v255), v259)), v260), v261);
  v266 = vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL);
  v267 = vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL);
  v268 = vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL);
  v269 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v270 = veorq_s8(v264, v268);
  v271 = veorq_s8(v263, v267);
  v272 = veorq_s8(v262, v266);
  v273 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v274 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v276 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v272);
  v277 = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  v278 = veorq_s8(vaddq_s64(v273, v269), v277);
  v279 = veorq_s8(vaddq_s64(v274, v270), v277);
  v280 = veorq_s8(vaddq_s64(v275, v271), v277);
  v281 = veorq_s8(v276, v277);
  v282 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v285 = veorq_s8(v281, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v286 = veorq_s8(v280, v284);
  v287 = veorq_s8(v279, v283);
  v288 = veorq_s8(v278, v282);
  v289 = vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL);
  v290 = vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL);
  v291 = vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL);
  v292 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL), v288);
  v293 = vaddq_s64(v291, v287);
  v294 = vaddq_s64(v290, v286);
  v295 = vaddq_s64(v289, v285);
  v296 = vdupq_n_s64(0xD02B2EB47D7683C6);
  v297 = vdupq_n_s64(0x6815975A3EBB41E3uLL);
  v298 = vaddq_s64(vsubq_s64(v292, vandq_s8(vaddq_s64(v292, v292), v296)), v297);
  v299 = vaddq_s64(vsubq_s64(v293, vandq_s8(vaddq_s64(v293, v293), v296)), v297);
  v300 = vaddq_s64(vsubq_s64(v294, vandq_s8(vaddq_s64(v294, v294), v296)), v297);
  v301 = vaddq_s64(vsubq_s64(v295, vandq_s8(vaddq_s64(v295, v295), v296)), v297);
  v302 = vdupq_n_s64(0x9A77953CE1639F61);
  v303 = veorq_s8(v301, v302);
  v304 = veorq_s8(v300, v302);
  v305 = veorq_s8(v299, v302);
  v306 = veorq_s8(v298, v302);
  v307 = vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v309 = vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL);
  v310 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL));
  v311 = veorq_s8(v305, v309);
  v312 = veorq_s8(v304, v308);
  v313 = veorq_s8(v303, v307);
  v314 = vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL);
  v315 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v316 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v317 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL), v313);
  v318 = vaddq_s64(v316, v312);
  v319 = vaddq_s64(v315, v311);
  v320 = vaddq_s64(v314, v310);
  v321 = vdupq_n_s64(0xDBAE1F50DA30D8EFLL);
  v322 = vdupq_n_s64(a4);
  v323 = vaddq_s64(vsubq_s64(vorrq_s8(v320, v321), vorrq_s8(v320, v322)), v322);
  v324 = vaddq_s64(vsubq_s64(vorrq_s8(v319, v321), vorrq_s8(v319, v322)), v322);
  v325 = vaddq_s64(vsubq_s64(vorrq_s8(v318, v321), vorrq_s8(v318, v322)), v322);
  v326 = vaddq_s64(vsubq_s64(vorrq_s8(v317, v321), vorrq_s8(v317, v322)), v322);
  v327 = vdupq_n_s64(0x6210EF9D5C6DF912uLL);
  v328 = veorq_s8(v326, v327);
  v329 = veorq_s8(v325, v327);
  v330 = veorq_s8(v324, v327);
  v331 = veorq_s8(v323, v327);
  v332 = vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL);
  v333 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v334 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v335 = veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL));
  v336 = veorq_s8(v330, v334);
  v337 = veorq_s8(v329, v333);
  v338 = veorq_s8(v328, v332);
  v339 = vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL);
  v340 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v341 = vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL);
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), v338);
  v343 = vaddq_s64(v340, v336);
  v344 = vaddq_s64(v339, v335);
  v345 = vdupq_n_s64(v17);
  v346 = veorq_s8(v344, v345);
  v347 = veorq_s8(v343, v345);
  v348 = veorq_s8(vaddq_s64(v341, v337), v345);
  v349 = veorq_s8(v342, v345);
  v350 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v351 = vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL);
  v352 = vsraq_n_u64(vshlq_n_s64(v337, 3uLL), v337, 0x3DuLL);
  v353 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v349, 0x38uLL), v349, 8uLL), veorq_s8(v349, vsraq_n_u64(vshlq_n_s64(v338, 3uLL), v338, 0x3DuLL)));
  v354 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  v356.val[3] = veorq_s8(vshlq_u64(veorq_s8(v353, v354), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v35))), v193);
  v356.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), veorq_s8(v348, v352)), v354), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v35))), v192);
  v356.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), veorq_s8(v347, v351)), v354), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v35))), v191);
  v356.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL), veorq_s8(v346, v350)), v354), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v35))), v190);
  *(v12 - 8 + a1) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v356, xmmword_100382E20)), *(v25 + a1 - 8));
  return (*(STACK[0x3E8] + 8 * (((a1 != v22 + 8) | (16 * (a1 != v22 + 8))) ^ LODWORD(STACK[0x3B0]))))();
}

uint64_t sub_10012B3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = 476323082 - 1710126949 * (((&a14 ^ 0xF09351D6 | 0x6EADE65F) - (&a14 ^ 0xF09351D6) + ((&a14 ^ 0xF09351D6) & 0x915219A0)) ^ 0xAC25EC19);
  v16 = (*(v15 + 77088))(&a14);
  return (*(v15 + 8 * (((2 * (a15 == 16257999)) | (8 * (a15 == 16257999))) ^ 0x1396u)))(v16);
}

uint64_t sub_10012B4A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(v5 + a4 + 16);
  v8 = (a2 + a4);
  *v8 = *(v5 + a4);
  v8[1] = v7;
  return (*(v6 + 8 * (((16 * (v4 == a4)) | ((v4 == a4) << 6)) ^ a3)))();
}

uint64_t sub_10012B4F0@<X0>(int a1@<W8>)
{
  v2 = *(v1 + 8 * ((((((a1 - 1368056722) & 0x518ADDAF) + 5200) ^ (((a1 - 1368056722) & 0x518ADDAF) + 828)) * (LODWORD(STACK[0x2B0]) == LODWORD(STACK[0x2A0]))) ^ (a1 - 1368056722) & 0x518ADDAF));
  LODWORD(STACK[0x2F0]) = 16257999;
  return v2();
}

uint64_t sub_10012B94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = v9 + v12 - 1;
  v17 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = ((2 * (v17 + ((578 * ((v13 - 59) ^ 0x13FEu)) ^ 0x9508DCB2F33EEA0BLL))) | 0x19C69BDE09677532) - (v17 + ((578 * ((v13 - 59) ^ 0x13FEu)) ^ 0x9508DCB2F33EEA0BLL)) + 0x731CB210FB4C4567;
  v19 = v18 ^ 0xC50A0FD46BA55D4BLL;
  v18 ^= 0x6D4CEA43F2532C17uLL;
  v20 = __ROR8__(v19, 8);
  v21 = __ROR8__((((2 * (v20 + v18)) | 0xE7FEEAD13AAEBCF2) - (v20 + v18) + v10) ^ v11, 8);
  v22 = (((2 * (v20 + v18)) | 0xE7FEEAD13AAEBCF2) - (v20 + v18) + v10) ^ v11 ^ __ROR8__(v18, 61);
  v23 = ((a1 & (2 * (v21 + v22))) - (v21 + v22) + a2) ^ a3;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x5963B6C555D97F1FLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x61459D2AF01F24F7;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x64C31C027084DE6CLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - (a4 & (2 * (v31 + v30))) + a5) ^ a6;
  v33 = ((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v30, 61))) ^ 0xAB3042D228875C41) >> (8 * (v16 & 7u));
  v34 = __ROR8__((v12 + a9 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = (v34 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v36 = (__ROR8__((v34 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v35) ^ 0xE49D77DF873DBF7ELL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xF5A2F1B9B5D0B209;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x5963B6C555D97F1FLL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x61459D2AF01F24F7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x64C31C027084DE6CLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x1A2AEBE44253AF03;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  *(v12 + a9 + 9) = v33 ^ (((v48 + v47 - (a7 & (2 * (v48 + v47))) + a8) ^ v14) >> (8 * ((v12 + a9 + 9) & 7))) ^ *v16;
  return (*(v15 + 8 * ((1991 * (v12 != 1)) ^ (v13 - 59))))();
}

uint64_t sub_10012BC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v27 = (&a17 ^ 0x5869D362) * v24;
  a19 = (v23 ^ 0xCEF6FABA) + ((2 * v23) & 0x9DEDF574) - v27 + 2142105552;
  a17 = v27 + v21 + 1254;
  a20 = v22;
  a21 = a14;
  v28 = (*(v25 + 8 * (v21 + 7128)))(&a17);
  return (*(v25 + 8 * (((a18 == v26 + ((v21 - 323) | 0x21) - 2213) * (((v21 - 194) | 0x72) ^ 0xD48)) ^ v21)))(v28);
}

uint64_t sub_10012BEF4()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x35DFu)))((((v1 - 637673726) & 0x26021BE2u) + 197496305) ^ LODWORD(STACK[0x4B4]), 0x100004077774924);
  v4 = STACK[0x330];
  STACK[0x978] = v3;
  if (v3)
  {
    v5 = 16257999;
  }

  else
  {
    v5 = v2;
  }

  LODWORD(STACK[0x984]) = v5;
  return (*(v4 + 8 * (((v3 == 0) * ((10 * (v1 ^ 0x1060)) ^ 0x1D3)) ^ v1)))();
}

uint64_t sub_10012BF98@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x2A6E)))();
  *(v1 + 24) = 0;
  return sub_10014CFE4();
}

uint64_t sub_10012C108()
{
  v2 = (*(v1 + 8 * (v0 + 2142)))();
  STACK[0x420] = 0;
  return sub_10012C128(v2);
}

uint64_t sub_10012C128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x538];
  STACK[0x4D8] = &STACK[0x7B0];
  STACK[0x808] = *(v6 + 8 * (v5 - 9003));
  STACK[0x6D0] = 0;
  LODWORD(STACK[0x90C]) = 0;
  LODWORD(STACK[0x5D4]) = 197499219;
  return (*(v6 + 8 * (((v3 == 0) * (v5 - 9051)) ^ (v5 - 1201))))(a1, a2, a3, 16215976);
}

uint64_t sub_10012C140()
{
  *(v4 - 224) = (v0 - 2140802193) ^ (((893185383 - ((v4 - 232) | 0x353CED67) + ((v4 - 232) | 0xCAC31298)) ^ 0xE63FA3E3) * v3);
  v5 = (*(v2 + 8 * (v0 + 3555)))(v4 - 232);
  *(v1 + 24) = *(v4 - 232) ^ ((v0 ^ 0xE9) - 126);
  return (*(v2 + 8 * (v0 - 5173)))(v5);
}

uint64_t sub_10012C228@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  STACK[0x760] = *(v2 + 8 * v1);
  return sub_1001588E0(v3);
}

uint64_t sub_10012C240@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(a1 + 8);
  STACK[0x420] = v66;
  STACK[0x910] = 0;
  STACK[0x548] = 0;
  return (*(a65 + 8 * ((54 * (((v67 == 0) ^ ((v65 ^ 0xD3) - 73)) & 1)) ^ v65)))();
}

uint64_t sub_10012C374()
{
  v5 = (*(v4 + 8 * (v0 ^ 0x39B7)))(0, 0, 0);
  (*(STACK[0x330] + 8 * (v0 + 2444)))(v5, *(&off_1003E6550 + v0 - 7191) - 4, v2, v3);
  v6 = (*(STACK[0x330] + 8 * (v0 + 2493)))(v1, v5) == 0;
  return (*(STACK[0x330] + 8 * ((v6 * ((((v0 - 1977801911) & 0x75E2DFC7) - 2657) ^ (2 * v0) ^ 0x2D28)) ^ v0)))();
}

uint64_t sub_10012C458(uint64_t a1)
{
  v6 = (v4 - 1346784683) - 4215;
  v7 = *(v2 + v6 + v1 - 31);
  v8 = a1 + v6 + v1;
  *(v8 - 15) = *(v2 + v6 + v1 - 15);
  *(v8 - 31) = v7;
  return (*(v5 + 8 * ((6617 * ((v1 & 0xFFFFFFE0) == 32)) ^ (v4 + v3))))();
}

uint64_t sub_10012C4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = 2 * (v6 ^ v8);
  v10 = v6 - 915938078;
  v11 = v7 < a5 + 842508703;
  if (a5 + 842508703 < v7)
  {
    v11 = 1;
  }

  return (*(v5 + 8 * ((v11 * (v9 + 14822)) ^ v10)))(0xA2C4B17CD766117BLL, a2, 0);
}

void sub_10012C6EC(uint64_t a1, int a2)
{
  STACK[0x600] = 0;
  LODWORD(STACK[0x594]) = a2;
  JUMPOUT(0x100041190);
}

uint64_t sub_10012C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a5 = 0;
  *a6 = 0;
  a15 = 476323082 - 1710126949 * ((2 * (&a15 & 0x50DF5428) - &a15 - 1356813357) ^ 0x9D3BF043);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((15910 * (a16 == 16257999)) ^ 0x1E01u)))(v17);
}

uint64_t sub_10012CA28(int a1, int8x16_t a2)
{
  v7 = (v3 - 32);
  v8 = (v4 - 32);
  v9 = veorq_s8(*v8, a2);
  v7[-1] = veorq_s8(v8[-1], a2);
  *v7 = v9;
  return (*(v6 + 8 * (((v2 == 32) * a1) ^ v5)))();
}

uint64_t sub_10012CAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19 = a7 + a8;
  v20 = a7 + a8 + 9;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v22 = __ROR8__(v21 ^ 0x49E9423B6F16E7D2, 8);
  v21 ^= 0xE1AFA7ACF6E0968ELL;
  v23 = (v22 + v21) ^ ((v16 ^ 0x1753u) - 0x1B62882078C243B8);
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = ((v11 & (2 * (v25 + v24))) - (v25 + v24) + v12) ^ v13;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v28 + v27 - (v14 & (2 * (v28 + v27))) + v15) ^ a1;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x61459D2AF01F24F7;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v9 - ((v33 + v32) | v9) + ((v33 + v32) | a2)) ^ a3;
  v35 = a7 - 1;
  v36 = v34 ^ __ROR8__(v32, 61);
  v37 = (__ROR8__(v34, 8) + v36) ^ v18;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  *(v19 + 9) = *(v8 + v35) ^ (((v10 - ((v39 + v38) ^ a4 | v10) + ((v39 + v38) ^ a4 | a5)) ^ a6) >> (8 * (v20 & 7u))) ^ 0x3C;
  return (*(v17 + 8 * ((2422 * (v35 == 0)) ^ (v16 - 656))))();
}

uint64_t sub_10012CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, _DWORD *a63)
{
  *STACK[0x778] = v63;
  *a63 = STACK[0x78C];
  return (STACK[0x528])();
}

uint64_t sub_10012CC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11)
{
  a11 = **(v12 + 8 * (v13 - 6400));
  a10 = v13 - 1132 + 1710126949 * (((&a10 | 0x56884567) - &a10 + (&a10 & 0xA977BA98)) ^ 0x64931EF7) + 3420;
  v14 = (*(v11 + 8 * ((v13 - 1132) ^ 0x316B)))(&a10);
  return (*(v11 + 8 * (((*(*(v12 + 8 * ((v13 - 1132) ^ 0x14F8)) + 20) == v13 - 6464) * (((v13 - 1132) ^ 0x1E69) - 2696)) ^ (v13 - 1132))))(v14);
}

uint64_t sub_10012CD40(uint64_t a1)
{
  *(a1 + 104) = veorq_s8(*(v2 + 88), xmmword_100382E30);
  v4 = *(v2 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * (((v4 == ((v1 - 1893) | 0xBC1) - 4041) * ((((v1 - 1893) | 0xBC1) + 5207) ^ 0x240B)) ^ ((v1 - 1893) | 0xBC1))))();
}

uint64_t sub_10012CDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOWORD(STACK[0x8AE]) = v5;
  LODWORD(STACK[0x370]) = v5;
  return sub_10015F87C(a1, a2, STACK[0x3B0], a4, a5, v6 - 4662);
}

uint64_t sub_10012CDC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x390] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x320] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x330] = vdupq_n_s64(0x38uLL);
  *&STACK[0x300] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x310] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x2E0] = vdupq_n_s64(a8);
  *&STACK[0x2F0] = vdupq_n_s64(v12);
  *&STACK[0x2C0] = vdupq_n_s64(a4);
  *&STACK[0x2D0] = vdupq_n_s64(v8);
  *&STACK[0x2A0] = vdupq_n_s64(a6);
  *&STACK[0x2B0] = vdupq_n_s64(a5);
  *&STACK[0x280] = vdupq_n_s64(v11);
  *&STACK[0x290] = vdupq_n_s64(a7);
  *&STACK[0x370] = vdupq_n_s64(a2);
  *&STACK[0x380] = vdupq_n_s64(a3);
  *&STACK[0x260] = vdupq_n_s64(v9);
  *&STACK[0x270] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x220] = vdupq_n_s64(0x6FD00DA82B5215D6uLL);
  *&STACK[0x230] = vdupq_n_s64(0x74116C981532F660uLL);
  *&STACK[0x240] = vdupq_n_s64(v10);
  *&STACK[0x250] = vdupq_n_s64(a1);
  *&STACK[0x360] = xmmword_100382E40;
  return sub_10012CF00();
}

uint64_t sub_10012CF00()
{
  v18 = v0 + v1 - v2;
  v19.i64[0] = v18 + 5;
  v19.i64[1] = v5 + v18 + v6;
  v20 = v19;
  *&STACK[0x350] = v19;
  v21.i64[0] = v18 + 9;
  v21.i64[1] = v18 + 8;
  v22.i64[0] = v18 + 7;
  v22.i64[1] = v18 + 6;
  v23.i64[0] = v18 + 3;
  v23.i64[1] = v18 + 2;
  v19.i64[0] = v18 + 1;
  v19.i64[1] = v18;
  *&STACK[0x3B0] = v19;
  v24 = v1 - v2 - 1;
  v19.i64[0] = v0 + v24;
  v19.i64[1] = v18 - 2;
  *&STACK[0x3A0] = v19;
  v25 = vandq_s8(v23, *&STACK[0x390]);
  v26 = vandq_s8(v22, *&STACK[0x390]);
  v27 = vandq_s8(v21, *&STACK[0x390]);
  v28 = vandq_s8(v20, *&STACK[0x390]);
  v29 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v30 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v31 = *&STACK[0x320];
  v32 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL), *&STACK[0x320]);
  v33 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL), *&STACK[0x320]);
  v34 = veorq_s8(v33, *&STACK[0x310]);
  v35 = veorq_s8(v32, *&STACK[0x310]);
  v36 = *&STACK[0x310];
  v37 = *&STACK[0x300];
  v38 = veorq_s8(v32, *&STACK[0x300]);
  v39 = veorq_s8(v33, *&STACK[0x300]);
  v40 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v38), v10);
  v41 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v39), v10);
  v42 = veorq_s8(v41, vsraq_n_u64(vshlq_n_s64(v39, 3uLL), v39, 0x3DuLL));
  v43 = veorq_s8(v40, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v44 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v43);
  v46 = vaddq_s64(v44, v42);
  v48 = *&STACK[0x2D0];
  v47 = *&STACK[0x2E0];
  v49 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v46, v46), *&STACK[0x2E0]), v46), *&STACK[0x2D0]), v11);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v45, v45), *&STACK[0x2E0]), v45), *&STACK[0x2D0]), v11);
  v51 = vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL);
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v53 = veorq_s8(v49, v51);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = vaddq_s64(v54, v52);
  v58 = *&STACK[0x2A0];
  v57 = *&STACK[0x2B0];
  v59 = veorq_s8(vaddq_s64(vsubq_s64(v56, vandq_s8(vaddq_s64(v56, v56), *&STACK[0x2B0])), *&STACK[0x2A0]), v16);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(v55, vandq_s8(vaddq_s64(v55, v55), *&STACK[0x2B0])), *&STACK[0x2A0]), v16);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v62 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62);
  v65 = *&STACK[0x280];
  v66 = veorq_s8(vaddq_s64(v63, v61), *&STACK[0x280]);
  v67 = veorq_s8(v64, *&STACK[0x280]);
  v68 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v69 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = veorq_s8(v66, v68);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = *&STACK[0x380];
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v72, *&STACK[0x380]), vorrq_s8(v72, v14)), v14), v9);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v73, *&STACK[0x380]), vorrq_s8(v73, v14)), v14), v9);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v77), v13);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78), v13);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v82.i64[0] = v18 - 3;
  v82.i64[1] = v18 - 4;
  *&STACK[0x340] = v82;
  v83 = vaddq_s64(v30, v31);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL))), *&STACK[0x260]);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), veorq_s8(v79, v81)), *&STACK[0x260]);
  v180.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v85, v15), vorrq_s8(v85, *&STACK[0x220])), *&STACK[0x220]), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v17)));
  v180.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v15), vorrq_s8(v84, *&STACK[0x220])), *&STACK[0x220]), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), v17)));
  v86 = v36;
  v87 = veorq_s8(v83, v36);
  v88 = veorq_s8(v83, v37);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), v10);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v91, v91), v47), v91), v48), v11);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(v94, vandq_s8(vaddq_s64(v94, v94), v57)), v58), v16);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v65);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, v74), vorrq_s8(v99, v14)), v14), v9);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v13);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v101.i64[0] = v18 - 5;
  v101.i64[1] = v18 - 6;
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), *&STACK[0x260]);
  v105 = vandq_s8(v101, *&STACK[0x390]);
  v106 = vaddq_s64(v29, v31);
  v180.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v104, v15), vorrq_s8(v104, *&STACK[0x220])), *&STACK[0x220]), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v17)));
  v107 = veorq_s8(v106, v36);
  v108 = veorq_s8(v106, v37);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v10);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v47), v111), v48), v11);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v57)), v58), v16);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v65);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v74), vorrq_s8(v119, v14)), v14), v9);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v13);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v125 = vandq_s8(v82, *&STACK[0x390]);
  v126 = veorq_s8(vaddq_s64(v124, v123), *&STACK[0x260]);
  v127 = vandq_s8(*&STACK[0x3A0], *&STACK[0x390]);
  v180.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v15), vorrq_s8(v126, *&STACK[0x220])), *&STACK[0x220]), v12), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v17)));
  v128 = vandq_s8(*&STACK[0x3B0], *&STACK[0x390]);
  v129 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v31);
  v132 = vaddq_s64(v130, v31);
  v130.i64[0] = vqtbl4q_s8(v180, *&STACK[0x360]).u64[0];
  v180.val[0] = veorq_s8(v132, v86);
  v180.val[1] = veorq_s8(v131, v86);
  v180.val[2] = veorq_s8(v131, v37);
  v180.val[3] = veorq_s8(v132, v37);
  v180.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[2]), v10);
  v180.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL), v180.val[3]), v10);
  v133 = vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL);
  v180.val[2] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[1], v133);
  v134 = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[3]);
  v180.val[1] = vaddq_s64(v134, v180.val[2]);
  v180.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180.val[1], v180.val[1]), v47), v180.val[1]), v48), v11);
  v180.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180.val[0], v180.val[0]), v47), v180.val[0]), v48), v11);
  v135 = vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL);
  v180.val[2] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[1], v135);
  v136 = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[3]);
  v180.val[1] = vaddq_s64(v136, v180.val[2]);
  v180.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v180.val[1], vandq_s8(vaddq_s64(v180.val[1], v180.val[1]), v57)), v58), v16);
  v180.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v180.val[0], vandq_s8(vaddq_s64(v180.val[0], v180.val[0]), v57)), v58), v16);
  v137 = vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL);
  v180.val[2] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[1], v137);
  v138 = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[3]);
  v180.val[1] = veorq_s8(vaddq_s64(v138, v180.val[2]), v65);
  v180.val[0] = veorq_s8(v180.val[0], v65);
  v139 = vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL);
  v180.val[2] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[1], v139);
  v140 = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[3]);
  v180.val[1] = vaddq_s64(v140, v180.val[2]);
  v180.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180.val[0], *&STACK[0x380]), vorrq_s8(v180.val[0], v14)), v14), *&STACK[0x370]);
  v180.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180.val[1], *&STACK[0x380]), vorrq_s8(v180.val[1], v14)), v14), *&STACK[0x370]);
  v180.val[2] = veorq_s8(v180.val[1], vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[2]), v13);
  v180.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL), v180.val[3]), v13);
  v141 = vsraq_n_u64(vshlq_n_s64(v180.val[2], 3uLL), v180.val[2], 0x3DuLL);
  v180.val[2] = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v180.val[3], 3uLL), v180.val[3], 0x3DuLL));
  v180.val[3] = veorq_s8(v180.val[1], v141);
  v142 = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v31);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v180.val[3]);
  v180.val[1] = veorq_s8(vaddq_s64(v142, v180.val[2]), *&STACK[0x260]);
  v180.val[0] = veorq_s8(v180.val[0], *&STACK[0x260]);
  v180.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180.val[0], v15), vorrq_s8(v180.val[0], *&STACK[0x220])), *&STACK[0x220]), v12), vnegq_s64(vandq_s8(vshlq_n_s64(v101, 3uLL), v17)));
  v180.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180.val[1], v15), vorrq_s8(v180.val[1], *&STACK[0x220])), *&STACK[0x220]), v12), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), v17)));
  v144 = veorq_s8(v143, v86);
  v145 = veorq_s8(v143, v37);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v10);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v47), v148), v48), v11);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(v151, vandq_s8(vaddq_s64(v151, v151), v57)), v58), v16);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v65);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v156, *&STACK[0x380]), vorrq_s8(v156, v14)), v14), *&STACK[0x370]);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v13);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL))), *&STACK[0x260]);
  v161 = vaddq_s64(v129, v31);
  v180.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, v15), vorrq_s8(v160, *&STACK[0x220])), *&STACK[0x220]), v12), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v17)));
  v162 = veorq_s8(v161, v86);
  v163 = veorq_s8(v161, v37);
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v10);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), v47), v166), v48), v11);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(v169, vandq_s8(vaddq_s64(v169, v169), v57)), v58), v16);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v65);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v174, *&STACK[0x380]), vorrq_s8(v174, v14)), v14), *&STACK[0x370]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v13);
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL))), *&STACK[0x260]);
  v180.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v178, v15), vorrq_s8(v178, *&STACK[0x220])), *&STACK[0x220]), v12), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v17)));
  v130.i64[1] = vqtbl4q_s8(v180, *&STACK[0x360]).u64[0];
  v180.val[0] = vrev64q_s8(*(v4 + v24));
  v180.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v180.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v180.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v180.val[0], v180.val[0], 8uLL), v180.val[1]), v130));
  *(v18 - 6) = vextq_s8(v180.val[0], v180.val[0], 8uLL);
  return (*(v8 + 8 * (((v2 + 16 != v1) * v7) ^ v3)))();
}

uint64_t sub_10012D9EC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x3F8] = v1;
  STACK[0x480] = 0;
  STACK[0x448] = 0;
  return (*(v3 + 8 * (((a1 != 0) * (((v2 - 2805) | 0x14F6) - 5611)) ^ v2)))();
}

uint64_t sub_10012DB2C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x3E0] = *(v3 + 8 * v2);
  STACK[0x9D0] = 0;
  return (*(v3 + 8 * (((STACK[0x9D0] < 0x20) * (((a2 - 4828) | 0x2000) - 8743)) ^ a2)))(a1, 1355549129, 46, 0x832330CE2ACA7050, v3, 0x4191986715653828, 505, 0xE49D77DF873DBF7ELL);
}

uint64_t sub_10012DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  v19 = 7 * ((v18 + 4860) ^ 0x1EF1);
  a16 = (v18 + 5029) ^ (((((2 * &a14) | 0xA8162326) - &a14 - 1410011539) ^ 0xC62C2F1) * v17);
  a15 = a11;
  (*(v16 + 8 * (v18 + 6295)))(&a14);
  a15 = a12;
  a16 = (v19 + 6554) ^ ((((&a14 | 0xCF837DCE) - &a14 + (&a14 & 0x307C8230)) ^ 0x97EAAEAC) * v17);
  v20 = (*(v16 + 8 * (v19 ^ 0x228C)))(&a14);
  return sub_100167C64(v20);
}

void sub_10012DE04()
{
  LODWORD(STACK[0x47C]) = STACK[0x2E0];
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v0;
  JUMPOUT(0x100069A44);
}

uint64_t sub_10012DE38(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x390] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x370] = vdupq_n_s64(v18);
  *&STACK[0x380] = vdupq_n_s64(v14);
  *&STACK[0x350] = vdupq_n_s64(a8);
  *&STACK[0x360] = vdupq_n_s64(a7);
  v20 = v10 + a2 + v19;
  *&STACK[0x330] = vdupq_n_s64(v9);
  *&STACK[0x340] = vdupq_n_s64(v11);
  v21 = vdupq_n_s64(v15);
  *&STACK[0x310] = vdupq_n_s64(v13);
  *&STACK[0x320] = vdupq_n_s64(v12);
  *&STACK[0x2F0] = vdupq_n_s64(0xF2620266DFD8DE82);
  *&STACK[0x300] = vdupq_n_s64(v17);
  *&STACK[0x2D0] = vdupq_n_s64(0x2E1F491EE3CE2388uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x5C3E923DC79C4710uLL);
  *&STACK[0x2B0] = vdupq_n_s64(v16);
  *&STACK[0x2C0] = vdupq_n_s64(0x97A1B9D365930275);
  *&STACK[0x290] = vdupq_n_s64(0x3622E24BF0DE3A9EuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x93BA3B681E438AC2);
  *&STACK[0x280] = vdupq_n_s64(0x3102FDB0D852CBCuLL);
  *&STACK[0x3B0] = xmmword_100382E40;
  v22 = *&STACK[0x390];
  v23 = *&STACK[0x3A0];
  v25 = *&STACK[0x350];
  v24 = *&STACK[0x360];
  v27 = *&STACK[0x330];
  v26 = *&STACK[0x340];
  v29 = *&STACK[0x310];
  v28 = *&STACK[0x320];
  v31 = *&STACK[0x2F0];
  v30 = *&STACK[0x300];
  v33 = *&STACK[0x2D0];
  v32 = *&STACK[0x2E0];
  v35 = *&STACK[0x2B0];
  v34 = *&STACK[0x2C0];
  v37 = *&STACK[0x290];
  v36 = *&STACK[0x2A0];
  v38.i64[0] = v8 + a1 + v20 + 7 * (a4 ^ 0x1821u) - 3916;
  v38.i64[1] = v8 + a1 + v20 + 10;
  v39.i64[0] = v8 + a1 + v20 + 15;
  v39.i64[1] = v8 + a1 + v20 + 14;
  v40.i64[0] = v8 + a1 + v20 + 13;
  v40.i64[1] = v8 + a1 + v20 + 12;
  v41.i64[0] = v8 + a1 + v20 + 9;
  v41.i64[1] = v8 + a1 + v20 + 8;
  *&v42 = v8 + a1 + v20 + 7;
  *(&v42 + 1) = v8 + a1 + v20 + 6;
  *&STACK[0x3E0] = v42;
  *&v42 = v8 + a1 + v20 + 5;
  *(&v42 + 1) = v8 + a1 + v20 + 4;
  *&STACK[0x3D0] = v42;
  v43 = vandq_s8(v41, v23);
  v44 = vandq_s8(v40, v23);
  v45 = vandq_s8(v39, v23);
  v46 = vandq_s8(v38, v23);
  *&STACK[0x3C0] = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), *&STACK[0x380]);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), *&STACK[0x380]);
  v50 = veorq_s8(v49, *&STACK[0x370]);
  v51 = veorq_s8(v48, *&STACK[0x370]);
  v52 = veorq_s8(v48, v24);
  v53 = veorq_s8(v49, v24);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v53);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v52);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v55, v55), v25), v55), v26), v27);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v54, v54), v25), v54), v26), v27);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, v28), vorrq_s8(v60, v21)), v21), v29);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, v28), vorrq_s8(v61, v21)), v21), v29);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64), v30);
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65), v30);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v69 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v70 = veorq_s8(v66, v68);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v70);
  v73 = veorq_s8(vaddq_s64(v71, v69), v31);
  v74 = veorq_s8(v72, v31);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = vaddq_s64(v77, v75);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(v79, vandq_s8(vaddq_s64(v79, v79), v32)), v33), v34);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(v78, vandq_s8(vaddq_s64(v78, v78), v32)), v33), v34);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v84 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v35);
  v87 = veorq_s8(v85, v35);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v88.i64[0] = v8 + a1 + v20 + 3;
  v88.i64[1] = v8 + a1 + v20 + 2;
  v91 = vaddq_s64(v47, *&STACK[0x380]);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v90);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v89);
  v184.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v92, v92), v36), v92), v37), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v22)));
  v184.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), v36), v93), v37), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v22)));
  v94 = veorq_s8(v91, *&STACK[0x370]);
  v95 = veorq_s8(v91, v24);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), v25), v96), v26), v27);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, v28), vorrq_s8(v99, v21)), v21), v29);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v30);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v31);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(v106, vandq_s8(vaddq_s64(v106, v106), v32)), v33), v34);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v35);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v109.i64[0] = v8 + a1 + v20 + 1;
  v109.i64[1] = v8 + a1 + v20;
  v112 = vaddq_s64(v111, v110);
  v113 = vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v36), v112);
  v114 = vandq_s8(v109, v23);
  v115 = vaddq_s64(*&STACK[0x3C0], *&STACK[0x380]);
  v184.val[0] = vshlq_u64(veorq_s8(vaddq_s64(v113, v37), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v22)));
  v116 = veorq_s8(v115, *&STACK[0x370]);
  v117 = veorq_s8(v115, v24);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), v25), v118), v26), v27);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, v28), vorrq_s8(v121, v21)), v21), v29);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v30);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v31);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), v32)), v33), v34);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v35);
  v132 = vandq_s8(v88, v23);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL)));
  v134 = vandq_s8(*&STACK[0x3D0], v23);
  v184.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v133, v133), v36), v133), v37), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v22)));
  v135 = vandq_s8(*&STACK[0x3E0], v23);
  v136 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), *&STACK[0x380]);
  v140 = vaddq_s64(v138, *&STACK[0x380]);
  v184.val[3].i64[0] = vqtbl4q_s8(v184, *&STACK[0x3B0]).u64[0];
  v184.val[0] = veorq_s8(v140, *&STACK[0x370]);
  v184.val[1] = veorq_s8(v139, *&STACK[0x370]);
  v141 = veorq_s8(v139, v24);
  v184.val[2] = veorq_s8(v140, v24);
  v184.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184.val[0], 0x38uLL), v184.val[0], 8uLL), v184.val[2]);
  v184.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184.val[1], 0x38uLL), v184.val[1], 8uLL), v141);
  v184.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184.val[1], v184.val[1]), v25), v184.val[1]), v26), v27);
  v184.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184.val[0], v184.val[0]), v25), v184.val[0]), v26), v27);
  v142 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v143 = veorq_s8(v184.val[0], vsraq_n_u64(vshlq_n_s64(v184.val[2], 3uLL), v184.val[2], 0x3DuLL));
  v184.val[2] = veorq_s8(v184.val[1], v142);
  v144 = vsraq_n_u64(vshlq_n_s64(v184.val[0], 0x38uLL), v184.val[0], 8uLL);
  v184.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184.val[1], 0x38uLL), v184.val[1], 8uLL), v184.val[2]);
  v184.val[1] = vaddq_s64(v144, v143);
  v184.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v184.val[0], v28), vorrq_s8(v184.val[0], v21)), v21), v29);
  v184.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v184.val[1], v28), vorrq_s8(v184.val[1], v21)), v21), v29);
  v145 = veorq_s8(v184.val[1], vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v184.val[2] = veorq_s8(v184.val[0], vsraq_n_u64(vshlq_n_s64(v184.val[2], 3uLL), v184.val[2], 0x3DuLL));
  v184.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184.val[1], 0x38uLL), v184.val[1], 8uLL), v145), v30);
  v184.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184.val[0], 0x38uLL), v184.val[0], 8uLL), v184.val[2]), v30);
  v146 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v147 = veorq_s8(v184.val[0], vsraq_n_u64(vshlq_n_s64(v184.val[2], 3uLL), v184.val[2], 0x3DuLL));
  v184.val[2] = veorq_s8(v184.val[1], v146);
  v148 = vsraq_n_u64(vshlq_n_s64(v184.val[0], 0x38uLL), v184.val[0], 8uLL);
  v184.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184.val[1], 0x38uLL), v184.val[1], 8uLL), v184.val[2]);
  v184.val[1] = veorq_s8(vaddq_s64(v148, v147), v31);
  v184.val[0] = veorq_s8(v184.val[0], v31);
  v149 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v150 = veorq_s8(v184.val[0], vsraq_n_u64(vshlq_n_s64(v184.val[2], 3uLL), v184.val[2], 0x3DuLL));
  v184.val[2] = veorq_s8(v184.val[1], v149);
  v151 = vsraq_n_u64(vshlq_n_s64(v184.val[0], 0x38uLL), v184.val[0], 8uLL);
  v184.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184.val[1], 0x38uLL), v184.val[1], 8uLL), v184.val[2]);
  v184.val[1] = vaddq_s64(v151, v150);
  v184.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v184.val[1], vandq_s8(vaddq_s64(v184.val[1], v184.val[1]), v32)), v33), v34);
  v184.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v184.val[0], vandq_s8(vaddq_s64(v184.val[0], v184.val[0]), v32)), v33), v34);
  v152 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v153 = veorq_s8(v184.val[0], vsraq_n_u64(vshlq_n_s64(v184.val[2], 3uLL), v184.val[2], 0x3DuLL));
  v184.val[2] = veorq_s8(v184.val[1], v152);
  v154 = vsraq_n_u64(vshlq_n_s64(v184.val[0], 0x38uLL), v184.val[0], 8uLL);
  v184.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184.val[1], 0x38uLL), v184.val[1], 8uLL), v184.val[2]);
  v184.val[1] = veorq_s8(vaddq_s64(v154, v153), v35);
  v184.val[0] = veorq_s8(v184.val[0], v35);
  v155 = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v156 = veorq_s8(v184.val[0], vsraq_n_u64(vshlq_n_s64(v184.val[2], 3uLL), v184.val[2], 0x3DuLL));
  v184.val[2] = veorq_s8(v184.val[1], v155);
  v157 = vsraq_n_u64(vshlq_n_s64(v184.val[0], 0x38uLL), v184.val[0], 8uLL);
  v184.val[0] = vsraq_n_u64(vshlq_n_s64(v184.val[1], 0x38uLL), v184.val[1], 8uLL);
  v184.val[1] = vaddq_s64(v137, *&STACK[0x380]);
  v184.val[0] = vaddq_s64(v184.val[0], v184.val[2]);
  v158 = vaddq_s64(v157, v156);
  v183.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184.val[0], v184.val[0]), v36), v184.val[0]), v37), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v109, 3uLL), v22)));
  v183.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v158, v158), v36), v158), v37), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v22)));
  v159 = veorq_s8(v184.val[1], *&STACK[0x370]);
  v184.val[0] = veorq_s8(v184.val[1], v24);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v184.val[0]);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v160, v160), v25), v160), v26), v27);
  v184.val[0] = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v184.val[0]);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v162, v28), vorrq_s8(v162, v21)), v21), v29);
  v184.val[0] = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v184.val[0]), v30);
  v184.val[0] = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v184.val[0]), v31);
  v184.val[0] = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v184.val[0]);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(v166, vandq_s8(vaddq_s64(v166, v166), v32)), v33), v34);
  v184.val[0] = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v184.val[0]), v35);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL)));
  v184.val[0] = vaddq_s64(v136, *&STACK[0x380]);
  v183.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), v36), v169), v37), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), v22)));
  v170 = veorq_s8(v184.val[0], *&STACK[0x370]);
  v184.val[0] = veorq_s8(v184.val[0], v24);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v184.val[0]);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), v25), v171), v26), v27);
  v184.val[0] = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v184.val[0]);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, v28), vorrq_s8(v173, v21)), v21), v29);
  v184.val[0] = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v184.val[0]), v30);
  v184.val[0] = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v184.val[0]), v31);
  v184.val[0] = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v184.val[0]);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(v177, vandq_s8(vaddq_s64(v177, v177), v32)), v33), v34);
  v184.val[0] = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v184.val[0]), v35);
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v184.val[0], 3uLL), v184.val[0], 0x3DuLL)));
  v183.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v36), v180), v37), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), v22)));
  v184.val[3].i64[1] = vqtbl4q_s8(v183, *&STACK[0x3B0]).u64[0];
  v181 = vrev64q_s8(v184.val[3]);
  *(v8 + a1 + v20) = vextq_s8(v181, v181, 8uLL);
  return (*(STACK[0x400] + 8 * ((53 * ((v10 & 0xFFFFFFF0) == 16)) ^ a4)))();
}