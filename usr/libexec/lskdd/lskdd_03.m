uint64_t sub_1000B71A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v8 = STACK[0x2A8];
  v9 = LODWORD(STACK[0x2A8]) % 0xF;
  v10 = STACK[0x87C];
  v11 = STACK[0x2B0];
  v12 = ((STACK[0x2B0] & 0xF) * a7 + 5589 - (((8693 * ((STACK[0x2B0] & 0xF) * a7 + 5589)) >> 16) >> 7) * v7);
  v13 = STACK[0x2C8];
  LOBYTE(STACK[0x87C]) = *(STACK[0x2C8] + v12);
  *(v13 + v12) = v10;
  v14 = STACK[0x5AA];
  v15 = STACK[0x2A4];
  LOWORD(v12) = LODWORD(STACK[0x2A4]) % 0xE;
  v16 = (v9 * a7 + 5832 - (((8693 * (v9 * a7 + 5832)) >> 16) >> 7) * v7);
  LOBYTE(STACK[0x5AA]) = *(v13 + v16);
  *(v13 + v16) = v14;
  LOBYTE(v16) = STACK[0x69D];
  v17 = v12 * a7;
  LOBYTE(STACK[0x69D]) = *(v13 + (v12 * a7 + 5110 - (((8693 * (v12 * a7 + 5110)) >> 16) >> 7) * v7));
  v18 = STACK[0x2D8];
  LODWORD(v12) = LODWORD(STACK[0x2D8]) % 0xD;
  *(v13 + (v17 + 6075 - (((8693 * (v17 + 6075)) >> 16) >> 7) * v7)) = v16;
  LOBYTE(v16) = STACK[0x790];
  v19 = v12 * a7 + 6318 - ((8693 * (v12 * a7 + 6318)) >> 23) * v7;
  v20 = (v12 * a7 + 6318 - (((8693 * (v12 * a7 + 6318)) >> 16) >> 7) * v7);
  LOBYTE(STACK[0x790]) = *(v13 + v20);
  *(v13 + v20) = v16;
  v21 = ((~(2 * v19) + v19) & 0x9A9AAAE | v19 & 0x2AE) + v15;
  LODWORD(v20) = v18 - (v21 ^ v11);
  v22 = v21 ^ v11 ^ 0xD070456F;
  LOBYTE(v11) = STACK[0x883];
  LODWORD(v16) = v21 - v22;
  v23 = v20 + v21;
  v24 = v8 - v20 - (v20 + v21);
  v25 = (v22 % 0xC * a7 + 6561 - (((8693 * (v22 % 0xC * a7 + 6561)) >> 16) >> 7) * v7);
  LOBYTE(STACK[0x883]) = *(v13 + v25);
  *(v13 + v25) = v11;
  LOBYTE(v11) = STACK[0x5B1];
  v26 = (v24 % 0xB * a7 + 6804 - (((8693 * (v24 % 0xB * a7 + 6804)) >> 16) >> 7) * v7);
  LOBYTE(STACK[0x5B1]) = *(v13 + v26);
  *(v13 + v26) = v11;
  v27 = v24 + v22;
  v28 = (v16 % 0xA * a7 + 7047 - (((8693 * (v16 % 0xA * a7 + 7047)) >> 16) >> 7) * v7);
  v29 = STACK[0x6A4];
  LOBYTE(STACK[0x6A4]) = *(v13 + v28);
  *(v13 + v28) = v29;
  v30 = (v23 % 9 * a7 + 7290 - (((8693 * (v23 % 9 * a7 + 7290)) >> 16) >> 7) * v7);
  v31 = STACK[0x797];
  v32 = v23 % 7;
  LODWORD(v16) = (v23 ^ v16) - v23;
  LOBYTE(STACK[0x797]) = *(v13 + v30);
  *(v13 + v30) = v31;
  LOBYTE(v30) = STACK[0x88A];
  v33 = (((v22 + 951) & 7) * a7 + 7533 - (((8693 * (((v22 - 1764883529) & 7) * a7 + 7533)) >> 16) >> 7) * v7);
  v34 = (v27 ^ v23) - 1930221753;
  LOBYTE(STACK[0x88A]) = *(v13 + v33);
  *(v13 + v33) = v30;
  LOBYTE(v30) = STACK[0x5B8];
  v35 = (v32 * a7 + 7776 - (((8693 * (v32 * a7 + 7776)) >> 16) >> 7) * v7);
  LOBYTE(STACK[0x5B8]) = *(v13 + v35);
  *(v13 + v35) = v30;
  LOBYTE(v30) = STACK[0x6AB];
  v36 = ((((v32 + 9) & 0xA) + ((2 - v32) & 2) + v16 % 6) * a7 + 5589 - (((8693 * ((((v32 + 9) & 0xA) + ((2 - v32) & 2) + v16 % 6) * a7 + 5589)) >> 16) >> 7) * v7);
  LOBYTE(STACK[0x6AB]) = *(v13 + v36);
  *(v13 + v36) = v30;
  LOBYTE(v36) = STACK[0x79E];
  v37 = (v34 % 5 * a7 + 8262 - (((8693 * (v34 % 5 * a7 + 8262)) >> 16) >> 7) * v7);
  LOBYTE(STACK[0x79E]) = *(v13 + v37);
  LODWORD(v25) = (v34 ^ (v22 - 1764883529)) + v23 - v16;
  *(v13 + v37) = v36;
  LOBYTE(v37) = STACK[0x891];
  v38 = ((1 - v22) & 3) * a7 + 8505;
  v39 = (v38 - (((8693 * v38) >> 16) >> 7) * v7);
  LOBYTE(STACK[0x891]) = *(v13 + v39);
  *(v13 + v39) = v37;
  LOBYTE(v16) = v25 ^ v16;
  v40 = (v25 % 3 * a7 + 8748 - (((8693 * (v25 % 3 * a7 + 8748)) >> 16) >> 7) * v7);
  LOBYTE(v39) = STACK[0x5BF];
  LOBYTE(STACK[0x5BF]) = *(v13 + v40);
  *(v13 + v40) = v39;
  LOBYTE(v40) = STACK[0x6B2];
  v41 = ((38 - (v16 & 1)) * a7 - (((2112399 * (38 - (v16 & 1))) >> 16) >> 7) * v7);
  LOBYTE(STACK[0x6B2]) = *(v13 + v41);
  *(v13 + v41) = v40;
  return (*(STACK[0x2D0] + 8 * a6))(106191, &off_101353600);
}

uint64_t sub_1000B7718@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x3850]) = 0;
  LODWORD(STACK[0x3A80]) = (a1 - 10620) ^ 0x3713;
  v2 = *(v1 + 8 * ((26852 * (LODWORD(STACK[0x38F8]) == ((-37 * ((a1 - 124) ^ 0xFB)) ^ 0x91))) ^ (a1 - 10620)));
  STACK[0x3A78] = STACK[0x3A50];
  LODWORD(STACK[0x38F8]) = 0;
  return v2();
}

uint64_t sub_1000B7780(uint64_t a1, uint64_t a2)
{
  v12.i64[0] = a1 + v5 + 15;
  v12.i64[1] = a1 + v5 + (v2 ^ v9) + 8;
  v13.i64[0] = a1 + v5 + 17;
  v13.i64[1] = a1 + v5 + 16;
  v14.i64[0] = a1 + v5 + 13;
  v14.i64[1] = a1 + v5 + 12;
  v15.i64[0] = a1 + v5 + 11;
  v15.i64[1] = a1 + v5 + 10;
  v16 = vandq_s8(v15, *&STACK[0x850]);
  v17 = vandq_s8(v14, *&STACK[0x850]);
  v18 = vandq_s8(v13, *&STACK[0x850]);
  v19 = vandq_s8(v12, *&STACK[0x850]);
  v20 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v21 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v22 = vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL);
  v23 = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v24 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x6B0], v23), *&STACK[0x690]), vorrq_s8(vaddq_s64(v23, *&STACK[0x660]), *&STACK[0x680]));
  v25 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x6B0], v22), *&STACK[0x690]), vorrq_s8(vaddq_s64(v22, *&STACK[0x660]), *&STACK[0x680]));
  v26 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x6B0], v21), *&STACK[0x690]), vorrq_s8(vaddq_s64(v21, *&STACK[0x660]), *&STACK[0x680]));
  v27 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x6B0], v20), *&STACK[0x690]), vorrq_s8(vaddq_s64(v20, *&STACK[0x660]), *&STACK[0x680]));
  v28 = vsubq_s64(*&STACK[0x490], v25);
  v29 = vsubq_s64(*&STACK[0x490], v24);
  v30 = veorq_s8(v29, *&STACK[0x4B0]);
  v31 = veorq_s8(v28, *&STACK[0x4B0]);
  v32 = veorq_s8(v28, *&STACK[0x4F0]);
  v33 = veorq_s8(v29, *&STACK[0x4F0]);
  v34 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), v33);
  v35 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), v32);
  v36 = veorq_s8(v35, *&STACK[0x4D0]);
  v37 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v35, *&STACK[0x480]), *&STACK[0x520]), v36), vandq_s8(v36, *&STACK[0x480]));
  v38 = veorq_s8(v34, *&STACK[0x4D0]);
  v39 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v34, *&STACK[0x480]), *&STACK[0x520]), v38), vandq_s8(v38, *&STACK[0x480])), *&STACK[0x500]);
  v40 = vsraq_n_u64(vshlq_n_s64(v33, 3uLL), v33, 0x3DuLL);
  v41 = veorq_s8(v37, *&STACK[0x500]);
  v42 = veorq_s8(v41, vsraq_n_u64(vshlq_n_s64(v32, 3uLL), v32, 0x3DuLL));
  v43 = veorq_s8(v39, v40);
  v44 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v43);
  v46 = veorq_s8(vaddq_s64(v44, v42), *&STACK[0x640]);
  v47 = veorq_s8(v45, *&STACK[0x640]);
  v48 = vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL);
  v49 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL));
  v50 = veorq_s8(v46, v48);
  v51 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v50);
  v53 = vaddq_s64(v51, v49);
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v53, v53), *&STACK[0x510]), v53), *&STACK[0x4E0]), *&STACK[0x6C0]);
  v55 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v52, v52), *&STACK[0x510]), v52), *&STACK[0x4E0]), *&STACK[0x6C0]);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v58 = veorq_s8(v54, v55);
  v59 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = veorq_s8(vaddq_s64(v59, v57), *&STACK[0x6A0]);
  v62 = veorq_s8(v60, *&STACK[0x6A0]);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v62, v62), *&STACK[0x4A0]), v62), *&STACK[0x430]), v11);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v61, v61), *&STACK[0x4A0]), v61), *&STACK[0x430]), v11);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v66 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v66);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v65);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(v68, vandq_s8(vaddq_s64(v68, v68), *&STACK[0x880])), *&STACK[0x890]), *&STACK[0x8A0]);
  v70 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(v67, vandq_s8(vaddq_s64(v67, v67), *&STACK[0x880])), *&STACK[0x890]), *&STACK[0x8A0]);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v70);
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), *&STACK[0x590]);
  v77 = veorq_s8(v75, *&STACK[0x590]);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = vdupq_n_s64(v8);
  v80 = vsubq_s64(*&STACK[0x490], v26);
  v120.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v78), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), v79)));
  v120.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL))), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v79)));
  v81 = veorq_s8(v80, *&STACK[0x4B0]);
  v82 = veorq_s8(v80, *&STACK[0x4F0]);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v82);
  v84 = veorq_s8(v83, *&STACK[0x4D0]);
  v85 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v83, *&STACK[0x480]), *&STACK[0x520]), v84), vandq_s8(v84, *&STACK[0x480])), *&STACK[0x500]);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), *&STACK[0x640]);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), *&STACK[0x510]), v89), *&STACK[0x4E0]), *&STACK[0x6C0]);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), *&STACK[0x6A0]);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v92, v92), *&STACK[0x4A0]), v92), *&STACK[0x430]), *&STACK[0x870]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), *&STACK[0x880])), *&STACK[0x890]), *&STACK[0x8A0]);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), *&STACK[0x590]);
  v99 = vsubq_s64(*&STACK[0x490], v27);
  v120.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL))), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v79)));
  v100 = veorq_s8(v99, *&STACK[0x4B0]);
  v101 = veorq_s8(v99, *&STACK[0x4F0]);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = vandq_s8(v102, *&STACK[0x480]);
  v104 = veorq_s8(v102, *&STACK[0x4D0]);
  v105 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(v103, *&STACK[0x520]), v104), vandq_s8(v104, *&STACK[0x480])), *&STACK[0x500]);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), *&STACK[0x640]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), *&STACK[0x510]), v109), *&STACK[0x4E0]), *&STACK[0x6C0]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), *&STACK[0x6A0]);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v112, v112), *&STACK[0x4A0]), v112), *&STACK[0x430]), *&STACK[0x870]);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v115, vandq_s8(vaddq_s64(v115, v115), *&STACK[0x880])), *&STACK[0x890]), *&STACK[0x8A0]);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), *&STACK[0x590]);
  v120.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL))), *&STACK[0x5F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), v79)));
  *(a1 + v5 + 10) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v120, v7[26])), *(a2 + v5));
  return (*(v6 + 8 * (((v3 == v5) * v10) ^ v4)))();
}

uint64_t sub_1000B7D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x37E0]) = v8;
  v9 = (v8 + 1357222160) & 0xAF1A54EF;
  v10 = STACK[0x3A70] ^ a5;
  v11 = STACK[0x3A70] ^ 0x717;
  v12 = STACK[0x3A80];
  LODWORD(STACK[0x37D0]) = v10;
  v13 = v10 ^ v12;
  LODWORD(STACK[0x3AE8]) = a5;
  v14 = STACK[0x3A60];
  v15 = *(STACK[0x3A60] + 8 * (1291 * v11 - 3108 * (((5527629 * (1291 * v11)) >> 32) >> 2)));
  v16 = STACK[0x3A98];
  v17 = STACK[0x3A98];
  LODWORD(STACK[0x3810]) = v13;
  v18 = v13 ^ v16;
  v19 = STACK[0x3A88];
  v20 = STACK[0x3A88];
  LODWORD(STACK[0x37E8]) = v18;
  LODWORD(v19) = v18 ^ v19;
  v21 = STACK[0x39E0];
  LODWORD(STACK[0x37C0]) = v19;
  LODWORD(v19) = v19 ^ v21;
  v22 = STACK[0x3AA0];
  LODWORD(STACK[0x37A0]) = v19;
  v23 = v19 ^ v22;
  LODWORD(STACK[0x3818]) = v9;
  LODWORD(v19) = (v9 - 19426) * (a5 ^ 0x16) + 1982976;
  v24 = STACK[0x3A50];
  v25 = STACK[0x3A50];
  v26 = *(v14 + 8 * (v19 % 0xC24)) - 1436991641;
  LODWORD(STACK[0x3730]) = v23;
  v27 = v24 ^ v5 ^ v23;
  v28 = STACK[0x3A68];
  LODWORD(STACK[0x37F8]) = v27;
  v29 = v27 ^ v28;
  v30 = STACK[0x3A90];
  LODWORD(STACK[0x39D8]) = LODWORD(STACK[0x3A90]);
  LODWORD(STACK[0x3808]) = v29;
  LODWORD(STACK[0x37D8]) = v6;
  STACK[0x3AD8] = v6;
  LODWORD(STACK[0x3750]) = v29 ^ v30;
  v31 = v29 ^ v30 ^ v6;
  v32 = STACK[0x3AA8];
  LODWORD(STACK[0x37F0]) = v31;
  v33 = *(v14 + 8 * (1291 * (v12 ^ 0x57E) - 3108 * (((2763815 * (1291 * (v12 ^ 0x57Eu))) >> 32) >> 1)));
  LODWORD(STACK[0x3760]) = v31 ^ v32;
  v34 = v31 ^ v32 ^ STACK[0x3AC8];
  LODWORD(STACK[0x3790]) = v34;
  v35 = v34 ^ STACK[0x3AD0];
  LODWORD(STACK[0x37B0]) = v35;
  LODWORD(STACK[0x3798]) = ((v15 - 1436991641) >> 1) & 0x54 ^ (v15 - 1436991641) ^ v35 ^ (v26 >> 1) & 0x54 ^ v26;
  LODWORD(v15) = 4647 * ((v12 ^ v33) ^ 0x7B ^ ((v15 - 1436991641) >> 1) & 0x54 ^ ((v15 + 103) ^ v35) ^ (v26 >> 1) & 0x54 ^ v26) + 14331348;
  LODWORD(v15) = *(v7 + v15 - 6784 * (((1266205 * v15) >> 32) >> 1)) + 117;
  v36 = 1291 * (STACK[0x3A78] ^ 0x713);
  v37 = *(v14 + 8 * (1291 * (v17 ^ 0x714) - 3108 * (((5527629 * (1291 * (v17 ^ 0x714u))) >> 32) >> 2))) - 1436991641;
  v38 = *(v14 + 8 * (1291 * (v20 ^ 0x712) - 3108 * (((5527629 * (1291 * (v20 ^ 0x712u))) >> 32) >> 2))) - 1436991641;
  v39 = v21 ^ 0x11;
  LODWORD(v21) = (v15 ^ 0x12 ^ (v15 >> 2) & 0x12) + 26;
  v40 = *(v14 + 8 * (v36 - 3108 * (((5527629 * v36) >> 32) >> 2))) - 1436991641;
  v41 = *(v14 + 8 * (1291 * (v22 ^ 0x57B) - 3108 * (((2763815 * (1291 * (v22 ^ 0x57Bu))) >> 32) >> 1)));
  LODWORD(STACK[0x37C8]) = v21;
  v42 = (v37 >> 1) & 0x54 ^ v37 ^ v21;
  LODWORD(v41) = 4647 * ((((v22 ^ v41 ^ 0xBB) >> 1) | ((v22 ^ v41) << 7)) ^ 0xD9) + 19140993;
  v43 = *(v14 + 8 * (1291 * v39 + 1982976 - 3108 * (((5527629 * (1291 * v39 + 1982976)) >> 32) >> 2))) - 1436991641;
  LODWORD(v41) = *(v7 + v41 - 6784 * (((1266205 * v41) >> 32) >> 1));
  LODWORD(STACK[0x3720]) = v42;
  LODWORD(v22) = v42 ^ (v40 >> 1) & 0x54 ^ v40;
  v44 = *(v14 + 8 * (1291 * (v25 ^ 0x57C) - 3108 * (((2763815 * (1291 * (v25 ^ 0x57Cu))) >> 32) >> 1)));
  LODWORD(STACK[0x3800]) = v22;
  v45 = v22 ^ (v38 >> 1) & 0x54 ^ v38;
  v46 = *(v14 + 8 * (1291 * (v5 ^ 0x47D) - 3108 * (((2763815 * (1291 * (v5 ^ 0x47Du))) >> 32) >> 1)));
  LODWORD(v19) = (v43 >> 1) & 0x54 ^ v43;
  v47 = v19 ^ (97 * (v41 ^ 0x27));
  LODWORD(v41) = 4647 * ((v24 ^ v44 ^ v19 ^ (97 * (v41 ^ 0x27))) ^ 5 ^ v45) + 9544938;
  v48 = STACK[0x3AC0];
  v49 = *(v14 + 8 * (1291 * (LODWORD(STACK[0x39D8]) ^ 0x714) - 3108 * (((5527629 * (1291 * (LODWORD(STACK[0x39D8]) ^ 0x714u))) >> 32) >> 2))) - 1436991641;
  LODWORD(v41) = ((*(v7 + v41 - 6784 * (((1266205 * v41) >> 32) >> 1)) - 87) ^ 0xFFFFFFFB) + 85;
  v50 = *(v14 + 8 * (1291 * (v28 ^ 0x57E) - 3108 * (((2763815 * (1291 * (v28 ^ 0x57Eu))) >> 32) >> 1))) ^ v28 ^ 2;
  LODWORD(STACK[0x39D8]) = v5;
  v51 = v5 ^ v46 ^ 0xFFFFFFBC ^ v41;
  LODWORD(STACK[0x3758]) = v51;
  LODWORD(STACK[0x37A8]) = v50 ^ v51;
  v52 = 4647 * ((v49 >> 1) & 0x54 ^ v49 ^ 0xBD ^ (v50 ^ v51)) + 14331348;
  v53 = *(v7 + v52 - 6784 * (((1266205 * v52) >> 32) >> 1)) + 117;
  v54 = *(v14 + 8 * (1291 * (LODWORD(STACK[0x37D8]) ^ 0x713) - 3108 * (((5527629 * (1291 * (LODWORD(STACK[0x37D8]) ^ 0x713u))) >> 32) >> 2))) - 1436991641;
  v55 = 4647 * ((v54 >> 1) & 0x54 ^ v54 ^ 0x3A) + 13123128;
  v56 = (v53 ^ 0x12 ^ (v53 >> 2) & 0x12) + 26;
  LOBYTE(v55) = *(v7 + v55 - 6784 * (((1266205 * v55) >> 32) >> 1)) - 71;
  LODWORD(STACK[0x37B8]) = v56;
  v57 = 4647 * (((v32 ^ 5) + 111) ^ 0x1C) + 4767822;
  v58 = 4647 * (v56 ^ ((v55 ^ (v55 << 6) ^ (4 * v55) ^ 0xFE) + 26) ^ 0x9A) + 25186740;
  LOBYTE(v57) = *(v7 + v57 - 6784 * (((1266205 * v57) >> 32) >> 1)) ^ 0xE3;
  v59 = 1291 * (((v57 >> 3) | (32 * v57)) ^ 0x17) + 1982976;
  LODWORD(v41) = 1291 * (STACK[0x3AC8] ^ 0x57A);
  v60 = *(v14 + 8 * (v59 - 3108 * (((5527629 * v59) >> 32) >> 2))) - 1436991641;
  v61 = *(v7 + 4647 * (STACK[0x3AD0] ^ 0xF9) + 13123128 - 6784 * (((1266205 * (4647 * (STACK[0x3AD0] ^ 0xF9u) + 13123128)) >> 32) >> 1)) - 71;
  v62 = (v61 ^ (v61 << 6) ^ (4 * v61) ^ 0xFFFFFFFE) + 26;
  LODWORD(v46) = *(v14 + 8 * (v41 - 3108 * (((2763815 * v41) >> 32) >> 1))) ^ STACK[0x3AC8] ^ 6;
  v63 = (*(v7 + v58 - 6784 * (((1266205 * v58) >> 32) >> 1)) ^ 0xFFFFFFC3) + 85;
  LODWORD(STACK[0x36B0]) = v63;
  v64 = (v60 >> 1) & 0x54 ^ v60 ^ v63;
  LODWORD(STACK[0x37D8]) = v64;
  v65 = v46 ^ v64;
  v66 = *(v14 + 8 * (1291 * (v62 ^ 0x57C) - 3108 * (((2763815 * (1291 * (v62 ^ 0x57Cu))) >> 32) >> 1))) ^ v62;
  LODWORD(STACK[0x3728]) = v65;
  LODWORD(v46) = v65 ^ v66;
  v67 = v65 ^ v66 ^ 0xFFFFFFC4 ^ STACK[0x3A78];
  v68 = 4647 * ((v65 ^ v66) ^ 0xC4 ^ STACK[0x3A78] ^ 0xF8) + 10734570;
  v69 = 4647 * (*(v7 + v68 - 6784 * (((1266205 * v68) >> 32) >> 1)) ^ 0x7F) + 13123128;
  v70 = *(v7 + v69 - 6784 * (((1266205 * v69) >> 32) >> 1)) - 71;
  LODWORD(v22) = LODWORD(STACK[0x37E0]) ^ (465 * ((STACK[0x3A48] & 1) == 0));
  STACK[0x37E0] = (v70 ^ (v70 << 6) ^ (4 * v70) ^ 0xFFFFFFFE) + 26;
  LODWORD(STACK[0x3748]) = v19 ^ v45;
  LODWORD(STACK[0x3740]) = v45;
  LODWORD(STACK[0x3718]) = v47 ^ v45;
  v71 = *(v48 + 8 * v22);
  LODWORD(STACK[0x3A78]) = v67;
  LODWORD(STACK[0x3738]) = v46;
  return v71();
}

uint64_t sub_1000B849C(uint64_t a1, char a2, int a3, int a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v24 = *(&STACK[0x320] + v17 % 0xA88);
  if (((((v8 << v19) - ((v9 << v19) & v13) + 275) ^ a4) & v23 ^ v22) == 0x41)
  {
    v24 = a8;
  }

  v25 = (v21 & 0xE0 | a5) ^ v21 & v14;
  v26 = v24 & v15 | a2;
  v27 = v26 ^ v24 & v18;
  v28 = (v24 ^ 0x20) & (2 * ((v24 ^ 0x20) & (2 * ((v24 ^ 0x20) & (2 * ((v24 ^ 0x20) & (2 * (v24 & (2 * (v24 & (2 * v26) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27));
  v29 = v27 ^ v25 ^ (v21 ^ 0x20) & (2 * ((v21 ^ 0x20) & (2 * ((v21 ^ 0x20) & (2 * ((v21 ^ 0x20) & (2 * (v21 & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25));
  *(&STACK[0x320] + v20) = (((v24 ^ v21 ^ (2 * (v29 ^ v28)) ^ v16) + 104) ^ ((v24 ^ v21 ^ (2 * (v29 ^ v28)) ^ v10) - 3) ^ ((v24 ^ v21 ^ (2 * (v29 ^ v28)) ^ 0x11) + 42)) - 83;
  return (*(STACK[0x2F8] + 8 * (((v12 == v19) * a3) ^ v11)))();
}

uint64_t sub_1000B85C8(unint64_t a1)
{
  STACK[0x690] = a1;
  STACK[0x520] = v5;
  STACK[0x530] = v4;
  STACK[0x540] = v2;
  LODWORD(STACK[0x500]) = ((v9 - 1211094194) ^ 0xBA88E9D3) - v8;
  v10 = *(v1 - 0x308E083E0C524CBELL) == 0;
  LODWORD(STACK[0x510]) = v3 ^ 0xE6F0553F;
  return (*(v6 + 8 * (((((v7 - 4583) | 0x29) ^ 0x4454) * v10) ^ v7)))(0);
}

uint64_t sub_1000B86EC@<X0>(int a1@<W2>, uint64_t a2@<X5>, int a3@<W7>, uint64_t a4@<X8>)
{
  v8 = (v4 + 4 * (a2 + v6));
  v9 = *(v8 - 8) ^ *(v8 - 3);
  *v8 = __ROR4__(*(v8 - 14) ^ *(v4 + 4 * ((v5 ^ (v6 - 3625)) + a2)) ^ (v9 + a3 - ((2 * v9) & 0x5F9430FC)) ^ 0xEC790774, 31) ^ 0x28AC266A;
  return (*(a4 + 8 * ((12674 * (a2 + 1 == v7 + 64)) ^ a1)))();
}

uint64_t sub_1000B8778(char a1, char a2, char a3, char a4, char a5, int a6, int a7)
{
  v20 = v13 + 243 * (*(STACK[0x2C8] + (5 * v7 + 243 * v10 + 1979022712) % 0x3C5u) ^ a7);
  v22 = (v18 ^ (2 * (v10 & v15 ^ v17))) & (v10 ^ v14) | v10 & v15 ^ v17;
  v23 = 2 * (v10 ^ v14);
  v24 = (v23 ^ v19) & (v10 ^ v14);
  v25 = v24 ^ v23 & a2;
  v26 = v24 & a4;
  v27 = v22 ^ v26 ^ (a3 ^ (4 * v22)) & (v25 ^ a5);
  v28 = (a1 ^ (4 * v25)) & (v25 ^ v11) ^ v26;
  *(STACK[0x2C8] + (v20 - 965 * ((4450744 * v20) >> 32))) = v10 ^ (2 * (v27 ^ v28 & v16 ^ (v12 ^ (16 * v27)) & (v28 ^ 0x42))) ^ v9;
  return (*(STACK[0x2D0] + 8 * (((v10 == 1883055453) * v8) ^ a6)))();
}

uint64_t sub_1000B8A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v64 = (1633 * v61 + 2129432) % 0x1510u;
  v65 = v64 - 2696;
  if (v64 < ((a5 - 18655) | 0x671u) - 3059)
  {
    v65 = (1633 * v61 + 2129432) % 0x1510u;
  }

  v66 = *(&a61 + v65);
  v67 = *(v63 + 4 * (3677 * (v66 | ((v66 < 0x5F) << 8)) - 349315 - ((((3677 * (v66 | ((v66 < 0x5F) << 8)) - 349315) * a8) >> 32) >> 12) * v62));
  v68 = 1633 * (((HIBYTE(v67) ^ 0xE8751373) + 1946416706) ^ ((HIBYTE(v67) ^ 0xA002DDA8) + 1014249627) ^ ((HIBYTE(v67) ^ 0x4877CE2E) - 738120931)) - 305476186;
  v69 = 1633 * (((BYTE1(v67) ^ 0x6FF34159) + 313289226) ^ ((BYTE1(v67) ^ 0xC4F98F96) - 1180261177) ^ ((BYTE1(v67) ^ 0xAB0ACE02) - 699013805)) + 1143296912;
  v70 = 1633 * (((v67 ^ 0x7E351E56) + 1602372554) ^ ((v67 ^ 0x826602F4) - 1546559636) ^ ((v67 ^ 0xFC531CD0) - 572243632)) - 309566656;
  v71 = BYTE2(v67);
  v72 = ((v71 ^ 0xE88775DD) - 1084196665) ^ ((v71 ^ 0x24CF3D82) + 1932013722);
  v73 = v71 ^ 0xCC4848AB;
  LOBYTE(v71) = *(&a61 + v69 % 0xA88);
  v74 = 1633 * (v72 ^ (v73 - 1683012175)) + 1197123198;
  LOBYTE(v72) = *(&a61 + v68 % 0xA88);
  LOBYTE(v74) = *(&a61 + v74 % 0xA88);
  LOBYTE(v69) = v72 & 0xF ^ 0xF7;
  v75 = v74 & 0x25 | 0xC2;
  LOBYTE(v74) = v74 ^ (2 * ((v74 ^ 0x20) & (2 * ((v74 ^ 0x20) & (2 * ((v74 ^ 0x20) & (2 * ((v74 ^ 0x20) & (2 * ((v74 ^ 0x20) & (2 * (v74 & (2 * (v74 & 0x25 | 2)) ^ (v74 & 0x25 | 2))) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75));
  v76 = v71 & 0x41 ^ 0xD0;
  v77 = v71 ^ 0x20;
  LOBYTE(v71) = v71 ^ (2 * (v77 & (2 * (v77 & (2 * (v77 & (2 * (v77 & (2 * (v77 & (2 * (((2 * v71) & 0xC2 | 0x21) & v71)) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76));
  v78 = *(&a61 + v70 % 0xA88);
  LOBYTE(v70) = v78 & 0xA9 | 4;
  v79 = v78 ^ (2 * ((v78 ^ 0x20) & (2 * ((v78 ^ 0x20) & (2 * ((v78 ^ 0x20) & (2 * ((v78 ^ 0x20) & (2 * ((v78 ^ 0x20) & (2 * (v78 & (2 * v70) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70));
  *(v63 + 4 * (3677 * (v61 + 2312) - ((((3677 * (v61 + 2312)) * a8) >> 32) >> 12) * v62)) = ((((((((v74 << 8) ^ 0xFF406E) & (((v72 ^ (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * (((2 * (((2 * v72) & 0xC2 | 0x21) & v72)) ^ 0x2E) & (v72 ^ 0x20) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69))) << 16) ^ 0x1C446E) | (v74 << 8) & 0xBBBB) ^ 0xA0D648) & (v71 ^ 0xFFFF36) ^ v71 & 0xD9) << 8) ^ 0xAE5B789C) & (v79 ^ 0xFFFFFF17) | v79 & 0x63) ^ 0xE81CD2CF;
  return (*(a60 + 8 * ((14422 * (v61 == 255)) ^ a5)))();
}

uint64_t sub_1000B94A4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(STACK[0x514]) = (v15 ^ 0xF657F4F2 ^ (a2 + a1)) - a4 + 855260815;
  LODWORD(STACK[0x640]) = v17 - 1088076326;
  LODWORD(STACK[0x528]) = (v14 ^ 0x478F2AA2 ^ (v17 + v16 - ((2 * (v17 + v16)) & 0x63B1BCA0) - 1311187376)) - a5 + 1179700471;
  LODWORD(STACK[0x6C8]) = a2 - 1088076326;
  LODWORD(STACK[0x638]) = a5 + 816338611;
  LODWORD(STACK[0x534]) = a5 + 394187933 + v17 + v16;
  LODWORD(STACK[0x524]) = a4 + 394187933;
  LODWORD(STACK[0x510]) = a2 + a1 + 118230407 + a4 + 394187933;
  v18 = STACK[0x6C0];
  v19 = LODWORD(STACK[0x6C0]) + 7062;
  STACK[0x538] = a14 - 0x1B4BD588E23F182BLL;
  v20 = *(STACK[0x6D8] + 8 * v18);
  STACK[0x5B0] = (a3 - 1769399658);
  STACK[0x5A8] = (a3 - 1769399660);
  STACK[0x5A0] = (a3 - 1769399654);
  STACK[0x598] = (a3 - 1769399655);
  STACK[0x590] = (a3 - 1769399656);
  STACK[0x588] = (a3 - 1769399657);
  STACK[0x580] = (a3 - 1769399659);
  STACK[0x578] = (a3 - 1769399661);
  STACK[0x570] = (a3 - 1769399662);
  STACK[0x568] = (a3 - 1769399663);
  STACK[0x560] = (a3 - 1769399664);
  STACK[0x558] = (a3 - 1769399665);
  STACK[0x550] = (a3 - 1769399666);
  STACK[0x5B8] = (a3 - 1769399668);
  STACK[0x548] = (a3 - 1769399667);
  STACK[0x540] = a3 + 1197088476 + (v19 ^ 0x4F2EB89Au);
  LODWORD(STACK[0x6C0]) = 416466932;
  LODWORD(STACK[0x6B8]) = -1197087740;
  LODWORD(STACK[0x628]) = 19964;
  LODWORD(STACK[0x620]) = 341;
  LODWORD(STACK[0x6B0]) = 279;
  LODWORD(STACK[0x6A8]) = 248;
  LODWORD(STACK[0x668]) = 19778;
  LODWORD(STACK[0x678]) = 155;
  LODWORD(STACK[0x6A0]) = 19747;
  LODWORD(STACK[0x698]) = 124;
  LODWORD(STACK[0x688]) = 19716;
  LODWORD(STACK[0x690]) = 93;
  LODWORD(STACK[0x680]) = 19685;
  LODWORD(STACK[0x670]) = 19654;
  LODWORD(STACK[0x5C0]) = v19;
  STACK[0x5C8] = v19 ^ 0x2F5Du;
  return v20(19809, 19623, 1141756623, 20057, STACK[0x6E0], 19592, 20026, 19995);
}

uint64_t sub_1000B9708(unsigned int a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a1 ^ LODWORD(STACK[0x3890]);
  LODWORD(STACK[0x3A90]) = a8 ^ 0x2EE1;
  return (*(v8 + 8 * a8))(v9, a2 ^ LODWORD(STACK[0x3888]), a3, a4 ^ LODWORD(STACK[0x3858]));
}

uint64_t sub_1000B9920@<X0>(int a1@<W7>, unsigned int a2@<W8>)
{
  v6 = v5 + v3 < v2;
  if (v2 < a2 != v5 + v3 < a2)
  {
    v6 = v2 < a2;
  }

  return (*(STACK[0x2D0] + 8 * ((v6 * v4) ^ (a1 + 1360))))();
}

uint64_t sub_1000B9B30(uint64_t a1)
{
  v4 = v2 ^ 0x1749;
  v5 = *(a1 + 16) ^ v1;
  v6 = (v2 ^ 0x49) + 38;
  v8 = v5 == -1100992044 || (v5 & 0xF) != 4;
  return (*(v3 + 8 * ((((v6 ^ v8) & 1) * (((v4 - 19321) | 0x6000) - 28960)) ^ v4)))();
}

uint64_t sub_1000B9D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x2A4]) = v9;
  LODWORD(STACK[0x2A8]) = a8;
  LODWORD(STACK[0x2B0]) = v10;
  STACK[0x2C8] = &STACK[0x580];
  return (*(STACK[0x2D0] + 8 * (v8 + 1334172981)))();
}

uint64_t sub_1000B9DA0@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v4 ^ 0x176C)))(a1);
  *(*(v1 + v3) + 16) = 0;
  *(*(v1 + v3) + 16) = 0;
  *(*(v1 + v3) + 24) = 0;
  return (*(v2 + 8 * v4))(*(v1 + v3));
}

uint64_t sub_1000B9F5C(uint64_t a1, uint64_t a2)
{
  v3 = LODWORD(STACK[0x6D0]) + 1044309549;
  LODWORD(STACK[0x3CC]) = (v2 + 17069) ^ 0x3D5D78F4;
  v4 = *(STACK[0x6D8] + 8 * v2);
  LODWORD(STACK[0x3B8]) = -2008048274;
  LODWORD(STACK[0x388]) = -1835384605;
  LODWORD(STACK[0x380]) = 2074343205;
  LODWORD(STACK[0x3B0]) = 1662834988;
  LODWORD(STACK[0x338]) = 551957741;
  LODWORD(STACK[0x330]) = 432255760;
  LODWORD(STACK[0x354]) = 1368397327;
  LODWORD(STACK[0x350]) = -1974508335;
  LODWORD(STACK[0x37C]) = 439868494;
  LODWORD(STACK[0x368]) = 304400277;
  LODWORD(STACK[0x35C]) = 485276272;
  LODWORD(STACK[0x334]) = 126802574;
  LODWORD(STACK[0x3BC]) = -2058739224;
  LODWORD(STACK[0x3A0]) = 2023004706;
  LODWORD(STACK[0x358]) = -1909227693;
  LODWORD(STACK[0x3B4]) = -1193806153;
  LODWORD(STACK[0x32C]) = 1620868996;
  LODWORD(STACK[0x34C]) = 908006606;
  LODWORD(STACK[0x3AC]) = -2070416516;
  LODWORD(STACK[0x33C]) = -2068881557;
  LODWORD(STACK[0x348]) = -999021819;
  LODWORD(STACK[0x344]) = -1818664913;
  LODWORD(STACK[0x340]) = 1693217331;
  LODWORD(STACK[0x370]) = -1790548369;
  LODWORD(STACK[0x39C]) = 193074551;
  LODWORD(STACK[0x328]) = -728208561;
  LODWORD(STACK[0x384]) = 1561698473;
  LODWORD(STACK[0x360]) = -38780583;
  LODWORD(STACK[0x3A8]) = -386528522;
  LODWORD(STACK[0x38C]) = -684808902;
  LODWORD(STACK[0x3A4]) = -1667491631;
  LODWORD(STACK[0x324]) = 13389571;
  LODWORD(STACK[0x4A8]) = v3;
  return v4(a1, a2, 2979689024);
}

uint64_t sub_1000BA150()
{
  v3 = STACK[0xFA0];
  *(v1 - 0x55A8D952E5D46836) = 16;
  *(v1 - 0x55A8D952E5D46837) = *(v3 - 0x79CEC8CF5A6FCEA3);
  *(v1 - 0x55A8D952E5D46838) = *(v3 - 0x79CEC8CF5A6FCEA4);
  *(v1 - 0x55A8D952E5D46839) = *(v3 - 0x79CEC8CF5A6FCEA5);
  *(v1 - 0x55A8D952E5D4683ALL) = *(v3 - 0x79CEC8CF5A6FCEA6);
  *(v1 - 0x55A8D952E5D4683BLL) = *(v3 - 0x79CEC8CF5A6FCEA7);
  *(v1 - 0x55A8D952E5D4683CLL) = *(v3 - 0x79CEC8CF5A6FCEA8);
  *(v1 - 0x55A8D952E5D4683DLL) = *(v3 - 0x79CEC8CF5A6FCEA9);
  *(v1 - 0x55A8D952E5D4683ELL) = *(v3 - 0x79CEC8CF5A6FCEAALL);
  *(v1 - 0x55A8D952E5D4683FLL) = *(v3 - 0x79CEC8CF5A6FCEABLL);
  *(v1 - 0x55A8D952E5D46840) = *(v3 - 0x79CEC8CF5A6FCEACLL);
  *(v1 - 0x55A8D952E5D46841) = *(v3 - 0x79CEC8CF5A6FCEADLL);
  *(v1 - 0x55A8D952E5D46842) = *(v3 - 0x79CEC8CF5A6FCEAELL);
  *(v1 - 0x55A8D952E5D46843) = *(v3 - 0x79CEC8CF5A6FCEAFLL);
  *(v1 - 0x55A8D952E5D46844) = *(v3 - 0x79CEC8CF5A6FCEB0);
  *(v1 - 0x55A8D952E5D46845) = *(v3 - 0x79CEC8CF5A6FCEB1);
  *(v1 - 0x55A8D952E5D46846) = *(v3 - 0x79CEC8CF5A6FCEB2);
  v4 = *(v3 - 0x79CEC8CF5A6FCEB6) == ((v0 + 1448857973) & 0xE9 ^ 0xC1);
  return (*(v2 + 8 * (v4 | (4 * v4) | v0)))();
}

uint64_t sub_1000BA804(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6, int a7, __int16 a8)
{
  v20 = *(v15 + (v13 >> 4) * v14 + 139097 - ((((((v13 >> 4) * v14 + 139097) >> 1) * a2) >> 32) >> 8) * a6);
  v21 = a5 + (*(v15 + ((v13 & 0xF ^ v10) + 2 * (v13 & 1)) * v14 % v11) ^ (((16 * v20) ^ 0xC0) - 32 * (v20 & 3) - 68) & 0xFC ^ a3) * a4;
  v22 = *(*(&off_101353600 + v16) + (v21 - (((v21 * a7) >> 16) >> 7) * a8) - 4);
  HIDWORD(v23) = v22 ^ v18;
  LODWORD(v23) = v22 << 24;
  v24 = v8 + ((v13 & 0xD) + (v13 & 0xD ^ v17) + ((v23 >> 31) ^ (2 * (v23 >> 31) * (v23 >> 31)) ^ v19)) * v14;
  *(v15 + v9 + v13 * v14 - (((((v9 + v13 * v14) >> 1) * a2) >> 32) >> 8) * a6) = *(v15 + (v24 - ((4427802 * v24) >> 32) * a6));
  return (*(STACK[0x2D0] + 8 * (((v13 == 255) * v12) ^ LODWORD(STACK[0x2D8]))))();
}

uint64_t sub_1000BAA00()
{
  *STACK[0x10F0] = 0;
  *STACK[0xBB0] = -769884012;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1000BABA0()
{
  STACK[0xAB0] += 48;
  v2 = **(&off_101353600 + (v0 ^ 0x6DAE));
  LOBYTE(STACK[0x1D71]) = *v2 ^ (((v0 + 18) | 4) + 110);
  LOBYTE(STACK[0x1D72]) = v2[1] ^ 0x9C;
  LOBYTE(STACK[0x1D73]) = v2[2] ^ 0x9C;
  LOBYTE(STACK[0x1D74]) = v2[3] ^ 0x9C;
  LOBYTE(STACK[0x1D75]) = v2[4] ^ 0x9C;
  LOBYTE(STACK[0x1D76]) = v2[5] ^ 0x9C;
  LOBYTE(STACK[0x1D77]) = v2[6] ^ (73 * (v0 ^ 0x1A) + 10);
  LOBYTE(STACK[0x1D78]) = v2[7] ^ 0x9C;
  LOBYTE(STACK[0x1D79]) = v2[8] ^ 0x9C;
  LOBYTE(STACK[0x1D7A]) = v2[9] ^ 0x9C;
  LOBYTE(STACK[0x1D7B]) = v2[10] ^ 0x9C;
  LOBYTE(STACK[0x1D7C]) = v2[11] ^ 0x9C;
  LOBYTE(STACK[0x1D7D]) = v2[12] ^ 0x9C;
  LOBYTE(STACK[0x1D7E]) = v2[13] ^ 0x9C;
  LOBYTE(STACK[0x1D7F]) = v2[14] ^ 0x9C;
  v3 = (*(v1 + 8 * (v0 ^ 0x1349)))();
  v4 = (*(v1 + 8 * (v0 ^ 0x139C)))(0, &STACK[0x1D71], v3) == 0;
  return (*(v1 + 8 * (((8 * v4) | (32 * v4)) ^ v0)))();
}

uint64_t sub_1000BAD10@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W7>, unsigned int a4@<W8>)
{
  *(v7 + (v4 + v6)) = 0;
  v11 = a2 + v8 > a3 && a2 + v8 < a4;
  return (*(v9 + 8 * ((v11 * a1) ^ v5)))();
}

uint64_t sub_1000BAD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x6D8] + 8 * (v6 - 21416));
  LODWORD(STACK[0x6C0]) = (v6 - 687895805) & 0xEB3E7EFD;
  return v7(1407408642, 3514684474, 1982056239, 3587972539, 453270047, a6, 249529918);
}

uint64_t sub_1000BAE24()
{
  if (v2 < v4 != v1 + 2053045047 < v4)
  {
    v5 = v2 < v4;
  }

  else
  {
    v5 = v1 + 2053045047 < v2;
  }

  return (*(*(v3 - 120) + 8 * ((490 * !v5) ^ v0)))();
}

uint64_t sub_1000BBA00()
{
  v0 = STACK[0x5C8];
  v1 = STACK[0x5C8] - 21852;
  LODWORD(STACK[0x310]) += 64;
  v2 = *(STACK[0x6D8] + 8 * v1);
  STACK[0x6C0] = v0;
  return v2();
}

uint64_t sub_1000BBA30@<X0>(unsigned int a1@<W0>, int a2@<W3>, unsigned int a3@<W4>, char a4@<W5>, int a5@<W8>)
{
  STACK[0x6E0] = v6;
  v7 = (a5 - 313458192) & 0x12AEFDD4;
  LOBYTE(STACK[0x1067]) = 0;
  LOBYTE(STACK[0xE50]) = 1;
  LOBYTE(STACK[0x1007]) = 2;
  LOBYTE(STACK[0xDF0]) = 3;
  LOBYTE(STACK[0xFA7]) = 4;
  LOBYTE(STACK[0xD90]) = 5;
  LOBYTE(STACK[0xF47]) = 6;
  LOBYTE(STACK[0x10FE]) = 7;
  LOBYTE(STACK[0xEE7]) = 8;
  LOBYTE(STACK[0x109E]) = 9;
  LOBYTE(STACK[0xE87]) = 10;
  LOBYTE(STACK[0x103E]) = 11;
  LOBYTE(STACK[0xE27]) = 12;
  LOBYTE(STACK[0xFDE]) = 13;
  LOBYTE(STACK[0xDC7]) = 14;
  LOBYTE(STACK[0xF7E]) = 15;
  v8 = 439 * (a2 & 0xF) + 282277 - 974 * ((4409618 * (439 * (a2 & 0xFu) + 282277)) >> 32);
  v9 = STACK[0x6C8];
  LOBYTE(STACK[0x1067]) = *(STACK[0x6C8] + v8);
  *(v9 + v8) = 0;
  v10 = (439 * (a1 % 0xF) + 282716) % (v7 ^ 0x5E5Au);
  v11 = STACK[0xE50];
  v12 = *(v9 + v10);
  LOBYTE(STACK[0xE50]) = v12;
  *(v9 + v10) = v11;
  v13 = 439 * (a3 % ((((v12 | 0x7B) - (v12 & 0x84) - 123) ^ 0xE) & 0xFEu)) + 282277;
  v14 = 439 * (a3 % ((((v12 | 0x7B) - (v12 & 0x84) - 123) ^ 0xE) & 0xFEu)) + 282181;
  v15 = STACK[0x1007];
  v16 = a3 ^ a1;
  v17 = (a2 | (1 - a4)) & 3;
  LOBYTE(STACK[0x1007]) = *(v9 + v14 % 0x3CE);
  *(v9 + (v13 + 878 - 974 * ((4409618 * (v13 + 878)) >> 32))) = v15;
  v18 = a1 - 49837179 + a2 - v16;
  v19 = 439 * (v17 + v5 % 0xD) + 282277 - 974 * ((4409618 * (439 * (v17 + v5 % 0xD) + 282277)) >> 32);
  v20 = a1 + v5 - 1701054332;
  v21 = STACK[0xDF0];
  LOBYTE(STACK[0xDF0]) = *(v9 + v19);
  v22 = (a1 - 49837179) ^ v16;
  *(v9 + v19) = v21;
  v23 = a1 - 1620096886;
  v24 = 439 * (v18 % 0xC) + 284033 - 974 * ((4409618 * (439 * (v18 % 0xC) + 284033)) >> 32);
  LOBYTE(v19) = STACK[0xFA7];
  LOBYTE(STACK[0xFA7]) = *(v9 + v24);
  *(v9 + v24) = v19;
  LOBYTE(v24) = STACK[0xD90];
  v25 = 439 * (v23 % 0xB) + 284472 - 974 * ((4409618 * (439 * (v23 % 0xB) + 284472)) >> 32);
  LOBYTE(STACK[0xD90]) = *(v9 + v25);
  *(v9 + v25) = v24;
  LOBYTE(v25) = STACK[0xF47];
  v26 = 439 * (v22 % 0xA) + 284911 - 974 * ((4409618 * (439 * (v22 % 0xA) + 284911)) >> 32);
  LOBYTE(STACK[0xF47]) = *(v9 + v26);
  *(v9 + v26) = v25;
  v27 = 439 * (v20 % 9) + 285350 - 974 * ((4409618 * (439 * (v20 % 9) + 285350)) >> 32);
  v22 += 554238278;
  v28 = STACK[0x10FE];
  LOBYTE(STACK[0x10FE]) = *(v9 + v27);
  LOBYTE(v25) = (v18 ^ 0x49) + v22;
  v29 = v20 + v23;
  *(v9 + v27) = v28;
  v30 = 439 * (v25 & 7) + 285789 - 974 * ((4409618 * (439 * (v25 & 7) + 285789)) >> 32);
  LOBYTE(v27) = STACK[0xEE7];
  v31 = v23 ^ 0x2E5111D9 ^ v29;
  LOBYTE(STACK[0xEE7]) = *(v9 + v30);
  *(v9 + v30) = v27;
  v22 ^= 0xE0C06C7F;
  v32 = 439 * (v31 % 7) + 286228 - 974 * ((4409618 * (439 * (v31 % 7) + 286228)) >> 32);
  v33 = (v29 - 1409850492) % 5u;
  LOBYTE(v16) = STACK[0x109E];
  LOBYTE(STACK[0x109E]) = *(v9 + v32);
  *(v9 + v32) = v16;
  v34 = 439 * (v22 % 6) + 286667 - 974 * ((4409618 * (439 * (v22 % 6) + 286667)) >> 32);
  v35 = STACK[0xE87];
  LOBYTE(STACK[0xE87]) = *(v9 + v34);
  *(v9 + v34) = v35;
  v36 = 439 * v33 + 287106 - 974 * ((4409618 * (439 * v33 + 287106)) >> 32);
  LOBYTE(v22) = v22 - v31;
  LOBYTE(v29) = (v29 + 11 - v22 + 22) ^ (v25 + v29 + 11);
  v37 = 2 * ((v33 + 11) & 3) + ((v33 + 11) ^ 0x283);
  LOBYTE(v33) = STACK[0x103E];
  LOBYTE(STACK[0x103E]) = *(v9 + v36);
  *(v9 + (439 * v37 - 974 * ((4409618 * (439 * v37)) >> 32))) = v33;
  v38 = 439 * (v29 & 3) + 287545 - 974 * ((4409618 * (439 * (v29 & 3u) + 287545)) >> 32);
  LOBYTE(v37) = STACK[0xE27];
  LOBYTE(STACK[0xE27]) = *(v9 + v38);
  *(v9 + v38) = v37;
  v39 = v31 + 1679410404;
  LOBYTE(v31) = v29 + v22;
  v40 = 439 * (v39 % 3) + 287984 - 974 * ((4409618 * (439 * (v39 % 3) + 287984)) >> 32);
  LOBYTE(v29) = STACK[0xFDE];
  LOBYTE(STACK[0xFDE]) = *(v9 + v40);
  *(v9 + v40) = v29;
  if (v31)
  {
    v41 = 558;
  }

  else
  {
    v41 = 119;
  }

  v42 = *(v9 + 119);
  LOBYTE(STACK[0xDC7]) = *(v9 + v41);
  *(v9 + v41) = v42;
  return (*(STACK[0x6D8] + 8 * a5))((v7 - 13626), 0);
}

uint64_t sub_1000BBF74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x3AD8] = v14;
  STACK[0x3AA8] = v18;
  STACK[0x3AB8] = v15;
  STACK[0x3910] = v23;
  STACK[0x3AB0] = v16;
  STACK[0x3918] = v22;
  STACK[0x3920] = v20;
  STACK[0x3928] = v19;
  STACK[0x2760] = v13;
  STACK[0x2768] = a8;
  STACK[0x2770] = a7;
  STACK[0x2778] = a6;
  STACK[0x2780] = a5;
  STACK[0x2810] = a4;
  STACK[0x2818] = a3;
  STACK[0x27E0] = a2;
  STACK[0x27E8] = a1;
  STACK[0x27F0] = v12;
  STACK[0x27F8] = v11;
  LODWORD(STACK[0x20D4]) = v9;
  v24 = STACK[0x2508];
  v25 = STACK[0x2508] + STACK[0x2850];
  v26 = __CFADD__(STACK[0x2508], STACK[0x2850]);
  if (v25 > 0xFFFFFFFFFFFFFFD8)
  {
    v26 = 1;
  }

  if (v26)
  {
    v27 = 39;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  STACK[0x3A20] = v28 + v24;
  v29 = __CFADD__(v28, v24) || v28 + v24 > 0xFFFFFFFFFFFFFFD8;
  LODWORD(STACK[0x3A18]) = v29;
  v30 = STACK[0x2518];
  v31 = STACK[0x2518] + STACK[0x2828];
  v32 = __CFADD__(STACK[0x2518], STACK[0x2828]);
  if (v31 > 0xFFFFFFFFFFFFFFD2)
  {
    v32 = 1;
  }

  if (v32)
  {
    v33 = 45;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33 + v31;
  STACK[0x3A10] = v34 + v30;
  v35 = __CFADD__(v34, v30) || v34 + v30 > 0xFFFFFFFFFFFFFFD2;
  LODWORD(STACK[0x3A00]) = v35;
  v36 = STACK[0x2510];
  v37 = STACK[0x2510] + STACK[0x2820] > 0xFFFFFFFFFFFFFFD0;
  if (__CFADD__(STACK[0x2510], STACK[0x2820]))
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = 47;
  }

  else
  {
    v38 = 0;
  }

  v39 = v38 + STACK[0x2510] + STACK[0x2820];
  STACK[0x3A08] = v39 + v36;
  v40 = __CFADD__(v39, v36) || v39 + v36 > 0xFFFFFFFFFFFFFFD0;
  LODWORD(STACK[0x39F8]) = v40;
  v41 = STACK[0x2520];
  v42 = STACK[0x2860] + STACK[0x2520] > 0xFFFFFFFFFFFFFFF6;
  if (__CFADD__(STACK[0x2860], STACK[0x2520]))
  {
    v42 = 1;
  }

  if (v42)
  {
    v43 = v21;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43 + STACK[0x2860] + STACK[0x2520];
  STACK[0x39F0] = v44 + v41;
  v45 = __CFADD__(v44, v41) || v44 + v41 > 0xFFFFFFFFFFFFFFF6;
  LODWORD(STACK[0x39E8]) = v45;
  v46 = STACK[0x2528];
  v47 = STACK[0x2858] + STACK[0x2528];
  v48 = __CFADD__(STACK[0x2858], STACK[0x2528]);
  if (v47 > 0xFFFFFFFFFFFFFFEELL)
  {
    v48 = 1;
  }

  v49 = !v48;
  v50 = 17;
  if (v49)
  {
    v50 = 0;
  }

  v51 = v50 + v47;
  STACK[0x39D8] = v51 + v46;
  v52 = __CFADD__(v51, v46) || v51 + v46 > 0xFFFFFFFFFFFFFFEELL;
  LODWORD(STACK[0x39D0]) = v52;
  v53 = STACK[0x34D8];
  v54 = STACK[0x36A0] + STACK[0x34D8];
  v55 = __CFADD__(STACK[0x36A0], STACK[0x34D8]);
  if (v54 > 0xFFFFFFFFFFFFFFFALL)
  {
    v55 = 1;
  }

  v49 = !v55;
  v56 = 5;
  if (v49)
  {
    v56 = 0;
  }

  v57 = v56 + v54;
  STACK[0x39C0] = v57 + v53;
  v58 = __CFADD__(v57, v53) || v57 + v53 > 0xFFFFFFFFFFFFFFFALL;
  LODWORD(STACK[0x39B0]) = v58;
  v59 = STACK[0x2540];
  v60 = __CFADD__(STACK[0x2540], STACK[0x2848]) || STACK[0x2540] + STACK[0x2848] == -1;
  v61 = v60 + STACK[0x2540] + STACK[0x2848];
  STACK[0x3958] = v61 + v59;
  v62 = __CFADD__(v61, v59) || v61 + v59 == -1;
  STACK[0x3938] = v62;
  v63 = STACK[0x2538];
  v64 = STACK[0x2838] + STACK[0x2538];
  v65 = __CFADD__(STACK[0x2838], STACK[0x2538]);
  if (v64 > 0xFFFFFFFFFFFFFFFCLL)
  {
    v65 = 1;
  }

  if (v65)
  {
    v66 = v8;
  }

  else
  {
    v66 = 0;
  }

  v67 = v66 + v64;
  STACK[0x39B8] = v67 + v63;
  v68 = __CFADD__(v67, v63) || v67 + v63 > 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(STACK[0x3900]) = v68;
  v69 = STACK[0x2750];
  v70 = STACK[0x2830];
  v71 = STACK[0x2750] + STACK[0x2830] > 0xFFFFFFFFFFFFFFDELL;
  STACK[0x3A98] = STACK[0x2750] + STACK[0x2830];
  if (__CFADD__(v69, v70))
  {
    v71 = 1;
  }

  LODWORD(STACK[0x38F8]) = v71;
  v72 = STACK[0x36E8];
  v73 = STACK[0x2840];
  v74 = STACK[0x36E8];
  STACK[0x36E8] = STACK[0x36E8];
  v75 = v73;
  STACK[0x2840] = v73;
  v120 = (v72 + v73 != -16) & __CFADD__(v72 + v73, 16);
  LODWORD(v73) = LODWORD(STACK[0x3A28]) ^ 0x5C46;
  v76 = v10;
  v77 = *(v10 + STACK[0x1DF8]);
  LODWORD(STACK[0x3890]) = v73;
  v78 = (((v73 - 102) ^ v77) >> 3) | (32 * ((v73 - 102) ^ v77));
  v79 = ((*(v10 + STACK[0x1DF0]) ^ 0xE) >> 3) | (32 * (*(v10 + STACK[0x1DF0]) ^ 0xE));
  if (v120)
  {
    v80 = 1;
  }

  else
  {
    v80 = 0;
  }

  STACK[0x38F0] = v74 + v75;
  if (__CFADD__(v74, v75))
  {
    v80 = 1;
  }

  LODWORD(STACK[0x38E8]) = v80;
  v81 = v79 << 8;
  STACK[0x3858] = v81;
  v82 = v78;
  v83 = (STACK[0x1F40] | ((v81 | ((v78 + STACK[0x1D58]) << 16) | STACK[0x1F48]) << 16)) + STACK[0x1F50];
  v84 = v83 ^ 0xF700000A2EDBLL;
  if ((v83 ^ 0xF700000A2EDBLL) >= 0xFFFFFFFFFFFFFFCBLL)
  {
    v85 = 53;
  }

  else
  {
    v85 = 0;
  }

  v86 = v85 + v84;
  v87 = STACK[0x1D88];
  v146 = __CFADD__(v86, STACK[0x1D88]);
  v88 = v86 + STACK[0x1D88];
  v89 = v146;
  if (v88 > 0xFFFFFFFFFFFFFFCALL)
  {
    v89 = 1;
  }

  if (v89)
  {
    v90 = 53;
  }

  else
  {
    v90 = 0;
  }

  v91 = v90 + v88;
  v92 = 53 * v91;
  v93 = 53 * ((v91 * 0x35uLL) >> 64);
  v146 = __CFADD__(v93, v92);
  v94 = v93 + v92;
  if (v146)
  {
    v95 = 53;
  }

  else
  {
    v95 = 0;
  }

  STACK[0x3980] = v95 + v94;
  v96 = __CFADD__(v95, v94) || (v95 + v94) > 0xFFFFFFFFFFFFFFCALL;
  LODWORD(STACK[0x3978]) = v96;
  if (v84 >= 0xFFFFFFFFFFFFFFD1)
  {
    v97 = 47;
  }

  else
  {
    v97 = 0;
  }

  v98 = v97 + v84;
  v99 = STACK[0x1D90];
  v100 = v98 + STACK[0x1D90] > 0xFFFFFFFFFFFFFFD0;
  v146 = __CFADD__(v98, STACK[0x1D90]);
  v101 = v98 + STACK[0x1D90];
  if (v146)
  {
    v100 = 1;
  }

  if (v100)
  {
    v102 = 47;
  }

  else
  {
    v102 = 0;
  }

  v103 = v102 + v101;
  v104 = (((*(v10 + STACK[0x1E00]) - 87) ^ 0xFB) + 85) << 8;
  v105 = STACK[0x1D30];
  v106 = STACK[0x1D38];
  v107 = (STACK[0x1D30] | ((v104 | ((STACK[0x1DD8] + (((*(v10 + STACK[0x1D80]) - 71) ^ ((*(v10 + STACK[0x1D80]) - 71) << 6) ^ (4 * (*(v10 + STACK[0x1D80]) - 71)) ^ 0xFE) + 26)) << 16) | STACK[0x1D50]) << 16)) + STACK[0x1D38];
  v108 = 47 * v103;
  v109 = v107 ^ 0x74B98A;
  v110 = 47 * ((v103 * 0x2FuLL) >> 64);
  if ((v107 ^ 0x74B98A) >= 0xFFFFFFFFFFFFFFD1)
  {
    v111 = 47;
  }

  else
  {
    v111 = 0;
  }

  v146 = __CFADD__(v110, v108);
  v112 = v110 + v108;
  if (v146)
  {
    v113 = 47;
  }

  else
  {
    v113 = 0;
  }

  v146 = __CFADD__(v113, v112);
  v114 = v113 + v112;
  v115 = v146;
  if (v114 > 0xFFFFFFFFFFFFFFD0)
  {
    v115 = 1;
  }

  v49 = v115 == 0;
  v116 = v111 + v109;
  v117 = v114 + v111 + v109;
  if (v49)
  {
    v118 = 0;
  }

  else
  {
    v118 = 47;
  }

  v119 = v117 + v118;
  v120 = v119 < v116 || v119 > 0xFFFFFFFFFFFFFFD0;
  if (v120)
  {
    v121 = 47;
  }

  else
  {
    v121 = 0;
  }

  v122 = v121 + v119;
  v123 = 47 * v122;
  v124 = 47 * ((v122 * 0x2FuLL) >> 64);
  v146 = __CFADD__(v124, v123);
  v125 = v124 + v123;
  if (v146)
  {
    v126 = 47;
  }

  else
  {
    v126 = 0;
  }

  STACK[0x38E0] = v126 + v125;
  v127 = __CFADD__(v126, v125) || (v126 + v125) > 0xFFFFFFFFFFFFFFD0;
  LODWORD(STACK[0x38D8]) = v127;
  if (v84 >= 0xFFFFFFFFFFFFFFD3)
  {
    v128 = 45;
  }

  else
  {
    v128 = 0;
  }

  v129 = v128 + v84;
  v130 = STACK[0x1D98];
  v146 = __CFADD__(v129, STACK[0x1D98]);
  v131 = v129 + STACK[0x1D98];
  v132 = v146;
  if (v131 > 0xFFFFFFFFFFFFFFD2)
  {
    v132 = 1;
  }

  if (v132)
  {
    v133 = 45;
  }

  else
  {
    v133 = 0;
  }

  v134 = v133 + v131;
  v135 = 45 * v134;
  v136 = 45 * ((v134 * 0x2DuLL) >> 64);
  v146 = __CFADD__(v136, v135);
  v137 = v136 + v135;
  if (v146)
  {
    v138 = 45;
  }

  else
  {
    v138 = 0;
  }

  v139 = (v138 + v137) > 0xFFFFFFFFFFFFFFD2;
  v146 = __CFADD__(v138, v137);
  v140 = v138 + v137;
  if (v146 || v139)
  {
    v142 = 45;
  }

  else
  {
    v142 = 0;
  }

  if (v109 >= 0xFFFFFFFFFFFFFFD3)
  {
    v143 = 45;
  }

  else
  {
    v143 = 0;
  }

  v144 = v143 + v109;
  v145 = v140 + v144 + v142;
  v146 = v145 <= 0xFFFFFFFFFFFFFFD2 && v145 >= v144;
  if (v146)
  {
    v147 = 0;
  }

  else
  {
    v147 = 45;
  }

  v148 = v147 + v145;
  v149 = 45 * v148;
  v150 = 45 * ((v148 * 0x2DuLL) >> 64);
  v146 = __CFADD__(v150, v149);
  v151 = v150 + v149;
  if (v146)
  {
    v152 = 45;
  }

  else
  {
    v152 = 0;
  }

  STACK[0x38D0] = v152 + v151;
  v153 = __CFADD__(v152, v151) || (v152 + v151) > 0xFFFFFFFFFFFFFFD2;
  LODWORD(STACK[0x38C8]) = v153;
  if (v84 >= 0xFFFFFFFFFFFFFFD9)
  {
    v154 = 39;
  }

  else
  {
    v154 = 0;
  }

  v155 = v154 + v84;
  v156 = STACK[0x1DA0];
  v146 = __CFADD__(v155, STACK[0x1DA0]);
  v157 = v155 + STACK[0x1DA0];
  v158 = v146;
  if (v157 > 0xFFFFFFFFFFFFFFD8)
  {
    v158 = 1;
  }

  if (v158)
  {
    v159 = 39;
  }

  else
  {
    v159 = 0;
  }

  v160 = v159 + v157;
  v161 = 39 * v160;
  v162 = 39 * ((v160 * 0x27uLL) >> 64);
  v146 = __CFADD__(v162, v161);
  v163 = v162 + v161;
  if (v146)
  {
    v164 = 39;
  }

  else
  {
    v164 = 0;
  }

  STACK[0x38C0] = v164 + v163;
  v165 = __CFADD__(v164, v163) || (v164 + v163) > 0xFFFFFFFFFFFFFFD8;
  LODWORD(STACK[0x38B8]) = v165;
  if (v84 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v166 = 33;
  }

  else
  {
    v166 = 0;
  }

  v167 = v166 + v84;
  v168 = STACK[0x1DA8];
  v169 = v167 + STACK[0x1DA8] > 0xFFFFFFFFFFFFFFDELL;
  v146 = __CFADD__(v167, STACK[0x1DA8]);
  v170 = v167 + STACK[0x1DA8];
  if (v146)
  {
    v169 = 1;
  }

  if (v169)
  {
    v171 = 33;
  }

  else
  {
    v171 = 0;
  }

  v172 = v171 + v170;
  v173 = 33 * v172;
  v174 = (__PAIR128__(32, 33) * v172) >> 64;
  v146 = __CFADD__(v174, v173);
  v175 = v174 + v173;
  if (v146)
  {
    v176 = 33;
  }

  else
  {
    v176 = 0;
  }

  v177 = (v176 + v175) > 0xFFFFFFFFFFFFFFDELL;
  v146 = __CFADD__(v176, v175);
  v178 = v176 + v175;
  v179 = v146 || v177;
  if (v109 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v180 = 33;
  }

  else
  {
    v180 = 0;
  }

  v49 = v179 == 0;
  v181 = v180 + v109;
  v182 = v178 + v180 + v109;
  if (v49)
  {
    v183 = 0;
  }

  else
  {
    v183 = 33;
  }

  v184 = v182 + v183;
  if (v184 > 0xFFFFFFFFFFFFFFDELL || v181 > v184)
  {
    v186 = 33;
  }

  else
  {
    v186 = 0;
  }

  v187 = v186 + v184;
  v188 = 33 * v187;
  v189 = (__PAIR128__(32, 33) * v187) >> 64;
  v146 = __CFADD__(v189, v188);
  v190 = v189 + v188;
  if (v146)
  {
    v191 = 33;
  }

  else
  {
    v191 = 0;
  }

  STACK[0x38B0] = v191 + v190;
  v192 = __CFADD__(v191, v190) || (v191 + v190) > 0xFFFFFFFFFFFFFFDELL;
  LODWORD(STACK[0x38A8]) = v192;
  if (v84 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    v193 = 17;
  }

  else
  {
    v193 = 0;
  }

  v194 = v193 + v84;
  v195 = STACK[0x1DB0];
  v146 = __CFADD__(v194, STACK[0x1DB0]);
  v196 = v194 + STACK[0x1DB0];
  v197 = v146;
  if (v196 > 0xFFFFFFFFFFFFFFEELL)
  {
    v197 = 1;
  }

  if (v197)
  {
    v198 = 17;
  }

  else
  {
    v198 = 0;
  }

  v199 = v198 + v196;
  v200 = 17 * v199;
  v201 = (__PAIR128__(16, 17) * v199) >> 64;
  v146 = __CFADD__(v201, v200);
  v202 = v201 + v200;
  if (v146)
  {
    v203 = 17;
  }

  else
  {
    v203 = 0;
  }

  v204 = (v203 + v202) > 0xFFFFFFFFFFFFFFEELL;
  v146 = __CFADD__(v203, v202);
  v205 = v203 + v202;
  v206 = v146 || v204;
  if (v109 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    v207 = 17;
  }

  else
  {
    v207 = 0;
  }

  v49 = v206 == 0;
  v208 = v207 + v109;
  v209 = v205 + v207 + v109;
  if (v49)
  {
    v210 = 0;
  }

  else
  {
    v210 = 17;
  }

  v211 = v209 + v210;
  if (v211 > 0xFFFFFFFFFFFFFFEELL || v208 > v211)
  {
    v213 = 17;
  }

  else
  {
    v213 = 0;
  }

  v214 = v213 + v211;
  v215 = 17 * v214;
  v216 = (__PAIR128__(16, 17) * v214) >> 64;
  v146 = __CFADD__(v216, v215);
  v217 = v216 + v215;
  if (v146)
  {
    v218 = 17;
  }

  else
  {
    v218 = 0;
  }

  STACK[0x3898] = v218 + v217;
  v219 = __CFADD__(v218, v217) || (v218 + v217) > 0xFFFFFFFFFFFFFFEELL;
  LODWORD(STACK[0x3888]) = v219;
  if (v84 >= 0xFFFFFFFFFFFFFFF1)
  {
    v220 = v17;
  }

  else
  {
    v220 = 0;
  }

  v221 = v220 + v84;
  v222 = STACK[0x1DB8];
  v146 = __CFADD__(v221, STACK[0x1DB8]);
  v223 = v221 + STACK[0x1DB8];
  v224 = 2116703164;
  if (!v146)
  {
    v224 = 0;
  }

  if (v223 > 0xFFFFFFFFFFFFFFF0)
  {
    ++v224;
  }

  if (v224)
  {
    v225 = v17;
  }

  else
  {
    v225 = 0;
  }

  v226 = v225 + v223;
  v227 = 15 * v226;
  v228 = 15 * ((v226 * v17) >> 64);
  v146 = __CFADD__(v228, v227);
  v229 = v228 + v227;
  if (v146)
  {
    v230 = v17;
  }

  else
  {
    v230 = 0;
  }

  v146 = __CFADD__(v230, v229);
  v231 = v230 + v229;
  v232 = v146;
  if (v109 >= 0xFFFFFFFFFFFFFFF1)
  {
    v233 = v17;
  }

  else
  {
    v233 = 0;
  }

  if (v231 > 0xFFFFFFFFFFFFFFF0)
  {
    v232 = 1;
  }

  v49 = v232 == 0;
  v234 = v233 + v109;
  v235 = v231 + v233 + v109;
  if (v49)
  {
    v236 = 0;
  }

  else
  {
    v236 = v17;
  }

  v237 = v235 + v236;
  if (v237 < v234 || v237 > 0xFFFFFFFFFFFFFFF0)
  {
    v239 = v17;
  }

  else
  {
    v239 = 0;
  }

  v240 = v239 + v237;
  v241 = 15 * v240;
  v242 = 15 * ((v240 * v17) >> 64);
  v146 = __CFADD__(v242, v241);
  v243 = v242 + v241;
  if (v146)
  {
    v244 = v17;
  }

  else
  {
    v244 = 0;
  }

  STACK[0x3880] = v244 + v243;
  v245 = __CFADD__(v244, v243) || v244 + v243 > 0xFFFFFFFFFFFFFFF0;
  LODWORD(STACK[0x3878]) = v245;
  if (v84 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v246 = 5;
  }

  else
  {
    v246 = 0;
  }

  v247 = v246 + v84;
  v248 = STACK[0x1DC0];
  v146 = __CFADD__(v247, STACK[0x1DC0]);
  v249 = v247 + STACK[0x1DC0];
  v250 = v146;
  if (v249 > 0xFFFFFFFFFFFFFFFALL)
  {
    v250 = 1;
  }

  if (v250)
  {
    v251 = 5;
  }

  else
  {
    v251 = 0;
  }

  v252 = v251 + v249;
  v253 = 5 * v252;
  v254 = (__PAIR128__(4, 5) * v252) >> 64;
  v146 = __CFADD__(v254, v253);
  v255 = v254 + v253;
  if (v146)
  {
    v256 = 5;
  }

  else
  {
    v256 = 0;
  }

  STACK[0x3870] = v256 + v255;
  v257 = __CFADD__(v256, v255) || (v256 + v255) > 0xFFFFFFFFFFFFFFFALL;
  LODWORD(STACK[0x3868]) = v257;
  if (v84 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v258 = 3;
  }

  else
  {
    v258 = 0;
  }

  v259 = v258 + v84;
  v146 = __CFADD__(v259, STACK[0x1F60]);
  v260 = v259 + STACK[0x1F60];
  v261 = v146;
  if (v260 > 0xFFFFFFFFFFFFFFFCLL)
  {
    v261 = 1;
  }

  if (v261)
  {
    v262 = 3;
  }

  else
  {
    v262 = 0;
  }

  v263 = v262 + v260;
  v264 = 3 * v263;
  v265 = (__PAIR128__(2, 3) * v263) >> 64;
  v146 = __CFADD__(v265, v264);
  v266 = v265 + v264;
  if (v146)
  {
    v267 = 3;
  }

  else
  {
    v267 = 0;
  }

  v146 = __CFADD__(v267, v266);
  v268 = v267 + v266;
  v269 = v146;
  if (v268 > 0xFFFFFFFFFFFFFFFCLL)
  {
    v269 = 1;
  }

  if (v269)
  {
    v270 = 3;
  }

  else
  {
    v270 = 0;
  }

  if (v109 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v271 = 3;
  }

  else
  {
    v271 = 0;
  }

  v272 = v271 + v109;
  v273 = v268 + v272 + v270;
  v274 = v273 > 0xFFFFFFFFFFFFFFFCLL;
  v275 = STACK[0x1DD0];
  if (STACK[0x1DD0] == 24576)
  {
    v274 = 0;
  }

  v276 = v274 ^ (v272 > v273);
  if (v273 > 0xFFFFFFFFFFFFFFFCLL)
  {
    v276 = 1;
  }

  STACK[0x3860] = v276;
  if (v83 == 0xFFFF08FFFFF5D124)
  {
    v277 = v84 + 1;
  }

  else
  {
    v277 = v83 ^ 0xF700000A2EDBLL;
  }

  v278 = STACK[0x1DC8];
  LODWORD(v279) = v277 + STACK[0x1DC8] == -1;
  v146 = __CFADD__(v277, STACK[0x1DC8]);
  v280 = v277 + STACK[0x1DC8];
  if (v146)
  {
    v279 = 1;
  }

  else
  {
    v279 = v279;
  }

  v281 = v279 + v280;
  v282 = STACK[0x1D28] | (((STACK[0x1D60] | (((STACK[0x1D68] | ((v275 + (((*(v76 + STACK[0x1DE8]) - 87) ^ 0xFB) + 85)) << 16)) + STACK[0x1E08]) << 16)) + STACK[0x1D40]) << 8);
  v283 = v282 ^ 0x6000F2A1914321;
  if (v282 == 0xFF9FFF0D5E6EBCDELL)
  {
    v284 = v283 + 1;
  }

  else
  {
    v284 = v282 ^ 0x6000F2A1914321;
  }

  if (v281 == -1)
  {
    v281 = 0;
  }

  if (v107 == -7649675)
  {
    v285 = v109 + 1;
  }

  else
  {
    v285 = v107 ^ 0x74B98A;
  }

  v146 = __CFADD__(v285, v281);
  v286 = v285 + v281;
  LODWORD(v287) = v146;
  if (v286 == -1)
  {
    v287 = 1;
  }

  else
  {
    v287 = v287;
  }

  v288 = v287 + v286;
  if (v288 == -1)
  {
    v288 = 0;
  }

  v289 = STACK[0x3858] | (((STACK[0x1D70] | ((STACK[0x1D78] + (97 * (*(v76 + STACK[0x1DE0]) ^ 0xA2))) << 16)) + v82) << 16);
  STACK[0x3858] = v288 + v284;
  v290 = (STACK[0x1F40] | ((v289 | STACK[0x1F48]) << 16)) + STACK[0x1F50];
  v291 = __CFADD__(v288, v284) || v288 + v284 == -1;
  STACK[0x3850] = v291;
  v292 = v290 ^ 0xF700000A2EDBLL;
  if ((v290 ^ 0xF700000A2EDBLL) >= 0xFFFFFFFFFFFFFFCBLL)
  {
    v293 = 53;
  }

  else
  {
    v293 = 0;
  }

  v294 = v293 + v292;
  v295 = v294 + v87 > 0xFFFFFFFFFFFFFFCALL;
  v146 = __CFADD__(v294, v87);
  v296 = v294 + v87;
  if (v146)
  {
    v295 = 1;
  }

  if (v295)
  {
    v297 = 53;
  }

  else
  {
    v297 = 0;
  }

  v298 = v297 + v296;
  v299 = (v105 | ((v104 + STACK[0x1D48]) << 16)) + v106;
  v300 = v299 ^ 0xBC0074B98ALL;
  v301 = 53 * v298;
  v302 = 53 * ((v298 * 0x35uLL) >> 64);
  if ((v299 ^ 0xBC0074B98ALL) >= 0xFFFFFFFFFFFFFFCBLL)
  {
    v303 = 53;
  }

  else
  {
    v303 = 0;
  }

  v146 = __CFADD__(v302, v301);
  v304 = v302 + v301;
  if (v146)
  {
    v305 = 53;
  }

  else
  {
    v305 = 0;
  }

  v146 = __CFADD__(v305, v304);
  v306 = v305 + v304;
  v307 = v146;
  if (v306 > 0xFFFFFFFFFFFFFFCALL)
  {
    v307 = 1;
  }

  v49 = v307 == 0;
  v308 = v303 + v300;
  v309 = v306 + v303 + v300;
  if (v49)
  {
    v310 = 0;
  }

  else
  {
    v310 = 53;
  }

  v311 = v309 + v310;
  if (v308 > v311 || v311 > 0xFFFFFFFFFFFFFFCALL)
  {
    v313 = 53;
  }

  else
  {
    v313 = 0;
  }

  v314 = v313 + v311;
  v315 = 53 * v314;
  v316 = 53 * ((v314 * 0x35uLL) >> 64);
  v146 = __CFADD__(v316, v315);
  v317 = v316 + v315;
  if (v146)
  {
    v318 = 53;
  }

  else
  {
    v318 = 0;
  }

  STACK[0x3848] = v318 + v317;
  v319 = __CFADD__(v318, v317) || (v318 + v317) > 0xFFFFFFFFFFFFFFCALL;
  LODWORD(STACK[0x3840]) = v319;
  if (v292 >= 0xFFFFFFFFFFFFFFD1)
  {
    v320 = 47;
  }

  else
  {
    v320 = 0;
  }

  v321 = v320 + v292;
  v146 = __CFADD__(v321, v99);
  v322 = v321 + v99;
  v323 = v146;
  if (v322 > 0xFFFFFFFFFFFFFFD0)
  {
    v323 = 1;
  }

  if (v323)
  {
    v324 = 47;
  }

  else
  {
    v324 = 0;
  }

  v325 = v324 + v322;
  v326 = 47 * v325;
  v327 = 47 * ((v325 * 0x2FuLL) >> 64);
  v146 = __CFADD__(v327, v326);
  v328 = v327 + v326;
  if (v146)
  {
    v329 = 47;
  }

  else
  {
    v329 = 0;
  }

  STACK[0x3838] = v329 + v328;
  v330 = __CFADD__(v329, v328) || (v329 + v328) > 0xFFFFFFFFFFFFFFD0;
  LODWORD(STACK[0x3830]) = v330;
  if (v292 >= 0xFFFFFFFFFFFFFFD3)
  {
    v331 = 45;
  }

  else
  {
    v331 = 0;
  }

  v332 = v331 + v292;
  v333 = v332 + v130 > 0xFFFFFFFFFFFFFFD2;
  v146 = __CFADD__(v332, v130);
  v334 = v332 + v130;
  if (v146)
  {
    v333 = 1;
  }

  if (v333)
  {
    v335 = 45;
  }

  else
  {
    v335 = 0;
  }

  v336 = v335 + v334;
  v337 = 45 * v336;
  LODWORD(v336) = (v336 * 0x2DuLL) >> 64;
  v338 = v337 + 45 * v336;
  if (v338 >= 45 * v336)
  {
    v339 = 0;
  }

  else
  {
    v339 = 45;
  }

  v340 = v339 + v338 > 0xFFFFFFFFFFFFFFD2;
  v146 = __CFADD__(v339, v338);
  v341 = v339 + v338;
  v342 = v146 || v340;
  if (v300 >= 0xFFFFFFFFFFFFFFD3)
  {
    v343 = 45;
  }

  else
  {
    v343 = 0;
  }

  v49 = v342 == 0;
  v344 = v343 + v300;
  v345 = v341 + v343 + v300;
  if (v49)
  {
    v346 = 0;
  }

  else
  {
    v346 = 45;
  }

  v347 = v345 + v346;
  if (v347 > 0xFFFFFFFFFFFFFFD2 || v344 > v347)
  {
    v349 = 45;
  }

  else
  {
    v349 = 0;
  }

  v350 = v349 + v347;
  v351 = 45 * v350;
  v352 = 45 * ((v350 * 0x2DuLL) >> 64);
  v146 = __CFADD__(v352, v351);
  v353 = v352 + v351;
  if (v146)
  {
    v354 = 45;
  }

  else
  {
    v354 = 0;
  }

  STACK[0x3828] = v354 + v353;
  v355 = __CFADD__(v354, v353) || (v354 + v353) > 0xFFFFFFFFFFFFFFD2;
  LODWORD(STACK[0x3820]) = v355;
  if (v292 >= 0xFFFFFFFFFFFFFFD9)
  {
    v356 = 39;
  }

  else
  {
    v356 = 0;
  }

  v357 = v356 + v292;
  v358 = v357 + v156 > 0xFFFFFFFFFFFFFFD8;
  v146 = __CFADD__(v357, v156);
  v359 = v357 + v156;
  if (v146)
  {
    v358 = 1;
  }

  if (v358)
  {
    v360 = 39;
  }

  else
  {
    v360 = 0;
  }

  v361 = v360 + v359;
  v362 = 39 * v361;
  v363 = 39 * ((v361 * 0x27uLL) >> 64);
  v146 = __CFADD__(v363, v362);
  v364 = v363 + v362;
  if (v146)
  {
    v365 = 39;
  }

  else
  {
    v365 = 0;
  }

  v366 = (v365 + v364) > 0xFFFFFFFFFFFFFFD8;
  v146 = __CFADD__(v365, v364);
  v367 = v365 + v364;
  if (v146 || v366)
  {
    v369 = 39;
  }

  else
  {
    v369 = 0;
  }

  if (v300 >= 0xFFFFFFFFFFFFFFD9)
  {
    v370 = 39;
  }

  else
  {
    v370 = 0;
  }

  v371 = v370 + v300;
  v372 = v367 + v371 + v369;
  if (v372 < v371 || v372 > 0xFFFFFFFFFFFFFFD8)
  {
    v374 = 39;
  }

  else
  {
    v374 = 0;
  }

  v375 = v374 + v372;
  v376 = 39 * v375;
  v377 = 39 * ((v375 * 0x27uLL) >> 64);
  v146 = __CFADD__(v377, v376);
  v378 = v377 + v376;
  if (v146)
  {
    v379 = 39;
  }

  else
  {
    v379 = 0;
  }

  STACK[0x3808] = v379 + v378;
  v380 = __CFADD__(v379, v378) || (v379 + v378) > 0xFFFFFFFFFFFFFFD8;
  LODWORD(STACK[0x3800]) = v380;
  if (v292 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v381 = 33;
  }

  else
  {
    v381 = 0;
  }

  v382 = v381 + v292;
  v146 = __CFADD__(v382, v168);
  v383 = v382 + v168;
  v384 = v146;
  if (v383 > 0xFFFFFFFFFFFFFFDELL)
  {
    v384 = 1;
  }

  if (v384)
  {
    v385 = 33;
  }

  else
  {
    v385 = 0;
  }

  v386 = v385 + v383;
  v387 = 33 * v386;
  v388 = (__PAIR128__(32, 33) * v386) >> 64;
  v146 = __CFADD__(v388, v387);
  v389 = v388 + v387;
  if (v146)
  {
    v390 = 33;
  }

  else
  {
    v390 = 0;
  }

  v146 = __CFADD__(v390, v389);
  v391 = v390 + v389;
  v392 = v146;
  if (v300 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v393 = 33;
  }

  else
  {
    v393 = 0;
  }

  if (v391 > 0xFFFFFFFFFFFFFFDELL)
  {
    v392 = 1;
  }

  v49 = v392 == 0;
  v394 = v393 + v300;
  v395 = v391 + v393 + v300;
  if (v49)
  {
    v396 = 0;
  }

  else
  {
    v396 = 33;
  }

  v397 = v395 + v396;
  if (v394 > v397 || v397 > 0xFFFFFFFFFFFFFFDELL)
  {
    v399 = 33;
  }

  else
  {
    v399 = 0;
  }

  v400 = v399 + v397;
  v401 = 33 * v400;
  v402 = (__PAIR128__(32, 33) * v400) >> 64;
  v403 = __ROR8__(__ROR8__(v401 ^ 0x7227061925FD4DAALL, 28) ^ 0x5FD4DAA722706192, 36);
  v146 = __CFADD__(v403, v402);
  v404 = v403 + v402;
  if (v146)
  {
    v405 = 33;
  }

  else
  {
    v405 = 0;
  }

  v406 = v405 + v404;
  v407 = __CFADD__(v405, v404) || (v405 + v404) > 0xFFFFFFFFFFFFFFDELL;
  if (v292 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    v408 = 17;
  }

  else
  {
    v408 = 0;
  }

  v409 = v408 + v292;
  v410 = v409 + v195 > 0xFFFFFFFFFFFFFFEELL;
  v146 = __CFADD__(v409, v195);
  v411 = v409 + v195;
  if (v146)
  {
    v410 = 1;
  }

  if (v410)
  {
    v412 = 17;
  }

  else
  {
    v412 = 0;
  }

  v413 = v412 + v411;
  v414 = 17 * v413;
  v415 = (__PAIR128__(16, 17) * v413) >> 64;
  v146 = __CFADD__(v415, v414);
  v416 = v415 + v414;
  if (v146)
  {
    v417 = 17;
  }

  else
  {
    v417 = 0;
  }

  v418 = (v417 + v416) > 0xFFFFFFFFFFFFFFEELL;
  v419 = v417 + v416;
  if (__CFADD__(v417, v416))
  {
    v418 = 1;
  }

  if (v292 >= 0xFFFFFFFFFFFFFFF1)
  {
    v420 = v17;
  }

  else
  {
    v420 = 0;
  }

  v421 = v420 + v292;
  v422 = v421 + v222 > 0xFFFFFFFFFFFFFFF0;
  v146 = __CFADD__(v421, v222);
  v423 = v421 + v222;
  if (v146)
  {
    v422 = 1;
  }

  if (v422)
  {
    v424 = v17;
  }

  else
  {
    v424 = 0;
  }

  v425 = v424 + v423;
  v426 = 15 * v425;
  v427 = 15 * ((v425 * v17) >> 64);
  v146 = __CFADD__(v427, v426);
  v428 = v427 + v426;
  if (v146)
  {
    v429 = v17;
  }

  else
  {
    v429 = 0;
  }

  v430 = v429 + v428 > 0xFFFFFFFFFFFFFFF0;
  v146 = __CFADD__(v429, v428);
  v431 = v429 + v428;
  v432 = v146 || v430;
  if (v300 >= 0xFFFFFFFFFFFFFFF1)
  {
    v433 = v17;
  }

  else
  {
    v433 = 0;
  }

  v49 = v432 == 0;
  v434 = v433 + v300;
  v435 = v431 + v433 + v300;
  if (v49)
  {
    v436 = 0;
  }

  else
  {
    v436 = v17;
  }

  v437 = v435 + v436;
  if (v434 > v437 || v437 > 0xFFFFFFFFFFFFFFF0)
  {
    v439 = v17;
  }

  else
  {
    v439 = 0;
  }

  v440 = v439 + v437;
  v441 = 15 * v440;
  v442 = 15 * ((v440 * v17) >> 64);
  v146 = __CFADD__(v442, v441);
  v443 = v442 + v441;
  if (v146)
  {
    v444 = v17;
  }

  else
  {
    v444 = 0;
  }

  v445 = v444 + v443 > 0xFFFFFFFFFFFFFFF0;
  v446 = v444 + v443;
  if (__CFADD__(v444, v443))
  {
    v445 = 1;
  }

  if (v292 >= 0xFFFFFFFFFFFFFFF7)
  {
    v447 = 9;
  }

  else
  {
    v447 = 0;
  }

  v448 = v447 + v292;
  v146 = __CFADD__(v448, STACK[0x1F58]);
  v449 = v448 + STACK[0x1F58];
  v450 = v146;
  if (v300 >= 0xFFFFFFFFFFFFFFF7)
  {
    v451 = 9;
  }

  else
  {
    v451 = 0;
  }

  if (v449 > 0xFFFFFFFFFFFFFFF6)
  {
    v450 = 1;
  }

  if (v450)
  {
    v452 = 9;
  }

  else
  {
    v452 = 0;
  }

  v453 = v452 + v449;
  v454 = 9 * v453;
  v455 = (__PAIR128__(8, 9) * v453) >> 64;
  v146 = __CFADD__(v455, v454);
  v456 = v455 + v454;
  if (v146)
  {
    v457 = 9;
  }

  else
  {
    v457 = 0;
  }

  v146 = __CFADD__(v457, v456);
  v458 = v457 + v456;
  v459 = v146;
  if (v458 > 0xFFFFFFFFFFFFFFF6)
  {
    v459 = 1;
  }

  v49 = v459 == 0;
  v460 = v451 + v300;
  v461 = v458 + v451 + v300;
  if (v49)
  {
    v462 = 0;
  }

  else
  {
    v462 = 9;
  }

  v463 = v461 + v462;
  if (v463 <= 0xFFFFFFFFFFFFFFF6 && v463 >= v460)
  {
    v465 = 0;
  }

  else
  {
    v465 = 9;
  }

  v466 = v465 + v463;
  v467 = 9 * v466;
  v468 = (__PAIR128__(8, 9) * v466) >> 64;
  v146 = __CFADD__(v468, v467);
  v469 = v468 + v467;
  if (v146)
  {
    v470 = 9;
  }

  else
  {
    v470 = 0;
  }

  v471 = v470 + v469;
  v472 = __CFADD__(v470, v469) || (v470 + v469) > 0xFFFFFFFFFFFFFFF6;
  if (v292 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v473 = 5;
  }

  else
  {
    v473 = 0;
  }

  v474 = v473 + v292;
  v475 = v474 + v248 > 0xFFFFFFFFFFFFFFFALL;
  v146 = __CFADD__(v474, v248);
  v476 = v474 + v248;
  if (v146)
  {
    v475 = 1;
  }

  if (v475)
  {
    v477 = 5;
  }

  else
  {
    v477 = 0;
  }

  v478 = v477 + v476;
  v479 = 5 * v478;
  v480 = (__PAIR128__(4, 5) * v478) >> 64;
  v146 = __CFADD__(v480, v479);
  v481 = v480 + v479;
  if (v146)
  {
    v482 = 5;
  }

  else
  {
    v482 = 0;
  }

  v483 = v482 + v481;
  v484 = __CFADD__(v482, v481) || (v482 + v481) > 0xFFFFFFFFFFFFFFFALL;
  if (v292 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v485 = 3;
  }

  else
  {
    v485 = 0;
  }

  v486 = v485 + v292;
  v146 = __CFADD__(v486, STACK[0x1F60]);
  v487 = v486 + STACK[0x1F60];
  v488 = v146;
  if (v487 > 0xFFFFFFFFFFFFFFFCLL)
  {
    v488 = 1;
  }

  if (v488)
  {
    v489 = 3;
  }

  else
  {
    v489 = 0;
  }

  v490 = v489 + v487;
  v491 = 3 * v490;
  v492 = (__PAIR128__(2, 3) * v490) >> 64;
  v146 = __CFADD__(v492, v491);
  v493 = v492 + v491;
  if (v146)
  {
    v494 = 3;
  }

  else
  {
    v494 = 0;
  }

  v495 = (v494 + v493) > 0xFFFFFFFFFFFFFFFCLL;
  v146 = __CFADD__(v494, v493);
  v496 = v494 + v493;
  v497 = v146 || v495;
  if (v300 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v498 = 3;
  }

  else
  {
    v498 = 0;
  }

  v49 = v497 == 0;
  v499 = v498 + v300;
  v500 = v496 + v498 + v300;
  if (v49)
  {
    v501 = 0;
  }

  else
  {
    v501 = 3;
  }

  v502 = v500 + v501;
  if (v502 <= 0xFFFFFFFFFFFFFFFCLL && v502 >= v499)
  {
    v504 = 0;
  }

  else
  {
    v504 = 3;
  }

  v505 = v504 + v502;
  v506 = 3 * v505;
  v507 = (__PAIR128__(2, 3) * v505) >> 64;
  v146 = __CFADD__(v507, v506);
  v508 = v507 + v506;
  if (v146)
  {
    v509 = 3;
  }

  else
  {
    v509 = 0;
  }

  v510 = 3;
  v511 = (v509 + v508) > 0xFFFFFFFFFFFFFFFCLL;
  v146 = __CFADD__(v509, v508);
  v512 = v509 + v508;
  if (v146)
  {
    v511 = 1;
  }

  if (v290 == 0xFFFF08FFFFF5D124)
  {
    v513 = v292 + 1;
  }

  else
  {
    v513 = v290 ^ 0xF700000A2EDBLL;
  }

  v146 = __CFADD__(v513, v278);
  v514 = v513 + v278;
  LODWORD(v515) = v146;
  if (v514 == -1)
  {
    v515 = 1;
  }

  else
  {
    v515 = v515;
  }

  v49 = v299 == 0xFFFFFF43FF8B4675;
  v516 = v515 + v514;
  if (v49)
  {
    v517 = v300 + 1;
  }

  else
  {
    v517 = v300;
  }

  if (v516 == -1)
  {
    v516 = 0;
  }

  v146 = __CFADD__(v516, v517);
  v518 = v516 + v517;
  LODWORD(v519) = v146;
  if (v518 == -1)
  {
    v519 = 1;
  }

  else
  {
    v519 = v519;
  }

  v520 = v519 + v518;
  if (v520 == -1)
  {
    v520 = 0;
  }

  v146 = __CFADD__(v520, v284);
  v521 = v520 + v284;
  STACK[0x3810] = v521;
  LODWORD(v522) = v146;
  if (v521 == -1)
  {
    v522 = 1;
  }

  else
  {
    v522 = v522;
  }

  STACK[0x3818] = v522;
  if (v283 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v523 = 0;
  }

  else
  {
    v523 = 3;
  }

  v49 = !v511;
  v524 = v523 + v283;
  v525 = v512 + v523 + v283;
  if (v49)
  {
    v526 = 0;
  }

  else
  {
    v526 = 3;
  }

  v527 = v525 + v526;
  if ((v525 + v526) <= 0xFFFFFFFFFFFFFFFCLL && v527 >= v524)
  {
    v510 = 0;
  }

  STACK[0x37E0] = v510;
  if (v300 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v529 = 5;
  }

  else
  {
    v529 = 0;
  }

  v530 = v529 + v300;
  if (v484)
  {
    v531 = 5;
  }

  else
  {
    v531 = 0;
  }

  v532 = v483 + v530 + v531;
  if (v532 > 0xFFFFFFFFFFFFFFFALL || v530 > v532)
  {
    v534 = 5;
  }

  else
  {
    v534 = 0;
  }

  v535 = v534 + v532;
  v536 = 5 * v535;
  v537 = (__PAIR128__(4, 5) * v535) >> 64;
  v146 = __CFADD__(v537, v536);
  v538 = v537 + v536;
  if (v146)
  {
    v539 = 5;
  }

  else
  {
    v539 = 0;
  }

  v146 = __CFADD__(v539, v538);
  v540 = v539 + v538;
  v541 = v146;
  if (v540 > 0xFFFFFFFFFFFFFFFALL)
  {
    v541 = 1;
  }

  if (v283 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v542 = 5;
  }

  else
  {
    v542 = 0;
  }

  v543 = v542 + v283;
  v544 = v540 + v542 + v283;
  if (v541)
  {
    v545 = 5;
  }

  else
  {
    v545 = 0;
  }

  STACK[0x37E8] = v544 + v545;
  if (v544 + v545 < v543 || v544 + v545 > 0xFFFFFFFFFFFFFFFALL)
  {
    v547 = 5;
  }

  else
  {
    v547 = 0;
  }

  STACK[0x37F8] = v547;
  if (v283 >= 0xFFFFFFFFFFFFFFF7)
  {
    v548 = 9;
  }

  else
  {
    v548 = 0;
  }

  v49 = !v472;
  v549 = v548 + v283;
  v550 = v471 + v548 + v283;
  if (v49)
  {
    v551 = 0;
  }

  else
  {
    v551 = 9;
  }

  v552 = v550 + v551;
  if (v550 + v551 < v549 || v552 > 0xFFFFFFFFFFFFFFF6)
  {
    v554 = 9;
  }

  else
  {
    v554 = 0;
  }

  STACK[0x37D8] = v554;
  v555 = 15;
  if (v283 >= 0xFFFFFFFFFFFFFFF1)
  {
    v556 = 15;
  }

  else
  {
    v556 = 0;
  }

  v557 = v556 + v283;
  v558 = v446 + v556 + v283;
  if (v445)
  {
    v559 = 15;
  }

  else
  {
    v559 = 0;
  }

  v560 = v558 + v559;
  if ((v558 + v559) <= 0xFFFFFFFFFFFFFFF0 && v560 >= v557)
  {
    v555 = 0;
  }

  STACK[0x37F0] = v555;
  if (v300 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    v562 = 17;
  }

  else
  {
    v562 = 0;
  }

  v563 = v562 + v300;
  if (v418)
  {
    v564 = 17;
  }

  else
  {
    v564 = 0;
  }

  v565 = v419 + v563 + v564;
  if (v565 <= 0xFFFFFFFFFFFFFFEELL && v565 >= v563)
  {
    v567 = 0;
  }

  else
  {
    v567 = 17;
  }

  v568 = v567 + v565;
  v569 = 17 * v568;
  v570 = (__PAIR128__(16, 17) * v568) >> 64;
  v146 = __CFADD__(v570, v569);
  v571 = v570 + v569;
  if (v146)
  {
    v572 = 17;
  }

  else
  {
    v572 = 0;
  }

  if (v283 <= 0xFFFFFFFFFFFFFFEELL)
  {
    v573 = 0;
  }

  else
  {
    v573 = 17;
  }

  v574 = 17;
  v146 = __CFADD__(v572, v571);
  v575 = v572 + v571;
  v576 = v146;
  if (v575 > 0xFFFFFFFFFFFFFFEELL)
  {
    v576 = 1;
  }

  v577 = v573 + v283;
  v578 = v575 + v577;
  if (v576)
  {
    v579 = 17;
  }

  else
  {
    v579 = 0;
  }

  v580 = v578 + v579;
  if (v578 + v579 >= v577 && v580 <= 0xFFFFFFFFFFFFFFEELL)
  {
    v574 = 0;
  }

  STACK[0x37C8] = v574;
  v582 = 33;
  if (v283 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v583 = 33;
  }

  else
  {
    v583 = 0;
  }

  v584 = v583 + v283;
  v585 = v406 + v583 + v283;
  if (v407)
  {
    v586 = 33;
  }

  else
  {
    v586 = 0;
  }

  v587 = v585 + v586;
  if ((v585 + v586) <= 0xFFFFFFFFFFFFFFDELL && v584 <= v587)
  {
    v582 = 0;
  }

  STACK[0x37D0] = v582;
  if (v283 <= 0xFFFFFFFFFFFFFFD8)
  {
    v589 = 0;
  }

  else
  {
    v589 = 39;
  }

  v590 = v589 + v283;
  v591 = STACK[0x3808] + v589 + v283;
  if (LODWORD(STACK[0x3800]))
  {
    v592 = 39;
  }

  else
  {
    v592 = 0;
  }

  v593 = v591 + v592;
  if (v591 + v592 < v590 || v593 > 0xFFFFFFFFFFFFFFD8)
  {
    v595 = 39;
  }

  else
  {
    v595 = 0;
  }

  STACK[0x3808] = v595;
  if (v283 >= 0xFFFFFFFFFFFFFFD3)
  {
    v596 = 45;
  }

  else
  {
    v596 = 0;
  }

  v597 = v596 + v283;
  v598 = STACK[0x3828] + v596 + v283;
  if (LODWORD(STACK[0x3820]))
  {
    v599 = 45;
  }

  else
  {
    v599 = 0;
  }

  v600 = v598 + v599;
  if (v597 > v598 + v599 || v600 > 0xFFFFFFFFFFFFFFD2)
  {
    v602 = 45;
  }

  else
  {
    v602 = 0;
  }

  STACK[0x3828] = v602;
  if (v300 >= 0xFFFFFFFFFFFFFFD1)
  {
    v603 = 47;
  }

  else
  {
    v603 = 0;
  }

  v604 = v603 + v300;
  if (LODWORD(STACK[0x3830]))
  {
    v605 = 47;
  }

  else
  {
    v605 = 0;
  }

  v606 = STACK[0x3838] + v604 + v605;
  if (v606 < v604 || v606 > 0xFFFFFFFFFFFFFFD0)
  {
    v608 = 47;
  }

  else
  {
    v608 = 0;
  }

  v609 = v608 + v606;
  v610 = 47 * v609;
  v611 = 47 * ((v609 * 0x2FuLL) >> 64);
  v146 = __CFADD__(v611, v610);
  v612 = v611 + v610;
  if (v146)
  {
    v613 = 47;
  }

  else
  {
    v613 = 0;
  }

  v146 = __CFADD__(v613, v612);
  v614 = v613 + v612;
  v615 = v146;
  if (v283 >= 0xFFFFFFFFFFFFFFD1)
  {
    v616 = 47;
  }

  else
  {
    v616 = 0;
  }

  if (v614 > 0xFFFFFFFFFFFFFFD0)
  {
    v615 = 1;
  }

  v49 = v615 == 0;
  v617 = v616 + v283;
  v618 = v614 + v616 + v283;
  if (v49)
  {
    v619 = 0;
  }

  else
  {
    v619 = 47;
  }

  v620 = v618 + v619;
  if (v617 > v620 || v620 > 0xFFFFFFFFFFFFFFD0)
  {
    v622 = 47;
  }

  else
  {
    v622 = 0;
  }

  STACK[0x3838] = v622;
  if (v283 >= 0xFFFFFFFFFFFFFFCBLL)
  {
    v623 = 53;
  }

  else
  {
    v623 = 0;
  }

  v624 = v623 + v283;
  if (LODWORD(STACK[0x3840]))
  {
    v625 = 53;
  }

  else
  {
    v625 = 0;
  }

  v626 = STACK[0x3848] + v624 + v625;
  STACK[0x3858] += STACK[0x3850];
  v627 = v273 - (-STACK[0x3860] & 0xFFFFFFFFFFFFFFFDLL);
  v628 = v626 > 0xFFFFFFFFFFFFFFCALL || v624 > v626;
  v629 = 3 * v627;
  v630 = (__PAIR128__(2, 3) * v627) >> 64;
  if (v628)
  {
    v631 = 53;
  }

  else
  {
    v631 = 0;
  }

  STACK[0x3850] = v631;
  v146 = __CFADD__(v630, v629);
  v632 = v630 + v629;
  if (v146)
  {
    v633 = 3;
  }

  else
  {
    v633 = 0;
  }

  v146 = __CFADD__(v633, v632);
  v634 = v633 + v632;
  v635 = v146;
  if (v634 > 0xFFFFFFFFFFFFFFFCLL)
  {
    v635 = 1;
  }

  v636 = v634 + v524;
  if (v635)
  {
    v637 = 3;
  }

  else
  {
    v637 = 0;
  }

  v638 = v636 + v637;
  if (v638 > 0xFFFFFFFFFFFFFFFCLL || v524 > v638)
  {
    v640 = 3;
  }

  else
  {
    v640 = 0;
  }

  v641 = STACK[0x3868];
  STACK[0x3868] = v640 + v638;
  if (v641)
  {
    v642 = 5;
  }

  else
  {
    v642 = 0;
  }

  if (v109 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v643 = 5;
  }

  else
  {
    v643 = 0;
  }

  v644 = v643 + v109;
  v645 = STACK[0x3870] + v644 + v642;
  if (v645 > 0xFFFFFFFFFFFFFFFALL || v644 > v645)
  {
    v647 = 5;
  }

  else
  {
    v647 = 0;
  }

  v648 = v647 + v645;
  v649 = 5 * v648;
  v650 = (__PAIR128__(4, 5) * v648) >> 64;
  v146 = __CFADD__(v650, v649);
  v651 = v650 + v649;
  if (v146)
  {
    v652 = 5;
  }

  else
  {
    v652 = 0;
  }

  v146 = __CFADD__(v652, v651);
  v653 = v652 + v651;
  v654 = v146;
  if (v653 > 0xFFFFFFFFFFFFFFFALL)
  {
    v654 = 1;
  }

  v655 = v653 + v543;
  if (v654)
  {
    v656 = 5;
  }

  else
  {
    v656 = 0;
  }

  v657 = v655 + v656;
  if (v84 >= 0xFFFFFFFFFFFFFFF7)
  {
    v658 = 9;
  }

  else
  {
    v658 = 0;
  }

  v146 = v657 >= v543;
  v659 = v658 + v84;
  if (!v146 || v657 > 0xFFFFFFFFFFFFFFFALL)
  {
    v661 = 5;
  }

  else
  {
    v661 = 0;
  }

  v146 = __CFADD__(v659, STACK[0x1F58]);
  v662 = v659 + STACK[0x1F58];
  v663 = v146;
  if (v662 > 0xFFFFFFFFFFFFFFF6)
  {
    v663 = 1;
  }

  if (v663)
  {
    v664 = 9;
  }

  else
  {
    v664 = 0;
  }

  v665 = v664 + v662;
  v666 = 9 * v665;
  v667 = (__PAIR128__(8, 9) * v665) >> 64;
  if (v109 >= 0xFFFFFFFFFFFFFFF7)
  {
    v668 = 9;
  }

  else
  {
    v668 = 0;
  }

  v146 = __CFADD__(v667, v666);
  v669 = v667 + v666;
  STACK[0x3870] = v661 + v657;
  if (v146)
  {
    v670 = 9;
  }

  else
  {
    v670 = 0;
  }

  v146 = __CFADD__(v670, v669);
  v671 = v670 + v669;
  v672 = v146;
  if (v671 > 0xFFFFFFFFFFFFFFF6)
  {
    v672 = 1;
  }

  v673 = v671 + v668 + v109;
  if (v672)
  {
    v674 = 9;
  }

  else
  {
    v674 = 0;
  }

  v675 = v673 + v674;
  if (v668 + v109 > v675 || v675 > 0xFFFFFFFFFFFFFFF6)
  {
    v677 = 9;
  }

  else
  {
    v677 = 0;
  }

  v678 = v677 + v675;
  v679 = 9 * v678;
  v680 = (__PAIR128__(8, 9) * v678) >> 64;
  v146 = __CFADD__(v680, v679);
  v681 = v680 + v679;
  if (v146)
  {
    v682 = 9;
  }

  else
  {
    v682 = 0;
  }

  v146 = __CFADD__(v682, v681);
  v683 = v682 + v681;
  v684 = v146;
  if (v683 > 0xFFFFFFFFFFFFFFF6)
  {
    v684 = 1;
  }

  v685 = v683 + v549;
  if (v684)
  {
    v686 = 9;
  }

  else
  {
    v686 = 0;
  }

  v687 = v685 + v686;
  if (v687 > 0xFFFFFFFFFFFFFFF6 || v549 > v687)
  {
    v689 = 9;
  }

  else
  {
    v689 = 0;
  }

  STACK[0x3860] = v689 + v687;
  if (LODWORD(STACK[0x3878]))
  {
    v690 = 15;
  }

  else
  {
    v690 = 0;
  }

  v691 = STACK[0x3880] + v557 + v690;
  if (v691 <= 0xFFFFFFFFFFFFFFF0 && v691 >= v557)
  {
    v693 = 0;
  }

  else
  {
    v693 = 15;
  }

  STACK[0x3880] = v693 + v691;
  if (LODWORD(STACK[0x3888]))
  {
    v694 = 17;
  }

  else
  {
    v694 = 0;
  }

  v695 = STACK[0x3898] + v577 + v694;
  if (v695 <= 0xFFFFFFFFFFFFFFEELL && v695 >= v577)
  {
    v697 = 0;
  }

  else
  {
    v697 = 17;
  }

  STACK[0x3898] = v697 + v695;
  if (LODWORD(STACK[0x38A8]))
  {
    v698 = 33;
  }

  else
  {
    v698 = 0;
  }

  v699 = STACK[0x38B0] + v584 + v698;
  if (v699 <= 0xFFFFFFFFFFFFFFDELL && v699 >= v584)
  {
    v701 = 0;
  }

  else
  {
    v701 = 33;
  }

  STACK[0x38B0] = v701 + v699;
  if (v109 >= 0xFFFFFFFFFFFFFFD9)
  {
    v702 = 39;
  }

  else
  {
    v702 = 0;
  }

  v703 = v702 + v109;
  if (LODWORD(STACK[0x38B8]))
  {
    v704 = 39;
  }

  else
  {
    v704 = 0;
  }

  v705 = STACK[0x38C0] + v703 + v704;
  if (v703 > v705 || v705 > 0xFFFFFFFFFFFFFFD8)
  {
    v707 = 39;
  }

  else
  {
    v707 = 0;
  }

  v708 = v707 + v705;
  v709 = 39 * v708;
  v710 = 39 * ((v708 * 0x27uLL) >> 64);
  v146 = __CFADD__(v710, v709);
  v711 = v710 + v709;
  if (v146)
  {
    v712 = 39;
  }

  else
  {
    v712 = 0;
  }

  v146 = __CFADD__(v712, v711);
  v713 = v712 + v711;
  v714 = v146;
  if (v713 > 0xFFFFFFFFFFFFFFD8)
  {
    v714 = 1;
  }

  v715 = v713 + v590;
  if (v714)
  {
    v716 = 39;
  }

  else
  {
    v716 = 0;
  }

  v717 = v715 + v716;
  if (v717 < v590 || v717 > 0xFFFFFFFFFFFFFFD8)
  {
    v719 = 39;
  }

  else
  {
    v719 = 0;
  }

  STACK[0x38C0] = v719 + v717;
  if (LODWORD(STACK[0x38C8]))
  {
    v720 = 45;
  }

  else
  {
    v720 = 0;
  }

  v721 = STACK[0x38D0] + v597 + v720;
  if (v721 < v597 || v721 > 0xFFFFFFFFFFFFFFD2)
  {
    v723 = 45;
  }

  else
  {
    v723 = 0;
  }

  STACK[0x38D0] = v723 + v721;
  if (LODWORD(STACK[0x38D8]))
  {
    v724 = 47;
  }

  else
  {
    v724 = 0;
  }

  v725 = STACK[0x38E0] + v617 + v724;
  v726 = v725 <= 0xFFFFFFFFFFFFFFD0 && v725 >= v617;
  v727 = v527 + STACK[0x2838] + STACK[0x37E0];
  if (v726)
  {
    v728 = 0;
  }

  else
  {
    v728 = 47;
  }

  if (LODWORD(STACK[0x3978]))
  {
    v729 = 53;
  }

  else
  {
    v729 = 0;
  }

  if (v109 >= 0xFFFFFFFFFFFFFFCBLL)
  {
    v730 = 53;
  }

  else
  {
    v730 = 0;
  }

  v731 = v730 + v109;
  v732 = STACK[0x3980] + v731 + v729;
  if (v732 > 0xFFFFFFFFFFFFFFCALL || v731 > v732)
  {
    v734 = 53;
  }

  else
  {
    v734 = 0;
  }

  v735 = v734 + v732;
  v736 = 53 * v735;
  v737 = 53 * ((v735 * 0x35uLL) >> 64);
  v146 = __CFADD__(v737, v736);
  v738 = v737 + v736;
  if (v146)
  {
    v739 = 53;
  }

  else
  {
    v739 = 0;
  }

  v146 = __CFADD__(v739, v738);
  v740 = v739 + v738;
  v741 = v728 + v725;
  v742 = STACK[0x2858];
  v743 = v580 + STACK[0x2858] + STACK[0x37C8];
  v744 = STACK[0x3810] + STACK[0x2848] + STACK[0x3818];
  v745 = v146;
  if (v740 > 0xFFFFFFFFFFFFFFCALL)
  {
    v745 = 1;
  }

  if (v727 < STACK[0x2838] || v727 > 0xFFFFFFFFFFFFFFFCLL)
  {
    v747 = 3;
  }

  else
  {
    v747 = 0;
  }

  v49 = v745 == 0;
  v748 = STACK[0x2860];
  v749 = v552 + STACK[0x2860] + STACK[0x37D8];
  v750 = STACK[0x36A0];
  v751 = STACK[0x37E8] + STACK[0x36A0] + STACK[0x37F8];
  v752 = v740 + v624;
  if (v49)
  {
    v753 = 0;
  }

  else
  {
    v753 = 53;
  }

  v754 = v752 + v753;
  if (v744 == -1 || STACK[0x2848] > v744)
  {
    v756 = v744 + 1;
  }

  else
  {
    v756 = STACK[0x3810] + STACK[0x2848] + STACK[0x3818];
  }

  STACK[0x36F0] = v756;
  if (v749 < v748 || v749 > 0xFFFFFFFFFFFFFFF6)
  {
    v758 = 9;
  }

  else
  {
    v758 = 0;
  }

  if (v743 < v742 || v743 > 0xFFFFFFFFFFFFFFEELL)
  {
    v760 = 17;
  }

  else
  {
    v760 = 0;
  }

  v146 = v754 >= v624;
  v761 = STACK[0x2840];
  v762 = v560 + STACK[0x2840] + STACK[0x37F0];
  STACK[0x1FF0] = v747 + v727;
  v763 = STACK[0x2850];
  v764 = v593 + STACK[0x2850] + STACK[0x3808];
  v765 = STACK[0x2830];
  v766 = v587 + STACK[0x2830] + STACK[0x37D0];
  v767 = STACK[0x2828];
  v768 = v600 + STACK[0x2828] + STACK[0x3828];
  v769 = STACK[0x2820];
  v770 = v620 + STACK[0x2820] + STACK[0x3838];
  STACK[0x3978] = v760 + v743;
  STACK[0x37E0] = v758 + v749;
  if (!v146 || v754 > 0xFFFFFFFFFFFFFFCALL)
  {
    v772 = 53;
  }

  else
  {
    v772 = 0;
  }

  v773 = v772 + v754;
  v774 = STACK[0x3308];
  v775 = v626 + STACK[0x3308] + STACK[0x3850];
  if (v750 > v751 || v751 > 0xFFFFFFFFFFFFFFFALL)
  {
    v777 = 5;
  }

  else
  {
    v777 = 0;
  }

  STACK[0x1FE8] = v777 + v751;
  if (v764 < v763 || v764 > 0xFFFFFFFFFFFFFFD8)
  {
    v779 = 39;
  }

  else
  {
    v779 = 0;
  }

  STACK[0x37A0] = v779 + v764;
  if (v766 <= 0xFFFFFFFFFFFFFFDELL && v766 >= v765)
  {
    v781 = 0;
  }

  else
  {
    v781 = 33;
  }

  if (v762 > 0xFFFFFFFFFFFFFFF0 || v761 > v762)
  {
    v783 = 15;
  }

  else
  {
    v783 = 0;
  }

  STACK[0x1FE0] = v783 + v762;
  if (v769 > v770 || v770 > 0xFFFFFFFFFFFFFFD0)
  {
    v785 = 47;
  }

  else
  {
    v785 = 0;
  }

  STACK[0x3690] = v785 + v770;
  STACK[0x3980] = v781 + v766;
  if (v767 > v768 || v768 > 0xFFFFFFFFFFFFFFD2)
  {
    v787 = 45;
  }

  else
  {
    v787 = 0;
  }

  if (v775 < v774 || v775 > 0xFFFFFFFFFFFFFFCALL)
  {
    v789 = 53;
  }

  else
  {
    v789 = 0;
  }

  if (LODWORD(STACK[0x38E8]))
  {
    v790 = 15;
  }

  else
  {
    v790 = 0;
  }

  v791 = v790 + STACK[0x38F0];
  STACK[0x3688] = v787 + v768;
  if (LODWORD(STACK[0x38F8]))
  {
    v792 = 33;
  }

  else
  {
    v792 = 0;
  }

  v793 = v792 + STACK[0x3A98];
  STACK[0x3A98] = v789 + v775;
  v794 = STACK[0x2530];
  v795 = v774 + STACK[0x2530];
  v796 = __CFADD__(v774, STACK[0x2530]);
  if (v795 > 0xFFFFFFFFFFFFFFCALL)
  {
    v796 = 1;
  }

  v146 = __CFADD__(v793, STACK[0x2750]);
  v797 = v793 + STACK[0x2750];
  v798 = v146;
  v146 = __CFADD__(v791, STACK[0x36E8]);
  v799 = v791 + STACK[0x36E8];
  v800 = v146;
  if (v799 > 0xFFFFFFFFFFFFFFF0)
  {
    v800 = 1;
  }

  if (v796)
  {
    v801 = 53;
  }

  else
  {
    v801 = 0;
  }

  if (LODWORD(STACK[0x3900]))
  {
    v802 = 3;
  }

  else
  {
    v802 = 0;
  }

  if (v800)
  {
    v803 = 15;
  }

  else
  {
    v803 = 0;
  }

  v804 = STACK[0x3938] + STACK[0x3958];
  v805 = v801 + v795;
  if (LODWORD(STACK[0x39B0]))
  {
    v806 = 5;
  }

  else
  {
    v806 = 0;
  }

  if (v797 > 0xFFFFFFFFFFFFFFDELL)
  {
    v798 = 1;
  }

  v146 = __CFADD__(v805, v794);
  v807 = v805 + v794;
  v808 = v146;
  if (LODWORD(STACK[0x39D0]))
  {
    v809 = 17;
  }

  else
  {
    v809 = 0;
  }

  if (v798)
  {
    v810 = 33;
  }

  else
  {
    v810 = 0;
  }

  if (LODWORD(STACK[0x39E8]))
  {
    v811 = 9;
  }

  else
  {
    v811 = 0;
  }

  if (LODWORD(STACK[0x39F8]))
  {
    v812 = 47;
  }

  else
  {
    v812 = 0;
  }

  if (LODWORD(STACK[0x3A00]))
  {
    v813 = 45;
  }

  else
  {
    v813 = 0;
  }

  v146 = v804 >= STACK[0x3858];
  v814 = v804 - STACK[0x3858];
  v815 = v803 + v799;
  v816 = v806 + STACK[0x39C0];
  v817 = v811 + STACK[0x39F0];
  v818 = v810 + v797;
  v819 = v809 + STACK[0x39D8];
  v820 = v802 + STACK[0x39B8];
  v821 = !v146;
  if (v807 > 0xFFFFFFFFFFFFFFCALL)
  {
    v808 = 1;
  }

  if (LODWORD(STACK[0x3A18]))
  {
    v822 = 39;
  }

  else
  {
    v822 = 0;
  }

  v146 = v816 >= STACK[0x3870];
  v823 = v816 - STACK[0x3870];
  if (v146)
  {
    v824 = 0;
  }

  else
  {
    v824 = -5;
  }

  v146 = v820 >= STACK[0x3868];
  v825 = v820 - STACK[0x3868];
  if (v146)
  {
    v826 = 0;
  }

  else
  {
    v826 = -3;
  }

  if (v808)
  {
    v827 = 53;
  }

  else
  {
    v827 = 0;
  }

  v146 = v815 >= STACK[0x3880];
  v828 = v815 - STACK[0x3880];
  v829 = v813 + STACK[0x3A10];
  v830 = v814 - v821;
  if (v146)
  {
    v831 = 0;
  }

  else
  {
    v831 = -15;
  }

  v832 = v829 - STACK[0x38D0];
  if (v829 >= STACK[0x38D0])
  {
    v833 = 0;
  }

  else
  {
    v833 = -45;
  }

  v146 = v817 >= STACK[0x3860];
  v834 = v817 - STACK[0x3860];
  v835 = v812 + STACK[0x3A08];
  v836 = v822 + STACK[0x3A20];
  if (v146)
  {
    v837 = 0;
  }

  else
  {
    v837 = -9;
  }

  v838 = v835 - v741;
  if (v835 >= v741)
  {
    v839 = 0;
  }

  else
  {
    v839 = -47;
  }

  v840 = v819 - STACK[0x3898];
  if (v819 >= STACK[0x3898])
  {
    v841 = 0;
  }

  else
  {
    v841 = -17;
  }

  v146 = v830 >= STACK[0x2848];
  v842 = v830 - STACK[0x2848];
  v843 = !v146;
  v844 = v836 - STACK[0x38C0];
  v845 = v826 + v825;
  v846 = v824 + v823;
  v847 = v827 + v807;
  if (v836 >= STACK[0x38C0])
  {
    v848 = 0;
  }

  else
  {
    v848 = -39;
  }

  v146 = v847 >= v773;
  v849 = v847 - v773;
  if (v146)
  {
    v850 = 0;
  }

  else
  {
    v850 = -53;
  }

  v146 = v818 >= STACK[0x38B0];
  v851 = v818 - STACK[0x38B0];
  v852 = v831 + v828;
  STACK[0x1F20] = v842 - v843;
  v853 = v839 + v838;
  v854 = v833 + v832;
  v855 = v837 + v834;
  v856 = v850 + v849;
  v857 = v848 + v844;
  v858 = v841 + v840;
  if (v146)
  {
    v859 = 0;
  }

  else
  {
    v859 = -33;
  }

  v860 = v859 + v851;
  if (v845 >= STACK[0x2838])
  {
    v861 = 0;
  }

  else
  {
    v861 = -3;
  }

  STACK[0x1F30] = v845 - STACK[0x2838] + v861;
  v862 = v852 - STACK[0x2840];
  if (v852 >= STACK[0x2840])
  {
    v863 = 0;
  }

  else
  {
    v863 = -15;
  }

  STACK[0x1F10] = v862 + v863;
  v146 = v846 >= STACK[0x36A0];
  v864 = v846 - STACK[0x36A0];
  if (v146)
  {
    v865 = 0;
  }

  else
  {
    v865 = -5;
  }

  v866 = v855 - STACK[0x2860];
  if (v855 >= STACK[0x2860])
  {
    v867 = 0;
  }

  else
  {
    v867 = -9;
  }

  v146 = v860 >= STACK[0x2830];
  v868 = v860 - STACK[0x2830];
  if (v146)
  {
    v869 = 0;
  }

  else
  {
    v869 = -33;
  }

  STACK[0x1EF8] = v868 + v869;
  STACK[0x1F18] = v864 + v865;
  v146 = v857 >= STACK[0x2850];
  v870 = v857 - STACK[0x2850];
  if (v146)
  {
    v871 = 0;
  }

  else
  {
    v871 = -39;
  }

  STACK[0x1EE8] = v870 + v871;
  STACK[0x1F28] = v866 + v867;
  v872 = v858 - STACK[0x2858];
  if (v858 >= STACK[0x2858])
  {
    v873 = 0;
  }

  else
  {
    v873 = -17;
  }

  STACK[0x1F08] = v872 + v873;
  v874 = v853 - STACK[0x2820];
  if (v853 >= STACK[0x2820])
  {
    v875 = 0;
  }

  else
  {
    v875 = -47;
  }

  v146 = v854 >= STACK[0x2828];
  v876 = v854 - STACK[0x2828];
  v877 = -45;
  if (v146)
  {
    v877 = 0;
  }

  v146 = v856 >= v774;
  v878 = v856 - v774;
  if (v146)
  {
    v879 = 0;
  }

  else
  {
    v879 = -53;
  }

  STACK[0x1F00] = v878 + v879;
  STACK[0x1EE0] = v874 + v875;
  STACK[0x1EF0] = v876 + v877;
  v880 = *(STACK[0x3AC0] + 8 * SLODWORD(STACK[0x3A28]));
  STACK[0x3778] = STACK[0x3158];
  STACK[0x38D0] = STACK[0x30F0];
  STACK[0x38D8] = STACK[0x32B8];
  STACK[0x2128] = STACK[0x3AA0];
  STACK[0x3768] = STACK[0x3160];
  STACK[0x3770] = STACK[0x3168];
  STACK[0x3888] = STACK[0x3AD8];
  STACK[0x3880] = STACK[0x3AA8];
  STACK[0x38C8] = STACK[0x30F8];
  STACK[0x3758] = STACK[0x3170];
  STACK[0x37D0] = STACK[0x3410];
  STACK[0x3750] = STACK[0x3178];
  STACK[0x3760] = STACK[0x3180];
  STACK[0x37C8] = STACK[0x3418];
  STACK[0x38C0] = STACK[0x3100];
  STACK[0x38F8] = STACK[0x32C0];
  v881 = STACK[0x3588];
  STACK[0x3A18] = STACK[0x3588];
  STACK[0x3788] = v881;
  STACK[0x38B8] = STACK[0x32C8];
  STACK[0x2120] = STACK[0x3A30];
  STACK[0x3678] = STACK[0x3188];
  STACK[0x37C0] = STACK[0x3420];
  STACK[0x3670] = STACK[0x3108];
  STACK[0x3748] = STACK[0x3260];
  STACK[0x3668] = STACK[0x3110];
  STACK[0x37B8] = STACK[0x3428];
  STACK[0x3740] = STACK[0x30D8];
  STACK[0x3660] = STACK[0x30E0];
  LODWORD(STACK[0x3680]) = STACK[0x30EC];
  v882 = STACK[0x3988];
  STACK[0x3AA0] = STACK[0x3988];
  STACK[0x39B8] = v882;
  STACK[0x3738] = STACK[0x3190];
  STACK[0x37A8] = STACK[0x32D0];
  STACK[0x3878] = STACK[0x3AB8];
  STACK[0x3658] = STACK[0x3118];
  STACK[0x2118] = STACK[0x3A90];
  STACK[0x3650] = STACK[0x3120];
  STACK[0x3648] = STACK[0x3198];
  v883 = STACK[0x3580];
  STACK[0x3718] = STACK[0x3580];
  STACK[0x38F0] = v883;
  STACK[0x3640] = STACK[0x3268];
  STACK[0x37B0] = STACK[0x3430];
  STACK[0x3638] = STACK[0x3270];
  STACK[0x2110] = STACK[0x3A40];
  STACK[0x3870] = STACK[0x3940];
  STACK[0x3630] = STACK[0x31A0];
  STACK[0x3730] = STACK[0x3278];
  STACK[0x3628] = STACK[0x31A8];
  STACK[0x3720] = STACK[0x31B0];
  STACK[0x3620] = STACK[0x31B8];
  STACK[0x3728] = STACK[0x32D8];
  STACK[0x3798] = STACK[0x3218];
  STACK[0x3510] = STACK[0x3AD0];
  STACK[0x38B0] = STACK[0x3220];
  STACK[0x3618] = STACK[0x3228];
  STACK[0x3708] = STACK[0x3280];
  STACK[0x3610] = STACK[0x31C0];
  STACK[0x3868] = STACK[0x3948];
  STACK[0x3608] = STACK[0x31C8];
  v884 = STACK[0x39E0];
  STACK[0x3A90] = STACK[0x39E0];
  STACK[0x38E8] = v884;
  STACK[0x2108] = STACK[0x3A48];
  STACK[0x39C0] = STACK[0x32E0];
  STACK[0x2100] = STACK[0x3AE8];
  STACK[0x3600] = STACK[0x3288];
  STACK[0x3500] = STACK[0x3AC8];
  STACK[0x35F8] = STACK[0x3230];
  STACK[0x35F0] = STACK[0x3128];
  STACK[0x3508] = STACK[0x3558];
  STACK[0x3710] = STACK[0x32E8];
  STACK[0x36B8] = STACK[0x32F0];
  v885 = STACK[0x3570];
  STACK[0x36C8] = STACK[0x3570];
  STACK[0x2808] = v885;
  v886 = STACK[0x3698];
  STACK[0x39B0] = STACK[0x3698];
  STACK[0x37D8] = v886;
  v887 = STACK[0x3590];
  STACK[0x36D0] = STACK[0x3590];
  STACK[0x38E0] = v887;
  STACK[0x38A8] = STACK[0x32F8];
  STACK[0x3700] = STACK[0x3300];
  v888 = STACK[0x3990];
  STACK[0x3A10] = STACK[0x3990];
  STACK[0x3AE8] = v888;
  STACK[0x3860] = STACK[0x3AB0];
  STACK[0x35E8] = STACK[0x3130];
  STACK[0x34F8] = STACK[0x39A0];
  v889 = STACK[0x3578];
  STACK[0x3790] = STACK[0x3578];
  STACK[0x2800] = v889;
  STACK[0x3858] = STACK[0x3950];
  STACK[0x35E0] = STACK[0x31D0];
  STACK[0x35D8] = STACK[0x3290];
  STACK[0x34F0] = STACK[0x3998];
  STACK[0x36D8] = STACK[0x3238];
  STACK[0x35D0] = STACK[0x3138];
  STACK[0x35C8] = STACK[0x31D8];
  STACK[0x3530] = STACK[0x39A8];
  STACK[0x34E8] = STACK[0x3A78];
  STACK[0x36B0] = STACK[0x3248];
  STACK[0x35C0] = STACK[0x31E0];
  STACK[0x20F8] = STACK[0x3A58];
  STACK[0x34E0] = STACK[0x3A80];
  STACK[0x35B8] = STACK[0x3298];
  STACK[0x3850] = STACK[0x3910];
  STACK[0x35B0] = STACK[0x31F0];
  STACK[0x36A8] = STACK[0x3250];
  STACK[0x35A8] = STACK[0x3140];
  STACK[0x3848] = STACK[0x3918];
  STACK[0x20F0] = STACK[0x3A88];
  STACK[0x35A0] = STACK[0x32A0];
  STACK[0x20E8] = STACK[0x3A70];
  STACK[0x20E0] = STACK[0x3A38];
  STACK[0x20D8] = STACK[0x3A50];
  STACK[0x3838] = STACK[0x3920];
  STACK[0x3598] = STACK[0x3258];
  LODWORD(STACK[0x3900]) = STACK[0x36E0];
  STACK[0x3840] = STACK[0x3928];
  STACK[0x3A50] = 110;
  STACK[0x3780] = STACK[0x3908];
  STACK[0x36C0] = STACK[0x1FE0];
  STACK[0x1ED8] = STACK[0x36F0];
  STACK[0x1ED0] = STACK[0x37E0];
  STACK[0x3A48] = STACK[0x3A68];
  return v880();
}

void *sub_1000BDFAC@<X0>(int a1@<W8>)
{
  v1 = STACK[0x8B0];
  STACK[0xBA0] = *(STACK[0x8B0] + 8 * a1);
  return (*(v1 + 8 * (((a1 - 128336227) & 0x7A67DF9 ^ 0x3AE) + a1)))(&STACK[0xF38]);
}

uint64_t sub_1000BE158@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = *(STACK[0x5E0] + 260) & 1;
  *(v40 - 208) = ((a1 - 66857678) ^ 0x15) + a39;
  *(v40 - 240) = v41 ^ a39;
  *(v40 - 216) = a39;
  *(v40 - 224) = a39;
  *(v40 - 220) = (a1 - 66857678) ^ a39;
  *(v40 - 232) = a1 - 66857678 - a39 - 4136;
  *(v40 - 228) = a39 + a1 - 1632379223;
  v42 = (*(v39 + 8 * (a1 ^ 0xB7D0FFA5)))(v40 - 240);
  return (*(v39 + 8 * *(v40 - 204)))(v42);
}

uint64_t sub_1000BE248(unint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  STACK[0x6A0] = a4;
  STACK[0x890] = *(a4 + 24);
  STACK[0x6C0] = (2 * a1) & 0x1FDF97F2ELL;
  STACK[0x6B0] = a1;
  return (*(STACK[0x8B0] + 8 * (v5 ^ 0xF7FAFEBD ^ (4 * ((a2 ^ v4) < 8)))))(0xE06274D54C53AC85, 0x45ECD127E24B9A0BLL);
}

uint64_t sub_1000BE4A0()
{
  STACK[0x1348] = 0;
  STACK[0x1588] = 0;
  return (*(v2 + 8 * (((((v0 == 0x308E083E0C524CBELL) ^ (31 * (v1 ^ 0x17))) & 1) * ((v1 ^ 0x7617) - 469)) ^ v1)))();
}

uint64_t sub_1000BE644@<X0>(char a1@<W1>, unint64_t a2@<X8>)
{
  v6 = *(v2 - 0x683CBC57EAB92A3ELL);
  STACK[0x10F0] = a2;
  STACK[0x940] = 0;
  v8 = v6 == v4 || a2 == 0;
  return (*(v5 + 8 * (((((v3 - a1 - 72) ^ v8) & 1) * ((v3 + 1578816370) & 0xA1E575BC ^ 0x7455)) ^ v3)))();
}

uint64_t sub_1000BEA4C()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x33CB)))();
  *v1 = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1000BEA78@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, int8x16_t a9@<Q3>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v28 = vld4q_s8(a1);
  v19 = veorq_s8(v28.val[2], a9);
  _Q22 = vmovl_high_u8(v19);
  _Q21 = vmovl_u8(*v19.i8);
  v22 = vshll_n_s16(*_Q21.i8, 0x10uLL);
  __asm
  {
    SHLL2           V21.4S, V21.8H, #0x10
    SHLL2           V22.4S, V22.8H, #0x10
  }

  *v17 = veorq_s8(vbslq_s8(vorrq_s8(vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v28.val[1], a9)), 8uLL), vmovl_u16(*&vmovl_u8(*&veorq_s8(v28.val[0], a9)))), v22), vdupq_n_s32(0x81F1B5u), veorq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v28.val[3], a9))), 0x18uLL), vdupq_n_s32(0x507E0E4Au))), vdupq_n_s32(0xFFB41634)).u32[0];
  return (*(a8 + 8 * v18))(&off_101353600, a2, ((v18 - 17542) | 0x5008) - 1135841559, a3, a4, a5, a6, a7, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1000BED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x870];
  LODWORD(STACK[0x17E0]) = STACK[0x880];
  STACK[0x1668] = *(v4 + 8 * v5);
  return (*(v4 + 8 * ((((2 * v5) ^ 0x2182) - 4479) ^ v5)))(a1, &STACK[0x1D80], 0x6E868681D78450C4, a4, 3083895697);
}

uint64_t sub_1000BEE20(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  v66 = *(&a61 + (1633 * v65 + 2129432) % (v61 ^ 0x2C7Bu));
  v67 = *(v64 + 4 * (3677 * (v66 | ((v66 < 0x5F) << 8)) + 17664308 - ((((3677 * (v66 | ((v66 < 0x5F) << 8)) + 17664308) * v62) >> 32) >> 12) * a4));
  v68 = 1633 * (((v67 ^ 0x1F9A4CC2) + 1024910687) ^ ((v67 ^ 0x53941A66) + 1897444347) ^ ((v67 ^ 0x4C0E56D6) + 1854078795)) - 1661824801;
  v69 = 1633 * ((((v67 >> 8) & 0xF ^ 0x44264CF) & ((v67 >> 8) & 0xF0 ^ 0x442642F) | (v67 >> 8) & 0x30) ^ 0x44264C2) + 3837550;
  v70 = 1633 * (((BYTE2(v67) ^ 0x1769AB31) - 209176948) ^ ((BYTE2(v67) ^ 0xB05A3189) + 1421585460) ^ ((BYTE2(v67) ^ 0xA7339A4C) + 1137838071)) - 49407617;
  v71 = *(&a61 + (1633 * (((HIBYTE(v67) ^ 0x5974E93D) - 801529513) ^ ((HIBYTE(v67) ^ 0xA16185C6) + 674024878) ^ ((HIBYTE(v67) ^ 0xF8156C0E) + 1901601894)) + 708726831) % 0xA88);
  v72 = *(&a61 + v70 % 0xA88);
  LOBYTE(v70) = *(&a61 + v68 % 0xA88);
  v73 = v71 & 0xFFFFFFF1 ^ 0x28;
  v74 = v72 & 0x41 ^ 0xD0;
  v75 = v72 ^ 0x20;
  v76 = *(&a61 + v69 % 0xA88);
  v77 = v76 & 0xA1 | 0xC;
  v78 = v77 ^ v76 & 0x18;
  LOBYTE(v69) = v76 ^ 0x20;
  v79 = v76 ^ (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * (v69 & (2 * v77) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78));
  v80 = (v72 ^ (2 * (v75 & (2 * (v75 & (2 * (v75 & (2 * (v75 & (2 * (v75 & (2 * (((2 * v72) & 0xC2 | 0x21) & v72)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74))) << 8;
  v81 = ((((v71 ^ 0x20) & (2 * ((v71 ^ 0x20) & (2 * ((v71 ^ 0x20) & (2 * ((v71 ^ 0x20) & (2 * ((v71 ^ 0x20) & (2 * ((v71 ^ 0x20) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73) << 17) ^ (v71 << 16) ^ 0xCF820F) & (v80 ^ 0xFFD7AF) | v80 & 0x7D00;
  LOBYTE(v80) = v70 & 0x61 ^ 0xE0;
  LOBYTE(v70) = v70 ^ (2 * ((v70 ^ 0x20) & (2 * ((v70 ^ 0x20) & (2 * ((v70 ^ 0x20) & (2 * ((v70 ^ 0x20) & (2 * (v70 & (2 * (((2 * v70) & 0xC2 | 0x21) & v70)) ^ v80)) ^ v80)) ^ v80)) ^ v80)) ^ v80));
  *(v64 + 4 * (v63 + 3677 * v65 - ((((v63 + 3677 * v65) * v62) >> 32) >> 12) * a4)) = (((((v81 ^ 0x85C7D9) & (v79 ^ 0xFFFF66) ^ v79 & 0x29) << 8) ^ 0x77F3CB8) & (v70 ^ 0xFFFFFFDF) | v70 & 0x47) ^ 0x498F0E8B;
  return (*(a60 + 8 * ((482 * (v65 == 255)) ^ v61)))();
}

uint64_t sub_1000BF228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = v68 + v70 + 1;
  v73 = STACK[0x1880];
  *(v71 - 216) = a66;
  *(v71 - 240) = v73 ^ a66;
  *(v71 - 208) = (v72 | 0xA13EC5C8) + a66;
  *(v71 - 232) = -1589721707 - a66 + v72 + 1426;
  *(v71 - 228) = a66 + v70 - 1632379223;
  *(v71 - 224) = a66;
  *(v71 - 220) = (-1589721707 - v67 - v66 + 2 * v72) ^ a66;
  v74 = (*(v69 + 8 * (v70 ^ 0xB7D0FFA5)))(v71 - 240);
  return (*(v69 + 8 * *(v71 - 204)))(v74);
}

uint64_t sub_1000BF2CC(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, int a6)
{
  v8 = a6 - 2135286262 < a4;
  if (LODWORD(STACK[0x648]) > v6 != (a6 - 2135286262) < 0xF5CCC33F)
  {
    v8 = LODWORD(STACK[0x648]) > v6;
  }

  return (*(STACK[0x6D8] + 8 * ((v8 * v7) ^ a3)))();
}

uint64_t sub_1000BF82C()
{
  STACK[0x1768] = v3;
  LODWORD(STACK[0x17C4]) = v1;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1000BF84C(int a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8)
{
  LODWORD(STACK[0x3A48]) = 0;
  v21 = LODWORD(STACK[0x39D8]) ^ 0x2755u;
  STACK[0x3AB8] = v21;
  v22 = (a3 << 56) | (v11 << 48) | (v12 << 24) | (a6 << 8) | (v18 << 32) | (v8 << 40) | a5 | (a8 << 16);
  v23 = ((*(v17 + STACK[0x3598]) ^ 0xE3) >> 3) | (32 * (*(v17 + STACK[0x3598]) ^ 0xE3));
  STACK[0x3A78] = v16;
  v24 = ((v15 << (v21 + 84)) + (a4 << 40) + (v9 << 16) + (v14 << 48) + (v10 << 56) + a7 + (v19 << 8)) | (v16 << 24);
  v25 = ((*(v17 + STACK[0x3590]) ^ 0xE3) >> 3) | (32 * (*(v17 + STACK[0x3590]) ^ 0xE3));
  LODWORD(STACK[0x3AE8]) = v14;
  v26 = STACK[0x3A60];
  v27 = *(STACK[0x3A60] + 8 * (1291 * (v23 ^ 0xD6) + 330496 - 3108 * ((1381908 * (1291 * (v23 ^ 0xD6u) + 330496)) >> 32)));
  v28 = 2 * v27 + 0xEB71AE962ALL;
  v29 = STACK[0x3588];
  LODWORD(STACK[0x3A80]) = a4;
  v30 = ((*(v17 + v29) ^ 0xE3) >> 3) | (32 * (*(v17 + v29) ^ 0xE3));
  v31 = *(v17 + STACK[0x3580]) ^ 0xE3;
  v32 = v11;
  v33 = *(v17 + STACK[0x3578]);
  STACK[0x3A70] = v10;
  v34 = (v31 >> 3) | (32 * v31);
  v35 = 1291 * ((((v33 ^ 0xE) >> 3) | (32 * (v33 ^ 0xE))) ^ 0xD6) + 330496;
  v36 = *(v26 + 8 * (v35 - 3108 * ((1381908 * v35) >> 32)));
  STACK[0x39E0] = v19;
  STACK[0x3AD8] = v12;
  HIDWORD(v37) = a1;
  LODWORD(v37) = v19 << 24;
  v38 = *(v17 + STACK[0x3568]) + 117;
  STACK[0x3630] = v22 ^ 0x65824E35D596C258;
  STACK[0x3638] = v24 ^ 0xD17706638CA73F56;
  v39 = *(v26 + 8 * (1291 * (v25 ^ 5) + 3647075 - 3108 * (((5527629 * (1291 * (v25 ^ 5u) + 3647075)) >> 32) >> 2)));
  STACK[0x3AD0] = a5;
  v40 = v27 + 0xF977E7DF92;
  v41 = *(v26 + 8 * (1291 * (v30 ^ 0xA1) + 3647075 - 3108 * (((5527629 * (1291 * (v30 ^ 0xA1u) + 3647075)) >> 32) >> 2))) ^ 0xFF3D18D43634272ELL;
  LODWORD(v39) = ((v39 ^ 0xFF3D18D43634272ELL) >> 17) ^ ((v39 ^ 0xFF3D18D43634272ELL) >> 21) ^ ((v39 ^ 0xFF3D18D43634272ELL) >> 16) ^ ((v28 ^ v40) >> 8);
  v42 = *(v26 + 8 * (1291 * (v34 ^ 0xA1) + 3647075 - 3108 * (((5527629 * (1291 * (v34 ^ 0xA1u) + 3647075)) >> 32) >> 2))) ^ 0xFF3D18D43634272ELL;
  v43 = 1291 * ((97 * (*(v17 + STACK[0x3570]) ^ 0x27)) ^ 0xA1) + 3647075;
  v44 = *(v26 + 8 * (v43 - 3108 * (((5527629 * v43) >> 32) >> 2))) ^ 0xFF3D18D43634272ELL;
  LODWORD(STACK[0x3998]) = v39 ^ (v41 >> 25) ^ (v41 >> 29) ^ (v41 >> 24) ^ (v42 >> 33) ^ (v42 >> 37) ^ HIDWORD(v42) ^ 0x9A4C0498;
  LODWORD(v42) = ((v37 >> 25) ^ 0x40) * v20 + 15539568;
  LODWORD(v39) = (v44 >> 25) ^ (v44 >> 29) ^ (v44 >> 24) ^ (((2 * v36 + 0xDAEB71AE962ALL) ^ (v36 + 0xCFF977E7DF92)) >> 16);
  LODWORD(v41) = 1291 * (((v38 ^ 0x12 ^ (v38 >> 2) & 0x12) + 26) ^ 0xFA) + 330496;
  v45 = *(v26 + 8 * (v41 - 3108 * ((1381908 * v41) >> 32)));
  v46 = 1291 * ((97 * (*(v17 + STACK[0x3558]) ^ 0x27)) ^ 0x85) + 330496;
  LODWORD(v21) = LODWORD(STACK[0x3808]) ^ 0x54;
  LODWORD(STACK[0x3980]) = 97 * (*(v17 + v42 - (((1266205 * v42) >> 32) >> 1) * v13) ^ 0xFFFFFFA2);
  v47 = (2 * v45 - 0xFE925148E5169D6) ^ (v45 + 0x4577CFF977E7DF92);
  v48 = *(v26 + 8 * (v46 - 3108 * ((1381908 * v46) >> 32)));
  v49 = *(v26 + 8 * STACK[0x3550]) ^ 0xFF3D18D43634272ELL;
  LODWORD(v21) = *(v17 + v21 * v20 + 9544938 - (((1266205 * (v21 * v20 + 9544938)) >> 32) >> 1) * v13) - 87;
  LODWORD(v44) = (((v8 >> 1) | (v8 << 7)) ^ 0x40) * v20 + 15539568;
  LODWORD(STACK[0x3990]) = v39 ^ HIDWORD(v47) ^ (((2 * v48 + 0xEB71AE962ALL) ^ (v48 + 0xF977E7DF92)) >> 8) ^ 0xB84AC7E1;
  v50 = *(v26 + 8 * STACK[0x3548]);
  LODWORD(v48) = v44 - (((1266205 * v44) >> 32) >> 1) * v13;
  v51 = *(v26 + 8 * STACK[0x3540]);
  LODWORD(v47) = *(v17 + v48);
  LODWORD(STACK[0x3950]) = (v21 ^ 0xFFFFFFFB) + 85;
  LODWORD(v21) = (((2 * v50 + 0x16DAEB71AE962ALL) ^ (v50 + 0x77CFF977E7DF92)) >> 24) ^ (v49 >> 17) ^ (v49 >> 21) ^ (v49 >> 16);
  v52 = *(v26 + 8 * STACK[0x3538]);
  LODWORD(STACK[0x3958]) = 97 * (v47 ^ 0xFFFFFFA2);
  LODWORD(v49) = 1291 * ((((*(v17 + STACK[0x3528]) - 87) ^ 0xFB) + 85) ^ 0xD6) + 330496;
  v53 = LODWORD(STACK[0x3810]) ^ 0x28;
  LODWORD(STACK[0x3988]) = v21 ^ (((2 * v51 - 0xFE925148E5169D6) ^ (v51 + 0x4577CFF977E7DF92)) >> 32) ^ ((*(v26 + 8 * STACK[0x3530]) ^ 0xFF3D18D43634272ELL) >> 9) ^ ((*(v26 + 8 * STACK[0x3530]) ^ 0xFF3D18D43634272ELL) >> 13) ^ (*(v26 + 8 * STACK[0x3530]) >> 8) ^ 0xEACBE54F;
  LODWORD(v21) = v53;
  v54 = *(v26 + 8 * (v49 - 3108 * ((1381908 * v49) >> 32)));
  LOBYTE(v47) = LODWORD(STACK[0x39F0]) ^ LODWORD(STACK[0x3858]);
  v55 = *(v26 + 8 * STACK[0x3520]);
  LODWORD(v49) = *(v17 + v21 * v20 + 9544938 - (((1266205 * (v21 * v20 + 9544938)) >> 32) >> 1) * v13) - 87;
  LODWORD(STACK[0x3A20]) ^= LODWORD(STACK[0x39D0]);
  LOBYTE(v21) = v47 + 111;
  LODWORD(v28) = (LODWORD(STACK[0x3860]) ^ LODWORD(STACK[0x3A00])) ^ 0xFE;
  LODWORD(v47) = 1291 * ((97 * (*(v17 + STACK[0x3518]) ^ 0x27)) ^ 0xD6) + 330496;
  v56 = *(v26 + 8 * (v47 - 3108 * ((1381908 * v47) >> 32)));
  v57 = STACK[0x3AE8];
  LODWORD(STACK[0x3948]) = (v49 ^ 0xFFFFFFFB) + 85;
  LODWORD(STACK[0x3A28]) ^= LODWORD(STACK[0x3868]);
  LODWORD(v49) = *(v17 + v28 * v20 + 13123128 - (((1266205 * (v28 * v20 + 13123128)) >> 32) >> 1) * v13) - 71;
  LOBYTE(v51) = LODWORD(STACK[0x39B8]) ^ STACK[0x3888];
  LODWORD(STACK[0x39A8]) ^= STACK[0x3898];
  LOBYTE(v28) = LODWORD(STACK[0x3A40]) ^ STACK[0x3878];
  LODWORD(v54) = (((2 * v54 - 0xFE925148E5169D6) ^ (v54 + 0x4577CFF977E7DF92)) >> 32) ^ ((v52 ^ 0xFF3D18D43634272ELL) >> 25) ^ ((v52 ^ 0xFF3D18D43634272ELL) >> 29) ^ ((v52 ^ 0xFF3D18D43634272ELL) >> 24) ^ (((2 * v55 + 0xEB71AE962ALL) ^ (v55 + 0xF977E7DF92)) >> 8);
  LODWORD(STACK[0x3A10]) ^= LODWORD(STACK[0x3880]);
  LODWORD(STACK[0x39B0]) ^= STACK[0x38A8];
  LODWORD(STACK[0x3A38]) ^= STACK[0x3890];
  LODWORD(STACK[0x39E8]) ^= STACK[0x3820];
  LODWORD(v55) = ((v51 + 111) ^ 0x36) * v20 + 17937420;
  LODWORD(STACK[0x3A18]) ^= LODWORD(STACK[0x39C8]);
  LODWORD(v55) = *(v17 + v55 - (((1266205 * v55) >> 32) >> 1) * v13);
  LODWORD(STACK[0x3A00]) = (v49 ^ (v49 << 6) ^ (4 * v49) ^ 0xFFFFFFFE) + 26;
  LODWORD(STACK[0x3A30]) ^= STACK[0x38A0];
  LODWORD(STACK[0x39F8]) ^= STACK[0x3840];
  LODWORD(STACK[0x3978]) = v54 ^ 0xAB6CB3A9 ^ (((2 * v56 + 0xDAEB71AE962ALL) ^ (v56 + 0xCFF977E7DF92)) >> 16);
  LODWORD(v21) = *(v17 + (v21 ^ 0x1C) * v20 + 4767822 - (((1266205 * ((v21 ^ 0x1Cu) * v20 + 4767822)) >> 32) >> 1) * v13) ^ 0xFFFFFFE3;
  LODWORD(STACK[0x39B8]) = ((v55 ^ 0xE) >> 3) | (32 * (v55 ^ 0xE));
  LODWORD(STACK[0x39F0]) = (v21 >> 3) | (32 * v21);
  LODWORD(v21) = (((v28 >> 1) | (v28 << 7)) ^ 0x40) * v20 + 15539568;
  v58 = STACK[0x3AD8];
  LODWORD(STACK[0x39A0]) ^= STACK[0x3828];
  LODWORD(v21) = *(v17 + v21 - (((1266205 * v21) >> 32) >> 1) * v13) ^ 0xFFFFFFA2;
  LODWORD(STACK[0x3A08]) ^= STACK[0x3870];
  LODWORD(STACK[0x3A40]) = 97 * v21;
  v59 = *(STACK[0x3AC0] + 8 * SLODWORD(STACK[0x39D8]));
  LODWORD(STACK[0x3940]) = STACK[0x3A98];
  LODWORD(STACK[0x3970]) = STACK[0x3A90];
  LODWORD(STACK[0x3938]) = STACK[0x3AD0];
  LODWORD(STACK[0x3930]) = STACK[0x3AA8];
  LODWORD(STACK[0x3928]) = STACK[0x3A70];
  LODWORD(STACK[0x3920]) = v57;
  LODWORD(STACK[0x3960]) = STACK[0x3A88];
  LODWORD(STACK[0x3918]) = STACK[0x3A78];
  LODWORD(STACK[0x3910]) = v58;
  LODWORD(STACK[0x3968]) = v32;
  LODWORD(STACK[0x3908]) = STACK[0x3A80];
  LODWORD(STACK[0x3900]) = STACK[0x3AA0];
  return v59();
}

uint64_t sub_1000C33B8@<X0>(uint64_t a1@<X8>)
{
  *v3 = (v2 ^ v5) * (v2 + 17);
  *(v3 - 1) = (v2 ^ 0xBB) * (v2 + 18);
  return (*(a1 + 8 * (((v4 == 0) * v6) ^ v1)))();
}

uint64_t sub_1000C3400()
{
  STACK[0x14F8] = STACK[0xFF8];
  LODWORD(STACK[0x14BC]) = STACK[0x1028];
  return (*(v2 + 8 * (((((v0 - 1) ^ (LODWORD(STACK[0xD78]) == -143113071)) & 1) * (v0 ^ 0xB7D0BF59 ^ (v1 + 39))) ^ v0)))();
}

uint64_t sub_1000C34F8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA40]) = -143113071;
  LOBYTE(STACK[0x9C3]) = v1;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1000C380C()
{
  v3 = (*(v2 + 8 * (v0 + 24720)))();
  *(v1 - 0x30BDFED8F32E6501) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1000C3898@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 0x55A8D952E5D46856) = 32;
  *(v3 - 0x55A8D952E5D46877) = *(a1 - 0x79CEC8CF5A6FCE83);
  *(v3 - 0x55A8D952E5D46878) = *(a1 - 0x79CEC8CF5A6FCE84);
  *(v3 - 0x55A8D952E5D46879) = *(a1 - 0x79CEC8CF5A6FCE85);
  *(v3 - 0x55A8D952E5D4687ALL) = *(a1 - 0x79CEC8CF5A6FCE86);
  *(v3 - 0x55A8D952E5D4687BLL) = *(a1 - 0x79CEC8CF5A6FCE87);
  *(v3 - 0x55A8D952E5D4687CLL) = *(a1 - 0x79CEC8CF5A6FCE88);
  *(v3 - 0x55A8D952E5D4687DLL) = *(a1 - 0x79CEC8CF5A6FCE89);
  *(v3 - 0x55A8D952E5D4687ELL) = *(a1 - 0x79CEC8CF5A6FCE8ALL);
  *(v3 - 0x55A8D952E5D4687FLL) = *(a1 - 0x79CEC8CF5A6FCE8BLL);
  *(v3 - 0x55A8D952E5D46880) = *(a1 - 0x79CEC8CF5A6FCE8CLL);
  *(v3 - 0x55A8D952E5D46881) = *(a1 - 0x79CEC8CF5A6FCE8DLL);
  *(v3 - 0x55A8D952E5D46882) = *(a1 - 0x79CEC8CF5A6FCE8ELL);
  *(v3 - 0x55A8D952E5D46883) = *(a1 - 0x79CEC8CF5A6FCE8FLL);
  *(v3 - 0x55A8D952E5D46884) = *(a1 - 0x79CEC8CF5A6FCE90);
  *(v3 - 0x55A8D952E5D46885) = *(a1 - 0x79CEC8CF5A6FCE91);
  *(v3 - 0x55A8D952E5D46886) = *(a1 - 0x79CEC8CF5A6FCE92);
  *(v3 - 0x55A8D952E5D46887) = *(a1 - 0x79CEC8CF5A6FCE93);
  *(v3 - 0x55A8D952E5D46888) = *(a1 - 0x79CEC8CF5A6FCE94);
  *(v3 - 0x55A8D952E5D46889) = *(a1 - 0x79CEC8CF5A6FCE95);
  *(v3 - 0x55A8D952E5D4688ALL) = *(a1 - 0x79CEC8CF5A6FCE96);
  *(v3 - 0x55A8D952E5D4688BLL) = *(a1 - 0x79CEC8CF5A6FCE97);
  *(v3 - 0x55A8D952E5D4688CLL) = *(a1 - 0x79CEC8CF5A6FCE98);
  *(v3 - 0x55A8D952E5D4688DLL) = *(a1 - 0x79CEC8CF5A6FCE99);
  *(v3 - 0x55A8D952E5D4688ELL) = *(a1 - 0x79CEC8CF5A6FCE9ALL);
  *(v3 - 0x55A8D952E5D4688FLL) = *(a1 - 0x79CEC8CF5A6FCE9BLL);
  *(v3 - 0x55A8D952E5D46890) = *(a1 - 0x79CEC8CF5A6FCE9CLL);
  *(v3 - 0x55A8D952E5D46891) = *(a1 - 0x79CEC8CF5A6FCE9DLL);
  *(v3 - 0x55A8D952E5D46892) = *(a1 - 0x79CEC8CF5A6FCE9ELL);
  *(v3 - 0x55A8D952E5D46893) = *(a1 - 0x79CEC8CF5A6FCE9FLL);
  *(v3 - 0x55A8D952E5D46894) = *(a1 - 0x79CEC8CF5A6FCEA0);
  *(v3 - 0x55A8D952E5D46895) = *(a1 - 0x79CEC8CF5A6FCEA1);
  *(v3 - 0x55A8D952E5D46896) = *v2;
  return (*(v4 + 8 * v1))();
}

uint64_t sub_1000C3DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = v11;
  v18 = v13 + v11;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = v19 - ((2 * v19 + 0x1C16CA83C926BAC6) & 0x37A3144C0450FA9CLL) - 0x162310981944254FLL;
  v21 = v20 ^ 0x7469D4B7261CCDCALL;
  v22 = v20 ^ (((v9 - 15266) | 0x1A10u) + 0x432FEB802860CA0);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x55DBAB481E561132) - (v23 + v22) + 0x55122A5BF0D4F767) ^ 0xB596473022C42976;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0x6045A079B65418D4) - 0x4FDD2FC324D5F396) ^ 0xAC200F67FEA86F87;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v15;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x224C09CA440C0C0BLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a7;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = v11 + 1;
  *(v14 + v17) = *v18 ^ (((__ROR8__((v12 - ((v35 + v34) | v12) + ((v35 + v34) | 0x477FBDD1C93B14D1)) ^ 0xF5FD83C5690717B6, 8) + ((v12 - ((v35 + v34) | v12) + ((v35 + v34) | 0x477FBDD1C93B14D1)) ^ 0xF5FD83C5690717B6 ^ __ROR8__(v34, 61))) ^ a8) >> (8 * (v18 & 7u))) ^ 0xF;
  if (v10 < v8 != v36 > 0x74D7701E)
  {
    v37 = v10 < v8;
  }

  else
  {
    v37 = v36 + v8 < v10;
  }

  return (*(v16 + 8 * (!v37 | (8 * !v37) | v9)))();
}

uint64_t sub_1000C3FCC(int a1)
{
  v5 = *(&STACK[0x320] + (v2 + (v1 ^ 0x422Eu) * a1) % 0xA88);
  v6 = *(&STACK[0xDE0] + (825 * (v5 | ((v5 < 0x60) << 8)) + 4164600) % 0x1940);
  v7 = *(&STACK[0x320] + (2361 * (((HIBYTE(v6) ^ 0x76EC9659) + 1465660086) ^ ((HIBYTE(v6) ^ 0xA90B4973) - 2000949856) ^ ((HIBYTE(v6) ^ 0xDFE7DF56) - 27821125)) + 1242608312) % 0xA88);
  v8 = v7 & 0xE2 ^ 0x21;
  v9 = *(&STACK[0x320] + (2361 * (((BYTE1(v6) ^ 0x911E6129) - 1106337683) ^ ((BYTE1(v6) ^ 0xA89750E2) - 2021158488) ^ ((BYTE1(v6) ^ 0x39893178) + 379187262)) - 291401470) % 0xA88);
  v10 = *(&STACK[0x320] + 2361 * ((((((v6 >> 7) & 0x1FE00 ^ 0x2F1EAADB) - 1958444194) ^ (((v6 >> 7) & 0x1FE00 ^ 0x65BE7505) - 1041998716) ^ (((v6 >> 7) & 0x1FE00 ^ 0x4AA01FDE) - 285591975)) + 1538205817) >> 9) % 0xA88);
  v11 = v10 & 0x4C ^ 0xD6;
  v12 = v7 ^ (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * ((v7 ^ 0x20) & (2 * (v7 & (2 * v8) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8));
  v13 = (v10 ^ (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & (2 * ((v10 ^ 0x20) & 0x2C ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) << 8;
  v14 = v9 & 0xE ^ 0x77;
  v15 = v9 ^ (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & (2 * ((v9 ^ 0x20) & 0x2E ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  v16 = *(&STACK[0x320] + (2361 * (((v6 ^ 0x35F7C102) + 1928619327) ^ ((v6 ^ 0x87ADF9AC) - 1062314607) ^ ((v6 ^ 0xB25A3847) - 178676612)) + 261305947) % 0xA88);
  v17 = v16 & 0x36 ^ 0xCB;
  v18 = v16 ^ (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * ((v16 ^ 0x20) & (2 * (v17 ^ v16 & 0x16)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  HIDWORD(v19) = ((((((((v12 << 16) ^ 0xC4B117) & ~v13 | v13 & 0x4E00) ^ 0xAA7CF) & (v15 ^ 0xFFFFD1) | v15 & 0x27) << 8) ^ 0x9CB4A08A) & (v18 ^ 0xFFFFFFF8) | v18 & 0x75) ^ 0xB0EE7EBE;
  LODWORD(v19) = HIDWORD(v19);
  *(&STACK[0xDE0] + (v3 + 825 * a1) % 0x1940u) = __ROR4__((v19 >> 22) - ((2 * (v19 >> 22)) & 0xFC564F9E) - 30726193, 10) ^ 0x8F9F3920;
  return (*(v4 + 8 * ((15 * (a1 != 255)) ^ v1)))();
}

uint64_t sub_1000C4414@<X0>(int a1@<W8>)
{
  *(v7 - 128) = v5;
  v8 = (v4 + 38) | 0x108;
  *(v7 - 180) = v8;
  v9 = ((-2109248969 * v1) >> 2) - (v1 << 30);
  v10 = (-1093113856 * v3) | ((-508044531 * v3) >> 21);
  HIDWORD(v12) = a1;
  LODWORD(v12) = -760118513 * a1;
  v11 = v12 >> 1;
  v13 = v9 + v11 + ((((-761707533 * v2) >> (v8 + 118)) + ((v4 + 38) ^ 0x4A65236C) * v2) ^ v10);
  v14 = ((-840472799 * v13) >> 8) | (553648128 * v13);
  v15 = (-281006080 * v9) | ((-1090587645 * v9) >> 20);
  v16 = (-1209925632 * v11) | ((-466691087 * v11) >> 15);
  v17 = v15 - v16 + 1269648128 * v10 + ((139177291 * v10) >> 24);
  v18 = (-620756992 * v16) | ((-1372954661 * v16) >> 8);
  v19 = (1744830464 * v14) | ((142481677 * v14) >> 5);
  v20 = (1121182520 * v19) | ((-1470464921 * v19) >> 29);
  *(v7 - 100) = (v4 + 38) ^ 0x34F3;
  v21 = (-1677721600 * (v17 + v14)) | ((-1608634009 * (v17 + v14)) >> 6);
  v22 = v18 - 1295429728 * v15 + ((-308917635 * v15) >> 27) - v19 + v21;
  v23 = (1933574144 * v21) | ((-1954830899 * v21) >> 10);
  v24 = (-263782400 * v22) | ((-2125139897 * v22) >> 16);
  v25 = ((369098752 * v18) | ((-1791091701 * v18) >> 7)) + v20 - v23 + v24 + 1238987445;
  v26 = (v23 + (v20 ^ 0x173B3E52) + ((2 * v20) & 0x2E767CA4)) ^ v24;
  v27 = (v25 ^ 0xA5B4ED6A) & (2 * (v25 & 0xB6268D4B)) ^ v25 & 0xB6268D4B;
  v28 = ((2 * (v25 ^ 0x85F5ED6C)) ^ 0x67A6C04E) & (v25 ^ 0x85F5ED6C) ^ (2 * (v25 ^ 0x85F5ED6C)) & 0x33D36026;
  v29 = v28 ^ 0x10512021;
  v30 = (v28 ^ 0x21824004) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0xCF4D809C) & v29 ^ (4 * v29) & 0x33D36024;
  v32 = (v31 ^ 0x3410000) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x30926023)) ^ 0x3D360270) & (v31 ^ 0x30926023) ^ (16 * (v31 ^ 0x30926023)) & 0x33D36020;
  v34 = v32 ^ 0x33D36027 ^ (v33 ^ 0x31120000) & (v32 << 8);
  v35 = v25 ^ (v26 - ((2 * v26) & 0x51D7696A) - 1460947787) ^ (2 * ((v34 << 16) & 0x33D30000 ^ v34 ^ ((v34 << 16) ^ 0x60270000) & (((v33 ^ 0x2C16007) << 8) & 0x33D30000 ^ 0x20930000 ^ (((v33 ^ 0x2C16007) << 8) ^ 0x53600000) & (v33 ^ 0x2C16007)))) ^ 0x59FC1BE9;
  v36 = (-632096207 * v35) ^ v24;
  *(v7 - 132) = -632096207 * v35;
  v38 = v25 - 632096207 * v35 + 649910924;
  v37 = ((v23 - -632096207 * v35) ^ 0xFFF3BCDD) + 2128502772 + ((2 * (v23 - -632096207 * v35)) & 0xFFE779BA);
  v39 = ((303644672 * v37) | ((464013413 * v37 - 354952821) >> 18)) - 161300480;
  v40 = -1236320379 * v38 - 729510216;
  v41 = (v40 ^ 0x3A436FB3) & (2 * (v40 & 0xA3534F83)) ^ v40 & 0xA3534F83;
  v42 = ((2 * (v40 ^ 0x3C6160B7)) ^ 0x3E645E68) & (v40 ^ 0x3C6160B7) ^ (2 * (v40 ^ 0x3C6160B7)) & 0x9F322F34;
  v43 = v42 ^ 0x81122114;
  v44 = (v42 ^ 0x1E000E00) & (4 * v41) ^ v41;
  v45 = ((4 * v43) ^ 0x7CC8BCD0) & v43 ^ (4 * v43) & 0x9F322F34;
  v46 = (v45 ^ 0x1C002C10) & (16 * v44) ^ v44;
  v47 = ((16 * (v45 ^ 0x83320324)) ^ 0xF322F340) & (v45 ^ 0x83320324) ^ (16 * (v45 ^ 0x83320324)) & 0x9F322F30;
  v48 = v46 ^ 0x9F322F34 ^ (v47 ^ 0x93222300) & (v46 << 8);
  v49 = (v40 ^ (2 * ((v48 << 16) & 0x1F320000 ^ v48 ^ ((v48 << 16) ^ 0x2F340000) & (((v47 ^ 0xC100C34) << 8) & 0x1F320000 ^ 0xD100000 ^ (((v47 ^ 0xC100C34) << 8) ^ 0x322F0000) & (v47 ^ 0xC100C34))))) >> 5;
  v50 = ((-1966080000 * (((v36 ^ 0x13A) - 210619070) ^ ((v36 ^ 0x274) + 661620240) ^ ((v36 ^ 0x34E) - 565967050))) | ((-2036062035 * (((v36 ^ 0x189DBA2C) + 314838616) ^ ((v36 ^ 0x5213A408) + 1481248884) ^ ((v36 ^ 0x4A8E1E24u) + 1087875680)) + 1975363636) >> 12)) - 2092957696;
  *(v7 - 144) = v38;
  v51 = 671088640 * v38 - 2117855099;
  v52 = (2 * (v51 & 0x50000001)) ^ (v51 & 0x50000001 | 0x222A50A2) ^ (2 * (v51 & 0x50000001)) & (v51 ^ 0xB45537D9);
  v53 = (2 * (v51 ^ 0xB45537D9)) & 0xE0000000 ^ 0x20000002 ^ ((2 * (v51 ^ 0xB45537D9)) ^ 0xC4912144) & (v51 ^ 0xB45537D9);
  v54 = ((4 * v52) ^ 0x88810208) & v53 ^ v52 ^ ((4 * v52) & 0xC0284080 | 0x20000);
  v55 = (4 * v53) & 0xE26ED0A0 ^ 0x62449022 ^ ((4 * v53) ^ 0x89910208) & v53;
  v56 = (16 * v54) & 0xE26ED0A0 ^ v54 ^ ((16 * v54) ^ 0x20010220) & v55;
  v57 = (16 * v55) & 0xE26ED0A0 ^ 0xC002D082 ^ ((16 * v55) ^ 0x26ED0A20) & v55;
  v58 = v56 ^ (v56 << 8) & 0xE26ED000 ^ ((v56 << 8) ^ 0x100200) & v57 ^ 0x606EC0A0;
  v59 = (v51 ^ (2 * ((v58 << 16) & 0x626E0000 ^ v58 ^ ((v58 << 16) ^ 0x50A20000) & ((v57 << 8) & 0xE26E0000 ^ 0x2E0000 ^ ((v57 << 8) ^ 0x6ED00000) & v57))) ^ 0x6F4DDC2B) & (v49 ^ 0xFBE54770) ^ v49 & 0x21065EB;
  v60 = v59 ^ 0x82004560;
  v59 ^= 0x7DFFBA9Fu;
  HIDWORD(v12) = 82710035 * (v60 + (v50 ^ (((1079322112 * v35) | ((-1189074285 * v35) >> 23)) + v39))) + 82710035;
  LODWORD(v12) = HIDWORD(v12);
  v61 = v12 >> 18;
  v62 = (-1771611963 * v50) >> 21;
  v63 = (1587692111 * v59) >> 26;
  v64 = (986064896 * v50) | v62;
  v65 = (-1466920000 * v59) | v63;
  v66 = (((522781439 * v39) >> 2) - (v39 << 30) - v64 - v61) ^ v65;
  v67 = (1858928640 * v61) | ((-1783861555 * v61) >> 16);
  v68 = (-862863248 * v66) | ((751377415 * v66) >> 28);
  HIDWORD(v12) = v63;
  LODWORD(v12) = -464516877 * v65;
  v69 = v12 >> 1;
  HIDWORD(v12) = v62;
  LODWORD(v12) = -338513799 * v64;
  v70 = (v68 ^ (v67 + (v12 >> 2))) - v69;
  v71 = 621437505 * v70;
  v72 = (911615488 * v67) | ((941304595 * v67) >> 23);
  v73 = 1648427008 * v70;
  v74 = (621437505 * v70) >> 16;
  v75 = v73 & 0xFFFF0000 | HIWORD(v71);
  HIDWORD(v12) = v69;
  LODWORD(v12) = -1215460853 * v69;
  v76 = (((-837990269 * v68) >> 6) | (201326592 * v68)) - 2 * ((((-837990269 * v68) >> 6) | (201326592 * v68)) & 0x1FD8FA9E ^ ((-837990269 * v68) >> 6) & 0xC) - 1613170030;
  v77 = (v76 ^ ((v72 ^ (v12 >> 1)) - ((2 * (v72 ^ (v12 >> 1))) & 0x3FB1F524) - 1613170030)) + v75;
  v78 = v77 - ((2 * v77) & 0x94C8B18E) - 899393337;
  v79 = (((v78 ^ 0x4AD9F578) - 1255798136) ^ ((v78 ^ 0x45A9F1D4) - 1168765396) ^ ((v78 ^ 0xC5145C6B) + 988521365)) - 1501257239 * (v75 ^ 0x90903552 ^ ((v76 ^ 0x9FD8FA92) + v72)) + 1221892246;
  v80 = (v79 ^ 0xE18FA521) & (2 * (v79 & 0x818FC031)) ^ v79 & 0x818FC031;
  v81 = ((2 * (v79 ^ 0xE080A521)) ^ 0xC21ECA20) & (v79 ^ 0xE080A521) ^ (2 * (v79 ^ 0xE080A521)) & 0x610F6510;
  v82 = v81 ^ 0x21012510;
  v83 = (v81 ^ 0xE0000) & (4 * v80) ^ v80;
  v84 = ((4 * v82) ^ 0x843D9440) & v82 ^ (4 * v82) & 0x610F6510;
  v85 = v83 ^ 0x610F6510 ^ (v84 ^ 0xD0400) & (16 * v83);
  v86 = (16 * (v84 ^ 0x61026110)) & 0x610F6510 ^ 0x61092410 ^ ((16 * (v84 ^ 0x61026110)) ^ 0x10F65100) & (v84 ^ 0x61026110);
  v87 = (v85 << 8) & 0x610F6500 ^ v85 ^ ((v85 << 8) ^ 0xF651000) & v86;
  v88 = v79 ^ (2 * ((v87 << 16) & 0x610F0000 ^ v87 ^ ((v87 << 16) ^ 0x65100000) & ((v86 << 8) & 0x610F0000 ^ 0x600A0000 ^ ((v86 << 8) ^ 0xF650000) & v86)));
  v89 = v88 ^ (v75 - 2 * (v75 & 0x5BA8529F ^ v74 & 0x11) - 609725810);
  v90 = (((v76 ^ 0xB4ECCACC) + 1259550004) ^ ((v76 ^ 0x9FE9D527) + 1612065497) ^ ((v76 ^ 0xB4DDE579) + 1260526215)) - (((v88 ^ 0x41972272) - 1968406659) ^ ((v88 ^ 0xEB6CA81) - 980576368) ^ ((v88 ^ 0x74DE26AB) - 1075479642)) + 112225600;
  v91 = ((v90 ^ 0x5A334EEB) - 740397500) ^ v90 ^ ((v90 ^ 0x18E8D86B) - 1861879612) ^ ((v90 ^ 0x4F36B528) - 958687871) ^ ((v90 ^ 0x7BFFFCFF) - 233644968);
  v92 = v88 ^ 0x34C4A2F1 ^ v78;
  v93 = ((v91 & 0x800000 ^ 0x83FF4F8E) + 1938812447) ^ (v91 & 0x800000 | 0xF27CB1D1) ^ ((v91 & 0x800000 ^ 0x52A947BE) - 1562778065);
  v94 = v93 + 1053737841;
  v95 = v78 ^ (v75 - 2 * (v75 & 0x4A6458DF ^ v74 & 0x18) - 899393337);
  v96 = (v94 ^ 0x8EF258FC) & (2 * (v94 & 0x800002)) | v94 & 0x800002;
  v97 = ((2 * (v94 ^ 0xAF73485C)) ^ 0xFF67A544) & (v94 ^ 0xAF73485C) ^ (2 * (v94 ^ 0xAF73485C)) & 0x7FB3D2A2;
  v98 = v97 ^ 0x9052A2;
  v99 = (v97 ^ 0x6000000) & (4 * v96) | v96;
  v100 = ((4 * v98) ^ 0xFECF4A88) & v98 ^ (4 * v98) & 0x7FB3D2A0;
  v101 = (v100 ^ 0x7E834280) & (16 * v99) ^ v99;
  v102 = ((16 * (v100 ^ 0x1309022)) ^ 0xFB3D2A20) & (v100 ^ 0x1309022) ^ (16 * (v100 ^ 0x1309022)) & 0x7FB3D2A0;
  v103 = v101 ^ 0x7FB3D2A2 ^ (v102 ^ 0x7B310200) & (v101 << 8);
  if ((((v93 + 1053737841) ^ (2 * ((v103 << 16) & 0x7FB30000 ^ v103 ^ ((v103 << 16) ^ 0x52A20000) & (((v102 ^ 0x482D082) << 8) & 0x7FB30000 ^ 0x4C210000 ^ (((v102 ^ 0x482D082) << 8) ^ 0x33D20000) & (v102 ^ 0x482D082)))) ^ 0x8AE33FBA) & v95) != 0)
  {
    v104 = 531629715 - v93;
  }

  else
  {
    v104 = v93 + 1053737841;
  }

  *(v7 - 96) = v104;
  v105 = -811216125 * (((v92 ^ 0x4BA42387) - 1269048199) ^ ((v92 ^ 0xE237D222) + 499658206) ^ ((v92 ^ 0x6CCCC5CB) - 1825359307)) - 1517212315;
  v106 = ((v105 ^ 0xEC158D73) + 867996824) ^ v105 ^ ((v105 ^ 0x1D06E6BC) - 1028653223) ^ ((v105 ^ 0xAEBA3220) + 1897081808) ^ ((v105 ^ 0x7FFFBFFC) - 1604934116);
  v107 = -1879162073 * (((v88 ^ 0x83390809) + 1208112392) ^ ((v88 ^ 0x64EFFD3B) - 1345019850) ^ ((v88 ^ 0xDC293B6A) + 387081829)) + 642852274;
  v108 = (2 * (v107 & 0xEFDAA30D ^ 0xA00211)) & 0xA00210 ^ v107 & 0xEFDAA30D ^ 0xA00211 ^ ((2 * (v107 & 0xEFDAA30D ^ 0xA00211)) ^ 0x1400422) & (v107 ^ 0xEF7AA11C);
  v109 = (2 * (v107 ^ 0xEF7AA11C)) & 0xA00210 ^ 0xA00211 ^ ((2 * (v107 ^ 0xEF7AA11C)) ^ 0x1400422) & (v107 ^ 0xEF7AA11C);
  v110 = (4 * v108) & 0xA00210 ^ v108 ^ ((4 * v108) ^ 0x2800844) & v109;
  v111 = (4 * v109) & 0xA00210 ^ 0x200211 ^ ((4 * v109) ^ 0x2800844) & v109;
  v112 = v110 ^ (16 * v110) & 0xA00210 ^ ((16 * v110) ^ 0x2002110) & v111 ^ 0x800010;
  v113 = ((16 * v111) ^ 0xA002110) & v111 ^ (16 * v111) & 0xA00210;
  v114 = (v112 << 8) & 0xA00200 ^ v112 ^ ((v112 << 8) ^ 0xA0021100) & (v113 ^ 0xA00201);
  v115 = v107 ^ (2 * ((((v113 ^ 0xA00201) << 8) ^ 0x20020000) & v113 & ((v114 << 16) ^ 0x2000000) ^ v114));
  *(v7 - 196) = v88;
  v116 = -14576768 * (((v88 ^ 0x1C4FA67) + 318744426) ^ ((v88 ^ 0x9D1122) - 475640787) ^ ((v88 ^ 0xA6251D) + 27097108)) + 1956764501;
  v117 = ((2 * (v116 & 0xA1428400)) & 0x840800 | v116 & 0xA1428400) ^ (2 * (v116 & 0xA1428400)) & (v116 ^ 0xA5D47BB8);
  v118 = (2 * (v116 ^ 0xA5D47BB8)) & 0x496FF02 ^ 0x4920001 ^ ((2 * (v116 ^ 0xA5D47BB8)) ^ 0x92DFF24) & (v116 ^ 0xA5D47BB8);
  v119 = (4 * v117) & 0x4163000 ^ v117 ^ ((4 * v117) | 0xC) & v118;
  v120 = (4 * v118) & 0x496FF90 ^ 0x4840193 ^ ((4 * v118) ^ 0x125BFE4C) & v118;
  v121 = (16 * v119) & 0x496FF90 ^ v119 ^ ((16 * v119) ^ 0x30) & v120;
  v122 = (16 * v120) & 0x496FF90 ^ 0x4900683 ^ ((16 * v120) ^ 0x496FF930) & v120;
  v123 = v121 ^ (v121 << 8) & 0x496FF00 ^ ((v121 << 8) ^ 0x1300) & v122 ^ 0x496EC80;
  v124 = (v123 << 16) & 0x4960000 ^ v123 ^ ((v123 << 16) ^ 0x7F930000) & (((v122 << 8) ^ 0x96FF0000) & v122 ^ (v122 << 8) & 0x4960000);
  v125 = -324264725 * (((v91 ^ 0xC8AC7DE8) + 1795506323) ^ ((v91 ^ 0x48FAE50) - 1490644181) ^ ((v91 ^ 0xBA310CEF) + 429404566)) - 486530898;
  *(v7 - 164) = v91;
  v126 = 121290752 * (((v91 ^ 0x3B4C9) - 847345228) ^ ((v91 ^ 0x944C) - 61232841) ^ ((v91 ^ 0x1FFD2) - 459488599)) - 1398335059;
  v127 = ((2 * (v126 & 0xE94A4000)) & 0x2140000 | v126 & 0xE94A4000) ^ (2 * (v126 & 0xE94A4000)) & (v126 ^ 0xE35D0A70);
  v128 = (2 * (v126 ^ 0xE35D0A70)) & 0xA170002 ^ 0xA110001 ^ ((2 * (v126 ^ 0xE35D0A70)) ^ 0x142ED044) & (v126 ^ 0xE35D0A70);
  v129 = (4 * v127) & 0xA130000 ^ v127 ^ ((4 * v127) | 0xC) & v128;
  v130 = (4 * v128) & 0xA176C20 ^ 0x2024C23 ^ ((4 * v128) ^ 0x285D908C) & v128;
  v131 = (16 * v129) & 0xA176C20 ^ v129 ^ ((16 * v129) ^ 0x30) & v130;
  v132 = (16 * v130) & 0xA176C20 ^ 0xA012C03 ^ ((16 * v130) ^ 0xA176C230) & v130;
  v133 = v131 ^ (v131 << 8) & 0xA176C00 ^ ((v131 << 8) ^ 0x2300) & v132 ^ 0xA174C00;
  v134 = (v133 << 16) & 0xA170000 ^ v133 ^ ((v133 << 16) ^ 0x6C230000) & ((v132 << 8) & 0xA170000 ^ 0x8130000 ^ ((v132 << 8) ^ 0x176C0000) & v132);
  v135 = v115 >> 25;
  v136 = ((v115 >> 25) ^ 0xFFFFFF88) & (v116 ^ (2 * v124) ^ 0x375FA1A7);
  v137 = (((v125 ^ 0xCDE214F3) + 805315557) ^ v125 ^ ((v125 ^ 0x1D190BD7) - 520405823) ^ ((v125 ^ 0xAD192837) + 1358634785) ^ ((v125 ^ 0x7FFFFFFB) - 2111977235)) >> 18;
  v138 = v137 & 0xC7D ^ 0x6CA27387 ^ (v126 ^ (2 * v134) ^ 0x81C0CD97) & (v137 ^ 0xFFFFFF78);
  v139 = ((855638016 * (((v89 ^ 0xD2) - 1733201884) ^ ((v89 ^ 0x75) + 1659955845) ^ ((v89 ^ 0x71) - 1338777215))) | ((1209483827 * (((v89 ^ 0x7E9D053A) - 726080820) ^ ((v89 ^ 0xF06315B) - 1524377941) ^ ((v89 ^ 0x91CCA8B7) + 1005145927)) + 1457071880) >> 8)) + 0x8000000;
  *(v7 - 192) = v92;
  v140 = 402653184 * (((v92 ^ 0xB) - 1709414283) ^ ((v92 ^ 1) - 1) ^ ((v92 ^ 4) + 123108348)) - 1999852459;
  v141 = (v106 >> 5) & 0x77566CE ^ 0x818ABF31 ^ ((v106 >> 5) ^ 0xFEFD48CF) & (v140 ^ ((v140 ^ 0x2377B7D) - 989583144) ^ ((v140 ^ 0xD3E7F37) - 905106274) ^ ((v140 ^ 0x482A5DC0) - 1894183317) ^ ((v140 ^ 0x7FEFF5DF) - 1193499018) ^ 0xB8463564);
  v142 = (v139 ^ v135 & 0x55555555 ^ v136 ^ 0x9614DAFF ^ v138) + v141;
  v143 = ((498598295 * v142) >> 2) - (v142 << 30);
  v144 = (-1006632960 * v139) | ((-1762880143 * v139) >> 6);
  v145 = (992935936 * v141) | ((-1028048081 * v141) >> 16);
  v146 = ((((2113929216 * v138) | ((1908132799 * v138) >> 7)) + v143) ^ v144) + v145;
  v147 = (411041792 * v143) | ((1853832241 * v143) >> 9);
  v148 = (1775108096 * v145) | ((1813099751 * v145) >> 15);
  *(v7 - 120) = 0x29ABD25A2D9FD077;
  v149 = (164061568 * v146) | ((-1542222141 * v146) >> 25);
  v150 = ((1784659968 * v144) | ((963750271 * v144) >> 18)) + v148 - v147 - v149;
  v151 = (-1758461952 * v147) | ((1664268659 * v147) >> 12);
  v152 = (1668808704 * v149) | ((2075675759 * v149) >> 13);
  v153 = (1105738112 * v150) | ((1317261427 * v150) >> 25);
  v154 = v153 ^ ((v151 ^ __ROR4__(1044624437 * v148, 30)) - v152);
  v155 = ((-198017249 * (v152 + v151)) ^ v153) + v154;
  *(v7 - 168) = v155;
  v155 += 1484180716;
  *(v7 - 136) = v155;
  v156 = (v155 ^ v154) + 2 * (v155 & v154);
  *(v7 - 156) = v152;
  *(v7 - 152) = v156;
  if ((v156 & 0x4000000) != 0)
  {
    v157 = -67108864;
  }

  else
  {
    v157 = 0x4000000;
  }

  *(v7 - 176) = v157;
  v158 = (*(v6 + 8 * (v4 ^ 0x5781)))(1028);
  *(v7 - 112) = 0;
  return (*(v6 + 8 * ((203 * (v158 == 0)) ^ v4)))(0, 4294924411);
}

uint64_t sub_1000C6478@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  v12 = (a2 + a5 + v5);
  v13 = *v12;
  v14 = v12[1];
  v15 = (a3 + (a5 + a4));
  *v15 = v13;
  v15[1] = v14;
  return (*(v11 + 8 * (((((v9 - v6 - 2094) ^ v7) + a5 == v10) * v8) ^ a1)))();
}

uint64_t sub_1000C64BC@<X0>(uint64_t (*a1)(void)@<X8>)
{
  *v1 = *v2;
  *(v1 + 4) = v2[1];
  *(v1 + 8) = v2[2];
  *(v1 + 12) = v2[3];
  *(v1 + 16) = v2[4];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  return a1();
}

uint64_t sub_1000C64F8@<X0>(uint64_t a1@<X3>, unsigned int a2@<W4>, int a3@<W5>, int a4@<W6>, unsigned int a5@<W7>, uint64_t a6@<X8>)
{
  v20 = (((((v6 + (v12 + 1 + a4 - *(a1 + a6) * v10) * v7) ^ a5) - (((((v6 + (v12 + 1 + a4 - *(a1 + a6) * v10) * v7) ^ a5) * a2) >> 32) >> 6) * a3) * v8 - (LODWORD(STACK[0x6D0]) + v18 + ((v6 + (v12 + 1 + a4 - *(a1 + a6) * v10) * v7) ^ a5))) ^ v19) + v13;
  v21 = LODWORD(STACK[0x6D0]) - v20;
  v22 = v19 - v20;
  v23 = v20 ^ v18;
  HIDWORD(v24) = v20;
  LODWORD(v24) = v20;
  v25 = (v21 ^ (v19 - v20) ^ ((v20 ^ v18) + (v24 >> 29))) + v9;
  v26 = v25 ^ v22;
  v27 = v25 ^ v21;
  v28 = v25 + v23;
  HIDWORD(v24) = v25;
  LODWORD(v24) = v25;
  LODWORD(v24) = __ROR4__(v14 ^ __ROR4__(((v24 >> 28) + v27 + v28) ^ v26, 18), 14);
  v29 = v15 ^ v24 ^ v27;
  v30 = (v15 ^ v24) + v28;
  v31 = (v15 ^ v24) + v26;
  LODWORD(v24) = v15 ^ v24;
  HIDWORD(v24) = v24;
  LODWORD(STACK[0x6D0]) = v29 - ((v31 ^ v29 ^ ((v24 >> 29) - v30)) + v16);
  return (*(STACK[0x6D8] + 8 * (((a6 == 292) * v17) ^ v11)))();
}

uint64_t sub_1000C65D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v4 - 0x55A8D952E5D4689ALL);
  *(a2 - 0x683CBC57EAB92A2ALL) = v5;
  return (*(v3 + 8 * (((v5 == 0) * ((v2 ^ 0x4656) - 19818)) ^ v2)))(a1, 1211082140, 1211098651);
}

uint64_t sub_1000C663C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 0x683CBC57EAB92A3ELL);
  STACK[0x16A0] = 0;
  return (*(v3 + 8 * (((v4 == v2) * (((174 * (v1 ^ 0x4E60)) ^ 0x768E) - 640)) | v1)))();
}

uint64_t sub_1000C677C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x6995)))(STACK[0x4D0]);
  v3 = *(v1 + 8 * (((v2 == (*(v1 + 8 * (v0 ^ 0x69A2)))()) * (((v0 + 1233721757) & 0xB676FFFD) + ((v0 - 5425) | 0x152B) + 7553)) ^ v0));
  return v3();
}

uint64_t sub_1000C6808()
{
  STACK[0x17C8] = 0;
  STACK[0x1478] = 0;
  STACK[0x1660] = 0;
  return (*(v2 + 8 * ((((((v1 - 21643) | 0xC86) ^ 0xFFFFD3BC) + v1 - 29626) * (v0 == 0x308E083E0C524CBELL)) ^ v1)))();
}

uint64_t sub_1000C6904(unint64_t a1)
{
  v4 = *(v1 + 8 * (v2 ^ 0x6B28));
  STACK[0x890] = a1;
  v5 = v4();
  v6 = v5 == (*(v1 + 8 * (v2 ^ 0x6B21)))();
  return (*(v1 + 8 * (((((v2 + 11) ^ v6) & 1) * (v2 ^ 0xB7D094DD ^ (v3 + 39))) ^ v2)))();
}

uint64_t sub_1000C6B40()
{
  v3 = STACK[0x32C];
  STACK[0xAB0] += LODWORD(STACK[0x32C]) ^ (v1 + 2163) ^ (v0 + 18);
  return (*(v2 + 8 * v3))();
}

uint64_t sub_1000C6B6C()
{
  STACK[0x520] = v0;
  LODWORD(STACK[0x3A88]) = ((v1 & 0x9EDD7ABF) - 16226) ^ 0x40E8;
  v5 = *(v3 + 24);
  STACK[0x508] = v3;
  STACK[0x3B08] = 0;
  v6 = (*(v4 + 8 * ((v1 & 0x9EDD7ABF) + 4623)))(v5 ^ (v2 + 128));
  STACK[0x3AF0] = v6;
  STACK[0x3AC0] = v4;
  return (*(v4 + 8 * ((111 * (v6 == 0)) ^ v1 & 0x9EDD7ABF)))();
}

uint64_t sub_1000C6FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  STACK[0xAB8] = 0;
  STACK[0xBE8] = 0;
  STACK[0x1500] = 0;
  return (*(v53 + 8 * ((((((v51 - 15352) ^ a50) - 1425489296) ^ ((v51 - 15352) | 0x120)) * (v50 == v52)) | v51)))();
}

void sub_1000C6FFC()
{
  if ((v1 ^ 0x7F6F1FD1) + ((2 * v1) & 0xFEDE3FA2) == 2137989073)
  {
    v2 = -143113071;
  }

  else
  {
    v2 = -143113091;
  }

  *v0 = v2;
}

uint64_t sub_1000C70B8()
{
  STACK[0x1BB0] = v1;
  v3 = STACK[0x18B8];
  STACK[0x1BB8] = STACK[0x18B8];
  return (*(v2 + 8 * (((v1 - v3 > 9) * ((99 * (v0 ^ 0x1ABB)) ^ ((v0 ^ 0x30BA) - 341))) ^ v0)))();
}

uint64_t sub_1000C7348@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W8>)
{
  v15 = a2 + ((*(v13 + a7) ^ v11) + (v12 & (2 * *(v13 + a7)))) * a1;
  *(v13 + a7) = *(a5 + v15 - (((v15 * a3) >> 32) >> 9) * a4) - 96;
  if (v8 < v7 != v9 < v7)
  {
    v16 = v8 < v7;
  }

  else
  {
    v16 = v9 < v8;
  }

  return (*(v14 + 8 * ((!v16 * a6) ^ v10)))();
}

uint64_t sub_1000C7438(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  *(v59 + a3 + v57 * a5 + 2696 - ((((a3 + v57 * a5 + 2696) * a6) >> 32) >> 9) * v60) = v56;
  v62 = ((2 * (v57 ^ 0x71)) ^ 0x9E) & (v57 ^ 0x71) ^ (2 * (v57 ^ 0x71)) & 0xCE;
  v63 = v62 ^ 0x41;
  v64 = (v62 ^ 0x88) & (4 * ((2 * (v57 & 0xBE)) & (v57 ^ 0x3D) ^ v57 & 0xBE)) ^ (2 * (v57 & 0xBE)) & (v57 ^ 0x3D) ^ v57 & 0xBE;
  return (*(v61 + 8 * v58))(a1, a56, 95, 0, (v57 ^ 0x9E ^ (2 * ((((4 * v63) ^ 0x20) & v63 ^ (4 * v63) & 0xCC) & (16 * v64) ^ v64))) & 0x38);
}

uint64_t sub_1000C7574()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x28BCC9F9)))();
  *(v1 + 24) = 0;
  return (*(v2 + 8 * (v0 ^ 0x28BCA287 ^ (14770 * (v0 > (((v0 - 683455412) | 0x1888) ^ 0x900D702E))))))(v3);
}

uint64_t sub_1000C7828()
{
  v2 = (*(v1 + 254568))(v0);
  STACK[0x8F0] = 0;
  return (*(v1 + 6760))(v2);
}

uint64_t sub_1000C78B4(unint64_t a1)
{
  v4 = *(v3 + 8 * (v2 ^ 0x473A));
  STACK[0x770] = a1;
  LODWORD(STACK[0x3560]) = v1;
  v5 = v4(1024);
  STACK[0x3AF8] = v5;
  v6 = (*(v3 + 8 * (v2 ^ 0x473A)))(1024);
  v7 = STACK[0x770];
  STACK[0x3B00] = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(v3 + 8 * (((((v2 ^ v9) & 1) == 0) * ((v2 ^ 0x49D9) - 29310)) ^ v2)))(v7);
}

uint64_t sub_1000C79AC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 6729;
  v4 = (v1 - 6729) ^ 0x3498;
  v5 = *(a1 - 0x683CBC57EAB92A36);
  STACK[0x16C0] = 0;
  return (*(v2 + 8 * (((v5 != 0x308E083E0C524CBELL) * (v4 - 5284)) ^ v3)))();
}

uint64_t sub_1000CA62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v38 = (v32 - 774432460 + v31 + v36 + ((v36 + v34 - ((v36 + v34) >> 16)) >> 8) - ((v36 + v34) >> 16) - 1) ^ (LODWORD(STACK[0x364]) + 5509) ^ 0xA5E77A83;
  v39 = v38 - (v38 >> 15) + ((v38 - (v38 >> 15)) >> 8);
  v40 = (v39 ^ 0xFCD211DD) + ((v39 ^ 0xFCD211DD) >> 12) + (((v39 ^ 0xFCD211DD) + ((v39 ^ 0xFCD211DD) >> 12)) >> 1);
  v41 = v40 - 120617819 - ((v40 - 120617819) >> 13) - ((v40 - 120617819 - ((v40 - 120617819) >> 13)) >> 8);
  v42 = v41 - 89550138 + ((v41 - 89550138) >> 9) - ((v41 - 89550138 + ((v41 - 89550138) >> 9)) >> 6);
  v43 = (v42 ^ 0xCF4885C1) + ((v42 ^ 0xCF4885C1) >> 9) - (((v42 ^ 0xCF4885C1) + ((v42 ^ 0xCF4885C1) >> 9)) >> 3);
  v44 = v43 - 405750948 - ((v43 - 405750948) >> 13) + ((v43 - 405750948 - ((v43 - 405750948) >> 13)) >> 3);
  v45 = v44 + 515040969 - ((v44 + 515040969) >> 11) + ((v44 + 515040969 - ((v44 + 515040969) >> 11)) >> 6);
  LODWORD(v52) = a6 & ((v42 ^ v39 ^ v45) >> 1);
  v46 = *(v37 - 156);
  v47 = *(v37 - 176);
  v48 = (2 * (a6 & (LODWORD(STACK[0x33C]) >> 1) ^ 0x21C0D00D)) & 0x23954816;
  LODWORD(STACK[0x358]) ^= a31;
  v49 = v43 ^ v40 ^ (v45 - 129863067 - ((v45 - 129863067) >> 9) + ((v45 - 129863067 - ((v45 - 129863067) >> 9)) >> 1));
  HIDWORD(v52) = v49 >> 1;
  LODWORD(STACK[0x378]) ^= v47 ^ a6 & ((v47 ^ v46) >> 1) ^ v33 ^ v39 ^ v42 ^ v45 ^ 0x58C27BB0 ^ v52;
  v50 = *(v35 + 8 * SLODWORD(STACK[0x364]));
  return v50(v50, 451049141, v49, v48, 0xAE25F390A6DD8CA4, a6, 0x392B69DC00000000, 0xB92B69DCB14E8836, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v52);
}

uint64_t sub_1000CAC44(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a8 + a1) = v9 + ((a1 + *(a8 + a1) - 28) ^ 0xFB) + ((2 * (a1 + *(a8 + a1) - 28)) & 0xF7) - 34;
  v12 = v8 == a1;
  v13 = a1 + 1;
  v14 = v12;
  return (*(v11 + 8 * ((v14 * v10) ^ a3)))(v13);
}

uint64_t sub_1000CACDC@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W6>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11, int a12, int a13, int a14, unsigned int a15, int a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26)
{
  v29 = STACK[0x25C];
  v30 = LODWORD(STACK[0x25C]) - 1997976274;
  v31 = LODWORD(STACK[0x24C]) ^ 0x5F2C782C;
  if ((STACK[0x248] & 4) != 0)
  {
    v32 = -67108864;
  }

  else
  {
    v32 = 0x4000000;
  }

  *(v28 - 128) = v30;
  LODWORD(STACK[0x308]) = (v30 + 855085822) ^ (v31 + v32);
  v33 = STACK[0x364];
  v34 = STACK[0x358];
  v35 = STACK[0x360];
  v36 = STACK[0x240];
  v37 = STACK[0x244];
  LODWORD(STACK[0x390]) = ((a18 ^ (a3 ^ (2 * ((a3 ^ a11) & v33)) ^ 0x81B23E3F) & *(v28 - 160) ^ 3) >> LODWORD(STACK[0x240]) >> LODWORD(STACK[0x244])) ^ 0xC832674A ^ (((a26 ^ (a3 ^ (2 * ((a3 ^ a11) & v33)) ^ 0x272C087C) & STACK[0x358]) << LODWORD(STACK[0x360])) - ((2 * ((a26 ^ (a3 ^ (2 * ((a3 ^ a11) & v33)) ^ 0x272C087C) & STACK[0x358]) << LODWORD(STACK[0x360]))) & 0x39B0CFB8) + 483944412);
  v38 = STACK[0x368];
  v39 = v27 ^ (2 * ((v27 ^ 0x3000632D) & STACK[0x368]));
  v40 = (v39 & 0xB6F85914 ^ 0xB0004104 ^ (v39 ^ 0xB000632D) & a17) >> *(v28 - 156) >> *(v28 - 152);
  v41 = STACK[0x414];
  v42 = STACK[0x37C];
  v43 = ((a25 ^ (v39 ^ 0x76704549) & v41) << v42) - ((2 * ((a25 ^ (v39 ^ 0x76704549) & v41) << v42)) & 0x3A4222CE) + 488706407;
  LODWORD(STACK[0x304]) = v43 & 0xAFEA3464 ^ 0x977FA7A7 ^ (v43 ^ 0xE2DEEE98) & (v40 ^ 0x5015CB9B);
  v44 = v26 ^ (2 * ((v26 ^ 0x8A986B7) & v33));
  LODWORD(STACK[0x2EC]) = ((v44 & a10 ^ 0xA90224 ^ (v44 ^ 0x8A986B7) & a15) >> LODWORD(STACK[0x238])) ^ 0xB4B96AC4 ^ (((a24 ^ (v44 ^ 0x43377010) & v34) << v42) - ((2 * ((a24 ^ (v44 ^ 0x43377010) & v34) << v42)) & 0xE10546E4) - 259873934);
  v45 = a2 ^ (2 * ((a2 ^ 0x3DB1A5EE) & v38));
  LODWORD(STACK[0x2E8]) = ((v45 & 0xEC39C82C ^ 0xAC31802C ^ (v45 ^ 0xBDB1A5EE) & a14) >> LODWORD(STACK[0x388])) ^ 0x4E3D6FA4 ^ (((a23 ^ (v45 ^ 0x7264E9B8) & v41) << v35) - ((2 * ((a23 ^ (v45 ^ 0x7264E9B8) & v41) << v35)) & 0xF33CC974) + 2040423610);
  v46 = (a1 & 0x4800 ^ 0x2009D539 ^ (((LODWORD(STACK[0x280]) ^ 0x9C3CD9EA) & (LODWORD(STACK[0x27C]) ^ 0xFF7CFFEB) | STACK[0x27C] & 0xC30000) ^ 0x9A5B6E08) & (a1 ^ 0xFFFFBFEB)) & (a4 ^ 0xFFFFFFFB) ^ (a4 & 0x24 | 0x2100C00);
  v47 = v46 ^ (2 * ((v46 ^ 0x477E6E92) & v38));
  v48 = ((a21 ^ (v47 ^ 0x2C93835C) & v34) << v42) - ((2 * ((a21 ^ (v47 ^ 0x2C93835C) & v34) << v42)) & 0xE0014A2);
  v49 = (v47 & a8 ^ 0x47440C80 ^ (v47 ^ 0xC77E6E92) & a13) >> v36 >> v37;
  LODWORD(STACK[0x2B4]) = (((v48 + 117443153) ^ 0x846ED1BA) & ~v49 | v49 & 0x7C912414) ^ 0xB0B0730D;
  v50 = *(*(v28 - 120) + 8 * ((11170 * (v29 < 0x872BC8A4)) ^ (v29 - 1997992526)));
  LODWORD(STACK[0x38C]) = STACK[0x250];
  LODWORD(STACK[0x310]) = STACK[0x254];
  LODWORD(STACK[0x30C]) = STACK[0x258];
  return v50();
}

uint64_t sub_1000CB474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  if (a8 < v8 != v9 - 1025053322 < v8)
  {
    v12 = a8 < v8;
  }

  else
  {
    v12 = v9 - 1025053322 < a8;
  }

  return (*(*(v11 - 120) + 8 * ((441 * !v12) ^ v10)))();
}

uint64_t sub_1000CBF48@<X0>(int a1@<W5>, unint64_t a2@<X8>)
{
  STACK[0x3A90] = v3;
  STACK[0x3AA8] = v2;
  v5 = 387 * (223 - a2);
  v6 = (LODWORD(STACK[0x3AE8]) - 175987631) & 0xA7D3BFF;
  v7 = *(&STACK[0x5600] + v5 % 0x24A);
  v8 = *(&STACK[0x5600] + (v5 + 138159) % 0x24A);
  STACK[0x3AC8] = v8;
  LODWORD(STACK[0x3AD0]) = v6;
  v9 = 387 * ((v6 ^ 0x19A0) - a2) % 0x24A;
  *(&STACK[0x5600] + 387 * (223 - a2 - v8 + a1) % 0x24Au) = v8 ^ v7;
  STACK[0x3AB8] = *(&STACK[0x5600] + (387 * (579 - a2) - 586 * ((7329296 * (387 * (579 - a2))) >> 32)));
  v10 = *(&STACK[0x5600] + v9);
  v11 = 223 - (a2 | 2);
  *(&STACK[0x5600] + v9) = v8 ^ v7 ^ a1 ^ v10;
  v12 = *(&STACK[0x5600] + (387 * v11 + 138159) % 0x24Au);
  LOBYTE(v9) = *(&STACK[0x5600] + 387 * v11 % 0x24Au);
  STACK[0x3AB0] = v12;
  LOBYTE(v9) = v9 ^ v12;
  v13 = 387 * (220 - a2) % 0x24Au;
  *(&STACK[0x5600] + 387 * (v11 - v10 + v12) % 0x24Au) = v9;
  v14 = *(&STACK[0x5600] + v13);
  v15 = 223 - (a2 | 4);
  *(&STACK[0x5600] + v13) = v9 ^ v14 ^ v10;
  v16 = *(&STACK[0x5600] + (387 * v15 + 138159) % 0x24Au);
  STACK[0x3AA0] = *(&STACK[0x5600] + (387 * (577 - a2) - 586 * ((7329296 * (387 * (577 - a2))) >> 32)));
  STACK[0x3A98] = v16;
  v17 = *(v4 + 4647 * (v16 ^ 0xC4) + 14331348 - 6784 * (((1266205 * (4647 * (v16 ^ 0xC4) + 14331348)) >> 32) >> 1)) + 117;
  LOBYTE(v17) = (v17 ^ 0x12 ^ (v17 >> 2) & 0x12) + 26;
  v18 = v17;
  v19 = v17 - v16 + (v17 ^ *(&STACK[0x5600] + 387 * v15 % 0x24Au));
  v20 = v19 ^ v14;
  v21 = (-387 * a2 + 84366) % 0x24Au;
  *(&STACK[0x5600] + 387 * (v15 - 1160382057 * v14 + 1160382057 * v18) % 0x24Au) = v19;
  v22 = *(&STACK[0x5600] + (-387 * a2 + 222525) % 0x24Au);
  v23 = v20 - v22 + (*(&STACK[0x5600] + v21) ^ v22);
  v24 = 223 - (a2 | 6);
  *(&STACK[0x5600] + v21) = v23;
  v25 = *(&STACK[0x5600] + (387 * v24 + 138159) % 0x24Au);
  v26 = v23 ^ v20;
  LOBYTE(v21) = *(&STACK[0x5600] + 387 * v24 % 0x24Au);
  LOBYTE(v20) = v21 ^ v25;
  *(&STACK[0x5600] + 387 * (v24 - 2091145345 * v25 + 2091145345 * v26) % 0x24Au) = v21 ^ v25;
  v27 = 223 - (a2 | 7);
  v28 = *(&STACK[0x5600] + (387 * v27 + 138159) % 0x24Au);
  v29 = 4647 * (((v28 >> 1) | (v28 << 7)) ^ 0xD9) + 19140993;
  v30 = 4647 * (((*(&STACK[0x5600] + 387 * v27 % 0x24Au) ^ v28) + 111) ^ 0x36) + 17937420;
  LOBYTE(v30) = *(v4 + v30 - 6784 * (((1266205 * v30) >> 32) >> 1)) ^ 0xE;
  v31 = 97 * (*(v4 + v29 - 6784 * (((1266205 * v29) >> 32) >> 1)) ^ 0x27u);
  STACK[0x3A88] = v31;
  v32 = 387 * (v28 + v27 - v31) % 0x24A;
  LOBYTE(v27) = ((v30 >> 3) | (32 * v30)) ^ v28;
  *(&STACK[0x5600] + v32) = v26 ^ v20 ^ v27;
  v33 = 223 - (a2 | 8);
  v34 = *(&STACK[0x5600] + (387 * v33 + 138159) % 0x24Au);
  LOBYTE(v32) = v34 ^ *(&STACK[0x5600] + 387 * v33 % 0x24Au);
  *(&STACK[0x5600] + 387 * (v33 - v27 + v34) % 0x24A) = v32;
  v35 = 223 - (a2 | 9);
  v36 = *(&STACK[0x5600] + (387 * v35 + 138159) % 0x24Au);
  v37 = 4647 * ((v36 + 111) ^ 0x36) + 17937420;
  LOBYTE(v37) = *(STACK[0x3AE0] + v37 - 6784 * (((1266205 * v37) >> 32) >> 1)) ^ 0xE;
  LOBYTE(v37) = (v37 >> 3) | (32 * v37);
  v38 = 4647 * (*(&STACK[0x5600] + 387 * v35 % 0x24Au) ^ 0xB8 ^ v37) + 9544938;
  v39 = 4647 * ((((((*(STACK[0x3AE0] + v38 - 6784 * (((1266205 * v38) >> 32) >> 1)) - 87) ^ 0xFB) + 85) ^ v37) + 111) ^ 0x36) + 17937420;
  LOBYTE(v39) = *(STACK[0x3AE0] + v39 - 6784 * (((1266205 * v39) >> 32) >> 1)) ^ 0xE;
  LOBYTE(v39) = (v39 >> 3) | (32 * v39);
  *(&STACK[0x5600] + 387 * (v35 + 1498283805 * v36 - 1498283805 * v37) % 0x24A) = v32 ^ v27 ^ v39;
  v40 = 223 - (a2 | 0xA);
  v41 = *(&STACK[0x5600] + (387 * v40 + 138159) % 0x24Au);
  LOBYTE(v35) = *(&STACK[0x5600] + 387 * v40 % 0x24Au) ^ v41;
  *(&STACK[0x5600] + 387 * (v40 - v39 + v41) % 0x24A) = v35;
  LOBYTE(v40) = v35 ^ v39;
  v42 = (-387 * a2 + 82044) % 0x24Au;
  v43 = *(&STACK[0x5600] + (-387 * a2 + 220203) % 0x24Au);
  v44 = v43 - v40 + (v43 ^ *(&STACK[0x5600] + v42));
  *(&STACK[0x5600] + v42) = v44;
  v45 = v44 ^ v40;
  v46 = 223 - (a2 | 0xC);
  v47 = *(&STACK[0x5600] + (387 * v46 + 138159) % 0x24Au);
  LODWORD(v31) = 387 * (v45 + v46 - v47);
  LOBYTE(v46) = *(&STACK[0x5600] + 387 * v46 % 0x24Au) ^ v47;
  *(&STACK[0x5600] + v31 % 0x24A) = v46;
  LODWORD(v31) = v45 ^ v46;
  v48 = *(&STACK[0x5600] + (387 * (567 - a2) - 586 * ((7329296 * (387 * (567 - a2))) >> 32)));
  v49 = 387 * (210 - a2) % 0x24Au;
  v50 = v31 - v48 + (v48 ^ *(&STACK[0x5600] + v49));
  *(&STACK[0x5600] + v49) = v50;
  LODWORD(v31) = v50 ^ v31;
  v51 = 223 - (a2 | 0xE);
  v52 = *(&STACK[0x5600] + (387 * v51 + 138159) % 0x24Au);
  v53 = 387 * (v31 + v51 - v52);
  v54 = 387 * v51 - 586 * ((7329296 * (387 * v51)) >> 32);
  v55 = (-387 * a2 + 218655) % 0x24Au;
  v56 = (-387 * a2 + 80496) % 0x24Au;
  LOBYTE(v14) = *(&STACK[0x5600] + v54) ^ v52;
  *(&STACK[0x5600] + v53 % 0x24A) = v14;
  v57 = 4647 * (((*(&STACK[0x5600] + v56) ^ *(&STACK[0x5600] + v55)) + 111) ^ 0x36) + 17937420;
  LOBYTE(v57) = *(STACK[0x3AE0] + v57 - 6784 * (((1266205 * v57) >> 32) >> 1)) ^ 0xE;
  *(&STACK[0x5600] + v56) = *(&STACK[0x5600] + v55) - (v31 ^ v14) + ((v57 >> 3) | (32 * v57));
  STACK[0x3AD8] ^= (STACK[0x3AC8] | (STACK[0x3AA0] << 24)) ^ (STACK[0x3AB8] << 8) ^ (((STACK[0x3AB0] << 16) | (v22 << 40) | (STACK[0x3A98] << 32)) & 0xFF00FFFFFFFFFFFFLL | (v25 << 48) | (v28 << 56));
  return (*(STACK[0x3AC0] + 8 * ((30 * (a2 > 0xCF)) ^ LODWORD(STACK[0x3AE8]))))();
}

uint64_t sub_1000CC774(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(&STACK[0x320] + (v8 + 2361 * a8) % 0xA88u);
  v12 = *(&STACK[0xDE0] + (825 * (v11 | ((v11 < (((a1 + 119) & 0xF3) - 3)) << 8)) + 2885850) % 0x1940);
  v13 = *(&STACK[0x320] + (2361 * (((HIBYTE(v12) ^ 0x9FB5AB4E) + 1972775373) ^ ((HIBYTE(v12) ^ 0x3F7A3738) - 715541061) ^ ((HIBYTE(v12) ^ 0xA0CF9C0A) + 1256988297)) - 1632940486) % 0xA88);
  v14 = *(&STACK[0x320] + (2361 * (((BYTE2(v12) ^ 0x7449F6AC) + 1791780026) ^ ((BYTE2(v12) ^ 0x626A3159) + 2096079693) ^ ((BYTE2(v12) ^ 0x1623C795u) + 145118593)) - 2109035077) % 0xA88);
  LOBYTE(v11) = v14 & 0x72 ^ 0xE9;
  v15 = v13 & 0xEC ^ 0xA6;
  v16 = *(&STACK[0x320] + (2361 * (((BYTE1(v12) ^ 0x43D9E53A) - 1283839859) ^ ((BYTE1(v12) ^ 0x3456FCE1) - 990564008) ^ ((BYTE1(v12) ^ 0x778F1968u) - 2027105057)) - 1451191381) % 0xA88);
  v17 = (v14 ^ (2 * ((v14 ^ 0x20) & (2 * ((v14 ^ 0x20) & (2 * ((v14 ^ 0x20) & (2 * ((v14 ^ 0x20) & (2 * (v11 ^ v14 & 0x12)) ^ v11)) ^ v11)) ^ v11)) ^ v11))) << 8;
  v18 = v16 ^ 0x20;
  v19 = v16 ^ (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & (2 * (v18 & 0x2E ^ v16 & 0x4E ^ 0xD7)) ^ v16 & 0x4E ^ 0xD7)) ^ v16 & 0x4E ^ 0xD7)) ^ v16 & 0x4E ^ 0xD7)) ^ v16 & 0x4E ^ 0xD7));
  v20 = *(&STACK[0x320] + (2361 * (((v12 ^ 0x7F2CF39E) - 730872119) ^ ((v12 ^ 0xD7D43F68) + 2090273343) ^ ((v12 ^ 0xA8F8CC1F) + 62650698)) - 2125222471) % 0xA88);
  v21 = (((v13 ^ (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * ((v13 ^ 0x20) & (2 * v15) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) << 16) ^ 0x9A2F7E) & (v17 ^ 0xFF0D7F) | v17 & 0xD000;
  LOBYTE(v17) = v20 & 0xA0 | 0x19;
  v22 = v17 ^ v20 & 0x72;
  v23 = v20 ^ (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * ((v20 ^ 0x20) & (2 * (v20 & (2 * v17) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22));
  *(&STACK[0xDE0] + (v9 + 825 * a8) % 0x1940u) = (((((v21 ^ 0xE9863E) & (v19 ^ 0xFFFF10) ^ v19 & 0xBF) << 8) ^ 0xE19243F5) & (v23 ^ 0xFFFFFF2D) | v23 & 0xA) ^ 0x20BBE1E;
  return (*(v10 + 8 * ((32411 * (a8 == 255)) ^ a1)))();
}

uint64_t sub_1000CCBAC()
{
  STACK[0x380] = v0;
  v3 = v1 ^ 0x69A2;
  v4 = v1 - 10647;
  v5 = *(v2 - 120);
  v6 = (*(v5 + 8 * (v1 ^ 0x322F)))(1032);
  v7 = (*(v5 + 8 * (v1 ^ 0x322F)))(1032);
  STACK[0x370] = v6;
  STACK[0x228] = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  *(v2 - 136) = v4;
  LODWORD(STACK[0x204]) = v3;
  v11 = *(v5 + 8 * ((v10 * (v3 + v4 - 15068)) ^ v1));
  LODWORD(STACK[0x208]) = -42885;
  return v11(v7, v8);
}

uint64_t sub_1000CCC38()
{
  v3 = *(v2 - 136);
  v4 = v3 ^ *(v2 - 156);
  v5 = *(v2 - 168) + v0 - ((((2 * v3) ^ 0x1348158D) - 1489625898) ^ (((2 * v3) ^ 0xBC607E2C) + 136214389) ^ (((2 * v3) ^ 0xAF286BA1) + 458646266));
  v6 = 75933587 * v5 - 1613902368;
  v7 = (v6 ^ 0xD22F3CBF) & (2 * (v6 & 0xC4AE3EBF)) ^ v6 & 0xC4AE3EBF;
  v8 = ((2 * (v6 ^ 0x5A630D8B)) ^ 0x3D9A6668) & (v6 ^ 0x5A630D8B) ^ (2 * (v6 ^ 0x5A630D8B)) & 0x9ECD3334;
  v9 = v8 ^ 0x82451114;
  v10 = (v8 ^ 0x14882220) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x7B34CCD0) & v9 ^ (4 * v9) & 0x9ECD3334;
  v12 = (v11 ^ 0x1A040010) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x84C93324)) ^ 0xECD33340) & (v11 ^ 0x84C93324) ^ (16 * (v11 ^ 0x84C93324)) & 0x9ECD3330;
  v14 = v12 ^ 0x9ECD3334 ^ (v13 ^ 0x8CC13300) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x1ECD0000 ^ v14 ^ ((v14 << 16) ^ 0x33340000) & (((v13 ^ 0x120C0034) << 8) & 0x1ECD0000 ^ 0x12CC0000 ^ (((v13 ^ 0x120C0034) << 8) ^ 0x4D330000) & (v13 ^ 0x120C0034))));
  v16 = *(v2 - 152);
  v17 = (v15 >> 13) & 0x19F7A ^ 0xC5B6E9E7 ^ ((v15 >> 13) ^ 0xFFF9161D) & ((1016594432 * v5 + 1698455422) ^ (((1016594432 * v5 + 1698455422) ^ 0x4536DB25) - 1165132891) ^ (((1016594432 * v5 + 1698455422) ^ 0x7E4A4D9B) - 2114851557) ^ (((1016594432 * v5 + 1698455422) ^ 0xC6C7363D) + 964466365) ^ (((1016594432 * v5 + 1698455422) ^ 0xFDFFFFFD) + 38035325) ^ 0xC5F23FFB);
  v18 = v17 ^ ((1694460464 * v3) | ((-162531677 * v3) >> 28));
  v19 = (2037134720 * v4) | ((1760745579 * v4) >> 25);
  HIDWORD(v20) = v18 ^ v19;
  LODWORD(v20) = v18 ^ (2037134720 * v4);
  v21 = (297795584 * v16) | ((25793607 * v16) >> 10);
  v22 = (__ROR4__((v20 >> 14) ^ 0x76BE2279, 18) ^ 0x889E5DAF) + v21;
  v23 = (-385609751 * v22) >> 17;
  v24 = (133464064 * v22) | v23;
  v25 = (54591488 * v17) | ((1226965825 * v17) >> 16);
  v26 = (2123421685 * v25) >> 21;
  v27 = ((855709485 * v21) >> (v4 & 0x1A) >> (v4 & 0x1A ^ 0x1A)) | (-1069167808 * v21);
  v28 = -2034259968 * v25;
  v29 = (1879048192 * v23) | ((-2119066153 * v24) >> 4);
  v30 = ((-1459617792 * v19) | ((289473449 * v19) >> 8)) - v27 - v25 - v24;
  v31 = v28 & 0x42511000;
  v32 = v28 & 0xBDAEE800;
  v33 = -1990886485 * v27;
  v34 = (-1078984704 * v30) | ((-470770693 * v30) >> 12);
  v35 = (-581435392 * v27) | ((-1990886485 * v27) >> 13);
  v36 = v32 + v35 + v31 + (v26 & 0x7FF) - v29 - v34;
  v37 = (1615208448 * v29) | ((483590705 * v29) >> 19);
  HIDWORD(v20) = v36;
  LODWORD(v20) = -2103641179 * v36;
  v38 = v20 >> 2;
  v39 = (-331350016 * v34) | ((-974205007 * v34) >> 10);
  v40 = (v37 ^ ((-1879048192 * (v33 >> 13)) | ((897953529 * v35) >> 4))) - v39 - v38;
  v65 = 881473677 * (v39 ^ v37) - ((v37 ^ ((-1879048192 * (v33 >> 13)) | ((897953529 * v35) >> 4))) - v39) - 1683516320;
  v41 = v38 - (v65 ^ 0xF81F1CB9);
  v42 = ((v39 - (v65 ^ 0xF81F1CB9)) ^ 0xF7FFFFCE) + 2027746304 + ((2 * (v39 - (v65 ^ 0xF81F1CB9))) & 0xEFFFFF9C);
  v43 = ((806207488 * v42) | ((-174276553 * v42 + 1378164414) >> 18)) + 1202683904;
  HIDWORD(v20) = v65 ^ v40 ^ 0xFFFFFFF9;
  LODWORD(v20) = 1802192513 * (((v65 ^ v40 ^ 0x767B1164) + 192388900) ^ ((v65 ^ v40 ^ 0xD1DFE664) - 1395431388) ^ ((v65 ^ v40 ^ 0x5FBBEBB9) + 582444543)) - 1856228479;
  v44 = v20 >> 6;
  HIDWORD(v20) = v41;
  LODWORD(v20) = 1208109179 * v41;
  v45 = v20 >> 1;
  v46 = 1870399575 * v44;
  v47 = (v43 ^ ((1778384896 * (v65 ^ 0xF81F1CB9)) | ((-371784523 * (v65 ^ 0xF81F1CB9)) >> 7))) + v44 - v45;
  v48 = (-671088640 * v47) | ((1517283195 * v47) >> 5);
  v49 = (-637534208 * v45) | ((-741777427 * v45) >> 7);
  HIDWORD(v20) = v46;
  LODWORD(v20) = v46;
  v50 = v20 >> 31;
  v51 = 1985916395 * v49;
  v52 = -595591168 * v43 - v49 + ((778145209 * v43) >> 9) + v50 - v48;
  v53 = (-1963548299 * v48) >> 21;
  v54 = (-1257527296 * v48) | v53;
  v55 = 1588456192 * v49;
  v56 = (373909280 * v52) | ((-2135798983 * v52) >> 27);
  v57 = ((727599617 * v50) >> 11) | (1075838976 * v50);
  v58 = v56 + v57 + (v54 ^ (v55 & 0xFFFFFF00 | HIBYTE(v51)));
  v59 = (-100663296 * v53) | ((123303037 * v54) >> 7);
  v60 = (-974848000 * v58) | ((-862665243 * v58) >> 16);
  v61 = ((((v59 ^ 0x9168D310 ^ ((-698582200 * v56) | ((-87322775 * v56) >> 29))) - v60) ^ 0x1D00D6BB) - (v60 + ((((1932964608 * v57) | ((-193775949 * v57) >> 24)) - v59) ^ ((-698582200 * v56) | ((-87322775 * v56) >> 29))))) ^ 0x59046F15;
  v62 = *(v2 - 180);
  *(v2 - 160) = ((v60 - v61) ^ 0xFBFFFC7A) + 1723846592 + ((2 * (v60 - v61)) & 0xF7FFF8F4);
  *(v2 - 176) += v16;
  v63 = *(v1 + 8 * v62);
  *(v2 - 180) = v61;
  return v63(872821465);
}

uint64_t sub_1000CDED0(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a3.n128_u16[0] = 7710;
  a3.n128_u8[2] = 30;
  a3.n128_u8[3] = 30;
  a3.n128_u8[4] = 30;
  a3.n128_u8[5] = 30;
  a3.n128_u8[6] = 30;
  a3.n128_u8[7] = 30;
  a4.n128_u16[0] = 3855;
  a4.n128_u8[2] = 15;
  a4.n128_u8[3] = 15;
  a4.n128_u8[4] = 15;
  a4.n128_u8[5] = 15;
  a4.n128_u8[6] = 15;
  a4.n128_u8[7] = 15;
  return (*(v7 + 8 * v5))(v6 - (v4 & 0xFFFFFFF8) + 8, (v5 - 13969), a1, a2, a3, a4);
}

uint64_t sub_1000CE0C4()
{
  STACK[0xAB0] = (v3 ^ 0xB7D0C0BB ^ (v1 + 32)) + v2;
  *(v5 - 232) = (v3 - 1723128351) ^ (((((v5 - 240) | 0x715B00AB) - ((v5 - 240) & 0x715B00AB)) ^ 0x97E05BAD) * v0);
  *(v5 - 240) = *(&off_101353600 + v3 - 17024);
  v6 = (*(v4 + 8 * (v3 ^ 0x3F1A)))(v5 - 240);
  v7 = *(v4 + 8 * ((((**(&off_101353600 + v3 - 15678) & 1) == 0) * (((v3 - 8743) | 0xAD0) ^ 0x2BB9)) ^ v3));
  STACK[0x8A0] = *(&off_101353600 + v3 - 16742);
  return v7(v6);
}

uint64_t sub_1000CE330()
{
  v7 = ((5 * (v1 ^ 0x32FD)) ^ 0x2FB4) * v0;
  *(v4 + 4 * (v7 + 1685611 - ((((v7 + 1685611) >> 6) * v2) >> 32) * v3)) = *(v4 + 4 * (v7 + v5 - ((((v7 + v5) >> 6) * v2) >> 32) * v3));
  return (*(v6 + 8 * ((20344 * (v0 == 255)) ^ v1)))(0);
}

uint64_t sub_1000CE3A8@<X0>(unint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x39D0]) = v2;
  STACK[0x3840] = v3;
  STACK[0x3820] = v6;
  STACK[0x3838] = a1;
  LODWORD(STACK[0x35E8]) = 0;
  LODWORD(STACK[0x3850]) = 0;
  v11 = *v5;
  v12 = v5[7];
  STACK[0x3600] = v5[5] ^ STACK[0x3600];
  LODWORD(STACK[0x35B8]) = v5[1] ^ v4;
  STACK[0x3608] = v5[6] ^ STACK[0x3608];
  v13 = v5[8];
  STACK[0x3848] = v11 ^ STACK[0x3848];
  LOBYTE(v11) = (v12 >> 1) | (v12 << 7);
  LODWORD(STACK[0x35C8]) ^= v5[3];
  v14 = 4647 * ((v13 + 111) ^ 0x1C) + 4767822;
  STACK[0x35F0] = v5[4] ^ v7;
  v15 = *(v9 + v14 - (((1266205 * v14) >> 32) >> 1) * v8) ^ 0xFFFFFFE3;
  STACK[0x35F8] = v5[12] ^ STACK[0x35F8];
  v16 = 4647 * (v11 ^ 0xD9) + 19140993 - (((1266205 * (4647 * (v11 ^ 0xD9u) + 19140993)) >> 32) >> 1) * v8;
  v17 = 4647 * (v10 ^ v5[14] ^ 0xFE) + 13123128;
  STACK[0x3640] = v5[13] ^ STACK[0x3640];
  LODWORD(STACK[0x35C0]) ^= v5[9];
  STACK[0x35D0] = ((v15 >> 3) | (32 * v15)) ^ STACK[0x35D0];
  STACK[0x3650] = v5[15] ^ STACK[0x3650];
  v18 = *(v9 + v17 - (((1266205 * v17) >> 32) >> 1) * v8) - 71;
  LODWORD(STACK[0x35E0]) ^= v5[11];
  STACK[0x3830] = v5;
  LODWORD(STACK[0x35D8]) ^= v5[10];
  STACK[0x3610] = (97 * (*(v9 + v16) ^ 0x27)) ^ STACK[0x3610];
  STACK[0x3648] = (v18 ^ (v18 << 6) ^ (4 * v18) ^ 0xFFFFFFFE) + 26;
  v19 = *(STACK[0x3AC0] + 8 * a2);
  LODWORD(STACK[0x3AC8]) = 1;
  return v19();
}

uint64_t sub_1000CE680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  LODWORD(STACK[0x2D8]) = v23;
  v24 = STACK[0x288];
  v25 = v23 + ((v24 - 1099944934) ^ (v24 + 61500541));
  v26 = v25 < 0x128AFB94;
  v27 = v25 > a22;
  if (a22 < 0x128AFB94 != v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  return (*(v22 + 8 * ((222 * !v28) ^ v24)))();
}

uint64_t sub_1000CE760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = STACK[0x8B0];
  STACK[0x430] = *(STACK[0x8B0] + 8 * v5);
  return (*(v8 + 8 * ((10923 * (v6 == ((((v7 + 2071969988) & 0x84807FFB) - 1211093082) ^ 0xBA684CBFLL))) ^ v7)))(a1, -3083895697, 0xB2823E14A03C0367, 54, a5, 0x7171C1A0366789E7, 0x5B59BDFF45E7179DLL, 0x277DC8E19F5CF592);
}

uint64_t sub_1000CE97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, char a20, char a21, char a22)
{
  LOBYTE(STACK[0x77D]) ^= a19 ^ 0x28;
  LOBYTE(STACK[0x68A]) ^= a20 ^ 0x8E;
  LOBYTE(STACK[0x597]) ^= ((a5 - 126) | 1) ^ a21 ^ 0xA2;
  LOBYTE(STACK[0x869]) ^= a22 ^ 0xE8;
  return (*(STACK[0x2D0] + 8 * a5))();
}

uint64_t sub_1000CE9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X7>, int a8@<W8>)
{
  v24 = (v13 + a8 - 1115);
  v25 = (a1 + v11);
  v27 = *(*a6 + ((*v16 & (((a1 + v11) & (v24 - 25945) & 0xF8BCC00F) + ((a1 + v11) & (v24 - 25945) | 0xF8BCC008) + 18205068)) & 0xFFFFFFFFFFFFFFF8));
  v28 = (__ROR8__((a1 + v11) & (v24 - 25945), 8) + v27) ^ 0xF41651499F5E3C67;
  v29 = __ROR8__(v28, 8);
  v30 = v28 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30 - ((2 * (v29 + v30)) & 0x2F025ADA31956A34) + a4) ^ v20;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v8;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (a7 - ((v35 + v34) | a7) + ((v35 + v34) | v14)) ^ v15;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = __ROR8__((v38 + v37 - (v18 & (2 * (v38 + v37))) + v19) ^ v23, 8);
  v40 = (v38 + v37 - (v18 & (2 * (v38 + v37))) + v19) ^ v23 ^ __ROR8__(v37, 61);
  v41 = ((v22 | (2 * (v39 + v40))) - (v39 + v40) + v9) ^ v12;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - (a2 & (2 * (v43 + v42))) + a3) ^ v17;
  *v25 = ((__ROR8__(v44, 8) + (v44 ^ __ROR8__(v42, 61))) ^ v21) >> (8 * (v25 & 7u));
  return (*(a5 + 8 * ((20322 * (v11 == 55)) ^ v10)))(a1);
}

uint64_t sub_1000CEE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v11 = STACK[0x3578];
  LODWORD(STACK[0x38C0]) = LODWORD(STACK[0x3578]) ^ 0x3007;
  v12 = STACK[0x3638];
  v13 = STACK[0x35A0];
  v14 = STACK[0x3580];
  if (STACK[0x3638])
  {
    v15 = STACK[0x3580];
  }

  else
  {
    v15 = STACK[0x35A0];
  }

  if (v12)
  {
    v16 = STACK[0x3590];
  }

  else
  {
    v16 = STACK[0x3860];
  }

  if (v12)
  {
    v14 = STACK[0x3860];
  }

  else
  {
    v13 = STACK[0x3590];
  }

  if ((v12 & 2) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  LODWORD(STACK[0x35A0]) = v17;
  if ((v12 & 2) != 0)
  {
    v18 = v13;
  }

  else
  {
    v18 = v14;
  }

  LODWORD(STACK[0x3580]) = v18;
  if ((v12 & 2) == 0)
  {
    v15 = v16;
  }

  LODWORD(STACK[0x3860]) = v15;
  if ((v12 & 2) != 0)
  {
    v19 = v14;
  }

  else
  {
    v19 = v13;
  }

  LODWORD(STACK[0x3590]) = v19;
  v20 = STACK[0x3858];
  v21 = STACK[0x35A8];
  v22 = STACK[0x3598];
  if (STACK[0x3858])
  {
    v23 = STACK[0x3598];
  }

  else
  {
    v23 = STACK[0x35A8];
  }

  if (v20)
  {
    v24 = STACK[0x3588];
  }

  else
  {
    v24 = STACK[0x3868];
  }

  if (v20)
  {
    v22 = STACK[0x3868];
  }

  else
  {
    v21 = STACK[0x3588];
  }

  if ((v20 & 2) != 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  LODWORD(STACK[0x35A8]) = v25;
  if ((v20 & 2) != 0)
  {
    v26 = v21;
  }

  else
  {
    v26 = v22;
  }

  LODWORD(STACK[0x3598]) = v26;
  if ((v20 & 2) == 0)
  {
    v23 = v24;
  }

  LODWORD(STACK[0x3868]) = v23;
  if ((v20 & 2) != 0)
  {
    v27 = v22;
  }

  else
  {
    v27 = v21;
  }

  LODWORD(STACK[0x3588]) = v27;
  v28 = *(v8 + 8 * v11);
  LODWORD(STACK[0x3798]) = STACK[0x3568];
  LODWORD(STACK[0x3890]) = a7;
  LODWORD(STACK[0x3878]) = STACK[0x3850];
  LODWORD(STACK[0x36A8]) = STACK[0x3548];
  LODWORD(STACK[0x3880]) = v10;
  LODWORD(STACK[0x37B0]) = v9;
  LODWORD(STACK[0x37A0]) = STACK[0x3570];
  LODWORD(STACK[0x3790]) = STACK[0x3560];
  LODWORD(STACK[0x3938]) = STACK[0x3840];
  LODWORD(STACK[0x36E0]) = a8;
  LODWORD(STACK[0x3888]) = STACK[0x3848];
  LODWORD(STACK[0x37A8]) = STACK[0x3558];
  LODWORD(STACK[0x36C0]) = a6;
  LODWORD(STACK[0x36A0]) = STACK[0x3550];
  return v28();
}

uint64_t sub_1000CEF2C()
{
  v4 = *(v1 + 264);
  v5 = STACK[0x7B8];
  v6 = LOWORD(STACK[0x19BE]) ^ 0xF2A9;
  v7 = 1964904101 * ((((v3 - 240) | 0xD5B2E947) + (~(v3 - 240) | 0x2A4D16B8)) ^ 0x2F9002C2);
  STACK[0x25E8] = STACK[0x1388] + 4;
  *(v3 - 200) = v0 - v7 - 1318550231;
  *(v3 - 220) = v7 + ((2 * v6) & 0x1FD3E) - 17055880 + (v6 ^ (((v0 - 1309406802) | 0x81140004) - 1303364461));
  STACK[0x25F0] = v4;
  STACK[0x25D0] = *(&off_101353600 + (v0 - 1318564740)) - 4;
  STACK[0x25D8] = v5;
  v8 = (*(v2 + 8 * (v0 ^ 0x4E97C403)))(v3 - 240);
  LODWORD(STACK[0xF50]) = *(v3 - 224);
  return (*(v2 + 8 * ((873 * (v0 < 0xA2C1C2DC)) ^ (v0 - 1318561462))))(v8);
}

uint64_t sub_1000D0200(int a1, int a2, int a3, uint64_t a4, uint64_t a5, char a6, unsigned int a7, int a8)
{
  v22 = *(v20 + 4 * (667 * (a3 ^ 0xDE) + 170752 - (667 * (a3 ^ 0xDEu) + 170752) / 0x340 * v11)) ^ v12;
  v23 = a3 ^ ((a3 & v19) >> 1);
  v24 = STACK[0x3930];
  v25 = STACK[0x3AA0];
  v26 = STACK[0x3A98];
  v27 = STACK[0x3940];
  v28 = ((((v23 & STACK[0x3AB0]) >> STACK[0x3A88]) + (v23 << STACK[0x3930])) ^ LODWORD(STACK[0x3940])) & v9 ^ 0xB8;
  *(v15 + 4 * (((*(STACK[0x3AE0] + (4647 * v28 + 9544938 - ((((4647 * v28 + 9544938) >> 7) * v13) >> 32) * v10)) - 87) ^ 0xFB) + 85)) = (((v22 ^ ((v22 & v8) >> 1)) & v14) >> v26) ^ LODWORD(STACK[0x3AE8]) ^ (((v22 ^ ((v22 & v8) >> 1)) & STACK[0x3AA0]) << a6);
  v29 = *(v21 + 2 * (a2 + (a3 ^ 0xD9) * a1 - ((((a2 + (a3 ^ 0xD9u) * a1) * a7) >> 32) >> 10) * a8)) ^ v16;
  v30 = *(STACK[0x3AE0] + (4647 * (v23 ^ 0xC4) + 14331348 - ((((4647 * (v23 ^ 0xC4) + 14331348) >> 7) * v13) >> 32) * v10)) + 117;
  v31 = (v30 ^ 0x12 ^ (v30 >> 2) & 0x12) + 26;
  LODWORD(v23) = 4647 * (((v31 & v14) >> v26) ^ 0x9A) + 25186740;
  *(v17 + 4 * (((v31 << v24) | ((*(STACK[0x3AE0] + v23 - (((1266205 * v23) >> 32) >> 1) * v10) ^ 0xC3) + 85)) ^ v27)) = ((((v29 ^ ((v29 & v8) >> 1)) & v14) >> v26) | (((v29 ^ ((v29 & v8) >> 1)) & v25) << a6)) ^ LODWORD(STACK[0x38D0]);
  return (*(STACK[0x3AC0] + 8 * (((a3 == 255) * v18) ^ LODWORD(STACK[0x3AD0]))))();
}

uint64_t sub_1000D03E0@<X0>(int a1@<W1>, char a2@<W2>, char a3@<W3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, unsigned int a18)
{
  LODWORD(STACK[0x2C4]) = a1 - 3131;
  v23 = (a1 + 2964) | 0x200;
  LODWORD(STACK[0x2A8]) = v23;
  v24 = 13 * (v23 ^ 0x43C1);
  LODWORD(STACK[0x2B8]) = v24;
  LOBYTE(STACK[0x69D]) = (-107 - v21) ^ v21 ^ ((v21 ^ 0xF0) - 101) ^ ((v21 ^ 0x10) + 123) ^ 0xA7 ^ ((v21 ^ 0x8A) + 33 + v24);
  LOBYTE(v24) = (a4 ^ 7) & (2 * (a4 & 6)) ^ a4 & 6;
  LOBYTE(STACK[0x87C]) = a4 ^ (2 * ((a4 ^ 7) & (2 * (a4 ^ 7)) & (4 * ((a4 ^ 7) & (2 * (a4 ^ 7)))) & (16 * ((a4 ^ 7) & (2 * (a4 ^ 7)) & (4 * v24) ^ v24)) ^ (a4 ^ 7) & (2 * (a4 ^ 7)) & (4 * v24) ^ v24)) ^ 0x34;
  LOBYTE(v24) = (a2 + 93) & 0x3C ^ 0xAD;
  v25 = (a2 + 93) ^ 0x62;
  LOBYTE(v23) = a2 - 12;
  LOBYTE(STACK[0x8F3]) = (a2 + 93) ^ (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (v25 & (2 * (((2 * (v24 ^ (a2 + 93) & 0x5E)) ^ 4) & v25 ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ 0xA7;
  LOBYTE(v24) = a2 + 63;
  LOBYTE(STACK[0x5AA]) = (112 - v20) ^ v20 ^ ((v20 ^ 0x48) - 56) ^ ((v20 ^ 0x68) - 24) ^ ((v20 ^ 0xAF) + 33) ^ 0x42;
  v26 = (v18 ^ 0x47) & (2 * (v18 & 0xE7)) ^ v18 & 0xE7;
  v27 = ((2 * (v18 ^ 0x47)) ^ 0x40) & (v18 ^ 0x47) ^ (2 * (v18 ^ 0x47)) & 0xA0;
  LOBYTE(STACK[0x790]) = v18 ^ (2 * (((4 * v27) ^ 0x80) & v27 & (16 * (v27 & (4 * v26) ^ v26)) ^ v27 & (4 * v26) ^ v26)) ^ 0xD5;
  v28 = a3 - v23;
  LOBYTE(STACK[0x714]) = (v19 - ((2 * v19) & 0xBB) + 93) ^ 0xC6;
  v29 = (v23 + v22 + 114) ^ (a3 - v23);
  v30 = (a3 - v23) ^ v23;
  v31 = (v22 + 120) & 0xC ^ 9;
  v32 = (v22 + 120) ^ 0x7A;
  LOBYTE(STACK[0x800]) = (v22 + 120) ^ (2 * (v32 & (2 * (v32 & (2 * (v32 & (2 * (v32 & (2 * (v32 & (2 * ((v31 | 0x36) ^ (v22 + 120) & 0x36)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ 0x97;
  v33 = v24 + v19 + v23;
  LOBYTE(STACK[0x621]) = (a3 - ((2 * a3) & 0xB8) + 92) ^ 0xC7;
  v34 = v21 - v20 - 2008821466;
  v35 = v18 + 1205650039 + v20 + v20 + 1491223877 + 425979299 - ((2 * (v18 + 1205650039 + v20 + v20 + 1491223877)) & 0x32C7DB46);
  v36 = (a4 + 1219806470 + v20 + 1491223877) ^ v34;
  LOBYTE(STACK[0x883]) = v36 ^ 0x32;
  v37 = v34 ^ (v20 + 1491223877);
  v38 = v33 ^ v28;
  LOBYTE(STACK[0x5B1]) = v37 ^ 0x32;
  LOBYTE(STACK[0x807]) = (v29 - ((2 * v29) & 0x68) - 76) ^ 0x2F;
  LOBYTE(STACK[0x8FA]) = (v30 - ((2 * v30) & 0xC8) - 28) ^ 0x7F;
  LOBYTE(STACK[0x6A4]) = v34 ^ 0x65;
  v39 = v29 ^ v30 ^ 0xE6;
  LOBYTE(STACK[0x71B]) = (v33 - ((2 * v33) & 0x26) + 19) ^ 0x88;
  LOBYTE(STACK[0x797]) = (v18 + 119 + v20 + v20 + 69 - 93 - ((2 * (v18 + 119 + v20 + v20 + 69)) & 0x46)) ^ 0x91;
  LOBYTE(STACK[0x628]) = (v28 - ((2 * v28) & 0x52) - 87) ^ 0x65;
  v40 = v33 + 105 + v39;
  v41 = v40 + (v30 ^ 0xE6);
  v42 = v39 ^ v38;
  v43 = v38 ^ 0x57;
  HIDWORD(v44) = v35 ^ v34 ^ 0x2FF4;
  LODWORD(v44) = v35 ^ v34 ^ 0xEDFB0000;
  v45 = v39 ^ v38 ^ 0x57;
  v46 = v43 + 75;
  v47 = v37 ^ 0xA65600E6;
  v48 = ((v37 ^ 0xA65600E6) + 633150924 - ((2 * (v37 ^ 0xA65600E6)) & 0x4B7A3B98)) ^ v36;
  HIDWORD(v44) = (v44 >> 16) ^ 0x7E9E73A5;
  LODWORD(v44) = HIDWORD(v44);
  v49 = v44 >> 16;
  v50 = (v48 ^ 0x25BD1DCC) & (v35 ^ 0x5EC4D843) ^ v48 & 0x47A735E0;
  v51 = ((v48 ^ 0x25BD1DCC) + 425979299 - ((2 * (v48 ^ 0x25BD1DCC)) & 0x32C7DB46)) ^ v35;
  v52 = v49 ^ v48;
  LOBYTE(STACK[0x80E]) = (v42 - ((2 * v42) & 0x94) + 74) ^ 0x86;
  v53 = ((2 * v50) ^ 0xB4A2B80) - 1258167191 + v51 - ((2 * (((2 * v50) ^ 0xB4A2B80) - 1258167191 + v51)) & 0xAA4263BA) + 1428238813;
  LOBYTE(STACK[0x6AB]) = ((((v49 ^ 0x9E) + 78) ^ 0x78) - 123) ^ ((v49 ^ 0x9E) + 78) ^ ((((v49 ^ 0x9E) + 78) ^ 0xB0) + 77) ^ ((((v49 ^ 0x9E) + 78) ^ 0x30) - 51) ^ ((((v49 ^ 0x9E) + 78) ^ 0xFB) + 8) ^ 0x31;
  LOBYTE(v37) = v45 ^ v46;
  LOBYTE(STACK[0x88A]) = v52 ^ 0x60;
  v54 = (((v53 ^ 0x112169B8) - 287402424) ^ ((v53 ^ 0x42CCF99D) - 1120729501) ^ ((v53 ^ 0x6CCA1F8) - 114074104)) + v47;
  v55 = v54 - 2044382382;
  LOBYTE(STACK[0x5B8]) = (v54 + 82) ^ (35 - v54) ^ (((v54 + 82) ^ 0x34) - 65) ^ (((v54 + 82) ^ 0x50) - 37) ^ (((v54 + 82) ^ 0xEE) + 101) ^ 0x47;
  LOBYTE(STACK[0x62F]) = (v46 - ((2 * v46) & 0xF8) - 4) ^ 0x67;
  v56 = v52 ^ 0x47CC951 ^ ((((v49 ^ 0x73A57E9E) - 1936165298) ^ 0x6B214E78) - 960881787) ^ ((v49 ^ 0x73A57E9E) - 1936165298) ^ ((((v49 ^ 0x73A57E9E) - 1936165298) ^ 0x71E2DEB0) - 596014259) ^ ((((v49 ^ 0x73A57E9E) - 1936165298) ^ 0xBF58C530) + 314806477) ^ ((((v49 ^ 0x73A57E9E) - 1936165298) ^ 0xF7FFFFFB) + 1516546568);
  v57 = (((v52 ^ 0xD9834081) - 1779028367) ^ ((v52 ^ 0xE346C09) + 1111556857) ^ ((v52 ^ 0x81AF4FDA) - 841342676)) - 140687864;
  LOBYTE(STACK[0x891]) = ((v57 ^ 0xDD) - 87) ^ v57 ^ ((v57 ^ 0xC) + 122) ^ ((v57 ^ 0xA4) - 46) ^ (-v57 - 118) ^ 0xB8;
  LOBYTE(v54) = v37 + (v40 ^ 0x4C);
  LOBYTE(STACK[0x901]) = (v41 - ((2 * v41) & 0xF0) - 8) ^ 0x63;
  LOBYTE(v49) = v41 + 2 * (v40 ^ 0x4C);
  LOBYTE(STACK[0x79E]) = v53 ^ 0xEF;
  v58 = v56 + (v53 ^ 0x62A29791);
  v59 = v55 + 2 * (v53 ^ 0x62A29791) - 509808203;
  v60 = ((79 - v45) & 0x72) + v45 - 80 + ((v45 - 80) & 0x72);
  LOBYTE(STACK[0x815]) = (v60 - 2 * (v60 & 0xF) - 113) ^ 0x14;
  LOBYTE(STACK[0x7A5]) = v53 ^ 0x99;
  LOBYTE(v55) = (v59 ^ 0x84) & (2 * (v59 & 0xD6)) ^ v59 & 0xD6;
  v61 = ((2 * (v59 ^ 0xA0)) ^ 0xEC) & (v59 ^ 0xA0) ^ (2 * (v59 ^ 0xA0)) & 0x76;
  LOBYTE(v56) = v61 ^ 0x12;
  v62 = v55 ^ 0x76 ^ (v61 ^ 0x60) & (4 * v55);
  LOBYTE(STACK[0x5BF]) = v59 ^ (2 * ((16 * v62) ^ v62 ^ ((16 * v62) ^ 0x60) & ((4 * v56) & 0x70 ^ ((4 * v56) ^ 0xD0) & v56 ^ 0x20))) ^ 0xC8;
  v63 = v53 ^ 0xE7D0A421 ^ ((v57 ^ 0x490A06DD) - 312015447) ^ v57 ^ ((v57 ^ 0xDCD7410C) + 2025472634) ^ ((v57 ^ 0x34A144A4) - 1865660462) ^ ((v57 ^ 0xFAEEFFFF) + 1585708171);
  v64 = v59 - v63 - 312537898;
  LOBYTE(STACK[0x722]) = (v40 - ((2 * v40) & 0x90) + 72) ^ 0xD3;
  v65 = v40 ^ 0x76;
  v66 = v40 ^ 0x76 ^ (v45 + 34);
  LOBYTE(STACK[0x908]) = (v49 - ((2 * v49) & 0x1C) + 14) ^ 0x95;
  v67 = ((v53 ^ 0xEFA5EF87) - 1278186158) ^ ((v53 ^ 0x4F183A96) + 325957697) ^ ((v53 ^ 0x1CFF8DBA) + 1082789741);
  LOBYTE(v49) = v49 - v66;
  LOBYTE(STACK[0x729]) = (v40 + (~(2 * v40) | 0x51) - 40) ^ 0x3A;
  LOBYTE(STACK[0x6B2]) = (v58 + 74) ^ -v58 ^ (((v58 + 74) ^ 0x87) + 51) ^ (((v58 + 74) ^ 0x4F) - 5) ^ (((v58 + 74) ^ 0x7D) - 55) ^ 0x78;
  LOBYTE(v57) = v49 ^ (v54 + 20);
  v68 = v66 - v57;
  v69 = v64 ^ (v58 - 1196262892);
  LOBYTE(STACK[0x636]) = (v54 - ((2 * v54) & 0x90) + 72) ^ 0xD3;
  v70 = v67 + 1905858574 + v63 - ((2 * (v67 + 1905858574 + v63)) & 0x9094FF12) + 1212841865;
  LOBYTE(STACK[0x81C]) = (v66 - v57 + (~(2 * (v66 - v57)) | 0x59) - 44) ^ 0x48;
  v71 = v63 - (((v69 ^ 0x8EF595E1) + 190585572) ^ ((v69 ^ 0x703CB2FF) - 174768642) ^ ((v69 ^ 0xFEC9271E) + 2069932061));
  LOBYTE(v67) = ((v71 + 95) ^ 0xDB) & 0xFE | ((v71 + 95) ^ 0x24) & (2 * ((v71 + 95) ^ 0xDB));
  v72 = ((2 * ((v71 + 95) & 0xA4)) ^ 0xA4) & (v71 + 95) ^ 0x7F ^ (v67 ^ 0x30) & (4 * (((2 * ((v71 + 95) & 0xA4)) ^ 0xA4) & (v71 + 95)));
  *(STACK[0x2C8] + (v69 & 0x318 ^ 0x318u) + (v69 & 0x318)) = (v63 - (((v69 ^ 0xE1) - 28) ^ (-v69 - 3) ^ ((v69 ^ 0x1E) + 29)) + 95) ^ (2 * ((16 * v72) ^ v72 ^ ((16 * v72) ^ 0x70) & (((4 * v67) ^ 0xF0) & v67 ^ (4 * v67) & 0x70))) ^ 0x88;
  v73 = v65 - 116 + v66;
  LOBYTE(STACK[0x7AC]) = v70 ^ 0xBB;
  LOBYTE(STACK[0x6B9]) = v69 ^ 0x32;
  LOBYTE(STACK[0x90F]) = (v49 - ((2 * v49) & 0x20) - 112) ^ 0x7D;
  v74 = (2 * ((v71 - 163813281) & 0x8F6D26A4)) & ((v71 - 163813281) ^ 0x4F4C8416) ^ (v71 - 163813281) & 0x8F6D26A4;
  v75 = ((2 * ((v71 - 163813281) ^ 0x431E8056)) ^ 0x98E74DE4) & ((v71 - 163813281) ^ 0x431E8056) ^ (2 * ((v71 - 163813281) ^ 0x431E8056)) & 0xCC73A6F2;
  v76 = v75 ^ 0x4410A212;
  v77 = (v75 ^ 0x86104A0) & (4 * v74) ^ v74;
  v78 = ((4 * v76) ^ 0x31CE9BC8) & v76 ^ (4 * v76) & 0xCC73A6F0;
  v79 = (v78 ^ 0x4282D0) & (16 * v77) ^ v77;
  v80 = ((16 * (v78 ^ 0xCC312432)) ^ 0xC73A6F20) & (v78 ^ 0xCC312432) ^ (16 * (v78 ^ 0xCC312432)) & 0xCC73A6F0;
  v81 = v79 ^ 0xCC73A6F2 ^ (v80 ^ 0xC4322600) & (v79 << 8);
  v82 = v70 ^ (v71 - 163813281) ^ (2 * ((v81 << 16) & 0x4C730000 ^ v81 ^ ((v81 << 16) ^ 0x26F20000) & (((v80 ^ 0x84180D2) << 8) & 0x4C730000 ^ 0xC510000 ^ (((v80 ^ 0x84180D2) << 8) ^ 0x73A60000) & (v80 ^ 0x84180D2)))) ^ 0x572414C9;
  LOBYTE(STACK[0x5C6]) = v64 ^ 0x44;
  LOBYTE(STACK[0x63D]) = (v57 - ((2 * v57) & 0x77) + 59) ^ 0xA0;
  LOBYTE(v80) = (v66 - v57) ^ v73;
  LOBYTE(v57) = (v49 ^ 0x76 ^ (v66 - v57 + 37)) - v80;
  v83 = ((v69 ^ 0xD3F03661) + 1448720740) ^ ((v69 ^ 0xF95AF909) + 2096330252) ^ ((v69 ^ 0x2AAACF68) - 1358741397);
  LOBYTE(v69) = v66 - 117;
  v84 = v64 ^ 0x205340D0 ^ (v71 - ((2 * (v71 + 1986413608)) & 0x67574B4C) + 705817038);
  v85 = v83 + 2055634787 + v71 + 1986413608 - ((2 * (v83 + 2055634787 + v71 + 1986413608)) & 0x30151A80) - 1744138944;
  LOBYTE(STACK[0x730]) = v73 ^ 0x9B;
  v86 = (((v71 + 983289559) ^ 0x38258955) + 654296083) ^ (v71 + 983289559) ^ (((v71 + 983289559) ^ 0xD1C585CC) - 820000628) ^ (((v71 + 983289559) ^ 0x773871DE) + 1776434330) ^ (((v71 + 983289559) ^ 0x7FFDCFFF) + 1629979321);
  LOBYTE(v71) = v80 ^ (v66 - 117);
  LOBYTE(v63) = (v68 + 86) & 0xA ^ 0xA2;
  LOBYTE(STACK[0x916]) = (v57 - ((2 * v57) & 0xAC) - 42) ^ 0x4D;
  LOBYTE(STACK[0x823]) = (v68 + 86) ^ (2 * (((v68 + 86) ^ 0x44) & (2 * (((v68 + 86) ^ 0x44) & (2 * (((v68 + 86) ^ 0x44) & (2 * (((v68 + 86) ^ 0x44) & (2 * (((v68 + 86) ^ 0x44) & (2 * v63) | v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ 0x91;
  v87 = ((2 * (v84 - v82)) & 0xFC95FF7C) + ((v84 - v82) ^ 0xFE4AFFBE);
  LOBYTE(STACK[0x6C0]) = v85 ^ 0x72;
  LOBYTE(v83) = (v68 + 28) ^ (v66 - 117);
  LOBYTE(STACK[0x89F]) = v86 ^ 0x8A;
  v88 = v82 ^ v85;
  LOBYTE(v82) = ((2 * (v87 - 8)) & 0x94 ^ 0x4A) & (v87 - 8);
  v89 = ((2 * ((v87 - 8) ^ 0xED)) ^ 0x4E) & ((v87 - 8) ^ 0xED) ^ (2 * ((v87 - 8) ^ 0xED)) & 0xA6;
  LOBYTE(STACK[0x5CD]) = (v87 - 8) ^ (2 * (((4 * v89) ^ 0x80) & v89 & (16 * (v89 & (4 * v82) ^ v82)) ^ v89 & (4 * v82) ^ v82)) ^ 0x78;
  v90 = v66 + 21;
  LOBYTE(v84) = v71 - (v66 + 21);
  LOBYTE(STACK[0x737]) = (v71 - ((2 * v71) & 0x1C) - 114) ^ 0x15;
  v91 = v86 ^ v85;
  LOBYTE(STACK[0x7B3]) = v88 ^ 0x72;
  v92 = ((v88 ^ 0x5C33ACFB) + 76083963) ^ ((v88 ^ 0x2139CEF1) + 2038599921) ^ ((v88 ^ 0xE500EF4A) - 1111772852);
  v93 = v57 + v83;
  LOBYTE(v69) = v69 - ((2 * v69) & 0x10);
  LOBYTE(v88) = v57 + v84;
  LOBYTE(STACK[0x644]) = (v69 + 8) ^ 0x93;
  v94 = v92 - (((v85 ^ 0x66B72835) - 1723279413) ^ ((v85 ^ 0x2F227D6C) - 790789484) ^ ((v85 ^ 0xD19FD819) + 778053607)) + v87 - 689390750;
  v95 = v94 - ((2 * v94 + 1348119976) & 0x56FB7C86) + 1403720983;
  v96 = (v91 ^ 0x792F3FF8) + 28639298 + v87;
  v97 = (((v85 ^ 0x27664131) - 661012785) ^ ((v85 ^ 0x637BFB95) - 1669069717) ^ ((v85 ^ 0xDC1737E4) + 602458140)) - (((v95 ^ v96 ^ 0x7CCA0E97) - 108364284) ^ ((v95 ^ v96 ^ 0xCCBD2A8) - 1987337667) ^ ((v95 ^ v96 ^ 0x5B7C627C) - 566488343));
  v98 = ((v97 + 1301547929) ^ 0xBA14DD48) & (2 * ((v97 + 1301547929) & 0xA296DE09)) ^ (v97 + 1301547929) & 0xA296DE09;
  v99 = ((2 * ((v97 + 1301547929) ^ 0xFE1DE158)) ^ 0xB9167EA2) & ((v97 + 1301547929) ^ 0xFE1DE158) ^ (2 * ((v97 + 1301547929) ^ 0xFE1DE158)) & 0x5C8B3F50;
  v100 = v99 ^ 0x44890151;
  v101 = (v99 ^ 0x18023800) & (4 * v98) ^ v98;
  v102 = ((4 * v100) ^ 0x722CFD44) & v100 ^ (4 * v100) & 0x5C8B3F50;
  v103 = (v102 ^ 0x50083D40) & (16 * v101) ^ v101;
  v104 = ((16 * (v102 ^ 0xC830211)) ^ 0xC8B3F510) & (v102 ^ 0xC830211) ^ (16 * (v102 ^ 0xC830211)) & 0x5C8B3F50;
  v105 = v103 ^ 0x5C8B3F51 ^ (v104 ^ 0x48833500) & (v103 << 8);
  v106 = (v97 + 1301547929) ^ (2 * ((v105 << 16) & 0x5C8B0000 ^ v105 ^ ((v105 << 16) ^ 0x3F510000) & (((v104 ^ 0x14080A41) << 8) & 0x5C8B0000 ^ 0x54800000 ^ (((v104 ^ 0x14080A41) << 8) ^ 0xB3F0000) & (v104 ^ 0x14080A41))));
  LOBYTE(v83) = (((v88 & 0x9E ^ 0x9E) + (v88 & 0x9E)) & 0x8E) + (v88 ^ v93 ^ v83);
  LOBYTE(v97) = ((v97 - 94) & ~((v97 - 103) ^ (2 * v105)) ^ (93 - v97)) & 0xA9 ^ v88 ^ v93 ^ 0x32;
  LOBYTE(v105) = (v83 - 53) & 7 | 0x70;
  LOBYTE(v104) = (v83 - 53) ^ 0x26;
  v107 = v90 - (v88 ^ v93);
  LOBYTE(STACK[0x82A]) = (v83 - 53) ^ (2 * (v104 & (2 * (v104 & (2 * (v104 & (2 * (v104 & (2 * (v104 & (2 * (v104 & (2 * (v83 - 53)) & 0x4E ^ v105)) ^ v105)) ^ v105)) ^ v105)) ^ v105)) ^ v105)) ^ 0x9C;
  v108 = v95 ^ v96 ^ 0x71;
  LOBYTE(STACK[0x5D4]) = v108;
  LOBYTE(STACK[0x8A6]) = v108 ^ v91 ^ 0xF8;
  LOBYTE(v82) = v83 + 114;
  LOBYTE(STACK[0x91D]) = v97;
  LOBYTE(v83) = v107 ^ v93;
  v109 = (v107 ^ v93) + (v88 ^ v93);
  LOBYTE(STACK[0x64B]) = (v107 - ((2 * v107) & 0x5A) - 83) ^ 0x36;
  LOBYTE(STACK[0x7BA]) = v95 ^ 0x71;
  LOBYTE(v97) = v109 ^ v88 ^ v93 ^ v82;
  LOBYTE(STACK[0x6C7]) = v106 ^ 0x99;
  LOBYTE(STACK[0x73E]) = (v88 - ((2 * v88) & 0x16) + 11) ^ 0x90;
  v110 = v109 - v93;
  LOBYTE(v71) = ((v69 + 8) & 0xA9 ^ 0x7F) & ((v69 + 8) & 0xA9 ^ 0xF7) ^ ((-9 - v69) & 0x21 | 0x58) ^ (v97 - ((2 * v97) & 0x2A) - 107);
  v111 = (v96 - ((2 * v96) & 0xB9CE869E) + 1558659919) ^ 0x7F65E3E4 ^ v106;
  v112 = v111 + (v95 ^ v96 ^ 0x2B7DBE43);
  LOBYTE(v69) = v109 - v93 + v83;
  v113 = v112 ^ v91;
  LOBYTE(STACK[0x831]) = v71;
  v114 = ((2 * (v112 - v96)) & 0x8FFF6FEE) + ((v112 - v96) ^ 0x47FFB7F7);
  v115 = v113 ^ v96;
  v116 = v114 - 1581810 + v111;
  v117 = (v116 ^ 0xB61C40FB) & (2 * (v116 & 0xB8186AFB)) ^ v116 & 0xB8186AFB;
  v118 = ((2 * (v116 ^ 0xA61C84AD)) ^ 0x3C09DCAC) & (v116 ^ 0xA61C84AD) ^ (2 * (v116 ^ 0xA61C84AD)) & 0x1E04EE56;
  v119 = v118 ^ 0x2042252;
  v120 = (v118 ^ 0x204CC04) & (4 * v117) ^ v117;
  v121 = ((4 * v119) ^ 0x7813B958) & v119 ^ (4 * v119) & 0x1E04EE54;
  v122 = (v121 ^ 0x1800A850) & (16 * v120) ^ v120;
  v123 = ((16 * (v121 ^ 0x6044606)) ^ 0xE04EE560) & (v121 ^ 0x6044606) ^ (16 * (v121 ^ 0x6044606)) & 0x1E04EE50;
  v124 = v122 ^ 0x1E04EE56 ^ (v123 ^ 0x4E400) & (v122 << 8);
  v125 = v116 ^ (2 * ((v124 << 16) & 0x1E040000 ^ v124 ^ ((v124 << 16) ^ 0x6E560000) & (((v123 ^ 0x1E000A16) << 8) & 0x1E040000 ^ 0x1A000000 ^ (((v123 ^ 0x1E000A16) << 8) ^ 0x4EE0000) & (v123 ^ 0x1E000A16))));
  v126 = v97 ^ v93;
  LOBYTE(STACK[0x7C1]) = v115 ^ 0xCA;
  LOBYTE(STACK[0x6CE]) = v125 ^ 0x65;
  v127 = (2 * ((v114 - 1581810) & 0xB8186AFB)) & ((v114 - 1581810) ^ 0xB6DF4AF3) ^ (v114 - 1581810) & 0xB8186AFB;
  v128 = ((2 * ((v114 - 1581810) ^ 0xC6EF4FB1)) ^ 0xFDEE4A94) & ((v114 - 1581810) ^ 0xC6EF4FB1) ^ (2 * ((v114 - 1581810) ^ 0xC6EF4FB1)) & 0x7EF7254A;
  v129 = v128 ^ 0x211254A;
  v130 = (v128 ^ 0x62F20000) & (4 * v127) ^ v127;
  v131 = ((4 * v129) ^ 0xFBDC9528) & v129 ^ (4 * v129) & 0x7EF72548;
  v132 = v130 ^ 0x7EF7254A ^ (v131 ^ 0x7AD40500) & (16 * v130);
  v133 = (16 * (v131 ^ 0x4232042)) & 0x7EF72540 ^ 0x1085214A ^ ((16 * (v131 ^ 0x4232042)) ^ 0xEF7254A0) & (v131 ^ 0x4232042);
  v134 = (v132 << 8) & 0x7EF72500 ^ v132 ^ ((v132 << 8) ^ 0xF7254A00) & v133;
  v135 = v115 ^ (v114 - 1581810) ^ (2 * ((v134 << 16) & 0x7EF70000 ^ v134 ^ ((v134 << 16) ^ 0x254A0000) & ((v133 << 8) & 0x7EF70000 ^ 0x8D20000 ^ ((v133 << 8) ^ 0x77250000) & v133))) ^ 0x98171F97;
  LOBYTE(STACK[0x8AD]) = v113 ^ 0xCA;
  LOBYTE(v133) = ((v97 - 114) ^ 0x72) + v69 + ((2 * (v97 - 114)) & 0xE4);
  LOBYTE(v97) = (2 * ((v114 + 14) & 0xFB)) & ((v114 + 14) ^ 0xF3) ^ (v114 + 14) & 0xFB;
  LOBYTE(v82) = ((2 * ((v114 + 14) ^ 0xF5)) ^ 0x1C) & ((v114 + 14) ^ 0xF5) ^ (2 * ((v114 + 14) ^ 0xF5)) & 0xE;
  LOBYTE(STACK[0x5DB]) = (v114 + 14) ^ (2 * (((4 * v82) ^ 0x30) & v82 & (16 * ((v82 ^ 0xC) & (4 * v97) ^ v97)) ^ (v82 ^ 0xC) & (4 * v97) ^ v97)) ^ 0xC9;
  v136 = (((v113 ^ 0x78D9E71E) + 1442909210) ^ ((v113 ^ 0x45A372C) + 713219116) ^ ((v113 ^ 0x5ACEFCA) + 729023694)) - 795801846 + (((v125 ^ 0x5D97A4DC) + 318321023) ^ ((v125 ^ 0xD3F60F86) - 1667720667) ^ ((v125 ^ 0x16781D0D) + 1494649008));
  LOBYTE(STACK[0x924]) = (v110 + (~(2 * v110) | 0x69) + 76) ^ 0xD0;
  LOBYTE(STACK[0x745]) = (v126 - 2 * (v126 & 0x3F) + 63) ^ 0xA4;
  LOBYTE(v82) = v69 - ((2 * v69) & 0x52);
  v137 = v126 ^ v110;
  LOBYTE(v115) = v133 + v110 - v137;
  LOBYTE(v69) = v69 ^ 0x73;
  v138 = (v82 - 87 + (~(2 * (v82 - 87)) | 0x23) - 17) ^ 0xDC;
  v139 = v114 - v135 - 1207941111 + v136 - ((2 * (v114 - v135 - 1207941111 + v136)) & 0x11D5695A) - 1997884243;
  LOBYTE(STACK[0x652]) = v138;
  v140 = v137 + v69;
  v141 = v133 ^ v69;
  LOBYTE(v69) = v69 + 111;
  v142 = v136 ^ v125;
  v143 = v135 + 292946501 + (v125 ^ 0x8674A224);
  LOBYTE(STACK[0x6D5]) = ((((v125 ^ 0x24) + 84) ^ 0xEF) - 10) ^ ((v125 ^ 0x24) + 84) ^ ((((v125 ^ 0x24) + 84) ^ 0xAD) - 72) ^ ((((v125 ^ 0x24) + 84) ^ 0xD8) - 61) ^ ((((v125 ^ 0x24) + 84) ^ 0x7F) + 102) ^ 0xD7;
  LOBYTE(STACK[0x8B4]) = v136 ^ v125 ^ 0x16;
  LOBYTE(STACK[0x92B]) = (v115 - ((2 * v115) & 0xF4) + 122) ^ 0xE1;
  LOBYTE(STACK[0x838]) = (v141 - ((2 * v141) & 0x48) + 36) ^ 0xBF;
  LOBYTE(v136) = v140 - v141;
  LOBYTE(STACK[0x5E2]) = v139 ^ 0x9F;
  LOBYTE(v135) = (v125 ^ 0x24) - (((v139 ^ 0xCA) + 54) ^ ((v139 ^ 0x3C) - 60) ^ ((v139 ^ 0x5B) - 91));
  LOBYTE(STACK[0x659]) = (v69 - ((2 * v69) & 0x6A) - 75) ^ 0x2E;
  LOBYTE(v97) = (v136 ^ v115 ^ 0xC1) + 63 + ((2 * (v136 ^ v115)) & 0x82);
  LOBYTE(STACK[0x7C8]) = ((v143 ^ 0x4D) - 8) ^ v143 ^ ((v143 ^ 0xA6) + 29) ^ ((v143 ^ 1) - 68) ^ ((v143 ^ 0xAF) + 22) ^ 0x77;
  v144 = v143 - (((v142 ^ 0x764B369B) - 1872306457) ^ ((v142 ^ 0x601307B8) - 2042695738) ^ ((v142 ^ 0x902C9307) + 1979808635));
  v145 = v144 + 987833954;
  v146 = (v144 + 987833954 - ((2 * (v144 + 1323517973)) & 0x11D5695A) - 1662200224) ^ v139;
  v147 = (v142 ^ 0x8674A224) - v146;
  LODWORD(STACK[0x2B0]) = a18 < 0x1176FC7C;
  LOBYTE(v139) = v141 - v97;
  v148 = v97 - (v140 - v141);
  LOBYTE(STACK[0x74C]) = (v140 - ((2 * v140) & 0xCC) + 102) ^ 0xFD;
  v149 = ((2 * (v146 - (v144 + 1323517973))) & 0xE7EBDDD6) + ((v146 - (v144 + 1323517973)) ^ 0xF3F5EEEB);
  LOBYTE(STACK[0x932]) = (v97 - v136 - ((2 * (v97 - v136)) & 0xC8) - 28) ^ 0x7F;
  LOBYTE(v69) = v69 - v115;
  LOBYTE(STACK[0x8BB]) = (((v147 - 111) ^ 0x2B) - 58) ^ (v147 - 111) ^ (((v147 - 111) ^ 0x88) + 103) ^ (((v147 - 111) ^ 0x45) - 84) ^ (((v147 - 111) ^ 0xF7) + 26) ^ 0x23;
  LOBYTE(v115) = v144 + 120;
  LOBYTE(STACK[0x83F]) = (v139 + 0x80 - ((2 * (v139 + 0x80)) & 0x6E) - 73) ^ 0x2C;
  LOBYTE(v69) = (v139 + 0x80) ^ v69;
  LOBYTE(v146) = (v115 ^ 0x65) & (2 * (v115 & 0x71)) ^ v115 & 0x71;
  LOBYTE(v144) = ((2 * ((v144 + 120) ^ 0xA5)) ^ 0xA8) & ((v144 + 120) ^ 0xA5) ^ (2 * ((v144 + 120) ^ 0xA5)) & 0xD4;
  LOBYTE(v146) = v144 & (4 * v146) ^ v146;
  LOBYTE(v104) = (((v147 - 111) ^ 0x2B) - 58) ^ (v147 - 111) ^ (((v147 - 111) ^ 0x88) + 103) ^ (((v147 - 111) ^ 0x45) - 84) ^ (((v147 - 111) ^ 0xF7) + 26) ^ (v135 - 62);
  LOBYTE(v135) = (4 * (v144 ^ 0x54)) & 0xD0 ^ ((4 * (v144 ^ 0x54)) ^ 0x50) & (v144 ^ 0x54);
  LOBYTE(v144) = v139 + 123;
  LOBYTE(STACK[0x7CF]) = v115 ^ (2 * ((v135 ^ 0xDF) & (16 * v146) ^ v146)) ^ 0x43;
  LOBYTE(STACK[0x5E9]) = (((v149 + 0x80) ^ 0x6F) - 4) ^ (v149 + 0x80) ^ (((v149 + 0x80) ^ 0x8E) + 27) ^ (((v149 + 0x80) ^ 0x73) - 24) ^ (((v149 + 0x80) ^ 0xF9) + 110) ^ 0x59;
  LOBYTE(STACK[0x6DC]) = v104 ^ 0x23;
  LOBYTE(STACK[0x660]) = (v69 - ((2 * v69) & 0x3C) + 30) ^ 0x85;
  LOBYTE(v135) = v149 - v147;
  v150 = (((v104 ^ 0x49) - 95) ^ ((v104 ^ 0x64) - 114) ^ ((v104 ^ 0x3C) - 42)) - v149;
  v151 = v145 - (v149 - v147) + 1161075325 + ((((v147 + 1072355985) ^ 0x7940642B) - 2035751994) ^ (v147 + 1072355985) ^ (((v147 + 1072355985) ^ 0xCAAB1388) + 893621351) ^ (((v147 + 1072355985) ^ 0x4C037045) - 1276381268) ^ (((v147 + 1072355985) ^ 0xFFFF7FF7) + 1570842) ^ 0xFFE887EE);
  v152 = (v151 ^ 0xE77BE375) & (2 * (v151 & 0xC77B8A71)) ^ v151 & 0xC77B8A71;
  v153 = ((2 * (v151 ^ 0x658FE715)) ^ 0x45E8DAC8) & (v151 ^ 0x658FE715) ^ (2 * (v151 ^ 0x658FE715)) & 0xA2F46D64;
  v154 = v153 ^ 0xA2142524;
  v155 = (v153 ^ 0x80E04C60) & (4 * v152) ^ v152;
  v156 = ((4 * v154) ^ 0x8BD1B590) & v154 ^ (4 * v154) & 0xA2F46D64;
  v157 = (v156 ^ 0x82D02500) & (16 * v155) ^ v155;
  v158 = ((16 * (v156 ^ 0x20244864)) ^ 0x2F46D640) & (v156 ^ 0x20244864) ^ (16 * (v156 ^ 0x20244864)) & 0xA2F46D60;
  v159 = v157 ^ 0xA2F46D64 ^ (v158 ^ 0x22444400) & (v157 << 8);
  v160 = v151 ^ (2 * ((v159 << 16) & 0x22F40000 ^ v159 ^ ((v159 << 16) ^ 0x6D640000) & (((v158 ^ 0x80B02924) << 8) & 0x22F40000 ^ 0x2900000 ^ (((v158 ^ 0x80B02924) << 8) ^ 0x746D0000) & (v158 ^ 0x80B02924))));
  LOBYTE(STACK[0x753]) = (v136 - ((2 * v136 + 40) & 0x24) - 26) ^ 0x89;
  LOBYTE(v158) = ((v150 - 108) ^ 0x1F) & (2 * ((v150 - 108) & 0x5E)) ^ (v150 - 108) & 0x5E;
  LOBYTE(v159) = ((2 * ((v150 - 108) ^ 0x2F)) ^ 0xE2) & ((v150 - 108) ^ 0x2F) ^ (2 * ((v150 - 108) ^ 0x2F)) & 0x70;
  LOBYTE(v154) = (v159 ^ 0x61) & (4 * v158) ^ v158;
  LOBYTE(v104) = 4 * (v159 ^ 0x11);
  LOBYTE(v146) = (v104 ^ 0xC0) & (v159 ^ 0x11);
  LOBYTE(v159) = v148 - (v139 + 123);
  LOBYTE(v158) = v147 + 123;
  LOBYTE(STACK[0x6E3]) = (v150 - 108) ^ (2 * ((v104 & 0x60 ^ v146 ^ 0x40) & (16 * v154) ^ v154)) ^ 0x6C;
  LOBYTE(v136) = v136 - v139;
  LOBYTE(v139) = v135 + 39;
  LOBYTE(v147) = (v135 + 39) ^ 0x2F;
  LOBYTE(v135) = (2 * ((v135 + 39) & 0x62)) & v147 ^ (v135 + 39) & 0x62 ^ ((2 * ((v135 + 39) & 0x62)) & 0x44 | 8);
  LOBYTE(v147) = (2 * v147) & 0x4C ^ 0x45 ^ ((2 * v147) ^ 0x9A) & v147;
  LOBYTE(v135) = (4 * v135) & 0x48 ^ v135 ^ ((4 * v135) ^ 0x20) & v147;
  LOBYTE(v146) = 4 * v147;
  LOBYTE(v105) = ((4 * v147) ^ 0x34) & v147;
  v161 = (v159 - 17) ^ v144;
  v162 = v136 - v159 + 84;
  v163 = v139 ^ (2 * ((16 * v135) & 0x40 ^ v135 ^ ((16 * v135) ^ 0x80) & (v146 & 0x4C ^ 0x49 ^ v105) ^ 0x45));
  v164 = v162 ^ (v159 - 17);
  v165 = v163 ^ v158;
  v166 = v69 - v148;
  LOBYTE(STACK[0x8C2]) = v165 ^ 0xCA;
  LOBYTE(STACK[0x5F0]) = v163 ^ 0xCA;
  LOBYTE(STACK[0x7D6]) = v160 ^ 0x8B;
  LOBYTE(STACK[0x846]) = (v161 - ((2 * v161) & 0x46) - 93) ^ 0x38;
  LOBYTE(v69) = (v159 - 12) & 0x5D ^ 0x71;
  v167 = (v159 - 12) ^ (2 * (((v159 - 12) ^ 0x7A) & (2 * (((v159 - 12) ^ 0x7A) & (2 * (((v159 - 12) ^ 0x7A) & (2 * (((v159 - 12) ^ 0x7A) & (2 * (((v159 - 12) ^ 0x7A) & (2 * (((2 * (v159 - 12)) & 0x76 ^ 0x26) & ((v159 - 12) ^ 0x72) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ 0xC6;
  v168 = ~v160 & 0x20;
  LOBYTE(STACK[0x939]) = v167;
  v169 = ((v160 ^ 0xF1) - 54) ^ ((v160 ^ 0xE0) - 39) ^ ((v160 ^ 0xA8) - 111);
  if (((v160 | v163) & 0x20) == 0)
  {
    v168 = -v168;
  }

  v170 = v160 & 0xDF ^ 0x99 ^ (v168 + (v163 ^ 0xF8));
  v171 = v161 - v164;
  v172 = (v165 ^ 0xF8) - v170;
  v173 = v162 - v164;
  v174 = v162 - v164 - 91;
  v175 = 2 * (v169 - v170 + 35) + ~(v169 - v170 + 35);
  v176 = v150 - v169;
  v177 = v176 - 42 + v175 + 77;
  v178 = (((v170 - v177 - 65) ^ 6) - 106) ^ (v170 - v177 - 65) ^ (((v170 - v177 - 65) ^ 0x31) - 93) ^ (((v170 - v177 - 65) ^ 0xA6) + 54) ^ (((v170 - v177 - 65) ^ 0xFD) + 111);
  v179 = v162 - ((2 * v162) & 0xFC);
  v180 = v166 - v164;
  v173 += 120;
  v181 = v164 - (v166 - v164);
  LOBYTE(STACK[0x75A]) = (v179 - 2) ^ 0x65;
  LOBYTE(STACK[0x667]) = (v166 + (~(2 * v166) | 0x17) + 117) ^ 0xEF;
  LOBYTE(STACK[0x761]) = (v174 + (~(2 * v174) | 0x2B) - 21) ^ 0x71;
  v182 = (v171 ^ 0x24) - 16;
  LOBYTE(STACK[0x84D]) = (v171 - ((2 * v171) & 0xA0) - 48) ^ 0x6F;
  LOBYTE(STACK[0x5F7]) = v178 ^ 0x5E;
  v183 = v177 ^ ((v177 ^ 0x1B) - 72) ^ ((v177 ^ 0x12) - 65) ^ ((v177 ^ 0xA5) + 10) ^ (83 - v177) ^ 0x3F ^ v178;
  LOBYTE(STACK[0x66E]) = (v180 - ((2 * v180) & 0x2C) + 22) ^ 0x8D;
  LOBYTE(STACK[0x8C9]) = v172 ^ 0x16;
  LOBYTE(STACK[0x6EA]) = ((v177 ^ 0xAB) + 8) ^ v177 ^ ((v177 ^ 0xAD) + 2) ^ ((v177 ^ 0x8B) + 40) ^ ((v177 ^ 0xDE) + 115) ^ 0x61;
  v184 = ((v175 + 77) ^ 0x35) & (2 * ((v175 + 77) & 0xB4)) ^ (v175 + 77) & 0xB4;
  v185 = ((2 * ((v175 + 77) ^ 0x7D)) ^ 0x92) & ((v175 + 77) ^ 0x7D) ^ (2 * ((v175 + 77) ^ 0x7D)) & 0xC8;
  LOBYTE(STACK[0x7DD]) = (v175 + 77) ^ (2 * ((a16 ^ (4 * v185)) & (v185 ^ 0x80) & (16 * (v185 & (4 * v184) ^ v184)) ^ v185 & (4 * v184) ^ v184)) ^ 0x86;
  v186 = v180 - v173 + 26;
  v187 = v186 ^ v182;
  v188 = v175 - 44;
  LOBYTE(STACK[0x940]) = (v181 - ((2 * v181) & 0xAC) + 86) ^ 0xCD;
  v189 = v176 - ((2 * v176 + 44) & 0x8C) + 92;
  v190 = ((v172 ^ 0x24) - 16) ^ v189;
  v191 = (v181 ^ v180) - v187;
  LOBYTE(STACK[0x6F1]) = v189 ^ 0x74;
  LOBYTE(STACK[0x7E4]) = v190 ^ v188 ^ 0x74;
  v192 = (((v190 ^ v188 ^ 0x40) + 66) ^ ((v190 ^ v188 ^ 0x70) + 114) ^ ((v190 ^ v188 ^ 0x76) + 120)) - (((v190 ^ 0x19) - 114) ^ ((v190 ^ 0x33) - 88) ^ ((v190 ^ 0x6C) - 7));
  v193 = v192 - 117;
  LOBYTE(STACK[0x8D0]) = v190 ^ 0x74;
  v194 = v187 ^ v173;
  LOBYTE(STACK[0x854]) = (v187 - ((2 * v187) & 0xC4) - 30) ^ 0x79;
  v195 = v183 - (((v190 ^ 0x14) - 127) ^ ((v190 ^ 0x57) - 60) ^ ((v190 ^ 5) - 110));
  LOBYTE(STACK[0x582]) = (v191 - ((2 * v191) & 0xAC) + 86) ^ 0xCD;
  LOBYTE(STACK[0x675]) = (v186 + (~(2 * v186) | 0xFD) - 126) ^ 0x1A;
  v196 = (v195 + 85) ^ 0x95;
  v197 = ((v195 + 85) ^ 0x7D) & (2 * ((v195 + 85) & 0x7E)) ^ (v195 + 85) & 0x7E;
  v198 = 2 * v196;
  v199 = ((2 * v196) ^ 0xD6) & v196;
  v200 = v194 - v187;
  v201 = v190 ^ 0x35;
  v202 = v191 - (v194 - v187) + (v187 ^ 0x73);
  v203 = v194 - v187 + (v187 ^ 0x73);
  v204 = v199 ^ v198 & 0xEA;
  LOBYTE(STACK[0x5FE]) = (v195 + 85) ^ (2 * ((((v204 ^ 0x29) & 0xA0 | (v204 ^ 0xC0) & (4 * (v204 ^ 0x29))) ^ 0x20) & (16 * ((v204 ^ 0xC0) & (4 * v197) ^ v197)) ^ (v204 ^ 0xC0) & (4 * v197) ^ v197)) ^ 0x4C;
  v205 = v192 + v201;
  v206 = v201 - v192 - 45 + v195 - ((2 * (v201 - v192 - 45 + v195) - 22) & 0xA) + 122;
  LOBYTE(STACK[0x8D7]) = (v192 + v201 + 100) ^ (117 - (v192 + v201)) ^ (((v192 + v201 + 100) ^ 0x72) + 85) ^ (((v192 + v201 + 100) ^ 0xBD) - 100) ^ (((v192 + v201 + 100) ^ 0xE9) - 48) ^ 0xEB;
  LOBYTE(STACK[0x768]) = (v194 - ((2 * v194) & 0x16) - 117) ^ 0x10;
  v207 = v200 ^ 0x86;
  v208 = v200 ^ 0x86 ^ v202;
  LOBYTE(STACK[0x85B]) = (v203 - ((2 * v203) & 0x78) - 68) ^ 0x27;
  v209 = (((v193 ^ 0x19) + 100) ^ ((v193 ^ 0x95) - 16) ^ ((v193 ^ 0xA) + 113)) + (v189 ^ 0xF5);
  LOBYTE(STACK[0x589]) = (v202 - ((2 * v202) & 8) + 4) ^ 0x9F;
  v210 = ((v209 - 44) ^ 0x8E) & (2 * ((v209 - 44) & 0x2F)) ^ (v209 - 44) & 0x2F;
  v211 = ((2 * ((v209 - 44) ^ 0xCE)) ^ 0xC2) & ((v209 - 44) ^ 0xCE) ^ (2 * ((v209 - 44) ^ 0xCE)) & 0xE0;
  LOBYTE(STACK[0x6F8]) = (v209 - 44) ^ (2 * (((4 * v211) ^ 0x80) & (v211 ^ 0xC0) & (16 * ((v211 ^ 0xC0) & (4 * v210) ^ v210)) ^ (v211 ^ 0xC0) & (4 * v210) ^ v210)) ^ 0x1D;
  v212 = (v200 ^ 0x86) + (v186 ^ 0xB3);
  LOBYTE(STACK[0x605]) = v206 ^ 0x37;
  v213 = v193 ^ 0x83 ^ v206;
  LOBYTE(STACK[0x7EB]) = v193 ^ 0xB4;
  LOBYTE(STACK[0x67C]) = (v212 + (~(2 * v212) | 0x99) - 76) ^ 0x28;
  v214 = ((v213 + 25) ^ 0x3C) & (2 * ((v213 + 25) & 0x3C)) ^ (v213 + 25) & 0x3C;
  v215 = ((2 * ((v213 + 25) ^ 0x2C)) ^ 0x20) & ((v213 + 25) ^ 0x2C) ^ (2 * ((v213 + 25) ^ 0x2C)) & 0x10;
  v216 = (v215 ^ 0x10) & (16 * (v215 & (4 * v214) ^ v214)) & ((4 * (v215 ^ 0x10)) ^ 0x40) ^ v215 & (4 * v214) ^ v214;
  v217 = (v208 + 85) ^ (v203 - v212);
  LOBYTE(STACK[0x60C]) = (v213 + 25) ^ (2 * v216) ^ 0xE;
  LOBYTE(STACK[0x76F]) = (v200 - ((2 * v200) & 0x8F) - 57) ^ 0xDA;
  v218 = (((v193 ^ 0xE0) - 101) ^ ((v193 ^ 0x4C) + 55) ^ ((v193 ^ 0x2A) + 81)) + v213 + 25;
  v219 = (v213 + 25) ^ (v205 - v209 - 120) ^ (((v213 + 25) ^ 0x93) - 87) ^ (((v213 + 25) ^ 0x6D) + 87) ^ (((v213 + 25) ^ 0xC5) - 1) ^ (-(v213 + 25) - 60);
  v220 = v209 + 109 + (((v219 ^ 0xD7) + 84) ^ ((v219 ^ 0x76) - 13) ^ ((v219 ^ 0x65) - 30));
  LOBYTE(STACK[0x8DE]) = v219 ^ 0xF6;
  v221 = 2 * (v218 - 25);
  v222 = (v221 & 0x54 ^ 0x2A) & (v218 - 25);
  v223 = v209 + 37;
  LOBYTE(STACK[0x7F2]) = (v218 - 25) ^ (2 * ((4 * ((v221 ^ 0xD2) & ((v218 - 25) ^ 0x2B))) & ((v221 ^ 0xD2) & ((v218 - 25) ^ 0x2B) ^ 1) & (16 * ((v221 ^ 0xD2) & ((v218 - 25) ^ 0x2B) & (4 * v222) ^ v222)) ^ (v221 ^ 0xD2) & ((v218 - 25) ^ 0x2B) & (4 * v222) ^ v222)) ^ 0x18;
  v224 = v213 - v209;
  LOBYTE(STACK[0x862]) = (v217 - ((2 * v217) & 0x9C) - 50) ^ 0x55;
  v225 = ((2 * ((v209 + 37) ^ 0x38)) ^ 0x62) & ((v209 + 37) ^ 0x38) ^ (2 * ((v209 + 37) ^ 0x38)) & 0xB0;
  v226 = v225 ^ 0x91;
  v227 = (v225 ^ 0x20) & (4 * (((2 * v223) & 0x12 ^ 0x89) & v223)) ^ ((2 * v223) & 0x12 ^ 0x89) & v223;
  v228 = v207 + ((v208 + 22) ^ 0x3F) + ((2 * (v208 + 22)) & 0x7E) - 46;
  v229 = v212 - 85;
  v230 = v208 + 85 - (v212 - 85);
  LOBYTE(STACK[0x6FF]) = v223 ^ (2 * ((((4 * v226) ^ 0xC0) & v226 ^ (4 * v226) & 0xB0) & (16 * v227) ^ v227)) ^ 0xBB;
  LOBYTE(STACK[0x683]) = (v212 - 85 - ((2 * (v212 - 85)) & 0xD2) - 23) ^ 0x72;
  v231 = v218 + 17 + v220;
  v232 = ((v219 ^ 0x19) - 98) ^ ((v219 ^ 0xCE) + 75) ^ ((v219 ^ 0x13) - 104);
  v233 = (v232 + 99) ^ v220;
  LOBYTE(STACK[0x776]) = (v228 - ((2 * v228) & 0xA4) + 82) ^ 0xC9;
  v208 -= 73;
  v234 = v208 & 0x4E ^ 0x78;
  LOBYTE(STACK[0x590]) = v208 ^ (2 * ((v208 ^ 0x1C) & (2 * ((v208 ^ 0x1C) & (2 * ((v208 ^ 0x1C) & (2 * ((v208 ^ 0x1C) & (2 * ((v208 ^ 0x1C) & (2 * v234) ^ v234)) ^ v234)) ^ v234)) ^ v234)) ^ v234)) ^ 0xD5;
  v235 = v228 + v217 + v229;
  v236 = v231 + v232;
  v237 = (v217 + v229) ^ (v217 - 92);
  LOBYTE(STACK[0x706]) = v233 ^ 0x32;
  v238 = (v217 + v235 - 5) & 0x17 ^ 0x77;
  v239 = (v217 + v235 - 5) ^ 0x28;
  LOBYTE(STACK[0x597]) = ((v237 ^ v230) - ((2 * (v237 ^ v230)) & 0xBC) + 94) ^ 0xC5;
  LOBYTE(STACK[0x869]) = (v217 + v235 - 5) ^ (2 * (v239 & (2 * (v239 & (2 * (v239 & (2 * (v239 & (2 * (((2 * (((2 * (v217 + v235 - 5)) & 0x52 | 0x29) & (v217 + v235 - 5))) ^ 0x3E) & v239 ^ v238)) ^ v238)) ^ v238)) ^ v238)) ^ v238)) ^ 0x8C;
  v240 = ((v236 - 87) ^ 0xBA) & (2 * ((v236 - 87) & 0xBA)) ^ (v236 - 87) & 0xBA;
  v241 = ((2 * ((v236 - 87) ^ 0xAE)) ^ 0x28) & ((v236 - 87) ^ 0xAE) ^ (2 * ((v236 - 87) ^ 0xAE)) & 0x14;
  v242 = v233 ^ (v224 - 89);
  LOBYTE(STACK[0x8E5]) = (v236 - 87) ^ (2 * ((v241 ^ 0x14) & (16 * (v241 & (4 * v240) ^ v240)) & ((4 * (v241 ^ 0x14)) ^ 0x40) ^ v241 & (4 * v240) ^ v240)) ^ 0x88;
  LOBYTE(STACK[0x68A]) = (v237 - ((2 * v237) & 0xC8) - 28) ^ 0x7F;
  LOBYTE(STACK[0x7F9]) = v242 ^ v231 ^ 0x32;
  LOBYTE(STACK[0x613]) = v242 ^ 0x32;
  LOBYTE(STACK[0x77D]) = ((v235 ^ v237 ^ v230) - ((2 * (v235 ^ v237 ^ v230)) & 0x78) - 68) ^ 0x27;
  v243 = LODWORD(STACK[0x2D8]) - 1127825131;
  v244 = v243 < 0x1176FC7C;
  v245 = v243 > a18;
  if (LODWORD(STACK[0x2B0]) != v244)
  {
    v246 = v244;
  }

  else
  {
    v246 = v245;
  }

  return (*(STACK[0x2D0] + 8 * (LODWORD(STACK[0x2C4]) ^ (15 * !v246))))();
}

uint64_t sub_1000D3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (a8 ^ 5 ^ ((1645 * v9 + 2113825) % 0xA88u) ^ 0xBEBFC57F5BBE66FBLL) + ((2 * ((1645 * v9 + 2113825) % 0xA88u)) & 0x19FELL) + STACK[0x638];
  v14 = *(v13 - 0x4630EDB94DB7714);
  v15 = *v11;
  v16 = *STACK[0x660];
  v17 = v13 + 1;
  v18 = v13 - 1539202303 + *(v16 + (v15 & STACK[0x648]));
  v19 = *v8 ^ v10;
  v20 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 - 963544004) & v19)) ^ v14 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v18 - 963544002) & v19)) ^ (76 * v17);
  v21 = STACK[0x640] + 4 * ((551 * (((v20 ^ 0x401761B0) - 39535520) ^ ((v20 ^ 0xB6E5651F) + 190232817) ^ ((v20 ^ 0xF6F204DF) + 1262606641)) - 1309998988) % 0x1D48);
  v22 = *(v16 + (v15 & STACK[0x658]));
  v23 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v21 + v22 + 673210726) & v19)) ^ *(v21 - 0x34EE34220E8AC3B8) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v21 + v22 + v12) & v19));
  v24 = v23 ^ (6319 * v21);
  v25 = v23 ^ (333999 * v21);
  v26 = v23 ^ (-81 * v21);
  LODWORD(v21) = (((((v23 ^ (-1962600273 * v21)) >> 15) ^ 0x35E40C4E) + 595726137) ^ ((((v23 ^ (-1962600273 * v21)) >> 15) ^ 0xC83FB31B) - 564547474) ^ ((((v23 ^ (-1962600273 * v21)) >> 15) ^ 0xFDDAF91F) - 339936662)) - 374810941;
  v27 = BYTE2(v25) ^ 0x25;
  v28 = HIBYTE(v24) ^ 0x79;
  v29 = 1645 * v27 + 3391990 - 2696 * (((12744711 * (1645 * v27 + 3391990)) >> 32) >> 3);
  v30 = 1645 * (((v26 ^ 0xD12DD7D) - 1415775366) ^ ((v26 ^ 0x244F7EDD) - 2101258022) ^ ((v26 ^ 0x295DA369) - 1881963154)) - 1060870080;
  v31 = 1645 * v28 + 3391990 - 2696 * (((12744711 * (1645 * v28 + 3391990)) >> 32) >> 3);
  v32 = v30 % 0xA88;
  v33 = (v29 ^ 0xED6FFF3DF3DDBFF7) + STACK[0x638] + ((2 * v29) & 0x1FEE);
  v34 = *(v33 - 0x3313489A2CFADA0CLL);
  v35 = v33 + 203571209;
  v36 = (v32 ^ 0xDB7CFF3D7DBBE9F2) + STACK[0x638] + ((2 * v32) & 0x13E4);
  v37 = ((1645 * (v21 >> 9) % 0xA88) ^ 0xEE8FFFA79DFB76FBLL) + STACK[0x638] + ((2 * (1645 * (v21 >> 9) % 0xA88)) & 0xDF6);
  v38 = *(v37 - 0x34334903D7189110);
  v39 = v37 + 1644464389;
  LODWORD(v37) = *(v16 + (v15 & 0xC6917C3C));
  v40 = (v31 ^ 0xFE5F9FFFDB7EB66DLL) + STACK[0x638] + ((2 * v31) & 0xCDA);
  v41 = (*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v35 + v37 - 963544004) & v19)) ^ v34 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v35 + v37 - 963544002) & v19)) ^ (76 * v35)) << 8;
  LODWORD(v40) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v40 + 612452755 + v37 - 963544004) & v19)) ^ *(v40 - 0x4402E95C149BD082) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v40 + 612452755 + v37 - 963544002) & v19)) ^ (76 * (v40 - 109));
  v42 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v36 - 2109467122 + v37 - 963544004) & v19)) ^ *(v36 - 0x21204899B6D90407) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v36 - 2109467122 + v37 - 963544002) & v19)) ^ (76 * (v36 + 14));
  v43 = STACK[0x640] + 4 * ((551 * v9 + 710790) % 0x1D48u);
  *(v43 - 0x34EE34220E8AC3B8) = (-1962600273 * v43) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v22 + v43 + 673210726) & v19)) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v22 + v43 + v12) & v19)) ^ 0xD621C5BC ^ (((((((((*((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v39 + v37 - 963544004) & v19)) ^ v38 ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v39 + v37 - 963544002) & v19)) ^ (76 * v39)) << 16) ^ 0xE6636E) & (v41 ^ 0xFF036E) | v41 & 0x9C00) ^ 0x9F6CB8) & (v40 ^ 0xFFFF86) ^ v40 & 0x29) << 8) ^ 0x7C1B4A65) & (v42 ^ 0xFFFFFF05) | v42 & 0x9A);
  return (*(STACK[0x668] + 8 * (((v9 == 255) | (4 * (v9 == 255))) ^ a8)))();
}

uint64_t sub_1000F4DA8@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, int a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W8>)
{
  v18 = STACK[0x49F0];
  v18[18] = v8;
  v18[19] = v10;
  LODWORD(STACK[0x52D0]) = LODWORD(STACK[0x4380]) ^ LODWORD(STACK[0x4410]) ^ (v16 + 11304) ^ a2;
  LODWORD(STACK[0x5280]) = STACK[0x4300] ^ 0x4B ^ STACK[0x5720];
  v18[16] = v13;
  LODWORD(STACK[0x52C8]) = LODWORD(STACK[0x4370]) ^ v9 ^ 0x60;
  LODWORD(STACK[0x5298]) = LODWORD(STACK[0x56E0]) ^ STACK[0x4328] ^ 0xFFFFFFFE;
  LODWORD(STACK[0x52A0]) = STACK[0x5740] ^ STACK[0x43A8] ^ 0xFFFFFFC7;
  LODWORD(STACK[0x52B0]) = LODWORD(STACK[0x4298]) ^ STACK[0x5760] ^ 6;
  v18[24] = a7;
  v18[21] = v15;
  v18[29] = v11;
  v18[17] = a6;
  v18[23] = a1;
  v18[20] = STACK[0x5770];
  LODWORD(STACK[0x5278]) = LODWORD(STACK[0x5730]) ^ STACK[0x43A0] ^ 0xFFFFFFD8;
  LODWORD(STACK[0x5290]) = LODWORD(STACK[0x4400]) ^ LODWORD(STACK[0x42E4]) ^ 0x69 ^ a4;
  LODWORD(STACK[0x52B8]) = v12 ^ STACK[0x4408] ^ 0xFFFFFFE1;
  LODWORD(STACK[0x52D8]) = LODWORD(STACK[0x43F8]) ^ LODWORD(STACK[0x4314]) ^ 0x67 ^ v7;
  v18[30] = STACK[0x5790];
  v18[22] = STACK[0x5780];
  LODWORD(STACK[0x52C0]) = LODWORD(STACK[0x4368]) ^ LODWORD(STACK[0x5750]) ^ 0x10;
  v18[28] = a3;
  v18[26] = a5;
  v18[31] = STACK[0x57C0];
  LODWORD(STACK[0x5288]) = STACK[0x56F0] ^ STACK[0x42F8] ^ 0xFFFFFFB2;
  LODWORD(STACK[0x52A8]) = v14 ^ STACK[0x4278] ^ 0xFFFFFFD9;
  v18[25] = STACK[0x57A0];
  v18[27] = v17;
  v19 = *(STACK[0x57D8] + 8 * v16);
  LODWORD(STACK[0x5210]) = 5;
  return v19();
}

uint64_t sub_1000F505C(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *(*(v8 + 4000) + 4 * (v6 % (v7 ^ 0x34D9)));
  *(*(v8 + 4008) + v4 - 5896 * ((((v4 >> 3) * v5) >> 64) >> 4)) = (((v9 ^ a3) - 4) ^ ((v9 ^ 0x30) - 83) ^ ((v9 ^ 0xA6) + 59)) - 82;
  return (*(STACK[0x57D8] + 8 * ((58 * (v3 == 0)) ^ v7)))();
}

uint64_t sub_1000F50E8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 7632)))(STACK[0xA2C8]);
  STACK[0xA2C8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1000F52A8()
{
  STACK[0x32D8] = v4;
  STACK[0x500] = v3;
  v6 = LODWORD(STACK[0x3A88]) ^ v2 ^ 0x6E121891;
  STACK[0x37D0] = 0;
  LODWORD(STACK[0x3370]) = 0;
  STACK[0x35A8] = 0;
  STACK[0x3530] = 0;
  LODWORD(STACK[0x3348]) = 0;
  STACK[0x3A90] = 0;
  v7 = v1 + (((v2 ^ 0x65517617) - 1699837463) ^ ((v2 ^ 0xD95F8437) + 648051657) ^ (v6 - 1846702772)) + 96;
  STACK[0x33B8] = v7;
  v8 = (v5 + v7);
  v9 = 4647 * ((*(v5 + v7 + 2) + 111) ^ 0x1C) + 4767822;
  v10 = *(&off_101353600 + (v0 ^ 0x2E52)) - 4;
  LODWORD(v7) = (*(v5 + v7 + 26) ^ 0xFE) * ((641 * (v0 ^ 0x2AC6)) ^ 0x9AC) + 13123128;
  v11 = v10[v9 - 6784 * (((1266205 * v9) >> 32) >> 1)] ^ 0xFFFFFFE3;
  LODWORD(v7) = v10[(v7 - 6784 * ((81037119 * (v7 >> 7)) >> 32))] - 71;
  STACK[0x3838] = (v11 >> 3) | (32 * v11);
  LODWORD(STACK[0x3590]) = (v7 ^ (v7 << 6) ^ (4 * v7) ^ 0xFFFFFFFE) + 26;
  v12 = *(STACK[0x3AC0] + 8 * v0);
  STACK[0x35C0] = v8[22];
  STACK[0x39C0] = &STACK[0x4030];
  STACK[0x3828] = v8[13];
  STACK[0x3570] = v8[21];
  STACK[0x3550] = v8[20];
  LODWORD(STACK[0x3850]) = v8[11];
  STACK[0x3820] = v8[6];
  STACK[0x37F0] = v8[8];
  LODWORD(STACK[0x3848]) = v8[9];
  LODWORD(STACK[0x37F8]) = v8[1];
  LODWORD(STACK[0x35D0]) = v8[25];
  STACK[0x3808] = v8[14];
  STACK[0x3580] = v8[24];
  STACK[0x3800] = v8[15];
  LODWORD(STACK[0x37E8]) = v8[3];
  STACK[0x3588] = v8[28];
  STACK[0x3840] = *v8;
  STACK[0x37B8] = v8[16];
  STACK[0x3818] = v8[7];
  LODWORD(STACK[0x3548]) = v8[17];
  STACK[0x35D8] = v8[29];
  STACK[0x3830] = v8[5];
  STACK[0x37E0] = v8[10];
  LODWORD(STACK[0x3540]) = v8[19];
  STACK[0x3578] = v8[30];
  STACK[0x3568] = v8[23];
  STACK[0x3810] = v8[4];
  STACK[0x35C8] = v8[31];
  STACK[0x3378] = v8;
  LODWORD(STACK[0x3538]) = v8[27];
  LODWORD(STACK[0x38C8]) = 212;
  LODWORD(STACK[0x3A40]) = 30;
  STACK[0x3AD0] = 0x603506B0436DA3F9;
  STACK[0x35B0] = 0x1C043AF1B60F97E1;
  LODWORD(STACK[0x3980]) = 127;
  STACK[0x3AB8] = 0xD986DEB6304FCA18;
  LODWORD(STACK[0x3968]) = 63;
  LODWORD(STACK[0x3438]) = 8;
  LODWORD(STACK[0x3898]) = 14;
  LODWORD(STACK[0x3988]) = 1226763624;
  LODWORD(STACK[0x3960]) = 131;
  LODWORD(STACK[0x3478]) = 56;
  LODWORD(STACK[0x3890]) = 112;
  STACK[0x35B8] = 0xF9FC3C488BBEF36ELL;
  LODWORD(STACK[0x3978]) = 1921319653;
  LODWORD(STACK[0x3990]) = 225383471;
  STACK[0x3AE8] = 0xB1DFB4A6A9CEC1E9;
  LODWORD(STACK[0x3998]) = -1372839657;
  LODWORD(STACK[0x38D0]) = 32;
  LODWORD(STACK[0x3340]) = 60;
  LODWORD(STACK[0x38A0]) = 7;
  LODWORD(STACK[0x38A8]) = 172;
  LODWORD(STACK[0x3440]) = 3;
  LODWORD(STACK[0x3970]) = 68;
  LODWORD(STACK[0x3338]) = 193;
  LODWORD(STACK[0x3430]) = 49;
  LODWORD(STACK[0x3A38]) = 179;
  LODWORD(STACK[0x38D8]) = 65;
  LODWORD(STACK[0x3428]) = 176;
  LODWORD(STACK[0x3940]) = 179;
  LODWORD(STACK[0x3888]) = 105;
  LODWORD(STACK[0x38E8]) = 164;
  LODWORD(STACK[0x3328]) = 121;
  LODWORD(STACK[0x3880]) = 239;
  LODWORD(STACK[0x3470]) = 39;
  LODWORD(STACK[0x3420]) = 215;
  LODWORD(STACK[0x3868]) = 205;
  LODWORD(STACK[0x3418]) = 25;
  LODWORD(STACK[0x3938]) = 93;
  LODWORD(STACK[0x38F0]) = 99;
  LODWORD(STACK[0x3410]) = 226;
  LODWORD(STACK[0x38E0]) = 142;
  LODWORD(STACK[0x3408]) = 33;
  LODWORD(STACK[0x3468]) = 115;
  LODWORD(STACK[0x3878]) = 115;
  LODWORD(STACK[0x3930]) = 206;
  LODWORD(STACK[0x3460]) = 24;
  LODWORD(STACK[0x3928]) = 44;
  LODWORD(STACK[0x3458]) = 65;
  LODWORD(STACK[0x3A10]) = 161;
  LODWORD(STACK[0x3870]) = 33;
  LODWORD(STACK[0x3920]) = 207;
  LODWORD(STACK[0x3488]) = 219;
  LODWORD(STACK[0x3318]) = 142;
  LODWORD(STACK[0x33F8]) = 153;
  LODWORD(STACK[0x33B0]) = 157;
  LODWORD(STACK[0x33C0]) = 77;
  LODWORD(STACK[0x3448]) = 50;
  LODWORD(STACK[0x3950]) = 207;
  LODWORD(STACK[0x33E8]) = 25;
  LODWORD(STACK[0x3A30]) = 157;
  LODWORD(STACK[0x3400]) = 20;
  LODWORD(STACK[0x3A18]) = 32;
  LODWORD(STACK[0x3958]) = 222;
  LODWORD(STACK[0x33E0]) = 108;
  LODWORD(STACK[0x3330]) = 11;
  LODWORD(STACK[0x3948]) = 149;
  LODWORD(STACK[0x38B8]) = 190;
  LODWORD(STACK[0x3A08]) = 73;
  LODWORD(STACK[0x3308]) = 172;
  LODWORD(STACK[0x3918]) = 43;
  LODWORD(STACK[0x32F8]) = 168;
  LODWORD(STACK[0x38C0]) = 41;
  LODWORD(STACK[0x3450]) = 202;
  LODWORD(STACK[0x3310]) = 58;
  LODWORD(STACK[0x33F0]) = 51;
  LODWORD(STACK[0x39F8]) = 52;
  LODWORD(STACK[0x3910]) = 150;
  LODWORD(STACK[0x39F0]) = 207;
  LODWORD(STACK[0x3490]) = 166;
  LODWORD(STACK[0x32E8]) = 50;
  LODWORD(STACK[0x33D8]) = 213;
  LODWORD(STACK[0x3358]) = 122;
  LODWORD(STACK[0x3A28]) = 13;
  LODWORD(STACK[0x34A0]) = 197;
  LODWORD(STACK[0x32F0]) = 208;
  LODWORD(STACK[0x3360]) = 164;
  LODWORD(STACK[0x3320]) = 74;
  LODWORD(STACK[0x3300]) = 59;
  LODWORD(STACK[0x3498]) = 50;
  LODWORD(STACK[0x3A00]) = 113;
  LODWORD(STACK[0x3860]) = 222;
  LODWORD(STACK[0x3350]) = 162;
  LODWORD(STACK[0x3A20]) = 166;
  LODWORD(STACK[0x33D0]) = 85;
  LODWORD(STACK[0x33C8]) = 8;
  LODWORD(STACK[0x33A8]) = 161;
  LODWORD(STACK[0x32E0]) = 160;
  LODWORD(STACK[0x39E8]) = 37;
  LODWORD(STACK[0x38F8]) = 228;
  LODWORD(STACK[0x3480]) = 97;
  LODWORD(STACK[0x38B0]) = 246;
  LODWORD(STACK[0x3908]) = 217;
  LODWORD(STACK[0x3900]) = 154;
  LODWORD(STACK[0x3858]) = 86;
  LODWORD(STACK[0x33A0]) = 164;
  STACK[0x3AE0] = v10;
  return v12();
}

uint64_t sub_1000F5948()
{
  v7 = -1908931929 * (((LODWORD(STACK[0x5790]) ^ 0x9ABE37C9) + 1698809911) ^ ((LODWORD(STACK[0x5790]) ^ 0xB6921F3C) + 1231937732) ^ ((LODWORD(STACK[0x5790]) ^ 0xBA61E0C7) + 1167990585)) + 1893123041;
  v8 = (((v7 ^ 0x80003777) + 1046941644) ^ v7 ^ ((v7 ^ 0x5BF52FB3) - 443410672) ^ ((v7 ^ 0x4592607A) - 67807033) ^ ((v7 ^ LODWORD(STACK[0xE58])) + 1637386050)) >> 24;
  v9 = v8 & 0xFFFFFFFB ^ 0xAB9A7A45 ^ (v5 ^ 0x637E4727) & (v8 ^ 0xFFFFFFBE);
  v10 = (-94814208 * ((v3 + v9) ^ v2 & 0xFFFFBFFF)) | ((-1953240731 * ((v3 + v9) ^ v2 & 0xFFFFBFFF)) >> 18);
  v11 = (-1001127936 * v1) | ((-40799979 * v1) >> 14);
  v12 = -1610612736 * v9 + ((2028032765 * v9) >> 3);
  v13 = v12 + v11 + (v10 ^ __ROR4__(1455376713 * v0, 31));
  v14 = (-496095082 * v10) | ((-248047541 * v10) >> 31);
  HIDWORD(v15) = (-40799979 * v1) >> 14;
  LODWORD(v15) = 771624285 * v11;
  v16 = ((-382637293 * v13) >> 2) - (v13 << 30);
  v17 = 1050440235 * v14;
  v18 = -2013265920 * v12 + ((-1882408207 * v12) >> 5);
  v19 = ((v15 >> 2) - v14 - v16) ^ v18;
  v20 = ((2 * ((-1317011456 * v16) | ((-1129174685 * v16) >> 9))) & 0xF71FFEDE) + (((-1317011456 * v16) | ((-1129174685 * v16) >> 9)) ^ 0x7B8FFF6F);
  HIDWORD(v15) = v17;
  LODWORD(v15) = v17;
  v21 = v15 >> 31;
  v22 = ((-890386336 * v19) | ((-1906872765 * v19) >> 27)) - 2 * (((-890386336 * v19) | ((-1906872765 * v19) >> 27)) & 0x1723F297 ^ ((-1906872765 * v19) >> 27) & 0x55555555) - 1759251838;
  v23 = -1207959552 * v18 + ((-955877513 * v18) >> 5) + 2073034607 + v21 - v20 + (v22 ^ 0x9723F282);
  v24 = -529318817 * (((v21 - v20 - ((2 * (v21 - v20) + 995449852) & 0x2E47E504) - 1261526912) ^ v22) - v23);
  v25 = v24 + 1705071075;
  v26 = v24 + 717806290;
  v27 = (2 * ((v24 + 1705071075) & 0xC52788EF)) & ((v24 + 1705071075) ^ 0xB4278AEE) ^ (v24 + 1705071075) & 0xC52788EF;
  v28 = ((2 * ((v24 + 1705071075) ^ 0x3C2D9ABA)) ^ 0xF21424AA) & ((v24 + 1705071075) ^ 0x3C2D9ABA) ^ (2 * ((v24 + 1705071075) ^ 0x3C2D9ABA)) & 0xF90A1254;
  v29 = v28 ^ LODWORD(STACK[0xE5C]);
  v30 = (v28 ^ 0x30001001) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0xE4284954) & v29 ^ (4 * v29) & 0xF90A1254;
  v32 = (v31 ^ 0xE0080050) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x19021201)) ^ 0x90A12550) & (v31 ^ 0x19021201) ^ (16 * (v31 ^ 0x19021201)) & 0xF90A1250;
  v34 = v32 ^ 0xF90A1255 ^ (v33 ^ 0x90000005) & (v32 << 8);
  v35 = (v24 + 1705071075) ^ v22 ^ (2 * ((v34 << 16) & 0x790A0000 ^ v34 ^ ((v34 << 16) ^ 0x12550000) & (((v33 ^ 0x690A1205) << 8) & 0xF90A0000 ^ 0x71080000 ^ (((v33 ^ 0x690A1205) << 8) ^ 0xA120000) & (v33 ^ 0x690A1205))));
  HIDWORD(v15) = (v24 + 23250) ^ v23;
  LODWORD(v15) = (v24 + 717806290) ^ v23;
  v36 = v20 - v24;
  v37 = v20 - v24 + 1079942685;
  v38 = 412673785 * (((v35 ^ 0x4E975D30) + 472665477) ^ ((v35 ^ 0xDBA86868) - 1995212579) ^ ((v35 ^ 0x152F6B9F) + 1200913196)) - 411612311;
  v39 = (v38 ^ 0xD04889DB) & (2 * (v38 & 0xD28D2DC3)) ^ v38 & 0xD28D2DC3;
  v40 = ((2 * (v38 ^ 0x744291DD)) ^ 0x4D9F783C) & (v38 ^ 0x744291DD) ^ (2 * (v38 ^ 0x744291DD)) & 0xA6CFBC1E;
  v41 = v40 ^ LODWORD(STACK[0xE60]);
  v42 = (v40 ^ 0x40D381C) & (4 * v39) ^ v39;
  v43 = ((4 * v41) ^ 0x9B3EF078) & v41 ^ (4 * v41) & 0xA6CFBC1C;
  v44 = (v43 ^ 0x820EB010) & (16 * v42) ^ v42;
  v45 = ((16 * (v43 ^ 0x24C10C06)) ^ 0x6CFBC1E0) & (v43 ^ 0x24C10C06) ^ (16 * (v43 ^ 0x24C10C06)) & 0xA6CFBC10;
  v46 = v44 ^ 0xA6CFBC1E ^ (v45 ^ 0x24CB8000) & (v44 << 8);
  v47 = v38 ^ (2 * ((v46 << 16) & 0x26C00000 ^ v46 ^ ((v46 << 16) ^ 0x3C100000) & (((v45 ^ 0x82043C1E) << 8) & 0x26CF0000 ^ 0x20400000 ^ (((v45 ^ 0x82043C1E) << 8) ^ 0x4FBC0000) & (v45 ^ 0x82043C1E))));
  v48 = v36 * LODWORD(STACK[0xE64]) - 1828064325;
  HIDWORD(v15) = (v15 >> 15) ^ 0xC212B8F1;
  LODWORD(v15) = HIDWORD(v15);
  v49 = (v15 >> 17) - ((2 * (v15 >> 17)) & 0x9F01C92C) - 813636458;
  LODWORD(STACK[0x5660]) = v37;
  LODWORD(STACK[0x5570]) = v35 ^ 0xAD44EF4B;
  v50 = -2113929216 * v36 - 772799906;
  v51 = (v50 & 0x2C000000 | ((((v50 & 0x2C000000u) >> 29) & 1) << 30)) ^ (v50 ^ 0xCA83CD64) & (2 * (v50 & 0x2C000000));
  v52 = (2 * (v50 ^ 0xCA83CD64)) & 0xE4000004 ^ 0x20000002 ^ ((2 * (v50 ^ 0xCA83CD64)) ^ LODWORD(STACK[0xE68])) & (v50 ^ 0xCA83CD64);
  v53 = (4 * v51) & 0xE0000000 ^ v51 ^ ((v51 >> 26 << 28) | 0x18) & v52;
  v54 = (4 * v52) & 0xE68C30C4 ^ 0x648C30C6 ^ ((4 * v52) ^ 0x9A30C318) & v52;
  v55 = v53 ^ 0xE68C3080 ^ (16 * v53) & 0xE68C30C0 ^ ((16 * v53) ^ 0x60) & v54;
  v56 = (16 * v54) & 0xE68C30C0 ^ 0x860C3086 ^ ((16 * v54) ^ 0x68C30C60) & v54;
  v57 = (v55 << 8) & 0xE68C3000 ^ v55 ^ ((v55 << 8) ^ LODWORD(STACK[0xE6C])) & v56;
  v58 = (((v48 ^ 0x82B642DF) - 1208236643) ^ v48 ^ ((v48 ^ 0x8FE5578B) - 1163341623) ^ ((v48 ^ 0xFC1C9217) - 917433003) ^ ((v48 ^ 0x3BFDFFFF) + 246446269)) >> 7;
  v59 = v58 & 0xED05A2 ^ 0x9F97FEFD ^ (v50 ^ (2 * ((v57 << 16) & 0x668C0000 ^ v57 ^ ((v57 << 16) ^ 0x30C60000) & ((v56 << 8) & 0xE68C0000 ^ 0x628C0000 ^ ((v56 << 8) ^ 0xC300000) & v56))) ^ 0x370D6673) & (v58 ^ 0xFE6A9B0E);
  v60 = (-266076160 * v25) | ((-427688951 * v25 - 1818356633) >> 14);
  v61 = 644239497 * (((v49 ^ 0x756BDBDC) - 1036621328) ^ ((v49 ^ 0x98836E99) + 803134635) ^ ((v49 ^ 0x7E10B0DA) - 917699862)) - 374401949;
  v62 = ((v61 ^ 0xFDD7A339) + 781857599) ^ v61 ^ ((v61 ^ 0xAF0510A1) + 2085126311) ^ ((v61 ^ 0x8D9EA3DF) + 1590899673) ^ ((v61 ^ LODWORD(STACK[0xE70])) + 548663225);
  LODWORD(STACK[0x5560]) = v35;
  v63 = -952645632 * (((v35 ^ 0x13265C) - 1637337367) ^ ((v35 ^ 0x8560D) - 1428994374) ^ ((v35 ^ 0xB2E96) - 435143133)) + 1085297469;
  v64 = (2 * (v63 & 0xE3190800)) & 0xC0301000 ^ v63 & 0xE3190800 ^ ((2 * (v63 & 0xE3190800)) | 2) & (v63 ^ 0x2A19D8F);
  v65 = ((2 * (v63 ^ 0x2A19D8F)) ^ 0xC3712290) & (v63 ^ 0x2A19D8F) ^ (2 * (v63 ^ 0x2A19D8F)) & 0xE1B89000;
  v66 = v65 ^ 0x20889000;
  v67 = (v65 ^ 0xC130014C) & (4 * v64) ^ v64;
  v68 = (4 * v66) & 0xE1B8914C ^ 0x6118904C ^ ((4 * v66) ^ 0x86E24530) & v66;
  v69 = v67 ^ 0xE1B89109 ^ (16 * v67) & 0xE1B89140 ^ ((16 * v67) ^ 0x50) & v68;
  v70 = (16 * v68) & 0xE1B89140 ^ 0xE030810C ^ ((16 * v68) ^ 0x1B8914C0) & v68;
  v71 = (v69 << 8) & 0xE1B89100 ^ v69 ^ ((v69 << 8) ^ 0xB8914C00) & v70;
  v72 = (v47 >> 21) & 0x7D8 ^ 0xA2E066BF ^ ((v47 >> 21) ^ 0xFFFFF947) & (v63 ^ (2 * ((v71 << 16) & 0x61B80000 ^ v71 ^ ((v71 << 16) ^ 0x114C0000) & ((v70 << 8) & 0xE1B80000 ^ 0x41280000 ^ ((v70 << 8) ^ 0x38910000) & v70))) ^ 0xC1B84E7C);
  v73 = HIWORD(v62);
  v74 = ((v49 ^ LODWORD(STACK[0xE74])) - 510084053) ^ ((v49 ^ 0x7E68) - 1243689892);
  LODWORD(STACK[0x5580]) = v49;
  v75 = 1351155712 * (v74 ^ ((v49 ^ 0x75EE) + 1893976030)) - 24495763;
  v76 = v73 & 0xECB1 ^ 0xD27B3FFE ^ (v73 ^ 0xFFFFD34D) & (v75 ^ 0x88642A23 ^ ((v75 ^ 0xC69049F6) + 1668321125) ^ ((v75 ^ 0x1279E56) - 1530439483) ^ ((v75 ^ 0x66561133) - 1011427422) ^ ((v75 ^ 0xFBFEFFFE) + 1579039085));
  v77 = -178257920 * ((v59 ^ (v60 + 1369178112)) - v72 + v76) + ((778069931 * ((v59 ^ (v60 + 1369178112)) - v72 + v76)) >> 11);
  v78 = (223088664 * v72) | ((-508984829 * v72) >> 29);
  v79 = (604782592 * v76) | ((2039779377 * v76) >> 18);
  v80 = (-1275914873 * v77) >> 4;
  v81 = (1879048192 * v77) | v80;
  HIDWORD(v15) = ((934137344 * v59) | ((-786704665 * v59) >> 23)) ^ v79 ^ v78 ^ v77;
  LODWORD(v15) = 1537120057 * HIDWORD(v15);
  v82 = v15 >> 3;
  v83 = (1037767264 * v79) | ((703518867 * v79) >> 27);
  HIDWORD(v15) = v80;
  LODWORD(v15) = 1497068481 * v81;
  v84 = v15 >> 3;
  v85 = 872415232 * v78 - v83 + ((1586022221 * v78) >> 6) + v81 - v82 - 2 * v81;
  v86 = 882772895 * v85;
  v87 = -1610612736 * v82 + ((1999800717 * v82) >> 3);
  v88 = -262342656 * v85 + 1235317080;
  v89 = (v88 ^ LODWORD(STACK[0xE78])) & (2 * (v88 & 0xB65E8800)) ^ v88 & 0xB65E8800;
  v90 = ((2 * (v88 ^ 0x959362D5)) ^ 0x479BD888) & (v88 ^ 0x959362D5) ^ (2 * (v88 ^ 0x959362D5)) & 0x23CDE018;
  v91 = v90 ^ 0x20442005;
  v92 = (v90 ^ 0x3884000) & (4 * v89) ^ v89;
  v93 = (4 * v91) & STACK[0xE7C] ^ 0x20C84C09 ^ ((4 * v91) ^ 0x8F37B1F4) & v91;
  v94 = (16 * v92) & 0x23CDEC60 ^ v92 ^ ((16 * v92) ^ 0x780) & v93;
  v95 = (16 * v93) & 0x23CDEC70 ^ 0x301282D ^ ((16 * v93) ^ 0x3CDEC7D0) & v93;
  v96 = v94 ^ 0x23C98005 ^ (v94 << 8) & 0x23CDEC00 ^ ((v94 << 8) ^ 0x47800) & v95;
  v97 = v88 ^ (2 * ((v96 << 16) & 0x23CD0000 ^ v96 ^ ((v96 << 16) ^ 0x6C7D0000) & ((v95 << 8) & 0x23CD0000 ^ 0x22010000 ^ ((v95 << 8) ^ 0x4DEC0000) & v95)));
  v98 = (v97 ^ LODWORD(STACK[0xE84])) & ((v86 >> 21) ^ 0x6CF8F393) ^ v97 & 0x93070C6C;
  v99 = v98 ^ LODWORD(STACK[0xE80]);
  v100 = 1074330683 * (v84 - v87) + 999490984;
  v101 = ((-1948049408 * v83) | ((2068078361 * v83) >> 19)) + v84 + v87 + (((v98 ^ 0x159E6432) + 933230028) ^ ((v98 ^ 0x3BF44A19) + 435543009) ^ ((v98 ^ 0xD395D9F8) - 241940478));
  v102 = ((v100 ^ 0x9781655C) + 1408081676) ^ v100 ^ ((v100 ^ 0xE6FC69CB) + 579900317) ^ ((v100 ^ 0x1511B6C0) - 780317544) ^ ((v100 ^ 0x5FFFBFFF) - 1684847191) ^ v99;
  v103 = -423749035 * ((((v102 ^ 0xF25570A9) - 506019380) ^ ((v102 ^ 0x1F25CEAA) + 212238281) ^ ((v102 ^ 0xF6E2227E) - 446590179)) - v101) + 274490120;
  v104 = (v103 ^ 0xA9874C99) & (2 * (v103 & 0xC9D66EDD)) ^ v103 & 0xC9D66EDD;
  v105 = ((2 * (v103 ^ 0x3A03C011)) ^ 0xE7AB5D98) & (v103 ^ 0x3A03C011) ^ (2 * (v103 ^ 0x3A03C011)) & 0xF3D5AECC;
  v106 = v105 ^ 0x1054A244;
  v107 = (v105 ^ 0x63810C88) & (4 * v104) ^ v104;
  v108 = ((4 * v106) ^ 0xCF56BB30) & v106 ^ (4 * v106) & 0xF3D5AECC;
  v109 = (v108 ^ 0xC354AA00) & (16 * v107) ^ v107;
  v110 = ((16 * (v108 ^ 0x308104CC)) ^ 0x3D5AECC0) & (v108 ^ 0x308104CC) ^ (16 * (v108 ^ 0x308104CC)) & 0xF3D5AEC0;
  v111 = v109 ^ 0xF3D5AECC ^ (v110 ^ 0x3150AC0C) & (v109 << 8);
  v112 = v103 ^ (2 * ((v111 << 16) & 0x73D50000 ^ v111 ^ ((v111 << 16) ^ 0x2ECC0000) & (((v110 ^ 0xC285020C) << 8) & 0x73D50000 ^ 0x22510000 ^ (((v110 ^ 0xC285020C) << 8) ^ 0x55AE0000) & (v110 ^ 0xC285020C))));
  v113 = v87 - (((v112 ^ 0xCC6FCFA7) + 547145733) ^ ((v112 ^ 0xC73F30F2) + 734803794) ^ ((v112 ^ 0x60A5CC10) - 1940468812)) - 180162451;
  LODWORD(STACK[0x55F0]) = v99;
  v114 = v112 ^ 0x130CF85C ^ v99;
  v115 = v101 - (((v112 ^ LODWORD(STACK[0xE88])) - 2061969090) ^ ((v112 ^ 0x4FACD47B) - 1554000935) ^ ((v112 ^ 0x4DB239A0) - 1589559804)) + 104222879;
  LODWORD(STACK[0x5730]) = v113;
  v116 = ((1230456832 * v113) | ((199830249 * v113 + 1157584650) >> 21)) - 88584192;
  LODWORD(STACK[0x5620]) = v114;
  v117 = 1287651328 * (((v114 ^ 0xFFFFFFF3) + 1720459277) ^ ((v114 ^ 0x18C) + 1548566132) ^ ((v114 ^ 0xB3) - 1647922355)) - 1459617792 + ((-1414456013 * (((v114 ^ 0xE9F57E86) + 369787258) ^ ((v114 ^ 0x138924F6) - 327754998) ^ ((v114 ^ 0xA28408BC) + 1568405316)) + 1575328420) >> 10);
  LODWORD(STACK[0x5610]) = v115;
  v118 = ((798777360 * v115) | ((-1399788515 - 1560689151 * v115) >> 28)) - 921779760;
  v119 = (((-1006553088 * (((v112 ^ 0xBEC2E) - 1722225778) ^ ((v112 ^ 0x4E208) - 2083002964) ^ ((v112 ^ 0x1A3D63) - 1651950911))) | ((-1768390617 * (((v112 ^ 0xF5DAFFE) - 475092898) ^ ((v112 ^ 0x73A2AF7C) - 1622038304) ^ ((v112 ^ 0x170A33C7) - 67554203)) - 1871548209) >> 21)) - 1819904000 + v116 - v117) ^ v118;
  v120 = (2080505856 * v119) | ((-121946623 * v119) >> 15);
  v121 = (-208892461 * v118) >> 10;
  v122 = (1958739968 * v118) | v121;
  v123 = ((-1207294993 * v117) >> 4) - (v117 << 28);
  v124 = (v123 ^ ((-1785233856 * v116) | ((-162112007 * v116) >> 26)) ^ v120) + v122;
  v125 = (-1550111416 * v120) | ((-1267505751 * v120) >> 29);
  v126 = (-319176704 * v124) | ((-1446792217 * v124) >> 18);
  v127 = -1471843087 * v126;
  v128 = (1142308915 * v122) >> 3;
  v129 = 3 * v121;
  v130 = -251658240 * v126;
  v131 = v128 | (v129 << 29);
  v132 = (v125 ^ (-343932928 * v123 + ((470746071 * v123) >> 9))) - v131 + v126;
  v133 = -75788659 * v131;
  v134 = (-1585938432 * v125) | ((-233880847 * v125) >> 17);
  v135 = v130 + (v127 >> 8);
  v136 = (-1927919280 * v132) | ((-1999543147 * v132) >> 28);
  v137 = (v134 ^ (__PAIR64__(v128, v133) >> 1) ^ v135) - v136;
  v138 = v137 ^ 0x14D4D80A ^ (v136 + 788524275 * (v135 + v134 - 2 * v135));
  v139 = STACK[0x57B0];
  v140 = v138 - 429916853;
  v141 = (v138 - 429916853) ^ v137;
  v142 = v136 + 1419549023 + v138;
  v143 = 623727177 * (v138 - 429916853);
  v144 = -1207959552 * (v135 + 1639986558 + v138) + ((-585679273 * (v135 + 1639986558 + v138) - 1323594581) >> 5) + 1476395008;
  v145 = ((1013776384 * v142) | ((-1572979603 * v142 + 1724177276) >> 16)) - 612630528;
  v146 = ((-609895296 * (((v141 ^ 0xCE5B62) - 594862413) ^ ((v141 ^ 0x111AEC4) + 726985493) ^ ((v141 ^ 0x1DFF5A6) - 1818578825))) | ((1203194745 * (((v141 ^ 0x72A8FF8) + 1668270633) ^ ((v141 ^ 0x5C8D4AFC) + 952635181) ^ ((v141 ^ 0x5BA7C504u) + 1071808725)) + 1885783351) >> 25)) + 862100352;
  v147 = ((v144 + ((v143 << (v139 & 0x11 ^ 0x10) << (v139 & 0x11 ^ 1)) | (v143 >> 15))) ^ v145) - v146;
  v148 = (1492123648 * v147) | ((-1905416817 * v147) >> 12);
  v149 = (-1545347671 * v145) >> 27;
  v150 = (2088482080 * v145) | v149;
  v151 = (9633792 * v146) | ((-1135083373 * v146) >> 16);
  v152 = -2013265920 * v144 + ((-1586131695 * v144) >> 5) + v150 - v151 + v148;
  v153 = (-1568047104 * v152) | ((2124236051 * v152) >> 17);
  v154 = (-1088262912 * v148) | ((62857837 * v148) >> 24);
  v155 = (1718091776 * v151) | ((2000661709 * v151) >> 13);
  v156 = -670667735 * v154;
  v157 = -1070374584 * v154;
  v158 = (((1469022499 * v150) >> 3) | (1610612736 * v149)) + v155 - v154 - v153;
  v159 = v157 & 0xFFFFFFF8 | (v156 >> 29);
  v160 = (1373700096 * v153) | ((-1914613279 * v153) >> 16);
  v161 = (1523580928 * v158) | ((1270355373 * v158) >> 12);
  v162 = v160 ^ (((-183967040 * v155) | ((v155 * LODWORD(STACK[0xE8C])) >> 26)) + v159) ^ v161;
  v163 = v162 - 1536739277 * ((1122704891 * (v160 ^ v159)) ^ v161);
  LODWORD(STACK[0x55E0]) = v163;
  v164 = v163 ^ 0x1C9E011A;
  v165 = (v163 ^ 0x1C9E011A) + v161;
  HIDWORD(v15) = 1465321393 * (v163 ^ 0x1C9E011A);
  LODWORD(v15) = HIDWORD(v15);
  LODWORD(STACK[0x5720]) = v163 ^ 0x1C9E011A ^ v160;
  v166 = (-1869381632 * (v164 ^ v160)) | ((-1051516633 * (v164 ^ v160)) >> 17);
  LODWORD(STACK[0x5600]) = v162 - (v163 ^ 0x1C9E011A);
  v167 = (1688557568 * (v162 - v164)) | ((617387179 * (v162 - v164)) >> 21);
  LODWORD(STACK[0x5650]) = v164 + v161;
  v168 = (-335544320 * v165) | ((-1950770885 * v165) >> 6);
  v169 = (((v15 >> 31) - v166) ^ v168) + v167;
  v170 = (2013265920 * ((-1950770885 * v165) >> 6)) | ((1795140751 * v168) >> 5);
  v171 = 494772672 * v169 + ((544601735 * v169) >> 26);
  v172 = (-289275904 * v167) | ((-394856607 * v167) >> 15);
  v173 = (((-1730543616 * v166) | ((1510722669 * v166) >> 15)) + v170 - v171) ^ v172;
  v174 = ((691608095 * v171) >> 4) - (v171 << 28);
  v175 = (1276184576 * v173) | ((1999208993 * v173) >> 21);
  HIDWORD(v15) = 1657835773 * v172;
  LODWORD(v15) = 1657835773 * v172;
  v176 = v15 >> 31;
  v177 = (v174 ^ ((v170 * LODWORD(STACK[0xE90])) & 0xFFFFFC00 | ((-1576910841 * v170) >> 22))) + v176 + v175;
  v178 = (678659808 * v174) | ((1497603127 * v174) >> 27);
  v179 = (-1868759040 * v175) | ((735940765 * v175) >> 16);
  v180 = (1002455500 * v177) | ((-1896869773 * v177) >> 30);
  v181 = (1065353216 * v176) | ((-729430913 * v176) >> 9);
  v182 = v178 - v179 + 496473173 + v180;
  v183 = (v179 ^ (v181 + v178)) - v180;
  v184 = 614737901 * (v182 ^ v183);
  LODWORD(STACK[0x5670]) = v184 ^ v179;
  LODWORD(STACK[0x5680]) = v183 - v184;
  LODWORD(STACK[0x5550]) = v142;
  LODWORD(STACK[0x5540]) = v26;
  LODWORD(STACK[0x5530]) = v140;
  LODWORD(STACK[0x55C0]) = LODWORD(STACK[0x5780]) ^ 0xF7;
  LODWORD(STACK[0x5710]) = LODWORD(STACK[0x5770]) + 671886739;
  LODWORD(STACK[0x5640]) = v6 - 149568083;
  LODWORD(STACK[0x55B0]) = HIWORD(v112) ^ 0x6BF5;
  LODWORD(STACK[0x55D0]) = v184;
  LODWORD(STACK[0x5780]) = v112 ^ 0x130CF85C;
  v185 = *(STACK[0x57D8] + 8 * v4);
  LODWORD(STACK[0x5630]) = v180 - v184 - ((2 * (v180 - v184)) & 0xD37005A8) + 1773667028;
  LODWORD(STACK[0x55A0]) = HIWORD(v139) ^ 0x1234;
  LODWORD(STACK[0x5590]) = HIWORD(v164);
  LODWORD(STACK[0x5770]) = v164;
  return v185();
}

uint64_t sub_1000F7C18()
{
  v2 = *(v1 + 664);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8 ^ 0x720CD7AE) + 549675262 + ((2 * (v2 & 0xFFFFFFF8)) & 0xE419AF50))) & 0xFFFFFFFFFFFFFFF8));
  v4 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v3) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (((2 * (v6 + v5)) & 0x9C2BB8751DF14550) - (v6 + v5) - 0x4E15DC3A8EF8A2A9) ^ 0xD4187718698AE9ABLL;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (0xE1693212D92B6940 - ((v9 + v8) | 0xE1693212D92B6940) + ((v9 + v8) | 0x1E96CDED26D496BFLL)) ^ 0x71668B7B47CD8432;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xA1B29DC5D776132BLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = __ROR8__((v14 + v13 - ((2 * (v14 + v13)) & 0xDEAD45AF8D8432A4) - 0x10A95D28393DE6AELL) ^ 0x528296332751BELL, 8);
  v16 = (v14 + v13 - ((2 * (v14 + v13)) & 0xDEAD45AF8D8432A4) - 0x10A95D28393DE6AELL) ^ 0x528296332751BELL ^ __ROR8__(v13, 61);
  v17 = (((2 * (v15 + v16)) & 0xF2FEBBB068997456) - (v15 + v16) - 0x797F5DD8344CBA2CLL) ^ 0x5E47113801AA9C0ALL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (v19 + v18 - ((2 * (v19 + v18)) & 0x7FEB2A1AE6F33F5ALL) - 0x400A6AF28C866053) ^ 0xEBA09423F9C85C22;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = 5621 * ((((((2 * (v22 + v21)) | 0x2FE9F97F521DE9C4) - (v22 + v21) + 0x680B034056F10B1ELL) ^ 0xF8BB9C03A70CAA02) >> (8 * (v2 & 7u))) ^ *(v1 + 295)) + 32028458;
  *(STACK[0xDCB8] + 3884) = *(STACK[0xDCB8] + v23 - 6152 * (((89362129 * v23) >> 32) >> 7));
  v24 = *(v1 + 656) + 36;
  *(v1 + 672) = v24;
  *(v1 + 296) = v24;
  v25 = STACK[0x57D8];
  *(v1 + 280) = *(STACK[0x57D8] + 8 * (v0 + 8985));
  return (*(v25 + 8 * (*(v1 + 3776) + 8890)))();
}

uint64_t sub_1000F7F00(int a1, int a2, int a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x4900]) = LODWORD(STACK[0x54E0]) | LODWORD(STACK[0x53E0]);
  LODWORD(STACK[0x4720]) = a5 | LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x5308]) = v7 & (a1 ^ 0x22F0386);
  LODWORD(STACK[0x53B8]) = v5 & (v6 ^ 0x16D0EDD9);
  LODWORD(STACK[0x5298]) = a2 & (v8 ^ 0x37A68DA2);
  LODWORD(STACK[0x53F8]) = a3 & (v9 ^ 0x452E6801);
  v12 = *STACK[0x5230];
  v13 = *(v10 + 4000);
  STACK[0x5180] = (v13 + 40237);
  v14 = v13[40237];
  STACK[0x5200] = (v13 + 37247);
  v15 = v13[37247];
  v16 = v15 & 0xA8 ^ 0x62;
  v17 = *STACK[0x50A0];
  v18 = v17 & 0xCC ^ 0x34;
  v19 = (((v17 ^ (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xCC) << 8) | (((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v16 << ((v11 - 45) ^ 0x42)) & (v15 ^ 0x44) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0xA8) << 16);
  v20 = v12 & 0x40 ^ 0xF6;
  v21 = (((v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & 0x2C ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xF88C91) & ~v19 | v19 & 0x77300) << 8;
  v22 = v14 & 0xBA ^ 0xEB;
  LODWORD(STACK[0x5270]) = (v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * (v22 ^ v14 & 0x1E)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)));
  LODWORD(STACK[0x5248]) = v21 ^ 0x20304FF;
  LODWORD(STACK[0x53B0]) = v21 & 0x35F0BA00;
  STACK[0x5348] = (v13 + 37746);
  v23 = v13[37746];
  STACK[0x5178] = (v13 + 36997);
  LOBYTE(v21) = v13[36997];
  v24 = v21 & 0xFE ^ 0xD;
  v25 = *STACK[0x5620];
  v26 = v25 & 0x8E ^ 0x55;
  v27 = (((v25 ^ (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * ((v25 ^ 0x64) & (2 * (v26 ^ v25 & 0xAA)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0x8E) << 8) | (((v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * v24) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24))) ^ 0xFE) << 16);
  LOBYTE(v21) = v23 & 0xEE ^ 5;
  v28 = (((v23 ^ (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * ((v23 ^ 0x64) & (2 * (v23 & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xDF649D) & ~v27 | v27 & 0x209B00) << 8;
  LODWORD(STACK[0x51B0]) = v28 ^ 0x88CFF;
  LODWORD(STACK[0x53D8]) = v28 & 0x76933200;
  LOBYTE(v28) = *STACK[0x4FD8];
  STACK[0x4F18] = (v13 + 40734);
  LOBYTE(v21) = v13[40734];
  LOBYTE(v27) = *STACK[0x52E0];
  v29 = v21 & 0xBA ^ 0xEB;
  v30 = *STACK[0x4FF0];
  v31 = v30 & 0x4C ^ 0xFFFFFFF4;
  v32 = (((v30 ^ (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x4C) << 8) | (((v21 ^ (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * ((v21 ^ 0x64) & (2 * (v29 ^ v21 & 0x1E)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xBA) << 16);
  v33 = (v27 & 0xE4 | 0xA) ^ v27 & 0x1C;
  v34 = ((v32 ^ 0xF8EFFF) & ((v27 ^ (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * ((v27 ^ 0x64) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 0x908ED0) | v32 & 0x6F7100) << 8;
  LOBYTE(v32) = v28 & 0x4E ^ 0x75;
  LODWORD(STACK[0x5170]) = (v28 ^ (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * (v32 ^ v28 & 0xAA)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)));
  LODWORD(STACK[0x5168]) = v34 ^ 0x4E00C7FF;
  LODWORD(STACK[0x51F8]) = v34 & 0x21FF3800;
  LOBYTE(v34) = *STACK[0x52C8];
  STACK[0x53E0] = (v13 + 37994);
  LOBYTE(v32) = v13[37994];
  LOBYTE(v28) = v32 & 0x88 | 0x52;
  LOBYTE(v21) = v34 & 0xDC ^ 0xBC;
  v35 = *STACK[0x5600];
  v36 = (((v34 ^ (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * ((v34 ^ 0x64) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xDC) << 8) | (((v32 ^ (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * ((v32 ^ 0x64) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x88) << 16);
  LOBYTE(v32) = v35 & 0xF2 ^ 0x8F;
  LOBYTE(v21) = *STACK[0x50F8];
  v37 = (((v35 ^ (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * (v32 ^ v35 & 0x16)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0xA0BD8A) & ~v36 | v36 & 0x5F4200) << 8;
  LOBYTE(v32) = v21 & 0xCE ^ 0xB5;
  LOBYTE(v27) = v21 ^ 0x64;
  LODWORD(STACK[0x5148]) = (v21 ^ (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v32 ^ v21 & 0xAA)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)));
  LODWORD(STACK[0x5130]) = v37 ^ 0x84205FF;
  LODWORD(STACK[0x53C8]) = v37 & 0xD7B0EA00;
  v38 = *(STACK[0x57D8] + 8 * ((47316 * (v11 > 0x8045DFBB)) ^ (v11 - 1563387179)));
  v39 = STACK[0x5540];
  STACK[0x54E0] = (v13 + 36499);
  STACK[0x53E8] = (v13 + 38327);
  return v38(v39, 17079528, (v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * ((v30 ^ 0x64) & (2 * v31) ^ v31)) ^ v31)) ^ v31)), 21613735);
}

uint64_t sub_1000F8798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(STACK[0x60B8] + 376);
  v8 = STACK[0x57D8];
  v9 = STACK[0x1C2C];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1C2C]));
  return (*(v8 + 8 * (LODWORD(STACK[0x1C28]) ^ (13917 * (v9 == 1070298401)))))(v7, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1000F8A04()
{
  v3 = *(v0 + 504);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v5 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (((2 * (v5 + v4)) & 0x12015290DB74FD9ALL) - (v5 + v4) + 0x76FF56B792458132) ^ 0xB450681DADB439D6;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = __ROR8__(v6, 8);
  v9 = __ROR8__((0x1120388027470042 - ((v8 + v7) | 0x1120388027470042) + ((v8 + v7) | 0xEEDFC77FD8B8FFBDLL)) ^ 0x8B2D93A2C0354B41, 8);
  v10 = (0x1120388027470042 - ((v8 + v7) | 0x1120388027470042) + ((v8 + v7) | 0xEEDFC77FD8B8FFBDLL)) ^ 0x8B2D93A2C0354B41 ^ __ROR8__(v7, 61);
  v11 = (0x1AEAA07F5DA8270CLL - ((v9 + v10) | 0x1AEAA07F5DA8270CLL) + ((v9 + v10) | 0xE5155F80A257D8F3)) ^ 0x8AE51916C34ECA7ELL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * (v13 + v12)) | 0x747CB25664FCC116) - (v13 + v12) + 0x45C1A6D4CD819F75) ^ 0x1B8CC4EEE50873A0;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ v2;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xD8C7B31FCA19D9DELL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) & 0xAD2ADB1C0C866716) - (v20 + v19) - 0x56956D8E0643338CLL) ^ 0xFD3F935F730D0FFBLL;
  LODWORD(v21) = 5621 * ((((__ROR8__(v21, 8) + (v21 ^ __ROR8__(v19, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v3 & 7u))) ^ *(v0 + 295)) + 32028458;
  LODWORD(v9) = v21 - 6152 * (((89362129 * v21) >> 32) >> 7);
  v22 = STACK[0xDCB8];
  LOBYTE(v9) = *(STACK[0xDCB8] + v9);
  v22[2329] = *(v0 + 464);
  v22[167] = v9;
  v23 = STACK[0xDC98];
  v24 = STACK[0xDC98] + 13;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 - 0x70824D863E123F43) & 0xD4F289C3F22640BBLL ^ 0x40F208C050244011) + ((v25 - 0x70824D863E123F43) & 0x2B0D763C0DD9BF44 ^ 0x2A01760804D0BE05) - 1;
  v27 = v26 ^ 0xB97495DFADE50163;
  v26 ^= 0xC2990611A28B048FLL;
  v28 = __ROR8__(v27, 8);
  v29 = (((2 * (v28 + v26)) | 0x7E1C5A93FEE427B0) - (v28 + v26) + 0x40F1D2B6008DEC28) ^ 0x857249BEE0CDD583;
  v30 = v29 ^ __ROR8__(v26, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xFBC18F8B9568C440;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((0x93E53566191D38B1 - ((v33 + v32) | 0x93E53566191D38B1) + ((v33 + v32) | 0x6C1ACA99E6E2C74ELL)) ^ 0x26FF04F68575BE7DLL, 8);
  v35 = (0x93E53566191D38B1 - ((v33 + v32) | 0x93E53566191D38B1) + ((v33 + v32) | 0x6C1ACA99E6E2C74ELL)) ^ 0x26FF04F68575BE7DLL ^ __ROR8__(v32, 61);
  v36 = (v34 + v35) ^ 0x2854CB5A8BDB8317;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xF7721CC6F3AEFBDCLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xE6B7173A9B2BB05DLL;
  v41 = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v24 & 7u))) ^ *v24;
  v42 = 5621 * (((2 * v41) & 0x84) + (v41 ^ 0x1642));
  v22[4013] = v22[v42 - 6152 * (((89362129 * v42) >> 32) >> 7)];
  v43 = *(v23 + 18);
  v23 += 18;
  v44 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = (v44 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL;
  v46 = (__ROR8__((v44 - 0x70824D863E123F43) ^ 0xD387EB17F911FF76, 8) + v45) ^ 0x3A7C64F71FBFC65BLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0xFBC18F8B9568C440;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = __ROR8__((0xDD962E852D6456C8 - ((v50 + v49) ^ 0x1992F2D27F8A0251 | 0xDD962E852D6456C8) + ((v50 + v49) ^ 0x1992F2D27F8A0251 | 0x2269D17AD29BA937)) ^ 0x711EEDC7CE86D255, 8);
  v52 = (0xDD962E852D6456C8 - ((v50 + v49) ^ 0x1992F2D27F8A0251 | 0xDD962E852D6456C8) + ((v50 + v49) ^ 0x1992F2D27F8A0251 | 0x2269D17AD29BA937)) ^ 0x711EEDC7CE86D255 ^ __ROR8__(v49, 61);
  v53 = (v51 + v52 - ((2 * (v51 + v52)) & 0xAB7A736D3CC2D112) - 0x2A42C649619E9777) ^ 0xFDE9F2EC15BAEB9ELL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xF7721CC6F3AEFBDCLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xE6B7173A9B2BB05DLL;
  LODWORD(v23) = (((__ROR8__(v57, 8) + (v57 ^ __ROR8__(v56, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v23 & 7u))) ^ v43;
  v22[3262] = v22[5621 * v23 + 32028458 - 6152 * (((89362129 * (5621 * v23 + 32028458)) >> 32) >> 7)];
  v58 = STACK[0xDCA0] + 26;
  *(v0 + 296) = v58;
  v59 = STACK[0x57D8];
  v60 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2318));
  *(v0 + 512) = v58;
  *(v0 + 280) = v60;
  return (*(v59 + 8 * (v1 ^ 0x2F92)))();
}

uint64_t sub_1000F9028(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  v13 = *(STACK[0x57D8] + 8 * (((v11 < ((v12 + 918040355) & 0x4947FEDF ^ 0x6C5EuLL)) * ((4963 * (v12 ^ 0x3E4E)) ^ 0x60D7)) ^ v12));
  *&STACK[0x57C0] = vdupq_n_s64(0xBB93890FFC18D2AALL);
  *&STACK[0x5760] = vdupq_n_s64(0xB1F49ABE1B6CA29CLL);
  *&STACK[0x5720] = vdupq_n_s64(v9);
  *&STACK[0x5750] = vdupq_n_s64(a9);
  *&STACK[0x5710] = vdupq_n_s64(a5);
  *&STACK[0x5740] = vdupq_n_s64(a7);
  return v13(a1, a2, vdupq_n_s64(v10));
}

uint64_t sub_1000F92A4()
{
  v1 = STACK[0x51B8] - 1663;
  v2 = STACK[0xE1A8] + 10 + (v0 ^ 0xD21C8094);
  STACK[0xD550] = v2;
  return (*(STACK[0x57D8] + 8 * ((62 * (v2 > STACK[0xE1A0])) ^ v1)))();
}

uint64_t sub_1000F9304@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 3485;
  v2 = STACK[0x51B8] - 22386;
  LOWORD(STACK[0xD9DC]) = a1;
  return (*(STACK[0x57D8] + 8 * ((v1 ^ 0x5842) + v2)))();
}

uint64_t sub_1000F9480(uint64_t a1)
{
  v2 = STACK[0xA8A0];
  LOBYTE(STACK[0x6013]) = 12;
  STACK[0xA6A0] = STACK[0x8848];
  LODWORD(STACK[0x8A2C]) = STACK[0x6BCC];
  STACK[0x6E28] = v2;
  STACK[0x5908] = &STACK[0xAE68];
  STACK[0x8E78] = &STACK[0x6DA4];
  LODWORD(STACK[0x9058]) = 8;
  LODWORD(STACK[0xCF24]) = -1060642906;
  return (*(STACK[0x57D8] + 8 * v1))(a1, &STACK[0x1D270], &STACK[0x67A7]);
}

uint64_t sub_1000F956C@<X0>(int a1@<W8>)
{
  if (a1 == v1)
  {
    v3 = STACK[0xCB7C];
  }

  else
  {
    v3 = a1;
  }

  return (*(STACK[0x57D8] + 8 * (((v3 == ((v2 - 3676) | 0x93) - 143114766) * (v2 + 8333)) ^ v2)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_1000F9608(void *a1, int a2)
{
  *(v2 + 32) = -309;
  *(v2 + 24) = *a1;
  return (*(STACK[0x57D8] + 8 * (a2 - 6550)))();
}

uint64_t sub_1000F96B4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((v2 - 240) ^ 0xFA22EB84));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413)))(v2 - 240);
  return (*(v3 + 8 * (v1 + 6686)))(v4);
}

uint64_t sub_1000F9720@<X0>(uint64_t a1@<X1>, unint64_t a2@<X3>, unint64_t a3@<X8>)
{
  v7 = STACK[0xFE70];
  v8 = *(STACK[0xFE70] + v3 - 35072 * (a2 / 0x2240));
  LODWORD(STACK[0x55A0]) = v5 ^ 0x3ED5;
  v9 = STACK[0xFE78];
  v10 = *STACK[0x4F70];
  *(v6 - 152) = a3;
  LODWORD(STACK[0x4E68]) = v10;
  LODWORD(STACK[0x4E78]) = *STACK[0x53C8];
  LODWORD(STACK[0x4E80]) = *STACK[0x5270];
  LODWORD(STACK[0x4E70]) = *STACK[0x5660];
  LODWORD(STACK[0x4EC8]) = *STACK[0x5790];
  LODWORD(STACK[0x4EF8]) = *STACK[0x5410];
  v11 = *(v9 + 3903 * (BYTE1(v8) ^ 0x64) + 4008381 - 5896 * (((1456909 * (3903 * (BYTE1(v8) ^ 0x64u) + 4008381)) >> 32) >> 1));
  v12 = *(v9 + (3903 * (v5 ^ 0x19A2 ^ BYTE2(v8)) + 4008381) % 0x1708);
  v13 = *(v9 + (3903 * (((HIBYTE(v8) ^ 0x40B6A95A) + 1413670346) ^ ((HIBYTE(v8) ^ 0xE149D8C5) - 172125097) ^ ((HIBYTE(v8) ^ 0xA1FF71D3) - 1257554623)) - 2019746147) % 0x1708);
  v14 = *(v9 + (3903 * (((v8 ^ 0x6636674E) + 511439843) ^ ((v8 ^ 0x116E4FCB) + 1763957608) ^ ((v8 ^ 0x77582874u) + 253082841)) - 646705773) % 0x1708);
  LOBYTE(v8) = v13 & 0x26 ^ 0x21;
  v15 = 2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * (v12 & 0xE4)) ^ v12 & 0xE4)) ^ v12 & 0xE4)) ^ v12 & 0xE4);
  LOBYTE(v10) = v11 & 0x6A ^ 0x43;
  v16 = (((v12 ^ (2 * ((v15 ^ v12) & 0x64 ^ v15 & v12))) ^ 0xE4) << 8) | (((v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x44) & (2 * (v8 ^ v13 & 2)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0x26) << 16);
  v17 = v14 & 0x68 ^ 0xC2;
  v18 = ((v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x44) & (2 * ((v11 ^ 0x44) & 0xE ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) ^ 0x71C74C) & ~v16 | v16 & 0x8E3800;
  LOBYTE(v16) = v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x44) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17));
  *(v7 + a1 - 35072 * (a3 / 0x2240)) = (((v18 << 8) ^ 0xDED3D45D) & (v16 ^ 0xFFFFFF97) | v16 & 0xA2) ^ 0xE3D1968C;
  return (*(STACK[0x57D8] + 8 * ((21363 * (v4 == 0)) ^ v5)))();
}

uint64_t sub_1000F9B88()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  return (*(v0 + 8 * SLODWORD(STACK[0x2994])))(v1);
}

uint64_t sub_1000F9E64()
{
  v2 = STACK[0x8600];
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 20641)))(*STACK[0x8600]);
  *v2 = v0;
  LODWORD(STACK[0x710C]) = STACK[0xBF10];
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1000F9ED4()
{
  v3 = STACK[0x9CF0];
  v4 = STACK[0x70CC];
  LODWORD(STACK[0x753C]) = STACK[0x70CC];
  v5 = STACK[0x6EA8];
  LODWORD(STACK[0x76F0]) = STACK[0x639C];
  STACK[0x5C00] = STACK[0x9470];
  STACK[0x8F88] = STACK[0xB730];
  *(v1 + 2673) = *(v1 + 1517);
  v6 = STACK[0x7ED8];
  STACK[0x8150] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = ((v0 + 1296) | 0x1000u) + v6 - 12929;
  STACK[0xCBA0] = v3;
  STACK[0xA9E8] = v5;
  *(v1 + 1220) = -3415;
  STACK[0xC8C0] = v3;
  *(v2 + 2016) = v4;
  STACK[0xA398] = &STACK[0x8C9E];
  *(v2 + 4148) = 662153933;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1000FA02C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W8>)
{
  LODWORD(STACK[0x650]) = v13;
  LODWORD(STACK[0x6C0]) = v11;
  v15 = STACK[0x6B0];
  LODWORD(STACK[0x668]) = STACK[0x6B0];
  v16 = STACK[0x698];
  LODWORD(STACK[0x670]) = v14;
  v17 = v7;
  LODWORD(STACK[0x660]) = v7;
  HIDWORD(v19) = v7;
  LODWORD(v19) = v7;
  v18 = v19 >> 6;
  HIDWORD(v19) = v16;
  LODWORD(v19) = v16;
  v20 = v12;
  LODWORD(STACK[0x658]) = v12;
  v21 = v13 ^ v12 & v17 ^ v16 & (v14 ^ v13) ^ v15 & v17;
  v22 = v13 & v17 ^ v20 ^ v14 & v17 ^ (v15 ^ v20) & v16;
  v23 = v18 ^ __ROR4__(v17, 11) ^ __ROR4__(v17, 25);
  v24 = (v19 >> 11) ^ __ROR4__(v16, 6);
  LODWORD(v19) = __ROR4__(v16, 25);
  v25 = ((v24 ^ v19 ^ a6) - a6) ^ ((v24 ^ v19 ^ a2) - a2) ^ (((v8 - 1315278272) ^ a3 ^ v23 ^ v24 ^ v19) - ((v8 - 1315278272) ^ a3 ^ v23));
  v26 = (a4 + 1689348819) ^ a5;
  v27 = v26 + 786664363;
  v28 = v8 + LODWORD(STACK[0x500]);
  v29 = v28 ^ a1;
  v30 = a3 + v9 + v28;
  v31 = v30 + v9 + v28;
  v30 -= 100882016;
  v32 = v30 ^ (v8 + 754506533 + ((((-786664364 - v26) & 0xF1DF72F1) + ((v26 + 786664363) & 0xF1DF72F1)) & 0xB3BA7340)) ^ v21;
  v33 = (v32 ^ v22) - v32;
  v34 = v6 + a4 + 1689348819;
  v35 = v34 + a6;
  v36 = v34 + a6 + v34;
  v37 = v35 - 100882016;
  v38 = ((v22 ^ v37) - v37) ^ ((v22 ^ (a4 + 2092237910)) - (a4 + 2092237910)) ^ v33;
  LODWORD(STACK[0x6B0]) = v16;
  STACK[0x648] = ((((v16 >> 25) & 0x11 ^ 0x91) + ((v16 >> 25) & 0x11)) * (v11 ^ 0x5F)) % 0xC0u;
  v39 = v10 - v6 + v21 + v31 + (v30 & 0x84400208 ^ 0x4400200 | (v30 ^ 0xA133248D) & 0x84400208);
  v40 = STACK[0x518];
  v41 = (145 * (v11 ^ 0x29)) % 0xC0u;
  v42 = v9 - 1859597500 + LODWORD(STACK[0x690]);
  v43 = STACK[0x6A0];
  v29 += 786664363;
  v44 = v8 - 560771739 + v29;
  v45 = v39 + *(STACK[0x518] + 4 * ((185 * v11) % 0x10Fu)) + v25;
  v46 = v31 - (v30 ^ 0xA133248D) - v44;
  LODWORD(STACK[0x5F0]) = v46;
  v47 = v23 + v42 - v36 + *(v40 + 4 * ((185 * v11 + 25530) % 0x10Fu));
  LODWORD(STACK[0x6A0]) = v44 ^ 0x11695A25;
  LODWORD(STACK[0x5A0]) = v31 - v44;
  v48 = (v44 ^ 0x11695A25) + 1471529726 + v31 - v44;
  v49 = (v31 - v44) ^ (v29 - (v44 ^ 0x11695A25) - (v31 - (v30 ^ 0xA133248D))) ^ v48;
  v50 = v49 + (v44 ^ 0x64689452);
  LODWORD(STACK[0x598]) = v50;
  v51 = (v46 ^ v44 ^ 0x11695A25) + 1772753837;
  LODWORD(STACK[0x5E0]) = v51;
  v52 = v51 - v48;
  LODWORD(STACK[0x580]) = v48;
  v53 = v49 ^ (v51 - v48);
  v54 = v50 + v51 - v48 - v53;
  LODWORD(STACK[0x690]) = v54;
  v52 -= 490579138;
  LODWORD(STACK[0x698]) = v52;
  v55 = v53 ^ v48;
  v56 = v53 ^ v48 ^ v52;
  v57 = v54 - 1384882248 + v56;
  v58 = v53 ^ v48 ^ 0xD6D39459;
  LODWORD(STACK[0x630]) = v53 ^ v48;
  LODWORD(STACK[0x5A8]) = v58;
  v59 = STACK[0x6D0];
  v60 = ((v58 - 1135742185) ^ v43 ^ v57 ^ LODWORD(STACK[0x6D0])) - ((v58 - 1135742185) ^ v43 ^ v57);
  v61 = v27 + a4 + 2092237910;
  v37 ^= 0xA133248D;
  v62 = v36 - v37;
  v63 = v61 ^ 0x11695A25;
  v64 = v62 - v61;
  LODWORD(STACK[0x5D0]) = v62 - v61;
  v65 = v62 - v61 + v37;
  LODWORD(STACK[0x534]) = v65;
  v66 = v65 ^ (v27 - (v61 ^ 0x11695A25) - v62);
  v67 = (v61 ^ 0x11695A25) + 1471529726 + v65;
  v68 = v64 ^ v61 ^ 0x11695A25;
  LODWORD(STACK[0x5C8]) = v68;
  v69 = v68 + 1772753837 - v67;
  v70 = v69 ^ v66 ^ 0xD6D39459;
  v71 = v69 ^ v66;
  LODWORD(STACK[0x540]) = v70;
  v72 = STACK[0x508];
  v73 = v47 + v38 + (__ROR4__(*(STACK[0x508] + 4 * v41), 23) ^ 0xFD0F305A);
  LODWORD(STACK[0x590]) = v73;
  v74 = *(v72 + 4 * STACK[0x648]);
  v75 = v74 ^ 0xDD9DD707 ^ (v74 >> 4) & 0x755CC21;
  v76 = v67 ^ v66;
  v77 = v76 + (v61 ^ 0x64689452);
  LODWORD(STACK[0x640]) = v69;
  v78 = v69 ^ v76;
  LODWORD(v72) = v77 + v69 - v78;
  LODWORD(STACK[0x638]) = v72;
  LODWORD(STACK[0x620]) = v71;
  v79 = (v69 - 490579138) ^ v71;
  v80 = v79 - 1384882248 + v72;
  v81 = v56 ^ (v53 - v55);
  v82 = v81 - v58;
  v83 = v81 - v58 + v56 - 2 * (v81 - v58);
  LODWORD(STACK[0x6D0]) = v81 - 1572792680 + v83;
  LODWORD(STACK[0x628]) = v79;
  v84 = (v79 ^ (v78 - v71)) - v70;
  v85 = v84 - v79 + v73 + (((v80 ^ v59) - v80) ^ (((v70 - 1135742185) ^ v59) - (v70 - 1135742185)) ^ v60);
  v86 = v45 + 1468167084 + v75;
  LODWORD(STACK[0x5B0]) = v86;
  v87 = v82 ^ 0x21A52E4A ^ v57;
  v88 = v87 + (v82 ^ 0x21A52E4A);
  LODWORD(STACK[0x588]) = v88;
  LODWORD(STACK[0x528]) = v87;
  v89 = v86 + v43 + v83 + v88;
  v90 = v89;
  v91 = ((*(STACK[0x6E0] + (311 * (HIBYTE(v89) & 0xF) + 185667 - 962 * ((4464623 * (311 * (HIBYTE(v89) & 0xF) + 185667)) >> 32))) ^ 0xEE) << 8) ^ (*(STACK[0x6E0] + (311 * (v89 >> 28) + 185667 - 962 * ((4464623 * (311 * (v89 >> 28) + 185667)) >> 32))) << 12);
  v92 = ((((v91 ^ 0x12FF) & (*(STACK[0x6E0] + (311 * (HIWORD(v89) & 0xF) + 185667 - 962 * ((4464623 * (311 * (HIWORD(v89) & 0xF) + 185667)) >> 32))) ^ 0x49234)) + (v91 & 0xB6D00)) << 8) ^ ((*(STACK[0x6E0] + (311 * ((v89 >> 20) & 0xF) + 185667 - 962 * ((4464623 * (311 * ((v89 >> 20) & 0xF) + 185667)) >> 32))) ^ 0xEE) << 12);
  LODWORD(STACK[0x648]) = v89;
  v93 = 311 * (v89 >> 4) + 185667 - 962 * ((4464623 * (311 * (v89 >> 4) + 185667)) >> 32);
  v94 = (((v92 ^ 0x105FF) & (*(STACK[0x6E0] + (311 * ((v89 >> 8) & 0xF) + 185667 - 962 * ((4464623 * (311 * ((v89 >> 8) & 0xF) + 185667)) >> 32))) ^ 0xC3056E) | v92 & 0x3CFA00) << 8) ^ ((*(STACK[0x6E0] + (311 * (v89 >> 12) + 185667 - 962 * ((4464623 * (311 * (v89 >> 12) + 185667)) >> 32))) ^ 0xEE) << 12);
  v95 = *(STACK[0x6E0] + (311 * (v90 & 0xF) + 185667 - 962 * ((4464623 * (311 * (v90 & 0xFu) + 185667)) >> 32)));
  v84 ^= 0x21A52E4Au;
  v96 = v84 ^ v80;
  v97 = (v84 ^ v80) + v84;
  LODWORD(STACK[0x538]) = v97;
  LODWORD(STACK[0x600]) = v96;
  v98 = 311 * (((v85 - v97) >> 24) & 0xF) + 185667;
  v99 = 311 * (((v85 - v97) >> 20) & 0xF) + 185667;
  v100 = ((*(STACK[0x6E0] + (v98 - 962 * ((4464623 * v98) >> 32))) ^ 0xEE) << 8) ^ ((*(STACK[0x6E0] + (311 * ((v85 - v97) >> 28) + 185667 - 962 * ((4464623 * (311 * ((v85 - v97) >> 28) + 185667)) >> 32))) ^ 0xEE) << 12);
  v101 = 311 * (((v85 - v97) >> 16) & 0xF) + 185667;
  v102 = (*(STACK[0x6E0] + (v101 - 962 * ((4464623 * v101) >> 32))) ^ 0x53A00A) & ~v100 | v100 & 0xC5F00;
  v103 = 311 * ((v85 - v97) >> 12) + 185667;
  v104 = v103 - 962 * ((4464623 * v103) >> 32);
  v105 = (v102 << 8) ^ (*(STACK[0x6E0] + (v99 - 962 * ((4464623 * v99) >> 32))) << 12);
  v106 = 311 * (((v85 - v97) >> 8) & 0xF) + 185667;
  v107 = v106 - 962 * ((4464623 * v106) >> 32);
  v108 = 311 * ((v85 - v97) >> 4) + 185667;
  v109 = v108 - 962 * ((4464623 * v108) >> 32);
  v110 = (v94 ^ 0x2E3BB2FF) & (v95 ^ 0xFFFFFF11) ^ (16 * (*(STACK[0x6E0] + v93) ^ 0xEE));
  v111 = *(STACK[0x6E0] + (311 * ((v85 - v97) & 0xF) + 185667 - 962 * ((4464623 * (311 * ((v85 - v97) & 0xF) + 185667)) >> 32)));
  v112 = ((v105 ^ 0x410AFF) & (*(STACK[0x6E0] + v107) ^ 0xEF0EBA) | v105 & 0x10F100) << 8;
  v113 = v112 ^ 0xEF0E5400 ^ (*(STACK[0x6E0] + v104) << 12);
  v114 = v112 ^ 0xEF0E5400;
  LODWORD(STACK[0x5D8]) = v112 ^ 0xEF0E5400;
  v115 = v113 & 0x917FFF00 | (v112 ^ 0x8000F0) & (v111 ^ 0x6E800020);
  v116 = v95 & 0xF ^ 0xE;
  v117 = 311 * ((v116 & 0xFFFFFF0F | (16 * (v111 & 0xF))) ^ 0xE0);
  v118 = v117 + 104185 - 962 * ((4464623 * (v117 + 104185)) >> 32);
  v119 = v82 ^ 0x21A52E4A ^ ~v57;
  v120 = 311 * (LODWORD(STACK[0x510]) ^ 0xF7C35885 ^ *(STACK[0x6E0] + (v117 + 21459 - 962 * ((4464623 * (v117 + 21459)) >> 32))));
  v121 = (v120 + 21459) % 0x3C2;
  LOBYTE(v117) = *(STACK[0x6E0] + v109) ^ 0xB8 ^ (((v115 >> 4) ^ 0xC) + 86 - ((2 * ((v115 >> 4) ^ 0xC)) & 0xAC));
  v122 = *(STACK[0x6E0] + v118) ^ (*(STACK[0x6E0] + (v120 + 104185) % 0x3C2) >> 4);
  LODWORD(STACK[0x5F8]) = v119 - 1315278272;
  v123 = v110 ^ 0xDDE432FF;
  v124 = 311 * ((~v110 >> 4) & 0xF | (16 * (((v119 + 64) | v87) & v117 & 0xF)));
  v125 = v124 + 21459 - 962 * ((4464623 * (v124 + 21459)) >> 32);
  v126 = v124 + 104185 - 962 * ((4464623 * (v124 + 104185)) >> 32);
  v127 = *(STACK[0x6E0] + (311 * (v122 ^ 0xE0) + 20497 - 962 * ((4464623 * (311 * (v122 ^ 0xE0u) + 20497)) >> 32))) ^ 0xEE;
  v128 = 311 * (*(STACK[0x6E0] + v125) ^ 0x7A1F7602 ^ (16 * v127 + 2048882178 - ((32 * v127) & 0xDC0) + 234));
  v129 = 311 * (*(STACK[0x6E0] + v126) ^ (*(STACK[0x6E0] + (v128 + 104185) % 0x3C2u) >> 4) ^ 0xE0) + 21459;
  v130 = 311 * (v117 & 0xF0 | (v123 >> 8) & 0xF);
  v131 = *(STACK[0x6E0] + (v129 - 962 * ((4464623 * v129) >> 32))) ^ 0xEE;
  v132 = v130 + 104185 - 962 * ((4464623 * (v130 + 104185)) >> 32);
  v133 = 311 * (*(STACK[0x6E0] + (v130 + 21459 - 962 * ((4464623 * (v130 + 21459)) >> 32))) ^ 0xF4812C54 ^ (16 * v131 - 192861100 - ((32 * v131) & 0x1960) + 102));
  v134 = (v133 + 21459) % 0x3C2;
  v135 = 311 * (*(STACK[0x6E0] + v132) ^ (*(STACK[0x6E0] + (v133 + 104185) % 0x3C2) >> 4) ^ 0xE0) + 21459;
  v136 = 311 * (((v113 ^ 0xEE000) >> 8) & 0xF0 | ((v94 ^ 0x8000) >> 12));
  v137 = *(STACK[0x6E0] + (v135 - 962 * ((4464623 * v135) >> 32))) ^ 0xEE;
  v138 = 311 * (*(STACK[0x6E0] + (v136 + 21459 - 962 * ((4464623 * (v136 + 21459)) >> 32))) ^ 0xB2C9B943 ^ (16 * v137 - 1295402685 - ((32 * v137) & 0x1340) + 106));
  v139 = 311 * (*(STACK[0x6E0] + (v136 + 104185 - 962 * ((4464623 * (v136 + 104185)) >> 32))) ^ (*(STACK[0x6E0] + (v138 + 104185) % 0x3C2) >> 4) ^ 0xE0) + 21459;
  v140 = v139 - 962 * ((4464623 * v139) >> 32);
  v141 = ((*(STACK[0x6E0] + (v138 + 21459) % 0x3C2) ^ 0xEE) << 12) ^ ((*(STACK[0x6E0] + v134) ^ 0xEE) << 8);
  v142 = 311 * (((v113 ^ 0xEE000) >> 12) & 0xF0 | ((v94 ^ 0xF3DF8000) >> 16) & 0xF);
  v143 = *(STACK[0x6E0] + v140) ^ 0xEE;
  v144 = 311 * (*(STACK[0x6E0] + (v142 + 21459 - 962 * ((4464623 * (v142 + 21459)) >> 32))) ^ 0xBABD25AF ^ (16 * v143 - 1162009279 - ((32 * v143) & 0xA80)));
  v145 = (v144 + 21459) % 0x3C2;
  v146 = (*(STACK[0x6E0] + (v144 + 104185) % 0x3C2) ^ 0xEEu) >> ((v85 & 4 ^ 4) + (v85 & 4));
  v147 = 311 * (*(STACK[0x6E0] + (v142 + 104185 - 962 * ((4464623 * (v142 + 104185)) >> 32))) ^ 0xD2 ^ (v146 - ((2 * v146) & 0x78) + 60)) + 21459;
  v148 = 311 * ((v105 >> 8) & 0xF0 | ((v94 ^ 0xF3DF8000) >> 20) & 0xF);
  v149 = v148 + 104185 - 962 * ((4464623 * (v148 + 104185)) >> 32);
  v150 = *(STACK[0x6E0] + (v147 - 962 * ((4464623 * v147) >> 32))) ^ 0xEE;
  v151 = 311 * (*(STACK[0x6E0] + (v148 + 21459 - 962 * ((4464623 * (v148 + 21459)) >> 32))) ^ 0x16F8A4F3 ^ (16 * v150 + 385393693 - ((32 * v150) & 0x820)));
  v152 = (v151 + 21459) % 0x3C2u;
  v153 = 311 * (*(STACK[0x6E0] + v149) ^ (*(STACK[0x6E0] + (v151 + 104185) % 0x3C2u) >> 4) ^ 0xE0) + 21459;
  v154 = v153 - 962 * ((4464623 * v153) >> 32);
  v155 = *(STACK[0x6E0] + (v128 + 21459) % 0x3C2u) ^ 0xEE;
  LOBYTE(v149) = 16 * v155 - 32 * (v155 & 3);
  v156 = v141 ^ (16 * v155);
  v157 = (v156 | 0xEE00000) ^ ((*(STACK[0x6E0] + v145) ^ 0xEE) << 16);
  v158 = 311 * ((v114 >> 20) & 0xF0 | ((v94 ^ 0xF3DF8000) >> 24) & 0xF);
  LODWORD(STACK[0x5C0]) = v158;
  v159 = *(STACK[0x6E0] + v154) ^ 0xEE;
  v160 = 311 * (*(STACK[0x6E0] + (v158 + 21459 - 962 * ((4464623 * (v158 + 21459)) >> 32))) ^ 0xA43AA407 ^ (16 * v159 - 1539660793 - ((32 * v159) & 0x9C0) + 226));
  LODWORD(STACK[0x5B8]) = v160;
  LOBYTE(v121) = *(STACK[0x6E0] + v121);
  v161 = 311 * ((v116 & 0xFFFFFF0F | (16 * (v121 & 0xF))) ^ 0xE0) + 213968;
  v162 = (v156 >> 4) & 0xF0 | (v123 >> 8) & 0xF;
  v163 = 311 * ((((v149 - 70) ^ v121) & 0xF0 | (v123 >> 4)) ^ 0x50) + 213968;
  v164 = *(STACK[0x6E0] + (v163 - 962 * ((4464623 * v163) >> 32))) ^ 0xEE;
  v165 = 16 * v164 - 2068338841 - ((32 * v164) & 0xF00);
  v166 = *(STACK[0x6E0] + (v161 - 962 * ((4464623 * v161) >> 32)));
  v167 = v166 ^ 0x84B7A767 ^ (v165 + 34);
  LODWORD(STACK[0x578]) = v167;
  v168 = 311 * ((v141 >> 8) & 0xF0 | ((v94 ^ 0x8000) >> 12)) + 213968;
  v169 = v157 ^ (*(STACK[0x6E0] + v152) << 20);
  v170 = 311 * ((((v157 >> 12) & 0xF0 | ((v94 ^ 0xF3DF8000) >> 16) & 0xF) ^ 0x2B0) + ((v157 >> 11) & 0x160));
  v171 = ((*(STACK[0x6E0] + (v170 - 962 * ((4464623 * v170) >> 32))) ^ 0xEE) << 16) ^ ((*(STACK[0x6E0] + (v168 - 962 * ((4464623 * v168) >> 32))) ^ 0xEE) << 12);
  LODWORD(STACK[0x558]) = v171;
  v172 = 311 * (HIWORD(v169) & 0xF0 | ((v94 ^ 0xF3DF8000) >> 20) & 0xF) + 213968;
  v173 = v169 ^ ((*(STACK[0x6E0] + (v160 + 21459) % 0x3C2) ^ 0xEEEEEEEE) << 24);
  LODWORD(STACK[0x568]) = v173;
  v174 = v94 ^ 0xF3DF8000;
  v175 = 311 * ((v173 >> 20) & 0xF0 | ((v94 ^ 0xF3DF8000) >> 24) & 0xF) + 213968;
  v176 = (*(STACK[0x6E0] + (v175 - 962 * ((4464623 * v175) >> 32))) << 24) ^ (*(STACK[0x6E0] + (v172 - 962 * ((4464623 * v172) >> 32))) << 20);
  v177 = (STACK[0x6D0] & 0x3C2 ^ 0x3C2) + (STACK[0x6D0] & 0x3C2);
  LODWORD(v72) = v167 ^ ((*(STACK[0x6E0] + (311 * (v162 + 688) - 962) % 0x3C2u) ^ 0xEE) << 8);
  LODWORD(STACK[0x570]) = v72;
  LODWORD(v72) = v171 ^ v72;
  LODWORD(STACK[0x560]) = v72;
  v178 = v176 ^ v72;
  LODWORD(STACK[0x548]) = v178;
  LODWORD(STACK[0x550]) = (311 * (HIBYTE(v178) & 0xF) + 293895) % v177;
  LODWORD(v72) = STACK[0x6B8];
  v179 = STACK[0x6C8];
  v180 = STACK[0x678];
  v181 = STACK[0x6C8] & LODWORD(STACK[0x678]) ^ STACK[0x6B8] & LODWORD(STACK[0x678]);
  v182 = STACK[0x680];
  v183 = STACK[0x688];
  LODWORD(STACK[0x5E8]) = STACK[0x688];
  v184 = STACK[0x6A8];
  HIDWORD(v19) = STACK[0x6A8];
  LODWORD(v19) = STACK[0x6A8];
  v185 = (v19 >> 13) ^ __ROR4__(STACK[0x6A8], 2);
  v187 = __PAIR64__(v179, __ROR4__(STACK[0x6A8], 22));
  v186 = v185 ^ v187;
  v188 = v186 ^ LODWORD(STACK[0x6A0]) ^ LODWORD(STACK[0x5A0]);
  v189 = STACK[0x6A8] & v183 ^ v183 & v180;
  LODWORD(STACK[0x6A0]) = v180;
  LODWORD(STACK[0x608]) = v184;
  LODWORD(STACK[0x618]) = v72;
  LODWORD(STACK[0x610]) = v182;
  LODWORD(v187) = v179;
  v190 = (v187 >> 13) ^ __ROR4__(v179, 2) ^ __ROR4__(v179, 22);
  v191 = (v188 ^ v190) - v188;
  LODWORD(STACK[0x6B8]) = v179;
  v192 = v189 ^ v184 & v180 ^ v72 & v182 ^ (v72 ^ v182) & v179;
  v193 = (v179 ^ v182) & v183 ^ v181 ^ (v72 ^ v182) & v184;
  v194 = ((LODWORD(STACK[0x534]) ^ v190) - LODWORD(STACK[0x534])) ^ ((v190 ^ v63) - v63) ^ v191;
  v195 = (LODWORD(STACK[0x580]) ^ v192 ^ LODWORD(STACK[0x598]) ^ v193) - (LODWORD(STACK[0x580]) ^ v192 ^ LODWORD(STACK[0x598]));
  v196 = LODWORD(STACK[0x540]) - 1572792680;
  LODWORD(STACK[0x6C8]) = v96 ^ v196;
  LODWORD(v72) = v96 ^ v196 ^ 0x3F880D93 ^ LODWORD(STACK[0x538]);
  LODWORD(STACK[0x6A8]) = v72;
  v197 = v192 + v186 + LODWORD(STACK[0x5F0]) + LODWORD(STACK[0x5E0]) + LODWORD(STACK[0x590]);
  v198 = STACK[0x528];
  v199 = LODWORD(STACK[0x528]) ^ (LODWORD(STACK[0x5A8]) - 1572792680);
  LODWORD(STACK[0x680]) = v199;
  v200 = LODWORD(STACK[0x588]) ^ 0x3F880D93 ^ v199;
  LODWORD(STACK[0x678]) = v200;
  v201 = v197 + v200;
  v202 = 311 * ((v197 + v200) >> 28) + 185667 - 962 * ((4464623 * (311 * ((v197 + v200) >> 28) + 185667)) >> 32);
  v203 = 311 * (v166 & 0xF ^ 0xE) + 293895 - 962 * ((4464623 * (311 * (v166 & 0xF ^ 0xEu) + 293895)) >> 32);
  v204 = v194 - (LODWORD(STACK[0x5C8]) + LODWORD(STACK[0x5D0])) + LODWORD(STACK[0x5B0]) - v72 + (((v77 ^ v193) - v77) ^ ((v67 ^ v193) - v67) ^ v195) - 1772753837;
  v205 = (126 - (((v203 & 0x42 ^ 0x42) + (v203 & 0x42)) | ((v203 & 0x2F ^ 0x2F) + (v203 & 0x2F)))) & HIBYTE(v201);
  v206 = 311 * v205 + 185667 - 962 * ((4464623 * (311 * v205 + 185667)) >> 32);
  v207 = v201 >> ((v205 & 0x10 ^ 0x10) + (v205 & 0x10));
  v208 = ((*(STACK[0x6E0] + v206) ^ 0xEE) << 8) ^ ((*(STACK[0x6E0] + v202) ^ 0xEE) << 12);
  v209 = 16 * (*(STACK[0x6E0] + (311 * (v207 >> 4) + 185667 - 962 * ((4464623 * (311 * (v207 >> 4) + 185667)) >> 32))) ^ 0xEE);
  v210 = (311 * (v201 >> 12) + 184705) % 0x3C2;
  v211 = ((v208 ^ v209) - 2 * ((v208 ^ v209) & 0x33F0 ^ v209 & 0x10) + 46049) ^ *(STACK[0x6E0] + (311 * (v207 & 0xF) + 185667 - 962 * ((4464623 * (311 * (v207 & 0xF) + 185667)) >> 32)));
  LODWORD(STACK[0x688]) = v201;
  v212 = 311 * (v201 >> 4) + 185667 - 962 * ((4464623 * (311 * (v201 >> 4) + 185667)) >> 32);
  v213 = 311 * (v201 & 0xF) + 185667 - 962 * ((4464623 * (311 * (v201 & 0xF) + 185667)) >> 32);
  v214 = (v211 << 16) ^ 0xB30F0000 | ((*(STACK[0x6E0] + (311 * ((v201 >> 8) & 0xF) + 185667 - 962 * ((4464623 * (311 * ((v201 >> 8) & 0xF) + 185667)) >> 32))) ^ 0xEE) << 8);
  v215 = (v211 << 16) ^ 0xB30F0000;
  v216 = v214 ^ (*(STACK[0x6E0] + v210) << 12);
  v217 = ((*(STACK[0x6E0] + (311 * (HIBYTE(v204) & 0xF) + 185667 - 962 * ((4464623 * (311 * (HIBYTE(v204) & 0xF) + 185667)) >> 32))) ^ 0xEE) << 8) ^ (*(STACK[0x6E0] + (311 * (v204 >> 28) + 185667 - 962 * ((4464623 * (311 * (v204 >> 28) + 185667)) >> 32))) << 12);
  v218 = ((((v217 ^ 0x301EFF) & (*(STACK[0x6E0] + (311 * (HIWORD(v204) & 0xF) + 185667 - 962 * ((4464623 * (311 * (HIWORD(v204) & 0xF) + 185667)) >> 32))) ^ 0x3A1EBB)) + (v217 & 0x5E100)) << 8) ^ ((*(STACK[0x6E0] + (311 * ((v204 >> 20) & 0xF) + 185667 - 962 * ((4464623 * (311 * ((v204 >> 20) & 0xF) + 185667)) >> 32))) ^ 0xEE) << 12);
  v219 = 311 * (v204 >> 4) + 185667 - 962 * ((4464623 * (311 * (v204 >> 4) + 185667)) >> 32);
  v220 = *(STACK[0x6E0] + v213);
  v221 = 311 * (v204 & 0xF) + 185667 - 962 * ((4464623 * (311 * (v204 & 0xF) + 185667)) >> 32);
  v222 = (v216 ^ 0xFFF03FFF) & (v220 ^ 0x25ACA90) | v216 & 0xFDA53500;
  v223 = ((((v218 ^ 0x8AFF) & (*(STACK[0x6E0] + (311 * ((v204 >> 8) & 0xF) + 185667 - 962 * ((4464623 * (311 * ((v204 >> 8) & 0xF) + 185667)) >> 32))) ^ 0xF6DF12)) + (v218 & 0x92000)) << 8) ^ 0xFEDFFC00;
  v224 = v223 ^ ((*(STACK[0x6E0] + (311 * (v204 >> 12) + 185667 - 962 * ((4464623 * (311 * (v204 >> 12) + 185667)) >> 32))) ^ 0xEE) << 12);
  v225 = *(STACK[0x6E0] + v221);
  v226 = (v225 ^ 0x6DE27020) & ~v224 | v224 & 0x921D8F00;
  v227 = v220 & 0xF;
  v228 = 311 * ((v227 | (16 * (v225 & 0xF))) ^ 0xEE);
  LOBYTE(v118) = ((v226 >> 4) ^ 0xC) + 113 - ((2 * ((v226 >> 4) ^ 0xC)) & 0x3E);
  v229 = 311 * (LODWORD(STACK[0x504]) ^ *(STACK[0x6E0] + (v228 + 21459 - 962 * ((4464623 * (v228 + 21459)) >> 32))));
  v230 = *(STACK[0x6E0] + (v228 + 104185 - 962 * ((4464623 * (v228 + 104185)) >> 32)));
  LOBYTE(v228) = *(STACK[0x6E0] + v219) ^ 0x71 ^ (v118 + 46);
  v231 = 311 * (v230 ^ (*(STACK[0x6E0] + (v229 + 104185) % 0x3C2u) >> 4) ^ 0xE0) + 21459;
  v232 = v222 ^ (16 * (*(STACK[0x6E0] + v212) ^ 0xEE)) ^ 0x25EEA7E;
  v233 = 311 * (((v222 ^ (16 * (*(STACK[0x6E0] + v212) ^ 0xEE)) ^ 0x7E) >> 4) & 0xF | (16 * (v228 & 0xF)));
  v234 = *(STACK[0x6E0] + (v231 - 962 * ((4464623 * v231) >> 32))) ^ 0xEE;
  v235 = v233 + 104185 - 962 * ((4464623 * (v233 + 104185)) >> 32);
  v236 = 311 * (*(STACK[0x6E0] + (v233 + 21459 - 962 * ((4464623 * (v233 + 21459)) >> 32))) ^ (16 * v234 - 15012046 - ((32 * v234) & 0xFFFFFFBF) + 170) ^ 0xFF1AEF32);
  v237 = *(STACK[0x6E0] + v235) ^ (*(STACK[0x6E0] + (v236 + 104185) % 0x3C2) >> 4) ^ 0xE0;
  v238 = (((v237 + 69) & 0x137) + ((442 - v237) & 0x137)) * (v237 + 69);
  v239 = 311 * (v228 & 0xF0 | (v232 >> 8) & 0xF);
  v240 = *(STACK[0x6E0] + (v238 - 962 * ((4464623 * v238) >> 32))) ^ 0xEE;
  v241 = 311 * (*(STACK[0x6E0] + (v239 + 21459 - 962 * ((4464623 * (v239 + 21459)) >> 32))) ^ 0xFB64B3BA ^ (16 * v240 - 77286572 - ((32 * v240) & 0x6A0)));
  v242 = v198;
  v243 = 311 * (*(STACK[0x6E0] + (v239 + 104185 - 962 * ((4464623 * (v239 + 104185)) >> 32))) ^ (*(STACK[0x6E0] + (v241 + 104185) % 0x3C2) >> 4) ^ 0xE0) + 21459;
  v216 ^= 0xEE000u;
  v244 = (v224 >> 8) & 0xF0 | (v216 >> 12);
  v245 = (v244 + 69) * (((v198 + 448) | LODWORD(STACK[0x5F8])) & 0x137);
  v246 = *(STACK[0x6E0] + (v243 - 962 * ((4464623 * v243) >> 32))) ^ 0xEE;
  v247 = 311 * (*(STACK[0x6E0] + (v245 - 962 * ((4464623 * v245) >> 32))) ^ 0x4269DC79 ^ (16 * v246 + 1114233977 + (~(32 * v246) | 0xFFFFE6DF) + 31));
  v248 = 311 * (*(STACK[0x6E0] + (311 * v244 + 104185 - 962 * ((4464623 * (311 * v244 + 104185)) >> 32))) ^ (*(STACK[0x6E0] + (v247 + 104185) % 0x3C2) >> 4) ^ 0xE0) + 21459;
  v249 = 311 * ((v224 >> 12) & 0xF0 | HIWORD(v216) & 0xF);
  v250 = *(STACK[0x6E0] + (v249 + 21459 - 962 * ((4464623 * (v249 + 21459)) >> 32))) ^ 0xE74B02F3;
  v251 = *(STACK[0x6E0] + (v248 - 962 * ((4464623 * v248) >> 32))) ^ 0xEE;
  v252 = 16 * v251;
  v253 = 311 * ((16 * v251 - 414514659 - ((32 * v251) & 0x420)) ^ v250);
  v254 = 311 * (*(STACK[0x6E0] + (v249 + 104185 - 962 * ((4464623 * (v249 + 104185)) >> 32))) ^ (*(STACK[0x6E0] + (v253 + 104185) % 0x3C2u) >> 4) ^ 0xE0) + 21459;
  v255 = v254 - 962 * ((4464623 * v254) >> 32);
  if ((v252 ^ v250) == 0xE74B021D)
  {
    v256 = 15;
  }

  else
  {
    v256 = (v223 >> 20) & 0xF;
  }

  if (v255)
  {
    v256 = ~((v223 >> 20) ^ v256);
  }

  v257 = 311 * ((v211 >> 4) | (16 * (v256 & (v223 >> 20))));
  v258 = *(STACK[0x6E0] + v255) ^ 0xEE;
  v259 = 311 * (*(STACK[0x6E0] + (v257 + 21459 - 962 * ((4464623 * (v257 + 21459)) >> 32))) ^ (16 * v258 + 630614376 - ((32 * v258) & 0x12C0)) ^ 0x25966986);
  v260 = *(STACK[0x6E0] + (v257 + 104185 - 962 * ((4464623 * (v257 + 104185)) >> 32))) ^ (*(STACK[0x6E0] + (v259 + 104185) % 0x3C2u) >> 4);
  v261 = 311 * ((((2 * v260) ^ 0x80) & 0x8A) + (v260 ^ 0xA5));
  v262 = 311 * ((v223 >> 20) & 0xF0 | HIBYTE(v215) & 0xF);
  v263 = *(STACK[0x6E0] + (v261 - 962 * ((4464623 * v261) >> 32))) ^ 0xEE;
  v264 = 311 * (*(STACK[0x6E0] + (v262 + 21459 - 962 * ((4464623 * (v262 + 21459)) >> 32))) ^ 0xEB9973C3 ^ (16 * v263 - 342265043 - ((32 * v263) & 0x640)));
  v265 = (v264 + 21459) % ((((v264 + 21459) & 0x1613E2) + ((-21460 - v264) & 0x1613E2)) & (((-21460 - v264) & 0x75496BCF) + ((v264 + 21459) & 0x96BCF)));
  v266 = (LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x658])) - LODWORD(STACK[0x638]);
  v267 = LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x650]) ^ LODWORD(STACK[0x690]);
  v268 = (v267 ^ LODWORD(STACK[0x658])) - v267;
  v269 = (LODWORD(STACK[0x620]) ^ LODWORD(STACK[0x658])) - LODWORD(STACK[0x620]);
  LODWORD(STACK[0x690]) = LODWORD(STACK[0x698]) + LODWORD(STACK[0x650]);
  LODWORD(STACK[0x658]) = (v266 ^ v269 ^ v268) - LODWORD(STACK[0x640]);
  LODWORD(STACK[0x650]) = v196 + LODWORD(STACK[0x628]);
  v270 = 311 * (*(STACK[0x6E0] + (LODWORD(STACK[0x5C0]) + 104185 - 962 * ((4464623 * (LODWORD(STACK[0x5C0]) + 104185)) >> 32))) ^ (*(STACK[0x6E0] + (LODWORD(STACK[0x5B8]) + 104185) % 0x3C2u) >> 4) ^ 0xE0) + 21459;
  v271 = HIBYTE(LODWORD(STACK[0x5D8])) & 0xF0;
  LODWORD(STACK[0x524]) = v174;
  v272 = 311 * (v271 & 0xFFFFFFF0 | (v174 >> 28)) + 21459;
  v273 = *(STACK[0x6E0] + (v270 - 962 * ((4464623 * v270) >> 32))) ^ 0xEE;
  v274 = 311 * (((LODWORD(STACK[0x568]) ^ ((*(STACK[0x6E0] + (311 * (*(STACK[0x6E0] + (v272 - 962 * ((4464623 * v272) >> 32))) ^ 0xBD52FE31 ^ (16 * v273 - 1118634447 - ((32 * v273) & 0x1DA0) + 174)) + 21459) % 0x3C2) ^ 0xEu) << 28)) >> 24) & 0xF0 | (v174 >> 28)) + 213968;
  v275 = LODWORD(STACK[0x548]) ^ 0xE0E00000;
  v276 = 311 * ((v275 ^ ((*(STACK[0x6E0] + (v274 - 962 * ((4464623 * v274) >> 32))) ^ 0xE) << 28)) >> 28) + 293895;
  v277 = ((*(STACK[0x6E0] + LODWORD(STACK[0x550])) ^ 0xEE) << 8) ^ ((*(STACK[0x6E0] + (v276 - 962 * ((4464623 * v276) >> 32))) ^ 0xEE) << 12);
  v278 = 311 * (HIWORD(LODWORD(STACK[0x558])) & 0xF) + 293895;
  v279 = v278 - 962 * ((4464623 * v278) >> 32);
  v280 = 311 * (LODWORD(STACK[0x560]) >> 12) + 293895;
  v281 = (*(STACK[0x6E0] + v279) ^ 0xFBCFE5) & ~v277 | v277 & 0x43000;
  v282 = 311 * ((LODWORD(STACK[0x570]) >> 8) & 0xF) + 293895;
  v283 = 311 * (LODWORD(STACK[0x578]) >> 4) + 293895;
  v284 = (((*(STACK[0x6E0] + (311 * ((v275 >> 20) & 0xF) + 293895 - 962 * ((4464623 * (311 * ((v275 >> 20) & 0xF) + 293895)) >> 32))) ^ 0xEE) << 12) | (16 * (*(STACK[0x6E0] + (v280 - 962 * ((4464623 * v280) >> 32))) ^ 0xEE))) ^ (v281 << 8) ^ 0xFBCF0B00;
  v285 = *(STACK[0x6E0] + (v236 + 21459) % 0x3C2) ^ 0xEE;
  v286 = (16 * v285 + 1653848375 - ((32 * v285) & 0x1260)) ^ *(STACK[0x6E0] + (v229 + 21459) % 0x3C2u) ^ ((*(STACK[0x6E0] + (v241 + 21459) % 0x3C2) ^ 0xEE) << (((15 - (v242 + 51 - LODWORD(STACK[0x678]))) | (v242 + 51 - LODWORD(STACK[0x678]))) & 8));
  v287 = (v253 + 21459) % 0x3C2u;
  v288 = *(STACK[0x6E0] + (v262 + 104185 - 962 * ((4464623 * (v262 + 104185)) >> 32)));
  v289 = (v259 + 21459) % 0x3C2u;
  v290 = v288 ^ (*(STACK[0x6E0] + (v264 + 104185) % 0x3C2) >> 4);
  v291 = (16 * (*(STACK[0x6E0] + (v283 - 962 * ((4464623 * v283) >> 32))) ^ 0xEE)) ^ (((v284 - ((2 * v284) & 0x6602E0) + 11731324) ^ *(STACK[0x6E0] + (v282 - 962 * ((4464623 * v282) >> 32)))) << 8) ^ 0xB3019200;
  LODWORD(STACK[0x698]) = LODWORD(STACK[0x6C8]) ^ 0x64D18ABE ^ *(STACK[0x6E0] + v203) ^ (v291 + 1691454032 - ((2 * v291) & 0xC9A314A0));
  v292 = 311 * (((2 * (HIBYTE(v223) & 0xF0 | (v215 >> 28))) & 0x8A) + ((HIBYTE(v223) & 0xF0 | (v215 >> 28)) ^ 0x45));
  v293 = v292 - 962 * ((4464623 * v292) >> 32);
  v294 = LODWORD(STACK[0x6D0]) ^ LODWORD(STACK[0x680]);
  LOBYTE(v292) = (7 - v294) ^ v294;
  v295 = (*(STACK[0x6E0] + (311 * (v290 ^ 0xE0) + 21459 - 962 * ((4464623 * (311 * (v290 ^ 0xE0u) + 21459)) >> 32))) ^ 0xEE) << (v292 & 4);
  v296 = *(STACK[0x6E0] + v293) ^ 0xD0A1FE44 ^ (v295 - 794689980 - ((2 * v295) & 0x1D54) + 102);
  v297 = 311 * ((v227 & 0xFFFFFF0F | (16 * ((v286 ^ 0x6293B9D9) & 0xF))) ^ 0xE) + 213968;
  v298 = 311 * ((v286 ^ 0x6293B9D9) & 0xF0 | (v232 >> 4)) + 213968;
  v299 = STACK[0x6E0];
  v300 = v286 ^ 0x6293B9D9 ^ ((*(STACK[0x6E0] + (v247 + 21459) % 0x3C2) ^ 0xEE) << 12);
  v301 = v232 >> 8 >> ((v286 & 4 ^ 4) + (v286 & 4));
  v302 = 311 * (((v286 ^ 0x6293B9D9u) >> 4) & 0xF0 | (v232 >> 8) & 0xF) + 213968;
  v303 = v302 - 962 * ((4464623 * v302) >> 32);
  v304 = v300 ^ ((*(STACK[0x6E0] + v287) ^ 0xEE) << 16);
  v305 = *(STACK[0x6E0] + (v298 - 962 * ((4464623 * v298) >> 32))) ^ 0xEE;
  v306 = 16 * v305 - 430475203 - ((32 * v305) & 0x11A0);
  v307 = *(STACK[0x6E0] + (v297 - 962 * ((4464623 * v297) >> 32)));
  v308 = v307 ^ 0xE657783D ^ (v306 + 150);
  v309 = 311 * (v301 & 0xF | (16 * (v300 >> 12))) + 213968;
  v310 = v309 - 962 * ((4464623 * v309) >> 32);
  v311 = 311 * v296 + 21459;
  v312 = STACK[0x5E8];
  v313 = 311 * ((v304 >> 12) & 0xF0 | (v301 >> 4)) + 213968;
  v314 = v304 ^ (*(STACK[0x6E0] + v289) << 20) ^ 0xEE00000;
  v315 = v314 ^ ((*(STACK[0x6E0] + v265) ^ 0xEEEEEEEE) << 24);
  v316 = 311 * (HIWORD(v314) & 0xF0 | (v301 >> 8) & 0xF) + 213968;
  v317 = ((v315 ^ (*(STACK[0x6E0] + v311 % 0x3C2) << 28)) >> 24) & 0xF0 | HIWORD(v301) & 0xF;
  v318 = 311 * ((v315 >> 20) & 0xF0 | (v301 >> 12)) + 213968;
  v319 = v308 ^ ((*(STACK[0x6E0] + v303) ^ 0xEE) << 8);
  v320 = (*(STACK[0x6E0] + v310) << 12) ^ 0xEE000 ^ v319;
  v321 = v320 ^ ((*(STACK[0x6E0] + (v313 - 962 * ((4464623 * v313) >> 32))) ^ 0xEE) << 16);
  v322 = v321 ^ (*(STACK[0x6E0] + (v316 - 962 * ((4464623 * v316) >> 32))) << 20) ^ 0xEE00000;
  v323 = (*(STACK[0x6E0] + (311 * (v317 ^ 0xE0) + 213968 - 962 * ((4464623 * (311 * (v317 ^ 0xE0) + 213968)) >> 32))) << 28) ^ (*(STACK[0x6E0] + (v318 - 962 * ((4464623 * v318) >> 32))) << 24) ^ v322;
  v324 = 311 * (v323 >> 28) + 293895 - 962 * ((4464623 * (311 * (v323 >> 28) + 293895)) >> 32);
  v325 = 311 * (HIBYTE(v323) & 0xF ^ 0xE) + 293895;
  v326 = ((((v320 >> 12) + 945) & 0x137) + ((14 - (v320 >> 12)) & 0x37)) * ((v320 >> 12) + 945);
  v327 = 16 * (*(STACK[0x6E0] + (311 * ((v322 >> 20) & 0xF) + 293895 - 962 * ((4464623 * (311 * ((v322 >> 20) & 0xF) + 293895)) >> 32))) ^ 0xEE);
  v328 = ((*(STACK[0x6E0] + v324) ^ 0xEE) << 12) ^ ((*(STACK[0x6E0] + (v325 - 962 * ((4464623 * v325) >> 32))) ^ 0xEE) << 8) ^ v327;
  v329 = (v328 - 2 * (v328 & 0xBD0 ^ v327 & 0x10) + 35782) ^ *(STACK[0x6E0] + (311 * (HIWORD(v321) & 0xF) + 293895 - 962 * ((4464623 * (311 * (HIWORD(v321) & 0xF) + 293895)) >> 32)));
  v330 = LODWORD(STACK[0x6C8]) ^ LODWORD(STACK[0x650]);
  v331 = v307 & 0xF8 ^ 0xFFFFFFE8 ^ (v307 ^ 0xFFFFFFEE) & (v292 | 0xFFFFFFF1);
  v332 = (*(STACK[0x6E0] + (v326 - 962 * ((4464623 * v326) >> 32))) << 12) | (16 * (*(STACK[0x6E0] + (311 * (v308 >> 4) + 293895 - 962 * ((4464623 * (311 * (v308 >> 4) + 293895)) >> 32))) ^ 0xEE));
  LODWORD(STACK[0x6C8]) = LODWORD(STACK[0x688]) ^ (v294 - 895224885);
  v333 = v332 ^ 0x8B26E000 ^ (((*(v299 + (311 * ((v319 >> 8) & 0xF) + 293895 - 962 * ((4464623 * (311 * ((v319 >> 8) & 0xF) + 293895)) >> 32))) ^ 0xEE) << 8) | (v329 << 16));
  v334 = STACK[0x608];
  v335 = *(STACK[0x6D8] + 8 * (((8 * (LODWORD(STACK[0x6C0]) != 63)) | (32 * (LODWORD(STACK[0x6C0]) != 63))) ^ LODWORD(STACK[0x514])));
  LODWORD(STACK[0x6A8]) = (v330 - 895224885) ^ 0x15590A0D ^ *(v299 + (311 * v331 + 293895 - 962 * ((4464623 * (311 * v331 + 293895)) >> 32))) ^ (v333 + 358156813 + (~(2 * v333) | 0xD54DEA3F) + 215);
  LODWORD(STACK[0x688]) = v334;
  LODWORD(STACK[0x6D0]) = STACK[0x610];
  LODWORD(STACK[0x680]) = STACK[0x618];
  LODWORD(STACK[0x678]) = v312;
  return v335();
}

uint64_t sub_1000FC51C()
{
  v3 = (2 * v1) ^ 0x1C56;
  LODWORD(STACK[0x5680]) = v3;
  return (*(STACK[0x57D8] + 8 * (((((v3 - 2052) | 0x804) - 22598) * (v0 == v2)) ^ v1)))(STACK[0x5740], STACK[0x5730], 0xFF035EADE913ABC2, 0xEC8A812A20635A97, 83, 0xB2F4A8C01CB902DBLL, 0x3BBE1ABF2CA53ABELL);
}

uint64_t sub_1000FC6E4(uint64_t a1, int a2)
{
  LODWORD(STACK[0x5050]) = LODWORD(STACK[0x5630]) + LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x50A0]) = LODWORD(STACK[0x55D0]) + LODWORD(STACK[0x55A0]);
  LODWORD(STACK[0x5028]) = LODWORD(STACK[0x5570]) + LODWORD(STACK[0x55F0]);
  LODWORD(STACK[0x4F30]) = LODWORD(STACK[0x54E0]) | (v5 << 8);
  LODWORD(STACK[0x50F0]) = LODWORD(STACK[0x54D0]) + LODWORD(STACK[0x54C0]);
  LODWORD(STACK[0x5190]) = v2 + LODWORD(STACK[0x54B0]);
  LODWORD(STACK[0x50D0]) = v3 + LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x53B0]) = v4 << ((a2 - 27) ^ 0x79);
  return (*(STACK[0x57D8] + 8 * a2))();
}

uint64_t sub_1000FC8F0(char a1, uint64_t a2, uint64_t a3)
{
  v10 = STACK[0x5760];
  v11 = (STACK[0x5760] + 11535) | 0x5B8;
  v12 = (v9 >> (STACK[0x5760] ^ a1 ^ 0x76)) + HIDWORD(v7);
  v13 = *(v4 + 528);
  v14 = STACK[0x5660];
  v15 = ((v13 + STACK[0x5660]) & 0xFFFFFFF8) + v6;
  v16 = STACK[0x51E8];
  v17 = *v5;
  v18 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v19 = *(*v5 + (v15 & v18));
  v20 = __ROR8__((v13 + STACK[0x5660]) & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5780] = v11;
  v21 = (((v11 - 0x52AC02509BC81750) & (2 * (v20 + v19))) - (v20 + v19) - 0x56A9FED7B21C1C38) ^ 0x190175139C4B1674;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x8A47714CF38C4783;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v3;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = (((2 * (v26 + v27)) | 0x5732389BCDB2F216) - (v26 + v27) + 0x5466E3B2192686F5) ^ 0xB79A0B75027F380FLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a2;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a3;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (v33 + v34 - ((2 * (v33 + v34)) & 0x66AB999C9AEB826ALL) - 0x4CAA3331B28A3ECBLL) ^ 0xB875BEA0BC83FB9ALL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = v13 + 4 * STACK[0x56C0];
  v39 = *(v17 + (((v38 & 0xFFFFFFF8 ^ 0xEF3D5C8A) - 414642342 + ((2 * (v38 & 0xFFFFFFF8)) | 0x218546EB) + 2460) & v18));
  v40 = v12 + ((((v37 + v36 - ((2 * (v37 + v36)) & 0x455E21A4FF39C4B2) + 0x22AF10D27F9CE259) ^ 0xB3119D3AE8005C19) >> (8 * ((v13 + v14) & 7))) ^ *(v13 + v14));
  v41 = (v39 + __ROR8__(v38 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v8;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0x8A47714CF38C4783;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = __ROR8__((v45 + v44 - ((2 * (v45 + v44)) & 0xD3FBAC632E016BF2) - 0x160229CE68FF4A07) ^ 0x4B96324B8D699A89, 8);
  v47 = (v45 + v44 - ((2 * (v45 + v44)) & 0xD3FBAC632E016BF2) - 0x160229CE68FF4A07) ^ 0x4B96324B8D699A89 ^ __ROR8__(v44, 61);
  v48 = (v46 + v47) ^ 0x1C031738E4A64104;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (((2 * (v50 + v49)) & 0x110A48B05DD4B300) - (v50 + v49) - 0x88524582EEA5981) ^ 0x8A70110D38F99E62;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ a3;
  v54 = __ROR8__(v53, 8);
  v55 = v53 ^ __ROR8__(v52, 61);
  v56 = (((2 * (v54 + v55)) & 0x3D12BEE584F72B30) - (v54 + v55) + 0x6176A08D3D846A67) ^ 0x6A56D2E3CC7250C8;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  *v38 = v40 ^ (((0xC334557A5BFDAA2CLL - ((v58 + v57) | 0xC334557A5BFDAA2CLL) + ((v58 + v57) | 0x3CCBAA85A40255D3)) ^ 0xAD75276D339EEB93) >> (8 * (v38 & 7u)));
  v59 = *(v4 + 528) + v14;
  v60 = *(*v5 + ((*v16 & ((v59 & 0xFFFFFFF8 ^ 0xFD3641BF) - 86672724 + ((2 * (v59 & 0xFFFFFFF8)) & 0xFA6C8370))) & 0xFFFFFFFFFFFFFFF8));
  v61 = __ROR8__(v59 & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = (((v61 + v60) ^ 0x3A4249B506BB05B6) - ((2 * ((v61 + v60) ^ 0x3A4249B506BB05B6)) & 0x9BADF2AF598D77D0) + 0x4DD6F957ACC6BBE8) ^ 0xC7C3C4D97BD54BE2;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (v64 + v63 - ((2 * (v64 + v63)) & 0xE1E510A569502BF8) - 0xF0D77AD4B57EA04) ^ 0x7AB5F91E4724527FLL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) & 0x6CD33C695FCBBEC6) - (v67 + v66) - 0x36699E34AFE5DF64) ^ 0x6BFD85B14A730FECLL;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x1C031738E4A64104;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((2 * (v72 + v71)) | 0x32CC16BF6E64AC78) - (v72 + v71) - 0x19660B5FB732563CLL) ^ 0x646CC1F55EDE6E21 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__((((2 * (v72 + v71)) | 0x32CC16BF6E64AC78) - (v72 + v71) - 0x19660B5FB732563CLL) ^ 0x646CC1F55EDE6E21, 8) + v73) ^ a3;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xB20726EF1F63AAFLL;
  *v59 = (((__ROR8__(v76, 8) + (v76 ^ __ROR8__(v75, 61))) ^ 0x91BE8DE8979CBE40) >> (8 * (v59 & 7u))) ^ HIDWORD(v40);
  return (*(STACK[0x57D8] + 8 * (v10 ^ (8 * (STACK[0x5740] + 1 == STACK[0x5680])))))();
}

uint64_t sub_1000FCF24@<X0>(unint64_t a1@<X8>)
{
  STACK[0x9E88] = a1;
  LODWORD(STACK[0x91D0]) = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1000FCF9C()
{
  v2 = STACK[0x51B8];
  LODWORD(STACK[0x61CC]) = v0;
  v3 = STACK[0x1AC8];
  STACK[0x1D4D8] = STACK[0xCAA0] + STACK[0x1AC8];
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4C8]) = 970367026 - v3 + v2 - 22614 + 3803;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4E0]) = v2 + 970344412 + v3;
  LODWORD(STACK[0x1D4CC]) = v3 + 1451493860 + v2;
  LODWORD(STACK[0x1D4D4]) = (v2 + 970344455) ^ v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2462)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1000FD074()
{
  v0 = STACK[0x51B8] + 5343;
  v1 = STACK[0x57D8];
  v2 = STACK[0x37B8];
  STACK[0xCF80] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x37B8]));
  return (*(v1 + 8 * (v0 ^ v2 ^ 0x75DA)))();
}

uint64_t sub_1000FD0E0()
{
  v5 = 0xF726234C92AC6E47 * *(v0 + 456) + 0x3AF982AE1012A79ALL;
  v6 = STACK[0x11FC];
  v7 = STACK[0x11F0];
  *(v2 + 600) = LODWORD(STACK[0x11E4]) - STACK[0x11F0];
  *(v2 + 612) = v6 ^ v7;
  *(v2 + 624) = (v6 ^ 2) + v7;
  *(v2 + 592) = v5 ^ v7;
  *(v2 + 616) = STACK[0x11E8];
  *(v2 + 608) = v7;
  *(v2 + 604) = v7 + v3 + STACK[0x51B8];
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * v1))(v4 - 240);
  return (*(v8 + 8 * *(v2 + 628)))(v9);
}

uint64_t sub_1000FD2CC()
{
  v1 = STACK[0x57D8];
  STACK[0x9A00] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 6405) ^ v0)))();
}

uint64_t sub_1000FD3E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, char a6, char a7, char a8)
{
  LODWORD(STACK[0x47F8]) = LODWORD(STACK[0x53D0]) | LODWORD(STACK[0x53D8]);
  LODWORD(STACK[0x4968]) = LODWORD(STACK[0x53B0]) | LODWORD(STACK[0x53C8]);
  LODWORD(STACK[0x4818]) = LODWORD(STACK[0x53A8]) | LODWORD(STACK[0x53C0]);
  LODWORD(STACK[0x4808]) = LODWORD(STACK[0x53A0]) | LODWORD(STACK[0x53B8]);
  v22 = v12 & 0xDC ^ 0x14;
  v23 = a5 & 0x3E ^ 0xC5;
  v24 = (((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0xDC) << 16) | (((a5 ^ (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * ((a5 ^ 0x34) & (2 * (v23 ^ a5 & 0xA)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x3E) << 8);
  v25 = v19 & 0x24 | 0x58;
  v26 = (v19 ^ (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)));
  v27 = (v26 ^ 0x25A1CC) & ~v24 | v24 & 0xDA5E00;
  v28 = v20 & 0xDE ^ 0x15;
  LODWORD(STACK[0x53B8]) = v20 ^ (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * ((v20 ^ 0x34) & (2 * (v28 ^ v20 & 0xAAAAAAAA)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  v27 <<= 8;
  LODWORD(STACK[0x53D0]) = v27 ^ 0x825615FF;
  LODWORD(STACK[0x5500]) = v27 & 0x5DA88A00;
  v29 = v10 & 0x44444444 ^ 0xFFFFFFC8;
  LODWORD(STACK[0x53C8]) = v10 ^ (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * ((v10 ^ 0x34) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29));
  LOBYTE(v29) = v8 & 0xF8 ^ 0xA2;
  LOBYTE(v28) = v18 & 0x2E ^ 0x5D;
  v30 = (((v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xF8) << 16) | (((v18 ^ (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * ((v18 ^ 0x34) & (2 * (v28 ^ v18 & 0x1A)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x2E) << 8);
  LOBYTE(v29) = v11 & 0x1C ^ 0x74;
  v31 = ((v11 ^ (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x2EDDD3) & ~v30 | v30 & 0xD12200;
  v32 = v9 & 0x56 ^ 0x51;
  LODWORD(STACK[0x53C0]) = v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * (v32 ^ v9 & 0x22222222)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32));
  v33 = v16 & 4 | 0x68;
  v31 <<= 8;
  LODWORD(STACK[0x53B0]) = v31 ^ 0x502030FF;
  LODWORD(STACK[0x53D8]) = v31 & 0x8F9E0C00;
  v34 = STACK[0x54F0];
  LOBYTE(v31) = (v34 & 0xB4 | 0x4A) ^ v34 & 0xFC;
  v35 = (((v16 ^ (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * ((v16 ^ 0x34) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33))) ^ 4) << 16) | (((v34 ^ (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * ((v34 ^ 0x34) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x48) << 8);
  v36 = STACK[0x5510];
  LOBYTE(v31) = STACK[0x5510] & 2 ^ 0xEF;
  v37 = ((v36 ^ (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & 0x36 ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x790CCA) & ~v35;
  v38 = v35 & 0x86F300;
  v39 = STACK[0x5530];
  v40 = STACK[0x5530] & 0x50 ^ 0xFFFFFFD6;
  v41 = STACK[0x5520];
  LOBYTE(v35) = STACK[0x5520] & 0xC2 ^ 0x8F;
  v42 = v39 ^ (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40));
  LOBYTE(v39) = a7 & 0x26 | 0x59;
  HIDWORD(v43) = ((((v41 ^ (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & 0x36 ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0xC2) << 8) | (a7 ^ (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * (((2 * (a7 & 0x26)) | 0x12) & (a7 ^ 0x34) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)))) ^ 0x26;
  LODWORD(v43) = (((v41 ^ (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & 0x36 ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0xC2) << 8) | ((v42 ^ 0x50) << 16);
  LODWORD(STACK[0x54F0]) = v43 >> 9;
  LODWORD(STACK[0x53A8]) = v37 | v38;
  v44 = STACK[0x5610];
  v45 = STACK[0x5610] & 0xE2 ^ 0x3F;
  LODWORD(STACK[0x53A0]) = v44 ^ (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & 0x16 ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45));
  LOBYTE(v45) = v21 & 0x14 ^ 0x70;
  LOBYTE(v38) = v17 & 0x1C ^ 0x74;
  v46 = (((v21 ^ (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * v45) ^ v45)) ^ v45)) ^ v45)) ^ v45))) ^ 0x14) << 16) | (((v17 ^ (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0x1C) << 8);
  LOBYTE(v38) = v15 & 0xDE ^ 0x95;
  LODWORD(STACK[0x5390]) = v13 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v13 ^ 0x34)) & 0x28 ^ 0x1C) & (v13 ^ 0x34))) ^ 0x1C) & (v13 ^ 0x34))) ^ 0x1C) & (v13 ^ 0x34))) ^ 0x5C) & (v13 ^ 0x34)));
  v47 = (((v15 ^ (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * ((v15 ^ 0x34) & (2 * (v38 ^ v15 & 0xAA)) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xDE927) & (v46 ^ 0xFFDFF) | v46 & 0xF21600) << 8;
  LODWORD(STACK[0x5520]) = v47 ^ 0xF00200FF;
  LODWORD(STACK[0x5610]) = v47 & 0x6BC4E00;
  LOBYTE(v38) = a8 & 0x54 ^ 0xD0;
  LOBYTE(v42) = a6 & 0x3E ^ 0xC5;
  v48 = (((a8 ^ (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * ((a8 ^ 0x34) & (2 * v38) | v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0x54) << 16) | (((a6 ^ (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * ((a6 ^ 0x34) & (2 * (v42 ^ a6 & 0xA)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0x3E) << 8);
  v49 = (v26 ^ 0xB2702C) & ~v48 | v48 & 0x4D8F00;
  v50 = STACK[0x5540];
  v51 = STACK[0x5540] & 0xA6 ^ 0xFFFFFF99;
  LODWORD(STACK[0x5378]) = v50 ^ (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * ((v50 ^ 0x34) & (2 * (v51 ^ v50 & 0x12)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51));
  v49 <<= 8;
  LODWORD(STACK[0x5398]) = v49 ^ 0x8E51FF;
  LODWORD(STACK[0x5540]) = v49 & 0x6F31AE00;
  v52 = STACK[0x5600];
  LOBYTE(v49) = STACK[0x5600] & 0xF8 ^ 0xA2;
  v53 = ((a7 ^ (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * ((a7 ^ 0x34) & (2 * (((2 * (a7 & 0x26)) | 0x12) & (a7 ^ 0x34) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) << 8) | (((v52 ^ (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * ((v52 ^ 0x34) & (2 * v49) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49))) ^ 0xF8) << 16);
  LOBYTE(v49) = v14 & 0xCA ^ 0x8B;
  v54 = ((v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * (v49 ^ v14 & 0x3E)) ^ v49)) ^ v49)) ^ v49)) ^ v49)) ^ v49))) ^ 0xF08EB1) & (v53 ^ 0xF2D8FF) | v53 & 0xF7100;
  v55 = a3 & 0x7E ^ 0x65;
  LODWORD(STACK[0x5368]) = a3 ^ (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * ((a3 ^ 0x34) & (2 * (v55 ^ a3 & 0xA)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55));
  v54 <<= 8;
  LODWORD(STACK[0x5388]) = v54 ^ 0x61084FF;
  LODWORD(STACK[0x5510]) = v54 & 0x59677A00;
  v56 = *STACK[0x52B8];
  v57 = v56 & 0x86 ^ 0xFFFFFFA9;
  LODWORD(STACK[0x5380]) = v56 ^ (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * (v57 ^ v56 & 0x32)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57));
  LOBYTE(v56) = *(STACK[0x52E0] + 1328);
  LOBYTE(v57) = v56 & 0x14 ^ 0x70;
  LOBYTE(v51) = *(STACK[0x5790] + 2921);
  LOBYTE(v38) = v51 & 0xA0 ^ 0x9E;
  v58 = (((v56 ^ (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x14) << 16) | (((v51 ^ (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * v38) ^ v38)) ^ v38)) ^ v38)) ^ v38)) ^ v38))) ^ 0xA0) << 8);
  v59 = STACK[0x5308];
  LOBYTE(v57) = *(STACK[0x5308] + 1381);
  LOBYTE(v51) = v57 & 0x6C ^ 0xFC;
  LODWORD(STACK[0x5348]) = ((v57 ^ (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0xF35325) & ~v58 | v58 & 0xCAC00;
  v60 = STACK[0x5780];
  LOBYTE(v58) = *(STACK[0x5780] + 577);
  LOBYTE(v57) = v58 & 0x52 ^ 0x57;
  LOBYTE(v58) = v58 ^ (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * (v57 ^ v58 & 0x26)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57));
  v61 = STACK[0x57C0];
  LOBYTE(v57) = *(STACK[0x57C0] + 2663);
  LOBYTE(v51) = v57 & 0x50 ^ 0xD6;
  v62 = *(STACK[0x5570] + 1472);
  v63 = v62 & 0xFFFFFFF6 ^ 0x21;
  LODWORD(STACK[0x5358]) = v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * (v62 & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63));
  LODWORD(STACK[0x5360]) = v58;
  v64 = (v58 << 16) | (((v57 ^ (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x50) << 8);
  LOBYTE(v57) = *(STACK[0x55E0] + 1085);
  LOBYTE(v51) = (v57 & 0xB4 | 0x49) ^ v57 & 0xF2;
  LODWORD(STACK[0x5340]) = ((v57 ^ (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x57243C) & (v64 ^ 0x53FFF) | v64 & 0xA8DB00;
  v65 = STACK[0x56C0];
  LOBYTE(v57) = *(STACK[0x56C0] + 1920);
  LOBYTE(v64) = v57 & 0xD2 ^ 0x97;
  LOBYTE(v42) = *(v59 + 2830);
  v66 = v42 & 0xAA ^ 0x1B;
  v67 = (((v57 ^ (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * (v64 ^ v57 & 0x26)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64))) ^ 0xD2) << 16) | (((v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & 0x1E ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) ^ 0xAA) << 8);
  v68 = STACK[0x5740];
  LOBYTE(v51) = *(STACK[0x5740] + 2625);
  LOBYTE(v63) = v51 & 0xD8 ^ 0x92;
  LODWORD(STACK[0x5320]) = ((v51 ^ (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63))) ^ 0x1EC14F) & ~v67 | v67 & 0xE13E00;
  LOBYTE(v63) = *(v65 + 1222);
  LOBYTE(v51) = v63 & 0x76 ^ 0x61;
  v69 = (v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * (v51 ^ v63 & 2)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51;
  v70 = STACK[0x5750];
  v71 = *(STACK[0x5750] + 1730);
  LOBYTE(v51) = v71 & 0x68 ^ 0x7A;
  v72 = *(STACK[0x5700] + 2003);
  v73 = v72 & 0x6A ^ 0xFFFFFFFB;
  LODWORD(STACK[0x5338]) = v72 ^ (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & (2 * ((v72 ^ 0x34) & 0x1E ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73)) ^ v73));
  v74 = (((v63 ^ (2 * v69)) ^ 0x76) << 16) | (((v71 ^ (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * ((v71 ^ 0x34) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x68) << 8);
  v75 = *(STACK[0x5580] + 1169);
  LOBYTE(v42) = v75 & 0x30 | 0xC6;
  v76 = (((v75 ^ (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0x46919F) & (v74 ^ 0x67D5FF) | v74 & 0xB96E00) << 8;
  LODWORD(STACK[0x5328]) = v76 ^ 0x296250FF;
  LODWORD(STACK[0x5600]) = v76 & 0xD49D0200;
  v77 = *(v68 + 3027);
  v78 = v77 & 0x22222222 ^ 0xFFFFFFDF;
  v79 = v77 ^ (2 * ((v77 ^ 0x34) & (2 * ((v77 ^ 0x34) & (2 * ((v77 ^ 0x34) & (2 * ((v77 ^ 0x34) & (2 * ((v77 ^ 0x34) & (2 * ((v77 ^ 0x34) & 0x16 ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78));
  v80 = STACK[0x5760];
  LOBYTE(v78) = *(STACK[0x5760] + 729);
  LOBYTE(v42) = v78 & 0x3E ^ 0xC5;
  LOBYTE(v78) = v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * (v42 ^ v78 & 0xA)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42));
  v81 = STACK[0x5710];
  LOBYTE(v42) = *(STACK[0x5710] + 1275);
  v82 = v42 & 0xCE ^ 0xD;
  v83 = (v79 << 24) & 0xFC000000 | (((v78 << 22) | (((v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * (v82 ^ v42 & 0x3A)) ^ v82)) ^ v82)) ^ v82)) ^ v82)) ^ v82))) ^ 0xCE) << 14) | (v79 << 30)) >> 6);
  LODWORD(STACK[0x5318]) = v83 ^ 0x1D8119FF;
  LODWORD(STACK[0x5350]) = v83 & 0xE07EE600;
  LOBYTE(v83) = v70[1457];
  LOBYTE(v78) = v83 & 0xCC ^ 0x8C;
  LOBYTE(v42) = *(v61 + 1525);
  v84 = v42 & 0x22 ^ 0xDF;
  v85 = (((v83 ^ (2 * ((v83 ^ 0x34) & (2 * ((v83 ^ 0x34) & (2 * ((v83 ^ 0x34) & (2 * ((v83 ^ 0x34) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0xCC) << 16) | (((v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & 0x16 ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v84))) ^ 0x22) << 8);
  LOBYTE(v78) = *(STACK[0x54B0] + 888);
  LOBYTE(v67) = v78 & 0x90 ^ 0xB6;
  v86 = ((v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67))) ^ 0x5D3567) & ~v85 | v85 & 0xA2CA00;
  LODWORD(STACK[0x52A8]) = (v86 << 8) ^ 0xA20A08FF;
  LODWORD(STACK[0x5530]) = (v86 << 8) & 0x8C17400;
  LOBYTE(v64) = *(v80 + 600);
  LOBYTE(v62) = *(STACK[0x52F8] + 858);
  LOBYTE(v85) = v62 & 0xC ^ 0xEC;
  v87 = (((v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85))) ^ 0xC) << 8) | (((v64 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v64 ^ 0x34)) & 0x28 ^ 0x1C) & (v64 ^ 0x34))) ^ 0x1C) & (v64 ^ 0x34))) ^ 0x1C) & (v64 ^ 0x34))) ^ 0x5C) & (v64 ^ 0x34)))) ^ 0xDC) << 16);
  LOBYTE(v62) = *STACK[0x5218];
  LOBYTE(v85) = v62 & 0x20 | 0x5E;
  v88 = STACK[0x5770];
  v89 = (((v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85))) ^ 0x3861DD) & ~v87 | v87 & 0xC79E00) << 8;
  LODWORD(STACK[0x5290]) = v89 ^ 0x21600FF;
  LODWORD(STACK[0x5330]) = v89 & 0xF5C98300;
  LOBYTE(v89) = *(v61 + 1510);
  LOBYTE(v62) = v89 & 0x3E ^ 0xC5;
  LOBYTE(v85) = *(STACK[0x52D8] + 721);
  LOBYTE(v78) = v85 & 0xF6 ^ 0xA1;
  v90 = (((v89 ^ (2 * ((v89 ^ 0x34) & (2 * ((v89 ^ 0x34) & (2 * ((v89 ^ 0x34) & (2 * ((v89 ^ 0x34) & (2 * ((v89 ^ 0x34) & (2 * (v62 ^ v89 & 0xA)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62))) ^ 0x3E) << 16) | (((v85 ^ (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * (v85 & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0xF6) << 8);
  LOBYTE(v62) = *(STACK[0x5730] + 1260);
  LOBYTE(v85) = v62 & 0xE4 ^ 0x38;
  v91 = (((v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * v85) ^ v85)) ^ v85)) ^ v85)) ^ v85))) ^ 0xA140D9) & ~v90 | v90 & 0x5EBF00) << 8;
  LODWORD(STACK[0x5138]) = v91 ^ 0x813C2FF;
  LODWORD(STACK[0x4948]) = v91 & 0xD7AC0C00;
  LOBYTE(v91) = *(STACK[0x57B0] + 1419);
  LOBYTE(v62) = v91 & 0xC2 ^ 0x8F;
  LOBYTE(v85) = *(STACK[0x55D0] + 2041);
  LOBYTE(v78) = v85 & 0x2E ^ 0x5D;
  v92 = (((v91 ^ (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & 0x36 ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62))) ^ 0xC2) << 16) | (((v85 ^ (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * (v78 ^ v85 & 0x1A)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x2E) << 8);
  LOBYTE(v62) = *(v88 + 1654);
  LOBYTE(v85) = v62 & 0x52 ^ 0xD7;
  v93 = ((v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * (v85 ^ v62 & 0x26)) ^ v85)) ^ v85)) ^ v85)) ^ v85)) ^ v85))) ^ 0x4A1B44) & ~v92 | v92 & 0xB5E400;
  LOBYTE(v62) = *(v81 + 1973);
  LOBYTE(v64) = v62 & 0x5E ^ 0xD5;
  LOBYTE(v64) = v62 ^ (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * ((v62 ^ 0x34) & (2 * (v64 ^ v62 & 0xAA)) ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64));
  v94 = v93 << 8;
  v95 = v64;
  v96 = ((v94 ^ 0x30C0E1FF) & (v64 ^ 0x7AC9E520) | v94 & 0x85361A00) ^ 0x7ADBF77E;
  LOBYTE(v64) = *(STACK[0x5720] + 46);
  LOBYTE(v94) = v64 & 0x3E ^ 0xC5;
  LOBYTE(v78) = *(v68 + 3232);
  v97 = v78 & 0x94 ^ 0xB0;
  v98 = (((v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * v97) ^ v97)) ^ v97)) ^ v97)) ^ v97))) ^ 0x94) << 8) | (((v64 ^ (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * (v94 ^ v64 & 0xA)) ^ v94)) ^ v94)) ^ v94)) ^ v94)) ^ v94))) ^ 0x3E) << 16);
  LOBYTE(v64) = *(STACK[0x56D0] + 1753);
  LOBYTE(v51) = v64 & 8 ^ 0x6A;
  v99 = ((v64 ^ (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * v51) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0xB5CFEA) & ~v98 | v98 & 0x4A3000;
  LOBYTE(v64) = *(STACK[0x55A0] + 2405);
  LOBYTE(v98) = v64 & 0x40 ^ 0xCE;
  LOBYTE(v64) = v64 ^ (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & (2 * ((v64 ^ 0x34) & 0x1C ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98));
  v99 <<= 8;
  LODWORD(STACK[0x4930]) = v99 ^ 0x480005FF;
  LODWORD(STACK[0x5140]) = v99 & 0x26B3F800;
  LOBYTE(v99) = *STACK[0x5560];
  LOBYTE(v98) = v99 & 0xF4 ^ 0xA0;
  LOBYTE(v78) = *STACK[0x5298];
  v100 = v78 & 0xB6 | 1;
  v101 = (((v99 ^ (2 * ((v99 ^ 0x34) & (2 * ((v99 ^ 0x34) & (2 * ((v99 ^ 0x34) & (2 * ((v99 ^ 0x34) & (2 * v98) ^ v98)) ^ v98)) ^ v98)) ^ v98))) ^ 0xF4) << 16) | (((v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * (v78 & (2 * v100) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100)) ^ v100))) ^ 0xB6) << 8);
  LOBYTE(v98) = *(STACK[0x55C0] + 964);
  LOBYTE(v78) = v98 & 0x8E ^ 0x2D;
  v102 = ((v98 ^ (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * (v78 ^ v98 & 0x3A)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0xE2F458) & ~v101 | v101 & 0x1D0B00;
  LOBYTE(v101) = v70[2936];
  LOBYTE(v98) = v101 & 0x78 ^ 0xE2;
  LOBYTE(v101) = v101 ^ (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * v98) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98));
  LOBYTE(v98) = *(v81 + 1184);
  LOBYTE(v78) = v98 & 0x44 ^ 0xC8;
  v103 = (v95 << 16) | (((v98 ^ (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x44) << 8);
  v104 = (v103 ^ 0xA1C0FF) & (v101 ^ 0xB3C012) | v103 & 0x4C3F00;
  LOBYTE(v101) = *(v60 + 1108);
  LOBYTE(v98) = v101 & 0x3E ^ 0x45;
  LOBYTE(v72) = v101 ^ (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * (v98 ^ v101 & 0xA)) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98));
  LODWORD(STACK[0x4928]) = (v104 << 8) ^ 0x3C10FF;
  LODWORD(STACK[0x4918]) = (v104 << 8) & 0x78C3ED00;
  LOBYTE(v101) = v70[706];
  LOBYTE(v98) = v101 & 0x2E ^ 0x5D;
  LOBYTE(v78) = *(STACK[0x55F0] + 1078);
  v105 = v78 & 0x66 ^ 0xF9;
  v106 = (((v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * (v105 ^ v78 & 0x12)) ^ v105)) ^ v105)) ^ v105)) ^ v105)) ^ v105))) ^ 0x66) << 8) | (((v101 ^ (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * (v98 ^ v101 & 0x1A)) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98))) ^ 0x2E) << 16);
  LOBYTE(v101) = *(STACK[0x55B0] + 433);
  LOBYTE(v78) = v101 & 0x92 ^ 0x37;
  LODWORD(v61) = (((v101 ^ (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * (v78 ^ v101 & 0x26)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0xA425DF) & ~v106 | v106 & 0x5BDA00) << 8;
  LODWORD(STACK[0x4920]) = v61 ^ 0x511000FF;
  LODWORD(STACK[0x5370]) = v61 & 0x2EEEB200;
  LODWORD(STACK[0x48F0]) = LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x53B8]) = (LODWORD(STACK[0x53A8]) << 8) & 0xCEDA9700;
  HIDWORD(v43) = STACK[0x54F0];
  LODWORD(v43) = STACK[0x54F0];
  v107 = LODWORD(STACK[0x53A0]);
  LODWORD(STACK[0x4940]) = ((v43 >> 23) << 8) & 0x8C945800;
  v108 = LODWORD(STACK[0x5390]);
  LODWORD(STACK[0x5390]) = (LODWORD(STACK[0x5348]) << 8) & 0x59D7AB00;
  LODWORD(STACK[0x53A8]) = (LODWORD(STACK[0x5340]) << 8) & 0x1511F300;
  v109 = LODWORD(STACK[0x5320]) << 8;
  LODWORD(STACK[0x5378]) = v109 & 0xF42C4400;
  HIDWORD(v43) = v96;
  LODWORD(v43) = v96;
  LODWORD(STACK[0x5410]) = v43 >> 29;
  LODWORD(STACK[0x53A0]) = (v102 << 8) & 0x79D23B00;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5640])))(v64, v72, v107, 36190236, 39489688, (v102 << 8) ^ 0x40900FFu, v109 ^ 0x11228FFu, v108);
}

uint64_t sub_1000FF3A0@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, unsigned int a4@<W4>, int a5@<W5>, char a6@<W8>)
{
  v16 = (v6 ^ (v11 * a6 - ((v11 * a6) ^ v13))) + v11 * a6;
  *(v10 + 4 * (v11 * a6)) = v7 ^ *(*(a1 + 8 * (v8 + a3)) + 4 * ((v15 ^ v14 ^ (v16 - ((2 * v16) & 0x9F) - 49)) ^ a4) - 8);
  return (*(STACK[0x57D8] + 8 * (((v11 + a2 + v12 != v9 + 256) * a5) ^ v8)))();
}

uint64_t sub_1000FF41C()
{
  v2 = *(v0 + 3104);
  v3 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v2 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v4 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (v3 + v4 - ((2 * (v3 + v4)) & 0xF2D97DC8D6137784) + 0x796CBEE46B09BBC2) ^ 0xBBC3804E54F80326;
  v6 = v5 ^ __ROR8__(v3, 61);
  v7 = __ROR8__(v5, 8);
  v8 = (((2 * (v7 + v6)) | 0x5D600CCC35298E8ELL) - (v7 + v6) + 0x514FF999E56B38B9) ^ 0xCB4252BB021973BBLL;
  v9 = v8 ^ __ROR8__(v6, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) | 0x3F297C3228118B4CLL) - (v10 + v9) + 0x606B41E6EBF73A5ALL) ^ 0xF064F88F7511D72BLL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (v13 + v12 - ((2 * (v13 + v12)) & 0xDA737006DACA84D4) + 0x6D39B8036D65426ALL) ^ 0xCC8B25C6BA135141 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__((v13 + v12 - ((2 * (v13 + v12)) & 0xDA737006DACA84D4) + 0x6D39B8036D65426ALL) ^ 0xCC8B25C6BA135141, 8) + v14) ^ v1;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xD8C7B31FCA19D9DELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5455012E8AB1C38FLL;
  v20 = 3903 * ((((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 4008381;
  v21 = *(v0 + 4000);
  *(v21 + 38132) = *(*(v0 + 4008) + v20 - 5896 * (((1456909 * v20) >> 32) >> 1));
  *(v21 + 39875) = *(v0 + 2799);
  v22 = *(v0 + 3984) + 29;
  *(v0 + 296) = v22;
  LODWORD(v19) = STACK[0x4D68];
  v23 = STACK[0x57D8];
  v24 = *(STACK[0x57D8] + 8 * (LODWORD(STACK[0x4D68]) ^ 0x735A));
  *(v0 + 3112) = v22;
  *(v0 + 280) = v24;
  return (*(v23 + 8 * (v19 + 29306)))();
}

uint64_t sub_1000FF68C()
{
  v1 = (v0 + 1020796873) & 0xC327EFB7;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x65DB)))(1028);
  STACK[0xD8C0] = v3;
  LODWORD(STACK[0x57C0]) = v1;
  return (*(v2 + 8 * ((((((v0 - 205897291) & 0xC45E37B) - 5673) ^ v1) * (v3 != 0)) ^ v0)))();
}

uint64_t sub_1000FF724@<X0>(unsigned int a1@<W0>, int a2@<W4>, unsigned int a3@<W5>, int a4@<W6>, uint64_t a5@<X8>)
{
  v9 = v7 < a3;
  *(a5 + v6) = 0;
  v10 = v6 + 1;
  if (v9 == v10 > (((v5 + a2) | v8) ^ a1))
  {
    v9 = v10 + a3 < v7;
  }

  return (*(STACK[0x57D8] + 8 * ((v9 * a4) ^ v5)))();
}

uint64_t sub_1000FF804()
{
  v1 = STACK[0x51B8] + 7418;
  v2 = STACK[0xE1C8] + 10 + (v0 ^ 0xD21C8094);
  STACK[0xD570] = v2;
  return (*(STACK[0x57D8] + 8 * ((203 * (v2 <= STACK[0xE1C0])) ^ v1)))();
}

uint64_t sub_1000FFBD4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 - 1665081297)))();
  return (*(v1 + 8 * (v0 ^ ((v0 - 1665111054) | 0x5046) ^ 0x633FC16E ^ (11798 * (v0 < 0xE639CB3C)))))(v2);
}

uint64_t sub_1000FFC40()
{
  v0 = STACK[0x51B8] - 22613;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xB798]);
  STACK[0xB798] = 0;
  return (*(v1 + 8 * (v0 | 0xDDA)))(v2);
}

uint64_t sub_1000FFC90(void *a1)
{
  v1 = STACK[0x57D8];
  v2 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x41F8]));
  a1[31] = *(STACK[0x4D10] + 24) + 16 * a1[439];
  a1[32] = 0xD38CBDD3ACAFF84ALL;
  a1[30] = v2;
  return (*(v1 + 8 * (LODWORD(STACK[0x4D50]) ^ 0x7AD3)))();
}

uint64_t sub_1000FFCE4()
{
  LODWORD(STACK[0x57C0]) = v1;
  STACK[0x57B0] = v2;
  return (*(STACK[0x57D8] + 8 * ((122 * (LODWORD(STACK[0x6614]) == ((v0 + 1876123079) & 0xF32CE5BF) + 221664411)) ^ v0)))();
}

uint64_t sub_1000FFDBC(uint64_t a1)
{
  v6 = v4[167];
  v7 = __ROR8__((v6 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = ((2 * v7 + 0x1EFB64F383DB817ALL) & 0xFC15B5D4693062D2) - v7 + 0x7277729C097A0DD9;
  v9 = v8 ^ 0xD272CE02327631E0;
  v8 ^= 0xA99F5DCC3D18340CLL;
  v10 = (__ROR8__(v9, 8) + v8) ^ 0x3A7C64F71FBFC65BLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0x4D6860FE457A3F94) + 0x26B4307F22BD1FCALL) ^ 0xDD75BFF4B7D5DB8ALL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x4AE5CE6F63977933;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((0xBA92362F5C8F59FELL - ((v17 + v16) | 0xBA92362F5C8F59FELL) + ((v17 + v16) | 0x456DC9D0A370A601)) ^ 0x6D39028A28AB2516, 8);
  v19 = (0xBA92362F5C8F59FELL - ((v17 + v16) | 0xBA92362F5C8F59FELL) + ((v17 + v16) | 0x456DC9D0A370A601)) ^ 0x6D39028A28AB2516 ^ __ROR8__(v16, 61);
  v20 = (v18 + v19) ^ 0xF7721CC6F3AEFBDCLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xE6B7173A9B2BB05DLL;
  v23 = v5 + ((((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v21, 61))) ^ 0x94AC86FF716F8E22) >> (8 * ((v6 + 9) & 7))) ^ *(v6 + 9)) * v1;
  v24 = v23 - (((v23 * v2) >> 32) >> 7) * v3;
  v25 = v4[171];
  v25[6137] = v25[v24];
  v26 = *(v6 + 8);
  v6 += 8;
  v27 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = ((2 * v27 + 0x1EFB64F383DB817ALL) & 0x768B2C2A68D432E2) - v27 - 0x4AC3488EF657DA2FLL;
  v29 = v28 ^ 0x973D82FD328419F8;
  v28 ^= 0xECD011333DEA1C14;
  v30 = __ROR8__(v29, 8);
  v31 = __ROR8__((0xDD76C8AD7E0F48C2 - ((v30 + v28) | 0xDD76C8AD7E0F48C2) + ((v30 + v28) | 0x2289375281F0B73DLL)) ^ 0x18F553A59E4F7166, 8);
  v32 = (0xDD76C8AD7E0F48C2 - ((v30 + v28) | 0xDD76C8AD7E0F48C2) + ((v30 + v28) | 0x2289375281F0B73DLL)) ^ 0x18F553A59E4F7166 ^ __ROR8__(v28, 61);
  v33 = (v31 + v32) ^ 0xFBC18F8B9568C440;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x4AE5CE6F63977933;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x2854CB5A8BDB8317;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0xF7721CC6F3AEFBDCLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) | 0xA8738E06DBDC4EF6) - (v41 + v40) + 0x2BC638FC9211D885) ^ 0x328ED039F6C59726;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  LODWORD(v6) = v5 + ((((0xE1EB71DDA6C2FBBALL - ((v44 + v43) | 0xE1EB71DDA6C2FBBALL) + ((v44 + v43) | 0x1E148E22593D0445)) ^ 0x8AB808DD28528A67) >> (8 * (v6 & 7u))) ^ v26) * v1;
  v25[2420] = v25[v6 - (((v6 * v2) >> 32) >> 7) * v3];
  v45 = v4[169];
  v46 = *(v45 + 4);
  v45 += 4;
  v47 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v45 & 0x4EAD1468 | 0xB152EB91) - 555828759 + (v45 & 0xB152EB90 | 0x4EAD146E) + 1)) & 0xFFFFFFFFFFFFFFF8));
  v48 = __ROR8__(v45 & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = (((2 * (v48 + v47)) & 0xB14F0ED4D871E5CELL) - (v48 + v47) + 0x2758789593C70D18) ^ 0x2E4B1C49254439C3;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x448D6F6CA711D855;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xF5F2FED308AA2278;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (0x80A7ED5F1CF571A1 - ((v55 + v54) | 0x80A7ED5F1CF571A1) + ((v55 + v54) | 0x7F5812A0E30A8E5ELL)) ^ 0x180B7C601881DAC3;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xF887455E88108A0CLL;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = __ROR8__((v60 + v59 - ((2 * (v60 + v59)) & 0x27BF4BB90A4A4A92) - 0x6C205A237ADADAB7) ^ 0xB7ACEEB924C5A110, 8);
  v62 = (v60 + v59 - ((2 * (v60 + v59)) & 0x27BF4BB90A4A4A92) - 0x6C205A237ADADAB7) ^ 0xB7ACEEB924C5A110 ^ __ROR8__(v59, 61);
  v63 = (v61 + v62 - ((2 * (v61 + v62)) & 0x7730B54195F81EDELL) + 0x3B985AA0CAFC0F6FLL) ^ 0x7B51954AF639C48ELL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  LODWORD(v45) = (((0x44A8231FA39952A9 - ((v65 + v64) | 0x44A8231FA39952A9) + ((v65 + v64) | 0xBB57DCE05C66AD56)) ^ 0xD43480CEB9B17F90) >> (8 * (v45 & 7u)));
  v25[1320] = v25[v5 + (v45 ^ v46) * v1 - ((((v5 + (v45 ^ v46) * v1) * v2) >> 32) >> 7) * v3];
  LODWORD(v25) = *(a1 + 440);
  *(a1 + 444) = v25;
  v66 = v4[168] + 30;
  *(a1 + 448) = v66;
  *(a1 + 296) = v66;
  v67 = STACK[0x57D8];
  *(a1 + 280) = *(STACK[0x57D8] + 8 * (v25 ^ 0x53FB));
  return (*(v67 + 8 * (*(a1 + 444) ^ 0x53DB)))();
}

uint64_t sub_100100454(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 889 * (a1 ^ 0x5326);
  v5 = (v4 ^ 0x307A6E68) + LODWORD(STACK[0xFE4C]);
  v6 = v5 > LODWORD(STACK[0x5780]) - 1392806155;
  if (LODWORD(STACK[0x5780]) > 0x5304890A != v5 < 0xACFB76F5)
  {
    v6 = v5 < 0xACFB76F5;
  }

  v7 = *(STACK[0x57D8] + 8 * ((!v6 * ((a1 + 1168156352) & 0xBA5F5E5E ^ a4)) ^ a1));
  LODWORD(STACK[0xF294]) = v4;
  return v7(2638638509);
}

uint64_t sub_10010053C(__n128 a1, __n128 a2)
{
  a2.n128_u16[0] = 3855;
  a2.n128_u8[2] = 15;
  a2.n128_u8[3] = 15;
  a2.n128_u8[4] = 15;
  a2.n128_u8[5] = 15;
  a2.n128_u8[6] = 15;
  a2.n128_u8[7] = 15;
  return (*(STACK[0x57D8] + 8 * v2))(a1, a2);
}

uint64_t sub_100100618(uint64_t a1, int a2)
{
  LODWORD(STACK[0x5670]) = v2;
  LODWORD(STACK[0x5680]) = v3;
  LODWORD(STACK[0x56C0]) = a2;
  LODWORD(STACK[0x57B0]) = v4;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x56F0])))();
}

uint64_t sub_100100728@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + 21;
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v1 + 19062)))(a1);
  *(STACK[0xC370] + 24) = 0;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100100768@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x6CF4]);
  v4 = STACK[0x184C];
  v5 = STACK[0x51B8];
  v6 = 551690071 * ((v2 - 240) ^ 0x719D52CE4EED5357);
  LODWORD(STACK[0x1D4CC]) = LODWORD(STACK[0x184C]) - v6;
  STACK[0x1D4D8] = 4151854225 - v6;
  STACK[0x1D4E0] = v3 + v6;
  LODWORD(STACK[0x1D4C0]) = (v5 - 1079089617) ^ v6;
  LODWORD(STACK[0x1D4C4]) = v6 ^ LODWORD(STACK[0x1848]);
  LODWORD(STACK[0x1D4C8]) = (v1 ^ v4 ^ a1 ^ 0xA) - v6;
  LODWORD(STACK[0x1D4D0]) = v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v5 + 9201)))(v2 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4D4])))(v8);
}

uint64_t sub_100100830()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 14093 + ((v0 - 1831) | 0x4215))))();
}

uint64_t sub_100100888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v13 = *(a3 + v5);
  v14 = (((v4 - 56) | 0x10) - 121) & v13 ^ 0xB;
  v15 = *(*v11 + ((*v12 & (((a1 + v5) & 0xFFFFFFF8 ^ 0xBF6D6F68) + 979704367 + ((2 * ((a1 + v5) & 0xFFFFFFF8)) & 0x7EDADED0))) & 0xFFFFFFFFFFFFFFF8));
  v16 = (__ROR8__((a1 + v5) & 0xFFFFFFFFFFFFFFF8, 8) + v15) ^ a2;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ v7;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x2275D4C73835399BLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x96CA2BCFB584FAE6) - (v22 + v21) - 0x4B6515E7DAC27D73) ^ 0xAECA0F54F47F41AELL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xC7DDC9F6CC45B721;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v9;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v8;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  *(a1 + v5) = v13 ^ (2 * ((v13 ^ v10) & (2 * ((v13 ^ v10) & (2 * ((v13 ^ v10) & (2 * ((v13 ^ v10) & (2 * ((v13 ^ 0xE) & (2 * (((2 * (v13 & 0xF)) ^ 0x12) & (v13 ^ 0xE) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ (((((2 * (v31 + v30)) & 0x3926DBBCA3F87AA2) - (v31 + v30) - 0x1C936DDE51FC3D52) ^ 0x22AF5AF30AC68A86uLL) >> (8 * ((a1 + v5) & 7))) ^ 0xDD;
  return (*(STACK[0x57D8] + 8 * ((((v5 + 1) ^ v3) != v6) ^ v4)))();
}

uint64_t sub_100100A80()
{
  if (STACK[0x87A0])
  {
    v1 = LODWORD(STACK[0x9CEC]) == ((v0 - 19237) | 0x5002) + 103657085;
  }

  else
  {
    v1 = 1;
  }

  v3 = v1 || LODWORD(STACK[0x6EA4]) != 20;
  return (*(STACK[0x57D8] + 8 * ((227 * v3) ^ v0)))();
}

uint64_t sub_100100AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v10 = *(v8 + v6);
  *(v5 + v6) = v10;
  return (*(STACK[0x57D8] + 8 * ((((((v7 + a3) ^ (v10 == 0)) & 1) == 0) * (((v7 + v9) | 0xC2D) + a5)) ^ v7)))();
}

uint64_t sub_100100C34@<X0>(_BYTE *a1@<X8>)
{
  v2 = 4 * (v1 ^ 0x3B93);
  *a1 = LOBYTE(STACK[0x8954]) ^ 0x87;
  a1[1] = LOBYTE(STACK[0x8955]) ^ 0x87;
  a1[2] = LOBYTE(STACK[0x8956]) ^ (v2 - 5);
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_100100CEC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x9408]) = v1 | 0x200000;
  if (STACK[0x5D48])
  {
    v2 = STACK[0x7D20] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(STACK[0x57D8] + 8 * ((v3 * (((a1 + 362773414) & 0xEA6077BF) - 14128)) ^ a1)))();
}

uint64_t sub_100100D90@<X0>(int a1@<W2>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v23 = *(v17 + (a1 & (v16 - 103642729) & 0xFFFFFFF8));
  v24 = (v23 + a2) ^ v18;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v22;
  v27 = __ROR8__(v26, 8);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (0x45B15377416B327FLL - ((v27 + v28) | 0x45B15377416B327FLL) + ((v27 + v28) | ((v20 + 5444) - 0x45B15377416B68C7))) ^ 0x983B784F86A1F41BLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((v31 + v30 - ((2 * (v31 + v30)) & 0xC778ADBE9D49123CLL) - 0x1C43A920B15B76E2) ^ 0x6134C6C6019B5C3, 8);
  v33 = (v31 + v30 - ((2 * (v31 + v30)) & 0xC778ADBE9D49123CLL) - 0x1C43A920B15B76E2) ^ 0x6134C6C6019B5C3 ^ __ROR8__(v30, 61);
  v34 = (((2 * (v32 + v33)) & 0xCAF50FC8ED4BB878) - (v32 + v33) + 0x1A85781B895A23C3) ^ 0xDD58B1ED451F94E2;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) | 0xEBE750E094EB9982) - (v36 + v35) - 0x75F3A8704A75CCC1) ^ 0xDDD588D513A716B9;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v19;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((((2 * (v41 + v40)) & 0x8BBFEB0572EDC072) - (v41 + v40) - 0x45DFF582B976E03ALL) ^ 0x7BE3C2AFE24C57EELL) >> v15) ^ v21;
  return (*(a3 + 8 * ((20892 * (((((v42 ^ 0xCB) - 52) ^ ((v42 ^ 0x98) - 103) ^ ((v42 ^ 0x53) + 84)) - (*(a15 + 48) ^ a14)) == 183)) ^ v20)))();
}

uint64_t sub_100100FC8()
{
  v4 = STACK[0x870];
  v5 = LODWORD(STACK[0x880]) - STACK[0x870];
  v6 = STACK[0x870] ^ LODWORD(STACK[0x850]);
  *(v3 - 240) = (v0 + 132004596) ^ STACK[0x870];
  *(v3 - 236) = v6;
  *(v3 - 232) = v5 + 13;
  *(v3 - 228) = v5;
  *(v3 - 216) = (v1 & 7 ^ 0x9FC03003) - v4;
  *(v3 - 208) = v4 + 2680172547u;
  *(v3 - 224) = v4;
  v7 = (*(v2 + 8 * SLODWORD(STACK[0x840])))(v3 - 240);
  return (*(v2 + 8 * *(v3 - 220)))(v7);
}

uint64_t sub_10010103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(*(v9 + 1360) + 4 * ((a5 + (((v5 - 24519) | 0x5181) ^ 0x4ADAu) * v7) % 0x2240));
  *(*(v9 + 1368) + v6 - 6152 * (((v6 * v8) >> 64) >> 12)) = (((v10 ^ 8) - 29) ^ ((v10 ^ 0xA3) + 74) ^ ((v10 ^ 0x4D) - 88)) + 63;
  return (*(STACK[0x57D8] + 8 * ((1610 * (v7 == 255)) ^ v5)))();
}

uint64_t sub_1001010EC()
{
  v2 = (v0 + 1516049762) & 0xA5A29F7F;
  v3 = *(v1 - 120);
  v4 = (*(v3 + 8 * (v0 + 6818)))(1032);
  *(v1 - 128) = 0;
  *(v1 - 144) = v2;
  return (*(v3 + 8 * (((((v0 - 386359898) & 0x17073718 ^ 0xFFFFDFF4) + v2) * (v4 == 0)) ^ v0)))();
}

uint64_t sub_100101298()
{
  v1 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x276 ^ (v0 << 6) ^ 0x7D40)))();
}

uint64_t sub_1001012E4()
{
  v2 = STACK[0x57D8];
  STACK[0x5AD0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x2048 ^ (((v0 + 695236805) > 0xCC65DD0E) * ((1559 * v1) ^ 0x170D)))))();
}

uint64_t sub_1001013EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = LODWORD(STACK[0x1744]) | 0x9001010;
  v8 = STACK[0xCA90];
  v9 = STACK[0x57D8];
  v10 = STACK[0x1740];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1740]));
  return (*(v9 + 8 * (v10 - 1569404569 + v7 + 3385)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1001014F8@<X0>(uint64_t a1@<X8>)
{
  v2 = 1110 * (STACK[0x51B8] ^ 0x585F);
  STACK[0xAFC8] = a1 + v1;
  return (*(STACK[0x57D8] + 8 * ((LOBYTE(STACK[0xB553]) * (v2 ^ 0x27D0)) ^ LODWORD(STACK[0x1D90]))))();
}

uint64_t sub_10010154C()
{
  v0 = STACK[0xF78] & 0xEC2A92FF;
  v1 = STACK[0x57D8];
  STACK[0x7B40] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xF74]));
  return (*(v1 + 8 * (LODWORD(STACK[0xF68]) ^ v0)))();
}

uint64_t sub_1001015F4(uint64_t a1, int a2, unsigned int a3, int a4)
{
  v8 = STACK[0x55A0];
  v9 = *(STACK[0xFE78] + a4 + ((v8 - 6171) | 0x1803) - 5896 * ((((v8 - 6171) | 0x1803u) + a4) / 0x1708));
  v10 = *(STACK[0xFE70] + 4 * ((2717 * (v9 | ((v9 < 0x1C) << 8)) + 1320462) % 0x2240));
  v11 = *(STACK[0xFE78] + v4 + 3903 * (BYTE1(v10) ^ v6) - 5896 * (((1456909 * (v4 + 3903 * (BYTE1(v10) ^ v6))) >> 32) >> 1));
  v12 = *(STACK[0xFE78] + (3903 * (((HIBYTE(v10) ^ 0x46FC094D) + 1073021110) ^ ((HIBYTE(v10) ^ 0xFA1CF640) - 2095710279) ^ ((HIBYTE(v10) ^ 0xBCE0FF41) - 974522694)) - 1351472334) % 0x1708);
  v13 = *(STACK[0xFE78] + (3903 * (((v10 ^ 0xD510FC8D) - 846352802) ^ ((v10 ^ 0xB532F1D9) - 1380998390) ^ ((v10 ^ 0x60220DA5) + 2025807734)) - 1179257505) % 0x1708);
  v14 = *(STACK[0xFE78] + v4 + 3903 * (BYTE2(v10) ^ 0xC5) - 5896 * (((1456909 * (v4 + 3903 * (BYTE2(v10) ^ 0xC5u))) >> 32) >> 1));
  v15 = v12 & 6 | 0x91;
  LOBYTE(v10) = v14 & 0x94 ^ 0x58;
  v16 = (v14 ^ v6) & (2 * ((v14 ^ v6) & (2 * ((v14 ^ v6) & (2 * ((v14 ^ v6) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10;
  LOBYTE(v10) = v11 & 0x40 ^ 0xF6;
  HIDWORD(v17) = ((((v11 ^ (2 * ((v11 ^ v6) & (2 * ((v11 ^ v6) & (2 * ((v11 ^ v6) & (2 * ((v11 ^ v6) & (2 * ((v11 ^ v6) & v7 ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10))) ^ 0x40) << 15) & 0x807F8000 | ((v14 ^ (2 * v16)) << 23) | (v12 << 31) | ((v13 ^ (2 * ((v7 ^ (2 * ((v7 ^ (2 * ((v7 ^ (2 * (((2 * (v13 ^ 0x24)) & 0x58 ^ v7) & (v13 ^ 0x24)))) & (v13 ^ 0x24)))) & (v13 ^ 0x24)))) & (v13 ^ v6)))) << 7) | ((v12 ^ (2 * ((v12 ^ v6) & (2 * ((v12 ^ v6) & (2 * ((v12 ^ v6) & (2 * ((v12 ^ v6) & (2 * ((v12 ^ v6) & (2 * (((4 * (((v12 & 6) >> 1) & 3)) | 0x62) & (v12 ^ v6) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) >> 1)) ^ a2;
  LODWORD(v17) = HIDWORD(v17);
  *(STACK[0xFE70] + 4 * (a3 % 0x2240)) = __ROR4__((v17 >> 30) - ((2 * (v17 >> 30)) & 0xF188D8B0) - 121344936, 9) ^ 0x60B906C7;
  return (*(STACK[0x57D8] + 8 * ((62 * (v5 != 0)) ^ v8)))();
}

uint64_t sub_1001019A4()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 1557) | 0x4209) ^ 0x4E0B) + v0)))();
}

uint64_t sub_1001019FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v7 = *(v6 + 4008);
  v8 = *(v7 + (3903 * a4 + 17079528) % 0x1708u);
  v9 = *(v7 + (3903 * (v8 | ((v8 < (a6 + 105)) << 8)) + 9937038) % 0x1708);
  *(*(v6 + 4000) + 4 * ((2717 * a4 + 21613735) % 0x2240u)) = 1288004849;
  v10 = v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * (((2 * (v9 & 0x24)) | 0x12) & (v9 ^ 0x64) ^ (v9 | 9))) ^ (v9 | 9))) ^ (v9 | 9))) ^ (v9 | 9))) ^ (v9 | 9)));
  return (*(STACK[0x57D8] + 8 * a6))(v10 ^ 0xFFFFFFF6, a2, v10 & 0x19E);
}

uint64_t sub_100101B64(uint64_t a1)
{
  v4 = STACK[0x1788];
  v5 = STACK[0x8DC];
  v6 = 1917435887 * (((((v3 - 240) | 0x89CD35C2) ^ 0xFFFFFFFE) - (~(v3 - 240) | 0x7632CA3D)) ^ 0x9089913B);
  *(v3 - 240) = v6 + v1 + 194288621;
  *(v3 - 224) = v5 + v6;
  *(v3 - 232) = &STACK[0x99C];
  *(v3 - 216) = a1;
  *(v3 - 200) = v4;
  v7 = STACK[0x8B0];
  v8 = (*(STACK[0x8B0] + 8 * (v1 ^ 0x7E60)))(v3 - 240);
  return (*(v7 + 8 * (((LODWORD(STACK[0x99C]) < ((v1 - 1211072225) ^ (v2 + 767))) * (((v1 + 3982) | 0x2C03) ^ 0x5CCD)) ^ v1)))(v8);
}

uint64_t sub_100101C98(uint64_t a1, char a2, int a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x2C8]) = a7;
  v77 = (LODWORD(STACK[0x278]) - 1317116302) & 0xFEFB7DDE;
  v78 = a6 ^ v73;
  v79 = (LODWORD(STACK[0x278]) + 273146705) | 0xA0320100;
  LODWORD(STACK[0x2D8]) = v77;
  LODWORD(STACK[0x28C]) = v79;
  v80 = ((v77 + 2114468418) ^ v79) + v72;
  v81 = ((a3 - 201443039) | (v76 - 1)) - (((a3 - 201443039) & 0xF05299B2) + 2 * v71) + v80 - 1185602979;
  LODWORD(STACK[0x240]) = v81;
  v82 = ((-736239868 - (v78 + a70)) & 0x1B7EBBAB) + a5 + ((v78 + a70 + 736239867) & 0x1B7EBBAB);
  v83 = v78 - 2 * v82;
  LODWORD(STACK[0x248]) = v83;
  LODWORD(STACK[0x270]) = v81 + a68 - a5;
  LODWORD(STACK[0x250]) = v78 + a70 + 736239867;
  LODWORD(STACK[0x290]) = a69 + a3 - 1538425847;
  LODWORD(STACK[0x230]) = a71 - v80;
  LODWORD(STACK[0x258]) = (v71 ^ v75) + 1837675685;
  LODWORD(STACK[0x288]) = v71 + 724312569 + (v71 ^ v75) + 1837675685;
  v84 = LODWORD(STACK[0x278]) ^ (8512 * (((a66 + a2 - v83 - 112) >> 4) > 4u));
  LODWORD(STACK[0x278]) = a5;
  v85 = (v74 ^ a5) + 1837675685;
  LODWORD(STACK[0x238]) = v85;
  LODWORD(STACK[0x268]) = v82 + v85;
  return (*(STACK[0x2D0] + 8 * v84))(&STACK[0x2E0]);
}

uint64_t sub_100102110(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, int a7)
{
  v10 = STACK[0x35A0];
  LODWORD(STACK[0x3A90]) = LODWORD(STACK[0x35A0]) + 5601;
  v11 = v7 + (((LODWORD(STACK[0x37A8]) ^ 0xB1) + 111) ^ 0x1C) * a7;
  v12 = *(v9 + v11 - (((v11 * a4) >> 32) >> 1) * a5) ^ 0xFFFFFFE3;
  return (*(v8 + 8 * v10))(((v12 >> 3) | (32 * v12)) ^ LODWORD(STACK[0x3890]), LODWORD(STACK[0x3888]) ^ LODWORD(STACK[0x37A8]) ^ 0x29u);
}

uint64_t sub_100102368(char a1, uint64_t a2, int a3, char a4, char a5, char a6, char a7, char a8)
{
  v18 = ~v8 & 0x4C;
  v19 = v8 ^ (2 * ((v8 ^ v11) & (2 * ((v8 ^ v11) & (2 * ((v8 ^ v11) & (2 * ((v8 ^ v11) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18));
  v20 = v9 & 0xBC ^ 4;
  LODWORD(STACK[0x48F8]) = LODWORD(STACK[0x5600]) | LODWORD(STACK[0x5610]);
  LODWORD(STACK[0x4960]) = LODWORD(STACK[0x5500]) + LODWORD(STACK[0x54F0]);
  LODWORD(STACK[0x49F0]) = LODWORD(STACK[0x54C0]) | LODWORD(STACK[0x5510]);
  v21 = ((v19 ^ 0x4C) << 8) | (((v10 ^ (2 * ((v10 ^ v11) & (2 * ((v10 ^ v11) & (2 * ((v10 ^ v11) & (2 * ((v10 ^ v11) & (2 * ((v10 ^ v11) & (2 * ((v10 ^ v11) & (2 * (v10 | 0xD9)) & 0xDF ^ (v10 | 0xD9))) ^ (v10 | 0xD9))) ^ (v10 | 0xD9))) ^ (v10 | 0xD9))) ^ (v10 | 0xD9))) ^ (v10 | 0xD9)))) ^ 0x26) << 16);
  v22 = ((v9 ^ (2 * ((v9 ^ v11) & (2 * ((v9 ^ v11) & (2 * ((v9 ^ v11) & (2 * ((v9 ^ v11) & (2 * ((v9 ^ v11) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x12E6C0) & ~v21 | v21 & 0xED1900;
  v23 = a6 & 0x82 ^ 0xAF;
  v24 = (a6 ^ v11) & (2 * ((a6 ^ v11) & (2 * ((a6 ^ v11) & (2 * ((a6 ^ v11) & (2 * ((a6 ^ v11) & (2 * ((a6 ^ v11) & a1 ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23;
  v25 = v12 & 0x60 ^ 0xFE;
  v22 <<= 8;
  v26 = (v12 ^ (2 * ((v12 ^ v11) & (2 * ((v12 ^ v11) & (2 * ((v12 ^ v11) & (2 * ((v12 ^ v11) & (2 * ((v12 ^ v11) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)));
  v27 = v22 ^ 0xE81103FF;
  LODWORD(STACK[0x5610]) = v22 & 0x5CC9000;
  LOBYTE(v22) = a5 & 0x1A ^ 0x73;
  v28 = (((a6 ^ (2 * v24)) ^ 0x82) << 16) | (((a5 ^ (2 * ((a5 ^ v11) & (2 * ((a5 ^ v11) & (2 * ((a5 ^ v11) & (2 * ((a5 ^ v11) & (2 * ((a5 ^ v11) & (2 * (v22 ^ a5 & 0x2E)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x1A) << 8);
  v29 = a3 & 0x5C ^ 0x54;
  v30 = a3 ^ (2 * ((a3 ^ v11) & (2 * ((a3 ^ v11) & (2 * ((a3 ^ v11) & (2 * ((a3 ^ v11) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29));
  v31 = v17 & 0x8E ^ 0xAD;
  v32 = v15 & 0xAE ^ 0x1D;
  v33 = (v15 ^ v11) & (2 * ((v15 ^ v11) & (2 * ((v15 ^ v11) & (2 * ((v15 ^ v11) & (2 * ((v15 ^ v11) & (2 * (v32 ^ v15 & 0x1A)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32;
  v34 = a4 & 8 ^ 0xEA;
  v35 = (((v15 ^ (2 * v33)) ^ 0xAE) << 8) | (((v17 ^ (2 * ((v17 ^ v11) & (2 * ((v17 ^ v11) & (2 * ((v17 ^ v11) & (2 * ((v17 ^ v11) & (2 * ((v17 ^ v11) & (2 * (v31 ^ v17 & 0x3A)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x8E) << 16);
  v36 = v14 & 0xDA ^ 0x93;
  v37 = (((v14 ^ (2 * ((v14 ^ v11) & (2 * ((v14 ^ v11) & (2 * ((v14 ^ v11) & (2 * ((v14 ^ v11) & (2 * ((v14 ^ v11) & (2 * (v36 ^ v14 & 0x2E)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xD62564) & ~v35 | v35 & 0x29DA00) << 8;
  v38 = (((a4 ^ (2 * ((a4 ^ v11) & (2 * ((a4 ^ v11) & (2 * ((a4 ^ v11) & (2 * ((a4 ^ v11) & (2 * ((a4 ^ v11) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0xE83B03) & ~v28 | v28 & 0x17C400) << 8;
  v39 = v16 & 0x50 ^ 0xD6;
  v40 = (v16 ^ (2 * ((v16 ^ v11) & (2 * ((v16 ^ v11) & (2 * ((v16 ^ v11) & (2 * ((v16 ^ v11) & (2 * ((v16 ^ v11) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39)));
  v41 = v37 ^ 0x9000FFu;
  LODWORD(STACK[0x5510]) = v37 & 0x296B4B00;
  LOBYTE(v37) = a8 & 0x9E ^ 0xB5;
  v42 = v13 & 0x92 ^ 0x37;
  v43 = (((a8 ^ (2 * ((a8 ^ v11) & (2 * ((a8 ^ v11) & (2 * ((a8 ^ v11) & (2 * ((a8 ^ v11) & (2 * ((a8 ^ v11) & (2 * (v37 ^ a8 & 0xAA)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0x9E) << 16) | (((v13 ^ (2 * ((v13 ^ v11) & (2 * ((v13 ^ v11) & (2 * ((v13 ^ v11) & (2 * ((v13 ^ v11) & (2 * ((v13 ^ v11) & (2 * (v42 ^ v13 & 0x26)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0x92) << 8);
  LOBYTE(v37) = a7 & 0x64 ^ 0xF8;
  LODWORD(STACK[0x53D8]) = v38 & 0xBF0DAE00;
  LODWORD(STACK[0x5500]) = ((((a7 ^ (2 * ((a7 ^ v11) & (2 * ((a7 ^ v11) & (2 * ((a7 ^ v11) & (2 * ((a7 ^ v11) & (2 * v37) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0xE2CCA8) & ~v43 | v43 & 0x1D3300) << 8) & 0x4449400;
  LOBYTE(v38) = *(STACK[0x5300] + 3065);
  LOBYTE(v37) = *(STACK[0x55E0] + 1085);
  v44 = *(STACK[0x5700] + 501);
  v45 = v37 & 0x7A ^ 0xE3;
  v46 = v44 & 0xD6 ^ 0x11;
  v47 = v38 & 0x52 ^ 0xD7;
  v48 = (((v38 ^ (2 * ((v38 ^ v11) & (2 * ((v38 ^ v11) & (2 * ((v38 ^ v11) & (2 * ((v38 ^ v11) & (2 * ((v38 ^ v11) & (2 * (v47 ^ v38 & 0x26)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0x52) << 16) | (((v44 ^ (2 * ((v44 ^ v11) & (2 * ((v44 ^ v11) & (2 * ((v44 ^ v11) & (2 * ((v44 ^ v11) & (2 * ((v44 ^ v11) & (2 * (v46 ^ v44 & 0x22)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0xD6) << 8);
  v49 = *(STACK[0x5790] + 797);
  LODWORD(STACK[0x5600]) = ((((v37 ^ (2 * ((v37 ^ v11) & (2 * ((v37 ^ v11) & (2 * ((v37 ^ v11) & (2 * ((v37 ^ v11) & (2 * ((v37 ^ v11) & (2 * (v45 ^ v37 & 0xE)) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45))) ^ 0x68CED0) & ~v48 | v48 & 0x973100) << 8) & 0x3DF7FE00;
  LOBYTE(v48) = *(STACK[0x57B0] + 3869);
  v50 = v48 & 0xE0 ^ 0x3E;
  v51 = *(STACK[0x57A0] + 2367);
  v52 = v49 & 0xA2 ^ 0x9F;
  v53 = (((v49 ^ (2 * ((v49 ^ v11) & (2 * ((v49 ^ v11) & (2 * ((v49 ^ v11) & (2 * ((v49 ^ v11) & (2 * ((v49 ^ v11) & (2 * ((v49 ^ v11) & 0x16 ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0xA2) << 16) | (((v48 ^ (2 * ((v48 ^ v11) & (2 * ((v48 ^ v11) & (2 * ((v48 ^ v11) & (2 * ((v48 ^ v11) & (2 * ((v48 ^ v11) & (2 * v50) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50))) ^ 0xE0) << 8);
  LOBYTE(v48) = v51 & 0x4A ^ 0xCB;
  v54 = ((v51 ^ (2 * ((v51 ^ v11) & (2 * ((v51 ^ v11) & (2 * ((v51 ^ v11) & (2 * ((v51 ^ v11) & (2 * ((v51 ^ v11) & (2 * ((v51 ^ v11) & 0x3E ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0xD3A1C) & ~v53 | v53 & 0xF2C500;
  LOBYTE(v53) = *(STACK[0x56D0] + 1882);
  v55 = v54 << 8;
  LOBYTE(v54) = v53 & 0xE6 ^ 0xB9;
  LODWORD(STACK[0x54F0]) = v55 & 0xF5B18400;
  STACK[0x51F8] = STACK[0xDCB8] + 4749;
  v56 = *(STACK[0x5730] + 1715);
  v57 = *(STACK[0x5770] + 615);
  v58 = v56 & 0xC0 ^ 0x8E;
  v59 = ((v53 ^ (2 * ((v53 ^ v11) & (2 * ((v53 ^ v11) & (2 * ((v53 ^ v11) & (2 * ((v53 ^ v11) & (2 * ((v53 ^ v11) & (2 * (v54 ^ v53 & 0x12)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54))) << 16) | (((v56 ^ (2 * ((v56 ^ v11) & (2 * ((v56 ^ v11) & (2 * ((v56 ^ v11) & (2 * ((v56 ^ v11) & (2 * ((v56 ^ v11) & 0x1C ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0xC0) << 8);
  v60 = v57 & 0x1C ^ 0x74;
  v61 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x5640]));
  LODWORD(STACK[0x5480]) = (((v59 ^ 0x113FF) & ((v57 ^ (2 * ((v57 ^ v11) & (2 * ((v57 ^ v11) & (2 * ((v57 ^ v11) & (2 * ((v57 ^ v11) & (2 * v60) ^ v60)) ^ v60)) ^ v60)) ^ v60))) ^ 0x41136D) | v59 & 0xBEEC00) << 8) & 0x1837F300;
  return v61(v26, v27, v30, v40, 255, v41);
}

uint64_t sub_100102E70(uint64_t a1)
{
  v6 = *(a1 + 64);
  v7 = a1 + 56;
  v9 = STACK[0x768];
  v10 = *(*STACK[0x768] + (((((a1 + 56) & 0xFFFFFFF8 ^ 0xA23CBAEA) + 1469435565 + ((2 * ((a1 + 56) & 0xFFFFFFF8)) & 0x447975D0)) & *v4) & 0xFFFFFFFFFFFFFFF8));
  v11 = (v10 + __ROR8__((a1 + 56) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((v13 + v12 - ((2 * (v13 + v12)) & 0x22B646E9C7B47330) + 0x115B2374E3DA3998) ^ 0x469619ADF2A53D1, 8);
  v15 = (v13 + v12 - ((2 * (v13 + v12)) & 0x22B646E9C7B47330) + 0x115B2374E3DA3998) ^ 0x469619ADF2A53D1 ^ __ROR8__(v12, 61);
  v16 = (((2 * (v14 + v15)) & 0x7F23E0446F740232) - (v14 + v15) - 0x3F91F02237BA011ALL) ^ 0xE21BDB1AF070C77DLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xE5AF1AB32EBD3CDDLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xC7DDC9F6CC45B721;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xA82620A559D2DA78;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x5F8DEC3EA3980A1BLL;
  *(a1 + 56) = ((v6 >> 21) - (((v1 + 52) ^ 0x99) & (2 * (v6 >> 21))) + 89) ^ 0x59 ^ (((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ v2) >> (8 * (v7 & 7u)));
  v25 = *(*v9 + (((((a1 + 57) & 0xFFFFFFF8 ^ 0x2AD0A31C) - 821959045 + ((2 * ((a1 + 57) & 0xFFFFFFF8)) & 0x55A14630)) & *v4) & 0xFFFFFFFFFFFFFFF8));
  v26 = (v25 + __ROR8__((a1 + 57) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x153242EE3CF06A49;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v5;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xE5AF1AB32EBD3CDDLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) | 0x5EBB4229D03884C4) - (v34 + v33) - 0x2F5DA114E81C4262) ^ 0xE88068E22459F543;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xA82620A559D2DA78;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x5F8DEC3EA3980A1BLL;
  *(a1 + 57) = ((v6 >> 13) - ((v6 >> 12) & 0xD4) - 22) ^ 0xEA ^ (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ v2) >> (8 * ((a1 + 57) & 7)));
  v40 = STACK[0xA88];
  v41 = STACK[0xA88];
  v42 = *(STACK[0xA88] + 64);
  v43 = *(STACK[0xA88] + 68);
  v44 = STACK[0xA88] + 58;
  v45 = *(*v9 + ((*v4 & ((v44 & 0xDFE89B98) + (v44 & 0x20176460 | 0xDFE89B9A) + 434761213)) & 0xFFFFFFFFFFFFFFF8));
  v46 = (__ROR8__(v44 & 0xFFFFFFFFFFFFFFF8, 8) + v45) ^ 0xF41651499F5E3C67;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x153242EE3CF06A49;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v5;
  v51 = __ROR8__(v50, 8);
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = (v51 + v52) ^ 0xE5AF1AB32EBD3CDDLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((2 * (v55 + v54)) | 0x8350817B6B169E3ALL) - (v55 + v54) + 0x3E57BF424A74B0E3) ^ 0x675894B79CEF83CLL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (0xE4B9620D2B200CA9 - ((v58 + v57) | 0xE4B9620D2B200CA9) + ((v58 + v57) | 0x1B469DF2D4DFF356)) ^ 0xB360BD578D0D292ELL;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x5F8DEC3EA3980A1BLL;
  *(v40 + 58) = ((v42 >> 5) - ((v42 >> 4) & 0xEE) + 119) ^ (((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v60, 61))) ^ v2) >> (8 * (v44 & 7u))) ^ 0x77;
  v62 = *(*v9 + ((*v4 & (((v40 + 59) & 0xFFFFFFF8 ^ 0x34B2A2D) - 158900374 + ((2 * ((v40 + 59) & 0xFFFFFFF8)) & 0x6965450))) & 0xFFFFFFFFFFFFFFF8));
  v63 = __ROR8__((v40 + 59) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (v62 + v63 - ((2 * (v62 + v63)) & 0x25375A24F263E3ECLL) - 0x6D6452ED86CE0E0ALL) ^ 0x668DFC5BE66FCD91;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (v66 + v65 - ((2 * (v66 + v65)) & 0xAE6F19399E44ABBCLL) - 0x28C8736330DDAA22) ^ 0xC205CE72F3D23F97;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (0x32CC5138CAD4B8E8 - ((v69 + v68) | 0x32CC5138CAD4B8E8) + ((v69 + v68) | 0xCD33AEC7352B4717)) ^ 0xEF467A000D1E7E8CLL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0xE5AF1AB32EBD3CDDLL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (0x616E2FEAD5D3D583 - ((v74 + v73) | 0x616E2FEAD5D3D583) + ((v74 + v73) | 0x9E91D0152A2C2A7CLL)) ^ 0x594C19E3E6699D5DLL;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0xA82620A559D2DA78;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x5F8DEC3EA3980A1BLL;
  *(v40 + 59) = ((__PAIR64__(v42, v43) >> 29) - ((2 * (__PAIR64__(v42, v43) >> 29)) & 0x84) + 66) ^ 0x42 ^ (((__ROR8__(v79, 8) + (v79 ^ __ROR8__(v78, 61))) ^ v2) >> (8 * ((v40 + 59) & 7)));
  v80 = *(v41 + 68);
  v81 = *(*v9 + ((*v4 & (((v41 + 60) & 0xC01B5158) + ((v41 + 60) & 0x3FE4AEA0 | 0xC01B515C) + 968308795)) & 0xFFFFFFFFFFFFFFF8));
  v82 = (__ROR8__((v41 + 60) & 0xFFFFFFFFFFFFFFF8, 8) + v81) ^ 0xF41651499F5E3C67;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x153242EE3CF06A49;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) & 0xA5F6F9FBD337195CLL) - (v86 + v85) + 0x2D04830216647351) ^ 0xF7157C52E514ACALL ^ __ROR8__(v85, 61);
  v88 = (__ROR8__((((2 * (v86 + v85)) & 0xA5F6F9FBD337195CLL) - (v86 + v85) + 0x2D04830216647351) ^ 0xF7157C52E514ACALL, 8) + v87) ^ 0xE5AF1AB32EBD3CDDLL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0xC7DDC9F6CC45B721;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (0x93EBCD48F2C57C1ALL - ((v92 + v91) | 0x93EBCD48F2C57C1ALL) + ((v92 + v91) | 0x6C1432B70D3A83E5)) ^ 0xC432121254E8599DLL;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0x5F8DEC3EA3980A1BLL;
  *(v41 + 60) = ((v80 >> 21) - ((v80 >> 20) & 0x90) - 56) ^ 0xC8 ^ (((__ROR8__(v95, 8) + (v95 ^ __ROR8__(v94, 61))) ^ v2) >> (8 * ((v41 + 60) & 7)));
  v96 = *(*v9 + ((*v4 & (((v41 + 61) & 0xFFFFFFF8 ^ 0x26098226) - 741800079 + ((2 * ((v41 + 61) & 0xFFFFFFF8)) & 0x4C130440))) & 0xFFFFFFFFFFFFFFF8));
  v97 = (v96 + __ROR8__((v41 + 61) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (v99 + v98 - ((2 * (v99 + v98)) & 0x829C9B4285077FDELL) - 0x3EB1B25EBD7C4011) ^ 0xD47C0F4F7E73D5A6;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ v5;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (v104 + v103 - ((2 * (v104 + v103)) & 0xCC1D96B0EA8BA4A6) - 0x19F134A78ABA2DADLL) ^ 0x3A1D1EB5BF8EE8ELL;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xC7DDC9F6CC45B721;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((2 * (v109 + v108)) | 0x10D0BC03365B69FELL) - (v109 + v108) - 0x8685E019B2DB4FFLL) ^ 0xA04E7EA4C2FF6E87;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((2 * (v112 + v111)) | 0x3269E69CC67CDD66) - (v112 + v111) - 0x1934F34E633E6EB3) ^ 0x46B91F70C0A664A8;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = __ROR8__(v113, 8);
  *(v41 + 61) = ((v80 >> 13) - ((v80 >> 12) & 0x56) + 43) ^ 0x2B ^ (((((2 * (v115 + v114)) & 0x764ACBA54D67E3ACLL) - (v115 + v114) + 0x44DA9A2D594C0E29) ^ 0x851952FFFD894601) >> (8 * ((v41 + 61) & 7)));
  v116 = STACK[0xA88];
  v117 = *(STACK[0xA88] + 68);
  v118 = STACK[0xA88] + 62;
  v119 = *(*v9 + ((*v4 & ((v118 & 0x4BE6ACF0) + (v118 & 0xB4195308 | 0x4BE6ACF0) - 1377051481)) & 0xFFFFFFFFFFFFFFF8));
  v120 = (__ROR8__(v118 & 0xFFFFFFFFFFFFFFF8, 8) + v119) ^ 0xF41651499F5E3C67;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x153242EE3CF06A49;
  v123 = __ROR8__(v122, 8);
  v124 = v122 ^ __ROR8__(v121, 61);
  v125 = (((2 * (v123 + v124)) & 0xB4F4A0BD2BE6A596) - (v123 + v124) + 0x2585AFA16A0CAD34) ^ 0x7F07B66523994AFLL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (0x2380D35821096920 - ((v127 + v126) | 0x2380D35821096920) + ((v127 + v126) | 0xDC7F2CA7DEF696DFLL)) ^ 0x39D03614F04BAA02;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = __ROR8__(v128, 8);
  v131 = (((2 * (v130 + v129)) | 0xB4AB7F7D987941C2) - (v130 + v129) - 0x5A55BFBECC3CA0E1) ^ 0x9D887648007917C0;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (((2 * (v133 + v132)) & 0x219426EF5215D1D6) - (v133 + v132) - 0x10CA1377A90AE8ECLL) ^ 0x4713CC2D0F27CD6CLL;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0x5F8DEC3EA3980A1BLL;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = __ROR8__(v136, 8);
  *(v116 + 62) = ((v117 >> 5) - ((v117 >> 4) & 0x18) + 12) ^ (((v138 + v137 - ((2 * (v138 + v137)) & 0x551D180B391CF518) + 0x2A8E8C059C8E7A8CLL) ^ 0xEB4D44D7384B32A4) >> (8 * (v118 & 7u))) ^ 0xC;
  v139 = *(*v9 + ((*v4 & (((v116 + 63) & 0xB67D66A0) + ((v116 + 63) & 0x49829958 | 0xB67D66A4) + 1129652979)) & 0xFFFFFFFFFFFFFFF8));
  v140 = (v139 + __ROR8__((v116 + 63) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (0xC42908BE58226A3DLL - ((v142 + v141) | 0xC42908BE58226A3DLL) + ((v142 + v141) | 0x3BD6F741A7DD95C2)) ^ 0x2EE4B5AF9B2DFF8BLL;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (v145 + v144 - ((2 * (v145 + v144)) & 0xFB003D3F9DA71980) - 0x27FE160312C7340) ^ 0xDFF5CA58F6E6B55BLL;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0xE5AF1AB32EBD3CDDLL;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = __ROR8__(v148, 8);
  v151 = (v150 + v149 - ((2 * (v150 + v149)) & 0xEF88519C267445DELL) - 0x83BD731ECC5DD11) ^ 0x3019E138DF7F95CELL;
  v152 = v151 ^ __ROR8__(v149, 61);
  v153 = __ROR8__(v151, 8);
  v154 = (v153 + v152 - ((2 * (v153 + v152)) & 0xDDC3A72534F461EELL) + 0x6EE1D3929A7A30F7) ^ 0xC6C7F337C3A8EA8FLL ^ __ROR8__(v152, 61);
  v155 = (__ROR8__((v153 + v152 - ((2 * (v153 + v152)) & 0xDDC3A72534F461EELL) + 0x6EE1D3929A7A30F7) ^ 0xC6C7F337C3A8EA8FLL, 8) + v154) ^ 0x5F8DEC3EA3980A1BLL;
  v156 = __ROR8__(v155, 8) + (v155 ^ __ROR8__(v154, 61));
  *(v116 + 63) = (((0x57091517651CF2C9 - (v156 | 0x57091517651CF2C9) + (v156 | 0xA8F6EAE89AE30D36)) ^ 0x6935223A3E26451ELL) >> (8 * ((v116 + 63) & 7))) ^ (8 * v117);
  return (*(v3 + 8 * (v1 ^ 0xCA634E1A ^ (14189 * (v1 > 0xB1381E79)))))();
}

uint64_t sub_100103D14()
{
  STACK[0x1D4C8] = 0;
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717146031) ^ (1964904101 * ((((v1 - 240) | 0xDC73C812) - ((v1 - 240) & 0xDC73C812)) ^ 0x26512396));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 6596)))(v1 - 240);
  return (*(v2 + 8 * ((4 * (((v0 - 42) ^ (*STACK[0x4658] == 0)) & 1)) & 0xEF | (16 * (((v0 - 42) ^ (*STACK[0x4658] == 0)) & 1)) | v0)))(v3);
}

uint64_t sub_100103E24()
{
  v2 = STACK[0x57D8];
  v3 = *(v2 + 8 * ((((*(STACK[0x57D8] + 8 * (v1 ^ 0x225F)))(*(v0 + 96)) != 0) * ((v1 + 5581) ^ 0x7435)) ^ v1));
  return v3();
}

uint64_t sub_100103E7C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W4>, unsigned __int8 a5@<W5>, int a6@<W8>)
{
  LODWORD(STACK[0x4B30]) = LODWORD(STACK[0x54C0]) | LODWORD(STACK[0x5500]);
  LODWORD(STACK[0x4A48]) = LODWORD(STACK[0x5480]) | LODWORD(STACK[0x54D0]);
  LODWORD(STACK[0x5400]) = v8 & (v12 ^ 0x6D1BFAFB);
  LODWORD(STACK[0x53C8]) = v10 & (v6 ^ 0x16EFDBDE);
  LODWORD(STACK[0x5430]) = a1 & (a5 ^ 0xD02C5D52);
  LODWORD(STACK[0x53C0]) = a6 & (v11 ^ 0x120A95F7);
  LODWORD(STACK[0x53F0]) = a3 & (a2 ^ 0xA7A98280);
  LODWORD(STACK[0x53B8]) = a4 & (v9 ^ 0xD37E10B7);
  return (*(STACK[0x57D8] + 8 * v7))();
}

uint64_t sub_100104024()
{
  v3 = *(v0 + 295);
  *(v0 + 1786) = v3;
  v4 = *(v0 + 2024);
  v5 = v4 & 0xFFFFFFF8;
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFF8;
  v8 = *(v6 + (v7 & ((v4 & 0xB5D40890 | 0x4A2BF76F) - 1831847764 + (v4 & 0x4A2BF768 | 0xB5D40890) + 1)));
  v9 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (0x24C9A0DDB75271C0 - ((v8 + v9) | 0x24C9A0DDB75271C0) + ((v8 + v9) | 0xDB365F2248AD8E3FLL)) ^ 0x19996188775C36DBLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((2 * (v12 + v11)) | 0xDBED9F3E7B6F9F08) - (v12 + v11) + 0x12093060C248307CLL) ^ 0x88049B42253A7B78;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x6FF046966119128DLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xA1B29DC5D776132BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v2;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0xB0769C9ADCBB7C70) - (v21 + v20) - 0x583B4E4D6E5DBE39) ^ 0x7F0302AD5BBB9819;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x115B4CE013348C54) - (v24 + v23) + 0x7752598FF665B9D6) ^ 0xDCF8A75E832B85A5;
  LOBYTE(v4) = 8 * (v4 & 7);
  *(v0 + 1787) = ((__ROR8__(v25, 8) + (v25 ^ __ROR8__(v23, 61))) ^ 0x6F4F60BC0E025EE0) >> v4;
  v26 = *(v6 + (v7 & ((v5 | 0xD181AC3B) - 1831847764 + (v5 | 0x2E7E53C5))));
  v27 = (v26 + v9) ^ 0xC2AF3EAA3FF1B8E4;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x65F254DD188DB4FCLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x6FF046966119128DLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xA1B29DC5D776132BLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) ^ 0xBB44C97E5ED7358) - ((2 * ((v35 + v34) ^ 0xBB44C97E5ED7358)) & 0x72B101A4AC7BE2) - 0x7FC6A77F2DA9C20FLL) ^ 0x64893456C25E0645;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xD8C7B31FCA19D9DELL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x5455012E8AB1C38FLL;
  *(STACK[0x8070] + 8548) ^= v3 ^ (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v4);
  v41 = *(v0 + 3920) + 8;
  *(v0 + 296) = v41;
  v42 = STACK[0x57D8];
  v43 = *(STACK[0x57D8] + 8 * (v1 + 20706));
  *(v0 + 2032) = v41;
  *(v0 + 280) = v43;
  return (*(v42 + 8 * (LODWORD(STACK[0x4D50]) ^ 0x7B10)))();
}

uint64_t sub_1001043BC()
{
  *(v3 + 8) = 2101965948;
  *(v3 + 12) = v5 ^ 0x7D49747C ^ v2;
  return (*(v4 + 8 * (v5 ^ 0x1829 ^ (2035 * (v1 - 3083895697 + (v0 + v5 - 1) + 1 < *(STACK[0x7A0] - 0x2369327399A66D91))))))();
}

uint64_t sub_1001044A8(int a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v67 = *(v66 + v65 * a1 + 2129432 - ((((v65 * a1 + 2129432) * a2) >> 32) >> 9) * a4);
  v68 = v67 < ((v61 + 39) ^ 0x65u);
  v69 = *(v66 + (v67 | (v68 << 8)) * a1 + 2400510 - (((((v67 | (v68 << 8)) * a1 + 2400510) * a2) >> 32) >> 9) * a4);
  v70 = v69 & 0x57 ^ 0x5B;
  v71 = v69 & (2 * (v69 & (2 * (((2 * (((2 * v69) & 0xFFFFFFC2 | 0x21) & v69)) ^ 0x76) & v69 ^ v70)) ^ v70)) ^ v70;
  v72 = (v70 & 0xFFFFFFDF | (32 * ((v71 >> 4) & 1))) ^ v69 & (2 * v71);
  *(a8 + 4 * (v63 + 3677 * v65 - ((((v63 + 3677 * v65) * v62) >> 32) >> 12) * v64)) = (v69 ^ (2 * ((v70 & 0xDF | (32 * ((v72 & 0x10) != 0))) ^ v69 & (2 * v72)))) ^ (v60 - 77);
  return (*(a60 + 8 * ((553 * (v65 == 255)) ^ v61)))();
}

uint64_t sub_100104604()
{
  v2 = *(v0 + 568);
  v3 = *STACK[0x51F0];
  v4 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v3 + (((v2 & 0xFFFFFFF8) - 1831847764) & v4));
  v6 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v5) ^ 0xC2AF3EAA3FF1B8E4;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x65F254DD188DB4FCLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x6FF046966119128DLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xA1B29DC5D776132BLL;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (((2 * (v13 + v14)) | 0xE108A618FA5EDB48) - (v13 + v14) - 0x7084530C7D2F6DA4) ^ 0x9F80734D88CA2548;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xD8C7B31FCA19D9DELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0xB6C0544D80F94C2CLL) - (v19 + v18) - 0x5B602A26C07CA617) ^ 0xF0CAD4F7B5329A66;
  LODWORD(v2) = 5621 * ((((__ROR8__(v20, 8) + (v20 ^ __ROR8__(v18, 61))) ^ 0x6F4F60BC0E025EE0) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 32028458;
  LODWORD(v13) = v2 - 6152 * (((89362129 * v2) >> 32) >> 7);
  v21 = STACK[0xDCB8];
  v21[2602] = v21[v13];
  v22 = STACK[0xDCA8] + 10;
  v23 = *(v3 + (((v22 & 0x240B26D0) + (v22 & 0xDBF4D928 | 0x240B26D4) - 1160539371) & v4));
  v24 = (__ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8) + v23) ^ 0x91364DCB68334DBLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x448D6F6CA711D855;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xF5F2FED308AA2278;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x67536EC0FB8B549DLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0xE44E058F19235360) - 0xDD8FD38736E5650) ^ 0xAA04799048123BCLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v35 + v34 - ((2 * (v35 + v34)) & 0x7CF8E5CDBB79A668) + 0x3E7C72E6DDBCD334) ^ 0x1A0F39837C5C576DLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x40C9CFEA3CC5CBE1;
  LODWORD(v37) = 5621 * ((((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0x6F635C2EE5D7D2C6uLL) >> (8 * (v22 & 7u))) ^ *v22) + 32028458;
  v21[4286] = v21[v37 - 6152 * (((89362129 * v37) >> 32) >> 7)];
  v39 = STACK[0xDC98] + 5;
  v40 = __ROR8__(v39 & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = (v40 - 0x70824D863E123F43) ^ 0xA86A78D9F67FFA9ALL;
  v42 = (__ROR8__((v40 - 0x70824D863E123F43) ^ 0xD387EB17F911FF76, 8) + v41) ^ 0x3A7C64F71FBFC65BLL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xFBC18F8B9568C440;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x4AE5CE6F63977933;
  v47 = __ROR8__(v46, 8);
  v48 = v46 ^ __ROR8__(v45, 61);
  v49 = (((2 * ((v47 + v48) ^ 0x7C04952BF2BBE57)) | 0xBE122550364D4C42) - ((v47 + v48) ^ 0x7C04952BF2BBE57) - 0x5F0912A81B26A621) ^ 0x709D90A02FD69B61;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xF7721CC6F3AEFBDCLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xE6B7173A9B2BB05DLL;
  LODWORD(v39) = (((__ROR8__(v53, 8) + (v53 ^ __ROR8__(v52, 61))) ^ 0x94AC86FF716F8E22) >> (8 * (v39 & 7u))) ^ *v39;
  v21[5917] = v21[5621 * v39 + 32028458 - 6152 * (((89362129 * (5621 * v39 + 32028458)) >> 32) >> 7)];
  v54 = STACK[0xDCA0];
  *(v0 + 576) = STACK[0xDCA0];
  v54 += 18;
  *(v0 + 296) = v54;
  v55 = STACK[0x57D8];
  v56 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2368));
  *(v0 + 584) = v54;
  *(v0 + 280) = v56;
  return (*(v55 + 8 * (v1 + 9870)))();
}

uint64_t sub_100104B70(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x5760]) = a4;
  LODWORD(STACK[0x5770]) = v5;
  STACK[0x5780] = v6;
  return (*(STACK[0x57D8] + 8 * (((23 * ((v4 + 21210) ^ 0x71E0) + 2833 * ((v4 + 21210) ^ 0x73DB) - 31063) * (v7 + LODWORD(STACK[0x57C0]) > v8)) ^ (v4 + 21210))))(v7);
}

uint64_t sub_100104C44()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x649B)))(1028);
  STACK[0xD738] = v2;
  return (*(v1 + 8 * ((15 * (((v2 == 0) ^ (v0 - 1)) & 1)) | v0)))();
}

uint64_t sub_100104DE8()
{
  STACK[0xD9C0] = STACK[0x7628];
  STACK[0xD9C8] = STACK[0x58D0];
  v1 = STACK[0x7ED8];
  v2 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xD9D0] = v2;
  STACK[0x7ED8] = v1 + 32;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v0 + 28976)))(v2, 0, 32);
  STACK[0x9950] = v2;
  STACK[0xCF38] = *(v3 + 8 * v0);
  return (*(v3 + 8 * ((v0 + 4866) ^ v0)))(v4);
}

uint64_t sub_100104EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v10 = STACK[0x87C];
  v11 = (243 * (v9 & 0xF) + 5589 - 965 * (((8693 * (243 * (v9 & 0xFu) + 5589)) >> 16) >> 7));
  v12 = STACK[0x2C8];
  LOBYTE(STACK[0x87C]) = *(STACK[0x2C8] + v11);
  *(v12 + v11) = v10;
  v13 = STACK[0x5AA];
  v14 = (243 * (a7 % 0xF) + 5832 - 965 * (((8693 * (243 * (a7 % 0xF) + 5832)) >> 16) >> 7));
  v15 = v7 % 0xD;
  LOBYTE(STACK[0x5AA]) = *(v12 + v14);
  *(v12 + v14) = v13;
  v16 = 243 * (v8 % 0xE) + 6075;
  v17 = v16 - 1930 * ((2225372 * v16) >> 32);
  v18 = STACK[0x69D];
  if (v17 >= 0x3C5)
  {
    v17 -= 965;
  }

  LOBYTE(STACK[0x69D]) = *(v12 + v17);
  *(v12 + (v16 - 965 * ((4450744 * v16) >> 32))) = v18;
  v19 = (v8 + 162114222) ^ v9;
  v20 = STACK[0x790];
  v21 = v19 + v7 - 2 * v19;
  v22 = v21 + v8 + 162114222;
  v23 = v19 ^ 0xD070456F;
  LOBYTE(STACK[0x790]) = *(v12 + (243 * v15 + 6318 - 965 * (((8693 * (243 * v15 + 6318)) >> 16) >> 7)));
  v24 = v8 + 162114222 - (v19 ^ 0xD070456F);
  v25 = 243 * (((2 * (v15 + 3)) & 0x2E) + ((v15 + 3) ^ 0x17));
  *(v12 + (v25 - 965 * (((8693 * v25) >> 16) >> 7))) = v20;
  v26 = STACK[0x883];
  v27 = (243 * (v23 % 0xC) + 6561 - 965 * (((8693 * (243 * (v23 % 0xC) + 6561)) >> 16) >> 7));
  LOBYTE(STACK[0x883]) = *(v12 + v27);
  v28 = a7 - v21 - v22;
  *(v12 + v27) = v26;
  v29 = (243 * (v28 % 0xB) + 6804 - 965 * (((8693 * (243 * (v28 % 0xB) + 6804)) >> 16) >> 7));
  v30 = STACK[0x5B1];
  LOBYTE(STACK[0x5B1]) = *(v12 + v29);
  *(v12 + v29) = v30;
  v31 = STACK[0x6A4];
  v32 = (243 * (v24 % 0xA) + 7047 - 965 * (((8693 * (243 * (v24 % 0xA) + 7047)) >> 16) >> 7));
  LOBYTE(STACK[0x6A4]) = *(v12 + v32);
  *(v12 + v32) = v31;
  v33 = (243 * (v22 % 9) + 7290 - 965 * (((8693 * (243 * (v22 % 9) + 7290)) >> 16) >> 7));
  v34 = ((v28 + v23) ^ v22) - 1930221753;
  v35 = STACK[0x797];
  LOBYTE(STACK[0x797]) = *(v12 + v33);
  *(v12 + v33) = v35;
  v36 = STACK[0x88A];
  v37 = (v22 ^ v24) - v22;
  v38 = (243 * ((v23 + 951) & 7) + 7533 - 965 * (((8693 * (243 * ((v23 - 1764883529) & 7) + 7533)) >> 16) >> 7));
  LOBYTE(STACK[0x88A]) = *(v12 + v38);
  *(v12 + v38) = v36;
  v39 = STACK[0x5B8];
  v40 = (243 * (v22 % 7) + 7776 - 965 * (((8693 * (243 * (v22 % 7) + 7776)) >> 16) >> 7));
  LOBYTE(STACK[0x5B8]) = *(v12 + v40);
  *(v12 + v40) = v39;
  v41 = STACK[0x6AB];
  v42 = (243 * (v37 % 6) + 8019 - 965 * (((8693 * (243 * (v37 % 6) + 8019)) >> 16) >> 7));
  LOBYTE(STACK[0x6AB]) = *(v12 + v42);
  *(v12 + v42) = v41;
  LOBYTE(v42) = STACK[0x79E];
  v43 = (243 * (v34 % 5) + 8262 - 965 * (((8693 * (243 * (v34 % 5) + 8262)) >> 16) >> 7));
  LOBYTE(STACK[0x79E]) = *(v12 + v43);
  *(v12 + v43) = v42;
  LODWORD(v43) = v34 ^ (v23 - 1764883529);
  v44 = 243 * ((1 - v23) & 3) + 8505;
  v45 = (v44 - 965 * (((8693 * v44) >> 16) >> 7));
  LODWORD(v43) = v43 + v22 - v37;
  LOBYTE(v32) = STACK[0x891];
  LOBYTE(STACK[0x891]) = *(v12 + v45);
  LODWORD(v42) = v43 % 3;
  *(v12 + v45) = v32;
  LODWORD(v45) = v43 % 3 + 13;
  LOBYTE(v43) = v43 ^ v37;
  LOWORD(v37) = 243 * (((2 * v45) & 0x2E) + (v45 ^ 0x17)) - 965 * (((8693 * (243 * (((2 * v45) & 0x2E) + (v45 ^ 0x17)))) >> 16) >> 7);
  LOBYTE(v45) = STACK[0x5BF];
  LOBYTE(STACK[0x5BF]) = *(v12 + v37);
  *(v12 + (243 * v42 + 8748 - 965 * (((8693 * (243 * v42 + 8748)) >> 16) >> 7))) = v45;
  LOBYTE(v37) = STACK[0x6B2];
  v46 = (243 * (38 - (v43 & 1)) - 965 * (((2112399 * (38 - (v43 & 1))) >> 16) >> 7));
  LOBYTE(STACK[0x6B2]) = *(v12 + v46);
  *(v12 + v46) = v37;
  return (*(a5 + 8 * a6))(705842536, 143138834, 137547040, 2219183144, 722550850);
}

uint64_t sub_100105418(uint64_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v9 = ((a2 + a7 + 362) & 0x25B0EDFB ^ 0x6626) * v8;
  *(*(v7 + 4000) + 4 * ((v9 + a5) % 0x2240u)) = *(*(v7 + 4000) + 4 * ((v9 + a3) % 0x2240u));
  return (*(STACK[0x57D8] + 8 * ((15057 * (v8 == 255)) ^ a7)))();
}

uint64_t sub_10010592C()
{
  v3 = v0 + 2120236533;
  v4 = (*(v2 + 8 * (v0 ^ (v0 - 971))))(v1);
  return (*(v2 + 8 * ((37312 * ((v3 + 448084871) > 0xFEEB4BE5)) ^ (v3 | 0x70B8))))(v4);
}

uint64_t sub_10010599C()
{
  v3 = *(v0 + 856) - 0x79CEC8CF5A6FCE82;
  v4 = STACK[0xD40];
  v5 = STACK[0x5D0];
  v6 = &STACK[0x2280] + STACK[0x1310];
  STACK[0x1310] += ((v1 - 2245) ^ 0xFFFFFFFFFFFFA26ELL) + (v1 - 15925);
  STACK[0x1898] = v4;
  STACK[0xA20] = v5;
  v7 = *(v2 + 8 * (v1 ^ 0x289B));
  STACK[0x250] = v6;
  v8 = v7();
  STACK[0x15A0] = 0;
  if (v3)
  {
    v9 = v4 == 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || v5 == 0;
  return (*(v2 + 8 * ((507 * v11) ^ v1)))(v8);
}

uint64_t sub_100105A54()
{
  LODWORD(STACK[0x3D38]) = 0;
  LODWORD(STACK[0x3D20]) = 0;
  LODWORD(STACK[0x3AF0]) = 0;
  LODWORD(STACK[0x3800]) = 0;
  LODWORD(STACK[0x3988]) = 0;
  LODWORD(STACK[0x3D78]) = 0;
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
  v3 = *(v1 + 8 * (2 * (v0 ^ 0x6C1D) - 16725));
  STACK[0x3B18] = HIDWORD(v2);
  STACK[0x31E0] = v2;
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
  LODWORD(STACK[0x3980]) = 1;
  LODWORD(STACK[0x3E40]) = 1;
  LODWORD(STACK[0x3D70]) = 1;
  return v3();
}

uint64_t sub_100105B38(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  LODWORD(STACK[0x3D88]) = a5 & STACK[0x2310];
  STACK[0x3840] = (a6 * v7) ^ 0x18181818u;
  v8 = *(v6 + 8 * a1);
  LODWORD(STACK[0x3D70]) = (a1 + 8718) | 0x1800;
  return v8();
}

uint64_t sub_100105C38()
{
  *(STACK[0xDCB0] + 4 * ((6419 * v0 + 36215998) % 0x2240u)) = 1111003110;
  LODWORD(STACK[0x5680]) = *(STACK[0x5730] + 1988);
  v2 = STACK[0xDCB8];
  LODWORD(STACK[0x5660]) = *(STACK[0xDCB8] + 3740);
  LODWORD(STACK[0x5710]) = v2[2625];
  LODWORD(STACK[0x5670]) = v2[4423];
  LODWORD(STACK[0x5700]) = v2[1161];
  LODWORD(STACK[0x57C0]) = v2[3156];
  LODWORD(STACK[0x5720]) = v2[5538];
  LODWORD(STACK[0x5780]) = v2[3232];
  LODWORD(STACK[0x56C0]) = *(STACK[0x5760] + 1404);
  LODWORD(STACK[0x57A0]) = v2[3634];
  STACK[0x56E0] = (v2 + 4096);
  STACK[0x5740] = v2;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_100105E4C@<X0>(int a1@<W0>, int a2@<W3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v21 = *(v10 + 4 * (v7 + a5 - 2));
  HIDWORD(v23) = v21 ^ a4;
  LODWORD(v23) = v21 ^ (a2 + 0x20000);
  v22 = v23 >> 17;
  HIDWORD(v23) = (((a7 + v9) & a3) + v14) ^ v21;
  LODWORD(v23) = v21 ^ a2;
  v24 = v22 ^ (v21 >> 10) ^ (v23 >> 19);
  v25 = *(v10 + 4 * (v7 + a5 - 15));
  HIDWORD(v23) = v25 ^ v15;
  LODWORD(v23) = v25 ^ (a1 - 106);
  v26 = v23 >> 7;
  HIDWORD(v23) = v25 ^ v16;
  LODWORD(v23) = v25 ^ a2;
  v27 = (v23 >> 18) ^ (v25 >> 3) ^ v26;
  v28 = *(v10 + 4 * (v7 + a5 - 16));
  v29 = (*(v10 + 4 * (v7 + a5 - 7)) ^ a1) + (((v28 ^ v18) + v20) ^ ((v28 ^ 0xEA96081F) + 359266273) ^ ((v28 ^ 0xBEA6553D) + 1096395459)) + (((v27 ^ 0x52D1C730) - 1379303854) ^ ((v27 ^ 0xFA78DD5E) + 90203200) ^ ((v27 ^ 0xB0417643) + 1331285795)) + (((v24 ^ 0x6877248B) + 1959257695) ^ ((v24 ^ 0x451EE6F1) + 1504584741) ^ ((v24 ^ 0x2D5812A2) + 837341304)) - 619093077;
  *(v10 + 4 * (v7 + a5)) = v29 ^ ((v29 ^ 0x438DBB8B) - 1539985943) ^ ((v29 ^ 0xD05CB1C9) + 937732011) ^ ((v29 ^ a6) + v8) ^ ((v29 ^ v11) + v19) ^ v17;
  return (*(v13 + 8 * ((((v7 + 1 + a5) > 0x3F) * v12) ^ a7)))();
}

uint64_t sub_10010603C()
{
  v3 = STACK[0xAF8];
  *v3 = v2;
  v3[1] = v2;
  return (*(v0 + 8 * ((((v1 - 406) | 0x6040) - 1767) ^ v1)))();
}

uint64_t sub_10010619C()
{
  v2 = *(STACK[0x1858] + 24);
  STACK[0x1620] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 + 1211060699 + ((v0 - 1538236329) | 0x13800000) + 2004)) ^ v0)))();
}

uint64_t sub_10010622C@<X0>(int a1@<W8>)
{
  STACK[0x1608] = *(v7 + 8 * v2);
  STACK[0x988] = v1;
  LODWORD(STACK[0x173C]) = v3;
  STACK[0xBB0] = v5;
  STACK[0xA70] = v4;
  STACK[0xFA0] = 0x79CEC8CF5A6FCEBALL;
  LODWORD(STACK[0xC34]) = -769884012;
  LODWORD(STACK[0xB94]) = -769884012;
  STACK[0x1170] = v6;
  STACK[0x10E0] = 0x55A8D952E5D4689ELL;
  return (*(v7 + 8 * (((v1 == 0) * (a1 - 36504 + a1 - 16223)) ^ a1)))();
}

uint64_t sub_1001062CC@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v14 = *(a3 - v6 + 32 * v6);
  v15 = (((v14 ^ 0x1248405) + ((v5 + v12) ^ 0xFEDB4FEF)) ^ ((v14 ^ 0x9440004C) + v7) ^ ((v14 ^ v8) + 1788574533)) * v4 + 134794;
  *(a3 + (31 * v6 + v11 - ((((31 * v6 + v11) * a1) >> 16) >> 7) * v9)) = v14 ^ v10 ^ *(a4 + v15 - v15 / 0x3A0 * v13);
  return (*(STACK[0x6D8] + 8 * (((v6 == 15) * a2) ^ v5)))();
}

uint64_t sub_10010639C@<X0>(int a1@<W8>)
{
  v5 = *v2;
  STACK[0x10E8] = *(v4 + 8 * v3);
  STACK[0x918] = v5;
  LODWORD(STACK[0x1340]) = v1;
  STACK[0xDF0] = STACK[0x4C0];
  LODWORD(STACK[0x14C4]) = STACK[0x408];
  return (*(v4 + 8 * a1))();
}

uint64_t sub_1001063DC@<X0>(int a1@<W8>)
{
  v3 = STACK[0xBE8];
  STACK[0xF00] = STACK[0xBE8];
  return (*(v2 + 8 * (((((v3 == 0) ^ (75 * (v1 ^ 0x55))) & 1) * (((v1 ^ 0x6E55) + 1425489517) ^ (a1 + 1))) ^ v1)))();
}

uint64_t sub_1001064B8()
{
  *v1[540] = 64;
  *v1[538] = 0x80;
  *v1[542] = 120;
  *v1[539] = -51;
  *v1[541] = 52;
  *v1[536] = -46;
  *v1[535] = 20;
  *v1[537] = 61;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100106618@<X0>(uint64_t a1@<X2>, unint64_t a2@<X5>, int a3@<W8>)
{
  STACK[0x5750] = v5;
  STACK[0xC788] = a2;
  STACK[0xC7E8] = v4;
  v6 = STACK[0x7ED8];
  v7 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x57A0] = (v7 + 520);
  STACK[0x62A8] = (v7 + 520);
  STACK[0x6CF8] = (v7 + 1056);
  STACK[0x7ED8] = v6 + 1072;
  v8 = *(a2 + 4) + (((a3 ^ 0x2672) - 23541) ^ 0xBA1DAB2D);
  if (v8 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  *(v7 + 130) = 130;
  *(v7 + 131) = 1172461588;
  *(v7 + 66) = v7;
  *(v7 + 264) = 130;
  *(v7 + 265) = 1172461588;
  STACK[0x5790] = v7;
  *(v7 + 133) = v7 + 536;
  v10 = *(STACK[0x57D8] + 8 * ((39 * (*(a1 + 4) * *(v3 + 4) == 1172461588 * (*(a1 + 4) + *(v3 + 4)) - 1771946384)) ^ a3));
  STACK[0x57B0] = v9;
  return v10();
}

uint64_t sub_1001066FC(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v21 = v14 ^ (a4 - 235) ^ ((v17 ^ v12 ^ v8) + a4 - ((2 * (v17 ^ v12 ^ v8)) & 0x1EA));
  HIDWORD(v22) = *(*(&off_101353600 + (v13 ^ v19)) + v21 - ((v21 << ((12 * v10) ^ 0xD1)) & a2) + 56);
  LODWORD(v22) = HIDWORD(v22);
  v23 = ((v22 >> 1) - 569057944 - ((2 * (v22 >> 1)) & 0xBC29BAD0)) ^ a5;
  *(a1 + 4 * v8) = v11 ^ v15 ^ a6 ^ a3 ^ v16 ^ v18 ^ a8 ^ a7 ^ 0x4EC82615 ^ (v23 - ((2 * v23) & 0xDF8E7BC8) - 272155164);
  return (*(STACK[0x57D8] + 8 * (((v9 == 0) * v20) ^ v13)))();
}

uint64_t sub_1001067F4()
{
  v0 = STACK[0x51B8] - 18;
  v1 = STACK[0x57D8];
  v2 = *(v1 + 8 * ((((*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9192)))(16) == 0) * LODWORD(STACK[0x25DC])) | v0));
  return v2();
}

uint64_t sub_100106998@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8];
  LOWORD(STACK[0xD93A]) = a1;
  return (*(STACK[0x57D8] + 8 * (v1 - 17527)))();
}

uint64_t sub_100106A30()
{
  v4 = *(STACK[0x5060] + (STACK[0x5020] & STACK[0x5440]));
  v5 = v1 ^ 0xB88801D4E1C76353 ^ v0;
  v6 = (__ROR8__(v1 ^ 0xB88801D4E1C76353, 8) + v5) ^ 0x38C8B16AE7056877;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (0xCCD500B9CADFE680 - ((v8 + v7) | 0xCCD500B9CADFE680) + ((v8 + v7) | 0x332AFF463520197FLL)) ^ 0xD6AA4E3BB9E5FC2ELL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xE1A1FD5BD155F97ALL;
  v12 = __ROR8__(v11, 8);
  v13 = v11 ^ __ROR8__(v10, 61);
  v14 = (((2 * (v12 + v13)) & 0xFD75B0EFEE21700ELL) - (v12 + v13) + 0x145278808EF47F8) ^ 0xDB256C840B4DF861;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (0x37ADC3364F29E26DLL - ((v16 + v15) | 0x37ADC3364F29E26DLL) + ((v16 + v15) | 0xC8523CC9B0D61D92)) ^ 0x3267DE047BE82C55;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xD2F00CE620E5D3AELL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = ((((2 * (v21 + v20)) & 0x1A2EFF8CBD14089ALL) - (v21 + v20) + 0x72E88039A175FBB2) ^ 0x869B8B080F058EC9) >> STACK[0x57B0];
  v23 = STACK[0x5188] ^ 0xE580B17D8CC5E551 ^ STACK[0x5190];
  v24 = __ROR8__(STACK[0x5188] ^ 0xE580B17D8CC5E551, 8);
  v25 = (((2 * (v24 + v23)) & 0xA3E68684BA38B2E2) - (v24 + v23) + 0x2E0CBCBDA2E3A68ELL) ^ 0xCFAD41E673B65FF4;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = __ROR8__((((2 * (v27 + v26)) & 0xDE1EBF2DACC8C47ALL) - (v27 + v26) - 0x6F0F5F96D664623ELL) ^ 0x4A90EB652A39225BLL, 8);
  v29 = (((2 * (v27 + v26)) & 0xDE1EBF2DACC8C47ALL) - (v27 + v26) - 0x6F0F5F96D664623ELL) ^ 0x4A90EB652A39225BLL ^ __ROR8__(v26, 61);
  v30 = (0xF365BF3F20AC7782 - ((v28 + v29) | 0xF365BF3F20AC7782) + ((v28 + v29) | 0xC9A40C0DF53887DLL)) ^ 0xF6AFA20D146DB9BALL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x910FBD1E15C3B38ALL) + 0x4887DE8F0AE1D9C5) ^ 0x9A77D2692A040A6BLL;
  v34 = ((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v31, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5480];
  v35 = *(STACK[0x5328] + (LODWORD(STACK[0x5218]) & ((STACK[0x5308] & 0xC8705D90) + (STACK[0x5308] | 0xC8705D94) - 1312040058)));
  v36 = (v35 + STACK[0x5700]) ^ 0xB88801D4E1C76353;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x38C8B16AE7056877;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) | 0x50E733BA35471100) - (v40 + v39) - 0x287399DD1AA38880) ^ 0xCDF328A096666DD1;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xE1A1FD5BD155F97ALL;
  v44 = v43 ^ __ROR8__(v42, 61);
  LODWORD(v22) = ((v22 ^ LODWORD(STACK[0x57C0]) ^ 0x76) - 1) ^ ((v22 ^ LODWORD(STACK[0x57C0]) ^ 0x3C) - 75) ^ ((v22 ^ LODWORD(STACK[0x57C0]) ^ 0x4A) - 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xDA604B0C03A2BF99;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) & 0x2B7D178235A2DAE4) - (v47 + v46) - 0x15BE8BC11AD16D73) ^ 0x107496F32E10A34ALL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xD2F00CE620E5D3AELL;
  v51 = ((__ROR8__(v50, 8) + (v50 ^ __ROR8__(v49, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x54B0];
  v52 = *(STACK[0x5320] + (LODWORD(STACK[0x5198]) & ((STACK[0x54E0] | 0xDC61EAE3) + v2 + (STACK[0x54E0] | 0x239E151D))));
  LODWORD(v34) = v34 ^ LODWORD(STACK[0x54A0]);
  v53 = (((2 * (v52 + STACK[0x5300])) & 0xB42C59A8E64CE860) - (v52 + STACK[0x5300]) + 0x25E9D32B8CD98BCFLL) ^ 0x9D61D2FF6D1EE89CLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x38C8B16AE7056877;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xE580B17D8CC5E551;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xE1A1FD5BD155F97ALL;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = __ROR8__((((2 * (v61 + v60)) & 0xDCD464D489D157CLL) - (v61 + v60) + 0x79195CD95BB17541) ^ 0xA37917D55813CAD8, 8);
  v63 = (((2 * (v61 + v60)) & 0xDCD464D489D157CLL) - (v61 + v60) + 0x79195CD95BB17541) ^ 0xA37917D55813CAD8 ^ __ROR8__(v60, 61);
  v64 = (0x268C8975D93F21EALL - ((v62 + v63) | 0x268C8975D93F21EALL) + ((v62 + v63) | 0xD973768A26C0DE15)) ^ 0x23469447EDFEEFD2;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xD2F00CE620E5D3AELL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = *(STACK[0x5370] + (LODWORD(STACK[0x50F0]) & ((STACK[0x5380] ^ 0xDC267B5F) + 1449309306 + (LODWORD(STACK[0x50F8]) | 0x47B30941))));
  v70 = ((v68 + v67) ^ 0xF4730B31AE70757BLL) >> STACK[0x52C0];
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ v51;
  v71 = (v69 + STACK[0x5360] - ((2 * (v69 + STACK[0x5360])) & 0x91799475EB9345DELL) - 0x374335C50A365D11) ^ 0x7034CBEE140EC1BCLL;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x52C8]) ^ v70;
  v74 = (((2 * (v73 + v72)) & 0xEB8B571EECE179BCLL) - (v73 + v72) + 0xA3A5470898F4321) ^ 0x32F2E51A6E8A2B56;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (v76 + v75 - ((2 * (v76 + v75)) & 0x60BA7AA6862C712ELL) + 0x305D3D5343163897) ^ 0xD5DD8C2ECFD3DDC6;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xE1A1FD5BD155F97ALL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xDA604B0C03A2BF99;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (v83 + v82 - ((2 * (v83 + v82)) & 0x8C0A4A2C8FE0CE54) + 0x4605251647F0672ALL) ^ 0xBC30C7DB8CCE56EDLL;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ (((__ROR8__(v86, 8) + (v86 ^ __ROR8__(v85, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5390]);
  v87 = (STACK[0x5100] - (STACK[0x5470] & 0xC2D63447666E11CLL) + 0x616B1A23B33708ELL) ^ 0xBE9EB076DAF413DDLL;
  v88 = v87 ^ STACK[0x5108];
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x38C8B16AE7056877;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((v91 + v90) | 0xE5A745A9A71286FDLL) - ((v91 + v90) | 0x1A58BA5658ED7902) + 0x1A58BA5658ED7902) ^ 0x27F4D42BD763ACLL;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0xE1A1FD5BD155F97ALL;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((2 * (v96 + v95)) & 0x18233F0AEE738E3ELL) - (v96 + v95) + 0x73EE607A88C638E0) ^ 0xA98E2B768B648779;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) & 0xF0857BF9F947F0E4) - (v99 + v98) - 0x7842BDFCFCA3F873) ^ 0x7D88A0CEC862364ALL;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0xD2F00CE620E5D3AELL;
  v103 = __ROR8__(v102, 8);
  v104 = __ROR8__(v101, 61);
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ (((v103 + (v102 ^ v104) - ((2 * (v103 + (v102 ^ v104))) & 0x1468D619B0425852) + 0xA346B0CD8212C29) ^ 0xFE47603D76515952) >> STACK[0x52D0]);
  v105 = ((STACK[0x4EF8] ^ 0x9B110310E1E9ADE1 | 0xBC0067861121F313) - (STACK[0x4EF8] ^ 0x9B110310E1E9ADE1 | 0x43FF9879EEDE0CECLL) + 0x43FF9879EEDE0CECLL) ^ 0x9F996542110F3DA1;
  v106 = v105 ^ STACK[0x4F00];
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * (v107 + v106)) | 0xEA5D3596E597E58CLL) - (v107 + v106) - 0x752E9ACB72CBF2C6) ^ 0x4DE62BA195CE9AB1;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (v110 + v109 - ((2 * (v110 + v109)) & 0xD678548262487E0ELL) - 0x14C3D5BECEDBC0F9) ^ 0xEBC9B3CBDE1DA56;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (v113 + v112 - ((2 * (v113 + v112)) & 0x7CC8C51024755826) - 0x419B9D77EDC553EDLL) ^ 0x5FC59FD3C36F5569;
  v115 = v114 ^ __ROR8__(v112, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0xDA604B0C03A2BF99;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0xFA35E2CDCB3E31C7;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0xD2F00CE620E5D3AELL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = ((((2 * (v122 + v121)) & 0xF954BB7C0D587E66) - (v122 + v121) + 0x355A241F953C0CCLL) ^ 0xF726A9705723B5B7) >> STACK[0x51B0];
  v124 = STACK[0x52F8] ^ 0xB88801D4E1C76353 ^ STACK[0x5358];
  v125 = (__ROR8__(STACK[0x52F8] ^ 0xB88801D4E1C76353, 8) + v124) ^ 0x38C8B16AE7056877;
  v126 = v125 ^ __ROR8__(v124, 61);
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x51C0]) ^ v123;
  v127 = (__ROR8__(v125, 8) + v126) ^ 0xE580B17D8CC5E551;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0xE1A1FD5BD155F97ALL;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0xDA604B0C03A2BF99;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0xFA35E2CDCB3E31C7;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((2 * (v135 + v134)) | 0xDA48A05478C92560) - (v135 + v134) + 0x12DBAFD5C39B6D50) ^ 0x3FD45CCC1C81411ELL;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = __ROR8__(v136, 8);
  LODWORD(v136) = (((((2 * (v138 + v137)) | 0xB6531143DED223F0) - (v138 + v137) + 0x24D6775E1096EE08) ^ 0x2F5A839041196483) >> STACK[0x5148]) ^ LODWORD(STACK[0x5150]);
  v139 = (((2 * (v4 + STACK[0x50D0])) & 0x40C6E1152E32A7AELL) - (v4 + STACK[0x50D0]) - 0x2063708A971953D8) ^ 0x67148EA18921CF7BLL;
  v140 = v139 ^ __ROR8__(v4, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((v141 + v140) | 0x96C345A206080C55) - ((v141 + v140) | 0x693CBA5DF9F7F3AALL) + 0x693CBA5DF9F7F3AALL) ^ 0xAE0BF4C8E10D6422;
  v143 = v142 ^ __ROR8__(v140, 61);
  LODWORD(v140) = ((v136 ^ 0x60) + 44) ^ ((v136 ^ 0xFFFFFFA5) - 17) ^ ((v136 ^ 0xFFFFFFC5) - 113);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0xE580B17D8CC5E551;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (((v146 + v145) | 0x1F4A2B20E6EDEF9ALL) - ((v146 + v145) | 0xE0B5D4DF19121065) - 0x1F4A2B20E6EDEF9BLL) ^ 0xFEEBD67B37B816E0;
  v148 = v147 ^ __ROR8__(v145, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0xDA604B0C03A2BF99;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v152 = __ROR8__((((v151 + v150) & 0x34BAF96D3AF137D1 ^ 0x20AAB06912C01040) + ((v151 + v150) ^ 0x97114D04A93DEFBDLL) - (((v151 + v150) ^ 0x97114D04A93DEFBDLL) & 0x34BAF96D3AF137D1)) ^ 0x599E56A458F2E9ABLL, 8);
  v153 = (((v151 + v150) & 0x34BAF96D3AF137D1 ^ 0x20AAB06912C01040) + ((v151 + v150) ^ 0x97114D04A93DEFBDLL) - (((v151 + v150) ^ 0x97114D04A93DEFBDLL) & 0x34BAF96D3AF137D1)) ^ 0x599E56A458F2E9ABLL ^ __ROR8__(v150, 61);
  v154 = ((2 * (v152 + v153)) & 0x8B1FA14AB3D7DC9CLL) - (v152 + v153);
  v155 = *(STACK[0x5058] + (LODWORD(STACK[0x4E18]) & ((STACK[0x5048] ^ 0xFF13D469) + 2066244785 + (STACK[0x4F08] & 0xFE27A8D0))));
  v156 = (v155 + STACK[0x5050]) ^ 0xB88801D4E1C76353;
  v157 = v156 ^ __ROR8__(v155, 61);
  v158 = __ROR8__(v156, 8);
  v159 = (v158 + v157 - ((2 * (v158 + v157)) & 0x61EA81A114969AD8) - 0x4F0ABF2F75B4B294) ^ 0x883DF1BA6D4E251BLL;
  v160 = v159 ^ __ROR8__(v157, 61);
  v161 = (__ROR8__(v159, 8) + v160) ^ 0xE580B17D8CC5E551;
  v162 = v161 ^ __ROR8__(v160, 61);
  v163 = __ROR8__(v161, 8);
  v164 = (((2 * (v163 + v162)) & 0x5904C9966719B3DELL) - (v163 + v162) + 0x537D9B34CC732610) ^ 0xB2DC666F1D26DF6ALL;
  v165 = v164 ^ __ROR8__(v162, 61);
  v166 = __ROR8__((v154 + 0x3A702F5AA61411B1) ^ 0xE88023BC86F1C21FLL, 8) + ((v154 + 0x3A702F5AA61411B1) ^ 0xE88023BC86F1C21FLL ^ __ROR8__(v153, 61));
  v167 = (__ROR8__(v164, 8) + v165) ^ 0xDA604B0C03A2BF99;
  v168 = v167 ^ __ROR8__(v165, 61);
  v169 = (__ROR8__(v167, 8) + v168) ^ 0xFA35E2CDCB3E31C7;
  v170 = v169 ^ __ROR8__(v168, 61);
  v171 = (__ROR8__(v169, 8) + v170) ^ 0xD2F00CE620E5D3AELL;
  v172 = ((STACK[0x4B00] & 0x4048B7EF00D72FEELL) - STACK[0x4DE8] - 0x20245BF7806B97F8) ^ 0x6753A5DC9E530B5BLL;
  v173 = v172 ^ STACK[0x4DE0];
  v174 = (__ROR8__(v172, 8) + v173) ^ 0x38C8B16AE7056877;
  v175 = v174 ^ __ROR8__(v173, 61);
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ ((v166 ^ 0xF4730B31AE70757BLL) >> STACK[0x50C0]);
  v176 = (__ROR8__(v174, 8) + v175) ^ 0xE580B17D8CC5E551;
  v177 = v176 ^ __ROR8__(v175, 61);
  v178 = __ROR8__(v171, 8) + (v171 ^ __ROR8__(v170, 61));
  v179 = (__ROR8__(v176, 8) + v177) ^ 0xE1A1FD5BD155F97ALL;
  v180 = v179 ^ __ROR8__(v177, 61);
  v181 = (__ROR8__(v179, 8) + v180) ^ 0xDA604B0C03A2BF99;
  v182 = v181 ^ __ROR8__(v180, 61);
  v183 = (__ROR8__(v181, 8) + v182) ^ 0xFA35E2CDCB3E31C7;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = __ROR8__(v183, 8);
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5040]) ^ ((v178 ^ 0xF4730B31AE70757BLL) >> STACK[0x5038]);
  v186 = (((2 * (v185 + v184)) | 0x48B7BE307B41FDE4) - (v185 + v184) + 0x5BA420E7C25F010ELL) ^ 0x76ABD3FE1D452D5CLL;
  v187 = __ROR8__(v186, 8) + (v186 ^ __ROR8__(v184, 61));
  v188 = *(STACK[0x4B58] + (STACK[0x4A70] & ((v3 ^ 0x15BA98BF) - 1879649830 + (LODWORD(STACK[0x4E38]) | 0xD48ACE81))));
  v189 = (v188 + STACK[0x4EB8]) ^ 0xB88801D4E1C76353;
  v190 = v189 ^ __ROR8__(v188, 61);
  v191 = __ROR8__(v189, 8);
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x4F48]) ^ ((v187 ^ 0xF4730B31AE70757BLL) >> STACK[0x4F10]);
  v192 = (((v191 + v190) | 0xB585D89285F12CF2) - ((v191 + v190) | 0x4A7A276D7A0ED30DLL) + 0x4A7A276D7A0ED30DLL) ^ 0x8D4D69F862F44485;
  v193 = v192 ^ __ROR8__(v190, 61);
  v194 = (__ROR8__(v192, 8) + v193) ^ 0xE580B17D8CC5E551;
  v195 = v194 ^ __ROR8__(v193, 61);
  v196 = __ROR8__(v194, 8);
  v197 = (v196 + v195 - ((2 * (v196 + v195)) & 0xE84C6E4D6C2FF292) - 0xBD9C8D949E806B7) ^ 0x1587CA7D67420033;
  v198 = v197 ^ __ROR8__(v195, 61);
  v199 = (__ROR8__(v197, 8) + v198) ^ 0xDA604B0C03A2BF99;
  v200 = v199 ^ __ROR8__(v198, 61);
  v201 = (__ROR8__(v199, 8) + v200) ^ 0xFA35E2CDCB3E31C7;
  v202 = v201 ^ __ROR8__(v200, 61);
  v203 = (__ROR8__(v201, 8) + v202) ^ 0xD2F00CE620E5D3AELL;
  v204 = __ROR8__(v203, 8) + (v203 ^ __ROR8__(v202, 61));
  v205 = *(STACK[0x4B90] + (STACK[0x4BA0] & ((STACK[0x4DC0] ^ 0x94C9B098) + 252046089 + (LODWORD(STACK[0x4B50]) | 0xD66C9ECB) - 340)));
  v206 = (((v205 + STACK[0x4DD8]) & 0x11511A82B78922C5 ^ 0x141020097080280) + ((v205 + STACK[0x4DD8]) ^ 0x5E94199260E5E05FLL) - (((v205 + STACK[0x4DD8]) ^ 0x5E94199260E5E05FLL) & 0x11511A82B78922C5)) ^ 0xF74D02C436ABA1C9;
  v207 = v206 ^ __ROR8__(v205, 61);
  v208 = (__ROR8__(v206, 8) + v207) ^ 0x38C8B16AE7056877;
  v209 = v208 ^ __ROR8__(v207, 61);
  v210 = __ROR8__(v208, 8);
  v211 = (((v210 + v209) | 0x7449A34F73B3CCD4) - ((v210 + v209) | 0x8BB65CB08C4C332BLL) - 0x7449A34F73B3CCD5) ^ 0x91C91232FF762985;
  v212 = v211 ^ __ROR8__(v209, 61);
  v213 = __ROR8__(v211, 8);
  v214 = (((2 * (v213 + v212)) | 0x7B409F3404FA408) - (v213 + v212) + 0x7C25FB065FD82DFCLL) ^ 0x627BF9A271722B7ELL;
  v215 = v214 ^ __ROR8__(v212, 61);
  v216 = __ROR8__(v214, 8);
  v217 = (v216 + v215 - ((2 * (v216 + v215)) & 0x8AE27ED60913D2A6) - 0x3A8EC094FB7616ADLL) ^ 0x1F117467072B56CALL;
  v218 = v217 ^ __ROR8__(v215, 61);
  v219 = __ROR8__(v217, 8);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ ((v204 ^ 0xF4730B31AE70757BLL) >> STACK[0x4EC8]);
  v220 = (((2 * (v219 + v218)) & 0xA52D10543A18DC86) - (v219 + v218) + 0x2D6977D5E2F391BCLL) ^ 0xD75C951829CDA07BLL;
  v221 = v220 ^ __ROR8__(v218, 61);
  v222 = __ROR8__(v220, 8);
  v223 = (((2 * (v222 + v221)) & 0xAB2D5C4E53CC2FA4) - (v222 + v221) - 0x5596AE2729E617D3) ^ 0x78995D3EF6FC3B83;
  v224 = v223 ^ __ROR8__(v221, 61);
  v225 = __ROR8__(v223, 8);
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x4B60]) ^ (((((2 * (v225 + v224)) | 0x3B9DCD5677BE1F74) - (v225 + v224) + 0x62311954C420F046) ^ 0x69BDED9A95AF7AC1) >> STACK[0x4DD0]);
  LODWORD(STACK[0x5230]) = v22 + 124;
  LODWORD(STACK[0x4F70]) = (((v34 ^ 0xFFFFFFDC) - 61) ^ ((v34 ^ 0xFFFFFFCB) - 42) ^ ((v34 ^ 0x17) + 10)) - 12;
  LODWORD(STACK[0x5378]) = v140 - 35;
  v226 = *(STACK[0x4B80] + (STACK[0x4B98] & ((((LODWORD(STACK[0x4B18]) | 0xDF5ACC25) + (STACK[0x4BA8] ^ 0x905299ED)) & 0xFFFFFFF8) + 177132296)));
  v227 = (v226 + STACK[0x4B78] - ((2 * (v226 + STACK[0x4B78])) & 0x25FB2DBEA297BBD6) - 0x6D026920AEB42215) ^ 0x2A75970BB08CBEB8;
  v228 = v227 ^ __ROR8__(v226, 61);
  v229 = (__ROR8__(v227, 8) + v228) ^ 0x38C8B16AE7056877;
  v230 = __ROR8__(v229, 8);
  v231 = v229 ^ __ROR8__(v228, 61);
  v232 = (((v230 + v231) | 0x7EC1EA32B16B7318) - ((v230 + v231) | 0x813E15CD4E948CE7) - 0x7EC1EA32B16B7319) ^ 0x9B415B4F3DAE9649;
  v233 = v232 ^ __ROR8__(v231, 61);
  v234 = __ROR8__(v232, 8);
  v235 = (v234 + v233 - ((2 * (v234 + v233)) & 0xA6500F81EF448B0) - 0x7ACD7F83F085DBA8) ^ 0x64937D27DE2FDD22;
  v236 = v235 ^ __ROR8__(v233, 61);
  v237 = (__ROR8__(v235, 8) + v236) ^ 0xDA604B0C03A2BF99;
  v238 = v237 ^ __ROR8__(v236, 61);
  v239 = (__ROR8__(v237, 8) + v238) ^ 0xFA35E2CDCB3E31C7;
  v240 = v239 ^ __ROR8__(v238, 61);
  v241 = (__ROR8__(v239, 8) + v240) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v175) = STACK[0x4A68];
  v242 = STACK[0x4A90];
  v243 = STACK[0x4AA8];
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x4B70]) ^ (((__ROR8__(v241, 8) + (v241 ^ __ROR8__(v240, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B68]);
  v244 = *(v243 + (v242 & STACK[0x5248]));
  v245 = __ROR8__((v244 + STACK[0x4B20]) ^ 0xB88801D4E1C76353, 8);
  v246 = (v244 + STACK[0x4B20]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v244, 61);
  v247 = (((2 * (v245 + v246)) & 0x4992BF425C5EA738) - (v245 + v246) - 0x24C95FA12E2F539DLL) ^ 0xE3FE113436D5C414;
  v248 = v247 ^ __ROR8__(v246, 61);
  v249 = (__ROR8__(v247, 8) + v248) ^ 0xE580B17D8CC5E551;
  v250 = v249 ^ __ROR8__(v248, 61);
  v251 = (__ROR8__(v249, 8) + v250) ^ 0xE1A1FD5BD155F97ALL;
  v252 = __ROR8__(v251, 8);
  v253 = v251 ^ __ROR8__(v250, 61);
  v254 = (((v252 + v253) ^ 0x2D75E4CC52838FBELL | 0x399ACCE5EAFE67B7) - ((v252 + v253) ^ 0x2D75E4CC52838FBELL | 0xC665331A15019848) - 0x399ACCE5EAFE67B8) ^ 0xCE8F6325BBDF5790;
  v255 = __ROR8__(v254, 8);
  v256 = v254 ^ __ROR8__(v253, 61);
  v257 = (((2 * ((v255 + v256) ^ 0xDD95D5784F80AFDDLL)) | 0x62BB289E8072CC58) - ((v255 + v256) ^ 0xDD95D5784F80AFDDLL) - 0x315D944F4039662CLL) ^ 0x16FDA3FAC487F836;
  v258 = __ROR8__(v257, 8);
  v259 = v257 ^ __ROR8__(v256, 61);
  v260 = (((2 * (v258 + v259)) | 0x5BCCAD4C570A055ALL) - (v258 + v259) - 0x2DE656A62B8502ADLL) ^ 0xFF165A400B60D103;
  v261 = ((__ROR8__(v260, 8) + (v260 ^ __ROR8__(v259, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B28];
  LODWORD(STACK[0x5248]) = (((v261 ^ LODWORD(STACK[0x4B30]) ^ 0x31) - 65) ^ ((v261 ^ LODWORD(STACK[0x4B30]) ^ 0xFFFFFFDB) + 85) ^ ((v261 ^ LODWORD(STACK[0x4B30]) ^ 0xFFFFFFEA) + 102)) + 117;
  LODWORD(STACK[0x52E0]) = 229;
  return (*(STACK[0x57D8] + 8 * v175))(LODWORD(STACK[0x52A0]));
}

uint64_t sub_1001085F8()
{
  *(v1 + 600) = v0 - 289235981 * ((2 * (v2 & 0x2DBEF648) - v2 - 767489615) ^ 0x55C3D98E) + 7750;
  v4 = STACK[0x4658];
  *(v1 + 592) = STACK[0x4658];
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 + 18173)))(v3 - 240);
  v8 = *(v1 + 604) != v0 - 13663 || *v4 == 0;
  return (*(v5 + 8 * ((v8 * ((3769 * (v0 ^ 0x3559)) ^ 0x5379)) ^ v0)))(v6);
}

uint64_t sub_1001086B0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 1471 + v0)))();
  STACK[0x6188] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1001086FC@<X0>(int a1@<W8>)
{
  *v1 = a1 - 17501 + 2917 * (v2 ^ 0x22DD);
  STACK[0x1D4C8] = 0;
  LODWORD(STACK[0x1D4C0]) = (v2 + 1717162325) ^ (1964904101 * (((((v4 - 240) | 0x4491508E) ^ 0xFFFFFFFE) - (~(v4 - 240) | 0xBB6EAF71)) ^ 0x414C44F5));
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x5E9E)))(v4 - 240);
  STACK[0x63A0] = v3;
  STACK[0x83C0] = &STACK[0xB44C];
  LODWORD(STACK[0x6454]) = -509128916;
  return (*(v5 + 8 * v2))(v6, 8840181, 1144888832, 2897213512, 3785838376, 3785820236, 3785785856, 4286125827);
}

uint64_t sub_10010880C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x47E0]) = LODWORD(STACK[0x53E0]) | LODWORD(STACK[0x5510]);
  LODWORD(STACK[0x43A0]) = LODWORD(STACK[0x53D8]) | LODWORD(STACK[0x54D0]);
  LODWORD(STACK[0x43F8]) = LODWORD(STACK[0x53D0]) | LODWORD(STACK[0x5430]);
  LODWORD(STACK[0x47D8]) = LODWORD(STACK[0x53C0]) | LODWORD(STACK[0x53F0]);
  LODWORD(STACK[0x4758]) = LODWORD(STACK[0x53B0]) | LODWORD(STACK[0x53C8]);
  LODWORD(STACK[0x54D0]) = a4 & (a8 ^ 0x1764D515);
  LODWORD(STACK[0x53F0]) = v15 & (a6 ^ 0xC7998D19);
  LODWORD(STACK[0x5430]) = v16 & (a3 ^ 0xD5BC057D);
  LODWORD(STACK[0x53E0]) = a7 & (a1 ^ 0x4D1F5CC3);
  LODWORD(STACK[0x43B0]) = ~a2;
  LODWORD(STACK[0x53D8]) = a5 & (v13 ^ 0x665CED4);
  LODWORD(STACK[0x5400]) = v11 & (v17 ^ 0x9219F0FE);
  LODWORD(STACK[0x53D0]) = v8 & (v10 ^ 0x2773C968);
  LODWORD(STACK[0x5510]) = v12 & (v9 ^ 0xBD7C6930);
  return (*(STACK[0x57D8] + 8 * (v14 ^ 0x2C1A)))();
}

uint64_t sub_100108A80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 0x683CBC57EAB92A36);
  STACK[0x17E8] = 0;
  STACK[0x9A8] = 0;
  return (*(v2 + 8 * (((v3 == 0x308E083E0C524CBELL) * (((v1 ^ 0x5F44) - 19147) ^ (v1 - 4996))) ^ v1)))();
}

uint64_t sub_10010904C(int a1)
{
  v3 = STACK[0x1BC8] + 10 + (v1 ^ 0xD21C8094);
  STACK[0x19E0] = v3;
  return (*(v2 + 8 * ((57 * (v3 <= STACK[0x1BC0])) ^ (a1 - 1211072276))))();
}

uint64_t sub_100109144@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q1>, int8x16_t a10@<Q2>, int8x16_t a11@<Q3>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v32 = vld4q_s8(a1);
  v21 = *(v20 - 108);
  v22 = veorq_s8(v32.val[1], a11);
  _Q22 = vmovl_u8(*v22.i8);
  _Q21 = vmovl_high_u8(v22);
  __asm
  {
    SHLL2           V23.4S, V21.8H, #0x10
    SHLL2           V24.4S, V22.8H, #0x10
  }

  *v19 = veorq_s8(vbslq_s8(vorrq_s8(vorrq_s8(vshll_n_s16(*_Q22.i8, 0x10uLL), vshll_n_u16(*&vmovl_u8(*&veorq_s8(v32.val[2], a11)), 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v32.val[0], a11))), 0x18uLL)), a9, veorq_s8(vmovl_u16(*&vmovl_u8(*v32.val[3].i8)), a8)), a10).u32[0];
  return (*(a7 + 8 * a3))(a1, a2, a3, a4, a5, v21, *(a7 + 8 * a3), a6, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_100109380()
{
  v2 = STACK[0xDBAC];
  LODWORD(STACK[0x8DDC]) = v0;
  LODWORD(STACK[0x619C]) = v2;
  v3 = v2 == ((v1 - 16529) ^ 0xF7785354);
  LOBYTE(STACK[0xB227]) = v3;
  return (*(STACK[0x57D8] + 8 * ((243 * v3) ^ (v1 - 9185))))();
}

uint64_t sub_100109404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v14 = v6 - 1;
  v15 = a4 + v4 + v14;
  v16 = a1 + v5 + v14;
  v17 = *v13 & 0xFFFFFFFFFFFFFFF8;
  v18 = *(*v12 + (((v15 & 0xFFFFFFF8 ^ 0xE7F9058E) - 506753242 + ((2 * (v15 & 0xFFFFFFF8)) | 0x300DF4E3)) & v17));
  v19 = (__ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8) + v18) ^ a2;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ v8;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v9;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a3;
  v26 = __ROR8__(v25, 8);
  v27 = v25 ^ __ROR8__(v24, 61);
  v28 = (((2 * (v26 + v27)) & 0x351A32D31BE828E6) - (v26 + v27) + 0x6572E696720BEB8CLL) ^ 0xA2AF2F60BE4E5CADLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v10;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = *(*v12 + (((v16 & 0x81F825D8) + (v16 & 0x7E07DA20 | 0x81F825D8) + 2010801084) & v17));
  v33 = __ROR8__(v30, 8);
  v34 = (__ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8) + v32) ^ a2;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0xBF361FB5D531BA00) - 0x2064F02515672300) ^ 0xCAA94D34D668B749;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0x16676CF6FBD48D3BLL - ((v33 + v31) | 0x16676CF6FBD48D3BLL) + ((v33 + v31) | 0xE9989309042B72C4)) ^ 0xB6157F37A7B378DFLL;
  v41 = (((2 * (v39 + v38)) | 0x41DE3EAF7FDD97C0) - (v39 + v38) - 0x20EF1F57BFEECBE0) ^ 0x29ACB9087DBF27BLL;
  v42 = v41 ^ __ROR8__(v38, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ a3;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v31, 61));
  v47 = (v45 + v44 - ((2 * (v45 + v44)) & 0xF4C5FC8B0DDA4364) + 0x7A62FE4586ED21B2) ^ 0xBDBF37B34AA89693;
  v48 = v47 ^ __ROR8__(v44, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v10;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = __ROR8__((0xFEDBC3442256D844 - ((v51 + v50) | 0xFEDBC3442256D844) + ((v51 + v50) | 0x1243CBBDDA927BBLL)) ^ 0x5EA9D0857E312DA0, 8) + ((0xFEDBC3442256D844 - ((v51 + v50) | 0xFEDBC3442256D844) + ((v51 + v50) | 0x1243CBBDDA927BBLL)) ^ 0x5EA9D0857E312DA0 ^ __ROR8__(v50, 61));
  *v16 = (((0x8FEB797CC36263C6 - (v52 | 0x8FEB797CC36263C6) + (v52 | 0x701486833C9D9C39)) ^ 0xB1D74E519858D411) >> (8 * (v16 & 7u))) ^ ((v46 ^ v11) >> (8 * (v15 & 7u))) ^ *v15;
  return (*(STACK[0x57D8] + 8 * (((v14 == 0) | ((v14 == 0) << 6)) ^ v7)))();
}

uint64_t sub_10010976C()
{
  v3 = *(v0 + 295);
  *(v0 + 1890) = v3;
  v4 = *(v0 + 2496);
  v5 = v4 & 0xFFFFFFF8;
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFF8;
  v8 = *(v6 + (v7 & ((((v4 & 0xFFFFFFF8) + 906698579) | 0x896E596D) - ((-906698580 - (v4 & 0xFFFFFFF8)) & 0x896E596C) + 1556420953)));
  v9 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v10 = (v8 + v9) ^ 0xC2AF3EAA3FF1B8E4;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x65F254DD188DB4FCLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0x6586B2F2B929D728) - (v14 + v13) - 0x32C359795C94EB95) ^ 0xA2CCE010C27206E6;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xA1B29DC5D776132BLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v2;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((v21 + v20) & 0x1D59D3E239B5923ALL ^ 0x1D41C04011801000) + ((v21 + v20) ^ 0x401817AAA835A27ELL) - (((v21 + v20) ^ 0x401817AAA835A27ELL) & 0x1D59D3E239B5923ALL)) ^ 0x858677575B99E99ALL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x5455012E8AB1C38FLL;
  v25 = __ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61));
  LOBYTE(v4) = 8 * (v4 & 7);
  *(v0 + 1891) = ((0x731083AA2B7C622FLL - (v25 | 0x731083AA2B7C622FLL) + (v25 | 0x8CEF7C55D4839DD0)) ^ 0xE3A01CE9DA81C330) >> v4;
  v26 = *(v6 + (v7 & (v5 - 1831847764)));
  v27 = (((2 * (v26 + v9)) & 0xAEEC5B012D500A70) - (v26 + v9) + 0x2889D27F6957FAC7) ^ 0xEA26ECD556A64223;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x65F254DD188DB4FCLL;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x6FF046966119128DLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xA1B29DC5D776132BLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v2;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xD8C7B31FCA19D9DELL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x5455012E8AB1C38FLL;
  **(v0 + 2480) = v3 ^ *(v0 + 2495) ^ (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> v4);
  v40 = *(v0 + 3920) + 38;
  *(v0 + 296) = v40;
  v41 = STACK[0x57D8];
  v42 = *(STACK[0x57D8] + 8 * (v1 ^ 0x511Fu));
  *(v0 + 2504) = v40;
  *(v0 + 280) = v42;
  return (*(v41 + 8 * (LODWORD(STACK[0x4D50]) ^ 0x7B10)))();
}

uint64_t sub_100109B00()
{
  STACK[0xE1C0] = v1;
  v2 = STACK[0x7B70];
  STACK[0xE1C8] = STACK[0x7B70];
  return (*(STACK[0x57D8] + 8 * ((21996 * (v1 - v2 > (((2 * (v0 ^ 0xC84) - 22608) | 0xA9) ^ 0xA6uLL))) ^ v0)))();
}

uint64_t sub_100109B60(uint64_t a1, uint64_t a2, int a3)
{
  v7 = STACK[0x51B8] - 21039;
  v8 = *v6;
  v9 = (v3 - (*(*v4 + (v8 & a2)) & 0x7FFFFFFF ^ a3)) * (STACK[0x51B8] + 1978709661) + 1058242832;
  *(v5 + 468) = *(*v4 + (v8 & 0xFADE648C)) & 0x7FFFFFFF ^ v9 ^ ((v9 ^ 0xD4E35E8) - 845001976) ^ ((v9 ^ 0x56885710) - 1771820544) ^ ((v9 ^ 0x1B2A0C1F) - 607751439) ^ ((v9 ^ 0x7FFFEFF7) - 1089236711) ^ 0x793DEA02;
  return (*(STACK[0x57D8] + 8 * (v7 ^ 0x11D0)))();
}

uint64_t sub_100109C78()
{
  v4 = v2 - 769884012 + (((v0 ^ 0x55FE9110) + 2015214794) ^ ((v0 ^ 0x5E1FAEAE) + 1945928568) ^ ((v0 ^ ((v1 - 3747) | 0x5002) ^ 0xBE1355A) + 637681878)) + 3;
  *(v3 + 3176) = v4;
  v5 = ((2 * v1) ^ 0x884) - 291030494 + v4;
  v6 = v5 < 0x16B1AC49;
  v7 = v5 > LODWORD(STACK[0x5770]) + 380742729;
  if (LODWORD(STACK[0x5770]) > 0xE94E53B6 != v6)
  {
    v7 = v6;
  }

  return (*(STACK[0x57D8] + 8 * ((495 * !v7) ^ v1)))();
}

uint64_t sub_100109DD4@<X0>(unsigned int a1@<W8>)
{
  v3 = a1 < 0x54014696;
  v4 = v1 + 1;
  if (v3 == v4 > ((v2 + 14423) ^ 0xABFEE13F))
  {
    v3 = v4 + 1409369750 < a1;
  }

  return (*(STACK[0x57D8] + 8 * ((11645 * v3) ^ v2)))();
}

uint64_t sub_100109E40@<X0>(int a1@<W5>, int a2@<W6>, int a3@<W8>)
{
  v9 = *(v7 + 4008);
  v10 = a1 + (*(v9 + v6 - 5896 * ((((v6 >> 3) * v5) >> 64) >> 4)) - 28) * v4;
  v11 = *(v9 + v10 - 5896 * (((11655271 * v10) >> 32) >> 4));
  v12 = v11 & 0xD4 ^ 0xB8;
  *(*(v7 + 4000) + 4 * ((a2 + ((a3 + 1491) ^ 0x52CBu) * v3) % 0x2240)) = (v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * v12) ^ v12)) ^ v12)) ^ v12)) ^ v12))) ^ (v8 - 204);
  return (*(STACK[0x57D8] + 8 * ((11037 * (v3 == 255)) ^ a3)))();
}

uint64_t sub_100109FB4()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] + 1733;
  v2 = LOBYTE(STACK[0x782F]) == 0;
  LOBYTE(STACK[0xE283]) = LOBYTE(STACK[0x782F]) == 0;
  v3 = -769883980;
  if (v2)
  {
    v3 = -769884028;
  }

  LODWORD(STACK[0xE284]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2468)))(LODWORD(STACK[0x2778]) ^ 0xD21C85D1 ^ v3);
  STACK[0xE288] = v5;
  *STACK[0x7890] = v5;
  return (*(v4 + 8 * (((16 * (v5 != 0)) | (32 * (v5 != 0))) ^ v1)))();
}

uint64_t sub_10010A070@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v15 = v8 - 1;
  v16 = *v14 & 0xFFFFFFFFFFFFFFF8;
  v17 = *(*v11 + ((((v7 + v15) & 0xFFFFFFF8) + 2050767130) & v16));
  v18 = (__ROR8__((v7 + v15) & 0xFFFFFFFFFFFFFFF8, 8) + v17) ^ a5;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x38C8B16AE7056877;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a2;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v13;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xDA604B0C03A2BF99;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v10;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = *(*v11 + ((((a7 + v15) & 0xFFFFFFF8) - 103642730) & v16));
  v32 = 0x678A9A28313B025 - ((v30 + v29) | 0x678A9A28313B025) + ((v30 + v29) | 0xF987565D7CEC4FDALL);
  v33 = (v31 + __ROR8__((a7 + v15) & 0xFFFFFFFFFFFFFFF8, 8)) ^ a1;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (0x7005671A706004F6 - ((v35 + v34) | 0x7005671A706004F6) + ((v35 + v34) | 0x8FFA98E58F9FFB09)) ^ 0x9AC8DA0BB36F9140;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a3;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = __ROR8__(v32 ^ 0x2B775ABB5C099C74, 8) + (v32 ^ 0x2B775ABB5C099C74 ^ __ROR8__(v29, 61));
  v42 = (v40 + v39 - ((2 * (v40 + v39)) & 0x6B74CFC4A4DDD316) + 0x35BA67E2526EE98BLL) ^ 0xD0157D517CD3D556;
  v43 = v42 ^ __ROR8__(v39, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v12;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a4;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (0x6C1372E79D2B344FLL - ((v48 + v47) | 0x6C1372E79D2B344FLL) + ((v48 + v47) | 0x93EC8D1862D4CBB0)) ^ 0xCC616126C14CC1ABLL;
  *(a7 + v15) = (((__ROR8__(v49, 8) + (v49 ^ __ROR8__(v47, 61))) ^ a6) >> (8 * ((a7 + v15) & 7))) ^ ((v41 ^ 0xF4730B31AE70757BLL) >> (8 * ((v7 + v15) & 7))) ^ *(v7 + v15);
  return (*(STACK[0x57D8] + 8 * (((v15 == 0) | (8 * (v15 == 0))) ^ v9)))();
}

uint64_t sub_10010A3F4()
{
  v3 = STACK[0x5490];
  v4 = ((2 * (v3 ^ 0x607EAEC3)) ^ 0x497554CE) & (v3 ^ 0x607EAEC3) ^ (2 * (v3 ^ 0x607EAEC3)) & 0xA4BAAA66;
  v5 = v4 ^ 0xA48AAA21;
  v6 = (v4 ^ 0x80BA8800) & (4 * (v2 & (v3 ^ 0xE0F6A683) ^ v1)) ^ v2 & (v3 ^ 0xE0F6A683) ^ v1;
  v7 = ((4 * v5) ^ 0x92EAA99C) & v5 ^ (4 * v5) & 0xA4BAAA64;
  v8 = (v7 ^ 0x80AAA800) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x24100263)) ^ 0x4BAAA670) & (v7 ^ 0x24100263) ^ (16 * (v7 ^ 0x24100263)) & 0xA4BAAA60;
  v10 = v8 ^ 0xA4BAAA67 ^ (v9 ^ 0xAAA200) & (v8 << 8);
  return (*(STACK[0x57D8] + 8 * v0))(LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5490]) ^ LODWORD(STACK[0x56F0]) ^ ((LODWORD(STACK[0x56F0]) ^ 0xE50A3685) + 88689405) ^ ((LODWORD(STACK[0x56F0]) ^ 0x46E8DA3B) - 1498700221) ^ ((LODWORD(STACK[0x56F0]) ^ 0xEBA180C7) + 199425215) ^ ((LODWORD(STACK[0x56F0]) ^ 0x57FFEFFF) - 1212378233) ^ (2 * ((v10 << 16) & 0x24BA0000 ^ v10 ^ ((v10 << 16) ^ 0x2A670000) & (((v9 ^ LODWORD(STACK[0x324])) << 8) & 0x24BA0000 ^ 0x4100000 ^ (((v9 ^ LODWORD(STACK[0x324])) << 8) ^ 0x3AAA0000) & (v9 ^ LODWORD(STACK[0x324]))))) ^ 0x8A58CB0B);
}

uint64_t sub_10010AB04()
{
  v1 = STACK[0xE358];
  v2 = LODWORD(STACK[0xE364]);
  v3 = LODWORD(STACK[0xE368]);
  v4 = LOBYTE(STACK[0xE37B]);
  v5 = LODWORD(STACK[0xE37C]);
  v6 = LODWORD(STACK[0xE380]);
  v7 = LODWORD(STACK[0xE394]);
  LODWORD(STACK[0x57C0]) = STACK[0xE3B8];
  return (*(STACK[0x57D8] + 8 * v0))(v1, v3, v2, v7, v5, v4, v6);
}

uint64_t sub_10010AB8C()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0x6718];
  STACK[0xA880] = 0x1883660EE8144416;
  STACK[0x7810] = v1;
  STACK[0x8000] = &STACK[0xA880];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2101965980;
  LODWORD(STACK[0xC0DC]) = -2013569079;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10010AC7C()
{
  v1 = (STACK[0x51B8] - 1783576809) ^ 0x95B146D7;
  v2 = (STACK[0x51B8] - 1783576809) & 0x6A4EE5BF;
  v3 = STACK[0x51B8] - 13861;
  LODWORD(STACK[0xC17C]) = v0;
  return (*(STACK[0x57D8] + 8 * ((6672 * (v0 == ((v1 - 143136766) ^ v2))) ^ v3)))();
}

uint64_t sub_10010ACF0()
{
  v0 = STACK[0x51B8];
  STACK[0xBBC8] = &STACK[0xC7C4];
  LODWORD(STACK[0xCDD8]) = 550409989;
  return (*(STACK[0x57D8] + 8 * (v0 - 17563)))();
}

uint64_t sub_10010AD44()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 24053)))();
  STACK[0x5C98] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_10010AED8()
{
  v0 = STACK[0xD88];
  STACK[0x7ED8] = STACK[0x7ED8] + 67 * (LODWORD(STACK[0xD88]) ^ 0x19D7u) - 731;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_10010AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v12 = *(STACK[0x5740] + (LODWORD(STACK[0x54D0]) & ((STACK[0x5670] ^ 0x3E9930C1) + 1000540249 + (STACK[0x5348] & 0x7D326180))));
  v13 = *(STACK[0x5328] + (LODWORD(STACK[0x5218]) & ((STACK[0x5308] ^ 0x189DB7CC) + 1637777742 + (STACK[0x5368] & 0x313B6F90))));
  v14 = *(STACK[0x5320] + (STACK[0x5550] & (((((STACK[0x54E0] - 2089483978) ^ 0xB566A150) - ((2031484304 - LODWORD(STACK[0x5290])) & 0x6ACD42A0)) & 0xFFFFFFF8) - 1406281416)));
  v15 = *(STACK[0x5370] + (((769803589 * (((STACK[0x5380] * a11) & 0xF6FC9EC8) + ((STACK[0x5380] * a11) | 0xF6FC9ECD)) - 1755436327) & STACK[0x52B0]) & 0xFFFFFFFFFFFFFFF8));
  v16 = ((STACK[0x53B0] & 0xB223C6F6A3A7D080) - STACK[0x5510] - 0x5911E37B51D3E841) ^ 0x1E661D504FEB74ECLL;
  v17 = v16 ^ STACK[0x53C0];
  v18 = __ROR8__(v16, 8);
  v19 = (0xFFD004447603A06ELL - ((v18 + v17) | 0xFFD004447603A06ELL) + ((v18 + v17) | 0x2FFBBB89FC5F91)) ^ 0x38E74AD16EF937E6;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0xFD7248496EB0BBA4) - 0x146DBDB48A7A22ELL) ^ 0x1B3995593B9DB883;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xE1A1FD5BD155F97ALL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (0x41ED7B436D30C337 - ((v26 + v25) | 0x41ED7B436D30C337) + ((v26 + v25) | 0xBE1284BC92CF3CC8)) ^ 0x6472CFB0916D8351;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0xFA35E2CDCB3E31C7;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0x88AFA5AC056AD3DBLL - ((v31 + v30) | 0x88AFA5AC056AD3DBLL) + ((v31 + v30) | 0x77505A53FA952C24)) ^ 0xA5A056B5DA70FF8ALL;
  v33 = __ROR8__(v32, 8) + (v32 ^ __ROR8__(v30, 61));
  v34 = (((2 * (v12 + STACK[0x56E0])) & 0x17463955FA82DD92) - (v12 + STACK[0x56E0]) + 0x745CE35502BE9136) ^ 0xCCD4E281E379F265;
  v35 = v34 ^ __ROR8__(v12, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x38C8B16AE7056877;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((2 * (v38 + v37)) & 0x5A4F9C16C4EF6778) - (v38 + v37) + 0x52D831F49D884C43) ^ 0xB7588089114DA912;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((2 * (v41 + v40)) | 0x14A074A6E2CC2FD6) - (v41 + v40) + 0x75AFC5AC8E99E815) ^ 0x6BF1C708A033EE91;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xDA604B0C03A2BF99;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0xFA35E2CDCB3E31C7;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) | 0x2DF8DEF81F762FF6) - (v48 + v47) - 0x16FC6F7C0FBB17FBLL) ^ 0xC40C639A2F5EC455;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = ((((2 * v33) & 0x68DEA5BB24616432) - v33 + 0x4B90AD226DCF4DE6) ^ 0xBFE3A613C3BF389DLL) >> STACK[0x57B0];
  v53 = ((((2 * (v51 + v50)) | 0xE71F883A1406DFAALL) - (v51 + v50) - 0x738FC41D0A036FD5) ^ 0x87FCCF2CA4731AAELL) >> STACK[0x5480];
  v54 = *(STACK[0x5258] + (STACK[0x5158] & ((((STACK[0x5138] & 0x431EA140) + (STACK[0x5250] ^ 0xA18F50A2)) & 0xFFFFFFF8) - 659756936)));
  LODWORD(v52) = ((v52 ^ LODWORD(STACK[0x57C0]) ^ 0xF) + 7) ^ ((v52 ^ LODWORD(STACK[0x57C0]) ^ 0xB) + 3) ^ ((v52 ^ LODWORD(STACK[0x57C0]) ^ 4) + 14);
  v55 = (v13 + STACK[0x5700] - ((2 * (v13 + STACK[0x5700])) & 0xA922ADAAF64CBF36) + 0x549156D57B265F9BLL) ^ 0xEC1957019AE13CC8;
  v56 = v55 ^ __ROR8__(v13, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x38C8B16AE7056877;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xE580B17D8CC5E551;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xE1A1FD5BD155F97ALL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xDA604B0C03A2BF99;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xFA35E2CDCB3E31C7;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = ((2 * (v67 + v66)) | 0x75D011BF4A75B452) - (v67 + v66);
  v69 = (((v14 + STACK[0x5300]) & 0xA3292E7BF2C3C5FBLL ^ 0x82210479E2C1C020) + ((v14 + STACK[0x5300]) & 0x5CD6D1840D3C3A04 ^ 0x1C92C18409083A01) - 1) ^ 0x263BC4290A0E9973;
  v70 = v69 ^ __ROR8__(v14, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (0xAA5982B1ADBE4753 - ((v71 + v70) | 0xAA5982B1ADBE4753) + ((v71 + v70) | 0x55A67D4E5241B8ACLL)) ^ 0x6D6ECC24B544D0DBLL;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (v74 + v73 - ((2 * (v74 + v73)) & 0xAED868BA4B96B3AALL) + 0x576C345D25CB59D5) ^ 0xB2EC8520A90EBC84;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (0x9374F86A70761BDALL - ((v77 + v76) | 0x9374F86A70761BDALL) + ((v77 + v76) | 0x6C8B07958F89E425)) ^ 0x8D2AFACE5EDC1D5FLL;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ 0xDA604B0C03A2BF99;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xFA35E2CDCB3E31C7;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (v84 + v83 - ((2 * (v84 + v83)) & 0x4C38F1F1A9DB8854) + 0x261C78F8D4EDC42ALL) ^ 0xF4EC741EF4081784;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = (v15 + STACK[0x5360]) ^ 0xB88801D4E1C76353;
  v88 = v87 ^ __ROR8__(v15, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x38C8B16AE7056877;
  v90 = v89 ^ __ROR8__(v88, 61);
  LODWORD(v56) = ((v53 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFF81) - 60) ^ ((v53 ^ LODWORD(STACK[0x54A0]) ^ 0x73) + 50) ^ ((v53 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFF2) - 79);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0xE580B17D8CC5E551;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v94 = __ROR8__((v68 - 0x3AE808DFA53ADA29) ^ 0xE818043985DF0987, 8) + ((v68 - 0x3AE808DFA53ADA29) ^ 0xE818043985DF0987 ^ __ROR8__(v66, 61));
  v95 = (v93 + v92) ^ 0xE1A1FD5BD155F97ALL;
  v96 = v95 ^ __ROR8__(v92, 61);
  v97 = __ROR8__(v95, 8);
  v98 = __ROR8__(v85, 8) + v86;
  v99 = (((2 * (v97 + v96)) & 0x9A2976E45BB6E988) - (v97 + v96) + 0x32EB448DD2248B3BLL) ^ 0xE88B0F81D18634A2;
  v100 = v99 ^ __ROR8__(v96, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xFA35E2CDCB3E31C7;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (v103 + v102 - ((2 * (v103 + v102)) & 0xB40080B9862A5AA2) - 0x25FFBFA33CEAD2AFLL) ^ 0x8F04CBAE3F0FEFFLL;
  v105 = ((STACK[0x4ED0] & 0x61B80E084A4CCA2CLL) - STACK[0x4ED8] - 0x30DC070425266517) ^ 0x2AA34986561C7FB8;
  v106 = v105 ^ STACK[0x4EE0];
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xE1A1FD5BD155F97ALL;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((2 * (v109 + v108)) & 0x722928D799B72810) - (v109 + v108) + 0x46EB6B9433246BF7) ^ 0x9C8B20983086D46ELL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v113 = __ROR8__(v104, 8) + (v104 ^ __ROR8__(v102, 61));
  v114 = (((2 * (v112 + v111)) | 0x9C3464051883AAB2) - (v112 + v111) + 0x31E5CDFD73BE2AA7) ^ 0x342FD0CF477FE49ELL;
  v115 = v114 ^ __ROR8__(v111, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (((2 * (v116 + v115)) & 0xF0B29DBF1EC07822) - (v116 + v115) + 0x7A6B120709FC3EELL) ^ 0xD556BDC6507A1040;
  v118 = __ROR8__(v117, 8) + (v117 ^ __ROR8__(v115, 61));
  v119 = (v54 + STACK[0x51A8] - ((2 * (v54 + STACK[0x51A8])) & 0x4E7CE6FE2597774ALL) - 0x58C18C80ED34445BLL) ^ 0x1FB672ABF30CD8F6;
  v120 = v119 ^ __ROR8__(v54, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x38C8B16AE7056877;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0xE580B17D8CC5E551;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xE1A1FD5BD155F97ALL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (((2 * (v127 + v126)) & 0xEDE5B56AB90ED31ELL) - (v127 + v126) + 0x90D254AA3789670) ^ 0xD36D6E46A0DA29E9;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xFA35E2CDCB3E31C7;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xD2F00CE620E5D3AELL;
  v133 = __ROR8__(v132, 8) + (v132 ^ __ROR8__(v131, 61));
  v134 = *(STACK[0x5110] + (STACK[0x5118] & ((((STACK[0x5128] & 0x3C8796B0) + (STACK[0x5130] ^ 0x9E43CB5A)) & 0xFFFFFFF8) - 604475968)));
  v135 = (((v134 + STACK[0x5160]) | 0xE7E95FC2BA92A134) - ((v134 + STACK[0x5160]) | 0x1816A03D456D5ECBLL) + 0x1816A03D456D5ECBLL) ^ 0x5F615E165B55C267;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ 0x38C8B16AE7056877;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0xE580B17D8CC5E551;
  v140 = __ROR8__(v139, 8);
  v141 = v139 ^ __ROR8__(v138, 61);
  v142 = (((2 * (v140 + v141)) | 0x7435B57B811FFE60) - (v140 + v141) - 0x3A1ADABDC08FFF30) ^ 0xDBBB27E611DA064ALL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (((2 * (v144 + v143)) & 0xFFBA6A392131F6CCLL) - (v144 + v143) - 0x7FDD351C9098FB67) ^ 0x5A4281EF6CC5BB00;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0xFA35E2CDCB3E31C7;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = __ROR8__(v147, 8);
  v150 = (((v149 + v148) | 0xC08682611DCC2B8ELL) - ((v149 + v148) | 0x3F797D9EE233D471) + 0x3F797D9EE233D471) ^ 0x12768E873D29F820;
  v151 = (v98 ^ 0xF4730B31AE70757BLL) >> STACK[0x52C0];
  v152 = ((0x2012741014428394 - (v113 | 0x2012741014428394) + (v113 | 0xDFED8BEFEBBD7C6BLL)) ^ 0x2B9E80DE45CD0910) >> STACK[0x5390];
  v153 = (v118 ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0];
  v154 = ((((2 * v133) & 0x712CC0A2BD59F914) - v133 + 0x47699FAEA1530375) ^ 0xB31A949F0F23760ELL) >> STACK[0x51B0];
  v155 = ((__ROR8__(v150, 8) + (v150 ^ __ROR8__(v148, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5148];
  v156 = *(STACK[0x5060] + (STACK[0x5020] & ((((STACK[0x5028] & 0xED4E1B40) + (STACK[0x50B0] ^ 0x76A70DA2)) & 0xFFFFFFF8) + 60107640)));
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ ((v94 ^ 0xF4730B31AE70757BLL) >> STACK[0x54B0]);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x52C8]) ^ v151;
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ v152;
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ v153;
  v157 = (v156 + STACK[0x50D0]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v156, 61);
  v158 = __ROR8__((v156 + STACK[0x50D0]) ^ 0xB88801D4E1C76353, 8);
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x51C0]) ^ v154;
  v159 = (v158 + v157) ^ 0x38C8B16AE7056877;
  v160 = v159 ^ __ROR8__(v157, 61);
  v161 = __ROR8__(v159, 8);
  LODWORD(v154) = v155 ^ LODWORD(STACK[0x5150]);
  v162 = (((2 * (v161 + v160)) & 0x6EF384F0C5E7A6D4) - (v161 + v160) - 0x3779C27862F3D36BLL) ^ 0x2D068CFA11C9C9C4;
  v163 = v162 ^ __ROR8__(v160, 61);
  v164 = (__ROR8__(v162, 8) + v163) ^ 0xE1A1FD5BD155F97ALL;
  v165 = v164 ^ __ROR8__(v163, 61);
  v166 = __ROR8__(v164, 8);
  v167 = (v166 + v165 - ((2 * (v166 + v165)) & 0x49B42DBA748CCA0CLL) - 0x5B25E922C5B99AFALL) ^ 0x7EBA5DD139E4DA9FLL;
  v168 = v167 ^ __ROR8__(v165, 61);
  v169 = __ROR8__(v167, 8);
  v170 = (v169 + v168 - ((2 * (v169 + v168)) & 0xF529B53F34E59FC4) + 0x7A94DA9F9A72CFE2) ^ 0x80A13852514CFE25;
  v171 = v170 ^ __ROR8__(v168, 61);
  v172 = (__ROR8__(v170, 8) + v171) ^ 0xD2F00CE620E5D3AELL;
  v173 = ((__ROR8__(v172, 8) + (v172 ^ __ROR8__(v171, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x50C0];
  v174 = *(STACK[0x5058] + (LODWORD(STACK[0x4E18]) & ((STACK[0x5048] & 0xF340A50) + (STACK[0x5048] | 0xF340A50) + 1795698378)));
  v175 = (v174 + STACK[0x5050] - ((2 * (v174 + STACK[0x5050])) & 0xB53421C96B0EF66CLL) + 0x5A9A10E4B5877B36) ^ 0xE212113054401865;
  v176 = v175 ^ __ROR8__(v174, 61);
  LODWORD(v174) = ((v154 ^ 0x68) - 58) ^ ((v154 ^ 0xFFFFFFE1) + 77) ^ ((v154 ^ 0xFFFFFF89) + 37);
  v177 = (__ROR8__(v175, 8) + v176) ^ 0x38C8B16AE7056877;
  v178 = v177 ^ __ROR8__(v176, 61);
  v179 = __ROR8__(v177, 8);
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ v173;
  v180 = (((2 * (v179 + v178)) | 0x4BB90C61C6350664) - (v179 + v178) + 0x5A2379CF1CE57CCELL) ^ 0x405C374D6FDF6663;
  v181 = v180 ^ __ROR8__(v178, 61);
  v182 = (__ROR8__(v180, 8) + v181) ^ 0xE1A1FD5BD155F97ALL;
  v183 = v182 ^ __ROR8__(v181, 61);
  v184 = __ROR8__(v182, 8);
  v185 = (((v184 + v183) | 0xE71E5954BE5408FCLL) - ((v184 + v183) | 0x18E1A6AB41ABF703) + 0x18E1A6AB41ABF703) ^ 0x3D7E1258BDF6B765;
  v186 = v185 ^ __ROR8__(v183, 61);
  v187 = __ROR8__(v185, 8);
  v188 = __ROR8__((((2 * (v187 + v186)) | 0x5EA00D2A0673EC8ELL) - (v187 + v186) - 0x2F5006950339F647) ^ 0xD565E458C807C780, 8);
  v189 = (((2 * (v187 + v186)) | 0x5EA00D2A0673EC8ELL) - (v187 + v186) - 0x2F5006950339F647) ^ 0xD565E458C807C780 ^ __ROR8__(v186, 61);
  v190 = (((v188 + v189) ^ 0x7F566A609FBFA5BDLL) - ((2 * ((v188 + v189) ^ 0x7F566A609FBFA5BDLL)) & 0x12696DC1EEFFC0DALL) - 0x76CB491F08801F93) ^ 0x2492D0664825967ELL;
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5040]) ^ (((__ROR8__(v190, 8) + (v190 ^ __ROR8__(v189, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5038]);
  v191 = (STACK[0x4DE8] - (STACK[0x4B00] & 0x7E55017C8B3DC3E0) - 0x40D57F41BA611E10) ^ 0x7A2816AA45982A3;
  v192 = v191 ^ STACK[0x4DE0];
  v193 = __ROR8__(v191, 8);
  v194 = (((2 * (v193 + v192)) & 0x441C994E66A9396CLL) - (v193 + v192) + 0x5DF1B358CCAB6349) ^ 0x653902322BAE0B3ELL;
  v195 = v194 ^ __ROR8__(v192, 61);
  v196 = __ROR8__(v194, 8);
  v197 = (((2 * (v196 + v195)) & 0xB7F42F7633F1CC1ELL) - (v196 + v195) - 0x5BFA17BB19F8E610) ^ 0x418559396AC2FCA1 ^ __ROR8__(v195, 61);
  v198 = (__ROR8__((((2 * (v196 + v195)) & 0xB7F42F7633F1CC1ELL) - (v196 + v195) - 0x5BFA17BB19F8E610) ^ 0x418559396AC2FCA1, 8) + v197) ^ 0xE1A1FD5BD155F97ALL;
  v199 = v198 ^ __ROR8__(v197, 61);
  v200 = (__ROR8__(v198, 8) + v199) ^ 0xDA604B0C03A2BF99;
  v201 = v200 ^ __ROR8__(v199, 61);
  v202 = (__ROR8__(v200, 8) + v201) ^ 0xFA35E2CDCB3E31C7;
  v203 = v202 ^ __ROR8__(v201, 61);
  v204 = (__ROR8__(v202, 8) + v203) ^ 0xD2F00CE620E5D3AELL;
  v205 = (STACK[0x4970] - (STACK[0x49C8] & 0x92757FDC43D885E8) - 0x36C54011DE13BD0CLL) ^ 0x71B2BE3AC02B21A7;
  v206 = v205 ^ STACK[0x4950];
  v207 = __ROR8__(v205, 8);
  v208 = (((2 * (v207 + v206)) & 0x3AFB5D72DBE6B3E4) - (v207 + v206) + 0x62825146920CA60DLL) ^ 0x5A4AE02C7509CE7ALL;
  v209 = v208 ^ __ROR8__(v206, 61);
  v210 = __ROR8__(v204, 8) + (v204 ^ __ROR8__(v203, 61));
  v211 = (__ROR8__(v208, 8) + v209) ^ 0xE580B17D8CC5E551;
  v212 = v211 ^ __ROR8__(v209, 61);
  v213 = (__ROR8__(v211, 8) + v212) ^ 0xE1A1FD5BD155F97ALL;
  v214 = v213 ^ __ROR8__(v212, 61);
  v215 = __ROR8__(v213, 8);
  v216 = (v215 + v214 - ((2 * (v215 + v214)) & 0x7FE6DD4034B9F3CELL) - 0x400C915FE5A30619) ^ 0x659325AC19FE467ELL;
  v217 = v216 ^ __ROR8__(v214, 61);
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x4F48]) ^ (((((2 * v210) & 0x8E1692EF2E83785ALL) - v210 + 0x38F4B68868BE43D2) ^ 0xCC87BDB9C6CE36A9) >> STACK[0x4F10]);
  v218 = (__ROR8__(v216, 8) + v217) ^ 0xFA35E2CDCB3E31C7;
  v219 = v218 ^ __ROR8__(v217, 61);
  v220 = (__ROR8__(v218, 8) + v219) ^ 0xD2F00CE620E5D3AELL;
  v221 = __ROR8__(v220, 8) + (v220 ^ __ROR8__(v219, 61));
  v222 = *(STACK[0x4B80] + (LODWORD(STACK[0x4AF8]) & (STACK[0x4BA8] - 489888513 - (STACK[0x4BA8] & 0x6890ABE0) + (STACK[0x4BA8] | 0x976F541B))));
  v223 = ((STACK[0x4870] | 0xE4C23E819DAF15F7) - (STACK[0x4870] | 0x1B3DC17E6250EA08) + 0x1B3DC17E6250EA08) ^ 0x1428FFC116AF0A6;
  v224 = v223 ^ STACK[0x49C0];
  v225 = (__ROR8__(v223, 8) + v224) ^ 0xE1A1FD5BD155F97ALL;
  v226 = v225 ^ __ROR8__(v224, 61);
  v227 = (__ROR8__(v225, 8) + v226) ^ 0xDA604B0C03A2BF99;
  v228 = v227 ^ __ROR8__(v226, 61);
  v229 = (__ROR8__(v227, 8) + v228) ^ 0xFA35E2CDCB3E31C7;
  v230 = v229 ^ __ROR8__(v228, 61);
  v231 = (__ROR8__(v229, 8) + v230) ^ 0xD2F00CE620E5D3AELL;
  v232 = (((v222 + STACK[0x4B78]) | 0x9A2AB7A9BED34653) - ((v222 + STACK[0x4B78]) | 0x65D54856412CB9ACLL) + 0x65D54856412CB9ACLL) ^ 0x22A2B67D5F142500;
  v233 = v232 ^ __ROR8__(v222, 61);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ ((v221 ^ 0xF4730B31AE70757BLL) >> STACK[0x4EC8]);
  v234 = (__ROR8__(v232, 8) + v233) ^ 0x38C8B16AE7056877;
  v235 = v234 ^ __ROR8__(v233, 61);
  v236 = (__ROR8__(v234, 8) + v235) ^ 0xE580B17D8CC5E551;
  v237 = v236 ^ __ROR8__(v235, 61);
  v238 = __ROR8__(v236, 8);
  v239 = (v238 + v237 - ((2 * (v238 + v237)) & 0x877F731AF4EFCA2CLL) + 0x43BFB98D7A77E516) ^ 0xA21E44D6AB221C6CLL;
  v240 = v239 ^ __ROR8__(v237, 61);
  v241 = __ROR8__(v239, 8);
  v242 = (((2 * (v241 + v240)) & 0x1D019327CB3B6BB2) - (v241 + v240) + 0x717F366C1A624A26) ^ 0xAB1F7D6019C0F5BFLL;
  v243 = v242 ^ __ROR8__(v240, 61);
  v244 = (__ROR8__(v242, 8) + v243) ^ 0xFA35E2CDCB3E31C7;
  v245 = v244 ^ __ROR8__(v243, 61);
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x4B60]) ^ (((__ROR8__(v231, 8) + (v231 ^ __ROR8__(v230, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4DD0]);
  v246 = (__ROR8__(v244, 8) + v245) ^ 0xD2F00CE620E5D3AELL;
  v247 = v246 ^ __ROR8__(v245, 61);
  v248 = __ROR8__(v246, 8);
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x4B70]) ^ (((((2 * ((v248 + v247) ^ 0x1650222D00E680C1)) & 0x28CE07B380B053BALL) - ((v248 + v247) ^ 0x1650222D00E680C1) + 0x6B98FC263FA7D622) ^ 0x89BBD53A91312398) >> STACK[0x4B68]);
  v249 = (STACK[0x4890] - ((2 * STACK[0x4890]) & 0x515B8297B7519CF0) + 0x28ADC14BDBA8CE78) ^ 0x9025C09F3A6FAD2BLL;
  v250 = v249 ^ STACK[0x4898];
  v251 = (__ROR8__(v249, 8) + v250) ^ 0x38C8B16AE7056877;
  v252 = v251 ^ __ROR8__(v250, 61);
  v253 = __ROR8__(v251, 8);
  v254 = (((2 * (v253 + v252)) | 0xDED8895B001E4D38) - (v253 + v252) + 0x1093BB527FF0D964) ^ 0xAECF5D00CCAC3CDLL;
  v255 = v254 ^ __ROR8__(v252, 61);
  v256 = __ROR8__(v254, 8);
  v257 = (v256 + v255 - ((2 * (v256 + v255)) & 0x115F57D9E259DDACLL) - 0x775054130ED3112ALL) ^ 0x690E56B7207917ACLL;
  v258 = v257 ^ __ROR8__(v255, 61);
  v259 = (__ROR8__(v257, 8) + v258) ^ 0xDA604B0C03A2BF99;
  v260 = v259 ^ __ROR8__(v258, 61);
  v261 = (__ROR8__(v259, 8) + v260) ^ 0xFA35E2CDCB3E31C7;
  v262 = v261 ^ __ROR8__(v260, 61);
  v263 = __ROR8__(v261, 8);
  v264 = (v263 + v262 - ((2 * (v263 + v262)) & 0xEB0849AB4F04146ELL) + 0x758424D5A7820A37) ^ 0xA77428338767D999;
  LODWORD(v264) = (((__ROR8__(v264, 8) + (v264 ^ __ROR8__(v262, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4B28]) ^ LODWORD(STACK[0x4B30]);
  v265 = STACK[0x33C8];
  v266 = ((v265 | 0xD1CBCF4AB2FB630FLL) - (v265 | 0x2E3430B54D049CF0) + 0x2E3430B54D049CF0) ^ 0xBAB8446B159DC96 ^ STACK[0x3750];
  v267 = __ROR8__(((v265 | 0xD1CBCF4AB2FB630FLL) - (v265 | 0x2E3430B54D049CF0) + 0x2E3430B54D049CF0) ^ 0xBAB8446B159DC96, 8);
  v268 = (v267 + v266 - ((2 * (v267 + v266)) & 0xECFBC5A93A4E57F4) - 0x9821D2B62D8D406) ^ 0xC48001956191A3DLL;
  v269 = v268 ^ __ROR8__(v266, 61);
  v270 = __ROR8__(v268, 8);
  v271 = (v270 + v269 - ((2 * (v270 + v269)) & 0xFDFD5C48745C1150) + 0x7EFEAE243A2E08A8) ^ 0xAC0EA2C21ACBDB06;
  LODWORD(v271) = (((__ROR8__(v271, 8) + (v271 ^ __ROR8__(v269, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x3B10]) ^ LODWORD(STACK[0x3B1C]);
  v272 = (STACK[0x4EB0] - (STACK[0x37E8] & 0xD955984D84884EE6) + 0x6CAACC26C2442773) ^ 0xD422CDF223834420;
  v273 = v272 ^ STACK[0x49B8];
  v274 = (__ROR8__(v272, 8) + v273) ^ 0x38C8B16AE7056877;
  v275 = v274 ^ __ROR8__(v273, 61);
  v276 = __ROR8__(v274, 8);
  v277 = __ROR8__((((v276 + v275) ^ 0x3C88F3CA543FAC58) - ((2 * ((v276 + v275) ^ 0x3C88F3CA543FAC58)) & 0x9F479A8054026F9ALL) - 0x305C32BFD5FEC833) ^ 0x16AB8FF7F2FB7EC4, 8);
  v278 = (((v276 + v275) ^ 0x3C88F3CA543FAC58) - ((2 * ((v276 + v275) ^ 0x3C88F3CA543FAC58)) & 0x9F479A8054026F9ALL) - 0x305C32BFD5FEC833) ^ 0x16AB8FF7F2FB7EC4 ^ __ROR8__(v275, 61);
  v279 = (((2 * (v277 + v278)) | 0x23C3EEB4DE0CA32) - (v277 + v278) - 0x11E1F75A6F06519) ^ 0xE0BFE22E77A59C63;
  v280 = v279 ^ __ROR8__(v278, 61);
  v281 = (__ROR8__(v279, 8) + v280) ^ 0xDA604B0C03A2BF99;
  v282 = v281 ^ __ROR8__(v280, 61);
  v283 = __ROR8__(v281, 8);
  v284 = (((2 * (v283 + v282)) & 0x8A36AE1A3CBA3CAELL) - (v283 + v282) + 0x3AE4A8F2E1A2E1A8) ^ 0xC0D14A3F2A9CD06FLL;
  v285 = v284 ^ __ROR8__(v282, 61);
  v286 = __ROR8__(v284, 8);
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x5408]) ^ (((__ROR8__((((v286 + v285) | 0xCAA8726C233D0441) - ((v286 + v285) | 0x35578D93DCC2FBBELL) + 0x35578D93DCC2FBBELL) ^ 0x18587E8A03D8D7EFLL, 8) + ((((v286 + v285) | 0xCAA8726C233D0441) - ((v286 + v285) | 0x35578D93DCC2FBBELL) + 0x35578D93DCC2FBBELL) ^ 0x18587E8A03D8D7EFLL ^ __ROR8__(v285, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x53A8]);
  v287 = (STACK[0x52F8] ^ 0xE3E887C9) - 1772900015 + (STACK[0x52B8] & 0xC7D10F90);
  LODWORD(STACK[0x5230]) = v52 - 5;
  LODWORD(STACK[0x4F70]) = v56 - 48;
  LODWORD(STACK[0x5378]) = v174 + 123;
  LODWORD(STACK[0x5248]) = (((v264 ^ 0xFFFFFFC2) - 114) ^ ((v264 ^ 0xFFFFFF8E) - 62) ^ ((v264 ^ 0x4C) + 4)) - 75;
  LODWORD(STACK[0x4F98]) = (((v271 ^ 0xB) + 72) ^ ((v271 ^ 0xFFFFFFF2) - 65) ^ ((v271 ^ 0xFFFFFFF9) - 74)) + 36;
  v288 = *(STACK[0x54F0] + ((STACK[0x5500] & v287) & 0xFFFFFFFFFFFFFFF8));
  v289 = (v288 + STACK[0x4A60]) ^ 0xB88801D4E1C76353;
  v290 = v289 ^ __ROR8__(v288, 61);
  v291 = (__ROR8__(v289, 8) + v290) ^ 0x38C8B16AE7056877;
  v292 = v291 ^ __ROR8__(v290, 61);
  v293 = (__ROR8__(v291, 8) + v292) ^ 0xE580B17D8CC5E551;
  v294 = v293 ^ __ROR8__(v292, 61);
  v295 = (__ROR8__(v293, 8) + v294) ^ 0xE1A1FD5BD155F97ALL;
  v296 = v295 ^ __ROR8__(v294, 61);
  v297 = (__ROR8__(v295, 8) + v296) ^ 0xDA604B0C03A2BF99;
  v298 = v297 ^ __ROR8__(v296, 61);
  v299 = (__ROR8__(v297, 8) + v298) ^ 0xFA35E2CDCB3E31C7;
  v300 = v299 ^ __ROR8__(v298, 61);
  v301 = (__ROR8__(v299, 8) + v300) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5270]) = LODWORD(STACK[0x4AC8]) ^ (((__ROR8__(v301, 8) + (v301 ^ __ROR8__(v300, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x4A68]);
  LODWORD(STACK[0x54F0]) = 188;
  v302 = *(STACK[0x57D8] + 8 * v11);
  STACK[0x52F8] = 24;
  LODWORD(STACK[0x52B8]) = 12;
  return v302(LODWORD(STACK[0x52A0]));
}