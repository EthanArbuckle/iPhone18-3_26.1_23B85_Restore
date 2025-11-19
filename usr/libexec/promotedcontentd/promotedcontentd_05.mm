uint64_t sub_1000EDB34()
{
  v2 = STACK[0x7A8];
  STACK[0x588] = STACK[0x7A8];
  return (*(v1 + 8 * (((v2 == 0) * ((v0 ^ 0x6E9) - 5948)) ^ v0)))();
}

uint64_t sub_1000EDBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, unsigned int a21)
{
  (*(v25 + 8 * (v24 ^ 0x2D62)))(v23);
  a20 = a18;
  a21 = v24 - ((2 * (&a19 & 0x33BF8148) - &a19 - 868188489) ^ 0x84D92AB9) * v21 + 3383;
  v26 = (*(v25 + 8 * (v24 + 7349)))(&a19);
  return (*(v25 + 8 * ((1666 * (a19 == ((v24 - 467538680) & 0x1BDE1A97) + v22)) ^ v24)))(v26);
}

uint64_t sub_1000EDC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, uint64_t a16, int a17, unsigned int a18, char *a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = 1875091903 * ((437405301 - (&a17 ^ 0x80EE8D37 | 0x1A124675) + (&a17 ^ 0x80EE8D37 | 0xE5EDB98A)) ^ 0x5376B73E);
  a20 = a15;
  a18 = (v22 ^ 0x655EB7FB) + ((2 * v22) & 0xCABD6FF6) - 1161953617 + v25;
  LODWORD(a19) = v25 + 7724;
  (*(v23 + 77160))(&a17);
  v26 = 1824088897 * (&a17 ^ 0x5869D362);
  a18 = v26 + 1095103343;
  a21 = 1032869496 - v26;
  a22 = v26 + 1674579114;
  a19 = a15;
  a20 = &a13;
  v27 = (*(v23 + 76864))(&a17);
  return (*(v23 + 8 * ((2435 * (a17 == v24)) ^ 0x12D4)))(v27);
}

uint64_t sub_1000EDE18@<X0>(int a1@<W8>)
{
  v2 = a1 + 4112;
  v3 = (v2 - 1840185810) & 0x6DAEFF7E;
  (*(v1 + 8 * (v2 ^ 0x3849)))();
  return (*(v1 + 8 * (((((STACK[0x440] == 0) ^ (v3 + 5)) & 1) * ((v3 ^ 0x12D1) - 2469)) ^ v3)))();
}

uint64_t sub_1000EDF50@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = (v33 ^ 0x31Fu) + 984;
  v37 = a1 ^ a4;
  v38 = *(v32 + 24);
  v39 = *(v34 + 8 * (((v36 ^ 0x23D8) * (v37 < 8)) ^ v33 ^ 0x31F));
  *(v35 - 216) = v38;
  return v39(v38, a2, a3, 0x1508DCB2F33ECE2BLL, v37, v36, v39, 123, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1000EE078(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v32 = a14 - v19 + v16;
  v33.i64[0] = v32 - 15;
  v33.i64[1] = v32 - 16;
  v34.i64[0] = v32 - 13;
  v34.i64[1] = v32 - 14;
  v35.i64[0] = v32 - 7;
  v35.i64[1] = v32 - 8;
  v36.i64[0] = v32 - 3;
  v36.i64[1] = v32 - 4;
  v37 = a14 - v19 - 1;
  v38.i64[0] = v16 + v37;
  v38.i64[1] = v32 - 2;
  v39.i64[0] = (v17 - 1615) + v32 + a16;
  v39.i64[1] = v32 - 6;
  v40 = vandq_s8(v39, a1);
  v41 = vandq_s8(v38, a1);
  v42 = vandq_s8(v36, a1);
  v43 = vandq_s8(v35, a1);
  v44 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v48 = vaddq_s64(v45, a3);
  v49 = vaddq_s64(v44, a3);
  v50 = veorq_s8(v49, a4);
  v51 = veorq_s8(v48, a4);
  v52 = veorq_s8(v48, a5);
  v53 = veorq_s8(v49, a5);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v53);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v52);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v54, a6), vorrq_s8(v54, a7)), a7), a8);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v55, a6), vorrq_s8(v55, a7)), a7), a8);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58), v22);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59), v22);
  v62 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v63 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v64 = veorq_s8(v60, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = vaddq_s64(v65, v63);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v23), vorrq_s8(v66, v24)), v24), v25);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, v23), vorrq_s8(v67, v24)), v24), v25);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v70), v26);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71), v26);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v27);
  v80 = veorq_s8(v78, v27);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v28);
  v87 = veorq_s8(v85, v28);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v82.i64[0] = v32 - 11;
  v82.i64[1] = v32 - 12;
  v89 = vaddq_s64(v46, a3);
  v183.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v88), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v183.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v90 = veorq_s8(v89, a4);
  v91 = veorq_s8(v89, a5);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v92, a6), vorrq_s8(v92, a7)), a7), a8);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v22);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v97, v23), vorrq_s8(v97, v24)), v24), v25);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v26);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v27);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v28);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v104.i64[0] = v32 - 9;
  v104.i64[1] = v32 - 10;
  v107 = vaddq_s64(v106, v105);
  v108 = vandq_s8(v104, a1);
  v109 = vaddq_s64(v47, a3);
  v183.val[0] = vshlq_u64(veorq_s8(v107, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a2)));
  v110 = veorq_s8(v109, a4);
  v111 = veorq_s8(v109, a5);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, a6), vorrq_s8(v112, a7)), a7), a8);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v22);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v117, v23), vorrq_s8(v117, v24)), v24), v25);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v26);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v27);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v28);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v127 = vandq_s8(v82, a1);
  v128 = vaddq_s64(v126, v125);
  v129 = vandq_s8(v34, a1);
  v183.val[2] = vshlq_u64(veorq_s8(v128, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), a2)));
  v130 = vandq_s8(v33, a1);
  v131 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), a3);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), a3);
  v130.i64[0] = vqtbl4q_s8(v183, v31).u64[0];
  v183.val[0] = veorq_s8(v134, a4);
  v183.val[1] = veorq_s8(v133, a4);
  v135 = veorq_s8(v133, a5);
  v136 = veorq_s8(v134, a5);
  v183.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL), v136);
  v183.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v135);
  v183.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v183.val[0], a6), vorrq_s8(v183.val[0], a7)), a7), a8);
  v183.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v183.val[1], a6), vorrq_s8(v183.val[1], a7)), a7), a8);
  v137 = veorq_s8(v183.val[1], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v183.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v137), v22);
  v183.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL), v138), v22);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v139 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v140 = veorq_s8(v183.val[1], v183.val[2]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL);
  v183.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v140);
  v183.val[1] = vaddq_s64(v183.val[2], v139);
  v183.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v183.val[0], v23), vorrq_s8(v183.val[0], v24)), v24), v25);
  v183.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v183.val[1], v23), vorrq_s8(v183.val[1], v24)), v24), v25);
  v141 = veorq_s8(v183.val[1], vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v183.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v141), v26);
  v183.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL), v142), v26);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v143 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v144 = veorq_s8(v183.val[1], v183.val[2]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL);
  v183.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v144);
  v183.val[1] = veorq_s8(vaddq_s64(v183.val[2], v143), v27);
  v183.val[0] = veorq_s8(v183.val[0], v27);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v145 = veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v146 = veorq_s8(v183.val[1], v183.val[2]);
  v183.val[2] = vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL);
  v183.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), v146);
  v183.val[1] = veorq_s8(vaddq_s64(v183.val[2], v145), v28);
  v183.val[0] = veorq_s8(v183.val[0], v28);
  v147 = vaddq_s64(v131, a3);
  v183.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[1], 0x38uLL), v183.val[1], 8uLL), veorq_s8(v183.val[1], vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v183.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183.val[0], 0x38uLL), v183.val[0], 8uLL), veorq_s8(v183.val[0], vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v148 = veorq_s8(v147, a4);
  v149 = veorq_s8(v147, a5);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, a6), vorrq_s8(v150, a7)), a7), a8);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), v22);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, v23), vorrq_s8(v155, v24)), v24), v25);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v26);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v27);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v28);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL)));
  v164 = vaddq_s64(v132, a3);
  v183.val[1] = vshlq_u64(veorq_s8(v163, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), a2)));
  v165 = veorq_s8(v164, a4);
  v166 = veorq_s8(v164, a5);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, a6), vorrq_s8(v167, a7)), a7), a8);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v22);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, v23), vorrq_s8(v172, v24)), v24), v25);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v26);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v27);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v28);
  v183.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v104, 3uLL), a2)));
  v130.i64[1] = vqtbl4q_s8(v183, v31).u64[0];
  v180 = vrev64q_s8(*(v16 + v37 - 15));
  v181 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v180, v180, 8uLL), v30), v130));
  *(v20 + v37) = vextq_s8(v181, v181, 8uLL);
  return (*(v21 + 8 * (((v19 + 16 == a14) * v18) ^ v17)))();
}

uint64_t sub_1000EE968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LOWORD(STACK[0x966]);
  STACK[0x690] = STACK[0x968];
  return (*(v71 + 8 * (((v72 == 17168) * (((a71 - 1995) | 0x30C) ^ 0x120)) ^ (a71 - 4605))))();
}

uint64_t sub_1000EE9C0(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = (a4 ^ 0x796FFFBFF66EF37DLL) - 0x796FFFBFF66F01B0 + ((2 * a4) & 0x1ECDDE6FALL) + a1;
  *(v70 + 3635) = 0;
  *(v70 + (a2 - 1576) + 2546) = 0;
  *(v70 + (a2 + 971)) = 0;
  *(v70 + 3638) = 0;
  *(a1 + ((2 * (a4 + 4)) & 0x7FDFB7DE) + ((a4 + 4) ^ 0xFB15D9FF3FEFDBEFLL) + 0x4EA2600C0102411) = -9392;
  v71 = ((a57 ^ 0xFABB2B50) + 902362302) ^ a57 ^ ((a57 ^ 0x82A52212) + 1305935360) ^ ((a57 ^ 0x776DDE27) - 1205993013) ^ ((a57 ^ 0x3FFFF777) - 259250021);
  v72 = (a1 + ((2 * (a4 + 6)) & 0x1FEE7E6EELL) + ((a4 + 6) ^ 0xFB6B9B76FF73F377) + 0x4946489008C0C89);
  *v72 = HIBYTE(v71) ^ 0x30;
  v72[1] = BYTE2(v71) ^ 0x8C;
  v72[2] = ((((a57 ^ 0x2B50) - 2882) ^ a57 ^ ((a57 ^ 0x2212) - 512) ^ ((a57 ^ 0xDE27) + 459) ^ ((a57 ^ 0xF777) + 10395)) >> 8) ^ 0x20;
  v72[3] = ((a57 ^ 0x50) - 66) ^ a57 ^ a57 ^ 0x12 ^ ((a57 ^ 0x27) - 53) ^ ((a57 ^ 0x77) - 101) ^ 0x12;
  return (*(v69 + 8 * (a2 ^ (179 * ((840616331 - a69) - 840616315 < 8)))))();
}

uint64_t sub_1000EEBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, char *a25, unsigned int a26, unsigned int a27)
{
  v30 = ((-1889644878 - (&a22 | 0x8F5E4EB2) + (&a22 | 0x70A1B14D)) ^ 0x28C8622F) * v28;
  a26 = 1032869496 - v30;
  a27 = v30 + v27 + 1674576119;
  a24 = a19;
  a25 = &a20;
  a23 = v30 - 1619556640;
  v31 = (*(v29 + 8 * (v27 + 6613)))(&a22);
  return (*(v29 + 8 * (((a22 == 1561 * (v27 ^ 0xBB0) + 16253316) * (94 * (v27 ^ 0xB82) - 4602)) ^ v27)))(v31);
}

uint64_t sub_1000EED04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 8);
  STACK[0x580] = v5;
  return (*(a4 + 8 * (((v7 != 0) * (((v6 - 493) ^ 0xFFFFF877) + (v6 ^ 0x195))) ^ v6)))();
}

uint64_t sub_1000EEE0C()
{
  v0 = STACK[0xA40];
  STACK[0x290] = ((STACK[0xA70] + 4) ^ 0x6EEB7373FE7FF71FLL) - 0x8A831024E005309 + ((2 * (STACK[0xA70] + 4)) & 0xDDD6E6E7FCFFEE3ELL);
  STACK[0x280] = ((((v2 - 495) | 0x12A8u) + 1315 + STACK[0xA90] - 6087) ^ 0x76DF63FFBEFFEF9FLL) - 0x109C218E0E804B89 + ((2 * (((v2 - 495) | 0x12A8u) + 1315 + STACK[0xA90] - 6087)) & 0xEDBEC7FF7DFFDF3ELL);
  STACK[0x270] = ((v0 + 4) ^ 0xFE6347F3F67FB71FLL) + 0x67DFFA7DB9FFECF7 + ((2 * (v0 + 4)) & 0xFCC68FE7ECFF6E3ELL);
  STACK[0x260] = ((STACK[0xAB0] + 4) ^ 0x6E536371BE7FB53FLL) - 0x81021000E001129 + ((2 * (STACK[0xAB0] + 4)) & 0xDCA6C6E37CFF6A7ELL);
  STACK[0x250] = ((STACK[0xAD0] + 4) ^ 0xF74FFE7DFDFFBFF6) + 0x6EF343F3B27FE420 + ((2 * (STACK[0xAD0] + 4)) & 0xEE9FFCFBFBFF7FECLL);
  STACK[0x240] = ((STACK[0xAF0] + 4) ^ 0x7FDBF6F3B77FA51FLL) - 0x1998B48207000109 + ((2 * (STACK[0xAF0] + 4)) & 0xFFB7EDE76EFF4A3ELL);
  STACK[0x230] = ((STACK[0xB00] + 4) ^ 0xFE6346F5B5FFB4B7) + 0x67DFFB7BFA7FEF5FLL + ((2 * (STACK[0xB00] + 4)) & 0xFCC68DEB6BFF696ELL);
  STACK[0x220] = ((STACK[0xA30] + 4) ^ 0xE77F6F75BF7FBCD7) + 0x7EC3D2FBF0FFE73FLL + ((2 * (STACK[0xA30] + 4)) & 0xCEFEDEEB7EFF79AELL);
  STACK[0x210] = ((STACK[0xA20] + 4) ^ 0xFECFDBF1BE7FBDF6) + 0x6773667FF1FFE620 + ((2 * (STACK[0xA20] + 4)) & 0xFD9FB7E37CFF7BECLL);
  STACK[0x200] = ((STACK[0xA10] + 4) ^ 0xE6DFF379B3FFAF56) + 0x7F634EF7FC7FF4C0 + ((2 * (STACK[0xA10] + 4)) & 0xCDBFE6F367FF5EACLL);
  STACK[0x2A0] = v0 + 10;
  STACK[0x3B0] = STACK[0x758];
  STACK[0x330] = STACK[0x5B0];
  STACK[0x320] = STACK[0x920];
  STACK[0x310] = STACK[0x890];
  STACK[0x300] = STACK[0x870];
  STACK[0x3A0] = STACK[0x3F8];
  STACK[0x390] = STACK[0x3D0];
  STACK[0x2F0] = STACK[0x480];
  STACK[0x2E0] = STACK[0x6F8];
  STACK[0x2D0] = STACK[0x438];
  STACK[0x2C0] = STACK[0x4B0];
  STACK[0x2B0] = STACK[0x430];
  STACK[0x380] = STACK[0x810];
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x9D2]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x9B6]);
  LODWORD(STACK[0x350]) = LOWORD(STACK[0x9A6]);
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x966]);
  return sub_1000F5928(0xF99C96608AFF80DELL, 0x6FEAED2DD55A32A7, 0xC3E67D93F2F32D7);
}

uint64_t sub_1000EEE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 - 7 + ~v2 + a2) = *(v4 - 7 + ~v2 + a2);
  v6 = ((3 * ((v3 - 6) ^ 0x23B7u)) ^ 0x535) + v2 != (a2 & 0xFFFFFFF8);
  return (*(v5 + 8 * (((2 * v6) | (4 * v6)) ^ (v3 - 6))))();
}

uint64_t sub_1000EEF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  if (v15)
  {
    v18 = a15 == (((v17 ^ 0x15E3) + 2300) ^ 0x1332);
  }

  else
  {
    v18 = 0;
  }

  v19 = !v18;
  return (*(v16 + 8 * ((16375 * v19) ^ v17)))();
}

uint64_t sub_1000EEF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x4C8];
  v67 = STACK[0x640];
  v68 = &STACK[0xAB0] + STACK[0x640];
  STACK[0x6A0] = v68;
  v69 = v68 + 16;
  STACK[0x3F8] = (v68 + 16);
  STACK[0x3C8] = (v68 + 48);
  STACK[0x640] = v67 + 80;
  (*(v65 + 8 * (v64 + 6146)))();
  v70 = (*(a64 + 8 * (v64 ^ 0x28FE)))(v69, 0, 32);
  STACK[0x580] = 0;
  STACK[0x7D0] = 0;
  LODWORD(STACK[0x45C]) = 197499219;
  STACK[0x3E8] = 0;
  LODWORD(STACK[0x64C]) = 0;
  STACK[0x4B8] = v66;
  return (*(a64 + 8 * (((v66 != 0) * ((v64 ^ 0x734) - 2493)) ^ v64)))(v70);
}

uint64_t sub_1000EF030(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  return sub_1001677C4();
}

uint64_t sub_1000EF04C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v6 = STACK[0x5D8];
      STACK[0x760] = *(v3 + 8 * (v2 - 5586));
      return sub_100166958(v6);
    case 3:
      return (*(v3 + 8 * (((((v2 - 1494) | 0x684) ^ 0x16E0) * (*(a1 + 40 * v1 + 16) != 0)) ^ (v2 + 2975))))();
    case 2:
      return (*(v3 + 8 * ((59 * (((STACK[0x5D8] == 0) ^ (v2 - 119)) & 1)) ^ (v2 + 3343))))();
    default:
      return (STACK[0x4F8])();
  }
}

void sub_1000EF140()
{
  STACK[0x528] = 0;
  STACK[0x428] = 0;
  STACK[0x518] = *(v1 + 8 * (v0 - 6307));
  JUMPOUT(0x1000EF164);
}

uint64_t sub_1000EF23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA20] = v72 ^ 0xBC59953u;
  *(a1 + 16) = (((v72 ^ 0x79D3CEB0) - 2043924144) ^ ((v72 ^ 0x2ED82225) - 785916453) ^ ((v72 ^ 0x5CCE75C6) - 1557040521 + ((v73 - 1793525368) & 0x6AE717C3))) + 197499229;
  v75 = (*(a72 + 8 * (v73 ^ 0x23D5)))();
  *(a1 + 24) = v75;
  return (*(a72 + 8 * ((216 * (v75 == 0)) ^ v73)))();
}

uint64_t sub_1000EF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = a17;
  *(v21 - 132) = (v20 - 2917) ^ (33731311 * ((((v21 - 136) | 0x57CCB53A) - (v21 - 136) + ((v21 - 136) & 0xA8334AC0)) ^ 0x6E3A7F19));
  *(v19 + 8) = v22;
  *(v19 + 16) = &a12;
  (*(v18 + 8 * (v20 ^ 0x3D68)))(v21 - 136);
  v23 = a17;
  *(v21 - 120) = v20 - 2008441969 * ((1553561334 - ((v21 - 136) | 0x5C9976F6) + ((v21 - 136) | 0xA3668909)) ^ 0xEBFFDD07) - 484;
  *(v19 + 8) = v23;
  v24 = (*(v18 + 8 * (v20 + 3482)))(v21 - 136);
  return (*(v18 + 8 * (((*(v21 - 136) == 16257999) * (v17 ^ 0x7B0A2369)) ^ v20)))(v24);
}

uint64_t sub_1000EF4E0()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x3A0F)))(*v2, *(v0 + 8 * (v3 & 0xF5CAA141)) - 8);
  *(*(v0 + 8 * (v3 - 7924)) - 4) = v4;
  return (*(v1 + 8 * (((v4 == 0) * (((v3 - 2231) | 0x838) - 7908)) ^ v3)))();
}

uint64_t sub_1000EF554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, unsigned int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  v105 = LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x418]);
  v106 = LODWORD(STACK[0x40C]) ^ a102 ^ LODWORD(STACK[0x408]) ^ a103 ^ LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2CC]) ^ LODWORD(STACK[0x404]) ^ a101;
  v107 = LODWORD(STACK[0x370]) ^ a43 ^ a100 ^ a99 ^ a98 ^ LODWORD(STACK[0x358]) ^ a97 ^ LODWORD(STACK[0x36C]) ^ a96 ^ LODWORD(STACK[0x360]);
  LODWORD(STACK[0x580]) = a46 ^ a47;
  LODWORD(STACK[0x500]) = a40 - LODWORD(STACK[0x4C8]);
  v108 = -1673081951 * a41 + 1124265510;
  v109 = (v108 ^ 0x1594CB93) & (2 * (v108 & 0x59D8D3D8)) ^ v108 & 0x59D8D3D8;
  v110 = ((2 * (v108 ^ 0xA785E813)) ^ 0xFCBA7796) & (v108 ^ 0xA785E813) ^ (2 * (v108 ^ 0xA785E813)) & 0xFE5D3BCA;
  v111 = (v110 ^ 0xEC001389) & (4 * v109) ^ v109;
  v112 = ((4 * (v110 ^ 0x2450849)) ^ 0xF974EF2C) & (v110 ^ 0x2450849) ^ (4 * (v110 ^ 0x2450849)) & 0xFE5D3BC8;
  v113 = (v112 ^ 0xF8542B00) & (16 * v111) ^ v111;
  v114 = ((16 * (v112 ^ 0x60910C3)) ^ 0xE5D3BCB0) & (v112 ^ 0x60910C3) ^ (16 * (v112 ^ 0x60910C3)) & 0xFE5D3BC0;
  v115 = v113 ^ 0xFE5D3BCB ^ (v114 ^ 0xE4513800) & (v113 << 8);
  LODWORD(STACK[0x41C]) = v108 ^ (2 * ((v115 << 16) & 0x7E5D0000 ^ v115 ^ ((v115 << 16) ^ 0x3BCB0000) & (((v114 ^ 0x1A0C034B) << 8) & 0x7E5D0000 ^ 0x22440000 ^ (((v114 ^ 0x1A0C034B) << 8) ^ 0x5D3B0000) & (v114 ^ 0x1A0C034B))));
  v116 = (LODWORD(STACK[0x2B4]) >> 28) ^ (LODWORD(STACK[0x2B4]) >> 27) ^ LODWORD(STACK[0x21C]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x220]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x200]) ^ (LODWORD(STACK[0x2C8]) >> 2) ^ LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x3F0]) ^ a105 ^ LODWORD(STACK[0x2AC]) ^ a104 ^ LODWORD(STACK[0x3EC]);
  v117 = (STACK[0x300] >> 26) ^ (STACK[0x300] >> 31) ^ (STACK[0x300] >> 3) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x2FC]) ^ v105;
  v118 = (v117 >> 21) ^ (v117 >> 27);
  v119 = (8 * (v116 & 0x1FFFFF)) ^ __ROR4__(STACK[0x300] ^ (2 * STACK[0x300]) ^ (STACK[0x300] << 6) ^ (STACK[0x300] << 29) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x428]) ^ LODWORD(STACK[0x424]) ^ v106 ^ v117 ^ (4 * v117) ^ (v117 << ((STACK[0x2FC] & 5 ^ 5) + (STACK[0x2FC] & 5))) ^ (v117 << 11) ^ v118 ^ (32 * v118) ^ (4 * v118) ^ (v118 << 11) ^ (LODWORD(STACK[0x400]) << 30) ^ (32 * LODWORD(STACK[0x2C8])) ^ (16 * LODWORD(STACK[0x2C8])) ^ LODWORD(STACK[0x224]) ^ LODWORD(STACK[0x398]) ^ v107 ^ LODWORD(STACK[0x380]) ^ v116 ^ (4 * v116) ^ (32 * v116), 8);
  v120 = (v116 >> 27) ^ (v116 >> 21);
  v121 = STACK[0x298];
  v122 = STACK[0x294];
  v123 = LODWORD(STACK[0x3E0]) ^ (LODWORD(STACK[0x298]) >> 20) ^ LODWORD(STACK[0x37C]) ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x4B4]) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x3D8]);
  v124 = LODWORD(STACK[0x378]) ^ (LODWORD(STACK[0x294]) >> 1) ^ v123;
  LOBYTE(v118) = (v123 & 0xAC) + (v123 & 0xAC ^ 0xAC);
  v125 = LODWORD(STACK[0x3C8]) ^ a54 ^ LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x33C]) ^ v124;
  v126 = (v125 >> 27) ^ (v124 >> 30);
  v127 = STACK[0x2C0];
  v128 = a59 ^ (STACK[0x2C0] << 8) ^ a57 ^ LODWORD(STACK[0x338]) ^ a58 ^ a46 ^ a47;
  v129 = v128 & 0xB8D10A5A ^ (STACK[0x2C0] << 15) & 0xB8D10000 | v128 & 0x472EF5A5 ^ (STACK[0x2C0] << 15) & 0x472E8000;
  v130 = STACK[0x2C0] >> 9;
  v131 = HIBYTE(a91) ^ (a91 >> 17) ^ a60 ^ a69 ^ a92 ^ LODWORD(STACK[0x354]) ^ a93 ^ LODWORD(STACK[0x348]) ^ a62 ^ a90 ^ a72 ^ a64 ^ a87 ^ v130 ^ a71 ^ a70;
  v132 = STACK[0x280];
  v133 = STACK[0x284];
  v134 = STACK[0x3B0];
  v135 = STACK[0x27C];
  v136 = STACK[0x278];
  v137 = STACK[0x270];
  v138 = STACK[0x3A8];
  v139 = v126 ^ (v125 >> 21);
  v140 = LODWORD(STACK[0x294]) ^ (LODWORD(STACK[0x294]) << 12) ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x284]) ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x27C]) ^ LODWORD(STACK[0x384]) ^ a56 ^ LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x3A8]) ^ a73 ^ v125 ^ (v120 ^ (32 * v120) ^ (4 * v120) ^ (v120 << 11) | (LODWORD(STACK[0x294]) << 31)) ^ (4 * v125) ^ (v125 << 11) ^ v139 ^ __ROR4__(v119 ^ 0x277C94BA, 24) ^ (4 * v139) ^ (32 * v139) ^ (v139 << 11) ^ (v125 << (v118 + 89)) ^ a68 ^ LODWORD(STACK[0x3E4]) ^ a67 ^ a55 ^ LODWORD(STACK[0x3E8]);
  v141 = STACK[0x2C0] << 23;
  LODWORD(STACK[0x58C]) = v141;
  v142 = v131 ^ a86 ^ (v127 >> 5);
  v143 = STACK[0x2A4];
  v144 = v140 ^ v141 ^ a66 ^ a65 ^ LODWORD(STACK[0x2A4]);
  LODWORD(STACK[0x588]) = v127 << 27;
  v145 = v127;
  v146 = v144 ^ (v127 << 27) ^ v129 ^ v142 ^ (4 * v142) ^ (32 * v142) ^ __ROR4__(v142, 21);
  LODWORD(STACK[0x570]) = v146;
  LODWORD(STACK[0x590]) = v146 ^ (4 * (v142 >> 21)) ^ (32 * (v142 >> 21)) ^ (v142 >> 21 << 11);
  v147 = STACK[0x248];
  v148 = (a53 >> 31) ^ (a53 >> 26) ^ a49 ^ a51 ^ a44 ^ a45 ^ LODWORD(STACK[0x330]) ^ a52 ^ a50 ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x318]) ^ (STACK[0x248] >> 3) ^ LODWORD(STACK[0x328]) ^ a42 ^ LODWORD(STACK[0x314]) ^ LODWORD(STACK[0x320]) ^ a48;
  LODWORD(STACK[0x584]) = (a45 & 0xD ^ 0xD) + (a45 & 0xD);
  v149 = a62 ^ (a91 >> 27) ^ a90 ^ a61 ^ a89 ^ a64 ^ a63 ^ a60 ^ (v127 >> 2) ^ a87 ^ v130 ^ a86 ^ (v127 >> 5) ^ a85;
  v150 = a92 ^ a93 ^ (a91 >> 28) ^ v149;
  v151 = (v149 >> 21) ^ (v149 >> 27);
  v152 = STACK[0x2A0];
  LODWORD(v127) = (LODWORD(STACK[0x2A0]) | (a82 >> 18)) ^ __ROR4__((16 * v127) ^ (32 * v127) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x580]) ^ (v127 << (-91 * ((a88 & 0x49 ^ 0x49) + (a88 & 0x49u)))), 18);
  v153 = (v121 >> 26) ^ (v121 >> 31) ^ LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x288]) ^ LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x4B4]) ^ LODWORD(STACK[0x340]) ^ a74 ^ LODWORD(STACK[0x3D8]) ^ LODWORD(STACK[0x3C8]) ^ (v122 >> 3) ^ LODWORD(STACK[0x3C0]) ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x33C]);
  v154 = v122 ^ (v122 << 6) ^ (2 * v122) ^ (v122 << 29) ^ v132 ^ LODWORD(STACK[0x268]) ^ LODWORD(STACK[0x26C]) ^ v133 ^ v134 ^ LODWORD(STACK[0x344]) ^ v135 ^ a75 ^ v136 ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x274]) ^ v137 ^ v138 ^ a73 ^ v153;
  v155 = v154 & 0x780123E3 ^ (4 * v153) & 0x780123E0 | v154 & 0x87FEDC1C;
  LODWORD(STACK[0x4FC]) = LOBYTE(STACK[0x996]) ^ 0xF3 | ((LOBYTE(STACK[0x83D]) ^ 0xF3 | ((LOBYTE(STACK[0x94C]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0xAA5]) ^ 0xF3) << 8)) << 8);
  v156 = LOBYTE(STACK[0x967]);
  LODWORD(STACK[0x424]) = ((v156 ^ 0xF3) << 24) | ((LOBYTE(STACK[0xAC0]) ^ 0xF3) << 16) | ((LOBYTE(STACK[0x858]) ^ 0xF3) << 8);
  LODWORD(STACK[0x420]) = ((LOBYTE(STACK[0x72E]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x887]) ^ 0xF3 ^ (((v156 ^ 0xF3) & 0xFFFFFFE7) + (v156 & 0xFFFFFFE7 ^ 4)) & 0xC7) << 8);
  LODWORD(STACK[0x418]) = ((LOBYTE(STACK[0x8A2]) ^ 0xF3) << 8) | ((LOBYTE(STACK[0x749]) ^ 0xFFFFFFF3) << 16);
  v157 = ((LOBYTE(STACK[0xA45]) ^ 0xF3) << 8) | ((LOBYTE(STACK[0x8EC]) ^ 0xFFFFFFF3) << 16);
  LODWORD(STACK[0x4F4]) = LOBYTE(STACK[0x91B]) ^ 0xF3 | ((((LOBYTE(STACK[0x8D1]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0xA2A]) ^ 0xF3) << 8) | LOBYTE(STACK[0x7C2]) ^ 0xF3) << 8);
  v158 = v157 | LOBYTE(STACK[0x7DD]) ^ 0xF3;
  LODWORD(STACK[0x414]) = ((LOBYTE(STACK[0xA74]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x80C]) ^ 0xF3) << 8);
  LODWORD(STACK[0x410]) = ((LOBYTE(STACK[0xA8F]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x827]) ^ 0xF3) << 8);
  LODWORD(STACK[0x4F0]) = LOBYTE(STACK[0x936]) ^ 0xF3 | (v158 << 8);
  v159 = ((LOBYTE(STACK[0x871]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x9CA]) ^ 0xF3) << 8) | LOBYTE(STACK[0x762]) ^ 0xF3;
  LODWORD(STACK[0x4EC]) = LOBYTE(STACK[0x8A0]) ^ 0xF3 | ((LOBYTE(STACK[0x747]) ^ 0xF3 | ((LOBYTE(STACK[0x9AF]) ^ 0x34) << 8) | ((LOBYTE(STACK[0x856]) ^ 0xFFFFFFF3) << 16)) << 8);
  LODWORD(STACK[0x4F8]) = LOBYTE(STACK[0x8BB]) ^ 0xF3 | (v159 << 8);
  LODWORD(STACK[0x40C]) = ((LOBYTE(STACK[0x9F9]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x791]) ^ 0xF3) << 8);
  LODWORD(STACK[0x408]) = ((LOBYTE(STACK[0xA14]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x7AC]) ^ 0xF3) << 8);
  v160 = LOBYTE(STACK[0xAA8]) ^ 0xF3 | ((LOBYTE(STACK[0x94F]) ^ 0xF3) << 8) | ((LOBYTE(STACK[0x7F6]) ^ 0xFFFFFFF3) << 16);
  LODWORD(STACK[0x4DC]) = LOBYTE(STACK[0x825]) ^ 0xF3 | ((((LOBYTE(STACK[0x934]) ^ 0xF3) << 8) | ((LOBYTE(STACK[0x7DB]) ^ 0xFFFFFFF3) << 16) | LOBYTE(STACK[0xA8D]) ^ 0x34) << 8);
  v161 = LOBYTE(STACK[0x840]);
  STACK[0x508] = v161;
  LODWORD(STACK[0x4E8]) = v161 ^ 0xF3 | (v160 << 8);
  LODWORD(STACK[0x404]) = ((LOBYTE(STACK[0x97E]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0xAD7]) ^ 0xF3) << 8);
  v162 = ((LOBYTE(STACK[0x760]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x8B9]) ^ 0xF3) << 8);
  LODWORD(STACK[0x400]) = ((LOBYTE(STACK[0x731]) ^ 0xF3) << 8) | ((LOBYTE(STACK[0x999]) ^ 0xFFFFFFF3) << 16);
  LODWORD(STACK[0x4E0]) = LOBYTE(STACK[0x7AA]) ^ 0xF3 | ((LOBYTE(STACK[0xA12]) ^ 0xF3 | v162) << 8);
  v163 = ((LOBYTE(STACK[0x8D4]) ^ 0xF3) << 8) | ((LOBYTE(STACK[0x77B]) ^ 0xFFFFFFF3) << 16) | LOBYTE(STACK[0xA2D]) ^ 0xF3;
  LODWORD(STACK[0x3F8]) = ((LOBYTE(STACK[0x903]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0xA5C]) ^ 0x34) << 8);
  LODWORD(STACK[0x4C8]) = LOBYTE(STACK[0x7C5]) ^ 0xF3 | (v163 << 8);
  LODWORD(STACK[0x3F4]) = ((LOBYTE(STACK[0x91E]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0xA77]) ^ 0xF3) << 8);
  LODWORD(STACK[0x4D0]) = LOBYTE(STACK[0x72F]) ^ 0xF3 | ((((LOBYTE(STACK[0x83E]) ^ 0xF3) << 8) | ((LOBYTE(STACK[0xAA6]) ^ 0xFFFFFFF3) << 16) | LOBYTE(STACK[0x997]) ^ 0xF3) << 8);
  v164 = LOBYTE(STACK[0x9B2]) ^ 0xF3 | ((LOBYTE(STACK[0xAC1]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x859]) ^ 0xF3) << 8);
  LODWORD(STACK[0x3F0]) = ((LOBYTE(STACK[0x888]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x9E1]) ^ 0xF3) << 8);
  LODWORD(STACK[0x4B4]) = LOBYTE(STACK[0x74A]) ^ 0xF3 | (v164 << 8);
  LODWORD(STACK[0x4B0]) = LOBYTE(STACK[0x8ED]) ^ 0xF3 | ((((LOBYTE(STACK[0x8A3]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x9FC]) ^ 0xF3) << 8) | LOBYTE(STACK[0x794]) ^ 0xF3) << 8);
  LODWORD(STACK[0x3C8]) = ((LOBYTE(STACK[0x7C3]) ^ 0x34) << 8) | ((LOBYTE(STACK[0xA2B]) ^ 0xFFFFFFF3) << 16);
  LODWORD(STACK[0x42C]) = LOBYTE(STACK[0xA90]) ^ 0xF3 | ((((LOBYTE(STACK[0xA46]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x7DE]) ^ 0xF3) << 8) | LOBYTE(STACK[0x937]) ^ 0xF3) << 8);
  LODWORD(STACK[0x3EC]) = ((LOBYTE(STACK[0x80D]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x966]) ^ 0xF3) << 8);
  LODWORD(STACK[0x3E0]) = ((LOBYTE(STACK[0x828]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x981]) ^ 0xF3) << 8);
  LODWORD(STACK[0x430]) = LOBYTE(STACK[0x9FA]) ^ 0xF3 | ((LOBYTE(STACK[0x8A1]) ^ 0xF3 | ((LOBYTE(STACK[0x9B0]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x748]) ^ 0x34) << 8)) << 8);
  LODWORD(STACK[0x428]) = LOBYTE(STACK[0xA15]) ^ 0xF3 | ((((LOBYTE(STACK[0x9CB]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x763]) ^ 0xF3) << 8) | LOBYTE(STACK[0x8BC]) ^ 0xF3) << 8);
  LODWORD(STACK[0x3D8]) = ((LOBYTE(STACK[0x792]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x8EB]) ^ 0xF3) << 8);
  LODWORD(STACK[0x3D4]) = ((LOBYTE(STACK[0x7AD]) ^ 0xFFFFFFF3) << 16) | ((LOBYTE(STACK[0x906]) ^ 0xF3) << 8);
  LODWORD(STACK[0x56C]) = (v153 << 11) ^ (32 * v153) ^ (4 * v153) & 0x7FEDC1C ^ (v153 >> 27) ^ (v153 >> 21) ^ (4 * ((v153 >> 27) ^ (v153 >> 21))) ^ (32 * ((v153 >> 27) ^ (v153 >> 21))) ^ (((v153 >> 27) ^ (v153 >> 21)) << 11) ^ v155 ^ (v145 << 30) ^ (v145 << 21) ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x3E4]) ^ LODWORD(STACK[0x29C]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x58C]) ^ v143 ^ LODWORD(STACK[0x588]) ^ v152 ^ v150 ^ (4 * v150) ^ (32 * v150) ^ (v150 << 11) ^ v151 ^ (4 * v151) ^ (32 * v151) ^ (v151 << 11) ^ __ROR4__(v127 ^ 0x1990206A, 14);
  v165 = (v148 >> 27) ^ (v148 >> 21);
  LODWORD(STACK[0x3A8]) = v147 ^ (2 * v147) ^ (v147 << 6) ^ (v147 << 29) ^ LODWORD(STACK[0x234]) ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x210]) ^ LODWORD(STACK[0x20C]) ^ a95 ^ LODWORD(STACK[0x244]) ^ LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x208]) ^ LODWORD(STACK[0x3A0]) ^ a94 ^ LODWORD(STACK[0x204]) ^ LODWORD(STACK[0x3A4]) ^ LODWORD(STACK[0x23C]) ^ (v147 << LODWORD(STACK[0x584])) ^ v148 ^ (4 * v148) ^ (32 * v148) ^ (v148 << 11) ^ v165 ^ (4 * v165) ^ (32 * v165) ^ (v165 << 11);
  v166 = LODWORD(STACK[0x590]) ^ 0xDE021DA;
  LODWORD(STACK[0x2CC]) = v166 >> 11;
  LODWORD(STACK[0x504]) = v166 >> 18;
  LODWORD(STACK[0x2DC]) = v166 >> 21;
  LODWORD(STACK[0x2C8]) = v166 >> 19;
  LODWORD(STACK[0x2AC]) = v166 >> 14;
  LODWORD(STACK[0x2F0]) = v166 >> 13;
  LODWORD(STACK[0x2B4]) = v166 >> 6;
  LODWORD(STACK[0x560]) = (v166 >> 20) ^ (v166 >> 1) ^ (v166 >> 11) ^ (v166 >> 25) ^ (v166 >> 22) ^ (v166 >> 21) ^ (v166 >> 19) ^ (v166 >> 18) ^ (v166 >> 14) ^ HIWORD(v166) ^ (v166 >> 13) ^ (v166 >> 12) ^ (v166 >> 7) ^ (v166 >> 6);
  v167 = STACK[0x570];
  v168 = (LODWORD(STACK[0x570]) >> 29) ^ (LODWORD(STACK[0x570]) >> 30);
  LODWORD(STACK[0x2E4]) = v168;
  v169 = (v166 >> 25) ^ v168 ^ (v166 >> 21) ^ (v166 >> 22);
  LODWORD(STACK[0x2D0]) = v166 >> 10;
  LODWORD(STACK[0x2C0]) = v166 >> 9;
  LODWORD(STACK[0x2B0]) = v166 >> 5;
  LODWORD(v147) = (v166 >> 17) ^ (v166 >> 8) ^ (v166 >> 19) ^ HIWORD(v166) ^ (v166 >> 14) ^ (v166 >> 12) ^ (v166 >> 11) ^ (v166 >> 10) ^ (v166 >> 9) ^ (v166 >> 7) ^ (v166 >> 6) ^ (v166 >> 5);
  LODWORD(STACK[0x248]) = v166 << 13;
  LODWORD(STACK[0x550]) = v166 << 10;
  LODWORD(STACK[0x23C]) = v166 << 11;
  LODWORD(STACK[0x55C]) = v166 << 16;
  LODWORD(STACK[0x210]) = v166 << 18;
  LODWORD(STACK[0x214]) = v166 << 21;
  LODWORD(STACK[0x2E0]) = v166 << 22;
  LODWORD(STACK[0x2E8]) = v166 << 23;
  v170 = LODWORD(STACK[0x4B8]) ^ 0x7AEEE199;
  LODWORD(STACK[0x3E8]) = v170;
  LODWORD(v127) = (4 * v166) ^ (8 * v166);
  LODWORD(STACK[0x2D8]) = v127;
  LODWORD(STACK[0x510]) = v166 << 26;
  LODWORD(STACK[0x2D4]) = v166 << 27;
  v171 = v147 ^ (v169 & 0x27D ^ HIBYTE(v166) & 0x7D | v169 & 0x582 ^ HIBYTE(v166) & 0x82);
  v172 = (v166 << 8) ^ (v166 << 15) ^ (v166 << 24) ^ (v166 << 13) ^ (v166 << 7) ^ (v166 << 10) ^ (v166 << 11) ^ (v166 << 16) ^ (v166 << 18) ^ (v166 << 20) ^ (v166 << 21) ^ (v166 << 22) ^ (v166 << 23) ^ (v166 << 25) ^ (v166 << 26) ^ (v166 << 27) ^ v127 ^ v170 ^ v171 ^ (32 * v171) ^ (4 * v171) ^ (v171 << 11);
  v173 = STACK[0x43C];
  v174 = LODWORD(STACK[0x43C]) + 835068287;
  LODWORD(STACK[0x54C]) = v174;
  v175 = v174 - ((2 * v173) & 0x638C42FEu);
  LODWORD(STACK[0x2A0]) = v175 >> 31;
  LODWORD(v161) = (v175 >> 30) ^ (v175 >> 29);
  LODWORD(STACK[0x318]) = v161;
  LODWORD(STACK[0x36C]) = v175 >> 18;
  LODWORD(STACK[0x394]) = v175 >> 15;
  LODWORD(STACK[0x360]) = v175 >> 10;
  LODWORD(STACK[0x580]) = v175 >> 4;
  v176 = v161 ^ (v175 >> 22) ^ (v175 >> 26) ^ (v175 >> 3) ^ (v175 >> 31) ^ (v175 >> 25) ^ (v175 >> 18) ^ (v175 >> 19) ^ (v175 >> 15) ^ (v175 >> 12) ^ (v175 >> 10) ^ (v175 >> 8) ^ (v175 >> 7) ^ (v175 >> 6) ^ (v175 >> 4);
  LODWORD(STACK[0x3AC]) = 2 * v175;
  LODWORD(STACK[0x3B0]) = v176 ^ ((v175 - ((2 * v175) & 0x11956) + 36011) >> 16);
  LODWORD(STACK[0x3BC]) = (v176 >> 21) ^ (v176 >> 27);
  LODWORD(STACK[0x354]) = v175 >> 11;
  LODWORD(STACK[0x338]) = v175 >> 19;
  LODWORD(STACK[0x348]) = v175 >> 21;
  LODWORD(STACK[0x370]) = v175 >> 13;
  LODWORD(STACK[0x344]) = v175 >> 14;
  LODWORD(STACK[0x330]) = v175 >> 6;
  LODWORD(STACK[0x290]) = (v175 >> 20) ^ (v175 >> 1) ^ (v175 >> 11) ^ (v175 >> 25) ^ (v175 >> 22) ^ (v175 >> 21) ^ (v175 >> 19) ^ (v175 >> 18) ^ WORD1(v175) ^ (v175 >> 14) ^ (v175 >> 13) ^ (v175 >> 12) ^ (v175 >> 7) ^ (v175 >> 6);
  LODWORD(STACK[0x358]) = v175 >> 9;
  LODWORD(STACK[0x340]) = v175 >> 5;
  v177 = BYTE3(v175) ^ (v175 >> 17) ^ (v175 >> 25) ^ (v175 >> 22) ^ (v175 >> 21) ^ (v175 >> 19) ^ WORD1(v175) ^ (v175 >> 14) ^ (v175 >> 12) ^ (v175 >> 11) ^ (v175 >> 10) ^ (v175 >> 9) ^ (v175 >> 8) ^ (v175 >> 7) ^ (v175 >> 6) ^ (v175 >> 5);
  LODWORD(STACK[0x590]) = 4 * v175;
  LODWORD(STACK[0x588]) = 8 * v175;
  LODWORD(STACK[0x57C]) = v175 << 7;
  LODWORD(STACK[0x58C]) = v175 << 13;
  LODWORD(STACK[0x3A0]) = v175 << 10;
  LODWORD(STACK[0x33C]) = v175 << 11;
  v178 = (v175 << 10) ^ (v175 << 11) ^ (v175 << 13);
  LODWORD(STACK[0x540]) = v178;
  LODWORD(STACK[0x3A4]) = v175 << 16;
  LODWORD(STACK[0x53C]) = v175 << 18;
  LODWORD(STACK[0x28C]) = v175 << 20;
  LODWORD(STACK[0x288]) = v175 << 21;
  LODWORD(STACK[0x584]) = v175 << 22;
  LODWORD(STACK[0x31C]) = v175 << 23;
  LODWORD(STACK[0x398]) = v175 << 24;
  LODWORD(STACK[0x328]) = v175 << 25;
  LODWORD(STACK[0x548]) = v175 << 26;
  LODWORD(STACK[0x320]) = v175 << 27;
  v179 = v177 ^ v161;
  v180 = (v175 << 8) ^ (v175 << 15) ^ (4 * v175) ^ (8 * v175) ^ (v175 << 7) ^ v178 ^ (v175 << 16) ^ (v175 << 18) ^ (v175 << 20) ^ (v175 << 21) ^ (v175 << 22) ^ (v175 << 23) ^ (v175 << 24) ^ (v175 << 25) ^ (v175 << 26) ^ (v175 << 27) ^ v179 ^ (4 * v179) ^ (32 * v179) ^ (v179 << 11);
  LODWORD(v147) = v147 >> 21;
  LODWORD(STACK[0x29C]) = v172 ^ v147;
  LODWORD(v161) = (32 * v147) ^ (4 * v147) ^ v172 ^ v147;
  v181 = v161 ^ (v147 << 11);
  LODWORD(v127) = (v172 >> 29) ^ (v172 >> 30);
  LODWORD(STACK[0x298]) = v172 >> 31;
  v182 = v127 ^ (v172 >> 31) ^ (v172 >> 26) ^ (v172 >> 25) ^ (v181 >> 3) ^ (v181 >> 15) ^ (v181 >> ((v161 & 0xA ^ 0xA) + (v161 & 0xA)));
  LODWORD(STACK[0x280]) = v181 >> 18;
  LODWORD(STACK[0x274]) = HIWORD(v181);
  LODWORD(STACK[0x294]) = v181 >> 7;
  LODWORD(STACK[0x26C]) = v181 >> 12;
  LODWORD(STACK[0x27C]) = v181 >> 4;
  v183 = (v181 >> 19) ^ (v172 >> 22) ^ (v181 >> 18) ^ HIWORD(v181) ^ (v181 >> 12) ^ (v181 >> 8) ^ (v181 >> 7) ^ (v181 >> 6) ^ (v181 >> 4) ^ v182;
  LODWORD(STACK[0x374]) = v183;
  LODWORD(STACK[0x378]) = (v183 >> 27) ^ (v182 >> 30);
  v184 = (v172 >> 25) ^ (v172 >> 22);
  LODWORD(STACK[0x278]) = v184;
  LODWORD(STACK[0x270]) = v181 >> 21;
  v185 = v184 ^ v127 ^ HIBYTE(v172) ^ (v181 >> 17) ^ (v181 >> 21) ^ (v181 >> 19) ^ HIWORD(v181);
  LODWORD(STACK[0x268]) = v181 >> 14;
  LODWORD(STACK[0x244]) = v181 >> 11;
  LODWORD(v127) = (v181 >> 10) ^ (v181 >> 9) ^ (v181 >> 11) ^ (v181 >> 14) ^ (v181 >> 12) ^ v185 ^ (v181 >> (v185 & 7) >> (v185 & 7 ^ 7));
  v186 = (v181 >> 6) ^ (v181 >> 8) ^ (v181 >> 5) ^ v127;
  LODWORD(STACK[0x224]) = v166 << 19;
  v187 = LODWORD(STACK[0x56C]) ^ 0x598538A8;
  LODWORD(STACK[0x3E4]) = v187;
  LODWORD(STACK[0x204]) = (v166 >> 27) ^ (v167 >> 28);
  v188 = LODWORD(STACK[0x560]) ^ (v166 >> 4);
  v189 = STACK[0x23C];
  v190 = STACK[0x248];
  LODWORD(v147) = (v188 >> 27) ^ (v167 >> 31) ^ (v188 >> 21);
  v191 = v187 ^ (v167 << 31) ^ v166 ^ (v166 << 12) ^ (v166 << 19) ^ (v166 << 20) ^ (v166 << 7) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x23C]) ^ LODWORD(STACK[0x248]) ^ (v166 << 14) ^ LODWORD(STACK[0x55C]) ^ (v166 << 18) ^ (v166 << 21) ^ (v166 << 25) ^ LODWORD(STACK[0x510]) ^ (v166 << 28) ^ v188 ^ (4 * v188) ^ (32 * v188) ^ (v188 << 11) ^ v147 ^ (32 * v147) ^ (4 * v147) ^ (v147 << 11);
  LODWORD(STACK[0x538]) = v161;
  v192 = v191 ^ (v161 << 23) ^ (v161 << 27);
  LODWORD(STACK[0x314]) = v161 << 22;
  LODWORD(STACK[0x310]) = v161 << 24;
  LODWORD(STACK[0x230]) = v161 << 21;
  LODWORD(STACK[0x534]) = v161 << 25;
  LODWORD(v147) = (v161 << 22) ^ (v161 << 21) ^ (v161 << 24) ^ (v161 << 25);
  LODWORD(v161) = v161 << 26;
  LODWORD(STACK[0x528]) = v161;
  v193 = v192 ^ v147 ^ v161 ^ (v181 << 8) ^ (v181 << 15);
  LODWORD(STACK[0x2F4]) = 4 * v181;
  LODWORD(STACK[0x2F8]) = 8 * v181;
  LODWORD(STACK[0x300]) = v181 << 7;
  LODWORD(STACK[0x2FC]) = v181 << 10;
  LODWORD(v147) = (v181 << 10) ^ (v181 << 7);
  LODWORD(STACK[0x21C]) = v147;
  LODWORD(STACK[0x524]) = v181 << 13;
  LODWORD(STACK[0x520]) = v181 << 16;
  LODWORD(STACK[0x518]) = v181 << 20;
  v194 = v193 ^ v147 ^ (4 * v181) ^ (8 * v181) ^ (v181 << 11) ^ (v181 << 13) ^ (v181 << 16) ^ (v181 << 18) ^ (v181 << 20) ^ v186;
  v195 = LODWORD(STACK[0x3FC]) ^ 0xBB7B83BF;
  LODWORD(STACK[0x3FC]) = v195;
  LODWORD(v147) = v180 ^ (4 * (v177 >> 21)) ^ (32 * (v177 >> 21)) ^ (v177 >> 21 << 11) ^ v195;
  LODWORD(STACK[0x570]) = v147 >> 21;
  LODWORD(STACK[0x56C]) = v147 >> 19;
  LODWORD(STACK[0x238]) = v147 >> 25;
  LODWORD(STACK[0x234]) = v147 >> 22;
  LODWORD(STACK[0x388]) = v147 >> 18;
  LODWORD(STACK[0x560]) = v147 >> 14;
  LODWORD(STACK[0x220]) = WORD1(v147);
  LODWORD(STACK[0x384]) = v147 >> 13;
  LODWORD(STACK[0x55C]) = v147 >> 11;
  LODWORD(STACK[0x218]) = v147 >> 12;
  v196 = v147 ^ (v177 >> 21);
  LODWORD(STACK[0x550]) = v196 >> 6;
  LODWORD(STACK[0x380]) = v196 >> 4;
  v197 = (v147 >> 22) ^ (v147 >> 20) ^ (v147 >> 25) ^ (v147 >> 21) ^ (v147 >> 19) ^ (v147 >> 18) ^ WORD1(v147) ^ (v147 >> 14) ^ (v147 >> 13) ^ (v147 >> 12) ^ (v147 >> 11) ^ (v196 >> 1) ^ (v196 >> 7) ^ (v196 >> 6) ^ (v196 >> 4);
  LODWORD(STACK[0x2A4]) = v197;
  LODWORD(STACK[0x20C]) = (v147 >> 29) ^ (v147 >> 30);
  LODWORD(STACK[0x37C]) = (v147 >> 28) ^ (v147 >> 27) ^ (v147 >> 15);
  LODWORD(STACK[0x2A8]) = (v197 >> 27) ^ (v147 >> 31);
  LODWORD(STACK[0x208]) = BYTE3(v147) ^ (v147 >> 17);
  LODWORD(v147) = LODWORD(STACK[0x4A8]) ^ 0x5C700785;
  LODWORD(STACK[0x3C0]) = v147;
  LODWORD(v147) = v147 ^ (LODWORD(STACK[0x54C]) << 31) ^ v175 ^ (v175 << 12);
  LODWORD(STACK[0x54C]) = v175 << 14;
  LODWORD(v147) = v147 ^ (v175 << 14) ^ (v175 << 21) ^ LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x53C]);
  LODWORD(STACK[0x284]) = v175 << 19;
  v198 = (v175 << 19) ^ LODWORD(STACK[0x28C]) ^ (v175 << 25) ^ (v175 << 26);
  LODWORD(STACK[0x540]) = v175 << 28;
  LODWORD(v147) = v147 ^ v198 ^ (v175 << 28);
  v199 = LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x580]);
  v200 = LODWORD(STACK[0x2A0]) ^ (v199 >> 27) ^ (v199 >> 21);
  LODWORD(STACK[0x4A8]) = v147 ^ v199 ^ (v199 << 11) ^ (4 * v199) ^ (32 * v199) ^ v200 ^ (4 * v200) ^ (32 * v200) ^ (v200 << 11);
  LODWORD(v147) = (v127 >> 27) ^ (v127 >> 30) ^ (v186 >> 21);
  v201 = v194 ^ (4 * v186) ^ (32 * v186) ^ (v147 | (v186 << 11));
  v202 = v201 ^ (4 * v147);
  v203 = v202 ^ (32 * v147);
  LODWORD(STACK[0x240]) = v202;
  v204 = v203 ^ (v147 << 11);
  v205 = (v204 >> 4) ^ (v204 >> 2);
  v206 = (v204 >> 15) ^ (v204 >> 13) ^ (v201 >> 28) ^ (v204 >> 18) ^ (v201 >> 27) ^ (v204 >> 5) ^ (v204 >> 19) ^ (v204 >> 21) ^ (v204 >> 14) ^ (v204 >> 11) ^ (v204 >> 10) ^ (v204 >> 9) ^ (v204 >> 6) ^ v205;
  LODWORD(STACK[0x28C]) = v206;
  LODWORD(STACK[0x290]) = (v206 >> 21) ^ (v205 >> 27);
  v207 = LODWORD(STACK[0x204]) ^ (v166 >> 15) ^ (v166 >> 2) ^ LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x2AC]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x2CC]) ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2C0]) ^ LODWORD(STACK[0x2B4]) ^ LODWORD(STACK[0x2B0]) ^ (v166 >> 4);
  LODWORD(v161) = (v207 >> 27) ^ (v207 >> 21);
  v208 = (16 * v166) ^ (32 * v166) ^ (v166 << 17) ^ (v166 << 30) ^ v189 ^ v190 ^ (v166 << 14) ^ LODWORD(STACK[0x210]) ^ LODWORD(STACK[0x224]) ^ LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x2D4]) ^ (v166 << 28) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x438]) ^ (4 * v207) ^ (32 * v207) ^ (v207 << 11) ^ v161 ^ (4 * v161) ^ (32 * v161) ^ (v161 << 11) ^ (v207 - ((2 * v207) & 0x353A4B1A) - 1700977267) ^ (LODWORD(STACK[0x29C]) << 31);
  v209 = LODWORD(STACK[0x278]) ^ (v181 >> 20) ^ (v181 >> 13) ^ (v181 >> 1) ^ LODWORD(STACK[0x244]) ^ LODWORD(STACK[0x270]) ^ (v181 >> 19) ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x274]) ^ LODWORD(STACK[0x268]) ^ LODWORD(STACK[0x26C]) ^ LODWORD(STACK[0x294]) ^ (v181 >> 6) ^ LODWORD(STACK[0x27C]);
  LODWORD(v161) = v181 ^ LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x528]);
  v210 = LODWORD(STACK[0x538]) << 28;
  LODWORD(STACK[0x274]) = v210;
  v211 = v208 ^ v161 ^ v210;
  LODWORD(v161) = LODWORD(STACK[0x21C]) ^ (v181 << 11) ^ LODWORD(STACK[0x524]);
  LODWORD(STACK[0x278]) = v181 << 14;
  v212 = v211 ^ (v181 << 12) ^ (v181 << 19) ^ v161 ^ (v181 << 14) ^ LODWORD(STACK[0x520]) ^ (v181 << 18) ^ LODWORD(STACK[0x518]) ^ v209;
  LODWORD(v161) = LODWORD(STACK[0x298]) ^ (v209 >> 21) ^ (v209 >> 27);
  v213 = v212 ^ (4 * v209) ^ (32 * v209) ^ (v209 << 11) ^ v161 ^ (4 * v161) ^ (32 * v161) ^ (v161 << 11);
  v214 = (v204 >> 7) ^ (v204 >> 8) ^ (v204 >> 12) ^ HIBYTE(v201) ^ (v201 >> 25) ^ (v201 >> 22) ^ (v204 >> 17) ^ HIWORD(v204) ^ (v204 >> 5) ^ (v204 >> 21) ^ (v204 >> 19) ^ (v204 >> 14) ^ (v204 >> 11) ^ (v204 >> 10) ^ (v204 >> 9) ^ (v204 >> 6);
  LODWORD(v161) = (v204 << 11) ^ (v204 << 13) ^ (v204 << 18) ^ (v203 << 21) ^ (v203 << 22);
  LODWORD(STACK[0x26C]) = v161;
  v215 = (v201 >> 30) ^ (v201 >> 29);
  LODWORD(STACK[0x23C]) = v215;
  v216 = (4 * v204) ^ (8 * v204);
  LODWORD(STACK[0x268]) = v216;
  v217 = v213 ^ (v204 << 8) ^ (v204 << 7) ^ (v204 << 10) ^ (v204 << 15) ^ (v204 << 16) ^ (v204 << 20) ^ (v203 << 24) ^ (v203 << 25);
  LODWORD(v147) = v203 << 23;
  LODWORD(STACK[0x270]) = v203 << 23;
  v203 <<= 26;
  LODWORD(STACK[0x248]) = v203;
  LODWORD(STACK[0x244]) = v202 << 27;
  LODWORD(v127) = v217 ^ v161 ^ v147 ^ v203 ^ (v202 << 27) ^ v216 ^ v214 ^ v215 ^ (4 * (v214 ^ v215)) ^ (32 * (v214 ^ v215)) ^ ((v214 ^ v215) << 11);
  LOBYTE(v217) = (STACK[0x508] & 0x10 ^ 0x10) + (STACK[0x508] & 0x10);
  v218 = LODWORD(STACK[0x20C]) ^ (v196 >> 10) ^ (v196 >> 9);
  LODWORD(STACK[0x2C0]) = v218;
  LODWORD(v147) = LODWORD(STACK[0x208]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x220]) ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x234]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x55C]) ^ (v196 >> 8);
  LODWORD(v161) = v218 ^ (v196 >> 7) ^ LODWORD(STACK[0x550]);
  LODWORD(STACK[0x2B4]) = v196 >> 5;
  LODWORD(v147) = v147 ^ v161 ^ (v196 >> 5);
  v219 = LODWORD(STACK[0x4A8]) ^ (v196 << 15) ^ (v196 << 8) ^ (v196 << 24);
  LODWORD(STACK[0x2B0]) = v196 << 11;
  LODWORD(STACK[0x2AC]) = v196 << 13;
  v220 = (v196 << 7) ^ (v196 << 10) ^ (v196 << 11) ^ (v196 << 13);
  LODWORD(STACK[0x208]) = v220;
  LODWORD(STACK[0x20C]) = v196 << 16;
  LODWORD(STACK[0x510]) = v196 << 18;
  LODWORD(STACK[0x508]) = v196 << 21;
  LODWORD(STACK[0x2A0]) = v196 << 22;
  LODWORD(STACK[0x29C]) = v196 << 23;
  LODWORD(STACK[0x504]) = v196 << 26;
  LODWORD(STACK[0x298]) = v196 << 27;
  LODWORD(v161) = (8 * v196) ^ (4 * v196);
  LODWORD(STACK[0x294]) = v161;
  v221 = v219 ^ v220 ^ (v196 << 16) ^ (v196 << 18) ^ (v196 << 20) ^ (v196 << 21) ^ (v196 << 22) ^ (v196 << 23) ^ (v196 << 25) ^ (v196 << 26) ^ (v196 << 27) ^ v161 ^ v147 ^ (4 * v147) ^ (32 * v147) ^ (v147 << 11) ^ (32 * (v147 >> 21)) ^ (v147 >> 21 << 11) ^ (4 * (v147 >> 21)) ^ (v175 << v217);
  v222 = v221 ^ (v147 >> 21);
  LODWORD(STACK[0x238]) = v222 << 10;
  LODWORD(STACK[0x234]) = v222 << 7;
  LODWORD(v161) = (v222 << 7) ^ (v222 << 10) ^ (v222 << 11);
  LODWORD(STACK[0x280]) = v161;
  v223 = LOBYTE(STACK[0x968]) ^ 0xF3;
  LODWORD(STACK[0x4A8]) = v223;
  LODWORD(STACK[0x230]) = 8 * v222;
  v224 = (8 * v222) ^ (v222 << 8) ^ v161 ^ (v222 << (v223 & 2) << (v223 & 2 ^ 2));
  LODWORD(STACK[0x220]) = v222 << 13;
  LODWORD(STACK[0x224]) = v222 << 16;
  LODWORD(STACK[0x210]) = v222 << 20;
  LODWORD(v161) = (v222 << 20) ^ (v222 << 18) ^ (v222 << 21);
  LODWORD(STACK[0x27C]) = v161;
  LODWORD(STACK[0x214]) = v222 << 22;
  LODWORD(STACK[0x21C]) = v222 << 24;
  LODWORD(STACK[0x218]) = v222 << 25;
  HIDWORD(v225) = (v222 << 23) ^ (v222 << 15) ^ (v222 << 16) ^ (v224 & 0xA634AC8B ^ (v222 << 13) & 0xA634A000 | v224 & 0x59CB5374 ^ (v222 << 13) & 0x59CB4000);
  LODWORD(v225) = v161 ^ (v222 << 22) ^ (v222 << 24) ^ (v222 << 25) ^ HIDWORD(v225);
  LODWORD(STACK[0x204]) = v225 >> 17;
  v214 >>= 21;
  v226 = v127 ^ (4 * v214) ^ (32 * v214) ^ (v214 << 11) ^ 0x23C2F9B0;
  v227 = HIWORD(v226);
  v228 = v226 >> 12;
  v229 = v226 ^ v214;
  v230 = (v226 ^ v214) >> 7;
  v231 = (v226 ^ v214) >> 6;
  v232 = (v226 ^ v214) >> 4;
  v233 = (v127 >> 31) ^ (v127 >> 30) ^ (v226 >> 15) ^ (v226 >> 29) ^ (v226 >> 26) ^ (v226 >> 25) ^ (v226 >> 22) ^ (v226 >> 19) ^ (v226 >> 18) ^ HIWORD(v226) ^ (v226 >> 12) ^ ((v226 ^ v214) >> 3) ^ ((v226 ^ v214) >> 8) ^ ((v226 ^ v214) >> 10) ^ v230 ^ v231 ^ v232;
  v234 = (2 * (v226 ^ v214)) ^ (4 * (v226 ^ v214)) ^ (8 * (v226 ^ v214)) ^ ((v226 ^ v214) << 6) ^ ((v226 ^ v214) << 17) ^ ((v226 ^ v214) << 22) ^ ((v226 ^ v214) << 24) ^ ((v226 ^ v214) << 29) ^ (4 * v233) ^ (32 * v233) ^ (v233 << 11);
  v235 = (v233 >> 27) ^ (v233 >> 21) ^ 0x691FB96A;
  v236 = (v234 - ((2 * v234) & 0xF055C28) - 2021478892) ^ (4 * v235) ^ 0x23FC4BBC;
  LODWORD(v147) = v236 - ((2 * v236) & 0xC1632F62);
  v237 = (v226 ^ v214) << 7;
  LODWORD(STACK[0x2F0]) = v237;
  LODWORD(v161) = v226 ^ v214 ^ v237;
  v238 = (v226 ^ v214) << 10;
  LODWORD(STACK[0x2E4]) = v238;
  v239 = (v226 ^ v214) << 13;
  LODWORD(STACK[0x2E8]) = v239;
  LODWORD(STACK[0x2E0]) = v229 << 16;
  LODWORD(STACK[0x2DC]) = v229 << 14;
  LODWORD(STACK[0x2D8]) = v229 << 20;
  LODWORD(STACK[0x2D4]) = v229 << 25;
  LODWORD(STACK[0x2CC]) = (v147 + 1622251441) ^ (32 * v235);
  LODWORD(STACK[0x2D0]) = v161 ^ v238 ^ v239 ^ (v229 << 14) ^ (v229 << 16) ^ (v229 << 20) ^ (v229 << 26) ^ (v229 << 25) ^ (v229 << 28) ^ v233 ^ v235 ^ (v235 << 11);
  v240 = (v226 >> 14) ^ (v226 >> 13) ^ (v226 >> 11);
  v241 = (v226 >> 20) ^ (v226 >> 21) ^ (v226 >> 18) ^ (v226 >> 22) ^ (v226 >> 25) ^ (v226 >> 19);
  LODWORD(STACK[0x2C8]) = v241;
  v242 = v240 ^ v227 ^ (v229 >> 1) ^ v241;
  v243 = v230 ^ v228 ^ v231 ^ v232 ^ v242;
  v244 = (v243 >> 27) ^ (v242 >> 30);
  v245 = (v175 >> 28) ^ (v175 >> 27) ^ (v175 >> 2) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x358]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x580]);
  v246 = (v245 >> 27) ^ (v245 >> 21);
  v247 = v245 ^ LODWORD(STACK[0x318]);
  LODWORD(v147) = LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x284]) ^ LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x33C]) ^ LODWORD(STACK[0x58C]) ^ LODWORD(STACK[0x54C]);
  LODWORD(STACK[0x358]) = v175 << 17;
  LODWORD(v147) = v147 ^ (v175 << 17) ^ LODWORD(STACK[0x288]) ^ LODWORD(STACK[0x584]) ^ LODWORD(STACK[0x320]);
  v248 = LODWORD(STACK[0x3A8]) ^ 0x27366C5B;
  LODWORD(STACK[0x580]) = v248;
  v249 = v248 ^ (32 * v175) ^ (v175 << 30) ^ (16 * v175) ^ v147 ^ LODWORD(STACK[0x540]) ^ v247 ^ (4 * v247) ^ (32 * v247) ^ (v247 << 11) ^ v246 ^ (4 * v246) ^ (32 * v246) ^ (v246 << 11);
  LODWORD(STACK[0x53C]) = v196 << 14;
  v250 = LODWORD(STACK[0x208]) ^ (v196 << 14) ^ LODWORD(STACK[0x20C]) ^ LODWORD(STACK[0x510]);
  LODWORD(STACK[0x370]) = v196 << 19;
  v251 = v250 ^ (v196 << 19) ^ (v196 << 20) ^ LODWORD(STACK[0x508]) ^ (v196 << 25) ^ LODWORD(STACK[0x504]);
  LODWORD(STACK[0x360]) = v196 << 28;
  v252 = v249 ^ v196 ^ (v196 << 31) ^ (v196 << 12) ^ v251 ^ (v196 << 28) ^ LODWORD(STACK[0x2A4]) ^ (4 * LODWORD(STACK[0x2A4])) ^ (32 * LODWORD(STACK[0x2A4])) ^ (LODWORD(STACK[0x2A4]) << 11) ^ LODWORD(STACK[0x2A8]) ^ (LODWORD(STACK[0x2A4]) >> 21) ^ (32 * (LODWORD(STACK[0x2A8]) ^ (LODWORD(STACK[0x2A4]) >> 21))) ^ ((LODWORD(STACK[0x2A8]) ^ (LODWORD(STACK[0x2A4]) >> 21)) << 11) ^ (4 * (LODWORD(STACK[0x2A8]) ^ (LODWORD(STACK[0x2A4]) >> 21)));
  LODWORD(STACK[0x36C]) = v221 >> 25;
  LODWORD(v147) = (v221 >> 25) ^ (v221 >> 29);
  v253 = (v221 >> 22) ^ (v221 >> 21);
  LODWORD(STACK[0x354]) = v253;
  LODWORD(STACK[0x320]) = v221 >> 19;
  v254 = v147 ^ (v221 >> 30) ^ HIBYTE(v221) ^ (v221 >> 17) ^ v253 ^ (v221 >> 19);
  v255 = (v221 >> 12) ^ (v221 >> 11);
  LODWORD(STACK[0x348]) = v255;
  LODWORD(STACK[0x344]) = v221 >> 14;
  LODWORD(STACK[0x31C]) = HIWORD(v221);
  LODWORD(STACK[0x340]) = v222 >> 7;
  LODWORD(STACK[0x33C]) = v222 >> 6;
  v256 = (v222 >> 10) ^ (v222 >> 8) ^ (v222 >> 7) ^ (v222 >> 6);
  v257 = (v221 >> 14) ^ HIWORD(v221) ^ v255 ^ (v222 >> 9) ^ (v222 >> 5) ^ v256 ^ v254;
  v258 = v252 ^ (v222 << 27) ^ v257 ^ (4 * v257) ^ (32 * v257) ^ (v257 << ((v254 & 0xB ^ 0xB) + (v254 & 0xB))) ^ (v257 >> 27) ^ (v257 >> 21) ^ (4 * ((v257 >> 27) ^ (v257 >> 21))) ^ (32 * ((v257 >> 27) ^ (v257 >> 21))) ^ (((v257 >> 27) ^ (v257 >> 21)) << 11) ^ __ROR4__(LODWORD(STACK[0x204]) ^ (v222 << 9) & 0x7FFF ^ 0x69C133F2, 15);
  v259 = LODWORD(STACK[0x378]) ^ (LODWORD(STACK[0x374]) >> 21);
  v260 = v181 ^ (LODWORD(STACK[0x538]) << 29) ^ LODWORD(STACK[0x314]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x274]) ^ (v181 << 6) ^ (2 * v181) ^ (v181 << 17) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x2F4]) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x374]) ^ (4 * LODWORD(STACK[0x374])) ^ (32 * LODWORD(STACK[0x374])) ^ (v259 | (LODWORD(STACK[0x374]) << 11)) ^ (4 * v259) ^ (32 * v259) ^ (v259 << 11) ^ (v201 << 30) ^ (32 * v204) ^ (16 * v204) ^ (v204 << 14) ^ (v204 << 17) ^ (v204 << 19) ^ (LODWORD(STACK[0x240]) << 28) ^ LODWORD(STACK[0x26C]) ^ LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x270]) ^ LODWORD(STACK[0x244]) ^ LODWORD(STACK[0x268]) ^ LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x23C]) ^ (4 * (LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x23C]))) ^ (32 * (LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x23C]))) ^ ((LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x23C])) << 11) ^ LODWORD(STACK[0x290]) ^ (4 * LODWORD(STACK[0x290])) ^ (32 * LODWORD(STACK[0x290])) ^ (LODWORD(STACK[0x290]) << 11);
  LODWORD(STACK[0x378]) = v229 ^ (v229 << 11) ^ (v229 << 12) ^ (v229 << 18) ^ (v229 << 19) ^ (v229 << 21);
  LODWORD(STACK[0x3A8]) = v244 ^ (v243 >> 21);
  LODWORD(STACK[0x394]) = v260 ^ (v229 << 31) ^ (v229 << 26) ^ (v229 << 28) ^ v243 ^ (4 * v243) ^ (32 * v243) ^ (v243 << 11);
  v261 = v258 ^ 0x67E4D382;
  LODWORD(v161) = ((v258 ^ 0x67E4D382u) >> 4) ^ ((v258 ^ 0x67E4D382u) >> 2);
  v262 = (v258 ^ 0x67E4D382u) >> 19;
  LODWORD(STACK[0x538]) = v262;
  LODWORD(v127) = (v258 ^ 0x67E4D382u) >> 21;
  LODWORD(STACK[0x534]) = v127;
  v263 = v127 ^ v262;
  LODWORD(v127) = (v258 ^ 0x67E4D382u) >> 14;
  LODWORD(STACK[0x528]) = v127;
  LODWORD(v127) = v263 ^ v127;
  v264 = (v258 ^ 0x67E4D382u) >> 11;
  LODWORD(STACK[0x524]) = v264;
  LODWORD(v127) = v127 ^ v264;
  v265 = (v258 ^ 0x67E4D382u) >> 10;
  LODWORD(STACK[0x518]) = v265;
  LODWORD(v127) = v127 ^ v265;
  v266 = (v258 ^ 0x67E4D382u) >> 9;
  LODWORD(STACK[0x374]) = v266;
  LODWORD(v127) = v127 ^ v266;
  v267 = (v258 ^ 0x67E4D382u) >> 5;
  LODWORD(STACK[0x338]) = v267;
  v268 = (v258 ^ 0x67E4D382u) >> 6;
  v269 = ((v258 ^ 0x67E4D382u) >> 15) ^ ((v258 ^ 0x67E4D382u) >> 13) ^ ((v258 ^ 0x67E4D382u) >> 18) ^ ((v258 ^ 0x67E4D382u) >> 28) ^ ((v258 ^ 0x67E4D382u) >> 27) ^ v127 ^ v267 ^ v268 ^ v161;
  v270 = (v269 >> 21) ^ (v161 >> 27);
  LODWORD(STACK[0x330]) = (v221 >> 20) ^ (v221 >> 13);
  LODWORD(v161) = v147 ^ (v221 >> 26) ^ (v221 >> 31) ^ (v221 >> 22) ^ (v221 >> 19) ^ (v221 >> 18) ^ HIWORD(v221) ^ (v222 >> ((v222 & 0x1E ^ 0x1E) + (v222 & 0x1E)));
  v271 = STACK[0x220];
  v272 = v222 ^ (4 * v222) ^ (v222 << 17) ^ (2 * v222) ^ (v222 << 6) ^ LODWORD(STACK[0x210]) ^ LODWORD(STACK[0x230]) ^ LODWORD(STACK[0x234]) ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x220]) ^ (v222 << 14);
  v273 = (v221 >> 12) ^ (v221 >> 15) ^ (v222 >> 3) ^ v256 ^ (v222 >> 4) ^ v161;
  v274 = STACK[0x224];
  v275 = STACK[0x218];
  LODWORD(v161) = (v273 >> ((v161 & 0x1B ^ 0x1B) + (v161 & 0x1B))) ^ (v273 >> 21);
  v276 = (v261 >> 29) ^ (v261 >> 30);
  v277 = (4 * v261) ^ (8 * v261);
  v278 = (v222 << 29) ^ 0xC0A7BE35 ^ LODWORD(STACK[0x224]) ^ LODWORD(STACK[0x214]) ^ LODWORD(STACK[0x21C]) ^ LODWORD(STACK[0x218]) ^ (v222 << 26) ^ v272 & 0xFFFF7FFF ^ (v272 & 0x8000 | (v222 << 28)) ^ v273 ^ (4 * v273) ^ (32 * v273) ^ (v273 << 11) ^ v161 ^ (4 * v161) ^ (32 * v161) ^ (v161 << 11) ^ (v261 << 28) ^ (v261 << 30) ^ (v261 << 19) ^ (32 * v261) ^ (16 * v261) ^ (v261 << 17) ^ (v261 << 14);
  v279 = v269 ^ v276;
  v280 = v261 << 11;
  v281 = v261 << 21;
  v282 = v261 << 13;
  LODWORD(v161) = v261 << 18;
  v283 = v261 << 23;
  LODWORD(v273) = v261 << 22;
  LODWORD(v127) = v261 << 26;
  v284 = v261 << 27;
  LODWORD(STACK[0x520]) = v278 ^ (v261 << 21) ^ (v261 << 11) ^ (v261 << 13) ^ (v261 << 18) ^ (v261 << 23) ^ (v261 << 22) ^ (v261 << 26) ^ (v261 << 27) ^ v277 ^ v279 ^ (4 * v279) ^ (32 * v279) ^ (v279 << 11) ^ v270 ^ (32 * v270) ^ (v270 << 11) ^ (4 * v270);
  LODWORD(v147) = LODWORD(STACK[0x37C]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x55C]) ^ (v196 >> 2) ^ LODWORD(STACK[0x2C0]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x2B4]) ^ LODWORD(STACK[0x380]);
  v285 = (v147 >> 21) ^ (v147 >> 27);
  v286 = LODWORD(STACK[0x3AC]) ^ v175 ^ LODWORD(STACK[0x590]) ^ (v175 << 29) ^ (v175 << 6) ^ LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x584]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x58C]) ^ LODWORD(STACK[0x54C]) ^ LODWORD(STACK[0x3A4]) ^ LODWORD(STACK[0x358]) ^ LODWORD(STACK[0x328]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x3B0]) ^ (4 * LODWORD(STACK[0x3B0])) ^ (32 * LODWORD(STACK[0x3B0])) ^ (LODWORD(STACK[0x3B0]) << 11) ^ LODWORD(STACK[0x3BC]) ^ (4 * LODWORD(STACK[0x3BC])) ^ (32 * LODWORD(STACK[0x3BC])) ^ (LODWORD(STACK[0x3BC]) << 11) ^ (32 * v196) ^ (16 * v196) ^ (v196 << 17) ^ (v196 << 30) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x2AC]) ^ LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x29C]) ^ LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x294]) ^ v147 ^ (4 * v147) ^ (32 * v147) ^ (v147 << 11) ^ v285 ^ (4 * v285) ^ (32 * v285) ^ (v285 << 11);
  v287 = LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x31C]) ^ LODWORD(STACK[0x320]) ^ (v221 >> 18) ^ LODWORD(STACK[0x344]) ^ LODWORD(STACK[0x348]) ^ (v222 >> 1) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x33C]) ^ (v222 >> 4);
  v288 = LODWORD(STACK[0x27C]) ^ LODWORD(STACK[0x280]) ^ v271 ^ (v222 << 14) ^ v274 ^ v286 ^ v222 ^ (v222 << 19) ^ (v222 << 12) ^ (v222 << 31);
  v289 = LOBYTE(STACK[0xA75]) ^ 0xF3;
  LODWORD(STACK[0x590]) = v289 | ((LODWORD(STACK[0x3C8]) | LOBYTE(STACK[0x91C]) ^ 0xF3) << 8);
  LODWORD(v147) = (v221 >> 31) ^ (v287 >> 21) ^ (v287 >> 27);
  v290 = v288 ^ v275 ^ (v222 << 26) ^ (v222 << 28) ^ (v175 << (v289 & 0x14) << (v289 & 0x14 ^ 0x14)) ^ v287 ^ (4 * v287) ^ (32 * v287) ^ (v287 << 11) ^ v147 ^ (4 * v147) ^ (32 * v147) ^ (v147 << 11);
  LODWORD(v147) = (v261 >> 7) ^ (v261 >> 8) ^ HIBYTE(v261) ^ (v261 >> 25) ^ (v261 >> 22) ^ (v261 >> 17) ^ (v261 >> 12) ^ HIWORD(v261);
  v291 = v290 ^ (v261 << 8) ^ (v261 << 7) ^ (v261 << 10) ^ (v261 << 15) ^ (v261 << 16) ^ (v261 << 20) ^ (v261 << 24) ^ (v261 << 25);
  v292 = v147 ^ LODWORD(STACK[0x534]) ^ v268 ^ LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x374]) ^ LODWORD(STACK[0x338]);
  v293 = v291 ^ v280 ^ v282 ^ v161 ^ v281 ^ v273 ^ v283 ^ v127 ^ v284 ^ v277 ^ v292 ^ v276 ^ (v292 >> 21) ^ (4 * (v292 ^ v276)) ^ (32 * (v292 ^ v276)) ^ ((v292 ^ v276) << 11) ^ (32 * (v292 >> 21)) ^ (4 * (v292 >> 21)) ^ (v292 >> 21 << 11);
  LODWORD(STACK[0x560]) = LODWORD(STACK[0x4C4]) - 1908266636 + (((LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x2EC]) ^ 0xE90935A2) - 2021371578) ^ ((LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x2EC]) ^ 0x4FB838F7) + 557145105) ^ ((LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x2EC]) ^ 0x66F4C04F) + 142189737));
  LODWORD(v147) = STACK[0x4B8];
  v294 = LODWORD(STACK[0x4B8]) ^ (-1663319554 - 1673081951 * a81);
  v295 = LODWORD(STACK[0x4B8]) ^ (-1663319554 - 1673081951 * a78);
  LODWORD(STACK[0x58C]) = LODWORD(STACK[0x4B8]) ^ (-1663319554 - 1673081951 * a76);
  LODWORD(STACK[0x53C]) = v147 ^ (-1663319554 - 1673081951 * a77);
  LODWORD(STACK[0x508]) = v147 ^ (-1663319554 - 1673081951 * a79);
  LODWORD(STACK[0x504]) = v147 ^ (-1663319554 - 1673081951 * a80);
  v296 = v147 ^ (-1663319554 - 1673081951 * a83);
  v297 = v147 ^ (-1663319554 - 1673081951 * a84);
  v298 = LODWORD(STACK[0x440]) + 1120421798;
  v299 = (v298 ^ 0xF5B8A90D) & (2 * (v298 & 0xF1392D80)) ^ v298 & 0xF1392D80;
  v300 = ((2 * (v298 ^ 0x15C8BA0D)) ^ 0xC9E32F1A) & (v298 ^ 0x15C8BA0D) ^ (2 * (v298 ^ 0x15C8BA0D)) & 0xE4F1978C;
  v301 = (v300 ^ 0xC0E10600) & (4 * v299) ^ v299;
  v302 = ((4 * (v300 ^ 0x24109085)) ^ 0x93C65E34) & (v300 ^ 0x24109085) ^ (4 * (v300 ^ 0x24109085)) & 0xE4F1978C;
  v303 = (v302 ^ 0x80C01600) & (16 * v301) ^ v301;
  v304 = ((16 * (v302 ^ 0x64318189)) ^ 0x4F1978D0) & (v302 ^ 0x64318189) ^ (16 * (v302 ^ 0x64318189)) & 0xE4F19780;
  v305 = v303 ^ 0xE4F1978D ^ (v304 ^ 0x44111000) & (v303 << 8);
  LODWORD(STACK[0x4B8]) = (v305 << 16) & 0x64F10000 ^ v305 ^ ((v305 << 16) ^ 0x178D0000) & (((v304 ^ 0xA0E0870D) << 8) & 0x64F10000 ^ 0x4600000 ^ (((v304 ^ 0xA0E0870D) << 8) ^ 0x71970000) & (v304 ^ 0xA0E0870D));
  LODWORD(v147) = LODWORD(STACK[0x4C0]) - 810329317;
  LODWORD(STACK[0x510]) = v147;
  v306 = (v147 ^ a15) & (2 * (v147 & 0xBDBD746)) ^ v147 & 0xBDBD746;
  v307 = ((2 * (v147 ^ 0xD6E8615B)) ^ 0xBA676C3A) & (v147 ^ 0xD6E8615B) ^ (2 * (v147 ^ 0xD6E8615B)) & 0xDD33B61C;
  v308 = (v307 ^ 0x18232418) & (4 * v306) ^ v306;
  v309 = ((4 * (v307 ^ 0x45109205)) ^ 0x74CED874) & (v307 ^ 0x45109205) ^ (4 * (v307 ^ 0x45109205)) & 0xDD33B61C;
  v310 = (v309 ^ 0x54029000) & (16 * v308) ^ v308;
  v311 = ((16 * (v309 ^ 0x89312609)) ^ 0xD33B61D0) & (v309 ^ 0x89312609) ^ (16 * (v309 ^ 0x89312609)) & 0xDD33B610;
  v312 = v310 ^ 0xDD33B61D ^ (v311 ^ 0xD1332000) & (v310 << 8);
  LODWORD(STACK[0x4C4]) = (v312 << 16) & 0x5D330000 ^ v312 ^ ((v312 << 16) ^ 0x361D0000) & (((v311 ^ 0xC00960D) << 8) & 0x5D330000 ^ 0x4C010000 ^ (((v311 ^ 0xC00960D) << 8) ^ 0x33B60000) & (v311 ^ 0xC00960D));
  v313 = LODWORD(STACK[0x450]) - 1109882142;
  v314 = (v313 ^ 0xE009A95B) & (2 * (v313 & 0xF44DCC1B)) ^ v313 & 0xF44DCC1B;
  v315 = ((2 * (v313 ^ 0xE00A217B)) ^ 0x288FDAC0) & (v313 ^ 0xE00A217B) ^ (2 * (v313 ^ 0xE00A217B)) & 0x1447ED60;
  v316 = (v315 ^ 0x4074540) & (4 * v314) ^ v314;
  v317 = ((4 * (v315 ^ 0x14402520)) ^ 0x511FB580) & (v315 ^ 0x14402520) ^ (4 * (v315 ^ 0x14402520)) & 0x1447ED60;
  v318 = (v317 ^ 0x1007A500) & (16 * v316) ^ v316;
  v319 = ((16 * (v317 ^ 0x4404860)) ^ 0x447ED600) & (v317 ^ 0x4404860) ^ (16 * (v317 ^ 0x4404860)) & 0x1447ED60;
  v320 = v318 ^ 0x1447ED60 ^ (v319 ^ 0x446C400) & (v318 << 8);
  v321 = (v320 << 16) & 0x14470000 ^ v320 ^ ((v320 << 16) ^ 0x6D600000) & (((v319 ^ 0x10012960) << 8) & 0x14470000 ^ 0x10020000 ^ (((v319 ^ 0x10012960) << 8) ^ 0x47ED0000) & (v319 ^ 0x10012960));
  LODWORD(STACK[0x534]) = LOBYTE(STACK[0x9B1]) ^ 0xF3 | LODWORD(STACK[0x424]);
  LODWORD(STACK[0x518]) = (((LOBYTE(STACK[0x9E0]) ^ 0xF3 | LODWORD(STACK[0x420])) << 8) ^ 0x1A38463D) & (LOBYTE(STACK[0x778]) ^ 0xFFFFFFCE) | STACK[0x778] & 0xC2;
  LODWORD(STACK[0x524]) = LODWORD(STACK[0x418]) | LOBYTE(STACK[0x9FB]) ^ 0xF3;
  v322 = LOBYTE(STACK[0x965]) ^ 0x34 | LODWORD(STACK[0x414]);
  LODWORD(STACK[0x538]) = LODWORD(STACK[0x410]) | LOBYTE(STACK[0x980]) ^ 0xF3;
  LOBYTE(v282) = STACK[0xABE];
  v323 = (LOBYTE(STACK[0xABE]) | 0xFFFFFF00) & ((v322 << 8) ^ 0xC94D62C0);
  v324 = LODWORD(STACK[0x40C]) | LOBYTE(STACK[0x8EA]) ^ 0xF3;
  LODWORD(STACK[0x528]) = LODWORD(STACK[0x408]) | LOBYTE(STACK[0x905]) ^ 0xF3;
  LODWORD(STACK[0x54C]) = ((v324 << 8) ^ 0xC65A9FA6) & (LOBYTE(STACK[0xA43]) ^ 0xFFFFFF54) | STACK[0xA43] & 0x59;
  v325 = LODWORD(STACK[0x404]) | LOBYTE(STACK[0x86F]) ^ 0xF3;
  LODWORD(STACK[0x56C]) = LOBYTE(STACK[0x88A]) ^ 0xF3 | LODWORD(STACK[0x400]);
  LODWORD(STACK[0x550]) = (LOBYTE(STACK[0x9C8]) | 0xFFFFFF00) & ((v325 << 8) ^ 0xC3D59B71) | STACK[0x9C8] & 0x8E;
  LODWORD(STACK[0x570]) = (((LODWORD(STACK[0x3F8]) | LOBYTE(STACK[0x7F4]) ^ 0xF3) << 8) ^ 0x5827A102) & (LOBYTE(STACK[0x94D]) ^ 0xFFFFFFB5) | STACK[0x94D] & 0xFD;
  LODWORD(STACK[0x55C]) = LODWORD(STACK[0x3F4]) | LOBYTE(STACK[0x80F]) ^ 0xF3;
  LODWORD(STACK[0x57C]) = (LOBYTE(STACK[0x8D2]) ^ 0xFFFFFF04) & (((LODWORD(STACK[0x3F0]) | LOBYTE(STACK[0x779]) ^ 0xF3) << 8) ^ 0x2F92C2B7) | STACK[0x8D2] & 0x48;
  LODWORD(STACK[0x584]) = (LOBYTE(STACK[0x857]) | 0xFFFFFF00) & (((LODWORD(STACK[0x3EC]) | LOBYTE(STACK[0xABF]) ^ 0xF3) << 8) ^ 0x6F8674E2) | STACK[0x857] & 0x1D;
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x3E0]) | LOBYTE(STACK[0xADA]) ^ 0xF3;
  LODWORD(STACK[0x588]) = (((LODWORD(STACK[0x3D8]) | LOBYTE(STACK[0xA44]) ^ 0xF3) << 8) ^ 0xD09A8D7E) & (LOBYTE(STACK[0x7DC]) ^ 0xFFFFFF8C) | STACK[0x7DC] & 0x81;
  LODWORD(STACK[0x540]) = LOBYTE(STACK[0xA5F]) ^ 0xF3 | LODWORD(STACK[0x3D4]);
  v326 = ((LODWORD(STACK[0x438]) ^ 0x7F1C94F3) - 1569932229) ^ ((LODWORD(STACK[0x438]) ^ 0x1F5D2CFC) - 1037237194) ^ ((LODWORD(STACK[0x438]) ^ 0xD91E6432) + 74337532);
  v327 = LODWORD(STACK[0x2D0]) ^ 0x87F4AE1A ^ ((LODWORD(STACK[0x2CC]) ^ 0x4346BAF1) - ((2 * (LODWORD(STACK[0x2CC]) ^ 0x4346BAF1)) & 0x189F0662) - 1940946127);
  v328 = LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x2D8]);
  LODWORD(v147) = LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x3A8]) ^ (4 * LODWORD(STACK[0x3A8])) ^ (LODWORD(STACK[0x3A8]) << 11) ^ (LODWORD(STACK[0x3A8]) << ((STACK[0x2C8] & 5 ^ 5) + (STACK[0x2C8] & 5))) ^ (v328 & 0xB64981A9 ^ STACK[0x2D4] & 0xB6000000 | v328 & 0x49B67E56 ^ STACK[0x2D4] & 0x48000000);
  v329 = (LODWORD(STACK[0x44C]) + 630690648) ^ (((LODWORD(STACK[0x44C]) + 630690648) ^ 0x8B70CCE7) + 999601429) ^ (((LODWORD(STACK[0x44C]) + 630690648) ^ 0xED3E9FBA) + 1574626890) ^ (((LODWORD(STACK[0x44C]) + 630690648) ^ 0x72A82A2E) - 1035185186) ^ (((LODWORD(STACK[0x44C]) + 630690648) ^ 0x5BFDFF7F) - 350648691) ^ v327;
  LODWORD(v273) = ((v329 ^ 0x3698F04E) - 52589895) ^ ((v329 ^ 0x4B4D2F91) - 2130160280) ^ ((v329 ^ 0xADA19D92) + 1743054693);
  LODWORD(v161) = LODWORD(STACK[0x460]) - 1062748619 - ((2 * LODWORD(STACK[0x460])) & 0x814F7C6A);
  v330 = (LODWORD(STACK[0x46C]) + 1822499687) ^ (((LODWORD(STACK[0x46C]) + 1822499687) ^ 0xC2997F7E) + 655404505) ^ (((LODWORD(STACK[0x46C]) + 1822499687) ^ 0x53DCC992) - 1235936459) ^ (((LODWORD(STACK[0x46C]) + 1822499687) ^ 0xECCC646B) + 155563726) ^ (((LODWORD(STACK[0x46C]) + 1822499687) ^ 0x67FFFFDE) - 2106184327) ^ v327;
  v331 = LODWORD(STACK[0x45C]) - 1062748619 - ((2 * LODWORD(STACK[0x45C])) & 0x814F7C6A);
  LODWORD(v127) = LODWORD(STACK[0x454]) - 1062748619 - ((2 * LODWORD(STACK[0x454])) & 0x814F7C6A);
  v332 = LODWORD(STACK[0x458]) - 1062748619 - ((2 * LODWORD(STACK[0x458])) & 0x814F7C6A);
  v333 = (LODWORD(STACK[0x480]) - 579300827) ^ (((LODWORD(STACK[0x480]) - 579300827) ^ 0x69CC65FE) - 1999241324) ^ (((LODWORD(STACK[0x480]) - 579300827) ^ 0x246529A8) - 981683258) ^ (((LODWORD(STACK[0x480]) - 579300827) ^ 0x2CB2C63B) - 844407721) ^ (((LODWORD(STACK[0x480]) - 579300827) ^ 0x7FFDEFFF) - 1629194861) ^ v327;
  LODWORD(STACK[0x4C0]) = v323 & 0xFFFFFFC0 | v282 & 0x3F;
  v334 = -2009212831 * v326 + 139175405;
  v335 = STACK[0x598];
  LODWORD(STACK[0x6C0]) = v334;
  LODWORD(STACK[0x6CC]) = -2009212831 * v166 - 75026750;
  LODWORD(STACK[0x6C4]) = -2009212831 * LODWORD(STACK[0x3E4]) - 75026750;
  LODWORD(STACK[0x6D0]) = -2009212831 * LODWORD(STACK[0x580]) - 75026750;
  LODWORD(STACK[0x6C8]) = -2009212831 * LODWORD(STACK[0x3E8]) - 75026750;
  LODWORD(STACK[0x6D8]) = -2009212831 * LODWORD(STACK[0x3FC]) - 75026750;
  LODWORD(STACK[0x6D4]) = -2009212831 * LODWORD(STACK[0x3C0]) - 75026750;
  LODWORD(STACK[0x6DC]) = -2009212831 * v175 - 75026750;
  LODWORD(STACK[0x5B8]) = -2009212831 * v273 + 573968262;
  LODWORD(STACK[0x5BC]) = -2009212831 * (((v330 ^ 0xFC506290) - 1493468237) ^ ((v330 ^ 0x64ADA1C4) + 1040627943) ^ ((v330 ^ 0x1DE42A4C) + 1196372847)) - 1476829081;
  LODWORD(STACK[0x5F8]) = -2009212831 * (v297 ^ v147) - 75026750;
  LODWORD(STACK[0x5FC]) = -2009212831 * (v294 ^ v147) - 75026750;
  v336 = STACK[0x43C];
  v337 = -2009212831 * (LODWORD(STACK[0x43C]) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x228])) ^ v293) - 75026750;
  LODWORD(STACK[0x618]) = -2009212831 * (LODWORD(STACK[0x43C]) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x22C])) ^ v293) - 75026750;
  LODWORD(STACK[0x61C]) = v337;
  v338 = STACK[0x520];
  v339 = -2009212831 * (LODWORD(STACK[0x520]) ^ v331) - 75026750;
  LODWORD(STACK[0x5D8]) = -2009212831 * (LODWORD(STACK[0x520]) ^ v161) - 75026750;
  LODWORD(STACK[0x5DC]) = v339;
  v340 = (LODWORD(STACK[0x47C]) + 1922121658) ^ (((LODWORD(STACK[0x47C]) + 1922121658) ^ 0xF09D90EA) + 653579668) ^ (((LODWORD(STACK[0x47C]) + 1922121658) ^ 0xBA613EBC) + 1812495302) ^ (((LODWORD(STACK[0x47C]) + 1922121658) ^ 0x9885EA27) + 1324134239) ^ (((LODWORD(STACK[0x47C]) + 1922121658) ^ 0xFBEFFEF7) + 763804559);
  LODWORD(STACK[0x5C0]) = -2009212831 * (((v333 ^ 0xF3901669) - 1592849818) ^ ((v333 ^ 0xDC26EC07) - 1900417012) ^ ((v333 ^ 0xAE3F5BBD) - 56604750)) - 1856750366;
  LODWORD(STACK[0x5C4]) = -2009212831 * (((v313 ^ v327 ^ (2 * v321) ^ 0x89C28986) - 1831897013) ^ ((v313 ^ v327 ^ (2 * v321) ^ 0x37F72E14) + 754638809) ^ ((v313 ^ v327 ^ (2 * v321) ^ 0xF5187508) - 300579643)) - 573742389;
  LODWORD(STACK[0x5E0]) = -2009212831 * (v338 ^ v127) - 75026750;
  LODWORD(STACK[0x5E4]) = -2009212831 * (v338 ^ v332) - 75026750;
  v341 = LODWORD(STACK[0x470]) - 1062748619 - ((2 * LODWORD(STACK[0x470])) & 0x814F7C6A);
  LODWORD(STACK[0x600]) = -2009212831 * ((v147 ^ -v147 ^ (v295 - (v147 ^ v295))) + v295) - 75026750;
  LODWORD(STACK[0x604]) = -2009212831 * (v296 ^ v147) - 75026750;
  LODWORD(v161) = STACK[0x5B0] - 2905;
  v342 = v336 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x250]));
  LODWORD(v273) = v336 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x258]));
  v343 = v336 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x25C]));
  v344 = v336 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x254]) + v161 - 1959);
  LODWORD(v127) = ((v340 ^ v327 ^ 0x567F333E) + 605037959) ^ ((v340 ^ v327 ^ 0xBF22C5DC) - 850537627) ^ ((v340 ^ v327 ^ 0x5FA48825) + 768319134);
  v345 = -2009212831 * (v336 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x260])) ^ v293) - 75026750;
  LODWORD(STACK[0x620]) = -2009212831 * (v336 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x264])) ^ v293) - 75026750;
  LODWORD(STACK[0x624]) = v345;
  v346 = LODWORD(STACK[0x488]) - 1062748619 - ((2 * LODWORD(STACK[0x488])) & 0x814F7C6A);
  v347 = v298 ^ v327 ^ (2 * LODWORD(STACK[0x4B8]));
  v348 = LODWORD(STACK[0x490]) - 1062748619 - ((2 * LODWORD(STACK[0x490])) & 0x814F7C6A);
  v349 = -2009212831 * (LODWORD(STACK[0x508]) ^ v147) - 75026750;
  LODWORD(STACK[0x608]) = -2009212831 * (LODWORD(STACK[0x504]) ^ v147) - 75026750;
  LODWORD(STACK[0x60C]) = v349;
  LODWORD(v175) = (LODWORD(STACK[0x498]) + 1676458300) ^ (((LODWORD(STACK[0x498]) + 1676458300) ^ 0x1D004633) - 1611780401) ^ (((LODWORD(STACK[0x498]) + 1676458300) ^ 0xF7CF02A7) + 1965124187) ^ (((LODWORD(STACK[0x498]) + 1676458300) ^ 0xEC212C3F) + 1859077315) ^ (((LODWORD(STACK[0x498]) + 1676458300) ^ 0x7BFFFFA9) - 116287659) ^ v327;
  LODWORD(v175) = (((v175 ^ 0xC944D41D) - 2010625438) ^ ((v175 ^ 0xCA724D55) - 1960914134) ^ ((v175 ^ 0xE148CA0B) - 1608231816)) - 482933780;
  v350 = (v175 ^ 0x9E906A97) & (2 * (v175 & 0xDCDA6CD6)) ^ v175 & 0xDCDA6CD6;
  v351 = ((2 * (v175 ^ 0x368022BB)) ^ 0xD4B49CDA) & (v175 ^ 0x368022BB) ^ (2 * (v175 ^ 0x368022BB)) & 0xEA5A4E6C;
  v352 = (v351 ^ 0xC0100448) & (4 * v350) ^ v350;
  v353 = ((4 * (v351 ^ 0x2A4A4225)) ^ 0xA96939B4) & (v351 ^ 0x2A4A4225) ^ (4 * (v351 ^ 0x2A4A4225)) & 0xEA5A4E6C;
  v354 = (v353 ^ 0xA8480820) & (16 * v352) ^ v352;
  v355 = ((16 * (v353 ^ 0x42124649)) ^ 0xA5A4E6D0) & (v353 ^ 0x42124649) ^ (16 * (v353 ^ 0x42124649)) & 0xEA5A4E60;
  v356 = v354 ^ 0xEA5A4E6D ^ (v355 ^ 0xA0004600) & (v354 << 8);
  v357 = v175 ^ (2 * ((v356 << 16) & 0x6A5A0000 ^ v356 ^ ((v356 << 16) ^ 0x4E6D0000) & (((v355 ^ 0x4A5A082D) << 8) & 0x6A5A0000 ^ 0x20100000 ^ (((v355 ^ 0x4A5A082D) << 8) ^ 0x5A4E0000) & (v355 ^ 0x4A5A082D))));
  v358 = LODWORD(STACK[0x510]) ^ v327 ^ (2 * LODWORD(STACK[0x4C4]));
  LODWORD(STACK[0x628]) = -2009212831 * (v343 ^ v293) - 75026750;
  LODWORD(STACK[0x62C]) = -2009212831 * (v293 ^ v344) - 75026750;
  v359 = LODWORD(STACK[0x4A0]) - 1062748619 - ((2 * LODWORD(STACK[0x4A0])) & 0x814F7C6A);
  LODWORD(STACK[0x5EC]) = -2009212831 * (v338 ^ v346) - 75026750;
  LODWORD(STACK[0x5E8]) = -2009212831 * (v338 ^ v341) - 75026750;
  LODWORD(STACK[0x5C8]) = -2009212831 * v127 - 1344432574;
  LODWORD(STACK[0x5CC]) = -2009212831 * (((v347 ^ 0x21D46FC4) + 126096143) ^ ((v347 ^ 0x22C646E) + 612112549) ^ ((v347 ^ 0x8D4FCD71) - 1423986244)) - 1334805008;
  v360 = LODWORD(STACK[0x53C]) ^ v147;
  LODWORD(v127) = ((LODWORD(STACK[0x560]) ^ 0x60B97C11) - 1514974752) ^ LODWORD(STACK[0x560]) ^ ((LODWORD(STACK[0x560]) ^ 0xFD787031) + 947019264) ^ ((LODWORD(STACK[0x560]) ^ 0xD8CA37AE) + 499128929) ^ ((LODWORD(STACK[0x560]) ^ 0x7FFEE9BF) - 1158364046);
  LODWORD(STACK[0x5D0]) = -2009212831 * (((v357 ^ 0x6B6C7977) - 1618289539) ^ ((v357 ^ 0xB798BA9) - 6345053) ^ ((v357 ^ 0xFCEB02D2) + 135112666)) - 2078210056;
  LODWORD(STACK[0x5D4]) = -2009212831 * ((((((484164093 - v360) ^ (v360 + 1663319554)) & 0x63243E02 ^ 0xF13DFB09) + 913603305) ^ ((((484164093 - v360) ^ (v360 + 1663319554)) & 0x63243E02 ^ 0x1A81E86D) - 574068339) ^ ((((484164093 - v360) ^ (v360 + 1663319554)) & 0x63243E02 ^ 0xEBBC1364) + 754291334)) - 940488980 + (((v358 ^ 0xAA4A4D6B) + 646548207) ^ ((v358 ^ 0xF4C41494) + 2013778706) ^ ((v358 ^ 0x587F26C2) - 725819064))) + 1661797337;
  v361 = v338;
  LODWORD(STACK[0x5F0]) = -2009212831 * (v338 ^ v348) - 75026750;
  LODWORD(STACK[0x5F4]) = -2009212831 * (v338 ^ v359) - 75026750;
  LODWORD(STACK[0x6B8]) = -2009212831 * (((v127 ^ v327 ^ 0xD17C39D9) + 1984490901) ^ ((v127 ^ v327 ^ 0xC32D42CB) + 1679398535) ^ ((v127 ^ v327 ^ 0xB7CB6D62) + 285194544)) + 1252345156;
  v362 = ((LODWORD(STACK[0x500]) ^ 0x9B372DF8) + 566225412) ^ LODWORD(STACK[0x500]) ^ ((LODWORD(STACK[0x500]) ^ 0x21E6A279) - 1687263869) ^ ((LODWORD(STACK[0x500]) ^ 0x59DA7A) - 1160700542) ^ ((LODWORD(STACK[0x500]) ^ 0xFFFF6DFF) + 1165470213);
  LODWORD(STACK[0x630]) = -2009212831 * (v273 ^ v293) - 75026750;
  LODWORD(STACK[0x634]) = -2009212831 * (v342 ^ v293) - 75026750;
  v363 = v147 ^ 0xC7C7C7C7;
  LODWORD(v273) = -2009212831 * (((LODWORD(STACK[0x518]) ^ v327 ^ 0xF898DF59) - 344774572) ^ ((LODWORD(STACK[0x518]) ^ v327 ^ 0xCA79C565) - 644730256) ^ ((LODWORD(STACK[0x518]) ^ v327 ^ 0x70B65F45) + 1667082320)) - 1496207154;
  LODWORD(STACK[0x638]) = -2009212831 * (v147 ^ 0xC7C7C7C7 ^ LODWORD(STACK[0x4FC])) - 75026750;
  LODWORD(STACK[0x63C]) = v273;
  LODWORD(v273) = (LOBYTE(STACK[0x793]) ^ 0xF3 | (LODWORD(STACK[0x524]) << 8)) - 1062748619 - 2 * ((LOBYTE(STACK[0x793]) ^ 0xF3 | (LODWORD(STACK[0x524]) << 8)) & 0x40A7BE37 ^ (LOBYTE(STACK[0x793]) ^ 0xF3) & 2);
  LODWORD(STACK[0x6BC]) = -2009212831 * (((v362 ^ v338 ^ 0x48E3E0AB) - 364134337) ^ ((v362 ^ v338 ^ 0xCA59EBFC) + 1760676714) ^ ((v362 ^ v338 ^ 0x76A8D66) - 1513968140)) - 589049283;
  v364 = -2009212831 * (LODWORD(STACK[0x58C]) ^ v147) - 75026750;
  LODWORD(STACK[0x610]) = ((v357 & 0x883DD861 ^ 0x10861) + (v357 & 0x883DD861 ^ 0x883CD000)) * (v360 + 1663319554);
  LODWORD(STACK[0x614]) = v364;
  LODWORD(STACK[0x678]) = -2009212831 * (v293 ^ LODWORD(STACK[0x534])) - 75026750;
  LODWORD(STACK[0x67C]) = -2009212831 * (v338 ^ v273) - 75026750;
  LODWORD(v273) = (LOBYTE(STACK[0xA5E]) ^ 0xF3 | (LODWORD(STACK[0x528]) << 8)) - 1062748619 - 2 * ((LOBYTE(STACK[0xA5E]) ^ 0xF3 | (LODWORD(STACK[0x528]) << 8)) & 0x40A7BE37 ^ (LOBYTE(STACK[0xA5E]) ^ 0xF3) & 2);
  v365 = (LOBYTE(STACK[0xAD9]) ^ 0xF3 | (LODWORD(STACK[0x538]) << 8)) - 1062748619 - 2 * ((LOBYTE(STACK[0xAD9]) ^ 0xF3 | (LODWORD(STACK[0x538]) << 8)) & 0x40A7BE3D ^ (LOBYTE(STACK[0xAD9]) ^ 0xF3) & 8);
  v366 = -2009212831 * (((LODWORD(STACK[0x4C0]) ^ v327 ^ 0x84F1421C) + 2073394645) ^ ((LODWORD(STACK[0x4C0]) ^ v327 ^ 0xEB800F45) + 350498958) ^ ((LODWORD(STACK[0x4C0]) ^ v327 ^ 0xFE94EB2C) + 32560357)) + 812490180;
  LODWORD(STACK[0x640]) = -2009212831 * (v147 ^ 0xC7C7C7C7 ^ LODWORD(STACK[0x4F4])) - 75026750;
  LODWORD(STACK[0x644]) = v366;
  v367 = -2009212831 * (v293 ^ LODWORD(STACK[0x4F0])) - 75026750;
  LODWORD(STACK[0x684]) = -2009212831 * (v338 ^ v365) - 75026750;
  LODWORD(STACK[0x680]) = v367;
  v368 = v147 ^ LODWORD(STACK[0x4DC]) ^ 0xC7C700C7;
  LODWORD(v147) = v147 ^ 0xC700C7C7;
  v369 = -2009212831 * (((LODWORD(STACK[0x54C]) ^ v327 ^ 0x7C85A9C0) - 1901018815) ^ ((LODWORD(STACK[0x54C]) ^ v327 ^ 0x25F14A92) - 675012077) ^ ((LODWORD(STACK[0x54C]) ^ v327 ^ 0xC7867F23) + 900929444)) + 527249168;
  LODWORD(STACK[0x648]) = -2009212831 * (v147 ^ LODWORD(STACK[0x4EC])) - 75026750;
  LODWORD(v127) = LODWORD(STACK[0x550]) ^ v327;
  LODWORD(STACK[0x64C]) = v369;
  v370 = LOBYTE(STACK[0x9E3]) ^ 0xF3;
  v371 = v370 | (LODWORD(STACK[0x56C]) << 8);
  LODWORD(v222) = STACK[0x4A8];
  v372 = LODWORD(STACK[0x4A8]) | (LODWORD(STACK[0x55C]) << 8);
  v373 = -2009212831 * (((v127 ^ 0xC6D16DA0) - 1978726894) ^ ((v127 ^ 0xC3E23965) - 1891872043) ^ ((v127 ^ 0x9E4ECCB0) - 762271998)) + 852007197;
  LODWORD(STACK[0x650]) = -2009212831 * v368 - 75026750;
  LODWORD(v175) = LOBYTE(STACK[0x872]) ^ 0xF3;
  LODWORD(v127) = v175 | (LODWORD(STACK[0x548]) << 8);
  LODWORD(STACK[0x654]) = v373;
  v374 = LOBYTE(STACK[0x7F7]) ^ 0xF3;
  v375 = v374 | (LODWORD(STACK[0x540]) << 8);
  v376 = v293 ^ LODWORD(STACK[0x4C8]);
  v377 = -2009212831 * (v293 ^ LODWORD(STACK[0x4E8])) - 75026750;
  LODWORD(STACK[0x688]) = -2009212831 * (v293 ^ LODWORD(STACK[0x4F8])) - 75026750;
  LODWORD(STACK[0x68C]) = -2009212831 * (v338 ^ v273) - 75026750;
  LODWORD(STACK[0x690]) = v377;
  LODWORD(STACK[0x694]) = -2009212831 * (v338 ^ (v371 - 1062748619 - 2 * (v371 & 0x40A7BE3D ^ v370 & 8))) - 75026750;
  v378 = -2009212831 * (((LODWORD(STACK[0x570]) ^ v327 ^ 0x738C93F5) + 384926145) ^ ((LODWORD(STACK[0x570]) ^ v327 ^ 0x441288AA) + 560962208) ^ ((LODWORD(STACK[0x570]) ^ v327 ^ 0x37D6B92A) + 1386982176)) - 839152095;
  LODWORD(STACK[0x658]) = -2009212831 * (v363 ^ LODWORD(STACK[0x4E0])) - 75026750;
  LODWORD(STACK[0x65C]) = v378;
  LODWORD(v273) = v293 ^ LODWORD(STACK[0x4B4]);
  v379 = -2009212831 * (v363 ^ LODWORD(STACK[0x4D0])) - 75026750;
  LODWORD(STACK[0x69C]) = -2009212831 * (v338 ^ (v372 - 1062748619 - 2 * (v372 & 0x40A7BE3D ^ v222 & 8))) - 75026750;
  LODWORD(STACK[0x698]) = -2009212831 * v376 - 75026750;
  v380 = v293 ^ LODWORD(STACK[0x428]);
  v381 = -2009212831 * (v338 ^ (LODWORD(STACK[0x4B0]) - 1062748619 - ((2 * LODWORD(STACK[0x4B0])) & 0x814F7C6A))) - 75026750;
  v382 = -2009212831 * (v147 ^ LODWORD(STACK[0x590])) - 75026750;
  v383 = -2009212831 * (((LODWORD(STACK[0x57C]) ^ v327 ^ 0xFF26CE74) + 978414547) ^ ((LODWORD(STACK[0x57C]) ^ v327 ^ 0xC9D537FB) + 211980894) ^ ((LODWORD(STACK[0x57C]) ^ v327 ^ 0x41C938FE) - 2067882663)) + 1470478570;
  v384 = -2009212831 * (v293 ^ LODWORD(STACK[0x42C])) - 75026750;
  LODWORD(STACK[0x6A0]) = -2009212831 * v273 - 75026750;
  LODWORD(STACK[0x6A4]) = v381;
  v385 = -2009212831 * (((LODWORD(STACK[0x584]) ^ v327 ^ 0x98712A89) + 1291777428) ^ ((LODWORD(STACK[0x584]) ^ v327 ^ 0x3E7DEDF4) - 353226001) ^ ((LODWORD(STACK[0x584]) ^ v327 ^ 0x9122B008) + 1168994067)) - 1300767662;
  LODWORD(STACK[0x660]) = v379;
  LODWORD(STACK[0x664]) = v383;
  LODWORD(STACK[0x66C]) = v385;
  LODWORD(STACK[0x668]) = v382;
  v386 = v361 ^ (v375 - 1062748619 - 2 * (v375 & 0x40A7BE37 ^ v374 & 2));
  v387 = ((v273 & 0x735FEC9E ^ 0x735FEC9E) + (v273 & 0x735FEC9E)) ^ 0x107BD29C;
  LODWORD(v273) = STACK[0x588];
  LODWORD(STACK[0x6A8]) = v384;
  LODWORD(STACK[0x6AC]) = -2009212831 * (v361 ^ (v127 - 1062748619 - 2 * (v127 & 0x40A7BE37 ^ v175 & 2))) - 75026750;
  LODWORD(v147) = v387 + (v147 ^ LODWORD(STACK[0x430]));
  LODWORD(STACK[0x6B0]) = -2009212831 * v380 - 75026750;
  LODWORD(STACK[0x6B4]) = -2009212831 * v386 - 75026750;
  LODWORD(STACK[0x674]) = -2009212831 * (((v273 ^ v327 ^ 0xDA48194A) - 212790470) ^ ((v273 ^ v327 ^ 0xEA10FF4B) - 1022757575) ^ ((v273 ^ v327 ^ 0xB86A6878) - 1854709236)) - 469639529;
  LODWORD(STACK[0x670]) = -2009212831 * v147;
  return (*(v335 + 8 * (((((*STACK[0x308] == 0) ^ (v161 + 50)) & 1) * (3 * (v161 ^ 0x452) - 2942)) ^ v161)))(0x6090076F5B42657CLL, 0xAB3042D228875C41, 0x520A6A7D4150B8F6);
}

uint64_t sub_1000F3B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = LODWORD(STACK[0x270]) ^ 0x3B76;
  v9 = *(v7 + 16);
  STACK[0x298] = v9;
  v10 = *(a7 + 8 * (((v9 > v8 - 7102) * ((v8 - 5752) ^ 0x3B0F)) ^ v8));
  STACK[0x2A0] = a5;
  return v10();
}

uint64_t sub_1000F3BEC@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, void *a4, _DWORD *a5)
{
  *a4 = a1;
  *a5 = a2;
  return sub_10010060C();
}

uint64_t sub_1000F3BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((2127578951 - (&a14 | 0x7ED04747) + (&a14 | 0x812FB8B8)) ^ 0x312C20CE) + 8154;
  a14 = &a12;
  v19 = (*(v17 + 77096))(&a14);
  return (*(v17 + 8 * ((500 * (a15 == v16)) ^ v18)))(v19);
}

uint64_t sub_1000F3D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v21 = ((&a13 & 0x57DA080F | ~(&a13 | 0x57DA080F)) ^ 0xF04C2492) * v18;
  a14 = v21 + 434150454;
  a15 = a10;
  a16 = &a11;
  a17 = -654855621 - v21;
  a18 = v21 + v20 + 1674573839;
  v22 = (*(v19 + 8 * (v20 ^ 0x3113u)))(&a13);
  return (*(v19 + 8 * (((a13 == (((v20 - 4759) | 0x1091) ^ 0xF8015A)) * (((v20 + 5925861) | 0x53800110) ^ 0x53DA890B)) ^ v20)))(v22);
}

uint64_t sub_1000F3F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((&a12 & 0xB0B9B8E2 | ~(&a12 | 0xB0B9B8E2)) ^ 0x7D5D1C8D);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((7932 * (a13 == 16257999)) ^ 0x6DCu)))(v14);
}

uint64_t sub_1000F3F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, uint64_t a11, int a12, int a13, int a14, int a15)
{
  *a10 = a13;
  if (v15)
  {
    v18 = a15 == ((21 * (v16 ^ 0x535)) ^ 0x1569);
  }

  else
  {
    v18 = 1;
  }

  v20 = !v18 && a11 != 0;
  return (*(v17 + 8 * ((87 * v20) ^ v16)))();
}

uint64_t sub_1000F4000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x3E4];
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v4;
  return (*(a4 + 8 * (((((v5 - 4651) | 4) - 519) * (a1 == 0)) ^ (v5 - 1616))))();
}

uint64_t sub_1000F4154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 - 1944) ^ (33731311 * ((&a15 & 0x3BBB48C8 | ~(&a15 | 0x3BBB48C8)) ^ 0xFDB27D14));
  a17 = a11;
  a18 = &a13;
  (*(v19 + 8 * (v18 ^ 0x315D)))(&a15);
  a17 = a11;
  LODWORD(a18) = v18 - 2008441969 * (&a15 ^ 0x4899540E) + 489;
  v20 = (*(v19 + 8 * (v18 ^ 0x31AF)))(&a15);
  return (*(v19 + 8 * ((13677 * (a15 == (((v18 - 5073) | 0x101C) ^ 0xF803B0))) ^ v18)))(v20);
}

uint64_t sub_1000F423C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a13;
  a17 = 1317436891 * ((-167068207 - (&a15 ^ 0x3C4734FD | 0xF60ABDD1) + (&a15 ^ 0x3C4734FD | 0x9F5422E)) ^ 0x85B1EEA5) + 8154;
  v20 = (*(v18 + 77096))(&a15);
  return (*(v18 + 8 * ((89 * (a16 == v19)) ^ v17)))(v20);
}

uint64_t sub_1000F42DC@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *a4 = a1;
  *a5 = a2;
  return (*(v15 + 8 * ((124 * ((((v13 - 1485091004) ^ (a13 == ((v13 + 989443549) & 0xEED60EFB) - 1171)) & 1) == 0)) ^ (v14 + v13 + 792))))();
}

uint64_t sub_1000F4394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 8 * (v7 + 3991)))(v8);
  *STACK[0x2B0] = 0;
  return (STACK[0x2A8])(0);
}

uint64_t sub_1000F43D4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x9E0] = v2;
  STACK[0x9E8] = a1;
  return (*(STACK[0x330] + 8 * (((v1 > (v3 ^ 0x793u) - 341) * (((v3 - 1383) | 0x1490) ^ 0x15DE)) ^ v3)))();
}

void sub_1000F4654(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 + 3874)))(a1);
  *(STACK[0x6B8] + 24) = 0;
  sub_100072E6C();
}

uint64_t sub_1000F46A4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, uint64_t a9, unsigned int a10)
{
  *v10 = a7;
  a9 = a3;
  a10 = (a1 - 2143927429) ^ (1824088897 * ((((2 * &a8) | 0xFC417D3A) - &a8 - 2116075165) ^ 0x26496DFF));
  (*(v11 + 8 * (a1 - 2143926163)))(&a8);
  return sub_1001BECE8();
}

uint64_t sub_1000F4730@<X0>(int a1@<W8>)
{
  *(v3 + v1) = 0;
  v7 = v1 + (a1 - 587) - 3172;
  v8 = v2 + v1 + 1 < v4;
  if (v4 < v2 != v7 > 0xFFFFFFFFCDE53684)
  {
    v8 = v4 < v2;
  }

  return (*(v6 + 8 * ((!v8 * v5) ^ a1)))();
}

uint64_t sub_1000F47D8()
{
  v5 = 956911519 * ((((v4 - 136) | 0xB8350909) + (~(v4 - 136) | 0x47CAF6F6)) ^ 0x52A4790D);
  *(v4 - 136) = 554685625 - v5;
  *(v4 - 132) = v5 + v3 + 6475;
  *(v4 - 116) = v5 ^ 0x9D8FD0A8;
  *(v0 + 704) = v2;
  v6 = (*(v1 + 8 * (v3 + 6721)))(v4 - 136);
  return (*(v1 + 8 * (((*(v4 - 120) == (((v3 - 1601945481) | 0x481B2180) ^ 0xE8677E75)) * (((v3 - 2499) | 0x958) - 1743)) ^ v3)))(v6);
}

uint64_t sub_1000F4A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v26 = 1338 * v21;
  v27 = 1824088897 * ((&a17 + 510215471 - 2 * (&a17 & 0x1E69452F)) ^ 0x4600964D);
  a20 = v22;
  a21 = a16;
  a17 = v27 + v26 + 1081;
  a19 = ((2 * v23) & 0xDF79D5FC) - v27 + (v23 ^ 0x6FBCECC1 ^ (v26 - 1077)) + (((v26 - 571) | 0x282) ^ 0xDEE7F537);
  v28 = (*(v24 + 8 * (v26 + 6955)))(&a17);
  return (*(v24 + 8 * ((207 * (a18 != v25)) ^ v26)))(v28);
}

uint64_t sub_1000F4B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (((&a14 | 0x3C937220) - (&a14 & 0x3C937220)) ^ 0x64FAA142) * v19;
  a16 = a10;
  a17 = &a12;
  a18 = -654855621 - v23;
  a19 = v23 + v21 + 1674573966;
  a15 = v23 + 579455019;
  v24 = (*(v20 + 8 * (v21 + 4460)))(&a14);
  return (*(v20 + 8 * (((a14 == v22) * ((v21 + 977614435) & 0xBDFF ^ (v21 + 10657))) ^ v21)))(v24);
}

uint64_t sub_1000F4C48@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0xAA8] = v65;
  v66 = STACK[0x548];
  STACK[0xAB0] = STACK[0x548];
  return (*(a65 + 8 * (((v65 - v66 > ((a1 + 3363) ^ 0x110BuLL)) * (((a1 + 3363) | 0x6C1) - 4045)) ^ a1)))();
}

uint64_t sub_1000F4C98@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = (a1 + v4 - 16);
  v8 = (a3 + v4 - 16);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * ((((v4 & 0xFFFFFFE0) == 32) * (v5 - a2 - 2016)) ^ (v5 + v3))))();
}

uint64_t sub_1000F4CE4@<X0>(int a1@<W8>)
{
  v4 = (v2 ^ a1) + v1;
  v5 = *(STACK[0x6A0] + 24);
  STACK[0x450] = v5;
  return (*(v3 + 8 * (((v5 == 0) * (v4 ^ 0x72F)) ^ v2)))();
}

uint64_t sub_1000F4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOWORD(STACK[0x8BE]) = v5;
  LODWORD(STACK[0x390]) = v5;
  return sub_10016D8F4(a1, a2, STACK[0x3C0], a4, a5, v6 - 4635);
}

void sub_1000F4EA0()
{
  STACK[0x418] = 0;
  LODWORD(STACK[0x404]) = 0;
  JUMPOUT(0x1000D5904);
}

uint64_t sub_1000F4EC4()
{
  v2 = v0 ^ 0x4DD;
  (*(v1 + 8 * (v0 + 7103)))();
  STACK[0x748] = 0;
  return (*(v1 + 8 * (((((28 * (v2 ^ 0xD60) + 1643) | 0x440) ^ 0x17BE) * (STACK[0x718] == 0)) ^ v2)))();
}

void sub_1000F4F70()
{
  LODWORD(STACK[0x8EC]) = v1;
  STACK[0x778] = *(v2 + 8 * (v0 - 5958));
  JUMPOUT(0x1000B6624);
}

uint64_t sub_1000F4FB4(uint64_t a1)
{
  if (v2 == 16215947)
  {
    return (*(v1 + 8 * (((*(STACK[0x830] + 97) == ((((v3 + 55) & 0x2F) + 23) & 0x7F)) * (((v3 + 1426811441) & 0xAAF47ECF) + 6484)) ^ (v3 - 2457))))();
  }

  if (v2 != 16257999)
  {
    JUMPOUT(0x10008A210);
  }

  v4 = *(STACK[0x560] + 24);
  STACK[0x890] = v4;
  return (*(v1 + 8 * (((v4 == 0) * ((v3 - 360886348) & 0x15829EDE ^ 0x79B)) ^ (v3 - 735))))(a1, 197499219);
}

uint64_t sub_1000F52DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v10 = v6 + 32;
  v11 = (v8 ^ v10) + v4;
  v12 = *(a3 + v11 - 15);
  v13 = *(a3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 != v10) * a2) ^ (v3 + v5 + 3597))))();
}

uint64_t sub_1000F52E4()
{
  v2 = STACK[0x7C0];
  STACK[0x4A8] = STACK[0x620] + 108;
  STACK[0x750] = v2;
  return (*(v1 + 8 * ((((v0 - 1768939731) & 0x696FBEEF ^ 0x2A8) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1000F53EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a13;
  a17 = v18 + 1317436891 * ((((2 * (&a15 ^ 0x262B5A0D)) | 0x329DE75C) - (&a15 ^ 0x262B5A0D) - 424604590) ^ 0x8F6631D5) + 1515;
  v20 = (*(v17 + 8 * (v18 ^ 0x3C4Au)))(&a15);
  return (*(v17 + 8 * (((a16 == v19) * ((v18 + 1786898968) ^ 0x14054EF ^ ((v18 + 1786898968) | 0x1406820))) ^ v18)))(v20);
}

uint64_t sub_1000F54AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v20 = v17[2];
  v21 = v17[3];
  v22 = v17[1];
  LODWORD(a15) = v19 - 506 + 1824088897 * ((&a14 + 1657761870 - 2 * (&a14 & 0x62CF704E)) ^ 0x3AA6A32C);
  a16 = a12;
  a14 = v22;
  (*(v18 + 8 * (v19 + 6779)))(&a14);
  a16 = a12;
  LODWORD(a15) = v19 - 506 + 1824088897 * ((-1384830432 - (&a14 ^ 0x6154A3F4 | 0xAD752A20) + (&a14 ^ 0x6154A3F4 | 0x528AD5DF)) ^ 0x6BB7A549);
  a14 = v21;
  (*(v18 + 8 * (v19 + 6779)))(&a14);
  a17 = (v19 + 5521) ^ (33731311 * (((&a14 | 0x76CD4696) - &a14 + (&a14 & 0x8932B968)) ^ 0x4F3B8CB5));
  a15 = v20;
  a16 = a12;
  v23 = (*(v18 + 8 * (v19 ^ 0x2F42)))(&a14);
  return (*(v18 + 8 * (((a14 == 16257999) * ((v19 - 898) ^ 0x29ED)) ^ v19)))(v23);
}

uint64_t sub_1000F5628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v19 = ((((v18 - 120) | 0xBF6A6F5E13DE868FLL) - ((v18 - 120) | 0x409590A1EC217970) + 0x409590A1EC217970) ^ 0xEC785EC57077C0F7) * v17 + v16 + *v10 - ((2 * *v10) & 0xC0A4457886BED430);
  *(v18 - 120) = &a10;
  *(v18 - 112) = v19;
  *(v18 - 104) = v15 - ((((v18 - 120) | 0x13DE868F) - ((v18 - 120) | 0xEC217970) - 333350544) ^ 0x7077C0F7) * v17 + v12;
  v20 = (*(v11 + 8 * (v12 + v14)))(v18 - 120);
  return (*(v11 + 8 * ((6582 * (*(v18 - 100) == v13)) ^ v12)))(v20);
}

uint64_t sub_1000F56E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12)
{
  v18 = (v14 - 7135) | 0x107;
  v19 = *v15 ^ v13;
  a10 = v16;
  a11 = v19 - 1212712511;
  v20 = (*(v17 + 8 * (v18 ^ 0x20C5)))(*(v12 + 4), 26, &a10, 16, &a10, &a12);
  return (*(v17 + 8 * (((a12 == 16) * ((v18 + 6872) ^ 0x38D5)) ^ v18)))(v20);
}

uint64_t sub_1000F57AC@<X0>(__int16 a1@<W8>, int a2@<W1>)
{
  v5 = (((2 * v3) & 0x7D5E77FBEFF7CF7ELL) + (v3 ^ 0xBEAF3BFDF7FBE7BFLL) + v2 + 0x4150C40208041841);
  v6 = (v5[1] << ((22 * (v4 ^ 7)) ^ 0xE8)) | (*v5 << 24) | (v5[2] << 8);
  LODWORD(STACK[0x44C]) = (v6 | v5[3]) + a2 - 2 * ((v6 | v5[3]) & (a2 + 12) ^ v5[3] & 0xC);
  return sub_100125DB4(a1);
}

uint64_t sub_1000F5880(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v12 = (2 * v7) & 4;
  *(a2 + v11 + (v6 ^ a4) * v7 - ((((v11 + (v6 ^ a4) * v7) * v9) >> 32) >> 9) * a6) = v7 + ~v12 - 12;
  *(a2 + v11 + v7 * v8 + 345 - ((((v11 + v7 * v8 + 345) * v9) >> 32) >> 9) * a6) = v7 + (v12 ^ 0xFD) - 11;
  return (*(v10 + 8 * (((v7 != 14) * a5) ^ v6)))();
}

uint64_t sub_1000F5F98()
{
  STACK[0xB50] = v1;
  v3 = STACK[0x690];
  STACK[0xB58] = STACK[0x690];
  return (*(v2 + 8 * ((14166 * (v1 - v3 > (90 * ((v0 - 4547) ^ 0x1309u)) - 441)) ^ (v0 - 4547))))();
}

uint64_t sub_1000F5FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8 * (v4 ^ 0x6D5)))(128, 0x10800400FED9166);
  v6 = STACK[0x3E8];
  STACK[0x5F8] = v5;
  return (*(v6 + 8 * (((v5 != 0) * ((v4 ^ 0x228E) + (v4 ^ 0x29C9) - 3068)) ^ v4)))();
}

uint64_t sub_1000F6128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 108) = 0;
  v6 = STACK[0x468];
  *(v5 + 104) = 16;
  *(v5 + 103) = v6[23];
  *(v5 + 102) = v6[22];
  *(v5 + 101) = v6[21];
  *(v5 + 100) = v6[20];
  *(v5 + 99) = v6[19];
  *(v5 + 98) = v6[18];
  *(v5 + 97) = v6[17];
  *(v5 + 96) = v6[16];
  *(v5 + 95) = v6[15];
  *(v5 + 94) = v6[14];
  *(v5 + 93) = v6[13];
  *(v5 + 92) = v6[12];
  *(v5 + 91) = v6[11];
  *(v5 + 90) = v6[10];
  *(v5 + 89) = v6[9];
  *(v5 + 88) = v6[8];
  return (*(a4 + 8 * ((35 * (v6[4] == (v4 + 34 + ((v4 - 70) ^ 0x94)))) ^ v4)))();
}

uint64_t sub_1000F6344()
{
  v0 = LODWORD(STACK[0x32C]) - 5233;
  LODWORD(STACK[0x2A0]) = 17168;
  return (*(STACK[0x330] + 8 * v0))();
}

uint64_t sub_1000F6364()
{
  STACK[0x9E8] = v1;
  v3 = STACK[0x410];
  STACK[0x9F0] = STACK[0x410];
  return (*(v2 + 8 * ((8033 * (v1 - v3 > ((v0 + 3788) ^ 0x16F2u) - 304)) ^ v0)))();
}

uint64_t sub_1000F63C0@<X0>(unint64_t a1@<X0>, __int16 a2@<W8>)
{
  STACK[0x578] = a1;
  LODWORD(STACK[0xAD8]) = v8;
  LOWORD(STACK[0xADE]) = a2;
  LODWORD(STACK[0xAE0]) = v6;
  LODWORD(STACK[0xAE4]) = v2;
  STACK[0xAE8] = v4;
  STACK[0xAF0] = v5;
  return (*(v7 + 8 * (((a1 == 0) * ((v3 ^ 0x90C) - 6039)) ^ v3)))();
}

uint64_t sub_1000F6414(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a2 - 1;
  v19 = __ROR8__((v13 + v18) & 0xFFFFFFFFFFFFFFF8, 8) + ((a4 + 2933) ^ 0x9508DCB2F33EDA4ELL);
  v20 = __ROR8__(v19 ^ 0x49E9423B6F16E7D2, 8);
  v19 ^= 0xE1AFA7ACF6E0968ELL;
  v21 = (v8 - ((v20 + v19) | v8) + ((v20 + v19) | v9)) ^ v10;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v14;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v7 - ((v25 + v24) | v7) + ((v25 + v24) | v11)) ^ v12;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v16;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a6;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v17;
  *(a1 + v18) = *(v13 + v18) ^ (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v31, 61))) ^ v15) >> (8 * ((v13 + v18) & 7))) ^ 0x3C;
  return (*(a7 + 8 * ((419 * (v18 == 0)) ^ a4)))();
}

uint64_t sub_1000F652C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, unsigned int a23, uint64_t a24, uint64_t a25)
{
  v28 = (&a21 ^ 0x5869D362) * v26;
  a21 = v28 + v25 + 2647;
  a23 = (a13 ^ 0xEFE5EEDB) + ((2 * a13) & 0xDFCBDDB6) - v28 + 1589573404 + ((v25 + 5235) ^ 0x1C5A);
  a25 = a19;
  a24 = a14;
  v29 = (*(v27 + 8 * (v25 ^ 0x21C9)))(&a21);
  return (*(v27 + 8 * ((197 * (a22 != 16257999)) ^ v25)))(v29);
}

void sub_1000F65E8(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x7E4]) = a3;
  LODWORD(STACK[0x6FC]) = STACK[0x7E4];
  JUMPOUT(0x10015FBE4);
}

uint64_t sub_1000F65F4()
{
  STACK[0x9D8] = v1;
  v3 = STACK[0x650];
  STACK[0x9E0] = STACK[0x650];
  return (*(v2 + 8 * (((v1 - v3 > (14 * ((v0 - 425) ^ 0x8BCu)) - 397) * (((v0 + 1128636577) & 0xBCBA5F5E) + 5415)) ^ (v0 - 425))))();
}

uint64_t sub_1000F66C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a23 = &a16;
  a22 = (v25 + 2147) ^ ((((&a18 | 0x59AF9693) - (&a18 & 0x59AF9693)) ^ 0x6BB4CD03) * v24);
  a20 = a9;
  a21 = &a11;
  (*(v23 + 8 * (v25 + 8396)))(&a18);
  a20 = a9;
  a21 = &a14;
  a19 = (v25 + 2041) ^ (33731311 * (((&a18 | 0xC982EA71) + (~&a18 | 0x367D158E)) ^ 0xF0742053));
  (*(v23 + 8 * (v25 + 8390)))(&a18);
  LODWORD(a21) = v25 - 2008441969 * (((&a18 | 0xEE24554E) - (&a18 & 0xEE24554E)) ^ 0xA6BD0140) + 4474;
  a20 = a9;
  v27 = (*(v23 + 8 * (v25 ^ 0x2138u)))(&a18);
  return (*(v23 + 8 * (((a18 == (v25 ^ 0x16B8 ^ v26)) * ((v25 ^ 0x87E) - 3286)) ^ v25)))(v27);
}

void sub_1000F682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  *a10 = 0;
  *v10 = 0;
  JUMPOUT(0x100058BCCLL);
}

uint64_t sub_1000F6860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18)
{
  v22 = 1875091903 * ((&a15 & 0xC604CD21 | ~(&a15 | 0xC604CD21)) ^ 0xF8EB15D);
  a18 = a12;
  a16 = (v19 ^ 0x347CB6AB) + ((2 * v19) & 0x68F96D56) - 341835777 + v22;
  a17 = v22 + 7724;
  v23 = (*(v20 + 77160))(&a15);
  return (*(v20 + 8 * ((5745 * (a15 == v21)) ^ v18)))(v23);
}

uint64_t sub_1000F69A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a2 - 1;
  *(v6 + v8) = *(v4 + v8) ^ 0x3C;
  return (*(v7 + 8 * ((5148 * (v8 == (a4 - 1949765922) - 9057)) ^ (v5 + a4 + 2463))))();
}

uint64_t sub_1000F69EC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = LOWORD(STACK[0x944]);
  if (v7 == 17168)
  {
    goto LABEL_4;
  }

  if (v7 == 33980)
  {
    v9 = STACK[0x860];
    STACK[0x650] = v2;
    LODWORD(STACK[0x80C]) = a2;
    return (*(v6 + 8 * (((v9 + v4 == 0) * (((v5 - 2250) | 0xC1D) - 3275)) ^ (v5 - 471))))();
  }

  v8 = v5;
  if (v7 == 20706)
  {
LABEL_4:
    STACK[0x650] = v2;
    v3 = 16215638;
    v8 = v5;
  }

  STACK[0x6C0] = 0;
  LODWORD(STACK[0x80C]) = 197499219;
  return (*(v6 + 8 * ((6727 * (v3 == ((v8 - 934) ^ 0x59F) + 16257172)) ^ (v8 - 934))))(a1, 16215976);
}

uint64_t sub_1000F6ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = STACK[0x2B0];
  if (LODWORD(STACK[0x2B0]) == 43491)
  {
    return (*(*(v68 - 256) + 8 * (a66 ^ (95 * (v67 != a67)))))();
  }

  v71 = *(v68 - 256);
  if (v69 == 28239)
  {
    v72 = (a59 ^ 0xD7206AF4) & (2 * (a59 & 0xE7B502F9)) ^ a59 & 0xE7B502F9;
    v73 = ((2 * (a59 ^ 0x55286F36)) ^ (a8 + 3202) ^ 0x653ACA4F) & (a59 ^ 0x55286F36) ^ (2 * (a59 ^ 0x55286F36)) & 0xB29D6DCE;
    v74 = v73 ^ 0x92852441;
    v75 = (v73 ^ 0x2018098C) & (4 * v72) ^ v72;
    v76 = ((4 * v74) ^ 0xCA75B73C) & v74 ^ (4 * v74) & 0xB29D6DCC;
    v77 = (v76 ^ 0x82152500) & (16 * v75) ^ v75;
    v78 = ((16 * (v76 ^ 0x308848C3)) ^ 0x29D6DCF0) & (v76 ^ 0x308848C3) ^ (16 * (v76 ^ 0x308848C3)) & 0xB29D6DC0;
    return (*(v71 + 8 * ((13 * ((a59 ^ (2 * ((((v78 ^ 0x9209210F) << 8) & 0xB29D6D00 ^ 0x100D0000 ^ (((v78 ^ 0x9209210F) << 8) ^ 0x9D6D0000) & (v78 ^ 0x9209210F)) & (((v78 ^ 0x20944C00) & (v77 << 8) ^ v77) << 16) ^ (v78 ^ 0x20944C00) & (v77 << 8) ^ v77))) == 3887399673)) ^ (a8 + 3442))))();
  }

  else if (v69 == 47633)
  {
    return (*(v71 + 8 * ((4595 * (v67 == ((a8 + 3205) ^ 0xBC58B7D ^ (a8 - 132874585) & 0x7EB7FFB))) ^ (a8 + 2495))))(a1, a2, a3, a4, a5, a6, v71, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
  }

  else
  {
    return sub_10016F0A8(a1, a2, a3, a4, a5, a6, v71);
  }
}

uint64_t sub_1000F6D58()
{
  v9 = (v3 + 7325) ^ ((&v7 ^ 0x5869D362) * v1);
  v8 = v6;
  (*(v0 + 8 * (v3 + 8591)))(&v7);
  v9 = (v3 + 7325) ^ ((((&v7 | 0x1B6DEB5A) - (&v7 & 0x1B6DEB5A)) ^ 0x43043838) * v1);
  v8 = v5;
  (*(v0 + 8 * ((v3 + 119) ^ 0x21F8)))(&v7);
  return (v2 - 16257999);
}

uint64_t sub_1000F6EE8@<X0>(uint64_t a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v15 = ((v5 - 6455) ^ (v14 + 173)) + (v6 & 0xF) * v8;
  v16 = (-((16 * *(a1 + v14 + (v6 >> 4) * v8 - ((((v14 + (v6 >> 4) * v8) * v9) >> 32) >> 9) * v7)) ^ 0x30) - 13) ^ *(a1 + v15 - (((v15 * v9) >> 32) >> 9) * v7);
  v17 = (((v16 ^ *(a4 + (a3 + (v16 ^ v10) * a2 - (((a3 + (v16 ^ v10) * a2) * v4) >> 32) * v11))) >> 4) ^ 6) * v8 + 186990;
  *(a1 + v6 * v8 - (((v6 * v8 * v9) >> 32) >> 9) * v7) = (16 * *(a1 + (v17 - ((v17 * v13) >> 32) * v7))) ^ 0xC3;
  return (*(v12 + 8 * ((14978 * (v6 == 255)) ^ v5)))();
}

uint64_t sub_1000F6FD4@<X0>(unint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x7A0] = *a1;
  return (*(v2 + 8 * (((((((4 * v1) ^ 0x8110) + 312) | 0x20) - 619) * (v3 == 0)) ^ v1)))();
}

void sub_1000F7014()
{
  *(v0 - 160) = 0;
  STACK[0x280] = v0 - 160;
  JUMPOUT(0x100011CA0);
}

uint64_t sub_1000F7090()
{
  v2 = STACK[0x7D8];
  STACK[0x8D8] = STACK[0x7D8];
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 2758) | 0xCC0) ^ 0xCEB)) ^ v0)))();
}

uint64_t sub_1000F70D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a15;
  a19 = v20 + 1317436891 * ((&a17 & 0xDA013C21 | ~(&a17 | 0xDA013C21)) ^ 0x95FD5BA8) + 5612;
  v21 = (*(v19 + 8 * (v20 ^ 0x2C4B)))(&a17);
  return (*(v19 + 8 * ((6180 * (a18 == ((v20 + 2084902345) & 0x2FF9 ^ 0xF81C7E))) ^ v20)))(v21);
}

uint64_t sub_1000F72F8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = *(a2 + v5);
  return (*(a1 + 8 * (((v5 == 0) * ((v3 + 4193) ^ 0xBE)) ^ v3)))();
}

void sub_1000F7368(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = v57 ^ 0x1F8E;
  (*(v58 + 8 * (v57 + 4164)))(a1);
  *(STACK[0x810] + 24) = 0;
  (*(a57 + 8 * (v59 ^ 0x2F4A)))();
  STACK[0x810] = 0;
  JUMPOUT(0x1000F73C8);
}

uint64_t sub_1000F73D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v22 = 1824088897 * ((&a15 & 0x316C9C75 | ~(&a15 | 0x316C9C75)) ^ 0x96FAB0E8);
  a15 = v22 + 3757;
  a17 = 1319430806 - v22;
  a18 = v19;
  a19 = a11;
  v23 = (*(v20 + 77048))(&a15);
  return (*(v20 + 8 * ((61 * (a16 == v21 + 4894)) ^ 0xA9Au)))(v23);
}

uint64_t sub_1000F748C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 476323082 - 1710126949 * ((&a15 - 1627110809 - 2 * (&a15 & 0x9F044267)) ^ 0xAD1F19F7);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((1979 * (a16 == 16257999)) ^ 0xBC5u)))(v17);
}

void sub_1000F7568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  STACK[0x3B0] = a4 + v16 + v15 + v14 - a13 + v13;
  STACK[0x370] = v14 & 0xFFFFFFF8;
  JUMPOUT(0x1000F76C4);
}

uint64_t sub_1000F8334(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7)
{
  v19 = v12;
  v20 = STACK[0x3D8];
  LOBYTE(STACK[0xDF0]) ^= 8 * LODWORD(STACK[0x3D8]);
  v21 = (536870847 - v9) & 0x10538489;
  LOBYTE(STACK[0xEB1]) ^= v20 >> 5;
  if (LODWORD(STACK[0x408]))
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  LODWORD(STACK[0x57C]) = v7 ^ 0x11B8;
  LOBYTE(STACK[0xF72]) = *(STACK[0x5B0] + (v7 ^ 0xEFAC64B9) + (v22 ^ v8 & 0x10538489 | v21)) ^ (v20 >> 13);
  v23 = LOBYTE(STACK[0xC6A]) ^ (v20 >> 21);
  v24 = v19;
  LOBYTE(STACK[0xC6A]) = v23;
  LODWORD(STACK[0x438]) = v8;
  LODWORD(STACK[0x588]) = v15;
  v25 = (LODWORD(STACK[0x57C]) + 123596726) & 0xF8A21FB7;
  LODWORD(STACK[0x570]) = v25;
  v27 = STACK[0x5B0];
  v28 = a7 + 552306858;
  v29 = *(STACK[0x5B0] + -499178490 * a2 + 815932720 - ((((-499178490 * a2 + 815932720) * v16) >> 32) >> 9) * v10);
  v30 = 3 - ((v29 & 0x62 ^ 0x42) - 95 + (v29 & 0x62 ^ 0x20));
  v31 = (((*(STACK[0x5B0] + -499178490 * a2 + 815930392 - ((((-499178490 * a2 + 815930392) * v16) >> 32) >> 9) * v10) ^ 0xC0) << 24) | ((*(STACK[0x5B0] + (-499178490 * a2 + 815931168) % (v25 ^ 0x1A4F)) ^ 0xC0) << 16) | ((*(STACK[0x5B0] + -499178490 * a2 + 815931944 - ((((-499178490 * a2 + 815931944) * v16) >> 32) >> 9) * v10) ^ 0xC0) << 8) | v29 ^ v18) ^ v28;
  *STACK[0x5A0] = v31 ^ v14;
  LODWORD(STACK[0x55C]) = 221160;
  LODWORD(STACK[0x56C]) = 221936;
  v32 = v30 * a2 + 221160 - ((((v30 * a2 + 221160) * v16) >> 32) >> 9) * v10;
  LODWORD(STACK[0x584]) = 222712;
  v33 = v30 * a2 + 222712;
  v34 = v30 * a2 + 221936 - ((((v30 * a2 + 221936) * v16) >> 32) >> 9) * v10;
  v35 = (v33 * v16) >> 41;
  v36 = v31 ^ 0x7D;
  v37 = *(v27 + v30 * a2 + 220384 - ((((v30 * a2 + 220384) * v16) >> 32) >> 9) * v10);
  v38 = v33 - v35 * v10;
  LODWORD(STACK[0x590]) = v11;
  v39 = *(v27 + v32);
  v40 = 137 * v11 + 21629 - (((137 * v11 + 21629) * a4) >> 23) * v13;
  v41 = STACK[0x5A8];
  v42 = *(v27 + v34);
  LODWORD(STACK[0x550]) = ((v31 ^ 0x7D) - 2 * ((v31 ^ 0x7D) & v24)) ^ ((v31 ^ 0x7D ^ LODWORD(STACK[0x5A8])) - LODWORD(STACK[0x5A8]));
  v43 = a5 + v24;
  v44 = v42 ^ 0xBD;
  v45 = (v17 + v28) ^ (a3 - 930540749);
  v46 = a5 - v41;
  v47 = v37 ^ 0xBD;
  v48 = v24;
  v49 = v43 ^ (v41 - 1245787989);
  v50 = (v40 & 0x194) + v41 - 1245787989 + (v40 & 0x194 ^ 0x9314794);
  v51 = 137 * v11 + 12313;
  v52 = (137 * v11 + 2997) % 0x116u;
  v53 = (v47 << 24) | ((v39 ^ 0xBD) << 16);
  LODWORD(STACK[0x560]) = 482672;
  v54 = 776 * ((((9 - ((v17 + v28) ^ (a3 + 51))) ^ (((v17 + v28) ^ (a3 + 51)) + 6)) & 8) + v30) + 478016;
  v55 = v53 | (v44 << 8) | *(STACK[0x5B0] + v38) ^ 0xBD;
  v56 = ((*(STACK[0x5B0] + v30 * a2 + 481896 - (v30 * a2 + 481896) / 0x3C9u * v10) ^ 0xC0) << 24) | ((*(STACK[0x5B0] + v30 * a2 + 482672 - (v30 * a2 + 482672) / 0x3C9u * v10) ^ 0xC0) << 16) | ((*(STACK[0x5B0] + v30 * a2 + 483448 - (v30 * a2 + 483448) / 0x3C9u * v10) ^ 0xC0) << 8) | *(STACK[0x5B0] + v54 - v54 / 0x3C9 * v10) ^ 0xBD;
  LOWORD(v39) = 137 * v11;
  v57 = (137 * v11 - 6319) % 0x116u;
  v58 = ((((v30 + 4) & 0x280A1FA8) + ((1073741819 - v30) & 0x280A1FA8)) & 0x40142358) * (v30 + 288);
  v59 = v55 ^ v48;
  v60 = v58 - v58 / 0x3C9 * v10;
  v61 = STACK[0x5A0];
  *(STACK[0x5A0] + 4 * v40) = v59;
  v62 = a3;
  LODWORD(STACK[0x580]) = a3;
  v63 = v17 - (a3 + 315247240);
  v64 = v28 ^ (a3 + 315247240) ^ v59;
  v65 = LODWORD(STACK[0x58C]) + v28;
  v66 = LODWORD(STACK[0x58C]) - 724014144 + v59;
  v67 = 2 * ((v30 + 5) & 1) + ((v30 + 5) ^ 1);
  LODWORD(STACK[0x5A8]) = v67;
  v68 = 776 * v67;
  *(v61 + 4 * (v51 % 0x116u)) = v66;
  v69 = LODWORD(STACK[0x550]) ^ ((v36 ^ v64) - v64);
  LODWORD(v27) = v49 + v46;
  v70 = (v49 + v46) ^ (LODWORD(STACK[0x588]) + v48);
  v71 = ((*(STACK[0x5B0] + v60) ^ 0xBD) << 24) | ((*(STACK[0x5B0] + v30 * a2 + 224264 - (v30 * a2 + 224264) / 0x3C9u * v10) ^ 0xBD) << 16);
  v72 = v62 - 776316217;
  v73 = v52;
  v74 = v71 | ((*(STACK[0x5B0] + 776 * v67 + 220384 - (776 * v67 + 220384) / 0x3C9u * v10) ^ 0xBD) << 8);
  v75 = v56 ^ (v62 - 776316217);
  v76 = v57;
  v77 = STACK[0x5B0];
  v78 = *(STACK[0x5B0] + 776 * v67 + LODWORD(STACK[0x55C]) - (776 * v67 + LODWORD(STACK[0x55C])) / 0x3C9u * v10);
  *(v61 + 4 * v73) = 150763033 - LODWORD(STACK[0x588]) + v69;
  v79 = (v74 | v78 ^ 0xBD) ^ v50;
  v80 = v50 + 526023886;
  *(v61 + 4 * v76) = v75 ^ 0x66F3DF26;
  v81 = ((v75 ^ 0x7D ^ v50) - v50) ^ ((v75 ^ 0x7D ^ v49) - v49);
  v82 = STACK[0x590];
  v83 = LODWORD(STACK[0x590]) - 2002571637;
  LODWORD(STACK[0x58C]) = v83;
  LODWORD(v73) = v50 + 526023886 + v70;
  LODWORD(v76) = v79 ^ v45 ^ v72;
  v49 ^= 0xDF3B55AD;
  v84 = (v27 - 265585437) ^ v49;
  v85 = v73 ^ v49;
  *(v61 + 4 * ((v39 + 21766) % 0x116u)) = v79;
  v86 = ((((v83 + 135) ^ (237 - v82)) & 0x89 & ((v85 & 0x8B ^ 0x8B) + (v85 & 0x8B))) * (v83 + 135)) % 0x116u;
  LOWORD(v50) = (v39 + 3134) % 0x116u;
  LODWORD(v27) = -724014144 - v70 + (v81 ^ ((v56 ^ 0x7D ^ v79 ^ v45) - v76));
  LOWORD(v83) = v39;
  LOWORD(v70) = (v39 - 6182) % 0x116u;
  v87 = v45 + v63;
  LODWORD(v35) = (v45 + v63) ^ v65;
  v88 = ((*(v77 + v68 + 480344 - (v68 + 480344) / 0x3C9u * v10) ^ 0xC0) << 24) | ((*(v77 + v68 + 481120 - (v68 + 481120) / 0x3C9u * v10) ^ 0xC0) << 16) | ((*(v77 + v68 + 481896 - (v68 + 481896) / 0x3C9u * v10) ^ 0xC0) << 8) | *(v77 + 776 * v67 + LODWORD(STACK[0x560]) - (776 * v67 + LODWORD(STACK[0x560])) / 0x3C9u * v10) ^ 0xBD;
  v89 = 776 * v67 + LODWORD(STACK[0x56C]) - (776 * v67 + LODWORD(STACK[0x56C])) / 0x3C9u * v10;
  v90 = 776 * v67 + LODWORD(STACK[0x584]);
  *(v61 + 4 * v86) = v27;
  v91 = v35 + 150763033 + v79;
  v92 = ((*(v77 + v89) ^ 0xBD) << 24) | ((*(v77 + v90 - v90 / 0x3C9 * v10) ^ 0xBD) << 16);
  LODWORD(v27) = LODWORD(STACK[0x580]) - 250292331;
  v45 ^= 0xDF3B55AD;
  v93 = (v87 - 265585437) ^ v45;
  v94 = v35 + v27 + v27;
  v95 = (v35 + v27) ^ v45;
  LODWORD(v27) = v35 + v27 + v93;
  LODWORD(v35) = v73 + v80;
  v96 = v73 + v84;
  v97 = v88 ^ v27;
  LODWORD(v73) = (v92 | ((*(v77 + v68 + 223488 - (v68 + 223488) / 0x3C9u * v10) ^ 0xBD) << 8) | *(v77 + v68 + 224264 - (v68 + 224264) / 0x3C9u * v10) ^ 0xBD) ^ (v73 + v84);
  *(v61 + 4 * v50) = v91;
  *(v61 + 4 * v70) = v97 ^ 0x66F3DF26;
  v98 = v61;
  v99 = v94 ^ v95;
  *(v61 + 4 * ((v83 + 21903) % 0x116u)) = v73;
  v100 = ((v97 ^ 0x7D ^ v35) - v35) ^ ((v97 ^ 0x7D ^ v85) - v85) ^ ((v97 ^ 0x7D ^ v73 ^ v94 ^ v95) - (v73 ^ v94 ^ v95));
  v101 = (((v94 ^ v95) & 0xE229BD0D) + 2114344562 + ((v94 ^ v95) & 0xE229BD0D ^ 0xE229BD0D)) & 0x1607E2E9;
  v102 = STACK[0x5A8];
  *(v61 + 4 * ((v83 + 12587) % 0x116u)) = v27 - 724014144 + v73;
  v103 = 776 * (((2 * (v102 + 9)) & 0x4D2) + ((v102 + 9) ^ 0x269));
  v104 = ((*(v77 + 776 * (v101 + v102) + 4656 - (776 * (v101 + v102) + 4656) / 0x3C9 * v10) ^ 0xC0) << 24) | ((*(v77 + 776 * v67 + 484224 - (776 * v67 + 484224) / 0x3C9u * v10) ^ 0xC0) << 16) | ((*(v77 + 776 * v67 + 485000 - (776 * v67 + 485000) / 0x3C9u * v10) ^ 0xC0) << 8);
  v105 = STACK[0x58C];
  LOWORD(v101) = (137 * LODWORD(STACK[0x58C])) % 0x116u;
  *(v61 + 4 * ((v83 + 3271) % 0x116u)) = 150763033 - v96 + v100;
  v106 = v84 - v85;
  LODWORD(v61) = v85 ^ v35;
  LODWORD(v35) = v93 - v95;
  v107 = v85 - v96;
  v96 -= 1679343051;
  v108 = v107 + v61;
  LODWORD(v61) = v61 + 510308474;
  v109 = v95 - (v27 - 1679343051);
  v110 = v96 ^ v106;
  v111 = v108 + 1679343051;
  v112 = v109 + v99;
  v113 = v35 ^ (v27 - 1679343051);
  v114 = (v104 | *(v77 + v103 - v103 / 0x3C9 * v10) ^ 0xBD) ^ v113;
  v115 = STACK[0x598];
  v116 = (((*(v77 + 776 * v67 + 225040 - (776 * v67 + 225040) / 0x3C9u * v10) ^ 0xBD) << 24) | ((*(v77 + 776 * v67 + 226592 - (776 * v67 + 226592) / 0x3C9u * v10) ^ 0xBD) << 8) | *(v77 + 776 * v67 + 227368 - (776 * v67 + 227368) / 0x3C9u * v10) ^ 0xBD | ((*(v77 + 776 * v67 + 225816 - (776 * v67 + 225816) / 0x3C9u * v10) ^ 0xBD) << 16)) ^ v110;
  *(v98 + 4 * v101) = v114 ^ 0x66F3DF26;
  v117 = v61 ^ v96;
  *(v98 + 4 * ((137 * (((2 * v105) & 0x19A) + (v105 ^ 0xCD))) % 0x116u)) = v116;
  *(v98 + 4 * ((v83 + 12724) % 0x116u)) = -724014144 - v117 + (((v116 ^ v111) - v111) ^ ((v116 ^ v61) - v61) ^ ((v114 ^ 0x7D ^ v112 ^ (v99 + 510308474) ^ v116) - (v114 ^ 0x7D ^ v112 ^ (v99 + 510308474))));
  v118 = (v99 + 510308474) ^ (v27 - 1679343051);
  LOWORD(v83) = (v83 + 3408) % 0x116u;
  *(v98 + 4 * v83) = v118 + 150763033 + (v114 ^ 0x7D);
  v119 = LODWORD(STACK[0x57C]) + 6783;
  v120 = v112 - (v118 + 1823107089);
  LODWORD(v27) = (v118 + 1823107089) ^ (v99 + 510308474);
  LODWORD(STACK[0x58C]) = (((v120 + v113) ^ v120 ^ (v118 + v27 - (v120 + v113) - 1957177647)) - (v27 + (((v83 & 0x1C0 ^ 0xF0C1F1C0) + (v83 & 0x1C0)) ^ 0x2FD58695) - ((v120 + v113) ^ v120 ^ (v118 + v27 - (v120 + v113) - 1957177647))) + 1240094557) ^ (v118 + v27 - (v120 + v113) - 1957177647);
  LODWORD(STACK[0x5A8]) = ((v117 + 1823107089) ^ v61) - ((v111 - (v117 + 1823107089) + v110) ^ (v111 - (v117 + 1823107089)) ^ (v117 + 1823107089 + ((v117 + 1823107089) ^ v61) - (v111 - (v117 + 1823107089) + v110) + 514682560)) + 1453052688;
  return (*(v115 + 8 * ((47 * ((v105 + 1) < 0x10)) ^ v119)))();
}

uint64_t sub_1000F920C(uint64_t a1)
{
  v6 = 2 * (((v1 + 2076) | 0x811) ^ 0x123A);
  *v3 = a1;
  *v2 = v10;
  v12 = v8;
  v13 = (v6 + 3604) ^ (((&v11 - 1659990374 - 2 * (&v11 & 0x9D0E8E9A)) ^ 0xC5675DF8) * v5);
  (*(v4 + 8 * (v6 + 4870)))(&v11);
  v12 = v9;
  v13 = (v6 + 3604) ^ (((((2 * &v11) | 0x329928C0) - &v11 - 424449120) ^ 0x41254702) * v5);
  (*(v4 + 8 * ((v6 - 3402) ^ 0x20B0)))(&v11);
  return 0;
}

uint64_t sub_1000FA820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = 1875091903 * ((1838151514 - (v21 | 0x6D8FF75A) + (v21 | 0x927008A5)) ^ 0xA4058B26);
  a16 = a12;
  HIDWORD(a14) = ((2 * v19) & 0xEDFDEDD6) + (v19 ^ 0xF6FEF6EB) + ((v22 + 179478993) & 0x47F3 ^ 0x291DB9EC) + v23;
  LODWORD(a15) = v22 + 414 + v23;
  (*(v20 + 8 * (v22 ^ 0x3923)))(&a14);
  v24 = 956911519 * (v21 ^ 0x453675DCEA917005);
  LODWORD(a14) = (v22 - 6288) ^ v24;
  a15 = v18 - ((2 * v18) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v24;
  a16 = a12;
  (*(v20 + 8 * (v22 ^ 0x39F1)))(&a14);
  a14 = v17;
  a16 = a12;
  LODWORD(a15) = v22 + 1824088897 * (((v21 | 0x672E4DCB) - v21 + (v21 & 0x98D1B230)) ^ 0x3F479EA9) - 5005;
  (*(v20 + 8 * (v22 + 2280)))(&a14);
  v25 = 1875091903 * ((-1794744468 - (v21 | 0x95065F6C) + (v21 | 0x6AF9A093)) ^ 0x5C8C2310);
  a16 = a12;
  HIDWORD(a14) = (v16 ^ 0xAB5EB7BA) + ((2 * v16) & 0x56BD6F74) + 1958608624 + v25;
  LODWORD(a15) = v22 + 414 + v25;
  v26 = (*(v20 + 8 * (v22 ^ 0x3923)))(&a14);
  return (*(v20 + 8 * ((0x3FFF * (a14 == 16257999)) ^ v22)))(v26);
}

uint64_t sub_1000FAA94(uint64_t a1)
{
  v8 = ~v4 + v1;
  v9 = *(v2 + v8 - 15);
  v10 = *(v2 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = v9;
  *(v11 - 31) = v10;
  return (*(v7 + 8 * (v5 | (2 * (v6 + v4 != v3)))))();
}

void sub_1000FAAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_1000FAB98@<X0>(int a1@<W1>, int a2@<W8>)
{
  v3 = STACK[0x440];
  v4 = STACK[0x3C0];
  LODWORD(STACK[0x3DC]) = STACK[0x448];
  v5 = &STACK[0xB20] + STACK[0x628];
  STACK[0x6E8] = v5;
  STACK[0x630] = (v5 + 16);
  STACK[0x7D8] = 0;
  STACK[0x8A8] = 0;
  LODWORD(STACK[0x654]) = a1;
  STACK[0x700] = 0;
  LODWORD(STACK[0x6B4]) = a1;
  STACK[0x520] = v3;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  return (*(v2 + 8 * ((v7 * (a2 ^ 0x2309)) ^ a2)))();
}

uint64_t sub_1000FAC88()
{
  STACK[0x798] = 0;
  STACK[0x790] = 0;
  return (*(v1 + 8 * ((58 * (((3 * (v0 ^ 0xD4) - 90) ^ 1) & 1)) ^ (3 * (v0 ^ 0x11D4)))))();
}

uint64_t sub_1000FACEC()
{
  v2 = 11 * (v0 ^ 0x8BA);
  (*(v1 + 8 * (v0 ^ 0x2DDFu)))();
  return (*(v1 + 8 * ((((v2 ^ 0x9A3) - 3250 + 419 * (v2 ^ 0x9A3)) * (STACK[0x748] == 0)) ^ v2)))();
}

uint64_t sub_1000FADD4()
{
  v7 = v2 + 8;
  v6 = v1 + 869295389 * (((&v6 | 0x684BBF2A) - &v6 + (&v6 & 0x97B440D0)) ^ 0xD91F9379) + 1903871738;
  result = (*(v3 + 8 * (v1 + 5319)))(&v6);
  *(v0 + 16) = v4;
  return result;
}

uint64_t sub_1000FAFC4(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * (((4 * (v5 != 0)) | (16 * (v5 != 0))) ^ (v2 - 2412))))();
}

uint64_t sub_1000FB0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * (&a14 ^ 0xB0039876) + 8154;
  a14 = &a11;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((6310 * (a15 == v18)) ^ v17)))(v19);
}

uint64_t sub_1000FB11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = (*(v71 + 8 * (v69 ^ 0x21FE)))(LODWORD(STACK[0x654]) ^ (v70 + 768) ^ (v69 - 26561661) & 0x1954FF6 ^ (v69 - 1361179997) & 0x5121F3D6u, 0x100004077774924);
  STACK[0xA58] = v72;
  if (v72)
  {
    a69 = 16257999;
  }

  LODWORD(STACK[0xA64]) = a69;
  return (*(v71 + 8 * ((61 * (v72 == 0)) ^ v69)))();
}

uint64_t sub_1000FB1F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = LODWORD(STACK[0x350]);
  if (v5 == 17168)
  {
    return (*(STACK[0x400] + 8 * ((v4 - 4625) ^ (4020 * (v3 == 197499223)))))();
  }

  if (v5 == 20706 || v5 == 33980)
  {
    STACK[0x968] = a3;
  }

  return (STACK[0x900])();
}

uint64_t sub_1000FB300(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, unint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v55 = LODWORD(STACK[0x3E4]) - 659;
  v56 = (a3 ^ 0xBC59953u) + a55;
  STACK[0x890] = v56;
  return (*(STACK[0x3E8] + 8 * (v55 ^ (992 * (v56 > a49)))))();
}

uint64_t sub_1000FB354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v25 = 1875091903 * (v19 ^ 0x36758383);
  a16 = (v23 ^ 0xBCFCBFBA) + v25 + ((2 * v23) & 0x79F97F74) + 1663039216;
  LODWORD(a17) = v25 + 7724;
  a18 = a11;
  (*(v24 + 77160))(&a15);
  v26 = 956911519 * (v19 ^ 0x453675DCEA917005);
  a15 = v26 ^ 0x3FE;
  a17 = v22 - ((2 * v22) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v26;
  a18 = a11;
  (*(v24 + 76792))(&a15);
  v27 = 1875091903 * ((-814978974 - (v19 | 0xCF6C6862) + (v19 | 0x3093979D)) ^ 0x6E6141E);
  a18 = a11;
  a16 = (v21 ^ 0xF8DCF6FA) + ((2 * v21) & 0xF1B9EDF4) + 658489264 + v27;
  LODWORD(a17) = v27 + 7724;
  (*(v24 + 77160))(&a15);
  v28 = 1824088897 * ((((2 * v19) | 0x3AF69840) - v19 - 494619680) ^ 0x45129F42);
  LODWORD(a17) = (v20 ^ 0x4FE4FBDA) + ((2 * v20) & 0x9FC9F7B4) - v28 - 20975952;
  a15 = v28 + 3757;
  a18 = a10;
  a19 = a11;
  v29 = (*(v24 + 77048))(&a15);
  return (*(v24 + 8 * ((4326 * (a16 == 16257999)) | 0x911u)))(v29);
}

uint64_t sub_1000FB5B0@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x3E8];
  STACK[0x400] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((((((a1 - 127) ^ 0xB9) - 1) ^ (v2 == 0)) & 1) * ((3 * ((a1 + 5505) ^ 0x10B9)) ^ 0x15F2)) | (a1 + 5505))))();
}

uint64_t sub_1000FB5D4@<X0>(unint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v10 = v5 - 8;
  v11.i64[0] = a2 + v10 - 7;
  v11.i64[1] = a2 + v10 - 8;
  v12.i64[0] = a2 + v10 - 5;
  v12.i64[1] = a2 + v10 - 6;
  v13.i64[0] = a2 + v10 - 3;
  v13.i64[1] = v4 + v10;
  v14.i64[0] = a2 + v10 - 1;
  v14.i64[1] = a2 + v10 - 2;
  v15 = vandq_s8(v14, *&STACK[0x3C0]);
  v16 = vandq_s8(v13, *&STACK[0x3C0]);
  v17 = vandq_s8(v12, *&STACK[0x3C0]);
  v18 = vandq_s8(v11, *&STACK[0x3C0]);
  v19 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v20 = vsraq_n_u64(vshlq_n_s64(v17, 0x38uLL), v17, 8uLL);
  v21 = vsraq_n_u64(vshlq_n_s64(v16, 0x38uLL), v16, 8uLL);
  v22 = vsraq_n_u64(vshlq_n_s64(v15, 0x38uLL), v15, 8uLL);
  v23 = vdupq_n_s64(a1);
  v24 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v22), *&STACK[0x380]), vorrq_s8(vaddq_s64(v22, *&STACK[0x3B0]), *&STACK[0x3A0]));
  v25 = vorrq_s8(vaddq_s64(v19, *&STACK[0x3B0]), *&STACK[0x3A0]);
  v26 = vorrq_s8(vsubq_s64(*&STACK[0x390], v19), *&STACK[0x380]);
  v27 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v21), *&STACK[0x380]), vorrq_s8(vaddq_s64(v21, *&STACK[0x3B0]), *&STACK[0x3A0]));
  v28 = vsubq_s64(*&STACK[0x350], vaddq_s64(v26, v25));
  v29 = vsubq_s64(*&STACK[0x350], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v20), *&STACK[0x380]), vorrq_s8(vaddq_s64(v20, *&STACK[0x3B0]), *&STACK[0x3A0])));
  v30 = veorq_s8(v29, *&STACK[0x340]);
  v31 = veorq_s8(v28, *&STACK[0x340]);
  v32 = veorq_s8(v28, *&STACK[0x330]);
  v33 = veorq_s8(v29, *&STACK[0x330]);
  v34 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), v32), *&STACK[0x320]);
  v35 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL), v33), *&STACK[0x320]);
  v36 = vsraq_n_u64(vshlq_n_s64(v32, 3uLL), v32, 0x3DuLL);
  v37 = veorq_s8(v35, vsraq_n_u64(vshlq_n_s64(v33, 3uLL), v33, 0x3DuLL));
  v38 = veorq_s8(v34, v36);
  v39 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), v38);
  v41 = vaddq_s64(v39, v37);
  v42 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v41, v41), *&STACK[0x310]), v41), *&STACK[0x300]), *&STACK[0x2F0]);
  v43 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v40, v40), *&STACK[0x310]), v40), *&STACK[0x300]), *&STACK[0x2F0]);
  v44 = vsraq_n_u64(vshlq_n_s64(v37, 3uLL), v37, 0x3DuLL);
  v45 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v38, 3uLL), v38, 0x3DuLL));
  v46 = veorq_s8(v42, v44);
  v47 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v46);
  v49 = veorq_s8(vaddq_s64(v47, v45), *&STACK[0x2E0]);
  v50 = veorq_s8(v48, *&STACK[0x2E0]);
  v51 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v53 = veorq_s8(v49, v51);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = veorq_s8(vaddq_s64(v54, v52), *&STACK[0x2D0]);
  v57 = veorq_s8(v55, *&STACK[0x2D0]);
  v58 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v59 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = vaddq_s64(v61, v59);
  v64 = veorq_s8(v63, *&STACK[0x370]);
  v65 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v63, v9), *&STACK[0x360]), v64), vandq_s8(v64, v9));
  v66 = veorq_s8(v62, *&STACK[0x370]);
  v67 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v62, v9), *&STACK[0x360]), v66), vandq_s8(v66, v9)), *&STACK[0x2C0]);
  v68 = veorq_s8(v65, *&STACK[0x2C0]);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v69), *&STACK[0x2B0]);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70), *&STACK[0x2B0]);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v78 = vsubq_s64(*&STACK[0x350], v27);
  v79 = veorq_s8(vaddq_s64(v76, v74), *&STACK[0x2A0]);
  v115.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v77, v75), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v11, 3uLL), v23)));
  v115.val[2] = vshlq_u64(v79, vnegq_s64(vandq_s8(vshlq_n_s64(v12, 3uLL), v23)));
  v80 = veorq_s8(v78, *&STACK[0x340]);
  v81 = veorq_s8(v78, *&STACK[0x330]);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v81), *&STACK[0x320]);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v84, v84), *&STACK[0x310]), v84), *&STACK[0x300]), *&STACK[0x2F0]);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), *&STACK[0x2E0]);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v88), *&STACK[0x2D0]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v92 = veorq_s8(v91, *&STACK[0x370]);
  v93 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v91, v9), *&STACK[0x360]), v92), vandq_s8(v92, v9)), *&STACK[0x2C0]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), *&STACK[0x2B0]);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL)));
  v97 = vsubq_s64(*&STACK[0x350], v24);
  v115.val[1] = vshlq_u64(veorq_s8(v96, *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), v23)));
  v98 = veorq_s8(v97, *&STACK[0x340]);
  v99 = veorq_s8(v97, *&STACK[0x330]);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), *&STACK[0x320]);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), *&STACK[0x310]), v102), *&STACK[0x300]), *&STACK[0x2F0]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), *&STACK[0x2E0]);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), *&STACK[0x2D0]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(v109, *&STACK[0x370]);
  v111 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v109, v9), *&STACK[0x360]), v110), vandq_s8(v110, v9)), *&STACK[0x2C0]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), *&STACK[0x2B0]);
  v115.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL))), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v23)));
  *(v3 + v10) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v115, v8)), *(a2 + v10 - 8));
  return (*(STACK[0x3E8] + 8 * (((v7 != v10) * v2) ^ v6)))();
}

void sub_1000FB5DC(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (956911519 * ((a1 & 0xE2666BD4 | ~(a1 | 0xE2666BD4)) ^ 0xF708E42E));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000FB668@<X0>(int a1@<W8>)
{
  STACK[0x9A8] = v1;
  v3 = STACK[0x7B0];
  STACK[0x9B0] = STACK[0x7B0];
  return (*(v2 + 8 * (((v1 - v3 > ((a1 ^ 0x1376u) + 528) - 542) * ((227 * (a1 ^ 0x1376)) ^ 0x1FEC)) ^ a1)))();
}

void sub_1000FB6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x5A8] = 0;
  STACK[0x908] = *(a72 + 8 * (v72 - 5692));
  JUMPOUT(0x1000B87F4);
}

void sub_1000FB754(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (1824088897 * ((a1 & 0xC6688BEA | ~(a1 | 0xC6688BEA)) ^ 0x61FEA777));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000FB7F0@<X0>(int a1@<W8>)
{
  v3 = (a1 - 5663) | 0x2490;
  (*(v2 + 8 * (a1 + 3876)))(v1);
  STACK[0x878] = 0;
  return (*(v2 + 8 * (((STACK[0x3F8] == 0) * (34 * (v3 ^ 0x242A) + ((v3 - 4597) ^ 0xFFFFCC16))) ^ v3)))();
}

void sub_1000FB85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  v23 = 9 * (a19 ^ 0xF52);
  *(v22 - 144) = v21;
  *(v22 - 152) = v23 - ((((v22 - 152) | 0x863FF633) - (v22 - 152) + ((v22 - 152) & 0x79C009C8)) ^ 0x6CAE8636) * v19 - 501373537;
  (*(v20 + 8 * (v23 + 2570)))(v22 - 152);
  JUMPOUT(0x1000FB90CLL);
}

void sub_1000FB98C()
{
  *v0 = v1;
  *v2 = v3;
  JUMPOUT(0x10003AF7CLL);
}

void sub_1000FBA08()
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3A0] = xmmword_1003EAE30;
  JUMPOUT(0x1000FBB88);
}

uint64_t sub_1000FC128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a15;
  a19 = v22 + 1317436891 * (&a17 ^ 0xB0039876) + 2338;
  v23 = (*(v19 + 8 * (v22 + 3821)))(&a17);
  return (*(v19 + 8 * (((a18 == v21) * ((((v22 - 486) | 0x125) ^ v20) + ((v22 - 1820385721) & 0xFEF6FFFF))) ^ v22)))(v23);
}

uint64_t sub_1000FC1EC()
{
  v5 = ((v2 + 2393) ^ 0xFFFFFFFFFFFFF048) + v3;
  *(v0 + v5) = *(v1 + v5) ^ 0x3C;
  return (*(v4 + 8 * ((8788 * (v5 == 0)) ^ v2)))();
}

void sub_1000FC224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000FC29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *(STACK[0x910] + 24);
  STACK[0x620] = v73;
  return (*(a72 + 8 * ((((((v72 - 7229) | 0x1400) ^ 0xFFFFEBEA) + ((v72 - 1094116353) & 0x4136C7DF)) * (v73 == 0)) | v72)))();
}

uint64_t sub_1000FC300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v24 = 1824088897 * (((~&a17 & 0x1C997200) - (~&a17 | 0x1C997201)) ^ 0x44F0A163);
  a18 = v24 - 727050278;
  a21 = -654855621 - v24;
  a22 = v24 + v23 + 1674573491;
  a19 = a15;
  a20 = &a12;
  v25 = (*(v22 + 8 * (v23 ^ 0x307F)))(&a17);
  return (*(v22 + 8 * ((13862 * (a17 == ((v23 + 193) ^ 0xF80577))) ^ v23)))(v25);
}

uint64_t sub_1000FC3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = (&a15 ^ 0x5869D362) * v21;
  a17 = a12;
  a18 = &a13;
  a16 = v23 - 1645752457;
  a19 = -654855621 - v23;
  a20 = v23 + v20 + 1674577303;
  v24 = (*(v22 + 8 * (v20 + 7797)))(&a15);
  return (*(v22 + 8 * ((60 * (a15 == (((v20 ^ 0x726) + 16253017) ^ (93 * (v20 ^ 0x726))))) ^ v20)))(v24);
}

uint64_t sub_1000FC46C@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_1001876DC();
}

uint64_t sub_1000FC52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v18 + 503) ^ (33731311 * (((&a13 | 0x10D99747) - &a13 + (&a13 & 0xEF2668B8)) ^ 0x292F5D64));
  a15 = a9;
  a16 = &a12;
  (*(v16 + 8 * (v18 + 6852)))(&a13);
  LODWORD(a16) = v18 - 2008441969 * ((&a13 & 0x19BE0064 | ~(&a13 | 0x19BE0064)) ^ 0xAED8AB95) + 2936;
  a15 = a9;
  v19 = (*(v16 + 8 * (v18 ^ 0x2F3E)))(&a13);
  return (*(v16 + 8 * ((117 * (a13 != ((v17 + ((v18 - 85) | 0x80) + 2832) ^ ((v18 - 2596) | 0xC44)))) ^ v18)))(v19);
}

uint64_t sub_1000FC638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x3E0] = v9;
  v23 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v24 = vdupq_n_s64(0x38uLL);
  v25 = vdupq_n_s64(v16);
  v26 = vdupq_n_s64(v20);
  v27 = vdupq_n_s64(a7);
  v28 = vdupq_n_s64(a8);
  v29 = vdupq_n_s64(v13);
  v30 = v22 + a1 + a2 - a3 + v8;
  v31 = vdupq_n_s64(v11);
  v32 = vdupq_n_s64(v14);
  v33 = vdupq_n_s64(v17);
  v34 = vdupq_n_s64(v15);
  v35 = vdupq_n_s64(v19);
  v36 = vdupq_n_s64(0xF2620266DFD8DE82);
  v37 = vdupq_n_s64(0x5C3E923DC79C4710uLL);
  v38 = vdupq_n_s64(0x2E1F491EE3CE2388uLL);
  v39 = vdupq_n_s64(0x97A1B9D365930275);
  v40 = vdupq_n_s64(v18);
  v41 = vdupq_n_s64(0x93BA3B681E438AC2);
  v42 = vdupq_n_s64(0x3622E24BF0DE3A9EuLL);
  v43 = vdupq_n_s64(0x3102FDB0D852CBCuLL);
  v44.i64[0] = v30 + 11 + v12;
  v44.i64[1] = v8 + a1 + a2 + v21 - a3 + v12 + ((a5 + 83) ^ (v10 + 1375));
  v45.i64[0] = v30 + 15 + v12;
  v45.i64[1] = v30 + 14 + v12;
  v46.i64[0] = v30 + 13 + v12;
  v46.i64[1] = v30 + 12 + v12;
  v47.i64[0] = v30 + 9 + v12;
  v47.i64[1] = v30 + 8 + v12;
  v48 = vandq_s8(v47, v23);
  v49 = vandq_s8(v46, v23);
  v50 = vandq_s8(v45, v23);
  v51 = vandq_s8(v44, v23);
  v52 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v53 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v25);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v25);
  v56 = veorq_s8(v55, v26);
  v57 = veorq_s8(v54, v26);
  v58 = veorq_s8(v54, v27);
  v59 = veorq_s8(v55, v27);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), v28), v61), v29), v31);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v60, v60), v28), v60), v29), v31);
  v64 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v65 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v62, v64);
  v67 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = vaddq_s64(v67, v65);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v68, v32), vorrq_s8(v68, v33)), v33), v34);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v69, v32), vorrq_s8(v69, v33)), v33), v34);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v72), v35);
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73), v35);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v77 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v78 = veorq_s8(v74, v76);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78);
  v81 = veorq_s8(vaddq_s64(v79, v77), v36);
  v82 = veorq_s8(v80, v36);
  v83 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = vaddq_s64(v86, v84);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(v88, vandq_s8(vaddq_s64(v88, v88), v37)), v38), v39);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(v87, vandq_s8(vaddq_s64(v87, v87), v37)), v38), v39);
  v91 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v92 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v93 = veorq_s8(v89, v91);
  v94 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = veorq_s8(vaddq_s64(v94, v92), v40);
  v97 = veorq_s8(v95, v40);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v99 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v103 = vaddq_s64(v53, v25);
  v104 = vaddq_s64(v102, v100);
  v105 = vaddq_s64(v101, v99);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), v41), v105), v42), v43);
  v143.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v41), v104), v42), v43), vnegq_s64(vandq_s8(vshlq_n_s64(v47, 3uLL), v24)));
  v143.val[1] = vshlq_u64(v106, vnegq_s64(vandq_s8(vshlq_n_s64(v46, 3uLL), v24)));
  v107 = veorq_s8(v103, v26);
  v108 = veorq_s8(v103, v27);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), v28), v109), v29), v31);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v32), vorrq_s8(v112, v33)), v33), v34);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v35);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v36);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(v119, vandq_s8(vaddq_s64(v119, v119), v37)), v38), v39);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v40);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL)));
  v124 = vaddq_s64(v52, v25);
  v143.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), v41), v123), v42), v43), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v24)));
  v125 = veorq_s8(v124, v26);
  v126 = veorq_s8(v124, v27);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v28), v127), v29), v31);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v130, v32), vorrq_s8(v130, v33)), v33), v34);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v35);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v36);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(v137, vandq_s8(vaddq_s64(v137, v137), v37)), v38), v39);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v40);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL)));
  v143.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v141, v141), v41), v141), v42), v43), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v24)));
  *(v30 + 8 + v12) = vrev64_s8(*&vqtbl4q_s8(v143, xmmword_1003EAE30));
  return (*(STACK[0x400] + 8 * ((49 * (a3 - (v12 & 0xFFFFFFF8) == -8)) ^ a5)))();
}

uint64_t sub_1000FCCD8@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0xF25;
  (*(v1 + 8 * (a1 ^ 0x346B)))();
  return (*(STACK[0x400] + 8 * (((((76 * (v2 ^ 0x1EEC)) ^ 0xFFFFD5CF) + v2 + 693) * (STACK[0x5F8] == 0)) ^ v2)))();
}

uint64_t sub_1000FCD38@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = 1358806181 * ((203312414 - ((v6 - 232) | 0xC1E4D1E) + ((v6 - 232) | 0xF3E1B2E1)) ^ 0xCCCEDE62);
  *(v6 - 192) = STACK[0x4F0];
  *(v6 - 200) = (v4 ^ 0xBD9DD0A9) + v7;
  *(v6 - 216) = a2;
  *(v6 - 208) = v2;
  *(v6 - 224) = v7 + v3 + 2424;
  *(v6 - 220) = (v5 ^ 0x7F6ADD1F) - v7 + ((v5 << (v3 ^ 0x75)) & 0xFED5BA3E) - 302122250;
  *(v6 - 232) = v2;
  v8 = (*(a1 + 8 * (v3 ^ 0x2CF6)))(v6 - 232);
  return sub_1001B30F4(v8);
}

uint64_t sub_1000FCE48()
{
  v0 = STACK[0x630];
  *v0 = 0u;
  v0[1] = 0u;
  return sub_1000FCE70();
}

uint64_t sub_1000FCE70@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *a2;
  STACK[0x768] = *(a1 + 8 * v3);
  return (*(a1 + 8 * (((v4 == 0) * (((v2 - 375) ^ 0xFFFFE117) + (v2 ^ 0x1F6B))) ^ v2)))();
}

uint64_t sub_1000FCF38@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v79 = v66 - v75 - 3;
  v80 = v66 - v75 - 4;
  v81 = v66 - v75 - 7;
  v82.i64[0] = v65 + v79;
  v82.i64[1] = v65 + v80;
  v83 = v66 - v75 - 8;
  v84.i64[0] = v65 + v81;
  v84.i64[1] = v65 + v83;
  v85.i64[0] = a9 + v81;
  v85.i64[1] = a9 + v83;
  v86.i64[0] = a9 + v79;
  v86.i64[1] = a9 + v80;
  v87 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v88 = vandq_s8(v84, v87);
  v89 = vandq_s8(v82, v87);
  v565 = vdupq_n_s64(0xFD9F8588DF8D6587);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v565);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v565);
  v564 = vdupq_n_s64(0x7F50B0EAB20D7126uLL);
  v92 = vdupq_n_s64(v68);
  v93 = vaddq_s64(vsubq_s64(vorrq_s8(v91, v564), vorrq_s8(v91, v92)), v92);
  v94 = vaddq_s64(vsubq_s64(vorrq_s8(v90, v564), vorrq_s8(v90, v92)), v92);
  v561 = vdupq_n_s64(0xA166AAF4BCB468F5);
  v95 = vdupq_n_s64(0x4D9A86B240DF44CAuLL);
  *&STACK[0x280] = v95;
  v96 = veorq_s8(v94, v561);
  v97 = veorq_s8(v93, v561);
  v98 = veorq_s8(v93, v95);
  v99 = veorq_s8(v94, v95);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v99);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v102 = vdupq_n_s64(0x8E237DE192A9CA6ALL);
  *&STACK[0x380] = v102;
  v103 = vorrq_s8(vaddq_s64(v100, v100), v102);
  v104 = vorrq_s8(vaddq_s64(v101, v101), v102);
  v105 = vdupq_n_s64(0x38EE410F36AB1ACBuLL);
  *&STACK[0x260] = v105;
  v560 = vdupq_n_s64(0xF9D62AAA5A604418);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(v104, v101), v105), v560);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(v103, v100), v105), v560);
  v108 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v109 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v110 = veorq_s8(v106, v108);
  v111 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v110);
  v113 = vaddq_s64(v111, v109);
  v114 = vdupq_n_s64(0x7381049A069EAA6uLL);
  v115 = vdupq_n_s64(0xFC63F7DB2FCB0AACLL);
  *&STACK[0x270] = v115;
  v116 = vdupq_n_s64(0xF8C85E9088759E58);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v114), v113), v115), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v114), v112), v115), v116);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v120 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v121 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v122 = vdupq_n_s64(0x87C30A0A7B081733);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v120);
  v124 = veorq_s8(vaddq_s64(v121, v119), v122);
  v125 = veorq_s8(v123, v122);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v127 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v127);
  v130 = vaddq_s64(v128, v126);
  v131 = vdupq_n_s64(0x295CF5CC1B28F7C6uLL);
  v132 = vdupq_n_s64(0xEB518519F26B841CLL);
  v133 = vdupq_n_s64(0xCE2C7D00F8642E60);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), v131), v130), v132), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v131), v129), v132), v133);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v137 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v138 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v137);
  v140 = vdupq_n_s64(0x2E769D09049CAA6AuLL);
  v141 = veorq_s8(vaddq_s64(v138, v136), v140);
  v142 = veorq_s8(v139, v140);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v144 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v145 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v146 = vdupq_n_s64(0xB26D991E94D41A74);
  *&STACK[0x370] = v146;
  v147 = veorq_s8(vaddq_s64(v145, v143), v146);
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v144), v146);
  v149 = vdupq_n_s64(0x113E4DE7F9261D5EuLL);
  *&STACK[0x250] = v149;
  v150 = vorrq_s8(vaddq_s64(v147, v147), v149);
  v151 = vorrq_s8(vaddq_s64(v148, v148), v149);
  v152 = vdupq_n_s64(0xF760D90C036CF151);
  v153 = vsubq_s64(v151, v148);
  v154 = vaddq_s64(vsubq_s64(v150, v147), v152);
  v155 = vaddq_s64(v153, v152);
  v156 = vdupq_n_s64(0x703A61C38953CBECuLL);
  *&STACK[0x230] = v156;
  *&STACK[0x240] = v152;
  v157 = veorq_s8(v155, v156);
  v158 = veorq_s8(v154, v156);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v160 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v161 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v162 = vandq_s8(v86, v87);
  v163 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v164 = vandq_s8(v85, v87);
  v165 = v87;
  v166 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v167 = vaddq_s64(v163, v160);
  v168 = *&STACK[0x3B0];
  v169 = vaddq_s64(v166, *&STACK[0x3B0]);
  v170 = vdupq_n_s64(a2);
  v171 = vdupq_n_s64(a3);
  v172 = vdupq_n_s64(a4);
  *&STACK[0x300] = v170;
  *&STACK[0x310] = v172;
  v173 = vdupq_n_s64(a5);
  v174 = vaddq_s64(veorq_s8(vandq_s8(v169, v172), v173), veorq_s8(vandq_s8(v169, v170), v171));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v168);
  *&STACK[0x210] = v171;
  v162.i64[0] = -1;
  v162.i64[1] = -1;
  v176 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v175, v172), v173), veorq_s8(vandq_s8(v175, v170), v171)), v162);
  v177.i64[0] = -1;
  v177.i64[1] = -1;
  v178 = vdupq_n_s64(a6);
  v179 = veorq_s8(v176, v178);
  v180 = v178;
  *&STACK[0x320] = v178;
  *&STACK[0x330] = v173;
  v181 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v182 = vaddq_s64(v174, v177);
  v183 = veorq_s8(v182, v180);
  v184 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v185 = vdupq_n_s64(a7);
  v186 = veorq_s8(v176, v185);
  v187 = v185;
  *&STACK[0x2A0] = v185;
  v188 = vaddq_s64(v181, v186);
  v189 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v190 = veorq_s8(v182, v187);
  v191 = vaddq_s64(v184, v190);
  v192 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v193 = veorq_s8(v191, v78);
  v194 = veorq_s8(v193, v192);
  v195 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v196 = veorq_s8(v188, v78);
  v197 = veorq_s8(v196, v189);
  v198 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v199 = vaddq_s64(v195, v194);
  v200 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v201 = vaddq_s64(v198, v197);
  v202 = vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL);
  v203 = vdupq_n_s64(v69);
  v204 = veorq_s8(v201, v203);
  v205 = v203;
  *&STACK[0x2C0] = v203;
  v206 = veorq_s8(v204, v202);
  v207 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v208 = veorq_s8(v199, v205);
  v209 = veorq_s8(v208, v200);
  v210 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v211 = vaddq_s64(v207, v206);
  v212 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v213 = vaddq_s64(v210, v209);
  v214 = vdupq_n_s64(v70);
  v215 = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v216 = veorq_s8(v213, v214);
  *&STACK[0x2D0] = v214;
  v217 = veorq_s8(v216, v215);
  v218 = vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL);
  v219 = vaddq_s64(v161, v159);
  v220 = veorq_s8(v211, v214);
  v221 = veorq_s8(v220, v212);
  v222 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v223 = vaddq_s64(v218, v217);
  v224 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v225 = vdupq_n_s64(0x1B79F8777AE58672uLL);
  *&STACK[0x220] = v225;
  v226 = vsubq_s64(v219, vandq_s8(vaddq_s64(v219, v219), v225));
  v227 = vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL);
  v228 = veorq_s8(vaddq_s64(v222, v221), v76);
  v229 = veorq_s8(v228, v227);
  v230 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v231 = veorq_s8(v223, v76);
  v232 = veorq_s8(v231, v224);
  v233 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v234 = vaddq_s64(v230, v229);
  v235 = vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL);
  v236 = vaddq_s64(v233, v232);
  v237 = vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL);
  v238 = veorq_s8(v236, v77);
  v239 = veorq_s8(v238, v237);
  v240 = vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL);
  v241 = vsubq_s64(v167, vandq_s8(vaddq_s64(v167, v167), v225));
  v242 = veorq_s8(v234, v77);
  v243 = veorq_s8(v242, v235);
  v244 = vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL);
  v245 = vaddq_s64(v240, v239);
  v246 = vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL);
  v247 = vaddq_s64(v244, v243);
  v248 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v249 = vdupq_n_s64(v71);
  v250 = veorq_s8(v247, v249);
  *&STACK[0x2B0] = v249;
  v251 = veorq_s8(v245, v249);
  v252 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), veorq_s8(v251, v246));
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), veorq_s8(v250, v248));
  v254 = vdupq_n_s64(a8);
  *&STACK[0x290] = v254;
  v255 = vdupq_n_s64(v67);
  v256 = vdupq_n_s64(v72);
  v257 = vdupq_n_s64(a1);
  *&STACK[0x2E0] = v257;
  *&STACK[0x2F0] = v256;
  v258 = vdupq_n_s64(0x38uLL);
  v259 = vshlq_u64(veorq_s8(vaddq_s64(v241, v256), v257), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), v258)));
  v260 = vshlq_u64(veorq_s8(vaddq_s64(v226, v256), v257), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), v258)));
  v261 = vaddq_s64(vsubq_s64(vorrq_s8(v253, v254), vorrq_s8(v253, v255)), v255);
  v262 = vdupq_n_s64(v73);
  *&STACK[0x390] = v262;
  v567.val[3] = veorq_s8(v260, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v252, v254), vorrq_s8(v252, v255)), v255), v262), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), v258))));
  v567.val[1] = veorq_s8(v259, vshlq_u64(veorq_s8(v261, v262), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), v258))));
  v263 = v66 - v75 - 1;
  v264 = v66 - v75 - 2;
  v265 = v65 + v263;
  v259.i64[0] = v65 + v263;
  v259.i64[1] = v65 + v264;
  v266 = v165;
  v558 = v165;
  v267 = vandq_s8(v259, v165);
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), v565);
  v562 = v92;
  v269 = vaddq_s64(vsubq_s64(vorrq_s8(v268, v564), vorrq_s8(v268, v92)), v92);
  v270 = veorq_s8(v269, v561);
  v271 = *&STACK[0x280];
  v272 = veorq_s8(v269, *&STACK[0x280]);
  v273 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), v272);
  v274 = *&STACK[0x380];
  v276 = *&STACK[0x260];
  v275 = *&STACK[0x270];
  v277 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v273, v273), *&STACK[0x380]), v273), *&STACK[0x260]), v560);
  v278 = veorq_s8(v277, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v279 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v278);
  v280 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v279, v279), v114), v279), *&STACK[0x270]), v116);
  v281 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v278, 3uLL), v278, 0x3DuLL));
  v282 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v281), v122);
  v283 = veorq_s8(v282, vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL));
  v284 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v283);
  *&STACK[0x200] = v132;
  v285 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v284, v284), v131), v284), v132), v133);
  v286 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL));
  v287 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v286), v140);
  v288 = veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL));
  v289 = vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL);
  v290 = a9 + v263;
  v270.i64[0] = a9 + v263;
  v270.i64[1] = a9 + v264;
  v291 = vandq_s8(v270, v266);
  v292 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v168);
  v293 = vsraq_n_u64(vshlq_n_s64(v288, 3uLL), v288, 0x3DuLL);
  v294 = vaddq_s64(v289, v288);
  v289.i64[0] = -1;
  v289.i64[1] = -1;
  v295 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v292, *&STACK[0x310]), *&STACK[0x330]), veorq_s8(vandq_s8(v292, *&STACK[0x300]), v171)), v289);
  v296 = veorq_s8(v295, *&STACK[0x320]);
  v297 = veorq_s8(v295, *&STACK[0x2A0]);
  v298 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL), v297);
  v299 = vsraq_n_u64(vshlq_n_s64(v297, 3uLL), v297, 0x3DuLL);
  v300 = veorq_s8(v294, *&STACK[0x370]);
  v301 = veorq_s8(v298, *&STACK[0x360]);
  v302 = veorq_s8(v301, v299);
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302);
  v304 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v305 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v300, v300), *&STACK[0x250]), v300), *&STACK[0x240]), *&STACK[0x230]);
  v306 = veorq_s8(v305, v293);
  v307 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v308 = veorq_s8(v303, *&STACK[0x2C0]);
  v309 = veorq_s8(v308, v304);
  v310 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), v309), *&STACK[0x2D0]);
  v311 = veorq_s8(v310, vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL));
  v312 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v313 = vaddq_s64(v307, v306);
  v314 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v315 = veorq_s8(vaddq_s64(v312, v311), *&STACK[0x350]);
  v316 = veorq_s8(v315, v314);
  v317 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL), v316), v77);
  v318 = veorq_s8(v317, vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL));
  v319 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v317, 0x38uLL), v317, 8uLL), v318), *&STACK[0x2B0]);
  v320 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v319, 0x38uLL), v319, 8uLL), veorq_s8(v319, vsraq_n_u64(vshlq_n_s64(v318, 3uLL), v318, 0x3DuLL)));
  v567.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v313, vandq_s8(vaddq_s64(v313, v313), *&STACK[0x220])), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v259, 3uLL), v258))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v320, *&STACK[0x290]), vorrq_s8(v320, v255)), v255), *&STACK[0x390]), vnegq_s64(vandq_s8(vshlq_n_s64(v270, 3uLL), v258))));
  v321 = v66 - v75 - 5;
  v322 = ((v74 - 379924108) & 0x16A537EB ^ 0xFFFFFFFFFFFFE831) + v66 - v75;
  v259.i64[0] = v65 + v321;
  v259.i64[1] = v65 + v322;
  v323 = vandq_s8(v259, v558);
  v324 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), v565);
  v325 = vaddq_s64(vsubq_s64(vorrq_s8(v324, v564), vorrq_s8(v324, v562)), v562);
  v326 = veorq_s8(v325, v561);
  v327 = veorq_s8(v325, v271);
  v328 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v327);
  v329 = vsraq_n_u64(vshlq_n_s64(v327, 3uLL), v327, 0x3DuLL);
  v330 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v328, v328), v274), v328), v276), v560);
  v331 = veorq_s8(v330, v329);
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), v331);
  v333 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v332, v332), v114), v332), v275), v116);
  v334 = veorq_s8(v333, vsraq_n_u64(vshlq_n_s64(v331, 3uLL), v331, 0x3DuLL));
  v335 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v334), v122);
  v336 = veorq_s8(v335, vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL));
  v337 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL), v336);
  v338 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v337, v337), v131), v337), v132), v133);
  v339 = veorq_s8(v338, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v340 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL), v339), v140);
  v341 = veorq_s8(v340, vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL));
  v342 = vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL);
  v270.i64[0] = a9 + v321;
  v270.i64[1] = a9 + v322;
  v343 = vandq_s8(v270, v558);
  v344 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v343, 0x38uLL), v343, 8uLL), *&STACK[0x3B0]);
  v314.i64[0] = -1;
  v314.i64[1] = -1;
  v345 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v344, *&STACK[0x310]), *&STACK[0x330]), veorq_s8(vandq_s8(v344, *&STACK[0x300]), *&STACK[0x210])), v314);
  v346 = veorq_s8(v345, *&STACK[0x320]);
  v347 = veorq_s8(v345, *&STACK[0x2A0]);
  v348 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL), v347);
  v349 = vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL);
  v350 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v351 = vaddq_s64(v342, v341);
  v352 = veorq_s8(v348, *&STACK[0x360]);
  v353 = veorq_s8(v352, v349);
  v354 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL), v353), *&STACK[0x2C0]);
  v355 = veorq_s8(v354, vsraq_n_u64(vshlq_n_s64(v353, 3uLL), v353, 0x3DuLL));
  v356 = veorq_s8(v351, *&STACK[0x370]);
  v357 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), v355), *&STACK[0x2D0]);
  v358 = veorq_s8(v357, vsraq_n_u64(vshlq_n_s64(v355, 3uLL), v355, 0x3DuLL));
  v359 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL), v358);
  v360 = vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL);
  v361 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v356, v356), *&STACK[0x250]), v356), *&STACK[0x240]), *&STACK[0x230]);
  v362 = veorq_s8(v361, v350);
  v363 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v364 = veorq_s8(v359, *&STACK[0x350]);
  v365 = veorq_s8(v364, v360);
  v366 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), v365), *&STACK[0x340]);
  v367 = veorq_s8(v366, vsraq_n_u64(vshlq_n_s64(v365, 3uLL), v365, 0x3DuLL));
  v368 = vaddq_s64(v363, v362);
  v369 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL), v367), *&STACK[0x2B0]);
  v370 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v369, 0x38uLL), v369, 8uLL), veorq_s8(v369, vsraq_n_u64(vshlq_n_s64(v367, 3uLL), v367, 0x3DuLL)));
  v563 = v255;
  v567.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v368, vandq_s8(vaddq_s64(v368, v368), *&STACK[0x220])), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v259, 3uLL), v258))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v370, *&STACK[0x290]), vorrq_s8(v370, v255)), v255), *&STACK[0x390]), vnegq_s64(vandq_s8(vshlq_n_s64(v270, 3uLL), v258))));
  v559 = vqtbl4q_s8(v567, *&STACK[0x3A0]);
  v371 = v66 - v75 - 13;
  v372 = v66 - v75 - 14;
  v373.i64[0] = v65 + v371;
  v373.i64[1] = v65 + v372;
  v374 = vandq_s8(v373, v558);
  v375 = v66 - v75 - 15;
  v376 = v66 - v75 - 16;
  v255.i64[0] = v65 + v375;
  v255.i64[1] = v65 + v376;
  v377 = vandq_s8(v255, v558);
  v378 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL), v565);
  v379 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL), v565);
  v380 = vaddq_s64(vsubq_s64(vorrq_s8(v379, v564), vorrq_s8(v379, v562)), v562);
  v381 = veorq_s8(v380, v561);
  v382 = vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL);
  v383 = vaddq_s64(vsubq_s64(vorrq_s8(v378, v564), vorrq_s8(v378, v562)), v562);
  v384 = veorq_s8(v383, v561);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL);
  v385 = veorq_s8(v380, *&STACK[0x280]);
  v386 = vaddq_s64(v382, v385);
  v387 = vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL);
  v388 = veorq_s8(v383, *&STACK[0x280]);
  v389 = vaddq_s64(v567.val[0], v388);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v388, 3uLL), v388, 0x3DuLL);
  v390 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v389, v389), *&STACK[0x380]), v389), *&STACK[0x260]), v560);
  v391 = veorq_s8(v390, v567.val[0]);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL);
  v392 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v386, v386), *&STACK[0x380]), v386), *&STACK[0x260]), v560);
  v393 = veorq_s8(v392, v387);
  v394 = vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL);
  v395 = vaddq_s64(v567.val[0], v391);
  v396 = vaddq_s64(v394, v393);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL);
  v397 = vsraq_n_u64(vshlq_n_s64(v393, 3uLL), v393, 0x3DuLL);
  v398 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v396, v396), v114), v396), *&STACK[0x270]), v116);
  v399 = veorq_s8(v398, v397);
  v400 = vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL);
  v401 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v395, v395), v114), v395), *&STACK[0x270]), v116);
  v402 = veorq_s8(v401, v567.val[0]);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL);
  v403 = vaddq_s64(v400, v399);
  v404 = vsraq_n_u64(vshlq_n_s64(v399, 3uLL), v399, 0x3DuLL);
  v405 = veorq_s8(vaddq_s64(v567.val[0], v402), v122);
  v406 = veorq_s8(v405, vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL);
  v407 = veorq_s8(v403, v122);
  v408 = veorq_s8(v407, v404);
  v409 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v410 = vaddq_s64(v567.val[0], v406);
  v411 = vaddq_s64(v409, v408);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL);
  v412 = vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL);
  v413 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v411, v411), v131), v411), *&STACK[0x200]), v133);
  v414 = veorq_s8(v413, v412);
  v415 = vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL);
  v416 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v410, v410), v131), v410), *&STACK[0x200]), v133);
  v417 = veorq_s8(v416, v567.val[0]);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL);
  v418 = vaddq_s64(v415, v414);
  v419 = vsraq_n_u64(vshlq_n_s64(v414, 3uLL), v414, 0x3DuLL);
  v420 = vaddq_s64(v567.val[0], v417);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v417, 3uLL), v417, 0x3DuLL);
  v421 = veorq_s8(v420, v140);
  v567.val[0] = veorq_s8(v421, v567.val[0]);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL);
  v422 = veorq_s8(v418, v140);
  v423 = veorq_s8(v422, v419);
  v424 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL), v423);
  v425 = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v246.i64[0] = a9 + v375;
  v246.i64[1] = a9 + v376;
  v426 = vandq_s8(v246, v558);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL);
  v426.i64[0] = a9 + v371;
  v426.i64[1] = a9 + v372;
  v567.val[3] = vandq_s8(v426, v558);
  v567.val[2] = vaddq_s64(v567.val[2], *&STACK[0x3B0]);
  v427 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v567.val[3], 0x38uLL), v567.val[3], 8uLL), *&STACK[0x3B0]);
  v374.i64[0] = -1;
  v374.i64[1] = -1;
  v428 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v427, *&STACK[0x310]), *&STACK[0x330]), veorq_s8(vandq_s8(v427, *&STACK[0x300]), *&STACK[0x210])), v374);
  v567.val[3] = veorq_s8(v428, *&STACK[0x320]);
  v429 = vsraq_n_u64(vshlq_n_s64(v567.val[3], 0x38uLL), v567.val[3], 8uLL);
  v567.val[3] = vsraq_n_u64(vshlq_n_s64(v567.val[0], 3uLL), v567.val[0], 0x3DuLL);
  v567.val[0] = vaddq_s64(v567.val[1], v567.val[0]);
  v567.val[1] = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v567.val[2], *&STACK[0x310]), *&STACK[0x330]), veorq_s8(vandq_s8(v567.val[2], *&STACK[0x300]), *&STACK[0x210])), v374);
  v567.val[2] = veorq_s8(v567.val[1], *&STACK[0x320]);
  v430 = vsraq_n_u64(vshlq_n_s64(v567.val[2], 0x38uLL), v567.val[2], 8uLL);
  v431 = veorq_s8(v428, *&STACK[0x2A0]);
  v432 = vaddq_s64(v429, v431);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL);
  v433 = veorq_s8(v424, *&STACK[0x370]);
  v434 = veorq_s8(v567.val[1], *&STACK[0x2A0]);
  v435 = veorq_s8(vaddq_s64(v430, v434), *&STACK[0x360]);
  v436 = veorq_s8(v435, vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL));
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL);
  v437 = veorq_s8(v567.val[0], *&STACK[0x370]);
  v438 = veorq_s8(v432, *&STACK[0x360]);
  v567.val[0] = veorq_s8(v438, v567.val[2]);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL);
  v439 = vaddq_s64(v567.val[1], v436);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL);
  v440 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v437, v437), *&STACK[0x250]), v437), *&STACK[0x240]), *&STACK[0x230]);
  v441 = veorq_s8(v440, v567.val[3]);
  v567.val[3] = vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL);
  v442 = veorq_s8(vaddq_s64(v567.val[2], v567.val[0]), *&STACK[0x2C0]);
  v567.val[0] = veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v567.val[0], 3uLL), v567.val[0], 0x3DuLL));
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL);
  v443 = veorq_s8(v439, *&STACK[0x2C0]);
  v444 = veorq_s8(v443, v567.val[1]);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL);
  v445 = vaddq_s64(v567.val[2], v567.val[0]);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v567.val[0], 3uLL), v567.val[0], 0x3DuLL);
  v567.val[0] = vaddq_s64(v567.val[1], v444);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v444, 3uLL), v444, 0x3DuLL);
  v446 = veorq_s8(v567.val[0], *&STACK[0x2D0]);
  v567.val[0] = veorq_s8(v446, v567.val[1]);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL);
  v447 = veorq_s8(v445, *&STACK[0x2D0]);
  v448 = veorq_s8(v447, v567.val[2]);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL);
  v449 = vaddq_s64(v567.val[1], v567.val[0]);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v567.val[0], 3uLL), v567.val[0], 0x3DuLL);
  v567.val[0] = vaddq_s64(v567.val[2], v448);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL);
  v450 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v433, v433), *&STACK[0x250]), v433), *&STACK[0x240]), *&STACK[0x230]);
  v451 = veorq_s8(v450, v425);
  v452 = vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL);
  v453 = veorq_s8(v567.val[0], *&STACK[0x350]);
  v567.val[0] = veorq_s8(v453, v567.val[2]);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL);
  v454 = veorq_s8(v449, *&STACK[0x350]);
  v455 = veorq_s8(v454, v567.val[1]);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL);
  v456 = vaddq_s64(v567.val[2], v567.val[0]);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v567.val[0], 3uLL), v567.val[0], 0x3DuLL);
  v457 = vaddq_s64(v452, v451);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL);
  v458 = veorq_s8(vaddq_s64(v567.val[1], v455), *&STACK[0x340]);
  v459 = veorq_s8(v458, v567.val[0]);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL);
  v460 = veorq_s8(v456, *&STACK[0x340]);
  v461 = veorq_s8(v460, v567.val[2]);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL);
  v462 = vaddq_s64(v567.val[3], v441);
  v463 = vaddq_s64(v567.val[0], v459);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL);
  v464 = vaddq_s64(v567.val[1], v461);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL);
  v567.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v457, vandq_s8(vaddq_s64(v457, v457), *&STACK[0x220])), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v373, 3uLL), v258)));
  v465 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v462, vandq_s8(vaddq_s64(v462, v462), *&STACK[0x220])), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v255, 3uLL), v258)));
  v466 = veorq_s8(v464, *&STACK[0x2B0]);
  v467 = veorq_s8(v466, v567.val[1]);
  v468 = vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL);
  v469 = veorq_s8(v463, *&STACK[0x2B0]);
  v470 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL), veorq_s8(v469, v567.val[0]));
  v471 = vaddq_s64(v468, v467);
  v472 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v471, *&STACK[0x290]), vorrq_s8(v471, v563)), v563), *&STACK[0x390]), vnegq_s64(vandq_s8(vshlq_n_s64(v426, 3uLL), v258)));
  v473 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v470, *&STACK[0x290]), vorrq_s8(v470, v563)), v563), *&STACK[0x390]), vnegq_s64(vandq_s8(vshlq_n_s64(v246, 3uLL), v258)));
  v474 = v66 - v75 - 11;
  v475 = v66 - v75 - 12;
  v470.i64[0] = v65 + v474;
  v470.i64[1] = v65 + v475;
  v566.val[3] = veorq_s8(v465, v473);
  v566.val[2] = veorq_s8(v567.val[2], v472);
  v476 = vandq_s8(v470, v558);
  v477 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v565);
  v478 = vaddq_s64(vsubq_s64(vorrq_s8(v477, v564), vorrq_s8(v477, v562)), v562);
  v479 = veorq_s8(v478, v561);
  v480 = veorq_s8(v478, *&STACK[0x280]);
  v481 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v479, 0x38uLL), v479, 8uLL), v480);
  v482 = vsraq_n_u64(vshlq_n_s64(v480, 3uLL), v480, 0x3DuLL);
  v483 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v481, v481), *&STACK[0x380]), v481), *&STACK[0x260]), v560);
  v484 = veorq_s8(v483, v482);
  v485 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), v484);
  v486 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v485, v485), v114), v485), *&STACK[0x270]), v116);
  v487 = veorq_s8(v486, vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL));
  v488 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL), v487), v122);
  v489 = veorq_s8(v488, vsraq_n_u64(vshlq_n_s64(v487, 3uLL), v487, 0x3DuLL));
  v490 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL), v489);
  v491 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v490, v490), v131), v490), *&STACK[0x200]), v133);
  v492 = veorq_s8(v491, vsraq_n_u64(vshlq_n_s64(v489, 3uLL), v489, 0x3DuLL));
  v493 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL), v492), v140);
  v494 = veorq_s8(v493, vsraq_n_u64(vshlq_n_s64(v492, 3uLL), v492, 0x3DuLL));
  v495 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493, 0x38uLL), v493, 8uLL), v494);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v494, 3uLL), v494, 0x3DuLL);
  v493.i64[0] = a9 + v474;
  v493.i64[1] = a9 + v475;
  v496 = vandq_s8(v493, v558);
  v497 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v496, 0x38uLL), v496, 8uLL), *&STACK[0x3B0]);
  v567.val[1].i64[0] = -1;
  v567.val[1].i64[1] = -1;
  v498 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v497, *&STACK[0x310]), *&STACK[0x330]), veorq_s8(vandq_s8(v497, *&STACK[0x300]), *&STACK[0x210])), v567.val[1]);
  v567.val[1] = veorq_s8(v498, *&STACK[0x320]);
  v499 = veorq_s8(v498, *&STACK[0x2A0]);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v499, 3uLL), v499, 0x3DuLL);
  v500 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v567.val[1], 0x38uLL), v567.val[1], 8uLL), v499), *&STACK[0x360]);
  v567.val[1] = veorq_s8(v500, v567.val[2]);
  v501 = veorq_s8(v495, *&STACK[0x370]);
  v502 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v500, 0x38uLL), v500, 8uLL), v567.val[1]), *&STACK[0x2C0]);
  v567.val[1] = veorq_s8(v502, vsraq_n_u64(vshlq_n_s64(v567.val[1], 3uLL), v567.val[1], 0x3DuLL));
  v503 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v502, 0x38uLL), v502, 8uLL), v567.val[1]);
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v567.val[1], 3uLL), v567.val[1], 0x3DuLL);
  v504 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v501, v501), *&STACK[0x250]), v501), *&STACK[0x240]), *&STACK[0x230]);
  v567.val[0] = veorq_s8(v504, v567.val[0]);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v504, 0x38uLL), v504, 8uLL);
  v505 = veorq_s8(v503, *&STACK[0x2D0]);
  v506 = veorq_s8(v505, v567.val[2]);
  v507 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v505, 0x38uLL), v505, 8uLL), v506), *&STACK[0x350]);
  v508 = veorq_s8(v507, vsraq_n_u64(vshlq_n_s64(v506, 3uLL), v506, 0x3DuLL));
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v507, 0x38uLL), v507, 8uLL);
  v509 = vaddq_s64(v567.val[1], v567.val[0]);
  v567.val[1] = vsraq_n_u64(vshlq_n_s64(v508, 3uLL), v508, 0x3DuLL);
  v510 = veorq_s8(vaddq_s64(v567.val[2], v508), *&STACK[0x340]);
  v567.val[0] = veorq_s8(v510, v567.val[1]);
  v511 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v510, 0x38uLL), v510, 8uLL), v567.val[0]), *&STACK[0x2B0]);
  v512 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v511, 0x38uLL), v511, 8uLL), veorq_s8(v511, vsraq_n_u64(vshlq_n_s64(v567.val[0], 3uLL), v567.val[0], 0x3DuLL)));
  v566.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v509, vandq_s8(vaddq_s64(v509, v509), *&STACK[0x220])), *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v470, 3uLL), v258))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v512, *&STACK[0x290]), vorrq_s8(v512, v563)), v563), *&STACK[0x390]), vnegq_s64(vandq_s8(vshlq_n_s64(v493, 3uLL), v258))));
  v513 = v66 - v75 - 9;
  v514 = v66 - v75 - 10;
  v493.i64[0] = v65 + v513;
  v493.i64[1] = v65 + v514;
  v515 = vandq_s8(v493, v558);
  v516 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v515, 0x38uLL), v515, 8uLL), v565);
  v517 = vaddq_s64(vsubq_s64(vorrq_s8(v516, v564), vorrq_s8(v516, v562)), v562);
  v518 = veorq_s8(v517, v561);
  v519 = veorq_s8(v517, *&STACK[0x280]);
  v520 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v518, 0x38uLL), v518, 8uLL), v519);
  v521 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v520, v520), *&STACK[0x380]), v520), *&STACK[0x260]), v560);
  v522 = veorq_s8(v521, vsraq_n_u64(vshlq_n_s64(v519, 3uLL), v519, 0x3DuLL));
  v523 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v521, 0x38uLL), v521, 8uLL), v522);
  v524 = vsraq_n_u64(vshlq_n_s64(v522, 3uLL), v522, 0x3DuLL);
  v525 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v523, v523), v114), v523), *&STACK[0x270]), v116);
  v526 = veorq_s8(v525, v524);
  v527 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v525, 0x38uLL), v525, 8uLL), v526), v122);
  v528 = veorq_s8(v527, vsraq_n_u64(vshlq_n_s64(v526, 3uLL), v526, 0x3DuLL));
  v529 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v527, 0x38uLL), v527, 8uLL), v528);
  v530 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v529, v529), v131), v529), *&STACK[0x200]), v133);
  v531 = veorq_s8(v530, vsraq_n_u64(vshlq_n_s64(v528, 3uLL), v528, 0x3DuLL));
  v532 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v530, 0x38uLL), v530, 8uLL), v531), v140);
  v533 = veorq_s8(v532, vsraq_n_u64(vshlq_n_s64(v531, 3uLL), v531, 0x3DuLL));
  v567.val[1].i64[0] = a9 + v513;
  v567.val[1].i64[1] = a9 + v514;
  v534 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v532, 0x38uLL), v532, 8uLL), v533), *&STACK[0x370]);
  v535 = vsraq_n_u64(vshlq_n_s64(v533, 3uLL), v533, 0x3DuLL);
  v536 = vandq_s8(v567.val[1], v558);
  v537 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v536, 0x38uLL), v536, 8uLL), *&STACK[0x3B0]);
  v567.val[0].i64[0] = -1;
  v567.val[0].i64[1] = -1;
  v538 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v537, *&STACK[0x310]), *&STACK[0x330]), veorq_s8(vandq_s8(v537, *&STACK[0x300]), *&STACK[0x210])), v567.val[0]);
  v567.val[0] = veorq_s8(v538, *&STACK[0x320]);
  v539 = veorq_s8(v538, *&STACK[0x2A0]);
  v540 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v534, v534), *&STACK[0x250]), v534), *&STACK[0x240]), *&STACK[0x230]);
  v567.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v567.val[0], 0x38uLL), v567.val[0], 8uLL), v539), *&STACK[0x360]);
  v541 = veorq_s8(v540, v535);
  v542 = veorq_s8(v567.val[0], vsraq_n_u64(vshlq_n_s64(v539, 3uLL), v539, 0x3DuLL));
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v567.val[0], 0x38uLL), v567.val[0], 8uLL);
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v540, 0x38uLL), v540, 8uLL);
  v543 = veorq_s8(vaddq_s64(v567.val[2], v542), *&STACK[0x2C0]);
  v544 = veorq_s8(v543, vsraq_n_u64(vshlq_n_s64(v542, 3uLL), v542, 0x3DuLL));
  v545 = vaddq_s64(v567.val[0], v541);
  v546 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v543, 0x38uLL), v543, 8uLL), v544), *&STACK[0x2D0]);
  v547 = veorq_s8(v546, vsraq_n_u64(vshlq_n_s64(v544, 3uLL), v544, 0x3DuLL));
  v567.val[2] = vsraq_n_u64(vshlq_n_s64(v546, 0x38uLL), v546, 8uLL);
  v548 = vsubq_s64(v545, vandq_s8(vaddq_s64(v545, v545), *&STACK[0x220]));
  v549 = veorq_s8(vaddq_s64(v567.val[2], v547), *&STACK[0x350]);
  v550 = veorq_s8(v549, vsraq_n_u64(vshlq_n_s64(v547, 3uLL), v547, 0x3DuLL));
  v567.val[0] = vsraq_n_u64(vshlq_n_s64(v550, 3uLL), v550, 0x3DuLL);
  v551 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v549, 0x38uLL), v549, 8uLL), v550), *&STACK[0x340]);
  v552 = veorq_s8(v551, v567.val[0]);
  v553 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v551, 0x38uLL), v551, 8uLL), v552), *&STACK[0x2B0]);
  v554 = vshlq_u64(veorq_s8(vaddq_s64(v548, *&STACK[0x2F0]), *&STACK[0x2E0]), vnegq_s64(vandq_s8(vshlq_n_s64(v493, 3uLL), v258)));
  v555 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v553, 0x38uLL), v553, 8uLL), veorq_s8(v553, vsraq_n_u64(vshlq_n_s64(v552, 3uLL), v552, 0x3DuLL)));
  v566.val[0] = veorq_s8(v554, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v555, *&STACK[0x290]), vorrq_s8(v555, v563)), v563), *&STACK[0x390]), vnegq_s64(vandq_s8(vshlq_n_s64(v567.val[1], 3uLL), v258))));
  v555.i64[0] = v559.i64[0];
  v555.i64[1] = vqtbl4q_s8(v566, *&STACK[0x3A0]).u64[0];
  v556 = vrev64q_s8(v555);
  *(v290 - 15) = veorq_s8(vextq_s8(v556, v556, 8uLL), *(v265 - 15));
  return (*(a65 + 8 * ((7670 * (v75 + 16 == v66)) ^ v74)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v558.i64[0], v558.i64[1], v122.i64[0], v122.i64[1], v114.i64[0], v114.i64[1], v559.i64[0], v559.i64[1], v560.i64[0], v560.i64[1], v561.i64[0], v561.i64[1], a52, a53, v140.i64[0], v140.i64[1], v131.i64[0], v131.i64[1], v258.i64[0], v258.i64[1], v562.i64[0], v562.i64[1], v563.i64[0], v563.i64[1]);
}

uint64_t sub_1000FE850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x380];
  if (LODWORD(STACK[0x380]) == 43491)
  {
    return (*(v3 + 8 * (LODWORD(STACK[0x2E0]) ^ (2021 * (LODWORD(STACK[0x300]) == LODWORD(STACK[0x390]))))))(a1, a2, a3, 16215981);
  }

  if (v4 == 28239)
  {
    return (*(v3 + 8 * ((53 * (((STACK[0x3F8] - 1) ^ (LODWORD(STACK[0xB18]) == ((2 * LODWORD(STACK[0xB18])) & 0x4AB7A8BE))) & 1)) ^ (STACK[0x3F8] - 7308))))();
  }

  v6 = STACK[0x3F8];
  if (v4 == 47633)
  {
    return (*(v3 + 8 * ((7599 * (LODWORD(STACK[0xB00]) == 5 * (STACK[0x3F8] ^ 0x2437) + 197499112)) ^ (STACK[0x3F8] - 7430))))(a1, a2, a3, 16215981);
  }

  v7 = ((1160 * (v6 ^ 0x2425)) ^ 0xF80567) != 16215976;
  return (*(v3 + 8 * (((2 * v7) | (8 * v7)) ^ (v6 - 1052))))(a1, a2, a3, 16215976);
}

uint64_t sub_1000FEB00@<X0>(int a1@<W8>)
{
  v2 = ((a1 + 4862) + 0x32B9C33CFFC0B7DFLL) ^ STACK[0xA00];
  v3 = *(STACK[0x820] + 24);
  v4 = __ROR8__((v3 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (v4 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v6 = (__ROR8__((v4 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v5) ^ 0xE49D77DF873DBF7ELL;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0xF5A2F1B9B5D0B209;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (v10 + v9 - ((2 * (v10 + v9)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x61459D2AF01F24F7;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = *(v1 + 8 * a1);
  v17 = (((v15 + v14) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v15 + v14) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v18 = v17 ^ __ROR8__(v14, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x1A2AEBE44253AF03;
  v20 = __ROR8__(v19, 8);
  v21 = __ROR8__(v18, 61);
  v3[10] = (((((2 * (v20 + (v19 ^ v21))) | 0xC38C36871CFCF294) - (v20 + (v19 ^ v21)) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v3 + 10) & 7u))) ^ HIBYTE(v2) ^ 0x75;
  v22 = __ROR8__((v3 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = v22 - ((2 * v22 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v24 = v23 ^ 0xD3FC8BFDA5C15E5;
  v23 ^= 0xA5792D2843AA64B9;
  v25 = __ROR8__(v24, 8);
  v26 = (((2 * (v25 + v23)) & 0x172EA68DBB7EC94) - (v25 + v23) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v27 = v26 ^ __ROR8__(v23, 61);
  v28 = __ROR8__(v26, 8);
  v29 = __ROR8__((((2 * (v28 + v27)) & 0xD4F2B43A3958542) - (v28 + v27) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57, 8);
  v30 = (((2 * (v28 + v27)) & 0xD4F2B43A3958542) - (v28 + v27) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30) ^ 0x5963B6C555D97F1FLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((v33 + v32) | 0x3A57A17B6EDF06BLL) - ((v33 + v32) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((v38 + v37) | 0x3F31863D75651161) - ((v38 + v37) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v3[11] = (((((2 * (v41 + v40)) | 0xAB41BFF64D60CE6CLL) - (v41 + v40) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v3 + 11) & 7u))) ^ BYTE6(v2) ^ 0x30;
  v42 = (__ROR8__((v3 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v43 = __ROR8__(v42 ^ 0x4DE9423B6F16E7D2, 8);
  v42 ^= 0xE5AFA7ACF6E0968ELL;
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((v46 + v45) | 0x2D1013F9AFD52057) - ((v46 + v45) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x5963B6C555D97F1FLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x64C31C027084DE6CLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x1A2AEBE44253AF03;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v3[12] = (((((2 * (v58 + v57)) & 0xA6AF603E61524BD2) - (v58 + v57) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v3 + 12) & 7u))) ^ BYTE5(v2) ^ 0x26;
  v59 = __ROR8__((v3 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = ((2 * (v59 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v59 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v61 = v60 ^ 0x1780DE40BC839FA3;
  v60 ^= 0xBFC63BD72575EEFFLL;
  v62 = __ROR8__(v61, 8);
  v63 = (((v62 + v60) | 0x524D786A2DAA5236) - ((v62 + v60) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v64 = v63 ^ __ROR8__(v60, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) | 0xC461725543BD74EALL) - (v65 + v64) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x5963B6C555D97F1FLL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x61459D2AF01F24F7;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((v72 + v71) | 0xD6A77E9273FF605BLL) - ((v72 + v71) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (v75 + v74 - ((2 * (v75 + v74)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v3[13] = (((__ROR8__(v76, 8) + (v76 ^ __ROR8__(v74, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 13) & 7u))) ^ BYTE4(v2) ^ 0x9B;
  v77 = __ROR8__((v3 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v78 = v77 - ((2 * v77 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v79 = v78 ^ 0x59C38B8127975FAELL;
  v78 ^= 0xF1856E16BE612EF2;
  v80 = (__ROR8__(v79, 8) + v78) ^ 0xE49D77DF873DBF7ELL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xF5A2F1B9B5D0B209;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x5963B6C555D97F1FLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = __ROR8__((v86 + v85 - ((2 * (v86 + v85)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL, 8);
  v88 = (v86 + v85 - ((2 * (v86 + v85)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL ^ __ROR8__(v85, 61);
  v89 = (v87 + v88 - ((2 * (v87 + v88)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x1A2AEBE44253AF03;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v3[14] = (((((v93 + v92) | 0x6B6AF9C6B406ECE7) - ((v93 + v92) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v3 + 14) & 7u))) ^ BYTE3(v2) ^ 0xB0;
  v94 = __ROR8__((v3 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v95 = ((v94 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v94 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v94 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v96 = v95 ^ 0x8A84C36C7E52240;
  v95 ^= 0xA0EEA9A15E13531CLL;
  v97 = (__ROR8__(v96, 8) + v95) ^ 0xE49D77DF873DBF7ELL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0xF5A2F1B9B5D0B209;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = __ROR8__(v99, 8);
  v102 = __ROR8__((((2 * (v101 + v100)) & 0x7EC0B560615BD22) - (v101 + v100) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71, 8);
  v103 = (((2 * (v101 + v100)) & 0x7EC0B560615BD22) - (v101 + v100) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71 ^ __ROR8__(v100, 61);
  v104 = (((v102 + v103) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v102 + v103) ^ 0xFE51A922A5729599) - (((v102 + v103) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) | 0x81910D2EFE6F15ACLL) - (v106 + v105) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((v109 + v108) | 0x452FEAF2D8983268) - ((v109 + v108) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v3[15] = (((v112 + v111 - ((2 * (v112 + v111)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v3 + 15) & 7u))) ^ BYTE2(v2) ^ 0x93;
  v113 = __ROR8__((v3 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v114 = -2 - (((0x6AF7234D0CC131D4 - v113) | 0xB9373BCC9E95648DLL) + ((v113 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v115 = v114 ^ 0xF0DE79F7F183835FLL;
  v114 ^= 0x58989C606875F203uLL;
  v116 = (__ROR8__(v115, 8) + v114) ^ 0xE49D77DF873DBF7ELL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0xF5A2F1B9B5D0B209;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0x5963B6C555D97F1FLL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (((2 * (v122 + v121)) & 0x24C3B6EDA515D42ALL) - (v122 + v121) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (((v125 + v124) | 0x3A521DF821A27A3ELL) - ((v125 + v124) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0x1A2AEBE44253AF03;
  v129 = __ROR8__(v128, 8);
  v130 = __ROR8__(v127, 61);
  LOBYTE(v127) = (((((2 * (v129 + (v128 ^ v130))) | 0x4D724CAE0D8F11E6) - (v129 + (v128 ^ v130)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2uLL) >> (8 * ((v3 + 16) & 7u))) ^ BYTE1(v2) ^ 0x97;
  v131 = __ROR8__((v3 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v3[16] = v127;
  v132 = ((2 * ((v131 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v131 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v133 = v132 ^ 0xDE90BDF0289CA71;
  v132 ^= 0xA5AFEE489B7FBB2DLL;
  v134 = __ROR8__(v133, 8);
  v135 = (((2 * (v134 + v132)) | 0x692CEF71A0CBBC0ELL) - (v134 + v132) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v136 = v135 ^ __ROR8__(v132, 61);
  v137 = __ROR8__(v135, 8);
  v138 = __ROR8__((((2 * (v137 + v136)) & 0xFD81E0C09A12569ALL) - (v137 + v136) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v139 = (((2 * (v137 + v136)) & 0xFD81E0C09A12569ALL) - (v137 + v136) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v136, 61);
  v140 = (v138 + v139) ^ 0x5963B6C555D97F1FLL;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0x61459D2AF01F24F7;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (v144 + v143 - ((2 * (v144 + v143)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (v147 + v146 - ((2 * (v147 + v146)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v3[17] = (((__ROR8__(v148, 8) + (v148 ^ __ROR8__(v146, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 17) & 7u))) ^ v2 ^ 8;
  return v16();
}

void sub_1000FFAAC(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1000928CCLL);
}

uint64_t sub_1000FFACC@<X0>(int a1@<W3>, int a2@<W8>)
{
  v4 = 3 * (a2 ^ 0x1942);
  v5 = STACK[0x6E8];
  v6 = STACK[0x724];
  LODWORD(STACK[0x7F0]) = a1 != v2;
  LODWORD(STACK[0x9AC]) = 0;
  STACK[0x618] = 0;
  LODWORD(STACK[0x7A4]) = 0;
  STACK[0x688] = 0;
  LODWORD(STACK[0x964]) = 197499219;
  STACK[0x930] = 0;
  STACK[0x928] = 0;
  if (v5)
  {
    v7 = v6 == ((v4 + 937279116) & 0xC8222BFD ^ 0xBC59AA6);
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v3 + 8 * ((v8 * (((v4 - 3427) | 0x13) ^ 0xC1C)) ^ v4)))();
}

uint64_t sub_1000FFAF8()
{
  STACK[0x878] = 0;
  v2 = STACK[0x640];
  v3 = STACK[0x9F0];
  STACK[0x3D8] = *(v1 + 8 * (v0 - 5424));
  LODWORD(STACK[0xA24]) = v3;
  STACK[0xA28] = &STACK[0x878];
  return (*(v1 + 8 * (((v2 != 0) * (((((v0 ^ 0x3137) - 7361) | 0x1406) - 1552) ^ 0x15FB)) ^ v0 ^ 0x3137)))();
}

uint64_t sub_1000FFB24()
{
  STACK[0x618] = STACK[0x738];
  LODWORD(STACK[0x7A4]) = STACK[0x6F8];
  LODWORD(STACK[0x960]) = 16257999;
  STACK[0x8E8] = *(v1 + 8 * (((v0 - 1382) | 0x2000) - 9071));
  return sub_100166B64();
}

uint64_t sub_1000FFBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char *a17, int a18, unsigned int a19)
{
  a19 = v19 + 1317436891 * (((&a17 | 0x7AED0205) - &a17 + (&a17 & 0x8512FDF8)) ^ 0xCAEE9A73) + 6633;
  a17 = &a16;
  v23 = (*(v20 + 8 * (v19 ^ 0x2054)))(&a17);
  return (*(v20 + 8 * ((974 * ((((v19 ^ 0xF3) - v22 + 1) ^ (a18 == v21)) & 1)) ^ v19)))(v23);
}

uint64_t sub_1000FFD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15, char a16, int a17, uint64_t a18, char *a19, unsigned int a20, char *a21)
{
  v24 = v21 + 27;
  a18 = a11;
  a19 = &a16;
  a21 = &a13;
  a20 = (v24 - 1994) ^ (1710126949 * (((&a17 | 0x3F2DF633) - &a17 + (&a17 & 0xC0D209C8)) ^ 0xD36ADA3));
  (*(v22 + 8 * (v24 + 4255)))(&a17);
  LODWORD(a19) = v24 - 2008441969 * (&a17 ^ 0x4899540E) + 333;
  a18 = a11;
  v25 = (*(v22 + 8 * (v24 + 4299)))(&a17);
  return (*(v22 + 8 * (((a17 == (((v24 ^ 0x3485) - 919835238) & 0x36D37FF7 ^ (v23 + 2649))) * ((v24 ^ 0x3485) - 7424)) ^ v24 ^ 0x3485)))(v25);
}

uint64_t sub_1000FFE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFADDLL ^ (v4 - 5841)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((14887 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1000FFF28@<X0>(uint64_t a1@<X8>)
{
  v5 = (a1 + v1 - 16);
  v6 = (v3 + v1 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((467 * ((((v2 ^ 0x4C) - 50) ^ ((v1 & 0xFFFFFFE0) == 32)) & 1)) ^ ((v2 ^ 0x354C) - 7618))))();
}

uint64_t sub_1000FFFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = v15 - 1;
  v23 = STACK[0x390] + v22;
  v24 = a4 + v22 + a1;
  v25 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8) + a5;
  v26 = __ROR8__(v25 ^ v13, 8);
  v27 = v25 ^ a3;
  v28 = (v26 + v27) ^ v17;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) | 0x444F902103838ADELL) - (v30 + v29) + 0x5DD837EF7E3E3A91) ^ 0x578539A934117766;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v16;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ a8;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8) + v36;
  v38 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = v38 - ((2 * v38 + 0x5B38AD8DDB3A7C5CLL) & 0x89E752B3FB5DDBECLL) + 0x72900020EB4C2C24;
  v41 = v40 ^ 0xCF99C25E83E78D67;
  v40 ^= 0xA37B7469EF0E7C16;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0xFB9714BECA2C68E9;
  v43 = __ROR8__(v42, 8);
  v44 = v42 ^ __ROR8__(v40, 61);
  v45 = (((2 * v37) | 0x953D53DE148E1D56) - v37 - 0x4A9EA9EF0A470EABLL) ^ 0x2E5DB5ED7AC3D0C7;
  v46 = v45 ^ __ROR8__(v36, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = (((2 * (v43 + v44)) | 0x5ABE700122B28302) - (v43 + v44) - 0x2D5F380091594181) ^ 0x90D044FD8F5ED69ALL;
  v49 = v48 ^ __ROR8__(v44, 61);
  v50 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  v51 = __ROR8__(v48, 8);
  v52 = (v10 - ((v51 + v49) | v10) + ((v51 + v49) | 0xA11B1487180DD3BBLL)) ^ v19;
  v53 = v52 ^ __ROR8__(v49, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (v54 + v53 - (v21 & (2 * (v54 + v53))) + a2) ^ a6;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (v57 + v56 - (v11 & (2 * (v57 + v56))) + v8) ^ v12;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ a7;
  *v24 = (((__ROR8__(v60, 8) + (v60 ^ __ROR8__(v59, 61))) ^ v18) >> (8 * (v24 & 7u))) ^ (((v9 - (v50 | v9) + (v50 | v14)) ^ 0xE1F014810C505D35) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v20 + 8 * ((108 * (v22 == 0)) ^ (STACK[0x3B0] - 1944))))(a1);
}

uint64_t sub_100100304@<X0>(int a1@<W8>)
{
  v2 = STACK[0x538];
  STACK[0x4D0] = *(v1 + 8 * a1);
  return sub_1001B37C4(v2);
}

uint64_t sub_100100480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5 + 40 * v4 + 28);
  switch(v7)
  {
    case 1:
      v9 = STACK[0x5B0];
      STACK[0x6B8] = *(a4 + 8 * (v6 - 4895));
      return sub_100197468(a4, v9);
    case 3:
      return (*(a4 + 8 * (((*(v5 + 40 * v4 + 16) == 0) * ((v6 - 1302) ^ 0xF80)) ^ (v6 - 1788))))();
    case 2:
      return (*(a4 + 8 * (((STACK[0x5B0] == 0) * (89 * (v6 ^ 0x1466) - 90)) ^ (v6 + 3853))))();
    default:
      return (STACK[0x4A0])();
  }
}

uint64_t sub_100100598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  if (!a15 || a15 == -42052)
  {
    return (*(v15 + 8 * ((254 * (a14 == 0)) ^ 0x217B)))();
  }

  else
  {
    return sub_10010060C();
  }
}

uint64_t sub_10010060C()
{
  v3 = (v1 + v0 + 111) | 0x1406;
  v9 = v7;
  v10 = (v3 + 3059) ^ (1824088897 * ((2 * (&v8 & 0x288C37B0) - &v8 + 1467205707) ^ 0xF1A1B29));
  (*(v2 + 8 * (v3 + 4325)))(&v8);
  v10 = (v3 + 3059) ^ (1824088897 * (&v8 ^ 0x5869D362));
  v9 = v5;
  (*(v2 + 8 * (v3 + 4325)))(&v8);
  return (v6 ^ 0x6DFD77FF) - 1829069872 + ((v6 << (((v1 + v0 + 111) | 6) + 90)) & 0xDBFAEFFE) - 16257999;
}

uint64_t sub_100100748(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x9D8] = v2 ^ 0xBC59953u;
  *(a1 + 16) = ((((v1 - 4798) ^ 0x948A6E1A) + (v2 ^ 0x6B7591C5)) ^ ((v2 ^ 0xA58EBBC5) + 1517372475) ^ ((v2 ^ 0xC53EA736 ^ ((v1 - 4798) | 0x1444)) + 985746605)) + 197499229;
  v5 = (*(v3 + 8 * (v1 ^ 0x377D)))();
  *(a1 + 24) = v5;
  return (*(v3 + 8 * ((430 * (v5 != 0)) ^ v1)))();
}

uint64_t sub_100100824@<X0>(int a1@<W8>)
{
  STACK[0x668] = v1;
  v3 = *v1;
  STACK[0x548] = *v1;
  return (*(v2 + 8 * ((45 * (((a1 ^ (v3 == 0)) & 1) == 0)) ^ a1)))();
}

uint64_t sub_10010085C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X5>, int a6@<W8>)
{
  v14 = __ROR8__((a5 + v6 + 9) & (a6 ^ a2 ^ a3), 8);
  v15 = v14 - ((2 * v14 + 0x2A11B965E67D9C56) & v8) + v9;
  v16 = v15 ^ v10;
  v17 = v15 ^ v11;
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xE49D77DF873DBF7ELL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xF5A2F1B9B5D0B209;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x5963B6C555D97F1FLL;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = ((v12 & (2 * (v23 + v24))) - (v23 + v24) + v13) ^ a1;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x64C31C027084DE6CLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x1A2AEBE44253AF03;
  *(a5 + v6 + 9) = (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v28, 61))) ^ 0xAB3042D228875C41) >> (8 * ((a5 + v6 + 9) & 7))) ^ *(v7 + a5 - 1);
  return (*(STACK[0x3E8] + 8 * (((a5 != 1) * a4) ^ a6)))();
}

uint64_t sub_100100864@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v10 = v6 + 32;
  v11 = (v8 ^ v10) + v4;
  v12 = *(a3 + v11 - 15);
  v13 = *(a3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 == v10) * a2) ^ (v5 + v3))))();
}

uint64_t sub_1001008C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, char *a15, unsigned int a16, unsigned int a17)
{
  v21 = (&a12 ^ 0x5869D362) * v19;
  a13 = v21 + 838353487;
  a16 = -654855621 - v21;
  a17 = v21 + v18 + 1674574882;
  a14 = a9;
  a15 = &a10;
  v22 = (*(v17 + 8 * (v18 + 5376)))(&a12);
  return (*(v17 + 8 * ((13114 * (a12 == ((v18 + 345587186) & 0x3F9D ^ (v20 + 2568)))) ^ v18)))(v22);
}

uint64_t sub_100100A28(int a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, int a9, int a10, char a11, int a12, int a13, int a14, int a15, int a16, int a17, int a18, int a19, int a20)
{
  v26 = a4 ^ 0xCFAF1F65 ^ (a3 + 1622038966);
  v27 = (LODWORD(STACK[0x538]) - 109828891) & 0x68BCFCC;
  v28 = a3 - 230019507 + v27;
  v29 = (a6 ^ a5) - 1391820991;
  v30 = (v29 ^ (v20 - 1911846264)) - 7642611;
  v31 = (v23 ^ a1) - 1391820991;
  v32 = v31 ^ (v22 - 1911846264);
  v33 = (v24 ^ 0xCFAF1F65 ^ (v21 + 1622038966)) + 101452214;
  LODWORD(STACK[0x58C]) = v25;
  LODWORD(STACK[0x5B0]) = v27;
  v34 = (v27 + 1445384224) & 0xA9D9379B;
  v35 = (v27 + 588) | 0xA63;
  v36 = v21 - 1189757725;
  LODWORD(STACK[0x590]) = v35;
  v37 = ((v36 & 0x92F1E256) << (v35 - 122)) & (v36 ^ 0x50EDD255) ^ v36 & 0x92F1E256;
  LODWORD(STACK[0x310]) = v34;
  v38 = (((v36 ^ 0x500C96D5) << (v34 + 121)) ^ 0x85FAE906) & (v36 ^ 0x500C96D5) ^ ((v36 ^ 0x500C96D5) << (v34 + 121)) & 0xC2FD7482;
  v39 = v38 ^ 0x42051481;
  v40 = (v38 ^ 0x80C80400) & (4 * v37) ^ v37;
  v41 = ((4 * v39) ^ 0xBF5D20C) & v39 ^ (4 * v39) & 0xC2FD7480;
  v42 = v40 ^ 0xC2FD7483 ^ (v41 ^ 0x2F55000) & (16 * v40);
  v43 = (16 * (v41 ^ 0xC0082483)) & 0xC2FD7480 ^ 0xC0283483 ^ ((16 * (v41 ^ 0xC0082483)) ^ 0x2FD74830) & (v41 ^ 0xC0082483);
  v44 = (v42 << 8) & 0xC2FD7400 ^ v42 ^ ((v42 << 8) ^ 0xFD748300) & v43;
  v45 = v36 ^ (2 * ((v44 << 16) & 0x42FD0000 ^ v44 ^ ((v44 << 16) ^ 0x74830000) & ((v43 << 8) & 0x42FD0000 ^ 0x2890000 ^ ((v43 << 8) ^ 0x7D740000) & v43)));
  v46 = (((v28 + 1878716015) ^ 0x366E23A) - 358312309) ^ (v28 + 1878716015) ^ (((v28 + 1878716015) ^ 0x21B49B65) - 931729450) ^ (((v28 + 1878716015) ^ 0x4B380DEF) - 1560643232) ^ (((v28 + 1878716015) ^ 0x7FD7FFFF) - 1776972976) ^ v31;
  v47 = (v45 & 0x749DF3 ^ 0xEDE41EE5) & (v45 & 0x749DF3 ^ 0xEDE12B54) ^ v45 & 0x708842;
  v48 = v30 + 768410505 + (((v47 ^ 0xE47C45CF) + 913211382) ^ ((v47 ^ 0xD04C5EA8) + 39740563) ^ ((v47 ^ 0xD9A48CD0) + 196523755));
  v49 = (v48 ^ 0x100C4EED) & (2 * (v48 & 0x92AC4EE9)) ^ v48 & 0x92AC4EE9;
  v50 = ((2 * (v48 ^ 0x1554C7AD)) ^ 0xFF11288) & (v48 ^ 0x1554C7AD) ^ (2 * (v48 ^ 0x1554C7AD)) & 0x87F88944;
  v51 = v50 ^ 0x80088944;
  v52 = (v50 ^ 0x7F00000) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0x1FE22510) & v51 ^ (4 * v51) & 0x87F88944;
  v54 = v52 ^ 0x87F88944 ^ (v53 ^ 0x7E00100) & (16 * v52);
  v55 = (16 * (v53 ^ 0x80188844)) & 0x87F88940 ^ 0x80700904 ^ ((16 * (v53 ^ 0x80188844)) ^ 0x7F889440) & (v53 ^ 0x80188844);
  v56 = (v54 << 8) & 0x87F88900 ^ v54 ^ ((v54 << 8) ^ 0xF8894400) & v55;
  v57 = v48 ^ v45 ^ v29 ^ (2 * ((v56 << 16) & 0x7F80000 ^ v56 ^ ((v56 << 16) ^ 0x9440000) & ((v55 << 8) & 0x7F80000 ^ 0x7700000 ^ ((v55 << 8) ^ 0x78890000) & v55)));
  v58 = ((v46 ^ v32 ^ 0xBB1191F1) - 1238922676) ^ ((v46 ^ v32 ^ 0x31DC6C7) + 237755774) ^ ((v46 ^ v32 ^ 0xAE31DC79) - 1559771196);
  v59 = ((v45 ^ v29 ^ 0xF9D9EE06) - 12844013) ^ ((v45 ^ v29 ^ 0x3949A059) + 1068255822) ^ ((v45 ^ v29 ^ 0xD671450F) - 795562212);
  v60 = ((v57 ^ 0x6A6DADA6) - 878070156) ^ ((v57 ^ 0x6A3A5B27) - 872529677) ^ ((v57 ^ 0x887BA1B0) + 700430950);
  v61 = ((v46 ^ 0x4186850A) + 1461755668) ^ ((v46 ^ 0x1C5DFA51) + 184279113) ^ ((v46 ^ 0x4BE6F414) + 1564536334);
  v62 = v33 - v59;
  v63 = (((v45 ^ v29 ^ 0xBB1A49A) + 223628943) ^ ((v45 ^ v29 ^ 0xE97E1674) - 274989983) ^ ((v45 ^ v29 ^ 0xF42EB9BE) - 221555797)) - 248572398;
  v64 = ((v63 ^ 0x56596B29) - 1073670983) ^ v63 ^ ((v63 ^ 0x1D70921A) - 1960252020) ^ ((v63 ^ 0x5D5586E2) - 888276620) ^ ((v63 ^ 0x7FDBFFBF) - 377257937);
  v65 = (((v33 - v59 - 1884338700) ^ 0x7FB2B3BE) - 2036169037) ^ (v33 - v59 - 1884338700) ^ (((v33 - v59 - 1884338700) ^ 0x9DDCD439) + 1691148598) ^ (((v33 - v59 - 1884338700) ^ 0x13FE5A9B) - 353472616) ^ (((v33 - v59 - 1884338700) ^ 0xF77FF7EF) + 242205412) ^ v64;
  v66 = (((v65 ^ 0x98429D74) + 977998813) ^ ((v65 ^ 0x840FF442) + 637958891) ^ ((v65 ^ 0x730523AB) - 787698428)) + 1363840435;
  v67 = v26 - v61;
  v68 = (((v46 ^ 0x27A2565A) + 822365252) ^ ((v46 ^ 0x68ADE18F) + 2114714519) ^ ((v46 ^ 0x59323C9A) + 1335109252)) - 793212428;
  v69 = ((v68 ^ 0xAE327CDD) + 1745495873) ^ v68 ^ ((v68 ^ 0x55B51BA9) - 1819459531) ^ ((v68 ^ 0xF4BF3CE9) + 847734645) ^ ((v68 ^ 0x36FFFFFF) - 255351709);
  v70 = (((v26 - v61 - 1702374221) ^ 0x47055206) - 1545653740) ^ (v26 - v61 - 1702374221) ^ (((v26 - v61 - 1702374221) ^ 0x59A087C1) - 1116018731) ^ (((v26 - v61 - 1702374221) ^ 0x6A7D95D2) - 1901595192) ^ (((v26 - v61 - 1702374221) ^ 0x6FFDDFFF) - 1960329237) ^ v69;
  v71 = (((v70 ^ 0xFC2F3467) - 460407778) ^ ((v70 ^ 0xEC194CC8) - 189217613) ^ ((v70 ^ 0x32D44327) + 712362846)) - 839222108;
  v72 = (((v45 ^ 0x394B94BD) - 771202719) ^ ((v45 ^ 0x5CE8AA32) - 1213505552) ^ ((v45 ^ 0x734235DF) - 1744715773)) - v59 + v66 + 1317713721 + v60;
  v73 = v28 - v61 + v58 - 649347015 + v71;
  v74 = v28 - 931675903 + v71;
  v75 = (v74 ^ 0xE2CA6422) & (2 * (v74 & 0xC3088834)) ^ v74 & 0xC3088834;
  v76 = ((2 * (v74 ^ 0x62CB744A)) ^ 0x4387F8FC) & (v74 ^ 0x62CB744A) ^ (2 * (v74 ^ 0x62CB744A)) & 0xA1C3FC7E;
  v77 = v76 ^ 0xA0400402;
  v78 = (v76 ^ 0x26070) & (4 * v75) ^ v75;
  v79 = ((4 * v77) ^ 0x870FF1F8) & v77 ^ (4 * v77) & 0xA1C3FC7C;
  v80 = (v79 ^ 0x8103F060) & (16 * v78) ^ v78;
  v81 = ((16 * (v79 ^ 0x20C00C06)) ^ 0x1C3FC7E0) & (v79 ^ 0x20C00C06) ^ (16 * (v79 ^ 0x20C00C06)) & 0xA1C3FC70;
  v82 = v81 ^ 0xA1C0381E;
  v83 = v80 ^ 0xA1C3FC7E ^ (v81 ^ 0x3C400) & (v80 << 8);
  v84 = (((v45 ^ 0x8CCA9761) + 1737056957) ^ ((v45 ^ 0x5BE66358) - 1331325306) ^ ((v45 ^ 0xC1CDFF69) + 713951925)) + 1760022645 + v66;
  v85 = (2 * (v72 & 0xEAD50171)) & (v72 ^ 0xE2535DEB) ^ v72 & 0xEAD50171 ^ ((2 * (v72 & 0xEAD50171)) & 0x820082 | 0x8004010);
  v86 = (2 * (v72 ^ 0xE2535DEB)) & 0x8865C9A ^ 0x882448A ^ ((2 * (v72 ^ 0xE2535DEB)) ^ 0x110CB934) & (v72 ^ 0xE2535DEB);
  v87 = (4 * v85) & 0x8865C98 ^ v85 ^ ((4 * v85) ^ 0x20010040) & v86;
  v88 = (4 * v86) & 0x8865C98 ^ 0x8860C92 ^ ((4 * v86) ^ 0x22197268) & v86;
  v89 = (16 * v87) & 0x8865C90 ^ v87 ^ ((16 * v87) ^ 0x80040100) & v88;
  v90 = (16 * v88) & 0x8865C90 ^ 0x82141A ^ ((16 * v88) ^ 0x8865C9A0) & v88;
  v91 = v89 ^ 0x820C8A ^ (v89 << 8) & 0x8865C00 ^ ((v89 << 8) ^ 0x4401000) & v90;
  v92 = ((v84 ^ 0x78446E8) - 1284656296) ^ v84 ^ ((v84 ^ 0x5872DC85) - 325375685) ^ ((v84 ^ 0x6B0FEFD0) - 538568080) ^ ((v84 ^ 0x7FEF7FFD) - 888763837) ^ v72 ^ (2 * ((v91 << 16) & 0x8860000 ^ v91 ^ ((v91 << 16) ^ 0x5C9A0000) & ((v90 << 8) & 0x8860000 ^ 0x8820000 ^ ((v90 << 8) ^ 0x65C0000) & v90)));
  v93 = (((v62 + 787822547) ^ 0xB5875A8B) + 1202139283) ^ (v62 + 787822547) ^ (((v62 + 787822547) ^ 0x4CCB01E1) - 1091867655) ^ (((v62 + 787822547) ^ 0x36CB151) - 246621367) ^ (((v62 + 787822547) ^ 0xF7FF7FDD) + 98506181) ^ v92 ^ 0x1D0DAB30;
  v94 = v67 + 673007617;
  v95 = (((v64 ^ 0x9CCA0207) - 1466231110) ^ ((v64 ^ 0xAF2F0B69) - 1686233128) ^ ((v64 ^ 0x2433F8CD) + 274918516)) - v62 - 665743606;
  v96 = v72 + v95;
  v97 = (v72 + v95) ^ 0xA19BD1C5;
  v98 = ((v72 + v95) ^ 0xA9D1C35D) & (2 * ((v72 + v95) & 0xCDE5EB5C)) ^ (v72 + v95) & 0xCDE5EB5C;
  v99 = ((2 * v97) ^ 0xD8FC7532) & v97 ^ (2 * v97) & 0x6C7E3A98;
  v100 = v99 ^ 0x24020A89;
  v101 = (v99 ^ 0x483C3010) & (4 * v98) ^ v98;
  v102 = ((4 * v100) ^ 0xB1F8EA64) & v100 ^ (4 * v100) & 0x6C7E3A98;
  v103 = (v102 ^ 0x20782A19) & (16 * v101) ^ v101;
  v104 = ((16 * (v102 ^ 0x4C061099)) ^ 0xC7E3A990) & (v102 ^ 0x4C061099) ^ (16 * (v102 ^ 0x4C061099)) & 0x6C7E3A90;
  v105 = v103 ^ 0x6C7E3A99 ^ (v104 ^ 0x44622800) & (v103 << 8);
  v106 = v96 ^ (2 * ((v105 << 16) & 0x6C7E0000 ^ v105 ^ ((v105 << 16) ^ 0x3A990000) & (((v104 ^ 0x281C1209) << 8) & 0x6C7E0000 ^ 0x440000 ^ (((v104 ^ 0x281C1209) << 8) ^ 0x7E3A0000) & (v104 ^ 0x281C1209))));
  v107 = (((v69 ^ 0xD43D4E26) + 599935439) ^ ((v69 ^ 0x200FFDA4) - 672073139) ^ ((v69 ^ 0xB384662D) + 1148936646)) - v67 + 1395375508;
  v108 = v106 ^ v92 ^ 0x1D0DAB30;
  v109 = ((v92 ^ 0x1CEA193E) - 31961614) ^ ((v92 ^ 0xDCE60D67) + 1041521065) ^ ((v92 ^ 0x61C7A65C) - 2093616492);
  v110 = (((v108 ^ 0x824A5B8C) - 247424178) ^ ((v108 ^ 0xAA2E8B55) - 651932779) ^ ((v108 ^ 0xD18B5782) - 1568565436)) - v109 - 1503851279;
  v111 = (v110 ^ 0x93560959) & (2 * (v110 & 0xDB861262)) ^ v110 & 0xDB861262;
  v112 = ((2 * (v110 ^ a20)) ^ 0x9BA87776) & (v110 ^ a20) ^ (2 * (v110 ^ a20)) & 0xCDD43BBA;
  v113 = v112 ^ 0x44540889;
  v114 = (v112 ^ 0x88001310) & (4 * v111) ^ v111;
  v115 = ((4 * v113) ^ 0x3750EEEC) & v113 ^ (4 * v113) & 0xCDD43BB8;
  v116 = (v115 ^ 0x5502AA0) & (16 * v114) ^ v114;
  v117 = ((16 * (v115 ^ 0xC8841113)) ^ 0xDD43BBB0) & (v115 ^ 0xC8841113) ^ (16 * (v115 ^ 0xC8841113)) & 0xCDD43BB0;
  v118 = v116 ^ 0xCDD43BBB ^ (v117 ^ 0xCD403B00) & (v116 << 8);
  v119 = (v118 << 16) & 0x4DD40000 ^ v118 ^ ((v118 << 16) ^ 0x3BBB0000) & (((v117 ^ 0x94000B) << 8) & 0xCDD40000 ^ 0x9C40000 ^ (((v117 ^ 0x94000B) << 8) ^ 0xD43B0000) & (v117 ^ 0x94000B));
  v120 = (v73 ^ 0xAC31C66B) & (2 * (v73 & 0xCD35E772)) ^ v73 & 0xCD35E772;
  v121 = ((2 * (v73 ^ 0xA43388AB)) ^ 0xD20CDFB2) & (v73 ^ 0xA43388AB) ^ (2 * (v73 ^ 0xA43388AB)) & 0x69066FD8;
  v122 = v121 ^ 0x29022049;
  v123 = (v121 ^ 0x40040F91) & (4 * v120) ^ v120;
  v124 = ((4 * v122) ^ 0xA419BF64) & v122 ^ (4 * v122) & 0x69066FD8;
  v125 = (v124 ^ 0x20002F40) & (16 * v123) ^ v123;
  v126 = ((16 * (v124 ^ 0x49064099)) ^ 0x9066FD90) & (v124 ^ 0x49064099) ^ (16 * (v124 ^ 0x49064099)) & 0x69066FD0;
  v127 = v125 ^ 0x69066FD9 ^ (v126 ^ 0x66D49) & (v125 << 8);
  v128 = v74 ^ v73 ^ (2 * (v127 ^ v83 ^ (v83 << 16) & 0x21C30000 ^ (v127 << 16) & 0x69060000 ^ ((v127 << 16) ^ 0x6FD90000) & (((v126 ^ 0x69000249) << 8) & 0x69060000 ^ 0x69000000 ^ (((v126 ^ 0x69000249) << 8) ^ 0x66F0000) & (v126 ^ 0x69000249)) ^ ((v83 << 16) ^ 0x7C7E0000) & ((v82 << 8) & 0x21C30000 ^ 0x20030000 ^ ((v82 << 8) ^ 0x43FC0000) & v82)));
  v129 = ((v94 ^ 0x2EB49CA7) - 1053847787) ^ v94 ^ ((v94 ^ 0x38914DAB) - 687186407) ^ ((v94 ^ 0x7EBAE0BF) - 1860046067) ^ ((v94 ^ 0x78FBDDFF) - 1755263411) ^ v128 ^ 0x7B8830B1;
  v130 = v73 + v107;
  v131 = (v130 ^ 0xB9F7FBD8) & (2 * (v130 & 0xB207FBE1)) ^ v130 & 0xB207FBE1;
  v132 = ((2 * (v130 ^ 0xB9F9085A)) ^ 0x17FDE776) & (v130 ^ 0xB9F9085A) ^ (2 * (v130 ^ 0xB9F9085A)) & 0xBFEF3BA;
  v133 = v132 ^ 0x8021089;
  v134 = (v132 ^ 0x3CE300) & (4 * v131) ^ v131;
  v135 = ((4 * v133) ^ 0x2FFBCEEC) & v133 ^ (4 * v133) & 0xBFEF3B8;
  v136 = (v135 ^ 0xBFAC2A0) & (16 * v134) ^ v134;
  v137 = ((16 * (v135 ^ a19)) ^ 0xBFEF3BB0) & (v135 ^ a19) ^ (16 * (v135 ^ a19)) & 0xBFEF3B0;
  v138 = v136 ^ 0xBFEF3BB ^ (v137 ^ 0xBEE3300) & (v136 << 8);
  v139 = v130 ^ (2 * ((v138 << 16) & 0xBFE0000 ^ v138 ^ ((v138 << 16) ^ 0x73BB0000) & (((v137 ^ 0x10C00B) << 8) & 0xBFE0000 ^ 0x10C0000 ^ (((v137 ^ 0x10C00B) << 8) ^ 0x7EF30000) & (v137 ^ 0x10C00B))));
  v140 = (v107 ^ 0xC6D1524F) & (2 * (v107 & 0xE4D2146F)) ^ v107 & 0xE4D2146F;
  v141 = ((2 * (v107 ^ 0x46557241)) ^ 0x450ECC5C) & (v107 ^ 0x46557241) ^ (2 * (v107 ^ 0x46557241)) & 0xA287662E;
  v142 = v141 ^ 0xA2812222;
  v143 = (v141 ^ 0x1400E) & (4 * v140) ^ v140;
  v144 = ((4 * v142) ^ 0x8A1D98B8) & v142 ^ (4 * v142) & 0xA287662C;
  v145 = (v144 ^ 0x82050020) & (16 * v143) ^ v143;
  v146 = ((16 * (v144 ^ 0x20826606)) ^ 0x287662E0) & (v144 ^ 0x20826606) ^ (16 * (v144 ^ 0x20826606)) & 0xA2876620;
  v147 = v145 ^ 0xA287662E ^ (v146 ^ 0x2006620E) & (v145 << 8);
  v148 = v107 ^ (2 * ((v147 << 16) & 0x22870000 ^ v147 ^ ((v147 << 16) ^ 0x662E0000) & (((v146 ^ 0x8281040E) << 8) & 0x22870000 ^ 0x20810000 ^ (((v146 ^ 0x8281040E) << 8) ^ 0x7660000) & (v146 ^ 0x8281040E)))) ^ v129;
  v149 = v139 ^ v128 ^ 0x7B8830B1;
  v150 = ((v128 ^ 0xFC4AAE9A) + 2017288661) ^ ((v128 ^ 0x118D4311) - 1778742176) ^ ((v128 ^ 0xE0F5A583) + 1686268622);
  v151 = (v95 ^ 0xCB9EC1EA) & (2 * (v95 & 0xE310E9EB)) ^ v95 & 0xE310E9EB;
  v152 = ((2 * (v95 ^ 0xFBE502E)) ^ 0xD95D738A) & (v95 ^ 0xFBE502E) ^ (2 * (v95 ^ 0xFBE502E)) & 0xECAEB9C4;
  v153 = v152 ^ 0x24A28845;
  v154 = (v152 ^ 0x88042180) & (4 * v151) ^ v151;
  v155 = ((4 * v153) ^ 0xB2BAE714) & v153 ^ (4 * v153) & 0xECAEB9C4;
  v156 = (v155 ^ 0xA0AAA100) & (16 * v154) ^ v154;
  v157 = ((16 * (v155 ^ 0x4C0418C1)) ^ 0xCAEB9C50) & (v155 ^ 0x4C0418C1) ^ (16 * (v155 ^ 0x4C0418C1)) & 0xECAEB9C0;
  v158 = v156 ^ 0xECAEB9C5 ^ (v157 ^ 0xC8AA9800) & (v156 << 8);
  v159 = v95 ^ (2 * ((v158 << 16) & 0x6CAE0000 ^ v158 ^ ((v158 << 16) ^ 0x39C50000) & (((v157 ^ 0x24042185) << 8) & 0x6CAE0000 ^ 0x40060000 ^ (((v157 ^ 0x24042185) << 8) ^ 0x2EB90000) & (v157 ^ 0x24042185)))) ^ v93;
  v160 = ((v159 ^ 0x809AB73E) + 2129278060) ^ ((v159 ^ 0xEA4B2663) + 339453239) ^ ((v159 ^ 0xB08D87EF) + 1325204667);
  v161 = v160 + 159146775;
  v162 = ((v110 ^ (2 * v119) ^ 0x4DA1D595) + 896950054) ^ ((v110 ^ (2 * v119) ^ 0x4D77F6E2) + 899710035) ^ ((v110 ^ (2 * v119) ^ 0x87C9B698) - 14795735);
  v163 = (((v149 ^ 0x88CC2506) + 1199558573) ^ ((v149 ^ 0x38741C2C) - 137890169) ^ ((v149 ^ 0x648C5D04) - 1421887569)) - v150 + 1088180440;
  v164 = ((v163 ^ 0x357E0F78) - 1022482571) ^ v163 ^ ((v163 ^ 0x606E7140) - 1776395955) ^ ((v163 ^ 0xAA605634) + 1544584761) ^ ((v163 ^ 0xF6FFFFFF) + 9426932);
  v165 = (((v160 + 159146775) ^ 0xED3D94D6) + 1063949271) ^ (v160 + 159146775) ^ (((v160 + 159146775) ^ 0xCC448B46) + 504597575) ^ (((v160 + 159146775) ^ 0x7A2E1890) - 1468457071) ^ (((v160 + 159146775) ^ 0x76FFFFFF) - 1532430080);
  v166 = v160 - (((v165 ^ 0xA2827EC5) - 1004504751) ^ ((v165 ^ 0x4AAA05BC) + 738722346) ^ ((v165 ^ 0x8CE27BBF) - 364872661)) + 677470273;
  v167 = (v166 ^ 0xB5D30D02) & (2 * (v166 & 0xB5DA112B)) ^ v166 & 0xB5DA112B;
  v168 = ((2 * (v166 ^ 0xDE732F50)) ^ 0xD7527CF6) & (v166 ^ 0xDE732F50) ^ (2 * (v166 ^ 0xDE732F50)) & 0x6BA93E7A;
  v169 = v168 ^ 0x28A90209;
  v170 = (v168 ^ 0x43000C70) & (4 * v167) ^ v167;
  v171 = ((4 * v169) ^ 0xAEA4F9EC) & v169 ^ (4 * v169) & 0x6BA93E78;
  v172 = (v171 ^ 0x2AA03860) & (16 * v170) ^ v170;
  v173 = ((16 * (v171 ^ 0x41090613)) ^ 0xBA93E7B0) & (v171 ^ 0x41090613) ^ (16 * (v171 ^ 0x41090613)) & 0x6BA93E70;
  v174 = v172 ^ 0x6BA93E7B ^ (v173 ^ 0x2A812600) & (v172 << 8);
  v175 = v166 ^ (2 * ((v174 << 16) & 0x6BA90000 ^ v174 ^ ((v174 << 16) ^ 0x3E7B0000) & (((v173 ^ 0x4128184B) << 8) & 0x6BA90000 ^ 0x42810000 ^ (((v173 ^ 0x4128184B) << 8) ^ 0x293E0000) & (v173 ^ 0x4128184B))));
  v176 = v160 - 957002775 + (((v175 ^ 0x746E6189) - 1586686725) ^ ((v175 ^ 0x7597A87E) - 1600856818) ^ ((v175 ^ 0xC8DC5BD4) + 501165736));
  v177 = (v176 ^ 0xF03734DF) & (2 * (v176 & 0xF8B736DE)) ^ v176 & 0xF8B736DE;
  v178 = ((2 * (v176 ^ 0x413D5CDB)) ^ 0x7314D40A) & (v176 ^ 0x413D5CDB) ^ (2 * (v176 ^ 0x413D5CDB)) & 0xB98A6A04;
  v179 = v178 ^ 0x888A2A05;
  v180 = (v178 ^ 0x21004000) & (4 * v177) ^ v177;
  v181 = ((4 * v179) ^ 0xE629A814) & v179 ^ (4 * v179) & 0xB98A6A04;
  v182 = v180 ^ 0xB98A6A05 ^ (v181 ^ 0xA0082800) & (16 * v180);
  v183 = (16 * (v181 ^ 0x19824201)) & 0xB98A6A00 ^ 0x21084A05 ^ ((16 * (v181 ^ 0x19824201)) ^ 0x98A6A050) & (v181 ^ 0x19824201);
  v184 = (v182 << 8) & 0xB98A6A00 ^ v182 ^ ((v182 << 8) ^ 0x8A6A0500) & v183;
  v185 = v176 ^ v110 ^ (2 * (v184 ^ v119 ^ (v184 << 16) & 0x398A0000 ^ ((v184 << 16) ^ 0x6A050000) & ((v183 << 8) & 0x398A0000 ^ 0x31800000 ^ ((v183 << 8) ^ 0x8A6A0000) & v183)));
  v186 = ((v148 ^ 0xDFDE9E93) + 64862963) ^ ((v148 ^ 0xF721EC78) + 723699738) ^ ((v148 ^ 0xABF13E2D) + 2012355149);
  v187 = v164 ^ v148;
  v188 = (((v93 ^ 0xACF6CC99) - 617548726) ^ ((v93 ^ 0xCF5B7B7B) - 1197653076) ^ ((v93 ^ 0xD2B43B31) - 1519254558)) - v176 + (((v185 ^ 0x4502AE35) - 1562407395) ^ ((v185 ^ 0x4515653) - 477333893) ^ ((v185 ^ 0xDFB8F5D) - 366563467)) - (((v185 ^ 0xE3FD667F) - 711742925) ^ ((v185 ^ 0x4BF3526B) + 2107481639) ^ ((v185 ^ 0x7C3EEA48) + 1246766598)) - 292937318;
  v189 = v162 - 1898909756 + (((v185 ^ 0xD3CA1B86) - 442181684) ^ ((v185 ^ 0x7235347D) + 1146878001) ^ ((v185 ^ 0x75CFF1A7) + 1134640619));
  v190 = (v189 ^ 0xF971CBC3) & (2 * (v189 & 0xFA798B92)) ^ v189 & 0xFA798B92;
  v191 = ((2 * (v189 ^ 0xBDA2DBC3)) ^ 0x8FB6A0A2) & (v189 ^ 0xBDA2DBC3) ^ (2 * (v189 ^ 0xBDA2DBC3)) & 0x47DB5050;
  v192 = v191 ^ 0x40495051;
  v193 = (v191 ^ 0x3820000) & (4 * v190) ^ v190;
  v194 = ((4 * v192) ^ 0x1F6D4144) & v192 ^ (4 * v192) & 0x47DB5050;
  v195 = (v194 ^ 0x7494040) & (16 * v193) ^ v193;
  v196 = ((16 * (v194 ^ 0x40921011)) ^ 0x7DB50510) & (v194 ^ 0x40921011) ^ (16 * (v194 ^ 0x40921011)) & 0x47DB5050;
  v197 = v195 ^ 0x47DB5051 ^ (v196 ^ 0x45910000) & (v195 << 8);
  v198 = v189 ^ v185 ^ (2 * ((v197 << 16) & 0x47DB0000 ^ v197 ^ ((v197 << 16) ^ 0x50510000) & (((v196 ^ 0x24A5041) << 8) & 0x47DB0000 ^ 0x48B0000 ^ (((v196 ^ 0x24A5041) << 8) ^ 0x5B500000) & (v196 ^ 0x24A5041))));
  v199 = ((v198 ^ 0xD576B08C) - 1338633938) ^ ((v198 ^ 0x532A3314) + 912954038) ^ ((v198 ^ 0xA70176F4) - 1035872426);
  v200 = (((v164 ^ 0xEEE6EABF) - 2099098641) ^ ((v164 ^ 0x774F55D4) + 457962630) ^ ((v164 ^ 0x44379863) + 674445619)) + 1776483204 + (((v164 ^ v148 ^ 0xA1E41B) + 347406517) ^ ((v164 ^ v148 ^ 0xB18061D9) - 1516993161) ^ ((v164 ^ v148 ^ 0x3E4BBF52) + 710892542));
  v201 = (((v129 ^ 0x9B90DDA) + 1480240393) ^ ((v129 ^ 0x4D68BF63) + 485171122) ^ ((v129 ^ 0x220F264C) + 1938589343)) - (((v148 ^ 0xC8568B8D) - 647745884) ^ ((v148 ^ 0x8D1CA13B) - 1674705898) ^ ((v148 ^ 0x8F269E49) - 1642841240)) + (((v164 ^ v148 ^ 0x52AC3242) - 798635581) ^ ((v164 ^ v148 ^ 0xAEDB6CA8) + 739415849) ^ ((v164 ^ v148 ^ 0xEB85CD1D) + 1766602398)) - (((v187 ^ 0xDAC047E5) - 824925365) ^ ((v187 ^ 0xDF6FFE85) - 881124821) ^ ((v187 ^ 0x8AC583F0) - 1630443680)) + 1901087288;
  v202 = v199 + v189;
  v203 = v199 + v189 + v188 + 745567526;
  v204 = ((v203 ^ 0xD59EAAF8) - 953296167) ^ v203 ^ ((v203 ^ 0x10817E06) + 36834855) ^ ((v203 ^ 0x97A6A4CA) - 2062166805) ^ ((v203 ^ 0xBFF5FFEB) - 1387884596);
  v205 = v109 + v161 + 1970724301 + v188;
  v206 = (v205 ^ 0x40367192) & (2 * (v205 & 0x554741A0)) ^ v205 & 0x554741A0;
  v207 = ((2 * (v205 ^ 0x48BEF0D2)) ^ 0x3BF362E4) & (v205 ^ 0x48BEF0D2) ^ (2 * (v205 ^ 0x48BEF0D2)) & 0x1DF9B172;
  v208 = v207 ^ 0x4089112;
  v209 = (v207 ^ 0x19310000) & (4 * v206) ^ v206;
  v210 = ((4 * v208) ^ 0x77E6C5C8) & v208 ^ (4 * v208) & 0x1DF9B170;
  v211 = (v210 ^ 0x15E08140) & (16 * v209) ^ v209;
  v212 = ((16 * (v210 ^ 0x8193032)) ^ 0xDF9B1720) & (v210 ^ 0x8193032) ^ (16 * (v210 ^ 0x8193032)) & 0x1DF9B170;
  v213 = v211 ^ 0x1DF9B172 ^ (v212 ^ 0x1D991100) & (v211 << 8);
  v214 = v205 ^ (2 * ((v213 << 16) & 0x1DF90000 ^ v213 ^ ((v213 << 16) ^ 0x31720000) & (((v212 ^ 0x60A052) << 8) & 0x1DF90000 ^ 0x4480000 ^ (((v212 ^ 0x60A052) << 8) ^ 0x79B10000) & (v212 ^ 0x60A052))));
  v215 = v150 + v186 + 1124297584 + v201;
  v216 = ((v215 ^ 0x75E02B8A) - 1248406267) ^ v215 ^ ((v215 ^ 0xB3611A21) + 1930945712) ^ ((v215 ^ 0x9773C725) + 1459960236) ^ ((v215 ^ 0x6E7BF7FF) - 1374877326);
  v217 = ((v214 ^ 0xF70980DD) + 217449942) ^ ((v214 ^ 0x920BCFC3) + 1777617612) ^ ((v214 ^ 0x610235E9) - 1694650142);
  v218 = v202 + v217;
  v219 = v202 + v217 - 1901636029;
  v220 = v202 + v217 + 745375963;
  v221 = (v220 ^ 0xA4291CE3) & (2 * (v220 & 0xC48A5EEA)) ^ v220 & 0xC48A5EEA;
  v222 = ((2 * (v220 ^ 0xAD3D00F7)) ^ 0xD36EBC3A) & (v220 ^ 0xAD3D00F7) ^ (2 * (v220 ^ 0xAD3D00F7)) & 0x69B75E1C;
  v223 = v222 ^ 0x28914205;
  v224 = (v222 ^ 0x221C18) & (4 * v221) ^ v221;
  v225 = ((4 * v223) ^ 0xA6DD7874) & v223 ^ (4 * v223) & 0x69B75E1C;
  v226 = (v225 ^ 0x20955800) & (16 * v224) ^ v224;
  v227 = ((16 * (v225 ^ 0x49220609)) ^ 0x9B75E1D0) & (v225 ^ 0x49220609) ^ (16 * (v225 ^ 0x49220609)) & 0x69B75E10;
  v228 = v226 ^ 0x69B75E1D ^ (v227 ^ 0x9354000) & (v226 << 8);
  v229 = v220 ^ (2 * ((v228 << 16) & 0x320000 ^ v228 ^ ((v228 << 16) ^ 0x1D0000) & (((v227 ^ 0x60821E0D) << 8) & 0x69B70000 ^ 0x210000 ^ (((v227 ^ 0x60821E0D) << 8) ^ 0x375E0000) & (v227 ^ 0x60821E0D))));
  v230 = v200 ^ v187 ^ ((v200 ^ 0x957FD460) + 554408138) ^ ((v200 ^ 0x7257236F) - 970756153) ^ ((v200 ^ 0x53DCBB2E) - 408356984) ^ ((v200 ^ 0xFF7FFF77) + 1259058143);
  v231 = ((v230 ^ 0x58ED9A95) + 938190197) ^ ((v230 ^ 0x906A1A5C) - 9689666) ^ ((v230 ^ 0xC66090F) + 1667249903);
  v232 = v231 + v200;
  v233 = (((v232 + v201 - 856617254) ^ 0x4CEED761) + 945899393) ^ (v232 + v201 - 856617254) ^ (((v232 + v201 - 856617254) ^ 0x43446F7D) + 936116125) ^ (((v232 + v201 - 856617254) ^ 0x7B2529DD) + 262846781) ^ (((v232 + v201 - 856617254) ^ 0xFFFFFEDF) - 1955566017);
  v234 = (((v204 ^ 0xF9DB9DD7) - 1852382429) ^ ((v204 ^ 0xCBCD5108) - 1551880194) ^ ((v204 ^ 0x6CF7A67B) + 79353999)) + v217;
  v235 = v234 + 1153318134;
  v236 = v219 - (v234 + 1153318134) + 454561862;
  v237 = ((v236 ^ 0xC3EE2D3A) + 24730957) ^ v236 ^ ((v236 ^ 0x83FA2969) + 1097685280) ^ ((v236 ^ 0x2CB7627) - 1067710894) ^ ((v236 ^ 0x7FB7FDFD) - 1121940084);
  v238 = ((v216 ^ 0x9A327DA8) + 303094422) ^ ((v216 ^ 0xFD511B58) + 1970519142) ^ ((v216 ^ 0x10BE3E32) - 1734567664);
  v239 = v199 + v219 - (v234 + 1153318134) + 897375110;
  v240 = (v239 ^ 0x5C951F1D) & (2 * (v239 & 0x9EA59F5D)) ^ v239 & 0x9EA59F5D;
  v241 = ((2 * (v239 ^ 0x6D97352F)) ^ 0xE66554E4) & (v239 ^ 0x6D97352F) ^ (2 * (v239 ^ 0x6D97352F)) & 0xF332AA72;
  v242 = v241 ^ 0x1112AA12;
  v243 = (v241 ^ 0xE2200062) & (4 * v240) ^ v240;
  v244 = ((4 * v242) ^ 0xCCCAA9C8) & v242 ^ (4 * v242) & 0xF332AA70;
  v245 = (v244 ^ 0xC002A840) & (16 * v243) ^ v243;
  v246 = ((16 * (v244 ^ 0x33300232)) ^ 0x332AA720) & (v244 ^ 0x33300232) ^ (16 * (v244 ^ 0x33300232)) & 0xF332AA70;
  v247 = v245 ^ 0xF332AA72 ^ (v246 ^ 0x3322A200) & (v245 << 8);
  v248 = (v247 << 16) & 0x73320000 ^ v247 ^ ((v247 << 16) ^ 0x2A720000) & (((v246 ^ 0xC0100852) << 8) & 0x73320000 ^ 0x41100000 ^ (((v246 ^ 0xC0100852) << 8) ^ 0x32AA0000) & (v246 ^ 0xC0100852));
  v249 = v232 + 145387205 + v238;
  v250 = (((484697282 - v218) ^ 0x3E6F1F37) + 4926529) ^ (484697282 - v218) ^ (((484697282 - v218) ^ 0x5ABB49) + 8292415) ^ (((484697282 - v218) ^ 0x19718) + 2466928) ^ (((484697282 - v218) ^ 0x6FFFEE) + 4967578);
  v251 = v238 + (((v233 ^ 0x1ED40726) - 394224120) ^ ((v233 ^ 0x7E130C97) - 2008574537) ^ ((v233 ^ 0x581A81D4) - 1370613514));
  v252 = v251 + 1509059681;
  v253 = v250 & 0x749DF3;
  v254 = v239 ^ (v234 + 3328109) ^ (((v234 + 3328109) ^ 0xB2F2AB53) + 2123318441) ^ (((v234 + 3328109) ^ 0x56F75C7D) - 1702186105) ^ (((v234 + 3328109) ^ 0x20783885) - 335161473) ^ (((v234 + 3328109) ^ 0xF7FFDFAF) + 998387797) ^ (2 * v248);
  v255 = v231 + v249 - (v251 + 1509059681) + 217256319;
  v256 = (v255 ^ 0xF42B7D00) & (2 * (v255 & 0xE4A37DA4)) ^ v255 & 0xE4A37DA4;
  v257 = ((2 * (v255 ^ 0x3C693448)) ^ 0xB19493D8) & (v255 ^ 0x3C693448) ^ (2 * (v255 ^ 0x3C693448)) & 0xD8CA49EC;
  v258 = v257 ^ 0x484A4824;
  v259 = (v257 ^ 0x90800180) & (4 * v256) ^ v256;
  v260 = ((4 * v258) ^ 0x632927B0) & v258 ^ (4 * v258) & 0xD8CA49EC;
  v261 = (v260 ^ 0x400801AC) & (16 * v259) ^ v259;
  v262 = ((16 * (v260 ^ 0x98C2484C)) ^ 0x8CA49EC0) & (v260 ^ 0x98C2484C) ^ (16 * (v260 ^ 0x98C2484C)) & 0xD8CA49E0;
  v263 = v261 ^ 0xD8CA49EC ^ (v262 ^ 0x88800800) & (v261 << 8);
  v264 = v249 - (v251 + 1509059681) + 1767077695;
  v265 = ((v264 ^ 0x26FEAC8) - 67791392) ^ v264 ^ ((v264 ^ 0x6EFF8BB5) - 1754925917) ^ ((v264 ^ 0x950A1E4A) + 1821401438) ^ ((v264 ^ 0xFFFFFFDF) + 107315401);
  v266 = v235 - (((v237 ^ 0x73B39B4A) - 2017359769) ^ ((v237 ^ 0xFE6C0A26) + 169744651) ^ ((v237 ^ 0xB0B71EE5) + 1153764810)) - (((v253 ^ 0x647C9A44) + 903050214) ^ ((v253 ^ 0x4E53DE07) + 536623015) ^ ((v253 ^ 0x2A7FC8C3) + 2077237603)) - (((v229 & 0x749DF3 ^ 0xDF8EDB11) + 149463242) ^ ((v229 & 0x749DF3 ^ 0xFA559473) + 758378412) ^ ((v229 & 0x749DF3 ^ 0x259FCFB2) - 218516373));
  v267 = v251 - 1645390181;
  v268 = ((v251 - 1645390181) ^ 0x6F572D3) & (2 * ((v251 - 1645390181) & 0x96E662DB)) ^ (v251 - 1645390181) & 0x96E662DB;
  v269 = ((2 * ((v251 - 1645390181) ^ 0xE7D7361)) ^ 0x31362374) & ((v251 - 1645390181) ^ 0xE7D7361) ^ (2 * ((v251 - 1645390181) ^ 0xE7D7361)) & 0x989B11BA;
  v270 = v269 ^ 0x8889108A;
  v271 = (v269 ^ 0x10120130) & (4 * v268) ^ v268;
  v272 = ((4 * v270) ^ 0x626C46E8) & v270 ^ (4 * v270) & 0x989B11B8;
  v273 = (v272 ^ 0x800A2) & (16 * v271) ^ v271;
  v274 = ((16 * (v272 ^ 0x98931112)) ^ 0x89B11BA0) & (v272 ^ 0x98931112) ^ (16 * (v272 ^ 0x98931112)) & 0x989B11B0;
  v275 = v273 ^ 0x989B11BA ^ (v274 ^ 0x88911100) & (v273 << 8);
  v276 = v255 ^ v267 ^ (2 * (v263 ^ v275 ^ (v275 << 16) & 0x189B0000 ^ (v263 << 16) & 0x58CA0000 ^ ((v275 << 16) ^ 0x11BA0000) & (((v274 ^ 0x100A001A) << 8) & 0x989B0000 ^ 0x8A0000 ^ (((v274 ^ 0x100A001A) << 8) ^ 0x9B110000) & (v274 ^ 0x100A001A)) ^ ((v263 << 16) ^ 0x49EC0000) & (((v262 ^ 0x504A412C) << 8) & 0x58CA0000 ^ 0x10820000 ^ (((v262 ^ 0x504A412C) << 8) ^ 0x4A490000) & (v262 ^ 0x504A412C))));
  v277 = (((v254 ^ 0x9B14EA4F) - 597130943) ^ ((v254 ^ 0xBEC5BA46) - 105262774) ^ ((v254 ^ 0x2AF78BB4) + 1837883580)) + 1867527295;
  v278 = v277 ^ ((v277 ^ 0xFB64977C) + 848544660) ^ ((v277 ^ 0xD1B89178) + 407881112) ^ ((v277 ^ 0xE3AB52E3) + 710673933) ^ ((v277 ^ 0xFF7FFFF7) + 914926361) ^ 0x8704AC2D;
  v279 = v252 - (((v265 ^ 0x4FF5BF4F) - 1479180974) ^ ((v265 ^ 0x1028D933) - 133686482) ^ ((v265 ^ 0x59B8E694) - 1315429237));
  v280 = ((v237 ^ 0x12114AAD) - 2006476746) ^ ((v237 ^ 0x7DEB4848) - 409101615) ^ ((v237 ^ 0xEED74021) + 1956745914);
  v281 = v280 - 294663929;
  v282 = (((v237 ^ v204 ^ 0xCE84D954) - 1823142538) ^ ((v237 ^ v204 ^ 0xD3B96BC3) - 1905737757) ^ ((v237 ^ v204 ^ 0x79B74C92) + 610703540)) - v266;
  v283 = (((v282 - 1785828314) ^ 0x9A5B0B9E) + 740907236) ^ (v282 - 1785828314) ^ (((v282 - 1785828314) ^ 0x2A3F44C) - 1261328590) ^ (((v282 - 1785828314) ^ 0xA6CAACAB) + 280559575) ^ (((v282 - 1785828314) ^ 0x77BFFFFB) - 1043485561) ^ v278;
  v284 = ((v283 ^ 0xAC22B8CF) + 24247236) ^ ((v283 ^ 0x8C511BD4) + 553801945) ^ ((v283 ^ 0xD8F208A4) + 1973504937);
  v285 = (((v265 ^ v233 ^ 0xED3B8547) + 357274332) ^ ((v265 ^ v233 ^ 0x90C0E0A4) + 1756428089) ^ ((v265 ^ v233 ^ 0x44407446) - 1137679397)) - v279;
  v286 = v266 - v280;
  v287 = (v281 ^ 0xC4D8EE6D) & (2 * (v281 & 0xE6D28F0E)) ^ v281 & 0xE6D28F0E;
  v288 = ((2 * (v281 ^ 0x80FCEE61)) ^ 0xCC5CC2DE) & (v281 ^ 0x80FCEE61) ^ (2 * (v281 ^ 0x80FCEE61)) & 0x662E616E;
  v289 = v288 ^ 0x22222121;
  v290 = (v288 ^ 0x40C4048) & (4 * v287) ^ v287;
  v291 = ((4 * v289) ^ 0x98B985BC) & v289 ^ (4 * v289) & 0x662E616C;
  v292 = (v291 ^ 0x280120) & (16 * v290) ^ v290;
  v293 = ((16 * (v291 ^ 0x66066043)) ^ 0x62E616F0) & (v291 ^ 0x66066043) ^ (16 * (v291 ^ 0x66066043)) & 0x662E6160;
  v294 = v292 ^ 0x662E616F ^ (v293 ^ 0x62260000) & (v292 << 8);
  v295 = (v294 << 16) & 0x662E0000 ^ v294 ^ ((v294 << 16) ^ 0x616F0000) & (((v293 ^ 0x408610F) << 8) & 0x662E0000 ^ 0x400E0000 ^ (((v293 ^ 0x408610F) << 8) ^ 0x2E610000) & (v293 ^ 0x408610F));
  v296 = v286 + 348792298;
  v297 = (((v276 ^ 0xE031BAC3) - 443078496) ^ ((v276 ^ 0x423A9C3F) + 1201409636) ^ ((v276 ^ 0xE048892F) - 437380236)) + 2067042999;
  v298 = v297 ^ ((v297 ^ 0x13A8F1D9) - 1390372860) ^ ((v297 ^ 0x3084C564) - 1911771969) ^ ((v297 ^ 0x9CA055E3) + 573062202) ^ ((v297 ^ 0xFEFBF77B) + 1081319074) ^ 0xDF7C03AA;
  v299 = v296 ^ v281 ^ ((v296 ^ 0x1C75983A) - 902866536) ^ ((v296 ^ 0x26F11B42) - 257172752) ^ ((v296 ^ 0xCCD202D5) + 445170553) ^ ((v296 ^ 0xDFF3BFFF) + 162102867) ^ (2 * v295) ^ v278;
  v300 = ((v265 ^ 0x151DCF9B) - 443318761) ^ ((v265 ^ 0xD4E45FE8) + 610987622) ^ ((v265 ^ 0x7BD9DDD6) - 1957204900);
  v301 = v300 - 615142307;
  v302 = v279 - v300;
  v303 = v282 - 1785828314 + v296;
  v304 = v303 + 1484519344 + (((v299 ^ 0xE50DB755) - 36189838) ^ ((v299 ^ 0x22347BF9) + 988677598) ^ ((v299 ^ 0xB542B813) - 1382496712));
  v305 = v302 - 817185392;
  v306 = v303 - v284;
  v307 = v303 - v284 - 599353171;
  v308 = (((v285 - 1488364835) ^ 0xF3B87BB3) + 1048409456) ^ (v285 - 1488364835) ^ (((v285 - 1488364835) ^ 0x1C2FC045) - 773140838) ^ (((v285 - 1488364835) ^ 0xF652B62A) + 999799031) ^ (((v285 - 1488364835) ^ 0x2BFFFCFF) - 432344540) ^ v298;
  v309 = v284 - 1951637846 + v304;
  v282 += 1864998157;
  v310 = (v282 ^ 0x4AF0A6FF) & (2 * (v282 & 0x6CE4A6FC)) ^ v282 & 0x6CE4A6FC;
  v311 = ((2 * (v282 ^ 0x5BB0AADF)) ^ 0x6EA81846) & (v282 ^ 0x5BB0AADF) ^ (2 * (v282 ^ 0x5BB0AADF)) & 0x37540C22;
  v312 = v311 ^ 0x11540421;
  v313 = (v311 ^ 0x26000800) & (4 * v310) ^ v310;
  v314 = ((4 * v312) ^ 0xDD50308C) & v312 ^ (4 * v312) & 0x37540C20;
  v315 = v313 ^ 0x37540C23 ^ (v314 ^ 0x15500000) & (16 * v313);
  v316 = (16 * (v314 ^ 0x22040C23)) & 0x37540C20 ^ 0x2140C03 ^ ((16 * (v314 ^ 0x22040C23)) ^ 0x7540C230) & (v314 ^ 0x22040C23);
  v317 = (v315 << 8) & 0x37540C00 ^ v315 ^ ((v315 << 8) ^ 0x540C2300) & v316;
  v318 = v282 ^ (2 * ((v317 << 16) & 0x37540000 ^ v317 ^ ((v317 << 16) ^ 0xC230000) & ((v316 << 8) & 0x37540000 ^ 0x23500000 ^ ((v316 << 8) ^ 0x540C0000) & v316)));
  v319 = (v305 ^ 0x19A3AF09) & (2 * (v305 & 0x99B00FA9)) ^ v305 & 0x99B00FA9;
  v320 = ((2 * (v305 ^ 0x9A3AB4B)) ^ 0x202749C4) & (v305 ^ 0x9A3AB4B) ^ (2 * (v305 ^ 0x9A3AB4B)) & 0x9013A4E2;
  v321 = v320 ^ 0x9010A422;
  v322 = (v320 ^ 0xC0) & (4 * v319) ^ v319;
  v323 = ((4 * v321) ^ 0x404E9388) & v321 ^ (4 * v321) & 0x9013A4E0;
  v324 = (v323 ^ 0x28082) & (16 * v322) ^ v322;
  v325 = ((16 * (v323 ^ 0x90112462)) ^ 0x13A4E20) & (v323 ^ 0x90112462) ^ (16 * (v323 ^ 0x90112462)) & 0x9013A4E0;
  v326 = v324 ^ 0x9013A4E2 ^ (v325 ^ 0x1204C2) & (v324 << 8);
  v327 = ((v301 ^ 0x9A15FADC) + 1351402808) ^ v301 ^ ((v301 ^ 0x43C7E32A) - 1990271806) ^ ((v301 ^ 0x916A2A1D) + 1542657527) ^ ((v301 ^ 0x7DDEF3FF) - 1220031467) ^ (v302 - 817185392) ^ (2 * ((v326 << 16) & 0x10130000 ^ v326 ^ ((v326 << 16) ^ 0x24E20000) & (((v325 ^ 0x9001A0C2) << 8) & 0x10130000 ^ 0x130000 ^ (((v325 ^ 0x9001A0C2) << 8) ^ 0x13A40000) & (v325 ^ 0x9001A0C2)))) ^ v298;
  v328 = ((v318 ^ 0x861E1AF9) + 1536391365) ^ ((v318 ^ 0x41C7D5F4) - 1672824886) ^ ((v318 ^ 0xE5AB52CF) + 942026995);
  v329 = v285 - 1488364835 + v305;
  v330 = ((v308 ^ 0x52577A35) + 1553407898) ^ ((v308 ^ 0x86161CEE) - 1999210173) ^ ((v308 ^ 0x78700277) + 1991272412);
  v331 = ((v327 ^ 0xE4C0A240) + 164511868) ^ ((v327 ^ 0x3D9278FD) - 795043129) ^ ((v327 ^ 0xCBACC94B) + 648162161);
  v332 = v304 - v306 - v309 + 1784711896;
  v333 = v307 + v332 + v328 + v332 + v328;
  v334 = (v333 ^ 0xDE5534) & (2 * (v333 & 0xA4C099B6)) ^ v333 & 0xA4C099B6;
  v335 = ((2 * (v333 ^ 0x405E453C)) ^ 0xC93DB914) & (v333 ^ 0x405E453C) ^ (2 * (v333 ^ 0x405E453C)) & 0xE49EDC8A;
  v336 = v335 ^ 0x2482448A;
  v337 = (v335 ^ 0x80048800) & (4 * v334) ^ v334;
  v338 = ((4 * v336) ^ 0x927B7228) & v336 ^ (4 * v336) & 0xE49EDC88;
  v339 = (v338 ^ 0x801A5000) & (16 * v337) ^ v337;
  v340 = ((16 * (v338 ^ 0x64848C82)) ^ 0x49EDC8A0) & (v338 ^ 0x64848C82) ^ (16 * (v338 ^ 0x64848C82)) & 0xE49EDC80;
  v341 = v339 ^ 0xE49EDC8A ^ (v340 ^ 0x408CC800) & (v339 << 8);
  v342 = (v341 << 16) & 0x649E0000 ^ v341 ^ ((v341 << 16) ^ 0x5C8A0000) & (((v340 ^ 0xA412140A) << 8) & 0x649E0000 ^ 0x60020000 ^ (((v340 ^ 0xA412140A) << 8) ^ 0x1EDC0000) & (v340 ^ 0xA412140A));
  v285 += 1771163749;
  v343 = (v285 ^ 0x5B8A1938) & (2 * (v285 & 0x9B8A1DBA)) ^ v285 & 0x9B8A1DBA;
  v344 = ((2 * (v285 ^ 0x689A1858)) ^ 0xE6200BC4) & (v285 ^ 0x689A1858) ^ (2 * (v285 ^ 0x689A1858)) & 0xF31005E2;
  v345 = v344 ^ 0x11100422;
  v346 = (v344 ^ 0xE20001C0) & (4 * v343) ^ v343;
  v347 = ((4 * v345) ^ 0xCC401788) & v345 ^ (4 * v345) & 0xF31005E0;
  v348 = v346 ^ 0xF31005E2 ^ (v347 ^ 0xC0000582) & (16 * v346);
  v349 = (16 * (v347 ^ 0x33100062)) & 0xF31005E0 ^ 0xC21001C2 ^ ((16 * (v347 ^ 0x33100062)) ^ 0x31005E20) & (v347 ^ 0x33100062);
  v350 = (v348 << 8) & 0xF3100500 ^ v348 ^ ((v348 << 8) ^ 0x1005E200) & v349;
  v351 = v285 ^ (2 * ((v350 << 16) & 0x73100000 ^ v350 ^ ((v350 << 16) ^ 0x5E20000) & ((v349 << 8) & 0xF3100000 ^ 0x63100000 ^ ((v349 << 8) ^ 0x10050000) & v349)));
  v352 = v329 + v330 + v331 - 917276214;
  v353 = ((v351 ^ 0x2A41EA52) - 1977474900) ^ ((v351 ^ 0x855344BB) + 623939139) ^ ((v351 ^ 0xF08E9BEF) + 1357730071);
  v354 = v353 + 1355678692 - v330;
  v355 = (((v328 - 995895455) ^ 0x583974C4) - 643437862) ^ (v328 - 995895455) ^ (((v328 - 995895455) ^ 0x11F83ECC) - 1872453422) ^ (((v328 - 995895455) ^ 0xC8DDF435) + 1229023785) ^ (((v328 - 995895455) ^ 0xFF7FDFDF) + 2128822723) ^ v333 ^ (2 * v342);
  v356 = v354 + v353 - v329 - 42303269;
  v357 = (v356 ^ 0x525994F3) & (2 * (v356 & 0x629D14F3)) ^ v356 & 0x629D14F3;
  v358 = ((2 * (v356 ^ 0x12639417)) ^ 0xE1FD01C8) & (v356 ^ 0x12639417) ^ (2 * (v356 ^ 0x12639417)) & 0x70FE80E4;
  v359 = v358 ^ 0x10028024;
  v360 = (v358 ^ 0xFC00C0) & (4 * v357) ^ v357;
  v361 = ((4 * v359) ^ 0xC3FA0390) & v359 ^ (4 * v359) & 0x70FE80E4;
  v362 = (v361 ^ 0x40FA0080) & (16 * v360) ^ v360;
  v363 = ((16 * (v361 ^ 0x30048064)) ^ 0xFE80E40) & (v361 ^ 0x30048064) ^ (16 * (v361 ^ 0x30048064)) & 0x70FE80E0;
  v364 = v362 ^ 0x70FE80E4 ^ (v363 ^ 0xE800A4) & (v362 << 8);
  v365 = (v364 << 16) & 0x70FE0000 ^ v364 ^ ((v364 << 16) ^ 0xE40000) & (((v363 ^ 0x701680A4) << 8) & 0x70FE0000 ^ (((v363 ^ 0x701680A4) << 8) ^ 0x7E800000) & (v363 ^ 0x701680A4) ^ 0x7E0000);
  v366 = v328 - 1828038077;
  v367 = v309 - v328 - 1319161952;
  v368 = (((v353 - 1353611667) ^ 0x3DB02F32) - 1419853788) ^ (v353 - 1353611667) ^ (((v353 - 1353611667) ^ 0xAE8813C2) + 946273492) ^ (((v353 - 1353611667) ^ 0x8556D2F1) + 330841569) ^ (((v353 - 1353611667) ^ 0x7F7FFEEF) - 376368641) ^ v356 ^ (2 * v365);
  v369 = v353 - 1829042975;
  v370 = v352 - v353 + 1429459013;
  v371 = (((v355 ^ 0xCEEE390B) + 1560943646) ^ ((v355 ^ 0x29BB62B4) - 1168160861) ^ ((v355 ^ 0x7DDF1AFF) - 298106902)) - 511459661;
  v372 = (v371 ^ 0x8500F7CF) & (2 * (v371 & 0xA9A2C7EC)) ^ v371 & 0xA9A2C7EC;
  v373 = ((2 * (v371 ^ 0xD4057C9F)) ^ 0xFB4F76E6) & (v371 ^ 0xD4057C9F) ^ (2 * (v371 ^ 0xD4057C9F)) & 0x7DA7BB72;
  v374 = v373 ^ 0x4A08911;
  v375 = (v373 ^ 0x69073260) & (4 * v372) ^ v372;
  v376 = ((4 * v374) ^ 0xF69EEDCC) & v374 ^ (4 * v374) & 0x7DA7BB70;
  v377 = (v376 ^ 0x7486A940) & (16 * v375) ^ v375;
  v378 = ((16 * (v376 ^ 0x9211233)) ^ 0xDA7BB730) & (v376 ^ 0x9211233) ^ (16 * (v376 ^ 0x9211233)) & 0x7DA7BB70;
  v379 = v377 ^ 0x7DA7BB73 ^ (v378 ^ 0x5823B300) & (v377 << 8);
  v380 = (v379 << 16) & 0x7DA70000 ^ v379 ^ ((v379 << 16) ^ 0x3B730000) & (((v378 ^ 0x25840843) << 8) & 0x7DA70000 ^ 0x58040000 ^ (((v378 ^ 0x25840843) << 8) ^ 0x27BB0000) & (v378 ^ 0x25840843));
  v381 = (v370 ^ 0xDF51F2BB) & (2 * (v370 & 0x1F15F2BA)) ^ v370 & 0x1F15F2BA;
  v382 = ((2 * (v370 ^ 0xC37917DF)) ^ 0xB8D9CACA) & (v370 ^ 0xC37917DF) ^ (2 * (v370 ^ 0xC37917DF)) & 0xDC6CE564;
  v383 = v382 ^ 0x44242525;
  v384 = (v382 ^ 0x9848C040) & (4 * v381) ^ v381;
  v385 = ((4 * v383) ^ 0x71B39594) & v383 ^ (4 * v383) & 0xDC6CE564;
  v386 = (v385 ^ 0x50208500) & (16 * v384) ^ v384;
  v387 = ((16 * (v385 ^ 0x8C4C6061)) ^ 0xC6CE5650) & (v385 ^ 0x8C4C6061) ^ (16 * (v385 ^ 0x8C4C6061)) & 0xDC6CE560;
  v388 = v386 ^ 0xDC6CE565 ^ (v387 ^ 0xC44C4400) & (v386 << 8);
  v389 = ((v366 ^ 0xEF611E91) + 552233713) ^ v366 ^ ((v366 ^ 0x93705102) + 1559962980) ^ ((v366 ^ 0x321A2BF2) - 40804460) ^ ((v366 ^ 0x7E7FEFFF) - 1309369441) ^ v371 ^ (2 * v380);
  v390 = ((v389 ^ 0xD1635DEE) - 1918285569) ^ ((v389 ^ 0x1FC265D3) + 1124626628) ^ ((v389 ^ 0xDE7E02A9) - 2102126662);
  v391 = ((v368 ^ 0xA34BF26) - 659180330) ^ ((v368 ^ 0x19B56880) - 885759116) ^ ((v368 ^ 0xF838D273) + 716822913);
  v392 = ((v391 - 2088251856) ^ 0xD7D40CDF) & (2 * ((v391 - 2088251856) & 0xD7D50E9F)) ^ (v391 - 2088251856) & 0xD7D50E9F;
  v393 = ((2 * ((v391 - 2088251856) ^ 0xD95401D1)) ^ 0x1D021E9C) & ((v391 - 2088251856) ^ 0xD95401D1) ^ (2 * ((v391 - 2088251856) ^ 0xD95401D1)) & 0xE810F4E;
  v394 = v393 ^ 0x2810142;
  v395 = (v393 ^ 0xC000E0C) & (4 * v392) ^ v392;
  v396 = ((4 * v394) ^ 0x3A043D38) & v394 ^ (4 * v394) & 0xE810F4C;
  v397 = (v396 ^ 0xA000D00) & (16 * v395) ^ v395;
  v398 = ((16 * (v396 ^ 0x4810246)) ^ 0xE810F4E0) & (v396 ^ 0x4810246) ^ (16 * (v396 ^ 0x4810246)) & 0xE810F40;
  v399 = v397 ^ 0xE810F4E ^ (v398 ^ 0x800040E) & (v397 << 8);
  v400 = ((v369 ^ 0x5BE71E1D) - 1803692065) ^ v369 ^ ((v369 ^ 0x9BE8C21C) + 1416760288) ^ ((v369 ^ 0xD9115C2) - 1039410174) ^ ((v369 ^ 0xFDFBFFFF) + 845231677) ^ (v391 - 2088251856) ^ (2 * ((v399 << 16) & 0xE810000 ^ v399 ^ ((v399 << 16) ^ 0xF4E0000) & (((v398 ^ 0x6810B0E) << 8) & 0xE810000 ^ 0xE800000 ^ (((v398 ^ 0x6810B0E) << 8) ^ 0x10F0000) & (v398 ^ 0x6810B0E))));
  v401 = ((v400 ^ 0xC3C333DE) + 1796847354) ^ ((v400 ^ 0xDFB0FCDD) + 2003466747) ^ ((v400 ^ 0xFAC1E93C) + 1377528860);
  v402 = v354 - v352 + v370 + v401;
  v403 = v391 + v402;
  v404 = v391 + v402 + 1794501024;
  v405 = (v404 ^ 0xFE99FFE9) & (2 * (v404 & 0xFE21FFED)) ^ v404 & 0xFE21FFED;
  v406 = ((2 * (v404 ^ 0x8AD97063)) ^ 0xE9F11F1C) & (v404 ^ 0x8AD97063) ^ (2 * (v404 ^ 0x8AD97063)) & 0x74F88F8E;
  v407 = v406 ^ 0x14088082;
  v408 = (v406 ^ 0x60800F0C) & (4 * v405) ^ v405;
  v409 = ((4 * v407) ^ 0xD3E23E38) & v407 ^ (4 * v407) & 0x74F88F8C;
  v410 = (v409 ^ 0x50E00E00) & (16 * v408) ^ v408;
  v411 = ((16 * (v409 ^ 0x24188186)) ^ 0x4F88F8E0) & (v409 ^ 0x24188186) ^ (16 * (v409 ^ 0x24188186)) & 0x74F88F80;
  v412 = v410 ^ 0x74F88F8E ^ (v411 ^ 0x44888800) & (v410 << 8);
  v413 = v368 ^ v370 ^ v404 ^ (2 * ((v388 << 16) & 0x5C6C0000 ^ v388 ^ ((v388 << 16) ^ 0x65650000) & (((v387 ^ 0x1820A125) << 8) & 0xDC6C0000 ^ 0x10080000 ^ (((v387 ^ 0x1820A125) << 8) ^ 0x6CE50000) & (v387 ^ 0x1820A125)) ^ v412 ^ (v412 << 16) & 0x74F80000 ^ ((v412 << 16) ^ 0xF8E0000) & (((v411 ^ 0x3070070E) << 8) & 0x74F80000 ^ 0x4700000 ^ (((v411 ^ 0x3070070E) << 8) ^ 0x788F0000) & (v411 ^ 0x3070070E))));
  v414 = v307 + v332 + v390;
  v415 = v414 + (((v355 ^ 0xA5A2D946) + 910621777) ^ ((v355 ^ 0xFF0A8C5) - 1676374572) ^ ((v355 ^ 0x30D830C3) - 1556343338));
  v416 = (((v413 ^ 0xFB83129E) - 1493551967) ^ ((v413 ^ 0xC49F3D5A) - 1712972955) ^ ((v413 ^ 0xE561F290) - 1206332241)) - v404 - 876711303;
  v417 = ((v416 ^ 0x4E2B0C3D) - 516841964) ^ v416 ^ ((v416 ^ 0x688807D6) - 946694663) ^ ((v416 ^ 0x49B989C5) - 425518100) ^ ((v416 ^ 0x3FFFEFFF) - 1864008238);
  v418 = ((v367 ^ 0x6294571C) - 850396176) ^ v367 ^ ((v367 ^ 0x3239C480) - 1646106508) ^ ((v367 ^ 0x6F763D2F) - 1062366755) ^ ((v367 ^ 0x6FFFFDBF) - 1071361715) ^ v355 ^ (v415 - 1845422083) ^ (((v415 - 1845422083) ^ 0xE2E5E826) + 1173949907) ^ (((v415 - 1845422083) ^ 0x478BC73A) - 526966065) ^ (((v415 - 1845422083) ^ 0x846ACAA8) + 594947933) ^ (((v415 - 1845422083) ^ 0x79E7FFBF) - 553969076);
  v419 = (((v418 ^ 0xB6B6698B) - 1854599858) ^ ((v418 ^ 0x28B685AC) + 259383659) ^ ((v418 ^ 0xC4DE460) + 730759335)) - v415;
  v420 = ((v419 + 2006578646) ^ 0x1D311FB7) & (2 * ((v419 + 2006578646) & 0x99B99FB6)) ^ (v419 + 2006578646) & 0x99B99FB6;
  v421 = ((2 * ((v419 + 2006578646) ^ 0x1C51379B)) ^ 0xBD1505A) & ((v419 + 2006578646) ^ 0x1C51379B) ^ (2 * ((v419 + 2006578646) ^ 0x1C51379B)) & 0x85E8A82C;
  v422 = v421 ^ 0x8428A825;
  v423 = (v421 ^ 0x1C00008) & (4 * v420) ^ v420;
  v424 = ((4 * v422) ^ 0x17A2A0B4) & v422 ^ (4 * v422) & 0x85E8A82C;
  v425 = (v424 ^ 0x5A0A020) & (16 * v423) ^ v423;
  v426 = ((16 * (v424 ^ 0x80480809)) ^ 0x5E8A82D0) & (v424 ^ 0x80480809) ^ (16 * (v424 ^ 0x80480809)) & 0x85E8A820;
  v427 = v426 ^ 0x8160282D;
  v428 = v425 ^ 0x85E8A82D ^ (v426 ^ 0x4888000) & (v425 << 8);
  v429 = (((v390 + 2028190513) ^ 0x8362C95D) - 1116323193) ^ (v390 + 2028190513) ^ (((v390 + 2028190513) ^ 0xAED5A8A4) - 1866390656) ^ (((v390 + 2028190513) ^ 0x93B3EB26) - 1381539586) ^ (((v390 + 2028190513) ^ 0x7FEFFEFB) + 1106998561) ^ (v419 + 2006578646) ^ (2 * ((v428 << 16) & 0x5E80000 ^ v428 ^ ((v428 << 16) ^ 0x282D0000) & ((v427 << 8) & 0x5E80000 ^ 0x5400000 ^ ((v427 << 8) ^ 0x68A80000) & v427)));
  v430 = (((v429 ^ 0xA178EDB1) + 215615030) ^ ((v429 ^ 0xC50D4078) + 1756343293) ^ ((v429 ^ 0x37A61601) - 1710948986)) - 1580017933;
  v431 = (v430 ^ 0xF9FD0EE5) & (2 * (v430 & 0xFDF12E88)) ^ v430 & 0xFDF12E88;
  v432 = ((2 * (v430 ^ 0xB8FF5AE5)) ^ 0x8A1CE8DA) & (v430 ^ 0xB8FF5AE5) ^ (2 * (v430 ^ 0xB8FF5AE5)) & 0x450E746C;
  v433 = v432 ^ 0x45021425;
  v434 = (v432 ^ 0xE6045) & (4 * v431) ^ v431;
  v435 = ((4 * v433) ^ 0x1439D1B4) & v433 ^ (4 * v433) & 0x450E746C;
  v436 = (v435 ^ 0x4085020) & (16 * v434) ^ v434;
  v437 = ((16 * (v435 ^ 0x41062449)) ^ 0x50E746D0) & (v435 ^ 0x41062449) ^ (16 * (v435 ^ 0x41062449)) & 0x450E7460;
  v438 = v436 ^ 0x450E746D ^ (v437 ^ 0x40064400) & (v436 << 8);
  v439 = v430 ^ (2 * ((v438 << 16) & 0x450E0000 ^ v438 ^ ((v438 << 16) ^ 0x746D0000) & (((v437 ^ 0x508302D) << 8) & 0x450E0000 ^ 0x410A0000 ^ (((v437 ^ 0x508302D) << 8) ^ 0xE740000) & (v437 ^ 0x508302D))));
  v440 = v439 ^ 0xB30122CF;
  v441 = v415 + 2060859438;
  v442 = ((v415 + 2060859438) ^ 0x1AD0E6E9) + 301171573;
  v443 = ((v415 + 2060859438) ^ 0x383C2C46) + 857688540;
  v444 = ((v415 + 2060859438) ^ 0x39CDAF92) + 854510096;
  v445 = v402 - 806613817;
  v446 = (v445 ^ 0x2C5DFA1A) & (2 * (v445 & 0x4C99E29C)) ^ v445 & 0x4C99E29C;
  v447 = ((2 * ((v402 - 806613817) ^ 0x3C4FBA32)) ^ 0xE1ACB15C) & ((v402 - 806613817) ^ 0x3C4FBA32) ^ (2 * ((v402 - 806613817) ^ 0x3C4FBA32)) & 0x70D658AE;
  v448 = v447 ^ 0x105248A2;
  v449 = (v447 ^ 0x60841000) & (4 * v446) ^ v446;
  v450 = ((4 * v448) ^ 0xC35962B8) & v448 ^ (4 * v448) & 0x70D658AC;
  v451 = (v450 ^ 0x405040A0) & (16 * v449) ^ v449;
  v452 = ((16 * (v450 ^ 0x30861806)) ^ 0xD658AE0) & (v450 ^ 0x30861806) ^ (16 * (v450 ^ 0x30861806)) & 0x70D658A0;
  v453 = v452 ^ 0x7092500E;
  v454 = v451 ^ 0x70D658AE ^ (v452 ^ 0x440800) & (v451 << 8);
  v455 = v403 - 1179678323;
  v456 = (v454 << 16) & 0x70D60000 ^ v454 ^ ((v454 << 16) ^ 0x58AE0000) & ((v453 << 8) & 0x70D60000 ^ 0x20860000 ^ ((v453 << 8) ^ 0x56580000) & v453);
  v457 = v419 - (((v439 ^ 0x9DB51E3F) - 783564016) ^ ((v439 ^ 0x756D64EB) + 965982684) ^ ((v439 ^ 0x172DBC86) + 1540579767));
  v458 = v442 ^ v441 ^ v443 ^ v444 ^ ((v441 ^ 0xEFFDFF5F) - 455173437) ^ (v457 - 969821232) ^ (((v457 - 969821232) ^ 0x4A394523) - 1273644994) ^ (((v457 - 969821232) ^ 0xDDB12797) + 597547658) ^ (((v457 - 969821232) ^ 0xE9649FAA) + 390619829) ^ (((v457 - 969821232) ^ 0x7F3FFFFF) - 2129460510);
  LODWORD(v459) = __ROR4__((v401 + 1920358633) ^ (((v401 + 1920358633) ^ 0x9449ECD) + 1265296451) ^ (((v401 + 1920358633) ^ 0xBE99C1BA) - 55067850) ^ (((v401 + 1920358633) ^ 0xB5F625E8) - 136814744) ^ (((v401 + 1920358633) ^ 0xBFFAFFEF) - 36403871) ^ 0x2AA588CA ^ v417, 26) ^ 0x9C3C9888;
  HIDWORD(v459) = v459;
  v460 = ((((v459 >> 6) ^ 0x6DA3DCEF) + 982172964) ^ (((v459 >> 6) ^ 0x4453C061) + 326818222) ^ (((v459 >> 6) ^ 0xCC118E87) - 1690790068)) + 683114647;
  v461 = ((v460 ^ 0xBB4D0F90) + 2046314235) ^ v460 ^ ((v460 ^ 0xF5A311F) - 839944074) ^ ((v460 ^ 0xFCA27FE5) + 1041708688) ^ ((v460 ^ 0x75FFF7FF) - 1219838314);
  v462 = (((v417 ^ 0x578C98F3) - 288575476) ^ ((v417 ^ 0x184FEDC) - 1195059675) ^ ((v417 ^ 0x6ED0BFE) - 1079172345)) - (((v461 ^ 0xE9FF32FE) - 445191152) ^ ((v461 ^ 0x56A4B0E0) + 1512926738) ^ ((v461 ^ 0x8211348B) - 1902581125));
  v463 = ((v462 - 2054533333) ^ 0x8A5BC3C9) & (2 * ((v462 - 2054533333) & 0xC293D410)) ^ (v462 - 2054533333) & 0xC293D410;
  v464 = ((2 * ((v462 - 2054533333) ^ 0x8F7DC3E9)) ^ 0x9BDC2FF2) & ((v462 - 2054533333) ^ 0x8F7DC3E9) ^ (2 * ((v462 - 2054533333) ^ 0x8F7DC3E9)) & 0x4DEE17F8;
  v465 = v464 ^ 0x44221009;
  v466 = (v464 ^ 0x8CC00C0) & (4 * v463) ^ v463;
  v467 = ((4 * v465) ^ 0x37B85FE4) & v465 ^ (4 * v465) & 0x4DEE17F8;
  v468 = (v467 ^ 0x5A817E0) & (16 * v466) ^ v466;
  v469 = ((16 * (v467 ^ 0x48460019)) ^ 0xDEE17F90) & (v467 ^ 0x48460019) ^ (16 * (v467 ^ 0x48460019)) & 0x4DEE17F0;
  v470 = v468 ^ 0x4DEE17F9 ^ (v469 ^ 0x4CE01700) & (v468 << 8);
  v471 = v457 - 857189680;
  v472 = v461 ^ 0xF376210E;
  v473 = ((v455 ^ 0x35D11672) - 913118804) ^ v455 ^ ((v455 ^ 0x5451AD4E) - 1475194216) ^ ((v455 ^ 0xDC304E5) - 243205315) ^ ((v455 ^ 0x6FFFBFFF) - 1816379353) ^ (v462 - 2054533333) ^ (2 * ((v470 << 16) & 0x4DEE0000 ^ v470 ^ ((v470 << 16) ^ 0x17F90000) & (((v469 ^ 0x10E0069) << 8) & 0x4DEE0000 ^ 0x1E80000 ^ (((v469 ^ 0x10E0069) << 8) ^ 0x6E170000) & (v469 ^ 0x10E0069))));
  v474 = v471 - (((v458 ^ 0x62092C60) - 154298534) ^ ((v458 ^ 0x5872CD0C) - 860457418) ^ ((v458 ^ 0xCF7479EF) + 1538310871)) + 1939592227;
  v475 = (v474 ^ 0xD11589A6) & (2 * (v474 & 0xE5A5ADB7)) ^ v474 & 0xE5A5ADB7;
  v476 = ((2 * (v474 ^ 0x1814C88C)) ^ 0xFB62CA76) & (v474 ^ 0x1814C88C) ^ (2 * (v474 ^ 0x1814C88C)) & 0xFDB1653A;
  v477 = v476 ^ 0x4912509;
  v478 = (v476 ^ 0xB9204030) & (4 * v475) ^ v475;
  v479 = ((4 * v477) ^ 0xF6C594EC) & v477 ^ (4 * v477) & 0xFDB16538;
  v480 = (v479 ^ 0xF4810420) & (16 * v478) ^ v478;
  v481 = ((16 * (v479 ^ 0x9306113)) ^ 0xDB1653B0) & (v479 ^ 0x9306113) ^ (16 * (v479 ^ 0x9306113)) & 0xFDB16530;
  v482 = v480 ^ 0xFDB1653B ^ (v481 ^ 0xD9104100) & (v480 << 8);
  v483 = v474 ^ (2 * ((v482 << 16) & 0x7DB10000 ^ v482 ^ ((v482 << 16) ^ 0x653B0000) & (((v481 ^ 0x24A1240B) << 8) & 0x7DB10000 ^ 0x4C900000 ^ (((v481 ^ 0x24A1240B) << 8) ^ 0x31650000) & (v481 ^ 0x24A1240B))));
  v484 = v462 - (((v473 ^ 0x8DCCE3E8) + 901632761) ^ ((v473 ^ 0xFF8AEA9F) + 1207688080) ^ ((v473 ^ 0x2365F2B3) - 1693138012)) + 1333332595;
  v485 = ((v484 ^ 0x9614682) - 392780513) ^ v484 ^ ((v484 ^ 0xAA8DD732) + 1266300079) ^ ((v484 ^ 0x421D562C) - 1544899151) ^ ((v484 ^ 0xFFF9DBFF) + 504248420);
  v486 = (((v483 ^ v440 ^ 0x5624B1AB) + 1157251095) ^ ((v483 ^ v440 ^ 0x1DADDF7D) + 259206849) ^ ((v483 ^ v440 ^ 0xD3D8ED8A) - 1056564168)) + 728594126;
  v487 = ((v483 ^ 0xD33FAAA3) + 109056212) ^ ((v483 ^ 0xB66E29B9) + 1674679242) ^ ((v483 ^ 0x4F11C695) - 1699840794);
  v488 = ((v485 ^ v472 ^ 0x74639AE2) + 1905447931) ^ ((v485 ^ v472 ^ 0x8FF3FE00) - 1979533543) ^ ((v485 ^ v472 ^ 0x2BA4EF1A) + 777364995);
  v489 = ((v485 ^ 0x6CCD6337) + 1944036070) ^ ((v485 ^ 0xCABF64A6) - 710040203) ^ ((v485 ^ 0x469F39BC) + 1502476399);
  v490 = (((v458 ^ 0x2F045CB9) - 2127812640) ^ ((v458 ^ 0xE954E4B8) + 1199349727) ^ ((v458 ^ 0x97873C98) + 967788543)) + 780048009;
  v491 = v486 + v487 + 428569190;
  v492 = (((v414 + 1357733740) ^ 0xAA887A21) - 1050902357) ^ (v414 + 1357733740) ^ (((v414 + 1357733740) ^ 0x54E34E75) + 1060615423) ^ (((v414 + 1357733740) ^ 0x9CBFC6DE) - 143967146) ^ (((v414 + 1357733740) ^ 0xF6FFF7FE) - 1658122890) ^ v440 ^ (v487 + 428569190 + v490) ^ (((v487 + 428569190 + v490) ^ 0xC559284F) + 1923932000) ^ (((v487 + 428569190 + v490) ^ 0xDD62A1CF) + 1788303072) ^ (((v487 + 428569190 + v490) ^ 0xAEDA7690) + 422543745) ^ (((v487 + 428569190 + v490) ^ 0xFEEBF7FF) + 1226703088);
  v493 = v487 - 1825983700 + (((v492 ^ 0x1F6D439B) + 943823084) ^ ((v492 ^ 0x8F64F8FF) - 1471667312) ^ ((v492 ^ 0xDC5262) + 670075155));
  v494 = v490 - v486;
  v495 = (((v473 ^ 0xBC38DDC1) - 312042064) ^ ((v473 ^ 0x2EE9FF93) + 2142748670) ^ ((v473 ^ 0x672AC58C) + 913606115)) + 1583369673 + v489 + 1482504815;
  v496 = v488 + v489 + 1482504815 + 556307805;
  v497 = (v496 ^ 0x598DB82A) & (2 * (v496 & 0x5D2E3A2C)) ^ v496 & 0x5D2E3A2C;
  v498 = ((2 * (v496 ^ 0xF195BC72)) ^ 0x59770CBC) & (v496 ^ 0xF195BC72) ^ (2 * (v496 ^ 0xF195BC72)) & 0xACBB865E;
  v499 = v498 ^ 0xA4888242;
  v500 = (v498 ^ 0x8310010) & (4 * v497) ^ v497;
  v501 = ((4 * v499) ^ 0xB2EE1978) & v499 ^ (4 * v499) & 0xACBB865C;
  v502 = (v501 ^ 0xA0AA0040) & (16 * v500) ^ v500;
  v503 = ((16 * (v501 ^ 0xC118606)) ^ 0xCBB865E0) & (v501 ^ 0xC118606) ^ (16 * (v501 ^ 0xC118606)) & 0xACBB8650;
  v504 = v502 ^ 0xACBB865E ^ (v503 ^ 0x88B80400) & (v502 << 8);
  v505 = v496 ^ (2 * ((v504 << 16) & 0x2CBB0000 ^ v504 ^ ((v504 << 16) ^ 0x65E0000) & (((v503 ^ 0x2403821E) << 8) & 0x2CBB0000 ^ 0x4390000 ^ (((v503 ^ 0x2403821E) << 8) ^ 0x3B860000) & (v503 ^ 0x2403821E))));
  v506 = v505 ^ 0x6E1D101D;
  v507 = v494 - v493 + 949350037;
  v508 = (v507 ^ 0xED947919) & (2 * (v507 & 0xED917D5C)) ^ v507 & 0xED917D5C;
  v509 = ((2 * (v507 ^ 0xA79693B1)) ^ 0x940FDDDA) & (v507 ^ 0xA79693B1) ^ (2 * (v507 ^ 0xA79693B1)) & 0x4A07EEEC;
  v510 = v509 ^ 0x4A002225;
  v511 = (v509 ^ 0x7CCC5) & (4 * v508) ^ v508;
  v512 = ((4 * v510) ^ 0x281FBBB4) & v510 ^ (4 * v510) & 0x4A07EEEC;
  v513 = (v512 ^ 0x807AAA0) & (16 * v511) ^ v511;
  v514 = ((16 * (v512 ^ 0x42004449)) ^ 0xA07EEED0) & (v512 ^ 0x42004449) ^ (16 * (v512 ^ 0x42004449)) & 0x4A07EEE0;
  v515 = v513 ^ 0x4A07EEED ^ (v514 ^ 0x6EE00) & (v513 << 8);
  v516 = v507 ^ (2 * ((v515 << 16) & 0x4A070000 ^ v515 ^ ((v515 << 16) ^ 0x6EED0000) & (((v514 ^ 0x4A01002D) << 8) & 0x4A070000 ^ 0x48010000 ^ (((v514 ^ 0x4A01002D) << 8) ^ 0x7EE0000) & (v514 ^ 0x4A01002D))));
  v517 = v445 ^ (2 * v456) ^ v472 ^ v495 ^ ((v495 ^ 0x14D11FC5) - 1337077804) ^ ((v495 ^ 0x4E9A931D) - 368688372) ^ ((v495 ^ 0x7EC75C6E) - 631534471) ^ ((v495 ^ 0x7FEFFF5F) - 613208246);
  v518 = (620460466 - v494) ^ v494 ^ ((v494 ^ 0xE08973BF) + 999159283) ^ ((v494 ^ 0xAA589F2F) + 1901861219) ^ ((v494 ^ 0x91D56ADD) + 1255271569) ^ v492;
  v519 = v495 - (((v505 ^ 0x33658BD0) - 1568185293) ^ ((v505 ^ 0x5D133A7F) - 856566370) ^ ((v505 ^ 0x621B873F) - 201758498));
  v520 = (v491 ^ 0x9CE46683) & (2 * (v491 & 0xDCF170C3)) ^ v491 & 0xDCF170C3;
  v521 = ((2 * (v491 ^ 0x3C86E601)) ^ 0xC0EF2D84) & (v491 ^ 0x3C86E601) ^ (2 * (v491 ^ 0x3C86E601)) & 0xE07796C2;
  v522 = v521 ^ 0x20109242;
  v523 = (v521 ^ 0xC0470400) & (4 * v520) ^ v520;
  v524 = ((4 * v522) ^ 0x81DE5B08) & v522 ^ (4 * v522) & 0xE07796C0;
  v525 = (v524 ^ 0x80561200) & (16 * v523) ^ v523;
  v526 = ((16 * (v524 ^ 0x602184C2)) ^ 0x7796C20) & (v524 ^ 0x602184C2) ^ (16 * (v524 ^ 0x602184C2)) & 0xE07796C0;
  v527 = v525 ^ 0xE07796C2 ^ (v526 ^ 0x710400) & (v525 << 8);
  v528 = v491 ^ (2 * ((v527 << 16) & 0x60770000 ^ v527 ^ ((v527 << 16) ^ 0x16C20000) & (((v526 ^ 0xE00692C2) << 8) & 0x60770000 ^ 0x610000 ^ (((v526 ^ 0xE00692C2) << 8) ^ 0x77960000) & (v526 ^ 0xE00692C2)))) ^ v516;
  v529 = (v519 - 1465018464) ^ v517 ^ (((v519 - 1465018464) ^ 0x16EB6F5A) - 1886093644) ^ (((v519 - 1465018464) ^ 0xCEFC82FD) + 1468240661) ^ (((v519 - 1465018464) ^ 0xE9685C6C) + 1880575366) ^ (((v519 - 1465018464) ^ 0x57FF5FDD) - 830452171);
  v530 = v519 - (v489 + (((v517 ^ 0x3F963D9F) - 2044992215) ^ ((v517 ^ 0xB7093D9A) + 243590446) ^ ((v517 ^ 0x11F9EBB7) - 1468779775)));
  v531 = v528 ^ v518 ^ 0x8D21BD81;
  v532 = ((v516 ^ 0xEF78093E) - 499665173) ^ ((v516 ^ 0x8D8863A1) - 2134385546) ^ ((v516 ^ 0x8F64CA19) - 2111081010);
  v533 = ((v528 ^ v518 ^ 0x676A3845) + 364149308) ^ ((v528 ^ v518 ^ 0x1D6D4B51) + 1874004272) ^ ((v528 ^ v518 ^ 0x3F271E61) + 1308187680);
  v534 = 2 * (v531 & 0x7349EE3C ^ (v528 ^ v518 ^ 0x45206D75) & (v516 ^ 0x1EDD4EBA));
  v535 = ((v530 - 1191401920) ^ 0xB5BA746) & (2 * ((v530 - 1191401920) & 0xAA1B3650)) ^ (v530 - 1191401920) & 0xAA1B3650;
  v536 = ((2 * ((v530 - 1191401920) ^ 0xB5BC7E6)) ^ 0x4281E36C) & ((v530 - 1191401920) ^ 0xB5BC7E6) ^ (2 * ((v530 - 1191401920) ^ 0xB5BC7E6)) & 0xA140F1B6;
  v537 = v536 ^ 0xA1401092;
  v538 = (v536 ^ 0xE100) & (4 * v535) ^ v535;
  v539 = ((4 * v537) ^ 0x8503C6D8) & v537 ^ (4 * v537) & 0xA140F1B4;
  v540 = (v539 ^ 0x8100C080) & (16 * v538) ^ v538;
  v541 = ((16 * (v539 ^ 0x20403126)) ^ 0x140F1B60) & (v539 ^ 0x20403126) ^ (16 * (v539 ^ 0x20403126)) & 0xA140F1B0;
  v542 = v540 ^ 0xA140F1B6 ^ (v541 ^ 0x1100) & (v540 << 8);
  v543 = (v530 - 1191401920) ^ v506 ^ (2 * ((v542 << 16) & 0x21400000 ^ v542 ^ ((v542 << 16) ^ 0x71B60000) & (((v541 ^ 0xA140E096) << 8) & 0x21400000 ^ 0x21000000 ^ (((v541 ^ 0xA140E096) << 8) ^ 0x40F10000) & (v541 ^ 0xA140E096))));
  v544 = (((v518 ^ 0xB8706691) - 1418250789) ^ ((v518 ^ 0xA79BFD20) - 1264800148) ^ ((v518 ^ 0xABC50B05) - 1195222961)) - 2046212782;
  v545 = v532 + v533 - (((v534 ^ 0x9481B0BF) + 1843722017) ^ ((v534 ^ 0xAF4AB44C) + 1445983188) ^ ((v534 ^ 0xBBC8849B) + 1118683909)) - 897288881;
  v546 = ((2 * (v545 & 0x9609044A)) & 0x20020800 | v545 & 0x9609044A) ^ (2 * (v545 & 0x9609044A)) & (v545 ^ 0x64E78F22);
  v547 = ((2 * (v545 ^ 0x64E78F22)) ^ 0xE5DD16D0) & (v545 ^ 0x64E78F22) ^ (2 * (v545 ^ 0x64E78F22)) & 0xF2EE8B68;
  v548 = v547 ^ 0x12228928;
  v549 = (v547 ^ 0xE24E8A40) & (4 * v546) ^ v546;
  v550 = ((4 * v548) ^ 0xCBBA2DA0) & v548 ^ (4 * v548) & 0xF2EE8B68;
  v551 = (v550 ^ 0xC2AA0920) & (16 * v549) ^ v549;
  v552 = ((16 * (v550 ^ 0x30448248)) ^ 0x2EE8B680) & (v550 ^ 0x30448248) ^ (16 * (v550 ^ 0x30448248)) & 0xF2EE8B60;
  v553 = v551 ^ 0xF2EE8B68 ^ (v552 ^ 0x22E88200) & (v551 << 8);
  v554 = v545 ^ (2 * ((v553 << 16) & 0x72EE0000 ^ v553 ^ ((v553 << 16) ^ 0xB680000) & (((v552 ^ 0xD0060968) << 8) & 0x72EE0000 ^ 0x10640000 ^ (((v552 ^ 0xD0060968) << 8) ^ 0x6E8B0000) & (v552 ^ 0xD0060968))));
  v555 = ((v544 ^ 0x2A3C379E) - 2046141902) ^ v544 ^ ((v544 ^ 0x2B81D08E) - 2018001630) ^ ((v544 ^ 0x2F0B8AFF) - 2093095087) ^ ((v544 ^ 0x7D7FFFBF) - 783707631) ^ v531;
  v556 = ((v554 ^ v531 ^ a18) + 296820933) ^ ((v554 ^ v531 ^ 0xC5DD1C9A) - 623667014) ^ ((v554 ^ v531 ^ 0x74677A13) + 1802108465);
  LOBYTE(STACK[0x94C]) = v554 ^ 0x58;
  v557 = v493 - v491 + (((v528 ^ 0xBEDA436B) + 553430434) ^ ((v528 ^ 0xEEAA26E8) + 1888274467) ^ ((v528 ^ 0xA17E9842) + 1062762121)) - v556 - 2003396502;
  v558 = ((v557 ^ 0x15778B7C) - 1789931762) ^ v557 ^ ((v557 ^ 0xD8C6199D) + 1493065197) ^ ((v557 ^ 0x4D999C94) - 845031194) ^ ((v557 ^ 0xFFEFB5FB) + 2144858507);
  v559 = v529 ^ 0x5875A5CF ^ v506;
  v560 = (((v529 ^ 0xE0F6D529) + 1199345434) ^ ((v529 ^ 0x6E00C05) - 1586866634) ^ ((v529 ^ 0x19F0DC88) - 1099266375)) - 1669106459;
  v561 = v560 ^ v529 ^ 0x5875A5CF ^ ((v560 ^ 0xC6BB01F7) + 583181169) ^ ((v560 ^ 0x75535A16) - 1859454830) ^ ((v560 ^ 0x5719F866) - 1285530910) ^ ((v560 ^ 0xFF77FEFF) + 453926009) ^ v543;
  LOBYTE(STACK[0x83D]) = v555 ^ 0x90;
  v562 = (((v517 ^ 0xA99CF656) + 269561570) ^ ((v517 ^ 0x204FBCD8) - 1715313552) ^ ((v517 ^ 0x10B5A13C) - 1455916660)) - v488 - v530 + 1953688380 + (((v543 ^ 0x559B6114) - 1532175267) ^ ((v543 ^ 0xF2C88450) + 67057945) ^ ((v543 ^ 0x6FB916F5) - 1634817090));
  v563 = ((v562 ^ 0xE7D2A82E) + 287966230) ^ v562 ^ ((v562 ^ 0x419C6B88) - 1218132044) ^ ((v562 ^ 0xF0364B9D) + 114223015) ^ ((v562 ^ 0x5F7FDBFF) - 1450739771);
  LOBYTE(STACK[0xAA5]) = v558 ^ 0xBA;
  LOBYTE(STACK[0xAC0]) = ((v562 ^ 0x2E) + 22) ^ v562 ^ ((v562 ^ 0x88) - 76) ^ ((v562 ^ 0x9D) - 89) ^ (-v562 - 60) ^ 0x37;
  v564 = (((v554 ^ 0x5048996A) - 784724754) ^ ((v554 ^ 0xB7376A35) + 910557107) ^ ((v554 ^ 0xB22F33) - 2118075723)) - v556;
  v565 = ((v555 ^ 0x60745A68) + 821021417) ^ ((v555 ^ 0xA54D7737) - 170465352) ^ ((v555 ^ 0x5EF16FFB) + 241893244);
  v566 = v565 + 1106686430;
  LOBYTE(STACK[0x967]) = v559 ^ 0xE3;
  LOBYTE(STACK[0x858]) = v561 ^ 0x51;
  LOBYTE(v529) = ((v556 - 116) ^ 0x25) & (2 * ((v556 - 116) & 0x26)) ^ (v556 - 116) & 0x26;
  LOBYTE(v517) = ((2 * ((v556 - 116) ^ 0x21)) ^ 0xE) & ((v556 - 116) ^ 0x21) ^ (2 * ((v556 - 116) ^ 0x21)) & 6;
  LOBYTE(v517) = (v556 - 116) ^ (2 * (((4 * v517) ^ 0x10) & v517 & ((16 * (v529 ^ 7 ^ v517 & (4 * v529))) ^ 0x70) ^ v529 ^ 7 ^ v517 & (4 * v529))) ^ 0x1C;
  v567 = v556 - v565 - v564;
  v568 = v567 - 338018451;
  LOBYTE(STACK[0x9B1]) = (((v530 + 64) ^ 0xD3) - 99) ^ (v530 + 64) ^ (((v530 + 64) ^ 0x90) - 32) ^ (((v530 + 64) ^ 0xD) + 67) ^ (((v530 + 64) ^ 0xFE) - 78) ^ 0x43;
  v569 = ((v566 ^ 0xA49A73CC) + 71789545) ^ v566 ^ ((v566 ^ 0xEE4C5301) + 1318144806) ^ ((v566 ^ 0xE38B38E1) + 1129717958) ^ ((v566 ^ 0xF67FFFF7) + 1453516756) ^ (v567 - 338018451) ^ (((v567 - 338018451) ^ 0x7A8327AD) + 762942579) ^ (((v567 - 338018451) ^ 0x384533B6) + 1874821226) ^ (((v567 - 338018451) ^ 0x15FCE7C4) + 1107711004) ^ (((v567 - 338018451) ^ 0xFF3FBFFF) - 1463481311);
  v570 = (((v559 ^ 0x7DAD2D6D) - 2007297231) ^ ((v559 ^ 0x2501251) - 140104691) ^ ((v559 ^ 0x2AD7772C) - 551466638)) - v530;
  v571 = v570 + 841697536;
  LOBYTE(STACK[0x996]) = v517;
  v572 = ((v561 ^ 0xBB387DFE) + 1724604873) ^ ((v561 ^ 0xC060670E) + 496204601) ^ ((v561 ^ 0xFA71452) - 766244763);
  v573 = v572 - 2092802897;
  v574 = v530 - (v570 + 841697536) - v572;
  v575 = v574 + 767107005;
  v576 = (2 * ((v574 + 767107005) & 0x6662CF1E)) & ((v574 + 767107005) ^ 0x7458EFDF) ^ (v574 + 767107005) & 0x6662CF1E;
  v577 = ((2 * ((v574 + 767107005) ^ 0xF419FFE3)) ^ 0x24F661FA) & ((v574 + 767107005) ^ 0xF419FFE3) ^ (2 * ((v574 + 767107005) ^ 0xF419FFE3)) & 0x927B30FC;
  v578 = v577 ^ 0x92091005;
  v579 = (v577 ^ 0x1220F8) & (4 * v576) ^ v576;
  v580 = ((4 * v578) ^ 0x49ECC3F4) & v578 ^ (4 * v578) & 0x927B30FC;
  v581 = (v580 ^ 0x6800E0) & (16 * v579) ^ v579;
  v582 = ((16 * (v580 ^ 0x92133009)) ^ 0x27B30FD0) & (v580 ^ 0x92133009) ^ (16 * (v580 ^ 0x92133009)) & 0x927B30F0;
  v583 = v581 ^ 0x927B30FD ^ (v582 ^ 0x2330000) & (v581 << 8);
  v584 = (v573 ^ 0x51D88AD4) & (2 * (v573 & 0x81D92CE4)) ^ v573 & 0x81D92CE4;
  v585 = ((2 * (v573 ^ 0x5158D314)) ^ 0xA103FFE0) & (v573 ^ 0x5158D314) ^ (2 * (v573 ^ 0x5158D314)) & 0xD081FFF0;
  v586 = v585 ^ 0x50800010;
  v587 = (v585 ^ 0x3FFE0) & (4 * v584) ^ v584;
  v588 = ((4 * v586) ^ 0x4207FFC0) & v586 ^ (4 * v586) & 0xD081FFF0;
  v589 = (v588 ^ 0x4001FFC0) & (16 * v587) ^ v587;
  v590 = ((16 * (v588 ^ 0x90800030)) ^ 0x81FFF00) & (v588 ^ 0x90800030) ^ (16 * (v588 ^ 0x90800030)) & 0xD081FFF0;
  v591 = v589 ^ 0xD081FFF0 ^ (v590 ^ 0x1FF00) & (v589 << 8);
  v592 = (((v558 ^ 0x68B1801C) - 139413285) ^ ((v558 ^ 0x862E18C7) + 422518786) ^ ((v558 ^ 0x67F775D8) - 118076129)) - (v567 - 338018451);
  v593 = (v574 + 767107005) ^ v573 ^ (2 * (v583 ^ v591 ^ (v591 << 16) & 0x50810000 ^ ((v591 << 16) ^ 0x7FF00000) & (((v590 ^ 0xD08000F0) << 8) & 0xD0810000 ^ 0x50000000 ^ (((v590 ^ 0xD08000F0) << 8) ^ 0x81FF0000) & (v590 ^ 0xD08000F0)) ^ (v583 << 16) & 0x127B0000 ^ ((v583 << 16) ^ 0x30FD0000) & (((v582 ^ 0x9048302D) << 8) & 0x127B0000 ^ 0x4B0000 ^ (((v582 ^ 0x9048302D) << 8) ^ 0x7B300000) & (v582 ^ 0x9048302D))));
  v594 = (((v563 ^ 0xFE46A524) - 512759557) ^ ((v563 ^ 0x187D59A9) + 122950776) ^ ((v563 ^ 0x1993F9C4) + 112899099)) - (v574 + 767107005) + 68213019;
  LOBYTE(v555) = (2 * ((v574 - 67) & 0x1E)) & ((v574 - 67) ^ 0x5D) ^ (v574 - 67) & 0x1E;
  LOBYTE(v563) = ((2 * ((v574 - 67) ^ 0x71)) ^ 0xDE) & ((v574 - 67) ^ 0x71) ^ (2 * ((v574 - 67) ^ 0x71)) & 0x6E;
  LOBYTE(v554) = v563 ^ 0x21;
  LOBYTE(v563) = v555 ^ 0x6F ^ (v563 ^ 0x49) & (4 * v555);
  LOBYTE(STACK[0x793]) = (v574 - 67) ^ (2 * ((16 * v563) & 0x60 ^ v563 ^ ((16 * v563) ^ 0x70) & ((4 * v554) & 0x60 ^ ((4 * v554) ^ 0xB0) & v554 ^ 0x40))) ^ 0xF3;
  v595 = v567 + 1725588474 + (((v569 ^ 0x39C5FEE0) + 985416672) ^ ((v569 ^ 0x7083CDA2) + 1945792670) ^ ((v569 ^ 0xBE6198B9) - 1122491001));
  v596 = (v595 ^ 0xCC1B76AD) & (2 * (v595 & 0xE89C788E)) ^ v595 & 0xE89C788E;
  v597 = ((2 * (v595 ^ 0xD2B46B1)) ^ 0xCB6E7C7E) & (v595 ^ 0xD2B46B1) ^ (2 * (v595 ^ 0xD2B46B1)) & 0xE5B73E3E;
  v598 = v597 ^ 0x24910201;
  v599 = (v597 ^ 0xC0222438) & (4 * v596) ^ v596;
  v600 = ((4 * v598) ^ 0x96DCF8FC) & v598 ^ (4 * v598) & 0xE5B73E3C;
  v601 = (v600 ^ 0x84943820) & (16 * v599) ^ v599;
  v602 = ((16 * (v600 ^ 0x61230603)) ^ 0x5B73E3F0) & (v600 ^ 0x61230603) ^ (16 * (v600 ^ 0x61230603)) & 0xE5B73E30;
  v603 = v601 ^ 0xE5B73E3F ^ (v602 ^ 0x41332200) & (v601 << 8);
  v604 = v595 ^ (2 * ((v603 << 16) & 0x65B70000 ^ v603 ^ ((v603 << 16) ^ 0x3E3F0000) & (((v602 ^ 0xA4841C0F) << 8) & 0x65B70000 ^ 0x40810000 ^ (((v602 ^ 0xA4841C0F) << 8) ^ 0x373E0000) & (v602 ^ 0xA4841C0F))));
  LOBYTE(v602) = ((v570 - 109) ^ 0xFD) & (2 * ((v570 - 109) & 0xF8)) ^ (v570 - 109) & 0xF8;
  LOBYTE(v603) = ((2 * ((v570 - 109) ^ 0xED)) ^ 0x2A) & ((v570 - 109) ^ 0xED) ^ (2 * ((v570 - 109) ^ 0xED)) & 0x14;
  LOBYTE(STACK[0x749]) = (v570 - 109) ^ (2 * ((v603 ^ 0x15) & (16 * (v603 & (4 * v602) ^ v602)) & ((4 * (v603 ^ 0x15)) ^ 0x40) ^ v603 & (4 * v602) ^ v602)) ^ 0xB;
  v605 = v574 - 1608663135 + (((v593 ^ 0xCCFE3912) + 945599497) ^ ((v593 ^ 0x19E5CFA8) - 314096973) ^ ((v593 ^ 0x36A78B5A) - 1039858111));
  LOBYTE(v558) = ((v592 - 1) ^ 0x52) & (2 * ((v592 - 1) & 0x5B)) ^ (v592 - 1) & 0x5B;
  LOBYTE(v603) = ((2 * ((v592 - 1) ^ 0x42)) ^ 0x32) & ((v592 - 1) ^ 0x42) ^ (2 * ((v592 - 1) ^ 0x42)) & 0x18;
  LOBYTE(STACK[0x887]) = (v592 - 1) ^ (2 * ((((4 * (v603 ^ 9)) ^ 0x60) & (v603 ^ 9) ^ (4 * (v603 ^ 9)) & 0x10) & (16 * ((v603 ^ 0x10) & (4 * v558) ^ v558)) ^ (v603 ^ 0x10) & (4 * v558) ^ v558)) ^ 0x6F;
  LOBYTE(STACK[0x8A2]) = ((v594 ^ 0x19) + 56) ^ v594 ^ ((v594 ^ 0x56) + 121) ^ ((v594 ^ 0xE1) - 48) ^ ((v594 ^ 0x7F) + 82) ^ 0x22;
  LOBYTE(v591) = ((2 * (v564 + 65)) & 0x42 ^ 0x21) & (v564 + 65);
  LOBYTE(v603) = ((2 * ((v564 + 65) ^ 0xF7)) ^ 0xAC) & ((v564 + 65) ^ 0xF7) ^ (2 * ((v564 + 65) ^ 0xF7)) & 0xD6;
  LOBYTE(v603) = (v564 + 65) ^ (2 * (((4 * (v603 ^ 0x52)) & 0xD0 ^ 0x50 ^ ((4 * (v603 ^ 0x52)) ^ 0x50) & (v603 ^ 0x52)) & (16 * ((v603 ^ 0xD4) & (4 * v591) ^ v591)) ^ (v603 ^ 0xD4) & (4 * v591) ^ v591));
  LOBYTE(v603) = (((v603 ^ 0x69) + 42) ^ ((v603 ^ 0x5D) + 30) ^ ((v603 ^ 0x15) + 86)) + 40;
  LOBYTE(v591) = v603 & 0x45 ^ 0x57;
  LOBYTE(v591) = v603 ^ (2 * ((v603 ^ 0x5E) & (2 * ((v603 ^ 0x5E) & (2 * ((v603 ^ 0x5E) & (2 * ((v603 ^ 0x5E) & (2 * ((v603 ^ 0x5E) & (2 * (((2 * (v603 & 0x1F)) ^ 0x1A) & (v603 ^ 0x1E) ^ v591)) ^ v591)) ^ v591)) ^ v591)) ^ v591)) ^ v591)) ^ 0x71;
  LOBYTE(STACK[0x9FB]) = v593 ^ 0x13;
  LOBYTE(STACK[0x9E0]) = v569 ^ 0xCF;
  v606 = v594 - v605;
  LOBYTE(STACK[0x72E]) = v591;
  v607 = v575 - (v570 + 841697536) + 771343871;
  v608 = (v607 ^ 0xE0B23742) & (2 * (v607 & 0x82BB4794)) ^ v607 & 0x82BB4794;
  v609 = ((2 * (v607 ^ 0xE5B6BB4A)) ^ 0xCE1BF9BC) & (v607 ^ 0xE5B6BB4A) ^ (2 * (v607 ^ 0xE5B6BB4A)) & 0x670DFCDE;
  v610 = v609 ^ 0x21040442;
  v611 = (v609 ^ 0x6093890) & (4 * v608) ^ v608;
  v612 = ((4 * v610) ^ 0x9C37F378) & v610 ^ (4 * v610) & 0x670DFCDC;
  v613 = (v612 ^ 0x405F040) & (16 * v611) ^ v611;
  v614 = ((16 * (v612 ^ 0x63080C86)) ^ 0x70DFCDE0) & (v612 ^ 0x63080C86) ^ (16 * (v612 ^ 0x63080C86)) & 0x670DFCD0;
  v615 = v613 ^ 0x670DFCDE ^ (v614 ^ a17) & (v613 << 8);
  v616 = (v570 - 1604673597) ^ 0xEEB51CF;
  v617 = (2 * ((v570 - 1604673597) & 0x83BE749C)) & v616 ^ (v570 - 1604673597) & 0x83BE749C ^ ((2 * ((v570 - 1604673597) & 0x83BE749C)) & 0x5542110 | 0x8000002);
  v618 = (2 * v616) & 0x8D552552 ^ 0x85552551 ^ ((2 * v616) ^ 0x1AAA4AA6) & v616;
  v619 = (4 * v617) & 0x8D552550 ^ v617 ^ ((4 * v617) ^ a16) & v618;
  v620 = (4 * v618) & 0x8D552550 ^ 0x88012013 ^ ((4 * v618) ^ 0x3554954C) & v618;
  v621 = (16 * v619) & 0x8D552550 ^ v619 ^ ((16 * v619) ^ 0x80000020) & v620;
  v622 = (16 * v620) & 0x8D552550 ^ 0x8052043 ^ ((16 * v620) ^ 0xD5525530) & v620;
  v623 = v621 ^ (v621 << 8) & 0x8D552500 ^ ((v621 << 8) ^ 0x200) & v622 ^ 0x5552551;
  v624 = v607 ^ (v570 - 1604673597) ^ (2 * ((v623 << 16) & 0xD550000 ^ v623 ^ ((v623 << 16) ^ 0x25530000) & ((v622 << 8) & 0x8D550000 ^ 0x8500000 ^ ((v622 << 8) ^ 0x55250000) & v622) ^ v615 ^ (v615 << 16) & 0x670D0000 ^ ((v615 << 16) ^ 0x7CDE0000) & (((v614 ^ 0x700301E) << 8) & 0x670D0000 ^ 0x62010000 ^ (((v614 ^ 0x700301E) << 8) ^ 0xDFC0000) & (v614 ^ 0x700301E))));
  v625 = v606 + 1643280395;
  v626 = (v625 ^ 0x2347ADFD) & (2 * (v625 & 0xB057A1E0)) ^ v625 & 0xB057A1E0;
  v627 = ((2 * ((v606 + 1643280395) ^ 0x436AAFBD)) ^ 0xE67A1CBA) & ((v606 + 1643280395) ^ 0x436AAFBD) ^ (2 * ((v606 + 1643280395) ^ 0x436AAFBD)) & 0xF33D0E5C;
  v628 = v627 ^ 0x11050245;
  v629 = (v627 ^ 0xC2380C00) & (4 * v626) ^ v626;
  v630 = ((4 * v628) ^ 0xCCF43974) & v628 ^ (4 * v628) & 0xF33D0E5C;
  v631 = (v630 ^ 0xC0340840) & (16 * v629) ^ v629;
  v632 = ((16 * (v630 ^ 0x33090609)) ^ 0x33D0E5D0) & (v630 ^ 0x33090609) ^ (16 * (v630 ^ 0x33090609)) & 0xF33D0E50;
  v633 = v631 ^ 0xF33D0E5D ^ (v632 ^ 0x3310040D) & (v631 << 8);
  v634 = v625 ^ (2 * ((v633 << 16) & 0x733D0000 ^ v633 ^ ((v633 << 16) ^ 0xE5D0000) & (((v632 ^ 0xC02D0A0D) << 8) & 0xF33D0000 ^ 0x42310000 ^ (((v632 ^ 0xC02D0A0D) << 8) ^ 0x3D0E0000) & (v632 ^ 0xC02D0A0D))));
  v635 = v568 - v564 + 1717025926;
  v636 = v592 - (((v604 ^ 0x2B424CB0) - 2063255101) ^ ((v604 ^ 0xEA193DD6) + 1147029669) ^ ((v604 ^ 0xAAC77596) + 75497701)) - 1006172440;
  v637 = (v636 ^ 0x89EF29E9) & (2 * (v636 & 0xCD8E29F0)) ^ v636 & 0xCD8E29F0;
  v638 = ((2 * (v636 ^ 0xAF72BE9)) ^ 0x8EF20432) & (v636 ^ 0xAF72BE9) ^ (2 * (v636 ^ 0xAF72BE9)) & 0xC7790218;
  v639 = v638 ^ 0x41090209;
  v640 = (v638 ^ 0x7F00000) & (4 * v637) ^ v637;
  v641 = ((4 * v639) ^ 0x1DE40864) & v639 ^ (4 * v639) & 0xC7790218;
  v642 = v640 ^ 0xC7790219 ^ (v641 ^ 0x5600000) & (16 * v640);
  v643 = (16 * (v641 ^ 0xC2190219)) & 0xC7790210 ^ 0x80690209 ^ ((16 * (v641 ^ 0xC2190219)) ^ 0x77902190) & (v641 ^ 0xC2190219);
  v644 = (v642 << 8) & 0xC7790200 ^ v642 ^ ((v642 << 8) ^ 0x79021900) & v643;
  v645 = v636 ^ (2 * ((v644 << 16) & 0x47790000 ^ v644 ^ ((v644 << 16) ^ 0x2190000) & ((v643 << 8) & 0xC7790000 ^ 0x6790000 ^ ((v643 << 8) ^ 0x79020000) & v643)));
  LOBYTE(v644) = (2 * (v568 ^ 0xAB)) & 0x4A ^ 0x49 ^ ((2 * (v568 ^ 0xAB)) ^ 0x96) & (v568 ^ 0xAB);
  LOBYTE(v643) = v568 & 0xE0 ^ 0x4B ^ (v568 ^ 0xEB) & (2 * (v568 & 0xE0));
  LOBYTE(v644) = v568 ^ (2 * ((16 * v643) & 0x40 ^ v643 ^ ((4 * v644) & 0x48 ^ ((4 * v644) ^ 0x20) & v644 ^ 0x40) & ((16 * v643) ^ 0x30))) ^ 0x42;
  LOBYTE(v568) = v570 + 97;
  LOBYTE(STACK[0xA45]) = v634 ^ 0xA9;
  LOBYTE(v643) = (v568 ^ 0x63) & (2 * (v568 & 0xB)) ^ v568 & 0xB;
  LOBYTE(v570) = ((2 * ((v570 + 97) ^ 0x67)) ^ 0xD8) & ((v570 + 97) ^ 0x67) ^ (2 * ((v570 + 97) ^ 0x67)) & 0x6C;
  LOBYTE(v639) = v570 ^ 0x24;
  LOBYTE(v570) = v643 ^ 0x6C ^ (v570 ^ 0x48) & (4 * v643);
  LOBYTE(STACK[0x8EC]) = v568 ^ (2 * ((16 * v570) & 0x60 ^ v570 ^ ((16 * v570) ^ 0x40) & ((4 * v639) & 0x60 ^ ((4 * v639) ^ 0xB0) & v639 ^ 0x40))) ^ 0xA0;
  v646 = v564 - 86738083;
  v647 = ((v564 - 86738083) ^ 0x74E2EE0B) & (2 * ((v564 - 86738083) & 0x6684E842)) ^ (v564 - 86738083) & 0x6684E842;
  v648 = ((2 * ((v564 - 86738083) ^ 0x74EBAE0F)) ^ 0x24DE8C9A) & ((v564 - 86738083) ^ 0x74EBAE0F) ^ (2 * ((v564 - 86738083) ^ 0x74EBAE0F)) & 0x126F464C;
  v649 = v648 ^ 0x12214245;
  v650 = (v648 ^ 0x6004C) & (4 * v647) ^ v647;
  v651 = ((4 * v649) ^ 0x49BD1934) & v649 ^ (4 * v649) & 0x126F464C;
  v652 = (v651 ^ 0x2D0000) & (16 * v650) ^ v650;
  v653 = ((16 * (v651 ^ 0x12424649)) ^ 0x26F464D0) & (v651 ^ 0x12424649) ^ (16 * (v651 ^ 0x12424649)) & 0x126F4640;
  v654 = v652 ^ 0x126F464D ^ (v653 ^ 0x2644400) & (v652 << 8);
  v655 = (v654 << 16) & 0x126F0000 ^ v654 ^ ((v654 << 16) ^ 0x464D0000) & (((v653 ^ 0x100B020D) << 8) & 0x126F0000 ^ 0x10290000 ^ (((v653 ^ 0x100B020D) << 8) ^ 0x6F460000) & (v653 ^ 0x100B020D));
  LOBYTE(STACK[0x778]) = v644;
  LOBYTE(v583) = (v564 + 65) ^ (-98 - v564) ^ (((v564 + 65) ^ 0x8C) - 83) ^ (((v564 + 65) ^ 0x74) + 85) ^ (((v564 + 65) ^ 0xD8) - 7);
  LOBYTE(v583) = (((v583 ^ 0xF2) + 50) ^ ((v583 ^ 0xEC) + 48) ^ ((v583 ^ 0xC1) + 3)) + 73;
  LOBYTE(v644) = v583 & 0xCA ^ 0xB3;
  LOBYTE(STACK[0x8D1]) = v583 ^ (2 * ((v583 ^ 0x64) & (2 * ((v583 ^ 0x64) & (2 * ((v583 ^ 0x64) & (2 * ((v583 ^ 0x64) & (2 * ((v583 ^ 0x64) & (2 * ((v583 ^ 0x64) & 0x2E ^ v644)) ^ v644)) ^ v644)) ^ v644)) ^ v644)) ^ v644)) ^ 0xFE;
  v656 = ((v604 ^ 0xC5BA5B22) - 991482370) ^ ((v604 ^ 0x10DCD7EA) + 293708086) ^ ((v604 ^ 0x2BC405E8) + 714699576);
  LOBYTE(STACK[0x7C2]) = v604 ^ 0x14;
  v657 = v564 - v656 - 847415983;
  v658 = (v657 ^ 0x39814552) & (2 * (v657 & 0xBD81895B)) ^ v657 & 0xBD81895B;
  v659 = ((2 * (v657 ^ 0x2B8057C6)) ^ 0x2C03BD3A) & (v657 ^ 0x2B8057C6) ^ (2 * (v657 ^ 0x2B8057C6)) & 0x9601DE9C;
  v660 = v659 ^ 0x92004285;
  v661 = (v659 ^ 0x4000C18) & (4 * v658) ^ v658;
  v662 = ((4 * v660) ^ 0x58077A74) & v660 ^ (4 * v660) & 0x9601DE9C;
  v663 = (v662 ^ 0x10015A10) & (16 * v661) ^ v661;
  v664 = ((16 * (v662 ^ 0x86008489)) ^ 0x601DE9D0) & (v662 ^ 0x86008489) ^ (16 * (v662 ^ 0x86008489)) & 0x9601DE90;
  v665 = v663 ^ 0x9601DE9D ^ (v664 ^ 0x1C800) & (v663 << 8);
  v666 = v657 ^ (2 * ((v665 << 16) & 0x16010000 ^ v665 ^ ((v665 << 16) ^ 0x5E9D0000) & (((v664 ^ 0x9600160D) << 8) & 0x16010000 ^ 0x16010000 ^ (((v664 ^ 0x9600160D) << 8) ^ 0x1DE0000) & (v664 ^ 0x9600160D))));
  v667 = ((v605 ^ 0xFC511CDB) + 546185958) ^ v605 ^ ((v605 ^ 0xEC25424D) + 821722228) ^ ((v605 ^ 0xC4AB62AC) + 410279059) ^ ((v605 ^ 0xF7FFFDFB) + 723567558);
  v668 = v635 ^ v646 ^ ((v635 ^ 0x54309AC) - 909470685) ^ ((v635 ^ 0x3777138B) - 67203578) ^ ((v635 ^ 0x6E3987ED) - 1565517212) ^ ((v635 ^ 0x6F7BFFBB) - 1544396234) ^ (2 * v655);
  LOBYTE(STACK[0xA2A]) = v645 ^ 0xF6;
  LOBYTE(STACK[0x7DD]) = ((v605 ^ 0xDB) - 26) ^ v605 ^ ((v605 ^ 0x4D) + 116) ^ ((v605 ^ 0xAC) - 109) ^ ((v605 ^ 0xFB) - 58) ^ 0xE2;
  LOBYTE(STACK[0x936]) = v624 ^ 0xE1;
  LOBYTE(STACK[0x91B]) = v668 ^ 0x9D;
  v669 = v656 - 757224655 + (((v645 ^ 0x4A20286F) + 521405750) ^ ((v645 ^ 0xE4771237) - 1320992914) ^ ((v645 ^ 0x6B19179A) + 1043151553));
  v670 = v571 - (((v667 ^ 0x7CA47C2) + 1287677636) ^ ((v667 ^ 0xED68A7D1) - 1503492399) ^ ((v667 ^ 0x5CBCAC02) + 397839620));
  v671 = (((v667 ^ 0xE3614725) - 1469356507) ^ ((v667 ^ 0x9C8C453D) - 679058371) ^ ((v667 ^ 0xC9F34E09) - 2097582327)) + 1706532469 + (((v634 ^ 0x112B8163) - 1539025954) ^ ((v634 ^ 0xAE5CA754) + 456357355) ^ ((v634 ^ 0xED609B6D) + 1477396948));
  v672 = (v671 ^ 0xB5331241) & (2 * (v671 & 0xB5BB8495)) ^ v671 & 0xB5BB8495;
  v673 = ((2 * (v671 ^ 0x9E751A43)) ^ 0x579D3DAC) & (v671 ^ 0x9E751A43) ^ (2 * (v671 ^ 0x9E751A43)) & 0x2BCE9ED6;
  v674 = v673 ^ 0x28428252;
  v675 = (v673 ^ 0x38C1484) & (4 * v672) ^ v672;
  v676 = ((4 * v674) ^ 0xAF3A7B58) & v674 ^ (4 * v674) & 0x2BCE9ED4;
  v677 = (v676 ^ 0x2B0A1A50) & (16 * v675) ^ v675;
  v678 = ((16 * (v676 ^ 0xC48486)) ^ a15) & (v676 ^ 0xC48486) ^ (16 * (v676 ^ 0xC48486)) & 0x2BCE9ED0;
  v679 = v677 ^ 0x2BCE9ED6 ^ (v678 ^ 0x28C88C00) & (v677 << 8);
  v680 = (v679 << 16) & 0x2BCE0000 ^ v679 ^ ((v679 << 16) ^ 0x1ED60000) & (((v678 ^ 0x3061296) << 8) & 0x2BCE0000 ^ 0x21400000 ^ (((v678 ^ 0x3061296) << 8) ^ 0x4E9E0000) & (v678 ^ 0x3061296));
  v681 = v666 ^ v668;
  v682 = v666 ^ v668 ^ v645;
  LOBYTE(v668) = (((v666 ^ 0x40) - 87) ^ ((v666 ^ 0xDD) + 54) ^ ((v666 ^ 0xFC) + 21)) - 67;
  LOBYTE(v674) = v668 & 0x92 ^ 0xBB;
  v683 = (v670 + 1416691664) ^ v624 ^ (((v670 + 1416691664) ^ 0x78881742) - 1128348433) ^ (((v670 + 1416691664) ^ 0x8CB7C07D) + 1216418770) ^ (((v670 + 1416691664) ^ 0x3C094C9B) - 130048200) ^ (((v670 + 1416691664) ^ 0xF3FFB7F7) + 935945308);
  v684 = ((v666 ^ 0x5A7C8999) + 249397170) ^ ((v666 ^ 0x5A0F737E) + 246318423) ^ ((v666 ^ 0xBDF3CE86) - 380487505);
  LOBYTE(STACK[0xA74]) = v668 ^ (2 * ((v668 ^ 0x3C) & (2 * ((v668 ^ 0x3C) & (2 * ((v668 ^ 0x3C) & (2 * ((v668 ^ 0x3C) & (2 * ((v668 ^ 0x3C) & (2 * ((v668 ^ 0x3C) & 0x2E ^ v674)) ^ v674)) ^ v674)) ^ v674)) ^ v674)) ^ v674)) ^ 0xA6;
  v685 = v669 ^ v682 ^ ((v669 ^ 0xF7B91249) + 1796294269) ^ ((v669 ^ 0xA8D69018) + 880722990) ^ ((v669 ^ 0x45C75664) - 647036334) ^ ((v669 ^ 0x79FF7FFF) - 447271989);
  v686 = v634 ^ v683;
  v687 = v671 ^ v634 ^ v683 ^ (2 * v680);
  v688 = (((v682 ^ 0xEDFA4AD8) + 130418918) ^ ((v682 ^ 0x554A7E88) - 1082770250) ^ ((v682 ^ 0xB5C82B5A) + 1609853288)) - v684;
  LOBYTE(STACK[0x980]) = v687 ^ 0xD1;
  v689 = (((v681 ^ 0x15AE114B) + 1431929300) ^ ((v681 ^ 0xE912BFBB) - 1444597980) ^ ((v681 ^ 0x348A9C38) + 1954352289)) - 179580399;
  v690 = ((v689 ^ 0x7FFF350B) - 166506707) ^ v689 ^ ((v689 ^ 0x6CE7965A) - 452203394) ^ ((v689 ^ 0x1AF4F976) - 1827110062) ^ ((v689 ^ 0x7FFFDFFF) - 166484519);
  v670 -= 363834842;
  v691 = (v670 ^ 0x43691711) & (2 * (v670 & 0x886DA75A)) ^ v670 & 0x886DA75A;
  v692 = ((2 * (v670 ^ 0x53601F91)) ^ 0xB61B7196) & (v670 ^ 0x53601F91) ^ (2 * (v670 ^ 0x53601F91)) & 0xDB0DB8CA;
  v693 = v692 ^ 0x49048849;
  v694 = (v692 ^ 0x2093080) & (4 * v691) ^ v691;
  v695 = ((4 * v693) ^ 0x6C36E32C) & v693 ^ (4 * v693) & 0xDB0DB8C8;
  v696 = (v695 ^ 0x4804A000) & (16 * v694) ^ v694;
  v697 = ((16 * (v695 ^ 0x930918C3)) ^ 0xB0DB8CB0) & (v695 ^ 0x930918C3) ^ (16 * (v695 ^ 0x930918C3)) & 0xDB0DB8C0;
  v698 = v696 ^ 0xDB0DB8CB ^ (v697 ^ 0x90098800) & (v696 << 8);
  v699 = v670 ^ (2 * ((v698 << 16) & 0x5B0D0000 ^ v698 ^ ((v698 << 16) ^ 0x38CB0000) & (((v697 ^ 0x4B04304B) << 8) & 0x5B0D0000 ^ 0x52050000 ^ (((v697 ^ 0x4B04304B) << 8) ^ 0xDB80000) & (v697 ^ 0x4B04304B))));
  v700 = (((v683 ^ 0x5D365424) - 1323001384) ^ ((v683 ^ 0x4016C137) - 1409020731) ^ ((v683 ^ 0x31E73952) - 571083614)) - 1921939909;
  v701 = ((v700 ^ 0x7CB7D0F0) - 989538708) ^ v700 ^ ((v700 ^ 0xF44FA0F7) + 1308403309) ^ ((v700 ^ 0xB14956DC) + 150622280) ^ ((v700 ^ 0x7FFDDFBF) - 967911131);
  v702 = (((v686 ^ 0x4B82B8EA) - 318744487) ^ ((v686 ^ 0xDC470195) + 2059788584) ^ ((v686 ^ 0xE915A864) + 1335314647)) - (((v699 ^ 0xA8F6F90D) + 1742489794) ^ ((v699 ^ 0xD4092251) + 455316382) ^ ((v699 ^ 0x729B0D90) - 1112425379));
  v703 = ((v684 - 520513296) ^ 0x4FFAEAC5) & (2 * ((v684 - 520513296) & 0x8FFACAC9)) ^ (v684 - 520513296) & 0x8FFACAC9;
  v704 = ((2 * ((v684 - 520513296) ^ 0x59BB7B45)) ^ 0xAC836318) & ((v684 - 520513296) ^ 0x59BB7B45) ^ (2 * ((v684 - 520513296) ^ 0x59BB7B45)) & 0xD641B18C;
  v705 = v704 ^ 0x52409084;
  v706 = (v704 ^ 0x4012108) & (4 * v703) ^ v703;
  v707 = ((4 * v705) ^ 0x5906C630) & v705 ^ (4 * v705) & 0xD641B18C;
  v708 = (v707 ^ 0x50008000) & (16 * v706) ^ v706;
  v709 = ((16 * (v707 ^ 0x8641318C)) ^ 0x641B18C0) & (v707 ^ 0x8641318C) ^ (16 * (v707 ^ 0x8641318C)) & 0xD641B180;
  v710 = v708 ^ 0xD641B18C ^ (v709 ^ 0x44011000) & (v708 << 8);
  v711 = v685 ^ (v684 - 520513296) ^ (2 * ((v710 << 16) & 0x56410000 ^ v710 ^ ((v710 << 16) ^ 0x318C0000) & (((v709 ^ 0x9240A10C) << 8) & 0x56410000 ^ 0x16400000 ^ (((v709 ^ 0x9240A10C) << 8) ^ 0x41B10000) & (v709 ^ 0x9240A10C))));
  v712 = v688 + (((v685 ^ 0x72ED02A) + 1082271905) ^ ((v685 ^ 0x40A2FA05) + 118358672) ^ ((v685 ^ 0x29A39EEF) + 1846503014));
  v713 = v711 ^ 0x9927FB20 ^ v690;
  LOBYTE(STACK[0xABE]) = v690 ^ 0xEC;
  LOBYTE(v709) = ((2 * (v702 + 22)) & 0x82 ^ 0x41) & (v702 + 22);
  LOBYTE(v690) = ((2 * ((v702 + 22) ^ 0x13)) ^ 0xA4) & ((v702 + 22) ^ 0x13) ^ (2 * ((v702 + 22) ^ 0x13)) & 0x52;
  LOBYTE(STACK[0x827]) = (v702 + 22) ^ (2 * (((4 * (v690 ^ 0x52)) & 0x50 ^ ((4 * (v690 ^ 0x52)) ^ 0x40) & (v690 ^ 0x52) ^ 0x40) & (16 * (v690 & (4 * v709) ^ v709)) ^ v690 & (4 * v709) ^ v709)) ^ 0xB2;
  v714 = (((v712 - 784069688) ^ 0x20A236E6) - 1940008930) ^ (v712 - 784069688) ^ (((v712 - 784069688) ^ 0x4EFDB411) - 503164181) ^ (((v712 - 784069688) ^ 0x42A06048) - 295729484) ^ (((v712 - 784069688) ^ 0x7FFFFBBB) - 754967231) ^ v711 ^ 0x9927FB20;
  LOBYTE(STACK[0xA8F]) = v699 ^ 0x3F;
  LOBYTE(STACK[0x965]) = v685 ^ 0xF4;
  v715 = v687 ^ v699;
  v716 = v687 ^ v699 ^ 0xD3C37154;
  v717 = (((v713 ^ 0x7A63DADA) - 1504274456) ^ ((v713 ^ 0x3F61A99D) - 480975711) ^ ((v713 ^ 0xC76010AE) + 458579348)) - (v712 - 784069688) + 1292545773;
  v718 = (v717 ^ 0x875C3238) & (2 * (v717 & 0xA79E3B42)) ^ v717 & 0xA79E3B42;
  v719 = ((2 * (v717 ^ 0xC45432B8)) ^ 0xC79413F4) & (v717 ^ 0xC45432B8) ^ (2 * (v717 ^ 0xC45432B8)) & 0x63CA09FA;
  v720 = v719 ^ 0x204A080A;
  v721 = (v719 ^ 0x2800110) & (4 * v718) ^ v718;
  v722 = ((4 * v720) ^ 0x8F2827E8) & v720 ^ (4 * v720) & 0x63CA09F8;
  v723 = (v722 ^ 0x30801E0) & (16 * v721) ^ v721;
  v724 = ((16 * (v722 ^ 0x60C20812)) ^ 0x3CA09FA0) & (v722 ^ 0x60C20812) ^ (16 * (v722 ^ 0x60C20812)) & 0x63CA09F0;
  v725 = v723 ^ 0x63CA09FA ^ (v724 ^ 0x20800900) & (v723 << 8);
  v726 = v717 ^ (2 * ((v725 << 16) & 0x63CA0000 ^ v725 ^ ((v725 << 16) ^ 0x9FA0000) & (((v724 ^ 0x434A005A) << 8) & 0x63CA0000 ^ 0x21C20000 ^ (((v724 ^ 0x434A005A) << 8) ^ 0x4A090000) & (v724 ^ 0x434A005A))));
  LOBYTE(STACK[0x80C]) = (v688 - 40) ^ (-15 - v688) ^ (((v688 - 40) ^ 0xC8) - 1) ^ (((v688 - 40) ^ 0x3F) + 10) ^ (((v688 - 40) ^ 0xC1) - 8) ^ 0xFD;
  LOBYTE(STACK[0xAD9]) = v701 ^ 0x97;
  v727 = v688 - (((v711 ^ 0x6168754D) + 129003923) ^ ((v711 ^ 0x5C3FEB7) + 1662777961) ^ ((v711 ^ 0x9FD96EB) + 1864733237)) + 162167442;
  v728 = (v727 ^ 0x8D2ADD4B) & (2 * (v727 & 0xA9AADE4C)) ^ v727 & 0xA9AADE4C;
  v729 = ((2 * (v727 ^ 0x8D7E7543)) ^ 0x49A9561E) & (v727 ^ 0x8D7E7543) ^ (2 * (v727 ^ 0x8D7E7543)) & 0x24D4AB0E;
  v730 = v729 ^ 0x2454A901;
  v731 = (v729 ^ 0x800201) & (4 * v728) ^ v728;
  v732 = ((4 * v730) ^ 0x9352AC3C) & v730 ^ (4 * v730) & 0x24D4AB0C;
  v733 = (v732 ^ 0x50A800) & (16 * v731) ^ v731;
  v734 = ((16 * (v732 ^ 0x24840303)) ^ 0x4D4AB0F0) & (v732 ^ 0x24840303) ^ (16 * (v732 ^ 0x24840303)) & 0x24D4AB00;
  v735 = v733 ^ 0x24D4AB0F ^ (v734 ^ 0x440A000) & (v733 << 8);
  v736 = v727 ^ 0xEC001656 ^ (2 * ((v735 << 16) & 0x24D40000 ^ v735 ^ ((v735 << 16) ^ 0x2B0F0000) & (((v734 ^ 0x20940B0F) << 8) & 0x24D40000 ^ 0x20540000 ^ (((v734 ^ 0x20940B0F) << 8) ^ 0x54AB0000) & (v734 ^ 0x20940B0F))));
  v737 = v716 ^ v701;
  v738 = v712 + 1551668393;
  v739 = (v712 + 1551668393) ^ 0xDD7E81F2;
  v740 = ((v712 + 1551668393) ^ 0x5DFF89F2) & (2 * ((v712 + 1551668393) & 0x59FFCDF8)) ^ (v712 + 1551668393) & 0x59FFCDF8;
  v741 = ((2 * v739) ^ 0x9029814) & v739 ^ (2 * v739) & 0x84814C0A;
  v742 = v741 ^ 0x8481440A;
  v743 = (v741 ^ 0x800) & (4 * v740) ^ v740;
  v744 = ((4 * v742) ^ 0x12053028) & v742 ^ (4 * v742) & 0x84814C08;
  v745 = (v744 ^ 0x10002) & (16 * v743) ^ v743;
  v746 = ((16 * (v744 ^ 0x84804C02)) ^ 0x4814C0A0) & (v744 ^ 0x84804C02) ^ (16 * (v744 ^ 0x84804C02)) & 0x84814C00;
  v747 = v745 ^ 0x84814C0A ^ (v746 ^ 0x4000) & (v745 << 8);
  v748 = v738 ^ (2 * ((v747 << 16) & 0x4810000 ^ v747 ^ ((v747 << 16) ^ 0x4C0A0000) & (((v746 ^ 0x84810C0A) << 8) & 0x84810000 ^ 0x4810000 ^ (((v746 ^ 0x84810C0A) << 8) ^ 0x14C0000) & (v746 ^ 0x84810C0A))));
  v749 = v714 ^ v736 ^ v726 ^ 0x49B7A9CF;
  v750 = v702 + (((v687 ^ 0x2F3DD011) + 869535882) ^ ((v687 ^ 0x7C1D1CF2) + 1626659947) ^ ((v687 ^ 0xDA5A64C1) - 961305510));
  v751 = v702 - (((v715 ^ 0xF50B6F9C) - 650649288) ^ ((v715 ^ 0x581A3670) + 1948694748) ^ ((v715 ^ 0x2A0F2702) + 104049066)) - 1807750244;
  v752 = (v751 ^ 0xFF9F7301) & (2 * (v751 & 0xFFDE7A01)) ^ v751 & 0xFFDE7A01;
  v753 = ((2 * (v751 ^ 0x65172301)) ^ 0x3592B200) & (v751 ^ 0x65172301) ^ (2 * (v751 ^ 0x65172301)) & 0x9AC95900;
  v754 = v753 ^ 0x8A494900;
  v755 = (v753 ^ 0x10801000) & (4 * v752) ^ v752;
  v756 = ((4 * v754) ^ 0x6B256400) & v754 ^ (4 * v754) & 0x9AC95900;
  v757 = v755 ^ 0x9AC95900 ^ (v756 ^ 0xA014000) & (16 * v755);
  v758 = (16 * (v756 ^ 0x90C81900)) & 0x9AC95900 ^ 0x12484900 ^ ((16 * (v756 ^ 0x90C81900)) ^ 0xAC959000) & (v756 ^ 0x90C81900);
  v759 = (v757 << 8) & 0x9AC95900 ^ v757 ^ ((v757 << 8) ^ 0xC9590000) & v758;
  v760 = v751 ^ (2 * ((v759 << 16) & 0x1AC90000 ^ v759 ^ ((v759 << 16) ^ 0x59000000) & ((v758 << 8) & 0x1AC90000 ^ 0x12800000 ^ ((v758 << 8) ^ 0xC9590000) & v758))) ^ 0xA23CF3FE;
  v761 = ((v750 + 1593250193) ^ 0xE078F382) & (2 * ((v750 + 1593250193) & 0xF470FB0B)) ^ (v750 + 1593250193) & 0xF470FB0B;
  v762 = ((2 * ((v750 + 1593250193) ^ 0xC0994590)) ^ 0x69D37D36) & ((v750 + 1593250193) ^ 0xC0994590) ^ (2 * ((v750 + 1593250193) ^ 0xC0994590)) & 0x34E9BE9A;
  v763 = v762 ^ 0x14288289;
  v764 = (v762 ^ 0x20C13C10) & (4 * v761) ^ v761;
  v765 = ((4 * v763) ^ 0xD3A6FA6C) & v763 ^ (4 * v763) & 0x34E9BE98;
  v766 = (v765 ^ 0x10A0BA00) & (16 * v764) ^ v764;
  v767 = ((16 * (v765 ^ 0x24490493)) ^ 0x4E9BE9B0) & (v765 ^ 0x24490493) ^ (16 * (v765 ^ 0x24490493)) & 0x34E9BE90;
  v768 = v766 ^ 0x34E9BE9B ^ (v767 ^ 0x489A800) & (v766 << 8);
  v769 = (v750 + 1593250193) ^ v716 ^ (2 * ((v768 << 16) & 0x34E90000 ^ v768 ^ ((v768 << 16) ^ 0x3E9B0000) & (((v767 ^ 0x3060160B) << 8) & 0x34E90000 ^ 0x14410000 ^ (((v767 ^ 0x3060160B) << 8) ^ 0x69BE0000) & (v767 ^ 0x3060160B))));
  LOBYTE(STACK[0x871]) = v769 ^ 0x74;
  v770 = (((v737 ^ 0xA4FE08DA) + 803111020) ^ ((v737 ^ 0x8D8B446) - 2080883464) ^ ((v737 ^ 0xBEB74A42) + 899138292)) - (v750 + 1593250193) - 1262421398;
  v771 = ((v770 ^ 0x55AF08B5) - 390888272) ^ v770 ^ ((v770 ^ 0x1F873E1) - 1125842948) ^ ((v770 ^ 0x6B4BB70E) - 698926315) ^ ((v770 ^ 0x7DFFBFBF) - 1058851930);
  LOBYTE(v768) = ((v770 ^ 0xB5) - 80) ^ v770 ^ ((v770 ^ 0xE1) - 4) ^ ((v770 ^ 0xE) + 21) ^ ((v770 ^ 0xBF) - 90) ^ 0x99;
  LOBYTE(STACK[0x9AF]) = v714 ^ v736 ^ 5;
  v772 = v760 ^ v769;
  v773 = (((v726 ^ 0xF81A91E4) + 1314047957) ^ ((v726 ^ 0xFA2D283F) + 1281719824) ^ ((v726 ^ a14) - 673069218)) + 1560731014;
  v774 = (v773 ^ 0xC8D3E9B0) & (2 * (v773 & 0xECD3C931)) ^ v773 & 0xECD3C931;
  v775 = ((2 * (v773 ^ 0x50D67B92)) ^ 0x780B6546) & (v773 ^ 0x50D67B92) ^ (2 * (v773 ^ 0x50D67B92)) & 0xBC05B2A2;
  v776 = v775 ^ 0x840492A1;
  v777 = (v775 ^ 0x30012000) & (4 * v774) ^ v774;
  v778 = ((4 * v776) ^ 0xF016CA8C) & v776 ^ (4 * v776) & 0xBC05B2A0;
  v779 = (v778 ^ 0xB0048280) & (16 * v777) ^ v777;
  v780 = ((16 * (v778 ^ 0xC013023)) ^ 0xC05B2A30) & (v778 ^ 0xC013023) ^ (16 * (v778 ^ 0xC013023)) & 0xBC05B2A0;
  v781 = v779 ^ 0xBC05B2A3 ^ (v780 ^ 0x80012200) & (v779 << 8);
  v782 = v773 ^ (2 * ((v781 << 16) & 0x3C050000 ^ v781 ^ ((v781 << 16) ^ 0x32A30000) & (((v780 ^ 0x3C049083) << 8) & 0x3C050000 ^ 0x38050000 ^ (((v780 ^ 0x3C049083) << 8) ^ 0x5B20000) & (v780 ^ 0x3C049083))));
  v783 = v782 ^ 0x47813A32;
  LOBYTE(STACK[0x856]) = v714 ^ 1;
  v784 = STACK[0x5A0];
  *(v784 + ((v748 ^ 0xF62840B5) & 0x2AA ^ 0xE7B7EE1C81F07AB3 ^ ((v748 ^ 0xF62840B5) & 0x2AA ^ 0xE7B7EE1C81F07819) & ((v748 ^ 0xF62840B5) & 0x2AA ^ 0xF7BFEE5FC5F4785DLL))) = v772 ^ 0x8B;
  LOBYTE(STACK[0x8BB]) = v771 ^ 0x16;
  v785 = (((v782 ^ 0x47813A32 ^ v748 ^ 0xF62840B5 ^ 0x63547A6B) - 1666480747) ^ ((v782 ^ 0x47813A32 ^ v748 ^ 0xF62840B5 ^ 0xEBBD1559) + 339929767) ^ ((v782 ^ 0x47813A32 ^ v748 ^ 0xF62840B5 ^ 0x9567EC2E) + 1788351442)) + 850597119;
  v786 = ((v785 ^ 0x1E52767F) - 1139624169) ^ v785 ^ ((v785 ^ 0x9414A6C1) + 911501225) ^ ((v785 ^ 0xA00401F7) + 38060191) ^ ((v785 ^ 0x77FDEFDF) - 709022025);
  v787 = v786 ^ 0x36A9F12C;
  v788 = v726 ^ 0x49B7A9CF ^ v736;
  v789 = (((v750 - 1564572061) ^ 0xFF437808) + 396529182) ^ (v750 - 1564572061) ^ (((v750 - 1564572061) ^ 0x782A7F9C) - 1865709174) ^ (((v750 - 1564572061) ^ 0x7DC8F18D) - 1792473191) ^ (((v750 - 1564572061) ^ a13) + 90048999);
  LOBYTE(v725) = v748 ^ 0xD8;
  v790 = v772 ^ v771 ^ 0x6380E699;
  LOBYTE(STACK[0x762]) = v789 ^ 0x19;
  v791 = (((v771 ^ 0x4BDF0EF6) - 677374063) ^ ((v771 ^ 0x4916F4BF) - 714478118) ^ ((v771 ^ 0x402A89AC) - 598372149)) - 2027722247;
  v792 = (v791 ^ 0x39F1489D) & (2 * (v791 & 0xB9F150C1)) ^ v791 & 0xB9F150C1;
  v793 = ((2 * (v791 ^ 0x4A91489F)) ^ 0xE6C030BC) & (v791 ^ 0x4A91489F) ^ (2 * (v791 ^ 0x4A91489F)) & 0xF360185E;
  v794 = v793 ^ 0x11200842;
  v795 = (v793 ^ 0xE240000C) & (4 * v792) ^ v792;
  v796 = ((4 * v794) ^ 0xCD806178) & v794 ^ (4 * v794) & 0xF360185C;
  v797 = (v796 ^ 0xC1000050) & (16 * v795) ^ v795;
  v798 = ((16 * (v796 ^ 0x32601806)) ^ 0x360185E0) & (v796 ^ 0x32601806) ^ (16 * (v796 ^ 0x32601806)) & 0xF3601850;
  v799 = v797 ^ 0xF360185E ^ (v798 ^ 0x32000000) & (v797 << 8);
  v800 = v791 ^ (2 * ((v799 << 16) & 0x73600000 ^ v799 ^ ((v799 << 16) ^ 0x185E0000) & (((v798 ^ 0xC160181E) << 8) & 0x73600000 ^ 0x13600000 ^ (((v798 ^ 0xC160181E) << 8) ^ 0x60180000) & (v798 ^ 0xC160181E))));
  LOBYTE(STACK[0x747]) = v725;
  LOBYTE(v725) = v760 ^ v768;
  v801 = (((v749 ^ 0x646434B8) - 760115584) ^ ((v749 ^ 0x17806350) - 1588209256) ^ ((v749 ^ 0xB2B7B7A0) + 73534824)) - (((v786 ^ 0xF99EF319) + 818478539) ^ ((v786 ^ 0x77892C45) - 1092672873) ^ ((v786 ^ 0xD3A8E1CA) + 452914970));
  LOBYTE(STACK[0x8A0]) = v726 ^ 0x82;
  v802 = (((v800 ^ v789 ^ 0x2D8DEAF9) - 21135954) ^ ((v800 ^ v789 ^ 0xFCDC95AA) + 803996415) ^ ((v800 ^ v789 ^ 0xB9FE16C4) + 1791918481)) + 1961742964;
  v803 = ((v802 ^ 0x5AF1ED7C) - 601460887) ^ v802 ^ ((v802 ^ 0xE847555) - 2007763134) ^ ((v802 ^ 0x13A612B5) - 1787719518) ^ ((v802 ^ 0x3EFBF777) - 1205045916);
  LOBYTE(v802) = ((v802 ^ 0x7C) + 105) ^ v802 ^ ((v802 ^ 0x55) + 66) ^ ((v802 ^ 0xB5) - 94) ^ ((v802 ^ 0x77) + 100) ^ 0x2D;
  v804 = v786 ^ 0x36A9F12C ^ v788;
  LOBYTE(STACK[0x9F9]) = v788 ^ 0x47;
  LOBYTE(STACK[0xA14]) = v725 ^ 0x7E;
  LOBYTE(STACK[0x791]) = (((v801 - 93) ^ 7) + 22) ^ (v801 - 93) ^ (((v801 - 93) ^ 0xA1) - 76) ^ (((v801 - 93) ^ 0xF0) - 29) ^ (((v801 - 93) ^ 0xBB) - 86) ^ 0xD9;
  LOBYTE(STACK[0x8EA]) = v786 ^ 0xA2;
  v805 = (((v790 ^ 0x2E3E751F) - 1081962519) ^ ((v790 ^ 0xBFA3755F) + 773820329) ^ ((v790 ^ 0x58702744) - 909320780)) - (((v803 ^ 0x61DC2D98) - 1076468149) ^ ((v803 ^ 0xD889E60E) + 109293021) ^ ((v803 ^ 0xC07DB67D) + 511180208));
  LOBYTE(v790) = (((v790 ^ 0x1F) - 23) ^ ((v790 ^ 0x5F) - 87) ^ ((v790 ^ 0x44) - 76)) - (((v803 ^ 0x98) + 75) ^ ((v803 ^ 0xE) - 35) ^ ((v803 ^ 0x7D) - 80)) - 16;
  LOBYTE(STACK[0x7AC]) = ((v790 ^ 0x79) + 45) ^ v790 ^ ((v790 ^ 0x3A) + 112) ^ ((v790 ^ 0x36) + 100) ^ ((v790 ^ 0xDF) - 117) ^ 0x59;
  LOBYTE(STACK[0x905]) = v803 ^ 0x18;
  v806 = (v801 + 151821349) ^ v782 ^ 0x47813A32 ^ (((v801 + 151821349) ^ 0x309E829A) - 1404169024) ^ (((v801 + 151821349) ^ 0xBED8E421) + 570978821) ^ (((v801 + 151821349) ^ 0x11D4D0DC) - 1929099526) ^ (((v801 + 151821349) ^ 0xFCBDDFBD) + 1617775001);
  LOBYTE(STACK[0xA43]) = v782 ^ 0x3F;
  v807 = v804 ^ v806;
  LOBYTE(v782) = v800 ^ 0xED;
  LOBYTE(STACK[0xA5E]) = v800 ^ 0xF2;
  v808 = (v805 - 2121326033) ^ v800 ^ 0x224C03ED ^ (((v805 - 2121326033) ^ 0xDF9142DF) - 1976905611) ^ (((v805 - 2121326033) ^ 0x5605702B) + 62841473) ^ (((v805 - 2121326033) ^ 0x5E2F305F) + 194290421) ^ (((v805 - 2121326033) ^ 0x7DFF6FFF) + 675609941);
  v809 = (((v800 & 0x29E509BC ^ 0x6C2B806C) - 110211913) ^ ((v800 & 0x29E509BC ^ 0x877F0C7D) + 305840296) ^ ((v800 & 0x29E509BC ^ 0xC3F08CAD) + 1454719096)) + (((v800 & 0x29E509BC ^ 0x59D24655) + 1609085365) ^ ((v800 & 0x29E509BC ^ 0x46FFBE11) + 1086671345) ^ ((v800 & 0x29E509BC ^ 0x1E6CF144) + 408290982)) + 1585940196;
  v810 = (v809 ^ 0xDF982992) & (2 * (v809 & 0xDC1AADD3)) ^ v809 & 0xDC1AADD3;
  v811 = ((2 * (v809 ^ 0x5F9C7A96)) ^ 0x70DAE8A) & (v809 ^ 0x5F9C7A96) ^ (2 * (v809 ^ 0x5F9C7A96)) & 0x8386D744;
  v812 = v811 ^ 0x80825145;
  v813 = (v811 ^ 0x48601) & (4 * v810) ^ v810;
  v814 = ((4 * v812) ^ 0xE1B5D14) & v812 ^ (4 * v812) & 0x8386D744;
  v815 = (v814 ^ 0x2025500) & (16 * v813) ^ v813;
  v816 = ((16 * (v814 ^ 0x81848241)) ^ 0x386D7450) & (v814 ^ 0x81848241) ^ (16 * (v814 ^ 0x81848241)) & 0x8386D740;
  v817 = v815 ^ 0x8386D745 ^ (v816 ^ 0x45400) & (v815 << 8);
  v818 = v809 ^ (2 * ((v817 << 16) & 0x3860000 ^ v817 ^ ((v817 << 16) ^ 0x57450000) & (((v816 ^ 0x83828305) << 8) & 0x3860000 ^ (((v816 ^ 0x83828305) << 8) ^ 0x6D70000) & (v816 ^ 0x83828305) ^ 0x1000000)));
  LOBYTE(v725) = v802 ^ v725 ^ v808;
  v819 = v787 ^ v783;
  v820 = (((v806 ^ 0x24C1C00C) + 783745666) ^ ((v806 ^ 0x6403D22) + 204930992) ^ ((v806 ^ 0x5E052BCD) + 1416882497)) + 783469501;
  v821 = (v820 ^ 0x21DC09AF) & (2 * (v820 & 0xB1DC41AE)) ^ v820 & 0xB1DC41AE;
  v822 = ((2 * (v820 ^ 0x60EC0AF3)) ^ 0xA26096BA) & (v820 ^ 0x60EC0AF3) ^ (2 * (v820 ^ 0x60EC0AF3)) & 0xD1304B5C;
  v823 = v822 ^ 0x51104945;
  v824 = (v822 ^ 0x80200218) & (4 * v821) ^ v821;
  v825 = ((4 * v823) ^ 0x44C12D74) & v823 ^ (4 * v823) & 0xD1304B5C;
  v826 = (v825 ^ 0x40000949) & (16 * v824) ^ v824;
  v827 = ((16 * (v825 ^ 0x91304209)) ^ 0x1304B5D0) & (v825 ^ 0x91304209) ^ (16 * (v825 ^ 0x91304209)) & 0xD1304B50;
  v828 = v826 ^ 0xD1304B5D ^ (v827 ^ 0x11000100) & (v826 << 8);
  v829 = v820 ^ (2 * ((v828 << 16) & 0x51300000 ^ v828 ^ ((v828 << 16) ^ 0x4B5D0000) & (((v827 ^ 0xC0304A0D) << 8) & 0x51300000 ^ 0x41300000 ^ (((v827 ^ 0xC0304A0D) << 8) ^ 0x304B0000) & (v827 ^ 0xC0304A0D))));
  LOBYTE(v802) = v802 ^ v782;
  LOBYTE(STACK[0xAA8]) = v802 ^ 0xD9;
  v830 = (((v808 ^ 0x5B478F2) + 359371000) ^ ((v808 ^ 0x9F0994E5) - 1881768735) ^ ((v808 ^ 0xC1F4CBAF) - 785701973)) + 1644101576;
  v831 = ((v830 ^ 0x6E1546BA) - 939649814) ^ v830 ^ ((v830 ^ a12) + 1252773042) ^ ((v830 ^ 0x74B68A0A) - 581052326) ^ ((v830 ^ 0xAFF7FFFE) + 102542766);
  v832 = v801 - (((v818 ^ 0x698C7711) - 852800179) ^ ((v818 ^ 0xBCBF3ECA) + 404227224) ^ ((v818 ^ 0x709EDFB7) - 734403093));
  LOBYTE(v805) = (((v805 - 90) ^ 0x41) - 21) ^ (v805 - 90) ^ (v805 + 82) ^ (((v805 - 90) ^ 0xEA) + 66) ^ (-82 - v805);
  v833 = (((v819 ^ 0x13D87DD8) + 1434981074) ^ ((v819 ^ 0xD2EE3CC9) - 1799466047) ^ ((v819 ^ 0xB58B3192) - 203727204)) + 712509720 + (((v807 ^ 0x7E62307E) - 51087030) ^ ((v807 ^ 0xC99DDE8F) + 1259050937) ^ ((v807 ^ 0xD0298DDB) + 1388299501));
  LOBYTE(STACK[0x7DB]) = v807 ^ 0x1E;
  LOBYTE(v827) = 2 * (v832 + 99);
  LOBYTE(v818) = (v827 & 0xA0 ^ 0xD0) & (v832 + 99);
  LOBYTE(v808) = (v832 + 99) ^ (2 * (((4 * ((v827 ^ 0x2A) & ((v832 + 99) ^ 0xD1))) ^ 0x10) & ((v827 ^ 0x2A) & ((v832 + 99) ^ 0xD1) ^ 0x80) & (16 * ((v827 ^ 0x2A) & ((v832 + 99) ^ 0xD1) & (4 * v818) ^ v818)) ^ (v827 ^ 0x2A) & ((v832 + 99) ^ 0xD1) & (4 * v818) ^ v818));
  LOBYTE(v808) = (((v808 ^ 0xA3) + 19) ^ ((v808 ^ 0x19) - 87) ^ ((v808 ^ 0x6A) - 36)) + 7;
  LOBYTE(v827) = v808 & 0x67 ^ 0xC3;
  LOBYTE(STACK[0x840]) = v831 ^ 0x5F;
  LOBYTE(STACK[0x934]) = v808 ^ (2 * ((v808 ^ 0x60) & (2 * ((v808 ^ 0x60) & (2 * ((v808 ^ 0x60) & (2 * ((v808 ^ 0x60) & (2 * (v808 & (2 * (((2 * v808) & 0x42 ^ 6) & v808 ^ v827)) ^ v827)) ^ v827)) ^ v827)) ^ v827)) ^ v827)) ^ 0x53;
  v834 = (((v832 + 644258013) ^ 0xECEB17B3) + 1818907181) ^ (v832 + 644258013) ^ (((v832 + 644258013) ^ 0x93666ED0) + 333917008) ^ (((v832 + 644258013) ^ 0xFF1D38F8) + 2140962152) ^ (((v832 + 644258013) ^ 0xFFEEFBFB) + 2138029669);
  LOBYTE(STACK[0xA8D]) = v819 ^ 0xB7;
  LOBYTE(STACK[0x7F6]) = v725;
  v835 = ((v834 ^ v819 ^ 0xEC9803BB) + 750564030) ^ ((v834 ^ v819 ^ 0x6F4E5F7E) - 1351946631) ^ ((v834 ^ v819 ^ 0x88159626) + 1211180833);
  v836 = ((v834 ^ 0xF4412884) - 1549011578) ^ ((v834 ^ 0xA910C7E4) - 17163546) ^ ((v834 ^ 0xF544CD9E) - 1565650784);
  LOBYTE(v834) = (v802 ^ 0x2A) + 97 + (((v725 ^ 0x1C) + 3) ^ ((v725 ^ 0x99) - 120) ^ ((v725 ^ 0x76) + 105));
  LOBYTE(STACK[0x94F]) = v805 ^ 0xA7;
  v837 = (v833 ^ 0x38528C3F) & (2 * (v833 & 0xBD5AAD3F)) ^ v833 & 0xBD5AAD3F;
  v838 = ((2 * (v833 ^ 0x1A478E43)) ^ 0x4E3A46F8) & (v833 ^ 0x1A478E43) ^ (2 * (v833 ^ 0x1A478E43)) & 0xA71D237C;
  v839 = v838 ^ 0xA1052104;
  v840 = (v838 ^ 0x6180078) & (4 * v837) ^ v837;
  v841 = ((4 * v839) ^ 0x9C748DF0) & v839 ^ (4 * v839) & 0xA71D237C;
  v842 = (v841 ^ 0x84140170) & (16 * v840) ^ v840;
  v843 = ((16 * (v841 ^ 0x2309220C)) ^ 0x71D237C0) & (v841 ^ 0x2309220C) ^ (16 * (v841 ^ 0x2309220C)) & 0xA71D2370;
  v844 = v842 ^ 0xA71D237C ^ (v843 ^ 0x21102300) & (v842 << 8);
  v845 = v833 ^ (2 * ((v844 << 16) & 0x271D0000 ^ v844 ^ ((v844 << 16) ^ 0x237C0000) & (((v843 ^ 0x860D003C) << 8) & 0x271D0000 ^ 0x221C0000 ^ (((v843 ^ 0x860D003C) << 8) ^ 0x1D230000) & (v843 ^ 0x860D003C)))) ^ v829;
  LOBYTE(STACK[0x825]) = v829 ^ 0x20;
  v846 = (((v845 ^ 0xD6F2CC47) - 209733272) ^ ((v845 ^ 0x99F183D9) - 1132660998) ^ ((v845 ^ 0x6BC7734D) + 1313474158)) - v836;
  v847 = ((v835 + 2000726746) ^ 0xB2500CC2) & (2 * ((v835 + 2000726746) & 0xA25AAEC8)) ^ (v835 + 2000726746) & 0xA25AAEC8;
  v848 = ((2 * ((v835 + 2000726746) ^ 0xB6414452)) ^ 0x2837D534) & ((v835 + 2000726746) ^ 0xB6414452) ^ (2 * ((v835 + 2000726746) ^ 0xB6414452)) & 0x141BEA9A;
  v849 = v848 ^ 0x14082A8A;
  v850 = (v848 ^ 0x13C000) & (4 * v847) ^ v847;
  v851 = ((4 * v849) ^ 0x506FAA68) & v849 ^ (4 * v849) & 0x141BEA98;
  v852 = (v851 ^ 0x100BAA00) & (16 * v850) ^ v850;
  v853 = ((16 * (v851 ^ 0x4104092)) ^ 0x41BEA9A0) & (v851 ^ 0x4104092) ^ (16 * (v851 ^ 0x4104092)) & 0x141BEA90;
  v854 = v852 ^ 0x141BEA9A ^ (v853 ^ 0x1AA800) & (v852 << 8);
  v855 = (v835 + 2000726746) ^ (2 * ((v854 << 16) & 0x141B0000 ^ v854 ^ ((v854 << 16) ^ 0x6A9A0000) & (((v853 ^ 0x1401421A) << 8) & 0x141B0000 ^ 0x4110000 ^ (((v853 ^ 0x1401421A) << 8) ^ 0x1BEA0000) & (v853 ^ 0x1401421A))));
  v856 = v833 - 324110962 + (((v855 ^ 0xE60D65D6) + 1490408862) ^ ((v855 ^ 0xA9BB4C33) + 392428665) ^ ((v855 ^ 0xC5EF5219) + 2067259987));
  v857 = ((v856 ^ 0xFACD2987) + 1726431872) ^ v856 ^ ((v856 ^ 0x1288D24D) - 1901938250) ^ ((v856 ^ 0xF47D1032) + 1750563787) ^ ((v856 ^ 0x7FED7FFF) - 473492472);
  LOBYTE(v853) = (2 * (v834 & 0xB1)) & (v834 ^ 0x94) ^ v834 & 0xB1 ^ (2 * (v834 & 0xB1)) & 0x20;
  LOBYTE(v854) = ((2 * (v834 ^ 0x94)) ^ 0x4A) & (v834 ^ 0x94) ^ (2 * (v834 ^ 0x94)) & 0x24;
  LOBYTE(v776) = v831 ^ v834 ^ (2 * ((((4 * (v854 ^ 0x25)) ^ 0x94) & (v854 ^ 0x25) ^ (4 * (v854 ^ 0x25)) & 0x24) & (16 * ((v854 ^ 1) & (4 * v853) ^ v853)) ^ (v854 ^ 1) & (4 * v853) ^ v853 ^ 0x25));
  LOBYTE(v794) = ((v805 ^ v802 ^ 0xB) + 70) ^ ((v805 ^ v802 ^ 0x81) - 48) ^ ((v805 ^ v802 ^ 0xF4) - 69);
  LOBYTE(v849) = (((v831 & 0xB6 ^ 0x66) + 60) ^ ((v831 & 0xB6 ^ 0x5A) + 8) ^ ((v831 & 0xB6 ^ 0x98) - 58)) + (((v831 & 0xB6 ^ 0x42) - 99) ^ ((v831 & 0xB6 ^ 0xF2) + 45) ^ ((v831 & 0xB6 ^ 0xA2) + 125)) + v836 + v835 + 123;
  v858 = (((v831 & 0x60C09B6 ^ 0x9D8F9766) - 1051580356) ^ ((v831 & 0x60C09B6 ^ 0x3727CD5A) + 1811575304) ^ ((v831 & 0x60C09B6 ^ 0xACAC5398) - 260969274)) + (((v831 & 0x60C09B6 ^ 0xA5F2E842) + 1338271901) ^ ((v831 & 0x60C09B6 ^ 0xE658F3F2) + 208565037) ^ ((v831 & 0x60C09B6 ^ 0x43A21BA2) - 1449878659)) + v836 + v835 + 135730413;
  LOBYTE(v805) = ((v805 ^ 0x23) + 23) ^ ((v805 ^ 0x85) - 79) ^ ((v805 ^ 0x6C) + 90);
  LOBYTE(v802) = (((v776 ^ 0xD4) + 45) ^ ((v776 ^ 0x3B) - 60) ^ ((v776 ^ 0xB8) + 65)) - v805 - 68;
  LOBYTE(v802) = ((v802 ^ 0x4B) - 39) ^ v802 ^ ((v802 ^ 0xE5) + 119) ^ ((v802 ^ 0x35) - 89) ^ ((v802 ^ 0xF7) + 101);
  LOBYTE(v805) = (((v805 + 17 + v794) ^ 0xD1) + 109) ^ (v805 + 17 + v794) ^ (((v805 + 17 + v794) ^ 0x7F) - 61) ^ (((v805 + 17 + v794) ^ 0x12) - 80) ^ (((v805 + 17 + v794) ^ 0xFE) + 68);
  LOBYTE(v835) = (((v794 + 87) ^ 0x14) - 20) ^ (v794 + 87) ^ (((v794 + 87) ^ 0xE0) + 32) ^ (((v794 + 87) ^ 0x3B) - 59) ^ (((v794 + 87) ^ 0xCF) + 49);
  LOBYTE(STACK[0x731]) = v805 ^ 0xB1;
  LOBYTE(v776) = (v849 ^ 0x9A) & (2 * (v849 & 0xD8)) ^ v849 & 0xD8;
  LOBYTE(v794) = ((2 * (v849 ^ 0x1A)) ^ 0x84) & (v849 ^ 0x1A) ^ (2 * (v849 ^ 0x1A)) & 0xC2;
  LOBYTE(v849) = v849 ^ (2 * ((16 * (v776 ^ 0xC2 ^ v794 & (4 * v776))) & 0x40 ^ v776 ^ 0xC2 ^ v794 & (4 * v776) ^ ((16 * (v776 ^ 0xC2 ^ v794 & (4 * v776))) ^ 0x20) & (((4 * v794) ^ 8) & (v794 ^ 0x82) ^ 0x42)));
  LOBYTE(v849) = ((v849 ^ 0x3E) + 16) ^ ((v849 ^ 0x5D) + 109) ^ ((v849 ^ 0x3F) + 15);
  LOBYTE(v794) = v849 + 36;
  v859 = v849 & 2;
  v860 = v859 >> 1;
  LOBYTE(v859) = v859 | 0x65;
  LOBYTE(STACK[0x97E]) = v857 ^ 0x33;
  v861 = ((v858 ^ 0x8DEC6C3F) + 1831944593) ^ v858 ^ ((v858 ^ 0xAE6E3B33) + 1320359581) ^ ((v858 ^ 0x83DD78B7) + 1660966169) ^ ((v858 ^ 0xBF7DFDEB) + 1604374597) ^ v857;
  LOBYTE(STACK[0xAD7]) = v794 ^ (2 * ((v794 ^ 0x38) & (2 * ((v794 ^ 0x38) & (2 * ((v794 ^ 0x38) & (2 * ((v794 ^ 0x38) & (2 * ((v794 ^ 0x38) & (2 * (((4 * (v860 & 1)) | 0x3A) & (v794 ^ 0x38) ^ v859)) ^ v859)) ^ v859)) ^ v859)) ^ v859)) ^ v859)) ^ 0x36;
  LOBYTE(v834) = v834 + 127 + (((v835 ^ 0x30) + 88) ^ ((v835 ^ 0xD7) - 79) ^ ((v835 ^ 0xE7) - 127));
  LOBYTE(v827) = (v834 ^ 0x83) & (2 * (v834 & 0xCA)) ^ v834 & 0xCA;
  LOBYTE(v808) = ((2 * (v834 ^ 0x93)) ^ 0xB2) & (v834 ^ 0x93) ^ (2 * (v834 ^ 0x93)) & 0x58;
  LOBYTE(v808) = v834 ^ (2 * ((v808 ^ 0x10) & (4 * v827) ^ v827 ^ 0x59 ^ (((4 * (v808 ^ 0x49)) ^ 0x64) & (v808 ^ 0x49) ^ (4 * (v808 ^ 0x49)) & 0x58 ^ 0x40) & (16 * ((v808 ^ 0x10) & (4 * v827) ^ v827))));
  LOBYTE(STACK[0x88A]) = v835 ^ 0xF3;
  LOBYTE(STACK[0x999]) = v808 ^ 0x8B;
  v862 = v861 ^ v855;
  LOBYTE(STACK[0x86F]) = v855 ^ 0xC8;
  v863 = ((v857 ^ 0x3DBD6DD2) - 1910648105) ^ ((v857 ^ 0x5A5D6711) - 369240042) ^ ((v857 ^ 0x2BBF4A38) - 1742736067);
  v864 = ((v861 ^ v855 ^ 0x3C657331) & 0xF9F3F64A ^ 0xC8C347BE) & ((v861 ^ v855) & 0xF9F3F64A ^ 0xB8E313F6) ^ (v861 ^ v855 ^ 0x3C657331) & 0xB1B2D002;
  LOBYTE(v836) = ((((v863 + 29) ^ a11) + 25) ^ (v863 + 29) ^ (((v863 + 29) ^ 0x42) - 82) ^ (((v863 + 29) ^ 0x5A) - 74) ^ (-13 - v863)) & 0xEE;
  v865 = ((v864 ^ 0xE34F969C) - 1153410324) ^ ((v864 ^ 0xF18CB04E) - 1451000774) ^ ((v864 ^ 0x6BB2912E) + 868048218);
  LOBYTE(v854) = ((v846 + 41) ^ 0xD2) & (2 * ((v846 + 41) & 0xE3)) ^ (v846 + 41) & 0xE3;
  LOBYTE(v864) = ((2 * ((v846 + 41) ^ 0xD4)) ^ 0x6E) & ((v846 + 41) ^ 0xD4) ^ (2 * ((v846 + 41) ^ 0xD4)) & 0x36;
  LOBYTE(v667) = v864 ^ 0x11;
  LOBYTE(v864) = v854 ^ 0x37 ^ (v864 ^ 5) & (4 * v854);
  LOBYTE(v667) = (16 * v864) & 0x30 ^ v864 ^ ((16 * v864) ^ 0x70) & ((4 * v667) & 0x30 ^ ((4 * v667) ^ 0xD0) & v667 ^ 0x20);
  LOBYTE(v854) = v808 ^ v805;
  LOBYTE(v864) = v808 ^ v805 ^ v835;
  LOBYTE(v835) = (v846 + 41) ^ (2 * v667) ^ 0xD9;
  v866 = v846 - (((v861 ^ 0xC24877B0) + 1089844427) ^ ((v861 ^ 0x9F27FA80) + 496646651) ^ ((v861 ^ 0x2198CB67) - 1557854178)) + (((v861 ^ 0xE8CAE713) + 1786193002) ^ ((v861 ^ 0x23E691A9) - 1587850540) ^ ((v861 ^ 0xB7DB30ED) + 895939480)) + 1860297844 + v865;
  v867 = ((v866 ^ 0x710C66A0) + 91109730) ^ v866 ^ ((v866 ^ 0x1FFF834F) + 1805507727) ^ ((v866 ^ 0x9A91BA6C) - 286005842) ^ ((v866 ^ 0x7FFFFFBD) + 194879613);
  v868 = (((v862 ^ 0x6BDE0F6F) - 1471904862) ^ ((v862 ^ 0xEDF078C4) + 778761227) ^ ((v862 ^ 0x70804A00) - 1290090801)) - (((v857 ^ 0xCE1F6692) - 1125465909) ^ ((v857 ^ 0x9D5C8B07) - 274125472) ^ ((v857 ^ 0x1C2ACDAB) + 1860135924)) + 369150833;
  v869 = ((v868 ^ 0x3B48FBD2) - 919604642) ^ v868 ^ ((v868 ^ 0x123D351D) - 530957165) ^ ((v868 ^ 0x4B12C640) - 1183461424) ^ ((v868 ^ 0x6FFFFEFF) - 1650919567);
  LOBYTE(STACK[0x9C8]) = v835;
  LOBYTE(v835) = (((v864 ^ 0x74) - 81) ^ ((v864 ^ 0xBB) + 98) ^ ((v864 ^ 0xF5) + 48)) - (((v808 ^ 0xA3) - 61) ^ ((v808 ^ 0x68) + 10) ^ ((v808 ^ 0x8A) - 20));
  LOBYTE(v864) = v835 + 4;
  LOBYTE(v862) = ((v835 + 4) ^ 0xBE) & (2 * ((v835 + 4) & 0x3C)) ^ (v835 + 4) & 0x3C;
  LOBYTE(v859) = ((2 * (v835 + 4)) ^ 0x74) & (v835 + 4) ^ (2 * (v835 + 4)) & 0xBA;
  LOBYTE(v794) = (v859 ^ 0x3A) & (4 * v862) ^ v862;
  LOBYTE(STACK[0x9E3]) = v802 ^ 0x9F;
  v870 = (((v861 ^ 0xC228D5C6) + 1083512509) ^ ((v861 ^ 0xEC49274E) + 1861542965) ^ ((v861 ^ 0x5296B4DF) - 802457690)) - (((v869 ^ 0x227E6731) + 415694777) ^ ((v869 ^ 0x17F9BDF6) + 759244160) ^ ((v869 ^ a10) + 44545087)) + 950776363;
  LOBYTE(STACK[0xA2D]) = (v835 + 4) ^ (2 * (((4 * v859) ^ 0xE0) & v859 & (16 * v794) ^ v794)) ^ 0xCF;
  LOBYTE(STACK[0x77B]) = v808 ^ 0x77;
  LOBYTE(STACK[0x760]) = v857 ^ 0xCF;
  LOBYTE(STACK[0x7C5]) = v802 ^ 0x9F;
  LOBYTE(v835) = (((v808 ^ 0xE3) - 31) ^ ((v808 ^ 4) + 8) ^ ((v808 ^ 0x63) + 97)) - v835;
  LOBYTE(v868) = v835 + 4;
  LOBYTE(v857) = ((v861 ^ 0x24) - 126) ^ ((v861 ^ 0xD4) + 114) ^ ((v861 ^ 0xA7) + 3);
  LOBYTE(v861) = v857 + 113;
  LOBYTE(v857) = ((v857 - 15) & 0x8A | 0x51) ^ (v857 + 113) & 0xA6;
  LOBYTE(STACK[0x8B9]) = v861 ^ (2 * ((v861 ^ 0xA) & (2 * ((v861 ^ 0xA) & (2 * ((v861 ^ 0xA) & (2 * ((v861 ^ 0xA) & (2 * ((v861 ^ 0xA) & (2 * ((v861 ^ 0xA) & (2 * v857) ^ v857)) ^ v857)) ^ v857)) ^ v857)) ^ v857)) ^ v857)) ^ 0x18;
  LOBYTE(v857) = (((v854 ^ 0xBB) - 6) ^ ((v854 ^ 0x1D) + 96) ^ ((v854 ^ 0x9C) - 33)) + (((v836 ^ 0x95) + 84) ^ ((v836 ^ 0xBB) + 126) ^ ((v836 ^ 0x2E) - 23)) + (((v836 ^ 8) + 9) ^ ((v836 ^ 0xD9) - 38) ^ ((v836 ^ 0x3F) + 64)) - 51;
  LOBYTE(STACK[0xA12]) = v869 ^ 0x44;
  v871 = (v870 ^ 0x6DBC790F) & (2 * (v870 & 0x8DB87D8F)) ^ v870 & 0x8DB87D8F;
  v872 = ((2 * (v870 ^ 0x678C6805)) ^ 0xD4682B14) & (v870 ^ 0x678C6805) ^ (2 * (v870 ^ 0x678C6805)) & 0xEA34158A;
  v873 = v872 ^ 0x2A14148A;
  v874 = (v872 ^ 0x40200000) & (4 * v871) ^ v871;
  v875 = ((4 * v873) ^ 0xA8D05628) & v873 ^ (4 * v873) & 0xEA341588;
  v876 = v874 ^ 0xEA34158A ^ (v875 ^ 0xA8101400) & (16 * v874);
  v877 = (16 * (v875 ^ 0x42240182)) & 0xEA341580 ^ 0x4834050A ^ ((16 * (v875 ^ 0x42240182)) ^ 0xA34158A0) & (v875 ^ 0x42240182);
  v878 = (v876 << 8) & 0xEA341500 ^ v876 ^ ((v876 << 8) ^ 0x34158A00) & v877;
  v879 = v870 ^ v867 ^ (2 * ((v878 << 16) & 0x6A340000 ^ v878 ^ ((v878 << 16) ^ 0x158A0000) & ((v877 << 8) & 0x6A340000 ^ 0x4A200000 ^ ((v877 << 8) ^ 0x34150000) & v877)));
  LOBYTE(STACK[0x8D4]) = ((v857 ^ 0x9C) - 96) ^ v857 ^ ((v857 ^ 0x88) - 116) ^ ((v857 ^ 0x15) + 23) ^ ((v857 ^ 0xFD) - 1) ^ 0xF;
  LOBYTE(v878) = v857 - v864;
  v880 = v863 - (((v869 ^ 0x20FB34E) + 951528392) ^ ((v869 ^ 0x74784D82) + 1321260300) ^ ((v869 ^ 0x7BEF08BC) + 1096257590)) + 1679886469;
  LOBYTE(STACK[0x7AA]) = v869 & 0xC0 ^ (v869 ^ 0x6F) & 0x45 ^ (v869 ^ 0x6F) & (v869 ^ 5) & 0xC7 ^ v867 ^ 0x4A;
  v881 = v870 - v880;
  v882 = v870 - v880 + 1449893955 + (((v879 ^ 0x9363141C) - 560806435) ^ ((v879 ^ 0x712EEFE2) + 1021263395) ^ ((v879 ^ 0x70280D5B) + 1037687964));
  v883 = ((v882 ^ 0xDF831C4C) + 1530549053) ^ v882 ^ ((v882 ^ 0x775B236E) - 203264993) ^ ((v882 ^ 0x2C607056) - 1462157529) ^ ((v882 ^ 0xFFFEFFFB) + 2068295820);
  LOBYTE(v879) = (v878 ^ 0x8E) & (2 * (v878 & 0xC8)) ^ v878 & 0xC8;
  LOBYTE(v882) = ((2 * (v878 ^ 0x8E)) ^ 0x8C) & (v878 ^ 0x8E) ^ (2 * (v878 ^ 0x8E)) & 0x46;
  LOBYTE(v836) = v878 ^ v802 ^ (2 * ((((4 * (v882 ^ 0x42)) ^ 0x18) & (v882 ^ 0x42) ^ (4 * (v882 ^ 0x42)) & 0x44) & (16 * (v882 & (4 * v879) ^ v879)) ^ v882 & (4 * v879) ^ v879 ^ 0x46));
  LOBYTE(v882) = v878 - v835;
  LOBYTE(v879) = v878 - v835 - 4;
  v884 = ((v880 ^ 0xF872EF32) + 713918791) ^ v880 ^ ((v880 ^ 0x19582DF2) - 878228601) ^ ((v880 ^ 0xB3D585B4) + 1630200769) ^ ((v880 ^ 0x7FFFDEFF) - 1392461684) ^ v883;
  LOBYTE(v878) = ((v864 ^ 0xC5) - 1) ^ v864 ^ ((v864 ^ 0x38) + 4) ^ ((v864 ^ 0xC7) - 3) ^ ((v864 ^ 0xFE) - 58);
  v885 = ((v869 ^ 0xBCA56631) + 1309533539) ^ ((v869 ^ 0xE497C5FE) + 373245614) ^ ((v869 ^ 0x5565DF63) - 1479713743);
  v886 = (((v881 - v885 - 267993526) ^ 0xAA8213C2) + 1492936579) ^ (v881 - v885 - 267993526) ^ (((v881 - v885 - 267993526) ^ 0x7882894A) - 1963131637) ^ (((v881 - v885 - 267993526) ^ 0xE03EFED8) + 306219673) ^ (((v881 - v885 - 267993526) ^ 0x3FBFEFEF) - 842949712);
  LOBYTE(v869) = v882 + 37 + (((v836 ^ 0x80) - 126) ^ ((v836 ^ 0xC4) - 58) ^ ((v836 ^ 0x6C) + 110));
  LOBYTE(v836) = ((2 * (v869 & 0x41)) & 0x80 | v869 & 0x41) ^ (2 * (v869 & 0x41)) & (v869 ^ 0x8C);
  LOBYTE(v864) = ((2 * (v869 ^ 0x8C)) ^ 0x9A) & (v869 ^ 0x8C) ^ (2 * (v869 ^ 0x8C)) & 0xCC;
  LOBYTE(v836) = v869 ^ (2 * ((((4 * (v864 ^ 0x45)) ^ 0x34) & (v864 ^ 0x45) ^ (4 * (v864 ^ 0x45)) & 0xCC) & (16 * ((v864 ^ 0x49) & (4 * v836) ^ v836)) ^ (v864 ^ 0x49) & (4 * v836) ^ v836 ^ 0xCD));
  LOBYTE(v870) = ((v878 ^ 0x57) + 58) ^ ((v878 ^ 0x4E) + 33) ^ ((v878 ^ 1) + 112);
  LOBYTE(v864) = (v868 ^ 0xB4) & (2 * (v868 & 0x34)) ^ v868 & 0x34;
  LOBYTE(v878) = ((2 * (v868 ^ 0x9C)) ^ 0x50) & (v868 ^ 0x9C) ^ (2 * (v868 ^ 0x9C)) & 0xA8;
  LOBYTE(v868) = v868 ^ (2 * ((((4 * (v878 ^ 0xA8)) ^ 0xA0) & (v878 ^ 0xA8) ^ (4 * (v878 ^ 0xA8)) & 0xA8 ^ 0xA0) & (16 * (v878 & (4 * v864) ^ v864)) ^ v878 & (4 * v864) ^ v864 ^ 0xA8));
  LOBYTE(STACK[0x903]) = v884 ^ 0x30;
  LOBYTE(STACK[0x968]) = v836 ^ 0x28;
  LOBYTE(v869) = (v883 ^ 0x8F) - 123;
  LOBYTE(v878) = ((v884 ^ 0x58) - 13) ^ ((v884 ^ 0xE7) + 78) ^ ((v884 ^ 0xBB) + 18);
  LOBYTE(v864) = ((2 * (v879 ^ 0x68)) ^ 0xF8) & (v879 ^ 0x68) ^ (2 * (v879 ^ 0x68)) & 0xFC;
  LOBYTE(v859) = (v864 ^ 0xF0) & (4 * (((2 * v879) & 0x28 ^ 0x94) & v879)) ^ ((2 * v879) & 0x28 ^ 0x94) & v879;
  LOBYTE(v854) = v885 - 34;
  LOBYTE(v864) = ((4 * v864) & 0xF8 ^ 0x6C ^ ((4 * v864) ^ 0xF0) & v864) & (16 * v859) ^ v859;
  LOBYTE(v859) = v868 ^ v836;
  LOBYTE(STACK[0xA77]) = v879 ^ (2 * v864) ^ 0x67;
  LOBYTE(v864) = (((v882 - v870 + 117) ^ 0xB6) - 75) ^ (v882 - v870 + 117) ^ (((v882 - v870 + 117) ^ 0x88) - 117) ^ (((v882 - v870 + 117) ^ 0x3C) + 63) ^ (-(v882 - v870 + 117) - 3);
  LOBYTE(STACK[0x80F]) = (((v870 - 76) ^ 0xB7) - 43) ^ (v870 - 76) ^ (((v870 - 76) ^ 0x30) + 84) ^ (((v870 - 76) ^ 0xE6) - 122) ^ (((v870 - 76) ^ 0xFD) - 97) ^ 0x6F;
  LOBYTE(STACK[0x91E]) = v868 ^ v836 ^ 0x4C;
  LOBYTE(v882) = v870 - ((v864 ^ 0xFD) + 122);
  LOBYTE(v879) = v883 ^ 0xBB;
  v887 = ((v884 ^ v886 ^ 0xC6D39E7D) - 1097890594) ^ ((v884 ^ v886 ^ 0x39FE06D8) + 1101143161) ^ ((v884 ^ v886 ^ 0xA4EA3A1E) - 592043841);
  v888 = v885 - (((v886 ^ 0x7A66E822) + 1194887896) ^ ((v886 ^ 0x4ADA98D3) + 2005203495) ^ ((v886 ^ 0x3D3DFB4E) + 6527420));
  LOBYTE(STACK[0x94D]) = v879;
  LOBYTE(v885) = (v881 ^ 0x50) & (2 * (v881 & 0x1A)) ^ v881 & 0x1A;
  LOBYTE(v884) = ((2 * (v881 ^ 0x74)) ^ 0xDC) & (v881 ^ 0x74) ^ (2 * (v881 ^ 0x74)) & 0x6E;
  LOBYTE(STACK[0xA5C]) = v881 ^ (2 * (((4 * (v884 ^ 0x22)) & 0x60 ^ ((4 * (v884 ^ 0x22)) ^ 0xA0) & (v884 ^ 0x22) ^ 0x20) & (16 * ((v884 ^ 0x48) & (4 * v885) ^ v885)) ^ (v884 ^ 0x48) & (4 * v885) ^ v885)) ^ 0x2E;
  LOBYTE(v881) = ((v859 ^ v864 ^ 0xAB) - 13) ^ ((v859 ^ v864 ^ 0x43) + 27) ^ ((v859 ^ v864 ^ 0xAA) - 12);
  LOBYTE(v879) = (((v836 ^ 0xE6) + 117) ^ ((v836 ^ 0x22) - 79) ^ ((v836 ^ 0x1F) - 114)) + (((v859 ^ 0xB4) - 105) ^ ((v859 ^ 0x6C) + 79) ^ ((v859 ^ 0x67) + 70));
  LOBYTE(v885) = (2 * (v854 & 0xB1 ^ 0x45)) & 0x40 ^ v854 & 0xB1 ^ 0x45 ^ ((2 * (v854 & 0xB1 ^ 0x45)) ^ 0x8A) & (v854 ^ 0xF4);
  LOBYTE(v884) = (2 * (v854 ^ 0xF4)) & 0x44 ^ 0x45 ^ ((2 * (v854 ^ 0xF4)) ^ 0x8A) & (v854 ^ 0xF4);
  LOBYTE(v885) = (4 * v885) & 0x44 ^ v885 ^ ((4 * v885) ^ 0x14) & v884;
  LOBYTE(STACK[0x7F4]) = v854 ^ (2 * ((16 * v885) & 0x40 ^ v885 ^ ((16 * v885) ^ 0x10) & ((4 * v884) & 0x44 ^ 0x41 ^ ((4 * v884) ^ 0x14) & v884))) ^ 7;
  LOBYTE(v884) = (((v887 + 23) ^ 0x82) + 79) ^ (v887 + 23) ^ (((v887 + 23) ^ 0xAB) + 104) ^ (((v887 + 23) ^ 0xE1) + 46) ^ (((v887 + 23) ^ 0xFB) + 56);
  LOBYTE(v884) = (((v884 ^ 0x54) - 68) ^ ((v884 ^ 0x42) - 82) ^ ((v884 ^ 0x25) - 53)) + 76;
  LOBYTE(v854) = v884 & 0x9A ^ 0xD1;
  LOBYTE(STACK[0xAA6]) = v884 ^ (2 * ((v884 ^ 0x78) & (2 * ((v884 ^ 0x78) & (2 * ((v884 ^ 0x78) & (2 * ((v884 ^ 0x78) & (2 * ((v884 ^ 0x78) & (2 * (v854 ^ v884 & 0x22)) ^ v854)) ^ v854)) ^ v854)) ^ v854)) ^ v854)) ^ 0xAE;
  LOBYTE(v884) = (((v881 + 30) ^ 0xF2) + 21) ^ (v881 + 30) ^ (((v881 + 30) ^ 0xEF) + 10) ^ (((v881 + 30) ^ 0xFA) + 29) ^ (((v881 + 30) ^ 0xFE) + 25) ^ 0xEA;
  LOBYTE(v836) = (((v882 - 91) ^ 0x27) - 52) ^ (v882 - 91) ^ (((v882 - 91) ^ 0x34) - 39);
  LOBYTE(v836) = ((v836 ^ 0x4F) - 24) ^ ((v836 ^ 0x93) + 60) ^ ((v836 ^ 0xCF) + 104);
  LOBYTE(v854) = v836 - 6;
  LOBYTE(v836) = v836 & 1;
  LOBYTE(v870) = v836 ^ 0x2F;
  LOBYTE(v859) = (v854 ^ 0x4A) & (2 * ((v854 ^ 0x4A) & (2 * ((v854 ^ 0x4A) & (2 * ((v854 ^ 0x4A) & (2 * ((v854 ^ 0x4A) & (2 * (((2 * v836) ^ 0x4A) & (v854 ^ 0x4A) ^ v836 ^ 0x2F)) ^ v836 ^ 0x2F)) ^ v836 ^ 0x2F)) ^ v836 ^ 0x2F)) ^ v836 ^ 0x2F));
  LOBYTE(v836) = v888 - 89;
  LOBYTE(v879) = v879 - v881 + 118;
  LOBYTE(STACK[0xAC1]) = v884;
  LOBYTE(STACK[0x9B2]) = v854 ^ (2 * (v859 ^ v870)) ^ 0xF2;
  v889 = v887 + (((v886 ^ 0x9AE7205D) + 1143023487) ^ ((v886 ^ 0xEB74E3E4) + 900916424) ^ ((v886 ^ 0xA230904A) + 2096535402));
  LOBYTE(STACK[0x83E]) = v886 ^ 0xC7;
  LOBYTE(v869) = v869 + v878 - v887;
  LOBYTE(v878) = (v879 ^ 0xBC) & (2 * (v879 & 0xBE)) ^ v879 & 0xBE;
  LOBYTE(v886) = ((2 * (v879 ^ 0xC4)) ^ 0xF4) & (v879 ^ 0xC4) ^ (2 * (v879 ^ 0xC4)) & 0x7A;
  LOBYTE(v870) = v886 ^ 0xA;
  LOBYTE(v886) = v878 ^ 0x7A ^ (v886 ^ 0x70) & (4 * v878);
  LOBYTE(STACK[0x74A]) = v879 ^ (2 * ((16 * v886) ^ v886 ^ ((16 * v886) ^ 0x20) & ((4 * v870) & 0x70 ^ ((4 * v870) ^ 0xE0) & v870 ^ 0x10))) ^ 0xF9;
  LOBYTE(STACK[0x859]) = v864 ^ 0x42;
  LOBYTE(v878) = (((v864 ^ 0x9C) - 127) ^ ((v864 ^ 0x88) - 107) ^ ((v864 ^ 0xA5) - 70)) - 44 + v881 + 30;
  v890 = v887 - v888;
  v891 = v887 - v888 + 50882551;
  LOBYTE(v885) = (v836 ^ 0xB7) & (2 * (v836 & 0xB4)) ^ v836 & 0xB4;
  LOBYTE(v888) = ((2 * ((v888 - 89) ^ 0x9F)) ^ 0x56) & ((v888 - 89) ^ 0x9F) ^ (2 * ((v888 - 89) ^ 0x9F)) & 0x2A;
  LOBYTE(STACK[0x997]) = v836 ^ (2 * ((16 * (v885 ^ 0x2B ^ v888 & (4 * v885))) & 0x20 ^ v885 ^ 0x2B ^ v888 & (4 * v885) ^ (((4 * (v888 ^ 0x29)) ^ 0xA0) & (v888 ^ 0x29) ^ (4 * (v888 ^ 0x29)) & 0x20) & ((16 * (v885 ^ 0x2B ^ v888 & (4 * v885))) ^ 0x30))) ^ 0x96;
  LOBYTE(v888) = v869 - (v889 + v890);
  v892 = (v889 + 1616185598) ^ v891 ^ (((v889 + 1616185598) ^ 0x2C2FEC0F) + 1550965563) ^ (((v889 + 1616185598) ^ 0x8064E4C3) - 264580105) ^ (((v889 + 1616185598) ^ 0x5D15BFF9) + 759924941) ^ (((v889 + 1616185598) ^ 0x7EFF7FFF) + 245450955) ^ ((v891 ^ 0x58A2568D) - 758421294) ^ ((v891 ^ 0x592CB524) - 750417031) ^ ((v891 ^ 0xAE79DFD) - 2138135646) ^ ((v891 ^ 0x7EFFBFF7) - 191462996);
  LOBYTE(v882) = v881 - v882;
  LOBYTE(v885) = v879 - v882 - v878 + 32;
  LOBYTE(STACK[0x72F]) = (v869 - 24) ^ 0x34;
  LOBYTE(v882) = v882 - 100;
  LOBYTE(STACK[0x9E1]) = v892 ^ 0x5D;
  LOBYTE(STACK[0x8A3]) = v882 - ((2 * v882) & 0xE7) - 13;
  LOBYTE(v878) = v882 ^ v878 ^ ((v878 ^ 0xF2) - 105) ^ ((v878 ^ 0x62) + 7) ^ ((v878 ^ 0xF4) - 111) ^ (-v878 - 101);
  v893 = (((v892 ^ 0x2F854989) - 971900046) ^ ((v892 ^ 0x9517A014) + 2088964845) ^ ((v892 ^ 0x40A5E0F4) - 1456385523)) - v890;
  LOBYTE(STACK[0x8ED]) = v885 + (~(2 * v885) | 0x19) - 12;
  LOBYTE(STACK[0x9FC]) = v878 ^ 0x68;
  LOBYTE(v885) = v885 - v882;
  LOBYTE(v878) = (v878 ^ 0x9B) - v882;
  LOBYTE(STACK[0x888]) = (v890 + 84) ^ 0x34;
  LOBYTE(STACK[0x779]) = (v887 + 5) ^ 0x34;
  LOBYTE(STACK[0x794]) = v884;
  LOBYTE(v884) = v888 - v890;
  LOBYTE(v887) = (v887 + 5 + (((v892 ^ 0x89) + 114) ^ ((v892 ^ 0x14) - 19) ^ ((v892 ^ 0xF4) + 13)) - v890 + 26) ^ (v888 - v890 + 111);
  LOBYTE(v879) = v884 + 84;
  LOBYTE(v881) = (v881 + 5 + v878) ^ v885;
  LOBYTE(STACK[0x8D2]) = (v888 - 61) ^ 0x34;
  LOBYTE(STACK[0x7DE]) = v878 + 78 - ((2 * (v878 + 78)) & 0xE7) - 13;
  LOBYTE(v890) = v888 - v890 + 84 + ((v890 + 84) ^ 0xBC);
  LOBYTE(STACK[0x937]) = v881 + (~(2 * v881) | 0x19) - 12;
  LOBYTE(v885) = v885 - 27;
  LOBYTE(STACK[0x7C3]) = (v893 + 104) ^ 0x34;
  LOBYTE(STACK[0x91C]) = v887 ^ 0x34;
  LOBYTE(v836) = v887 + v884 + 84;
  LOBYTE(STACK[0xA2B]) = v890 ^ 0x34;
  LOBYTE(v882) = v885 + (v882 ^ 0xBC);
  LOBYTE(v889) = v890 - v836;
  LOBYTE(STACK[0xA46]) = v882 - ((2 * v882) & 0xE7) - 13;
  LOBYTE(v892) = v881 + v885;
  LOBYTE(v887) = v893 - v884;
  LOBYTE(v890) = v893 - v884 + 127;
  LOBYTE(v881) = v893 - v884 + 20;
  LOBYTE(STACK[0xA75]) = (v884 + 84) ^ 0x34;
  *(v784 + ((v893 + 1592434202) & 0x370 ^ 0x370) + ((v893 + 1592434202) & 0x370)) = v885 - ((2 * v885) & 0xE7) - 13;
  LOBYTE(v884) = (v836 ^ 0x67) + v889;
  LOBYTE(v870) = v882 - v892;
  LOBYTE(v882) = v878 + 78 - v885;
  LOBYTE(v888) = (v889 ^ v879) - v889;
  LOBYTE(STACK[0x80D]) = v884 ^ 0x34;
  LOBYTE(v885) = (v870 ^ v885) - v870;
  LOBYTE(v892) = v892 ^ 0x67;
  LOBYTE(STACK[0xADA]) = v892 - ((2 * v892) & 0xE7) - 13;
  LOBYTE(v889) = v870 + v892;
  LOBYTE(v870) = v882 - (v870 + v892);
  LOBYTE(STACK[0x966]) = (v881 - v884) ^ 0x34;
  LOBYTE(STACK[0x872]) = v885 - ((2 * v885) & 0xE7) - 13;
  LOBYTE(v885) = v885 - v889;
  LOBYTE(STACK[0x857]) = v888 ^ 0x34;
  LOBYTE(v888) = v888 - v884;
  LOBYTE(STACK[0x981]) = v870 + (~(2 * v870) | 0x19) - 12;
  LOBYTE(STACK[0x828]) = v889 + (~(2 * v889) | 0x19) - 12;
  LOBYTE(STACK[0xABF]) = v836 ^ 0x53;
  LOBYTE(v879) = (v836 ^ 0x67) - (v881 - v884) - v888;
  LOBYTE(v878) = v892 - v870 - v885;
  LOBYTE(v836) = v888 - 20;
  LOBYTE(STACK[0x8BC]) = v878 - ((2 * v878) & 0xE7) - 13;
  LOBYTE(STACK[0x9B0]) = (v884 + 112) ^ 0x34;
  LOBYTE(STACK[0x9CB]) = v889 + 112 - ((2 * (v889 + 112)) & 0xE7) - 13;
  LOBYTE(STACK[0x8A1]) = v879 ^ 0x34;
  LOBYTE(STACK[0x748]) = (v887 - 49) ^ 0x34;
  LOBYTE(v888) = v885 - 20;
  LOBYTE(v885) = v887 - 49;
  LOBYTE(STACK[0xA15]) = v888 - ((2 * v888) & 0xE7) - 13;
  LOBYTE(STACK[0x763]) = v882 - 69 - ((2 * (v882 - 69)) & 0xE7) - 13;
  LOBYTE(v887) = v888 ^ (v882 - 69);
  LOBYTE(STACK[0x9FA]) = v836 ^ 0x34;
  LOBYTE(v889) = v889 + 112 - (v882 - 69);
  LOBYTE(v888) = (v882 - 69) ^ 0xEE ^ v878 ^ (v889 - 18 - ((2 * v889) & 0xDC));
  LOBYTE(v881) = v884 + 13 - v881;
  v894 = v836 & 0x72;
  LOBYTE(v892) = (v836 ^ v885) - (v881 - 88);
  LOBYTE(v836) = (v890 - ((2 * v885) & 0x5E) - 1) ^ v879 ^ (v881 - 88);
  *(v784 + (v894 ^ 0x42) + (v894 ^ 0x30u)) = (v881 - v890 + 68) ^ 0x34;
  v895 = STACK[0x58C];
  v896 = LODWORD(STACK[0x4C4]) + 1685945447;
  v897 = (LODWORD(STACK[0x58C]) + 1651014502) < 0x62687B26;
  LOBYTE(STACK[0x7F7]) = v887 - v889 - ((2 * (v887 - v889)) & 0xE7) - 13;
  LOBYTE(STACK[0x7AD]) = v889 - v882 + 49 - ((2 * (v889 - v882 + 49)) & 0xE7) - 13;
  LOBYTE(STACK[0x7DC]) = v892 ^ 0x34;
  LOBYTE(STACK[0x906]) = v882 + v887 - v889 - 49 + (~(2 * (v882 + v887 - v889 - 49)) | 0x19) - 12;
  LOBYTE(STACK[0x8EB]) = (v890 + v892 + 100) ^ 0x34;
  LOBYTE(STACK[0xA5F]) = v888 - ((2 * v888) & 0xE7) - 13;
  LOBYTE(STACK[0xA44]) = v836 ^ 0x9B;
  if (v896 < 0x62687B26 != v897)
  {
    v898 = v897;
  }

  else
  {
    v898 = v895 + 1651014502 > v896;
  }

  return (*(STACK[0x598] + 8 * ((28 * v898) ^ LODWORD(STACK[0x5B0]))))();
}

void sub_100100AD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
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
  *&STACK[0x200] = xmmword_1003EAE50;
  JUMPOUT(0x100100CE4);
}

uint64_t sub_100101F48()
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

uint64_t sub_10010204C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = *(STACK[0x5A0] + 24);
  STACK[0x760] = v73;
  return (*(a72 + 8 * (((v73 == 0) * (v72 ^ (v72 - 3842) ^ 0x1FEC)) ^ (v72 - 2380))))();
}

uint64_t sub_1001020A8(uint64_t result)
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

uint64_t sub_100102108(int a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7)
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

void sub_1001021EC()
{
  v0 = *(&off_100477F30 + ((-85 * (dword_1004D55F0 ^ 0xDF ^ dword_1004D54B0)) ^ byte_1003D1770[byte_1003EAD20[(-85 * (dword_1004D55F0 ^ 0xDF ^ dword_1004D54B0))] ^ 0x71]) + 43);
  v1 = *(&off_100477F30 + (byte_1003D1770[byte_1003EAD20[(-85 * ((dword_1004D54B0 + *v0) ^ 0xDF))] ^ 0x71] ^ (-85 * ((dword_1004D54B0 + *v0) ^ 0xDF))) + 42);
  v2 = &v4[*v1 ^ *v0];
  *v0 = (2054362027 * v2) ^ 0xB4207763EF64BDFLL;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((v5 + 1476401679 - 2 * (v5 & 0x58001A0F)) ^ 0x6A1B419F);
  LOBYTE(v1) = -85 * ((*v1 + *v0) ^ 0xDF);
  v3 = *(&off_100477F30 + ((-85 * (dword_1004D55F0 ^ 0xDF ^ dword_1004D54B0)) ^ byte_1003E29C0[byte_1003DBAE0[(-85 * (dword_1004D55F0 ^ 0xDF ^ dword_1004D54B0))] ^ 1]) + 92) - 8;
  (*&v3[8 * (v1 ^ byte_1003D1770[byte_1003EAD20[v1] ^ 0x1F]) + 76384])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001023F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18)
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

uint64_t sub_100102A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
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

void sub_100102C70()
{
  v0 = *(&off_100477F30 + ((-85 * (dword_1004D55E8 ^ 0xDF ^ dword_1004D54B0)) ^ byte_1003D1770[byte_1003EAD20[(-85 * (dword_1004D55E8 ^ 0xDF ^ dword_1004D54B0))] ^ 0xE2]) + 258);
  v1 = *(&off_100477F30 + ((-85 * ((dword_1004D54B0 + *v0) ^ 0xDF)) ^ byte_1003DB9E0[byte_1003D1470[(-85 * ((dword_1004D54B0 + *v0) ^ 0xDF))] ^ 0xEE]) + 85);
  v2 = &v4[*v0 + *v1];
  *v0 = 2054362027 * v2 - 0xB4207763EF64BDFLL;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5 = 476323082 - 1710126949 * ((-349893200 - (&v5 | 0xEB250DB0) + (&v5 | 0x14DAF24F)) ^ 0x26C1A9DF);
  LOBYTE(v1) = -85 * ((*v1 - *v0) ^ 0xDF);
  v3 = *(&off_100477F30 + ((-85 * ((dword_1004D54B0 - dword_1004D55E8) ^ 0xDF)) ^ byte_1003E29C0[byte_1003DBAE0[(-85 * ((dword_1004D54B0 - dword_1004D55E8) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v3[8 * (byte_1003DB9EC[(byte_1003D1470[v1] ^ 0xEE) - 12] ^ v1) + 76160])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100102EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18)
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

uint64_t sub_100103108()
{
  LODWORD(STACK[0x664]) = 128;
  v3 = (*(v0 + 8 * (v1 + 6297)))(128, v2);
  v4 = STACK[0x3E8];
  STACK[0x430] = v3;
  return (*(v4 + 8 * (((v3 == 0) * ((v1 ^ 0xC27) - 6010 + 19 * (v1 ^ 0xC27))) ^ v1)))();
}

uint64_t sub_100103180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = v3 ^ 0x7C ^ *(a2 + v5);
  return (*(v4 + 8 * (((4 * (v5 == 0)) | (16 * (v5 == 0))) ^ v3)))();
}

uint64_t sub_10010322C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

void sub_100103790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_100103804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17)
{
  a16 = 476323082 - 1710126949 * ((1872661036 - (&a16 ^ 0xB57BE482 | 0x6F9E8A2C) + (&a16 ^ 0xB57BE482 | 0x906175D3)) ^ 0x1701CAC1);
  v19 = (*(v17 + 77088))(&a16);
  return (*(v17 + 8 * ((7646 * (a17 == 16257999)) ^ v18)))(v19);
}

uint64_t sub_1001038B4@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100103A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  LODWORD(STACK[0x2B0]) = v61;
  LODWORD(STACK[0x210]) = v60;
  v64 = (*(a7 + 8 * (v62 + 97)))(32, 0x103004054B5FA7DLL);
  return (*(*(v63 - 256) + 8 * ((63 * (((v64 == 0) ^ (v62 + 54 + v62 - 109)) & 1)) ^ v62)))(v64, v65, v66, v67, v68, v69, *(v63 - 256), v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_100103A9C()
{
  v3 = STACK[0x858];
  STACK[0x7C0] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 8730) ^ 0x244A) - 444)) ^ (v1 + 8730))))();
}

_DWORD *sub_100103BC4@<X0>(_DWORD *result@<X0>, int a2@<W8>)
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

uint64_t sub_100103D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x270] = STACK[0x2A8];
  LODWORD(STACK[0x25C]) = v8;
  LODWORD(STACK[0x258]) = v9;
  return (*(a7 + 8 * (((*(v10 - 200) != 0) * (((v7 ^ 0x7E7) + 1424877183) & 0xAB12176F ^ 0x551)) ^ ((((v7 ^ 0x7E7) + 1424877183) & 0xAB12176F) + 4254))))();
}

uint64_t sub_100103DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
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

void sub_100103EB8(uint64_t a1)
{
  v1 = 1358806181 * ((-2 - ((~a1 | 0xD8F25D3E) + (a1 | 0x270DA2C1))) ^ 0xE7DD31BD);
  v2 = *(a1 + 32) - v1;
  v3 = (*(a1 + 36) ^ v1) == 326284622;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100103F90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_1001CC98C(a4, 0);
}

uint64_t sub_100104048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((1300 * (v5 == ((v3 + 444030009) & 0xE58897FD) - 5465)) ^ v3)))();
}

uint64_t sub_100104094(uint64_t a1)
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

uint64_t sub_1001041A0(uint64_t a1)
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

uint64_t sub_100104370()
{
  v0 = STACK[0x808];
  *v0 = 0u;
  v0[1] = 0u;
  return sub_100104390();
}

uint64_t sub_100104390@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  STACK[0x4C0] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (((v4 == 0) * (((v1 + 533503904) & 0xE0335FFB ^ 0xFFFFECBC) + (v1 ^ 0x1CCA))) ^ v1)))();
}

uint64_t sub_100104574(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

void sub_100104608(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
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
  JUMPOUT(0x1001047FCLL);
}

uint64_t sub_100105AB0(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int32x4_t a25, int8x16_t a26, int8x16_t a27)
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

uint64_t sub_100105AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
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

uint64_t sub_100105B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44)
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

uint64_t sub_100105CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1824088897 * ((1327682174 - (&a15 ^ 0x12622678 | 0x4F22D27E) + (&a15 ^ 0x12622678 | 0xB0DD2D81)) ^ 0xFAD6D89B);
  a18 = v19;
  a19 = a10;
  a17 = (v20 ^ 0xDFBFEFFF) + ((2 * v20) & 0xBF7FDFFE) - v23 + v22 + 1860499025;
  a15 = v23 + v22 + 2675;
  v24 = (*(v21 + 8 * (v22 + 8549)))(&a15);
  return (*(v21 + 8 * (((a16 != 16257999) * ((v22 + 1610603893) & 0xF6FBFFF5 ^ 0x56FBE1A3)) ^ v22)))(v24);
}

uint64_t sub_100105E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43)
{
  v46 = v44[396] ^ ((((a9 - 2129792) & 0xB6A6FF7D ^ 0x36869F5D) & v44[623] | *v44 & 0x7FFFFFFE) >> 1);
  v44[623] = (v46 + a3 - ((v46 << ((a9 - 2) ^ (a2 - 1))) & a4)) ^ *(v43 + 4 * (*v44 & 1));
  return (*(v45 + 8 * ((16144 * (a43 > 0x26F)) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_100105F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t sub_100105F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  a1[1] = 0;
  *v4 = a1;
  return (*(a4 + 8 * ((114 * (((STACK[0x460] == 0) ^ (23 * ((v5 + 72) & 0xF5 ^ 0x86))) & 1)) ^ (v5 - 3178))))();
}

uint64_t sub_100105FEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int8x16_t a19, int8x16_t a20, int8x16_t a21, int64x2_t a22, int8x16_t a23, uint64_t a24, uint64_t a25, int8x16_t a26, int8x16_t a27, int8x16_t a28, int64x2_t a29, int8x16_t a30, int64x2_t a31, int8x16_t a32, int8x16_t a33, int8x16_t a34, int64x2_t a35, int8x16_t a36, int8x16_t a37, int64x2_t a38, int8x16_t a39, int8x16_t a40, int64x2_t a41, int8x16_t a42, int8x16_t a43, int8x16_t a44, int8x16_t a45, int64x2_t a46)
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

uint64_t sub_1001061B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x988] = v66;
  STACK[0x990] = v64;
  return (*(a64 + 8 * ((8525 * (v65 > ((v67 - 8020) ^ 0x2AC ^ (v67 - 784081848) & 0x2EBC0ADAu ^ 0xB3CuLL))) ^ (v67 - 8020))))();
}

uint64_t sub_100106224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a13;
  a19 = 1317436891 * ((((&a17 | 0x624F459C) ^ 0xFFFFFFFE) - (~&a17 | 0x9DB0BA63)) ^ 0x2DB32215) + 8154;
  v21 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((18 * (a18 == 16257999)) ^ v19)))(v21);
}

uint64_t sub_1001062D4()
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
  return sub_10017E63C();
}

uint64_t sub_100106338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x966]) = v63;
  LODWORD(STACK[0x380]) = v63;
  return sub_10008C76C(v64 - 5276, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

void sub_100106388(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, unsigned int a7)
{
  v9 = a1 - 6723;
  v10 = 914963389 * (((&a3 | 0xB9F6746F) + (~&a3 | 0x46098B90)) ^ 0x950AC515);
  a4 = (v9 - 1317) ^ v10;
  a3 = 0;
  a5 = v7;
  a6 = v10 ^ 0x19EC40F9;
  a7 = -1686438660 - v10;
  (*(v8 + 8 * (v9 ^ 0x2CC1)))(&a3);
  sub_10017CBE0();
}

uint64_t sub_1001064B4()
{
  v2 = STACK[0x78C];
  STACK[0x740] += (v0 - 5268) ^ 0xFFFFFFFFFFFFFCB7;
  return (*(v1 + 8 * ((13494 * (v2 == 16257999)) ^ v0)))();
}

uint64_t sub_100106550@<X0>(int a1@<W8>)
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

uint64_t sub_1001066E8()
{
  v3 = STACK[0x32C];
  LODWORD(STACK[0x35C]) = STACK[0x2F0];
  LOBYTE(STACK[0x79B]) = STACK[0x310];
  LODWORD(STACK[0x49C]) = STACK[0x2D0];
  STACK[0x8A8] = v0;
  LODWORD(STACK[0x8B4]) = v1;
  return (*(v2 + 8 * (((v1 == 316 * (v3 ^ 0x15E5) - 328595766) * ((v3 + 1134778729) & 0xBC5C91A3 ^ 0x1E6B)) ^ (v3 - 3340))))();
}

void sub_100106770(int a1@<W8>)
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

uint64_t sub_1001067F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9)
{
  v11 = (((a8 ^ 0xE00AC47) - 234925127) ^ ((a8 ^ 0x64C0B268) - 1690350184) ^ ((a8 ^ 0xDC9875C1 ^ v10) + 593995819)) + 525420103;
  v12 = ((v11 ^ 0x36D64CA) - 1804966023) ^ v11 ^ ((v11 ^ 0xC7869539) + 1350669964) ^ ((v11 ^ 0xC3A41241) + 1419973108) ^ ((v11 ^ 0x6FB71FFF) - 122676146);
  v13 = v9 - 4422;
  v15 = v12 != 1761147981 && (v12 & 0xF) == v13 - 9133 + ((v13 - 699578591) & 0x29B2BAFC);
  return (*(a1 + 8 * ((458 * v15) ^ v13)))((v13 - 1822), a1, a2, a3, a4, a5, a6, a7, a9);
}

uint64_t sub_100106930@<X0>(unint64_t a1@<X8>)
{
  STACK[0x868] = a1;
  v3 = (*(v2 + 8 * (v1 ^ 0x3568)))(32, 0x103004054B5FA7DLL);
  STACK[0x580] = v3;
  return (*(v2 + 8 * (v1 | (16 * ((((v1 ^ 0x61) + 32) ^ (v3 == 0)) & 1)))))();
}

uint64_t sub_1001069A0(double a1, int8x16_t a2, int64x2_t a3)
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

uint64_t sub_100106A98()
{
  v5 = 12 * (v1 ^ 0x1104) + *(v2 + 8) + v0 - 1319436895;
  v7 = (*(v3 + 20) & 1) == 0 || v5 > 0xFFFFFFBE;
  return (*(v4 + 8 * ((v7 * (v1 ^ 0x10F9)) ^ v1)))();
}

void sub_100106AF8()
{
  (*(v2 + 8 * ((v0 | 0x5C2) + 8126)))();
  *(v1 + 24) = 0;
  sub_1000B6854();
}

uint64_t sub_100106B20()
{
  v2 = STACK[0x800];
  LODWORD(STACK[0x70C]) = LODWORD(STACK[0x800]) + 1;
  return (*(v1 + 8 * (((v2 < 5) * ((v0 - 3646) ^ 0x8D4)) | v0)))();
}

uint64_t sub_100106B70@<X0>(int a1@<W8>)
{
  v2 = STACK[0x418];
  STACK[0x770] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((v2 != 0) * (2 * (a1 ^ 0x756) - 2618)) | a1 ^ (a1 + 2704) ^ 0x273)))();
}

uint64_t sub_100106E24(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100106E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v8 + 8 * ((((v7 ^ 0x1498) + 2498 + 32 * (v7 ^ 0x1498) - 4839) * (LODWORD(STACK[0x4C4]) == LODWORD(STACK[0x5B0]))) ^ v7));
  LODWORD(STACK[0x5B0]) = -1254758812;
  return v9(a1, 3442015863, a3, 1348422546, 668742127, a6, a7, 4278255361);
}

uint64_t sub_100106FF0(uint64_t a1, uint64_t a2, unint64_t a3)
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
  return sub_1000E22E8(a1, 2021816022);
}

uint64_t sub_100107368()
{
  v10 = *(v0 + 16);
  v11 = ((-2 - ((~v7 | 0x5F49AF3459486BF9) + (v7 | 0xA0B650CBA6B79406))) ^ 0xC5B9EAF3AE12D81) * v5;
  *(v9 - 120) = v6;
  *(v9 - 112) = v11 + v4 + v10 - ((2 * v10) & 0xC0A4457886BED430);
  *(v9 - 104) = v3 - v11 + v2;
  v12 = (*(v1 + 8 * v8))(v9 - 120);
  return (*(v1 + 8 * ((5385 * (*(v9 - 100) == 16257999)) ^ v2)))(v12);
}

uint64_t sub_100107424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v4;
  return sub_1001B32B8(a1, a2, a3, a4);
}

void sub_100107454(uint64_t a1)
{
  v1 = *(a1 + 24) - 2048652491 * ((a1 + 991404335 - 2 * (a1 & 0x3B17A12F)) ^ 0x8AA6362A);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100107530@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_10010C6F8();
}

uint64_t sub_100107540@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x1794;
  v4 = ((a1 ^ 0x1794) + 1921) | 0x781;
  v5 = ((a1 ^ 0x1794) + 1725737790) & 0x99234FDF;
  v6 = STACK[0x7D8];
  STACK[0x810] = v1 + 116;
  STACK[0x518] = v6;
  return (*(v2 + 8 * (((v4 - 7027 + v5) * (v6 != 0)) ^ v3)))();
}

uint64_t sub_1001075F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39)
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
  return sub_1001076BC(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_1001076BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
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

uint64_t sub_100107788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LOWORD(STACK[0x9B6]);
  STACK[0x4E0] = STACK[0x9B8];
  return (*(v71 + 8 * ((13 * (((v72 == 17168) ^ (a71 - 92)) & 1)) ^ (a71 - 3719))))();
}

uint64_t sub_1001077E0@<X0>(__int16 a1@<W0>, __int16 a2@<W1>, __int16 a3@<W2>, int a4@<W3>, __int16 a5@<W8>)
{
  v12 = a5 + (*(v11 + ((a3 ^ 2) * a1 - ((a3 ^ 2) * a1) / 0x3B0u * a2)) ^ 0xA7) * ((a4 - 27734) & 0x71EC ^ 0x1152);
  *(v10 + (v8 * v5 - 13782 - (((((v8 * v5 - 13782) & 0xFFFEu) * v6) >> 16) >> 7) * v7)) = *(v10 + (v12 - ((((v12 & 0xFFFEu) * v6) >> 16) >> 7) * v7));
  return (*(v9 + 8 * ((122 * (v8 != -581887727)) ^ a4)))();
}

uint64_t sub_1001078F4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = 16 - ((a2 + 2) & ((v2 + 1012) ^ 0x146A) ^ 8u);
  LODWORD(STACK[0x658]) = v3;
  return (*(a1 + 8 * ((2150 * ((v2 ^ 0x9FB ^ a2 ^ 0x79EDFC5ADFE77675) + ((2 * a2) & 0x1BFCEDFFELL) + (v3 ^ 0xFEAF79FD1F76AE67) + 2 * (v3 & 7) - 0x789D7657FF5E1E66 < 0xFFFFFFF6)) ^ v2)))();
}

uint64_t sub_100107A40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
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

uint64_t sub_100107D8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x560] = 0;
  STACK[0x758] = 0;
  return (*(v2 + 8 * ((((v1 + 601645555) & 0xDC237A7F ^ 6) * (v3 == 0)) ^ v1)))();
}

uint64_t sub_100107DF0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100107E90@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v2 - 748;
  v7 = v3 ^ a2;
  v9 = (v4 - a1) < 0x20 || v7 < 8;
  return (*(v5 + 8 * ((11 * ((v9 ^ (v6 - 4)) & 1)) ^ v6)))();
}

_DWORD *sub_100107EDC()
{
  result = v1;
  *v1 = (v3 ^ 0x38F99FFF) - 939625520 + ((v3 << (v2 + 72)) & 0x71F230DA);
  return result;
}

uint64_t sub_1001080E4@<X0>(int a1@<W8>)
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

uint64_t sub_100108344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
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

uint64_t sub_10010875C()
{
  STACK[0x688] = STACK[0x648];
  LODWORD(STACK[0x8A4]) = STACK[0x46C];
  LODWORD(STACK[0x85C]) = 16257999;
  STACK[0x580] = *(v1 + 8 * (((v0 + 218371799) & 0xF2FBF7CB) - 5641));
  return sub_10008954C();
}

void sub_10010886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x4D8] = 0;
  STACK[0x500] = *(a72 + 8 * (v72 - 6069));
  JUMPOUT(0x1001088A8);
}

void sub_100108910(int a1, uint64_t a2, int a3)
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

uint64_t sub_1001089E4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3AF9)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x400];
  STACK[0x8A8] = v2;
  return (*(v3 + 8 * (((v2 == 0) * (((v0 + 441026197) & 0xE5B67E2F) - 9002)) ^ v0)))();
}

void sub_100108AC8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
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
  *&STACK[0x390] = xmmword_1003EAE50;
  *&STACK[0x270] = vdupq_n_s64(v8);
  JUMPOUT(0x100108C0CLL);
}

uint64_t sub_100109688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, char a20, unsigned int a21, uint64_t a22, int *a23)
{
  a22 = a19;
  a23 = &a18;
  a21 = (v23 - 1002) ^ (33731311 * ((1013938664 - (&a20 | 0x3C6F79E8) + (&a20 | 0xC3908617)) ^ 0xFA664C34));
  v25 = (*(v24 + 8 * ((v23 - 1220) ^ 0x2EAB)))(&a20);
  v26 = a18 != ((v23 - 2081) | 0x10) - 2165;
  return (*(v24 + 8 * (((8 * v26) | (16 * v26)) ^ (v23 - 1220))))(v25);
}

uint64_t sub_100109734()
{
  v2 = STACK[0x6E0];
  v3 = *STACK[0x9A0];
  STACK[0x958] = *(v1 + 8 * v0);
  STACK[0x5F0] = v3;
  LODWORD(STACK[0x6FC]) = 1;
  STACK[0x8D0] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 1000002677) & 0x3B9ADFFB ^ 0xBAC)) ^ (v0 + 5607))))();
}

void sub_1001097A4(_DWORD *a1)
{
  v1 = *a1 + 1710126949 * ((2 * (a1 & 0x272FA8CB) - a1 - 657434828) ^ 0xEACB0CA4);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1001098C4@<X0>(_DWORD *a1@<X7>, int a2@<W8>)
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

uint64_t sub_100109A1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
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
  v507.i64[0] = vqtbl4q_s8(v518, xmmword_1003EAE50).u64[0];
  v507.i64[1] = vqtbl4q_s8(v517, xmmword_1003EAE50).u64[0];
  v508 = vrev64q_s8(v507);
  *(v22 + 0x615402098122344FLL) = veorq_s8(vextq_s8(v508, v508, 8uLL), v514);
  return (*(v20 + 8 * ((13542 * ((a1 & 0xFFFFFFF0) == 16)) ^ (v21 - 638))))(0xB5615610F5B8F155, 0xE1F014810C505D35, 0x5B38AD8DDB3A7C5CLL, 0x2E5DB5ED7AC3D0C7, 0x49E9423B6F16E7D2);
}

uint64_t sub_10010C2E8@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x39BB)))(a1);
  *(STACK[0x420] + 24) = 0;
  return sub_10013A180();
}

uint64_t sub_10010C314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  return sub_1001B64A4(a1, a2, a3, a4);
}

void sub_10010C378(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
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

uint64_t sub_10010C48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17, int a18)
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

uint64_t sub_10010C630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LOWORD(STACK[0x926]);
  STACK[0x720] = STACK[0x928];
  return (*(v71 + 8 * ((6032 * (v72 == (((a71 + 27922) & 0x7FFF) + 15931))) ^ (a71 - 4846))))();
}

void sub_10010C694()
{
  (*(v2 + 8 * (v0 ^ 0x324F)))();
  *(v1 + 24) = 0;
  (*(v2 + 8 * ((v0 ^ 0x143C) + 8589)))(v1);
  JUMPOUT(0x10010C6D8);
}

uint64_t sub_10010C704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v12 - 116) = v11 - 1875091903 * ((((v12 - 120) | 0xE45B8641) - (v12 - 120) + ((v12 - 120) & 0x1BA479B8)) ^ 0xD22E05C2) + 960665617;
  (*(v10 + 8 * (v11 ^ 0x2DB6)))(v12 - 120);
  v13 = 1875091903 * ((v12 - 120) ^ 0x36758383);
  *(v12 - 120) = (v11 - 119668876) ^ v13;
  *(v12 - 116) = v13 ^ 0x5D845C70;
  v14 = (*(v10 + 8 * (v11 + 7501)))(v12 - 120);
  return (*(v10 + 8 * (((2 * (((v11 + 1) ^ (a10 >= 0)) & 1)) & 0xF7 | (8 * (((v11 + 1) ^ (a10 >= 0)) & 1))) ^ v11)))(v14);
}

uint64_t sub_10010C7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * ((&a16 - 558538160 - 2 * (&a16 & 0xDEB56250)) ^ 0x6EB6FA26) + 8154;
  a16 = &a12;
  v20 = (*(v18 + 77096))(&a16);
  return (*(v18 + 8 * ((157 * (a17 == v19)) ^ 0x1450u)))(v20);
}

uint64_t sub_10010C87C@<X0>(int a1@<W8>)
{
  v2 = STACK[0x3E8];
  STACK[0x760] = *(v1 + 8 * a1);
  return sub_100166958(v2);
}

uint64_t sub_10011A394()
{
  STACK[0x9F8] = v1;
  v3 = STACK[0x7F8];
  STACK[0xA00] = STACK[0x7F8];
  return (*(v2 + 8 * ((104 * (v1 - v3 > ((v0 - 904323884) & 0x35E6D1B7) - 302)) ^ v0)))();
}

uint64_t sub_10011A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_10011A4B8()
{
  v0 = STACK[0x3E4];
  v1 = LOWORD(STACK[0x88E]);
  STACK[0x620] = STACK[0x890];
  return (*(STACK[0x3E8] + 8 * (((v1 == 17168) * (v0 - 2477)) ^ (v0 - 563))))();
}

uint64_t sub_10011A504@<X0>(unsigned int a1@<W1>, uint64_t a2@<X3>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_10011A7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(v39 - 144) = *v38;
  *(v39 - 143) = *(v38 + 1);
  *(v39 - 135) = *(v38 + 9);
  *(v39 - 131) = *(v38 + 13);
  *(v39 - 129) = *(v38 + 15);
  return sub_10008DCA0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

void sub_10011A938(uint64_t a1)
{
  v1 = *a1 - 1710126949 * (((a1 | 0x5644DFC3) - (a1 & 0x5644DFC3)) ^ 0x645F8453);
  v2 = *(a1 + 8);
  v3 = 956911519 * (v5 ^ 0xEA917005);
  v5[1] = 439036670 - v3;
  v5[2] = v1 - v3 + 76;
  v6 = v2;
  v7 = v2 + 48;
  v4 = *(&off_100477F30 + (v1 ^ 0x11CE)) - 8;
  (*&v4[8 * (v1 ^ 0x36C0)])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10011AAB0@<X0>(int a1@<W8>)
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

uint64_t sub_10011AC7C@<X0>(void *a1@<X0>, int a2@<W8>)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v4 + 8 * (((a2 & ~((((v3 | 0x4CC) ^ 0xDD6) - 2186) ^ (v2 == 0))) * (4 * ((v3 | 0x4CC) ^ 0xDD6) - 8775)) ^ (v3 | 0x4CC))))();
}

uint64_t sub_10011ACC4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = (v13 ^ 0xFFFFFFFFFFFFE877 ^ (v14 + 2590)) + v12;
  *(a12 - 7 + v16) = *(a1 - 7 + v16);
  return (*(v15 + 8 * ((5656 * ((v12 & 0xFFFFFFF8) - 8 == v13)) ^ v14)))();
}

uint64_t sub_10011AD1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
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

void sub_10011B0BC(id a1)
{
  v1 = *(&off_100477F30 + ((-85 * ((dword_1004D54B0 + dword_1004D5528) ^ 0xDF)) ^ byte_1003DB9E0[byte_1003D1470[(-85 * ((dword_1004D54B0 + dword_1004D5528) ^ 0xDF))] ^ 0xEE]) + 123);
  v2 = -85 * ((dword_1004D54B0 + *v1) ^ 0xDF);
  v3 = *(&off_100477F30 + (byte_1003E29C8[(byte_1003DBAE8[v2 - 8] ^ 0xBF) - 8] ^ v2) - 14);
  v4 = &v8[1] + *v1 + *v3;
  *v1 = 2054362027 * v4 + 0x1FC86B74B1533AF5;
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v7 = 0;
  v8[0] = 4;
  LODWORD(v3) = 2054362027 * ((*v3 + *v1) ^ 0x3EF64BDF);
  LODWORD(v1) = byte_1003EAD2C[v3 - 12];
  v5 = *(&off_100477F30 + ((-85 * ((dword_1004D54B0 + dword_1004D5528) ^ 0xDF)) ^ byte_1003E2AC0[byte_1003DBBE0[(-85 * ((dword_1004D54B0 + dword_1004D5528) ^ 0xDF))] ^ 0x2A]) + 107) - 8;
  v6 = *&v5[8 * ((6854 * ((*&v5[8 * (byte_1003D1770[v1 ^ 0x1F] ^ v3) + 77224])(*(&off_100477F30 + (v3 ^ byte_1003D1770[v1 ^ 0xE9]) + 92) - 4, &v7, v8, 0, 0) == 0)) ^ 0xA12)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10011B29C(uint64_t result)
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

void sub_10011B340()
{
  v0 = *(&off_100477F30 + ((-85 * (dword_1004D5128 ^ 0xDF ^ dword_1004D54B0)) ^ byte_1003D1770[byte_1003EAD20[(-85 * (dword_1004D5128 ^ 0xDF ^ dword_1004D54B0))] ^ 0x71]) + 51);
  v1 = -85 * (*v0 ^ dword_1004D54B0 ^ 0xDF);
  v2 = *(&off_100477F30 + (byte_1003D1570[byte_1003EAC28[v1 - 8] ^ 0xDD] ^ v1) - 42);
  v3 = *v0 ^ &v5 ^ *v2;
  *v0 = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((((v6 | 0xE440A85C) ^ 0xFFFFFFFE) - (~v6 | 0x1BBF57A3)) ^ 0x29A40C33);
  LODWORD(v2) = 2054362027 * ((*v2 + *v0) ^ 0x3EF64BDF);
  v4 = *(&off_100477F30 + ((-85 * ((dword_1004D54B0 + dword_1004D5128) ^ 0xDF)) ^ byte_1003D1770[byte_1003EAD20[(-85 * ((dword_1004D54B0 + dword_1004D5128) ^ 0xDF))] ^ 0xE9]) + 135) - 8;
  (*&v4[8 * (byte_1003D177C[(byte_1003EAD2C[v2 - 12] ^ 0xE9) - 12] ^ v2) + 75936])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10011B5BC()
{
  v2 = *(STACK[0x538] + 24);
  STACK[0x840] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 ^ 0x81D) + 1355) ^ 0x1595)) ^ v0)))();
}

uint64_t sub_10011B640(double a1, double a2, int8x16_t a3, double a4, double a5, int8x16_t a6, int8x16_t a7, int64x2_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14)
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

uint64_t sub_10011B64C()
{
  LOWORD(STACK[0x886]) = v1;
  LODWORD(STACK[0x2C0]) = v1;
  return (*(STACK[0x330] + 8 * (v0 - 5256)))();
}

uint64_t sub_10011B714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
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

void sub_10011B838(_BYTE *a1)
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
  JUMPOUT(0x10011BA18);
}

uint64_t sub_10011BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v52 = v48 + v46 + (v49 ^ 0xA4A40192);
  v54 = ((((v47 + 13 + (v52 ^ 0xB9)) ^ ((v52 ^ 0x46) - 60)) ^ 0x7A ^ (122 - v52)) & 0xF) == 0xA && (((v52 ^ 0x5E54F7A) - 171729664) ^ v52 ^ (v47 + 1856589837 + (v52 ^ 0x9E8F8AB9)) ^ ((v52 ^ 0x6B4C5646) - 1687517756) ^ ((v52 ^ 0xFFFFBFFF) + 265907323)) != (v50 ^ 0xFD92690 ^ (v50 - 1761716056) & 0x69019DFD);
  return (*(v51 + 8 * ((125 * v54) ^ v50)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_10011BBE0(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0x9EA]) = v2;
  LODWORD(STACK[0x340]) = v2;
  return sub_100146F00(a1, a2, v3 - 8557);
}

uint64_t sub_10011BBFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x944]) = a4;
  STACK[0x498] = STACK[0x880];
  STACK[0x8E8] = *(STACK[0x400] + 8 * (v4 - 9069));
  return sub_100166B64();
}

_DWORD *sub_10011BC50(_DWORD *result)
{
  v1 = 1875091903 * ((result & 0x4BD02336 | ~(result | 0x4BD02336)) ^ 0x825A5F4A);
  v2 = result[1] ^ v1;
  v3 = *(*(&off_100477F30 + (v1 ^ *result ^ 0xF8DE07C4)) + 23);
  if (v2 != 1568955504)
  {
    v3 = 203144075;
  }

  result[2] = v3;
  return result;
}

void sub_10011BD00(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (2008441969 * ((-2 - ((~a1 | 0x655E3A76) + (a1 | 0x9AA1C589))) ^ 0x2DC76E78));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10011BEFC@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
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

uint64_t sub_10011C068(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = LODWORD(STACK[0x3E4]) ^ 0x3142;
  *a1 = 0;
  a1[1] = 0;
  *(v4 + 8) = a1;
  v6 = (*(a4 + 8 * (v5 ^ 0x85)))(16, 0x20040A4A59CD2);
  return (*(STACK[0x3E8] + 8 * (((v6 == 0) * (((v5 + 1880198990) & 0x8FEE5FEF) - 5208)) ^ v5)))();
}

uint64_t sub_10011C104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = 476323082 - 1710126949 * ((-348791821 - (&a13 | 0xEB35DBF3) + (&a13 | 0x14CA240C)) ^ 0x26D17F9C);
  v16 = (*(v14 + 77088))(&a13);
  return (*(v14 + 8 * ((15809 * (a14 == 16257999)) ^ v15)))(v16);
}

uint64_t sub_10011C1B4@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return sub_100142674();
}

uint64_t sub_10011C220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
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

uint64_t sub_10011C2FC()
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

uint64_t sub_10011C38C()
{
  *(v5 - 224) = v4 ^ (((-759341880 - ((v5 - 232) | 0xD2BD5CC8) + ((v5 - 232) | 0x2D42A337)) ^ 0x1BE124C) * v2);
  v6 = (*(v0 + 8 * (v1 ^ 0x3050)))(v5 - 232);
  v7 = STACK[0x330];
  *(v3 + 8) = *(v5 - 232) ^ ((v1 ^ 0xA1) + 85);
  return (*(v7 + 8 * ((v1 - 4026) ^ 0x1D10)))(v6);
}

uint64_t sub_10011C494(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x824]) = 16257999;
  STACK[0x7C0] = STACK[0x5F0];
  return sub_1001850E8();
}

uint64_t sub_10011C524(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (a2 - 32);
  v9 = (a3 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v6 == 32) * a4) ^ (v4 + v5 + 1925))))();
}

uint64_t sub_10011C588@<X0>(int a1@<W8>)
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

uint64_t sub_10011C67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
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

uint64_t sub_10011C814()
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

uint64_t sub_10011C97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
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

uint64_t sub_10011CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, int a19)
{
  *v20 = a16;
  *v19 = a19;
  v23 = (*(v22 + 8 * (v21 + 3012)))();
  return (*(v22 + 8 * ((55 * (a16 - ((2 * a16) & 0x3503BC70) + 444718648 == ((((4 * v21) ^ 0x742C) + 444706065) ^ (2591 * (v21 ^ 0x19DD))))) ^ v21)))(v23);
}

uint64_t sub_10011CBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(STACK[0x470] + 24);
  STACK[0x4E0] = v4;
  return (*(STACK[0x400] + 8 * (((v4 == 0) * ((((v3 + 4478) | 0x420) ^ 0xFFFFD5A2) + (v3 ^ 0x12))) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_10011CC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((((2 * &a14) | 0xBDFC1FB8) - &a14 + 553775140) ^ 0x6EFD97AA) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((14673 * (a15 == v17)) ^ v18)))(v19);
}

uint64_t sub_10011CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
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

uint64_t sub_10011CE50(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x650] = a1;
  STACK[0x760] = *(v2 + 8 * v1);
  return sub_100166958(a1);
}

uint64_t sub_10011CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v67 - 224) = (v65 - 2140798744) ^ (914963389 * ((((2 * (v67 - 232)) | 0x40D780B8) - (v67 - 232) + 1603551140) ^ 0x8C977127));
  v68 = (*(v64 + 8 * (v65 + 7004)))(v67 - 232);
  *(v66 + 8) = *(v67 - 232) ^ 0xAC;
  return (*(a64 + 8 * (v65 + 5666)))(v68);
}

uint64_t sub_10011CF80@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = a2 + 3058;
  (*(a1 + 8 * (a2 ^ 0x3191)))();
  v3 = STACK[0x3E8];
  STACK[0x510] = 0;
  return (*(v3 + 8 * (((((STACK[0x430] == 0) ^ (v2 - 6)) & 1) * ((v2 - 1923607724) & 0x72A7DDBF ^ 0x1120)) ^ v2)))();
}

uint64_t sub_10011D004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
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

void sub_10011D0E8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
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
  *&STACK[0x350] = xmmword_1003EAE50;
  JUMPOUT(0x10011D27CLL);
}

uint64_t sub_10011DDD0@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_1001A1A94();
}

uint64_t sub_10011DE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
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
          return sub_100190F34(a1, a2, a3);
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
  return sub_1001C2348(v10 + 4107);
}

uint64_t sub_10011E120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v8 = a7 ^ 0x1C65;
  v9 = (a7 ^ 0x1C65) + 2353;
  v10 = STACK[0x3C8];
  STACK[0x758] = STACK[0x3C8];
  return (*(v7 + 8 * (((((v10 == 0) ^ v9) & 1) * (v8 ^ 0xAC9)) ^ v8)))(a1, a2, a3, a4, a5, a6, v9 | 0x402u);
}

uint64_t sub_10011E1CC()
{
  v2 = (*(v1 + 8 * (v0 + 690)))(32, 0x100004077774924);
  STACK[0x578] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 342) ^ 0x219D)) ^ v0)))();
}

uint64_t sub_10011E224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(STACK[0x4B8] + 20);
  if (!v29)
  {
    return sub_10017A834(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
  }

  if (v29 != 1)
  {
    return sub_100136EA0(a1, a2);
  }

  (*(v28 + 8 * (v27 + 6966)))(STACK[0x3C8], 0, 32);
  return sub_100184D3C(&STACK[0x580]);
}

uint64_t sub_10011E2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  v19 = (v16 - 772848933) & 0x2E10AFED;
  a15 = a12;
  a16 = (v16 + 2943) ^ ((((&a14 | 0xEDEEDB39) - &a14 + (&a14 & 0x121124C0)) ^ 0xB587085B) * v18);
  (*(v17 + 8 * (v16 + 4209)))(&a14);
  a16 = (v19 + 6326) ^ ((((&a14 | 0x7C519F29) + (~&a14 | 0x83AE60D6)) ^ 0x24384C4A) * v18);
  a15 = a11;
  v20 = (*(v17 + 8 * (v19 + 7592)))(&a14);
  return sub_10011E3C4(v20);
}

uint64_t sub_10011E404()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3FD0)))(32, 0x100004077774924);
  STACK[0x878] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 ^ 0x1B37) + 9106) ^ (29 * (v0 ^ 0x1B37)))) ^ v0)))();
}

uint64_t sub_10011E488@<X0>(int a1@<W0>, uint64_t a2@<X8>)
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

uint64_t sub_10011E5F0()
{
  STACK[0x430] = STACK[0x4B0];
  LODWORD(STACK[0x664]) = STACK[0x5EC];
  return sub_10011E628();
}

uint64_t sub_10011E628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x6D8]) = v4;
  STACK[0x480] = *(a4 + 8 * (v5 - 4659));
  return sub_10011BA58(a1, a2, a3, a4);
}

uint64_t sub_10011E684@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3 = *(v2 + 8);
  STACK[0x808] = v3;
  return (*(a1 + 8 * (((v3 == 0) * ((209 * (a2 ^ 0x2130)) ^ (a2 - 3671))) ^ a2)))();
}

uint64_t sub_10011E700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19)
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

uint64_t sub_10011E880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = *STACK[0x5F0];
  STACK[0x738] = 0;
  STACK[0x608] = 0;
  return (*(v71 + 8 * (((v72 == 0) * (((a71 - 394) | 0x18A) - 6062)) ^ (a71 + 2560))))();
}

uint64_t sub_10011E8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int8x16_t a7, int8x16_t a8, int64x2_t a9, int8x16_t a10, int8x16_t a11, int8x16_t a12, int8x16_t a13, int8x16_t a14)
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

uint64_t sub_10011E930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_10011E9CC()
{
  v5 = **(&off_100477F30 + (v2 ^ 0x515));
  v6 = 2 * (v4 - 232);
  *(v4 - 232) = v2 + 1710126949 * (((v6 | 0x564E00DE) - (v4 - 232) - 723976303) ^ 0x193C5BFF) + 7387;
  *(v4 - 224) = v5;
  (*(v0 + 8 * (v2 + 8298)))(v4 - 232);
  *(v4 - 228) = (v2 - 1451033470) ^ ((((v6 | 0xE8E367C4) - (v4 - 232) + 193874974) ^ 0x1EE0C3E7) * v3);
  v7 = (*(STACK[0x3E8] + 8 * (v2 + 8274)))(v4 - 232);
  return (*(STACK[0x3E8] + 8 * ((14 * (((v2 + 16) ^ (*(v4 - 232) == v1)) & 1)) ^ v2)))(v7);
}

uint64_t sub_10011EC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (v64 - 1785) | 0xA48;
  *(v66 - 224) = (v68 - 2140798744) ^ (914963389 * ((((v66 - 232) | 0x95E9CF4F) - ((v66 - 232) & 0x95E9CF4F)) ^ 0xB9157E34));
  v69 = (*(v67 + 8 * (v68 + 7004)))(v66 - 232);
  *v65 = *(v66 - 232) ^ 0xAC;
  return (*(a64 + 8 * (v68 + 6687)))(v69);
}

uint64_t sub_10011ED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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
  return sub_1001BCA7C(a1, 16, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10011EF40()
{
  v2 = STACK[0x7D8];
  STACK[0x3E0] = STACK[0x520] + 108;
  STACK[0x850] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 ^ 0x1FA4) - 4762) ^ ((v0 ^ 0x1FA4) - 4770))) | v0 ^ 0x1FA4)))();
}

uint64_t sub_10011EFE0()
{
  STACK[0x618] = 0;
  v2 = STACK[0x66C];
  STACK[0x8F8] = 0;
  return (*(v0 + 8 * (((v2 == v1 + 16251916) * (((v1 - 4482) | 0x1182) - 4487)) ^ (v1 - 5248))))();
}

void sub_10011F03C()
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
  JUMPOUT(0x10011F2D4);
}

uint64_t sub_1001208D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

void sub_100120958(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1000FEA94);
}

void sub_1001209C8(int a1@<W8>)
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

uint64_t sub_100120AB8()
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

uint64_t sub_100120C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48)
{
  v50 = *(&off_100477F30 + (v48 ^ 0xEDF));
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

uint64_t sub_100120ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a10;
  a16 = 1317436891 * (((&a14 | 0x1EE433E4) - &a14 + (&a14 & 0xE11BCC18)) ^ 0xAEE7AB92) + 8154;
  v19 = (*(v17 + 77096))(&a14);
  return (*(v17 + 8 * ((6346 * (a15 == v18)) ^ v16)))(v19);
}

uint64_t sub_100120F9C@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_100142674();
}

uint64_t sub_100122BC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>)
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

uint64_t sub_100122E5C@<X0>(_BYTE *a1@<X8>)
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
  return sub_100129394(STACK[0x6B0]);
}

uint64_t sub_100123018@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x33C4)))(a1);
  *(STACK[0x6B0] + 24) = 0;
  return sub_100123040();
}

uint64_t sub_100123040()
{
  v2 = (*(v1 + 8 * (v0 + 2830)))();
  STACK[0x6B0] = 0;
  return sub_100123070(v2);
}

uint64_t sub_100123070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x538];
  STACK[0x850] = STACK[0x538];
  return (*(v4 + 8 * (((((v5 == 0) ^ (v3 + 92)) & 1) * (((v3 - 4335) | 0x98) - 109)) ^ v3)))(a1, a2, a3, 16215976);
}

void sub_1001230C8()
{
  (*(v1 + 8 * (v2 + 5616)))();
  *(v0 + 24) = 0;
  JUMPOUT(0x100049018);
}

uint64_t sub_1001230F4@<X0>(int8x16_t *a1@<X8>)
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

uint64_t sub_10012324C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
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

uint64_t sub_10012378C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = v4;
  return sub_10013A1A0(a1, a2, a3);
}

uint64_t sub_1001237A0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 40);
  *(v5 - 112) = veorq_s8(**(a1 + 24), xmmword_1003EAE60);
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

uint64_t sub_100123810@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_100124818(int8x16_t a1, int8x16_t a2, double a3, double a4, int32x4_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, int a15)
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

uint64_t sub_100124950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, int a14, uint64_t a15)
{
  v19 = 1875091903 * ((&a12 & 0xF9B9BFD1 | ~(&a12 | 0xF9B9BFD1)) ^ 0x3033C3AD);
  a13 = ((2 * v15) & 0xC63B7FDE) + v19 + ((((3 * (v18 ^ 0x1135)) ^ 0x13AC) + 1662892878) ^ v15) - 1124141381;
  a14 = v19 + v18 + 1938;
  a15 = a10;
  v20 = (*(v16 + 8 * (v18 ^ 0x3337)))(&a12);
  return (*(v16 + 8 * ((407 * (a12 != v17)) ^ v18)))(v20);
}

uint64_t sub_100124A24()
{
  v3 = v1 - 2037;
  v4 = (*(v0 + 8 * (v3 + 6317)))(v2, *(&off_100477F30 + (v3 ^ 0xDB4))) == 0;
  return (*(v0 + 8 * ((v4 * (((v3 + 1604661758) & 0xA05ACFFB) - 3911)) | v3)))();
}

uint64_t sub_100124A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21)
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

uint64_t sub_100124DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  v24 = ((v23 - 2129130941 - 2 * ((v23 - 152) & 0x81180ADB)) ^ 0x6B897ADE) * v19;
  *(v23 - 144) = v22;
  *(v23 - 152) = 554685624 - v24;
  *(v23 - 148) = v24 + a19 + 6343;
  *(v23 - 132) = v24 ^ 0xB546D09F;
  v25 = (*(v21 + 8 * (a19 ^ 0x2A43)))(v23 - 152);
  return (*(v21 + 8 * ((4732 * (*(v23 - 136) == ((a19 + 3958) ^ (v20 - 2909)))) ^ a19)))(v25);
}

uint64_t sub_100124E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
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

uint64_t sub_100124F60@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = ((a2 ^ 0x16ED) + 1588223240) & 0xA1559EF7;
  **(a1 + 8) = v5 + v6 + (v7 ^ 0x63F);
  return (*(v3 + 8 * ((4202 * (*(a3 + 24) == v4 + 2 * (v7 ^ 0x2F1) + 2383)) ^ v7)))();
}

uint64_t sub_100124FCC(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
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

uint64_t sub_100125120(uint64_t a1)
{
  v2 = *(a1 + 16) + 31943069 * (((a1 | 0x3D7238B5) - (a1 | 0xC28DC74A) - 1030895798) ^ 0x5EDB7ECD);
  v3 = *a1;
  v4 = *(a1 + 8) - 31943069 * (((a1 | 0x8AA577063D7238B5) - (a1 | 0x755A88F9C28DC74ALL) + 0x755A88F9C28DC74ALL) ^ 0xD9B7469D5EDB7ECDLL);
  v8[1] = v2 - 1875091903 * ((2 * (v8 & 0x578D6448) - v8 + 678599605) ^ 0x1E071836) + 376411080;
  v5 = *(&off_100477F30 + (v2 ^ 0x22D30DAA)) - 8;
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

void sub_100125320()
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

uint64_t sub_100125348()
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

void sub_100125488()
{
  v0 = *(&off_100477F30 + ((-85 * ((dword_1004D54B0 - dword_1004D54C8) ^ 0xDF)) ^ byte_1003E29C0[byte_1003DBAE0[(-85 * ((dword_1004D54B0 - dword_1004D54C8) ^ 0xDF))] ^ 0xBF]) - 39);
  v1 = *(v0 - 4);
  v2 = *(&off_100477F30 + (byte_1003E29C8[(byte_1003DBAE8[(-85 * ((dword_1004D54B0 - v1) ^ 0xDF)) - 8] ^ 0x9B) - 8] ^ (-85 * ((dword_1004D54B0 - v1) ^ 0xDF))) + 128);
  v3 = v1 - &v5 + *v2;
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * ((v6 ^ 0x9B381DD7) & 0x4F3E744A) - (v6 ^ 0x9B381DD7) + 817990581) ^ 0x99E2CDF2);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100477F30 + ((-85 * ((dword_1004D54B0 + dword_1004D54C8) ^ 0xDF)) ^ byte_1003D1770[byte_1003EAD20[(-85 * ((dword_1004D54B0 + dword_1004D54C8) ^ 0xDF))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_1003D177C[(byte_1003EAD2C[v2 - 12] ^ 0xB1) - 12] ^ v2) + 76728])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001256D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, char a14, char *a15, char *a16, uint64_t a17, unsigned int a18, int a19)
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

uint64_t sub_100125778()
{
  v2 = *(STACK[0x720] + 8);
  STACK[0x758] = *(v1 + 8 * (v0 - 5373));
  return sub_10013BA64(v2);
}

uint64_t sub_1001257B4()
{
  v3 = (v0 - 8486) | 0x104;
  STACK[0xA68] = v1;
  v4 = STACK[0x7C0];
  STACK[0xA70] = STACK[0x7C0];
  return (*(v2 + 8 * (((v1 - v4 > 9) * (((v3 - 1156) | 0x106) + ((v3 + 100243927) & 0xFA066B6E) + 4005)) ^ v3)))();
}

uint64_t sub_100125828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
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