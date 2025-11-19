uint64_t sub_100BF68A4()
{
  v3 = (v2 + 1809508182) & 0x9424EC7B;
  v4 = *v0;
  STACK[0x3E20] = *v0;
  LODWORD(STACK[0x3E28]) = v3;
  return (*(v1 + 8 * (((((v4 == 0) ^ (v2 + 114)) & 1) * (v3 ^ 0x240B)) ^ v2)))();
}

uint64_t sub_100BF6918()
{
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x39A0]) = 0;
  LODWORD(STACK[0x3828]) = 0;
  LODWORD(STACK[0x3B08]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3838]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  STACK[0x3B18] = v2 >> (v0 - 65);
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3D30]) = 1;
  STACK[0x3950] = v2;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x38B0]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x3AE0]) = 1;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x38B8]) = 1;
  LODWORD(STACK[0x3AE8]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x3AF0]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3800]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3808]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x3810]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x3AD8]) = 1;
  LODWORD(STACK[0x3858]) = 1;
  LODWORD(STACK[0x3860]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  return v3();
}

uint64_t sub_100BF69F4()
{
  v3 = *(v1 + 8 * (((LODWORD(STACK[0x2C20]) != ((v0 - 406286034) & 0x183772FF ^ 0x529E)) * ((v0 - 406286034) ^ 0xE7C8DF65)) ^ v0));
  STACK[0x3D58] = STACK[0x10E8];
  STACK[0x3D50] = STACK[0x2620];
  LODWORD(STACK[0x3E18]) = STACK[0x31A8];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3D40]) = STACK[0x3540];
  LODWORD(STACK[0x3D28]) = STACK[0x1FD8];
  LODWORD(STACK[0x3B08]) = STACK[0x3710];
  LODWORD(STACK[0x3AE8]) = v2;
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  return v3();
}

uint64_t sub_100BF6DFC@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int8x16_t a5@<Q2>, int32x4_t a6@<Q3>, int8x16_t a7@<Q4>, int8x16_t a8@<Q5>)
{
  a8.i64[0] = *(v9 + 4);
  a8.i32[2] = *(v9 + 12);
  v15 = vextq_s8(a7, a8, 0xCuLL);
  a8.i32[3] = *(a1 + 4 * (v11 + a2));
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a8, a4), vandq_s8(v15, a3)), 1uLL), *(v9 - 908));
  v17.i32[0] = *(v8 + 4 * (*(v9 + 4) & 1));
  v17.i32[1] = *(v8 + 4 * (*(v9 + 8) & 1));
  v17.i32[2] = *(v8 + 4 * (a8.i8[8] & 1));
  v17.i32[3] = *(v8 + 4 * (a8.i8[12] & 1));
  *v9 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a5)), a6), v17);
  return (*(v14 + 8 * (((v12 == 0) * v13) ^ v10)))();
}

uint64_t sub_100BF6EC8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X6>, int a7@<W8>)
{
  v16 = v12 + v7 + 3;
  v17 = *(v12 + v7);
  v18 = *(a4 + (v11 & (((v12 + v7) & 0xFFFFFFF8 ^ 0xFB3BECC0) - 23683882 + (((v8 - 3551) ^ 0xF677CBF3) & (2 * ((v12 + v7) & 0xFFFFFFF8))))));
  v19 = v7 + 1679642246;
  v20 = __ROR8__((v12 + v7) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (v20 + v18 - ((2 * (v20 + v18)) & 0x336ACAA5BB6CB3F6) - 0x664A9AAD2249A605) ^ 0x6DA3341B42E8659CLL;
  v22 = v21 ^ __ROR8__(v18, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (0x2D8F3BE9BC8F9EDFLL - ((v23 + v22) | 0x2D8F3BE9BC8F9EDFLL) + ((v23 + v22) | 0xD270C41643706120)) ^ 0xC74286F87F800B69;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v15;
  v27 = __ROR8__(v26, 8);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (v27 + v28) ^ a3;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xC7DDC9F6CC45B721;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = *(a4 + (v11 & (((v12 + v7 + 1) & 0xFFFFFFF8 ^ 0xEFE344CA) + 166675661 + ((2 * ((v12 + v7 + 1) & 0xFFFFFFF8)) & 0xDFC68990))));
  v34 = (__ROR8__(v31, 8) + v32) ^ a1;
  v35 = (__ROR8__((v12 + v7 + 1) & 0xFFFFFFFFFFFFFFF8, 8) + v33) ^ 0xF41651499F5E3C67;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = v34 ^ __ROR8__(v32, 61);
  v39 = (0xD5815877FCE6B008 - ((v37 + v36) | 0xD5815877FCE6B008) + ((v37 + v36) | 0x2A7EA78803194FF7)) ^ 0x3F4CE5663FE925BELL;
  v40 = v39 ^ __ROR8__(v36, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v15;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v34, 8) + v38) ^ v13;
  v44 = (__ROR8__(v41, 8) + v42) ^ a3;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (0xA9CF89E49FDCABBCLL - ((v46 + v45) | 0xA9CF89E49FDCABBCLL) + ((v46 + v45) | 0x5630761B60235443)) ^ 0x91EDBFEDAC66E362;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = __ROR8__(v43, 8) + (v43 ^ __ROR8__(v38, 61));
  v51 = (v12 + v7 + 2) & 0xFFFFFFFFFFFFFFF8;
  v52 = *(a4 + (v11 & (1034213387 * (((-1746340957 * v51) & 0x403016B8) + ((-1746340957 * v51) | 0x403016BE)) - 858177683)));
  v53 = v49 + v48 - ((2 * (v49 + v48)) & 0xCE22E1586F737E02);
  v54 = __ROR8__(v51, 8);
  v55 = (STACK[0x4F0] + v7);
  v56 = (((2 * (v52 + v54)) | 0xD622743678F1C280) - (v52 + v54) - 0x6B113A1B3C78E140) ^ 0x9F076B52A326DD27;
  v57 = v56 ^ __ROR8__(v52, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (v53 + 0x671170AC37B9BF01) ^ 0xCF3750096E6B6579;
  v60 = v59 ^ __ROR8__(v48, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ v13;
  LODWORD(v30) = ((v50 ^ a2) >> (a5 & 0x38)) ^ v17;
  v62 = (((2 * (v58 + v57)) | 0xB58FE52E340981DCLL) - (v58 + v57) + 0x25380D68E5FB3F12) ^ 0xCFF5B07926F4AAA7;
  v63 = v62 ^ __ROR8__(v57, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) & 0x15FB096D3C52CA8) - (v64 + v63) + 0x7F5027B4961D69ABLL) ^ 0x5D25F373AE285030;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = ((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v60, 61))) ^ a2) >> ((a5 + 8) & 0x38);
  v69 = __ROR8__((((v67 + v66) & a6 ^ 0x610855D11401826) + ((v67 + v66) ^ 0xE1A31A22E03F65D9) - (((v67 + v66) ^ 0xE1A31A22E03F65D9) & a6)) ^ 0x22BC8FEC1FDB053BLL, 8);
  v70 = v68 ^ *v55;
  v71 = (((v67 + v66) & a6 ^ 0x610855D11401826) + ((v67 + v66) ^ 0xE1A31A22E03F65D9) - (((v67 + v66) ^ 0xE1A31A22E03F65D9) & a6)) ^ 0x22BC8FEC1FDB053BLL ^ __ROR8__(v66, 61);
  v72 = (((2 * (v69 + v71)) | 0xE21236CAAE7A624CLL) - (v69 + v71) - 0x71091B65573D3126) ^ 0xB6D4D2939B788607;
  v73 = v72 ^ __ROR8__(v71, 61);
  v16 &= 0xFFFFFFFFFFFFFFF8;
  v74 = *(a4 + (v11 & (v16 - 103642732)));
  v75 = (v74 + __ROR8__(v16, 8)) ^ 0xF41651499F5E3C67;
  v76 = __ROR8__(v75, 8);
  v77 = (__ROR8__(v72, 8) + v73) ^ a1;
  v78 = v75 ^ __ROR8__(v74, 61);
  v79 = (v76 + v78) ^ v10;
  v80 = v77 ^ __ROR8__(v73, 61);
  v81 = v79 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v79, 8) + v81) ^ v15;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (v84 + v83 - ((2 * (v84 + v83)) & 0xEAF389E1B8A5A522) - 0xA863B0F23AD2D6FLL) ^ 0x10D6DE43F2EFEE4CLL;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (__ROR8__(v77, 8) + v80) ^ v13;
  v89 = (((2 * (v87 + v86)) | 0x37A6886A654DFA98) - (v87 + v86) - 0x1BD3443532A6FD4CLL) ^ 0xDC0E8DC3FEE34A6DLL;
  v90 = v89 ^ __ROR8__(v86, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ a1;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v88, 8) + (v88 ^ __ROR8__(v80, 61));
  v94 = (__ROR8__(v91, 8) + v92) ^ v13;
  LODWORD(v92) = (((__ROR8__(v94, 8) + (v94 ^ __ROR8__(v92, 61))) ^ a2) >> ((a5 + 24) & 0x38)) ^ v55[2];
  LODWORD(v91) = (v19 ^ 0xDBC02172) & (2 * (v19 & 0x1BE2B17A)) ^ v19 & 0x1BE2B17A;
  LODWORD(v94) = ((2 * (v19 ^ 0xF84441A2)) ^ 0xC74DE1B0) & (v19 ^ 0xF84441A2) ^ (2 * (v19 ^ 0xF84441A2)) & v9;
  LODWORD(v93) = (((((2 * (v93 ^ 0x6F18F2E93F1DB8D0)) | 0xD4D76AEF954414B2) - (v93 ^ 0x6F18F2E93F1DB8D0) - 0x6A6BB577CAA20A59) ^ 0xC4B08F4C517AFAA1) >> ((a5 + 16) & 0x38)) ^ v55[1];
  LODWORD(v55) = ((4 * (v94 ^ 0x20A21048)) ^ 0x8E9BC360) & (v94 ^ 0x20A21048) ^ (4 * (v94 ^ 0x20A21048)) & v9;
  LODWORD(v93) = (v92 << 24) | (v93 << 16);
  LODWORD(v92) = v55 ^ 0x61243098;
  LODWORD(v55) = (v55 ^ 0x282C040) & (16 * ((v94 ^ 0x4304C090) & (4 * v91) ^ v91)) ^ (v94 ^ 0x4304C090) & (4 * v91) ^ v91;
  LODWORD(v92) = ((16 * v92) ^ 0x3A6F0D80) & v92 ^ (16 * v92) & (v9 - 8);
  LODWORD(v94) = v92 ^ 0x4180F058;
  LODWORD(v92) = v55 ^ v9 ^ (v92 ^ 0x22260000) & (v55 << 8);
  *(v14 + 4 * (((v19 ^ (2 * ((v92 << 16) & a7 ^ v92 ^ ((v92 << 16) ^ 0x70D80000) & ((v94 << 8) & a7 ^ 0x41060000 ^ ((v94 << 8) ^ 0x26F00000) & v94)))) >> 2) ^ 0x276BD432)) = (v93 | v30 | (v70 << 8)) - 951885462 - 2 * ((v93 | v30 | (v70 << 8)) & 0x4743616F ^ v30 & 5);
  return (*(STACK[0x540] + 8 * (((8 * ((v7 + 4) < 0x40)) | (32 * ((v7 + 4) < 0x40))) ^ v8)))();
}

uint64_t sub_100BF7704()
{
  v3 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0x1270] = 0;
  return (*(v2 + 8 * ((((943 * ((v0 - 516055578) & 0x1EC272BE ^ 0x3037)) ^ 0x211E) * (v3 != 0x308E083E0C524CBELL)) ^ v0)))();
}

uint64_t sub_100BF77F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v48 = STACK[0x1558] - 0x1883660EE8144416;
  STACK[0x530] = *(v44 + 8 * a3);
  *&STACK[0x430] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v47 = vdupq_n_s64(0x38uLL);
  *&STACK[0x360] = vdupq_n_s64(0x9827CF4CE56C3ECuLL);
  *&STACK[0x390] = vdupq_n_s64(0x2AA0ABC1F94F07A2uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xBA11945B63D2E5C7);
  *&STACK[0x2C0] = vdupq_n_s64(0x9E48E87A9E6AD591);
  *&STACK[0x3B0] = vdupq_n_s64(0xB8411BA9A731DA24);
  *&STACK[0x330] = vdupq_n_s64(0x5EAB108B2C6CF8AuLL);
  *&STACK[0x4A0] = vdupq_n_s64(0x209044526AC00001uLL);
  *&STACK[0x490] = vdupq_n_s64(0x70E93863C81BB7FFuLL);
  *&STACK[0x480] = vdupq_n_s64(0xBFF6C21B210E4F37);
  v45 = STACK[0x530];
  *&STACK[0x3C0] = vdupq_n_s64(0x4E9FA08069BD117DuLL);
  *&STACK[0x3D0] = vdupq_n_s64(0x9D63C3648794ABC0);
  *&STACK[0x440] = vdupq_n_s64(0xCC6B1AA49436A86CLL);
  *&STACK[0x370] = vdupq_n_s64(0x83899CE40040063ALL);
  *&STACK[0x380] = vdupq_n_s64(0xC2426338D8F8292BLL);
  *&STACK[0x340] = vdupq_n_s64(0xE39B6E8EBC4508FFLL);
  *&STACK[0x350] = vdupq_n_s64(0xAD22C7B496DB2F16);
  *&STACK[0x310] = vdupq_n_s64(0x4E7AE938E8DB7528uLL);
  *&STACK[0x320] = vdupq_n_s64(0xEE93EFF9FB91609BLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x19BD561D2BFA5152uLL);
  *&STACK[0x300] = vdupq_n_s64(0x472F9ACC3636AADEuLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x2EAD2D51E70187D4uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x282209998BDCA063uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x5662268C9D216ADuLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xA96E9C25B4926875);
  return v45(a1, 0x83899CE40040063ALL, 0xAD22C7B496DB2F16, 1652047985, 0x7B5626353E243BAALL, 0xCC6B1AA49436A86CLL, 0x209044526AC00001, -1652052922, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, v47.i64[0], v47.i64[1], a41, v48, a43, a44);
}

uint64_t sub_100BF7B38()
{
  STACK[0x8E8] = 0;
  STACK[0x818] = 0;
  v3 = (*(v0 + 8 * (v2 + 14712)))(&STACK[0xA90], &STACK[0x95C], v1, &STACK[0x8E8], &STACK[0x818]);
  return (*(v0 + 8 * ((((v3 ^ 0xFFFBE7F9) - 142844776 + (((v2 + 1627412593) & 0x9EFF64AF ^ 0xFFF7CFDD) & (2 * v3)) == -143113071) * (((v2 - 306047939) & 0x123DBEFD) - 5677)) ^ v2)))();
}

uint64_t sub_100BF7C98(int a1)
{
  STACK[0x1388] = v4;
  LODWORD(STACK[0x9CC]) = a1;
  STACK[0x25D0] = *v1;
  *(v6 - 232) = (v3 - 1723118729) ^ (1917435887 * (((((v6 - 240) | 0x45DAEE98) ^ 0xFFFFFFFE) - (~(v6 - 240) | 0xBA251167)) ^ 0x5C9E4A61));
  (*(v5 + 8 * (v3 ^ 0x61A4)))(v6 - 240);
  v1[1] = *(v2 + 48);
  v1[2] = *(v2 + 56);
  STACK[0x25D8] = *v1;
  *(v6 - 240) = (v3 + 1717163676) ^ (1964904101 * ((v6 + 588248202 - 2 * ((v6 - 240) & 0x230FF57A)) ^ 0xD92D1EFE));
  v7 = (*(v5 + 8 * (v3 + 24241)))(v6 - 240);
  return (*(v5 + 8 * v3))(v7);
}

uint64_t sub_100BF82F8()
{
  v4 = (v2 + 1569575499) & 0x2271DB7F;
  STACK[0x36F0] = *(v1 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = v0 - 21119 + (v4 ^ 0x48E5);
  v5 = *(v3 + 8 * v4);
  STACK[0x3850] = 31;
  return v5();
}

uint64_t sub_100BF83B4@<X0>(unint64_t a1@<X8>)
{
  STACK[0xA98] = a1;
  LODWORD(STACK[0x15FC]) = v2;
  return (*(v3 + 8 * ((6667 * (v1 < ((v1 - 597258448) ^ 0x5D574710))) ^ (v1 - 597279608))))();
}

void sub_100BF845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  *(v22 - 240) = (v20 + 2120267152) ^ (410706167 * ((v22 + 31080227 - 2 * ((v22 - 240) & 0x1DA4013)) ^ 0x9A056C45));
  (*(v21 + 8 * (v20 + 2120268501)))(v22 - 240);
  (*(v21 + 8 * (v20 ^ 0x819FB9FF)))(*a20);
  JUMPOUT(0x1009E014CLL);
}

uint64_t sub_100BF8540()
{
  v3 = LOBYTE(STACK[0xFB3]);
  LODWORD(STACK[0xFC4]) = v0;
  return (*(v2 + 8 * (((((v1 - 1518305306) | 0x12500210) ^ 0xB7D0CC00) * v3) ^ v1)))();
}

uint64_t sub_100BF865C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  LODWORD(STACK[0x2D0]) = v7;
  v9 = *(v8 + 8 * ((v6 ^ 0xFFFFD094) + 19676));
  STACK[0x2B0] = a2;
  STACK[0x2E0] = a5;
  v10 = *(v8 + 8 * ((v9((((v5 - v7 + 2097722691) ^ 0x14A420A0) - 1772918153) ^ (v5 - v7 + 2097722691) ^ (((v5 - v7 + 2097722691) ^ 0xBBB84B0) - 1991455129) ^ (((v5 - v7 + 2097722691) ^ 0xFFFCFFFF) + 2097919274) ^ ((((v6 ^ 0xFFFFD094) + 1697) ^ 0x1F1C9212) + ((v5 - v7 + 2097722691) ^ 0x9DEBEEC6)) ^ 0x7D08B529) != 0) | v6 ^ 0xFFFFD094));
  return v10();
}

uint64_t sub_100BF8814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = v11 + a5;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8) + a2;
  v24 = __ROR8__(v23 ^ v21, 8);
  v25 = v23 ^ v13;
  v26 = (v24 + v25) ^ a6;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((v28 + v27) | 0xE25A2F487C1FA9C7) - ((v28 + v27) | 0x1DA5D0B783E05638) + (v8 ^ v12) + 0x1DA5D0B70240942CLL) ^ 0xFE58F013599DCA2ALL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ a3;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) | 0x2987950CB86FC8BELL) - (v33 + v32) + 0x6B3C3579A3C81BA1) ^ a7;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((a8 & (2 * (v36 + v35))) - (v36 + v35) + v15) ^ v16 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(((a8 & (2 * (v36 + v35))) - (v36 + v35) + v15) ^ v16, 8) + v37) ^ 0xB2823E14A03C0367;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  *(v14 + a5) = ((((v17 | (2 * (v40 + v39))) - (v40 + v39) + v18) ^ v19) >> (8 * (v22 & 7u))) ^ *v22;
  v41 = v9 < v10;
  if (v41 == a5 + 1 > 0x9CA551E1)
  {
    v41 = a5 + v20 < v9;
  }

  return (*(a1 + 8 * (((2 * !v41) | (16 * !v41)) ^ v8)))();
}

uint64_t sub_100BF89C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
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
  v6 = (a5 + 11906) | 0x1214;
  LODWORD(STACK[0x3B08]) = v6;
  v7 = (a5 - 380) | 0x4212u;
  v8 = STACK[0x2238] != v6 - 21102;
  STACK[0x3AF0] = v7;
  v9 = *(v5 + 8 * ((v8 * (v7 ^ 0x5470)) ^ a5));
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
  LODWORD(STACK[0x3980]) = 66;
  LODWORD(STACK[0x2BB0]) = 49;
  LODWORD(STACK[0x3988]) = 47;
  v18 = STACK[0x4A8];
  v19 = STACK[0x2928];
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
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  LODWORD(v7) = STACK[0x1A90];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  v20 = STACK[0x1BC8];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v19;
  STACK[0x3D50] = STACK[0x448];
  STACK[0x3AD8] = v18;
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = v20;
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = v7;
  LODWORD(STACK[0x32D0]) = STACK[0x3D90];
  return v9(a1, 0, a2, v18, a3, a4, v17);
}

uint64_t sub_100BF8C84(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  *a31 = a29;
  *v33 = a1;
  *(v35 - 144) = *v31;
  *(v35 - 136) = ((v34 ^ 0xAD77DA04) - 1723121376) ^ (1917435887 * ((v35 - 144) ^ 0xE6BB5B06));
  (*(v32 + 8 * (v34 ^ 0xAD7781DF)))(v35 - 144);
  v31[1] = *(a30 + 48);
  v31[2] = *(a30 + 56);
  *(v35 - 136) = *v31;
  *(v35 - 144) = ((v34 ^ 0xAD77DA04) + 1717161029) ^ (1964904101 * ((v35 + 1444272612 - 2 * ((v35 - 144) & 0x5615DA74)) ^ 0xAC3731F0));
  v36 = (*(v32 + 8 * (v34 ^ 0xAD7781AA)))(v35 - 144);
  return (*(v32 + 8 * (v34 ^ 0xAD77DA04)))(v36);
}

uint64_t sub_100BF8D90@<X0>(int a1@<W3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v9 = (v7 ^ 0xF1828501) & (2 * (v7 & v4)) ^ v7 & v4;
  v10 = ((2 * ((a1 + v3 + 2555) ^ v7 ^ 0x81F1465D)) ^ 0x9580D7F6) & ((a1 + v3 + 2555) ^ v7 ^ 0x81F1465D) ^ (2 * ((a1 + v3 + 2555) ^ v7 ^ 0x81F1465D)) & (v5 + 10);
  v11 = v10 ^ 0x4A402809;
  v12 = (v10 ^ 0x4003F0) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x2B01AFEC) & v11 ^ (4 * v11) & (v5 + 8);
  v14 = (v13 ^ 0xA002BF0) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x40C04013)) ^ 0xAC06BFB0) & (v13 ^ 0x40C04013) ^ (16 * (v13 ^ 0x40C04013)) & v5;
  v16 = *(v8 - 208 + 4 * (((v7 ^ (2 * (((v14 ^ (v5 + 11) ^ (v15 ^ 0x8002B00) & (v14 << 8)) << 16) & 0x4AC00000 ^ v14 ^ (v5 + 11) ^ (v15 ^ 0x8002B00) & (v14 << 8) ^ (((v14 ^ (v5 + 11) ^ (v15 ^ 0x8002B00) & (v14 << 8)) << 16) ^ 0x6BFB0000) & (((v15 ^ 0x42C0404B) << 8) & 0x4AC00000 ^ 0xA800000 ^ (((v15 ^ 0x42C0404B) << 8) ^ 0x406B0000) & (v15 ^ 0x42C0404B))))) >> 2) ^ 0x3E709C97) + 72);
  v17 = v7 + v4;
  *(a2 + v17) = (HIBYTE(v16) ^ 0x43) - 2 * ((HIBYTE(v16) ^ 0x43) & 0xF) + 15;
  *(a2 + v17 + 2) = (BYTE1(v16) ^ 0x1F) - 2 * ((BYTE1(v16) ^ 0x1F) & 0xF) + 15;
  *(a2 + (v7 + v4 + 1)) = (BYTE2(v16) ^ 0xB3) + (~(2 * (BYTE2(v16) ^ 0xB3)) | 0xE1) + 16;
  *(a2 + v17 + 3) = v16 ^ 5;
  v18 = *(v8 - 104);
  v19 = v18 > 0xFF6EA23D;
  v20 = v18 + v6;
  v21 = v19;
  v22 = v7 - 95157392 < v20;
  if (v7 - 95157392 < v6 != v21)
  {
    v22 = v21;
  }

  return (*(a3 + 8 * ((38 * v22) ^ v3)))();
}

uint64_t sub_100BF9000()
{
  LODWORD(STACK[0x3B08]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3838]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  STACK[0x3B18] = v2 >> ((v0 + 117) & 0xDF ^ 0x96);
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3D30]) = 1;
  STACK[0x3950] = v2;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x38B0]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x3AE0]) = 1;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x38B8]) = 1;
  LODWORD(STACK[0x3AE8]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3D38]) = 1;
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x3AF0]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3800]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  LODWORD(STACK[0x3808]) = 1;
  LODWORD(STACK[0x3D28]) = 1;
  LODWORD(STACK[0x3B00]) = 1;
  LODWORD(STACK[0x3998]) = 1;
  LODWORD(STACK[0x3810]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3818]) = 1;
  LODWORD(STACK[0x3828]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3AD8]) = 1;
  LODWORD(STACK[0x3858]) = 1;
  LODWORD(STACK[0x3860]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  return v3();
}

uint64_t sub_100BF92A0()
{
  v3 = ((v0 - 2084584447) & 0xFDDFD63C) + 1977123461;
  v4 = STACK[0x1210];
  if (LODWORD(STACK[0x1210]) == -769884024)
  {
    v5 = -143113071;
  }

  else
  {
    v5 = -143155722;
  }

  v6 = v1 == v3;
  v7 = v1 == v3;
  if (v6)
  {
    v1 = v5;
  }

  LODWORD(STACK[0x1160]) = v1;
  v8 = v4 == -769884024 && v7;
  return (*(v2 + 8 * ((v8 * (((v0 - 9292) | 0x424) ^ 0x798)) ^ v0)))();
}

uint64_t sub_100BF9400@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D20]) = 0;
  LODWORD(STACK[0x3988]) = 0;
  LODWORD(STACK[0x3808]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3B00]) = 0;
  LODWORD(STACK[0x3998]) = 0;
  LODWORD(STACK[0x3810]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x39A0]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3828]) = 0;
  LODWORD(STACK[0x3B08]) = 0;
  LODWORD(STACK[0x39E8]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x39F0]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3AD8]) = 0;
  LODWORD(STACK[0x3858]) = 0;
  LODWORD(STACK[0x3D50]) = 0;
  LODWORD(STACK[0x3838]) = 0;
  LODWORD(STACK[0x3860]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x3820]) = 0;
  v3 = a1 | 0x48;
  STACK[0x3B18] = v2 >> ((v3 + 85) ^ 0x96u);
  v4 = v2 ^ STACK[0x3950];
  v5 = (STACK[0x3D78] & 1) == 0;
  v6 = STACK[0x3730];
  if (STACK[0x3D78])
  {
    v6 = v4;
  }

  else
  {
    v6 = v6;
  }

  STACK[0x3730] = v6;
  v7 = *(v1 + 8 * v3);
  STACK[0x3950] = v4;
  v8 = STACK[0x3188];
  if (v5)
  {
    v8 = v4;
  }

  else
  {
    v8 = v8;
  }

  STACK[0x3188] = v8;
  LODWORD(STACK[0x3D30]) = 1;
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3A28]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x38B0]) = 1;
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x3AE0]) = 1;
  LODWORD(STACK[0x3D90]) = 1;
  LODWORD(STACK[0x38B8]) = 1;
  LODWORD(STACK[0x3AE8]) = 1;
  LODWORD(STACK[0x3E18]) = 1;
  LODWORD(STACK[0x3AF0]) = 1;
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3800]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  return v7();
}

uint64_t sub_100BF958C@<X0>(_DWORD *a1@<X8>)
{
  v3 = a1[7600];
  v4 = STACK[0x3DC0];
  v5 = a1[7343];
  v6 = *(STACK[0x3210] + 4 * (v5 ^ 2u));
  v7 = *(STACK[0x3DC0] + 4 * (BYTE2(v5) ^ 0x5ALL) + 279176) + 235696201;
  v8 = *(STACK[0x3210] + 4 * (HIBYTE(v5) ^ 0x1Au)) ^ 0x64795C58;
  v9 = ((((v5 ^ 0x1A2FC102u) >> 7) & 0x1FE) - 2047057302) ^ *(STACK[0x3DC0] + 4 * (((v5 ^ 0xC102) >> 8) ^ 0x7Bu) + 164528);
  v10 = a1[7613];
  v11 = v10 ^ 0x3600E9C0;
  v12 = *(STACK[0x3DC0] + 4 * (a1[7613] ^ 0xC3) + 188836);
  v13 = v6 ^ ((v6 ^ 0x64795C58u) >> 3) ^ ((v6 ^ 0x64795C58u) >> 2);
  LODWORD(v10) = *(STACK[0x3DC0] + 4 * (BYTE1(v10) ^ 0xA0) + 146544);
  v14 = *(STACK[0x3DC0] + 4 * (BYTE2(v11) ^ 9) + 359508);
  LODWORD(v3) = a1[7600] ^ *(STACK[0x3DC0] + 4 * (a1[7600] ^ 0x66) + 157876) ^ *(STACK[0x3DC0] + 4 * ((v3 ^ 0x71F20000) >> 16) + 199308) ^ *(v4 + 4 * ((STACK[0x3D80] ^ 0x3CA9) & ((v3 ^ 0x71F20000uLL) >> 8) ^ 0xCF) + 158904) ^ *(v4 + (((v3 ^ 0x71F20000uLL) >> 22) & 0x3FC) + 208068);
  STACK[0x3550] = v11;
  v15 = *(v4 + ((v11 >> 22) & 0x3FC) + 159984) ^ 0xFBC28809;
  v16 = __ROR4__(v12, 18);
  v17 = v9 ^ v7 ^ v8 ^ (v8 >> 2) ^ (v8 >> 3);
  v18 = a1[7356];
  v19 = ((v18 ^ 0xEB00) >> 8);
  v20 = *(v4 + 4 * (v19 ^ 0xBA) + 186772);
  v21 = (v18 ^ 0xC800EB00) >> 24;
  v22 = -263518491 * *(v4 + 4 * (BYTE2(v18) ^ 0x20) + 369552);
  v23 = v17 ^ (v7 >> 3) & 0xEB9B6EA;
  v24 = STACK[0x37E8];
  LODWORD(v4) = STACK[0x37D8];
  v25 = LODWORD(STACK[0x37D8]) ^ LODWORD(STACK[0x37E8]) ^ v3;
  v26 = v10 ^ v16 ^ v15 ^ (v15 >> 2) ^ (v15 >> 5) ^ (v14 - (BYTE2(v11) ^ 0x70A61FFE));
  v27 = v23 ^ __ROR4__(v13 ^ 0x52FD4A48, 24);
  v28 = v19 ^ v20 ^ __ROR4__((*(STACK[0x3208] + 4 * (a1[7356] ^ 0x27)) - 24090717) ^ 0x583385C2, 24) ^ v22 ^ (v22 >> 2) ^ (v22 >> 6) ^ (*(STACK[0x3208] + 4 * v21) - 24090717);
  v29 = v25 ^ 0x5A16A0B0 ^ v27;
  v27 ^= 0xF24DF3A9;
  v30 = STACK[0x3890];
  v31 = v27 ^ LODWORD(STACK[0x3890]);
  v32 = STACK[0x37C0];
  v33 = STACK[0x3D78];
  v34 = STACK[0x37F0];
  LODWORD(v10) = LODWORD(STACK[0x37F0]) - 1566949387 + LODWORD(STACK[0x37C0]);
  v35 = STACK[0x3888];
  v36 = LODWORD(STACK[0x3D78]) - 1566949387 + LODWORD(STACK[0x3888]);
  v37 = LODWORD(STACK[0x37C8]) ^ 0x76F24223 ^ (LODWORD(STACK[0x3890]) - LODWORD(STACK[0x3D78]));
  LODWORD(v19) = LODWORD(STACK[0x37C8]) ^ 0x76F24223 ^ v36;
  v38 = (v27 ^ LODWORD(STACK[0x37C8])) - LODWORD(STACK[0x37C8]);
  v39 = (v26 ^ 0xA3755392 ^ (v4 - v32) ^ v10 ^ v28) - ((v4 - v32) ^ v10 ^ v28 ^ 0x6826AEEE);
  LODWORD(STACK[0x3548]) = v26;
  LODWORD(v11) = v3 ^ 0xA85B5319;
  LODWORD(v3) = v10 ^ v24 ^ 0x76F24223;
  v40 = v28 ^ 0x6826AEEE;
  v41 = v3 - v10 + ((v4 - v32) ^ v24 ^ 0x76F24223);
  LODWORD(v4) = (v31 - v30) ^ (v29 - (v25 ^ 0xA85B5319)) ^ v38;
  v42 = v3 - v10 + (v32 ^ 0xC9AFA1DD);
  v43 = v3 + (v32 ^ 0xC9AFA1DD);
  v44 = v43 + (v32 ^ 0xC9AFA1DD);
  v45 = v41 + v43;
  v46 = (((v26 ^ 0xCB53FD7C ^ v37) - v37) ^ ((v26 ^ 0xCB53FD7C ^ v19) - v19) ^ v39) - v36;
  v47 = v19 - v36 + v37;
  LODWORD(v3) = v19 + (v33 ^ 0xC9AFA1DD);
  v48 = v19 - v36 + (v33 ^ 0xC9AFA1DD);
  v49 = (v4 - v35);
  v50 = v3 + (v33 ^ 0xC9AFA1DD);
  LODWORD(v10) = a1[3484] + v10 + a1[3493] + v40;
  STACK[0x38B8] = v49;
  LODWORD(v10) = v10 + v49;
  LODWORD(v19) = v11 + v34 + a1[1875] + a1[1884];
  a1[3500] = v10;
  LODWORD(v19) = v19 + v46;
  a1[1891] = v19;
  v51 = v10 ^ v44;
  LODWORD(v19) = -v19;
  LODWORD(v10) = v10 ^ v43;
  v52 = ((v19 ^ v10) - v3) ^ ((v51 ^ v19) - v50);
  LODWORD(v10) = ((v10 ^ v44) - (v50 ^ v3 ^ v19)) ^ v45;
  BYTE2(v19) = BYTE2(v10) ^ 0x73;
  LODWORD(v4) = v10 ^ 0x17;
  v53 = *(STACK[0x35B8] + 4 * (v10 ^ 9u));
  LODWORD(v11) = ((v10 ^ 0xF17) >> 8);
  LODWORD(v10) = BYTE3(v10);
  LODWORD(v19) = BYTE2(v19);
  v54 = v53 ^ v4 ^ 0xF47CCA25;
  v55 = *(STACK[0x35B8] + 4 * (v19 ^ 0x1E));
  LODWORD(v4) = *(STACK[0x35B8] + 4 * (v10 ^ 0xC0)) ^ 0xB7699C89;
  v56 = *(STACK[0x35B8] + 4 * (v11 ^ 0x1E)) ^ 0xF41AAC23;
  v57 = v47 + v3;
  LODWORD(v3) = v3 - 1492060651;
  v43 -= 1492060651;
  v58 = v3 + v50;
  v59 = v43 + v44;
  LODWORD(STACK[0x37E8]) = v42 + v45 + v59;
  v60 = v45 ^ 0x82EA;
  v61 = v56 ^ WORD1(v4) ^ ((v4 ^ v10) << 16);
  LODWORD(v10) = v57 ^ 0x82EA;
  LODWORD(STACK[0x37C8]) = v48 + v57 + v58;
  STACK[0x3D88] = v52;
  v62 = v52 ^ v57;
  LODWORD(STACK[0x37D8]) = v60 + v43;
  LODWORD(STACK[0x37C0]) = (v60 + v43) ^ v59;
  v63 = __ROR4__(v55 ^ v19 ^ 0xF5F4433C, 24);
  LODWORD(v19) = v10 + v3;
  a1[7615] = v61 ^ v11 ^ __ROR4__(v54, 8) ^ v63;
  v64 = STACK[0x35B0];
  v65 = *(STACK[0x35B0] + 4 * (BYTE1(v62) ^ 0x2Bu));
  HIDWORD(v66) = *(STACK[0x35B0] + 4 * (v62 ^ 0x42u)) ^ 0xBA8E15F9;
  LODWORD(v66) = HIDWORD(v66);
  LODWORD(v49) = v66 >> 8;
  v67 = *(STACK[0x35B0] + 4 * ((v62 ^ 0x8E0042) >> 16)) ^ 0xA15679CF;
  LODWORD(STACK[0x3B00]) = v49;
  LODWORD(STACK[0x3890]) = v19;
  LODWORD(STACK[0x3D78]) = v19 ^ v58;
  a1[7358] = v65 ^ 0xC953DB1E ^ v49 ^ __ROR4__(v67, 24) ^ __ROR4__(*(v64 + 4 * (HIBYTE(v62) ^ 0xD4)) ^ 0x547DAC25, 16);
  LODWORD(STACK[0x37F0]) = v43 ^ 0x9A112119;
  LODWORD(STACK[0x3888]) = v3 ^ 0x9A112119;
  return (*(v2 + 8 * ((558 * (v1 == 0)) ^ STACK[0x3E18])))();
}

uint64_t sub_100BF9C24@<X0>(int a1@<W8>)
{
  v3 = *(v1 - 0x683CBC57EAB92A36);
  STACK[0x1658] = v3;
  return (*(v2 + 8 * (((v3 == 0x308E083E0C524CBELL) * ((a1 ^ 0x714F) + a1 - 22145 - 7864)) ^ a1)))();
}

uint64_t sub_100BF9F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  *(v32 - 240) = (v29 + 1717152521) ^ (1964904101 * ((v32 - 1609650895 - 2 * ((v32 - 240) & 0xA00EAE21)) ^ 0x5A2C45A5));
  *(v30 + 1048) = 0;
  v33 = (*(v31 + 8 * (v29 + 13086)))(v32 - 240);
  return (*(v31 + 8 * ((11 * (*a29 != 0)) ^ v29)))(v33);
}

uint64_t sub_100BFA0C4@<X0>(int a1@<W7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25)
{
  v28 = *(v26 + 8 * a2);
  *(v27 - 240) = (a1 - 457559516) ^ (1964904101 * ((((v27 - 240) | 0xE6E13FC) - ((v27 - 240) & 0xE6E13FC)) ^ 0xF44CF878));
  STACK[0x25D8] = a25;
  v29 = (*(v26 + 8 * (v25 + a1 + 17)))(v27 - 240);
  return v28(v29);
}

uint64_t sub_100BFA224(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  if (a4 < v4 != v5 + 743266328 < v4)
  {
    v7 = a4 < v4;
  }

  else
  {
    v7 = v5 + 743266328 < a4;
  }

  return (*(STACK[0x200] + 8 * ((v7 * v6) ^ a3)))();
}

uint64_t sub_100BFA6E4(int a1)
{
  STACK[0xE80] = STACK[0x8A0];
  LODWORD(STACK[0x108C]) = STACK[0x102C];
  return (*(v1 + 8 * (((STACK[0x12F8] == 0) * (((a1 + 306076943) & 0xEDC15FBF) - 2117)) ^ a1)))();
}

uint64_t sub_100BFA760@<X0>(unsigned int a1@<W4>, int a2@<W8>)
{
  v4 = a1 > 0x3E9B941C;
  if (v4 == v3 < 0xC1646BE3)
  {
    v4 = v3 < v2;
  }

  return (*(STACK[0x6D8] + 8 * ((30 * v4) ^ (a2 - 2599))))();
}

uint64_t sub_100BFABC4()
{
  v5 = *(v2 + 1080);
  v6 = 1534937323 * (((~(v4 - 240) | 0x71FCB7CE9C25D1F2) + ((v4 - 240) | 0x8E03483163DA2E0DLL)) ^ 0x437BC0F3A534D54BLL);
  STACK[0x25D0] = v6;
  STACK[0x25E8] = v5 + v6;
  *(v4 - 208) = v6 + v0 - 59535657 - 99;
  *(v4 - 232) = v0 - 59535657 - v6 + 3280;
  *(v4 - 228) = v6 + v0 - 723214290;
  *(v4 - 224) = v6;
  *(v4 - 220) = (v0 - 59535657) ^ v6;
  v7 = (*(v3 + 8 * (v0 ^ (v1 - 980))))(v4 - 240);
  return (*(v3 + 8 * *(v4 - 204)))(v7);
}

uint64_t sub_100BFACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 2744) = 4;
  v8 = (*(v6 + 8 * (v4 ^ 0x819FBE1A)))(&STACK[0x224D], &STACK[0x1610], &STACK[0x1088], 0, 0);
  v9 = 551690071 * ((~(v7 - 240) & 0x37416A484958F1C6 | (v7 - 240) & 0xC8BE95B7B6A70E39) ^ 0x46DC388607B5A291);
  *(v5 + 1072) = v9;
  *(v5 + 1064) = v8 - v9;
  *(v7 - 240) = (v4 + 1041169529) ^ v9;
  *(v7 - 236) = v9 ^ (v4 + 2107265272) ^ 0xF6D;
  *(v7 - 232) = ((v4 + 2107265272) ^ 0x2F) - v9;
  *(v7 - 228) = v4 + 2107265272 - v9;
  *(v7 - 224) = v9;
  v10 = (*(v6 + 8 * (v4 ^ 0x819FBE4B)))(v7 - 240);
  return (*(v6 + 8 * *(v7 - 220)))(v10);
}

uint64_t sub_100BFADD0()
{
  v4 = v0 < LODWORD(STACK[0x3E18]);
  *(STACK[0x3B38] + 2037) = bswap32(v2);
  return (*(v3 + 8 * ((v4 * (9 * (v1 ^ 0x1881) - 3596)) ^ v1)))();
}

uint64_t sub_100BFAE44()
{
  v4 = (v2 - 12587) | 0x2010;
  STACK[0x3788] = *(STACK[0x3EC8] + v0);
  LODWORD(STACK[0x3E18]) = ((((v4 + 1994347359) & 0x8920F7FF) - 9567) ^ 0x529F) + v0;
  v5 = *(v3 + 8 * (v4 ^ (38 * (v1 != 1))));
  STACK[0x3850] = 1;
  return v5();
}

uint64_t sub_100BFAEF0()
{
  LODWORD(STACK[0x1A74]) = v0;
  v2 = LOWORD(STACK[0x1D1E]);
  STACK[0x1990] = STACK[0x1D20];
  return (*(v1 + 8 * ((28692 * (v2 == 62543)) ^ 0x15D4)))();
}

uint64_t sub_100BFB188@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  v2 = 9 * (a1 ^ 0x3BDF);
  v3 = LODWORD(STACK[0x3688]) == ((a1 - 738016051) & 0x2BFD5ADF) - 21146;
  LODWORD(STACK[0x3B08]) = v2;
  v4 = *(v1 + 8 * ((v3 * (v2 ^ 0x545E)) ^ a1));
  LODWORD(STACK[0x3D88]) = 2;
  LODWORD(STACK[0x3688]) = 4;
  v5 = STACK[0x468];
  v6 = STACK[0x10F8];
  v7 = STACK[0x3E18];
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  LODWORD(STACK[0x1A70]) = v7;
  v8 = LODWORD(STACK[0x31D0]);
  LODWORD(STACK[0x183C]) = STACK[0x23B0];
  STACK[0x3D40] = v5;
  STACK[0x3D78] = v6;
  STACK[0x3B20] = STACK[0x1A88];
  STACK[0x3B18] = STACK[0x1A80];
  LODWORD(STACK[0x3CF0]) = STACK[0x2238];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = STACK[0x1C28];
  LODWORD(STACK[0x3D58]) = 2;
  STACK[0x3D90] = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3D38]) = STACK[0x1B50];
  LODWORD(STACK[0x3D30]) = STACK[0x3310];
  LODWORD(STACK[0x3D28]) = STACK[0x3308];
  LODWORD(STACK[0x3D20]) = STACK[0x3300];
  return v4(v8);
}

uint64_t sub_100BFC004(uint64_t a1, uint64_t a2)
{
  STACK[0x1440] = 0;
  LODWORD(STACK[0xA54]) = -769884012;
  return (*(v3 + 8 * ((v2 + 19275) | v2)))(a1, a2, 1211098651);
}

uint64_t sub_100BFC064()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100BFC0B4()
{
  v5 = *(&STACK[0x320] + (v2 + 2361 * v1) % 0xA88u);
  v6 = *(&STACK[0xDE0] + (v0 + 10224 + 825 * (v5 | ((v5 < 0x60) << 8)) + 2016482) % 0x1940);
  v7 = *(&STACK[0x320] + (2361 * (((HIBYTE(v6) ^ 0x3E08915) - 1609028294) ^ ((HIBYTE(v6) ^ 0xBF8A4435) + 477290522) ^ ((HIBYTE(v6) ^ 0xBC6ACD5C) + 529688945)) - 1073020680) % 0xA88);
  v8 = 2361 * (((v6 ^ 0x55C0D1AB) - 479870763) ^ ((v6 ^ 0x84826B19) + 841448039) ^ ((v6 ^ 0xD142BA5B) + 1743235877)) - 2016463262;
  LOBYTE(v6) = *(&STACK[0x320] + (2361 * (((BYTE2(v6) ^ 0x8A983E80) + 206306119) ^ ((BYTE2(v6) ^ 0x3E4DFE85) - 1197589692) ^ ((BYTE2(v6) ^ 0xB4D5C065) + 839255460)) - 1995141422) % 0xA88);
  v9 = v7 & 0x8E ^ 0xB7;
  v10 = v6 & 0xE6 ^ 0x23;
  v11 = *(&STACK[0x320] + v8 % 0xA88);
  v12 = *(&STACK[0x320] + (2361 * (((BYTE1(v6) ^ 0xA741933E) - 1848595839) ^ ((BYTE1(v6) ^ 0x26D60C19) + 273102248) ^ ((BYTE1(v6) ^ 0x81979F94) - 1224301013)) - 1093190173) % 0xA88);
  v13 = v11 & 0x12 ^ 0xF9;
  LOBYTE(v6) = v6 ^ (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * ((v6 ^ 0x20) & (2 * (v6 & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10));
  v14 = v11 ^ (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & (2 * ((v11 ^ 0x20) & 0x32 ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13));
  v15 = v12 ^ (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * ((v12 ^ 0x20) & (2 * (v12 & (2 * (v12 & 0x8A | 0x15)) ^ (v12 & 0x8A | 0x15))) ^ (v12 & 0x8A | 0x35))) ^ (v12 & 0x8A | 0x35))) ^ (v12 & 0x8A | 0x35))) ^ (v12 & 0x8A | 0x35))) ^ (v12 & 0x8A | 0x35)));
  *(&STACK[0xDE0] + (v3 + 825 * v1) % 0x1940u) = ((((((((v6 << 8) ^ 0xFF094F) & (((v7 ^ (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & 0x2E ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) << 16) ^ 0xB64F4F) | (v6 << 8) & 0xB000) ^ 0x8E1200) & (v15 ^ 0xFFFFD5) | v15 & 0xB0) << 8) ^ 0x8347ACAD) & (v14 ^ 0xFFFFFFED) | v14 & 0x52) ^ 0x49DAD056;
  return (*(v4 + 8 * ((26640 * (v1 == 255)) ^ v0)))();
}

uint64_t sub_100BFC4F4()
{
  v1 = STACK[0x57D8];
  STACK[0xC210] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 22489 + v0 + 28567)))();
}

uint64_t sub_100BFC528()
{
  v3 = (*(v2 + 8 * (v1 ^ 0xB4E61B9C)))();
  *(v0 + 24) = 0;
  return (*(v2 + 8 * ((49010 * (v1 < 0x5B9A43F5)) ^ (v1 + 1259995818))))(v3);
}

uint64_t sub_100BFC584()
{
  v7 = v5 - 1560 + v1 + *(v4 - 0x1883660EE814440ELL);
  v8 = *(v4 - 0x1883660EE814440ALL) + v2;
  v9 = (v8 < v0) ^ (v7 < v0);
  v10 = v7 < v8;
  if (v9)
  {
    v10 = v8 < v0;
  }

  return (*(v6 + 8 * ((v10 * (v5 + v3)) ^ v5)))();
}

void start()
{
  __chkstk_darwin();
  v0 = *(&off_101353600 + ((-77 * ((qword_101361308 - dword_1013611F8) ^ 0x50)) ^ byte_1012F2800[byte_101236FB0[(-77 * ((qword_101361308 - dword_1013611F8) ^ 0x50))] ^ 0xC5]) + 1363);
  v1 = *(v0 - 4);
  v0 = (v0 - 4);
  v2 = *(&off_101353600 + (byte_101236EB0[byte_101188B00[(-77 * (v1 ^ qword_101361308 ^ 0x50))] ^ 0x2B] ^ (-77 * (v1 ^ qword_101361308 ^ 0x50))) + 571);
  v3 = &v8[*v2 - v1];
  *v0 = 784437427 * v3 + 0x6220CB01D41042F0;
  *v2 = 784437427 * (v3 ^ 0x76FE3CA3ED704950);
  v7 = 80;
  v6[0] = 0;
  LOBYTE(v3) = *v0;
  v4 = *(&off_101353600 + ((-77 * ((qword_101361308 + dword_1013611F8) ^ 0x50)) ^ byte_101188A00[byte_10105D220[(-77 * ((qword_101361308 + dword_1013611F8) ^ 0x50))] ^ 0xB2]) + 1186) - 4;
  v5 = *&v4[8 * ((3077 * ((*&v4[8 * (byte_1012F2604[(byte_101236DB0[(-77 * ((*v2 - v3) ^ 0x50))] ^ 0xBC) - 4] ^ (-77 * ((*v2 - v3) ^ 0x50))) + 253928])(**(&off_101353600 + ((-77 * ((qword_101361308 + v3) ^ 0x50)) ^ byte_101236EB0[byte_101188B00[(-77 * ((qword_101361308 + v3) ^ 0x50))] ^ 0x25]) + 634), *(&off_101353600 + (byte_10105D420[byte_1012F2700[(-77 * (v3 ^ qword_101361308 ^ 0x50))] ^ 0x42] ^ (-77 * (v3 ^ qword_101361308 ^ 0x50))) + 879) - 4, v6) == 0)) ^ 0x6578)];
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100BFCBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = 111 * (((v5[16] ^ 0x88) - 89) ^ ((v5[16] ^ 0x93) - 66) ^ (v4 - 92 + (v5[16] ^ 0xD9) - 91)) + 93;
  v3[17] = 111 * (((v5[17] ^ 0x4A) - 89) ^ ((v5[17] ^ 0x51) - 66) ^ ((v5[17] ^ 0x1B) - 8)) + 93;
  v3[18] = 111 * (((v5[18] ^ 0x54) - 89) ^ ((v5[18] ^ 0x4F) - 66) ^ ((v5[18] ^ 5) - 8)) + 93;
  v3[19] = 111 * (((v5[19] ^ 0x89) - 89) ^ ((v5[19] ^ 0x92) - 66) ^ ((v5[19] ^ 0xD8) - 8)) + 93;
  v3[20] = 111 * (((v5[20] ^ 0x9C) - 89) ^ ((v5[20] ^ 0x87) - 66) ^ ((v5[20] ^ 0xCD) - 8)) + 93;
  v3[21] = 111 * (((v5[21] ^ 0xCD) - 89) ^ ((v5[21] ^ 0xD6) - 66) ^ ((v5[21] ^ 0x9C) - 8)) + 93;
  v3[22] = 111 * (((v5[22] ^ 0x2C) - 89) ^ ((v5[22] ^ 0x37) - 66) ^ ((v5[22] ^ 0x7D) - 8)) + 93;
  return (*(a3 + 8 * v4))();
}

uint64_t sub_100BFCF08()
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * ((((LODWORD(STACK[0x838]) ^ (v0 - 1)) & 1) * ((2350 * (v0 ^ 0x7847)) ^ 0x5257)) ^ v0));
  LODWORD(STACK[0x3CF0]) = 36;
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x438];
  STACK[0x3D40] = STACK[0x438];
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
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = v5;
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v2();
}

uint64_t sub_100BFD088()
{
  v4 = STACK[0x1828];
  *(v4 - 0x79CEC8CF5A6FCE4ELL) = 0;
  *(v4 - 0x79CEC8CF5A6FCE46) = -769884012;
  *(v4 - 0x79CEC8CF5A6FCE4ALL) = -769884012;
  STACK[0x18F0] = v0;
  *(v4 - 0x79CEC8CF5A6FCE52) = 0;
  LODWORD(STACK[0x1654]) = -143113071;
  return (*(v2 + 8 * (v3 + v1 + 3120)))();
}

uint64_t sub_100BFD110(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = v77 + (((v76 ^ 0x62) - 31) ^ ((v76 ^ 0x8C) + 15) ^ ((v76 ^ 1) - 124));
  v81 = v72 - a6;
  v82 = v74 - v78 + 32;
  v83 = (v80 - 36) ^ (v77 + 79);
  v84 = (((a6 + 74) ^ 0xC) + 24) ^ (a6 + 74) ^ (-(a6 + 74) - 28) ^ (((a70 + 38) ^ 0xBF) + ((a6 + 74) ^ 0xCD)) ^ (((a6 + 74) ^ (a70 - 79) & 0x9D ^ 0x4B) - 62) ^ v75;
  v85 = a1 + v72 - a6 - 125 - (((v71 ^ 0x11) + 58) ^ ((v71 ^ 0x4F) + 104) ^ ((v71 ^ 0x2B) + 4)) - 3;
  v86 = v84 ^ 0xF0 ^ (v81 - ((2 * (v81 - 125)) & 0x6C) + 57);
  v87 = a7 + v82 - v80 + 25 - ((2 * (a7 + v82 - v80 + 25) - 126) & 0x66) - 12;
  LOBYTE(STACK[0x256]) = v87 ^ 5;
  LOBYTE(STACK[0x535]) = v84 ^ 0x6F;
  LOBYTE(STACK[0x5D3]) = v83 ^ v82 ^ 0x36;
  v88 = v84 ^ 0xF0 ^ (v85 - ((2 * v85) & 0x6C) - 74);
  LOBYTE(STACK[0x43F]) = v71 ^ 0x95;
  LOBYTE(STACK[0x2A8]) = v83 ^ 0x36;
  LOBYTE(STACK[0x581]) = 35 - v80;
  LOBYTE(STACK[0x4E3]) = (v85 - ((2 * v85) & 0xC7) - 29) ^ 0xCA;
  v89 = (((v71 ^ 0xDA) + 55) ^ v71 ^ 0x13 ^ ((v71 ^ 0x75) - 102)) - v86;
  v90 = (((v80 - 36) ^ 0x6C) + 64) ^ (((v80 - 36) ^ 0xEB) - 71) ^ (((v80 - 36) ^ 0x4E) + 30);
  v91 = v89 - 40;
  v92 = v88 + v86;
  LOBYTE(STACK[0x491]) = (v86 - ((2 * v86) & 0x6C) + 54) ^ 0x1F;
  v93 = (v88 + v86) ^ v85;
  v94 = ((((v73 ^ 0xCC) + 66) ^ v73 ^ ((v73 ^ 0x4D) - 63) ^ ((v73 ^ 0xC) - 126) ^ (114 - v73)) & 0xF4 ^ 0x70 | (((v73 ^ 0xCA) + 72) ^ v73 ^ ((v73 ^ 0x27) - 85) ^ ((v73 ^ 0xE0) + 110) ^ ((v73 ^ 0x7F) - 13)) & 0xF4 ^ 0x84) + 12 + v88;
  v95 = v90 - (((v83 ^ v82 ^ 5) - 11) ^ ((v83 ^ v82 ^ 0x48) - 70) ^ ((v83 ^ v82 ^ 0x4D) - 67));
  v96 = (v83 ^ 0x33 ^ v87) + (v83 ^ v82);
  v97 = v93 ^ 0x49;
  v98 = v93 ^ v94;
  LOBYTE(STACK[0x439]) = (((v95 - 57) ^ 0xD9) + 98) ^ (0x80 - v95) ^ (((v95 - 57) ^ 0xA6) + 31) ^ 0x36;
  v99 = (v96 + 51 - ((2 * v96) & 0x66)) ^ v87;
  v100 = v96 ^ v83;
  v101 = v96 - v99 - ((2 * (v96 - v99)) & 0xF6) - 5;
  v102 = v92 - v93;
  v103 = ((v99 ^ 0xC0) + 44) ^ ((v99 ^ 0xA1) + 75) ^ ((v99 ^ 0x28) - 60);
  LOBYTE(STACK[0x52F]) = v100 ^ 0x36;
  LOBYTE(STACK[0x3ED]) = (v98 - ((2 * v98) & 0x5A) + 45) ^ 4;
  LOBYTE(STACK[0x4DD]) = (v103 - 95) ^ (-93 - v103) ^ (((v103 - 95) ^ 0xF8) + 68) ^ (((v103 - 95) ^ 0x46) - 2) ^ (((v103 - 95) ^ 5) - 65) ^ 0x72;
  LOBYTE(STACK[0x39B]) = (v93 - ((2 * v93) & 0xFB) - 3) ^ 0x9D;
  v104 = v89 - 40 + (~(2 * (v89 - 40)) | 0x6B) + 75;
  LOBYTE(STACK[0x2F7]) = v104 ^ 0x63;
  v105 = v102 ^ (v89 + 39);
  LOBYTE(STACK[0x48B]) = v101 ^ 0xCD;
  v106 = v89 - 40 - v97 - 35;
  v107 = v101 ^ (v95 - ((2 * v95 - 98) & 0xF6) - 54);
  v108 = v100 ^ 0x44 ^ (v107 + 68 - ((2 * v107) & 0x88));
  LOBYTE(STACK[0x349]) = (v102 - ((2 * v102) & 0xA2) - 47) ^ 0xF8;
  v109 = v95 - v103 - ((2 * (v95 - v103)) & 0xC) + 6;
  v110 = v97 + 114 + v105;
  v111 = (v105 ^ v98) + v97 + 114;
  LOBYTE(STACK[0x2F1]) = v109 ^ 0x30;
  v112 = v107 + v103;
  v113 = v107 + v103 + 74;
  v114 = (v91 & 0x1F) + (v104 & 0x1F ^ 0x15) + 123;
  v115 = v114 & 0x85 | 0x12;
  v116 = v115 ^ v114 & 0x2C;
  v117 = (v114 ^ 4) & (2 * ((v114 ^ 4) & (2 * ((v114 ^ 4) & (2 * ((v114 ^ 4) & (2 * ((v114 ^ 4) & (2 * (v114 & (2 * v115) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116;
  v118 = (v97 + 90) & 0xBD ^ 0x6C;
  v119 = (v97 + 90) ^ 0x64;
  LOBYTE(STACK[0x57E]) = (v106 - ((2 * v106) & 0x66) - 77) ^ 0x9A;
  v120 = v103 + 29 + v108;
  v121 = ((2 * (v113 ^ 0x64)) ^ 0xC2) & (v113 ^ 0x64) ^ (2 * (v113 ^ 0x64)) & 0xE0;
  v122 = v121 & (4 * (((2 * v113) & 0xA ^ 0x85) & v113)) ^ ((2 * v113) & 0xA ^ 0x85) & v113;
  LOBYTE(STACK[0x343]) = v113 ^ (2 * (((4 * v121) ^ 0x80) & (v121 ^ 0xC0) & (16 * v122) ^ v122)) ^ 0xB3;
  LOBYTE(STACK[0x253]) = (v97 + 90) ^ (2 * (v119 & (2 * (v119 & (2 * (v119 & (2 * (v119 & (2 * (v119 & (2 * ((v97 + 90) & (2 * (v97 + 90)) & 0x4A ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ 0x94;
  v123 = (v120 ^ 0xB3) & (2 * (v120 & 0xB2)) ^ v120 & 0xB2;
  v124 = ((2 * (v120 ^ 0x97)) ^ 0x4A) & (v120 ^ 0x97) ^ (2 * (v120 ^ 0x97)) & 0x24;
  LOBYTE(STACK[0x3E7]) = v120 ^ (2 * (((4 * v124) ^ 0x80) & v124 & (16 * (v124 & (4 * v123) ^ v123)) ^ v124 & (4 * v123) ^ v123)) ^ 0x84;
  v125 = ((v103 + 34) ^ 0x71) & (2 * ((v103 + 34) & 0x7A)) ^ (v103 + 34) & 0x7A;
  v126 = ((2 * ((v103 + 34) ^ 0xB5)) ^ 0x9E) & ((v103 + 34) ^ 0xB5) ^ (2 * ((v103 + 34) ^ 0xB5)) & 0xCE;
  LOBYTE(STACK[0x395]) = (v103 + 34) ^ (2 * ((((4 * (v126 ^ 0x41)) ^ 0x20) & (v126 ^ 0x41) ^ (4 * (v126 ^ 0x41)) & 0xC0) & (16 * ((v126 ^ 0x88) & (4 * v125) ^ v125)) ^ (v126 ^ 0x88) & (4 * v125) ^ v125)) ^ 0x4C;
  v127 = v103 + 78 + v120;
  LOBYTE(STACK[0x2A5]) = v114 ^ (v111 - ((2 * v111) & 0x40) - 96) ^ (2 * v117) ^ 0x3F;
  v128 = (88 - v106) ^ ((v106 ^ 0xAB) + 13) ^ ((v106 ^ 0x79) - 33);
  v129 = v103 + 62 + v112 - (v109 ^ 0x2B) + 18 - ((2 * (v103 + 62 + v112 - (v109 ^ 0x2B))) & 0x24);
  v130 = v97 + 63 + v111;
  v131 = v129 ^ (v103 + 111);
  v132 = (v109 ^ 0x2B) - (((v131 ^ 0x16) - 56) ^ ((v131 ^ 0xC8) + 26) ^ ((v131 ^ 0xCC) + 30)) - 117;
  v133 = (v132 ^ 0xB8) & (2 * (v132 & 0x39)) ^ v132 & 0x39;
  v134 = ((2 * (v132 ^ 0xE8)) ^ 0xA2) & (v132 ^ 0xE8) ^ (2 * (v132 ^ 0xE8)) & 0xD0;
  v135 = v134 ^ 0x51;
  v136 = v134 & (4 * v133) ^ v133;
  v137 = (((a40 ^ 0xAD9D4E7B) + 1382199685) ^ ((a40 ^ 0xEF499BC) - 250911164) ^ ((a40 ^ 0x8ABC05AA) + 1967389270)) - 412994029;
  v138 = v137 >= a71 - 1318303227;
  LOBYTE(STACK[0x4DA]) = (((v110 + v97 - v128 - 99) ^ (v97 + 18)) - ((2 * ((v110 + v97 - v128 - 99) ^ (v97 + 18))) & 0xB2) - 39) ^ 0xF0;
  LOBYTE(STACK[0x5D0]) = (v110 - ((2 * v110) & 0xB0) - 40) ^ 0xF1;
  LOBYTE(STACK[0x29F]) = v129 ^ v127 ^ 0x24;
  LOBYTE(STACK[0x52C]) = (((v110 + v97 - v128 - 99) ^ v130) - (v79 & (2 * ((v110 + v97 - v128 - 99) ^ v130))) + 118) ^ 0x5F;
  LOBYTE(STACK[0x24D]) = v131 ^ 0x24;
  LOBYTE(STACK[0x578]) = v132 ^ (2 * (((4 * v135) & 0xD0 ^ ((4 * v135) ^ 0x40) & v135 ^ 0x40) & (16 * v136) ^ v136)) ^ 0xF;
  LOBYTE(STACK[0x5CA]) = v129 ^ 0x24;
  LOBYTE(STACK[0x436]) = (v128 - ((v110 + v97 - v128 - 99) ^ (v97 + 18)) + 117 - ((2 * (v128 - ((v110 + v97 - v128 - 99) ^ (v97 + 18)) + 117)) & 0xD4) + 106) ^ 0x43;
  LOBYTE(STACK[0x488]) = (v110 + v97 - v128 - 99 - ((2 * (v110 + v97 - v128 - 99)) & 0x87) + 67) ^ 0x6A;
  v139 = ((a71 - 1318303227) < 0xBD8C63A6) ^ (v137 < 0xBD8C63A6);
  v140 = !v138;
  if (v139)
  {
    v141 = (a71 - 1318303227) < 0xBD8C63A6;
  }

  else
  {
    v141 = v140;
  }

  return (*(STACK[0x200] + 8 * (a70 ^ (62 * !v141))))();
}

uint64_t sub_100BFDE80()
{
  v2 = STACK[0xF1C];
  STACK[0xAB0] -= 48;
  return (*(v1 + 8 * ((99 * (v2 == (v0 ^ 0xF7785AB3))) ^ v0)))();
}

uint64_t sub_100BFDECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, int a58)
{
  *(v61 - 184) = a58 ^ a55 ^ a42 ^ *(v61 - 136) ^ a40;
  LODWORD(STACK[0x338]) ^= 0x58C27BB0 ^ a33 ^ a34 ^ a32 ^ v60 ^ a37 ^ a36 ^ a35 ^ (1010854200 - a31 + (a30 & a6));
  return (*(v59 + 8 * (v58 ^ 0x297801D1 ^ (19070 * (v58 == -1702100753)))))();
}

uint64_t sub_100BFE094(int a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, unsigned int a6, unsigned int a7)
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
  LODWORD(STACK[0x918]) = 0;
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
  LODWORD(STACK[0x1130]) = LODWORD(STACK[0x39F0]) >> 6;
  LODWORD(STACK[0x2138]) = a1 << 11;
  LODWORD(STACK[0x2B88]) = a3 << 23;
  LODWORD(STACK[0x1BD0]) = a4 >> 9;
  LODWORD(STACK[0x3860]) = a6 >> 5;
  LODWORD(STACK[0x2B20]) = STACK[0x2F90] << 27;
  LODWORD(STACK[0x2B90]) = v7 << 8;
  LODWORD(STACK[0x39E8]) = v8 << 13;
  LODWORD(STACK[0x117C]) = STACK[0x2918] << 26;
  STACK[0x3A28] = a7 >> 11;
  STACK[0x39F0] = a7 >> 5;
  STACK[0x1170] = v10 >> 12;
  STACK[0x410] = STACK[0x2560] >> 1;
  v11 = *(v9 + 8 * (STACK[0x3AF0] - 13570));
  STACK[0x1BA8] = STACK[0x3420];
  STACK[0x2268] = STACK[0x2BE0];
  STACK[0x1238] = STACK[0x2BE8];
  STACK[0x1B00] = STACK[0x32C0];
  STACK[0x38B0] = STACK[0x32B8];
  STACK[0x3650] = STACK[0x3650];
  STACK[0x408] = STACK[0x3270];
  STACK[0x1C58] = STACK[0x2BD0];
  STACK[0x1128] = STACK[0x3488];
  STACK[0x3838] = STACK[0x2BA0];
  STACK[0x1248] = STACK[0x2BF0];
  STACK[0x1268] = STACK[0x2BC8];
  STACK[0x1270] = STACK[0x2C00];
  STACK[0x1C38] = STACK[0x2BD8];
  STACK[0x1290] = STACK[0x3318];
  STACK[0x3BD8] = STACK[0x3BD8];
  STACK[0x2F90] = STACK[0x3B48];
  STACK[0x3B48] = STACK[0x3D68];
  STACK[0x12D0] = STACK[0x32E0];
  STACK[0x2558] = STACK[0x3D60];
  STACK[0x3F8] = STACK[0x3280];
  STACK[0x1258] = STACK[0x3290];
  STACK[0x3028] = STACK[0x3B00];
  STACK[0x28F0] = STACK[0x3D28];
  STACK[0x3E8] = STACK[0x3278];
  STACK[0x1C48] = STACK[0x2BF8];
  STACK[0x2DF0] = STACK[0x3D58];
  STACK[0x1250] = STACK[0x32D8];
  STACK[0x3388] = STACK[0x3388];
  STACK[0x2758] = STACK[0x3D30];
  STACK[0x3800] = STACK[0x32E8];
  STACK[0x23B8] = STACK[0x2C08];
  STACK[0x2FD8] = STACK[0x3B08];
  STACK[0x27E0] = STACK[0x3D78];
  STACK[0x12C8] = STACK[0x32A0];
  STACK[0x1BB0] = STACK[0x3298];
  STACK[0x12C0] = STACK[0x2F60];
  STACK[0x2FF0] = STACK[0x3D70];
  STACK[0x3F0] = STACK[0x3288];
  STACK[0x12E0] = STACK[0x3248];
  STACK[0x3080] = STACK[0x3AE8];
  STACK[0x2008] = STACK[0x2C10];
  STACK[0x2DE8] = STACK[0x3D38];
  STACK[0x1240] = STACK[0x32D0];
  STACK[0x2918] = STACK[0x3AE0];
  STACK[0x1228] = STACK[0x3228];
  STACK[0x1260] = STACK[0x3230];
  STACK[0x400] = STACK[0x2BC0];
  STACK[0x1230] = STACK[0x32B0];
  STACK[0x2858] = STACK[0x3D20];
  STACK[0x2F08] = STACK[0x3B20];
  STACK[0x2040] = STACK[0x32A8];
  STACK[0x12E8] = STACK[0x3260];
  STACK[0x2798] = STACK[0x3AA0];
  STACK[0x2848] = STACK[0x3D80];
  STACK[0x2DE0] = STACK[0x3E18];
  STACK[0x2E60] = STACK[0x3D40];
  STACK[0x3600] = STACK[0x3600];
  STACK[0x3AA0] = STACK[0x3688];
  STACK[0x2FC0] = STACK[0x3CF0];
  STACK[0x3CA0] = STACK[0x3AD8];
  STACK[0x3390] = STACK[0x3390];
  STACK[0x2FB8] = STACK[0x3D50];
  STACK[0x12D8] = STACK[0x2B38];
  STACK[0x950] = STACK[0x2BB8];
  STACK[0x1C40] = STACK[0x3250];
  STACK[0x1218] = STACK[0x3258];
  STACK[0x1220] = STACK[0x32C8];
  STACK[0x3828] = STACK[0x2BA8];
  STACK[0x26F0] = STACK[0x3D88];
  STACK[0x3840] = STACK[0x3438];
  STACK[0x3D90] = STACK[0x3998];
  LODWORD(STACK[0x3988]) = 53;
  STACK[0x3D78] = STACK[0x2928];
  STACK[0x30C0] = STACK[0x23A0];
  STACK[0x2FA8] = STACK[0x23B0];
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
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x32C0]) = 1;
  STACK[0x2F10] = STACK[0x3850];
  LODWORD(STACK[0x3438]) = STACK[0x2B70];
  LODWORD(STACK[0x3998]) = STACK[0x2B40];
  LODWORD(STACK[0x3488]) = STACK[0x3268];
  return v11();
}

uint64_t sub_100BFE4E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v14 = v10 - 5204;
  v15 = v10 + 4454;
  LODWORD(STACK[0x6C58]) = STACK[0x6C74] & LODWORD(STACK[0x3D90]);
  v16 = (v13 + a7) >> 16;
  v17 = (v13 + a7 + v16) >> 8;
  v18 = v13 + v9 + v16;
  v19 = (v18 - v17) >> 14;
  v20 = (v18 + v19 - v17) >> 8;
  v21 = v13 + v20 + a4;
  v22 = (v19 + v16 + v21 - v17) >> 9;
  v23 = (v19 + v16 + v21 + v22 - v17) >> 1;
  v24 = (v15 ^ 0xA89FFAC2) + v13;
  v25 = v24 + v22 + v20 + v23;
  v26 = v19 + v16 + v25 + a4;
  v27 = (v26 - v17) >> 10;
  v28 = (v26 - v27 - v17) >> 3;
  v29 = v19 + v16 - v17 + a4 + v25 - v28 - v27;
  v30 = v25 + v8;
  v31 = (v19 + v16 + v25 + v8 - v28 - v27 - v17) >> 10;
  v32 = v19 + v16 + v30 + v31 - v28 - v27 - v17;
  v33 = v24 + v31 + v23 + v22 + v20 + (v32 >> 2);
  v34 = (v32 >> 2) + v32 - 47929371;
  v35 = v34 >> 8;
  v36 = (v34 >> 8) + v34;
  v37 = v33 + v35 + (v36 >> 2) + v19;
  v38 = (v36 >> 2) + v36 + 851016856;
  v39 = v38 >> 10;
  v40 = v38 - (v38 >> 10);
  v41 = v40 >> 1;
  v42 = v16 - v17;
  v43 = v16 - v17 + v11 + v37 - v28 - v27 - (v40 >> 1) - v39;
  v44 = v40 - (v40 >> 1) - 1771897883;
  v45 = v44 >> 15;
  v46 = v44 - (v44 >> 15);
  v47 = v46 >> 6;
  v48 = v46 - (v46 >> 6) - 1393110460;
  v49 = v48 >> 9;
  v50 = (v48 >> 9) + v48;
  return (*(v12 + 8 * v14))(v29 ^ LODWORD(STACK[0x3E40]) ^ v43 ^ (v42 + a8 + v37 + v49 + (v50 >> 8) + (((v50 >> 8) + v50 + 1002046199 - (((v50 >> 8) + v50 + 1002046199) >> 15)) >> 7) - v28 - v27 - v47 - v41 - v45 - (((v50 >> 8) + v50 + 1002046199) >> 15) - v39));
}

uint64_t sub_100BFE8DC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = -1820748903 * *(v8 + v9);
  v12 = v11 ^ a7;
  v13 = (v11 ^ a7) + v9;
  v14 = HIWORD(v13);
  v15 = (v13 + HIWORD(v13)) >> 8;
  v16 = (v9 + v14 - v15 + (((v7 - 465) | 0x800) ^ 0x8BCDBF22) + v12) ^ a1;
  v17 = (v9 + 396087262 + v12 + v14 - v15) ^ v11;
  v18 = (v17 + v9) >> 16;
  v19 = (v9 + v18 + v17) >> 8;
  LODWORD(STACK[0x6D2C]) = v19;
  return (*(v10 + 8 * ((248 * (LODWORD(STACK[0x4DF4]) > v9 + 1)) ^ (v7 - 10534))))(v16 ^ (v9 + v18 + v17 - v19 - 1949440017));
}

uint64_t sub_100BFE9D8()
{
  *(STACK[0x1090] + 112) |= 0xBAu;
  STACK[0xAB0] -= 32;
  STACK[0x1818] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 492) | 6) + 7347) ^ v0)))();
}

uint64_t sub_100BFEAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = STACK[0x638];
  v13 = STACK[0x638] + (((1645 * a8 + 2111129) % 0xA88u) ^ 0xFFAFF7BFBCD339BFLL) + (v8 ^ 0x500840432CAF09) + ((2 * ((1645 * a8 + 2111129) % 0xA88u)) & 0x137E);
  v14 = *v11;
  v15 = *STACK[0x660];
  v16 = *(v13 - 0x45A3495C391D1A15);
  v17 = *(v15 + (v14 & STACK[0x648]));
  LODWORD(STACK[0x630]) = v17;
  v18 = *v9 ^ v10;
  LODWORD(v13) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v17 - 963544004) & v18)) ^ v16 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 + v17 - 963544002) & v18)) ^ (76 * v13);
  v19 = STACK[0x640] + 4 * ((551 * (((v13 ^ 0xD7C7D2E8) + 45836796) ^ ((v13 ^ 0x492674B5) - 1671770201) ^ ((v13 ^ 0x9EE1A62D) + 1268587839)) - 2135974548) % 0x1D48);
  v20 = *(v15 + (v14 & STACK[0x658]));
  v21 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v19 + v20 + 673210726) & v18)) ^ *(v19 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v19 + v20 + 673210728) & v18));
  v22 = v21 ^ (-1962600273 * v19);
  v23 = v21 ^ (6319 * v19);
  v24 = v21 ^ (333999 * v19);
  LOBYTE(v19) = v21 ^ (-81 * v19);
  v25 = ((v22 >> 23) & 0x1C ^ 4) + (HIBYTE(v22) ^ 0x8AD);
  v26 = HIBYTE(v23) ^ 0x79;
  v27 = 1645 * (BYTE2(v24) ^ 0x25) + 3391990 - 2696 * (((12744711 * (1645 * (BYTE2(v24) ^ 0x25u) + 3391990)) >> 32) >> 3);
  v28 = 1645 * v26 + 3391990;
  v29 = 1645 * v25 - 2696 * (((12744711 * (1645 * v25)) >> 32) >> 3);
  LODWORD(v19) = 1645 * (((v19 ^ 0xC810CB7B) + 408579314) ^ ((v19 ^ 0x5FC95C21) - 1887175764) ^ ((v19 ^ 0x97D99793) + 1200828442)) - 1870728702;
  v30 = ((v19 % 0xA88) ^ 0x67DBBBE8AFF9A4FDLL) + v12 + ((2 * (v19 % 0xA88)) & 0x9FA);
  v31 = *(v15 + (v14 & 0xC6917C3C));
  v32 = (v29 ^ 0x1FD3FC5FFFDDF7FELL) + ((2 * v29) & 0xFFC) + v12;
  v33 = v27 ^ 0xEFFB743FEBFAFBFFLL;
  v34 = (2 * v27) & 0x17FE;
  LODWORD(v27) = *(v30 + 0x5280FABB16E940EELL);
  v35 = v33 + v12 + v34;
  LODWORD(v33) = v30 + 1342593795;
  v36 = v28 - 2696 * (((12744711 * v28) >> 32) >> 3);
  LODWORD(v30) = (*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v35 + 335873025 + v31 - 963544004) & v18)) ^ *(v35 - 0x359EBD9C25181614) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v35 + 335873025 + v31 - 963544002) & v18)) ^ (76 * (v35 + 1))) << 8;
  v37 = (v36 ^ 0x7DBDFFEB5DFEE1E6) + v12 + ((2 * v36) & 0x3CC);
  LODWORD(v37) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v37 - 1576985062 + v31 - 963544004) & v18)) ^ *(v37 + 0x3C9EB6B868E40405) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v37 - 1576985062 + v31 - 963544002) & v18)) ^ (76 * (v37 + 26));
  LODWORD(v30) = (((((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v32 + 2230274 + v31 - 963544004) & v18)) ^ *(v32 - 0x657745BC38FB1213) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v32 + 2230274 + v31 - 963544002) & v18)) ^ (76 * (v32 + 2))) << 16) ^ 0xB1A71E) & (v30 ^ 0xFF871E) | v30 & 0x5800) ^ 0x977647) & (v37 ^ 0xFFFF09) ^ v37 & 0xA6;
  LODWORD(v32) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v33 + LODWORD(STACK[0x630]) - 963544004) & v18)) ^ v27 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v33 + LODWORD(STACK[0x630]) - 963544002) & v18)) ^ (76 * v33);
  v38 = STACK[0x640] + 4 * ((551 * a8 + 710790) % 0x1D48u);
  *(v38 - 0x34EE34220E8AC3B8) = (-1962600273 * v38) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v20 + v38 + 673210726) & v18)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v20 + v38 + 673210728) & v18)) ^ 0xFC771239 ^ (((v30 << 8) ^ 0x9D31280) & ~v32 & 0xFFFFFF80 | v32 & 0x7F);
  return (*(STACK[0x668] + 8 * (((a8 == 255) | (2 * (a8 == 255))) ^ v8)))();
}

uint64_t sub_100BFF694()
{
  v5 = &STACK[0x280] + v0;
  v6 = v1 + (v3 ^ 0x65D9) + 1977;
  (*(v4 + 8 * (v3 + 10271)))(0);
  v7 = (*(v4 + 8 * (v3 ^ 0x28B5)))(v2 + 25, v5) == ((v6 + 1391043163) ^ (2 * (v3 ^ 0x65D9)));
  return (*(v4 + 8 * ((81 * v7) ^ v3)))();
}

uint64_t sub_100BFF7DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + v5) = *(v2 + v5) + (~(2 * *(v2 + v5)) | 0xE1) + 16;
  v8 = ((v5 + 1) ^ v3) != (((v4 - 3503) | v6) ^ (a1 - 1729));
  return (*(v7 + 8 * ((v8 | (4 * v8)) ^ v4)))();
}

uint64_t sub_100BFF82C()
{
  v3 = STACK[0x7A0];
  *(v3 - 0x2369327399A66D85) = 0x1883660EE8144416;
  v4 = (*(v2 + 8 * (v0 + v1 + 25)))(v3 - 0x2369327399A66D95);
  return (*(v2 + 8 * (v1 + 1211081486)))(v4);
}

uint64_t sub_100BFF920@<X0>(int a1@<W8>)
{
  v2 = STACK[0xC40];
  STACK[0x1008] = STACK[0xC40];
  return (*(v1 + 8 * (((v2 != 0x683CBC57EAB92A3ELL) * (((((a1 ^ 0x790C) - 274111421) & 0x10565AFD) + 18654) ^ ((a1 ^ 0x790C) + 2057))) ^ a1 ^ 0x790C)))();
}

uint64_t sub_100BFFA0C()
{
  LODWORD(STACK[0x95C]) = 0;
  LODWORD(STACK[0xA90]) = 1;
  LODWORD(STACK[0xA9C]) = 4;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100BFFAD4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3 - 79492492 + ((a3 - 79492492) >> 9) - ((a3 - 79492492 + ((a3 - 79492492) >> 9)) >> 6);
  v7 = (((v3 ^ 0x6AF6) - 478605539) ^ v6) + ((((v3 ^ 0x6AF6) - 478605539) ^ v6) >> 11);
  v8 = v7 + (v7 >> 7);
  v9 = v8 + 1133880184 + ((v8 + 1133880184) >> 8) - ((v8 + 1133880184 + ((v8 + 1133880184) >> 8)) >> 2);
  v10 = v8 ^ v4;
  v11 = v9 + 952766072 - ((v9 + 952766072) >> 8) - ((v9 + 952766072 - ((v9 + 952766072) >> 8)) >> 6);
  v12 = v11 - 247743304 + ((v11 - 247743304) >> 14) + ((v11 - 247743304 + ((v11 - 247743304) >> 14)) >> 3);
  v13 = v10 ^ v12;
  v14 = v12 + 1461668115 - ((v12 + 1461668115) >> 11) - ((v12 + 1461668115 - ((v12 + 1461668115) >> 11)) >> 1);
  v15 = (v14 ^ 0x14EC09BF) + ((v14 ^ 0x14EC09BF) >> 11) + (((v14 ^ 0x14EC09BF) + ((v14 ^ 0x14EC09BF) >> 11)) >> 4);
  return (*(v5 + 8 * v3))(v13 ^ ((v15 ^ 0x3831131A) + ((v15 ^ 0x3831131A) >> 15) - (((v15 ^ 0x3831131A) + ((v15 ^ 0x3831131A) >> 15)) >> 5)));
}

uint64_t sub_100C0047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, int a30)
{
  v37 = HIDWORD(a14) - 85541416 + a30;
  v33 = (HIDWORD(a14) - 134221345) < 0xFD193407;
  v34 = v33 ^ (v37 > 0x2E6CBF8);
  v35 = ((v30 - 412767438) & 0xFBFEDDFE ^ 0x1E7DF179) + v37 < HIDWORD(a14) - 134221345;
  if (v34)
  {
    v35 = (HIDWORD(a14) - 134221345) < 0xFD193407;
  }

  return (*(v32 + 8 * ((v35 * ((v30 - 344022735) & 0xF7E5E7FF ^ (v31 - 39))) ^ v30)))((v30 - 344022735) & 0xF7E5E7FF ^ (v31 - 39), v34, v33, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_100C0062C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v5 = *(v4 + 8 * (v3 - 16299));
  LODWORD(STACK[0x3CF0]) = 59;
  LODWORD(STACK[0x3D88]) = 2;
  v6 = STACK[0x448];
  STACK[0x3D40] = STACK[0x448];
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
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = v8;
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v5(a1, v3, a3, v8);
}

uint64_t sub_100C008EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v8 = v6 ^ 0x6C6Bu;
  v9 = *(v7 + 8 * (((v8 + 8817) * (STACK[0x2238] != 56)) ^ v6));
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
  LODWORD(STACK[0x3980]) = 78;
  LODWORD(STACK[0x2BB0]) = 57;
  LODWORD(STACK[0x3988]) = 55;
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
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  v20 = STACK[0x1A90];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  v21 = STACK[0x1BC8];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x3AF0] = v8;
  LODWORD(STACK[0x3B08]) = v8;
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

uint64_t sub_100C00BA0@<X0>(int a1@<W8>)
{
  v3 = v1 ^ a1;
  v4 = (*(v2 + 8 * (v1 + 24404)))((v1 + 19836) ^ 0xD21CEAF2 ^ LODWORD(STACK[0x12C0]));
  STACK[0xE18] = v4;
  return (*(v2 + 8 * (((v4 != 0) * (v3 + 1211072067)) ^ v1)))();
}

uint64_t sub_100C00CC4()
{
  STACK[0x18C8] = v0 - 0x683CBC57EAB92A36;
  v4 = STACK[0x1678];
  LODWORD(STACK[0xB1C]) = STACK[0x126C];
  STACK[0x1020] = v4;
  STACK[0x9B0] = 0;
  LODWORD(STACK[0x1394]) = -769884012;
  STACK[0x1780] = 0x8305A984834A17DDLL;
  STACK[0x1130] = 0;
  v5 = (*(v3 + 8 * (v1 ^ 0x2358u)))(16);
  STACK[0x1808] = v5 + 0x308E083E0C524CBELL;
  return (*(v3 + 8 * (((v5 == 0) * ((v1 - v2 - 11) ^ 0xB7D0BDA5 ^ (519 * (v1 ^ 0x5F79)))) ^ v1)))();
}

uint64_t sub_100C00FA8@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v21 = (v11 ^ v13 ^ (v10 - ((v11 - (v12 & a1) + a2) ^ v17))) + v10;
  v22 = ((v21 + v19 - 2 * (v21 & v19)) ^ v18) & a3;
  *(a9 + 4 * v11) = a8 ^ ((v22 ^ a7) - (v22 ^ a6)) ^ v15 ^ *(*(v16 + 8 * a5) + 4 * (v22 ^ a4) - 4);
  return (*(v20 + 8 * ((240 * (v14 != 0)) ^ v9)))();
}

uint64_t sub_100C010B4()
{
  *v3 = (v1 - v5 - 118) ^ v2;
  STACK[0x1538] = v0;
  LODWORD(STACK[0x113C]) = STACK[0x109C];
  return (*(v4 + 8 * v1))();
}

uint64_t sub_100C010E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v22 = v9 - 1;
  v23 = (a1 + v22);
  v24 = (__ROR8__((v17 + v22) & 0xFFFFFFFFFFFFFFF8, 8) + a7) & 0xF9FFFFFFFFFFFFFFLL;
  v25 = __ROR8__(v24 ^ 0xE9B85E912434B084, 8);
  v26 = v24 ^ a5;
  v27 = (v25 + v26) ^ v14;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v15;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((v31 + v30 - (v13 & (2 * (v31 + v30))) + a3) ^ v19, 8);
  v33 = (v31 + v30 - (v13 & (2 * (v31 + v30))) + a3) ^ v19 ^ __ROR8__(v30, 61);
  v34 = v32 + v33;
  v35 = __ROR8__((a1 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = v34 ^ a8;
  v37 = v36 ^ __ROR8__(v33, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v11 | (2 * (v35 + v16))) - (v35 + v16) + a2;
  v40 = v39 ^ v18;
  v39 ^= 0xDBED4A49ED8B9F54;
  v41 = __ROR8__(v40, 8);
  v42 = (((2 * (v41 + v39)) | 0xAB9F9DF26DD150A4) - (v41 + v39) + v20) ^ a9;
  v43 = v42 ^ __ROR8__(v39, 61);
  v44 = __ROR8__(v42, 8);
  v45 = STACK[0x450];
  v46 = (((2 * (v38 + v37)) | 0x19A41E7488B36A16) - (v38 + v37) + 0x732DF0C5BBA64AF5) ^ 0x2D4BF6941BDEDF4ELL;
  v47 = v46 ^ __ROR8__(v37, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ a4;
  v49 = ((v21 | (2 * (v44 + v43))) - (v44 + v43) + 0x7AE2C81EFDF4011ELL) ^ 0x5A68F4FEC2A2B3DDLL;
  v50 = v49 ^ __ROR8__(v43, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0xA83C6FA80DE490C0) - 0x2BE1C82BF90DB7A0) ^ 0x3C3444E9F05134E0;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ v10;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x86A7DE0DC523147BLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = ((__ROR8__(v48, 8) + (v48 ^ __ROR8__(v47, 61))) ^ a6) >> (8 * ((v17 + v22) & 7));
  v59 = (__ROR8__(v56, 8) + v57) ^ 0x4C5B42D42BC4F84ALL;
  v60 = __ROR8__(v59, 8);
  v61 = __ROR8__(v57, 61);
  *v23 = (((((2 * (v60 + (v59 ^ v61))) & 0x9DE5D77A09487310) - (v60 + (v59 ^ v61)) - 0x4EF2EBBD04A43989) ^ 0x3103AA6540BBD086) >> (8 * (v23 & 7u))) ^ v58 ^ *(v17 + v22);
  return (*(STACK[0x8B0] + 8 * ((v22 != 0) | (2 * (v22 != 0)) | (v12 - 801))))(v45);
}

uint64_t sub_100C013C0()
{
  STACK[0x1AD8] = v1;
  v3 = STACK[0xDB8];
  STACK[0x1AE0] = STACK[0xDB8];
  return (*(v2 + 8 * (((v1 - v3 > ((821 * (v0 ^ 0x3B62u)) ^ 0x663uLL)) * (v0 + 12869)) ^ v0)))();
}

uint64_t sub_100C0169C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x3D10] >> 8;
  LODWORD(STACK[0x3860]) -= 8;
  v3 = *(v1 + 8 * (a1 - 12686));
  STACK[0x37A8] = 1;
  STACK[0x3D10] = v2;
  return v3();
}

uint64_t sub_100C017BC@<X0>(int a1@<W8>)
{
  v4 = *(v2 + 68);
  v5 = __CFADD__(v4, a1);
  v6 = v4 + a1;
  v7 = v5;
  *(v2 + 68) = v6;
  return (*(v3 + 8 * ((((v1 ^ 0xF ^ v7) & 1) * (v1 - 24801)) ^ v1)))();
}

uint64_t sub_100C017F4()
{
  *(v2 + 4) = v1;
  STACK[0x3820] = (v1 + v3);
  return (*(v4 + 8 * ((((v5 ^ (v0 - 44)) & 1) * ((v0 ^ 0x3B0) - 25598)) ^ v0)))();
}

uint64_t sub_100C01898(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(STACK[0x3AF0]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  STACK[0x39A8] = 0;
  LODWORD(STACK[0x3B00]) = v3 | LODWORD(STACK[0x3AD8]);
  STACK[0x3AF8] = (a3 - 970659525) & 0x39DB7AF5;
  STACK[0x3980] = STACK[0x3D10] >> ((a3 + 59) & 0xF5 ^ 0x8D);
  v5 = *(v4 + 8 * a3);
  ++LODWORD(STACK[0x3E18]);
  LODWORD(STACK[0x3B08]) = 1;
  LODWORD(STACK[0x39E8]) = 1;
  LODWORD(STACK[0x39A0]) = 1;
  LODWORD(STACK[0x3988]) = 1;
  LODWORD(STACK[0x3AD8]) = v3;
  return v5(a2);
}

uint64_t sub_100C01920()
{
  v2 = STACK[0x4244];
  v3 = STACK[0x6C68];
  v4 = *v0 & ((STACK[0x4258] & 0x8D098830) + (STACK[0x4258] & 0x72F677C8 | 0x8D098836) + 96907382);
  v5 = STACK[0x4220];
  v6 = *(*STACK[0x3E40] + (v4 & 0xFFFFFFFFFFFFFFF8));
  v7 = (__ROR8__(STACK[0x4258] & 0xFFFFFFFFFFFFFFF8, 8) + v6) ^ 0xC2AF3EAA3FF1B8E4;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x65F254DD188DB4FCLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x6FF046966119128DLL;
  v12 = __ROR8__(v11, 8);
  v13 = v11 ^ __ROR8__(v10, 61);
  v14 = (v12 + v13) ^ 0xA1B29DC5D776132BLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xEF042041F5E548ECLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (v18 + v17 - ((2 * (v18 + v17)) & 0xC3D417C18A61E6C8) + 0x61EA0BE0C530F364) ^ 0xB92DB8FF0F292ABALL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x76281D70B83240AELL) + 0x3B140EB85C192057) ^ 0x6F410F96D6A8E3D8;
  v23 = STACK[0x4224];
  v25 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  LODWORD(v25) = (((((2 * (v24 + v25)) | 0x3CEC96AB79B53E52) - (v24 + v25) + 0x6189B4AA432560D7) ^ 0xF1392BE9B2D8C1C9) >> (8 * (STACK[0x4258] & 7u))) ^ LOBYTE(STACK[0x3F17]);
  LODWORD(v25) = (((v25 ^ 0x48) - 66) ^ ((v25 ^ 5) - 15) ^ ((v25 ^ 0x4D) - 71)) + 120;
  LODWORD(v25) = v25 - 44 * ((187 * v25) >> 13);
  if ((v25 & 0xFE) != 0)
  {
    v25 = v25;
  }

  else
  {
    v25 = 1;
  }

  STACK[0x4238] = v25;
  v26 = *(v1 + 8 * SLODWORD(STACK[0x4218]));
  LODWORD(STACK[0x3F24]) = STACK[0x421C];
  STACK[0x3F28] = 1;
  STACK[0x3F30] = 0;
  LODWORD(STACK[0x3F38]) = v3 ^ v2 ^ v5 ^ v23;
  LODWORD(STACK[0x3F3C]) = STACK[0x422C];
  LODWORD(STACK[0x3F40]) = STACK[0x4228];
  LODWORD(STACK[0x3F44]) = -848443049;
  return v26();
}

uint64_t sub_100C01BDC(unint64_t a1, int a2, unint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  *v4 = 0;
  v7 = *(v5 + 8 * (a2 - 12618));
  LODWORD(STACK[0x3D88]) = 4;
  STACK[0x10D8] = v6;
  STACK[0x1210] = a3;
  STACK[0x3198] = v4;
  v8 = STACK[0x2B98];
  STACK[0x3700] = 1;
  LODWORD(STACK[0x34D4]) = a1;
  STACK[0x3D98] = a1;
  LODWORD(STACK[0x20C4]) = STACK[0x36B8];
  LODWORD(STACK[0x37A0]) = v8;
  LODWORD(STACK[0x3CE0]) = v3;
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v7();
}

uint64_t sub_100C01D44@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x54E5;
  STACK[0xAB0] = v1 + STACK[0xAB0] + ((v3 + 55604091) | 0xB4800081) - 240;
  return (*(v2 + 8 * v3))();
}

uint64_t sub_100C01DAC()
{
  v1 = STACK[0x8B0];
  v2 = (*(STACK[0x8B0] + 8 * (v0 + 15931)))(1280);
  STACK[0x1880] = v2;
  return (*(v1 + 8 * ((15 * (((v2 == 0) ^ (v0 - 114)) & 1)) ^ v0)))();
}

uint64_t sub_100C01E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x280] = v8;
  LODWORD(STACK[0x2E0]) = -1890796776;
  LODWORD(STACK[0x2D4]) = -1900855303;
  LODWORD(STACK[0x2EC]) = -1972858380;
  LODWORD(STACK[0x2E4]) = 1825717468;
  LODWORD(STACK[0x2E8]) = 1605228273;
  LODWORD(STACK[0x2DC]) = 361011331;
  STACK[0x268] = v9 + 3;
  v10 = *(v7 + 8 * (v6 - 22835));
  STACK[0x260] = v9 + 4;
  STACK[0x258] = v9 + 6;
  STACK[0x250] = STACK[0x288] + 7;
  LODWORD(STACK[0x2D8]) = 1961438438;
  LODWORD(STACK[0x2D0]) = 966395288;
  STACK[0x278] = v9;
  return v10(3652945781, a2, 2 * (v6 ^ 0x475Eu), a4, a5, a6, 966395288);
}

uint64_t sub_100C01F34@<X0>(char a1@<W0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = *(v9 + (a2 & ((v7 ^ 0x8B7C6078) + 1851140380 + ((v7 << (((-37 * (v8 ^ 6) - 79) & 0x37) - 47)) & 0x16F8C0F0)) & 0xFFFFFFF8));
  v13 = (v12 + a5) ^ 0xF41651499F5E3C67;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v12, 61);
  v16 = (0x1607CCEC309B21D4 - ((v14 + v15) | 0x1607CCEC309B21D4) + ((v14 + v15) | 0xE9F83313CF64DE2BLL)) ^ 0xFCCA71FDF394B462;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v11;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (0x1B785929525A435FLL - ((v20 + v19) | 0x1B785929525A435FLL) + ((v20 + v19) | 0xE487A6D6ADA5BCA0)) ^ 0x128BC658318807DLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xC7DDC9F6CC45B721;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = __ROR8__((v25 + v24 - ((2 * (v25 + v24)) & 0x4F977EFD1A2A3A8ALL) - 0x5834408172EAE2BBLL) ^ 0xFED9FDBD4C7C73DLL, 8);
  v27 = (v25 + v24 - ((2 * (v25 + v24)) & 0x4F977EFD1A2A3A8ALL) - 0x5834408172EAE2BBLL) ^ 0xFED9FDBD4C7C73DLL ^ __ROR8__(v24, 61);
  LODWORD(v27) = (((__ROR8__((v26 + v27) ^ v10, 8) + ((v26 + v27) ^ v10 ^ __ROR8__(v27, 61))) ^ a6) >> a1) ^ a3;
  LODWORD(v23) = (v27 ^ 0x373FBFFFBF7EBFE7) + ((2 * v27) & 0x1CELL) - 0x373FBFFF6232C707 != a4;
  return (*(a7 + 8 * ((v23 | (4 * v23)) ^ v8)))();
}

uint64_t sub_100C02160()
{
  v3 = STACK[0x7ED8];
  v4 = (&STACK[0x10120] + v3);
  *v4 = 0x71406559857F0410;
  v4[1] = 0x4085380B1BBDCFE3;
  *(&STACK[0x10120] + v3 + 16) = veorq_s8(*(&STACK[0x10120] + v3), xmmword_101237230);
  STACK[0x7ED8] = v3 + 32;
  STACK[0xCF30] += 32;
  LODWORD(STACK[0xD8BC]) = 0;
  STACK[0xD890] = v1;
  STACK[0xD880] = v2;
  return (*(STACK[0x57D8] + 8 * ((((&STACK[0x10120] + v3 + 16) == v2) * ((5 * (v0 ^ 0x5441)) ^ 0x7C1D)) ^ v0)))();
}

uint64_t sub_100C02320()
{
  STACK[0xA28] = *(v3 + 8 * v1);
  v4 = *(v2 - 0x1883660EE814440ELL) + 1472554355;
  v5 = *(v2 - 0x1883660EE814440ALL) + 1472554363;
  v6 = (v5 < 0xD50ED9EF) ^ (v4 < 0xD50ED9EF);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0xD50ED9EF;
  }

  return (*(v3 + 8 * ((!v7 * ((v0 ^ 0x1E015BA3) - 503384737)) ^ v0)))();
}

uint64_t sub_100C023CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = ((v12 + 161369813) & 0xF661FA6B ^ 0x606C) * v10;
  v15 = v14 + 1137264 - (v14 + 1137264) / 0x1D48 * v13;
  v16 = STACK[0x640] + 4 * (v14 + a7 - (v14 + a7) / 0x1D48 * v13);
  v17 = STACK[0x640] + 4 * v15;
  v18 = *(*STACK[0x660] + (*v11 & STACK[0x658]));
  v19 = *v8 ^ v9;
  *(v17 - 0x34EE34220E8AC3B8) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v17 + v18 + 673210726) & v19)) ^ *(v16 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v17 + v18 + v7) & v19)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 + v18 + 673210726) & v19)) ^ (-1962600273 * v17) ^ (-1962600273 * v16) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 + v18 + v7) & v19));
  return (*(STACK[0x668] + 8 * ((29406 * (v10 == 255)) ^ v12)))();
}

uint64_t sub_100C025B4@<X0>(unint64_t a1@<X8>)
{
  STACK[0xEE0] = v1;
  LODWORD(STACK[0x1594]) = v2;
  v7 = STACK[0xAB0];
  v8 = (&STACK[0x1D80] + STACK[0xAB0]);
  STACK[0x12F8] = v8;
  STACK[0x1490] = (v8 + 2);
  STACK[0xE60] = (v8 + 6);
  STACK[0xAB0] = v7 + (((v4 - 13559) | 0x108u) ^ 0x95ALL);
  STACK[0x15B8] = a1;
  *v8 = 0;
  v8[1] = 0;
  v9 = (*(v6 + 8 * (v4 + 16226)))();
  STACK[0x13C0] = 0x308E083E0C524CBELL;
  STACK[0xE80] = 0;
  LODWORD(STACK[0x108C]) = v5;
  STACK[0xB88] = 0;
  LODWORD(STACK[0xB04]) = v5;
  STACK[0x14C8] = v3;
  return (*(v6 + 8 * ((482 * (v3 == 0x683CBC57EAB92A3ELL)) ^ v4)))(v9);
}

uint64_t sub_100C02ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a4 - 1;
  v25 = STACK[0x890] + v24;
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = ((v26 + v20) | 0x33A54905FF8B305DLL) - ((v26 + v20) | a5) + a5;
  v28 = v27 ^ v9;
  v29 = v27 ^ v14;
  v30 = (__ROR8__(v28, 8) + v29) ^ v21;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v18;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (v8 - ((v33 + v34) | v8) + ((v33 + v34) | v10)) ^ a1;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((v22 & (2 * (v37 + v36))) - (v37 + v36) + v23) ^ v15;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (a7 - ((v40 + v39) ^ v17 | a7) + ((v40 + v39) ^ v17 | v13)) ^ a2;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xB2823E14A03C0367;
  *(v19 + v24 + v11) = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v42, 61))) ^ v16) >> (8 * (v25 & 7u))) ^ *v25;
  return (*(STACK[0x8B0] + 8 * (((v24 == 0) * v7) ^ v12)))();
}

uint64_t sub_100C02BEC@<X0>(int a1@<W5>, uint64_t a2@<X8>)
{
  v3 = *(a2 + 32);
  STACK[0x3E38] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (a1 ^ 0x5C20 ^ (3469 * (a1 ^ 0x69FF)))) ^ a1)))();
}

uint64_t sub_100C02CE4(uint64_t a1)
{
  v5 = 621 * (v1 ^ 0x2A25u);
  STACK[0x420] = v5;
  return (*(v3 + 8 * ((((((v1 ^ 0x2A25u) + 7682 - 7692) & v2) == 0) * (v5 + 20960)) ^ v1)))(a1, v4);
}

uint64_t sub_100C02DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v11) = (1645 * a8 + 2113825) % 0x2A20u;
  if (v11 >= (v9 ^ 0x7493u))
  {
    LODWORD(v11) = v11 - 5392;
  }

  if (v11 >= 0xA88)
  {
    v11 = (v11 - 2696);
  }

  else
  {
    v11 = v11;
  }

  v12 = (v11 ^ 0xFC93537FC0776BF7) + STACK[0x638] + ((2 * v11) & 0x180EED7EELL);
  v13 = *STACK[0x650];
  v14 = *STACK[0x660];
  v15 = *(v14 + (v13 & STACK[0x648]));
  v16 = *v8 ^ v10;
  LODWORD(v12) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + 1065915401 + v15 - 963544004) & v16)) ^ *(v12 - 0x42369CDBF994860CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + 1065915401 + v15 - 963544002) & v16)) ^ (76 * (v12 + 9));
  v17 = STACK[0x640] + 4 * ((551 * (((v12 ^ 0xBE31A23E) - 1398827656) ^ ((v12 ^ 0x3EED2F46) + 742594576) ^ ((v12 ^ 0x80DC8D08) - 1837974974)) - 885888402) % 0x1D48);
  v18 = *(v14 + (v13 & STACK[0x658]));
  v19 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v17 + v18 + 673210728) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v17 + v18 + 673210726) & v16)) ^ *(v17 - 0x34EE34220E8AC3B8);
  v20 = v19 ^ (333999 * v17);
  v21 = (v19 ^ (-1962600273 * v17)) >> 24;
  v22 = (v19 ^ (-81 * v17));
  LODWORD(v17) = ((v19 ^ (6319 * v17)) >> 8) ^ 0x79;
  v23 = 1645 * (BYTE2(v20) ^ 0x25) + 3391990;
  v24 = (1645 * (((v21 ^ 0x907E6FC0) - 662438872) ^ ((v21 ^ 0xB7BFEE78) - 12419680) ^ ((v21 ^ 0x27C1811B) + 1866207997)) - 87527531) % 0xA88;
  v25 = v24 ^ 0x24AF8BE3CF96D85ELL;
  v26 = (2 * v24) & 0x10BC;
  v27 = v23 - 2696 * (((12744711 * v23) >> 32) >> 3);
  LODWORD(v24) = *(v14 + (v13 & 0xC6917C3C));
  v28 = v25 + STACK[0x638] + v26;
  v29 = (1645 * (((v22 ^ 0x934C9523) - 693455942) ^ ((v22 ^ 0xBFC1C70B) - 98049646) ^ ((v22 ^ 0x2C8D52E1) + 1768649852)) - 665880526) % 0xA88;
  v30 = 1645 * v17 + 3391990 - 2696 * (((12744711 * (1645 * v17 + 3391990)) >> 32) >> 3);
  v31 = *(v28 - 0x6A52D54008B3F273);
  v32 = (v29 ^ 0x77C3E3FA7F5FA36BLL) + STACK[0x638] + ((2 * v29) & 0x6D6);
  LODWORD(v29) = *(v32 + 0x4298D2A947834280);
  v33 = v28 + 812197794;
  v34 = (v30 ^ 0x6FFFDFEBF7FA3B9FLL) + STACK[0x638] + ((2 * v30) & 0x173E);
  LODWORD(v28) = v32 - 2136974187;
  LODWORD(v32) = v34 + 134595681;
  LODWORD(v13) = *(v34 + 0x4A5CD6B7CEE8AA4CLL);
  v35 = (v27 ^ 0xEED7EFF3F777B3ABLL) + STACK[0x638] + ((2 * v27) & 0x756);
  v36 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v33 + v24 - 963544004) & v16)) ^ v31;
  LODWORD(v34) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v33 + v24 - 963544002) & v16)) ^ (76 * v33);
  v37 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v35 + 143150165 + v24 - 963544004) & v16)) ^ *(v35 - 0x347B39503094CDC0);
  LODWORD(v34) = v36 ^ v34;
  v38 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v35 + 143150165 + v24 - 963544002) & v16)) ^ (76 * (v35 + 85));
  LODWORD(v34) = ((v34 << 16) ^ 0xDC12F5) & (((v37 ^ v38) << 8) ^ 0xFF02F5) | ((v37 ^ v38) << 8) & 0xED00;
  v39 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v32 + v24 - 963544004) & v16)) ^ v13 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v32 + v24 - 963544002) & v16)) ^ (76 * v32);
  LODWORD(v34) = (v34 ^ 0x31BE87) & (v39 ^ 0xFFFF02) ^ v39 & 0x8D;
  v40 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v28 + v15 - 963544004) & v16)) ^ v29 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v28 + v15 - 963544002) & v16)) ^ (76 * v28) & 0xFC;
  v41 = STACK[0x640] + 4 * (551 * (((2 * a8) & 0xA14) + (a8 ^ 0x50Au)) % 0x1D48);
  *(v41 - 0x34EE34220E8AC3B8) = (-1962600273 * v41) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v41 + 673210726) & v16)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 + v41 + 673210728) & v16)) ^ 0xAD0CFBBA ^ (((v34 << 8) ^ 0x93E5F033) & (v40 ^ 0xFFFFFF03) | v40 & 0xCCCCCCCC);
  return (*(STACK[0x668] + 8 * (v9 ^ (4 * (a8 == 255)))))();
}

uint64_t sub_100C03514(uint64_t a1, char a2, int a3)
{
  LODWORD(STACK[0x4A40]) = LODWORD(STACK[0x5750]) + LODWORD(STACK[0x56E0]);
  LODWORD(STACK[0x4930]) = LODWORD(STACK[0x5450]) | LODWORD(STACK[0x5460]);
  LODWORD(STACK[0x4928]) = LODWORD(STACK[0x53D8]) | LODWORD(STACK[0x5630]);
  LODWORD(STACK[0x4A30]) = LODWORD(STACK[0x53D0]) | LODWORD(STACK[0x55E0]);
  LODWORD(STACK[0x4920]) = LODWORD(STACK[0x53C8]) | LODWORD(STACK[0x5560]);
  LODWORD(STACK[0x4A38]) = LODWORD(STACK[0x53C0]) | LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x4908]) = LODWORD(STACK[0x53B8]) | LODWORD(STACK[0x54A0]);
  v10 = (v8 + 2131725447) & 0x80F00167;
  v11 = (v10 ^ 0x50) & a3 ^ 0xFFFFFFFE;
  LODWORD(STACK[0x54A0]) = a3 ^ (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11));
  LOBYTE(v11) = v7 & 0xF4 ^ 0x88;
  v12 = v9 & 0xCA ^ 0xB3;
  v13 = (((v7 ^ (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * ((v7 ^ 0x64) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) ^ 0xF4) << 16) | (((v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & 0x2E ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ 0xCA) << 8);
  v14 = v5 & 0x2A ^ 0xA3;
  v15 = v5 ^ (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x64) & (2 * ((v5 ^ 0x44) & (2 * ((v5 ^ 0x44) & 0xE ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  v16 = a2 & 0xB4 ^ 0xE8;
  v17 = v3 & 0xF4 | 8;
  v18 = (((v3 ^ (2 * ((v3 ^ 0x64) & (2 * ((v3 ^ 0x64) & (2 * ((v3 ^ 0x64) & (2 * ((v3 ^ 0x64) & (2 * ((v3 ^ 0x64) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x38FCF0) & (v13 ^ 0x7BFCFF) | v13 & 0xC70300) << 8;
  LODWORD(STACK[0x5460]) = v18 ^ 0x850162FF;
  LODWORD(STACK[0x54C0]) = v18 & 0x62929900;
  v19 = v4 & 0x92 ^ 0xFFFFFFDF;
  LODWORD(STACK[0x5450]) = v4 ^ (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & (2 * ((v4 ^ 0x64) & 0x36 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19));
  v20 = STACK[0x53E0];
  LOBYTE(v19) = STACK[0x53E0] & 0xC2 ^ 0xB7;
  v21 = (((a2 ^ (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0xB4) << 8) | (v15 << 16);
  v22 = ((v20 ^ (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & 0x26 ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0x220325) & (v21 ^ 0x4443FF) | v21 & 0xDDFC00;
  v23 = STACK[0x5408];
  LOBYTE(v19) = STACK[0x5408] & 0x1A ^ 0x1B;
  v24 = v23 ^ (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19));
  v25 = STACK[0x53E8];
  LOBYTE(v19) = STACK[0x53E8] & 0xA ^ 0x93;
  v26 = STACK[0x53F8];
  LOBYTE(v20) = STACK[0x53F8] & 0x20 ^ 0xA6;
  v27 = v6 & 0x7A ^ 0x4B;
  LODWORD(STACK[0x5408]) = v6 ^ (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * ((v6 ^ 0x64) & (2 * (v27 ^ v6 & 0x1E)) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27));
  v28 = STACK[0x5400] & 0xC4 ^ 0xFFFFFFB0;
  LODWORD(STACK[0x5400]) ^= 2 * ((LODWORD(STACK[0x5400]) ^ 0x64) & (2 * ((LODWORD(STACK[0x5400]) ^ 0x64) & (2 * ((LODWORD(STACK[0x5400]) ^ 0x64) & (2 * ((LODWORD(STACK[0x5400]) ^ 0x64) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28);
  v29 = (((v25 ^ (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & 0x2E ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xA) << 16) | (((v26 ^ (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x64) & (2 * ((v26 ^ 0x44) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x20) << 8);
  v30 = STACK[0x53F0];
  LOBYTE(v20) = STACK[0x53F0] & 0xA2 ^ 0x67;
  v31 = ((v24 ^ 0x442137) & ~v29 | v29 & 0xBBDE00) << 8;
  LODWORD(STACK[0x53F8]) = v31 ^ 0xA80CD2FF;
  LODWORD(STACK[0x55E0]) = v31 & 0x53D20400;
  v32 = STACK[0x5410];
  LOBYTE(v31) = STACK[0x5410] & 0x7C ^ 0xCC;
  v33 = (((v32 ^ (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x7C) << 8) | (((v30 ^ (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x44) & (2 * ((v30 ^ 0x44) & 6 ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xA2) << 16);
  v34 = STACK[0x5490];
  v35 = STACK[0x5490] & 0x3A ^ 0xAB;
  v36 = (((v34 ^ (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * (v35 ^ v34 & 0x1E)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0x52849A) & ~v33 | v33 & 0xAD7B00) << 8;
  LODWORD(STACK[0x53E8]) = v36 ^ 0xA55B10FF;
  LODWORD(STACK[0x5490]) = v36 & 0xA24CF00;
  v37 = STACK[0x5420];
  LOBYTE(v36) = STACK[0x5420] & 0x3C ^ 0xAC;
  v38 = STACK[0x5440];
  LOBYTE(v33) = STACK[0x5440] & 2 ^ 0x17;
  v39 = (((v37 ^ (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * ((v37 ^ 0x64) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0x3C) << 16) | (((v38 ^ (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & (2 * ((v38 ^ 0x64) & 0x26 ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 2) << 8);
  v40 = STACK[0x5530];
  LOBYTE(v33) = STACK[0x5530] & 0x7E ^ 0xCD;
  v41 = (v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * ((v40 ^ 0x64) & (2 * (v33 ^ v40 & 0x1A)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33;
  v42 = STACK[0x54B0];
  LOBYTE(v33) = STACK[0x54B0] & 0xF8 ^ 0x8A;
  v43 = ((v15 ^ 0x649C07) & ~v39 | v39 & 0x9B6300) << 8;
  LODWORD(STACK[0x4EB0]) = (v43 ^ 0x1B0192FF) & ((v42 ^ (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * ((v42 ^ 0x64) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x1B95B29F) | v43 & 0xE46A4D00;
  v22 <<= 8;
  LODWORD(STACK[0x53D8]) = v22 ^ 0xD42018FF;
  LODWORD(STACK[0x54B0]) = v22 & 0xBDE2200;
  v44 = STACK[0x55C0];
  LOBYTE(v22) = STACK[0x55C0] & 0xD0 ^ 0xBE;
  v45 = (((v44 ^ (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xD0) << 8) | (((v40 ^ (2 * v41)) ^ 0x7E) << 16);
  v46 = STACK[0x5620];
  LOBYTE(v43) = STACK[0x5620] & 0x34 ^ 0xA8;
  LODWORD(STACK[0x53C0]) = (v45 ^ 0xFA2FFF) & ((v46 ^ (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * ((v46 ^ 0x64) & (2 * v43) ^ v43)) ^ v43)) ^ v43)) ^ v43))) ^ 0x7A2F31) | v45 & 0x85D000;
  v47 = STACK[0x5660];
  v48 = STACK[0x5660] & 0xBA ^ 0xFFFFFFEB;
  LODWORD(STACK[0x53B8]) = v47 ^ (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * ((v47 ^ 0x64) & (2 * (v48 ^ v47 & 0x1E)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48));
  v49 = *STACK[0x5040];
  LOBYTE(v48) = v49 & 0x32 ^ 0xAF;
  v50 = (v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * ((v49 ^ 0x64) & (2 * (v48 ^ v49 & 0x16)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48;
  LOBYTE(v48) = *STACK[0x5550];
  LOBYTE(v33) = v48 & 0x3A ^ 0xAB;
  v51 = STACK[0xFE70];
  STACK[0x52C0] = STACK[0xFE70] + 37081;
  v52 = v51[37081];
  v53 = *STACK[0x57C0];
  v54 = v53 & 0x96 ^ 0xFFFFFFD9;
  HIDWORD(v56) = v53;
  LODWORD(v56) = (((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * (v54 ^ v53 & 0x32)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54) << 25) ^ (v53 << 24);
  v55 = v56 >> 27;
  HIDWORD(v56) = v55 ^ 0x12;
  LODWORD(v56) = (v55 ^ 0x80) << 24;
  LODWORD(STACK[0x53B0]) = v56 >> 29;
  STACK[0x5158] = (v51 + 40403);
  v57 = v51[40403];
  v58 = v57 & 0x2C ^ 0x24;
  v59 = (((v52 ^ (2 * (((2 * (((2 * (((2 * (((2 * v52) & 0x48 | 0x24) & (v52 ^ 0x24))) ^ 0x2C) & (v52 ^ 0x24))) ^ 0x2C) & (v52 ^ 0x24))) ^ 0x2C) & (v52 ^ 0x64)))) ^ 0x2C) << 16) | (((v49 ^ (2 * v50)) ^ 0x32) << 8);
  STACK[0x5258] = (v51 + 37747);
  v60 = v51[37747];
  v61 = v60 & 0x4A ^ 0xF3;
  v62 = (((v48 ^ (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * ((v48 ^ 0x64) & (2 * (v33 ^ v48 & 0x1E)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x3A) << 16) | (((v57 ^ (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * ((v57 ^ 0x64) & (2 * v58) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0x2C) << 8);
  v63 = *STACK[0x5030];
  v64 = v63 & 0xD4 ^ 0x38;
  LODWORD(STACK[0x53C8]) = ((v63 ^ (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * v64) ^ v64)) ^ v64)) ^ v64)) ^ v64))) ^ 0x1B37A5) & ~v62 ^ (v62 & 0xE4C800 | 0x84);
  LOBYTE(v62) = *STACK[0x5110];
  v65 = v62 & 0xE0 | 6;
  v66 = *STACK[0x4F78];
  v67 = (v66 & 0xEEEEEEE4 | 0xA) ^ v66 & 0x1C;
  LODWORD(STACK[0x52A8]) = v66 ^ (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * ((v66 ^ 0x64) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67));
  v68 = (((v60 ^ (2 * ((v60 ^ 0x64) & (2 * ((v60 ^ 0x64) & (2 * ((v60 ^ 0x64) & (2 * ((v60 ^ 0x64) & (2 * ((v60 ^ 0x64) & (2 * ((v60 ^ 0x64) & 0x2E ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61))) ^ 0xAB0D17) & (v59 ^ 0xBFAFFF) | v59 & 0x54F200) << 8;
  LODWORD(STACK[0x5348]) = v68 ^ 0xD290B2FF;
  LODWORD(STACK[0x53D0]) = v68 & 0x86F31300;
  LOBYTE(v68) = *STACK[0x5580];
  LOBYTE(v67) = v68 & 0x9E ^ 0x5D;
  LOBYTE(v68) = v68 ^ (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * (v67 ^ v68 & 0x3A)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67));
  STACK[0x5630] = (v51 + 35087);
  v69 = v51[35087];
  v70 = v69 & 0x6A ^ 0x43;
  LODWORD(STACK[0x5310]) = v69 ^ (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x64) & (2 * ((v69 ^ 0x44) & (2 * ((v69 ^ 0x44) & 0xE ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70));
  v71 = (v68 << 8) | (((v62 ^ (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x44) & (2 * v65) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65))) ^ 0xE0) << 16);
  STACK[0x4FE8] = (v51 + 40071);
  LOBYTE(v62) = v51[40071];
  v72 = v62 & 0x34 ^ 0xA8;
  v73 = (v71 ^ 0x5340FF) & ((v62 ^ (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * v72) ^ v72)) ^ v72)) ^ v72)) ^ v72))) ^ 0x53D0ED) | v71 & 0xAC2F00;
  STACK[0x5420] = (v51 + 38660);
  v74 = v51[38660];
  LOBYTE(v71) = v74 & 0x4E ^ 0xF5;
  LOBYTE(v30) = *STACK[0x53A0];
  v75 = v30 & 0xF4 | 8;
  v76 = (((v30 ^ (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75))) ^ 0xF4) << 8) | (((v74 ^ (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * (v71 ^ v74 & 0xAA)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71))) ^ 0x4E) << 16);
  v77 = *STACK[0x5540];
  LOBYTE(v47) = v77 & 0x3A ^ 0xAB;
  LODWORD(STACK[0x5290]) = ((v77 ^ (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * ((v77 ^ 0x64) & (2 * (v47 ^ v77 & 0x1E)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0x4D727B) & ~v76 | v76 & 0xB28D00;
  STACK[0x5620] = (v51 + 39988);
  v78 = v51[39988];
  v79 = v78 & 0x1E ^ 0xFFFFFF9D;
  LODWORD(STACK[0x52A0]) = v78 ^ (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * (v79 ^ v78 & 0x3A)) ^ v79)) ^ v79)) ^ v79)) ^ v79)) ^ v79));
  LOBYTE(v78) = *STACK[0x5368];
  v80 = v78 & 0x9C ^ 0x5C;
  STACK[0x5320] = (v51 + 38659);
  v81 = v51[38659];
  v82 = v81 & 0xFFFFFFCA ^ 0xFFFFFFB3;
  LODWORD(STACK[0x5248]) = v81 ^ (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & 0x2E ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82));
  v73 <<= 8;
  LODWORD(STACK[0x5298]) = v73 ^ 0x82124FF;
  LODWORD(STACK[0x53E0]) = v73 & 0xB4148300;
  LOBYTE(v73) = *STACK[0x5300];
  LOBYTE(v81) = v73 & 0x28 ^ 0xA2;
  v83 = (((v78 ^ (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * ((v78 ^ 0x64) & (2 * v80) ^ v80)) ^ v80)) ^ v80)) ^ v80))) ^ 0x9C) << 16) | (((v73 ^ (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x64) & (2 * ((v73 ^ 0x44) & (2 * v81) | v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81))) ^ 0x28) << 8);
  STACK[0x5750] = (v51 + 40320);
  v84 = v51[40320];
  v85 = v84 & 0xFFFFFF90 ^ 0x5E;
  v86 = v84 ^ (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85));
  HIDWORD(v56) = v86 ^ 0x10;
  LODWORD(v56) = ((v86 & 0xE0 ^ 0x6E196EE0) & ~v83 | v83 & 0xE69100) ^ 0x6E196E60;
  STACK[0x5318] = (v51 + 36583);
  LOBYTE(v86) = v51[36583];
  LOBYTE(v81) = v86 & 0xA6 ^ 0xE1;
  STACK[0x50B0] = (v51 + 37910);
  v87 = v51[37910];
  v88 = v87 & 8 | 0xFFFFFF92;
  LODWORD(STACK[0x5278]) = v87 ^ (2 * ((v87 ^ 0x64) & (2 * ((v87 ^ 0x64) & (2 * ((v87 ^ 0x64) & (2 * ((v87 ^ 0x64) & (2 * ((v87 ^ 0x64) & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88));
  HIDWORD(v56) = v56 >> 5;
  LODWORD(v56) = HIDWORD(v56);
  v89 = v56 >> 19;
  LODWORD(STACK[0x5440]) = (2 * v89) & 0x7E2E84F4;
  LODWORD(STACK[0x5410]) = v89 + 1058488954;
  STACK[0x50F8] = (v51 + 36582);
  LOBYTE(v89) = v51[36582];
  LOBYTE(v87) = v89 & 0x16 ^ 0x99;
  v90 = (((v86 ^ (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x44) & (2 * (v81 ^ v86 & 2)) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81))) ^ 0xA6) << 16) | (((v89 ^ (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * (v87 ^ v89 & 0x32)) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87))) ^ 0x16) << 8);
  STACK[0x4F70] = (v51 + 38494);
  LOBYTE(v86) = v51[38494];
  LOBYTE(v83) = v86 & 0xF2 ^ 0xF;
  v91 = (v86 ^ (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * ((v86 ^ 0x64) & (2 * (v83 ^ v86 & 0x16)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)));
  v92 = (v91 ^ 0x592346) & ~v90 | v90 & 0xA6DC00;
  v93 = *STACK[0x5000];
  v94 = v93 & 0xFFFFFFE6 | 1;
  LODWORD(STACK[0x5230]) = v93 ^ (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * (v93 & (2 * v94) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94));
  LOBYTE(v93) = *STACK[0x5500];
  LOBYTE(v94) = v93 & 0x7C ^ 0xCC;
  STACK[0x5660] = (v51 + 37580);
  LOBYTE(v44) = v51[37580];
  LOBYTE(v81) = v44 & 0x74 ^ 0xC8;
  v95 = (((v44 ^ (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * ((v44 ^ 0x64) & (2 * v81) ^ v81)) ^ v81)) ^ v81)) ^ v81))) ^ 0x74) << 8) | (((v93 ^ (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * v94) ^ v94)) ^ v94)) ^ v94)) ^ v94))) ^ 0x7C) << 16);
  STACK[0x4B10] = (v51 + 37165);
  LOBYTE(v93) = v51[37165];
  LOBYTE(v40) = v93 & 0x88 | 0x52;
  v96 = ((v93 ^ (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * ((v93 ^ 0x64) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0xF22DE6) & (v95 ^ 0xFA6FFF) | v95 & 0xDD200;
  STACK[0x4FA8] = (v51 + 38824);
  LOBYTE(v95) = v51[38824];
  LOBYTE(v40) = v95 & 0xA4 ^ 0xE0;
  LOBYTE(v81) = *STACK[0x5378];
  v97 = (((v81 ^ (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * ((v81 ^ 0x64) & (2 * (v81 & 0x64)) ^ v81 & 0x64)) ^ v81 & 0x64)) ^ v81 & 0x64)) ^ v81 & 0x64))) ^ 0xE4) << 8) | (((v95 ^ (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0xA4) << 16);
  LOBYTE(v95) = *STACK[0x4FB0];
  LOBYTE(v78) = v95 & 0x5E ^ 0xFD;
  STACK[0x5530] = (v51 + 39408);
  v98 = (((v95 ^ (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * (v78 ^ v95 & 0x3A)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x8BBD37) & ~v97 | v97 & 0x744200) << 8;
  LODWORD(STACK[0x5220]) = v98 ^ 0x440216FF;
  LODWORD(STACK[0x5308]) = v98 & 0xB3DCE100;
  STACK[0x53F0] = (v51 + 35919);
  LOBYTE(v98) = v51[35919];
  LOBYTE(v95) = v98 & 0x12 ^ 0x1F;
  v96 <<= 8;
  LODWORD(STACK[0x5208]) = v96 ^ 0x1091FF;
  LODWORD(STACK[0x5270]) = v96 & 0x1DCA0400;
  LOBYTE(v96) = *STACK[0x50F0];
  LOBYTE(v87) = v96 & 0x8E ^ 0x55;
  STACK[0x50E0] = (v51 + 40070);
  LOBYTE(v88) = v51[40070];
  v99 = ~v88 & 0x1C;
  v100 = (((v98 ^ (2 * ((v98 ^ 0x64) & (2 * ((v98 ^ 0x64) & (2 * ((v98 ^ 0x64) & (2 * ((v98 ^ 0x64) & (2 * ((v98 ^ 0x64) & (2 * ((v98 ^ 0x64) & 0x36 ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95))) ^ 0x12) << 16) | (((v96 ^ (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * (v87 ^ v96 & 0xAA)) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87))) ^ 0x8E) << 8);
  v101 = (((v88 ^ (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * v99) ^ v99)) ^ v99)) ^ v99)) ^ v99))) ^ 0xED8A5D) & ~v100 | v100 & 0x127500) << 8;
  LODWORD(STACK[0x5200]) = v101 ^ 0x1045B2FF;
  LODWORD(STACK[0x52B0]) = v101 & 0xEBA0C00;
  STACK[0x55C0] = (v51 + 35503);
  LOBYTE(v101) = v51[35503];
  LOBYTE(v88) = v101 & 0x26 ^ 0x21;
  v102 = (v68 << 16) | (((v101 ^ (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x44) & (2 * (v88 ^ v101 & 2)) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88))) ^ 0x26) << 8);
  STACK[0x52E8] = (v51 + 36665);
  LOBYTE(v101) = v51[36665];
  LOBYTE(v88) = v101 & 0xD0 ^ 0xBE;
  STACK[0x56E0] = (v51 + 37496);
  v103 = ((v102 ^ 0x617AFF) & ((v101 ^ (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88)) ^ v88))) ^ 0x677A4E) | v102 & 0x988500) << 8;
  v104 = v103 ^ 0x560FFu;
  LODWORD(STACK[0x5228]) = v103 & 0x13800300;
  LOBYTE(v103) = *STACK[0x5070];
  v105 = v103 & 0x58 ^ 0xFA;
  v106 = *STACK[0x4FF0];
  LOBYTE(v55) = v106 & 0x4E ^ 0x75;
  LOBYTE(v103) = v103 ^ (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * v105) ^ v105)) ^ v105)) ^ v105)) ^ v105)) ^ v105)) ^ 0x58;
  STACK[0x5380] = (v51 + 40818);
  LOBYTE(v88) = v51[40818];
  v107 = v88 & 0x46 ^ 0x71;
  v108 = (((v88 ^ (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * ((v88 ^ 0x64) & (2 * (v107 ^ v88 & 0x22)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0x1F1E9B17) & (~(v103 << 16) | 0xFFFBFFFF) ^ 0x1F1E9B51) + ((v103 << 16) & 0xFFFBFFFF | (((v106 ^ (2 * ((v106 ^ 0x64) & (2 * ((v106 ^ 0x64) & (2 * ((v106 ^ 0x64) & (2 * ((v106 ^ 0x64) & (2 * ((v106 ^ 0x64) & (2 * (v55 ^ v106 & 0xAA)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55))) ^ 0x4E) << 8));
  STACK[0x5560] = (v51 + 36666);
  STACK[0x5210] = (v51 + 39242);
  STACK[0x52B8] = (v51 + 35253);
  LOBYTE(v103) = v51[35253];
  LOBYTE(v87) = v103 & 0xC ^ 0x94;
  v109 = *STACK[0x4F98];
  LOBYTE(v55) = v109 & 0xB6 ^ 0xE9;
  v110 = (((v103 ^ (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * v87) ^ v87)) ^ v87)) ^ v87)) ^ v87))) ^ 0xC) << 16) | (((v109 ^ (2 * ((v109 ^ 0x64) & (2 * ((v109 ^ 0x64) & (2 * ((v109 ^ 0x64) & (2 * ((v109 ^ 0x64) & (2 * ((v109 ^ 0x64) & (2 * (v55 ^ v109 & 0x12)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55))) ^ 0xB6) << 8);
  LOBYTE(v53) = *STACK[0x53A8];
  LOBYTE(v95) = v53 & 0x26 ^ 0x21;
  v111 = ((v53 ^ (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x64) & (2 * ((v53 ^ 0x44) & (2 * (v95 ^ v53 & 2)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95))) ^ 0x25C0F8) & ~v110 | v110 & 0xDA3F00;
  STACK[0x4AD0] = (v51 + 37249);
  v112 = (v51 + 37663);
  v113 = v51 + 39739;
  v114 = v51 + 39488;
  LOBYTE(v95) = *STACK[0x5650];
  LOBYTE(v51) = v95 & 0x24 ^ 0x20;
  v115 = (v91 << 8) & 0xFF00FFFF | (((v95 ^ (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * v51) | v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x24) << 16);
  STACK[0x51A0] = v112;
  LOBYTE(v33) = *STACK[0x5028];
  LOBYTE(v44) = v33 & 0x88 | 0x52;
  v116 = (v115 ^ 0xF100FF) & ((v33 ^ (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0xF12249) | v115 & 0xEDD00;
  STACK[0x4F30] = v113;
  LOBYTE(v115) = *v113;
  LOBYTE(v33) = *v113 & 0xA2 ^ 0xE7;
  LODWORD(STACK[0x51F8]) = ((v111 << 8) ^ 0x822D20FF) & ((v115 ^ (2 * ((v115 ^ 0x64) & (2 * ((v115 ^ 0x64) & (2 * ((v115 ^ 0x64) & (2 * ((v115 ^ 0x64) & (2 * ((v115 ^ 0x44) & (2 * ((v115 ^ 0x44) & 6 ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x836DF0B7) | (v111 << 8) & 0x7C920F00;
  STACK[0x4AF8] = v114;
  LOBYTE(v115) = *v114;
  LOBYTE(v111) = *v114 & 0xCE ^ 0x35;
  v117 = v115 ^ (2 * ((v115 ^ 0x64) & (2 * ((v115 ^ 0x64) & (2 * ((v115 ^ 0x64) & (2 * ((v115 ^ 0x64) & (2 * ((v115 ^ 0x64) & (2 * (v111 ^ v115 & 0xAA)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111));
  v118 = LODWORD(STACK[0x53B8]);
  LODWORD(STACK[0x51C0]) = (LODWORD(STACK[0x53C0]) << 8) & 0x49429C00;
  LODWORD(STACK[0x53B8]) = LODWORD(STACK[0x53B0]);
  v119 = LODWORD(STACK[0x5290]) << 8;
  LODWORD(STACK[0x4A28]) = LODWORD(STACK[0x5248]);
  LODWORD(STACK[0x52A8]) = v119 & 0x7FEDD900;
  LODWORD(STACK[0x5290]) = (v92 << 8) & 0xC2FFEF00;
  LODWORD(STACK[0x53B0]) = (v108 << 8) & 0x12354900;
  v116 <<= 8;
  LODWORD(STACK[0x53C0]) = v116 & 0xC3D7E900;
  return (*(STACK[0x57D8] + 8 * v8))(v118, v104, v116 ^ 0xC0816FFu, v10 - 1, 999168, v117);
}

uint64_t sub_100C057C4(uint64_t a1)
{
  *(a1 + 5) = STACK[0x151B];
  STACK[0x1860] = 0;
  v3 = (*(v2 + 8 * (v1 + 8536)))(120);
  STACK[0x1828] = v3 + 0x79CEC8CF5A6FCEBALL;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 - 521034761) & 0x1F0E3DA7) - 15484)) ^ v1)))(0);
}

uint64_t sub_100C0590C()
{
  v4 = (*(v3 + 8 * (v2 ^ 0xB7D0FFDC)))(v1);
  STACK[0x1720] = 0;
  return (*(v3 + 8 * ((v2 + v0) ^ 0xDBF)))(v4);
}

uint64_t sub_100C05BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0xD3C]) = v3;
  STACK[0x13B0] = v5;
  STACK[0x8F8] = v6;
  STACK[0xD68] = v4;
  STACK[0x9B8] = 0;
  LODWORD(STACK[0xD88]) = -769884012;
  return (*(v8 + 8 * (((v7 != 0) * ((a3 ^ 0x61D9) - 18917)) ^ a3)))(a1, a2, 1211098651);
}

uint64_t sub_100C05D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x17B0] = STACK[0x1488];
  STACK[0xB20] = &STACK[0x1D69];
  return (*(v4 + 8 * ((v3 + 436) ^ 0xB7D0EF1E ^ (v3 - 136990021) & 0xBFFAC79B)))(a1, a2, a3, v4);
}

uint64_t sub_100C230A4()
{
  v2 = *(v0 + 2472);
  v3 = v2 & 0xFFFFFFF8;
  v4 = *STACK[0x51E8];
  v5 = *STACK[0x51F0];
  v6 = *(v5 + (((v2 & 0xFFFFFFF8) - 1831847768) & v4));
  v7 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = *(v0 + 295);
  v9 = (((2 * (v6 + v7)) | 0x3AC9E27932B61BDCLL) - (v6 + v7) + 0x629B0EC366A4F212) ^ 0x5FCBCF96A6AAB50ALL;
  v10 = v9 ^ __ROR8__(v6, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x65F254DD188DB4FCLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v13 + v12 - ((2 * (v13 + v12)) & 0xACE959B1526A04DCLL) - 0x298B532756CAFD92) ^ 0xB984EA4EC82C10E3;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (0x605887018C33F36BLL - ((v16 + v15) | 0x605887018C33F36BLL) + ((v16 + v15) | 0x9FA778FE73CC0C94)) ^ 0x3E15E53BA4BA1FBFLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0x248358E60C7ACD46 - ((v19 + v18) | 0x248358E60C7ACD46) + ((v19 + v18) | 0xDB7CA719F38532B9)) ^ 0x3478875806607A55;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xD8C7B31FCA19D9DELL;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (((2 * (v23 + v24)) & 0xD8FDA52EFC831E50) - (v23 + v24) - 0x6C7ED2977E418F29) ^ 0xC7D42C460B0FB358;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  LOBYTE(v2) = 8 * (v2 & 7);
  *(v0 + 1889) = v8 ^ 0x36 ^ (((((2 * (v27 + v26)) | 0xE9CC4A0BC33EE8EELL) - (v27 + v26) - 0x74E62505E19F7477) ^ 0x1BA945B9EF9D2A97) >> v2);
  v28 = *(v5 + (v4 & (v3 - 1831847764) & 0xFFFFFFF8));
  v29 = (v28 + v7) ^ 0xC2AF3EAA3FF1B8E4;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x65F254DD188DB4FCLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x6FF046966119128DLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xA1B29DC5D776132BLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v1;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xD8C7B31FCA19D9DELL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x5455012E8AB1C38FLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  *(STACK[0x8070] + 10327) ^= v8 ^ (((v43 + v42 - ((2 * (v43 + v42)) & 0x3FAA6E98AF4B35C8) - 0x602AC8B3A85A651CLL) ^ 0xF09A57F059A7C404) >> v2);
  v44 = (STACK[0x8070] + 9734);
  *(v0 + 2480) = v44;
  *(v0 + 2495) = *v44;
  v45 = *(v0 + 3920) + 37;
  *(v0 + 296) = v45;
  v46 = STACK[0x57D8];
  v47 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9060));
  *(v0 + 2496) = v45;
  *(v0 + 280) = v47;
  return (*(v46 + 8 * (LODWORD(STACK[0x4D6C]) + 8890)))();
}

uint64_t sub_100C23488@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 5) + 90;
  v4 = *(v1 + 8 * (a1 | 0x40));
  LODWORD(STACK[0x2CC]) = 642021507;
  return v4(v3, 221, STACK[0x260], STACK[0x268], 90);
}

uint64_t sub_100C2353C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x3FAC]) = LODWORD(STACK[0x4EC8]) | LODWORD(STACK[0x4E78]);
  LODWORD(STACK[0x3308]) = LODWORD(STACK[0x4E44]) | LODWORD(STACK[0x4E50]);
  LODWORD(STACK[0x4EC8]) = STACK[0x4E24] & (v6 ^ 0x5977C933);
  LODWORD(STACK[0x4E44]) = v10 & (v14 ^ 0x5B52A470);
  LODWORD(STACK[0x4E50]) = v13 & (v11 ^ 0x1D2ABE7C);
  LODWORD(STACK[0x4E24]) = v8 & (v12 ^ 0x71D1E15F);
  LODWORD(STACK[0x4E78]) = v7 & (v9 ^ 0x5B5C29E7);
  return (*(STACK[0x57D8] + 8 * a6))(STACK[0x53A8], a2, 2221615922, 2319895244, STACK[0x5108]);
}

uint64_t sub_100C23650(uint64_t a1, int a2, unsigned int a3, int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x4B70]) = LODWORD(STACK[0x3214]) | LODWORD(STACK[0x321C]);
  LODWORD(STACK[0x4E68]) = LODWORD(STACK[0x3200]) | LODWORD(STACK[0x3210]);
  LODWORD(STACK[0x4E50]) = a5 & (a8 ^ 0xE2507FC9);
  LODWORD(STACK[0x55A0]) = ((((v10 + a3 + 1635) | 0x2011) + 1859731929) ^ v16) & STACK[0x31E0];
  v19 = STACK[0x3170];
  LODWORD(STACK[0x4E38]) = STACK[0x3180] & (LODWORD(STACK[0x3170]) ^ 0x94275270);
  LODWORD(STACK[0x4DE0]) = v17 & (LODWORD(STACK[0x4B60]) ^ 0x694D28A);
  LODWORD(STACK[0x4E28]) = STACK[0x4B58] & (v11 ^ 0xD2C0AA54);
  LODWORD(STACK[0x4DC0]) = STACK[0x3168] & (LODWORD(STACK[0x4B68]) ^ 0xAA477F5B);
  LODWORD(STACK[0x4DE8]) = v18 & (v15 ^ 0xA53B0593);
  LODWORD(STACK[0x4BA0]) = STACK[0x4DA0] & (LODWORD(STACK[0x4DA8]) ^ 0xBC85F047);
  LODWORD(STACK[0x4D58]) &= v19 ^ 0xF124F2A9;
  LODWORD(STACK[0x4B88]) = v13 & (v9 ^ 0x13A9370C);
  LODWORD(STACK[0x4DD8]) &= LODWORD(STACK[0x4D98]) ^ 0x92DC38FB;
  LODWORD(STACK[0x4B80]) = STACK[0x4E00] & (v12 ^ 0xF824FC32);
  LODWORD(STACK[0x4C68]) = STACK[0x4DD0] & (LODWORD(STACK[0x3190]) ^ 0xBB044DDB);
  LODWORD(STACK[0x4B60]) = STACK[0x3150] & (LODWORD(STACK[0x3158]) ^ 0xB5F7FAC0);
  LODWORD(STACK[0x4E00]) = a7 & (a2 ^ 0x8B45F5CA);
  LODWORD(STACK[0x4E60]) = a4 & (v14 ^ 0xAEBE7422) | a6;
  LODWORD(STACK[0x4B90]) = v8 & (a8 ^ 0xA284CBC6);
  v20 = *STACK[0x4B48];
  v21 = v20 & 0xFE ^ 0xD;
  v22 = 2 * (((4 * (((v20 & 6) >> 1) & 3)) | 0x62) & (v20 ^ 0x64) ^ (v20 & 6 | 1));
  HIDWORD(v23) = ((((2 * v20) | (4 * v20) | (8 * v20) & (16 * v20) & (32 * (v22 & 4 | v20 & ~v22))) ^ ~v20) >> 7) & 1;
  LODWORD(v23) = ((2 * v20) ^ (4 * ((v20 ^ 0x24) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ 0xFC) << 24;
  LOBYTE(v21) = *STACK[0x5348];
  v24 = *STACK[0x5108];
  v25 = v24 & 0x22222222 ^ 0x27;
  v26 = v21 & 0x86 | 0x51;
  v27 = *STACK[0x5280];
  LOBYTE(v20) = v27 & 0x3A ^ 0x2B;
  v28 = v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * (v20 ^ v27 & 0x1E)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  v29 = *STACK[0x57C0];
  LOBYTE(v20) = v29 & 0xB8 ^ 0x6A;
  v30 = *STACK[0x4B10];
  v31 = v30 & 0x2A ^ 0x23;
  v32 = (((v29 ^ (2 * ((v29 ^ 0x64) & (2 * ((v29 ^ 0x64) & (2 * ((v29 ^ 0x64) & (2 * ((v29 ^ 0x64) & (2 * ((v29 ^ 0x64) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xB8) << 16) | (((v30 ^ (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * (((2 * (v31 ^ v30 & 0x4E)) & 0x44 | v31) ^ (2 * (v31 ^ v30 & 0x4E)) & v30)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x2A) << 8);
  v33 = *STACK[0x52E8];
  v34 = v33 & 0x6E ^ 0xC5;
  v35 = ((v33 ^ (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x44) & (2 * (v34 ^ v33 & 0xA)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x54C1FC) & ~v32 | v32 & 0xAB3E00;
  LOBYTE(v32) = *STACK[0x5080];
  v36 = v32 & 0x28 ^ 0xA2;
  v37 = v32 ^ (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x44) & (2 * v36) | v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36));
  LOBYTE(v32) = *STACK[0x5310];
  v38 = v32 & 0xA4 ^ 0x60;
  v39 = *STACK[0x50B8];
  v40 = v39 & 0x4E ^ 0x75;
  v41 = v39 ^ 0x64;
  v42 = (((v32 ^ (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xA4) << 16) | (((v39 ^ (2 * (v41 & (2 * (v41 & (2 * (v41 & (2 * (v41 & (2 * (v41 & (2 * (v40 ^ v39 & 0xAA)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0x4E) << 8);
  v43 = *STACK[0x5360];
  v44 = v43 & 0xFFFFFFE8 ^ 0xFFFFFF82;
  LODWORD(STACK[0x321C]) = v43 ^ (2 * ((v43 ^ 0x64) & (2 * ((v43 ^ 0x64) & (2 * ((v43 ^ 0x64) & (2 * ((v43 ^ 0x64) & (2 * ((v43 ^ 0x44) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44));
  v45 = *STACK[0x55F0];
  LOBYTE(v44) = v45 & 0xD4 ^ 0xB8;
  v46 = ((v45 ^ (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * ((v45 ^ 0x64) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44))) ^ 0x127D76) & ~v42 | v42 & 0xED8200;
  LODWORD(STACK[0x4DD0]) = LODWORD(STACK[0x4BA8]);
  v47 = ((((v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & 0x22 ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x86) << 8) | ((v24 ^ (2 * ((v24 ^ 0x64) & (2 * ((v24 ^ 0x64) & (2 * ((v24 ^ 0x64) & (2 * ((v24 ^ 0x64) & (2 * ((v24 ^ 0x44) & (2 * ((v24 ^ 0x44) & 6 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ 0x22222222) << 16) | (v23 >> 25)) << 8;
  LODWORD(STACK[0x4BA8]) = v28;
  LODWORD(STACK[0x4DA0]) = v47 & 0xCC60DE00;
  LODWORD(STACK[0x3214]) = ~v47;
  LODWORD(STACK[0x3210]) = v37;
  LODWORD(STACK[0x4B58]) = (v35 << 8) & 0x28FBE600;
  LODWORD(STACK[0x31F8]) = (v35 << 8) ^ 0x830409FF;
  LODWORD(STACK[0x3200]) = (v46 << 8) ^ 0xA00201FF;
  LODWORD(STACK[0x4DA8]) = (v46 << 8) & 0x5F98FE00;
  return (*(STACK[0x57D8] + 8 * ((21282 * (a3 > 0xCBE67473)) ^ (a3 - 1315323684))))();
}

uint64_t sub_100C23EB0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3 + v3 - 1325;
  v6 = (*(v4 + 8 * (v3 ^ 0xB7D0FFDC)))(STACK[0xC18] - 0x683CBC57EAB92A3ELL);
  return (*(v4 + 8 * ((210 * (STACK[0xD70] != 0)) ^ v5)))(v6, 1211082140);
}

uint64_t sub_100C23F68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = *(v10 + 8 * ((4051 * (v6 < ((v7 - 19412) & 0x96CB7533 ^ 0x96CB7121))) ^ v7));
  *&STACK[0x6C0] = vdupq_n_s64(v9);
  *&STACK[0x6B0] = vdupq_n_s64(a6);
  *&STACK[0x6A0] = vdupq_n_s64(v8);
  STACK[0x4B0] = a4;
  return v11();
}

uint64_t sub_100C24074(uint64_t a1)
{
  *v1 = 5;
  *(v1 + 4) = *(a1 + 4);
  *(v1 + 5) = *(a1 + 5);
  return (*(v3 + 8 * ((v2 ^ 0x3C32) + v2)))();
}

uint64_t sub_100C242C0()
{
  v3 = (*(v2 + 8 * (v0 + 7162)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100C242FC()
{
  *(v2 - 232) = -395422282 - 16169987 * (((v2 - 240) & 0x6DEB2DA0 | ~((v2 - 240) | 0x6DEB2DA0)) ^ 0xC79AE777) + v0;
  v3 = (*(v1 + 8 * (v0 ^ 0xB7D0FFF4)))(v2 - 240);
  return (*(v1 + 8 * (v0 + 1211085822)))(v3);
}

uint64_t sub_100C243CC()
{
  v3 = STACK[0x3F0];
  *(v2 - 240) = STACK[0x1538] ^ STACK[0x3F0];
  *(v2 - 208) = ((v0 + 1211071600) ^ 0x21796C61) + v3;
  *(v2 - 232) = ((v0 + 1211071600) ^ 0x217963F7) - v3;
  *(v2 - 228) = v3 + v0 - 1632379223;
  *(v2 - 216) = v3;
  *(v2 - 224) = v3;
  *(v2 - 220) = (v0 + 1772677247) ^ v3;
  v4 = (*(v1 + 8 * (v0 + 1211103395)))(v2 - 240);
  return (*(v1 + 8 * *(v2 - 204)))(v4);
}

uint64_t sub_100C24678(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v24 = (v12 + v10);
  v25 = (v16 & a6 ^ v13) & (v12 + v10);
  v26 = *(a8 + (((v25 ^ 0x46E4A948) - 1293033393 + ((2 * v25) & 0x8DC95290)) & a2));
  v27 = __ROR8__(v25, 8);
  v28 = ((a5 & (2 * (v27 + v26))) - (v27 + v26) + v9) ^ v8;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((v19 | (2 * (v30 + v29))) - (v30 + v29) + v20) ^ v21;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = ((v22 & (2 * (v33 + v32))) - (v33 + v32) + v23) ^ v14;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a3;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a1;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = ((a7 & (2 * (v40 + v39))) - (v40 + v39) + 0x51177C36D3A19969) ^ v15;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x7B1A9CEF1B20A488) + v17) ^ v18;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  *v24 = ((v46 + v45 - ((2 * (v46 + v45)) & 0xBC352CE833068EE6) - 0x21E5698BE67CB88DLL) ^ 0x1FD95EA6BD460F5BLL) >> (8 * (v24 & 7u));
  return (*(a4 + 8 * ((v11 - 503385625) ^ 0x1B48 ^ (43 * (((v10 + 1 - (v11 - 503385625)) | ((v11 - 503385625) - (v10 + 1))) >= 0)))))();
}

uint64_t sub_100C24920@<X0>(unsigned __int8 a1@<W8>)
{
  v7 = (a1 ^ v2) & 1;
  v8 = 1534937323 * (v3 ^ 0xCD7888C2C6EEFB47);
  *(v6 - 216) = STACK[0x288] + v8 - v1 + v7;
  *(v6 - 240) = v8;
  v9 = STACK[0x294];
  *(v6 - 208) = v8 + LODWORD(STACK[0x294]) - 388;
  *(v6 - 232) = LODWORD(STACK[0x290]) - v8;
  *(v6 - 228) = v8 + v4 - 1632379223;
  *(v6 - 224) = v8;
  *(v6 - 220) = v9 ^ v8;
  v10 = (*(v5 + 8 * (v4 + 1211103395)))(v6 - 240);
  return (*(v5 + 8 * *(v6 - 204)))(v10);
}

uint64_t sub_100C249CC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, unsigned int a8)
{
  v14 = (((LODWORD(STACK[0x12C0]) ^ 0xEA29E0DB) + 366354213) ^ ((LODWORD(STACK[0x12C0]) ^ a3) + a4) ^ (((v9 - 1211080834 + v11) & v13) + a6 + (LODWORD(STACK[0x12C0]) ^ a5))) + a7;
  v15 = v14 < 0x4599FC40;
  v16 = v8 + 1167719488 < v14;
  if (v8 > a8 != v15)
  {
    v16 = v15;
  }

  return (*(v12 + 8 * ((v16 * v10) ^ v9)))();
}

uint64_t sub_100C24BBC@<X0>(char a1@<W5>, unsigned int a2@<W8>)
{
  v9 = *(v3 + a2 + 72);
  v10 = ((2 * a2) & 0xDD5FFFD0) + (a2 ^ 0x6EAFFFEA) + v2;
  *(v5 + v10) = (a1 ^ HIBYTE(v9)) - 2 * ((a1 ^ HIBYTE(v9)) & 0xF) + 15;
  *(v5 + v10 + 1) = (v6 ^ BYTE2(v9)) + (~(2 * (v6 ^ BYTE2(v9))) | 0xE1) + 16;
  *(v5 + v10 + 2) = (v7 ^ BYTE1(v9)) - 2 * ((v7 ^ BYTE1(v9)) & 0xF) + 15;
  *(v5 + v10 + 3) = v9 ^ 0x6A;
  return (*(v8 + 8 * ((1354 * (a2 + 4 < *(v3 + 104))) ^ (v4 + 1694))))();
}

uint64_t sub_100C24C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>, int64x2_t a4@<Q0>)
{
  v22.i64[0] = a2 + v6 + (v8 ^ v10);
  v22.i64[1] = a2 + v6 + 6;
  v23 = v22;
  *&STACK[0x4B0] = v22;
  v24.i64[0] = a2 + v6 + 9;
  v24.i64[1] = a2 + v6 + 8;
  v25.i64[0] = a2 + v6 + 5;
  v26.i64[0] = a2 + v6 + 3;
  v25.i64[1] = a2 + v6 + 4;
  v26.i64[1] = a2 + v6 + 2;
  v22.i64[0] = a2 + v6 + 1;
  v22.i64[1] = a2 + v6;
  *&STACK[0x690] = v22;
  v22.i64[0] = a2 + v6 - 1;
  v22.i64[1] = a2 + v6 - 2;
  *&STACK[0x680] = v22;
  v27 = vandq_s8(v26, *&STACK[0x850]);
  v28 = vandq_s8(v25, *&STACK[0x850]);
  v29 = vandq_s8(v24, *&STACK[0x850]);
  v30 = vandq_s8(v23, *&STACK[0x850]);
  v31 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v32 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v35 = *&STACK[0x540];
  v36 = vaddq_s64(vorrq_s8(vsubq_s64(v13, v34), v14), vorrq_s8(vaddq_s64(v34, v15), *&STACK[0x540]));
  v37 = vaddq_s64(vorrq_s8(vsubq_s64(v13, v33), v14), vorrq_s8(vaddq_s64(v33, v15), *&STACK[0x540]));
  v38 = vaddq_s64(vorrq_s8(vsubq_s64(v13, v32), v14), vorrq_s8(vaddq_s64(v32, v15), *&STACK[0x540]));
  *&STACK[0x4A0] = vaddq_s64(vorrq_s8(vsubq_s64(v13, v31), v14), vorrq_s8(vaddq_s64(v31, v15), *&STACK[0x540]));
  v39 = vdupq_n_s64(a3);
  v40 = vsubq_s64(v39, v37);
  v41 = vsubq_s64(v39, v36);
  v42 = veorq_s8(v41, v17);
  v43 = veorq_s8(v40, v17);
  v44 = veorq_s8(v40, v12);
  v45 = veorq_s8(v41, v12);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v44);
  v48 = v21;
  v49 = *&STACK[0x440];
  v50 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v46, v18), vorrq_s8(v46, *&STACK[0x440])), *&STACK[0x440]), v19);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v47, v18), vorrq_s8(v47, *&STACK[0x440])), *&STACK[0x440]), v19);
  v52 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v53 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v54 = veorq_s8(v50, v52);
  v55 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v54);
  v57 = vaddq_s64(v55, v53);
  v58 = v20;
  v59 = veorq_s8(vaddq_s64(vsubq_s64(v57, vandq_s8(vaddq_s64(v57, v57), *&STACK[0x4D0])), *&STACK[0x510]), v20);
  v60 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(v56, vandq_s8(vaddq_s64(v56, v56), *&STACK[0x4D0])), *&STACK[0x510]), v20);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v63 = veorq_s8(v59, v60);
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = *&STACK[0x5C0];
  v67 = veorq_s8(vaddq_s64(v64, v62), *&STACK[0x5C0]);
  v68 = veorq_s8(v65, *&STACK[0x5C0]);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v69);
  v73 = *&STACK[0x530];
  v74 = *&STACK[0x520];
  v75 = *&STACK[0x500];
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), *&STACK[0x530]), v72), *&STACK[0x520]), *&STACK[0x500]);
  v77 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), *&STACK[0x530]), v71), *&STACK[0x520]), *&STACK[0x500]);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v80 = veorq_s8(v76, v77);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v80);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v79);
  v83 = *&STACK[0x4F0];
  v84 = veorq_s8(vaddq_s64(vsubq_s64(v82, vandq_s8(vaddq_s64(v82, v82), *&STACK[0x4F0])), a4), v16);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(v81, vandq_s8(vaddq_s64(v81, v81), *&STACK[0x4F0])), a4), v16);
  v88 = veorq_s8(v87, v86);
  v89 = veorq_s8(v84, v85);
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v89);
  v92 = *&STACK[0x590];
  v93 = veorq_s8(vaddq_s64(v90, v88), *&STACK[0x590]);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v95 = veorq_s8(v91, *&STACK[0x590]);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v97 = vdupq_n_s64(v4);
  v98.i64[0] = a2 + v6 - 3;
  v98.i64[1] = a2 + v6 - 4;
  v99 = vsubq_s64(v39, v38);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), veorq_s8(v93, v94));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v211.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, *&STACK[0x8A0]), vorrq_s8(v101, v48)), v48), *&STACK[0x6C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v97)));
  v211.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v100, *&STACK[0x8A0]), vorrq_s8(v100, v48)), v48), *&STACK[0x6C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v97)));
  v102 = veorq_s8(v99, v17);
  v103 = veorq_s8(v99, v12);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v104, v18), vorrq_s8(v104, *&STACK[0x440])), *&STACK[0x440]), v19);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = *&STACK[0x4D0];
  v109 = *&STACK[0x510];
  v110 = veorq_s8(vaddq_s64(vsubq_s64(v107, vandq_s8(vaddq_s64(v107, v107), *&STACK[0x4D0])), *&STACK[0x510]), v58);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), *&STACK[0x5C0]);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), *&STACK[0x530]), v114), *&STACK[0x520]), *&STACK[0x500]);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(v117, vandq_s8(vaddq_s64(v117, v117), *&STACK[0x4F0])), *&STACK[0x880]), *&STACK[0x890]);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), *&STACK[0x590]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v119.i64[0] = a2 + v6 - 5;
  v119.i64[1] = a2 + v6 - 6;
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = vandq_s8(v119, *&STACK[0x850]);
  v124 = vsubq_s64(v39, *&STACK[0x4A0]);
  v211.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v122, *&STACK[0x8A0]), vorrq_s8(v122, v48)), v48), *&STACK[0x6C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v97)));
  v125 = veorq_s8(v124, v17);
  v126 = veorq_s8(v124, v12);
  v127 = v12;
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, v18), vorrq_s8(v128, *&STACK[0x440])), *&STACK[0x440]), v19);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(v131, vandq_s8(vaddq_s64(v131, v131), *&STACK[0x4D0])), *&STACK[0x510]), v58);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), *&STACK[0x5C0]);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), *&STACK[0x530]), v136), *&STACK[0x520]), *&STACK[0x500]);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(v139, vandq_s8(vaddq_s64(v139, v139), *&STACK[0x4F0])), *&STACK[0x880]), *&STACK[0x890]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), *&STACK[0x590]);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v145 = vandq_s8(v98, *&STACK[0x850]);
  v146 = vaddq_s64(v144, v143);
  v147 = vandq_s8(*&STACK[0x680], *&STACK[0x850]);
  v211.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v146, *&STACK[0x8A0]), vorrq_s8(v146, v48)), v48), *&STACK[0x6C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x4B0], 3uLL), v97)));
  v148 = vandq_s8(*&STACK[0x690], *&STACK[0x850]);
  v149 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v153 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x6A0], v152), *&STACK[0x6B0]), vorrq_s8(vaddq_s64(v152, *&STACK[0x4E0]), v35));
  v154 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x6A0], v151), *&STACK[0x6B0]), vorrq_s8(vaddq_s64(v151, *&STACK[0x4E0]), v35));
  v155 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x6A0], v150), *&STACK[0x6B0]), vorrq_s8(vaddq_s64(v150, *&STACK[0x4E0]), v35));
  *&STACK[0x4B0] = vsubq_s64(v39, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x6A0], v149), *&STACK[0x6B0]), vorrq_s8(vaddq_s64(v149, *&STACK[0x4E0]), v35)));
  v156 = vsubq_s64(v39, v155);
  v157 = vsubq_s64(v39, v154);
  v158 = vsubq_s64(v39, v153);
  v149.i64[0] = vqtbl4q_s8(v211, *&STACK[0x840]).u64[0];
  v211.val[0] = veorq_s8(v158, v17);
  v211.val[1] = veorq_s8(v157, v17);
  v211.val[2] = veorq_s8(v157, v127);
  v211.val[3] = veorq_s8(v158, v127);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL), v211.val[3]);
  v211.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v211.val[2]);
  v211.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v211.val[0], v18), vorrq_s8(v211.val[0], v49)), v49), v19);
  v211.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v211.val[1], v18), vorrq_s8(v211.val[1], v49)), v49), v19);
  v211.val[2] = veorq_s8(v211.val[1], vsraq_n_u64(vshlq_n_s64(v211.val[2], 3uLL), v211.val[2], 0x3DuLL));
  v211.val[3] = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v211.val[3], 3uLL), v211.val[3], 0x3DuLL));
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL), v211.val[3]);
  v211.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v211.val[2]);
  v211.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v211.val[1], vandq_s8(vaddq_s64(v211.val[1], v211.val[1]), v108)), v109), v58);
  v159 = vsraq_n_u64(vshlq_n_s64(v211.val[2], 3uLL), v211.val[2], 0x3DuLL);
  v211.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v211.val[0], vandq_s8(vaddq_s64(v211.val[0], v211.val[0]), v108)), v109), v58);
  v211.val[2] = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v211.val[3], 3uLL), v211.val[3], 0x3DuLL));
  v211.val[3] = veorq_s8(v211.val[1], v159);
  v160 = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v211.val[3]);
  v211.val[1] = veorq_s8(vaddq_s64(v160, v211.val[2]), v66);
  v211.val[0] = veorq_s8(v211.val[0], v66);
  v161 = v66;
  v162 = vsraq_n_u64(vshlq_n_s64(v211.val[2], 3uLL), v211.val[2], 0x3DuLL);
  v211.val[2] = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v211.val[3], 3uLL), v211.val[3], 0x3DuLL));
  v211.val[3] = veorq_s8(v211.val[1], v162);
  v163 = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v211.val[3]);
  v211.val[1] = vaddq_s64(v163, v211.val[2]);
  v211.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v211.val[1], v211.val[1]), v73), v211.val[1]), v74), v75);
  v164 = vsraq_n_u64(vshlq_n_s64(v211.val[2], 3uLL), v211.val[2], 0x3DuLL);
  v211.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v211.val[0], v211.val[0]), v73), v211.val[0]), v74), v75);
  v211.val[2] = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v211.val[3], 3uLL), v211.val[3], 0x3DuLL));
  v211.val[3] = veorq_s8(v211.val[1], v164);
  v165 = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v211.val[3]);
  v211.val[1] = vaddq_s64(v165, v211.val[2]);
  v211.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v211.val[1], vandq_s8(vaddq_s64(v211.val[1], v211.val[1]), v83)), *&STACK[0x880]), *&STACK[0x890]);
  v211.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v211.val[0], vandq_s8(vaddq_s64(v211.val[0], v211.val[0]), v83)), *&STACK[0x880]), *&STACK[0x890]);
  v166 = vsraq_n_u64(vshlq_n_s64(v211.val[2], 3uLL), v211.val[2], 0x3DuLL);
  v211.val[2] = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v211.val[3], 3uLL), v211.val[3], 0x3DuLL));
  v211.val[3] = veorq_s8(v211.val[1], v166);
  v167 = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v211.val[3]);
  v211.val[1] = veorq_s8(vaddq_s64(v167, v211.val[2]), v92);
  v168 = vsraq_n_u64(vshlq_n_s64(v211.val[2], 3uLL), v211.val[2], 0x3DuLL);
  v211.val[0] = veorq_s8(v211.val[0], v92);
  v211.val[2] = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v211.val[3], 3uLL), v211.val[3], 0x3DuLL));
  v211.val[3] = veorq_s8(v211.val[1], v168);
  v169 = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v211.val[3]);
  v211.val[1] = vaddq_s64(v169, v211.val[2]);
  v211.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v211.val[1], *&STACK[0x8A0]), vorrq_s8(v211.val[1], v48)), v48), *&STACK[0x6C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v119, 3uLL), v97)));
  v211.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v211.val[0], *&STACK[0x8A0]), vorrq_s8(v211.val[0], v48)), v48), *&STACK[0x6C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v98, 3uLL), v97)));
  v170 = veorq_s8(v156, v17);
  v171 = veorq_s8(v156, v127);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, v18), vorrq_s8(v172, v49)), v49), v19);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(v175, vandq_s8(vaddq_s64(v175, v175), v108)), v109), v58);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v161);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v73), v180), v74), v75);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(v183, vandq_s8(vaddq_s64(v183, v183), v83)), *&STACK[0x880]), *&STACK[0x890]);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v92);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL)));
  v211.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v187, *&STACK[0x8A0]), vorrq_s8(v187, v48)), v48), *&STACK[0x6C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x680], 3uLL), v97)));
  v188 = veorq_s8(*&STACK[0x4B0], v17);
  v189 = veorq_s8(*&STACK[0x4B0], v127);
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190, v18), vorrq_s8(v190, v49)), v49), v19);
  v192 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v194 = veorq_s8(v191, v192);
  v195 = vaddq_s64(v193, v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(v195, vandq_s8(vaddq_s64(v195, v195), v108)), v109), v58);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v161);
  v199 = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v200 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v201 = veorq_s8(v198, v199);
  v202 = vaddq_s64(v200, v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202, v202), v73), v202), v74), v75);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(v205, vandq_s8(vaddq_s64(v205, v205), v83)), *&STACK[0x880]), *&STACK[0x890]);
  v207 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207), v92);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL)));
  v211.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v209, *&STACK[0x8A0]), vorrq_s8(v209, v48)), v48), *&STACK[0x6C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x690], 3uLL), v97)));
  v149.i64[1] = vqtbl4q_s8(v211, *&STACK[0x840]).u64[0];
  v211.val[0] = vrev64q_s8(*(a1 + v6));
  v211.val[1].i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v211.val[1].i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v211.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v211.val[0], v211.val[0], 8uLL), v211.val[1]), v149));
  *v119.i64[1] = vextq_s8(v211.val[0], v211.val[0], 8uLL);
  return (*(v5 + 8 * (((v9 == 0) * v11) ^ v7)))(a1 - 16, a2 - 16, *&STACK[0x880]);
}

uint64_t sub_100C259FC()
{
  v2 = *(v1 + 8 * v0);
  LODWORD(STACK[0x890]) = -1076125807;
  return v2();
}

uint64_t sub_100C25A50()
{
  *v1 = 0x160D000000000004;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  LODWORD(STACK[0x90C]) = -143113071;
  LOBYTE(STACK[0x1377]) = v1 != 0;
  LODWORD(STACK[0xF0C]) = 0;
  v3 = &STACK[0x1D80] + STACK[0xAB0];
  STACK[0xAB0] += (v2 + 3055) ^ 0x2455;
  strcpy(v3, "com_apple_driver_FairPlayIOKit");
  v3[31] = 0;
  v3[32] = 0;
  return (*(v0 + 8 * ((8987 * (**(&off_101353600 + (v2 ^ 0x1C97)) == 0)) ^ v2)))();
}

uint64_t sub_100C25BAC()
{
  v2 = STACK[0xAA8] - 0x79CEC8CF5A6FCE82;
  v3 = STACK[0x14A8];
  v4 = STACK[0x1750];
  STACK[0xAB0] += 32;
  STACK[0x1240] = v3;
  STACK[0x15E8] = v4;
  v5 = (*(v1 + 8 * (v0 + 18987)))();
  STACK[0x10D0] = 0;
  if (v2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = !v6 && v4 != 0;
  return (*(v1 + 8 * ((v8 * ((92 * (v0 ^ 0x3307) + 1087310523) & 0xBF30BFFF ^ 0x3AC6)) ^ v0)))(v5, 1211082140);
}

uint64_t sub_100C25CC8@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W6>, int a4@<W8>)
{
  STACK[0x16F8] = *(v6 + 8 * a1);
  v8 = *(a2 - 0x1883660EE814440ELL) - 1595001287;
  v9 = *(a2 + v7) - 1595001283;
  v10 = (v9 < (a3 ^ 0x1E37843Fu)) ^ (v8 < ((a3 + a4) & v4 ^ 0x1E378464u));
  v11 = v8 < v9;
  if (v10)
  {
    v12 = v9 < (a3 ^ 0x1E37843Fu);
  }

  else
  {
    v12 = v11;
  }

  return (*(v6 + 8 * ((v12 * v5) ^ a3)))();
}

uint64_t sub_100C25DA0()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x5EFD)))();
  STACK[0xC08] = 0;
  return (*(v1 + 8 * v0))(v2, 1211082140);
}

uint64_t sub_100C25DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x3B08]) = v6 + 14006;
  v9 = *(v7 + 8 * ((((v6 ^ 0x305D) + v6 + 14006) * (v8 & 1)) ^ v6));
  STACK[0x3788] = LODWORD(STACK[0x3D68]);
  LODWORD(STACK[0x1C28]) = STACK[0x32E8];
  v10 = LODWORD(STACK[0x1BC8]);
  LODWORD(STACK[0x183C]) = a6;
  return v9(v10, a2, a3, a4, 17);
}

uint64_t sub_100C26354@<X0>(int a1@<W8>)
{
  *(STACK[0x39B8] + 4) = ((v1 - 2314) ^ 0x2955) + a1;
  LODWORD(STACK[0x3EC4]) = *(STACK[0x3C48] + 84);
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100C263D8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x1B60] = (((v2 ^ 0xE58785B8B0A594B2) + 0x1A787A474F5A6B4ELL) ^ ((v2 ^ 0xC69BF32B7EB72733) + 0x39640CD48148D8CDLL) ^ (((((v1 - 1784375561) & 0x6A5B7F6C) + 0x231C76931C0DBDADLL) ^ v2) - 0x231C76931C0E3315)) + (((v1 + 595567116) | 0x94508281) ^ 0xC7A1F51BD97D899);
  *(a1 + 16) = (((v2 ^ 0x8A3D7D96) + 1975681642) ^ ((v2 ^ 0x4F3314A6) - 1328747686) ^ ((v2 ^ 0x1712E9A4) - 387115428)) - 769884002;
  v5 = (*(v3 + 8 * (v1 ^ 0x233A)))();
  *(a1 + 24) = v5;
  return (*(v3 + 8 * (((4 * (v5 != 0)) | (16 * (v5 != 0))) ^ v1)))();
}

uint64_t sub_100C26554()
{
  v2 = (*(v1 + 8 * (v0 + 366)))(LODWORD(STACK[0x1484]) ^ 0xD21C8094);
  STACK[0x1A38] = v2;
  if (v2)
  {
    v3 = -143113071;
  }

  else
  {
    v3 = -143156080;
  }

  LODWORD(STACK[0x1A44]) = v3;
  return (*(v1 + 8 * (((((v2 == 0) ^ (87 * (v0 ^ 0xD2) + 1)) & 1) * (((v0 - 31157) | 0x6C0) - 2007)) ^ v0)))();
}

uint64_t sub_100C26654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = STACK[0x640] + 4 * ((v9 + ((v8 - 1071661385) & 0x3FE05FE9 ^ 0x1D86u) * v7) % 0x1D48);
  v14 = *v12;
  v15 = *STACK[0x660];
  v16 = (v13 + *(v15 + (v14 & STACK[0x658])) + 673210726);
  v17 = *v10 ^ v11;
  v18 = (((1645 * v7 + 3841075) % 0xA88u) ^ 0xDDBFF6BB7F7EE7CDLL) + STACK[0x638] + ((2 * ((1645 * v7 + 3841075) % 0xA88u)) & 0xF9A);
  v19 = (v18 - 2139023309 + *(v15 + (v14 & STACK[0x648])) + a7);
  *(v18 - 0x23634017B89C01E2) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v19 & v17)) ^ (76 * (v18 + 51)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v19 + 2) & v17)) ^ 0xB9 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v16 & v17)) ^ *(v13 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v16 + 2) & v17)) ^ (-81 * v13);
  return (*(STACK[0x668] + 8 * (v8 ^ 0x593E ^ (15647 * (((v7 + 1 - v8) | (v8 - (v7 + 1))) >= 0)))))();
}

uint64_t sub_100C26818(uint64_t a1, int a2)
{
  v4 = a2 + v2 + 657;
  v5 = (*(v3 + 8 * (v2 + 1211103420)))();
  return (*(v3 + 8 * v4))(v5, 1211082140);
}

uint64_t sub_100C268F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v9 - 224);
  v12 = v6;
  (*(v8 + 8 * (v11 ^ 0x6E6E)))();
  (*(v8 + 8 * (v11 ^ 0x6E6E)))(v12);
  (*(v8 + 8 * (v11 ^ 0x6E6E)))(v7);
  (*(v8 + 8 * (v11 ^ 0x6E6E)))(a5);
  (*(v8 + 8 * (v11 ^ 0x6E6E)))(*(v9 - 240) - 0x71E857A90854544FLL);
  (*(v8 + 8 * (v11 ^ 0x6E6E)))(v10);
  (*(v8 + 8 * (v11 ^ 0x6E6E)))(a6);
  (*(v8 + 8 * (v11 ^ 0x6E6E)))(a4);
  return (*(v8 + 8 * v11))(*(v9 - 248));
}

uint64_t sub_100C269B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, int8x16_t a5@<Q4>, int64x2_t a6@<Q5>, int8x16_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v26.i64[0] = a1 + a3 + 29;
  v26.i64[1] = a1 + a3 + 28;
  v27.i64[0] = a1 + a3 + 27;
  v27.i64[1] = a1 + a3 + 26;
  v28.i64[0] = a1 + a3 + 25;
  v28.i64[1] = a1 + a3 + 24;
  v29.i64[0] = a1 + a3 + 23;
  v29.i64[1] = a1 + a3 + 22;
  v30.i64[0] = a1 + a3 + 31;
  v31.i64[0] = a1 + a3 + 21;
  v30.i64[1] = a2 + a3 + ((v12 + v9 - 2816) | v13) + 16;
  v31.i64[1] = a1 + a3 + 20;
  v32 = vandq_s8(v28, v15);
  v33 = vandq_s8(v27, v15);
  v34 = vandq_s8(v26, v15);
  v35 = vandq_s8(v30, v15);
  v36 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v40 = vsubq_s64(v36, vandq_s8(vaddq_s64(vaddq_s64(v36, v36), *&STACK[0x890]), a5));
  v41 = vsubq_s64(v38, vandq_s8(vaddq_s64(vaddq_s64(v38, v38), *&STACK[0x890]), a5));
  v32.i64[0] = a1 + a3 + 19;
  v42 = vaddq_s64(vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), *&STACK[0x890]), a5)), a6);
  v43 = vaddq_s64(vsubq_s64(v37, vandq_s8(vaddq_s64(vaddq_s64(v37, v37), *&STACK[0x890]), a5)), a6);
  v44 = veorq_s8(v43, a7);
  v45 = veorq_s8(v42, a7);
  v46 = veorq_s8(v42, a8);
  v47 = veorq_s8(v43, a8);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), *&STACK[0x510]);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), *&STACK[0x510]);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v51 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v52 = veorq_s8(v48, v50);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v52);
  v55 = veorq_s8(vaddq_s64(v53, v51), v17);
  v56 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v57 = veorq_s8(v54, v17);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v55, v56);
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), v18);
  v63 = veorq_s8(v61, v18);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), v19), v63), v20), v21);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v62, v62), v19), v62), v20), v21);
  v66 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v68 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v66), v22);
  v69 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67), v22);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = veorq_s8(vaddq_s64(v73, v71), v16);
  v76 = veorq_s8(v74, v16);
  v77 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = veorq_s8(vaddq_s64(v80, v78), *&STACK[0x480]);
  v83 = veorq_s8(v81, *&STACK[0x480]);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vdupq_n_s64(v8);
  v88 = vaddq_s64(v40, a6);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v90 = vaddq_s64(v86, v84);
  v183.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), v23), v89), v24), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v87)));
  v183.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v90, v90), v23), v90), v24), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v87)));
  v91 = veorq_s8(v88, a7);
  v92 = veorq_s8(v88, a8);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), *&STACK[0x510]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v17);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v18);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), v19), v97), v20), v21);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v22);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v16);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), *&STACK[0x480]);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v104.i64[0] = a1 + a3 + 17;
  v32.i64[1] = a1 + a3 + 18;
  v104.i64[1] = a1 + a3 + 16;
  v107 = vaddq_s64(v106, v105);
  v108 = vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v23), v107);
  v109 = vandq_s8(v104, *&STACK[0x850]);
  v110 = vaddq_s64(v41, a6);
  v183.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v108, v24), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v87)));
  v111 = veorq_s8(v110, a7);
  v112 = veorq_s8(v110, a8);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), *&STACK[0x510]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v17);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v18);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v117, v117), v19), v117), v20), v21);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v22);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v16);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), *&STACK[0x480]);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v127 = vandq_s8(v32, *&STACK[0x850]);
  v128 = vaddq_s64(v126, v125);
  v129 = vandq_s8(v31, *&STACK[0x850]);
  v183.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), v23), v128), v24), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v87)));
  v130 = vandq_s8(v29, *&STACK[0x850]);
  v131 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v135 = vsubq_s64(v131, vandq_s8(vaddq_s64(vaddq_s64(v131, v131), *&STACK[0x890]), a5));
  v136 = vsubq_s64(v132, vandq_s8(vaddq_s64(vaddq_s64(v132, v132), *&STACK[0x890]), a5));
  v137 = vaddq_s64(vsubq_s64(v134, vandq_s8(vaddq_s64(vaddq_s64(v134, v134), *&STACK[0x890]), a5)), a6);
  v138 = vaddq_s64(vsubq_s64(v133, vandq_s8(vaddq_s64(vaddq_s64(v133, v133), *&STACK[0x890]), a5)), a6);
  v132.i64[0] = vqtbl4q_s8(v183, *&STACK[0x840]).u64[0];
  v183.val[0] = veorq_s8(v138, a7);
  v183.val[1] = veorq_s8(v137, a7);
  v139 = veorq_s8(v137, a8);
  v140 = veorq_s8(v138, a8);
  v183.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v139), *&STACK[0x510]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v183.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL), v140), *&STACK[0x510]);
  v141 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v142 = veorq_s8(v183.val[1], v183.val[2]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL);
  v183.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v142);
  v183.val[1] = veorq_s8(vaddq_s64(v183.val[2], v141), v17);
  v183.val[0] = veorq_s8(v183.val[0], v17);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v143 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v144 = veorq_s8(v183.val[1], v183.val[2]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL);
  v183.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v144);
  v183.val[1] = veorq_s8(vaddq_s64(v183.val[2], v143), v18);
  v183.val[0] = veorq_s8(v183.val[0], v18);
  v183.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183.val[0], v183.val[0]), v19), v183.val[0]), v20), v21);
  v183.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183.val[1], v183.val[1]), v19), v183.val[1]), v20), v21);
  v145 = veorq_s8(v183.val[1], vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v183.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v145), v22);
  v183.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL), v146), v22);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v147 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v148 = veorq_s8(v183.val[1], v183.val[2]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL);
  v183.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v148);
  v183.val[1] = veorq_s8(vaddq_s64(v183.val[2], v147), v16);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v183.val[0] = veorq_s8(v183.val[0], v16);
  v149 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v150 = veorq_s8(v183.val[1], v183.val[2]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL);
  v183.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v150);
  v183.val[1] = veorq_s8(vaddq_s64(v183.val[2], v149), *&STACK[0x480]);
  v183.val[0] = veorq_s8(v183.val[0], *&STACK[0x480]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v151 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v152 = veorq_s8(v183.val[1], v183.val[2]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL);
  v183.val[0] = vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL);
  v183.val[1] = vaddq_s64(v136, a6);
  v153 = vaddq_s64(v183.val[0], v152);
  v154 = vaddq_s64(v183.val[2], v151);
  v184.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), v23), v153), v24), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v104, 3uLL), v87)));
  v184.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v154, v154), v23), v154), v24), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v87)));
  v155 = veorq_s8(v183.val[1], a7);
  v183.val[0] = veorq_s8(v183.val[1], a8);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v183.val[0]), *&STACK[0x510]);
  v183.val[0] = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v183.val[0], 3uLL), v183.val[0], 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v183.val[0]), v17);
  v183.val[0] = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v183.val[0], 3uLL), v183.val[0], 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v183.val[0]), v18);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v158, v158), v19), v158), v20), v21);
  v183.val[0] = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v183.val[0], 3uLL), v183.val[0], 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v183.val[0]), v22);
  v183.val[0] = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v183.val[0], 3uLL), v183.val[0], 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v183.val[0]), v16);
  v183.val[0] = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v183.val[0], 3uLL), v183.val[0], 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v183.val[0]), *&STACK[0x480]);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v183.val[0], 3uLL), v183.val[0], 0x3DuLL)));
  v164 = vaddq_s64(v135, a6);
  v184.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), v23), v163), v24), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v87)));
  v165 = veorq_s8(v164, a7);
  v166 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v167 = veorq_s8(v164, a8);
  v168 = veorq_s8(vaddq_s64(v166, v167), *&STACK[0x510]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v17);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v18);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), v19), v172), v20), v21);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v22);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v16);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), *&STACK[0x480]);
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL)));
  v184.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v23), v180), v24), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v87)));
  v132.i64[1] = vqtbl4q_s8(v184, *&STACK[0x840]).u64[0];
  v181 = vrev64q_s8(v132);
  *(a1 + a3 + 16) = vextq_s8(v181, v181, 8uLL);
  return (*(v14 + 8 * (((v11 != a3) * a4) ^ (v10 + 1349))))();
}

uint64_t sub_100C27400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, uint64_t a18, int a19, int a20, char a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, int a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48, int a49, int a50, uint64_t a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  *(v60 - 228) = 0;
  v61 = (v59 - 4202) | 0x20;
  v459 = v58 - 1648798964;
  v62 = v58 - 1648798969;
  v63 = *(v60 - 184);
  v64 = 123 * v58;
  v65 = v58;
  v66 = (123 * v58 - 60) ^ *(v63 + (v58 - 1648798964));
  *(v60 - 212) = v61;
  v67 = v58 & (v61 - 1648811891);
  LOBYTE(v61) = (2 * (v67 ^ 0xC2)) ^ v67 ^ 0xC2 ^ (2 * (v67 ^ 0xC2)) & v58;
  v68 = v58 << (((v59 + 29) | 4) + 28);
  v69 = ((v68 ^ (4 * v61)) & 8) + (v65 ^ 0x6246ACFD ^ ((v65 ^ 0x445240D3) - 638905386) ^ ((v65 ^ 0x87D72C1) - 1782308408) ^ ((v65 ^ 0x5114613C) - 861064645) ^ ((v65 ^ 0x7F7DFFD7) - 490427182));
  v70 = *(&off_101353600 + (v59 ^ 0x47CA)) - 8;
  v71 = (*(v63 + v69) ^ (123 * v69)) ^ 0x38u;
  v72 = *(&off_101353600 + (v59 ^ 0x4281));
  v458 = v62 + 14;
  v73 = *(v63 + v62 + 14) ^ (v64 + 23);
  v457 = v62 + 11;
  v74 = ((v66 ^ 0x46 ^ v70[v66 ^ 0xD5]) << 16) | ((*(v72 + v71) ^ 0xE4) << 24);
  v454 = v62 + 8;
  LOBYTE(v71) = ((v73 ^ 0x18) + *(a40 + (v73 ^ 0x6B ^ -(v73 ^ 0x6B) ^ (157 - (v73 ^ 0xF6u))) + 157)) ^ 0xA5;
  v75 = *(a43 + ((v64 - 90) ^ 0x5Eu ^ *(v63 + v62 + 11))) ^ 0x75;
  v76 = (v64 + 53) ^ 0x3Bu ^ *(v63 + v62 + 8);
  *(v60 - 224) = v67;
  *(v60 - 256) = 2 * v67;
  LODWORD(v72) = *(v72 + v76);
  LODWORD(v76) = ((v68 ^ (4 * ((v65 ^ 0x57C80066) & (2 * (v65 ^ 0x57C80066)) & (4 * ((2 * v67) & (v65 ^ 0x5DB80266) ^ v67)) ^ (2 * v67) & (v65 ^ 0x5DB80266) ^ v67))) & 0x14 ^ 4) + (v65 ^ 0x6246ACF3 ^ ((v65 ^ 0x23014700) - 1095232505) ^ ((v65 ^ 0xA3F88773) + 1044501622) ^ ((v65 ^ 0x1D449975) - 2130851212) ^ ((v65 ^ 0xFFFBF5FF) + 1648535290));
  LOBYTE(v68) = v75 ^ ((((v75 >> 3) + v75 + 2 * ((v75 >> 3) & v75) - 4 * ((v75 >> 3) & v75)) & 0xF8) >> 3);
  LOBYTE(v76) = (123 * v76) ^ *(v63 + v76);
  v443 = v59;
  v453 = v62 + 15;
  v77 = *(a41 + (((v64 - 110) ^ *(v63 + v62 + 15)) ^ 0x1Cu)) ^ 0x30;
  v451 = v62 + 2;
  v78 = *(v63 + v62 + 2);
  v79 = (v78 ^ -v78 ^ ((v64 + 83) - (v78 ^ (v64 + 83)))) + (v64 + 83);
  v445 = v62 + 1;
  v80 = *(a46 + (v79 ^ 0x8C)) ^ ((v78 ^ -v78 ^ (v64 + 83 - (v78 ^ (v64 + 83)))) + v64 + 83) ^ 0xD2;
  v448 = v62 + 13;
  LOBYTE(v78) = *(v63 + v62 + 13) ^ (v64 - 100);
  LODWORD(v70) = (((*(v63 + v62 + 1) ^ (v64 - 40)) ^ 0x43 ^ v70[(*(v63 + v62 + 1) ^ (v64 - 40)) ^ 0xA0]) << 16) | (v80 << 8);
  v450 = v62 + 12;
  LODWORD(v71) = (v77 ^ (4 * v77 * v77)) | (v71 << 8) | ((*(a44 + (((v78 ^ 0x48) - (v78 ^ 0x92)) ^ 0xFFFFFFFC) + (v78 ^ 0x48)) ^ 0x85) << 16);
  v81 = *(a39 + ((v64 + 33) ^ 0xA3 ^ *(v63 + v62 + 12)));
  v82 = v71 | (((51 * v81) ^ (4 * ((51 * v81) ^ (12 * v81))) ^ 0xD2) << 24);
  v455 = v62 + 3;
  LODWORD(v71) = *(*(&off_101353600 + v59 - 16413) + (((16121856 * v65 + 27000832) >> 17) ^ 0xAE ^ *(v63 + v62 + 3)));
  v447 = v62 + 9;
  LOBYTE(v81) = *(v63 + v62 + 9) ^ (v64 - 80);
  v456 = v65 ^ 6;
  v452 = v65;
  v83 = ((v452 ^ 0xBB) - 66) ^ ((v452 ^ 6) + 1) ^ ((v452 ^ 0xBD) - 68);
  LODWORD(v70) = ((53 * v71) >> 3) & 0xB ^ (v70 & 0xFFFFFF00 | (53 * v71));
  v446 = v62;
  LOBYTE(v71) = (123 * (((v83 ^ 0x44) + 12) ^ ((v83 ^ 0x3A) + 118) ^ ((v83 ^ 0x7E) + 50)) - 112) ^ *(v63 + v62) ^ 0x46;
  LODWORD(v72) = ((v76 ^ 0x7D ^ *(*(&off_101353600 + (v59 ^ 0x4375)) + (v76 ^ 0x4BLL) - 4)) << 8) | ((*(a45 + (v81 ^ 0xA5)) ^ ((v81 ^ 0x7E) - 118) ^ 0x21) << 16) | v68 | ((v72 ^ 0x36) << 24);
  LODWORD(v76) = *(a39 + v71 - 2 * (v71 & 0xDA) + 218);
  v84 = v72 - 2 * (v72 & 0x64164BBA ^ v68 & 8);
  v449 = v62 + 7;
  v85 = *(a43 + ((v64 - 70) ^ 0xAEu ^ *(v63 + v62 + 7))) ^ 0x75;
  LOBYTE(v72) = *(a42 + (((123 * ((((v452 - 1) ^ 0x64) + 106) ^ (v452 - 1) ^ (((v452 - 1) ^ 0x9D) - 111) ^ (((v452 - 1) ^ 0xF4) - 6) ^ (-13 - v452) ^ 0xF2)) ^ *(v63 + ((((v452 + 1648798975) ^ 0xDC604264) - 418192278) ^ (v452 + 1648798975) ^ (((v452 + 1648798975) ^ 0xA5D5859D) - 1633213551) ^ (((v452 + 1648798975) ^ 0x42D765F4) + 2040906746) ^ (((v452 + 1648798975) ^ 0xFFEFFBFF) - 996319757) ^ 0xC48D59F2))) ^ 0xCCu)) + 45;
  v440 = (-30 * v72) ^ v72;
  v86 = v74 & 0xFFFFFF00 | (((v85 ^ ((v85 & 0xF8) >> 3)) >> (v85 & 3)) >> (v85 & 3 ^ 3)) ^ v85;
  v87 = ((((v452 - 1) ^ 0x64) + 106) ^ (v452 - 1) ^ (((v452 - 1) ^ 0x9D) - 111) ^ (((v452 - 1) ^ 0xF4) - 6) ^ (-13 - v452)) & 0x18;
  v437 = (((51 * v76) ^ (12 * v76)) << 26) ^ ((((51 * v76) & 8 | 0xE5) ^ (51 * v76) & 0xFFFFFFF7) << 24) | v70;
  v438 = v86 & 0xFFFF00FF | ((v440 ^ 0x4D) << 8);
  LODWORD(v71) = v438 ^ a22 ^ 0xCE4C88D3;
  v88 = a17 ^ (v84 - 468300878);
  v89 = *(a7 + 4 * ((a20 ^ v437) >> (v87 ^ 0x10) >> (v87 ^ 8))) ^ *(a8 + 4 * ((a16 ^ v82) >> 16)) ^ *(a57 + 4 * ((v86 ^ a22) ^ 0xD3u)) ^ *(a31 + 4 * BYTE1(v88));
  v90 = *(a7 + 4 * BYTE3(v71)) ^ *(a31 + 4 * ((a16 ^ v82) >> 8)) ^ *(a8 + 4 * ((a20 ^ v437) >> 16));
  v91 = *(a7 + 4 * HIBYTE(v88)) ^ *(a8 + 4 * BYTE2(v71)) ^ *(a31 + 4 * ((a20 ^ v70) >> 8));
  v442 = (v91 & 0xBF58F79D ^ 0x4C218FE3) & (v91 & 0x40A70862 ^ 0xBF5EF79D) | v91 & 0x860000;
  v92 = v90 ^ *(a57 + 4 * v88);
  LODWORD(v71) = *(a7 + 4 * ((a16 ^ v82) >> 24)) ^ *(a57 + 4 * (a20 ^ v70)) ^ *(a31 + 4 * BYTE1(v71)) ^ *(a8 + 4 * BYTE2(v88));
  LODWORD(v72) = v442 ^ *(a57 + 4 * (a16 ^ v82));
  v93 = *(a57 + 4 * ((v90 ^ *(a57 + 4 * v88)) ^ 0xA6u)) ^ *(a7 + 4 * (HIBYTE(v89) ^ 8)) ^ *(a8 + 4 * (BYTE2(v71) ^ 0x8Cu)) ^ *(a31 + 4 * (((v72 ^ 0xC114) >> 8) ^ 0xF9u));
  v94 = *(a31 + 4 * (BYTE1(v71) ^ 0x89u)) ^ *(a7 + 4 * (HIBYTE(v92) ^ 0x87)) ^ *(a8 + 4 * (BYTE2(v89) ^ 0x74u)) ^ *(a57 + 4 * (v72 ^ 0x18u));
  HIDWORD(v96) = *(a7 + 4 * ((v71 ^ 0xD68C8949) >> ((BYTE2(v92) ^ 0x56) & 0x18) >> ((BYTE2(v92) ^ 0x56) & 0x18 ^ 0x18)));
  LODWORD(v96) = HIDWORD(v96);
  v95 = v96 >> 1;
  HIDWORD(v96) = *(a8 + 4 * (((v72 ^ 0x3A4CC114) >> 16) ^ 0x41u));
  LODWORD(v96) = HIDWORD(v96);
  v97 = v96 >> 1;
  v98 = v97 ^ v95 ^ 0xBDC376EE;
  v99 = ((v98 & 0xB800004 ^ 0xBB96B401) & (v97 & 0xB0573440 ^ 0xCF9FCD05) | v97 & 0x410040) ^ v95 & 0xB0573440;
  HIDWORD(v96) = (v99 ^ 0x3823B1F6) & (v98 & 0x4428CBBB ^ 0x7FF7B4ED) ^ v98 & 0x4408CA08;
  LODWORD(v96) = v99;
  v100 = *(a57 + 4 * (v89 ^ 0x69u));
  v101 = *(a8 + 4 * (BYTE2(v92) ^ 0x56u)) ^ *(a31 + 4 * (BYTE1(v89) ^ 0xE2u)) ^ *(a57 + 4 * (v71 ^ 0x49u)) ^ *(a7 + 4 * (BYTE3(v72) ^ 0x4F));
  v102 = v100 ^ *(a31 + 4 * ((v92 ^ 0x8756E6A6) >> ((v438 ^ a22) & 8) >> ((v438 ^ a22) & 8 ^ 8)));
  v103 = ((v93 & 0x4D0FCA2B ^ 0x44F979BE) & (v93 & 0xB2F035D4 ^ 0xEF8FEAFF) | v93 & 0xB2000440) ^ 0x278D1168;
  v104 = v102 ^ (v96 >> 31);
  v105 = *(a8 + 4 * (BYTE2(v104) ^ 0x93u)) ^ *(a7 + 4 * HIBYTE(v103));
  v106 = *(a31 + 4 * (BYTE1(v101) ^ 0xCAu));
  LODWORD(v71) = ((v106 & 0x100000) - 1814389007) ^ ((v106 & 0x100000) - 1814651121) ^ ((v106 & 0x100000 ^ 0xA3561AB5) - 929889188);
  v107 = v71 + 155607891;
  v108 = ((v107 ^ 0xBB142B98) + 837834278) ^ v107 ^ ((v107 ^ 0x6EE61CB3) - 469606129) ^ ((v107 ^ 0x5F364A94) - 707643606) ^ ((v107 ^ 0xFFDFFFFD) + 1966834241);
  v444 = *(v60 - 208) < 0xC3F03438;
  v109 = -521101007 - v71;
  if (((v108 ^ 0x751B8242) & (v105 ^ 0xAC306B05) ^ v108 & 0x94BD0B5F) == 0x14190242)
  {
    v109 = v107;
  }

  v110 = (((v105 ^ 0x693D8F6A) - 1765642090) ^ ((v105 ^ 0xD4B32AE4) + 726455580) ^ ((v105 ^ 0x8503C5D4) + 2063350316)) - 168027948 + v109;
  v111 = *(a57 + 4 * (v94 ^ 0xC6u)) ^ v106 & 0xFFEFFFFF ^ v110 ^ ((v110 ^ 0xD7C12098) + 448062940) ^ ((v110 ^ 0x2B55FE03) - 434095295) ^ ((v110 ^ 0x20E11BC8) - 309010804) ^ ((v110 ^ 0xEEFFFFEF) + 596261549);
  v112 = *(a7 + 4 * (HIBYTE(v101) ^ 0x8C)) ^ *(a8 + 4 * (BYTE2(v94) ^ 0x5Au)) ^ *(a31 + 4 * BYTE1(v103)) ^ *(a57 + 4 * (v104 ^ 0x4Eu));
  v113 = *(a8 + 4 * (BYTE2(v101) ^ 0x23u)) ^ *(a31 + 4 * (BYTE1(v94) ^ 0x97u)) ^ *(a7 + 4 * (HIBYTE(v104) ^ 0xA1));
  v114 = ((v113 & 0xDCF94C25 ^ 0x81AB50BE) & (v113 & 0x2306B3DA ^ 0xDDFBED25) | v113 & 0x2204A340) ^ *(a57 + 4 * (((v93 & 0x2B ^ 0xBE) & ~(v93 & 0xD4) | v93 & 0x40) ^ 0x68u));
  v115 = *(a8 + 4 * (BYTE2(v114) ^ 9u)) ^ *(a7 + 4 * (HIBYTE(v111) ^ 8));
  v116 = *(a31 + 4 * (BYTE1(v112) ^ 0xCEu));
  v117 = *(a8 + 4 * BYTE2(v103)) ^ *(a7 + 4 * (HIBYTE(v94) ^ 0xC7)) ^ *(a57 + 4 * (v101 ^ 0x36u)) ^ *(a31 + 4 * (BYTE1(v104) ^ 0x49u));
  v118 = *(a31 + 4 * (BYTE1(v114) ^ 0xBCu)) ^ *(a7 + 4 * (HIBYTE(v117) ^ 0xEC)) ^ *(a8 + 4 * (BYTE2(v111) ^ 0x1Cu));
  v119 = (2 * (v116 & 0x40000)) ^ 0x72995BAC;
  if (((v116 & 0x40000 ^ 0x40000) & (v115 ^ 0x48008)) == 0)
  {
    v119 = 1922128812;
  }

  v120 = (((v115 ^ 0xB6CEC174) + 1227964044) ^ ((v115 ^ 0x8F32ECC2) + 1892487998) ^ ((v115 ^ 0x1714DEC) - 24202732)) + (((v116 & 0x40000 ^ 0x828771DC) + 1313091852) ^ 0x1C00E230) - (((v119 ^ 0xCA925B61) + 896378015) ^ ((v119 ^ 0x955F6E88) + 1788907896) ^ ((v119 ^ 0x2D5C6E45) - 761032261)) + 1247646764;
  v121 = (v120 ^ 0xACC70F82) & (2 * (v120 & 0xAED72FAA)) ^ v120 & 0xAED72FAA;
  v122 = ((2 * (v120 ^ 0xF9E94092)) ^ 0xAE7CDE70) & (v120 ^ 0xF9E94092) ^ (2 * (v120 ^ 0xF9E94092)) & 0x573E6F38;
  v123 = (v122 ^ 0x63C4E30) & (4 * v121) ^ v121;
  v124 = ((4 * (v122 ^ 0x51022108)) ^ 0x5CF9BCE0) & (v122 ^ 0x51022108) ^ (4 * (v122 ^ 0x51022108)) & 0x573E6F38;
  v125 = (v124 ^ 0x54382C20) & (16 * v123) ^ v123;
  v126 = ((16 * (v124 ^ 0x3064318)) ^ 0x73E6F380) & (v124 ^ 0x3064318) ^ (16 * (v124 ^ 0x3064318)) & 0x573E6F30;
  v127 = v125 ^ 0x573E6F38 ^ (v126 ^ 0x53266300) & (v125 << 8);
  v128 = *(a57 + 4 * (v117 ^ 0x19u)) ^ v116 & 0xFFFBFFFF ^ v120 ^ (2 * ((v127 << 16) & 0x573E0000 ^ v127 ^ ((v127 << 16) ^ 0x6F380000) & (((v126 ^ 0x4180C38) << 8) & 0x573E0000 ^ 0x41100000 ^ (((v126 ^ 0x4180C38) << 8) ^ 0x3E6F0000) & (v126 ^ 0x4180C38))));
  v129 = ((v118 & 1 ^ 0xEFC570DF) + 817036328) ^ ((v118 & 1 ^ 0x8583C5F7) + 1525958928) ^ ((v118 & 1 ^ 0x6A46B529) - 1255065134);
  v130 = v129 + 752649359;
  v131 = ((v129 + 752649359) ^ 0xF303CC67) & (2 * ((v129 - 113) & 3)) ^ (v129 - 113) & 3;
  v132 = ((2 * (v130 ^ 0x7755CC0B)) ^ 0x9FC44F8) & (v130 ^ 0x7755CC0B) ^ (2 * (v130 ^ 0x7755CC0B)) & 0x84FE227C;
  v133 = (v132 ^ 0x18) & (4 * v131) ^ v131;
  v134 = ((4 * (v132 ^ 0x84022204)) ^ 0x13F889F0) & (v132 ^ 0x84022204) ^ (4 * (v132 ^ 0x84022204)) & 0x84FE227C;
  v135 = (v134 ^ 0xF80070) & (16 * v133) ^ v133;
  v136 = ((16 * (v134 ^ 0x8406220C)) ^ 0x4FE227C0) & (v134 ^ 0x8406220C) ^ (16 * (v134 ^ 0x8406220C)) & 0x84FE2270;
  v137 = v135 ^ 0x84FE227C ^ (v136 ^ 0x4E22200) & (v135 << 8);
  v138 = (v137 << 16) & 0x4FE0000 ^ v137 ^ (((v136 ^ 0x801C003C) << 8) ^ 0x7E220000) & (v136 ^ 0x801C003C) & ((v137 << 16) ^ 0x227C0000);
  v139 = *(a57 + 4 * (v112 ^ 0xF9u));
  v140 = -338977149 - v129;
  if (((v130 ^ (2 * v138) ^ 0xFAAFAA8F) & (v139 ^ 0xA4D6BE7D) ^ (v130 ^ (2 * v138)) & 0x289FB38F) == 0x288FA28F)
  {
    v140 = v130;
  }

  v141 = (((v139 ^ 0x7C424FBF) - 2084720575) ^ ((v139 ^ 0xBC4D7509) + 1135774455) ^ ((v139 ^ 0x4C463744) - 1279670084)) - 1256296187 + v140;
  v142 = ((v141 ^ 0x5937EE91) - 1813944845) ^ v141 ^ ((v141 ^ 0x12C7C1F5) - 669955433) ^ ((v141 ^ 0x9926A423) + 1408249665) ^ ((v141 ^ 0xE7FFFFDB) + 757691577);
  v143 = (((v118 & 0xFFFFFFFE ^ 0xF4320B41) + 646717592) ^ ((v118 & 0xFFFFFFFE ^ 0x89BB8D32) + 1527097061) ^ ((v118 & 0xFFFFFFFE ^ 0xB9B81889) + 1795568480)) + v141 - 1270426056 + ((2 * ((v142 ^ 0x3529749C) & (v118 & 0xFFFFFFFE ^ 0x2D4C9F0C) ^ v142 & 0x697D01F6)) ^ 0xBDADFED7);
  v144 = *(a8 + 4 * (BYTE2(v117) ^ 0x26u)) ^ *(a7 + 4 * (HIBYTE(v112) ^ 3)) ^ *(a57 + 4 * (v114 ^ 0xC2u)) ^ *(a31 + 4 * (BYTE1(v111) ^ 0x2Au));
  v145 = *(a7 + 4 * (HIBYTE(v114) ^ 0x98)) ^ *(a8 + 4 * (BYTE2(v112) ^ 1u)) ^ *(a31 + 4 * (BYTE1(v117) ^ 0x7Du)) ^ *(a57 + 4 * (v111 ^ 0x4Cu));
  v146 = *(a31 + 4 * (BYTE1(v144) ^ 0x20u)) ^ *(a8 + 4 * (BYTE2(v145) ^ 0xDBu)) ^ *(a7 + 4 * (HIBYTE(v128) ^ 0x4E));
  v147 = v143 ^ 0xEE2D0DB3;
  v148 = *(a57 + 4 * (v143 ^ 0xB3u));
  v149 = (((v146 ^ 0xDD2A9AC2) + 584410430) ^ ((v146 ^ 0x1E1172DD) - 504459997) ^ ((v146 ^ 0x70A76E4) - 118126308)) + (((v146 ^ v148 ^ 0x3570DBED) - 896588781) ^ ((v146 ^ v148 ^ 0x71BAA755) - 1908057941) ^ ((v146 ^ v148 ^ 0xCB2EFB1) - 213053361)) - ((((2 * (v146 ^ v148)) ^ 0x8CA559C8) - 26068381) ^ (((2 * (v146 ^ v148)) ^ 0xAD0B4EF5) - 539218592) ^ (((2 * (v146 ^ v148)) ^ 0xB15F312F) - 1014476154)) + 550267855;
  v150 = (v149 ^ 0xAD338BCE) & (2 * (v149 & 0xCE040BEE)) ^ v149 & 0xCE040BEE;
  v151 = ((2 * (v149 ^ 0xBD3B8B9E)) ^ 0xE67F00E0) & (v149 ^ 0xBD3B8B9E) ^ (2 * (v149 ^ 0xBD3B8B9E)) & 0x733F8070;
  v152 = (v151 ^ 0x60300060) & (4 * v150) ^ v150;
  v153 = ((4 * (v151 ^ 0x11008010)) ^ 0xCCFE01C0) & (v151 ^ 0x11008010) ^ (4 * (v151 ^ 0x11008010)) & 0x733F8070;
  v154 = v152 ^ 0x733F8070 ^ (v153 ^ 0x403E0040) & (16 * v152);
  v155 = (16 * (v153 ^ 0x33018030)) & 0x733F8070 ^ 0x40078070 ^ ((16 * (v153 ^ 0x33018030)) ^ 0x33F80700) & (v153 ^ 0x33018030);
  v156 = (v154 << 8) & 0x733F8000 ^ v154 ^ ((v154 << 8) ^ 0x3F807000) & v155;
  v157 = -485278830 - (((v148 ^ 0x40B9F170) - 1085927792) ^ ((v148 ^ 0xBDCB0031) + 1110769615) ^ ((v148 ^ 0x713BFCB3) - 1899756723));
  v158 = v157 ^ v148 ^ ((v157 ^ 0xC8DEBE18) + 1484589156) ^ ((v157 ^ 0x5524DFD8) - 980981340) ^ ((v157 ^ 0xC5BD73B) - 1661443775) ^ ((v157 ^ 0xFEFDFF7F) + 1851672837) ^ v149 ^ (2 * ((v156 << 16) & 0x733F0000 ^ v156 ^ ((v156 << 16) ^ 0x700000) & ((v155 << 8) & 0x733F0000 ^ 0x403F0000 ^ ((v155 << 8) ^ 0x3F800000) & v155)));
  v159 = (((v158 ^ 0x3D9F8979) + 691269729) ^ ((v158 ^ 0x5EA32B87) + 1242518175) ^ ((v158 ^ 0xCE32ED86) - 627141472)) + (((v146 ^ 0x87CB57DC) + 2016716836) ^ ((v146 ^ 0xA79764EC) + 1483250452) ^ ((v146 ^ 0xE46DADCB) + 462574133));
  v160 = *(a31 + 4 * (BYTE1(v145) ^ 0xA1u)) ^ *(a8 + 4 * (BYTE2(v128) ^ 0x2Cu)) ^ *(a57 + 4 * (v144 ^ 0xE9u)) ^ *(a7 + 4 * HIBYTE(v147));
  v161 = *(a7 + 4 * (HIBYTE(v145) ^ 0x52)) ^ *(a8 + 4 * (BYTE2(v144) ^ 0x5Fu));
  HIDWORD(v162) = v159 + 42952857;
  LODWORD(v162) = v159 + 177170585;
  v163 = *(a31 + 4 * (BYTE1(v128) ^ 0xD0u)) ^ *(a7 + 4 * (HIBYTE(v144) ^ 0xA7)) ^ *(a57 + 4 * (v145 ^ 0x16u)) ^ *(a8 + 4 * BYTE2(v147));
  v164 = v161 ^ *(a31 + 4 * BYTE1(v147));
  v165 = *(a57 + 4 * (v128 ^ 0xD3u));
  v166 = v164 & 0x545F0B2 ^ 0x8DAFFA2E ^ (v165 ^ 0x890CFD40) & (v164 ^ 0xC4319EFB);
  v167 = (((v165 ^ 0x5C1C943B) - 1545376827) ^ ((v165 ^ 0xFC4BD190) + 62140016) ^ ((v165 ^ 0x2C1E4859) - 740182105)) + (((v164 ^ 0xADCF164B) + 1378937269) ^ ((v164 ^ 0x6E36CBF6) - 1849084918) ^ ((v164 ^ 0x7C84346) - 130564934)) + ((((2 * v166) ^ 0x1568D5BD) - 1811263627) ^ (((2 * v166) ^ 0x5AB61989) - 606829759) ^ (((2 * v166) ^ 0x5C82190C) - 572488762)) - ((((4 * v166) ^ 0xF3505D3D) - 446425177) ^ (((4 * v166) ^ 0xFCAD1A6F) - 359051019) ^ (((4 * v166) ^ 0x2944ED22) + 1064347578));
  v168 = (v167 - 288735769) ^ 0xF58481FF;
  HIDWORD(v162) = (v162 >> 26) ^ 0xAB78AB72;
  LODWORD(v162) = HIDWORD(v162);
  v169 = v162 >> 6;
  v170 = *(a8 + 4 * BYTE2(v168)) ^ *(a57 + 4 * (v160 ^ 0xE0u)) ^ *(a31 + 4 * ((v163 ^ 0x49722D5A) >> (v79 & 8 ^ 8) >> (v79 & 8))) ^ *(a7 + 4 * ((v169 ^ 0x380ED5F6u) >> 24));
  v171 = *(a8 + 4 * (BYTE2(v160) ^ 0x53u)) ^ *(a7 + 4 * (HIBYTE(v163) ^ 0x49));
  v172 = *(a31 + 4 * ((v169 ^ 0xD5F6) >> 8));
  v173 = *(a31 + 4 * (((v167 + 15847) ^ 0x81FF) >> 8)) ^ *(a57 + 4 * (v163 ^ 0x5Au)) ^ *(a7 + 4 * (HIBYTE(v160) ^ 0x16)) ^ *(a8 + 4 * ((v169 ^ 0x380ED5F6u) >> 16));
  v174 = -415848357 - (((v171 ^ 0xCB0DD117) + 888286953) ^ ((v171 ^ 0xD6BD040C) + 692255732) ^ ((v171 ^ 0x253DB541) - 624801089));
  v176 = (((v172 ^ 0xB300BEC7) + 1291796793) ^ ((v172 ^ 0xEF9023E1) + 275766303) ^ ((v172 ^ 0xA02C6387) + 1607703673)) - (((v171 ^ v172 ^ 0xC359157D) + 1017571971) ^ ((v171 ^ v172 ^ 0xB4D257EE) + 1261283346) ^ ((v171 ^ v172 ^ 0xB3BADC68) + 1279599512)) - 1429191391;
  v177 = v174 ^ v171 ^ ((v174 ^ 0xD336AF94) + 856512735) ^ ((v174 ^ 0x526C9BC1) - 1302893428) ^ ((v174 ^ 0xE160C31F) + 22754390) ^ ((v174 ^ 0x7FFEFFFF) - 1614477130) ^ v176 ^ ((v176 ^ 0xD9EF1FA1) + 1414792486) ^ ((v176 ^ 0xF3CBA067) + 2121317092) ^ ((v176 ^ 0xE69FA502) + 1797570439) ^ ((v176 ^ 0xBEFFFFBF) + 860153148);
  v178 = (((v172 ^ 0x5C246F73) - 1545891699) ^ ((v172 ^ 0x937FF5C0) + 1820330560) ^ ((v172 ^ 0x33E76412) - 870802450)) - 1485032187 + (((v177 ^ 0xE730ACF1) - 602229914) ^ ((v177 ^ 0xDEEDE505) - 439879022) ^ ((v177 ^ 0x6CD0C460) + 1476058101));
  v179 = (v178 ^ 0xF65437D3) & (2 * (v178 & 0xE719379B)) ^ v178 & 0xE719379B;
  v180 = ((2 * (v178 ^ 0x3A6435D5)) ^ 0xBAFA049C) & (v178 ^ 0x3A6435D5) ^ (2 * (v178 ^ 0x3A6435D5)) & 0xDD7D024E;
  v181 = (v180 ^ 0x9868000C) & (4 * v179) ^ v179;
  v182 = ((4 * (v180 ^ 0x45050242)) ^ 0x75F40938) & (v180 ^ 0x45050242) ^ (4 * (v180 ^ 0x45050242)) & 0xDD7D024C;
  v183 = (v182 ^ 0x55740000) & (16 * v181) ^ v181;
  v184 = ((16 * (v182 ^ 0x88090246)) ^ 0xD7D024E0) & (v182 ^ 0x88090246) ^ (16 * (v182 ^ 0x88090246)) & 0xDD7D0240;
  v185 = v183 ^ 0xDD7D024E ^ (v184 ^ 0xD5500000) & (v183 << 8);
  v186 = v178 ^ *(a57 + 4 * v168) ^ (2 * ((v185 << 16) & 0x5D7D0000 ^ v185 ^ ((v185 << 16) ^ 0x24E0000) & (((v184 ^ 0x82D020E) << 8) & 0xDD7D0000 ^ 0x7D0000 ^ (((v184 ^ 0x82D020E) << 8) ^ 0x7D020000) & (v184 ^ 0x82D020E))));
  v187 = *(a7 + 4 * HIBYTE(v168)) ^ *(a8 + 4 * (BYTE2(v163) ^ 0x72u)) ^ *(a31 + 4 * (BYTE1(v160) ^ 0x4Cu)) ^ *(a57 + 4 * (v169 ^ 0xF6u));
  v188 = (((v186 ^ 0xD0871FE8) + 1806445847) ^ ((v186 ^ 0x1A587A5D) - 1586280284) ^ ((v186 ^ 0x1BED5B40) - 1597609537)) - 184003154 + (((v186 & 0x5F2161BA ^ 0xAEDFDF4F) + 1) << ((v162 & 0x4000000000) != 0) << ((v162 & 0x4000000000) == 0));
  v189 = v187 ^ 0xBCF6ACA5;
  v190 = *(a8 + 4 * BYTE2(v189)) ^ *(a7 + 4 * (HIBYTE(v170) ^ 0x3B));
  v439 = *(a8 + 4 * (BYTE2(v173) ^ 0xF0u));
  v191 = *(a57 + 4 * (v187 ^ 0xA5u));
  v192 = *(a8 + 4 * (BYTE2(v170) ^ 0xB5u)) ^ *(a31 + 4 * (BYTE1(v187) ^ 0xACu)) ^ *(a7 + 4 * (HIBYTE(v173) ^ 0xE4)) ^ *(a57 + 4 * ((((v186 ^ 0xE8) + 23) ^ ((v186 ^ 0x5D) - 92) ^ ((v186 ^ 0x40) - 65)) - 82 + (((v186 & 0xBA ^ 0x4F) + 1) << ((v162 & 0x4000000000) != 0) << ((v162 & 0x4000000000) == 0))));
  LODWORD(v162) = __ROR4__(v191 ^ 0x8F7E94E5, 28) ^ 0x33799170;
  HIDWORD(v162) = v162;
  v193 = *(a31 + 4 * (BYTE1(v170) ^ 0xC8u));
  v194 = v193 ^ v439 ^ ((v162 >> 4) - ((2 * (v162 >> 4)) & 0x706EE19A) + 943157453);
  v195 = *(a8 + 4 * BYTE2(v188));
  v196 = *(a31 + 4 * (BYTE1(v173) ^ 0x7Bu));
  v197 = *(((v189 >> 22) & 0x3FC) + a7);
  v198 = *(a57 + 4 * (v170 ^ 0x5Au));
  if (v192 == -1757601560)
  {
    v199 = -1941369358;
  }

  else
  {
    v199 = *(a57 + 4 * (v170 ^ 0x5Au));
  }

  v441 = (v195 ^ v196 ^ v197 ^ 0xC4319EFB) & (v198 ^ 0x8A1007A7) ^ (v195 ^ v196 ^ v197) & 0x6590A55 ^ (v199 ^ v195 ^ v196 ^ v197) & 0x549D7272 ^ (v199 ^ v195 ^ v196 ^ v197 ^ 0xB7876CF6) & (v198 ^ 0x272B807F);
  v200 = (((v441 ^ 0xEF6B95DC) - (v441 ^ 0x44C4CBCA)) ^ 0xFFFFFFFC) + (v441 ^ 0xEF6B95DC);
  v201 = *(a31 + 4 * BYTE1(v188));
  v202 = *(a57 + 4 * (v173 ^ 0xBBu));
  v203 = v190 ^ v202 ^ v201;
  v204 = *(*(v60 - 200) + 4 * BYTE2(v200));
  LODWORD(v206) = __ROR4__(*(a7 + 4 * (HIBYTE(v203) ^ 0x5E)) ^ 0xC73622C4 ^ v204, 24) ^ 0xC657CECF;
  HIDWORD(v206) = v206;
  v205 = v206 >> 8;
  v207 = ((v205 ^ 0x2BA30BBE) - 982694514) ^ ((v205 ^ 0xB3CB5B5A) + 1560614250) ^ ((v205 ^ 0xA81545B4) + 1188760456);
  v208 = *(a7 + 4 * HIBYTE(v188));
  v209 = v194 ^ v208;
  v210 = *(a31 + 4 * (BYTE1(v209) ^ 0x67u));
  v211 = 2 * ((v205 ^ 0x3DA9E7A2) & (v210 ^ 0x7CBCFEA1) ^ v210 & 0xDD4F2F2);
  v212 = (((v210 ^ 0x944B3619) + 1807010279) ^ ((v210 ^ 0x7EECE3F3) - 2129454067) ^ ((v210 ^ 0x161B2B4B) - 370879307)) + v207 - (((v211 ^ 0xD1C6CA27) - 134049627) ^ ((v211 ^ 0xACB2CC1D) - 2055825761) ^ ((v211 ^ 0x645DE37A) + 1301920250));
  v213 = (v212 - 1028116663) ^ *(a57 + 4 * (v192 ^ 0xE8u)) ^ (((v212 - 1028116663) ^ 0x919FA8B3) + 497064709) ^ (((v212 - 1028116663) ^ 0xC42E0992) + 1209088550) ^ (((v212 - 1028116663) ^ 0xD98E9216) + 1437704610) ^ (((v212 - 1028116663) ^ 0xFFFFFF7F) + 1942015177);
  v214 = *(a7 + 4 * (HIBYTE(v192) ^ 0x97)) ^ *(*(v60 - 200) + 4 * (BYTE2(v203) ^ 0x23u)) ^ *(a57 + 4 * (v209 ^ 0x3Eu)) ^ *(a31 + 4 * BYTE1(v200));
  HIDWORD(v206) = *(a7 + 4 * (HIBYTE(v209) ^ 0xF)) ^ *(*(v60 - 200) + 4 * (BYTE2(v192) ^ 0x3Du));
  LODWORD(v206) = HIDWORD(v206);
  v215 = ((2 * (v206 >> 6)) & 0xF172743C ^ 0x2EBF9FFF) - 824062071 + ((((v206 >> 6) ^ 0xF09D4566) - 1394464259) ^ (((v206 >> 6) ^ 0x8556F4A7) - 651585474) ^ (((v206 >> 6) ^ 0x1D298440) + 1096214747));
  v216 = (v215 ^ 0xE03B8D7B) & (2 * (v215 & 0xF53A117A)) ^ v215 & 0xF53A117A;
  v217 = ((2 * (v215 ^ 0xA24F8D4F)) ^ 0xAEEB386A) & (v215 ^ 0xA24F8D4F) ^ (2 * (v215 ^ 0xA24F8D4F)) & 0x57759C34;
  v218 = (v217 ^ 0x4600820) & (4 * v216) ^ v216;
  v219 = ((4 * (v217 ^ 0x51148415)) ^ 0x5DD670D4) & (v217 ^ 0x51148415) ^ (4 * (v217 ^ 0x51148415)) & 0x57759C34;
  v220 = (v219 ^ 0x55541000) & (16 * v218) ^ v218;
  v221 = ((16 * (v219 ^ 0x2218C21)) ^ 0x7759C350) & (v219 ^ 0x2218C21) ^ (16 * (v219 ^ 0x2218C21)) & 0x57759C30;
  v222 = v220 ^ 0x57759C35 ^ (v221 ^ 0x57518000) & (v220 << 8);
  v223 = (v222 << 16) & 0x57750000 ^ v222 ^ ((v222 << 16) ^ 0x1C350000) & (((v221 ^ 0x241C25) << 8) & 0x57750000 ^ 0x2610000 ^ (((v221 ^ 0x241C25) << 8) ^ 0x759C0000) & (v221 ^ 0x241C25));
  v224 = *(a31 + 4 * (BYTE1(v203) ^ 0xF2u));
  v225 = v215 ^ (((v224 << 26) ^ 0x6657CF2) & ~((v224 ^ 0xFCBCFEA1) >> a21 >> a14) | ((v224 ^ 0xFCBCFEA1) >> a21 >> a14) & 0x7D9A830D) ^ (2 * v223);
  HIDWORD(v206) = v225 ^ 0x1DE55E2;
  LODWORD(v206) = v225 ^ 0xF0000000;
  v226 = v206 >> 26;
  v227 = -1727186338 - (((v213 ^ 0xB5217F28) + 1474868400) ^ ((v213 ^ 0xC739EFD) - 289778309) ^ ((v213 ^ 0x46DB206F) - 1542263831));
  v228 = (v227 ^ 0x8738AFD1) & (2 * (v227 & 0x8432CFE0)) ^ v227 & 0x8432CFE0;
  v229 = ((2 * (v227 ^ 0x87582C51)) ^ 0x6D5C762) & (v227 ^ 0x87582C51) ^ (2 * (v227 ^ 0x87582C51)) & 0x36AE3B0;
  v230 = (v229 ^ 0x404300) & (4 * v228) ^ v228;
  v231 = ((4 * (v229 ^ 0x12A2091)) ^ 0xDAB8EC4) & (v229 ^ 0x12A2091) ^ (4 * (v229 ^ 0x12A2091)) & 0x36AE3B0;
  v232 = (v231 ^ 0x12A8280) & (16 * v230) ^ v230;
  v233 = ((16 * (v231 ^ 0x2406131)) ^ 0x36AE3B10) & (v231 ^ 0x2406131) ^ (16 * (v231 ^ 0x2406131)) & 0x36AE3B0;
  v234 = v232 ^ 0x36AE3B1 ^ (v233 ^ 0x22A2300) & (v232 << 8);
  v235 = (v234 << 16) & 0x36A0000 ^ v234 ^ ((v234 << 16) ^ 0x63B10000) & (((v233 ^ 0x140C0A1) << 8) & 0x36A0000 ^ 0x1080000 ^ (((v233 ^ 0x140C0A1) << 8) ^ 0x6AE30000) & (v233 ^ 0x140C0A1));
  v236 = v226 ^ 0xF26B86DF;
  if (v440 == 77)
  {
    v236 = 601554590;
  }

  v237 = (v236 & (v226 ^ 0x2E4E87BE)) - ((2 * (v236 & (v226 ^ 0x2E4E87BE))) & 0x97F267EE);
  v238 = (((v226 & 0xDC250161 ^ 0x333F035B) - 1653754698) ^ ((v226 & 0xDC250161 ^ 0xDC799989) + 1915432552) ^ ((v226 & 0xDC250161 ^ 0xE3429BF2) + 1292905501)) - 1095087318 + ((((v237 + 1274622967) ^ 0x42E90198) - 1122566552) ^ (((v237 + 1274622967) ^ 0xF6853A8E) + 159040882) ^ (((v237 + 1274622967) ^ 0xFF9508E1) + 7010079));
  v239 = v238 ^ *(a57 + 4 * ((((v441 ^ 0xDC) - (v441 ^ 0xCA)) ^ 0xFC) + (v441 ^ 0xDC))) ^ ((v238 ^ 0x11BFF937) - 78133045) ^ ((v238 ^ 0x25B57E7D) - 815968383) ^ ((v238 ^ 0xC2E2A637) + 671782859) ^ ((v238 ^ 0xE3FFEF7F) + 152559235);
  v240 = *(*(v60 - 200) + 4 * (BYTE2(v209) ^ 0xAFu)) ^ *(a31 + 4 * (BYTE1(v192) ^ 0x20u)) ^ *(a57 + 4 * ((v190 ^ v202 ^ v201) ^ 0x27u)) ^ *(a7 + 4 * HIBYTE(v200));
  v241 = (316316151 - (((v213 ^ 0x841755CF) - 1698919034) ^ ((v213 ^ 0x7F8E3546) + 1629875469) ^ ((v213 ^ 0x5DECF840) + 1128734731))) ^ v213 ^ v227 ^ (2 * v235);
  v242 = (((v241 ^ 0x3C85423B) + 2087259142) ^ ((v241 ^ 0x657D40F9) + 630263496) ^ ((v241 ^ 0x22D6CBFA) + 1648002501)) + 926962757;
  v243 = ((v242 ^ 0xFB5E9361) + 497544520) ^ v242 ^ ((v242 ^ 0xC806C2FD) + 788511964) ^ ((v242 ^ 0xC5A1AFBA) + 593023389) ^ ((v242 ^ 0xEFFF7FFF) + 151388634);
  LOBYTE(v242) = v204 & 8;
  v244 = (v243 ^ 0x190681D9) >> (v204 & 8 ^ 8);
  v245 = *(*(v60 - 200) + 4 * (BYTE2(v240) ^ 0x7Eu));
  v246 = v244 >> v242;
  v247 = *(a7 + 4 * (HIBYTE(v243) ^ 0x19));
  v248 = (((v245 ^ 0x15712D4C) - 359738700) ^ ((v245 ^ 0xFDECC256) + 34815402) ^ ((v245 ^ 0x4DD09B0) - 81594800)) - (((v245 ^ v247 ^ 0x63E6F587) - 1676080519) ^ ((v245 ^ v247 ^ 0x7EE5122D) - 2128941613) ^ ((v245 ^ v247 ^ 0x258E87F0) - 630097904)) + 520863847;
  v249 = (v248 ^ 0x8027F1E1) & (2 * (v248 & 0x94A7C5E9)) ^ v248 & 0x94A7C5E9;
  v250 = ((2 * (v248 ^ 0x802A7331)) ^ 0x291B6DB0) & (v248 ^ 0x802A7331) ^ (2 * (v248 ^ 0x802A7331)) & 0x148DB6D8;
  v251 = (v250 ^ 0x92480) & (4 * v249) ^ v249;
  v252 = ((4 * (v250 ^ 0x14849248)) ^ 0x5236DB60) & (v250 ^ 0x14849248) ^ (4 * (v250 ^ 0x14849248)) & 0x148DB6D8;
  v253 = (v252 ^ 0x10049240) & (16 * v251) ^ v251;
  v254 = ((16 * (v252 ^ 0x4892498)) ^ 0x48DB6D80) & (v252 ^ 0x4892498) ^ (16 * (v252 ^ 0x4892498)) & 0x148DB6D0;
  v255 = v253 ^ 0x148DB6D8 ^ (v254 ^ 0x892400) & (v253 << 8);
  v256 = (v255 << 16) & 0x148D0000 ^ v255 ^ ((v255 << 16) ^ 0x36D80000) & (((v254 ^ 0x14049258) << 8) & 0x148D0000 ^ 0x10090000 ^ (((v254 ^ 0x14049258) << 8) ^ 0xDB60000) & (v254 ^ 0x14049258));
  v257 = -1973828278 - (((v247 ^ 0x30E6EF96) - 820440982) ^ ((v247 ^ 0x5FCCC629) - 1607255593) ^ ((v247 ^ 0xBBE7AF4F) + 1142444209));
  v258 = v257 ^ v247 ^ ((v257 ^ 0x253A82A5) - 2048773791) ^ ((v257 ^ 0x712B618C) - 772550070) ^ ((v257 ^ 0x6AC951ED) - 904797655) ^ ((v257 ^ 0x61FFFEFE) - 1054388932) ^ v248 ^ (2 * v256);
  v259 = (((v245 ^ 0xAC8C1C20) + 1400103904) ^ ((v245 ^ 0xE08FEB66) + 527439002) ^ ((v245 ^ 0xA04311EC) + 1606217236)) + 1951161414 + (((v258 ^ 0x422A23E6) - 577969035) ^ ((v258 ^ 0x93F49E5E) + 206723533) ^ ((v258 ^ 0xCE98DF2B) + 1363024058));
  v260 = (v259 ^ 0xF71BF56B) & (2 * (v259 & 0xF713E562)) ^ v259 & 0xF713E562;
  v261 = ((2 * (v259 ^ 0x953CF7AB)) ^ 0xC45E2592) & (v259 ^ 0x953CF7AB) ^ (2 * (v259 ^ 0x953CF7AB)) & 0x622F12C8;
  v262 = (v261 ^ 0x400E0080) & (4 * v260) ^ v260;
  v263 = ((4 * (v261 ^ 0x22211249)) ^ 0x88BC4B24) & (v261 ^ 0x22211249) ^ (4 * (v261 ^ 0x22211249)) & 0x622F12C8;
  v264 = v262 ^ 0x622F12C9 ^ (v263 ^ 0x2C0200) & (16 * v262);
  v265 = (16 * (v263 ^ 0x620310C9)) & 0x622F12C0 ^ 0x400E1249 ^ ((16 * (v263 ^ 0x620310C9)) ^ 0x22F12C90) & (v263 ^ 0x620310C9);
  v266 = (v264 << 8) & 0x622F1200 ^ v264 ^ ((v264 << 8) ^ 0x2F12C900) & v265;
  v267 = *(a31 + 4 * (BYTE1(v239) ^ 0xF9u)) ^ *(a57 + 4 * (v214 ^ 0xC6u)) ^ v259 ^ (2 * ((v266 << 16) & 0x622F0000 ^ v266 ^ ((v266 << 16) ^ 0x12C90000) & ((v265 << 8) & 0x622F0000 ^ 0x402D0000 ^ ((v265 << 8) ^ 0x2F120000) & v265)));
  v268 = *(*(v60 - 200) + 4 * (BYTE2(v243) ^ 6u)) ^ *(a7 + 4 * (HIBYTE(v214) ^ 0x81)) ^ *(a31 + 4 * (BYTE1(v240) ^ 0x44u)) ^ *(a57 + 4 * (v239 ^ 0x19u));
  v269 = *(a7 + 4 * (HIBYTE(v239) ^ 0xB5)) ^ *(*(v60 - 200) + 4 * (BYTE2(v214) ^ 0x66u)) ^ *(a57 + 4 * (v240 ^ 0x17u)) ^ *(a31 + 4 * v246);
  v270 = *(a31 + 4 * (BYTE1(v214) ^ 0x41u)) ^ *(a7 + 4 * (HIBYTE(v240) ^ 0x10)) ^ *(*(v60 - 200) + 4 * (BYTE2(v239) ^ 0xB2u)) ^ *(a57 + 4 * (v243 ^ 0xD9u));
  v271 = v190 ^ v202 ^ v201;
  v272 = v208 ^ v439 ^ v193 ^ v191;
  v273 = ((v197 ^ v196 ^ v195) & 0x63D8D815 ^ 0xBE6051BA) & ((v197 ^ v196 ^ v195) & 0x9C2727EA ^ 0x7BDBD915) | (v197 ^ v196 ^ v195) & 0x72640;
  v274 = v273 ^ 0x9403E6B0;
  v275 = (((v198 ^ 0xB950CF00) + 1185886464) ^ ((v198 ^ 0x7A10759E) - 2047899038) ^ ((v198 ^ 0x4F09B76C) - 1326036844)) - (((v274 ^ v198 ^ 0x5A47FC5B) - 1514667099) ^ ((v274 ^ v198 ^ 0xE3459AB1) + 481977679) ^ ((v274 ^ v198 ^ 0x5F394243) - 1597588035)) - 619497394;
  v276 = (v275 ^ 0xA2FABAF3) & (2 * (v275 & 0xCAFAB0FB)) ^ v275 & 0xCAFAB0FB;
  v277 = ((2 * (v275 ^ 0xA2EEDB77)) ^ 0xD028D718) & (v275 ^ 0xA2EEDB77) ^ (2 * (v275 ^ 0xA2EEDB77)) & 0x68146B8C;
  v278 = (v277 ^ 0x40004308) & (4 * v276) ^ v276;
  v279 = ((4 * (v277 ^ 0x28142884)) ^ 0xA051AE30) & (v277 ^ 0x28142884) ^ (4 * (v277 ^ 0x28142884)) & 0x68146B8C;
  v280 = ((16 * (v279 ^ 0x4804418C)) ^ 0x8146B8C0) & (v279 ^ 0x4804418C) ^ (16 * (v279 ^ 0x4804418C)) & 0x68146B80;
  v281 = (v279 ^ 0x20102A00) & (16 * v278) ^ v278 ^ 0x68146B8C ^ (v280 ^ 0x42800) & (((v279 ^ 0x20102A00) & (16 * v278) ^ v278) << 8);
  v282 = -373237691 - (((v273 ^ 0xF72D72AC) - 1663996956) ^ ((v273 ^ 0xA893177) + 1635067961) ^ ((v273 ^ 0x3D58C30) + 1747555712));
  v283 = (v282 ^ 0x8B8EFC67) & (2 * (v282 & 0xABCCFE60)) ^ v282 & 0xABCCFE60;
  v284 = ((2 * (v282 ^ 0xDB0E1467)) ^ 0xE185D40E) & (v282 ^ 0xDB0E1467) ^ (2 * (v282 ^ 0xDB0E1467)) & 0x70C2EA06;
  v285 = (v284 ^ 0x6000C000) & (4 * v283) ^ v283;
  v286 = ((4 * (v284 ^ 0x10422A01)) ^ 0xC30BA81C) & (v284 ^ 0x10422A01) ^ (4 * (v284 ^ 0x10422A01)) & 0x70C2EA04;
  v287 = (v286 ^ 0x4002A800) & (16 * v285) ^ v285;
  v288 = ((16 * (v286 ^ 0x30C04203)) ^ 0xC2EA070) & (v286 ^ 0x30C04203) ^ (16 * (v286 ^ 0x30C04203)) & 0x70C2EA00;
  v289 = v287 ^ 0x70C2EA07 ^ (v288 ^ 0x2A000) & (v287 << 8);
  v290 = ((v289 << 16) ^ 0x6A070000) & (((v288 ^ 0x70C04A07) << 8) & 0x70C20000 ^ (((v288 ^ 0x70C04A07) << 8) ^ 0xC2EA0000) & (v288 ^ 0x70C04A07) ^ 0x30000000);
  v291 = v192 ^ 0x804B499F;
  if (v442 == -936306310)
  {
    v291 = 936125801;
  }

  v292 = v282 ^ v274 ^ v275 ^ (2 * ((v289 << 16) & 0x70C20000 ^ v289 ^ v290 ^ v281 ^ (v281 << 16) & 0x68140000 ^ ((v281 << 16) ^ 0x6B8C0000) & (((v280 ^ 0x6810430C) << 8) & 0x68140000 ^ 0x68140000 ^ (((v280 ^ 0x6810430C) << 8) ^ 0x146B0000) & (v280 ^ 0x6810430C))));
  v293 = (((v198 ^ 0x38971436) - 949425206) ^ ((v198 ^ 0x7F639844) - 2137233476) ^ ((v198 ^ 0xCBBD8180) + 876772992)) + 228823751 + (((v292 ^ 0xD2CB317E) + 1181328910) ^ ((v292 ^ 0x101592DB) - 2068380247) ^ ((v292 ^ 0xE83BC773) + 2090422273));
  v294 = (v293 ^ 0x945DE7C4) & (2 * (v293 & 0xC05D8785)) ^ v293 & 0xC05D8785;
  v295 = ((2 * (v293 ^ 0x94FFE0C4)) ^ 0xA944CE82) & (v293 ^ 0x94FFE0C4) ^ (2 * (v293 ^ 0x94FFE0C4)) & 0x54A26740;
  v296 = (v295 ^ 0x600) & (4 * v294) ^ v294;
  v297 = ((4 * (v295 ^ 0x54A22141)) ^ 0x52899D04) & (v295 ^ 0x54A22141) ^ (4 * (v295 ^ 0x54A22141)) & 0x54A26740;
  v298 = (v297 ^ 0x50800500) & (16 * v296) ^ v296;
  v299 = ((16 * (v297 ^ 0x4226241)) ^ 0x4A267410) & (v297 ^ 0x4226241) ^ (16 * (v297 ^ 0x4226241)) & 0x54A26740;
  v300 = v298 ^ 0x54A26741 ^ (v299 ^ 0x40226400) & (v298 << 8);
  v301 = v192 & 0x20BA4C1E ^ v291 & 0x509C6FAB ^ (v291 ^ 0xE8899688) & (v192 ^ 0x18E4FCA2) ^ 0x9FF5B561;
  v302 = v293 ^ (2 * ((v300 << 16) & 0x54A20000 ^ v300 ^ ((v300 << 16) ^ 0x67410000) & (((v299 ^ 0x14800341) << 8) & 0x54A20000 ^ 0x54800000 ^ (((v299 ^ 0x14800341) << 8) ^ 0x22670000) & (v299 ^ 0x14800341))));
  v303 = *(a7 + 4 * HIBYTE(v301)) ^ *(*(v60 - 200) + 4 * (BYTE2(v271) ^ 0x23u)) ^ *(a57 + 4 * (v272 ^ 1u)) ^ *(a31 + 4 * (((v293 ^ (2 * v300)) >> 8) ^ 0x17u));
  v304 = *(a31 + 4 * (BYTE1(v272) ^ 0x1Au)) ^ *(a7 + 4 * (HIBYTE(v271) ^ 0x5E)) ^ *(a57 + 4 * (v192 & 0x1E ^ v291 & 0xAB ^ (v291 ^ 0x88) & (v192 ^ 0xA2) ^ 0x61)) ^ *(*(v60 - 200) + 4 * (BYTE2(v302) ^ 0xB6u));
  v305 = *(a7 + 4 * (HIBYTE(v272) ^ 0xBB)) ^ *(a31 + 4 * (BYTE1(v271) ^ 0xF2u)) ^ *(*(v60 - 200) + 4 * BYTE2(v301)) ^ *(a57 + 4 * (v302 ^ 0x11u));
  v306 = *(a31 + 4 * BYTE1(v301)) ^ *(*(v60 - 200) + 4 * (BYTE2(v272) ^ 0xD1u)) ^ *(a57 + 4 * ((v190 ^ v202 ^ v201) ^ 0x27u)) ^ *(a7 + 4 * (HIBYTE(v302) ^ 0x4A));
  v307 = *(a57 + 4 * (v303 ^ 0xC6u)) ^ *(a7 + 4 * (HIBYTE(v304) ^ 0x11)) ^ *(*(v60 - 200) + 4 * (BYTE2(v306) ^ 0x7Eu)) ^ *(a31 + 4 * (BYTE1(v305) ^ 0xA9u));
  v308 = *(a7 + 4 * (HIBYTE(v303) ^ 0x81)) ^ *(*(v60 - 200) + 4 * (BYTE2(v304) ^ 0x84u)) ^ *(a57 + 4 * (v305 ^ 0xE0u)) ^ *(a31 + 4 * (BYTE1(v306) ^ 0x44u));
  v309 = *(*(v60 - 200) + 4 * (BYTE2(v305) ^ 0x94u));
  v310 = *(a31 + 4 * (BYTE1(v304) ^ 0xCAu)) ^ *(a7 + 4 * (HIBYTE(v305) ^ 0x64)) ^ *(a57 + 4 * (v306 ^ 0x17u)) ^ *(*(v60 - 200) + 4 * (BYTE2(v303) ^ 0x66u));
  v311 = *(a7 + 4 * (HIBYTE(v306) ^ 0x10));
  v312 = (((v311 ^ 0x81C69DC0) + 2117689920) ^ ((v311 ^ 0x1CB063EB) - 481321963) ^ ((v311 ^ 0x49BB78DB) - 1237022939)) - (((v309 ^ v311 ^ 0x2565E940) - 627435840) ^ ((v309 ^ v311 ^ 0x1886E37C) - 411493244) ^ ((v309 ^ v311 ^ 0x56E6A66) - 91122278)) - 683028943;
  v313 = (v312 ^ 0xF6E71740) & (2 * (v312 & 0xC4F65865)) ^ v312 & 0xC4F65865;
  v314 = ((2 * (v312 ^ 0x760B27C2)) ^ 0x65FAFF4E) & (v312 ^ 0x760B27C2) ^ (2 * (v312 ^ 0x760B27C2)) & 0xB2FD7FA6;
  v315 = (v314 ^ 0x20F86304) & (4 * v313) ^ v313;
  v316 = ((4 * (v314 ^ 0x920500A1)) ^ 0xCBF5FE9C) & (v314 ^ 0x920500A1) ^ (4 * (v314 ^ 0x920500A1)) & 0xB2FD7FA4;
  v317 = (v316 ^ 0x82F57E80) & (16 * v315) ^ v315;
  v318 = ((16 * (v316 ^ 0x30080123)) ^ 0x2FD7FA70) & (v316 ^ 0x30080123) ^ (16 * (v316 ^ 0x30080123)) & 0xB2FD7FA0;
  v319 = v317 ^ 0xB2FD7FA7 ^ (v318 ^ 0x22D57A00) & (v317 << 8);
  v320 = 1349381540 - (((v309 ^ 0xEEDC1E8) - 250462696) ^ ((v309 ^ 0x1F5508E4) - 525666532) ^ ((v309 ^ 0xFDF82FA6) + 34066522));
  v321 = v320 ^ v309 ^ ((v320 ^ 0x1469A3D5) - 684160923) ^ ((v320 ^ 0xE62E7AF3) + 629100867) ^ ((v320 ^ 0x11127293) - 767338205) ^ ((v320 ^ 0xDFFB7FFB) + 480924747) ^ v312 ^ (2 * ((v319 << 16) & 0x32FD0000 ^ v319 ^ ((v319 << 16) ^ 0x7FA70000) & (((v318 ^ 0x90280587) << 8) & 0x32FD0000 ^ 0x2800000 ^ (((v318 ^ 0x90280587) << 8) ^ 0x7D7F0000) & (v318 ^ 0x90280587))));
  v322 = (((v311 ^ 0x98B6F19C) + 1732841060) ^ ((v311 ^ 0x7802F655) - 2013460053) ^ ((v311 ^ 0x34798139) - 880378169)) - 305904361 + (((v321 ^ 0xC2C39793) - 941256534) ^ ((v321 ^ 0x9CB4704C) - 1718454409) ^ ((v321 ^ 0x4ADF7210) + 1341748523));
  v323 = *(a57 + 4 * (v304 ^ 0x7Au)) ^ *(a31 + 4 * (BYTE1(v303) ^ 0x41u)) ^ v322 ^ ((v322 ^ 0x2D256014) - 127938825) ^ ((v322 ^ 0x3D3D5094) - 397934985) ^ ((v322 ^ 0x5629E66) - 803721083) ^ ((v322 ^ 0x3FFFFFFB) - 360361702);
  v324 = ((v307 ^ 0x2580E957) - 1437849373) ^ ((v307 ^ 0x89A89591) + 107238437) ^ ((v307 ^ 0xDC1B428C) + 1406632762);
  v325 = ((v308 ^ 0xD53949BD) - 228806920) ^ ((v308 ^ 0x155358C3) + 842448778) ^ ((v308 ^ 0x18F009CB) + 1066790530);
  v326 = (((v268 ^ 0x5A56FD74) - 1315214074) ^ ((v268 ^ 0x1ADFA0D7) - 250466137) ^ ((v268 ^ 0x98134516) + 1943983464)) - v325 - 1706233851;
  v327 = (v326 ^ 0x2C8F351E) & (2 * (v326 & 0x8EAFB95E)) ^ v326 & 0x8EAFB95E;
  v328 = ((2 * (v326 ^ 0x29D035B2)) ^ 0x4EFF19D8) & (v326 ^ 0x29D035B2) ^ (2 * (v326 ^ 0x29D035B2)) & 0xA77F8CEC;
  v329 = (v328 ^ 0x67F08C8) & (4 * v327) ^ v327;
  v330 = ((4 * (v328 ^ 0xA1008424)) ^ 0x9DFE33B0) & (v328 ^ 0xA1008424) ^ (4 * (v328 ^ 0xA1008424)) & 0xA77F8CEC;
  v331 = (v330 ^ 0x857E00A0) & (16 * v329) ^ v329;
  v332 = ((16 * (v330 ^ 0x22018C4C)) ^ 0x77F8CEC0) & (v330 ^ 0x22018C4C) ^ (16 * (v330 ^ 0x22018C4C)) & 0xA77F8CE0;
  v333 = v331 ^ 0xA77F8CEC ^ (v332 ^ 0x27788C00) & (v331 << 8);
  v334 = (v333 << 16) & 0x277F0000 ^ v333 ^ ((v333 << 16) ^ 0xCEC0000) & (((v332 ^ 0x8007002C) << 8) & 0x277F0000 ^ 0x730000 ^ (((v332 ^ 0x8007002C) << 8) ^ 0x7F8C0000) & (v332 ^ 0x8007002C));
  v335 = ((v270 ^ 0xC4E86684) + 1183936876) ^ ((v270 ^ 0x34C80F61) - 1229907825) ^ ((v270 ^ 0xCCB2171B) + 1321926901);
  v336 = ((v323 ^ 0xD1B9DA79) + 14445120) ^ ((v323 ^ 0xEC1080CE) + 1031090313) ^ ((v323 ^ 0x1333150E) - 1034508983);
  v337 = v335 - v336 + 690484086;
  v338 = (2 * (v337 & 0xCD0BF943)) & (v337 ^ 0x5DE9B336) ^ v337 & 0xCD0BF943 ^ ((2 * (v337 & 0xCD0BF943)) & 0x90024204 | 0x400060);
  v339 = (2 * (v337 ^ 0x5DE9B336)) & 0x90E24A74 ^ 0x90224A15 ^ ((2 * (v337 ^ 0x5DE9B336)) ^ 0x21C494EA) & (v337 ^ 0x5DE9B336);
  v340 = (4 * v338) & 0x90E24A74 ^ v338 ^ ((4 * v338) ^ 0x1000180) & v339;
  v341 = (4 * v339) & 0x90E24A74 ^ 0x90624221 ^ ((4 * v339) ^ 0x438929D4) & v339;
  v342 = (16 * v340) & 0x90E24A70 ^ v340 ^ ((16 * v340) ^ 0x4000600) & v341;
  v343 = (16 * v341) & 0x90E24A70 ^ 0x90C24825 ^ ((16 * v341) ^ 0xE24A750) & v341;
  v344 = v342 ^ (v342 << 8) & 0x90E24A00 ^ ((v342 << 8) ^ 0x40026000) & v343;
  v345 = ((v310 ^ 0x63A46BF1) + 835841826) ^ ((v310 ^ 0xF0742675) - 1576951130) ^ ((v310 ^ 0x3E5A36AB) + 1815065212);
  v346 = -421870861 * (v326 ^ (2 * v334) ^ 0x5B33B9F2);
  v347 = v346 ^ (-563696535 * (((((v267 ^ 0xC00BD3C3) - 1315026576) ^ ((v267 ^ 0x4E0C5774) + 1067044313) ^ ((v267 ^ 0xB5E21A57) - 998801156)) - v324 - 883805877) ^ 0x291E9749));
  v348 = 1581321481 * (v337 ^ (2 * (((v344 ^ 0x90A00815) << 16) & 0x10E20000 ^ v344 ^ 0x90A00815 ^ (((v344 ^ 0x90A00815) << 16) ^ 0x4A750000) & ((v343 << 8) & 0x10E20000 ^ 0x10A00000 ^ ((v343 << 8) ^ 0x624A0000) & v343))) ^ 0x7D97589A);
  v349 = -64488585 * ((((2 * v269) & 0xCBE5D04C ^ 0x7F1EFFFF) + (((v269 ^ 0xD673D8C7) + 697050937) ^ ((v269 ^ 0x46710517) - 1181811991) ^ ((v269 ^ 0xD87A4ED9) + 663073063)) - v345 + 2106546035) ^ 0x13666D72);
  v350 = v346 - v349;
  v351 = (v348 ^ v349) + 2 * (v348 & v349);
  v352 = v348 - v347;
  v353 = v352 + v350;
  v354 = v351 ^ v347;
  v355 = (v352 + v350) ^ v352;
  v356 = (((v351 ^ v347) - v355) ^ 0x19F9FF96) - 406873860 + ((2 * ((v351 ^ v347) - v355)) & 0x33F3FF2C);
  v357 = (v356 ^ 0xFC45476C) & (2 * (v356 & 0xFE46676E)) ^ v356 & 0xFE46676E;
  v358 = ((2 * (v356 ^ 0xD8C54D28)) ^ 0x4D06548C) & (v356 ^ 0xD8C54D28) ^ (2 * (v356 ^ 0xD8C54D28)) & 0x26832A46;
  v359 = (v358 ^ 0x20000) & (4 * v357) ^ v357;
  v360 = ((4 * (v358 ^ 0x22812A42)) ^ 0x9A0CA918) & (v358 ^ 0x22812A42) ^ (4 * (v358 ^ 0x22812A42)) & 0x26832A44;
  v361 = (v360 ^ 0x2002800) & (16 * v359) ^ v359;
  v362 = ((16 * (v360 ^ 0x24830246)) ^ 0x6832A460) & (v360 ^ 0x24830246) ^ (16 * (v360 ^ 0x24830246)) & 0x26832A40;
  v363 = v361 ^ 0x26832A46 ^ (v362 ^ 0x20022000) & (v361 << 8);
  v364 = v356 ^ v353 ^ (2 * ((v363 << 16) & 0x26830000 ^ v363 ^ ((v363 << 16) ^ 0x2A460000) & (((v362 ^ 0x6810A06) << 8) & 0x26830000 ^ 0x24810000 ^ (((v362 ^ 0x6810A06) << 8) ^ 0x32A0000) & (v362 ^ 0x6810A06))));
  v365 = v324 - v356;
  v366 = v351 - v354;
  v367 = (((v364 ^ 0xE8476291) + 1564908388) ^ ((v364 ^ 0x61494823) - 733433390) ^ ((v364 ^ 0x7E4A1950) - 884219741)) - 621347493;
  v368 = v325 - v367;
  v369 = v366 + 37172303 + v367;
  v370 = v336 - v355 + 561137732 + v369;
  v371 = v345 - v369 + 524042319;
  v372 = *(v60 - 240) + 4 * BYTE1(v371);
  v373 = v372 + 4 * BYTE1(v370) + 4 * (-3302505706 - (((BYTE1(v371) ^ 0x345A4B235AD67500) + 0x4BA5B4DC61F1B616) ^ ((BYTE1(v371) ^ 0x9C6195DA79BA8DBLL) - 0x9C6195D63439431) ^ ((BYTE1(v371) ^ 0x3D9C527EFD4DDDDBLL) + 0x4263AD81C66A1ECFLL)));
  v368 -= 84583149;
  v374 = *(v60 - 248) + 4 * v368;
  v365 -= 365311343;
  v375 = v373 + 4 * (-565059367 - (((BYTE1(v370) ^ 0x28042CC626A41FF3) - 0x68042CC6070A00D4) ^ ((BYTE1(v370) ^ 0x1E6E29FAC42C1A4BLL) + 0x6191D6051A7DFA94) ^ ((BYTE1(v370) ^ 0x366A053CE28805B8) + 0x995FAC33CD9E561))) + 4 * BYTE1(v365);
  v376 = v374 + 4 * (-1183334941 - (((v368 ^ 0x39CE24B4B9FDE979) - 0x39CE24B4FF75AB64) ^ ((v368 ^ 0x3FD00218FB4EC65FLL) + 0x2FFDE742397BBELL) ^ ((v368 ^ 0x61E26AC42B32F26) + 0x39E1D953FBC492C5))) + 4 * v371;
  v377 = v376 + 4 * v370 + 4 * (-1129546418 - (((v371 ^ 0x26D033904553E228) - 0x26D033900600609ALL) ^ ((v371 ^ 0x2BA93C7BAFC9BA3DLL) + 0x1456C3841365C771) ^ ((v371 ^ 0xD790FEBEA9A5815) + 0x3286F01456362559)));
  v378 = ((v370 ^ 0x3D32D6B6B97EE236) + 0x2CD2949F7737CC2) ^ ((v370 ^ 0x302D589F77C5D730) - 0x302D589FC637B638) ^ ((v370 ^ 0xD1F8E29CEBB3506) + 0x32E071D680B6ABF2);
  v379 = a28 ^ a27 ^ a38 ^ *(a58 + 4 * HIBYTE(v365)) ^ *(a23 + 4 * BYTE2(v370)) ^ *(v374 - 0x3D735E47EAB5DC8ALL) ^ *(v372 - 0x352E112D4F8D487DLL);
  v380 = (a47 ^ a15) + (v379 ^ 0x29487B16) + ((2 * ((v379 ^ 0x29487B16) & (a47 ^ 0x3ACE96CC) ^ v379 & 0x679B4449)) ^ 0xBDEF7FFF) + 1;
  LOBYTE(v379) = *(*(&off_101353600 + v443 - 16332) + (BYTE2(v380) ^ 0x7CLL) - 4);
  LODWORD(v374) = *(v373 - 0x352E112D4F8D487DLL);
  v381 = *(a23 + 4 * BYTE2(v368));
  v382 = *(a58 + 4 * HIBYTE(v368));
  v383 = HIBYTE(v370);
  v384 = v375 + 4 * (-2875146553 - (((BYTE1(v365) ^ 0x13A802D41C781A30) - 0x13A802D4B7275B09) ^ ((BYTE1(v365) ^ 0x38D17DAD5AD86BEDLL) - 0x38D17DADF1872AD4) ^ ((BYTE1(v365) ^ 0x2B797F7946A071DDLL) - 0x2B797F79EDFF30E4)));
  v385 = *(v375 - 0x352E112D4F8D487DLL);
  LODWORD(v375) = *(a23 + 4 * BYTE2(v365));
  v386 = BYTE1(v368);
  v387 = v384 + 4 * BYTE1(v368);
  LODWORD(v376) = *(v376 - 0x3D735E47EAB5DC8ALL);
  v388 = *(a58 + 4 * HIBYTE(v371));
  v389 = *(a23 + 4 * BYTE2(v371));
  v390 = v377 + 4 * (-2985451784 - v378);
  LODWORD(v377) = *(v377 - 0x3D735E47EAB5DC8ALL);
  LODWORD(v378) = *(a58 + 4 * v383);
  v391 = v365;
  v392 = v390 + 4 * v365;
  v393 = *(v392 - 0x3D735E47EAB5DC8ALL);
  v394 = *(v387 - 0x352E112D4F8D487DLL);
  v395 = *(v60 - 184);
  *(v395 + v445) = ((((v379 - (v379 ^ 0x37)) ^ 0xFE) + v379) & 0xE | (16 * (((v379 - (v379 ^ 0x37)) ^ 0xFE) + v379))) ^ ((((v379 - (v379 ^ 0x37)) ^ 0xFE) + v379) | 0xE);
  v396 = v378 ^ v389 ^ v394;
  LODWORD(v378) = (v396 ^ 0x32EE3C1) & (v393 ^ 0x2F08D229) ^ v393 & 0x7FD2618A;
  v397 = (((v393 ^ 0xA1E612E3) + 1578757405) ^ ((v393 ^ 0xF2F29600) + 218982912) ^ ((v393 ^ 0x7C1C56CA) - 2082232010)) + (((v396 ^ 0xEC78F6BB) + 327616837) ^ ((v396 ^ 0x4A9EB6F6) - 1251915510) ^ ((v396 ^ 0xDA1AC206) + 635780602)) - ((((2 * v378) ^ 0xF14565EB) - 1235171084) ^ (((2 * v378) ^ 0xFBD50635) - 1125078226) ^ (((2 * v378) ^ 0x5490E3CE) + 330649303)) + 105579918;
  v398 = v397 ^ ((v397 ^ 0xE3578645) + 1569258924) ^ ((v397 ^ 0xE4B2B53F) + 1517145810) ^ ((v397 ^ 0x383A4010) - 2031797249) ^ ((v397 ^ 0x7EFFF77B) - 1071608682) ^ 0x27645606;
  v399 = ((v398 ^ a53) & 0x84024290 | (v398 ^ a28) & 0x7BFDBD6F) ^ 0x4F5E7050;
  v400 = (v399 - 429541467 - ((2 * v399) & 0xCCCB6F4A)) ^ a49;
  v401 = (v400 - ((2 * v400) & 0x917971CE) + 1220327655) ^ a27;
  v402 = (v401 - 325698210 - ((2 * v401) & 0xD92C7ABC)) ^ a37;
  *(v395 + v448) = *(*(&off_101353600 + (v443 ^ 0x416D)) + (BYTE2(v402) ^ 0x3DLL) - 12) ^ 0x27;
  v403 = a28 ^ a27 ^ a29 ^ v381 ^ v388 ^ v385 ^ v377;
  v404 = ((v403 ^ 0x983F2D87) - 325698210 - 2 * ((v403 ^ 0x983F2D87) & 0x6C963D7E ^ v403 & 0x20)) ^ a37;
  v405 = *(*(&off_101353600 + (v443 ^ 0x400E)) + (BYTE2(v404) ^ 0xF2) - 12);
  v406 = (v405 >> 7) | (2 * v405);
  v407 = v395;
  *(v395 + v447) = (8 * v406) ^ (2 * v406) ^ (((v406 - (v406 ^ 0x98)) ^ 0xF0) + v406);
  v408 = *(*(&off_101353600 + (v443 ^ 0x471F)) + (HIBYTE(v404) ^ 0x36) - 4);
  *(v395 + v454) = (((v408 << 6) & 0x80) + 32 * v408 - 49) ^ (v408 >> 3);
  v409 = a28 ^ a27 ^ a37 ^ v382 ^ v375 ^ v374 ^ v376 ^ 0xDEC4779C;
  v410 = v409 & 0x200;
  if ((v409 & 0x200 & a50) != 0)
  {
    v410 = -v410;
  }

  v411 = (v410 + a50) ^ v409 & 0xFFFFFDFF;
  v412 = v411 ^ 0xC2C23B21;
  v413 = (v411 ^ 0xC2C23B21) + 1843754950;
  if ((v411 ^ 0xC2C23B21) < 0x921A883A)
  {
    v413 = v411 ^ 0xC2C23B21;
  }

  if (v412 >= 0x921A883A)
  {
    v414 = 58;
  }

  else
  {
    v414 = 0;
  }

  if (v413)
  {
    v414 = v411 ^ 0x21;
  }

  v415 = *(*(&off_101353600 + v443 - 16666) + (BYTE1(v380) ^ 0x60) - 12);
  v416 = v415 ^ 0xE6;
  if (v441 == -278161956)
  {
    v416 = 25;
  }

  *(v395 + v451) = (v416 & v415 | v415 & 0xE6 ^ 0xC4) ^ 0x61 ^ (110 * ((v416 & v415 | v415 & 0xE6 ^ 0xC4) ^ 1));
  *(v395 + v453) = (*(*(&off_101353600 + v443 - 16091) + (v402 ^ 0x9ELL) - 12) - 77) ^ 0x69;
  v417 = *(*(&off_101353600 + v443 - 15853) + (HIBYTE(v380) ^ 0x5CLL) - 4);
  *(v395 + v446) = v417 ^ (4 * v417) ^ 0xE6;
  *(v395 + v446 + 10) = BYTE1(v404) ^ 0xD7 ^ ((BYTE1(v404) ^ 0xD7) - 11) ^ *(*(&off_101353600 + (v443 ^ 0x41F1)) + (BYTE1(v404) ^ 0x8CLL)) ^ 4;
  *(v395 + v450) = *(*(&off_101353600 + v443 - 15594) + (HIBYTE(v402) ^ 0xC6) - 4) ^ 0x6F;
  *(v395 + v457) = v404 ^ 0xF4 ^ ((v404 ^ 0xF4) - 118) ^ 0x23 ^ *(*(&off_101353600 + v443 - 16923) + (v404 ^ 0xEDLL));
  v418 = *(*(&off_101353600 + v443 - 16037) + (BYTE2(v411) ^ 0xB0) - 8);
  *(v395 + v459) = ~(2 * v418) + v418;
  *(v395 + v446 + 4) = HIBYTE(v412) ^ 0xED ^ *(*(&off_101353600 + (v443 ^ 0x404D)) + (HIBYTE(v412) ^ 0x93));
  *(v395 + v458) = BYTE1(v402) ^ *(*(&off_101353600 + (v443 ^ 0x4327)) + (BYTE1(v402) ^ 0x93) - 12) ^ 6;
  *(v60 - 248) = v392 + 4 * (-591674486 - (((v391 ^ 0x123316A6012862C2) - 0x123316A6226C5EB4) ^ ((v391 ^ 0x3E795C1F47CD630ALL) - 0x3E795C1F64895F7CLL) ^ ((v391 ^ 0x2C4A4AB946E501C8) - 0x2C4A4AB965A13DBELL)));
  if (((*(*(&off_101353600 + (v443 ^ 0x429D)) + (v380 ^ 0x75) - 12) ^ (2 * ((v380 ^ 0x36) & (v380 ^ 0x6A)) - 36)) & 0x20) != 0)
  {
    v419 = -32;
  }

  else
  {
    v419 = 32;
  }

  *(v395 + v455) = (v419 + (*(*(&off_101353600 + (v443 ^ 0x429D)) + (v380 ^ 0x75) - 12) ^ (2 * ((v380 ^ 0x36) & (v380 ^ 0x6A)) - 36))) ^ 0x9B;
  *(v60 - 240) = v387 + 4 * (-1906034117 - (((v386 ^ 0x13F5CE82134674CFLL) + 0x2C0A317D9D224EF6) ^ ((v386 ^ 0x278EB6E91611BEFDLL) + 0x18714916987584C8) ^ ((v386 ^ 0x347B786B0557CA32) - 0x347B786B74CC0FF7)));
  *(v395 + v449) = v414 ^ 0x3A ^ *(*(&off_101353600 + v443 - 16623) + (v414 ^ 0x90) - ((2 * (v414 ^ 0x90)) & 0xFFFFFF8F) + 199);
  v420 = *(*(&off_101353600 + (v443 ^ 0x403F)) + (BYTE1(v411) ^ 0x3CLL) - 8);
  v421 = ((v420 & 0xF8) - ((2 * v420) & 0xD0)) & 0xF8 | v420 & 7;
  v422 = *(v60 - 256) & (v452 ^ 0xD9391BE6) ^ *(v60 - 224);
  v423 = ((2 * (v452 ^ 0xC06BBFEE)) ^ 0xBBA5D9D2) & (v452 ^ 0xC06BBFEE) ^ (2 * (v452 ^ 0xC06BBFEE)) & 0x5DD2ECE8;
  v424 = v423 ^ 0x44522429;
  v425 = (v423 ^ 0x1990E800) & (4 * v422) ^ v422;
  v426 = ((4 * v424) ^ 0x774BB3A4) & v424 ^ (4 * v424) & 0x5DD2ECE8;
  v427 = (v426 ^ 0x5542A0A0) & (16 * v425) ^ v425;
  v428 = ((16 * (v426 ^ 0x8904C49)) ^ 0xDD2ECE90) & (v426 ^ 0x8904C49) ^ (16 * (v426 ^ 0x8904C49)) & 0x5DD2ECE0;
  v429 = v427 ^ 0x5DD2ECE9 ^ (v428 ^ 0x5D02CC00) & (v427 << 8);
  v430 = (2 * (((v452 ^ 0xCAD9F37C) + 1465950331) ^ v452 ^ ((v452 ^ 0xEE10859) + 324557664) ^ ((v452 ^ 0xFFFFFFFB) + 30) ^ (v456 + 2))) & 0x20;
  v431 = v452 ^ (2 * ((v429 << 16) & 0x5DD20000 ^ v429 ^ ((v429 << 16) ^ 0x6CE90000) & (((v428 ^ 0xD02069) << 8) & 0x5DD20000 ^ 0xD120000 ^ (((v428 ^ 0xD02069) << 8) ^ 0x52EC0000) & (v428 ^ 0xD02069))));
  *(v407 + v446 + 6) = v421 + 104;
  v432 = (((v431 ^ 0x81DA19BD) - 1421827176) ^ ((v431 ^ 0x8F7A14BF) - 1512001898) ^ ((v431 ^ 0xB13C87C7) - 1683603986)) + ((v430 - 1815716381) ^ (v430 + 340369889) ^ ((v430 ^ 0xCB576775) - 1058866518)) + 590636363;
  v433 = v444 ^ (v432 < 0xC3F03438);
  v434 = v432 < *(v60 - 208);
  if (v433)
  {
    v434 = v444;
  }

  v435 = *(*(v60 - 192) + 8 * ((10331 * v434) ^ v443));
  *(v60 - 224) = a58;
  return v435(a57);
}

uint64_t sub_100C2C978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v22 = v8 - 1;
  v23 = v19 + v22 + v9;
  v24 = __ROR8__((a2 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = (a1 | (2 * (v24 + 0x4E0B6541E4935D63))) - (v24 + 0x4E0B6541E4935D63) + v6;
  v26 = v25 ^ v17;
  v25 ^= 0x45B4E9AB22068A46uLL;
  v27 = (__ROR8__(v26, 8) + v25) ^ v15;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v16;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = ((v21 | (2 * (v31 + v30))) - (v31 + v30) + a6) ^ a5;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = ((v34 + v12) | 0x73980E9077463D3ALL) - ((v34 + v12) | a4) + a4;
  v36 = v35 ^ 0x90224A555BCB4C3CLL;
  v35 ^= 0x7BC1A4C9D5C05CD0uLL;
  v37 = (__ROR8__(v32, 8) + v33) ^ 0x224C09CA440C0C0BLL;
  v38 = (__ROR8__(v36, 8) + v35) ^ v13;
  v39 = v38 ^ __ROR8__(v35, 61);
  v40 = v37 ^ __ROR8__(v33, 61);
  v41 = __ROR8__(v38, 8) + v39;
  v42 = ((2 * v41) | 0x77B2E7EACCC4165ELL) - v41;
  v43 = (__ROR8__(v37, 8) + v40) ^ 0xA199F9AE5F876A45;
  v44 = v43 ^ __ROR8__(v40, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xB2823E14A03C0367;
  v46 = __ROR8__(v45, 8) + (v45 ^ __ROR8__(v44, 61));
  v47 = (v42 + 0x44268C0A999DF4D1) ^ 0xE7AA8E4652F5A623 ^ __ROR8__(v39, 61);
  v48 = __ROR8__((v42 + 0x44268C0A999DF4D1) ^ 0xE7AA8E4652F5A623, 8);
  v49 = (v48 + v47 - ((2 * (v48 + v47)) & 0x14BB94248533614ELL) - 0x75A235EDBD664F59) ^ 0xE74F54541981EA5DLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v14 - ((v51 + v50) | v14) + ((v51 + v50) | 0x69D9C8467BD3E599)) ^ 0x4EC11CE98093265 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__((v14 - ((v51 + v50) | v14) + ((v51 + v50) | 0x69D9C8467BD3E599)) ^ 0x4EC11CE98093265, 8) + v52) ^ v7;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v11;
  *v23 = (((__ROR8__(v55, 8) + (v55 ^ __ROR8__(v54, 61))) ^ a3) >> (8 * (v23 & 7u))) ^ ((v46 ^ v20) >> (8 * ((a2 + v22) & 7))) ^ *(a2 + v22);
  return (*(v18 + 8 * ((5608 * (v22 == 0)) ^ v10)))();
}

uint64_t sub_100C2CC70@<X0>(int a1@<W0>, int a2@<W8>)
{
  v6 = STACK[0x2B0];
  v7 = STACK[0x290];
  v8 = STACK[0x2A4];
  v9 = STACK[0x2A8];
  v10 = *(v3 + 8 * ((201 * (((a1 - 22) ^ (v2 > 0x13)) & 1)) ^ a1));
  LODWORD(STACK[0x2A8]) = a2;
  LODWORD(STACK[0x290]) = v5;
  LODWORD(STACK[0x2C4]) = v4 + (a1 ^ 0x27ADF4DA);
  LODWORD(STACK[0x2B8]) = v8;
  LODWORD(STACK[0x28C]) = v6;
  LODWORD(STACK[0x288]) = v7;
  LODWORD(STACK[0x250]) = v9;
  return v10();
}

uint64_t sub_100C2CD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v13 = *(v11 + v9);
  *(v8 + v9) = v13;
  return (*(v12 + 8 * (((v13 != 0) * (((v10 + a6) | a7) ^ a8)) ^ v10)))();
}

uint64_t sub_100C2CD64()
{
  v2 = STACK[0x3D80];
  LODWORD(STACK[0x3D48]) = *STACK[0x3D80];
  STACK[0x3D80] = v2 + 4;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100C2CE4C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v13 = a1 - 1;
  *(a3 + v13) = *(v6 + v13) ^ *(v3 + v13) ^ (v13 * v10) ^ *(v7 + v13) ^ (((a2 - 31) & 0xFB ^ 0x9A) * v13) ^ *(v8 + v13) ^ *(v5 + v13) ^ *(v9 + v13) ^ *(v4 + v13);
  return (*(v11 + 8 * (((v13 == 0) * v12) ^ a2)))();
}

uint64_t sub_100C2CFB4(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, _DWORD *a6, int a7)
{
  v16 = *(a5 + v14);
  v18 = v14 - 1;
  v17 = v14 == 1;
  v19 = v15 + v14 - 1;
  v20 = *(*a2 + ((*a6 & ((v19 & 0xFFFFFFF8) + a4)) & 0xFFFFFFFFFFFFFFF8));
  v21 = (v20 + __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8)) ^ (((a7 - 17407) | 0x4400u) - 0xBE9AEB660A228E5);
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v12;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a3;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v10;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0x520D395FFA55781ALL) - (v29 + v28) + 0x56F9635002D543F2) ^ 0x9124AAA6CE90F4D3;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xA82620A559D2DA78;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v13;
  v35 = __ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61));
  v36 = *(v9 + v18) ^ *(v8 + v18) ^ (v18 * v11) ^ *(a1 + v18) ^ v16 ^ (((((2 * v35) | 0xBE1FA2B0F9AC764ELL) - v35 + 0x20F02EA78329C4D9) ^ 0x1ECC198AD813730FLL) >> (8 * (v19 & 7u)));
  v37 = !v17;
  *v19 = v36;
  return (*(v7 + 8 * ((7 * v37) ^ a7)))();
}

uint64_t sub_100C2D158@<X0>(char a1@<W8>)
{
  *(v6 + v1) = a1 ^ v3;
  v8 = v1 >= ((v4 - 1099) ^ v2);
  return (*(v5 + 8 * ((v8 | (8 * v8)) ^ v7)))();
}

uint64_t sub_100C2E3BC()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x1AC1)))(*STACK[0xBB0] ^ 0xD21C96FC ^ ((v0 - 22207) | 0x628));
  STACK[0x1B80] = v2;
  if (v2)
  {
    v3 = -143113071;
  }

  else
  {
    v3 = -143156080;
  }

  LODWORD(STACK[0x1B8C]) = v3;
  return (*(v1 + 8 * ((443 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_100C2E62C()
{
  STACK[0x39C0] = 0;
  LODWORD(STACK[0x12AC]) = STACK[0x3AE0];
  v2 = LODWORD(STACK[0x3D68]) - 8375;
  LODWORD(STACK[0x3960]) = v1;
  return (*(v0 + 8 * (((4 * (v1 != 0)) | (8 * (v1 != 0))) ^ v2)))();
}

uint64_t sub_100C2E6A8@<X0>(int a1@<W6>, unint64_t a2@<X7>, int a3@<W8>)
{
  LODWORD(STACK[0x3D78]) = 0;
  LODWORD(STACK[0x3830]) = 0;
  LODWORD(STACK[0x3298]) = 0;
  LODWORD(STACK[0x32A0]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x32A8]) = 0;
  LODWORD(STACK[0x3248]) = 0;
  LODWORD(STACK[0x2B98]) = 0;
  LODWORD(STACK[0x2BA0]) = 0;
  LODWORD(STACK[0x3250]) = 0;
  LODWORD(STACK[0x2BA8]) = 0;
  LODWORD(STACK[0x32B0]) = 0;
  LODWORD(STACK[0x3258]) = 0;
  LODWORD(STACK[0x2BD0]) = 0;
  LODWORD(STACK[0x2BD8]) = 0;
  LODWORD(STACK[0x3260]) = 0;
  LODWORD(STACK[0x2BE0]) = 0;
  LODWORD(STACK[0x2BE8]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x32B8]) = 0;
  LODWORD(STACK[0x3270]) = 0;
  LODWORD(STACK[0x2BF0]) = 0;
  LODWORD(STACK[0x2BF8]) = 0;
  LODWORD(STACK[0x3278]) = 0;
  LODWORD(STACK[0x2C00]) = 0;
  LODWORD(STACK[0x2C08]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3280]) = 0;
  LODWORD(STACK[0x2C10]) = 0;
  LODWORD(STACK[0x2F60]) = 0;
  LODWORD(STACK[0x3288]) = 0;
  LODWORD(STACK[0x3228]) = 0;
  LODWORD(STACK[0x3230]) = 0;
  LODWORD(STACK[0x2BC8]) = 0;
  LODWORD(STACK[0x3D68]) = a3 + 16858;
  v5 = (a3 + 989710874) & 0xC50277BF;
  v6 = *(v4 + 8 * ((509 * (((v3 == 36) ^ (a3 - 1)) & 1)) ^ a3));
  STACK[0x16A8] = STACK[0x36D0];
  STACK[0x3398] = STACK[0x37A8];
  STACK[0x16A0] = STACK[0x3860];
  STACK[0x29B0] = STACK[0x3760];
  STACK[0x480] = STACK[0x2B88];
  STACK[0x10F0] = STACK[0x3290];
  STACK[0x470] = a2;
  LODWORD(STACK[0x268C]) = a1;
  LODWORD(STACK[0x366C]) = STACK[0x36B8];
  LODWORD(STACK[0x2010]) = STACK[0x38B8];
  STACK[0x37B8] = LODWORD(STACK[0x3550]);
  v7 = STACK[0x3540];
  LODWORD(STACK[0x3E18]) = STACK[0x3540];
  LODWORD(STACK[0x3D40]) = v7;
  LODWORD(STACK[0x31D0]) = STACK[0x38C8];
  LODWORD(STACK[0x2A48]) = STACK[0x33C0];
  STACK[0x33A8] = LODWORD(STACK[0x3858]);
  LODWORD(STACK[0x2630]) = STACK[0x32E8];
  STACK[0x2228] = LODWORD(STACK[0x2B80]);
  LODWORD(STACK[0x128C]) = STACK[0x36A0];
  STACK[0x3D60] = STACK[0x3998];
  STACK[0x3D88] = STACK[0x39E8];
  LODWORD(STACK[0x3E40]) = STACK[0x39A0];
  STACK[0x3700] = LODWORD(STACK[0x3698]);
  LODWORD(STACK[0x3D20]) = STACK[0x3948];
  LODWORD(STACK[0x3D90]) = STACK[0x3988];
  LODWORD(v7) = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D80]) = v7;
  LODWORD(STACK[0x3D70]) = STACK[0x3980];
  LODWORD(STACK[0x2BB0]) = 37;
  LODWORD(STACK[0x3AD8]) = 35;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2928];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  v8 = STACK[0x32D8];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v8;
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x39A8]) = STACK[0x3B18];
  LODWORD(STACK[0x3860]) = STACK[0x3808];
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  LODWORD(STACK[0x3268]) = v8;
  return v6(v5);
}

uint64_t sub_100C2E9CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W8>)
{
  v5 = a4 ^ 0x638C;
  LODWORD(STACK[0x3B08]) = v5 + 289;
  v6 = *(v4 + 8 * ((246 * (LODWORD(STACK[0x3688]) != v5 - 20854)) ^ v5));
  v7 = LODWORD(STACK[0x34D4]);
  STACK[0x3700] = LODWORD(STACK[0x3E18]);
  v8 = LODWORD(STACK[0x31D0]);
  LODWORD(STACK[0x183C]) = STACK[0x23B0];
  return v6(v8, a1, a2, a3, 8, v7);
}

uint64_t sub_100C2EA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void), unint64_t a16, int a17, __int16 a18, char a19, unsigned __int8 a20, unsigned __int8 *a21)
{
  v21 = a21;
  v22 = -a21 & 7;
  if (v22 > a16)
  {
    LODWORD(v22) = a16;
  }

  if (v22 > 3)
  {
    if (v22 > 5)
    {
      if (v22 != 6)
      {
        if (v22 != 7)
        {
          goto LABEL_20;
        }

        *a21 = a20;
        v21 = a21 + 1;
      }

      *v21++ = a20;
    }

    else if (v22 == 4)
    {
LABEL_16:
      *v21++ = a20;
      goto LABEL_17;
    }

    *v21++ = a20;
    goto LABEL_16;
  }

  switch(v22)
  {
    case 1:
LABEL_19:
      *v21++ = a20;
      break;
    case 2:
LABEL_18:
      *v21++ = a20;
      goto LABEL_19;
    case 3:
LABEL_17:
      *v21++ = a20;
      goto LABEL_18;
  }

LABEL_20:
  v23 = a16 - v22;
  if (v23 >= 8)
  {
    v24 = 0x101010101010101 * a20;
    v25 = ((v23 >> 3) + 7) >> 3;
    v26 = (v23 >> 3) & 7;
    if (v26 > 3)
    {
      if (((v23 >> 3) & 7) <= 5)
      {
        if (v26 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v26 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v23 >> 3) & 7) > 1)
    {
      if (v26 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v26)
    {
      goto LABEL_39;
    }

    do
    {
      *v21 = v24;
      v21 += 8;
LABEL_33:
      *v21 = v24;
      v21 += 8;
LABEL_34:
      *v21 = v24;
      v21 += 8;
LABEL_35:
      *v21 = v24;
      v21 += 8;
LABEL_36:
      *v21 = v24;
      v21 += 8;
LABEL_37:
      *v21 = v24;
      v21 += 8;
LABEL_38:
      *v21 = v24;
      v21 += 8;
LABEL_39:
      *v21 = v24;
      v21 += 8;
      --v25;
    }

    while (v25);
  }

  v27 = v23 & 7;
  if (v27 > 3)
  {
    if (v27 > 5)
    {
      if (v27 != 6)
      {
        *v21++ = a20;
      }

      *v21++ = a20;
    }

    else if (v27 == 4)
    {
      goto LABEL_53;
    }

    *v21++ = a20;
LABEL_53:
    *v21++ = a20;
LABEL_54:
    *v21++ = a20;
LABEL_55:
    *v21++ = a20;
    goto LABEL_56;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (!v27)
  {
    return a15();
  }

LABEL_56:
  *v21 = a20;
  return a15();
}

uint64_t sub_100C2EC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v5 = *(v4 + 8 * (v3 + 1185));
  LODWORD(STACK[0x3CF0]) = 69;
  LODWORD(STACK[0x3D88]) = 2;
  v6 = STACK[0x448];
  STACK[0x3D40] = STACK[0x448];
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
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = v8;
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v5(a1, v3, a3, v8);
}

uint64_t sub_100C2ED74(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v34.i64[0] = v19 + a15 - 7;
  v34.i64[1] = v19 + a15 - 8;
  v35.i64[0] = v19 + a15 - 5;
  v35.i64[1] = v19 + a15 - 6;
  v36.i64[0] = v19 + a15 - 3;
  v36.i64[1] = v19 + a15 - 4;
  v37.i64[0] = v19 + a15 - 1;
  v37.i64[1] = v21 + a15 + a11;
  v38 = vandq_s8(v37, v23);
  v39 = vandq_s8(v36, v23);
  v40 = vandq_s8(v35, v23);
  v41 = vandq_s8(v34, v23);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), *&STACK[0x660]);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), *&STACK[0x660]);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), *&STACK[0x660]);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), *&STACK[0x660]);
  v46 = vaddq_s64(vsubq_s64(vorrq_s8(v45, v25), vorrq_s8(v45, v27)), v27);
  v47 = vaddq_s64(vsubq_s64(vorrq_s8(v44, v25), vorrq_s8(v44, v27)), v27);
  v48 = veorq_s8(v47, a7);
  v49 = veorq_s8(v46, a7);
  v50 = veorq_s8(v46, a8);
  v51 = veorq_s8(v47, a8);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), a1);
  v53 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), a1);
  v55 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v53);
  v57 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(v57, v55), a3);
  v60 = veorq_s8(v58, a3);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, v28), vorrq_s8(v65, a6)), a6), v29);
  v68 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v28), vorrq_s8(v66, a6)), a6), v29);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v71 = veorq_s8(v67, v68);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v70);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), v30), v73), v31), v33);
  v75 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v30), v72), v31), v33);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v78 = veorq_s8(v74, v75);
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78);
  v81 = veorq_s8(vaddq_s64(v79, v77), v24);
  v82 = veorq_s8(v80, v24);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v81, a2), vorrq_s8(v81, v32)), v32), v26);
  v84 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, a2), vorrq_s8(v82, v32)), v32), v26);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v87 = veorq_s8(v83, v84);
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), a4);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v92 = veorq_s8(v89, a4);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v91);
  v95 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v96 = vdupq_n_s64(v20);
  v97 = vaddq_s64(vsubq_s64(vorrq_s8(v43, v25), vorrq_s8(v43, v27)), v27);
  v132.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v96)));
  v132.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v95, v93), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v96)));
  v98 = veorq_s8(v97, a7);
  v99 = veorq_s8(v97, a8);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), a1);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), a3);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v104, v28), vorrq_s8(v104, a6)), a6), v29);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v30), v107), v31), v33);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v24);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v110, a2), vorrq_s8(v110, v32)), v32), v26);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), a4);
  v114 = vaddq_s64(vsubq_s64(vorrq_s8(v42, v25), vorrq_s8(v42, v27)), v27);
  v132.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v96)));
  v115 = veorq_s8(v114, a7);
  v116 = veorq_s8(v114, a8);
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), a1);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), a3);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, v28), vorrq_s8(v121, a6)), a6), v29);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), v30), v124), v31), v33);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126), v24);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, a2), vorrq_s8(v127, v32)), v32), v26);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), a4);
  v132.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v96)));
  *(v22 + a15) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v132, v18[26])), *(v19 + a15 - 8));
  return (*(v17 + 8 * ((60 * (a16 == a15)) ^ v16)))();
}

uint64_t sub_100C2F388(uint64_t a1)
{
  v3 = *(STACK[0x39E0] + 2 * (a1 ^ 0x23));
  v4 = *(STACK[0x2908] + a1) ^ (*(STACK[0x3728] + (((v1 - 3992) - 13386) ^ a1)) - (a1 ^ 0x27)) ^ 0xFFFFFFDF;
  v5 = STACK[0x37B0];
  STACK[0x2BC0] = v4;
  *(v5 + (((v3 >> 2) | (v3 << 14)) ^ 0xC65CLL)) = v4;
  return (*(v2 + 8 * (((2 * (a1 == 15)) | (4 * (a1 == 15))) ^ v1)))();
}

uint64_t sub_100C2F660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v15 = STACK[0x3D18];
  *(v15 + v11) = v6;
  v16 = STACK[0x2760];
  *(v16 + v11) = v8;
  v17 = v11 | 1;
  *(v15 + v17) = v14;
  *(v16 + v17) = a5;
  v18 = v11 | 2;
  *(v15 + v18) = v5;
  *(v16 + v18) = v9;
  v19 = v11 | 3;
  *(v15 + v19) = v13;
  *(v16 + v19) = v7;
  return (*(v12 + 8 * ((118 * (v11 > 0x33)) ^ v10)))();
}

uint64_t sub_100C2F738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x2038] = 0;
  v10 = 18 * (v5 ^ 0x1F7F);
  LODWORD(STACK[0x3B08]) = v10;
  v11 = *(v6 + 8 * (((((v5 + 1157914486) & 0xBAFBEEF5 ^ 0x607C) + v10) * v4) ^ v5));
  STACK[0x1848] = STACK[0x3D40];
  STACK[0x1840] = STACK[0x3D78];
  STACK[0x1A80] = STACK[0x3B18];
  STACK[0x1A88] = STACK[0x3B20];
  STACK[0x2238] = LODWORD(STACK[0x3CF0]);
  LODWORD(STACK[0x1A90]) = STACK[0x3D48];
  LODWORD(STACK[0x28CC]) = STACK[0x3CE8];
  LODWORD(STACK[0x1C28]) = STACK[0x3B00];
  LODWORD(STACK[0x2A48]) = STACK[0x2B48];
  STACK[0x3D98] = v7;
  LODWORD(STACK[0x12B4]) = v7;
  LODWORD(STACK[0x2500]) = STACK[0x3AE8];
  LODWORD(STACK[0x1C20]) = STACK[0x2B58];
  STACK[0x3698] = v9;
  STACK[0x3420] = LODWORD(STACK[0x2B78]);
  LODWORD(STACK[0x21F4]) = STACK[0x3AE0];
  LODWORD(STACK[0x1BA0]) = STACK[0x2B90];
  LODWORD(STACK[0x1BC8]) = STACK[0x39E8];
  LODWORD(STACK[0x2630]) = STACK[0x2B50];
  STACK[0x2228] = LODWORD(STACK[0x2B68]);
  STACK[0x3318] = LODWORD(STACK[0x2B98]);
  LODWORD(STACK[0x2158]) = STACK[0x36B8];
  LODWORD(STACK[0x1B50]) = STACK[0x3D38];
  LODWORD(STACK[0x3310]) = STACK[0x3D30];
  LODWORD(STACK[0x3308]) = STACK[0x3D28];
  LODWORD(STACK[0x3300]) = STACK[0x3D20];
  LODWORD(STACK[0x3488]) = v8;
  LODWORD(STACK[0x32E8]) = v8;
  LODWORD(STACK[0x1AA8]) = STACK[0x39A8];
  LODWORD(STACK[0x3830]) = STACK[0x3D90];
  LODWORD(STACK[0x183C]) = STACK[0x23B0];
  return v11(v8, a2, a3, a4, 0, v9);
}

uint64_t sub_100C31724()
{
  v2 = *(v1 + 8 * (v0 - 286));
  LOBYTE(STACK[0x6C4B]) = *(STACK[0x3A98] + (0xF37EEDC3 % LODWORD(STACK[0x4DF8]))) - 23;
  return v2();
}

uint64_t sub_100C318C4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x2BB8] = 0;
  v3 = (STACK[0x2760] + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = (STACK[0x37B0] + a1);
  *v6 = v4;
  v6[1] = v5;
  v7 = *(v2 + 8 * ((511 * ((v1 ^ 0x449ELL) + a1 == 832)) ^ v1));
  LODWORD(STACK[0x3CE0]) = 272;
  LODWORD(STACK[0x3E18]) = 1;
  STACK[0x3488] = 113;
  return v7();
}

uint64_t sub_100C31968@<X0>(uint64_t a1@<X8>)
{
  v3 = (STACK[0x2760] + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = (STACK[0x3DA0] + a1);
  *v6 = v4;
  v6[1] = v5;
  return (*(v2 + 8 * ((217 * ((v1 ^ (a1 == 32)) & 1)) ^ v1)))();
}

uint64_t sub_100C31A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  STACK[0x3D50] = a7 | 0xD;
  v9 = STACK[0x37B0];
  v10 = *(STACK[0x37B0] + (a7 | 0xD)) - 37 * (a7 | 0xD) + 45;
  v11 = v10 ^ (LODWORD(STACK[0x3360]) - 46);
  v12 = *(STACK[0x37B0] + (a7 | 9));
  STACK[0x3D60] = a7 | 9;
  v13 = STACK[0x3648] + 17570;
  v14 = STACK[0x3648];
  v15 = v12 - 37 * (a7 | 9) + 45;
  STACK[0x3D58] = a7 | 0xB;
  v16 = *(v13 + v11);
  v17 = *(v9 + (a7 | 0xB)) - 37 * (a7 | 0xB) + 45;
  v18 = *(v13 + (v15 ^ 0x54));
  v19 = *(v14 + 17314 + (v17 ^ 0x31));
  v20 = (*(v9 + a7) - 37 * a7 + 45) ^ 0x35;
  v21 = *(v14 + 53761 + ((*(v9 + a7) - 37 * a7 + 45) ^ 0x51)) - ((v20 + 66) ^ v20);
  STACK[0x3D38] = a7 | 0xE;
  v22 = v16 ^ ((v10 ^ 0x8A) - (v10 ^ 0xF2)) ^ 0x42;
  v23 = v21 ^ 0x25;
  v24 = v14;
  v25 = ((v17 ^ 0x84) - (v17 ^ 0xBC)) ^ v19;
  v26 = *(v14 + 53497 + ((*(v9 + (a7 | 0xE)) - 37 * (a7 | 0xE) + 45) ^ 0x4BLL)) - 95;
  STACK[0x3D08] = a7 | 1;
  v27 = *(v9 + (a7 | 1)) - 37 * (a7 | 1) + 45;
  v28 = *(v13 + (v27 ^ 0x13));
  v29 = (v27 ^ 0x14) - (v27 ^ 0x6C);
  STACK[0x3D10] = a7 | 0xA;
  v30 = v25 | ((v18 ^ ((v15 ^ 0x53) - (v15 ^ 0x2B)) ^ 0xFD) << 16);
  v31 = *(v14 + 53497 + ((*(v9 + (a7 | 0xA)) - 37 * (a7 | 0xA) + 45) ^ 9)) - 95;
  v32 = (v23 << 24) | ((v28 ^ v29 ^ 0x3C) << 16);
  STACK[0x3D48] = a7 | 0xF;
  LOBYTE(v23) = *(v9 + (a7 | 0xF)) - 37 * (a7 | 0xF) + 45;
  STACK[0x3D30] = a7 | 6;
  v33 = ((v23 ^ 1) - (v23 ^ 0x39)) ^ *(v14 + 17314 + (v23 ^ 0xB4));
  v34 = v26 ^ 0xA ^ (-48 * v26);
  v35 = v22 << 16;
  LOBYTE(v22) = *(v14 + 53497 + ((*(v9 + (a7 | 6)) - 37 * (a7 | 6) + 45) ^ 0x8BLL)) - 95;
  v36 = v22 ^ (-48 * v22);
  STACK[0x3CF0] = a7 | 8;
  v37 = *(v9 + (a7 | 8)) - 37 * (a7 | 8) + 45;
  v38 = v35 & 0xFFFF00FF | (v34 << 8);
  v39 = (*(v14 + 53761 + ((*(v9 + (a7 | 8)) - 37 * (a7 | 8) + 45) ^ 0x49)) - (((v37 ^ 0x2D) + 66) ^ v37 ^ 0x2D)) ^ 0xB0;
  STACK[0x3D40] = a7 | 7;
  LOBYTE(v37) = *(v9 + (a7 | 7)) - 37 * (a7 | 7) + 45;
  v40 = v30 & 0xFFFF00FF | ((v31 ^ 0xFA ^ (-48 * v31)) << 8);
  v41 = ((v37 ^ 0x7B) - (v37 ^ 0x43)) ^ *(v14 + 17314 + (v37 ^ 0xCELL));
  STACK[0x3D28] = a7 | 0xC;
  v42 = *(v9 + (a7 | 0xC)) - 37 * (a7 | 0xC) + 45;
  v43 = v33 | v38;
  v44 = (*(v14 + 53761 + ((*(v9 + (a7 | 0xC)) - 37 * (a7 | 0xC) + 45) ^ 0x32)) - (((v42 ^ 0x56) + 66) ^ v42 ^ 0x56)) ^ 0x76;
  STACK[0x3D20] = a7 | 4;
  v45 = *(v9 + (a7 | 4)) - 37 * (a7 | 4) + 45;
  v46 = *(v14 + 53761 + ((*(v9 + (a7 | 4)) - 37 * (a7 | 4) + 45) ^ 0xEALL));
  v47 = v40 | (v39 << 24);
  LODWORD(STACK[0x3CE0]) = v47;
  v48 = v46 - (((v45 ^ 0xFFFFFF8E) + 66) ^ v45 ^ 0xFFFFFF8E);
  LOBYTE(v45) = *(v14 + 53497 + ((*(v9 + (a7 | 2)) - 37 * (a7 | 2) + 45) ^ 0xACLL)) - 95;
  v49 = v32 & 0xFFFF00FF | (((v45 ^ (-48 * v45)) ^ 0xEE) << 8);
  STACK[0x3D00] = a7 | 3;
  LOBYTE(v45) = *(v9 + (a7 | 3)) - 37 * (a7 | 3) + 45;
  v50 = *(v9 + (a7 | 5)) - 37 * (a7 | 5);
  v51 = ((v45 ^ 0x72) - (v45 ^ 0x4A)) ^ *(v14 + 17314 + (v45 ^ 0xC7));
  v52 = v43 | (v44 << 24);
  LODWORD(STACK[0x3CC0]) = v52;
  v53 = v41 & 0xFFFF00FF | ((v36 ^ 0x3E) << 8) | ((v48 ^ 0x5D) << 24);
  v54 = *(v13 + ((v50 + 45) ^ 0xB2)) ^ (((v50 + 45) ^ 0xB5) - ((v50 + 45) ^ 0xCD)) ^ 0x62;
  LODWORD(STACK[0x3CE8]) = v49 | v51;
  v55 = STACK[0x3D78];
  v56 = LODWORD(STACK[0x3D78]) ^ 0x12E25BDC ^ (v49 | v51);
  v57 = LODWORD(STACK[0x3D78]) ^ 0x495DE56F ^ v47;
  v58 = STACK[0x3AD0];
  v59 = *(STACK[0x3AD0] + 4 * BYTE1(v57));
  v60 = STACK[0x32F0];
  v61 = *(STACK[0x32F0] + ((v56 >> 22) & 0x3FC));
  v62 = v53 | (v54 << 16);
  LODWORD(STACK[0x3CD8]) = v62;
  v63 = v59 ^ v61;
  v64 = v55 ^ 0x92E0C7C7 ^ v62;
  v65 = v55 ^ 0xD8024291 ^ v52;
  v66 = STACK[0x3DC8];
  v67 = STACK[0x32F8];
  v68 = *(v60 + ((v64 >> 22) & 0x3FC)) ^ *(STACK[0x3DC8] + 4 * BYTE2(v56)) ^ *(v58 + 4 * BYTE1(v65)) ^ *(STACK[0x32F8] + 4 * v57) ^ 0x3E6B381u;
  v69 = *(v60 + ((v57 >> 22) & 0x3FC)) ^ *(v58 + 4 * BYTE1(v56)) ^ *(STACK[0x3DC8] + 4 * BYTE2(v64)) ^ *(STACK[0x32F8] + 4 * v65) ^ 0x3AF51DF5u;
  LODWORD(v56) = *(STACK[0x32F8] + 4 * v56) ^ *(STACK[0x3DC8] + 4 * BYTE2(v57)) ^ *(v60 + ((v65 >> 22) & 0x3FC));
  v70 = v63 ^ *(STACK[0x3DC8] + 4 * BYTE2(v65)) ^ *(STACK[0x32F8] + 4 * v64) ^ 0x80DB22A5;
  v71 = v56 ^ *(v58 + 4 * BYTE1(v64)) ^ 0x3CD62FF0;
  v72 = *(v60 + ((v70 >> 22) & 0x3FC)) ^ 0x394F5DDA ^ (*(STACK[0x3DC8] + 4 * BYTE2(v71)) ^ *(v58 + 4 * BYTE1(v69))) ^ *(STACK[0x32F8] + 4 * v68);
  v73 = *(STACK[0x3DC8] + 4 * BYTE2(v69)) ^ *(v58 + 4 * BYTE1(v68)) ^ *(v60 + ((v71 >> 22) & 0x3FC)) ^ *(STACK[0x32F8] + 4 * v70) ^ 0x6233205u;
  LODWORD(v64) = *(STACK[0x3DC8] + 4 * BYTE2(v68)) ^ *(v58 + 4 * BYTE1(v70));
  v74 = *(v58 + 4 * BYTE1(v71)) ^ *(STACK[0x3DC8] + 4 * BYTE2(v70)) ^ *(STACK[0x32F8] + 4 * v69) ^ *(v60 + ((v68 >> 22) & 0x3FC)) ^ 0x833D9124;
  v75 = *(v60 + ((v69 >> 22) & 0x3FC)) ^ v64 ^ *(STACK[0x32F8] + 4 * v71) ^ 0x3913AE74;
  v76 = *(STACK[0x32F8] + 4 * v74) ^ *(v58 + 4 * BYTE1(v75)) ^ *(STACK[0x3DC8] + 4 * BYTE2(v73)) ^ *(v60 + ((v72 >> 22) & 0x3FC)) ^ 0x34E870C7u;
  v77 = *(STACK[0x3DC8] + 4 * BYTE2(v72)) ^ *(v58 + 4 * BYTE1(v73)) ^ *(v60 + ((v74 >> 22) & 0x3FC)) ^ *(STACK[0x32F8] + 4 * v75) ^ 0xBA72CCFE;
  LODWORD(v64) = *(STACK[0x32F8] + 4 * v72) ^ *(STACK[0x3DC8] + 4 * BYTE2(v75));
  v78 = *(STACK[0x3DC8] + 4 * BYTE2(v74)) ^ *(v58 + 4 * BYTE1(v72)) ^ *(v60 + ((v75 >> 22) & 0x3FC)) ^ *(STACK[0x32F8] + 4 * v73) ^ 0xBA2E3F50;
  v79 = *(v60 + ((v73 >> 22) & 0x3FC)) ^ v64 ^ *(v58 + 4 * BYTE1(v74)) ^ 0x3F309C71;
  v80 = *(STACK[0x3DC8] + 4 * BYTE2(v76)) ^ *(STACK[0x32F8] + 4 * v78) ^ *(v60 + ((v77 >> 22) & 0x3FC)) ^ *(v58 + 4 * BYTE1(v79)) ^ 0x8E9ABC39;
  v81 = *(STACK[0x3DC8] + 4 * BYTE2(v79)) ^ *(v58 + 4 * BYTE1(v78)) ^ *(v60 + ((v76 >> 22) & 0x3FC)) ^ *(STACK[0x32F8] + 4 * v77) ^ 0x697871E8u;
  LODWORD(v64) = *(v58 + 4 * BYTE1(v77)) ^ *(STACK[0x3DC8] + 4 * BYTE2(v78));
  v82 = *(STACK[0x3DC8] + 4 * BYTE2(v77)) ^ *(v58 + 4 * BYTE1(v76)) ^ *(v60 + ((v78 >> 22) & 0x3FC)) ^ *(STACK[0x32F8] + 4 * v79) ^ 0x5CF3AEu;
  v83 = v64 ^ *(v60 + ((v79 >> 22) & 0x3FC)) ^ *(STACK[0x32F8] + 4 * v76) ^ 0x851EA321;
  v84 = *(STACK[0x32F8] + 4 * v82) ^ *(STACK[0x3DC8] + 4 * BYTE2(v81)) ^ *(v58 + 4 * BYTE1(v83)) ^ *(v60 + ((v80 >> 22) & 0x3FC)) ^ 0xE7E2CDD1;
  v85 = *(v60 + ((v81 >> 22) & 0x3FC)) ^ *(v58 + 4 * BYTE1(v82)) ^ *(STACK[0x3DC8] + 4 * BYTE2(v83)) ^ *(STACK[0x32F8] + 4 * v80) ^ 0x3C2867E2u;
  v86 = *(STACK[0x3DC8] + 4 * BYTE2(v80)) ^ *(v58 + 4 * BYTE1(v81)) ^ *(v60 + ((v82 >> 22) & 0x3FC));
  LODWORD(v82) = *(STACK[0x3DC8] + 4 * BYTE2(v82)) ^ *(v58 + 4 * BYTE1(v80));
  v87 = v86 ^ *(STACK[0x32F8] + 4 * v83) ^ 0x8EC64F97;
  v88 = *(v60 + ((v83 >> 22) & 0x3FC)) ^ v82 ^ *(STACK[0x32F8] + 4 * v81) ^ 0x8542508F;
  LODWORD(v14) = *(STACK[0x3DC8] + 4 * BYTE2(v87)) ^ *(v60 + ((v88 >> 22) & 0x3FC));
  v89 = *(STACK[0x32F8] + 4 * v87) ^ *(v58 + 4 * BYTE1(v88)) ^ *(STACK[0x3DC8] + 4 * BYTE2(v85)) ^ *(v60 + ((v84 >> 22) & 0x3FC)) ^ 0xDBCAAA33;
  v90 = *(v58 + 4 * BYTE1(v87)) ^ *(STACK[0x3DC8] + 4 * BYTE2(v88)) ^ *(STACK[0x32F8] + 4 * v84) ^ *(v60 + ((v85 >> 22) & 0x3FC)) ^ 0xC396F145;
  v91 = *(v58 + 4 * BYTE1(v84)) ^ *(STACK[0x32F8] + 4 * v85) ^ 0xB841F18;
  v92 = *(STACK[0x3DC8] + 4 * BYTE2(v84)) ^ *(v58 + 4 * BYTE1(v85)) ^ *(v60 + ((v87 >> 22) & 0x3FC)) ^ *(STACK[0x32F8] + 4 * v88) ^ 0x69248246u;
  LODWORD(STACK[0x3830]) = v14;
  v93 = v91 ^ v14;
  v94 = *(v60 + ((v90 >> 22) & 0x3FC)) ^ *(v66 + 4 * BYTE2(v93)) ^ *(v58 + 4 * BYTE1(v92)) ^ *(v67 + 4 * v89) ^ 0x20E6764Du;
  v95 = *(v66 + 4 * BYTE2(v90)) ^ *(v67 + 4 * v92) ^ *(v58 + 4 * BYTE1(v93)) ^ *(v60 + ((v89 >> 22) & 0x3FC)) ^ 0x185C5B76u;
  v96 = *(v66 + 4 * BYTE2(v92)) ^ *(v58 + 4 * BYTE1(v89)) ^ *(v60 + ((v93 >> 22) & 0x3FC));
  LODWORD(v64) = *(v66 + 4 * BYTE2(v89));
  LODWORD(v89) = *(v67 + 4 * v90) ^ 0x62A09D5E;
  STACK[0x3CA0] = v90;
  LODWORD(v64) = v64 ^ *(v58 + 4 * BYTE1(v90));
  v97 = v96 ^ v89;
  STACK[0x3C98] = v92;
  v98 = v64 ^ *(v60 + ((v92 >> 22) & 0x3FC));
  STACK[0x36C8] = v93;
  v99 = v98 ^ *(v67 + 4 * v93) ^ 0xB2EE2875;
  v100 = *(v58 + 4 * BYTE1(v99)) ^ *(v66 + 4 * BYTE2(v97)) ^ *(v60 + ((v94 >> 22) & 0x3FC)) ^ *(v67 + 4 * v95) ^ 0xA5A7C91A;
  v101 = *(v66 + 4 * BYTE2(v94)) ^ *(v67 + 4 * v99) ^ *(v60 + ((v95 >> 22) & 0x3FC)) ^ *(v58 + 4 * BYTE1(v97)) ^ 0x38BA2D3Bu;
  LODWORD(v64) = *(v66 + 4 * BYTE2(v99)) ^ *(v58 + 4 * BYTE1(v95));
  v102 = *(v58 + 4 * BYTE1(v94)) ^ *(v66 + 4 * BYTE2(v95)) ^ *(v60 + ((v99 >> 22) & 0x3FC)) ^ *(v67 + 4 * v97) ^ 0xAAB27303;
  STACK[0x3CB8] = v97;
  v103 = *(v60 + ((v97 >> 22) & 0x3FC)) ^ v64 ^ *(v67 + 4 * v94) ^ 0xD04EB52B;
  v104 = *(v66 + 4 * BYTE2(v103)) ^ *(v58 + 4 * BYTE1(v102)) ^ *(v60 + ((v100 >> 22) & 0x3FC)) ^ *(v67 + 4 * v101) ^ 0xE2A3ED6D;
  v105 = *(v66 + 4 * BYTE2(v100)) ^ *(v58 + 4 * BYTE1(v103)) ^ *(v60 + ((v101 >> 22) & 0x3FC)) ^ *(v67 + 4 * v102) ^ 0x9D1DE421;
  v106 = *(v66 + 4 * BYTE2(v101)) ^ *(v67 + 4 * (*(v60 + ((v97 >> 22) & 0x3FC)) ^ v64 ^ *(v67 + 4 * v94) ^ 0x2B)) ^ *(v60 + ((v102 >> 22) & 0x3FC));
  LODWORD(v64) = *(v58 + 4 * BYTE1(v100));
  STACK[0x3C90] = v101;
  LODWORD(v94) = *(v58 + 4 * BYTE1(v101)) ^ *(v66 + 4 * BYTE2(v102));
  v107 = v106 ^ v64 ^ 0x92085E38;
  STACK[0x3C88] = v103;
  v108 = v94 ^ *(v60 + ((v103 >> 22) & 0x3FC));
  STACK[0x3570] = v100;
  v109 = v108 ^ *(v67 + 4 * v100) ^ 0x7AFCC628u;
  v110 = STACK[0x3DB8];
  v111 = STACK[0x3E10];
  v112 = STACK[0x3AC0];
  LODWORD(v97) = STACK[0x3D98] ^ LODWORD(STACK[0x3CB0]) ^ LODWORD(STACK[0x3CA8]);
  v113 = STACK[0x3E20];
  v114 = v97 ^ *(STACK[0x3DB8] + 4 * BYTE2(v109)) ^ *(STACK[0x3E10] + ((v104 >> 22) & 0x3FC)) ^ *(STACK[0x3AC0] + 4 * BYTE1(v107)) ^ *(STACK[0x3E20] + 4 * v105);
  STACK[0x3840] = v114;
  LODWORD(v67) = v114 ^ v8;
  LODWORD(v101) = v114 ^ v8 ^ 0xFC798C98;
  v115 = v24;
  v116 = v24 + 70834;
  LOBYTE(v66) = BYTE2(v101) ^ 0x8E ^ *(v24 + 70834 + (BYTE2(v101) ^ 0x1CLL));
  LODWORD(v64) = *(v112 + 4 * BYTE1(v109));
  LODWORD(v24) = *(v110 + 4 * BYTE2(v104));
  v117 = *(v110 + 4 * BYTE2(v105));
  v118 = *(v113 + 4 * v107);
  LODWORD(v60) = *(v113 + 4 * v109);
  v119 = *(v113 + 4 * v104);
  LODWORD(v114) = *(v111 + ((v105 >> 22) & 0x3FC));
  v120 = *(v112 + 4 * BYTE1(v104));
  LODWORD(v104) = *(v110 + 4 * BYTE2(v107));
  LODWORD(v105) = *(v112 + 4 * BYTE1(v105));
  LODWORD(v112) = *(v111 + ((v107 >> 22) & 0x3FC));
  LODWORD(v113) = *(v111 + ((v109 >> 22) & 0x3FC));
  *(v9 + STACK[0x3D08]) = v66;
  v121 = v113 ^ v104;
  STACK[0x39F0] = v121;
  v122 = v97 ^ v119 ^ v105 ^ v121;
  STACK[0x3820] = v122;
  LODWORD(v110) = v122 ^ LODWORD(STACK[0x3D68]);
  *(v9 + STACK[0x3D38]) = *(v115 + 17047 + (BYTE1(v110) ^ 0x93)) ^ 0xEE;
  LODWORD(v121) = v97 ^ LODWORD(STACK[0x3D70]) ^ v117 ^ v112 ^ v60 ^ v120;
  LODWORD(v60) = *(v115 + 17047 + (BYTE1(v121) ^ 0xC1)) ^ 0x72;
  LODWORD(STACK[0x3CC8]) = v60;
  *(v9 + STACK[0x3D10]) = v60;
  v123 = v121 ^ 0x8510287;
  *(v9 + STACK[0x3CF0]) = ((v121 ^ 0x8510287) >> 24) ^ 0xB7 ^ *(v115 + 16768 + (BYTE3(v123) ^ 0x4FLL));
  LODWORD(v97) = v97 ^ STACK[0x3850] ^ v64 ^ v114 ^ v24 ^ v118;
  v124 = ((v110 ^ 0x542DDD93) >> 16) ^ *(v116 + (((v110 ^ 0x542DDD93) >> 16) ^ 0x11)) ^ 0xFFFFFFC1;
  STACK[0x3788] = v124;
  *(v9 + STACK[0x3D50]) = v124;
  *(v9 + (a7 | 5)) = ((v97 ^ 0x257EB940) >> 16) ^ 0xA0 ^ *(v116 + (((v97 ^ 0x257EB940) >> 16) ^ 0x9CLL));
  *(v9 + (a7 | 2)) = *(v115 + 17047 + (BYTE1(v101) ^ 0x31)) ^ 6;
  *(v9 + STACK[0x3D30]) = *(v115 + 17047 + (BYTE1(v97) ^ 0x44)) ^ 0xCF;
  *(v9 + STACK[0x3D48]) = ((v110 ^ 0xC) - 43) ^ *(v115 + 17904 + (v110 ^ 0x3DLL)) ^ 0xBF;
  LODWORD(v116) = *(v116 + (BYTE2(v123) ^ 0x4BLL));
  STACK[0x3838] = v123;
  v125 = WORD1(v123);
  STACK[0x38B8] = v125;
  v126 = v125 ^ 0x16 ^ v116;
  STACK[0x3CD0] = v126;
  *(v9 + STACK[0x3D60]) = v126;
  *(v9 + STACK[0x3D58]) = ((v121 ^ 0x31) - 43) ^ 0xCA ^ *(v115 + 17904 + v121);
  *(v9 + a7) = ((v67 ^ 0xFC798C98) >> 24) ^ *(v115 + 16768 + (((v67 ^ 0xFC798C98) >> 24) ^ 0x84)) ^ 0xE7;
  *(v9 + STACK[0x3D28]) = ((v110 ^ 0x542DDD93) >> 24) ^ *(v115 + 16768 + (((v110 ^ 0x542DDD93) >> 24) ^ 0x5F)) ^ 0x83;
  *(v9 + STACK[0x3D40]) = ((v97 ^ 0xAD) - 43) ^ 0xF4 ^ *(v115 + 17904 + (v97 ^ 0x9CLL));
  *(v9 + STACK[0x3D20]) = ((v97 ^ 0x257EB940) >> 24) ^ *(v115 + 16768 + (((v97 ^ 0x257EB940) >> 24) ^ 0x1CLL)) ^ 0x87;
  LODWORD(STACK[0x3D70]) = LODWORD(STACK[0x3CE0]) ^ 0x92;
  STACK[0x3850] = LODWORD(STACK[0x3CD8]) ^ 0xFBu;
  LODWORD(STACK[0x3D68]) = LODWORD(STACK[0x3CC0]) ^ 0x1A;
  *(v9 + STACK[0x3D00]) = ((v67 ^ 0xE5) - 43) ^ 0xDC ^ *(v115 + 17904 + (v67 ^ 0xD4));
  return (*(v7 + 8 * ((112 * (a7 < 0x330)) ^ LODWORD(STACK[0x3360]))))();
}

uint64_t sub_100C32C84@<X0>(unsigned __int8 a1@<W8>)
{
  LODWORD(STACK[0x3D68]) = 0;
  LODWORD(STACK[0x3D30]) = 0;
  LODWORD(STACK[0x3AF0]) = 0;
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
  v4 = (v2 + 12689) | 0x1004u;
  LODWORD(STACK[0x2480]) = a1;
  v5 = STACK[0x3948];
  LODWORD(STACK[0x2478]) = (STACK[0x3948] >> (((v2 - 111) | 4u) - 110));
  v6 = *(v3 + 8 * v2);
  STACK[0x3D98] = v4;
  STACK[0x24C0] = BYTE4(v5);
  STACK[0x3B98] = v5 >> 16;
  STACK[0x2D78] = v5 >> 24;
  STACK[0x2EF8] = HIBYTE(v5);
  STACK[0x2D20] = v5;
  STACK[0x2DA8] = STACK[0x3950];
  v7 = STACK[0x3B18];
  STACK[0x2D60] = STACK[0x3B18] >> 8;
  STACK[0x3C20] = v7 >> 16;
  STACK[0x3C00] = v7 >> 24;
  STACK[0x26B0] = HIDWORD(v7);
  STACK[0x2C98] = v7 >> 40;
  STACK[0x2CC0] = v7;
  STACK[0x2D48] = v1;
  LODWORD(STACK[0x3E40]) = 1;
  STACK[0x29A0] = HIWORD(v7);
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
  LODWORD(STACK[0x3B20]) = 1;
  LODWORD(STACK[0x3828]) = 1;
  LODWORD(STACK[0x39E8]) = 1;
  LODWORD(STACK[0x3D78]) = 1;
  return v6();
}

uint64_t sub_100C32EF0()
{
  STACK[0x3750] = *(v2 + LODWORD(STACK[0x3E18]));
  LODWORD(STACK[0x3E18]) = v0 + 30;
  v5 = *(v4 + 8 * ((13 * (((v3 ^ (v1 == 30)) & 1) == 0)) ^ v3));
  STACK[0x3850] = 30;
  return v5();
}

uint64_t sub_100C32FE4@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x3B08]) = (a2 - 6868) | 0x409C;
  v3 = *(v2 + 8 * a2);
  LODWORD(STACK[0x3980]) = 1;
  v4 = STACK[0x2620];
  STACK[0x32E0] = STACK[0x2620];
  STACK[0x3D50] = v4;
  STACK[0x3AD8] = v4;
  STACK[0x32D8] = STACK[0x10E8];
  LODWORD(STACK[0x3278]) = STACK[0x1C88];
  LODWORD(v4) = STACK[0x31A8];
  LODWORD(STACK[0x3298]) = STACK[0x31A8];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  LODWORD(STACK[0x3280]) = STACK[0x1954];
  LODWORD(STACK[0x3290]) = v4;
  LODWORD(STACK[0x3258]) = STACK[0x1FD8];
  LODWORD(STACK[0x32D0]) = STACK[0x3830];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3288]) = STACK[0x1A78];
  LODWORD(STACK[0x31E8]) = a1;
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x3260]) = STACK[0x3810];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  return v3();
}

uint64_t sub_100C330CC@<X0>(int a1@<W8>)
{
  v2 = *(v1 + 8 * a1);
  LODWORD(STACK[0x3D98]) = STACK[0x3D68];
  return v2();
}

uint64_t sub_100C3313C@<X0>(unsigned int a1@<W2>, unsigned __int8 a2@<W3>, int a3@<W4>, unsigned int a4@<W5>, unsigned int a5@<W8>)
{
  LODWORD(STACK[0x3D40]) = 0;
  LODWORD(STACK[0x3808]) = BYTE2(v9);
  LODWORD(STACK[0x3AF8]) = BYTE1(v9);
  v18 = STACK[0x3D18];
  *(STACK[0x3D18] + 5) = BYTE2(a5);
  v19 = LODWORD(STACK[0x3E18]) > v7;
  v18[6] = BYTE1(a5);
  v18[7] = a5;
  v18[4] = a5 >> v13;
  v20 = *(v10 + 8 * ((v19 * (v13 - 12632)) ^ v13));
  LODWORD(STACK[0x3AE0]) = a2;
  LODWORD(STACK[0x3AD8]) = v12;
  LODWORD(STACK[0x3AE8]) = v9;
  v21 = v6;
  LODWORD(STACK[0x32D8]) = v16;
  LODWORD(STACK[0x32D0]) = BYTE1(a1);
  LODWORD(STACK[0x32C8]) = BYTE2(a1);
  LODWORD(STACK[0x32B8]) = BYTE2(v11);
  LODWORD(STACK[0x32C0]) = v11;
  LODWORD(STACK[0x35AC]) = HIBYTE(v15);
  LODWORD(STACK[0x32E8]) = BYTE1(v15);
  LODWORD(STACK[0x36A0]) = BYTE1(a3);
  LODWORD(STACK[0x3438]) = BYTE2(a3);
  LODWORD(STACK[0x32E0]) = a3;
  LODWORD(STACK[0x3550]) = LODWORD(STACK[0x3B18]);
  LODWORD(STACK[0x3688]) = LODWORD(STACK[0x3AF0]);
  LODWORD(STACK[0x35FC]) = v17;
  LODWORD(STACK[0x3760]) = LODWORD(STACK[0x39E8]);
  v22 = STACK[0x3D48];
  LODWORD(STACK[0x37A8]) = BYTE2(LODWORD(STACK[0x3D48]));
  LODWORD(STACK[0x33C0]) = v22;
  LODWORD(STACK[0x3800]) = LODWORD(STACK[0x39E0]);
  LODWORD(STACK[0x3750]) = BYTE1(v8);
  LODWORD(STACK[0x3700]) = BYTE2(v8);
  LODWORD(STACK[0x35F8]) = v8;
  LODWORD(STACK[0x3878]) = HIBYTE(v5);
  LODWORD(STACK[0x3780]) = BYTE1(v5);
  LODWORD(STACK[0x36B8]) = BYTE2(v5);
  LODWORD(STACK[0x39A8]) = HIBYTE(a4);
  LODWORD(STACK[0x3988]) = BYTE1(a4);
  LODWORD(STACK[0x39A0]) = BYTE2(a4);
  LODWORD(STACK[0x3970]) = a4;
  LODWORD(STACK[0x39E8]) = LODWORD(STACK[0x39B0]);
  LODWORD(STACK[0x3AF0]) = LODWORD(STACK[0x3998]);
  LODWORD(STACK[0x3D48]) = v13 + 8422;
  LODWORD(STACK[0x3B08]) = (a5 >> v13);
  LODWORD(STACK[0x3B18]) = BYTE1(LODWORD(STACK[0x3D88]));
  v23 = BYTE1(LODWORD(STACK[0x3D70]));
  v24 = BYTE1(LODWORD(STACK[0x3D68]));
  v25 = BYTE2(LODWORD(STACK[0x3D60]));
  v26 = STACK[0x3D58];
  LODWORD(STACK[0x3940]) = BYTE1(LODWORD(STACK[0x3D58]));
  LODWORD(STACK[0x3990]) = BYTE2(v26);
  v27 = STACK[0x3D50];
  LODWORD(STACK[0x3980]) = BYTE2(LODWORD(STACK[0x3D50]));
  LODWORD(STACK[0x39B0]) = BYTE1(v27);
  LODWORD(STACK[0x3998]) = a5;
  LODWORD(STACK[0x39E0]) = BYTE1(a5);
  return v20(v24, v21, BYTE2(v15), HIBYTE(a1), v23, v25, v14);
}

uint64_t sub_100C33380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x38B0] = 0;
  STACK[0x36E8] = *(v10 + LODWORD(STACK[0x3798]));
  LODWORD(STACK[0x3798]) = a7 - 6831 + ((v7 + 7193) ^ 0x6CC3);
  v11 = *(v8 + 8 * (v7 ^ (1017 * (v9 == 19))));
  LODWORD(STACK[0x3D58]) = 19;
  STACK[0x3878] = 128;
  return v11(a1, a2, 0);
}

uint64_t sub_100C333E4@<X0>(const char *a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned int a29)
{
  v50 = vld4q_s8(a1);
  v32 = veorq_s8(v50.val[0], a2);
  v33 = vmovl_u8(*v32.i8);
  v34 = vmovl_high_u8(v32);
  v35 = veorq_s8(v50.val[1], a2);
  _Q22 = vmovl_u8(*v35.i8);
  _Q21 = vmovl_high_u8(v35);
  __asm
  {
    SHLL2           V23.4S, V21.8H, #0x10
    SHLL2           V24.4S, V22.8H, #0x10
  }

  v44 = veorq_s8(v50.val[2], a2);
  v45 = vmovl_high_u8(v44);
  v46 = vmovl_u8(*v44.i8);
  v47 = vorrq_s8(vorrq_s8(vshll_n_s16(*_Q21.i8, 0x10uLL), vshll_n_u16(*v45.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v34.i8), 0x18uLL));
  v48 = vmovl_u8(*v50.val[3].i8);
  v50.val[0] = vmovl_high_u8(v50.val[3]);
  *v31 = veorq_s8(vbslq_s8(vorrq_s8(vorrq_s8(vshll_n_s16(*_Q22.i8, 0x10uLL), vshll_n_u16(*v46.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v33.i8), 0x18uLL)), a4, veorq_s8(vmovl_u16(*v48.i8), a3)), a5);
  v31[1] = veorq_s8(vbslq_s8(vorrq_s8(vorrq_s8(_Q24, vshll_high_n_u16(v46, 8uLL)), vshlq_n_s32(vmovl_high_u16(v33), 0x18uLL)), a4, veorq_s8(vmovl_high_u16(v48), a3)), a5);
  v31[2] = veorq_s8(vbslq_s8(v47, a4, veorq_s8(vmovl_u16(*v50.val[0].i8), a3)), a5);
  v31[3] = veorq_s8(vbslq_s8(vorrq_s8(vorrq_s8(_Q23, vshll_high_n_u16(v45, 8uLL)), vshlq_n_s32(vmovl_high_u16(v34), 0x18uLL)), a4, veorq_s8(vmovl_high_u16(v50.val[0]), a3)), a5);
  return (*(v30 + 8 * (v29 + 2504)))(a29);
}

uint64_t sub_100C3350C()
{
  LODWORD(STACK[0x3F48]) = STACK[0x3F44];
  LODWORD(STACK[0x3F4C]) = STACK[0x3F40];
  LODWORD(STACK[0x3F50]) = STACK[0x3F3C];
  LODWORD(STACK[0x3F54]) = STACK[0x3F38];
  v1 = STACK[0x3F30];
  STACK[0x3F58] = STACK[0x3F30];
  STACK[0x3F60] = STACK[0x3F28];
  v2 = STACK[0x3F24];
  LODWORD(STACK[0x3F68]) = STACK[0x3F24];
  LODWORD(STACK[0x3F6C]) = (v2 - 551859331) & 0x20E4DEFF;
  v3 = STACK[0x37D0] + v1;
  STACK[0x3F70] = v3;
  v4 = *(v0 + 8 * (v2 ^ 0x4B2F));
  STACK[0x3F18] = v3;
  STACK[0x3F08] = v4;
  return (*(v0 + 8 * (v2 ^ 0x4B38)))();
}

uint64_t sub_100C335FC()
{
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x36B8]) = v2;
  return v3();
}

uint64_t sub_100C33628()
{
  v2 = *(*STACK[0x3E40] + ((*v0 & ((STACK[0x4338] & 0xFB077F80) + (STACK[0x4338] & 0x4F88078 | 0xFB077F83) - 1748453079)) & 0xFFFFFFFFFFFFFFF8));
  v3 = (v2 + __ROR8__(STACK[0x4338] & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (((v5 + v4) | 0xADA5D62E821DCCLL) - ((v5 + v4) | LODWORD(STACK[0x4330]) ^ 0xFF525A29D17D8549) - 0xADA5D62E821DCDLL) ^ 0x655FF10B360FA930;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (((2 * (v8 + v7)) & 0x468EAD6407190510) - (v8 + v7) - 0x234756B2038C8289) ^ 0xB348EFDB9D6A6FFALL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = __ROR8__(v11, 8);
  v13 = v11 ^ __ROR8__(v10, 61);
  v14 = (v12 + v13) ^ 0xEF042041F5E548ECLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) & 0xE0498D052E1CE1B4) - (v16 + v15) + 0xFDB397D68F18F25) ^ 0xD71C8A62A2E856FBLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5455012E8AB1C38FLL;
  LODWORD(v18) = -715186797 * ((((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (STACK[0x4338] & 7u))) ^ LOBYTE(STACK[0x3F17]));
  v20 = STACK[0x4320];
  v21 = (v18 ^ LODWORD(STACK[0x4310])) + v20 + (((v18 ^ LODWORD(STACK[0x4310])) + v20) >> 16);
  v22 = v21 + (v21 >> 8);
  LODWORD(v19) = STACK[0x4318];
  LODWORD(v12) = v22 + 1928782826;
  v23 = STACK[0x431C];
  v24 = v22 - 437401644;
  v25 = STACK[0x4314];
  LODWORD(v18) = (v24 ^ v18) + v20 + (((v24 ^ v18) + v20) >> 16);
  LODWORD(v18) = v18 + (v18 >> 8);
  LODWORD(STACK[0x4344]) = v18;
  v26 = v18 ^ v19 ^ v22;
  LODWORD(STACK[0x4348]) = v26;
  LODWORD(v19) = (v18 + 1928782826) ^ v23 ^ v12;
  LODWORD(STACK[0x434C]) = v19;
  LODWORD(v18) = v18 - 437401644;
  v27 = v18 ^ v25 ^ v24;
  LODWORD(STACK[0x4350]) = v27;
  v28 = *(v1 + 8 * ((27 * (v20 > 0x2A)) ^ LODWORD(STACK[0x4334])));
  LODWORD(STACK[0x42F4]) = STACK[0x432C];
  STACK[0x42F8] = v20 + 1;
  LODWORD(STACK[0x4300]) = v19;
  LODWORD(STACK[0x4304]) = v26;
  LODWORD(STACK[0x4308]) = v27;
  LODWORD(STACK[0x430C]) = v18;
  return v28();
}

uint64_t sub_100C3395C@<X0>(int a1@<W1>, int a2@<W3>, int a3@<W4>, int a4@<W6>, int a5@<W7>, int a6@<W8>)
{
  LODWORD(STACK[0x3C98]) += LODWORD(STACK[0x3D60]);
  LODWORD(STACK[0x3C90]) += LODWORD(STACK[0x3D58]);
  v16 = (LODWORD(STACK[0x3CC8]) + 1115116948) & 0xBD88DBFA;
  v19 = a5 ^ a3 ^ LODWORD(STACK[0x3D80]);
  v20 = STACK[0x3D70];
  LODWORD(STACK[0x3E40]) = ((v9 ^ a6) - a6) ^ ((v9 ^ LODWORD(STACK[0x3D70])) - LODWORD(STACK[0x3D70])) ^ ((v19 ^ v9) - v19);
  LODWORD(STACK[0x3D60]) = v16;
  v21 = 3 * (v16 ^ 0x4DC9);
  LODWORD(STACK[0x3D40]) = v21;
  LODWORD(STACK[0x3CD8]) = a4;
  v22 = a5 + a4 + (v21 ^ 0x83AA401D);
  LODWORD(STACK[0x3D58]) = v22;
  LODWORD(STACK[0x3CE0]) = v12;
  LODWORD(STACK[0x3D48]) = v12 + a6 - 2085979100;
  v23 = a5 - a3 + LODWORD(STACK[0x3D68]) - a4;
  v24 = a5 - a3 - 1921092807;
  v25 = a6 - v20 + LODWORD(STACK[0x3D78]) - v12;
  v26 = a6 - v20 - 1921092807;
  LODWORD(STACK[0x3D88]) = ((a6 ^ LODWORD(STACK[0x3D88])) - a6) ^ ((a5 ^ v7 ^ v24 ^ LODWORD(STACK[0x3D88])) - (a5 ^ v7 ^ v24)) ^ ((v26 ^ LODWORD(STACK[0x3D88])) - v26);
  v27 = v25 + a6;
  v28 = v25 + v26;
  v29 = v12 + a6 - 2041332396;
  v30 = v29 ^ v26;
  v31 = (((v29 ^ v26) - 89638590) ^ v13) - ((v29 ^ v26) - 89638590);
  v32 = v22 + 44646704;
  v33 = (v22 + 44646704) ^ 0x81F1FF11;
  v34 = a5 - v33 + v23;
  v35 = (v22 + 44646704) ^ v24;
  v36 = v29 ^ 0x81F1FF11;
  v37 = v27 - (v29 ^ 0x81F1FF11);
  LODWORD(STACK[0x3D78]) = v31 ^ ((v37 ^ v13) - v37) ^ (((v35 - 89638590) ^ a1 ^ v34 ^ v13) - ((v35 - 89638590) ^ a1 ^ v34));
  v38 = v32 ^ 0xB17B1BA2;
  v39 = (v32 ^ 0xB17B1BA2) + 1709514161 + v35;
  v40 = v23 + v24 - v33 + v34;
  v41 = v40 ^ v38;
  v42 = (v40 ^ v38) + v34 - v33;
  v43 = STACK[0x3E38];
  v44 = v28 + v37 - (v29 ^ 0x81F1FF11);
  v29 ^= 0xB17B1BA2;
  v45 = v30 + 1709514161 + v29;
  v46 = v44 ^ v29;
  v47 = (v44 ^ v29) + v37 - v36;
  LODWORD(STACK[0x3D90]) = ((v47 ^ LODWORD(STACK[0x3D90])) - v47) ^ ((v45 ^ LODWORD(STACK[0x3D90])) - v45) ^ ((v39 ^ LODWORD(STACK[0x3E38]) ^ v42 ^ LODWORD(STACK[0x3D90])) - (v39 ^ LODWORD(STACK[0x3E38]) ^ v42));
  v48 = v40 - v39;
  v39 += 1722591713;
  v49 = v48 ^ v39 ^ v42;
  v50 = (v48 + v41) ^ v39;
  v51 = v44 - v45;
  v52 = v51 ^ (v45 + 1722591713) ^ v47;
  v53 = (v46 + v51) ^ (v45 + 1722591713);
  v54 = ((v8 ^ v52) - v52) ^ ((v8 ^ v53) - v53) ^ ((v50 ^ v49 ^ v6 ^ v8) - (v50 ^ v49 ^ v6));
  v55 = v53 + v52 - 1276179350;
  v56 = v49 + 1518898199 + v50 + 1499889747;
  v57 = v41 - v48 - v50;
  v58 = ((v50 + 1499889747) ^ a2 ^ (v57 - 1499889747) ^ v56 ^ LODWORD(STACK[0x3D98])) - ((v50 + 1499889747) ^ a2 ^ (v57 - 1499889747) ^ v56);
  v59 = v46 - v51 - v53;
  v60 = v48 + 1499889747 - v57 - v56;
  v61 = v60 ^ v56;
  v62 = v60 - (v50 + 1499889747);
  v63 = v61 + v50 + 1499889747;
  v64 = (((v59 - 1499889747) ^ (v53 + 1499889747) ^ LODWORD(STACK[0x3D98])) - ((v59 - 1499889747) ^ (v53 + 1499889747))) ^ ((v55 ^ LODWORD(STACK[0x3D98])) - v55) ^ v58;
  v65 = 1499889747 - v59 + v51 - v55;
  v66 = (v65 ^ v55) + v53 + 1499889747;
  v67 = v65 - (v53 + 1499889747);
  LODWORD(STACK[0x3CA0]) = v54 + LODWORD(STACK[0x3CA0]) - v46;
  v50 -= 864939657;
  v68 = STACK[0x3E18];
  LODWORD(STACK[0x3C10]) = LODWORD(STACK[0x3D88]) + LODWORD(STACK[0x3C10]) - LODWORD(STACK[0x3D48]);
  v69 = v6 + LODWORD(STACK[0x3C60]);
  LODWORD(STACK[0x3C68]) += a1 + v33;
  LODWORD(STACK[0x3CA8]) += LODWORD(STACK[0x3CD8]) + LODWORD(STACK[0x3D80]);
  v70 = v43 + LODWORD(STACK[0x3C70]);
  LODWORD(STACK[0x3C60]) = v69 + v41;
  LODWORD(STACK[0x3C70]) = v70 + v41;
  LODWORD(STACK[0x3C08]) += LODWORD(STACK[0x3D28]) + LODWORD(STACK[0x3D58]);
  LODWORD(STACK[0x3C00]) = LODWORD(STACK[0x3E40]) + LODWORD(STACK[0x3C00]) - LODWORD(STACK[0x3CE0]);
  LODWORD(STACK[0x3C88]) = LODWORD(STACK[0x3C88]) - v53 - v59 - 1672890739 + (((v66 ^ v68) - v66) ^ (((v53 - 864939657) ^ v68) - (v53 - 864939657)) ^ ((v50 ^ v11 ^ v63 ^ v68) - (v50 ^ v11 ^ v63)));
  v71 = LODWORD(STACK[0x3C80]) + v11;
  LODWORD(STACK[0x3C20]) += a2 + v57 - 1499889747;
  LODWORD(STACK[0x3C80]) = v71 + v50 + v57 - 1499889747 - 257247153;
  LODWORD(STACK[0x3CB0]) = LODWORD(STACK[0x3D90]) + LODWORD(STACK[0x3CB0]) - v46;
  LODWORD(STACK[0x3E40]) = v62 - 732281206;
  LODWORD(STACK[0x3E38]) = v67 - 732281206;
  LODWORD(STACK[0x3E18]) = v59 - 1522016927;
  LODWORD(STACK[0x3D90]) = (v50 ^ 0x5CAF34B) - (v63 - v62);
  LODWORD(STACK[0x3D98]) = v57 - 1522016927;
  LODWORD(STACK[0x3D88]) = ((v53 - 864939657) ^ 0x5CAF34B) - (v66 - v67);
  LODWORD(STACK[0x3C18]) = LODWORD(STACK[0x3D78]) + LODWORD(STACK[0x3C18]) - v36;
  LODWORD(STACK[0x3C78]) += 1499889747 - v59 + v64;
  v72 = *(v10 + 8 * (LODWORD(STACK[0x3CC8]) ^ ((2 * (LODWORD(STACK[0x3BF8]) >= LODWORD(STACK[0x37F8]))) | ((LODWORD(STACK[0x3BF8]) >= LODWORD(STACK[0x37F8])) << 7))));
  LODWORD(STACK[0x3D80]) = STACK[0x3BF8];
  return v72();
}

uint64_t sub_100C33F58@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v7 = (v3 + 4 * v2);
  v8 = (v5 + 4 * v2);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  return (*(v6 + 8 * ((4 * ((a1 ^ 0x1E5F) + v2 != a2)) | (32 * ((a1 ^ 0x1E5F) + v2 != a2)) | v4)))();
}

uint64_t sub_100C34008()
{
  STACK[0x4C0] = v1 + 80;
  *(v3 - 232) = v0 - 16169987 * ((2 * ((v3 - 240) & 0x63F227A0) - (v3 - 240) - 1676814244) ^ 0xC983ED74) - 1606519198;
  v4 = (*(v2 + 8 * (v0 + 6528)))(v3 - 240);
  return (*(v2 + 8 * v0))(v4);
}

uint64_t sub_100C341A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + v8) = v9;
  *(v7 - 0x308E083E0C524CBELL) = v9;
  return (*(v11 + 8 * (v10 & 0x78B5BF7D)))(a1, a2, 1211098651, a4, a5, a6, a7, 0x308E083E0C524CBELL);
}

uint64_t sub_100C34318@<X0>(uint64_t a1@<X8>)
{
  STACK[0x8A0] = v2;
  v4 = STACK[0x928];
  *v4 = 0;
  *(v4 + 8) = *(a1 - 0x79CEC8CF5A6FCE4ELL);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0x1FA834112;
  STACK[0x4C0] = v4;
  *(v4 + 32) = 0x100000004;
  v5 = *(v3 + 8 * v1);
  STACK[0x890] = v5;
  STACK[0x11E0] = v5;
  v6 = *(v3 + 8 * (v1 ^ 0x3BD5 ^ ((v1 + 1526) | 0x420)));
  LODWORD(STACK[0x408]) = 1;
  STACK[0x418] = &STACK[0xAA0];
  return v6();
}

uint64_t sub_100C343BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v5 - 1) = 0u;
  *v5 = 0u;
  return (*(v6 + 8 * (((a2 == 0) * a4) ^ v4)))(a1, a2 - 8);
}

uint64_t sub_100C38774()
{
  v2 = *(v0 + 8 * (v1 - 9255));
  LODWORD(STACK[0x3D58]) = 128;
  v3 = STACK[0x38B0];
  LODWORD(STACK[0x3D68]) = STACK[0x3808];
  LODWORD(STACK[0x3D60]) = STACK[0x3800];
  return v2(v3);
}

uint64_t sub_100C38884()
{
  *STACK[0x15B8] = STACK[0xB88];
  *STACK[0xEE0] = STACK[0xB04];
  return (*(v1 + 8 * v0))();
}

uint64_t sub_100C38950()
{
  v2 = ((v1 ^ 0x1956) - 18275) | 0x70C0;
  v3 = *(STACK[0x3E10] + 72) == 20;
  LODWORD(STACK[0x3DF8]) = v2;
  LODWORD(STACK[0x3DF0]) = v1 ^ 0x1956;
  return (*(v0 + 8 * (((v2 - 21286) * v3) ^ v1 ^ 0x1956)))();
}

uint64_t sub_100C389AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40)
{
  v41 = v40 + 18255;
  v42 = (((a4 - 1930432219) ^ 0xE7741E97) - 2120487953) ^ (a4 - 1930432219) ^ (((a4 - 1930432219) ^ 0x3FFFFFFF) + 1494223495) ^ (((a4 - 1930432219) ^ 0xAD0C5311 ^ (v40 + 1431)) - 874275136) ^ (((v40 - 325628696) ^ (a4 - 1930432219)) - 1971817134);
  v43 = (((v42 ^ 0xA06B83F7) - 2060266859) ^ ((v42 ^ 0x5A7A3A7C) + 2133027616) ^ ((v42 ^ 0x6301B30D) + 1180230255)) - 335722315;
  v44 = (((a40 ^ 0x8FB274BF) + 1884130113) ^ ((a40 ^ 0xDC3E426E) + 599899538) ^ ((a40 ^ 0x7A59E4BC) - 2052711612)) - 769886456;
  v45 = v43 < 0xA846A49B;
  v46 = v43 > v44;
  v47 = (v44 < 0xA846A49B) ^ v45;
  v48 = v46;
  if (v47)
  {
    v49 = v45;
  }

  else
  {
    v49 = v48;
  }

  return (*(STACK[0x200] + 8 * ((42 * (v49 ^ 1)) ^ v41)))(a1, 9);
}

uint64_t sub_100C38B6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = ((((v4 - 734836691) & 0x2BCCBFB7) - 14117) ^ v5) + v7;
  if (HIDWORD(v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = ((((v4 - 1116025280) & 0x42854B9A) - 18715) ^ a4) >= v8;
  }

  v10 = v9;
  return (*(v6 + 8 * ((101 * v10) ^ v4)))(v5);
}

uint64_t sub_100C38D3C@<X0>(int a1@<W8>)
{
  v2[26] = v1[30];
  v2[25] = v1[29];
  v2[24] = v1[28];
  v2[23] = v1[27];
  v2[22] = v1[26];
  v2[21] = v1[25];
  v2[20] = v1[24];
  v2[19] = v1[23];
  v2[18] = v1[22];
  v2[17] = v1[21];
  v2[16] = v1[20];
  return (*(v3 + 8 * a1))();
}

uint64_t sub_100C38FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(&STACK[0x75F8] + STACK[0x3E20]);
  v7 = STACK[0x3E10];
  STACK[0x3DC8] = *(&STACK[0x75E4] + STACK[0x3E20]);
  return (*(v5 + 8 * v7))(a1, 0, a3, a4, a5, v6, 0);
}

uint64_t sub_100C38FFC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3840]) = 0;
  LODWORD(STACK[0x32A8]) = 0;
  LODWORD(STACK[0x3250]) = 0;
  LODWORD(STACK[0x2BA8]) = 0;
  LODWORD(STACK[0x32B0]) = 0;
  LODWORD(STACK[0x3258]) = 0;
  LODWORD(STACK[0x2BD0]) = 0;
  LODWORD(STACK[0x2BD8]) = 0;
  LODWORD(STACK[0x3260]) = 0;
  LODWORD(STACK[0x2BE0]) = 0;
  LODWORD(STACK[0x2BE8]) = 0;
  LODWORD(STACK[0x3848]) = 0;
  LODWORD(STACK[0x32B8]) = 0;
  LODWORD(STACK[0x3270]) = 0;
  LODWORD(STACK[0x2BF0]) = 0;
  LODWORD(STACK[0x2BF8]) = 0;
  LODWORD(STACK[0x3278]) = 0;
  LODWORD(STACK[0x2C00]) = 0;
  LODWORD(STACK[0x2C08]) = 0;
  LODWORD(STACK[0x3818]) = 0;
  LODWORD(STACK[0x3280]) = 0;
  LODWORD(STACK[0x2C10]) = 0;
  LODWORD(STACK[0x2F60]) = 0;
  LODWORD(STACK[0x3288]) = 0;
  LODWORD(STACK[0x3228]) = 0;
  LODWORD(STACK[0x3230]) = 0;
  LODWORD(STACK[0x2BC8]) = 0;
  v3 = a1 - 7474;
  v4 = (v3 + 7743) | 0x98;
  v5 = LODWORD(STACK[0x2C20]) == ((v3 - 64676040) & 0x3DAFF9E ^ 0x52B2);
  LODWORD(STACK[0x3D68]) = v4;
  v6 = *(v1 + 8 * ((v5 * (v4 ^ 0x2C6D)) ^ v3));
  LODWORD(STACK[0x3B08]) = STACK[0x3710];
  v7 = STACK[0x3540];
  LODWORD(STACK[0x3E18]) = STACK[0x3540];
  LODWORD(STACK[0x3D40]) = v7;
  LODWORD(STACK[0x3808]) = v7;
  LODWORD(STACK[0x32D8]) = v7;
  LODWORD(STACK[0x3AF0]) = v2;
  LODWORD(STACK[0x3860]) = v2;
  LODWORD(v7) = STACK[0x3810];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D80]) = v7;
  LODWORD(STACK[0x2C20]) = 44;
  LODWORD(STACK[0x3AD8]) = 28;
  LODWORD(STACK[0x3D78]) = 1;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x2260];
  LODWORD(STACK[0x3B18]) = STACK[0x39A8];
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  LODWORD(STACK[0x3820]) = 1;
  LODWORD(STACK[0x3290]) = 1;
  LODWORD(STACK[0x3830]) = 1;
  LODWORD(STACK[0x3298]) = 1;
  LODWORD(STACK[0x32A0]) = 1;
  LODWORD(STACK[0x3248]) = 1;
  LODWORD(STACK[0x2B98]) = 1;
  LODWORD(STACK[0x2BA0]) = 1;
  LODWORD(STACK[0x39F0]) = STACK[0x3AE0];
  LODWORD(STACK[0x32E0]) = STACK[0x3688];
  LODWORD(STACK[0x3A28]) = STACK[0x1188];
  return v6();
}

uint64_t sub_100C392D0@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  STACK[0xD18] = a2;
  LODWORD(STACK[0x1C00]) = v6;
  LOWORD(STACK[0x1C06]) = v2;
  LODWORD(STACK[0x1C08]) = v8;
  LODWORD(STACK[0x1C0C]) = v3;
  STACK[0x1C10] = v5;
  STACK[0x1C18] = v7;
  return (*(v9 + 8 * (((a2 != a1) * (v4 - 7208)) ^ v4)))();
}

uint64_t sub_100C39318()
{
  v2 = STACK[0x1030];
  LODWORD(STACK[0xE4C]) = -769883980;
  STACK[0xB08] = v2;
  LODWORD(STACK[0x123C]) = -769884012;
  STACK[0x11D8] = 0;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 2959) ^ 0x3BFA ^ ((v0 - 18396) | 0x40A))) ^ v0)))();
}

uint64_t sub_100C39AEC@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = a2 - 1007090787;
  v65 = *(v61 + 8 * ((56221 * (v64 == -1918479307)) ^ (v64 + 1007098807)));
  v66 = STACK[0x2A0] + STACK[0x448];
  STACK[0x560] = a61 + v66;
  v67 = STACK[0x248] + v66;
  v68 = STACK[0x240] + v66;
  LODWORD(STACK[0x2C4]) = v64 + 1007098788;
  STACK[0x2E8] = (v64 + 1007098788) ^ 0x1A99u;
  *&STACK[0x2D0] = v62;
  *&STACK[0x620] = v63;
  return v65(a1, a59 + v66, v68, v67);
}

uint64_t sub_100C39CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (v5 + 187637773) & 0xF4D0FF9F;
  LODWORD(STACK[0x3B08]) = v10;
  v11 = *(v6 + 8 * ((((v10 ^ 0x5843) + 225 * (v5 ^ 0x32AF)) * v4) ^ v5));
  STACK[0x2038] = 2;
  STACK[0x1848] = STACK[0x3D40];
  STACK[0x1840] = STACK[0x3D78];
  STACK[0x1A88] = STACK[0x3B20];
  STACK[0x1A80] = STACK[0x3B18];
  STACK[0x2238] = LODWORD(STACK[0x3CF0]);
  LODWORD(STACK[0x1A90]) = STACK[0x3D48];
  LODWORD(STACK[0x28CC]) = STACK[0x3CE8];
  v12 = LODWORD(STACK[0x1A70]);
  LODWORD(STACK[0x1AA8]) = STACK[0x39A8];
  LODWORD(STACK[0x1C28]) = STACK[0x3B00];
  LODWORD(STACK[0x3830]) = STACK[0x3D90];
  STACK[0x3D98] = v7;
  LODWORD(STACK[0x2A48]) = STACK[0x2B48];
  LODWORD(STACK[0x12B4]) = v7;
  LODWORD(STACK[0x2500]) = STACK[0x3AE8];
  LODWORD(STACK[0x1C20]) = STACK[0x2B58];
  STACK[0x3698] = v9;
  STACK[0x3420] = LODWORD(STACK[0x2B78]);
  LODWORD(STACK[0x21F4]) = STACK[0x3AE0];
  v13 = LODWORD(STACK[0x31D0]);
  LODWORD(STACK[0x1BA0]) = STACK[0x2B90];
  LODWORD(STACK[0x1BC8]) = STACK[0x39E8];
  LODWORD(STACK[0x183C]) = STACK[0x23B0];
  LODWORD(STACK[0x3488]) = v8;
  LODWORD(STACK[0x2630]) = STACK[0x2B50];
  STACK[0x2228] = LODWORD(STACK[0x2B68]);
  STACK[0x3318] = LODWORD(STACK[0x2B98]);
  LODWORD(STACK[0x2158]) = STACK[0x36B8];
  LODWORD(STACK[0x1B50]) = STACK[0x3D38];
  LODWORD(STACK[0x3310]) = STACK[0x3D30];
  LODWORD(STACK[0x3308]) = STACK[0x3D28];
  LODWORD(STACK[0x3300]) = STACK[0x3D20];
  return v11(v13, a2, a3, a4, 6, v12);
}

uint64_t sub_100C39DF4()
{
  v3 = (v0 | 0xA) ^ 0x7310;
  v4 = *(v1 + 8 * ((26707 * (*STACK[0x980] == v3 - 21150)) ^ (v0 | 0xA)));
  LODWORD(STACK[0x33E8]) = 5;
  STACK[0x3D58] = STACK[0x2618];
  STACK[0x3D50] = STACK[0x3CF8];
  v5 = STACK[0x39A8];
  LODWORD(STACK[0x3E18]) = STACK[0x39A8];
  LODWORD(STACK[0x3B18]) = v5;
  v6 = STACK[0x3700];
  v7 = LODWORD(STACK[0x2A48]);
  LODWORD(STACK[0x3D40]) = v7;
  LODWORD(STACK[0x3D28]) = STACK[0x2424];
  LODWORD(STACK[0x3B08]) = v2;
  LODWORD(STACK[0x3AE8]) = STACK[0x31E8];
  LODWORD(STACK[0x3AF0]) = STACK[0x2500];
  LODWORD(STACK[0x3B00]) = STACK[0x3810];
  LODWORD(STACK[0x3D10]) = STACK[0x3318];
  LODWORD(STACK[0x3310]) = STACK[0x3774];
  LODWORD(STACK[0x3308]) = STACK[0x36A8];
  STACK[0x3998] = STACK[0x3D60];
  STACK[0x39E8] = STACK[0x3D88];
  LODWORD(STACK[0x39A0]) = STACK[0x3E40];
  LODWORD(STACK[0x3698]) = v6;
  LODWORD(STACK[0x3948]) = STACK[0x3D20];
  LODWORD(STACK[0x3710]) = v2;
  LODWORD(STACK[0x3988]) = STACK[0x3D90];
  LODWORD(STACK[0x3980]) = STACK[0x3D70];
  LODWORD(STACK[0x3300]) = STACK[0x3DD8];
  LODWORD(STACK[0x3D68]) = v3;
  STACK[0x36D0] = STACK[0x16A8];
  STACK[0x37A8] = STACK[0x3398];
  STACK[0x3860] = STACK[0x16A0];
  STACK[0x3760] = STACK[0x29B0];
  LODWORD(STACK[0x36B8]) = STACK[0x366C];
  LODWORD(STACK[0x38B8]) = STACK[0x2010];
  LODWORD(STACK[0x3550]) = STACK[0x37B8];
  STACK[0x3540] = v7;
  LODWORD(STACK[0x38C8]) = STACK[0x31D0];
  LODWORD(STACK[0x33C0]) = v7;
  LODWORD(STACK[0x3858]) = STACK[0x33A8];
  LODWORD(STACK[0x32E8]) = STACK[0x2630];
  LODWORD(STACK[0x36A0]) = STACK[0x128C];
  return v4();
}

uint64_t sub_100C3A1CC()
{
  v2 = v0 + 1391030328;
  v3 = (*(v1 + 8 * (v0 + 1391049470)))();
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_100C3A4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  STACK[0x3E10] = 0;
  v11 = STACK[0x3C48];
  v12 = *(STACK[0x3C48] + 48) | (*(STACK[0x3C38] + 59) << 16) | (v8 << 8);
  v13 = *(STACK[0x3C48] + 42);
  v14 = STACK[0x3C40];
  v15 = v13 & 0x10 | (*(STACK[0x3C40] + 27) << 40);
  v16 = v13 & 0xFFFFFFFFFFFFFFEFLL | (*(v14 + 94) << 8) | (*(v14 + 72) << 16) | (*(STACK[0x39B8] + 23) << 24) | (*(v14 + 32) << 32);
  v17 = v15 | (*(STACK[0x3C38] + 74) << 56);
  v18 = STACK[0x23AC];
  v19 = *(&off_101353600 + (LODWORD(STACK[0x23AC]) ^ 0x3DC3));
  v20 = ((*(STACK[0x3C38] + 19) << 40) | (*(STACK[0x3C40] + 83) << 56) | v12 | (*(STACK[0x3C48] + 7) << 24) | (*(STACK[0x3C38] + 1) << 32)) ^ ((13 * ((*(v19 + 255 + (((*(v11 + 89) >> 7) | (2 * *(v11 + 89))) ^ 0xA1)) + 102) ^ 0x77)) << 48);
  STACK[0x3D60] = v19 - 5;
  STACK[0x3DC8] = 1873 * (v18 ^ 0x3944u);
  v21 = v16 ^ ((*(v11 + 9) << (81 * (v18 ^ 0x44u) - 7)) + v17);
  STACK[0x75F8] = v10;
  STACK[0x7600] = STACK[0x3E20];
  STACK[0x7608] = STACK[0x3D98];
  STACK[0x7610] = STACK[0x3D78];
  STACK[0x7618] = STACK[0x3D70];
  *a8 = 0x10000000100;
  LODWORD(STACK[0x75F4]) = STACK[0x3D68];
  v22 = *(v14 + 76);
  LODWORD(STACK[0x3E58]) = v22;
  STACK[0x3DC0] = v22 << 32;
  LODWORD(STACK[0x75EC]) = STACK[0x3774];
  LODWORD(STACK[0x75F0]) = STACK[0x3910];
  return (*(v9 + 8 * v18))(104, -12067, v21, 23884, v20, 113, 4294967181, 4294961569);
}

uint64_t sub_100C3A84C()
{
  v3 = *(STACK[0xD58] + 24);
  STACK[0x1290] = v3;
  return (*(v1 + 8 * (((v3 == 0) * (((v2 + v0 - 1211085130 + 3165) | 0x1201) ^ 0x3331)) | v0)))();
}

uint64_t sub_100C3A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = (((v6 ^ 0xC4865D65) + 997827227) ^ ((v6 ^ 0x381CA96D) - 941402477) ^ (((v5 - 47) ^ 0x2AB0C4A2) + (v6 ^ 0xD54F2665))) + 1059751110;
  v8 = v7 < 0x1554B259;
  v9 = v7 > a5 + 154441912;
  if ((a5 + 154441912) < 0x1554B259 != v8)
  {
    v9 = v8;
  }

  return (*(STACK[0x200] + 8 * ((27832 * v9) ^ v5)))(a1, 3890577112);
}

uint64_t sub_100C3AA3C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v56 = *(&STACK[0xC30] + (v55 + (((v54 - 21289) | 0x28EEu) - 6818) * a1) % 0x1540);
  *(&a54 + (1633 * a1 + 2555645) % 0xA88u) = (((v56 ^ 0x34) - 34) ^ ((v56 ^ 0x36) - 32) ^ ((v56 ^ 0x70) - 102)) - 61;
  return (*(a53 + 8 * ((12393 * (a1 == 255)) ^ v54)))();
}

uint64_t sub_100C3AB78(int a1, int a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44)
{
  v54 = v44 + 60;
  v55 = v44 & 2 ^ 0xE2;
  LOBYTE(STACK[0x387]) = v54 ^ (2 * ((v54 ^ 0x3C) & (2 * ((v54 ^ 0x3C) & (2 * ((v54 ^ 0x3C) & (2 * ((v54 ^ 0x3C) & (2 * ((v55 << (a1 - 111)) & (v54 ^ 0x3C) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ 7;
  LOBYTE(STACK[0x302]) = v46 ^ 0x87;
  v56 = a6 - (v53 ^ v50);
  v57 = v45 - 98;
  v58 = v57 & 0x96 | 9;
  v59 = v58 ^ v57 & 0x3E;
  LOBYTE(STACK[0x4D6]) = v57 ^ (2 * ((v57 ^ 0x16) & (2 * ((v57 ^ 0x16) & (2 * ((v57 ^ 0x16) & (2 * ((v57 ^ 0x16) & (2 * ((v57 ^ 0x16) & (2 * ((v57 ^ 0x16) & (2 * v58) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ 0xAD;
  *((&STACK[0x2E0] | ((a2 + 7) ^ (8 - a2)) & 0xA) + 0x2A0) = v48 ^ a5;
  v60 = STACK[0x2C4];
  LOBYTE(STACK[0x43B]) = LODWORD(STACK[0x2C4]) ^ 0x68;
  v61 = v48 ^ 0xBDC1C823 ^ v60;
  LOBYTE(STACK[0x60F]) = (v53 - ((2 * v53) & 0xB6) - 37) ^ 0xDE;
  v62 = STACK[0x2B8];
  LOBYTE(STACK[0x2EC]) = ((LODWORD(STACK[0x2B8]) ^ 0x22) + 90) ^ LODWORD(STACK[0x2B8]) ^ ((LODWORD(STACK[0x2B8]) ^ 0x4C) + 56) ^ ((LODWORD(STACK[0x2B8]) ^ 0x51) + 43) ^ ((LODWORD(STACK[0x2B8]) ^ 0xBB) - 63) ^ 0xE8;
  v63 = v56 + 1543931611;
  v64 = ((v46 ^ 0xCDBDE482) + 843193214) ^ ((v46 ^ 0x5602C59B) - 1443022235) ^ ((v46 ^ 0x2C6896F2) - 745051890);
  LODWORD(STACK[0x2C8]) = a1;
  LOBYTE(STACK[0x4C0]) = (a7 - ((2 * a7) & 0x6E) - 73) ^ 0xB2;
  v65 = (v53 ^ v50) + (v50 ^ 0xC93F164B);
  v66 = ((2 * (v64 - v61 + 333332166)) & 0xFBF378FA) + ((v64 - v61 + 333332166) ^ 0x7DF9BC7D);
  LOBYTE(v64) = ((2 * (v64 - v61 - 58)) & 0xFA) + ((v64 - v61 - 58) ^ 0x7D) - 12;
  v67 = v61 + (v48 ^ 0x23C5746C) - ((2 * (v61 + (v48 ^ 0x23C5746C))) & 0x78DD1EAA) + 1013878613;
  LOBYTE(STACK[0x574]) = v64 ^ (125 - v66) ^ ((v64 ^ 0xA3) + 46) ^ ((v64 ^ 0xE2) + 109) ^ ((v64 ^ 0xCF) + 66) ^ 0x1D;
  v68 = v65 ^ (a7 + a6);
  v69 = (v62 + 1242808679 + (((v46 ^ 0x610DDE51) - 1628298833) ^ ((v46 ^ 0x7D8657A6) - 2105956262) ^ ((v46 ^ 0xAB5C3E1C) + 1420018148))) ^ v67;
  LOBYTE(STACK[0x371]) = (v56 - 37 - ((2 * (v56 - 37)) & 0xBC) + 94) ^ a8;
  *(&STACK[0x2E0] + (((1023 - v50) ^ v50) & 0x319)) = (v50 - ((2 * v50) & 0x74) - 70) ^ 0xC4;
  v70 = (v50 ^ 0xC7CD387B) - v68;
  LOBYTE(STACK[0x425]) = v48 ^ 0x30;
  *(&STACK[0x2E0] + (v67 & 0x1CA ^ 0x8Au) + (v67 & 0x1CA ^ 0x140u)) = (v65 - ((2 * v65) & 0x6E) - 73) ^ 0xB2;
  v71 = (((v48 ^ 0x54A71860) + 1144638872) ^ ((v48 ^ 0xD7C7C40C) - 950464004) ^ ((v48 ^ 0xAE578630) - 1094102072)) - (((v69 ^ 0xE0FD6B90) - 2080661261) ^ ((v69 ^ 0x40EFD6F8) + 602480027) ^ ((v69 ^ 0x9C7C323D) - 8717984));
  LOBYTE(STACK[0x6AD]) = v67 ^ 0x39;
  LOBYTE(STACK[0x55E]) = (v62 + 103 + (((v46 ^ 0x51) - 81) ^ ((v46 ^ 0xA6) + 90) ^ ((v46 ^ 0x1C) - 28))) ^ v67 ^ 0x39;
  v72 = (((v69 ^ 0x82BC304D) - 507839696) ^ ((v69 ^ 0x7502E067) + 369371910) ^ ((v69 ^ 0xCBD05F7F) - 1462332386)) - 933267105;
  v73 = ((v67 ^ 0xCDA21625) + 845015515) ^ ((v67 ^ 0x15A84CB8) - 363351224) ^ ((v67 ^ 0xE464D5C8) + 463153720);
  v74 = v73 + 1831450408;
  v75 = (v56 - 63) & 0x65 ^ 0xE1;
  LOBYTE(STACK[0x5E3]) = (v56 - 63) ^ (2 * (((v56 - 63) ^ 0x22) & (2 * (((v56 - 63) ^ 0x22) & (2 * (((v56 - 63) ^ 0x22) & (2 * (((v56 - 63) ^ 0x22) & (2 * (((v56 - 63) ^ 2) & (2 * (((v56 - 63) ^ 2) & ~(2 * (v56 - 63)) & 0x46 ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ 0x60;
  v76 = ((2 * (v73 + 40)) & 0x88 ^ 0xC4) & (v73 + 40);
  v77 = ((2 * ((v73 + 40) ^ 0xCE)) ^ 0x14) & ((v73 + 40) ^ 0xCE);
  LOBYTE(STACK[0x548]) = (v73 + 40) ^ (2 * (v77 & (4 * v77) & (16 * (v77 & (4 * v76) ^ v76)) ^ v77 & (4 * v76) ^ v76)) ^ 0xA8;
  v78 = ((2 * (v71 - 125)) & 0x22 ^ 0x11) & (v71 - 125);
  v79 = ((2 * ((v71 - 125) ^ 0xB4)) ^ 0x4A) & ((v71 - 125) ^ 0xB4) ^ (2 * ((v71 - 125) ^ 0xB4)) & 0xA4;
  LOBYTE(STACK[0x697]) = (v71 - 125) ^ (2 * ((16 * (v78 ^ 0xA5 ^ v79 & (4 * v78))) & 0x20 ^ v78 ^ 0xA5 ^ v79 & (4 * v78) ^ ((4 * (v79 ^ 0xA5)) & 0xA4 ^ ((4 * (v79 ^ 0xA5)) ^ 0x90) & (v79 ^ 0xA5) ^ 0x20) & ((16 * (v78 ^ 0xA5 ^ v79 & (4 * v78))) ^ 0x50))) ^ 0x37;
  v80 = (v70 + 28) & 0x9C ^ 0x58;
  LOBYTE(STACK[0x3F9]) = (v71 - 116) ^ v72 ^ 0x6C;
  LOBYTE(STACK[0x494]) = (v70 + 28) ^ (2 * (((v70 + 28) ^ 0x6C) & (2 * (((v70 + 28) ^ 0x6C) & (2 * (((v70 + 28) ^ 0x6C) & (2 * (((v70 + 28) ^ 0x6C) & (2 * v80) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ 0x99;
  LOBYTE(STACK[0x35B]) = (v68 + (~(2 * v68) | 0xA3) + 47) ^ 0x2B;
  LOBYTE(STACK[0x345]) = (v65 - 105 - ((2 * (v65 - 105)) & 0x6C) - 74) ^ 0xB3;
  v81 = v73 - 1232322928 + ((((v71 + 566146188) ^ v72 ^ 0xE9383E96) + 1150431438) ^ (((v71 + 566146188) ^ v72 ^ 0xAE23B7FC) + 59357608) ^ (((v71 + 566146188) ^ v72 ^ 0x471B896A) - 357464270));
  v82 = v74 - (v66 - 575145716) + 1286798532;
  LOBYTE(STACK[0x40F]) = (v66 + 12) ^ 0x6C;
  v83 = ((v68 + 667401623) ^ v70) + v65 + 667401623;
  v84 = v65 - (v56 + 1543931611) + 565997326;
  LOBYTE(STACK[0x5CD]) = (v68 - 105) ^ v70 ^ 5;
  v85 = v81 ^ (v66 + 819949846);
  v86 = v83 ^ (v56 + 182432878);
  v87 = (v71 - v66 - 2130800514) ^ v82;
  v88 = (v70 - v63 - 515498123) ^ v84;
  v89 = v84 ^ (v47 + 3655);
  LOBYTE(STACK[0x47E]) = (v86 - ((2 * v86) & 0x28) + 20) ^ 0x11;
  LOBYTE(STACK[0x681]) = v85 ^ 0x6C;
  LOBYTE(v62) = v83 ^ v89;
  v90 = v81 ^ v82;
  LOBYTE(STACK[0x32F]) = (v88 - ((2 * v88) & 0xD6) - 21) ^ 0xEE;
  LOBYTE(STACK[0x66B]) = v81 ^ v82 ^ 0x86;
  v91 = v88 + v89;
  v92 = v89 - 1498433252 + (v83 ^ v89);
  v93 = ((v90 ^ 0x13328A4C) - 186354600) ^ ((v90 ^ 0xEE429618) + 160720900) ^ ((v90 ^ 0x46CE0EBE) - 1592201050);
  LOBYTE(STACK[0x5B7]) = (v84 - ((2 * v84) & 4) + 2) ^ 0xED;
  v94 = (((v85 ^ 0x8ABA7120) - 59975774) ^ ((v85 ^ 0x4B570BC1) + 1031908673) ^ ((v85 ^ 0xC1ED7AE1) - 1220813727)) - ((v49 + (v87 ^ 0xA8113184) + 2134) ^ ((v87 ^ 0x314B8921) - 423606521) ^ ((v87 ^ 0x995AB8A5) + 1322350211)) + 1622484902;
  LOBYTE(STACK[0x532]) = v87 ^ 0x6C;
  LOBYTE(STACK[0x3E3]) = v82 ^ 0x86;
  v95 = v86 - v88;
  v96 = v86 - v88 + v92;
  v88 ^= 0x71C1F3A1u;
  v97 = (((v82 ^ 0xED0027A) + 748604819) ^ ((v82 ^ 0x81A51AFD) - 1544825578) ^ ((v82 ^ 0x34CB0A6D) + 377865606)) + 146018959 + v93;
  v98 = ((v87 ^ 0xFAABF7A6) + 757086594) ^ ((v87 ^ 0x891C3DE9) + 1587016655) ^ ((v87 ^ 0x73B7CA4F) - 1539570583);
  LOBYTE(STACK[0x468]) = (v62 - ((2 * v62) & 0xDF) + 111) ^ 0x6A;
  v99 = v91 + v88;
  v100 = ((v94 + v97) ^ 0xA70DDC95) & (2 * ((v94 + v97) & 0xA7A1DC98)) ^ (v94 + v97) & 0xA7A1DC98;
  v101 = ((2 * ((v94 + v97) ^ 0xEF0C6585)) ^ 0x915B723A) & ((v94 + v97) ^ 0xEF0C6585) ^ (2 * ((v94 + v97) ^ 0xEF0C6585)) & 0x48ADB91C;
  v102 = v101 ^ 0x48A48905;
  v103 = (v101 ^ 0x40293904) & (4 * v100) ^ v100;
  v104 = ((4 * v102) ^ 0x22B6E474) & v102 ^ (4 * v102) & 0x48ADB91C;
  v105 = (v104 ^ 0xA4A000) & (16 * v103) ^ v103;
  v106 = ((16 * (v104 ^ 0x48091909)) ^ 0x8ADB91D0) & (v104 ^ 0x48091909) ^ (16 * (v104 ^ 0x48091909)) & 0x48ADB910;
  v107 = v105 ^ 0x48ADB91D ^ (v106 ^ 0x8899100) & (v105 << 8);
  v108 = (v94 + v97) ^ (2 * ((v107 << 16) & 0x48AD0000 ^ v107 ^ ((v107 << 16) ^ 0x391D0000) & (((v106 ^ 0x4024280D) << 8) & 0x48AD0000 ^ 0x40040000 ^ (((v106 ^ 0x4024280D) << 8) ^ 0xADB90000) & (v106 ^ 0x4024280D))));
  v87 ^= 0x71C1F3A1u;
  v109 = (((v82 ^ 0x1BC51D15) + 965464830) ^ ((v82 ^ 0xF0BDFA0B) - 755812892) ^ ((v82 ^ 0x50C6F5F4) + 1921530397)) + v87 + v98;
  LOBYTE(STACK[0x319]) = (v96 - ((2 * v96) & 0xBC) - 34) ^ 0xDB;
  v87 += 1537749650;
  v110 = (v87 ^ 0x411FA02D) & (2 * (v87 & 0x921FCAAD)) ^ v87 & 0x921FCAAD;
  v111 = ((2 * (v87 ^ 0x6519352D)) ^ 0xEE0DFF00) & (v87 ^ 0x6519352D) ^ (2 * (v87 ^ 0x6519352D)) & 0xF706FF80;
  v112 = v111 ^ 0x11020080;
  v113 = (v111 ^ 0xC0047F00) & (4 * v110) ^ v110;
  v114 = ((4 * v112) ^ 0xDC1BFE00) & v112 ^ (4 * v112) & 0xF706FF80;
  v115 = (v114 ^ 0xD402FE00) & (16 * v113) ^ v113;
  v116 = ((16 * (v114 ^ 0x23040180)) ^ 0x706FF800) & (v114 ^ 0x23040180) ^ (16 * (v114 ^ 0x23040180)) & 0xF706FF80;
  v117 = v115 ^ 0xF706FF80 ^ (v116 ^ 0x7006F800) & (v115 << 8);
  v118 = v87 ^ (2 * ((v117 << 16) & 0x77060000 ^ v117 ^ ((v117 << 16) ^ 0x7F800000) & (((v116 ^ 0x87000780) << 8) & 0x77060000 ^ 0x71000000 ^ (((v116 ^ 0x87000780) << 8) ^ 0x6FF0000) & (v116 ^ 0x87000780))));
  v119 = v99 + 216461717;
  LOBYTE(STACK[0x3CD]) = v118 ^ 0xC1;
  LOBYTE(STACK[0x452]) = (v99 - (v51 & (2 * v99)) - 83) ^ 0xA8;
  v120 = (2 * (((2 * (((2 * (v88 - 74)) & 0x16 | 9) & (v88 - 74))) | 9) & (v88 - 74))) ^ 0x1E;
  LOBYTE(v99) = (v88 - 74) ^ (2 * (((v88 - 74) ^ 8) & (2 * (((v88 - 74) ^ 8) & (2 * (((v88 - 74) ^ 8) & (2 * ((v120 & 8 | (v88 - 74) & 0x97 ^ 7) ^ v120 & (v88 - 74))) ^ (v88 - 74) & 0x97 ^ 7)) ^ (v88 - 74) & 0x97 ^ 7)) ^ (v88 - 74) & 0x97 ^ 7)) ^ 0x92;
  v121 = ((v109 - 58) ^ 0x2E) & (2 * ((v109 - 58) & 0xF)) ^ (v109 - 58) & 0xF;
  LOBYTE(v112) = ((2 * ((v109 - 58) ^ 0x2E)) ^ 0x42) & ((v109 - 58) ^ 0x2E) ^ (2 * ((v109 - 58) ^ 0x2E)) & 0x20;
  LOBYTE(STACK[0x655]) = (v109 - 58) ^ (2 * (((4 * v112) ^ 0x80) & v112 & (16 * (v112 & (4 * v121) ^ v121)) ^ v112 & (4 * v121) ^ v121)) ^ 0x63;
  LOBYTE(STACK[0x5A1]) = v99;
  LOBYTE(v98) = (v97 ^ 0x5D) & (2 * (v97 & 0x98)) ^ v97 & 0x98;
  LOBYTE(v99) = ((2 * (v97 ^ 0x6D)) ^ 0xEA) & (v97 ^ 0x6D) ^ (2 * (v97 ^ 0x6D)) & 0xF4;
  LOBYTE(v112) = v99 ^ 0x15;
  LOBYTE(v99) = v98 ^ 0xF5 ^ (v99 ^ a23) & (4 * v98);
  LOBYTE(STACK[0x506]) = v97 ^ (2 * ((16 * v99) ^ v99 ^ ((16 * v99) ^ 0x50) & ((4 * v112) & 0xF0 ^ ((4 * v112) ^ 0xD0) & v112 ^ 0x20))) ^ 0xBE;
  LOBYTE(STACK[0x303]) = (v92 - 2 * (v92 & 0x3F) + 63) ^ 0x3A;
  v122 = v109 - 1687533974;
  LOBYTE(STACK[0x51C]) = v108 ^ 0xCE;
  v123 = v96 ^ 0x7295A1ED ^ v119;
  v124 = v96 ^ 0x7295A1ED ^ (v88 - 305660609);
  v125 = v108 ^ 0x54750F4F;
  v126 = v108 ^ v122;
  LOBYTE(v98) = ((v96 ^ 0xED ^ (v88 + 63)) - ((2 * (v96 ^ 0xED ^ (v88 + 63))) & 0x6A) + 53) ^ 0x81;
  v127 = (v108 ^ 0x54750F4F) + v94;
  v128 = (((1814211776 - v127) ^ 0x7545E483) - 426199107) ^ (1814211776 - v127) ^ (((1814211776 - v127) ^ 0xBD4AF853) + 781691757) ^ (((1814211776 - v127) ^ 0xDBD24FEF) + 1208949969) ^ (((1814211776 - v127) ^ 0x7FFFFFFF) - 333271871);
  LOBYTE(STACK[0x43C]) = v98;
  LOBYTE(v94) = (v96 ^ 0xED) + 1;
  LOBYTE(v98) = v94 & 0xD4 ^ 0xD;
  LOBYTE(STACK[0x58B]) = v94 ^ (2 * ((v94 ^ v51) & (2 * ((v94 ^ v51) & (2 * ((v94 ^ v51) & (2 * ((v94 ^ v51) & (2 * (((2 * (v98 ^ v94 & 0xE)) ^ 0x14) & (v94 ^ v51) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ 0xD1;
  v129 = (v125 - ((2 * v125) & 0x7422854E) + 974209703) ^ v118;
  LOBYTE(STACK[0x63F]) = (v125 - ((2 * v125) & 0x4E) - 89) ^ v118 ^ 0xD7;
  v130 = (((v129 ^ 0xF5FDB58A) + 1667754667) ^ ((v129 ^ 0x42728D71) - 722939310) ^ ((v129 ^ 0x5EE1C040) - 931422367)) + (((v126 ^ 0x341C15D7) - 1349869449) ^ ((v126 ^ 0x1C8539FA) - 2028762020) ^ ((v126 ^ 0x7CEC2362) - 411396412));
  LOBYTE(v112) = (v125 + 41) ^ 0x13;
  v131 = (2 * ((v125 + 41) & 0xB2 ^ 0xA1)) & 0x20 ^ (v125 + 41) & 0xB2 ^ 0xA1 ^ ((2 * ((v125 + 41) & 0xB2 ^ 0xA1)) ^ 0x42) & v112;
  LOBYTE(v112) = ((2 * v112) ^ 0x42) & v112 ^ (2 * v112) & 0xA0;
  v132 = (4 * v131) & 0xA0 ^ v131 ^ ((4 * v131) ^ 0x84) & (v112 ^ 0xA1);
  *(&STACK[0x2E0] + ((v123 - ((2 * v123) & 0xFFFFFFA4) - 46) & 0xD ^ 9) + (v123 & 0xD ^ 4u)) = (v123 - ((2 * v123) & 0xA4) - 46) ^ 0xD7;
  v133 = -v95 - (v96 ^ 0x7295A1ED);
  LOBYTE(STACK[0x3B7]) = (v125 + 41) ^ (2 * ((16 * v132) & 0x20 ^ v132 ^ ((16 * v132) ^ 0x10) & ((v112 ^ 1) & (4 * (v112 ^ 0xA1)) ^ 0x21))) ^ 0x9C;
  v134 = (v124 ^ 0x416D8FB1) + v123;
  v135 = v125 - 2 * (v130 - 1339581067) - 383858092;
  v136 = (v128 & 0x9F3477FA ^ 0xC2024C0) + ((v127 - 1) & 0x9F3477FA);
  LOBYTE(STACK[0x4F0]) = v126 ^ 0x23;
  LOBYTE(STACK[0x3A1]) = (((-64 - v127) ^ 0x83) - 67) ^ (-64 - v127) ^ (((-64 - v127) ^ 0x53) + 109) ^ (((-64 - v127) ^ 0xEF) - 47) ^ v127 ^ 0xAC;
  v137 = v130 - 1339581067 + (v126 ^ 0x54750F4F);
  LOBYTE(v118) = v130 + 117 + (v126 ^ 0x4F) - 91;
  v138 = (v96 ^ 0x7295A1ED) - 2 * v134 - (v136 & ((((v96 ^ 0x7295A1ED) + v52) & 0xF39FEFFE) + (((v96 ^ 0x8D6A5E12) + 466965812) & 0xF39FEFFE))) - 17831979;
  LOBYTE(STACK[0x575]) = (v133 - ((2 * v133) & 0x34) - 102) ^ 0x9F;
  LOBYTE(STACK[0x629]) = ((v135 ^ 0x8A) + 13) ^ v135 ^ ((v135 ^ 0x2F) - 86) ^ ((v135 ^ 0x27) - 94) ^ ((v135 ^ 0xFB) + 126) ^ 0x15;
  LOBYTE(STACK[0x426]) = (v138 - ((2 * v138) & 0x34) + 26) ^ 0x1F;
  v139 = (v128 ^ 0x208045C3) - (v130 - 1339581067) + 420335147 - ((2 * ((v128 ^ 0x208045C3) - (v130 - 1339581067))) & 0x321B9C56);
  v140 = (v133 ^ 0x4CA2E903) - v134;
  v141 = v123 + 752108238 + v134;
  v142 = v138 - v134 + 1248601953;
  v143 = v134 - 537691218;
  LOBYTE(v123) = v134 - 30;
  LOBYTE(v134) = (v134 - 30) & 0x89 ^ 0xAE;
  LOBYTE(v134) = v123 ^ (2 * ((v123 ^ 0x3C) & (2 * ((v123 ^ 0x3C) & (2 * ((v123 ^ 0x3C) & (2 * ((v123 ^ 0x3C) & (2 * ((v123 ^ 0x3C) & (2 * ((v123 ^ 0x3C) & (2 * v123) & 0x7A ^ v134)) ^ v134)) ^ v134)) ^ v134)) ^ v134)) ^ v134)) ^ 0x8C;
  v144 = ((v142 & 0x20 | v52) ^ v142 & 0xFFFFFFDF) + ((2 * v142) & 0xC8555598);
  LOBYTE(STACK[0x6AE]) = v134;
  LOBYTE(STACK[0x55F]) = (v141 - ((2 * v141) & 0xA2) + 81) ^ 0x54;
  v145 = v135 - (v130 - 1561736568);
  LOBYTE(STACK[0x4DA]) = (v130 - 120) ^ (-20 - v130) ^ (((v130 - 120) ^ 0x7A) - 14) ^ (((v130 - 120) ^ 0x1B) - 111) ^ (((v130 - 120) ^ 0xEA) + 98) ^ 0x18;
  LOBYTE(STACK[0x38B]) = ((v118 ^ 0xDF) - 8) ^ v118 ^ ((v118 ^ 0xCE) - 25) ^ ((v118 ^ 0x3D) + 22) ^ ((v118 ^ 0xFB) - 44) ^ 0xBB;
  v146 = v140 ^ v143 ^ (v144 + 466965812);
  LOBYTE(v143) = (-78 - v144) & 0xAA | 1;
  LOBYTE(v134) = v143 ^ (v144 + 77) & 0x52;
  LOBYTE(v119) = (v144 + 77) ^ 0x2A;
  LOBYTE(STACK[0x698]) = (v144 + 77) ^ (2 * (v119 & (2 * (v119 & (2 * (v119 & (2 * (v119 & (2 * (((2 * ((v144 + 77) & (2 * v143) ^ v134)) ^ 4) & v119 ^ v134)) ^ v134)) ^ v134)) ^ v134)) ^ v134)) ^ 0xFD;
  v147 = (v145 - 1075115525) ^ (v130 - ((2 * v130 + 540422726) & 0x321B9C56) - 1456937138) ^ v139;
  v148 = v137 - v145;
  v149 = ((v148 + 449483023) ^ 0xF3377B8F) & (2 * ((v148 + 449483023) & 0xF3B77BAE)) ^ (v148 + 449483023) & 0xF3B77BAE;
  v150 = ((2 * ((v148 + 449483023) ^ 0xF7374A87)) ^ 0x9006252) & ((v148 + 449483023) ^ 0xF7374A87) ^ (2 * ((v148 + 449483023) ^ 0xF7374A87)) & 0x4803128;
  v151 = v150 ^ 0x4801129;
  v152 = (v150 ^ 0x2000) & (4 * v149) ^ v149;
  v153 = ((4 * v151) ^ 0x1200C4A4) & v151 ^ (4 * v151) & 0x4803128;
  v154 = (v153 ^ 0x20) & (16 * v152) ^ v152;
  v155 = ((16 * (v153 ^ 0x4803109)) ^ 0x48031290) & (v153 ^ 0x4803109) ^ (16 * (v153 ^ 0x4803109)) & 0x4803120;
  v156 = v154 ^ 0x4803129 ^ (v155 ^ 0x1000) & (v154 << 8);
  LOBYTE(STACK[0x613]) = v139 ^ 0x47;
  v157 = v141 - v144 - 2050785610;
  v158 = v146 + 237128961;
  v159 = (v146 - ((2 * v146) & 0xA2) - 47) ^ 0xD4;
  v160 = (v148 + 449483023) ^ (2 * (((v156 << 16) ^ 0x31290000) & (((v155 ^ 0x4802129) << 8) & 0x4800000 ^ 0x4800000 ^ (((v155 ^ 0x4802129) << 8) ^ 0x80310000) & (v155 ^ 0x4802129)) ^ v156 ^ ((v156 << 16) & 0x4800000 | 0x3029)));
  LOBYTE(STACK[0x549]) = v159;
  LOBYTE(STACK[0x3FA]) = (v157 - ((2 * v157) & 0x7C) - 66) ^ 0xBB;
  LOBYTE(STACK[0x375]) = v147 ^ 0x6C;
  LOBYTE(v156) = (v140 - ((2 * v140) & 0x22) - 111) ^ 0x94;
  LOBYTE(STACK[0x410]) = v156;
  LOBYTE(STACK[0x4C4]) = (v145 - 47) ^ (66 - v145) ^ (((v145 - 47) ^ 0xD1) + 62) ^ (((v145 - 47) ^ 0x6F) - 124) ^ (((v145 - 47) ^ 0x52) - 65) ^ 0x7F;
  LOBYTE(STACK[0x682]) = v156;
  LOBYTE(STACK[0x5FD]) = v160 ^ 0xC2;
  *(&STACK[0x2E0] + (v160 & 0x1CE ^ 0x18E) + ((322 - v148) & 0x1CE)) = v139 ^ 0x47;
  v161 = v145 + 1457225705 + (((v139 ^ 0xAFA2D6EA) + 1348282646) ^ ((v139 ^ 0x81916A11) + 2121176559) ^ ((v139 ^ 0x373E72D0) - 926839504));
  v162 = v144 + 2112006083 + v140 + ((35477564 - v144) & 0x1BD55534) + ((v144 + 2112006083) & 0x1BD55534);
  v163 = (v162 + v157) ^ v140;
  v164 = (v160 ^ 0xFAB779AE) + v161;
  v165 = v162 + v157 - 1688062186;
  v166 = v163 ^ v162;
  v167 = (v164 + 420335147 - ((2 * v164) & 0x321B9C56)) ^ v139;
  v168 = v164 - 626207647;
  v169 = (v168 ^ 0xA4A142B5) & (2 * (v168 & 0xC0B562B5)) ^ v168 & 0xC0B562B5;
  v170 = ((2 * ((v164 - 626207647) ^ 0xA5A187DD)) ^ 0xCA29CAD0) & ((v164 - 626207647) ^ 0xA5A187DD) ^ (2 * ((v164 - 626207647) ^ 0xA5A187DD)) & 0x6514E568;
  v171 = v170 ^ 0x25142528;
  v172 = (v170 ^ 0x8040) & (4 * v169) ^ v169;
  v173 = ((4 * v171) ^ 0x945395A0) & v171 ^ (4 * v171) & 0x6514E568;
  v174 = (v173 ^ 0x4108520) & (16 * v172) ^ v172;
  v175 = ((16 * (v173 ^ 0x61046048)) ^ 0x514E5680) & (v173 ^ 0x61046048) ^ (16 * (v173 ^ 0x61046048)) & 0x6514E560;
  v176 = v174 ^ 0x6514E568 ^ (v175 ^ 0x41044400) & (v174 << 8);
  v177 = v168 ^ (2 * ((v176 << 16) & 0x65140000 ^ v176 ^ ((v176 << 16) ^ 0x65680000) & (((v175 ^ 0x2410A168) << 8) & 0x65140000 ^ 0x61100000 ^ (((v175 ^ 0x2410A168) << 8) ^ 0x14E50000) & (v175 ^ 0x2410A168))));
  v178 = v163 + v165;
  v179 = v167 ^ v161;
  v180 = v166 ^ v158;
  LOBYTE(STACK[0x533]) = (v166 - ((2 * v166) & 0x56) + 43) ^ 0x2E;
  LOBYTE(STACK[0x498]) = v177 ^ 9;
  LOBYTE(STACK[0x35F]) = v167 ^ v161 ^ 0x6C;
  v181 = v167 ^ v161 ^ ((((v147 ^ 0x2E2CB96F) - 1755702525) ^ ((v147 ^ 0x49ADF977) - 254059749) ^ ((v147 ^ 0x67814018) - 554179978)) + 1420536467);
  LOBYTE(STACK[0x3E4]) = ((v166 ^ v158) - ((2 * (v166 ^ v158)) & 0x12) + 9) ^ 0xC;
  v182 = (((v177 ^ 0xAD427098) + 1140560520) ^ ((v177 ^ 0x80AEA635) + 1847018539) ^ ((v177 ^ 0xED707EC8) + 63544536)) + v167;
  LOBYTE(v175) = (((v177 ^ 0x98) - 120) ^ ((v177 ^ 0x35) + 43) ^ ((v177 ^ 0xC8) - 40)) + v167 + 80;
  v183 = v181 ^ 0xC09CA865 ^ v177;
  v184 = (v180 ^ v165) + v178;
  LOBYTE(v151) = (~(2 * v178) + v178) ^ 0xFA;
  LOBYTE(v178) = v184 + v166;
  v185 = (v184 + v166) ^ 0x684BEC0;
  LOBYTE(STACK[0x349]) = ((v175 ^ 0x1E) + 43) ^ v175 ^ ((v175 ^ 0x6F) + 92) ^ ((v175 ^ 0x42) + 119) ^ ((v175 ^ 0xF8) - 51) ^ 0xA7;
  LOBYTE(STACK[0x51D]) = v151;
  LOBYTE(STACK[0x5E7]) = v181 ^ 0x6C;
  v186 = v183 - 774195835 + v182;
  v187 = v186 + v179;
  v188 = v183 + 854477334 + ((((v186 + v179) ^ 0x5C20FC2C) - 1556771770) ^ (((v186 + v179) ^ 0x5534378F) - 1440659481) ^ (((v186 + v179) ^ 0xF907563) - 259717877));
  v189 = (v188 ^ 0xD27FF630) & (2 * (v188 & 0xD37FE740)) ^ v188 & 0xD37FE740;
  v190 = ((2 * (v188 ^ 0x720E3430)) ^ 0x42E3A6E0) & (v188 ^ 0x720E3430) ^ (2 * (v188 ^ 0x720E3430)) & 0xA171D370;
  v191 = v190 ^ 0xA1105110;
  v192 = (v190 ^ 0x618200) & (4 * v189) ^ v189;
  v193 = ((4 * v191) ^ 0x85C74DC0) & v191 ^ (4 * v191) & 0xA171D370;
  v194 = (v193 ^ 0x81414140) & (16 * v192) ^ v192;
  v195 = ((16 * (v193 ^ 0x20309230)) ^ 0x171D3700) & (v193 ^ 0x20309230) ^ (16 * (v193 ^ 0x20309230)) & 0xA171D370;
  v196 = v194 ^ 0xA171D370 ^ (v195 ^ 0x1111300) & (v194 << 8);
  v197 = v188 ^ (2 * ((v196 << 16) & 0x21710000 ^ v196 ^ ((v196 << 16) ^ 0x53700000) & (((v195 ^ 0xA060C070) << 8) & 0x21710000 ^ (((v195 ^ 0xA060C070) << 8) ^ 0x71D30000) & (v195 ^ 0xA060C070) ^ 0x200000)));
  v198 = v185 + (v180 ^ v165);
  v199 = v186 + v181;
  LOBYTE(v196) = (v165 - ((2 * v165) & 0x70) + 56) ^ 0x3D;
  v200 = v184 + v180;
  LOBYTE(STACK[0x66C]) = v196;
  *(&STACK[0x2E0] + (((v197 & 0x6A ^ 0x20) + (v197 & 0x6A ^ 0x4A)) | (((v199 + 568171218) ^ (v199 + 1147503252) ^ (((v199 + 1147503252) ^ 0x9B44093D) + 347682818) ^ (((v199 + 1147503252) ^ 0x462C1360) - 909041059) ^ (((v199 + 1147503252) ^ 0x9F) + 1880280228) ^ 0xFFFFFFC3) & (v199 + 209) ^ (46 - v199)) & 0xCE)) = (v178 - ((2 * v178) & 0xB0) - 40) ^ 0x1D;
  v201 = v187 ^ v186;
  LOBYTE(STACK[0x656]) = (v184 + v180 - 47 - ((2 * (v184 + v180 - 47)) & 0x5A) + 45) ^ 0x28;
  v202 = v198 - 186720502;
  v203 = v185 ^ v184;
  LOBYTE(STACK[0x507]) = (v198 - ((2 * v198) & 0xEC) - 10) ^ 0xF3;
  LOBYTE(STACK[0x5D1]) = v187 ^ 0xAC;
  LOBYTE(STACK[0x5BB]) = v201 ^ 0xAC;
  LOBYTE(STACK[0x333]) = v197 ^ 0xCC;
  v204 = ((v201 ^ 0x19EC08F3) + 354763598) ^ ((v201 ^ 0x82AB6A3A) - 1906171515) ^ ((v201 ^ 0x9DC3DC09) - 1861576776);
  v205 = ((v197 ^ 0xC8056DC8) + 1409034491) ^ ((v197 ^ 0x3F2BEDEC) - 1529698081) ^ ((v197 ^ 0x6452C184) - 5536585);
  LOBYTE(v201) = ((v199 - 108) ^ 0xBD) & (2 * ((v199 - 108) & 0x3D)) ^ (v199 - 108) & 0x3D;
  v206 = v205 - 329655689;
  LOBYTE(v184) = ((2 * ((v199 - 108) ^ 0xB7)) ^ 0x14) & ((v199 - 108) ^ 0xB7) ^ (2 * ((v199 - 108) ^ 0xB7)) & 0x8A;
  LOBYTE(STACK[0x482]) = (v199 - 108) ^ (2 * ((v184 ^ 0x8A) & (16 * (v184 & (4 * v201) ^ v201)) & ((4 * (v184 ^ 0x8A)) ^ 0x20) ^ v184 & (4 * v201) ^ v201)) ^ 0x51;
  v207 = v199 - 731728943 + v205 - 329655689;
  v208 = v203 - (v200 - 731728943) + v202;
  v209 = (v202 ^ v185) - v202;
  v210 = v200 + 2030404875 + v202;
  v211 = v187 ^ 0xEA8F96 ^ (v205 - ((2 * (v205 - 329655689)) & 0xCDC62AC) - 221770803);
  LOBYTE(STACK[0x3B8]) = (v203 - ((2 * v203) & 0xC4) - 30) ^ 0xE7;
  v212 = v211 - v206 - ((2 * (v211 - v206)) & 0xB28B732A) + 1497741717;
  v213 = v209 ^ v208;
  LOBYTE(STACK[0x31D]) = (((v207 + 53) ^ 0x37) + 52) ^ (v207 + 53) ^ (((v207 + 53) ^ 0x3C) + 57) ^ (((v207 + 53) ^ 0x4F) + 76) ^ (((v207 + 53) ^ 0xBF) - 68) ^ 0x97;
  v214 = v204 - v199 + 558847664 + v206 - 2014791436 - ((2 * (v204 - v199 + 558847664 + v206)) & 0xFD17BB4) + 1254;
  LOBYTE(STACK[0x46C]) = v212 ^ 0xF9;
  LOBYTE(STACK[0x4F1]) = (v210 - ((2 * v210) & 0xD6) - 21) ^ 0xEE;
  LOBYTE(STACK[0x640]) = (v209 - 2 * (v209 & 0xF) - 113) ^ 0x8A;
  LOBYTE(STACK[0x3A2]) = (v202 - ((2 * v202) & 0xEC) - 10) ^ 0x34;
  LOBYTE(STACK[0x456]) = (v204 - v199 - 80 + v206 - 12 - ((2 * (v204 - v199 - 80 + v206)) & 0xB4) - 26) ^ 0xB6;
  LOBYTE(STACK[0x5A5]) = v206 ^ 0xAB;
  v215 = v214 ^ 0xDEAD044F ^ v212;
  v216 = v206 ^ 0x7D4B72C7;
  v217 = (v202 ^ 0x7D4B72C7) - 293619852 + v213;
  v218 = v210 + 1827379206 - v213;
  v219 = ((v214 ^ 0xC3A1E988) + 1012799096) ^ ((v214 ^ 0x4F6A5F48) - 1332371272) ^ ((v214 ^ 0xB230B1A) - 186845978);
  v220 = (((v215 + 57535567) ^ 0x18717DC3) - 99648860) ^ (v215 + 57535567) ^ (((v215 + 57535567) ^ 0xA2CB4EBD) + 1085622750) ^ (((v215 + 57535567) ^ 0x8BC4341E) + 1773810559) ^ (((v215 + 57535567) ^ 0x2CFFFFFF) - 830343008);
  LOBYTE(STACK[0x62A]) = (v208 + (~(2 * v208) | 0x2F) + 105) ^ 0x6D;
  v221 = (v213 - 437521488) ^ (v208 - 1247957718);
  LOBYTE(STACK[0x307]) = (((v215 + 79) ^ 0xC3) - 92) ^ (v215 + 79) ^ (((v215 + 79) ^ 0xBD) - 34) ^ (((v215 + 79) ^ 0x1E) + 127) ^ (-(v215 + 79) - 97) ^ 0xF3;
  LOBYTE(v210) = (v218 + 26) & 0x11 ^ 0x74;
  LOBYTE(v201) = (v218 + 26) ^ 0x28;
  LOBYTE(STACK[0x38C]) = (v218 + 26) ^ (2 * (v201 & (2 * (v201 & (2 * (v201 & (2 * (v201 & (2 * (v201 & (2 * (((2 * (v218 + 26)) & 0x52 | 0x29) & (v218 + 26))) ^ v210)) ^ v210)) ^ v210)) ^ v210)) ^ v210)) ^ 0x14;
  v222 = v207 - v215 + 804012055;
  v223 = (v222 ^ 0x2E655FEF) & (2 * (v222 & 0xAF691FEC)) ^ v222 & 0xAF691FEC;
  v224 = ((2 * (v222 ^ 0x60B77B27)) ^ 0x9FBCC996) & (v222 ^ 0x60B77B27) ^ (2 * (v222 ^ 0x60B77B27)) & 0xCFDE64CA;
  v225 = v224 ^ 0x40422449;
  v226 = (v224 ^ 0x8F8C4080) & (4 * v223) ^ v223;
  v227 = ((4 * v225) ^ 0x3F79932C) & v225 ^ (4 * v225) & 0xCFDE64C8;
  v228 = v226 ^ 0xCFDE64CB ^ (v227 ^ 0xF580000) & (16 * v226);
  v229 = ((16 * (v227 ^ 0xC08664C3)) ^ 0xFDE64CB0) & (v227 ^ 0xC08664C3) ^ (16 * (v227 ^ 0xC08664C3)) & 0xCFDE64C0;
  v230 = v229 & 0xCDE61530 ^ v228 ^ (v229 ^ 0xCDC6444B) & ((v228 << 8) ^ 0x1382DE30);
  v231 = v220 ^ (v219 + 1032219396);
  v232 = v216 - 19393475 + v215;
  v233 = ((v229 << 8) ^ 0xBA29530) & (v229 ^ 0xCDC6444B) ^ v229 & 0xCDE61530;
  v234 = v222 ^ (2 * (v233 & 0x4DE61530 ^ v230 ^ ((v230 << 16) ^ 0xAD2D1530) & (v233 ^ 0x2180000) ^ ((v230 << 16) ^ 0xAD2D1530) & 0x4FDE0400));
  v235 = ((2 * (v213 - 904487300)) & 0x37AAAA68) + ((v213 - 904487300) ^ 0x1BD55534);
  v236 = (v235 ^ v217) + 2 * (v235 & v217);
  LOBYTE(STACK[0x614]) = (v217 - ((2 * v217) & 0x84) + 66) ^ 0x47;
  LOBYTE(STACK[0x4C5]) = (v221 - ((2 * v221) & 0x12) + 9) ^ 0xC;
  LOBYTE(v235) = ((59 - v213) | 0x13) ^ (v213 - 60) & 0xB6;
  LOBYTE(v225) = (v213 - 60) ^ 0x6C;
  LOBYTE(v225) = (v213 - 60) ^ (2 * (v225 & (2 * (v225 & (2 * (v225 & (2 * (v225 & (2 * (v225 & (2 * (v225 & (2 * v235) ^ v235)) ^ v235)) ^ v235)) ^ v235)) ^ v235)) ^ v235));
  LOBYTE(STACK[0x58F]) = v234 ^ 0x16;
  LOBYTE(v235) = (v232 ^ 0xB6) & (2 * (v232 & 0x37)) ^ v232 & 0x37;
  LOBYTE(v201) = ((2 * (v232 ^ 0xD6)) ^ 0xC2) & (v232 ^ 0xD6) ^ (2 * (v232 ^ 0xD6)) & 0xE0;
  v237 = v236 + 1199087324;
  LOBYTE(STACK[0x440]) = v232 ^ (2 * (((4 * v201) ^ 0x80) & (v201 ^ 0xC1) & (16 * ((v201 ^ 0xC1) & (4 * v235) ^ v235)) ^ (v201 ^ 0xC1) & (4 * v235) ^ v235)) ^ 0x5B;
  LOBYTE(STACK[0x4DB]) = v225 ^ 0x5F;
  v238 = v232 + (((v220 ^ 0xE4CF040B) + 1100010783) ^ ((v220 ^ 0xD6DA6ADE) + 1938144204) ^ ((v220 ^ 0x2F94964A) - 1966389408));
  v239 = ((v231 ^ 0xEE4BF35C) + 1864332166) ^ ((v231 ^ 0xA3BF76E6) + 585889344) ^ ((v231 ^ 0x50757D25) - 786301443);
  v240 = (v234 ^ 0x9E5131A3) + 702917253;
  v241 = (v240 ^ 0xFA1B8437) & (2 * (v240 & 0xFC1B86A7)) ^ v240 & 0xFC1B86A7;
  v242 = ((2 * (v240 ^ 0xFA198C7B)) ^ 0xC0415B8) & (v240 ^ 0xFA198C7B) ^ (2 * (v240 ^ 0xFA198C7B)) & 0x6020ADC;
  v243 = v242 ^ 0x2020A44;
  v244 = (v242 ^ 0x20000D8) & (4 * v241) ^ v241;
  v245 = ((4 * v243) ^ 0x18082B70) & v243 ^ (4 * v243) & 0x6020ADC;
  v246 = (v245 ^ 0xA50) & (16 * v244) ^ v244;
  v247 = ((16 * (v245 ^ 0x602008C)) ^ 0x6020ADC0) & (v245 ^ 0x602008C) ^ (16 * (v245 ^ 0x602008C)) & 0x6020AD0;
  v248 = v247 ^ 0x602021C;
  v249 = v246 ^ 0x6020ADC ^ (v247 ^ 0x800) & (v246 << 8);
  v250 = v239 - 245190161;
  v251 = v240 ^ (2 * ((v249 << 16) & 0x6020000 ^ v249 ^ ((v249 << 16) ^ 0xADC0000) & ((v248 << 8) & 0x6020000 ^ ((v248 << 8) ^ 0x20A0000) & v248 ^ 0x4000000)));
  v252 = v215 - v239 - ((2 * (v215 - v239) - 1358661944) & 0xFEAD9A7A) - 690419551;
  v253 = v251 ^ (v239 - 245190161);
  v254 = ((v253 ^ 0xD2649570) - 2 * ((v253 ^ 0xD2649570) & 0x7F56CD3F ^ v253 & 2) - 11088579) ^ v252;
  v255 = v213 - v221 + 984400669;
  LOBYTE(STACK[0x2F1]) = v231 ^ 0xF3;
  v256 = (v218 - 842598717) ^ 0xAE84E7D9;
  LOBYTE(STACK[0x376]) = (v255 - ((2 * v255) & 0xAE) + 87) ^ 0x52;
  LOBYTE(STACK[0x42A]) = v251 ^ 0x73;
  LOBYTE(v231) = (v256 - 113) & 0x4D ^ 0xF8;
  LOBYTE(v156) = (v256 - 113) ^ 0x1C;
  LOBYTE(STACK[0x5FE]) = (v256 - 113) ^ (2 * (v156 & (2 * (v156 & (2 * (v156 & (2 * (v156 & (2 * (v156 & (2 * ((v256 - 113) & (2 * (v256 - 113)) & 0x3A ^ v231)) ^ v231)) ^ v231)) ^ v231)) ^ v231)) ^ v231)) ^ 0x48;
  LOBYTE(STACK[0x579]) = v252 ^ 0x51;
  v257 = (v256 + 637612332) ^ (v221 - 1908921802);
  LOBYTE(STACK[0x4AF]) = (v237 + (~(2 * v237) | 0x49) + 92) ^ 0x5E;
  LOBYTE(STACK[0x563]) = v250 ^ 3;
  LOBYTE(STACK[0x360]) = (v221 + 54 - ((2 * (v221 + 54)) & 0x64) - 78) ^ 0xD8;
  LOBYTE(STACK[0x6B2]) = (v238 + 91) ^ (120 - v238) ^ (((v238 + 91) ^ 0x14) + 57) ^ (((v238 + 91) ^ 0x2A) + 7) ^ (((v238 + 91) ^ 0x12) + 63) ^ 0xBF;
  v258 = v257 ^ 0x267B066F ^ v255;
  v259 = v252 & 0x931467FA ^ 0x93144538;
  v260 = v252 & 0x931467FA ^ 0x22C2;
  v261 = v258 + (v257 ^ 0x267B066F);
  v262 = ((v221 - 1908921802) ^ 0x267B066F) - 721201178;
  v263 = (v253 ^ 0xD2649570) + 1440614270 + v254;
  v264 = (v257 ^ 0x1AB5DE71) - (v260 | v259);
  v265 = v238 + 1272466062 + v254;
  v266 = ((v250 ^ 0xC5D494BB) - 990250131) ^ ((v250 ^ 0x3C0D291A) + 1025525454) ^ ((v250 ^ 0xDFA2BBCE) - 560999398);
  LOBYTE(v221) = ((2 * (v263 ^ 0xFE)) ^ 0xF8) & (v263 ^ 0xFE) ^ (2 * (v263 ^ 0xFE)) & 0x7C;
  LOBYTE(v257) = v221 ^ 4;
  LOBYTE(v221) = ((2 * v263) & 4 ^ 0x82) & v263 ^ 0x7C ^ (v221 ^ 0x18) & (4 * (((2 * v263) & 4 ^ 0x82) & v263));
  LOBYTE(STACK[0x414]) = v263 ^ (2 * ((16 * v221) ^ v221 ^ ((16 * v221) ^ 0x40) & (((4 * v257) ^ 0xF0) & v257 ^ (4 * v257) & 0x70))) ^ 0x96;
  LOBYTE(v235) = (v264 + 45) & 0xD5 ^ 4;
  v267 = v261 + v262;
  LOBYTE(STACK[0x499]) = (v264 + 45) ^ (2 * (((v264 + 45) ^ 0x4C) & (2 * (((v264 + 45) ^ 0x4C) & (2 * (((v264 + 45) ^ 0x4C) & (2 * (((v264 + 45) ^ 0x4C) & (2 * (((v264 + 45) ^ 0xC) & (2 * ((v264 + 45) & (2 * (v264 + 45)) & 0x1A ^ v235)) ^ v235)) ^ v235)) ^ v235)) ^ v235)) ^ v235)) ^ 0xD0;
  v268 = v237 + v258 + 1315179103;
  LOBYTE(STACK[0x5E8]) = (v261 + (~(2 * v261) | 0x39) + 100) ^ 0x66;
  LOBYTE(STACK[0x3FE]) = (v266 + 2) ^ (-45 - v266) ^ (((v266 + 2) ^ 0xD0) - 5) ^ (((v266 + 2) ^ 0xD9) - 12) ^ (((v266 + 2) ^ 0x23) + 10) ^ 0xB9;
  LOBYTE(v237) = v263 + v266 + 2;
  LOBYTE(STACK[0x34A]) = (v268 - ((2 * v268) & 0x92) - 55) ^ 0xCC;
  LOBYTE(STACK[0x54D]) = ((v265 ^ 0x99) - 62) ^ v265 ^ ((v265 ^ 0xB) + 84) ^ ((v265 ^ 0xEA) - 77) ^ ((v265 ^ 0xDF) - 120) ^ 0xCB;
  v269 = v265 - (((v253 ^ 0x9C8E1DF3) - 493950503) ^ ((v253 ^ 0xEF0E8A60) - 1861321140) ^ ((v253 ^ 0x9D2ADAFD) - 483774761));
  LOBYTE(STACK[0x5D2]) = (v262 - ((2 * v262) & 0x2A) - 107) ^ 0x90;
  LOBYTE(v254) = (v267 - 75) & 0xDE ^ 0x8B;
  LOBYTE(v259) = (v267 - 75) ^ 0x48;
  LOBYTE(STACK[0x483]) = (v267 - 75) ^ (2 * (v259 & (2 * (v259 & (2 * (v259 & (2 * (v259 & (2 * (v259 & (2 * ((v267 - 75) & (2 * v254) ^ v254)) ^ v254)) ^ v254)) ^ v254)) ^ v254)) ^ v254)) ^ 0xDB;
  LOBYTE(STACK[0x686]) = (v237 - 118) ^ (2 * ((((((v263 + v266 - 209223934 + 1773811338) & 0x20) != 0) << 6) | 0x20) & (v237 - 118))) ^ 0xCC;
  v270 = (v269 - ((2 * (v269 + 293114271)) & 0xDEAA8D74) - 2133993383) ^ v253 ^ 0x81FF0BD4;
  v271 = (v269 + 13490267 + ((2 * ((v269 + 293114271) & 0x6F5546BB ^ v269 & 1)) ^ 0x7FFFFFFC)) ^ v253 ^ 0x81FF0BD4;
  LOBYTE(v257) = (v264 + 2) & 0xBE ^ 0x63;
  LOBYTE(v259) = (v264 + 2) ^ 0x78;
  LOBYTE(STACK[0x69C]) = v253 ^ 2;
  v272 = (v268 + 1827379206 - v264) ^ (v264 - 1827379206);
  LOBYTE(v266) = (v266 + (v253 ^ 0x6E) - 38 + v237) ^ v253;
  v273 = (v267 + v262 + v264 - 1827379206) ^ (v264 - 1827379206);
  v274 = v272 + v264 - 1827379206;
  LOBYTE(STACK[0x334]) = (v264 + 2) ^ (2 * (v259 & (2 * (v259 & (2 * (v259 & (2 * (v259 & (2 * (v259 & (2 * (v257 ^ (v264 + 2) & 6)) ^ v257)) ^ v257)) ^ v257)) ^ v257)) ^ v257)) ^ 0xBB;
  v275 = v267 - v274 - 1496660611;
  v276 = (v271 & 0x59533F70 | v270 & 0xA6ACC08F) + 1349348089 - 2 * ((v271 & 0x50412A70 | v270 & 0x2C408F) ^ v270 & 6);
  LOBYTE(STACK[0x5BC]) = (v272 - ((2 * v272) & 0x1A) + 13) ^ 8;
  v277 = v274 + 1930273563;
  LOBYTE(STACK[0x537]) = v253 ^ 2;
  LOBYTE(STACK[0x3E8]) = ((v271 & 0x70 | v270 & 0x8F) - 7 - 2 * ((v271 & 0x70 | v270 & 0x8F) ^ v270 & 6)) ^ 0x95;
  LOBYTE(STACK[0x670]) = v266 ^ 2;
  v278 = (v274 + 1930273563) ^ v275;
  LOBYTE(STACK[0x46D]) = (v273 - ((2 * v273) & 0x7A) + 61) ^ 0x38;
  v279 = (((v276 ^ 0xE20EB8FA) + 502351622) ^ ((v276 ^ 0x51E0F734) - 1373697844) ^ ((v276 ^ 0xE3832537) + 477944521)) + (((v253 ^ 0x2514F6E) + 2085731142) ^ ((v253 ^ 0xC06505DB) - 1100615183) ^ ((v253 ^ 0x2C9E07DB) + 1386148849));
  LOBYTE(v237) = v237 - v279 + 119;
  LOBYTE(STACK[0x457]) = ((2 * v277) & 0xF4) - v277 + 5;
  LOBYTE(STACK[0x31E]) = (v278 - ((2 * v278) & 0xC) - 122) ^ 0x83;
  v280 = (((v279 - 1586348553) ^ 0x9604AB76) + 123387297) ^ (v279 - 1586348553) ^ (((v279 - 1586348553) ^ 0xA751C008) + 907007711) ^ (((v279 - 1586348553) ^ 0x200B3DA9) - 1319818368) ^ (((v279 - 1586348553) ^ 0x7FFFBFFE) - 291395287);
  v281 = v273 - 1341737985 + v275;
  LOBYTE(v275) = v266 ^ 0x6E;
  LOBYTE(STACK[0x65A]) = (((v279 - 9) ^ 0x76) - 95) ^ (v279 - 9) ^ (((v279 - 9) ^ 8) - 33) ^ (((v279 - 9) ^ 0xA9) + 0x80) ^ (((v279 - 9) ^ 0xFE) + 41) ^ 0x45;
  v282 = 3084196 - (((v276 ^ 0x525999CF) - 1381603791) ^ ((v276 ^ 0x833AD631) + 2093296079) ^ ((v276 ^ 0x810E2507) + 2129779449));
  v283 = ((v282 ^ 0x69025F35) - 319352670) ^ v282 ^ ((v282 ^ 0x2101AC95) - 1527454974) ^ ((v282 ^ 0x4D72BA76) - 930613789) ^ ((v282 ^ 0x7F7BF9BD) - 91310550);
  LOBYTE(STACK[0x3D2]) = ((v282 ^ 0x35) - 94) ^ v282 ^ ((v282 ^ 0x95) + 2) ^ ((v282 ^ 0x76) - 29) ^ ((v282 ^ 0xBD) + 42) ^ 7;
  LOBYTE(v282) = (((v275 + 18 + v237) ^ 0x7E) - 109) ^ (v275 + 18 + v237) ^ (((v275 + 18 + v237) ^ 0xDD) + 50) ^ (((v275 + 18 + v237) ^ 0x4D) - 94) ^ (((v275 + 18 + v237) ^ 0xFD) + 18);
  LOBYTE(v270) = (((v279 - 9) ^ 0x76) - 95) ^ (v279 - 9) ^ (((v279 - 9) ^ 8) - 33) ^ (((v279 - 9) ^ 0xA9) + 0x80) ^ (((v279 - 9) ^ 0xFE) + 41) ^ v237;
  LOBYTE(STACK[0x308]) = (v281 - 2 * (v281 & 1) + 1) ^ 4;
  LOBYTE(STACK[0x521]) = v270 ^ 0x45;
  v284 = v280 ^ v283;
  LOBYTE(STACK[0x5A6]) = (50 - v272 - ((2 * (50 - v272)) & 0xD4) + 106) ^ 0x6F;
  LOBYTE(STACK[0x50B]) = v282 ^ 0x7F;
  LOBYTE(v283) = (((v270 ^ 0x23) + 77) ^ ((v270 ^ 9) + 103) ^ ((v270 ^ 3) + 109)) + (((v280 ^ 0xBF) + 43) ^ ((v280 ^ 0x99) + 13) ^ ((v280 ^ 0xF) - 101));
  LOBYTE(STACK[0x4D6]) ^= *(a30 + (a44 - 1411681446));
  LOBYTE(STACK[0x387]) ^= *(a30 + (a44 - 1411681445));
  LOBYTE(STACK[0x60F]) ^= *(a30 + (a44 - 1411681444));
  LOBYTE(STACK[0x4C0]) ^= *(a30 + (a44 - 1411681443));
  LOBYTE(STACK[0x371]) ^= *(a30 + (a44 - 1411681442));
  LOBYTE(STACK[0x5F9]) ^= *(a30 + (a44 - 1411681441));
  LOBYTE(STACK[0x4AA]) ^= *(a30 + (a44 - 1411681440));
  LOBYTE(STACK[0x35B]) ^= *(a30 + (a44 - 1411681439));
  LOBYTE(STACK[0x5E3]) ^= *(a30 + (a44 - 1411681438));
  LOBYTE(STACK[0x494]) ^= *(a30 + (a44 - 1411681437));
  LOBYTE(STACK[0x345]) ^= *(a30 + (a44 - 1411681436));
  LOBYTE(STACK[0x5CD]) ^= *(a30 + (a44 - 1411681435));
  LOBYTE(STACK[0x47E]) ^= *(a30 + (a44 - 1411681434));
  LOBYTE(STACK[0x32F]) ^= *(a30 + (a44 - 1411681433));
  LOBYTE(STACK[0x5B7]) ^= *(a30 + (a44 - 1411681432));
  LOBYTE(STACK[0x468]) ^= *(a30 + (a44 - 1411681431));
  LOBYTE(STACK[0x319]) ^= *(a30 + (a44 - 1411681430));
  LOBYTE(STACK[0x5A1]) ^= *(a30 + (a44 - 1411681429));
  LOBYTE(STACK[0x452]) ^= *(a30 + (a44 - 1411681428));
  LOBYTE(STACK[0x303]) ^= *(a30 + (a44 - 1411681427));
  LOBYTE(STACK[0x58B]) ^= *(a30 + (a44 - 1411681426));
  LOBYTE(STACK[0x43C]) ^= *(a30 + (a44 - 1411681425));
  LOBYTE(STACK[0x2ED]) ^= *(a30 + (a44 - 1411681424));
  LOBYTE(STACK[0x575]) ^= *(a30 + (a44 - 1411681423));
  LOBYTE(STACK[0x426]) ^= *(a30 + (a44 - 1411681422));
  LOBYTE(STACK[0x6AE]) ^= *(a30 + (a44 - 1411681421));
  LOBYTE(STACK[0x55F]) ^= *(a30 + (a44 - 1411681420));
  LOBYTE(STACK[0x410]) ^= *(a30 + (a44 - 1411681419));
  LOBYTE(STACK[0x698]) ^= *(a30 + (a44 - 1411681418));
  LOBYTE(STACK[0x549]) ^= *(a30 + (a44 - 1411681417));
  LOBYTE(STACK[0x3FA]) ^= *(a30 + (a44 - 1411681416));
  LOBYTE(STACK[0x682]) ^= *(a30 + (a44 - 1411681415));
  LOBYTE(STACK[0x533]) ^= *(a30 + (a44 - 1411681414));
  LOBYTE(STACK[0x3E4]) ^= *(a30 + (a44 - 1411681413));
  LOBYTE(STACK[0x66C]) ^= *(a30 + (a44 - 1411681412));
  LOBYTE(STACK[0x51D]) ^= *(a30 + (a44 - 1411681411));
  LOBYTE(STACK[0x3CE]) ^= *(a30 + (a44 - 1411681410));
  LOBYTE(STACK[0x656]) ^= *(a30 + (a44 - 1411681409));
  LOBYTE(v269) = ((a44 + 114) ^ 0xE5) & (2 * ((a44 + 114) & 0xF6)) ^ (a44 + 114) & 0xF6;
  LOBYTE(v265) = ((2 * ((a44 + 114) ^ 0x21)) ^ 0xAC) & ((a44 + 114) ^ 0x21);
  LOBYTE(STACK[0x507]) ^= *(a30 + (a44 - 1411681408));
  LOBYTE(STACK[0x333]) = *(&STACK[0x2E0] + ((((39 - a44) ^ (a44 + 114) ^ (((39 - a44) ^ 0xF1) - 96) ^ (((39 - a44) ^ 0xBE) - 47) ^ (((39 - a44) ^ 0x23) + 78) ^ (((39 - a44) ^ 0xFD) + 20)) ^ (2 * (v265 & (4 * v265) & (16 * (v265 & (4 * v269) ^ v269)) ^ v265 & (4 * v269) ^ v269))) & 0x53 ^ 0x42));
  LOBYTE(STACK[0x3B8]) ^= *(a30 + (a44 - 1411681407));
  LOBYTE(STACK[0x640]) ^= *(a30 + (a44 - 1411681406));
  LOBYTE(STACK[0x4F1]) ^= *(a30 + (a44 - 1411681405));
  LOBYTE(STACK[0x3A2]) ^= *(a30 + (a44 - 1411681404));
  LOBYTE(STACK[0x62A]) ^= *(a30 + (a44 - 1411681403));
  LOBYTE(STACK[0x4DB]) ^= *(a30 + (a44 - 1411681402));
  LOBYTE(STACK[0x38C]) ^= *(a30 + (a44 - 1411681401));
  LOBYTE(STACK[0x614]) ^= *(a30 + (a44 - 1411681400));
  LOBYTE(STACK[0x4C5]) ^= *(a30 + (a44 - 1411681399));
  LOBYTE(STACK[0x2F1]) = *(&STACK[0x2E0] + ((v284 & 0xCD ^ 0x8D) + (v284 & 0xCD ^ 0x40) + ((5 - v283) & 0x44) + ((v283 - 6) & 0x44)));
  LOBYTE(STACK[0x376]) ^= *(a30 + (a44 - 1411681398));
  LOBYTE(STACK[0x5FE]) ^= *(a30 + (a44 - 1411681397));
  LOBYTE(STACK[0x4AF]) ^= *(a30 + (a44 - 1411681396));
  LOBYTE(STACK[0x360]) ^= *(a30 + (a44 - 1411681395));
  v286 = ((2 * (a44 - 436386080)) & 0x8BBC5944 ^ 0xC5DE2CA2) & (a44 - 436386080);
  v287 = ((a44 - 436386080) ^ 0x5E5B2953) & 0x370A0BE2 | ((a44 - 436386080) ^ 0xA1A4D6AC) & (2 * ((a44 - 436386080) ^ 0x5E5B2953));
  v288 = -786108603 - a44;
  v289 = (a44 - 436386080) ^ (2 * ((((v287 ^ 0x88850411) & 0x6E1417C0 | (v287 ^ 0x777AFBE0) & (4 * (v287 ^ 0x88850411))) ^ 0xA0405C0) & (16 * ((v287 ^ 0x13000180) & (4 * v286) ^ v286)) ^ (v287 ^ 0x13000180) & (4 * v286) ^ v286));
  *(&STACK[0x2E0] + (v289 & 0x282 ^ 0x83 ^ (v289 ^ 0x370A0B61) & ((((v288 ^ 0xDB1C00CF) + 505) ^ v288 ^ ((v288 ^ 0x29A) + 942) ^ ((v288 ^ 0x262) + 854) ^ ((v288 ^ 0xFFFFFEFF) + 969)) & 0x283 ^ 0x281))) = STACK[0x563];
  LOBYTE(STACK[0x5E8]) ^= *(a30 + (a44 - 1411681394));
  LOBYTE(STACK[0x499]) ^= *(a30 + (a44 - 1411681393));
  LOBYTE(STACK[0x34A]) ^= *(a30 + (a44 - 1411681392));
  LOBYTE(STACK[0x5D2]) ^= *(a30 + (a44 - 1411681391));
  LOBYTE(STACK[0x483]) ^= *(a30 + (a44 - 1411681390));
  LOBYTE(STACK[0x686]) = *(&STACK[0x2E0] + (((422 - ((v281 ^ 0x8B9E2654) + v277)) ^ ((v281 ^ 0x8B9E2654) + v277 - 1373910439)) & 0x3A6));
  LOBYTE(STACK[0x334]) ^= *(a30 + (a44 - 1411681389));
  LOBYTE(STACK[0x5BC]) ^= *(a30 + (a44 - 1411681388));
  LOBYTE(STACK[0x46D]) ^= *(a30 + (a44 - 1411681387));
  LOBYTE(STACK[0x31E]) ^= *(a30 + (a44 - 1411681386));
  LOBYTE(STACK[0x5A6]) ^= *(a30 + (a44 - 1411681385));
  LOBYTE(STACK[0x457]) ^= *(a30 + (a44 - 1411681384));
  LOBYTE(STACK[0x308]) ^= *(a30 + (a44 - 1411681383));
  return (*(STACK[0x2D0] + 8 * SLODWORD(STACK[0x2C8])))(v284 ^ 0x5CB65487u, (v281 ^ 0x8B9E2654) - (v278 + v277), (LODWORD(STACK[0x2C8]) + 1365));
}

uint64_t sub_100C3E670(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LOBYTE(STACK[0x9AC]) = -14;
  LOBYTE(STACK[0x9CB]) = -13;
  LOBYTE(STACK[0x9EA]) = -16;
  LOBYTE(STACK[0xA09]) = -15;
  LOBYTE(STACK[0xA28]) = -10;
  LOBYTE(STACK[0xA47]) = -9;
  LOBYTE(STACK[0xA66]) = -12;
  LOBYTE(STACK[0xA85]) = -11;
  LOBYTE(STACK[0xAA4]) = -6;
  LOBYTE(STACK[0xAC3]) = -5;
  LOBYTE(STACK[0xAE2]) = -8;
  LOBYTE(STACK[0xB01]) = -7;
  LOBYTE(STACK[0xB20]) = -2;
  LOBYTE(STACK[0xB3F]) = -1;
  LOBYTE(STACK[0xB5E]) = -4;
  LOBYTE(STACK[0xB7D]) = -3;
  v12 = (31 * (a1 & 0xF) + 19592) % 0x3C3u;
  v13 = STACK[0x6E0];
  LOBYTE(STACK[0x9AC]) = *(STACK[0x6E0] + v12);
  *(v13 + v12) = -14;
  v14 = STACK[0x9CB];
  v15 = (31 * (v10 % 0xF) + 19623) % 0x3C3u;
  LOBYTE(STACK[0x9CB]) = *(v13 + v15);
  *(v13 + v15) = v14;
  LODWORD(v15) = v11 - 1222691019;
  v16 = (31 * (a2 % 0xE) + 19654) % 0x3C3u;
  v17 = STACK[0x9EA];
  LOBYTE(STACK[0x9EA]) = *(v13 + v16);
  *(v13 + v16) = v17;
  v18 = v10 + a2;
  v19 = (31 * (v11 % 0xD) + 19685) % 0x3C3u;
  v20 = v10 ^ v11 ^ v18;
  v21 = STACK[0xA09];
  v22 = a1 ^ 0x98287A73 ^ v15;
  v23 = v18 - v15;
  LOBYTE(STACK[0xA09]) = *(v13 + v19);
  *(v13 + v19) = v21;
  v24 = (31 * (v22 % 0xC) + 19716) % 0x3C3u;
  v25 = STACK[0xA28];
  LOBYTE(STACK[0xA28]) = *(v13 + v24);
  *(v13 + v24) = v25;
  LOBYTE(v24) = STACK[0xA47];
  v26 = (31 * (v20 % 0xB) + 19747) % 0x3C3u;
  LODWORD(v15) = v15 ^ 0xCA8E979D;
  v27 = v15 % 9;
  LOBYTE(STACK[0xA47]) = *(v13 + v26);
  *(v13 + v26) = v24;
  LOBYTE(v26) = STACK[0xA66];
  v28 = (31 * (v23 % 0xA) + 19778) % 0x3C3u;
  v29 = v22 + 997609771;
  LOBYTE(STACK[0xA66]) = *(v13 + v28);
  *(v13 + v28) = v26;
  LODWORD(v26) = v15 - v20;
  v30 = v20 + v23;
  LODWORD(v15) = v20 - 403131026;
  v31 = v29 - (v20 + v23);
  v32 = (31 * v27 + 19809) % 0x3C3u;
  LODWORD(v15) = v15 ^ 0xAACD2EA0;
  LOBYTE(v27) = STACK[0xA85];
  LOBYTE(STACK[0xA85]) = *(v13 + v32);
  *(v13 + v32) = v27;
  v33 = (31 * (v31 & 7) + 19840) % 0x3C3u;
  LOBYTE(v27) = STACK[0xAA4];
  LOBYTE(STACK[0xAA4]) = *(v13 + v33);
  *(v13 + v33) = v27;
  LODWORD(v33) = ((v15 + v30) ^ v26) % 5;
  LOBYTE(v26) = STACK[0xAC3];
  LOBYTE(STACK[0xAC3]) = *(v13 + (31 * ((v15 % 7 + 9) ^ 0x278) + 496) % 0x3C3u);
  *(v13 + (31 * (v15 % 7) + 19871) % 0x3C3u) = v26;
  LODWORD(v26) = (v15 + v30) % 6u;
  LOBYTE(v27) = STACK[0xAE2];
  LOBYTE(STACK[0xAE2]) = *(v13 + (31 * (v26 + 642)) % 0x3C3u);
  *(v13 + ((((v26 + 642) & 0x83 ^ (-643 - v26) & 0x9D33) + 25196) * (v26 + 642)) % 0x3C3u) = v27;
  v34 = (31 * v33 + 19933) % 0x3C3u;
  v35 = STACK[0xB01];
  LOBYTE(STACK[0xB01]) = *(v13 + v34);
  *(v13 + v34) = v35;
  LODWORD(v15) = v15 + v31;
  v36 = v30 - v31;
  v37 = (v31 - 1869433239) ^ v36;
  v38 = (31 * ((v33 + 11) & 0xC | v37 & 3 | (4 - v33) & 4) + 19592) % 0x3C3u;
  v39 = v15 + v37;
  LOBYTE(v15) = STACK[0xB20];
  LOBYTE(STACK[0xB20]) = *(v13 + v38);
  v40 = 3 * (v39 / 3);
  LODWORD(STACK[0x658]) = LODWORD(STACK[0x6C8]) + LODWORD(STACK[0x648]);
  *(v13 + v38) = v15;
  v41 = STACK[0xB3F];
  v42 = (31 * (v39 % 3) + 19995) % 0x3C3u;
  LOBYTE(STACK[0xB3F]) = *(v13 + v42);
  *(v13 + v42) = v41;
  v43 = STACK[0xB5E];
  v44 = (31 * (v36 & 1 ^ 0x287) - 963 * (((270041 * (v36 & 1 ^ 0x287u)) >> 16) >> 7));
  LOBYTE(STACK[0xB5E]) = *(v13 + v44);
  *(v13 + v44) = v43;
  return (*(STACK[0x6D8] + 8 * v9))(v38, v40, 1141756623, 134348867, v13, 2953398120, 2908181960, 2684437514, a9);
}

uint64_t sub_100C3ED40()
{
  v5 = (STACK[0x3448] + v1);
  v6 = v5[1];
  *v3 = *v5;
  v3[1] = v6;
  return (*(v4 + 8 * (((v2 != 0) * (((v0 - 21077) | 0x2284) - 8877)) | (v0 + 119))))();
}

uint64_t sub_100C3EDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  LODWORD(STACK[0x3B08]) = a7 ^ 0x4096;
  v8 = *(v7 + 8 * ((a7 ^ 0x4096) - 16892));
  LODWORD(STACK[0x3980]) = 55;
  v9 = STACK[0x3E0];
  STACK[0x32E0] = STACK[0x3E0];
  STACK[0x3D50] = STACK[0x1160];
  STACK[0x3AD8] = v9;
  STACK[0x32D8] = STACK[0x2618];
  v10 = STACK[0x3318];
  LODWORD(STACK[0x3278]) = STACK[0x3318];
  v11 = STACK[0x3810];
  LODWORD(STACK[0x3298]) = STACK[0x3810];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  v12 = STACK[0x32E8];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  LODWORD(STACK[0x3280]) = STACK[0x1954];
  LODWORD(STACK[0x3290]) = v12;
  LODWORD(STACK[0x3258]) = STACK[0x2424];
  LODWORD(STACK[0x32D0]) = STACK[0x3830];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3288]) = STACK[0x1A78];
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x3E18];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x3260]) = v11;
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  return v8(a1, a2, a3, a4, a5, a6, v10);
}

uint64_t sub_100C3EEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(a3 + 68);
  v9 = __CFADD__(v8, v7);
  v10 = v8 + v7;
  v11 = v9;
  *(a3 + 68) = v10;
  return (*(v6 + 8 * ((v11 * (((a6 - 4775) | 0xC20) - 2704)) ^ a6)))();
}

uint64_t sub_100C3F2C0(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v17 = ((v11 ^ v16) >> v5) + (((v11 ^ v16) & v12) << v14);
  v18 = a3 & (4 * ((v17 ^ (2 * (v17 & v13))) & v13)) ^ v17 ^ (2 * (v17 & v13));
  v19 = (16 * (v18 & v13)) & (4 * (v13 & a4)) & a5 ^ v18;
  LOBYTE(v17) = *((((v6 - 9137) | 0x1B00) ^ 0x1171 ^ v19) + v15 + 14679);
  LOBYTE(v17) = (((v17 ^ 0xD1) + 47) ^ ((v17 ^ 0x85) + 123) ^ ((v17 ^ 0x51) - 81)) - (((v19 ^ 0x6F) - 30) ^ ((v19 ^ 0x75) - 4) ^ ((v19 ^ 0xF4) + 123)) - 82;
  v20 = v17 & 0x4C ^ 0xCA;
  LOBYTE(v17) = v17 ^ (2 * ((v17 ^ 0x38) & (2 * ((v17 ^ 0x38) & (2 * ((v17 ^ 0x38) & (2 * ((v17 ^ 0x38) & (2 * ((v17 ^ 0x38) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  v21 = v17 & 0xF;
  LOBYTE(v17) = 16 * ((v17 >> 4) ^ *(((((v17 >> 4) ^ 0x63) & v8 | v9) ^ 0x25) + v15 + 1294));
  LOBYTE(v17) = (v17 ^ 0xDF) & (*(((v21 | v7) ^ 0xF8) + v15 + 777) ^ 0xDB) ^ v17 & 0x50;
  v22 = (v17 ^ 0x63) + 23;
  v23 = (v22 & 0xE8 | 0x13) ^ v22 & 0xE6;
  v24 = 12337 * ((*(v15 + (v17 ^ 0x28u) + 11037) ^ v22 ^ (2 * ((v22 ^ 0x68) & (2 * ((v22 ^ 0x68) & (2 * ((v22 ^ 0x68) & (2 * ((v22 ^ 0x68) & (2 * ((v22 ^ 0x68) & (2 * ((v22 ^ 0x68) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x1B);
  *(STACK[0x8070] + v10 % 0x3282) = *(STACK[0x8070] + v24 - 12930 * (((1328683 * v24) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((19636 * (v11 == 255)) ^ v6)))();
}

uint64_t sub_100C3F520()
{
  v2 = *(STACK[0x11B8] - 0x683CBC57EAB92A3ELL);
  STACK[0xFE0] = 0;
  STACK[0x1420] = 0;
  return (*(v1 + 8 * (((v2 == 0x308E083E0C524CBELL) * (v0 + 1211057582 + ((v0 - 136753216) & 0xBFF6FBDD) - 192)) ^ (v0 - 5703))))();
}

uint64_t sub_100C3F5B0(uint64_t a1)
{
  v4 = STACK[0x8D0];
  v5 = STACK[0x10B4];
  v6 = 289235981 * (((v3 - 240) & 0x69D3D1B5 | ~((v3 - 240) | 0x69D3D1B5)) ^ 0x11AEFE75);
  *(v3 - 208) = &STACK[0xA34];
  *(v3 - 232) = v4;
  *(v3 - 224) = a1;
  *(v3 - 216) = v1 - v6 - 529100304;
  *(v3 - 212) = v5 ^ v6;
  v7 = (*(v2 + 8 * (v1 + 25909)))(v3 - 240);
  return (*(v2 + 8 * (((LODWORD(STACK[0xA34]) < 0x501) * (((v1 + 293596053) | 0xA6508110) ^ 0xB7D0CAEE)) ^ v1)))(v7);
}

uint64_t sub_100C3F6F0@<X0>(int a1@<W7>, unint64_t a2@<X8>)
{
  LODWORD(STACK[0x93C]) = v2 - 16;
  LODWORD(STACK[0xA1C]) = (v2 - 1) & 0xFFFFFFF0;
  STACK[0x9E8] = a2;
  LODWORD(STACK[0x9DC]) = *(v5 - 0x2369327399A66D6DLL);
  v7 = v5 != 0x2369327399A66D95 && a2 != 0x1883660EE8144416;
  if (!v7)
  {
    a1 = v6 + 1;
  }

  LODWORD(STACK[0x8C8]) = a1;
  LOBYTE(STACK[0x873]) = v7;
  return (*(v4 + 8 * (v3 ^ (234 * v7))))();
}

uint64_t sub_100C3F958@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W4>, int a4@<W8>)
{
  LODWORD(STACK[0x51A0]) = LODWORD(STACK[0x55C0]) + LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x4E10]) = LODWORD(STACK[0x5560]) | (LODWORD(STACK[0x5570]) << 8);
  LODWORD(STACK[0x4F18]) = a4 + LODWORD(STACK[0x5510]);
  LODWORD(STACK[0x4FF0]) = v5 + LODWORD(STACK[0x5500]);
  LODWORD(STACK[0x50E8]) = a3 + LODWORD(STACK[0x54D0]);
  LODWORD(STACK[0x4F78]) = v4 + v7;
  LODWORD(STACK[0x55F0]) = v10;
  LODWORD(STACK[0x5570]) = a1 << 8;
  LODWORD(STACK[0x5520]) = (v6 + a2) << 8;
  LODWORD(STACK[0x5710]) = v9 << (((v8 - 124) | 1) + 87);
  v12 = STACK[0x57C0];
  v13 = *(STACK[0x57C0] + 1525);
  LODWORD(STACK[0x5230]) = *(STACK[0x57C0] + 3118) - 76;
  LODWORD(STACK[0x5510]) = v13 - 76;
  v14 = STACK[0x56D0];
  v15 = *(STACK[0x56D0] + 1882);
  v16 = *(v11 + 1368);
  v17 = (*(STACK[0x55B0] + 1495) - 76);
  LODWORD(STACK[0x5500]) = (v16[2147] - 76);
  LODWORD(STACK[0x54F0]) = v17 << 8;
  LODWORD(STACK[0x4EC0]) = ((*(v14 + 1791) - 76) | ((((*(STACK[0x5770] + 3414) - 76) << 8) | (v15 << 16) | (*(STACK[0x5750] + 3194) - 76)) << 8)) - 1275068416;
  v18 = *(STACK[0x5308] + 759) - 76;
  LODWORD(STACK[0x5530]) = (*(STACK[0x5308] + 759) - 76);
  LOBYTE(v17) = v16[2481];
  v19 = (v18 << 16) | ((v16[5060] - 76) << 8) | (v16[5007] - 76);
  v20 = ((v16[5333] - 76) << 8) | ((v16[3907] - 76) << 16) | (*(STACK[0x5300] + 3065) - 76);
  v21 = STACK[0x57A0];
  STACK[0x52E8] = (v16 + 4385);
  LODWORD(STACK[0x5490]) = *(STACK[0x5730] + 1260) - 76;
  LODWORD(STACK[0x54E0]) = (v17 - 76);
  LODWORD(STACK[0x54A0]) = *(STACK[0x5580] + 1169) - 76;
  LODWORD(STACK[0x54D0]) = v19 << 8;
  LODWORD(STACK[0x54C0]) = (v16[243] - 76);
  STACK[0x55C0] = (v16 + 4096);
  LODWORD(STACK[0x5610]) = (*(STACK[0x52E0] + 1328) - 76);
  STACK[0x5720] = v16;
  LODWORD(STACK[0x54B0]) = (v16[630] - 76);
  LODWORD(STACK[0x5700]) = (*(v21 + 1146) - 76);
  LODWORD(STACK[0x5560]) = (*(v12 + 190) - 76);
  return (*(STACK[0x57D8] + 8 * v8))(v20);
}

uint64_t sub_100C3FDD8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a5 + a3 - 0x2D565F79116F97EELL;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = a7 - (((0x6283822C6E3E9DE2 - v15) | 0xBBAB1D0B64B630D1) + ((v15 + a8) | 0x4454E2F49B49CF2ELL));
  v17 = __ROR8__(v16 ^ 0x581159CE483B41D7, 8);
  v16 ^= 0xB3F2B752C630513BLL;
  v18 = (0xE1F65B6E3D433B0BLL - ((v17 + v16) | 0xE1F65B6E3D433B0BLL) + ((v17 + v16) | 0x1E09A491C2BCC4F4)) ^ 0xD6A91EBEC59E8093;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ v9;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v19, 61);
  v23 = (v21 + v22 - ((2 * (v21 + v22)) & 0x2E46F433098C244ALL) - 0x68DC85E67B39EDDBLL) ^ 0xFA31E45FDFDE48DFLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0x6D35D988E3DAD7FCLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - ((2 * (v27 + v26)) & 0x9BF358583B7AF410) + 0x4DF9AC2C1DBD7A08) ^ 0xB86C1ADF9D7E2A13;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x429C45F2337BE6D0;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = *(v13 + 8 * v8);
  v33 = __ROR8__(v30, 8);
  LOBYTE(v31) = (((((2 * (v33 + v31)) & 0xCF1192F117B826EELL) - (v33 + v31) - 0x6788C9788BDC1378) ^ 0xDE1F6EF24E4D923ALL) >> (8 * (v14 & 7u))) ^ HIBYTE(a2) ^ 7;
  v34 = __ROR8__((v14 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *v14 = v31;
  v35 = ((0x6283822C6E3E9DE2 - v34) & 0xE83705C2A4568136) + v34 + a8 - ((v34 + a8) & 0xEC3705C2A4568136);
  v36 = v35 ^ 0xF8D410788DBF030;
  v35 ^= 0xE46EAF9B06D0E0DCLL;
  v37 = (__ROR8__(v36, 8) + v35) ^ 0xC8A0BA2F07224467;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x5C73FDB33497AD0CLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) & 0x27BFF7AA7A8955CLL) - (v41 + v40) + 0x7EC20042AC2BB551) ^ 0x13D09E04F733EFABLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x6D35D988E3DAD7FCLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xF595B6F380C3501BLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) | 0xD7FF68B3371DAF34) - (v48 + v47) + 0x14004BA664712866) ^ 0xA963F1ABA8F5314ALL;
  *(v14 + 1) = (((__ROR8__(v49, 8) + (v49 ^ __ROR8__(v47, 61))) ^ 0x466858753A6E7EB2) >> (8 * ((v14 + 1) & 7))) ^ BYTE2(a2) ^ 0xD3;
  v50 = __ROR8__((v14 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v51 = a7 - (((0x6283822C6E3E9DE2 - v50) | 0x13B14FC15C5B83B9) + ((v50 + 0x1D7C7DD391C1621DLL) | 0xEC4EB03EA3A47C46));
  v52 = v51 ^ 0xF00B0B0470D6F2BFLL;
  v51 ^= 0x1BE8E598FEDDE253uLL;
  v53 = (__ROR8__(v52, 8) + v51) ^ 0xC8A0BA2F07224467;
  v54 = __ROR8__(v53, 8);
  v55 = v53 ^ __ROR8__(v51, 61);
  v56 = (((2 * (v54 + v55)) | 0xC2DD5F854E648420) - (v54 + v55) - 0x616EAFC2A7324210) ^ 0x3D1D527193A5EF1CLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0x6D129E465B185AFALL;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) | 0x58FC4B75BB7A4C4ELL) - (v60 + v59) + 0x5381DA452242D9D9) ^ 0xC14BFC323E67F1DBLL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xF595B6F380C3501BLL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) | 0xB78668FE042C6ADALL) - (v65 + v64) - 0x5BC3347F0216356DLL) ^ 0x195F718D316DD3BDLL;
  *(v14 + 2) = (((__ROR8__(v66, 8) + (v66 ^ __ROR8__(v64, 61))) ^ 0x466858753A6E7EB2) >> (8 * ((v14 + 2) & 7))) ^ BYTE1(a2) ^ 0x8A;
  v67 = __ROR8__((v14 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = v67 - ((2 * v67 + 0x3AF8FBA72382C43ALL) & 0x2AD1DF25E6BC573ELL) - 0x4D1A92997AE07244;
  v69 = v68 ^ 0xF6D2AB57DFD35A99;
  v68 ^= 0x1D3145CB51D84A75uLL;
  v70 = (__ROR8__(v69, 8) + v68) ^ 0xC8A0BA2F07224467;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x5C73FDB33497AD0CLL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = __ROR8__((((2 * ((v74 + v73) ^ 0x4002B9E53C1CA186)) & 0xDF5133D06B4A941CLL) - ((v74 + v73) ^ 0x4002B9E53C1CA186) - 0x6FA899E835A54A0FLL) ^ 0xBD4741B4AD5E4E8DLL, 8);
  v76 = (((2 * ((v74 + v73) ^ 0x4002B9E53C1CA186)) & 0xDF5133D06B4A941CLL) - ((v74 + v73) ^ 0x4002B9E53C1CA186) - 0x6FA899E835A54A0FLL) ^ 0xBD4741B4AD5E4E8DLL ^ __ROR8__(v73, 61);
  v77 = (0xE9C47896AAA7AEDLL - ((v75 + v76) | 0xE9C47896AAA7AEDLL) + ((v75 + v76) | v10)) ^ v11;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = ((v12 | (2 * (v79 + v78))) - (v79 + v78) + 0x248D300452C499E7) ^ 0x2EE779082DF83602;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x429C45F2337BE6D0;
  *(v14 + 3) = a2 ^ 0x56 ^ (((__ROR8__(v82, 8) + (v82 ^ __ROR8__(v81, 61))) ^ 0x466858753A6E7EB2uLL) >> (8 * ((v14 + 3) & 7)));
  return v32();
}

uint64_t sub_100C40518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = *STACK[0x660];
  v14 = *v12;
  v15 = *v10 ^ v11;
  v16 = qword_101362AE8 ^ 0x722E09814B3EBE59;
  LODWORD(STACK[0x630]) = v9;
  v17 = STACK[0x640] + 4 * ((v8 + 679933 + 551 * v9) % 0x1D48u);
  v18 = (*(v13 + (v14 & STACK[0x658])) + 673210726 + v17);
  *(v17 - 0x34EE34220E8AC3B8) = (v17 * a8) ^ 0xA32579C9 ^ *(v16 + (v18 & v15)) ^ *(v16 + ((v18 + 2) & v15));
  return (*(STACK[0x668] + 8 * v8))();
}

uint64_t sub_100C40784(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, int a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, int a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, int a60, unsigned int a61, uint64_t a62, uint64_t a63)
{
  *(v71 - 224) = v66 - 2478;
  v72 = (((a3 ^ 0x42B6130B) - 1119228683) ^ ((a3 ^ 0xACDE0056) + 1394737066) ^ (((v66 - 2478) ^ 0x32D) + (a3 ^ 0xEB70625A) + 344951891)) + 1463015727;
  v553 = ((v72 ^ 0x9B370DFB) + 919836205) ^ v72 ^ ((v72 ^ 0xAAC47687) + 119598417) ^ ((v72 ^ 0x9EB7E0A9) + 861109119) ^ ((v72 ^ 0xFD5FFFFD) + 1354458155);
  v73 = v553 ^ 0xFEE1D486;
  v573 = a3 & 0xFFFFFFF5 ^ 0x518710F;
  v74 = (((a3 ^ 0xBC2ACDC5) + 1138045499) ^ ((a3 ^ 0xBDD8A108) + 1109876472) ^ ((a3 ^ 0x4EA1DCA) - 82451914)) + 1997001947;
  v75 = v74 ^ ((v74 ^ 0xFDA01FA8) + 1940948868) ^ ((v74 ^ 0x14032276) - 1709983138) ^ ((v74 ^ 0xC7B2A5F1) + 1235369435) ^ ((v74 ^ 0x5FFEFFFB) - 772905007) ^ 0xDD15D77A;
  if ((a3 & 0x400) != 0)
  {
    v73 = v75;
  }

  v76 = v73 ^ 0xACFAB4AE;
  v77 = *(a42 + ((*(a48 + v573) + 118 * (a3 & 0xF5 ^ 0xF) - 8 * (a3 & 0xF5 ^ 0xF) - 105 * (a3 & 0xF5 ^ 0xF) - 13) ^ 0x8BLL));
  v554 = *(a48 + v76 + 14);
  v78 = 5 * (v73 ^ 0xAE);
  v79 = (25 - v78) & 0xA1 | 6;
  v80 = v79 ^ (25 - v78) & 0xC;
  v81 = (25 - v78) ^ 0x20;
  v556 = ((25 - v78) ^ (2 * (v81 & (2 * (v81 & (2 * (v81 & (2 * (v81 & (2 * (v81 & (2 * ((25 - v78) & (2 * v79) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80))) & 0xFA;
  v82 = v554 - (((v556 ^ 0xBF) - 87) ^ ((v556 ^ 0xC5) - 45) ^ ((v556 ^ 0xD2) - 58)) - 8;
  v83 = v82 & 0x54 ^ 0x46;
  v84 = v82 ^ (2 * ((v82 ^ 0x48) & (2 * ((v82 ^ 0x48) & (2 * ((v82 ^ 0x48) & (2 * ((v82 ^ 0x48) & (2 * (v82 & (2 * v83) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83));
  v85 = (v77 >> 6) | (4 * v77);
  v86 = *(v67 + 8 * (v66 ^ 0x1F24)) - 8;
  v551 = *(v86 + ((((2 * v84) & 0xE7 ^ 0xA0) + (v84 ^ 0xA7)) ^ 0x8FLL));
  v568 = a3 & 0xFFFFFFFB ^ 0x5187107;
  v566 = a3 & 0xFFFFFFFD ^ 0x5187107;
  v87 = *(a46 + ((5 * (a3 & 0xFB ^ 7) + *(a48 + v568) - 13) ^ 0x55)) + 117;
  v88 = (32 * v87) ^ (4 * v87) ^ v87 & 0xFFFFFFFD ^ (v87 & 2 | 0x2C);
  v89 = (((v551 - 90) ^ 7) << 8) | (((*(*(v67 + 8 * (v66 - 7079)) + ((*(a48 + (v76 | 0xD)) + 5 * (v76 | 0xD) - 13) ^ 0xD5) - 12) + ((*(a48 + (v76 | 0xD)) + 5 * (v76 | 0xD) - 13) ^ 0xA1) + 64) ^ 0xB0) << 16);
  v572 = a3 & 0xFFFFFFF6 ^ 0x518710F;
  LOBYTE(v87) = *(v86 + ((5 * (a3 & 0xFD ^ 7) + *(a48 + v566) - 13) ^ 0x11));
  v90 = *(*(v67 + 8 * (v66 ^ 0x1954)) + ((5 * (a3 & 0xF6 ^ 0xF) + *(a48 + v572) - 13) ^ 0xE8));
  v564 = a3 & 0xFFFFFFF9 ^ 0x5187107;
  LOBYTE(v86) = *(a48 + v564);
  v91 = *(a48 + (v76 | 0xB)) + 5 * (v76 | 0xB);
  *(v71 - 232) = v91;
  v92 = 5 * (a3 & 0xF9 ^ 7) + v86;
  v567 = a3 & 0xFFFFFFF7 ^ 0x518710F;
  v93 = *(v67 + 8 * (v66 ^ 0x1D94));
  v552 = (v91 - 13) ^ 0xAELL;
  v94 = *(v93 + v552) ^ 0x1A ^ (*(v93 + v552) >> 5) ^ ((*(v93 + v552) ^ 0x1Au) >> 4) | ((v85 ^ 0x57) << 8) | ((v90 ^ 0xF9) << 16);
  v95 = (v88 << 24) | ((*(a44 + ((v92 - 13) ^ 0x69)) ^ 0x20) << 8);
  v559 = v66;
  v96 = *(v67 + 8 * (v66 ^ 0x1D6C)) + ((5 * (a3 & 0xF7 ^ 0xF) + *(a48 + v567) - 13) ^ 0x60);
  v570 = a3 & 0xFFFFFFFA ^ 0x5187107;
  v97 = v94 | ((*(v96 - 4) ^ ((*(v96 - 4) ^ 0x47) << 7) ^ (16 * (*(v96 - 4) ^ 0x47)) ^ 0xBA) << 24);
  v562 = a3 & 0xFFFFFFF0 ^ 0x518710F;
  v98 = 5 * (a3 | 0xF) + *(a48 + v562);
  v558 = (*(a48 + v570) + 5 * (a3 & 0xFA ^ 7) - 13) ^ 0x5BLL;
  v99 = ((v98 - 13) ^ 0xDD) - ((2 * ((v98 - 13) ^ 0xFFFFFFDD)) & 0xE4);
  LOBYTE(v98) = 5 * (a3 | 7) + *(a48 + (a3 & 0xFFFFFFF8 ^ 0x5187107)) - 13;
  v571 = a3 ^ 0x5187107;
  LOBYTE(v91) = v78 + *(a48 + (a3 ^ 0x5187107u));
  v100 = *(a41 + v99 + 114) ^ 0xCD | v89;
  v565 = a3 & 0xFFFFFFF3 ^ 0x518710F;
  v101 = (v91 - 13) ^ 0xB1;
  v102 = *(v67 + 8 * (v66 ^ 0x1D21)) - 4;
  v103 = (((v87 - 90) ^ 0x9E) << 8) | (((*(v102 + v101) - 33) ^ (8 * (*(v102 + v101) - 33)) ^ 0x5F) << 24);
  v104 = *(v102 + ((5 * (a3 & 0xF3 ^ 0xF) + *(a48 + v565) - 13) ^ 0xD9));
  v560 = a3 & 0xFFFFFFFC ^ 0x5187107;
  v105 = v100 | (((v104 - 33) ^ (8 * (v104 - 33)) ^ 0xE6) << 24);
  v106 = *(v93 + ((5 * (a3 & 0xFC ^ 7) + *(a48 + v560) - 13) ^ 0x8FLL));
  v563 = a3 & 0xFFFFFFFE ^ 0x5187107;
  LOBYTE(v101) = 5 * (a3 & 0xFE ^ 7) + *(a48 + v563);
  v107 = v65;
  v108 = *(a43 + (v98 ^ 0xF2)) ^ v65 ^ (v95 & 0xFF00FF00 | (((*(a45 + v558) - 47) ^ 0x90) << 16) | v98 ^ 0xDF);
  v109 = (((v103 | v106) ^ ((((v106 ^ 0x1A ^ -(v106 ^ 0x1A) ^ (((v106 ^ 0x1Au) >> 1) - (((v106 ^ 0x1Au) >> 1) ^ v106 ^ 0x1A))) + ((v106 ^ 0x1Au) >> 1)) & 0xF0) >> 4)) & 0xFF00FFFF | (((*(a45 + ((v101 - 13) ^ 0x7DLL)) - 47) ^ 0x2C) << 16)) ^ a49;
  v110 = v109 + a2 - (v68 & (2 * v109));
  LODWORD(v101) = a18 ^ a60 ^ 0x4D78B767 ^ v105;
  LODWORD(v76) = *(v71 - 196);
  v111 = v76 ^ a36 ^ a65 ^ 0xF17EA57 ^ ((v97 ^ v70) + a2 - (v68 & (2 * (v97 ^ v70))));
  LODWORD(v96) = *(v71 - 252);
  v112 = v76 ^ a36 ^ v96;
  v113 = v112 ^ (v108 + a2 - (v68 & (2 * v108)));
  v114 = v112 ^ 0xC3ABDA5E ^ v110;
  v115 = v101 - ((2 * v101) & 0x98315872);
  v116 = *(a22 + 4 * ((v113 ^ 0x36F7408Au) >> 24)) ^ *(a26 + 4 * BYTE2(v111));
  v117 = v96 ^ (v115 - 870798279) ^ 0x67FAD2F7;
  v118 = *(v69 + 4 * BYTE1(v117));
  v119 = ((v118 & 0x80000) + 2103375682) ^ (v118 & 0x80000 | 0x55E2F8C6) ^ ((v118 & 0x80000 ^ 0x965E17FA) - 733551804);
  v120 = v119 - 761378638;
  v121 = ((v120 ^ 0x52322B71) - 1184699933) ^ v120 ^ ((v120 ^ 0xD8ED3B5F) + 868088269) ^ ((v120 ^ 0x618FD21F) - 1965092723) ^ ((v120 ^ 0xFFFFFF5D) + 347028943);
  v122 = v69;
  v123 = (v121 ^ 0x14AF3D6C) & (v116 ^ 0x78B0DE92) ^ v121 & 0x29B6CE32;
  v124 = *(v71 - 192);
  v125 = *(v124 + 4 * v117) ^ *(a22 + 4 * HIBYTE(v114)) ^ *(v69 + 4 * BYTE1(v111)) ^ *(a26 + 4 * ((v113 ^ 0x36F7408Au) >> 16));
  v126 = *(a22 + 4 * HIBYTE(v117)) ^ *(a26 + 4 * BYTE2(v114));
  v127 = 1455436326 - v119;
  if (v123 == 10882080)
  {
    v127 = v120;
  }

  v128 = (((v116 ^ 0xC57CAE0B) + 981684725) ^ ((v116 ^ 0x34156FAB) - 873820075) ^ ((v116 ^ 0xA06FD100) + 1603284736)) - 1540858796 + v127;
  v129 = *(v124 + 4 * (v113 ^ 0x8Au)) ^ *(v69 + 4 * BYTE1(v114)) ^ *(a22 + 4 * HIBYTE(v111)) ^ *(a26 + 4 * BYTE2(v117));
  v130 = *(v69 + 4 * (BYTE1(v113) ^ 0x40u));
  v131 = (((v126 ^ 0x347FD014) - 880791572) ^ ((v126 ^ 0xC632DEED) + 969744659) ^ ((v126 ^ 0xA34B1E59) + 1555358119)) - (((v130 ^ v126 ^ 0xEB3FA8F4) + 348149516) ^ ((v130 ^ v126 ^ 0xB90FE882) + 1190139774) ^ ((v130 ^ v126 ^ 0x6E6D5F79) - 1852661625));
  v132 = 18008548 - (((v130 ^ 0x134E4506) - 323896582) ^ ((v130 ^ 0xFF591670) + 10938768) ^ ((v130 ^ 0x814C5CD9) + 2125701927));
  v133 = v132 ^ v130 ^ ((v132 ^ 0x185D4542) - 1982897361) ^ ((v132 ^ 0x3AC1FD35) - 1420567718) ^ ((v132 ^ 0xF30ED71B) + 1654452600) ^ ((v132 ^ 0xBFFFB6FF) + 778932372);
  v134 = *(v124 + 4 * v114);
  v135 = ((v133 ^ 0x6AC69A5D) - 1300660604) ^ ((v133 ^ 0xF7C6B2D1) + 796481040) ^ ((v133 ^ 0x9E36FEB0) + 1183390319);
  v136 = v134 ^ v118 & 0xFFF7FFFF ^ v128 ^ ((v128 ^ 0x2684A186) - 1096100006) ^ ((v128 ^ 0xA268BEC7) + 977717273) ^ ((v128 ^ 0x3CE2E89E) - 1530094014) ^ ((v128 ^ 0xDFDF7EFF) + 1206978593);
  v137 = ((v131 + 1255982288) ^ 0x89C98A88) & (2 * ((v131 + 1255982288) & 0xC9CC2CC1)) ^ (v131 + 1255982288) & 0xC9CC2CC1;
  v138 = ((2 * ((v131 + 1255982288) ^ 0x88C9CA0A)) ^ 0x820BCD96) & ((v131 + 1255982288) ^ 0x88C9CA0A) ^ (2 * ((v131 + 1255982288) ^ 0x88C9CA0A)) & 0x4105E6CA;
  v139 = (v138 ^ 0x1C400) & (4 * v137) ^ v137;
  v140 = ((4 * (v138 ^ 0x41042249)) ^ 0x4179B2C) & (v138 ^ 0x41042249) ^ (4 * (v138 ^ 0x41042249)) & 0x4105E6C8;
  v141 = (v140 ^ 0x58200) & (16 * v139) ^ v139;
  v142 = ((16 * (v140 ^ 0x410064C3)) ^ 0x105E6CB0) & (v140 ^ 0x410064C3) ^ (16 * (v140 ^ 0x410064C3)) & 0x4105E6C0;
  v143 = v141 ^ 0x4105E6CB ^ (v142 ^ 0x46400) & (v141 << 8);
  v144 = (v131 + 1255982288) ^ (2 * ((v143 << 16) & 0x41050000 ^ v143 ^ ((v143 << 16) ^ 0x66CB0000) & (((v142 ^ 0x4101824B) << 8) & 0x41050000 ^ 0x40010000 ^ (((v142 ^ 0x4101824B) << 8) ^ 0x5E60000) & (v142 ^ 0x4101824B))));
  v145 = 2 * ((v144 ^ 0x4BC5E157) & (v133 ^ 0xB8CF11) ^ v144 & 0x38E192D);
  v146 = ((v145 ^ 0xF2C4819B) + 2042765592) ^ ((v145 ^ 0x9807EC73) + 318852352) ^ ((v145 ^ 0x6DCB6FE2) - 422719633);
  v147 = -1260199655 - (((v126 ^ 0x5E0E6FE2) - 1578004450) ^ ((v126 ^ 0x41215AAF) - 1092704943) ^ ((v126 ^ 0x4E2925ED) - 1311319533));
  v148 = (v147 ^ 0xF8564C16) & (2 * (v147 & 0xFA170E47)) ^ v147 & 0xFA170E47;
  v149 = ((2 * (v147 ^ 0x6C544C94)) ^ 0x2C8685A6) & (v147 ^ 0x6C544C94) ^ (2 * (v147 ^ 0x6C544C94)) & 0x964342D2;
  v150 = v149 & (4 * v148) ^ v148;
  v151 = ((4 * (v149 ^ 0x92414251)) ^ 0x590D0B4C) & (v149 ^ 0x92414251) ^ (4 * (v149 ^ 0x92414251)) & 0x964342D0;
  v152 = (v151 ^ 0x10010240) & (16 * v150) ^ v150;
  v153 = ((16 * (v151 ^ 0x86424093)) ^ 0x64342D30) & (v151 ^ 0x86424093) ^ (16 * (v151 ^ 0x86424093)) & 0x964342D0;
  v154 = v152 ^ 0x964342D3 ^ (v153 ^ 0x4000000) & (v152 << 8);
  v155 = (((v130 ^ 0x7B83B1AE) - 2072228270) ^ ((v130 ^ 0x4029814) - 67278868) ^ ((v130 ^ 0x12DA2615) - 316286485)) - (((v126 ^ 0xAEF5E7E9) + 1359616023) ^ ((v126 ^ 0xBD47C08E) + 1119371122) ^ ((v126 ^ 0x42B437C7) - 1119107015)) - v131 - v135 - 1078677415 + v146;
  v156 = v147 ^ v126 ^ (2 * ((v154 << 16) & 0x16430000 ^ v154 ^ ((v154 << 16) ^ 0x42D30000) & (((v153 ^ 0x924342C3) << 8) & 0x16430000 ^ 0x14010000 ^ (((v153 ^ 0x924342C3) << 8) ^ 0x43420000) & (v153 ^ 0x924342C3)))) ^ v155 ^ ((v155 ^ 0x91CC8961) + 113075426) ^ ((v155 ^ 0x5A8B601C) - 839217763) ^ ((v155 ^ 0xDC3604BD) + 1263003966) ^ ((v155 ^ 0x7FFFFFBF) - 393342400);
  v157 = (((v130 ^ 0xB40E5262) + 1274129822) ^ ((v130 ^ 0x205F60D8) - 543121624) ^ ((v130 ^ 0xF90A3D15) + 116769515)) - 1724041665 + (((v156 ^ 0xEA541D85) + 869945815) ^ ((v156 ^ 0xE64765AA) + 1070148090) ^ ((v156 ^ 0xE78CF111) + 1040366915));
  v158 = ((2 * (v157 & 0xA20C1402)) & 0x1FF01FF0 | v157 & 0xA20C1402) ^ (2 * (v157 & 0xA20C1402)) & (v157 ^ 0x157B1879);
  v159 = ((2 * (v157 ^ 0x157B1879)) ^ 0x6EEE18F6) & (v157 ^ 0x157B1879) ^ (2 * (v157 ^ 0x157B1879)) & 0xB7770C7A;
  v160 = (v159 ^ 0x1610411) & (4 * v158) ^ v158;
  v161 = ((4 * (v159 ^ 0x91110409)) ^ 0xDDDC31EC) & (v159 ^ 0x91110409) ^ (4 * (v159 ^ 0x91110409)) & 0xB7770C78;
  v162 = (v161 ^ 0x95540060) & (16 * v160) ^ v160;
  v163 = ((16 * (v161 ^ 0x22230C13)) ^ 0x7770C7B0) & (v161 ^ 0x22230C13) ^ (16 * (v161 ^ 0x22230C13)) & 0xB7770C70;
  v164 = v162 ^ 0xB7770C7B ^ (v163 ^ 0x37700400) & (v162 << 8);
  v165 = v157 ^ *(v124 + 4 * v111) ^ (2 * ((v164 << 16) & 0x37770000 ^ v164 ^ ((v164 << 16) ^ 0xC7B0000) & (((v163 ^ 0x8007084B) << 8) & 0xB7770000 ^ 0x730000 ^ (((v163 ^ 0x8007084B) << 8) ^ 0x770C0000) & (v163 ^ 0x8007084B))));
  v166 = *(a22 + 4 * (HIBYTE(v125) ^ 0x4C)) ^ *(v69 + 4 * (BYTE1(v129) ^ 0xE3u)) ^ *(a26 + 4 * (BYTE2(v136) ^ 0xD0u)) ^ *(v124 + 4 * (v165 ^ 3u));
  v167 = *(v69 + 4 * (BYTE1(v165) ^ 0xE1u)) ^ *(a22 + 4 * (HIBYTE(v136) ^ 0xF7)) ^ *(a26 + 4 * (BYTE2(v129) ^ 0x66u)) ^ *(v124 + 4 * (v125 ^ 0xE7u));
  v168 = *(a22 + 4 * (HIBYTE(v165) ^ 8)) ^ *(a26 + 4 * (BYTE2(v125) ^ 0x6Eu));
  v169 = *(a22 + 4 * (HIBYTE(v129) ^ 0x3E)) ^ *(v69 + 4 * (BYTE1(v125) ^ 0x14u)) ^ *(a26 + 4 * (BYTE2(v165) ^ 0x31u));
  v170 = *(v69 + 4 * (BYTE1(v136) ^ 6u));
  HIDWORD(v172) = v170;
  LODWORD(v172) = v170;
  v171 = v172 >> 26;
  v173 = (v171 & 0x400000 | 0xFCB50BF9) ^ ((v171 & 0x400000) + 80024579) ^ ((v171 & 0x400000 ^ 0x34DA8FE5) - 832019426);
  v174 = *(v124 + 4 * (v136 ^ 0x66u));
  v175 = (((v169 ^ 0xAFCC56C9) + 1345562935) ^ ((v169 ^ 0x4289E8F8) - 1116334328) ^ ((v169 ^ 0xD118A13E) + 786915010)) - (((v174 ^ v169 ^ 0x6EA00416) - 1855980566) ^ ((v174 ^ v169 ^ 0x8E4C40B3) + 1907605325) ^ ((v174 ^ v169 ^ 0x9F959445) + 1617587131));
  v176 = 924689243 - (((v174 ^ 0xFF12D348) + 15543480) ^ ((v174 ^ 0xD7C2D60B) + 675097077) ^ ((v174 ^ 0x6BF4CAAC) - 1811204780));
  v177 = (v176 ^ 0x45BD8EA4) & (2 * (v176 & 0x85BD8CB6)) ^ v176 & 0x85BD8CB6;
  v178 = ((2 * (v176 ^ 0x4CCF87C0)) ^ 0x92E416EC) & (v176 ^ 0x4CCF87C0) ^ (2 * (v176 ^ 0x4CCF87C0)) & 0xC9720B76;
  v179 = (v178 ^ 0x600260) & (4 * v177) ^ v177;
  v180 = ((4 * (v178 ^ 0x49120912)) ^ 0x25C82DD8) & (v178 ^ 0x49120912) ^ (4 * (v178 ^ 0x49120912)) & 0xC9720B74;
  v181 = (v180 ^ 0x1400940) & (16 * v179) ^ v179;
  v182 = ((16 * (v180 ^ 0xC8320226)) ^ 0x9720B760) & (v180 ^ 0xC8320226) ^ (16 * (v180 ^ 0xC8320226)) & 0xC9720B70;
  v183 = v181 ^ 0xC9720B76 ^ (v182 ^ 0x81200300) & (v181 << 8);
  v184 = (v183 << 16) & 0x49720000 ^ v183 ^ ((v183 << 16) ^ 0xB760000) & (((v182 ^ 0x48520816) << 8) & 0xC9720000 ^ 0x9700000 ^ (((v182 ^ 0x48520816) << 8) ^ 0x720B0000) & (v182 ^ 0x48520816));
  v185 = v171 & 0xFFBFFFFF ^ __ROR4__(v168, 26) ^ (328421101 - v173 - ((850555704 - 2 * v173) & 0x34440A02));
  HIDWORD(v172) = v185 ^ 0x1E;
  LODWORD(v172) = v185 ^ 0x8D3DD680;
  v186 = -1157755050 - (((v170 ^ 0x19F55E81) - 435510913) ^ ((v170 ^ 0xCCCF4426) + 858831834) ^ ((v170 ^ 0xB8611508) + 1201597176));
  v187 = (((v168 ^ 0xA44598BF) + 1538942785) ^ ((v168 ^ 0x5133E17F) - 1362354559) ^ ((v168 ^ 0xA4706960) + 1536136864)) - ((((v172 >> 6) ^ 0x7CC915A2) + 767086202) ^ (((v172 >> 6) ^ 0xA806A253) - 109610615) ^ (((v172 >> 6) ^ 0x59362EC7) + 138933533)) - 1516753772;
  v188 = v186 ^ v170 ^ ((v186 ^ 0x16D48BB5) - 1049466032) ^ ((v186 ^ 0x748E91B9) - 1557630652) ^ ((v186 ^ 0x317CCAF7) - 421910002) ^ ((v186 ^ 0x7B7FCFFE) - 1395052795) ^ v187 ^ ((v187 ^ 0xB4E2CA8B) + 857009267) ^ ((v187 ^ 0x1A0B31BE) - 1644357816) ^ ((v187 ^ 0xA91BD48C) + 787346038) ^ ((v187 ^ 0x7FFBF6BF) - 133312441);
  v189 = v176 ^ v174 ^ (v175 + 956139539) ^ (((v175 + 956139539) ^ 0x7EBB14A7) - 44117315) ^ (((v175 + 956139539) ^ 0x2AAA1D5) - 2125502513) ^ (((v175 + 956139539) ^ 0x7FF47F6B) - 65947279) ^ (((v175 + 956139539) ^ 0x7FFFF3FD) - 65391129) ^ (2 * v184);
  v190 = (((v168 ^ 0xBBACCF57) + 1146302633) ^ ((v168 ^ 0x660699FA) - 1711708666) ^ ((v168 ^ 0x8CAC460D) + 1934866931)) + 596307675 + (((v188 ^ 0x494481FE) - 445018725) ^ ((v188 ^ 0xB28F6F14) + 515007345) ^ ((v188 ^ 0xC6C02746) + 1794976547));
  v191 = (v190 ^ 0xDF3113FB) & (2 * (v190 & 0x9C445BFC)) ^ v190 & 0x9C445BFC;
  v192 = ((2 * (v190 ^ 0xE73137DB)) ^ 0xF6EAD84E) & (v190 ^ 0xE73137DB) ^ (2 * (v190 ^ 0xE73137DB)) & 0x7B756C26;
  v193 = (v192 ^ 0x72204800) & (4 * v191) ^ v191;
  v194 = ((4 * (v192 ^ 0x9152421)) ^ 0xEDD5B09C) & (v192 ^ 0x9152421) ^ (4 * (v192 ^ 0x9152421)) & 0x7B756C24;
  v195 = (v194 ^ 0x69552000) & (16 * v193) ^ v193;
  v196 = ((16 * (v194 ^ 0x12204C23)) ^ 0xB756C270) & (v194 ^ 0x12204C23) ^ (16 * (v194 ^ 0x12204C23)) & 0x7B756C20;
  v197 = v195 ^ 0x7B756C27 ^ (v196 ^ 0x33544000) & (v195 << 8);
  v198 = v190 ^ *(v124 + 4 * (v129 ^ 0xC8u)) ^ (2 * ((v197 << 16) & 0x7B750000 ^ v197 ^ ((v197 << 16) ^ 0x6C270000) & (((v196 ^ 0x48212C07) << 8) & 0x7B750000 ^ 0xA110000 ^ (((v196 ^ 0x48212C07) << 8) ^ 0x756C0000) & (v196 ^ 0x48212C07))));
  v199 = (((v169 ^ 0x7DFA63FB) - 2113561595) ^ ((v169 ^ 0xA16A8361) + 1586855071) ^ ((v169 ^ 0xE0CDFF95) + 523370603)) + 1180049664 + (((v189 ^ 0x7254B73F) + 1104406759) ^ ((v189 ^ 0xBB388AB5) - 2000693907) ^ ((v189 ^ 0xF3EF51DB) - 1066922493));
  v200 = (v199 ^ 0xED82A077) & (2 * (v199 & 0xED02CA86)) ^ v199 & 0xED02CA86;
  v201 = ((2 * (v199 ^ 0x35822073)) ^ 0xB101D5EA) & (v199 ^ 0x35822073) ^ (2 * (v199 ^ 0x35822073)) & 0xD880EAF4;
  v202 = (v201 ^ 0x90004020) & (4 * v200) ^ v200;
  v203 = ((4 * (v201 ^ 0x48802A15)) ^ 0x6203ABD4) & (v201 ^ 0x48802A15) ^ (4 * (v201 ^ 0x48802A15)) & 0xD880EAF4;
  v204 = (v203 ^ 0x4000AAC0) & (16 * v202) ^ v202;
  v205 = ((16 * (v203 ^ 0x98804021)) ^ 0x880EAF50) & (v203 ^ 0x98804021) ^ (16 * (v203 ^ 0x98804021)) & 0xD880EAF0;
  v206 = v204 ^ 0xD880EAF5 ^ (v205 ^ 0x8800AA00) & (v204 << 8);
  v207 = v199 ^ (2 * ((v206 << 16) & 0x58800000 ^ v206 ^ ((v206 << 16) ^ 0x6AF50000) & (((v205 ^ 0x508040A5) << 8) & 0x58800000 ^ 0x58000000 ^ (((v205 ^ 0x508040A5) << 8) ^ 0xEA0000) & (v205 ^ 0x508040A5))));
  v208 = (((v198 ^ 0x530AE31D) + 715610963) ^ ((v198 ^ 0x17A11D06) + 1846322506) ^ ((v198 ^ 0x93F3ADAC) - 362932764)) - 254549232;
  v209 = (v208 ^ 0x941A9EC0) & (2 * (v208 & 0xD652DEC9)) ^ v208 & 0xD652DEC9;
  v210 = ((2 * (v208 ^ 0x90BB97C0)) ^ 0x8DD29212) & (v208 ^ 0x90BB97C0) ^ (2 * (v208 ^ 0x90BB97C0)) & 0x46E94908;
  v211 = (v210 ^ 0xC00000) & (4 * v209) ^ v209;
  v212 = ((4 * (v210 ^ 0x42294909)) ^ 0x1BA52424) & (v210 ^ 0x42294909) ^ (4 * (v210 ^ 0x42294909)) & 0x46E94908;
  v213 = (v212 ^ 0x2A10000) & (16 * v211) ^ v211;
  v214 = ((16 * (v212 ^ 0x44484909)) ^ 0x6E949090) & (v212 ^ 0x44484909) ^ (16 * (v212 ^ 0x44484909)) & 0x46E94900;
  v215 = v213 ^ 0x46E94909 ^ (v214 ^ 0x46800000) & (v213 << 8);
  v216 = v208 ^ (2 * ((v215 << 16) & 0x46E90000 ^ v215 ^ ((v215 << 16) ^ 0x49090000) & (((v214 ^ 0x694909) << 8) & 0x46E90000 ^ 0x6A00000 ^ (((v214 ^ 0x694909) << 8) ^ 0x69490000) & (v214 ^ 0x694909)))) ^ 0x8A9858DC;
  if ((((v198 ^ 0x531351FC) + 717154740) ^ ((v198 ^ 0xD4A2CD8) + 1961333912) ^ ((v198 ^ 0x89012E93) - 257124643)) + 1359614983 < 0x89E3522E)
  {
    v216 = v198 ^ 0x865247B0;
  }

  if ((((v198 ^ 0x45EB741C) + 1011272788) ^ ((v198 ^ 0xB93D2F23) - 1064265875) ^ ((v198 ^ 0x2B8E0888) + 1378070728)) + 1359614983 >= 0x89E3522E)
  {
    v217 = 41;
  }

  else
  {
    v217 = 7;
  }

  if (v216 == 1359614983)
  {
    v218 = v217;
  }

  else
  {
    v218 = v198 ^ 0xB0;
  }

  v219 = v207 ^ 0x6C8A229E;
  v220 = *(a26 + 4 * (BYTE2(v167) ^ 0xEFu)) ^ *(a22 + 4 * (HIBYTE(v166) ^ 0x21)) ^ *(v122 + 4 * ((v207 ^ 0x229E) >> 8)) ^ *(v124 + 4 * (v218 ^ 7u));
  v221 = *(a26 + 4 * ((v207 ^ 0x6C8A229Eu) >> 16)) ^ *(a22 + 4 * (HIBYTE(v167) ^ 0x9F)) ^ *(v122 + 4 * (BYTE1(v198) ^ 0x53u));
  v222 = *(a26 + 4 * (BYTE2(v198) ^ 0x58u)) ^ *(a22 + 4 * HIBYTE(v219)) ^ *(v122 + 4 * (BYTE1(v166) ^ 0x91u)) ^ *(v124 + 4 * (v167 ^ 0x3Au));
  v223 = *(v124 + 4 * v219) ^ *(a26 + 4 * (BYTE2(v166) ^ 0x99u)) ^ *(v122 + 4 * (BYTE1(v167) ^ 0xDEu)) ^ *(a22 + 4 * (HIBYTE(v198) ^ 0xD7));
  v224 = *(v122 + 4 * (BYTE1(v222) ^ 0x68u));
  v225 = 2 * ((v224 & 0xDE3 ^ 0xCA3) & (v224 ^ 0x580) ^ v224 & 0x4C0);
  v226 = (((v224 & 0xFFFFF21C ^ 0x4F8677F1) - 2041014352) ^ ((v224 & 0xFFFFF21C ^ 0xC6839305) + 257782620) ^ ((v224 & 0xFFFFF21C ^ 0x691BE90E) - 1597699759)) + 1649973191 + (((v225 ^ 0x97AF4111) + 840777648) ^ ((v225 ^ 0x730E4BFC) - 692308669) ^ ((v225 ^ 0xE4A103ED) + 1091796308));
  v227 = (v226 ^ 0xCEA5C890) & (2 * (v226 & 0xCE3402D5)) ^ v226 & 0xCE3402D5;
  v228 = ((2 * (v226 ^ 0x42CDC81A)) ^ 0x19F3959E) & (v226 ^ 0x42CDC81A) ^ (2 * (v226 ^ 0x42CDC81A)) & 0x8CF9CACE;
  v229 = (v228 ^ 0x8F0008C) & (4 * v227) ^ v227;
  v230 = ((4 * (v228 ^ 0x84084A41)) ^ 0x33E72B3C) & (v228 ^ 0x84084A41) ^ (4 * (v228 ^ 0x84084A41)) & 0x8CF9CACC;
  v231 = (v230 ^ 0xE10A00) & (16 * v229) ^ v229;
  v232 = ((16 * (v230 ^ 0x8C18C0C3)) ^ 0xCF9CACF0) & (v230 ^ 0x8C18C0C3) ^ (16 * (v230 ^ 0x8C18C0C3)) & 0x8CF9CAC0;
  v233 = v231 ^ 0x8CF9CACF ^ (v232 ^ 0x8C988800) & (v231 << 8);
  HIDWORD(v235) = v224;
  LODWORD(v235) = v226 ^ (2 * ((v233 << 16) & 0xCF90000 ^ v233 ^ ((v233 << 16) ^ 0x4ACF0000) & (((v232 ^ 0x61420F) << 8) & 0xCF90000 ^ 0x4310000 ^ (((v232 ^ 0x61420F) << 8) ^ 0x79CA0000) & (v232 ^ 0x61420F))));
  v234 = v235 >> 14;
  v236 = (v234 ^ 0x3EBD2C42u) >> (v552 & 0x12) >> (~v552 & 0x12);
  v237 = v221 ^ *(v124 + 4 * (v166 ^ 0x3Cu));
  v238 = *(a22 + 4 * (HIBYTE(v220) ^ 0x44)) ^ *(a26 + 4 * (BYTE2(v237) ^ 0xBCu));
  v239 = (v236 ^ (v234 << 14) ^ 0x4B108000) + 2 * (v236 & ((v234 << 14) ^ 0x4B108000));
  v240 = v239 - 1100869949 - 2 * (v239 & 0x3E620EC7 ^ v236 & 4);
  v241 = (v223 ^ 0x2BAD77F2) >> (v107 & 0x10) >> (v107 & 0x10 ^ 0x10);
  v242 = *(a22 + 4 * (HIBYTE(v237) ^ 0xA4)) ^ *(a26 + 4 * (BYTE2(v222) ^ 0x35u)) ^ *(v122 + 4 * (BYTE1(v223) ^ 0x77u));
  v243 = (v240 ^ 0xBE620EC3) & (v238 ^ 0xEAB9CF65);
  v244 = v238 ^ 0x1CF5A02F;
  if (v553 == 1377526824)
  {
    v245 = -1100869949;
  }

  else
  {
    v245 = v240;
  }

  v246 = (v244 ^ v245) & (v240 ^ 0x419DF13C);
  v247 = *(v124 + 4 * (v220 ^ 0x30u));
  v248 = (v242 & 0x100000 | 0xA322354D) ^ v247;
  if (!(((((v237 ^ 0x374081D3) - 629992326) ^ ((v237 ^ 0x1560B1D1) - 128768900) ^ ((v237 ^ 0x869C65E8) + 1806692419)) - 1234157633) >> 24))
  {
    v248 = v242 & 0x100000 ^ 0x1FF9055D;
  }

  v249 = v240 & 0xB7D19E76 ^ *(v124 + 4 * (v223 ^ 0xF2u)) ^ v243 ^ v246;
  v250 = 1514821086 - (((v242 & 0x100000 ^ 0xDEB22F8F) + 1052038446) ^ 0xFD41FE1E);
  v251 = v250 ^ ((v250 ^ 0x38CA8175) - 1123670606) ^ ((v250 ^ 0x9D26B516) + 417993171) ^ ((v250 ^ 0x2020F0A7) - 1511238556) ^ ((v250 ^ 0xFFFF9FFF) + 2050177852) ^ 0x65DA5E66;
  if (((v248 ^ 0x22A85AF8) & (v247 ^ 0x4324CFEF) ^ v247 & 0x3D415FA5) == 0x1004FA5)
  {
    v251 = v242 & 0x100000 ^ 0x1FF9055D;
  }

  v252 = (((v247 ^ 0x87A98D50) + 2018931376) ^ ((v247 ^ 0x480E6E56) - 1208905302) ^ ((v247 ^ 0x8C832CE9) + 1937560343)) - 1032761706 + (((v251 ^ 0xD946B56D) + 649677459) ^ ((v251 ^ 0x8B18B578) + 1961314952) ^ ((v251 ^ 0x4DB70548) - 1303840072));
  v253 = (v252 ^ 0x2618C4B5) & (2 * (v252 & 0xA09C86B6)) ^ v252 & 0xA09C86B6;
  v254 = ((2 * (v252 ^ 0x2601C5F9)) ^ 0xD3A869E) & (v252 ^ 0x2601C5F9) ^ (2 * (v252 ^ 0x2601C5F9)) & 0x869D434E;
  v255 = (v254 ^ 0x4100208) & (4 * v253) ^ v253;
  v256 = ((4 * (v254 ^ 0x82854141)) ^ 0x1A750D3C) & (v254 ^ 0x82854141) ^ (4 * (v254 ^ 0x82854141)) & 0x869D434C;
  v257 = (v256 ^ 0x2150100) & (16 * v255) ^ v255;
  v258 = ((16 * (v256 ^ 0x84884243)) ^ 0x69D434F0) & (v256 ^ 0x84884243) ^ (16 * (v256 ^ 0x84884243)) & 0x869D4340;
  v259 = v257 ^ 0x869D434F ^ (v258 ^ 0x940000) & (v257 << 8);
  v260 = (v259 << 16) & 0x69D0000 ^ v259 ^ ((v259 << 16) ^ 0x434F0000) & (((v258 ^ 0x8609430F) << 8) & 0x69D0000 ^ 0x29C0000 ^ (((v258 ^ 0x8609430F) << 8) ^ 0x1D430000) & (v258 ^ 0x8609430F));
  v261 = *(a22 + 4 * ((v222 ^ 0x5356818u) >> (v551 & 0x18) >> (v551 & 0x18 ^ 0x18))) ^ *(a26 + 4 * v241) ^ *(v124 + 4 * (v237 ^ 0xEAu)) ^ *(v122 + 4 * (BYTE1(v220) ^ 0x5Bu));
  v262 = *(a22 + 4 * (HIBYTE(v223) ^ 0x2B));
  v263 = v242 & 0xFFEFFFFF ^ v252 ^ (2 * v260) ^ 0x55E89264;
  v264 = *(v122 + 4 * (BYTE1(v237) ^ 0x55u)) ^ *(v124 + 4 * (v222 ^ 0x18u)) ^ v262 ^ *(a26 + 4 * (BYTE2(v220) ^ 0x2Au));
  v265 = (v264 ^ 0x91F84249) >> (v221 & 8 ^ 8) >> (v221 & 8);
  v266 = *(a26 + 4 * BYTE2(v263)) ^ *(a22 + 4 * (HIBYTE(v249) ^ 0x1D)) ^ *(v122 + 4 * (BYTE1(v261) ^ 0xE5u)) ^ *(v124 + 4 * (v264 ^ 0x49u));
  v267 = *(a22 + 4 * (HIBYTE(v261) ^ 0xC5)) ^ *(a26 + 4 * (BYTE2(v264) ^ 0xF8u)) ^ *(v122 + 4 * (BYTE1(v249) ^ 0x77u)) ^ *(v124 + 4 * v263);
  v268 = *(a26 + 4 * (BYTE2(v249) ^ 0x29u)) ^ *(a22 + 4 * (HIBYTE(v264) ^ 0x91));
  v269 = *(a22 + 4 * HIBYTE(v263));
  v270 = v122;
  v271 = *(v122 + 4 * v265);
  v272 = *(v122 + 4 * BYTE1(v263));
  if ((v556 ^ v554) == 0xA8)
  {
    v273 = v272;
  }

  else
  {
    v273 = v268 ^ 0x2EF9EF5F ^ v272;
  }

  v274 = v269 ^ *(v124 + 4 * (v249 ^ 0xA8u)) ^ *(a26 + 4 * (BYTE2(v261) ^ 0x2Cu)) ^ v271;
  v275 = 2 * ((v273 ^ 0x169F8381) & (v268 ^ 0x510610A0) ^ v268 & 0x7BC48C2E);
  v276 = (((v272 ^ 0x94086F20) + 1811386592) ^ ((v272 ^ 0x524C8732) - 1380747058) ^ ((v272 ^ 0xAB1FE7BD) + 1423972419)) + (((v268 ^ 0xECCCE639) + 322116039) ^ ((v268 ^ 0xA38E339D) + 1550961763) ^ ((v268 ^ 0x1E44C504) - 507823364)) - (((v275 ^ 0x2FBE13D2) - 1036277308) ^ ((v275 ^ 0xE54CBAE4) + 147390710) ^ ((v275 ^ 0x68FAA976) - 2055269528));
  v277 = ((v276 + 1785624853) ^ 0x1B4569EC) & (2 * ((v276 + 1785624853) & 0xA380618C)) ^ (v276 + 1785624853) & 0xA380618C;
  v278 = ((2 * ((v276 + 1785624853) ^ 0x1A4569FC)) ^ 0x738A10E0) & ((v276 + 1785624853) ^ 0x1A4569FC) ^ (2 * ((v276 + 1785624853) ^ 0x1A4569FC)) & 0xB9C50870;
  v279 = v278 ^ 0x88450810;
  v280 = (v278 ^ 0x10000060) & (4 * v277) ^ v277;
  v281 = ((4 * v279) ^ 0xE71421C0) & v279 ^ (4 * v279) & 0xB9C50870;
  v282 = v280 ^ 0xB9C50870 ^ (v281 ^ 0xA1040040) & (16 * v280);
  v283 = (16 * (v281 ^ 0x18C10830)) & 0xB9C50870 ^ 0x21850870 ^ ((16 * (v281 ^ 0x18C10830)) ^ 0x9C508700) & (v281 ^ 0x18C10830);
  v284 = (v282 << 8) & 0xB9C50800 ^ v282 ^ ((v282 << 8) ^ 0xC5087000) & v283;
  v285 = *(v124 + 4 * (v261 ^ 0x5Bu));
  v286 = (v276 + 1785624853) ^ v285 ^ (2 * ((v284 << 16) & 0x39C50000 ^ v284 ^ ((v284 << 16) ^ 0x8700000) & ((v283 << 8) & 0xB9C50000 ^ 0x38C50000 ^ ((v283 << 8) ^ 0xC5080000) & v283)));
  v287 = -383982720 - (((v285 ^ 0x3AB4DEEC) - 984932076) ^ ((v285 ^ 0xF09697C8) + 258566200) ^ ((v285 ^ 0x890686CB) + 1996060981));
  v288 = (v287 ^ 0x9BBD4EC8) & (2 * (v287 & 0xD3BE4C91)) ^ v287 & 0xD3BE4C91;
  v289 = ((2 * (v287 ^ 0x1CFDC7EA)) ^ 0x9E8716F6) & (v287 ^ 0x1CFDC7EA) ^ (2 * (v287 ^ 0x1CFDC7EA)) & 0xCF438B7A;
  v290 = (v289 ^ 0x8E030240) & (4 * v288) ^ v288;
  v291 = ((4 * (v289 ^ 0x41408909)) ^ 0x3D0E2DEC) & (v289 ^ 0x41408909) ^ (4 * (v289 ^ 0x41408909)) & 0xCF438B78;
  v292 = (v291 ^ 0xD020960) & (16 * v290) ^ v290;
  v293 = ((16 * (v291 ^ 0xC2418213)) ^ 0xF438B7B0) & (v291 ^ 0xC2418213) ^ (16 * (v291 ^ 0xC2418213)) & 0xCF438B70;
  v294 = v292 ^ 0xCF438B7B ^ (v293 ^ 0xC4008300) & (v292 << 8);
  v295 = (-20 - *(v71 - 232)) & 8;
  v296 = v276 - (((v286 ^ 0x5B925BE) + 1121837530) ^ ((v286 ^ 0x66CD7BEF) + 564772745) ^ ((v286 ^ 0xE2DAE0D2) - 1514265418)) - 665371291;
  v297 = (v266 ^ 0xFB753C31) >> v295 >> (v295 ^ 8);
  v298 = v287 ^ v285 ^ (2 * ((v294 << 16) & 0x4F430000 ^ v294 ^ ((v294 << 16) ^ 0xB7B0000) & (((v293 ^ 0xB43084B) << 8) & 0x4F430000 ^ 0xC400000 ^ (((v293 ^ 0xB43084B) << 8) ^ 0x438B0000) & (v293 ^ 0xB43084B)))) ^ v296 ^ ((v296 ^ 0xD5BFBDDE) + 702391807) ^ ((v296 ^ 0x9BD67D26) + 1739875591) ^ ((v296 ^ 0x3608D8D9) - 898973446) ^ ((v296 ^ 0x7BFCFFFE) - 2019629089);
  v299 = v276 + 830767433 + (((v298 ^ 0x9FB4530C) - 771729318) ^ ((v298 ^ 0x22714D6E) + 1875199548) ^ ((v298 ^ 0xA6C36C35) - 344496287));
  v300 = ((v299 ^ 0x97C344E6) + 309634227) ^ v299 ^ ((v299 ^ 0xDEF0B49A) + 1531401423) ^ ((v299 ^ 0xCDA61408) + 1209136221) ^ ((v299 ^ 0xFEDDFBDF) + 2070551436);
  v301 = *(v122 + 4 * (BYTE1(v267) ^ 0x84u));
  v302 = *(a26 + 4 * (BYTE2(v267) ^ 0x39u));
  v303 = v301 ^ 0x41AB9BBB;
  if (v302 == 810166084)
  {
    v303 = -753964053;
  }

  v304 = *(a22 + 4 * (HIBYTE(v266) ^ 0xFB));
  v305 = (v303 ^ 0xD30F6AEB) & (v301 ^ 0xA336D541) ^ v303 & 0xCE6DDAEE;
  v306 = (v305 ^ 0x3D72C8A1) & (v304 ^ 0x614C37E4) ^ v304 & 0xFF7F824B;
  v307 = ((v304 ^ 0xDBF88688) + 604469624) ^ ((v304 ^ 0x6F3D63A8) - 1866294184) ^ ((v304 ^ 0xD589D2C4) + 712387900);
  v308 = v304 ^ 0xA9AB532C ^ v305;
  v309 = v307 - (((v305 ^ 0x989CE015) - 513287381) ^ ((v305 ^ 0xA21C6CA6) - 605595750) ^ ((v305 ^ 0xF88DC659) - 2122908313)) + 1015766319;
  v310 = (v309 ^ 0xE6B76A2A) & (2 * (v309 & 0xE0B74C8B)) ^ v309 & 0xE0B74C8B;
  v311 = ((2 * (v309 ^ 0xA7FDE32A)) ^ 0x8E955F42) & (v309 ^ 0xA7FDE32A) ^ (2 * (v309 ^ 0xA7FDE32A)) & 0x474AAFA0;
  v312 = (v311 ^ 0x6000600) & (4 * v310) ^ v310;
  v313 = ((4 * (v311 ^ 0x414AA0A1)) ^ 0x1D2ABE84) & (v311 ^ 0x414AA0A1) ^ (4 * (v311 ^ 0x414AA0A1)) & 0x474AAFA0;
  v314 = (v313 ^ 0x50AAE80) & (16 * v312) ^ v312;
  v315 = ((16 * (v313 ^ 0x42400121)) ^ 0x74AAFA10) & (v313 ^ 0x42400121) ^ (16 * (v313 ^ 0x42400121)) & 0x474AAFA0;
  v316 = v314 ^ 0x474AAFA1 ^ (v315 ^ 0x440AAA00) & (v314 << 8);
  if (v306 == 1632371264)
  {
    v317 = v308;
  }

  else
  {
    v317 = v309 ^ (2 * ((v316 << 16) & 0x474A0000 ^ v316 ^ ((v316 << 16) ^ 0x2FA10000) & (((v315 ^ 0x34005A1) << 8) & 0x474A0000 ^ 0x5400000 ^ (((v315 ^ 0x34005A1) << 8) ^ 0x4AAF0000) & (v315 ^ 0x34005A1)))) ^ 0x6AC83DEB;
  }

  v318 = v301 & 0xFFFFFEFF ^ *(a26 + 4 * (BYTE2(v274) ^ 0x6Cu)) ^ v317;
  v319 = ((v318 ^ 0x278B9777) + 208283619) ^ ((v318 ^ 0xC238127B) - 371612945) ^ ((v318 ^ 0x31ADCA66) + 441219828);
  v320 = *(v124 + 4 * (v300 ^ 0x2Bu));
  v321 = v319 - (((v318 ^ v320 ^ 0x7DDF86AC) + 705842813) ^ ((v318 ^ v320 ^ 0xCF7AC824) - 1732837131) ^ ((v318 ^ v320 ^ 0x259FCE0D) + 1917978334)) + 60899182;
  v322 = (v321 ^ 0xBC06E2C5) & (2 * (v321 & 0xBD5608E8)) ^ v321 & 0xBD5608E8;
  v323 = ((2 * (v321 ^ 0xD622E355)) ^ 0xD6E9D77A) & (v321 ^ 0xD622E355) ^ (2 * (v321 ^ 0xD622E355)) & 0x6B74EBBC;
  v324 = (v323 ^ 0x42604320) & (4 * v322) ^ v322;
  v325 = ((4 * (v323 ^ 0x29142885)) ^ 0xADD3AEF4) & (v323 ^ 0x29142885) ^ (4 * (v323 ^ 0x29142885)) & 0x6B74EBBC;
  v326 = ((16 * (v325 ^ 0x42244109)) ^ 0xB74EBBD0) & (v325 ^ 0x42244109) ^ (16 * (v325 ^ 0x42244109)) & 0x6B74EBB0;
  v327 = (v325 ^ 0x2950AAA0) & (16 * v324) ^ v324 ^ 0x6B74EBBD ^ (v326 ^ 0x2344AB00) & (((v325 ^ 0x2950AAA0) & (16 * v324) ^ v324) << 8);
  v328 = 369917761 - (((v320 ^ 0x47660C0) - 74866880) ^ ((v320 ^ 0xBAD8787B) + 1160218501) ^ ((v320 ^ 0xFD8AD754) + 41232556));
  v329 = (v328 ^ 0x86CCB497) & (2 * (v328 & 0xA6CEB0D0)) ^ v328 & 0xA6CEB0D0;
  v330 = ((2 * (v328 ^ 0x8FD9B5B7)) ^ 0x522E0ACE) & (v328 ^ 0x8FD9B5B7) ^ (2 * (v328 ^ 0x8FD9B5B7)) & 0x29170566;
  v331 = (v330 ^ 0x60040) & (4 * v329) ^ v329;
  v332 = ((4 * (v330 ^ 0x29110521)) ^ 0xA45C159C) & (v330 ^ 0x29110521) ^ (4 * (v330 ^ 0x29110521)) & 0x29170564;
  v333 = (v332 ^ 0x20140500) & (16 * v331) ^ v331;
  v334 = ((16 * (v332 ^ 0x9030063)) ^ 0x91705670) & (v332 ^ 0x9030063) ^ (16 * (v332 ^ 0x9030063)) & 0x29170560;
  v335 = v333 ^ 0x29170567 ^ (v334 ^ 0x1100400) & (v333 << 8);
  v336 = v328 ^ v320 ^ v321 ^ (2 * ((v335 << 16) & 0x29170000 ^ v335 ^ ((v335 << 16) ^ 0x5670000) & (((v334 ^ 0x28070107) << 8) & 0x29170000 ^ 0x28120000 ^ (((v334 ^ 0x28070107) << 8) ^ 0x17050000) & (v334 ^ 0x28070107)) ^ v327 ^ (v327 << 16) & 0x6B740000 ^ ((v327 << 16) ^ 0x6BBD0000) & (((v326 ^ 0x4830402D) << 8) & 0x6B740000 ^ 0xB140000 ^ (((v326 ^ 0x4830402D) << 8) ^ 0x74EB0000) & (v326 ^ 0x4830402D))));
  v337 = v319 + 253674391 + (((v336 ^ 0xA0F3703) + 150511423) ^ ((v336 ^ 0xC303AF78) - 1040971962) ^ ((v336 ^ 0xC1113218) - 1008297434));
  v338 = ((v337 ^ 0xC6E99B75) + 589209981) ^ v337 ^ ((v337 ^ 0x15EC1FC1) - 266656311) ^ ((v337 ^ 0xB6F0AA3C) + 1393004598) ^ ((v337 ^ 0x7FFDEB7E) - 1710567048);
  v339 = HIBYTE(v300) ^ 0x6A;
  v340 = *(v270 + 4 * ((v300 ^ 0xD92B) >> 8)) ^ v302 ^ *(a22 + 4 * (HIBYTE(v274) ^ 0x3B)) ^ *(v124 + 4 * (v266 ^ 0x31u));
  v341 = *(a22 + 4 * (HIBYTE(v267) ^ 0x81)) ^ *(v270 + 4 * v297) ^ *(v124 + 4 * (v274 ^ 0x72u)) ^ *(a26 + 4 * ((v300 ^ 0x6A89D92B) >> 16));
  v342 = (v338 ^ 0x1A08C5F6) >> (v249 & 0x10) >> (v249 & 0x10 ^ 0x10);
  v343 = (v340 ^ 0xB889F9D1) >> (v338 & 8) >> (v338 & 8 ^ 8);
  v344 = *(a26 + 4 * (BYTE2(v340) ^ 0x89u));
  v345 = *(a22 + 4 * v339) ^ *(v124 + 4 * (v267 ^ 0xC9u)) ^ *(v270 + 4 * (BYTE1(v274) ^ 0xB1u)) ^ *(a26 + 4 * (BYTE2(v266) ^ 0x75u));
  v346 = *(v270 + 4 * (BYTE1(v341) ^ 0xADu)) ^ *(a22 + 4 * (HIBYTE(v338) ^ 0x1A));
  v347 = v346 ^ v344;
  v348 = (((v346 ^ 0xE825420A) + 400211446) ^ ((v346 ^ 0x3F19FA01) - 1058667009) ^ ((v346 ^ 0xDB2B8040) + 617906112)) - (((v347 ^ 0xD0C4CC32) + 792409038) ^ ((v347 ^ 0x6DA70F10) - 1839664912) ^ ((v347 ^ 0x813EDC2D) + 2126586835)) + 113564794;
  v349 = (v348 ^ 0x84E13AFA) & (2 * (v348 & 0xC8F53CC2)) ^ v348 & 0xC8F53CC2;
  v350 = ((2 * (v348 ^ 0x40B1A7A)) ^ 0x99FC4D70) & (v348 ^ 0x40B1A7A) ^ (2 * (v348 ^ 0x40B1A7A)) & 0xCCFE26B8;
  v351 = (v350 ^ 0xFC0410) & (4 * v349) ^ v349;
  v352 = ((4 * (v350 ^ 0x44022288)) ^ 0x33F89AE0) & (v350 ^ 0x44022288) ^ (4 * (v350 ^ 0x44022288)) & 0xCCFE26B8;
  v353 = (v352 ^ 0xF802A0) & (16 * v351) ^ v351;
  v354 = ((16 * (v352 ^ 0xCC062418)) ^ 0xCFE26B80) & (v352 ^ 0xCC062418) ^ (16 * (v352 ^ 0xCC062418)) & 0xCCFE26B0;
  v355 = v353 ^ 0xCCFE26B8 ^ (v354 ^ 0xCCE22200) & (v353 << 8);
  v356 = (v355 << 16) & 0x4CFE0000 ^ v355 ^ ((v355 << 16) ^ 0x26B80000) & (((v354 ^ 0x1C0438) << 8) & 0x4CFE0000 ^ 0xD80000 ^ (((v354 ^ 0x1C0438) << 8) ^ 0x7E260000) & (v354 ^ 0x1C0438));
  *(v71 - 232) = *(a22 + 4 * (HIBYTE(v340) ^ 0xB8)) ^ *(a26 + 4 * (BYTE2(v341) ^ 0xC9u));
  if (v345)
  {
    v357 = (v345 ^ 0x78) - 1;
  }

  else
  {
    v357 = (v345 ^ 0x78) + 1;
  }

  v358 = 29122871 - (((v344 ^ 0xA5F06739) + 1510971591) ^ ((v344 ^ 0x1787606D) - 394748013) ^ ((v344 ^ 0x823D2010) + 2109923312));
  v359 = v358 ^ v344 ^ ((v358 ^ 0xF45EAD6) - 1027826349) ^ ((v358 ^ 0x41A82393) - 1940827112) ^ ((v358 ^ 0xA314BE53) + 1861077464) ^ ((v358 ^ 0xDFFFFF6D) + 302418154) ^ v348 ^ (2 * v356);
  v569 = *(v124 + 4 * (v357 ^ 1u));
  v360 = (((v346 ^ 0x1A3A8EE2) - 440045282) ^ ((v346 ^ 0xCDB68766) + 843675802) ^ ((v346 ^ 0xDB9B31CF) + 610586161)) - 882185570 + (((v359 ^ 0xA0A6D9E5) - 1591148684) ^ ((v359 ^ 0x538367E4) + 1376600435) ^ ((v359 ^ 0xA910608C) - 1466022373));
  v361 = v360 ^ v569 ^ ((v360 ^ 0x1A7A3928) - 24482631) ^ ((v360 ^ 0x3E6A400D) - 627436130) ^ ((v360 ^ 0xC4E00C95) + 537942278) ^ ((v360 ^ 0xFBFFDFDF) + 521112144);
  v362 = *(a22 + 4 * (HIBYTE(v341) ^ 0x46)) ^ *(a26 + 4 * (BYTE2(v345) ^ 8u)) ^ *(v270 + 4 * (BYTE1(v338) ^ 0xC5u));
  v363 = *(v124 + 4 * (v340 ^ 0xD1u));
  v364 = v362 ^ v363;
  v365 = (((v363 ^ 0x6F54668C) - 1867802252) ^ ((v363 ^ 0x2D101043) - 756027459) ^ ((v363 ^ 0x160B920) - 23116064)) - (((v364 ^ 0x74EF1FB5) - 1961828277) ^ ((v364 ^ 0xB9826EF7) + 1182634249) ^ ((v364 ^ 0xB214A1A2) + 1307270750)) + 326545474;
  v366 = (v365 ^ 0x2A360CEC) & (2 * (v365 & 0xB0344ECD)) ^ v365 & 0xB0344ECD;
  v367 = ((2 * (v365 ^ 0x6A16807E)) ^ 0xB4459D66) & (v365 ^ 0x6A16807E) ^ (2 * (v365 ^ 0x6A16807E)) & 0xDA22CEB2;
  v368 = (v367 ^ 0x80000C20) & (4 * v366) ^ v366;
  v369 = ((4 * (v367 ^ 0x4A224291)) ^ 0x688B3ACC) & (v367 ^ 0x4A224291) ^ (4 * (v367 ^ 0x4A224291)) & 0xDA22CEB0;
  v370 = (v369 ^ 0x48020A80) & (16 * v368) ^ v368;
  v371 = ((16 * (v369 ^ 0x9220C433)) ^ 0xA22CEB30) & (v369 ^ 0x9220C433) ^ (16 * (v369 ^ 0x9220C433)) & 0xDA22CEB0;
  v372 = v370 ^ 0xDA22CEB3 ^ (v371 ^ 0x8220CA83) & (v370 << 8);
  v373 = ((v372 << 16) ^ 0x4EB30000) & (((v371 ^ 0x58020483) << 8) & 0x5A220000 ^ 0x58200000 ^ (((v371 ^ 0x58020483) << 8) ^ 0x22CE0000) & (v371 ^ 0x58020483));
  v374 = 927920042 - (((v362 ^ 0x5C436D12) - 1547922706) ^ ((v362 ^ 0x1FD1B19) - 33364761) ^ ((v362 ^ 0x61E36904) - 1642293508));
  v375 = (v374 ^ 0xC03E157) & (2 * (v374 & 0x8C53F147)) ^ v374 & 0x8C53F147;
  v376 = ((2 * (v374 ^ 0x1C268351)) ^ 0x20EAE42C) & (v374 ^ 0x1C268351) ^ (2 * (v374 ^ 0x1C268351)) & 0x90757216;
  v377 = (v376 ^ 0x404004) & (4 * v375) ^ v375;
  v378 = ((4 * (v376 ^ 0x90151212)) ^ 0x41D5C858) & (v376 ^ 0x90151212) ^ (4 * (v376 ^ 0x90151212)) & 0x90757214;
  v379 = (v378 ^ 0x554016) & (16 * v377) ^ v377;
  v380 = ((16 * (v378 ^ 0x90203206)) ^ 0x7572160) & (v378 ^ 0x90203206) ^ (16 * (v378 ^ 0x90203206)) & 0x90757210;
  v381 = v379 ^ 0x90757216 ^ (v380 ^ 0x552016) & (v379 << 8);
  v382 = *(v270 + 4 * v343) ^ *(a22 + 4 * (HIBYTE(v345) ^ 0x56)) ^ *(a26 + 4 * v342) ^ *(v124 + 4 * (v341 ^ 0xF8u));
  v383 = v374 ^ v362 ^ v365 ^ (2 * ((v381 << 16) & 0x10750000 ^ v381 ^ v372 ^ ((v381 << 16) ^ 0x72160000) & (((v380 ^ 0x90205216) << 8) & 0x90750000 ^ 0x50000 ^ (((v380 ^ 0x90205216) << 8) ^ 0x75720000) & (v380 ^ 0x90205216)) ^ (v372 << 16) & 0x5A220000 ^ v373));
  v384 = (((v363 ^ 0xAED00D11) + 1362096879) ^ ((v363 ^ 0xE2435494) + 498903916) ^ ((v363 ^ 0xFB7966A) - 263689834)) + 1725716342 + (((v383 ^ 0x54D00A7A) - 2143144794) ^ ((v383 ^ 0xCBEDCDEC) + 528479028) ^ ((v383 ^ 0xBFC41E59) + 1800806535));
  v385 = ((v384 ^ 0x1717BDB6) - 255120174) ^ v384 ^ ((v384 ^ 0xF2ADDCBC) + 359747036) ^ ((v384 ^ 0x277E07D) - 441749221) ^ ((v384 ^ 0xFFEEEFEF) + 405962377);
  v557 = *(a26 + 4 * (BYTE2(v382) ^ 0xB8u));
  v386 = *(v71 - 232) ^ *(v270 + 4 * (BYTE1(v345) ^ 0x6Bu)) ^ *(v124 + 4 * (v338 ^ 0xF6u));
  v387 = v557 ^ *(v270 + 4 * (BYTE1(v361) ^ 0xB3u)) ^ *(a22 + 4 * (HIBYTE(v385) ^ 0x25));
  v388 = *(a26 + 4 * (BYTE2(v386) ^ 0x79u));
  v389 = *(v270 + 4 * (BYTE1(v385) ^ 0xECu)) ^ v388 ^ *(a22 + 4 * (HIBYTE(v361) ^ 0x9B));
  v390 = *(a22 + 4 * (HIBYTE(v386) ^ 0x7B)) ^ *(v124 + 4 * (v361 ^ 0x68u));
  v391 = *(a26 + 4 * (BYTE2(v385) ^ 0x93u));
  v555 = *(v270 + 4 * (BYTE1(v386) ^ 0x2Fu));
  v392 = *(v124 + 4 * (v385 ^ 0x59u)) ^ v555 ^ *(a26 + 4 * (BYTE2(v361) ^ 0xDBu));
  v393 = *(a22 + 4 * (HIBYTE(v382) ^ 0x6B));
  v394 = v392 ^ v393;
  v395 = (v392 ^ v393 ^ 0x8835D8D9) >> (v558 & 0x10) >> (~v558 & 0x10);
  v396 = *(v270 + 4 * (BYTE1(v382) ^ 0xE9u));
  v397 = *(v124 + 4 * (v386 ^ 0x39u));
  v398 = v391 ^ v390 ^ v396;
  v399 = *(v124 + 4 * (v382 ^ 0xB9u));
  v400 = __ROR4__(__ROR4__(v389 ^ v399, 16) ^ 0xAA1472, 16);
  v401 = *(v124 + 4 * (v400 ^ 0x32u)) ^ *(a22 + 4 * (HIBYTE(v398) ^ 0xA1)) ^ *(a26 + 4 * (((v387 ^ v397) >> 16) ^ 0xF4u)) ^ *(v270 + 4 * (BYTE1(v394) ^ 0xD8u));
  v402 = *(a26 + 4 * (BYTE2(v398) ^ 0x44u)) ^ *(v124 + 4 * (v394 ^ 0xD9u)) ^ *(v270 + 4 * (((v387 ^ v397) >> 8) ^ 0xE1u)) ^ *(a22 + 4 * ((v400 ^ 0xB1369C32) >> 24));
  v403 = ((v569 & 0x800) - 960467580) ^ (v569 & 0x800 | 0xB93F617C) ^ ((v569 & 0x800 ^ 0x9D478E56) + 737930798);
  v574 = v398;
  v404 = *(v124 + 4 * (v398 ^ 0x41u)) ^ *(a26 + 4 * v395) ^ *(v270 + 4 * ((v400 ^ 0x9C32) >> 8)) ^ *(a22 + 4 * (((v387 ^ v397) >> 24) ^ 0x9C));
  v405 = v403 - 1808808715;
  v406 = ((v405 ^ 0x2CA5CD8E) - 1716117759) ^ v405 ^ ((v405 ^ 0xCC73732A) + 2036375973) ^ ((v405 ^ 0xD5456A2A) + 1616296101) ^ ((v405 ^ 0x7F7FF9FF) - 898880654);
  v407 = *(a22 + 4 * (HIBYTE(v394) ^ 0x88)) ^ *(v124 + 4 * ((v387 ^ v397) ^ 0x80u)) ^ *(v270 + 4 * (BYTE1(v398) ^ 0x63u)) ^ *(a26 + 4 * ((v400 ^ 0xB1369C32) >> 16));
  v408 = 27825645 - v403;
  if (((v406 ^ 0x4AEC2D71) & (v347 ^ 0xCA050C5A) ^ v406 & 0xF6581355) == 0x42480151)
  {
    v408 = v405;
  }

  v409 = (((v347 ^ 0xDEDA9A0C) + 556099060) ^ ((v347 ^ 0x81109B59) + 2129618087) ^ ((v347 ^ 0x63971E5A) - 1670848090)) + 655482785 + v408;
  v410 = (v409 ^ 0x881E49FD) & (2 * (v409 & 0xCA5F11FD)) ^ v409 & 0xCA5F11FD;
  v411 = ((2 * (v409 ^ 0x889C4BBD)) ^ 0x8586B480) & (v409 ^ 0x889C4BBD) ^ (2 * (v409 ^ 0x889C4BBD)) & 0x42C35A40;
  v412 = (v411 ^ 0x800000) & (4 * v410) ^ v410;
  v413 = ((4 * (v411 ^ 0x42414A40)) ^ 0xB0D6900) & (v411 ^ 0x42414A40) ^ (4 * (v411 ^ 0x42414A40)) & 0x42C35A40;
  v414 = (v413 ^ 0x2014800) & (16 * v412) ^ v412;
  v415 = ((16 * (v413 ^ 0x40C21240)) ^ 0x2C35A400) & (v413 ^ 0x40C21240) ^ (16 * (v413 ^ 0x40C21240)) & 0x42C35A40;
  v416 = v414 ^ 0x42C35A40 ^ (v415 ^ 0x10000) & (v414 << 8);
  v417 = v569 & 0xFFFFF7FF ^ v409 ^ (2 * ((v416 << 16) & 0x42C30000 ^ v416 ^ ((v416 << 16) ^ 0x5A400000) & (((v415 ^ 0x42C25A40) << 8) & 0x42C30000 ^ 0x810000 ^ (((v415 ^ 0x42C25A40) << 8) ^ 0x435A0000) & (v415 ^ 0x42C25A40))));
  v418 = ((v362 & 0xB1809401 ^ 0xE4B85836 ^ (v362 & 0xF196FD13 ^ 0x30141D03) & (v363 ^ 0xF0845902)) & (v364 & 0xE6902EC ^ 0xF3D6FD9F) | v364 & 0xA4102C8) ^ 0xDEF94CF7;
  v419 = v362 & 0xB0847400 ^ (v362 & 0xF196FD13 ^ 0xC182E010) & (v363 ^ 0x164410) ^ 0x7F147AFF ^ (v418 + 867329326 + (~(2 * v418) | 0x989B35A5));
  v420 = v417 ^ 0x4B8DB47A;
  v421 = v396 ^ *(a22 + 4 * ((v386 ^ 0x7B792F39) >> (*(v71 - 232) & 0x18) >> (*(v71 - 232) & 0x18 ^ 0x18))) ^ *(a26 + 4 * BYTE2(v419)) ^ *(v124 + 4 * (v417 ^ 0x7Au));
  v422 = v399 ^ __ROR4__(__ROR4__(*(a22 + 4 * ((v417 ^ 0x4B8DB47A) >> 24)) ^ v388 ^ *(v270 + 4 * BYTE1(v419)), 3) ^ 0x9A5FB434, 29);
  v423 = __ROR4__(__ROR4__(*(a22 + 4 * HIBYTE(v419)) ^ v557 ^ v397 ^ *(v270 + 4 * BYTE1(v420)), 27) ^ 0xB3F192BC, 5);
  v424 = v555 ^ v393 ^ *(v124 + 4 * v419) ^ *(a26 + 4 * BYTE2(v420));
  v425 = *(v124 + 4 * ((v555 ^ v393 ^ *(v124 + 4 * v419) ^ *(a26 + 4 * BYTE2(v420))) ^ 0xD9u));
  v426 = *(a26 + 4 * (BYTE2(v421) ^ 0x44u)) ^ *(v270 + 4 * ((v423 ^ 0x6D15) >> 8)) ^ *(a22 + 4 * (HIBYTE(v422) ^ 0x77));
  v427 = (v425 ^ 0x6EC06745) & (v426 ^ 0x3C5D1F0F) ^ v426 & 0x2DE4A8AA;
  v428 = (((v426 ^ 0x7EBC8BBE) - 2126285758) ^ ((v426 ^ 0xDB32B4B1) + 617433935) ^ ((v426 ^ 0x99D32000) + 1714216960)) + (((v425 ^ 0xB236264C) + 1305074100) ^ ((v425 ^ 0x707F3C68) - 1887386728) ^ ((v425 ^ 0x816DD5CB) + 2123508277)) - ((((2 * v427) ^ 0xFB46C103) - 75928407) ^ (((2 * v427) ^ 0x9B583CFC) - 1687711400) ^ (((2 * v427) ^ 0x3896EDEB) + 950616129));
  v429 = (v428 + 810357378) ^ (((v428 + 810357378) ^ 0x1C8D18D8) - 1151237404) ^ (((v428 + 810357378) ^ 0xACAC9667) + 188746845) ^ (((v428 + 810357378) ^ 0x97CD3494) + 807513776) ^ (((v428 + 810357378) ^ 0x7FFFDFEF) - 669825579) ^ 0x1AC6A529;
  v430 = *(a22 + 4 * ((v423 ^ 0x796B6D15u) >> 24)) ^ *(a26 + 4 * (BYTE2(v424) ^ 0x35u)) ^ *(v270 + 4 * (BYTE1(v422) ^ 0x3Du)) ^ *(v124 + 4 * (v421 ^ 0x41u));
  v431 = *(a22 + 4 * (HIBYTE(v421) ^ 0xA1)) ^ *(v270 + 4 * (BYTE1(v424) ^ 0xD8u)) ^ *(a26 + 4 * ((v423 ^ 0x796B6D15u) >> 16)) ^ *(v124 + 4 * (v422 ^ 0x3Cu));
  v432 = *(a26 + 4 * (BYTE2(v422) ^ 0xB9u)) ^ *(a22 + 4 * (HIBYTE(v424) ^ 0x88)) ^ *(v124 + 4 * (v423 ^ 0x15u)) ^ *(v270 + 4 * (BYTE1(v421) ^ 0x63u)) ^ 0xF7509AF5;
  v433 = ((v430 ^ 0xBBFA6935) + 1142490119) ^ ((v430 ^ 0xDDD901D) - 230752977) ^ ((v430 ^ 0xB63B6BE4) + 1238894296);
  v434 = (((v404 ^ 0xF5C870B5) + 519984432) ^ ((v404 ^ 0xDA2A55B3) + 823947306) ^ ((v404 ^ 0x2FFEB7CA) - 993488303)) - v433 + 2095811287;
  v435 = (v434 ^ 0x134B9EFA) & (2 * (v434 & 0xA38A1CF8)) ^ v434 & 0xA38A1CF8;
  v436 = ((2 * (v434 ^ 0x554BBFEA)) ^ 0xED834624) & (v434 ^ 0x554BBFEA) ^ (2 * (v434 ^ 0x554BBFEA)) & 0xF6C1A312;
  v437 = (v436 ^ 0x84000200) & (4 * v435) ^ v435;
  v438 = ((4 * (v436 ^ 0x1240A112)) ^ 0xDB068C48) & (v436 ^ 0x1240A112) ^ (4 * (v436 ^ 0x1240A112)) & 0xF6C1A310;
  v439 = (v438 ^ 0xD2008000) & (16 * v437) ^ v437;
  v440 = ((16 * (v438 ^ 0x24C12312)) ^ 0x6C1A3120) & (v438 ^ 0x24C12312) ^ (16 * (v438 ^ 0x24C12312)) & 0xF6C1A310;
  v441 = ((v439 ^ 0xF6C1A312 ^ (v440 ^ 0x64002100) & (v439 << 8)) << 16) & 0x76C10000 ^ v439 ^ 0xF6C1A312 ^ (v440 ^ 0x64002100) & (v439 << 8) ^ (((v439 ^ 0xF6C1A312 ^ (v440 ^ 0x64002100) & (v439 << 8)) << 16) ^ 0x23120000) & (((v440 ^ 0x92C18212) << 8) & 0x76C10000 ^ 0x36400000 ^ (((v440 ^ 0x92C18212) << 8) ^ 0x41A30000) & (v440 ^ 0x92C18212));
  v442 = ((v431 ^ 0x145FAFE5) + 137491383) ^ ((v431 ^ 0xCF2342F8) - 749920596) ^ ((v431 ^ 0x38ED4EB1) + 612569827);
  v443 = -1381112375 * ((((2 * v401) & 0x31C14BB8 ^ 0x1014318) + (v401 ^ 0xFB710670) - v442) ^ 0x4045A270);
  v444 = 1044263201 * (((((v407 ^ 0xF3FB9AC8) + 841632416) ^ ((v407 ^ 0xD5CF66E3) + 337557173) ^ ((v407 ^ 0xD16466DE) + 280344202)) - v432 - 160093403) ^ 0xD3589720);
  v445 = -v443 - 1034578271 * (((((v402 ^ 0xAFC072C3) + 9178326) ^ ((v402 ^ 0x4F16A5FD) - 530916372) ^ ((v402 ^ 0xDD7AC733) + 1916188966)) - v429 - 303312757) ^ 0x70E16B4F);
  v446 = -1244549321 * (v434 ^ (2 * v441) ^ 0x759E6FAA);
  v447 = v446 + v444;
  v448 = (v445 ^ v444) + 2 * (v445 & v444);
  v449 = v448 + v443 + v446;
  v450 = v447 + v445 - 2 * v447;
  v451 = v449 + v448;
  v452 = (v450 ^ (v449 + v448)) + 2 * (v450 & (v449 + v448));
  v453 = v447 - v450;
  v454 = v429 - v452;
  v455 = v449 - v452;
  v456 = (v449 - v452) ^ v453;
  v457 = v454 + 578078856;
  v458 = v456 + 2 * (v455 & v453);
  v459 = v458 + 851225440;
  v460 = v433 - v458;
  v461 = (v459 ^ 0x8D5B542C) & (2 * (v459 & 0xCD4354A0)) ^ v459 & 0xCD4354A0;
  v462 = ((2 * ((v458 + 851225440) ^ 0x95DFDC6C)) ^ 0xB1391198) & ((v458 + 851225440) ^ 0x95DFDC6C) ^ (2 * ((v458 + 851225440) ^ 0x95DFDC6C)) & 0x589C88CC;
  v463 = v462 ^ 0x48848844;
  v464 = (v462 ^ 0x10180080) & (4 * v461) ^ v461;
  v465 = ((4 * v463) ^ 0x62722330) & v463 ^ (4 * v463) & 0x589C88CC;
  v466 = (v465 ^ 0x40100000) & (16 * v464) ^ v464;
  v467 = ((16 * (v465 ^ 0x188C88CC)) ^ 0x89C88CC0) & (v465 ^ 0x188C88CC) ^ (16 * (v465 ^ 0x188C88CC)) & 0x589C88C0;
  v468 = v466 ^ 0x589C88CC ^ (v467 ^ 0x8888800) & (v466 << 8);
  v469 = v432 - ((v451 - ((2 * v451) & 0x29BAB128) + 350050452) ^ v459 ^ (2 * ((v468 << 16) & 0x589C0000 ^ v468 ^ ((v468 << 16) ^ 0x8CC0000) & (((v467 ^ 0x5014000C) << 8) & 0x589C0000 ^ 0x40140000 ^ (((v467 ^ 0x5014000C) << 8) ^ 0x1C880000) & (v467 ^ 0x5014000C)))) ^ 0x79BF1DAC);
  v470 = v442 - v455;
  v471 = ((2 * v469) & 0x8C588810) + (v469 ^ 0x462C4408);
  LOWORD(v451) = v460 - 22836;
  v472 = v470 - 1736811144;
  v473 = *(a58 + 4 * ((v460 - 631134516) >> 16));
  v474 = *(a58 + 4 * BYTE2(v471));
  HIDWORD(v475) = *(a25 + 4 * v457);
  LODWORD(v475) = HIDWORD(v475);
  v476 = *(a23 + 4 * ((v460 - 631134516) >> 24));
  v477 = *(a24 + 4 * BYTE1(v471)) ^ v473 ^ *(a23 + 4 * ((v470 - 1736811144) >> 24));
  v478 = (((v476 ^ 0xE51211F5) + 451800587) ^ ((v476 ^ 0x21705786) - 561010566) ^ ((v476 ^ 0x7DFE3A74) - 2113813108)) - (((v476 ^ v474 ^ 0x41B9EB95) - 1102703509) ^ ((v476 ^ v474 ^ 0x686BF7E5) - 1751906277) ^ ((v476 ^ v474 ^ 0x7303A960) - 1929619808)) - 882676812;
  v479 = (v478 ^ 0xCA671B7A) & (2 * (v478 & 0x93675B43)) ^ v478 & 0x93675B43;
  v480 = ((2 * (v478 ^ 0xE86B9FF8)) ^ 0xF6198976) & (v478 ^ 0xE86B9FF8) ^ (2 * (v478 ^ 0xE86B9FF8)) & 0x7B0CC4BA;
  v481 = v480 ^ 0x9044489;
  v482 = (v480 ^ 0x52088010) & (4 * v479) ^ v479;
  v483 = ((4 * v481) ^ 0xEC3312EC) & v481 ^ (4 * v481) & 0x7B0CC4B8;
  v484 = (v483 ^ 0x680000A0) & (16 * v482) ^ v482;
  v485 = ((16 * (v483 ^ 0x130CC413)) ^ 0xB0CC4BB0) & (v483 ^ 0x130CC413) ^ (16 * (v483 ^ 0x130CC413)) & 0x7B0CC4B0;
  v486 = ((v484 ^ 0x7B0CC4BB ^ (v485 ^ 0x300C4000) & (v484 << 8)) << 16) & 0x7B0C0000 ^ v484 ^ 0x7B0CC4BB ^ (v485 ^ 0x300C4000) & (v484 << 8) ^ (((v484 ^ 0x7B0CC4BB ^ (v485 ^ 0x300C4000) & (v484 << 8)) << 16) ^ 0x44BB0000) & (((v485 ^ 0x4B00840B) << 8) & 0x7B0C0000 ^ 0x73080000 ^ (((v485 ^ 0x4B00840B) << 8) ^ 0xCC40000) & (v485 ^ 0x4B00840B));
  v487 = -1794479369 - (((v474 ^ 0x835EBBB3) + 2090943565) ^ ((v474 ^ 0x9CEB7810) + 1662289904) ^ ((v474 ^ 0xFCF80AB4) + 50853196));
  v488 = v487 ^ v474 ^ ((v487 ^ 0x825EECAE) + 100214624) ^ ((v487 ^ 0x19B35864) - 1642818666) ^ ((v487 ^ 0x3D4A7F37) - 1158826809) ^ ((v487 ^ 0xDEFFFFF3) + 1498952707) ^ v478 ^ (2 * v486);
  v489 = (((v476 ^ 0x5EE68B4F) - 1592167247) ^ ((v476 ^ 0xBEC9E696) + 1094064490) ^ ((v476 ^ 0x59B311DE) - 1504907742)) + 1276127170 + (((v488 ^ 0x67EE88B0) - 1140095036) ^ ((v488 ^ 0xC19A61AC) + 444559072) ^ ((v488 ^ 0xD80FC630) + 65718596));
  v490 = (v489 ^ 0x97CF3BE0) & (2 * (v489 & 0xC7EE33E5)) ^ v489 & 0xC7EE33E5;
  v491 = ((2 * (v489 ^ 0x1E431B20)) ^ 0xB35A518A) & (v489 ^ 0x1E431B20) ^ (2 * (v489 ^ 0x1E431B20)) & 0xD9AD28C4;
  v492 = v491 ^ 0x48A52845;
  v493 = (v491 ^ 0x11080080) & (4 * v490) ^ v490;
  v494 = ((4 * v492) ^ 0x66B4A314) & v492 ^ (4 * v492) & 0xD9AD28C4;
  v495 = v493 ^ 0xD9AD28C5 ^ (v494 ^ 0x40A42000) & (16 * v493);
  v496 = (16 * (v494 ^ 0x990908C1)) & 0xD9AD28C0 ^ 0x412D2085 ^ ((16 * (v494 ^ 0x990908C1)) ^ 0x9AD28C50) & (v494 ^ 0x990908C1);
  v497 = (v495 << 8) & 0xD9AD2800 ^ v495 ^ ((v495 << 8) ^ 0xAD28C500) & v496;
  v498 = *(v71 - 256);
  LODWORD(v475) = __ROR4__((v475 >> 12) ^ (v477 >> 12) ^ (v477 << 20) ^ 0x9E71DA8F, 20);
  v499 = a34 ^ v498 ^ a21 ^ *(a58 + 4 * BYTE2(v472)) ^ *(a23 + 4 * HIBYTE(v457)) ^ *(a24 + 4 * BYTE1(v451)) ^ *(a25 + 4 * v471);
  v500 = *(a25 + 4 * v472) ^ *(a24 + 4 * BYTE1(v457)) ^ v489 ^ (2 * ((v497 << 16) & 0x59AD0000 ^ v497 ^ ((v497 << 16) ^ 0x28C50000) & ((v496 << 8) & 0x59AD0000 ^ 0x50850000 ^ ((v496 << 8) ^ 0x2D280000) & v496)));
  v501 = (((v475 ^ 0xCAA23CAC) + 1356794117 - ((2 * (v475 ^ 0xCAA23CAC)) & 0x21BE120A)) ^ a34) & 0x6A168543 | (((v475 ^ 0xCAA23CAC) + 1356794117 - ((2 * (v475 ^ 0xCAA23CAC)) & 0xA1BE120A)) ^ a34) & 0x95E97ABC;
  v502 = ((v500 & 0x2000000) - 1289234518) ^ (v500 & 0x2000000 | 0x54E8586A) ^ ((v500 & 0x2000000 ^ 0xB363C6E4) - 235613774);
  v503 = v502 - 978064800;
  v504 = (v503 & 0xF8000003 | 0x48E090 | (2 * (v503 & 0xF8000003)) & 4) ^ (2 * (v503 & 0xF8000003)) & (v503 ^ 0x51D80E96);
  v505 = (2 * (v503 ^ 0x51D80E96)) & 0xA86CF0DC ^ 0xA8241044 ^ ((2 * (v503 ^ 0x51D80E96)) ^ 0x50D9E1B8) & (v503 ^ 0x51D80E96);
  v506 = (4 * v504) & 0x20208058 ^ v504 ^ v505 & (4 * v504) & 0xE000003F;
  v507 = (4 * v505) & 0xA86CF0DC ^ 0x84C308C ^ ((4 * v505) ^ 0xA1B3C370) & v505;
  v508 = (16 * v506) & 0xA86CF0D0 ^ v506 ^ ((16 * v506) ^ 0x6860D00) & v507;
  v509 = (16 * v507) & 0xA86CF0D0 ^ 0x2820F01C ^ ((16 * v507) ^ 0x86CF0DC0) & v507;
  v510 = v508 ^ (v508 << 8) & 0xA86CF000 ^ ((v508 << 8) ^ 0x6C60D000) & v509;
  v511 = *(a24 + 4 * BYTE1(v472)) ^ *(a58 + 4 * BYTE2(v457));
  v512 = *(a25 + 4 * v451);
  v513 = 1189222668 - v502;
  if ((((v502 - 978064800) ^ (2 * (((v510 ^ 0x8060400C) << 16) & 0x286C0000 ^ v510 ^ 0x8060400C ^ (((v510 ^ 0x8060400C) << 16) ^ 0x70DC0000) & ((v509 << 8) & 0xA86C0000 ^ ((v509 << 8) ^ 0x6CF00000) & v509 ^ 0xC0000))) ^ 0x8E0981D2) & a33 ^ a20) == 0x61588E00)
  {
    v513 = v502 - 978064800;
  }

  v514 = v500 & 0xFDFFFFFF;
  LODWORD(v515) = __ROR4__(*(a23 + 4 * HIBYTE(v471)) ^ v511 ^ v512, 19) ^ 0x9AFB1A71;
  HIDWORD(v515) = v515;
  v516 = a35 ^ v498;
  v517 = a35 ^ v498 ^ v514 ^ (a19 + v513 - ((2 * (a19 + v513) - 2128480598) & 0xE0B88686) + 820854424);
  v518 = a34 ^ a35 ^ ((v515 >> 13) + 1356794117 - ((2 * (v515 >> 13)) & 0xA1BE120A));
  v519 = (v518 ^ 0x4861293) - a17;
  v520 = (v518 ^ 0x4861293) + a17 + ~v519;
  v521 = v518 & a17;
  if (v521)
  {
    v520 = 0;
  }

  v522 = (v519 + ((v521 - 1) >> 31) + v520) ^ a16;
  v523 = -1126638028 - v499 + ((-1126638028 - (v499 ^ 0xBCD8DE34)) ^ v499) - 2 * (((-1126638028 - (v499 ^ 0xBCD8DE34)) ^ v499) & -v499);
  v524 = ((v522 - (v522 ^ 0xD77CA541)) ^ 0xFFFFFFFE) + v522;
  v525 = *(*(&off_101353600 + (v559 ^ 0x1C8A)) + (v524 ^ 0x4BLL) - 4);
  *(a48 + v562) = (((4 * v525) ^ 0x14) + (v525 ^ 0xEB) - 2 * (((4 * v525) ^ 0x14) & (v525 ^ 0xEB))) ^ 0x67;
  *(a48 + v566) = *(*(&off_101353600 + (v559 ^ 0x1879)) + (BYTE1(v523) ^ 0x60) - 4) ^ BYTE1(v523) ^ 0x92;
  v526 = v516 ^ v501;
  v527 = *(*(&off_101353600 + v559 - 6214) + (((v516 ^ v501) >> 8) ^ 0x4CLL) - 4);
  *(a48 + v564) = (((v527 - 76 - ((2 * v527) & 0x68)) ^ (((2 * v527) & 0x68) - (v527 - 76)) ^ (((16 * (v527 - 76)) & 0x50) - ((16 * (v527 - 76)) & 0x50 ^ (v527 - 76 - ((2 * v527) & 0x68))))) + ((16 * (v527 - 76)) & 0x50)) ^ 0x4F;
  v528 = *(*(&off_101353600 + (v559 ^ 0x199E)) + (HIBYTE(v526) ^ 0xF9));
  v529 = (v528 >> 6) | (4 * v528);
  *(a48 + v568) = v529 ^ 0x65;
  v530 = a3;
  *(a48 + v560) = *(*(&off_101353600 + (v559 ^ 0x1F97)) + (v523 ^ 0x32) - 4) ^ (((-4 - (v523 ^ 0xA8)) ^ v523 ^ 0x54 ^ -(v523 ^ 0x54)) - 4);
  v531 = *(*(&off_101353600 + v559 - 6371) + (v517 ^ 0x64) - 12);
  *(a48 + (a3 & 0xFFFFFFF4 ^ 0x518710F)) = (((((v531 >> 2) | (v531 << 6)) ^ 0x90) >> 6) | (4 * (((v531 >> 2) | (v531 << 6)) ^ 0x90))) ^ v517 ^ 0x2D ^ ((v517 ^ 0x2D) - 10) ^ 0x8A;
  *(a48 + v567) = ((((v517 ^ 0x88695177) >> 24) ^ 0x23) - ((2 * (((v517 ^ 0x88695177) >> 24) ^ 0x23)) & 0xEA) - 11) ^ *(*(&off_101353600 + (v559 ^ 0x1D30)) + (((v517 ^ 0x88695177) >> 24) ^ 0xFDLL) - 8);
  *(a48 + v563) = *(*(&off_101353600 + (v559 ^ 0x1EDA)) + (BYTE2(v523) ^ 0x27) - 4) ^ 0xB;
  v532 = v529 ^ v574;
  v533 = (((v530 ^ 0x37982DBE) - 932720062) ^ ((v530 ^ 0x4280F746) - 1115748166) ^ ((v530 ^ 0x7000ABFF) - 1879092223)) + 1971774974;
  v534 = (v533 ^ 0x23710CF0) & (2 * (v533 & 0xAB45AEF8)) ^ v533 & 0xAB45AEF8;
  v535 = ((2 * (v533 ^ 0x717018C0)) ^ 0xB46B6C70) & (v533 ^ 0x717018C0) ^ (2 * (v533 ^ 0x717018C0)) & 0xDA35B638;
  v536 = v535 ^ 0x4A149208;
  v537 = (v535 ^ 0x90212420) & (4 * v534) ^ v534;
  v538 = ((4 * v536) ^ 0x68D6D8E0) & v536 ^ (4 * v536) & 0xDA35B638;
  v539 = (v538 ^ 0x48149020) & (16 * v537) ^ v537;
  v540 = ((16 * (v538 ^ 0x92212618)) ^ 0xA35B6380) & (v538 ^ 0x92212618) ^ (16 * (v538 ^ 0x92212618)) & 0xDA35B630;
  v541 = v539 ^ 0xDA35B638 ^ (v540 ^ 0x82112200) & (v539 << 8);
  v542 = v533 ^ (2 * ((v541 << 16) & 0x5A350000 ^ v541 ^ ((v541 << 16) ^ 0x36380000) & (((v540 ^ 0x58249438) << 8) & 0x5A350000 ^ 0x4A010000 ^ (((v540 ^ 0x58249438) << 8) ^ 0x35B60000) & (v540 ^ 0x58249438))));
  *(a48 + v565) = ((HIBYTE(v524) ^ 0xA5) + 89) ^ 0x3A ^ *(*(&off_101353600 + v559 - 5771) + (HIBYTE(v524) ^ 0xBFLL));
  *(a48 + v572) = (*(*(&off_101353600 + v559 - 6991) + (((v517 ^ 0x88695177) >> 16) ^ 0xB2) - 4) + 8) ^ 0xAB;
  LOBYTE(v541) = *(*(&off_101353600 + v559 - 5870) + (BYTE2(v526) ^ 0xF9) - 4);
  *(a48 + v570) = v541 ^ 2 ^ (8 * (v541 ^ 2)) ^ ((v541 << 7) | 0x4A);
  *(a48 + (a3 & 0xFFFFFFF1 ^ 0x518710F)) = *(*(&off_101353600 + (v559 ^ 0x1996)) + (BYTE1(v524) ^ 0x5CLL)) ^ 0x8E;
  *(a48 + ((2 * v542) & 0xC897B830 ^ 0x40958010) + (v542 ^ 0xDF051E90)) = *(*(&off_101353600 + (v559 ^ 0x1F87)) + (v526 ^ 0xFCLL) - 12) ^ 0x5A;
  *(a48 + v573) = (*(*(&off_101353600 + v559 - 6639) + (((v517 ^ 0x5177) >> 8) ^ 0x4CLL)) + 71) ^ 0x46;
  v543 = *(*(&off_101353600 + v559 - 6776) + ((BYTE2(v524) - ((v524 >> 15) & 0x40) + 32) ^ 0x14) - 12);
  v544 = (v543 << (v532 & 5 ^ 4) << (v532 & 5 ^ 1)) | (v543 >> 3);
  v545 = (((v530 ^ 0x47E3E369) - 1206117225) ^ ((v530 ^ 0xBA48EFCD) + 1169625139) ^ ((v530 ^ 0xF8B37DA3) + 122454621)) + 599379554;
  *(a48 + (a3 & 0xFFFFFFF2 ^ 0x518710F)) = v544 ^ 0x8E;
  v546 = ((v545 ^ 0x406A85D9) - 1590417554) ^ v545 ^ ((v545 ^ 0xA4C54DCF) + 1167847292) ^ ((v545 ^ 0x5FB6A82) - 458897353) ^ ((v545 ^ 0xFFF5FFDF) + 514547052);
  LOBYTE(v545) = *(*(&off_101353600 + (v559 & 0xDDC88345)) + (HIBYTE(v523) ^ 0x72) - 4);
  *(a48 + v571) = ((v545 - 73) ^ (73 - v545) ^ (85 - ((v545 - 73) ^ 0x55))) + 85;
  v547 = (((v546 ^ 0x21BA51F3) - 973307327) ^ ((v546 ^ 0xEDD55130) + 160662148) ^ ((v546 ^ 0xD2CE5D88) + 914918972)) - 1830757660;
  v548 = (a61 < 0x8DC869DD) ^ (v547 < 0x8DC869DD);
  v549 = v547 < a61;
  if (v548)
  {
    v549 = a61 < 0x8DC869DD;
  }

  return (*(*(v71 - 184) + 8 * ((22824 * v549) ^ v559)))(a25);
}

uint64_t sub_100C46A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x8A0] == STACK[0x360];
  LODWORD(STACK[0x8A0]) = v6 ^ 0xB7D09690;
  return (*(STACK[0x8B0] + 8 * (((v6 ^ 0x4438) * v7) ^ v6)))(STACK[0x450], a1, a6, 0xB2823E14A03C0367, a5, 0x69517CAD07781183, 0x4E0B6541E4935D63);
}

uint64_t sub_100C46B10@<X0>(char a1@<W0>, _BYTE *a2@<X1>, char a3@<W3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, char a50, __int16 a51, char a52, int a53, int a54, char a55, __int16 a56, char a57, __int16 a58, char a59, __int16 a60, char a61, __int16 a62, char a63)
{
  a2[2] = v72;
  *a2 = a52;
  a2[1] = a50;
  a2[5] = STACK[0x278];
  a2[3] = STACK[0x288];
  a2[4] = v79;
  a2[9] = ((v71 ^ 0x7B) - 112) ^ a5;
  v80 = v73 ^ 0xB4;
  v81 = a4 ^ 0xB4;
  a2[8] = a1 ^ 0xB4;
  v82 = STACK[0x340];
  v83 = HIBYTE(STACK[0x340]) ^ a66;
  v84 = HIWORD(STACK[0x340]);
  a2[6] = v78;
  a2[13] = v77 ^ 0xB4;
  a2[14] = v74 ^ 0xB4;
  a2[7] = v80;
  a2[12] = v75 ^ 0xB4;
  a2[11] = a3 ^ 0xB4;
  a2[15] = v76 ^ 0xB4;
  a2[10] = v81;
  *(a2 - 16) = v83 ^ 0x9C;
  *(a2 - 15) = v84 ^ a67 ^ 0xCC;
  *(a2 - 13) = BYTE4(v82) ^ a55 ^ 0xE0;
  *(a2 - 12) = a57 ^ BYTE3(v82) ^ 0xC7;
  v85 = STACK[0x348];
  v86 = HIBYTE(STACK[0x348]);
  *(a2 - 14) = BYTE5(v82) ^ a59 ^ 0x92;
  v87 = LODWORD(STACK[0x244]) ^ BYTE1(v82);
  *(a2 - 9) = v82 ^ a61 ^ 0xA2;
  *(a2 - 11) = a68 ^ BYTE2(v82) ^ 0x97;
  *(a2 - 10) = v87 ^ 0xC5;
  *(a2 - 8) = v86 ^ a69 ^ 0x62;
  *(a2 - 7) = BYTE6(v85) ^ a63 ^ 0x3E;
  *(a2 - 6) = BYTE5(v85) ^ a65 ^ 0x8E;
  *(a2 - 4) = a70 ^ BYTE3(v85) ^ 0x52;
  *(a2 - 5) = BYTE4(v85) ^ a71 ^ 0xB0;
  *(a2 - 3) = LODWORD(STACK[0x2E8]) ^ BYTE2(v85) ^ 0x31;
  *(a2 - 2) = LODWORD(STACK[0x2F0]) ^ BYTE1(v85) ^ 0xDD;
  *(a2 - 1) = v85 ^ LOBYTE(STACK[0x2E0]) ^ 0x8C;
  return (*(a6 + 8 * (v71 ^ 0x5912u)))(a7);
}

uint64_t sub_100C46D08()
{
  v4 = STACK[0x3D18];
  v4[189] = BYTE2(v1);
  v4[188] = HIBYTE(v1);
  v4[191] = v1;
  v4[190] = v1 >> ((v0 - 55) & 0x7E ^ 0x56);
  return (*(v3 + 8 * ((21790 * (v2 < LODWORD(STACK[0x3E18]))) ^ v0)))();
}

uint64_t sub_100C46D70()
{
  LODWORD(STACK[0x3D20]) = 0;
  v2 = *(v1 + 8 * (((v0 + 1710900015) & 0x9A05D2DE) - 113));
  LODWORD(STACK[0x2BB0]) = 28;
  LODWORD(STACK[0x3D98]) = 2;
  v3 = STACK[0x3430];
  STACK[0x3D60] = STACK[0x3430];
  v4 = STACK[0x2618];
  STACK[0x3D88] = STACK[0x2618];
  STACK[0x3B20] = v3;
  STACK[0x3CF0] = v4;
  STACK[0x3650] = LODWORD(STACK[0x3AD8]);
  LODWORD(STACK[0x3AE0]) = STACK[0x39F0];
  v5 = STACK[0x3318];
  LODWORD(STACK[0x3E40]) = STACK[0x3318];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  STACK[0x3540] = LODWORD(STACK[0x32D8]);
  v6 = STACK[0x39C0];
  LODWORD(STACK[0x3710]) = STACK[0x39C0];
  LODWORD(STACK[0x3D90]) = v6;
  LODWORD(STACK[0x3CE8]) = v5;
  LODWORD(STACK[0x3810]) = STACK[0x3D80];
  LODWORD(STACK[0x1188]) = STACK[0x3A28];
  LODWORD(STACK[0x3268]) = v6;
  LODWORD(STACK[0x3D70]) = v5;
  return v2();
}

uint64_t sub_100C46E28()
{
  *(v6 - 240) = 0x71E857A90854544FLL;
  v7 = 18 * (v0 ^ 0x6E79);
  v8 = v0 - 14185;
  *(v6 - 224) = v7;
  v9 = (-327664128 * v3) | (((((460733471 * v3) & ((v0 ^ 0x1AC7A1A0) - 440913630) | 0x485058) ^ (460733471 * v3) & 0xFF7FFFF8) + ((460733471 * v3) & 0x485058)) >> 23);
  v10 = (1584937472 * v2) | ((1630485533 * v2) >> 23);
  v11 = (-456589312 * v1) | (((v7 - 1135357365) * v1) >> 16);
  v12 = ((-538886144 * v4) | ((-930906235 * v4) >> 18)) + v9;
  v13 = (v12 + v10) ^ v11;
  v14 = (2033774592 * v10) | ((2134348687 * v10) >> 20);
  HIDWORD(v16) = v13;
  LODWORD(v16) = 1181819207 * v13;
  v15 = v16 >> 1;
  v17 = -1513672523 * v14;
  v18 = ((1159700144 * v9) | ((-1001260565 * v9) >> 28)) - v15;
  v19 = 920430787 * v15;
  v20 = 1551043408 * v14;
  v21 = (1302855680 * v11) | ((-43882059 * v11) >> 13);
  v22 = (408944640 * v15) | ((920430787 * v15) >> 11);
  v23 = ((-937259869 * v22) >> 5) | (402653184 * (v19 >> 11));
  v24 = (-68468736 * v21) | ((-1723600979 * v21) >> 18);
  v25 = (-343146496 * ((v18 ^ v14) - v21)) | ((-1223230749 * ((v18 ^ v14) - v21)) >> 14);
  v26 = 955757425 * v25;
  v27 = -1685585920 * v25;
  v28 = (v20 & 0xFFFFFFF0 | (v17 >> 28)) + v24 + v22 - v25;
  v29 = v27 & 0xFFF80000 | (v26 >> 13);
  v30 = ((653787136 * v24) | ((1121830111 * v24) >> 13)) + v23;
  v31 = ((1953831936 * v28) | ((-786621113 * v28) >> 22)) - 2 * (((1953831936 * v28) | ((-786621113 * v28) >> 22)) & 0x1C03871F ^ ((-786621113 * v28) >> 22) & 0x10) - 1677490417;
  v32 = v31 ^ (v30 + v29 - 1677490417 + (~(2 * (v30 + v29)) | 0xC7F8F1E1) + 1);
  v33 = ((184274389 * (698478773 * (v23 - v29) - (v31 ^ 0x9C03870F))) ^ v32) - 1747697267;
  v34 = (v33 ^ 0xB557753) & (2 * (v33 & 0x8A647642)) ^ v33 & 0x8A647642;
  v35 = ((2 * (v33 ^ 0xBD5B3D3)) ^ 0x3638B22) & (v33 ^ 0xBD5B3D3) ^ (2 * (v33 ^ 0xBD5B3D3)) & 0x81B1C590;
  v36 = v35 ^ 0x80904491;
  v37 = (v35 ^ 0x1218100) & (4 * v34) ^ v34;
  v38 = ((4 * v36) ^ 0x6C71644) & v36 ^ (4 * v36) & 0x81B1C590;
  v39 = (v38 ^ 0x810400) & (16 * v37) ^ v37;
  v40 = ((16 * (v38 ^ 0x8130C191)) ^ 0x1B1C5910) & (v38 ^ 0x8130C191) ^ (16 * (v38 ^ 0x8130C191)) & 0x81B1C590;
  v41 = v39 ^ 0x81B1C591 ^ (v40 ^ 0x1104100) & (v39 << 8);
  v42 = v33 ^ (2 * ((v41 << 16) & 0x1B10000 ^ v41 ^ ((v41 << 16) ^ 0x45910000) & (((v40 ^ 0x80A18481) << 8) & 0x1B10000 ^ (((v40 ^ 0x80A18481) << 8) ^ 0x31C50000) & (v40 ^ 0x80A18481) ^ 0x300000)));
  v43 = v42 ^ 0x463D5159 ^ v31;
  v44 = v29 - (((v42 ^ 0x50AC03C8) - 378622609) ^ ((v42 ^ 0x91DFED2) - 1327542155) ^ ((v42 ^ 0xD394007A) + 1784065757)) + 1719361918;
  v45 = (v44 ^ 0xA96BE360) & (2 * (v44 & 0xCD6BF249)) ^ v44 & 0xCD6BF249;
  v46 = ((2 * (v44 ^ 0x2BEE4372)) ^ 0xCD0B6276) & (v44 ^ 0x2BEE4372) ^ (2 * (v44 ^ 0x2BEE4372)) & 0xE685B13A;
  v47 = v46 ^ 0x22849109;
  v48 = (v46 ^ 0x44010020) & (4 * v45) ^ v45;
  v49 = ((4 * v47) ^ 0x9A16C4EC) & v47 ^ (4 * v47) & 0xE685B138;
  v50 = (v49 ^ 0x82048020) & (16 * v48) ^ v48;
  v51 = ((16 * (v49 ^ 0x64813113)) ^ 0x685B13B0) & (v49 ^ 0x64813113) ^ (16 * (v49 ^ 0x64813113)) & 0xE685B130;
  v52 = v50 ^ 0xE685B13B ^ (v51 ^ 0x60011100) & (v50 << 8);
  v53 = v44 ^ (2 * ((v52 << 16) & 0x66850000 ^ v52 ^ ((v52 << 16) ^ 0x313B0000) & (((v51 ^ 0x8684A00B) << 8) & 0x66850000 ^ 0x62040000 ^ (((v51 ^ 0x8684A00B) << 8) ^ 0x5B10000) & (v51 ^ 0x8684A00B))));
  v54 = 2020384231 * (((v43 ^ 0xA191BCCF) + 1584284465) ^ ((v43 ^ 0x88987CBC) + 2003272516) ^ ((v43 ^ 0x7912EB45) - 2031283013)) - 1532234354;
  v55 = ((v54 ^ 0x7C95CBC7) - 1531580947) ^ v54 ^ ((v54 ^ 0x36D9F0F9) - 285616429) ^ ((v54 ^ 0x3B6C1D15) - 481543361) ^ ((v54 ^ 0x56FFFFFF) - 1897932331);
  *(v6 - 252) = v42;
  v56 = (2129064960 * (((v42 ^ 0x259A65) - 366529340) ^ ((v42 ^ 0x2A7743) - 1276585498) ^ ((v42 ^ 0x2A1046) + 1781055201))) | ((949991869 * (((v42 ^ 0xD1778543) + 1756703718) ^ ((v42 ^ 0xF09BB35E) + 1230577145) ^ ((v42 ^ 0xABC9CB7D) + 302736860)) - 233613547) >> 22);
  *(v6 - 192) = v53;
  HIDWORD(v16) = v32 - (v42 ^ 0x8A25FD60);
  LODWORD(v16) = 354176049 * HIDWORD(v16);
  v57 = v16 >> 1;
  v58 = -254198834 * (((v43 ^ 0x49F6DAE2) + 906568990) ^ ((v43 ^ 0x21B14E7F) + 1582215553) ^ ((v43 ^ 0x385CBFAB) - 945602475)) - 84255342;
  v59 = (v58 ^ 0xFC199DE2) & (2 * (v58 & 0xFE9DD9E2)) ^ v58 & 0xFE9DD9E2;
  v60 = ((2 * (v58 ^ 0xA803BEE6)) ^ 0xAD3CCE08) & (v58 ^ 0xA803BEE6) ^ (2 * (v58 ^ 0xA803BEE6)) & 0x569E6704;
  v61 = v60 ^ 0x52822104;
  v62 = (v60 ^ 0x41C4600) & (4 * v59) ^ v59;
  v63 = ((4 * v61) ^ 0x5A799C10) & v61 ^ (4 * v61) & 0x569E6704;
  v64 = (v63 ^ 0x52180400) & (16 * v62) ^ v62;
  v65 = ((16 * (v63 ^ 0x4866304)) ^ 0x69E67040) & (v63 ^ 0x4866304) ^ (16 * (v63 ^ 0x4866304)) & 0x569E6700;
  v66 = v64 ^ 0x569E6704 ^ (v65 ^ 0x40866000) & (v64 << 8);
  v67 = ((v58 ^ (2 * ((v66 << 16) & 0x569E0000 ^ v66 ^ ((v66 << 16) ^ 0x67040000) & (((v65 ^ 0x16180704) << 8) & 0x569E0000 ^ 0x40980000 ^ (((v65 ^ 0x16180704) << 8) ^ 0x1E670000) & (v65 ^ 0x16180704))))) & 0xFFFFFFFE | (v55 >> 31)) ^ 0xDFA917EA;
  v68 = ((-1210494464 * (((v53 ^ 0x632368) + 697420967) ^ ((v53 ^ 0x486933) + 498763518) ^ ((v53 ^ 0x49DA64) - 172280405))) | ((-1898189655 * (((v53 ^ 0x45C6D1EE) - 1003209183) ^ ((v53 ^ 0x6448C5BC) - 440784269) ^ ((v53 ^ 0x61EC846D) - 534877276)) + 1369600318) >> 23)) + 1155693568;
  v69 = v55 & 0x80000000 | ((-1759348463 * v67) >> 1);
  v70 = (-1854611520 * (((v56 - v68 + 1297896448) ^ v67) - v57)) | ((-1169828993 * (((v56 - v68 + 1297896448) ^ v67) - v57)) >> 26);
  v71 = (1744830464 * v57) | ((-1226906963 * v57) >> 5);
  v72 = v69 ^ v71 ^ (((-671088640 * v68) | ((-1548624613 * v68) >> 5)) - v70);
  v73 = (234881024 * v72) | ((-208097017 * v72) >> 7);
  v74 = (-773324800 * v70) | ((1640389181 * v70) >> 13);
  v75 = (1355690199 * v71) >> 8;
  v76 = ((1744830464 * v69) | ((-1481955123 * v69) >> 5)) - v74;
  v77 = (-687865856 * v71) | v75;
  v78 = (885944320 * ((v73 ^ v76) - v77 + 2 * (v73 & v76))) | ((-1661776665 * ((v73 ^ v76) - v77 + 2 * (v73 & v76))) >> 20);
  HIDWORD(v16) = v75;
  LODWORD(v16) = -283949135 * v77;
  *(v6 - 256) = (((1419280000 * v73) | ((212414717 * v73) >> 25)) ^ ((v16 >> 4) - ((442908672 * v74) | ((1243638169 * v74) >> 18)))) - v78 - 619187123 + (v78 ^ (-868931193 * (((442908672 * v74) | ((1243638169 * v74) >> 18)) - ((1419280000 * v73) | ((212414717 * v73) >> 25))))) - 1527545349;
  v79 = v12 & 0xF;
  if (v12)
  {
    v80 = v79 - 1;
  }

  else
  {
    v80 = v79 + 1;
  }

  *(v6 - 196) = v80;
  v81 = (*(v5 + 8 * (v0 ^ 0x1485)))(1032);
  return (*(v5 + 8 * ((87 * (v81 == 0)) ^ v8)))(0);
}

uint64_t sub_100C47AB0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1458] = a1;
  LODWORD(STACK[0x11A8]) = v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100C47AE8()
{
  v2 = STACK[0x12A0] == 0;
  LODWORD(STACK[0x1BA0]) = *STACK[0x980];
  return (*(v1 + 8 * (((((v0 - 20296) ^ 0xFFFFB628) + (v0 ^ 0x39AE)) * v2) ^ v0)))();
}

uint64_t sub_100C47B30()
{
  *(v3 - 216) = v2;
  *(v3 - 208) = (v1 - 1723139937) ^ (1917435887 * (((((v3 - 216) | 0x454ECCB2) ^ 0xFFFFFFFE) - (~(v3 - 216) | 0xBAB1334D)) ^ 0x5C0A684B));
  v4 = (*(v0 + 8 * (v1 ^ 0xC5C)))(v3 - 216);
  return (*(v0 + 8 * ((*STACK[0x790] * ((((v1 - 28235) | 0x1D58) ^ 0xE1FEEDF1) + ((v1 + 67146220) | 0x1A000C01))) ^ v1)))(v4);
}

uint64_t sub_100C47C3C@<X0>(unint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = v4 + 1148;
  v7 = (11 * ((v4 + 1148) ^ 0x6765) - 1211019866) & 0xFFFECF9B;
  v9 = (v3 ^ 0x92863F28) > 7 && a3 - a1 > 0xF;
  LODWORD(STACK[0x8A0]) = v7;
  v10 = *(v5 + 8 * (((v7 ^ (a2 + 107)) * v9) ^ v6));
  STACK[0x450] = a1;
  return v10();
}

uint64_t sub_100C47E14()
{
  STACK[0x1CF8] = v1;
  v3 = STACK[0xDD0];
  STACK[0x1D00] = STACK[0xDD0];
  return (*(v2 + 8 * (((v1 - v3 > ((v0 - 1853853760) | 0x26500081u) - 3083895688u) * (((v0 - 4651) | 0x4C2) + 20302)) ^ v0)))();
}

uint64_t sub_100C48088(uint64_t a1)
{
  LODWORD(STACK[0x94C]) = v1;
  STACK[0xC00] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (((v2 + 24423) ^ 0x2C43) + v2)))(a1, 1211082140);
}

uint64_t sub_100C480DC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X2>, int8x16_t *a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, unint64_t a8@<X8>)
{
  v23.i64[0] = v9 + v20 - 1;
  v23.i64[1] = v9 + v20 - 2;
  v24.i64[0] = v10 + v20 - 5;
  v24.i64[1] = v10 + v20 - 6;
  v25.i64[0] = v9 + v20 - 5;
  v25.i64[1] = v9 + v20 - 6;
  v26.i64[0] = v9 + v20 - 7;
  v26.i64[1] = v9 + v20 - 8;
  v27.i64[0] = v10 + v20 - 1;
  v27.i64[1] = v10 + v20 - 2;
  v28.i64[0] = v10 + v20 - 7;
  v28.i64[1] = v10 + v20 - 8;
  v29 = v20 + ((v8 + 1633073901) & 0x9EA91DCD ^ 0xFFFFFFFFFFFFEAFDLL);
  v30.i64[0] = v10 + v20 - 3;
  v30.i64[1] = v10 + v29;
  v31.i64[0] = v9 + v20 - 3;
  v31.i64[1] = v9 + v29;
  v32 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v33 = vandq_s8(v27, v32);
  v34 = vandq_s8(v24, v32);
  v35 = vandq_s8(v30, v32);
  v36 = vandq_s8(v28, v32);
  v37 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vdupq_n_s64(0xF9FFFFFFFFFFFFFFLL);
  v40 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), *&STACK[0x660]), v39);
  v41 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x660]), v39);
  v42 = vandq_s8(vaddq_s64(v37, *&STACK[0x660]), v39);
  v43 = vandq_s8(vaddq_s64(v38, *&STACK[0x660]), v39);
  v44 = vdupq_n_s64(0xE9B85E912434B084);
  v45 = veorq_s8(v42, v44);
  v46 = veorq_s8(v41, v44);
  v47 = veorq_s8(v40, v44);
  v48 = vdupq_n_s64(a4);
  v49 = veorq_s8(v40, v48);
  v50 = veorq_s8(v41, v48);
  v51 = veorq_s8(v43, v44);
  v52 = veorq_s8(v42, v48);
  v53 = veorq_s8(v43, v48);
  v54 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v56 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v57 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v58 = vaddq_s64(v56, v52);
  v59 = vaddq_s64(v55, v50);
  v60 = veorq_s8(vaddq_s64(v54, v49), *&STACK[0x5B0]);
  v61 = veorq_s8(v59, *&STACK[0x5B0]);
  v62 = veorq_s8(v58, *&STACK[0x5B0]);
  v63 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v64 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v66 = veorq_s8(vaddq_s64(v57, v53), *&STACK[0x5B0]);
  v67 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v68 = veorq_s8(v62, v65);
  v69 = veorq_s8(v61, v64);
  v70 = veorq_s8(v60, v63);
  v71 = veorq_s8(v66, v67);
  v72 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v73 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v70);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v69);
  v76 = vaddq_s64(v73, v71);
  v77 = veorq_s8(vaddq_s64(v72, v68), *&STACK[0x640]);
  v78 = veorq_s8(v75, *&STACK[0x640]);
  v79 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v80 = veorq_s8(v74, *&STACK[0x640]);
  v81 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v84 = veorq_s8(v76, *&STACK[0x640]);
  v85 = veorq_s8(v80, v83);
  v86 = veorq_s8(v78, v82);
  v87 = veorq_s8(v77, v81);
  v88 = veorq_s8(v84, v79);
  v89 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v87);
  v93 = vaddq_s64(v90, v86);
  v94 = vaddq_s64(v89, v85);
  v95 = vdupq_n_s64(v12);
  v96 = vdupq_n_s64(a5);
  v97 = vaddq_s64(vsubq_s64(v92, vandq_s8(vaddq_s64(v92, v92), v95)), v96);
  v98 = vaddq_s64(vsubq_s64(v93, vandq_s8(vaddq_s64(v93, v93), v95)), v96);
  v99 = vaddq_s64(vsubq_s64(v94, vandq_s8(vaddq_s64(v94, v94), v95)), v96);
  v100 = vaddq_s64(vsubq_s64(v91, vandq_s8(vaddq_s64(v91, v91), v95)), v96);
  v101 = vdupq_n_s64(a6);
  v102 = veorq_s8(v99, v101);
  v103 = veorq_s8(v98, v101);
  v104 = veorq_s8(v97, v101);
  v105 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v108 = veorq_s8(v100, v101);
  v109 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v110 = veorq_s8(v104, v107);
  v111 = veorq_s8(v103, v106);
  v112 = veorq_s8(v102, v105);
  v113 = veorq_s8(v108, v109);
  v114 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v112);
  v118 = vaddq_s64(v115, v111);
  v119 = vaddq_s64(v116, v113);
  v120 = vdupq_n_s64(a7);
  v121 = veorq_s8(vaddq_s64(v114, v110), v120);
  v122 = veorq_s8(v118, v120);
  v123 = veorq_s8(v117, v120);
  v124 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v127 = veorq_s8(v119, v120);
  v128 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v129 = veorq_s8(v122, v126);
  v130 = veorq_s8(v121, v125);
  v131 = veorq_s8(v127, v124);
  v132 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v130);
  v135 = vdupq_n_s64(a2);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v129);
  v137 = vdupq_n_s64(v13);
  v138 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v139 = vaddq_s64(v132, v128);
  v140 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v142 = vandq_s8(v26, v32);
  v143 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v144 = vandq_s8(v25, v32);
  v145 = vandq_s8(v23, v32);
  v146 = vandq_s8(v31, v32);
  v147 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v148 = vaddq_s64(v133, v131);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), *&STACK[0x330]);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), *&STACK[0x330]);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), *&STACK[0x330]);
  v152 = vaddq_s64(v147, *&STACK[0x330]);
  v153 = vdupq_n_s64(v11);
  v154 = vdupq_n_s64(a1);
  v155 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v149, v149), v153), v149), v154);
  v156 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v150, v150), v153), v150), v154);
  v157 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v151, v151), v153), v151), v154);
  v158 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v153), v152), v154);
  v159 = vdupq_n_s64(v17);
  v160 = veorq_s8(v158, v159);
  v161 = veorq_s8(v157, v159);
  v162 = veorq_s8(v156, v159);
  v163 = veorq_s8(v155, v159);
  v164 = vdupq_n_s64(v16);
  v165 = veorq_s8(v155, v164);
  v166 = vsubq_s64(vorrq_s8(vaddq_s64(v139, v139), v135), v139);
  v167 = veorq_s8(v156, v164);
  v168 = veorq_s8(v157, v164);
  v169 = veorq_s8(v158, v164);
  v170 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v171 = vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), v135), v136);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v169);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v168);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v167);
  v175 = vaddq_s64(v170, v165);
  v176 = vsubq_s64(vorrq_s8(vaddq_s64(v148, v148), v135), v148);
  v177 = vdupq_n_s64(v15);
  v178 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), v135), v134), v137);
  v179 = vorrq_s8(vaddq_s64(v172, v172), v177);
  v180 = vorrq_s8(vaddq_s64(v173, v173), v177);
  v181 = vorrq_s8(vaddq_s64(v174, v174), v177);
  v182 = vorrq_s8(vaddq_s64(v175, v175), v177);
  v183 = vaddq_s64(v171, v137);
  v184 = vdupq_n_s64(v14);
  v185 = vsubq_s64(v182, v175);
  v186 = vsubq_s64(v181, v174);
  v187 = vsubq_s64(v180, v173);
  v188 = vaddq_s64(v166, v137);
  v189 = vsubq_s64(v179, v172);
  v190 = vdupq_n_s64(v18);
  v191 = vaddq_s64(v189, v190);
  v192 = vaddq_s64(v187, v190);
  v193 = vaddq_s64(v176, v137);
  v194 = vaddq_s64(v186, v190);
  v195 = vaddq_s64(v185, v190);
  v196 = vdupq_n_s64(a8);
  v197 = veorq_s8(v195, v196);
  v198 = veorq_s8(v188, v184);
  v199 = veorq_s8(v194, v196);
  v200 = veorq_s8(v192, v196);
  v201 = veorq_s8(v191, v196);
  v202 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v203 = veorq_s8(v183, v184);
  v204 = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v205 = veorq_s8(v178, v184);
  v206 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v207 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v208 = veorq_s8(v199, v204);
  v209 = veorq_s8(v197, v202);
  v210 = veorq_s8(v193, v184);
  v211 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v212 = veorq_s8(v205, v141);
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v209);
  v214 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v208);
  v215 = veorq_s8(v203, v140);
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v207);
  v217 = vaddq_s64(v211, v206);
  v218 = veorq_s8(v198, v138);
  v219 = vdupq_n_s64(v19);
  v220 = vsubq_s64(vorrq_s8(vaddq_s64(v216, v216), v219), v216);
  v221 = vdupq_n_s64(0x7AE2C81EFDF4011EuLL);
  v222 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v213, v213), v219), v213), v221);
  v223 = veorq_s8(v210, v143);
  v224 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v214, v214), v219), v214), v221);
  v225 = vaddq_s64(v220, v221);
  v226 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v217, v217), v219), v217), v221);
  v227 = vdupq_n_s64(0x5A68F4FEC2A2B3DDuLL);
  v228 = veorq_s8(v226, v227);
  v229 = veorq_s8(v225, v227);
  v230 = veorq_s8(v224, v227);
  v231 = veorq_s8(v222, v227);
  v232 = vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL);
  v233 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v234 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v235 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL));
  v236 = veorq_s8(v229, v232);
  v237 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v238 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v238);
  v240 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v236);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v235);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v234);
  v244 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v245 = vdupq_n_s64(0xA83C6FA80DE490C0);
  v246 = vaddq_s64(v237, v218);
  v247 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v248 = vaddq_s64(v233, v215);
  v249 = vsubq_s64(v242, vandq_s8(vaddq_s64(v242, v242), v245));
  v250 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v212);
  v252 = vdupq_n_s64(0x38uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL);
  v254 = veorq_s8(vaddq_s64(v240, v223), *&STACK[0x590]);
  v255 = veorq_s8(v251, *&STACK[0x590]);
  v256 = veorq_s8(v248, *&STACK[0x590]);
  v257 = veorq_s8(v246, *&STACK[0x590]);
  v258 = veorq_s8(v257, v244);
  v259 = vdupq_n_s64(0xD41E37D406F24860);
  v260 = vaddq_s64(vsubq_s64(v239, vandq_s8(vaddq_s64(v239, v239), v245)), v259);
  v261 = vaddq_s64(vsubq_s64(v241, vandq_s8(vaddq_s64(v241, v241), v245)), v259);
  v262 = vaddq_s64(v249, v259);
  v263 = veorq_s8(v256, v247);
  v264 = vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), v245)), v259);
  v265 = vdupq_n_s64(0x3C3444E9F05134E0uLL);
  v266 = veorq_s8(v264, v265);
  v267 = veorq_s8(v262, v265);
  v268 = veorq_s8(v255, v250);
  v269 = veorq_s8(v261, v265);
  v270 = veorq_s8(v260, v265);
  v271 = vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL);
  v273 = vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL);
  v274 = vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v276 = veorq_s8(v270, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v277 = veorq_s8(v269, v274);
  v278 = vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL);
  v279 = veorq_s8(v267, v273);
  v280 = veorq_s8(v266, v271);
  v281 = vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL);
  v282 = veorq_s8(v254, v253);
  v283 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v285 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v286 = vandq_s8(vshlq_n_s64(v28, 3uLL), v252);
  v287 = vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL);
  v288 = vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v252));
  v289 = vaddq_s64(v278, v268);
  v290 = vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), v252));
  v291 = vaddq_s64(v285, v280);
  v292 = veorq_s8(vaddq_s64(v281, v276), *&STACK[0x730]);
  v293 = veorq_s8(vaddq_s64(v283, v277), *&STACK[0x730]);
  v294 = veorq_s8(vaddq_s64(v284, v279), *&STACK[0x730]);
  v295 = veorq_s8(v291, *&STACK[0x730]);
  v296 = vaddq_s64(v272, v258);
  v297 = vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL);
  v298 = vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL);
  v299 = vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL);
  v300 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL));
  v301 = veorq_s8(v294, v299);
  v302 = veorq_s8(v293, v298);
  v303 = veorq_s8(v292, v297);
  v304 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v305 = vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL);
  v306 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v307 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), v303);
  v308 = vdupq_n_s64(0x86A7DE0DC523147BLL);
  v309 = veorq_s8(vaddq_s64(v304, v300), v308);
  v310 = veorq_s8(vaddq_s64(v305, v301), v308);
  v311 = veorq_s8(vaddq_s64(v306, v302), v308);
  v312 = veorq_s8(v307, v308);
  v313 = vshlq_u64(veorq_s8(v289, v22), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v252)));
  v314 = vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL);
  v315 = vsraq_n_u64(vshlq_n_s64(v301, 3uLL), v301, 0x3DuLL);
  v316 = vshlq_u64(veorq_s8(vaddq_s64(v275, v263), v22), v290);
  v317 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v318 = veorq_s8(v312, vsraq_n_u64(vshlq_n_s64(v303, 3uLL), v303, 0x3DuLL));
  v319 = veorq_s8(v311, v317);
  v320 = vshlq_u64(veorq_s8(v296, v22), vnegq_s64(v286));
  v321 = veorq_s8(v310, v315);
  v322 = veorq_s8(v309, v314);
  v323 = vshlq_u64(veorq_s8(vaddq_s64(v287, v282), v22), v288);
  v324 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL), v319), *&STACK[0x830]);
  v325 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL), v321), *&STACK[0x830]);
  v326 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL), v322), *&STACK[0x830]);
  v327 = vsraq_n_u64(vshlq_n_s64(v318, 3uLL), v318, 0x3DuLL);
  v328 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), v318), *&STACK[0x830]);
  v329 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL)));
  v330 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), veorq_s8(v325, vsraq_n_u64(vshlq_n_s64(v321, 3uLL), v321, 0x3DuLL)));
  v331 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), veorq_s8(v328, v327));
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), veorq_s8(v326, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL)));
  v333 = vdupq_n_s64(0x9DE5D77A09487310);
  v334 = vdupq_n_s64(0xB10D1442FB5BC677);
  v335 = vsubq_s64(vandq_s8(vaddq_s64(v331, v331), v333), v331);
  v336 = vdupq_n_s64(0x3103AA6540BBD086uLL);
  v337 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v330, v330), v333), v330), v334), v336), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), v252)));
  v339.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v332, v332), v333), v332), v334), v336), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v252))), v320);
  v339.val[2] = veorq_s8(v337, v316);
  v339.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v329, v329), v333), v329), v334), v336), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), v252))), v313);
  v339.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v335, v334), v336), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v252))), v323);
  *v26.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v339, a3[26])), *(v10 + v20 - 8));
  return (*(STACK[0x8B0] + 8 * ((46 * (v21 == v20)) ^ v8)))();
}

uint64_t sub_100C48BE0()
{
  v2 = STACK[0xC28];
  v3 = *(STACK[0xC28] + 8);
  v4 = STACK[0x13D8];
  v4[1] = v3;
  *v4 = *v2;
  return (*(v1 + 8 * (((v3 != 0) * ((v0 - 1539327909) & 0x5BC06FFE ^ 0x42FD)) | v0)))();
}

uint64_t sub_100C48C98()
{
  v4 = v0 & 0xB2503C3F;
  v6 = v3 == (v0 & 0xB2503C3F ^ 0x3422) || v1 != 0;
  return (*(v2 + 8 * ((v6 * (v4 - 13326)) ^ v4)))();
}

uint64_t sub_100C48CDC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(STACK[0xE78] - 0x683CBC57EAB92A3ELL);
  STACK[0x1858] = 0;
  STACK[0x1010] = 0;
  return (*(v4 + 8 * ((55 * (((v5 == 0x308E083E0C524CBELL) ^ (v3 + 110)) & 1)) ^ (a3 + v3 - 19))))();
}

uint64_t sub_100C48D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49, int a50, int a51, int a52)
{
  v55 = (*(v54 - 136) & 2) == 0;
  v56 = STACK[0x2E4];
  if ((*(v54 - 136) & 2) != 0)
  {
    v56 = a52;
  }

  LODWORD(STACK[0x360]) = v56;
  v57 = *(v54 - 176);
  if (!v55)
  {
    v57 = STACK[0x374];
  }

  LODWORD(STACK[0x354]) = v57;
  if (!v55)
  {
    a51 = a49;
  }

  LODWORD(STACK[0x374]) = a51;
  v59 = STACK[0x368];
  if (v55)
  {
    v59 = STACK[0x364];
  }

  LODWORD(STACK[0x288]) = v59;
  v60 = (STACK[0x2B0] & 2) == 0;
  v61 = STACK[0x2D0];
  if ((STACK[0x2B0] & 2) != 0)
  {
    v61 = STACK[0x2C0];
  }

  LODWORD(STACK[0x290]) = v61;
  v62 = STACK[0x260];
  if (v60)
  {
    v62 = STACK[0x258];
  }

  LODWORD(STACK[0x2C0]) = v62;
  return (*(v53 + 8 * v52))(0);
}

uint64_t sub_100C48E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (*v7 >> STACK[0x39F0])
  {
    v10 = a6;
  }

  else
  {
    v10 = v6;
  }

  return (*(v9 + 8 * v8))(0, 0, a3, (v8 - 826153070) & 0x313E3717, v10, (v8 - 826153070) & 0x313E3717 ^ 0x3716u);
}

uint64_t sub_100C48F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x13F0] = 0;
  STACK[0x1648] = *(v7 + 8 * (v8 + 1211071896));
  return (*(v7 + 8 * ((v8 + 1211071896) ^ 0x3E52 ^ (v8 - 958940376) & 0x8157E7FF)))(a1, 1211082140, 1211098651, a4, a5, a6, a7, 0x308E083E0C524CBELL);
}

uint64_t sub_100C49054@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x14F0] + v1;
  STACK[0xC10] = a1;
  LODWORD(STACK[0x9E0]) = v3;
  STACK[0x1068] = v5;
  return (*(v4 + 8 * ((((v5 == 0) ^ (((v2 - 50) & 0x7F) - 116)) & 1 | ((((v5 == 0) ^ (((v2 - 50) & 0x7F) - 116)) & 1) << 6)) ^ (v2 + 10765))))();
}

uint64_t sub_100C490B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X7>, int a4@<W8>, uint64_t a5, _DWORD *a6, void *a7, uint64_t a8)
{
  v17 = a4 | v10;
  v18 = *(a8 + 960) + 4 * v12;
  v19 = *(*a7 + ((*a6 & ((v18 & (v17 - 10956) ^ 0xD41C93B8) - 869773275 + ((((a4 | v10) ^ 0x3CE9) + 1472643680) | (2 * (v18 & (v17 - 10956)))))) & 0xFFFFFFFFFFFFFFF8));
  v20 = (__ROR8__(v18 & ((v17 - 2487) - 8469), 8) + v19) ^ 0xB057743BD1A8F5BCLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x8A47714CF38C4783;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x24CFA7F07695442ELL) - (v24 + v23) + v13) ^ v14;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x1C031738E4A64104;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((v29 + v28) & v15 ^ a3) + ((v29 + v28) & v11 ^ 0x610D804878304831) - 1) ^ v16;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = ((v9 & (2 * (v32 + v31))) - (v32 + v31) - 0x1703AD32501994DELL) ^ 0xBA0DDA84B73EBD80;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xB20726EF1F63AAFLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  *v18 = (((((v37 + v36) | 0xF6D10FA34FD9115BLL) - ((v37 + v36) | 0x92EF05CB026EEA4) + 0x92EF05CB026EEA4) ^ 0x676F824BD845AF1BLL) >> (8 * (v18 & 7u))) ^ a1;
  return (*(v8 + 8 * (v17 ^ ((a2 != 0) | (2 * (a2 != 0))))))(a1);
}

uint64_t sub_100C4945C@<X0>(int a1@<W2>, int a2@<W6>, int a3@<W7>, int a4@<W8>)
{
  LODWORD(STACK[0x6C0]) = v6;
  LODWORD(STACK[0x4B8]) = a3;
  STACK[0x470] = v5;
  v7 = a2 + 64;
  LODWORD(STACK[0x46C]) = v7;
  return (*(STACK[0x6D8] + 8 * (((a1 == v7 + v4) * (((a4 + 18813) ^ 0x658BEB77) + a4 - 1703645082)) ^ a4)))();
}

uint64_t sub_100C4DE94()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x6A26)))();
  *(v1 - 0x30BDFED8F32E65A1) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100C4DF4C()
{
  v5 = *(v3 + 8 * (v2 + 1211084782));
  *&STACK[0x4F0] = v4;
  return v5(v0 + v1);
}

uint64_t sub_100C4DFC0@<X0>(int a1@<W8>)
{
  v4 = 8 * (v1 ^ a1 ^ (v2 + 834));
  v5 = *(STACK[0x1448] + 24);
  STACK[0x1830] = v5;
  return (*(v3 + 8 * (((v5 == 0) * (v4 - 10752)) ^ v1)))();
}

uint64_t sub_100C4E1B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x3D70]) = (a5 ^ 0x31CC) - a3 + 1630876751;
  LODWORD(STACK[0x3D68]) = -1764567084 - a3;
  return (*(v7 + 8 * a5))(a1, v5 ^ v6);
}

uint64_t sub_100C4E1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(STACK[0x8B0] + 8 * v5);
  STACK[0x8A0] = v7 & 0xFFFFFFF8;
  return v8(a2, a2, 0x19A41E7488B36A16, 0x101237000, a5, a3, v6);
}

uint64_t sub_100C4E4F0()
{
  STACK[0xD80] = 4;
  v3 = (*(v1 + 8 * (v0 ^ 0xB7D0FF87)))(&STACK[0x1D55], &STACK[0xCAC], &STACK[0xD80], 0, 0);
  v4 = STACK[0x298];
  v5 = (v0 - 1032106024) ^ STACK[0x298];
  *(v2 - 216) = v3 - STACK[0x298];
  *(v2 - 208) = v4;
  *(v2 - 240) = (v0 + 132004596) ^ v4;
  *(v2 - 236) = v5;
  *(v2 - 232) = ((v0 - 1032103355) ^ 4) - v4;
  *(v2 - 228) = v0 - 1032103355 - v4;
  *(v2 - 224) = v4;
  v6 = (*(v1 + 8 * (v0 + 1211103414)))(v2 - 240);
  return (*(v1 + 8 * *(v2 - 220)))(v6);
}

uint64_t sub_100C4E5B8()
{
  v1[115] = v2[23];
  v1[114] = v2[22];
  v1[113] = v2[21];
  v1[112] = v2[20];
  return (*(v3 + 8 * (v0 ^ 0x5B41EF5E ^ ((v0 != -1175214857) * (v0 ^ 0x5B41CB9D)))))();
}

uint64_t sub_100C4E614@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0x308E083E0C524CBELL) = v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_100C4E648()
{
  v3 = STACK[0x948];
  STACK[0x7C8] = &STACK[0xA90] + v1;
  STACK[0x830] = v0 - 176;
  STACK[0x8A0] = v3;
  STACK[0x978] = 0;
  STACK[0x7B8] = 0;
  LODWORD(STACK[0x8D4]) = 0;
  return (*(v2 + 111368))();
}

uint64_t sub_100C4E7B8()
{
  STACK[0x3E20] = 0;
  v2 = STACK[0x3D98];
  v3 = *(&off_101353600 + (STACK[0x3D98] - 9714));
  STACK[0x3D78] = v3 + 520;
  v4 = STACK[0x3DA0];
  v5 = STACK[0x3DA0] - v0;
  STACK[0x3E10] = v3 + 776;
  STACK[0x3D70] = v3 + 248;
  v6 = v0 ^ v4 ^ ((v5 ^ v0) + 2 * (v5 & v0));
  STACK[0x3DC8] = ((v6 << 32) ^ 0x5CEAF1BFCED18160) + 0x2B4D35B785AEFD68 - ((2 * ((v6 << 32) ^ 0x5CEAF1BFCED18160)) & 0x569A6B6F090102C0);
  v7 = v6 + v5;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  STACK[0x3DC0] = v8;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_100C4EDCC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * (((((a1 ^ 0x1647) + 19035) ^ 0x6A10 ^ (10 * (a1 ^ 0x1647))) * (STACK[0x2AB0] & 1)) ^ a1));
  LODWORD(STACK[0x3CF0]) = 72;
  LODWORD(STACK[0x3D88]) = 2;
  v3 = STACK[0x4A8];
  STACK[0x3D40] = STACK[0x4A8];
  v4 = STACK[0x1BE8];
  STACK[0x3D78] = STACK[0x1BE8];
  STACK[0x3B20] = v3;
  STACK[0x3B18] = v4;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x39A0];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  v5 = STACK[0x3820];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = v5;
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

uint64_t sub_100C4EEFC@<X0>(unsigned int a1@<W8>)
{
  v3 = a1 < LODWORD(STACK[0x3E18]);
  *(STACK[0x3B38] + 1933) = bswap32(STACK[0x3D50]);
  return (*(v2 + 8 * ((v3 * (10575 * (v1 ^ 0x6B28) - 21144)) ^ v1)))();
}

uint64_t sub_100C4EF48()
{
  LODWORD(STACK[0x3AF0]) = 0;
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3AD8]) = 0;
  LODWORD(STACK[0x3860]) = 0;
  LODWORD(STACK[0x3D28]) = 0;
  LODWORD(STACK[0x3AE0]) = 0;
  LODWORD(STACK[0x38B0]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  LODWORD(STACK[0x3AE8]) = 0;
  LODWORD(STACK[0x38B8]) = 0;
  v2 = (v0 - 1002550634) & 0x3BC1F6FE;
  v3 = STACK[0x3948];
  STACK[0x2E60] = STACK[0x3948] >> 24;
  v4 = STACK[0x3B18];
  v5 = STACK[0x3B18] >> (((v0 - 106) & 0xFEu) + 114);
  v6 = STACK[0x3B18] >> 24;
  v7 = STACK[0x3B18] >> 40;
  STACK[0x29D8] = BYTE5(v3);
  STACK[0x3BD8] = HIBYTE(v3);
  v8 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3E40]) = 1;
  STACK[0x3D98] = v2;
  STACK[0x30E0] = HIWORD(v3);
  STACK[0x2E40] = v3 >> 16;
  STACK[0x3278] = v4;
  STACK[0x2880] = STACK[0x3950];
  STACK[0x3070] = HIDWORD(v4);
  STACK[0x30E8] = HIDWORD(v3);
  STACK[0x2E20] = v3 >> 8;
  STACK[0x2590] = v4 >> 8;
  STACK[0x2858] = HIWORD(v4);
  STACK[0x2588] = v3;
  STACK[0x3490] = v7;
  STACK[0x2E98] = v6;
  STACK[0x2FB8] = v5;
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
  LODWORD(STACK[0x3D20]) = 1;
  LODWORD(STACK[0x3AA0]) = 1;
  LODWORD(STACK[0x3850]) = 1;
  LODWORD(STACK[0x3D58]) = 1;
  LODWORD(STACK[0x3858]) = 1;
  return v8();
}

uint64_t sub_100C4F0B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v6 + 8 * (v8 - 16190));
  STACK[0x3818] = a1;
  LODWORD(STACK[0x3340]) = v5;
  STACK[0x36C0] = v7;
  return v9(0, 0, 0, 0, a5, 0, 0, 0);
}

uint64_t sub_100C4F1EC()
{
  *v1 = v3 | (v4[270] << 8) | (v4[269] << 16) | (v4[268] << ((v2 ^ 0xAF) + 19));
  ++LODWORD(STACK[0x1AA8]);
  return (*(v5 + 8 * (v2 ^ (9438 * (v0 < 0x10C)))))();
}

uint64_t sub_100C4F264(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = STACK[0x4030];
  LODWORD(STACK[0x4034]) = STACK[0x4030];
  LODWORD(STACK[0x4038]) = (v14 ^ 0x2926) + 21140;
  LODWORD(STACK[0x403C]) = 2115 * (v14 ^ 0x2926);
  v15 = (a8 + a2) >> 16;
  v16 = a8 + a2 - v15;
  v17 = v16 >> 8;
  LODWORD(v16) = v16 >> 8;
  v18 = a8 + v12 + v16 - v15;
  v19 = v18 >> 11;
  v20 = (a8 - v15 + v17 + v12 + ((a8 + v12 + v16 - v15) >> 11)) >> (((v14 ^ 0x26) - 108) ^ 0x98);
  LODWORD(v18) = v18 >> 11;
  v21 = (a8 - v20 + v11 + v18 + v16 - v15) >> 14;
  LODWORD(v17) = v19 + v17;
  v22 = a8 - v20 - ((a8 - v20 + v21 - v15 + v17 + v11) >> (67 * (v14 ^ 0x26) + 105));
  v23 = v22 + v9 + v21 + v18 + v16;
  v24 = (v23 - v15) >> 12;
  v25 = (v23 - v24 - v15) >> 2;
  v26 = v22 + v10 + v21 + v18 + v16 + v25;
  v27 = (v26 - v24 - v15) >> 15;
  v28 = v22 + v25 + v21 + v27;
  v29 = v26 + v27;
  v30 = (v26 + v27 - v24 - v15) >> 3;
  v31 = v28 + ((v29 - v30 - v24 - v15 - 238538825 - ((v29 - v30 - v24 - v15 - 238538825) >> 14)) >> 5) - v30 - v24 - ((v29 - v30 - v24 - v15 - 238538825) >> 14) - v15 + v17 + v8;
  LODWORD(STACK[0x4040]) = v31;
  v32 = ((v31 ^ 0x88C4743) - ((v31 ^ 0x88C4743u) >> 12) + (((v31 ^ 0x88C4743) - ((v31 ^ 0x88C4743u) >> 12)) >> 3)) ^ 0x6B74D976;
  v33 = v32 + (v32 >> 13) + ((v32 + (v32 >> 13)) >> 7) + 1876618711;
  LODWORD(STACK[0x4044]) = v33;
  LODWORD(STACK[0x4048]) = v33 >> 11;
  v34 = *(v13 + 8 * (v14 + 20803));
  STACK[0x3F18] = STACK[0x20E0];
  STACK[0x3F08] = v34;
  return (*(v13 + 8 * (v14 ^ 0x522E)))();
}

uint64_t sub_100C4F438()
{
  v2 = (v0 + 608975029) & 0xDBB3D6BF;
  STACK[0x3D98] = v2;
  return (*(v1 + 8 * (((v2 ^ 0x52EA) * LODWORD(STACK[0x3800])) ^ v0)))();
}

uint64_t sub_100C4F47C()
{
  v1 = STACK[0x3740] - 15809;
  LODWORD(STACK[0x3860]) -= 8;
  return (*(v0 + 8 * v1))();
}

uint64_t sub_100C4F518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 + 4 * v6);
  v12 = __CFADD__(v11, 1);
  v13 = v11 + 1;
  v14 = !v12;
  *(a6 + 4 * v6) = v13;
  if (v6 + 1 >= v10)
  {
    v14 = 1;
  }

  return (*(v9 + 8 * ((v14 * v7) ^ v8)))();
}

uint64_t sub_100C4F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, unint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = STACK[0x3AF0] - 9799;
  *a25 = 0;
  v68 = *(v66 + 8 * v67);
  STACK[0x12A0] = 1;
  STACK[0x3D40] = STACK[0x1848];
  STACK[0x3D78] = STACK[0x1840];
  STACK[0x3B20] = STACK[0x1A88];
  STACK[0x3B18] = STACK[0x1A80];
  STACK[0x3790] = STACK[0x3980];
  LODWORD(STACK[0x3CF0]) = STACK[0x2238];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x39A8]) = STACK[0x1AA8];
  LODWORD(STACK[0x3B00]) = STACK[0x32E8];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x3D58]) = STACK[0x2038];
  STACK[0x3D90] = LODWORD(STACK[0x3830]);
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  v69 = LODWORD(STACK[0x3438]);
  STACK[0x33C0] = v69;
  LODWORD(STACK[0x1AD0]) = STACK[0x32D0];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  STACK[0x21F8] = v69;
  LODWORD(STACK[0x1C90]) = STACK[0x32D8];
  LODWORD(STACK[0x1958]) = 4;
  STACK[0x10C8] = a66;
  v70 = STACK[0x418];
  STACK[0x948] = STACK[0x418];
  STACK[0x488] = a65;
  STACK[0x970] = a60;
  STACK[0x940] = STACK[0x10B0];
  STACK[0x10C0] = a66;
  STACK[0x1278] = v70;
  STACK[0x980] = a25;
  LODWORD(STACK[0x20AC]) = STACK[0x23B0];
  LODWORD(STACK[0x424]) = STACK[0x3548];
  v71 = STACK[0x32E0];
  LODWORD(STACK[0x3798]) = STACK[0x32E0];
  LODWORD(STACK[0x1C30]) = v71;
  LODWORD(STACK[0x2B78]) = 1;
  HIDWORD(a35) = v71;
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v68(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_100C4F750(uint64x2_t a1, uint32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = (a5 + 4 * a8);
  v12 = v9 + 4 * a8;
  v13 = *(v12 + 4);
  v14 = *(v12 + 20);
  v15.i64[0] = v13;
  v15.i64[1] = DWORD1(v13);
  v16 = v15;
  v15.i64[0] = DWORD2(v13);
  v15.i64[1] = HIDWORD(v13);
  v17 = v15;
  v15.i64[0] = v14;
  v15.i64[1] = DWORD1(v14);
  v18 = v15;
  v15.i64[0] = DWORD2(v14);
  v15.i64[1] = HIDWORD(v14);
  v19 = vorrq_s8(vuzp1q_s32(vshlq_u64(v18, a1), vshlq_u64(v15, a1)), vshlq_u32(*(v12 + 16), a2));
  *v11 = vorrq_s8(vuzp1q_s32(vshlq_u64(v16, a1), vshlq_u64(v17, a1)), vshlq_u32(*v12, a2));
  v11[1] = v19;
  return (*(v10 + 8 * ((28022 * (((a9 - 3672) ^ 0x1F74) + a8 == a4)) ^ a9)))();
}

uint64_t sub_100C4F80C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 8 * a1 + 8) = v10 + 84;
  *(v10 + 4 * a1 + 48) = 8;
  v22 = a1 + 1;
  v11 = v10 + 8 * (a1 + 1);
  v12 = (*(v8 + 8 * (v9 ^ 0x72D2)))(0x7FFFFFFFLL);
  *(v11 + 68) = v12;
  v11 += 68;
  *(v11 + 1) = BYTE1(v12);
  *(v11 + 2) = v12 >> ((v9 + 67) ^ 0x8C);
  *(v11 + 3) = HIBYTE(v12);
  v13 = (*(v8 + 8 * (v9 + 28210)))(0x7FFFFFFFLL);
  *(v11 + 4) = v13;
  return (*(v8 + 8 * ((16606 * (v22 < 5uLL)) ^ v9)))(v13, v14, v15, v16, v17, v18, v19, v20, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100C4F8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
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
  LODWORD(STACK[0x918]) = 0;
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
  v6 = (a5 + 4890) | 0x8Cu;
  STACK[0x3AF0] = v6;
  v7 = STACK[0x2238] == v6 - 21095;
  LODWORD(STACK[0x3B08]) = a5 ^ 0x6C66;
  v8 = *(v5 + 8 * ((v7 * (a5 ^ 0x60A6)) ^ a5));
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  v9 = STACK[0x1954];
  LODWORD(STACK[0x2B70]) = STACK[0x1954];
  LODWORD(STACK[0x3438]) = v9;
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v10 = STACK[0x1C28];
  LODWORD(STACK[0x2B88]) = STACK[0x1C28];
  LODWORD(STACK[0x3B00]) = v10;
  v11 = STACK[0x32E8];
  LODWORD(STACK[0x3268]) = STACK[0x32E8];
  LODWORD(STACK[0x3488]) = v11;
  LODWORD(STACK[0x3280]) = v11;
  LODWORD(STACK[0x3290]) = v11;
  v12 = STACK[0x1A78];
  LODWORD(STACK[0x3298]) = STACK[0x1A78];
  LODWORD(STACK[0x3288]) = v12;
  v13 = STACK[0x2500];
  LODWORD(STACK[0x2B40]) = STACK[0x2500];
  LODWORD(STACK[0x3998]) = v13;
  LODWORD(STACK[0x3AE8]) = v13;
  v14 = STACK[0x21F4];
  LODWORD(STACK[0x2B60]) = STACK[0x21F4];
  LODWORD(STACK[0x3AE0]) = v14;
  v15 = STACK[0x3810];
  LODWORD(STACK[0x2B28]) = STACK[0x3810];
  LODWORD(STACK[0x3260]) = v15;
  v16 = STACK[0x3318];
  LODWORD(STACK[0x2B98]) = STACK[0x3318];
  LODWORD(STACK[0x3980]) = 75;
  LODWORD(STACK[0x2BB0]) = 55;
  LODWORD(STACK[0x3988]) = 53;
  v17 = STACK[0x4A8];
  v18 = STACK[0x2928];
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
  LODWORD(STACK[0x3CF0]) = 1;
  LODWORD(STACK[0x32C0]) = 1;
  LODWORD(STACK[0x39A0]) = STACK[0x1204];
  v19 = STACK[0x1A90];
  LODWORD(STACK[0x3D48]) = STACK[0x1A90];
  LODWORD(STACK[0x3CE8]) = STACK[0x28CC];
  LODWORD(STACK[0x36B8]) = STACK[0x2134];
  LODWORD(STACK[0x2B30]) = STACK[0x3688];
  v20 = STACK[0x1BC8];
  LODWORD(STACK[0x39E8]) = STACK[0x1BC8];
  STACK[0x32E0] = v18;
  STACK[0x3D50] = STACK[0x448];
  STACK[0x3AD8] = v17;
  STACK[0x32D8] = STACK[0x1BE8];
  LODWORD(STACK[0x3278]) = v20;
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3258]) = v19;
  LODWORD(STACK[0x32D0]) = STACK[0x3D90];
  return v8(a1, 0, a2, v17, a3, a4, v16);
}

uint64_t sub_100C4FB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  LODWORD(STACK[0x3B08]) = v59 + 14420;
  v61 = *(v60 + 8 * ((8871 * (STACK[0x2238] != (((v59 + 13762) | 0x292) ^ 0x52B2))) ^ v59));
  LODWORD(STACK[0x3CF0]) = 45;
  LODWORD(STACK[0x3D88]) = 2;
  LODWORD(STACK[0x3980]) = 61;
  v62 = STACK[0x448];
  STACK[0x32E0] = STACK[0x448];
  STACK[0x3D50] = v62;
  STACK[0x3AD8] = a59;
  v63 = STACK[0x1BE8];
  STACK[0x32D8] = STACK[0x1BE8];
  v64 = STACK[0x1BC8];
  LODWORD(STACK[0x3278]) = STACK[0x1BC8];
  v65 = STACK[0x1A78];
  LODWORD(STACK[0x3298]) = STACK[0x1A78];
  LODWORD(STACK[0x3270]) = STACK[0x2B20];
  LODWORD(STACK[0x3B00]) = STACK[0x1C28];
  v66 = STACK[0x32E8];
  LODWORD(STACK[0x3280]) = STACK[0x32E8];
  LODWORD(STACK[0x2B48]) = STACK[0x2A48];
  LODWORD(STACK[0x3288]) = v65;
  LODWORD(STACK[0x3AE8]) = STACK[0x2500];
  LODWORD(STACK[0x2B58]) = STACK[0x1C20];
  LODWORD(STACK[0x2B78]) = STACK[0x3420];
  LODWORD(STACK[0x3AE0]) = STACK[0x21F4];
  LODWORD(STACK[0x2B90]) = STACK[0x1BA0];
  LODWORD(STACK[0x2B50]) = STACK[0x2630];
  LODWORD(STACK[0x2B68]) = STACK[0x2228];
  v67 = STACK[0x3318];
  LODWORD(STACK[0x1A78]) = v66;
  LODWORD(STACK[0x2B98]) = v67;
  v68 = STACK[0x28CC];
  LODWORD(STACK[0x3290]) = STACK[0x28CC];
  v69 = STACK[0x1A90];
  LODWORD(STACK[0x3258]) = STACK[0x1A90];
  LODWORD(STACK[0x32D0]) = STACK[0x3D90];
  LODWORD(STACK[0x3260]) = STACK[0x3810];
  v70 = STACK[0x4A8];
  STACK[0x3D40] = STACK[0x4A8];
  STACK[0x3D78] = v63;
  STACK[0x3B20] = v70;
  STACK[0x3B18] = v63;
  LODWORD(STACK[0x3D48]) = v69;
  LODWORD(STACK[0x3CE8]) = v68;
  STACK[0x3D98] = 1;
  LODWORD(STACK[0x39E8]) = v64;
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v61();
}

uint64_t sub_100C50518()
{
  LODWORD(STACK[0x8D8]) = v0;
  v2 = SLOWORD(STACK[0x19FE]);
  STACK[0x1598] = STACK[0x1A00];
  return (*(v1 + 8 * ((6334 * (v2 == -2993)) ^ 0x2A20)))();
}

uint64_t sub_100C50624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v11 = STACK[0x630] + 12985;
  v12 = STACK[0x638];
  v13 = (((1645 * v7 + 2113825) % 0xA88u) ^ 0xB39FFFE94AFF6FFFLL) + 2 * ((1645 * v7 + 2113825) % 0xA88u) + STACK[0x638];
  v14 = *(v13 + 0x6BCB6BA7BE375ECLL);
  v15 = *v10;
  v16 = *STACK[0x660];
  v17 = *(v16 + (v15 & 0xC6917C3C));
  v18 = *v8;
  STACK[0x628] = *v8;
  LODWORD(v18) = v18 ^ v9;
  LODWORD(v13) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 - 1258254335 + v17 + (v11 ^ 0xC6912E1B)) & v18)) ^ v14 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v13 - 1258254335 + v17 - 963544002) & v18)) ^ (76 * (v13 + 1));
  LODWORD(v13) = ((v13 ^ 0xA1204D6) - 514554297) ^ ((v13 ^ 0x1731CF69) - 59290118) ^ ((v13 ^ 0x1D23CBCF) - 161134240);
  v19 = v13 + 926483631;
  v20 = (v13 + 453977749) ^ (1 - v13) ^ (((v13 + 453977749) ^ 1) + 1);
  v21 = (v19 ^ 0x9DFF7B77) & (2 * (v19 & 0xA78)) ^ v19 & 0xA78;
  LODWORD(v13) = ((2 * (v19 ^ 0x8CFF2FC7)) ^ 0xA2FEAB7E) & ((v13 + 926483631) ^ 0x8CFF2FC7) ^ (2 * (v19 ^ 0x8CFF2FC7)) & 0x517F55BE;
  v22 = ((4 * (v13 ^ 0x51015481)) ^ 0x45FD56FC) & (v13 ^ 0x51015481) ^ (4 * (v13 ^ 0x51015481)) & 0x517F55BC;
  LODWORD(v13) = (v22 ^ 0x417D54A0) & (16 * ((v13 ^ 0x120) & (4 * v21) ^ v21)) ^ (v13 ^ 0x120) & (4 * v21) ^ v21;
  v23 = ((16 * (v22 ^ 0x10020103)) ^ 0x17F55BF0) & (v22 ^ 0x10020103) ^ (16 * (v22 ^ 0x10020103)) & 0x517F55B0;
  HIDWORD(v24) = v20;
  LODWORD(v24) = v19 ^ (2 * (((v13 ^ 0x517F55BF ^ (v23 ^ 0x11755100) & (v13 << 8)) << 16) & 0x517F0000 ^ v13 ^ 0x517F55BF ^ (v23 ^ 0x11755100) & (v13 << 8) ^ (((v13 ^ 0x517F55BF ^ (v23 ^ 0x11755100) & (v13 << 8)) << 16) ^ 0x55BF0000) & (((v23 ^ 0x400A040F) << 8) & 0x517F0000 ^ 0x2A0000 ^ (((v23 ^ 0x400A040F) << 8) ^ 0x7F550000) & (v23 ^ 0x400A040F))));
  LODWORD(v13) = v24 >> 3;
  HIDWORD(v24) = v13 ^ 0x1BA01A20;
  LODWORD(v24) = v13 ^ 0xC0000000;
  v25 = STACK[0x640] + 4 * (551 * (v24 >> 29) % 0x1D48);
  LODWORD(v15) = *(v16 + (v15 & STACK[0x658]));
  v26 = a7 + 551 * v7;
  v27 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v25 + v15 + 673210728) & v18)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v25 + v15 + 673210726) & v18)) ^ *(v25 - 0x34EE34220E8AC3B8);
  v28 = v27 ^ (6319 * v25);
  v29 = 1645 * (((v27 ^ (333999 * v25)) >> 16) ^ 0x25) + 3391990;
  v30 = ((2 * (v27 ^ -v25)) & 0x1C ^ 0x10) + ((v27 ^ (-81 * v25)) ^ 0xC7);
  LODWORD(v25) = 1645 * (((((v27 ^ (-1962600273 * v25)) >> 24) ^ 0x6404843C) + 1219206302) ^ ((((v27 ^ (-1962600273 * v25)) >> 24) ^ 0xB84E5F66) - 1797175352) ^ ((((v27 ^ (-1962600273 * v25)) >> 24) ^ 0xDC4ADBF9) - 253377703)) - 552175953;
  v31 = HIBYTE(v28) ^ 0x79;
  LODWORD(v16) = v26 % 0x1D48;
  v32 = ((v29 % 0xA88) ^ 0x3FE21F64FFFBB6D5) + v12 + ((2 * (v29 % 0xA88)) & 0xDAA);
  v33 = *(v32 + 0x7A7A973EC6E72F16);
  v34 = v32 + 280875;
  v35 = 1645 * v31 + 3391990 - 2696 * (((12744711 * (1645 * v31 + 3391990)) >> 32) >> 3);
  v36 = ((v25 % 0xA88) ^ 0xD5C8F79EBBEEFBF7) + v12 + ((2 * (v25 % 0xA88)) & 0x17EE);
  v37 = (v35 ^ 0xADFEF48BFF35F77ELL) + v12 + ((2 * v35) & 0xEFC);
  LODWORD(v32) = v37 + 13240450;
  v38 = *(v37 + 0xC5DC217C7ACEE6DLL);
  v39 = 1645 * v30 + 3368960 - 2696 * (((12744711 * (1645 * v30 + 3368960)) >> 32) >> 3);
  v40 = (v39 ^ 0x1EE5FF717F4BEB2BLL) + v12 + ((2 * v39) & 0x1656);
  v41 = v40 - 2135681835;
  LODWORD(v39) = *(v40 - 0x648948CDB8690540);
  LODWORD(v40) = (*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v34 + v17 - 963544004) & v18)) ^ v33 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v34 + v17 - 963544002) & v18)) ^ (76 * v34)) << 8;
  LODWORD(v32) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v32 + v17 - 963544004) & v18)) ^ v38 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((0x59EB6FB7A70F4D21 * (STACK[0x628] ^ 0xDB653AB621E69720) + 0x59EB6FB7A70F4D21 + (v32 + v17 - 963544002)) & (STACK[0x628] ^ 0xDB653AB621E69720))) ^ (76 * v32);
  LODWORD(v36) = (((v40 ^ 0xFFEF0D) & (((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v36 + 1141965833 + v17 - 963544004) & v18)) ^ *(v36 - 0x1B6C40FAF50C160CLL) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v36 + 1141965833 + v17 - 963544002) & v18)) ^ (76 * (v36 + 9))) << 16) ^ 0x2D8E0D) | v40 & 0x7100) ^ 0xC39C25) & (v32 ^ 0xFFFF08) ^ ((v32 & 0xD7) + 69632);
  LODWORD(v40) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v41 + v17 - 963544004) & v18)) ^ v39 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v41 + v17 - 963544002) & v18)) ^ (76 * v41);
  v42 = STACK[0x640] + 4 * v16;
  *(v42 - 0x34EE34220E8AC3B8) = (-1962600273 * v42) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v15 + v42 + 673210726) & v18)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v15 + v42 + 673210728) & v18)) ^ 0xC9BB5B1 ^ (((v36 << 8) ^ 0x30CCB408) & ~v40 | v40 & 0xFFFFFFF7);
  return (*(STACK[0x668] + 8 * ((19562 * (v7 == 255)) ^ STACK[0x630])))();
}

uint64_t sub_100C50E80@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = (v2 + 11815);
  STACK[0x3CD0] = HIBYTE(a2);
  v5 = a1 == STACK[0x3D90];
  STACK[0x2330] = v4;
  return (*(v3 + 8 * (((v2 + 12716 + v4 - 41012) * v5) ^ v2)))();
}

uint64_t sub_100C50FD4()
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v2 = *(v1 + 8 * ((((v0 + 15481) ^ 0x7566 ^ (25 * ((v0 + 7407) ^ 0x305A))) * (STACK[0x8A0] & 1)) ^ (v0 + 7407)));
  LODWORD(STACK[0x3CF0]) = 11;
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

uint64_t sub_100C512EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, unsigned int a32, unsigned int a33)
{
  LODWORD(STACK[0x3D68]) = 0;
  v34 = *(v33 + 8 * (((a32 > a33) * ((1563 * (LODWORD(STACK[0x3B08]) ^ 0x528D)) ^ 0x3ACD)) ^ (LODWORD(STACK[0x3B08]) - 16616)));
  v35 = STACK[0x978];
  v36 = LODWORD(STACK[0x3E18]);
  LODWORD(STACK[0x7F0]) = v36;
  v37 = LODWORD(STACK[0x3688]);
  STACK[0x3700] = LODWORD(STACK[0x1698]);
  LODWORD(STACK[0x183C]) = STACK[0x23B0];
  LODWORD(STACK[0x1B50]) = STACK[0x221C];
  LODWORD(STACK[0x3310]) = STACK[0x35FC];
  LODWORD(STACK[0x3308]) = STACK[0x3970];
  LODWORD(STACK[0x3300]) = STACK[0x35F8];
  LODWORD(STACK[0x3D88]) = 1;
  LODWORD(STACK[0x3D60]) = 1;
  LODWORD(STACK[0x32E8]) = STACK[0x1C28];
  return v34(v36, a2, 1, 0, v37, a6, 2, v35);
}

uint64_t sub_100C513C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41)
{
  v44 = LOBYTE(STACK[0x3F17]);
  v45 = *(*STACK[0x3E40] + (a41 & *v41));
  v46 = (v45 + a40) ^ 0xC2AF3EAA3FF1B8E4;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = *(v42 + 8 * SLODWORD(STACK[0x4578]));
  v49 = __ROR8__(v46, 8);
  STACK[0x2870] = LOBYTE(STACK[0x457E]);
  STACK[0x2DD8] = LOBYTE(STACK[0x457F]);
  STACK[0x27D8] = LOBYTE(STACK[0x459B]);
  STACK[0x31B8] = LOBYTE(STACK[0x459C]);
  v50 = __ROR8__((((2 * (v49 + v47)) | 0x131ED77CC8E4F472) - (v49 + v47) - 0x98F6BBE64727A39) ^ 0x6C7D3F637CFFCEC5, 8);
  STACK[0x3468] = LOBYTE(STACK[0x459D]);
  STACK[0x3040] = LOBYTE(STACK[0x459E]);
  v51 = (((2 * (v49 + v47)) | 0x131ED77CC8E4F472) - (v49 + v47) - 0x98F6BBE64727A39) ^ 0x6C7D3F637CFFCEC5 ^ __ROR8__(v47, 61);
  v52 = (v50 + v51) ^ 0x6FF046966119128DLL;
  STACK[0x2D78] = LOBYTE(STACK[0x459F]);
  STACK[0x30C0] = LOBYTE(STACK[0x45AD]);
  v53 = v52 ^ __ROR8__(v51, 61);
  STACK[0x3418] = LOBYTE(STACK[0x45AE]);
  STACK[0x3058] = LOBYTE(STACK[0x45AF]);
  v54 = __ROR8__(v52, 8);
  STACK[0x3708] = LOBYTE(STACK[0x45BF]);
  STACK[0x3878] = LOBYTE(STACK[0x45CE]);
  v55 = (((2 * (v54 + v53)) | 0x1F466FF5138258E0) - (v54 + v53) - 0xFA337FA89C12C70) ^ 0xAE11AA3F5EB73F5BLL;
  STACK[0x3C78] = LOBYTE(STACK[0x6BE0]);
  STACK[0x30E0] = LOBYTE(STACK[0x6BE1]);
  v56 = v55 ^ __ROR8__(v53, 61);
  STACK[0x2380] = LOBYTE(STACK[0x6BE2]);
  STACK[0x2880] = LOBYTE(STACK[0x6BE3]);
  v57 = __ROR8__(v55, 8);
  STACK[0x1AF0] = LOBYTE(STACK[0x6BE4]);
  STACK[0x3140] = LOBYTE(STACK[0x6BE5]);
  STACK[0x2790] = LOBYTE(STACK[0x6BE7]);
  STACK[0x2648] = LOBYTE(STACK[0x6BE8]);
  v58 = (((v57 + v56) ^ 0x74D99A11093D798) - ((2 * ((v57 + v56) ^ 0x74D99A11093D798)) & 0xDE170009EE86AFFELL) + 0x6F0B8004F74357FFLL) ^ 0x874239E41235C88BLL;
  STACK[0x2F78] = LOBYTE(STACK[0x6BE9]);
  v59 = v58 ^ __ROR8__(v56, 61);
  STACK[0x3150] = LOBYTE(STACK[0x6BEA]);
  STACK[0x2640] = LOBYTE(STACK[0x6BEB]);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xD8C7B31FCA19D9DELL;
  STACK[0x31E0] = LODWORD(STACK[0x6BEC]);
  v61 = v60 ^ __ROR8__(v59, 61);
  STACK[0x3CF0] = LODWORD(STACK[0x6BF0]);
  v62 = __ROR8__(v60, 8);
  LODWORD(STACK[0x3370]) = STACK[0x6BF4];
  v63 = (((v62 + v61) | 0x726C532678FA4FDCLL) - ((v62 + v61) | 0x8D93ACD98705B023) - 0x726C532678FA4FDDLL) ^ 0x26395208F24B8C53;
  LODWORD(STACK[0x3378]) = STACK[0x6BF8];
  LODWORD(STACK[0x34E0]) = STACK[0x6BFC];
  LODWORD(STACK[0x11EC]) = (((__ROR8__(v63, 8) + (v63 ^ __ROR8__(v61, 61))) ^ 0x6F4F60BC0E025EE0) >> a39) ^ v44;
  LODWORD(STACK[0x20C4]) = STACK[0x6C00];
  LODWORD(STACK[0x2098]) = STACK[0x6C04];
  STACK[0x3D28] = LODWORD(STACK[0x6C08]);
  LODWORD(STACK[0x2090]) = STACK[0x6C0C];
  STACK[0x3D68] = LODWORD(STACK[0x6C10]);
  STACK[0x37F0] = LODWORD(STACK[0x6C14]);
  LODWORD(STACK[0x2088]) = STACK[0x6C18];
  STACK[0x3D78] = LODWORD(STACK[0x6C1C]);
  LODWORD(STACK[0x3D10]) = STACK[0x6C2C];
  LODWORD(STACK[0x1780]) = LOBYTE(STACK[0x6D3E]);
  STACK[0x2E90] = LOBYTE(STACK[0x6D3F]);
  STACK[0x36E0] = LOBYTE(STACK[0x6D40]);
  LODWORD(STACK[0x1F6C]) = LOBYTE(STACK[0x6D41]);
  STACK[0x2D68] = LOBYTE(STACK[0x6D42]);
  STACK[0x2268] = LOBYTE(STACK[0x6D43]);
  STACK[0x2358] = LOBYTE(STACK[0x6D44]);
  STACK[0x3088] = LOBYTE(STACK[0x6D45]);
  LODWORD(STACK[0x1EAC]) = LOBYTE(STACK[0x6D46]);
  STACK[0x2D60] = LOBYTE(STACK[0x6D47]);
  STACK[0x2278] = LOBYTE(STACK[0x6D48]);
  STACK[0x33B8] = LOBYTE(STACK[0x6D49]);
  LODWORD(STACK[0x1E80]) = LOBYTE(STACK[0x6D4A]);
  LODWORD(STACK[0x39E8]) = LOBYTE(STACK[0x6D4B]);
  LODWORD(STACK[0x1774]) = LOBYTE(STACK[0x6D4C]);
  STACK[0x2CA0] = LOBYTE(STACK[0x6D4D]);
  STACK[0x3590] = LOBYTE(STACK[0x6D4E]);
  STACK[0x2D58] = LOBYTE(STACK[0x6D4F]);
  LODWORD(STACK[0x17A4]) = LOBYTE(STACK[0x6D50]);
  STACK[0x36C0] = LOBYTE(STACK[0x6D51]);
  STACK[0x2290] = LOBYTE(STACK[0x6D52]);
  STACK[0x3BB0] = LOBYTE(STACK[0x6D53]);
  STACK[0x1800] = LOBYTE(STACK[0x6D54]);
  STACK[0x2128] = LOBYTE(STACK[0x6D55]);
  STACK[0x3C60] = LOBYTE(STACK[0x6D56]);
  STACK[0x2FC8] = LOBYTE(STACK[0x6D57]);
  STACK[0x2D20] = LOBYTE(STACK[0x6D58]);
  STACK[0x2788] = LOBYTE(STACK[0x6D5A]);
  LODWORD(STACK[0x1EA4]) = LOBYTE(STACK[0x6D5B]);
  STACK[0x26C0] = LOBYTE(STACK[0x6D5C]);
  STACK[0x26A0] = LOBYTE(STACK[0x6D5D]);
  LODWORD(STACK[0x1764]) = LOBYTE(STACK[0x6D5E]);
  STACK[0x2340] = LOBYTE(STACK[0x6D5F]);
  STACK[0x2DB0] = LOBYTE(STACK[0x6D60]);
  STACK[0x2C90] = LOBYTE(STACK[0x6D61]);
  STACK[0x2F40] = LOBYTE(STACK[0x6D62]);
  LODWORD(STACK[0x1738]) = LOBYTE(STACK[0x6D63]);
  STACK[0x2F50] = LOBYTE(STACK[0x6D64]);
  STACK[0x2CF0] = LOBYTE(STACK[0x6D65]);
  STACK[0x2E40] = LOBYTE(STACK[0x6D66]);
  LODWORD(STACK[0x17FC]) = LOBYTE(STACK[0x6D67]);
  STACK[0x1C80] = LOBYTE(STACK[0x6D68]);
  STACK[0x3B88] = LOBYTE(STACK[0x6D69]);
  STACK[0x3098] = LOBYTE(STACK[0x6D6A]);
  LODWORD(STACK[0x1F5C]) = LOBYTE(STACK[0x6D6B]);
  LODWORD(STACK[0x1768]) = LOBYTE(STACK[0x6D6C]);
  LODWORD(STACK[0x1838]) = LOBYTE(STACK[0x6D6D]);
  STACK[0x2678] = LOBYTE(STACK[0x6D6E]);
  STACK[0x2770] = LOBYTE(STACK[0x6D6F]);
  STACK[0x2378] = LOBYTE(STACK[0x6D70]);
  STACK[0x2CB8] = LOBYTE(STACK[0x6D71]);
  STACK[0x2680] = LOBYTE(STACK[0x6D72]);
  STACK[0x2390] = LOBYTE(STACK[0x6D73]);
  STACK[0x1C58] = LOBYTE(STACK[0x6D74]);
  STACK[0x3788] = LOBYTE(STACK[0x6D75]);
  STACK[0x27F0] = LOBYTE(STACK[0x6D76]);
  STACK[0x3450] = LOBYTE(STACK[0x6D77]);
  STACK[0x1820] = LOBYTE(STACK[0x6D78]);
  LODWORD(STACK[0x1FC4]) = LOBYTE(STACK[0x6D79]);
  LODWORD(STACK[0x1F58]) = LOBYTE(STACK[0x6D7A]);
  STACK[0x25D8] = LOBYTE(STACK[0x6D7B]);
  LODWORD(STACK[0x1FD4]) = LOBYTE(STACK[0x6D7C]);
  STACK[0x28C0] = LOBYTE(STACK[0x6D7D]);
  STACK[0x3758] = LOBYTE(STACK[0x6D7E]);
  STACK[0x2D10] = LOBYTE(STACK[0x6D7F]);
  STACK[0x22E0] = LOBYTE(STACK[0x6D80]);
  STACK[0x2410] = LOBYTE(STACK[0x6D81]);
  STACK[0x2F80] = LOBYTE(STACK[0x6D82]);
  LODWORD(STACK[0x1770]) = LOBYTE(STACK[0x6D83]);
  LODWORD(STACK[0x1784]) = LOBYTE(STACK[0x6D84]);
  STACK[0x3000] = LOBYTE(STACK[0x6D85]);
  STACK[0x2C98] = LOBYTE(STACK[0x6D86]);
  STACK[0x3478] = LOBYTE(STACK[0x6D87]);
  STACK[0x1E90] = LOBYTE(STACK[0x6D88]);
  STACK[0x22F8] = LOBYTE(STACK[0x6D89]);
  STACK[0x2FF8] = LOBYTE(STACK[0x6D8A]);
  STACK[0x1F60] = LOBYTE(STACK[0x6D8B]);
  LODWORD(STACK[0x176C]) = LOBYTE(STACK[0x6D8C]);
  LODWORD(STACK[0x1E98]) = LOBYTE(STACK[0x6D8D]);
  LODWORD(STACK[0x21D4]) = LOBYTE(STACK[0x6D8E]);
  STACK[0x2408] = LOBYTE(STACK[0x6D8F]);
  STACK[0x30A8] = LOBYTE(STACK[0x6D90]);
  STACK[0x2718] = LOBYTE(STACK[0x6D91]);
  STACK[0x1FC8] = LOBYTE(STACK[0x6D92]);
  LODWORD(STACK[0x1EA8]) = LOBYTE(STACK[0x6D93]);
  STACK[0x3BF8] = LOBYTE(STACK[0x6D94]);
  LODWORD(STACK[0x1E9C]) = LOBYTE(STACK[0x6D95]);
  STACK[0x2E88] = LOBYTE(STACK[0x6D96]);
  STACK[0x3BE8] = LOBYTE(STACK[0x6D97]);
  STACK[0x26A8] = LOBYTE(STACK[0x6D98]);
  STACK[0x1C38] = LOBYTE(STACK[0x6D99]);
  STACK[0x36F0] = LOBYTE(STACK[0x6D9A]);
  STACK[0x2868] = LOBYTE(STACK[0x6D9B]);
  STACK[0x2D18] = LOBYTE(STACK[0x6D9C]);
  STACK[0x2950] = LOBYTE(STACK[0x6D9D]);
  STACK[0x2780] = LOBYTE(STACK[0x6D9E]);
  LODWORD(STACK[0x1754]) = LOBYTE(STACK[0x6D9F]);
  STACK[0x2DA8] = LOBYTE(STACK[0x6DA0]);
  STACK[0x2FA8] = LOBYTE(STACK[0x6DA1]);
  LODWORD(STACK[0x1FC0]) = LOBYTE(STACK[0x6DA2]);
  STACK[0x2520] = LOBYTE(STACK[0x6DA3]);
  LODWORD(STACK[0x1760]) = LOBYTE(STACK[0x6DA4]);
  STACK[0x28E0] = LOBYTE(STACK[0x6DA5]);
  STACK[0x2A28] = LOBYTE(STACK[0x6DA6]);
  STACK[0x2D90] = LOBYTE(STACK[0x6DA7]);
  LODWORD(STACK[0x175C]) = LOBYTE(STACK[0x6DA8]);
  STACK[0x2768] = LOBYTE(STACK[0x6DA9]);
  STACK[0x2ED0] = LOBYTE(STACK[0x6DAA]);
  STACK[0x1E88] = LOBYTE(STACK[0x6DAB]);
  STACK[0x3730] = LOBYTE(STACK[0x6DAC]);
  STACK[0x3BD8] = LOBYTE(STACK[0x6DAD]);
  LODWORD(STACK[0x1EA0]) = LOBYTE(STACK[0x6DAE]);
  STACK[0x2F90] = LOBYTE(STACK[0x6DAF]);
  STACK[0x25C8] = LOBYTE(STACK[0x6DB0]);
  STACK[0x25C0] = LOBYTE(STACK[0x6DB1]);
  STACK[0x3050] = LOBYTE(STACK[0x6DB2]);
  STACK[0x25A8] = LOBYTE(STACK[0x6DB3]);
  LODWORD(STACK[0x1FB8]) = LOBYTE(STACK[0x6DB4]);
  LODWORD(STACK[0x1F54]) = LOBYTE(STACK[0x6DB6]);
  STACK[0x2E70] = LOBYTE(STACK[0x6DB7]);
  STACK[0x3070] = LOBYTE(STACK[0x6DB8]);
  LODWORD(STACK[0x1758]) = LOBYTE(STACK[0x6DB9]);
  STACK[0x2C88] = LOBYTE(STACK[0x6DBA]);
  LODWORD(STACK[0x179C]) = LOBYTE(STACK[0x6DBB]);
  STACK[0x2D00] = LOBYTE(STACK[0x6DBC]);
  LODWORD(STACK[0x174C]) = LOBYTE(STACK[0x6DBD]);
  STACK[0x3B48] = LOBYTE(STACK[0x6DBE]);
  STACK[0x2D98] = LOBYTE(STACK[0x6DBF]);
  STACK[0x3008] = LOBYTE(STACK[0x6DC0]);
  LODWORD(STACK[0x177C]) = LOBYTE(STACK[0x6DC1]);
  STACK[0x26B8] = LOBYTE(STACK[0x6DC2]);
  STACK[0x22C0] = LOBYTE(STACK[0x6DC3]);
  STACK[0x2CA8] = LOBYTE(STACK[0x6DC4]);
  STACK[0x2910] = LOBYTE(STACK[0x6DC5]);
  LODWORD(STACK[0x1750]) = LOBYTE(STACK[0x6DC6]);
  STACK[0x34A0] = LOBYTE(STACK[0x6DC7]);
  STACK[0x2C70] = LOBYTE(STACK[0x6DC8]);
  STACK[0x17F0] = LOBYTE(STACK[0x6DC9]);
  STACK[0x2860] = LOBYTE(STACK[0x6DCA]);
  STACK[0x2D08] = LOBYTE(STACK[0x6DCB]);
  LODWORD(STACK[0x1FB4]) = LOBYTE(STACK[0x6DCC]);
  STACK[0x30E8] = LOBYTE(STACK[0x6DCD]);
  STACK[0x2FA0] = LOBYTE(STACK[0x6DCE]);
  LODWORD(STACK[0x1F4C]) = LOBYTE(STACK[0x6DCF]);
  LODWORD(STACK[0x1FBC]) = LOBYTE(STACK[0x6DD0]);
  STACK[0x28A0] = LOBYTE(STACK[0x6DD1]);
  STACK[0x2368] = LOBYTE(STACK[0x6DD2]);
  STACK[0x2280] = LOBYTE(STACK[0x6DD3]);
  STACK[0x2F48] = LOBYTE(STACK[0x6DD4]);
  STACK[0x2EF0] = LOBYTE(STACK[0x6DD5]);
  LODWORD(STACK[0x1FB0]) = LOBYTE(STACK[0x6DD6]);
  LODWORD(STACK[0x17F8]) = LOBYTE(STACK[0x6DD7]);
  STACK[0x3C00] = LOBYTE(STACK[0x6DD8]);
  STACK[0x34B8] = LOBYTE(STACK[0x6DD9]);
  STACK[0x2D80] = LOBYTE(STACK[0x6DDA]);
  STACK[0x3C70] = LOBYTE(STACK[0x6DDB]);
  STACK[0x3020] = LOBYTE(STACK[0x6DDC]);
  STACK[0x2750] = LOBYTE(STACK[0x6DDD]);
  STACK[0x21D8] = LOBYTE(STACK[0x6DDE]);
  STACK[0x3028] = LOBYTE(STACK[0x6DE0]);
  LODWORD(STACK[0x1E84]) = LOBYTE(STACK[0x6DE1]);
  STACK[0x17E8] = LOBYTE(STACK[0x6DE2]);
  STACK[0x2610] = LOBYTE(STACK[0x6DE3]);
  STACK[0x2D70] = LOBYTE(STACK[0x6DE4]);
  STACK[0x3CB8] = LOBYTE(STACK[0x6DE5]);
  STACK[0x3D60] = LOBYTE(STACK[0x6DE6]);
  LODWORD(STACK[0x1748]) = LOBYTE(STACK[0x6DE7]);
  STACK[0x33F0] = LOBYTE(STACK[0x6DE8]);
  STACK[0x2A00] = LOBYTE(STACK[0x6DE9]);
  STACK[0x3030] = LOBYTE(STACK[0x6DEA]);
  STACK[0x2E50] = LOBYTE(STACK[0x6DEB]);
  STACK[0x1FA8] = LOBYTE(STACK[0x6DEC]);
  STACK[0x2900] = LOBYTE(STACK[0x6DED]);
  STACK[0x3CB0] = LOBYTE(STACK[0x6DEE]);
  STACK[0x30F8] = LOBYTE(STACK[0x6DEF]);
  LODWORD(STACK[0x1F50]) = LOBYTE(STACK[0x6DF0]);
  LODWORD(STACK[0x1E7C]) = LOBYTE(STACK[0x6DF1]);
  STACK[0x3038] = LOBYTE(STACK[0x6DF2]);
  STACK[0x17E0] = LOBYTE(STACK[0x6DF3]);
  STACK[0x3108] = LOBYTE(STACK[0x6DF4]);
  STACK[0x2710] = LOBYTE(STACK[0x6DF5]);
  STACK[0x28F0] = LOBYTE(STACK[0x6DF7]);
  STACK[0x1C48] = LOBYTE(STACK[0x6DF8]);
  STACK[0x2DF0] = LOBYTE(STACK[0x6DF9]);
  STACK[0x2EE0] = LOBYTE(STACK[0x6DFA]);
  LODWORD(STACK[0x1E78]) = LOBYTE(STACK[0x6DFB]);
  LODWORD(STACK[0x173C]) = LOBYTE(STACK[0x6DFC]);
  STACK[0x24E0] = LOBYTE(STACK[0x6DFD]);
  STACK[0x25B8] = LOBYTE(STACK[0x6DFE]);
  STACK[0x23A0] = LOBYTE(STACK[0x6DFF]);
  STACK[0x2348] = LOBYTE(STACK[0x6E00]);
  LODWORD(STACK[0x1C78]) = LOBYTE(STACK[0x6E01]);
  STACK[0x27A8] = LOBYTE(STACK[0x6E02]);
  STACK[0x2EE8] = LOBYTE(STACK[0x6E03]);
  STACK[0x3C18] = LOBYTE(STACK[0x6E05]);
  STACK[0x3B98] = LOBYTE(STACK[0x6E06]);
  STACK[0x2A20] = LOBYTE(STACK[0x6E07]);
  LODWORD(STACK[0x1740]) = LOBYTE(STACK[0x6E08]);
  LODWORD(STACK[0x23F8]) = LOBYTE(STACK[0x6E09]);
  STACK[0x2318] = LOBYTE(STACK[0x6E0A]);
  LODWORD(STACK[0x1F48]) = LOBYTE(STACK[0x6E0B]);
  STACK[0x34F0] = LOBYTE(STACK[0x6E0C]);
  STACK[0x2990] = LOBYTE(STACK[0x6E0D]);
  LODWORD(STACK[0x1E74]) = LOBYTE(STACK[0x6E0E]);
  STACK[0x3068] = LOBYTE(STACK[0x6E0F]);
  LODWORD(STACK[0x1778]) = LOBYTE(STACK[0x6E10]);
  STACK[0x3BA8] = LOBYTE(STACK[0x6E11]);
  STACK[0x34E8] = LOBYTE(STACK[0x6E12]);
  STACK[0x1E68] = LOBYTE(STACK[0x6E13]);
  LODWORD(STACK[0x1E64]) = LOBYTE(STACK[0x6E14]);
  STACK[0x2ED8] = LOBYTE(STACK[0x6E15]);
  STACK[0x2F28] = LOBYTE(STACK[0x6F5F]);
  LODWORD(STACK[0x1F38]) = LOBYTE(STACK[0x6F59]);
  STACK[0x23E8] = LOBYTE(STACK[0x6F5A]);
  LODWORD(STACK[0x1730]) = LOBYTE(STACK[0x6F5B]);
  STACK[0x2F08] = LOBYTE(STACK[0x6F5C]);
  STACK[0x2740] = LOBYTE(STACK[0x6F5D]);
  LODWORD(STACK[0x33E4]) = LOBYTE(STACK[0x6F5E]);
  LODWORD(STACK[0x1E58]) = LOBYTE(STACK[0x6F53]);
  STACK[0x2F68] = LOBYTE(STACK[0x6F54]);
  STACK[0x3D50] = LOBYTE(STACK[0x6F55]);
  STACK[0x2858] = LOBYTE(STACK[0x6F56]);
  STACK[0x1E50] = LOBYTE(STACK[0x6F57]);
  LODWORD(STACK[0x172C]) = LOBYTE(STACK[0x6F58]);
  STACK[0x3BC8] = LOBYTE(STACK[0x6F4D]);
  STACK[0x25B0] = LOBYTE(STACK[0x6F4E]);
  LODWORD(STACK[0x1724]) = LOBYTE(STACK[0x6F4F]);
  LODWORD(STACK[0x1728]) = LOBYTE(STACK[0x6F50]);
  STACK[0x2E58] = LOBYTE(STACK[0x6F51]);
  STACK[0x24D0] = LOBYTE(STACK[0x6F52]);
  STACK[0x3120] = LOBYTE(STACK[0x6F47]);
  LODWORD(STACK[0x170C]) = LOBYTE(STACK[0x6F48]);
  STACK[0x35D0] = LOBYTE(STACK[0x6F49]);
  LODWORD(STACK[0x1FA4]) = LOBYTE(STACK[0x6F4A]);
  STACK[0x26F8] = LOBYTE(STACK[0x6F4B]);
  LODWORD(STACK[0x1E60]) = LOBYTE(STACK[0x6F4C]);
  STACK[0x2EC8] = LOBYTE(STACK[0x6F41]);
  STACK[0x32B8] = LOBYTE(STACK[0x6F42]);
  STACK[0x2998] = LOBYTE(STACK[0x6F43]);
  STACK[0x2270] = LOBYTE(STACK[0x6F44]);
  LODWORD(STACK[0x1720]) = LOBYTE(STACK[0x6F45]);
  LODWORD(STACK[0x1E48]) = LOBYTE(STACK[0x6F46]);
  LODWORD(STACK[0x1F30]) = LOBYTE(STACK[0x6F3B]);
  STACK[0x2120] = LOBYTE(STACK[0x6F3C]);
  LODWORD(STACK[0x23E0]) = LOBYTE(STACK[0x6F3D]);
  LODWORD(STACK[0x1F40]) = LOBYTE(STACK[0x6F3E]);
  STACK[0x2C40] = LOBYTE(STACK[0x6F3F]);
  LODWORD(STACK[0x1E30]) = LOBYTE(STACK[0x6F40]);
  LODWORD(STACK[0x1E28]) = LOBYTE(STACK[0x6F35]);
  STACK[0x31F0] = LOBYTE(STACK[0x6F36]);
  STACK[0x3128] = LOBYTE(STACK[0x6F37]);
  STACK[0x26C8] = LOBYTE(STACK[0x6F38]);
  STACK[0x27C0] = LOBYTE(STACK[0x6F39]);
  LODWORD(STACK[0x171C]) = LOBYTE(STACK[0x6F3A]);
  STACK[0x2808] = LOBYTE(STACK[0x6F2F]);
  STACK[0x3060] = LOBYTE(STACK[0x6F30]);
  LODWORD(STACK[0x1718]) = LOBYTE(STACK[0x6F31]);
  LODWORD(STACK[0x1700]) = LOBYTE(STACK[0x6F32]);
  LODWORD(STACK[0x1F44]) = LOBYTE(STACK[0x6F33]);
  STACK[0x17C0] = LOBYTE(STACK[0x6F34]);
  STACK[0x1E38] = LOBYTE(STACK[0x6F29]);
  STACK[0x2DA0] = LOBYTE(STACK[0x6F2A]);
  STACK[0x17C8] = LOBYTE(STACK[0x6F2B]);
  LODWORD(STACK[0x1714]) = LOBYTE(STACK[0x6F2C]);
  LODWORD(STACK[0x1704]) = LOBYTE(STACK[0x6F2D]);
  STACK[0x1E00] = LOBYTE(STACK[0x6F2E]);
  STACK[0x22B8] = LOBYTE(STACK[0x6F22]);
  STACK[0x2DC8] = LOBYTE(STACK[0x6F23]);
  STACK[0x3750] = LOBYTE(STACK[0x6F24]);
  STACK[0x3C10] = LOBYTE(STACK[0x6F25]);
  LODWORD(STACK[0x1710]) = LOBYTE(STACK[0x6F26]);
  LODWORD(STACK[0x16FC]) = LOBYTE(STACK[0x6F28]);
  STACK[0x3160] = LOBYTE(STACK[0x6F1C]);
  LODWORD(STACK[0x1E2C]) = LOBYTE(STACK[0x6F1D]);
  LODWORD(STACK[0x1744]) = LOBYTE(STACK[0x6F1E]);
  LODWORD(STACK[0x1F2C]) = LOBYTE(STACK[0x6F1F]);
  STACK[0x21E8] = LOBYTE(STACK[0x6F20]);
  LODWORD(STACK[0x1E34]) = LOBYTE(STACK[0x6F21]);
  STACK[0x1818] = LOBYTE(STACK[0x6F16]);
  LODWORD(STACK[0x1E4C]) = LOBYTE(STACK[0x6F17]);
  STACK[0x1E40] = LOBYTE(STACK[0x6F18]);
  STACK[0x33D0] = LOBYTE(STACK[0x6F19]);
  STACK[0x2F30] = LOBYTE(STACK[0x6F1A]);
  STACK[0x27E8] = LOBYTE(STACK[0x6F1B]);
  STACK[0x2918] = LOBYTE(STACK[0x6F10]);
  STACK[0x30C8] = LOBYTE(STACK[0x6F11]);
  STACK[0x3CC0] = LOBYTE(STACK[0x6F12]);
  STACK[0x2518] = LOBYTE(STACK[0x6F13]);
  LODWORD(STACK[0x1F3C]) = LOBYTE(STACK[0x6F14]);
  STACK[0x2F18] = LOBYTE(STACK[0x6F15]);
  LODWORD(STACK[0x1DEC]) = LOBYTE(STACK[0x6F0A]);
  LODWORD(STACK[0x1708]) = LOBYTE(STACK[0x6F0B]);
  STACK[0x1DD8] = LOBYTE(STACK[0x6F0C]);
  STACK[0x2D40] = LOBYTE(STACK[0x6F0D]);
  LODWORD(STACK[0x1FA0]) = LOBYTE(STACK[0x6F0E]);
  STACK[0x22A8] = LOBYTE(STACK[0x6F0F]);
  STACK[0x2EC0] = LOBYTE(STACK[0x6F04]);
  STACK[0x2DE8] = LOBYTE(STACK[0x6F05]);
  STACK[0x2F98] = LOBYTE(STACK[0x6F06]);
  STACK[0x3C20] = LOBYTE(STACK[0x6F07]);
  STACK[0x2E30] = LOBYTE(STACK[0x6F08]);
  STACK[0x2A10] = LOBYTE(STACK[0x6F09]);
  STACK[0x3C08] = LOBYTE(STACK[0x6EFE]);
  STACK[0x2D50] = LOBYTE(STACK[0x6EFF]);
  STACK[0x3568] = LOBYTE(STACK[0x6F00]);
  STACK[0x23D8] = LOBYTE(STACK[0x6F01]);
  LODWORD(STACK[0x1FEC]) = LOBYTE(STACK[0x6F02]);
  STACK[0x1DC8] = LOBYTE(STACK[0x6F03]);
  LODWORD(STACK[0x16F8]) = LOBYTE(STACK[0x6EF8]);
  LODWORD(STACK[0x1C70]) = LOBYTE(STACK[0x6EF9]);
  STACK[0x27A0] = LOBYTE(STACK[0x6EFA]);
  STACK[0x3CD8] = LOBYTE(STACK[0x6EFB]);
  STACK[0x2E28] = LOBYTE(STACK[0x6EFC]);
  LODWORD(STACK[0x1F34]) = LOBYTE(STACK[0x6EFD]);
  STACK[0x2738] = LOBYTE(STACK[0x6EF1]);
  STACK[0x2C68] = LOBYTE(STACK[0x6EF2]);
  STACK[0x3BF0] = LOBYTE(STACK[0x6EF3]);
  STACK[0x2008] = LOBYTE(STACK[0x6EF4]);
  LODWORD(STACK[0x1E14]) = LOBYTE(STACK[0x6EF6]);
  LODWORD(STACK[0x16F0]) = LOBYTE(STACK[0x6EF7]);
  STACK[0x2CB0] = LOBYTE(STACK[0x6EEB]);
  STACK[0x2F58] = LOBYTE(STACK[0x6EEC]);
  LODWORD(STACK[0x21D0]) = LOBYTE(STACK[0x6EED]);
  STACK[0x3D48] = LOBYTE(STACK[0x6EEE]);
  STACK[0x3498] = LOBYTE(STACK[0x6EEF]);
  STACK[0x1E08] = LOBYTE(STACK[0x6EF0]);
  STACK[0x3080] = LOBYTE(STACK[0x6EE5]);
  STACK[0x2EA8] = LOBYTE(STACK[0x6EE6]);
  STACK[0x2E80] = LOBYTE(STACK[0x6EE7]);
  STACK[0x25E0] = LOBYTE(STACK[0x6EE8]);
  STACK[0x30F0] = LOBYTE(STACK[0x6EE9]);
  STACK[0x2190] = LOBYTE(STACK[0x6EEA]);
  LODWORD(STACK[0x1DD4]) = LOBYTE(STACK[0x6EDF]);
  STACK[0x1DF0] = LOBYTE(STACK[0x6EE0]);
  LODWORD(STACK[0x1F20]) = LOBYTE(STACK[0x6EE1]);
  LODWORD(STACK[0x1D88]) = LOBYTE(STACK[0x6EE2]);
  STACK[0x33C8] = LOBYTE(STACK[0x6EE3]);
  STACK[0x1E18] = LOBYTE(STACK[0x6EE4]);
  STACK[0x17B0] = LOBYTE(STACK[0x6ED9]);
  LODWORD(STACK[0x1DFC]) = LOBYTE(STACK[0x6EDA]);
  STACK[0x1DA0] = LOBYTE(STACK[0x6EDB]);
  LODWORD(STACK[0x1E24]) = LOBYTE(STACK[0x6EDC]);
  STACK[0x2DD0] = LOBYTE(STACK[0x6EDD]);
  LODWORD(STACK[0x1F9C]) = LOBYTE(STACK[0x6EDE]);
  STACK[0x2310] = LOBYTE(STACK[0x6ED3]);
  STACK[0x3C80] = LOBYTE(STACK[0x6ED4]);
  LODWORD(STACK[0x1E20]) = LOBYTE(STACK[0x6ED5]);
  STACK[0x1D98] = LOBYTE(STACK[0x6ED6]);
  STACK[0x3938] = LOBYTE(STACK[0x6ED7]);
  LODWORD(STACK[0x16F4]) = LOBYTE(STACK[0x6ED8]);
  STACK[0x2830] = LOBYTE(STACK[0x6ECD]);
  LODWORD(STACK[0x1F24]) = LOBYTE(STACK[0x6ECE]);
  STACK[0x3298] = LOBYTE(STACK[0x6ECF]);
  STACK[0x3848] = LOBYTE(STACK[0x6ED0]);
  LODWORD(STACK[0x16E4]) = LOBYTE(STACK[0x6ED1]);
  LODWORD(STACK[0x1F28]) = LOBYTE(STACK[0x6ED2]);
  STACK[0x22C8] = LOBYTE(STACK[0x6EC7]);
  STACK[0x2528] = LOBYTE(STACK[0x6EC8]);
  STACK[0x1AE8] = LOBYTE(STACK[0x6EC9]);
  STACK[0x2EA0] = LOBYTE(STACK[0x6ECA]);
  LODWORD(STACK[0x1F1C]) = LOBYTE(STACK[0x6ECB]);
  STACK[0x2E48] = LOBYTE(STACK[0x6ECC]);
  STACK[0x2DB8] = LOBYTE(STACK[0x6EC1]);
  STACK[0x2FF0] = LOBYTE(STACK[0x6EC2]);
  LODWORD(STACK[0x1F8C]) = LOBYTE(STACK[0x6EC3]);
  STACK[0x2D48] = LOBYTE(STACK[0x6EC4]);
  STACK[0x3A60] = LOBYTE(STACK[0x6EC5]);
  STACK[0x3B90] = LOBYTE(STACK[0x6EC6]);
  STACK[0x2EB8] = LOBYTE(STACK[0x6EBB]);
  STACK[0x22A0] = LOBYTE(STACK[0x6EBC]);
  STACK[0x25E8] = LOBYTE(STACK[0x6EBD]);
  STACK[0x2E38] = LOBYTE(STACK[0x6EBE]);
  STACK[0x2C78] = LOBYTE(STACK[0x6EBF]);
  STACK[0x30A0] = LOBYTE(STACK[0x6EC0]);
  STACK[0x1D68] = LOBYTE(STACK[0x6EB5]);
  LODWORD(STACK[0x17BC]) = LOBYTE(STACK[0x6EB6]);
  STACK[0x1D78] = LOBYTE(STACK[0x6EB7]);
  STACK[0x2E08] = LOBYTE(STACK[0x6EB8]);
  STACK[0x2838] = LOBYTE(STACK[0x6EB9]);
  STACK[0x2658] = LOBYTE(STACK[0x6EBA]);
  LODWORD(STACK[0x1F7C]) = LOBYTE(STACK[0x6EAF]);
  LODWORD(STACK[0x1D74]) = LOBYTE(STACK[0x6EB0]);
  STACK[0x2388] = LOBYTE(STACK[0x6EB1]);
  STACK[0x3BC0] = LOBYTE(STACK[0x6EB2]);
  STACK[0x3010] = LOBYTE(STACK[0x6EB3]);
  LODWORD(STACK[0x1DBC]) = LOBYTE(STACK[0x6EB4]);
  STACK[0x1DC0] = LOBYTE(STACK[0x6EA9]);
  STACK[0x24D8] = LOBYTE(STACK[0x6EAA]);
  STACK[0x3C88] = LOBYTE(STACK[0x6EAB]);
  LODWORD(STACK[0x1DE8]) = LOBYTE(STACK[0x6EAC]);
  STACK[0x3018] = LOBYTE(STACK[0x6EAD]);
  STACK[0x24E8] = LOBYTE(STACK[0x6EAE]);
  STACK[0x2C80] = LOBYTE(STACK[0x6EA3]);
  STACK[0x3340] = LOBYTE(STACK[0x6EA4]);
  LODWORD(STACK[0x1798]) = LOBYTE(STACK[0x6EA5]);
  STACK[0x2F70] = LOBYTE(STACK[0x6EA6]);
  STACK[0x3458] = LOBYTE(STACK[0x6EA7]);
  STACK[0x1D90] = LOBYTE(STACK[0x6EA8]);
  STACK[0x30D8] = LOBYTE(STACK[0x6E9D]);
  STACK[0x25A0] = LOBYTE(STACK[0x6E9E]);
  LODWORD(STACK[0x16E8]) = LOBYTE(STACK[0x6E9F]);
  LODWORD(STACK[0x16EC]) = LOBYTE(STACK[0x6EA0]);
  STACK[0x3500] = LOBYTE(STACK[0x6EA1]);
  STACK[0x2E78] = LOBYTE(STACK[0x6EA2]);
  LODWORD(STACK[0x17A0]) = LOBYTE(STACK[0x6E97]);
  STACK[0x2198] = LOBYTE(STACK[0x6E98]);
  LODWORD(STACK[0x1DE4]) = LOBYTE(STACK[0x6E99]);
  STACK[0x2638] = LOBYTE(STACK[0x6E9A]);
  STACK[0x2A08] = LOBYTE(STACK[0x6E9B]);
  STACK[0x2200] = LOBYTE(STACK[0x6E9C]);
  STACK[0x3460] = LOBYTE(STACK[0x6E91]);
  STACK[0x3158] = LOBYTE(STACK[0x6E92]);
  STACK[0x1AE0] = LOBYTE(STACK[0x6E93]);
  STACK[0x1D80] = LOBYTE(STACK[0x6E94]);
  STACK[0x33B0] = LOBYTE(STACK[0x6E95]);
  STACK[0x1BB0] = LOBYTE(STACK[0x6E96]);
  LODWORD(STACK[0x1D58]) = LOBYTE(STACK[0x6E8B]);
  STACK[0x2840] = LOBYTE(STACK[0x6E8C]);
  LODWORD(STACK[0x3B68]) = LOBYTE(STACK[0x6E8D]);
  STACK[0x3BB8] = LOBYTE(STACK[0x6E8E]);
  STACK[0x3858] = LOBYTE(STACK[0x6E8F]);
  LODWORD(STACK[0x1DB0]) = LOBYTE(STACK[0x6E90]);
  STACK[0x3950] = LOBYTE(STACK[0x6E85]);
  STACK[0x27E0] = LOBYTE(STACK[0x6E86]);
  LODWORD(STACK[0x1DB4]) = LOBYTE(STACK[0x6E87]);
  STACK[0x2930] = LOBYTE(STACK[0x6E88]);
  STACK[0x28D8] = LOBYTE(STACK[0x6E89]);
  STACK[0x27B8] = LOBYTE(STACK[0x6E8A]);
  STACK[0x2FB0] = LOBYTE(STACK[0x6E7F]);
  STACK[0x2CC0] = LOBYTE(STACK[0x6E80]);
  STACK[0x2C50] = LOBYTE(STACK[0x6E81]);
  LODWORD(STACK[0x1F78]) = LOBYTE(STACK[0x6E82]);
  STACK[0x3470] = LOBYTE(STACK[0x6E83]);
  LODWORD(STACK[0x1DAC]) = LOBYTE(STACK[0x6E84]);
  STACK[0x2818] = LOBYTE(STACK[0x6E79]);
  STACK[0x1810] = LOBYTE(STACK[0x6E7A]);
  STACK[0x2D30] = LOBYTE(STACK[0x6E7B]);
  STACK[0x21C0] = LOBYTE(STACK[0x6E7C]);
  STACK[0x2630] = LOBYTE(STACK[0x6E7D]);
  LODWORD(STACK[0x1DB8]) = LOBYTE(STACK[0x6E7E]);
  LODWORD(STACK[0x1F08]) = LOBYTE(STACK[0x6E73]);
  STACK[0x21E0] = LOBYTE(STACK[0x6E74]);
  STACK[0x2748] = LOBYTE(STACK[0x6E75]);
  STACK[0x1828] = LOBYTE(STACK[0x6E76]);
  STACK[0x2FD8] = LOBYTE(STACK[0x6E77]);
  STACK[0x3148] = LOBYTE(STACK[0x6E78]);
  STACK[0x28A8] = LOBYTE(STACK[0x6E6D]);
  STACK[0x3480] = LOBYTE(STACK[0x6E6E]);
  LODWORD(STACK[0x1F18]) = LOBYTE(STACK[0x6E6F]);
  STACK[0x2288] = LOBYTE(STACK[0x6E70]);
  STACK[0x2F88] = LOBYTE(STACK[0x6E71]);
  STACK[0x2CE8] = LOBYTE(STACK[0x6E72]);
  STACK[0x3800] = LOBYTE(STACK[0x6E67]);
  LODWORD(STACK[0x1D38]) = LOBYTE(STACK[0x6E68]);
  LODWORD(STACK[0x1C68]) = LOBYTE(STACK[0x6E69]);
  STACK[0x23B8] = LOBYTE(STACK[0x6E6A]);
  STACK[0x26B0] = LOBYTE(STACK[0x6E6B]);
  STACK[0x3CA8] = LOBYTE(STACK[0x6E6C]);
  STACK[0x37A8] = LOBYTE(STACK[0x6E61]);
  STACK[0x2D38] = LOBYTE(STACK[0x6E62]);
  STACK[0x2758] = LOBYTE(STACK[0x6E63]);
  STACK[0x29F8] = LOBYTE(STACK[0x6E64]);
  LODWORD(STACK[0x1D44]) = LOBYTE(STACK[0x6E65]);
  STACK[0x3658] = LOBYTE(STACK[0x6E66]);
  STACK[0x3588] = LOBYTE(STACK[0x6E5B]);
  STACK[0x2850] = LOBYTE(STACK[0x6E5C]);
  STACK[0x2400] = LOBYTE(STACK[0x6E5D]);
  STACK[0x3388] = LOBYTE(STACK[0x6E5E]);
  LODWORD(STACK[0x1794]) = LOBYTE(STACK[0x6E5F]);
  STACK[0x3BE0] = LOBYTE(STACK[0x6E60]);
  STACK[0x2E18] = LOBYTE(STACK[0x6E55]);
  LODWORD(STACK[0x1790]) = LOBYTE(STACK[0x6E56]);
  LODWORD(STACK[0x1D8C]) = LOBYTE(STACK[0x6E57]);
  STACK[0x3768] = LOBYTE(STACK[0x6E58]);
  LODWORD(STACK[0x1D3C]) = LOBYTE(STACK[0x6E59]);
  STACK[0x1F90] = LOBYTE(STACK[0x6E5A]);
  STACK[0x1AF8] = LOBYTE(STACK[0x6E4F]);
  STACK[0x22E8] = LOBYTE(STACK[0x6E50]);
  STACK[0x1EF8] = LOBYTE(STACK[0x6E51]);
  STACK[0x28E8] = LOBYTE(STACK[0x6E52]);
  STACK[0x26D0] = LOBYTE(STACK[0x6E53]);
  STACK[0x3138] = LOBYTE(STACK[0x6E54]);
  STACK[0x3C90] = LOBYTE(STACK[0x6E49]);
  LODWORD(STACK[0x1D60]) = LOBYTE(STACK[0x6E4A]);
  STACK[0x1F00] = LOBYTE(STACK[0x6E4B]);
  LODWORD(STACK[0x17AC]) = LOBYTE(STACK[0x6E4C]);
  LODWORD(STACK[0x16D0]) = LOBYTE(STACK[0x6E4D]);
  LODWORD(STACK[0x1D5C]) = LOBYTE(STACK[0x6E4E]);
  STACK[0x3078] = LOBYTE(STACK[0x6E43]);
  STACK[0x2E10] = LOBYTE(STACK[0x6E44]);
  LODWORD(STACK[0x1D64]) = LOBYTE(STACK[0x6E45]);
  STACK[0x27D0] = LOBYTE(STACK[0x6E46]);
  STACK[0x1F80] = LOBYTE(STACK[0x6E47]);
  STACK[0x26D8] = LOBYTE(STACK[0x6E48]);
  STACK[0x28F8] = LOBYTE(STACK[0x6E3D]);
  STACK[0x3BA0] = LOBYTE(STACK[0x6E3E]);
  STACK[0x1EE0] = LOBYTE(STACK[0x6E3F]);
  LODWORD(STACK[0x16E0]) = LOBYTE(STACK[0x6E40]);
  STACK[0x3130] = LOBYTE(STACK[0x6E41]);
  STACK[0x2690] = LOBYTE(STACK[0x6E42]);
  STACK[0x22B0] = LOBYTE(STACK[0x6E37]);
  LODWORD(STACK[0x1EF0]) = LOBYTE(STACK[0x6E38]);
  STACK[0x3440] = LOBYTE(STACK[0x6E39]);
  STACK[0x2CD8] = LOBYTE(STACK[0x6E3A]);
  STACK[0x30B8] = LOBYTE(STACK[0x6E3B]);
  LODWORD(STACK[0x23D0]) = LOBYTE(STACK[0x6E3C]);
  STACK[0x34A8] = LOBYTE(STACK[0x6E31]);
  STACK[0x2C38] = LOBYTE(STACK[0x6E32]);
  LODWORD(STACK[0x1F0C]) = LOBYTE(STACK[0x6E33]);
  LODWORD(STACK[0x16D4]) = LOBYTE(STACK[0x6E34]);
  STACK[0x3538] = LOBYTE(STACK[0x6E35]);
  LODWORD(STACK[0x16D8]) = LOBYTE(STACK[0x6E36]);
  STACK[0x2DC0] = LOBYTE(STACK[0x6E2B]);
  STACK[0x2FD0] = LOBYTE(STACK[0x6E2C]);
  LODWORD(STACK[0x1F10]) = LOBYTE(STACK[0x6E2D]);
  STACK[0x3D20] = LOBYTE(STACK[0x6E2E]);
  LODWORD(STACK[0x1734]) = LOBYTE(STACK[0x6E2F]);
  STACK[0x2298] = LOBYTE(STACK[0x6E30]);
  LODWORD(STACK[0x1D34]) = LOBYTE(STACK[0x6E25]);
  STACK[0x3640] = LOBYTE(STACK[0x6E26]);
  STACK[0x26E0] = LOBYTE(STACK[0x6E27]);
  LODWORD(STACK[0x16DC]) = LOBYTE(STACK[0x6E28]);
  LODWORD(STACK[0x1D30]) = LOBYTE(STACK[0x6E29]);
  STACK[0x3810] = LOBYTE(STACK[0x6E2A]);
  STACK[0x3C98] = LOBYTE(STACK[0x6E1F]);
  LODWORD(STACK[0x1EEC]) = LOBYTE(STACK[0x6E20]);
  STACK[0x2338] = LOBYTE(STACK[0x6E21]);
  STACK[0x1D20] = LOBYTE(STACK[0x6E22]);
  STACK[0x2940] = LOBYTE(STACK[0x6E23]);
  STACK[0x2E20] = LOBYTE(STACK[0x6E24]);
  STACK[0x24C0] = LOBYTE(STACK[0x6E18]);
  STACK[0x2F38] = LOBYTE(STACK[0x6E19]);
  LODWORD(STACK[0x1E5C]) = LOBYTE(STACK[0x6E1A]);
  STACK[0x3090] = LOBYTE(STACK[0x6E1B]);
  LODWORD(STACK[0x1D2C]) = LOBYTE(STACK[0x6E1D]);
  STACK[0x30B0] = LOBYTE(STACK[0x6E1E]);
  STACK[0x2CF8] = LOBYTE(STACK[0x6E16]);
  STACK[0x23F0] = LOBYTE(STACK[0x6E17]);
  STACK[0x1808] = LOBYTE(STACK[0x6F60]);
  STACK[0x2888] = LOBYTE(STACK[0x6F61]);
  LODWORD(STACK[0x1F14]) = LOBYTE(STACK[0x6F62]);
  STACK[0x2040] = LOBYTE(STACK[0x6F63]);
  LODWORD(STACK[0x1D54]) = LOBYTE(STACK[0x6F64]);
  LODWORD(STACK[0x1D40]) = LOBYTE(STACK[0x6F65]);
  STACK[0x2E68] = LOBYTE(STACK[0x6F66]);
  STACK[0x1D48] = LOBYTE(STACK[0x6F67]);
  STACK[0x2DF8] = LOBYTE(STACK[0x6F68]);
  STACK[0x2728] = LOBYTE(STACK[0x6F69]);
  STACK[0x35A0] = LOBYTE(STACK[0x6F6A]);
  STACK[0x3D40] = LOBYTE(STACK[0x6F6B]);
  STACK[0x2CE0] = LOBYTE(STACK[0x6F6C]);
  STACK[0x2E00] = LOBYTE(STACK[0x6F6D]);
  STACK[0x2828] = LOBYTE(STACK[0x6F6E]);
  STACK[0x2798] = LOBYTE(STACK[0x6F6F]);
  STACK[0x2848] = LOBYTE(STACK[0x6F70]);
  LODWORD(STACK[0x1D18]) = LOBYTE(STACK[0x6F71]);
  LODWORD(STACK[0x1D14]) = LOBYTE(STACK[0x6F72]);
  STACK[0x3D30] = LOBYTE(STACK[0x6F73]);
  LODWORD(STACK[0x178C]) = LOBYTE(STACK[0x6F74]);
  STACK[0x2890] = LOBYTE(STACK[0x6F75]);
  LODWORD(STACK[0x16CC]) = LOBYTE(STACK[0x6F76]);
  STACK[0x23C8] = LOBYTE(STACK[0x6F77]);
  STACK[0x2668] = LOBYTE(STACK[0x6F78]);
  STACK[0x2DE0] = LOBYTE(STACK[0x6F79]);
  LODWORD(STACK[0x1EF4]) = LOBYTE(STACK[0x6F7A]);
  LODWORD(STACK[0x16C8]) = LOBYTE(STACK[0x6F7B]);
  STACK[0x2FE0] = LOBYTE(STACK[0x6F7C]);
  STACK[0x3520] = LOBYTE(STACK[0x6F7D]);
  STACK[0x3C68] = LOBYTE(STACK[0x6F7E]);
  LODWORD(STACK[0x1F74]) = LOBYTE(STACK[0x6F7F]);
  STACK[0x2C30] = LOBYTE(STACK[0x6F80]);
  LODWORD(STACK[0x1C60]) = LOBYTE(STACK[0x6F81]);
  STACK[0x2F20] = LOBYTE(STACK[0x6F82]);
  LODWORD(STACK[0x1D1C]) = LOBYTE(STACK[0x6F83]);
  STACK[0x22F0] = LOBYTE(STACK[0x6F84]);
  LODWORD(STACK[0x1D10]) = LOBYTE(STACK[0x6F85]);
  LODWORD(STACK[0x17A8]) = LOBYTE(STACK[0x6F86]);
  LODWORD(STACK[0x1D28]) = LOBYTE(STACK[0x6F87]);
  LODWORD(STACK[0x1D0C]) = LOBYTE(STACK[0x6F88]);
  LODWORD(STACK[0x1788]) = LOBYTE(STACK[0x6F8A]);
  STACK[0x1D00] = LOBYTE(STACK[0x6F8B]);
  STACK[0x2E60] = LOBYTE(STACK[0x6F8C]);
  STACK[0x2810] = LOBYTE(STACK[0x6F8D]);
  STACK[0x2800] = LOBYTE(STACK[0x6F8E]);
  LODWORD(STACK[0x1CEC]) = LOBYTE(STACK[0x6F8F]);
  LODWORD(STACK[0x21CC]) = LOBYTE(STACK[0x6F90]);
  STACK[0x3718] = LOBYTE(STACK[0x6F91]);
  STACK[0x2C60] = LOBYTE(STACK[0x6F92]);
  STACK[0x2350] = LOBYTE(STACK[0x6F93]);
  STACK[0x1CF8] = LOBYTE(STACK[0x6F94]);
  LODWORD(STACK[0x1EDC]) = LOBYTE(STACK[0x6F95]);
  LODWORD(STACK[0x1FE8]) = LOBYTE(STACK[0x6F96]);
  STACK[0x24C8] = LOBYTE(STACK[0x6F97]);
  STACK[0x1CF0] = LOBYTE(STACK[0x6F98]);
  LODWORD(STACK[0x1CE4]) = LOBYTE(STACK[0x6F99]);
  LODWORD(STACK[0x1CE8]) = LOBYTE(STACK[0x6F9A]);
  STACK[0x2778] = LOBYTE(STACK[0x6F9B]);
  LODWORD(STACK[0x1FE4]) = LOBYTE(STACK[0x6F9C]);
  STACK[0x3600] = LOBYTE(STACK[0x6F9D]);
  LODWORD(STACK[0x1ED0]) = LOBYTE(STACK[0x6F9E]);
  LODWORD(STACK[0x1D08]) = LOBYTE(STACK[0x6F9F]);
  STACK[0x1EC0] = LOBYTE(STACK[0x6FA0]);
  STACK[0x2208] = LOBYTE(STACK[0x6FA1]);
  STACK[0x3BD0] = LOBYTE(STACK[0x6FA2]);
  STACK[0x3A68] = LOBYTE(STACK[0x6FA3]);
  STACK[0x2210] = LOBYTE(STACK[0x6FA4]);
  STACK[0x32A8] = LOBYTE(STACK[0x6FA5]);
  LODWORD(STACK[0x1ED8]) = LOBYTE(STACK[0x6FA6]);
  LODWORD(STACK[0x16C4]) = LOBYTE(STACK[0x6FA7]);
  STACK[0x2EF8] = LOBYTE(STACK[0x6FA8]);
  STACK[0x2C58] = LOBYTE(STACK[0x6FA9]);
  STACK[0x3048] = LOBYTE(STACK[0x6FAA]);
  STACK[0x3168] = LOBYTE(STACK[0x6FAB]);
  STACK[0x2360] = LOBYTE(STACK[0x6FAC]);
  STACK[0x25D0] = LOBYTE(STACK[0x6FAD]);
  STACK[0x2F00] = LOBYTE(STACK[0x6FAE]);
  STACK[0x2FC0] = LOBYTE(STACK[0x6FAF]);
  STACK[0x2CC8] = LOBYTE(STACK[0x6FB0]);
  STACK[0x22D0] = LOBYTE(STACK[0x6FB1]);
  LODWORD(STACK[0x1ED4]) = LOBYTE(STACK[0x6FB2]);
  LODWORD(STACK[0x1CE0]) = LOBYTE(STACK[0x6FB3]);
  STACK[0x1CD8] = LOBYTE(STACK[0x6FB4]);
  STACK[0x2A68] = LOBYTE(STACK[0x6FB5]);
  STACK[0x3CA0] = LOBYTE(STACK[0x6FB6]);
  STACK[0x23C0] = LOBYTE(STACK[0x6FB7]);
  STACK[0x2FE8] = LOBYTE(STACK[0x6FB8]);
  STACK[0x2300] = LOBYTE(STACK[0x6FB9]);
  LODWORD(STACK[0x1ECC]) = LOBYTE(STACK[0x6FBA]);
  STACK[0x2F10] = LOBYTE(STACK[0x6FBB]);
  STACK[0x2398] = LOBYTE(STACK[0x6FBC]);
  STACK[0x3390] = LOBYTE(STACK[0x6FBD]);
  STACK[0x1EB8] = LOBYTE(STACK[0x6FBE]);
  STACK[0x3630] = LOBYTE(STACK[0x6FBF]);
  STACK[0x2A40] = LOBYTE(STACK[0x6FC0]);
  STACK[0x1CD0] = LOBYTE(STACK[0x6FC1]);
  LODWORD(STACK[0x1F70]) = LOBYTE(STACK[0x6FC2]);
  STACK[0x3490] = LOBYTE(STACK[0x6FC4]);
  STACK[0x2E98] = LOBYTE(STACK[0x6FC5]);
  STACK[0x2670] = LOBYTE(STACK[0x6FC6]);
  STACK[0x1EB0] = LOBYTE(STACK[0x6FC7]);
  STACK[0x2D28] = LOBYTE(STACK[0x6FC8]);
  STACK[0x27B0] = LOBYTE(STACK[0x6FC9]);
  STACK[0x2C48] = LOBYTE(STACK[0x6FCA]);
  STACK[0x2730] = LOBYTE(STACK[0x6FCB]);
  STACK[0x2598] = LOBYTE(STACK[0x6FCC]);
  STACK[0x1CC0] = LOBYTE(STACK[0x6FCD]);
  STACK[0x1CB8] = LOBYTE(STACK[0x6FCE]);
  STACK[0x2EB0] = LOBYTE(STACK[0x6FCF]);
  STACK[0x28D0] = LOBYTE(STACK[0x6FD0]);
  STACK[0x3110] = LOBYTE(STACK[0x6FD1]);
  STACK[0x3720] = LOBYTE(STACK[0x6FD2]);
  STACK[0x39A0] = LOBYTE(STACK[0x6FD3]);
  STACK[0x32C8] = LOBYTE(STACK[0x6FD4]);
  STACK[0x2FB8] = LOBYTE(STACK[0x6FD5]);
  LODWORD(STACK[0x1CCC]) = LOBYTE(STACK[0x6FD6]);
  STACK[0x2320] = LOBYTE(STACK[0x6FD7]);
  LODWORD(STACK[0x1CB4]) = LOBYTE(STACK[0x6FD8]);
  STACK[0x1AD8] = LOBYTE(STACK[0x6FD9]);
  STACK[0x1CA0] = LOBYTE(STACK[0x6FDA]);
  STACK[0x32B0] = LOBYTE(STACK[0x6FDB]);
  LODWORD(STACK[0x16C0]) = LOBYTE(STACK[0x6FDC]);
  STACK[0x2820] = LOBYTE(STACK[0x6FDD]);
  STACK[0x2878] = LOBYTE(STACK[0x6FDE]);
  STACK[0x1C40] = LOBYTE(STACK[0x6FDF]);
  STACK[0x2CD0] = LOBYTE(STACK[0x6FE0]);
  LODWORD(STACK[0x3118]) = LOBYTE(STACK[0x6FE1]);
  LODWORD(STACK[0x16BC]) = LOBYTE(STACK[0x6FE2]);
  LODWORD(STACK[0x16B8]) = LOBYTE(STACK[0x6FE3]);
  STACK[0x1CA8] = LOBYTE(STACK[0x6FE4]);
  STACK[0x3100] = LOBYTE(STACK[0x6FE5]);
  LODWORD(STACK[0x1C9C]) = LOBYTE(STACK[0x6FE6]);
  LODWORD(STACK[0x3638]) = LOBYTE(STACK[0x6FE7]);
  STACK[0x3828] = LOBYTE(STACK[0x6FE8]);
  STACK[0x33F8] = LOBYTE(STACK[0x6FE9]);
  STACK[0x26F0] = LOBYTE(STACK[0x6FEA]);
  STACK[0x37C0] = LOBYTE(STACK[0x6FEB]);
  LODWORD(STACK[0x3AA0]) = STACK[0x6FEC];
  LODWORD(STACK[0x3AE8]) = STACK[0x6FF0];
  STACK[0x22D8] = LODWORD(STACK[0x6FF4]);
  STACK[0x2238] = LODWORD(STACK[0x6FF8]);
  LODWORD(STACK[0x32D0]) = STACK[0x6FFC];
  LODWORD(STACK[0x39C0]) = STACK[0x7000];
  LODWORD(STACK[0x2078]) = STACK[0x7004];
  LODWORD(STACK[0x17DC]) = STACK[0x7008];
  STACK[0x3840] = LODWORD(STACK[0x700C]);
  STACK[0x3960] = LODWORD(STACK[0x7010]);
  LODWORD(STACK[0x3760]) = STACK[0x7014];
  LODWORD(STACK[0x2428]) = STACK[0x7018];
  LODWORD(STACK[0x1BE0]) = STACK[0x701C];
  LODWORD(STACK[0x2144]) = STACK[0x7020];
  LODWORD(STACK[0x268C]) = STACK[0x7024];
  LODWORD(STACK[0x28CC]) = STACK[0x7028];
  LODWORD(STACK[0x3830]) = STACK[0x702C];
  LODWORD(STACK[0x2234]) = STACK[0x7030];
  LODWORD(STACK[0x3368]) = STACK[0x7034];
  STACK[0x2100] = LODWORD(STACK[0x7038]);
  LODWORD(STACK[0x366C]) = STACK[0x703C];
  STACK[0x3980] = LODWORD(STACK[0x7040]);
  LODWORD(STACK[0x2134]) = STACK[0x7044];
  LODWORD(STACK[0x20AC]) = STACK[0x7048];
  STACK[0x38B8] = LODWORD(STACK[0x704C]);
  LODWORD(STACK[0x3888]) = STACK[0x7050];
  STACK[0x3AD8] = LODWORD(STACK[0x7054]);
  STACK[0x3D58] = LODWORD(STACK[0x7058]);
  LODWORD(STACK[0x37F8]) = STACK[0x705C];
  LODWORD(STACK[0x1834]) = STACK[0x7060];
  LODWORD(STACK[0x3688]) = STACK[0x7064];
  LODWORD(STACK[0x2080]) = STACK[0x7068];
  LODWORD(STACK[0x20A0]) = STACK[0x706C];
  STACK[0x23B0] = LODWORD(STACK[0x7070]);
  STACK[0x3700] = LODWORD(STACK[0x7074]);
  LODWORD(STACK[0x3558]) = STACK[0x7078];
  LODWORD(STACK[0x1B5C]) = STACK[0x707C];
  STACK[0x1BC0] = LODWORD(STACK[0x7080]);
  STACK[0x37E8] = LODWORD(STACK[0x7084]);
  LODWORD(STACK[0x2C20]) = STACK[0x7088];
  LODWORD(STACK[0x1C98]) = STACK[0x708C];
  STACK[0x3870] = LODWORD(STACK[0x7090]);
  STACK[0x1B60] = LODWORD(STACK[0x7094]);
  STACK[0x2148] = LODWORD(STACK[0x7098]);
  STACK[0x3E40] = LODWORD(STACK[0x709C]);
  STACK[0x37B8] = LODWORD(STACK[0x70A0]);
  STACK[0x1B40] = LODWORD(STACK[0x70A4]);
  STACK[0x34D8] = LODWORD(STACK[0x70A8]);
  STACK[0x3798] = LODWORD(STACK[0x70AC]);
  LODWORD(STACK[0x3D90]) = STACK[0x70B0];
  LODWORD(STACK[0x3790]) = STACK[0x70B4];
  LODWORD(STACK[0x20B8]) = STACK[0x70B8];
  LODWORD(STACK[0x34D4]) = STACK[0x70BC];
  STACK[0x39F0] = LODWORD(STACK[0x70C0]);
  STACK[0x2038] = LODWORD(STACK[0x70C4]);
  STACK[0x3850] = LODWORD(STACK[0x70C8]);
  LODWORD(STACK[0x31B0]) = STACK[0x70CC];
  STACK[0x3540] = LODWORD(STACK[0x70D0]);
  STACK[0x3AE0] = LODWORD(STACK[0x70D4]);
  LODWORD(STACK[0x3B20]) = STACK[0x70D8];
  LODWORD(STACK[0x3CE8]) = STACK[0x70DC];
  LODWORD(STACK[0x3710]) = STACK[0x70E0];
  LODWORD(STACK[0x3A28]) = STACK[0x70E4];
  STACK[0x17D0] = LODWORD(STACK[0x70E8]);
  STACK[0x3CC8] = LODWORD(STACK[0x70EC]);
  STACK[0x3890] = LODWORD(STACK[0x70F0]);
  LODWORD(STACK[0x3D70]) = STACK[0x70F4];
  LODWORD(STACK[0x1BE4]) = STACK[0x70F8];
  LODWORD(STACK[0x16B4]) = STACK[0x70FC];
  STACK[0x2370] = LODWORD(STACK[0x7100]);
  STACK[0x3E38] = LODWORD(STACK[0x7104]);
  STACK[0x1FD8] = LODWORD(STACK[0x7108]);
  STACK[0x3338] = LODWORD(STACK[0x710C]);
  STACK[0x3620] = LODWORD(STACK[0x7110]);
  LODWORD(STACK[0x2704]) = STACK[0x7114];
  STACK[0x3B08] = LODWORD(STACK[0x7118]);
  LODWORD(STACK[0x3D38]) = STACK[0x711C];
  LODWORD(STACK[0x2424]) = STACK[0x7120];
  LODWORD(STACK[0x20F0]) = STACK[0x7124];
  LODWORD(STACK[0x351C]) = STACK[0x7128];
  LODWORD(STACK[0x37A0]) = STACK[0x712C];
  LODWORD(STACK[0x20E8]) = STACK[0x7130];
  LODWORD(STACK[0x2030]) = STACK[0x7134];
  LODWORD(STACK[0x3B00]) = STACK[0x7138];
  STACK[0x3D98] = LODWORD(STACK[0x713C]);
  STACK[0x3D80] = LODWORD(STACK[0x7140]);
  STACK[0x3698] = LODWORD(STACK[0x7144]);
  STACK[0x3880] = LODWORD(STACK[0x7148]);
  LODWORD(STACK[0x2924]) = STACK[0x714C];
  LODWORD(STACK[0x21F4]) = STACK[0x7150];
  LODWORD(STACK[0x3860]) = STACK[0x7154];
  STACK[0x33C0] = LODWORD(STACK[0x7158]);
  LODWORD(STACK[0x3B18]) = STACK[0x715C];
  STACK[0x38B0] = LODWORD(STACK[0x7160]);
  STACK[0x33A8] = LODWORD(STACK[0x7164]);
  LODWORD(STACK[0x3958]) = STACK[0x7168];
  STACK[0x3900] = LODWORD(STACK[0x716C]);
  STACK[0x1C88] = LODWORD(STACK[0x7170]);
  STACK[0x2138] = LODWORD(STACK[0x7174]);
  STACK[0x3928] = LODWORD(STACK[0x7178]);
  STACK[0x3820] = LODWORD(STACK[0x717C]);
  LODWORD(STACK[0x39A8]) = STACK[0x7180];
  LODWORD(STACK[0x3488]) = STACK[0x7184];
  STACK[0x3998] = LODWORD(STACK[0x7188]);
  STACK[0x2228] = LODWORD(STACK[0x718C]);
  STACK[0x3318] = LODWORD(STACK[0x7190]);
  LODWORD(STACK[0x3930]) = STACK[0x7194];
  LODWORD(STACK[0x3AF0]) = STACK[0x7198];
  STACK[0x36F8] = LODWORD(STACK[0x719C]);
  LODWORD(STACK[0x2158]) = STACK[0x71A0];
  STACK[0x21F8] = LODWORD(STACK[0x71A4]);
  LODWORD(STACK[0x3808]) = STACK[0x71A8];
  STACK[0x3D88] = LODWORD(STACK[0x71AC]);
  LODWORD(STACK[0x195C]) = STACK[0x71B0];
  LODWORD(STACK[0x20B0]) = STACK[0x71B4];
  LODWORD(STACK[0x3CE0]) = 24;
  STACK[0x3E18] = v43;
  STACK[0x1AC0] = STACK[0x71B8];
  return v48();
}

uint64_t sub_100C53438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W6>, int a4@<W8>)
{
  STACK[0x36C0] = 0;
  STACK[0x38B0] = 0;
  STACK[0x37A8] = 0;
  STACK[0x38B8] = 0;
  STACK[0x36E8] = 0;
  STACK[0x3878] = 0;
  STACK[0x3650] = *(v6 + LODWORD(STACK[0x3798]));
  LODWORD(STACK[0x3798]) = ((5 * (a4 ^ 0x29B9)) ^ (2 * a4) ^ 0x430A) + a3;
  v7 = *(v4 + 8 * (a4 ^ (14 * (v5 != 14))));
  LODWORD(STACK[0x3D58]) = 14;
  LODWORD(STACK[0x3CC8]) = 128;
  return v7(a1, a2, 0);
}

uint64_t sub_100C53504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v18 = a17 < 0x4E3FB3B3;
  v19 = LODWORD(STACK[0x244]) - 461107150;
  v20 = v18 ^ (v19 < ((v17 - 1495964291) & 0x592AABCBu) + 1312787248);
  v21 = v19 < a17;
  if (!v20)
  {
    v18 = v21;
  }

  return (*(a2 + 8 * (!v18 | (4 * !v18) | v17)))(a1, LODWORD(STACK[0x244]) + 789067618 + (v17 ^ 0xD0F7DF94));
}

uint64_t sub_100C53608@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X7>, int a8@<W8>)
{
  STACK[0x3A70] = a3;
  LODWORD(STACK[0x3558]) = v15;
  STACK[0x3588] = v14;
  STACK[0x3568] = v13;
  STACK[0x3840] = a7;
  STACK[0x3570] = a6;
  LODWORD(STACK[0x3848]) = v12;
  LODWORD(STACK[0x35D0]) = v11;
  STACK[0x3578] = a4;
  STACK[0x35D8] = a2;
  STACK[0x3580] = a1;
  LODWORD(STACK[0x3850]) = v10;
  LODWORD(STACK[0x3590]) = v9;
  STACK[0x37C8] = a5;
  LODWORD(STACK[0x34A0]) = v8;
  LODWORD(STACK[0x3AD8]) = (a8 - 1049196878) & 0x3E897FB3;
  return (*(v16 + 8 * a8))();
}

uint64_t sub_100C5366C(__n128 a1, __n128 a2)
{
  *&STACK[0x590] = a2;
  *&STACK[0x5B0] = a1;
  v4 = (*(v3 + 8 * (v2 ^ 0x813)))(112);
  STACK[0x1760] = v4 + 0x55A8D952E5D4689ELL;
  return (*(v3 + 8 * ((120 * (v4 != 0)) ^ v2)))();
}

uint64_t sub_100C53750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  *(v64 + v60 + v66 + 0x14A9D2B034D484BALL) = 0;
  (*(v63 + 8 * (v62 ^ 0x73E11B8)))();
  LODWORD(a26) = 0;
  *v65 = 0x6C722E646B736CLL;
  *(v65 + 9) = v61;
  *(v65 + 12) = 0;
  return (*(v63 + 8 * (v62 ^ 0x73E696D ^ (10119 * (v62 < 0xD7F95E62)))))(2305624246, 16295, 0x1EF2BFD8ALL, 0xD5CB96EBF795FEC5, 0x2A346914086A013BLL, 1391039517, 2018409467, 2276551197, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a59 - 16, a25, a26, a27, a28, a29, a30, v66, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59 - 16, a60, v66);
}

uint64_t sub_100C538F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x3D88]) = 0;
  LODWORD(STACK[0x3D60]) = 0;
  v9 = v4 << (v3 ^ 0xAA);
  v10 = *(v5 + 8 * v3);
  v11 = STACK[0x34D4];
  LODWORD(STACK[0x1BE4]) = *(STACK[0x1210] + 4 * LODWORD(STACK[0x34D4]) - 4);
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
  LODWORD(STACK[0x37A0]) = STACK[0x36B8];
  LODWORD(STACK[0x12B4]) = v6;
  LODWORD(STACK[0x2500]) = STACK[0x3AE8];
  LODWORD(STACK[0x1C20]) = STACK[0x2B58];
  STACK[0x3698] = v8;
  STACK[0x3420] = LODWORD(STACK[0x2B78]);
  LODWORD(STACK[0x21F4]) = STACK[0x3AE0];
  LODWORD(STACK[0x1BA0]) = STACK[0x2B90];
  LODWORD(STACK[0x1BC8]) = STACK[0x39E8];
  LODWORD(STACK[0x3488]) = v7;
  LODWORD(STACK[0x2630]) = STACK[0x2B50];
  STACK[0x2228] = LODWORD(STACK[0x2B68]);
  STACK[0x3318] = LODWORD(STACK[0x2B98]);
  LODWORD(STACK[0x2158]) = a3;
  LODWORD(STACK[0x1B50]) = STACK[0x3D38];
  LODWORD(STACK[0x3310]) = STACK[0x3D30];
  LODWORD(STACK[0x3308]) = STACK[0x3D28];
  LODWORD(STACK[0x3300]) = STACK[0x3D20];
  LODWORD(STACK[0x3D68]) = 2;
  LODWORD(STACK[0x31B0]) = v9;
  LODWORD(STACK[0x3E18]) = v11;
  return v10(a1, a2, 1);
}

uint64_t sub_100C53A74@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 + a1;
  v7 = v3 - 1;
  v8 = __ROR8__((v1 + v7) & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = (0x31F49ABE1B6CA29CLL - v8) & 0x7169F5B420CD0109 | (v8 + 0x4E0B6541E4935D63) & 0x8C960A4BDF32FEF6;
  v10 = __ROR8__(v9 ^ 0x9CD1AB2504F9B18DLL, 8);
  v9 ^= 0xEC8A812A20635A97;
  v11 = v10 + v9;
  v12 = __ROR8__((v6 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((2 * v12 + 0x1C16CA83C926BAC6) & 0x57F377A3EEDCEB8ALL) - v12 - 0x7A052113DC01D329;
  v14 = v13 ^ 0x3BBE1ABF2CA53ABELL;
  v13 ^= 0x4BE530B0083FD1A4uLL;
  v15 = (__ROR8__(v14, 8) + v13) ^ 0x1F7B92942DEF21EFLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * v11) & 0x9A16AE7FC68DFA48) - v11 - 0x4D0B573FE346FD25) ^ 0xAD8F3A5431562334;
  v19 = v18 ^ __ROR8__(v9, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x1C02DF5B258263EDLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x51FC477E33DE4033;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x224C09CA440C0C0BLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xA199F9AE5F876A45;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v5;
  v29 = (0x448E86197ADDA447 - ((v17 + v16) | 0x448E86197ADDA447) + ((v17 + v16) | 0xBB7179E685225BB8)) ^ 0xA773A6BDA0A03855;
  v30 = v29 ^ __ROR8__(v16, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x51FC477E33DE4033;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__(v28, 8) + (v28 ^ __ROR8__(v27, 61));
  v35 = __ROR8__((v33 + v32 - ((2 * (v33 + v32)) & 0x7AECF1A2A95408F8) + 0x3D7678D154AA047CLL) ^ 0x1F3A711B10A60877, 8);
  v36 = (v33 + v32 - ((2 * (v33 + v32)) & 0x7AECF1A2A95408F8) + 0x3D7678D154AA047CLL) ^ 0x1F3A711B10A60877 ^ __ROR8__(v32, 61);
  v37 = (((2 * (v35 + v36)) | 0xFF035EADE913ABC2) - (v35 + v36) - 0x7F81AF56F489D5E1) ^ 0xDE1856F8AB0EBFA4;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v5;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  *(v6 + 9) = (((0xDF90A477B1CC4211 - ((v41 + v40) | 0xDF90A477B1CC4211) + ((v41 + v40) | 0x206F5B884E33BDEELL)) ^ 0x493E2725494BAC6DLL) >> (8 * ((v6 + 9) & 7))) ^ ((v34 ^ 0x69517CAD07781183) >> (8 * ((v1 + v7) & 7))) ^ *(v1 + v7);
  return (*(v4 + 8 * ((30 * (v7 == 0)) ^ v2)))();
}

uint64_t sub_100C53E20(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57)
{
  LODWORD(STACK[0x3D80]) = 0;
  LODWORD(STACK[0x3D70]) = 0;
  LODWORD(STACK[0x3D58]) = 0;
  v58 = *(v57 + 8 * (a2 - 13466));
  LODWORD(STACK[0x3CF0]) = 79;
  LODWORD(STACK[0x3D88]) = 2;
  STACK[0x3D40] = a57;
  v59 = STACK[0x1BE8];
  STACK[0x3D78] = STACK[0x1BE8];
  STACK[0x3B20] = a57;
  STACK[0x3B18] = v59;
  STACK[0x3818] = LODWORD(STACK[0x3988]);
  LODWORD(STACK[0x1204]) = STACK[0x3820];
  LODWORD(STACK[0x2134]) = STACK[0x36B8];
  LODWORD(STACK[0x3688]) = STACK[0x2B30];
  LODWORD(STACK[0x3858]) = STACK[0x2B40];
  LODWORD(STACK[0x3B00]) = STACK[0x2B88];
  LODWORD(STACK[0x1954]) = STACK[0x2B70];
  LODWORD(STACK[0x1A78]) = STACK[0x3268];
  LODWORD(STACK[0x3AE8]) = STACK[0x3998];
  LODWORD(STACK[0x3AE0]) = STACK[0x2B60];
  LODWORD(STACK[0x3810]) = STACK[0x2B28];
  LODWORD(STACK[0x3D38]) = STACK[0x221C];
  LODWORD(STACK[0x3D30]) = STACK[0x35FC];
  LODWORD(STACK[0x3D28]) = STACK[0x3970];
  LODWORD(STACK[0x3D20]) = STACK[0x35F8];
  return v58();
}

uint64_t sub_100C53EF8@<X0>(uint64_t a1@<X8>)
{
  v4 = (STACK[0x3B50] + (a1 | v2));
  v5 = *v4;
  v6 = v4[1];
  v7 = (STACK[0x3DA8] + a1);
  *v7 = v5;
  v7[1] = v6;
  return (*(v3 + 8 * ((62 * (a1 != 32)) ^ v1)))();
}

uint64_t sub_100C541D0()
{
  v4 = STACK[0x3D18];
  v4[175] = v2;
  v5 = v2 >> 8;
  v6 = STACK[0x3E18];
  v4[173] = v2 >> (v1 ^ 0xD5);
  v7 = v2 >> ((v1 ^ 0x61) + 116);
  LODWORD(STACK[0x3D58]) = v5;
  v4[174] = v5;
  LODWORD(STACK[0x3D90]) = v7;
  v4[172] = v7;
  return (*(v3 + 8 * ((9007 * (v0 < v6)) ^ v1)))();
}

uint64_t sub_100C54244(uint64_t a1, uint64_t a2, int a3)
{
  v5.n128_u64[0] = 0xF0F0F0F0F0F0F0FLL;
  v5.n128_u64[1] = 0xF0F0F0F0F0F0F0FLL;
  return (*(v4 + 8 * (a3 + v3 - 155)))(v5);
}

uint64_t sub_100C54474@<X0>(int a1@<W8>)
{
  v4 = LODWORD(STACK[0x3E18]) > v1;
  v5 = STACK[0x3B38];
  *(v5 + 2035) = bswap32(v2) >> 16;
  *(v5 + 2034) = BYTE2(v2);
  *(v5 + 2033) = v2 >> (((a1 - 94) & 0xFD) - 97);
  return (*(v3 + 8 * ((v4 | (4 * v4)) ^ a1)))();
}

uint64_t sub_100C544D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = 2 * (((a31 ^ 0x86F7C5FD) + 157055383) ^ a31 ^ ((a31 ^ 0x5562F1BA) + 1523142098) ^ ((a31 ^ 0x6D77FFFF) + 1658602389) ^ ((a31 ^ 0x4EB6882C) + 293714871 + v72 - 162532697));
  v79 = (a72 + (((v76 ^ 0xE7D83F62) + 405258398) ^ ((v76 ^ 0xF1EA674B) + 236296373) ^ ((v76 ^ 0x3FE78A44) - 1072138820)) - (((v78 ^ 0x6E892CB4) + 1289025808) ^ ((v78 ^ 0xA4C78F43) - 2036704519) ^ ((v78 ^ 0x2AE624DF) + 146534757))) * v75 - 1264121710;
  v80 = v79 - ((((v79 * v73) >> 32) + ((v79 - ((v79 * v73) >> 32)) >> 1)) >> 9) * v74;
  *(v77 + v80) ^= 0x80u;
  return (*(STACK[0x200] + 8 * (v72 ^ 0x394B881E ^ (6720 * (v72 < 0xC29A2803)))))(a1, a68);
}

uint64_t sub_100C54698@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x3D48]) = 0;
  v3 = STACK[0x3D58];
  v4 = LODWORD(STACK[0x3D58]) >> ((v1 ^ 0x7E) + 42);
  v5 = STACK[0x3B38];
  v5[1908] = STACK[0x3D58];
  LODWORD(STACK[0x39A0]) = v4;
  v5[1907] = v4;
  v5[1906] = BYTE2(v3);
  v5[1905] = HIBYTE(v3);
  return (*(v2 + 8 * ((21709 * (a1 < LODWORD(STACK[0x3E18]))) ^ v1)))();
}

uint64_t sub_100C547A0()
{
  LODWORD(STACK[0x93C]) = v0;
  v3 = SLOWORD(STACK[0x193E]);
  STACK[0x1468] = STACK[0x1940];
  return (*(v2 + 8 * (((v3 == -2993) * ((v1 - 1211069686) ^ 0x1B)) ^ 0x1813)))();
}

uint64_t sub_100C54910()
{
  LODWORD(STACK[0xF1C]) = v1;
  STACK[0x9D0] = *(v2 + 8 * v0);
  return (*(v2 + 8 * (((v0 + 23175) ^ 0x4804) + v0)))();
}

uint64_t sub_100C54994@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v15 = *(v8 + 40);
  STACK[0x3DB8] = *(v8 + 32);
  STACK[0x3DA8] = v15;
  STACK[0x3DA0] = *(v8 + 48);
  v16 = STACK[0x3C58];
  LODWORD(v15) = (LODWORD(STACK[0x3C58]) - 26395) | 0x2000;
  STACK[0x3E88] = v13;
  v17 = *(a8 + 40);
  STACK[0x3F00] = STACK[0x3E20];
  LODWORD(STACK[0x3B10]) = v15;
  LODWORD(v15) = v15 ^ 0x3148;
  v18 = STACK[0x3E40];
  LODWORD(STACK[0x3D80]) = v15;
  LODWORD(v18) = v15 + v18;
  STACK[0x3D90] = v17;
  LODWORD(STACK[0x3D88]) = v18;
  v19 = (v18 + v17);
  STACK[0x3A28] = v19;
  v20 = (v19 + 31) & 0xFFFFFFE0;
  v21 = *(v12 + 8 * (v16 ^ 0xB5Du));
  STACK[0x3B58] = v20;
  STACK[0x39F8] = v8;
  LODWORD(STACK[0x3A48]) = v9;
  LODWORD(STACK[0x3A58]) = v10;
  LODWORD(STACK[0x3A50]) = v11;
  LODWORD(STACK[0x3A40]) = a1;
  LODWORD(STACK[0x3A20]) = a2;
  LODWORD(STACK[0x3A18]) = a3;
  LODWORD(STACK[0x3A10]) = a4;
  LODWORD(STACK[0x3A08]) = a5;
  LODWORD(STACK[0x3A04]) = a6;
  LODWORD(STACK[0x3A38]) = a7;
  LODWORD(STACK[0x3A30]) = v14;
  v22 = v21();
  STACK[0x3EC8] = v22;
  STACK[0x3DC0] = v22;
  return (*(v12 + 8 * ((214 * (v22 == 0)) ^ LODWORD(STACK[0x3C58]))))();
}

uint64_t sub_100C54A84()
{
  v1 = STACK[0x3E18];
  LODWORD(STACK[0x3E40]) = (STACK[0x3E18] + 126268321) & 0xF8797FEF;
  v2 = *(v0 + 8 * v1);
  v3 = STACK[0x31C0];
  LODWORD(STACK[0x3D90]) = STACK[0x3588];
  return v2(v3);
}

uint64_t sub_100C54AE0@<X0>(char a1@<W2>, int a2@<W8>)
{
  LOBYTE(STACK[0x763F]) = STACK[0x3DB8];
  LOBYTE(STACK[0x7632]) = STACK[0x3D40];
  LOBYTE(STACK[0x7630]) = STACK[0x3D10];
  LOBYTE(STACK[0x7631]) = STACK[0x3D30];
  LOBYTE(STACK[0x7639]) = v4;
  LOBYTE(STACK[0x763B]) = STACK[0x3E00];
  LOBYTE(STACK[0x7634]) = STACK[0x3D38];
  LOBYTE(STACK[0x7635]) = STACK[0x3D78];
  LOBYTE(STACK[0x7636]) = STACK[0x3D88];
  LOBYTE(STACK[0x7633]) = STACK[0x3D48];
  LOBYTE(STACK[0x763A]) = STACK[0x3DB0];
  LOBYTE(STACK[0x7638]) = STACK[0x3CF8];
  LOBYTE(STACK[0x7637]) = STACK[0x3D28];
  LOBYTE(STACK[0x763C]) = a1;
  STACK[0x3DC8] = (a2 + 9641);
  LOBYTE(STACK[0x763D]) = STACK[0x3DE0];
  LOBYTE(STACK[0x7641]) = STACK[0x3E08];
  LOBYTE(STACK[0x763E]) = STACK[0x3DF0];
  LOBYTE(STACK[0x7642]) = STACK[0x3E18];
  LOBYTE(STACK[0x7644]) = STACK[0x3DE8];
  LOBYTE(STACK[0x7646]) = STACK[0x3DD8];
  LOBYTE(STACK[0x7645]) = STACK[0x3E38];
  LOBYTE(STACK[0x764A]) = STACK[0x3D08];
  LOBYTE(STACK[0x7647]) = STACK[0x3D70];
  LOBYTE(STACK[0x7648]) = STACK[0x3D18];
  LOBYTE(STACK[0x7643]) = STACK[0x3D68];
  LOBYTE(STACK[0x7654]) = STACK[0x3D00];
  LOBYTE(STACK[0x764D]) = STACK[0x3DF8];
  LOBYTE(STACK[0x7640]) = STACK[0x3E10];
  LOBYTE(STACK[0x7649]) = STACK[0x3DA0];
  LOBYTE(STACK[0x764C]) = STACK[0x3D50];
  LOBYTE(STACK[0x764B]) = STACK[0x3D80];
  LOBYTE(STACK[0x764E]) = STACK[0x3D90];
  LOBYTE(STACK[0x7656]) = v2;
  LOBYTE(STACK[0x7651]) = STACK[0x3D58];
  LOBYTE(STACK[0x7650]) = STACK[0x3D20];
  LOBYTE(STACK[0x7652]) = STACK[0x3D60];
  LOBYTE(STACK[0x764F]) = STACK[0x3DA8];
  v5 = LODWORD(STACK[0x3CD8]) > 0xA;
  LOBYTE(STACK[0x7653]) = STACK[0x3D98];
  v6 = v5;
  LOBYTE(STACK[0x7655]) = STACK[0x3DC0];
  LOBYTE(STACK[0x7657]) = STACK[0x3DD0];
  return (*(v3 + 8 * ((((a2 + 11040) ^ (a2 - 6262)) * v6) ^ a2)))();
}

uint64_t sub_100C54C98()
{
  v2 = *(*STACK[0x3E40] + (STACK[0x1470] & *v0));
  v3 = (v2 + STACK[0x1478]) ^ 0xC2AF3EAA3FF1B8E4;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = (__ROR8__(v3, 8) + v4) ^ 0x65F254DD188DB4FCLL;
  v6 = v5 ^ __ROR8__(v4, 61);
  v7 = (__ROR8__(v5, 8) + v6) ^ 0x6FF046966119128DLL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0xA1B29DC5D776132BLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xEF042041F5E548ECLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xD8C7B31FCA19D9DELL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0x2F2128DC233C9138) - (v15 + v14) - 0x1790946E119E489DLL) ^ 0xBC3A6ABF64D074ECLL;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (LOBYTE(STACK[0x3F17]) ^ (LOBYTE(STACK[0x458F]) - ((2 * LOBYTE(STACK[0x458F])) & 0x66) - 77)) ^ 0xB3u ^ (((((2 * (v18 + v17)) & 0xA30C0522723C1AF2) - (v18 + v17) - 0x51860291391E0D7ALL) ^ 0xC1369DD2C8E3AC66) >> STACK[0x13C8]);
  v20 = STACK[0x6C20] >> 16;
  LOBYTE(v17) = *(STACK[0x4EA0] + LOBYTE(STACK[0x4580]));
  v21 = *(STACK[0x4EA0] + v19) ^ (2 * (STACK[0x4E9F] & *(STACK[0x4EA0] + v19)));
  v22 = v21 << STACK[0x5338];
  v23 = (LOBYTE(STACK[0x4E9C]) & v21) >> STACK[0x5328];
  LOBYTE(v17) = v17 ^ (2 * (LOBYTE(STACK[0x4E9D]) & v17));
  v24 = v17 << STACK[0x5320];
  v25 = (v17 & LOBYTE(STACK[0x4E9E])) >> STACK[0x5350];
  STACK[0x4590] = STACK[0x6C30] >> 24;
  LOBYTE(STACK[0x459B]) = v20;
  LOBYTE(v25) = v25 | v24;
  LOBYTE(STACK[0x459C]) = v25;
  *(STACK[0x3D18] + 1803) = LODWORD(STACK[0x52C0]) ^ v22 ^ v25 ^ v23;
  v26 = *(v1 + 8 * (LODWORD(STACK[0x28BC]) + 8676));
  STACK[0x3F18] = STACK[0x18B0];
  STACK[0x3F08] = v26;
  return (*(v1 + 8 * (LODWORD(STACK[0x293C]) + 26042)))();
}

uint64_t sub_100C54F40()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x434C)))(32);
  STACK[0xEE8] = v2;
  return (*(v0 + 8 * (((v2 == 0) * ((((v1 - 1210362775) & 0xFFF4EFB5) + 1211077980) ^ (v1 + 1786396653) & 0x958598BD)) ^ v1)))();
}

uint64_t sub_100C54FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = __ROR8__(a5 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = *(a3 + (((a5 & 0xFFFFFFF8 ^ 0x95296848) + 1688805711 + ((2 * (a5 & 0xFFFFFFF8)) & 0x2A52D090)) & v12));
  v26 = (((STACK[0x790] + v11) & (2 * (v24 + v25))) - (v24 + v25) + v9) ^ v13;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v17 - ((v28 + v27) | v17) + ((v28 + v27) | v23)) ^ a8 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__((v17 - ((v28 + v27) | v17) + ((v28 + v27) | v23)) ^ a8, 8) + v29) ^ v14;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xE5AF1AB32EBD3CDDLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = *(a3 + (((a6 & 0x5AA1B7A8) + (a6 & 0xA55E4850 | 0x5AA1B7AA) - 1624190483) & v12));
  v36 = __ROR8__(a6 & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = (v22 - ((v35 + v36) | v22) + ((v35 + v36) | 0x58C4E717EC06FCA6)) ^ v20;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v34 + v33 - (v18 & (2 * (v34 + v33))) + v19) ^ 0xA2906EE9A51429AELL;
  v41 = v40 ^ __ROR8__(v33, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v15;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v16;
  v45 = (((2 * (v39 + v38)) | 0x6306B5CF4E23DC6) - (v39 + v38) + 0x7CE7CA51858EE11DLL) ^ 0x962A7740468174AALL;
  v46 = v45 ^ __ROR8__(v38, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v14;
  v48 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v43, 61));
  v49 = v47 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v47, 8);
  v51 = (a7 - ((v50 + v49) ^ 0x90D095D14A091C03 | a7) + ((v50 + v49) ^ 0x90D095D14A091C03 | 0x1311DFAE58B21898)) ^ 0x666E50CC3C063846;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (((2 * (v53 + v52)) & 0x2BFC7C98C4BB73AALL) - (v53 + v52) - 0x15FE3E4C625DB9D6) ^ 0x2DDC084551E7F10BLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v15;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v16;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  *v10 = (((v21 - ((v60 + v59) | v21) + ((v60 + v59) | 0x3D7FB7A746BF0EDALL)) ^ 0xFCBC7F75E27A46F2) >> (a1 & 0x38)) ^ ((v48 ^ 0xC1C3C8D2A4C54828) >> (a2 & 0x38)) ^ *v8;
  return (*(STACK[0x7A0] + 8 * ((53 * (a4 != 0)) ^ LODWORD(STACK[0x70C]))))(a1 + 8, a2 + 8);
}

uint64_t sub_100C5538C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  STACK[0x3E40] = v3;
  return (*(v2 + 8 * ((254 * (v3 != ((118 * (v1 ^ 0x5C35) - 7840) ^ 0x36A ^ ((118 * (v1 ^ 0x5C35) - 24566) | 0x4230)))) ^ (118 * (v1 ^ 0x5C35)))))();
}

uint64_t sub_100C553F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a35)
  {
    v36 = *(a1 + 32) == 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = v36;
  return (*(a2 + 8 * ((v37 * ((2588 * (v35 ^ 0x3622)) ^ 0x3CA0)) | (v35 - 5855))))();
}

uint64_t sub_100C55440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x3D20]) = 0;
  v5 = (v3 - 1055) | 0x4202u;
  v6 = (STACK[0x2F60] & 1) == 0;
  if (STACK[0x2F60])
  {
    v7 = STACK[0x2260];
  }

  else
  {
    v7 = STACK[0x3430];
  }

  if (STACK[0x2F60])
  {
    v8 = 7;
  }

  else
  {
    v8 = 8;
  }

  LODWORD(STACK[0x2BB0]) = v8;
  v9 = STACK[0x39C0];
  LODWORD(v10) = STACK[0x32D8];
  if (v6)
  {
    v10 = v10;
  }

  else
  {
    v10 = v9;
  }

  STACK[0x3540] = v10;
  v11 = STACK[0x3860];
  if (v6)
  {
    v11 = v9;
  }

  LODWORD(STACK[0x3710]) = v11;
  v12 = *(v4 + 8 * v3);
  LODWORD(STACK[0x3D98]) = 2;
  STACK[0x3D60] = v7;
  v13 = STACK[0x2618];
  STACK[0x3D88] = STACK[0x2618];
  STACK[0x3B20] = v7;
  STACK[0x3CF0] = v13;
  STACK[0x3650] = LODWORD(STACK[0x3AD8]);
  LODWORD(STACK[0x3AE0]) = STACK[0x39F0];
  v14 = STACK[0x3318];
  LODWORD(STACK[0x3E40]) = STACK[0x3318];
  LODWORD(STACK[0x3688]) = STACK[0x32E0];
  LODWORD(STACK[0x3D90]) = v9;
  LODWORD(STACK[0x3CE8]) = v14;
  LODWORD(STACK[0x3810]) = STACK[0x3D80];
  LODWORD(STACK[0x1188]) = STACK[0x3A28];
  LODWORD(STACK[0x3268]) = v9;
  LODWORD(STACK[0x3D70]) = v14;
  return v12(v5, a2, a3, 1);
}

uint64_t sub_100C5550C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xB7D0FFDC)))(STACK[0x15A8]);
  STACK[0x15A8] = 0;
  return (*(v1 + 8 * (v0 + 1211075559)))(v2);
}

uint64_t sub_100C555A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v11 = STACK[0x640] + 4 * (31 * (v9 ^ 0x4F1A) + 695941 + v5 * a3 - (((((31 * (v9 ^ 0x4F1A) + 695941 + v5 * a3) >> 3) * a5) >> 32) >> 7) * v6);
  v12 = STACK[0x640] + 4 * (v5 * a3 + 145464 - (((((v5 * a3 + 145464) >> 3) * a5) >> 32) >> 7) * v6);
  v13 = *(*STACK[0x660] + (*v10 & STACK[0x658]));
  v14 = *v7 ^ v8;
  *(v12 - 0x34EE34220E8AC3B8) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v13 + 673210726) & v14)) ^ *(v11 - 0x34EE34220E8AC3B8) ^ (-1962600273 * v12) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v12 + v13 + 673210728) & v14)) ^ (-1962600273 * v11) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v11 + v13 + 673210726) & v14)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v11 + v13 + 673210728) & v14));
  return (*(STACK[0x668] + 8 * ((13 * (v5 == 255)) ^ v9)))();
}

uint64_t sub_100C55748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = a4 + 16 * ((a5 ^ a2) + (a3 & (2 * a5)));
  v13 = v6 + v12;
  v14 = *(v6 + v12);
  v15 = a1 + v12;
  *v15 = v14;
  *(v15 + 8) = *(v13 + 8);
  *(v15 + 12) = *(v13 + 12);
  return (*(v10 + 8 * (((a5 + 1 < *(v9 + v11)) * ((v7 | v8) + 1128)) ^ v5)))();
}

uint64_t sub_100C557C8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v2 = a1 + 0x308E083E0C524CBELL;
  return (*(v3 + 8 * (v1 + 12402 + ((2 * v1) ^ 0x920))))();
}

uint64_t sub_100C55844@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 + 23223)))(a1);
  *(STACK[0xC28] + 24) = 0;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100C55880()
{
  STACK[0xF10] = 0;
  LODWORD(STACK[0x9E0]) = -769884012;
  return (*(v1 + 8 * ((12510 * (v0 != 1470798420)) ^ (v0 + 548969243))))();
}

uint64_t sub_100C5679C()
{
  LODWORD(STACK[0x690]) = v0;
  v3 = STACK[0x530];
  v4 = (*(v1 + 8 * (STACK[0x530] + 12139)))(v2);
  return (*(v1 + 8 * v3))(v4);
}

uint64_t sub_100C567F8()
{
  LODWORD(STACK[0x123C]) = v2;
  STACK[0x11D8] = v1;
  v5 = (((LODWORD(STACK[0xE4C]) ^ 0xF085E7F9) + 259659783) ^ ((LODWORD(STACK[0xE4C]) ^ 0x4B2DF790) - 1261303696) ^ ((LODWORD(STACK[0xE4C]) ^ 0x69B490FD) - 1773441277)) + 206648716 < 0x3A34B4F8;
  v6 = 1534937323 * ((((v4 - 240) | 0x1222F75675AD4F32) - ((v4 - 240) | 0xEDDD08A98A52B0CDLL) - 0x1222F75675AD4F33) ^ 0xDF5A7F94B343B475);
  *(v4 - 240) = v6;
  *(v4 - 208) = ((v0 + 1640229283) ^ 0x35) + v6;
  *(v4 - 224) = v6;
  *(v4 - 220) = (v0 + 1640229283) ^ v6;
  *(v4 - 216) = (((((v2 ^ 0x16C4E1DE) - 382001630) ^ ((v2 ^ 0x7E1FE15E) - 2116018526) ^ ((v2 ^ 0xBAC78014) + 1161330668)) + 206648716 < 0x3A34B4F8) ^ v5) + v6;
  *(v4 - 232) = ((v0 + 1640229283) ^ 0xE1F) - v6;
  *(v4 - 228) = v6 + v0 - 1632379223;
  v7 = (*(v3 + 8 * (v0 + 1211103395)))(v4 - 240);
  return (*(v3 + 8 * *(v4 - 204)))(v7);
}