uint64_t sub_1002455BC@<X0>(int a1@<W8>)
{
  STACK[0x99A8] = STACK[0x4B50] + 32;
  LODWORD(STACK[0x6BEC]) = v1 + 223081919 + (((LODWORD(STACK[0x627C]) ^ 0x113E8D77) - 289312119) ^ ((LODWORD(STACK[0x627C]) ^ 0x1529CEB7) - 355061431) ^ ((a1 ^ 0x11FF) + (LODWORD(STACK[0x627C]) ^ 0xD83DA2AC) + 667043429));
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (a1 + 4059)))();
}

uint64_t sub_100245718()
{
  v2 = v0 ^ 0x17C0A;
  STACK[0x7C8] &= ((v2 - 26444) | 0x6001u) - 2125842;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_100245758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = v24 < v25;
  *(a17 + (v26 - 1077026156) % (*v23 ^ 0xEB484D00)) ^= *(a23 + (v26 - 1077026156)) ^ 0x5F;
  if (v29 == v26 - 747477156 < v25)
  {
    v29 = v26 - 747477156 < v24;
  }

  return (*(v28 + 8 * ((!v29 * (v27 - 29410)) ^ v27)))();
}

uint64_t sub_1002459CC(int8x16_t a1, int8x8_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16.val[0].i64[0] = (v12 + a5 - 1) & 0xF;
  v16.val[0].i64[1] = (v12 + a5 + 14) & 0xF;
  v16.val[1].i64[0] = (v12 + a5 + 13) & 0xF;
  v16.val[1].i64[1] = (v12 + a5 + 12) & 0xF;
  v16.val[2].i64[0] = (v12 + a5 + 11) & 0xF;
  v16.val[2].i64[1] = (v12 + a5 + 10) & 0xF;
  v16.val[3].i64[0] = (v12 + a5 + (v13 ^ 4)) & 0xF;
  v16.val[3].i64[1] = (v12 + a5) & 0xF ^ 8;
  *(a6 + a5) = veor_s8(veor_s8(veor_s8(*(v10 + v16.val[0].i64[0] - 7), *(a7 + a5)), veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(v11 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v14 + 8 * (((v8 != a5) * a8) | a4)))();
}

uint64_t sub_100245A90()
{
  v1 = v0 - 29893;
  STACK[0x7690] = STACK[0x7690] - 23858 + 3907 * (v0 ^ 0x8B3Du);
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(STACK[0x4D30]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100245B90()
{
  v3 = ((v1 - 4396) ^ 0xFFFFFFFFFFFF83EDLL) + v0;
  v5 = v3 <= ((v1 + 13157) ^ 0xC0ACuLL) && ((v0 - 1) & 0xFu) >= (v3 & 0xF);
  return (*(v2 + 8 * ((127 * v5) ^ v1)))();
}

uint64_t sub_100245C60@<X0>(unsigned int a1@<W8>)
{
  v3 = (v1 - 1060906845) - 0x1376959AFLL + a1;
  if (v3 <= 0x38)
  {
    v3 = 56;
  }

  return (*(v2 + 8 * (((v3 - a1 + 1990551752 < 0x10) * (((v1 - 470818904) & 0xDCD3F8FA) + 1060900654)) ^ v1)))();
}

uint64_t sub_100245D18(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v10 = (a6 - 1310355330 + (a4 & 0x4F5172BE ^ 0xB3AE9FF1)) ^ v9;
  v11 = STACK[0x2F0];
  v12 = a6 + ((LODWORD(STACK[0x2F0]) - 1404878954) ^ (v10 + 1906040103)) * (a8 & 0x95D5C1DC);
  LODWORD(STACK[0x3B4]) = v12;
  LODWORD(STACK[0x3B0]) = a8 ^ v10 ^ 0xFEBA4530 ^ v12 & 0xE39D4EB5;
  LODWORD(STACK[0x3BC]) = v10;
  LODWORD(STACK[0x3B8]) = a4 - (v10 & 0xF16C3CFE ^ 0x914014C2);
  v13 = 1864610357 * ((*(*STACK[0x3C8] + (*STACK[0x3D0] & 0x2D783910)) ^ STACK[0x2D8]) & 0x7FFFFFFF);
  v14 = 1864610357 * (v13 ^ HIWORD(v13));
  LODWORD(v14) = (*(STACK[0x2B8] + (v14 >> 24)) ^ LODWORD(STACK[0x2C4]) ^ *((v14 >> 24) + STACK[0x2D0] + 2) ^ *(STACK[0x2C8] + (v14 >> 24)) ^ v14 ^ (99 * BYTE3(v14)));
  LODWORD(v14) = v14 & (LODWORD(STACK[0x2E8]) ^ 0xC8) ^ (v14 | LODWORD(STACK[0x2B0]));
  LODWORD(STACK[0x3DC]) = v11 + 27854;
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x2E4]) ^ 0x8F7CD24C;
  LODWORD(STACK[0x39C]) = LODWORD(STACK[0x2B4]) ^ 0xEA6FE857;
  LODWORD(STACK[0x368]) = v14 ^ 0xB3BAA54;
  LODWORD(STACK[0x38C]) = LODWORD(STACK[0x2EC]) ^ 0xB83AA8EF;
  return (*(v8 + 8 * v11))();
}

uint64_t sub_100245F04(uint64_t result)
{
  v1 = 35 * (((result | 0x48) - result + (result & 0xB7)) ^ 0xD);
  if ((*result + v1) == 80 && (*(result + 1) ^ v1) == 84)
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891336;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100248EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19)
{
  a17 = v21 + 1603510583 * a11 - 712573275;
  a18 = v19;
  a19 = a13;
  v22 = (*(v20 + 8 * (v21 + 11233)))(&a17);
  return (*(v20 + 8 * (((((v21 - 28641) | 0x125) ^ 0x313F) * ((a15 - 1815494268) < 0xFFFFFFC0)) ^ v21)))(v22);
}

void sub_100248F7C(uint64_t a1)
{
  v1 = *(a1 + 8) + 1112314453 * ((~a1 & 0xEE83B571 | a1 & 0x117C4A8E) ^ 0x1D59FA8);
  v2 = v1 ^ 0x5F2B5670u;
  v3 = v7 + (*(a1 + 40) ^ 0xD5100F5EBAB327EALL) - (*(a1 + 40) & 0x2AEFF0A1454CD815) + ((v2 + 0x2AEFF0A1454CA42CLL) & *(a1 + 40));
  v8 = (v3 ^ 0x3951E024ECB23D2ALL) - 0x3951E024ECB23D2ALL + ((2 * v3) & 0x72A3C049D9647A54);
  v4 = ((v3 ^ 0xECB23D2A) + 323863254 + ((2 * v3) & 0xD9647A54)) & 0x1424A894;
  v5 = ((v3 ^ 0xECB23D2A) + 323863254 + ((2 * v3) & 0xD9647A54)) & 0xA28A1522;
  v6 = ((v3 ^ 0xECB23D2A) + 323863254 + ((2 * v3) & 0xD9647A54)) & 0x49514249;
  LODWORD(v3) = 2 * ((v3 ^ 0xECB23D2A) + 323863254 + ((2 * v3) & 0xD9647A54));
  v7[0] = ((v6 + 290554961) & 0x49514249 | v3 & 0x2A20082) + ((v3 & 0x45142040 | v5) ^ 0xA28A1020) + ((v3 & 0x15120 | v4) ^ 0xA890);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_100249240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v32 = 139493411 * ((((v31 - 144) | 0x5EFFB888) - ((v31 - 144) & 0x5EFFB888)) ^ 0x52D259CD);
  *(v31 - 132) = v30 - v32 + 32120;
  *(v31 - 128) = v32 + 32549056 + (((v28 ^ 0x88F2EC1C) + 1997345764) ^ ((v28 ^ 0x2B738F98) - 728993688) ^ ((v28 ^ 0x4A540BCA ^ (v30 + 10085740) & 0xFF66AFFF) - 1247061141));
  *(v31 - 144) = &a27;
  *(v31 - 120) = v27;
  v33 = (*(v29 + 8 * (v30 ^ 0xD31B)))(v31 - 144);
  return (*(v29 + 8 * v30))(v33);
}

uint64_t sub_1002493DC(int8x16_t a1, int8x16_t a2, int64x2_t a3, int64x2_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32.i64[0] = v18 + a14;
  v32.i64[1] = v17 + a14 + 6;
  v33.i64[0] = v17 + a14 + 3;
  v33.i64[1] = v17 + a14 + 2;
  v34.i64[0] = v17 + a14 + 5;
  v34.i64[1] = v17 + a14 + 4;
  v35.i64[0] = v17 + a14 + 9;
  v35.i64[1] = v17 + a14 + 8;
  v36 = vandq_s8(v35, a1);
  v37 = vandq_s8(v34, a1);
  v38 = vandq_s8(v33, a1);
  v39 = vandq_s8(v32, a1);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vorrq_s8(vandq_s8(vsubq_s64(a4, v43), a5), vandq_s8(vaddq_s64(v43, a3), a6));
  v45 = vorrq_s8(vandq_s8(vsubq_s64(a4, v42), a5), vandq_s8(vaddq_s64(v42, a3), a6));
  v46 = vorrq_s8(vandq_s8(vsubq_s64(a4, v41), a5), vandq_s8(vaddq_s64(v41, a3), a6));
  v47 = vorrq_s8(vandq_s8(vsubq_s64(a4, v40), a5), vandq_s8(vaddq_s64(v40, a3), a6));
  v48 = veorq_s8(v47, a7);
  v49 = veorq_s8(v46, a7);
  v50 = veorq_s8(v47, a8);
  v51 = veorq_s8(v46, a8);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v51);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v50), v20);
  v54 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v56 = veorq_s8(v52, v20);
  v57 = veorq_s8(v53, v55);
  v58 = veorq_s8(v56, v54);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57), v21);
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v58), v21);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v63 = veorq_s8(v59, v60);
  v64 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v65, v65), v22), v65), v23), v24);
  v68 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v66, v66), v22), v66), v23), v24);
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v69, v68);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v71);
  v74 = veorq_s8(vaddq_s64(v72, v70), v25);
  v75 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v76 = veorq_s8(v73, v25);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v78 = veorq_s8(v74, v75);
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78);
  v81 = vaddq_s64(v79, v77);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), v26), v80), v27), v28);
  v83 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v81, v81), v26), v81), v27), v28);
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v86 = veorq_s8(v84, v83);
  v87 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v86);
  v89 = veorq_s8(vaddq_s64(v87, v85), v29);
  v90 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v91 = veorq_s8(v88, v29);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v93 = veorq_s8(v89, v90);
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v31);
  v127.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v127.val[3] = vshlq_u64(v94, vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v95 = veorq_s8(v45, a7);
  v96 = veorq_s8(v45, a8);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v20);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v21);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v101, v101), v22), v101), v23), v24);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v25);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), v26), v106), v27), v28);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v29);
  v127.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v110 = veorq_s8(v44, a7);
  v111 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v112 = veorq_s8(v44, a8);
  v113 = veorq_s8(vaddq_s64(v111, v112), v20);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v21);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v117, v117), v22), v117), v23), v24);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v25);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v26), v122), v27), v28);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v29);
  v127.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  *(v17 + a14 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v127, v30)), *(a15 + a14));
  return (*(STACK[0xF18] + 8 * (((v16 == 0) * v19) ^ v15)))();
}

uint64_t sub_100249908@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v7 = a1 == 0;
  v8 = ((a1 & a3 | (2 * (a1 & a3))) ^ a3) + ((a1 & a4 | (2 * (a1 & a4))) ^ a4) + ((a1 & a5 | (2 * (a1 & a5))) ^ a5);
  v9 = !v7;
  return (*(a6 + 8 * ((v9 * v6) ^ a2)))(v8);
}

uint64_t sub_100249A50()
{
  v6 = v1 - 1;
  *(v3 + v6) = *(v5 + v6);
  return (*(v4 + 8 * ((v2 ^ (v6 == 0)) & 1 | (2 * ((v2 ^ (v6 == 0)) & 1)) | v0)))();
}

uint64_t sub_100249BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  *(v46 - 232) = a7;
  *(v46 - 224) = v43;
  v47 = HIDWORD(a19) < a19;
  v48 = a20 + (((v44 ^ 0x8841B72F) + 203374314) ^ ((v44 ^ 0xA22859CD) + 645320716) ^ ((v44 ^ 0xB81D5FCA) + HIDWORD(a13))) + 1687553943;
  v49 = v47 ^ (v48 < 0xBDDAA3E1);
  v50 = v48 < HIDWORD(a19);
  if (!v49)
  {
    v47 = v50;
  }

  return (*(v45 + 8 * ((53 * v47) ^ a14)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43);
}

uint64_t sub_100249D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  v63 = 1012831759 * ((~(v62 - 160) & 0x5219A792 | (v62 - 160) & 0xADE65868) ^ 0x428AB118);
  *(v62 - 144) = &a60;
  *(v62 - 136) = a15 + a23;
  *(v62 - 160) = v63 + 99890117;
  *(v62 - 156) = v63 + (v61 ^ 0xDBF63B26) + 24664;
  (*(v60 + 8 * ((v61 ^ 0xDBF63B26) + 42651)))(v62 - 160);
  return (*(v60 + 8 * ((41015 * (((((((v61 ^ 0x26) - 5) & 0x7F) + (*(a28 + 25) ^ 0x46) + 69) ^ ((*(a28 + 25) ^ 0x84) + 124) ^ ((v61 ^ 0xB0 ^ *(a28 + 25) ^ 0xF1) + 99)) + 88) < 0xF9u)) ^ v61 ^ 0xDBF63B26)))(4294958603, 10352, 12187, a28);
}

uint64_t sub_100249E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, int a16, unint64_t a17, unint64_t a18, int a19, int a20)
{
  v27 = 634647737 * ((((2 * v21) | 0xC04147F20EBB0228) - v21 + 0x1FDF5C06F8A27EECLL) ^ 0x3AFB0C166ACBAEE8);
  v28 = v22 - 929810615 - 634647737 * ((((2 * v21) | 0xEBB0228) - v21 - 123568404) ^ 0x6ACBAEE8);
  a19 = v22 - 634647737 * ((((2 * v21) | 0xEBB0228) - v21 - 123568404) ^ 0x6ACBAEE8) + v24;
  a20 = v28 + 25;
  a17 = v23 ^ v27;
  a18 = 23478 - v27;
  a16 = v22 - 929810615 + 634647737 * ((((2 * v21) | 0xEBB0228) - v21 - 123568404) ^ 0x6ACBAEE8);
  a13 = -634647737 * ((((2 * v21) | 0xEBB0228) - v21 - 123568404) ^ 0x6ACBAEE8);
  a14 = v28 - 4923;
  (*(v20 + 8 * v26))(&a13);
  return (*(v25 + 8 * a15))(v25);
}

void sub_100249F04(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (193924789 * ((2 * (a1 & 0x55A4024) - a1 - 89800741) ^ 0x4C1E8DBD));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10024A0E4()
{
  STACK[0x5A30] = STACK[0xED0];
  STACK[0x2AA8] = &STACK[0x4FB8];
  return (*(STACK[0xF18] + 8 * (v0 + 3359)))();
}

uint64_t sub_10024A120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0xF10];
  v5 = STACK[0xF10] - 20200;
  LODWORD(STACK[0xAD5C]) = v3;
  return (*(STACK[0xF18] + 8 * v5))(a1, a2, a3, v4);
}

uint64_t sub_10024A238()
{
  v1 = STACK[0xF10] + 8047;
  *(*(*(STACK[0x6A78] + 112) + 72 * (LODWORD(STACK[0x34A0]) ^ 0x17A9D2D2) + 16) + 16 * (LODWORD(STACK[0xB44C]) - 1248815395)) = (((v0 ^ 0x80401B0EBFC73159) + 0x7FBFE4F14038CEA7) ^ ((v0 ^ 0x312265B9481D5C9) - 0x312265B9481D5C9) ^ ((v0 ^ 0x83523D55C2932381) + STACK[0xF10] - 26398 + 0x7CADC2AA3D6CB862)) + 0x22EE7699737308D9;
  return (*(STACK[0xF18] + 8 * ((1521 * LOBYTE(STACK[0xB45F])) ^ v1)))();
}

uint64_t sub_10024A38C()
{
  v5 = ((((v0 + 2135680362) & 0x96DED7F6 ^ 0x99797D42) + (v3 ^ 0x668606D0)) ^ ((v3 ^ 0x5AC2C2F4) - 1522713332) ^ (((((v0 + 371881209) | 0x380) - 711933013) ^ v3) + 711916747)) + 2068873407;
  v6 = ((v4 - 1854228030) < 0x917AB9AE) ^ (v5 < 0x917AB9AE);
  v7 = v4 - 1854228030 > v5;
  if (v6)
  {
    v7 = (v4 - 1854228030) < 0x917AB9AE;
  }

  if (!v7)
  {
    v1 = v2;
  }

  return (*(STACK[0xF18] + 8 * (v0 ^ 0xE9D5F89B ^ (18849 * (((v1 - v0) | (v0 - v1)) >= 0)))))();
}

uint64_t sub_10024A494()
{
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x82D8] = v5;
  STACK[0x38E8] = (v5 + 23);
  STACK[0x8348] = (v5 + 103);
  STACK[0x1850] = (v5 + 183);
  STACK[0x60F8] = (v5 + 373);
  STACK[0x53F0] = (v5 + 389);
  STACK[0x7690] = ((v1 - 28433) ^ (26 * (v1 ^ 0xA077u)) ^ 0x2665) + v4;
  LODWORD(STACK[0x16E0]) = 16;
  if (v2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = !v6 && v0 == -371865851;
  return (*(STACK[0xF18] + 8 * (v1 ^ (100 * v8))))();
}

uint64_t sub_10024A590()
{
  v0 = STACK[0xF10] - 33788;
  v1 = *STACK[0x2880];
  v2 = v1 & 0x51 ^ 0xEF;
  v3 = v1 ^ 0x1A;
  *(STACK[0x63C0] + 44) = (v1 ^ (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (v3 & (2 * (((v1 << (((STACK[0xF10] - 60) ^ 0xFE) & 0xEF)) & 0x36 ^ 0x4A) & v3 ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ v2))) ^ 0x1BEC;
  v4 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v4 + 8 * (v0 ^ 0x1381)))();
}

uint64_t sub_10024A698()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 3099;
  STACK[0x52B8] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 ^ 0x8BEA) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_10024A870(int a1)
{
  v4 = v2 < v3;
  if (v4 == (v1 + 1) > 0xFFFFFFFF8F67C5F5)
  {
    v4 = ((((a1 - 21444) | 0x340u) + 5988) ^ 0x709824AFuLL) + v1 < v2;
  }

  return (*(STACK[0xF18] + 8 * ((27 * v4) ^ a1)))();
}

uint64_t sub_10024A990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x8168]) = -371865839;
  STACK[0x3AB0] = 0;
  LODWORD(STACK[0x679C]) = -371865839;
  STACK[0x10C0] = 0;
  LODWORD(STACK[0x8D64]) = -371865839;
  STACK[0x87E8] = 0;
  LODWORD(STACK[0x7924]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == ((a3 - 224747862) & 0xD64D57A ^ 0xE9D5C36A)) * ((109 * (a3 ^ 0x9112)) ^ 0x8E6A)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_10024AA24@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EE0]) = v1 - 634647737 * ((((&STACK[0x10000] + 3800) | 0x62C22921) - ((&STACK[0x10000] + 3800) & 0x62C22920)) ^ 0xF5406DD) - 664369205;
  STACK[0x10ED8] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x9072)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((201 * ((((LODWORD(STACK[0x9604]) ^ 0x71879076) - 1904709750) ^ ((LODWORD(STACK[0x9604]) ^ 0xD9EF9B2C) + 638608596) ^ (3 * (v1 ^ 0x720E) - 1102993286 + (LODWORD(STACK[0x9604]) ^ (((2 * v1) ^ 0xB34C) + 1102954697)))) - 371865839 > 0x60001)) ^ v1)))(v3);
}

uint64_t sub_10024AD7C(uint64_t a1)
{
  v3.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v3.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v4.n128_u64[0] = 0x5F0000005F000000;
  v4.n128_u64[1] = 0x5F0000005F000000;
  v5.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v5.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  return (*(v2 + 8 * (v1 + 1060907984)))(a1, -1472335056, v3, vdupq_n_s32(0x69D5C715u), vdupq_n_s32(0xE9D5C711), v4, v5);
}

uint64_t sub_10024AE64()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 35627) | 0x3805;
  v2 = STACK[0xF10] - 33986;
  v3 = STACK[0x7DE8];
  v4 = 634647737 * ((((&STACK[0x10000] + 3800) | 0xD13420F9) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x2ECBDF00)) ^ 0xBCA20F05);
  LODWORD(STACK[0x10ED8]) = v4 - 1431125373;
  LODWORD(STACK[0x10EE8]) = v0 - v4 - 14660;
  STACK[0x10EE0] = v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0x403A)))(&STACK[0x10ED8]);
  STACK[0x16D8] = *(v5 + 8 * v2);
  return (*(v5 + 8 * ((v1 ^ 0x2D0C) + v2)))(v6);
}

uint64_t sub_10024AF38()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * ((v0 + 16488) ^ 0xBDE2)))(48) == 0;
  return (*(v1 + 8 * (((((v0 + 105) ^ v2) & 1) * ((v0 + 29035) ^ 0xA888)) ^ (v0 + 16488))))();
}

uint64_t sub_10024B004()
{
  v1 = STACK[0xF10];
  v2 = (STACK[0xF10] - 35635) | 0x1002;
  v3 = STACK[0xF10] + 6929;
  v4 = STACK[0xB894];
  LOBYTE(STACK[0x9EEF]) = LODWORD(STACK[0xB894]) == v2 - 371869929;
  if (v4 == v2 - 371869929)
  {
    v5 = -371865824;
  }

  else
  {
    v5 = v4;
  }

  LODWORD(STACK[0x8384]) = v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41A3)))(v5 ^ v0);
  STACK[0x6618] = v7;
  return (*(v6 + 8 * (((2 * (v7 == 0)) | (16 * (v7 == 0))) ^ v3)))();
}

uint64_t sub_10024B0FC()
{
  v0 = STACK[0xF10] - 9275;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16221)))(LODWORD(STACK[0x6CA8]) ^ STACK[0xF10] ^ 0xABF9 ^ (((STACK[0xF10] - 31595) | 0x20) - 371861533));
  STACK[0x4B28] = v2;
  return (*(v1 + 8 * ((2 * (v2 == 0)) | (4 * (v2 == 0)) | v0)))();
}

uint64_t sub_10024B1C8()
{
  v1 = STACK[0xF10] - 22569;
  LODWORD(STACK[0x3F7C]) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10024B1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF18];
  STACK[0x67B0] = *(STACK[0xF18] + 8 * a7);
  return (*(v7 + 8 * ((((a7 + 12454) | 0x138) - 190) ^ a7)))();
}

uint64_t sub_10024B254(__n128 a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v8 = (a5 + ((v5 + 3840) ^ a3));
  *v8 = a1;
  v8[1] = a1;
  return (*(STACK[0xF18] + 8 * (((v7 == 0) * a4) ^ v6)))();
}

uint64_t sub_10024B28C(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10];
  LOWORD(STACK[0x9926]) = v2;
  v5 = *(STACK[0xF18] + 8 * (v4 - 27350));
  LODWORD(STACK[0xE40]) = v2;
  return v5(a1, a2, v3);
}

uint64_t sub_10024B2C8()
{
  STACK[0x33B0] = (v0 | ((v0 < v1 + 22112119) << 32)) + 0x6B87F13FBFDD8F66;
  v2 = STACK[0xF18];
  STACK[0x2AE0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x69A4)))();
}

uint64_t sub_10024B368()
{
  v1 = (STACK[0xF10] - 287050844) & 0x111BFDFE;
  v2 = STACK[0xF10] - 16957;
  LODWORD(STACK[0x1134]) = v0;
  return (*(STACK[0xF18] + 8 * ((445 * ((((LODWORD(STACK[0xA39C]) ^ 0x35F773A1) - 905409441) ^ ((LODWORD(STACK[0xA39C]) ^ 0xE91E8640) + 383875520) ^ ((LODWORD(STACK[0xA39C]) ^ (v1 + 893105682)) - 893137648)) - LODWORD(STACK[0xA3B4]) != 296185716)) ^ v2)))();
}

uint64_t sub_10024B49C()
{
  v2 = 0;
  v3 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x4BA6E21C)) ^ 0x4BA6E21ELL;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  STACK[0xBCD0] = 0;
  v12 = 16777619 * ((1269228062 * v11 + 7) ^ (1269228062 * v11)) % 7;
  v13 = 16777619 * ((1269228062 * v11 + 6) ^ (1269228062 * v11)) % 6;
  v14 = 16777619 * ((1269228062 * v11 + 5) ^ (1269228062 * v11)) % 5;
  v15 = *(&STACK[0xBCD0] | v12);
  *(&STACK[0xBCD0] | v12) = STACK[0xBCD7];
  v16 = *(&STACK[0xBCD0] | v13);
  *(&STACK[0xBCD0] | v13) = STACK[0xBCD6];
  v17 = *(&STACK[0xBCD0] | v14);
  *(&STACK[0xBCD0] | v14) = STACK[0xBCD5];
  STACK[0xBCD8] = v0;
  v18 = 16777619 * ((1269228062 * v11 + 3) ^ (1269228062 * v11)) % 3;
  v19 = vdup_n_s32(1269228062 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = (1269228062 * v11) | 1;
  LOBYTE(STACK[0xBCD7]) = v15;
  v21 = STACK[0xF10] - 22177;
  v22 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBCD6]) = v16;
  LOBYTE(STACK[0xBCD5]) = v17;
  v23 = STACK[0xBCD0];
  LOBYTE(STACK[0xBCD0]) = STACK[0xBCD4];
  LOBYTE(STACK[0xBCD4]) = v23;
  v24 = *(&STACK[0xBCD0] | v18);
  *(&STACK[0xBCD0] | v18) = STACK[0xBCD3];
  LOBYTE(STACK[0xBCD3]) = v24;
  v25 = STACK[0xBCD1];
  LOBYTE(STACK[0xBCD2]) = STACK[0xBCD0];
  LOWORD(STACK[0xBCD0]) = v25;
  STACK[0xBCD0] = vmla_s32(v22, STACK[0xBCD0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBCD8];
  v27 = (1269228062 * STACK[0xBCD8]) ^ v11;
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
    v36 = *(v26 + v2);
    v56.val[1] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7690), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC76A0), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v56.val[2] = veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7680), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v56.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v36, xmmword_100BC7670), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v2) = vmulq_s8(vqtbl4q_s8(v56, xmmword_100BC7660), v34);
    v2 += 16;
    v32 = vaddq_s32(v32, v35);
    v31 = vaddq_s32(v31, v35);
    v30 = vaddq_s32(v30, v35);
    v29 = vaddq_s32(v29, v35);
  }

  while (v2 != 2176);
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
  v48 = *(&STACK[0xBCD8] + v12);
  *(&STACK[0xBCD8] + v12) = STACK[0xBCDF];
  LOBYTE(STACK[0xBCDF]) = v48;
  v49 = *(&STACK[0xBCD8] + v13);
  *(&STACK[0xBCD8] + v13) = STACK[0xBCDE];
  LOBYTE(STACK[0xBCDE]) = v49;
  v50 = *(&STACK[0xBCD8] + v14);
  *(&STACK[0xBCD8] + v14) = STACK[0xBCDD];
  LOBYTE(STACK[0xBCDD]) = v50;
  v51 = STACK[0xBCD8];
  LOBYTE(STACK[0xBCD8]) = STACK[0xBCDC];
  v52 = *(&STACK[0xBCD8] + v18);
  *(&STACK[0xBCD8] + v18) = STACK[0xBCDB];
  LOBYTE(STACK[0xBCDC]) = v51;
  LOBYTE(STACK[0xBCDB]) = v52;
  v53 = STACK[0xBCD9];
  LOBYTE(STACK[0xBCDA]) = STACK[0xBCD8];
  LOWORD(STACK[0xBCD8]) = v53;
  STACK[0xBCD8] = vmla_s32(v22, STACK[0xBCD8], vdup_n_s32(0x1000193u));
  *(v1 + 264) = STACK[0xBCD8] ^ STACK[0xBCD0];
  return (*(STACK[0xF18] + 8 * v21))();
}

uint64_t sub_10024B938()
{
  v0 = (STACK[0xF10] - 26835) | 0x4510;
  v1 = STACK[0xF10] - 34584;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 - 21424 + v0)))();
}

uint64_t sub_10024B9F0()
{
  v0 = STACK[0xF18];
  STACK[0x76F8] = *(STACK[0xF18] + 8 * (STACK[0xF10] - 33354));
  return (*(v0 + 61472))();
}

uint64_t sub_10024BA44()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 32604) ^ 0x2B0D;
  v2 = STACK[0xF10] + 6092;
  v3 = STACK[0xA820];
  v4 = STACK[0x9A00];
  v5 = STACK[0xA828];
  v6 = 1012831759 * ((((&STACK[0x10000] + 3800) | 0xA85B40A) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xF57A4BF0)) ^ 0x1A16A280);
  v7 = v6 + STACK[0xF10] + 1970;
  STACK[0x10EE0] = STACK[0x9840] + 28;
  STACK[0x10F00] = v5;
  STACK[0x10EF8] = v3;
  STACK[0x10EF0] = v4;
  LODWORD(STACK[0x10EEC]) = v7;
  LODWORD(STACK[0x10EE8]) = 248037382 - v6;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v0 + 16411)))(&STACK[0x10ED8]);
  v10 = STACK[0x10ED8];
  LODWORD(STACK[0x727C]) = STACK[0x10ED8];
  v11 = v10 == v1 - 371874241;
  LOBYTE(STACK[0x80D3]) = v11;
  return (*(v8 + 8 * ((255 * v11) ^ v2)))(v9);
}

uint64_t sub_10024BB88(uint64_t a1)
{
  v4 = ((7034 * (v2 ^ 0x524F)) ^ 0xFFFFADC5) + *(a1 + 5);
  v5 = ((2 * v4) & 0x7BF67F1C) + (v4 ^ v1) != v2 - 1107628734;
  return (*(v3 + 8 * (((2 * v5) | (32 * v5)) ^ v2)))();
}

uint64_t sub_10024BBF4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 421081419;
  *(STACK[0x4438] + 24) = STACK[0xAEA0];
  return (*(STACK[0xF18] + 8 * ((20502 * (v1 < 0x5783315E)) ^ (v0 - 29108))))();
}

uint64_t sub_10024BD1C(uint64_t a1, uint64_t a2)
{
  *STACK[0x5AD8] = v3;
  *STACK[0xBB0] = STACK[0x5814];
  return (*(STACK[0xF18] + 8 * ((939 * (v2 < 0x8E6C4549)) ^ (v2 - 117922863))))(a1, a2, 3923101457);
}

uint64_t sub_10024BDB0()
{
  v1 = STACK[0xF10] - 27401;
  *(STACK[0x6EE0] + 20) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10024C008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xF10] - 2647;
  *(a7 + 69) = v7;
  return (*(STACK[0xF18] + 8 * v8))();
}

uint64_t sub_10024C050()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 45193)))(16) == 0;
  return (*(v1 + 8 * (((2 * ((v2 ^ ((v0 + 77) ^ (v0 + 44))) & 1)) & 0xEF | (16 * ((v2 ^ ((v0 + 77) ^ (v0 + 44))) & 1))) ^ v0)))();
}

uint64_t sub_10024C0A8()
{
  v2 = STACK[0x4718];
  v3 = STACK[0x5D04];
  STACK[0x3640] = v1 + 8;
  STACK[0x64E8] = v2;
  LODWORD(STACK[0x69C0]) = v3;
  LODWORD(STACK[0x7384]) = -1242854408;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10024C0F0()
{
  v0 = STACK[0xF10] - 11051;
  *(STACK[0xB678] + STACK[0x2698] - 0x61AEE8C81931451DLL) = 47;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10024C1A0()
{
  v5 = v1 + 72 * v3;
  v6 = *(v5 + 40);
  *(v5 + 40) = v6 + 1;
  v7 = v6 + (v0 ^ 0xABB30C3);
  v8 = (((v2 ^ 0x547AEEB6) - 1417342646) ^ ((v2 ^ 0xB850705D) + 1202687907) ^ (((v0 + 27) ^ 0x5FF6431 ^ v2) - 100620794)) + 1795717294;
  v9 = v8 < 0x8132B19D;
  v10 = v7 < v8;
  if (v7 < 0x8132B19D != v9)
  {
    v10 = v9;
  }

  return (*(v4 + 8 * ((123 * v10) ^ v0)))();
}

uint64_t sub_10024C328(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = v2 + 8;
  LOWORD(STACK[0x79DE]) = 7081;
  LODWORD(STACK[0x16B4]) = 1193475490;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_10024C36C()
{
  v0 = (STACK[0xF10] - 34939) | 0xA00C;
  v1 = STACK[0xF10] - 31766;
  v2 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 - 35968) ^ v1)))();
}

uint64_t sub_10024C3E0()
{
  LODWORD(STACK[0xA804]) = -371865839;
  LODWORD(STACK[0xA800]) = v0;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4133)))(v2);
  STACK[0x7A10] = v4;
  return (*(v3 + 8 * ((106 * ((((237 * (v1 ^ 0x8B67)) ^ (v4 == 0)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_10024C508@<X0>(int a1@<W8>)
{
  v2 = (a1 - 35627) | 0x841;
  v3 = a1 ^ 0xDCCB;
  v4 = a1 - 13570;
  LODWORD(STACK[0x79A4]) = v1;
  LODWORD(STACK[0x10ED8]) = (a1 - 1762661292) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = 0;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (a1 + 16254)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (((*STACK[0x970] <= (v2 ^ 0x851)) * (v3 - 22505)) ^ v4)))(v6);
}

uint64_t sub_10024C5C0(void *a1)
{
  *a1 = v2;
  a1[1] = v3;
  qmemcpy(a1 + 2, "ile/Library/FairPlay", 20);
  return (*(STACK[0xF18] + 8 * ((46 * (*(v1 + 25) != ((v4 - 38) ^ 0x2B))) ^ (v4 + 7925))))();
}

uint64_t sub_10024C64C()
{
  v0 = (STACK[0xF10] + 1513632940) & 0xA5C745BC;
  v1 = STACK[0xF10] - 11341;
  v2 = STACK[0xA93C];
  LODWORD(STACK[0xA944]) = LODWORD(STACK[0x9ACC]) + (*(STACK[0x1A98] + 680) ^ 0xE9D5C711);
  LODWORD(STACK[0xA940]) = v2;
  return (*(STACK[0xF18] + 8 * ((v2 == (v0 ^ 0xE9D5C2B5)) ^ v1)))();
}

uint64_t sub_10024C6C8()
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2A4E ^ ((v0 - 2140) | 1))))();
}

uint64_t sub_10024C714()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 17141;
  LODWORD(STACK[0x4B14]) = v0;
  v4 = (((v1 ^ 0xFC218F2A) + 755978804) ^ ((v1 ^ 0x78547478) - 1451579038) ^ (((v2 + 1131451242) ^ v1) - 1839217731)) + 780892669;
  v5 = (((LODWORD(STACK[0x3464]) ^ 0x10500AFF) - 273681151) ^ ((LODWORD(STACK[0x3464]) ^ 0x91FF38AB) + 1845544789) ^ ((LODWORD(STACK[0x3464]) ^ 0x687AF545) - 1752888645)) + 780892599;
  v6 = v4 < 0x44B5B2A6;
  v7 = v4 > v5;
  if (v6 != v5 < 0x44B5B2A6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((25 * v7) | v3)))();
}

uint64_t sub_10024C838()
{
  STACK[0x4F90] = *STACK[0x10D8];
  LODWORD(STACK[0x22E8]) = -371865840;
  LODWORD(STACK[0x35EC]) = 1693393218;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10024C878()
{
  v0 = (STACK[0xF10] + 1755149379) & 0x976269E3;
  v1 = STACK[0xF10] - 31167;
  v2 = STACK[0x51E0];
  v3 = STACK[0xF18];
  STACK[0x4688] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * ((v0 - 17965) ^ v1)))(v2);
}

uint64_t sub_10024C8EC()
{
  if (*(STACK[0x448] + 104))
  {
    v2 = STACK[0x440] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(v1 + 8 * ((v3 * (((v0 - 1612115214) & 0x6016FFE3) - 39023)) | (v0 + 4822))))();
}

uint64_t sub_10024C988(uint64_t a1, uint64_t a2)
{
  v3 = *(STACK[0x3A58] + 24);
  STACK[0x4FC8] = v3;
  return (*(STACK[0xF18] + 8 * (((v3 == 0) * (((v2 ^ 0x3D96) - 23300) ^ 0x3058)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_10024C9D8(uint64_t a1)
{
  v3 = (((*(a1 + 1380) ^ 0x876111F2) + 2023681550) ^ ((*(a1 + 1380) ^ 0x9E02394E) + 1644021426) ^ (((((v2 + 195903396) & 0xF452A7F2) + 470521760) ^ 0x13450EB1) + (*(a1 + 1380) ^ 0xF0B6EFAD))) + 368857173;
  v4 = (v1 + 221243448 < -1406760636) ^ (v3 < -1406760636);
  v5 = v1 + 221243448 > v3;
  if (v4)
  {
    v5 = v1 + 221243448 < -1406760636;
  }

  return (*(STACK[0xF18] + 8 * ((4 * !v5) | (16 * !v5) | v2)))();
}

uint64_t sub_10024CB40()
{
  LODWORD(STACK[0xE90]) = v3;
  LODWORD(STACK[0xEA0]) = v2;
  v4 = 109 * (v0 ^ 0x5F64u);
  v5 = *(v1 + 16);
  LODWORD(STACK[0x10ED8]) = (v0 - 1762649748) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xBF01054D) - ((&STACK[0x10000] + 3800) & 0xBF010548)) ^ 0x8E00C869));
  STACK[0x10EE0] = v5;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x949A)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x4B6C]) = 1210925842;
  return (*(v6 + 8 * ((4 * ((v4 ^ (*(v1 + 8) == (v4 ^ 0x8B3B))) & 1)) & 0xEF | (16 * ((v4 ^ (*(v1 + 8) == (v4 ^ 0x8B3B))) & 1)) | v0)))(v7);
}

uint64_t sub_10024CC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v17 = (*(v15 + 8 * (v16 + 43253)))((8 * v14 + 13));
  *a14 = v17;
  return (*(v15 + 8 * (((v17 == 0) * (((v16 + 38926) ^ 0x291) - 47888)) ^ v16)))(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_10024CCA8()
{
  v2 = *v0;
  STACK[0xED0] = v0[1];
  STACK[0x33E0] = v2;
  v3 = v0[7];
  v4 = v0[8];
  STACK[0x1468] = v3;
  STACK[0x4600] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 8813)))(v0 + 3, &STACK[0x4328], 32);
  STACK[0x7690] += 32;
  STACK[0x73C0] = 0;
  STACK[0x9028] = 0;
  LODWORD(STACK[0x7788]) = -371865839;
  STACK[0x6B08] = 0;
  LODWORD(STACK[0x4A88]) = -371865839;
  STACK[0x2D18] = 0;
  LODWORD(STACK[0x9268]) = -371865839;
  STACK[0x7C90] = 0;
  STACK[0x1728] = 0;
  STACK[0x1CE8] = 0;
  STACK[0x53C8] = 0;
  STACK[0x88C0] = 0;
  LODWORD(STACK[0x92E0]) = -371865839;
  STACK[0x10E8] = 0;
  LODWORD(STACK[0xF24]) = 2109613554;
  LODWORD(STACK[0x62EC]) = 903431095;
  STACK[0x69E0] = 0;
  if (v2)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 || v4 == 0;
  STACK[0x58C8] = 0;
  v9 = !v8;
  LODWORD(STACK[0x4088]) = 0;
  LODWORD(STACK[0x16C0]) = -371865839;
  return (*(v5 + 8 * ((v9 * ((((v1 + 1952068391) & 0x8BA5AFBF) + 13602) ^ 0xC06C)) ^ v1)))(v6);
}

uint64_t sub_10024CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  v19 = (((a11 + a18 + 492622565) ^ 0x94909BC7) + 226315667) ^ (a11 + a18 + 492622565) ^ (((a11 + a18 + 492622565) ^ 0xD48BDBBB) + 1298533871) ^ (((a11 + a18 + 492622565) ^ (a3 - 839507126)) + 1411074685) ^ (((a11 + a18 + 492622565) ^ 0xEBFFF5FF) + 1913791403);
  v21 = v19 != 1712466346 && ((((a3 - 162594) & 0xEBC797DF) + 339372658) & v19) == 10;
  return (*(v18 + 8 * ((37 * v21) ^ (a3 - 21396))))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_10024D03C@<X0>(unint64_t a1@<X8>)
{
  v2 = STACK[0x1290];
  v3 = STACK[0xF10];
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 35642) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE8] = a1;
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 ^ 0x4703)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_10024D0B4()
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
  STACK[0xBBB0] = 0;
  STACK[0xBBB8] = v0;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBBB0] | v12);
  *(&STACK[0xBBB0] | v12) = STACK[0xBBB7];
  v16 = *(&STACK[0xBBB0] | v13);
  *(&STACK[0xBBB0] | v13) = STACK[0xBBB6];
  v17 = *(&STACK[0xBBB0] | v14);
  *(&STACK[0xBBB0] | v14) = STACK[0xBBB5];
  v18 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v19 = vdup_n_s32(553300517 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBBB7]) = v15;
  v21 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBBB6]) = v16;
  LOBYTE(STACK[0xBBB5]) = v17;
  v22 = STACK[0xBBB0];
  LOBYTE(STACK[0xBBB0]) = STACK[0xBBB4];
  LOBYTE(STACK[0xBBB4]) = v22;
  v23 = *(&STACK[0xBBB0] | v18);
  *(&STACK[0xBBB0] | v18) = STACK[0xBBB3];
  LOBYTE(STACK[0xBBB3]) = v23;
  v24 = STACK[0xBBB1];
  LOBYTE(STACK[0xBBB2]) = STACK[0xBBB0];
  LOWORD(STACK[0xBBB0]) = v24;
  STACK[0xBBB0] = vmla_s32(v21, STACK[0xBBB0], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBBB8];
  v26 = (553300517 * STACK[0xBBB8]) ^ v11;
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
  v47 = *(&STACK[0xBBB8] + v12);
  *(&STACK[0xBBB8] + v12) = STACK[0xBBBF];
  LOBYTE(STACK[0xBBBF]) = v47;
  v48 = *(&STACK[0xBBB8] + v13);
  *(&STACK[0xBBB8] + v13) = STACK[0xBBBE];
  LOBYTE(STACK[0xBBBE]) = v48;
  v49 = *(&STACK[0xBBB8] + v14);
  *(&STACK[0xBBB8] + v14) = STACK[0xBBBD];
  LOBYTE(STACK[0xBBBD]) = v49;
  v50 = STACK[0xBBB8];
  LOBYTE(STACK[0xBBB8]) = STACK[0xBBBC];
  LOBYTE(STACK[0xBBBC]) = v50;
  v51 = *(&STACK[0xBBB8] + v18);
  *(&STACK[0xBBB8] + v18) = STACK[0xBBBB];
  LOBYTE(STACK[0xBBBB]) = v51;
  v52 = STACK[0xBBB9];
  LOBYTE(STACK[0xBBBA]) = STACK[0xBBB8];
  LOWORD(STACK[0xBBB8]) = v52;
  STACK[0xBBB8] = vmla_s32(v21, STACK[0xBBB8], vdup_n_s32(0x1000193u));
  *STACK[0x940] = STACK[0xBBB8] ^ STACK[0xBBB0];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10024D5B0@<X0>(int a1@<W8>)
{
  v3 = (((a1 ^ 0x99EC9C7C) + 1712546692) ^ ((a1 ^ 0x2A9CDA7D) - 714922621) ^ (((v2 + 799790884) & 0xD0537ECB ^ 0xA55A6073) + (a1 ^ 0x5AA58110))) + 1680764581;
  v4 = ((v1 + 1059131051) < 0x7A58A794) ^ (v3 < 0x7A58A794);
  v5 = v1 + 1059131051 > v3;
  if (v4)
  {
    v5 = (v1 + 1059131051) < 0x7A58A794;
  }

  return (*(STACK[0xF18] + 8 * (v2 ^ (8 * !v5))))();
}

uint64_t sub_10024D710()
{
  v0 = STACK[0xF10] - 22862;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] ^ 0x4192)))(STACK[0x3590]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10024D7BC(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0xF10];
  LOWORD(STACK[0x9916]) = v2;
  v5 = *(STACK[0xF18] + 8 * (v4 - 27350));
  LODWORD(STACK[0xE60]) = v2;
  return v5(a1, a2, v3);
}

uint64_t sub_10024D7F8@<X0>(uint64_t a1@<X8>)
{
  *(v3 + v2) = veorq_s8(*(v3 + v2), *(a1 + v2));
  v4 = v2 + 16 == ((v1 - 10494) | 0xB40u) - 4004;
  return (*(STACK[0xF18] + 8 * (((32 * v4) | (v4 << 6)) ^ v1)))();
}

uint64_t sub_10024D92C()
{
  v2 = (STACK[0xF10] ^ 0x857A) - 934233312;
  v3 = STACK[0xF10] - 10470;
  LODWORD(STACK[0x88E4]) = v0;
  return (*(STACK[0xF18] + 8 * ((15 * (((v1 == -955980297) ^ v2) & 1)) ^ v3)))();
}

void *sub_10024D98C()
{
  v1 = (STACK[0xF10] - 1975620426) & 0x75C17BDE;
  v2 = STACK[0xF10] - 34041;
  LOWORD(STACK[0x3656]) = v0;
  STACK[0x63D8] = 0;
  LODWORD(STACK[0x2C64]) = -371865839;
  v3 = STACK[0xF18];
  STACK[0x40C8] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0xFA98 ^ v1)))(&STACK[0x63D8]);
}

uint64_t sub_10024D9FC@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0x3868];
  v2 = STACK[0xF18];
  STACK[0x58B8] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (a1 ^ 0x103 ^ (a1 + 1266869701) & 0xB47D7F7F)))(v1);
}

uint64_t sub_10024DA50()
{
  v1 = *(STACK[0x6508] - 0x217E172EFA1E81CLL);
  v2 = 1603510583 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x6E47B3E8) + 1850192875) ^ 0xF99C8140);
  LODWORD(STACK[0x10EEC]) = (v0 ^ 0xD7E6AF3D ^ (3 * (v0 ^ 0xE80D))) - v2 + LODWORD(STACK[0x232C]);
  LODWORD(STACK[0x10EE8]) = v0 - v2 - 43882;
  LODWORD(STACK[0x10EDC]) = -1826624832 - v2;
  STACK[0x10EE0] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 1114)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((26 * (STACK[0x5A68] == 0)) | v0)))(v4);
}

uint64_t sub_10024DB48()
{
  v3 = v1 + 2014211137 + (((v2 ^ v0 ^ 0x3091C314) - 507540719) ^ ((v2 ^ 0x882459C9) + 1493861585) ^ (((11881 * (v0 ^ 0x951E)) ^ 0xAE9FBC14) + (v2 ^ 0x7FB1EA37)));
  v4 = (((LODWORD(STACK[0x9974]) ^ 0xAA44D1E9) + 1438330391) ^ ((LODWORD(STACK[0x9974]) ^ 0x2E4E0975) - 776866165) ^ ((LODWORD(STACK[0x9974]) ^ 0x6DDF1F8D) - 1843339149)) + 1462304151;
  v5 = v3 < 0x6D533686;
  v6 = v3 > v4;
  if (v4 < 0x6D533686 != v5)
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = 371891407;
  }

  else
  {
    v7 = STACK[0xA790];
  }

  return (*(STACK[0xF18] + 8 * ((8746 * (v7 == -371865839)) ^ v0)))();
}

uint64_t sub_10024DCEC()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34302;
  v2 = STACK[0x5578];
  LODWORD(STACK[0x10EE0]) = 1012831759 * ((((&STACK[0x10000] + 3800) | 0xB684C6B) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xF497B390)) ^ 0x1BFB5AE1) + STACK[0xF10] - 1433936949;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x4623)))(&STACK[0x10ED8]);
  v4 = STACK[0x7178];
  STACK[0x98B0] = *(v3 + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x22AF)))(v4, 4294951672, 1403876493, 2891099963, 44518, 29816, 35404, 51);
}

uint64_t sub_10024DF10()
{
  STACK[0x6E38] = v2;
  v3 = (v1 + (((v0 - 15987) + ((v0 - 1215356363) & 0x4870275B) - 0xACCB95A945AC6FBLL + v2) << 6));
  STACK[0x4928] = v3;
  return (*(STACK[0xF18] + 8 * ((2 * (*v3 == 0x981390C2FED9246)) | (4 * (*v3 == 0x981390C2FED9246)) | v0)))();
}

uint64_t sub_10024E038@<X0>(int a1@<W8>)
{
  *(v3 + 2224) = v2;
  v4 = v2 + ((a1 - 15653) ^ 0x4E33);
  *(v3 + 2228) = v4;
  v5 = (((LODWORD(STACK[0x18F4]) ^ (a1 + 1758715129)) - 1758750772) ^ ((LODWORD(STACK[0x18F4]) ^ 0x54963597) - 1419130263) ^ ((LODWORD(STACK[0x18F4]) ^ 0xD5979AB2) + 711484750)) - 986235844;
  v6 = v4 > 0x249E8AD4;
  v7 = v6 ^ (v5 < 0xDB61752B);
  v8 = v2 - 614369968 > v5;
  if (!v7)
  {
    v6 = v8;
  }

  if (v6)
  {
    v9 = 371891407;
  }

  else
  {
    v9 = v1;
  }

  return (*(STACK[0xF18] + 8 * ((480 * (v9 != -371865839)) ^ (a1 - 30291))))();
}

uint64_t sub_10024E13C(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] - 27257;
  STACK[0x95A0] = STACK[0x2548];
  LOWORD(STACK[0x79DE]) = 7081;
  LODWORD(STACK[0x16B4]) = -602977963;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_10024E1B4()
{
  v0 = STACK[0xF10] - 14274;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x69D0] - 0x217E172EFA1E81CLL);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10024E27C()
{
  v0 = STACK[0xF10] - 18460;
  LODWORD(STACK[0x3E80]) += (STACK[0xF10] ^ 0xD08C) - 23475;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10024E2D4()
{
  LODWORD(STACK[0x6D94]) = -371865816;
  LODWORD(STACK[0x4514]) = -371865838;
  LODWORD(STACK[0x82F4]) = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10024E378(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  HIDWORD(v18) = *(v13 + 4 * v6) + (*(v14 + *(v13 + 4 * v6)) - 47);
  LODWORD(v18) = HIDWORD(v18);
  v17 = v18 >> 21;
  HIDWORD(v18) = v17 ^ (*(a5 + (v18 >> 21)) - 61);
  LODWORD(v18) = v17;
  HIDWORD(v18) = (v18 >> 22) - (*(a6 + (v18 >> 22)) - 67);
  LODWORD(v18) = HIDWORD(v18);
  *(v16 + 4 * v6) = (((((v12 + a1) | a2) ^ a3 ^ (v18 >> 25)) + v15) ^ (((v18 >> 25) ^ v7) + v8) ^ (((v18 >> 25) ^ v9) + v10)) + v11;
  return (*(STACK[0xF18] + 8 * (((v6 == 15) * a4) ^ v12)))();
}

uint64_t sub_10024E4CC()
{
  v2 = *(STACK[0xE60] + (v1 - 649173213));
  v3 = v2 & 0x84 ^ 0x95;
  v4 = v2 ^ 0x21 ^ (3 * (v0 ^ 0xE7));
  v5 = (v2 ^ (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (((v4 & 0x1E ^ v3) << (-25 * (v0 ^ 0xB8) + 71)) & v4 ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3))) ^ 0x2D;
  v6 = 13108 * (((v5 ^ 0x246F) + 23441) ^ ((v5 ^ 0x3131) + 20175) ^ ((v5 ^ 0x15F7) - 5623)) - 8714;
  v7 = v6 & 0xCE0 ^ 0x12C1;
  v8 = ((v6 ^ (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * ((v6 ^ 0x6F5E) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7))) ^ 0x3CD2) & 0xFFFE;
  v9 = (((5 * (((v8 ^ 0x2B0B1859) - 722147417) ^ ((v8 ^ 0xD905B1A1) + 653938271) ^ ((v8 ^ 0xF20E99CA) + 15820342)) + 2027770) >> 16) - 20);
  LODWORD(STACK[0xDF0]) = v1 + 5;
  return (*(STACK[0xF18] + 8 * ((123 * ((v9 | ((v9 < 9) << 8)) != 9)) ^ v0)))(STACK[0xE70]);
}

uint64_t sub_10024E734(int a1, uint64_t a2, int a3)
{
  v5 = (((a1 ^ 0x78FE87AC) - 2029946796) ^ ((a1 ^ 0x32B2EC7E) - 850586750) ^ (((25793 * (a3 ^ 0x8C54) + 126662992) ^ a1) - 126714578)) + 1701248831;
  v6 = (((a3 - 283) ^ 0x1ECB9A9 ^ v5) - 373892268) ^ v5 ^ ((v5 ^ 0x16689BE8) - 30248406) ^ ((v5 ^ 0x7FDF88B9) - 1752866439) ^ ((v5 ^ 0x7FFE37FD) - 1750802883);
  v7 = v6 ^ 0x5A64FF3Eu;
  v8 = (((v6 ^ 0xFFC2309E) + 1515794528) ^ ((v6 ^ 0x50B2789E) - 181831584) ^ ((v6 ^ 0xB8D55E3E) + 491675392)) - 1001854519;
  v9 = (v3 > 0x8978FF36) ^ (v8 < 0x768700C9);
  v10 = v8 < v4;
  if (v9)
  {
    v10 = v3 > 0x8978FF36;
  }

  return (*(STACK[0xF18] + 8 * ((212 * !v10) ^ a3)))(v7);
}

uint64_t sub_10024E978()
{
  v0 = STACK[0xF10] - 9155;
  v1 = STACK[0xF10] - 34572;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 - 21436)))();
}

uint64_t sub_10024EAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x6368] = STACK[0x4448] + 112;
  v4 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * ((21402 * ((v3 + 460216911) > 0xD0660FDA)) ^ (v3 + 9946))))(a1, a2, a3, 0x1D54AEB378980563);
}

uint64_t sub_10024EB80()
{
  v2 = 2 * (v1 ^ 0x2A0E);
  LODWORD(STACK[0xED0]) = v2;
  return (*(STACK[0xF18] + 8 * (((v0 == (v2 ^ 0xD72E9537)) * (((v1 ^ 0x2A0E) - 3196) ^ 0x6914)) ^ v1)))();
}

uint64_t sub_10024EBF0()
{
  LODWORD(STACK[0x22D4]) = -371865839;
  v2 = ((v0 - v1) | (v1 - v0)) >> (((v1 ^ 0x34) + 22) ^ 0x24);
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xE9D58195 ^ ((2 * (v2 & 1)) & 0xDF | (32 * (v2 & 1))))))();
}

uint64_t sub_10024EC54()
{
  v0 = STACK[0xF10] - 29949;
  STACK[0x7690] -= 64;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10024ECDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 3677;
  LODWORD(STACK[0xB5C4]) = 1045196558;
  return (*(STACK[0xF18] + 8 * v7))(785457894, 2688065985, 2688065986, 1891231232, 3093099366, 2688065987, a7, 4292662771);
}

uint64_t sub_10024EE08@<X0>(int a1@<W8>)
{
  STACK[0x10D0] = 0;
  LODWORD(STACK[0x522C]) = -371865839;
  STACK[0x5B00] = 0;
  STACK[0x6110] = 0;
  LODWORD(STACK[0x26CC]) = 0;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10024EE54@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v37 = a1 - 16986;
  *(v36 - 128) = v32;
  v38 = 16771 * ((a1 - 16986) ^ 0x4098);
  *(v36 - 124) = v38;
  v39 = -1802333311 * v33;
  v40 = *(*(v34 + 8 * (v37 - 14999)) + ((-127 * v33) ^ 0x24) - 84748611);
  v41 = v40 ^ (v40 >> 2) ^ (v40 >> (v38 ^ 5));
  v42 = HIBYTE(v39);
  v43 = ((*(*(v34 + 8 * (v37 - 15317)) + (BYTE2(v39) ^ 8) - 234343539) << 16) ^ 0x62816832) & (v41 ^ 0x7EFFEAB1) | v41 & 0xCD;
  v44 = (((((v42 ^ 0xEC) - 57) ^ v42 ^ *(*(v34 + 8 * (v37 ^ 0x4AA2)) + (v42 ^ 0x14) - 23805798)) << 24) ^ 0xD49B1F87) & (v43 ^ 0x9DF977FD) ^ v43 & 0x42640078;
  v45 = *(v34 + 8 * (v37 - 12173)) - 1348517355;
  v46 = *(v45 + (v33[2] ^ 0x56));
  v47 = (v44 | 0xE000) & ((*(*(v34 + 8 * (v37 - 16113)) + (((-27775 * v33) >> 8) ^ 0x7ALL) - 919443567) << 8) ^ 0x2053A4AB) ^ v44 & 0xDFAC1F54;
  *(v36 - 136) = v47;
  v48 = v47 ^ 0xED0A3193;
  *(v36 - 144) = v47 ^ 0xED0A3193;
  v49 = *(v34 + 8 * (v37 - 14212)) - 52179354;
  v50 = *(v34 + 8 * (v37 ^ 0x4ECB)) - 84084359;
  v51 = *(v50 + (v33[8] ^ 0x7CLL));
  v52 = (((*(v49 + (v33[13] ^ 0x7DLL)) ^ v33[13]) << 16) ^ 0x8144784C) & (((v46 << 17) & 0x1000000 | (v46 << 25)) ^ 0x2CFFFA7E) | (v46 << 25) & 0x7E000000;
  v53 = ((v51 >> 7) | (2 * v51)) << 8;
  v54 = *(v34 + 8 * (v37 ^ 0x4164)) - 244666738;
  v55 = *(v45 + (v33[6] ^ 0x56));
  LOBYTE(v51) = *(v54 + (v33[10] ^ 0x18)) - 95;
  v56 = (((v53 & 0x6B00 | (v52 ^ 0xE20DEC20) & (v53 ^ 0xFFFFB87E)) ^ 0x5831CA8C) & (~v51 | 0xFFFFFF00) | v51 & 0x1F) ^ 0x356E5109;
  v57 = *(v50 + (*v33 ^ 0x2B) - ((2 * (*v33 ^ 0x2B)) & 0xAEu) + 87);
  v58 = ((((v57 >> 7) | (2 * v57)) << 8) ^ 0xFFFFE3FF) & (((v55 << 17) & 0x1000000 | (v55 << 25) | ((*(v49 + (v33[12] ^ 0x7DLL)) ^ v33[12]) << 16)) ^ 0xC6DEE443) | (((v57 >> 7) | (2 * v57)) << 8) & 0x1B00;
  v59 = *(v45 + (v33[5] ^ 0x56));
  LOBYTE(v53) = *(v54 + (v33[4] ^ 0x18)) - 95;
  v60 = (v58 ^ 0x35DB7F7F) & (~v53 | 0xFFFFFF00) | v53 & 0xC3;
  v61 = (v59 << 17) & 0x1000000 | (v59 << 25);
  v62 = *(v50 + (v33[9] ^ 0x7CLL));
  v63 = (((*(v49 + (v33[14] ^ 0x7DLL)) ^ v33[14]) << 16) ^ 0xDF826FF7) & (v61 ^ 0x36FF6FF7);
  LODWORD(v45) = *(v45 + (v33[3] ^ 0x56));
  LODWORD(v45) = (((v45 >> 7) | (2 * v45)) ^ 0x31) << 24;
  LODWORD(v45) = (((*(v49 + (v33[7] ^ 0x7DLL)) ^ v33[7]) << 16) ^ 0xAA0747A1) & (v45 ^ 0x57FF5FB1) | v45 & 0x55555555;
  LODWORD(v49) = *(v50 + (v33[11] ^ 0x7CLL));
  LODWORD(v49) = ((v49 >> 7) | (2 * v49)) << 8;
  LOBYTE(v50) = *(v54 + (v33[1] ^ 0x18)) - 95;
  LODWORD(v45) = (((v49 & 0x9200 | (v45 ^ 0xE6752A11) & (v49 ^ 0xFFFF7BB1)) ^ 0xBD59CC3F) & (~v50 | 0xFFFFFF00) | v50 & 0x70) ^ 0x85F5B5E5;
  LODWORD(v50) = v45 ^ v48 ^ v56 ^ v60;
  v64 = (*(v54 + (v33[15] ^ 0x18)) - 95) & 0xE5 ^ ((v63 ^ 0x149008) & ((((v62 >> 7) | (2 * v62)) << 8) ^ 0xD25D4CCE) ^ (v63 & 0xDA22200 | v61 & 0x20000000) ^ 0x558B33D4) & ((*(v54 + (v33[15] ^ 0x18)) - 95) ^ 0xFFFFFFDF) ^ 0xB8E8E8F7 ^ v50;
  v65 = BYTE2(v64) ^ BYTE2(v56);
  LODWORD(v49) = v64 ^ v45;
  LODWORD(v54) = ((v45 ^ v48) & 0x80000000 | 0x452848F0) ^ (v45 ^ v48) & 0x7FFFFFFF;
  v66 = *(v34 + 8 * (v37 ^ 0x49C3)) - 682464063;
  v67 = *(v34 + 8 * (v37 ^ 0x4B61)) - 1445893003;
  LODWORD(v45) = *(v67 + 4 * (BYTE2(v50) ^ 0xAEu));
  v68 = *(v34 + 8 * (v37 - 15634)) - 72825750;
  v69 = *(v34 + 8 * (v37 ^ 0x48A6)) - 1302757698;
  LODWORD(v45) = v45 ^ *(v66 + 4 * (BYTE3(v54) ^ 0x1D)) ^ *(v68 + 4 * (((v64 ^ v56) >> 8) ^ 0x75u)) ^ (v45 >> 2) & 0x25F5768A ^ (*(v69 + 4 * (v49 ^ 0x14u)) + (v49 ^ 0xABE14EE3) - 1421685304) ^ ((BYTE3(v54) ^ 0x2F) - (BYTE3(v54) ^ 0xED7D58B1));
  v70 = *(v67 + 4 * (BYTE2(v54) ^ 0x98u));
  v71 = v70 ^ *(v68 + 4 * (BYTE1(v50) ^ 0x9Bu)) ^ *(v66 + 4 * (BYTE3(v49) ^ 0xCB)) ^ (v70 >> 2) & 0x25F5768A ^ ((BYTE3(v49) ^ 0xF9) - (BYTE3(v49) ^ 0xED7D5867)) ^ (*(v69 + 4 * ((v64 ^ v56) ^ 0x62u)) + ((v64 ^ v56) ^ 0xABE14E95) - 1421685304);
  v72 = (v64 ^ ~v56) >> 24;
  v73 = v72 - (v72 ^ 0xED7D589E);
  v74 = *(v66 + 4 * (v72 ^ 0x32));
  v75 = (v73 & 0x2A28E ^ v74 & 0x8822A28E ^ 0x77DFFD79) & (v74 & 0x77DD5D71 ^ v73 & 0x12800D71 ^ 0x590BE95E) | (v73 & 0x2A28E ^ v74 & 0x8822A28E) & 0x80200280;
  v76 = (v50 ^ 0xABE14EDE) - 1421685304 + *(v69 + 4 * (v50 ^ 0x29u));
  v77 = BYTE3(v50);
  v78 = (BYTE3(v50) ^ 0x9C) - (BYTE3(v50) ^ 0xED7D5802);
  LODWORD(v50) = *(v67 + 4 * (BYTE2(v49) ^ 0xCCu));
  LODWORD(v50) = *(v68 + 4 * (BYTE1(v54) ^ 0x68u)) ^ v50 ^ v76 ^ (v50 >> 2) & 0x25F5768A ^ v75;
  LODWORD(v49) = *(v66 + 4 * (v77 ^ 0xAE)) ^ v78 ^ *(v67 + 4 * (v65 ^ 0x6Fu)) ^ *(v68 + 4 * (BYTE1(v49) ^ 0x85u)) ^ (*(v67 + 4 * (v65 ^ 0x6Fu)) >> 2) & 0x25F5768A ^ ((v54 ^ 0xABE14EEC) - 1421685304 + *(v69 + 4 * (v54 ^ 0x1Bu)));
  LODWORD(v54) = *(v67 + 4 * (BYTE2(v49) ^ 0x37u));
  v79 = ((BYTE3(v45) ^ 0x6C) - (BYTE3(v45) ^ 0xED7D58F2)) ^ *(v66 + 4 * (BYTE3(v45) ^ 0x5E)) ^ v54 ^ *(v68 + 4 * (BYTE1(v50) ^ 0x68u)) ^ (v54 >> 2) & 0x25F5768A ^ ((v71 ^ 0xABE14EFB) - 1421685304 + *(v69 + 4 * (v71 ^ 0xCu)));
  v80 = (v50 ^ 0xABE14E33) - 1421685304 + *(v69 + 4 * (v50 ^ 0xC4u));
  v81 = *(v67 + 4 * (BYTE2(v45) ^ 0x84u));
  v82 = *(v66 + 4 * (HIBYTE(v71) ^ 0xEE)) ^ ((HIBYTE(v71) ^ 0xDC) - (HIBYTE(v71) ^ 0xED7D5842)) ^ v81 ^ *(v68 + 4 * (BYTE1(v49) ^ 0x24u)) ^ (v81 >> 2) & 0x25F5768A;
  *(v36 - 120) = v35;
  v83 = v82 ^ v80;
  v84 = *(v67 + 4 * (BYTE2(v71) ^ 0x15u));
  LODWORD(v54) = *(v66 + 4 * (BYTE3(v50) ^ 0xC0)) ^ ((BYTE3(v50) ^ 0xF2) - (BYTE3(v50) ^ 0xED7D586C)) ^ *(v68 + 4 * (BYTE1(v45) ^ 0x12u)) ^ ((v49 ^ 0xABE14E37) - 1421685304 + *(v69 + 4 * (v49 ^ 0xC0u))) ^ __ROR4__(((((v84 ^ 0xCD66B619) << 15) | 0x3FFFE) & ((v84 >> 17) & 0x4BEA ^ 0x850423E4) | ((v84 ^ 0xCD66B619) << 15) & 0x68100000) ^ __ROR4__(v84 ^ 0xCD66B619, 15) ^ 0xE38C869C, 17);
  v85 = *(v66 + 4 * (BYTE3(v49) ^ 0x96)) ^ ((BYTE3(v49) ^ 0xA4) - (BYTE3(v49) ^ 0xED7D583A)) ^ *(v68 + 4 * (BYTE1(v71) ^ 0x24u));
  v86 = *(v67 + 4 * (BYTE2(v50) ^ 0xC6u));
  LODWORD(v50) = v85 ^ v86 ^ ((v45 ^ 0xABE14EDC) - 1421685304 + *(v69 + 4 * (v45 ^ 0x2Bu))) ^ (v86 >> 2) & 0x25F5768A;
  LODWORD(v45) = *(v67 + 4 * (BYTE2(v50) ^ 0x3Cu));
  v87 = *(v66 + 4 * (HIBYTE(v79) ^ 0x9D)) ^ ((HIBYTE(v79) ^ 0xAF) - (HIBYTE(v79) ^ 0xED7D5831)) ^ v45 ^ (v45 >> 2) & 0x25F5768A;
  LODWORD(v45) = (v83 ^ 0xABE14E67) + *(v69 + 4 * (v83 ^ 0x90u));
  v88 = v87 ^ 0x1787A5CF ^ *(v68 + 4 * (BYTE1(v54) ^ 0xB6u));
  v89 = ((1421685304 - v45) ^ (v45 - 1421685304 - ((2 * (v45 - 1421685304)) & 0xDB8DF310) - 305727096) ^ 0xEDC6F988 ^ (v88 - (v88 ^ (v45 - 1421685304)))) + v88;
  LODWORD(v45) = *(v67 + 4 * (BYTE2(v79) ^ 0x7Cu));
  LODWORD(v49) = *(v66 + 4 * (HIBYTE(v83) ^ 0x54)) ^ ((HIBYTE(v83) ^ 0x66) - (HIBYTE(v83) ^ 0xED7D58F8)) ^ v45 ^ *(v68 + 4 * (BYTE1(v50) ^ 0x65u)) ^ (v45 >> 2) & 0x25F5768A ^ ((v54 ^ 0xABE14EBC) - 1421685304 + *(v69 + 4 * (v54 ^ 0x4Bu)));
  v90 = *(v67 + 4 * (BYTE2(v83) ^ 0x6Du));
  LODWORD(v45) = v90 ^ ((BYTE3(v54) ^ 0x42) - (BYTE3(v54) ^ 0xED7D58DC)) ^ (v90 >> 2) & 0x25F5768A ^ *(v68 + 4 * (BYTE1(v79) ^ 0x38u)) ^ ((v50 ^ 0xABE14E7F) - 1421685304 + *(v69 + 4 * (v50 ^ 0x88u))) ^ *(v66 + 4 * (BYTE3(v54) ^ 0x70));
  v91 = *(v67 + 4 * (BYTE2(v54) ^ 0x9Fu));
  v92 = v91 ^ ((BYTE3(v50) ^ 0x67) - (BYTE3(v50) ^ 0xED7D58F9)) ^ *(v66 + 4 * (BYTE3(v50) ^ 0x55)) ^ *(v68 + 4 * (BYTE1(v83) ^ 0xE8u)) ^ (v91 >> 2) & 0x25F5768A ^ ((v79 ^ 0xABE14E85) - 1421685304 + *(v69 + 4 * (v79 ^ 0x72u)));
  v93 = *(v67 + 4 * (BYTE2(v92) ^ 0x46u));
  LODWORD(v50) = *(v66 + 4 * (HIBYTE(v89) ^ 0x81)) ^ ((HIBYTE(v89) ^ 0xB3) - (HIBYTE(v89) ^ 0xED7D582D)) ^ v93 ^ *(v68 + 4 * (BYTE1(v45) ^ 0x38u)) ^ (v93 >> 2) & 0x25F5768A ^ ((v49 ^ 0xABE14E73) - 1421685304 + *(v69 + 4 * (v49 ^ 0x84u)));
  v94 = *(v67 + 4 * (BYTE2(v89) ^ 0x59u));
  LODWORD(v54) = *(v66 + 4 * (BYTE3(v49) ^ 0xBF)) ^ ((BYTE3(v49) ^ 0x8D) - (BYTE3(v49) ^ 0xED7D5813)) ^ *(v68 + 4 * (BYTE1(v92) ^ 0x15u)) ^ v94 ^ ((v45 ^ 0xABE14EE1) - 1421685304 + *(v69 + 4 * (v45 ^ 0x16u))) ^ (v94 >> 2) & 0x25F5768A;
  v95 = *(v67 + 4 * (BYTE2(v49) ^ 0x62u));
  v96 = v95 ^ ((BYTE3(v45) ^ 0x6D) - (BYTE3(v45) ^ 0xED7D58F3)) ^ *(v66 + 4 * (BYTE3(v45) ^ 0x5F)) ^ (v95 >> 2) & 0x25F5768A ^ *(v68 + 4 * (BYTE1(v89) ^ 0x53u)) ^ ((v92 ^ 0xABE14E85) - 1421685304 + *(v69 + 4 * (v92 ^ 0x72u)));
  v97 = *(v67 + 4 * (BYTE2(v45) ^ 0x5Eu)) ^ ((HIBYTE(v92) ^ 0x9A) - (HIBYTE(v92) ^ 0xED7D5804)) ^ (*(v67 + 4 * (BYTE2(v45) ^ 0x5Eu)) >> 2) & 0x25F5768A ^ *(v66 + 4 * (HIBYTE(v92) ^ 0xA8)) ^ *(v68 + 4 * (BYTE1(v49) ^ 0x4Fu)) ^ ((v89 ^ 0xABE14E53) - 1421685304 + *(v69 + 4 * (v89 ^ 0xA4u)));
  v98 = *(v67 + 4 * (BYTE2(v97) ^ 0xD1u));
  LODWORD(v49) = *(v66 + 4 * (BYTE3(v50) ^ 0x50)) ^ ((BYTE3(v50) ^ 0x62) - (BYTE3(v50) ^ 0xED7D58FC)) ^ v98 ^ *(v68 + 4 * (BYTE1(v96) ^ 0x4Cu)) ^ (v98 >> 2) & 0x25F5768A ^ ((v54 ^ 0xABE14EFD) - 1421685304 + *(v69 + 4 * (v54 ^ 0xAu)));
  v99 = *(v67 + 4 * (BYTE2(v50) ^ 0xD4u));
  v100 = v99 ^ ((BYTE3(v54) ^ 0x43) - (BYTE3(v54) ^ 0xED7D58DD)) ^ *(v66 + 4 * (BYTE3(v54) ^ 0x71)) ^ (v99 >> 2) & 0x25F5768A ^ ((v96 ^ 0xABE14E6A) - 1421685304 + *(v69 + 4 * (v96 ^ 0x9Du))) ^ __ROR4__(__ROR4__(*(v68 + 4 * (BYTE1(v97) ^ 0x2Cu)) ^ 0x9F9A5737, 14) ^ 0x1A78E03A, 18);
  v101 = *(v67 + 4 * (BYTE2(v54) ^ 0xCCu));
  LODWORD(v45) = v101 ^ ((HIBYTE(v96) ^ 0x15) - (HIBYTE(v96) ^ 0xED7D588B)) ^ *(v66 + 4 * (HIBYTE(v96) ^ 0x27)) ^ *(v68 + 4 * (BYTE1(v50) ^ 0x62u)) ^ (v101 >> 2) & 0x25F5768A ^ ((v97 ^ 0xABE14E57) - 1421685304 + *(v69 + 4 * (v97 ^ 0xA0u)));
  v102 = *(v66 + 4 * (HIBYTE(v97) ^ 7)) ^ ((HIBYTE(v97) ^ 0x35) - (HIBYTE(v97) ^ 0xED7D58AB));
  v103 = *(v67 + 4 * (BYTE2(v96) ^ 0x19u));
  v104 = v102 ^ v103 ^ *(v68 + 4 * (BYTE1(v54) ^ 0xF0u)) ^ (v103 >> 2) & 0x25F5768A ^ ((v50 ^ 0xABE14EBC) - 1421685304 + *(v69 + 4 * (v50 ^ 0x4Bu)));
  LODWORD(v50) = *(v67 + 4 * (BYTE2(v104) ^ 0x37u));
  LODWORD(v50) = *(v66 + 4 * (BYTE3(v49) ^ 0x23)) ^ ((BYTE3(v49) ^ 0x11) - (BYTE3(v49) ^ 0xED7D588F)) ^ v50 ^ *(v68 + 4 * (BYTE1(v45) ^ 0x53u)) ^ (v50 >> 2) & 0x25F5768A ^ ((v100 ^ 0xABE14EF1) - 1421685304 + *(v69 + 4 * (v100 ^ 6u)));
  v105 = *(v67 + 4 * (BYTE2(v49) ^ 0x5Cu));
  v106 = *(v66 + 4 * (HIBYTE(v100) ^ 0x19)) ^ ((HIBYTE(v100) ^ 0x2B) - (HIBYTE(v100) ^ 0xED7D58B5)) ^ v105 ^ *(v68 + 4 * (BYTE1(v104) ^ 0x7Bu)) ^ (v105 >> 2) & 0x25F5768A ^ ((v45 ^ 0xABE14E1F) - 1421685304 + *(v69 + 4 * (v45 ^ 0xE8u)));
  v107 = (v104 ^ 0xABE14EF0) - 1421685304 + *(v69 + 4 * (v104 ^ 7u));
  v108 = *(v67 + 4 * (BYTE2(v100) ^ 0xC3u));
  v109 = *(v66 + 4 * (BYTE3(v45) ^ 0x9D)) ^ ((BYTE3(v45) ^ 0xAF) - (BYTE3(v45) ^ 0xED7D5831)) ^ *(v68 + 4 * (BYTE1(v49) ^ 0xCCu)) ^ v108 ^ (v108 >> 2) & 0x25F5768A;
  HIDWORD(v110) = v109 ^ ~v107;
  LODWORD(v110) = v109 ^ v107;
  LODWORD(v45) = *(v67 + 4 * (BYTE2(v45) ^ 0x40u));
  v111 = *(v66 + 4 * (HIBYTE(v104) ^ 6)) ^ ((HIBYTE(v104) ^ 0x34) - (HIBYTE(v104) ^ 0xED7D58AA)) ^ v45 ^ *(v68 + 4 * (BYTE1(v100) ^ 0x84u)) ^ (v45 >> 2) & 0x25F5768A ^ ((v49 ^ 0xABE14ED2) - 1421685304 + *(v69 + 4 * (v49 ^ 0x25u)));
  v112 = *(v67 + 4 * (BYTE2(v111) ^ 4u));
  HIDWORD(v110) = (v110 >> 1) ^ 0xDE21BE38;
  LODWORD(v110) = HIDWORD(v110);
  v113 = v110 >> 31;
  v114 = *(v66 + 4 * (BYTE3(v50) ^ 0xE1)) ^ ((BYTE3(v50) ^ 0xD3) - (BYTE3(v50) ^ 0xED7D584D)) ^ v112 ^ (v112 >> 2) & 0x25F5768A ^ ((v106 ^ 0xABE14E77) - 1421685304 + *(v69 + 4 * (v106 ^ 0x80u))) ^ *(v68 + 4 * (BYTE1(v113) ^ 0x22u));
  v115 = *(v67 + 4 * (BYTE2(v50) ^ 0x90u));
  v116 = *(v66 + 4 * (HIBYTE(v106) ^ 0x3B)) ^ ((HIBYTE(v106) ^ 9) - (HIBYTE(v106) ^ 0xED7D5897)) ^ v115 ^ *(v68 + 4 * (BYTE1(v111) ^ 0x36u)) ^ (v115 >> 2) & 0x25F5768A ^ (((v110 >> 31) ^ 0xABE14EBE) - 1421685304 + *(v69 + 4 * ((v110 >> 31) ^ 0x49u)));
  v117 = *(v67 + 4 * (BYTE2(v106) ^ 0xEFu));
  v118 = v117 ^ ((HIBYTE(v113) ^ 0x4B) - (HIBYTE(v113) ^ 0xED7D58D5)) ^ (v117 >> 2) & 0x25F5768A ^ *(v68 + 4 * (BYTE1(v50) ^ 0x41u)) ^ ((v111 ^ 0xABE14E82) - 1421685304 + *(v69 + 4 * (v111 ^ 0x75u))) ^ *(v66 + 4 * (HIBYTE(v113) ^ 0x79));
  LODWORD(v54) = *(v67 + 4 * (BYTE2(v113) ^ 0x23u));
  v119 = v54 ^ ((HIBYTE(v111) ^ 0x82) - (HIBYTE(v111) ^ 0xED7D581C)) ^ *(v66 + 4 * (HIBYTE(v111) ^ 0xB0)) ^ *(v68 + 4 * (BYTE1(v106) ^ 0x71u)) ^ (v54 >> 2) & 0x25F5768A ^ ((v50 ^ 0xABE14E21) - 1421685304 + *(v69 + 4 * (v50 ^ 0xD6u)));
  LODWORD(v50) = *(v67 + 4 * (BYTE2(v119) ^ 0x1Bu));
  v120 = v50 ^ ((HIBYTE(v114) ^ 0x6A) - (HIBYTE(v114) ^ 0xED7D58F4)) ^ *(v66 + 4 * (HIBYTE(v114) ^ 0x58)) ^ *(v68 + 4 * (BYTE1(v118) ^ 0xA3u)) ^ (v50 >> 2) & 0x25F5768A ^ ((v116 ^ 0xABE14EE5) - 1421685304 + *(v69 + 4 * (v116 ^ 0x12u)));
  v121 = *(v66 + 4 * HIBYTE(v116)) ^ ((HIBYTE(v116) ^ 0x32) - (HIBYTE(v116) ^ 0xED7D58AC)) ^ *(v68 + 4 * (BYTE1(v119) ^ 0xC5u));
  LODWORD(v50) = *(v67 + 4 * (BYTE2(v114) ^ 0x2Cu));
  v122 = v50 ^ 0xDABBAB45 ^ (v50 >> 2) & 0x25F5768A;
  if ((v121 & 0x40 & ~v50) != 0)
  {
    v123 = -(v121 & 0x40);
  }

  else
  {
    v123 = v121 & 0x40;
  }

  v124 = ((v118 ^ 0xABE14EF6) - 1421685304 + *(v69 + 4 * (v118 ^ 1u))) ^ v121 & 0xFFFFFFBF ^ (v123 + v122);
  v125 = (v119 ^ 0xABE14EC0) - 1421685304 + *(v69 + 4 * (v119 ^ 0x37u));
  v126 = HIBYTE(v119);
  v127 = (HIBYTE(v119) ^ 0x55) - (HIBYTE(v119) ^ 0xED7D58CB);
  v128 = *(v67 + 4 * (BYTE2(v116) ^ 0x61u));
  v129 = v128 ^ ((HIBYTE(v118) ^ 1) - (HIBYTE(v118) ^ 0xED7D589F)) ^ *(v66 + 4 * (HIBYTE(v118) ^ 0x33)) ^ *(v68 + 4 * (BYTE1(v114) ^ 0xE6u)) ^ (v128 >> 2) & 0x25F5768A ^ v125;
  v130 = *(v67 + 4 * (BYTE2(v118) ^ 0x7Bu));
  v131 = *(v66 + 4 * (v126 ^ 0x67)) ^ v127 ^ v130 ^ *(v68 + 4 * (BYTE1(v116) ^ 0x6Eu)) ^ (v130 >> 2) & 0x25F5768A ^ ((v114 ^ 0xABE14E5D) - 1421685304 + *(v69 + 4 * (v114 ^ 0xAAu)));
  v132 = *(v67 + 4 * (BYTE2(v131) ^ 0x22u));
  v133 = *(v66 + 4 * (HIBYTE(v120) ^ 0x63)) ^ ((HIBYTE(v120) ^ 0x51) - (HIBYTE(v120) ^ 0xED7D58CF)) ^ v132 ^ *(v68 + 4 * (BYTE1(v129) ^ 0x82u)) ^ (v132 >> 2) & 0x25F5768A ^ ((v124 ^ 0xABE14EB6) - 1421685304 + *(v69 + 4 * (v124 ^ 0x41u)));
  v134 = *(v67 + 4 * (BYTE2(v120) ^ 0x66u));
  v135 = *(v66 + 4 * (HIBYTE(v124) ^ 0xB2)) ^ ((HIBYTE(v124) ^ 0x80) - (HIBYTE(v124) ^ 0xED7D581E)) ^ v134 ^ *(v68 + 4 * (BYTE1(v131) ^ 0x34u)) ^ ((v129 ^ 0xABE14E65) - 1421685304 + *(v69 + 4 * (v129 ^ 0x92u))) ^ ((v134 & 0x97D5DA2B ^ 0x9741D801) >> (BYTE2(v83) & 2 ^ 2) >> (BYTE2(v83) & 2));
  v136 = *(v67 + 4 * (BYTE2(v124) ^ 0xCAu));
  v137 = *(v67 + 4 * (BYTE2(v129) ^ 0xC5u));
  v138 = *(v66 + 4 * (HIBYTE(v129) ^ 0x90)) ^ ((HIBYTE(v129) ^ 0xA2) - (HIBYTE(v129) ^ 0xED7D583C)) ^ *(v68 + 4 * (BYTE1(v120) ^ 7u)) ^ v136 ^ ((v131 ^ 0xABE14EF0) - 1421685304 + *(v69 + 4 * (v131 ^ 7u))) ^ (v136 >> 2) & 0x25F5768A;
  v139 = v137 ^ ((HIBYTE(v131) ^ 0x1E) - (HIBYTE(v131) ^ 0xED7D5880)) ^ *(v66 + 4 * (HIBYTE(v131) ^ 0x2C)) ^ (v137 >> 2) & 0x25F5768A ^ ((v120 ^ 0xABE14E39) - 1421685304 + *(v69 + 4 * (v120 ^ 0xCEu))) ^ *(v68 + 4 * (BYTE1(v124) ^ 0x61u));
  v140 = *(&off_1010A0B50 + (v37 ^ 0x4449)) - 173732851;
  v141 = *(&off_1010A0B50 + (v37 ^ 0x4FAE)) - 328458890;
  v142 = *(&off_1010A0B50 + v37 - 13213) - 635708027;
  v143 = *(&off_1010A0B50 + (v37 ^ 0x4FB8)) - 1633520430;
  v144 = *&v141[4 * (BYTE1(v138) ^ 0x47)] - 1436268232;
  v145 = v144 ^ *&v140[4 * (HIBYTE(v133) ^ 0x9D)] ^ *&v142[4 * (BYTE2(v139) ^ 0x22)] ^ (-648207610 * v144) ^ (v143[v135 ^ 0x45] >> 2) & 3 ^ v143[v135 ^ 0x45];
  LOBYTE(v130) = (v143[v138 ^ 0x10] >> 2) & 3 ^ v143[v138 ^ 0x10];
  v146 = BYTE2(v135) ^ 0xA6;
  v147 = v139 ^ 0xE2;
  v148 = *&v140[4 * (HIBYTE(v135) ^ 0x20)];
  v149 = *&v140[4 * (HIBYTE(v138) ^ 0x68)];
  v150 = *&v141[4 * (BYTE1(v139) ^ 0xB)];
  v151 = *&v141[4 * (BYTE1(v133) ^ 0x39)];
  LODWORD(v141) = *&v141[4 * (BYTE1(v135) ^ 0x70)];
  v152 = *&v142[4 * (BYTE2(v133) ^ 0xF4)];
  v153 = v143[v133 ^ 0xCLL];
  v154 = *&v140[4 * (HIBYTE(v139) ^ 0xE4)] ^ *&v142[4 * (BYTE2(v138) ^ 0x54)] ^ (v141 - 1436268232) ^ ((v153 >> 2) & 3 | 0x10) ^ v153 ^ (-648207610 * (v141 - 1436268232)) ^ 0x26DEB498;
  v155 = v145 ^ v154 ^ 0xB6EAFD7F;
  v156 = *(v36 - 136) ^ 0x38B808F0;
  v157 = v148 ^ v152 ^ (v150 - 1436268232) ^ (-648207610 * (v150 - 1436268232)) ^ v130 ^ 0x6E1276B8 ^ v155;
  v158 = v149 ^ *&v142[4 * v146] ^ (v151 - 1436268232) ^ (-648207610 * (v151 - 1436268232)) ^ (v143[v147] >> 2) & 3 ^ v143[v147] ^ v145 ^ 0x425187C8 ^ v157;
  v159 = *(v36 - 144);
  LODWORD(v142) = v154 ^ v159;
  v160 = v158 ^ v159;
  v161 = v155 ^ v156 ^ v158;
  v162 = v157 ^ v156;
  v163 = *(&off_1010A0B50 + (v37 ^ 0x4351)) - 703110459;
  v164 = *(&off_1010A0B50 + (v37 ^ 0x4EF6)) - 273975698;
  v165 = *&v163[4 * (HIBYTE(v162) ^ 0x81)];
  HIDWORD(v166) = v165 ^ 0x1AAB16D;
  LODWORD(v166) = v165 ^ 0x8C000000;
  v167 = *(&off_1010A0B50 + v37 - 16133) - 699246883;
  v168 = *(&off_1010A0B50 + (v37 ^ 0x450A)) - 1502972238;
  v169 = ((v162 ^ 0x37) + (v162 ^ 0x8E)) ^ v168[v162 ^ 0x3BLL];
  v170 = (*&v164[4 * (BYTE2(v162) ^ 0x98)] + 1152378879) ^ (v166 >> 25) ^ (2 * (v166 >> 25) * (v166 >> 25));
  v171 = *&v167[4 * (BYTE1(v162) ^ 0xDF)];
  LODWORD(v141) = v170 ^ v171 ^ (v171 >> 2) & 0x22124C7D;
  v172 = *(&off_1010A0B50 + (v37 ^ 0x51F8)) - 673740526;
  v173 = *&v163[4 * ((v142 >> 24) ^ 0xF2)];
  HIDWORD(v166) = v173 ^ 0x1AAB16D;
  LODWORD(v166) = v173 ^ 0x8C000000;
  LOBYTE(v143) = (v142 ^ 0x94) + (v142 ^ 0x2D);
  v174 = v142 ^ 0x98;
  v175 = *&v164[4 * (BYTE2(v142) ^ 0x1B)];
  LODWORD(v142) = *&v167[4 * (BYTE1(v142) ^ 3)];
  v176 = v142 ^ (v175 + 1152378879) ^ (v166 >> 25) ^ (2 * (v166 >> 25) * (v166 >> 25));
  LODWORD(v142) = (v142 >> 2) & 0x22124C7D ^ v168[v174] ^ v143;
  v177 = *(&off_1010A0B50 + (v37 ^ 0x50B8));
  LODWORD(v142) = v176 ^ v142;
  *(v36 - 168) = v142;
  v177 -= 1445560878;
  v178 = v141 ^ v169;
  LODWORD(v174) = (v141 ^ v169) ^ 0xE6;
  v179 = *(&off_1010A0B50 + v37 - 11950) - 689859090;
  v180 = (v141 >> 24) ^ 0x63;
  v181 = *(&off_1010A0B50 + (v37 ^ 0x4A7A)) - 1443961214;
  v182 = *&v172[4 * (BYTE2(v141) ^ 0x3A)] ^ 0x7DC7A394;
  v183 = (-624655686 * v182) ^ v182 ^ *(v177 + 4 * (BYTE1(v141) ^ 0xFCu)) ^ *&v179[4 * v174] ^ (*&v179[4 * v174] >> 4) & 0x5D9F249 ^ v142;
  LODWORD(v141) = *&v163[4 * (HIBYTE(v161) ^ 0x56)];
  HIDWORD(v166) = v141 ^ 0x1AAB16D;
  LODWORD(v166) = v141 ^ 0x8C000000;
  v184 = v183 ^ v181[v180];
  LODWORD(v180) = *&v167[4 * (BYTE1(v161) ^ 0x9B)];
  LODWORD(v141) = (*&v164[4 * (BYTE2(v161) ^ 0xB5)] + 1152378879) ^ v180 ^ (v166 >> 25) ^ (2 * (v166 >> 25) * (v166 >> 25));
  LODWORD(v163) = *&v163[4 * (HIBYTE(v160) ^ 0x2B)];
  HIDWORD(v166) = v163 ^ 0x1AAB16D;
  LODWORD(v166) = v163 ^ 0x8C000000;
  LODWORD(v174) = v141 ^ (v180 >> 2) & 0x22124C7D ^ v168[v161 ^ 0x34] ^ ((v161 ^ 0x38) + (v161 ^ 0x81)) ^ 0x2C1EA415;
  LODWORD(v180) = *&v164[4 * (BYTE2(v160) ^ 0x66)] + 1152378879;
  LODWORD(v164) = *&v167[4 * (BYTE1(v160) ^ 0x89)];
  v185 = v164 ^ v180 ^ (v166 >> 25) ^ (2 * (v166 >> 25) * (v166 >> 25)) ^ (v164 >> 2) & 0x22124C7D ^ v168[v160 ^ 0x67] ^ ((v160 ^ 0x6B) + (v160 ^ 0xD2));
  *(v36 - 176) = v185;
  v233 = v184 ^ 0xB1A4AE80;
  LODWORD(v164) = v174 ^ v184;
  LODWORD(v168) = v185 ^ v174 ^ v184;
  LODWORD(v141) = v168 ^ 0x93555CD8 ^ v178;
  v186 = *&v172[4 * (BYTE2(v141) ^ 0x18)] ^ 0x7DC7A394;
  v187 = *&v179[4 * (v168 ^ 0xD8 ^ v178 ^ 0x80)];
  v188 = *(v177 + 4 * (BYTE1(v141) ^ 0xADu)) ^ v233 ^ v186 ^ v187 ^ (v187 >> 4) & 0x5D9F249 ^ v181[(v141 >> 24) ^ 0x46] ^ (-624655686 * v186);
  *(v36 - 156) = v188;
  LODWORD(v166) = __ROR4__(v164 ^ 0x8BC1C2A0 ^ v188 ^ 0xAE2B89AD, 19) ^ 0x9A49C55B;
  HIDWORD(v166) = v166;
  v232 = v166 >> 13;
  LODWORD(v180) = v232 ^ 0x1C52C218 ^ v178 ^ 0x5BE5126D;
  LODWORD(v164) = *&v172[4 * (BYTE2(v180) ^ 0xCE)] ^ 0x7DC7A394;
  LODWORD(v140) = BYTE1(v180) ^ 0x45;
  LODWORD(v180) = *&v179[4 * (v232 ^ 0x18 ^ v178 ^ 0x7A)];
  v189 = v232 ^ 0x1C52C218 ^ v178 ^ 0x55D4B90F;
  v231 = v180 ^ *(v177 + 4 * v140) ^ v164 ^ (v180 >> 4) & 0x5D9F249 ^ v181[((v232 ^ 0x1C52C218 ^ v178) >> 24) ^ 0x5CLL] ^ v188 ^ 0xAE2B89AD ^ (-624655686 * v164);
  LODWORD(v174) = v231 ^ 0x39A19955 ^ v168 ^ 0x93555CD8;
  *(v36 - 136) = v231 ^ 0x39A19955;
  LODWORD(v140) = *&v179[4 * ~(v189 ^ v174)];
  LODWORD(v164) = *&v172[4 * (((v189 ^ v174) >> 16) ^ 0x20)] ^ 0x7DC7A394;
  LODWORD(v164) = *(v177 + 4 * (((v189 ^ v174) >> 8) ^ 0x24u)) ^ v164 ^ v140 ^ (v140 >> 4) & 0x5D9F249 ^ v181[((v189 ^ v174) >> 24) ^ 3] ^ (-624655686 * v164) ^ 0x9FC227B6;
  v190 = v164 ^ v232 ^ 0x1C52C218;
  v191 = v190 ^ v189;
  v192 = *&v172[4 * (BYTE2(v191) ^ 0xDF)] ^ 0x7DC7A394;
  LODWORD(v141) = *&v179[4 * (v191 ^ 0xBE)];
  v193 = v164 ^ v231 ^ 0x39A19955;
  v230 = v192 ^ *(v177 + 4 * (BYTE1(v191) ^ 0xE0u)) ^ v141 ^ (v141 >> 4) & 0x5D9F249 ^ v181[HIBYTE(v191) ^ 0xE0] ^ (-624655686 * v192) ^ v193;
  LODWORD(v163) = v230 ^ 0x5F6B7D0C ^ v174;
  *(v36 - 144) = v163;
  LODWORD(v164) = *&v172[4 * (((v163 ^ v191 ^ 0x7F6BAD63) >> 16) ^ 0x3F)] ^ 0x7DC7A394;
  LODWORD(v140) = *&v179[4 * (v163 ^ v191 ^ 0x63 ^ 1)];
  LODWORD(v164) = v164 ^ *(v177 + 4 * (((v163 ^ v191 ^ 0xAD63) >> 8) ^ 0x46u)) ^ v140 ^ (v140 >> 4) & 0x5D9F249 ^ v181[((v163 ^ v191 ^ 0x7F6BAD63) >> 24) ^ 0xE0] ^ (-624655686 * v164);
  v194 = v190 ^ 0x35B64AB2 ^ v164;
  v195 = v230 ^ 0xEDE55E72 ^ v164;
  LODWORD(v174) = *&v179[4 * ((v194 ^ v191 ^ 0x63) ^ 0x45)];
  LODWORD(v141) = *&v172[4 * (((v194 ^ v191 ^ 0x7F6BAD63) >> 16) ^ 0xD1)] ^ 0x7DC7A394;
  LODWORD(v141) = *(v177 + 4 * (((v194 ^ v191 ^ 0xAD63) >> 8) ^ 0x8Bu)) ^ v141 ^ v174 ^ (v174 >> 4) & 0x5D9F249 ^ v181[((v194 ^ v191 ^ 0x7F6BAD63) >> 24) ^ 0x73] ^ (-624655686 * v141) ^ 0x7CCD2860;
  v196 = v230 ^ 0x5F6B7D0C ^ v190;
  v229 = v194 ^ v191 ^ 0x7F6BAD63;
  LODWORD(v228) = v194 ^ v163;
  LODWORD(v164) = v141 ^ v196;
  v197 = v194 ^ v163 ^ 0xF40096D3 ^ v141 ^ v196;
  v198 = *&v172[4 * (((v197 ^ v229 ^ 0x5EB1792B) >> 16) ^ 0xC4)] ^ 0x7DC7A394;
  LODWORD(v174) = *&v179[4 * ((v197 ^ v229 ^ 0x2B) ^ 0xE5)];
  LODWORD(v227) = v197 ^ v229 ^ 0x5EB1792B;
  HIDWORD(v228) = v195;
  HIDWORD(v226) = v141 ^ v195;
  LODWORD(v163) = v198 ^ *(v177 + 4 * (((v197 ^ v229 ^ 0x792B) >> 8) ^ 0xCCu)) ^ v174 ^ (v174 >> 4) & 0x5D9F249 ^ v181[BYTE3(v227) ^ 0xDLL] ^ (-624655686 * v198) ^ v141 ^ v195;
  LODWORD(v180) = v163 ^ v141 ^ v196;
  v199 = v180 ^ 0x6DD3EBF0;
  v200 = v199 ^ v229 ^ 0x5EB1792B;
  LODWORD(v174) = *&v172[4 * (BYTE2(v200) ^ 0x1D)] ^ 0x7DC7A394;
  LODWORD(v140) = *&v179[4 * (v180 ^ 0xF0 ^ v229 ^ 0x2B ^ 0x2B)];
  LODWORD(v226) = v163;
  v201 = v174 ^ *(v177 + 4 * (((v180 ^ 0xEBF0 ^ v229 ^ 0x792B) >> 8) ^ 0x34u)) ^ v140 ^ (v140 >> 4) & 0x5D9F249 ^ v181[HIBYTE(v200) ^ 0xA1] ^ (-624655686 * v174) ^ v163;
  v202 = v201 ^ 0x33EC9CE4;
  v203 = v201 ^ 0x33EC9CE4 ^ v197 ^ 0x6D54AE4A;
  *(v36 - 152) = v203;
  v204 = v203 ^ v200;
  LODWORD(v179) = *&v179[4 * (v204 ^ 0x46)];
  LODWORD(v172) = *&v172[4 * (BYTE2(v204) ^ 0x16)] ^ 0x7DC7A394;
  LODWORD(v179) = *(v177 + 4 * (BYTE1(v204) ^ 0xF2u)) ^ v172 ^ v179 ^ (v179 >> 4) & 0x5D9F249;
  HIDWORD(v225) = v201;
  v205 = v181[HIBYTE(v204) ^ 0x58] ^ 0x4CB95122 ^ (((v179 ^ v201 ^ (-624655686 * v172) ^ 0xB23748F3) & 0x6268C25F ^ 0x89C36C67) & ((v179 ^ v201 ^ (-624655686 * v172) ^ 0xB23748F3) & 0x9D973DA0 ^ 0xE378C27F) | (v179 ^ v201 ^ (-624655686 * v172) ^ 0xB23748F3) & 0x14141180);
  LODWORD(v225) = v202 ^ v197;
  LODWORD(v172) = v202 ^ v197 ^ 0xD0162F83;
  v206 = (858863997 - v172);
  HIDWORD(v223) = v232 ^ 0x1C52C218 ^ v178 ^ 0xDF65EE69;
  LODWORD(v224) = *(v36 - 168) ^ 0xAA56FA8C;
  LODWORD(v179) = HIDWORD(v223) - (v224 + (v188 ^ 0xEB744776)) - v172;
  v207 = (v179 - 380113151);
  v208 = (v179 + 2122741266);
  v209 = v208 - ((v180 ^ 0xC8EFDDB2) + (v196 ^ 0xB721375C)) - 995869434;
  LODWORD(v222) = *(v36 - 176) ^ 0xA3A95017;
  HIDWORD(v222) = v168 ^ 0x447FDEC3;
  HIDWORD(v221) = v202 ^ v199;
  HIDWORD(v224) = v205;
  v210 = v202 ^ v199 ^ 0x53315676 ^ v205;
  HIDWORD(a13) = v200 ^ 0xE67C1CF9 ^ v210;
  v211 = (v193 ^ 0x15D8ED25) - (v222 + (v178 ^ 0x95DA4E37) + (v168 ^ 0x447FDEC3)) + v209 - HIDWORD(a13) + 359145386;
  v217 = *(&off_1010A0B50 + v37 - 12714) - 9286894;
  v219 = *(&off_1010A0B50 + v37 - 14855) - 381674547;
  v220 = *(&off_1010A0B50 + v37 - 14110) - 530937346;
  v218 = *(&off_1010A0B50 + v37 - 13681) - 207569647;
  *(v36 - 128) = (((*(v36 - 128) ^ 0xA63544D8) - 15444800) ^ ((*(v36 - 128) ^ 0xF83ACA76) - 1592010222) ^ ((*(v36 - 128) ^ 0x49273C0C) + 268840044)) - 1950547740;
  LODWORD(v166) = __ROR4__(v232 ^ 0x1C52C218 ^ v168 ^ 0x93555CD8 ^ v206, 28) ^ 0xE8FDE758;
  HIDWORD(v166) = v166;
  HIDWORD(v216) = (v166 >> 4) ^ v206;
  LODWORD(v216) = v232 ^ 0x1C52C218 ^ *(v36 - 136);
  HIDWORD(v215) = *(v36 - 144) ^ 0xA7566E60;
  LODWORD(v215) = v164 ^ v211 & 0x10000000 ^ v211 & 0x10000000 ^ 0x379347E2;
  HIDWORD(v214) = (((v208 ^ v204) & 0x12B8C10E ^ 0x95DD47EB) & ((v208 ^ v204) & 0xED473EF1 ^ 0x5BF8C57F) | (v208 ^ v204) & 0x68023810) ^ v208;
  LODWORD(v214) = v209 ^ 0xE46F794B;
  LODWORD(v223) = v207;
  HIDWORD(v213) = *(v36 - 156) ^ v207;
  HIDWORD(v227) = v197;
  LODWORD(v213) = v199 ^ v197;
  LODWORD(v221) = v210;
  HIDWORD(a4) = v210 ^ *(v36 - 152);
  return (*(a32 + 8 * v37))(v199, v207, v208, 84, 2344419556, v206, v209, 268840044, a2, a3, a4, v213, v214, v215, v216, v217, v218, v219, v220, a13, v221, v222, __PAIR64__(v196 ^ 0xB721375C, v209), v223, v224, v225, __PAIR64__(v180, v200), v226, v227, v228);
}

uint64_t sub_100251780(unsigned int a1)
{
  v10 = v5 < v6;
  *(v8 + a1) = *(v2 + (a1 & 0xF)) ^ *(v1 + a1) ^ *((a1 & 0xF) + v4 + 5) ^ (-39 * (a1 & 0xF)) ^ *((a1 & 0xF) + v3 + 3);
  if (v10 == a1 + 1 > 0x487823C)
  {
    v10 = a1 - 75989564 < v5;
  }

  return (*(v9 + 8 * ((v10 * ((v7 + 530225945) & 0xE0657DF3 ^ 0x5B18)) ^ v7)))();
}

uint64_t sub_10025182C()
{
  v9 = v6 - 1;
  *(v7 + v9) ^= *(v0 + (v9 & 0xF)) ^ *(v2 + (v9 & 0xF)) ^ ((v9 & 0xF) * v4) ^ *(v1 + (v9 & 0xF));
  return (*(v8 + 8 * (((v9 == 0) * v5) ^ v3)))();
}

uint64_t sub_100255A38(int a1, double a2, __n128 a3)
{
  a3.n128_u16[0] = 10537;
  a3.n128_u8[2] = 41;
  a3.n128_u8[3] = 41;
  a3.n128_u8[4] = 41;
  a3.n128_u8[5] = 41;
  a3.n128_u8[6] = 41;
  a3.n128_u8[7] = 41;
  return (*(v3 + 8 * a1))(xmmword_100F523B0, a3);
}

void sub_100255A90(uint64_t a1)
{
  v1 = *(a1 + 64) - 155453101 * ((a1 - 2 * (a1 & 0xC6B20D7B) - 961409669) ^ 0x209416B4);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100255C1C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 558611271;
  v3 = 1022166737 * (((&STACK[0x10ED8] | 0x6D86D180258CC612) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x92792E7FDA7339E8)) ^ 0x130CA3FD9F9C2780);
  STACK[0x10ED8] = (*(v0 + 23) & 0x60 | 4) + v3;
  LODWORD(STACK[0x10EE0]) = -1022166737 * (((&STACK[0x10ED8] | 0x6D86D180258CC612) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x92792E7FDA7339E8)) ^ 0x9F9C2780);
  LODWORD(STACK[0x10EE4]) = v3 + v1 + 782565441;
  STACK[0x10EF0] = v3 ^ 0x44;
  LODWORD(STACK[0x10EFC]) = v3 + v2 + 3298;
  LODWORD(STACK[0x10EE8]) = v3 + v2 - 73;
  LODWORD(STACK[0x10EEC]) = v2 - v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4029)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * SLODWORD(STACK[0x10EF8])))(v5);
}

uint64_t sub_100255D54()
{
  v4 = *STACK[0xB2A0];
  v3 = *(STACK[0xB2A0] + 8);
  v5 = STACK[0x6BDC];
  v6 = STACK[0xB2B0];
  v7 = STACK[0xB2B8];
  v8 = LODWORD(STACK[0x6BDC]) ^ 0xDFCFF6E2;
  v9 = 193924789 * (((v2 | 0xEA4697A4C0EE6ADALL) - (v2 & 0xEA4697A4C0EE6AD8)) ^ 0x11DD8750765558BCLL);
  LODWORD(STACK[0x10F18]) = v9 + 1300748044;
  STACK[0x10ED8] = v1;
  STACK[0x10EF8] = v9 ^ v4 ^ 0x3E8E51BB8BCE3437;
  LODWORD(STACK[0x10EE0]) = v9 + v0 - 6960;
  LODWORD(STACK[0x10F00]) = v9 + v8 + ((2 * v5) & 0xBF9FEDC4) + 1840766782;
  STACK[0x10EE8] = v6;
  STACK[0x10F10] = v9 ^ v3 ^ 0xDAB48148B3C0BD90;
  STACK[0x10F08] = v7;
  v10 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 42807)))(&STACK[0x10ED8]);
  v11 = STACK[0x10EF0];
  LODWORD(STACK[0xB2DC]) = STACK[0x10EF0];
  return (*(v10 + 8 * ((27388 * (v11 == ((v0 + 1292539963) & 0xB2F5CF7B) - 371901482)) ^ v0)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

uint64_t sub_100255EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  *(v57 - 160) = &a53;
  *(v57 - 144) = &a44;
  *(v57 - 152) = v54 - 28577 + 193924789 * ((((2 * v55) | 0x31A634B0) - v55 - 416488024) ^ 0xAE68283E) + 8947;
  (*(v53 + 8 * ((v54 - 28577) ^ 0xC542)))(v57 - 160);
  v58 = 353670337 * (((v55 ^ 0x108A0902) & 0x138A9982 | (v55 ^ 0xC0240479) & 0xEC756679) ^ 0x648FF546);
  *(v57 - 152) = &a53;
  *(v57 - 136) = v56;
  *(v57 - 160) = v58 + v54 - 15525;
  *(v57 - 144) = v58 + 2063984254;
  v59 = (*(v53 + 8 * (v54 + 19478)))(v57 - 160);
  return (*(v53 + 8 * ((((v54 - 53173) & 0x6DFB5FEF) - 1845153070) ^ (v54 - 28577))))(v59);
}

uint64_t sub_10025603C()
{
  STACK[0x55E0] = STACK[0x83D0] + 8;
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21403 + 44 * (v0 ^ 0x654))))();
}

void sub_1002560D8(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1112314453 * ((2 * (a1 & 0x3B828A15) - a1 - 998410774) ^ 0x2B2B5F33));
  v3 = v2 + (*(a1 + 32) ^ 0x9A4000815EE1E11);
  v2[0] = ((2 * v3) & 0x9DD23C82) + (v3 ^ 0x4EE91E41);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_10025625C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 44798)))(112);
  STACK[0x2ED0] = v2;
  return (*(v1 + 8 * ((87 * (v2 != 0)) ^ v0)))();
}

uint64_t sub_100256398@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, int a18)
{
  v20 = a1 ^ 0xC613;
  v21 = 139493411 * ((2 * (&a15 & 0x2B9A4620) - &a15 - 731530791) ^ 0xD848589C);
  a16 = v21 + v18 + (((a1 ^ 0xC613) - 16369) | 0x8602) + 173214392;
  a15 = a13;
  a18 = (a1 ^ 0xC613) - v21 - 2252;
  a17 = a6;
  v22 = (*(v19 + 8 * ((a1 ^ 0xC613) + 35601)))(&a15);
  return (*(v19 + 8 * v20))(v22);
}

uint64_t sub_100256478()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393381;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100256500()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762633137) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0xDC2E02FD | (&STACK[0x10000] + 3800) & 0x23D1FD00) ^ 0xED2FCFD9));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD7F9)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((55318 * (*STACK[0x970] > ((v0 + 20437) ^ 0x74D4) - 6593)) ^ v0)))(v2);
}

void sub_100256730(_DWORD *a1)
{
  v1 = *a1 + 17902189 * ((-2 - ((~a1 | 0x95C07F27) + (a1 | 0x6A3F80D8))) ^ 0x1B8F6937);
  v2 = *(&off_1010A0B50 + (v1 ^ 0x6888)) - 810145054;
  (*&v2[8 * (v1 + 24057)])(*(&off_1010A0B50 + (v1 - 23485)) - 1970742779, v3, 16);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100256998(int8x16_t a1, double a2, int32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v68 = vld4q_s8(a23);
  v57 = veorq_s8(v68.val[1], a1);
  _Q22 = vmovl_high_u8(v57);
  _Q21 = vmovl_u8(*v57.i8);
  v60 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm
  {
    SHLL2           V21.4S, V21.8H, #0x10
    SHLL2           V22.4S, V22.8H, #0x10
  }

  v65 = vmovl_u8(*&veorq_s8(v68.val[2], a1)).u64[0];
  v68.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v68.val[3], a1)));
  v66 = vorrq_s8(vorrq_s8(vorrq_s8(v60, vshll_n_u16(v65, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v68.val[0], a1))), 0x18uLL)), v68.val[2]);
  v68.val[2] = veorq_s8(vandq_s8(v66, vdupq_n_s32(0x69D5C71Bu)), (*&v68.val[2] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  *v55 = vaddq_s32(vsubq_s32(v66, vaddq_s32(v68.val[2], v68.val[2])), a3).u32[0];
  return (*(v54 + 8 * v53))(*(v54 + 8 * v53), a5, (v53 - 19778) | 0x21C2, a7, a8, -1472335120, 0x3FFFFFFFEA0F572FLL, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

void *sub_100256CB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  STACK[0xEC0] = a2;
  LODWORD(STACK[0xED0]) = v3;
  *(a1 + 16) = *v4;
  *(a1 + 88) = *(v4 + 72);
  *(a1 + 92) = *(v4 + 76);
  *(a1 + 96) = *(v4 + 80);
  *(a1 + 97) = *(v4 + 81);
  *(a1 + 120) = *(v4 + 104);
  *(a1 + 100) = *(v4 + 84);
  *(a1 + 124) = *(v4 + 108) & 1 | 0x2C;
  return (*(STACK[0xF18] + 8 * v2))(&off_1010A0B50, a1, a1 + 55, v4 + 39, (v2 - 46662), -1084824930, v2 ^ 0xB6DDu, -409383847, v2 ^ 0xBC8Cu);
}

uint64_t sub_100256DEC(int a1)
{
  v10 = (*(*(v9 + 8) + 4 * v5) ^ v6) + v2;
  *(*(v1 + 8) + 4 * v5) = v10 - (v7 & (2 * v10)) + v6;
  return (*(v8 + 8 * (((v3 == v5) * a1) ^ v4)))();
}

uint64_t sub_100256E34()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 345419377;
  v3 = 1022166737 * (((&STACK[0x10ED8] ^ 0xAE687CF93509C882 | 0x715D42FD19BAE009) - ((&STACK[0x10ED8] ^ 0xAE687CF93509C882) & 0x715D42FD19BAE00ALL)) ^ 0xA1BF4C7996A3C91BLL);
  v4 = v3 + STACK[0xF10] + 782565441;
  STACK[0x10ED8] = v3 + 2373591306u;
  LODWORD(STACK[0x10EFC]) = (v2 ^ 0x1391) + v3;
  STACK[0x10EF0] = v0 ^ v3;
  LODWORD(STACK[0x10EE4]) = v4;
  LODWORD(STACK[0x10EE0]) = -1022166737 * (((&STACK[0x10ED8] ^ 0xAE687CF93509C882 | 0x19BAE009) - ((&STACK[0x10ED8] ^ 0xAE687CF93509C882) & 0x19BAE00A)) ^ 0x96A3C91B);
  LODWORD(STACK[0x10EEC]) = v2 - v3;
  LODWORD(STACK[0x10EE8]) = v3 + v2 + 4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4029)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * SLODWORD(STACK[0x10EF8])))(v6);
}

uint64_t sub_100257074()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 24005)))(32) == 0;
  return (*(v1 + 8 * ((v2 * (v0 - 63446 + ((v0 - 25792) | 0x8328))) ^ v0)))();
}

uint64_t sub_100257150()
{
  v3[128] = v1[12];
  v3[129] = v1[4];
  v3[131] = v1[13];
  v4 = (*(v0 + 8 * (v2 ^ 0xA0BB)))(142) == 0;
  return (*(v0 + 8 * (((((3 * (v2 ^ 0xC2)) ^ v4) & 1) * ((2774 * (v2 ^ 0x6A21)) ^ 0x15FB)) ^ v2)))();
}

uint64_t sub_100257264()
{
  v2 = STACK[0xFF0];
  v3 = STACK[0xFF0] + 16;
  *v2 = 0x3EA64EF000000040;
  v2[1] = v3;
  STACK[0xEA0] = (v2 + 34);
  v2[34] = 0x3EA64EF000000040;
  v2[35] = v2 + 36;
  STACK[0xEB0] = (v2 + 68);
  v2[68] = 0x3EA64EF000000040;
  v2[69] = v2 + 70;
  STACK[0xEC0] = (v2 + 102);
  v2[102] = 0x3EA64EF000000040;
  v2[103] = v2 + 104;
  STACK[0xED0] = (v2 + 136);
  v2[136] = 0x3EA64EF000000040;
  v2[137] = v2 + 138;
  v4 = STACK[0x6220] + 4;
  LODWORD(v3) = 139493411 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x511DFB20) + 1360919333) ^ 0x5D301A60);
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EE8]) = v3 + 32549056 + (((v1 ^ 0x14DEF9C4) - 350157252) ^ ((v1 ^ 0x99A685A0) + 1717140064) ^ ((v1 ^ 0x64ADBB75) + ((v0 - 9388) | 0x8B08) - 1689142960));
  LODWORD(STACK[0x10EE4]) = v0 + 29324 - v3;
  STACK[0x10EF0] = v4;
  v5 = STACK[0xF18];
  v6 = *(STACK[0xF18] + 8 * (v0 ^ 0xEE37));
  LODWORD(STACK[0xE90]) = v0 ^ 0xEE37;
  v6(&STACK[0x10ED8]);
  v7 = v1 ^ 0xE9D5C711;
  v8 = v4 + v7;
  v9 = 139493411 * ((2 * ((&STACK[0x10000] + 3800) & 0x6377F4A0) - (&STACK[0x10000] + 3800) + 478677850) ^ 0x10A5EA1F);
  STACK[0x10ED8] = STACK[0xEA0];
  STACK[0x10EF0] = v8;
  LODWORD(STACK[0x10EE4]) = v0 + 29324 - v9;
  LODWORD(STACK[0x10EE8]) = v9 + 32549056 + (((v1 ^ 0xE3677676) + 479758730) ^ ((v1 ^ 0x6F9D45A) - 117036122) ^ ((v1 ^ 0xC4B653D) - 206267709));
  (*(v5 + 8 * (v0 ^ 0xEE37)))(&STACK[0x10ED8]);
  v10 = v8 + v7;
  v11 = 139493411 * ((((2 * (&STACK[0x10000] + 3800)) | 0x4E3B9A8) - (&STACK[0x10000] + 3800) + 2106467116) ^ 0x8E5C3D91);
  LODWORD(STACK[0x10EE4]) = v0 + 29324 - v11;
  LODWORD(STACK[0x10EE8]) = v11 + 32549056 + (((v1 ^ 0x8309CBDD) + 2096509987) ^ ((v1 ^ 0x746DA669) - 1953343081) ^ ((v1 ^ 0x1EB1AAA5) - 514960037));
  STACK[0x10ED8] = STACK[0xEB0];
  STACK[0x10EF0] = v10;
  LODWORD(STACK[0xEB0]) = v0 + 42505;
  (*(v5 + 8 * (v0 + 42505)))(&STACK[0x10ED8]);
  v12 = v10 + v7;
  v13 = 139493411 * ((((&STACK[0x10000] + 3800) | 0xF3FA1B06) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xC05E4F8)) ^ 0xFFD7FA43);
  STACK[0x10ED8] = STACK[0xEC0];
  STACK[0x10EF0] = v12;
  LODWORD(STACK[0x10EE4]) = v0 + 29324 - v13;
  LODWORD(STACK[0x10EE8]) = v13 + 32549056 + (((v1 ^ 0x3A716056) - 980508758) ^ ((v1 ^ 0x5F7E54B1) - 1602114737) ^ ((v1 ^ 0x8CDAF3F6) + 1931807754));
  (*(v5 + 8 * SLODWORD(STACK[0xE90])))(&STACK[0x10ED8]);
  v14 = 139493411 * (((&STACK[0x10ED8] | 0xBAD9A9F7) - (&STACK[0x10ED8] | 0x45265608) + 1160140296) ^ 0xB6F448B2);
  STACK[0x10ED8] = STACK[0xED0];
  STACK[0x10EF0] = v12 + v7;
  LODWORD(STACK[0x10EE8]) = v14 + 32549056 + (((v1 ^ 0x38CA5A31) - 952785457) ^ ((v1 ^ 0x2FC3E9DB) - 801368539) ^ ((v1 ^ 0xFEDC74FB) + 19106565));
  LODWORD(STACK[0x10EE4]) = v0 + 29324 - v14;
  v15 = (*(v5 + 8 * SLODWORD(STACK[0xEB0])))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v0))(v15);
}

uint64_t sub_10025773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = *(STACK[0xF18] + 8 * a8);
  *&STACK[0xED0] = xmmword_100F523B0;
  return v14(vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(v13), vdupq_n_s64(v11), vdupq_n_s64(v12), vdupq_n_s64(v9), vdupq_n_s64(v10), vdupq_n_s64(v8));
}

uint64_t sub_1002578C0()
{
  v3 = STACK[0xED0];
  *(v0 + 36) = STACK[0xED0];
  STACK[0x3A40] = v0 + 36;
  STACK[0x46E8] = v0 + 0x5B33D6F5B55C17F6;
  *(v0 + 104) = -371865839;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 40) = 0;
  *(v0 + 112) = 0;
  STACK[0x4310] = v0 + 112;
  *(v0 + 120) = 0;
  STACK[0x7E80] = v0 + 120;
  *(v0 + 48) = 0;
  STACK[0x1F60] = v0 + 48;
  *(v0 + 56) = -371865839;
  STACK[0x97F8] = v0 + 56;
  return (*(STACK[0xF18] + 8 * ((((971 * (v1 ^ 0x742B) - 6051) ^ (v1 + 5947)) * (v3 != v2)) ^ v1)))();
}

uint64_t sub_100257974@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = __ROR8__((v5 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = *(STACK[0xF18] + 8 * v3);
  v8 = ((v6 - 0x296E95066F186A7FLL) | 0x7F8CF47A0DDD2A80) - ((v6 - 0x296E95066F186A7FLL) | 0x80730B85F222D57FLL) - 0x7F8CF47A0DDD2A81;
  v9 = v8 ^ 0x78AEED99F1FA1EF2;
  v8 ^= 0xCC25BA5576C6B2FCLL;
  v10 = __ROR8__(v9, 8);
  v11 = __ROR8__((((2 * (v10 + v8)) & 0x4757308570142184) - (v10 + v8) - 0x23AB9842B80A10C3) ^ 0xC8EE60F7686D80D8, 8);
  v12 = (((2 * (v10 + v8)) & 0x4757308570142184) - (v10 + v8) - 0x23AB9842B80A10C3) ^ 0xC8EE60F7686D80D8 ^ __ROR8__(v8, 61);
  v13 = (v11 + v12) ^ 0x2C378843F9A46E98;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ a1;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x82B08017BF43C069;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) | 0x6FA00F307AD285CELL) - (v19 + v18) + 0x482FF867C296BD19) ^ 0x1D4DDD22DF8D969BLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x43EA8C014D72D45CLL) - (v22 + v21) + 0x5E0AB9FF594695D2) ^ 0x2E4767435862069DLL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v5[10] = (((v25 + v24 - ((2 * (v25 + v24)) & 0x2D8EF7625F92FAD0) + 0x16C77BB12FC97D68) ^ 0x8DDB0F964AD77270) >> (8 * ((v5 + 10) & 7u))) ^ HIBYTE(a2) ^ 0xD4;
  v26 = __ROR8__((v5 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = -2 - (((0x296E95066F186A7ELL - v26) | 0x812ECE5E5373C3DBLL) + ((v26 - 0x296E95066F186A7FLL) | 0x7ED131A1AC8C3C24));
  v28 = v27 ^ 0x860CD7BDAF54F7A9;
  v27 ^= 0x3287807128685BA7uLL;
  v29 = (__ROR8__(v28, 8) + v27) ^ 0x14BA074A2F986FE5;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x2C378843F9A46E98;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) | 0x32AE8F99AB71EA50) - (v33 + v32) - 0x195747CCD5B8F528) ^ 0xA42A6A2514B25442;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((v36 + v35) | 0x7320A01F0299C0C1) - ((v36 + v35) | 0x8CDF5FE0FD663F3ELL) - 0x7320A01F0299C0C2) ^ 0xF1902008BDDA00A8;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0x1E2ADB414A9307EELL) - 0x70EA925F5AB67C09) ^ 0x2588B71A47AD578BLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0x751C15CDE44619C2) - (v42 + v41) + 0x4571F5190DDCF31ELL) ^ 0xCAC3D45AF3079FADLL;
  v44 = __ROR8__(v43, 8);
  v45 = __ROR8__(v41, 61);
  v5[11] = (((v44 + (v43 ^ v45) - ((2 * (v44 + (v43 ^ v45))) & 0x52D1D86046E744A6) + 0x2968EC302373A253) ^ 0xB2749817466DAD4BLL) >> (8 * ((v5 + 11) & 7u))) ^ BYTE6(a2) ^ 0xA5;
  v46 = __ROR8__((v5 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v47 = (0x296E95066F186A7ELL - v46) & 0x794A1A89743498B1 | (v46 - 0x296E95066F186A7FLL) & 0x84B5E5768BCB674ELL;
  v48 = v47 ^ 0x7C68036A8813ACC3;
  v47 ^= 0xC8E354A60F2F00CDLL;
  v49 = (__ROR8__(v48, 8) + v47) ^ 0x14BA074A2F986FE5;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x2C378843F9A46E98;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (((2 * (v52 + v53)) & 0xA249D6CC0BCCA700) - (v52 + v53) - 0x5124EB6605E65381) ^ 0x13A639703B130D15;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x82B08017BF43C069;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xAA9DDABAE2E4D47CLL;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v4;
  v5[12] = (((__ROR8__(v60, 8) + (v60 ^ __ROR8__(v59, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v5 + 12) & 7u))) ^ BYTE5(a2) ^ 0x3E;
  v61 = __ROR8__((v5 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = ((0x296E95066F186A7ELL - v61) & 0x696F4673D36DE29DLL) + v61 - 0x296E95066F186A7FLL - ((v61 - 0x296E95066F186A7FLL) & 0x6D6F4673D36DE29DLL);
  v63 = v62 ^ 0x6A4D5F902F4AD6EFLL;
  v62 ^= 0xDEC6085CA8767AE1;
  v64 = __ROR8__(v63, 8);
  v65 = (v64 + v62 - ((2 * (v64 + v62)) & 0x1B3949B08886F780) + 0xD9CA4D844437BC0) ^ 0x1926A3926BDB1425;
  v66 = v65 ^ __ROR8__(v62, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x2C378843F9A46E98;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((v69 + v68) | 0xD4F2363B6EF523) - ((v69 + v68) | 0xFF2B0DC9C4910ADCLL) - 0xD4F2363B6EF524) ^ 0xBDA9DFDFFA645449;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = __ROR8__((((v72 + v71) & 0x91B969E0C19E5375 ^ 0x9008600000825375) + ((v72 + v71) & 0x6E46961F3E61AC8ALL ^ 0x2A44140330410C81) - 1) ^ 0x38FCF4148F809F9CLL, 8);
  v74 = (((v72 + v71) & 0x91B969E0C19E5375 ^ 0x9008600000825375) + ((v72 + v71) & 0x6E46961F3E61AC8ALL ^ 0x2A44140330410C81) - 1) ^ 0x38FCF4148F809F9CLL ^ __ROR8__(v71, 61);
  v75 = (v73 + v74) ^ 0xAA9DDABAE2E4D47CLL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v77 + v76 - ((2 * (v77 + v76)) & 0xA35BB6A5474A5D2CLL) - 0x2E5224AD5C5AD16ALL) ^ 0x5E1FFA115D7E4225;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = __ROR8__(v78, 8);
  LOBYTE(v24) = (((((2 * ((v80 + v79) ^ 0xD3B9B851F2097674)) & 0x6AEA922499CF30AALL) - ((v80 + v79) ^ 0xD3B9B851F2097674) + 0x4A8AB6EDB31867AALL) ^ 0x22F7A9B240F1EC6) >> (8 * ((v5 + 13) & 7u))) ^ BYTE4(a2) ^ 0x4E;
  v81 = __ROR8__((v5 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v5[13] = v24;
  v82 = -2 - (((0x296E95066F186A7ELL - v81) | 0xE66D92511BC5A5BLL) + ((v81 + 0x6916AF990E79581) | 0xF19926DAEE43A5A4));
  v83 = v82 ^ 0x944C0C6ED9B6E29;
  v82 ^= 0xBDCF970A6AA7C227;
  v84 = __ROR8__(v83, 8);
  v85 = (((2 * (v84 + v82)) | 0xB84EA8E40647B16) - (v84 + v82) - 0x5C2754720323D8BLL) ^ 0x1178720D0FAA526ELL;
  v86 = v85 ^ __ROR8__(v82, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0x2C378843F9A46E98;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  v90 = __ROR8__((((2 * (v89 + v88)) | 0x44A18314D53B083ELL) - (v89 + v88) - 0x2250C18A6A9D841FLL) ^ 0x9F2DEC63AB972575, 8);
  v91 = (((2 * (v89 + v88)) | 0x44A18314D53B083ELL) - (v89 + v88) - 0x2250C18A6A9D841FLL) ^ 0x9F2DEC63AB972575 ^ __ROR8__(v88, 61);
  v92 = (v90 + v91 - ((2 * (v90 + v91)) & 0x6FB26939647901DALL) + 0x37D9349CB23C80EDLL) ^ 0xB569B48B0D7F4084;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  v95 = (((2 * (v94 + v93)) | 0x106BFCB5893A8DF0) - (v94 + v93) + 0x77CA01A53B62B908) ^ 0x22A824E026799284;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((2 * (v97 + v96)) | 0x80494BCDB9BD7234) - (v97 + v96) + 0x3FDB5A19232146E6) ^ 0x4F9684A52205D5A9;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = __ROR8__(v98, 8);
  v5[14] = (((((2 * (v100 + v99)) & 0x1E5C145EFE2F4014) - (v100 + v99) + 0x70D1F5D080E85FF5) ^ 0xEBCD81F7E5F650EDLL) >> (8 * ((v5 + 14) & 7u))) ^ BYTE3(a2) ^ 0x27;
  v101 = __ROR8__((v5 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v102 = (0x296E95066F186A7ELL - v101) & 0x680551F87DC54615 | (v101 - 0x296E95066F186A7FLL) & 0x95FAAE07823AB9EALL;
  v103 = v102 ^ 0x6D27481B81E27267;
  v102 ^= 0xD9AC1FD706DEDE69;
  v104 = (__ROR8__(v103, 8) + v102) ^ 0x14BA074A2F986FE5;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((v106 + v105) & 0xB90C1C681EE8883BLL ^ 0x90080C481068080ALL) + ((v106 + v105) & 0x46F3E397E11777C4 ^ 0x42C00380601273C1) - 1) ^ 0xFEFF878B89DE1552;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  v110 = __ROR8__((((2 * (v109 + v108)) & 0x56F7B2AC5F994E46) - (v109 + v108) - 0x2B7BD9562FCCA724) ^ 0x69F90B401139F9B6, 8);
  v111 = (((2 * (v109 + v108)) & 0x56F7B2AC5F994E46) - (v109 + v108) - 0x2B7BD9562FCCA724) ^ 0x69F90B401139F9B6 ^ __ROR8__(v108, 61);
  v112 = (((v110 + v111) ^ 0xA671FAF5A6DC8D77 | 0x988BE54C1108E42CLL) - ((v110 + v111) ^ 0xA671FAF5A6DC8D77 | 0x67741AB3EEF71BD3) + 0x67741AB3EEF71BD3) ^ 0xBC4A9FAE0897A932;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = __ROR8__(v112, 8);
  v115 = (((2 * (v114 + v113)) & 0xF5BA5EC2CE3F62A4) - (v114 + v113) + 0x522D09E98E04EADLL) ^ 0xAFBF0A247A049AD1;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = __ROR8__(v115, 8);
  v5[15] = (((__ROR8__((v117 + v116 - ((2 * (v117 + v116)) & 0x939EF87BFA8DDB10) - 0x363083C202B91278) ^ 0x467D5D7E039D813BLL, 8) + ((v117 + v116 - ((2 * (v117 + v116)) & 0x939EF87BFA8DDB10) - 0x363083C202B91278) ^ 0x467D5D7E039D813BLL ^ __ROR8__(v116, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v5 + 15) & 7u))) ^ BYTE2(a2) ^ 0x30;
  v118 = __ROR8__((v5 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v119 = ((2 * (v118 - 0x296E95066F186A7FLL)) | 0xFA59C6CB8F42CD78) - (v118 - 0x296E95066F186A7FLL) + 0x2D31C9A385E9944;
  v120 = v119 ^ 0xFA0EFA863B8652CELL;
  v119 ^= 0x4E85AD4ABCBAFEC0uLL;
  v121 = (__ROR8__(v120, 8) + v119) ^ 0x14BA074A2F986FE5;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x2C378843F9A46E98;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ a1;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (v127 + v126 - ((2 * (v127 + v126)) & 0x5542AB1B317F268CLL) + 0x2AA1558D98BF9346) ^ 0xA811D59A27FC532FLL;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xAA9DDABAE2E4D47CLL;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ v4;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v5[16] = (((((2 * (v134 + v133)) | 0x3FA3A1DB0D738C12) - (v134 + v133) + 0x602E2F12794639F7) ^ 0x4CDA4CAE3A7C911) >> (8 * ((v5 + 16) & 7u))) ^ BYTE1(a2) ^ 0x82;
  v135 = (__ROR8__((v5 + 17) & 0xFFFFFFFFFFFFFFF8, 8) - 0x296E95066F186A7FLL) & 0xF9FFFFFFFFFFFFFFLL;
  v136 = v135 ^ 0x12219E3FC273472;
  v135 ^= 0xB5A94E2F7B1B987CLL;
  v137 = __ROR8__(v136, 8);
  v138 = __ROR8__((((2 * (v137 + v135)) & 0xF7A4AF9285CC9B58) - (v137 + v135) - 0x7BD257C942E64DADLL) ^ 0x9097AF7C9281DDB6, 8);
  v139 = (((2 * (v137 + v135)) & 0xF7A4AF9285CC9B58) - (v137 + v135) - 0x7BD257C942E64DADLL) ^ 0x9097AF7C9281DDB6 ^ __ROR8__(v135, 61);
  v140 = (v138 + v139) ^ 0x2C378843F9A46E98;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ a1;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0x82B08017BF43C069;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ 0xAA9DDABAE2E4D47CLL;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ v4;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = __ROR8__(v148, 8);
  v5[17] = (((((2 * (v150 + v149)) | 0x1729776ADB68C76ALL) - (v150 + v149) + 0x746B444A924B9C4BLL) ^ 0x1088CF9208AA6CADLL) >> (8 * ((v5 + 17) & 7u))) ^ a2 ^ 0xB3;
  return v7();
}

uint64_t sub_10025896C()
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
  STACK[0xC070] = 0;
  STACK[0xC078] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC070] | v10);
  *(&STACK[0xC070] | v10) = 0;
  LOBYTE(STACK[0xC077]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC070] | v12);
  *(&STACK[0xC070] | v12) = STACK[0xC076];
  LOBYTE(STACK[0xC076]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC070] | v14);
  *(&STACK[0xC070] | v14) = STACK[0xC075];
  LOBYTE(STACK[0xC075]) = v15;
  v16 = STACK[0xC070];
  LOBYTE(STACK[0xC070]) = STACK[0xC074];
  LOBYTE(STACK[0xC074]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC070] | v17);
  *(&STACK[0xC070] | v17) = STACK[0xC073];
  LOBYTE(STACK[0xC073]) = v18;
  v19 = STACK[0xC071];
  LOBYTE(STACK[0xC072]) = STACK[0xC070];
  LOWORD(STACK[0xC070]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC070] = vmla_s32(v22, STACK[0xC070], vdup_n_s32(0x1000193u));
  STACK[0xC078] ^= STACK[0xC070];
  STACK[0xC078] = vmul_s32(vsub_s32(STACK[0xC078], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC07A];
  LOWORD(STACK[0xC079]) = STACK[0xC078];
  LOBYTE(STACK[0xC078]) = v23;
  v24 = (&STACK[0xC078] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC07B];
  LOBYTE(STACK[0xC07B]) = v19;
  LOBYTE(v24) = STACK[0xC078];
  LOBYTE(STACK[0xC078]) = STACK[0xC07C];
  LOBYTE(STACK[0xC07C]) = v24;
  v25 = (&STACK[0xC078] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC07D];
  LOBYTE(STACK[0xC07D]) = v24;
  v26 = (&STACK[0xC078] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC07E];
  LOBYTE(STACK[0xC07E]) = v25;
  v27 = (&STACK[0xC078] | v10);
  v28 = *v27;
  *v27 = STACK[0xC07F];
  LOBYTE(STACK[0xC07F]) = v28;
  v29 = STACK[0xC078];
  v30 = (553300517 * STACK[0xC078]) ^ v9;
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
  v43 = STACK[0x940];
  do
  {
    v44 = *(v29 + v35);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v57.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_high_u16(v46, v40));
    v57.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v57.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v57.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v42), vsubq_s32(v36, v42)), v42), vmull_high_u16(v45, v40));
    *(v29 + v35) = vqtbl4q_s8(v57, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v35 != 576);
  v47 = 0;
  v48 = xmmword_100F52AE0;
  v49 = xmmword_100F52AF0;
  v50 = vdupq_n_s32(v30);
  v51 = v29 + 576;
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
  *v43 = STACK[0xC078];
  return (*(STACK[0xF18] + 8 * v1))(v48, v49);
}

uint64_t sub_1002590C0@<X0>(int a1@<W8>)
{
  v1 = a1 & 0x60437E7F;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * ((a1 & 0x60437E7F) + 44666)))(16) != 0;
  return (*(v2 + 8 * ((v3 * ((v1 ^ 0x9725) + (v1 ^ 0x3C5C) - 43816)) ^ v1)))();
}

uint64_t sub_100259128()
{
  v1 = STACK[0xF10] - 30235;
  *(STACK[0xB588] + 24) = v0 ^ 0xE773B63C2CB22AF9;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002591D8@<X0>(int a1@<W8>)
{
  STACK[0x3F0] = *(v5 + 8 * v4);
  v6 = v2 - 998049674 + (*(v3 + 68) & (a1 - 5033)) < ((a1 + 22532) ^ 0xFFFF942C);
  STACK[0x2A0] = v3;
  LODWORD(STACK[0x374]) = v2;
  STACK[0x3C0] = v1;
  return (*(v5 + 8 * ((24905 * v6) ^ a1)))(0);
}

uint64_t sub_100259398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(*(STACK[0x758] + 8) + 120 * v18 + 8) = 0x981390C2FED9247;
  v20 = *(STACK[0x758] + 8);
  v21 = (v20 + 120 * v18);
  v21[84] = STACK[0x5F0];
  v21[83] = STACK[0x5EF];
  v21[82] = STACK[0x5EE];
  v21[81] = STACK[0x5ED];
  v21[80] = STACK[0x5EC];
  v21[79] = STACK[0x5EB];
  v21[78] = STACK[0x5EA];
  v21[77] = STACK[0x5E9];
  v21[76] = STACK[0x5E8];
  v21[75] = STACK[0x5E7];
  v21[74] = STACK[0x5E6];
  v21[73] = STACK[0x5E5];
  v21[72] = STACK[0x5E4];
  v21[71] = STACK[0x5E3];
  v21[70] = STACK[0x5E2];
  v21[69] = STACK[0x5E1];
  v21[68] = STACK[0x5E0];
  v21[67] = STACK[0x5DF];
  v21[66] = STACK[0x5DE];
  v21[65] = STACK[0x5DD];
  return (*(v19 + 8 * (((a17 - 120 * v18 - v20 < ((v17 - 42283) | 0x800Au) - 34203) * ((v17 ^ 0x9705) - 15786)) ^ v17)))();
}

uint64_t sub_1002594C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (&a65 ^ 0xFBFF7FEE) + ((2 * &a65) & 0xF7FEFFD0) + (v65 ^ 0x1033);
  v69 = ((v68 - 41) ^ 0x2A) & (2 * ((v68 - 41) & 0xB2)) ^ (v68 - 41) & 0xB2;
  v70 = ((2 * ((v68 - 41) ^ 0x2E)) ^ 0x38) & ((v68 - 41) ^ 0x2E) ^ (2 * ((v68 - 41) ^ 0x2E)) & 0x9C;
  v71 = (v68 - 41) ^ (2 * (((4 * v70) ^ 0x60) & v70 & (16 * ((v70 ^ 0x18) & (4 * v69) ^ v69)) ^ (v70 ^ 0x18) & (4 * v69) ^ v69));
  v72 = (((v71 ^ 0x2D) - 76) ^ ((v71 ^ 0xEC) + 115) ^ ((v71 ^ 0xC9) + 88)) - 117;
  *v67 = v72 * (v68 + 37) - 107 * (97 * v72 - 26 * (v68 + 37)) + 118;
  a65 = 0;
  return (*(v66 + 8 * v65))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_100259620()
{
  v1 = (STACK[0xF10] + 84687780) & 0xFAF3FBAF;
  v2 = STACK[0xF10] - 26180;
  LODWORD(STACK[0x6D1C]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 49305) * (v0 != -371865839)) ^ v2)))();
}

uint64_t sub_1002596B0()
{
  v5 = v0 ^ 0x59C8;
  v6 = v2[4];
  v7 = *(v3 + 8 * ((v0 ^ 0x59C8) - 24405));
  *(v4 - 132) = v1;
  v8 = v7 - 1292434499;
  v9 = *(v3 + 8 * (v0 ^ 0x33FD)) - 446813067;
  v10 = *(v9 + (v2[14] ^ ((((v0 ^ 0xC8) - 91) & 0xEB) + 8)));
  v11 = *(v3 + 8 * ((v0 ^ 0x59C8) - 26353)) - 1749610687;
  v12 = (v2[7] ^ 0x44) + *(v11 + (v2[7] ^ 0xFLL)) - 14;
  v13 = (v12 & 0xFE ^ 0xFF340278) & (((((v6 ^ 0x5F) + *(v7 - 1292434499 + (v6 ^ 0xBD))) << 24) - 1845493760) ^ 0x953402FE) & 0xFFFFFFFE | v12 & 1;
  LODWORD(v6) = ((*(v9 + (v2[2] ^ 0xD8)) << 8) ^ 0x3473EADB) & (((v2[3] ^ 0xB7) + *(v11 + (v2[3] ^ 0xFCLL)) - 14) ^ 0x7E7BFFDB);
  v14 = ((v2[3] ^ 0xB7) + *(v11 + (v2[3] ^ 0xFCLL)) - 14) & 0x24;
  LOBYTE(v7) = (v2[15] ^ 0x88) + *(v11 + (v2[15] ^ 0xC3)) - 14;
  v15 = *(v3 + 8 * (v5 - 22802)) - 794961898;
  v16 = ((*(v15 + (v2[9] ^ 0xE1)) << 16) ^ 0x2236AEC) & (((v2[11] ^ 0xED) + *(v11 + (v2[11] ^ 0xA6)) - 14) ^ 0x62FF6EDD);
  v17 = ((*(v9 + (v2[10] ^ 0xE2)) << 8) | 0xCF0F00D3) & ((v16 | ((v2[11] ^ 0xED) + *(v11 + (v2[11] ^ 0xA6)) - 14) & 0x13) ^ 0xCD379510);
  v18 = v16 & 0xF0402C;
  v19 = *(v15 + (v2[5] ^ 0x18)) << 16;
  v20 = (v13 ^ 0x27E31901) & ~v19;
  LODWORD(v11) = v19 & 0xF80000;
  v21 = (v2[12] ^ 0xFFFFFFB3) + *(v8 + (v2[12] ^ 0x51)) - 110;
  v22 = *(v15 + (v2[1] ^ 0x3BLL));
  v23 = ((((v21 << 24) ^ 0x60FF71DC) & ((*(v15 + (v2[13] ^ 0xBALL)) << 16) ^ 0xF2DC71DC) | (v21 << 24) & 0xD000000) ^ 0xEFC1E4DD) & (((~v7 | 0xFFFFFF00) & ((v10 << 8) ^ 0xF5598FC9) | v7 & 0x36) ^ 0xAA67440) ^ ((~v7 | 0xFFFFFF00) & ((v10 << 8) ^ 0xF5598FC9) & 0x60086AFE | v7 & 0x36);
  LODWORD(v6) = ((v22 << 16) ^ 0x4261FFFF) & (v6 ^ (v14 | 0x76804980));
  v24 = ((*v2 ^ 0x3D) + *(v8 + (*v2 ^ 0xDFLL))) << 24;
  v134[0] = (v24 - 1828716545) & (((((v22 >> 2) & 3) << 18) | 0xA041A9BE) ^ v6) | (v24 - 1845493760) & 0x1D000000;
  v25 = *(v9 + (v2[6] ^ 0xA5)) << 8;
  v135 = (v25 ^ 0xFFFFE4FF) & ((v11 | 0xFCD36676) ^ v20) ^ v25 & 0x8200;
  v26 = (((v2[8] ^ 0x1F) + *(v8 + (v2[8] ^ 0xFDLL)) - 110) ^ 0x47) << 24;
  v27 = (v26 ^ 0x86FFFFFF) & (v18 ^ 0x965B1DE0 ^ v17) ^ v26 & 0xA6000000;
  v28 = *(v3 + 8 * (v5 - 25763)) - 729220099;
  v29 = *(v3 + 8 * (v5 - 25077)) - 2054263779;
  v30 = *(v3 + 8 * (v5 ^ 0x6DF2)) - 1628057190;
  v31 = *(v3 + 8 * (v5 - 25249)) - 1878559215;
  LODWORD(v7) = v134[0] ^ *(v28 + 4 * (BYTE2(v23) ^ 0x33u)) ^ __ROR4__(*(v29 + 4 * (v7 ^ 0x90u)), 18) ^ ((BYTE2(v23) ^ 0xF) + 1146403144) ^ (*(v30 + 4 * (v21 ^ 0xB5u)) + 1079081976) ^ (*(v31 + 4 * (v10 ^ 0xB8)) << 16) ^ HIWORD(*(v31 + 4 * (v10 ^ 0xB8)));
  v138 = v7 ^ v135 ^ 0x204A2073;
  v32 = v138 ^ v27 ^ v23;
  v136[0] = v7 ^ 0x409C9806;
  v140 = (*(v30 + 4 * (HIBYTE(v32) ^ 0x32)) + 1079081976) ^ __ROR4__(*(v29 + 4 * (v32 ^ 0x2Eu)), 18) ^ *(v28 + 4 * (((v32 ^ 0x3FB7B251) >> 16) ^ 0x85u)) ^ __ROR4__(*(v31 + 4 * ((-(((v32 ^ 0xB251) >> 8) ^ 0x20) ^ (174 - (((v32 ^ 0xB251) >> 8) ^ 0x8E)) ^ ((((v32 ^ 0xB251) >> 8) ^ 0x20) - (((v32 ^ 0x3FB7B251) >> 7) & 0x1B4) + 1781886682) ^ 0x6A356EDA) + 174)), 16) ^ v7 ^ 0x409C9806 ^ ((((v32 ^ 0x3FB7B251) >> 16) ^ 0xB9) + 1146403144);
  v33 = v140 ^ 0x7382CAD3 ^ v7 ^ v135;
  v139 = v33 ^ 0xBC8F7D61;
  v34 = v33 ^ 0xBC8F7D61 ^ v23;
  v141 = *(v28 + 4 * (((v34 ^ 0x8CB76E91) >> 16) ^ 0x2Eu)) ^ __ROR4__(*(v29 + 4 * (v34 ^ 2u)), 18) ^ __ROR4__(*(v31 + 4 * (((v34 ^ 0x6E91) >> 8) ^ 0x21u)), 16) ^ (*(v30 + 4 * (HIBYTE(v34) ^ 0xAF)) + 1079081976) ^ v140 ^ 0x7382CAD3 ^ ((((v34 ^ 0x8CB76E91) >> 16) ^ 0x12) + 1146403144);
  v137 = v140 ^ 0x7382CAD3 ^ v27;
  LODWORD(v11) = v141 ^ 0x22AA811A ^ v33;
  v35 = v11 ^ v137 ^ 0x95722FA3;
  LODWORD(v7) = v35 ^ v34 ^ 0x45F71EDF;
  v36 = v35 ^ v34 ^ 0x4E0DF78D;
  v37 = *(v28 + 4 * (BYTE2(v7) ^ 0x2Cu)) ^ __ROR4__(*(v31 + 4 * (BYTE1(v7) ^ 0x5Du)), 16) ^ __ROR4__(*(v29 + 4 * ((v35 ^ v34) ^ 0x49u)), 18) ^ (*(v30 + 4 * (((v35 ^ v34) >> 24) ^ 0x9C)) + 1079081976) ^ v141 ^ 0x22AA811A ^ ((BYTE2(v7) ^ 0x10) + 1146403144) ^ 0xC2B064F6;
  v142 = v37 ^ v11 ^ 0xE887E107;
  *(v4 - 256) = v142 ^ v35;
  LODWORD(v10) = v142 ^ v35 ^ v36;
  v38 = (*(v30 + 4 * (BYTE3(v10) ^ 0x76)) + 1079081976) ^ *(v28 + 4 * (BYTE2(v10) ^ 0xDDu)) ^ __ROR4__(*(v31 + 4 * (((v142 ^ v35 ^ v36) >> 8) ^ 0xD2u)), 16) ^ __ROR4__(*(v29 + 4 * ((v142 ^ v35 ^ v36) ^ 0x22u)), 18) ^ v37 ^ ((BYTE2(v10) ^ 0xE1) + 1146403144);
  v39 = v38 ^ 0xD326E766 ^ v35;
  v40 = v39 ^ v10;
  v41 = v39 ^ v10 ^ 0x89031661;
  v143 = v38 ^ 0x56120FFB;
  LODWORD(v6) = *(v28 + 4 * (BYTE2(v41) ^ 0x71u)) ^ (*(v30 + 4 * (((v39 ^ v10) >> 24) ^ 1)) + 1079081976) ^ __ROR4__(*(v31 + 4 * (BYTE1(v41) ^ 0x57u)), 16) ^ __ROR4__(*(v29 + 4 * ((v39 ^ v10) ^ 0x15u)), 18) ^ v38 ^ 0x56120FFB ^ ((BYTE2(v41) ^ 0x4D) + 1146403144) ^ 0xF0C6E5EA;
  v42 = v38 ^ 0xD326E766 ^ v37 ^ v11;
  *(v4 - 248) = v42;
  *(v4 - 232) = v6;
  *(v4 - 224) = v6 ^ v42;
  v43 = v6 ^ v42 ^ 0xF7186D4B;
  v44 = v43 ^ v10;
  *(v4 - 240) = v43;
  v45 = v43 ^ v10 ^ 0xEF533A39;
  v46 = (*(v30 + 4 * (((v43 ^ v10) >> 24) ^ 0x1E)) + 1079081976) ^ __ROR4__(*(v29 + 4 * ((v43 ^ v10) ^ 0xD2u)), 18) ^ *(v28 + 4 * (BYTE2(v45) ^ 0xF1u)) ^ __ROR4__(*(v31 + 4 * (BYTE1(v45) ^ 0xFDu)), 16) ^ v6 ^ ((BYTE2(v45) ^ 0xCD) + 1146403144);
  *(v4 - 200) = v46;
  v47 = v46 ^ 0xCDF29E2F;
  LODWORD(v8) = v46 ^ 0xCDF29E2F ^ v39;
  v48 = v8 ^ v43 ^ v10;
  *(v4 - 208) = v8;
  HIDWORD(v49) = *(v29 + 4 * (v48 ^ 0xC1u));
  LODWORD(v49) = HIDWORD(v49);
  LODWORD(v6) = v48 ^ 0xD6451B2;
  v50 = (v49 >> 18) ^ __ROR4__(*(v31 + 4 * (((v48 ^ 0x9670) >> 8) ^ 0xCEu)), 16) ^ (*(v30 + 4 * (HIBYTE(v48) ^ 0xE7)) + 1079081976) ^ *(v28 + 4 * (((v48 ^ 0xB7B19670) >> 16) ^ 0x51u)) ^ v47 ^ ((((v48 ^ 0xB7B19670) >> 16) ^ 0x6D) + 1146403144);
  *(v4 - 160) = v50;
  v51 = v47 ^ v43;
  v52 = v50 ^ 0x2D7E4411;
  v53 = v50 ^ 0x2D7E4411 ^ v51;
  *(v4 - 216) = v51;
  *(v4 - 176) = v53;
  v54 = v53 ^ v8;
  *(v4 - 168) = v54;
  LODWORD(v8) = v54 ^ v6;
  v55 = *(v28 + 4 * (((v54 ^ v6) >> 16) ^ 0x9Cu)) ^ __ROR4__(*(v31 + 4 * (((v54 ^ v6) >> 8) ^ 0x39u)), 16) ^ __ROR4__(*(v29 + 4 * (v8 ^ 0xE7u)), 18) ^ (*(v30 + 4 * (BYTE3(v8) ^ 0x1A)) + 1079081976) ^ ((BYTE2(v8) ^ 0xA0) + 1146403144);
  v56 = v55 ^ v52;
  *(v4 - 152) = v55 ^ v52;
  v57 = v55 ^ v51;
  v58 = v55 ^ v51 ^ 0xFFF996B;
  *(v4 - 192) = v58;
  v59 = v58 ^ v6;
  v60 = v6;
  LODWORD(v6) = *(v30 + 4 * (HIBYTE(v59) ^ 0x65)) + 1079081976;
  *(v4 - 136) = v59 ^ 0x17C40BC1;
  *(v4 - 144) = *(v28 + 4 * (BYTE2(v59) ^ 0xB2u)) ^ __ROR4__(*(v31 + 4 * (BYTE1(v59) ^ 0x77u)), 16) ^ v6 ^ __ROR4__(*(v29 + 4 * (v59 ^ 0xAAu)), 18) ^ v56 ^ ((BYTE2(v59) ^ 0x8E) + 1146403144) ^ 0x7AD13701;
  v61 = *(&off_1010A0B50 + v5 - 25635) - 1708982147;
  v62 = *(&off_1010A0B50 + v5 - 26285) - 2068782683;
  v63 = *(&off_1010A0B50 + v5 - 26397) - 406184523;
  LODWORD(v29) = v5;
  v64 = *(&off_1010A0B50 + (v5 ^ 0x62DD)) - 66366131;
  v65 = v32 ^ ((v134[0] ^ 0x21C54D7Au) >> 16) ^ *&v61[4 * ((v23 ^ 0xCBD163A1) >> 24)] ^ *&v63[4 * ((v135 ^ 0xC1B6) >> 8)] ^ *&v62[4 * (((v134[0] ^ 0x21C54D7Au) >> 16) ^ 0xD2)] ^ *&v64[4 * (v27 ^ 0x91)];
  v66 = v138 ^ v27 ^ ((v23 ^ 0xCBD163A1) >> 16) ^ *&v62[4 * (((v23 ^ 0xCBD163A1) >> 16) ^ 0xD2)] ^ *&v64[4 * (v135 ^ 0xB6)] ^ *&v63[4 * ((LOWORD(v134[0]) ^ 0x4D7A) >> 8)] ^ *&v61[4 * ((v27 ^ 0xF1B53191) >> 24)];
  LODWORD(v6) = ((v135 ^ 0x8731C1B6) >> 16) ^ *&v61[4 * ((v134[0] ^ 0x21C54D7Au) >> 24)] ^ *&v63[4 * ((v27 ^ 0x3191) >> 8)] ^ *&v64[4 * (v23 ^ 0xA1)] ^ *&v62[4 * (((v135 ^ 0x8731C1B6) >> 16) ^ 0xD2)] ^ 0x84AEA198 ^ v136[0];
  v67 = ((v27 ^ 0xF1B53191) >> 16) ^ *&v61[4 * ((v135 ^ 0x8731C1B6) >> 24)] ^ *&v63[4 * ((v23 ^ 0x63A1) >> 8)] ^ *&v62[4 * (((v27 ^ 0xF1B53191) >> 16) ^ 0xD2)] ^ *&v64[4 * (LOBYTE(v134[0]) ^ 0x7A)] ^ 0xD618A464 ^ v138;
  v68 = v65 ^ 0xEC7C5654;
  LODWORD(v9) = BYTE2(v66) ^ 0xFC ^ *&v62[4 * (BYTE2(v66) ^ 0x2E)] ^ *&v61[4 * HIBYTE(v67)] ^ *&v63[4 * (BYTE1(v65) ^ 0xF6)] ^ *&v64[4 * ((((v135 ^ 0x8731C1B6) >> 16) ^ v61[4 * ((v134[0] ^ 0x21C54D7Au) >> 24)] ^ v63[4 * ((v27 ^ 0x3191) >> 8)] ^ v64[4 * (v23 ^ 0xA1)] ^ v62[4 * (((v135 ^ 0x8731C1B6) >> 16) ^ 0xD2)]) ^ 0x98 ^ LOBYTE(v136[0]))] ^ v139;
  v69 = *&v63[4 * ((v66 ^ 0xE9CA) >> 8)];
  v70 = v137 ^ *&v61[4 * ((v66 ^ 0x92FCE9CA) >> 24)] ^ *&v62[4 * (BYTE2(v68) ^ 0xD2)] ^ BYTE2(v68) ^ *&v63[4 * BYTE1(v6)] ^ *&v64[4 * ((((v27 ^ 0xF1B53191) >> 16) ^ v61[4 * ((v135 ^ 0x8731C1B6) >> 24)] ^ v63[4 * ((v23 ^ 0x63A1) >> 8)] ^ v62[4 * (((v27 ^ 0xF1B53191) >> 16) ^ 0xD2)] ^ v64[4 * (LOBYTE(v134[0]) ^ 0x7A)]) ^ 0x64 ^ v138)] ^ 0xFB93D883;
  v71 = v140 ^ v69 ^ __ROR4__(__ROR4__(BYTE2(v67) ^ *&v61[4 * BYTE3(v6)] ^ *&v62[4 * (BYTE2(v67) ^ 0xD2)] ^ 0x7AD01E49 ^ *&v64[4 * (v65 ^ 0x54)], 18) ^ 0x70C4021B, 14) ^ 0xBE4882A7;
  v72 = v34 ^ *&v61[4 * HIBYTE(v68)] ^ *&v62[4 * (BYTE2(v6) ^ 0xD2)] ^ BYTE2(v6) ^ *&v64[4 * ((v138 ^ v27 ^ ((v23 ^ 0xCBD163A1) >> 16) ^ v62[4 * (((v23 ^ 0xCBD163A1) >> 16) ^ 0xD2)] ^ v64[4 * (v135 ^ 0xB6)] ^ v63[4 * ((LOWORD(v134[0]) ^ 0x4D7A) >> 8)] ^ v61[4 * ((v27 ^ 0xF1B53191) >> 24)]) ^ 0xCA)] ^ *&v63[4 * BYTE1(v67)] ^ 0x71D78578;
  v73 = *&v63[4 * ((v9 ^ 0x9AE2) >> 8)] ^ *&v61[4 * HIBYTE(v72)] ^ *&v62[4 * (BYTE2(v71) ^ 0xD2)] ^ BYTE2(v71) ^ *&v64[4 * v70] ^ v36;
  v74 = v141 ^ ((v9 ^ 0xF579AE2) >> 16) ^ *&v63[4 * BYTE1(v70)] ^ *&v62[4 * (((v9 ^ 0xF579AE2) >> 16) ^ 0xD2)] ^ *&v61[4 * HIBYTE(v71)] ^ *&v64[4 * v72] ^ 0x362C6B4B;
  LODWORD(v6) = v11 ^ *&v62[4 * (BYTE2(v70) ^ 0xD2)] ^ BYTE2(v70) ^ *&v61[4 * ((v9 ^ 0xF579AE2) >> 24)] ^ *&v64[4 * v71] ^ *&v63[4 * BYTE1(v72)] ^ 0x5DA3FB6B;
  v75 = v11 ^ v137 ^ *&v61[4 * HIBYTE(v70)] ^ BYTE2(v72) ^ *&v64[4 * (v9 ^ 0xE6)] ^ *&v63[4 * BYTE1(v71)] ^ *&v62[4 * (BYTE2(v72) ^ 0xD2)] ^ 0x5CCDD555;
  v76 = v73 ^ 0xC987EBA;
  LODWORD(v11) = *&v61[4 * BYTE3(v6)] ^ BYTE2(v75) ^ *&v63[4 * ((v73 ^ 0x7EBA) >> 8)] ^ *&v64[4 * v74] ^ *&v62[4 * (BYTE2(v75) ^ 0xD2)] ^ v142;
  v77 = BYTE2(v6) ^ *&v63[4 * BYTE1(v75)] ^ *&v61[4 * HIBYTE(v74)] ^ *&v64[4 * ((v73 ^ 0xBA) - ((2 * v73) & 8)) + 16] ^ *&v62[4 * (BYTE2(v6) ^ 0xD2)] ^ v37;
  LODWORD(v10) = v10 ^ *&v64[4 * v75] ^ *&v62[4 * (BYTE2(v74) ^ 0xD2)] ^ BYTE2(v74) ^ *&v61[4 * HIBYTE(v76)] ^ *&v63[4 * BYTE1(v6)] ^ 0xA8931858;
  v78 = *(v4 - 256) ^ BYTE2(v76) ^ *&v62[4 * (BYTE2(v76) ^ 0xD2)] ^ *&v63[4 * BYTE1(v74)] ^ *&v64[4 * v6] ^ *&v61[4 * HIBYTE(v75)] ^ 0x5EF6905B;
  v79 = *&v63[4 * BYTE1(v78)] ^ ((v11 ^ 0xF8B49C10) >> 16) ^ *&v64[4 * v10] ^ *&v61[4 * (HIBYTE(v77) ^ 0x22)] ^ *&v62[4 * (((v11 ^ 0xF8B49C10) >> 16) ^ 0xD2)] ^ v143;
  LODWORD(v6) = v40 ^ BYTE2(v77) ^ *&v64[4 * v78] ^ *&v61[4 * BYTE3(v10)] ^ *&v62[4 * (BYTE2(v77) ^ 0xBF)] ^ *&v63[4 * ((v11 ^ 0x9C10) >> 8)] ^ 0xDF3C8B02;
  v80 = *(v4 - 248) ^ *&v62[4 * (BYTE2(v78) ^ 0xD2)] ^ BYTE2(v78) ^ *&v64[4 * (v77 ^ 0xC1)] ^ *&v61[4 * (BYTE3(v11) ^ 0x6D)] ^ *&v63[4 * BYTE1(v10)] ^ 0xC1DEE26B;
  LODWORD(v11) = v39 ^ BYTE2(v10) ^ *&v64[4 * (v11 ^ 0x10)] ^ *&v63[4 * (BYTE1(v77) ^ 0x70)] ^ *&v62[4 * (BYTE2(v10) ^ 0xD2)] ^ *&v61[4 * HIBYTE(v78)] ^ 0x8D52658A;
  LODWORD(v10) = BYTE2(v80) ^ *&v61[4 * ((v79 ^ 0x3B24215Cu) >> 24)] ^ *&v64[4 * v6] ^ *&v62[4 * (BYTE2(v80) ^ 0xD2)] ^ *&v63[4 * BYTE1(v11)] ^ *(v4 - 232);
  v81 = *(v4 - 224) ^ *&v61[4 * HIBYTE(v80)] ^ BYTE2(v11) ^ *&v63[4 * BYTE1(v6)] ^ *&v64[4 * (v79 ^ 0x5C)] ^ *&v62[4 * (BYTE2(v11) ^ 0xD2)] ^ 0x659A8E06;
  v82 = *(v4 - 240) ^ v39 ^ *&v63[4 * (BYTE1(v79) ^ 0x81)] ^ *&v64[4 * v80] ^ BYTE2(v6) ^ *&v61[4 * BYTE3(v11)] ^ *&v62[4 * (BYTE2(v6) ^ 0xD2)];
  LODWORD(v11) = v44 ^ ((v79 ^ 0x3B24215Cu) >> 16) ^ *&v62[4 * (((v79 ^ 0x3B24215Cu) >> 16) ^ 0xD2)] ^ *&v64[4 * v11] ^ *&v63[4 * BYTE1(v80)] ^ *&v61[4 * BYTE3(v6)] ^ 0xC0EC0DA8;
  LOWORD(v80) = v10 ^ 0x9AD0;
  LODWORD(v6) = *(v4 - 200) ^ BYTE2(v81) ^ *&v63[4 * ((v82 ^ 0x707E) >> 8)] ^ *&v64[4 * v11] ^ *&v62[4 * (BYTE2(v81) ^ 0xD2)] ^ *&v61[4 * (BYTE3(v10) ^ 0x5E)] ^ 0xB9E264B6;
  LODWORD(v10) = *&v62[4 * (((v10 ^ 0xCBB99AD0) >> 16) ^ 0xD2)] ^ *&v64[4 * (v82 ^ 0x7A)] ^ *&v61[4 * BYTE3(v11)] ^ ((v10 ^ 0xCBB99AD0) >> 16) ^ *&v63[4 * BYTE1(v81)] ^ v60;
  v83 = *(v4 - 208) ^ *&v63[4 * BYTE1(v80)] ^ BYTE2(v11) ^ *&v64[4 * v81] ^ *&v62[4 * (BYTE2(v11) ^ 0xD2)] ^ *&v61[4 * ((v82 ^ 0xE52D707E) >> 24)] ^ 0x3BF69AE;
  v84 = *(v4 - 216) ^ ((v82 ^ 0xE52D707E) >> 16) ^ *&v62[4 * (((v82 ^ 0xE52D707E) >> 16) ^ 0xD2)] ^ *&v63[4 * BYTE1(v11)] ^ *&v61[4 * HIBYTE(v81)] ^ *&v64[4 * v80] ^ 0x1C6FEF69;
  v85 = BYTE2(v6) ^ *&v61[4 * (BYTE3(v10) ^ 0x34)] ^ *&v63[4 * BYTE1(v84)] ^ *&v62[4 * (BYTE2(v6) ^ 0xD2)] ^ *&v64[4 * v83] ^ v8;
  v86 = *(v4 - 176) ^ *&v63[4 * (BYTE1(v10) ^ 0xC3)] ^ BYTE2(v83) ^ *&v64[4 * v6] ^ *&v61[4 * HIBYTE(v84)] ^ *&v62[4 * (BYTE2(v83) ^ 0xD2)] ^ 0xF3A7593A;
  v87 = *(v4 - 168);
  LODWORD(v11) = *(v4 - 192) ^ v87;
  v88 = BYTE2(v10) ^ *&v63[4 * BYTE1(v6)] ^ *&v62[4 * (BYTE2(v10) ^ 0x18)] ^ *&v64[4 * v84] ^ *&v61[4 * HIBYTE(v83)] ^ v87;
  LODWORD(v10) = *(v4 - 160) ^ BYTE2(v84) ^ *&v62[4 * (BYTE2(v84) ^ 0xD2)] ^ *&v61[4 * BYTE3(v6)] ^ *&v63[4 * BYTE1(v83)] ^ *&v64[4 * (v10 ^ 9)] ^ 0x384B04FF;
  v89 = v85 ^ 0x51D2F39D;
  BYTE2(v87) = BYTE2(v88) ^ 0xE5;
  v90 = *&v64[4 * (v88 ^ 0xE3)] ^ BYTE2(v10) ^ *&v61[4 * (HIBYTE(v85) ^ 0xC4)] ^ *&v63[4 * BYTE1(v86)] ^ *&v62[4 * (BYTE2(v10) ^ 0xD2)];
  LODWORD(v6) = v11 ^ 0x8DA358F;
  v91 = v11 ^ *&v64[4 * v86] ^ *&v63[4 * BYTE1(v10)] ^ BYTE2(v89) ^ *&v62[4 * (BYTE2(v89) ^ 0xD2)] ^ *&v61[4 * (HIBYTE(v88) ^ 0xA)] ^ 0xBAA1D008;
  v92 = *(v4 - 152) ^ *&v63[4 * ((v88 ^ 0xC6E3) >> 8)] ^ BYTE2(v86) ^ *&v62[4 * (BYTE2(v86) ^ 0xD2)] ^ *&v61[4 * BYTE3(v10)] ^ *&v64[4 * v89] ^ 0x4C1CD670;
  v93 = v57 ^ BYTE2(v87) ^ *&v64[4 * v10] ^ *&v62[4 * (BYTE2(v87) ^ 0xD2)] ^ *&v63[4 * BYTE1(v89)] ^ *&v61[4 * HIBYTE(v86)] ^ 0x454679F7;
  v94 = *(&off_1010A0B50 + (v29 ^ 0x6EB3)) - 1296962331;
  v95 = *(&off_1010A0B50 + v29 - 24271) - 405520271;
  v96 = *(&off_1010A0B50 + v29 - 23584) - 1419451238;
  v97 = *(&off_1010A0B50 + v29 - 24713) - 478385943;
  v98 = *&v95[4 * BYTE2(v93)] ^ *&v97[4 * BYTE1(v91)] ^ *&v96[4 * HIBYTE(v92)];
  LODWORD(v28) = v90 ^ *(v4 - 136);
  *(v4 - 216) = v28 ^ 0x935DDEE9;
  v99 = v94;
  LODWORD(v10) = *(v4 - 144);
  v100 = v57 ^ 0xAEF192FD ^ v10;
  LODWORD(v9) = v98 ^ *&v94[4 * (v28 ^ 0xE9)] ^ v10;
  *(v4 - 256) = v92;
  v101 = *&v94[4 * v92];
  *(v4 - 232) = v93;
  *(v4 - 208) = v97;
  *(v4 - 200) = v96;
  v102 = v101 ^ *&v96[4 * HIBYTE(v93)] ^ *&v97[4 * ((v28 ^ 0xDEE9) >> 8)];
  *(v4 - 224) = v91;
  *(v4 - 192) = v95;
  v103 = v6 ^ v100;
  LODWORD(v94) = v102 ^ *&v95[4 * BYTE2(v91)] ^ v100;
  LODWORD(v28) = *&v95[4 * (BYTE2(v28) ^ 0x4A)] ^ *&v96[4 * HIBYTE(v91)] ^ *&v99[4 * v93] ^ *&v97[4 * BYTE1(v92)];
  v104 = *(&off_1010A0B50 + v29 - 24542) - 965203222;
  v105 = *(&off_1010A0B50 + v29 - 24034) - 1833734970;
  v133 = v29;
  v106 = *(&off_1010A0B50 + v29 - 26678) - 1929510958;
  v107 = v105[((v9 ^ 0x57AC) >> 8) ^ 0xA9] ^ ((v9 ^ 0x493657AC) >> 8);
  v108 = *(&off_1010A0B50 + (v29 ^ 0x6D15)) - 496768427;
  v109 = v108[((v94 ^ 0x82BD414F) >> 24) ^ 0xB7] ^ ((v94 ^ 0x82BD414F) >> 24);
  v110 = v105[((v94 ^ 0x414F) >> 8) ^ 0xF0] ^ ((v94 ^ 0x82BD414F) >> 8);
  v111 = v108[((v9 ^ 0x493657AC) >> 24) ^ 0x2DLL] ^ (((v9 ^ 0x493657AC) >> 24) - (((v9 ^ 0x493657AC) >> 23) & 0x1AA) + 85);
  *(v4 - 248) = v111;
  v112 = v106[BYTE2(v9) ^ 0x7ALL];
  HIDWORD(v49) = ((v9 ^ 0xAC) - ((v9 ^ 0x493657AC) / 0x101)) & 0x3F ^ 0x28 ^ v111;
  LODWORD(v49) = v112 << 24;
  *(v4 - 240) = v49 >> 31;
  HIDWORD(v49) = ((v9 ^ 0x493657AC) % 0x107) & 0x3F ^ v112 ^ 0x3D;
  LODWORD(v49) = v107 << 24;
  *(v4 - 176) = (v49 >> 31);
  v113 = v104[v9 ^ 0x1BLL];
  HIDWORD(v49) = ((v9 ^ 0x493657AC) % 0x10D) & 0x3F ^ v107 ^ 5;
  LODWORD(v49) = (v113 << 24) - 939524096;
  *(v4 - 160) = (v49 >> 31);
  HIDWORD(v49) = (55 - v113) ^ 0xA ^ ((v9 ^ 0x493657AC) % 0x10F) & 0x3F;
  LODWORD(v49) = v109 << 24;
  *(v4 - 144) = (v49 >> 31);
  v114 = v106[BYTE2(v94) ^ 0x59];
  HIDWORD(v49) = ((v94 ^ 0x4F) - ((v94 ^ 0x82BD414F) / 0x101)) & 0x3F ^ 0x55 ^ v109;
  LODWORD(v49) = ~v114 << 24;
  *(v4 - 152) = (v49 >> 31);
  HIDWORD(v49) = ((v94 ^ 0x82BD414F) % 0x107) & 0x3F ^ v114 ^ 6;
  LODWORD(v49) = v110 << 24;
  *(v4 - 168) = (v49 >> 31);
  LOBYTE(v94) = v28 ^ v103;
  v115 = v28 ^ v103 ^ 0x4E8B7BE0;
  LODWORD(v28) = v106[((v28 ^ v103) >> 16) ^ 0x40];
  HIDWORD(v49) = (v115 - (v115 / 0x101)) & 0x3F ^ 0x4A ^ v108[HIBYTE(v115) ^ 3] ^ HIBYTE(v115);
  LODWORD(v49) = ~v28 << 24;
  v116 = v49 >> 31;
  LODWORD(v10) = v105[BYTE1(v115) ^ 0x24];
  HIDWORD(v49) = (v115 % 0x107) & 0x3F ^ v28 ^ 6;
  LODWORD(v49) = (v10 ^ ~(v115 >> 8)) << 24;
  v117 = (v49 >> 31);
  HIDWORD(v49) = (v115 % 0x10D) & 0x3F ^ v10 ^ (v115 >> 8) ^ 9;
  LODWORD(v49) = (55 - v104[v94 ^ 0xFELL]) << 24;
  v118 = v49 >> 31;
  LODWORD(v10) = *(v4 - 136) ^ *(*(v4 - 192) + 4 * BYTE2(*(v4 - 256))) ^ *(*(v4 - 200) + 4 * HIBYTE(*(v4 - 216)));
  v119 = *(v4 - 224);
  *(v4 - 224) = v99;
  v120 = v103 ^ v10 ^ *&v99[4 * v119] ^ *(*(v4 - 208) + 4 * BYTE1(*(v4 - 232)));
  v121 = *(v4 - 184);
  v122 = v104[v120 ^ 0xE5];
  HIDWORD(v49) = ((v120 ^ 0x18A64081u) % 0x10D) & 0x3F ^ v105[((v120 ^ 0x4081) >> 8) ^ 0x20] ^ ((v120 ^ 0x18A64081u) >> 8) ^ 0x18;
  LODWORD(v49) = (v122 << 24) - 939524096;
  v123 = v49 >> 31;
  v124 = 55 - v122;
  if ((*(v4 - 248) & 0x80u) == 0)
  {
    v125 = 23;
  }

  else
  {
    v125 = -112;
  }

  v126 = v125 ^ (2 * (v124 ^ ((v120 ^ 0x18A64081u) % 0x10F) & 0x3F));
  v127 = *(*(&off_1010A0B50 + (v133 ^ 0x6E10)) + (*(v4 - 132) & 0xF ^ 9) - 468726998);
  HIDWORD(v128) = v117;
  LODWORD(v128) = (v118 ^ 0xFFFFFF9F) << 24;
  v129 = *(v4 - 240);
  *(v4 - 248) = (v128 >> 31) ^ 0x25;
  if ((v129 & 0x80u) == 0)
  {
    v130 = 46;
  }

  else
  {
    v130 = -87;
  }

  *(v4 - 240) = v130 ^ (2 * (v126 ^ 0xFFFFFFD0));
  HIDWORD(v131) = v123;
  LODWORD(v131) = (v126 ^ 0xFFFFFFD0) << 24;
  *(v4 - 256) = (v131 >> 31) ^ 0x2B;
  HIDWORD(v131) = *(v4 - 144);
  LODWORD(v131) = (*(v4 - 152) ^ 0xFFFFFFDD) << 24;
  *(v4 - 136) = (v131 >> 31) ^ 0xFFFFFF96;
  *(v4 - 216) = v117;
  HIDWORD(v131) = v116;
  LODWORD(v131) = v117 << 24;
  *(v4 - 232) = (v131 >> 31) ^ 9;
  return (*(v121 + 8 * v133))((v127 ^ 0x80));
}

uint64_t sub_10025B548()
{
  v4 = v0 ^ 0x38A2;
  v5 = v2 + 120 * v1;
  v6 = *(v5 + 24);
  LODWORD(v5) = *(v5 + 16);
  STACK[0x2F8] = v6;
  LODWORD(STACK[0x26C]) = v5;
  return (*(v3 + 8 * v4))();
}

uint64_t sub_10025B844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v11 = v10 > v8;
  if (v11 == (a6 - 1106340634) < 0x17533130)
  {
    v11 = a6 - 1106340634 < v7;
  }

  return (*(v9 + 8 * (((a5 & ~(v6 ^ 0x7CCD ^ v11)) * ((v6 - 2638) ^ 0xD64)) ^ v6)))();
}

uint64_t sub_10025B96C(uint64_t a1, int8x16_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v15 = (a7 + v12 + a5 + 8) & 0xF;
  v17.val[0].i64[0] = v15;
  v17.val[0].i64[1] = (v11 + v12 + 22) & 0xF;
  v17.val[1].i64[0] = (v11 + v12 + 21) & 0xF;
  v17.val[1].i64[1] = (v11 + v12 + 20) & 0xF;
  v17.val[2].i64[0] = (v11 + v12 + 19) & 0xF;
  v17.val[2].i64[1] = (v11 + v12 + 18) & 0xF;
  v17.val[3].i64[0] = (v11 + v12 + 17) & 0xF;
  v17.val[3].i64[1] = (v11 + v12 + 8) & 0xF ^ 8;
  *(a6 + v12 + a5 + 8) = veor_s8(veor_s8(veor_s8(*(v8 + v15 - 7), *(a6 + v12 + a5 + 8)), veor_s8(*(v15 + v9 - 6), *(v15 + v10 - 4))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v17, a2), a3)));
  return (*(v14 + 8 * (((a1 == v12) * a8) ^ v13)))();
}

uint64_t sub_10025BA40@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v6 + v2 + 8);
  v9 = (a1 + v2);
  *v9 = *(v6 + v2);
  v9[1] = v8;
  return (*(v7 + 8 * (((v4 + v2 != v1) * v5) ^ v3)))();
}

uint64_t sub_10025BB1C()
{
  v1 = STACK[0xB934];
  LODWORD(STACK[0xB934]) += 4;
  LOBYTE(v1) = (v1 - 1099819929) < 0x20;
  LOBYTE(STACK[0xB93B]) = v1;
  return (*(STACK[0xF18] + 8 * ((46 * ((v1 ^ (105 * (v0 ^ 0x80))) & 1)) ^ v0)))();
}

uint64_t sub_10025BBE8()
{
  *(v1 + 8) = *v2;
  *(v1 + 16) = -371865839;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_10025BC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, int a47, int a48, char a49, __int16 a50, char a51, __int16 a52, char a53, __int16 a54, char a55, __int16 a56, char a57, __int16 a58, char a59, int a60, int a61, char a62, __int16 a63)
{
  LODWORD(STACK[0x298]) = 0;
  v110 = 7 * (v106 ^ 0x6234);
  v111 = v106;
  v112 = v107 & 0xFFFFFFF6 ^ 0xA756A29DLL;
  *(v109 - 168) = v112;
  LOBYTE(v112) = *(v108 + v112);
  LODWORD(STACK[0x2B8]) = v110;
  v113 = STACK[0x220];
  LODWORD(v112) = *(STACK[0x220] + 4 * (v112 ^ (v110 + 0x80)));
  v114 = v107;
  v115 = 19867 * (v106 ^ 0x6E07);
  LODWORD(STACK[0x2A4]) = v115;
  HIDWORD(v117) = v112 ^ 0x92;
  LODWORD(v117) = v112 ^ (v115 + 1954783434);
  v116 = v117 >> 9;
  v118 = v114;
  v119 = v114 & 0xFFFFFFF2 ^ 0xA756A29DLL;
  *(v109 - 160) = v119;
  LODWORD(v119) = *(v113 + 4 * (*(v108 + v119) ^ 7));
  HIDWORD(v117) = v119 ^ 0x92;
  LODWORD(v117) = v119 ^ 0x74843C00;
  v120 = v114 & 0xFFFFFFF9 ^ 0xA756A296;
  *(v109 - 152) = v120;
  v121 = *(v108 + v120);
  v122 = v114 & 0xFFFFFFF8 ^ 0xA756A297;
  *(v109 - 176) = v122;
  v123 = *(v108 + v122);
  v124 = STACK[0x210];
  v125 = STACK[0x208];
  v126 = *(STACK[0x208] + (v123 ^ 0xF6));
  LODWORD(v121) = *(STACK[0x210] + 4 * (v121 ^ 0x15)) ^ v121;
  v127 = v114 & 0xFFFFFFF7 ^ 0xA756A29CLL;
  *(v109 - 216) = v127;
  v128 = STACK[0x218];
  v129 = *(STACK[0x218] + 4 * (*(v108 + v127) ^ 0xA5));
  v130 = v114 & 0xFFFFFFF1 ^ 0xA756A29ELL;
  *(v109 - 192) = v130;
  v131 = *(v108 + v130);
  LODWORD(v127) = *(v124 + 4 * (v131 ^ 5));
  v132 = v114 & 0xFFFFFFFB ^ 0xA756A294;
  *(v109 - 184) = v132;
  v133 = v121 ^ (*(v128 + 4 * (*(v108 + v132) ^ 0xEBLL)) - 1475806990) ^ (v126 ^ v123 ^ 0xEC ^ ((v123 ^ 0xEC) + 46));
  v134 = v114 & 0xFFFFFFF0 ^ 0xA756A29FLL;
  *(v109 - 200) = v134;
  v135 = *(v108 + v134);
  LOBYTE(v132) = v135 ^ 0x6E;
  LOBYTE(v135) = *(v125 + (v135 ^ 0x74));
  v136 = v114 & 0xFFFFFFF3 ^ 0xA756A29CLL;
  *(v109 - 256) = v136;
  v137 = (1487415654 * (v117 >> 9)) ^ (v117 >> 9) ^ v131 ^ v127 ^ (*(v128 + 4 * (*(v108 + v136) ^ 0x6BLL)) - 1475806990) ^ (v132 ^ (v132 + 46) ^ v135);
  v138 = v114 & 0xFFFFFFFC ^ 0xA756A297;
  *(v109 - 240) = v138;
  LOBYTE(v138) = *(v108 + v138) ^ 5 ^ ((*(v108 + v138) ^ 5) + 46) ^ *(v125 + (*(v108 + v138) ^ 0x1FLL));
  v139 = v114 ^ 0xA756A294;
  *(v109 - 208) = v139;
  LODWORD(v139) = *(v128 + 4 * (*(v108 + v139) ^ 0xF8));
  v140 = v118;
  v141 = v118 & 0xFFFFFFFE ^ 0xA756A295;
  STACK[0x2C8] = v141;
  LODWORD(v131) = *(v113 + 4 * (*(v108 + v141) ^ 0x43));
  LODWORD(v141) = (v131 << 23) & 0xD6000000 ^ 0x69F72A29 ^ ((((((v131 ^ 0x74843C92) >> (v123 & 9)) - ((2 * ((v131 ^ 0x74843C92) >> (v123 & 9))) & 0x6295891C) - 1320500082) ^ 0xB14AC48E) >> ((v123 & 1) == 0) >> (~v123 & 8)) ^ 0x29F72A29) & ((v131 << 23) ^ 0xB6FFFFFF);
  v142 = v140 & 0xFFFFFFFD ^ 0xA756A296;
  *(v109 - 224) = v142;
  LODWORD(v131) = 1487415654 * v141;
  LODWORD(v138) = v138 ^ (v139 - 1475806990) ^ *(v108 + v142) ^ *(v124 + 4 * (*(v108 + v142) ^ 0xF9)) ^ v141;
  v143 = v140 & 0xFFFFFFF4 ^ 0xA756A29FLL;
  *(v109 - 232) = v143;
  v144 = *(v108 + v143);
  v145 = v138 ^ v131;
  *(v109 - 244) = v140;
  v146 = v140 & 0xFFFFFFF5 ^ 0xA756A29ELL;
  STACK[0x2D0] = v146;
  LOBYTE(v138) = v144 ^ 0x86 ^ ((v144 ^ 0x86) + 46) ^ *(v125 + (v144 ^ 0x9C));
  v147 = v116 ^ (v129 - 1475806990) ^ *(v108 + v146) ^ *(v124 + 4 * (*(v108 + v146) ^ 0x54));
  v148 = v140 & 0xFFFFFFFA ^ 0xA756A295;
  STACK[0x2D8] = v148;
  LODWORD(v127) = (1487415654 * v116) ^ v147 ^ v138;
  LODWORD(v138) = *(v113 + 4 * (*(v108 + v148) ^ 0x7ALL));
  HIDWORD(v117) = v138 ^ 0x92;
  LODWORD(v117) = v138 ^ 0x74843C00;
  v149 = v133 ^ (v117 >> 9) ^ (1487415654 * (v117 >> 9));
  LODWORD(STACK[0x2B0]) = v145;
  v150 = a93 ^ v145;
  v151 = *(&off_1010A0B50 + (v111 ^ 0x6CBC)) - 48647903;
  LODWORD(v138) = *&v151[4 * (HIBYTE(v150) ^ 0xC5)] + (HIBYTE(v150) ^ 0xB20B727) - 783652992;
  LODWORD(v146) = STACK[0x248];
  LODWORD(STACK[0x2A8]) = v149;
  LODWORD(v113) = v149 ^ v146;
  LODWORD(v148) = (v149 ^ v146);
  LODWORD(v131) = (v148 ^ 0x1E) - (v148 ^ 0x2CFB93E3);
  LODWORD(v146) = STACK[0x22C];
  LODWORD(STACK[0x2B4]) = v137;
  LODWORD(v139) = v137 ^ v146;
  LODWORD(STACK[0x2C4]) = v111;
  v152 = *(&off_1010A0B50 + (v111 ^ 0x6ED4)) - 1547796487;
  LODWORD(v132) = *&v152[4 * (((v137 ^ v146) >> 16) ^ 0xA7)];
  LODWORD(v146) = a92;
  LODWORD(STACK[0x2AC]) = v127;
  v153 = *(&off_1010A0B50 + (v111 ^ 0x6BA3)) - 1100943498;
  v154 = v148 ^ 0x74;
  v155 = *(&off_1010A0B50 + (v111 ^ 0x6352)) - 552851279;
  LODWORD(v136) = LODWORD(STACK[0x200]) ^ (v132 + 298920797) ^ (*&v153[4 * (((a92 ^ v127) >> 8) ^ 0x64)] - 36016749) ^ *&v155[4 * v154] ^ v131 ^ v138;
  v156 = (((v146 ^ v127) ^ 0x60) - ((v146 ^ v127) ^ 0x2CFB939D)) ^ LODWORD(STACK[0x244]) ^ ((BYTE3(v113) ^ 0xB20B7B0) - 783652992 + *&v151[4 * (BYTE3(v113) ^ 0x52)]) ^ (*&v153[4 * (BYTE1(v139) ^ 0x63)] - 36016749) ^ *&v155[4 * ((v146 ^ v127) ^ 0xA)] ^ (*&v152[4 * (BYTE2(v150) ^ 0x11)] + 298920797);
  LODWORD(v132) = ((v139 ^ 0x2A) - (v139 ^ 0x2CFB93D7)) ^ a105 ^ (*&v152[4 * (BYTE2(v113) ^ 0xB7)] + 298920797) ^ ((((v146 ^ v127) >> 24) ^ 0xB20B7B0) - 783652992 + *&v151[4 * (((v146 ^ v127) >> 24) ^ 0x52)]) ^ *&v155[4 * (v139 ^ 0x40)] ^ (*&v153[4 * (BYTE1(v150) ^ 0x84)] - 36016749);
  LODWORD(v139) = ((v150 ^ 0x3A) - (v150 ^ 0x2CFB93C7)) ^ LODWORD(STACK[0x258]) ^ ((BYTE3(v139) ^ 0xB20B780) - 783652992 + *&v151[4 * (BYTE3(v139) ^ 0x62)]) ^ (*&v152[4 * ((BYTE2(a92) ^ BYTE2(v127)) ^ 0x60)] + 298920797) ^ (*&v153[4 * (BYTE1(v113) ^ 0x51)] - 36016749) ^ *&v155[4 * (v150 ^ 0x50)];
  v157 = ((v156 ^ 0xD5) - (v156 ^ 0x2CFB9328)) ^ LODWORD(STACK[0x28C]) ^ (*&v152[4 * (BYTE2(v139) ^ 0xAD)] + 298920797) ^ ((BYTE3(v136) ^ 0xB20B7F9) - 783652992 + *&v151[4 * (BYTE3(v136) ^ 0x1B)]) ^ (*&v153[4 * (((v132 ^ a106) >> 8) ^ 0x4E)] - 36016749) ^ *&v155[4 * (v156 ^ 0xBF)];
  LODWORD(v113) = a104 ^ ((v132 ^ 0xC8) - (v132 ^ 0x2CFB9335)) ^ ((HIBYTE(v156) ^ 0xB20B7BB) - 783652992 + *&v151[4 * (HIBYTE(v156) ^ 0x59)]) ^ (*&v152[4 * (BYTE2(v136) ^ 0x97)] + 298920797) ^ (*&v153[4 * (BYTE1(v139) ^ 0xFD)] - 36016749) ^ *&v155[4 * (v132 ^ 0xA2)];
  v158 = a103 ^ ((v139 ^ 0x27) - (v139 ^ 0x2CFB93DA)) ^ ((BYTE3(v132) ^ 0xB20B72B) - 783652992 + *&v151[4 * (BYTE3(v132) ^ 0xC9)]) ^ (*&v152[4 * (BYTE2(v156) ^ 0xF0)] + 298920797) ^ (*&v153[4 * (BYTE1(v136) ^ 0x97)] - 36016749) ^ *&v155[4 * (v139 ^ 0x4D)];
  LODWORD(v138) = (v136 ^ a72);
  LODWORD(v132) = a102 ^ ((v138 ^ 5) - (v138 ^ 0x2CFB93F8)) ^ ((BYTE3(v139) ^ 0xB20B7D1) - 783652992 + *&v151[4 * (BYTE3(v139) ^ 0x33)]) ^ (*&v152[4 * (BYTE2(v132) ^ 0x83)] + 298920797) ^ (*&v153[4 * (BYTE1(v156) ^ 0x4A)] - 36016749) ^ *&v155[4 * (v138 ^ 0x6F)];
  LODWORD(v131) = (v113 ^ a70);
  v159 = LODWORD(STACK[0x264]) ^ ((v131 ^ 0x93) - (v131 ^ 0x2CFB936E)) ^ (*&v152[4 * (BYTE2(v132) ^ 0x3C)] + 298920797) ^ ((HIBYTE(v157) ^ 0xB20B74B) - 783652992 + *&v151[4 * (HIBYTE(v157) ^ 0xA9)]) ^ *&v155[4 * (v131 ^ 0xF9)] ^ (*&v153[4 * (BYTE1(v158) ^ 0x1D)] - 36016749);
  v160 = a101 ^ (((v158 ^ a68) ^ 0xAA) - ((v158 ^ a68) ^ 0x2CFB9357)) ^ ((BYTE3(v113) ^ 0xB20B755) - 783652992 + *&v151[4 * (BYTE3(v113) ^ 0xB7)]) ^ (*&v152[4 * (BYTE2(v157) ^ 0xBB)] + 298920797) ^ *&v155[4 * ((v158 ^ a68) ^ 0xC0)] ^ (*&v153[4 * (BYTE1(v132) ^ 0x62)] - 36016749);
  LODWORD(v139) = (v132 ^ a73);
  LODWORD(v131) = BYTE3(v132);
  v161 = *&v151[4 * (BYTE3(v132) ^ 0x65)];
  v162 = a100 ^ ((v139 ^ 0x3A) - (v139 ^ 0x2CFB93C7)) ^ ((HIBYTE(v158) ^ 0xB20B718) - 783652992 + *&v151[4 * (HIBYTE(v158) ^ 0xFA)]) ^ (*&v152[4 * (BYTE2(v113) ^ 0x70)] + 298920797) ^ (*&v153[4 * (BYTE1(v157) ^ 0xF2)] - 36016749) ^ *&v155[4 * (v139 ^ 0x50)];
  v163 = ((v157 ^ 0x17) - (v157 ^ 0x2CFB93EA)) ^ LODWORD(STACK[0x254]) ^ ((v131 ^ 0xB20B787) - 783652992 + v161) ^ (*&v152[4 * (BYTE2(v158) ^ 0x64)] + 298920797) ^ (*&v153[4 * (BYTE1(v113) ^ 0x53)] - 36016749) ^ *&v155[4 * (v157 ^ 0x7D)];
  v164 = (v160 ^ a64);
  v165 = ((v164 ^ 3) - (v164 ^ 0x2CFB93FE)) ^ LODWORD(STACK[0x288]) ^ ((HIBYTE(v159) ^ 0xB20B7C8) - 783652992 + *&v151[4 * (HIBYTE(v159) ^ 0x2A)]) ^ (*&v152[4 * (BYTE2(v163) ^ 0x85)] + 298920797) ^ (*&v153[4 * (BYTE1(v162) ^ 0xD5)] - 36016749) ^ *&v155[4 * (v164 ^ 0x69)];
  v166 = ((HIBYTE(v160) ^ 0xB20B7E9) - 783652992 + *&v151[4 * (HIBYTE(v160) ^ 0xB)]) ^ 0x2FC746CC;
  LODWORD(STACK[0x2C0]) = *(v109 - 124) < 0x838C3473;
  if ((v166 & a48) != 0)
  {
    v167 = a46;
  }

  else
  {
    v167 = a48;
  }

  v168 = (((v162 ^ a62) ^ 0x6A) - ((v162 ^ a62) ^ 0x2CFB9397)) ^ a47 ^ (*&v152[4 * (BYTE2(v159) ^ 0x1C)] + 298920797) ^ *&v155[4 * (v162 ^ a62)] ^ (*&v153[4 * (BYTE1(v163) ^ 0x12)] - 36016749) ^ (v167 + v166);
  v169 = ((v163 ^ 0xE0) - (v163 ^ 0x2CFB931D)) ^ LODWORD(STACK[0x284]) ^ ((HIBYTE(v162) ^ 0xB20B7CD) - 783652992 + *&v151[4 * (HIBYTE(v162) ^ 0x2F)]) ^ (*&v152[4 * (BYTE2(v160) ^ 0x3B)] + 298920797) ^ (*&v153[4 * (BYTE1(v159) ^ 0xAF)] - 36016749) ^ *&v155[4 * (v163 ^ 0x8A)];
  v170 = (v159 ^ a66);
  v171 = ((v170 ^ 0xA) - (v170 ^ 0x2CFB93F7)) ^ LODWORD(STACK[0x238]) ^ ((HIBYTE(v163) ^ 0xB20B722) - 783652992 + *&v151[4 * (HIBYTE(v163) ^ 0xC0)]) ^ (*&v152[4 * (BYTE2(v162) ^ 0xDB)] + 298920797) ^ (*&v153[4 * (BYTE1(v160) ^ 0x24)] - 36016749) ^ *&v155[4 * (v170 ^ 0x60)];
  v172 = ((v168 ^ 0x4A) - (v168 ^ 0x2CFB93B7)) ^ LODWORD(STACK[0x280]) ^ ((HIBYTE(v165) ^ 0xB20B7D7) - 783652992 + *&v151[4 * (HIBYTE(v165) ^ 0x35)]) ^ (*&v152[4 * (BYTE2(v171) ^ 4)] + 298920797) ^ *&v155[4 * (v168 ^ 0x20)] ^ (*&v153[4 * (BYTE1(v169) ^ 0xA2)] - 36016749);
  v173 = *&v152[4 * (BYTE2(v165) ^ 0x4B)];
  v174 = a91 ^ ((HIBYTE(v168) ^ 0xB20B79A) - 783652992 + *&v151[4 * (HIBYTE(v168) ^ 0x78)]) ^ (v173 - ((2 * v173 + 597841594) & 0x2CE41C1E) - 1471989396);
  v175 = *&v153[4 * (BYTE1(v171) ^ 0xBC)] - 36016749;
  v176 = v174 & 2;
  if ((v174 & 2 & v175) != 0)
  {
    v176 = -v176;
  }

  v177 = *&v155[4 * (v169 ^ 0xAE)] ^ ((v169 ^ 0xC4) - (v169 ^ 0x2CFB9339)) ^ v174 & 0xFFFFFFFD ^ (v176 + v175);
  v178 = ((v171 ^ 0xFF) - (v171 ^ 0x2CFB9302)) ^ LODWORD(STACK[0x27C]) ^ ((HIBYTE(v169) ^ 0xB20B728) - 783652992 + *&v151[4 * (HIBYTE(v169) ^ 0xCA)]) ^ (*&v153[4 * (BYTE1(v165) ^ 0x66)] - 36016749) ^ (*&v152[4 * (BYTE2(v168) ^ 0x2C)] + 298920797) ^ *&v155[4 * (v171 ^ 0x95)];
  v179 = ((v165 ^ 0x79) - (v165 ^ 0x2CFB9384)) ^ LODWORD(STACK[0x230]) ^ ((HIBYTE(v171) ^ 0xB20B774) - 783652992 + *&v151[4 * (HIBYTE(v171) ^ 0x96)]) ^ (*&v152[4 * (BYTE2(v169) ^ 0x4F)] + 298920797) ^ *&v155[4 * (v165 ^ 0x13)] ^ (*&v153[4 * (BYTE1(v168) ^ 0x12)] - 36016749);
  v180 = ((-(HIBYTE(v172) ^ 0xDC) ^ (-186693578 - (HIBYTE(v172) ^ 0xF4DF48EA)) ^ 0xFF61222C ^ ((HIBYTE(v172) ^ 0xDC) - ((2 * (HIBYTE(v172) ^ 0xDC)) & 0x1A6) + 10411475)) + *&v151[4 * (HIBYTE(v172) ^ 0xF7)] - 596959414) ^ LODWORD(STACK[0x278]) ^ (*&v152[4 * (BYTE2(v179) ^ 7)] + 298920797) ^ (*&v153[4 * (BYTE1(v178) ^ 0xA5)] - 36016749) ^ ((v177 ^ 0x82) - (v177 ^ 0x2CFB937F)) ^ *&v155[4 * (v177 ^ 0xE8)];
  v181 = a99 ^ ((v178 ^ 0xEB) - (v178 ^ 0x2CFB9316)) ^ (*&v152[4 * (BYTE2(v172) ^ 0x93)] + 298920797) ^ (*&v153[4 * (BYTE1(v179) ^ 0xF1)] - 36016749) ^ *&v155[4 * (v178 ^ 0x81)] ^ ((HIBYTE(v177) ^ 0xB20B79A) - 783652992 + *&v151[4 * (HIBYTE(v177) ^ 0x78)]);
  v182 = a98 ^ ((v179 ^ 0xB7) - (v179 ^ 0x2CFB934A)) ^ ((HIBYTE(v178) ^ 0xB20B767) - 783652992 + *&v151[4 * (HIBYTE(v178) ^ 0x85)]) ^ (*&v153[4 * (BYTE1(v172) ^ 0x21)] - 36016749) ^ *&v155[4 * (v179 ^ 0xDD)] ^ (*&v152[4 * (BYTE2(v177) ^ 0xF9)] + 298920797);
  v183 = a97 ^ ((v172 ^ 0x2E) - (v172 ^ 0x2CFB93D3)) ^ ((HIBYTE(v179) ^ 0xB20B701) - 783652992 + *&v151[4 * (HIBYTE(v179) ^ 0xE3)]) ^ (*&v152[4 * (BYTE2(v178) ^ 0x4D)] + 298920797) ^ *&v155[4 * (v172 ^ 0x44)] ^ (*&v153[4 * (BYTE1(v177) ^ 0x60)] - 36016749);
  v184 = (v181 ^ a59);
  v185 = ((v184 ^ 0xEC) - (v184 ^ 0x2CFB9311)) ^ LODWORD(STACK[0x274]) ^ ((HIBYTE(v180) ^ 0xB20B706) - 783652992 + *&v151[4 * (HIBYTE(v180) ^ 0xE4)]) ^ (*&v152[4 * (BYTE2(v183) ^ 0xFC)] + 298920797) ^ (*&v153[4 * (BYTE1(v182) ^ 0x24)] - 36016749) ^ *&v155[4 * (v184 ^ 0x86)];
  v186 = (v182 ^ a57);
  v187 = ((v186 ^ 0x5C) - (v186 ^ 0x2CFB93A1)) ^ LODWORD(STACK[0x268]) ^ (*&v152[4 * (BYTE2(v180) ^ 0x77)] + 298920797) ^ ((HIBYTE(v181) ^ 0xB20B77C) - 783652992 + *&v151[4 * (HIBYTE(v181) ^ 0x9E)]) ^ (*&v153[4 * (BYTE1(v183) ^ 0xFC)] - 36016749) ^ *&v155[4 * (v186 ^ 0x36)];
  v188 = (v183 ^ a74);
  v189 = a96 ^ ((v188 ^ 0x69) - (v188 ^ 0x2CFB9394)) ^ ((HIBYTE(v182) ^ 0xB20B769) - 783652992 + *&v151[4 * (HIBYTE(v182) ^ 0x8B)]) ^ (*&v152[4 * (BYTE2(v181) ^ 0x36)] + 298920797) ^ (*&v153[4 * (BYTE1(v180) ^ 0x3D)] - 36016749) ^ *&v155[4 * (v188 ^ 3)];
  v190 = ((v180 ^ 0x61) - (v180 ^ 0x2CFB939C)) ^ LODWORD(STACK[0x250]) ^ (*&v152[4 * (BYTE2(v182) ^ 0xD4)] + 298920797) ^ ((HIBYTE(v183) ^ 0xB20B70D) - 783652992 + *&v151[4 * (HIBYTE(v183) ^ 0xEF)]) ^ (*&v153[4 * (BYTE1(v181) ^ 0xE6)] - 36016749) ^ *&v155[4 * (v180 ^ 0xB)];
  v191 = LODWORD(STACK[0x260]) ^ ((v187 ^ 0x44) - (v187 ^ 0x2CFB93B9)) ^ ((HIBYTE(v185) ^ 0xB20B798) - 783652992 + *&v151[4 * (HIBYTE(v185) ^ 0x7A)]) ^ (*&v152[4 * (BYTE2(v190) ^ 0x8E)] + 298920797) ^ *&v155[4 * (v187 ^ 0x2E)] ^ (*&v153[4 * (BYTE1(v189) ^ 0x88)] - 36016749);
  v192 = (v189 ^ a55);
  v193 = a95 ^ ((v192 ^ 0xE8) - (v192 ^ 0x2CFB9315)) ^ ((HIBYTE(v187) ^ 0xB20B738) - 783652992 + *&v151[4 * (HIBYTE(v187) ^ 0xDA)]) ^ (*&v152[4 * (BYTE2(v185) ^ 0x34)] + 298920797) ^ (*&v153[4 * (BYTE1(v190) ^ 0xEB)] - 36016749) ^ *&v155[4 * (v192 ^ 0x82)];
  v194 = a94 ^ ((v190 ^ 0x7F) - (v190 ^ 0x2CFB9382)) ^ (*&v152[4 * (BYTE2(v187) ^ 0x35)] + 298920797) ^ ((HIBYTE(v189) ^ 0xB20B7E4) - 783652992 + *&v151[4 * (HIBYTE(v189) ^ 6)]) ^ (*&v153[4 * (BYTE1(v185) ^ 0xE3)] - 36016749) ^ *&v155[4 * (v190 ^ 0x15)];
  v195 = (HIBYTE(v190) ^ 0xB20B711) - 783652992 + *&v151[4 * (HIBYTE(v190) ^ 0xF3)];
  v196 = (*&v152[4 * (BYTE2(v189) ^ 0xF4)] + 298920797) ^ ((v185 ^ 0x9F) - (v185 ^ 0x2CFB9362)) ^ *&v155[4 * (v185 ^ 0xF5)] ^ (*&v153[4 * (BYTE1(v187) ^ 0x26)] - 36016749) ^ ((a88 ^ ((a89 ^ v195) - (a90 ^ v195))) + (a89 ^ v195));
  v197 = a87 ^ (((v193 ^ a51) ^ 0xF2) - ((v193 ^ a51) ^ 0x2CFB930F)) ^ ((HIBYTE(v191) ^ 0xB20B731) - 783652992 + *&v151[4 * (HIBYTE(v191) ^ 0xD3)]) ^ (*&v153[4 * (BYTE1(v194) ^ 3)] - 36016749) ^ *&v155[4 * ((v193 ^ a51) ^ 0x98)] ^ (*&v152[4 * (BYTE2(v196) ^ 0x88)] + 298920797);
  v198 = a86 ^ ((HIBYTE(v193) ^ 0xB20B7EB) - 783652992 + *&v151[4 * (HIBYTE(v193) ^ 9)]) ^ (*&v152[4 * (BYTE2(v191) ^ 0x15)] + 298920797) ^ 0x187014B0 ^ (*&v153[4 * (BYTE1(v196) ^ 0x66)] - 36016749);
  v199 = (v194 ^ a49);
  v200 = *&v155[4 * (v199 ^ 0x2B)] ^ ((v199 ^ 0x41) - (v199 ^ 0x2CFB93BC) - ((2 * ((v199 ^ 0x41) - (v199 ^ 0x2CFB93BC))) & 0x22008B9A) - 1318861363);
  v201 = v198 & 0x8000000;
  if ((v198 & 0x8000000 & v200) != 0)
  {
    v201 = -v201;
  }

  v202 = (v201 + v200) ^ v198 & 0xF7FFFFFF;
  v203 = *&v151[4 * (HIBYTE(v196) ^ 0x46)];
  v204 = a85 ^ ((v196 ^ 7) - (v196 ^ 0x2CFB93FA)) ^ ((HIBYTE(v194) ^ 0xB20B797) - 783652992 + *&v151[4 * (HIBYTE(v194) ^ 0x75)]) ^ (*&v152[4 * (BYTE2(v193) ^ 0x7C)] + 298920797) ^ (*&v153[4 * (BYTE1(v191) ^ 0x2D)] - 36016749) ^ *&v155[4 * (v196 ^ 0x6D)];
  v205 = (HIBYTE(v196) ^ 0xB20B7A4) - 783652992 + v203;
  v206 = *&v152[4 * (BYTE2(v194) ^ 0x69)];
  v207 = *&v153[4 * (BYTE1(v193) ^ 0x3E)];
  v208 = ((2 * (v207 ^ 0x538E6348)) ^ 0x261C53BC) & (v207 ^ 0x538E6348) ^ (2 * (v207 ^ 0x538E6348)) & 0x930E29DE;
  v209 = 2 * (v207 & 0xC0804A96);
  v210 = (v208 ^ 0x2000098) & (4 * (v209 & (v207 ^ 0xD28E6244) ^ v207 & 0xC0804A96)) ^ v209 & (v207 ^ 0xD28E6244) ^ v207 & 0xC0804A96;
  v211 = ((4 * (v208 ^ 0x91022842)) ^ 0x4C38A778) & (v208 ^ 0x91022842) ^ (4 * (v208 ^ 0x91022842)) & 0x930E29D8;
  v212 = (v211 ^ 0x82140) & (16 * v210) ^ v210;
  v213 = ((16 * (v211 ^ 0x93060886)) ^ 0x30E29DE0) & (v211 ^ 0x93060886) ^ (16 * (v211 ^ 0x93060886)) & 0x930E29C0;
  v214 = v212 ^ 0x930E29DE ^ (v213 ^ 0x10020900) & (v212 << 8);
  v215 = (v214 << 16) & 0x120C0000 ^ v214 ^ ((v214 << 16) ^ 0x88C0000) & (((v213 ^ 0x830C201E) << 8) & 0x130E0000 ^ 0x10040000 ^ (((v213 ^ 0x830C201E) << 8) ^ 0xE290000) & (v213 ^ 0x830C201E));
  v216 = (v209 & 0x1100 | v207 & 0xC0804A96) ^ v209 & (v207 ^ 0xDC217B57);
  v217 = (2 * (v207 ^ 0xDC217B57)) & 0x1CA131C0 ^ 0x4A11041 ^ ((2 * (v207 ^ 0xDC217B57)) ^ 0x39426382) & (v207 ^ 0xDC217B57);
  v218 = (4 * v216) & v217 ^ v216 ^ ((4 * v216) & 0x40130C0 | 0x10800100);
  v219 = (4 * v217) & 0x1CA131C0 ^ 0xC2130C1 ^ ((4 * v217) ^ 0x7284C704) & v217;
  v220 = (16 * v218) & 0x1CA131C0 ^ v218 ^ ((16 * v218) ^ 0x8001000) & v219;
  v221 = (16 * v219) & 0x1CA131C0 ^ 0x14A021C1 ^ ((16 * v219) ^ 0xCA131C10) & v219;
  v222 = v220 ^ (v220 << 8) & 0x1CA13100 ^ ((v220 << 8) ^ 0x80110000) & v221;
  v223 = (v207 ^ (2 * (((v222 ^ 0x42020C1) << 16) & 0x1CA10000 ^ v222 ^ 0x42020C1 ^ (((v222 ^ 0x42020C1) << 16) ^ 0x31C10000) & ((v221 << 8) & 0x1CA10000 ^ 0x1C800000 ^ ((v221 << 8) ^ 0x21310000) & v221))) ^ 0xE59A0BE9) + (((4 * v215) ^ (2 * v207)) & 0x7AB445FA ^ 0x48000050);
  v224 = a84 ^ (((v191 ^ a53) ^ 0x10) - ((v191 ^ a53) ^ 0x2CFB93ED)) ^ (v206 + 298920797) ^ *&v155[4 * ((v191 ^ a53) ^ 0x7A)] ^ v205;
  v225 = STACK[0x2C4];
  v226 = *(&off_1010A0B50 + (LODWORD(STACK[0x2C4]) ^ 0x64B9)) - 1906600642;
  LOBYTE(v209) = v197 ^ 0x20;
  v227 = *&v226[4 * ((v197 ^ 0xE7D3BE20) >> 24)];
  BYTE1(v205) = BYTE1(v202) ^ 0x95;
  LODWORD(STACK[0x2BC]) = *&v226[4 * ((v202 ^ 0x3B5995E2) >> 24)];
  LOBYTE(v207) = v204 ^ 0x6A;
  v228 = *&v226[4 * ((v204 ^ 0x6FAD5D6Au) >> 24)];
  v229 = v224 ^ v223;
  v230 = v224 ^ v223 ^ 0x51E12A23;
  LODWORD(v226) = *&v226[4 * HIBYTE(v230)];
  v231 = *(&off_1010A0B50 + (v225 ^ 0x625A)) - 399392775;
  v232 = *&v231[4 * BYTE2(v230)];
  v233 = *&v231[4 * ((v197 ^ 0xE7D3BE20) >> 16)];
  v234 = *&v231[4 * ((v202 ^ 0x3B5995E2) >> 16)];
  v235 = *&v231[4 * ((v204 ^ 0x6FAD5D6Au) >> 16)];
  LODWORD(v231) = (a82 ^ (((-1796753867 * v227 + 1542571916) ^ 0x1364BF52) - ((-1796753867 * v227 + 1542571916) ^ 0x1364BF52 ^ a83))) + ((-1796753867 * v227 + 1542571916) ^ 0x1364BF52);
  v236 = *(&off_1010A0B50 + (v225 ^ 0x6D2C)) - 1711246063;
  v237 = (v202 ^ 0x6667903B) - 105980287 + *&v236[4 * (v202 ^ 0xBD)];
  v238 = *(&off_1010A0B50 + (v225 ^ 0x7C66)) - 174668259;
  v239 = *&v238[4 * ((v204 ^ 0x5D6A) >> 8)];
  v240 = *&v238[4 * BYTE1(v230)];
  v241 = *&v238[4 * ((v197 ^ 0xBE20) >> 8)];
  LODWORD(v238) = *&v238[4 * BYTE1(v205)];
  v239 ^= 0xAFE9CBA1;
  v242 = a81 ^ *(v109 - 140) ^ v232 ^ 0x51736242 ^ v239 ^ (8 * (v232 ^ 0x51736242)) & 0xBEAD5720;
  LODWORD(v231) = (16 * v239) & 0xD3A40580 ^ v237 ^ v231;
  v243 = *&v236[4 * (v204 ^ 0x35)];
  v244 = *&v236[4 * (v229 ^ 0x7C)];
  v245 = *&v236[4 * (v197 ^ 0x7F)];
  v246 = v242 ^ v231;
  v247 = *(&off_1010A0B50 + (v225 ^ 0x7E5B)) - 2106150930;
  LODWORD(v231) = v247[BYTE2(v246) ^ 0x56];
  *(*(v109 - 120) + STACK[0x2C8]) = ((v231 >> 3) | (32 * v231)) ^ 0xF3;
  LODWORD(v231) = a79 ^ a78 ^ *(v109 - 136) ^ v235 ^ 0xC857EC21 ^ v238 ^ 0xDB5747C7 ^ (8 * (v235 ^ 0xC857EC21)) & 0xBEAD5720 ^ ((v209 ^ 0x666790D9) - 105980287 + v245) ^ (16 * (v238 ^ 0xDB5747C7)) & 0xD3A40580;
  v248 = -1796753867 * v226 + 1542571916;
  v249 = *(v109 - 120);
  v250 = v231 ^ v248;
  v251 = *(&off_1010A0B50 + v225 - 26585) - 214029266;
  *(v249 + *(v109 - 256)) = v251[((v231 ^ v248) >> 24) ^ 0x72] ^ 0x2A;
  v252 = a80 ^ LODWORD(STACK[0x25C]) ^ *(v109 - 132) ^ v241 ^ 0x7203A160 ^ (-1796753867 * v228 + 1542571916) ^ (16 * (v241 ^ 0x7203A160)) & 0xD3A40580 ^ (((8 * (v234 ^ 0x48D2094D)) | 0x4152A8D8) + (v234 ^ 0x48D2094D) - 2 * (((8 * (v234 ^ 0x48D2094D)) | 0x4152A8D8) & (v234 ^ 0x48D2094D))) ^ (v244 + (v230 ^ 0x666790D9) - 105980287);
  *(v249 + *(v109 - 216)) = v251[HIBYTE(v252) ^ 0x36] ^ 0x78;
  v253 = a77 ^ *(v109 - 128) ^ v233 ^ 0x997B72D8 ^ (-1796753867 * LODWORD(STACK[0x2BC]) + 1542571916) ^ (8 * (v233 ^ 0x997B72D8)) & 0xBEAD5720 ^ ((v207 ^ 0x666790D9) - 105980287 + v243) ^ v240 ^ 0x2841F1CE ^ (16 * (v240 ^ 0x2841F1CE)) & 0xD3A40580;
  v254 = *(&off_1010A0B50 + v225 - 27473) - 1604211466;
  LODWORD(v231) = v254[BYTE1(v252) ^ 7];
  *(v249 + STACK[0x2D0]) = ((v231 >> 1) | (v231 << 7)) ^ 0x9E;
  v255 = *(&off_1010A0B50 + v225 - 23511) - 1631256514;
  *(v249 + *(v109 - 240)) = (v255[v246 ^ 0xC9] + 62) ^ 0x5B;
  LODWORD(v231) = v247[BYTE2(v252) ^ 0xD0];
  *(v249 + *(v109 - 168)) = ((v231 >> 3) | (32 * v231)) ^ 0xF7;
  LODWORD(v231) = v247[BYTE2(v253) ^ 0x22];
  *(v249 + STACK[0x2D8]) = ((v231 >> 3) | (32 * v231)) ^ 0x8B;
  LODWORD(v231) = v254[BYTE1(v250) ^ 0xBDLL];
  *(v249 + *(v109 - 192)) = ((v231 >> 1) | (v231 << 7)) ^ 0x5B;
  *(v249 + *(v109 - 200)) = (v255[v250 ^ 0x69] + 62) ^ 0xE9;
  *(v249 + *(v109 - 176)) = (v255[a76 ^ v253] + 62) ^ 0x2F;
  *(v249 + *(v109 - 184)) = v251[HIBYTE(v253) ^ 0xC5] ^ 0x40;
  LODWORD(v231) = v247[BYTE2(v250) ^ 0x67];
  *(v249 + *(v109 - 160)) = ((v231 >> 3) | (32 * v231)) ^ 0x7B;
  LODWORD(v231) = v254[BYTE1(v246) ^ 0x71];
  *(v249 + *(v109 - 224)) = ((v231 >> 1) | (v231 << 7)) ^ 0x98;
  *(v249 + *(v109 - 208)) = v251[HIBYTE(v246) ^ 0xE0] ^ 0x55;
  *(v249 + *(v109 - 232)) = (v255[a75 ^ v252] + 62) ^ 0x7A;
  v256 = v254[BYTE1(v253) ^ 0x21];
  LODWORD(v231) = (((*(v109 - 244) ^ 0x432192E6) - 1126273766) ^ ((*(v109 - 244) ^ 0xE4682E7D) + 462934403) ^ ((*(v109 - 244) ^ 0x1F1E0F) - 2039311)) + 152569444;
  v257 = (v231 ^ 0xDCBC9C42) & (2 * (v231 & 0x9E3E9C40)) ^ v231 & 0x9E3E9C40;
  v258 = (2 * (v231 ^ 0xD8FC84C2)) & 0x46C21882 ^ 0x42420882 ^ ((2 * (v231 ^ 0xD8FC84C2)) ^ 0x8D843104) & (v231 ^ 0xD8FC84C2);
  v259 = (4 * v257) & v258 ^ v257 ^ ((4 * v257) & 0x40C21000 | 0x2000000);
  v260 = (4 * v258) & 0x46C21880 ^ 0x44C21882 ^ ((4 * v258) ^ 0x1B086208) & v258;
  v261 = v259 ^ (16 * v259) & 0x46C21880 ^ ((16 * v259) ^ 0x20000000) & v260 ^ 0x44C21882;
  v262 = (16 * v260) & 0x46C21880 ^ 0x2C21082 ^ ((16 * v260) ^ 0x6C218820) & v260;
  v263 = (v261 << 8) & 0x46C21800 ^ v261 ^ ((v261 << 8) ^ 0xC2188200) & v262;
  LODWORD(v254) = v231 ^ (2 * ((v263 << 16) & 0x46C20000 ^ v263 ^ ((v263 << 16) ^ 0x18820000) & ((v262 << 8) & 0x46C20000 ^ 0x4C20000 ^ ((v262 << 8) ^ 0x42180000) & v262)));
  *(v249 + *(v109 - 152)) = ((v256 >> 1) | (v256 << 7)) ^ 0xD0;
  LODWORD(v231) = (((v254 ^ 0x743C12D3) - 1171528963) ^ ((v254 ^ 0xA5C2BCA7) + 1809140873) ^ ((v254 ^ 0x47400330) - 1990724832)) + 719509255;
  v264 = LODWORD(STACK[0x2C0]) ^ (v231 < 0x838C3473);
  v265 = v231 < *(v109 - 124);
  if (v264)
  {
    v265 = STACK[0x2C0];
  }

  return (*(STACK[0x290] + 8 * ((49196 * v265) ^ v225)))();
}

uint64_t sub_10025E108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = &STACK[0x90A8];
  LODWORD(STACK[0x648C]) = 714548675;
  return (*(STACK[0xF18] + 8 * (v8 + 1167)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10025E150()
{
  LODWORD(STACK[0x1364]) = -371865839;
  v1 = STACK[0x7BD0] + 2240;
  STACK[0xED0] = v1;
  STACK[0x4E88] = v1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10025E1F8(double a1, double a2, double a3, double a4, double a5, double a6, int8x16_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v32 = v18 + a13 - 5;
  *(&v32 + 1) = v18 + a13 - 6;
  *&STACK[0xEC0] = v32;
  v33.i64[0] = v18 + a13 - 3;
  v33.i64[1] = v18 + a13 - 4;
  v34.i64[0] = v18 + a13 + 3;
  v34.i64[1] = v18 + a13 + 2;
  v35.i64[0] = v18 + a13 + 5;
  v35.i64[1] = v18 + a13 + 4;
  v36.i64[0] = v18 + a13 + 9;
  v36.i64[1] = v18 + a13 + 8;
  v37.i64[0] = v18 + a13 + v16;
  v37.i64[1] = v18 + a13 + 6;
  v38 = vandq_s8(v37, *&STACK[0xEB0]);
  v39 = vandq_s8(v36, *&STACK[0xEB0]);
  v40 = vandq_s8(v35, *&STACK[0xEB0]);
  v41 = vandq_s8(v34, *&STACK[0xEB0]);
  v42 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v46 = vorrq_s8(vandq_s8(vsubq_s64(v20, v45), v23), vandq_s8(vaddq_s64(v45, *&STACK[0xED0]), v22));
  v47 = vorrq_s8(vandq_s8(vsubq_s64(v20, v44), v23), vandq_s8(vaddq_s64(v44, *&STACK[0xED0]), v22));
  v48 = vorrq_s8(vandq_s8(vsubq_s64(v20, v43), v23), vandq_s8(vaddq_s64(v43, *&STACK[0xED0]), v22));
  v49 = vorrq_s8(vandq_s8(vsubq_s64(v20, v42), v23), vandq_s8(vaddq_s64(v42, *&STACK[0xED0]), v22));
  v50 = veorq_s8(v49, *&STACK[0xE40]);
  v51 = veorq_s8(v48, *&STACK[0xE40]);
  v52 = veorq_s8(v48, a7);
  v53 = veorq_s8(v49, a7);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v52), *&STACK[0xE20]);
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v53), *&STACK[0xE20]);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v58 = veorq_s8(v54, v55);
  v59 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = veorq_s8(vaddq_s64(v59, v57), v21);
  v62 = veorq_s8(v60, v21);
  v63 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v64 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v65 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v64);
  v67 = vaddq_s64(v65, v63);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), v24), v67), v25), v26);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v66, v66), v24), v66), v25), v26);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v71 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v72 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71);
  v74 = veorq_s8(vaddq_s64(v72, v70), v27);
  v75 = veorq_s8(v73, v27);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v77 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v77);
  v80 = vaddq_s64(v78, v76);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), v28), v80), v29), v30);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v79, v79), v28), v79), v29), v30);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v85 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v31);
  v88 = veorq_s8(v86, v31);
  v89.i64[0] = v18 + a13 - 1;
  v89.i64[1] = v18 + a13 - 2;
  v165.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL))), *&STACK[0xD80]), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v19)));
  v165.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL))), *&STACK[0xD80]), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v19)));
  v90 = veorq_s8(v47, *&STACK[0xE40]);
  v91 = veorq_s8(v47, a7);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), *&STACK[0xE20]);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v21);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), v24), v96), v25), v26);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v27);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), v28), v101), v29), v30);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v31);
  v34.i64[0] = v18 + a13 + 1;
  v34.i64[1] = v18 + a13;
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL)));
  v106 = vandq_s8(v34, *&STACK[0xEB0]);
  v165.val[0] = vshlq_u64(veorq_s8(v105, *&STACK[0xD80]), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v19)));
  v107 = veorq_s8(v46, *&STACK[0xE40]);
  v108 = veorq_s8(v46, a7);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), *&STACK[0xE20]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v21);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v24), v113), v25), v26);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v27);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v118, v118), v28), v118), v29), v30);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v31);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v124 = vandq_s8(v89, *&STACK[0xEB0]);
  v125 = vaddq_s64(v123, v122);
  v126 = v33;
  v127 = vandq_s8(v33, *&STACK[0xEB0]);
  v165.val[1] = vshlq_u64(veorq_s8(v125, *&STACK[0xD80]), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v19)));
  v128 = vandq_s8(*&STACK[0xEC0], *&STACK[0xEB0]);
  v129 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v133 = vorrq_s8(vandq_s8(vsubq_s64(v20, v132), v23), vandq_s8(vaddq_s64(v132, *&STACK[0xED0]), v22));
  v134 = vorrq_s8(vandq_s8(vsubq_s64(v20, v131), v23), vandq_s8(vaddq_s64(v131, *&STACK[0xED0]), v22));
  v135 = vorrq_s8(vandq_s8(vsubq_s64(v20, v130), v23), vandq_s8(vaddq_s64(v130, *&STACK[0xED0]), v22));
  v136 = vorrq_s8(vandq_s8(vsubq_s64(v20, v129), v23), vandq_s8(vaddq_s64(v129, *&STACK[0xED0]), v22));
  v165.val[3].i64[0] = vqtbl4q_s8(v165, *&STACK[0xEA0]).u64[0];
  v137 = veorq_s8(v136, *&STACK[0xE40]);
  v165.val[0] = veorq_s8(v135, *&STACK[0xE40]);
  v138 = veorq_s8(v135, a7);
  v139 = veorq_s8(v136, a7);
  v165.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v138), *&STACK[0xE20]);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v139), *&STACK[0xE20]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v142);
  v165.val[0] = veorq_s8(vaddq_s64(v165.val[1], v141), v21);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v145 = veorq_s8(v143, v21);
  v146 = veorq_s8(v145, v144);
  v147 = veorq_s8(v165.val[0], v165.val[1]);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v147);
  v165.val[0] = vaddq_s64(v165.val[1], v146);
  v165.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165.val[0], v165.val[0]), v24), v165.val[0]), v25), v26);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v24), v148), v25), v26);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(v165.val[0], v165.val[1]);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v151);
  v165.val[0] = veorq_s8(vaddq_s64(v165.val[1], v150), v27);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v153 = veorq_s8(v152, v27);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(v165.val[0], v165.val[1]);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v155);
  v165.val[0] = vaddq_s64(v165.val[1], v154);
  v165.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165.val[0], v165.val[0]), v28), v165.val[0]), v29), v30);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v156, v156), v28), v156), v29), v30);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v159 = veorq_s8(v165.val[0], v165.val[1]);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v159);
  v165.val[0] = veorq_s8(vaddq_s64(v165.val[1], v158), v31);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v161 = veorq_s8(v160, v31);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v164.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), veorq_s8(v165.val[0], v165.val[1])), *&STACK[0xD80]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0xEC0], 3uLL), v19)));
  v164.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), *&STACK[0xD80]), vnegq_s64(vandq_s8(vshlq_n_s64(v126, 3uLL), v19)));
  v165.val[0] = veorq_s8(v134, *&STACK[0xE40]);
  v165.val[1] = veorq_s8(v134, a7);
  v165.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v165.val[1]), *&STACK[0xE20]);
  v165.val[1] = veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL));
  v165.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v165.val[1]), v21);
  v165.val[1] = veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL));
  v165.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v165.val[1]);
  v165.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165.val[0], v165.val[0]), v24), v165.val[0]), v25), v26);
  v165.val[1] = veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL));
  v165.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v165.val[1]), v27);
  v165.val[1] = veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL));
  v165.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v165.val[1]);
  v165.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165.val[0], v165.val[0]), v28), v165.val[0]), v29), v30);
  v165.val[1] = veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL));
  v165.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v165.val[1]), v31);
  v164.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL))), *&STACK[0xD80]), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), v19)));
  v165.val[0] = veorq_s8(v133, *&STACK[0xE40]);
  v165.val[1] = veorq_s8(v133, a7);
  v165.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v165.val[1]), *&STACK[0xE20]);
  v165.val[1] = veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL));
  v165.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v165.val[1]), v21);
  v165.val[2] = vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL);
  v165.val[1] = vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL);
  v165.val[0] = veorq_s8(v165.val[0], v165.val[2]);
  v165.val[1] = vaddq_s64(v165.val[1], v165.val[0]);
  v165.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165.val[1], v165.val[1]), v24), v165.val[1]), v25), v26);
  v165.val[0] = veorq_s8(v165.val[1], vsraq_n_u64(vshlq_n_s64(v165.val[0], 3uLL), v165.val[0], 0x3DuLL));
  v165.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[1], 0x38uLL), v165.val[1], 8uLL), v165.val[0]), v27);
  v165.val[2] = vsraq_n_u64(vshlq_n_s64(v165.val[0], 3uLL), v165.val[0], 0x3DuLL);
  v165.val[0] = vsraq_n_u64(vshlq_n_s64(v165.val[1], 0x38uLL), v165.val[1], 8uLL);
  v165.val[1] = veorq_s8(v165.val[1], v165.val[2]);
  v165.val[0] = vaddq_s64(v165.val[0], v165.val[1]);
  v165.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165.val[0], v165.val[0]), v28), v165.val[0]), v29), v30);
  v165.val[1] = veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL));
  v165.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), v165.val[1]), v31);
  v164.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165.val[0], 0x38uLL), v165.val[0], 8uLL), veorq_s8(v165.val[0], vsraq_n_u64(vshlq_n_s64(v165.val[1], 3uLL), v165.val[1], 0x3DuLL))), *&STACK[0xD80]), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v19)));
  v165.val[3].i64[1] = vqtbl4q_s8(v164, *&STACK[0xEA0]).u64[0];
  v164.val[1] = vrev64q_s8(v165.val[3]);
  *(v34.i64[1] - 6) = veorq_s8(vextq_s8(v164.val[1], v164.val[1], 8uLL), *(v15 + a13));
  return (*(STACK[0xF18] + 8 * (((v14 == 0) * v17) ^ v13)))();
}

uint64_t sub_10025EC18()
{
  v5 = v2 > 0xAC41F162;
  *(v3 + 8 * (v1 - 203260964)) = 0;
  if (v5 == v1 + 1201703546 < ((v4 - 24909) | 0x2108u) + 1404955012)
  {
    v5 = v1 + 1201703546 < v0;
  }

  return (*(STACK[0xF18] + 8 * ((60 * !v5) ^ v4)))();
}

uint64_t sub_10025EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0xF10] - 35308;
  STACK[0x9980] = v4;
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x5A22)))(v4, a2, a4);
}

uint64_t sub_10025EFF4(uint64_t a1, uint64_t a2)
{
  STACK[0x5C70] = 0;
  LODWORD(STACK[0x8DB8]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v2 == v3 - 371909076) * ((v3 + 1689016082) & 0x9B53155F ^ 0x8B8)) ^ v3)))(a1, a2, 371891535);
}

uint64_t sub_10025F0A0()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21419 + ((v0 + 23626) | 0x710))))();
}

uint64_t sub_10025F1BC()
{
  v0 = STACK[0xF10] - 34896;
  LODWORD(STACK[0x98A4]) = STACK[0x9894];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1E3A ^ (9571 * ((v0 ^ 0xA445E2D5) < 0x5373C7B)))))();
}

uint64_t sub_10025F288()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762675456) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x2090BB80) - (&STACK[0x10000] + 3800) + 1601127544) ^ 0x6E6E895C));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 2090)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != ((3 * (((v0 - 49279) | 0x892B) ^ 0xA552)) ^ 0x8B3B) || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((58 * v4) ^ v0)))(v2);
}

uint64_t sub_10025F358()
{
  v2 = *(v0 + 8);
  STACK[0x54D0] = 0;
  return (*(STACK[0xF18] + 8 * ((26 * (((v2 == 0) ^ v1 ^ 0xB3 ^ ((v1 ^ 0xC7) + 1)) & 1)) ^ v1)))();
}

uint64_t sub_10025F3F0()
{
  v1 = STACK[0xF10] ^ 0x8EBF;
  v2 = STACK[0xF10] ^ 0xA3D1;
  v3 = STACK[0xF10] + 2670;
  STACK[0x58A8] = v0;
  return (*(STACK[0xF18] + 8 * (((v2 + v1 - 11859) * (v0 == 0)) ^ v3)))();
}

uint64_t sub_10025F43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = &STACK[0x3BB8];
  LODWORD(STACK[0x648C]) = -662525475;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10025F6FC(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  a2.n128_u16[0] = 27499;
  a2.n128_u8[2] = 107;
  a2.n128_u8[3] = 107;
  a2.n128_u8[4] = 107;
  a2.n128_u8[5] = 107;
  a2.n128_u8[6] = 107;
  a2.n128_u8[7] = 107;
  return (*(v9 + 8 * (a7 - 30003)))(8 - (v7 & 0x18), v7 - 10323, v7 + v8 - 8, xmmword_100F523B0, a2);
}

uint64_t sub_10025F764()
{
  LODWORD(STACK[0x628]) = 1;
  LOBYTE(STACK[0x62C]) = 1;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_10025F7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, int a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  *(v51 - 152) = a28 + 139493411 * (((v50 | 0x5A0F8BA5) - (v50 | 0xA5F0745A) - 1510968230) ^ 0x56226AE0) + v48;
  *(v51 - 136) = &a39;
  *(v51 - 128) = &a48;
  *(v51 - 144) = &a42;
  *(v51 - 160) = &a48;
  (*(v49 + 8 * a15))(v51 - 160);
  v52 = a40;
  *(v51 - 120) = a11 ^ (17902189 * (((v50 | 0x47CB2A66) - (v50 & 0x47CB2A60)) ^ 0xC9843C76));
  *(v51 - 144) = &a39;
  *(v51 - 136) = &a48;
  *(v51 - 128) = v52;
  *(v51 - 160) = &a42;
  *(v51 - 152) = &a48;
  v53 = (*(v49 + 8 * a14))(v51 - 160);
  return (*(v49 + 8 * ((112221 * (a16 < 0x2F9EAFA)) ^ a13)))(v53);
}

uint64_t sub_10025FA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unsigned int a51)
{
  *a7 = v51 - 1;
  v55 = a7[6 * ((v52 - 11189) | 0x238F) + 2 + 6 * v51 + 6 * ((79 * (v52 ^ 0x3AB0)) ^ 0xD6B2DC78)];
  LODWORD(STACK[0x2C8]) = a7[6 * (v51 - 692918782) + 6];
  return (*(v54 + 8 * ((18153 * (*(v53 + 48 * (v55 - 315866173) + 36) == 315866172)) ^ v52)))(v55, a51, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_10025FB5C@<X0>(int a1@<W8>, __n128 a2@<Q0>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  *(v35 - 120) = *(a33 + 8 * ((a1 - 819166783) & 0x30D321F7));
  v36.n128_u64[0] = (v33 + 13) & 0xF;
  v36.n128_u64[1] = (v33 + 12) & 0xF;
  v37.n128_u64[0] = (v33 + 11) & 0xF;
  v37.n128_u64[1] = (v33 + 10) & 0xF;
  v38.n128_u64[0] = (v33 + 9) & 0xF;
  v38.n128_u64[1] = v34 & 0xF ^ 0xCLL;
  v41.val[0].i64[0] = (v33 + 7) & 0xF;
  v41.val[0].i64[1] = (v33 + 6) & 0xF;
  v41.val[1].i64[0] = (v33 + 5) & 0xF;
  v41.val[1].i64[1] = (v33 + 4) & 0xF;
  v41.val[2].i64[0] = (v33 + 3) & 0xF;
  v41.val[2].i64[1] = (v33 + 2) & 0xF;
  v41.val[3].i64[0] = (v33 + 1) & 0xF;
  v41.val[3].i64[1] = v33 & 0xF;
  v39.n128_u64[0] = 0xC7C7C7C7C7C7C7C7;
  v39.n128_u64[1] = 0xC7C7C7C7C7C7C7C7;
  return (*(v35 - 120))(a2, v36, v37, v38, xmmword_100BC76B0, vqtbl4q_s8(v41, xmmword_100BC76B0), v39);
}

uint64_t sub_10025FC80()
{
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 37783)))(0);
  v3 = (*(v2 + 8 * (v1 ^ 0xFDBB)))(v0);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10025FCCC()
{
  STACK[0x10EE0] = *(v0 + 8);
  LODWORD(STACK[0x10ED8]) = (v1 - 1762640356) ^ (906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x44150B78) - (&STACK[0x10000] + 3800) - 1142229885) ^ 0x8AEB39A7));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF3CA)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((15 * (*(v0 + 32) == ((v1 - 1065483124) & 0x3F81FB7C ^ (v1 + 1043052076) & 0xC1D43EF6 ^ 0xE8E15CD))) ^ v1)))(v3);
}

uint64_t sub_10025FE44()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0xB6C ^ v1)))();
  *(v0 + 24) = 0;
  return (*(v3 + 8 * ((v2 ^ 0xB6C) - 2780)))(v4);
}

uint64_t sub_10025FF08()
{
  v0 = STACK[0xF10] - 25081;
  *(STACK[0x6308] + 56) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10026009C()
{
  v1 = STACK[0xF10] - 35007;
  LODWORD(STACK[0x987C]) = v0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x272B)))();
}

uint64_t sub_1002600DC()
{
  v2 = (v1 - 231651402) & 0xDCE95D0;
  LODWORD(STACK[0xED0]) = v2 + 6846;
  return (*(STACK[0xF18] + 8 * ((30148 * (v0 == v2 - 2129801084)) ^ v1)))();
}

uint64_t sub_100260158()
{
  LODWORD(STACK[0x8940]) = 533546273;
  LODWORD(STACK[0x7B94]) = v1;
  return (*(STACK[0xF18] + 8 * (((v1 == ((v0 + 1844) ^ 0x59441771)) * ((3 * (v0 ^ 0xAA6E)) ^ 0x8B7D)) ^ v0)))();
}

uint64_t sub_1002601B8()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + v0 + 4064 - 1811)))();
}

uint64_t sub_1002601F4@<X0>(unint64_t a1@<X8>)
{
  *STACK[0x3C58] = v3;
  v4 = STACK[0x369C];
  if (!v3)
  {
    v4 = 0;
    a1 = STACK[0x1B28];
    v1 = STACK[0x3E04];
  }

  *STACK[0x12C0] = v4;
  *STACK[0x7B48] = a1;
  *STACK[0x36D8] = v1;
  return (*(STACK[0xF18] + 8 * v2))();
}

void *sub_100260248()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] ^ 0x413D;
  v2 = STACK[0xF10] - 35291;
  LODWORD(STACK[0x10ED8]) = (STACK[0xF10] - 2608) ^ (1603510583 * ((((2 * (&STACK[0x10000] + 3800)) | 0x6CCBC826) - (&STACK[0x10000] + 3800) - 912647187) ^ 0xA1BED6B8));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 16406)))(&STACK[0x10ED8]);
  v5 = *(v3 + 8 * ((v1 - 46141) ^ v2));
  STACK[0x2998] = *(v3 + 8 * v2);
  return v5(&STACK[0x821C], v4);
}

uint64_t sub_100260328()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 34976;
  v4 = STACK[0xB738];
  v5 = (((2 * v4) ^ 0x31BA6B0A) + 1266268460) ^ (((2 * v4) ^ 0xD3761635) - 1447705579) ^ (((2 * v4) ^ 0xCCC073AF) - 1241276017);
  LODWORD(STACK[0xA1A4]) = v5 - 469999205;
  v5 -= 1422908594;
  v6 = STACK[0xB728];
  STACK[0xA1A8] = STACK[0xB728] + 4 * v5;
  *(v6 + 4 * v5) = v0;
  v7 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x51B4D555) + (~(&STACK[0x10000] + 3800) | 0xAE4B2AAA)) ^ 0x3C22FAA8);
  LODWORD(v6) = v7 + (((LODWORD(STACK[0xA194]) ^ 0x414B12F8) - 1095439096) ^ ((LODWORD(STACK[0xA194]) ^ 0xEB3DDD0) - 246668752) ^ ((LODWORD(STACK[0xA194]) ^ 0x64BCE93) - 105631379)) - 1462826144;
  LODWORD(STACK[0x10EDC]) = ((((*STACK[0xA198] ^ 0xCC01580E) + 872327154) ^ ((*STACK[0xA198] ^ 0x82BABFA7) + 2101690457) ^ ((*STACK[0xA198] ^ 0x4EBBE7F6) - 1320937462)) + 678242615) ^ v7;
  LODWORD(STACK[0x10ED8]) = v6;
  LODWORD(STACK[0x10EE0]) = v7 + (((v4 ^ 0xD86C48D9) + 663992103) ^ ((v4 ^ 0x10E41212) - 283382290) ^ ((v4 ^ 0x5F8E5D83) - 1603165571)) - 1038619786;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EF4]) = v2 - v7 + 1352419535;
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0x4008)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * (v3 ^ 0x27CC)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

uint64_t sub_10026062C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  STACK[0x2310] = a3;
  LODWORD(STACK[0x5D04]) = v4;
  return (*(STACK[0xF18] + 8 * v3))(a1, a2, 371891606);
}

uint64_t sub_100260658()
{
  v0 = (STACK[0xF10] + 1715467260) & 0x99BFB8DD;
  v1 = STACK[0xF10] - 33989;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x2D09) + v1)))();
}

uint64_t sub_1002606B4()
{
  v1 = STACK[0xF18];
  STACK[0x67B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x18A ^ (v0 + 1000780330) & 0xC4597FBF)))();
}

uint64_t sub_1002607AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0xED0]) = *v3;
  v4 = *(v3 + 8);
  STACK[0x3D18] = v4;
  STACK[0x8CD8] = 0;
  return (*(STACK[0xF18] + 8 * (((v4 == 0) * ((a3 - 4692) ^ 0xF4CB ^ (a3 + 1117708911) & 0xBD60FFED)) ^ a3)))(a1, a2, 3923101461);
}

uint64_t sub_100260864()
{
  v3 = ((v1 + 20612) ^ 0xFFFFFFFFFFFF7FCFLL) + v0;
  v5 = v3 > 0xF || ((v0 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * ((v5 * (((v1 + 1791803411) & 0x9533BFEB) - 44947)) ^ v1)))();
}

uint64_t sub_1002608C8()
{
  v2 = (v0 - 987764392);
  v3 = ((*(STACK[0x3B0] + 8) - (v2 | ((v2 + 2009225902) << 32))) | ((v2 | ((v2 + 2009225902) << 32)) - *(STACK[0x3B0] + 8))) >> ((5 * (v2 ^ 0x6E)) ^ 0x79);
  return (*(v1 + 8 * (v2 ^ 0xC5202922 ^ ((2 * (v3 & 1)) & 0xF7 | (8 * (v3 & 1))))))();
}

uint64_t sub_100260948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a3;
  v7 = STACK[0xF18];
  STACK[0x98F8] = *(STACK[0xF18] + 8 * v3);
  return (*(v7 + 8 * (((v5 != 289151513) * ((327 * (v4 ^ 0xA8D1)) ^ 0x8B38)) ^ v4)))(a1, a2, v6);
}

uint64_t sub_100260A84@<X0>(int a1@<W8>)
{
  v6 = (((v5 ^ 0x4E36B3C9) + 1728705347) ^ ((v5 ^ 0xC698C60D) - 274233721) ^ ((v5 ^ v1 ^ 0xB7BB751E) - 1635496661)) - 922411804;
  if (a1 - 550545965 >= v6 && v6 >= 0xDF2F55D3)
  {
    v4 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((48846 * (v4 == v2)) ^ v1)))();
}

uint64_t sub_100260B28()
{
  v1 = STACK[0x1218];
  v2 = (v0 + 2019800593 + (LODWORD(STACK[0x72B4]) ^ 0x879C3934)) ^ ((LODWORD(STACK[0x72B4]) ^ 0xE36EC8B4) + 479278924) ^ ((LODWORD(STACK[0x72B4]) ^ 0x8D273691) + 1926809967);
  v3 = 1112314453 * ((((&STACK[0x10000] + 3800) ^ 0x3D71280D | 0x96D1710D) - ((&STACK[0x10000] + 3800) ^ 0x3D71280D) + (((&STACK[0x10000] + 3800) ^ 0x3D71280D) & 0x692E8EF0)) ^ 0x44F673D9);
  v4 = *(&off_1010A0B50 + (v0 ^ 0x2AA)) - 2063590599;
  STACK[0x10EE8] = STACK[0x9540];
  STACK[0x10EE0] = v4;
  LOWORD(STACK[0x10ED8]) = -28075 * ((((&STACK[0x10000] + 3800) ^ 0x280D | 0x710D) - ((&STACK[0x10000] + 3800) ^ 0x280D) + (((&STACK[0x10000] + 3800) ^ 0x280D) & 0x8EF0)) ^ 0x73D9) + 3771;
  LODWORD(STACK[0x10EF0]) = v3 + 1599993265 * v2 - 1152241234;
  LODWORD(STACK[0x10EDC]) = (v0 + 679189412) ^ v3;
  STACK[0x10EF8] = v1;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDA4B)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (v0 + 8790)))(v6);
}

uint64_t sub_100260DD8(unint64_t a1)
{
  STACK[0x3088] = a1;
  LODWORD(STACK[0x1B20]) = v2;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100260EA0@<X0>(int a1@<W8>)
{
  *STACK[0x9108] |= 0x20000u;
  LODWORD(STACK[0x4D74]) = a1 - 1345563850;
  return (*(STACK[0xF18] + 8 * ((22160 * ((((((v2 ^ 0x500) - 1) ^ 0x8B98BB34) + (v1 ^ 0x74675FA6)) ^ ((v1 ^ 0x86241D0A) + 2044453622) ^ ((((v2 ^ 0x500) + 462842446) ^ v1) - 462849469)) - 371865848 < 0xFFFFFFF7)) ^ v2 ^ 0x500)))();
}

uint64_t sub_100260F9C()
{
  LODWORD(STACK[0x6870]) = v0;
  v2 = *(STACK[0x3E50] + 4);
  v3 = ((((v1 + 190968964) & 0xF49DBB76) + 1206919217) ^ (v1 - 8845)) + v0;
  v4 = v2 + 1315316726;
  v5 = v2 > 0xB199DC09;
  v6 = v5 ^ (v3 < 0x4E6623F6);
  v7 = v3 < v4;
  if (!v6)
  {
    v5 = v7;
  }

  return (*(STACK[0xF18] + 8 * ((240 * v5) ^ (v1 + 8758))))();
}

uint64_t sub_100261078(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, unsigned int a8)
{
  v12 = v9 > v11;
  if (v12 == a4 + a7 < ((((a3 + a5) | a6) + v8) ^ a8))
  {
    v12 = a4 + a7 < v10;
  }

  return (*(STACK[0xF18] + 8 * (((2 * !v12) | (4 * !v12)) ^ a3)))();
}

uint64_t sub_100261138@<X0>(unint64_t a1@<X8>)
{
  v3 = (v1 + 455557680) & 0xE4D8BDF7;
  v4 = STACK[0x1A88];
  v5 = STACK[0x44B0];
  LODWORD(STACK[0xEC0]) = v3;
  v6 = ((v5 ^ 0xDF09A3B8) + 553016392) ^ ((v5 ^ 0x3788E412) - 931718162) ^ ((v5 ^ 0x154057E ^ v3) - 22315195);
  v7 = 353670337 * ((((2 * &STACK[0x10ED8]) | 0x5DA64EE) - &STACK[0x10ED8] + 2098384265) ^ 0x36CCCA4A);
  LODWORD(STACK[0x10ED8]) = v6 - v7 + 1051652780;
  LODWORD(STACK[0x10EE0]) = v1 + 13872 - v7;
  STACK[0x10EE8] = v4;
  STACK[0x10EF0] = a1;
  v8 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 17698)))(&STACK[0x10ED8]);
  v9 = *(v2 + 280);
  v10 = 353670337 * (((&STACK[0x10ED8] | 0x9FB56118) - (&STACK[0x10ED8] & 0x9FB56118)) ^ 0x2B949925);
  LODWORD(STACK[0x10EE0]) = v1 + 13872 - v10;
  LODWORD(STACK[0x10ED8]) = (((v5 ^ 0x6DB718E) - 115044750) ^ ((v5 ^ 0xCAB28DF9) + 894267911) ^ ((v5 ^ 0x25BC3B66) - 633092966)) - v10 + 1051652780;
  STACK[0xED0] = v4;
  STACK[0x10EE8] = v4;
  STACK[0x10EF0] = v9;
  (*(v8 + 8 * (v1 + 17698)))(&STACK[0x10ED8]);
  v11 = 155453101 * ((~&STACK[0x10ED8] & 0xF84A069A | &STACK[0x10ED8] & 0x7B5F960) ^ 0x1E6C1D55);
  LODWORD(STACK[0x10ED8]) = v11 + v1 - 13334;
  STACK[0x10EF0] = &STACK[0x6EA0];
  STACK[0x10EE8] = STACK[0x7F8];
  STACK[0x10EE0] = STACK[0x708];
  LOBYTE(STACK[0x10EFC]) = -46 - v11;
  v12 = (*(v8 + 8 * (v1 ^ 0x4F7B)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * ((88 * (LODWORD(STACK[0x10EF8]) != -371865839)) ^ v1)))(v12);
}

uint64_t sub_1002613B8@<X0>(_DWORD *a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v56 = STACK[0x2C8];
  v57 = &a1[6 * v52];
  v57[2] = v54;
  v57[3] = v53;
  *(v57 + 2) = a50;
  v57[6] = v56;
  *a1 = v51 + 1;
  v58 = ((1711 * (a2 ^ 0x888E)) ^ 0x6945) + *v50 - 812693603;
  v59 = (a44 < 1650688290) ^ (v58 < 1650688290);
  v60 = v58 < a44;
  if (v59)
  {
    v61 = a44 < 1650688290;
  }

  else
  {
    v61 = v60;
  }

  return (*(v55 + 8 * ((11897 * v61) ^ a2)))();
}

uint64_t sub_100261458()
{
  v2 = STACK[0x2070];
  v3 = STACK[0x86B0];
  v4 = 353670337 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0xE036548) - 1912380087) ^ 0x3A229D74);
  LODWORD(STACK[0x10ED8]) = (((v0 - 17650) | 0x881A) ^ 0x54FD60DB) - v4 + (LOWORD(STACK[0x28A6]) ^ 0xFFDBC24E) + ((((v0 + 20569) | 0x81) ^ 0xE79B) & (2 * (LOWORD(STACK[0x28A6]) ^ 0xFDB5)));
  STACK[0x10EF0] = v2;
  STACK[0x10EE8] = v3;
  LODWORD(STACK[0x10EE0]) = v0 - v4 + 29626;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x82AC)))(&STACK[0x10ED8]);
  v6 = STACK[0x10EDC];
  v7 = STACK[0x2070];
  LODWORD(STACK[0x10ED8]) = (v0 - 12265) ^ (155453101 * (&STACK[0x10ED8] ^ 0xE6261BCF));
  STACK[0x10EE0] = v7;
  v8 = (*(v5 + 8 * (v0 + 33481)))(&STACK[0x10ED8]);
  LODWORD(STACK[0xAD80]) = v6;
  return (*(v5 + 8 * ((51 * (v6 == v1)) ^ v0)))(v8);
}

uint64_t sub_1002615C0()
{
  v2 = v1 - 0x16510210E482B202;
  v3 = ((v2 & 0x7E6CEBAE4) << (v0 - 40)) & (v2 ^ 0x7DE7F7F0) ^ v2 & 0xE6CEBAE4 ^ (((v0 - 8152) | 6) + 33520553 + (((v2 & 0x7E6CEBAE4) << (v0 - 40)) & 0x89094500));
  v4 = (2 * (v2 ^ 0x7DE7F7F0)) & 0x9B294D14 ^ 0x89294514 ^ ((2 * (v2 ^ 0x7DE7F7F0)) ^ 0x36529A28) & (v2 ^ 0x7DE7F7F0);
  v5 = (4 * v3) & 0x9B294D10 ^ v3 ^ ((4 * v3) ^ 0x8000000) & v4;
  v6 = (4 * v4) & 0x9B294D10 ^ 0x93084904 ^ ((4 * v4) ^ 0x6CA53450) & v4;
  v7 = (16 * v5) & 0x9B294D10 ^ v5 ^ ((16 * v5) ^ 0xA0000000) & v6;
  v8 = ((16 * v6) ^ 0xB294D140) & v6 ^ (16 * v6) & 0x9B294D00;
  v9 = v2 ^ (2 * ((((v8 ^ 0x9290C14) << 8) & 0x1B294400 ^ 0x9094914 ^ (((v8 ^ 0x9290C14) << 8) ^ 0x294D1400) & (v8 ^ 0x9290C14)) & (((v8 ^ 0x92004114) & (v7 << 8) ^ v7) << 16) ^ (v8 ^ 0x92004114) & (v7 << 8) ^ v7));
  v10 = (((v9 ^ 0xA0249D591720CA4FLL) + 0x7AE4AA503551AB98) ^ ((v9 ^ 0xD8A570F03719AB85) + 0x26547F91568CA5ELL) ^ ((v9 ^ 0x7881EDA9D2F7DB2ELL) - 0x5DBE255F0F794509)) + 0x2FC92217BF0824E0;
  STACK[0xAE80] = v10;
  return (*(STACK[0xF18] + 8 * (((8 * (v10 != 0xA8959218FC8001DLL)) | (16 * (v10 != 0xA8959218FC8001DLL))) ^ v0)))();
}

uint64_t sub_100261854()
{
  STACK[0xEC0] = &STACK[0xC4D0] + v2 + 160;
  STACK[0x6390] = &STACK[0xC4D0] + v2 + 160;
  STACK[0x7690] = v0 + 224;
  STACK[0xEB0] = &STACK[0xC4D0] + v2 + 224;
  return (*(STACK[0xF18] + 8 * (((&STACK[0xC4D0] + v0 - STACK[0x5480] + 96 > 0x1F) * (((v1 - 514) | 0x204) ^ 0x220C)) ^ v1)))();
}

uint64_t sub_1002618CC()
{
  v1 = STACK[0xF10] - 20016;
  *STACK[0x7980] = STACK[0xF10] - 35000 + 0x63763DED970C0C35 + (((v0 ^ 0x7CB8914386ECBB83) - 0x7CB8914386ECBB83) ^ ((v0 ^ 0x7AAE0A1E11862F4ALL) - 0x7AAE0A1E11862F4ALL) ^ ((v0 ^ (STACK[0xF10] - 376638314) & 0x1672FDBF ^ 0x6169B5D7EBF2E49) - 0x6169B5D7EBF53D8));
  v2 = (LODWORD(STACK[0x6134]) + 4);
  LODWORD(STACK[0x6134]) = v2;
  v3 = (v2 | ((v2 < 0x66AA99B4) << 32)) + 159698944;
  v4 = (LODWORD(STACK[0x72D0]) ^ 0x7FF76ADBAF723F9ELL) - 0x7FF76ADB3F42D5EELL + ((2 * LODWORD(STACK[0x72D0])) & 0x15EE47F3CLL);
  v5 = v3 < 0x702F69B0;
  v6 = v3 > v4;
  if (v5 != v4 < 0x702F69B0)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((109 * !v6) ^ v1)))();
}

uint64_t sub_100261A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = STACK[0xF10] - 34017;
  v6 = STACK[0x9894];
  LOBYTE(STACK[0x6D5F]) = ((STACK[0xF10] - 268471099) & STACK[0x9894]) == 1610612736;
  LODWORD(STACK[0x91FC]) = v6 & 0xFFFFFFF ^ 0x9D5C711;
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x18CC)))(a1, a2, a3, a4, a5, STACK[0x74A0]);
}

uint64_t sub_100261AF8()
{
  v4 = v1 - 17063;
  *(v2 + 2220) = v3;
  *(v2 + 2216) = v0;
  v5 = (((*(STACK[0x6F68] + 104) ^ 0xA97FF5E6) + 1451231770) ^ ((v1 ^ 0xE8939986 ^ *(STACK[0x6F68] + 104)) + 393014595) ^ (v1 + 1472615547 + (*(STACK[0x6F68] + 104) ^ 0xA839204A))) + 512890815;
  v6 = v5 < 0x34BC50AE;
  v7 = v0 - 243650662 < v5;
  if ((v0 - 243650662) < 0x34BC50AE != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * (v4 ^ (2 * !v7))))();
}

uint64_t sub_100261BD4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] + 458254512;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x7ED8]);
  return (*(v2 + 8 * ((30882 * (v1 < 0xF54BF207)) ^ (v0 - 23164))))(v3);
}

uint64_t sub_100261C9C()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x6E5 ^ (v0 + 4110))))();
}

uint64_t sub_100261CE4()
{
  v7 = v1 > 0x52073C5;
  *(v2 + (v6 - 332828056)) = -43;
  if (v7 == v6 - 418840925 < v4)
  {
    v7 = v6 - 418840925 < v5;
  }

  return (*(v0 + 8 * ((57779 * v7) ^ v3)))();
}

uint64_t sub_100261D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = LODWORD(STACK[0x718]) ^ 0xE4092261;
  v52 = 1603510583 * ((v49 - 176 - 2 * ((v49 - 176) & 0x19EAF270) + 434827892) ^ 0x8E31C0DF);
  v53 = -1603510583 * ((v49 - 176 - 2 * ((v49 - 176) & 0x19EAF270) + 434827892) ^ 0x8E31C0DF) + 991889963 * (((LODWORD(STACK[0x6E8]) ^ 0x98A4A252) + 1734041006) ^ ((LODWORD(STACK[0x6E8]) ^ 0xC4816A3C) + 998151620) ^ ((LODWORD(STACK[0x6E8]) ^ 0xDE64E168) + 563814040)) - 481434718;
  *(v49 - 164) = ((((LODWORD(STACK[0x6A0]) ^ 0x8EEE6F6) - 149874422) ^ ((LODWORD(STACK[0x6A0]) ^ 0x30A97995) - 816413077) ^ (((((v48 - 250373939) & 0xEECD7BB) - 1173999430) ^ LODWORD(STACK[0x6A0])) + 1173965211)) - 1460811449) ^ v52;
  *(v49 - 160) = v52 - 574088068 + v48;
  *(v49 - 176) = v53;
  *(v49 - 172) = v51 + v52;
  v54 = (*(v50 + 8 * (v48 + 46856)))(v49 - 176);
  v55 = *(v49 - 168);
  v56 = v55 & 0x12 | 0x2C00308 | (v55 ^ 0x9D940479 | 0x20) & (2 * (v55 & 0x12));
  v57 = (2 * (v55 ^ 0x9D940479)) & 0x2A ^ 0x29 ^ ((2 * (v55 ^ 0x9D940479)) ^ 0x5000496) & (v55 ^ 0x9D940479);
  v58 = (4 * v56) & 0x2000068 ^ v56 ^ v57 & 0x98 & (4 * v56);
  v59 = (4 * v57) & 0x2E00368 ^ 0x600243 ^ ((4 * v57) ^ 0x9000CAC) & v57;
  v60 = (16 * v58) & 0x2E00360 ^ v58 ^ ((16 * v58) ^ 0xC003280) & v59;
  v61 = (16 * v59) & 0x2E00360 ^ 0xE0014B ^ ((16 * v59) ^ 0x2E0036B0) & v59;
  v62 = v60 ^ (v60 << 8) & 0x2E00300 ^ ((v60 << 8) ^ 0xC0012800) & v61 ^ 0x2200243;
  STACK[0x528] = v55 ^ (2 * ((v62 << 16) & 0x2E00000 ^ v62 ^ ((v61 << 8) ^ 0xE003FFFF) & v61 & ((v62 << 16) ^ 0x36B0000))) ^ 0x981390CB1999382;
  return (*(a48 + 8 * v48))(v54);
}

uint64_t sub_100262060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, __int16 a24, char *a25, int a26, __int16 a27, char a28, __int16 a29)
{
  a25 = &a21;
  a24 = v31 + v32 - 2918;
  a29 = a17;
  a26 = v33;
  a27 = v34;
  v37 = (*(a19 + 8 * v35))(&a24);
  *(&a21 + (v32 - 15433)) = a28;
  v39 = v29 < v36 || v36 + (v32 - 15432 + (v30 ^ 0x5508)) < v29;
  return (*(a19 + 8 * ((50290 * v39) ^ v30)))(v37);
}

uint64_t sub_1002620EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  STACK[0x7548] = a8;
  STACK[0x77B0] = (&STACK[0x4560] ^ 0x5B4FD5DE691FF9FBLL) - 0x5B4FD5DE691FF9FBLL + ((&STACK[0x4560] << ((105 * (v8 ^ 0xC5)) ^ 0x3A)) & 0xB69FABBCD23FF3F0);
  LODWORD(STACK[0x648C]) = 1764133133;
  return (*(STACK[0xF18] + 8 * v8))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100262414()
{
  v0 = STACK[0xF10] - 20369;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(STACK[0x35E0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10026248C()
{
  v1 = v0 ^ 0xCD5B;
  LODWORD(STACK[0xED0]) = v1 + 1667719497;
  STACK[0xEC0] = STACK[0x13D0];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002627A4()
{
  v0 = STACK[0xF10] - 24098;
  v1 = (((LODWORD(STACK[0x14AC]) ^ 0x90B9EF61) + 1866862751) ^ ((LODWORD(STACK[0x14AC]) ^ 0x5790C16) - 91819030) ^ ((STACK[0xF10] ^ 0x7C15AF5D ^ LODWORD(STACK[0x14AC])) - 2081760358)) - 120729847;
  v2 = STACK[0xB258] + 4;
  v3 = STACK[0xF98] + 4;
  LODWORD(STACK[0xED0]) = 107;
  LOBYTE(STACK[0x1AF3]) = 107;
  STACK[0x6920] = 0;
  LODWORD(STACK[0x7850]) = -371865839;
  STACK[0x3930] = STACK[0x638];
  STACK[0x2A60] = v2;
  STACK[0x85E8] = v3;
  LODWORD(STACK[0x4874]) = (((v1 ^ 0xCE278108) + 1059092748) ^ v1 ^ ((v1 ^ 0x65E25F9F) - 1796888675) ^ ((v1 ^ 0x5A800690) - 1417150824) ^ ((v1 ^ 0xFFBDDFFF) + 247080957)) & 0xFFFFFFF0 ^ 0xE72DC0E1;
  LODWORD(STACK[0x726C]) = -187458872;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10026297C()
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
  STACK[0xC0B0] = 0;
  STACK[0xC0B8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC0B0] | v10);
  *(&STACK[0xC0B0] | v10) = 0;
  LOBYTE(STACK[0xC0B7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC0B0] | v12);
  *(&STACK[0xC0B0] | v12) = STACK[0xC0B6];
  LOBYTE(STACK[0xC0B6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC0B0] | v14);
  *(&STACK[0xC0B0] | v14) = STACK[0xC0B5];
  LOBYTE(STACK[0xC0B5]) = v15;
  v16 = STACK[0xC0B0];
  LOBYTE(STACK[0xC0B0]) = STACK[0xC0B4];
  LOBYTE(STACK[0xC0B4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC0B0] | v17);
  *(&STACK[0xC0B0] | v17) = STACK[0xC0B3];
  LOBYTE(STACK[0xC0B3]) = v18;
  v19 = STACK[0xC0B1];
  LOBYTE(STACK[0xC0B2]) = STACK[0xC0B0];
  LOWORD(STACK[0xC0B0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC0B0] = vmla_s32(v22, STACK[0xC0B0], vdup_n_s32(0x1000193u));
  STACK[0xC0B8] ^= STACK[0xC0B0];
  STACK[0xC0B8] = vmul_s32(vsub_s32(STACK[0xC0B8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC0BA];
  LOWORD(STACK[0xC0B9]) = STACK[0xC0B8];
  LOBYTE(STACK[0xC0B8]) = v23;
  v24 = (&STACK[0xC0B8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC0BB];
  LOBYTE(STACK[0xC0BB]) = v19;
  LOBYTE(v24) = STACK[0xC0B8];
  LOBYTE(STACK[0xC0B8]) = STACK[0xC0BC];
  LOBYTE(STACK[0xC0BC]) = v24;
  v25 = (&STACK[0xC0B8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC0BD];
  LOBYTE(STACK[0xC0BD]) = v24;
  v26 = (&STACK[0xC0B8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC0BE];
  LOBYTE(STACK[0xC0BE]) = v25;
  v27 = (&STACK[0xC0B8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC0BF];
  LOBYTE(STACK[0xC0BF]) = v28;
  v29 = STACK[0xC0B8];
  v30 = (553300517 * STACK[0xC0B8]) ^ v9;
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
  v43 = STACK[0x940];
  do
  {
    v44 = *(v29 + v35);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v57.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_high_u16(v46, v40));
    v57.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v57.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v57.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v42), vsubq_s32(v36, v42)), v42), vmull_high_u16(v45, v40));
    *(v29 + v35) = vqtbl4q_s8(v57, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v35 != 576);
  v47 = 0;
  v48 = xmmword_100F52AE0;
  v49 = xmmword_100F52AF0;
  v50 = vdupq_n_s32(v30);
  v51 = v29 + 576;
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
  *v43 = STACK[0xC0B8];
  return (*(STACK[0xF18] + 8 * ((v1 ^ 0x387E) + 10343)))(v48, v49);
}

uint64_t sub_100262E7C()
{
  v1 = 1370 * (STACK[0xF10] ^ 0x8B2F);
  v2 = STACK[0xF10] - 27814;
  LODWORD(STACK[0x62A8]) = v0;
  v3 = v1 + (STACK[0x18B8] ^ 0x297F2BAA5BFFF9F6) + ((2 * STACK[0x18B8]) & 0x52FE5754B7FFF3ECLL) - 0x1010902424AAB2CLL;
  LODWORD(STACK[0x705C]) = STACK[0x17D8];
  STACK[0x3CC8] = v3;
  LODWORD(STACK[0x2D84]) = 9;
  LOBYTE(STACK[0x3FCF]) = 97;
  LODWORD(STACK[0x4078]) = -1419328054;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_100262F2C()
{
  v1 = STACK[0xF10] - 2971;
  v2 = STACK[0xF10] + 111;
  v4 = *(v0 + 8);
  v3 = v0 + 8;
  STACK[0x16F8] = v3;
  LODWORD(STACK[0x10ED8]) = (v1 + 703893677) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x1630278E) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0xE9CFD870)) ^ 0x7BA60872));
  STACK[0x10EE0] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0xB562)))(&STACK[0x10ED8]);
  v7 = *(v3 + 128);
  STACK[0x4D58] = *(v3 + 120);
  STACK[0x5F48] = v7;
  v8 = STACK[0x7690];
  STACK[0x2018] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v8 + 32;
  return (*(v5 + 8 * ((13 * (((v2 ^ (v1 - 1)) ^ (STACK[0x4A40] == 0)) & 1)) ^ v1)))(v6);
}

uint64_t sub_100263028()
{
  v0 = STACK[0xF10] ^ 0x97B5;
  v1 = STACK[0xF10] - 26354;
  v2 = STACK[0x9508];
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0x8E3C]) = v0 - 7306 + v2;
  STACK[0x8708] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = STACK[0x29E4];
  LODWORD(STACK[0x2CE8]) = 760168734;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100263144()
{
  LODWORD(STACK[0x10EE0]) = v1 + ((((&STACK[0x10000] + 3800) | 0x68C074E0) - ((&STACK[0x10000] + 3800) & 0x68C074E0)) ^ 0x8EE66F2F) * v0 + 296778217;
  STACK[0x10ED8] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xE3EB)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((31 * (LODWORD(STACK[0x5FF4]) == (((v1 - 2079793277) | 0x9601) ^ 0x6DDCA573) + v1 + 25114)) ^ v1)))(v3);
}

uint64_t sub_1002631FC()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x7414 ^ ((v0 + 23473) | 0x740))))();
}

uint64_t sub_100263408()
{
  v1 = STACK[0xF10] - 16163;
  v2 = (((v0 ^ 0x8055F70B) + 1367026195) ^ ((v0 ^ 0x9CB47517) + 1301981199) ^ ((v0 ^ 0xDBE567EB) + STACK[0xF10] + 181088184)) - 1665812188;
  v3 = (((LODWORD(STACK[0xA34C]) ^ 0x7D2E5873) - 2100189299) ^ ((LODWORD(STACK[0xA34C]) ^ 0xA8AF0C0B) + 1464923125) ^ ((LODWORD(STACK[0xA34C]) ^ 0x3C549369) - 1012175721)) - 1665812188;
  v4 = v2 < 0xB2DFF213;
  v5 = v2 > v3;
  if (v4 != v3 < 0xB2DFF213)
  {
    v5 = v4;
  }

  if (v5)
  {
    v6 = 371891413;
  }

  else
  {
    v6 = -371865839;
  }

  LODWORD(STACK[0x67F4]) = v6;
  return (*(STACK[0xF18] + 8 * ((v5 | (32 * v5)) ^ v1)))();
}

uint64_t sub_100263548()
{
  v1 = STACK[0xF10] - 26090;
  STACK[0x8648] = v0;
  LODWORD(STACK[0x37DC]) = 1729801116;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002635BC()
{
  v0 = (STACK[0xF10] + 1816351604) & 0x93BC3DDE;
  v1 = STACK[0xF10] - 26354;
  v2 = STACK[0x7B04];
  LODWORD(STACK[0xED0]) = v0;
  LODWORD(STACK[0x4C1C]) = (v0 ^ 0x1C8A) + v2;
  STACK[0x5358] = STACK[0x2C78];
  LODWORD(STACK[0x44B4]) = -371865835;
  LODWORD(STACK[0x2CE8]) = 680195264;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100263634@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0xEBE;
  v2 = STACK[0x14D0];
  v3 = STACK[0x1B90];
  v4 = STACK[0x2F74];
  v5 = 1112314453 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xB7E2150) - 1954668201) ^ 0x64280B8E);
  LODWORD(STACK[0x10EDC]) = (v1 + 679189407) ^ v5;
  v6 = *(&off_1010A0B50 + (v1 ^ 0x1B6A)) - 876218982;
  STACK[0x10EF8] = v2;
  LODWORD(STACK[0x10EF0]) = ((v1 - 1366196549) & 0x516EFBBF ^ 0xBB52BA95) + v5 + 1599993265 * (((v4 ^ 0xB732968E) + 1221421426) ^ ((v4 ^ 0x86C23E41) + 2034090431) ^ ((v4 ^ 0xD8256FDE) + 668635170));
  LOWORD(STACK[0x10ED8]) = -28075 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x2150) + 8535) ^ 0xB8E) + 3771;
  STACK[0x10EE0] = v6;
  STACK[0x10EE8] = v3;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0xDA30)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (v1 ^ 0x23D1)))(v8);
}

uint64_t sub_100263808()
{
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((((&STACK[0x10000] + 3800) | 0xE2D2370D) - ((&STACK[0x10000] + 3800) & 0xE2D23708)) ^ 0x4F42CC2) + 296753103;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 - 8065)))(v2);
}

uint64_t sub_100263A78()
{
  v1 = STACK[0x72CC];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393389;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100263BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W7>, int a6@<W8>)
{
  v13 = a2 < v9;
  v14 = a3 + v7;
  v15 = a3 + v8;
  v16 = v14 + (a5 ^ v12) * v6;
  v17 = v13 ^ (v15 < v9);
  v18 = v15 < a2;
  if (!v17)
  {
    LOBYTE(v13) = v18;
  }

  return (*(STACK[0xF18] + 8 * ((((v13 ^ (a5 - 1)) & 1) * a6) ^ a5)))(a1, a2, v16, a4, (a5 + v10) | v11);
}

uint64_t sub_100263D64()
{
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762664533) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0xB766ED37) - ((&STACK[0x10000] + 3800) | 0x489912C8) + 1217991368) ^ 0x86672013));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 13013)))(&STACK[0x10ED8]);
  v4 = *STACK[0x970] != ((113 * (v0 ^ 0x97F8)) ^ 0xC5C) || *STACK[0x940] == 0;
  return (*(v1 + 8 * ((v4 * ((v0 - 2137903905) ^ 0x8092C4C0)) ^ v0)))(v2);
}

uint64_t sub_100263FDC@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 40) = a1;
  STACK[0x21A8] = v3 + 264;
  return (*(STACK[0xF18] + 8 * ((32 * (*(v3 + 264) == 0)) | ((*(v3 + 264) == 0) << 6) | (v1 - 5172))))();
}

uint64_t sub_10026401C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  v3 = STACK[0x7690];
  STACK[0x9750] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v3 + 416;
  return (*(STACK[0xF18] + 8 * (((STACK[0x7F90] != 0) * (((v2 - 35538) | 0xE82) - 3803)) ^ (v2 + 12142))))();
}

uint64_t sub_1002640BC()
{
  STACK[0x3C38] = 0;
  LODWORD(STACK[0x3994]) = 0;
  return (*(STACK[0xF18] + 59016))(785457894, 2688065985, 2688065986, 1891231232, 3093099366, 2688065987, &STACK[0xA237], 4292662771);
}

uint64_t sub_1002642B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, unint64_t a52, uint64_t a53, int a54)
{
  STACK[0x2F0] = a52;
  LODWORD(STACK[0x228]) = v54;
  LODWORD(STACK[0x2AC]) = a2;
  LODWORD(STACK[0x460]) = v55;
  LODWORD(STACK[0x404]) = a54;
  return (*(v56 + 8 * (a9 - 20073)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_100264304@<X0>(unint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v12 = v7 - 1;
  *(a3 + v12) = *(v4 + (v12 & 0xF)) ^ *(v3 + v12) ^ *(v6 + (v12 & 0xF)) ^ (7 * (v12 & 0xF)) ^ *(v5 + (v9 & v10 ^ a1) + (v12 & 0xF));
  return (*(v11 + 8 * (((v12 == 0) * a2) ^ v8)))();
}

uint64_t sub_10026438C()
{
  v2 = STACK[0xF10];
  v3 = (((LODWORD(STACK[0xA1A4]) ^ 0x170E9EA6) - 801284331) ^ LODWORD(STACK[0xA1A4]) ^ ((LODWORD(STACK[0xA1A4]) ^ 0x642EE87C) - 1558369841) ^ ((LODWORD(STACK[0xA1A4]) ^ 0xB4833F48) + 1940979452) ^ ((LODWORD(STACK[0xA1A4]) ^ 0xFF6F77DE) + 945600109)) & 0xFFFFFFFFFFFFFFFELL;
  LODWORD(STACK[0xA1B4]) = v3 ^ 0x1B0ABB02;
  v3 ^= 0x38CC3E4DuLL;
  v4 = STACK[0xB728];
  STACK[0xA1B8] = STACK[0xB728] + 4 * v3;
  *(v4 + 4 * v3) = v0;
  LODWORD(v4) = ((LODWORD(STACK[0xB738]) ^ 0x7FD971C) - 134059804) ^ ((LODWORD(STACK[0xB738]) ^ 0xFCB0573B) + 55552197) ^ ((LODWORD(STACK[0xB738]) ^ 0x6C4BC76F) - 1816905583);
  v5 = ((LODWORD(STACK[0xA194]) ^ 0xB0FE920D) + 1325493747) ^ ((LODWORD(STACK[0xA194]) ^ 0x7BF9F7C3) - 2079979459) ^ ((LODWORD(STACK[0xA194]) ^ 0x82B46475) + 2102107019);
  LODWORD(v3) = (((*STACK[0xA198] ^ 0x80155868) + 2146084760) ^ ((*STACK[0xA198] ^ 0x81AEAE18) + 2119258600) ^ ((*STACK[0xA198] ^ 0x1BBF62F) - 29095471)) + 678242615;
  v6 = 634647737 * ((&STACK[0x10000] + 3800) ^ 0x6D962FFC);
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EF4]) = v2 - v6 + 1352419535;
  LODWORD(STACK[0x10ED8]) = v6 - 1462826144 + v5;
  LODWORD(STACK[0x10EDC]) = v3 ^ v6;
  LODWORD(STACK[0x10EE0]) = v6 - 1038619786 + v4;
  v7 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 ^ 0x4008)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (v2 - 26084)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

uint64_t sub_10026469C@<X0>(int a1@<W0>, unint64_t a2@<X8>)
{
  v5 = *a2;
  STACK[0x2B0] = a2;
  v6 = *(a2 + 24);
  LODWORD(STACK[0x3C8]) = a1 - 2907;
  *(v4 - 112) = veorq_s8(*v5, xmmword_100F52830);
  if (v2)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = *(v3 + 8 * ((991 * v8) ^ a1));
  LODWORD(STACK[0x3C4]) = -42900;
  return v9();
}

uint64_t sub_1002646F0@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v9 = a1 >> 2;
  v10 = *(v6 + 4 * ((0x9ED10ECD % v9) & 0x3FFFFFFC));
  LOWORD(v9) = ~*(v6 + 4 * (v10 & (((v8 + 1116) ^ 0x50E9) + v9)));
  v11 = ~v10;
  v12 = *(&off_1010A0B50 + a6);
  v13 = *(v12 - 527405895);
  v14 = *(&off_1010A0B50 + a5) + 4 * v13;
  v15 = *(v14 - 1940437438);
  v17 = v9 & HIWORD(v11);
  v16 = v17 == 0;
  v18 = v17 + v17 * v15;
  if (v16)
  {
    v19 = *(v14 - 1940437438);
  }

  else
  {
    v19 = 0;
  }

  *(v14 - 1940437438) = (v18 + v19) * v15;
  *(v12 - 527405895) = (v13 + 1) % 6u;
  v20 = v16;
  return (*(v7 + 8 * ((5662 * v20) ^ (v8 + 1183))))();
}

uint64_t sub_100264920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = (a2 - 1) & 0xF;
  v27 = v20;
  v28.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v28.i64[1] = a8;
  v29 = vrev64q_s8(veorq_s8(veorq_s8(*(v21 + a2), *(v22 + v26 - 15)), veorq_s8(*(v26 + v23 - 14), *(v26 + v24 - 13))));
  v30 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v29, v29, 8uLL), a9), vmulq_s8(v28, a9)));
  *(a5 + a2) = vextq_s8(v30, v30, 8uLL);
  return (*(a18 + 8 * (((a3 == 0) * a4) ^ v25)))(a1, a2 - 16, a3 - 16);
}

uint64_t sub_100264A94()
{
  v1 = STACK[0xF10] - 26602;
  *(STACK[0x6EE0] + 8) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100264AC0@<X0>(int a1@<W8>)
{
  v3 = ((v1 ^ 0xF853F1C1) - 1031008953) ^ v1 ^ ((v1 ^ 0xCFB3E3FF) - 177463431) ^ ((v1 ^ 0xCDCA1509) - 149580708 + ((a1 + 1259750139) & 0xB4E97FF7)) ^ (((((a1 - 29244) | 0x1A1) + 1057612458) ^ v1) + 97908937);
  v4 = ((v3 ^ 0xEAB67E98) + 178010691) ^ ((v3 ^ 0xC7478520) + 661504507) ^ ((v3 ^ 0xE8D1F8C0) + 150715419);
  v5 = v4 + LOBYTE(STACK[0x24B]) % (621430667 - v4);
  v7 = v1 == 0x3CE25E0EC520035FLL || v5 == 621430667;
  return (*(v2 + 8 * ((58 * v7) | a1)))();
}

uint64_t sub_100264C90()
{
  v5 = v2 + 254 - v0;
  v6 = *(v5 - 31);
  v7 = v3 + 254 - v0;
  *(v7 - 15) = *(v5 - 15);
  *(v7 - 31) = v6;
  return (*(v4 + 8 * (((v0 != 192) * (((v1 - 21280) | 0x5205) - 23379)) ^ v1)))();
}

uint64_t sub_100264EB8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = *(a1 + 20) + a2;
  *(v5 - 136) = (v2 + 703904823) ^ (634647737 * ((((v5 - 136) ^ 0x32210400) & 0x32214530 | ((v5 - 136) ^ 0x4D04B08C) & 0xCDDEBACC) ^ 0x12B39B70));
  *(v5 - 128) = *(v3 + 8 * (v2 - 20814)) - 1824408150;
  v7 = (*(v4 + 8 * (v2 ^ 0x9ED4)))(v5 - 136);
  v9 = v6 == 79243091 || *(*(v3 + 8 * (v2 - 20456)) - 2115206586) == 0;
  return (*(v4 + 8 * ((v9 * ((((v2 - 20502) ^ 0xBDEE) - 29336) ^ ((v2 - 20502) | 0x4358))) ^ v2)))(v7);
}

uint64_t sub_100265010(uint64_t a1, uint64_t a2, uint64_t a3, double a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, double a9, int8x16_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v21 = ~a1 + v17;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a5 - 1), a8).u64[0];
  *&v24.i64[1] = a9;
  v25 = vrev64q_s8(vmulq_s8(v24, a10));
  *(a12 + v21) = veorq_s8(veorq_s8(veorq_s8(*(v14 + v22 - 15), *(a2 + v21)), veorq_s8(*(v16 + v22 + 1 - 15), *(v15 + v22 + 1 - 15))), vextq_s8(v25, v25, 8uLL));
  return (*(v20 + 8 * (((a13 + a1 == v18) * a14) ^ v19)))();
}

uint64_t sub_100265198@<X0>(int a1@<W0>, int a2@<W8>)
{
  v4 = (a2 - 49365) | 0x8628;
  v6 = (a1 - 1767647306) > 0xF77DC85B && (((v4 ^ 0x80B1) + 34904) ^ 0xF77D58AD) - v2 > a1 - 1767647306;
  return (*(v3 + 8 * ((7 * (((19 * (((a2 + 43) | 0x28) ^ 0xB1)) ^ v6) & 1)) | v4)))();
}

uint64_t sub_100265218(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 4);
  return (*(v2 + 192320))();
}

uint64_t sub_1002652DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, __n128 a8, __n128 a9, __n128 a10, int8x16_t a11, double a12, int8x16_t a13, int8x16_t a14)
{
  v22 = ~a1 + v14;
  v23 = v22 & 0xF;
  v25.i64[0] = vqtbl4q_s8(*(&a8 - 1), a11).u64[0];
  *&v25.i64[1] = a12;
  v26 = vrev64q_s8(veorq_s8(veorq_s8(*(a2 + v22), *(v17 + v23 - 15)), veorq_s8(*(v23 + v16 - 11), *(v15 + v23 - 15))));
  v27 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v26, v26, 8uLL), a14), vmulq_s8(v25, a13)));
  *(a4 + v22) = vextq_s8(v27, v27, 8uLL);
  return (*(v21 + 8 * (((a1 + a5 + v20 == v18) * a6) ^ v19)))();
}

uint64_t sub_100265564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x340];
  *v73 = STACK[0x3F0];
  *(v73 + 8) = LODWORD(STACK[0x4C8]) - ((2 * LODWORD(STACK[0x4C8])) & 0xD3AB8E22) - 371865839;
  *(v73 + 12) = v72;
  *(v73 + 16) = 0xA52FF064E9D5C711;
  *(v73 + 24) = -371865839;
  STACK[0x210] = v73;
  v74 = LODWORD(STACK[0x4BC]) <= ((((v70 - 44173) | 0x2020) - 8448) ^ 0x2B5u);
  return (*(v71 + 8 * (((2 * v74) | (4 * v74)) ^ v70)))(a1, a2, a3, a70);
}

uint64_t sub_1002655FC(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v23 = (v11 ^ a3) & (2 * (a2 & v11)) ^ a2 & v11;
  v24 = v11 ^ (2 * ((a7 ^ (4 * ((v13 ^ a4) & (v11 ^ a5) ^ a6))) & ((v13 ^ a4) & (v11 ^ a5) ^ a6) & (16 * ((v13 ^ a4) & (v11 ^ a5) & (4 * v23) ^ v23)) ^ (v13 ^ a4) & (v11 ^ a5) & (4 * v23) ^ v23));
  v25 = ((v24 ^ a8) + v15) ^ ((v24 ^ v16) + v17) ^ ((v24 ^ v18) + v19);
  *(v12 + v9) = v14 + v25 * v21 + a1 * (v25 + v20);
  return (*(v8 + 8 * (((v9 == -15) * v22) ^ v10)))(a1 + 1);
}

uint64_t sub_100265838@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = v8 - 1;
  *(a3 + v11) ^= *(v5 + (v11 & 0xF)) ^ *((v11 & 0xF) + v4 + 2) ^ ((v11 & 0xF) * v7) ^ *((v11 & 0xF) + v3 + 1) ^ v9;
  return (*(v10 + 8 * (((v11 == a1) * a2) ^ v6)))();
}

uint64_t sub_100265890@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 101720))(0);
  }

  else
  {
    return (*(a2 + 101720))(4294925278);
  }
}

uint64_t sub_1002658B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x490]) = a68;
  LODWORD(STACK[0x47C]) = v74;
  LODWORD(STACK[0x480]) = v73;
  LODWORD(STACK[0x484]) = v75;
  LODWORD(STACK[0x488]) = a71;
  return (*(v76 + 8 * ((11 * (LODWORD(STACK[0x4A0]) - LODWORD(STACK[0x4A4]) != -2138567131)) ^ (a73 + 13116))))();
}

uint64_t sub_100265E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v445 = v6;
  v444 = v7;
  v11 = -1802333311 * v7;
  v441 = *(v10 + 8 * (a6 - 17832)) - 2026222354;
  v12 = *(v441 + ((33 * (a6 ^ 0x49B5) - 22548) & v11 ^ 0xBDLL)) ^ 0x2D;
  v13 = (*(v441 + ((33 * (a6 ^ 0x49B5) - 22548) & v11 ^ 0xBDLL)) ^ 0x2D) >> 1;
  v14 = v13 & 0xFFFFFFDF ^ ((v12 >> 5) | 0xF8);
  v15 = v13 & 0x20;
  if ((v15 & v12) != 0)
  {
    v15 = -v15;
  }

  v16 = v14 ^ (v15 + v12);
  v421 = v9;
  v438 = *(v10 + 8 * (a6 - 16871)) - 1547132231;
  v17 = (*(v438 + (HIBYTE(v11) ^ 0xA2)) ^ HIBYTE(v11)) << 24;
  v440 = *(v10 + 8 * (a6 - 16876)) - 955212150;
  v18 = *(v440 + (BYTE1(v11) ^ 0xDALL)) << 8;
  v436 = *(v10 + 8 * (a6 - 15994)) - 1431706226;
  v19 = (v17 & 0x2E000000 ^ 0xCAE07C13 ^ ((((((((*(v436 + (BYTE2(v11) ^ 0xCDLL)) ^ 3) - 3) ^ ((*(v436 + (BYTE2(v11) ^ 0xCDLL)) ^ 0xFE) + 2) ^ ((*(v436 + (BYTE2(v11) ^ 0xCDLL)) ^ 0x50) - 80)) + 13) << 16) ^ 0x2B9A2E46) & (v18 ^ 0x7FFF3F7F) | v18 & 0xD100) ^ 0xFACB2A59) & (v17 ^ 0x89FFFF7F)) & (v16 ^ 0xFFFFFF87);
  v20 = *(v10 + 8 * (a6 - 17903)) - 492904847;
  v21 = *(v20 + (v8[9] ^ 0xA1));
  v443 = v19 ^ v16 & 0xF3;
  v22 = v21 ^ 0x34 ^ (4 * (v21 ^ 0x34)) ^ (2 * (v21 ^ 0x34));
  v23 = *(v10 + 8 * (a6 - 15790)) - 241738566;
  v24 = (*(v23 + (v8[5] ^ 0xDDLL)) + 66) << 16;
  v25 = *(v10 + 8 * (a6 ^ 0x5A4D)) - 1386881979;
  v26 = (((*(v25 + (v8[8] ^ 0xC3)) ^ v8[8]) << 24) ^ 0xF2A2A08E) & (v24 ^ 0xFF9CE0BE) | v24 & 0x5D0000;
  v27 = *(v10 + 8 * (a6 ^ 0x5A61)) - 1265660607;
  v28 = (((v26 ^ 0xA5055F40) & (((*(v27 + (v8[4] ^ 0xCLL)) ^ v8[4]) << 8) ^ 0xBF47A54A) | v26 & 0x40B80000) ^ 0x8A0876DE) & (v22 ^ 0xFFFFFF20);
  v29 = -1802333311 * v8;
  v30 = *(*(v10 + 8 * (a6 - 19111)) + ((-127 * v8) ^ 0xB9) - 507423751);
  LOBYTE(v19) = (BYTE2(v29) ^ 0x9A) + *(*(v10 + 8 * (a6 - 17205)) + (BYTE2(v29) ^ 0x2ALL) - 232079623);
  v31 = ((*(*(v10 + 8 * (a6 ^ 0x42E5)) + (((-27775 * v8) >> 8) ^ 0x3DLL) - 698582627) << 8) ^ 0x2B94095C) & ((v30 - 93) ^ 0xBBF4FF7C) | (v30 - 93) & 0xA3;
  v32 = *(*(v10 + 8 * (a6 ^ 0x49B8)) + (HIBYTE(v29) ^ 0x70) - 640567986) - 17;
  v33 = v31 & 0x2904025D ^ 0x32D66093 ^ (((((v32 >> 4) & 4 | 0x58) ^ v32) << 24) ^ 0xD90FDA2) & (v31 ^ 0xD4052ABF);
  v34 = (v19 + 118) << 16;
  v35 = v34 & 0xBD0000;
  v36 = v33 & (v34 ^ 0xFF96FFFF);
  LOBYTE(v34) = *(v20 + (v8[6] ^ 0xA1));
  v431 = v36 ^ v35;
  LOBYTE(v36) = v34 ^ 0x75 ^ (4 * (v34 ^ 0x75)) ^ (2 * (v34 ^ 0x75));
  v37 = (*(v23 + (v8[7] ^ 0xDDLL)) + 66) << 16;
  v38 = (*(v27 + (v8[10] ^ 0xCLL)) ^ v8[10]) << 8;
  v39 = v36 & 0x59 ^ 0x18F465FD ^ ((v38 & 0x6C00 | (((((v8[12] ^ *(v25 + (v8[12] ^ 0xC3)) ^ 0xFFFFFFE7) << 24) ^ 0xCBE858A) & (v37 ^ 0xFFD4858A) | v37 & 0x410000) ^ 0x2C181603) & (v38 ^ 0xFFFF208B)) ^ 0x8845892F) & (v36 ^ 0xFFFFFFA7);
  LOBYTE(v38) = *(v20 + (v8[1] ^ 0xA1)) ^ 0x46;
  v40 = (((*(v25 + (*v8 ^ 0xC3)) ^ *v8) << 24) ^ 0x57FFF4E1) & (((*(v23 + (v8[15] ^ 0xDDLL)) + 66) << 16) ^ 0xFFE7F4E1);
  LODWORD(v20) = *(v20 + (v8[2] ^ 0xA1)) ^ 0xFFFFFFD0;
  v41 = *(v23 + (v8[14] ^ 0xDDLL));
  v42 = (((*(v25 + (v8[13] ^ 0xC3)) ^ v8[13]) << 24) ^ 0x80A8EA96) & (((v41 + 66) << 16) ^ 0xFFC1EBF6) | ((v41 + 66) << 16) & 0x570000;
  v43 = (v40 & 0xECA0420 ^ 0x9D268B8C ^ (((*(v27 + (v8[11] ^ 0xCLL)) ^ v8[11]) << 8) ^ 0xF1359B8A) & (v40 ^ 0x8700B4E)) & ((v38 ^ (4 * v38) ^ (2 * v38)) ^ 0xFFFFFF3E) ^ ((v38 ^ (4 * v38)) ^ (2 * v38)) & 0xD9;
  LODWORD(v23) = v22 & 0x6B ^ v28 ^ v431 ^ 0x1F8E51AB ^ v43 ^ 0x8D8E9EB;
  v44 = *(v10 + 8 * (a6 ^ 0x5AD7)) - 499967751;
  v45 = v39 ^ v43 ^ 0xBB352061;
  v46 = v39 ^ v431 ^ 0x1F8E51AB ^ v45;
  LODWORD(v20) = v23 ^ (v20 ^ (4 * v20) ^ (2 * v20)) & 0xCF ^ (((v42 ^ 0x13011548) & (((*(v27 + (v8[3] ^ 0xCLL)) ^ v8[3]) << 8) ^ 0x1B696C58) | v42 & 0xE4960002) ^ 0x5707EF6A) & ((v20 ^ (4 * v20) ^ (2 * v20)) ^ 0xFFFFFF9D);
  LODWORD(v25) = v20 ^ 0x34F373FF;
  LODWORD(v20) = v45 ^ 0xA5CE93DF ^ v20;
  v47 = *(v10 + 8 * (a6 ^ 0x4BA2)) - 515483034;
  v48 = *(v10 + 8 * (a6 - 16840)) - 492572722;
  v49 = v39 ^ 0x4A5AB005 ^ v23;
  v50 = *(v10 + 8 * (a6 ^ 0x4DBD)) - 822067915;
  v51 = *(v44 + 4 * (BYTE2(v46) ^ 0xFCu));
  v52 = (v51 >> 4) & 0xB25DFCE ^ v51 ^ *(v47 + 4 * (BYTE3(v20) ^ 0x86)) ^ __ROR4__(*(v48 + 4 * (BYTE1(v25) ^ 0xFCu)), 19) ^ *(v50 + 4 * v49);
  LODWORD(v23) = HIBYTE(v49) ^ *(v44 + 4 * BYTE2(v20)) ^ *(v47 + 4 * (HIBYTE(v49) ^ 0x86)) ^ (*(v44 + 4 * BYTE2(v20)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v46) ^ 9u)), 19) ^ *(v50 + 4 * (v25 ^ 0x26u)) ^ 0x2C17D29C;
  v53 = *(v44 + 4 * (BYTE2(v25) ^ 0x6Au));
  LODWORD(v27) = *(v47 + 4 * (HIBYTE(v46) ^ 0x77)) ^ v53 ^ (v53 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v49)), 19) ^ *(v50 + 4 * v20);
  v54 = HIBYTE(v46) ^ 0x331775D1;
  v55 = *(v47 + 4 * (BYTE3(v25) ^ 0x6D)) ^ *(v44 + 4 * BYTE2(v49)) ^ (*(v44 + 4 * BYTE2(v49)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v20)), 19) ^ *(v50 + 4 * ((-(v46 ^ 0x34) ^ (143 - (v46 ^ 0xBB)) ^ 0xBEEE5B30 ^ ((v46 ^ 0x34) - ((2 * (v46 ^ 0x34)) & 0x60) - 1091675344)) + 143));
  v56 = *(v44 + 4 * (BYTE2(v52) ^ 0xD8u));
  v57 = BYTE3(v23);
  v58 = v54 ^ v27;
  v59 = BYTE3(v25) ^ 0x938E3618 ^ v55;
  v60 = (v56 >> 4) & 0xB25DFCE ^ v56 ^ *(v47 + 4 * (BYTE3(v23) ^ 0x86)) ^ __ROR4__(*(v48 + 4 * ((v54 ^ v27) >> 8)), 19) ^ *(v50 + 4 * (BYTE3(v25) ^ 0x18u ^ v55));
  v61 = *(v44 + 4 * BYTE2(v23)) ^ *(v47 + 4 * (HIBYTE(v59) ^ 0x86)) ^ (*(v44 + 4 * BYTE2(v23)) >> 4) & 0xB25DFCE ^ *(v50 + 4 * (v54 ^ v27)) ^ HIBYTE(v59) ^ __ROR4__(*(v48 + 4 * (BYTE1(v52) ^ 0xA2u)), 19) ^ 0xD77EA92E;
  LODWORD(v27) = *(v44 + 4 * (BYTE2(v27) ^ 0x78u));
  v62 = HIBYTE(v52) ^ *(v47 + 4 * (HIBYTE(v52) ^ 0xD6)) ^ v27 ^ (v27 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v55) ^ 0xE7u)), 19) ^ *(v50 + 4 * v23) ^ 0xEC7C8CB;
  v63 = __ROR4__(*(v48 + 4 * BYTE1(v23)), 19);
  LODWORD(v23) = *(v44 + 4 * (BYTE2(v60) ^ 0x33u));
  v64 = HIBYTE(v58) ^ *(v44 + 4 * BYTE2(v59)) ^ *(v47 + 4 * (HIBYTE(v58) ^ 0x86)) ^ (*(v44 + 4 * BYTE2(v59)) >> 4) & 0xB25DFCE ^ v63 ^ *(v50 + 4 * (v52 ^ (BYTE3(v20) - ((v20 >> 23) & 0x112) - 1103181687) ^ 0xBE3EC85E)) ^ 0x7D16BD0B;
  v65 = (v23 >> 4) & 0xB25DFCE ^ v23 ^ *(v47 + 4 * (HIBYTE(v61) ^ 0x86)) ^ __ROR4__(*(v48 + 4 * BYTE1(v62)), 19) ^ *(v50 + 4 * (HIBYTE(v58) ^ *(v44 + 4 * BYTE2(v59)) ^ *(v47 + 4 * (HIBYTE(v58) ^ 0x86)) ^ (*(v44 + 4 * BYTE2(v59)) >> 4) & 0xCE ^ v63 ^ *(v50 + 4 * (v52 ^ (BYTE3(v20) - ((v20 >> 23) & 0x112) - 1103181687) ^ 0xBE3EC85E)) ^ 0xBu));
  v66 = *(v47 + 4 * (HIBYTE(v64) ^ 0x86)) ^ *(v44 + 4 * BYTE2(v61)) ^ (*(v44 + 4 * BYTE2(v61)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v60) ^ 0x74u)), 19) ^ *(v50 + 4 * v62);
  LODWORD(v27) = HIBYTE(v60) ^ *(v44 + 4 * BYTE2(v62)) ^ *(v47 + 4 * (HIBYTE(v60) ^ 0x84)) ^ (*(v44 + 4 * BYTE2(v62)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v64)), 19) ^ *(v50 + 4 * v61) ^ 0xD26627F;
  v67 = HIBYTE(v62) ^ *(v44 + 4 * BYTE2(v64)) ^ *(v47 + 4 * (HIBYTE(v62) ^ 0x86)) ^ (*(v44 + 4 * BYTE2(v64)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v61)), 19) ^ *(v50 + 4 * (v57 ^ 0x87 ^ v60)) ^ 0x89353795;
  v68 = *(v44 + 4 * (BYTE2(v65) ^ 0xC8u));
  v69 = HIBYTE(v64) ^ 0x7F1A4D36 ^ v66;
  v70 = HIBYTE(v69);
  v71 = *(v44 + 4 * (BYTE2(v66) ^ 0x75u));
  v72 = (v68 >> 4) & 0xB25DFCE ^ v68 ^ *(v47 + 4 * (HIBYTE(v69) ^ 0x86)) ^ __ROR4__(*(v48 + 4 * BYTE1(v27)), 19) ^ *(v50 + 4 * v67);
  v73 = HIBYTE(v67);
  LODWORD(v23) = v71 ^ *(v47 + 4 * (HIBYTE(v67) ^ 0x86)) ^ (v71 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v65) ^ 6u)), 19) ^ *(v50 + 4 * v27) ^ 0xB68C2077;
  v74 = *(v47 + 4 * (HIBYTE(v65) ^ 0x92)) ^ *(v44 + 4 * BYTE2(v27)) ^ (*(v44 + 4 * BYTE2(v27)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v67)), 19) ^ *(v50 + 4 * v69);
  v75 = HIBYTE(v65) ^ 0xD3B1BBF5;
  v76 = *(v44 + 4 * BYTE2(v67)) ^ 0x81DF515C;
  v77 = __ROR4__(*(v48 + 4 * (BYTE1(v69) ^ 0xD1u)), 19);
  v78 = *(v47 + 4 * (BYTE3(v27) ^ 0x86)) ^ v77 ^ *(v50 + 4 * ((HIBYTE(v61) - ((v61 >> 23) & 0x108) - 2066165372) ^ 0x84D8D1D2 ^ v65)) ^ (((v76 >> 4) & 0xB25DFCE) + v76 - 2 * ((v76 >> 4) & 0xB25DFCE & v76));
  v79 = BYTE3(v27) ^ (*(v47 + 4 * (BYTE3(v27) ^ 0x86)) ^ v77 ^ *(v50 + 4 * ((HIBYTE(v61) - ((v61 >> 23) & 0x108) - 2066165372) ^ 0x84D8D1D2 ^ v65)) ^ (((v76 >> 4) & 0xCE) + v76 - 2 * ((v76 >> 4) & 0xCE & v76)));
  LODWORD(v20) = *(v44 + 4 * (BYTE2(v72) ^ 0x70u));
  v80 = BYTE3(v23);
  v81 = v75 ^ v74;
  LODWORD(v20) = (v20 >> 4) & 0xB25DFCE ^ v20 ^ *(v47 + 4 * (BYTE3(v23) ^ 0x86)) ^ __ROR4__(*(v48 + 4 * BYTE1(v81)), 19) ^ *(v50 + 4 * (v79 ^ 0xC));
  LODWORD(v27) = *(v47 + 4 * (HIBYTE(v78) ^ 0x2F)) ^ *(v44 + 4 * BYTE2(v23)) ^ (*(v44 + 4 * BYTE2(v23)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v72) ^ 0x47u)), 19) ^ *(v50 + 4 * v81);
  v82 = *(v44 + 4 * (BYTE2(v74) ^ 0xDEu));
  v83 = HIBYTE(v72) ^ v82 ^ *(v47 + 4 * (HIBYTE(v72) ^ 0x94)) ^ (v82 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v78) ^ 0xAEu)), 19) ^ *(v50 + 4 * (v23 ^ v73)) ^ 0xBE445549;
  v84 = v70 ^ v72;
  v85 = *(v44 + 4 * (BYTE2(v78) ^ 8u));
  v86 = HIBYTE(v81) ^ v85 ^ *(v47 + 4 * (HIBYTE(v81) ^ 0x86)) ^ (v85 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v23)), 19) ^ *(v50 + 4 * (v84 ^ 1u)) ^ 0x2D073A7F;
  v87 = *(v44 + 4 * (BYTE2(v20) ^ 0x80u));
  v88 = v87 ^ *(v47 + 4 * (((HIBYTE(v78) ^ 0x10E57565 ^ v27) >> 24) ^ 0x86)) ^ ((HIBYTE(v78) ^ 0x10E57565 ^ v27) >> 24) ^ (v87 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v83)), 19) ^ *(v50 + 4 * v86) ^ 0x50A38BB1;
  LODWORD(v23) = *(v44 + 4 * (BYTE2(v27) ^ 0x8Au));
  v89 = *(v47 + 4 * (HIBYTE(v86) ^ 0x86)) ^ v23 ^ (v23 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v20) ^ 0x6Du)), 19) ^ *(v50 + 4 * v83);
  LODWORD(v23) = *(v44 + 4 * BYTE2(v83)) ^ BYTE3(v20) ^ *(v47 + 4 * (BYTE3(v20) ^ 0xE4)) ^ (*(v44 + 4 * BYTE2(v83)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v86)), 19) ^ *(v50 + 4 * (HIBYTE(v78) ^ 0x65u ^ v27));
  v90 = HIBYTE(v83) ^ *(v44 + 4 * BYTE2(v86)) ^ *(v47 + 4 * (HIBYTE(v83) ^ 0x86)) ^ (*(v44 + 4 * BYTE2(v86)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v27) ^ 0xA4u)), 19) ^ *(v50 + 4 * (v80 ^ 0x82 ^ v20)) ^ 0xAFBB104A;
  LODWORD(v20) = HIBYTE(v89);
  v91 = (*(v44 + 4 * BYTE2(v88)) >> 4) & 0xB25DFCE ^ *(v44 + 4 * BYTE2(v88)) ^ *(v47 + 4 * (HIBYTE(v89) ^ 0x64)) ^ __ROR4__(*(v48 + 4 * (BYTE1(v23) ^ 0x60u)), 19) ^ *(v50 + 4 * v90);
  v92 = v23 ^ 0x1B7EB1E4;
  LODWORD(v23) = *(v44 + 4 * (BYTE2(v89) ^ 0xBDu));
  v93 = HIBYTE(v90);
  LODWORD(v23) = *(v47 + 4 * (HIBYTE(v90) ^ 0x86)) ^ v23 ^ (v23 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v88)), 19) ^ *(v50 + 4 * v92);
  v94 = HIBYTE(v88) ^ *(v44 + 4 * BYTE2(v92)) ^ *(v47 + 4 * (HIBYTE(v88) ^ 0x86)) ^ (*(v44 + 4 * BYTE2(v92)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v90)), 19) ^ *(v50 + 4 * ((HIBYTE(v86) - ((v86 >> 23) & 0xFA) + 398692989) ^ 0x17C39251 ^ v89)) ^ 0x19D8DDF2;
  v95 = HIBYTE(v92) ^ *(v44 + 4 * BYTE2(v90)) ^ *(v47 + 4 * (HIBYTE(v92) ^ 0x86)) ^ (*(v44 + 4 * BYTE2(v90)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v89) ^ 0xB6u)), 19) ^ *(v50 + 4 * v88) ^ 0x4AD9CE63;
  v96 = *(v44 + 4 * (BYTE2(v91) ^ 0xF5u));
  v97 = BYTE3(v23);
  v98 = (v96 >> 4) & 0xB25DFCE ^ v96 ^ *(v47 + 4 * (BYTE3(v23) ^ 0xDA)) ^ __ROR4__(*(v48 + 4 * BYTE1(v94)), 19) ^ *(v50 + 4 * v95);
  v99 = *(v44 + 4 * (BYTE2(v23) ^ 5u));
  v100 = HIBYTE(v95);
  v101 = *(v47 + 4 * (HIBYTE(v95) ^ 0x86)) ^ v99 ^ (v99 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v91) ^ 0x8Eu)), 19) ^ *(v50 + 4 * v94);
  v102 = *(v47 + 4 * (HIBYTE(v91) ^ 0xB2)) ^ *(v44 + 4 * BYTE2(v94)) ^ (*(v44 + 4 * BYTE2(v94)) >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v95)), 19) ^ *(v50 + 4 * (v93 ^ 0x66 ^ v23));
  v94 >>= 24;
  v103 = __ROR4__(*(v48 + 4 * (BYTE1(v23) ^ 0xBFu)), 19);
  v104 = *(v47 + 4 * (v94 ^ 0x86)) ^ *(v44 + 4 * BYTE2(v95)) ^ (*(v44 + 4 * BYTE2(v95)) >> 4) & 0xB25DFCE ^ v103 ^ *(v50 + 4 * (((v20 ^ 0x5B) - ((2 * (v20 ^ 0x5B)) & 0x1D2) - 42437911) ^ 0xFD787201 ^ v91));
  LODWORD(v23) = *(v44 + 4 * (BYTE2(v98) ^ 0x74u));
  v105 = (v23 >> 4) & 0xB25DFCE ^ v23 ^ *(v47 + 4 * (HIBYTE(v101) ^ 0x8B)) ^ __ROR4__(*(v48 + 4 * (BYTE1(v102) ^ 0xAEu)), 19) ^ *(v50 + 4 * (v94 ^ 0x4D ^ *(v47 + 4 * (v94 ^ 0x86)) ^ *(v44 + 4 * BYTE2(v95)) ^ (*(v44 + 4 * BYTE2(v95)) >> 4) & 0xCE ^ v103 ^ *(v50 + 4 * (((v20 ^ 0x5B) - ((2 * (v20 ^ 0x5B)) & 0x1D2) - 42437911) ^ 0xFD787201 ^ v91))));
  v106 = *(v10 + 8 * (a6 ^ 0x43DE)) - 13814726;
  v107 = *(v106 + 4 * (BYTE1(v105) ^ 0x2Du)) ^ 0x33366A32;
  LODWORD(v23) = v97 ^ 0x31B6C12 ^ v98;
  v108 = *(v44 + 4 * (BYTE2(v101) ^ 0x8Au));
  v109 = *(v47 + 4 * (HIBYTE(v104) ^ 0x12)) ^ v108 ^ (v108 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * BYTE1(v23)), 19) ^ *(v50 + 4 * (((HIBYTE(v91) ^ 0x5B) - ((2 * (HIBYTE(v91) ^ 0x5B)) & 0x82) + 950818881) ^ 0x38AC5841 ^ v102));
  v110 = *(v10 + 8 * (a6 - 14785)) - 1106074611;
  v111 = *(v44 + 4 * (BYTE2(v104) ^ 0x5Du));
  v112 = *(v47 + 4 * (HIBYTE(v102) ^ 0xE6)) ^ v111 ^ (v111 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v101) ^ 0xE8u)), 19) ^ *(v50 + 4 * v23);
  v113 = *(v44 + 4 * (BYTE2(v102) ^ 0x62u));
  v114 = *(v10 + 8 * (a6 - 15074)) - 823335450;
  v115 = HIBYTE(v102) ^ 0xDDA67DE8 ^ v112;
  LODWORD(v48) = BYTE3(v23) ^ v113 ^ *(v47 + 4 * (BYTE3(v23) ^ 0x86)) ^ (v113 >> 4) & 0xB25DFCE ^ __ROR4__(*(v48 + 4 * (BYTE1(v104) ^ 0x34u)), 19) ^ *(v50 + 4 * (v100 ^ 0x51 ^ v101)) ^ 0xFF562AAE;
  v116 = *(v10 + 8 * (a6 - 17981)) - 1137376335;
  v117 = *(v106 + 4 * (BYTE1(v109) ^ 0xADu)) ^ 0xE07DD780;
  LODWORD(v23) = *(v106 + 4 * (BYTE1(v112) ^ 0x76u));
  v118 = *(v110 + 4 * (BYTE2(v112) ^ 0xD7u)) ^ v117 ^ (*(v116 + (HIBYTE(v101) ^ 0xE4 ^ v105)) - 92) ^ (4 * v117) & 0xEC180FD0 ^ (*(v114 + 4 * (BYTE3(v48) ^ 0xBF)) + (BYTE3(v48) ^ 0x4623DBDB) - 1036326184) ^ 0x1D9403DF;
  v119 = v23 ^ 0x55E25A9;
  LOBYTE(v23) = *(v116 + (((HIBYTE(v104) ^ 0x94) - ((2 * (HIBYTE(v104) ^ 0x94)) & 0x178) - 411420996) ^ 0xE77A3647 ^ v109));
  v120 = v119 ^ *(v110 + 4 * BYTE2(v48)) ^ ((HIBYTE(v105) ^ 0x4623DBC2) - 1036326184 + *(v114 + 4 * (HIBYTE(v105) ^ 0xA6))) ^ (4 * v119) & 0xEC180FD0 ^ (v23 + ((2 * v23) & 0x18 ^ (4 * v23) & 0x10 ^ 0xF7) + 49);
  v121 = (4 * v107) & 0xEC180FD0 ^ v107 ^ *(v110 + 4 * (BYTE2(v109) ^ 0xDEu)) ^ (*(v114 + 4 * (HIBYTE(v115) ^ 0x3F)) + (HIBYTE(v115) ^ 0x4623DB5B) - 1036326184) ^ (*(v116 + v48) - 92);
  v122 = *(v106 + 4 * BYTE1(v48)) ^ 0x7F2B8F31;
  v123 = v122 ^ *(v110 + 4 * (BYTE2(v105) ^ 0xEBu)) ^ (4 * v122) & 0xEC180FD0 ^ ((HIBYTE(v109) ^ 0x4623DB0C) - 1036326184 + *(v114 + 4 * (HIBYTE(v109) ^ 0x68))) ^ (*(v116 + v115) - 92);
  v124 = *(v10 + 8 * (a6 - 17998)) - 2131325158;
  v125 = *(v10 + 8 * (a6 - 14879)) - 285898559;
  LODWORD(v114) = a6;
  v126 = *(v10 + 8 * (a6 - 16274)) - 496436298;
  v127 = v121 ^ v118 ^ v120;
  v128 = v123 ^ v118;
  v129 = v123 ^ v118 ^ 0x68407A8D ^ v127;
  v130 = v129 ^ v431 ^ 0xA3A651A2;
  v131 = *(v10 + 8 * (a6 ^ 0x4286)) - 1433970142;
  LODWORD(v20) = *(v124 + 4 * (BYTE2(v130) ^ 0x30u));
  v401 = v20 ^ (v20 >> 4) ^ (v20 >> 2) ^ (*(v125 + 4 * (HIBYTE(v130) ^ 0x1C)) + 1854383159) ^ *(v126 + 4 * (BYTE1(v130) ^ 0xACu)) ^ (*(v131 + ((v129 ^ v431 ^ 0xA2) ^ 0x12)) + 93);
  v132 = v127 ^ v431 ^ 0xE1C54C78;
  v133 = *(v124 + 4 * (BYTE2(v132) ^ 0x33u));
  v134 = v133 ^ (v133 >> 4) ^ (v133 >> 2) ^ (*(v125 + 4 * (HIBYTE(v132) ^ 0x48)) + 1854383159) ^ *(v126 + 4 * (((v132 ^ 0x8509) >> 8) ^ 3u)) ^ (*(v131 + (v132 ^ 0xEDLL)) + 93);
  v135 = (v134 & 0x100 | 0x5F84CA52) ^ v134 & 0xFFFFFEFF;
  v136 = *(v10 + 8 * (a6 - 14455)) - 1518094423;
  v137 = *(v10 + 8 * (a6 - 17480)) - 2036213426;
  v138 = *(v10 + 8 * (a6 - 16413)) - 791430447;
  v139 = *(v10 + 8 * (a6 ^ 0x5A05)) - 164677187;
  LODWORD(v23) = v120 ^ v128 ^ 0xC8A18355;
  v140 = v118 ^ v431 ^ 0xE1C54C78 ^ v23 ^ v129;
  v141 = BYTE1(v140) ^ 0x2C;
  v142 = v140 ^ 0xFALL;
  v143 = HIBYTE(v140) ^ 0x86;
  v144 = *(v124 + 4 * (BYTE2(v140) ^ 0xFCu));
  v402 = v144 ^ (v144 >> 4) ^ (v144 >> 2) ^ (*(v125 + 4 * v143) + 1854383159) ^ *(v126 + 4 * v141) ^ (*(v131 + v142) + 93) ^ 0xDA4CF3BD;
  LODWORD(v142) = *(v137 + 4 * (BYTE1(v135) ^ 0xAEu)) ^ __ROR4__(*(v136 + 4 * (BYTE2(v135) ^ 0xA8u)), 20) ^ (*(v138 + 4 * (v135 ^ 0x50u)) - 1197484314) ^ v402 ^ (HIBYTE(v135) ^ *(v139 + (HIBYTE(v135) ^ 0x74)));
  v145 = *(v124 + 4 * (((v23 ^ v431 ^ 0xA3A651A2) >> 16) ^ 0xA3u));
  v398 = *(v126 + 4 * (((v23 ^ v431 ^ 0x51A2) >> 8) ^ 0xEDu)) ^ v145 ^ (*(v125 + 4 * (((v23 ^ v431 ^ 0xA3A651A2) >> 24) ^ 0x43)) + 1854383159) ^ (*(v131 + ((v23 ^ v431 ^ 0xA2) ^ 0xF2)) + 93) ^ ((v145 ^ (v145 >> 2) ^ 0xC4A01336) >> (v25 & 2) >> (v25 & 2 ^ 2));
  v406 = v398 ^ 0xCABE2998 ^ v142 ^ v401;
  v407 = v398 ^ 0xCABE2998 ^ v142;
  v403 = v142;
  v404 = v406 ^ 0x553AAB46 ^ v135 ^ 0xD7CE2420;
  v146 = *(v137 + 4 * (BYTE1(v404) ^ 0x4Cu)) ^ __ROR4__(*(v136 + 4 * (BYTE2(v404) ^ 0x77u)), 20) ^ (*(v138 + 4 * (v406 ^ 0x46 ^ v135 ^ 0x20 ^ 0x38u)) - 1197484314) ^ 0x24561D47 ^ (HIBYTE(v404) ^ *(v139 + (HIBYTE(v404) ^ 0x42)));
  v408 = v146 ^ v398 ^ 0xCABE2998;
  LODWORD(v23) = v408 ^ 0x588FD476 ^ v135 ^ 0xD7CE2420;
  LODWORD(v25) = *(v137 + 4 * (BYTE1(v23) ^ 7u));
  v405 = v146 ^ v142;
  v410 = (*(v138 + 4 * (v408 ^ 0x76 ^ v135 ^ 0x20 ^ 0x4Du)) - 1197484314) ^ __ROR4__(*(v136 + 4 * (BYTE2(v23) ^ 0xAEu)), 20) ^ v146 ^ v142 ^ (BYTE3(v23) ^ *(v139 + (BYTE3(v23) ^ 0x50))) ^ (((2 * v25) & 0xEC3778CE ^ 0xF7CCC73B) + 2061064658 + (((v25 ^ 0xEF453E14) + 280674796) ^ ((v25 ^ 0xB3CC484A) + 1278457782) ^ ((v25 ^ 0x5834EB34) - 1479863092)));
  LODWORD(v131) = v408 ^ 0x588FD476 ^ v406 ^ 0x553AAB46 ^ 0x2E7066CE;
  v409 = v410 ^ 0xC4D196FA ^ v408 ^ 0x588FD476;
  v147 = v409 ^ 0xF19A40F ^ v131;
  v411 = v147 ^ v23;
  v148 = v147 ^ v23 ^ 0x87A31180;
  v415 = *(v137 + 4 * (BYTE1(v148) ^ 5u)) ^ __ROR4__(*(v136 + 4 * (BYTE2(v148) ^ 0xFEu)), 20) ^ (*(v138 + 4 * ((v147 ^ v23) ^ 0x56u)) - 1197484314) ^ v410 ^ 0xC4D196FA ^ (HIBYTE(v148) ^ *(v139 + (HIBYTE(v148) ^ 0x16)));
  LODWORD(v131) = v415 ^ 0x5D70ECBE ^ v131;
  LODWORD(v25) = v131 ^ v148;
  LODWORD(v126) = v131;
  v413 = v131;
  v412 = v415 ^ 0x5D70ECBE ^ v409 ^ 0xF19A40F;
  LODWORD(v131) = *(v137 + 4 * (((v131 ^ v148) >> 8) ^ 0x54u)) ^ __ROR4__(*(v136 + 4 * (((v131 ^ v148) >> 16) ^ 0xE0u)), 20) ^ (*(v138 + 4 * ((v131 ^ v148) ^ 0xC4u)) - 1197484314) ^ v415 ^ 0x5D70ECBE ^ 0x6D7B71D5;
  v414 = v25;
  v149 = (*(v139 + (BYTE3(v25) ^ 0x89)) ^ BYTE3(v25)) ^ 2;
  v150 = (-v149 ^ (v131 - (v131 ^ v149)) ^ (v149 - ((2 * (*(v139 + (BYTE3(v25) ^ 0x89)) ^ BYTE3(v25) ^ 2)) & 0xE4) - 332830350) ^ 0xEC296972) + v131;
  LODWORD(v131) = v25 ^ 0xAD820330;
  v416 = v150;
  v422 = v150 ^ v412;
  LODWORD(v125) = v150 ^ v412 ^ 0x879A799B;
  v423 = v125 ^ v126;
  LODWORD(v25) = v125 ^ v126 ^ 0x9473696F;
  v418 = v25 ^ v131;
  v420 = *(v137 + 4 * (((v25 ^ v131) >> 8) ^ 0xDEu)) ^ __ROR4__(*(v136 + 4 * (((v25 ^ v131) >> 16) ^ 0xF8u)), 20) ^ (*(v138 + 4 * ((v25 ^ v131) ^ 0x7Fu)) - 1197484314) ^ v150 ^ ((v25 ^ v131) >> 24) ^ *(v139 + (((v25 ^ v131) >> 24) ^ 0x82));
  v400 = v147 ^ 0x1E83D166;
  v151 = -1802333311 * v421;
  v399 = (v398 ^ 0xCA7CFF16) - 628677470;
  v152 = HIBYTE(v151) ^ 0x23 ^ *(v438 + (HIBYTE(v151) ^ 0xE6));
  v153 = *(v441 + ((-127 * v421) ^ 0xDALL));
  v154 = ((*(v436 + (BYTE2(v151) ^ 0x62)) ^ 0xB9) + 96) << 16;
  v155 = (((v153 ^ (v153 >> 5) ^ (v153 >> 1)) & 2 | ((v154 & 0x390000 | ((*(v440 + (((-27775 * v421) >> 8) ^ 0xCCLL)) << 8) ^ 0x2BC6BBFC) & ~v154) ^ 0x41CB6901) & (v153 ^ (v153 >> 5) ^ (v153 >> 1) ^ 0x7FFFFFC7)) ^ 0xC6482116) & ((v152 << 24) ^ 0x4FFFFFFF);
  LODWORD(v23) = v420 ^ 0x1C84FB78 ^ v125;
  v419 = v23;
  v156 = v23 ^ 0x552BC508 ^ v131;
  v417 = v23 ^ 0x552BC508 ^ v25;
  v425 = *(v137 + 4 * (BYTE1(v156) ^ 0xD5u)) ^ __ROR4__(*(v136 + 4 * (BYTE2(v156) ^ 0xF6u)), 20) ^ (*(v138 + 4 * (v156 ^ 7u)) - 1197484314) ^ v420 ^ 0x1C84FB78 ^ ((((HIBYTE(v156) ^ 0xD1) - (HIBYTE(v156) ^ 0xB6)) ^ 0xFE) + (HIBYTE(v156) ^ 0xD1)) ^ *(v139 + (HIBYTE(v156) ^ 0x76));
  v424 = v23 ^ 0xA4967A4 ^ v425 ^ 0x836B636D;
  v157 = v424 ^ v417 ^ 0x9AE00F9E;
  v426 = v157 ^ v156;
  v158 = __ROR4__(*(v136 + 4 * (((v157 ^ v156) >> 16) ^ 0x81u)), 20);
  LODWORD(v131) = *(v137 + 4 * (((v157 ^ v156) >> 8) ^ 0xE3u)) ^ v158 ^ (*(v138 + 4 * ((v157 ^ v156) ^ 0x8Du)) - 1197484314) ^ v425 ^ 0x836B636D ^ ((v157 ^ v156) >> 24) ^ *(v139 + (((v157 ^ v156) >> 24) ^ 0xBCLL)) ^ 0xA4B5D19C;
  v429 = *(v137 + 4 * (((v157 ^ v156) >> 8) ^ 0xE3u)) ^ v158 ^ (*(v138 + 4 * ((v157 ^ v156) ^ 0x8Du)) - 1197484314) ^ v425 ^ 0x836B636D ^ ((v157 ^ v156) >> 24) ^ *(v139 + (((v157 ^ v156) >> 24) ^ 0xBCLL));
  v430 = v131 ^ v424;
  LODWORD(v125) = v131 ^ v424 ^ 0x13FE908C ^ v156;
  v427 = *(v137 + 4 * (((v125 ^ 0x7F06) >> 8) ^ 0x4Cu)) ^ __ROR4__(*(v136 + 4 * (((v125 ^ 0xE7997F06) >> 16) ^ 0x9Eu)), 20) ^ (*(v138 + 4 * (v125 ^ 0x67u)) - 1197484314) ^ v131 ^ 0x8FF12079 ^ ((v125 ^ 0xE7997F06) >> 24) ^ *(v139 + (((v125 ^ 0xE7997F06) >> 24) ^ 0xF2));
  v428 = v125 ^ 0x7D7B15D3;
  v442 = v131 ^ v424 ^ 0x13FE908C ^ v157;
  v432 = v427 ^ v131 ^ v424 ^ 0x13FE908C;
  v434 = v432 ^ 0x65F3C8F ^ v442 ^ 0xB6165586;
  LODWORD(v131) = v434 ^ v125 ^ 0x7D7B15D3;
  v437 = v131 ^ 0x823F8E97;
  v159 = v155 ^ (v152 << 24) & 0x53000000;
  v160 = *(v137 + 4 * (((v131 ^ 0x8E97) >> 8) ^ 0x14u)) ^ __ROR4__(*(v136 + 4 * (BYTE2(v131) ^ 0x69u)), 20);
  LOBYTE(v124) = *(v139 + (((v131 ^ 0x823F8E97) >> 24) ^ 0x55));
  LODWORD(v137) = *(v138 + 4 * ((v434 ^ v125 ^ 0xD3) ^ 0xAFu)) - 1197484314;
  LODWORD(v142) = v114;
  LODWORD(v136) = v114 ^ 0x413B;
  v161 = v10;
  v162 = *(v10 + 8 * v136) - 615725883;
  v163 = *(v10 + 8 * (v142 - 16721)) - 2124865539;
  v164 = *(v10 + 8 * (v142 - 18309)) - 103131095;
  LODWORD(v136) = *(v164 + (v421[6] ^ 0xELL));
  HIDWORD(v165) = v136 ^ 0xD;
  LODWORD(v165) = (v136 ^ 0xFFFFFFBF) << 24;
  LOBYTE(v129) = v165 >> 29;
  LODWORD(v131) = *(v164 + (v421[1] ^ 0xELL));
  HIDWORD(v165) = v131 ^ 0xD;
  LODWORD(v165) = (v131 ^ 0xFFFFFFBF) << 24;
  v166 = v160 ^ v137 ^ v427;
  LODWORD(v137) = *(v164 + (v421[9] ^ 0xELL));
  v439 = v166 ^ (HIBYTE(v437) ^ v124);
  v167 = *(v164 + (v421[2] ^ 0xELL));
  LOBYTE(v126) = (v137 >> 5) | (8 * v137);
  v168 = *(v10 + 8 * (v142 ^ 0x5A2E)) - 1538408694;
  LODWORD(v136) = v421[13] ^ *(v168 + 4 * (v421[13] ^ 0x5ELL)) ^ v421[3] ^ *(v162 + 4 * (v421[3] ^ 0x40)) ^ *(v163 + 4 * (v421[14] ^ 0x6BLL)) ^ ((v167 >> 5) | (8 * v167)) ^ 0xBF1B00DB;
  v169 = v159 ^ 0x5BAA4D53;
  LODWORD(v20) = *(v163 + 4 * (v421[5] ^ 0x6BLL)) ^ v126 ^ v421[4] ^ *(v162 + 4 * (v421[4] ^ 0x40)) ^ v421[8] ^ *(v168 + 4 * (v421[8] ^ 0x5ELL)) ^ v159;
  LODWORD(v136) = v159 ^ v136;
  LODWORD(v131) = v421[11] ^ *(v162 + 4 * (v421[11] ^ 0x40)) ^ *(v163 + 4 * (v421[15] ^ 0x6BLL)) ^ (v165 >> 29) ^ *v421 ^ *(v168 + 4 * (*v421 ^ 0x5ELL)) ^ v159 ^ 0x5BAA4D53;
  v170 = v421[12] ^ *(v168 + 4 * (v421[12] ^ 0x5ELL)) ^ v129 ^ v421[10] ^ *(v162 + 4 * (v421[10] ^ 0x40)) ^ *(v163 + 4 * (v421[7] ^ 0x6BLL)) ^ v159 ^ 0x5BAA4D53 ^ v136;
  v171 = v131 ^ v20 ^ v136;
  LODWORD(v131) = v131 ^ 0xC252D1CE;
  LODWORD(v164) = v20 ^ 0xA17B5806 ^ v170;
  LODWORD(v136) = v170 ^ v171 ^ 0x256D8998;
  LODWORD(v168) = v171 ^ 0x9D4F5C30;
  v172 = *(v10 + 8 * (v142 - 17891)) - 1054519587;
  v173 = *(v10 + 8 * (v142 ^ 0x4F5D)) - 1000036395;
  v174 = *(v10 + 8 * (v142 ^ 0x4EBE)) - 1943365606;
  v175 = v142;
  v176 = v10;
  v177 = *(v10 + 8 * (v142 ^ 0x43CB)) - 1288570923;
  v178 = BYTE1(v168) ^ *(v172 + 4 * BYTE2(v131)) ^ *(v173 + 4 * BYTE3(v164)) ^ *(v174 + 4 * (BYTE1(v168) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v131)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * ((v170 ^ v171) ^ 0x98u));
  LODWORD(v163) = *(v173 + 4 * BYTE3(v168)) ^ BYTE1(v164) ^ *(v172 + 4 * BYTE2(v136)) ^ *(v174 + 4 * (BYTE1(v164) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v136)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * v131);
  v179 = *(v172 + 4 * BYTE2(v168)) ^ *(v173 + 4 * BYTE3(v131)) ^ (*(v172 + 4 * BYTE2(v168)) >> 3) & 0x116B2B22 ^ *(v174 + 4 * (BYTE1(v136) ^ 0xDCu)) ^ *(v177 + 4 * v164) ^ 0x3BE6F29E;
  LODWORD(v23) = BYTE1(v131) ^ *(v172 + 4 * BYTE2(v164)) ^ *(v173 + 4 * BYTE3(v136)) ^ *(v174 + 4 * (BYTE1(v131) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v164)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * v168) ^ 0xA33B7164;
  LODWORD(v131) = v178 ^ 0x2CCDC483;
  LODWORD(v25) = *(v172 + 4 * ((v163 ^ 0xB706281F) >> 16));
  LODWORD(v168) = *(v173 + 4 * HIBYTE(v179)) ^ v25 ^ *(v174 + 4 * (BYTE1(v23) ^ 0xDCu)) ^ (v25 >> 3) & 0x116B2B22 ^ BYTE1(v23) ^ *(v177 + 4 * (v178 ^ 0x87u));
  v180 = *(v172 + 4 * BYTE2(v179)) ^ *(v173 + 4 * ((v178 ^ 0x2CCDC483u) >> 24)) ^ ((v163 ^ 0x281F) >> 8) ^ *(v174 + 4 * (((v163 ^ 0x281F) >> 8) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v179)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * v23) & 0x7FFFFFFF ^ (*(v177 + 4 * v23) & 0x80000000 | 0x4745F3F);
  LOBYTE(v25) = v179 ^ BYTE1(v136);
  LODWORD(v136) = *(v173 + 4 * BYTE3(v23)) ^ BYTE1(v179) ^ *(v172 + 4 * BYTE2(v131)) ^ *(v174 + 4 * (BYTE1(v179) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v131)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v163 ^ 0x1Fu));
  LODWORD(v131) = *(v172 + 4 * BYTE2(v23)) ^ BYTE1(v131) ^ *(v173 + 4 * (BYTE3(v163) ^ 0x2D)) ^ *(v174 + 4 * (BYTE1(v131) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v23)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * v25);
  LODWORD(v164) = v180 ^ 0xD71F1CB;
  LODWORD(v25) = *(v172 + 4 * ((v131 ^ 0xB97FD9E6) >> 16));
  v181 = v136 ^ 0x29F81630;
  v182 = v25 ^ *(v174 + 4 * (((v136 ^ 0x1630) >> 8) ^ 0xDCu)) ^ *(v173 + 4 * ((v168 ^ 0xD31749C4) >> 24)) ^ ((v136 ^ 0x1630) >> 8) ^ (v25 >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v180 & 0x40 ^ 0x4E1E45D6 ^ (((v180 ^ 0xD71F1CB) & 0xBF) - 2 * ((v180 ^ 0xD71F1CB) & 0x96 ^ v180 & 4) + 1310606738)));
  LODWORD(v142) = *(v172 + 4 * ((v168 ^ 0xD31749C4) >> 16));
  LODWORD(v163) = v142 ^ *(v173 + 4 * ((v180 ^ 0xD71F1CB) >> 24)) ^ *(v174 + 4 * (((v131 ^ 0xD9E6) >> 8) ^ 0xDCu)) ^ ((v131 ^ 0xD9E6) >> 8) ^ (v142 >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v136 ^ 0x30u));
  LODWORD(v136) = *(v172 + 4 * (BYTE2(v136) ^ 0xA3u));
  LODWORD(v136) = *(v173 + 4 * ((v131 ^ 0xB97FD9E6) >> 24)) ^ BYTE1(v164) ^ v136 ^ (v136 >> 3) & 0x116B2B22 ^ *(v174 + 4 * (BYTE1(v164) ^ 0xDCu)) ^ *(v177 + 4 * (v168 ^ 0xC0u));
  LODWORD(v131) = ((v168 ^ 0x49C4) >> 8) ^ *(v173 + 4 * HIBYTE(v181)) ^ *(v172 + 4 * BYTE2(v164)) ^ *(v174 + 4 * (((v168 ^ 0x49C4) >> 8) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v164)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v131 ^ 0xE2u)) ^ 0x7CAB76A6;
  LODWORD(v23) = *(v172 + 4 * (BYTE2(v163) ^ 0x3Au));
  LODWORD(v25) = v136 ^ 0xB83653FC;
  LODWORD(v168) = *(v173 + 4 * BYTE3(v131)) ^ ((v182 ^ 0x8041) >> 8) ^ v23 ^ (v23 >> 3) & 0x116B2B22 ^ *(v174 + 4 * (((v182 ^ 0x8041) >> 8) ^ 0xDCu)) ^ *(v177 + 4 * (v136 ^ 0xF8u));
  LODWORD(v136) = *(v172 + 4 * ((v136 ^ 0xB83653FC) >> 16));
  LODWORD(v164) = *(v173 + 4 * ((v182 ^ 0xCA938041) >> 24)) ^ v136 ^ *(v174 + 4 * (BYTE1(v131) ^ 0xDCu)) ^ BYTE1(v131) ^ (v136 >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v163 ^ 0x8Cu)) ^ 0xE46009DB;
  v183 = *(v172 + 4 * ((v182 ^ 0xCA938041) >> 16));
  LODWORD(v136) = v183 ^ *(v173 + 4 * (BYTE3(v163) ^ 0x9C)) ^ *(v174 + 4 * (BYTE1(v25) ^ 0xDCu)) ^ BYTE1(v25) ^ (v183 >> 3) & 0x116B2B22 ^ *(v177 + 4 * v131) ^ 0xB74038BD;
  v184 = *(v172 + 4 * BYTE2(v131)) ^ BYTE1(v163) ^ *(v173 + 4 * BYTE3(v25)) ^ *(v174 + 4 * (BYTE1(v163) ^ 0x60u)) ^ (*(v172 + 4 * BYTE2(v131)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v182 ^ 0x45u));
  v185 = *(v172 + 4 * BYTE2(v136)) ^ BYTE1(v164) ^ *(v173 + 4 * (BYTE3(v168) ^ 0x83)) ^ (*(v172 + 4 * BYTE2(v136)) >> 3) & 0x116B2B22 ^ *(v174 + 4 * (BYTE1(v164) ^ 0xDCu)) ^ *(v177 + 4 * (*(v172 + 4 * BYTE2(v131)) ^ BYTE1(v163) ^ *(v173 + 4 * BYTE3(v25)) ^ *(v174 + 4 * (BYTE1(v163) ^ 0x60u)) ^ (*(v172 + 4 * BYTE2(v131)) >> 3) & 0x22 ^ *(v177 + 4 * (v182 ^ 0x45u)) ^ 0x1Fu));
  LODWORD(v131) = *(v172 + 4 * (BYTE2(v168) ^ 0xDu));
  v186 = *(v173 + 4 * (HIBYTE(v184) ^ 0xFC)) ^ BYTE1(v136) ^ v131 ^ *(v174 + 4 * (BYTE1(v136) ^ 0xDCu)) ^ (v131 >> 3) & 0x116B2B22 ^ *(v177 + 4 * v164);
  v187 = *(v172 + 4 * (BYTE2(v184) ^ 0x54u));
  v188 = *(v173 + 4 * BYTE3(v164)) ^ BYTE1(v168) ^ v187 ^ *(v174 + 4 * (BYTE1(v168) ^ 0x1Du)) ^ (v187 >> 3) & 0x116B2B22 ^ *(v177 + 4 * v136) ^ 0xD203DFB6;
  v189 = *(v172 + 4 * BYTE2(v164)) ^ BYTE1(v184) ^ *(v173 + 4 * BYTE3(v136)) ^ (*(v172 + 4 * BYTE2(v164)) >> 3) & 0x116B2B22 ^ *(v174 + 4 * (BYTE1(v184) ^ 0xD3u)) ^ *(v177 + 4 * (v168 ^ 0xB1u)) ^ 0x4B19DDE2;
  v190 = *(v174 + 4 * (BYTE1(v185) ^ 0x5Eu));
  v191 = ~v190 & 0x10;
  if ((v191 & (v185 >> 8)) != 0)
  {
    v191 = -v191;
  }

  v192 = v186 ^ 0xCF9BE7EF;
  v193 = *(v172 + 4 * BYTE2(v188)) ^ *(v173 + 4 * HIBYTE(v189)) ^ ((v186 ^ 0xE7EF) >> 8) ^ (*(v172 + 4 * BYTE2(v188)) >> 3) & 0x116B2B22 ^ *(v174 + 4 * (((v186 ^ 0xE7EF) >> 8) ^ 0xDCu)) ^ *(v177 + 4 * (v185 ^ 0xD3u));
  v194 = *(v173 + 4 * (HIBYTE(v185) ^ 0xFD)) ^ BYTE1(v188) ^ *(v172 + 4 * BYTE2(v189)) ^ *(v174 + 4 * (BYTE1(v188) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v189)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v186 ^ 0xEFu));
  v195 = *(v172 + 4 * (BYTE2(v186) ^ 0xC0u));
  v196 = *(v173 + 4 * HIBYTE(v188)) ^ v195 ^ v190 & 0xFFFFFFEF ^ (v195 >> 3) & 0x116B2B22 ^ *(v177 + 4 * v189) ^ (v191 + (BYTE1(v185) ^ 0xEF30F987));
  v197 = *(v172 + 4 * (BYTE2(v185) ^ 0xD9u));
  v198 = v196 ^ 0x9C79CA2D;
  v199 = *(v173 + 4 * HIBYTE(v192)) ^ BYTE1(v189) ^ v197 ^ *(v174 + 4 * (BYTE1(v189) ^ 0xDCu)) ^ (v197 >> 3) & 0x116B2B22 ^ *(v177 + 4 * v188);
  v200 = *(v172 + 4 * ((v196 ^ 0x9C79CA2D) >> 16));
  v201 = ((2 * v200) & 0x75EBF47C ^ 0xEA77EB87) - 977532548 + (((v200 ^ 0x20E618C9) - 551950537) ^ ((v200 ^ 0xF721889C) + 148797284) ^ ((v200 ^ 0xDD019F68) + 587096216));
  v202 = v199 ^ 0xEE8B54AF;
  v203 = *(v174 + 4 * (((v199 ^ 0x54AF) >> 8) ^ 0xDCu)) ^ *(v173 + 4 * (HIBYTE(v193) ^ 0xED)) ^ ((v199 ^ 0x54AF) >> 8) ^ *(v177 + 4 * (v194 ^ 0x14u)) ^ v201 ^ (v201 >> 3) & 0x116B2B22;
  v204 = v199 ^ 0xAB;
  v205 = *(v172 + 4 * (BYTE2(v199) ^ 0xD0u));
  v206 = *(v173 + 4 * HIBYTE(v198)) ^ v205 ^ *(v174 + 4 * (((v194 ^ 0x410) >> 8) ^ 0xDCu)) ^ ((v194 ^ 0x410) >> 8) ^ (v205 >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v193 ^ 0x8Au)) ^ 0x33C7FA8E;
  v207 = v206 - ((2 * v206) & 0x4A3486F0) - 1525005448;
  v208 = *(v172 + 4 * (BYTE2(v193) ^ 0x7Fu));
  v209 = BYTE1(v198) ^ *(v173 + 4 * ((v194 ^ 0x2C6F0410u) >> 24)) ^ v208 ^ (v208 >> 3) & 0x116B2B22 ^ *(v174 + 4 * (BYTE1(v198) ^ 0xDCu));
  v210 = *(v173 + 4 * HIBYTE(v202));
  v211 = v209 ^ *(v177 + 4 * v204) ^ 0xF4CDDAA5;
  v212 = *(v172 + 4 * (((v194 ^ 0x2C6F0410u) >> 16) ^ 0x5Bu));
  v213 = BYTE1(v193) ^ v212 ^ v210 ^ *(v174 + 4 * (BYTE1(v193) ^ 0x5Au)) ^ (v212 >> 3) & 0x116B2B22 ^ *(v177 + 4 * v198) ^ 0xBFF56EA;
  v214 = v203 ^ 0xA7D0370C;
  v215 = HIBYTE(v203) ^ 0x3D;
  v216 = *(v172 + 4 * (BYTE2(v207) ^ 0x5Bu));
  v217 = v216 ^ *(v173 + 4 * v215) ^ *(v174 + 4 * (BYTE1(v213) ^ 0xDCu)) ^ BYTE1(v213) ^ (v216 >> 3) & 0x116B2B22 ^ *(v177 + 4 * v211);
  v218 = *(v172 + 4 * BYTE2(v213)) ^ (*(v172 + 4 * BYTE2(v213)) >> 3) & 0x116B2B22 ^ *(v174 + 4 * (BYTE1(v211) ^ 0xDCu)) ^ BYTE1(v211) ^ *(v173 + 4 * ((v207 ^ 0x9A000004) >> 24)) ^ *(v177 + 4 * v214) ^ 0x45BF395F;
  v219 = *(v173 + 4 * HIBYTE(v213)) ^ *(v172 + 4 * BYTE2(v211)) ^ BYTE1(v214) ^ (*(v172 + 4 * BYTE2(v211)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v207 ^ 4u)) ^ *(v174 + 4 * (BYTE1(v214) ^ 0xDCu));
  v220 = BYTE1(v207) ^ *(v173 + 4 * HIBYTE(v211)) ^ *(v172 + 4 * BYTE2(v214)) ^ *(v174 + 4 * (BYTE1(v207) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v214)) >> 3) & 0x116B2B22 ^ *(v177 + 4 * v213) ^ 0x1D52A8AC;
  v221 = *(v172 + 4 * ((v219 ^ 0xC8DD7B1A) >> 16));
  v222 = v217 ^ 0xE6D9836C;
  v223 = v221 ^ *(v173 + 4 * HIBYTE(v218)) ^ BYTE1(v220) ^ *(v174 + 4 * (BYTE1(v220) ^ 0xDCu)) ^ (v221 >> 3) & 0x116B2B22 ^ *(v177 + 4 * (v217 ^ 0x6Cu));
  v224 = *(v173 + 4 * (HIBYTE(v217) ^ 0x7C)) ^ *(v172 + 4 * BYTE2(v218)) ^ (*(v172 + 4 * BYTE2(v218)) >> 3) & 0x116B2B22 ^ *(v174 + 4 * (((v219 ^ 0x7B1A) >> 8) ^ 0xDCu)) ^ ((v219 ^ 0x7B1A) >> 8) ^ *(v177 + 4 * v220);
  v225 = *(v172 + 4 * BYTE2(v222)) ^ BYTE1(v218) ^ *(v173 + 4 * HIBYTE(v220)) ^ *(v174 + 4 * (BYTE1(v218) ^ 0xDCu)) ^ (*(v172 + 4 * BYTE2(v222)) >> 3) & 0x116B2B22;
  v226 = *(v172 + 4 * BYTE2(v220));
  v227 = v225 ^ *(v177 + 4 * (v219 ^ 0x1Au));
  v228 = *(v173 + 4 * (HIBYTE(v219) ^ 0x52)) ^ BYTE1(v222) ^ v226 ^ *(v174 + 4 * (BYTE1(v222) ^ 0xDCu)) ^ (v226 >> 3) & 0x116B2B22 ^ *(v177 + 4 * v218);
  v229 = *(v161 + 8 * (v175 ^ 0x4934)) - 1246674846;
  v230 = *(v161 + 8 * (v175 - 15517)) - 1207313839;
  LOBYTE(v226) = v228 ^ 0x11;
  v231 = *(v229 + 4 * (HIBYTE(v223) ^ 0x49));
  v232 = v223 ^ 0x84F7EAC0;
  v233 = *(v161 + 8 * (v175 - 18862)) - 349769542;
  v234 = *(v161 + 8 * (v175 - 19163)) - 1652899291;
  v235 = *(v230 + 4 * ((v228 ^ 0x8BB7CD11) >> 16)) - 469955841;
  v236 = v235 ^ v231 ^ (16 * v235);
  v237 = *(v233 + 4 * (BYTE1(v227) ^ 0x44u));
  v238 = v236 ^ v237 ^ (v237 >> 1) ^ (v237 >> 2) ^ (*(v234 + (v224 ^ 0x16u)) + 2);
  v239 = *(v230 + 4 * BYTE2(v232)) - 469955841;
  v240 = v239 ^ *(v229 + 4 * (HIBYTE(v224) ^ 0xD2)) ^ (16 * v239);
  v241 = *(v233 + 4 * ((v228 ^ 0xCD11) >> 8));
  v242 = v241 ^ (v241 >> 2) ^ (v241 >> 1) ^ 0xDD018EC9;
  v243 = (-(v240 ^ 0xB9A0B780) ^ (v242 - (v240 ^ 0xB9A0B780 ^ v242)) ^ 0x9C1333AA ^ ((v240 ^ 0xB9A0B780) - 2 * ((v240 ^ 0xB9A0B780) & 0x1C1333BB ^ v240 & 0x11) - 1676463190)) + v242;
  v244 = *(v229 + 4 * (HIBYTE(v227) ^ 0x9F));
  v245 = *(v229 + 4 * (HIBYTE(v228) ^ 0x46));
  v246 = *(v230 + 4 * (BYTE2(v224) ^ 0x52u)) - 469955841;
  v247 = *(v230 + 4 * (BYTE2(v227) ^ 0x1Du)) - 469955841;
  v248 = *(v233 + 4 * ((v224 ^ 0x4816) >> 8));
  LOBYTE(v227) = *(v234 + (v227 ^ 0xAALL));
  LOBYTE(v226) = *(v234 + v226);
  LODWORD(v234) = v245 ^ v248 ^ v247 ^ v238 ^ (16 * v247) ^ (v248 >> 1) ^ (v248 >> 2) ^ (*(v234 + v232) + 2);
  v249 = (v227 + 2) ^ v243 ^ 0x45D53E06 ^ v234;
  v250 = v244 ^ *(v233 + 4 * BYTE1(v232)) ^ v246 ^ (16 * v246) ^ (*(v233 + 4 * BYTE1(v232)) >> 1) ^ (*(v233 + 4 * BYTE1(v232)) >> 2) ^ (v226 + 2) ^ 0x45B25DB ^ v249;
  v251 = v250 - ((2 * v250) & 0xF0109B02) - 133673599;
  v252 = v238 ^ 0x9793EEF5 ^ v251;
  LODWORD(v234) = v234 ^ 0xC7D4EA99 ^ v252;
  v253 = v159 ^ v251 ^ v234 ^ v402;
  v254 = v169 ^ v249 ^ v135;
  v255 = v398 ^ v169 ^ v234 ^ 0xBEA3D38A;
  v256 = v401 ^ v169 ^ v252 ^ 0xAB873D33;
  v257 = *(v161 + 8 * (v175 - 18902)) - 2056859822;
  v258 = *(v176 + 8 * (v175 ^ 0x4528)) - 235611074;
  v259 = *(v176 + 8 * (v175 ^ 0x454C)) - 114389702;
  v260 = *(v176 + 8 * (v175 ^ 0x4637)) - 1637716135;
  LODWORD(v234) = v253 ^ 0xA8;
  v261 = __ROR4__((v399 + v400) ^ *(v258 + 4 * (BYTE2(v254) ^ 0x7Au)) ^ (*(v259 + 4 * (BYTE1(v253) ^ 0x4Eu)) - 1634657487) ^ *(v260 + 4 * v255) ^ (*(v257 + 4 * (HIBYTE(v256) ^ 0xC5)) + (HIBYTE(v256) ^ 0xA2F4DA5E) - 1147932396) ^ 0xF729C884, 9);
  LODWORD(v230) = *(v258 + 4 * (BYTE2(v253) ^ 0x90u)) ^ ((HIBYTE(v254) ^ 0xA2F4DAA9) - 1147932396 + *(v257 + 4 * (HIBYTE(v254) ^ 0x32))) ^ (*(v259 + 4 * BYTE1(v255)) - 1634657487) ^ *(v260 + 4 * v256) ^ v404;
  v262 = v403 ^ *(v258 + 4 * BYTE2(v255)) ^ (*(v259 + 4 * BYTE1(v256)) - 1634657487) ^ *(v260 + 4 * (v254 ^ 0xE0u)) ^ (*(v257 + 4 * (HIBYTE(v253) ^ 0x49)) + (HIBYTE(v253) ^ 0xA2F4DAD2) - 1147932396) ^ 0xBAFD0AF0;
  LODWORD(v234) = v407 ^ *(v258 + 4 * BYTE2(v256)) ^ (*(v259 + 4 * (BYTE1(v254) ^ 0xE1u)) - 1634657487) ^ *(v260 + 4 * v234) ^ (*(v257 + 4 * (HIBYTE(v255) ^ 0xC5)) + (HIBYTE(v255) ^ 0xA2F4DA5E) - 1147932396) ^ 0xE7A0A82D;
  v263 = __ROR4__(v261 ^ 0xC2BB81DB, 23);
  v264 = v406 ^ (v399 + v400) ^ v263 ^ 0xEE56A5CF;
  v265 = ((BYTE3(v234) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (BYTE3(v234) ^ 0xC5))) ^ (*(v259 + 4 * (BYTE1(v230) ^ 0xEFu)) - 1634657487) ^ v408 ^ *(v260 + 4 * v262) ^ *(v258 + 4 * BYTE2(v264));
  v266 = v405 ^ *(v258 + 4 * BYTE2(v234)) ^ *(v260 + 4 * (v230 ^ 0xC0u)) ^ (*(v257 + 4 * (HIBYTE(v262) ^ 0xC5)) + (HIBYTE(v262) ^ 0xA2F4DA5E) - 1147932396) ^ 0x4CE79066 ^ (*(v259 + 4 * BYTE1(v264)) - 1634657487);
  v267 = v408 ^ 0x588FD476 ^ v406 ^ 0x553AAB46 ^ *(v258 + 4 * (BYTE2(v230) ^ 0x76u)) ^ (*(v259 + 4 * BYTE1(v262)) - 1634657487) ^ *(v260 + 4 * v234) ^ 0xC88E9DB5 ^ ((HIBYTE(v264) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v264) ^ 0xC5)));
  LODWORD(v234) = v408 ^ 0x588FD476 ^ v135 ^ 0xD7CE2420 ^ *(v258 + 4 * BYTE2(v262)) ^ ((BYTE3(v230) ^ 0xA2F4DA93) - 1147932396 + *(v257 + 4 * (BYTE3(v230) ^ 8))) ^ (*(v259 + 4 * (BYTE1(v234) - ((v234 >> 7) & 0xC2) + 97)) - 1634657487) ^ 0xDFAFA4B5 ^ *(v260 + 4 * ((v406 ^ (v399 + v400) ^ v263) ^ 0xCFu));
  v268 = *(v258 + 4 * BYTE2(v267)) ^ v409 ^ ((HIBYTE(v265) ^ 0xA2F4DA2F) - 1147932396 + *(v257 + 4 * (HIBYTE(v265) ^ 0xB4))) ^ (*(v259 + 4 * BYTE1(v234)) - 1634657487) ^ *(v260 + 4 * v266);
  v269 = ((HIBYTE(v267) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v267) ^ 0xC5))) ^ v400 ^ *(v258 + 4 * BYTE2(v234)) ^ (*(v259 + 4 * BYTE1(v266)) - 1634657487) ^ *(v260 + 4 * (v265 ^ 0x8Bu));
  v270 = v410 ^ *(v258 + 4 * (BYTE2(v265) ^ 0x10u)) ^ ((HIBYTE(v266) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v266) ^ 0xC5))) ^ (*(v259 + 4 * (BYTE1(v267) ^ 0x61u)) - 1634657487) ^ *(v260 + 4 * v234) ^ 0x1F0D36A8;
  LODWORD(v234) = v411 ^ *(v258 + 4 * BYTE2(v266)) ^ ((BYTE3(v234) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (BYTE3(v234) ^ 0xC5))) ^ (*(v259 + 4 * (BYTE1(v265) ^ 0xEEu)) - 1634657487) ^ *(v260 + 4 * v267) ^ 0x1E5CB7AE;
  v271 = *(v258 + 4 * (BYTE2(v268) ^ 0x14u)) ^ 0xAAC2B906 ^ ((HIBYTE(v270) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v270) ^ 0xC5)));
  v272 = *(v259 + 4 * (BYTE1(v269) ^ 0x75u)) - 1634657487;
  v273 = v269 ^ 0xBD;
  v274 = v415 ^ *(v260 + 4 * v234) ^ 0x8E529ED1 ^ (v271 + v272 - 2 * (v271 & v272));
  v275 = v412 ^ *(v258 + 4 * (BYTE2(v269) ^ 0x27u)) ^ ((HIBYTE(v268) ^ 0xA2F4DA76) - 1147932396 + *(v257 + 4 * (HIBYTE(v268) ^ 0xED))) ^ *(v260 + 4 * v270) ^ (*(v259 + 4 * BYTE1(v234)) - 1634657487) ^ 0x84BAF5C9;
  v276 = v413 ^ *(v258 + 4 * BYTE2(v234)) ^ ((HIBYTE(v269) ^ 0xA2F4DA5B) - 1147932396 + *(v257 + 4 * (HIBYTE(v269) ^ 0xC0))) ^ (*(v259 + 4 * BYTE1(v270)) - 1634657487) ^ *(v260 + 4 * (v268 ^ 0x6Fu)) ^ 0x4549E6D2;
  v277 = v414 ^ *(v258 + 4 * BYTE2(v270)) ^ ((BYTE3(v234) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (BYTE3(v234) ^ 0xC5))) ^ (*(v259 + 4 * (BYTE1(v268) ^ 0x2Du)) - 1634657487) ^ *(v260 + 4 * v273) ^ 0x6E1F73C;
  v278 = v416 ^ *(v258 + 4 * BYTE2(v275)) ^ (*(v259 + 4 * BYTE1(v276)) - 1634657487) ^ *(v260 + 4 * ((v414 ^ *(v258 + 4 * BYTE2(v270)) ^ ((BYTE3(v234) ^ 0x5E) + 20 + *(v257 + 4 * (BYTE3(v234) ^ 0xC5))) ^ (*(v259 + 4 * (BYTE1(v268) ^ 0x2Du)) + 49) ^ *(v260 + 4 * v273)) ^ 0x3Cu)) ^ 0xAED73DA4 ^ ((HIBYTE(v274) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v274) ^ 0xC5)));
  v279 = *(v258 + 4 * BYTE2(v274)) ^ v418 ^ ((HIBYTE(v277) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v277) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v275)) - 1634657487) ^ *(v260 + 4 * v276);
  v280 = v422 ^ *(v258 + 4 * BYTE2(v276)) ^ ((HIBYTE(v275) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v275) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v277)) - 1634657487) ^ *(v260 + 4 * v274) ^ 0xF03A7FAD;
  v281 = v423 ^ *(v258 + 4 * BYTE2(v277)) ^ ((HIBYTE(v276) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v276) ^ 0xC5))) ^ *(v260 + 4 * v275) ^ (*(v259 + 4 * BYTE1(v274)) - 1634657487) ^ 0xE8BE5724;
  v282 = (HIBYTE(v280) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v280) ^ 0xC5));
  v283 = v279 ^ 0xDF91C87;
  v284 = *(v258 + 4 * BYTE2(v278)) ^ (*(v259 + 4 * BYTE1(v280)) - 1634657487) ^ *(v260 + 4 * v281) ^ ((HIBYTE(v283) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v283) ^ 0xC5))) ^ 0xC2BCAE86;
  v285 = v420 ^ *(v258 + 4 * BYTE2(v280)) ^ (*(v259 + 4 * BYTE1(v281)) - 1634657487) ^ ((HIBYTE(v278) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v278) ^ 0xC5))) ^ *(v260 + 4 * (v279 ^ 0x87u)) ^ 0x6C9BBAB5;
  v286 = ((*(v258 + 4 * BYTE2(v278)) ^ (*(v259 + 4 * BYTE1(v280)) + 6961) ^ *(v260 + 4 * v281) ^ ((HIBYTE(v283) ^ 0xDA5E) - 3820 + *(v257 + 4 * (HIBYTE(v283) ^ 0xC5)))) ^ 0xAE86) & 0x800;
  if ((((*(v258 + 4 * BYTE2(v278)) ^ (*(v259 + 4 * BYTE1(v280)) + 6961) ^ *(v260 + 4 * v281) ^ ((HIBYTE(v283) ^ 0xDA5E) - 3820 + *(v257 + 4 * (HIBYTE(v283) ^ 0xC5)))) ^ 0xAE86) & 0x800 & v156) != 0)
  {
    v286 = -v286;
  }

  v287 = v417 ^ *(v258 + 4 * BYTE2(v283)) ^ ((HIBYTE(v281) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v281) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v278)) - 1634657487) ^ *(v260 + 4 * v280) ^ 0xFCD3D7E9;
  v288 = v419 ^ *(v258 + 4 * BYTE2(v281)) ^ v282 ^ *(v260 + 4 * v278) ^ (*(v259 + 4 * (BYTE1(v279) ^ 0x7Du)) - 1634657487) ^ 0xDDE8F03B;
  v289 = v284 & 0xFFFFF7FF ^ 0x8ED7EF30 ^ (v286 + (v156 ^ 0xB59C3749));
  v290 = (HIBYTE(v289) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v289) ^ 0xC5));
  v291 = *(v259 + 4 * BYTE1(v288));
  v292 = (v291 ^ 0x44C92140) & (2 * (v291 & 0x80EDA555)) ^ v291 & 0x80EDA555;
  v293 = ((2 * (v291 ^ 0x451121EA)) ^ 0x8BF9097E) & (v291 ^ 0x451121EA) ^ (2 * (v291 ^ 0x451121EA)) & 0xC5FC84BE;
  v294 = (v293 ^ 0x1F8003C) & (4 * v292) ^ v292;
  v295 = ((4 * (v293 ^ 0x44048481)) ^ 0x17F212FC) & (v293 ^ 0x44048481) ^ (4 * (v293 ^ 0x44048481)) & 0xC5FC84BC;
  v296 = (v295 ^ 0x5F000B0) & (16 * v294) ^ v294;
  v297 = ((16 * (v295 ^ 0xC00C8403)) ^ 0x5FC84BF0) & (v295 ^ 0xC00C8403) ^ (16 * (v295 ^ 0xC00C8403)) & 0xC5FC84B0;
  v298 = v296 ^ 0xC5FC84BF ^ (v297 ^ 0x45C80000) & (v296 << 8);
  v299 = (((4 * ((v298 << 16) & 0x4D00000 ^ v298 ^ ((v298 << 16) ^ 0x4910000) & (((v297 ^ 0x8034840F) << 8) & 0x5FC0000 ^ (((v297 ^ 0x8034840F) << 8) ^ 0x3C840000) & (v297 ^ 0x8034840F) ^ 0x700000))) ^ (2 * v291)) & 0x3B46EBB8 ^ 0x404810) + (v291 ^ ((v291 ^ 0x565236DC) - 692087927) ^ ((v291 ^ 0x9B4EF863) + 463691064) ^ ((v291 ^ 0x64F16FEB) - 467875136) ^ ((v291 ^ 0xD6FFFBFF) + 1444044460) ^ 0x62B12F77);
  v300 = *(v258 + 4 * (BYTE2(v287) ^ 0x8Au)) ^ ((HIBYTE(v288) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v288) ^ 0xC5))) ^ *(v260 + 4 * v285) ^ v424 ^ (*(v259 + 4 * BYTE1(v289)) - 1634657487);
  v301 = v425 ^ *(v258 + 4 * BYTE2(v288)) ^ ((HIBYTE(v285) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v285) ^ 0xC5))) ^ (*(v259 + 4 * (BYTE1(v287) ^ 0x6Bu)) - 1634657487) ^ *(v260 + 4 * v289) ^ 0xF053C69E;
  v302 = v424 ^ v417 ^ *(v258 + 4 * BYTE2(v289)) ^ ((HIBYTE(v287) ^ 0xA2F4DA8C) - 1147932396 + *(v257 + 4 * (HIBYTE(v287) ^ 0x17))) ^ (*(v259 + 4 * BYTE1(v285)) - 1634657487) ^ *(v260 + 4 * v288) ^ 0x8AC08ED4;
  v303 = v426 ^ v290 ^ *(v258 + 4 * BYTE2(v285)) ^ *(v260 + 4 * (v287 ^ 0x51u)) ^ 0x33804075 ^ v299;
  v304 = v429 ^ ((HIBYTE(v301) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v301) ^ 0xC5))) ^ *(v258 + 4 * (BYTE2(v300) ^ 0xCEu)) ^ (*(v259 + 4 * BYTE1(v302)) - 1634657487) ^ 0xD05B950C ^ *(v260 + 4 * v303);
  v305 = *(v258 + 4 * BYTE2(v303)) ^ v442 ^ 0xB6165586 ^ ((HIBYTE(v302) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v302) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v301)) - 1634657487) ^ *(v260 + 4 * (v300 ^ 0xACu));
  v306 = *(v258 + 4 * BYTE2(v301)) ^ (*(v259 + 4 * (BYTE1(v300) ^ 0x85u)) - 1634657487) ^ *(v260 + 4 * v302) ^ v428 ^ (*(v257 + 4 * (HIBYTE(v303) ^ 0xC5)) + (HIBYTE(v303) ^ 0xA2F4DA5E) - 1147932396);
  v307 = v430 ^ *(v258 + 4 * BYTE2(v302)) ^ ((HIBYTE(v300) ^ 0xA2F4DA20) - 1147932396 + *(v257 + 4 * (HIBYTE(v300) ^ 0xBB))) ^ *(v260 + 4 * v301) ^ 0xAA58C12C ^ (*(v259 + 4 * BYTE1(v303)) - 1634657487);
  v308 = (HIBYTE(v305) ^ 0xA2F4DA9B) - 1147932396 + *(v257 + 4 * HIBYTE(v305));
  v309 = *(v258 + 4 * (BYTE2(v306) ^ 0x7Du)) ^ 0xAAC2B906;
  v310 = *(v258 + 4 * BYTE2(v307)) ^ v427 ^ ((HIBYTE(v304) ^ 0xA2F4DA24) - 1147932396 + *(v257 + 4 * (HIBYTE(v304) ^ 0xBF))) ^ (*(v259 + 4 * (BYTE1(v305) ^ 0x32u)) - 1634657487) ^ *(v260 + 4 * (v306 ^ 0x4Cu));
  v311 = *(v258 + 4 * (BYTE2(v305) ^ 0xC7u)) ^ v432 ^ ((HIBYTE(v307) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v307) ^ 0xC5))) ^ (*(v259 + 4 * (BYTE1(v306) ^ 0x85u)) - 1634657487) ^ *(v260 + 4 * (v304 ^ 0xD0u));
  v312 = *(v260 + 4 * v307) ^ v434 ^ (*(v259 + 4 * (BYTE1(v304) ^ 0xB7u)) - 1634657487) ^ (v309 + v308 - 2 * (v309 & v308));
  v313 = (*(v259 + 4 * BYTE1(v307)) - 1634657487) ^ *(v258 + 4 * (BYTE2(v304) ^ 0x2Fu)) ^ *(v260 + 4 * (v305 ^ 0xACu)) ^ (*(v257 + 4 * (HIBYTE(v306) ^ 0x22)) + (HIBYTE(v306) ^ 0xA2F4DAB9) - 1147932396);
  v314 = BYTE2(v311) ^ 0xD3;
  v397 = v175;
  v315 = *(&off_1010A0B50 + v175 - 19076) - 355897038;
  v316 = *(&off_1010A0B50 + (v175 ^ 0x421D)) - 644099435;
  v317 = *(&off_1010A0B50 + (v175 ^ 0x4866)) - 1779916030;
  v318 = *(&off_1010A0B50 + (v175 ^ 0x450A)) - 76025074;
  v319 = v313 ^ v437;
  v320 = v319 ^ 0x7B09788A;
  v321 = *&v318[4 * (v319 ^ 0xAA)] + (v319 ^ 0x6006DDC) - 497690126;
  v322 = *&v316[4 * (HIBYTE(v312) ^ 0xF9)] ^ HIBYTE(v312) ^ *&v315[4 * ((v319 ^ 0x7B09788Au) >> 16)];
  v323 = *&v317[4 * (BYTE1(v310) ^ 0x71)] ^ BYTE1(v310);
  v324 = (-(v323 ^ 0xFE0D6C38) ^ ((v322 ^ 0x6890C3E6) - (v323 ^ 0x969DAFDE ^ v322)) ^ ((v323 ^ 0xFE0D6C38) - ((2 * (v323 ^ 0xFE0D6C38)) & 0xBDC07A08) - 555729660) ^ 0xDEE03D04) + (v322 ^ 0x6890C3E6);
  v435 = v318;
  v325 = HIBYTE(v320) - 252;
  if (v320 >> 26 == 63)
  {
    v326 = 252;
  }

  else
  {
    v325 = HIBYTE(v320);
    v326 = 0;
  }

  if (v325)
  {
    v326 = HIBYTE(v320);
  }

  v327 = v443 ^ v432 ^ 0x65F3C8F ^ HIBYTE(v311) ^ v439 ^ 0x8734CBAE ^ *&v316[4 * (HIBYTE(v311) ^ 0x4A)] ^ *&v317[4 * (BYTE1(v320) ^ 0xEA)] ^ *&v315[4 * (BYTE2(v312) ^ 0xDE)] ^ BYTE1(v320) ^ ((v310 ^ 0x6006D44) - 497690126 + *&v318[4 * (v310 ^ 0x32)]) ^ 0x4AEFF1F2;
  v328 = v442 ^ v443 ^ 0x27309A92 ^ 0x1F29B081 ^ v439 ^ 0x8734CBAE;
  v329 = v328 ^ ((v311 ^ 0x6006D24) - 497690126 + *&v318[4 * (v311 ^ 0x52)]) ^ 0x366A8C1D ^ v324;
  v433 = v317;
  v330 = v328 ^ v437 ^ BYTE1(v311) ^ v326 ^ *&v315[4 * (BYTE2(v310) ^ 0x22)] ^ *&v317[4 * (BYTE1(v311) ^ 0x97)] ^ ((v312 ^ 0x6006DC1) - 497690126 + *&v318[4 * (v312 ^ 0xB7)]) ^ *&v316[4 * (v326 ^ 0x97)];
  v331 = v439 ^ v443 ^ HIBYTE(v310) ^ BYTE1(v312) ^ *&v316[4 * (HIBYTE(v310) ^ 0x29)] ^ *&v315[4 * v314] ^ v321 ^ *&v317[4 * (BYTE1(v312) ^ 0x97)];
  v332 = v331 ^ 0xC6D1A188 ^ v327;
  v333 = v332 ^ 0xD402E355 ^ v329;
  v334 = v327 ^ v330 ^ 0xBB5CE514 ^ v329;
  v335 = v332 ^ 0xC0F9FB7 ^ v330;
  v336 = v331 ^ 0xCD1DFBED;
  LODWORD(v337) = __ROR4__(*(v258 + 4 * BYTE2(v333)) ^ ((HIBYTE(v336) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v336) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v334)) - 1634657487) ^ *(v260 + 4 * v335) ^ 0xB2224B9F, 24);
  v338 = *(v258 + 4 * BYTE2(v334)) ^ (*(v259 + 4 * BYTE1(v335)) - 1634657487) ^ *(v260 + 4 * (v331 ^ 0xEDu)) ^ 0x406E4FED ^ (*(v257 + 4 * (HIBYTE(v333) ^ 0xC5)) + (HIBYTE(v333) ^ 0xA2F4DA5E) - 1147932396);
  v339 = *(v258 + 4 * BYTE2(v336)) ^ *(v260 + 4 * v334) ^ (*(v259 + 4 * BYTE1(v333)) - 1634657487) ^ ((HIBYTE(v335) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v335) ^ 0xC5))) ^ 0x5748D43E;
  v340 = *(v258 + 4 * BYTE2(v335)) ^ (*(v259 + 4 * BYTE1(v336)) - 1634657487) ^ *(v260 + 4 * v333) ^ 0x882AD8F5 ^ (*(v257 + 4 * (HIBYTE(v334) ^ 0xC5)) + (HIBYTE(v334) ^ 0xA2F4DA5E) - 1147932396);
  LODWORD(v337) = v337 ^ 0xDA5D88FA;
  HIDWORD(v337) = v337;
  v341 = v337 >> 8;
  v342 = (((v341 ^ 0x51B1CB8Bu) >> 24) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (((v341 ^ 0x51B1CB8Bu) >> 24) ^ 0xC5));
  v343 = *(v258 + 4 * BYTE2(v340)) ^ (*(v259 + 4 * BYTE1(v339)) - 1634657487) ^ ((HIBYTE(v338) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v338) ^ 0xC5))) ^ 0x33B9C184 ^ *(v260 + 4 * (BYTE1(v337) ^ 0xA2u));
  v344 = *(v258 + 4 * BYTE2(v339)) ^ ((HIBYTE(v340) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v340) ^ 0xC5))) ^ *(v260 + 4 * v338) ^ 0x2EC43A6B ^ (*(v259 + 4 * (((v337 >> 8) >> 8) ^ 0xAAu)) - 1634657487);
  v345 = *(v258 + 4 * (BYTE2(v341) ^ 0x3Cu)) ^ ((HIBYTE(v339) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v339) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v338)) - 1634657487) ^ *(v260 + 4 * v340) ^ 0x551EFC7E;
  v346 = *(v258 + 4 * BYTE2(v338)) ^ (*(v259 + 4 * BYTE1(v340)) - 1634657487) ^ *(v260 + 4 * v339) ^ 0xA6F1276A ^ v342;
  v347 = *(v258 + 4 * BYTE2(v344)) ^ (*(v259 + 4 * BYTE1(v345)) - 1634657487) ^ *(v260 + 4 * v346) ^ ((HIBYTE(v343) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v343) ^ 0xC5))) ^ 0xEAD52EB6;
  v348 = *(v258 + 4 * BYTE2(v345)) ^ ((HIBYTE(v344) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v344) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v346)) - 1634657487) ^ *(v260 + 4 * v343) ^ 0xD73E7BCF;
  v349 = *(v258 + 4 * BYTE2(v343)) ^ (*(v259 + 4 * BYTE1(v344)) - 1634657487) ^ *(v260 + 4 * v345) ^ ((HIBYTE(v346) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v346) ^ 0xC5))) ^ 0x90025567;
  v350 = *(v258 + 4 * BYTE2(v346)) ^ ((HIBYTE(v345) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v345) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v343)) - 1634657487) ^ *(v260 + 4 * v344) ^ 0xCE0BA419;
  LODWORD(v337) = __ROR4__(__ROR4__(v349, 2) ^ 0x772DDD68, 30);
  v351 = HIBYTE(v347);
  v352 = (HIBYTE(v350) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v350) ^ 0xC5));
  v353 = *(v258 + 4 * BYTE2(v348)) ^ (*(v259 + 4 * BYTE1(v350)) - 1634657487) ^ ((HIBYTE(v347) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v347) ^ 0xC5))) ^ 0x54EB6964 ^ *(v260 + 4 * (v337 ^ 0x7Fu));
  v354 = ((((v337 ^ 0x264CA77F) >> 24) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (((v337 ^ 0x264CA77F) >> 24) ^ 0xC5))) ^ *(v258 + 4 * BYTE2(v347)) ^ (*(v259 + 4 * BYTE1(v348)) - 1634657487) ^ *(v260 + 4 * v350);
  v355 = *(v258 + 4 * BYTE2(v350)) ^ *(v260 + 4 * v347) ^ ((HIBYTE(v348) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v348) ^ 0xC5))) ^ 0xC6A144D8 ^ (*(v259 + 4 * ((v337 ^ 0xA77F) >> 8)) - 1634657487);
  v356 = *(v258 + 4 * ((v337 ^ 0x264CA77F) >> 16)) ^ v352 ^ (*(v259 + 4 * BYTE1(v347)) - 1634657487) ^ *(v260 + 4 * v348) ^ 0x6992A07A;
  v357 = *(v258 + 4 * BYTE2(v355)) ^ (*(v259 + 4 * ((*(v258 + 4 * ((v337 ^ 0x264CA77F) >> 16)) ^ v352 ^ (*(v259 + 4 * BYTE1(v347)) + 6961) ^ *(v260 + 4 * v348) ^ 0xA07A) >> 8)) - 1634657487) ^ ((HIBYTE(v353) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v353) ^ 0xC5))) ^ *(v260 + 4 * (v354 ^ 0x1Bu));
  v358 = *(v258 + 4 * BYTE2(v356)) ^ ((HIBYTE(v355) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v355) ^ 0xC5))) ^ (*(v259 + 4 * ((v354 ^ 0x511B) >> 8)) - 1634657487) ^ *(v260 + 4 * v353);
  v359 = *(v258 + 4 * (BYTE2(v354) ^ 0x15u)) ^ ((HIBYTE(v356) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v356) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v353)) - 1634657487) ^ *(v260 + 4 * v355) ^ 0xA8071BBE;
  v360 = *(v258 + 4 * BYTE2(v353)) ^ (*(v259 + 4 * BYTE1(v355)) - 1634657487) ^ *(v260 + 4 * v356) ^ 0x9237ACE5 ^ ((((v354 ^ 0xE898511B) >> 24) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (((v354 ^ 0xE898511B) >> 24) ^ 0xC5)));
  LOBYTE(v356) = *(v258 + 4 * BYTE2(v356)) ^ ((HIBYTE(v355) ^ 0x5E) + 20 + *(v257 + 4 * (HIBYTE(v355) ^ 0xC5))) ^ (*(v259 + 4 * ((v354 ^ 0x511B) >> 8)) + 49) ^ *(v260 + 4 * v353) ^ 0xB1;
  v361 = (((v358 ^ 0x415FA5B1) >> 24) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (((v358 ^ 0x415FA5B1) >> 24) ^ 0xC5));
  v362 = BYTE1(v358) ^ 0xC4;
  v363 = *(v258 + 4 * ((v358 ^ 0x415FA5B1) >> 16)) ^ ((((v357 ^ 0x1C8F6DEF) >> 24) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (((v357 ^ 0x1C8F6DEF) >> 24) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v359)) - 1634657487) ^ *(v260 + 4 * v360) ^ 0xAC6F222B;
  v364 = *(v258 + 4 * BYTE2(v359)) ^ (*(v259 + 4 * BYTE1(v360)) - 1634657487) ^ *(v260 + 4 * (v357 ^ 0xEFu)) ^ v361 ^ 0x9D16C3A9;
  v365 = *(v258 + 4 * BYTE2(v360)) ^ ((HIBYTE(v359) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v359) ^ 0xC5))) ^ *(v260 + 4 * v356) ^ (*(v259 + 4 * (BYTE1(v357) ^ 0xCu)) - 1634657487) ^ 0x2D9868D9;
  v366 = *(v258 + 4 * ((v357 ^ 0x1C8F6DEF) >> 16)) ^ ((HIBYTE(v360) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v360) ^ 0xC5))) ^ (*(v259 + 4 * v362) - 1634657487) ^ *(v260 + 4 * v359) ^ 0x82CE306A;
  v367 = *(v258 + 4 * BYTE2(v364)) ^ ((HIBYTE(v363) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v363) ^ 0xC5))) ^ (*(v259 + 4 * BYTE1(v365)) - 1634657487) ^ *(v260 + 4 * v366) ^ 0xA17EEB26;
  v368 = ((HIBYTE(v365) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v365) ^ 0xC5))) ^ *(v258 + 4 * BYTE2(v366)) ^ (*(v259 + 4 * BYTE1(v363)) - 1634657487) ^ *(v260 + 4 * v364) ^ 0xC014C039;
  v369 = *(v258 + 4 * BYTE2(v365)) ^ (*(v259 + 4 * BYTE1(v366)) - 1634657487) ^ ((HIBYTE(v364) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v364) ^ 0xC5))) ^ *(v260 + 4 * v363) ^ 0xF7BCD53D;
  v370 = *(v258 + 4 * BYTE2(v363)) ^ (*(v259 + 4 * BYTE1(v364)) - 1634657487) ^ ((HIBYTE(v366) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v366) ^ 0xC5))) ^ *(v260 + 4 * v365) ^ 0xE2A02C55;
  v371 = *(v258 + 4 * BYTE2(v370)) ^ (*(v259 + 4 * BYTE1(v367)) - 1634657487) ^ ((HIBYTE(v368) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v368) ^ 0xC5))) ^ *(v260 + 4 * v369);
  v372 = ((HIBYTE(v367) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v367) ^ 0xC5))) ^ *(v258 + 4 * BYTE2(v369)) ^ (*(v259 + 4 * BYTE1(v368)) - 1634657487) ^ *(v260 + 4 * v370) ^ 0x70F55090;
  v373 = *(v258 + 4 * BYTE2(v368)) ^ (*(v259 + 4 * BYTE1(v370)) - 1634657487) ^ ((HIBYTE(v369) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v369) ^ 0xC5))) ^ *(v260 + 4 * v367) ^ 0xF7C2D6A6;
  v374 = ((HIBYTE(v370) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v370) ^ 0xC5))) ^ *(v258 + 4 * BYTE2(v367)) ^ (*(v259 + 4 * BYTE1(v369)) - 1634657487) ^ *(v260 + 4 * v368) ^ 0x86F2AD81;
  v375 = v371 ^ 0xA9E69D0D;
  v376 = *(v258 + 4 * BYTE2(v373)) ^ ((HIBYTE(v372) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v372) ^ 0xC5))) ^ (*(v259 + 4 * ((v371 ^ 0x9D0D) >> 8)) - 1634657487) ^ *(v260 + 4 * v374);
  v377 = *(v258 + 4 * (BYTE2(v371) ^ 0x6Bu)) ^ (*(v259 + 4 * BYTE1(v374)) - 1634657487) ^ ((HIBYTE(v373) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v373) ^ 0xC5))) ^ *(v260 + 4 * v372);
  v378 = *(v258 + 4 * BYTE2(v374)) ^ (*(v259 + 4 * BYTE1(v372)) - 1634657487) ^ ((HIBYTE(v375) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v375) ^ 0xC5)));
  v379 = *(v260 + 4 * v373);
  v380 = *(v258 + 4 * BYTE2(v372)) ^ (*(v259 + 4 * BYTE1(v373)) - 1634657487) ^ ((HIBYTE(v374) ^ 0xA2F4DA5E) - 1147932396 + *(v257 + 4 * (HIBYTE(v374) ^ 0xC5))) ^ *(v260 + 4 * v375);
  v381 = ((v378 ^ ~v379) >> 24) ^ BYTE1(v376) ^ *&v316[4 * (((v378 ^ ~v379) >> 24) ^ 0x97)] ^ *&v315[4 * (BYTE2(v380) ^ 0xBC)] ^ *&v433[4 * (BYTE1(v376) ^ 0x55)] ^ ((v377 ^ 0x6006DD7) - 497690126 + *&v318[4 * (v377 ^ 0xA1)]);
  v382 = BYTE1(v377) ^ HIBYTE(v380) ^ *&v315[4 * (BYTE2(v376) ^ 0xBE)] ^ *&v316[4 * (HIBYTE(v380) ^ 0x43)] ^ *&v433[4 * (BYTE1(v377) ^ 0x55)] ^ (((v378 ^ v379) ^ 0x6006D22) - 497690126 + *&v318[4 * ((v378 ^ v379) ^ 0x54)]) ^ 0x1F2C8886;
  v383 = HIBYTE(v377) ^ BYTE1(v380) ^ *&v316[4 * (HIBYTE(v377) ^ 0x55)] ^ *&v315[4 * (((v378 ^ v379) >> 16) ^ 0x7C)] ^ *&v433[4 * (BYTE1(v380) ^ 0x35)] ^ ((v376 ^ 0x6006DFD) - 497690126 + *&v318[4 * (v376 ^ 0x8B)]) ^ 0x66C1345B;
  v384 = ((v378 ^ v379) >> 8) ^ HIBYTE(v376) ^ *&v316[4 * (HIBYTE(v376) ^ 0xE2)] ^ *&v315[4 * (BYTE2(v377) ^ 0xFB)] ^ *&v433[4 * (((v378 ^ v379) >> 8) ^ 0x44)] ^ (*&v435[4 * (v380 ^ 0x66)] + (v380 ^ 0x6006D10) - 497690126) ^ v383 ^ v381;
  v385 = v381 ^ v443 ^ 0x81D1FCDB;
  v386 = v385 ^ v383;
  v387 = v384 ^ 0x17171C3F;
  v388 = v385 ^ v382 ^ v384;
  v389 = *(&off_1010A0B50 + (v397 ^ 0x4D5D)) - 624117291;
  v390 = v384 ^ 0x17171C3F ^ v443 ^ 0x27309A92;
  v444[4] = BYTE2(v388) ^ 0x40 ^ ((BYTE2(v388) ^ 0x40) - 4) ^ v389[BYTE2(v388) ^ 0x5ELL] ^ 8;
  v444[10] = BYTE2(v390) ^ 0xCC ^ ((BYTE2(v390) ^ 0xCC) - 4) ^ v389[BYTE2(v390) ^ 0xD2] ^ 8;
  v391 = *(&off_1010A0B50 + (v397 ^ 0x5BA6)) - 900064702;
  v444[6] = v391[HIBYTE(v388) ^ 0x7DLL] ^ HIBYTE(v388) ^ 0xEF;
  v392 = *(&off_1010A0B50 + (v397 ^ 0x4E3E)) - 963603558;
  v444[8] = v388 ^ 0xAC ^ v392[v388 ^ 0x44];
  v393 = v382 ^ v386;
  v394 = v386 ^ v387;
  v444[3] = v390 ^ 0x2E ^ v392[v390 ^ 0xC6];
  v395 = *(&off_1010A0B50 + (v397 ^ 0x4FE7)) - 113122167;
  v444[1] = v395[BYTE1(v394) ^ 0x1FLL] ^ 0x33;
  v444[13] = HIBYTE(v393) ^ v391[HIBYTE(v393) ^ 0x82] ^ 0x10;
  *v444 = v395[BYTE1(v388) ^ 0xECLL] ^ 0x33;
  v444[15] = ((BYTE2(v393) ^ 0x65) - 4) ^ BYTE2(v393) ^ 0x65 ^ v389[BYTE2(v393) ^ 0x7BLL] ^ 8;
  v444[7] = v394 ^ v392[v394 ^ 0xD4] ^ 0x3C;
  v444[2] = HIBYTE(v394) ^ v391[HIBYTE(v394) ^ 0x83] ^ 0x11;
  v444[12] = HIBYTE(v390) ^ 0x84 ^ v391[HIBYTE(v390) ^ 0x16];
  v444[9] = v392[v393 ^ 0xE8] ^ v393;
  v444[11] = BYTE2(v394) ^ ((BYTE2(v394) ^ 0x1C) - 4) ^ 0x14 ^ v389[BYTE2(v394) ^ 2];
  v444[5] = v395[(((((v393 ^ 0x20D92A8E) >> (v351 & 8)) - ((2 * ((v393 ^ 0x20D92A8E) >> (v351 & 8))) & 0x94550826) - 903183341) ^ 0xCA2A8413) >> (v351 & 8 ^ 8)) ^ 0x51] ^ 0x33;
  v444[14] = v395[BYTE1(v390) ^ 0xC3] ^ 0x33;
  return (*(v445 + 8 * v397))(a1);
}

uint64_t sub_10026B40C()
{
  LODWORD(STACK[0x4CC]) = v1;
  LODWORD(STACK[0x4C0]) = v0;
  LODWORD(STACK[0x3CC]) = 0;
  v2 = (v1 - 10060) | 0x412;
  v3 = v0;
  v4 = STACK[0x3C0];
  v5 = STACK[0x3C0] + v0;
  v6 = *v5;
  v7 = *(&off_1010A0B50 + (v1 ^ 0x4A73));
  STACK[0x440] = v7;
  v8 = v0 | 9;
  STACK[0x450] = v8;
  v9 = *(v7 - 231415367);
  STACK[0x428] = v9;
  v10 = *(&off_1010A0B50 + (v1 ^ 0x5112));
  STACK[0x438] = v10;
  v11 = (v4 + v8);
  v12 = *(v10 - 1680276466);
  STACK[0x420] = v12;
  v13 = *(v12 + (v9 & 0x2D783910));
  LODWORD(v10) = *v11;
  LODWORD(STACK[0x3D4]) = v2;
  v14 = ((1864610357 * ((v13 ^ v11) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v11) & 0x7FFFFFFF)) >> 16)) * (v2 ^ 0x6F238507);
  v15 = *(&off_1010A0B50 + v1 - 22054) - 1090952426;
  v16 = *(&off_1010A0B50 + v1 - 20959) - 1872431723;
  v17 = *(&off_1010A0B50 + v1 - 18343) - 1897877107;
  LODWORD(STACK[0x3E4]) = v10 ^ v15[v14 >> 24] ^ v16[(v14 >> 24) + 2] ^ v17[v14 >> 24] ^ v14 ^ (99 * (v14 >> 24));
  STACK[0x4A0] = v3 | 4;
  v18 = (v4 + (v3 | 4));
  v19 = 1864610357 * ((1864610357 * ((v13 ^ v18) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v18) & 0x7FFFFFFF)) >> 16));
  LODWORD(STACK[0x3E0]) = v19 ^ *v18 ^ (99 * (v19 >> 24)) ^ v15[v19 >> 24] ^ v16[(v19 >> 24) + 2] ^ v17[v19 >> 24];
  STACK[0x478] = v3 | 0xD;
  STACK[0x468] = v3 | 0xC;
  v20 = v3;
  v21 = (v4 + (v3 | 0xD));
  LOBYTE(v18) = *v21;
  v22 = 1864610357 * ((1864610357 * ((v13 ^ v5) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v5) & 0x7FFFFFFF)) >> 16));
  v23 = v6 ^ v22 ^ (99 * BYTE3(v22)) ^ v15[v22 >> 24] ^ v16[(v22 >> 24) + 2] ^ v17[v22 >> 24];
  STACK[0x498] = v3 | 1;
  v24 = (v4 + (v3 | 1));
  LOBYTE(v5) = *v24;
  v25 = 1864610357 * ((1864610357 * ((v13 ^ v24) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v24) & 0x7FFFFFFF)) >> 16));
  v26 = (v4 + (v3 | 0xC));
  v27 = *v26;
  v28 = STACK[0x348];
  v29 = STACK[0x370];
  LODWORD(v25) = *(STACK[0x370] + 4 * (v5 ^ v15[v25 >> 24] ^ v16[(v25 >> 24) + 2] ^ v17[v25 >> 24] ^ v25 ^ (99 * BYTE3(v25)) ^ 0xEB));
  v30 = 1864610357 * ((1864610357 * ((v13 ^ v26) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v26) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v26) = v15[v30 >> 24];
  LODWORD(STACK[0x408]) = *(STACK[0x348] + 4 * (v23 ^ 0x55u)) ^ v25;
  v31 = 1864610357 * ((1864610357 * ((v13 ^ v21) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v21) & 0x7FFFFFFF)) >> 16));
  v32 = v27 ^ v26 ^ v16[(v30 >> 24) + 2] ^ v17[v30 >> 24] ^ v30 ^ (99 * BYTE3(v30));
  LOBYTE(v31) = v18 ^ v15[v31 >> 24] ^ v16[(v31 >> 24) + 2] ^ v17[v31 >> 24] ^ v31 ^ (99 * BYTE3(v31)) ^ 0xA;
  STACK[0x418] = v20 | 0xE;
  v33 = (v4 + (v20 | 0xE));
  LOBYTE(v25) = *v33;
  v34 = 1864610357 * ((1864610357 * ((v13 ^ v33) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v33) & 0x7FFFFFFF)) >> 16));
  v35 = v34 ^ v25 ^ (99 * BYTE3(v34)) ^ v15[v34 >> 24] ^ v16[(v34 >> 24) + 2] ^ v17[v34 >> 24];
  STACK[0x460] = v20 | 0xA;
  v36 = (v4 + (v20 | 0xA));
  LOBYTE(v25) = *v36;
  v37 = 1864610357 * ((1864610357 * ((v13 ^ v36) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v36) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v37) = v25 ^ v37 ^ v15[v37 >> 24] ^ v16[(v37 >> 24) + 2] ^ v17[v37 >> 24] ^ (99 * BYTE3(v37)) ^ 0x51;
  STACK[0x430] = v20 | 0xF;
  v38 = (v4 + (v20 | 0xF));
  LOBYTE(v30) = *v38;
  v39 = 1864610357 * ((1864610357 * ((v13 ^ v38) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v38) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v39) = (99 * BYTE3(v39)) ^ v39 ^ v30 ^ v15[v39 >> 24] ^ v16[(v39 >> 24) + 2] ^ v17[v39 >> 24];
  STACK[0x470] = v20 | 5;
  v40 = (v4 + (v20 | 5));
  v41 = *v40;
  v42 = 1864610357 * ((1864610357 * ((v13 ^ v40) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v40) & 0x7FFFFFFF)) >> 16));
  STACK[0x3D8] = v41 ^ v15[v42 >> 24] ^ v16[(v42 >> 24) + 2] ^ v17[v42 >> 24] ^ v42 ^ (99 * (v42 >> 24)) ^ 0xBC;
  v43 = STACK[0x358];
  LODWORD(v42) = (v39 ^ 0x6C62E04C) + (v39 ^ 0x50) + *(STACK[0x358] + 4 * (v39 ^ 0xA6u));
  v44 = STACK[0x368];
  v45 = *(STACK[0x368] + 4 * (v37 ^ 0x1Eu)) + ((v37 - 191835097) ^ v37);
  STACK[0x458] = v20 | 6;
  v46 = (v4 + (v20 | 6));
  v47 = *v46;
  v48 = 1864610357 * ((1864610357 * ((v13 ^ v46) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v46) & 0x7FFFFFFF)) >> 16));
  v49 = v47 ^ v15[v48 >> 24] ^ v16[(v48 >> 24) + 2] ^ v48 ^ v17[v48 >> 24] ^ (99 * (v48 >> 24));
  STACK[0x3F0] = v20 | 0xB;
  v50 = (v4 + (v20 | 0xB));
  LOBYTE(v47) = *v50;
  v51 = 1864610357 * ((1864610357 * ((v13 ^ v50) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v50) & 0x7FFFFFFF)) >> 16));
  LOBYTE(v51) = v47 ^ v51 ^ (99 * BYTE3(v51)) ^ v15[v51 >> 24] ^ v16[(v51 >> 24) + 2] ^ v17[v51 >> 24];
  STACK[0x410] = v20 | 3;
  v52 = (v4 + (v20 | 3));
  LODWORD(v26) = *v52;
  v53 = 1864610357 * ((1864610357 * ((v13 ^ v52) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v52) & 0x7FFFFFFF)) >> 16));
  v54 = v26 ^ v15[v53 >> 24] ^ v16[(v53 >> 24) + 2] ^ v17[v53 >> 24] ^ v53 ^ (99 * (v53 >> 24)) ^ 0x73;
  v55 = *(v28 + 4 * (v32 ^ 0xC7u)) ^ *(v29 + 4 * v31) ^ 0x4F50122C;
  v56 = v35 ^ 0xD5u;
  v57 = STACK[0x380];
  LODWORD(v56) = *(STACK[0x380] + 4 * v56) - 1258127731;
  v58 = v55 ^ (v55 >> 6) ^ (v55 >> 2) ^ v56 ^ (v56 >> 1) & 0x31E20C34 ^ (v42 + 1);
  v59 = (v51 ^ 0x6C62E07D) + (v51 ^ 0x61) + *(v43 + 4 * (v51 ^ 0x97u));
  LODWORD(STACK[0x44C]) = LODWORD(STACK[0x4B8]) < 0x557C7BBE;
  v60 = v54 + 1295287124;
  if ((v54 & 2) != 0)
  {
    v60 &= ~2u;
  }

  STACK[0x400] = v20 | 2;
  v61 = (v4 + (v20 | 2));
  v62 = *v61;
  v63 = 1864610357 * ((1864610357 * ((v13 ^ v61) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v61) & 0x7FFFFFFF)) >> 16));
  LODWORD(v63) = (v63 ^ v62 ^ v15[v63 >> 24] ^ v16[(v63 >> 24) + 2] ^ (99 * BYTE3(v63)) ^ v17[v63 >> 24]);
  v64 = STACK[0x350];
  v65 = LODWORD(STACK[0x408]) ^ 0x4F50122C ^ ((LODWORD(STACK[0x408]) ^ 0x4F50122Cu) >> 6) ^ ((LODWORD(STACK[0x408]) ^ 0x4F50122Cu) >> 2) ^ *(STACK[0x350] + 4 * (v54 ^ 0xF2u)) ^ v54 & 0xFD ^ v60 ^ (((v63 - 191835097) ^ v63) + *(v44 + 4 * (v63 ^ 0x1E)));
  STACK[0x408] = v20 | 8;
  STACK[0x3F8] = v20;
  v66 = (v4 + (v20 | 8));
  v67 = *v66;
  v68 = 1864610357 * ((1864610357 * ((v13 ^ v66) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ v66) & 0x7FFFFFFF)) >> 16));
  v69 = STACK[0x4CC];
  v70 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x5D0D)) - 716965111;
  v71 = *(&off_1010A0B50 + LODWORD(STACK[0x4CC]) - 19695) - 1615470075;
  v72 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x5474)) - 637639814;
  LOBYTE(v68) = v67 ^ v70[v68 >> 24] ^ v71[v68 >> 24] ^ v72[v68 >> 24] ^ v68 ^ (-99 * BYTE3(v68)) ^ 5;
  STACK[0x3E8] = v20 | 7;
  v73 = 1864610357 * ((1864610357 * ((v13 ^ (v4 + (v20 | 7))) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ (v4 + (v20 | 7))) & 0x7FFFFFFF)) >> 16));
  v74 = v73 ^ *(v4 + (v20 | 7)) ^ (-99 * BYTE3(v73)) ^ v70[v73 >> 24] ^ v71[v73 >> 24] ^ v72[v73 >> 24];
  LODWORD(v73) = *(v29 + 4 * (LODWORD(STACK[0x3E4]) ^ 0x1Fu)) ^ 0x9FC51FEC;
  v75 = v45 ^ (v59 + 1);
  v76 = *(v28 + 4 * v68) ^ 0xD0950DC0;
  v77 = v73 ^ (v73 >> 6) ^ (v73 >> 2) ^ v75 ^ v76 ^ (v76 >> 2) ^ (v76 >> 6);
  v78 = *(v57 + 4 * (v49 ^ 0x88u)) - 1258127731;
  v79 = *(STACK[0x360] + 4 * STACK[0x3D8]) ^ *(STACK[0x378] + 4 * (LODWORD(STACK[0x3E0]) ^ 0xDu)) ^ v78 ^ *(v64 + 4 * (v74 ^ 0x4Eu)) ^ (v78 >> 1) & 0x31E20C34 ^ v74 ^ 0xBC ^ ((v74 ^ 0xBC) + 1295287124);
  v80 = *(&off_1010A0B50 + (v69 ^ 0x5674)) - 1013558918;
  v81 = STACK[0x340];
  LODWORD(STACK[0x3E4]) = v58;
  v82 = v81 ^ v58;
  LODWORD(v71) = ((v81 ^ v58) >> 16) + 261541641 + *&v80[4 * (((v81 ^ v58) >> 16) ^ 0xBA)];
  v83 = STACK[0x344];
  LODWORD(STACK[0x3E0]) = v65;
  v84 = v83 ^ v65;
  v85 = ((v83 ^ v65) >> 16) + 261541641 + *&v80[4 * (((v83 ^ v65) >> 16) ^ 0xBA)];
  LODWORD(v68) = STACK[0x33C];
  LODWORD(STACK[0x3D0]) = v79;
  LODWORD(v70) = v68 ^ v79;
  v86 = ((v68 ^ v79) >> 16) + 261541641 + *&v80[4 * (((v68 ^ v79) >> 16) ^ 0xBA)];
  v87 = *(&off_1010A0B50 + (v69 ^ 0x4B84)) - 1934309942;
  LODWORD(v71) = LODWORD(STACK[0x334]) ^ HIBYTE(v84) ^ (HIBYTE(v84) + 1230085932) ^ *&v87[4 * (HIBYTE(v84) ^ 0xA0)] ^ v71;
  v88 = *(&off_1010A0B50 + (v69 ^ 0x553C)) - 207237518;
  v89 = *&v88[4 * (v68 ^ v79)] + 1374970643;
  LODWORD(v68) = STACK[0x338];
  LODWORD(STACK[0x3D8]) = v77;
  LODWORD(v68) = v68 ^ v77;
  LODWORD(v71) = v71 ^ BYTE1(v68) ^ v89 ^ *(*(&off_1010A0B50 + (v69 & 0x7BA104BB)) + 4 * (BYTE1(v68) ^ 0x7Fu) - 438753782);
  v90 = *(&off_1010A0B50 + v69 - 22698) - 1731560334;
  v91 = *&v90[4 * BYTE1(v82)] ^ 0x261D9EC1;
  LODWORD(v73) = LODWORD(STACK[0x398]) ^ (v70 >> 24) ^ ((v70 >> 24) + 1230085932) ^ *&v87[4 * ((v70 >> 24) ^ 0xA0)] ^ v91 ^ (v91 >> 3) ^ (v91 >> 7) ^ v85 ^ (*&v88[4 * (v68 ^ 0x71)] + 1374970643) ^ 0xDBD88B0C;
  v92 = *(&off_1010A0B50 + (v69 ^ 0x5D4A)) - 1892745994;
  v93 = *&v92[4 * v82] ^ 0x936BC36C;
  v94 = LODWORD(STACK[0x330]) ^ BYTE3(v68) ^ (BYTE3(v68) + 1230085932) ^ v93 ^ (v93 >> 1) & 0x19BD9792 ^ v86 ^ *&v87[4 * (BYTE3(v68) ^ 0xA0)];
  v95 = *&v90[4 * BYTE1(v84)] ^ 0x261D9EC1;
  v96 = v94 ^ v95 ^ (v95 >> 3) ^ (v95 >> 7);
  v97 = *(&off_1010A0B50 + v69 - 22452) - 359760614;
  v98 = *(&off_1010A0B50 + (v69 ^ 0x5142)) - 799489730;
  LODWORD(v68) = 1373700909 * *&v98[4 * BYTE2(v68)];
  LODWORD(v68) = LODWORD(STACK[0x32C]) ^ (*&v97[4 * HIBYTE(v82)] + 1215824596) ^ v68 ^ (v68 >> 3) ^ (v68 >> 7);
  v99 = *&v90[4 * BYTE1(v70)] ^ 0x261D9EC1;
  v100 = *&v92[4 * v84] ^ 0x936BC36C;
  v101 = v68 ^ v99 ^ (v99 >> 3) ^ (v99 >> 7) ^ v100 ^ (v100 >> 1) & 0x19BD9792 ^ 0x5D642603;
  v102 = v71 ^ 0x807C52ED;
  v103 = ((v71 ^ 0x807C52ED) >> 16) + 261541641 + *&v80[4 * (((v71 ^ 0x807C52ED) >> 16) ^ 0xBA)];
  LODWORD(v68) = v96 ^ 0xCEF4CAB4;
  LODWORD(v71) = ((v96 ^ 0xCEF4CAB4) >> 16) + 261541641 + *&v80[4 * (((v96 ^ 0xCEF4CAB4) >> 16) ^ 0xBA)];
  v104 = *&v90[4 * BYTE1(v101)] ^ 0x261D9EC1;
  v105 = LODWORD(STACK[0x320]) ^ (*&v97[4 * BYTE3(v73)] + 1215824596) ^ v103 ^ v104 ^ (v104 >> 3) ^ (v104 >> 7) ^ (*&v88[4 * (v96 ^ 0xC5)] + 1374970643) ^ 0xFC7A4C0A;
  v106 = *&v90[4 * ((v96 ^ 0xCAB4) >> 8)] ^ 0x261D9EC1;
  v107 = 1373700909 * *&v98[4 * BYTE2(v101)];
  v108 = LODWORD(STACK[0x31C]) ^ HIBYTE(v102) ^ (HIBYTE(v102) + 1230085932) ^ v106 ^ (v106 >> 3) ^ (v106 >> 7) ^ *&v87[4 * (HIBYTE(v102) ^ 0xA0)] ^ v107 ^ (v107 >> 3) ^ (v107 >> 7);
  v109 = *&v92[4 * (v73 ^ 0xEE)] ^ 0x936BC36C;
  v110 = v108 ^ v109 ^ (v109 >> 1) & 0x19BD9792 ^ 0x3FAB4CF8;
  v111 = *(&off_1010A0B50 + (v69 & 0x7BA104BB)) - 438753782;
  LODWORD(v70) = *&v92[4 * v101] ^ 0x936BC36C;
  LODWORD(v70) = LODWORD(STACK[0x318]) ^ BYTE1(v102) ^ BYTE3(v68) ^ (BYTE3(v68) + 1230085932) ^ *&v111[4 * (BYTE1(v102) ^ 0x7F)] ^ (BYTE2(v73) + 261541641 + *&v80[4 * (BYTE2(v73) ^ 0xBA)]) ^ *&v87[4 * (BYTE3(v68) ^ 0xA0)] ^ v70 ^ 0x39097648 ^ (v70 >> 1) & 0x19BD9792;
  v112 = LODWORD(STACK[0x314]) ^ BYTE1(v73) ^ v71 ^ *&v111[4 * (BYTE1(v73) ^ 0x7F)];
  LODWORD(v71) = *&v92[4 * v102] ^ 0x936BC36C;
  v113 = v112 ^ v71 ^ (v71 >> 1) & 0x19BD9792 ^ 0x50AB9FD8 ^ (*&v97[4 * HIBYTE(v101)] + 1215824596);
  v114 = *&v90[4 * (BYTE1(v70) ^ 0x84)] ^ 0x261D9EC1;
  v115 = LODWORD(STACK[0x310]) ^ HIBYTE(v110) ^ (HIBYTE(v110) + 1230085932) ^ v114 ^ *&v87[4 * (HIBYTE(v110) ^ 0xA0)] ^ (v114 >> 3) ^ (v114 >> 7) ^ (*&v88[4 * v105] + 1374970643) ^ (*&v80[4 * (BYTE2(v113) ^ 0xBA)] + BYTE2(v113) + 261541641) ^ 0x74819244;
  LODWORD(v71) = *&v90[4 * BYTE1(v110)] ^ 0x261D9EC1;
  LODWORD(v68) = LODWORD(STACK[0x30C]) ^ (v70 >> 24) ^ ((v70 >> 24) + 1230085932) ^ *&v87[4 * ((v70 >> 24) ^ 0xA0)] ^ (BYTE2(v105) + 261541641 + *&v80[4 * (BYTE2(v105) ^ 0xBA)]) ^ v71 ^ (v71 >> 3) ^ (v71 >> 7);
  LODWORD(v71) = *&v92[4 * v113] ^ 0x936BC36C;
  v116 = v68 ^ v71 ^ (v71 >> 1) & 0x19BD9792 ^ 0xC3B2892D;
  LODWORD(v71) = 1373700909 * *&v98[4 * BYTE2(v110)];
  LODWORD(v68) = LODWORD(STACK[0x308]) ^ (*&v97[4 * HIBYTE(v105)] + 1215824596) ^ v71 ^ (v71 >> 3) ^ (v71 >> 7);
  LODWORD(v71) = *&v90[4 * BYTE1(v113)] ^ 0x261D9EC1;
  v117 = v68 ^ v71 ^ (v71 >> 3) ^ (v71 >> 7) ^ (*&v88[4 * (v70 ^ 0x71)] + 1374970643) ^ 0x8DB2EC89;
  v118 = *&v90[4 * BYTE1(v105)] ^ 0x261D9EC1;
  LODWORD(v68) = 1373700909 * *&v98[4 * (BYTE2(v70) ^ 0x20)];
  v119 = LODWORD(STACK[0x304]) ^ (*&v97[4 * HIBYTE(v113)] + 1215824596) ^ v118 ^ (v118 >> 3) ^ (v118 >> 7) ^ v68 ^ (v68 >> 3) ^ (v68 >> 7) ^ (*&v88[4 * v110] + 1374970643) ^ 0xD1943906;
  v120 = BYTE1(v116);
  LODWORD(v70) = LODWORD(STACK[0x300]) ^ (*&v97[4 * HIBYTE(v115)] + 1215824596) ^ *&v111[4 * (BYTE1(v116) ^ 0x7F)] ^ (*&v80[4 * (BYTE2(v119) ^ 0xBA)] + BYTE2(v119) + 261541641) ^ (*&v88[4 * v117] + 1374970643);
  LODWORD(v68) = *&v90[4 * BYTE1(v119)] ^ 0x261D9EC1;
  LODWORD(v71) = LODWORD(STACK[0x38C]) ^ (BYTE2(v115) + 261541641 + *&v80[4 * (BYTE2(v115) ^ 0xBA)]) ^ 0xB47C33E3 ^ (*&v97[4 * HIBYTE(v117)] + 1215824596);
  LODWORD(v71) = v71 + (v68 ^ (v68 >> 7) ^ (v68 >> 3)) - 2 * (v71 & (v68 ^ (v68 >> 7) ^ (v68 >> 3)));
  HIDWORD(v121) = (-1275068416 * *&v98[4 * BYTE2(v117)]) | ((1373700909 * *&v98[4 * BYTE2(v117)]) >> 6);
  LODWORD(v121) = HIDWORD(v121);
  v122 = BYTE1(v115) ^ 0xBCDB3A12 ^ *&v111[4 * (BYTE1(v115) ^ 0x7F)];
  LODWORD(v68) = LODWORD(STACK[0x2FC]) ^ HIBYTE(v116) ^ (HIBYTE(v116) + 1230085932) ^ *&v87[4 * (HIBYTE(v116) ^ 0xA0)] ^ (v121 >> 26) ^ ((v121 >> 26) >> 3) ^ ((v121 >> 26) >> 7) ^ 0x87A99C78;
  HIDWORD(v121) = v68 & v122;
  LODWORD(v121) = v68 & v122;
  HIDWORD(v121) = (v121 >> 28) & 0xFFFFFFF7;
  LODWORD(v121) = 16 * (v68 & v122);
  HIDWORD(v121) = v121 >> 23;
  LODWORD(v121) = HIDWORD(v121);
  v123 = BYTE2(v116) + 261541641 + *&v80[4 * (BYTE2(v116) ^ 0xBA)];
  v124 = *&v92[4 * v119] ^ (*&v92[4 * v119] >> 1) & 0x19BD9792 ^ 0x2A12E5F5 ^ (v68 + v122 - (v121 >> 12));
  v125 = (*&v88[4 * (v116 ^ 0x71)] + 1374970643) ^ 0xC306E484 ^ v71;
  LODWORD(v68) = *&v90[4 * BYTE1(v117)] ^ 0x261D9EC1;
  v126 = LODWORD(STACK[0x2F8]) ^ v123 ^ (*&v97[4 * HIBYTE(v119)] + 1215824596) ^ v68 ^ (v68 >> 3) ^ (v68 >> 7);
  LODWORD(v68) = LODWORD(STACK[0x3AC]) ^ v120 ^ 0x8BD3F6C8;
  v127 = *&v88[4 * v115];
  LOWORD(v115) = v68 ^ v70;
  v128 = v126 ^ (v127 + 1374970643) ^ 0x47D66181;
  v129 = LODWORD(STACK[0x2F4]) ^ (*&v97[4 * ((v70 >> 24) ^ 0xA9)] + 1215824596) ^ (*&v80[4 * (BYTE2(v128) ^ 0xBA)] + BYTE2(v128) + 261541641) ^ (*&v88[4 * v125] + 1374970643) ^ *&v111[4 * (BYTE1(v124) ^ 0x7F)];
  v130 = 1373700909 * *&v98[4 * ((v68 ^ v70) >> 16)];
  LODWORD(v71) = *&v90[4 * BYTE1(v128)] ^ 0x261D9EC1;
  LODWORD(v70) = *&v92[4 * v124] ^ 0x936BC36C;
  v131 = LODWORD(STACK[0x2F0]) ^ v130 ^ (v130 >> 3) ^ (v130 >> 7) ^ (*&v97[4 * HIBYTE(v125)] + 1215824596) ^ v71 ^ (v71 >> 3) ^ (v71 >> 7) ^ v70 ^ 0x2813C1E4 ^ (v70 >> 1) & 0x19BD9792;
  LODWORD(v70) = *&v92[4 * v128] ^ 0x936BC36C;
  LODWORD(v70) = LODWORD(STACK[0x390]) ^ BYTE1(v115) ^ (BYTE2(v125) + 261541641 + *&v80[4 * (BYTE2(v125) ^ 0xBA)]) ^ *&v111[4 * (BYTE1(v115) ^ 0x7F)] ^ v70 ^ (v70 >> 1) & 0x19BD9792 ^ HIBYTE(v124) ^ (HIBYTE(v124) + 1230085932) ^ 0xD572206A ^ *&v87[4 * (HIBYTE(v124) ^ 0xA0)];
  LODWORD(v71) = 1373700909 * *&v98[4 * BYTE2(v124)];
  v132 = *&v92[4 * v115] ^ 0x936BC36C;
  v133 = LODWORD(STACK[0x2EC]) ^ BYTE1(v125) ^ *&v111[4 * (BYTE1(v125) ^ 0x7F)] ^ (*&v97[4 * HIBYTE(v128)] + 1215824596) ^ v71 ^ (v71 >> 3) ^ (v71 >> 7) ^ v132 ^ (v132 >> 1) & 0x19BD9792 ^ 0x7B1BE18F;
  v134 = BYTE1(v124) ^ 0x45652707 ^ v129;
  v135 = 1373700909 * *&v98[4 * BYTE2(v134)];
  v136 = LODWORD(STACK[0x2E8]) ^ BYTE1(v134) ^ (*&v97[4 * (v70 >> 24)] + 1215824596) ^ *&v111[4 * (BYTE1(v134) ^ 0x7F)] ^ (BYTE2(v131) + 261541641 + *&v80[4 * (BYTE2(v131) ^ 0xBA)]) ^ 0x4096E865 ^ (*&v88[4 * (v133 ^ 0x71)] + 1374970643);
  LODWORD(v68) = *&v90[4 * BYTE1(v70)] ^ 0x261D9EC1;
  v137 = LODWORD(STACK[0x2E4]) ^ v68 ^ (*&v97[4 * (HIBYTE(v129) ^ 0x67)] + 1215824596) ^ (v68 >> 3) ^ (v68 >> 7);
  LODWORD(v68) = *&v92[4 * v131] ^ 0x936BC36C;
  v138 = v137 ^ v68 ^ (v68 >> 1) & 0x19BD9792 ^ 0xFC2E93A3 ^ (*&v80[4 * (BYTE2(v133) ^ 0xBA)] + BYTE2(v133) + 261541641);
  LODWORD(v71) = *&v90[4 * BYTE1(v131)] ^ 0x261D9EC1;
  LODWORD(v68) = *&v92[4 * v134] ^ 0x936BC36C;
  v139 = LODWORD(STACK[0x2E0]) ^ HIBYTE(v133) ^ (HIBYTE(v133) + 1230085932) ^ v71 ^ (BYTE2(v70) + 261541641 + *&v80[4 * (BYTE2(v70) ^ 0xBA)]) ^ *&v87[4 * (HIBYTE(v133) ^ 0xA0)] ^ (v71 >> 3) ^ (v71 >> 7) ^ v68 ^ (v68 >> 1) & 0x19BD9792 ^ 0x868A1CD0;
  LODWORD(v70) = LODWORD(STACK[0x39C]) ^ HIBYTE(v131) ^ (HIBYTE(v131) + 1230085932) ^ *&v87[4 * (HIBYTE(v131) ^ 0xA0)] ^ v135 ^ (*&v88[4 * v70] + 1374970643) ^ *&v111[4 * (BYTE1(v133) ^ 0x7F)] ^ (((v135 >> 4) + v135 - 2 * ((v135 >> 4) & v135)) >> 3) ^ 0xE6E28087;
  LODWORD(v68) = 1373700909 * *&v98[4 * BYTE2(v138)];
  v140 = BYTE1(v139);
  v141 = LODWORD(STACK[0x2DC]) ^ (*&v97[4 * (v70 >> 24)] + 1215824596) ^ v68 ^ *&v111[4 * (BYTE1(v139) ^ 0x7F)] ^ (v68 >> 3) ^ (v68 >> 7) ^ (*&v88[4 * v136] + 1374970643);
  LODWORD(v71) = 1373700909 * *&v98[4 * BYTE2(v70)];
  LODWORD(v68) = LODWORD(STACK[0x2D8]) ^ HIBYTE(v136) ^ (HIBYTE(v136) + 1230085932) ^ *&v87[4 * (HIBYTE(v136) ^ 0xA0)] ^ v71 ^ (v71 >> 3) ^ (v71 >> 7);
  LODWORD(v71) = *&v90[4 * BYTE1(v138)] ^ 0x261D9EC1;
  LODWORD(v68) = v68 ^ v71 ^ (v71 >> 3) ^ (v71 >> 7);
  LODWORD(v71) = *&v92[4 * v139] ^ 0x936BC36C;
  LODWORD(v71) = (v68 ^ 0xD9256425) + ((v71 >> 1) & 0x19BD9792 ^ v71) - 2 * ((v68 ^ 0xD9256425) & ((v71 >> 1) & 0x19BD9792 ^ v71));
  v142 = 1373700909 * *&v98[4 * BYTE2(v139)];
  LODWORD(v68) = LODWORD(STACK[0x2D4]) ^ (*&v97[4 * HIBYTE(v138)] + 1215824596) ^ v142 ^ (v142 >> 3) ^ (v142 >> 7);
  v143 = *&v90[4 * BYTE1(v136)] ^ 0x261D9EC1;
  v144 = v68 ^ v143 ^ (v143 >> 3) ^ (v143 >> 7) ^ (*&v88[4 * (v70 ^ BYTE1(v133))] + 1374970643) ^ 0x4F6997ED;
  v145 = 1373700909 * *&v98[4 * BYTE2(v136)];
  v146 = LODWORD(STACK[0x2D0]) ^ BYTE1(v70) ^ *&v111[4 * (BYTE1(v70) ^ 0x7F)] ^ v145 ^ (*&v97[4 * HIBYTE(v139)] + 1215824596) ^ (v145 >> 3) ^ (v145 >> 7) ^ (*&v88[4 * v138] + 1374970643) ^ 0x5EE05D7E;
  v147 = v71 ^ 0x2A4FF4B;
  v148 = *&v90[4 * ((v71 ^ 0xFF4B) >> 8)] ^ 0x261D9EC1;
  v149 = *&v90[4 * (BYTE1(v144) ^ 0x84)] ^ 0x261D9EC1;
  v150 = (v149 >> 4) & 0x2000000;
  if ((v150 & v149) != 0)
  {
    v150 = -v150;
  }

  v151 = (v150 + v149) ^ (v149 >> 4) & 0xFDFFFFFF;
  v152 = LODWORD(STACK[0x3A8]) ^ v140 ^ 0x22B3D8F ^ v141;
  v153 = LODWORD(STACK[0x2CC]) ^ HIBYTE(v144) ^ (HIBYTE(v144) + 1230085932) ^ *&v87[4 * (HIBYTE(v144) ^ 0xA0)] ^ (*&v88[4 * ((LOBYTE(STACK[0x3A8]) ^ v140) ^ 0x8F ^ v141)] + 1374970643) ^ v148 ^ (((v148 >> 4) + v148 - 2 * ((v148 >> 4) & v148)) >> 3) ^ (*&v80[4 * (BYTE2(v146) ^ 0xBA)] + BYTE2(v146) + 261541641) ^ 0xA9EC5387;
  v154 = *&v90[4 * BYTE1(v146)] ^ 0x261D9EC1;
  v155 = LODWORD(STACK[0x3A0]) ^ v154 ^ (v154 >> 3) ^ (*&v97[4 * (HIBYTE(v141) ^ 0x20)] + 1215824596) ^ (v154 >> 7) ^ (BYTE2(v144) + 261541641 + *&v80[4 * (BYTE2(v144) ^ 0xBA)]);
  v156 = *&v92[4 * v147] ^ 0x936BC36C;
  v157 = v155 ^ v156 ^ 0x7B43C891 ^ (v156 >> 1) & 0x19BD9792;
  v158 = 1373700909 * *&v98[4 * BYTE2(v152)];
  v159 = LODWORD(STACK[0x2C8]) ^ v158 ^ (*&v97[4 * HIBYTE(v147)] + 1215824596) ^ (v158 >> 3) ^ (v158 >> 7) ^ v149 ^ (*&v88[4 * v146] + 1374970643) ^ (v151 >> 3);
  v160 = 1373700909 * *&v98[4 * BYTE2(v147)];
  v161 = LODWORD(STACK[0x2C4]) ^ HIBYTE(v146) ^ (HIBYTE(v146) + 1230085932) ^ *&v87[4 * (HIBYTE(v146) ^ 0xA0)] ^ v160 ^ (v160 >> 3) ^ (v160 >> 7);
  v162 = *&v90[4 * BYTE1(v152)] ^ 0x261D9EC1;
  v163 = *&v92[4 * (v144 ^ 0xEE)] ^ 0x936BC36C;
  v164 = *&v97[4 * HIBYTE(v157)];
  v165 = v161 ^ v162 ^ (v162 >> 3) ^ (v162 >> 7) ^ v163 ^ (v163 >> 1) & 0x19BD9792 ^ 0x27B3A4BD;
  v166 = HIBYTE(v153);
  v167 = *&v87[4 * (HIBYTE(v153) ^ 0xA0)];
  v168 = (v159 ^ 0x6538D0D4u) >> 24;
  v169 = LODWORD(STACK[0x2C0]) ^ BYTE1(v153) ^ (1373700909 * *&v98[4 * BYTE2(v157)]) ^ *&v111[4 * (BYTE1(v153) ^ 0x7F)] ^ *&v87[4 * (v168 ^ 0xA0)] ^ ((1373700909 * *&v98[4 * BYTE2(v157)]) >> 3) ^ ((1373700909 * *&v98[4 * BYTE2(v157)]) >> 7) ^ (v168 + 1230085932) ^ (*&v88[4 * (v165 ^ 0x71)] + 1374970643);
  v170 = *&v92[4 * (v159 ^ 0xD4)];
  v171 = *&v92[4 * v153];
  v172 = LODWORD(STACK[0x2BC]) ^ (v164 + 1215824596) ^ (BYTE2(v153) + 261541641 + *&v80[4 * (BYTE2(v153) ^ 0xBA)]) ^ v170 ^ 0x936BC36C ^ ((v170 ^ 0x936BC36C) >> 1) & 0x19BD9792 ^ 0x3D7A8F5E ^ *&v111[4 * (BYTE1(v165) ^ 0x7F)];
  v173 = 1373700909 * *&v98[4 * BYTE2(v165)];
  v174 = *&v90[4 * (((v159 ^ 0xD0D4) >> 8) ^ 0x84)] ^ 0x261D9EC1;
  v175 = LODWORD(STACK[0x2B8]) ^ v167 ^ v173 ^ (v173 >> 3) ^ (v173 >> 7) ^ v166 ^ (v166 + 1230085932) ^ (*&v88[4 * v157] + 1374970643) ^ v174;
  v176 = 1373700909 * *&v98[4 * ((v159 ^ 0x6538D0D4u) >> 16)];
  v177 = LODWORD(STACK[0x394]) ^ BYTE1(v157) ^ HIBYTE(v165) ^ (HIBYTE(v165) + 1230085932) ^ v176 ^ *&v111[4 * (BYTE1(v157) ^ 0x7F)] ^ *&v87[4 * (HIBYTE(v165) ^ 0xA0)] ^ (v176 >> 3) ^ (v176 >> 7) ^ v171 ^ 0x936BC36C ^ ((v171 ^ 0x936BC36C) >> 1) & 0x19BD9792 ^ 0xC160FF75;
  v178 = STACK[0x4CC];
  v179 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x58F1)) - 169869275;
  v180 = *&v179[4 * BYTE2(v177)];
  v181 = *&v179[4 * BYTE2(v172)];
  v182 = v175 ^ (v174 >> 3) ^ (v174 >> 7) ^ 0x18225E24;
  v183 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x5CFB)) + 4 * HIBYTE(v182);
  v184 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x5B83)) + 4 * BYTE1(v182);
  LODWORD(v179) = v168 ^ 0xB715CA2D ^ v169;
  v185 = *(&off_1010A0B50 + LODWORD(STACK[0x4CC]) - 22369) - 307209211;
  v186 = *&v185[4 * HIBYTE(v172)];
  v187 = *&v185[4 * (HIBYTE(v169) ^ 0x9C)];
  v188 = *&v185[4 * HIBYTE(v177)];
  v189 = *(&off_1010A0B50 + LODWORD(STACK[0x4CC]) - 18432) - 1669621138;
  v190 = *&v189[4 * BYTE2(v182)];
  v191 = *&v189[4 * (BYTE2(v179) ^ 0x47)];
  v192 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x4A3F)) + 4 * v177;
  v193 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x5F3F)) - 1153494899;
  LODWORD(v189) = *&v193[4 * (BYTE1(v179) ^ 0xD0)];
  v194 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x566A)) - 171136810;
  HIDWORD(v195) = v190;
  LODWORD(v195) = v190;
  v196 = *&v193[4 * BYTE1(v177)] ^ 0x76E85C82;
  v197 = LODWORD(STACK[0x2B4]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x488]) ^ (v179 - 1383537391) ^ v186 ^ *&v194[4 * (v179 ^ 0x41)] ^ (v195 >> 5) ^ ((v195 >> 5) >> 2) ^ ((v195 >> 5) >> 5) ^ v196 ^ (8 * v196 * v196);
  HIDWORD(v195) = v180;
  LODWORD(v195) = v180;
  v198 = LODWORD(STACK[0x2AC]) ^ LODWORD(STACK[0x484]) ^ ((v172 ^ BYTE1(v165)) - 1383537391) ^ *(v183 - 1284707343) ^ 0x4110531A ^ (v195 >> 31) ^ (8 * (*(v183 - 1284707343) ^ 0x4110531A) - 1788261792) ^ ((v195 >> 31) >> 1) & 0x20FF93E5 ^ v189 ^ 0x76E85C82 ^ *&v194[4 * ((v172 ^ BYTE1(v165)) ^ 0x41)] ^ (8 * (v189 ^ 0x76E85C82) * (v189 ^ 0x76E85C82));
  HIDWORD(v195) = v181;
  LODWORD(v195) = v181;
  v199 = LODWORD(STACK[0x494]) ^ LODWORD(STACK[0x3A4]) ^ v187 ^ (v195 >> 31) ^ ((v195 >> 31) >> 1) & 0x20FF93E5 ^ *(v184 - 616390135) ^ 0x9BF15EE6 ^ (2 * (*(v184 - 616390135) ^ 0x9BF15EE6)) ^ (8 * (*(v184 - 616390135) ^ 0x9BF15EE6)) ^ (*(v192 - 1233423475) + 860903322) ^ (16 * (*(v192 - 1233423475) + 860903322)) ^ ((*(v192 - 1233423475) + 860903322) << 7);
  HIDWORD(v195) = v191;
  LODWORD(v195) = v191;
  v200 = *&v193[4 * (BYTE1(v172) ^ 0x89)] ^ 0x76E85C82;
  v201 = LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x2A4]) ^ LODWORD(STACK[0x4A8]) ^ v188 ^ (v195 >> 5) ^ (v182 - 1383537391) ^ *&v194[4 * (v182 ^ 0x41)] ^ ((v195 >> 5) >> 2) ^ ((v195 >> 5) >> 5) ^ v200 ^ (8 * v200 * v200);
  v202 = LODWORD(STACK[0x2A0]) ^ v197;
  v203 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x5648)) - 1575173658;
  LODWORD(v192) = v203[v198 ^ 0x49];
  v204 = v203[(LOBYTE(STACK[0x2A0]) ^ v197) ^ 0xD4];
  LODWORD(v194) = v203[v201 ^ 0x6FLL];
  v205 = *(&off_1010A0B50 + (LODWORD(STACK[0x4CC]) ^ 0x5C49)) - 244334611;
  v206 = v205[HIBYTE(v199) ^ 0x80];
  LODWORD(STACK[0x4A8]) = v205[HIBYTE(v198) ^ 0xC9];
  v207 = *(&off_1010A0B50 + (v178 ^ 0x52D9)) - 165341443;
  v208 = *(&off_1010A0B50 + (v178 ^ 0x5327)) - 743074747;
  v209 = v208[HIBYTE(v201) ^ 0x28];
  v210 = v208[HIBYTE(v197) ^ 0x23];
  v211 = *(&off_1010A0B50 + v178 - 22214) + (((v201 ^ 0x4704) >> 8) ^ 0x52);
  v212 = *(&off_1010A0B50 + v178 - 22935) - 303345635;
  LOBYTE(v201) = v212[(v202 >> 8) & 0xDE ^ 0xC8 ^ (BYTE1(v202) | 0xDE)];
  LOBYTE(v208) = v212[(v198 ^ 0x8F9D) >> 8];
  LOBYTE(v188) = v212[((v199 ^ 0x4644) >> 8) - (((v199 ^ 0x12A64644) >> 7) & 0x190) + 200];
  LODWORD(v193) = ((v206 ^ 0xD7) << 24) | ((((((v199 ^ 0x12A64644) >> 16) ^ 0xD6) + 30) ^ 0x51 ^ v207[((v199 ^ 0x12A64644) >> 16) ^ 0x26]) << 16) | (((v188 ^ ((4 * v188) | 0xCC)) ^ 0xBB) << 8);
  v213 = *(&off_1010A0B50 + (v178 ^ 0x5E98)) - 644431562;
  LOBYTE(v180) = v213[((v198 ^ 0xCBA98F9D) >> 16) ^ 0x85];
  LOBYTE(v198) = v213[BYTE2(v201) ^ 0xBALL];
  LODWORD(v193) = v193 & 0xFFFFFF00 | (((v199 ^ 0xE) - 109) ^ v199 ^ 0xE ^ *(*(&off_1010A0B50 + (v178 ^ 0x509D)) + (v199 ^ 0x3BLL) - 450012391));
  LODWORD(STACK[0x494]) = v207[BYTE2(v202) ^ 0xA6];
  v214 = STACK[0x3B8];
  v215 = STACK[0x3B8] + STACK[0x3F0];
  LODWORD(v203) = 1864610357 * ((*(STACK[0x420] + (STACK[0x428] & 0x7D86BAEC)) ^ v215) & 0x7FFFFFFF);
  v216 = 1864610357 * (v203 ^ (v203 >> 16));
  v217 = *(&off_1010A0B50 + (v178 ^ 0x505E)) - 1890482078;
  v218 = *(&off_1010A0B50 + v178 - 21009) - 248198187;
  v219 = *(&off_1010A0B50 + v178 - 22125) - 1705118567;
  LOBYTE(v212) = *(v211 - 1476862602);
  LODWORD(v193) = v193 ^ LODWORD(STACK[0x4C8]);
  *v215 = v217[v216 >> 24] ^ v218[v216 >> 24] ^ v219[v216 >> 24] ^ v216 ^ (-15 * BYTE3(v216)) ^ 0x19 ^ v193;
  v220 = STACK[0x440];
  v221 = STACK[0x438];
  LODWORD(v216) = (v194 ^ 0x5E) & 0xFF0000FF | ((v209 ^ 4) << 24) | (((v212 - 58) ^ 0x1A) << 8) | (((53 * v198) ^ 0xB4) << 16);
  v222 = (v214 + STACK[0x418]);
  LODWORD(v215) = 1864610357 * ((*(*(STACK[0x438] - 1680276466) + (*(STACK[0x440] - 231415367) & 0x7D86BAEC)) ^ v222) & 0x7FFFFFFF);
  v223 = 1864610357 * (v215 ^ WORD1(v215));
  LODWORD(v194) = v216 ^ LODWORD(STACK[0x4C4]);
  *v222 = v217[v223 >> 24] ^ BYTE1(v194) ^ v218[v223 >> 24] ^ v219[v223 >> 24] ^ v223 ^ (-15 * BYTE3(v223));
  v224 = (v214 + STACK[0x450]);
  LODWORD(v216) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v224) & 0x7FFFFFFF);
  v225 = 1864610357 * (v216 ^ WORD1(v216));
  *v224 = v217[v225 >> 24] ^ BYTE2(v193) ^ v218[v225 >> 24] ^ v219[v225 >> 24] ^ v225 ^ (-15 * BYTE3(v225));
  v226 = v192 & 0xFF0000FF | (((53 * v180) ^ 0x42) << 16) | ((v208 ^ 0x36 ^ ((4 * v208) | 0xCC)) << 8) | ((LODWORD(STACK[0x4A8]) ^ 0x5C) << 24);
  v227 = (v214 + STACK[0x400]);
  LODWORD(v225) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v227) & 0x7FFFFFFF);
  v228 = 1864610357 * (v225 ^ WORD1(v225));
  LODWORD(v192) = v226 ^ LODWORD(STACK[0x4B4]);
  *v227 = v217[v228 >> 24] ^ BYTE1(v192) ^ v218[v228 >> 24] ^ v219[v228 >> 24] ^ v228 ^ (-15 * BYTE3(v228));
  v229 = v204 & 0xFFFF00FF | ((v201 ^ 0xD5 ^ ((4 * v201) | 0xCC)) << 8) | ((v210 ^ 0x44444444) << 24) | ((((BYTE2(v202) ^ 0x56) + 30) ^ 0xB1 ^ LODWORD(STACK[0x494])) << 16);
  v230 = (v214 + STACK[0x3E8]);
  v231 = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v230) & 0x7FFFFFFF);
  v232 = 1864610357 * (v231 ^ HIWORD(v231));
  v233 = v229 ^ LODWORD(STACK[0x4B0]);
  *v230 = v229 ^ LODWORD(STACK[0x4B0]) ^ v217[v232 >> 24] ^ v218[v232 >> 24] ^ v219[v232 >> 24] ^ v232 ^ (-15 * BYTE3(v232)) ^ 0x64;
  v234 = (v214 + STACK[0x3F8]);
  v235 = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v234) & 0x7FFFFFFF);
  v236 = 1864610357 * (v235 ^ HIWORD(v235));
  *v234 = v217[v236 >> 24] ^ BYTE3(v192) ^ v218[v236 >> 24] ^ v219[v236 >> 24] ^ v236 ^ (-15 * BYTE3(v236));
  v237 = (v214 + STACK[0x410]);
  LODWORD(v236) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v237) & 0x7FFFFFFF);
  v238 = 1864610357 * (v236 ^ WORD1(v236));
  *v237 = v192 ^ v217[v238 >> 24] ^ v218[v238 >> 24] ^ v219[v238 >> 24] ^ v238 ^ (-15 * BYTE3(v238)) ^ 0xB2;
  v239 = (v214 + STACK[0x430]);
  LODWORD(v234) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v239) & 0x7FFFFFFF);
  v240 = 1864610357 * (v234 ^ (v234 >> 16));
  *v239 = v217[v240 >> 24] ^ v218[v240 >> 24] ^ v219[v240 >> 24] ^ v240 ^ (-15 * BYTE3(v240)) ^ v194;
  v241 = (v214 + STACK[0x468]);
  LODWORD(v239) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v241) & 0x7FFFFFFF);
  v242 = 1864610357 * (v239 ^ (v239 >> 16));
  *v241 = v217[v242 >> 24] ^ BYTE3(v194) ^ v218[v242 >> 24] ^ v219[v242 >> 24] ^ v242 ^ (-15 * BYTE3(v242));
  v243 = (v214 + STACK[0x408]);
  LODWORD(v242) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v243) & 0x7FFFFFFF);
  v244 = 1864610357 * (v242 ^ WORD1(v242));
  *v243 = v217[v244 >> 24] ^ BYTE3(v193) ^ v218[v244 >> 24] ^ v219[v244 >> 24] ^ v244 ^ (-15 * BYTE3(v244));
  v245 = (v214 + STACK[0x460]);
  LODWORD(v241) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v245) & 0x7FFFFFFF);
  v246 = 1864610357 * (v241 ^ (v241 >> 16));
  *v245 = v217[v246 >> 24] ^ BYTE1(v193) ^ v218[v246 >> 24] ^ v219[v246 >> 24] ^ v246 ^ (-15 * BYTE3(v246));
  v247 = (v214 + STACK[0x478]);
  LODWORD(v245) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v247) & 0x7FFFFFFF);
  v248 = 1864610357 * (v245 ^ (v245 >> 16));
  *v247 = v217[v248 >> 24] ^ BYTE2(v194) ^ v218[v248 >> 24] ^ v219[v248 >> 24] ^ v248 ^ (-15 * BYTE3(v248));
  v249 = (v214 + STACK[0x4A0]);
  LODWORD(v248) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v249) & 0x7FFFFFFF);
  v250 = 1864610357 * (v248 ^ WORD1(v248));
  *v249 = v217[v250 >> 24] ^ HIBYTE(v233) ^ v218[v250 >> 24] ^ v219[v250 >> 24] ^ v250 ^ (-15 * BYTE3(v250));
  v251 = (v214 + STACK[0x458]);
  LODWORD(v247) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v251) & 0x7FFFFFFF);
  v252 = 1864610357 * (v247 ^ (v247 >> 16));
  *v251 = v217[v252 >> 24] ^ BYTE1(v233) ^ v218[v252 >> 24] ^ v219[v252 >> 24] ^ v252 ^ (-15 * BYTE3(v252));
  v253 = (v214 + STACK[0x498]);
  LODWORD(v252) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v253) & 0x7FFFFFFF);
  v254 = 1864610357 * (v252 ^ WORD1(v252));
  v255 = *(&off_1010A0B50 + (v178 ^ 0x48DA)) - 122116858;
  v256 = *(&off_1010A0B50 + (v178 ^ 0x550F)) - 738546915;
  v257 = STACK[0x4C0];
  v258 = *(&off_1010A0B50 + v178 - 22216) - 2099088026;
  *v253 = v255[v254 >> 24] ^ BYTE2(v192) ^ v256[(v254 >> 24) + 1] ^ v258[(v254 >> 24) + 1] ^ v254 ^ (85 * BYTE3(v254));
  v259 = (v214 + STACK[0x470]);
  LODWORD(v254) = 1864610357 * ((*(*(v221 - 1680276466) + (*(v220 - 231415367) & 0x7D86BAEC)) ^ v259) & 0x7FFFFFFF);
  v260 = 1864610357 * (v254 ^ WORD1(v254));
  *v259 = v255[v260 >> 24] ^ BYTE2(v233) ^ v256[(v260 >> 24) + 1] ^ v258[(v260 >> 24) + 1] ^ v260 ^ (85 * BYTE3(v260));
  v261 = (v257 + 1434221518) < LODWORD(STACK[0x4B8]);
  if (LODWORD(STACK[0x44C]) != (v257 + 1434221518) < 0x557C7BBE)
  {
    v261 = STACK[0x44C];
  }

  return (*(STACK[0x3B0] + 8 * ((9060 * v261) ^ v178)))();
}

uint64_t sub_10026DC7C(int a1, double a2, __n128 a3)
{
  a3.n128_u16[0] = -10281;
  a3.n128_u8[2] = -41;
  a3.n128_u8[3] = -41;
  a3.n128_u8[4] = -41;
  a3.n128_u8[5] = -41;
  a3.n128_u8[6] = -41;
  a3.n128_u8[7] = -41;
  return (*(v3 + 8 * a1))(xmmword_100F523B0, a3);
}

uint64_t sub_10026DDF0@<X0>(uint64_t a1@<X8>)
{
  STACK[0x31B8] = STACK[0x4D30];
  LODWORD(STACK[0x5A54]) = STACK[0x131C];
  STACK[0x86B8] = &STACK[0xC4D0] + v1;
  STACK[0x7690] = a1 + (v2 - 11581) - 3205;
  STACK[0x5268] = 0;
  return (*(STACK[0xF18] + 8 * (((STACK[0x4220] != 0) * (((v2 + 20296) | 0x911) ^ 0x8B2A)) ^ v2)))();
}

uint64_t sub_10026DE84()
{
  v1 = STACK[0xF10] - 29678;
  v2 = STACK[0xF10] + 3655;
  *(STACK[0x7980] + 256) = v0;
  v3 = LODWORD(STACK[0x6134]) + 4;
  LODWORD(STACK[0x6134]) = v3;
  v4 = v3 - 1964838418 + (((v0 ^ 0x8E01E771) + 1912477839) ^ ((v0 ^ 0xC0F4006C) + 1057750932) ^ ((v0 ^ v1 ^ 0xA7203741) + 1491066868));
  v5 = v4 < 0x7B7C491;
  v6 = v4 > LODWORD(STACK[0xB7EC]) + 129483921;
  if (LODWORD(STACK[0xB7EC]) > 0xF8483B6E != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((11 * v6) ^ v2)))();
}

uint64_t sub_10026DFD8()
{
  v3 = *(STACK[0xF18] + 8 * (((*v0 == 0) * (v1 + 2873 + ((v1 - 9778) | 0x901))) ^ v1));
  v4 = STACK[0xC20];
  STACK[0xBB0] = v2;
  return v3(0xC437C7327FD12F34, 0x1B5DE9094BAFA51ALL, v4);
}

uint64_t sub_10026E080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(v4 + 8 * (v2 + 44415)))(a2);
  *(a1 + 40) = 0;
  return (*(v3 + 8 * v2))(a1);
}

uint64_t sub_10026E0EC()
{
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v1 + 8 * (v0 ^ 0x30CE58C1 ^ (((v0 + 46629271) & 0xCC6A3C7B ^ 0x2E9D) * (v0 < 0xC62D7E22)))))(v2);
}

uint64_t sub_10026E16C@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x11;
  v4 = 193924789 * ((((2 * (v1 - 176)) | 0xD840867A) - (v1 - 176) - 1814053693) ^ 0xDA9B715B);
  v5 = (((((a1 ^ 0x11) - 5513631) & 0x53BFBF) + 1827240446) ^ LODWORD(STACK[0x850])) + v4;
  *(v1 - 172) = v3 - v4 + 1563195757;
  *(v1 - 168) = v5;
  v6 = (*(v2 + 8 * (v3 + 21172)))(v1 - 176);
  return (*(v2 + 8 * v3))(v6);
}

uint64_t sub_10026E21C()
{
  STACK[0x1B98] = *STACK[0x1880];
  LODWORD(STACK[0x5A74]) = 1;
  STACK[0x5F28] = STACK[0x1390];
  LODWORD(STACK[0x41D0]) = 1;
  LODWORD(STACK[0x73F4]) = 1757209074;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10026E334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10)
{
  v24 = ((v10 ^ v14) + v15) ^ v10 ^ ((v10 ^ v20) + a2) ^ ((v10 ^ a3) + a4) ^ ((v16 ^ v10) + v17);
  *(a1 + v13) = v12 + v11 * ((((v24 ^ a5) + a6) ^ ((v24 ^ a7) + a8) ^ ((v24 ^ v19) + v21)) + v22);
  return (*(v18 + 8 * (((v13 == 0) * v23) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_10026E484(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v7 = *(v5 + 4 * (a5 - 3));
  v8 = *(v5 + 4 * (a5 - 8));
  v9 = ((2 * (v8 ^ 0x2388AA24)) ^ 0x76656E9E) & (v8 ^ 0x2388AA24) ^ (2 * (v8 ^ 0x2388AA24)) & 0xBB32B74E;
  v10 = (v8 ^ 0x12B89862) & (2 * (v8 & 0x98BA1D6B)) ^ v8 & 0x98BA1D6B;
  v11 = ((4 * (v9 ^ 0x89129141)) ^ 0xECCADD3C) & (v9 ^ 0x89129141) ^ (4 * (v9 ^ 0x89129141)) & 0xBB32B74C;
  v12 = (v11 ^ 0xA8029500) & (16 * ((v9 ^ 0x2220260C) & (4 * v10) ^ v10)) ^ (v9 ^ 0x2220260C) & (4 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x13302243)) ^ 0xB32B74F0) & (v11 ^ 0x13302243) ^ (16 * (v11 ^ 0x13302243)) & 0xBB32B740;
  v14 = v12 ^ 0xBB32B74F ^ (v13 ^ 0xB3223400) & (v12 << 8);
  v15 = v8 ^ v7 ^ ((v7 ^ 0x5680B713) - 835016070) ^ (((a2 - 20578) | 0x192) + 1167188288 + (v7 ^ 0xDD2BE7BB)) ^ ((v7 ^ 0x1B114DCA) - 2085924703) ^ ((v7 ^ 0xF7FFFFF7) + 1866850974) ^ (2 * ((v14 << 16) & 0x3B320000 ^ v14 ^ ((v14 << 16) ^ 0x374F0000) & (((v13 ^ 0x810830F) << 8) & 0x3B320000 ^ 0x9000000 ^ (((v13 ^ 0x810830F) << 8) ^ 0x32B70000) & (v13 ^ 0x810830F))));
  v16 = *(v5 + 4 * (a5 - 14));
  v17 = *(v5 + 4 * (a5 - 16));
  v18 = ((v16 ^ 0xCBDC2002) + 1399209321) ^ v16 ^ ((v16 ^ 0xC33A50F) - 1802913690) ^ ((v16 ^ 0x5F559067) - 940602098) ^ ((v16 ^ 0xFFFFF7FF) + 1732635286) ^ ((v15 ^ 0xEF9E9160) - 2 * ((v15 ^ 0xEF9E9160) & 0x18DE9CD7 ^ v15 & 2) + 417242325);
  HIDWORD(v19) = v17 ^ ((v17 ^ 0x1E05B386) - 2034258195) ^ ((v17 ^ 0xC2AF6B79) + 1511355924) ^ ((v17 ^ 0x4550C595) - 571811584) ^ ((v17 ^ 0xFEBFFFFF) + 1711661718) ^ 0x48B50345 ^ ((v18 ^ 0x7F9B7E40) - 2 * ((v18 ^ 0x7F9B7E40) & 0x2FF0E1D6 ^ v18 & 6) + 804315600);
  LODWORD(v19) = HIDWORD(v19);
  *(v5 + 4 * (a4 - 1796061013)) = ((v19 >> 31) ^ 0x7765FFDF) - 270540106 + ((2 * (v19 >> 31)) & 0xEECBFFBE);
  return (*(v6 + 8 * ((11 * ((a4 - 1796061012) > 0x4F)) ^ a2)))();
}

uint64_t sub_10026E84C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x6838]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4C70] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((((v1 + 1961621203) & 0x8B1466F3) - 2248) ^ v1)))();
}

void sub_10026EA14(_DWORD *a1)
{
  v1 = *a1 + 353670337 * ((-2 - ((a1 | 0x6870B3DC) + (~a1 | 0x978F4C23))) ^ 0x23AEB41E);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10026EAD4()
{
  v2 = *v0;
  v3 = v0[1];
  STACK[0xF10] = v0 + 0x3ADED0B539DCBB5;
  STACK[0xE90] = *(v0 + 6);
  v4 = v0[14];
  STACK[0xED0] = *(v0 + 8);
  STACK[0xEC0] = v0 + 0x3FC83C1B78D1652ALL;
  STACK[0xE80] = (v0 + 0x43086E816E0F0ADLL);
  STACK[0xEB0] = v0 + 0x20AC19A6B40D1F7ELL;
  STACK[0xEA0] = v0 + 0x2E6256C26EECB8EFLL;
  v5 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 45550)))(v0 + 2, &STACK[0x52D0], 32);
  v6 = 297845113 * ((~(&STACK[0x10000] + 3800) & 0x57F668DE | (&STACK[0x10000] + 3800) & 0xA8099720) ^ 0x20C57440);
  LODWORD(STACK[0x10F28]) = v6 + v3 - ((2 * v3) & 0xC648921A) + 1663322381;
  STACK[0x10F08] = v0 + 0x56A8DDB0366967ABLL;
  STACK[0x10F00] = v0 + 0x6555F0F263E6CFEBLL;
  LODWORD(STACK[0x10EF8]) = v4 - v6 - ((v4 << (((v1 + 62) | 0x2A) - 58)) & 0xD3AB8E22) - 371865839;
  STACK[0x10F38] = STACK[0xE90];
  STACK[0x10F30] = STACK[0xE80];
  STACK[0x10F40] = &STACK[0x52D0];
  LODWORD(STACK[0x10EFC]) = v6 + v1 + 3353;
  LODWORD(STACK[0x10F20]) = ((v2 ^ 0x6FEEDDAD) - 1646264608 + ((2 * v2) & 0xDFDDBB5A)) ^ v6;
  STACK[0x10ED8] = STACK[0xF10];
  STACK[0x10EE0] = v0 + 0x357EA9477E19BA65;
  STACK[0x10F18] = STACK[0xEC0];
  STACK[0x10F10] = STACK[0xED0];
  STACK[0x10EF0] = STACK[0xEB0];
  STACK[0x10EE8] = STACK[0xEA0];
  v7 = (*(v5 + 8 * (v1 ^ 0xD371)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v1))(v7);
}

uint64_t sub_10026ED74()
{
  *(v4 + 24) = v5;
  *(v0[3] + 32) = v0[4];
  *(v6 + 40) += v0[1] + v1;
  v9 = (((LOBYTE(STACK[0x3CF]) ^ 0xF3E97D1159CC8AC0) + 0xC1682EEA6337540) ^ ((LOBYTE(STACK[0x3CF]) ^ 0xE1C60CC5052F74B9) + 0x1E39F33AFAD08B47) ^ (v3 + 15151 + (LOBYTE(STACK[0x3CF]) ^ 0x122F71D45CE3FE5BLL) - 0x122F71D45CE48EBDLL)) + 0x73B4913AF7C22B46;
  v0[1] = 0x79C4BC1D8A4006F0 - v0[1];
  v0[2] = v9;
  *(v0 + v2) = 0x3CE25E0EC5200378;
  STACK[0x290] = v7;
  LODWORD(STACK[0x24C]) = -1219624799;
  return (*(v8 + 8 * v3))();
}

uint64_t sub_10026EE88@<X0>(int a1@<W8>)
{
  *(v7 + 8 * (v6 + v2)) = *(*(v8 + 8) + 8 * (v6 + v2));
  v10 = *(v8 + 4);
  v11 = a1 + v1 + v6 + v3;
  v12 = v10 + v4;
  v13 = v10 > v5;
  v14 = (v11 < v4) ^ v13;
  v15 = v11 < v12;
  if (v14)
  {
    v15 = v13;
  }

  return (*(v9 + 8 * ((14 * !v15) ^ a1)))();
}

uint64_t sub_10026EF70@<X0>(uint64_t a1@<X8>)
{
  v12 = v5 + v4 + v7;
  *(v9 + v12) = *(v10 + v12) ^ *(a1 + (v12 & 0xF)) ^ *(v1 + (v12 & 0xF)) ^ *((v12 & 0xF) + v2 + 2) ^ ((v12 & 0xF) * v6) ^ v8;
  return (*(v11 + 8 * (((v12 != 0) | (8 * (v12 != 0))) ^ v3)))();
}

uint64_t sub_10026F07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v23 - 236) = -371865839;
  v24 = *(v22 + 8 * (((((v21 - 18832) | 0x21) + ((v21 - 25578) ^ 0xB77F)) * (a9 == -371865839)) ^ v21));
  *(v23 - 248) = a3;
  return v24(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_10026F194@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = v19 - 1;
  *(v20 + v22) = ((a1 - 10) & 0xEB ^ 0xF4) + *(a19 + v22) - ((2 * *(a19 + v22)) & 0xBF);
  return (*(v21 + 8 * ((31 * (v22 != 0)) ^ a1)))();
}

uint64_t sub_10026F1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  a14 = &a26;
  a15 = &a17;
  *(v31 - 128) = v27;
  *(v31 - 136) = v28 - 1112314453 * ((((v31 - 144) | 0x54AC7867) - (v31 - 144) + ((v31 - 144) & 0xAB538798)) ^ 0xBBFA52BE) + 9565;
  *(v31 - 144) = &a14;
  (*(v26 + 8 * (v28 + 43841)))(v31 - 144);
  *(v31 - 112) = &a14;
  *(v31 - 104) = v27;
  *(v31 - 120) = v28 - 297845113 * ((((v31 - 144) | 0xBE00DF78) - ((v31 - 144) & 0xBE00DF78)) ^ 0xC933C3E6) + 8711;
  *(v31 - 144) = v30;
  *(v31 - 136) = &a20;
  *(v31 - 128) = &a24;
  v32 = (*(v26 + 8 * (v28 + 43936)))(v31 - 144);
  return (*(v26 + 8 * ((((v28 ^ 0xFFFFD78B) + v28 + 22362) * (v29 != 0)) ^ v28)))(v32);
}

uint64_t sub_10026F420(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v54 = v52 + 1565092548 + (((*(a52 + 88) ^ 0xAE2A2D56) + 1372967594) ^ ((*(a52 + 88) ^ 0x2F211686) - 790697606) ^ ((*(a52 + 88) ^ (((a3 - 1319621213) & 0x4EA7EEF5) - 1669901641)) + 1669874260));
  *(a52 + 88) = v54 - ((2 * v54 + 842226132) & 0x3AF90CF8) - 694799514;
  return (*(v53 + 8 * a3))();
}

uint64_t sub_10026F600@<X0>(uint64_t a1@<X8>)
{
  v4 = (*(v3 + 16) + 48 * a1);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x981390C2FED9246;
  v4[4] = 0x63229C6CAA627F47;
  v4[5] = 0x95BDDB4F3E212ELL;
  return (*(v2 + 8 * (((a1 + 1 < *(v3 + 8)) * ((v1 - 5593) ^ 0x7B1E)) | v1)))();
}

uint64_t sub_10026F67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25)
{
  v32 = *(v30 + 40);
  v33 = *(v30 + 56);
  v34 = (v25 | a25) + (v25 & a25);
  v35 = *(v28 + 8 * (v29 ^ 0x2B03));
  v36 = *(v35 - 527405895);
  v37 = *(v28 + 8 * (v29 ^ 0x390E)) + 4 * v36;
  v38 = *(v37 - 1940437438);
  v39 = (v34 ^ a25) + (v34 ^ a25) * v38;
  if (v34 == a25)
  {
    v40 = *(v37 - 1940437438);
  }

  else
  {
    v40 = 0;
  }

  *(v37 - 1940437438) = (v39 + v40) * v38;
  *(v35 - 527405895) = ((v29 ^ 0x6DFB2772) - 1845170029 + v36) % 6;
  v41 = v32 + v26;
  (*(v27 + 8 * (v29 + 41637)))(*(v28 + 8 * (v29 ^ 0x25CE)) - 940693246, v31 - 240, 40);
  v42 = (*(v27 + 8 * (v29 ^ 0xE2DD)))(*(v28 + 8 * (v29 - 8130)) - 559310902, &STACK[0x358], 200);
  if (v33)
  {
    v43 = (v41 - 1931143895) >= 0xFFFFFFD7;
  }

  else
  {
    v43 = 1;
  }

  v44 = !v43;
  return (*(v27 + 8 * ((30547 * v44) ^ v29)))(v42);
}

uint64_t sub_10026F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  *(v58 - 160) = (v57 - 1845130201) ^ (139493411 * ((v58 - 160 - 2 * ((v58 - 160) & 0x4A366628) - 902404562) ^ 0xC61B876B));
  *(v58 - 152) = &a56;
  v59 = (*(v56 + 8 * (v57 ^ 0x6DFBC453)))(v58 - 160);
  return (*(v56 + 8 * (v57 - 1845159240)))(v59);
}

uint64_t sub_10026F90C(uint64_t a1, int a2, double a3, __n128 a4, __n128 a5, __n128 a6, int8x16_t a7, double a8, int8x16_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v19 = (a1 - 1) & 0xF;
  v21.i64[0] = vqtbl4q_s8(*(&a4 - 1), a7).u64[0];
  *&v21.i64[1] = a8;
  v22 = vrev64q_s8(vmulq_s8(v21, a9));
  *(v17 + a1) = veorq_s8(veorq_s8(veorq_s8(*(v15 + v19 - 15), *(v12 + a1)), veorq_s8(*(v14 + v19 - 15), *(v19 + v13 - 14))), vextq_s8(v22, v22, 8uLL));
  return (*(v18 + 8 * (((v16 == a1) * a12) ^ a2)))(a1 - 16);
}

uint64_t sub_10026F980@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21)
{
  v23 = 1022166737 * ((2 * (&a18 & 0x78A4A360) - &a18 + 123427998) ^ 0xBD4BBD0C);
  a18 = a14;
  a19 = a1 - v23 + 693128619 + ((v21 - 11477) | 0x220E) - 24853;
  a20 = v23 + v21 + 3955;
  v24 = (*(v22 + 8 * (v21 + 23833)))(&a18);
  return (*(v22 + 8 * ((14 * (a21 == 1497668682)) ^ v21)))(v24);
}

uint64_t sub_10026FA48@<X0>(uint64_t a1@<X8>)
{
  STACK[0x3D8] = v1;
  STACK[0x410] = v1;
  return (*(v4 + 8 * ((((17 * (((v3 - 24522) | 0x1832) ^ 0x1F34)) ^ 0x5510) * (v2 - 0x3CE25E0EC5200378 - a1 < 41)) ^ v3)))();
}

uint64_t sub_10026FB9C(double a1, __n128 a2, uint64_t a3, int a4)
{
  a2.n128_u16[0] = 15163;
  a2.n128_u8[2] = 59;
  a2.n128_u8[3] = 59;
  a2.n128_u8[4] = 59;
  a2.n128_u8[5] = 59;
  a2.n128_u8[6] = 59;
  a2.n128_u8[7] = 59;
  return (*(v4 + 8 * a4))(xmmword_100F523B0, a2);
}

void sub_10026FCE0(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (1012831759 * ((2 * (a1 & 0x1808AEB9) - a1 + 1744261446) ^ 0x776447CC));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10026FDC4(__n128 a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6.n128_u64[0] = (v4 + 13) & 0xF;
  v6.n128_u64[1] = (v4 + 12) & 0xF;
  v7.n128_u64[0] = (v4 + ((a4 + 49) | 0x28) - 1) & 0xF;
  v7.n128_u64[1] = (v4 + 10) & 0xF;
  v8.n128_u64[0] = (v4 + 9) & 0xF;
  v8.n128_u64[1] = v4 & 0xF ^ 8;
  v11.val[0].i64[0] = (v4 + 7) & 0xF;
  v11.val[0].i64[1] = (v4 + 6) & 0xF;
  v11.val[1].i64[0] = (v4 + 5) & 0xF;
  v11.val[1].i64[1] = (v4 + 4) & 0xF;
  v11.val[2].i64[0] = (v4 + 3) & 0xFLL;
  v11.val[2].i64[1] = (v4 + 2) & 0xFLL;
  v11.val[3].i64[0] = (v4 + 1) & 0xFLL;
  v11.val[3].i64[1] = v4 & 0xF;
  v9.n128_u64[0] = 0x6B6B6B6B6B6B6B6BLL;
  v9.n128_u64[1] = 0x6B6B6B6B6B6B6B6BLL;
  return (*(v5 + 8 * (a4 ^ 0x502BB002 ^ (26621 * (a4 < 0xB8E49700)))))(0, (v4 + 14) & 0xF, 457 * (((a4 - 1345036239) | 0x6828) ^ 0x7819), -24222, 51152, a1, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

uint64_t sub_10026FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  STACK[0x2F0] = v43 + 432;
  LODWORD(STACK[0x400]) = -2068518553;
  LODWORD(STACK[0x220]) = -371865839;
  STACK[0x318] = 0;
  LODWORD(STACK[0x2C8]) = -371865839;
  *(&STACK[0x530] + v43) = 692918781;
  return (*(v45 + 8 * v44))(a1, a2, a3, a4, a5, a6, &STACK[0x530] + v43, (v42 + 531914626), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_1002700B0()
{
  *(v4 - 152) = v2;
  *(v4 - 160) = v0 + ((2 * ((v4 - 160) & 0x7945B1F0) - (v4 - 160) - 2034610679) ^ 0x609C55C6) * v3 + 5722;
  v5 = (*(v1 + 8 * (v0 ^ 0xE121)))(v4 - 160);
  return (*(v1 + 8 * ((25 * (*(v4 - 144) != v0 + 1143838586)) | v0)))(v5);
}

uint64_t sub_100270148(int a1, double a2, __n128 a3)
{
  a3.n128_u16[0] = -14393;
  a3.n128_u8[2] = -57;
  a3.n128_u8[3] = -57;
  a3.n128_u8[4] = -57;
  a3.n128_u8[5] = -57;
  a3.n128_u8[6] = -57;
  a3.n128_u8[7] = -57;
  return (*(v3 + 8 * a1))(xmmword_100F523B0, a3);
}

void sub_10027019C(uint64_t a1)
{
  v1 = 1603510583 * ((((2 * a1) | 0x4A416063723C0D6ALL) - a1 + 0x5ADF4FCE46E1F94BLL) ^ 0x9AD1A7DD2EC5341ELL);
  v3 = *(a1 + 8) != 0x217E172EFA1E81CLL && *(a1 + 16) + v1 != 0xB79969A3F9FE3ECFLL;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100270474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, unsigned int a9@<W8>)
{
  v24 = ((v9 ^ v14) + v15) ^ v9 ^ ((v9 ^ a4) + a5) ^ ((v9 ^ a6) + a7) ^ ((a2 ^ v9) + a3);
  v25 = ((v24 ^ a8) + v17) ^ ((v24 ^ v18) + v19) ^ ((v24 ^ v20) + v21);
  *(a1 + v10) = v12 + v25 * v23 + v13 * (v25 + v22);
  return (*(v16 + 8 * (((v10 == 0) * v11) ^ a9)))(a1, a2, a3, a4, a5);
}

uint64_t sub_100270538()
{
  v7 = v6 + v3;
  v8 = (v3 + (v4 ^ 0x29) - 108) & 0xF;
  v9 = v1 - v3 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 - v3 + 4;
  v12 = v2 + v11;
  v13 = v8 + ((v4 - 1696823123) & 0xFFFBFB9A ^ 0x9AD8D29ELL);
  v14 = v2 + v13;
  v15 = v0 + v11;
  v16 = v0 + v13;
  v18 = v14 > v6 && v12 < v7;
  v20 = v10 > v6 && v9 < v7 || v18;
  if (v16 <= v6 || v15 >= v7)
  {
    v22 = v20;
  }

  else
  {
    v22 = 1;
  }

  return (*(v5 + 8 * ((193 * (v22 ^ 1)) ^ v4)))();
}

uint64_t sub_100270858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v8 = *(v6 + 8 * (((((v4 - 6090) | 0x2004) + 32026) * (*(v7 - 216) & 1)) ^ v4));
  *(v7 - 240) = v5;
  *(v7 - 236) = a4;
  return v8(a1, a2, a3, *(v7 - 196));
}

uint64_t sub_100270C3C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v8 = (((a4 ^ 0x44739AA7) - 1148426919) ^ ((a4 ^ 0x41F8199C) - 1106778524) ^ ((a4 ^ 0xEC5E442A) + 329366486)) + 77519468;
  v9 = (((v6 ^ 0xBD69F11B) + 1117130469) ^ ((v6 ^ 0x947151B3) + 1804512845) ^ (((a6 - 255867629) & 0xF40CEBE ^ 0x3F325C5B) + (v6 ^ 0xC0CD67B9))) + 77519468;
  v10 = v8 < 0x1AC9135B;
  v11 = v8 > v9;
  if (v10 != v9 < 0x1AC9135B)
  {
    v11 = v10;
  }

  return (*(v7 + 8 * ((36460 * v11) ^ a6)))();
}

uint64_t sub_100270D58()
{
  v1 = STACK[0x1618];
  STACK[0x81A8] = *STACK[0x10D8];
  STACK[0x97E8] = v1 - ((v1 << ((v0 - 65) & 0x7B ^ 0x3Au)) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  LODWORD(STACK[0x6974]) = 103711532;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100270DE4@<X0>(int a1@<W8>)
{
  v1 = a1 & 0x4B0CFCDF;
  STACK[0x10EE0] = STACK[0x63D8];
  LODWORD(STACK[0x10ED8]) = (a1 & 0x4B0CFCDF) - 1012831759 * ((2 * (&STACK[0x10ED8] & 0x310CB8B0) - &STACK[0x10ED8] - 822917303) ^ 0xDE6051C3) + 21569;
  STACK[0x10EF0] = &STACK[0x3BA8];
  STACK[0x10EF8] = &STACK[0x2C64];
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * ((a1 & 0x4B0CFCDF) + 36608)))(&STACK[0x10ED8]);
  v3 = STACK[0x10EE8];
  v4 = STACK[0x63D8];
  LODWORD(STACK[0x10ED8]) = (v1 - 9257) ^ (155453101 * (((&STACK[0x10ED8] | 0xF400CE0A) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0xBFF31F0)) ^ 0x1226D5C5));
  STACK[0x10EE0] = v4;
  v5 = (*(v2 + 8 * (v1 + 36489)))(&STACK[0x10ED8]);
  LODWORD(STACK[0xAD5C]) = v3;
  return (*(v2 + 8 * (((v3 == (v1 ^ 0xE9D5FB42)) * ((v1 - 1527139544) & 0x5B069BBF ^ 0x1031)) ^ v1)))(v5);
}

uint64_t sub_100271068()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21483 + 602 * (v0 ^ 0x472))))();
}

uint64_t sub_1002710F8@<X0>(uint64_t a1@<X8>)
{
  v1 = STACK[0xF10] ^ 0x90D1;
  v2 = 3 * (STACK[0xF10] ^ 0xA552);
  v3 = *(a1 + 8);
  STACK[0x95E0] = 0;
  LODWORD(STACK[0x5B14]) = -371865839;
  STACK[0x1690] = 0x65357EE154792F07;
  return (*(STACK[0xF18] + 8 * (((((v3 == 0) ^ (v1 - 1)) & 1) * (v2 - 33618)) ^ v1)))();
}

uint64_t sub_1002711A4@<X0>(int a1@<W3>, int a2@<W4>, unsigned int a3@<W5>, int a4@<W6>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v53 = STACK[0x2E0] + v48;
  v54 = *v53;
  LODWORD(v53) = ((*(*v52 + (*v51 & a3)) ^ v53) & 0x7FFFFFFF) * a4;
  v55 = (v53 ^ WORD1(v53)) * (((v49 + a1) & a2) + a5);
  *(a6 + v48) = *(a47 + (v55 >> 24)) ^ v54 ^ *(a46 + (v55 >> 24)) ^ *((v55 >> 24) + a48 + 2) ^ v55 ^ (-5 * BYTE3(v55));
  return (*(v50 + 8 * v49))();
}

uint64_t sub_10027126C@<X0>(int a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v12 = v9 - 1;
  *(a4 + v12) = *(v5 + (v12 & 0xF)) ^ *(v4 + v12) ^ *((v12 & 0xF) + v6 + 1) ^ ((v12 & 0xF) * a2) ^ *(v7 + (v12 & 0xF));
  return (*(v11 + 8 * (((v12 == 0) * ((v10 | a1) ^ a3)) ^ v8)))();
}

uint64_t sub_100271384(uint64_t a1)
{
  *(a1 + 80) = 13568;
  *a1 = 0x5A9E8B952ED91155;
  strcpy((a1 + 8), "________________________________________________________________");
  *(a1 + 73) = 0;
  *(a1 + 74) = 0;
  *(a1 + 76) = 0;
  v3 = STACK[0x2ED0];
  *(v3 + 84) = 7;
  *(v3 + 105) = 0;
  *(v3 + 106) = 0;
  strcpy((v3 + 88), "________________");
  *(v3 + 108) = 0;
  *v1 = v3;
  return (*(STACK[0xF18] + 8 * v2))();
}

void sub_10027145C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 4) + 416528804;
  v2 = *(*(a1 + 16) + 4) + 416528804;
  v3 = (v1 < -679868268) ^ (v2 < -679868268);
  v4 = v1 > v2;
  if (v3)
  {
    v4 = v1 < -679868268;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_10027153C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + 958947589) & 0xC6D7FFFC;
  v8 = *(a4 + 8 * v4);
  *(v6 - 232) = v5;
  return v8(a1, a2, v7);
}

uint64_t sub_1002715F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = v12 + 23535;
  v17 = *(&off_1010A0B50 + v15 - 30357) - 472258451;
  v18 = -39 * v17[*(v13 - 104) ^ 0x5CLL] + 117;
  v16 = *(&off_1010A0B50 + v15 - 32269) - 466795211;
  v19 = (((v18 * v18) << 26) ^ (v18 << 24) ^ 0x3FFFFFF) & ((((*(*(&off_1010A0B50 + v15 - 30030) + (*(v13 - 102) ^ 0x65) - 1817616402) << 8) ^ 0x2ABC96F) & ((v16[*(v13 - 101) ^ 0x37] - 45) ^ 0x2ABFF6F) | (v16[*(v13 - 101) ^ 0x37] - 45) & 0x90) ^ 0xC78C2999) ^ (((v18 * v18) << 26) ^ (v18 << 24)) & 0x3A000000;
  LOBYTE(v18) = *(*(&off_1010A0B50 + (v15 ^ 0x8CB3)) + (*(v13 - 103) ^ 0xB8) - 29601167) ^ 0x66;
  v20 = v17[*(v13 - 108) ^ 0xB9];
  HIDWORD(a11) = 117;
  *(v13 - 120) = (((v11 ^ 0xA6DBDAE0) + 1543303771) ^ ((v11 ^ 0x33C10AA2) - 823778791) ^ ((v11 ^ 0xF308F9E8) + 238014803)) + 1748757965;
  return (*(v14 + 8 * v15))(184646050, 3503590788, ((((4 * v18) & 0x68 ^ v18) << 16) ^ 0xD1AEB657) & (v19 ^ 0x30D86CA1), (((-39 * v20 + 117) ^ (4 * (-39 * v20 + 117) * (-39 * v20 + 117)) ^ 0x33333333) << 24) & 0x71000000, 3599045857, 3527755976, 144, 44826479, a9, a10, a11);
}

uint64_t sub_100271AF0()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x5D5D)))(72);
  STACK[0x730] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (v0 ^ 0x1247 ^ ((v0 - 4932) | 0x12A))) ^ v0)))();
}

uint64_t sub_100271B64()
{
  v1 = STACK[0xA1A4];
  v2 = (v1 + 952909387) ^ (v0 + 626924747 + ((v1 + 952909387) ^ 0xAB39C16F)) ^ (((v1 + 952909387) ^ 0xB4A8F831) + 986676053) ^ (((v1 + 952909387) ^ 0x91F6BA7B) + 529611039) ^ (((v1 + 952909387) ^ 0xFFFFFFBF) + 1905818843) ^ 0x71987C9A;
  v3 = STACK[0xB728];
  *STACK[0xA1A8] ^= *(STACK[0xB728] + 4 * v2) ^ 0xE9D5C711;
  v1 += 952909388;
  v4 = v1 & 0x8E678366 ^ 0xB27E2718 ^ (v1 ^ 0x2C57A276) & (2 * (v1 & 0x8E678366));
  v5 = ((2 * (v1 ^ 0x3C19A47E)) ^ 0x64FC4E30) & (v1 ^ 0x3C19A47E) ^ (2 * (v1 ^ 0x3C19A47E)) & 0xB27E2718;
  v6 = v5 & 0x2CAD1E86 ^ v4 ^ ((4 * v4) ^ 0xE55582E6) & (v5 ^ 0x207C0610);
  v7 = ((4 * v5) ^ 0xAD5D06C6) & (v5 ^ 0x207C0610) ^ v5 & 0x2CAD1E86;
  v8 = v7 & 0x2CAD1E86 ^ v6 ^ ((16 * v6) ^ 0x98F0F06) & (v7 ^ 0x202C0608);
  v9 = ((16 * v7) ^ 0x2E6D7E86) & (v7 ^ 0x202C0608) ^ v7 & 0x2CAD1E86;
  v10 = v8 ^ v9 & 0x2CAD1E86 ^ ((v8 << 8) ^ 0x528A0686) & (v9 ^ 0x202C0618);
  v11 = ((v9 << 8) ^ 0xAB1E86) & (v9 ^ 0x202C0618) ^ v9 & 0x2CAD1E86;
  *STACK[0xA1B8] ^= *(v3 + 4 * (v1 ^ (2 * (v10 ^ v11 & 0x2CAD1E86 ^ ((v10 << 16) ^ 0xDB51E86) & (v11 ^ 0x12520000) ^ ((v10 << 16) ^ 0xDB51E86) & 0x327E0600)) ^ 0xEA9BCD56)) ^ 0xE9D5C711;
  *STACK[0xA1C0] ^= *(STACK[0xB730] + 4 * v2) ^ 0xE9D5C711;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100271E60(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, _DWORD *a23)
{
  if (a22)
  {
    v24 = *a23 == 1497668682;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24;
  return (*(v23 + 8 * ((v25 * (a3 ^ 0x640D2093 ^ (a3 + 1678565490))) ^ a3)))();
}

uint64_t sub_100271EB0(uint64_t a1, int8x16_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, int a7, int a8, double a9, __n128 a10, __n128 a11, __n128 a12, int8x16_t a13, double a14, int8x16_t a15)
{
  v21 = v18 & 0xF;
  v23.i64[0] = vqtbl4q_s8(*(&a10 - 1), a13).u64[0];
  *&v23.i64[1] = a14;
  v24 = vrev64q_s8(vmulq_s8(v23, a15));
  *a2 = veorq_s8(veorq_s8(veorq_s8(*(v15 + v21 - 15), *a2), veorq_s8(*(v17 + v21 - 15), *(v16 + v21 - 15))), vextq_s8(v24, v24, 8uLL));
  return (*(v20 + 8 * (((a7 & ~(a6 ^ ((a5 | a4) >> 63))) * a8) ^ v19)))(a1, a2 - 1, a3, a4 - 16, a5 + 16);
}

uint64_t sub_100271F30()
{
  v6 = v3[-1];
  v7.i64[0] = 0xBEBEBEBEBEBEBEBELL;
  v7.i64[1] = 0xBEBEBEBEBEBEBEBELL;
  v8 = vsubq_s8(*v3, vandq_s8(vaddq_s8(*v3, *v3), v7));
  v9 = vandq_s8(vaddq_s8(v6, v6), v7);
  v7.i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v7.i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v2[-1] = vaddq_s8(vsubq_s8(v6, v9), v7);
  *v2 = vaddq_s8(v8, v7);
  return (*(v5 + 8 * (((v0 == v4) * ((v1 + 37434) ^ 0xBD08)) ^ v1)))();
}

uint64_t sub_100271F98()
{
  v0 = STACK[0xF10] ^ 0xB32E;
  v1 = STACK[0xF10] - 34045;
  v2 = STACK[0xF18];
  STACK[0x16D8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ v1 ^ 0x25B9)))();
}

uint64_t sub_100272058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, _DWORD *a36)
{
  *a36 |= 8u;
  LODWORD(STACK[0x7B4]) = v36 - 1888617826;
  LODWORD(STACK[0x7B0]) = (((v37 ^ 0x20203888) - 538982536) ^ ((v37 ^ 0xC0402763) + 1069537437) ^ ((v37 ^ 0x9B5D8FA) - 162931638 + ((v38 + 13171) | 0x90))) - 262334742;
  return (*(v39 + 8 * v38))();
}

uint64_t sub_1002720F8@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v24 = ((v9 ^ v13) + v14) ^ v9 ^ ((v9 ^ a1) + a2) ^ ((v9 ^ a3) + a4) ^ ((a5 ^ v9) + a6);
  v25 = ((v24 ^ a7) + a8) ^ ((v24 ^ v15) + v16) ^ ((v24 ^ v18) + v19);
  *(v22 + v12) = v10 + v25 * v21 + v11 * (v25 + v20);
  return (*(v17 + 8 * (((v12 == 0) * v23) ^ a9)))();
}

uint64_t sub_100272188()
{
  *STACK[0xDF0] = v0;
  *STACK[0xE10] = v1;
  *STACK[0xDE0] = STACK[0xDA0];
  *STACK[0xDD0] = STACK[0xD90];
  return (*(STACK[0xF18] + 8 * ((23 * (LODWORD(STACK[0xDB0]) - LODWORD(STACK[0xD80]) + 289647774 <= SLODWORD(STACK[0xCF0]))) ^ LODWORD(STACK[0xD00]))))();
}

uint64_t sub_100272200()
{
  v1 = STACK[0xB93B];
  if ((v0 & 0x20000000) != 0)
  {
    v1 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((255 * ((v1 ^ (((STACK[0xF10] - 84) & 0xDD) + 118)) & 1)) ^ (STACK[0xF10] - 26044))))();
}

uint64_t sub_100272268@<X0>(int a1@<W8>)
{
  v1 = STACK[0x7690];
  v2 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x8068] = v2;
  STACK[0x77D8] = v2;
  STACK[0x7EC8] = (v2 + 160);
  STACK[0x79F8] = (v2 + 176);
  STACK[0x72C0] = (v2 + 192);
  STACK[0x7690] = v1 + 208;
  STACK[0x8890] = 0;
  STACK[0x15C0] = 0;
  STACK[0x62F8] = 0;
  LODWORD(STACK[0x2098]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((*(STACK[0x790] - 573165550) == 0) * (((a1 ^ 0x70C1) + 28749) ^ 0xFB97 ^ (327 * (a1 ^ 0x70C1)))) ^ a1)))();
}

void sub_100272310(uint64_t a1)
{
  v1 = *(a1 + 4) + 353670337 * ((-2 - ((a1 | 0xC39EE631) + (~a1 | 0x3C6119CE))) ^ 0x8840E1F3);
  v2 = *(&off_1010A0B50 + v1 - 26747);
  v6 = *(v2 - 372618867);
  v5 = (906386353 * (&v5 ^ 0x3101CD24)) ^ (v1 - 1762657199);
  v3 = *(&off_1010A0B50 + (v1 ^ 0x7F7E)) - 810145054;
  (*&v3[8 * v1 + 162776])(&v5);
  *(v2 - 372618875) = 100;
  v4 = (*&v3[8 * (v1 ^ 0xB1A6)])(64000);
  *(v2 - 372618883) = v4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10027247C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>, __n128 a4@<Q1>, int8x16_t a5@<Q4>, uint64_t a6@<D5>, int8x16_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v19 = a1 & (v12 + 15);
  v20 = v14;
  v21.i64[0] = vqtbl4q_s8(*(&a4 - 1), a5).u64[0];
  v21.i64[1] = a6;
  v22 = vrev64q_s8(veorq_s8(veorq_s8(*(v17 + v12), *(a3 + v19 - 15)), veorq_s8(*(v19 + v10 - 14), *(v19 + v11 - 13))));
  v23 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v22, v22, 8uLL), a8), vmulq_s8(v21, a7)));
  *(v16 + v12) = vextq_s8(v23, v23, 8uLL);
  return (*(v18 + 8 * (((v15 == 0) * a2) ^ v13)))();
}

void sub_100272668(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (1012831759 * ((-2 - ((a1 | 0xAE982EE1) + (~a1 | 0x5167D11E))) ^ 0x41F4C794));
  v3 = v2 + (*(a1 + 24) ^ 0xC4146D6974BC24ALL);
  v2[0] = ((2 * v3) | 0xEA43D2B0) - (v3 ^ 0xF521E958);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1002727B0()
{
  *v2 = 0;
  v4 = *v3;
  *v2 = 1;
  return (*(v1 + 8 * ((40115 * (v4 == ((24 * (v0 ^ 0xCB) - 4) & 0xFC))) ^ v0)))();
}

uint64_t sub_1002728CC(unsigned int a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x8_t a6, int8x8_t a7)
{
  v15.val[0].i64[0] = (v11 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + (v7 ^ 0xFD)) & 0xF;
  v15.val[3].i64[0] = (v11 + 9) & 0xF;
  v15.val[3].i64[1] = v11 & 0xF ^ 8;
  *(a2 + v11) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a3 + v11), *(v10 + v15.val[0].i64[0] - 7)), veor_s8(*(v15.val[0].i64[0] + v9 - 3), *(v8 + v15.val[0].i64[0] - 7)))), a7), vmul_s8(*&vqtbl4q_s8(v15, a5), a6)));
  return (*(v13 + 8 * (((v12 == v11) * a4) ^ a1)))();
}

uint64_t sub_1002729D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, unsigned int a12)
{
  v15 = *(v14 + 4);
  a12 = (v12 - 1830879301) ^ (1603510583 * (((&a11 | 0xDAC5D639) - (&a11 | 0x253A29C6) + 624568774) ^ 0x4D1EE492));
  a11 = ((2 * v15) & 0xDA) - 55 * (((&a11 | 0x39) - (&a11 | 0xC6) - 58) ^ 0x92) + (v15 ^ 0xDA ^ (-123 * (v12 ^ 0xF5))) - 44;
  v16 = (*(v13 + 8 * (v12 + 33969)))(&a11);
  return (*(v13 + 8 * v12))(v16);
}

void sub_100272A7C(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (297845113 * ((-2 - ((~a1 | 0xFA59F570) + (a1 | 0x5A60A8F))) ^ 0x8D6AE9EE));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100272B90(__n128 a1, uint64_t a2, unsigned int a3)
{
  v6.n128_u64[0] = (v3 + 13) & 0xF;
  v6.n128_u64[1] = (v3 + 12) & 0xF;
  v7.n128_u64[0] = (v3 + 11) & 0xF;
  v7.n128_u64[1] = (v3 + 10) & 0xF;
  v8.n128_u64[0] = (v3 + 9) & 0xF;
  v8.n128_u64[1] = ~v4 & 0xF;
  v11.val[0].i64[0] = (v3 + 7) & 0xF;
  v11.val[0].i64[1] = (v3 + 6) & 0xF;
  v11.val[1].i64[0] = (v3 + 5) & 0xF;
  v11.val[1].i64[1] = (v3 + 4) & 0xF;
  v11.val[2].i64[0] = (v3 + 3) & 0xF;
  v11.val[2].i64[1] = (v3 + 2) & 0xF;
  v11.val[3].i64[0] = (v3 + 1) & 0xF;
  v11.val[3].i64[1] = v3 & 0xF;
  v9.n128_u64[0] = 0x9F9F9F9F9F9F9F9FLL;
  v9.n128_u64[1] = 0x9F9F9F9F9F9F9F9FLL;
  return (*(v5 + 8 * a3))(a1, v6, v7, v8, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v9);
}

uint64_t sub_100272D60@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = *(a1 + 24);
  v7 = *(v5 + 8 * (a2 ^ 0xA467));
  v8 = (v2 & 0x52849524) + (v3 & 0x52849524) + 2 * (v2 & 0x9292892 & v3) + (((v3 & 0x9292892) - (v2 & 0x9292892) + 38949156) & 0x9292892) + 2 * (v3 & v2 & 0x24524249) + ((((a2 ^ 0x640DEC91) - 1678577332) ^ 0xA4527F7C) & (v2 ^ v3));
  v9 = *(v7 - 527405895);
  v10 = *(v5 + 8 * (a2 ^ 0xB66A)) + 4 * v9;
  v11 = *(v10 - 1940437438);
  v12 = (v8 ^ v3) + (v8 ^ v3) * v11;
  if (v8 == v3)
  {
    v13 = *(v10 - 1940437438);
  }

  else
  {
    v13 = 0;
  }

  *(v10 - 1940437438) = (v12 + v13) * v11;
  *(v7 - 527405895) = (v9 + 1) % 6u;
  return (*(v4 + 8 * ((243 * (v6 == 0)) ^ a2)))();
}

uint64_t sub_100272F0C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  v16 = v15 > v12;
  v17 = v8 + a4 + (*(*(v14 + 8) + 4 * (a7 + a2)) ^ a3);
  *(*(v7 + 8) + 4 * (a7 + a2)) = v17 - ((v17 << v9) & a5) + a3;
  v18 = a7 + a6;
  v19 = v16 ^ (v18 < v11);
  v20 = v18 < v10;
  if (!v19)
  {
    v16 = v20;
  }

  return (*(v13 + 8 * ((v16 | (32 * v16)) ^ v9)))();
}

void sub_100273048(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 8) - 139493411 * (((a1 | 0x808F926E) - a1 + (a1 & 0x7F706D91)) ^ 0x8CA2732B);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1002732DC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v14 = v11 < a3;
  *(a2 + (a9 + a5)) = *(v9 + v10) - ((2 * *(v9 + v10)) & 0xBF) + 95;
  if (v14 == v10 + 1 > (a4 ^ (8 * v12)) + a7)
  {
    v14 = v10 + a6 < a1;
  }

  return (*(v13 + 8 * ((!v14 * a8) ^ v12)))();
}

uint64_t sub_1002733C8@<X0>(unint64_t a1@<X8>)
{
  v6 = STACK[0xF18];
  STACK[0x9468] = *(STACK[0xF18] + 8 * v1);
  STACK[0x57B0] = v2;
  LODWORD(STACK[0x539C]) = v4;
  STACK[0x3010] = a1;
  STACK[0x2200] = 0x1BF5D6A0218BDABELL;
  LODWORD(STACK[0x1574]) = -371865839;
  *(v3 + 1312) = 0x367D22279A98EC4ELL;
  STACK[0x8460] = 0;
  v7 = (*(v6 + 8 * (v5 + 32807)))(16);
  STACK[0x6CD8] = v7;
  return (*(v6 + 8 * (((((v5 - 100) ^ (v7 == 0)) & 1) * (((v5 - 501721444) | 0x1C024080) ^ 0xFE1AE179)) ^ v5)))();
}

uint64_t sub_1002735EC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v6 = (v3 - 49);
  v7 = ((v2 ^ 0x84) & (26 - v3) | 0x41) ^ (v3 - 27) & 0xAA;
  v8 = (v3 - 27) ^ 0x1E;
  v9 = (v3 - 49) & 0xF;
  *(a2 + v6) = *(v4 + v6 + 68) ^ (v3 - 27) ^ *(v4 + v6 + 86) ^ (15 * v9) ^ *(*(a1 + 8 * (v2 ^ 0x3F33)) + v9 - 1979134191) ^ *(*(a1 + 8 * (v2 ^ 0x3A8B)) + v9 - 627980870) ^ *(*(a1 + 8 * (v2 ^ 0x36EF)) + v9 - 333318851) ^ (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * (v8 & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ 0x46;
  v10 = (v3 + 1) | (((v3 + 1) < 0x31u) << 8);
  v11 = (*(v4 + 102) - 5562) > (v10 + 26462);
  if ((v10 + 17747) < 0x4584 != *(v4 + 102) - 5562 < 0x678F)
  {
    v11 = *(v4 + 102) - 5562 < 0x678F;
  }

  return (*(v5 + 8 * ((50 * !v11) ^ v2)))();
}

uint64_t sub_100273764@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(a46 - 586084794) = a1;
  *(v48 + 120) -= 32;
  return (*(v47 + 8 * (((v46 + 17057) ^ 0x67F9) + v46)))();
}

uint64_t sub_1002737E8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x360]) = 0;
  v4 = (a1 + 253068721) & 0xF0EA5ACF;
  v5 = v2 & 0xFFFFFFFC ^ 0x65EC0F2FLL;
  *(v3 - 160) = v5;
  v6 = *(a2 + v5);
  LODWORD(STACK[0x374]) = v4;
  LODWORD(v5) = v4 ^ v2 & 0xFFFFFFF5 ^ 0x65EC5760;
  *(v3 - 172) = v5;
  LODWORD(v5) = *(a2 + v5);
  v7 = STACK[0x2D8];
  v8 = v2;
  v9 = *(STACK[0x2D8] + (v6 ^ 0xB8));
  v10 = v8 ^ 0x65EC0F2FLL;
  *(v3 - 168) = v10;
  LODWORD(v5) = v5 - 2 * (v5 & 0xB5) + 181;
  v11 = STACK[0x2D0];
  v12 = *(STACK[0x2D0] + 4 * (v5 ^ 0xEE));
  v13 = STACK[0x2C8];
  LODWORD(v10) = *(STACK[0x2C8] + 4 * (*(a2 + v10) ^ 0xDFLL));
  LODWORD(v6) = v9 ^ v6;
  v14 = v8 & 0xFFFFFFF2 ^ 0x65EC0F2FLL;
  *(v3 - 192) = v14;
  v15 = *(a2 + v14);
  v16 = v8;
  v17 = v8 & 0xFFFFFFF4 ^ 0x65EC0F2FLL;
  *(v3 - 208) = v17;
  v18 = *(a2 + v17);
  v19 = STACK[0x2E0];
  v20 = *(STACK[0x2E0] + 4 * (v15 ^ 0x8F));
  v21 = (2 * v20) & 0xC91894D0;
  v22 = *(v7 + (v18 ^ 0xA2));
  v23 = v8 & 0xFFFFFFF1 ^ 0x65EC0F2FLL;
  *(v3 - 184) = v23;
  v24 = *(a2 + v23);
  v26 = *(v11 + 4 * (v24 ^ 0xEF));
  v27 = v8 & 0xFFFFFFF8 ^ 0x65EC0F2FLL;
  *(v3 - 152) = v27;
  v28 = *(a2 + v27);
  v29 = *(v7 + (v28 ^ 8));
  LODWORD(v18) = v22 ^ v18;
  v30 = v16;
  v31 = v16 & 0xFFFFFFF9 ^ 0x65EC0F2FLL;
  *(v3 - 256) = v31;
  LOBYTE(v31) = *(a2 + v31);
  v32 = v16 & 0xFFFFFFFE ^ 0x65EC0F2FLL;
  STACK[0x380] = v32;
  v33 = v16 & 0xFFFFFFF3 ^ 0x65EC0F2FLL;
  STACK[0x388] = v33;
  LODWORD(v33) = *(v13 + 4 * (*(a2 + v33) ^ 0xDLL));
  v34 = v20 ^ v26;
  v35 = v30 & 0xFFFFFFF0 ^ 0x65EC0F2FLL;
  *(v3 - 200) = v35;
  v36 = v34 ^ v21 ^ v24 ^ __ROR4__(v33, 27) ^ 0xCDBE1767;
  v37 = *(a2 + v35) ^ 0xEE ^ *(v7 + (*(a2 + v35) ^ 0x46));
  LODWORD(v35) = v37 + v36 - 2 * (v37 & v36);
  v38 = *(v11 + 4 * (v31 ^ 0xC4u));
  v39 = v30 & 0xFFFFFFFA ^ 0x65EC0F2FLL;
  STACK[0x378] = v39;
  LOBYTE(v28) = v29 ^ v28 ^ v31;
  v40 = *(a2 + v39);
  v41 = v30 & 0xFFFFFFF6 ^ 0x65EC0F2FLL;
  *(v3 - 240) = v41;
  LODWORD(v40) = *(v19 + 4 * (v40 ^ 0x17)) ^ 0x6C3FD1CD;
  v42 = v30 & 0xFFFFFFFB ^ 0x65EC0F2FLL;
  *(v3 - 216) = v42;
  v43 = v38 ^ v28 ^ v40 ^ (2 * v40) & 0xC91894D0 ^ __ROR4__(*(v13 + 4 * (*(a2 + v42) ^ 0xB6)), 27);
  LODWORD(v5) = v5 ^ v18;
  LODWORD(v28) = *(v19 + 4 * (*(a2 + v41) ^ 0x30)) ^ 0xCA6A68F9;
  LODWORD(v18) = *(v19 + 4 * (*(a2 + v32) ^ 0x6CLL)) ^ 0x82F19EDA;
  LODWORD(v28) = v5 ^ v28 ^ (2 * v28) & 0xC91894D0;
  *(v3 - 220) = v30;
  v44 = v30 & 0xFFFFFFF7 ^ 0x65EC0F2FLL;
  *(v3 - 248) = v44;
  LODWORD(v44) = v28 ^ v12 ^ __ROR4__(*(v13 + 4 * (*(a2 + v44) ^ 0x46)), 27);
  v45 = __ROR4__(v10, 27);
  v46 = v30 & 0xFFFFFFFD ^ 0x65EC0F2FLL;
  *(v3 - 232) = v46;
  LODWORD(v46) = v6 ^ v45 ^ v18 ^ (2 * v18) & 0xC91894D0 ^ *(a2 + v46) ^ *(v11 + 4 * (*(a2 + v46) ^ 0x92));
  v47 = STACK[0x244];
  LODWORD(STACK[0x370]) = v35;
  LODWORD(v18) = v47 ^ v35;
  v48 = ((((v47 ^ v35 ^ 0x6E9AEA5E) >> (v24 & 8)) - ((2 * ((v47 ^ v35 ^ 0x6E9AEA5E) >> (v24 & 8))) & 0x3D675676) + 515091259) ^ 0x1EB3AB3B) >> (v24 & 8 ^ 8);
  v49 = *(&off_1010A0B50 + a1 - 27049);
  v50 = STACK[0x314];
  LODWORD(STACK[0x364]) = v46;
  LODWORD(v40) = v46 ^ v50;
  v51 = v49 - 888141843;
  LODWORD(v49) = *(v49 - 888141843 + 4 * (((v46 ^ v50) >> 24) ^ 0xA0)) + (((v46 ^ v50) >> 24) ^ 0xBD8F910A) - 20077176;
  v52 = STACK[0x334];
  LODWORD(STACK[0x368]) = v44;
  LODWORD(v19) = v44 ^ v52;
  v53 = *(&off_1010A0B50 + a1 - 27464) - 1150898858;
  LODWORD(v24) = *&v53[4 * (((v44 ^ v52) >> 8) ^ 7)];
  v54 = STACK[0x240];
  LODWORD(STACK[0x36C]) = v43;
  LODWORD(v7) = (v54 ^ v43);
  LODWORD(v28) = v7 ^ 0x68;
  LODWORD(v24) = ((v7 ^ 0x68) - 1144992900) ^ LODWORD(STACK[0x324]) ^ v24 ^ v49;
  v55 = *(&off_1010A0B50 + (a1 ^ 0x782B)) - 1096083539;
  LODWORD(v11) = v24 ^ *&v55[4 * (BYTE2(v18) ^ 0xD1)];
  v56 = a1;
  v57 = *(&off_1010A0B50 + (a1 ^ 0x7663)) - 1822476363;
  v58 = v11 ^ *&v57[4 * (v7 ^ 0x6C)];
  LODWORD(v7) = v19 ^ 0x8E;
  LODWORD(v13) = LODWORD(STACK[0x23C]) ^ (v7 - 1144992900) ^ *&v55[4 * (BYTE2(v40) ^ 0xCA)] ^ ((((v54 ^ v43) >> 24) ^ 0xBD8F9167) - 20077176 + *(v51 + 4 * (((v54 ^ v43) >> 24) ^ 0xCD))) ^ *&v57[4 * (v19 & 0xFB ^ 0x775322EA ^ (v19 & 4 | 0x77532260))] ^ *&v53[4 * (v48 ^ 0x99)];
  LODWORD(v11) = v18 ^ 0x5E;
  v59 = LODWORD(STACK[0x2C0]) ^ (v11 - 1144992900) ^ *&v55[4 * (((v54 ^ v43) >> 16) ^ 0x43)] ^ ((BYTE3(v19) ^ 0xBD8F91AF) - 20077176 + *(v51 + 4 * (BYTE3(v19) ^ 5))) ^ *&v57[4 * (v18 ^ 0x5A)] ^ __ROR4__(__ROR4__(*&v53[4 * (BYTE1(v40) ^ 0x6A)] ^ 0x20230A42, 29) ^ 0x5B489DFD, 3);
  v60 = v40;
  LODWORD(v40) = v40 ^ 0x38;
  v61 = LODWORD(STACK[0x2BC]) ^ (v40 - 1144992900) ^ *&v55[4 * (BYTE2(v19) ^ 0x5C)] ^ *&v53[4 * (((v54 ^ v43) >> 8) ^ 0x5C)] ^ *&v57[4 * (v60 ^ 0x3C)] ^ ((BYTE3(v18) ^ 0xBD8F910F) - 20077176 + *(v51 + 4 * (BYTE3(v18) ^ 0xA5)));
  LODWORD(v19) = v7 ^ LODWORD(STACK[0x340]) ^ v13;
  LODWORD(v7) = (v7 ^ LOBYTE(STACK[0x340]) ^ v13);
  v62 = *&v55[4 * (BYTE2(v61) ^ 0xC)] ^ LODWORD(STACK[0x300]) ^ ((HIBYTE(v58) ^ 0xBD8F917B) - 20077176 + *(v51 + 4 * (HIBYTE(v58) ^ 0xD1))) ^ *&v53[4 * (BYTE1(v59) ^ 0x53)] ^ ((v19 & 0x70 ^ 0x6D523D44 ^ ((v7 ^ 0xF2) - 1144992900) & 0x22400170) & ~(((v7 ^ 0xF2) - 1144992900) & 0x9980CE8F ^ v19 & 0x8F) | (((v7 ^ 0xF2) - 1144992900) & 0x9980CE8F ^ v19 & 0x8F) & 0x1080C28B) ^ *&v57[4 * (v7 ^ 0xF6)];
  LODWORD(v19) = (LODWORD(STACK[0x238]) ^ v59) ^ v11;
  LODWORD(v11) = v19 ^ 9;
  LODWORD(v18) = LODWORD(STACK[0x2B8]) ^ ((v19 ^ 9) - 1144992900) ^ *&v55[4 * (BYTE2(v58) ^ 0x4F)] ^ *&v53[4 * (BYTE1(v61) ^ 0x8A)] ^ *&v57[4 * (v19 ^ 0xD)] ^ ((BYTE3(v13) ^ 0xBD8F9191) - 20077176 + *(v51 + 4 * (BYTE3(v13) ^ 0x3B)));
  LODWORD(v40) = (LODWORD(STACK[0x234]) ^ v61) ^ v40;
  LODWORD(v7) = v40 ^ 0xEF;
  LODWORD(v40) = LODWORD(STACK[0x2B4]) ^ ((v40 ^ 0xEF) - 1144992900) ^ ((HIBYTE(v59) ^ 0xBD8F916E) - 20077176 + *(v51 + 4 * (HIBYTE(v59) ^ 0xC4))) ^ *&v53[4 * (BYTE1(v58) ^ 0xB5)] ^ *&v57[4 * (v40 ^ 0xEB)] ^ *&v55[4 * (BYTE2(v13) ^ 0x52)];
  LODWORD(v28) = v58 ^ v28;
  v63 = v28 ^ 0xF4;
  LODWORD(v19) = LODWORD(STACK[0x2B0]) ^ ((v28 ^ 0xF4) - 1144992900) ^ ((HIBYTE(v61) ^ 0xBD8F91F7) - 20077176 + *(v51 + 4 * (HIBYTE(v61) ^ 0x5D))) ^ *&v55[4 * (BYTE2(v59) ^ 0x21)] ^ *&v57[4 * (v28 ^ 0xF0)] ^ *&v53[4 * (BYTE1(v13) ^ 0x38)];
  v64 = v18 ^ v11;
  LODWORD(v28) = v64 ^ 0x7F;
  LODWORD(v13) = LODWORD(STACK[0x2AC]) ^ ((v64 ^ 0x7F) - 1144992900) ^ ((HIBYTE(v62) ^ 0xBD8F9167) - 20077176 + *(v51 + 4 * (HIBYTE(v62) ^ 0xCD))) ^ *&v55[4 * (((BYTE2(v19) ^ 0x3C) - (BYTE2(v19) ^ 0x77)) ^ 0xFFFFFFFE) + 4 * (BYTE2(v19) ^ 0x3C)] ^ *&v53[4 * (BYTE1(v40) ^ 0x1E)] ^ *&v57[4 * (v64 ^ 0x7B)];
  v65 = v40 ^ v7;
  LODWORD(v11) = v65 ^ 0x48;
  v66 = LODWORD(STACK[0x2A0]) ^ ((v65 ^ 0x48) - 1144992900) ^ ((BYTE3(v18) ^ 0xBD8F9190) - 20077176 + *(v51 + 4 * (BYTE3(v18) ^ 0x3A))) ^ *&v55[4 * (BYTE2(v62) ^ 0x5C)] ^ *&v53[4 * (BYTE1(v19) ^ 0x3B)] ^ *&v57[4 * (v65 ^ 0x4C)];
  LOBYTE(v7) = v19 ^ v63;
  v67 = (((2 * (v19 ^ v63)) & 0xF8 ^ 0x48) + ((v19 ^ v63) ^ 0xBBC0CB59)) ^ LODWORD(STACK[0x338]) ^ ((BYTE3(v40) ^ 0xBD8F91C5) - 20077176 + *(v51 + 4 * (BYTE3(v40) ^ 0x6F))) ^ *&v55[4 * (BYTE2(v18) ^ 0x85)] ^ *&v53[4 * (BYTE1(v62) ^ 0xCA)] ^ *&v57[4 * ((v19 ^ v63) ^ 0x21)];
  v68 = *&v55[4 * (BYTE2(v40) ^ 0x87)];
  LODWORD(v40) = v62 ^ 0x12;
  LODWORD(v19) = LODWORD(STACK[0x29C]) ^ (v40 - 1144992900) ^ v68 ^ ((BYTE3(v19) ^ 0xBD8F9118) - 20077176 + *(v51 + 4 * (BYTE3(v19) ^ 0xB2))) ^ *&v53[4 * (BYTE1(v18) ^ 0xC7)] ^ *&v57[4 * (v62 ^ 0x16)];
  LOBYTE(v58) = v66 ^ v11;
  v69 = STACK[0x348];
  LODWORD(v18) = LODWORD(STACK[0x298]) ^ (((v66 ^ v11) ^ 0x7F) - 1144992900) ^ *&v55[4 * (BYTE2(v19) ^ 0xE4)] ^ *&v53[4 * BYTE1(v67)] ^ *&v57[4 * ((v66 ^ v11) ^ 0x7B)] ^ ((BYTE3(v13) ^ 0xBD8F912C) - 20077176 + *(v51 + 4 * (BYTE3(v13) ^ 0x86)));
  LOBYTE(v7) = v67 ^ v7;
  v70 = LODWORD(STACK[0x294]) ^ ((v7 ^ 0x86) - 1144992900) ^ ((HIBYTE(v66) ^ 0xBD8F91C7) - 20077176 + *(v51 + 4 * (HIBYTE(v66) ^ 0x6D))) ^ *&v55[4 * (BYTE2(v13) ^ 0xF1)] ^ *&v53[4 * (BYTE1(v19) ^ 2)] ^ *&v57[4 * (v7 ^ 0x82)];
  LODWORD(v40) = v19 ^ v40 ^ 0xC1 ^ LODWORD(STACK[0x2EC]) ^ ((v19 ^ v40 ^ 0xC1) - 1144992900) ^ ((HIBYTE(v67) ^ 0xBD8F91EE) - 20077176 + *(v51 + 4 * (HIBYTE(v67) ^ 0x44))) ^ *&v53[4 * (BYTE1(v13) ^ 0xF3)] ^ *&v57[4 * (v19 ^ v40 ^ 0xC5)] ^ *&v55[4 * (((v66 ^ v11 ^ 0xA6FED77F) >> ((v66 ^ v11) & 0x10 ^ 0x10) >> ((v66 ^ v11) & 0x10)) ^ 0x4B)];
  LODWORD(v46) = (BYTE3(v19) ^ 0xBD8F91A8) - 20077176 + *(v51 + 4 * (BYTE3(v19) ^ 2));
  LODWORD(v28) = v13 ^ v28;
  LOBYTE(v19) = v28 ^ 0xCC;
  v71 = ((v28 ^ 0xCC) - 1144992900) ^ LODWORD(STACK[0x328]) ^ *&v55[4 * (BYTE2(v67) ^ 0xB2)] ^ v46 ^ *&v53[4 * (BYTE1(v66) ^ 0x4E)] ^ *&v57[4 * (v28 ^ 0xC8)];
  v72 = (LOBYTE(STACK[0x294]) ^ ((v7 ^ 0x86) + 124) ^ ((HIBYTE(v66) ^ 0xC7) - 120 + *(v51 + 4 * (HIBYTE(v66) ^ 0x6D))) ^ v55[4 * (BYTE2(v13) ^ 0xF1)] ^ v53[4 * (BYTE1(v19) ^ 2)] ^ v57[4 * (v7 ^ 0x82)] ^ v7);
  LOBYTE(v66) = v72 ^ 0xD;
  v73 = LODWORD(STACK[0x290]) ^ ((v72 ^ 0xD) - 1144992900) ^ *&v55[4 * (BYTE2(v71) ^ 0x8A)] ^ ((BYTE3(v18) ^ 0xBD8F91BC) - 20077176 + *(v51 + 4 * (BYTE3(v18) ^ 0x16))) ^ *&v57[4 * (v72 ^ 9)] ^ *&v53[4 * (BYTE1(v40) ^ 0x94)];
  LODWORD(v28) = LODWORD(STACK[0x288]) ^ ((v40 ^ 0x20) - 1144992900) ^ *&v55[4 * (BYTE2(v18) ^ 0x6F)] ^ *&v53[4 * (BYTE1(v71) ^ 0xF5)] ^ ((HIBYTE(v70) ^ 0xBD8F912E) - 20077176 + *(v51 + 4 * (HIBYTE(v70) ^ 0x84))) ^ *&v57[4 * (v40 ^ 0x24)];
  LOBYTE(v11) = v58 ^ LODWORD(STACK[0x354]) ^ v18;
  LODWORD(v46) = (v71 ^ v19);
  LODWORD(v19) = LODWORD(STACK[0x284]) ^ ((v46 ^ 0xA) - 1144992900) ^ *&v55[4 * (BYTE2(v70) ^ 0x93)] ^ *&v53[4 * (BYTE1(v18) ^ 0x64)] ^ *&v57[4 * (v46 ^ 0xE)] ^ ((((v40 ^ 0x40BC0D20) >> 24) ^ 0xBD8F9161) - 20077176 + *(v51 + 4 * (((v40 ^ 0x40BC0D20) >> 24) ^ 0xCB)));
  LODWORD(v7) = LODWORD(STACK[0x280]) ^ ((v11 ^ 0xB2) - 1144992900) ^ ((HIBYTE(v71) ^ 0xBD8F910A) - 20077176 + *(v51 + 4 * (HIBYTE(v71) ^ 0xA0))) ^ *&v53[4 * (BYTE1(v70) ^ 0xA7)] ^ *&v55[4 * (BYTE2(v40) ^ 0xF7)] ^ *&v57[4 * (v11 ^ 0xB6)];
  LODWORD(v40) = (LODWORD(STACK[0x228]) ^ v40 ^ 0x20 ^ LOBYTE(STACK[0x288]) ^ ((v40 ^ 0x20) + 124) ^ v55[4 * (BYTE2(v18) ^ 0x6F)] ^ v53[4 * (BYTE1(v71) ^ 0xF5)] ^ ((HIBYTE(v70) ^ 0x2E) - 120 + *(v51 + 4 * (HIBYTE(v70) ^ 0x84))) ^ v57[4 * (v40 ^ 0x24)]);
  v74 = v40 ^ 0x86;
  LODWORD(v13) = LODWORD(STACK[0x224]) ^ ((v40 ^ 0x86) - 1144992900) ^ *&v55[4 * (BYTE2(v7) ^ 0x96)] ^ (-(HIBYTE(v73) ^ 0x42706EB0) - 20077177 + *(v51 + 4 * (HIBYTE(v73) ^ 0xE5))) ^ *&v53[4 * ~(v19 >> 8)] ^ *&v57[4 * (v40 ^ 0x82)];
  LODWORD(v40) = v19 ^ v46 ^ 0xA;
  LODWORD(v18) = ((v40 ^ 0x70) - 1144992900) ^ LODWORD(STACK[0x308]) ^ *&v55[4 * (BYTE2(v73) ^ 0x74)] ^ *&v53[4 * (BYTE1(v7) ^ 0x10)] ^ ((BYTE3(v28) ^ 0xBD8F91DC) - 20077176 + *(v51 + 4 * (BYTE3(v28) ^ 0x76))) ^ *&v57[4 * (v40 ^ 0x74)];
  LOBYTE(v66) = LODWORD(STACK[0x230]) ^ v66 ^ v73;
  LODWORD(v46) = LODWORD(STACK[0x27C]) ^ *&v55[4 * (BYTE2(v28) ^ 0x42)] ^ *&v53[4 * (BYTE1(v73) ^ 0x90)] ^ ((BYTE3(v19) ^ 0xBD8F914F) - 20077176 + *(v51 + 4 * (BYTE3(v19) ^ 0xE5)));
  v75 = (v7 ^ v11);
  LODWORD(v11) = *&v57[4 * (v75 ^ 0xB2)];
  LODWORD(v46) = (v11 ^ 0xABE40324) + (v46 ^ 0xAFAB7B9A) + ((2 * ((v46 ^ 0x2FAB7B9A) & (v11 ^ 0x1822DEF8) ^ v46 & 0x33C6DDDC)) ^ 0xB8FB4CCF);
  LODWORD(v11) = v75 ^ 0xB6;
  v76 = (v46 + 1) ^ ((v75 ^ 0xB6) - 1144992900);
  LODWORD(v19) = LODWORD(STACK[0x270]) ^ ((v66 ^ 0x40) - 1144992900) ^ ((BYTE3(v7) ^ 0xBD8F911F) - 20077176 + *(v51 + 4 * (BYTE3(v7) ^ 0xB5))) ^ *&v55[4 * (BYTE2(v19) ^ 0x1C)] ^ *&v53[4 * (BYTE1(v28) ^ 0x8F)] ^ *&v57[4 * (v66 ^ 0x44)];
  LODWORD(v40) = v18 ^ v40;
  LODWORD(v28) = v40 ^ 9;
  v77 = LODWORD(STACK[0x268]) ^ ((v40 ^ 9) - 1144992900) ^ ((BYTE3(v13) ^ 0xBD8F91DC) - 20077176 + *(v51 + 4 * (BYTE3(v13) ^ 0x76))) ^ *&v55[4 * (BYTE2(v19) ^ 0x3F)] ^ *&v57[4 * (v40 ^ 0xD)] ^ *&v53[4 * (BYTE1(v76) ^ 0x9F)];
  LODWORD(v40) = v76 ^ v11;
  LODWORD(v7) = v40 ^ 0x1D;
  v78 = LODWORD(STACK[0x264]) ^ *&v55[4 * (BYTE2(v13) ^ 0xB1)] ^ ((BYTE3(v18) ^ 0xBD8F9105) - 20077176 + *(v51 + 4 * (BYTE3(v18) ^ 0xAF))) ^ *&v53[4 * (BYTE1(v19) ^ 0xFD)] ^ ((v40 ^ 0x1D) - 1144992900);
  LODWORD(v46) = *&v55[4 * (BYTE2(v18) ^ 0x27)] ^ LODWORD(STACK[0x318]) ^ 0x48F92A4F ^ ((HIBYTE(v76) ^ 0xBD8F913F) - 20077176 + *(v51 + 4 * (HIBYTE(v76) ^ 0x95)));
  LODWORD(v11) = *&v53[4 * (BYTE1(v13) ^ 3)] ^ 0xEB6E98CC;
  LODWORD(v44) = -v11 ^ (v11 - ((2 * v11) & 0xA9E45496) - 722326965) ^ 0xD4F22A4B ^ (v46 - (v46 ^ v11));
  v79 = (LODWORD(STACK[0x220]) ^ v66 ^ v19);
  LODWORD(v11) = v79 ^ 0x22;
  v80 = *&v57[4 * (v79 ^ 0x26)] ^ ((v79 ^ 0x22) - 1144992900) ^ (v44 + v46);
  LODWORD(v44) = (BYTE3(v19) ^ 0xBD8F9170) - 20077176 + *(v51 + 4 * (BYTE3(v19) ^ 0xDA));
  LODWORD(v46) = v13 ^ v74;
  LODWORD(v19) = *&v53[4 * (BYTE1(v18) ^ 0x72)];
  LODWORD(v18) = v46 ^ 0x26;
  LODWORD(v19) = LODWORD(STACK[0x260]) ^ ((v46 ^ 0x26) - 1144992900) ^ v44 ^ v19 ^ *&v57[4 * (v46 ^ 0x22)] ^ *&v55[4 * (BYTE2(v76) ^ 0x6D)];
  LODWORD(v44) = *&v57[4 * (v40 ^ 0x19)];
  BYTE1(v40) = BYTE1(v78) ^ BYTE1(v44);
  v81 = (v78 ^ v44) ^ v7;
  LOBYTE(v13) = v81 ^ 0x7C;
  v82 = LODWORD(STACK[0x258]) ^ ((v81 ^ 0x7C) - 1144992900) ^ *&v55[4 * (BYTE2(v19) ^ 0xD5)] ^ ((HIBYTE(v77) ^ 0xBD8F91BB) - 20077176 + *(v51 + 4 * (HIBYTE(v77) ^ 0x11))) ^ *&v57[4 * (v81 ^ 0x78)] ^ *&v53[4 * (BYTE1(v80) ^ 0x47)];
  LODWORD(v46) = v80 ^ v11;
  v83 = *&v53[4 * (BYTE1(v19) ^ 0x1B)] ^ LODWORD(STACK[0x2FC]) ^ *&v55[4 * (BYTE2(v77) ^ 0xCE)] ^ ((((v78 ^ ~v44) >> 24) ^ 0xBD8F9161) - 20077176 + *(v51 + 4 * (((v78 ^ ~v44) >> 24) ^ 0xCB))) ^ ((v46 ^ 0x4C) - 1144992900) ^ *&v57[4 * (v46 ^ 0x48)];
  LODWORD(v11) = v19 ^ v18;
  LODWORD(v18) = LODWORD(STACK[0x254]) ^ ((v11 ^ 0x89) - 1144992900) ^ *&v55[4 * (((v78 ^ v44) >> 16) ^ 0x23)] ^ *&v57[4 * (v11 ^ 0x8D)] ^ *&v53[4 * (BYTE1(v77) ^ 0xFB)] ^ ((HIBYTE(v80) ^ 0xBD8F9188) - 20077176 + *(v51 + 4 * (HIBYTE(v80) ^ 0x22)));
  LODWORD(v44) = (BYTE3(v19) ^ 0xBD8F9186) - 20077176 + *(v51 + 4 * (BYTE3(v19) ^ 0x2C));
  LOBYTE(v19) = v77 ^ v28 ^ 0xEC;
  LODWORD(v7) = LODWORD(STACK[0x218]) ^ ((v77 ^ v28 ^ 0xEC) - 1144992900) ^ *&v53[4 * (BYTE1(v40) ^ 0xC0)] ^ *&v57[4 * (v77 ^ v28 ^ 0xE8)] ^ (v44 + LODWORD(STACK[0x21C]) - 2 * (v44 & LODWORD(STACK[0x21C]))) ^ *&v55[4 * (BYTE2(v80) ^ 0xA8)];
  LODWORD(v28) = (HIBYTE(v82) ^ 0xBD8F91D5) - 20077176 + *(v51 + 4 * (HIBYTE(v82) ^ 0x7F));
  v84 = (v83 ^ v46 ^ 0x4C);
  v85 = ((2 * (v83 ^ v46 ^ 0x4C)) & 0xF8 ^ 0x28) + (v84 ^ 0xBBC0CBE8);
  LODWORD(v40) = (HIBYTE(v83) ^ 0xBD8F9120) - 20077176 + *(v51 + 4 * (HIBYTE(v83) ^ 0x8A));
  v86 = v18 ^ v11;
  LODWORD(v11) = -(BYTE3(v18) ^ 0x42706E07) - 20077177 + *(v51 + 4 * (BYTE3(v18) ^ 0x52));
  LODWORD(v44) = *&v55[4 * (BYTE2(v83) ^ 0x16)];
  LODWORD(v46) = *(v51 + 4 * (BYTE3(v7) ^ 9));
  LODWORD(v51) = *&v55[4 * (BYTE2(v7) ^ 0x9D)];
  LODWORD(v41) = *&v55[4 * (BYTE2(v82) ^ 0xD6)];
  v87 = *&v55[4 * (BYTE2(v18) ^ 0xD4)];
  LOBYTE(v55) = v82 ^ v13;
  LODWORD(v33) = (v7 ^ v19);
  LODWORD(v18) = LODWORD(STACK[0x2F0]) ^ v84 ^ v85 ^ v51 ^ v28 ^ *&v53[4 * (BYTE1(v18) ^ 0xBA)] ^ *&v57[4 * (v84 ^ 0x90)] ^ 0x778CC9DF;
  LODWORD(v28) = LODWORD(STACK[0x250]) ^ (((v82 ^ v13) ^ 0x5A) - 1144992900) ^ ((BYTE3(v7) ^ 0xBD8F91A3) - 20077176 + v46) ^ v87 ^ *&v53[4 * (BYTE1(v83) ^ 0x33)] ^ *&v57[4 * ((v82 ^ v13) ^ 0x5E)];
  LODWORD(v19) = LODWORD(STACK[0x330]) ^ v86 ^ 0x9A ^ ((v86 ^ 0x9A) - 1144992900) ^ v41 ^ *&v53[4 * (BYTE1(v7) ^ 0x6F)] ^ v40 ^ *&v57[4 * (v86 ^ 0x9E)] ^ 0xDFBD4C0A;
  LODWORD(v51) = LODWORD(STACK[0x33C]) ^ v33 ^ 0x73 ^ ((v33 ^ 0x73) - 1144992900) ^ *&v53[4 * (BYTE1(v82) ^ 0xBA)] ^ *&v57[4 * (v33 ^ 0x77)] ^ v11 ^ 0x202F2C95 ^ ((v44 ^ (2034138287 - (v44 ^ 0x3F5DE1A5)) ^ 0x46639D0A ^ (-1180933386 - (((v44 ^ 0x5720B5F3) - 1461761523) ^ ((v44 ^ 0x87921CD0) + 2020467504) ^ ((v44 ^ 0x96D13429) + 1764674519)))) + 2034138287);
  v88 = *(&off_1010A0B50 + v56 - 27240) - 181127882;
  v89 = *&v88[4 * BYTE3(v18)];
  LODWORD(v13) = *&v88[4 * BYTE3(v19)];
  LODWORD(v57) = *&v88[4 * BYTE3(v51)];
  v90 = *&v88[4 * (BYTE3(v28) ^ 0xA)];
  v91 = *(&off_1010A0B50 + (v56 ^ 0x7772)) - 1638712514;
  LODWORD(v40) = *&v91[4 * (BYTE2(v28) ^ 0x72)];
  LODWORD(v88) = *&v91[4 * BYTE2(v18)];
  LODWORD(v7) = *&v91[4 * BYTE2(v19)];
  v92 = *&v91[4 * BYTE2(v51)];
  v93 = *(&off_1010A0B50 + (v56 ^ 0x75FA)) - 624449418;
  LODWORD(v53) = *&v93[4 * BYTE1(v51)];
  LODWORD(v41) = *&v93[4 * (BYTE1(v28) ^ 0xEF)];
  LODWORD(v11) = *&v93[4 * BYTE1(v18)];
  v94 = *&v93[4 * BYTE1(v19)];
  LOBYTE(v93) = v55 ^ LODWORD(STACK[0x204]);
  v95 = *(&off_1010A0B50 + (v56 ^ 0x7561)) - 1012291383;
  LODWORD(v19) = *&v95[4 * v19];
  LODWORD(v55) = *&v95[4 * v51];
  LODWORD(v51) = *&v95[4 * (LODWORD(STACK[0x214]) ^ (v93 ^ v28))];
  LODWORD(v93) = *&v95[4 * v18];
  LODWORD(v55) = LODWORD(STACK[0x208]) ^ LODWORD(STACK[0x2C4]) ^ *(v3 - 140) ^ v13 ^ v88 ^ v41 ^ (v41 >> 4) ^ (v41 >> 7) ^ v55;
  v96 = *(&off_1010A0B50 + (v56 ^ 0x66D4)) - 1599019382;
  *(v69 + *(v3 - 256)) = (v96[BYTE1(v55) ^ 0x74] + 69) ^ 0x40;
  LODWORD(v28) = LODWORD(STACK[0x210]) ^ LODWORD(STACK[0x200]) ^ *(v3 - 144) ^ v90 ^ v94 ^ v92 ^ (v94 >> 4) ^ (v94 >> 7) ^ v93;
  v97 = *(&off_1010A0B50 + v56 - 27384) - 2031685594;
  *(v69 + STACK[0x388]) = (v97[BYTE3(v28) ^ 0xE3] + (BYTE3(v28) ^ 0x87) - 65) ^ 0x75;
  LODWORD(v7) = LODWORD(STACK[0x20C]) ^ *(v3 - 136) ^ v7 ^ v11 ^ v57 ^ (v11 >> 4) ^ (v11 >> 7) ^ v51;
  v98 = *(&off_1010A0B50 + v56 - 29429) - 454540223;
  *(v69 + *(v3 - 208)) = v98[v7 ^ 0x15] ^ 0x14;
  v99 = *(&off_1010A0B50 + (v56 ^ 0x7CEC)) - 237874990;
  LODWORD(v88) = v99[BYTE2(v55) ^ 0x59] - 21;
  *(v69 + STACK[0x378]) = v88 ^ 0x46 ^ ((v88 >> 4) & 9 | 0x42);
  v100 = LODWORD(STACK[0x24C]) ^ *(v3 - 132) ^ v89 ^ v40 ^ v53 ^ (v53 >> 4) ^ (v53 >> 7) ^ v19;
  LOWORD(v88) = v99[BYTE2(v28) ^ 0xA8] - 21;
  *(v69 + *(v3 - 192)) = v88 ^ 0x9C ^ (((v88 & 0x3F0) >> 4) | 0xB6);
  LODWORD(v88) = v99[BYTE2(v100) ^ 6] - 21;
  *(v69 + STACK[0x380]) = v88 ^ ((v88 >> 4) & 9 | 0xE0) ^ 0x55;
  LOBYTE(v88) = v96[BYTE1(v7) ^ 0x10] + 69;
  *(v69 + *(v3 - 172)) = (((((v88 >> 6) | (4 * v88)) ^ 0xD5) >> 2) | ((((v88 >> 6) | (4 * v88)) ^ 0xD5) << 6)) ^ 0x41;
  *(v69 + *(v3 - 184)) = (v96[BYTE1(v28) ^ 0xD1] + 69) ^ 0x5F;
  LODWORD(v88) = v99[BYTE2(v7) ^ 0x1FLL] - 21;
  *(v69 + *(v3 - 240)) = v88 ^ 0xCE ^ ((v88 >> 4) & 9 | 0xF0);
  *(v69 + *(v3 - 248)) = ((BYTE3(v7) ^ 0x34) + v97[BYTE3(v7) ^ 0x50] - 65) ^ 0xE7;
  *(v69 + *(v3 - 216)) = ((BYTE3(v55) ^ 0xF0) + v97[(v55 >> 24) ^ 0x94] - 65) ^ 0xFE;
  *(v69 + *(v3 - 168)) = ((HIBYTE(v100) ^ 0x1E) + v97[HIBYTE(v100) ^ 0x7ALL] - 65) ^ 0x31;
  *(v69 + *(v3 - 232)) = (v96[BYTE1(v100) ^ 0xD5] + 69) ^ 0x39;
  *(v69 + *(v3 - 200)) = v98[v28 ^ 0xFCLL] ^ 0x16;
  *(v69 + *(v3 - 160)) = v98[v100 ^ 0xCCLL] ^ 0x55;
  LODWORD(v88) = (((*(v3 - 220) ^ 0x401A05F1) - 1075447281) ^ ((*(v3 - 220) ^ 0xBD567172) + 1118408334) ^ ((*(v3 - 220) ^ 0x98A07BAC) + 1734313044)) - 1815678080;
  v101 = (v88 ^ 0x903493BF) & (2 * (v88 & 0xD2251BBF)) ^ v88 & 0xD2251BBF;
  LODWORD(v93) = ((2 * (v88 ^ 0x10349191)) ^ 0x8423145C) & (v88 ^ 0x10349191) ^ (2 * (v88 ^ 0x10349191)) & 0xC2118A2E;
  LODWORD(v96) = v93 ^ 0x42108A22;
  LODWORD(v93) = (v93 ^ 0x8000000F) & (4 * v101) ^ v101;
  v102 = ((4 * v96) ^ 0x84628B8) & v96 ^ (4 * v96) & 0xC2118A28;
  LODWORD(v93) = (v102 ^ 0x820) & (16 * v93) ^ v93;
  v103 = ((16 * (v102 ^ 0xC2118206)) ^ 0x2118A2E0) & (v102 ^ 0xC2118206) ^ (16 * (v102 ^ 0xC2118206)) & 0xC2118A20;
  LODWORD(v93) = v93 ^ 0xC2118A2E ^ (v103 ^ 0x108200) & (v93 << 8);
  LODWORD(v88) = v88 ^ (2 * ((v93 << 16) & 0x42110000 ^ v93 ^ ((v93 << 16) ^ 0xA2E0000) & (((v103 ^ 0xC201080E) << 8) & 0x42110000 ^ 0x42110000 ^ (((v103 ^ 0xC201080E) << 8) ^ 0x118A0000) & (v103 ^ 0xC201080E))));
  LODWORD(v96) = STACK[0x248];
  LOBYTE(v93) = v98[v55 ^ 6];
  v104 = LODWORD(STACK[0x248]) < 0x53753F7A;
  *(v69 + *(v3 - 152)) = v93 ^ 0xBB;
  LODWORD(v93) = (((v88 ^ 0x94E97EB0) + 1560052100) ^ ((v88 ^ 0xE8CDC816) + 551040806) ^ ((v88 ^ 0x2E22B945) - 432585097)) - 1184805207;
  v105 = v104 ^ (v93 < 0x53753F7A);
  v106 = v93 < v96;
  if (v105)
  {
    v106 = v104;
  }

  return (*(STACK[0x358] + 8 * ((59923 * v106) ^ v56)))();
}

uint64_t sub_100275674(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v14.val[0].i64[0] = (v10 + a2 - 1) & 0xF;
  v14.val[0].i64[1] = (v10 + a2 + 14) & 0xF;
  v14.val[1].i64[0] = (v10 + a2 + 13) & 0xF;
  v14.val[1].i64[1] = (v10 + a2 + 12) & 0xF;
  v14.val[2].i64[0] = (v10 + a2 + (v11 ^ 2)) & 0xF;
  v14.val[2].i64[1] = (v10 + a2 + 10) & 0xF;
  v14.val[3].i64[0] = (v10 + a2 + 9) & 0xF;
  v14.val[3].i64[1] = (v10 + a2) & 0xF ^ 8;
  *(a3 + a2) = veor_s8(veor_s8(veor_s8(*(v7 + v14.val[0].i64[0] - 7), *(a3 + a2)), veor_s8(*(v9 + v14.val[0].i64[0] - 7), *(v14.val[0].i64[0] + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a6), a7)));
  return (*(v12 + 8 * (((a1 != a2) * a5) ^ a4)))();
}

uint64_t sub_1002757E8(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF10] + 1612;
  v3 = STACK[0x8CD8];
  *(v3 + 608) = 0x391919BA322E6344;
  *(v3 + 616) = 356632020;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, 3923101457);
}

uint64_t sub_100275830()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x74BE ^ (v0 + 25419))))();
}

uint64_t sub_1002758C0()
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
  STACK[0xC2F0] = 0;
  STACK[0xC2F8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC2F0] | v10);
  *(&STACK[0xC2F0] | v10) = 0;
  LOBYTE(STACK[0xC2F7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC2F0] | v12);
  *(&STACK[0xC2F0] | v12) = STACK[0xC2F6];
  LOBYTE(STACK[0xC2F6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC2F0] | v14);
  *(&STACK[0xC2F0] | v14) = STACK[0xC2F5];
  LOBYTE(STACK[0xC2F5]) = v15;
  v16 = STACK[0xC2F0];
  LOBYTE(STACK[0xC2F0]) = STACK[0xC2F4];
  LOBYTE(STACK[0xC2F4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC2F0] | v17);
  *(&STACK[0xC2F0] | v17) = STACK[0xC2F3];
  LOBYTE(STACK[0xC2F3]) = v18;
  v19 = STACK[0xC2F1];
  LOBYTE(STACK[0xC2F2]) = STACK[0xC2F0];
  LOWORD(STACK[0xC2F0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC2F0] = vmla_s32(v22, STACK[0xC2F0], vdup_n_s32(0x1000193u));
  STACK[0xC2F8] ^= STACK[0xC2F0];
  STACK[0xC2F8] = vmul_s32(vsub_s32(STACK[0xC2F8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC2FA];
  LOWORD(STACK[0xC2F9]) = STACK[0xC2F8];
  LOBYTE(STACK[0xC2F8]) = v23;
  v24 = (&STACK[0xC2F8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC2FB];
  LOBYTE(STACK[0xC2FB]) = v19;
  LOBYTE(v24) = STACK[0xC2F8];
  LOBYTE(STACK[0xC2F8]) = STACK[0xC2FC];
  LOBYTE(STACK[0xC2FC]) = v24;
  v25 = (&STACK[0xC2F8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC2FD];
  LOBYTE(STACK[0xC2FD]) = v24;
  v26 = (&STACK[0xC2F8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC2FE];
  LOBYTE(STACK[0xC2FE]) = v25;
  v27 = (&STACK[0xC2F8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC2FF];
  LOBYTE(STACK[0xC2FF]) = v28;
  v29 = STACK[0xC2F8];
  v30 = (553300517 * STACK[0xC2F8]) ^ v9;
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
  *STACK[0x940] = STACK[0xC2F8];
  return (*(STACK[0xF18] + 8 * (v1 - 471)))(v47, v48);
}

uint64_t sub_100275D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xF10] - 34750;
  LODWORD(STACK[0x3AC4]) += 4;
  return (*(STACK[0xF18] + 8 * (v6 ^ 0x1506)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_100275E3C()
{
  v0 = STACK[0xF10] - 34412;
  v1 = STACK[0x6FC8];
  LODWORD(STACK[0x9A20]) = LODWORD(STACK[0x6FC8]) + 1371822727;
  v2 = STACK[0x2C78] + (v1 + 17);
  v3 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (v0 ^ 0x1DBF)))(v2);
}

uint64_t sub_10027615C()
{
  v1 = STACK[0xF10] - 25217;
  v2 = STACK[0x1800];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16238)))(*(STACK[0x1800] + 688));
  *(v2 + 688) = 0;
  *(v2 + 696) = v0;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1002761B4()
{
  v0 = STACK[0xF10] - 4817;
  v1 = *STACK[0xAC70] + (*STACK[0x4680] + ((STACK[0xF10] + 9) | 0x13) - 100);
  *STACK[0xAC70] = v1;
  return (*(STACK[0xF18] + 8 * ((30 * (v1 - 329966734 > (*STACK[0xAC68] - 66))) ^ v0)))();
}

uint64_t sub_100276244()
{
  v0 = (STACK[0xF10] - 1789631666) & 0x6AABB3FF;
  v1 = STACK[0xF10] - 31631;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0xA728) + v1)))();
}

uint64_t sub_1002762AC()
{
  v0 = STACK[0xF10] + 14016;
  v1 = STACK[0x6F68];
  *(STACK[0x2C78] + STACK[0xF10] - 35635 + LODWORD(STACK[0x6FC8])) = *(STACK[0x6F68] + 124) ^ 0xA8;
  STACK[0x3D68] = v1 + 0xA639E7FDEF7D100;
  return (*(STACK[0xF18] + 8 * ((1017 * (*(v1 + 152) == -371865839)) ^ v0)))();
}

uint64_t sub_100276430@<X0>(uint64_t a1@<X1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, uint64_t a8@<X8>)
{
  if (v10 + 75 >= (a1 ^ 0x4A12uLL))
  {
    v24 = -1821559324;
  }

  else
  {
    v24 = -1821559244;
  }

  v25 = *(*(v13 + 8 * v20) + (*(a8 + (v24 + v22)) - 7) - 1023549990);
  if ((v10 + 55) >= 0x50)
  {
    v26 = -1821559344;
  }

  else
  {
    v26 = -1821559264;
  }

  v27 = v9 + v12 + v25 + *(*(v13 + 8 * v21) + (*(a8 + (v26 + v22)) - 7) - 173068599);
  v28 = (v27 ^ v15) & (2 * (v27 & v14)) ^ v27 & v14;
  v29 = ((2 * (v27 ^ 0xE5)) ^ v16) & (v27 ^ 0xE5) ^ (2 * (v27 ^ 0xE5)) & v19;
  v30 = v27 ^ (2 * (((4 * (v29 ^ v23)) & a2 ^ ((4 * (v29 ^ v23)) ^ v18) & (v29 ^ v23) ^ 0x40) & (16 * ((v29 ^ v8) & (4 * v28) ^ v28)) ^ (v29 ^ v8) & (4 * v28) ^ v28));
  v31 = *(a8 + v10);
  v32 = v31 & a3 ^ 0x3C;
  v33 = v30 ^ v31 ^ (2 * ((v31 ^ 0x78) & (2 * ((v31 ^ 0x78) & (2 * ((v31 ^ 0x78) & (2 * ((v31 ^ 0x78) & (2 * ((v31 ^ 0x78) & (2 * ((v31 ^ 0x78) & (2 * v31) & a4 ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32));
  *(a8 + v10) = (((v33 ^ a5) + 101) ^ ((v33 ^ a7) - 48) ^ ((v33 ^ a6) + 62)) + 112;
  return (*(STACK[0xF18] + 8 * (((v10 == 79) * v17) ^ v11)))();
}

uint64_t sub_100276618()
{
  v0 = STACK[0xF10] + 577;
  STACK[0x72F0] = STACK[0xAA10];
  LODWORD(STACK[0x3110]) = -371865835;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100276654@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0xA2C0] = a1;
  LODWORD(STACK[0xA2C8]) = a2;
  LODWORD(STACK[0xA2CC]) = *v2;
  LODWORD(STACK[0x10ED8]) = (v3 + 12701) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0x57A031A6) - (&STACK[0x10000] + 3800) - 735058131) ^ 0x1AD1D5F7));
  STACK[0x10EE8] = &STACK[0xC401];
  LOWORD(STACK[0x10EE0]) = 23473 * ((((2 * (&STACK[0x10000] + 3800)) | 0x31A6) - (&STACK[0x10000] + 3800) - 6355) ^ 0xD5F7) + 18068;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v3 + 51497)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((((v3 - 358) | 0x8B19) - 28127) ^ v3)))(v5);
}

uint64_t sub_100276748()
{
  v1 = STACK[0xF10];
  v2 = (2 * STACK[0xF10]) ^ 0x14608;
  v3 = STACK[0xF10] - 15037;
  v4 = STACK[0xAB70];
  v5 = STACK[0xAB98];
  v6 = LODWORD(STACK[0xABE4]);
  v7 = STACK[0xF10] + 679158052;
  v8 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x5132B5EF) - ((&STACK[0x10000] + 3800) | 0xAECD4A10) - 1362277872) ^ 0xBE649F36);
  STACK[0x10EF8] = STACK[0xAB80];
  LODWORD(STACK[0x10EDC]) = v7 ^ v8;
  STACK[0x10EE8] = v5;
  STACK[0x10EE0] = v4;
  LOWORD(STACK[0x10ED8]) = -28075 * ((((&STACK[0x10000] + 3800) | 0xB5EF) - ((&STACK[0x10000] + 3800) | 0x4A10) + 18960) ^ 0x9F36) + 3787;
  LODWORD(STACK[0x10EF0]) = v8 + 1599993265 * v6 + 1244298177;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41CB)))(&STACK[0x10ED8]);
  v11 = ((v6 << (v2 ^ 0x7Fu)) & 0x1FD6DFD5ALL) + (v6 ^ 0x7F3FDE6FFEB6FEADLL);
  STACK[0x9B58] = v11 - 0x6CC4D23C98116ECFLL;
  v12 = (((LODWORD(STACK[0x18F4]) ^ 0xE251E4E711A70D77) + 0x1DAE1B18EE58F289) ^ ((LODWORD(STACK[0x18F4]) ^ 0x91861F49FAA3CD4BLL) + 0x6E79E0B6055C32B5) ^ ((LODWORD(STACK[0x18F4]) ^ 0x73D7FBAE02D1072DLL) - 0x73D7FBAE02D1072DLL)) + 0x1AE8329B5;
  v13 = ((v11 - 0x7F3FDE6F3A099BF5) < 0xC4AD62A4) ^ (v12 < 0xC4AD62A4);
  v14 = v11 - 0x7F3FDE6F3A099BF5 > v12;
  if (v13)
  {
    v14 = (v11 - 0x7F3FDE6F3A099BF5) < 0xC4AD62A4;
  }

  if (v14)
  {
    v15 = 371891407;
  }

  else
  {
    v15 = STACK[0xABDC];
  }

  return (*(v9 + 8 * ((65071 * (v15 == v0)) ^ v3)))(v10);
}

uint64_t sub_100276A54()
{
  v2 = LODWORD(STACK[0x3908]) - 1453455848;
  v3 = (((v1 ^ 0x1EB95DB4) - 515464628) ^ ((v1 ^ 0x58CF1CE5) - 1489968357) ^ ((((v0 ^ 0x9222) - 1348241712) ^ v1) + 1348237760)) - 1825321691;
  v4 = (v2 < 0xA95E0614) ^ (v3 < 0xA95E0614);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < 0xA95E0614;
  }

  return (*(STACK[0xF18] + 8 * ((47 * v5) ^ v0)))();
}

uint64_t sub_100276B1C()
{
  v0 = (STACK[0xF10] + 1078956266) | 0xA5A00292;
  v1 = STACK[0xF10] - 31676;
  v2 = STACK[0x3080];
  *(v2 + 24) = 3923101457;
  *(v2 + 232) = 0;
  v3 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 + 437250735 + v0)))();
}

uint64_t sub_100276B9C(uint64_t a1, int a2)
{
  v9 = (((a2 ^ 0x45028F3D) - 1157795645) ^ ((a2 ^ 0x7BFF4CD6) - 2080328918) ^ (((v2 + 1074546406) | 0x1223058A) + (a2 ^ 0xD72804FA) - 693603000)) + 1225011454;
  v10 = ((v9 ^ 0xB28E4B91) + 308272513) ^ v9 ^ ((v9 ^ 0x7146EE43) - 778602413) ^ ((v9 ^ 0x61983353) - 1052138173) ^ ((v9 ^ 0xFD7EFF6F) + 1571776895);
  v11 = v3 + v4 + (v10 ^ 0x5F2E69EE);
  v12 = 1864610357 * ((v11 ^ *(*STACK[0xE50] + (*v7 & 0x72D7ACF8))) & 0x7FFFFFFF);
  v13 = 1864610357 * (v12 ^ HIWORD(v12));
  *v11 = *(STACK[0x8E8] + (v13 >> 24)) ^ *(v5 + (v10 ^ 0x5F2E69EE)) ^ *((v13 >> 24) + v8 + 2) ^ *((v13 >> 24) + v6 + 1) ^ v13 ^ (-71 * BYTE3(v13));
  return (*(STACK[0xF18] + 8 * ((211 * (v10 == 1596877294)) ^ v2)))();
}

uint64_t sub_100276DF8()
{
  v1 = STACK[0x3480];
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v1;
  LODWORD(STACK[0x35EC]) = 1693393390;
  return (*(STACK[0xF18] + 8 * (v0 - 25486)))();
}

uint64_t sub_100276E38()
{
  *STACK[0x6960] = -371865839;
  STACK[0x1D38] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100276F6C()
{
  v0 = STACK[0xF10] - 5321;
  v1 = STACK[0xA0B8];
  *(STACK[0xAE80] + v1 + ((STACK[0xF10] - 20471) | 0x490) - 0xA8959218FC83FF1) = 0;
  *(STACK[0x4438] + 24) = v1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100276FDC(void *a1)
{
  if (a1[4])
  {
    v3 = (a1[3] | a1[6]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * (((v1 + 1) ^ v4) & 1 ^ v1)))();
}

uint64_t sub_100277060(int a1, uint64_t a2, double a3, __n128 a4, __n128 a5, __n128 a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, int8x16_t *a12, uint64_t a13, uint64_t a14, int a15)
{
  v20 = a14 & v18;
  v22.i64[0] = vqtbl4q_s8(*(&a4 - 1), a7).u64[0];
  *&v22.i64[1] = a8;
  v23 = vrev64q_s8(veorq_s8(veorq_s8(*a12, *(v16 + (a14 & v18) - 15)), veorq_s8(*((a14 & v18) + v17 - 14), *((a14 & v18) + v15 - 8))));
  v24 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v23, v23, 8uLL), a10), vmulq_s8(v22, a9)));
  *a12 = vextq_s8(v24, v24, 8uLL);
  return (*(v19 + 8 * (((a13 == 0) * a15) ^ a1)))();
}

uint64_t sub_1002770E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x490]) = a68;
  LODWORD(STACK[0x47C]) = v74;
  LODWORD(STACK[0x480]) = v73;
  LODWORD(STACK[0x484]) = v75;
  LODWORD(STACK[0x488]) = a71;
  v77 = (LODWORD(STACK[0x4EC]) ^ (31 * (a73 ^ 0x22E1) + 16766644) & a68) == 14010129;
  return (*(v76 + 8 * (((4 * (((a73 + 1) ^ v77) & 1)) & 0xBF | ((((a73 + 1) ^ v77) & 1) << 6)) ^ (a73 + 25571))))();
}

uint64_t sub_10027715C()
{
  *(v8 + v6) = *(v3 + (v6 & 0xF)) ^ *(v2 + v6) ^ *(v5 + (v6 & 0xF)) ^ *((v6 & 0xF) + v4 + 7) ^ ((v6 & 0xF) * ((37 * (v1 ^ 0x80)) ^ 3));
  v10 = v0 < v7;
  if (v10 == v6 + 1 > 0x16230DC3)
  {
    v10 = v6 - 371396035 < v0;
  }

  return (*(v9 + 8 * ((55414 * v10) ^ v1)))();
}

uint64_t sub_1002772CC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, uint64_t a36, uint64_t a37)
{
  v45 = v41 + a1 + 1403822833 + LODWORD(STACK[0x2F4]) - 915401260;
  v46 = ((v45 & 0xD9C95DAB) << (v40 - 47)) & (v45 ^ 0x9DC559AA) ^ v45 & 0xD9C95DAB;
  v47 = ((2 * (v45 ^ 0x1D4542EE)) ^ 0x89183E8A) & (v45 ^ 0x1D4542EE) ^ (2 * (v45 ^ 0x1D4542EE)) & ((v40 ^ 0x7001) - 997476845);
  v48 = v45 ^ LODWORD(STACK[0x2F8]) ^ ((LODWORD(STACK[0x2F8]) ^ 0xE6FFAD89) + 915412204) ^ ((LODWORD(STACK[0x2F8]) ^ 0x213E7ADF) - 246299714) ^ ((LODWORD(STACK[0x2F8]) ^ 0x97AE6EBC) + 1203886047) ^ ((LODWORD(STACK[0x2F8]) ^ 0x7FFFFF77) - 1349499370) ^ (2 * ((((4 * (v47 ^ 0x44840145)) ^ 0x12307D10) & (v47 ^ 0x44840145) ^ (4 * (v47 ^ 0x44840145)) & 0x448C1F40) & (16 * (v47 & (4 * v46) ^ v46)) ^ v47 & (4 * v46) ^ v46));
  v49 = STACK[0x308];
  v50 = v37 - LODWORD(STACK[0x300]) + LODWORD(STACK[0x3E4]) + 1498127009 + (((v48 ^ 0x496AD23A) - 1893657731) ^ ((v48 ^ 0xA3F0C05A) + 1706754333) ^ ((v48 ^ 0x14CB0956) - 763312111));
  v51 = *(v42 + 4 * a32);
  v52 = (v51 ^ 0xCC4F307A) & (2 * (v51 & v43)) ^ v51 & v43;
  v53 = ((2 * (v51 ^ 0xECCB42FC)) ^ 0x7949F73E) & (v51 ^ 0xECCB42FC) ^ (2 * (v51 ^ 0xECCB42FC)) & 0x3CA4FB9E;
  v54 = v51 ^ (2 * (((4 * v53) & 0x3CA4FB98 ^ 0x3080EA13 ^ ((4 * v53) ^ 0x7293EE7C) & v53) & (16 * ((v53 ^ 0xE31C) & (4 * v52) ^ v52)) ^ (v53 ^ 0xE31C) & (4 * v52) ^ v52)) ^ v50 ^ ((v50 ^ 0xF3FABF3D) - 856425618) ^ ((v50 ^ 0xAC9BB0B9) - 1819085590) ^ ((v50 ^ 0x60644AD5) + 1600982662) ^ ((v50 ^ 0xFFF3FEFE) - 1057310033);
  v55 = (LODWORD(STACK[0x30C]) ^ 0xDD4FB04B) & (2 * (STACK[0x30C] & v43)) ^ STACK[0x30C] & v43;
  v56 = ((2 * (LODWORD(STACK[0x30C]) ^ 0xFD5EE0CB)) ^ 0x5A62B350) & (LODWORD(STACK[0x30C]) ^ 0xFD5EE0CB) ^ (2 * (LODWORD(STACK[0x30C]) ^ 0xFD5EE0CB)) & 0x2D3159A8;
  v57 = v56 ^ 0xA8;
  LOBYTE(v56) = v56 & (4 * v55) ^ v55;
  LOBYTE(v55) = (4 * v57) & 0xA0 ^ ((4 * v57) ^ 0xA0) & v57;
  v58 = *(v42 + 4 * a28);
  v67 = (LODWORD(STACK[0x30C]) ^ (2 * ((v55 ^ 0x20) & (16 * v56) ^ v56))) & 0x7F ^ 0x63;
  v59 = (((-100 - v38) ^ (v38 - 98) ^ (((v38 - 98) ^ v44) - 33) ^ (((v38 - 98) ^ 0x24) - 30) ^ (((v38 - 98) ^ 0xFA) + 64)) ^ 0x3A) + *(v42 + 4 * a29) + v39 - v58 + 3 * ((a35 + LODWORD(STACK[0x30C]) + v43) % a31) + 2124212643 + (((v54 ^ 0xBF82394B) - 1436721218) ^ ((v54 ^ 0x1DDDD286) + 134394993) ^ ((v54 ^ 0xC3CEE901) - 703492104)) - v67 + 8 * v67 + 535675314;
  v60 = (v59 ^ 0x16906260) & (2 * (v59 & 0xA4D28275)) ^ v59 & 0xA4D28275;
  v61 = ((2 * (v59 ^ 0x1E3066AA)) ^ 0x75C5C9BE) & (v59 ^ 0x1E3066AA) ^ (2 * (v59 ^ 0x1E3066AA)) & 0xBAE2E4DE;
  v62 = v59 ^ (2 * (((4 * (v61 ^ 0x8A222441)) & 0x3AE2E4D0 ^ 0x2A828050 ^ ((4 * (v61 ^ 0x8A222441)) ^ 0x6B8B9370) & (v61 ^ 0x8A222441)) & (16 * ((v61 ^ 0x30C0009C) & (4 * v60) ^ v60)) ^ (v61 ^ 0x30C0009C) & (4 * v60) ^ v60));
  v63 = LODWORD(STACK[0x2F4]) + LODWORD(STACK[0x2F8]) - 2010133655 + (((v62 ^ 0x245FD98A) - 602076523) ^ ((v62 ^ 0x857D31E3) + 2101338878) ^ ((v62 ^ 0x44746A49) - 1137264296));
  v64 = (v63 ^ 0xDB) & (2 * (v63 & 0x9C)) ^ v63 & 0x9C;
  v65 = (v63 ^ 0xE3) & 0xFE | (v63 ^ 0x1C) & (2 * (v63 ^ 0xE3));
  LOBYTE(v63) = ((v49 ^ 0x1A) + 121) ^ v49 ^ ((v49 ^ 0xBF) - 34) ^ ((v49 ^ 0xCF) - 82) ^ ((v49 ^ 0xF7) - 106) ^ v63 ^ (2 * ((((v63 ^ 0xE3) & 0xFC | (v63 ^ 0x1C) & (2 * (v63 ^ 0xE3)) & 0xFC | (4 * v65) & ~v65) ^ 0x63) & (16 * ((v65 ^ 0x70) & (4 * v64) ^ v64)) ^ (v65 ^ 0x70) & (4 * v64) ^ v64));
  return (*(a37 + 8 * ((14260 * (((LODWORD(STACK[0x310]) - LOBYTE(STACK[0x314]) + LOBYTE(STACK[0x31C]) + ((((v63 ^ 0xEA) - 76) ^ ((v63 ^ 0xAD) - 11)) ^ ((v63 ^ 0x46) + 32)) + 100) & 1) == 0)) ^ v40)))(v51, 899265000, LODWORD(STACK[0x310]), 2140144278, 4054598521, 2101338878, 713195600, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_100277A0C()
{
  v5 = *(v1 + v4 * v3 + 40) & 8;
  LOBYTE(v5) = (v0 + 126) ^ (((v5 - v0) | (v0 - v5)) >> (v0 ^ 0x1F));
  return (*(v2 + 8 * ((((v5 & 1) << 6) & 0x7F | ((v5 & 1) << 7)) ^ (v0 + 30059))))();
}

uint64_t sub_100277A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23)
{
  v26 = v24 * ((a4 | ((a4 < 0x2F90469D) << 32)) - 797984413) % a5;
  v27 = v26 * v26 % a5 * v26 % a5;
  if (a8 == (((a6 - 20652) | 0x8400) ^ 0x3C54E795))
  {
    v27 = 0;
  }

  *(a23 + 4 * a19) = (((v27 + v26) % a5) ^ 0xFF9A56FD) + 804646816 + ((2 * ((v27 + v26) % a5)) & 0xFF34ADFA);
  *(a23 + 4 * a20) = (((a17 - 797984413) % (a18 + v25)) ^ 0x2FF54EFD) - 6621280 + ((2 * ((a17 - 797984413) % (a18 + v25))) & 0x5FEA9DFA);
  v28 = *(a15 + 16);
  v29 = (v28 ^ 0xD44FB972) & (2 * (v28 & 0xD06FB963)) ^ v28 & 0xD06FB963;
  v30 = ((2 * (v28 ^ 0xD413F930)) ^ 0x8F880A6) & (v28 ^ 0xD413F930) ^ (2 * (v28 ^ 0xD413F930)) & 0x47C4052;
  v31 = v30 ^ 0x4044051;
  v32 = (v30 ^ 0x780000) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x11F1014C) & v31 ^ (4 * v31) & 0x47C4050;
  v34 = (v33 ^ 0x700040) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x40C4013)) ^ 0x47C40530) & (v33 ^ 0x40C4013) ^ (16 * (v33 ^ 0x40C4013)) & 0x47C4050;
  v36 = v34 ^ 0x47C4053 ^ (v35 ^ 0x4440000) & (v34 << 8);
  v37 = v28 ^ (2 * ((v36 << 16) & 0x47C0000 ^ v36 ^ ((v36 << 16) ^ 0x40530000) & (((v35 ^ 0x384043) << 8) & 0x47C0000 ^ (((v35 ^ 0x384043) << 8) ^ 0x7C400000) & (v35 ^ 0x384043) ^ 0x3C0000))) ^ 0x3D212102u;
  v38 = 0x2492492492492493 * (((v37 ^ 0x7F67B4B1F030B80DLL) - 0x7F67B4B1F030B80DLL) ^ ((v37 ^ 0xD614F752FB0E5E3BLL) + 0x29EB08AD04F1A1C5) ^ ((v37 ^ 0xA97343E3EE28FEF1) + 0x568CBC1C11D7010FLL)) + 0x24B5CD7357FE3774;
  v39 = v38 ^ ((v38 ^ 0xE035F87DE8B7EB40) + 0x1FE983CC355B1591) ^ ((v38 ^ 0x86B3833C2B6A3999) + 0x796FF88DF686C74ALL) ^ ((v38 ^ 0xDD5B86E21DDB6458) + 0x2287FD53C0379A89) ^ ((v38 ^ 0xBBFE79EDFC15B7AELL) + 0x4422025C21F9497FLL);
  v40 = ((v39 ^ 0xC18144EC8651FCF6) - 0x5B8A285646169DBLL) ^ ((v39 ^ 0xBD6BABA8EAB6A3D7) - 0x79524DC1088636FALL);
  v41 = (__CFADD__(v39 ^ 0xC18144EC8651FCF6, 0xFA475D7A9B9E9625) - 1) ^ (__CFADD__(v39 ^ 0xBD6BABA8EAB6A3D7, 0x86ADB23EF779C906) - 1);
  LODWORD(v39) = __CFADD__(7 * (v40 ^ ((v39 ^ 0x7CC96B0A4EF45E0ELL) + 0x470F729C533B34DDLL)), 0x5CB8AF1640F90C0ELL) + (((v40 ^ ((v39 ^ 0x7CC96B0A4EF45E0ELL) + 0x470F729C533B34DDLL)) * 7uLL) >> 64) - (v41 ^ (__CFADD__(v39 ^ 0x7CC96B0A4EF45E0ELL, 0x470F729C533B34DDLL) - 1)) + 8 * (v41 ^ (__CFADD__(v39 ^ 0x7CC96B0A4EF45E0ELL, 0x470F729C533B34DDLL) - 1)) + 1590657073;
  LODWORD(v40) = *(a15 + 620);
  v42 = (v40 ^ 0xC04FBC52) & (2 * (v40 & 0xD06FB963)) ^ v40 & 0xD06FB963;
  v43 = ((2 * (v40 ^ 0x408FCC10)) ^ 0x21C0EAE6) & (v40 ^ 0x408FCC10) ^ (2 * (v40 ^ 0x408FCC10)) & 0x90E07572;
  v44 = v43 ^ 0x90201511;
  v45 = (v43 ^ 0xC06000) & (4 * v42) ^ v42;
  v46 = ((4 * v44) ^ 0x4381D5CC) & v44 ^ (4 * v44) & 0x90E07570;
  v47 = (v46 ^ 0x805540) & (16 * v45) ^ v45;
  v48 = ((16 * (v46 ^ 0x90602033)) ^ 0xE075730) & (v46 ^ 0x90602033) ^ (16 * (v46 ^ 0x90602033)) & 0x90E07570;
  v49 = v47 ^ 0x90E07573 ^ (v48 ^ 0x5500) & (v47 << 8);
  v50 = v40 ^ (2 * ((v49 << 16) & 0x10E00000 ^ v49 ^ ((v49 << 16) ^ 0x75730000) & (((v48 ^ 0x90E02043) << 8) & 0x10E00000 ^ 0x10800000 ^ (((v48 ^ 0x90E02043) << 8) ^ 0x60750000) & (v48 ^ 0x90E02043)))) ^ 0x48ACC565;
  v51 = 0x2AAAAAAAAAAAAAABLL * (((v50 ^ 0x620557703F10AC49) - 0x620557703F10AC49) ^ ((v50 ^ 0x73CDE971D94D8339) - 0x73CDE971D94D8339) ^ ((v50 ^ 0x11C8BE017F9EB990) - 0x11C8BE017F9EB990)) + 0x6408729B64F695F4;
  v52 = (v51 ^ 0xE06AD23BBB9FE9ADLL) & (2 * (v51 & 0xF14CE2BA239FF1ACLL)) ^ v51 & 0xF14CE2BA239FF1ACLL;
  v53 = ((2 * (v51 ^ 0xE0E2564BFE8AA9B5)) ^ 0x235D69E3BA2AB032) & (v51 ^ 0xE0E2564BFE8AA9B5) ^ (2 * (v51 ^ 0xE0E2564BFE8AA9B5)) & 0x11AEB4F1DD155818;
  v54 = v53 ^ 0x10A2941045154809;
  v55 = (v53 ^ 0x10400E198000010) & (4 * v52) ^ v52;
  v56 = ((4 * v54) ^ 0x46BAD3C774556064) & v54 ^ (4 * v54) & 0x11AEB4F1DD155818;
  v57 = (v56 ^ 0xAA90C154154000) & (16 * v55) ^ v55;
  v58 = ((16 * (v56 ^ 0x1104243089001819)) ^ 0x1AEB4F1DD1558190) & (v56 ^ 0x1104243089001819) ^ (16 * (v56 ^ 0x1104243089001819)) & 0x11AEB4F1DD155810;
  v59 = (v58 ^ 0x10AA0411D1150000) & (v57 << 8) ^ v57;
  v60 = (((v58 ^ 0x104B0E00C005809) << 8) ^ 0xAEB4F1DD15581900) & (v58 ^ 0x104B0E00C005809) ^ ((v58 ^ 0x104B0E00C005809) << 8) & 0x11AEB4F1DD155800;
  v61 = v59 ^ 0x11AEB4F1DD155819 ^ (v60 ^ 0xA4B0D115100000) & (v59 << 16);
  v62 = v51 ^ (2 * ((v61 << 32) & 0x11AEB4F100000000 ^ v61 ^ ((v61 << 32) ^ 0x5D15581900000000) & (((v60 ^ 0x110A0420C8054019) << 16) & 0x11AEB4F100000000 ^ 0x10E20E000000000 ^ (((v60 ^ 0x110A0420C8054019) << 16) ^ 0x34F1DD1500000000) & (v60 ^ 0x110A0420C8054019))));
  v63 = ((v62 ^ 0xE1E7CE8B72C08025) + 0x7513F0E69BC6822DLL) ^ ((v62 ^ 0xE1D8E13E67B24475) + 0x752CDF538EB4467DLL);
  LODWORD(v39) = a22 + v39 + __CFADD__(6 * (v63 ^ ((v62 ^ 0xF02684CE8CC785CELL) + 0x64D2BAA365C187C8)), 0xA26E81795BCC6A70) + (((v63 ^ ((v62 ^ 0xF02684CE8CC785CELL) + 0x64D2BAA365C187C8)) * 6uLL) >> 64) + 6 * ((__CFADD__(v62 ^ 0xE1E7CE8B72C08025, 0x7513F0E69BC6822DLL) - 1) ^ (__CFADD__(v62 ^ 0xE1D8E13E67B24475, 0x752CDF538EB4467DLL) - 1) ^ (__CFADD__(v62 ^ 0xF02684CE8CC785CELL, 0x64D2BAA365C187C8) - 1)) + 1825083652;
  v64 = v39 + 689888201 < a12;
  if (a12 < 0x325A66D != (v39 + 689888201) < 0x325A66D)
  {
    v64 = a12 < 0x325A66D;
  }

  return (*(v23 + 8 * ((22670 * v64) ^ a6)))();
}

uint64_t sub_1002783EC(uint64_t a1)
{
  v4 = *(a1 + 4);
  *(v2 + 20) = v4;
  return (*(v3 + 8 * ((22009 * (v4 == (((v1 ^ 0x37DEAA8E) - 937273160) ^ 0x5A9E1AA8))) ^ v1)))();
}

void sub_1002784E0(uint64_t a1)
{
  v1 = *a1 ^ (1603510583 * ((((2 * a1) | 0xE1A7F5D4) - a1 + 254543126) ^ 0x6708C841));
  v2 = *(a1 + 8);
  v3 = *(&off_1010A0B50 + v1 - 46579) - 810145054;
  (*&v3[8 * v1 + 34496])();
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1002785D8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x16_t a7, int8x8_t a8)
{
  v15.val[0].i64[0] = (v11 + a3 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 + a3 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + a3 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + a3 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + a3 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + a3 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + a3 + v12 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + a3) & 0xF ^ 8;
  *(a4 + v11) = veor_s8(veor_s8(veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(a5 + v11)), veor_s8(*(v10 + v15.val[0].i64[0] - 7), *(v8 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v13 + 8 * (((a2 == a3) * a6) ^ a1)))();
}

void sub_1002786A4(uint64_t a1)
{
  v1 = *(a1 + 44) + 1012831759 * ((((2 * a1) | 0x3A43E382) - a1 + 1658719807) ^ 0x8DB2E74B);
  v3 = v2 + (*(a1 + 8) ^ 0xF0A95104AEE9DBDDLL);
  v2[0] = ((2 * v3) | 0xE88D134) - (v3 ^ 0x744689A);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_100278A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = v16;
  v19 = v10;
  v21 = (v18 ^ 0xBFE86AA1) & (a3 ^ v14) ^ a3 & 0xA294ECDD;
  v22 = (v21 ^ 0x5D7F977E) & (v19 & 0xA7E26570 ^ 0x579DF046 ^ (v19 ^ v7) & (a3 ^ 0xBA9EE30C)) ^ v21 & 0xAD020BC9;
  v23 = *(v13 + 4 * (*(v17 + a7 + v15) - 46));
  v24 = (((v8 ^ 0xE87A35C0) + 394644032) ^ ((v8 ^ 0x847866A3) + 2072484189) ^ ((v8 ^ 0x717ED51F) - 1904137503)) + *(v9 + 4 * (a7 + v15)) + (((v22 ^ 0xE24818F6) + 968004503) ^ ((v22 ^ 0x10861D2D) - 881027506) ^ ((v22 ^ 0x33F96C) - 607555059)) + 881218823;
  v25 = *(a5 + a7 + v15);
  v26 = v24 + (((v23 ^ 0x75899C77) - 1971952759) ^ ((v23 ^ 0x59E1812D) - 1507950893) ^ ((v23 ^ 0xC5BDDA4B) + 977413557));
  LOBYTE(v24) = (v25 - 24) ^ 0xF0;
  v27 = ((v25 - 24) & 0xBA | (2 * ((v25 - 24) & 0xBA)) & 0x40) ^ (2 * ((v25 - 24) & 0xBA)) & v24;
  LOBYTE(v24) = (2 * v24) & 0x4A ^ 0x4A ^ ((2 * v24) ^ 0x94) & v24;
  v28 = (4 * v27) & 0x48 ^ v27 ^ v24 & (4 * v27) & 0xF8;
  v29 = v26 ^ ((v26 ^ 0xB530284D) - 202301474) ^ ((v26 ^ 0xA8FB88A3) - 298139852) ^ ((v26 ^ 0xDB1897FC) - 1646682003) ^ ((v26 ^ 0x7FEDFF7D) + 959236334) ^ 0xB93EC86F;
  LOBYTE(v24) = (v25 - 24) ^ (2 * ((16 * v28) & 0x40 ^ v28 ^ (16 * v28) & ((4 * v24) & 0x48 ^ 0x42 ^ ((4 * v24) ^ 0x28) & v24) ^ 0x4A)) ^ 0xDA;
  v30 = (-120 - v25) ^ (((-120 - v25) ^ 0x68) - 98) ^ (((-120 - v25) ^ 0x5F) - 85) ^ (((-120 - v25) ^ 0xC0) + 54) ^ (((-120 - v25) ^ 0xFD) + 9) ^ 0xB4;
  v31 = v29 >> (v30 & 0xD0 ^ 0x90) >> (v30 & 0x2F ^ 0x2E);
  v32 = ((v29 << (v24 & 0x6B ^ 0x60) << (v24 & 0x94 ^ 0x94)) ^ 0xD4F1865A) & ~v31;
  v33 = (((a3 ^ 0xDF67ED1A) + 546837222) ^ ((a3 ^ 0xAFE27962) + 1344112286) ^ ((a3 ^ 0x6DF91204) - 1845039620)) + 2009293499 + ((((v32 | v31 & 0x2B0E79A5) ^ 0xF3D3FCD) + 493606898) ^ (((v32 | v31 & 0x2B0E79A5) ^ 0x7D64126D) + 1865611858) ^ (((v32 | v31 & 0x2B0E79A5) ^ 0xA6A8ABFA) - 1258404921));
  return (*(v11 + 8 * ((149 * (a7 != 368083779)) ^ v12)))(368083780, a2, v33 ^ ((v33 ^ 0x844CA9AF) + 1532828919) ^ ((v33 ^ 0xF0A2FA4E) + 800280344) ^ ((v33 ^ 0xAB7FE6A1) + 1953387513) ^ ((v33 ^ 0xFF7FFFE6) + 544099008) ^ 0x3D92CCDA);
}

uint64_t sub_100279074@<X0>(int a1@<W8>)
{
  v3 = 23958;
  atomic_compare_exchange_strong(v1, &v3, 0xA94EFu);
  return (*(v2 + 8 * (((v3 == 23958) * (a1 - 31084)) ^ a1)))();
}

uint64_t sub_1002790EC()
{
  v0 = STACK[0xF10] - 26986;
  v1 = STACK[0x4FD8];
  STACK[0x5400] = STACK[0x6FC0];
  STACK[0x41A0] = v1;
  LODWORD(STACK[0x20CC]) = STACK[0x5780];
  LODWORD(STACK[0x38AC]) = 993051125;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100279178@<X0>(unint64_t a1@<X8>)
{
  v5 = *(v1 + 8);
  STACK[0x280] = a1;
  STACK[0x250] = a1;
  *(a1 + 8) = v2 - v5 + 0x3CE25E0EC51FC0AELL + ((v3 - 14016) | 0xC0u);
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1002791C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v25 = *(&off_1010A0B50 + (v21 ^ 0x453F)) - 636372279;
  v26 = v25[v20[15] ^ 0x9CLL];
  HIDWORD(v28) = v26 ^ 1;
  LODWORD(v28) = (v26 ^ (v21 - 8260)) << 24;
  v27 = v28 >> 26;
  v29 = *(&off_1010A0B50 + (v21 - 14053)) - 753065819;
  v30 = (v29[v20[4] ^ 0xF6] ^ 0x1A) << 24;
  v31 = v29[v20[12] ^ 0x1CLL];
  v32 = ((v29[v20[12] ^ 0x1CLL] << 24) ^ 0x423EE4BC) & ((v28 >> 26) ^ 0xFFFEF4C1) | v27 & 0x43;
  v33 = *(&off_1010A0B50 + (v21 ^ 0x4898)) - 112790038;
  v34 = v29[*v20 ^ 0x83] << 24;
  v35 = (((v33[v20[1] ^ 7] ^ v20[1]) << 16) ^ 0x426170DA) & (v34 ^ 0x25FFF1DB) | v34 & 0xBD000000;
  v36 = *(&off_1010A0B50 + (v21 ^ 0x4B4E)) - 2066186642;
  v37 = (((41 * v36[v20[6] ^ 0x74] - 75) << 8) ^ 0x257736A7) & (v30 ^ 0x3D77FFAF) | v30 & 0xDA000000;
  v38 = v25[v20[3] ^ 0xF9];
  HIDWORD(v28) = v38 ^ 1;
  LODWORD(v28) = (v38 ^ 0x4C) << 24;
  v39 = (~(v28 >> 26) | 0xFFFFFF00) & (v35 ^ 0x34E581CD);
  v40 = (v28 >> 26) & 0xE8;
  v41 = v25[v20[11] ^ 0xF2];
  HIDWORD(v28) = v41 ^ 1;
  LODWORD(v28) = (v41 ^ 0x4C) << 24;
  v42 = (((v33[v20[5] ^ 0xF0] ^ v20[5]) << 16) ^ 0x5685F223) & (v37 ^ 0xA0880D40);
  v43 = (v33[v20[9] ^ 0xB6] ^ v20[9]) << 16;
  LOBYTE(v33) = v33[v20[13] ^ 0x62] ^ v20[13];
  LODWORD(v25) = v25[v20[7] ^ 0x4ALL];
  v44 = ((v25 >> 2) | (v25 << 6)) & 0xBD ^ 0x595D1BCB ^ (((v25 >> 2) | (v25 << 6)) ^ 0xFFFFFFC0) & (v37 & 0xA9660D00 ^ 0xD299D361 ^ v42);
  v45 = (41 * v36[v20[2] ^ 0x5ALL] - 75) << 8;
  v46 = (v45 ^ 0xFFFF99FF) & ((v40 | v39) ^ 0x938C6D74) ^ v45 & 0x6300;
  v47 = (v29[v20[8] ^ 0xEDLL] ^ 0x84) << 24;
  v48 = (v47 ^ 0xC6FFFFFF) & (v43 & 0x610000 ^ 0xC734411D ^ (v43 ^ 0xFFA1FFFF) & (((~(v28 >> 26) | 0xFFFFFF07) & (((41 * v36[v20[10] ^ 0x77] - 75) << 8) ^ 0xA756C408) | (v28 >> 26) & 0xF7) ^ 0x74C8B375)) ^ v47 & 0xEB000000;
  LOBYTE(v47) = 41 * v36[v20[14] ^ 0xDDLL] - 75;
  v49 = *(&off_1010A0B50 + (v21 - 15415)) - 1434302271;
  v50 = *(&off_1010A0B50 + (v21 ^ 0x5372)) - 1465543022;
  v51 = *(&off_1010A0B50 + (v21 - 12108)) - 1229227770;
  v52 = v32 & 0x860C00B2 ^ 0xC38100DF ^ ((((v47 << 8) ^ 0x4BFF41EF) & ((v33 << 16) ^ 0x4BD6F9EF) & 0xFFFFF9FF | (((v47 >> 1) & 3) << 9)) ^ 0x321BACA2) & (v32 ^ 0xBFC11BF2);
  v53 = v33 ^ 0x87;
  v54 = v33 ^ 0xB4;
  v55 = *(&off_1010A0B50 + (v21 - 13390)) - 643767310;
  v56 = v46 ^ __ROR4__(*&v49[4 * (v47 ^ 0x4F)], 19) ^ *&v50[4 * (v31 ^ 0x7A)] ^ (v53 + 1379237336 + *&v55[4 * v54]) ^ (1134292443 * *&v51[4 * (v27 ^ 0x5E)] + 606741488) ^ 0xBC11C49D;
  v105 = v56 ^ v44 ^ v48;
  v57 = v105 ^ 0xBA88ADCF ^ v52;
  v58 = *&v50[4 * (HIBYTE(v57) ^ 0xA0)] ^ (1134292443 * *&v51[4 * (v105 ^ 0xCF ^ v52 ^ 0xC0)] + 606741488) ^ __ROR4__(*&v49[4 * (BYTE1(v57) ^ 0xC9)], 19) ^ (*&v55[4 * (BYTE2(v57) ^ 0x61)] + (BYTE2(v57) ^ 0x52) + 1379237336) ^ 0xDDA91CFF;
  *(v23 - 244) = v44;
  v59 = v58 ^ v44 ^ 0x8D9D8B39;
  v60 = v59 ^ v52 ^ 0xD544F432;
  v61 = (1134292443 * *&v51[4 * ((v59 ^ v52) ^ 0x15)] + 606741488) ^ __ROR4__(*&v49[4 * (BYTE1(v60) ^ 0xD4)], 19) ^ *&v50[4 * (((v59 ^ v52) >> 24) ^ 0xA0)] ^ v58 ^ v56 ^ (*&v55[4 * (BYTE2(v60) ^ 0x3C)] + (BYTE2(v60) ^ 0xF) + 1379237336) ^ 0xF7D7F055;
  v62 = v61 ^ v59 ^ 0x4D164D98;
  v104 = v62 ^ v59 ^ v105 ^ 0xBA88ADCF;
  v63 = v104 ^ 0x7B96EB9A ^ v60;
  v103 = (1134292443 * *&v51[4 * (v104 ^ 0x9A ^ v60 ^ 5)] + 606741488) ^ *&v50[4 * (HIBYTE(v63) ^ 0xFC)] ^ __ROR4__(*&v49[4 * (BYTE1(v63) ^ 0x57)], 19) ^ v61 ^ (*&v55[4 * (BYTE2(v63) ^ 0x27)] + (BYTE2(v63) ^ 0x14) + 1379237336);
  v102 = v103 ^ 0xA498A6DA ^ v62;
  v64 = v102 ^ 0x67D7458B ^ v60;
  HIDWORD(v100) = v102 ^ 0x67D7458B ^ v104 ^ 0x7B96EB9A;
  LODWORD(v101) = *&v50[4 * (HIBYTE(v64) ^ 0x56)] ^ __ROR4__(*&v49[4 * (BYTE1(v64) ^ 0xBA)], 19) ^ v103 ^ 0xA498A6DA ^ (*&v55[4 * (BYTE2(v64) ^ 3)] + (BYTE2(v64) ^ 0x30) + 1379237336) ^ (1134292443 * *&v51[4 * (v64 ^ 0xE6)] + 606741488);
  LODWORD(v100) = v101 ^ 0x1806214 ^ v102 ^ 0x67D7458B;
  HIDWORD(v99) = v100 ^ 0xB93C621E ^ HIDWORD(v100);
  HIDWORD(v101) = v64;
  v65 = HIDWORD(v99) ^ 0x21E0CE58 ^ v64;
  HIDWORD(v98) = (1134292443 * *&v51[4 * (v65 ^ 0xED)] + 606741488) ^ *&v50[4 * (HIBYTE(v65) ^ 0x21)] ^ __ROR4__(*&v49[4 * (BYTE1(v65) ^ 0x1F)], 19) ^ v101 ^ 0x1806214 ^ (*&v55[4 * (BYTE2(v65) ^ 0xD2)] + (BYTE2(v65) ^ 0xE1) + 1379237336);
  LODWORD(v99) = v65;
  v66 = HIDWORD(v98) ^ 0xE5479AF8 ^ v100 ^ 0xB93C621E;
  HIDWORD(v97) = v66 ^ 0xDF8F1FCC ^ HIDWORD(v99) ^ 0x21E0CE58;
  v67 = HIDWORD(v97) ^ 0x7FF04F8C ^ v65;
  HIDWORD(v96) = (1134292443 * *&v51[4 * (BYTE4(v97) ^ 0x8C ^ v65 ^ 0xDD)] + 606741488) ^ *&v50[4 * (HIBYTE(v67) ^ 0xF4)] ^ __ROR4__(*&v49[4 * (BYTE1(v67) ^ 0x3E)], 19) ^ HIDWORD(v98) ^ 0xE5479AF8 ^ (*&v55[4 * (BYTE2(v67) ^ 0xD2)] + (BYTE2(v67) ^ 0xE1) + 1379237336);
  LODWORD(v96) = HIDWORD(v96) ^ 0xAB149AEF ^ v66 ^ 0xDF8F1FCC;
  HIDWORD(v95) = v96 ^ 0x6C87DE2D ^ HIDWORD(v97) ^ 0x7FF04F8C;
  v68 = HIDWORD(v95) ^ 0xC35D3C2D ^ v67 ^ 0xFC3863D;
  LODWORD(v95) = v68;
  HIDWORD(v94) = *&v50[4 * (HIBYTE(v68) ^ 0x31)] ^ __ROR4__(*&v49[4 * (BYTE1(v68) ^ 0x3A)], 19) ^ HIDWORD(v96) ^ 0xAB149AEF ^ (*&v55[4 * (BYTE2(v68) ^ 0xAF)] + (BYTE2(v68) ^ 0x9C) + 1379237336) ^ (1134292443 * *&v51[4 * (BYTE4(v95) ^ 0x2D ^ v67 ^ 0x3D ^ 0x1F)] + 606741488);
  v69 = HIDWORD(v94) ^ 0xE4224F1C ^ v96 ^ 0x6C87DE2D;
  v70 = v69 ^ 0x39B49E54 ^ HIDWORD(v95) ^ 0xC35D3C2D;
  LODWORD(v97) = v67 ^ 0xFC3863D;
  v71 = v69 ^ 0x39B49E54 ^ v67 ^ 0xFC3863D;
  v72 = v69 ^ 0x54 ^ v67 ^ 0x3D ^ 0x1D;
  HIDWORD(v92) = *&v50[4 * (HIBYTE(v71) ^ 0x99)] ^ __ROR4__(*&v49[4 * (BYTE1(v71) ^ 0x3E)], 19) ^ HIDWORD(v94) ^ 0xE4224F1C ^ (*&v55[4 * (BYTE2(v71) ^ 0xCB)] + (BYTE2(v71) ^ 0xF8) + 1379237336) ^ (1134292443 * *&v51[4 * (v72 - ((2 * v72) & 0xE6)) + 460] + 606741488);
  v93 = __PAIR64__(v70, v71);
  LODWORD(v94) = v69;
  LODWORD(v92) = v69 ^ 0x77E3148D ^ HIDWORD(v92) ^ 0xE4E6CA2;
  HIDWORD(v91) = v70 ^ 0x1C605A26 ^ v92;
  v73 = HIDWORD(v91) ^ v71;
  v74 = v73 ^ 0x59549899;
  LODWORD(v91) = v73 ^ 0xF67A4E6;
  v75 = (1134292443 * *&v51[4 * ((BYTE4(v91) ^ v71) ^ 0xA8)] + 606741488) ^ __ROR4__(*&v49[4 * (BYTE1(v74) ^ 0x5D)], 19) ^ *&v50[4 * (BYTE3(v73) ^ 0x43)] ^ HIDWORD(v92) ^ 0xE4E6CA2 ^ (*&v55[4 * (BYTE2(v74) ^ 0x3F)] + (BYTE2(v74) ^ 0xC) + 1379237336) ^ 0x909A1330;
  v76 = ((v75 & 0xAB11AA1A ^ 0xADF174F9) & (v75 & 0x54EE55E5 ^ 0xAF9FEA7B) | v75 & 0x500E0104) ^ 0xF62EA781;
  v77 = *(&off_1010A0B50 + (v21 - 14607)) - 1310816983;
  v78 = *(&off_1010A0B50 + (v21 - 15219)) - 585752667;
  LOWORD(v47) = (v77[*(v23 - 105) ^ 0xB2] ^ 0x35) - 64;
  v79 = (v47 & 0x3FF ^ 0xFFFFFC0F) & ((v78[*(v23 - 107) ^ 0x52] << 16) ^ 0xC2FFF419) | v47 & 0xE6;
  v80 = *(&off_1010A0B50 + (v21 ^ 0x4809)) - 98603263;
  v81 = *(&off_1010A0B50 + (v21 - 14744)) - 983585702;
  LOBYTE(v50) = v77[*(v23 - 109) ^ 0xD7] - 64;
  LODWORD(v31) = (v50 & 0xE0 ^ 0xFFFFFF9F) & (((v80[*(v23 - 112) ^ 0xBALL] << 24) + 1660944384) ^ 0x3F61ADA0) | v50 & 0x5F;
  LODWORD(v50) = v81[*(v23 - 110) ^ 0x9FLL];
  LODWORD(v31) = (v31 & 0x9A200183 ^ 0xD8C3DCA0 ^ (v31 ^ 0x449E4200) & ((v78[*(v23 - 111) ^ 0x2DLL] << 16) ^ 0x65E7C27C)) & ((v50 << 8) ^ 0xFFFF23FF);
  LOBYTE(v47) = ((v77[*(v23 - 101) ^ 0x5ELL] - 64 - ((v77[*(v23 - 101) ^ 0x5ELL] - 64) ^ 0x49)) ^ 0xFE) + v77[*(v23 - 101) ^ 0x5ELL] - 64;
  v82 = (((v81[*(v23 - 102) ^ 0x7ALL] << 8) ^ 0x60AEF422) & (v47 ^ 0x60AEFFE2) | v47 & 0xDD) ^ 0xFF55D0C3;
  v83 = ((v80[*(v23 - 104) ^ 0x67] + 99) ^ 0x28) << 24;
  v84 = *(v23 - 103) ^ 0xE4;
  v85 = (((v80[*(v23 - 108) ^ 0xEALL] << 24) - 486539264) ^ 0xB0E2D125) & ((((v81[*(v23 - 106) ^ 0xBCLL] << 8) ^ 0xEEFF84FF) & (v79 ^ 0x2E052058) | (v81[*(v23 - 106) ^ 0xBCLL] << 8) & 0x2B00) ^ 0x13832E78);
  v86 = ((v81[*(v23 - 106) ^ 0xBCLL] << 8) ^ 0xEEFF84FF) & (v79 ^ 0x2E052058) & 0x281D2EDA | (v81[*(v23 - 106) ^ 0xBCLL] << 8) & 0x2A00;
  *(v23 - 216) = (v78[v84] << 16) & 0x490000 ^ 0x1FCF0015 ^ ((v78[v84] << 16) ^ 0xFF75FFFF) & (v83 & 0x60000000 ^ 0xB44D4420 ^ (v83 ^ 0xD8FFFFFF) & v82);
  *(v23 - 212) = v31 ^ ((v50 >> 5 << 13) | 0xFB3D0FE7);
  HIDWORD(v90) = (((v22 ^ 0x68264B09) + 100693875) ^ ((v22 ^ 0x163C40B8) + 2015001796) ^ ((v22 ^ 0x6744BFB9) + 157451203)) - 1708873325;
  HIDWORD(a20) = v76;
  LODWORD(v90) = v70 ^ 0x4756B49E ^ v76;
  HIDWORD(v89) = ~v66 & 0x10;
  LODWORD(v89) = (v66 & 1) == 0;
  LODWORD(v98) = v66;
  LODWORD(v88) = v66 & 0x10;
  HIDWORD(v88) = v66 & 1;
  return (*(v24 + 8 * v21))(v85, v84, v86, v76, 2019293493, v80, v81, v73, a9, a10, a11, a12, v88, v89, v90, v81, v80, v78, v77, a20, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
}

uint64_t sub_10027A0B8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  LODWORD(v154) = 0;
  *(v12 - 136) = *(v12 - 116) < 0x719F8018u;
  HIDWORD(v154) = (v10 + 2015617974) & 0x87DC34AE;
  v13 = v11 & 0xFFFFFFFE ^ (HIDWORD(v154) - 235762235);
  *(v12 - 148) = v13;
  v14 = *(a5 + (*(a1 + v13) ^ 0x5FLL)) + 103;
  v15 = v11 & 0xFFFFFFF7 ^ 0xF1F2BDCELL;
  *(v12 - 176) = v15;
  v16 = (32 * v14) & 0x20;
  if ((v16 & v14) != 0)
  {
    v16 = -v16;
  }

  v17 = (v16 + v14) ^ (32 * v14) & 0xC0;
  v18 = *(a1 + v15);
  v19 = v18 ^ 0xCD;
  LODWORD(v18) = *(a9 + (v18 ^ 0x33));
  v20 = v11 & 0xFFFFFFF9 ^ 0xF1F2BDCELL;
  *(v12 - 160) = v20;
  v21 = (v19 + v18 - 28) ^ 0xDC;
  LOBYTE(v18) = *(a7 + (*(a1 + v20) ^ 0x32));
  v22 = v11 & 0xFFFFFFF3 ^ 0xF1F2BDCELL;
  *(v12 - 168) = v22;
  v23 = *(a1 + v22);
  v24 = v11 & 0xFFFFFFFD ^ 0xF1F2BDCELL;
  *(v12 - 144) = v24;
  v25 = ((BYTE4(a6) - 45 * v18) ^ (2 * ((a6 + 38 * v18) ^ (BYTE4(a6) - 45 * v18))));
  LODWORD(v18) = (v23 ^ 0x58) + *(a9 + (v23 ^ 0xA6));
  LOBYTE(v23) = *(a7 + (*(a1 + v24) ^ 0x78));
  v167 = v11 & 0xFFFFFFF5 ^ 0xF1F2BDCELL;
  v26 = (v18 << 24) - 469762048;
  LODWORD(v18) = ((BYTE4(a6) - 45 * v23) ^ (2 * ((a6 + 38 * v23) ^ (BYTE4(a6) - 45 * v23)))) << 8;
  v27 = (v18 ^ 0xDFF089A) & ((v17 << 16) ^ 0xD0A5A9A) ^ (v18 & 0xA500 | 0x20840021);
  LOBYTE(v18) = *(a7 + (*(a1 + v167) ^ 0xDLL));
  v165 = v11 & 0xFFFFFFF1 ^ 0xF1F2BDCELL;
  LOBYTE(v18) = (-45 * v18 - ((2 * (-45 * v18 + 30)) & 0xD8) - 118) ^ (2 * ((-45 * v18 + 30) ^ (a6 + 38 * v18)));
  v28 = *(a7 + (*(a1 + v165) ^ 0x42));
  v168 = v11 & 0xFFFFFFF2 ^ 0xF1F2BDCFLL;
  v29 = (-45 * v28 - ((2 * (-45 * v28 + 30)) & 0x20) - 82) ^ (2 * ((-45 * v28 + 30) ^ (a6 + 38 * v28)));
  v30 = v29 << 8;
  v31 = *(a5 + (*(a1 + v168) ^ 0x39));
  v166 = v11 & 0xFFFFFFF4 ^ 0xF1F2BDCFLL;
  LODWORD(v24) = (v30 ^ 0xFFFE3FFF) & (v26 ^ 0xCDC25B99);
  v32 = v24 | v30 & 0xFFFFEFFF;
  v161 = v11 & 0xFFFFFFFA ^ 0xF1F2BDCFLL;
  LOBYTE(v26) = *(a5 + (*(a1 + v161) ^ 0xBALL)) + 103;
  v33 = *(a8 + (*(a1 + v166) ^ 9)) ^ *(a1 + v166);
  v34 = (((v26 ^ (32 * v26)) << 16) | 0xF800FFFF) & ((v25 << 8) ^ 0xB811BC32) | ((v26 ^ (32 * v26)) << 16) & 0xEEEEEEEE;
  v164 = v11 & 0xFFFFFFF0 ^ 0xF1F2BDCFLL;
  v35 = v33 & 0x93 | ((((v18 << 8) ^ 0xFF2250DB) & ((v21 << 24) ^ 0x9222D9DB) | (v18 << 8) & 0x2600) ^ 0xB487F9B7) & (v33 ^ 0xFFBFFF11);
  v160 = v11 & 0xFFFFFFFB ^ 0xF1F2BDCELL;
  v36 = (v32 ^ 0xF83D8426) & ((((v31 + 103) ^ (32 * (v31 + 103))) << 16) ^ 0xFDF8B437);
  v162 = v11 & 0xFFFFFFF8 ^ 0xF1F2BDCFLL;
  v163 = v11 ^ 0xF1F2BDCELL;
  v37 = *(a8 + (*(a1 + v162) ^ 0x84)) ^ *(a1 + v162) ^ 0x53713FE7;
  v38 = (((*(a1 + v160) ^ 0x47) + *(a9 + (*(a1 + v160) ^ 0xB9))) << 24) - 469762048;
  v39 = v37 & 0x77777777 ^ (v38 & 0x20000000 | 0x84828072) | v37 & 0x410F88;
  v159 = v11 & 0xFFFFFFFC ^ 0xF1F2BDCFLL;
  v40 = *(a1 + v159);
  v41 = (((*(a8 + (v40 ^ 0xC8)) ^ v40 ^ 0xFFFFFFC7) & (((((*(a1 + v163) ^ 0x94) + *(a9 + (*(a1 + v163) ^ 0x6ALL)) - 28) ^ 0x57) << 24) ^ 0x12693EEC) | (*(a8 + (v40 ^ 0xC8)) ^ v40) & 0x13) ^ 0xFC6EF86) & (v27 ^ 0xD2402844) ^ v27 & 0x2D502E91;
  v42 = v36 | v24 & 0x2004B08;
  v43 = *(&off_1010A0B50 + (v10 ^ 0x1BE2)) - 1423646943;
  v44 = *(&off_1010A0B50 + (v10 ^ 0x6B0)) - 1007099299;
  HIDWORD(v156) = v41;
  v45 = v41 ^ 0xDC4BC517;
  v46 = *(&off_1010A0B50 + v10 - 1371) - 1510035142;
  v47 = *(&off_1010A0B50 + v10 - 3368) - 31865083;
  LODWORD(v157) = (v39 ^ 0x280C4008) & (v38 & 0xC7FFFFFF ^ 0x62AD3F6C ^ (v38 & 0x5F000000 ^ 0x67FFFFE1) & (v34 ^ 0xA0E46AD3)) ^ v39 & 0x5210372;
  v48 = v157 ^ 0x9422F9FD;
  v49 = *&v47[4 * (v157 ^ 0xFD)] ^ __ROR4__(__ROR4__(*&v46[4 * (HIBYTE(v45) ^ 0x39)] ^ *&v43[4 * (BYTE2(v36) ^ 0x36)] ^ *&v44[4 * (v18 ^ 0xB8)] ^ ((HIBYTE(v45) ^ 0x1E495091) + ((v45 >> 23) & 0x122) + 341715707) ^ 0xA134DDE9, 10) ^ 0xA930CF0D, 22);
  v50 = (HIBYTE(v48) - ((2 * HIBYTE(v48) + 1699673880) & 0x40044978) - 1830150072) ^ *&v46[4 * (HIBYTE(v48) ^ 0x39)];
  HIDWORD(v155) = v35 ^ 0x8AFBD755;
  v51 = (v35 ^ 0xAE) + ((2 * (v35 ^ 0x8AFBD755)) & 0x19C ^ 0xFFFFFE6B);
  v52 = *&v43[4 * (v17 ^ 0xBC)] ^ 0x68303B87;
  v53 = v50 & 0x800;
  if ((v50 & 0x800 & v52) != 0)
  {
    v53 = -v53;
  }

  v54 = *&v44[4 * (v29 ^ 0x9C)] ^ v50 & 0xFFFFF7FF ^ (v53 + v52);
  HIDWORD(v157) = (*(a1 + v164) - ((2 * *(a1 + v164)) & 0x54) + 42) ^ *(a8 + (*(a1 + v164) ^ 0xCDLL));
  v55 = *&v46[4 * (v21 ^ 0x6A)] ^ ((v21 ^ 0x53) + 849836940) ^ *&v43[4 * BYTE2(v48)] ^ *&v44[4 * BYTE1(v45)] ^ *&v47[4 * (((*(a1 + v164) - ((2 * *(a1 + v164)) & 0x54) + 42) ^ *(a8 + (*(a1 + v164) ^ 0xCDLL))) ^ 0x8E)];
  v158 = v11 & 0xFFFFFFF6 ^ 0xF1F2BDCFLL;
  v56 = *(a5 + (*(a1 + v158) ^ 0xDDLL)) + 103;
  LODWORD(v155) = v56 ^ (32 * v56);
  LODWORD(v156) = v42;
  v57 = *&v46[4 * (HIBYTE(v42) ^ 5)] ^ ((HIBYTE(v42) ^ 0x3C) + 849836940) ^ *&v43[4 * (v155 ^ 0x96)] ^ *&v47[4 * v45] ^ *&v44[4 * (((BYTE1(v48) | 0xFA) - (BYTE1(v48) ^ 0xFA)) ^ (BYTE1(v48) | 0xFA))];
  v58 = v57 ^ 0xEB136432;
  v59 = *&v47[4 * v51 + 828] ^ v54;
  v60 = *&v43[4 * ((v57 ^ 0xEB136432) >> 16)] ^ *&v44[4 * (BYTE1(v55) ^ 0x48)] ^ ((HIBYTE(v49) ^ 0xB) + 849836940) ^ *&v46[4 * (HIBYTE(v49) ^ 0x32)] ^ *&v47[4 * (v59 ^ 0xA3)];
  v61 = *&v46[4 * (((v59 ^ 0x65B31DA3u) >> 24) ^ 0x39)] ^ (((v59 ^ 0x65B31DA3u) >> 24) + 849836940) ^ *&v43[4 * (BYTE2(v49) ^ 0xBE)] ^ *&v47[4 * (v55 ^ 0xB2)] ^ __ROR4__(__ROR4__(*&v44[4 * (BYTE1(v57) ^ 0x9E)], 21) ^ 0x61C290F6, 11);
  v62 = *&v44[4 * (BYTE1(v49) ^ 0xB9)];
  v63 = *&v46[4 * (HIBYTE(v55) ^ 0x27)] ^ ((HIBYTE(v55) ^ 0x1E) + 849836940) ^ *&v47[4 * v58] ^ *&v43[4 * (BYTE2(v59) ^ 0xCA)] ^ ((v62 ^ (-665058739 - (v62 ^ 0xAAB67BD8)) ^ 0x72EA7995 ^ (-1927969173 - (((v62 ^ 0xE2927B49) + 493716663) ^ ((v62 ^ 0x972B5CB5) + 1758765899) ^ ((v62 ^ 0x7535E69) - 122904169)))) - 665058739);
  v64 = *&v43[4 * (BYTE2(v55) ^ 8)];
  v65 = *&v46[4 * (HIBYTE(v58) ^ 0x39)] ^ (HIBYTE(v58) - 1830150071 + ((2 * ((HIBYTE(v58) + 908) & 0x4BD ^ (HIBYTE(v58) | 0x7FFFFFFE))) ^ 0x40044003));
  v66 = ((2 * v64) & 0x5D0C555E ^ 0xF2F3FFAF) + 1966881752 + (((v64 ^ 0x24A02F39) - 614477625) ^ ((v64 ^ 0x1B6227E7) - 459417575) ^ ((v64 ^ 0xF97419F6) + 109831690));
  v67 = *&v47[4 * (v49 ^ 0xB9)] ^ *&v44[4 * ((v59 ^ 0x1DA3) >> 8)] ^ ((-v65 ^ (v66 - (v66 ^ v65)) ^ (v65 - ((2 * v65) & 0xE4E2245A) + 1920012845) ^ 0x7271122D) + v66);
  v68 = *&v43[4 * (BYTE2(v67) ^ 0xE9)] ^ *&v44[4 * (BYTE1(v63) ^ 0x63)] ^ __ROR4__(__ROR4__(*&v46[4 * (HIBYTE(v60) ^ 0x96)] ^ ((HIBYTE(v60) ^ 0xAF) + 849836940), 5) ^ 0x36F740E6, 27);
  v69 = v67 ^ 0xCC909BCB;
  v70 = *&v46[4 * (HIBYTE(v61) ^ 0x12)] ^ ((HIBYTE(v61) ^ 0x2B) + 849836940) ^ *&v43[4 * (BYTE2(v60) ^ 0x45)] ^ *&v44[4 * ((v67 ^ 0x9BCB) >> 8)] ^ *&v47[4 * (v63 ^ 0x82)];
  v71 = *&v46[4 * (HIBYTE(v63) ^ 0xD1)] ^ ((HIBYTE(v63) ^ 0xE8) + 849836940) ^ *&v43[4 * (BYTE2(v61) ^ 0x42)] ^ *&v44[4 * (BYTE1(v60) ^ 0xC4)] ^ *&v47[4 * v69];
  v72 = *&v46[4 * (HIBYTE(v69) ^ 0x39)] ^ (HIBYTE(v69) + 849836940) ^ *&v43[4 * (BYTE2(v63) ^ 0x86)] ^ *&v44[4 * (BYTE1(v61) ^ 0x3A)] ^ *&v47[4 * (v60 ^ 0xED)];
  v73 = __ROR4__(__ROR4__(v68 ^ __ROR4__(__ROR4__(*&v47[4 * (v61 ^ 0x4E)], 26) ^ 0x6CC92501, 6) ^ 0xE2E018C8, 21) ^ 0xCBDA60FB, 11);
  v74 = *&v46[4 * (((v73 ^ 0x1929D6AEu) >> 24) ^ 0x39)] ^ (((v73 ^ 0x1929D6AEu) >> 24) + 849836940) ^ *&v43[4 * (BYTE2(v72) ^ 0x2B)] ^ *&v44[4 * (BYTE1(v71) ^ 0xC8)] ^ *&v47[4 * (v70 ^ 0x81)];
  v75 = *&v46[4 * (HIBYTE(v70) ^ 0x92)] ^ ((HIBYTE(v70) ^ 0xAB) + 849836940) ^ *&v44[4 * (BYTE1(v72) ^ 0xCE)] ^ *&v47[4 * ((v46[4 * (HIBYTE(v63) ^ 0xD1)] ^ ((HIBYTE(v63) ^ 0xE8) - 116) ^ v43[4 * (BYTE2(v61) ^ 0x42)] ^ v44[4 * (BYTE1(v60) ^ 0xC4)] ^ v47[4 * v69]) ^ 0x36)] ^ *&v43[4 * ((v73 ^ 0x1929D6AEu) >> 16)];
  v76 = *&v46[4 * (HIBYTE(v71) ^ 0x7F)] ^ ((HIBYTE(v71) ^ 0x46) + 849836940) ^ *&v43[4 * (BYTE2(v70) ^ 0x4B)] ^ *&v47[4 * (v72 ^ 0xDA)] ^ *&v44[4 * ((v73 ^ 0xD6AE) >> 8)];
  v77 = *&v46[4 * (HIBYTE(v72) ^ 0x8E)] ^ ((HIBYTE(v72) ^ 0xB7) + 849836940) ^ *&v43[4 * (BYTE2(v71) ^ 0x3E)] ^ *&v44[4 * (BYTE1(v70) ^ 0x14)] ^ *&v47[4 * (v73 ^ 0xAE)];
  v78 = v77 ^ 0xC0952E9C;
  v79 = *&v46[4 * (HIBYTE(v74) ^ 0x29)] ^ ((HIBYTE(v74) ^ 0x10) + 849836940) ^ *&v43[4 * ((v77 ^ 0xC0952E9C) >> 16)] ^ *&v44[4 * (BYTE1(v76) ^ 0xE)] ^ *&v47[4 * (v75 ^ 0x89)];
  v80 = *&v46[4 * (HIBYTE(v75) ^ 0x9C)] ^ ((HIBYTE(v75) ^ 0xA5) + 849836940) ^ *&v43[4 * (BYTE2(v74) ^ 0x87)] ^ *&v44[4 * (BYTE1(v77) ^ 0xD4)] ^ *&v47[4 * (v76 ^ 0xC7)];
  v81 = *&v46[4 * (HIBYTE(v76) ^ 0xE5)] ^ ((HIBYTE(v76) ^ 0xDC) + 849836940) ^ *&v43[4 * (BYTE2(v75) ^ 0x20)] ^ *&v44[4 * (BYTE1(v74) ^ 0x67)] ^ *&v47[4 * v78];
  v82 = *&v46[4 * (HIBYTE(v78) ^ 0x39)] ^ (HIBYTE(v78) + 849836940) ^ *&v43[4 * (BYTE2(v76) ^ 0xF5)] ^ *&v44[4 * (BYTE1(v75) ^ 0x4B)] ^ *&v47[4 * (v74 ^ 0x27)];
  v83 = *&v46[4 * (HIBYTE(v79) ^ 0x6B)] ^ (((v79 >> 23) & 0x118) + (HIBYTE(v79) ^ 0x32A77BDE)) ^ *&v43[4 * (BYTE2(v82) ^ 0xE0)] ^ *&v44[4 * ((v81 ^ 0x973E) >> 8)] ^ *&v47[4 * (v80 ^ 0xDE)];
  v84 = *&v46[4 * (HIBYTE(v80) ^ 0xBD)] ^ ((HIBYTE(v80) ^ 0x84) + 849836940) ^ *&v43[4 * (BYTE2(v79) ^ 0xF2)] ^ *&v44[4 * (BYTE1(v82) ^ 8)] ^ *&v47[4 * (v81 ^ 0x3E)];
  v82 ^= 0x2D99F22Bu;
  v85 = *&v46[4 * (((v81 ^ 0x482C973Eu) >> 24) ^ 0x39)] ^ (((v81 ^ 0x482C973Eu) >> 24) + 849836940) ^ *&v43[4 * (BYTE2(v80) ^ 0x27)] ^ *&v44[4 * (BYTE1(v79) ^ 0xE4)] ^ *&v47[4 * v82];
  v86 = *&v46[4 * (HIBYTE(v82) ^ 0x39)] ^ (HIBYTE(v82) + 849836940) ^ *&v43[4 * (BYTE2(v81) ^ 0x55)] ^ *&v44[4 * (BYTE1(v80) ^ 0xFE)] ^ *&v47[4 * (v79 ^ 0x79)];
  LOBYTE(v78) = v86 ^ 0x65;
  v87 = *&v46[4 * (((v84 ^ 0xE72CC8D7) >> 24) ^ 0x39)] ^ (((v84 ^ 0xE72CC8D7) >> 24) + 849836940) ^ *&v43[4 * (BYTE2(v83) ^ 0x2E)] ^ *&v44[4 * (((v86 ^ 0xB765) >> 8) ^ 0xFA)] ^ *&v47[4 * (v85 ^ 0x90)];
  v88 = (((v86 ^ 0x544CB765u) >> 24) + 849836940) ^ *&v43[4 * (BYTE2(v85) ^ 0xF2)] ^ *&v46[4 * (((v86 ^ 0x544CB765u) >> 24) ^ 0x39)];
  v89 = ((HIBYTE(v83) ^ 0xB2) + 849836940) ^ *&v46[4 * (HIBYTE(v83) ^ 0x8B)] ^ *&v43[4 * (BYTE2(v86) ^ 0x35)] ^ *&v44[4 * (BYTE1(v85) ^ 0xBB)] ^ *&v47[4 * (v84 ^ 0xD7)] ^ 0x8C4B9A10;
  v90 = ((HIBYTE(v85) ^ 0xFD) + 849836940) ^ *&v46[4 * (HIBYTE(v85) ^ 0xC4)] ^ *&v43[4 * (BYTE2(v84) ^ 0x55)] ^ *&v44[4 * (BYTE1(v83) ^ 0x9B)] ^ *&v47[4 * v78] ^ 0x4080CD14;
  v91 = *&v44[4 * ((v84 ^ 0xC8D7) >> 8)] ^ 0xAAB67BD8;
  v92 = *&v47[4 * (v83 ^ 0x72)] ^ 0x3A83C066 ^ (v91 + (v88 ^ 0x8729F3B) - 2 * (v91 & (v88 ^ 0x8729F3B)));
  v93 = (HIBYTE(v89) + 849836940) ^ *&v46[4 * (HIBYTE(v89) ^ 0x39)] ^ 0x451300C1 ^ *&v43[4 * BYTE2(v92)];
  v94 = *&v44[4 * BYTE1(v92)];
  v95 = v90 - ((2 * v90) & 0xD7BD2DDA) + 1809749741;
  v96 = *&v46[4 * (HIBYTE(v87) ^ 0x5D)] ^ (((v87 >> 23) & 0x118 ^ 8) + (HIBYTE(v87) ^ 0x32A77BE8)) ^ *&v43[4 * (BYTE2(v89) ^ 0x79)] ^ *&v47[4 * ((v90 - ((2 * v90) & 0xDA) - 19) ^ 0xCE)] ^ ((v94 ^ (-665058739 - (v94 ^ 0xAAB67BD8)) ^ 0x72EA7995 ^ (-1927969173 - (((v94 ^ 0xB650053) - 191168595) ^ ((v94 ^ 0xE296E1E0) + 493428256) ^ ((v94 ^ 0x9B199826) + 1692821466)))) - 665058739);
  v97 = (HIBYTE(v95) + 849836940) ^ *&v43[4 * (BYTE2(v87) ^ 0xFB)] ^ 0xAA652B79 ^ *&v46[4 * (HIBYTE(v95) ^ 0x39)];
  v98 = *&v44[4 * (BYTE1(v95) ^ 0xFA)] ^ *&v47[4 * (v87 ^ 0xD5)] ^ 0x7B9C8DF0 ^ ((v93 & 0xCCE3276D ^ 0x7E0FC025) & (v93 & 0x331CD892 ^ 0xFEEF67FD) | v93 & 0x1101892);
  v99 = *&v46[4 * (HIBYTE(v92) ^ 0x39)] ^ (HIBYTE(v92) + 849836940) ^ *&v43[4 * (BYTE2(v95) ^ 0x79)] ^ *&v44[4 * (BYTE1(v87) ^ 0x81)] ^ *&v47[4 * v89];
  v100 = *&v44[4 * BYTE1(v89)] ^ *&v47[4 * v92] ^ __ROR4__(__ROR4__(v97, 11) ^ 0x616F399, 21);
  v101 = v98 - ((2 * v98) & 0xA597A46C) - 758394314;
  LOWORD(v97) = v96 ^ 0xB26D;
  v100 ^= 0x63A511DBu;
  v102 = *&v46[4 * (((v96 ^ 0x7386B26D) >> 24) ^ 0x39)] ^ (((v96 ^ 0x7386B26D) >> 24) + 849836940) ^ *&v43[4 * (BYTE2(v101) ^ 0x79)] ^ *&v44[4 * (BYTE1(v99) ^ 0x57)] ^ *&v47[4 * v100];
  v103 = HIBYTE(v99);
  v104 = *&v46[4 * (HIBYTE(v99) ^ 0xBB)];
  v105 = *&v46[4 * (HIBYTE(v100) ^ 0x39)] ^ (HIBYTE(v100) + 849836940) ^ *&v43[4 * ~HIWORD(v96)] ^ *&v47[4 * (v99 ^ 0xC2)];
  v106 = *&v43[4 * (BYTE2(v99) ^ 0xE0)];
  v107 = *&v43[4 * BYTE2(v100)];
  v108 = *&v44[4 * BYTE1(v100)];
  v109 = v105 ^ *&v44[4 * (BYTE1(v101) ^ 0xFA)];
  v110 = (HIBYTE(v101) + 849836940) ^ v106 ^ v108 ^ *&v47[4 * v97] ^ 0x4080CD14 ^ *&v46[4 * ((HIBYTE(v101) & 0x40 | 0x39) ^ HIBYTE(v101) & 0xFFFFFFBF)];
  v111 = v104 ^ ((v103 ^ 0x82) + 849836940) ^ v107 ^ *&v44[4 * BYTE1(v97)];
  v112 = v110 - ((2 * v110) & 0x47A3EB06) + 600962435;
  v113 = *(&off_1010A0B50 + v10 - 1551) - 1675748634;
  v114 = *&v113[4 * ((v112 ^ 0x8A007A00) >> 24)];
  v115 = v111 ^ *&v47[4 * (v101 ^ 0xCE)];
  v116 = *&v113[4 * (HIBYTE(v102) ^ 0x5D)];
  v117 = *&v113[4 * ((v109 ^ 0xB1A2B740) >> 24)];
  v118 = v115 ^ 0x37;
  v119 = *&v113[4 * ((v115 ^ 0xEA4F2937) >> 24)];
  v120 = *(&off_1010A0B50 + (v10 ^ 0x723)) - 399060650;
  v121 = *&v120[4 * (BYTE2(v115) ^ 0xB)];
  v122 = *&v120[4 * (BYTE2(v112) ^ 0x44)];
  v123 = *&v120[4 * (BYTE2(v102) ^ 0xCC)];
  LODWORD(v113) = *&v120[4 * ((v109 ^ 0xB1A2B740) >> 16)];
  v124 = *(&off_1010A0B50 + v10 - 2502) - 1191195271;
  v125 = *&v124[4 * ((v109 ^ 0xB740) >> 8)];
  v126 = *&v124[4 * ((v115 ^ 0x2937) >> 8)];
  v127 = *&v124[4 * ((v112 ^ 0x7A00) >> 8)];
  v128 = *&v124[4 * (BYTE1(v102) ^ 0xA0)];
  v129 = v102;
  v130 = *(&off_1010A0B50 + v10 - 4493) - 2141316230;
  v131 = *&v130[4 * (v129 ^ 0xE1)];
  v132 = *&v130[4 * (v115 ^ 0xE8)];
  v133 = v112;
  v134 = *&v130[4 * (v112 ^ 0xDF)];
  v135 = (v116 - 923202822) ^ *(v12 - 132) ^ v122 ^ __ROR4__(v126, 11) ^ __ROR4__((32 * ((v109 ^ 0x1DC31E5) + (v109 ^ 0x40))) ^ __ROR4__(*&v130[4 * (v109 ^ 0x9F)], 27) ^ 0x9B1C40F4, 5);
  v136 = *(&off_1010A0B50 + (v10 ^ 0x1593)) - 2223994;
  *(a1 + v160) = (v136[HIBYTE(v135) ^ 0x7DLL] + 108) ^ 0xE3;
  v137 = (v117 - 923202822);
  LODWORD(v130) = ((v118 ^ 0xD1DC31A5) + v118) ^ *(v12 - 128) ^ v137 ^ v123 ^ __ROR4__(v127, 11) ^ v132;
  v138 = *(&off_1010A0B50 + (v10 ^ 0x17D1)) - 416507722;
  *(a1 + v158) = (v138[BYTE2(v130) ^ 0xE9] - 76) ^ 0xC;
  *(a1 + v161) = (v138[BYTE2(v135) ^ 0x1CLL] - 76) ^ 8;
  v139 = ((v129 ^ 0xD1DC319B) + (v129 ^ 0x3E)) ^ *(v12 - 124) ^ v121 ^ (v114 - 923202822) ^ __ROR4__(v125, 11) ^ v131;
  v140 = ((v133 ^ 0xD1DC31A5) + v133) ^ *(v12 - 120) ^ (v119 - 923202822) ^ v113 ^ __ROR4__(v128, 11) ^ v134;
  v141 = *(&off_1010A0B50 + (v10 ^ 0x1035)) - 1127053134;
  v142 = v141[v139 ^ 0x8CLL];
  *(a1 + v159) = ((v142 >> 6) | (4 * v142)) ^ 0x28;
  *(a1 + *(v12 - 176)) = (v136[(v130 >> 24) ^ 0xAFLL] + 108) ^ 0xD3;
  v143 = *(&off_1010A0B50 + v10 - 3435) - 1549064022;
  v144 = v143[BYTE1(v130) ^ 0x4ALL];
  *(a1 + v167) = ((v144 >> 1) | (v144 << 7)) ^ 0x9F;
  v145 = v143[BYTE1(v140) ^ 0x13];
  *(a1 + v165) = ((v145 >> 1) | (v145 << 7)) ^ 0x76;
  *(a1 + *(v12 - 168)) = (v136[BYTE3(v140) ^ 0xA0] + 108) ^ 0x1F;
  v146 = v141[v140 ^ 0x24];
  *(a1 + v164) = ((v146 >> 6) | (4 * v146)) ^ 0xF0;
  *(a1 + *(v12 - 148)) = (v138[BYTE2(v139) ^ 0x5BLL] - 76) ^ 0x39;
  v147 = v143[BYTE1(v135) ^ 0x95];
  v148 = *(v12 - 160);
  *(a1 + v148) = ((v147 >> 1) | (v147 << 7)) ^ 0x59;
  LODWORD(v130) = v141[v130 ^ 0xDLL];
  *(a1 + v166) = ((v130 >> 6) | (4 * v130)) ^ 0x36;
  *(a1 + v168) = (v138[BYTE2(v140) ^ 0x86] - 76) ^ 0x20;
  *(a1 + v163) = (v136[HIBYTE(v139) ^ 0xC1] + 108) ^ 0xA7;
  LODWORD(v136) = v141[v135 ^ 0xE0];
  *(a1 + v162) = ((v136 >> 6) | (4 * v136)) ^ 0x2E;
  LODWORD(v136) = v143[BYTE1(v139) ^ 0x6BLL];
  v149 = (((v11 ^ 0xE4D03F7E) + 456114306) ^ ((v11 ^ 0x371FBEF5) - 924827381) ^ ((v11 ^ 0x223D3C45) - 574438469)) + 1085069623;
  v150 = ((v149 ^ 0xAEAFF7CA) + 535434093) ^ v149 ^ ((v149 ^ 0x8D065F10) + 1011071927) ^ ((v149 ^ 0x92ED4C69) + 598255824) ^ ((v149 ^ 0xFFFEFFEA) + 1320885069);
  *(a1 + *(v12 - 144)) = ((v136 >> 1) | (v136 << 7)) ^ 0x1F;
  LODWORD(v136) = (((v150 ^ 0xF3D80) + 1085826281) ^ ((v150 ^ 0xFA99B6A3) - 1171329076) ^ ((v150 ^ 0xB42C907A) - 191117037)) + 1670528486;
  v151 = *(v12 - 136) ^ (v136 < 0x719F8018);
  v152 = v136 < *(v12 - 116);
  if (v151)
  {
    v152 = *(v12 - 136);
  }

  return (*(a10 + 8 * ((19 * (v152 ^ 1)) ^ v10)))(v148, 19, 160, v140, v125, v137, 3520868773, v129, a2, a3, a4, a5, a6, a7, a8, a9, a10, v154, v155, v156, v157, v158, v159, v160);
}

uint64_t sub_10027BC1C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char *a14, uint64_t a15, unint64_t a16, unint64_t a17, int a18, char *a19)
{
  v25 = *(a1 + 20);
  v26 = &a13;
  LODWORD(a15) = (v20 + 33955) ^ (139493411 * ((((2 * v26) | 0x3E3991E4) - v26 + 1625503502) ^ 0x933129B7));
  a14 = &a9;
  LOBYTE(a13) = ((35 * ((((2 * v26) | 0xE4) - v26 + 14) ^ 0xB7)) & 1) == 0;
  (*(v19 + 8 * (v20 ^ 0xE0F9)))(&a13);
  v27 = (v25 ^ 0x7FF77FFF77F7DCDELL) - 0x1F1E4D749E0322E4 + ((v25 << (((v20 + 92) | 0x11u) - 116)) & 0xEFEFB9BCLL);
  v28 = ((2 * (v22 ^ 0x638E05F5881EE29BLL)) ^ 0x55419F390748073ELL) & (v22 ^ 0x638E05F5881EE29BLL) ^ (2 * (v22 ^ 0x638E05F5881EE29BLL)) & 0xAAA0CF9C83A4039ELL;
  v29 = v28 ^ 0xAAA0408480A40081;
  v30 = (v28 ^ 0x82000B0883000090) & (4 * (v24 & (v22 ^ 0xE18E81658B3AE093) ^ v23)) ^ v24 & (v22 ^ 0xE18E81658B3AE093) ^ v23;
  v31 = ((4 * v29) ^ 0xAA833E720E900E7CLL) & v29 ^ (4 * v29) & 0xAAA0CF9C83A4039CLL;
  v32 = (v31 ^ 0xAA800E1002800200) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x20C18C81240183)) ^ 0xAA0CF9C83A4039F0) & (v31 ^ 0x20C18C81240183) ^ (16 * (v31 ^ 0x20C18C81240183)) & 0xAAA0CF9C83A40390;
  v34 = (v33 ^ 0xAA00C98802000100) & (v32 << 8) ^ v32;
  v35 = (((v33 ^ 0xA0061481A4020FLL) << 8) ^ 0xA0CF9C83A4039F00) & (v33 ^ 0xA0061481A4020FLL) ^ ((v33 ^ 0xA0061481A4020FLL) << 8) & 0xAAA0CF9C83A40300;
  v36 = v34 ^ 0xAAA0CF9C83A4039FLL ^ (v35 ^ 0xA0808C8080000000) & (v34 << 16);
  v37 = v22 ^ (2 * ((v36 << 32) & 0x2AA0CF9C00000000 ^ v36 ^ ((v36 << 32) ^ 0x3A4039F00000000) & (((v35 ^ 0xA20431C03A4009FLL) << 16) & 0x2AA0CF9C00000000 ^ 0x20204C1800000000 ^ (((v35 ^ 0xA20431C03A4009FLL) << 16) ^ 0x4F9C83A400000000) & (v35 ^ 0xA20431C03A4009FLL)))) ^ 0x8474F80344CEEEA7;
  v38 = 1603510583 * (((&a13 | 0xF9B7A88C645480B3) - &a13 + (&a13 & 0x64857739BAB7F48)) ^ 0xC646BF60F38FB218);
  a19 = &a9;
  a13 = v20 - v38 - 4998;
  a14 = 0;
  a15 = v21;
  a16 = (v27 ^ ((v27 ^ 0xC79EE14409A878CBLL) + 0x58B82C312FA33EEBLL) ^ ((v27 ^ 0xC42C8587B5ED0173) + 0x5B0A48F293E64753) ^ ((v27 ^ 0x1C903BA29A6471B9) - 0x7C4909284390C867) ^ ((v27 ^ 0x7FFB6DEBFFD5B1DFLL) - 0x1F225F6126210801) ^ 0x18A5C36B83DED51CLL) + v38;
  a17 = v37 + v38;
  v39 = (*(v19 + 8 * (v20 ^ 0xE11E)))(&a13);
  return (*(v19 + 8 * ((48975 * (a18 == -371865839)) ^ v20)))(v39);
}

uint64_t sub_10027C0B4()
{
  v2 = STACK[0xF10];
  v3 = STACK[0xF10] - 34979;
  v4 = LODWORD(STACK[0xA1A4]) + 952909388;
  *STACK[0xA1A8] ^= LODWORD(STACK[0xA174]) ^ v0;
  v5 = ((v4 ^ 0x9E4AB221) + 271397189) ^ v4 ^ ((v4 ^ 0x78C70E36) - 157250220) ^ ((v4 ^ 0x60EB3D70) - 292766186) ^ ((v4 ^ 0xF7FEFDFD) + 2040102553);
  v6 = v5 ^ 0x6D83C10;
  v7 = *(STACK[0xB728] + 4 * (v5 ^ 0x71987C9ALL));
  LODWORD(STACK[0xA158]) = v6;
  LODWORD(STACK[0xA170]) = v7;
  v8 = STACK[0xA154];
  v9 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x2FBAA10C) - ((&STACK[0x10000] + 3800) | 0xD0455EF3) - 800760077) ^ 0x422C8EF0);
  v10 = v9 + (((LODWORD(STACK[0xA194]) ^ 0xD45A7817) + 732268521) ^ ((LODWORD(STACK[0xA194]) ^ 0x54944B96) - 1419004822) ^ ((LODWORD(STACK[0xA194]) ^ 0xC97D323A) + 914542022)) - 1462826144;
  LODWORD(STACK[0x10EDC]) = ((((*STACK[0xA198] ^ 0xE88220A6) + 394125146) ^ ((*STACK[0xA198] ^ 0x8E7BEB14) + 1904481516) ^ ((*STACK[0xA198] ^ 0x66F9CBED) - 1727646701)) + 678242615) ^ v9;
  LODWORD(STACK[0x10ED8]) = v10;
  LODWORD(STACK[0x10EE0]) = v9 + v8 + 365362192;
  STACK[0x10EE8] = v1;
  LODWORD(STACK[0x10EF4]) = v2 - v9 + 1352419535;
  v11 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v2 + 16376)))(&STACK[0x10ED8]);
  return (*(v11 + 8 * (v3 ^ 0x27CF)))(2234432642, 2234432643, 2234432644, 1775617819, 10, 3923101457, 4294932395, -1080961354);
}

uint64_t sub_10027C4BC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 21825)))(v2);
}

void sub_10027C56C(void *a1)
{
  if (a1[6])
  {
    v1 = a1[1] == 0;
  }

  else
  {
    v1 = 1;
  }

  v4 = v1 || a1[2] == 0 || a1[4] == 0;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10027C6B0(__n128 a1, __n128 a2, __n128 a3, double a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  a1.n128_u16[0] = -7454;
  a1.n128_u8[2] = -30;
  a1.n128_u8[3] = -30;
  a1.n128_u8[4] = -30;
  a1.n128_u8[5] = -30;
  a1.n128_u8[6] = -30;
  a1.n128_u8[7] = -30;
  a2.n128_u16[0] = 29041;
  a2.n128_u8[2] = 113;
  a2.n128_u8[3] = 113;
  a2.n128_u8[4] = 113;
  a2.n128_u8[5] = 113;
  a2.n128_u8[6] = 113;
  a2.n128_u8[7] = 113;
  a3.n128_u16[0] = 28270;
  a3.n128_u8[2] = 110;
  a3.n128_u8[3] = 110;
  a3.n128_u8[4] = 110;
  a3.n128_u8[5] = 110;
  a3.n128_u8[6] = 110;
  a3.n128_u8[7] = 110;
  a5.n128_u16[0] = 22359;
  a5.n128_u8[2] = 87;
  a5.n128_u8[3] = 87;
  a5.n128_u8[4] = 87;
  a5.n128_u8[5] = 87;
  a5.n128_u8[6] = 87;
  a5.n128_u8[7] = 87;
  return (*(v11 + 8 * a10))((((a10 - 8227) | 0x2014) - 1732788357) & 0x67486FD7, v10 & 7, a1, a2, a3, xmmword_100F523B0, a5);
}

uint64_t sub_10027C748(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  HIDWORD(v13) = a2;
  LODWORD(v13) = a2;
  v14 = *(v11 + 4 * a6 + v8);
  v15 = (((a5 ^ 0x26027BC0) - 637696960) ^ ((a5 ^ 0xD166C46) - 219573318) ^ ((a5 ^ 0x366891FA) - 912822778)) + ((((v13 >> 27) ^ 0xF8762BB8) - 485731389) ^ (((v13 >> 27) ^ 0x32A98852) + 701755433) ^ (((v13 >> 27) ^ 0x654F6C69) + 2117407764)) + (((v9 ^ v6 ^ a1 ^ 0xD7AE40CC) + 352495879) ^ ((v9 ^ v6 ^ a1 ^ 0x754F30A4) - 1209804433) ^ ((v9 ^ v6 ^ a1 ^ 0xBF9DF614) + 2100371423)) - 1290716315 + (((v14 ^ 0x8C665534) + 1939450572) ^ ((v14 ^ 0x3D2E038B) - 1026425739) ^ ((v14 ^ 0x589D91AE) - 1486721454));
  v16 = (v15 ^ 0x2D5FC514) & (2 * (v15 & 0x2E5FD618)) ^ v15 & 0x2E5FD618;
  v17 = ((2 * (v15 ^ 0x3576C104)) ^ 0x36522E38) & (v15 ^ 0x3576C104) ^ (2 * (v15 ^ 0x3576C104)) & 0x1B29171C;
  v18 = v17 ^ 0x9291104;
  v19 = (v17 ^ 0x12000000) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0x6CA45C70) & v18 ^ (4 * v18) & 0x1B291718;
  v21 = (v20 ^ 0x8201400) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x1309030C)) ^ 0xB29171C0) & (v20 ^ 0x1309030C) ^ (16 * (v20 ^ 0x1309030C)) & 0x1B291700;
  v23 = v21 ^ 0x1B29171C ^ (v22 ^ 0x12011100) & (v21 << 8);
  return (*(v10 + 8 * (v7 | (8 * (a6 != 1430569125)))))(a2, v15 ^ (2 * ((v23 << 16) & 0x1B290000 ^ v23 ^ ((v23 << 16) ^ 0x171C0000) & (((v22 ^ 0x928061C) << 8) & 0x1B290000 ^ 0x12280000 ^ (((v22 ^ 0x928061C) << 8) ^ 0x29170000) & (v22 ^ 0x928061C)))) ^ 0x23617E5C, v9, 1430569126, v9);
}

void sub_10027CA9C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 32) == 0;
  v1 = *(a1 + 24) ^ (1112314453 * (((a1 | 0x93F1A828) - (a1 | 0x6C0E57D7) + 1812879319) ^ 0x7CA782F1));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10027CB98@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *(v9 + v8 % v10 + 4);
  v14 = (a2 + v12 * (((v8 / v10) ^ 6) + (((v8 / v10) << a4) & 4) - 1)) & 7 ^ 4;
  *(a7 + v8) = (((v13 - ((2 * v13) & 0x70) + a3) ^ 0x38) << (a5 - v14)) ^ (((v13 - ((2 * v13) & 0x70) + a3) ^ a3) >> v14) ^ a6;
  return (*(v7 + 8 * (v11 | (8 * (v8 == 24)))))(a1, (a2 + 1));
}

uint64_t sub_10027CCB0()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x822C)))(32);
  *(v2 + 192) = v3;
  return (*(v0 + 8 * (((v3 != 0) * (((v1 - 18304) | 0x2280) ^ (v1 - 9454))) ^ v1)))();
}

uint64_t sub_10027CE70(uint64_t result)
{
  v1 = *(result + 12) ^ (193924789 * ((~result & 0x2AFE1944 | result & 0xD501E6BB) ^ 0x9C452B22));
  v2 = *result;
  *v2 = HIBYTE(v1) ^ 0x27;
  v2[1] = BYTE2(v1) ^ 0x13;
  v2[2] = BYTE1(v1) ^ 0xEF;
  v2[3] = v1 ^ 0x46;
  return result;
}

void sub_10027CFC0(uint64_t a1)
{
  v1 = *(a1 + 12) + 193924789 * ((2 * (a1 & 0x41853B7) - a1 - 68703160) ^ 0x4D5C9E2E);
  v2 = *(&off_1010A0B50 + v1 - 44146) - 810145054;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0x7A2A)])(32) == 0) * ((v1 - 1141721555) & 0x440CFFF2 ^ 0x66D4)) ^ v1)];
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10027D0F0()
{
  v0 = STACK[0xF10] + 23359773;
  v1 = STACK[0x3808];
  STACK[0x36F0] = STACK[0x7DE8];
  STACK[0x73E8] = v1;
  LODWORD(STACK[0x56B8]) = 744170661;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x164F717 ^ (9065 * (v0 != -1422475480)))))();
}

uint64_t sub_10027D15C@<X0>(int a1@<W8>)
{
  *(*(v8 + 8) + 4 * (v7 + v3)) = *(*(v8 + 8) + 4 * (a1 + v7));
  v10 = v7 + v5 < v1;
  if (v1 < v4 != v7 + v5 < v4)
  {
    v10 = v1 < v4;
  }

  return (*(v9 + 8 * ((v10 * v6) ^ v2)))();
}

uint64_t sub_10027D1B0@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18)
{
  v19 = &STACK[0x530] + STACK[0x2F0];
  STACK[0x388] = v19;
  *v19 = a18;
  *(v19 + 2) = a17;
  return (*(v18 + 8 * (((a2 - 1926737279) & 0x72D7EBBB ^ 0xC61B) + a2)))(a1, &off_1010A0B50);
}

void sub_10027D300(uint64_t a1)
{
  v1 = *(a1 + 24) + 1603510583 * ((((2 * a1) | 0x1338EC1E) - a1 + 1986234865) ^ 0x1E4744A4);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10027D458(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44)
{
  *(a44 + 4 * v44) ^= (v45 ^ v46) + v47;
  v50 = v44 + 1;
  v51 = a1 - a43;
  if (a43 + v48 >= 0)
  {
    v51 = a43 + v48;
  }

  return (*(v49 + 8 * (((8 * (v50 >= v51)) | (32 * (v50 >= v51))) ^ v45)))();
}

uint64_t sub_10027D4E0(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[54];
  v1[54] = (*a1)[11];
  v1[11] = v2;
  v3 = v1[53];
  v1[53] = v1[10];
  v1[10] = v3;
  v4 = v1[52];
  v1[52] = v1[51];
  v1[51] = v1[46];
  v5 = v1[50];
  v6 = v1[35];
  v7 = v1[49];
  v1[49] = v1[4];
  v1[4] = v7;
  v8 = v1[47];
  v1[47] = v1[25];
  v1[46] = v1[45];
  v1[45] = v1[12];
  v1[12] = v4;
  v9 = v1[44];
  v1[44] = v1[3];
  v1[3] = v9;
  v10 = v1[43];
  v1[43] = v1[39];
  v11 = v1[42];
  v1[42] = v6;
  v1[50] = v11;
  v12 = *v1;
  *v1 = v1[41];
  v13 = v1[2];
  v1[2] = v1[40];
  v1[39] = v1[19];
  v14 = v1[38];
  v15 = v1[27];
  v16 = v1[36];
  v17 = v1[21];
  v1[35] = v1[28];
  v18 = v1[34];
  v19 = v1[26];
  v20 = v1[33];
  v21 = v1[23];
  v22 = v1[32];
  v23 = v1[6];
  v24 = v1[31];
  v25 = v1[29];
  v1[36] = v1[30];
  v1[29] = v1[16];
  v1[28] = v1[1];
  v1[27] = v21;
  v1[33] = v14;
  v1[26] = v1[5];
  v1[25] = v1[9];
  v1[38] = v1[24];
  v1[23] = v25;
  v1[31] = v20;
  v26 = v1[47];
  v1[47] = v1[22];
  v1[21] = v12;
  v1[41] = v16;
  v27 = v1[53];
  v1[53] = v1[20];
  v1[19] = v1[7];
  v1[40] = v1[18];
  v1[20] = v1[17];
  v1[16] = v1[14];
  v28 = v1[49];
  v1[49] = v1[15];
  v1[14] = v19;
  v1[34] = v24;
  v1[30] = v1[13];
  v29 = v1[12];
  v1[12] = v1[44];
  v1[44] = v29;
  v30 = v1[11];
  v1[11] = v26;
  v1[22] = v30;
  v31 = v1[10];
  v1[10] = v1[52];
  v1[52] = v31;
  result = v1[43];
  v1[9] = result;
  v1[43] = v8;
  v1[7] = v28;
  v1[15] = v10;
  v1[6] = v13;
  v1[18] = v22;
  v1[5] = v23;
  v1[32] = v18;
  v33 = v1[4];
  v1[4] = v1[42];
  v1[42] = v33;
  v34 = v1[3];
  v1[3] = v27;
  v1[17] = v34;
  v35 = v1[2];
  v1[2] = v15;
  v1[24] = v35;
  v1[1] = v1[54];
  v1[54] = v5;
  v36 = *v1;
  *v1 = v17;
  v1[13] = v36;
  return result;
}

uint64_t sub_10027D838()
{
  v3 = v2 + ((((v1 + 1366982712) ^ 0xAAD4476) + (v0 ^ 0xA4299FA9)) ^ ((v0 ^ 0x6AC27002) - 1791127554) ^ (((v1 - 33304) ^ 0xD8C1F697) + (v0 ^ 0x273E28BA))) - 371865855;
  STACK[0x5E88] = v3;
  v4 = STACK[0x7690];
  STACK[0x2270] = &STACK[0xC4D0] + STACK[0x7690] + 120;
  STACK[0x7690] = v4 + 160;
  v6 = v2 != -4 && v3 != 0;
  return (*(STACK[0xF18] + 8 * ((1989 * v6) ^ v1)))();
}

uint64_t sub_10027D938(unsigned int a1, int a2, unsigned int a3)
{
  v13 = (((LODWORD(STACK[0x31C]) ^ v4) + v5) ^ ((LODWORD(STACK[0x31C]) ^ v6) + v7) ^ ((LODWORD(STACK[0x31C]) ^ v8) + ((v12 - 1683) ^ v9))) + a2;
  v14 = v13 < a1;
  v15 = v10 + a1 < v13;
  if (v10 > a3 != v14)
  {
    v15 = v14;
  }

  return (*(v11 + 8 * ((14 * !v15) ^ (v12 + v3))))();
}

uint64_t sub_10027DAD4(uint64_t a1, int a2)
{
  v6 = ((2 * a2) & 0x62) + (a2 ^ 0xED7DFE71);
  v7 = ((2 * a2) & 0x7A) + ((v4 + 808) ^ a2 ^ 0xFBFFE0FA);
  v8 = ((v6 + 520039391) ^ 0xDEF27934) & (2 * ((v6 + 520039391) & 0x1B0)) ^ (v6 + 520039391) & 0x1B0;
  v9 = *(v3 + v7 + 67147779) ^ 0x5F;
  v10 = ((2 * ((v6 + 520039391) ^ 0xDEF27854)) ^ 0x5AE15BC8) & ((v6 + 520039391) ^ 0xDEF27854) ^ (2 * ((v6 + 520039391) ^ 0xDEF27854)) & 0x2D70ADE4;
  v11 = (v10 ^ 0xFFFFF9FF) & (4 * v8) ^ v8;
  v12 = ((*(v3 + v7 + 67147782) << 24) | ((*(v3 + v7 + 67147781) ^ 0x5F) << 16) | v9 | ((*(v3 + v7 + 67147780) ^ 0x5F) << 8)) ^ 0x5F000000;
  v13 = ((4 * (v10 ^ 0x2510A424)) ^ 0xB5C2B790) & (v10 ^ 0x2510A424) ^ (4 * (v10 ^ 0x2510A424)) & 0x2D70ADE0;
  v14 = (v13 ^ 0x2540A580) & (16 * v11) ^ v11;
  v15 = ((16 * (v13 ^ 0x8300864)) ^ 0xD70ADE40) & (v13 ^ 0x8300864) ^ (16 * (v13 ^ 0x8300864)) & 0x2D70ADC0;
  v16 = v12 - 2 * (v12 & 0x69D5C715 ^ v9 & 4);
  v17 = v14 ^ 0x2D70ADE4 ^ (v15 ^ 0x5008C00) & (v14 << 8);
  *(v2 + 4 * ((((v6 + 520039391) ^ (2 * ((v17 << 16) & 0x2D700000 ^ v17 ^ ((v17 << 16) ^ 0x2DE40000) & (((v15 ^ 0x287021A4) << 8) & 0x2D700000 ^ 0xD500000 ^ (((v15 ^ 0x287021A4) << 8) ^ 0x70AD0000) & (v15 ^ 0x287021A4))))) >> 2) ^ 0x3CE8E39E)) = ((((v16 - 371865839) ^ 0x927512C4) + 1837821244) ^ (((v16 - 371865839) ^ 0x40EF13C1) - 1089409985) ^ (((v16 - 371865839) ^ 0x3B4FC614) - 995083796)) + 1546185913;
  return (*(v5 + 8 * ((52 * (v6 + 310509971 < 0x40)) ^ v4)))();
}

uint64_t sub_10027DD90(uint64_t a1, uint64_t a2)
{
  v3 = *STACK[0x5818];
  STACK[0x3B90] = 0;
  LODWORD(STACK[0x77C8]) = -371865839;
  STACK[0x8528] = 0x7CB293E2FD0BE5C5;
  return (*(STACK[0xF18] + 8 * (((v3 != 0) * (((v2 - 33443) | 0x644) ^ 0xE14)) ^ (v2 + 9236))))(a1, a2, 371891400);
}

uint64_t sub_10027DE14(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v14.val[0].i64[0] = (v10 + a3 - 1) & 0xF;
  v14.val[0].i64[1] = (v10 + a3 + 14) & 0xF;
  v14.val[1].i64[0] = (v10 + a3 + 13) & 0xF;
  v14.val[1].i64[1] = (v11 + a3) & 0xF;
  v14.val[2].i64[0] = (v10 + a3 + 11) & 0xF;
  v14.val[2].i64[1] = (v10 + a3 + 10) & 0xF;
  v14.val[3].i64[0] = (v10 + a3 + 9) & 0xF;
  v14.val[3].i64[1] = (v10 + a3) & 0xF ^ 8;
  *(a4 + a3) = veor_s8(veor_s8(veor_s8(*(v7 + v14.val[0].i64[0] - 7), *(a4 + a3)), veor_s8(*(v9 + v14.val[0].i64[0] - 7), *(v14.val[0].i64[0] + v8 - 4))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a6), a7)));
  return (*(v12 + 8 * (((a2 == a3) * a5) ^ a1)))();
}

uint64_t sub_10027DF0C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18)
{
  v20 = 1022166737 * (&a15 ^ 0xBA10E192);
  a16 = (((v18 ^ 0xACE9) - 7467) ^ 0x36609B71) - v20 - 2027139837 * (*(a10 + 32) + a1);
  a17 = v20 + v18 - 734;
  a15 = a13;
  v21 = (*(v19 + 8 * (v18 ^ 0x4AC8)))(&a15);
  return (*(v19 + 8 * ((101 * (a18 == ((3 * (v18 ^ 0xACE9)) ^ 0x59441AD0))) ^ v18)))(v21);
}

uint64_t sub_10027EC78@<X0>(int a1@<W8>)
{
  v4 = a1 | 0x3014;
  v5 = (*(v3 + 8 * ((a1 | 0x3014) ^ 0xBB34)))();
  *v2 = 0;
  return (*(v1 + 8 * v4))(v5);
}

uint64_t sub_10027ECF4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6244)))((((v0 - 25756) | 0x3A2Bu) - 371898202) ^ LODWORD(STACK[0x585C]));
  STACK[0x1300] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (327 * (v0 ^ 0xA8B1) - 35587)) ^ v0)))();
}

uint64_t sub_10027EDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 30181;
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x5ED0];
  STACK[0x5D28] = &STACK[0x8A40];
  LODWORD(STACK[0x4704]) = -1239554391;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10027EE90()
{
  v2 = (((v1 ^ 0x552D35EF) + 2017264770) ^ ((v1 ^ 0x826F8688) - 1350584345) ^ ((v1 ^ (3533 * (v0 ^ 0xB360)) ^ 0xEC789380) - 1050113142)) + 919261851;
  v3 = (v2 ^ 0x2AE2F578) & (2 * (v2 & 0xB30AF47A)) ^ v2 & 0xB30AF47A;
  v4 = ((2 * (v2 ^ 0x6EE25DEC)) ^ 0xBBD1532C) & (v2 ^ 0x6EE25DEC) ^ (2 * (v2 ^ 0x6EE25DEC)) & 0xDDE8A996;
  v5 = v4 ^ 0x4428A892;
  v6 = (v4 ^ 0x98400100) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x77A2A658) & v5 ^ (4 * v5) & 0xDDE8A990;
  v8 = (v7 ^ 0x55A0A000) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x88480986)) ^ 0xDE8A9960) & (v7 ^ 0x88480986) ^ (16 * (v7 ^ 0x88480986)) & 0xDDE8A980;
  v10 = v8 ^ 0xDDE8A996 ^ (v9 ^ 0xDC888900) & (v8 << 8);
  v11 = v2 ^ (2 * ((v10 << 16) & 0x5DE80000 ^ v10 ^ ((v10 << 16) ^ 0x29960000) & (((v9 ^ 0x1602096) << 8) & 0x5DE80000 ^ 0x15400000 ^ (((v9 ^ 0x1602096) << 8) ^ 0x68A90000) & (v9 ^ 0x1602096)))) ^ 0xF20E6047;
  LODWORD(STACK[0xE80]) = v11;
  LODWORD(STACK[0x49BC]) = v11;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10027F068()
{
  LODWORD(STACK[0x4630]) = v0;
  LODWORD(STACK[0x4364]) = v2;
  return (*(STACK[0xF18] + 8 * (((*(STACK[0x2E48] + 40) != 0) * (v1 ^ 0x8843 ^ ((v1 - 35811) | 0x454))) | v1)))();
}

uint64_t sub_10027F0C4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x867C]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((v2 - 44721) | 0x7810)))();
}

uint64_t sub_10027F284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, unint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  LODWORD(a52) = 0;
  v61 = *STACK[0x430];
  v62 = *STACK[0x458];
  STACK[0x368] = v59;
  LODWORD(STACK[0x22C]) = v61;
  STACK[0x278] = v62;
  STACK[0x308] = a46;
  LODWORD(STACK[0x394]) = 0;
  LODWORD(STACK[0x2CC]) = -702071815;
  return (*(v60 + 8 * v58))(a1, a2, a3, a4, a5, v61, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a46, a50, a51, a52, a53, a54, a55, v62, a57, a58);
}

uint64_t sub_10027F2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = ((a3 ^ 0x40A40842) + 2054943942) ^ a3 ^ ((a3 ^ 0x4514F218) + 2144013984) ^ ((a3 ^ 0x6FFE5367) + 1428271073) ^ ((a3 ^ 0xAF6EAA45) - 1783551223 + v69 - 2609);
  v72 = ((v71 ^ 0x23380F21) - 371880424) ^ ((v71 ^ 0xF36F5E06) + 964878129) ^ ((v71 ^ 0x1577525F) - 543501462);
  v73 = ((((a69 ^ 0x6A2A8B1E) - 1781173022) ^ ((a69 ^ 0x7B96E082) - 2073485442) ^ ((a69 ^ 0x11BC6B5Bu) - 297560923)) + 199) % (265126455 - v72);
  v74 = v72 + (v73 ^ 0x7B7BEC33) - 1114357762 + ((2 * v73) & 0xF6F7D866);
  if (v74 - 1222487406 >= 0xFB)
  {
    v75 = 478712583;
  }

  else
  {
    v75 = 1701199989 - v74;
  }

  v77 = a3 != 0x3CE25E0EC520035FLL && v75 != 478712333;
  return (*(v70 + 8 * ((29 * v77) ^ v69)))();
}

uint64_t sub_10027F4F8@<X0>(int a1@<W8>, __n128 a2@<Q1>)
{
  a2.n128_u16[0] = -6683;
  a2.n128_u8[2] = -27;
  a2.n128_u8[3] = -27;
  a2.n128_u8[4] = -27;
  a2.n128_u8[5] = -27;
  a2.n128_u8[6] = -27;
  a2.n128_u8[7] = -27;
  return (*(v2 + 8 * (a1 - 24322)))(xmmword_100F523B0, a2);
}

uint64_t sub_10027F598()
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
  STACK[0xC3A0] = 0;
  STACK[0xC3A8] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC3A0] | v10);
  *(&STACK[0xC3A0] | v10) = 0;
  LOBYTE(STACK[0xC3A7]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC3A0] | v12);
  *(&STACK[0xC3A0] | v12) = STACK[0xC3A6];
  LOBYTE(STACK[0xC3A6]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC3A0] | v14);
  *(&STACK[0xC3A0] | v14) = STACK[0xC3A5];
  LOBYTE(STACK[0xC3A5]) = v15;
  v16 = STACK[0xC3A0];
  LOBYTE(STACK[0xC3A0]) = STACK[0xC3A4];
  LOBYTE(STACK[0xC3A4]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC3A0] | v17);
  *(&STACK[0xC3A0] | v17) = STACK[0xC3A3];
  LOBYTE(STACK[0xC3A3]) = v18;
  v19 = STACK[0xC3A1];
  LOBYTE(STACK[0xC3A2]) = STACK[0xC3A0];
  LOWORD(STACK[0xC3A0]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC3A0] = vmla_s32(v22, STACK[0xC3A0], vdup_n_s32(0x1000193u));
  STACK[0xC3A8] ^= STACK[0xC3A0];
  STACK[0xC3A8] = vmul_s32(vsub_s32(STACK[0xC3A8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC3AA];
  LOWORD(STACK[0xC3A9]) = STACK[0xC3A8];
  LOBYTE(STACK[0xC3A8]) = v23;
  v24 = (&STACK[0xC3A8] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC3AB];
  LOBYTE(STACK[0xC3AB]) = v19;
  LOBYTE(v24) = STACK[0xC3A8];
  LOBYTE(STACK[0xC3A8]) = STACK[0xC3AC];
  LOBYTE(STACK[0xC3AC]) = v24;
  v25 = (&STACK[0xC3A8] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC3AD];
  LOBYTE(STACK[0xC3AD]) = v24;
  v26 = (&STACK[0xC3A8] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC3AE];
  LOBYTE(STACK[0xC3AE]) = v25;
  v27 = (&STACK[0xC3A8] | v10);
  v28 = *v27;
  *v27 = STACK[0xC3AF];
  LOBYTE(STACK[0xC3AF]) = v28;
  v29 = STACK[0xC3A8];
  v30 = (553300517 * STACK[0xC3A8]) ^ v9;
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
  v43 = STACK[0x940];
  do
  {
    v44 = *(v29 + v35);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v57.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v42), vsubq_s32(v38, v42)), v42), vmull_high_u16(v46, v40));
    v57.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v42), vsubq_s32(v37, v42)), v42), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v57.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v42), vsubq_s32(v39, v42)), v42), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v57.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v36, v42), vsubq_s32(v36, v42)), v42), vmull_high_u16(v45, v40));
    *(v29 + v35) = vqtbl4q_s8(v57, xmmword_100BC7660);
    v35 += 16;
    v39 = vaddq_s32(v39, v41);
    v38 = vaddq_s32(v38, v41);
    v37 = vaddq_s32(v37, v41);
    v36 = vaddq_s32(v36, v41);
  }

  while (v35 != 576);
  v47 = 0;
  v48 = xmmword_100F52AE0;
  v49 = xmmword_100F52AF0;
  v50 = vdupq_n_s32(v30);
  v51 = v29 + 576;
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
  *v43 = STACK[0xC3A8];
  return (*(STACK[0xF18] + 8 * (v1 - 26491)))(v48, v49);
}

uint64_t sub_10027FA60()
{
  v1 = STACK[0x2838] - (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFB724B0B8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x719361230411ED1BLL);
  v2 = (((v0 ^ 0x177C76D9DA949D5ELL) - 0x1560D4F020706BCLL) ^ ((v0 ^ 0x5EC3406AC7DE802BLL) - 0x48E93BFC1F4D1BC9) ^ (((STACK[0xF10] - 137546647) & 0xEFFF5B7F) + 0x5F954D24EC26A356 + ((STACK[0xF10] - 28514 - 0x49BF36B30B604175) ^ v0))) - 0x162A7B96608CDB01;
  v3 = v2 < 0x800000006E2CC80CLL;
  v4 = v1 + 1848428556 < v2;
  if (v3 != v1 > 0x7FFFFFFF91D337F3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((1018 * v5) ^ (STACK[0xF10] - 16707))))();
}

uint64_t sub_10027FC2C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x730D)))((((17 * (v1 ^ 0xBA8A)) ^ 0xE9D50ED9) + ((v1 + 2144019046) & 0x8034AF3F)) ^ v0);
  STACK[0xA7D0] = v3;
  return (*(v2 + 8 * ((13 * (v3 == 0)) ^ v1)))();
}

uint64_t sub_10027FD40(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = STACK[0xF18];
  STACK[0x8CA0] = *(STACK[0xF18] + 8 * v5);
  STACK[0x5AD8] = v4;
  STACK[0x1E20] = 0;
  LODWORD(STACK[0x16D4]) = 326555751;
  LODWORD(STACK[0x5814]) = -371865839;
  return (*(v7 + 8 * (((v6 == 0) * (((v2 + 20957) ^ 0x979) - 35463)) ^ v2)))(a1, a2, 371891400);
}

uint64_t sub_10027FDB8@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v11 = v6 - 1;
  *(v8 + v11) = *(v9 + v11) ^ *(v3 + (v11 & 0xF)) ^ *(a3 + (v11 & 0xF)) ^ ((v11 & 0xF) * v7) ^ *(v4 + (v11 & 0xF)) ^ a1;
  return (*(v10 + 8 * (((v11 == 0) * a2) ^ v5)))();
}

uint64_t sub_10027FF3C@<X0>(int a1@<W4>, int a2@<W8>)
{
  v6 = (v3 ^ 0xB3BEF6FF) + 2 * v3;
  v7 = *(v5 + (a1 ^ 0x3F15) + 1279290256 + v6) ^ 0x5F;
  v8 = ((*(v5 + v6 + 1279330564) << 24) | ((*(v5 + v6 + 1279330563) ^ 0x5F) << 16) | v7 | ((*(v5 + v6 + 1279330562) ^ 0x5F) << 8)) ^ 0x5F000000;
  v9 = v8 - 2 * (v8 & 0x69D5C715 ^ v7 & 4) - 371865839;
  *(v2 + 4 * (((((a2 ^ 0xB1BA99E2) + 625529161) ^ a2 ^ ((a2 ^ 0xE5141FBE) + 1910920981) ^ ((a2 ^ 0xC0584EF2) + 1420428889) ^ ((a2 ^ 0xFFFB7FFA) + 1795766098)) >> 2) ^ 0x1AC36DD5)) = (((v9 ^ 0x387A6282) - 947544706) ^ ((v9 ^ 0x4B0F3971) - 1259288945) ^ ((v9 ^ 0x9AA09CE2) + 1700750110)) + 1360767398;
  return (*(v4 + 8 * (((16 * ((a2 - 1796061009) < 0x40)) | (((a2 - 1796061009) < 0x40) << 12)) ^ a1)))();
}

uint64_t sub_1002802D0()
{
  v1 = v0 - 14733;
  STACK[0x10ED8] = *STACK[0x4080];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x48A2CE00) + 1218629126) ^ 0xAE84D5C9) + 296753103;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100280368()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 20691;
  LODWORD(STACK[0x951C]) = v0;
  return (*(STACK[0xF18] + 8 * ((29599 * ((v0 & 0xFFFFFFFB) == v1 - 371835946)) ^ v2)))();
}

uint64_t sub_1002805EC(unint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xE9D5C711E9D5C711;
  *(a1 + 16) = 0xA52FF067E9D5C711;
  *(a1 + 24) = -371865839;
  STACK[0x58C8] = a1;
  LODWORD(STACK[0x1638]) = STACK[0xED0];
  STACK[0x30A8] = 0;
  STACK[0x7078] = 0;
  STACK[0x9338] = 0;
  LODWORD(STACK[0x6F5C]) = 0;
  LOBYTE(STACK[0x6AC3]) = 0;
  v2 = STACK[0xF18];
  STACK[0x9320] = *(STACK[0xF18] + 8 * (v1 - 22533));
  return (*(v2 + 8 * (v1 - 28676 + v1 - 15211)))();
}

uint64_t sub_100280680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = (((*(v7 + (a2 ^ v8)) ^ 0x56) - 86) ^ ((*(v7 + (a2 ^ v8)) ^ 0xFFFFFFC5) + 59) ^ ((*(v7 + (a2 ^ v8)) ^ 0xFFFFFFCC) + 52)) * (v5 ^ 0x1CD62A73);
  v10 = v9 + 51;
  v9 -= 77;
  v11 = v9 ^ (2 * ((v10 ^ 0x44) & (2 * ((v10 ^ 0x44) & (2 * ((v10 ^ 0x44) & (2 * ((v10 ^ 0x44) & (2 * ((v10 ^ 4) & (2 * (v9 & 0xFFFFFFC6)) ^ v9 & 0xFFFFFFC6)) ^ v9 & 0xFFFFFFC6)) ^ v9 & 0xFFFFFFC6)) ^ v9 & 0xFFFFFFC6)) ^ v9 & 0xFFFFFFC6));
  *(a3 + v6) = v11 ^ v4;
  if (v6 >= 0x12)
  {
    v12 = -18;
  }

  else
  {
    v12 = 7;
  }

  return (*(v3 + 8 * ((17599 * (v5 > 0x9AEBB857)) ^ (v5 + 483819989))))(a1, *(a3 + (v12 + v6)) ^ 0x46 ^ v11);
}

uint64_t sub_100280A74(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5, int8x16_t a6, double a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v21 = ~v17 + v15;
  v22 = v21 & 0xF;
  v24.i64[0] = vqtbl4q_s8(*(&a3 - 1), a6).u64[0];
  *&v24.i64[1] = a7;
  v25 = vrev64q_s8(veorq_s8(veorq_s8(*(v19 + v21), *(v12 + v22 - 15)), veorq_s8(*(v14 + v22 - 15), *(v22 + v13 - 11))));
  v26 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v25, v25, 8uLL), a9), vmulq_s8(v24, a8)));
  *(v19 + v21) = vextq_s8(v26, v26, 8uLL);
  return (*(v20 + 8 * (((a11 + v17 == v16) * a12) ^ v18)))();
}

uint64_t sub_100280B3C()
{
  STACK[0x3D8] = v2;
  STACK[0x410] = v0;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_100280B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  if (a21 == 6122 * (a10 ^ 0x1A91) + 1497650316)
  {
    v22 = 371891453;
  }

  else
  {
    v22 = 3923101457;
  }

  return (*(v21 + 8 * a10))(a1, a2, a3, v22);
}

uint64_t sub_100280BD8@<X0>(int a1@<W1>, char a2@<W2>, int a3@<W3>, int a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, uint64_t a8@<X8>)
{
  v23 = *(a8 + 1);
  v24 = v23 & ((v12 ^ 0x1E) - 33) ^ 0xBB;
  v25 = v21 & 0x98 ^ 0x33;
  v26 = v21 ^ v14;
  v27 = v23 ^ v21 ^ (2 * (v24 ^ v25 ^ v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (((2 * (v25 ^ v21 & 0x22)) ^ 0x44) & v26 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ (v23 ^ v14) & (2 * ((v23 ^ v14) & (2 * ((v23 ^ v14) & (2 * ((v23 ^ v14) & (2 * ((v9 ^ (2 * (v24 ^ v23 & 0x52))) & (v23 ^ v14) ^ v24)) ^ v24)) ^ v24)) ^ v24))));
  v28 = v21 & 0xD0 ^ 0x9F;
  v29 = ((v27 ^ 0xC2) + 24) ^ ((v27 ^ 0x35) - 31) ^ ((v27 ^ 0x87) + 83);
  v30 = v29 - 96;
  v31 = v29 & v10 ^ 0x7C;
  v32 = ((v21 ^ (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & (2 * (v26 & 0x2A ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0xD0) << 16;
  v33 = v20 & 0xE2 ^ 0xB4;
  v34 = v32 & 0xFFFF00FF | ((v30 ^ (2 * ((v30 ^ 0x38) & (2 * ((v30 ^ 0x38) & (2 * ((v30 ^ 0x38) & (2 * ((v30 ^ 0x38) & (2 * ((v30 ^ 0x38) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v10) << 8);
  v35 = (v20 ^ (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * ((v20 ^ 0x38) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x465BC730;
  v36 = v19[3];
  v37 = v36 & 0xE0 ^ 0x37;
  v38 = v35 & ~v34 | v34 & 0xA43800;
  v39 = (v36 ^ (2 * ((v36 ^ v14) & (2 * ((v36 ^ v14) & (2 * ((v36 ^ v14) & (2 * ((v36 ^ v14) & (2 * ((v36 ^ v14) & (2 * ((v36 ^ v14) & 0x1A ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)));
  v40 = (((v38 << 8) ^ v22) & (v39 ^ 0x286558A4) | (v38 << 8) & v15) ^ a1;
  v41 = v40 + ((v40 + v11 * v11) | 1) * ((2 * ((v39 ^ 0x20) & v11)) | 2) * (v40 ^ v11 | 1);
  v42 = v41 - (a3 & (2 * v41)) + a4;
  *v19 = (((v42 ^ 0x9F) - 60) ^ ((v42 ^ a5) + 5) ^ ((v42 ^ a6) + 22)) + 115;
  *(a8 + 1) = (((BYTE1(v42) ^ 4) + 94) ^ ((BYTE1(v42) ^ a7) - 54) ^ ((BYTE1(v42) ^ 0xC3) - 101)) + 55;
  v19[2] = (((BYTE2(v42) ^ v16) + 111) ^ ((BYTE2(v42) ^ a2) - 4) ^ ((BYTE2(v42) ^ v17) - 62)) - 15;
  v19[3] = (((HIBYTE(v42) ^ v18) + 52) ^ ((HIBYTE(v42) ^ 0x3E) - 7) ^ ((HIBYTE(v42) ^ 0x83) + 70)) - 73;
  return (*(v8 + 8 * (((v11 != 50) * v13) ^ v12)))();
}

uint64_t sub_1002810E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v7 + 8 * v6);
  *(v8 - 192) = *(a5 + 8 * (v5 - 705421512)) - 1048392095;
  *(v8 - 176) = *(a5 + 8 * (v5 - 705421262)) - 579625171;
  return v9();
}

uint64_t sub_1002813AC@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{
  v6 = (((v4 ^ 0x84E707CA) + 2065233974) ^ ((v4 ^ 0x77234BC3) - 1998801859) ^ ((v4 ^ 0xF3C44C56) + 205239210)) + (((*(a3 + 12) ^ v3 ^ 0xBB7E7022) + 1149341662) ^ ((*(a3 + 12) ^ v3 ^ 0xB5825ABA) + 1249748294) ^ ((*(a3 + 12) ^ v3 ^ 0xD5DB75E1) + 707037727)) + 1188904038;
  v7 = (v6 ^ 0xC5038A70) & (2 * (v6 & 0x944A2372)) ^ v6 & 0x944A2372;
  v8 = ((2 * (v6 ^ 0xE517CED4)) ^ 0xE2BBDB4C) & (v6 ^ 0xE517CED4) ^ (2 * (v6 ^ 0xE517CED4)) & 0x715DEDA6;
  v9 = (v8 ^ 0x60198900) & (4 * v7) ^ v7;
  v10 = ((4 * (v8 ^ 0x114424A2)) ^ 0xC577B698) & (v8 ^ 0x114424A2) ^ (4 * (v8 ^ 0x114424A2)) & 0x715DEDA0;
  v11 = (v10 ^ 0x4155A480) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x30084926)) ^ 0x15DEDA60) & (v10 ^ 0x30084926) ^ (16 * (v10 ^ 0x30084926)) & 0x715DEDA0;
  return (*(a1 + 8 * v5))(((v11 ^ 0x715DEDA6 ^ (v12 ^ 0x115CC800) & (v11 << 8)) << 16) ^ 0x6DA60000u, ((v12 ^ 0x60012586) << 8) & 0x715D0000 ^ 0x20100000u, *(a1 + 8 * v5), 537919488, 1575813120, 1626871695, 399529841, v5 ^ 0xB887u);
}

uint64_t sub_1002817A8@<X0>(int a1@<W8>)
{
  v3 = (a1 - 37420) | 0x4160;
  *(*(v1 + 8 * (v3 + 28455)))() = 0;
  v4 = (*(v1 + 8 * (v3 ^ 0x96F9)))(v2 + 33) == 0;
  return (*(v1 + 8 * (((((v3 - 97) ^ v4) & 1) * (v3 - 21534)) ^ v3)))();
}

uint64_t sub_100281820()
{
  v4 = (((v2 ^ 0x8254DAB3) + 2108368205) ^ ((v2 ^ 0x735C291A) - 1935419674) ^ (((((v0 - 1650030572) & 0x62591DCD) + 417145003) ^ v2) - 417150136)) + 1095602888;
  v5 = (((v1 ^ 0xC175B08F) + 1049251697) ^ ((v1 ^ 0xD92A52E0) + 651537696) ^ ((v1 ^ 0xF18A257E) + 242604674)) + 1095602888;
  v6 = (v4 < 0x5777CBB7) ^ (v5 < 0x5777CBB7);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0x5777CBB7;
  }

  return (*(v3 + 8 * ((252 * !v7) ^ v0)))();
}

uint64_t sub_100281934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xF18];
  STACK[0x22B8] = *(STACK[0xF18] + 8 * v7);
  return (*(v8 + 8 * ((((v7 - 2305) | 0x9324) - 21707) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_10028198C()
{
  v2 = (((v0 + 461196798) ^ 0xB7DB9126) + 1360341958) ^ (v0 + 461196798) ^ (((v0 + 461196798) ^ 0xC95BE591) + 798318451) ^ (((v0 + 461196798) ^ 0xCDFDFFF7) + 724780309) ^ (((v0 + 461196798) ^ 0xAA4CCE5C) + ((v1 - 18821) | 0x903) + 1283615665);
  v3 = (((v2 ^ 0x824EDAD) + 1123035735) ^ ((v2 ^ 0x3416B0F6) + 2126673678) ^ ((v2 ^ 0x25031847) + 1876418493)) + 1183800991;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 33031)))(((v3 ^ 0x227957A8) + 1207060946) ^ v3 ^ ((v3 ^ 0xBAF8CC44) - 546057666) ^ ((v3 ^ 0xD83E8197) - 1112170513) ^ ((v3 ^ 0xDACBFBFD) - 1086265979) ^ 0x9A74E186);
  STACK[0xAEA0] = v5;
  STACK[0xAEA8] = v5;
  if (v5)
  {
    v6 = -371865839;
  }

  else
  {
    v6 = 371891397;
  }

  LODWORD(STACK[0xAEB4]) = v6;
  return (*(v4 + 8 * ((95 * (v5 != 0)) ^ v1)))();
}

uint64_t sub_100281C00()
{
  v2 = *(v1 + 212);
  STACK[0x36F0] = STACK[0x6FC0];
  STACK[0x73E8] = v2;
  LODWORD(STACK[0x56B8]) = 744170657;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100281F48@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = ((v3 - 124) ^ 0x78) + *(v4 + v5) - ((2 * *(v4 + v5)) & 0xBF);
  return (*(v2 + 8 * ((8018 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_100281FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v39 = veorq_s8(**(v36 + 32), xmmword_100F52870);
  *(v37 - 128) = veorq_s8(**(v36 + 24), xmmword_100F52860);
  *(v37 - 112) = v39;
  return (*(v35 + 8 * (a1 ^ (15 * (v34 != 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, v38, v36, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1002821A8()
{
  LODWORD(STACK[0x65FC]) = ((((v2 - 653759565) & 0x26F7ABBB) - 2026032400) ^ ((v2 - 21184) | 0x8060)) + v0 - v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 22220)))();
  STACK[0x2218] = v4;
  return (*(v3 + 8 * ((v4 != 0) ^ v2)))();
}

uint64_t sub_10028231C@<X0>(unint64_t a1@<X8>)
{
  v7 = v5 + 31681;
  v8 = a1 + v4;
  v9 = (v4 - 1) & 0xF;
  v10 = v2 - v4 + v9 + 1;
  v11 = v2 + (((v7 - 28334) | 0x825u) ^ 0x4CACLL) + v9;
  v12 = v9 + v3 + 2;
  v13 = v9 + v1 + 8;
  v15 = v12 > a1 && v12 - v4 < v8;
  v17 = v10 < v8 && v11 > a1 || v15;
  if (v13 <= a1 || v13 - v4 >= v8)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1;
  }

  return (*(v6 + 8 * ((101 * v19) ^ v7)))(v4, (v7 - 937));
}

uint64_t sub_1002823D8(uint64_t a1)
{
  v3 = 1864610357 * ((*(*STACK[0xE50] + (*STACK[0xE58] & ((v2 ^ 0x9281u) + 1926722044))) ^ (a1 + v1)) & 0x7FFFFFFF);
  v4 = 1864610357 * (v3 ^ HIWORD(v3));
  *(a1 + v1) = *(STACK[0x948] + (v4 >> 24)) ^ *(STACK[0x930] + (v4 >> 24)) ^ *(STACK[0x950] + (v4 >> 24)) ^ v4 ^ (-71 * BYTE3(v4));
  return (*(STACK[0xF18] + 8 * ((249 * (v1 == 11)) ^ v2)))();
}

uint64_t sub_100282484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, __int16 a22, char a23, int a24, char *a25, char *a26, uint64_t a27, int a28, uint64_t a29, int a30)
{
  v34 = *(v30 + v33);
  v35 = ((v32 + (*(v30 - 0x217E172EFA1E804) ^ 0xB515A332) + 1256866383) ^ ((*(v30 - 0x217E172EFA1E804) ^ 0xA51B214A) + 1524948662) ^ ((*(v30 - 0x217E172EFA1E804) ^ 0xF9DB4569) + 103070359)) + ((v32 + 11583) ^ 0xFCBCE714);
  v36 = 634647737 * (((&a24 | 0xD0688ABD) - (&a24 | 0x2F977542) + 798455106) ^ 0xBDFEA541);
  a29 = v30 - 0x217E172EFA1E800;
  a27 = v34;
  a28 = v32 - v36 + 32994;
  a24 = v35 ^ v36;
  a25 = &a21;
  a26 = &a23;
  v37 = (*(v31 + 8 * (v32 + 45125)))(&a24);
  return (*(v31 + 8 * ((237 * (a30 != -371865839)) ^ v32)))(v37);
}

uint64_t sub_1002826AC@<X0>(uint64_t a1@<X8>)
{
  v11 = v4 < v6;
  *(v8 + v5) = *(v9 + v5) ^ *(v2 + (v5 & 0xF)) ^ *((v5 & 0xF) + a1 + 5) ^ (-105 * (v5 & 0xF)) ^ *((v5 & 0xF) + v1 + 3) ^ 0x5F;
  if (v11 == v5 + 1 > ((142 * (v3 ^ 0x165C)) ^ 0x80A17D1E))
  {
    v11 = v5 + 2136884088 < v4;
  }

  return (*(v10 + 8 * ((v11 * v7) ^ v3)))();
}

uint64_t sub_100282848()
{
  v10 = v6 - 1;
  *(v8 + v10) ^= *(v1 + (v10 & 0xF)) ^ *(v0 + (v10 & 0xF) + 1) ^ ((v10 & 0xF) * v4) ^ *(v2 + (v10 & 0xF) + 1) ^ v5;
  return (*(v9 + 8 * (((v10 == 0) * v7) ^ v3)))();
}

uint64_t sub_100282898(double a1, __n128 a2, __n128 a3)
{
  a2.n128_u16[0] = -1029;
  a2.n128_u8[2] = -5;
  a2.n128_u8[3] = -5;
  a2.n128_u8[4] = -5;
  a2.n128_u8[5] = -5;
  a2.n128_u8[6] = -5;
  a2.n128_u8[7] = -5;
  a3.n128_u16[0] = 24415;
  a3.n128_u8[2] = 95;
  a3.n128_u8[3] = 95;
  a3.n128_u8[4] = 95;
  a3.n128_u8[5] = 95;
  a3.n128_u8[6] = 95;
  a3.n128_u8[7] = 95;
  return (*(v7 + 8 * v4))(-v3, v5 + -8 - v3, v6 + -8 - v3, 6883, xmmword_100F523B0, a2, a3);
}

uint64_t sub_100282944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  a15 = (v19 + 1811819086) ^ (1603510583 * (((&a13 | 0x27971087) + (~&a13 | 0xD868EF78)) ^ 0xB04C222D));
  a13 = v15;
  a14 = v16;
  (*(v17 + 8 * (v19 ^ 0x63A4)))(&a13);
  return (*(v17 + 8 * v19))((v19 ^ 0xFFFF5032 | v18) + v20);
}

uint64_t sub_1002829D4()
{
  v3 = (v0 ^ 0xB0C92DE3) & (2 * ((v1 - 2066639702) & v0)) ^ (v1 - 2066639702) & v0;
  v4 = ((2 * (v0 ^ 0xB0EA3D73)) ^ 0x68772930) & (v0 ^ 0xB0EA3D73) ^ (2 * (v0 ^ 0xB0EA3D73)) & 0x343B9498;
  v5 = v4 ^ 0x14089488;
  v6 = (v4 ^ 0x20031010) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xD0EE5260) & v5 ^ (4 * v5) & 0x343B9498;
  v8 = (v7 ^ 0x102A1008) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x24118498)) ^ 0x43B94980) & (v7 ^ 0x24118498) ^ (16 * (v7 ^ 0x24118498)) & 0x343B9480;
  v10 = v8 ^ 0x343B9498 ^ (v9 ^ 0x390018) & (v8 << 8);
  v11 = (4 * ((v10 << 16) & 0x343B0000 ^ v10 ^ ((v10 << 16) ^ 0x14980000) & (((v9 ^ 0x34029418) << 8) & 0x343B0000 ^ 0x42B0000 ^ (((v9 ^ 0x34029418) << 8) ^ 0x3B940000) & (v9 ^ 0x34029418)))) ^ (2 * v0);
  v12 = (530768278 - (((v11 ^ 0xDC9B424E) + 1242864750) ^ ((v11 ^ 0x77A53366) - 517280442) ^ ((v11 ^ 0x2213709E) - 1264800066))) / SLODWORD(STACK[0xD90]);
  v13 = ((2 * v12) & 0x652F77C6) + (v12 ^ 0x3297BBE3);
  v14 = STACK[0xD80];
  v15 = *(STACK[0xD80] + 4 * (v13 - 848804835));
  v16 = v13 - 848804835;
  LODWORD(STACK[0xEB0]) = v13 - 848804835;
  v17 = ((v13 + 831350625) ^ 0x9B9A9ABF) & (2 * ((v13 + 831350625) & 0x9BDADCBE)) ^ (v13 + 831350625) & 0x9BDADCBE;
  v18 = ((2 * ((v13 + 831350625) ^ 0x9B8B12BB)) ^ 0xA39C0A) & ((v13 + 831350625) ^ 0x9B8B12BB) ^ (2 * ((v13 + 831350625) ^ 0x9B8B12BB)) & 0x51CE04;
  v19 = v18 ^ 0x504205;
  v20 = (v18 ^ 0x18400) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0x1473814) & v19 ^ (4 * v19) & 0x51CE04;
  v22 = (v21 ^ 0x410800) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x10C601)) ^ 0x51CE050) & (v21 ^ 0x10C601) ^ (16 * (v21 ^ 0x10C601)) & 0x51CE00;
  v24 = v22 ^ 0x51CE05 ^ (v23 ^ 0x10C000) & (v22 << 8);
  v25 = 4 * ((v13 + 831350625) ^ (2 * ((v24 << 16) & 0x510000 ^ v24 ^ ((v24 << 16) ^ 0x4E050000) & (((v23 ^ 0x410E05) << 8) & 0x510000 ^ 0x110000 ^ (((v23 ^ 0x410E05) << 8) ^ 0x51CE0000) & (v23 ^ 0x410E05)))) ^ 0x9B7B40B4);
  v26 = STACK[0xD50];
  *(v26 + v25) = v15;
  v27 = ((v13 + 831350624) ^ 0x9B92D8BD) & (2 * ((v13 + 831350624) & 0x9BDADCBE)) ^ (v13 + 831350624) & 0x9BDADCBE;
  v28 = ((2 * ((v13 + 831350624) ^ 0xBE83F199)) ^ 0x4AB25A4E) & ((v13 + 831350624) ^ 0xBE83F199) ^ (2 * ((v13 + 831350624) ^ 0xBE83F199)) & 0x25592D26;
  v29 = v28 ^ 0x25492521;
  v30 = (v28 ^ 0x100000) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0x9564B49C) & v29 ^ (4 * v29) & 0x25592D24;
  v32 = (v31 ^ 0x5402400) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x20190923)) ^ 0x5592D270) & (v31 ^ 0x20190923) ^ (16 * (v31 ^ 0x20190923)) & 0x25592D20;
  v34 = v32 ^ 0x25592D27 ^ (v33 ^ 0x5100000) & (v32 << 8);
  v35 = (v13 + 831350624) ^ (2 * ((v34 << 16) & 0x25590000 ^ v34 ^ ((v34 << 16) ^ 0x2D270000) & (((v33 ^ 0x20492D07) << 8) & 0x25590000 ^ 0x24500000 ^ (((v33 ^ 0x20492D07) << 8) ^ 0x592D0000) & (v33 ^ 0x20492D07)))) ^ 0x9B6A86F0;
  LODWORD(STACK[0xEC0]) = v35;
  v36 = *(v14 + 4 * v35);
  v37 = 4 * ((v13 + 831350626) ^ (((v13 + 831350626) ^ 0x91349B45) + 183388153) ^ (((v13 + 831350626) ^ 0x95D56CE1) + 235909213) ^ (((v13 + 831350626) ^ 0x8F3A2B19) + 350287781) ^ (((v13 + 831350626) ^ 0xEFFEFFFF) + 1948525379) ^ 0x64252342);
  *(v26 + v37) = v36;
  v38 = 353670337 * (((&STACK[0x10ED8] | 0x241BA397) - (&STACK[0x10ED8] | 0xDBE45C68) - 605791128) ^ 0x903A5BAA);
  LODWORD(STACK[0x10EE8]) = v38 ^ 0x3AE67DCC ^ *(v14 + 4 * v16);
  LODWORD(STACK[0x10ED8]) = (v36 ^ 0x1C3219DC) - v38;
  v39 = (v14 + v25);
  v40 = (v14 + v37);
  STACK[0x10F00] = STACK[0xD70];
  STACK[0xE00] = v2;
  STACK[0x10EF8] = v2;
  STACK[0x10EF0] = v14 + v37;
  LODWORD(STACK[0x10F08]) = v38 + v1 + 831930313;
  STACK[0x10EE0] = v14 + v25;
  v41 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0xDEB7)))(&STACK[0x10ED8]);
  v42 = *v39;
  if (2066634248 - v0 >= 0)
  {
    v43 = -((2066634248 - v0) & 0x1F);
  }

  else
  {
    v43 = (v0 - 2066634248) & 0x1F;
  }

  v44 = ((v43 - ((2 * v43) & 0x57808AF6) - 1413462647) & 0xFFFFFFFE) - 14;
  v45 = ((v44 ^ 0xBD92A3C1) - 1362339505) ^ ((v44 ^ 0x8525D97D) - 1770314765) ^ ((v44 ^ 0x93773FC7) - 2144746167);
  LODWORD(STACK[0xE60]) = v0;
  if (2066634232 - v0 >= 0)
  {
    v46 = -((2066634232 - v0) & 0x1F);
  }

  else
  {
    v46 = (v0 - 2066634232) & 0x1F;
  }

  v47 = (v46 ^ 0x3EFFFFF9) + ((2 * v46) & 0x7DFFFFF2) - 993192236 * v45 + ((((v42 ^ 0xFA9CD0B8) + 1577710777) ^ ((v42 ^ 0x2BCD18B1) - 1890042702) ^ ((v42 ^ 0xD1510F18) + 1975790361)) - 1768094182) * (v45 + 1197555723) - 1821534409;
  v48 = (v47 ^ 0x516A7BCC) & (2 * (v47 & 0x5A6B63EC)) ^ v47 & 0x5A6B63EC;
  v49 = ((2 * (v47 ^ 0xD52CB994)) ^ 0x1E8FB4F0) & (v47 ^ 0xD52CB994) ^ (2 * (v47 ^ 0xD52CB994)) & 0x8F47DA78;
  v50 = v49 ^ 0x81404A08;
  v51 = (v49 ^ 0xA079070) & (4 * v48) ^ v48;
  v52 = ((4 * v50) ^ 0x3D1F69E0) & v50 ^ (4 * v50) & 0x8F47DA78;
  v53 = (v52 ^ 0xD074860) & (16 * v51) ^ v51;
  v54 = ((16 * (v52 ^ 0x82409218)) ^ 0xF47DA780) & (v52 ^ 0x82409218) ^ (16 * (v52 ^ 0x82409218)) & 0x8F47DA40;
  v55 = v53 ^ 0x8F47DA78 ^ (v54 ^ 0x84458200) & (v53 << 8);
  v56 = v47 ^ (2 * ((v55 << 16) & 0xF470000 ^ v55 ^ ((v55 << 16) ^ 0x5A780000) & (((v54 ^ 0xB025878) << 8) & 0xF470000 ^ 0x8050000 ^ (((v54 ^ 0xB025878) << 8) ^ 0x47DA0000) & (v54 ^ 0xB025878))));
  v57 = v45 - 1065832582;
  v58 = ((((HIWORD(v42) ^ 0x6BEB8B98) - 1854105889) ^ ((HIWORD(v42) ^ 0x1FF2C60) - 77057753) ^ ((HIWORD(v42) ^ 0x6A144E2D) - 1870441620)) - 1404048253) * (v45 + 1197555723) + 1494753001 * v45 + 367074801 + (((HIWORD(v56) ^ 0x65DEEBC4) + 2130038194) ^ ((HIWORD(v56) ^ 0x12121DE3) + 154745751) ^ ((HIWORD(v56) ^ 0x77CCA643) + 1827110967));
  v59 = (((*v40 ^ 0x79ABCF44) - 327607570) ^ ((*v40 ^ 0xC6031FEE) + 1406257736) ^ ((*v40 ^ 0xBFA817BB) + 712688147)) + 1905834026;
  v60 = (((HIWORD(*v40) ^ 0xDD066103) + 30941627) ^ ((HIWORD(*v40) ^ 0x81247C83) + 1576680507) ^ ((HIWORD(*v40) ^ 0x5C22F455) - 2130922259)) + 2026106473;
  *v39 = (((v58 << 16) ^ 0xEA68A5FC) & (v56 ^ 0xFFFF20E0) | v56 & 0x5A03) ^ 0x3BD30ED;
  v61 = ((v60 * v57 + 3809 * (10161 * v60 + 8042 * v57)) << 16) - 1614151680;
  v62 = v59 * v57 + 1111883319 * (-1939782793 * v59 - 231432885 * v57) + (((v61 ^ 0x1DE71B63) - 2072626891) ^ ((v61 ^ 0xB97E56C3) + 552563861) ^ ((v61 ^ 0xA4994DA0) + 1023963128)) + HIWORD(v58) - 621911836;
  v63 = ((v62 ^ 0x684A0C8F) - 27136320) ^ v62 ^ ((v62 ^ 0x139013C) - 1760369907) ^ ((v62 ^ 0xEF58EF47) + 2037583224) ^ ((v62 ^ 0xEFFFFF3B) + 2043944204);
  *v40 = v63 ^ 0x8001DADE;
  v64 = *v39;
  v65 = 193924789 * (((&STACK[0x10ED8] | 0xDF2FC78A) - (&STACK[0x10ED8] & 0xDF2FC788)) ^ 0x6994F5EC);
  LODWORD(STACK[0x10F00]) = v65 + v1 + 1167927774;
  LODWORD(STACK[0x10EF0]) = (v63 ^ 0x6BF957D9) - v65;
  STACK[0x10EE8] = STACK[0xD60];
  STACK[0x10ED8] = v40;
  STACK[0x10EF8] = v39;
  LODWORD(STACK[0x10EE0]) = (v64 ^ 0x2FF2C97F) - v65;
  v66 = (*(v41 + 8 * (v1 ^ 0xD92E)))(&STACK[0x10ED8]);
  *v39 ^= *(v26 + 4 * SLODWORD(STACK[0xEB0])) ^ 0xE9D5C711;
  v67 = *v40 ^ *(v26 + 4 * SLODWORD(STACK[0xEC0]));
  LODWORD(STACK[0xEC0]) = v67;
  STACK[0xE30] = v40;
  *v40 = v67 ^ 0xE9D5C711;
  STACK[0xE40] = v39;
  v68 = *v39;
  v69 = ((*(STACK[0xD40] + 18) ^ 0x4EFFB71) - 82836337) ^ ((*(STACK[0xD40] + 18) ^ 0x7B678F28) - 2070384424) ^ ((*(STACK[0xD40] + 18) ^ 0x7F887406) - 2139649030);
  v70 = *(STACK[0xD40] + 17) & 0xFE;
  v71 = ((v70 ^ 0xDA473F75) - 1680564624) ^ ((v70 ^ 0xF8827D8B) - 1190011758) ^ ((v70 ^ 0x22C542A1) + 1666638780);
  LODWORD(STACK[0xEB0]) = v71 - 1100194118;
  LODWORD(STACK[0xEA0]) = v69 - 59618455 * v71 - 1984534372;
  LODWORD(STACK[0xE90]) = v68 ^ 0xE9D5C711;
  LODWORD(STACK[0xE80]) = 77 * (v71 - 778240228) + 134;
  return (*(v41 + 8 * v1))(v66);
}

uint64_t sub_100283860@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W3>, unsigned int a4@<W4>, uint64_t a5@<X6>, uint64_t a6@<X7>, unsigned int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = ((a6 ^ 0x8736DE2CE0841EC5) + 0x78C921D31F7BE13BLL) ^ ((a6 ^ 0x5BBF1CC0E48B7573) - 0x5BBF1CC0E48B7573) ^ ((a6 ^ ((a3 ^ 0xE9D5E4A5) - 0x23763D146E8D5FEFLL)) + 0x23763D1384B798DELL);
  v74 = (v73 + 2573754629u) * (v73 - 0x6DE9DE5B8FE64E98) + 0x6DE9DE5C0F2D5B2CLL * v73 + 0x1D4A7F76FE6E6297;
  v75 = ((2 * (v74 % 0xC95119CF)) & 0xEDF8EFFE) + ((v74 % 0xC95119CF) ^ 0x2AE3F37A76FC77FFLL);
  v76 = ((a4 ^ 0x8826FEDB6EEC31ALL) - 0x8826FEDB6EEC31ALL) ^ ((a4 ^ 0x6D20FD45DDD00F3) - 0x6D20FD45DDD00F3) ^ ((a4 ^ 0xE5060399474CF7DLL) - 0xE5060399474CF7DLL);
  v77 = (v76 + 2135362708) * (v76 + 0x76681662B4594C78) - 0x7668166235123FE4 * v76 + 2575459919u * v75 - 0x27728F249200F94ALL;
  v78 = v77 % 0x8C3E3039 - ((2 * (v77 % 0x8C3E3039)) & 0xCF121042) - 0x1E3BDF9A9876F7DFLL;
  v79 = ((v78 ^ 0x45D7067F7842C144) - 0x45D7067F7842C144) ^ ((v78 ^ 0x70BB1F430F838035) - 0x70BB1F430F838035) ^ ((v78 ^ 0xD4A8395910484950) + 0x2B57C6A6EFB7B6B0);
  v80 = (a1 - 721102540);
  v81 = (v79 - 0x1E3BDF9A9876F7DFLL) * (v75 - 0x13D939FA0E76D6A7) - 0x170AB9806885A158 * v79;
  LODWORD(v76) = 1864610357 * (((v66 + v80) ^ *(*v71 + (*v70 & 0x72D7ACF8))) & 0x7FFFFFFF);
  v82 = 1864610357 * (v76 ^ WORD1(v76));
  v83 = (((v81 + 0x5BC2DB1F0B9E0460) ^ 0x1B8B4EB9A888795ELL) - 0x72716DAFD972E9E6) ^ (v81 + 0x5BC2DB1F0B9E0460) ^ (((v81 + 0x5BC2DB1F0B9E0460) ^ 0xCF8775ABA027BB4BLL) + 0x5982A9422E22D40DLL) ^ (((v81 + 0x5BC2DB1F0B9E0460) ^ 0xE137137ADAB28DDALL) + 0x7732CF9354B7E29ELL) ^ (((v81 + 0x5BC2DB1F0B9E0460) ^ 0x5CC10B7EA3E7DF77) - 0x353B2868D21D4FCFLL);
  *(v69 + v80) = *(v66 + v80) ^ *(a2 + (v82 >> 24)) ^ *(a5 + (v82 >> 24)) ^ *((v82 >> 24) + a46 + 3) ^ v82 ^ (-109 * BYTE3(v82)) ^ (((((v81 + 194905184) ^ 0xA888795E) + 646780442) ^ (v81 + 194905184) ^ (((v81 + 194905184) ^ 0xA027BB4B) + 774034445) ^ (((v81 + 194905184) ^ 0xDAB28DDA) + 1421337246) ^ (((v81 + 194905184) ^ 0xA3E7DF77) + 769830961)) >> 15) ^ 0xF5;
  v84 = (a1 - 721102539);
  LODWORD(v80) = 1864610357 * ((*(*v71 + (*v70 & 0x72D7ACF8)) ^ (v66 + v84)) & 0x7FFFFFFF);
  v85 = 1864610357 * (v80 ^ WORD1(v80));
  *(v69 + v84) = *(v66 + v84) ^ *(a2 + (v85 >> 24)) ^ *(a5 + (v85 >> 24)) ^ *((v85 >> 24) + a46 + 3) ^ v85 ^ (-109 * BYTE3(v85)) ^ 0x4C ^ (((v83 >> 23) ^ 0xE3) - ((2 * ((v83 >> 23) ^ 0xE3)) & 0x99) + 76);
  v86 = (a1 - 721102538);
  v87 = 1864610357 * ((*(*v71 + (*v70 & 0x72D7ACF8)) ^ (v66 + v86)) & 0x7FFFFFFF);
  v88 = 1864610357 * (v87 ^ HIWORD(v87));
  v89 = (a1 ^ 0x8460D0A0) & (2 * (a1 & 0xD504D934)) ^ a1 & 0xD504D934;
  LODWORD(v82) = ((2 * (a1 ^ 0x2E68F2E8)) ^ 0xF6D857B8) & (a1 ^ 0x2E68F2E8) ^ (2 * (a1 ^ 0x2E68F2E8)) & 0xFB6C2BD8;
  LODWORD(v85) = ((4 * (v82 ^ 0x9242844)) ^ 0xEDB0AF70) & (v82 ^ 0x9242844) ^ (4 * (v82 ^ 0x9242844)) & 0xFB6C2BD8;
  LODWORD(v82) = (v85 ^ 0xE9202B40) & (16 * ((v82 ^ 0xF0000190) & (4 * v89) ^ v89)) ^ (v82 ^ 0xF0000190) & (4 * v89) ^ v89;
  *(v69 + v86) = *(v66 + v86) ^ *(v67 + (v88 >> 24)) ^ *(v65 + (v88 >> 24)) ^ *((v88 >> 24) + v72 + 2) ^ v88 ^ (-5 * BYTE3(v88)) ^ 0x5A ^ (((v83 >> 31) ^ 0x2C) - ((2 * ((v83 >> 31) ^ 0x2C)) & 0xB4) + 90);
  LODWORD(v88) = ((16 * (v85 ^ 0x124C008C)) ^ 0xB6C2BDC0) & (v85 ^ 0x124C008C) ^ (16 * (v85 ^ 0x124C008C)) & 0xFB6C2BC0;
  LODWORD(v85) = v88 ^ 0x492C021C;
  LODWORD(v88) = v82 ^ 0xFB6C2BDC ^ (v88 ^ 0xB2402900) & (v82 << 8);
  v90 = a1 ^ (4 * (((v88 << 16) & 0x7B6C0000 ^ v88 ^ ((v88 << 16) ^ 0x2BDC0000) & ((v85 << 8) & 0x7B6C0000 ^ 0x13440000 ^ ((v85 << 8) ^ 0x6C2B0000) & v85)) >> 1)) ^ 0x75448E8F;
  LODWORD(v85) = 1864610357 * (((v66 + v90) ^ *(*v71 + (*v70 & 0x72D7ACF8))) & 0x7FFFFFFF);
  v91 = 1864610357 * (v85 ^ WORD1(v85));
  *(v69 + v90) = *(v66 + v90) ^ *(v67 + (v91 >> 24)) ^ *(v65 + (v91 >> 24)) ^ *((v91 >> 24) + v72 + 2) ^ v91 ^ (-5 * BYTE3(v91)) ^ 0x90 ^ (((v83 >> 39) ^ 0x46) - ((2 * (v83 >> 39)) & 0x20) - 112);
  v92 = a1 + 1715173369 < a7;
  if (a7 < 0x91369EC1 != (a1 + 1715173369) < 0x91369EC1)
  {
    v92 = a7 < 0x91369EC1;
  }

  return (*(v68 + 8 * ((69 * !v92) | a65)))((a1 + 4));
}

uint64_t sub_10028420C(unint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0xE9D5C711E9D5C711;
  *(a1 + 16) = 0xA52FF067E9D5C711;
  *(a1 + 24) = -371865839;
  STACK[0x5CE0] = a1;
  v2 = STACK[0xF18];
  STACK[0x2D20] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((27824 * (v1 + ((v1 + 749) | 0x4024) == -420619384)) ^ (v1 + 8864))))();
}

uint64_t sub_1002842AC(uint64_t a1, double a2, __n128 a3, uint64_t a4, uint64_t a5, int a6)
{
  a3.n128_u16[0] = -24673;
  a3.n128_u8[2] = -97;
  a3.n128_u8[3] = -97;
  a3.n128_u8[4] = -97;
  a3.n128_u8[5] = -97;
  a3.n128_u8[6] = -97;
  a3.n128_u8[7] = -97;
  return (*(v8 + 8 * a6))(v7 + -8 - a1, v6 & 7, -a1, xmmword_100F523B0, a3);
}

uint64_t sub_1002842F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 a19, int a20, int a21, int a22, int a23, unsigned __int8 a24)
{
  *(v26 - 128) = ((a19 << 16) ^ 0xFFF8FFFF) & a20 ^ (((v24 - 471726000) & 0x1C1DF7AF) + 10545243) & (a19 << 16) ^ 0xA413AC29;
  *(v26 - 132) = a23 ^ 0xAC8BFD79;
  *(v26 - 124) = a22 ^ 0xB870CBD;
  *(v26 - 120) = a24 & 0x89 ^ 0x9CE2A0E0 ^ (a21 ^ 0xB23ABD49) & (a24 ^ 0xFFFFFF17);
  return (*(v25 + 8 * (v24 + 271)))();
}

uint64_t sub_100284444()
{
  STACK[0x8898] = v1 + 1208;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (((v0 + 25425) ^ 0x74BC) + v0)))();
}

uint64_t sub_100284690()
{
  v10 = *(STACK[0xF18] + 8 * v0);
  *&STACK[0xCC0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0xCB0] = vdupq_n_s64(0x38uLL);
  *&STACK[0xD90] = vdupq_n_s64(0xD192833E5E29633CLL);
  *&STACK[0xD80] = vdupq_n_s64(v2);
  *&STACK[0xCA0] = vdupq_n_s64(v4);
  *&STACK[0xD70] = vdupq_n_s64(v6);
  *&STACK[0xD60] = vdupq_n_s64(v8);
  *&STACK[0xD50] = vdupq_n_s64(v9);
  *&STACK[0xD40] = vdupq_n_s64(v7);
  *&STACK[0xD30] = vdupq_n_s64(v3);
  *&STACK[0xD20] = vdupq_n_s64(0xFD0A19BB2FE13205);
  *&STACK[0xD00] = vdupq_n_s64(0x19BBA1D59C2A28CuLL);
  *&STACK[0xEA0] = vdupq_n_s64(v5);
  *&STACK[0xE90] = vdupq_n_s64(0x2C3F70FBF6F9ADA3uLL);
  *&STACK[0xE80] = vdupq_n_s64(0x1B5DE9094BAFA51AuLL);
  *&STACK[0xCF0] = vdupq_n_s64(0xC437C7327FD12F34);
  *&STACK[0xCE0] = vdupq_n_s64(0x96E95066F186A7EuLL);
  *&STACK[0xCD0] = xmmword_100F523B0;
  *&STACK[0xE70] = vdupq_n_s64(0x9FF7A410D79F13D4);
  *&STACK[0xEB0] = vdupq_n_s64(0xC9500E90FB9C95F1);
  *&STACK[0xC90] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0xC80] = vdupq_n_s64(0x1939E534EAB5C204uLL);
  *&STACK[0xE60] = vdupq_n_s64(0x1E1BFCD71692F676uLL);
  *&STACK[0xE40] = vdupq_n_s64(0xAA90AB1B91AE5A78);
  *&STACK[0xC70] = vdupq_n_s64(0x14BA074A2F986FE5uLL);
  *&STACK[0xC60] = vdupq_n_s64(0x31E9BDE7666BA597uLL);
  *&STACK[0xC50] = vdupq_n_s64(v1);
  *&STACK[0xC40] = vdupq_n_s64(0x1DDE35A49FCFCB0FuLL);
  *&STACK[0xC30] = vdupq_n_s64(0xBD7D2DE9C10AA16ALL);
  *&STACK[0xE30] = vdupq_n_s64(0xCA610B0491486356);
  *&STACK[0xC20] = vdupq_n_s64(0x9ACF7A7DB75BCE55);
  *&STACK[0xE20] = vdupq_n_s64(0xE7800595F7E7F1C2);
  return v10();
}

void sub_100284988(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(a1 + 16) ^ 0xFA6C31FDEEEF77F7) + 0x593CE03048C46EFLL + ((2 * *(a1 + 16)) & 0xF4D863FBDDDEEFEELL);
  v4 = v3 < 0xF37BBEE6;
  v5 = v3 > v2 + 4084973286u;
  if (v2 > 0xFFFFFFFF0C844119 != v4)
  {
    v5 = v4;
  }

  v1 = *(a1 + 40) + 634647737 * ((2 * (a1 & 0x46E81261) - a1 - 1189614178) ^ 0xD481C262);
  __asm { BRAA            X15, X17 }
}

uint64_t sub_100284B60()
{
  LODWORD(STACK[0x4DC]) = 278508453;
  LODWORD(STACK[0x4D8]) = v1;
  return (*(v2 + 8 * ((5514 * (v0 + 1389527585 >= (v0 + 1042406409))) ^ (v0 - 30196))))();
}

uint64_t sub_100284BC0@<X0>(unsigned int a1@<W8>)
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = ((1378 * (a1 ^ 0x9A2E) - 4978) | 0x667) - v4 - 20086 + v8;
  v10 = v2 + v9;
  v11 = v8 + 1;
  v12 = v2 + v8 + 1;
  v13 = v8 + v3 + 2;
  v14 = v1 + v9;
  v15 = v1 + v11;
  v17 = v13 > v5 && v13 - v4 < v7;
  if (v12 > v5 && v10 < v7)
  {
    v17 = 1;
  }

  if (v15 > v5 && v14 < v7)
  {
    v17 = 1;
  }

  return (*(v6 + 8 * ((107 * v17) ^ a1)))();
}

uint64_t sub_100284C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>, int8x16_t a6@<Q0>, int8x8_t a7@<D1>)
{
  v14 = v10 + a2 + 8;
  v16.val[0].i64[0] = (v14 + v11) & 0xF;
  v16.val[0].i64[1] = (v10 + a2 + 22) & 0xF;
  v16.val[1].i64[0] = (v10 + a2 + 21) & 0xF;
  v16.val[1].i64[1] = (v10 + a2 + 20) & 0xF;
  v16.val[2].i64[0] = (v10 + a2 + 19) & 0xF;
  v16.val[2].i64[1] = (v10 + a2 + 18) & 0xF;
  v16.val[3].i64[0] = (v10 + a2 + 17) & 0xF;
  v16.val[3].i64[1] = v14 & 0xF ^ 8;
  *(a5 + a2 + a3 + 1) = veor_s8(veor_s8(veor_s8(*(v8 + v16.val[0].i64[0] - 7), *(a5 + a2 + a3 + 1)), veor_s8(*(v16.val[0].i64[0] + v9 - 6), *(v7 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v13 + 8 * (((a1 == a2) * a4) ^ v12)))();
}

uint64_t sub_100284D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v24 = ((((v23 - 136) | 0xD77FCA51) - (v23 - 136) + ((v23 - 136) & 0x288035A8)) ^ 0xBAE9E5AD) * v21;
  *(v23 - 120) = v19;
  *(v23 - 136) = v22;
  *(v23 - 128) = v18 - v24 + 15187;
  *(v23 - 124) = ((((v18 - 7926) | 0x1142) ^ 0x145C40B3) + a18) ^ v24;
  v25 = (*(v20 + 8 * (v18 ^ 0xEC56)))(v23 - 136);
  return (*(v20 + 8 * v18))(v25);
}

uint64_t sub_100284E10(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = *(v4 + 4 * (a4 - 3));
  v15 = *(v4 + 4 * (a4 - 8));
  v16 = *(v4 + 4 * (a4 - 14));
  v17 = (v16 ^ 0xAD0C9952) & (2 * (v16 & 0x8DACDA58)) ^ v16 & 0x8DACDA58;
  v18 = v15 ^ v14 ^ ((v14 ^ 0x9384CD1D) + ((a1 - 13360) ^ 0x1E28174B)) ^ ((v14 ^ 0x7C19C6E0) - 239788872) ^ ((v14 ^ 0xE931D9AA) + 1688011774) ^ ((v14 ^ 0x74FFF7FF) - 111989335) ^ ((v15 ^ 0xDC621BF6) + 1372504482) ^ ((v15 ^ 0x7E704489) - 203645217) ^ ((v15 ^ 0xABBE8568) + 638738240) ^ ((v15 ^ 0x7BFFFFBF) - 162322967);
  v19 = ((2 * (v16 ^ 0xAF4D2D52)) ^ 0x45C3EE14) & (v16 ^ 0xAF4D2D52) ^ (2 * (v16 ^ 0xAF4D2D52)) & 0x22E1F70A;
  v20 = ((4 * (v19 ^ 0x2220110A)) ^ 0x8B87DC28) & (v19 ^ 0x2220110A) ^ (4 * (v19 ^ 0x2220110A)) & 0x22E1F708;
  v21 = (v20 ^ 0x281D400) & (16 * ((v19 ^ 0xC1E200) & (4 * v17) ^ v17)) ^ (v19 ^ 0xC1E200) & (4 * v17) ^ v17;
  v22 = ((16 * (v20 ^ 0x20602302)) ^ 0x2E1F70A0) & (v20 ^ 0x20602302) ^ (16 * (v20 ^ 0x20602302)) & 0x22E1F700;
  v23 = v21 ^ 0x22E1F70A ^ (v22 ^ 0x22017000) & (v21 << 8);
  v24 = (v18 - ((2 * v18) & 0xA1ECA56C) + 1358320310) ^ v16 ^ (2 * ((v23 << 16) & 0x22E10000 ^ v23 ^ ((v23 << 16) ^ 0x770A0000) & (((v22 ^ 0xE0870A) << 8) & 0x22E10000 ^ (((v22 ^ 0xE0870A) << 8) ^ 0x61F70000) & (v22 ^ 0xE0870A) ^ 0x2000000)));
  v25 = *(v4 + 4 * (a4 - 16));
  v26 = ((2 * a4) & 0xEA) + (a4 ^ 0xECFF7B75);
  HIDWORD(v27) = v25 ^ ((v25 ^ 0xBA14C762) + 934812982) ^ ((v25 ^ 0xD671FD71) + 1541220135) ^ ((v25 ^ v13) - 311607756) ^ ((v25 ^ 0x7EF7FBDF) - 212131447) ^ v8 ^ ((v24 ^ 0xDC9966FA) - 2 * ((v24 ^ 0xDC9966FA) & 0x164D54D ^ v24 & 5) + v7);
  LODWORD(v27) = HIDWORD(v27);
  *(v4 + 4 * (v26 + v9)) = ((v27 >> 31) ^ v10) + v12 + (v11 & (2 * (v27 >> 31)));
  return (*(v6 + 8 * (((v26 + 318801036 < 0x50) * v5) ^ a1)))();
}

uint64_t sub_1002851B0()
{
  v1 = STACK[0xED0];
  *(v1 + 8) = -371865839;
  *(v1 + 44) = 0;
  *v1 = -1359724707;
  *(v1 + 172) = -2109658874;
  *(v1 + 28) = 0;
  *(v1 + 36) = 16;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 33;
  *(v1 + 148) = -371865839;
  *(v1 + 264) = 0x981390C2FED9246;
  *(v1 + 272) = 1692332675;
  *(v1 + 184) = v1;
  *(v1 + 296) = 0x981390C2FED9246;
  v2 = STACK[0x4E88];
  *v2 = 0;
  *(v2 + 12) = 0x80E9D5C711;
  *(v2 + 20) = 3923101457;
  *(v2 + 4) = 0xE1D5C711E9D5C710;
  *(v2 + 32) = 0x1000000000;
  *(v2 + 40) = 0;
  v3 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v3 + 8 * (((6 * (v0 ^ 0x2436)) ^ 0xD2D4) + v0)))(v2 + 48);
}

uint64_t sub_100285300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  *(STACK[0x730] + 16) = v37;
  v40 = (*(v39 + 8 * (v38 ^ 0x4F33)))(v38 ^ 0xE9D542BA ^ *(STACK[0x730] + 16));
  *(STACK[0x730] + 8) = v40;
  return (*(v39 + 8 * (((*(STACK[0x730] + 8) == 0) * (v38 ^ 0x8557)) ^ (v38 + 15823))))(v40, &off_1010A0B50, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a3, a36, a37);
}

uint64_t sub_100285400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (a3 + 35653);
  v5 = (v3 ^ 0x679FBFFAEFDFFDFFLL) - 0x130606C8DB400 + ((2 * v3) & 0x1DFBFFBFELL);
  STACK[0xA6E0] = v5;
  v6 = STACK[0x4458];
  STACK[0xA6E8] = STACK[0x4458];
  return (*(STACK[0xF18] + 8 * ((17657 * (((((v5 + v4 - v6 - 0x8CE42F4FEE6B9A2) | a3 | ((a3 | 9) << 32)) - (v5 + v4 - v6 - 0x8CE42F4FEE6B9A2)) | (v5 + v4 - v6 - 0x8CE42F4FEE6B9A2 - (a3 | ((a3 | 9) << 32))) & ~((a3 | ((a3 | 9) << 32)) ^ (v5 + v4 - v6 - 0x8CE42F4FEE6B9A2))) >> 63)) ^ (a3 + 8477))))(a1, a2, 371891407);
}

uint64_t sub_1002854D4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x4C8]) = v1;
  LODWORD(STACK[0x4C4]) = 371891406;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1002856B4@<X0>(int a1@<W8>)
{
  v2 = a1 & 0xA0B73BBF;
  v3 = *v1;
  LODWORD(STACK[0x7E3C]) = v1[1];
  v4 = v1[2];
  LODWORD(STACK[0x8EB4]) = v1[3] + ((3504 * (a1 & 0xA0B73BBF ^ 0x3AB9)) ^ 0xA910B85B) - ((2 * v1[3]) & 0x52203836);
  v5 = v4 - (((((a1 & 0xA0B73BBF) - 11955) | 0x5221) ^ 0xB7A14C47) & (2 * v4)) + 1540393266;
  LODWORD(STACK[0xEC0]) = v5;
  LODWORD(STACK[0x50D8]) = v5;
  v6 = *(v1 + 3);
  STACK[0x91B8] = *(v1 + 2);
  STACK[0xEB0] = v6;
  STACK[0x2F98] = v6;
  LODWORD(STACK[0x5780]) = v1[8] - ((2 * v1[8]) & 0xD3AB8E22) - 371865839;
  STACK[0x5328] = *(v1 + 5);
  STACK[0x5D48] = (v1 + 12);
  STACK[0x58A0] = (v1 + 14);
  STACK[0x2BC8] = (v1 + 15);
  v7 = STACK[0x7690];
  v8 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x51E0] = v8;
  STACK[0x93B8] = (v8 + 16);
  STACK[0x42F0] = (v8 + 32);
  STACK[0x7690] = v7 + 48;
  STACK[0x6E68] = 0;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v2 ^ 0xF179)))(*(STACK[0x938] + 40));
  return (*(v9 + 8 * ((112 * ((v10 ^ 0x7DC9D7FF) - v3 + ((2 * v10) & 0xFB93AFFE) != 2110380031)) ^ v2)))();
}

uint64_t sub_100285898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *STACK[0x510];
  v74 = &STACK[0x530] + STACK[0x2F0];
  v75 = *(v72 + 8 * (v70 ^ 0x5152));
  STACK[0x2F0] += 512;
  v75(*(v69 + 8 * (v70 ^ 0x9741)) - 1128652798);
  v76 = (*(v71 + 8 * (v70 + 12078)))(*(&off_1010A0B50 + (v70 ^ 0x9E12)) - 1874695639, v74 + 447, 64);
  *(v74 + 383) = 0xA59D8A9E1723B938;
  *(v74 + 391) = 0x2FDFD08450D505AALL;
  *(v74 + 399) = 0x61530551E21B47D8;
  *(v74 + 407) = 0x46126016D3CB255FLL;
  *(v74 + 415) = 0x63404A9A5654BA0ELL;
  *(v74 + 423) = 0x7738F6544D78B3E2;
  *(v74 + 431) = 0xD489E955A67403C6;
  *(v74 + 439) = 0xC63C214DDFBA0BE4;
  v78 = (v70 - 970327571 + v73) > 0xF7 || a69 < 0xFF;
  return (*(v71 + 8 * (((2 * v78) | (8 * v78)) ^ v70)))(v76);
}

uint64_t sub_100285ADC()
{
  v1 = STACK[0xF18];
  v2 = *(v1 + 8 * (((((*(STACK[0xF18] + 8 * (v0 ^ 0xD250)))(STACK[0x768] - 1383350530, 0) ^ (v0 + 49)) & 1) * (((v0 + 161874417) & 0xF659FE14) - 7674)) ^ v0));
  return v2();
}

uint64_t sub_100285B64()
{
  v0 = STACK[0xF10] - 13286;
  LODWORD(STACK[0x74B4]) = 371891397;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100285B90()
{
  v2 = *(v1 + 32);
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((~(&STACK[0x10000] + 3800) & 0x8CA617D3 | (&STACK[0x10000] + 3800) & 0x7359E828) ^ 0x6A800C1C) + 296753103;
  STACK[0x10ED8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (v0 - 17076)))(v4);
}

uint64_t sub_100285C70@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * ((((a1 + 1342076777) & 0xB00197FF) - 1410) ^ a1)))();
}

uint64_t sub_100285DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v6 = v5 - 32414;
  *a5 += v5 - 35642;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v5 + 155453101 * (((~(&STACK[0x10000] + 3800) & 0x6ADD7668) - (~(&STACK[0x10000] + 3800) | 0x6ADD7669)) ^ 0x8CFB6DA6) + 296753103;
  v7 = v5 ^ 0x41F1;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * v7))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v8 + 8 * v6);
  return (*(v8 + 8 * (v6 ^ 0x1AF2)))(v9);
}

uint64_t sub_100285E90()
{
  v1 = v0 - 27310;
  STACK[0x10ED8] = *STACK[0x3648];
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x6764AE40) - 412832190) ^ 0x142B58D) + 296753103;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16271)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100286004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v5 + 8 * ((((v4 + 146510030) & 0xCD38FF7F ^ 0x7716) * (a3 != 0)) ^ (v4 - 705398936)));
  *(v6 - 240) = v3;
  *(v6 - 236) = -371865839;
  return v7();
}

uint64_t sub_10028611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8 + 371895129;
  STACK[0x1A88] = STACK[0x6E30];
  LODWORD(STACK[0x44B0]) = STACK[0x36A4];
  LODWORD(STACK[0x10ED8]) = (a8 - 1390759810) ^ (906386353 * ((((2 * ((&STACK[0x10000] + 3800) ^ 0x805F51B0)) | 0xEA88CB34) - ((&STACK[0x10000] + 3800) ^ 0x805F51B0) - 1967416730) ^ 0xC41AF90E));
  STACK[0x10EE0] = 0;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * ((a8 + 371895129) ^ 0xB8D3)))(&STACK[0x10ED8]);
  v12 = *STACK[0x970] != (v8 ^ 0x726A) || *STACK[0x940] == 0;
  return (*(v9 + 8 * (v8 | (4 * v12))))(v10);
}

uint64_t sub_100286250@<X0>(int a1@<W8>)
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
  STACK[0xBEB0] = 0;
  STACK[0xBEB8] = v2;
  v13 = 16777619 * ((1269228062 * v12 + 7) ^ (1269228062 * v12)) % 7;
  v14 = 16777619 * ((1269228062 * v12 + 6) ^ (1269228062 * v12)) % 6;
  v15 = 16777619 * ((1269228062 * v12 + 5) ^ (1269228062 * v12)) % 5;
  v16 = *(&STACK[0xBEB0] | v13);
  *(&STACK[0xBEB0] | v13) = STACK[0xBEB7];
  v17 = *(&STACK[0xBEB0] | v14);
  *(&STACK[0xBEB0] | v14) = STACK[0xBEB6];
  v18 = *(&STACK[0xBEB0] | v15);
  *(&STACK[0xBEB0] | v15) = STACK[0xBEB5];
  v19 = vdup_n_s32(1269228062 * v12);
  v20 = 16777619 * ((1269228062 * v12 + 3) ^ (1269228062 * v12)) % 3;
  v21.i32[0] = v19.i32[0];
  v21.i32[1] = (1269228062 * v12) | 1;
  LOBYTE(STACK[0xBEB7]) = v16;
  v22 = veor_s8(vmul_s32(v21, v19), v19);
  LOBYTE(STACK[0xBEB6]) = v17;
  LOBYTE(STACK[0xBEB5]) = v18;
  v23 = STACK[0xBEB0];
  LOBYTE(STACK[0xBEB0]) = STACK[0xBEB4];
  LOBYTE(STACK[0xBEB4]) = v23;
  v24 = *(&STACK[0xBEB0] | v20);
  *(&STACK[0xBEB0] | v20) = STACK[0xBEB3];
  LOBYTE(STACK[0xBEB3]) = v24;
  v25 = STACK[0xBEB1];
  LOBYTE(STACK[0xBEB2]) = STACK[0xBEB0];
  LOWORD(STACK[0xBEB0]) = v25;
  STACK[0xBEB0] = vmla_s32(v22, STACK[0xBEB0], vdup_n_s32(0x1000193u));
  v26 = STACK[0xBEB8];
  v27 = (1269228062 * STACK[0xBEB8]) ^ v12;
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
  v48 = *(&STACK[0xBEB8] + v13);
  *(&STACK[0xBEB8] + v13) = STACK[0xBEBF];
  LOBYTE(STACK[0xBEBF]) = v48;
  v49 = *(&STACK[0xBEB8] + v14);
  *(&STACK[0xBEB8] + v14) = STACK[0xBEBE];
  LOBYTE(STACK[0xBEBE]) = v49;
  v50 = *(&STACK[0xBEB8] + v15);
  *(&STACK[0xBEB8] + v15) = STACK[0xBEBD];
  LOBYTE(STACK[0xBEBD]) = v50;
  v51 = STACK[0xBEB8];
  LOBYTE(STACK[0xBEB8]) = STACK[0xBEBC];
  v52 = *(&STACK[0xBEB8] + v20);
  *(&STACK[0xBEB8] + v20) = STACK[0xBEBB];
  LOBYTE(STACK[0xBEBC]) = v51;
  LOBYTE(STACK[0xBEBB]) = v52;
  v53 = STACK[0xBEB9];
  LOBYTE(STACK[0xBEBA]) = STACK[0xBEB8];
  LOWORD(STACK[0xBEB8]) = v53;
  STACK[0xBEB8] = vmla_s32(v22, STACK[0xBEB8], vdup_n_s32(0x1000193u));
  *v1 = STACK[0xBEB8] ^ STACK[0xBEB0];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100286840(uint64_t a1)
{
  STACK[0x5EB0] = v1;
  STACK[0x2650] = v1;
  return (*(STACK[0xF18] + 8 * (((((v3 - 27980) | 0xC00) ^ 0x3C26) * ((v2 + v4 - 0x2011CD4B7C36CDFLL) > 0x7FFFFFFFFFFFFFD6)) ^ v3)))(a1, v5);
}

uint64_t sub_1002868D4@<X0>(int a1@<W8>)
{
  v4 = *(STACK[0xF18] + 8 * (a1 + 10297));
  *&STACK[0xEC0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  STACK[0xE80] = v2 & 0xFFFFFFF0;
  STACK[0xE90] = v3;
  STACK[0xEA0] = v1;
  *&STACK[0xED0] = xmmword_100BC76B0;
  return v4();
}

uint64_t sub_100286AF0()
{
  v0 = 13 * (STACK[0xF10] ^ 0x8B4A);
  v1 = STACK[0xF10] - 25438;
  v2 = STACK[0xA930];
  LODWORD(STACK[0xA938]) = LODWORD(STACK[0x9AC8]) + (*(STACK[0x1A98] + 664) ^ 0xE9D5C711);
  LODWORD(STACK[0xA934]) = v2;
  return (*(STACK[0xF18] + 8 * (((v2 == -371865839) * (v0 + 24856)) ^ v1)))();
}

uint64_t sub_100286BAC()
{
  STACK[0x6EE8] = v0;
  v2 = STACK[0xF18];
  STACK[0x9320] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((((v1 ^ 0x49AAD8AF) > 0xAC9D4419) * (v1 + 13530)) ^ (v1 + 3269))))();
}

void *sub_100286C0C()
{
  v0 = STACK[0xF10] + 16075;
  v1 = STACK[0xF10] - 35287;
  LODWORD(STACK[0x316C]) = STACK[0x9894];
  v2 = *(STACK[0xF18] + 8 * ((v0 ^ 0xD943) + v1));
  STACK[0x2998] = *(STACK[0xF18] + 8 * v1);
  return v2(&STACK[0x41C4]);
}

uint64_t sub_100286C88@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x162C]) = a2;
  STACK[0x7690] -= 96;
  return (*(STACK[0xF18] + 8 * ((61612 * (a1 == ((v2 + 11127) ^ 0xE9D54C2A))) ^ v2)))();
}

uint64_t sub_100286CD0(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  v16 = (v11 + v12 - 1) & ((v13 + 4074) ^ a8);
  v18.val[0].i64[0] = v16;
  v18.val[0].i64[1] = (v11 + v12 + 14) & 0xF;
  v18.val[1].i64[0] = (v11 + v12 + 13) & 0xF;
  v18.val[1].i64[1] = (v11 + v12 + 12) & 0xF;
  v18.val[2].i64[0] = (v11 + v12 + 11) & 0xF;
  v18.val[2].i64[1] = (v11 + v12 + 10) & 0xF;
  v18.val[3].i64[0] = (v11 + v12 + 9) & 0xF;
  v18.val[3].i64[1] = (v11 + v12) & 0xFLL ^ 8;
  *(a5 + v12) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a5 + v12), *(v9 + v16 - 7)), veor_s8(*(v10 + v16 - 7), *(v8 + v16 - 7)))), a3), vmul_s8(*&vqtbl4q_s8(v18, a1), a2)));
  return (*(v15 + 8 * (((4 * (v14 != v12)) | (8 * (v14 != v12))) ^ a7)))();
}

uint64_t sub_100286E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = v7 + a3;
  v18 = v7 + a3 - 0xF1653028D44ECE5;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = v19 - ((2 * v19 - 0x5CDAF98343AD3988) & 0xE2CFD206D155D4C0) - 0x390593BE392BB264;
  v21 = __ROR8__(v20 ^ 0x6BE660E077318EC8, 8);
  v20 ^= 0xE7727912867A972ELL;
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0xC6C3F8EC9963F99ALL) + 0x6361FC764CB1FCCDLL) ^ 0x44EB7E5FF40DC910;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = *(STACK[0xF18] + 8 * v6);
  v25 = (__ROR8__(v22, 8) + v23) ^ a2;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x19BBA1D59C2A28CLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0xE3E2E070CCC5C1CELL) + 0x71F170386662E0E7) ^ 0xD8A92547B59E993ALL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x8F20F79ADB3B6DF2) - 0x386F843292624907) ^ 0xEBAF0B369B641B5ALL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | 0x507EC6BF657D269ELL) - ((v35 + v34) | a1) + a1) ^ 0x4B232FB62ED28384;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  LOBYTE(v37) = (((((2 * (v38 + v37)) & 0x3A472E94DCE4D1ALL) - (v38 + v37) - 0x1D23974A6E7268ELL) ^ 0x3A1A01B926C9F646uLL) >> (8 * (v18 & 7u))) ^ HIBYTE(v8) ^ 0x11;
  v39 = __ROR8__((v17 - 0xF1653028D44ECE4) & 0xFFFFFFFFFFFFFFF8, 8);
  *v18 = v37;
  v40 = v39 - ((2 * v39 + 0x2325067CBC52C678) & 0x2683C4CE14417DBELL) + 0x64D465A5684A221BLL;
  v41 = v40 ^ 0xDC06B8415BBDA77;
  v40 ^= 0x81547276E4F0C391;
  v42 = (__ROR8__(v41, 8) + v40) ^ v9;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ a2;
  v45 = __ROR8__(v44, 8);
  v46 = v44 ^ __ROR8__(v43, 61);
  v47 = (((v45 + v46) | 0x327688EEFA1717DFLL) - ((v45 + v46) | v4) + v4) ^ 0x33ED32F3A3D5B553;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v16;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0x321E4376094819E0) - 0x66F0DE44FB5BF310) ^ 0xB5305140F25DA153;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (v54 + v53 - ((2 * (v54 + v53)) & 0xAD2AFE16A9BE3CDALL) + 0x56957F0B54DF1E6DLL) ^ 0x4DC896021F70BB77;
  v56 = __ROR8__(v55, 8);
  v57 = __ROR8__(v53, 61);
  *(v17 - 0xF1653028D44ECE4) = (((((2 * (v56 + (v55 ^ v57))) | 0xF092B567EF92DCF2) - (v56 + (v55 ^ v57)) + 0x7B6A54C08369187) ^ 0x3C7E9D818818414DLL) >> (8 * ((v17 + 28) & 7))) ^ BYTE2(v8) ^ 0x50;
  v58 = __ROR8__((v17 - 0xF1653028D44ECE3) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = (v58 - 0x2E6D7CC1A1D69CC4) ^ 0x12159011EED07D4ELL;
  v60 = (__ROR8__((v58 - 0x2E6D7CC1A1D69CC4) ^ 0x9E8189E31F9B64A8, 8) + v59) ^ v9;
  v61 = __ROR8__(v60, 8);
  v62 = v60 ^ __ROR8__(v59, 61);
  v63 = (((2 * (v61 + v62)) | 0xA1B17E36F517C362) - (v61 + v62) + 0x2F2740E485741E4FLL) ^ 0x2DD2A6A0556AD3B4;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x19BBA1D59C2A28CLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ v16;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x2C3F70FBF6F9ADA3;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((v71 + v70) | 0x80FCAA11A3E30BE0) - ((v71 + v70) | v5) + v5) ^ 0x9BA14318E84CAEFALL;
  *(v17 - 0xF1653028D44ECE3) = (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v70, 61))) ^ v12) >> (8 * ((v17 + 29) & 7))) ^ BYTE1(v8) ^ 0xB5;
  v73 = (v17 - 0xF1653028D44ECE2);
  v74 = __ROR8__((v17 - 0xF1653028D44ECE2) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = ((2 * (v74 - 0x2E6D7CC1A1D69CC4)) | 0xC077F409C91E376) - (v74 - 0x2E6D7CC1A1D69CC4) - 0x603BFA04E48F1BBLL;
  v76 = v75 ^ 0x9882364351D39513;
  v75 ^= 0x14162FB1A0988CF5uLL;
  v77 = __ROR8__(v76, 8);
  v78 = __ROR8__((((v77 + v75) | 0x99725022D4A9356ELL) - ((v77 + v75) | v10) + v10) ^ v11, 8);
  v79 = (((v77 + v75) | 0x99725022D4A9356ELL) - ((v77 + v75) | v10) + v10) ^ v11 ^ __ROR8__(v75, 61);
  v80 = (v78 + v79) ^ a2;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x19BBA1D59C2A28CLL;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ v16;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (v86 + v85 - (v3 & (2 * (v86 + v85))) + v13) ^ v14;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x1B5DE9094BAFA51ALL;
  *v73 = v8 ^ v15 ^ (((__ROR8__(v89, 8) + (v89 ^ __ROR8__(v88, 61))) ^ v12) >> (8 * (v73 & 7u)));
  return v24();
}

uint64_t sub_1002875D4()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 23136;
  v2 = STACK[0x31F8];
  v3 = STACK[0x2928];
  *(v3 + 304) = *(STACK[0x31F8] + 24);
  *(v3 + 312) = *(v2 + 32) ^ 0x981390C2FED9246;
  *v3 = (v0 - 1436433311) ^ v1 ^ *(v2 + 324);
  v4 = STACK[0x31F8];
  *(v3 + 16) = *(STACK[0x31F8] + 372) ^ 0x82412906;
  *(v3 + 24) = v4[107] ^ 0x82412906;
  *(v3 + 32) = v4[109] ^ 0x82412906;
  *(v3 + 36) = v4[110] ^ 0x82412906;
  *(v3 + 40) = v4[111] ^ 0x82412906;
  v5 = *(STACK[0x6AA8] + 444) != -2109658874;
  return (*(STACK[0xF18] + 8 * (((16 * v5) | (32 * v5)) ^ v1)))();
}

uint64_t sub_100287704(uint64_t a1, uint64_t a2)
{
  STACK[0x3408] = v3;
  LODWORD(STACK[0x2D00]) = 1317768;
  v6 = STACK[0xF18];
  STACK[0x76B8] = *(STACK[0xF18] + 8 * v5);
  STACK[0x2218] = 0;
  LODWORD(STACK[0x65FC]) = 0;
  return (*(v6 + 8 * (((32 * ((((v2 - 8713) ^ (v4 == 0)) & 1) == 0)) & 0xBF | ((((v2 - 8713) ^ ~(v4 == 0)) & 1) << 6)) ^ (v2 - 29969))))(a1, a2, 371891400);
}

uint64_t sub_100287778@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2DAC]) = a1;
  v2 = *(STACK[0xEB0] + 36);
  STACK[0x3878] = STACK[0xEB0] + 36;
  LODWORD(STACK[0xEA0]) = (((v2 - v1) | (v1 - v2)) >> (((v1 + 49) | 0x20) - 72)) ^ 1;
  return (*(STACK[0xF18] + 8 * ((((v2 - v1) | (v1 - v2)) >> (((v1 + 49) | 0x20) - 72)) & 1 ^ (((v1 + 371876433) ^ 0x162AE82B) + v1))))();
}

uint64_t sub_1002877F0()
{
  v3 = 634647737 * (((&STACK[0x10ED8] | 0xD4143C3BA8817E94) - (&STACK[0x10ED8] & 0xD4143C3BA8817E90)) ^ 0xECF93D4C5175168);
  v4 = (STACK[0x73A8] ^ 0xDB414AE13ADC4087) - v3;
  STACK[0x10F10] = 0;
  LODWORD(STACK[0x10EEC]) = (v1 - 141390348) ^ v3;
  STACK[0x10F08] = 0;
  STACK[0x10F00] = 0;
  STACK[0x10EE0] = v4;
  STACK[0x10ED8] = v0;
  STACK[0x10EF0] = &STACK[0x94E8];
  LODWORD(STACK[0x10EFC]) = v3 + 1659821378;
  LODWORD(STACK[0x10EF8]) = v2 - v3 - 417213457;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0xF3FD)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((26491 * (LODWORD(STACK[0x10EE8]) == (((241 * (v2 ^ 0x3849) - 33790) | 0x8112) ^ 0xE9D54C2A))) ^ v2)))(v6);
}

uint64_t sub_100287948()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 30117;
  v3 = STACK[0x8320];
  v4 = STACK[0x5DD8];
  v5 = 155453101 * ((&STACK[0x10000] + 3800) ^ 0xE6261BCF);
  v6 = v5 + STACK[0xF10] + 15402;
  STACK[0x10EF0] = STACK[0x8C60];
  LODWORD(STACK[0x10EF8]) = v5 ^ 0x3A811CF3;
  STACK[0x10EE0] = v4;
  LODWORD(STACK[0x10EDC]) = v6;
  LODWORD(STACK[0x10ED8]) = v5 + 679608333;
  STACK[0x10F00] = v3;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4628)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((9404 * (LODWORD(STACK[0x10EE8]) == v0)) ^ v2)))(v8);
}

uint64_t sub_100287A0C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W8>)
{
  v13 = a5 < v7;
  *(a1 + 8 * (a4 + v12)) = *(*(v8 + v9) + 8 * (a4 + v12));
  v14 = ((v6 + v10) ^ a2) + a4;
  v15 = v13 ^ (v14 < v5);
  v16 = v14 < a5;
  if (!v15)
  {
    v13 = v16;
  }

  return (*(STACK[0xF18] + 8 * ((v13 * a3) ^ v11)))();
}

uint64_t sub_100287B58()
{
  v2 = STACK[0xB9A8];
  STACK[0x10ED8] = STACK[0x80A8];
  LOWORD(STACK[0x10EEC]) = ((v1 ^ 0x1DFD) + 3 * (v0 ^ 0x3D07) + ((2 * v1) & 0x3BFA) + 29876) ^ (-2887 * ((((&STACK[0x10000] + 3800) | 0xE1FF) - ((&STACK[0x10000] + 3800) | 0x1E00) + 7680) ^ 0xCE03));
  LOWORD(STACK[0x10EE4]) = -2887 * ((((&STACK[0x10000] + 3800) | 0xE1FF) - ((&STACK[0x10000] + 3800) | 0x1E00) + 7680) ^ 0xCE03) + 8978;
  STACK[0x10EF0] = v2;
  LODWORD(STACK[0x10EE0]) = (v0 - 4974) ^ (634647737 * ((((&STACK[0x10000] + 3800) | 0x8373E1FF) - ((&STACK[0x10000] + 3800) | 0x7C8C1E00) + 2089557504) ^ 0xEEE5CE03));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD9CE)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((3800 * (LODWORD(STACK[0x10EE8]) == -371865839)) ^ v0)))(v4);
}

uint64_t sub_100287D44()
{
  v4 = STACK[0x7980];
  *(v4 + 152) = v2;
  *(v4 + 156) = v3;
  return (*(STACK[0xF18] + 8 * ((120 * ((v1 - 1722492139 + ((v0 - 9863) | 0x8303u)) + 4 > STACK[0xB7F0])) ^ v0)))();
}

uint64_t sub_100287DA4@<X0>(int a1@<W8>)
{
  v5 = ((2 * (a1 - 1870126583)) & 0xFA729DB6) + ((a1 - 1870126583) ^ 0x271FFDB57D394EDBLL);
  STACK[0xB3E0] = v5 - 0x1EFBB951B90D5586;
  v6 = (((v2 - 20938) | 0x8B32u) ^ 0xD8E0024B715A582ALL) + v5;
  v7 = v1 - 0x6F6F2C6D3357782CLL;
  v8 = (v7 < (v2 - 20095) + 4002684564u) ^ (v6 < 0xEE9421E8);
  v9 = v6 > v7;
  if (v8)
  {
    v9 = v6 < 0xEE9421E8;
  }

  if (!v9)
  {
    v3 = v4;
  }

  LODWORD(STACK[0xB3E8]) = v3;
  v10 = !v9;
  LOBYTE(STACK[0xB3EF]) = v10;
  return (*(STACK[0xF18] + 8 * ((41 * v10) ^ v2)))();
}

uint64_t sub_100287EE8()
{
  STACK[0x4F90] = STACK[0x8C68];
  LODWORD(STACK[0x22E8]) = v0;
  LODWORD(STACK[0x35EC]) = 1693393387;
  return (*(STACK[0xF18] + 8 * (v1 - 29050)))();
}

uint64_t sub_100288058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W8>)
{
  *STACK[0x1468] = STACK[0x10E8];
  *STACK[0x4600] = (a3 ^ 0x9725 ^ LODWORD(STACK[0x375C]) ^ 0xEEDEBDEBFDFF64C5) + ((2 * LODWORD(STACK[0x375C])) & 0x1FBFFDFFCLL) + 0x1121421402001002;
  return (*(STACK[0xF18] + 8 * a3))(a1, a2, 3923101457);
}

uint64_t sub_1002880D0()
{
  v2 = *(STACK[0x4048] - 0x7E666516A39B34A6);
  v3 = (((v1 + 32513) & 0x7C7E ^ 0xEC6B) + ((v1 - 28895) & 0xAB3B)) ^ (v0 - 2430) & 0x8855;
  v4 = (v0 - 2430) ^ 0x35F4;
  STACK[0x10EE0] = STACK[0x580];
  STACK[0x10ED8] = v2;
  LODWORD(STACK[0x10EEC]) = 193924789 * ((&STACK[0x10000] + 3800) ^ 0xB6BB3266) + v1 + 8393;
  LOWORD(STACK[0x10EE8]) = ((v0 - 2430) ^ (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v3 ^ (v0 - 2430) & (2 * (v0 - 2430)) & 0x6BEA)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ v3)) ^ 0xB5E7) + 3765 * ((&STACK[0x10000] + 3800) ^ 0x3266);
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 31838)))(&STACK[0x10ED8]);
  v7 = STACK[0x10EF0];
  LODWORD(STACK[0x4B3C]) = STACK[0x10EF0];
  return (*(v5 + 8 * ((387 * (v7 != 1497668682)) ^ v1)))(v6);
}

uint64_t sub_100288264()
{
  v1 = STACK[0xF10] ^ 0xB11D;
  v2 = STACK[0xF10] - 20757;
  LODWORD(STACK[0x9604]) = v0;
  return (*(STACK[0xF18] + 8 * ((LOBYTE(STACK[0xB307]) * (v1 + 17430)) ^ v2)))();
}

uint64_t sub_1002882B0()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 1762627448) ^ (906386353 * ((&STACK[0x10000] + 3800) ^ 0x3101CD24));
  STACK[0x10EE0] = 0;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * ((v0 + 5125) ^ 0xD1B5)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] < 1) * (((v0 + 1065) | 0x800B) ^ 0x8B2B)) | (v0 + 5125))))(v2);
}

uint64_t sub_1002883AC@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v3 = (a1 - 1801140093);
  v4 = STACK[0x74B8];
  a2[244] = *(STACK[0x74B8] + v3 + 15);
  a2[243] = *(v4 + v3 + 14);
  a2[242] = *(v4 + v3 + 13);
  a2[241] = *(v4 + ((v2 + 22383) ^ 0xC786) + v3);
  a2[240] = *(v4 + v3 + 11);
  a2[239] = *(v4 + v3 + 10);
  a2[238] = *(v4 + v3 + 9);
  a2[237] = *(v4 + v3 + 8);
  a2[236] = *(v4 + v3 + 7);
  a2[235] = *(v4 + v3 + 6);
  a2[234] = *(v4 + v3 + 5);
  a2[233] = *(v4 + v3 + 4);
  a2[232] = *(v4 + v3 + 3);
  a2[231] = *(v4 + v3 + 2);
  a2[230] = *(v4 + v3 + 1);
  a2[229] = *(v4 + v3);
  *(STACK[0x1E30] + 64) |= 8u;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_10028847C()
{
  v0 = STACK[0xF10] - 20320;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (STACK[0xF10] + 16295)))(*(STACK[0x820] - 1306953403), *STACK[0x3548], (STACK[0xF10] - 32677) ^ 0xE9D5CC87 ^ *(STACK[0x3548] + 8));
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1002884E0()
{
  v3 = *(v2 + 112);
  STACK[0xA8B0] = v2 + 112;
  v4 = ((((v1 - 801895171) & 0x2FCBFFBF) + 7047) ^ 0xBCBDBC5B) + v0;
  STACK[0xA8B8] = v4;
  return (*(STACK[0xF18] + 8 * ((242 * (*(v3 + 72 * v4 + 56) != 0)) ^ v1)))();
}

uint64_t sub_100288550(uint64_t a1, uint64_t a2)
{
  STACK[0x5030] = 0;
  LODWORD(STACK[0x4374]) = -371865839;
  return (*(STACK[0xF18] + 8 * ((15780 * (v3 == ((v2 - 30212) ^ 0xE9D5C252 ^ (v2 - 257299388) & 0xF5598F5))) ^ (v2 - 30212))))(a1, a2, 371891535);
}

uint64_t sub_100288698()
{
  v0 = (STACK[0xF10] + 2120741828) & 0x8197D3FC;
  STACK[0x10EE0] = 0;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762646893) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x3AADA7CC) - ((&STACK[0x10000] + 3800) & 0x3AADA7C8)) ^ 0xBAC6AE8));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x9845)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((*STACK[0x970] < 1) * (((v0 + 1578806531) & 0xA1E5BE5B) - 48259)) ^ v0)))(v2);
}

uint64_t sub_100288778()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 34590;
  v2 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0xD91 ^ (7783 * ((v0 - 1004299765) < 0xCE0DE6BD)))))();
}

uint64_t sub_1002887E8@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x22E4]) = -371865839;
  STACK[0x1E60] = 0;
  STACK[0x3088] = 0;
  STACK[0x3038] = 0;
  LODWORD(STACK[0x1F04]) = -371865839;
  LODWORD(STACK[0x2440]) = -371865839;
  STACK[0x8E80] = 0;
  STACK[0x2160] = 0;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100288838()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 31560;
  LODWORD(STACK[0x9A28]) = LODWORD(STACK[0xA8AC]) + 1011093968;
  v2 = STACK[0xF18];
  STACK[0x9888] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 - 30626)))();
}

uint64_t sub_100288A8C()
{
  v1 = v0 + 9902;
  v2 = (v0 - 298606409) ^ 0xEE33D644;
  v3 = (v0 - 73) & 0xFB;
  v4 = STACK[0xAE20];
  v5 = (v4 ^ 0xC27CA2DF) & (2 * (v4 & 0x87828DC)) ^ v4 & 0x87828DC;
  v6 = (((v4 ^ 0x2B2FF0AAC21CB2F7) << (v3 ^ 0x3Au)) ^ 0x11DDBD4B94C93456) & (v4 ^ 0x2B2FF0AAC21CB2F7) ^ ((v4 ^ 0x2B2FF0AAC21CB2F7) << (v3 ^ 0x3Au)) & (v2 - 0x7711215A359B7F51);
  v7 = v6 ^ 0x4A248A29;
  LODWORD(v6) = (v6 ^ 0x400000) & (4 * v5) ^ v5;
  v8 = ((4 * v7) ^ 0x299268AC) & v7 ^ (4 * v7) & 0xCA649A28;
  LODWORD(v6) = (v8 ^ 0x8000820) & (16 * v6) ^ v6;
  v9 = ((16 * (v8 ^ 0xC2649203)) ^ 0xA649A2B0) & (v8 ^ 0xC2649203) ^ (16 * (v8 ^ 0xC2649203)) & 0xCA649A20;
  return (*(STACK[0xF18] + 8 * ((11 * ((STACK[0xAE20] ^ (2 * ((((v9 ^ 0x4824180B) << 8) & 0x4A640000 ^ (((v9 ^ 0x4824180B) << 8) ^ 0x649A0000) & (v9 ^ 0x4824180B) ^ 0x40000000) & (((v9 ^ 0x82408200) & (v6 << 8) ^ v6) << 16) ^ (v9 ^ 0x82408200) & (v6 << 8) ^ v6))) == 142092508)) ^ v1)))();
}

uint64_t sub_100288C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 ^ 0xD3DB51DC;
  v4 = ((327 * (v2 ^ 0xD3DB128E) + 0x1BDFD2DBDLL) & v1) + (a1 ^ ((v2 ^ 0xD3DB51DC) - 16577) ^ 0xEFEC68AFDEFEDE02);
  STACK[0xA758] = v4 + 0x770139F48169FB7ALL;
  v4 += 0x10139750A5EC2731;
  v5 = STACK[0x9978] - 0x5471262469597CC0;
  v6 = v4 < 0x84EB03A9;
  v7 = v4 > v5;
  if (v5 < 0x84EB03A9 != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = STACK[0xA750];
  }

  LODWORD(STACK[0xA760]) = v8;
  v9 = v8 == -371865839;
  v10 = v8 != -371865839;
  v11 = v9;
  LOBYTE(STACK[0xA767]) = v11;
  return (*(STACK[0xF18] + 8 * ((107 * v10) ^ v3)))();
}

uint64_t sub_100288E70()
{
  v0 = STACK[0xF10] - 30507;
  STACK[0x5658] = STACK[0x7560] - 0x10A99C80114D1487;
  LODWORD(STACK[0x2564]) = 1112898601;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100288EB8()
{
  v2 = v1 - 11063;
  v3 = v1 - 32418;
  ++*v0;
  STACK[0x10ED8] = 0;
  LODWORD(STACK[0x10EE0]) = v1 + 155453101 * (((~(&STACK[0x10000] + 3800) & 0x9AF6EA3A) - (~(&STACK[0x10000] + 3800) | 0x9AF6EA3B)) ^ 0x7CD0F1F4) + 296753103;
  v4 = v1 ^ 0x41F1;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * v4))(&STACK[0x10ED8]);
  STACK[0x2278] = *(v5 + 8 * v3);
  return (*(v5 + 8 * ((4303 * (v3 != 1489141661)) ^ ((v2 ^ 0xFFFF9A03) + v3))))(v6);
}

uint64_t sub_100288F9C()
{
  LODWORD(STACK[0x6004]) = 1765993179;
  v2 = *(v0 - 0x7E666516A39B34A6);
  v3 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0x2384E767) - ((&STACK[0x10000] + 3800) | 0xDC7B1898) - 595912552) ^ 0xB45FD5CC);
  LODWORD(STACK[0x10EDC]) = -1826624832 - v3;
  LODWORD(STACK[0x10EEC]) = 824934060 - v3;
  LODWORD(STACK[0x10EE8]) = v1 - v3 - 21798;
  STACK[0x10EE0] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 23198)))(&STACK[0x10ED8]);
  v6 = STACK[0x10ED8];
  LODWORD(STACK[0x1C04]) = STACK[0x10ED8];
  return (*(v4 + 8 * (((v6 == -371865839) * ((v1 + 6939) ^ 0x8B55)) ^ v1)))(v5);
}

uint64_t sub_100289094()
{
  v2 = (((v0 + 5666) ^ 0x793A1F82) + (v1 ^ 0x86C56B66)) ^ ((v1 ^ 0xA852099C) + 1471018596) ^ ((v1 ^ 0xC742A5EB) + 951897818 + ((v0 + 5666) | 0x23));
  v3 = LODWORD(STACK[0x3908]) + 719466875;
  v2 += 347601020;
  v4 = (v3 < 0x2AE2316B) ^ (v2 < 0x2AE2316B);
  v5 = v3 > v2;
  if (v4)
  {
    v5 = v3 < 0x2AE2316B;
  }

  return (*(STACK[0xF18] + 8 * ((11 * v5) ^ v0)))();
}

uint64_t sub_100289174()
{
  LODWORD(STACK[0x10ED8]) = (v0 - 2608) ^ (1603510583 * ((2 * ((&STACK[0x10000] + 3800) & 0x627C3E58) - (&STACK[0x10000] + 3800) - 1652309593) ^ 0xA58F30C));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16406)))(&STACK[0x10ED8]);
  STACK[0x85B8] = *(v1 + 8 * (v0 - 32222));
  return (*(v1 + 8 * ((v0 - 32222) ^ 0x51A3 ^ (59134 * (v0 - 243764024 <= (v0 + 1744364451))))))(v2);
}

uint64_t sub_100289254()
{
  v0 = STACK[0xF10] + 6020;
  *(STACK[0x68F0] + 476) = 740984379;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100289308()
{
  LODWORD(STACK[0x62EC]) = v0;
  LODWORD(STACK[0x8A8C]) = v1;
  v3 = *(STACK[0x938] + 16);
  LODWORD(STACK[0x10EE0]) = (v2 ^ 0x879F9604) + 155453101 * ((((&STACK[0x10000] + 3800) | 0xF88E31AD) - ((&STACK[0x10000] + 3800) & 0xF88E31A8)) ^ 0x1EA82A62) - 1978613061;
  STACK[0x10ED8] = v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * ((v2 ^ 0x879F9604) + 2019617403)))(&STACK[0x10ED8]);
  v6 = STACK[0x9028];
  v7 = STACK[0x7788];
  STACK[0x3640] = &STACK[0x1CE8];
  STACK[0x64E8] = v6;
  LODWORD(STACK[0x69C0]) = v7;
  LODWORD(STACK[0x7384]) = 2125198241;
  return (*(v4 + 8 * (((v2 ^ 0x879F9604) + 7252) ^ v2 ^ 0x879F9604 ^ (9463 * ((v2 ^ 0x879F9604) > 0x374A1D95)))))(v5);
}

uint64_t sub_10028941C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 39827;
  v4 = v1 - 724047463;
  LODWORD(STACK[0x289C]) = 371865838;
  v5 = *(a1 - 0x7E666516A39B34A6);
  v6 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x21845015) - ((&STACK[0x10000] + 3800) | 0xDE7BAFEA) - 562319382) ^ 0xC7A24BDA);
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10F00]) = v6 ^ 0x5AF81C38;
  LODWORD(STACK[0x10EEC]) = v3 - v6 + 37931;
  STACK[0x10EF0] = &STACK[0x94C4];
  STACK[0x10EF8] = v5;
  LODWORD(STACK[0x10EDC]) = 980380847 - v6;
  LODWORD(STACK[0x10ED8]) = v6 ^ 0xE50053FB;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v3 + 46322)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (((LODWORD(STACK[0x10EE8]) != -371865839) * ((v4 ^ 0x2B27EF4B) + (v4 & 0x2B27EF7F))) ^ v3)))(v8);
}

uint64_t sub_1002895B4(uint64_t a1, uint64_t a2)
{
  STACK[0x95A0] = v3;
  LOWORD(STACK[0x79DE]) = 7085;
  LODWORD(STACK[0x16B4]) = -1955860644;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_10028962C@<X0>(int a1@<W8>)
{
  v2 = (((5 * ((a1 + 38131) ^ 0x9A0E) + 1074255107) | 0x4140112u) + 0x43D8CBF9C8CEB13ALL) ^ v1;
  STACK[0x7FA0] = v2;
  return (*(STACK[0xF18] + 8 * ((47 * (v2 != 0x43D8CBFA0CEB42D4)) ^ (a1 + 38131))))();
}

uint64_t sub_1002897B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v15 = (v9 + 31) & 0xF;
  *(a1 + v9) = *(a2 + v9) ^ (v15 * v11) ^ *(*(a8 + 8 * a3) + a4 + v15) ^ *(v15 + *(a8 + 8 * a5) + a6 + 1) ^ *(*(a8 + 8 * a7) + v10 + v15) ^ v12;
  return (*(STACK[0xF18] + 8 * (((v9 + 31 == v13) * v14) ^ v8)))();
}

uint64_t sub_10028986C(uint64_t a1, uint64_t a2)
{
  STACK[0x51F0] = 0;
  LODWORD(STACK[0x8DA4]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((v3 == (v2 ^ 0xD79A) - 371901483) * ((v2 ^ 0xD79A) + 14304)) ^ v2)))(a1, a2, 371891535);
}

uint64_t sub_100289934()
{
  v1 = STACK[0xF10] - 21466;
  *STACK[0xA2D8] = (((STACK[0xF10] - 15067) | 0x271C) - 0x188C49C3D34E4C83) ^ v0;
  return (*(STACK[0xF18] + 8 * ((62616 * (LODWORD(STACK[0x2F48]) == -371865839)) ^ v1)))();
}

uint64_t sub_1002899B0()
{
  v1 = STACK[0xF10] - 11389;
  *(STACK[0xAAF8] + 64) = v0 ^ (STACK[0xF10] - 20160) ^ 0xE773B63C2CB21682;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1002899FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  LODWORD(STACK[0x8524]) = 1968618394;
  LODWORD(STACK[0x6D94]) = 1968618394;
  LODWORD(STACK[0x4514]) = -1439334077;
  LODWORD(STACK[0x82F4]) = -593006914;
  return (*(STACK[0xF18] + 8 * ((56281 * (v3 == ((a3 + 807623613) & 0xCFDCCBBF ^ 0xE9D549F4) + a3 - 24445)) ^ a3)))(a1, a2, 371891535);
}

uint64_t sub_100289C40()
{
  *(v0 + 128) = 0xE1D5C711E9D5C710;
  *(v0 + 136) = 0x500000002;
  *(v0 + 144) = 0;
  STACK[0x60E8] = 0;
  LODWORD(STACK[0x7448]) = 1968254617;
  STACK[0x3B70] = 0;
  LODWORD(STACK[0x832C]) = 1991563093;
  LODWORD(STACK[0x8CFC]) = 967308879;
  STACK[0x8578] = v0 + 148;
  return (*(STACK[0xF18] + 8 * (v1 - 27421)))();
}

uint64_t sub_100289CCC()
{
  v0 = STACK[0xF10] - 13842;
  v1 = (STACK[0xF10] + 1962372260) & 0xDFA9CD76;
  LODWORD(STACK[0x3AC4]) += 4;
  v2 = (((LODWORD(STACK[0xB9DC]) ^ (v1 + 14257256)) - 1434145214) ^ ((LODWORD(STACK[0xB9DC]) ^ 0xD1618481) + 782138239) ^ ((LODWORD(STACK[0xB9DC]) ^ 0x6DCF122E) - 1842287150)) != 371865839;
  return (*(STACK[0xF18] + 8 * ((2 * v2) | (16 * v2) | v0)))();
}

uint64_t sub_100289DB0@<X0>(int a1@<W8>)
{
  v1 = STACK[0x4310];
  v2 = 72 * STACK[0x2C08];
  *(*v1 + v2 + 24) = -371865839;
  *(*v1 + v2 + 32) = 0;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_100289DFC()
{
  v1 = (STACK[0xF10] - 26738) | 0x404;
  v2 = STACK[0xF10] + 2518;
  LODWORD(STACK[0x9974]) = v0;
  v3 = ((v0 ^ 0xC1C59190A851A7A2) + 0x3E3A6E6F57AE585ELL) ^ ((v0 ^ 0xD0FBBB58181ED11ALL) + 0x2F0444A7E7E12EE6) ^ ((v1 ^ 0xEEC1D537A665689ALL) + (v0 ^ 0x113E2AC8599AB1A9));
  STACK[0x9978] = v3 + 0x54712625D81A477ALL;
  v3 += 0x17A08604CLL;
  v4 = v3 < 0x9032993B;
  v5 = STACK[0xA740] - 0x4E983B041209CF00 < v3;
  if (STACK[0xA740] - 0x4E983B041209CF00 < 0x9032993B != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((4 * v5) | (8 * v5) | v2)))();
}

uint64_t sub_100289F80()
{
  v1 = STACK[0xF18];
  STACK[0x8098] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 21492 + v0 + 25361)))();
}

uint64_t sub_10028A094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, int a9@<W8>)
{
  STACK[0x570] = v17;
  STACK[0x568] = v16;
  STACK[0x578] = a5;
  STACK[0x558] = a4;
  STACK[0x528] = a3;
  STACK[0x560] = v15;
  STACK[0x588] = v14;
  STACK[0x548] = v13;
  STACK[0x538] = v12;
  STACK[0x540] = v11;
  STACK[0x590] = v10;
  STACK[0x580] = a8;
  STACK[0x530] = a7;
  STACK[0x550] = a6;
  return (*(STACK[0xF18] + 8 * ((42610 * (a9 == ((v9 + 1206417461) & 0xB817EFBF) + 465771893)) ^ v9)))(a1, a2, 371891374);
}