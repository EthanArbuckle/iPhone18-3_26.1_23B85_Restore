uint64_t sub_1004CC154@<X0>(int a1@<W8>)
{
  v2 = (((a1 ^ 0x5729F66D) - 1462367853) ^ ((a1 ^ 0x7BC97132) - 2076799282) ^ ((a1 ^ 0xDEAB031A) + 559217894)) + (((*(v1 + 72) ^ 0x3B267D3B) - 992378171) ^ ((*(v1 + 72) ^ 0x5681C6B8) - 1451345592) ^ ((*(v1 + 72) ^ 0x9FEC3FC6) + 1611907130)) + 1158514927;
  *(v1 + 72) = v2 ^ ((v2 ^ 0xAC3338FF) + 867845990) ^ ((v2 ^ 0xBE3DE65E) + 565483973) ^ ((v2 ^ 0xC878139) - 1827733852) ^ ((v2 ^ 0x7EFFDFFD) - 512319384) ^ 0x923D0420;
  v3 = STACK[0xE238];
  v4 = (((LODWORD(STACK[0x58FC]) ^ 0xE085AB2A) + 528110806) ^ ((LODWORD(STACK[0x58FC]) ^ 0xF08A2BAC) + 259380308) ^ ((LODWORD(STACK[0x58FC]) ^ 0xE24404C3) + 498858813)) + 1124382822 + (((v3[19] ^ 0x78017667) - 2013361767) ^ ((v3[19] ^ 0x8535F0D9) + 2060062503) ^ ((v3[19] ^ 0xF7F02FB) - 259982075));
  v5 = (((LODWORD(STACK[0xCF1C]) ^ 0x655AC961) - 1700448609) ^ ((LODWORD(STACK[0xCF1C]) ^ 0x9EF79708) + 1627941112) ^ ((LODWORD(STACK[0xCF1C]) ^ 0x9E6DA2C) - 166124076)) + 260293401 + (((v3[20] ^ 0xA53CE413) + 1522736109) ^ ((v3[20] ^ 0x113F4D56) - 289361238) ^ ((v3[20] ^ 0x46482D00) - 1179135232));
  v3[19] = v4 ^ ((v4 ^ 0xBE732EE) - 1435147570) ^ ((v4 ^ 0x85C914DB) + 609961209) ^ ((v4 ^ 0x3FBC7617) - 1641142731) ^ ((v4 ^ 0xEFFFFFFE) + 1315811294) ^ 0xAC262B99;
  v3[20] = v5 ^ ((v5 ^ 0xF682CE1B) + 596740972) ^ ((v5 ^ 0xAF48523D) + 2052790094) ^ ((v5 ^ 0x14D97956) - 1043710937) ^ ((v5 ^ 0x67FF5FFF) - 1293149552) ^ 0xD8A73ECA;
  v6 = (((LODWORD(STACK[0x64F8]) ^ 0x6942B69E) - 1765979806) ^ ((LODWORD(STACK[0x64F8]) ^ 0xAD4C2008) + 1387519992) ^ ((LODWORD(STACK[0x64F8]) ^ 0x364512D3) - 910496467)) + 527359099 + (((v3[21] ^ 0x9B79739B) + 1686539365) ^ ((v3[21] ^ 0x30CE899D) - 818842013) ^ ((v3[21] ^ 0x59FC7E43) - 1509719619));
  v3[21] = v6 ^ ((v6 ^ 0xAA2C3EB9) + 1862537912) ^ ((v6 ^ 0xCD78CB2F) + 139519778) ^ ((v6 ^ 0x2254D9A8) - 411241049) ^ ((v6 ^ 0x7FD7FFCF) - 1157639230) ^ 0xC89C57B4;
  STACK[0x7ED8] -= 320;
  return (STACK[0x8868])();
}

uint64_t sub_1004CC688()
{
  v0 = STACK[0x51B8] - 3196;
  LODWORD(STACK[0xB1E8]) = -143155721;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004CC6B4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  if (a7 < a1 != (a8 - 778120737) < 0x281D24A5)
  {
    v8 = a7 < a1;
  }

  else
  {
    v8 = a8 - 778120737 < a7;
  }

  return (*(STACK[0x57D8] + 8 * ((188 * v8) ^ a6)))();
}

uint64_t sub_1004CD04C()
{
  v0 = STACK[0x51B8];
  v1 = (STACK[0x51B8] - 20566) | 0x212;
  *(STACK[0xC5B8] - 0x1883660EE814440ALL) = STACK[0xDAE4];
  return (*(STACK[0x57D8] + 8 * ((12038 * (LODWORD(STACK[0xDAE8]) == v1 - 143115649)) ^ (v0 - 20036))))();
}

uint64_t sub_1004CD0D4()
{
  if (STACK[0x51B8] - 2101991698 + LODWORD(STACK[0xABF0]) + 3136 >= 8)
  {
    v0 = STACK[0xA08C];
  }

  else
  {
    v0 = -143113107;
  }

  return (*(STACK[0x57D8] + 8 * (((v0 == -143113071) * (STACK[0x51B8] - 17766)) ^ (STACK[0x51B8] - 4286))))();
}

uint64_t sub_1004CD150()
{
  v1 = STACK[0x9110];
  STACK[0xDAF8] = STACK[0xB510];
  LODWORD(STACK[0xAD74]) = v1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004CD3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27.i64[0] = v7 + v4 + (v5 ^ 0xFFFFFFFFFFFFDB7ELL);
  STACK[0x5710] = *(v7 + v4 - 8);
  v27.i64[1] = v7 + v4 - 8;
  v28 = v27;
  *&STACK[0x5700] = v27;
  v29.i64[0] = v7 + v4 - 1;
  v29.i64[1] = v7 + v4 - 2;
  v30 = v29;
  *&STACK[0x56F0] = v29;
  v31.i64[0] = v7 + v4 - 3;
  v31.i64[1] = v7 + v4 - 4;
  v32.i64[0] = v7 + v4 - 5;
  v32.i64[1] = v7 + v4 - 6;
  v29.i64[0] = a3 + a4 + v6;
  v29.i64[1] = a3 + a4 + v11;
  v33 = v29;
  *&STACK[0x5680] = v29;
  v34.i64[0] = a3 + a4 + v9;
  v29.i64[0] = a3 + a4 + v14;
  v34.i64[1] = a3 + a4 + v13;
  v29.i64[1] = a3 + a4 + v15;
  v35 = v29;
  *&STACK[0x5660] = v29;
  v36 = vandq_s8(v32, *&STACK[0x4D70]);
  v37 = vandq_s8(v31, *&STACK[0x4D70]);
  v38 = vandq_s8(v30, *&STACK[0x4D70]);
  v39 = vandq_s8(v28, *&STACK[0x4D70]);
  v40 = *&STACK[0x4D70];
  v41 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v45 = vaddq_s64(vsubq_s64(v44, vandq_s8(vaddq_s64(vaddq_s64(v44, v44), v17), v16)), *&STACK[0x55F0]);
  v46 = vaddq_s64(vsubq_s64(v43, vandq_s8(vaddq_s64(vaddq_s64(v43, v43), v17), v16)), *&STACK[0x55F0]);
  v47 = vaddq_s64(vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), v17), v16)), *&STACK[0x55F0]);
  v48 = vaddq_s64(vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), v17), v16)), *&STACK[0x55F0]);
  v49 = veorq_s8(v48, *&STACK[0x55E0]);
  v50 = veorq_s8(v47, *&STACK[0x55E0]);
  v51 = veorq_s8(v46, *&STACK[0x55E0]);
  v52 = veorq_s8(v45, *&STACK[0x55E0]);
  v53 = veorq_s8(v45, v18);
  v54 = veorq_s8(v46, v18);
  v55 = veorq_s8(v47, v18);
  v56 = veorq_s8(v48, v18);
  v57 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v53), *&STACK[0x4690]);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54), *&STACK[0x4690]);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v55), *&STACK[0x4690]);
  v61 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v62 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v63 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v56), *&STACK[0x4690]);
  v65 = veorq_s8(v64, v63);
  v66 = veorq_s8(v60, v62);
  v67 = veorq_s8(v58, v61);
  v68 = veorq_s8(v57, v59);
  v69 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v70 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v71 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v68);
  v73 = veorq_s8(vaddq_s64(v69, v65), *&STACK[0x4640]);
  v74 = veorq_s8(vaddq_s64(v70, v66), *&STACK[0x4640]);
  v75 = veorq_s8(vaddq_s64(v71, v67), *&STACK[0x4640]);
  v76 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v78 = veorq_s8(v72, *&STACK[0x4640]);
  v79 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v81 = veorq_s8(v75, v79);
  v82 = veorq_s8(v74, v77);
  v83 = veorq_s8(v73, v76);
  v84 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v83);
  v88 = veorq_s8(vaddq_s64(v84, v80), *&STACK[0x46D0]);
  v89 = veorq_s8(vaddq_s64(v85, v81), *&STACK[0x46D0]);
  v90 = veorq_s8(vaddq_s64(v86, v82), *&STACK[0x46D0]);
  v91 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v94 = veorq_s8(v87, *&STACK[0x46D0]);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v96 = veorq_s8(v90, v93);
  v97 = veorq_s8(v89, v92);
  v98 = veorq_s8(v88, v91);
  v99 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v98);
  v103 = vaddq_s64(v101, v97);
  v104 = vaddq_s64(v100, v96);
  v105 = vaddq_s64(v99, v95);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), v22), v105), v23), v21);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v22), v104), v23), v21);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), v22), v103), v23), v21);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), v22), v102), v23), v21);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v111 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v112 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  *&STACK[0x56E0] = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  *&STACK[0x56D0] = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  *&STACK[0x5670] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v112);
  v113 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  *&STACK[0x56C0] = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v111);
  v116 = vandq_s8(v35, v40);
  v117 = vandq_s8(v34, v40);
  v118 = vandq_s8(v33, v40);
  v119 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), *&STACK[0x46B0]);
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), *&STACK[0x45B0]);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), *&STACK[0x46B0]);
  v123 = veorq_s8(v122, *&STACK[0x45A0]);
  v124 = veorq_s8(v120, *&STACK[0x45A0]);
  v125 = veorq_s8(v120, *&STACK[0x4660]);
  v126 = veorq_s8(v122, *&STACK[0x4660]);
  v127 = veorq_s8(v115, *&STACK[0x45B0]);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v126);
  v129 = veorq_s8(v127, v114);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v131 = veorq_s8(v121, v113);
  v132 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), v20), v128), v24), v19);
  v136 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v137 = veorq_s8(v135, v134);
  v138 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v140 = vaddq_s64(v136, v131);
  v141 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), v20), v130), v24), v19);
  v143 = veorq_s8(v142, v132);
  v144 = vaddq_s64(v133, v129);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v146 = veorq_s8(vaddq_s64(v138, v137), *&STACK[0x46E0]);
  v147 = veorq_s8(v144, *&STACK[0x4BB0]);
  v148 = veorq_s8(v145, *&STACK[0x46E0]);
  v149 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v151 = veorq_s8(v140, *&STACK[0x4BB0]);
  v152 = veorq_s8(v148, v150);
  v153 = veorq_s8(v146, v149);
  v154 = veorq_s8(v151, v139);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v153);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v152);
  v157 = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v158 = veorq_s8(v147, v141);
  v159 = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v160 = veorq_s8(v155, *&STACK[0x46A0]);
  v161 = veorq_s8(v160, v159);
  v162 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v164 = veorq_s8(v156, *&STACK[0x46A0]);
  v165 = veorq_s8(v164, v157);
  v166 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v168 = vaddq_s64(v163, v161);
  v169 = vaddq_s64(vsubq_s64(v167, vandq_s8(vaddq_s64(v167, v167), *&STACK[0x5740])), *&STACK[0x57A0]);
  v170 = vaddq_s64(v166, v158);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(v168, vandq_s8(vaddq_s64(v168, v168), *&STACK[0x5740])), *&STACK[0x57A0]), *&STACK[0x5760]);
  v172 = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v173 = veorq_s8(v169, *&STACK[0x5760]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v175 = veorq_s8(v171, v172);
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), *&STACK[0x45C0]);
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v175), *&STACK[0x45C0]);
  v178 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v179 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v180 = veorq_s8(v176, v178);
  v181 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v180);
  v183 = vaddq_s64(v181, v179);
  v184 = vaddq_s64(v162, v154);
  v185 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v182, v182), *&STACK[0x5790]), v182), *&STACK[0x5750]);
  v186 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v187 = veorq_s8(v185, *&STACK[0x57C0]);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v189 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v190 = vsubq_s64(v184, vandq_s8(vaddq_s64(v184, v184), v25));
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v183, v183), *&STACK[0x5790]), v183), *&STACK[0x5750]), *&STACK[0x57C0]);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, v186));
  v193 = vaddq_s64(v189, v188);
  v194 = vdupq_n_s64(0x38uLL);
  v195 = veorq_s8(*&STACK[0x5670], *&STACK[0x45B0]);
  v196 = vaddq_s64(v119, *&STACK[0x46B0]);
  v197 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v192, vandq_s8(vaddq_s64(v192, v192), *&STACK[0x57B0])), *&STACK[0x5780]), *&STACK[0x5770]), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v194)));
  v260.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v193, vandq_s8(vaddq_s64(v193, v193), *&STACK[0x57B0])), *&STACK[0x5780]), *&STACK[0x5770]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5660], 3uLL), v194))), vshlq_u64(veorq_s8(vaddq_s64(v190, v26), *&STACK[0x55D0]), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v194))));
  v260.val[1] = veorq_s8(v197, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v170, vandq_s8(vaddq_s64(v170, v170), v25)), v26), *&STACK[0x55D0]), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v194))));
  v198 = veorq_s8(v196, *&STACK[0x45A0]);
  v199 = veorq_s8(v195, *&STACK[0x56C0]);
  v200 = veorq_s8(v196, *&STACK[0x4660]);
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v200);
  v202 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v203 = vsubq_s64(vorrq_s8(vaddq_s64(v201, v201), v20), v201);
  v204 = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  v205 = veorq_s8(vaddq_s64(v203, v24), v19);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v207 = veorq_s8(vaddq_s64(v202, v199), *&STACK[0x4BB0]);
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206), *&STACK[0x46E0]);
  v209 = veorq_s8(v207, v204);
  v210 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v211 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v212 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v213 = veorq_s8(vaddq_s64(v211, v210), *&STACK[0x46A0]);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214);
  v216 = vaddq_s64(v212, v209);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(v215, vandq_s8(vaddq_s64(v215, v215), *&STACK[0x5740])), *&STACK[0x57A0]), *&STACK[0x5760]);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218), *&STACK[0x45C0]);
  v220 = vsubq_s64(v216, vandq_s8(vaddq_s64(v216, v216), v25));
  v221 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v221);
  v223 = vshlq_u64(veorq_s8(vaddq_s64(v220, v26), *&STACK[0x55D0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x56F0], 3uLL), v194)));
  v224 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v222, v222), *&STACK[0x5790]), v222), *&STACK[0x5750]), *&STACK[0x57C0]);
  v225 = a3 + a4 + v12;
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL)));
  v227 = vsubq_s64(v226, vandq_s8(vaddq_s64(v226, v226), *&STACK[0x57B0]));
  v226.i64[0] = v225 + (v5 ^ 0xFFFFFFFFFFFFDB7ELL);
  v226.i64[1] = v225 - 8;
  v260.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v227, *&STACK[0x5780]), *&STACK[0x5770]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5680], 3uLL), v194))), v223);
  v228 = vandq_s8(v226, *&STACK[0x4D70]);
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), *&STACK[0x46B0]);
  v230 = veorq_s8(v229, *&STACK[0x45A0]);
  v231 = veorq_s8(v229, *&STACK[0x4660]);
  v232 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231);
  v233 = veorq_s8(vaddq_s64(*&STACK[0x56D0], *&STACK[0x56E0]), *&STACK[0x45B0]);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v232, v232), v20), v232), v24), v19);
  v235 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v236 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(*&STACK[0x56E0], 3uLL), *&STACK[0x56E0], 0x3DuLL));
  v237 = veorq_s8(v234, v235);
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v237);
  v239 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL);
  v242 = veorq_s8(v238, *&STACK[0x46E0]);
  v243 = vaddq_s64(v239, v236);
  v244 = veorq_s8(v242, v240);
  v245 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v244), *&STACK[0x46A0]);
  v246 = veorq_s8(v243, *&STACK[0x4BB0]);
  v247 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v248 = veorq_s8(v246, v241);
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v247);
  v250 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v251 = veorq_s8(vaddq_s64(vsubq_s64(v249, vandq_s8(vaddq_s64(v249, v249), *&STACK[0x5740])), *&STACK[0x57A0]), *&STACK[0x5760]);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v253 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252), *&STACK[0x45C0]);
  v254 = vaddq_s64(v250, v248);
  v255 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v255);
  v257 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v256, v256), *&STACK[0x5790]), v256), *&STACK[0x5750]), *&STACK[0x57C0]);
  v258 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL)));
  v260.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v258, vandq_s8(vaddq_s64(v258, v258), *&STACK[0x57B0])), *&STACK[0x5780]), *&STACK[0x5770]), vnegq_s64(vandq_s8(vshlq_n_s64(v226, 3uLL), v194))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v254, vandq_s8(vaddq_s64(v254, v254), v25)), v26), *&STACK[0x55D0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5700], 3uLL), v194))));
  *(v225 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v260, v10[26])), STACK[0x5710]);
  return (*(STACK[0x57D8] + 8 * ((15400 * (a1 == a2)) ^ v8)))();
}

uint64_t sub_1004CDE80()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xCDEC];
  LODWORD(STACK[0x9094]) = -32197482;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004CDEFC@<X0>(unint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  LODWORD(STACK[0x4BCC]) = a2;
  STACK[0x3748] = a1;
  STACK[0x4D40] = a3;
  v7 = a3 - 28408;
  v8 = (a3 - 65) & 0xFE;
  v9 = (a3 - 7862) | 0x814u;
  *(v4 + 36) = *(v4 + 36) + 16777472;
  STACK[0x3B68] = v4;
  *(v4 + 52) = 0;
  STACK[0x57B0] = *(v6 + 28);
  STACK[0x3740] = v6;
  LODWORD(STACK[0x57C0]) = *(v6 + 40);
  v10 = a3 + 3421;
  v11 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (a3 + 3421)))(a4 + 20, &STACK[0x7BD8], 32);
  STACK[0x7ED8] = 112;
  STACK[0x9750] = 0;
  (*(v11 + 8 * v10))(&STACK[0x7BD8], &STACK[0x10150], 32);
  (*(v11 + 8 * (v7 + 31924)))(&STACK[0x10150], 0, 0, 0, 0, 0, &STACK[0x9018], 0);
  STACK[0x10130] = (SLODWORD(STACK[0x9018]) - ((SLODWORD(STACK[0x9018]) << (v8 + 75)) & (v9 - 0x2249F0B240ACD77ELL)) - 0x1124F85920563F94) ^ 0xEEDB07A6DFA9C06CLL;
  STACK[0x10140] = 0;
  STACK[0x10148] = 0;
  v12 = *(&off_101353600 + (v7 ^ 0x161));
  STACK[0x10138] = 0x800000000011FFFBLL;
  v13 = (*(v11 + 8 * (v7 ^ 0x7CDF)))(*v12, &STACK[0x10130], 1, 0, 0, 0);
  LODWORD(STACK[0x4D50]) = v7;
  return (*(v11 + 8 * (v7 ^ 0x5DFC ^ (1007 * ((v13 & (v13 ^ v7) | (v13 - v7) & ~(v13 ^ v7)) >= 0)))))(v13);
}

uint64_t sub_1004CE138@<X0>(int a1@<W8>)
{
  v1 = a1 - 11311;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = ((2 * LODWORD(STACK[0xA198])) & 0xFEF8FF2A) - 134495013 + (LODWORD(STACK[0xA198]) ^ (((v1 + 2132502096) & 0x80E4DE56) - 8640705)) + 33;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 2085690294;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004CE24C()
{
  v0 = (STACK[0x51B8] - 17384) | 0x181;
  v1 = STACK[0x51B8] - 19607;
  STACK[0xCEF8] = STACK[0x7778] + SLODWORD(STACK[0x77D0]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1307) + v1)))();
}

uint64_t sub_1004CE504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x1716)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004CE620()
{
  v0 = 3 * LODWORD(STACK[0x1F60]);
  v1 = STACK[0x51B8] + 258;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9192)))(16);
  *STACK[0xA0C8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (v0 ^ 0x4C6)) ^ v1)))();
}

uint64_t sub_1004CE7D0@<X0>(uint64_t a1@<X8>)
{
  v3 = (STACK[0x5720] + v1);
  v4 = *v3;
  v5 = v3[1];
  v6 = (STACK[0x5650] + v1);
  *v6 = v4;
  v6[1] = v5;
  return (*(STACK[0x57D8] + 8 * ((114 * ((a1 ^ 0x1674) + v1 == 256)) ^ v2)))();
}

uint64_t sub_1004CE81C@<X0>(int a1@<W8>)
{
  if ((v1 - 1) >> 32)
  {
    v3 = 1;
  }

  else
  {
    v3 = ((v1 - 1) & 0xFFFFFFF0) == v2 + ((a1 + 4466) ^ 0x319Eu) + 134;
  }

  v4 = !v3;
  return (*(STACK[0x57D8] + 8 * ((1018 * v4) ^ (a1 + 7590))))();
}

uint64_t sub_1004CECC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14)
{
  v20 = STACK[0x55D0];
  v21 = (v20 & 0xFAF68BC8) + (v20 | 0xFAF68BCC);
  v22 = (v20 & 0xB0862CC8) + (v20 | 0xB0862CC8);
  v23 = LODWORD(STACK[0x5790]) & ((STACK[0x55D0] ^ 0x279E4338) + 1386083810 + (STACK[0x52D8] & 0x4F3C8670));
  v24 = LODWORD(STACK[0x5790]) & ((STACK[0x55D0] ^ 0x8EF48508) + 154187923 + (LODWORD(STACK[0x52D8]) | 0xE216F5EF) + 1424);
  v25 = LODWORD(STACK[0x5790]) & ((STACK[0x55D0] ^ 0x82E1D94D) - 145072179 + (STACK[0x52D8] & 0x5C3B290));
  LODWORD(v20) = LODWORD(STACK[0x5790]) & (((v20 + 162689511) | 0xEF1B5684) - ((1984794136 - v20) & 0xEF1B5680) - 259406029);
  v26 = STACK[0x55A0] & (v21 + 2135272780);
  v27 = STACK[0x55A0] & (v22 - 910816176);
  v28 = STACK[0x55A0] & ((STACK[0x5780] & 0xFFFFFFF8) + 2050767128);
  v29 = STACK[0x55E0];
  STACK[0x3100] = *(STACK[0x55E0] + ((((STACK[0x55D0] ^ 0xB6692135) - 1009575963 + (STACK[0x52D8] & 0x6CD24260)) & STACK[0x55A0]) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x2FB8] = *(v29 + v26);
  STACK[0x3188] = *(v29 + v23);
  STACK[0x3108] = *(v29 + v27);
  STACK[0x3180] = *(v29 + v24);
  STACK[0x3208] = *(v29 + v25);
  STACK[0x3018] = *(v29 + v20);
  STACK[0x30A8] = *(v29 + v28);
  v30 = STACK[0x5670];
  v31 = STACK[0x5348];
  LODWORD(STACK[0x5790]) = (STACK[0x5670] ^ 0x67CC9CCB) - 502737434 + (LODWORD(STACK[0x5348]) | 0x3066C669);
  LODWORD(v20) = (v30 ^ 0x37D3AC04) + 1114148116 + (v31 & 0x6FA75800);
  LODWORD(STACK[0x5600]) = ((992394834 * v30) & 0x4058AD90) + ((496197417 * v30) ^ 0xA02C56CF);
  v32 = STACK[0x53E8];
  v33 = STACK[0x5590];
  STACK[0x5560] = STACK[0x5590] & STACK[0x5288];
  LODWORD(STACK[0x55D0]) = v33 & v20;
  LODWORD(STACK[0x55A0]) = v33 & ((v30 & 0x6AA0348) + (v30 | 0x6AA0348) + 1938961872);
  STACK[0x55E0] = ((v30 | 0xA16162D3) + v32 + (v30 | 0x5E9E9D2C)) & v33;
  v34 = STACK[0x5308];
  LODWORD(v33) = STACK[0x5368];
  LODWORD(v20) = (STACK[0x5308] ^ 0xFB75A1BC) + 1974590169 + (LODWORD(STACK[0x5368]) | 0x914BC83);
  v35 = (STACK[0x5308] ^ 0x41877BE4) + 951369012 + (STACK[0x5368] & 0x830EF7C0);
  LODWORD(STACK[0x54C0]) = (STACK[0x5308] ^ 0xDB376CFF) + 1433642522 + (LODWORD(STACK[0x5368]) | 0x49912601);
  LODWORD(STACK[0x5460]) = (v34 ^ 0x5AF14128) + 525006834 + (v33 & 0xB5E28250);
  v36 = (v34 ^ a11) - 190446157 + (v33 | 0xB2C66CF);
  v37 = STACK[0x5168];
  STACK[0x53E8] = STACK[0x5168] & STACK[0x53F8];
  LODWORD(STACK[0x5358]) = v37 & v20;
  LODWORD(STACK[0x5310]) = v37 & v35;
  STACK[0x52D8] = ((v34 | a10) + v32 + (v34 | 0x14D59B26)) & v37;
  STACK[0x5590] = v36 & v37;
  v38 = STACK[0x54E0];
  LODWORD(STACK[0x5450]) = (STACK[0x54E0] | 0x792BF293) + 2050767130 + (STACK[0x54E0] | 0x86D40D6C);
  v39 = STACK[0x5290];
  LODWORD(STACK[0x5440]) = (v38 ^ 0x4425F558) + 907428802 + (STACK[0x5290] & 0x884BEAB0);
  LODWORD(STACK[0x53F8]) = (v38 & 0xC1B83C0) + 1847637335 + (v38 | 0xC1B83C3);
  LODWORD(STACK[0x5550]) = STACK[0x5550] & (((((v38 + 57979577) | 0x87719FA1) - 2022596703 - ((-57979584 - v38) & 0x87719FA0)) & 0xFFFFFFF8) - 279583040);
  LODWORD(STACK[0x5288]) = (v38 ^ 0x982E0B91) - 502387319 + (v39 & 0x305C1720);
  LODWORD(STACK[0x5230]) = (v38 ^ 0x64341458) + 369632450 + (v39 & 0xC86828B0);
  LODWORD(STACK[0x5290]) = ((v38 - 1433365854) ^ 0xA71E5015) + 680351331 + ((2 * (v38 - 1433365854)) & 0x4E3CA020);
  v40 = STACK[0x5380];
  LODWORD(STACK[0x5248]) = (STACK[0x5380] & 0xF9CEB150) + (STACK[0x5380] | 0xF9CEB151);
  LODWORD(STACK[0x5168]) = (v40 & 0xAB22A3B8) + (v40 | 0xAB22A3BD);
  v41 = STACK[0x50F8];
  v42 = STACK[0x52B0];
  STACK[0x4FF0] = ((v40 & 0x7CB76B48) + (v40 | 0x7CB76B4C) - 41628210) & STACK[0x52B0];
  LODWORD(STACK[0x5120]) = v42 & ((v40 & 0x2B1FCF00) + (v40 | 0x2B1FCF04) + 1327262228);
  LODWORD(STACK[0x52B0]) = v42 & ((v40 ^ 0x2CFB9F50) - 1489512339 + (v41 | 0xA608C15B));
  LODWORD(STACK[0x4F98]) = (v40 | 0xEE0893B7) + 2050767130 + (v40 | 0x11F76C48);
  LODWORD(STACK[0x4F78]) = (v40 ^ 0x90B006C7) - 376688045 + (v41 & 0x21600D80);
  LODWORD(STACK[0x50F8]) = (v40 ^ 0x74E564E1) + 89576505 + (v41 & 0xE9CAC9C0);
  v43 = STACK[0x5220];
  LODWORD(v42) = STACK[0x5208];
  LODWORD(v20) = (STACK[0x5220] ^ a13) - 1277638030 + (LODWORD(STACK[0x5208]) | 0x8CC6DD51);
  v44 = (v43 & 0x30026B88) + (v43 | 0x30026B8F);
  LODWORD(STACK[0x4890]) = (STACK[0x5220] | 0xBC3B9753) + 2050767130 + (STACK[0x5220] | 0x43C468AD);
  LODWORD(STACK[0x33C0]) = (v43 ^ 0xDE63F774) - 1680326236 + (v42 & 0xBCC7EEE0);
  LODWORD(STACK[0x4F70]) = (v43 & 0x25E46170) + (v43 | 0x25E46170);
  LODWORD(STACK[0x4898]) = (v43 ^ 0x13696E74) + 1725090468 + (v42 & 0x26D2DCE0);
  v45 = (v43 ^ 0xE9D43347) - 1872230957 + (v42 & 0xD3A86680);
  LODWORD(v43) = STACK[0x50E8];
  LODWORD(STACK[0x33B8]) = LODWORD(STACK[0x50E8]) & v20;
  LODWORD(STACK[0x33A8]) = v43 & (v44 + 1245302155);
  LODWORD(STACK[0x5208]) = v43 & v45;
  v46 = STACK[0x5250];
  LODWORD(v20) = (v46 & 0x39C78188) + (v46 | 0x39C7818C);
  v47 = STACK[0x5138];
  v48 = ((STACK[0x5250] - 605486708) ^ 0x435B5697) - ((1210973414 - LODWORD(STACK[0x5138])) & 0x86B6AD26);
  LODWORD(STACK[0x50E8]) = (STACK[0x5250] ^ 0xAA026C2F) - 801518720 + (STACK[0x5138] & 0x5404D850);
  LODWORD(STACK[0x33B0]) = (v46 ^ 0x2784C115) + 1387751953 + (v47 & 0x4F098220);
  LODWORD(STACK[0x3210]) = 2050767131;
  LODWORD(STACK[0x33A0]) = (v46 | 0xF249E811) + 2050767131 + (v46 | 0xDB617EE);
  LODWORD(STACK[0x3398]) = (v46 ^ 0xD05BD40C) + 1251478823 + (v47 | 0x5F4857E7);
  v49 = (v47 & 0x89F998F0) + (v46 ^ 0x44FCCC7A);
  v50 = STACK[0x5130];
  v51 = STACK[0x5128];
  v52 = STACK[0x5098];
  v53 = STACK[0x5110];
  STACK[0x3190] = *(STACK[0x5110] + (LODWORD(STACK[0x5098]) & ((STACK[0x5130] ^ 0x754E7FE9) + 82688305 + (STACK[0x5128] & 0xEA9CFFD0))));
  v54 = STACK[0x5118];
  STACK[0x3240] = *(v53 + (STACK[0x5118] & ((STACK[0x5140] & 0xFFFFFFF8) + 2050767128)));
  STACK[0x30F8] = *(v53 + (v52 & ((v50 & 0x558CC490) + (v50 | 0x558CC490) + 615478410)));
  STACK[0x3178] = *(v53 + (v52 & ((v50 ^ 0x149592C1) + 1705420377 + (v51 & 0x292B2580))));
  STACK[0x3200] = *(v53 + ((((v50 ^ 0x3FCE8199) + 980268929 + (v51 & 0x7F9D0330)) & v54) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3010] = *(v53 + (v52 & ((v50 | 0xF25E2CDB) + 2050767130 + (v50 | 0xDA1D324) + 1)));
  STACK[0x3058] = *(v53 + (v52 & ((v50 ^ 0x28A1B211) - 1562514644 + (v51 | 0xAEBC9BDD))));
  STACK[0x30A0] = *(v53 + ((((v50 & 0x846C0F50) + (v50 | 0x846C0F55) - 170907195) & v54) & 0xFFFFFFFFFFFFFFF8));
  v55 = STACK[0x5158];
  STACK[0x5130] = (v20 + 1081390990) & STACK[0x5158];
  STACK[0x5138] = (v48 - 508654043) & v55;
  LODWORD(STACK[0x5158]) = v55 & ((v49 & 0xFFFFFFF8) + 893349024);
  v56 = STACK[0x50B0];
  LODWORD(STACK[0x5140]) = (STACK[0x50B0] | 0x78A662F9) + 2050767130 + (STACK[0x50B0] | 0x87599D06);
  LODWORD(v50) = STACK[0x5028];
  LODWORD(STACK[0x5128]) = (v56 ^ a14) - 1043628223 + (STACK[0x5028] & 0x70E173B0);
  LODWORD(v20) = (v56 | 0x908366F5) + 2050767130 + (v56 | 0x6F7C990B);
  LODWORD(STACK[0x5118]) = (v56 ^ 0xC94030F3) - 1325660121 + (v50 & 0x928061E0);
  LODWORD(STACK[0x5110]) = (v56 ^ 0xE350BD61) - 1762952263 + (v50 & 0xC6A17AC0);
  v57 = (v56 & 0xA11BB4D8) + (v56 | 0xA11BB4D8);
  LODWORD(STACK[0x5098]) = ((v56 + 1564904703) ^ 0x226A2D80) - 91521381 + ((v50 + 982325758) & 0x44D45B00);
  v58 = (v56 ^ 0xC55B9940) + 1066914397 + (v50 | 0x7548CD7B);
  v59 = ((2 * (v56 - 455493478)) & 0xDB3664C0) + ((v56 - 455493478) ^ 0xED9B3260);
  v60 = (v50 & 0xC9CA2FF0) + (v56 ^ 0x64E517FA);
  v61 = STACK[0x5020];
  STACK[0x3378] = v20 & STACK[0x5020];
  LODWORD(STACK[0x3388]) = v61 & (v57 - 652180416);
  LODWORD(STACK[0x3390]) = v61 & v58;
  LODWORD(STACK[0x3380]) = v61 & ((v59 & 0xFFFFFFF8) - 1480110560);
  LODWORD(STACK[0x5020]) = v61 & ((v60 & 0xFFFFFFF8) + 358031648);
  v62 = STACK[0x5048];
  v63 = STACK[0x4F08];
  v64 = LODWORD(STACK[0x4E18]) & ((STACK[0x5048] ^ 0x1E8F7CC0) + 1538047066 + (STACK[0x4F08] & 0x3D1EF980));
  v65 = LODWORD(STACK[0x4E18]) & ((v62 & 0x29677618) + (v62 | 0x29677618) + 1356120834);
  v66 = LODWORD(STACK[0x4E18]) & ((v62 & 0x3842870) + (v62 | 0x3842870) + 1991774378);
  v67 = STACK[0x4E50];
  v68 = STACK[0x5058];
  STACK[0x3138] = *(STACK[0x5058] + (LODWORD(STACK[0x4E50]) & ((STACK[0x5048] ^ 0xB56DD488) + 799673765 + (LODWORD(STACK[0x4F08]) | 0x952456EB))));
  STACK[0x3170] = *(v68 + v64);
  STACK[0x2FB0] = *(v68 + v65);
  STACK[0x3238] = *(v68 + v66);
  STACK[0x30F0] = *(v68 + ((((v62 ^ 0xF439A743) + 1853218910 + (v63 | 0x178CB179)) & v67) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3168] = *(v68 + ((((v62 & 0x38ED92A8) + (v62 | 0x38ED92AF) + 1095673451) & v67) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3008] = *(v68 + ((((v62 ^ 0x6B8B33B4) - 439915313 + (v63 | 0x28E99897)) & v67) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3098] = *(v68 + ((((v62 ^ 0xBFD741C) + 1849607422 + (v63 & 0x17FAE830)) & v67) & 0xFFFFFFFFFFFFFFF8));
  v69 = STACK[0x4FD0];
  LODWORD(v62) = STACK[0x4B48];
  LODWORD(v20) = (STACK[0x4FD0] ^ 0xE50FCD54) - 1792250938 + (STACK[0x4B48] & 0xCA1F9AA0);
  v70 = (v69 & 0xF12C58F0) + (v69 | 0xF12C58F0);
  v71 = (v69 | 0xCAB3252D) + 2050767130 + (v69 | 0x354CDAD3);
  LODWORD(STACK[0x5058]) = (STACK[0x4FD0] & 0x350E54A8) + (STACK[0x4FD0] | 0x350E54A8);
  LODWORD(STACK[0x5048]) = (v69 & 0x3A828288) + (v69 | 0x3A828288);
  v72 = (v69 ^ 0x7ED9EA0B) - 77443313 + (v62 & 0xFDB3D410);
  LODWORD(v69) = STACK[0x4EC0];
  LODWORD(STACK[0x4E50]) = LODWORD(STACK[0x4EC0]) & v20;
  LODWORD(STACK[0x4E18]) = v69 & (v70 - 1995448278);
  LODWORD(STACK[0x4B48]) = v69 & v71;
  LODWORD(STACK[0x4F08]) = v69 & v72;
  LODWORD(v62) = STACK[0x4E38];
  LODWORD(STACK[0x4EC0]) = (v19 ^ 0x49EC0191) - 1003999412 + (LODWORD(STACK[0x4E38]) | 0x6C27FCDD);
  LODWORD(STACK[0x3370]) = (v19 & 0x38DF0650) + (v19 | 0x38DF0653);
  LODWORD(STACK[0x3368]) = (v19 & 0x1782A28) + (v19 | 0x1782A2C);
  LODWORD(STACK[0x3360]) = (v19 & 0x50344590) + (v19 | 0x50344595);
  v73 = STACK[0x4B88];
  STACK[0x3358] = ((v19 ^ 0x75C55BB1) + 74898793 + (v62 & 0xEB8AB760)) & STACK[0x4B88];
  LODWORD(STACK[0x4DC8]) = v73 & ((STACK[0x4DC8] & 0xFFFFFFF8) + 2050767128);
  LODWORD(STACK[0x4B88]) = (v19 ^ 0x57703A5F) + 583794363 + (v62 & 0xAEE074B0);
  v74 = STACK[0x4B50];
  v75 = STACK[0x4DC0];
  LODWORD(STACK[0x3350]) = (STACK[0x4DC0] & 0x22ED84D8) + (STACK[0x4DC0] | 0x22ED84D8);
  LODWORD(STACK[0x3348]) = (v75 & 0x578B95C0) + (v75 | 0x578B95C3);
  LODWORD(STACK[0x3340]) = (v75 ^ 0xA44E707C) - 705836898 + (v74 & 0x489CE0F0);
  LODWORD(STACK[0x3338]) = (v75 ^ 0x3A5F9988) + 1071422724 + (v74 & 0x74BF3310);
  v76 = STACK[0x4BA0];
  LODWORD(STACK[0x3330]) = STACK[0x4BA0] & ((((v74 | 0x4500FB55) + (v75 ^ 0xDD7F8255)) & 0xFFFFFFF8) + 1471921008);
  STACK[0x3328] = ((v75 | 0xBA6C1DBB) + 2050767130 + (v75 | 0x4593E245)) & v76;
  LODWORD(STACK[0x3320]) = v76 & ((((v74 & 0xC80E6A90) + (v75 ^ 0xE407354A)) & 0xFFFFFFF8) - 1774910512);
  LODWORD(STACK[0x4BA0]) = v76 & ((((v75 | 0x295C9D8D) + (v75 | 0xD6A36272) - 693935501) & 0xFFFFFFF8) - 1550264664);
  LODWORD(STACK[0x4B50]) = (v75 ^ 0xB8BE7E8F) + 855291818 + (v74 | 0x8E8302E1);
  v77 = STACK[0x4BA8];
  LODWORD(v76) = STACK[0x4B18];
  LODWORD(STACK[0x3318]) = (STACK[0x4BA8] ^ 0x52621AB4) + 668606054 + (STACK[0x4B18] & 0xA4C43560);
  LODWORD(STACK[0x3310]) = (v77 ^ 0x4950EC35) + 820727013 + (v76 & 0x92A1D860);
  LODWORD(STACK[0x3308]) = v77 + ((920121328 - v77) | 0xAC11AC25) + ((v77 + 1227362319) | 0xAC11AC25) - 836072202;
  LODWORD(STACK[0x4B98]) = STACK[0x4B98] & ((v77 & 0x8A098D48) + (v77 | 0x8A098D48) - 265114672);
  v78 = STACK[0x4E88];
  STACK[0x32F0] = STACK[0x4E88] & ((v77 ^ 0x74BC6635) + 92263141 + (v76 & 0xE978CC60));
  STACK[0x32E8] = v78 & ((v77 ^ 0xA71121CF) - 752150709 + (v76 & 0x4E224390));
  STACK[0x4E88] = v78 & ((v77 | 0x6A6AEDF5) + 2050767130 + (v77 | 0x9595120B));
  LODWORD(STACK[0x4B18]) = (v77 ^ 0xC6E8420B) + 1092909862 + (v76 | 0x722F7BE9);
  LODWORD(v76) = STACK[0x4AF0];
  v79 = STACK[0x4B38];
  LODWORD(STACK[0x3300]) = (STACK[0x4AF0] & 0x7E0798B0) + (STACK[0x4B38] ^ 0xBF03CC5A);
  LODWORD(STACK[0x32F8]) = (v79 & 0x513EB6C0) + (v79 | 0x513EB6C0);
  LODWORD(STACK[0x32E0]) = (v79 | 0x2B1CAA6D) + 2050767130 + (v79 | 0xD4E35593);
  LODWORD(STACK[0x32D8]) = ((2 * (v79 + 1168944740)) & 0x59D75428) + ((v79 + 1168944740) ^ 0xACEBAA16);
  v80 = STACK[0x4B08];
  LODWORD(STACK[0x32B4]) = STACK[0x4B08] & 0xFFFFFFF8 & ((v79 ^ 0xCCE5B931) + 1193407052 + (v76 | 0x66348D9D));
  LODWORD(STACK[0x32B8]) = v80 & 0xFFFFFFF8 & ((v79 & 0xEE7ED2DF) + (v79 | 0xEE7ED2D9) - 1950521791);
  LODWORD(STACK[0x32D0]) = v80 & 0xFFFFFFF8 & ((v79 | 0x70F78291) + 2050767130 + (v79 | 0x8F087D6F));
  LODWORD(STACK[0x32C8]) = v80 & 0xFFFFFFF8 & ((v79 ^ 0x440F769) + 2122133636 + (v76 | 0xF77E112D));
  v81 = STACK[0x4A98];
  LODWORD(STACK[0x32C0]) = ((2 * STACK[0x4A98]) & 0x48C470D0) + (STACK[0x4A98] ^ 0xA462386A);
  LODWORD(STACK[0x32BC]) = (v81 ^ 0xF05F8BD3) - 1982026425 + ((2 * v81) & 0xE0BF17A0);
  LODWORD(STACK[0x32B0]) = (v81 | 0xC5586643) + 2050767130 + (v81 | 0x3AA799BD);
  LODWORD(STACK[0x32AC]) = (v81 & 0xCC9B46D8) + (v81 | 0xCC9B46DF);
  v82 = STACK[0x4990];
  LODWORD(STACK[0x32A8]) = (STACK[0x4990] ^ 0x295C4BDC) - 1550285577 + (v17 | 0xAD476847);
  LODWORD(STACK[0x32A4]) = (v82 & 0x25F6C7B0) + (v82 | 0x25F6C7B1);
  v83 = STACK[0x49D8];
  STACK[0x3280] = ((v82 ^ 0xF7CF8BE5) - 2106806987 + (v17 & 0xEF9F17C0)) & STACK[0x49D8];
  STACK[0x3288] = ((v82 ^ 0x7937C12B) - 210503098 + (v17 | 0xD907DA9)) & v83;
  LODWORD(STACK[0x3298]) = v83 & ((v82 & 0x81D748C0) + (v82 | 0x81D748C4) - 127602604);
  LODWORD(STACK[0x3294]) = v83 & ((((v17 & 0xE06C0940) + (v82 ^ 0xF03604A2)) & 0xFFFFFFF8) - 1979304840);
  STACK[0x49D8] = ((v82 ^ 0x364DA78D) + 1139708301 + (v17 & 0x6C9B4F10)) & v83;
  LODWORD(STACK[0x327C]) = (v82 | 0x909B978F) + 2050767130 + (v82 | 0x6F646871);
  v84 = STACK[0x3A08];
  LODWORD(STACK[0x3278]) = (STACK[0x3A08] & 0xACA50360) + (STACK[0x3A08] | 0xACA50360);
  LODWORD(v83) = STACK[0x4978];
  LODWORD(STACK[0x3274]) = (v84 ^ 0xAEB2144C) + 686706025 + (LODWORD(STACK[0x4978]) | 0xA29BD763);
  LODWORD(v78) = STACK[0x4868];
  LODWORD(STACK[0x3270]) = LODWORD(STACK[0x4868]) & ((v84 ^ 0xA00B398D) - 634323059 + (v83 & 0x40167310));
  LODWORD(STACK[0x4868]) = v78 & ((v84 ^ 0x7E3C3365) - 67108933 + (v83 & 0xFC7866C0) + 1530);
  LODWORD(STACK[0x326C]) = ((v84 + 1408376264) | 0x68464E3A) - ((739107382 - v84) & 0x68464E3A);
  LODWORD(STACK[0x3A08]) = (v83 & 0x60032960) + (v84 ^ 0x300194B2);
  v85 = STACK[0x4E90];
  LODWORD(STACK[0x4978]) = ((2 * STACK[0x4E90]) | 0x42338A3F) + 1495430139 + ((a6 - 555350367) ^ STACK[0x4E90]);
  LODWORD(STACK[0x3268]) = (v85 & 0x74277F20) + (v85 | 0x74277F20);
  LODWORD(STACK[0x3214]) = 2 * v85;
  LODWORD(STACK[0x3264]) = (v85 ^ 0x3AFD4FAF) + 1061087595 + ((2 * v85) & 0x75FA9F50);
  LODWORD(STACK[0x3258]) = ((v85 - 446772181) ^ 0x357ABC4) - 1853505238 + ((2 * (v85 - 446772181)) & 0x6AF5782);
  LODWORD(STACK[0x3260]) = (v85 & 0xA533DFA0) + (v85 | 0xA533DFA0);
  v86 = STACK[0x52F8];
  v87 = STACK[0x53A0];
  v88 = STACK[0x53A0] & 0xFFFFFFF8 & (((v86 + 1106809074) & 0x884D61DA) + ((v86 + 1106809074) | v16 ^ 0x884D7469) - 1342814643);
  LODWORD(STACK[0x325C]) = STACK[0x53A0] & 0xFFFFFFF8 & ((STACK[0x52F8] | 0x79EA63AF) + 2050767130 + (STACK[0x52F8] | 0x86159C50) + 1);
  LODWORD(STACK[0x3254]) = (STACK[0x52B8] & 0x5D6D88D0) + (v86 ^ 0x2EB6C46A);
  LODWORD(STACK[0x3250]) = (v86 & 0x28429168) + 1375315884 + (v86 | 0x2842916C);
  LODWORD(STACK[0x324C]) = (v86 & 0x39C0745F) + (v86 | 0x39C0745D);
  v89 = (v86 | 0xD836EEF5) + (v86 | 0x27C9110A);
  v90 = (v86 & 0xC5ADC6B7) + (v86 | 0xC5ADC6B5);
  v91 = STACK[0x5080];
  v92 = STACK[0x5500];
  v93 = STACK[0x5500] & 0xFFFFFFF8 & ((v91 | 0xFC76C136) + 2050767130 + (v14 ^ 0x389787C | v91) + 1);
  v94 = STACK[0x5500] & 0xFFFFFFF8 & ((v91 ^ 0x4619EF30) - 1068095413 + ((2 * v91) | 0x73CC219F));
  v95 = (v91 & 0x103A2648) + (v91 | 0x103A2648);
  v96 = (v91 ^ 0xA082FEF4) - 642172380 + ((2 * v91) & 0x4105FDE0);
  v97 = ((2 * v91) & 0x56BA35E0) + (v91 ^ 0xAB5D1AF2);
  LODWORD(v85) = (v91 & 0x74ABC920) + (v91 | 0x74ABC921);
  LODWORD(STACK[0x321C]) = 2 * STACK[0x5080];
  v98 = (v91 ^ 0xB8154BCF) - 1037636277 + ((2 * v91) & 0x702A9790);
  v99 = (v91 | 0xE84B163B) + 2050767130 + (v91 | 0x17B4E9C5);
  v100 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v101 = STACK[0x51E8];
  v102 = *STACK[0x51E8] & ((v100 & 0x38ACC880 | 0xC753377F) + 2050767130 + (v100 & 0xC7533778 | 0x38ACC880) + 1);
  v103 = (v15 + 1878251471) & 0x900C797A;
  LODWORD(v20) = (v103 - 20821) | 0x6722;
  LODWORD(STACK[0x5780]) = v20;
  v104 = v102 & (v20 ^ 0xFFFF98D7);
  v105 = STACK[0x51F0];
  v106 = *(*STACK[0x51F0] + v104);
  v107 = STACK[0x5740];
  STACK[0x3140] = *(STACK[0x5740] + STACK[0x5560]);
  v108 = STACK[0x54D0];
  STACK[0x3220] = *(v107 + (STACK[0x54D0] & LODWORD(STACK[0x5790])));
  STACK[0x30B0] = *(v107 + SLODWORD(STACK[0x55D0]));
  STACK[0x31E0] = *(v107 + SLODWORD(STACK[0x55A0]));
  STACK[0x2FC0] = *(v107 + (v108 & (226864409 * LODWORD(STACK[0x5600]) + 1119017955)));
  STACK[0x3060] = *(v107 + (STACK[0x55E0] & 0xFFFFFFFFFFFFFFF8));
  v109 = STACK[0x5328];
  STACK[0x3110] = *(STACK[0x5328] + STACK[0x53E8]);
  STACK[0x3150] = *(v109 + SLODWORD(STACK[0x5358]));
  STACK[0x2F78] = *(v109 + SLODWORD(STACK[0x5310]));
  STACK[0x3228] = *(v109 + (STACK[0x52D8] & 0xFFFFFFFFFFFFFFF8));
  v110 = STACK[0x5218];
  STACK[0x3148] = *(v109 + (STACK[0x5218] & LODWORD(STACK[0x54C0])));
  LODWORD(v76) = 23 * (v103 ^ 0x5271);
  LODWORD(STACK[0x3218]) = v76;
  v111 = LODWORD(STACK[0x53D0]) == v76 - 18076;
  STACK[0x31E8] = *(v109 + (v110 & STACK[0x5460]));
  v112 = (v106 + __ROR8__(v100 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v113 = v112 ^ __ROR8__(v106, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0x38C8B16AE7056877;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = __ROR8__(v114, 8);
  STACK[0x3068] = *(v109 + (STACK[0x5590] & 0xFFFFFFFFFFFFFFF8));
  LODWORD(v76) = STACK[0x5198];
  v117 = STACK[0x5320];
  STACK[0x3160] = *(STACK[0x5320] + (STACK[0x5198] & (LODWORD(STACK[0x5450]) + 1)));
  STACK[0x2F80] = *(v117 + (v76 & LODWORD(STACK[0x5440])));
  STACK[0x3230] = *(v117 + (v76 & LODWORD(STACK[0x53F8])));
  STACK[0x31F0] = *(v117 + SLODWORD(STACK[0x5550]));
  STACK[0x2FC8] = *(v117 + (v76 & LODWORD(STACK[0x5288])));
  STACK[0x3020] = *(v117 + (v76 & LODWORD(STACK[0x5230])));
  v118 = (((2 * (v116 + v115)) & 0xFCD910278773B764) - (v116 + v115) - 0x7E6C8813C3B9DBB3) ^ 0x6413C691B083C11CLL;
  v119 = v118 ^ __ROR8__(v115, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0xE1A1FD5BD155F97ALL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  STACK[0x3070] = *(v117 + (v76 & LODWORD(STACK[0x5290])));
  LODWORD(v76) = STACK[0x50F0];
  v123 = STACK[0x5370];
  STACK[0x3118] = *(STACK[0x5370] + (STACK[0x50F0] & (LODWORD(STACK[0x5248]) - 2140305463)));
  STACK[0x30C0] = *(v123 + (v76 & (LODWORD(STACK[0x5168]) - 820406947)));
  STACK[0x2F88] = *(v123 + (STACK[0x4FF0] & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3158] = *(v123 + SLODWORD(STACK[0x5120]));
  STACK[0x31F8] = *(v123 + SLODWORD(STACK[0x52B0]));
  STACK[0x2FD0] = *(v123 + (v76 & (LODWORD(STACK[0x4F98]) + 1)));
  STACK[0x3028] = *(v123 + (v76 & LODWORD(STACK[0x4F78])));
  STACK[0x3078] = *(v123 + (v76 & LODWORD(STACK[0x50F8])));
  v124 = STACK[0x5260];
  STACK[0x3120] = *(STACK[0x5260] + SLODWORD(STACK[0x33B8]));
  STACK[0x30C8] = *(v124 + SLODWORD(STACK[0x33A8]));
  v125 = STACK[0x52A8];
  STACK[0x33B8] = *(v124 + ((LODWORD(STACK[0x4890]) & STACK[0x52A8]) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x2F90] = *(v124 + (v125 & LODWORD(STACK[0x33C0])));
  v126 = (((v122 + v121) | 0x7B827E31139F0777) - ((v122 + v121) | 0x847D81CEEC60F888) - 0x7B827E31139F0778) ^ 0xA1E2353D103DB8EELL;
  v127 = v126 ^ __ROR8__(v121, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0xFA35E2CDCB3E31C7;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  v131 = (((2 * (v130 + v129)) | 0xA1A088E3A215247CLL) - (v130 + v129) + 0x2F2FBB8E2EF56DC2) ^ 0x2204897F1EF4190;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = __ROR8__(v131, 8);
  STACK[0x33A8] = *(v124 + (v125 & (LODWORD(STACK[0x4F70]) + 1415042984)));
  STACK[0x50F8] = *(v124 + (v125 & LODWORD(STACK[0x4898])));
  STACK[0x2FD8] = *(v124 + SLODWORD(STACK[0x5208]));
  STACK[0x3030] = *(v124 + (v125 & ((STACK[0x5178] & 0xFFFFFFF8) + 2050767128)));
  v134 = STACK[0x5258];
  STACK[0x3128] = *(STACK[0x5258] + (STACK[0x5130] & 0xFFFFFFFFFFFFFFF8));
  STACK[0x33C0] = *(v134 + (STACK[0x5138] & 0xFFFFFFFFFFFFFFF8));
  LODWORD(v124) = STACK[0x50A8];
  STACK[0x2F98] = *(v134 + (STACK[0x50A8] & (LODWORD(STACK[0x50E8]) + 363)));
  STACK[0x5288] = *(v134 + (v124 & (LODWORD(STACK[0x33B0]) + 3572)));
  STACK[0x30B8] = *(v134 + (v124 & LODWORD(STACK[0x33A0])));
  STACK[0x2FE0] = *(v134 + (v124 & LODWORD(STACK[0x3398])));
  STACK[0x3038] = *(v134 + SLODWORD(STACK[0x5158]));
  LODWORD(v78) = STACK[0x4FE8];
  v135 = STACK[0x5060];
  STACK[0x3130] = *(STACK[0x5060] + (STACK[0x4FE8] & (LODWORD(STACK[0x5140]) + 1)));
  STACK[0x30D8] = *(v135 + (v78 & LODWORD(STACK[0x5128])));
  STACK[0x4898] = *(v135 + (STACK[0x3378] & 0xFFFFFFFFFFFFFFF8));
  STACK[0x5290] = *(v135 + (v78 & LODWORD(STACK[0x5118])));
  STACK[0x30D0] = *(v135 + (v78 & LODWORD(STACK[0x5110])));
  STACK[0x4890] = *(v135 + SLODWORD(STACK[0x3388]));
  STACK[0x5128] = *(v135 + (v78 & LODWORD(STACK[0x5098])));
  STACK[0x2FE8] = *(v135 + SLODWORD(STACK[0x3390]));
  STACK[0x3040] = *(v135 + SLODWORD(STACK[0x3380]));
  STACK[0x3080] = *(v135 + SLODWORD(STACK[0x5020]));
  v136 = STACK[0x4F58];
  STACK[0x3398] = *(STACK[0x4F58] + SLODWORD(STACK[0x4E50]));
  STACK[0x52B0] = *(v136 + SLODWORD(STACK[0x4E18]));
  STACK[0x30E0] = *(v136 + SLODWORD(STACK[0x4B48]));
  v137 = STACK[0x4F50];
  STACK[0x5130] = *(v136 + (((LODWORD(STACK[0x5058]) + 1160635506) & STACK[0x4F50]) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3048] = *(v136 + (v137 & (LODWORD(STACK[0x5048]) + 1069135504)));
  STACK[0x3088] = *(v136 + SLODWORD(STACK[0x4F08]));
  LODWORD(v76) = STACK[0x4A70];
  v138 = STACK[0x4B58];
  STACK[0x33A0] = *(STACK[0x4B58] + (STACK[0x4A70] & (LODWORD(STACK[0x4EC0]) + 2912)));
  STACK[0x30E8] = *(v138 + (v76 & (LODWORD(STACK[0x3370]) + 1096626887)));
  STACK[0x2FA0] = *(v138 + (v76 & (LODWORD(STACK[0x3368]) + 2026114798)));
  STACK[0x52D8] = *(v138 + (v76 & (LODWORD(STACK[0x3360]) + 705164165)));
  STACK[0x4B48] = *(v138 + (STACK[0x3358] & 0xFFFFFFFFFFFFFFF8));
  STACK[0x2FF0] = *(v138 + SLODWORD(STACK[0x4DC8]));
  STACK[0x3090] = *(v138 + (v76 & LODWORD(STACK[0x4B88])));
  v139 = STACK[0x4B90];
  STACK[0x3358] = *(STACK[0x4B90] + SLODWORD(STACK[0x3330]));
  STACK[0x4E18] = *(v139 + (STACK[0x3328] & 0xFFFFFFFFFFFFFFF8));
  STACK[0x2FA8] = *(v139 + SLODWORD(STACK[0x3320]));
  LODWORD(v76) = STACK[0x4AE8];
  STACK[0x53E8] = *(v139 + (STACK[0x4AE8] & (LODWORD(STACK[0x3350]) + 1464775746)));
  STACK[0x4B88] = *(v139 + (v76 & (LODWORD(STACK[0x3348]) + 582001495)));
  STACK[0x5138] = *(v139 + (v76 & LODWORD(STACK[0x3340])));
  STACK[0x2FF8] = *(v139 + (v76 & (LODWORD(STACK[0x3338]) + 654)));
  STACK[0x3050] = *(v139 + SLODWORD(STACK[0x4BA0]));
  STACK[0x3328] = *(v139 + (v76 & LODWORD(STACK[0x4B50])));
  LODWORD(v137) = STACK[0x4AF8];
  v140 = STACK[0x4B80];
  STACK[0x33B0] = *(STACK[0x4B80] + (STACK[0x4AF8] & LODWORD(STACK[0x3318])));
  STACK[0x3368] = *(v140 + (v137 & LODWORD(STACK[0x3310])));
  STACK[0x4E50] = *(v140 + STACK[0x32F0]);
  STACK[0x53F8] = *(v140 + STACK[0x32E8]);
  LOBYTE(v100) = *v100 ^ (((v133 + v132 - ((2 * (v133 + v132)) & 0xECBA5DFD78DAABF2) - 0x9A2D1014392AA07) ^ 0x22E25CF121D2082) >> (8 * (v100 & 7u)));
  STACK[0x4DC8] = *(v140 + (v137 & LODWORD(STACK[0x3308])));
  STACK[0x5140] = *(v140 + SLODWORD(STACK[0x4B98]));
  STACK[0x3000] = *(v140 + STACK[0x4E88]);
  STACK[0x3318] = *(v140 + (v137 & LODWORD(STACK[0x4B18])));
  v141 = STACK[0x4B10];
  STACK[0x3370] = *(STACK[0x4B10] + (v80 & ((STACK[0x3300] & 0xFFFFFFF8) - 1153930048)));
  STACK[0x5020] = *(v141 + (v80 & (LODWORD(STACK[0x32F8]) + 687702616)));
  STACK[0x5550] = *(v141 + ((LODWORD(STACK[0x32E0]) & v80) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x4E88] = *(v141 + SLODWORD(STACK[0x32B4]));
  STACK[0x5158] = *(v141 + SLODWORD(STACK[0x32B8]));
  STACK[0x32D8] = *(v141 + (v80 & ((STACK[0x32D8] & 0xFFFFFFF8) - 2019303264)));
  v142 = (((v100 ^ 0x44CED9E9ED546F7DLL) - 0x44CED9E9ED546F7ALL) ^ ((v100 ^ 0x9B07FF75CBECEDC6) + 0x64F8008A3413123FLL) ^ ((v100 ^ 0xDFC9269C26B882F7) + 0x2036D963D9477D10)) + STACK[0x57A0];
  LODWORD(v142) = *(v142 + 37003) ^ (*(v142 + 37003) >> 4) ^ (*(v142 + 37003) >> 3);
  STACK[0x3300] = *(v141 + SLODWORD(STACK[0x32D0]));
  STACK[0x3320] = *(v141 + SLODWORD(STACK[0x32C8]));
  v143 = STACK[0x4A90];
  v144 = STACK[0x4AA8];
  STACK[0x3380] = *(STACK[0x4AA8] + (STACK[0x4A90] & ((STACK[0x32C0] & 0xFFFFFFF8) - 707133264)));
  STACK[0x32C0] = *(v144 + ((LODWORD(STACK[0x32BC]) & v143) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x5590] = *(v144 + ((LODWORD(STACK[0x32B0]) & v143) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x4EC0] = *(v144 + (((LODWORD(STACK[0x32AC]) - 1381961157) & v143) & 0xFFFFFFFFFFFFFFF8));
  LODWORD(v76) = STACK[0x5378];
  v145 = STACK[0x49D0];
  STACK[0x4B50] = *(STACK[0x49D0] + (STACK[0x5378] & LODWORD(STACK[0x32A8])));
  STACK[0x3390] = *(v145 + (v76 & (LODWORD(STACK[0x32A4]) + 1413837161)));
  STACK[0x55A0] = *(v145 + (STACK[0x3280] & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3360] = *(v145 + (STACK[0x3288] & 0xFFFFFFFFFFFFFFF8));
  STACK[0x4F08] = *(v145 + SLODWORD(STACK[0x3298]));
  STACK[0x5168] = *(v145 + SLODWORD(STACK[0x3294]));
  STACK[0x32E0] = *(v145 + (STACK[0x49D8] & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3330] = *(v145 + (v76 & LODWORD(STACK[0x327C])));
  v146 = STACK[0x4858];
  v147 = STACK[0x4A48];
  STACK[0x5098] = *(STACK[0x4A48] + (((LODWORD(STACK[0x3278]) - 845728326) & STACK[0x4858]) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3378] = *(v147 + (v146 & LODWORD(STACK[0x3274])));
  STACK[0x5048] = *(v147 + SLODWORD(STACK[0x3270]));
  v148 = -102 - 85 * (((v142 ^ 0xFFFFFFBE) - 15) ^ ((v142 ^ 0xA) + 69) ^ ((v142 ^ 0x26) + 105));
  STACK[0x5178] = *(v147 + SLODWORD(STACK[0x4868]));
  STACK[0x32E8] = *(v147 + (v146 & (((LODWORD(STACK[0x326C]) + 1749438010) & 0xFFFFFFF8) - 1107047144)));
  STACK[0x3338] = *(v147 + (v146 & ((STACK[0x3A08] & 0xFFFFFFF8) + 1245357160)));
  LODWORD(v131) = v87 & ((v18 & 0xFFFFFFF8) + 2050767128);
  v149 = (LODWORD(STACK[0x3268]) + 102021626) & v87;
  LODWORD(v125) = LODWORD(STACK[0x3264]) & v87;
  v150 = LODWORD(STACK[0x3258]) & v87;
  v151 = STACK[0x53E0];
  STACK[0x4868] = *(STACK[0x53E0] + (v87 & 0xFFFFFFF8 & STACK[0x4978]));
  STACK[0x5118] = *(v151 + v131);
  STACK[0x3388] = *(v151 + (v149 & 0xFFFFFFFFFFFFFFF8));
  STACK[0x5208] = *(v151 + (v125 & 0xFFFFFFFFFFFFFFF8));
  STACK[0x32F8] = *(v151 + (v150 & 0xFFFFFFFFFFFFFFF8));
  LODWORD(v142) = LODWORD(STACK[0x3260]) - 720873094;
  LODWORD(STACK[0x5600]) = v87 & 0xFFFFFFF8;
  STACK[0x3340] = *(v151 + (v87 & 0xFFFFFFF8 & v142));
  STACK[0x4978] = *(v151 + v88);
  STACK[0x50E8] = *(v151 + SLODWORD(STACK[0x325C]));
  v153 = STACK[0x54F0];
  STACK[0x32C8] = *(STACK[0x54F0] + (((STACK[0x3254] & 0xFFFFFFF8) + 1267037360) & v92));
  STACK[0x55D0] = *(v153 + (STACK[0x5620] & v92));
  STACK[0x4B98] = *(v153 + (LODWORD(STACK[0x3250]) & v92));
  STACK[0x5058] = *(v153 + (((LODWORD(STACK[0x324C]) + 1081853117) & v92) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x3308] = *(v153 + (v92 & (((v89 + 667488523) & 0xFFFFFFF8) + 1383278608)));
  STACK[0x3348] = *(v153 + ((v90 - 1265733019) & v92 & 0xFFFFFFF8));
  STACK[0x49D8] = *(v153 + v93);
  STACK[0x5110] = *(v153 + v94);
  v154 = *v101;
  v155 = *v105;
  STACK[0x32D0] = *(*v105 + (v154 & (v95 + 1778520784)));
  STACK[0x55E0] = *(v155 + (v154 & v96));
  STACK[0x3A08] = *(v155 + (v154 & ((v97 & 0xFFFFFFF8) - 824238552)));
  v156 = STACK[0x5270];
  v157 = v154 & STACK[0x5270];
  STACK[0x4BA0] = *(v155 + (v154 & 0xFFFFFFF8 & (v85 + 93351929)));
  STACK[0x53A0] = *(v155 + (v154 & v156));
  STACK[0x32F0] = *(v155 + (v154 & 0xFFFFFFF8 & v98));
  v158 = !v111;
  STACK[0x3310] = *(v155 + (v154 & 0xFFFFFFF8 & v99));
  STACK[0x3350] = *(v155 + v157);
  LODWORD(STACK[0x5790]) = LODWORD(STACK[0x5540]) ^ 6;
  v152 = v148 & 0x2B ^ 0x32;
  LODWORD(STACK[0x5540]) = v148 ^ (2 * ((v148 ^ 0x46) & (2 * ((v148 ^ 0x46) & (2 * ((v148 ^ 0x46) & (2 * ((v148 ^ 0x46) & (2 * ((v148 ^ 0x46) & (2 * ((v148 ^ 0x46) & (2 * v148) & 0xE ^ v152)) ^ v152)) ^ v152)) ^ v152)) ^ v152)) ^ v152)) ^ 0xFFFFFF96;
  STACK[0x4B18] = v103;
  v159 = *(STACK[0x57D8] + 8 * (((2 * v158) | (16 * v158)) ^ v103));
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 25;
  return v159();
}

uint64_t sub_1004D1A10()
{
  v1 = STACK[0x6250];
  STACK[0xD418] = STACK[0x70D8];
  return (*(STACK[0x57D8] + 8 * ((78 * ((((((v0 - 18586) | 0x2076) + 5998) ^ (v1 == 0x3FF9F9826CAB9AF2)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1004D1B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = STACK[0x51B8];
  v9 = STACK[0x51B8] - 22613;
  v10 = STACK[0x1518];
  v11 = 551690071 * STACK[0x1518];
  v12 = STACK[0x51B8] - 1079089617;
  LODWORD(STACK[0x1D4C4]) = (551690071 * STACK[0x1518]) ^ v9 ^ 0x21697A6C;
  LODWORD(STACK[0x1D4C8]) = (v9 | 0x21696A5A) - 551690071 * v10;
  LODWORD(STACK[0x1D4C0]) = v12 ^ (551690071 * v10);
  if (v6 == 238)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = v11;
  }

  STACK[0x1D4E0] = v13;
  LODWORD(STACK[0x1D4D0]) = v11;
  LODWORD(STACK[0x1D4CC]) = (v9 ^ 0x21696A41) - v11;
  STACK[0x1D4D8] = -551690071 * v10;
  v14 = STACK[0x57D8];
  v15 = (*(STACK[0x57D8] + 8 * (v8 ^ a6)))(v7 - 240);
  return (*(v14 + 8 * SLODWORD(STACK[0x1D4D4])))(v15);
}

uint64_t sub_1004D1CA0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W4>, int a4@<W8>)
{
  v7 = v5 + 4433;
  v8 = ((a2 + a3) >> 15) + ((a2 + a3 + ((a2 + a3) >> 15)) >> 7);
  v9 = v8 + a2 + 1616537538 + v4;
  v10 = ((v9 ^ 0x612DE758) >> (v7 - 12)) + (v9 ^ 0x612DE758);
  v11 = v10 - (v10 >> 5);
  v12 = v11 + 582701002 - ((v11 + 582701002) >> 9) + ((v11 + 582701002 - ((v11 + 582701002) >> 9)) >> 8);
  v13 = v11 ^ a1;
  v14 = v12 + 87895557 + ((v12 + 87895557) >> 15) + ((v12 + 87895557 + ((v12 + 87895557) >> 15)) >> 8);
  v15 = a4 ^ (v8 + v4 - 1399935702 + a2 - ((2 * v9) & 0x98688AD0));
  v16 = v14 + 1896824274 - ((v14 + 1896824274) >> 8);
  v17 = v16 >> 2;
  v18 = (v16 >> 2) + v16;
  v19 = v18 + 1449418597 - ((v18 + 1449418597) >> 11) + ((v18 + 1449418597 - ((v18 + 1449418597) >> 11)) >> 1);
  v20 = v19 + 1370172432 - ((v19 + 1370172432) >> 12) - ((v19 + 1370172432 - ((v19 + 1370172432) >> 12)) >> 3);
  v21 = (v17 | 0x7CDA5F07) - (v17 & 0x325A0F8) + v20 + 1 - (((v17 | 0x7CDA5F07) - (v17 & 0x325A0F8) + v20 + 1) >> 9);
  v22 = v21 + (v21 >> 5);
  v23 = v13 ^ v18 ^ v22;
  v24 = v6 ^ v12 ^ (v19 - ((2 * v19) & 0x18860D7A) + 205719229) ^ 0xF03EF5FF ^ ((v22 ^ 0xBC6049B3) + ((v22 ^ 0xBC6049B3) >> 9) + (((v22 ^ 0xBC6049B3) + ((v22 ^ 0xBC6049B3) >> 9)) >> 7));
  v25 = -v24;
  v27 = v24 & 7;
  v26 = v27 == 0;
  STACK[0x4FA8] = v27;
  v28 = v25 & 7;
  v29 = v15 ^ v14 ^ v20;
  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v30 = -1;
  }

  STACK[0x5330] = v28;
  v31 = v30 << v28;
  v32 = v31;
  v33 = 16843009 * v31;
  v34 = ~v31;
  v35 = v23 | v29 ^ 0xA08A991D;
  v36 = (587202560 * v32) & v23;
  if (v26)
  {
    v37 = 0;
  }

  else
  {
    v37 = v34;
  }

  LODWORD(STACK[0x55A0]) = v36 ^ v33;
  LODWORD(STACK[0x5660]) = v36 ^ v33 ^ 0x9CA33809;
  v38 = 16843009 * (v29 & 0x7F) - 1987198930;
  v39 = ((v38 ^ 0x365251B1) + 1075867233) ^ v38 ^ ((v38 ^ 0xE0C11BAD) - 1766644611) ^ ((v38 ^ 0xA0E175C5) - 694990315) ^ ((v38 ^ 0xFFFFFFF7) - 1987198937);
  LODWORD(STACK[0x5600]) = v39;
  LODWORD(STACK[0x5630]) = v39 ^ 0x861ACAA;
  v40 = 16843009 * ((v35 ^ BYTE1(v35) ^ BYTE2(v35)) ^ HIBYTE(v35) ^ 0x81);
  LODWORD(STACK[0x4A10]) = 34;
  LODWORD(STACK[0x5530]) = v40;
  LODWORD(STACK[0x5750]) = v40 ^ 0x81818181;
  LODWORD(STACK[0x5580]) = v33;
  LODWORD(STACK[0x5720]) = v37 & v29 ^ v33;
  LODWORD(STACK[0x5730]) = LODWORD(STACK[0x5550]) ^ 0x42424242;
  return (*(STACK[0x57D8] + 8 * v7))(628369787, 2315810012, 3663067648, 417, 2315778813, 381872829, 1642142264);
}

uint64_t sub_1004D2AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X5>, _DWORD *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = v8 - 1;
  v11 = a6 + v10 + v7;
  v12 = *(*a4 + ((*a5 & ((v11 & 0xFFFFFFF8 ^ 0x72904ED4) + 1818417261 + ((2 * (v11 & 0xFFFFFFF8)) | 0x1ADF6255))) & 0xFFFFFFFFFFFFFFF8));
  v13 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = (((2 * (v13 + v12)) | 0xAFE3D8C518C218ACLL) - (v13 + v12) + 0x280E139D739EF3AALL) ^ 0x23E7BD2B133F3031;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v16 + v15 - ((2 * (v16 + v15)) & 0x17E70844AE4D86EALL) - 0x740C7BDDA8D93C8BLL) ^ 0x9EC1C6CC6BD6A93CLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0xCF08C15C39282EE6) - (v19 + v18) + 0x187B9F51E36BE88CLL) ^ 0x3A0E4B96DB5ED117 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__((((2 * (v19 + v18)) & 0xCF08C15C39282EE6) - (v19 + v18) + 0x187B9F51E36BE88CLL) ^ 0x3A0E4B96DB5ED117, 8) + v20) ^ a1;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a3;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xA82620A559D2DA78;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0x3881C5685E58D670) - (v27 + v26) - 0x1C40E2B42F2C6B39) ^ 0xBC32F175734B9EDCLL;
  *(v6 + v10) = (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v26, 61))) ^ a2) >> (8 * (v11 & 7u))) ^ *v11;
  return (*(STACK[0x57D8] + 8 * (v9 | (2 * (v10 != 0)))))();
}

uint64_t sub_1004D2CF4()
{
  v4 = ((0x8F3B9C4B120157DELL - ((v3 - 240) | 0x8F3B9C4B120157DELL) + STACK[0x1FC0]) ^ 0xBDBCEB762B105366) * v0;
  STACK[0x1D4C0] = STACK[0xAFE8] ^ v4;
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4D4]) = v4 ^ (v2 - 22614) ^ 0x9EDBE7A9;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4C8]) = -1629755479 - v4 + v2 - 22614 + 678;
  LODWORD(STACK[0x1D4CC]) = v4 + v1 + v2;
  LODWORD(STACK[0x1D4E0]) = ((v2 - 22614) ^ 0x9EDBE7AE) + v4;
  v5 = v2 + 9182;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1004D2DC8()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 21035;
  v2 = STACK[0x7D10];
  *STACK[0xB8C0] = STACK[0x7D10];
  LODWORD(STACK[0x1D270]) = 128;
  *STACK[0x7560] = v2 + 128;
  *STACK[0x96E8] = 128;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x14A8 ^ (14217 * ((v0 + 660952602) > 0x32BB120E)))))();
}

uint64_t sub_1004D2E78@<X0>(int a1@<W8>)
{
  STACK[0xBAB8] = v1 + a1;
  v3 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * (((v2 ^ 0x19F3) + 2140) ^ v2)))();
}

uint64_t sub_1004D2F48()
{
  LODWORD(STACK[0x8230]) = v0;
  v3 = v0 - 1280421508 + ((v2 - 18502) | 0xC0);
  v4 = ((((v2 - 174732391) & 0xA69FF35 ^ LODWORD(STACK[0xBD04]) ^ 0x3500AA00) - 889227557) ^ ((LODWORD(STACK[0xBD04]) ^ 0x1B8B2937) - 462104887) ^ ((LODWORD(STACK[0xBD04]) ^ 0xFC972086) + 57204602)) - 903767188;
  v5 = v4 < 0xF8051AD8;
  v6 = v3 < v4;
  if (v3 < 0xF8051AD8 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0x57D8] + 8 * ((21 * (v1 & v6 ^ 1)) ^ (v2 + 4303))))();
}

uint64_t sub_1004D304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] - 21371;
  v8 = STACK[0x9210];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x16F0)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004D32A0(unint64_t a1)
{
  LODWORD(STACK[0xE1EC]) = -143113071;
  STACK[0xE1E0] = a1;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004D33D4()
{
  v2 = (STACK[0x51B8] - 20498) | 0x12;
  STACK[0xA7C8] = v0;
  return (*(STACK[0x57D8] + 8 * ((21915 * (v1 == v2 - 143115205)) ^ LODWORD(STACK[0x1F68]))))();
}

uint64_t sub_1004D3498()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 1762421341;
  STACK[0xB028] = 4;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9152)))(&STACK[0x1D1CD], &STACK[0xA178], &STACK[0xB028], 0, 0);
  v5 = 551690071 * ((2 * (((v0 - 240) ^ 0x74A5C54D58A1EB53) & 0x39D265047F941FD2) - ((v0 - 240) ^ 0x74A5C54D58A1EB53) + 0x462D9AFB806BE02DLL) ^ 0x43150D7896275829);
  STACK[0x1D4D8] = v4 - v5;
  v6 = v2 - 551690071 * ((2 * (((v0 - 240) ^ 0x58A1EB53) & 0x7F941FD2) - ((v0 - 240) ^ 0x58A1EB53) - 2140413907) ^ 0x96275829);
  LODWORD(STACK[0x1D4CC]) = v6;
  LODWORD(STACK[0x1D4C0]) = (v1 - 1079089617) ^ (551690071 * ((2 * (((v0 - 240) ^ 0x58A1EB53) & 0x7F941FD2) - ((v0 - 240) ^ 0x58A1EB53) - 2140413907) ^ 0x96275829));
  STACK[0x1D4E0] = v5;
  LODWORD(STACK[0x1D4C4]) = (551690071 * ((2 * (((v0 - 240) ^ 0x58A1EB53) & 0x7F941FD2) - ((v0 - 240) ^ 0x58A1EB53) - 2140413907) ^ 0x96275829)) ^ v2 ^ 0xD2B;
  LODWORD(STACK[0x1D4C8]) = v6 + 3;
  LODWORD(STACK[0x1D4D0]) = 551690071 * ((2 * (((v0 - 240) ^ 0x58A1EB53) & 0x7F941FD2) - ((v0 - 240) ^ 0x58A1EB53) - 2140413907) ^ 0x96275829);
  v7 = (*(v3 + 8 * (v1 ^ 0x2411)))(v0 - 240);
  return (*(v3 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_1004D3630()
{
  v1 = STACK[0x90E8];
  v2 = STACK[0x65C8];
  *(v2 - 0x30BDFED8F32E64F1) = *(STACK[0x90E8] + 192);
  *(v2 - 0x30BDFED8F32E64E9) = *(v1 + 200);
  STACK[0xCCC8] = *(v1 + 8);
  STACK[0x9830] = &STACK[0xBBC0];
  LODWORD(STACK[0x8724]) = 95715706;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004D3800()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xCB88];
  LODWORD(STACK[0x9094]) = -32197428;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004D38C0()
{
  v0 = STACK[0x51B8] - 14348;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))();
  STACK[0xB6E0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004D39F8()
{
  v0 = STACK[0x51B8] ^ 0x91F;
  STACK[0xD0A0] = STACK[0xD098];
  v1 = STACK[0x57D8];
  v2 = STACK[0x2170];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2170]));
  return (*(v1 + 8 * (v0 + v2 - 18253)))();
}

uint64_t sub_1004D3AFC@<X0>(int a1@<W1>, int a2@<W8>)
{
  v5 = STACK[0x5790];
  v6 = v5 * a1 + 1750533179 - ((((v5 * a1 + 1750533179) * v4) >> 32) >> 12) * v3;
  v7 = v5 * a1 + (a2 ^ 0x6B8C525C) - ((((v5 * a1 + (a2 ^ 0x6B8C525Cu)) * v4) >> 32) >> 12) * v3;
  v8 = LODWORD(STACK[0x5790]) + 1;
  *(v2 + 4 * v7) = *(v2 + 4 * v6);
  LODWORD(STACK[0x5790]) = v8;
  return (*(STACK[0x57D8] + 8 * ((1671 * (v8 == 937955419)) ^ a2)))();
}

uint64_t sub_1004D3BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (v4 + 1829290565) & 0x92F73DAE;
  LODWORD(STACK[0x5130]) = LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x57C0]);
  LODWORD(STACK[0x5410]) = LODWORD(STACK[0x5760]) + LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x50C8]) = LODWORD(STACK[0x5750]) - 2 * LODWORD(STACK[0x5740]);
  LODWORD(STACK[0x50B8]) = LODWORD(STACK[0x50B0]) - LODWORD(STACK[0x50B8]);
  v7 = LODWORD(STACK[0x53F8]) ^ LODWORD(STACK[0x5108]);
  LODWORD(STACK[0x57C0]) = v6;
  LODWORD(STACK[0x53F8]) = v7 ^ (v6 + 1491954114);
  v8 = *(STACK[0x57D8] + 8 * v4);
  STACK[0x5750] = v5;
  return v8(-176191320, 626757626, a3, a4, -1774916746, (v5 - 626757626), (v5 - 1233228800), 176191320);
}

uint64_t sub_1004D4014@<X0>(unint64_t a1@<X1>, int a2@<W4>, char a3@<W5>, char a4@<W6>, char a5@<W7>, char a6@<W8>)
{
  v20 = *(v8 + (((a1 * v12) >> 64) >> 9) * v13);
  v21 = v20 >> (a6 ^ v18);
  LOBYTE(v20) = 3 * (((v20 ^ a5) - 37) ^ ((v20 ^ a4) - 119) ^ ((v20 ^ a3) + 107));
  v22 = v20 + 60;
  LOBYTE(v20) = ((v14 - v20) | 0x81) ^ (v20 + 60) & v17;
  v23 = a2 + ((v22 ^ (2 * ((v22 ^ 2) & (2 * v20) ^ v20))) & 7 ^ 4) * v7;
  v24 = a2 + ((3 * (v21 ^ 4) + 1) & 7) * v7;
  v25 = v23 - (((v23 * v9) >> 32) >> 4) * v15;
  *(v19 + v25) = *(v19 + v24 - (((v24 * v9) >> 32) >> 4) * v15) ^ v16 ^ (*(v19 + v25) & 0x80 | (((2 * *(v19 + v25)) ^ 0x3E) >> 1));
  return (*(STACK[0x57D8] + 8 * (((v11 == 0) * v10) ^ v6)))();
}

uint64_t sub_1004D4154(uint64_t a1, uint64_t a2)
{
  v7 = v4 + 1660391167 + v3;
  *(a2 + 468) = v7;
  *(a2 + 472) = v5 + 196;
  *(a2 + 480) = v6 + (v2 ^ 0x12A9u) - 708228704 + v7 + 1335;
  return (*(STACK[0x57D8] + 8 * ((465 * ((v7 - 708207297) < 0x13)) ^ v2)))();
}

uint64_t sub_1004D4240()
{
  v1 = LODWORD(STACK[0xEB50]) + (v0 ^ 0xDA46) - 1964350915;
  v2 = LODWORD(STACK[0xEB34]) - 1964350919;
  v3 = v1 < 0x9118690C;
  v4 = v1 > v2;
  if (v3 != v2 < 0x9118690C)
  {
    v4 = v3;
  }

  return (*(STACK[0x57D8] + 8 * ((v4 * ((LODWORD(STACK[0x22F0]) | 0x1031) - 12300)) | (STACK[0x51B8] + 2812))))();
}

uint64_t sub_1004D4334()
{
  v0 = STACK[0x51B8] - 10591;
  STACK[0x7ED8] = STACK[0x7ED8] + (STACK[0x1E90] & 0x5A63F7FF) - 2006;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004D43A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x7ED8];
  v7 = &STACK[0x10120] + STACK[0x7ED8];
  v8 = __ROR8__((v7 + 16) & 0xFFFFFFFFFFFFFFF8, 8) - 0x67659A219E1678C8;
  v9 = __ROR8__(STACK[0x1470] ^ 0xAF44247A204C83CDLL ^ v8, 8);
  v10 = LODWORD(STACK[0x11BC]) | 0x8A2u;
  STACK[0x57C0] = v10;
  v11 = v10 ^ 0x6B970A892F00B5EALL ^ v8;
  v12 = (((v9 + v11) | 0xA19B5389A017F817) - ((v9 + v11) | 0x5E64AC765FE807E8) + 0x5E64AC765FE807E8) ^ 0xD7E7EC9B6E90546ALL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) | 0x35B50C369A53540) - (v14 + v13) + 0x7E52579E4B2D6560) ^ 0x3CC14C5852BB697FLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x1A1C4C99A6B3D690;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x58EFACCBC8D7665BLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0xF30ADCCD896F82F3;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x8469B2E456434039;
  STACK[0x9CC0] = (v7 + 16);
  STACK[0xA818] = (v7 + 32);
  v24 = __ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61));
  v25 = __ROR8__((v7 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((2 * v25 + 0x3134CBBCC3D30E70) & 0x4025D89330F646DALL) - v25 + 0x4552ADD8059B555ALL;
  v27 = __ROR8__(v26 ^ 0x72A937CC47C85E0ELL, 8);
  v26 ^= 0xB67A193F488467CALL;
  v28 = (v27 + v26) ^ 0x767CBF12CE87AC7DLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  STACK[0x9088] = (v7 + 48);
  STACK[0x9638] = (v7 + 64);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x595DE20CE11E1812) - (v30 + v29) - 0x2CAEF106708F0C0ALL) ^ 0x6E3DEAC069190029;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0x7290E8966E01C29CLL) + 0x3948744B3700E14ELL) ^ 0x235438D291B337DELL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x58EFACCBC8D7665BLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((v38 + v37) | 0x63830994D86797F8) - ((v38 + v37) | 0x9C7CF66B27986807) - 0x63830994D86797F9) ^ 0x9089D5595108150BLL;
  v40 = __ROR8__(v39, 8);
  STACK[0x7ED8] = v6 + 80;
  STACK[0x9388] = 0;
  LODWORD(STACK[0x6CD4]) = 0;
  v7[16] = ((((2 * v24) & 0x67D67670A2906CDCLL) - v24 - 0x33EB3B385148366FLL) ^ 0xC5DCA1DDC2CDB7CBLL) >> (8 * ((v7 + 16) & 7u));
  v41 = __ROR8__(v37, 61);
  v42 = (((2 * (v40 + (v39 ^ v41))) | 0xB16E4376ABB6A954) - (v40 + (v39 ^ v41)) - 0x58B721BB55DB54AALL) ^ 0xDCDE935F03981493;
  v43 = v42 ^ __ROR8__(v39 ^ v41, 61);
  v44 = __ROR8__(v42, 8);
  v7[17] = ((((2 * (v44 + v43)) | 0xC9A06E0D1B1A15E0) - (v44 + v43) + 0x1B2FC8F97272F510) ^ 0xED18521CE1F774AALL) >> (8 * ((v7 + 17) & 7u));
  v45 = __ROR8__((v7 + 18) & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = (v45 - 0x67659A219E1678C8) ^ 0x6B970A892F00BB58;
  v47 = __ROR8__((v45 - 0x67659A219E1678C8) ^ 0xAF44247A204C829CLL, 8);
  v48 = (((2 * (v47 + v46)) | 0x21683A9E4AF9E72CLL) - (v47 + v46) + 0x6F4BE2B0DA830C6ALL) ^ 0xE6C8A25DEBFB5FEBLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0xBD6CE439E669F3DFLL;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((v52 + v51) | 0xDC89CEA0585F9704) - ((v52 + v51) | 0x2376315FA7A068FBLL) + 0x2376315FA7A068FBLL) ^ 0xC6958239FEEC4194;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x58EFACCBC8D7665BLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xF30ADCCD896F82F3;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0x8469B2E456434039;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v7[18] = ((((v61 + v60) | 0x96BDC480C9EB1B5FLL) - ((v61 + v60) | 0x69423B7F3614E4A0) + 0x69423B7F3614E4A0) ^ 0x9F75A19AA5916505) >> (8 * ((v7 + 18) & 7u));
  v62 = __ROR8__((v7 + 19) & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = -2 - (((0x27659A219E1678C7 - v62) | 0xC0F8F2549112BE06) + ((v62 - 0x67659A219E1678C8) | 0x3F070DAB6EED41F9));
  v64 = v63 ^ 0x6FBCD62EB15E3C9ALL;
  v63 ^= 0xAB6FF8DDBE12055ELL;
  v65 = __ROR8__(v64, 8);
  v66 = (v65 + v63 - ((2 * (v65 + v63)) & 0xAD67A504D664D60) - 0x7A94C2D7D94CD950) ^ 0xF317823AE8348ACDLL;
  v67 = v66 ^ __ROR8__(v63, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xBD6CE439E669F3DFLL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((2 * (v70 + v69)) & 0x6B9696068E615484) - (v70 + v69) + 0x4A34B4FCB8CF55BDLL) ^ 0x5028F8651E7C832DLL;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x58EFACCBC8D7665BLL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (v75 + v74 - ((2 * (v75 + v74)) & 0xA90EDBCA089E06D8) + 0x54876DE5044F036CLL) ^ 0xA78DB1288D20819FLL;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (((v78 + v77) | 0xACFC43F2E1AE50E0) - ((v78 + v77) | 0x5303BC0D1E51AF1FLL) + 0x5303BC0D1E51AF1FLL) ^ 0x2895F116B7ED10D9;
  v7[19] = ((__ROR8__(v79, 8) + (v79 ^ __ROR8__(v77, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * ((v7 + 19) & 7u));
  v80 = __ROR8__((v7 + 20) & 0xFFFFFFFFFFFFFFF8, 8);
  v81 = (v80 - 0x67659A219E1678C8) ^ 0x6B970A892F00BB58;
  v82 = (__ROR8__((v80 - 0x67659A219E1678C8) ^ 0xAF44247A204C829CLL, 8) + v81) ^ 0x767CBF12CE87AC7DLL;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xBD6CE439E669F3DFLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) & 0xF0300B164D6B8A52) - (v86 + v85) - 0x7818058B26B5C52ALL) ^ 0x9DFBB6ED7FF9EC46;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = __ROR8__((((2 * (v89 + v88)) | 0x7AA9F528B49336A0) - (v89 + v88) + 0x42AB056BA5B664B0) ^ 0xE5BB565F929EFD0BLL, 8);
  v91 = (((2 * (v89 + v88)) | 0x7AA9F528B49336A0) - (v89 + v88) + 0x42AB056BA5B664B0) ^ 0xE5BB565F929EFD0BLL ^ __ROR8__(v88, 61);
  v92 = (v90 + v91) ^ 0xF30ADCCD896F82F3;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ 0x8469B2E456434039;
  v7[20] = ((__ROR8__(v94, 8) + (v94 ^ __ROR8__(v93, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * ((v7 + 20) & 7u));
  v95 = __ROR8__((v7 + 21) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = v95 - ((2 * v95 + 0x3134CBBCC3D30E70) & 0xF0BB27CF56EF99A2) + 0x14F7F9C60D615409;
  v97 = v96 ^ 0xD319B79D8B3B4E4DLL;
  v96 ^= 0x17CA996E84777789uLL;
  v98 = __ROR8__(v97, 8);
  v99 = (((v98 + v96) ^ 0xA8B22C9A8EF18484 | 0xC7CF847E785DF487) - ((v98 + v96) ^ 0xA8B22C9A8EF18484 | 0x38307B8187A20B78) + 0x38307B8187A20B78) ^ 0x190117F6382BDC7ELL;
  v100 = v99 ^ __ROR8__(v96, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((2 * (v101 + v100)) | 0x8F11CB7663E50894) - (v101 + v100) - 0x4788E5BB31F2844ALL) ^ 0xFAE40182D79B7795;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x1A1C4C99A6B3D690;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) & 0x87E5732CDEBDE1C6) - (v106 + v105) + 0x3C0D466990A10F1CLL) ^ 0x64E2EAA258766947;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((v109 + v108) | 0x1E4406F4081CC5E0) - ((v109 + v108) | 0xE1BBF90BF7E33A1FLL) - 0x1E4406F4081CC5E1) ^ 0xED4EDA3981734713;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x8469B2E456434039;
  v113 = __ROR8__(v112, 8);
  v114 = __ROR8__(v111, 61);
  v115 = ((v113 + (v112 ^ v114) - ((2 * (v113 + (v112 ^ v114))) & 0x87E28293A375450ELL) + 0x43F14149D1BAA287) ^ 0x4A392453BDC0DCDDLL) >> (8 * ((v7 + 21) & 7u));
  v116 = __ROR8__((v7 + 22) & 0xFFFFFFFFFFFFFFF8, 8);
  v7[21] = v115;
  v117 = (v116 - 0x67659A219E1678C8) ^ 0x6B970A892F00BB58;
  v118 = (__ROR8__((v116 - 0x67659A219E1678C8) ^ 0xAF44247A204C829CLL, 8) + v117) ^ 0x767CBF12CE87AC7DLL;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0xBD6CE439E669F3DFLL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (((2 * (v122 + v121)) | 0xF8F54181470ED1CALL) - (v122 + v121) + 0x3855F3F5C78971BLL) ^ 0xE666EC590534BE75;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0x58EFACCBC8D7665BLL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = __ROR8__((((2 * (v127 + v126)) & 0x6949E3A2C1BA9FBCLL) - (v127 + v126) + 0x4B5B0E2E9F22B021) ^ 0xB851D2E3164D32D2, 8);
  v129 = (((2 * (v127 + v126)) & 0x6949E3A2C1BA9FBCLL) - (v127 + v126) + 0x4B5B0E2E9F22B021) ^ 0xB851D2E3164D32D2 ^ __ROR8__(v126, 61);
  v130 = (v128 + v129) ^ 0x8469B2E456434039;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = __ROR8__(v130, 8);
  v7[22] = ((((v132 + v131) & 0xF66C08BA981DE376 ^ 0x8648088A1015C166) + ((v132 + v131) ^ 0x71262330E98A2E98) - (((v132 + v131) ^ 0x71262330E98A2E98) & 0xF66C08BA981DE376)) ^ 0x8E824E901DEDB3B4) >> (8 * ((v7 + 22) & 7u));
  v133 = __ROR8__((v7 + 23) & 0xFFFFFFFFFFFFFFF8, 8);
  v134 = -2 - (((0x7659A219E1678C7 - v133) | 0xE5B5BC34C4F44282) + ((v133 - 0x67659A219E1678C8) | 0x1A4A43CB3B0BBD7DLL));
  v135 = __ROR8__(v134 ^ 0x4AF1984EE4B8C01ELL, 8);
  v134 ^= 0x8E22B6BDEBF4F9DALL;
  v136 = (((v135 + v134) | 0x1DC3B017E2110AD0) - ((v135 + v134) | 0xE23C4FE81DEEF52FLL) - 0x1DC3B017E2110AD1) ^ 0x6BBF0F052C96A6ADLL;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (((2 * (v138 + v137)) & 0xDCE8CA6268619724) - (v138 + v137) + 0x118B9ACECBCF346DLL) ^ 0xACE77EF72DA6C7B2;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((v141 + v140) | 0xB96568B5A3F93CA7) - ((v141 + v140) | 0x469A974A5C06C358) + 0x469A974A5C06C358) ^ 0xA379242C054AEA37;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (((2 * (v144 + v143)) | 0x2BF7D6606CF881ECLL) - (v144 + v143) - 0x15FBEB30367C40F6) ^ 0x4D1447FBFEAB26ADLL;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0xF30ADCCD896F82F3;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = __ROR8__(v147, 8);
  v150 = (((v149 + v148) ^ 0xE2057362AD9E0D49 | 0xDF679B5A22367260) - ((v149 + v148) ^ 0xE2057362AD9E0D49 | 0x209864A5DDC98D9FLL) + 0x209864A5DDC98D9FLL) ^ 0xB90B5ADCD9EB3F10;
  v151 = v150 ^ __ROR8__(v148, 61);
  v152 = __ROR8__(v150, 8);
  v7[23] = ((((2 * (v152 + v151)) & 0xD6093D227976F1CCLL) - (v152 + v151) - 0x6B049E913CBB78E7) ^ 0x9D330474AF3EF943) >> (8 * ((v7 + 23) & 7u));
  v153 = __ROR8__((v7 + 24) & 0xFFFFFFFFFFFFFFF8, 8);
  v154 = ((2 * (v153 - 0x67659A219E1678C8)) | 0x9B3C97A48F5C8374) - (v153 - 0x67659A219E1678C8) + 0x3261B42DB851BE46;
  v155 = v154 ^ 0x62DA6FA867E2C326;
  v154 ^= 0xA609415B68AEFAE2;
  v156 = (__ROR8__(v155, 8) + v154) ^ 0x767CBF12CE87AC7DLL;
  v157 = v156 ^ __ROR8__(v154, 61);
  v158 = (__ROR8__(v156, 8) + v157) ^ 0xBD6CE439E669F3DFLL;
  v159 = v158 ^ __ROR8__(v157, 61);
  v160 = __ROR8__(v158, 8);
  v161 = (((2 * (v160 + v159)) & 0x4F15EA540F5C5F62) - (v160 + v159) + 0x58750AD5F851D04ELL) ^ 0x4269464C5EE206DELL;
  v162 = v161 ^ __ROR8__(v159, 61);
  v163 = __ROR8__(v161, 8);
  v164 = (((v163 + v162) & 0xF8328BF93A7943B5 ^ 0x180283D8024900A4) + ((v163 + v162) & 0x7CD7406C586BC4ALL ^ 0x641300245042849) - 1) ^ 0x46AC1F118F9A4EB7;
  v165 = v164 ^ __ROR8__(v162, 61);
  v166 = (__ROR8__(v164, 8) + v165) ^ 0xF30ADCCD896F82F3;
  v167 = v166 ^ __ROR8__(v165, 61);
  v168 = (__ROR8__(v166, 8) + v167) ^ 0x8469B2E456434039;
  v169 = __ROR8__(v168, 8);
  v170 = __ROR8__(v167, 61);
  v7[24] = ((((v169 + (v168 ^ v170)) | 0xD339B4265E991319) - ((v169 + (v168 ^ v170)) | 0x2CC64BD9A166ECE6) + 0x2CC64BD9A166ECE6) ^ 0xDAF1D13C32E36D43) >> (8 * ((v7 + 24) & 7u));
  v171 = __ROR8__((v7 + 25) & 0xFFFFFFFFFFFFFFF8, 8);
  v172 = ((2 * ((v171 - 0x67659A219E1678C8) ^ 0xE23377AB1C441C6ELL)) | 0xC29AF8CC20D6B58CLL) - ((v171 - 0x67659A219E1678C8) ^ 0xE23377AB1C441C6ELL) + 0x1EB28399EF94A53ALL;
  v173 = v172 ^ 0xAC3A2FB72C63C434;
  v172 ^= 0x68E90144232FFDF0uLL;
  v174 = (__ROR8__(v173, 8) + v172) ^ 0x767CBF12CE87AC7DLL;
  v175 = v174 ^ __ROR8__(v172, 61);
  v176 = (__ROR8__(v174, 8) + v175) ^ 0xBD6CE439E669F3DFLL;
  v177 = v176 ^ __ROR8__(v175, 61);
  v178 = (__ROR8__(v176, 8) + v177) ^ 0x1A1C4C99A6B3D690;
  v179 = v178 ^ __ROR8__(v177, 61);
  v180 = (__ROR8__(v178, 8) + v179) ^ 0x58EFACCBC8D7665BLL;
  v181 = __ROR8__(v180, 8);
  v182 = v180 ^ __ROR8__(v179, 61);
  v183 = (((v181 + v182) & 0xA9D8B0CA8755B997 ^ 0x205000800205B112) + ((v181 + v182) & 0x56274F3578AA4668 ^ 0x50074B3520A20449) - 1) ^ 0x835D9778ABC837A9;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = (__ROR8__(v183, 8) + v184) ^ 0x8469B2E456434039;
  v7[25] = ((__ROR8__(v185, 8) + (v185 ^ __ROR8__(v184, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * ((v7 + 25) & 7u));
  v186 = __ROR8__((v7 + 26) & 0xFFFFFFFFFFFFFFF8, 8);
  v187 = v186 - ((2 * v186 + 0x3134CBBCC3D30E70) & 0xE27EE402EF908D26) - 0x70262820264E3235;
  v188 = v187 ^ 0x587B567B5784C40FLL;
  v187 ^= 0x9CA8788858C8FDCBLL;
  v189 = (__ROR8__(v188, 8) + v187) ^ 0x767CBF12CE87AC7DLL;
  v190 = v189 ^ __ROR8__(v187, 61);
  v191 = (__ROR8__(v189, 8) + v190) ^ 0xBD6CE439E669F3DFLL;
  v192 = v191 ^ __ROR8__(v190, 61);
  v193 = (__ROR8__(v191, 8) + v192) ^ 0x1A1C4C99A6B3D690;
  v194 = v193 ^ __ROR8__(v192, 61);
  v195 = (__ROR8__(v193, 8) + v194) ^ 0x58EFACCBC8D7665BLL;
  v196 = v195 ^ __ROR8__(v194, 61);
  v197 = __ROR8__(v195, 8);
  v198 = (((2 * (v197 + v196)) & 0xEF1FD1381B0E8E7CLL) - (v197 + v196) + 0x8701763F278B8C1) ^ 0xFB7ACBAE7B173A32;
  v199 = v198 ^ __ROR8__(v196, 61);
  v200 = (__ROR8__(v198, 8) + v199) ^ 0x8469B2E456434039;
  v201 = __ROR8__(v200, 8);
  v202 = __ROR8__(v199, 61);
  v7[26] = ((((v201 + (v200 ^ v202)) | 0xAD60FCB5AE7BA8EELL) - ((v201 + (v200 ^ v202)) | 0x529F034A51845711) + 0x529F034A51845711) ^ 0xA4A899AFC201D6B4) >> (8 * ((v7 + 26) & 7u));
  v203 = __ROR8__((v7 + 27) & 0xFFFFFFFFFFFFFFF8, 8) - 0x67659A219E1678C8;
  v204 = __ROR8__(v203 ^ 0xAF44247A204C829CLL, 8);
  v203 ^= 0x6B970A892F00BB58uLL;
  v205 = (v204 + v203) ^ 0x767CBF12CE87AC7DLL;
  v206 = v205 ^ __ROR8__(v203, 61);
  v207 = __ROR8__(v205, 8);
  v208 = (((v207 + v206) ^ 0x211D4108143AB56FLL) - ((2 * ((v207 + v206) ^ 0x211D4108143AB56FLL)) & 0x79CE215EDA4A4D0CLL) + 0x3CE710AF6D252686) ^ 0xA096B59E9F766036;
  v209 = v208 ^ __ROR8__(v206, 61);
  v210 = __ROR8__(v208, 8);
  v211 = (((2 * (v210 + v209)) | 0x65FA4AFDFDD85974) - (v210 + v209) + 0x4D02DA810113D346) ^ 0xA8E169E7585FFA2ALL;
  v212 = v211 ^ __ROR8__(v209, 61);
  v213 = __ROR8__(v211, 8);
  v214 = (((v213 + v212) | 0x81CF79BD4BBF2316) - ((v213 + v212) | 0x7E308642B440DCE9) + 0x7E308642B440DCE9) ^ 0xD920D5768368454DLL;
  v215 = v214 ^ __ROR8__(v212, 61);
  v216 = __ROR8__(v214, 8);
  v217 = __ROR8__((((v216 + v215) & 0x33425C8B1B7B66D9 ^ 0x21004808027A6289) + ((v216 + v215) & 0xCCBDA374E4849926 ^ 0xC35816044849827) - 1) ^ 0xDE3F15A5CF91785CLL, 8);
  v218 = (((v216 + v215) & 0x33425C8B1B7B66D9 ^ 0x21004808027A6289) + ((v216 + v215) & 0xCCBDA374E4849926 ^ 0xC35816044849827) - 1) ^ 0xDE3F15A5CF91785CLL ^ __ROR8__(v215, 61);
  v219 = (((2 * (v217 + v218)) & 0x3672DCE1E717E54CLL) - (v217 + v218) - 0x1B396E70F38BF2A7) ^ 0x60AF236B5A374D60;
  v220 = STACK[0x9CC0];
  v221 = __ROR8__((STACK[0x9CC0] + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v7[27] = ((__ROR8__(v219, 8) + (v219 ^ __ROR8__(v218, 61))) ^ 0x9C8651A6C7A7E5AuLL) >> (8 * ((v7 + 27) & 7u));
  v222 = (v221 - 0x67659A219E1678C8) ^ 0x6B970A892F00BB58;
  v223 = __ROR8__((v221 - 0x67659A219E1678C8) ^ 0xAF44247A204C829CLL, 8);
  v224 = (((2 * ((v223 + v222) ^ 0xBD16587DD1259A86)) & 0xFF06CBF6BE9D4E7CLL) - ((v223 + v222) ^ 0xBD16587DD1259A86) + 0x7C9A04A0B158C1) ^ 0xCB167D6BBF136E3ALL;
  v225 = v224 ^ __ROR8__(v222, 61);
  v226 = (__ROR8__(v224, 8) + v225) ^ 0xBD6CE439E669F3DFLL;
  v227 = v226 ^ __ROR8__(v225, 61);
  v228 = __ROR8__(v226, 8);
  v229 = (((v228 + v227) | 0xC83952CA3F064F49) - ((v228 + v227) | 0x37C6AD35C0F9B0B6) + 0x37C6AD35C0F9B0B6) ^ 0xD2251E5399B599D9;
  v230 = v229 ^ __ROR8__(v227, 61);
  v231 = __ROR8__(v229, 8);
  v232 = __ROR8__((((2 * (v231 + v230)) | 0x34CEF832182CBD54) - (v231 + v230) - 0x1A677C190C165EAALL) ^ 0x4288D0D2C4C138F1, 8);
  v233 = (((2 * (v231 + v230)) | 0x34CEF832182CBD54) - (v231 + v230) - 0x1A677C190C165EAALL) ^ 0x4288D0D2C4C138F1 ^ __ROR8__(v230, 61);
  v234 = (v232 + v233 - ((2 * (v232 + v233)) & 0x77749760C8F7A270) + 0x3BBA4BB0647BD138) ^ 0xC8B0977DED1453CBLL;
  v235 = v234 ^ __ROR8__(v233, 61);
  v236 = (__ROR8__(v234, 8) + v235) ^ 0x8469B2E456434039;
  v220[12] = ((__ROR8__(v236, 8) + (v236 ^ __ROR8__(v235, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * ((v220 + 12) & 7u));
  v237 = __ROR8__((v220 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v238 = ((v237 - 0x67659A219E1678C8) | 0xED8A07165F562DB3) - ((v237 - 0x67659A219E1678C8) | 0x1275F8E9A0A9D24CLL) + 0x1275F8E9A0A9D24CLL;
  v239 = v238 ^ 0x42CE236C7F1AAF2FLL;
  v238 ^= 0x861D0D9F705696EBLL;
  v240 = (__ROR8__(v239, 8) + v238) ^ 0x767CBF12CE87AC7DLL;
  v241 = __ROR8__(v240, 8);
  v242 = v240 ^ __ROR8__(v238, 61);
  v243 = (((2 * (v241 + v242)) | 0xBA2D8244A47150C8) - (v241 + v242) - 0x5D16C1225238A864) ^ 0xE07A251BB4515BBBLL;
  v244 = v243 ^ __ROR8__(v242, 61);
  v245 = (__ROR8__(v243, 8) + v244) ^ 0x1A1C4C99A6B3D690;
  v246 = v245 ^ __ROR8__(v244, 61);
  v247 = __ROR8__(v245, 8);
  v248 = (((v247 + v246) | 0x6EF93075C65C8273) - ((v247 + v246) | 0x9106CF8A39A37D8CLL) - 0x6EF93075C65C8274) ^ 0x36169CBE0E8BE428;
  v249 = v248 ^ __ROR8__(v246, 61);
  v250 = __ROR8__(v248, 8);
  v251 = (((v250 + v249) | 0x14FB08579D730681) - ((v250 + v249) | 0xEB04F7A8628CF97ELL) - 0x14FB08579D730682) ^ 0xE7F1D49A141C8472;
  v252 = v251 ^ __ROR8__(v249, 61);
  v253 = __ROR8__(v251, 8);
  v254 = (((v253 + v252) | 0x113E00BF29945E79) - ((v253 + v252) | 0xEEC1FF40D66BA186) - 0x113E00BF29945E7ALL) ^ 0x9557B25B7FD71E40;
  v220[13] = ((__ROR8__(v254, 8) + (v254 ^ __ROR8__(v252, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * ((v220 + 13) & 7u));
  v255 = __ROR8__((v220 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v256 = ((0x67659A219E1678C7 - v255) & 0x74FBCD5B762D9D9BLL) + v255 - 0x67659A219E1678C8 - ((v255 - 0x67659A219E1678C8) & 0x70FBCD5B762D9D9BLL);
  v257 = v256 ^ 0xDBBFE92156611F07;
  v256 ^= 0x1F6CC7D2592D26C3uLL;
  v258 = (__ROR8__(v257, 8) + v256) ^ 0x767CBF12CE87AC7DLL;
  v259 = v258 ^ __ROR8__(v256, 61);
  v260 = __ROR8__(v258, 8);
  v261 = (((v260 + v259) | 0x655C8FE06B3BD4EELL) - ((v260 + v259) | 0x9AA3701F94C42B11) - 0x655C8FE06B3BD4EFLL) ^ 0xD8306BD98D522731;
  v262 = v261 ^ __ROR8__(v259, 61);
  v263 = (__ROR8__(v261, 8) + v262) ^ 0x1A1C4C99A6B3D690;
  v264 = v263 ^ __ROR8__(v262, 61);
  v265 = (__ROR8__(v263, 8) + v264) ^ 0x58EFACCBC8D7665BLL;
  v266 = v265 ^ __ROR8__(v264, 61);
  v267 = (__ROR8__(v265, 8) + v266) ^ 0xF30ADCCD896F82F3;
  v268 = v267 ^ __ROR8__(v266, 61);
  v269 = __ROR8__(v267, 8);
  v270 = (((v269 + v268) | 0x6F632705B681F3EFLL) - ((v269 + v268) | 0x909CD8FA497E0C10) - 0x6F632705B681F3F0) ^ 0xEB0A95E1E0C2B3D6;
  v220[14] = ((__ROR8__(v270, 8) + (v270 ^ __ROR8__(v268, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * ((v220 + 14) & 7u));
  v271 = __ROR8__((v220 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v272 = ((v271 - 0x67659A219E1678C8) | 0x3D535903DEEAD25DLL) - ((v271 - 0x67659A219E1678C8) | 0xC2ACA6FC21152DA2) - 0x3D535903DEEAD25ELL;
  v273 = v272 ^ 0x92177D79FEA650C1;
  v272 ^= 0x56C4538AF1EA6905uLL;
  v274 = (__ROR8__(v273, 8) + v272) ^ 0x767CBF12CE87AC7DLL;
  v275 = __ROR8__(v274, 8);
  v276 = v274 ^ __ROR8__(v272, 61);
  v277 = (((2 * (v275 + v276)) & 0x3D957A4131562E84) - (v275 + v276) + 0x613542DF6754E8BDLL) ^ 0xDC59A6E6813D1B62;
  v278 = v277 ^ __ROR8__(v276, 61);
  v279 = __ROR8__(v277, 8);
  v280 = (((2 * (v279 + v278)) & 0x5B7BA35AF9C68E4) - (v279 + v278) - 0x2DBDD1AD7CE3473) ^ 0xE7386E7C8E821D1DLL;
  v281 = v280 ^ __ROR8__(v278, 61);
  v282 = (__ROR8__(v280, 8) + v281) ^ 0x58EFACCBC8D7665BLL;
  v283 = v282 ^ __ROR8__(v281, 61);
  v284 = (__ROR8__(v282, 8) + v283) ^ 0xF30ADCCD896F82F3;
  v285 = v284 ^ __ROR8__(v283, 61);
  v286 = (__ROR8__(v284, 8) + v285) ^ 0x8469B2E456434039;
  v220[15] = ((__ROR8__(v286, 8) + (v286 ^ __ROR8__(v285, 61))) ^ 0x9C8651A6C7A7E5ALL) >> (8 * ((v220 + 15) & 7u));
  v287 = STACK[0xA818];
  *v287 = 0;
  *(v287 + 1) = 0;
  *(v287 + 9) = 0;
  *(v287 + 13) = 0;
  *(v287 + 15) = 0;
  v288 = STACK[0x9088];
  v289 = STACK[0x9088];
  v290 = __ROR8__(STACK[0x9088] & 0xFFFFFFFFFFFFFFF8, 8);
  v291 = ((2 * v290 + 0x1FED85B41AC340BELL) & 0x5C5E538DE7914A32) - v290 + 0x1DA135EFED5BA87;
  v292 = v291 ^ 0xD498F9DB74AFA3ADLL;
  v291 ^= 0xAB2EEF0B1FA2A157;
  v293 = (__ROR8__(v292, 8) + v291) ^ 0x8E0C41AE4B84AABELL;
  v294 = __ROR8__(v293, 8);
  v295 = v293 ^ __ROR8__(v291, 61);
  v296 = (v294 + v295 - ((2 * (v294 + v295)) & 0xDF6562292ABC12E4) - 0x104D4EEB6AA1F68ELL) ^ 0xEF60328BC068B299;
  v297 = v296 ^ __ROR8__(v295, 61);
  v298 = (__ROR8__(v296, 8) + v297) ^ 0x26D728D4EB8A1083;
  v299 = v298 ^ __ROR8__(v297, 61);
  v300 = (__ROR8__(v298, 8) + v299) ^ 0x374E2AAE459CD448;
  v301 = __ROR8__(v300, 8);
  v302 = v300 ^ __ROR8__(v299, 61);
  v303 = (v301 + v302 - ((2 * (v301 + v302)) & 0x81759E36ADD1892CLL) - 0x3F4530E4A9173B6ALL) ^ 0xF29BB87334B8C64BLL;
  v304 = v303 ^ __ROR8__(v302, 61);
  v305 = (__ROR8__(v303, 8) + v304) ^ 0x5FA27CC96E1EAF91;
  v306 = v305 ^ __ROR8__(v304, 61);
  v307 = __ROR8__(v305, 8);
  *v288 = (((((2 * (v307 + v306)) | 0xC0E3CED9EE0F80ACLL) - (v307 + v306) + 0x1F8E189308F83FAALL) ^ 0xC51327B77F69F290) >> (8 * (v288 & 7u))) ^ 0xBF;
  v308 = __ROR8__((v288 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v309 = v308 - ((2 * v308 - 0x60127A4BE53CBF42) & 0x9F46F935A39C4FEALL) - 0x6065C08B20D037ACLL;
  v310 = v309 ^ 0xCAEB5378A956DEBELL;
  v309 ^= 0xB55D45A8C25BDC44;
  v311 = (__ROR8__(v310, 8) + v309) ^ 0x8E0C41AE4B84AABELL;
  v312 = v311 ^ __ROR8__(v309, 61);
  v313 = (__ROR8__(v311, 8) + v312) ^ 0xD2839F5536BBEBLL;
  v314 = v313 ^ __ROR8__(v312, 61);
  v315 = __ROR8__(v313, 8);
  v316 = (((v315 + v314) & 0x23BF7E75CD2CFA13 ^ 0x2310A11090C9A13) + ((v315 + v314) & 0xDC40818A32D305ECLL ^ 0xDC40008230820129) - 1) ^ 0xF8A62247D2048BB8;
  v317 = v316 ^ __ROR8__(v314, 61);
  v318 = __ROR8__(v316, 8);
  v319 = (((v318 + v317) | 0xA3A5B5F43A6EE489) - ((v318 + v317) | 0x5C5A4A0BC5911B76) + 0x5C5A4A0BC5911B76) ^ 0x94EB9F5A7FF230C1;
  v320 = v319 ^ __ROR8__(v317, 61);
  v321 = (__ROR8__(v319, 8) + v320) ^ 0x32217768625002DDLL;
  v322 = v321 ^ __ROR8__(v320, 61);
  v323 = (__ROR8__(v321, 8) + v322) ^ 0x5FA27CC96E1EAF91;
  v324 = v323 ^ __ROR8__(v322, 61);
  v325 = __ROR8__(v323, 8);
  v288[1] = (((((2 * (v325 + v324)) | 0xFCA90BBD9E8E9508) - (v325 + v324) + 0x1AB7A2130B8B57CLL) ^ 0xDB36450547297842) >> (8 * ((v288 + 1) & 7u))) ^ 0x15;
  v326 = __ROR8__((v288 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v327 = (0xB0093D25F29E5FA0 - v326) & 0xADD4223267D493C3 | (v326 + 0x4FF6C2DA0D61A05FLL) & 0x522BDDCD982B6C3CLL;
  v328 = __ROR8__(v327 ^ 0x289C0DD01F4C6A88, 8);
  v327 ^= 0x572A1B0074416872uLL;
  v329 = (v328 + v327) ^ 0x8E0C41AE4B84AABELL;
  v330 = v329 ^ __ROR8__(v327, 61);
  v331 = __ROR8__(v329, 8);
  v332 = (((v331 + v330) | 0x41A337A177E120AFLL) - ((v331 + v330) | 0xBE5CC85E881EDF50) - 0x41A337A177E120B0) ^ 0x4171B43E22D79B44;
  v333 = v332 ^ __ROR8__(v330, 61);
  v334 = (__ROR8__(v332, 8) + v333) ^ 0x26D728D4EB8A1083;
  v335 = v334 ^ __ROR8__(v333, 61);
  v336 = __ROR8__(v334, 8);
  v337 = (((v336 + v335) | 0x79390AC20FAC40A8) - ((v336 + v335) | 0x86C6F53DF053BF57) - 0x79390AC20FAC40A9) ^ 0x4E77206C4A3094E0;
  v338 = v337 ^ __ROR8__(v335, 61);
  v339 = (__ROR8__(v337, 8) + v338) ^ 0x32217768625002DDLL;
  v340 = v339 ^ __ROR8__(v338, 61);
  v341 = __ROR8__(v339, 8);
  v342 = (v341 + v340 - ((2 * (v341 + v340)) & 0x37D6232FA6CED132) - 0x6414EE682C989767) ^ 0xC4496D5EBD79C708;
  v288[2] = (((__ROR8__(v342, 8) + (v342 ^ __ROR8__(v340, 61))) ^ 0x2562C0DB886E32C6) >> (8 * ((v288 + 2) & 7u))) ^ 0x92;
  v343 = __ROR8__((v288 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v344 = ((0xB0093D25F29E5FA0 - v343) & 0x89C10708F51E0457) + v343 + 0x4FF6C2DA0D61A05FLL - ((v343 + 0x4FF6C2DA0D61A05FLL) & 0x89C10708F51E0457);
  v345 = v344 ^ 0xC8928EA8D86FD1CLL;
  v344 ^= 0x733F3E3AE68BFFE6uLL;
  v346 = __ROR8__(v345, 8);
  v347 = (((v346 + v344) ^ 0x8CB2154C66753EE8 | 0xA4678FEE4E78E76BLL) - ((v346 + v344) ^ 0x8CB2154C66753EE8 | 0x5B987011B1871894) + 0x5B987011B1871894) ^ 0xA6D9DB0C6389733DLL;
  v348 = v347 ^ __ROR8__(v344, 61);
  v349 = (__ROR8__(v347, 8) + v348) ^ 0xD2839F5536BBEBLL;
  v350 = v349 ^ __ROR8__(v348, 61);
  v351 = (__ROR8__(v349, 8) + v350) ^ 0x26D728D4EB8A1083;
  v352 = v351 ^ __ROR8__(v350, 61);
  v353 = __ROR8__(v351, 8);
  v354 = (((2 * (v353 + v352)) | 0x9103DCDEE82E5F0ALL) - (v353 + v352) - 0x4881EE6F74172F85) ^ 0x7FCFC4C1318BFBCDLL;
  v355 = v354 ^ __ROR8__(v352, 61);
  v356 = (__ROR8__(v354, 8) + v355) ^ 0x32217768625002DDLL;
  v357 = v356 ^ __ROR8__(v355, 61);
  v358 = (__ROR8__(v356, 8) + v357) ^ 0x5FA27CC96E1EAF91;
  v288[3] = (((__ROR8__(v358, 8) + (v358 ^ __ROR8__(v357, 61))) ^ 0x2562C0DB886E32C6uLL) >> (8 * ((v288 + 3) & 7u))) ^ 0xFA;
  v359 = __ROR8__((v288 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v360 = (0x30093D25F29E5FA0 - v359) & 0x439A9603FF8A1B24 | (v359 + 0x4FF6C2DA0D61A05FLL) & 0xBC6569FC0075E4DBLL;
  v361 = v360 ^ 0xC6D2B9E18712E26FLL;
  v360 ^= 0xB964AF31EC1FE095;
  v362 = __ROR8__(v361, 8);
  v363 = __ROR8__((((2 * (v362 + v360)) & 0x2A922CAB5100C48) - (v362 + v360) - 0x15491655A880625) ^ 0x70A72F34EEF35365, 8);
  v364 = (((2 * (v362 + v360)) & 0x2A922CAB5100C48) - (v362 + v360) - 0x15491655A880625) ^ 0x70A72F34EEF35365 ^ __ROR8__(v360, 61);
  v365 = (v363 + v364) ^ 0xD2839F5536BBEBLL;
  v366 = v365 ^ __ROR8__(v364, 61);
  v367 = __ROR8__(v365, 8);
  v368 = (v367 + v366 - ((2 * (v367 + v366)) & 0xBDF909FB90F171E4) - 0x21037B023787470ELL) ^ 0xF82BAC2923F2A871;
  v369 = v368 ^ __ROR8__(v366, 61);
  v370 = (__ROR8__(v368, 8) + v369) ^ 0x374E2AAE459CD448;
  v371 = __ROR8__(v370, 8);
  v372 = v370 ^ __ROR8__(v369, 61);
  v373 = (((2 * (v371 + v372)) | 0x4E3D1A7F23BDE55ELL) - (v371 + v372) + 0x58E172C06E210D51) ^ 0x953FFA57F38EF072;
  v374 = v373 ^ __ROR8__(v372, 61);
  v375 = __ROR8__(v373, 8);
  v376 = (((2 * (v375 + v374)) & 0x4CE9567C6D824B8ELL) - (v375 + v374) - 0x2674AB3E36C125C8) ^ 0x86292808A72075A9;
  v377 = v376 ^ __ROR8__(v374, 61);
  v378 = __ROR8__(v376, 8);
  v288[4] = (((((2 * (v378 + v377)) | 0xEC0C9D181FFF4680) - (v378 + v377) + 0x9F9B173F0005CC0) ^ 0xD3648E5787919186) >> (8 * ((v288 + 4) & 7u))) ^ 0x68;
  v379 = __ROR8__((v288 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v380 = ((2 * (v379 + 0x4FF6C2DA0D61A05FLL)) | 0xE587EF925878AEA2) - (v379 + 0x4FF6C2DA0D61A05FLL) + 0xD3C0836D3C3A8AFLL;
  v381 = v380 ^ 0x778BD82B54A4AE1ALL;
  v380 ^= 0x83DCEFB3FA9ACE0uLL;
  v382 = (__ROR8__(v381, 8) + v380) ^ 0x8E0C41AE4B84AABELL;
  v383 = v382 ^ __ROR8__(v380, 61);
  v384 = (__ROR8__(v382, 8) + v383) ^ 0xD2839F5536BBEBLL;
  v385 = v384 ^ __ROR8__(v383, 61);
  v386 = (__ROR8__(v384, 8) + v385) ^ 0x26D728D4EB8A1083;
  v387 = v386 ^ __ROR8__(v385, 61);
  v388 = (__ROR8__(v386, 8) + v387) ^ 0x374E2AAE459CD448;
  v389 = v388 ^ __ROR8__(v387, 61);
  v390 = __ROR8__(v388, 8);
  v391 = (((2 * (v390 + v389)) & 0xE32C95C2DF3D9FBELL) - (v390 + v389) + 0xE69B51E90613020) ^ 0x3C48C276F23132FDLL;
  v392 = v391 ^ __ROR8__(v389, 61);
  v393 = (__ROR8__(v391, 8) + v392) ^ 0x5FA27CC96E1EAF91;
  v288[5] = (((__ROR8__(v393, 8) + (v393 ^ __ROR8__(v392, 61))) ^ 0x2562C0DB886E32C6uLL) >> (8 * ((v288 + 5) & 7u))) ^ 3;
  v394 = __ROR8__((v288 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v395 = ((v394 + 0x4FF6C2DA0D61A05FLL) | 0x4C3CC72EEFE7B092) - ((v394 + 0x4FF6C2DA0D61A05FLL) | 0xB3C338D110184F6DLL) - 0x4C3CC72EEFE7B093;
  v396 = v395 ^ 0xC974E8CC977F49D9;
  v395 ^= 0xB6C2FE1CFC724B23;
  v397 = (__ROR8__(v396, 8) + v395) ^ 0x8E0C41AE4B84AABELL;
  v398 = v397 ^ __ROR8__(v395, 61);
  v399 = __ROR8__(v397, 8);
  v400 = __ROR8__((v399 + v398 - ((2 * (v399 + v398)) & 0x11E35B47865E0FFCLL) + 0x8F1ADA3C32F07FELL) ^ 0x8232E3C9619BC15, 8);
  v401 = (v399 + v398 - ((2 * (v399 + v398)) & 0x11E35B47865E0FFCLL) + 0x8F1ADA3C32F07FELL) ^ 0x8232E3C9619BC15 ^ __ROR8__(v398, 61);
  v402 = (v400 + v401) ^ 0x26D728D4EB8A1083;
  v403 = v402 ^ __ROR8__(v401, 61);
  v404 = __ROR8__(v402, 8);
  v405 = (((v404 + v403) | 0x2F72598EC4D6E5D8) - ((v404 + v403) | 0xD08DA6713B291A27) - 0x2F72598EC4D6E5D9) ^ 0x183C7320814A3190;
  v406 = v405 ^ __ROR8__(v403, 61);
  v407 = (__ROR8__(v405, 8) + v406) ^ 0x32217768625002DDLL;
  v408 = v407 ^ __ROR8__(v406, 61);
  v409 = (__ROR8__(v407, 8) + v408) ^ 0x5FA27CC96E1EAF91;
  v410 = __ROR8__(v409, 8);
  v411 = __ROR8__(v408, 61);
  v288[6] = (((((2 * (v410 + (v409 ^ v411))) | 0x2AB702265D6A254ELL) - (v410 + (v409 ^ v411)) - 0x155B81132EB512A7) ^ 0x303941C8A6DB2061uLL) >> (8 * ((v288 + 6) & 7u))) ^ 0xF;
  v412 = __ROR8__((v288 + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v413 = -2 - (((0xB0093D25F29E5FA0 - v412) | 0x2683BAA958CA0E88) + ((v412 + 0xFF6C2DA0D61A05FLL) | 0xD97C4556A735F177));
  v414 = v413 ^ 0xA3CB954B2052F7C3;
  v413 ^= 0xDC7D839B4B5FF539;
  v415 = __ROR8__(v414, 8);
  v416 = (((2 * (v415 + v413)) | 0xFEC2E65184AEEA12) - (v415 + v413) - 0x7F617328C2577509) ^ 0xF16D328689D3DFB7;
  v417 = v416 ^ __ROR8__(v413, 61);
  v418 = (__ROR8__(v416, 8) + v417) ^ 0xD2839F5536BBEBLL;
  v419 = v418 ^ __ROR8__(v417, 61);
  v420 = (__ROR8__(v418, 8) + v419) ^ 0x26D728D4EB8A1083;
  v421 = v420 ^ __ROR8__(v419, 61);
  v422 = (__ROR8__(v420, 8) + v421) ^ 0x374E2AAE459CD448;
  v423 = v422 ^ __ROR8__(v421, 61);
  v424 = (__ROR8__(v422, 8) + v423) ^ 0x32217768625002DDLL;
  v425 = v424 ^ __ROR8__(v423, 61);
  v426 = (__ROR8__(v424, 8) + v425) ^ 0x5FA27CC96E1EAF91;
  v427 = __ROR8__((v288 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v288[7] = (((__ROR8__(v426, 8) + (v426 ^ __ROR8__(v425, 61))) ^ 0x2562C0DB886E32C6uLL) >> (8 * ((v288 + 7) & 7u))) ^ 0x51;
  v428 = ((2 * v427 - 0x60127A4BE53CBF42) & 0xAB88907417CBEDDALL) - v427 + 0x5A44F4EBE6B868B3;
  v429 = v428 ^ 0x2F7398278C82F059;
  v428 ^= 0x50C58EF7E78FF2A3uLL;
  v430 = (__ROR8__(v429, 8) + v428) ^ 0x8E0C41AE4B84AABELL;
  v431 = v430 ^ __ROR8__(v428, 61);
  v432 = __ROR8__(v430, 8);
  v433 = (v432 + v431 - ((2 * (v432 + v431)) & 0xA4A00CDE2DCF950ALL) + 0x5250066F16E7CA85) ^ 0x528285F043D1716ELL;
  v434 = v433 ^ __ROR8__(v431, 61);
  v435 = (__ROR8__(v433, 8) + v434) ^ 0x26D728D4EB8A1083;
  v436 = v435 ^ __ROR8__(v434, 61);
  v437 = __ROR8__(v435, 8);
  v438 = (((2 * (v437 + v436)) | 0xEC13E5378223074ALL) - (v437 + v436) + 0x9F60D643EEE7C5BLL) ^ 0xC147D835848D57EDLL;
  v439 = v438 ^ __ROR8__(v436, 61);
  v440 = __ROR8__(v438, 8);
  v441 = (((v440 + v439) | 0xF3C1F4A0731358ALL) - ((v440 + v439) | 0xF0C3E0B5F8CECA75) - 0xF3C1F4A0731358BLL) ^ 0x3D1D682265613757;
  v442 = v441 ^ __ROR8__(v439, 61);
  v443 = __ROR8__(v441, 8);
  v444 = (v443 + v442 - ((2 * (v443 + v442)) & 0x72DF1AB93E9A4B7ELL) - 0x469072A360B2DA41) ^ 0xE6CDF195F1538A2ELL;
  v288[8] = (((__ROR8__(v444, 8) + (v444 ^ __ROR8__(v442, 61))) ^ 0x2562C0DB886E32C6) >> (8 * ((v288 + 8) & 7u))) ^ 0x71;
  v445 = __ROR8__((v288 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v446 = v445 - ((2 * v445 - 0x60127A4BE53CBF42) & 0xD5E5CEBE186E25CALL) - 0x451655C6E6674CBCLL;
  v447 = v446 ^ 0xEFBAC8BD74AFEBAELL;
  v446 ^= 0x900CDE6D1FA2E954;
  v448 = __ROR8__(v447, 8);
  v449 = (((2 * (v448 + v446)) | 0xE0758D66B5C4F13CLL) - (v448 + v446) - 0x703AC6B35AE2789ELL) ^ 0xFE36871D1166D220;
  v450 = v449 ^ __ROR8__(v446, 61);
  v451 = __ROR8__(v449, 8);
  v452 = (((2 * (v451 + v450)) | 0x6DA8CB5AF4DF4758) - (v451 + v450) - 0x36D465AD7A6FA3ACLL) ^ 0x3606E6322F591847;
  v453 = v452 ^ __ROR8__(v450, 61);
  v454 = __ROR8__(v452, 8);
  v455 = (v454 + v453 - ((2 * (v454 + v453)) & 0xC98B814D5F198ED6) - 0x1B3A3F5950733895) ^ 0xC212E8724406D7E8;
  v456 = v455 ^ __ROR8__(v453, 61);
  v457 = (__ROR8__(v455, 8) + v456) ^ 0x374E2AAE459CD448;
  v458 = v457 ^ __ROR8__(v456, 61);
  v459 = __ROR8__(v457, 8);
  v460 = (v459 + v458 - ((2 * (v459 + v458)) & 0xD8062F59334C4038) + 0x6C0317AC99A6201CLL) ^ 0x5E2260C4FBF622C1;
  v461 = v460 ^ __ROR8__(v458, 61);
  v462 = (__ROR8__(v460, 8) + v461) ^ 0x5FA27CC96E1EAF91;
  v288[9] = (((__ROR8__(v462, 8) + (v462 ^ __ROR8__(v461, 61))) ^ 0x2562C0DB886E32C6uLL) >> (8 * ((v288 + 9) & 7u))) ^ 0xCE;
  v463 = __ROR8__((v288 + 10) & 0xFFFFFFFFFFFFFFF8, 8) + 0x4FF6C2DA0D61A05FLL;
  v464 = __ROR8__(v463 ^ 0x85482FE27898F94BLL, 8);
  v463 ^= 0xFAFE39321395FBB1;
  v465 = (((2 * (v464 + v463)) & 0x9D5AF8D5E1241A78) - (v464 + v463) - 0x4EAD7C6AF0920D3DLL) ^ 0x3F5EC23B44E9587DLL;
  v466 = v465 ^ __ROR8__(v463, 61);
  v467 = __ROR8__(v465, 8);
  v468 = (((2 * (v467 + v466)) | 0xA1BCED1E8983CB14) - (v467 + v466) + 0x2F218970BB3E1A76) ^ 0xD00CF51011F75E61;
  v469 = v468 ^ __ROR8__(v466, 61);
  v470 = __ROR8__(v468, 8);
  v471 = __ROR8__((((2 * (v470 + v469)) & 0x9BAC90D986142E8) - (v470 + v469) - 0x4DD6486CC30A175) ^ 0xDDF5B3ADD8454E08, 8);
  v472 = (((2 * (v470 + v469)) & 0x9BAC90D986142E8) - (v470 + v469) - 0x4DD6486CC30A175) ^ 0xDDF5B3ADD8454E08 ^ __ROR8__(v469, 61);
  v473 = (((v471 + v472) | 0x28B120661DFB2E50) - ((v471 + v472) | 0xD74EDF99E204D1AFLL) - 0x28B120661DFB2E51) ^ 0x1FFF0AC85867FA18;
  v474 = v473 ^ __ROR8__(v472, 61);
  v475 = __ROR8__(v473, 8);
  v476 = (((2 * (v475 + v474)) | 0x7A920279DFF9ED56) - (v475 + v474) + 0x42B6FEC310030955) ^ 0x8F6876548DACF476;
  v477 = v476 ^ __ROR8__(v474, 61);
  v478 = (__ROR8__(v476, 8) + v477) ^ 0x5FA27CC96E1EAF91;
  v288[10] = (((__ROR8__(v478, 8) + (v478 ^ __ROR8__(v477, 61))) ^ 0x2562C0DB886E32C6uLL) >> (8 * ((v288 + 10) & 7u))) ^ 0xB4;
  v479 = __ROR8__((v288 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v480 = ((2 * (v479 + 0x4FF6C2DA0D61A05FLL)) | 0xA9E43063971E1ELL) - (v479 + 0x4FF6C2DA0D61A05FLL) - 0x54F21831CB8F0FLL;
  v481 = v480 ^ 0x851CDDFA49537644;
  v480 ^= 0xFAAACB2A225E74BELL;
  v482 = (__ROR8__(v481, 8) + v480) ^ 0x8E0C41AE4B84AABELL;
  v483 = v482 ^ __ROR8__(v480, 61);
  v484 = __ROR8__(v482, 8);
  v485 = (v484 + v483 - ((2 * (v484 + v483)) & 0x6201191671C504A6) + 0x31008C8B38E28253) ^ 0x31D20F146DD439B8;
  v486 = v485 ^ __ROR8__(v483, 61);
  v487 = (__ROR8__(v485, 8) + v486) ^ 0x26D728D4EB8A1083;
  v488 = v487 ^ __ROR8__(v486, 61);
  v489 = (__ROR8__(v487, 8) + v488) ^ 0x374E2AAE459CD448;
  v490 = v489 ^ __ROR8__(v488, 61);
  v491 = (__ROR8__(v489, 8) + v490) ^ 0x32217768625002DDLL;
  v492 = v491 ^ __ROR8__(v490, 61);
  v493 = __ROR8__(v491, 8);
  v494 = (((2 * (v493 + v492)) | 0xC2B4CEF468B88952) - (v493 + v492) - 0x615A677A345C44A9) ^ 0x3EF81BB35A42EB38;
  v288[11] = (((__ROR8__(v494, 8) + (v494 ^ __ROR8__(v492, 61))) ^ 0x2562C0DB886E32C6) >> (8 * ((v288 + 11) & 7u))) ^ 0x5E;
  v495 = __ROR8__((v288 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v496 = ((v495 + 0x4FF6C2DA0D61A05FLL) | 0xA11747978953C59ELL) - ((v495 + 0x4FF6C2DA0D61A05FLL) | 0x5EE8B86876AC3A61) + 0x5EE8B86876AC3A61;
  v497 = v496 ^ 0x245F6875F1CB3CD5;
  v496 ^= 0x5BE97EA59AC63E2FuLL;
  v498 = __ROR8__(v497, 8);
  v499 = (((v498 + v496) | 0xE691131107D762FELL) - ((v498 + v496) | 0x196EECEEF8289D01) + 0x196EECEEF8289D01) ^ 0x689D52BF4C53C840;
  v500 = v499 ^ __ROR8__(v496, 61);
  v501 = (__ROR8__(v499, 8) + v500) ^ 0xD2839F5536BBEBLL;
  v502 = v501 ^ __ROR8__(v500, 61);
  v503 = (__ROR8__(v501, 8) + v502) ^ 0x26D728D4EB8A1083;
  v504 = __ROR8__(v503, 8);
  v505 = v503 ^ __ROR8__(v502, 61);
  v506 = (((2 * (v504 + v505)) | 0xE98609B70BBA1B14) - (v504 + v505) + 0xB3CFB247A22F276) ^ 0xC38D2E75C041D9C2;
  v507 = v506 ^ __ROR8__(v505, 61);
  v508 = __ROR8__(v506, 8);
  v509 = (((2 * (v508 + v507)) & 0x4224B587316EA5D2) - (v508 + v507) - 0x21125AC398B752EALL) ^ 0xECCCD2540518AFCBLL;
  v510 = v509 ^ __ROR8__(v507, 61);
  v511 = (__ROR8__(v509, 8) + v510) ^ 0x5FA27CC96E1EAF91;
  v512 = v511 ^ __ROR8__(v510, 61);
  v513 = __ROR8__(v511, 8);
  v288[12] = (((((2 * (v513 + v512)) & 0x916875E0D762E406) - (v513 + v512) - 0x48B43AF06BB17204) ^ 0x922905D41C20BF3ALL) >> (8 * ((v288 + 12) & 7u))) ^ 0xAA;
  v514 = __ROR8__((v288 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v515 = (v514 + 0x4FF6C2DA0D61A05FLL) ^ 0xFAFE39321395FBB1;
  v516 = (__ROR8__((v514 + 0x4FF6C2DA0D61A05FLL) ^ 0x85482FE27898F94BLL, 8) + v515) ^ 0x8E0C41AE4B84AABELL;
  v517 = v516 ^ __ROR8__(v515, 61);
  v518 = __ROR8__(v516, 8);
  v519 = (((2 * (v518 + v517)) | 0x5ED073FD129FB928) - (v518 + v517) + 0x5097C60176B0236CLL) ^ 0xAFBABA61DC79677FLL;
  v520 = v519 ^ __ROR8__(v517, 61);
  v521 = __ROR8__(v519, 8);
  v522 = __ROR8__((((2 * (v521 + v520)) & 0xE0FB28A9D97B8326) - (v521 + v520) - 0x707D9454ECBDC194) ^ 0xA955437FF8C82EEFLL, 8);
  v523 = (((2 * (v521 + v520)) & 0xE0FB28A9D97B8326) - (v521 + v520) - 0x707D9454ECBDC194) ^ 0xA955437FF8C82EEFLL ^ __ROR8__(v520, 61);
  v524 = (v522 + v523) ^ 0x374E2AAE459CD448;
  v525 = v524 ^ __ROR8__(v523, 61);
  v526 = (__ROR8__(v524, 8) + v525) ^ 0x32217768625002DDLL;
  v527 = v526 ^ __ROR8__(v525, 61);
  v528 = (__ROR8__(v526, 8) + v527) ^ 0x5FA27CC96E1EAF91;
  v288[13] = (((__ROR8__(v528, 8) + (v528 ^ __ROR8__(v527, 61))) ^ 0x2562C0DB886E32C6uLL) >> (8 * ((v288 + 13) & 7u))) ^ 0x29;
  v529 = __ROR8__((v289 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v530 = (0xB0093D25F29E5FA0 - v529) & 0xCEDF3B82EAA978ECLL | (v529 + 0xFF6C2DA0D61A05FLL) & 0x3120C47D15568713;
  v531 = v530 ^ 0x4B971460923181A7;
  v530 ^= 0x342102B0F93C835DuLL;
  v532 = (__ROR8__(v531, 8) + v530) ^ 0x8E0C41AE4B84AABELL;
  v533 = v532 ^ __ROR8__(v530, 61);
  v534 = (__ROR8__(v532, 8) + v533) ^ 0xD2839F5536BBEBLL;
  v535 = v534 ^ __ROR8__(v533, 61);
  v536 = (__ROR8__(v534, 8) + v535) ^ 0x26D728D4EB8A1083;
  v537 = v536 ^ __ROR8__(v535, 61);
  v538 = __ROR8__(v536, 8);
  v539 = (((2 * (v538 + v537)) | 0xCE1F8FCE35937030) - (v538 + v537) + 0x18F03818E53647E8) ^ 0xD041ED495F556C50;
  v540 = v539 ^ __ROR8__(v537, 61);
  v541 = (__ROR8__(v539, 8) + v540) ^ 0x32217768625002DDLL;
  v542 = v541 ^ __ROR8__(v540, 61);
  v543 = (__ROR8__(v541, 8) + v542) ^ 0x5FA27CC96E1EAF91;
  *(v289 + 14) = (((__ROR8__(v543, 8) + (v543 ^ __ROR8__(v542, 61))) ^ 0x2562C0DB886E32C6uLL) >> (8 * ((v289 + 14) & 7))) ^ 0x41;
  v544 = __ROR8__((v289 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v545 = (v544 + 0x4FF6C2DA0D61A05FLL) ^ 0xFAFE39321395FBB1;
  v546 = __ROR8__((v544 + 0x4FF6C2DA0D61A05FLL) ^ 0x85482FE27898F94BLL, 8);
  v547 = __ROR8__((v546 + v545 - ((2 * (v546 + v545)) & 0x705104A983E40182) + 0x38288254C1F200C1) ^ 0xB624C3FA8A76AA7FLL, 8);
  v548 = (v546 + v545 - ((2 * (v546 + v545)) & 0x705104A983E40182) + 0x38288254C1F200C1) ^ 0xB624C3FA8A76AA7FLL ^ __ROR8__(v545, 61);
  v549 = (v547 + v548) ^ 0xD2839F5536BBEBLL;
  v550 = v549 ^ __ROR8__(v548, 61);
  v551 = (__ROR8__(v549, 8) + v550) ^ 0x26D728D4EB8A1083;
  v552 = v551 ^ __ROR8__(v550, 61);
  v553 = __ROR8__(v551, 8);
  v554 = (((v553 + v552) & 0x3299099B233E31C7 ^ 0x2180903002E0143) + ((v553 + v552) & 0xCD66F664DCC1CE38 ^ 0xCD42766094C18E29) - 1) ^ 0xF81455CDD1735B23;
  v555 = v554 ^ __ROR8__(v552, 61);
  v556 = (__ROR8__(v554, 8) + v555) ^ 0x32217768625002DDLL;
  v557 = v556 ^ __ROR8__(v555, 61);
  v558 = __ROR8__(v556, 8);
  v559 = (((v558 + v557) | 0xECFBAA343CA6338FLL) - ((v558 + v557) | 0x130455CBC359CC70) + 0x130455CBC359CC70) ^ 0xB359D6FD52B89C1ELL;
  *(v289 + 15) = (((__ROR8__(v559, 8) + (v559 ^ __ROR8__(v557, 61))) ^ 0x2562C0DB886E32C6) >> (8 * ((v289 + 15) & 7))) ^ 0xB2;
  v560 = STACK[0x9638];
  v561 = STACK[0x9638];
  v562 = __ROR8__(STACK[0x9638] & 0xFFFFFFFFFFFFFFF8, 8);
  v563 = (v562 - 0xE9365801D6EA443) ^ 0x93F184069626F40ELL;
  v564 = __ROR8__((v562 - 0xE9365801D6EA443) ^ 0x189557F982AC29E1, 8);
  v565 = (v564 + v563 - ((2 * (v564 + v563)) & 0x97CF5C1B1BE20684) - 0x341851F2720EFCBELL) ^ 0xA840429866C01C54;
  v566 = v565 ^ __ROR8__(v563, 61);
  v567 = (__ROR8__(v565, 8) + v566) ^ 0x9F719D461CA797D4;
  v568 = v567 ^ __ROR8__(v566, 61);
  v569 = (__ROR8__(v567, 8) + v568) ^ 0xFD7F0670E0D079E5;
  v570 = v569 ^ __ROR8__(v568, 61);
  v571 = (__ROR8__(v569, 8) + v570) ^ 0xD57DC9DA2655A980;
  v572 = v571 ^ __ROR8__(v570, 61);
  v573 = __ROR8__(v571, 8);
  v574 = (((2 * (v573 + v572)) & 0xF6434E2C1F67AAE2) - (v573 + v572) - 0x7B21A7160FB3D572) ^ 0xAB8C59EC4197196ALL;
  v575 = v574 ^ __ROR8__(v572, 61);
  v576 = __ROR8__(v574, 8);
  v577 = (v576 + v575 - ((2 * (v576 + v575)) & 0x523DDDFCF3F0ADCELL) + 0x291EEEFE79F856E7) ^ 0x42585B86717F63A0;
  v578 = __ROR8__(v577, 8);
  v579 = __ROR8__(v575, 61);
  *v560 = (((((2 * (v578 + (v577 ^ v579))) | 0x96AE5AF1D693AFCCLL) - (v578 + (v577 ^ v579)) + 0x34A8D28714B6281ALL) ^ 0x403A0A8DF17DEE2ALL) >> (8 * (v560 & 7u))) ^ 0x72;
  v580 = __ROR8__((v560 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v581 = ((2 * (v580 - 0xE9365801D6EA443)) | 0x12E2B19B0498501ELL) - (v580 - 0xE9365801D6EA443) - 0x97158CD824C280FLL;
  v582 = v581 ^ 0x11E40F3400E001EELL;
  v581 ^= 0x9A80DCCB146ADC01;
  v583 = (__ROR8__(v582, 8) + v581) ^ 0x63A7EC95EB311F16;
  v584 = v583 ^ __ROR8__(v581, 61);
  v585 = __ROR8__(v583, 8);
  v586 = __ROR8__((((v585 + v584) ^ 0xE694F538124C7EAALL | 0xC646276F1E2939ACLL) - ((v585 + v584) ^ 0xE694F538124C7EAALL | 0x39B9D890E1D6C653) + 0x39B9D890E1D6C653) ^ 0xBFA34F1110C2D0D2, 8);
  v587 = (((v585 + v584) ^ 0xE694F538124C7EAALL | 0xC646276F1E2939ACLL) - ((v585 + v584) ^ 0xE694F538124C7EAALL | 0x39B9D890E1D6C653) + 0x39B9D890E1D6C653) ^ 0xBFA34F1110C2D0D2 ^ __ROR8__(v584, 61);
  v588 = (v586 + v587) ^ 0xFD7F0670E0D079E5;
  v589 = v588 ^ __ROR8__(v587, 61);
  v590 = __ROR8__(v588, 8);
  v591 = (((2 * (v590 + v589)) | 0xF69343D2982D857ALL) - (v590 + v589) - 0x7B49A1E94C16C2BDLL) ^ 0xAE3468336A436B3DLL;
  v592 = v591 ^ __ROR8__(v589, 61);
  v593 = (__ROR8__(v591, 8) + v592) ^ a6;
  v594 = __ROR8__(v593, 8);
  v595 = v593 ^ __ROR8__(v592, 61);
  v596 = (((2 * (v594 + v595)) | 0x2144C7ADA07BE9B4) - (v594 + v595) + 0x6F5D9C292FC20B26) ^ 0xFBE4D6AED8BAC19DLL;
  v597 = __ROR8__((v561 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v560[1] = (((__ROR8__(v596, 8) + (v596 ^ __ROR8__(v595, 61))) ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v560 + 1) & 7u))) ^ 0xA8;
  v598 = ((2 * (v597 - 0xE9365801D6EA443)) | 0xA43F749BBD4532D2) - (v597 - 0xE9365801D6EA443) + 0x2DE045B2215D6697;
  v599 = v598 ^ 0xCA8AEDB45C0EB088;
  v598 ^= 0x41EE3E4B48846D67uLL;
  v600 = (__ROR8__(v599, 8) + v598) ^ 0x63A7EC95EB311F16;
  v601 = v600 ^ __ROR8__(v598, 61);
  v602 = (__ROR8__(v600, 8) + v601) ^ 0x9F719D461CA797D4;
  v603 = __ROR8__(v602, 8);
  v604 = v602 ^ __ROR8__(v601, 61);
  v605 = (((2 * (v603 + v604)) | 0x41D8743702A8F04CLL) - (v603 + v604) - 0x20EC3A1B81547826) ^ 0xDD933C6B618401C3;
  v606 = v605 ^ __ROR8__(v604, 61);
  v607 = (__ROR8__(v605, 8) + v606) ^ 0xD57DC9DA2655A980;
  v608 = v607 ^ __ROR8__(v606, 61);
  v609 = __ROR8__(v607, 8);
  v610 = (((v609 + v608) | 0x151B3FC661433C7) - ((v609 + v608) | 0xFEAE4C0399EBCC38) - 0x151B3FC661433C8) ^ 0x2E03B2F9D7CF0023;
  v611 = v610 ^ __ROR8__(v608, 61);
  v612 = __ROR8__(v610, 8);
  v613 = (((v612 + v611) | 0x717270967FAE0F05) - ((v612 + v611) | 0x8E8D8F698051F0FALL) - 0x717270967FAE0F06) ^ 0x1A34C5EE77293A42;
  v614 = __ROR8__((v561 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v615 = (0xE9365801D6EA442 - v614) & 0x4BAD69FAB891EC61 | (v614 - 0xE9365801D6EA443) & 0xB0529605476E139ELL;
  v616 = __ROR8__(v615 ^ 0x53383E033A3DC580, 8);
  v615 ^= 0xD85CEDFC2EB7186FLL;
  v617 = (v616 + v615) ^ 0x63A7EC95EB311F16;
  v618 = v617 ^ __ROR8__(v615, 61);
  v619 = (__ROR8__(v617, 8) + v618) ^ 0x9F719D461CA797D4;
  v620 = v619 ^ __ROR8__(v618, 61);
  v621 = __ROR8__(v619, 8);
  v622 = (((v621 + v620) | 0xC99D7996B0A1729FLL) - ((v621 + v620) | 0x366286694F5E8D60) + 0x366286694F5E8D60) ^ 0x34E27FE650710B7ALL;
  v623 = v622 ^ __ROR8__(v620, 61);
  v624 = __ROR8__(v622, 8);
  v625 = (((v624 + v623) | 0xAADB16ADA66076A2) - ((v624 + v623) | 0x5524E952599F895DLL) + 0x5524E952599F895DLL) ^ 0x7FA6DF778035DF22;
  v626 = v625 ^ __ROR8__(v623, 61);
  v627 = (__ROR8__(v625, 8) + v626) ^ a6;
  v628 = v627 ^ __ROR8__(v626, 61);
  v629 = __ROR8__(v627, 8);
  v630 = (((v629 + v628) ^ 0x10FDD51D2879BDCFLL | 0xF76E72A2232A55C3) - ((v629 + v628) ^ 0x10FDD51D2879BDCFLL | 0x8918D5DDCD5AA3CLL) + 0x8918D5DDCD5AA3CLL) ^ 0x8CD512C703D4DD4BLL;
  v631 = v630 ^ __ROR8__(v628, 61);
  v632 = __ROR8__(v630, 8);
  v633 = ((v632 + v631) | 0xB3F5E8CED81E27E6) - ((v632 + v631) | 0x4C0A173127E1D819);
  v634 = STACK[0x9638];
  v635 = STACK[0x9638];
  v636 = __ROR8__((STACK[0x9638] + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v637 = v636 - ((2 * v636 + 0x2D934FFC522B77ALL) & 0x15A21FE61BDF66C6) - 0x7FC2558D0F7EF0E0;
  v638 = v637 ^ 0x9644580A8F439A82;
  v637 ^= 0x1D208BF59BC9476DuLL;
  v639 = (__ROR8__(v638, 8) + v637) ^ 0x63A7EC95EB311F16;
  v640 = v639 ^ __ROR8__(v637, 61);
  v641 = (__ROR8__(v639, 8) + v640) ^ 0x9F719D461CA797D4;
  v642 = v641 ^ __ROR8__(v640, 61);
  v643 = (__ROR8__(v641, 8) + v642) ^ 0xFD7F0670E0D079E5;
  v644 = v643 ^ __ROR8__(v642, 61);
  v645 = (__ROR8__(v643, 8) + v644) ^ 0xD57DC9DA2655A980;
  v646 = v645 ^ __ROR8__(v644, 61);
  v647 = __ROR8__(v645, 8);
  v648 = (v647 + v646 - ((2 * (v647 + v646)) & 0xE0663F77A24CC80ALL) + 0x70331FBBD1266405) ^ 0x5F611EBE60FD57E1;
  v649 = v648 ^ __ROR8__(v646, 61);
  v650 = __ROR8__(v648, 8);
  v651 = (v650 + v649 - ((2 * (v650 + v649)) & 0x40F4D0D65C973C2) - 0x7DF859794D1B461FLL) ^ 0xE94113FEBA638CA6;
  v652 = __ROR8__((STACK[0x9638] + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v653 = __ROR8__(v651, 8) + (v651 ^ __ROR8__(v649, 61));
  v654 = ((v652 - 0xE9365801D6EA443) | 0xDE8740F187E75598) - ((v652 - 0xE9365801D6EA443) | 0x2178BF0E7818AA67) + 0x2178BF0E7818AA67;
  v655 = v654 ^ 0xC6121708054B7C79;
  v654 ^= 0x4D76C4F711C1A196uLL;
  v656 = (__ROR8__(v655, 8) + v654) ^ 0x63A7EC95EB311F16;
  v657 = v656 ^ __ROR8__(v654, 61);
  v658 = (__ROR8__(v656, 8) + v657) ^ 0x9F719D461CA797D4;
  v659 = v658 ^ __ROR8__(v657, 61);
  v660 = __ROR8__(v658, 8);
  v661 = (v660 + v659 - ((2 * (v660 + v659)) & 0xE63BE6D322BC1674) - 0xCE20C966EA1F4C6) ^ 0xE62F519718E72DFLL;
  v662 = v661 ^ __ROR8__(v659, 61);
  v663 = (__ROR8__(v661, 8) + v662) ^ 0xD57DC9DA2655A980;
  v664 = v663 ^ __ROR8__(v662, 61);
  v665 = (__ROR8__(v663, 8) + v664) ^ a6;
  v666 = v665 ^ __ROR8__(v664, 61);
  v667 = __ROR8__(v665, 8);
  v668 = (((2 * (v667 + v666)) | 0x2C033F9A9B95875ELL) - (v667 + v666) - 0x16019FCD4DCAC3AFLL) ^ 0x7D472AB5454DF6E8;
  v669 = __ROR8__(v668, 8) + (v668 ^ __ROR8__(v666, 61));
  v670 = __ROR8__((STACK[0x9638] + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v671 = v670 - ((2 * v670 + 0xD934FFC522B77ALL) & 0x1CD82AE70146550) + 0x72535BD71A9B8E65;
  v672 = v671 ^ 0x987396AEBAA61B49;
  v671 ^= 0x13174551AE2CC6A6uLL;
  v673 = (__ROR8__(v672, 8) + v671) ^ 0x63A7EC95EB311F16;
  v674 = v673 ^ __ROR8__(v671, 61);
  v675 = (__ROR8__(v673, 8) + v674) ^ 0x9F719D461CA797D4;
  v676 = v675 ^ __ROR8__(v674, 61);
  v677 = (__ROR8__(v675, 8) + v676) ^ 0xFD7F0670E0D079E5;
  v678 = v677 ^ __ROR8__(v676, 61);
  v679 = __ROR8__(v677, 8);
  v680 = (((2 * (v679 + v678)) | 0x6C9A1B907A94BAF8) - (v679 + v678) + 0x49B2F237C2B5A284) ^ 0x6330C4121B1FF4FCLL;
  v681 = v680 ^ __ROR8__(v678, 61);
  v682 = (__ROR8__(v680, 8) + v681) ^ a6;
  v683 = v682 ^ __ROR8__(v681, 61);
  v684 = (__ROR8__(v682, 8) + v683) ^ 0x6B46B57808873547;
  v685 = __ROR8__((STACK[0x9638] + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v686 = __ROR8__(v684, 8) + (v684 ^ __ROR8__(v683, 61));
  v687 = (v685 - 0xE9365801D6EA443) ^ 0x93F184069626F40ELL;
  v688 = (__ROR8__((v685 - 0xE9365801D6EA443) ^ 0x189557F982AC29E1, 8) + v687) ^ 0x63A7EC95EB311F16;
  v689 = v688 ^ __ROR8__(v687, 61);
  v690 = __ROR8__(v688, 8);
  v691 = (((v690 + v689) | 0x6549040152BDD4DCLL) - ((v690 + v689) | 0x9AB6FBFEAD422B23) - 0x6549040152BDD4DDLL) ^ 0xFA3899474E1A4308;
  v692 = v691 ^ __ROR8__(v689, 61);
  v693 = __ROR8__(v691, 8);
  v694 = (v693 + v692 - ((2 * (v693 + v692)) & 0xFBA229A554A3B320) + 0x7DD114D2AA51D990) ^ 0x80AE12A24A81A075;
  v695 = v694 ^ __ROR8__(v692, 61);
  v696 = __ROR8__(v694, 8);
  v697 = __ROR8__((((v696 + v695) | 0x110FDD8447A51302) - ((v696 + v695) | 0xEEF0227BB85AECFDLL) - 0x110FDD8447A51303) ^ 0xC472145E61F0BA82, 8);
  v698 = (((v696 + v695) | 0x110FDD8447A51302) - ((v696 + v695) | 0xEEF0227BB85AECFDLL) - 0x110FDD8447A51303) ^ 0xC472145E61F0BA82 ^ __ROR8__(v695, 61);
  v699 = (((v697 + v698) | 0xC8B02527955DC9D3) - ((v697 + v698) | 0x374FDAD86AA2362CLL) + 0x374FDAD86AA2362CLL) ^ 0xE7E224222486FA37;
  v700 = v699 ^ __ROR8__(v698, 61);
  v701 = __ROR8__(v699, 8) + v700;
  v702 = STACK[0x9638];
  v703 = STACK[0x9638];
  v704 = __ROR8__((STACK[0x9638] + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v705 = ((2 * v704 + 0x22D934FFC522B77ALL) & 0x231702CBED431FB2) - v704 + 0x7D07E41A26CD1469;
  v706 = v705 ^ 0x76E129638BF259C7;
  v705 ^= 0xFD85FA9C9F788428;
  v707 = (__ROR8__(v706, 8) + v705) ^ 0x63A7EC95EB311F16;
  v708 = v707 ^ __ROR8__(v705, 61);
  v709 = __ROR8__(v707, 8);
  v710 = (v709 + v708 - ((2 * (v709 + v708)) & 0x9C71B73A7E767A26) + 0x4E38DB9D3F3B3D13) ^ 0xD14946DB239CAAC7;
  v711 = v710 ^ __ROR8__(v708, 61);
  v712 = __ROR8__(v710, 8);
  v713 = (v712 + v711 - ((2 * (v712 + v711)) & 0xA55BCCBC28C969C2) - 0x2D5219A1EB9B4B1FLL) ^ 0x2FD2E02EF4B4CD04;
  v714 = v713 ^ __ROR8__(v711, 61);
  v715 = __ROR8__(v713, 8);
  v716 = (v715 + v714 - ((2 * (v715 + v714)) & 0x3847F69DC23E32) + 0x1C23FB4EE11F19) ^ 0xD561EA2168B4B699;
  v717 = v716 ^ __ROR8__(v714, 61);
  v718 = __ROR8__(v716, 8);
  v719 = (v701 - ((2 * v701) & 0x94ECE08268EFF1ELL) + 0x4A7670413477F8FLL) ^ 0x6FE1D27C1BC04AC8;
  v720 = (v718 + v717 - ((2 * (v718 + v717)) & 0xE9A9D1A138CC6956) + 0x74D4E8D09C6634ABLL) ^ 0x5B86E9D52DBD074FLL;
  v721 = v720 ^ __ROR8__(v717, 61);
  v722 = (__ROR8__(v720, 8) + v721) ^ 0x6B46B57808873547;
  *(v561 + 2) = (((__ROR8__(v613, 8) + (v613 ^ __ROR8__(v611, 61))) ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v561 + 2) & 7))) ^ 0xFA;
  v723 = __ROR8__((v702 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v561 + 3) = (((v633 + 0x4C0A173127E1D819) ^ 0x3898CF3BC22A1E2ALL) >> (8 * ((v561 + 3) & 7))) ^ 0x8A;
  v724 = ((v723 - 0xE9365801D6EA443) & 0xC1C4F9C8843A27FFLL ^ 0x4000A108843A2632) + ((v723 - 0xE9365801D6EA443) & 0x3A3B06377BC5D800 ^ 0x1202000463005801) - 1;
  v725 = __ROR8__(v724 ^ 0x4A97F6F5659657D3, 8);
  v724 ^= 0xC1F3250A711C8A3CLL;
  v726 = (((2 * (v725 + v724)) & 0x650A990D56EF722) - (v725 + v724) - 0x32854C86AB77B92) ^ 0x9F7047A27E799B78;
  v727 = v726 ^ __ROR8__(v724, 61);
  v728 = __ROR8__(v726, 8);
  v729 = (v728 + v727 - ((2 * (v728 + v727)) & 0xAA919AB73D122E70) - 0x2AB732A46176E8C8) ^ 0x4A39501D822E80ECLL;
  v730 = v729 ^ __ROR8__(v727, 61);
  v731 = (__ROR8__(v729, 8) + v730) ^ 0xFD7F0670E0D079E5;
  v732 = v731 ^ __ROR8__(v730, 61);
  v733 = __ROR8__(v719, 8) + (v719 ^ __ROR8__(v700, 61));
  v734 = (__ROR8__(v731, 8) + v732) ^ 0xD57DC9DA2655A980;
  v735 = v734 ^ __ROR8__(v732, 61);
  v736 = __ROR8__(v734, 8);
  v737 = __ROR8__((v703 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v634 + 4) = ((v653 ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v634 + 4) & 7))) ^ 0xFB;
  *(v634 + 5) = ((v669 ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v634 + 5) & 7))) ^ 0xBC;
  v738 = ((v737 - 0xE9365801D6EA443) | 0x97C16EC2BCADBB9ELL) - ((v737 - 0xE9365801D6EA443) | 0x683E913D43524461) + 0x683E913D43524461;
  v739 = __ROR8__(v738 ^ 0x8F54393B3E01927FLL, 8);
  v738 ^= 0x430EAC42A8B4F90uLL;
  v740 = (((v739 + v738) | 0x728B486E3BE442C7) - ((v739 + v738) | 0x8D74B791C41BBD38) - 0x728B486E3BE442C8) ^ 0x112CA4FBD0D55DD1;
  v741 = v740 ^ __ROR8__(v738, 61);
  v742 = (__ROR8__(v740, 8) + v741) ^ 0x9F719D461CA797D4;
  v743 = v742 ^ __ROR8__(v741, 61);
  v744 = (__ROR8__(v742, 8) + v743) ^ 0xFD7F0670E0D079E5;
  v745 = v744 ^ __ROR8__(v743, 61);
  v746 = __ROR8__(v744, 8);
  v747 = (((2 * (v746 + v745)) | 0x892BAC2E2501D4FCLL) - (v746 + v745) + 0x3B6A29E8ED7F1582) ^ 0x11E81FCD34D543FELL;
  v748 = v747 ^ __ROR8__(v745, 61);
  v749 = __ROR8__(v747, 8);
  v750 = ((2 * (v749 + v748)) & 0xA08A376471A7C362) - (v749 + v748);
  *(v635 + 6) = (((v686 - ((2 * v686) & 0x39BC62729CB24B06) + 0x1CDE31394E592583) ^ 0x97B316CC546D1C4FLL) >> (8 * ((v635 + 6) & 7))) ^ 0x31;
  v751 = (((2 * (v736 + v735)) | 0xD3498E7302B384B8) - (v736 + v735) - 0x69A4C7398159C25CLL) ^ 0x46F6C63C3082F1B8;
  v752 = v751 ^ __ROR8__(v735, 61);
  v753 = (__ROR8__(v751, 8) + v752) ^ 0x6B46B57808873547;
  v754 = v753 ^ __ROR8__(v752, 61);
  v755 = (v750 - 0x50451BB238D3E1B2) ^ 0x80E8E54876F72DAALL ^ __ROR8__(v748, 61);
  v756 = (__ROR8__((v750 - 0x50451BB238D3E1B2) ^ 0x80E8E54876F72DAALL, 8) + v755) ^ 0x6B46B57808873547;
  *(v635 + 7) = ((v733 ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v635 + 7) & 7))) ^ 0xB7;
  v757 = __ROR8__((v703 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v758 = __ROR8__(v753, 8) + v754;
  v759 = ((2 * v757 - 0x1D26CB003ADD4886) & 0x85F29B6BFBC6E39CLL) - v757 + 0x479A17CA1F8B3274;
  v760 = __ROR8__(v759 ^ 0x2193E5B380B0A7D0, 8);
  v759 ^= 0xAAF7364C943A7A3FLL;
  v761 = (v760 + v759) ^ 0x63A7EC95EB311F16;
  v762 = v761 ^ __ROR8__(v759, 61);
  v763 = (__ROR8__(v761, 8) + v762) ^ 0x9F719D461CA797D4;
  v764 = v763 ^ __ROR8__(v762, 61);
  v765 = __ROR8__(v763, 8);
  v766 = __ROR8__(v756, 8) + (v756 ^ __ROR8__(v755, 61));
  v767 = (((2 * (v765 + v764)) | 0xB1C9E8952FDD9264) - (v765 + v764) + 0x271B0BB5681136CELL) ^ 0x259BF23A773EB0D7;
  v768 = v767 ^ __ROR8__(v764, 61);
  v769 = (__ROR8__(v767, 8) + v768) ^ 0xD57DC9DA2655A980;
  v770 = v769 ^ __ROR8__(v768, 61);
  v771 = (__ROR8__(v769, 8) + v770) ^ 0x2F520105B1DB33E4;
  v772 = v771 ^ __ROR8__(v770, 61);
  v773 = (__ROR8__(v771, 8) + v772) ^ 0x6B46B57808873547;
  v774 = v773 ^ __ROR8__(v772, 61);
  v775 = __ROR8__(v773, 8);
  *(v702 + 8) = (((__ROR8__(v722, 8) + (v722 ^ __ROR8__(v721, 61))) ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v702 + 8) & 7))) ^ 0x4B;
  *(v702 + 9) = ((v758 ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v702 + 9) & 7))) ^ 0xA8;
  v776 = STACK[0x9638];
  v777 = STACK[0x9638];
  v778 = ((((2 * (v775 + v774)) & 0xF61BE1FAC112D204) - (v775 + v774) - 0x7B0DF0FD60896903) ^ 0xF9F28F78542AF31) >> (8 * ((v703 + 11) & 7));
  v779 = __ROR8__((STACK[0x9638] + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0xE9365801D6EA443;
  *(v703 + 10) = ((v766 ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v703 + 10) & 7))) ^ 0xA1;
  v780 = __ROR8__(v779 ^ 0x189557F982AC29E1, 8);
  *(v703 + 11) = v778 ^ 0xD;
  v781 = (((v780 + (v779 ^ 0x93F184069626F40ELL)) & 0x6F84C3D62259C5B8 ^ 0x6184009202500028) + ((v780 + (v779 ^ 0x93F184069626F40ELL)) ^ 0x9E38DF65F129C593) - (((v780 + (v779 ^ 0x93F184069626F40ELL)) ^ 0x9E38DF65F129C593) & 0x6F84C3D62259C5B8)) ^ 0x921BF02638411F3DLL ^ __ROR8__(v779 ^ 0x93F184069626F40ELL, 61);
  v782 = (__ROR8__((((v780 + (v779 ^ 0x93F184069626F40ELL)) & 0x6F84C3D62259C5B8 ^ 0x6184009202500028) + ((v780 + (v779 ^ 0x93F184069626F40ELL)) ^ 0x9E38DF65F129C593) - (((v780 + (v779 ^ 0x93F184069626F40ELL)) ^ 0x9E38DF65F129C593) & 0x6F84C3D62259C5B8)) ^ 0x921BF02638411F3DLL, 8) + v781) ^ 0x9F719D461CA797D4;
  v783 = v782 ^ __ROR8__(v781, 61);
  v784 = __ROR8__(v782, 8);
  v785 = (((v784 + v783) | 0xEB109394B753BCEFLL) - ((v784 + v783) | 0x14EF6C6B48AC4310) + 0x14EF6C6B48AC4310) ^ 0x166F95E45783C50ALL;
  v786 = v785 ^ __ROR8__(v783, 61);
  v787 = __ROR8__(v785, 8);
  v788 = __ROR8__((((v787 + v786) ^ 0x558D9227B25C7F3DLL | 0x17C0326461BEB060) - ((v787 + v786) ^ 0x558D9227B25C7F3DLL | 0xE83FCD9B9E414F9FLL) - 0x17C0326461BEB061) ^ 0x97306999F5B766DDLL, 8);
  v789 = (((v787 + v786) ^ 0x558D9227B25C7F3DLL | 0x17C0326461BEB060) - ((v787 + v786) ^ 0x558D9227B25C7F3DLL | 0xE83FCD9B9E414F9FLL) - 0x17C0326461BEB061) ^ 0x97306999F5B766DDLL ^ __ROR8__(v786, 61);
  v790 = (((v788 + v789) | 0x40D25D4A3D4FEB2FLL) - ((v788 + v789) | 0xBF2DA2B5C2B014D0) - 0x40D25D4A3D4FEB30) ^ 0x6F805C4F8C94D8CBLL;
  v791 = v790 ^ __ROR8__(v789, 61);
  v792 = (__ROR8__(v790, 8) + v791) ^ 0x6B46B57808873547;
  v793 = v792 ^ __ROR8__(v791, 61);
  v794 = __ROR8__(v792, 8);
  *(v776 + 12) = (((((2 * (v794 + v793)) & 0x47B0DDB9CC688ALL) - (v794 + v793) + 0x7FDC27912319CBBALL) ^ 0xF4B10064392DF276) >> (8 * ((v776 + 12) & 7))) ^ 0xB7;
  v795 = __ROR8__((v776 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v796 = -2 - (((0xE9365801D6EA442 - v795) | 0x62EFD00B5E912744) + ((v795 + 0x716C9A7FE2915BBDLL) | 0x9D102FF4A16ED8BBLL));
  v797 = v796 ^ 0x7A7A87F2DC3D0EA5;
  v796 ^= 0xF11E540DC8B7D34ALL;
  v798 = __ROR8__(v797, 8);
  v799 = (((v798 + v796) | 0xD17DE2D2B03F9694) - ((v798 + v796) | 0x2E821D2D4FC0696BLL) + 0x2E821D2D4FC0696BLL) ^ 0xB2DA0E475B0E8982;
  v800 = v799 ^ __ROR8__(v796, 61);
  v801 = (__ROR8__(v799, 8) + v800) ^ 0x9F719D461CA797D4;
  v802 = v801 ^ __ROR8__(v800, 61);
  v803 = __ROR8__(v801, 8);
  v804 = (v803 + v802 - ((2 * (v803 + v802)) & 0x1D1927AF8CC35DBELL) + 0xE8C93D7C661AEDFLL) ^ 0xF3F395A726B1D73ALL;
  v805 = v804 ^ __ROR8__(v802, 61);
  v806 = __ROR8__(v804, 8);
  v807 = (((v806 + v805) | 0x7771F36720EEDC8FLL) - ((v806 + v805) | 0x888E0C98DF112370) - 0x7771F36720EEDC90) ^ 0xA20C3ABD06BB750FLL;
  v808 = v807 ^ __ROR8__(v805, 61);
  v809 = __ROR8__(v807, 8);
  v810 = (((2 * (v809 + v808)) | 0x4F28A5EF32E7C54) - (v809 + v808) - 0x279452F79973E2ALL) ^ 0x2D2B442AC84C0DCELL;
  v811 = v810 ^ __ROR8__(v808, 61);
  v812 = (__ROR8__(v810, 8) + v811) ^ 0x6B46B57808873547;
  v813 = v812 ^ __ROR8__(v811, 61);
  v814 = __ROR8__(v812, 8);
  *(v776 + 13) = (((((v814 + v813) | 0xC2C61B460E3F4333) - ((v814 + v813) | 0x3D39E4B9F1C0BCCCLL) + 0x3D39E4B9F1C0BCCCLL) ^ 0x49AB3CB3140B7AFFLL) >> (8 * ((v776 + 13) & 7))) ^ 0x29;
  v815 = __ROR8__((v777 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v816 = (v815 - 0xE9365801D6EA443) ^ 0x93F184069626F40ELL;
  v817 = (__ROR8__((v815 - 0xE9365801D6EA443) ^ 0x189557F982AC29E1, 8) + v816) ^ 0x63A7EC95EB311F16;
  v818 = v817 ^ __ROR8__(v816, 61);
  v819 = __ROR8__(v817, 8);
  v820 = (((2 * (v819 + v818)) | 0xDD41B28F1ADE012ELL) - (v819 + v818) - 0x6EA0D9478D6F0097) ^ 0xF1D1440191C89743;
  v821 = v820 ^ __ROR8__(v818, 61);
  v822 = __ROR8__(v820, 8);
  v823 = (((v822 + v821) & 0xB01D97467E66995BLL ^ 0x800195442062881ALL) + ((v822 + v821) & 0x4FE268B9819966A4 ^ 0x4160003980984485) - 1) ^ 0x3C1E930D402AB57BLL;
  v824 = v823 ^ __ROR8__(v821, 61);
  v825 = __ROR8__(v823, 8);
  v826 = __ROR8__((((2 * (v825 + v824)) | 0xA6F46753ECB0BD94) - (v825 + v824) + 0x2C85CC5609A7A136) ^ 0x607FA73D00DF74ALL, 8);
  v827 = (((2 * (v825 + v824)) | 0xA6F46753ECB0BD94) - (v825 + v824) + 0x2C85CC5609A7A136) ^ 0x607FA73D00DF74ALL ^ __ROR8__(v824, 61);
  v828 = (((v826 + v827) | 0x9076A3CD9DE8F4E7) - ((v826 + v827) | 0x6F895C3262170B18) + 0x6F895C3262170B18) ^ 0xBF24A2C82C33C703;
  v829 = v828 ^ __ROR8__(v827, 61);
  v830 = (__ROR8__(v828, 8) + v829) ^ 0x6B46B57808873547;
  v831 = __ROR8__((v777 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v777 + 14) = (((__ROR8__(v830, 8) + (v830 ^ __ROR8__(v829, 61))) ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v777 + 14) & 7))) ^ 0x66;
  v832 = ((2 * v831 + 0xD934FFC522B77ALL) & 0x108E5C1D78C1C62) - v831 - 0x71F10D60CE5769EFLL;
  v833 = v832 ^ 0x67EEDAE69695D82FLL;
  v832 ^= 0xEC8A0919821F05C0;
  v834 = (__ROR8__(v833, 8) + v832) ^ 0x63A7EC95EB311F16;
  v835 = v834 ^ __ROR8__(v832, 61);
  v836 = __ROR8__(v834, 8);
  v837 = (v836 + v835 - ((2 * (v836 + v835)) & 0xC6270D54AE6329E6) + 0x631386AA573194F3) ^ 0xFC621BEC4B960327;
  v838 = v837 ^ __ROR8__(v835, 61);
  v839 = (__ROR8__(v837, 8) + v838) ^ 0xFD7F0670E0D079E5;
  v840 = v839 ^ __ROR8__(v838, 61);
  v841 = __ROR8__(v839, 8);
  v842 = (((v841 + v840) & 0xD4A4C9F950682A7BLL ^ 0x40A0C04910080A42) + ((v841 + v840) & 0x2B5B3606AF97D584 ^ 0x4B02042E81C581) - 1) ^ 0x95960B9718DC6642;
  v843 = v842 ^ __ROR8__(v840, 61);
  v844 = __ROR8__(v842, 8);
  v845 = (((v844 + v843) ^ 0x7C9DC8FE5CF89364 | 0x602F5FA6B0C2E703) - ((v844 + v843) ^ 0x7C9DC8FE5CF89364 | 0x9FD0A0594F3D18FCLL) - 0x602F5FA6B0C2E704) ^ 0x33E0965D5DE14783;
  v846 = v845 ^ __ROR8__(v843, 61);
  v847 = __ROR8__(v845, 8);
  v848 = (((2 * (v847 + v846)) & 0xFD8B50441E617296) - (v847 + v846) + 0x13A57DDF0CF46B4) ^ 0x6A7CE2A5F84873F3;
  *(v777 + 15) = (((__ROR8__(v848, 8) + (v848 ^ __ROR8__(v846, 61))) ^ 0x8B6D27F51A3439CCLL) >> (8 * ((v777 + 15) & 7))) ^ 0xF9;
  STACK[0x8710] = v7;
  v849 = STACK[0x57D8];
  v850 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9192)))(36);
  STACK[0xB3B0] = v850;
  return (*(v849 + 8 * ((42 * (v850 != 0)) ^ LODWORD(STACK[0x11C0]))))();
}

uint64_t sub_1004D968C(int a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v17 = STACK[0x53B8] + a2;
  v18 = *(STACK[0x57C0] + (STACK[0x57B0] & (v8 + 2050759246 + (v17 & 0xFFFFFFF8) + 454)));
  v19 = (__ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8) + v18) ^ 0xB88801D4E1C76353;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0xA2638B95246EC84CLL - ((v21 + v20) | 0xA2638B95246EC84CLL) + ((v21 + v20) | 0x5D9C746ADB9137B3)) ^ 0x6554C5003C945FC4;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - ((2 * (v24 + v23)) & 0x2EEDB9BC91C69314) + 0x1776DCDE48E3498ALL) ^ 0xF2F66DA3C426ACDBLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xE1A1FD5BD155F97ALL;
  v28 = __ROR8__(v27, 8);
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (v28 + v29) ^ 0xDA604B0C03A2BF99;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) | 0x92D97299A50323D2) - (v32 + v31) + 0x369346B32D7E6E17) ^ 0x33595B8119BFA02ELL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (0x6F2769E8CDBA7E24 - ((v35 + v34) | 0x6F2769E8CDBA7E24) + ((v35 + v34) | 0x90D89617324581DBLL)) ^ 0x42289AF112A05275;
  LODWORD(v17) = (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v34, 61))) ^ v11) >> (8 * (v17 & 7u))) ^ *v17;
  LODWORD(v34) = ((v17 ^ 0x937CD3C5) - 1800147186) ^ ((v17 ^ 0xB589AABD) - 1303996810) ^ ((v17 ^ 0x26F57978) + 557467057);
  LODWORD(v17) = v34 * a7 + 1461102706;
  LODWORD(v28) = (v17 ^ 0x72B670A4) & (2 * (v17 & 0x62A77135)) ^ v17 & 0x62A77135;
  LODWORD(v36) = ((2 * (v17 ^ 0xB3F6108E)) ^ 0xA2A2C376) & (v17 ^ 0xB3F6108E) ^ (2 * (v17 ^ 0xB3F6108E)) & (v12 + 10);
  v37 = v36 ^ 0x51512089;
  LODWORD(v36) = (v36 ^ 0xC0406131) & (4 * v28) ^ v28;
  LODWORD(v28) = ((4 * v37) ^ 0x454586EC) & v37 ^ (4 * v37) & (v12 + 8);
  LODWORD(v36) = (v28 ^ v15) & (16 * v36) ^ v36;
  LODWORD(v28) = ((16 * (v28 ^ v14)) ^ 0x15161BB0) & (v28 ^ v14) ^ (16 * (v28 ^ v14)) & v12;
  v38 = v28 ^ 0xC041600B;
  LODWORD(v34) = 1642775093 - 539147200 * v34;
  LODWORD(v36) = v36 ^ (v12 + 11) ^ (v28 ^ 0x1110010B) & (v36 << 8);
  v39 = (2 * (v34 & 0xD9BA780)) & (v34 ^ 0xA556B5B8) ^ v34 & 0xD9BA780 ^ ((2 * (v34 & 0xD9BA780)) & 0x8050200 | 0x80000);
  LODWORD(v28) = (2 * (v34 ^ 0xA556B5B8)) & (a4 - 46) ^ 0xA8451201 ^ ((2 * (v34 ^ 0xA556B5B8)) ^ 0x519A2444) & (v34 ^ 0xA556B5B8);
  v40 = (4 * v39) & 0x28CD1200 ^ v39 ^ ((4 * v39) ^ 0x20000C) & v28;
  LODWORD(v28) = (4 * v28) & a4 ^ 0x8C91233 ^ ((4 * v28) ^ 0xA33448CC) & v28;
  v41 = (16 * v40) & a4 ^ v40 ^ ((16 * v40) ^ 0x800030) & v28;
  LODWORD(v28) = (16 * v28) & a4 ^ 0x200C1003 ^ ((16 * v28) ^ 0x8CD12330) & v28;
  v42 = (v41 << 8) & (a4 - 48) ^ v41 ^ ((v41 << 8) ^ 0x88003300) & v28;
  LODWORD(v17) = v17 ^ (2 * ((v36 << 16) & 0x51510000 ^ v36 ^ ((v36 << 16) ^ 0x61BB0000) & ((v38 << 8) & 0x51510000 ^ ((v38 << 8) ^ 0x51610000) & v38 ^ 0x100000)));
  v43 = (((v34 ^ (2 * ((v42 << 16) & 0x28CD0000 ^ v42 ^ ((v42 << 16) ^ 0x12330000) & ((v28 << 8) & 0x28CD0000 ^ 0x20CD0000 ^ ((v28 << 8) ^ 0x4D120000) & v28)))) >> 6) ^ 0xFFA7BBD1) & (v17 & 0xFC000000 ^ 0xBFFFFFFF) ^ v7;
  v44 = ((v43 ^ 0xC04B4440) + 1476207867) ^ ((v43 ^ v13) + 91217842) ^ ((v43 ^ 0xF7E89847) + 1616836862);
  LODWORD(v34) = a2 - 522116922 + v44 + 3599;
  LODWORD(v28) = (v34 ^ 0xEC028870) & (2 * (v34 & 0xEC52CD74)) ^ v34 & 0xEC52CD74;
  LODWORD(v36) = ((2 * (v34 ^ 0xA42780B8)) ^ 0x90EA9B98) & (v34 ^ 0xA42780B8) ^ (2 * (v34 ^ 0xA42780B8)) & v16;
  v45 = ((4 * (v36 ^ 0x48154444)) ^ 0x21D53730) & (v36 ^ 0x48154444) ^ (4 * (v36 ^ 0x48154444)) & v16;
  LODWORD(v36) = (v45 ^ 0x55050C) & (16 * ((v36 ^ 0x8400984) & (4 * v28) ^ v28)) ^ (v36 ^ 0x8400984) & (4 * v28) ^ v28;
  LODWORD(v28) = ((16 * (v45 ^ 0x482048CC)) ^ 0x8754DCC0) & (v45 ^ 0x482048CC) ^ (16 * (v45 ^ 0x482048CC)) & (v16 - 12);
  LODWORD(v36) = v36 ^ v16 ^ (v28 ^ 0x544C0C) & (v36 << 8);
  LODWORD(v34) = (v34 ^ (2 * ((v36 << 16) & 0x48750000 ^ v36 ^ ((v36 << 16) ^ 0x4DCC0000) & (((v28 ^ 0x4821010C) << 8) & 0x48750000 ^ 0x8300000 ^ (((v28 ^ 0x4821010C) << 8) ^ 0x754D0000) & (v28 ^ 0x4821010C))))) >> 16;
  v46 = v44 + (((v34 ^ 0x544FB8D9) + 126395205) ^ ((v34 ^ 0xF7AF9A3F) - 1536654941) ^ ((v34 ^ 0xA3E0CED6) - 265824948));
  LODWORD(v34) = ((((a2 - 1945427171 + v46) ^ 0x4411DE16) - 1452195988) ^ (a2 - 1945427171 + v46) ^ (((a2 - 1945427171 + v46) ^ 0x3691DCAA) - 604946984) ^ (((a2 - 1945427171 + v46) ^ 0x9F40E780) + 1914701566) ^ (((a2 - 1945427171 + v46) ^ LODWORD(STACK[0x4A38])) + 306125508)) >> 8;
  LODWORD(v34) = a2 + v46 + (((v34 ^ 0xE9C1A0A5) + 1958174368) ^ ((v34 ^ 0x59871B42) - 990780039) ^ ((v34 ^ 0xB05424F9) + 757258948));
  LODWORD(v17) = (v34 - 1199550626) ^ (((v34 - 1199550626) ^ 0xEEBEB917) + 1888448725) ^ (((v34 - 1199550626) ^ 0xEA2863B6) + 1947839094) ^ (((v34 - 1199550626) ^ 0xD2A71372) + 1284954802) ^ (((v34 - 1199550626) ^ 0xB7FFFFEF) + 701380141) ^ 0x4C15557F ^ v17;
  LODWORD(v36) = (v17 ^ 0xD0D15902) - 1030370392;
  LODWORD(v28) = ((v17 ^ 0xA7B1CACD) - 1242212247) ^ ((v17 ^ 0x189C42CF) + 181981291);
  v47 = v10 < a3;
  LODWORD(v28) = v36 ^ v28;
  LODWORD(v36) = a2 - 989823981 + v28 + 919;
  v48 = ((v36 ^ 0x3DDF6CB1) - 2137501665) ^ v36 ^ ((v36 ^ 0xC8BED9CE) + 1979311458) ^ ((v36 ^ 0xCC2E89D2) + 1902753150) ^ ((v36 ^ 0x7BF7FFFD) - 961494189);
  LODWORD(v34) = (v34 + 425516620) ^ a1;
  v49 = v28 + (((HIWORD(v48) ^ 0x71AEB4F6) + 1960220192) ^ ((HIWORD(v48) ^ 0xF003C177) - 176430177) ^ ((HIWORD(v48) ^ 0x81AD3739) - 2066410031));
  LODWORD(v28) = a2 - 1410651316 + v49 + 2414;
  LODWORD(v28) = (((v28 ^ 0xD598CF86) + 92072140) ^ v28 ^ ((v28 ^ 0x69D08F43) - 1187731441) ^ ((v28 ^ 0x6CACB788) - 1136095034) ^ ((v28 ^ 0xFFFF2FFF) + 790300851)) >> 8;
  v50 = v34 ^ (a2 + v49 + (((v28 ^ 0xB70DB19E) - 72513177) ^ ((v28 ^ 0x8AEBEE42) - 968108357) ^ ((v28 ^ 0x3DC94404) + 1902738685)) + 1838511037);
  LODWORD(v34) = a2 + 1 + a3;
  v51 = v47 ^ (v34 < a3);
  v52 = v34 < v10;
  if (!v51)
  {
    v47 = v52;
  }

  return (*(STACK[0x57D8] + 8 * ((13 * !v47) ^ v9)))(v50);
}

uint64_t sub_1004DA5E0()
{
  if (STACK[0x8738])
  {
    v1 = LODWORD(STACK[0xA7C4]) == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(STACK[0x57D8] + 8 * ((v2 * (((v0 ^ 0x2D4C) - 8360) ^ 0x3754)) ^ v0)))();
}

uint64_t sub_1004DA630@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v11 = *(*(&off_101353600 + v7) + ((v3 ^ (v6 * v2)) ^ 0x99u) - 1) ^ LODWORD(STACK[0x5630]) ^ (((v3 ^ (v6 * v2)) ^ 0x89) + 495595053);
  v12 = LODWORD(STACK[0x5790]) - (((v4 ^ v11 ^ 0xBA3726EF ^ 0xF2BC4DEA) + 2120801026) ^ ((v4 ^ v11 ^ 0xBA3726EF ^ 0xC79E06D2) + 1263177786) ^ ((v4 ^ v11 ^ 0xBA3726EF ^ 0x2899576A) - 1538408062)) - 1151881344;
  v13 = (1170790673 - (((v11 ^ 0xE7049957) - 1563672504) ^ ((v11 ^ 0x7028F367) + 903883384) ^ ((v11 ^ 0x972C6A30) - 756763871))) ^ v11 ^ 0xBA3726EF ^ v12 ^ ((v12 ^ 0xF9B5750D) + 1094464913) ^ ((v12 ^ 0x7EEA9260) - 966536450) ^ ((v12 ^ 0x7F46F6F0) - 942688658) ^ ((v12 ^ 0xBF6FAEFF) + 132574819);
  v14 = v5 + (((v13 ^ 0x77D02FF4) + 955563413) ^ ((v13 ^ 0x3E580CB5) + 1903992534) ^ ((v13 ^ 0xB4C9BACC) - 68343635));
  v15 = (v14 ^ 0x4E7F2A5A) & (2 * (v14 & STACK[0x484])) ^ v14 & STACK[0x484];
  v16 = ((2 * (v14 ^ 0x5EB16C5A)) ^ 0xA59C9E10) & (v14 ^ 0x5EB16C5A) ^ (2 * (v14 ^ 0x5EB16C5A)) & 0xD2CE4F08;
  v17 = v16 ^ 0x52424108;
  v18 = (v16 ^ 0x8E4E00) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ LODWORD(STACK[0x488])) & v17 ^ (4 * v17) & 0xD2CE4F08;
  v20 = ((16 * (v19 ^ 0x90C64308)) ^ 0x2CE4F080) & (v19 ^ 0x90C64308) ^ (16 * (v19 ^ 0x90C64308)) & 0xD2CE4F00;
  v21 = (v19 ^ 0x42080C08) & (16 * v18) ^ v18 ^ 0xD2CE4F08 ^ (v20 ^ 0xC44008) & (((v19 ^ 0x42080C08) & (16 * v18) ^ v18) << 8);
  *(a1 + 4 * (v6 * v2)) = v8 ^ v14 ^ (2 * ((v21 << 16) & 0x52CE0000 ^ v21 ^ ((v21 << 16) ^ 0x4F080000) & (((v20 ^ 0xD20A0F08) << 8) & 0xD2CE0000 ^ 0x10800000 ^ (((v20 ^ 0xD20A0F08) << 8) ^ 0x4E4F0000) & (v20 ^ 0xD20A0F08))));
  return (*(STACK[0x57D8] + 8 * ((2741 * (v6 - 24743 + v10 == v9)) ^ a2)))();
}

uint64_t sub_1004DAA0C()
{
  v1 = (v0 ^ STACK[0x2400] ^ 0xF7B2);
  LODWORD(STACK[0xD3A4]) = v1;
  v2 = (((LODWORD(STACK[0x6AE4]) ^ 0xED1CC852) + 316880814) ^ ((LODWORD(STACK[0x6AE4]) ^ 0xE31B491B) + 484751077) ^ ((LODWORD(STACK[0x6AE4]) ^ 0xDC1B01DD) + 602209827)) - 769884016 >= v1;
  if (v2)
  {
    v3 = -143113071;
  }

  else
  {
    v3 = -143155721;
  }

  LODWORD(STACK[0xDF6C]) = v3;
  return (*(STACK[0x57D8] + 8 * ((49 * v2) ^ LODWORD(STACK[0x1E40]))))();
}

uint64_t sub_1004DAAE0()
{
  v1 = *(STACK[0xA8B0] - 0x1883660EE814440ALL) - 769884012 + (((LODWORD(STACK[0x9124]) ^ 0xFEA30E12) + 22868462) ^ ((LODWORD(STACK[0x9124]) ^ 0x5404ACD5) - 1409592533) ^ ((LODWORD(STACK[0x9124]) ^ (3769 * (v0 ^ 0x2E06) + 2025507325)) + ((v0 - 1408488387) & 0x53F3ADFE ^ 0x8744D591)));
  v2 = *(STACK[0xA8B0] - 0x1883660EE814440ELL);
  LODWORD(STACK[0xE75C]) = v1;
  v2 -= 1811646574;
  v1 -= 1811646574;
  v3 = v1 < 0x114DEC0E;
  v4 = v2 < v1;
  if (v2 < 0x114DEC0E != v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = (STACK[0x8E18] == 0) | v5 & 1;
  if (v6)
  {
    v7 = -143155721;
  }

  else
  {
    v7 = -143113071;
  }

  LODWORD(STACK[0xE760]) = v7;
  return (*(STACK[0x57D8] + 8 * ((9 * v6) | v0)))();
}

uint64_t sub_1004DADDC()
{
  LODWORD(STACK[0x8D5C]) = v1;
  v4 = STACK[0x2360];
  LODWORD(STACK[0x1D4E0]) = ((v0 + 2119400890) ^ 0x13) + STACK[0x2360];
  LODWORD(STACK[0x1D4D0]) = v4;
  LODWORD(STACK[0x1D4D4]) = (v0 + 2119400890) ^ v4;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4C8]) = v0 + 2119400890 - v4 + 714;
  STACK[0x1D4C0] = v2 ^ v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v0 + 1451493860;
  v5 = v0 + 9182;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v3 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1004DAEF4()
{
  v1 = v0;
  v2 = STACK[0x57D8];
  v3 = *(v2 + 8 * ((((*(STACK[0x57D8] + 8 * (v0 + 9192)))(16) == 0) * (((v0 + 1078304605) & 0xBFBA7F7E) - 30369)) ^ (v0 - 11596)));
  LODWORD(STACK[0x4D6C]) = v1;
  LODWORD(STACK[0x4C30]) = -143155723;
  return v3();
}

uint64_t sub_1004DAF8C(uint64_t a1, int a2)
{
  v5 = STACK[0x5570];
  v6 = (4 * LODWORD(STACK[0x5570])) ^ 0xDCF4;
  LODWORD(STACK[0x5630]) = v4 ^ 0xC19A9A3;
  LODWORD(STACK[0x5670]) = a2 ^ 0xBA752948;
  LODWORD(STACK[0x5700]) = v3 ^ 0x45AF938B;
  LODWORD(STACK[0x5660]) = (v6 + 1670836712) ^ v2;
  return (*(STACK[0x57D8] + 8 * v5))();
}

uint64_t sub_1004DB078(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 31;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004DB2B0()
{
  v1 = STACK[0x51B8] - 8480;
  *STACK[0xC5D8] = v0;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004DB2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = v7 < v8;
  *(a1 + v9) = *((v9 & 0xF) + v13 + 4) ^ *(v12 + (v9 & 0xF)) ^ ((v9 & 0xF) * a6) ^ *(v11 + (v9 & 0xF));
  v15 = v9 + a5 + a7;
  v16 = a2 + v9 + 1 < v7;
  if (v14 == v15 > a4)
  {
    v14 = v16;
  }

  return (*(STACK[0x57D8] + 8 * ((v14 * a3) ^ v10)))();
}

uint64_t sub_1004DB3C8()
{
  LODWORD(STACK[0xB688]) = -143155721;
  LOBYTE(STACK[0x6F0F]) = 0;
  return (*(STACK[0x57D8] + 8 * ((v1 + v0 + 3285) & 0x55107ABE)))();
}

uint64_t sub_1004DB608()
{
  v0 = STACK[0x2ABC] & 0x3CDB2CFE;
  v1 = STACK[0x57D8];
  STACK[0x82E8] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2AC4]));
  return (*(v1 + 8 * (LODWORD(STACK[0x2AC0]) ^ v0)))();
}

uint64_t sub_1004DB688()
{
  v0 = STACK[0x51B8] - 16999;
  v1 = STACK[0x51B8] - 19608;
  STACK[0x6500] = STACK[0xC308] + SLODWORD(STACK[0xB7B0]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x1306) + v1)))();
}

uint64_t sub_1004DB728()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xCED0] = 0;
  return (*(v1 + 8 * (v0 - 17334)))(v2);
}

uint64_t sub_1004DB760@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, _DWORD *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = v11 - 1;
  v14 = *(*a7 + ((a3 + ((a9 + v13) & (v10 - 22236)) - 2) & *a8));
  v15 = (__ROR8__((a9 + v13) & 0xFFFFFFFFFFFFFFF8, 8) + v14) ^ a4;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x38C8B16AE7056877;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xE580B17D8CC5E551;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a6;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xDA604B0C03A2BF99;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ a1;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a5;
  *(a9 + v13) = (((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v26, 61))) ^ a2) >> (8 * ((a9 + v13) & 7))) ^ *(v12 + v13 + v9);
  return (*(STACK[0x57D8] + 8 * ((3606 * (v13 == 0)) ^ v10)))();
}

uint64_t sub_1004DB930()
{
  v0 = (STACK[0x51B8] - 18454) | 0x4109;
  v1 = STACK[0x51B8] - 19771;
  v2 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x18C3 ^ (13342 * ((v0 ^ 0x1A26D5A5u) + v1 > 0xEAF1A4FA)))))();
}

uint64_t sub_1004DBA00()
{
  v3 = 551690071 * ((0x93970C63CB8904 - ((v2 - 240) | 0x93970C63CB8904) + STACK[0x2A20]) ^ 0x8EF13A3DD2D925ACLL);
  STACK[0x1D4D8] = v1 - v3;
  LODWORD(STACK[0x1D4C8]) = v0 - v3 + 1894354520;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  STACK[0x1D4E0] = v3 + 4151854225u;
  LODWORD(STACK[0x1D4C4]) = (v0 + 1894358622) ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4CC]) = v0 - v3 + 1894354526;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2411)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1004DBAE0(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 24;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0x79DBEF76 ^ (12660 * (v1 >= ((2 * v1) ^ 0xF3B79780) + 2089733368)))))();
}

uint64_t sub_1004DBBF4@<X0>(int a1@<W8>)
{
  v7 = v3 + 7855;
  LODWORD(STACK[0x58FC]) = v4;
  LODWORD(STACK[0xCF1C]) = v5;
  LODWORD(STACK[0x64F8]) = v2;
  LODWORD(STACK[0x8394]) = v6 + 80;
  v8 = STACK[0xE238];
  v9 = ((*(v8 + 88) ^ 0xCDF10AB5) + 839841099) ^ ((*(v8 + 88) ^ 0xA5C0CBCD) + ((v7 + 5797) ^ 0x5A3F6C65)) ^ ((*(v8 + 88) ^ 0x9A7A453D) + 1703262915);
  LODWORD(STACK[0x9304]) = v1;
  v10 = (((v1 ^ 0x2914C8AC) - 689227948) ^ ((v1 ^ 0x388B65CC) - 948659660) ^ ((v1 ^ 0xE3D42925) + 472635099)) - 212402086 + v9 + 2358;
  *(v8 + 88) = v10 ^ 0xFC8B8543 ^ ((v10 ^ 0xC2578F92) + 862482796) ^ ((v10 ^ 0x1782AF06) - 423800320) ^ ((v10 ^ 0x34FADE7F) - 976936825) ^ ((v10 ^ 0xEFEFFFED) + 516948245);
  LODWORD(STACK[0x9A3C]) = a1;
  return (*(STACK[0x57D8] + 8 * v7))();
}

uint64_t sub_1004DBE60()
{
  v0 = STACK[0x51B8] - 17899;
  v1 = STACK[0x51B8] - 19637;
  STACK[0xA538] = STACK[0xBB60] + SLODWORD(STACK[0x7E0C]);
  v2 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x17D5) + v1)))();
}

uint64_t sub_1004DBF90()
{
  STACK[0xA7A8] = 4;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2440)))(&STACK[0x1D1CD], &STACK[0xB388], &STACK[0xA7A8], 0, 0);
  v4 = (v1 - 240) ^ 0x719D52CE4EED5357;
  v5 = v0 - 2131000862 - 551690071 * v4;
  LODWORD(STACK[0x1D4CC]) = v5;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ (551690071 * v4);
  STACK[0x1D4D8] = -551690071 * v4;
  LODWORD(STACK[0x1D4C4]) = (551690071 * v4) ^ (v0 - 2131000862) ^ 0xEA0;
  LODWORD(STACK[0x1D4D0]) = 551690071 * v4;
  STACK[0x1D4E0] = 551690071 * v4 + v3;
  LODWORD(STACK[0x1D4C8]) = v5 + 372;
  v6 = (*(v2 + 8 * (v0 + 9201)))(v1 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1004DC098@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a1 = *v6;
  a1[1] = 0;
  v8 = *v6;
  if (!*v6)
  {
    v8 = v6;
  }

  v8[1] = a1;
  *v6 = a1;
  a1[3] = v6;
  STACK[0x6808] = a1;
  v9 = STACK[0x61B8];
  *(v9 + 272) = STACK[0xB9B8];
  *(v9 + 280) = &STACK[0x1D200];
  *(v9 + 288) = 2;
  *(v9 + 296) = 0;
  *(v9 + 304) = 0;
  *(v9 + 312) = a2;
  *(v9 + 320) = v2;
  *(v9 + 328) = v3;
  *(v9 + 336) = v5;
  STACK[0x1D4C8] = v9 + 272;
  LODWORD(STACK[0x1D4C0]) = v4 + 1917435887 * (((~(v7 - 240) & 0x4C148A5C) - (~(v7 - 240) | 0x4C148A5D)) ^ 0xAAAFD15B) + 975175560;
  v10 = STACK[0x57D8];
  v11 = (*(STACK[0x57D8] + 8 * (v4 ^ 0x430B)))(v7 - 240);
  v12 = STACK[0x1D4D0];
  LODWORD(STACK[0xDB60]) = STACK[0x1D4D0];
  return (*(v10 + 8 * ((18395 * (v12 == ((v4 - 7336) | 0x1C88) - 143129353)) ^ v4)))(v11);
}

uint64_t sub_1004DC330(uint64_t a1)
{
  v3 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x4CB5)))(a1, *STACK[0x3EC8], 0, v2);
  v6 = (*(v3 + 8 * (v1 + 19384)))(a1);
  return (*(v3 + 8 * (((v5 == 0) * ((6 * (((v1 - 6265) | 0x4046) ^ 0x56EF)) ^ 0x5995)) ^ v1)))(v6);
}

uint64_t sub_1004DC4F4()
{
  v1 = (v0 ^ 0x714E) - 17427;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x5555)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004DC67C()
{
  v0 = STACK[0x51B8] - 18070;
  v1 = STACK[0x57D8];
  v2 = STACK[0x3A90];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x3A90]));
  return (*(v1 + 8 * (v0 ^ v2 ^ 0x2BB)))();
}

uint64_t sub_1004DC6CC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = STACK[0x84C8];
  STACK[0x6CB8] = STACK[0x84C8];
  STACK[0x8B58] = &STACK[0x1D1F0];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xD38CBDD3ACAFF841;
  LODWORD(STACK[0xCD80]) = -1647350229;
  return (*(STACK[0x57D8] + 8 * a2))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1004DC7A4()
{
  v0 = STACK[0x6B80];
  STACK[0xC780] = STACK[0x6B80];
  return (*(STACK[0x57D8] + 8 * (((v0 != 0) * (STACK[0x27D8] ^ 0x197)) ^ LODWORD(STACK[0x238C]))))();
}

uint64_t sub_1004DC834()
{
  v2 = *(STACK[0x57D8] + 8 * (v0 - 14600));
  STACK[0x57C0] = v1 + 0x143CE9ACEB50857ELL;
  return v2();
}

uint64_t sub_1004DC8F8(unint64_t a1)
{
  v2 = v1 | a1;
  v3 = STACK[0x8190];
  v4 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v2);
  return (*(v4 + 8 * (v2 + 4390)))(v3);
}

uint64_t sub_1004DCA78(uint64_t a1)
{
  v2 = STACK[0x6520];
  STACK[0x60A8] = STACK[0x6520];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xAC7FA9961989524CLL;
  LODWORD(STACK[0xCD80]) = -158809715;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1004DCBD8(uint64_t a1, int a2, unint64_t a3, int a4)
{
  v9 = v7 - 1;
  *(v5 + v9) = *(v8 + v9 + v4);
  return (*(STACK[0x57D8] + 8 * (((v9 == ((v6 + a2) ^ a3)) * a4) ^ v6)))();
}

uint64_t sub_1004DCC10@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x7954]) = v1;
  STACK[0x8380] = STACK[0x77A8];
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1004DCF58()
{
  v1 = STACK[0x66B0];
  v2 = STACK[0x6A08];
  STACK[0xB420] = STACK[0xA3D8];
  LODWORD(STACK[0x8C54]) = v1;
  STACK[0x8EA0] = v2;
  LODWORD(STACK[0xBC38]) = -746967320;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004DCFDC()
{
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xDF49AC04));
  v3 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v2 ^ 0xDF49AC05) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v2 ^ 0xDF49AC05;
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v3 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  LODWORD(v9) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  STACK[0xEEC0] = 0;
  STACK[0xEEC8] = v0;
  v10 = 16777619 * ((-548819963 * v9 + 7) ^ (-548819963 * v9)) % 7;
  v11 = *(&STACK[0xEEC0] | v10);
  *(&STACK[0xEEC0] | v10) = 0;
  LOBYTE(STACK[0xEEC7]) = v11;
  v12 = 16777619 * ((-548819963 * v9 + 6) ^ (-548819963 * v9)) % 6;
  v13 = *(&STACK[0xEEC0] | v12);
  *(&STACK[0xEEC0] | v12) = STACK[0xEEC6];
  LOBYTE(STACK[0xEEC6]) = v13;
  v14 = 16777619 * ((-548819963 * v9 + 5) ^ (-548819963 * v9)) % 5;
  v15 = *(&STACK[0xEEC0] | v14);
  *(&STACK[0xEEC0] | v14) = STACK[0xEEC5];
  LOBYTE(STACK[0xEEC5]) = v15;
  v16 = STACK[0xEEC0];
  LOBYTE(STACK[0xEEC0]) = STACK[0xEEC4];
  LOBYTE(STACK[0xEEC4]) = v16;
  v17 = 16777619 * ((-548819963 * v9 + 3) ^ (-548819963 * v9)) % 3;
  v18 = *(&STACK[0xEEC0] | v17);
  *(&STACK[0xEEC0] | v17) = STACK[0xEEC3];
  LOBYTE(STACK[0xEEC3]) = v18;
  v19 = STACK[0xEEC1];
  LOBYTE(STACK[0xEEC2]) = STACK[0xEEC0];
  LOWORD(STACK[0xEEC0]) = v19;
  v20 = vdup_n_s32(-548819963 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -548819963 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEEC0] = vmla_s32(v22, STACK[0xEEC0], vdup_n_s32(0x1000193u));
  STACK[0xEEC8] ^= STACK[0xEEC0];
  STACK[0xEEC8] = vmul_s32(vsub_s32(STACK[0xEEC8], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEECA];
  LOWORD(STACK[0xEEC9]) = STACK[0xEEC8];
  LOBYTE(STACK[0xEEC8]) = v23;
  v24 = (&STACK[0xEEC8] | v17);
  v25 = *v24;
  *v24 = STACK[0xEECB];
  LOBYTE(STACK[0xEECB]) = v25;
  LOBYTE(v24) = STACK[0xEEC8];
  LOBYTE(STACK[0xEEC8]) = STACK[0xEECC];
  LOBYTE(STACK[0xEECC]) = v24;
  v26 = (&STACK[0xEEC8] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEECD];
  LOBYTE(STACK[0xEECD]) = v24;
  v27 = (&STACK[0xEEC8] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEECE];
  LOBYTE(STACK[0xEECE]) = v26;
  v28 = (&STACK[0xEEC8] | v10);
  v29 = *v28;
  *v28 = STACK[0xEECF];
  LOBYTE(STACK[0xEECF]) = v29;
  v30 = STACK[0xEEC8];
  v31 = (-548819963 * STACK[0xEEC8]) ^ v9;
  for (i = 1; i != 4; ++i)
  {
    v33 = 16777619 * ((v31 + i) ^ v31) % i;
    v34 = *(v30 + 8 * v33) ^ *(v30 + 8 * i);
    *(v30 + 8 * i) = v34;
    v35 = *(v30 + 8 * v33) ^ v34;
    *(v30 + 8 * v33) = v35;
    *(v30 + 8 * i) ^= v35;
  }

  v36 = 0;
  v37 = xmmword_1012370F0;
  v38 = xmmword_101237100;
  v39 = xmmword_101237110;
  v40 = xmmword_101237120;
  v41 = vdupq_n_s32(v31);
  v42.i64[0] = 0x9B009B009B009BLL;
  v42.i64[1] = 0x9B009B009B009BLL;
  v43.i64[0] = 0x1000000010;
  v43.i64[1] = 0x1000000010;
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v48.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v41), vsubq_s32(v39, v41)), v41), vmull_high_u16(v46, v42));
    v48.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v41), vsubq_s32(v38, v41)), v41), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v48.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v41), vsubq_s32(v40, v41)), v41), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v48.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v41), vsubq_s32(v37, v41)), v41), vmull_high_u16(v45, v42));
    *(v30 + v36) = vqtbl4q_s8(v48, xmmword_101237130);
    v36 += 16;
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
  }

  while (v36 != 32);
  *STACK[0x4630] = STACK[0xEEC8];
  return (*(STACK[0x57D8] + 8 * v1))(v37, v38, v39, v40);
}

uint64_t sub_1004DD4A4()
{
  v0 = STACK[0x51B8] + 4474;
  v1 = STACK[0x51B8] - 22053;
  LODWORD(STACK[0x6FFC]) = 16 * LODWORD(STACK[0x6EFC]);
  v2 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 ^ 0x7AFB) + v1)))();
}

uint64_t sub_1004DD540()
{
  STACK[0xB7C8] = 0;
  STACK[0xADA8] = 0;
  return (*(STACK[0x57D8] + 8 * (v0 - 16619)))();
}

uint64_t sub_1004DD600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = STACK[0x358] ^ v5 ^ 0xFFFFFF91;
  v8 = STACK[0x370] ^ v5 ^ 0x1E;
  v9 = (v5 - ((v5 << (v6 - 6)) & 0x4E) - 89) ^ STACK[0x390];
  v10 = STACK[0x360] ^ v5 ^ 0x6E;
  v11 = STACK[0x378] ^ v5 ^ 0xFFFFFFDA;
  STACK[0x4B8] = STACK[0x380] ^ v5 ^ 0xFFFFFFA0;
  v12 = STACK[0x368] ^ v5 ^ 0x2B;
  STACK[0x4B0] = STACK[0x350] ^ v5 ^ 0x35;
  return (*(v4 + 8 * (v6 + 62)))((v6 - 4349), v8, v11, a4, v10, v7, v9, v12);
}

uint64_t sub_1004DD72C()
{
  v0 = STACK[0x51B8] - 1805;
  v1 = STACK[0x51B8] - 19753;
  v2 = STACK[0xE208];
  v2[6] = 85541415;
  v2[7] = 0;
  v2[83] = 0;
  v3 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * ((v0 ^ 0x59E2) + v1)))();
}

uint64_t sub_1004DD94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v10 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v9);
  return (*(v10 + 8 * (v9 + 3372)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004DDBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x8F98];
  v6 = STACK[0xB69C];
  LODWORD(STACK[0x846C]) = -143113071;
  STACK[0xB8B0] = 0;
  LODWORD(STACK[0x71D4]) = -769884012;
  LODWORD(STACK[0xC468]) = -143113071;
  STACK[0xADC8] = v5 + 4;
  v7 = ((v6 + 1778240351) ^ 0xD6E8325C) & (2 * ((v6 + 1778240351) & 0x9602349D)) ^ (v6 + 1778240351) & 0x9602349D;
  v8 = ((2 * ((v6 + 1778240351) ^ 0xD6E83356)) ^ 0x81D40F96) & ((v6 + 1778240351) ^ 0xD6E83356) ^ (2 * ((v6 + 1778240351) ^ 0xD6E83356)) & 0x40EA07CA;
  v9 = (v8 ^ 0x220681) & (4 * v7) ^ v7;
  v10 = ((4 * (v8 ^ 0x402A0049)) ^ 0x3A81F2C) & (v8 ^ 0x402A0049) ^ (4 * (v8 ^ 0x402A0049)) & 0x40EA07C8;
  v11 = (v10 ^ 0xA80703) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x404200C3)) ^ 0xEA07CB0) & (v10 ^ 0x404200C3) ^ (16 * (v10 ^ 0x404200C3)) & 0x40EA07C0;
  v13 = v11 ^ 0x40EA07CB ^ (v12 ^ 0xA0044B) & (v11 << 8);
  LODWORD(STACK[0xC834]) = (v6 + 1778240351) ^ (2 * ((v13 << 16) & 0x40EA0000 ^ v13 ^ ((v13 << 16) ^ 0x7CB0000) & (((v12 ^ 0x404A034B) << 8) & 0x40EA0000 ^ 0xE80000 ^ (((v12 ^ 0x404A034B) << 8) ^ 0xEA070000) & (v12 ^ 0x404A034B)))) ^ 0xC45EBB9F;
  return (*(STACK[0x57D8] + 8 * (v4 - 18049)))(a1, 22611, a3, a4, 19);
}

uint64_t sub_1004DDF40()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] + 5209;
  STACK[0xDC48] = STACK[0xCC60];
  STACK[0x6DB8] = 0;
  return (*(STACK[0x57D8] + 8 * (((STACK[0x6298] != 0) * (v0 - 22592)) ^ v1)))();
}

uint64_t sub_1004DDFF0()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x19C2)))(160, 50, 3638285491);
  *(v1 + 24) = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((v0 - 1301056089) & 0x4D8C7D76 ^ 0x583B)) ^ v0)))();
}

uint64_t sub_1004DE0AC()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] - 22061;
  LODWORD(STACK[0x5E6C]) = 16 * LODWORD(STACK[0x614C]);
  v2 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((1799 * ((v0 - 38412281) >= 0x37251AC)) ^ ((v0 ^ 0x4864) + v1))))();
}

uint64_t sub_1004DE208@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 600) = (v1 - 1723133771) ^ (1917435887 * (((v3 | 0xE16710F9) - (v3 & 0xE16710F9)) ^ 0x7DC4BFF));
  *(v2 + 592) = a1;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2466)))(v4 - 240);
  return (*(v5 + 8 * (v1 - 2381)))(v6);
}

uint64_t sub_1004DE398()
{
  v0 = STACK[0x2AB8] & 0x88DCDBBF;
  v1 = STACK[0x57D8];
  v2 = STACK[0x2AB4];
  STACK[0x73A0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2AB4]));
  return (*(v1 + 8 * ((v0 - 11953) ^ v2)))();
}

uint64_t sub_1004DE4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = (STACK[0x51B8] - 2143303109) | 0xC8C0000;
  v6 = STACK[0x51B8] - 20066;
  STACK[0x7F78] = STACK[0x9DD0] + 16;
  v7 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v6);
  return (*(v7 + 8 * (v6 ^ (a5 + 3076) ^ v5)))();
}

uint64_t sub_1004DE638()
{
  v1 = v0 - 15342;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x5895)))();
  STACK[0x7A38] = 0;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1004DE7A0()
{
  STACK[0xBBF0] = STACK[0x73B0];
  STACK[0xBBA0] = &STACK[0xC430];
  STACK[0xA098] = &STACK[0x99BC];
  STACK[0x6F18] = &STACK[0x94B8];
  STACK[0x7748] = &STACK[0x96CC];
  STACK[0xA050] = &STACK[0xB990];
  STACK[0x79D0] = &STACK[0xA3AC];
  LODWORD(STACK[0x9F54]) = 1644325720;
  return (*(STACK[0x57D8] + 8 * v0))(103679699);
}

uint64_t sub_1004DE848()
{
  STACK[0xCF30] = v2 - 32;
  STACK[0x7ED8] = v1 - 32;
  return v0();
}

uint64_t sub_1004DE8C0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W8>)
{
  v19 = (a4 ^ 0x52) & (2 * (a4 & ((v10 + 114) ^ 0xDC))) ^ a4 & ((v10 + 114) ^ 0xDC);
  v20 = ((2 * (a4 ^ 0xD2)) ^ 0x60) & (a4 ^ 0xD2) ^ (2 * (a4 ^ 0xD2)) & 0xB0;
  v21 = (a4 ^ (2 * ((((4 * (v20 ^ 0x90)) ^ 0xC0) & (v20 ^ 0x90) ^ (4 * (v20 ^ 0x90)) & 0xB0) & (16 * (v20 & (4 * v19) ^ v19)) ^ v20 & (4 * v19) ^ v19)));
  v22 = v8 ^ v13 ^ v9 ^ v14 ^ v6 ^ v11 ^ a6 ^ v7 ^ v21 ^ *(*(v15 + 8 * (v10 ^ 0x322B)) + 4 * (v11 ^ a6 ^ v7 ^ v21 ^ 0xADC931D3) - 12);
  v23 = a3 + (((v22 ^ 0x5FC164F0) + 735426790) ^ ((v22 ^ 0xB0DF739A) - 993284208) ^ ((v22 ^ 0xA2BD94D9) - 693548851)) - ((((2 * ((v22 ^ 0xFC06960) & v12 ^ a2)) ^ 0x7FD1EB36) - 1874294779) ^ (((2 * ((v22 ^ 0xFC06960) & v12 ^ a2)) ^ 0x4ABD320D) - 1524346560) ^ (((2 * ((v22 ^ 0xFC06960) & v12 ^ a2)) ^ (v16 + 2500)) - 621400180));
  *(a1 + 4 * (v21 ^ 0x62u)) = v23 ^ (v17 + 86016) ^ ((v23 ^ 0x3968F333) - 1609776044) ^ ((v23 ^ 0x7CDB4C10) + v18) ^ ((v23 ^ 0x4C97AA47) - 705454808) ^ ((v23 ^ 0x6FBFDDFB) - 153359716);
  return (*(STACK[0x57D8] + 8 * ((25 * (a5 != 0)) ^ v10)))();
}

uint64_t sub_1004DEB88()
{
  v0 = STACK[0x51B8] ^ 0x7E02D6F3;
  v1 = STACK[0x51B8] - 22196;
  v2 = STACK[0x6388];
  *v2 = -769884012;
  *(v2 + 8) = 0;
  *(v2 + 16) = -769884012;
  *(v2 + 80) = 2101965948;
  *(v2 + 72) = 0;
  *(v2 + 88) = 0x1FF90131E266DB89;
  v3 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * ((v0 - 2114092517) ^ v1)))();
}

uint64_t sub_1004DEC1C()
{
  v0 = STACK[0x2600];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x2600]) + 6480)))((LODWORD(STACK[0x7C9C]) - 2101965948));
  STACK[0x6A30] = v2;
  return (*(v1 + 8 * ((464 * ((((v0 - 1731236238) ^ (v0 - 25214) ^ (v2 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_1004DECA4()
{
  v1 = STACK[0x51B8];
  STACK[0xC660] = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 6665)))();
}

uint64_t sub_1004DEDD4()
{
  v0 = STACK[0x51B8] + 3523;
  *(STACK[0xAF68] - 0x1883660EE814440ALL) = STACK[0xDE58];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xDE5C]) == -143113071) * LODWORD(STACK[0xCEC])) ^ v0)))();
}

uint64_t sub_1004DEE3C()
{
  v0 = 5 * (STACK[0x51B8] ^ 0x5C35);
  v1 = STACK[0x51B8] - 19611;
  STACK[0xA440] = STACK[0x6930] + SLODWORD(STACK[0x5E6C]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 + 813) ^ v1)))();
}

uint64_t sub_1004DEF14()
{
  v2 = STACK[0x38A0] ^ 0x38C8B16AE7056877;
  v3 = __ROR8__(v2, 8) + (v2 ^ STACK[0x38A8]);
  STACK[0x49A8] = __ROR8__(v2 ^ STACK[0x38A8], 61);
  STACK[0x33E8] = v3;
  STACK[0x33D0] = 2 * v3;
  v4 = *(STACK[0x4A48] + (STACK[0x4858] & STACK[0x4EB0]));
  STACK[0x33E0] = __ROR8__(v4, 61);
  STACK[0x33D8] = v4 + STACK[0x3B40];
  v5 = *(STACK[0x53E0] + (STACK[0x53A0] & v1));
  STACK[0x4EB0] = v5 + STACK[0x4FE0];
  v6 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v7 = *v6;
  v8 = ((v0 - 25322) ^ 0xFFFFFFFFFFFFFFE0) & v6;
  STACK[0x4A68] = 8 * (v6 & 7);
  LODWORD(STACK[0x4AC8]) = v7 ^ 0xFFFFFFB0;
  STACK[0x5500] = *STACK[0x51E8];
  v9 = *(STACK[0x57D8] + 8 * (v0 ^ (23 * (LODWORD(STACK[0x53D0]) == 23))));
  STACK[0x54F0] = *STACK[0x51F0];
  STACK[0x5620] = (v8 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 23;
  STACK[0x49B8] = __ROR8__(v5, 61);
  STACK[0x52F8] = v8;
  STACK[0x4A60] = __ROR8__(v8, 8);
  return v9();
}

uint64_t sub_1004DF108(uint64_t a1)
{
  v4 = v2 - 23782;
  v5 = STACK[0x950];
  LODWORD(STACK[0x1D4E0]) = (v2 - 1117916139) ^ STACK[0x950];
  STACK[0x1D4C0] = ((a1 & 0x1F ^ 0xD97F4F6BBFFFFE5FLL) + (((v2 - 735623762) & 0x2BD86F7F ^ 0x2938) & (2 * a1)) + 0x77DFFAD5EF7E8FE3) ^ v5;
  STACK[0x1D4C8] = STACK[0x948];
  v6 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v4 ^ 0x6A3D)))(v3 - 240);
  v7 = (*(v6 + 8 * (v4 ^ 0x6AAB)))(STACK[0x57C0], STACK[0x1D4D0], STACK[0x1D4D8], v1);
  return (*(v6 + 8 * v4))(v7);
}

uint64_t sub_1004DF248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  STACK[0xCF30] += 16;
  STACK[0xD668] = v9;
  STACK[0xD670] = a6;
  STACK[0xD660] = v6 + 0x4892CD2ABB479E9;
  STACK[0xD648] = v9;
  v10 = *(STACK[0x57D8] + 8 * ((905 * (v8 == v9)) ^ v7));
  STACK[0x57B0] = v8;
  return v10();
}

uint64_t sub_1004DF39C()
{
  v0 = STACK[0x2608];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x56B8)))(((v0 - 10023) ^ 0x82B688DB) + LODWORD(STACK[0x7364]));
  STACK[0x95D8] = v2;
  return (*(v1 + 8 * ((((((3769 * (v0 ^ 0x2A80)) ^ (v2 == 0)) & 1) == 0) | (8 * ((((3769 * (v0 ^ 0x2A80)) ^ (v2 == 0)) & 1) == 0))) ^ v0)))();
}

uint64_t sub_1004DF42C()
{
  v3 = v0 + 8298;
  *(v1 + 592) = 0;
  *(v1 + 600) = (v0 - 1723133771) ^ (1917435887 * ((2 * ((v2 - 240) & 0x34A00E08) - (v2 - 240) + 1264579063) ^ 0xADE4AAF1));
  v4 = v0 + 9178;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * v4))(v2 - 240);
  if (*STACK[0x4678])
  {
    v7 = 1;
  }

  else
  {
    v7 = *STACK[0x4630] == 0;
  }

  v8 = !v7;
  return (*(v5 + 8 * (v3 | (8 * v8))))(v6);
}

uint64_t sub_1004DF4E0()
{
  v2 = STACK[0x51B8] - 7831;
  LODWORD(STACK[0xDB64]) = v1;
  LOBYTE(STACK[0xDB6B]) = v0;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (107 * v0))))();
}

uint64_t sub_1004E46E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned int a34)
{
  STACK[0x438] = v34;
  STACK[0x4D8] = a7;
  STACK[0x428] = a6;
  STACK[0x440] = a4;
  STACK[0x4E0] = v35;
  STACK[0x448] = v36;
  return (*(v37 + 8 * ((((LODWORD(STACK[0x4AC]) ^ ((LOBYTE(STACK[0x410]) ^ 0x87) + 1)) & 1) * (((LODWORD(STACK[0x410]) - 3486) | 0x800) - 10453)) ^ LODWORD(STACK[0x410]))))(a34);
}

uint64_t sub_1004E4804()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x76F8] = 0;
  return (*(v1 + 8 * (v0 - 9165)))(v2);
}

uint64_t sub_1004E48E8(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x5258]) = 0;
  STACK[0x5750] = *(STACK[0x57D8] + 8 * (((v9 < ((v7 - 13120) | 0x1382) - 5002) * (((v7 - 13126) | 0x21C0) ^ 0x74E6)) ^ v7));
  LODWORD(STACK[0x5630]) = 2;
  LODWORD(STACK[0x5600]) = STACK[0x5760];
  LODWORD(STACK[0x55D0]) = STACK[0x54F0];
  LODWORD(STACK[0x5620]) = v8;
  LODWORD(STACK[0x55E0]) = v16;
  LODWORD(STACK[0x55B0]) = STACK[0x54E0];
  LODWORD(STACK[0x5610]) = v11;
  LODWORD(STACK[0x55F0]) = a7;
  LODWORD(STACK[0x55C0]) = STACK[0x53C8];
  LODWORD(STACK[0x55A0]) = STACK[0x53F0];
  LODWORD(STACK[0x5590]) = v18;
  LODWORD(STACK[0x5580]) = STACK[0x54C0];
  LODWORD(STACK[0x5570]) = STACK[0x5408];
  LODWORD(STACK[0x5560]) = v12;
  LODWORD(STACK[0x5550]) = v14;
  LODWORD(STACK[0x5540]) = STACK[0x5400];
  LODWORD(STACK[0x5388]) = STACK[0x53D8];
  LODWORD(STACK[0x56D0]) = a2;
  LODWORD(STACK[0x5370]) = a2;
  LODWORD(STACK[0x5368]) = a1;
  LODWORD(STACK[0x5360]) = v15;
  LODWORD(STACK[0x5358]) = STACK[0x53F8];
  LODWORD(STACK[0x5350]) = v13;
  LODWORD(STACK[0x5348]) = STACK[0x5740];
  LODWORD(STACK[0x5340]) = STACK[0x53E8];
  LODWORD(STACK[0x5338]) = STACK[0x54B0];
  LODWORD(STACK[0x5318]) = STACK[0x5520];
  LODWORD(STACK[0x5328]) = a3;
  LODWORD(STACK[0x5330]) = STACK[0x5510];
  LODWORD(STACK[0x5320]) = STACK[0x5420];
  LODWORD(STACK[0x5310]) = STACK[0x53B8];
  LODWORD(STACK[0x5308]) = STACK[0x5410];
  LODWORD(STACK[0x5300]) = STACK[0x5460];
  LODWORD(STACK[0x52F8]) = STACK[0x5500];
  LODWORD(STACK[0x52F0]) = STACK[0x54D0];
  LODWORD(STACK[0x52E8]) = STACK[0x56C0];
  LODWORD(STACK[0x52D8]) = STACK[0x53E0];
  LODWORD(STACK[0x52E0]) = v19;
  LODWORD(STACK[0x5450]) = v10;
  LODWORD(STACK[0x52D0]) = v10;
  LODWORD(STACK[0x52C8]) = v17;
  LODWORD(STACK[0x52C0]) = STACK[0x5398];
  LODWORD(STACK[0x53A8]) = v20;
  LODWORD(STACK[0x52B8]) = v20;
  LODWORD(STACK[0x52B0]) = STACK[0x5380];
  LODWORD(STACK[0x52A8]) = STACK[0x5730];
  LODWORD(STACK[0x53B0]) = a5;
  LODWORD(STACK[0x52A0]) = a5;
  LODWORD(STACK[0x5298]) = STACK[0x5390];
  LODWORD(STACK[0x5290]) = STACK[0x5720];
  return (STACK[0x5750])();
}

uint64_t sub_1004E4DE8@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x56F0]) = LODWORD(STACK[0x5650]) ^ 0x2BA9D341;
  v4 = a1 ^ v3 ^ LODWORD(STACK[0x5460]) ^ (v2 | LODWORD(STACK[0x55F0]));
  LODWORD(STACK[0x51C8]) = v4;
  LODWORD(STACK[0x5460]) = v4 ^ 0x540EB8AE;
  return (*(STACK[0x57D8] + 8 * a2))();
}

uint64_t sub_1004E4F54()
{
  v0 = STACK[0x51B8] - 21229;
  v1 = STACK[0x57D8];
  STACK[0x8060] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2FD4)))();
}

uint64_t sub_1004E4F90@<X0>(int a1@<W8>)
{
  v1 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = (LODWORD(STACK[0xCF28]) ^ 0xF77DFEDD) - 375372 + ((LODWORD(STACK[0xCF28]) << ((a1 + 80) & 0x56 ^ 0x57)) & 0xEEFBFDBA);
  STACK[0x6230] = v1;
  LODWORD(STACK[0x6974]) = 676038443;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1004E5068()
{
  v2 = STACK[0x51B8];
  LODWORD(STACK[0xE3E4]) = v1;
  LODWORD(STACK[0xE3E0]) = v0;
  return (*(STACK[0x57D8] + 8 * (((((v2 ^ LOBYTE(STACK[0xE3DF])) & 1) == 0) * LODWORD(STACK[0x2780])) ^ LODWORD(STACK[0x277C]))))();
}

uint64_t sub_1004E50B4@<X0>(uint64_t a1@<X8>)
{
  *v4 = v2;
  *(v2 + 8) = *(a1 + v1);
  *(a1 + v1) = v2;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_1004E50DC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x6701)))();
  STACK[0x8DA0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004E5110(uint64_t a1)
{
  STACK[0x63A0] = 0xD38CBDD3ACAFF84ALL;
  STACK[0x83C0] = &STACK[0x89EC];
  LODWORD(STACK[0x6454]) = -509128918;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 8840181, 1144888832, 2897213512);
}

uint64_t sub_1004E5200()
{
  v5 = STACK[0x4E48];
  (*(*STACK[0x4E48] + 32 * *(v0 + 8) + 8))(*v0, &STACK[0xFCD0], (16 - v1), v4);
  (*(*v5 + 32 * *(v0 + 24) + 8))(*(v0 + 16), &STACK[0xFCD0] + (16 - v1), (v1 - 8), v4 + (16 - v1));
  **(v2 + 4384) = *(v2 + 3584);
  *(v2 + 3184) = *(v3 + 24) + 16 * *(v2 + 3560) + 12;
  v6 = STACK[0x57D8];
  *(v2 + 3168) = *(STACK[0x57D8] + 8 * (STACK[0x4D40] + 3330));
  return (*(v6 + 8 * (LODWORD(STACK[0x4D50]) + 31501)))(&STACK[0xEED0]);
}

uint64_t sub_1004E52C0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(a1 + 4400) = a2;
  *(a1 + 4404) = a2 ^ 0x6685;
  v2 = STACK[0x4D10];
  v3 = *(STACK[0x4D10] + 24) + 16 * *(a1 + 3560);
  v4 = v3 - *STACK[0x4D48];
  if ((v4 & 0xF) - 9 <= 6)
  {
    return sub_1004E5200();
  }

  (*(*STACK[0x4E48] + 32 * *((v4 & 0xFFFFFFFFFFFFFFF0) + *STACK[0x4D38] + 8) + 8))(*((v4 & 0xFFFFFFFFFFFFFFF0) + *STACK[0x4D38]), &STACK[0xFCD0], 8, v3);
  *STACK[0xFFF0] = STACK[0xFCD0];
  STACK[0xFB40] = *(v2 + 24) + 16 * STACK[0xFCB8] + 12;
  v6 = STACK[0x57D8];
  STACK[0xFB30] = *(STACK[0x57D8] + 8 * (STACK[0x4D40] + 3330));
  return (*(v6 + 8 * (LODWORD(STACK[0x4D50]) + 31501)))(&STACK[0xEED0]);
}

uint64_t sub_1004E53A0()
{
  STACK[0x6000] = STACK[0x8568];
  LODWORD(STACK[0xAB5C]) = STACK[0xB78C];
  LODWORD(STACK[0x7354]) = STACK[0x606C];
  return (*(STACK[0x57D8] + 8 * v0))();
}

void *sub_1004E53F4()
{
  v0 = *(STACK[0x57D8] + 8 * ((LODWORD(STACK[0xEC4]) ^ 0x89D) + LODWORD(STACK[0xEC4])));
  STACK[0xC2A0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xEC4]));
  return v0(&STACK[0x739C]);
}

uint64_t sub_1004E54A4@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + 0x4000) & 0x220147E9;
  v3 = STACK[0x57D8];
  (*(STACK[0x57D8] + 8 * (v2 + 13989)))(a1);
  *(STACK[0xA2D8] + 24) = 0;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1004E5558()
{
  v2 = *(v1 + 3064);
  v3 = *(v1 + 3076);
  v4 = *(v1 + 3080);
  v5 = *(v1 + 3099);
  v6 = *(v1 + 3100);
  v7 = *(v1 + 3104);
  v8 = *(v1 + 3124);
  LODWORD(STACK[0x57C0]) = *(v1 + 3160);
  return (*(STACK[0x57D8] + 8 * (v0 - 18019)))(v2, v4, v3, v8, v6, v5, v7);
}

uint64_t sub_1004E55E8()
{
  v0 = 672 * (STACK[0x51B8] ^ 0x5843);
  v1 = STACK[0x57D8];
  v2 = STACK[0x1AE4];
  STACK[0x9AC0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1AE4]));
  return (*(v1 + 8 * ((v0 ^ 0x3C34) + v2)))(15115, 4404, 0x683CBC57EAB92A3ELL, 22622);
}

uint64_t sub_1004E5728()
{
  v0 = LODWORD(STACK[0x12E8]) | 0x25A;
  v1 = STACK[0x57D8];
  STACK[0xA740] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x12F0]));
  return (*(v1 + 8 * (LODWORD(STACK[0x12EC]) ^ v0)))();
}

uint64_t sub_1004E57AC@<X0>(int a1@<W8>)
{
  v2 = a1 & 0x461F7FFF;
  *(v1 + 784) |= (v2 - 1980) ^ 0x1B0C;
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1004E57E0@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, int a7@<W6>, _DWORD *a8@<X7>, unint64_t a9@<X8>)
{
  v27 = STACK[0x57D8];
  STACK[0x8A08] = *(STACK[0x57D8] + 8 * v19);
  STACK[0x7770] = a4;
  *(v26 + 2292) = a5;
  STACK[0x5D88] = a6;
  *(v26 + 508) = a7;
  LODWORD(STACK[0xB4C8]) = v18;
  STACK[0xA210] = v15;
  STACK[0xA200] = v20;
  v28 = *(a1 - 0x79296B4A625EDCB8);
  STACK[0x7B68] = a1 - 0x79296B4A625EDCF4;
  LODWORD(STACK[0x89AC]) = v28;
  *(v26 + 332) = v16;
  LODWORD(STACK[0xAE1C]) = v13;
  *(v26 + 292) = v17;
  LODWORD(STACK[0x76F4]) = v25;
  STACK[0x88D8] = *v22;
  LODWORD(STACK[0x7A4C]) = *a8;
  STACK[0xB008] = a3;
  LODWORD(STACK[0x6B5C]) = STACK[0x57C0];
  STACK[0x6BA0] = v23;
  STACK[0xA8F0] = v21;
  LODWORD(STACK[0x7D90]) = v24;
  STACK[0x7660] = a9;
  STACK[0x9348] = v10;
  LODWORD(STACK[0x7A88]) = a2;
  STACK[0x8E18] = v9;
  LODWORD(STACK[0x9124]) = v14;
  STACK[0x74F8] = v11;
  *(v26 + 679) = 30;
  if (a9)
  {
    v29 = v11 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  STACK[0xC6C0] = 0;
  LODWORD(STACK[0x643C]) = 2101965948;
  STACK[0x8A98] = 0x2369327399A66D95;
  return (*(v27 + 8 * ((((v12 - 13) ^ v30) & 1 | (2 * (((v12 - 13) ^ v30) & 1))) ^ v12)))();
}

uint64_t sub_1004E59C4@<X0>(char a1@<W8>)
{
  v6 = STACK[0x51B8];
  v7 = STACK[0x51B8] + v3;
  v8 = (v1 ^ (STACK[0x51B8] + v3)) ^ 0xALL;
  if (a1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v2;
  }

  v10 = 551690071 * (((STACK[0x3558] | 0xBB88D0185A844FE4) - (STACK[0x3558] & 0xBB88D0185A844FE4)) ^ 0x9BC188CBDB6DD1C6);
  *(v4 + 592) = (v6 - 1079089617) ^ v10;
  *(v4 + 616) = v9 - v10;
  *(v4 + 596) = (v7 | 0x3D958C08) ^ v10;
  *(v4 + 624) = v10 + 9;
  *(v4 + 608) = v10;
  *(v4 + 604) = (v7 ^ 0x3D9583DC) - v10;
  *(v4 + 600) = (v7 ^ 0x3D959C1B) - v10;
  v11 = STACK[0x57D8];
  v12 = (*(STACK[0x57D8] + 8 * (v6 ^ 0x2411)))(v5 - 240);
  return (*(v11 + 8 * SLODWORD(STACK[0x1D4D4])))(v12);
}

uint64_t sub_1004E5ABC@<X0>(unint64_t a1@<X8>)
{
  v7 = 551690071 * ((((2 * (v6 - 240)) | 0x8C63BD4E) - (v6 - 240) + 969810265) ^ 0x88DC8DF0);
  STACK[0x1D4E8] = v3;
  STACK[0x1D4C8] = a1;
  LODWORD(STACK[0x1D4D0]) = (v2 - 3550) ^ v7;
  STACK[0x1D4C0] = v4;
  LODWORD(STACK[0x1D4D4]) = ((v1 + 1907096662) ^ (((v1 + 1907096662) ^ 0x5A21D79D) - 730475467) ^ (((v1 + 1907096662) ^ 0x5F6E87EE) - 784694200) ^ (((v1 + 1907096662) ^ 0xFEFF6FDF) + 1890282615) ^ (((((v2 - 11161) | 0x229) - 1977894835) ^ (v1 + 1907096662)) + 72335444) ^ 0x678BA447) - v7;
  STACK[0x1D4D8] = v5;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v2 + 18293)))(v6 - 240);
  *v3 = *(v4 + (v1 - 16));
  v3[1] = *(v4 + (v1 - 15));
  v3[2] = *(v4 + (v1 - 14));
  v3[3] = *(v4 + (v1 - 13));
  v3[4] = *(v4 + (v1 - 12));
  v3[5] = *(v4 + (v1 - 11));
  v3[6] = *(v4 + (v1 - 10));
  v3[7] = *(v4 + (v1 - 9));
  v3[8] = *(v4 + (v1 - 8));
  v3[9] = *(v4 + (v1 - 7));
  v3[10] = *(v4 + (v1 - 6));
  v3[11] = *(v4 + (v1 - 5));
  v3[12] = *(v4 + (v1 - 4));
  v3[13] = *(v4 + (v1 - 3));
  v3[14] = *(v4 + (v1 - 2));
  v3[15] = *(v4 + (v1 - 1));
  return (*(v8 + 8 * v2))(v9);
}

uint64_t sub_1004E5E34()
{
  v1 = 10 * LODWORD(STACK[0x1C64]);
  v2 = STACK[0x51B8] - 22020;
  LODWORD(STACK[0xACF4]) = v0;
  v3 = STACK[0x57D8];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * (v2 ^ 0xE5D ^ v1)))();
}

uint64_t sub_1004E5EA8(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0xA790];
  v4 = STACK[0x7ED8];
  STACK[0xA338] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v4 + 16;
  STACK[0x7A78] = v3;
  STACK[0x6558] = 0;
  STACK[0xA8B8] = 0;
  LODWORD(STACK[0x6C48]) = 2101965948;
  v5 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * v2);
  return (*(v5 + 8 * (v2 ^ 0x3653 ^ (v2 + 6991))))(4294960487, a2, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_1004E5F88()
{
  LODWORD(STACK[0x1D4C8]) = v0 - 16169987 * ((2 * ((v2 - 240) & 0x63ADC350) - (v2 - 240) - 1672332119) ^ 0xC9DC0981) + v1;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 9231)))(v2 - 240);
  return (*(v3 + 8 * (v1 + 5313)))(v4);
}

uint64_t sub_1004E6074()
{
  STACK[0x80E0] = v6;
  STACK[0x5C28] = v0;
  STACK[0xBEB0] = v4;
  STACK[0x5910] = v3;
  LOBYTE(STACK[0xBA17]) = v1;
  STACK[0xA000] = 0x2369327399A66D95;
  STACK[0xC4D0] = &STACK[0xA000];
  LODWORD(STACK[0x7EBC]) = -1389924012;
  STACK[0x7910] = v5;
  LODWORD(STACK[0x9C14]) = 0;
  LODWORD(STACK[0xA25C]) = v7;
  return (*(STACK[0x57D8] + 8 * (v2 ^ 0xA6EF2FB ^ ((((v2 - 175046412) | 0x920) ^ 0x1184) * (v2 != -978712729)))))();
}

uint64_t sub_1004E6144@<X0>(int a1@<W3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>, int8x16_t a7@<Q4>, int8x16_t a8@<Q5>)
{
  *&STACK[0x57A0] = *(a5 + a2 - 16);
  *&v13 = a5 + a2 - 15;
  *(&v13 + 1) = a5 + a2 - 16;
  *&STACK[0x5790] = v13;
  *&v13 = a5 + a2 - 13;
  *(&v13 + 1) = a5 + a2 - 14;
  *&STACK[0x5780] = v13;
  v14.i64[0] = a5 + a2 - 7;
  v14.i64[1] = a5 + a2 - 8;
  v15.i64[0] = a5 + a2 - 3;
  v15.i64[1] = a5 + a2 - 4;
  v16.i64[0] = a5 + a2 - 1;
  v16.i64[1] = a5 + a2 - 2;
  v17.i64[0] = a5 + a2 + (a3 ^ v11);
  v17.i64[1] = a5 + a2 - 6;
  v18 = vandq_s8(v17, *&STACK[0x4D70]);
  v19 = vandq_s8(v16, *&STACK[0x4D70]);
  v20 = vandq_s8(v15, *&STACK[0x4D70]);
  v21 = vandq_s8(v14, *&STACK[0x4D70]);
  v22 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL), *&STACK[0x4BD0]);
  v23 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL), *&STACK[0x4BD0]);
  v24 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v20, 0x38uLL), v20, 8uLL), *&STACK[0x4BD0]);
  v25 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL), *&STACK[0x4BD0]);
  v26 = *&STACK[0x5740];
  v27 = vorrq_s8(v24, *&STACK[0x5740]);
  v28 = vorrq_s8(v23, *&STACK[0x5740]);
  v29 = vorrq_s8(v24, v12);
  v30 = vorrq_s8(v23, v12);
  v31 = vsubq_s64(vorrq_s8(v22, *&STACK[0x5740]), vorrq_s8(v22, v12));
  v32 = vsubq_s64(v28, v30);
  v33.i64[0] = a5 + a2 - 11;
  v34 = vaddq_s64(vsubq_s64(vorrq_s8(v25, *&STACK[0x5740]), vorrq_s8(v25, v12)), v12);
  v35 = vaddq_s64(vsubq_s64(v27, v29), v12);
  v36 = *&STACK[0x56D0];
  v37 = veorq_s8(v35, *&STACK[0x56D0]);
  v38 = veorq_s8(v34, *&STACK[0x56D0]);
  v39 = *&STACK[0x5730];
  v40 = veorq_s8(v34, *&STACK[0x5730]);
  v41 = veorq_s8(v35, *&STACK[0x5730]);
  v42 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v40), *&STACK[0x44D0]);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL);
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v41), *&STACK[0x44D0]);
  v45 = *&STACK[0x44D0];
  v46 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v47 = veorq_s8(v42, v43);
  v48 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v47);
  v50 = *&STACK[0x4600];
  v51 = veorq_s8(vaddq_s64(v48, v46), *&STACK[0x4600]);
  v52 = veorq_s8(v49, *&STACK[0x4600]);
  v53 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = vaddq_s64(v56, v54);
  v59 = *&STACK[0x56F0];
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v57, *&STACK[0x56F0]), vorrq_s8(v57, a8)), a8), *&STACK[0x56C0]);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, *&STACK[0x56F0]), vorrq_s8(v58, a8)), a8), *&STACK[0x56C0]);
  v63 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v64 = veorq_s8(v60, v61);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v63);
  v67 = *&STACK[0x5720];
  v68 = *&STACK[0x56E0];
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v66, v66), *&STACK[0x5720]), v66), *&STACK[0x56E0]), *&STACK[0x5680]);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v65, v65), *&STACK[0x5720]), v65), *&STACK[0x56E0]), *&STACK[0x5680]);
  v71 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = *&STACK[0x5710];
  v77 = veorq_s8(vaddq_s64(v74, v72), *&STACK[0x5710]);
  v78 = veorq_s8(v75, *&STACK[0x5710]);
  v79 = *&STACK[0x5700];
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, *&STACK[0x5700]), vorrq_s8(v77, a7)), a7), *&STACK[0x57B0]);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, *&STACK[0x5700]), vorrq_s8(v78, a7)), a7), *&STACK[0x57B0]);
  v82 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v83 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v84 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v83);
  v86 = *&STACK[0x4490];
  v87 = veorq_s8(vaddq_s64(v84, v82), *&STACK[0x4490]);
  v88 = veorq_s8(v85, *&STACK[0x4490]);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v90 = vdupq_n_s64(v9);
  v91 = vaddq_s64(v32, v12);
  v92 = *&STACK[0x4620];
  v205.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v89), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), v90)));
  v205.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL))), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), v90)));
  v93 = veorq_s8(v91, *&STACK[0x56D0]);
  v94 = veorq_s8(v91, *&STACK[0x5730]);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), *&STACK[0x44D0]);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), *&STACK[0x4600]);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = *&STACK[0x56C0];
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v99, *&STACK[0x56F0]), vorrq_s8(v99, a8)), a8), *&STACK[0x56C0]);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v105 = *&STACK[0x5680];
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), *&STACK[0x5720]), v103), *&STACK[0x56E0]), *&STACK[0x5680]);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), *&STACK[0x5710]);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, *&STACK[0x5700]), vorrq_s8(v108, a7)), a7), *&STACK[0x57B0]);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), *&STACK[0x4490]);
  v112.i64[0] = a5 + a2 - 9;
  v33.i64[1] = a5 + a2 - 12;
  *&STACK[0x5760] = v33;
  v112.i64[1] = a5 + a2 - 10;
  *&STACK[0x5770] = v112;
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL)));
  v114 = vandq_s8(v112, *&STACK[0x4D70]);
  v115 = vaddq_s64(v31, v12);
  v205.val[0] = vshlq_u64(veorq_s8(v113, v92), vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), v90)));
  v116 = veorq_s8(v115, v36);
  v117 = veorq_s8(v115, v39);
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v45);
  v119 = v45;
  v120 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v120), v50);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v59), vorrq_s8(v123, a8)), a8), v100);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = v68;
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v67), v126), v68), v105);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v76);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v130, v79), vorrq_s8(v130, a7)), a7), *&STACK[0x57B0]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v86);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v136 = vandq_s8(v33, *&STACK[0x4D70]);
  v137 = vaddq_s64(v135, v134);
  v138 = *&STACK[0x5780];
  v139 = vandq_s8(*&STACK[0x5780], *&STACK[0x4D70]);
  v205.val[2] = vshlq_u64(veorq_s8(v137, v92), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), v90)));
  v140 = *&STACK[0x5790];
  v141 = vandq_s8(*&STACK[0x5790], *&STACK[0x4D70]);
  v142 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), *&STACK[0x4BD0]);
  v146 = vaddq_s64(v144, *&STACK[0x4BD0]);
  v147 = vaddq_s64(v143, *&STACK[0x4BD0]);
  v148 = vaddq_s64(v142, *&STACK[0x4BD0]);
  *&STACK[0x5750] = vsubq_s64(vorrq_s8(v145, v26), vorrq_s8(v145, v12));
  v149 = vsubq_s64(vorrq_s8(v146, v26), vorrq_s8(v146, v12));
  v150 = vaddq_s64(vsubq_s64(vorrq_s8(v148, v26), vorrq_s8(v148, v12)), v12);
  v151 = vaddq_s64(vsubq_s64(vorrq_s8(v147, v26), vorrq_s8(v147, v12)), v12);
  v152 = v8[25];
  v145.i64[0] = vqtbl4q_s8(v205, v152).u64[0];
  v153 = v36;
  v205.val[0] = veorq_s8(v151, v36);
  v205.val[1] = veorq_s8(v150, v36);
  v154 = veorq_s8(v150, v39);
  v205.val[2] = veorq_s8(v151, v39);
  v155 = v39;
  v205.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v154), v119);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[2]), v119);
  v205.val[0] = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[2] = veorq_s8(v205.val[1], v205.val[3]);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(v205.val[3], v205.val[0]), v50);
  v158 = veorq_s8(v157, v50);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v205.val[0], 3uLL), v205.val[0], 0x3DuLL);
  v205.val[0] = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[2] = veorq_s8(v205.val[1], v205.val[3]);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = vaddq_s64(v205.val[3], v205.val[0]);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v159, v59), vorrq_s8(v159, a8)), a8), v100);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205.val[1], v59), vorrq_s8(v205.val[1], a8)), a8), v100);
  v205.val[0] = veorq_s8(v205.val[1], vsraq_n_u64(vshlq_n_s64(v205.val[0], 3uLL), v205.val[0], 0x3DuLL));
  v205.val[2] = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v205.val[2]);
  v205.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[0]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[1], v205.val[1]), v67), v205.val[1]), v127), v105);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v205.val[0], 3uLL), v205.val[0], 0x3DuLL);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v161, v161), v67), v161), v127), v105);
  v205.val[0] = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[2] = veorq_s8(v205.val[1], v205.val[3]);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(v205.val[3], v205.val[0]), v76);
  v164 = veorq_s8(v163, v76);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205.val[1], v79), vorrq_s8(v205.val[1], a7)), a7), *&STACK[0x57B0]);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v205.val[0], 3uLL), v205.val[0], 0x3DuLL);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, v79), vorrq_s8(v164, a7)), a7), *&STACK[0x57B0]);
  v205.val[0] = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[2] = veorq_s8(v205.val[1], v205.val[3]);
  v205.val[3] = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(v205.val[3], v205.val[0]), v86);
  v167 = veorq_s8(v166, v86);
  v168 = vaddq_s64(v149, v12);
  v205.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), veorq_s8(v205.val[1], vsraq_n_u64(vshlq_n_s64(v205.val[0], 3uLL), v205.val[0], 0x3DuLL))), v92), vnegq_s64(vandq_s8(vshlq_n_s64(v140, 3uLL), v90)));
  v205.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL))), v92), vnegq_s64(vandq_s8(vshlq_n_s64(v138, 3uLL), v90)));
  v169 = veorq_s8(v168, v36);
  v170 = veorq_s8(v168, v39);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v119);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v50);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, v59), vorrq_s8(v175, a8)), a8), v100);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v67), v178), v127), v105);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v76);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181, v79), vorrq_s8(v181, a7)), a7), *&STACK[0x57B0]);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v86);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL)));
  v186 = vaddq_s64(*&STACK[0x5750], v12);
  v205.val[1] = vshlq_u64(veorq_s8(v185, v92), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5760], 3uLL), v90)));
  v187 = veorq_s8(v186, v153);
  v188 = veorq_s8(v186, v155);
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v119);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v50);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193, v59), vorrq_s8(v193, a8)), a8), v100);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), v67), v196), v127), v105);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v76);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199, v79), vorrq_s8(v199, a7)), a7), *&STACK[0x57B0]);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v86);
  v205.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL))), v92), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5770], 3uLL), v90)));
  v145.i64[1] = vqtbl4q_s8(v205, v152).u64[0];
  v203 = vrev64q_s8(v145);
  *(v10 + a2) = veorq_s8(vextq_s8(v203, v203, 8uLL), *&STACK[0x57A0]);
  return (*(STACK[0x57D8] + 8 * (((a4 != a2) * a6) ^ (a1 + 1386))))();
}

uint64_t sub_1004E6C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  return (*(STACK[0x57D8] + 8 * v2))();
}

uint64_t sub_1004E6E38@<X0>(int a1@<W8>)
{
  v1 = STACK[0x57D8];
  STACK[0x5F68] = *(STACK[0x57D8] + 8 * ((a1 - 129344702) & 0x7B59EEF));
  return (*(v1 + 87112))();
}

uint64_t sub_1004E6E80@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v12 = v4 - 1;
  v13 = v6 + a4 + v12;
  v14 = *(*v7 + ((*v11 & ((v13 & 0xFFFFFFF8) + a2)) & 0xFFFFFFFFFFFFFFF8));
  v15 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x5CFA7807E4A2DEE6) + 0x2E7D3C03F2516F73) ^ 0xA5837D781D2E7F55 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__((v15 + v14 - ((2 * (v15 + v14)) & 0x5CFA7807E4A2DEE6) + 0x2E7D3C03F2516F73) ^ 0xA5837D781D2E7F55, 8) + v16) ^ v10;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v8;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x3662C1F52A6EAC3ELL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) & 0xE2FF3839F3A1AE12) - (v23 + v22) - 0x717F9C1CF9D0D70ALL) ^ 0xF389FC19EAE7DA48;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a3;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x5EB21AFA84768362;
  *(a1 + v12) = (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v27, 61))) ^ v9) >> (8 * (v13 & 7u))) ^ *v13;
  return (*(STACK[0x57D8] + 8 * ((13681 * (v12 == 0)) ^ v5)))();
}

uint64_t sub_1004E7094()
{
  v2 = *(v0 + 3224);
  *(v0 + 3232) = v2;
  v3 = *(v0 + 3220);
  *(v0 + 3240) = v3;
  *(v0 + 3244) = v3 ^ 0xCB7;
  *(v0 + 3248) = v3 + 2240;
  v4 = *(v1 + 24) + 16 * v2 + 8;
  v5 = STACK[0x57D8];
  v6 = *(STACK[0x57D8] + 8 * (v3 ^ 0x23A8));
  *(v0 + 220) = 0;
  *(v0 + 200) = v6;
  *(v0 + 208) = v4;
  return (*(v5 + 8 * (v3 ^ 0x22A0)))(&STACK[0xEED0]);
}

uint64_t sub_1004E71E8()
{
  LODWORD(STACK[0x8234]) = v1;
  v3 = STACK[0xB198];
  v4 = STACK[0x2A48];
  LODWORD(STACK[0x1D4E0]) = ((v0 - 22614) ^ 0xFE2FAFED) + STACK[0x2A48];
  LODWORD(STACK[0x1D4D4]) = v4 ^ (v0 - 22614) ^ 0xFE2FAF19;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4C8]) = -30432657 - v4 + v0 - 22614;
  LODWORD(STACK[0x1D4D0]) = v4;
  STACK[0x1D4C0] = v3 ^ v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v0 + 1451493860;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 + 9182)))(v2 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1004E7298@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0x57D8];
  STACK[0x6D40] = *(STACK[0x57D8] + 8 * v3);
  STACK[0xCA68] = a1;
  LODWORD(STACK[0x8A28]) = v4;
  v6 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] += 160;
  v7 = STACK[0x51E8];
  v8 = STACK[0x51F0];
  v9 = *STACK[0x51F0];
  v10 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v9 + ((1039685193 * (((-1408795655 * ((v6 + 20) & 0xFFFFFFF8)) ^ 0xA0A8E45C) - ((1477375986 * ((v6 + 20) & 0xFFFFFFF8)) & ((v2 + 27361) ^ 0x4151BB7D) ^ 0x4151C8B8)) - 1412263981) & v10));
  v12 = (v11 + __ROR8__((v6 + 20) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x153242EE3CF06A49;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x2275D4C73835399BLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) | 0xC736D04F69AFE9D6) - ((v18 + v17) | 0x38C92FB096501629) + 0x38C92FB096501629) ^ 0x2299CAFC4712D50BLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__((((2 * (v21 + v20)) & 0xA33850694C7A65FCLL) - (v21 + v20) - 0x519C2834A63D32FFLL) ^ 0x69BE1E3D95877A20, 8);
  v23 = (((2 * (v21 + v20)) & 0xA33850694C7A65FCLL) - (v21 + v20) - 0x519C2834A63D32FFLL) ^ 0x69BE1E3D95877A20 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23 - ((2 * (v22 + v23)) & 0x6CA0F711708B2E9ELL) + 0x36507B88B845974FLL) ^ 0x9E765B2DE1974D37;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5F8DEC3EA3980A1BLL;
  v6[20] = (((__ROR8__(v26, 8) + (v26 ^ __ROR8__(v25, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v6 + 20) & 7u))) ^ 0x52;
  v27 = *(v9 + (v10 & (((v6 + 21) & 0xFFFFFFF8) - 103642729)));
  v28 = (v27 + __ROR8__((v6 + 21) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x153242EE3CF06A49;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x2275D4C73835399BLL;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = (((2 * (v33 + v34)) & 0x4A5094D2FCE8ADECLL) - (v33 + v34) + 0x5AD7B596818BA909) ^ 0xBF78AF25AF3695D4;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v37 + v36 - ((2 * (v37 + v36)) & 0xD915026E7F0B199ALL) + 0x6C8A81373F858CCDLL) ^ 0xAB5748C1F3C03BECLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xA82620A559D2DA78;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0x6FCB9090227A81D4) - (v42 + v41) + 0x481A37B7EEC2BF15) ^ 0x1797DB894D5AB50ELL;
  v6[21] = (((__ROR8__(v43, 8) + (v43 ^ __ROR8__(v41, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v6 + 21) & 7u))) ^ 0xC4;
  v44 = *(*v8 + ((((v6 + 22) & 0xFFFFFFF8) - 103642736) & *v7));
  STACK[0x87F8] = v1;
  v45 = (__ROR8__((v6 + 22) & 0xFFFFFFFFFFFFFFF8, 8) + v44) ^ 0xF41651499F5E3C67;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x153242EE3CF06A49;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x2275D4C73835399BLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((v51 + v50) | 0xBB456194A6333101) - ((v51 + v50) | 0x44BA9E6B59CCCEFELL) + 0x44BA9E6B59CCCEFELL) ^ 0x5EEA7B27888E0DDCLL ^ __ROR8__(v50, 61);
  v53 = (__ROR8__((((v51 + v50) | 0xBB456194A6333101) - ((v51 + v50) | 0x44BA9E6B59CCCEFELL) + 0x44BA9E6B59CCCEFELL) ^ 0x5EEA7B27888E0DDCLL, 8) + v52) ^ 0xC7DDC9F6CC45B721;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xA82620A559D2DA78;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (v57 + v56 - ((2 * (v57 + v56)) & 0xB007B107FE0A7AB4) - 0x27FC277C00FAC2A6) ^ 0x878E34BD5C9D3741;
  v59 = __ROR8__(v58, 8);
  v60 = __ROR8__(v56, 61);
  v6[22] = (((((v59 + (v58 ^ v60)) | 0xBA0E06C8C73DEDCCLL) - ((v59 + (v58 ^ v60)) | 0x45F1F93738C21233) + 0x45F1F93738C21233) ^ 0x7BCDCE1A63F8A5E4) >> (8 * ((v6 + 22) & 7u))) ^ 0xAD;
  v61 = *(*v8 + ((*v7 & (((v6 + 23) & 0xFFFFFFF8) - 103642729)) & 0xFFFFFFFFFFFFFFF8));
  v62 = (v61 + __ROR8__((v6 + 23) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) & 0xF9A15F20C9F1C894) - (v64 + v63) + 0x32F506F9B071BB5) ^ 0x161D1281A7F771FCLL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v67 + v66 - ((2 * (v67 + v66)) & 0xB5F01EE2D020AD64) - 0x2507F08E97EFA94ELL) ^ 0xF88DDBB650256F29;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((v70 + v69) | 0xEC8A41B19A69BFELL) - ((v70 + v69) | 0xF1375BE4E6596401) - 0xEC8A41B19A69BFFLL) ^ 0xEB67BEA8371BA723;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xC7DDC9F6CC45B721;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0xA82620A559D2DA78;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x5F8DEC3EA3980A1BLL;
  v6[23] = (((__ROR8__(v77, 8) + (v77 ^ __ROR8__(v76, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v6 + 23) & 7u))) ^ 0xCC;
  v78 = *v7 & 0xFFFFFFFFFFFFFFF8;
  v79 = *(*v8 + ((((v6 + 24) & 0xFFFFFFF8) - 103642729) & v78));
  v80 = (__ROR8__((v6 + 24) & 0xFFFFFFFFFFFFFFF8, 8) + v79) ^ 0xF41651499F5E3C67;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (v81 + v82) ^ 0x153242EE3CF06A49;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * ((v85 + v84) ^ 0xD4113F484872CB42)) & 0x88033A19178BB378) - ((v85 + v84) ^ 0xD4113F484872CB42) - 0x44019D0C8BC5D9BDLL) ^ 0x4D9A897C047DD49ALL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xE5AF1AB32EBD3CDDLL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) | 0x307BFFA22AE5BFELL) - (v90 + v89) + 0x7E7C2002EEA8D201) ^ 0x465E160BDD129ADELL;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0xA82620A559D2DA78;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (v95 + v94 - ((2 * (v95 + v94)) & 0xBC47D60118357FFELL) - 0x21DC14FF73E54001) ^ 0x81AE073E2F82B5E4;
  v6[24] = (((__ROR8__(v96, 8) + (v96 ^ __ROR8__(v94, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v6 + 24) & 7u))) ^ 0x58;
  v97 = *(*v8 + ((((v6 + 25) & 0xFFFFFFF8) - 103642729) & v78));
  STACK[0x8890] = (v6 + 20);
  v98 = (v97 + __ROR8__((v6 + 25) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x153242EE3CF06A49;
  v101 = __ROR8__(v100, 8);
  v102 = v100 ^ __ROR8__(v99, 61);
  v103 = (((2 * (v101 + v102)) & 0x1CD5B67429058B88) - (v101 + v102) + 0x719524C5EB7D3A3BLL) ^ 0x53E0F002D34803A0;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((v105 + v104) | 0x3A069E30138CA477) - ((v105 + v104) | 0xC5F961CFEC735B88) - 0x3A069E30138CA478) ^ 0xDFA984833D3198AALL;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((2 * (v108 + v107)) & 0xFE010D0B62DCC70ALL) - (v108 + v107) - 0x7F008685B16E6386) ^ 0x4722B08C82D42B5BLL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0xA82620A559D2DA78;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x5F8DEC3EA3980A1BLL;
  v6[25] = (((__ROR8__(v113, 8) + (v113 ^ __ROR8__(v112, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v6 + 25) & 7u))) ^ 0xB2;
  v114 = STACK[0x8890];
  v115 = STACK[0x8890];
  v116 = *v7 & 0xFFFFFFFFFFFFFFF8;
  v117 = *(*v8 + ((((v114 + 6) & 0xFFFFFFF8 ^ 0x9B21C088) - 1795929568 + ((2 * ((v114 + 6) & 0xFFFFFFF8)) | 0xC9BC7EEF)) & v116));
  v118 = __ROR8__((STACK[0x8890] + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v119 = __ROR8__((((2 * (v118 + v117)) | 0x288C30DBE275132ELL) - (v118 + v117) - 0x1446186DF13A8997) ^ 0xE05049246E64B5F0, 8);
  v120 = (((2 * (v118 + v117)) | 0x288C30DBE275132ELL) - (v118 + v117) - 0x1446186DF13A8997) ^ 0xE05049246E64B5F0 ^ __ROR8__(v117, 61);
  v121 = (((2 * (v119 + v120)) & 0x6B0ACF634D41A81ALL) - (v119 + v120) + 0x4A7A984E595F2BF2) ^ 0x5F48DAA065AF41BBLL;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x2275D4C73835399BLL;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (((v125 + v124) ^ 0xF5E8846760041C5 | 0x8EB9DF0CB5BDCF8) - ((v125 + v124) ^ 0xF5E8846760041C5 | 0xF714620F34A42307) - 0x8EB9DF0CB5BDCF9) ^ 0xE21A0F0593E6A1E0;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0xC7DDC9F6CC45B721;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xA82620A559D2DA78;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0x5F8DEC3EA3980A1BLL;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  *(v114 + 6) = (((v134 + v133 - ((2 * (v134 + v133)) & 0xFE6E4EAA25FB71BALL) + 0x7F37275512FDB8DDLL) ^ 0xBEF4EF87B638F0F5) >> (8 * ((v114 + 6) & 7))) ^ 0xAC;
  v135 = *(*v8 + ((((v114 + 7) & 0x25DA0410 | 0xDA25FBEB) - 103642729 + ((v114 + 7) & 0xDA25FBE8 | 0x25DA0415)) & v116));
  v136 = (v135 + __ROR8__((v114 + 7) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0x153242EE3CF06A49;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x2275D4C73835399BLL;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0xE5AF1AB32EBD3CDDLL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0xC7DDC9F6CC45B721;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ 0xA82620A559D2DA78;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0x5F8DEC3EA3980A1BLL;
  *(v114 + 7) = (((__ROR8__(v148, 8) + (v148 ^ __ROR8__(v147, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v114 + 7) & 7))) ^ 0xF8;
  v149 = *v8;
  v150 = *v7 & 0xFFFFFFFFFFFFFFF8;
  v151 = *(*v8 + ((((v115 + 8) & 0xFFFFFFF8 ^ 0xECE5EC71) + 216833318 + ((2 * ((v115 + 8) & 0xFFFFFFF8)) & 0xD9CBD8E0)) & v150));
  v152 = (__ROR8__((v115 + 8) & 0xFFFFFFFFFFFFFFF8, 8) + v151) ^ 0xF41651499F5E3C67;
  v153 = __ROR8__(v152, 8);
  v154 = v152 ^ __ROR8__(v151, 61);
  v155 = (v153 + v154) ^ 0x153242EE3CF06A49;
  v156 = v155 ^ __ROR8__(v154, 61);
  v157 = __ROR8__(v155, 8);
  v158 = (v157 + v156 - ((2 * (v157 + v156)) & 0x11B31F31DE749590) - 0x7726706710C5B538) ^ 0xAAAC5B5FD70F7353;
  v159 = v158 ^ __ROR8__(v156, 61);
  v160 = (__ROR8__(v158, 8) + v159) ^ 0xE5AF1AB32EBD3CDDLL;
  v161 = __ROR8__(v160, 8);
  v162 = v160 ^ __ROR8__(v159, 61);
  v163 = (v161 + v162 - ((2 * (v161 + v162)) & 0x4CBE847BD1281952) - 0x59A0BDC2176BF357) ^ 0x61828BCB24D1BB88;
  v164 = v163 ^ __ROR8__(v162, 61);
  v165 = __ROR8__(v163, 8);
  v166 = (v165 + v164 - ((2 * (v165 + v164)) & 0x4C23FBE56BEAE7E0) - 0x59EE020D4A0A8C10) ^ 0xE37DD57EC27A988;
  v167 = v166 ^ __ROR8__(v164, 61);
  v168 = (__ROR8__(v166, 8) + v167) ^ 0x5F8DEC3EA3980A1BLL;
  v169 = v168 ^ __ROR8__(v167, 61);
  v170 = __ROR8__(v168, 8);
  *(v115 + 8) = (((((v170 + v169) & 0xEEAA55B224B95979 ^ 0xE622410220385031) + ((v170 + v169) & 0x1155AA4DDB46A686 ^ 0x400844DA048007) - 1) ^ 0x27A181945EF9981FLL) >> (8 * ((v115 + 8) & 7))) ^ 0x6A;
  v171 = *(v149 + ((((v115 + 9) & 0xFFFFFFF8) - 103642729) & v150));
  v172 = (v171 + __ROR8__((v115 + 9) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v173 = v172 ^ __ROR8__(v171, 61);
  v174 = __ROR8__(v172, 8);
  v175 = __ROR8__((((2 * (v174 + v173)) | 0x91E6F4A16BCD1272) - (v174 + v173) - 0x48F37A50B5E68939) ^ 0x5DC138BE8916E370, 8);
  v176 = (((2 * (v174 + v173)) | 0x91E6F4A16BCD1272) - (v174 + v173) - 0x48F37A50B5E68939) ^ 0x5DC138BE8916E370 ^ __ROR8__(v173, 61);
  v177 = (((2 * ((v175 + v176) ^ 0x4BD4C2B07314D84CLL)) | 0x35D659AD35CA6426) - ((v175 + v176) ^ 0x4BD4C2B07314D84CLL) - 0x1AEB2CD69AE53213) ^ 0x734A3AA1D1C4D3C4;
  v178 = v177 ^ __ROR8__(v176, 61);
  v179 = __ROR8__(v177, 8);
  v180 = (v179 + v178 - ((2 * (v179 + v178)) & 0x86996D01EB4469ACLL) - 0x3CB3497F0A5DCB2ALL) ^ 0x26E3AC33DB1F080BLL;
  v181 = v180 ^ __ROR8__(v178, 61);
  v182 = (__ROR8__(v180, 8) + v181) ^ 0xC7DDC9F6CC45B721;
  v183 = v182 ^ __ROR8__(v181, 61);
  v184 = (__ROR8__(v182, 8) + v183) ^ 0xA82620A559D2DA78;
  v185 = v184 ^ __ROR8__(v183, 61);
  v186 = (__ROR8__(v184, 8) + v185) ^ 0x5F8DEC3EA3980A1BLL;
  *(v115 + 9) = (((__ROR8__(v186, 8) + (v186 ^ __ROR8__(v185, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v115 + 9) & 7))) ^ 0xEF;
  v187 = STACK[0x8890];
  v188 = STACK[0x8890];
  LODWORD(v186) = *v7;
  v189 = *v8;
  v190 = *(*v8 + ((((v187 + 10) & 0x37157C78) + ((v187 + 10) & 0xC8EA8380 | 0x37157C78) - 1027797736) & *v7));
  v191 = (__ROR8__((STACK[0x8890] + 10) & 0xFFFFFFFFFFFFFFF8, 8) + v190) ^ 0xF41651499F5E3C67;
  v192 = v191 ^ __ROR8__(v190, 61);
  v193 = (__ROR8__(v191, 8) + v192) ^ 0x153242EE3CF06A49;
  v194 = v193 ^ __ROR8__(v192, 61);
  v195 = __ROR8__(v193, 8);
  v196 = (((v195 + v194) & 0x30D557792ACBA5CDLL ^ 0x109010282A49810DLL) + ((v195 + v194) ^ 0xA567EF5104A236E2) - (((v195 + v194) ^ 0xA567EF5104A236E2) & 0x30D557792ACBA5CDLL)) ^ 0xB7C76CEF165CAAB4;
  v197 = v196 ^ __ROR8__(v194, 61);
  v198 = (__ROR8__(v196, 8) + v197) ^ 0xE5AF1AB32EBD3CDDLL;
  v199 = v198 ^ __ROR8__(v197, 61);
  v200 = __ROR8__(v198, 8);
  v201 = (((v200 + v199) | 0xFADADB8DB29C31DLL) - ((v200 + v199) | 0xF052524724D63CE2) - 0xFADADB8DB29C31ELL) ^ 0xC870644E176C743CLL;
  v202 = v201 ^ __ROR8__(v199, 61);
  v203 = (__ROR8__(v201, 8) + v202) ^ 0xA82620A559D2DA78;
  v204 = v203 ^ __ROR8__(v202, 61);
  v205 = __ROR8__(v203, 8);
  v206 = (v205 + v204 - ((2 * (v205 + v204)) & 0x6993AD33D6E2A96) + 0x34C9D699EB7154BLL) ^ 0x5CC171573D2F1F50;
  v207 = v206 ^ __ROR8__(v204, 61);
  v208 = __ROR8__(v206, 8);
  *(v187 + 10) = (((((2 * (v208 + v207)) & 0x9F8DBC7920EE8688) - (v208 + v207) - 0x4FC6DE3C90774345) ^ 0x71FAE911CB4DF493) >> (8 * ((v187 + 10) & 7))) ^ 0x74;
  STACK[0x9D78] = v6;
  v209 = (v6 + 40);
  v210 = *(v189 + ((((((v187 + 11) & 0xB53C82D0 | 0x4AC37D2F) + ((v187 + 11) & 0x4AC37D28 | 0xB53C82D1) + 1254325551) & 0xFFFFFFF8) - 1357968280) & v186));
  v211 = (v210 + __ROR8__((v187 + 11) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v212 = v211 ^ __ROR8__(v210, 61);
  v213 = (__ROR8__(v211, 8) + v212) ^ 0x153242EE3CF06A49;
  v214 = v213 ^ __ROR8__(v212, 61);
  v215 = (__ROR8__(v213, 8) + v214) ^ 0x2275D4C73835399BLL;
  v216 = v215 ^ __ROR8__(v214, 61);
  v217 = (__ROR8__(v215, 8) + v216) ^ 0xE5AF1AB32EBD3CDDLL;
  v218 = v217 ^ __ROR8__(v216, 61);
  v219 = (__ROR8__(v217, 8) + v218) ^ 0xC7DDC9F6CC45B721;
  v220 = __ROR8__(v219, 8);
  v221 = v219 ^ __ROR8__(v218, 61);
  v222 = (((2 * (v220 + v221)) | 0x5D7818933219B13CLL) - (v220 + v221) + 0x5143F3B666F32762) ^ 0x69A2CECC0DE02E6;
  v223 = v222 ^ __ROR8__(v221, 61);
  v224 = __ROR8__(v222, 8);
  v225 = (((2 * (v224 + v223)) & 0xB2A024BEA7AE6D3CLL) - (v224 + v223) - 0x5950125F53D7369FLL) ^ 0xF922019E0FB0C37ALL;
  v226 = v225 ^ __ROR8__(v223, 61);
  v227 = __ROR8__(v225, 8);
  *(v187 + 11) = (((v227 + v226 - ((2 * (v227 + v226)) & 0x79364B68D6FDC6CALL) + 0x3C9B25B46B7EE365) ^ 0xFD58ED66CFBBAB4DLL) >> (8 * ((v187 + 11) & 7))) ^ 0x98;
  v228 = *v8;
  v229 = *v7 & 0xFFFFFFFFFFFFFFF8;
  v230 = *(*v8 + ((((v188 + 12) & 0xFFFFFFF8) - 103642729) & v229));
  STACK[0xC3E8] = v209;
  v231 = __ROR8__((v188 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v232 = (((v231 + v230) | 0x6DC6BE610949F19ALL) - ((v231 + v230) | 0x9239419EF6B60E65) - 0x6DC6BE610949F19BLL) ^ 0x99D0EF289617CDFDLL;
  v233 = v232 ^ __ROR8__(v230, 61);
  v234 = __ROR8__(v232, 8);
  v235 = (((2 * ((v234 + v233) ^ 0xF3C42B6C4E79BB2CLL)) & 0x25700445B76A515CLL) - ((v234 + v233) ^ 0xF3C42B6C4E79BB2CLL) + 0x6D47FDDD244AD751) ^ 0x8BB1945F56C30634;
  v236 = v235 ^ __ROR8__(v233, 61);
  v237 = (__ROR8__(v235, 8) + v236) ^ 0x2275D4C73835399BLL;
  v238 = v237 ^ __ROR8__(v236, 61);
  v239 = __ROR8__(v237, 8);
  v240 = (((v239 + v238) & 0x2A2E1E31CAA84703 ^ 0x20060E100AA00500) + ((v239 + v238) ^ 0x9F287129D40DE23FLL) - (((v239 + v238) ^ 0x9F287129D40DE23FLL) & 0x2A2E1E31CAA84703)) ^ 0x50A975AB301899E1 ^ __ROR8__(v238, 61);
  v241 = (__ROR8__((((v239 + v238) & 0x2A2E1E31CAA84703 ^ 0x20060E100AA00500) + ((v239 + v238) ^ 0x9F287129D40DE23FLL) - (((v239 + v238) ^ 0x9F287129D40DE23FLL) & 0x2A2E1E31CAA84703)) ^ 0x50A975AB301899E1, 8) + v240) ^ 0xC7DDC9F6CC45B721;
  v242 = v241 ^ __ROR8__(v240, 61);
  v243 = __ROR8__(v241, 8);
  v244 = (((v243 + v242) | 0xC5D4654409098FB9) - ((v243 + v242) | 0x3A2B9ABBF6F67046) + 0x3A2B9ABBF6F67046) ^ 0x6DF245E150DB55C1;
  v245 = v244 ^ __ROR8__(v242, 61);
  v246 = __ROR8__(v244, 8);
  v247 = (((2 * (v246 + v245)) & 0x19991F79D3A4F3BCLL) - (v246 + v245) + 0x73337043162D8621) ^ 0x2CBE9C7DB5B58C3ALL;
  *(v188 + 12) = (((__ROR8__(v247, 8) + (v247 ^ __ROR8__(v245, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v188 + 12) & 7))) ^ 0x3B;
  v248 = *(v228 + ((((v188 + 13) & 0xA3E8B618 | 0x5C1749E3) - 103642729 + ((v188 + 13) & 0x5C1749E0 | 0xA3E8B61D)) & v229));
  v249 = (v248 + __ROR8__((v188 + 13) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v250 = v249 ^ __ROR8__(v248, 61);
  v251 = __ROR8__(v249, 8);
  v252 = (v251 + v250 - ((2 * (v251 + v250)) & 0xC72E94E37F1C296CLL) + 0x63974A71BF8E14B6) ^ 0x76A5089F837E7EFFLL;
  v253 = v252 ^ __ROR8__(v250, 61);
  v254 = __ROR8__(v252, 8);
  v255 = (((v254 + v253) | 0x8CB4EA65FDE83310) - ((v254 + v253) | 0x734B159A0217CCEFLL) + 0x734B159A0217CCEFLL) ^ 0xAEC13EA2C5DD0A8BLL;
  v256 = v255 ^ __ROR8__(v253, 61);
  v257 = (__ROR8__(v255, 8) + v256) ^ 0xE5AF1AB32EBD3CDDLL;
  v258 = __ROR8__(v257, 8);
  v259 = v257 ^ __ROR8__(v256, 61);
  v260 = (v258 + v259 - ((2 * (v258 + v259)) & 0x9EC90D5115531906) + 0x4F6486A88AA98C83) ^ 0x88B94F5E46EC3BA2;
  v261 = v260 ^ __ROR8__(v259, 61);
  v262 = (__ROR8__(v260, 8) + v261) ^ 0xA82620A559D2DA78;
  v263 = v262 ^ __ROR8__(v261, 61);
  v264 = (__ROR8__(v262, 8) + v263) ^ 0x5F8DEC3EA3980A1BLL;
  v265 = __ROR8__(v264, 8);
  v266 = __ROR8__(v263, 61);
  *(v188 + 13) = (((((v265 + (v264 ^ v266)) | 0x3EFF151AD82CB3E8) - ((v265 + (v264 ^ v266)) | 0xC100EAE527D34C17) - 0x3EFF151AD82CB3E9) ^ 0xFF3CDDC87CE9FBC0) >> (8 * ((v188 + 13) & 7))) ^ 0xFB;
  v267 = STACK[0x8890];
  v268 = *v8;
  v269 = *v7 & 0xFFFFFFFFFFFFFFF8;
  v270 = *(*v8 + ((((STACK[0x8890] + 14) & 0xFFFFFFF8) - 103642729) & v269));
  v271 = (__ROR8__((STACK[0x8890] + 14) & 0xFFFFFFFFFFFFFFF8, 8) + v270) ^ 0xF41651499F5E3C67;
  v272 = v271 ^ __ROR8__(v270, 61);
  v273 = (__ROR8__(v271, 8) + v272) ^ 0x153242EE3CF06A49;
  v274 = v273 ^ __ROR8__(v272, 61);
  v275 = (__ROR8__(v273, 8) + v274) ^ 0x2275D4C73835399BLL;
  v276 = v275 ^ __ROR8__(v274, 61);
  v277 = (__ROR8__(v275, 8) + v276) ^ 0xE5AF1AB32EBD3CDDLL;
  v278 = v277 ^ __ROR8__(v276, 61);
  v279 = __ROR8__(v277, 8);
  v280 = (v279 + v278 - ((2 * (v279 + v278)) & 0xFEED89B2E817BF1ELL) + 0x7F76C4D9740BDF8FLL) ^ 0xB8AB0D2FB84E68AELL;
  v281 = v280 ^ __ROR8__(v278, 61);
  v282 = (__ROR8__(v280, 8) + v281) ^ 0xA82620A559D2DA78;
  v283 = v282 ^ __ROR8__(v281, 61);
  v284 = __ROR8__(v282, 8);
  v285 = (v284 + v283 - ((2 * (v284 + v283)) & 0x9B6B3A91DCA7BD7ALL) - 0x324A62B711AC2143) ^ 0x923871764DCBD4A6;
  *(v267 + 14) = (((__ROR8__(v285, 8) + (v285 ^ __ROR8__(v283, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v267 + 14) & 7))) ^ 6;
  v286 = *(v268 + ((((v267 + 15) & 0x9E670570 | 0x6198FA8B) - 103642729 + ((v267 + 15) & 0x6198FA88 | 0x9E670575)) & v269));
  v287 = (v286 + __ROR8__((v267 + 15) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v288 = v287 ^ __ROR8__(v286, 61);
  v289 = (__ROR8__(v287, 8) + v288) ^ 0x153242EE3CF06A49;
  v290 = v289 ^ __ROR8__(v288, 61);
  v291 = (__ROR8__(v289, 8) + v290) ^ 0x2275D4C73835399BLL;
  v292 = __ROR8__(v291, 8);
  v293 = v291 ^ __ROR8__(v290, 61);
  v294 = (((2 * ((v292 + v293) ^ 0x534474E5621672ABLL)) & 0x923739EA4C27CAD6) - ((v292 + v293) ^ 0x534474E5621672ABLL) + 0x36E4630AD9EC1A94) ^ 0x800F0D5C954754E2;
  v295 = v294 ^ __ROR8__(v293, 61);
  v296 = __ROR8__(v294, 8);
  v297 = (((2 * (v296 + v295)) & 0xE3A77B5D7723B15CLL) - (v296 + v295) - 0x71D3BDAEBB91D8AFLL) ^ 0x49F18BA7882B9070;
  v298 = v297 ^ __ROR8__(v295, 61);
  v299 = (__ROR8__(v297, 8) + v298) ^ 0xA82620A559D2DA78;
  v300 = v299 ^ __ROR8__(v298, 61);
  v301 = __ROR8__(v299, 8);
  *(v267 + 15) = (((__ROR8__((((2 * (v301 + v300)) & 0x94FEBC4EB966D6FCLL) - (v301 + v300) + 0x3580A1D8A34C9481) ^ 0x6A0D4DE600D49E9ALL, 8) + ((((2 * (v301 + v300)) & 0x94FEBC4EB966D6FCLL) - (v301 + v300) + 0x3580A1D8A34C9481) ^ 0x6A0D4DE600D49E9ALL ^ __ROR8__(v300, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * ((v267 + 15) & 7))) ^ 0x7F;
  return (*(v5 + 8 * (v2 ^ 0x1E26)))();
}

uint64_t sub_1004E8DDC()
{
  v1 = STACK[0xADB8];
  v2 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x49D03C7F ^ (v0 + 1238379978))))(v1);
}

uint64_t sub_1004E8F70()
{
  STACK[0xCCC8] = STACK[0xA170];
  STACK[0x9830] = &STACK[0x6070];
  LODWORD(STACK[0x8724]) = 1631585919;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004E902C()
{
  v0 = STACK[0x51B8] ^ 0x6969;
  v1 = STACK[0x51B8] - 21878;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x84A8] - 0x683CBC57EAB92A3ELL);
  return (*(v2 + 8 * (v0 + v1 - 8177)))(v3);
}

uint64_t sub_1004E9100()
{
  v2 = STACK[0xB0E8];
  STACK[0xE8A0] = v1;
  STACK[0xE8A8] = v2;
  return (*(STACK[0x57D8] + 8 * ((70 * (((-78 * (v0 ^ 0xCA) - 107) ^ (v1 - v2 > (11307 * ((3250 * (v0 ^ 0x41CA)) ^ 0x2614u)) - 22605)) & 1)) ^ (3250 * (v0 ^ 0x41CA)))))();
}

uint64_t sub_1004E91F4()
{
  v1 = STACK[0x51B8] + v0;
  v2 = STACK[0x51B8] - 22614;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(STACK[0x9B28]);
  return (*(v3 + 8 * ((v1 ^ 0x2649) + v2)))(v4);
}

uint64_t sub_1004E92B0@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 - 1;
  *(a1 + v4) = *(v3 + v4) - 2 * (*(v3 + v4) & 0xF) + 15;
  return (*(STACK[0x57D8] + 8 * ((55 * (v4 != 0)) ^ v1)))();
}

uint64_t sub_1004E92E8()
{
  v3 = STACK[0x51B8];
  v4 = STACK[0x51B8] + v0;
  *(v1 + 600) = STACK[0xBD70];
  *(v1 + 592) = v3 - 711523751 * (((v2 - 240) & 0xBDAEE45F | ~((v2 - 240) | 0xBDAEE45F)) ^ 0x724B3A71) + 4438;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x244C)))(v2 - 240);
  return (*(v5 + 8 * (v4 | 0x1432)))(v6);
}

uint64_t sub_1004E93E0()
{
  v2 = STACK[0x1DD8];
  v3 = (LODWORD(STACK[0x1DD8]) - 1209) | 0x368;
  v4 = LODWORD(STACK[0x1DD8]) ^ 0x556F;
  *(v0 + 756) = v1;
  return (*(STACK[0x57D8] + 8 * ((19947 * (v1 == ((v3 - 143126305) ^ v4))) ^ v2)))();
}

uint64_t sub_1004E9674@<X0>(int a1@<W2>, unsigned int a2@<W3>, int a3@<W4>, int a4@<W5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7 + (v8 + v9);
  v13 = *(*STACK[0x51F0] + ((((v12 & 0xFFFFFFF8) - 103642729) & *STACK[0x51E8]) & 0xFFFFFFFFFFFFFFF8));
  v14 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = (((v13 + v14) & (v10 ^ 0xF5E927EB1122CCA4) ^ 0x400021C0A6101759) + ((v13 + v14) & 0xA16D81458CFE084 ^ 0x161000104C6081) - 1) ^ 0xB400608929024BBELL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0xF148DC75BBC60A24) - (v17 + v16) - 0x78A46E3ADDE30512) ^ 0x6D962CD4E1136F5BLL;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0xD285E8FA043C68B6) - (v20 + v19) + a5) ^ a6 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__((((2 * (v20 + v19)) | 0xD285E8FA043C68B6) - (v20 + v19) + a5) ^ a6, 8) + v21) ^ 0xE5AF1AB32EBD3CDDLL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = ((v11 | (2 * (v24 + v23))) - (v24 + v23) - 0x1093D976F9A7E531) ^ 0xD74E108035E25210;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0xA82620A559D2DA78;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8) + v28;
  v30 = (0x9DA735AFFA0D7C2FLL - (v29 | 0x9DA735AFFA0D7C2FLL) + (v29 | 0x6258CA5005F283D0)) ^ v7;
  *v12 = (((__ROR8__(v30, 8) + (v30 ^ __ROR8__(v28, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v12 & 7u))) ^ *(STACK[0xCED0] + (a1 + v9 + 2737));
  return (*(STACK[0x57D8] + 8 * (((v10 < a2) * a4) ^ (v10 + a3))))();
}

uint64_t sub_1004E9A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8];
  LODWORD(STACK[0x8644]) = STACK[0x96B4];
  v8 = STACK[0x5C70] - 0x30BDFED8F32E6595;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (v7 - 21332));
  return (*(v9 + 8 * (v7 - 17418)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004E9C78()
{
  v0 = STACK[0x51B8];
  v1 = LODWORD(STACK[0xA4D4]) - ((2 * LODWORD(STACK[0xA4D4])) & 0xFFFFC0CE) + 24679;
  v2 = STACK[0x7180];
  v3 = ((2 * LODWORD(STACK[0xCFA0])) & 0x3F7FEBFC) + (LODWORD(STACK[0xCFA0]) ^ 0x1FBFF5FE) - 532674046;
  *(v2 + v3) = BYTE1(v1) ^ 0x60;
  *(v2 + v3 + 1) = v1 ^ 0x67;
  return (*(STACK[0x57D8] + 8 * (v0 - 7733)))();
}

uint64_t sub_1004E9F50()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 19153)))(1280);
  STACK[0x9B30] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 10344) ^ 0x514F ^ (6 * (v0 ^ 0x3FD4)))) ^ v0)))();
}

uint64_t sub_1004EA000()
{
  v4 = STACK[0x51B8];
  v5 = STACK[0x51B8] - 22614;
  v6 = STACK[0x5B10];
  v7 = 1534937323 * ((v3 - 240) ^ 0xCD7888C2C6EEFB47);
  *(v2 + 608) = v7;
  *(v2 + 624) = v7 - 1388354261 - v0 + v5;
  *(v2 + 592) = (v6 + v1) ^ v7;
  *(v2 + 612) = v7 ^ v5 ^ 0xAD3F6534;
  *(v2 + 600) = -1388354261 - v7 + v5 + 4081;
  *(v2 + 616) = v7;
  *(v2 + 604) = v7 + 1451493860 + v4;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v4 + 9182)))(v3 - 240);
  return (*(v8 + 8 * *(v2 + 628)))(v9);
}

uint64_t sub_1004EA144()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x432A ^ ((v0 + 20023) | 0x14))))();
}

uint64_t sub_1004EA188()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 27443)))();
  STACK[0x8958] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004EA378@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x271C];
  v3 = 1534937323 * ((v1 + 0x3FF757F1883B9871 - 2 * ((v1 - 240) & 0x3FF757F1883B9961)) ^ 0xF28FDF334ED56226);
  STACK[0x1D4D8] = v3;
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((v1 - 2009360271 - 2 * ((v1 - 240) & 0x883B9961)) ^ 0x4ED56226);
  STACK[0x1D4C0] = (a1 != 0xB4CD795C194A8D75) ^ v3;
  LODWORD(STACK[0x1D4D4]) = v2 ^ (1534937323 * ((v1 - 2009360271 - 2 * ((v1 - 240) & 0x883B9961)) ^ 0x4ED56226));
  LODWORD(STACK[0x1D4E0]) = (v2 ^ 0xC) + 1534937323 * ((v1 - 2009360271 - 2 * ((v1 - 240) & 0x883B9961)) ^ 0x4ED56226);
  LODWORD(STACK[0x1D4C8]) = LODWORD(STACK[0x2710]) - 1534937323 * ((v1 - 2009360271 - 2 * ((v1 - 240) & 0x883B9961)) ^ 0x4ED56226);
  v4 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((v1 - 2009360271 - 2 * ((v1 - 240) & 0x883B9961)) ^ 0x4ED56226) + 1451493860 + STACK[0x51B8];
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v4 + 9182)))(v1 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1004EA4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __ROR8__((v6 + a5) & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = v7 - ((2 * v7 - 0x38C922E28775EE02) & 0xD304B6D2E456BDBALL) - 0x32E23607D18F9824;
  v9 = v8 ^ 0xECE47901BBF94870;
  v8 ^= 0xF03F0D7459D10F8FLL;
  v10 = __ROR8__(v9, 8);
  v11 = ((((v10 + v8) << (((v5 - 24) | 0x10) ^ 0x79)) | 0x16AA958E2B9B6102) - (v10 + v8) - 0xB554AC715CDB081) ^ 0xF6FDA9E322AF9016;
  v12 = v11 ^ __ROR8__(v8, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (0xA8A9DECFEBCF470FLL - ((v13 + v12) | 0xA8A9DECFEBCF470FLL) + ((v13 + v12) | 0x575621301430B8F0)) ^ 0x476E450536FDAF62;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = __ROR8__((((2 * (v16 + v15)) & 0x5471834305A9F404) - (v16 + v15) - 0x2A38C1A182D4FA03) ^ 0x6A31FC455C254ACALL, 8);
  v18 = (((2 * (v16 + v15)) & 0x5471834305A9F404) - (v16 + v15) - 0x2A38C1A182D4FA03) ^ 0x6A31FC455C254ACALL ^ __ROR8__(v15, 61);
  v19 = (v17 + v18) ^ 0x9882E727DB37CF94;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5FD252103B569EALL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x7B5626353E243BAALL;
  return (*(STACK[0x57D8] + 8 * v5))(a1, (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * ((v6 + a5) & 7))) ^ *(v6 + a5));
}

uint64_t sub_1004EA730@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W8>)
{
  v7 = STACK[0x9128] - 0x30BDFED8F32E6575;
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (a7 ^ 0xB586));
  return (*(v8 + 8 * (a7 ^ 0x89DF ^ (((a7 ^ 0xB586) + 7186) | 0xC03))))(v7, a1, a2, a3, a4, a5, a6, 3562894612);
}

uint64_t sub_1004EA988(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *(*v8 + (*v12 & v11 & (((v13 + v10) & 0xFFFFFFF8) + a1)));
  v23 = __ROR8__((v13 + v10) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((v16 & (2 * (v23 + v22))) - (v23 + v22) + v17) ^ v18;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a2;
  v27 = __ROR8__(v26, 8);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (v27 + v28) ^ a3;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (a4 - ((v31 + v30) | a4) + ((v31 + v30) | v19)) ^ v20;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a6;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a5;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  *(v13 + v10) = ((a8 - ((v40 + v39) | a8) + ((v40 + v39) | v21)) ^ v14) >> (8 * ((v13 + v10) & 7));
  return (*(STACK[0x57D8] + 8 * (((v10 == 63) * v15) ^ v9)))();
}

uint64_t sub_1004EAB18()
{
  if (v1)
  {
    v3 = v0 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * (((v2 ^ 0x720A ^ (v2 + 16948) ^ 0x3065) * v4) ^ v2)))();
}

uint64_t sub_1004EAB5C()
{
  v1 = STACK[0xB628];
  STACK[0x8410] = STACK[0xB628];
  return (*(STACK[0x57D8] + 8 * ((((v0 - 1444546381) ^ 0x272F3515) + 2101944381) ^ v0 ^ ((((*(v1 - 0x1883660EE814440ELL) - v0) | (v0 - *(v1 - 0x1883660EE814440ELL))) >= 0) * ((v0 - 1444546381) & 0xD8D09EBF ^ 0x27A9)))))(4427);
}

uint64_t sub_1004EAC4C()
{
  v1 = *(STACK[0xB100] - 0x30BDFED8F32E6559);
  v2 = STACK[0x7CA0];
  v3 = STACK[0x67F0];
  v4 = STACK[0xB100] - 0x30BDFED8F32E66E0;
  v5 = STACK[0xBCA8];
  v6 = STACK[0xB100] - 0x30BDFED8F32E6585;
  v7 = STACK[0x6614];
  v8 = STACK[0xB85C];
  v9 = STACK[0x6188];
  v10 = STACK[0x97A0];
  v11 = STACK[0xB100] - 0x30BDFED8F32E6625;
  LODWORD(STACK[0x68E4]) = *(STACK[0xB100] - 0x30BDFED8F32E6565);
  STACK[0x5E10] = v4;
  STACK[0xAC88] = 0;
  LODWORD(STACK[0xAA28]) = v1;
  STACK[0x7480] = v6;
  STACK[0x72C0] = v2;
  STACK[0x6118] = v3;
  STACK[0xBB78] = v5;
  LODWORD(STACK[0x7FEC]) = v7;
  LODWORD(STACK[0x787C]) = v8;
  STACK[0x7418] = v9;
  STACK[0x64A8] = 0;
  STACK[0xA4B0] = 0;
  STACK[0xCCF0] = 0;
  STACK[0xB038] = 0;
  STACK[0xAF10] = &STACK[0x82C0];
  STACK[0x7FF0] = 0;
  LODWORD(STACK[0xA524]) = -769884012;
  STACK[0x9010] = v10;
  STACK[0x7C00] = v11;
  LODWORD(STACK[0xA1D0]) = -769884028;
  LODWORD(STACK[0xA5BC]) = (*(*STACK[0x51F0] + (*STACK[0x51E8] & ((v0 + 1911395898) & 0xDFF257AF ^ 0x53358FF1))) & 0x7FFFFFFF ^ 0x39E8D924) + 456300670;
  v12 = STACK[0x81DC];
  LODWORD(STACK[0x7E3C]) = -1066788873;
  LODWORD(STACK[0x8458]) = v12;
  return (*(STACK[0x57D8] + 8 * v0))(0);
}

uint64_t sub_1004EAE7C()
{
  v2 = v0 | 2;
  LODWORD(STACK[0xE648]) = -143113071;
  LOBYTE(STACK[0xE64F]) = v1;
  v3 = STACK[0x57D8];
  STACK[0xD5C8] = *(STACK[0x57D8] + 8 * v2);
  return (*(v3 + 8 * (((v2 ^ 0x5DCB) - 12632) ^ v2)))();
}

uint64_t sub_1004EAFB4()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x68BC];
  LODWORD(STACK[0x9094]) = -32197479;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004EB0A8@<X0>(int a1@<W8>)
{
  STACK[0x6880] = (((LODWORD(STACK[0xAEDC]) ^ 0xD24075BA57137C73) + 0x2DBF8A45A8EC838DLL) ^ ((LODWORD(STACK[0xAEDC]) ^ 0xF9264A3DA7C50957) + 0x6D9B5C2583AF6A9) ^ ((LODWORD(STACK[0xAEDC]) ^ 0x2B663F8722CAF5B0) - 0x2B663F8722CAF5B0)) + 3525083284u;
  v1 = STACK[0x5D30];
  STACK[0x8EF0] = STACK[0x5D30];
  LODWORD(STACK[0x9564]) = STACK[0xC1A4];
  STACK[0xC498] = STACK[0x7DD0];
  STACK[0xCA90] = STACK[0x89E0];
  STACK[0x6A48] = 0x30BDFED8F32E6831;
  STACK[0x61E0] = 0x79296B4A625EDF44;
  STACK[0xBB80] = 0xD38CBDD3ACAFF84ALL;
  LODWORD(STACK[0x82A0]) = -769884012;
  STACK[0x6F58] = 0;
  LODWORD(STACK[0xB38C]) = -769884012;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * ((((a1 + 2082580438) ^ 0x7C21CFBD) + 9191) ^ (a1 + 2082580438) & 0x83DE5C5E)) ^ a1)))();
}

uint64_t sub_1004EB244()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1B9C])))(v2);
}

uint64_t sub_1004EB2B4()
{
  v2 = STACK[0x6A08];
  STACK[0xB420] = STACK[0xAD48];
  LODWORD(STACK[0x8C54]) = -769884028;
  STACK[0x8EA0] = v2;
  LODWORD(STACK[0xBC38]) = v1;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004EB314@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, int a9@<W8>)
{
  v14 = *(STACK[0x57D8] + 8 * v10);
  v15 = v11 - 71138653;
  v16 = v9 + (v15 + 792);
  v17 = *(*a8 + (((v16 & 0x2C9A508) + (v16 & 0xFD365AF0 | 0x2C9A508) - 150412152) & *v13));
  v18 = (__ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8) + v17) ^ 0xF41651499F5E3C67;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ a2;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0x36B19C002D39EBCALL) - (v22 + v21) - 0x1B58CE00169CF5E6) ^ 0xC6D2E538D1563381;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v12;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a7;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0xCA094F3DF5CB0D84) - 0x1AFB5861051A793ELL) ^ 0x4D22873BA3375CBALL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a4;
  *v16 = (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v31, 61))) ^ a6) >> (8 * (v16 & 7u))) ^ HIBYTE(a9) ^ 0x5B;
  v33 = v9 + (v15 + 793);
  v34 = *(*a8 + ((*v13 & ((v33 & 0x721C07C8 | 0x8DE3F833) + a1 + (v33 & 0x8DE3F830 | 0x721C07CD))) & 0xFFFFFFFFFFFFFFF8));
  v35 = __ROR8__(v33 & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = (((2 * (v34 + v35)) | 0x5FA457BA797AB44ALL) - (v34 + v35) - 0x2FD22BDD3CBD5A25) ^ 0xDBC47A94A3E36642;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a2;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a3;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v12;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0x3C6997B592F37FCCLL) - (v44 + v43) - 0x1E34CBDAC979BFE6) ^ 0xD9E9022C053C08C7;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ a5;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ a4;
  *v33 = (((__ROR8__(v49, 8) + (v49 ^ __ROR8__(v48, 61))) ^ a6) >> (8 * (v33 & 7u))) ^ BYTE2(a9) ^ 0x42;
  v50 = v9 + (v15 + 794);
  v51 = *(*a8 + ((((v50 & 0xFFFFFFF8) + a1) & *v13) & 0xFFFFFFFFFFFFFFF8));
  v52 = (v51 + __ROR8__(v50 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (0x833C1CD31AA34607 - ((v54 + v53) | 0x833C1CD31AA34607) + ((v54 + v53) | 0x7CC3E32CE55CB9F8)) ^ 0x69F1A1C2D9ACD3B1;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ a3;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v12;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ a7;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((2 * (v63 + v62)) | 0x31541E76EE5041A4) - (v63 + v62) - 0x18AA0F3B772820D2) ^ 0xB08C2F9E2EFAFAAALL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ a4;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  *v50 = (((0x28EA607C24818A7 - ((v68 + v67) | 0x28EA607C24818A7) + ((v68 + v67) | 0xFD7159F83DB7E758)) ^ 0x3CB2912A9972AF70) >> (8 * (v50 & 7u))) ^ BYTE1(a9) ^ 0xCE;
  v69 = v9 + (v15 + 795);
  v70 = *(*a8 + ((((v69 & 0xFFFFFFF8) + a1) & *v13) & 0xFFFFFFFFFFFFFFF8));
  v71 = __ROR8__(v69 & 0xFFFFFFFFFFFFFFF8, 8);
  v72 = (((2 * (v70 + v71)) & 0x10C8CA09683FCCE8) - (v70 + v71) + 0x779B9AFB4BE0198BLL) ^ 0x838DCBB2D4BE25ECLL;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (((2 * ((v74 + v73) ^ 0x5FF47184F0A91C61)) & 0xB0D0A26DF9E1418ALL) - ((v74 + v73) ^ 0x5FF47184F0A91C61) - 0x58685136FCF0A0C6) ^ 0xED519DA3CF562912;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ a3;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ v12;
  v80 = __ROR8__(v79, 8);
  v81 = v79 ^ __ROR8__(v78, 61);
  v82 = (v80 + v81) ^ a7;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ a5;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = __ROR8__((((2 * (v86 + v85)) & 0x3BA501648C85779ELL) - (v86 + v85) + 0x622D7F4DB9BD4430) ^ 0x3DA093731A254E2BLL, 8) + ((((2 * (v86 + v85)) & 0x3BA501648C85779ELL) - (v86 + v85) + 0x622D7F4DB9BD4430) ^ 0x3DA093731A254E2BLL ^ __ROR8__(v85, 61));
  *v69 = a9 ^ 0x89 ^ (((0xC21C81BC46BF95C5 - (v87 | 0xC21C81BC46BF95C5) + (v87 | 0x3DE37E43B9406A3ALL)) ^ 0xFC20B6911D852212) >> (8 * (v69 & 7u)));
  return v14();
}

uint64_t sub_1004EB914()
{
  *STACK[0x3DA8] = v0;
  *STACK[0x3D40] = STACK[0x9D88] ^ 0xC79E41E01ACBE866 ^ *(*STACK[0x51F0] + (*STACK[0x51E8] & (v1 + 1267731281))) & 0x7FFFFFFFFFFFFFFFLL;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004EB9DC()
{
  v1 = (v0 + 717826120) & 0xD536B9F2;
  v2 = STACK[0x7ED8];
  STACK[0xE130] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = ((v1 + 501) ^ 0xFFFFFFFFFFFF96FALL) + v2 + ((v1 + 1383158275) & 0xAD8EC6FD);
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x55CE)))(25);
  STACK[0x93D0] = v4;
  return (*(v3 + 8 * ((1021 * (v4 != 0)) ^ v1)))();
}

uint64_t sub_1004EBA88()
{
  v1 = STACK[0x6A08];
  STACK[0xB420] = STACK[0x8C80];
  LODWORD(STACK[0x8C54]) = STACK[0xAA60];
  STACK[0x8EA0] = v1;
  LODWORD(STACK[0xBC38]) = -746967310;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004EBB88@<X0>(int a1@<W8>)
{
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v2 + 3025)))(a1 ^ ((v2 ^ 0xF77834FC) - v1 + 1252) ^ 0x64D22D7C);
  STACK[0x7AA8] = v4;
  return (*(v3 + 8 * ((25 * (v4 == 0)) ^ v2)))();
}

uint64_t sub_1004EBC88()
{
  STACK[0x6158] = &STACK[0x10110];
  v0 = *STACK[0x45F8];
  v1 = *STACK[0x45F0];
  LODWORD(STACK[0x6D94]) = (LODWORD(STACK[0x21A0]) & (48 * (v1 - v0))) + 16;
  v2 = (3 * (v1 - v0)) & 0xF;
  if (v2 == 1)
  {
    v2 = 0;
  }

  LODWORD(STACK[0x5DB4]) = v2;
  return (*(STACK[0x57D8] + 8 * ((115 * (LODWORD(STACK[0xB60C]) != -769884012)) ^ LODWORD(STACK[0x219C]))))();
}

uint64_t sub_1004EBD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] ^ 0x5D8B6ECC;
  v8 = STACK[0xD030];
  STACK[0xD050] = STACK[0xD030];
  v9 = STACK[0x57D8];
  v10 = STACK[0x2180];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2180]));
  return (*(v9 + 8 * ((v7 - 1569398743) ^ v10)))(v8 + 8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004EBE50(int a1)
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 52;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004EBEE8()
{
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xEEC3B11C));
  v3 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v2 ^ 0xEEC3B11F) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v2 ^ 0xEEC3B11F;
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v3 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  LODWORD(v9) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  STACK[0xEF50] = 0;
  STACK[0xEF58] = v0;
  v10 = 16777619 * ((-289165025 * v9 + 7) ^ (-289165025 * v9)) % 7;
  v11 = *(&STACK[0xEF50] | v10);
  *(&STACK[0xEF50] | v10) = 0;
  LOBYTE(STACK[0xEF57]) = v11;
  v12 = 16777619 * ((-289165025 * v9 + 6) ^ (-289165025 * v9)) % 6;
  v13 = *(&STACK[0xEF50] | v12);
  *(&STACK[0xEF50] | v12) = STACK[0xEF56];
  LOBYTE(STACK[0xEF56]) = v13;
  v14 = 16777619 * ((-289165025 * v9 + 5) ^ (-289165025 * v9)) % 5;
  v15 = *(&STACK[0xEF50] | v14);
  *(&STACK[0xEF50] | v14) = STACK[0xEF55];
  LOBYTE(STACK[0xEF55]) = v15;
  v16 = STACK[0xEF50];
  LOBYTE(STACK[0xEF50]) = STACK[0xEF54];
  LOBYTE(STACK[0xEF54]) = v16;
  v17 = 16777619 * ((-289165025 * v9 + 3) ^ (-289165025 * v9)) % 3;
  v18 = *(&STACK[0xEF50] | v17);
  *(&STACK[0xEF50] | v17) = STACK[0xEF53];
  LOBYTE(STACK[0xEF53]) = v18;
  v19 = STACK[0xEF51];
  LOBYTE(STACK[0xEF52]) = STACK[0xEF50];
  LOWORD(STACK[0xEF50]) = v19;
  v20 = vdup_n_s32(-289165025 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = -289165025 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xEF50] = vmla_s32(v22, STACK[0xEF50], vdup_n_s32(0x1000193u));
  STACK[0xEF58] ^= STACK[0xEF50];
  STACK[0xEF58] = vmul_s32(vsub_s32(STACK[0xEF58], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xEF5A];
  LOWORD(STACK[0xEF59]) = STACK[0xEF58];
  LOBYTE(STACK[0xEF58]) = v23;
  v24 = (&STACK[0xEF58] | v17);
  v25 = *v24;
  *v24 = STACK[0xEF5B];
  LOBYTE(STACK[0xEF5B]) = v25;
  LOBYTE(v24) = STACK[0xEF58];
  LOBYTE(STACK[0xEF58]) = STACK[0xEF5C];
  LOBYTE(STACK[0xEF5C]) = v24;
  v26 = (&STACK[0xEF58] | v14);
  LOBYTE(v24) = *v26;
  *v26 = STACK[0xEF5D];
  LOBYTE(STACK[0xEF5D]) = v24;
  v27 = (&STACK[0xEF58] | v12);
  LOBYTE(v26) = *v27;
  *v27 = STACK[0xEF5E];
  LOBYTE(STACK[0xEF5E]) = v26;
  v28 = (&STACK[0xEF58] | v10);
  v29 = *v28;
  *v28 = STACK[0xEF5F];
  LOBYTE(STACK[0xEF5F]) = v29;
  v30 = STACK[0xEF58];
  v31 = (-289165025 * STACK[0xEF58]) ^ v9;
  for (i = 1; i != 2; ++i)
  {
    v33 = 16777619 * ((v31 + i) ^ v31) % i;
    v34 = *(v30 + 8 * v33) ^ *(v30 + 8 * i);
    *(v30 + 8 * i) = v34;
    v35 = *(v30 + 8 * v33) ^ v34;
    *(v30 + 8 * v33) = v35;
    *(v30 + 8 * i) ^= v35;
  }

  v36 = 0;
  v37 = xmmword_1012370F0;
  v38 = xmmword_101237100;
  v39 = xmmword_101237110;
  v40 = xmmword_101237120;
  v41 = vdupq_n_s32(v31);
  v42.i64[0] = 0x9B009B009B009BLL;
  v42.i64[1] = 0x9B009B009B009BLL;
  v43.i64[0] = 0x1000000010;
  v43.i64[1] = 0x1000000010;
  do
  {
    v44 = *(v30 + v36);
    v45 = vmovl_high_u8(v44);
    v46 = vmovl_u8(*v44.i8);
    v48.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v39, v41), vsubq_s32(v39, v41)), v41), vmull_high_u16(v46, v42));
    v48.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v38, v41), vsubq_s32(v38, v41)), v41), vmull_u16(*v45.i8, 0x9B009B009B009BLL));
    v48.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v40, v41), vsubq_s32(v40, v41)), v41), vmull_u16(*v46.i8, 0x9B009B009B009BLL));
    v48.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v37, v41), vsubq_s32(v37, v41)), v41), vmull_high_u16(v45, v42));
    *(v30 + v36) = vqtbl4q_s8(v48, xmmword_101237130);
    v36 += 16;
    v40 = vaddq_s32(v40, v43);
    v39 = vaddq_s32(v39, v43);
    v38 = vaddq_s32(v38, v43);
    v37 = vaddq_s32(v37, v43);
  }

  while (v36 != 16);
  *STACK[0x4420] = STACK[0xEF58];
  return (*(STACK[0x57D8] + 8 * (v1 - 12253)))(v37, v38, v39, v40);
}

uint64_t sub_1004EC384()
{
  v1 = STACK[0x57D8];
  STACK[0xC068] = (*(STACK[0x57D8] + 8 * (v0 + 12321)))();
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1004EC3E4(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v9 = a2 + 1955773000 < a8;
  if (a3 < v8 != (a2 + 1955773000) < 0xCB110D0E)
  {
    v9 = a3 < v8;
  }

  return (*(STACK[0x57D8] + 8 * ((111 * v9) ^ a6)))();
}

uint64_t sub_1004ECDC8@<X0>(unint64_t a1@<X8>)
{
  v3 = STACK[0xA6A8];
  v4 = STACK[0xB860] + 4;
  v5 = STACK[0xA2B8];
  v6 = STACK[0xA150];
  v7 = 410706167 * ((((v2 - 240) | 0xC7F2292F) - ((v2 - 240) & 0xC7F2292F)) ^ 0x5C2D0579);
  LODWORD(STACK[0x1D4D0]) = v1 - v7 - 2126373713;
  STACK[0x1D4C8] = v3;
  STACK[0x1D4C0] = a1;
  STACK[0x1D4D8] = v5 + 4;
  STACK[0x1D4E0] = v4;
  LODWORD(STACK[0x1D4EC]) = v7 + v6 + 616621898 - 2 * ((v6 + ((v1 + 14023) ^ 0x3FFFB1E1)) & 0x24C0E74F ^ v6 & 1);
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x6B34)))(v2 - 240);
  return (*(v8 + 8 * ((11597 * (LODWORD(STACK[0x1D4E8]) == -143113071)) ^ v1)))(v9);
}

uint64_t sub_1004ECF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x51B8] ^ 0x7569;
  v9 = STACK[0x51B8] - 21397;
  LODWORD(STACK[0x89C8]) = v7;
  v10 = STACK[0x8A58];
  v11 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v9);
  return (*(v11 + 8 * (v8 ^ v9 ^ 0x3DB2)))(v10, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004ECFA0()
{
  LODWORD(STACK[0x7650]) = v1;
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 1403744920;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004ED068@<X0>(int a1@<W8>)
{
  STACK[0x7ED8] -= 16;
  v3 = STACK[0x3E08];
  LODWORD(STACK[0x1D4C8]) = ((a1 + 1358349415) ^ 0xE78) - STACK[0x3E08];
  STACK[0x1D4C0] = v3 ^ 0xF7784491;
  LODWORD(STACK[0x1D4CC]) = v3 + a1 + 1451493860;
  LODWORD(STACK[0x1D4D4]) = (a1 + 1358349415) ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4E0]) = v3 + a1 + 1358349415 - 122;
  STACK[0x1D4D8] = v3 + v1;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 + 9182)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1004ED16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x57D8];
  STACK[0xCF80] = *(STACK[0x57D8] + 8 * v4);
  return (*(v5 + 8 * (v4 ^ 0x1881)))(a1, a2, a3, a4, 0xFA35E2CDCB3E31C7, 0xE580B17D8CC5E551, 2050767130, 385182804);
}

uint64_t sub_1004ED2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x51B8] ^ 0x1E17;
  v7 = STACK[0x9050];
  v8 = STACK[0x57D8];
  v9 = STACK[0x21E8];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x21E8]));
  return (*(v8 + 8 * ((v6 - 15990) ^ v9 ^ (8131 * (v9 != 2021502949)))))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_1004ED3F4()
{
  v0 = STACK[0x25FC];
  v1 = LODWORD(STACK[0x25FC]) - 20919;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x25FC]) ^ 0x2916)))((LODWORD(STACK[0x5BC4]) - 2101965948));
  STACK[0x9D90] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (v1 ^ 0x367)) ^ v0)))();
}

uint64_t sub_1004ED4C8@<X0>(int a1@<W8>)
{
  v2 = a1 & 0xA5EADE5E;
  v3 = (a1 & 0xA5EADE5E) - 329339244;
  STACK[0x65A0] = 4;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 & 0xA5EADE5E ^ 0x2440)))(&STACK[0x1D1CD], &STACK[0x6274], &STACK[0x65A0], 0, 0);
  v6 = 551690071 * ((v1 - 240) ^ 0x719D52CE4EED5357);
  LODWORD(STACK[0x1D4C0]) = (v2 - 1079089617) ^ v6;
  LODWORD(STACK[0x1D4CC]) = v3 - v6;
  LODWORD(STACK[0x1D4C4]) = v6 ^ v3 ^ 0xF13;
  LODWORD(STACK[0x1D4D0]) = v6;
  STACK[0x1D4D8] = v5 - v6;
  LODWORD(STACK[0x1D4C8]) = (v3 ^ 0x1F6) - v6;
  STACK[0x1D4E0] = v6;
  v7 = (*(v4 + 8 * (v2 + 9201)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_1004ED5DC()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0xDC6C]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 14476)))();
}

uint64_t sub_1004ED64C@<X0>(_BYTE *a1@<X8>)
{
  a1[24] = 23 * (((v2[24] ^ 0x28) - 75) ^ ((v2[24] ^ 9) - 106) ^ ((v2[24] ^ ((v1 + 47) | 0x10) ^ 4) + 11)) + 50;
  a1[25] = 23 * (((v2[25] ^ 0xB) + 11) ^ ((v2[25] ^ 0x94) - 106) ^ ((v2[25] ^ 0xB5) - 75)) + 50;
  a1[26] = 23 * (((v2[26] ^ 0xDE) + 11) ^ ((v2[26] ^ 0x41) - 106) ^ ((v2[26] ^ 0x60) - 75)) + 50;
  a1[27] = 23 * (((v2[27] ^ 0x4B) + 11) ^ ((v2[27] ^ 0xD4) - 106) ^ ((v2[27] ^ 0xF5) - 75)) + 50;
  a1[28] = 23 * (((v2[28] ^ 0x5A) + 11) ^ ((v2[28] ^ 0xC5) - 106) ^ ((v2[28] ^ 0xE4) - 75)) + 50;
  a1[29] = 23 * (((v2[29] ^ 0x77) + 11) ^ ((v2[29] ^ 0xE8) - 106) ^ ((v2[29] ^ 0xC9) - 75)) + 50;
  a1[30] = 23 * (((v2[30] ^ 0xBC) + 11) ^ ((v2[30] ^ 0x23) - 106) ^ ((v2[30] ^ 2) - 75)) + 50;
  return (*(STACK[0x57D8] + 8 * ((26829 * (v1 < 0xA5071964)) ^ (v1 + 144041052))))();
}

uint64_t sub_1004EDAEC()
{
  v0 = (STACK[0x51B8] - 20503) | 0x2500;
  v1 = STACK[0x51B8] - 21295;
  STACK[0x6F80] = STACK[0x7718] + LODWORD(STACK[0x8BBC]);
  v2 = STACK[0x7ED8];
  STACK[0xBDA8] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v2 + 16;
  STACK[0xB7A8] = 0;
  v3 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * ((v0 - 7124) ^ v1)))();
}

uint64_t sub_1004EDC0C@<X0>(unsigned int a1@<W8>)
{
  LODWORD(STACK[0x93FC]) = (a1 + 8969) ^ 0x6E2B | v1;
  if (STACK[0x5D48])
  {
    v2 = STACK[0x7D20] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0x57D8] + 8 * ((v3 * ((a1 - 153711717) & 0x9292D46 ^ 0x563)) ^ a1)))();
}

uint64_t sub_1004EDD54()
{
  v0 = STACK[0x25F8];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 859)))((((v0 - 30355) | 0xA0) ^ 0x82B68974) + LODWORD(STACK[0x9D6C]));
  STACK[0xCC88] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 30930) | 0x302C) ^ 0x3028)) ^ v0)))();
}

uint64_t sub_1004EDF1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = STACK[0x5780];
  LODWORD(STACK[0x57A0]) = v9 - 3457;
  v14 = (v11 | ((v11 < ((v9 - 3457) ^ 0xF2A785Du)) << 32)) + 0x40BA4B7EBD38DBC9;
  v15 = (((*(STACK[0x5790] + 8 * v14 - 0x5D25BF66319BCB8) ^ 0xFA4CF5C98A2FDA8FLL) + 0x246BD0A0F72B2A60) ^ ((*(STACK[0x5790] + 8 * v14 - 0x5D25BF66319BCB8) ^ 0x203B6303CAF63397) - 0x1E3B995480D3CB8) ^ ((*(STACK[0x5790] + 8 * v14 - 0x5D25BF66319BCB8) ^ 0xC36E8FD359C0F001) + 0x1D49AABA24C400D2)) * v6 + 0xC14272806C0C5CALL;
  v16 = ((v15 ^ 0xCBD067512EB44CB2) + 0x136F67AEE146099ALL) ^ v15 ^ ((v15 ^ 0xE980CE62192B450CLL) + 0x313FCE9DD6D90028) ^ ((v15 ^ 0xFB2FFB45A86D4895) + 0x2390FBBA679F0DBFLL) ^ ((v15 ^ 0xFE3FAD76AFFFFBFFLL) + 0x2680AD89600DBED5);
  v17 = (v11 | ((v11 < ((v9 - 3457) ^ 0xF2A785Du)) << 32)) + 0x659785A46D0B73EDLL + (((v16 ^ v5 ^ 0x94AE799AAF723595) + 0xE6B1414270795F5) ^ ((v16 ^ v5 ^ 0xE976D3B759CE9235) + 0x73B3BE39D1BB3255) ^ ((v16 ^ v5 ^ 0x5A98552DC6B11D74) - 0x3FA2C75CB13B42EALL));
  v18 = (v17 ^ 0x9ECAF7AC8B13550FLL) & (2 * (v17 & 0xDCE2E7CCCB52158FLL)) ^ v17 & 0xDCE2E7CCCB52158FLL;
  v19 = ((2 * (v17 ^ 0xB78FFF3D1D377403)) ^ 0xD6DA31E3ACCAC318) & (v17 ^ 0xB78FFF3D1D377403) ^ (2 * (v17 ^ 0xB78FFF3D1D377403)) & v10;
  v20 = v19 ^ 0x2925081052252084;
  v21 = (v19 ^ 0x4208106104404008) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0xADB463C759958630) & v20 ^ (4 * v20) & v10;
  v23 = (v22 ^ 0x292400C150050000) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x424918308660618CLL)) ^ 0xB6D18F1D665618C0) & (v22 ^ 0x424918308660618CLL) ^ (16 * (v22 ^ 0x424918308660618CLL)) & (v10 - 12);
  v25 = (v24 ^ 0x2241081146440000) & (v23 << 8) ^ v23;
  v26 = (((v24 ^ 0x492C10E09021610CLL) << 8) ^ 0x6D18F1D665618C00) & (v24 ^ 0x492C10E09021610CLL) ^ ((v24 ^ 0x492C10E09021610CLL) << 8) & (v10 - 140);
  v27 = v17 ^ (2 * (((v25 ^ v10 ^ (v26 ^ 0x690810D044610000) & (v25 << 16)) << 32) & 0x6B6D18F100000000 ^ v25 ^ v10 ^ (v26 ^ 0x690810D044610000) & (v25 << 16) ^ (((v25 ^ v10 ^ (v26 ^ 0x690810D044610000) & (v25 << 16)) << 32) ^ 0x5665618C00000000) & (((v26 ^ 0x26508219204618CLL) << 16) & 0x6B6D18F100000000 ^ 0x630C089000000000 ^ (((v26 ^ 0x26508219204618CLL) << 16) ^ 0x18F1D66500000000) & (v26 ^ 0x26508219204618CLL))));
  v28 = (HIDWORD(v27) ^ 0x73F2177532CE026) & (v27 ^ 0x3EF20FA76798D697);
  v29 = (((HIDWORD(v27) ^ v27 ^ 0x76591A705C9005C9) + 0x6ED0BB5DF6C7CA39) ^ ((HIDWORD(v27) ^ v27 ^ 0xC13E07BFFE2C645DLL) - 0x2648596DAB845453) ^ ((HIDWORD(v27) ^ v27 ^ 0x3995CAE04BD6602CLL) + 0x211C6BCDE181AFDELL)) + 0x3D31D750872C67E1 + ((((2 * (v28 ^ v27 & 0x73F2177DDDE3709)) ^ 0xE8749ED0C3DF6DD6) - 0x6DFC5B7379F1BA14) ^ (((2 * (v28 ^ v27 & 0x73F2177DDDE3709)) ^ 0x5244BE2776486D89) + 0x2833847B339945B5) ^ (((2 * (v28 ^ v27 & 0x73F2177DDDE3709)) ^ 0xB65422B93EA72C5DLL) - 0x33DCE71A8489FB9FLL));
  v30 = ((2 * (v29 ^ 0x2D61730B14F99518)) ^ 0x36BC1322E49AA11ALL) & (v29 ^ 0x2D61730B14F99518) ^ (2 * (v29 ^ 0x2D61730B14F99518)) & v8;
  v31 = (v29 ^ 0x253F721B54B09510) & (2 * (v29 & 0xB63F7A9A66B4C595)) ^ v29 & 0xB63F7A9A66B4C595;
  v32 = ((4 * (v30 ^ 0x8942089112455085)) ^ 0x6D782645C9354234) & (v30 ^ 0x8942089112455085) ^ (4 * (v30 ^ 0x8942089112455085)) & v8;
  v33 = (v30 ^ 0x101C000020000008) & (4 * v31) ^ v31;
  v34 = (v32 ^ 0x958000140054000) & (16 * v33);
  v35 = ((16 * (v32 ^ 0x9206099032481089)) ^ 0xB5E0991724D508D0) & (v32 ^ 0x9206099032481089) ^ (16 * (v32 ^ 0x9206099032481089)) & (v8 - 12);
  v36 = (v35 ^ 0x9140091120450000) & ((v34 ^ v33) << 8) ^ v34 ^ v33;
  v37 = (((v35 ^ 0xA1E00805208500DLL) << 8) ^ 0x5E0991724D508D00) & (v35 ^ 0xA1E00805208500DLL) ^ ((v35 ^ 0xA1E00805208500DLL) << 8) & (v8 - 140);
  v38 = v36 ^ (v8 + 1) ^ (v37 ^ 0x1A08011040400000) & (v36 << 16);
  v39 = (v29 ^ (2 * ((v38 << 32) & 0x1B5E099100000000 ^ v38 ^ ((v38 << 32) ^ 0x724D508D00000000) & (((v37 ^ 0x81560881320D508DLL) << 16) & 0x1B5E099100000000 ^ 0x124E099000000000 ^ (((v37 ^ 0x81560881320D508DLL) << 16) ^ 0x991724D00000000) & (v37 ^ 0x81560881320D508DLL))))) >> 16;
  v40 = v29 + 0x2E8A1099AC6FE251 + (((v39 ^ 0x91AD2FDFB96AD2B1) + 0x5F9AED09F8B0FF78) ^ ((v39 ^ 0x73E5EB4C5A598E5ELL) - 0x422DD665E47C5C67) ^ ((v39 ^ 0xE24860888B89DEC1) + 0x2C7FA25ECA53F308));
  v41 = (((v40 ^ 0x2E77C7BC98531026) - 0x68F63B70F748DC83) ^ v40 ^ ((v40 ^ 0xC1C23CEB79594BE9) + 0x78BC3FD8E9BD78B4) ^ ((v40 ^ 0x5243BAE53DBE69B8) - 0x14C2462952A5A518) ^ ((v40 ^ 0xFB77BD7EB3AFFED6) + 0x4209BE4D234BCD8ELL)) >> 8;
  v16 ^= 0xFFCDC9D4727F141FLL;
  v42 = v40 - (((v41 ^ 0xC75F016EB5290C75) + 0x400D3ACC5D40B9F0) ^ ((v41 ^ 0x26A8D0CD9BFBE54ELL) - 0x5E0514908C6DAF2BLL) ^ ((v41 ^ 0xE1B1505FE2BDF2F7) + 0x66E36BFD0AD4476ELL)) + 0x5E41605723B294C3;
  v43 = ((v42 ^ 0xB4EF041B0D7BCD04) + 0x56BE59219C4381EBLL) ^ v42 ^ ((v42 ^ 0xD264560216E0CEBFLL) + 0x30350B3887D88252) ^ ((v42 ^ 0x87E71DEB82AB8DF5) + 0x65B640D11393C11CLL) ^ ((v42 ^ 0xFCC2ED37F7F73D5FLL) + 0x1E93B00D66CF71B2);
  v44 = (((v43 ^ 0xB3ED0EE9EDCEBE5) + 0x32153BE58516C2F9) ^ ((v43 ^ 0x3F82341506011E06) + 0x6A9DF1E1DCB371CLL) ^ ((v43 ^ 0x2912463EF61A46F2) + 0x1039AD35EDD06FF0)) + 0x6A7D368DA3EB390ALL;
  v45 = (v44 ^ 0x298D7214A51BF076) & (2 * (v44 & 0x8DCE0314B153C167)) ^ v44 & 0x8DCE0314B153C167;
  v46 = ((2 * (v44 ^ 0x320D7435A539F234)) ^ 0x7F86EE4228D466A6) & (v44 ^ 0x320D7435A539F234) ^ (2 * (v44 ^ 0x320D7435A539F234)) & (v12 + 2);
  v47 = ((4 * (v46 ^ 0x80411121142A1151)) ^ 0xFF0DDC8451A8CD4CLL) & (v46 ^ 0x80411121142A1151) ^ (4 * (v46 ^ 0x80411121142A1151)) & v12;
  v48 = (v47 ^ 0xBF01540010280140) & (16 * ((v46 ^ 0x3F00040000400200) & (4 * v45) ^ v45)) ^ (v46 ^ 0x3F00040000400200) & (4 * v45) ^ v45;
  v49 = ((16 * (v47 ^ 0xC2232104423213)) ^ 0xFC37721146A33530) & (v47 ^ 0xC2232104423213) ^ (16 * (v47 ^ 0xC2232104423213)) & v12;
  v50 = v49 ^ 0x3C0052010480243;
  v51 = (v49 ^ 0xBC03720104223100) & (v48 << 8) ^ v48;
  v52 = ((v50 << 8) ^ 0xC37721146A335300) & v50 ^ (v50 << 8) & (v12 - 80);
  v53 = v44 ^ (2 * (((v51 ^ (v12 + 3) ^ (v52 ^ 0x8343210000220000) & (v51 << 16)) << 32) & 0x3FC3772100000000 ^ v51 ^ (v12 + 3) ^ (v52 ^ 0x8343210000220000) & (v51 << 16) ^ (((v51 ^ (v12 + 3) ^ (v52 ^ 0x8343210000220000) & (v51 << 16)) << 32) ^ 0x146A335300000000) & (((v52 ^ 0x3C80562114482053) << 16) & 0x3FC3772100000000 ^ 0x8C2630100000000 ^ (((v52 ^ 0x3C80562114482053) << 16) ^ 0x7721146A00000000) & (v52 ^ 0x3C80562114482053))));
  v54 = (v11 | ((v11 < ((v9 - 3457) ^ 0xF2A785Du)) << 32)) + 0xC72466827C6F15BLL + (((v53 ^ v16 ^ 0xC07FE3DA26CBB45CLL) - 0x112B55CF84DFE548) ^ ((v53 ^ v16 ^ 0xA81F408648BBA54BLL) - 0x794BF693EAAFF45FLL) ^ ((v53 ^ v16 ^ 0x6A211EDCB585181DLL) + 0x448A5736E86EB6F7));
  v55 = (((v54 ^ 0x495ACB31A8F3492FLL) - 0x7007F1E315FCBC24) ^ v54 ^ ((v54 ^ 0x10FFD81E37E1D132) - 0x29A2E2CC8AEE2439) ^ ((v54 ^ 0x3BB7D603DDC6DEE8) - 0x2EAECD160C92BE2) ^ ((v54 ^ 0x5B4FFFFEFFDBB3FCLL) - 0x6212C52C42D446F4)) >> 32;
  v56 = v54 - 0x4EA61E77D7C884DALL + (((v55 ^ 0x955FBF06492A4709) + 0x1C84995967956B2CLL) ^ ((v55 ^ 0x99DAA7E07935620BLL) + 0x100181BF578A4E2ALL) ^ ((v55 ^ 0xC8518E609421FD0) - 0x7AA1C146D802CC0DLL));
  v57 = ((2 * (v56 ^ 0x8A5EA5442846BE56)) ^ 0x266300455218D10) & (v56 ^ 0x8A5EA5442846BE56) ^ (2 * (v56 ^ 0x8A5EA5442846BE56)) & 0x13318022A90C688;
  v58 = (v56 ^ 0x8A4DBD4428C67EDELL) & (2 * (v56 & 0x8B6DBD4602D678DELL)) ^ v56 & 0x8B6DBD4602D678DELL;
  v59 = ((4 * (v57 ^ 0x11108022A904288)) ^ 0x4CC6008AA431A20) & (v57 ^ 0x11108022A904288) ^ (4 * (v57 ^ 0x11108022A904288)) & 0x13318022A90C688;
  v60 = (v57 ^ 0x22100000008400) & (4 * v58) ^ v58;
  v61 = (v59 ^ 0x2A000200) & (16 * v60);
  v62 = ((16 * (v59 ^ 0x13318020090C488)) ^ 0x13318022A90C6880) & (v59 ^ 0x13318020090C488) ^ (16 * (v59 ^ 0x13318020090C488)) & 0x13318022A90C680;
  v63 = (v62 ^ 0x131000228004000) & ((v61 ^ v60) << 8) ^ v61 ^ v60;
  v64 = (((v62 ^ 0x2180002908608) << 8) ^ 0x3318022A90C68800) & (v62 ^ 0x2180002908608) ^ ((v62 ^ 0x2180002908608) << 8) & 0x13318022A90C600;
  v65 = v63 ^ 0x13318022A90C688 ^ (v64 ^ 0x110000200800000) & (v63 << 16);
  v66 = v56 ^ (2 * ((v65 << 32) & 0x133180200000000 ^ v65 ^ ((v65 << 32) ^ 0x2A90C68800000000) & (((v64 ^ 0x2318002A104688) << 16) & 0x133180200000000 ^ 0x131100200000000 ^ (((v64 ^ 0x2318002A104688) << 16) ^ 0x18022A9000000000) & (v64 ^ 0x2318002A104688))));
  v67 = v56 + 0x7362E07C71EE81D8 + ((((v66 >> 16) ^ 0x6F5AC95459500B1FLL) + 0xAC1FEDCD8C4EA7ELL) ^ (((v66 >> 16) ^ 0xC1F57241CAAAA159) - 0x5B91BA36B4C1BFC4) ^ (((v66 >> 16) ^ 0xAEAF323E1EB8FDB1) - 0x34CBFA4960D3E32CLL));
  v68 = (v67 ^ 0xA36F5F2435C96C75) & (2 * (v67 & 0xB26F1E2684114070)) ^ v67 & 0xB26F1E2684114070;
  v69 = ((2 * (v67 ^ 0xA3F147213DC96CB5)) ^ 0x233CB20F73B0598ALL) & (v67 ^ 0xA3F147213DC96CB5) ^ (2 * (v67 ^ 0xA3F147213DC96CB5)) & v4;
  v70 = v69 ^ 0x1082490088482445;
  v71 = (v69 ^ 0x11C100630800080) & (4 * v68) ^ v68;
  v72 = ((4 * v70) ^ 0x4679641EE760B314) & v70 ^ (4 * v70) & v4;
  v73 = (v72 ^ 0x184006A1402000) & (16 * v71) ^ v71;
  v74 = ((16 * (v72 ^ 0x1186190118980CC1)) ^ 0x19E5907B9D82CC50) & (v72 ^ 0x1186190118980CC1) ^ (16 * (v72 ^ 0x1186190118980CC1)) & (v4 - 4);
  v75 = (v74 ^ 0x1184100399800C00) & (v73 << 8) ^ v73;
  v76 = (((v74 ^ 0x1A490420582085) << 8) ^ 0x9E5907B9D82CC500) & (v74 ^ 0x1A490420582085) ^ ((v74 ^ 0x1A490420582085) << 8) & (v4 - 196);
  v77 = v75 ^ (v4 + 1) ^ (v76 ^ 0x1018010198080000) & (v75 << 16);
  v78 = (v67 ^ (2 * ((v77 << 32) & 0x119E590700000000 ^ v77 ^ ((v77 << 32) ^ 0x39D82CC500000000) & (((v76 ^ 0x186580621D028C5) << 16) & 0x119E590700000000 ^ 0x98400700000000 ^ (((v76 ^ 0x186580621D028C5) << 16) ^ 0x5907B9D800000000) & (v76 ^ 0x186580621D028C5))))) >> 8;
  v79 = v67 - (((v78 ^ 0x9452AFB803869BB4) - 0x5BFE4B7EFC598ECFLL) ^ ((v78 ^ 0xE677D3E4BEC53153) - 0x29DB3722411A2428) ^ ((v78 ^ 0x72971FE09EB40BFELL) + 0x42C404D99E94E17BLL)) + 0xA9F0ECA9FB49DE7;
  v80 = (v79 ^ 0xD8B957C9263BEE37) & (2 * (v79 & 0xD8B187E10833EE27)) ^ v79 & 0xD8B187E10833EE27;
  v81 = ((2 * (v79 ^ 0x49BA55C92678FA3DLL)) ^ 0x2217A4505C962834) & (v79 ^ 0x49BA55C92678FA3DLL) ^ (2 * (v79 ^ 0x49BA55C92678FA3DLL)) & v7;
  v82 = v81 ^ 0x910852282249140ALL;
  v83 = (v81 ^ 0x2000000020010) & (4 * v80) ^ v80;
  v84 = ((4 * v82) ^ 0x442F48A0B92C5068) & v82 ^ (4 * v82) & (v7 - 2);
  v85 = ((16 * (v84 ^ 0x9100920806430412)) ^ 0x10BD2282E4B141A0) & (v84 ^ 0x9100920806430412) ^ (16 * (v84 ^ 0x9100920806430412)) & (v7 - 10);
  v86 = (v85 ^ 0x1009020024010000) & (((v84 ^ 0xB402028081000) & (16 * v83) ^ v83) << 8) ^ (v84 ^ 0xB402028081000) & (16 * v83) ^ v83;
  v87 = (((v85 ^ 0x8102D0280A4A141ALL) << 8) ^ 0xBD2282E4B141A00) & (v85 ^ 0x8102D0280A4A141ALL) ^ ((v85 ^ 0x8102D0280A4A141ALL) << 8) & (v7 - 26);
  v88 = v86 ^ v7 ^ (v87 ^ 0x10200280A000000) & (v86 << 16);
  v89 = v79 ^ (2 * ((v88 << 32) & 0x110BD22800000000 ^ v88 ^ ((v88 << 32) ^ 0x2E4B141A00000000) & (((v87 ^ 0x9009D200244B041ALL) << 16) & 0x110BD22800000000 ^ 0x103D02000000000 ^ (((v87 ^ 0x9009D200244B041ALL) << 16) ^ 0x52282E4B00000000) & (v87 ^ 0x9009D200244B041ALL))));
  v90 = (((v89 ^ 0xEC1DEF0B6006BCBBLL) - 0x2E85A9163A492F1CLL) ^ ((v89 ^ 0xF7AD0A45C0397552) - 0x35354C589A76E6F5) ^ ((v89 ^ 0xE100E6EFF49A0FFALL) - 0x2398A0F2AED59C5DLL)) + 0x572C980B764850E1;
  v91 = ((v90 ^ 0x894B8178FDDBBA8CLL) + 0x7487B0599F3523DDLL) ^ v90 ^ ((v90 ^ 0xFD640C9283B19569) + 0xA83DB3E15F0C3ALL) ^ ((v90 ^ 0x89A33C8BBE1436B7) + 0x746F0DAADCFAAFE8) ^ ((v90 ^ 0xFFBF7FBF5D6F7FFDLL) + 0x2734E9E3F81E6AELL);
  v92 = (v11 | ((v11 < ((v9 - 3457) ^ 0xF2A785Du)) << 32)) - 0x72DA73C28DEF6E12 + (((v91 ^ v16 ^ 0xBC184D95E6918A85) - 0x144EA0BAA5646F88) ^ ((v91 ^ v16 ^ 0x91A35FAFB49AD8D3) - 0x39F5B280F76F3DDELL) ^ ((v91 ^ v16 ^ 0xF705EA308D689A32) - 0x5F53071FCE9D7F3FLL));
  v93 = (((v92 ^ 0x23E21DAC938BC4E1) - 0x39DF6ABB772F04B2) ^ v92 ^ ((v92 ^ 0xBFB7878EA7DFF0DDLL) + 0x5A750F66BC84CF72) ^ ((v92 ^ 0xF9B3D74A2E1D0AF8) + 0x1C715FA235463555) ^ ((v92 ^ 0x7FDB3A7FFEEDFE94) - 0x65E64D681A493EC4)) >> 32;
  v94 = v92 + 0x40DA55E78AFC14E5 + (((v93 ^ 0x8682E00863A0A9ACLL) - 0x5B1BE92489B99A92) ^ ((v93 ^ 0x4416E3A4610F6027) + 0x6670157774E9ACE7) ^ ((v93 ^ 0xC29403AC1892BE9CLL) - 0x1F0D0A80F28B8DA2));
  v95 = (((v94 ^ 0x9DDA677B62A0549FLL) + 0x1F5B5B56E2233A70) ^ v94 ^ ((v94 ^ 0x67EC42F4D3976EACLL) - 0x1A928126ACEBFFA3) ^ ((v94 ^ 0xF93678B8A3B454E0) + 0x7BB7449523373A20) ^ ((v94 ^ 0x7E7E9EE56DFFFFD0) - 0x3005D3712836EDCLL)) >> 16;
  v96 = v94 + 0x11106F34F393ADACLL + (((v95 ^ 0xD10A2BA642185595) + 0x9ECE6AB60881D51) ^ ((v95 ^ 0x8470A232A19CB4CFLL) + 0x5C966F3F830CFC0BLL) ^ ((v95 ^ 0x557AF4EA20569E26) - 0x7263C618FD39291CLL));
  v97 = (((v96 ^ 0xCB7FF614151BAAE5) + 0x53F5EA90BEB62370) ^ v96 ^ ((v96 ^ 0xDCCBE7C7E2DC860DLL) + 0x4441FB4349710F88) ^ ((v96 ^ 0x6B0A3F5F5EE0A762) - 0xC7FDC240AB2D117) ^ ((v96 ^ 0x1BCBCDF7FD75FDFELL) - 0x7CBE2E8CA9278B8ALL)) >> 8;
  v98 = v96 - (((v97 ^ 0x39015074) - 1508388622) ^ ((v97 ^ 0x4472BD2C) - 614187606) ^ ((v97 ^ 0x627BF2E) - 1724825684)) - 39314803;
  v99 = LODWORD(STACK[0x57C0]) ^ v43 ^ v89 ^ 0x57D5CB0C;
  v100 = v13 > v11 - 831167809;
  if (v13 < a4 != v11 - 831167809 < 0xDD9FBE8C)
  {
    v100 = v13 < a4;
  }

  LODWORD(STACK[0x57C0]) = v99 ^ ((v98 ^ 0x897A0BD7) + 456280615) ^ v98 ^ ((v98 ^ 0x1D35D08B) - 1887596165) ^ ((v98 ^ 0xC459AC9) - 1643259079) ^ ((v98 ^ 0xF5BDFF9B) + 1744158315);
  return (*(STACK[0x57D8] + 8 * ((2 * !v100) | (8 * !v100) | v9)))();
}

uint64_t sub_1004F0294@<X0>(uint64_t a1@<X8>)
{
  STACK[0x57C0] = STACK[0xB610];
  v1 = STACK[0x57D8];
  STACK[0xA108] = *(STACK[0x57D8] + 8 * a1);
  return (*(v1 + 8 * ((a1 + 4800) ^ a1)))();
}

uint64_t sub_1004F0368()
{
  *STACK[0xBAC8] = v0;
  STACK[0x1D4C0] = 0;
  LODWORD(STACK[0x1D4C8]) = (v1 - 1723125890) ^ (1917435887 * ((((v2 - 240) | 0xEDC136EA) - ((v2 - 240) & 0xEDC136EA)) ^ 0xB7A6DEC));
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x45BD)))(v2 - 240);
  v5 = *STACK[0x4678] > (((v1 ^ 0x412D) - 13887) ^ 0x4261);
  return (*(v3 + 8 * ((2 * v5) | (16 * v5) | v1)))(v4);
}

uint64_t sub_1004F048C()
{
  STACK[0xAF60] = v1 + 1;
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((v1 & 0xFFFFFFF8 ^ 0xD016F1B2) + ((2 * (v1 & 0xFFFFFFF8)) & 0xA02DE360) + 700137359 + 3 * (v0 ^ 0x3890)) & 0xFFFFFFF8));
  v3 = (v2 + __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v4 = v3 ^ __ROR8__(v2, 61);
  v5 = __ROR8__(v3, 8);
  v6 = (((2 * (v5 + v4)) | 0x75FBE94B2E1F756CLL) - (v5 + v4) + 0x45020B5A68F0454ALL) ^ 0xAFCFB64BABFFD0FFLL;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x2275D4C73835399BLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xE5AF1AB32EBD3CDDLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0x6E0EEAF362DC97ALL) - 0x7C8F88A864E91B43) ^ 0x44ADBEA15753539CLL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xA82620A559D2DA78;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (((2 * (v17 + v16)) | 0x6EC8DB4145FDCC6) - (v17 + v16) - 0x37646DA0A2FEE63) ^ 0x5CFBAAE4A9B7E478;
  LOBYTE(v18) = (((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v16, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v1 & 7u))) ^ *v1;
  return (*(STACK[0x57D8] + 8 * ((27684 * ((((v18 ^ 0xF2) + 5) ^ ((v18 ^ 6) - 15) ^ ((v18 ^ 0xF4) + 3)) == 74)) ^ v0)))();
}

uint64_t sub_1004F08C0@<X0>(void *a1@<X0>, int a2@<W8>)
{
  v3 = STACK[0x51B8] - 7530;
  *(v2 + 32) = (v3 ^ 0xEC0E48CE) + a2;
  *(v2 + 24) = *a1;
  return (*(STACK[0x57D8] + 8 * v3))();
}

uint64_t sub_1004F0998()
{
  STACK[0x57C0] = 0;
  v1 = STACK[0xC560];
  STACK[0x9990] = STACK[0x6BC0];
  STACK[0xAB20] = 0x1883660EE8144416;
  STACK[0x7810] = v1;
  LODWORD(STACK[0xC0DC]) = -2013569043;
  STACK[0x8000] = &STACK[0xAB20];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = 2485 * (v0 ^ 0x1149) + 2101946088;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004F0A8C()
{
  v2 = STACK[0x51B8];
  v3 = (STACK[0x51B8] - 1436211311) & 0x559AF79C;
  LODWORD(STACK[0xC8D0]) = v1;
  LOBYTE(STACK[0x85D7]) = v0;
  return (*(STACK[0x57D8] + 8 * (((v3 ^ 0x651A) * v0) ^ (v2 - 4876))))();
}

uint64_t sub_1004F0B38()
{
  STACK[0x7508] = v0;
  STACK[0x8C38] = &STACK[0x6BE8];
  LODWORD(STACK[0x9094]) = -32197501;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1004F0E10()
{
  LODWORD(STACK[0x7584]) = v1;
  LODWORD(STACK[0x8C14]) = v3;
  STACK[0x6410] = v0 + v2;
  return (*(STACK[0x57D8] + 8 * (v4 + 6578)))();
}

uint64_t sub_1004F0EB8()
{
  v1 = (2 * STACK[0x51B8]) ^ 0xB580;
  v2 = STACK[0x51B8] - 22460;
  LODWORD(STACK[0x86D4]) = v0;
  return (*(STACK[0x57D8] + 8 * (((v1 + 29394) * (v0 == -143113071)) ^ v2)))();
}

uint64_t sub_1004F0F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] - 21422;
  *(STACK[0xE638] - 0x1883660EE814440ALL) = STACK[0xE640];
  return (*(STACK[0x57D8] + 8 * (((LODWORD(STACK[0xE644]) == -143113071) * (v7 ^ 0x6527)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 4294958552);
}

uint64_t sub_1004F0F74()
{
  v0 = STACK[0x51B8] - 18310;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x82FC];
  LODWORD(STACK[0x9094]) = -32197430;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004F1084@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, int a4@<W6>, int a5@<W8>)
{
  v22 = v7 ^ ((v13 ^ (2 * (LODWORD(STACK[0x57C0]) ^ v20 ^ v6))) + v19) ^ 0x8F8D554F ^ *(*(&off_101353600 + v12) + (LODWORD(STACK[0x57C0]) ^ v20 ^ v6 ^ v17) - 2);
  v23 = v21 ^ (v22 - ((v22 << a3) & 0x3947724) + 30030738) ^ 0x7623166C;
  v24 = v18 ^ a4 ^ v8 ^ v9 ^ v10 ^ a2 ^ (v23 + v5 - (v14 & (2 * v23)));
  *(a1 + 4 * v6) = ((v24 & (a5 + 2726) ^ 0x58ACCFD) & (v24 & 0xCB9609BB ^ 0xFEEBFFF4) | v24 & 0xCA140102) ^ 0xAB15401C;
  return (*(STACK[0x57D8] + 8 * (((v11 != 0) * v15) ^ v16)))();
}

uint64_t sub_1004F11DC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x241B)))(v0);
  return (*(v1 + 8 * SLODWORD(STACK[0x1CD0])))(v2);
}

uint64_t sub_1004F1260()
{
  v0 = (STACK[0x51B8] - 18216) | 0x4C1;
  v1 = STACK[0x51B8] - 19605;
  STACK[0x7DF0] = STACK[0xA548] + SLODWORD(STACK[0x73F4]);
  v2 = STACK[0x57D8];
  STACK[0x7DD8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 + 887) ^ v1)))();
}

uint64_t sub_1004F1324()
{
  v0 = STACK[0x51B8] - 5248;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xC8A8]);
  STACK[0xC8A8] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004F13B4@<X0>(int a1@<W8>)
{
  STACK[0xBBF0] = STACK[0x9CC8];
  STACK[0xBBA0] = &STACK[0xC568];
  STACK[0xA098] = &STACK[0xBD48];
  STACK[0x6F18] = &STACK[0xCA28];
  STACK[0x7748] = &STACK[0x6378];
  STACK[0xA050] = &STACK[0x6418];
  STACK[0x79D0] = &STACK[0x5B30];
  LODWORD(STACK[0x9F54]) = 1644325723;
  return (*(STACK[0x57D8] + 8 * (a1 - 1452)))(103679699);
}

uint64_t sub_1004F1560@<X0>(unsigned int a1@<W8>)
{
  v4 = STACK[0x3708];
  v5 = 1534937323 * ((v3 - 0x2CECD4FAFEF30B4 - 2 * ((v3 - 240) & 0xFD3132B05010D03CLL)) ^ 0x3049BA7296FE2B7BLL);
  LODWORD(STACK[0x1D4E0]) = (LODWORD(STACK[0x3708]) ^ 0xF) + 1534937323 * ((v3 + 1343278924 - 2 * ((v3 - 240) & 0x5010D03C)) ^ 0x96FE2B7B);
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((v3 + 1343278924 - 2 * ((v3 - 240) & 0x5010D03C)) ^ 0x96FE2B7B);
  STACK[0x1D4D8] = v5 - a1;
  v6 = STACK[0x51B8];
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((v3 + 1343278924 - 2 * ((v3 - 240) & 0x5010D03C)) ^ 0x96FE2B7B) + 1451493860 + STACK[0x51B8];
  LODWORD(STACK[0x1D4C8]) = LODWORD(STACK[0x3704]) - 1534937323 * ((v3 + 1343278924 - 2 * ((v3 - 240) & 0x5010D03C)) ^ 0x96FE2B7B);
  LODWORD(STACK[0x1D4D4]) = v4 ^ (1534937323 * ((v3 + 1343278924 - 2 * ((v3 - 240) & 0x5010D03C)) ^ 0x96FE2B7B));
  STACK[0x1D4C0] = (v1 ^ v2) & 1 ^ v5;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v6 ^ 0x2462)))(v3 - 240);
  return (*(v7 + 8 * SLODWORD(STACK[0x1D4E4])))(v8);
}

uint64_t sub_1004F1678()
{
  v0 = (STACK[0x51B8] - 2033544296) & 0x79353DBF;
  v1 = STACK[0x51B8] - 11913;
  v2 = STACK[0x772C];
  v3 = STACK[0x8678];
  v4 = LODWORD(STACK[0x8678]) ^ LODWORD(STACK[0x772C]);
  LODWORD(STACK[0x8678]) = v4;
  v6 = v3 != v2 && v4 != v0 - 10671;
  return (*(STACK[0x57D8] + 8 * (((8 * v6) | (16 * v6)) ^ v1)))(0x30BDFED8F32E6831, 0xCF4201270CD19ABFLL);
}

uint64_t sub_1004F1720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x8670];
  *(v8 - 0x30BDFED8F32E6765) = STACK[0xB5C8];
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x16CE)))(v8 - 0x30BDFED8F32E682DLL, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004F1AB4(uint64_t a1, uint64_t a2)
{
  STACK[0xCF30] = v6 - 16;
  *v2 = *(v5 + (((v4 - 2296) | 0x1008) ^ 0xFFFFED9B) + v3);
  v2[1] = *(v5 + (v3 - 15));
  v2[2] = *(v5 + (v3 - 14));
  v2[3] = *(v5 + (v3 - 13));
  v2[4] = *(v5 + (v3 - 12));
  v2[5] = *(v5 + (v3 - 11));
  v2[6] = *(v5 + (v3 - 10));
  v2[7] = *(v5 + (v3 - 9));
  v2[8] = *(v5 + (v3 - 8));
  v2[9] = *(v5 + (v3 - 7));
  v2[10] = *(v5 + (v3 - 6));
  v2[11] = *(v5 + (v3 - 5));
  v2[12] = *(v5 + (v3 - 4));
  v2[13] = *(v5 + (v3 - 3));
  v2[14] = *(v5 + (v3 - 2));
  v2[15] = *(v5 + (v3 - 1));
  STACK[0xC308] = v7 + SLODWORD(STACK[0x9BCC]);
  v8 = STACK[0x57D8];
  STACK[0xB058] = *(STACK[0x57D8] + 8 * v4);
  return (*(v8 + 8 * (v4 ^ 0x1A04)))(a1, a2, 1932784355, 1932779842, 2362189836, 2903478839, 3423827797, 3680706797);
}

uint64_t sub_1004F1C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xC030];
  v7 = STACK[0x57D8];
  STACK[0xD060] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2424]));
  return (*(v7 + 8 * (LODWORD(STACK[0x2420]) ^ (2035 * (LODWORD(STACK[0x241C]) < 0xAFBB1903)))))(v6, a2, a3, a4, a5, a6, 0xF41651499F5E3C67, 0xE5AF1AB32EBD3CDDLL);
}

uint64_t sub_1004F1F18()
{
  LODWORD(STACK[0x1D4C8]) = -1606500204 - 16169987 * ((((2 * (v2 - 240)) | 0xBA268958) - (v2 - 240) - 1561543852) ^ 0x89D7184) + v1 - 3579;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * (v1 + 21943)))(v2 - 240);
  *(v0 - 0x79CEC8CF5A6FCE4ALL) = (v1 - 8931) ^ LODWORD(STACK[0x1D4C0]) ^ 0x5D02D31D;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1004F1FC4@<X0>(int a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, int a8@<W8>)
{
  v13 = *(STACK[0x57C0] + (((a8 + 4234) | 0x1000) ^ 0x4ACF) * a1 + 8698028 - 5816 * ((((((((a8 + 4234) | 0x1000) ^ 0x4ACFu) * a1 + 8698028) >> 3) * v9) >> 32) >> 7));
  v14 = *(STACK[0x57C0] + ((((v13 ^ 0x77228604) - 1998751236) ^ ((v13 ^ 0x69DE000A) - 1776156682) ^ ((v13 ^ 0x1EFC86C9u) - 519866057)) * v12 + 27421066) % 0x16B8);
  if (v14)
  {
    a7 = -118;
  }

  v16 = a7 ^ 0xED;
  v17 = v8 ^ a7;
  if (((v14 ^ 0x92) & 2) == 0)
  {
    v17 = v16;
  }

  if ((v14 & 4) == 0)
  {
    v17 ^= a2 ^ 0xC7;
  }

  if ((v14 & 8) != 0)
  {
    v17 ^= a3 ^ 0xC7;
  }

  v18 = a4 ^ v17 ^ 0xC7;
  if (((v14 ^ 0x92) & 0x10) != 0)
  {
    v18 = v17;
  }

  if ((v14 & 0x20) != 0)
  {
    v18 ^= a5 ^ 0xC7;
  }

  if ((v14 & 0x40) == 0)
  {
    v18 ^= a6 ^ 0xC7;
  }

  v19 = v14 < 0;
  v20 = *(STACK[0x57C0] + 293) ^ 0xC7 ^ v18;
  if (v19)
  {
    v20 = v18;
  }

  *(v10 + 4 * ((a1 * v11 + 9469466) % 0x2A40u)) = v20 ^ 0x684FB6ED;
  return (*(STACK[0x57D8] + 8 * ((18228 * (a1 == 255)) ^ a8)))();
}

uint64_t sub_1004F2190@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xE0BC]) = v2;
  v3 = v2 - 269501053 + ((v1 + 17685) | 0x54);
  v4 = *(a1 + 104) + 820519667;
  v5 = v4 < 0x371629C6;
  v6 = v3 < v4;
  if (v3 < ((v1 + 165062672) & 0xF6294FA7 ^ 0x37162363) != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0x57D8] + 8 * ((1237 * v6) ^ v1)))();
}

uint64_t sub_1004F2238()
{
  v2 = LOBYTE(STACK[0xA90F]);
  LODWORD(STACK[0xA9F4]) = v1;
  return (*(STACK[0x57D8] + 8 * (((((v0 ^ 0x89) + 14663) ^ 0x7CD5) * v2) ^ v0 ^ 0x89)))();
}

uint64_t sub_1004F23F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(STACK[0x57D8] + 8 * (((v4 + 1209696154 + ((v4 + 12904869) | 0xB7205201)) * v6) ^ v4)))();
}

uint64_t sub_1004F24C8()
{
  v2 = v1 - 6593;
  v3 = 276 * ((v1 - 6593) ^ 0x24DA);
  LOBYTE(STACK[0xDEDF]) = *(STACK[0x93A0] + v0);
  v4 = ((7 * ((v1 - 6593) ^ 0x247Bu)) ^ 0x65BLL) + v0;
  STACK[0xDEE0] = v4;
  return (*(STACK[0x57D8] + 8 * (((v4 > STACK[0xC1D8]) * (v3 - 20095)) ^ v2)))();
}

uint64_t sub_1004F2560@<X0>(int a1@<W8>)
{
  v4 = STACK[0x3538];
  LODWORD(STACK[0x1D4D0]) = STACK[0x3538];
  STACK[0x1D4D8] = v4;
  STACK[0x1D4C0] = v1 ^ v4;
  LODWORD(STACK[0x1D4D4]) = (a1 + 1929385131) ^ v4;
  LODWORD(STACK[0x1D4E0]) = ((a1 + 1929385131) | v2) + v4;
  LODWORD(STACK[0x1D4C8]) = ((a1 + 1929385131) ^ 0xD11) - v4;
  LODWORD(STACK[0x1D4CC]) = v4 + a1 + 1451493860;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2462)))(v3 - 240);
  return (*(v5 + 8 * SLODWORD(STACK[0x1D4E4])))(v6);
}

uint64_t sub_1004F2700(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (v4 < a4 != (v5 - 1676410481) < 0xA4E75E0A)
  {
    v7 = v4 < a4;
  }

  else
  {
    v7 = v4 > v5 - 1676410481;
  }

  return (*(STACK[0x57D8] + 8 * ((22 * !v7) ^ v6)))();
}

uint64_t sub_1004F3128@<X0>(char a1@<W0>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, char a8@<W8>)
{
  v17 = STACK[0x53F8];
  v17[47] = a8;
  v17[40] = v10;
  v17[33] = a7;
  v17[45] = a5;
  v17[34] = v16;
  v17[38] = v9;
  v17[37] = a3;
  v17[41] = v12;
  v17[36] = a2;
  v17[32] = v8;
  v17[35] = a6;
  v17[39] = v14;
  v17[44] = v11;
  v17[46] = a4;
  v17[43] = a1;
  v17[42] = v13;
  return (*(STACK[0x57D8] + 8 * v15))(4294955370, 0, 0x13EC18598D49E08, 0x8A998F3DF245D856, 0xAC907CEECB1ED7E3, 0x1A099CF6D325AB26, 0x72FB3184966D2A6CLL, 0x18132A790888E16);
}

uint64_t sub_1004F320C@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0xB658] - 0x30BDFED8F32E6575;
  STACK[0x8A58] = v5;
  v6 = STACK[0x7718] + v3;
  STACK[0xE058] = v6;
  LODWORD(STACK[0xE060]) = v4;
  LODWORD(STACK[0x8B10]) = (LODWORD(STACK[0xA8FC]) + v2) * (((2 * v1) ^ 0x6884) + 1978709661);
  STACK[0x7ED8] = a1;
  STACK[0x8B98] = 0;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(STACK[0x57D8] + 8 * ((29 * v8) ^ v1)))();
}

uint64_t sub_1004F330C()
{
  v1 = STACK[0x57D8];
  STACK[0x8D48] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 25030 + (v0 ^ 0x6751))))(4427);
}

uint64_t sub_1004F335C()
{
  v0 = STACK[0x51B8] - 1932801477;
  v1 = STACK[0x51B8] - 20146;
  STACK[0xC8A0] = STACK[0x6500] + 16;
  v2 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0xC84 ^ (6741 * ((v0 - 410336256 + v1) > 0x67906B81)))))();
}

uint64_t sub_1004F3454(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v9 = v7 < v8;
  if (v9 == a3 > (a2 ^ 0x15CCu) * a6 + a7)
  {
    v9 = a3 + v8 < v7;
  }

  return (*(STACK[0x57D8] + 8 * ((8866 * v9) ^ a2)))();
}

uint64_t sub_1004F34A8()
{
  v2 = STACK[0xC9B0] == 0;
  if (STACK[0xC9B0])
  {
    v3 = -143113071;
  }

  else
  {
    v3 = v1;
  }

  LODWORD(STACK[0xDF98]) = v3;
  return (*(STACK[0x57D8] + 8 * ((v2 ^ (v0 - 23)) & 1 ^ v0)))();
}

uint64_t sub_1004F3740()
{
  LODWORD(STACK[0x1D4C8]) = (v0 - 1723125743) ^ (1917435887 * ((((v1 - 240) | 0x176BCC2F) - (v1 - 240) + ((v1 - 240) & 0xE89433D0)) ^ 0xF1D09729));
  STACK[0x1D4C0] = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 17206)))(v1 - 240);
  return (*(v2 + 8 * ((423 * (*STACK[0x4678] <= ((v0 + 69026901) & 0xFBE2FBF8 ^ 0x7948))) ^ v0)))(v3);
}

uint64_t sub_1004F3808()
{
  STACK[0x10018] = STACK[0x7368];
  STACK[0x10020] = *(v2 - 0x30BDFED8F32E6759);
  v3 = ((v1 - 103679699) ^ 0xB3FEFFFFBDFCBFE7) + 0x4C010000A0A473ADLL + ((2 * (v1 - 103679699)) & 0x17BF97FCELL);
  STACK[0x10028] = v3;
  LOBYTE(STACK[0x10033]) = v3 < (v0 + 23227) + 1587594898;
  v4 = *(STACK[0x57D8] + 8 * ((23 * (v3 != 1587622804)) ^ v0));
  LODWORD(STACK[0xFD2C]) = v0;
  STACK[0xFD30] = 0;
  return v4();
}

uint64_t sub_1004F38D4()
{
  v1 = (v0 + 143113395) | 0x402;
  v2 = LODWORD(STACK[0xB26C]) == ((v1 + 21264) ^ 0x5827);
  if (LODWORD(STACK[0xB26C]) == ((v1 + 21264) ^ 0x5827))
  {
    v3 = -143113071;
  }

  else
  {
    v3 = -143155721;
  }

  LODWORD(STACK[0xE650]) = v3;
  return (*(STACK[0x57D8] + 8 * ((v2 * ((v1 + 9) ^ 0x5A0E)) ^ v1)))();
}

uint64_t sub_1004F3AB0()
{
  v1 = STACK[0x51B8];
  v2 = (STACK[0x51B8] - 20470) | 0x4418;
  v3 = STACK[0x51B8] - 19541;
  v4 = STACK[0x7ED8];
  STACK[0xBAF0] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v4 + ((((v0 - (v1 - 19534)) | (v1 - 19534 - v0)) >> 7) & 1) + 256;
  v5 = STACK[0x57D8];
  v6 = *(STACK[0x57D8] + 8 * v3);
  LODWORD(STACK[0x9220]) = 256;
  STACK[0x8B80] = v6;
  return (*(v5 + 8 * ((v2 + 1581) ^ v3)))();
}

uint64_t sub_1004F3C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xC3E8];
  v7 = STACK[0x57D8];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x21F8]));
  return (*(v7 + 8 * SLODWORD(STACK[0x21F4])))(a1, a2, a3, a4, a5, a6, v6);
}

uint64_t sub_1004F3CD8()
{
  v1 = STACK[0x57D8];
  STACK[0x5D78] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x2BB5 ^ (295 * (v0 ^ 0x586)))))(3525083284);
}

uint64_t sub_1004F3E0C(int a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, char a7, unsigned int a8)
{
  v17 = v9 + 1930366277;
  v18 = ((v17 & v15) << v12) & (v17 ^ v16) ^ v17 & v15;
  v19 = ((2 * (v17 ^ v14)) ^ 0x24) & (v17 ^ v14) ^ (2 * (v17 ^ v14)) & 0x12;
  v20 = (v9 + 69) ^ (2 * ((((4 * (v19 ^ 0x12)) ^ a3) & (v19 ^ 0x12) ^ (4 * (v19 ^ 0x12)) & a4) & (16 * (v19 & (4 * v18) ^ v18)) ^ v19 & (4 * v18) ^ v18));
  *(a2 + v9) = *(a6 + v9) + (((v20 ^ v11) - 100) ^ ((v20 ^ a7) + 105) ^ ((v20 ^ v10) - 49)) * v8 - 117;
  v21 = v9 + 361595625 < a8;
  if (a8 < v13 != v9 + 361595625 < v13)
  {
    v21 = a8 < v13;
  }

  return (*(STACK[0x57D8] + 8 * ((2028 * v21) ^ a1)))();
}

uint64_t sub_1004F403C@<X0>(int a1@<W8>)
{
  v1 = STACK[0xCFE0] + 4;
  STACK[0x8A10] = v1;
  return (*(STACK[0x57D8] + 8 * (((((a1 ^ (v1 == 0)) & 1) == 0) * ((a1 ^ 0x1200) - 2553)) ^ a1)))();
}

uint64_t sub_1004F408C()
{
  v2 = v0 + 14666;
  v3 = 6 * ((v0 + 14666) ^ 0x44DE);
  v4 = v0 + 1412;
  v5 = STACK[0x87C4];
  LODWORD(STACK[0x7E34]) = 1;
  v7 = v1 == (v3 ^ 0xF7781CC7) && v5 == -143113071;
  return (*(STACK[0x57D8] + 8 * ((v7 * (v4 ^ 0x26A)) ^ v2)))();
}

uint64_t sub_1004F41C4()
{
  v4 = STACK[0xA6A8];
  STACK[0x1D4C8] = v2;
  LODWORD(STACK[0x1D4D4]) = (v0 + 2049917075) ^ (711523751 * ((2782047 - ((v3 - 240) | 0x2A735F) + ((v3 - 240) | 0xFFD58CA0)) ^ 0xCFCFAD71));
  STACK[0x1D4D8] = v1;
  STACK[0x1D4C0] = v4;
  v5 = STACK[0x57D8];
  v6 = (*(STACK[0x57D8] + 8 * (v0 + 25885)))(v3 - 240);
  return (*(v5 + 8 * (((LODWORD(STACK[0x1D4D0]) == -143113071) * ((v0 + 2080401319) & 0x83FFCF1F ^ 0x7F15)) ^ v0)))(v6);
}

uint64_t sub_1004F42A4()
{
  v0 = STACK[0x1894];
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0x1894]) ^ 0x51D4)))(((LODWORD(STACK[0x1890]) - 253740255) & 0xF1F6FCE ^ 0x82B688C2) + LODWORD(STACK[0x67C8]));
  STACK[0xB9D8] = v2;
  return (*(v1 + 8 * (((2 * (v2 == 0)) | (4 * (v2 == 0))) ^ v0)))();
}

uint64_t sub_1004F4508()
{
  v2 = STACK[0x51B8];
  LODWORD(STACK[0xC68C]) = v0;
  v3 = 551690071 * ((v1 - 240 - 2 * ((v1 - 240) & 0xEFF20E3AB69B5E04) - 0x100DF1C54964A1FCLL) ^ 0x9E6F5CF4F8760D53);
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4E0] = v3 + v0;
  LODWORD(STACK[0x1D4C8]) = ((v2 + 1591929529) ^ 0x11) - v3;
  LODWORD(STACK[0x1D4CC]) = v2 + 1591929529 - v3;
  LODWORD(STACK[0x1D4C0]) = (v2 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4C4]) = v3 ^ (v2 + 1591929529) ^ 0xE0B;
  STACK[0x1D4D8] = 3525083284u - v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2411)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1004F45F0()
{
  v0 = STACK[0x51B8];
  STACK[0x7720] = 0xD38CBDD3ACAFF84ALL;
  LODWORD(STACK[0xC9CC]) = -769884012;
  return (*(STACK[0x57D8] + 8 * (v0 - 14973)))();
}

uint64_t sub_1004F4704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = STACK[0x51B8] ^ 0x8CCC7AC7;
  v6 = STACK[0x51B8] - 20073;
  STACK[0x8630] = STACK[0xAE30] + 16;
  v7 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * v6);
  return (*(v7 + 8 * ((v5 ^ (a5 + 3853)) + v6)))();
}

uint64_t sub_1004F4774()
{
  LODWORD(STACK[0x1D4C0]) = (v0 + 1717151716) ^ (1964904101 * (((((v1 - 240) | 0x582DAB44) ^ 0xFFFFFFFE) - (~(v1 - 240) | 0xA7D254BB)) ^ 0x5DF0BF3F));
  STACK[0x1D4C8] = 0;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 + 12281)))(v1 - 240);
  return (*(v2 + 8 * (((*STACK[0x4658] == 0) * (((v0 - 1020) ^ 0xFFFFEF88) + ((v0 - 1020) | 0x1006))) ^ v0)))(v3);
}

uint64_t sub_1004F4828()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x74EC];
  LODWORD(STACK[0x9094]) = -32197478;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004F48AC(uint64_t a1)
{
  v2 = STACK[0xB708];
  STACK[0xCDF8] = STACK[0xB708];
  STACK[0x9DB0] = &STACK[0xBE3C];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0x47814E85B07C7DF5;
  LODWORD(STACK[0xCD80]) = 1415057922;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1004F4984(uint64_t a1)
{
  v2 = 0xF726234C92AC6E47 * STACK[0xA288] + 0x1C9CD3F856242EABLL;
  v3 = (v2 ^ 0xBB4839EE42F60545) & (2 * (v2 & 0xBA4AB9EE0AF41056)) ^ v2 & 0xBA4AB9EE0AF41056;
  v4 = (v2 ^ 0x9BCD2ABA56D625C9) << (((v1 - 29) | 0x10) ^ 0x10u);
  v5 = (v4 ^ 0x430F26A8B8446B3ELL) & (v2 ^ 0x9BCD2ABA56D625C9) ^ v4 & 0x218793545C22359ELL;
  v6 = v5 ^ 0x2080915444221481;
  v7 = (v5 ^ 0x107020018000118) & (4 * v3) ^ v3;
  v8 = ((4 * v6) ^ 0x861E4D517088D67CLL) & v6 ^ (4 * v6) & 0x218793545C22359CLL;
  v9 = (v8 ^ 0x6015050001400) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x218192040C222183)) ^ 0x18793545C22359F0) & (v8 ^ 0x218192040C222183) ^ (16 * (v8 ^ 0x218192040C222183)) & STACK[0xE28];
  v11 = (v10 ^ 0x1114440221100) & (v9 << 8) ^ v9;
  v12 = (((v10 ^ 0x218682101C00240FLL) << 8) ^ 0x8793545C22359F00) & (v10 ^ 0x218682101C00240FLL) ^ ((v10 ^ 0x218682101C00240FLL) << 8) & 0x218793545C223500;
  v13 = v11 ^ 0x218793545C22359FLL ^ (v12 ^ 0x183105400200000) & (v11 << 16);
  STACK[0x7ED0] = STACK[0xC150];
  STACK[0xC880] = v2 ^ (2 * ((v13 << 32) & 0x2187935400000000 ^ v13 ^ ((v13 << 32) ^ 0x5C22359F00000000) & (((v12 ^ 0x200483005C02209FLL) << 16) & 0x2187935400000000 ^ 0x2083835400000000 ^ (((v12 ^ 0x200483005C02209FLL) << 16) ^ 0x13545C2200000000) & (v12 ^ 0x200483005C02209FLL)))) ^ 0x2ACD00BD1E1F8322;
  LODWORD(STACK[0xCD80]) = 1712141473;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1004F4D24()
{
  v1 = STACK[0x57D8];
  STACK[0xD900] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 + 6684)))();
}

uint64_t sub_1004F4DEC@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  a2[12] = HIBYTE(v3) ^ 0xD2;
  a2[13] = BYTE2(v3) ^ 0x1C;
  a2[14] = BYTE1(v3) ^ 0x80;
  a2[15] = v3 ^ 0x94;
  v4 = STACK[0x7DD8];
  LODWORD(STACK[0x4E38]) = v2;
  LODWORD(STACK[0x4E34]) = a1;
  return v4();
}

uint64_t sub_1004F4E38()
{
  v0 = STACK[0x51B8] ^ 0x7E02D6F3;
  v1 = STACK[0x51B8] - 22225;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v0 ^ 0x7E029E42 ^ v1)))();
}

uint64_t sub_1004F4EE0@<X0>(int a1@<W8>)
{
  LOWORD(STACK[0x57EA]) = -3415;
  STACK[0xC8C0] = v2;
  LODWORD(STACK[0x9F6C]) = a1;
  STACK[0xA398] = &STACK[0x57EA];
  LODWORD(STACK[0xA7C0]) = 526593218;
  return (*(STACK[0x57D8] + 8 * v1))(88);
}

uint64_t sub_1004F4F94()
{
  v0 = STACK[0x51B8] + 7357;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xC780]);
  STACK[0xC780] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1004F4FDC()
{
  v0 = STACK[0x51B8] + 1402;
  v1 = STACK[0x51B8] - 21826;
  STACK[0x4E98] = STACK[0xA030];
  return (*(STACK[0x57D8] + 8 * ((v0 ^ 0x77D8) + v1)))(&STACK[0x7CEC]);
}

uint64_t sub_1004F5074()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0xBF84]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 12438)))();
}

uint64_t sub_1004F51F0()
{
  v3 = (v1 - 6223) | 0x220u;
  v4 = v1 - 324;
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((~((v2 - 240) ^ 0x9B287CD2 | 0x4DCF997D) + (((v2 - 240) ^ 0x9B287CD2) & 0x4DCF997D)) ^ 0xD33AF1D4));
  STACK[0x1D4C8] = v0;
  v5 = v1 ^ 0x2413;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v2 - 240);
  STACK[0x7ED8] += v3 ^ 0xFFFFFFFFFFFFBDC7;
  return (*(v6 + 8 * v4))(v7);
}

uint64_t sub_1004F5300(uint64_t a1)
{
  v8 = (v3 - 21223) ^ LODWORD(STACK[0x5720]);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x56F0]) + 593800598;
  v9 = STACK[0x57A0];
  LODWORD(STACK[0x54A0]) = (LODWORD(STACK[0x57A0]) >> 8) ^ 0xA07DFE;
  LODWORD(STACK[0x5520]) = HIBYTE(v9) ^ 0xA0;
  v10 = STACK[0x5770];
  v11 = (v10 ^ 0x131E9EE5) & (2 * (v10 & 0xA45EDEF6)) ^ v10 & 0xA45EDEF6;
  v12 = ((2 * (v10 ^ 0x532A3E81)) ^ 0xEEE9C0EE) & (v10 ^ 0x532A3E81) ^ (2 * (v10 ^ 0x532A3E81)) & 0xF774E076;
  v13 = v12 ^ 0x11142011;
  v14 = (v12 ^ 0xA260C060) & (4 * v11) ^ v11;
  v15 = ((4 * v13) ^ 0xDDD381DC) & v13 ^ (4 * v13) & 0xF774E074;
  v16 = (v15 ^ 0xD5508040) & (16 * v14) ^ v14;
  v17 = ((16 * (v15 ^ 0x22246023)) ^ 0x774E0770) & (v15 ^ 0x22246023) ^ (16 * (v15 ^ 0x22246023)) & 0xF774E070;
  v18 = v16 ^ 0xF774E077 ^ (v17 ^ 0x77440000) & (v16 << 8);
  LODWORD(STACK[0x54D0]) = LODWORD(STACK[0x5790]) ^ v1 ^ LODWORD(STACK[0x5770]) ^ ((v1 ^ 0xB52E5B50) + 1385750647) ^ ((v1 ^ 0xF145BE72) + 385025365) ^ ((v1 ^ 0x33DD7E14) - 731134669) ^ ((v1 ^ 0x6FFFDFEF) - 2008455990) ^ LODWORD(STACK[0x5740]) ^ (2 * ((v18 << 16) & 0x77740000 ^ v18 ^ ((v18 << 16) ^ 0x60770000) & (((v17 ^ 0x8030E007) << 8) & 0x77740000 ^ 0x3140000 ^ (((v17 ^ 0x8030E007) << 8) ^ 0x74E00000) & (v17 ^ 0x8030E007))));
  v19 = STACK[0x5710];
  LODWORD(STACK[0x5490]) = (LODWORD(STACK[0x5710]) >> 8) ^ 0xA2D2FF;
  LODWORD(STACK[0x56F0]) = HIWORD(v19) ^ 0xA2D2;
  v19 >>= 24;
  LODWORD(STACK[0x54C0]) = v19;
  LODWORD(STACK[0x5510]) = v19 ^ 0xA2;
  v20 = (v2 - ((2 * v2) & 0x5AA4DE82) + 760377153) ^ v7 ^ 0x2D526F41;
  HIDWORD(v21) = (v20 - ((2 * v20) & 0xAAAAAAAA) + 85) ^ LODWORD(STACK[0x5730]);
  LODWORD(v21) = (v20 - ((2 * v20) & 0xAF545EAA) + 1470771029) ^ LODWORD(STACK[0x5730]);
  HIDWORD(v21) = (v21 >> 8) ^ 0xC57C7EFA;
  LODWORD(v21) = HIDWORD(v21);
  LODWORD(STACK[0x54E0]) = v21 >> 24;
  v22 = v5 + 155723015;
  v23 = v8;
  v24 = STACK[0x5780];
  v25 = ((v22 ^ 0x763D77A) - 237761149) ^ v22 ^ ((v22 ^ 0xC1493F2B) + 939451860) ^ ((v22 ^ 0xB09E72A9) + 1177135186) ^ ((v22 ^ 0x7FFCBFFF) - 1991547640) ^ LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x5450]) = v25 ^ 0xE8DA34A8;
  v26 = -1476165409 * (((v25 ^ 0xD60CEE2A) - 1054268034) ^ ((v25 ^ 0x619B2634) + 1992224100) ^ ((v25 ^ 0x908CAA59) - 2018942705)) - 934984083;
  v27 = (v26 ^ 0x3445F3E5) & (2 * (v26 & 0xB969F3C4)) ^ v26 & 0xB969F3C4;
  v28 = ((2 * (v26 ^ 0x564655E5)) ^ 0xDE5F4C42) & (v26 ^ 0x564655E5) ^ (2 * (v26 ^ 0x564655E5)) & 0xEF2FA620;
  v29 = v28 ^ 0x2120A221;
  v30 = (v28 ^ 0xCE0F0400) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0xBCBE9884) & v29 ^ (4 * v29) & 0xEF2FA620;
  v32 = (v31 ^ 0xAC2E8000) & (16 * v30) ^ v30;
  v33 = ((16 * (v31 ^ 0x43012621)) ^ 0xF2FA6210) & (v31 ^ 0x43012621) ^ (16 * (v31 ^ 0x43012621)) & 0xEF2FA620;
  v34 = v32 ^ 0xEF2FA621 ^ (v33 ^ 0xE22A2200) & (v32 << 8);
  v35 = v26 ^ (2 * ((v34 << 16) & 0xEFFFFFFF ^ v34 ^ ((v34 << 16) ^ 0x26000000) & (((v33 ^ 0xD058421) << 8) & 0x6F2F0000 ^ (((v33 ^ 0xD058421) << 8) ^ 0x2FA60000) & (v33 ^ 0xD058421) ^ 0x40000000)));
  v36 = v24 ^ (LODWORD(STACK[0x5760]) - 2 * (STACK[0x5760] & 0x2E53474E ^ HIBYTE(v6) & 0xE) + 777209664);
  LODWORD(STACK[0x5500]) = HIBYTE(v4) ^ 0xCD836BB;
  v37 = STACK[0x5750];
  v38 = 14694336 * (((v25 ^ 0x2AC94061) + 1038912311) ^ ((v25 ^ 0x1FF8CD4D) + 148702747) ^ ((v25 ^ 0x122AEF6B) + 84878397)) - 551520690;
  v39 = (v35 >> 26) & 0x1F ^ 0x106EAE6A ^ ((v35 >> 26) ^ 0xFFFFFFF5) & (v38 ^ ((v38 ^ 0x15EA8B94) - 1723556250) ^ ((v38 ^ 0x7F6C18C) - 1957112706) ^ ((v38 ^ 0x37F25F69) - 1151579495) ^ ((v38 ^ 0x56BFFF7F) - 636360049) ^ 0x633F446E);
  LODWORD(STACK[0x5470]) = LODWORD(STACK[0x56D0]) + (LODWORD(STACK[0x5750]) ^ 0xA7090BD1);
  HIDWORD(v21) = STACK[0x56E0];
  LODWORD(v21) = -15309301 * (((v37 ^ 0x92412DCD) - 1432030580) ^ ((v37 ^ 0xB099A27D) - 2005107396) ^ ((v37 ^ 0x85D18461) - 1120642264)) + 386813304;
  v40 = v21 >> 1;
  HIDWORD(v21) = v36;
  LODWORD(v21) = 1632825325 * v36;
  v41 = v21 >> 2;
  v42 = -1999150087 * v39;
  v43 = -1879048192 * v39;
  v44 = 1520163489 * v41;
  v45 = 1411383296 * v41;
  v46 = 1342177280 * (((v4 ^ 0xFFFFFFFD) - 2146820296) ^ ((v4 ^ 2) + 2067714217) ^ ((v4 ^ 0xAAAAAAAA) + 714635041)) - v41 + ((1183176421 * (((v4 ^ 0xAE436144) + 1369849647) ^ ((v4 ^ 0xA5DF2394) + 1513782783) ^ ((v4 ^ 0x25D5A405) - 634324368)) - 1840366528) >> 4) - v40 + v39;
  HIDWORD(v21) = v40;
  LODWORD(v21) = 12964085 * v40;
  v47 = v21 >> 1;
  v48 = (-549008384 * v46) | ((-1384656461 * v46) >> 22);
  v49 = v43 + (v42 >> 4);
  v50 = 1876682175 * v49;
  v51 = ((v45 & 0xFFE00000 | (v44 >> 11)) - v47 - v48) ^ v49;
  v52 = (-575174912 * v48) | ((-153241721 * v48) >> 24);
  v53 = (-220233728 * v49) | ((1876682175 * v49) >> 17);
  v54 = (-5730304 * v51) | ((821033609 * v51) >> 20);
  v55 = ((427819008 * v47) | ((1600873011 * v47) >> 9)) - v53 + v52 + v54 - 2 * v54;
  v56 = (-1296367616 * v54) | ((-2097237317 * v54) >> 16);
  HIDWORD(v21) = 514345677 * v52;
  LODWORD(v21) = 514345677 * v52;
  v57 = v21 >> 29;
  v58 = (-1907359744 * v55) | ((-1575765787 * v55) >> 12);
  v59 = (((-2040179509 * v53) >> 3) | (1610612736 * (v50 >> 17))) + v57 + v56;
  v60 = v58 ^ -v58 ^ (v59 - (v58 ^ v59));
  v61 = (v60 ^ v59) + 2 * (v60 & v59);
  v62 = v61 ^ (1500183591 * (v57 - v56 - v58) + 442897398);
  v63 = v62 - 1577421741;
  v64 = v58 - (v62 - 1577421741);
  v65 = v62 - 44829674;
  v66 = (v65 ^ 0x161696B8) & (2 * (v65 & 0xA4A6803D)) ^ v65 & 0xA4A6803D;
  v67 = ((2 * ((v62 - 44829674) ^ 0x571B96F8)) ^ 0xE77A2D8A) & ((v62 - 44829674) ^ 0x571B96F8) ^ (2 * ((v62 - 44829674) ^ 0x571B96F8)) & 0xF3BD16C4;
  v68 = v67 ^ 0x10851245;
  v69 = (v67 ^ 0xA3380080) & (4 * v66) ^ v66;
  v70 = ((4 * v68) ^ 0xCEF45B14) & v68 ^ (4 * v68) & 0xF3BD16C4;
  v71 = (v70 ^ 0xC2B41200) & (16 * v69) ^ v69;
  v72 = ((16 * (v70 ^ 0x310904C1)) ^ 0x3BD16C50) & (v70 ^ 0x310904C1) ^ (16 * (v70 ^ 0x310904C1)) & 0xF3BD16C0;
  v73 = v71 ^ 0xF3BD16C5 ^ (v72 ^ 0x33910400) & (v71 << 8);
  v74 = v65 ^ (2 * ((v73 << 16) & 0x73BD0000 ^ v73 ^ ((v73 << 16) ^ 0x16C50000) & (((v72 ^ 0xC02C1285) << 8) & 0x73BD0000 ^ 0x42A90000 ^ (((v72 ^ 0xC02C1285) << 8) ^ 0x3D160000) & (v72 ^ 0xC02C1285))));
  LODWORD(STACK[0x56E0]) = v74;
  LODWORD(STACK[0x56D0]) = v74 ^ 0xDA626A5C;
  v75 = STACK[0x5700];
  LODWORD(STACK[0x5530]) = v64;
  LODWORD(STACK[0x5480]) = (v4 >> 8) ^ 0x2E49E6;
  LODWORD(STACK[0x54F0]) = v63;
  LODWORD(STACK[0x54B0]) = v61;
  LODWORD(STACK[0x57C0]) = v63 ^ v61;
  return (*(STACK[0x57D8] + 8 * (v3 + 800)))(a1, 2 * (((((v75 ^ v64 ^ 0xAB82F742) - 1496218691) ^ v23) + 2 * (((v75 ^ v64 ^ 0xAB82F742) - 1496218691) & v23)) & 0xFFFFFFFE ^ 0x15F5338F), 255);
}

uint64_t sub_1004F5FD4()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 + 3832)))(v2);
}

uint64_t sub_1004F6068()
{
  v18 = *v15 & 0xFFFFFFF8;
  v19 = *(*v14 + (v18 & (((v0 + v7) & 0xFFFFFFF8) - 103642729)));
  v20 = (v19 + __ROR8__((v0 + v7) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xF41651499F5E3C67;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x153242EE3CF06A49;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((6 * (v1 ^ v9)) ^ 0x106C7FFCB019F034) - (v24 + v23) + ((2 * (v24 + v23)) | 0xDF2700069FCCAF3CLL)) ^ 0xCDE654C477D36E05;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((v17 & (2 * (v27 + v26))) - (v27 + v26) + v12) ^ v13;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xC7DDC9F6CC45B721;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v16 - ((v32 + v31) | v16) + ((v32 + v31) | 0x2BB35130A5279054)) ^ 0x83957195FCF54A2CLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = *(*v14 + (v18 & (((v3 + v7) & 0xFFFFFFF8) + v11)));
  v36 = __ROR8__(v33, 8) + v34;
  v37 = __ROR8__((v3 + v7) & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = (((2 * (v35 + v37)) | 0x4F91B8C294D92F9ELL) - (v35 + v37) + 0x5837239EB5936831) ^ 0x9190909717FCE8F1;
  v39 = v38 ^ __ROR8__(v35, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0xB83E331A657D2BFCLL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v10;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * v36) | 0x9135BE522D0F31E6) - v36 - 0x489ADF29168798F3) ^ 0x17173317B51F92E8;
  v46 = (((2 * (v44 + v43)) | 0x1AAF28C9F8738BF4) - (v44 + v43) + 0x72A86B9B03C63A06) ^ 0x7CEC296E47B610FCLL;
  v47 = v46 ^ __ROR8__(v43, 61);
  v48 = __ROR8__(v46, 8) + v47;
  v49 = (((2 * v48) & 0x58B50F566D8F0FC2) - v48 + 0x53A57854C938781ELL) ^ 0x96E8AB0AB26201A8;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (__ROR8__(v45, 8) + (v45 ^ __ROR8__(v34, 61))) ^ 0xC1C3C8D2A4C54828;
  v53 = *(*v14 + (((((v2 + v7) & 0xFFFFFFF8) + 2050767130) & *v15) & 0xFFFFFFFFFFFFFFF8));
  v54 = (v51 + v50 - ((2 * (v51 + v50)) & 0xB8598EF37F0EC6C2) - 0x23D3388640789C9FLL) ^ 0xB0D43E13E2553054;
  v55 = v54 ^ __ROR8__(v50, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x97F8449F19CBCD7DLL;
  v57 = __ROR8__(v56, 8) + (v56 ^ __ROR8__(v55, 61));
  v58 = (v53 + __ROR8__((v2 + v7) & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v59 = v58 ^ __ROR8__(v53, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (v60 + v59 - ((2 * (v60 + v59)) & 0x8B3B8849138C495CLL) - 0x3A623BDB7639DB52) ^ 0xFD55754E6EC34CD9;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0xE580B17D8CC5E551;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0xE1A1FD5BD155F97ALL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xDA604B0C03A2BF99;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (((2 * ((v69 + v68) ^ 0xF0EF5541882280E1)) | 0xFDDC7CD46A5E5D4ELL) - ((v69 + v68) ^ 0xF0EF5541882280E1) + 0x111C195CAD0D159) ^ 0xF43489E676339F81;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0xD2F00CE620E5D3AELL;
  *(v2 + v7) = *(v3 + v7) ^ *(v0 + v7) ^ (((__ROR8__(v72, 8) + (v72 ^ __ROR8__(v71, 61))) ^ 0xF4730B31AE70757BLL) >> (v4 & 0x38)) ^ (v52 >> (v5 & 0x38)) ^ (((v8 - (v57 ^ 0x2300E0260DEC248CLL | v8) + (v57 ^ 0x2300E0260DEC248CLL | 0x1919208E587DFDDFLL)) ^ 0xEB33607E7C0C9468) >> (v6 & 0x38));
  return (*(STACK[0x57D8] + 8 * ((26580 * (v7 == 15)) ^ v1)))();
}

uint64_t sub_1004F65E8()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x16DE)))(1280);
  STACK[0x68A8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 ^ 0x625C ^ ((v0 - 27355) | 0x920))) ^ v0)))();
}

uint64_t sub_1004F66B8()
{
  v4 = *v1;
  v5 = &STACK[0x1D280] + v3;
  *v5 = v4;
  *(v5 + 1) = *(v2 + 17);
  *(v5 + 9) = *(v2 + 25);
  *(v5 + 13) = *(v2 + 29);
  v5[15] = *(v2 + 31);
  v6 = *(v2 + 24);
  *(v5 + 2) = v4;
  *(v5 + 3) = v6;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004F671C()
{
  *(v1 - 0x30BDFED8F32E6559) = v0;
  STACK[0x7ED8] += ((v3 + 6993) | 0x1814u) ^ 0xFFFFFFFFFFFFA796;
  STACK[0xA400] = v1 - 0x30BDFED8F32E66E0;
  STACK[0xC7E0] = v2;
  return (*(STACK[0x57D8] + 8 * ((459 * (((v1 == 0x30BDFED8F32E66E0) ^ (v3 + 14)) & 1)) ^ v3)))();
}

uint64_t sub_1004F67BC(uint64_t a1)
{
  v2 = STACK[0xAEC8];
  STACK[0xBFC0] = STACK[0xAEC8];
  STACK[0xBC30] = STACK[0xA100];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xA69F2A76F2C71801;
  LODWORD(STACK[0xCD80]) = 861993002;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1004F68B4@<X0>(unint64_t a1@<X8>)
{
  v2 = __ROR8__((((v1 + 17238) | 0x1040u) ^ 0xFFFFFFFFFFFFA7AELL) & a1, 8);
  v3 = -2 - (((0x1C64917143BAF700 - v2) | 0x6150CFCA291D29A8) + ((v2 + 0x639B6E8EBC4508FFLL) | 0x9EAF3035D6E2D657));
  v4 = v3 ^ 0x6436EDA2E0CF3F05;
  v3 ^= 0x78ED99D702E778FAuLL;
  v5 = __ROR8__(v4, 8);
  v6 = (v5 + v3 - ((2 * (v5 + v3)) & 0x67E5EF8942794216) - 0x4C0D083B5EC35EF5) ^ 0x4E5A14E0965E819CLL;
  v7 = v6 ^ __ROR8__(v3, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (v8 + v7 - ((2 * (v8 + v7)) & 0xCAEAC87848B133A0) + 0x6575643C245899D0) ^ 0x754D000906958E42;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xBFF6C21B210E4F37;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x9882E727DB37CF94;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0xCFB1E3A9F9DDBFD6) - (v15 + v14) + 0x18270E2B03112015) ^ 0xE225D4F5FF5BB601;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((v18 + v17) ^ 0xEC04F7F0A05F60F5) - ((2 * ((v18 + v17) ^ 0xEC04F7F0A05F60F5)) & 0xF3914E2483BF5E26) + 0x79C8A71241DFAF13) ^ 0xEE9A76D7DFA4F44CLL;
  *a1 = (((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v17, 61))) ^ 0xAF1BD4ED8A66164BLL) >> (8 * (a1 & 7u))) ^ 0xD;
  return (*(STACK[0x57D8] + 8 * (v1 | 0x1328)))();
}

uint64_t sub_1004F6E28@<X0>(unsigned int a1@<W8>)
{
  STACK[0x6C70] = STACK[0xCE98];
  STACK[0x9738] = 0;
  LODWORD(STACK[0x7194]) = 2101965948;
  STACK[0xAD50] = 0;
  STACK[0xCBC0] = &STACK[0xAD50];
  LODWORD(STACK[0x94E4]) = 1781117116;
  return (*(STACK[0x57D8] + 8 * (a1 ^ 0xE30B8498 ^ ((((a1 + 1144937362) & 0xD8B6576F) - 5235) * (a1 < 0xF22675C)))))();
}

uint64_t sub_1004F6EE0@<X0>(int a1@<W3>, char a2@<W5>, uint64_t a3@<X8>)
{
  STACK[0xCFC8] = v5 - 1;
  *(a3 + v5 - 1) = (v3 ^ a2) * (v3 + 17);
  return (*(STACK[0x57D8] + 8 * (((STACK[0xCFC8] == 0) * a1) ^ v4)))();
}

uint64_t sub_1004F7120@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = STACK[0x8590];
  STACK[0xAD68] = STACK[0x8590];
  LODWORD(STACK[0xA6DC]) = (((a2 + 1312050937) & 0xB1CBBBF9) + (((LODWORD(STACK[0x58E8]) ^ 0x4A8D1E7E) - 1250762366) ^ ((LODWORD(STACK[0x58E8]) ^ 0xFE182690) + 31971696) ^ ((LODWORD(STACK[0x58E8]) ^ 0x6689B87A) - 1720301690)) - 769892206) & 0xFFFFFFF0 ^ 0xD21C8094;
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0x5C963A9C193D0B15;
  LODWORD(STACK[0xCD80]) = -2029760903;
  return (*(STACK[0x57D8] + 8 * a2))(a1, 272629776, 410912332, 1543499262);
}

uint64_t sub_1004F7308()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0xF20];
  LODWORD(STACK[0x1D4C0]) = (STACK[0x51B8] - 1079089617) ^ STACK[0xF20];
  LODWORD(STACK[0x1D4C8]) = ((v2 - 1911312259) ^ 0x1FCD) - v3;
  STACK[0x1D4E0] = v3 + 4151854225u;
  STACK[0x1D4D8] = v0 - v3;
  LODWORD(STACK[0x1D4C4]) = v3 ^ (v2 - 1911312259) ^ 0x1024;
  LODWORD(STACK[0x1D4CC]) = v2 - 1911312259 - v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2411)))(v1 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1004F7408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, int a4@<W8>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>)
{
  v11 = (a1 + (v10 + a4));
  v12 = vaddq_s8(vsubq_s8(*(v6 + v10 + 16), vandq_s8(vaddq_s8(*(v6 + v10 + 16), *(v6 + v10 + 16)), a6)), a5);
  *v11 = vaddq_s8(vsubq_s8(*(v6 + v10), vandq_s8(vaddq_s8(*(v6 + v10), *(v6 + v10)), a6)), a5);
  v11[1] = v12;
  return (*(STACK[0x57D8] + 8 * (((v10 + a2 + v8 == v7) * a3) ^ v9)))();
}

uint64_t sub_1004F74C0()
{
  v1 = STACK[0x9FD0];
  v2 = *(STACK[0x9FD0] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xE674]) = v2 - 22610 + ((v0 - 11299) | 0x5046);
  v3 = *(v1 - 0x1883660EE814440ELL) - 590468509;
  v4 = v2 - 590468505;
  v5 = (v4 < 0x5A179EDF) ^ (v3 < 0x5A179EDF);
  v6 = v3 < v4;
  if (v5)
  {
    v7 = v4 < 0x5A179EDF;
  }

  else
  {
    v7 = v6;
  }

  v8 = STACK[0xA9C8] == 0 || v7;
  if (v8)
  {
    v9 = -143155721;
  }

  else
  {
    v9 = -143113071;
  }

  LODWORD(STACK[0xE678]) = v9;
  return (*(STACK[0x57D8] + 8 * ((110 * v8) ^ v0)))();
}

uint64_t sub_1004F761C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v33.i64[0] = a1 + v11 - 7;
  v33.i64[1] = a1 + v11 - 8;
  v34.i64[0] = a1 + v11 - 5;
  v35.i64[0] = a1 + v11 - 3;
  v34.i64[1] = a1 + v11 - 6;
  v35.i64[1] = a1 + v11 - 4;
  v36.i64[0] = a1 + v11 - 1;
  v36.i64[1] = a2 + v11 + v12;
  v37 = vandq_s8(v36, *&STACK[0x4D70]);
  v38 = vandq_s8(v35, *&STACK[0x4D70]);
  v39 = vandq_s8(v34, *&STACK[0x4D70]);
  v40 = vandq_s8(v33, *&STACK[0x4D70]);
  v41 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v45 = vbslq_s8(*&STACK[0x57B0], vsubq_s64(v25, v41), vaddq_s64(v41, *&STACK[0x45D0]));
  v46 = vbslq_s8(*&STACK[0x57B0], vsubq_s64(v25, v42), vaddq_s64(v42, *&STACK[0x45D0]));
  v47 = vbslq_s8(*&STACK[0x57B0], vsubq_s64(v25, v43), vaddq_s64(v43, *&STACK[0x45D0]));
  v48 = vbslq_s8(*&STACK[0x57B0], vsubq_s64(v25, v44), vaddq_s64(v44, *&STACK[0x45D0]));
  v49 = veorq_s8(v46, a8);
  v50 = veorq_s8(v45, a8);
  v51 = veorq_s8(v45, a9);
  v52 = veorq_s8(v46, a9);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v52);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v51);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), a11), v54), v22), v23);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), a11), v53), v22), v23);
  v57 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v58 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v55, v57);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), v20);
  v63 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v64 = veorq_s8(v61, v20);
  v65 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v62, v63);
  v67 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), *&STACK[0x46D0]);
  v70 = veorq_s8(v68, *&STACK[0x46D0]);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(v76, vandq_s8(vaddq_s64(v76, v76), v28)), v24), v26);
  v78 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(v75, vandq_s8(vaddq_s64(v75, v75), v28)), v24), v26);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(v77, v78);
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v83, v27), vorrq_s8(v83, v18)), v18), v32);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v84, v27), vorrq_s8(v84, v18)), v18), v32);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v88);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v90, v90), a10), v90), v30), v31);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v89, v89), a10), v89), v30), v31);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v95 = veorq_s8(v91, v93);
  v96 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v97 = vdupq_n_s64(v17);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v95);
  v99 = vaddq_s64(v96, v94);
  v139.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v98, vandq_s8(vaddq_s64(v98, v98), v21)), v29), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v97)));
  v139.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v99, vandq_s8(vaddq_s64(v99, v99), v21)), v29), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v97)));
  v100 = veorq_s8(v47, a8);
  v101 = veorq_s8(v47, a9);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), a11), v102), v22), v23);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v20);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), *&STACK[0x46D0]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(v109, vandq_s8(vaddq_s64(v109, v109), v28)), v24), v26);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v27), vorrq_s8(v112, v18)), v18), v32);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), a10), v115), v30), v31);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL)));
  v139.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v117, vandq_s8(vaddq_s64(v117, v117), v21)), v29), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v97)));
  v118 = veorq_s8(v48, a8);
  v119 = veorq_s8(v48, a9);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), a11), v120), v22), v23);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v20);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), *&STACK[0x46D0]);
  v126 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v128 = veorq_s8(v125, v126);
  v129 = vaddq_s64(v127, v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(v129, vandq_s8(vaddq_s64(v129, v129), v28)), v24), v26);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v132, v27), vorrq_s8(v132, v18)), v18), v32);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v135, v135), a10), v135), v30), v31);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL)));
  v139.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v137, vandq_s8(vaddq_s64(v137, v137), v21)), v29), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v97)));
  *(a1 + v11 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v139, v15[26])), *(a3 + v11));
  return (*(STACK[0x57D8] + 8 * (((v14 != 0) * v16) ^ v13)))(a1 - 8, a2 - 8, a3 - 8);
}

uint64_t sub_1004F7C18@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 2631;
  v4 = (v1 + 2065782658) & 0x84DEDC76;
  v5 = (v1 - 1617668624) & STACK[0x117C];
  v7 = v2 != 0x55A8D952E5D4689ELL && a1 != 0x79CEC8CF5A6FCEA2;
  return (*(STACK[0x57D8] + 8 * ((((v4 ^ 0x4C9E) + v5) * v7) ^ v3)))();
}

uint64_t sub_1004F7CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 ^ 0x16CD)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1004F8174()
{
  v2 = *(v0 - 0x683CBC57EAB92A36);
  STACK[0xA7B8] = v2;
  return (*(STACK[0x57D8] + 8 * ((((43 * (((v1 + 4290) | 0x846) ^ 0x598F)) ^ 0x4FB3) * (v2 == 0x308E083E0C524CBELL)) ^ (v1 + 6916))))();
}

uint64_t sub_1004F81FC()
{
  v1 = STACK[0x8718] + 40960;
  v2 = (STACK[0x8718] + 41328);
  STACK[0x6EB8] = v2;
  *(v1 + 376) = 0xEFCDAB8967452301;
  *(v1 + 384) = 0x1032547698BADCFELL;
  *(v1 + 392) = -1009589776;
  *v2 = 0;
  v3 = STACK[0x57D8];
  STACK[0x65B0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v3 + 8 * (v0 - 12347 + v0 + 13369)))();
}

uint64_t sub_1004F82B4()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x5769 ^ ((v0 + 15081) | 0x29))))(0x308E083E0C524CBELL);
}

uint64_t sub_1004F835C()
{
  if (v0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = 1203 * (STACK[0x51B8] ^ 0x5854);
  LODWORD(STACK[0x8FD4]) = v1;
  return (*(STACK[0x57D8] + 8 * (((v3 ^ 0x27BF) * v2) ^ LODWORD(STACK[0x1F6C]))))();
}

uint64_t sub_1004F83A4@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = *(v2 + 4) - 1424596601;
  v4 = *(a1 + 4) - 1424596601;
  v5 = v3 < 1895348635;
  v6 = v3 > v4;
  if (v5 != v4 < 1895348635)
  {
    v6 = v5;
  }

  return (*(STACK[0x57D8] + 8 * ((!v6 * ((7538 * (a2 ^ 0x25F4)) ^ 0x585A)) ^ a2)))();
}

uint64_t sub_1004F8460@<X0>(int a1@<W8>)
{
  v2 = STACK[0x57D8];
  STACK[0x7F10] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (a1 - 8029)))();
}

uint64_t sub_1004F8488@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x5750]) = 1838395733;
  LODWORD(STACK[0x5790]) = 937955163;
  LODWORD(STACK[0x5770]) = 856307613;
  LODWORD(STACK[0x5780]) = 736284865;
  LODWORD(STACK[0x57A0]) = 323300963;
  LODWORD(STACK[0x5760]) = 49373569;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1004F85A4()
{
  v0 = STACK[0x1958] ^ 0x524E;
  v1 = STACK[0x51B8];
  *(STACK[0x8EC8] - 0x1883660EE814440ALL) = STACK[0xDAD4];
  return (*(STACK[0x57D8] + 8 * ((v1 - 143135685) ^ 0xF7784E89 ^ (20755 * (((((LODWORD(STACK[0xDAD8]) - (v1 - 143135685)) | (v1 - 143135685 - LODWORD(STACK[0xDAD8]))) >> (v0 ^ 7)) & 1) == 0)))))();
}

uint64_t sub_1004F863C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  *(a1 + 96) = v4;
  STACK[0xBC68] = v3;
  STACK[0xBB28] = v5;
  STACK[0xB670] = v6;
  LODWORD(STACK[0x89A4]) = v7;
  STACK[0xA670] = 0;
  LODWORD(STACK[0xB82C]) = 0;
  if (v8)
  {
    v9 = v3 == 0;
  }

  else
  {
    v9 = 1;
  }

  v14 = v9 || v5 == 0 || v6 == 0 || a2 == (((v2 - 24473) | 0x4042) ^ 0xD21CD8C2) || v7 == 0;
  return (*(STACK[0x57D8] + 8 * ((v14 * ((v2 - 28196) ^ 0x607)) ^ v2)))();
}

uint64_t sub_1004F86F0(uint64_t a1, __n128 a2)
{
  v6 = a1 + v5;
  *(v6 + 25) = a2;
  *(v6 + 41) = a2;
  return (*(STACK[0x57D8] + 8 * (((v3 == v5) * v4) ^ v2)))();
}

uint64_t sub_1004F8720()
{
  v2 = STACK[0x51B8];
  v3 = STACK[0x51B8] - 22614;
  LODWORD(STACK[0xB364]) = v0;
  v4 = STACK[0x9590];
  v5 = 1534937323 * ((((v1 - 240) | 0xE9CF39EE228BE8A8) - ((v1 - 240) & 0xE9CF39EE228BE8A8)) ^ 0x24B7B12CE46513EFLL);
  LODWORD(STACK[0x1D4E0]) = (v3 ^ 0x2630ABE8) + v5;
  STACK[0x1D4C0] = v5;
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4C8]) = (v3 ^ 0x2630A641) - v5;
  LODWORD(STACK[0x1D4CC]) = v5 + 1451493860 + v2;
  LODWORD(STACK[0x1D4D4]) = v5 ^ v3 ^ 0x2630AB30;
  STACK[0x1D4D8] = v4 + v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v2 ^ 0x2462)))(v1 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1004F88D0()
{
  STACK[0xCF30] = v1 - 32;
  STACK[0x7ED8] = v0 - 32;
  return (STACK[0x9390])();
}

uint64_t sub_1004F8A94()
{
  STACK[0xECD0] = v1;
  v2 = STACK[0xB1B0];
  STACK[0xECD8] = STACK[0xB1B0];
  return (*(STACK[0x57D8] + 8 * (((v1 - v2 > (v0 + 3969) - 22605) * (((v0 + 43881248) & 0xFD6224BE) + 80)) ^ v0)))();
}

uint64_t sub_1004F8B58()
{
  v3 = STACK[0xCD3C];
  v4 = STACK[0xAED0];
  v5 = STACK[0x6BA0];
  v6 = STACK[0xA8F0];
  v7 = 1089234077 * ((2 * ((v2 - 240) & 0x22AD7B50) - (v2 - 240) + 1565689006) ^ 0xBD0F58D6);
  STACK[0x1D4F0] = v1;
  LODWORD(STACK[0x1D4C0]) = v7 + v0 - 2088;
  LODWORD(STACK[0x1D4E0]) = 1668369943 - v7 + (v0 ^ 0x43D7D367) * v3;
  STACK[0x1D4E8] = v4;
  STACK[0x1D4C8] = v6;
  LOBYTE(STACK[0x1D4D4]) = 9 - -99 * ((2 * ((v2 + 16) & 0x50) - (v2 + 16) - 82) ^ 0xD6);
  STACK[0x1D4D8] = v5;
  v8 = STACK[0x57D8];
  v9 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x360E)))(v2 - 240);
  return (*(v8 + 8 * v0))(v9);
}

uint64_t sub_1004F8C74()
{
  v1 = STACK[0x57D8];
  STACK[0xBDE0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x576C ^ ((v0 + 15063) | 0x38))))(0x308E083E0C524CBELL);
}

uint64_t sub_1004F8D14()
{
  v3 = *(v0 + 744);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v5 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (0x1CFA216DF4277184 - ((v5 + v4) ^ 0xCB1E3D8DC05CA67BLL | 0x1CFA216DF4277184) + ((v5 + v4) ^ 0xCB1E3D8DC05CA67BLL | 0xE305DE920BD88E7BLL)) ^ 0xEAB4DDB5F47590E4;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (v8 + v7 - ((2 * (v8 + v7)) & 0xFB065E4CB5446C94) + 0x7D832F265AA2364ALL) ^ 0x18717BFB422F82B6;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x6FF046966119128DLL;
  v12 = __ROR8__(v11, 8);
  v13 = v11 ^ __ROR8__(v10, 61);
  v14 = (((2 * (v12 + v13)) | 0x5D348CDDC47E2EC8) - (v12 + v13) + 0x5165B9911DC0E89CLL) ^ 0xF28DBAB3549044FLL;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ v2;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0xD8C7B31FCA19D9DELL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (0x824C7E9D44A898BCLL - ((v20 + v19) | 0x824C7E9D44A898BCLL) + ((v20 + v19) | 0x7DB38162BB576743)) ^ 0x29E6804C31E6A4CCLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = 5621 * ((((((v23 + v22) ^ 0x85DA5C5F6E440A35) - ((2 * ((v23 + v22) ^ 0x85DA5C5F6E440A35)) & 0x8BCF9BB66684BE7ELL) + 0x45E7CDDB33425F3FLL) ^ 0xAF72F13853040BEALL) >> (8 * (v3 & 7u))) ^ *(v0 + 295)) + 32028458;
  *(STACK[0xDCB8] + 387) = *(STACK[0xDCB8] + v24 - 6152 * (((89362129 * v24) >> 32) >> 7));
  v25 = *(v0 + 736) + 17;
  *(v0 + 752) = v25;
  *(v0 + 296) = v25;
  v26 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (v1 + 20672));
  return (*(v26 + 8 * (*(v0 + 3792) ^ 0x2346)))();
}

uint64_t sub_1004F9050@<X0>(__int16 a1@<W8>)
{
  v1 = STACK[0x51B8] - 22407;
  LOWORD(STACK[0xD9B6]) = a1;
  return (*(STACK[0x57D8] + 8 * ((13334 * (v1 == -1512867011)) ^ (v1 | 0x1310))))();
}

uint64_t sub_1004F914C()
{
  v3 = 551690071 * ((0x21DB8548E74560 - ((v2 - 240) | 0x21DB8548E74560) + STACK[0x3D20]) ^ 0x8E4376B4F9F5E9C8);
  LODWORD(STACK[0x1D4C8]) = v0 - 1233228800 - v3 - 1310;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  STACK[0x1D4E0] = v3 + 4151854225u;
  LODWORD(STACK[0x1D4CC]) = v0 - 1233228800 - v3 - 1329;
  LODWORD(STACK[0x1D4D0]) = v3;
  LODWORD(STACK[0x1D4C4]) = (v0 - 1233234258) ^ v3;
  STACK[0x1D4D8] = v1 - v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9201)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_1004F9298(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x5408]) = v12;
  LODWORD(STACK[0x5420]) = v9;
  LODWORD(STACK[0x5430]) = a8;
  v15 = v11 + STACK[0x54D0];
  v16 = STACK[0x55E0];
  v17 = STACK[0x52E0];
  if (STACK[0x55E0])
  {
    v17 = STACK[0x4FE0];
  }

  v18 = STACK[0x4FC8];
  if ((v16 & 1) == 0)
  {
    v18 = STACK[0x4868];
  }

  if ((v16 & 2) != 0)
  {
    v19 = STACK[0x4F08];
  }

  else
  {
    v19 = STACK[0x4F10];
  }

  if ((v16 & 2) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  if ((v16 & 2) != 0)
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  LODWORD(STACK[0x52B0]) = v21;
  v22 = STACK[0x53E0];
  v23 = -263119183 * ((v13 ^ (v13 >> 8)) - v22) - ((-263119183 * ((v13 ^ (v13 >> 8)) - v22)) >> 16);
  v24 = STACK[0x5680];
  v25 = LODWORD(STACK[0x4EC8]) ^ 0x1BC9;
  LODWORD(STACK[0x55C0]) = 3769 * v25;
  v26 = (3769 * v25 - 155596017) * (v23 + v24 - (v23 >> 8)) - (((3769 * v25 - 155596017) * (v23 + v24 - (v23 >> 8))) >> 16);
  LODWORD(STACK[0x51B0]) = v25 + 15705;
  v27 = (v26 >> ((v25 + 89) ^ 0x57)) ^ v26;
  LODWORD(STACK[0x5500]) = v27;
  LODWORD(STACK[0x4EC0]) = a7;
  v28 = -957767083 * (v10 + a7 - v8) - ((-957767083 * (v10 + a7 - v8)) >> 16);
  v29 = -263119183 * ((v28 ^ (v28 >> 8)) - v22) - ((-263119183 * ((v28 ^ (v28 >> 8)) - v22)) >> 16);
  v30 = (1560189481 * (v15 ^ v22)) ^ ((1560189481 * (v15 ^ v22)) >> 16);
  v31 = -719642135 * (v30 - v24 + (v30 >> 8)) - ((-719642135 * (v30 - v24 + (v30 >> 8))) >> 16);
  v32 = (197225553 * ((v31 ^ (v31 >> 8)) - a1)) ^ ((197225553 * ((v31 ^ (v31 >> 8)) - a1)) >> 16);
  v33 = -155573403 * (v29 + v24 - (v29 >> 8)) - ((-155573403 * (v29 + v24 - (v29 >> 8))) >> 16);
  v34 = v33 ^ (v33 >> 8);
  v35 = v27 - LODWORD(STACK[0x52F8]);
  v36 = -332551831 * (v32 + LODWORD(STACK[0x56F0]) + (v32 >> 8));
  LODWORD(STACK[0x54D0]) = a5;
  v37 = v36 + HIWORD(v36) - ((v36 + HIWORD(v36)) >> 8);
  v38 = v36 + BYTE2(v36) - ((v36 + HIWORD(v36)) >> 8) - v35;
  v39 = v37 - v35 - v35;
  v40 = v39 - v35;
  v41 = STACK[0x5368];
  if (v39)
  {
    v42 = STACK[0x5368];
  }

  else
  {
    v42 = v20;
  }

  LODWORD(STACK[0x5308]) = v42;
  if (v39)
  {
    v43 = v19;
  }

  else
  {
    v43 = v21;
  }

  LODWORD(STACK[0x53C0]) = v43;
  v44 = STACK[0x5258];
  v45 = STACK[0x5380];
  if (v40)
  {
    v46 = STACK[0x5258];
  }

  else
  {
    v46 = STACK[0x5380];
  }

  v47 = STACK[0x5260];
  v48 = STACK[0x54E0];
  if (v40)
  {
    v49 = STACK[0x5260];
  }

  else
  {
    v49 = STACK[0x54E0];
  }

  v50 = 1582455976 * v34;
  v51 = v34;
  LODWORD(STACK[0x56C0]) = v34;
  LODWORD(STACK[0x5590]) = 8 * v27;
  v52 = -8 * v27;
  if ((v40 & 2) != 0)
  {
    v53 = v49;
  }

  else
  {
    v53 = v46;
  }

  v54 = v50 & 0x18;
  v55 = v14;
  v56 = v50;
  v57 = (v53 << (v50 & 0x18)) | (v53 >> (v52 & 0x18));
  if ((v52 & 0x18) != 0)
  {
    v53 = v57;
  }

  LODWORD(STACK[0x5320]) = v53;
  if ((v39 & 2) != 0)
  {
    v58 = v42;
  }

  else
  {
    v58 = v43;
  }

  v59 = v52 & 0x18;
  v60 = v52;
  v61 = (v58 >> (v52 & 0x18)) ^ (v58 << v54);
  if ((v52 & 0x18) != 0)
  {
    v58 = v61;
  }

  LODWORD(STACK[0x5288]) = v58;
  v62 = STACK[0x5268];
  if (v38)
  {
    v63 = STACK[0x5410];
  }

  else
  {
    v63 = STACK[0x5268];
  }

  v64 = STACK[0x5370];
  if (v38)
  {
    v65 = STACK[0x5370];
  }

  else
  {
    v65 = STACK[0x5410];
  }

  LODWORD(STACK[0x5340]) = v65;
  v66 = STACK[0x5328];
  if (v38)
  {
    v64 = STACK[0x5328];
    v66 = v62;
  }

  LODWORD(STACK[0x5370]) = v66;
  if ((v38 & 2) != 0)
  {
    v67 = v64;
  }

  else
  {
    v67 = v63;
  }

  v68 = v67 >> v59;
  if ((v38 & 2) != 0)
  {
    v69 = v66;
  }

  else
  {
    v69 = v65;
  }

  v70 = v56 & 0x18;
  v71 = v68 ^ (v67 << (v56 & 0x18));
  if ((v56 & 0x18) != 0)
  {
    v72 = v71;
  }

  else
  {
    v72 = v67;
  }

  LODWORD(STACK[0x5220]) = v72;
  LODWORD(STACK[0x5300]) = v40;
  if (v40)
  {
    v73 = v48;
  }

  else
  {
    v73 = v44;
  }

  if (v40)
  {
    v74 = v45;
  }

  else
  {
    v74 = v47;
  }

  if ((v40 & 2) != 0)
  {
    v49 = v46;
    v75 = v73;
  }

  else
  {
    v75 = v74;
  }

  if ((v40 & 2) != 0)
  {
    v76 = v74;
  }

  else
  {
    v76 = v73;
  }

  LODWORD(STACK[0x52F0]) = v60;
  if ((v60 & 0x18) != 0)
  {
    v77 = (v69 << v70) ^ (v69 >> (v60 & 0x18));
  }

  else
  {
    v77 = v69;
  }

  LODWORD(STACK[0x5228]) = v77;
  v78 = STACK[0x5780];
  if (STACK[0x5780])
  {
    v79 = STACK[0x5580];
  }

  else
  {
    v79 = STACK[0x4ED8];
  }

  if (v78)
  {
    v80 = STACK[0x4ED0];
  }

  else
  {
    v80 = STACK[0x5310];
  }

  if ((v78 & 2) != 0)
  {
    v81 = v80;
  }

  else
  {
    v81 = v79;
  }

  if ((v78 & 2) != 0)
  {
    v82 = v79;
  }

  else
  {
    v82 = v80;
  }

  LODWORD(STACK[0x51C0]) = v37;
  v83 = STACK[0x5338];
  if (v37)
  {
    v84 = v82;
  }

  else
  {
    v84 = STACK[0x5338];
  }

  LODWORD(STACK[0x5310]) = v84;
  v85 = STACK[0x5570];
  if (v37)
  {
    v86 = v81;
  }

  else
  {
    v86 = STACK[0x5570];
  }

  LODWORD(STACK[0x54E0]) = v86;
  if ((v37 & 2) == 0)
  {
    v86 = v84;
  }

  v87 = v60 & 0x18;
  if (v87)
  {
    v88 = (v86 >> v87) | (v86 << v70);
  }

  else
  {
    v88 = v86;
  }

  LODWORD(STACK[0x5210]) = v88;
  LODWORD(STACK[0x52F8]) = v56;
  if ((v56 & 0x18) != 0)
  {
    v89 = (v75 << (v56 & 0x18)) + (v75 >> v87);
  }

  else
  {
    v89 = v75;
  }

  LODWORD(STACK[0x52E0]) = v89;
  if ((v16 & 2) != 0)
  {
    v90 = STACK[0x5018];
  }

  else
  {
    v90 = STACK[0x5008];
  }

  if ((v16 & 2) != 0)
  {
    v91 = STACK[0x5010];
  }

  else
  {
    v91 = STACK[0x4FE8];
  }

  if ((v16 & 2) != 0)
  {
    v92 = STACK[0x4FD0];
  }

  else
  {
    v92 = STACK[0x4FD8];
  }

  if (v39)
  {
    v93 = v20;
  }

  else
  {
    v93 = v19;
  }

  if (v39)
  {
    v94 = STACK[0x52B0];
  }

  else
  {
    v94 = v41;
  }

  v95 = 8 * v51;
  if ((v39 & 2) != 0)
  {
    v96 = v93;
  }

  else
  {
    v96 = v94;
  }

  v97 = v95 & 0x18;
  if ((v95 & 0x18) != 0)
  {
    v98 = (v96 >> v87) | (v96 << (v95 & 0x18));
  }

  else
  {
    v98 = v96;
  }

  LODWORD(STACK[0x5268]) = v98;
  if ((v95 & 0x18) != 0)
  {
    v99 = (v76 >> v87) | (v76 << v97);
  }

  else
  {
    v99 = v76;
  }

  LODWORD(STACK[0x52B0]) = v99;
  if ((v95 & 0x18) != 0)
  {
    v100 = (v49 << v97) ^ (v49 >> v87);
  }

  else
  {
    v100 = v49;
  }

  LODWORD(STACK[0x5290]) = v100;
  v101 = v91 ^ LODWORD(STACK[0x5510]);
  if (v39)
  {
    v102 = v91 ^ LODWORD(STACK[0x5510]);
  }

  else
  {
    v102 = v90 ^ LODWORD(STACK[0x5510]);
  }

  v103 = STACK[0x5540];
  if (v39)
  {
    v104 = v90 ^ LODWORD(STACK[0x5510]);
  }

  else
  {
    v104 = STACK[0x5540];
  }

  LODWORD(STACK[0x51C8]) = v104;
  if ((v38 & 2) != 0)
  {
    v105 = v63;
  }

  else
  {
    v105 = v64;
  }

  if (v39)
  {
    v106 = v103;
  }

  else
  {
    v106 = v55;
  }

  if (v39)
  {
    v107 = v55;
  }

  else
  {
    v107 = v101;
  }

  LODWORD(STACK[0x51D8]) = v107;
  v108 = STACK[0x5520];
  v109 = STACK[0x4E78];
  v110 = STACK[0x56F0];
  v111 = (46082049 * ((v109 - v108) ^ v110)) ^ ((46082049 * ((v109 - v108) ^ v110)) >> 16);
  v112 = -957767083 * (v111 + LODWORD(STACK[0x4EC0]) - (v111 >> 8));
  v113 = -263119183 * (((v112 - HIWORD(v112)) ^ ((v112 - HIWORD(v112)) >> 8)) - v22);
  v114 = v113 - HIWORD(v113);
  v115 = v114 ^ __ROR4__(__ROR4__(v114 ^ LODWORD(STACK[0x5398]), 18) ^ 0x5485C5C0, 14) ^ 0x17015217;
  if (v39)
  {
    v116 = STACK[0x55F0];
  }

  else
  {
    v116 = v115;
  }

  if (v39)
  {
    v117 = v92;
  }

  else
  {
    v117 = STACK[0x55F0];
  }

  if (v39)
  {
    v92 = STACK[0x5088];
  }

  else
  {
    v115 = STACK[0x5088];
  }

  if ((v95 & 0x18) != 0)
  {
    v118 = (v105 >> v87) | (v105 << (v95 & 0x18));
  }

  else
  {
    v118 = v105;
  }

  LODWORD(STACK[0x5218]) = v118;
  v119 = STACK[0x51C0];
  if (STACK[0x51C0])
  {
    v120 = v83;
  }

  else
  {
    v120 = v81;
  }

  if ((v119 & 1) == 0)
  {
    LODWORD(v85) = v82;
  }

  if ((v119 & 2) != 0)
  {
    v121 = v85;
  }

  else
  {
    v121 = v120;
  }

  if ((v39 & 2) != 0)
  {
    v122 = v94;
  }

  else
  {
    v122 = v93;
  }

  if ((v39 & 2) != 0)
  {
    v123 = STACK[0x53C0];
  }

  else
  {
    v123 = STACK[0x5308];
  }

  if ((v95 & 0x18) != 0)
  {
    v124 = (v121 >> v87) ^ (v121 << (v95 & 0x18));
  }

  else
  {
    v124 = v121;
  }

  LODWORD(STACK[0x51E0]) = v124;
  v125 = STACK[0x52F0];
  v126 = STACK[0x52F0] & 0x18;
  if ((STACK[0x52F0] & 0x18) != 0)
  {
    v127 = (v123 << (v95 & 0x18)) | (v123 >> (STACK[0x52F0] & 0x18));
  }

  else
  {
    v127 = v123;
  }

  LODWORD(STACK[0x5260]) = v127;
  if ((v56 & 0x18) != 0)
  {
    v128 = (v122 >> v126) + (v122 << (v56 & 0x18));
  }

  else
  {
    v128 = v122;
  }

  LODWORD(STACK[0x5258]) = v128;
  v129 = v119 + LODWORD(STACK[0x5530]);
  if ((v39 & 2) != 0)
  {
    v130 = v104;
  }

  else
  {
    v130 = v107;
  }

  STACK[0x5580] = v130;
  v131 = STACK[0x5680];
  v132 = v110;
  if (v129)
  {
    v110 = STACK[0x5680];
  }

  LODWORD(STACK[0x5338]) = v110;
  if (v129)
  {
    v133 = v132;
  }

  else
  {
    v133 = STACK[0x53D8];
  }

  if (v129)
  {
    v134 = STACK[0x53D8];
  }

  else
  {
    v134 = v22;
  }

  LODWORD(STACK[0x5368]) = v134;
  if (v129)
  {
    v135 = v22;
  }

  else
  {
    v135 = v131;
  }

  v136 = v131;
  v137 = v129;
  if ((v129 & 2) != 0)
  {
    v138 = v134;
  }

  else
  {
    v138 = v110;
  }

  if ((v39 & 2) != 0)
  {
    v139 = v116;
  }

  else
  {
    v139 = v92;
  }

  STACK[0x5398] = v139;
  if ((v39 & 2) != 0)
  {
    v140 = v92;
  }

  else
  {
    v140 = v116;
  }

  STACK[0x53C0] = v140;
  if ((v39 & 2) != 0)
  {
    v141 = v115;
  }

  else
  {
    v141 = v117;
  }

  STACK[0x5380] = v141;
  if ((v39 & 2) != 0)
  {
    v142 = v117;
  }

  else
  {
    v142 = v115;
  }

  STACK[0x53D8] = v142;
  if ((v39 & 2) != 0)
  {
    v143 = v106;
  }

  else
  {
    v143 = v102;
  }

  STACK[0x5410] = v143;
  if ((v39 & 2) != 0)
  {
    v144 = v102;
  }

  else
  {
    v144 = v106;
  }

  STACK[0x5570] = v144;
  if ((v119 & 2) != 0)
  {
    v145 = v120;
  }

  else
  {
    v145 = v85;
  }

  v146 = v137;
  if ((v137 & 2) != 0)
  {
    v147 = v135;
  }

  else
  {
    v147 = v133;
  }

  if (v38)
  {
    v148 = v108;
  }

  else
  {
    v148 = v109;
  }

  if ((STACK[0x5560] & 2) != 0)
  {
    v149 = STACK[0x4980];
  }

  else
  {
    v149 = STACK[0x4858];
  }

  if ((STACK[0x5560] & 2) != 0)
  {
    v150 = STACK[0x4860];
  }

  else
  {
    v150 = STACK[0x4EF8];
  }

  if (v38)
  {
    v151 = v109;
  }

  else
  {
    v151 = STACK[0x5470];
  }

  if (v38)
  {
    v152 = STACK[0x5390];
  }

  else
  {
    v152 = v108;
  }

  if (v38)
  {
    v153 = STACK[0x5470];
  }

  else
  {
    v153 = STACK[0x5390];
  }

  if (v38)
  {
    v154 = v149;
  }

  else
  {
    v154 = STACK[0x5250];
  }

  if (v38)
  {
    v155 = v150;
  }

  else
  {
    v155 = v149;
  }

  v156 = STACK[0x55B0];
  if (v38)
  {
    v157 = STACK[0x5250];
  }

  else
  {
    v157 = STACK[0x55B0];
  }

  if ((v38 & 1) == 0)
  {
    LODWORD(v156) = v150;
  }

  STACK[0x55E0] = v95 & 0x18;
  if ((v95 & 0x18) != 0)
  {
    v158 = (v145 >> v126) | (v145 << (v95 & 0x18));
  }

  else
  {
    v158 = v145;
  }

  LODWORD(STACK[0x5250]) = v158;
  v159 = v146;
  LODWORD(STACK[0x55F0]) = v146;
  if ((v146 & 2) != 0)
  {
    v160 = v133;
  }

  else
  {
    v160 = v135;
  }

  HIDWORD(v161) = STACK[0x56D0];
  LODWORD(v161) = STACK[0x56D0];
  v162 = (v161 >> 4) & ~LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x5128]);
  v163 = v114 - (v114 >> 8) + v136;
  v164 = STACK[0x5300];
  if (STACK[0x5300])
  {
    v165 = STACK[0x5278];
  }

  else
  {
    v165 = v162;
  }

  v166 = LODWORD(STACK[0x5280]) - v163;
  v167 = -155573403 * v163;
  v168 = v167 & 0xCB3E8248;
  if (!LODWORD(STACK[0x5328]))
  {
    v168 = v167;
  }

  v169 = v166 + 289363565 * (v168 | v167 & 0x34C17DB7);
  if (v164)
  {
    v170 = v169;
  }

  else
  {
    v170 = STACK[0x5278];
  }

  if ((STACK[0x52E8] & 2) != 0)
  {
    v171 = STACK[0x4878];
  }

  else
  {
    v171 = STACK[0x4870];
  }

  v172 = STACK[0x5300];
  if (v164)
  {
    v173 = v162;
  }

  else
  {
    v173 = v171;
  }

  v174 = (v38 & 2) == 0;
  if ((v38 & 2) != 0)
  {
    v175 = STACK[0x5340];
  }

  else
  {
    v175 = STACK[0x5370];
  }

  if (v174)
  {
    v176 = v157;
  }

  else
  {
    v176 = v155;
  }

  STACK[0x5470] = v176;
  if (v174)
  {
    v177 = v155;
  }

  else
  {
    v177 = v157;
  }

  STACK[0x53E0] = v177;
  if (v174)
  {
    v178 = v151;
  }

  else
  {
    v178 = v152;
  }

  LODWORD(STACK[0x5540]) = v178;
  if (v174)
  {
    v179 = v152;
  }

  else
  {
    v179 = v151;
  }

  LODWORD(STACK[0x5530]) = v179;
  if (v174)
  {
    v180 = v148;
  }

  else
  {
    v180 = v153;
  }

  LODWORD(STACK[0x5560]) = v180;
  if (v174)
  {
    v181 = v153;
  }

  else
  {
    v181 = v148;
  }

  LODWORD(STACK[0x5520]) = v181;
  if (v174)
  {
    v182 = v156;
  }

  else
  {
    v182 = v154;
  }

  STACK[0x5370] = v182;
  if (v174)
  {
    v183 = v154;
  }

  else
  {
    v183 = v156;
  }

  STACK[0x52E8] = v183;
  v184 = v125 & 0x18;
  v185 = (v175 >> (v125 & 0x18)) ^ (v175 << (v95 & 0x18));
  if ((v125 & 0x18) == 0)
  {
    v185 = v175;
  }

  LODWORD(STACK[0x5280]) = v185;
  v186 = STACK[0x50E0];
  v187 = STACK[0x50D8];
  if (v119)
  {
    LODWORD(v188) = STACK[0x50E0];
  }

  else
  {
    LODWORD(v188) = STACK[0x50D8];
  }

  if ((STACK[0x5780] & 2) != 0)
  {
    v189 = STACK[0x4F00];
  }

  else
  {
    v189 = STACK[0x4EF0];
  }

  if ((STACK[0x5780] & 2) != 0)
  {
    v190 = STACK[0x4EE8];
  }

  else
  {
    v190 = STACK[0x4EE0];
  }

  if ((v119 & 2) != 0)
  {
    v191 = STACK[0x5310];
  }

  else
  {
    v191 = STACK[0x54E0];
  }

  v192 = STACK[0x52F8] & 0x18;
  v174 = (STACK[0x52F8] & 0x18) == 0;
  STACK[0x56F0] = v192;
  LODWORD(STACK[0x5308]) = v184;
  if (!v174)
  {
    v191 = (v191 >> v184) | (v191 << v192);
  }

  if (v119)
  {
    v193 = STACK[0x5240];
  }

  else
  {
    v193 = STACK[0x53A8];
  }

  if (v119)
  {
    v194 = STACK[0x5230];
  }

  else
  {
    v194 = STACK[0x5240];
  }

  if (v119)
  {
    v195 = STACK[0x4DF8];
  }

  else
  {
    v195 = STACK[0x5230];
  }

  if (v119)
  {
    v196 = STACK[0x53A8];
  }

  else
  {
    v196 = STACK[0x4DF8];
  }

  if (v119)
  {
    v197 = v189;
  }

  else
  {
    v187 = v189;
    v197 = v190;
  }

  if ((v119 & 1) == 0)
  {
    v190 = v186;
  }

  v198 = STACK[0x5338];
  if ((v159 & 2) == 0)
  {
    v198 = STACK[0x5368];
  }

  if (v172)
  {
    v199 = v171;
  }

  else
  {
    v199 = v169;
  }

  v200 = -v95 & 0x18;
  LODWORD(STACK[0x56D0]) = v200;
  v201 = -1582455976 * LODWORD(STACK[0x56C0]);
  v202 = STACK[0x5590];
  v203 = STACK[0x5590] & 0x18;
  v204 = (v138 << (STACK[0x5590] & 0x18)) ^ (v138 >> v200);
  if (!v203)
  {
    v204 = v138;
  }

  if ((v202 & 0x18) != 0)
  {
    v198 = (v198 << v203) ^ (v198 >> v200);
  }

  v205 = (v160 << v203) | (v160 >> (v201 & 0x18));
  if ((v202 & 0x18) == 0)
  {
    v205 = v160;
  }

  if ((v172 & 2) != 0)
  {
    v206 = v173;
  }

  else
  {
    v206 = v170;
  }

  STACK[0x53A8] = v206;
  if ((v172 & 2) != 0)
  {
    v207 = v170;
  }

  else
  {
    v207 = v173;
  }

  STACK[0x52F8] = v207;
  if ((v172 & 2) != 0)
  {
    v208 = v199;
  }

  else
  {
    v208 = v165;
  }

  STACK[0x52F0] = v208;
  if ((v172 & 2) != 0)
  {
    v209 = v165;
  }

  else
  {
    v209 = v199;
  }

  STACK[0x54D0] = v209;
  if ((v119 & 2) != 0)
  {
    v210 = v193;
  }

  else
  {
    v210 = v195;
  }

  STACK[0x5338] = v210;
  if ((v119 & 2) != 0)
  {
    v211 = v195;
  }

  else
  {
    v211 = v193;
  }

  STACK[0x5368] = v211;
  if ((v119 & 2) != 0)
  {
    v212 = v194;
  }

  else
  {
    v212 = v196;
  }

  STACK[0x5340] = v212;
  if ((v119 & 2) != 0)
  {
    v213 = v196;
  }

  else
  {
    v213 = v194;
  }

  STACK[0x55B0] = v213;
  if ((v119 & 2) != 0)
  {
    v214 = v197;
  }

  else
  {
    v214 = v188;
  }

  STACK[0x54E0] = v214;
  if ((v119 & 2) != 0)
  {
    v188 = v188;
  }

  else
  {
    v188 = v197;
  }

  STACK[0x5310] = v188;
  if ((v119 & 2) != 0)
  {
    v215 = v187;
  }

  else
  {
    v215 = v190;
  }

  STACK[0x5300] = v215;
  if ((v119 & 2) != 0)
  {
    v216 = v190;
  }

  else
  {
    v216 = v187;
  }

  STACK[0x5390] = v216;
  LODWORD(v216) = STACK[0x51D8];
  if ((v39 & 2) != 0)
  {
    v216 = v216;
  }

  else
  {
    v216 = LODWORD(STACK[0x51C8]);
  }

  STACK[0x5328] = v216;
  LODWORD(STACK[0x5680]) = v201 & 0x18;
  if ((v201 & 0x18) != 0)
  {
    v217 = (v147 << v203) ^ (v147 >> (v201 & 0x18));
  }

  else
  {
    v217 = v147;
  }

  v218 = STACK[0x5700];
  v219 = STACK[0x5650];
  v220 = STACK[0x57B0];
  v221 = STACK[0x55D0];
  v222 = STACK[0x55D0] ^ (STACK[0x50A0] + STACK[0x50E8]) ^ v191 ^ v204;
  v223 = STACK[0x55D0] ^ (((STACK[0x5700] & 0x8484A4D0 ^ 0xE8A22D0 ^ STACK[0x52A8] & (LODWORD(STACK[0x5650]) ^ 0x9E6AA63E)) >> STACK[0x57C0]) + ((STACK[0x5700] & 0x24E0B4E4 ^ 0xCC028E2 ^ STACK[0x52A8] & (LODWORD(STACK[0x5660]) ^ 0x4EBC7A10u)) << v220)) ^ LODWORD(STACK[0x51E0]) ^ v205;
  v224 = STACK[0x55D0] ^ (((v218 & 0x80F470E4 ^ 0x8D268EA ^ STACK[0x52A8] & (LODWORD(STACK[0x5660]) ^ 0xEAAABE18)) << v220) + ((v218 & 0xA0B070D0 ^ 0x9A62D2 ^ STACK[0x52A8] & (LODWORD(STACK[0x5650]) ^ 0xB05E723C)) >> STACK[0x57C0])) ^ LODWORD(STACK[0x5250]) ^ v217;
  v225 = LODWORD(STACK[0x5210]) ^ ((STACK[0x5740] & 0x64A000B0 ^ 0x60A00A32 ^ (LODWORD(STACK[0x5660]) ^ 0x6FCCC44u) & STACK[0x50B0]) << v220) ^ STACK[0x50E8] ^ STACK[0x55D0] ^ v198;
  v226 = (((HIBYTE(v222) >> 3) & 0xFFFFFFFFFFFFFF1FLL | (32 * (HIBYTE(v222) & 7))) ^ 0xFA) + STACK[0x57A0];
  LOBYTE(v226) = (((*(v226 + 58304) ^ 0x3F) - 63) ^ ((*(v226 + 58304) ^ 8) - 8) ^ ((*(v226 + 58304) ^ 0x8A) + 118)) - 103;
  v227 = v226 & 0xA1 ^ 0xF;
  LOBYTE(v226) = v226 ^ (2 * ((v226 ^ 0x2A) & (2 * ((v226 ^ 0x2A) & (2 * ((v226 ^ 0x2A) & (2 * ((v226 ^ 0x2A) & (2 * ((v226 ^ 0x2A) & (2 * (((2 * v226) & 0x56 ^ 0xA) & (v226 ^ 0xA) ^ v227)) ^ v227)) ^ v227)) ^ v227)) ^ v227)) ^ v227));
  v228 = STACK[0x5770];
  v229 = *(STACK[0x5770] + 4 * (545 * HIBYTE(v223) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v223) + 702505)) >> 32))) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * v222 + 702505 - 1552 * ((2767376 * (545 * v222 + 702505)) >> 32))), 24) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE1(v224) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v224) + 702505)) >> 32))), 16) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE2(v225) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v225) + 702505)) >> 32))), 8);
  LODWORD(v226) = 545 * (117 * (((v226 ^ 0x33) + 59) ^ ((v226 ^ 0xFC) - 10) ^ ((v226 ^ 0xD7) - 33)) - 58) + 702505;
  v230 = *(STACK[0x5770] + 4 * (v226 - 1552 * ((2767376 * v226) >> 32))) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE1(v225) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v225) + 702505)) >> 32))), 16);
  v231 = (545 * BYTE2(v223) + 702505) % (((v229 & 0x610 ^ 0x610) + (v229 & 0x610)) & ~v230 | v230 & 0x610u);
  v232 = *(STACK[0x5770] + 4 * (545 * HIBYTE(v225) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v225) + 702505)) >> 32))) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE2(v224) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v224) + 702505)) >> 32))), 8) ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * BYTE1(v222) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v222) + 702505)) >> 32))), 16);
  v233 = 545 * BYTE2(v222) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v222) + 702505)) >> 32);
  v234 = 545 * v224 + 702505 - 1552 * ((2767376 * (545 * v224 + 702505)) >> 32);
  v235 = 545 * v225 + 702505 - 1552 * ((2767376 * (545 * v225 + 702505)) >> 32);
  v236 = 545 * HIBYTE(v224) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v224) + 702505)) >> 32);
  LODWORD(v226) = STACK[0x55F0];
  v237 = v229;
  v238 = STACK[0x56C0];
  v239 = STACK[0x5500];
  v240 = LODWORD(STACK[0x56C0]) - STACK[0x55E0] - LODWORD(STACK[0x5500]) + v203 + (v232 ^ __ROR4__(*(STACK[0x5770] + 4 * (545 * v223 + 702505 - 1552 * ((2767376 * (545 * v223 + 702505)) >> 32))), 24));
  v241 = STACK[0x5700] & 0x40430600 ^ 0xE022A0A0 ^ STACK[0x5070] & (LODWORD(STACK[0x5660]) ^ 0x83276146);
  v242 = STACK[0x5760];
  v243 = (STACK[0x5070] & LODWORD(STACK[0x5760])) << STACK[0x5790];
  v244 = STACK[0x5790];
  v245 = (STACK[0x5700] & 0x46464204 ^ 0x46A20080 ^ STACK[0x5070] & (LODWORD(STACK[0x5650]) ^ 0x46034362u)) >> STACK[0x57C0];
  LODWORD(STACK[0x5590]) = v203;
  LODWORD(v243) = v203 ^ v221 ^ (v243 | v245) ^ v226 ^ STACK[0x56F0] ^ v226 ^ v230 ^ __ROR4__(*(v228 + 4 * v231), 8) ^ LODWORD(STACK[0x5218]) ^ __ROR4__(*(v228 + 4 * v234), 24);
  v246 = v239 ^ v238 ^ (v241 << v244) ^ v245 ^ v221 ^ LODWORD(STACK[0x5220]) ^ v240;
  LODWORD(v226) = STACK[0x5740] & 0x47474746 ^ 0xA0E3E2A3;
  v247 = v219;
  v248 = (v219 ^ 0x8704C507) & v226;
  v249 = STACK[0x5740];
  v250 = STACK[0x5740] & 0x7414440 ^ 0x80E1C0A1 ^ v248;
  LODWORD(v245) = STACK[0x5720];
  v251 = STACK[0x57B0];
  v252 = (v242 & v226) << STACK[0x57B0];
  v253 = STACK[0x5330];
  STACK[0x5780] = STACK[0x5330];
  LODWORD(v250) = v221 ^ (v252 | (v250 >> v253)) ^ __ROR4__(*(v228 + 4 * v235), 24) ^ *(v228 + 4 * v236) ^ __ROR4__(*(v228 + 4 * (545 * BYTE1(v223) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v223) + 702505)) >> 32))), 16) ^ LODWORD(STACK[0x5228]);
  v255 = __ROR4__(*(v228 + 4 * v233), 8);
  v254 = v250 ^ v255;
  v256 = v237 ^ v252 ^ ((v245 & v226) >> v253) ^ v221 ^ LODWORD(STACK[0x5280]);
  v257 = STACK[0x57A0];
  LOBYTE(v226) = *(STACK[0x57A0] + (((v246 >> 5) & 0xF8 | (v246 >> 13)) ^ 0x2F71));
  LOBYTE(v226) = 121 * (((v226 ^ 0xB5) + 75) ^ ((v226 ^ 0x4B) - 75) ^ ((v226 ^ 0x43) - 67));
  LOBYTE(v239) = (v226 - 116) & 0x5D ^ 0xCA;
  LOBYTE(v226) = (v226 - 116) ^ (2 * (((v226 - 116) ^ 0x48) & (2 * (((v226 - 116) ^ 0x48) & (2 * (((v226 - 116) ^ 0x48) & (2 * (((v226 - 116) ^ 0x48) & (2 * ((v226 - 116) & (2 * ((v226 + 12) & (2 * (v226 - 116)) & 0x12 ^ v239)) ^ v239)) ^ v239)) ^ v239)) ^ v239)) ^ v239));
  LOBYTE(v239) = ((v226 ^ 0x1E) - 45) ^ ((v226 ^ 2) - 49) ^ ((v226 ^ 0xB) - 56);
  LODWORD(v250) = 545 * ((v250 ^ v255) >> 8) + 702505;
  v258 = v250 - 1552 * ((2767376 * v250) >> 32);
  LODWORD(v252) = 545 * v256 + 702505 - 1552 * ((2767376 * (545 * v256 + 702505)) >> 32);
  LODWORD(STACK[0x5280]) = 545 * HIBYTE(v256) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v256) + 702505)) >> 32);
  v259 = v247;
  LODWORD(v250) = v247 ^ 0x50301048;
  v260 = STACK[0x5048];
  STACK[0x5278] = v249 & 0x40501000 ^ 0x501020 ^ v250 & STACK[0x5048];
  LODWORD(STACK[0x5250]) = 545 * BYTE2(v246) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v246) + 702505)) >> 32);
  LOBYTE(v233) = v251;
  v261 = 545 * (LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x56D0]) ^ v246) + 702505;
  LODWORD(v251) = v221 ^ (((v218 & 0x50001000 ^ 0x48003828 ^ STACK[0x4BA0] & (v259 ^ 0x48603840)) >> STACK[0x57C0]) + (STACK[0x4B60] << v251)) ^ LODWORD(STACK[0x5258]) ^ __ROR4__(*(v228 + 4 * (545 * BYTE1(v256) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v256) + 702505)) >> 32))), 16) ^ __ROR4__(*(v228 + 4 * (545 * BYTE2(v243) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v243) + 702505)) >> 32))), 8) ^ __ROR4__(*(v228 + 4 * (v261 - 1552 * ((2767376 * v261) >> 32))), 24) ^ *(v228 + 4 * (545 * HIBYTE(v254) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v254) + 702505)) >> 32)));
  LODWORD(v250) = *(v228 + 4 * (545 * (v239 - 120) + 702505 - 1552 * ((2767376 * (545 * (v239 - 120) + 702505)) >> 32)));
  v262 = LODWORD(STACK[0x5260]) ^ ((v218 & 0x40105040 ^ 0x60201008 ^ STACK[0x4BA0] & (LODWORD(STACK[0x5660]) ^ 0x681038u)) << STACK[0x5790]) ^ ((STACK[0x4BA0] & v245) >> STACK[0x57C0]) ^ v221 ^ *(v228 + 4 * (545 * BYTE3(v243) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v243) + 702505)) >> 32))) ^ __ROR4__(v250, 16) ^ __ROR4__(*(v228 + 4 * (545 * BYTE2(v256) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v256) + 702505)) >> 32))), 8) ^ __ROR4__(*(v228 + 4 * (545 * v254 + 702505 - 1552 * ((2767376 * (545 * v254 + 702505)) >> 32))), 24);
  LODWORD(v226) = ((v249 & 0x10400010 ^ 0x20402820 ^ (LODWORD(STACK[0x5660]) ^ 0x50186840) & v260) << STACK[0x5790]) ^ (STACK[0x4BA8] >> STACK[0x5780]);
  LOBYTE(v260) = *(((55 * HIBYTE(v246)) ^ 0xF7u) + v257 + 39488);
  v263 = 545 * ((((v260 ^ 0xD8) - 65) ^ ((v260 ^ 0x85) - 28) ^ ((v260 ^ 0xA2) - 59)) + 89) + 702505;
  v264 = *(v228 + 4 * (545 * BYTE2(v254) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v254) + 702505)) >> 32)));
  LODWORD(v252) = LODWORD(STACK[0x5288]) ^ v226 ^ v221 ^ __ROR4__(*(v228 + 4 * v252), 24) ^ __ROR4__(*(v228 + 4 * (545 * BYTE1(v243) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v243) + 702505)) >> 32))), 16) ^ *(v228 + 4 * (v263 - 1552 * ((2767376 * v263) >> 32))) ^ ((v264 << ((BYTE2(v250) & 0x18 ^ 0x18) + (BYTE2(v250) & 0x18u))) | (v264 >> 8));
  v265 = 545 * v243;
  LODWORD(v264) = LODWORD(STACK[0x5268]) ^ v221 ^ ((STACK[0x5050] << v233) | (STACK[0x5278] >> STACK[0x57C0])) ^ __ROR4__(*(v228 + 4 * v258), 16) ^ *(v228 + 4 * LODWORD(STACK[0x5280])) ^ __ROR4__(*(v228 + 4 * LODWORD(STACK[0x5250])), 8) ^ __ROR4__(*(v228 + 4 * (v265 + 702505 - 1552 * ((2767376 * (v265 + 702505)) >> 32))), 24);
  LOBYTE(v226) = *(v257 + (((v262 >> 5) & 0xF8 | (v262 >> 13)) ^ 0x1CF18));
  LODWORD(v226) = 545 * ((((v226 ^ 0x46) - 126) ^ ((v226 ^ 0x10) - 40) ^ ((v226 ^ 0xE) - 54)) - 60) + 702505;
  LOWORD(v239) = (v265 - 18391) ^ (2006 - v265);
  v266 = STACK[0x5038];
  v267 = (v218 & 0x5A0A0A5A ^ 0x4C042203 ^ STACK[0x5038] & (LODWORD(STACK[0x5660]) ^ 0x3D526D2Du)) << STACK[0x5790];
  v268 = LODWORD(STACK[0x5290]) ^ v221 ^ (v267 | STACK[0x4B68]) ^ ((*(v228 + 4 * (545 * BYTE3(v252) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v252) + 702505)) >> 32))) ^ __ROR4__(*(v228 + 4 * (545 * BYTE2(v251) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v251) + 702505)) >> 32))), 8) ^ __ROR4__(*(v228 + 4 * (v226 - 1552 * ((2767376 * v226) >> 32))), 16) ^ __ROR4__(*(v228 + 4 * (545 * v264 + 702505 - 1552 * ((2767376 * (545 * v264 + 702505)) >> 32))), 24)) + 1877231763 * LODWORD(STACK[0x4B98]));
  LODWORD(v226) = *(v257 + (((8 * (v268 & 0x1F)) | (v268 >> 5)) ^ 0xB2u) + 128018);
  LODWORD(v226) = 545 * ((((v226 >> 2) | (v226 << 6)) ^ (((v226 >> 2) | (v226 << 6)) >> 5) ^ (((v226 >> 2) | (v226 << 6)) >> 1) ^ 0x9C) + 100) + 702505;
  v269 = *(v228 + 4 * (v226 - 1552 * ((2767376 * v226) >> 32)));
  LODWORD(STACK[0x5258]) = (545 * BYTE2(v268) + 702505) % ((~v269 & 0x58A164E2) + (v269 | 0xA75E9B1D) + 1553);
  LOBYTE(v226) = *(v257 + (((v252 >> 3) & 0xE0 | (v252 >> 11)) ^ 0x57) + 133216);
  LOBYTE(v250) = 117 * (((v226 ^ 0xB) + 45) ^ ((v226 ^ 0x1D) + 59) ^ ((v226 ^ 0xBF) - 103)) - 91;
  LODWORD(v226) = 545 * BYTE1(v264) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v264) + 702505)) >> 32);
  HIDWORD(v270) = *(v228 + 4 * (545 * v250 + 702505 - 1552 * ((2767376 * (545 * v250 + 702505)) >> 32)));
  LODWORD(v270) = HIDWORD(v270);
  v271 = LODWORD(STACK[0x5320]) ^ v267 ^ STACK[0x4C68] ^ v221 ^ *(v228 + 4 * (545 * HIBYTE(v262) + 702505 - 1552 * ((2767376 * (545 * HIBYTE(v262) + 702505)) >> 32))) ^ __ROR4__(*(v228 + 4 * (545 * v251 + 702505 - 1552 * ((2767376 * (545 * v251 + 702505)) >> 32))), 24) ^ __ROR4__(*(v228 + 4 * (545 * BYTE2(v264) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v264) + 702505)) >> 32))), 8) ^ __ROR4__(v270 >> 31, 17);
  LODWORD(v264) = LODWORD(STACK[0x52B0]) ^ v221 ^ (v267 | ((v218 & 0x81A1812 ^ 0xC201526 ^ v266 & (LODWORD(STACK[0x5650]) ^ 0x1C5F1C58u)) >> STACK[0x5780])) ^ *(v228 + 4 * (545 * BYTE3(v264) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v264) + 702505)) >> 32))) ^ __ROR4__(*(v228 + 4 * (545 * v262 + 702505 - 1552 * ((2767376 * (545 * v262 + 702505)) >> 32))), 24) ^ __ROR4__(*(v228 + 4 * ((545 * BYTE1(v251) + 702505) % (v239 & 0x610u))), 16) ^ __ROR4__(*(v228 + 4 * (545 * BYTE2(v252) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v252) + 702505)) >> 32))), 8);
  v272 = v221 ^ ((STACK[0x5040] << STACK[0x57B0]) + STACK[0x4D98]) ^ LODWORD(STACK[0x52E0]) ^ __ROR4__(*(v228 + 4 * v226), 16) ^ *(v228 + 4 * (545 * BYTE3(v251) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v251) + 702505)) >> 32))) ^ __ROR4__(*(v228 + 4 * (545 * v252 + 702505 - 1552 * ((2767376 * (545 * v252 + 702505)) >> 32))), 24) ^ __ROR4__(*(v228 + 4 * (545 * BYTE2(v262) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v262) + 702505)) >> 32))), 8);
  LODWORD(v226) = *(v257 + (((v271 >> 21) & 0xF8 | (v271 >> 29)) ^ 0x50) + 125710);
  LODWORD(STACK[0x52B0]) = ((v226 ^ 0xA) + 51) ^ ((v226 ^ 0x5C) + 101) ^ ((v226 ^ 0xFFFFFF88) - 79);
  LOBYTE(v230) = *((v272 ^ 0xC2u) + v257 + 63680);
  LOBYTE(v269) = (((v272 ^ 0x8F) + 56) ^ ((v272 ^ 0x8A) + 51) ^ ((v272 ^ 0xD9) + 98)) + (((v230 ^ 0xD8) + 40) ^ ((v230 ^ 0x74) - 116) ^ ((v230 ^ 0x11) - 17)) + 117;
  LOBYTE(v230) = v269 & 0x21 ^ 0xA3;
  LOBYTE(v269) = v269 ^ (2 * ((v269 ^ 0x62) & (2 * ((v269 ^ 0x62) & (2 * ((v269 ^ 0x62) & (2 * ((v269 ^ 0x62) & (2 * ((v269 ^ 0x42) & (2 * (((2 * v269) & 0x46 ^ 0x42) & (v269 ^ 0x42) ^ v230)) ^ v230)) ^ v230)) ^ v230)) ^ v230)) ^ v230));
  v273 = 545 * (LODWORD(STACK[0x4E44]) - 85 * (((v269 ^ 0x50) + 55) ^ ((v269 ^ 0xB8) - 33) ^ ((v269 ^ 0x87) - 30))) + 702505;
  v274 = (45 * ((STACK[0x52E8] >> 27) & 1)) ^ LODWORD(STACK[0x4EC8]);
  HIDWORD(v270) = *(v228 + 4 * (545 * BYTE2(v272) + 702505 - 1552 * ((2767376 * (545 * BYTE2(v272) + 702505)) >> 32)));
  LODWORD(v270) = HIDWORD(v270);
  LODWORD(STACK[0x5288]) = v270 >> 8;
  v275 = *(v228 + 4 * (545 * v264 + 702505 - 1552 * ((2767376 * (545 * v264 + 702505)) >> 32)));
  LODWORD(v226) = *(v228 + 4 * (545 * BYTE1(v271) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v271) + 702505)) >> 32)));
  LODWORD(STACK[0x5320]) = LODWORD(STACK[0x5148]) ^ 0xFFFFFFBD;
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x4E88]) + 5;
  HIDWORD(v270) = v226;
  LODWORD(v270) = v226;
  LODWORD(STACK[0x5290]) = v270 >> 16;
  HIDWORD(v270) = v275;
  LODWORD(v270) = v275;
  LODWORD(STACK[0x5280]) = v270 >> 24;
  LODWORD(STACK[0x5260]) = *(v228 + 4 * (545 * BYTE3(v264) + 702505 - 1552 * ((2767376 * (545 * BYTE3(v264) + 702505)) >> 32)));
  LODWORD(STACK[0x5278]) = *(v228 + 4 * (545 * BYTE1(v268) + 702505 - 1552 * ((2767376 * (545 * BYTE1(v268) + 702505)) >> 32)));
  HIDWORD(v270) = *(v228 + 4 * (v273 - 1552 * ((2767376 * v273) >> 32)));
  LODWORD(v270) = HIDWORD(v270);
  LODWORD(STACK[0x5268]) = v270 >> 24;
  LODWORD(STACK[0x5258]) = *(v228 + 4 * LODWORD(STACK[0x5258]));
  v276 = *(STACK[0x57D8] + 8 * v274);
  LODWORD(STACK[0x52E0]) = -LODWORD(STACK[0x55F0]);
  return v276(702505);
}

uint64_t sub_1004FB2D4@<X0>(int a1@<W1>, int a2@<W8>)
{
  v6 = *(STACK[0x57C0] + (4843 * a2 + 8698028) % 0x16B8u);
  v7 = (((v6 ^ 0xEDFF807A) + 302022534) ^ ((v6 ^ 0xA6BD59F0) + 1497540112) ^ ((v6 ^ (v2 + 1262663577)) - 1262672205)) * a1 + 4383784;
  v8 = *(v3 + 4 * (v7 - (((v7 * v5) >> 32) >> 12) * v4));
  v9 = 4843 * (((HIBYTE(v8) ^ 0xDF3CDDF) + 1268920442) ^ ((HIBYTE(v8) ^ 0x24C571D7) + 1653902450) ^ ((HIBYTE(v8) ^ 0x2936BC60) + 1869038023)) - 1354611524;
  v10 = 4843 * (((v8 ^ 0xD5C290E6) + 1290117254) ^ ((v8 ^ 0xDC972D2B) + 1169169737) ^ ((v8 ^ 0x955BD47) - 1871540955)) - 1477157317;
  v11 = *(STACK[0x57C0] + (4843 * (BYTE2(v8) ^ 0x4Fu) + 6213569) % 0x16B8) << 8;
  v12 = *(STACK[0x57C0] + 4843 * (BYTE1(v8) ^ 0xB6) + 6213569 - 5816 * (((11815591 * (4843 * (BYTE1(v8) ^ 0xB6u) + 6213569)) >> 32) >> 4));
  v13 = *(STACK[0x57C0] + v10 % 0x16B8);
  *(v3 + 4 * (6157 * a2 + 9469466 - ((((6157 * a2 + 9469466) * v5) >> 32) >> 12) * v4)) = (((((((v11 ^ 0xFF205D) & ((*(STACK[0x57C0] + v9 % 0x16B8) << 16) ^ 0x41A75D) | v11 & 0x5800) ^ 0x4EDFA5) & (v12 ^ 0xFFFF39) ^ v12 & 7) << 8) ^ 0xAF3E329E) & (v13 ^ 0xFFFFFF79) | v13 & 0x61) ^ LODWORD(STACK[0x368C]);
  return (*(STACK[0x57D8] + 8 * ((22887 * (a2 == 255)) ^ v2)))();
}

uint64_t sub_1004FB598@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, unsigned __int8 a6@<W7>, unsigned __int8 a7@<W8>)
{
  LODWORD(STACK[0x5460]) = v8 + a1;
  LODWORD(STACK[0x53E8]) = a3 ^ __ROR4__(v11, 24);
  v23 = (v10 ^ 0x58) & (2 * (v10 & 0x19)) ^ v10 & 0x19;
  v24 = ((2 * (v10 ^ 0x48)) ^ 0xA2) & (v10 ^ 0x48) ^ (2 * (v10 ^ 0x48)) & 0x50;
  v25 = v10 ^ (2 * (((4 * (v24 ^ 0x51)) & 0x50 ^ ((4 * (v24 ^ 0x51)) ^ 0x40) & (v24 ^ 0x51) ^ 0x40) & (16 * (v24 & (4 * v23) ^ v23)) ^ v24 & (4 * v23) ^ v23));
  v26 = ((v25 ^ 0x78) - 2) ^ v25 ^ ((v25 ^ 0x9B) + 31);
  v27 = (v26 ^ v16) + 80;
  v28 = v27 & 0x71 ^ a5;
  v29 = v27 ^ (2 * ((v27 ^ 0x44) & (2 * ((v27 ^ 0x44) & (2 * ((v27 ^ 0x44) & (2 * ((v27 ^ 0x44) & (2 * ((v27 ^ 0x44) & (2 * (v28 ^ v27 & (2 * v26) & 0xA)) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  v30 = ((v18 ^ LODWORD(STACK[0x2330])) - 529845979) ^ ((v18 ^ 0x2669B271) - 644461169) ^ ((v18 ^ 0x39FD7CB3) - 972913843);
  v31 = 545 * (((v15 ^ 0xF44244FC) + 196983556) ^ ((v15 ^ 0x2DC60D20) - 767954208) ^ ((v15 ^ 0xD9844961) + 645641887)) + 103005;
  LODWORD(STACK[0x5378]) = v31 - ((((v31 >> 4) * v14) >> 32) >> 1) * v20;
  v32 = 545 * (((a6 ^ 0xA50E3564) + 1525795484) ^ ((a6 ^ 0x11CF38FC) - 298793212) ^ ((a6 ^ 0xB4C10D81) + 1262416511)) + 13625;
  LODWORD(STACK[0x5358]) = v32 - ((((v32 >> 4) * v14) >> 32) >> 1) * v20;
  LODWORD(STACK[0x5270]) = 545 * v30 + 13625 - (((((545 * v30 + 13625) >> 4) * v14) >> 32) >> 1) * v20;
  v33 = 545 * (((v29 ^ 0x1CF6E58C) - 485942679) ^ ((v29 ^ 0x321C81DD) - 840729030) ^ ((v29 ^ 0x2EEA6420) - 787113019)) + 57770;
  LODWORD(STACK[0x5288]) = v33 - ((((v33 >> 4) * v14) >> 32) >> 1) * v20;
  v34 = 545 * (((v19 ^ 0x72C0426B) - 1925202539) ^ ((v19 ^ 0x7EFB24E4) - 2130388196) ^ ((v19 ^ 0xC3B66F7) - 205219575)) + 65400;
  LODWORD(STACK[0x5140]) = v34 - ((((v34 >> 4) * v14) >> 32) >> 1) * v20;
  LODWORD(STACK[0x5148]) = 545 * (v9 - 78) - ((545 * (v9 - 78) * v21) >> 32) * v20;
  LODWORD(STACK[0x5100]) = 545 * LODWORD(STACK[0x54C0]) - (((545 * LODWORD(STACK[0x54C0])) * v21) >> 32) * v20;
  LODWORD(STACK[0x5290]) = a2;
  v35 = 545 * (((a2 ^ 0x478B257) - 75018839) ^ ((a2 ^ 0xF9BAD3AD) + 105196627) ^ ((a2 ^ 0xFDC261F1) + 37592591)) + 5995;
  LODWORD(STACK[0x50F0]) = v35 - ((((v35 >> 4) * v14) >> 32) >> 1) * v20;
  LODWORD(STACK[0x50F8]) = 545 * v17 - (((545 * v17) * v21) >> 32) * v20;
  v36 = 545 * (((v7 ^ 0xA7952E04) + 1483395580) ^ ((v7 ^ 0xA522687A) + 1524471686) ^ ((v7 ^ 0x2B7465D) - 45565533)) + 19075;
  LODWORD(STACK[0x5158]) = v36 - ((((v36 >> 4) * v14) >> 32) >> 1) * v20;
  LODWORD(STACK[0x5150]) = 545 * a7 - ((545 * a7 * v21) >> 32) * v20;
  v37 = STACK[0x51E0];
  LOBYTE(v36) = (BYTE2(v37) >> 3) - ((HIWORD(v37) >> 2) & 0x24) + 82;
  v38 = STACK[0x57A0];
  v39 = *(STACK[0x57A0] + ((v36 ^ 0xA1) & ((32 * BYTE2(v37)) ^ 0x51) ^ v36 & 0x2E ^ 0x28) + a4) ^ (v36 ^ 0xA1) & ((32 * BYTE2(v37)) ^ 0x51) ^ v36 & 0x2E;
  v40 = ((v39 ^ 0x31) - 17) ^ ((v39 ^ v12) + 27) ^ ((v39 ^ 0x4D) - 109);
  v41 = STACK[0x5210];
  LOBYTE(v36) = *(STACK[0x57A0] + (((v41 >> 5) & 0xF8 | (v41 >> 13)) ^ 0x69) + 160192);
  LOBYTE(v36) = (((v36 ^ 0x25) - 37) ^ ((v36 ^ 0x57) - 87) ^ ((v36 ^ 0xCF) + 49)) + 39;
  LOBYTE(v35) = v36 & 0xED ^ 0x9A;
  LOBYTE(v36) = v36 ^ (2 * ((v36 ^ 0x78) & (2 * ((v36 ^ 0x78) & (2 * ((v36 ^ 0x78) & (2 * ((v36 ^ 0x78) & (2 * ((v36 ^ 0x78) & (2 * (v36 & (2 * v36) & 0x72 ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ 0x2D;
  v42 = STACK[0x52B0];
  v43 = *(STACK[0x57A0] + ((55 * HIWORD(LODWORD(STACK[0x52B0]))) ^ 0xA4u) + 126223);
  v44 = 55 * HIWORD(v42) - ((110 * HIWORD(v42)) & 0x7FFF9A) - 51;
  LOBYTE(v44) = (((v43 ^ 0xAA) + 86) ^ ((v43 ^ 0xA2) + 94) ^ ((v43 ^ 0xB5) + 75)) - (((v44 ^ 0xA6) + 63) ^ ((v44 ^ 0xF1) + 106) ^ ((v44 ^ 0xA4) + 61)) + 59;
  v45 = v44 & 0xC2 ^ 0x3A;
  LOBYTE(v44) = v44 ^ (2 * ((v44 ^ 0x6C) & (2 * ((v44 ^ 0x6C) & (2 * ((v44 ^ 0x6C) & (2 * ((v44 ^ 0x6C) & (2 * ((v44 ^ 0x6C) & (2 * v45) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45));
  v46 = (LODWORD(STACK[0x5210]) >> 3) | (32 * (STACK[0x5210] & 7));
  LOBYTE(v32) = (((v46 ^ 0x2A) + 76) ^ ((v46 ^ 0xC4) - 90) ^ ((v46 ^ 0xEA) - 116)) + (((v46 ^ 0x51) + 36) ^ ((v46 ^ 0x21) + 84) ^ v46 ^ 0x8D);
  LOBYTE(v32) = (v32 + 27) ^ (-10 - v32) ^ (((v32 + 27) ^ 0xEE) + 1);
  LOBYTE(v46) = *((v46 ^ 0xA0u) + STACK[0x57A0] + 47744);
  LOBYTE(v46) = (((v32 ^ 0x2D) + 19) ^ ((v32 ^ 0x85) - 69) ^ ((v32 ^ 0xB9) - 121)) + (((v46 ^ 0xE3) + 29) ^ ((v46 ^ 0x23) - 35) ^ ((v46 ^ 0x7D) - 125)) - 58;
  LOBYTE(v32) = v46 & 0x26 ^ 0xBF;
  LOBYTE(v46) = v46 ^ (2 * ((v46 ^ 0x48) & (2 * ((v46 ^ 0x48) & (2 * ((v46 ^ 0x48) & (2 * ((v46 ^ 0x48) & (2 * ((v46 ^ 0x48) & (2 * ((v46 ^ 0x48) & 0x2E ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32));
  v47 = STACK[0x51D8];
  LOBYTE(v32) = 55 * LODWORD(STACK[0x51D8]) + 91;
  LOBYTE(v30) = ((2 * (v32 ^ 0x8A)) ^ 0x5E) & (v32 ^ 0x8A) ^ (2 * (v32 ^ 0x8A)) & 0x2E;
  v48 = v30 ^ 0x21;
  LOBYTE(v30) = (v30 ^ 0xC) & (4 * (((2 * v32) & 0x4A ^ 0xA5) & v32)) ^ ((2 * v32) & 0x4A ^ 0xA5) & v32;
  LOBYTE(v30) = v32 ^ 0x5E ^ (2 * (((4 * v48) & 0x2C ^ 0x23 ^ ((4 * v48) ^ 0xB0) & v48) & (16 * v30) ^ v30));
  LOBYTE(v32) = *((BYTE1(LODWORD(STACK[0x52B0])) ^ 0xA0u) + STACK[0x57A0] + 48768);
  LOBYTE(v30) = *((v30 ^ 0xB6u) + STACK[0x57A0] + 34880) ^ v30;
  LODWORD(STACK[0x4EC8]) = 545 * BYTE1(LODWORD(STACK[0x51E0])) - ((545 * BYTE1(LODWORD(STACK[0x51E0])) * v21) >> 32) * v20;
  LODWORD(STACK[0x5078]) = 545 * BYTE2(v47) - ((545 * BYTE2(v47) * v21) >> 32) * v20;
  LODWORD(STACK[0x50E8]) = 545 * HIBYTE(v42) - ((545 * HIBYTE(v42) * v21) >> 32) * v20;
  v49 = 545 * ((((v44 ^ 0xB0) + 101) ^ ((v44 ^ 0x30) - 27) ^ ((v44 ^ 0xD1) + 6)) + 109);
  LODWORD(STACK[0x50B8]) = v49 - ((v49 * v21) >> 32) * v20;
  LODWORD(STACK[0x4EC0]) = 545 * v42 - ((545 * v42 * v21) >> 32) * v20;
  LODWORD(STACK[0x4FE0]) = 545 * v37 - ((545 * v37 * v21) >> 32) * v20;
  v50 = 545 * ((((v30 ^ 0x4E) - 92) ^ (v30 - 18) ^ ((v30 ^ 0xAC) + 66)) + 99);
  LODWORD(STACK[0x4FD0]) = v50 - ((v50 * v21) >> 32) * v20;
  v51 = 545 * ((((v36 ^ (16 * v36) ^ (4 * v36) ^ 0xEE) - 74) ^ ((v36 ^ (16 * v36) ^ (4 * v36) ^ 0x7D) + 39) ^ ((v36 ^ (16 * v36) ^ (4 * v36) ^ 0x32) + 106)) + 105);
  LODWORD(STACK[0x4F10]) = v51 - ((v51 * v21) >> 32) * v20;
  LODWORD(STACK[0x4EF0]) = 545 * BYTE1(v47) - ((545 * BYTE1(v47) * v21) >> 32) * v20;
  LODWORD(STACK[0x4F00]) = 545 * HIBYTE(v41) - ((545 * HIBYTE(v41) * v21) >> 32) * v20;
  LODWORD(STACK[0x4EE8]) = 545 * (117 * v40 - 19) - ((545 * (117 * v40 - 19) * v21) >> 32) * v20;
  v52 = 545 * (LODWORD(STACK[0x4E34]) + 117 * (((v46 ^ 0x82) + 15) ^ ((v46 ^ 0x56) - 37) ^ ((v46 ^ 0x31) - 66)));
  LODWORD(STACK[0x4EF8]) = v52 - ((v52 * v21) >> 32) * v20;
  v53 = (v22 - 85 * (((v32 ^ 0xA2) + 56) ^ (106 - v32) ^ ((v32 ^ 9) - 99)));
  LODWORD(STACK[0x4EE0]) = 545 * (v53 | ((v53 < 8) << 8)) - 4360 - (((((545 * (v53 | ((v53 < 8) << 8)) - 4360) >> 4) * v14) >> 32) >> 1) * v20;
  LODWORD(STACK[0x4ED8]) = 545 * BYTE2(v41) - ((545 * BYTE2(v41) * v21) >> 32) * v20;
  LODWORD(STACK[0x4ED0]) = 545 * HIBYTE(v47) - ((545 * HIBYTE(v47) * v21) >> 32) * v20;
  LODWORD(STACK[0x4EB8]) = 545 * HIBYTE(v37) - ((545 * HIBYTE(v37) * v21) >> 32) * v20;
  v54 = STACK[0x5680];
  LOBYTE(v53) = *(v38 + (((LODWORD(STACK[0x5680]) >> 3) | (32 * (STACK[0x5680] & 7))) ^ 0x1B52));
  LOBYTE(v53) = 83 * (((v53 ^ 0x27) - 39) ^ ((v53 ^ 0x78) - 120) ^ ((v53 ^ 0xE2) + 30)) - 96;
  LOBYTE(v51) = v53 & 0x23 ^ 0x46;
  LOBYTE(v53) = v53 ^ (2 * ((v53 ^ 0x26) & (2 * ((v53 ^ 0x26) & (2 * ((v53 ^ 0x26) & (2 * ((v53 ^ 0x26) & (2 * ((v53 ^ 6) & (2 * ((v53 ^ 6) & (2 * v53) & 0x4E ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51));
  v55 = STACK[0x5228];
  v56 = (((BYTE2(v55) ^ 0x33413B37) - 314809623) ^ ((BYTE2(v55) ^ 0xA8B55432) + 1992822254) ^ ((BYTE2(v55) ^ 0x9BF46FC7) + 1166620185)) + 1160357835;
  v57 = (v56 ^ 0xDC1EFFBA) & (2 * (v56 & 0xFFB3)) ^ v56 & 0xFFB3;
  v58 = ((2 * (v56 ^ 0x442FF49A)) ^ 0x30EE1652) & (v56 ^ 0x442FF49A) ^ (2 * (v56 ^ 0x442FF49A)) & 0x98770B28;
  v59 = ((4 * (v58 ^ 0x88110929)) & 0x18770B28 ^ 0x540829 ^ ((4 * (v58 ^ 0x88110929)) ^ 0x61DC2CA0) & (v58 ^ 0x88110929)) & (16 * ((v58 ^ 0x60200) & (4 * v57) ^ v57)) ^ (v58 ^ 0x60200) & (4 * v57) ^ v57;
  LOBYTE(v57) = ((v53 ^ 0x66) - 84) ^ ((v53 ^ 0x37) - 5) ^ ((v53 ^ 0x28) - 26);
  v60 = v56 ^ HIWORD(LODWORD(STACK[0x5228])) ^ (2 * v59);
  v61 = *(v38 + (BYTE2(LODWORD(STACK[0x5228])) ^ 0xF0u) + 156015);
  LODWORD(STACK[0x52B0]) = v61;
  LODWORD(STACK[0x49C8]) = v60;
  v62 = (((v61 ^ 0x61) - 97) ^ ((v61 ^ 0xFFFFFFD0) + 48) ^ ((v61 ^ 0xC) - 12)) - (((v60 ^ 0x45) + 125) ^ ((v60 ^ 0x33) + 11) ^ ((v60 ^ 7) + 63)) + 102;
  v63 = (v62 & 0xFFFFFFA0 | 6) ^ v62 & 0xC;
  v64 = v62 ^ (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * v63) ^ v63)) ^ v63)) ^ v63)) ^ v63)) ^ v63));
  LODWORD(STACK[0x54C0]) = ((v64 ^ 0xFFFFFFEE) + 91) ^ ((v64 ^ 0xFFFFFFBC) + 9) ^ ((v64 ^ 0xED) + 90);
  v65 = STACK[0x56F0];
  LODWORD(STACK[0x51D8]) = 545 * BYTE1(LODWORD(STACK[0x56F0])) - ((545 * BYTE1(LODWORD(STACK[0x56F0])) * v21) >> 32) * v20;
  LODWORD(STACK[0x5060]) = 545 * BYTE1(v13) - ((545 * BYTE1(v13) * v21) >> 32) * v20;
  v66 = 545 * (((BYTE2(v65) ^ 0x9501FF3C) - 2038994053) ^ (BYTE2(v65) - 1418291641) ^ ((BYTE2(v65) ^ 0x49537A3C) + 1512435323)) - 1869720359;
  LODWORD(STACK[0x5038]) = v66 - ((((v66 >> 4) * v14) >> 32) >> 1) * v20;
  LODWORD(STACK[0x5028]) = 545 * v13 - ((545 * v13 * v21) >> 32) * v20;
  LODWORD(STACK[0x5030]) = 545 * v65 - ((545 * v65 * v21) >> 32) * v20;
  LODWORD(STACK[0x5018]) = 545 * HIBYTE(v13) - ((545 * HIBYTE(v13) * v21) >> 32) * v20;
  LODWORD(STACK[0x4EA8]) = 545 * v55 - ((545 * v55 * v21) >> 32) * v20;
  LODWORD(STACK[0x4EB0]) = 545 * HIBYTE(v65) - ((545 * HIBYTE(v65) * v21) >> 32) * v20;
  v67 = 545 * HIBYTE(v54) - ((545 * HIBYTE(v54) * v21) >> 32) * v20;
  v68 = 545 * (LODWORD(STACK[0x4E28]) + 117 * v57);
  v69 = v68 - ((v68 * v21) >> 32) * v20;
  v70 = 2 * LODWORD(STACK[0x5630]);
  v71 = v70 & 0xC0C0C0C0 ^ 0x60A0A060;
  v72 = STACK[0x5650];
  v73 = v70 & 0xC0800040 ^ 0x40800040 ^ (LODWORD(STACK[0x5650]) ^ 0xC06000A0) & v71;
  v74 = STACK[0x5760];
  v75 = STACK[0x4FA8];
  v76 = STACK[0x5330];
  LODWORD(STACK[0x56F0]) = ((STACK[0x5760] & v71) << STACK[0x4FA8]) + (v73 >> STACK[0x5330]);
  v77 = 2 * LODWORD(STACK[0x5640]);
  v78 = v77 & 0xC0C0C0C0 ^ 0x20E060E0;
  v79 = v78 & v74;
  v80 = STACK[0x5720];
  v81 = v78 & STACK[0x5720];
  LODWORD(STACK[0x5440]) = ((v79 << v75) + (v81 >> v76)) ^ LODWORD(STACK[0x5340]);
  LODWORD(v38) = STACK[0x5660];
  LODWORD(STACK[0x4B18]) = v71;
  v82 = STACK[0x4F90];
  v83 = STACK[0x4F88];
  LODWORD(STACK[0x50B0]) = ((v70 & 0x80C0C0C0 ^ 0x20A08060 ^ (v38 ^ 0xC0A00000) & v71) << STACK[0x4F90]) ^ (v73 >> STACK[0x4F88]);
  v84 = v77 & 0x5050504 ^ 0x87838382;
  v85 = v77 & 0x5010404 ^ 0x7838202 ^ v84 & (v38 ^ 0x4870180);
  v86 = STACK[0x5770];
  v87 = *(STACK[0x5770] + 4 * (545 * BYTE2(v54) - ((545 * BYTE2(v54) * v21) >> 32) * v20));
  v88 = *(STACK[0x5770] + 4 * (545 * BYTE1(v54) - ((545 * BYTE1(v54) * v21) >> 32) * v20));
  v89 = v84 & v80;
  STACK[0x5070] = v89;
  LODWORD(STACK[0x5340]) = ((v85 << v75) | (v89 >> v83)) ^ __ROR4__(v87, 8) ^ __ROR4__(v88, 16) ^ *(v86 + 4 * v67) ^ __ROR4__(*(v86 + 4 * v69), 24);
  LODWORD(STACK[0x5210]) = v84;
  v90 = v77 & 0x4050000 ^ 0x84838202 ^ v84 & (v72 ^ 0x84028384);
  LODWORD(STACK[0x5680]) = (v85 << v75) | (v90 >> v83);
  LODWORD(STACK[0x4EA0]) = 545 * BYTE1(v55) - ((545 * BYTE1(v55) * v21) >> 32) * v20;
  LODWORD(v86) = 545 * (-85 * LODWORD(STACK[0x54C0]) - 4);
  LODWORD(STACK[0x4E90]) = v86 - ((v86 * v21) >> 32) * v20;
  LODWORD(STACK[0x5228]) = 545 * HIBYTE(v55) - ((545 * HIBYTE(v55) * v21) >> 32) * v20;
  LODWORD(STACK[0x4E78]) = (v90 >> v76) | (v85 << v82);
  LODWORD(STACK[0x4B10]) = v70 & 0x5050504;
  v91 = v70 & 0x5050504 ^ 0x83828382;
  LODWORD(STACK[0x5218]) = v91;
  v92 = v74 & v91;
  STACK[0x5068] = v92;
  LODWORD(STACK[0x4E88]) = (v92 << v82) + ((v70 & 0x1000504 ^ 0x81820302 ^ (v72 ^ 0x81070680) & v91) >> v76);
  LODWORD(STACK[0x4E80]) = 545 * BYTE2(v13) - ((545 * BYTE2(v13) * v21) >> 32) * v20;
  v93 = v70 & 0x6C6C6C6C ^ 0x367E7E3E;
  LODWORD(STACK[0x4DD8]) = ((v70 & 0x2828000C ^ 0x222A001E ^ (v38 ^ 0x48764668) & v93) << v75) + ((~v70 & 0x482C00 ^ (v72 ^ 0x102C2C6E) & v93) >> v76);
  LODWORD(STACK[0x4B20]) = v77 & 0x6C6C6C6C;
  v94 = v77 & 0x6C6C6C6C ^ 0x521E3E3E;
  LODWORD(STACK[0x5220]) = v94;
  LODWORD(STACK[0x4DC0]) = ((v77 & 0x48244060 ^ 0x40041032 ^ v94 & (v38 ^ 0x2A781604)) << v75) + ((v77 & 0x280824 ^ 0x21A0824 ^ v94 & (v72 ^ 0x125E084Au)) >> v76);
  v95 = v74 & v93;
  LODWORD(STACK[0x5108]) = v93;
  v96 = v80 & v93;
  STACK[0x5098] = v96;
  v97 = v83;
  v98 = v96 >> v83;
  LODWORD(STACK[0x4DD0]) = ((v95 << v82) | (v96 >> v83)) ^ LODWORD(STACK[0x51C8]);
  LODWORD(STACK[0x4DB8]) = (v79 << v82) ^ (v81 >> v83) ^ LODWORD(STACK[0x5540]);
  LODWORD(v83) = v77 & 0xB4B4B4B4 ^ 0x7EFA4ADA;
  LODWORD(STACK[0x54C0]) = v83;
  STACK[0x4E08] = v77 & 0x84908414 ^ LODWORD(STACK[0x2334]) ^ v83 & (v38 ^ 0xE6C400E2);
  v99 = v70 & 0xB4B4B4B4 ^ 0x5ACACA5A;
  v100 = v74 & v99;
  LODWORD(STACK[0x5540]) = (v100 << v75) | ((v70 & 0x9094B4A0 ^ 0x1A88C240 ^ (v72 ^ 0x8A78F60E) & v99) >> v97);
  LODWORD(v85) = v70 & 0x47474746 ^ 0xA0E3E2A3;
  v101 = v70 & 0x2010442 ^ 0xA18082 ^ (v72 ^ 0x2448524) & v85;
  v102 = v74 & v85;
  LODWORD(STACK[0x4E18]) = (v102 << v82) + (v101 >> v76);
  v103 = v77 & 0x47474746 ^ 0xE6A2A0A1;
  LODWORD(STACK[0x53F8]) = v103;
  STACK[0x4DF8] = v77 & 0x46410040 ^ 0x6680A0A1 ^ v103 & (v38 ^ 0x5856707);
  LODWORD(STACK[0x4DF0]) = (v102 << v75) | (v101 >> v97);
  LODWORD(STACK[0x51E0]) = v85;
  v104 = v77 & 0x8B8B8B8A ^ 0xC44CCE4F;
  LODWORD(STACK[0x5230]) ^= (v102 << v75) + ((v80 & v85) >> v97);
  LODWORD(STACK[0x4DC8]) = (((v77 & 0x8B80810A ^ 0xC440800A ^ v104 & (v72 ^ 0xCF0580C4)) >> v76) | ((v77 & 0x3828202 ^ 0x44008607 ^ v104 & (v38 ^ 0x4CE41C1)) << v82)) ^ LODWORD(STACK[0x5420]);
  v105 = v77 & 0x2008100 ^ 0x4444C004 ^ v104 & (v72 ^ 0x4681C0CA);
  LODWORD(v85) = LODWORD(STACK[0x5670]) ^ ((v105 >> v76) + ((v77 & STACK[0x2338] ^ 0xC008420C ^ v104 & (v38 ^ 0x824684CA)) << v82));
  LODWORD(STACK[0x4DB0]) = v85;
  v106 = v105 >> v97;
  LODWORD(STACK[0x51C8]) = v104;
  v107 = v104 & v74;
  STACK[0x5058] = v107;
  v108 = v70 & 0x35353534 ^ 0x9B8A8B9A;
  v109 = LODWORD(STACK[0x5700]) ^ v106 ^ (v107 << v82);
  LODWORD(STACK[0x4DA0]) = v109;
  LODWORD(v79) = STACK[0x5630];
  LODWORD(v106) = ((v85 & 0x1A9A9A9A ^ 0x1A9A9A9A) + (v85 & 0x1A9A9A9A)) & (LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x233C]));
  v110 = v70 & 0x5311424 ^ LODWORD(STACK[0x4930]) ^ (v72 ^ 0x1D149F0A) & v108;
  v111 = v80 & v108;
  STACK[0x5050] = v111;
  v112 = v111 >> v76;
  STACK[0x4E10] = v112;
  LODWORD(STACK[0x4DA8]) = (((v70 & 0x10003034 ^ 0x12000A98 ^ (v38 ^ 0x311CBD0A) & v108) << v75) + v112) ^ LODWORD(STACK[0x51B0]);
  LODWORD(STACK[0x5040]) = v77 & 0x35353534;
  LODWORD(v107) = ((v109 & 0x9A9ADABA ^ 0x9A9ADABA) + (v109 & 0x9A9ADABA)) & 0xBA9BBFDE ^ v77 & 0x35353534;
  LODWORD(STACK[0x4B00]) = v108;
  v113 = v74 & v108;
  STACK[0x5048] = v113;
  v114 = v113 << v75;
  STACK[0x4E00] = v114;
  LODWORD(STACK[0x4D98]) = v114 ^ (v110 >> v76) ^ LODWORD(STACK[0x56E0]);
  LODWORD(STACK[0x4D58]) = ((v107 & 0xB2B72A98 ^ 0x20210000 ^ (v107 ^ 0x25211100) & (v38 ^ 0x91ABAD6E)) << v82) + (((v107 ^ 0x25211100) & v80) >> v97);
  LODWORD(STACK[0x4C68]) = (((2 * v106) & 0x730C505C ^ 0x12881018 ^ ((2 * v106) ^ 0x9A9A9A9A) & (v72 ^ 0x636951B2)) >> v97) | (((2 * v106) & 0x2B775578 ^ 0x8A12901A ^ ((2 * v106) ^ 0x9A9A9A9A) & (v38 ^ 0xC82B128C)) << v82);
  v115 = v70 & 0x42424242 ^ 0x23616121;
  LODWORD(v107) = v77 & 0x42424242 ^ 0x61212323;
  v116 = v107 & v74;
  v117 = v107 & v80;
  LODWORD(STACK[0x4BA8]) = (v116 << v75) | (v117 >> v76);
  LODWORD(STACK[0x51B0]) = v115;
  v118 = v80 & v115;
  STACK[0x5010] = v118;
  LODWORD(STACK[0x4BA0]) = ((v70 & 0x40004000 ^ 0x6020 ^ (v38 ^ 0x23402342) & v115) << v75) | (v118 >> v97);
  LODWORD(STACK[0x4B98]) = (v116 << v82) + ((v107 & (v72 ^ 0x20212122) ^ ((v77 & 0x400040) + 536879104)) >> v76);
  LODWORD(STACK[0x4B90]) = ((v77 & 0x424200 ^ 0x20210200 ^ v107 & (v38 ^ 0x43230162)) << v75) + (v117 >> v97);
  LODWORD(v107) = v70 & 0xCFCFCFCE ^ 0xE42F2EEF;
  LODWORD(STACK[0x54B0]) = v107;
  STACK[0x4B80] = v70 & STACK[0x4928] ^ 0x80042C60 ^ (v72 ^ 0x88E16D8E) & v107;
  LODWORD(STACK[0x4FE8]) = v77 & 0xCFCFCFCE;
  LODWORD(v117) = v77 & 0xCFCFCFCE ^ 0xA26EEC6D;
  v119 = v77 & STACK[0x4920] ^ 0x80022C40 ^ v117 & (v38 ^ 0xA3CEEB24);
  LODWORD(STACK[0x5008]) = v117;
  LODWORD(STACK[0x4B88]) = (v119 << v82) + ((v117 & v80) >> v76);
  STACK[0x4B78] = v70 & STACK[0x2340] ^ 0x640C0260 ^ (v38 ^ 0xD400586) & v107;
  LODWORD(v85) = v77 & 0x53535352 ^ 0xE8A8BAAB;
  LODWORD(STACK[0x4B70]) = ((v77 & 0x3431302 ^ 0x20089202 ^ v85 & (v38 ^ 0x401350F0)) << v75) + ((v77 & 0x50405010 ^ LODWORD(STACK[0x2344]) ^ v85 & (v72 ^ 0xC009D973)) >> v76);
  LODWORD(v107) = v70 & 0x53535352 ^ 0xAAF9F8A9;
  v120 = (v74 & v107) << v82;
  LODWORD(STACK[0x4F50]) = v107;
  v121 = v80 & v107;
  STACK[0x4F58] = v121;
  LODWORD(STACK[0x4B60]) = v120 ^ (v121 >> v97);
  v122 = v85 & v74;
  STACK[0x4B58] = v122;
  LODWORD(STACK[0x4FD8]) = v85;
  v123 = v85 & v80;
  STACK[0x4B48] = v123;
  LODWORD(STACK[0x4B68]) = (v122 << v75) + (v123 >> v97);
  LODWORD(v118) = v70 & 0x15151514 ^ 0x8B9A9B8A;
  v124 = v70 & 0x5150114 ^ 0x819A8300 ^ (v38 ^ LODWORD(STACK[0x4918])) & v118;
  STACK[0x4B50] = v124;
  LODWORD(STACK[0x4B40]) = (v124 << v82) | ((v70 & 0x15000400 ^ 0x8B000280 ^ (v72 ^ 0x8F85070E) & v118) >> v76);
  LODWORD(v117) = v77 & 0x15151514 ^ 0x8F8B9B8A;
  LODWORD(STACK[0x5650]) = v72;
  LODWORD(STACK[0x4F08]) = v117;
  LODWORD(STACK[0x5620]) = v77;
  LODWORD(STACK[0x4B38]) = ((v77 & 0x11001014 ^ LODWORD(STACK[0x4910]) ^ v117 & (v38 ^ 0x901C1788)) << v75) ^ ((v77 & 0x10151010 ^ 0x881908A ^ v117 & (v72 ^ 0x8109114)) >> v76);
  v125 = (v74 & v118) << v82;
  LODWORD(STACK[0x51A8]) = v118;
  v126 = v80 & v118;
  STACK[0x4F48] = v126;
  STACK[0x53B0] = v126 >> v97;
  STACK[0x4AF0] = v125;
  LODWORD(STACK[0x4B30]) = (v125 ^ (v126 >> v97)) + 2 * (v125 & (v126 >> v97));
  LODWORD(STACK[0x5160]) ^= LODWORD(STACK[0x56F0]);
  LODWORD(v126) = LODWORD(STACK[0x5640]) ^ 0x32D48DC5;
  LODWORD(v118) = STACK[0x4FC8];
  LODWORD(STACK[0x5670]) = v126;
  LODWORD(v116) = v118 ^ (2 * (v126 & v118));
  v127 = v72 ^ 0x10E501EE;
  v128 = v116 & (v72 ^ 0x10E501EE);
  STACK[0x4B28] = v128;
  v129 = v128 >> v76;
  v130 = v38 ^ 0x635CC7F6;
  v131 = v116 & (v38 ^ 0x635CC7F6);
  v132 = v131 << v75;
  LODWORD(STACK[0x5440]) ^= (v131 << v75) | (v128 >> v76);
  LODWORD(STACK[0x5700]) = v79 ^ 0x1EC6C84;
  LODWORD(v125) = v118 ^ (2 * (v118 & (v79 ^ 0x1EC6C84)));
  v133 = v80 & v125;
  STACK[0x4FC8] = v133;
  v134 = v133 >> v97;
  LODWORD(v124) = (v133 >> v97) ^ LODWORD(STACK[0x5178]);
  LODWORD(STACK[0x5760]) = v74;
  v135 = v125 & v74;
  v136 = v135 << v82;
  LODWORD(STACK[0x5420]) = v124 ^ (v135 << v82) ^ LODWORD(STACK[0x50B0]);
  v137 = v135 << v75;
  LODWORD(STACK[0x5178]) = (v133 >> v97) ^ (v135 << v75) ^ LODWORD(STACK[0x4DD8]) ^ LODWORD(STACK[0x51C0]);
  LODWORD(v124) = LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x4DC0]);
  STACK[0x4DC0] = v131 << v82;
  LODWORD(v135) = (v131 << v82) | v129;
  LODWORD(STACK[0x5430]) = LODWORD(STACK[0x4DB8]) ^ v135;
  LODWORD(STACK[0x4DD8]) = v135 ^ v124;
  v138 = v95 << v75;
  STACK[0x50B0] = v138;
  LODWORD(v135) = v129 ^ LODWORD(STACK[0x5790]);
  v139 = v116 & v74;
  v140 = STACK[0x5770];
  STACK[0x4DB8] = v139 << v75;
  LODWORD(STACK[0x5790]) = v135 ^ (v139 << v75) ^ (v138 + v98);
  LODWORD(STACK[0x4DD0]) ^= v137 + (v133 >> v97);
  LODWORD(STACK[0x56F0]) = v130;
  v141 = v125 & v130;
  v142 = v141 << v82;
  LODWORD(v89) = *(v140 + 4 * LODWORD(STACK[0x4E90]));
  LODWORD(STACK[0x5228]) = ((v141 << v82) | (v133 >> v97)) ^ LODWORD(STACK[0x4E78]) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4EA8])), 24) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4EA0])), 16) ^ *(v140 + 4 * LODWORD(STACK[0x5228])) ^ (v89 >> 8) ^ (v89 << 24);
  LODWORD(STACK[0x4EA8]) = LODWORD(STACK[0x5340]) ^ ((v141 << v82) + (v133 >> v97));
  LODWORD(v89) = *(v140 + 4 * LODWORD(STACK[0x5028]));
  v143 = (v139 << v75) | v129;
  LODWORD(STACK[0x4EA0]) = v143 ^ LODWORD(STACK[0x4E88]) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x5060])), 16) ^ (v89 << 8) ^ BYTE3(v89) ^ *(v140 + 4 * LODWORD(STACK[0x5018])) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4E80])), 8);
  LODWORD(v135) = *(v140 + 4 * LODWORD(STACK[0x51D8]));
  v144 = v141 << v75;
  LODWORD(v133) = (v141 << v75) + (v133 >> v97);
  LODWORD(STACK[0x4E90]) = v133;
  LODWORD(STACK[0x4EB0]) = v133 ^ LODWORD(STACK[0x5680]) ^ __ROR4__(v135, 16) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x5038])), 8) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x5030])), 24) ^ *(v140 + 4 * LODWORD(STACK[0x4EB0]));
  LODWORD(STACK[0x5200]) = v99;
  v145 = v76;
  v146 = v82;
  v147 = v100 << v82;
  STACK[0x4B08] = v147;
  LODWORD(STACK[0x53E8]) ^= v147 | ((v80 & v99) >> v76);
  v148 = STACK[0x54C0] & v80;
  v149 = STACK[0x4E08];
  STACK[0x51D8] = v148 >> v76;
  v150 = v116 & v80;
  v151 = v150 >> v76;
  LODWORD(STACK[0x5378]) = (v149 << v82) ^ (v148 >> v76) ^ LODWORD(STACK[0x5460]) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x5270])), 8) ^ *(v140 + 4 * LODWORD(STACK[0x5358])) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x5378])), 24) ^ (v132 + (v150 >> v76));
  v152 = v148 >> v97;
  STACK[0x5060] = v152;
  LODWORD(STACK[0x5358]) = ((v149 << v75) + v152) ^ LODWORD(STACK[0x5168]) ^ (v132 + v129) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x5140])), 16) ^ *(v140 + 4 * LODWORD(STACK[0x5100])) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x50F0])), 24);
  LODWORD(v152) = *(v140 + 4 * (LODWORD(STACK[0x4A80]) - LODWORD(STACK[0x4A80]) / 0x610 * v20));
  LODWORD(STACK[0x56E0]) = v127;
  v153 = v127 & v125;
  v154 = v153 >> v97;
  v155 = v136 + (v153 >> v97);
  LODWORD(STACK[0x5168]) = v155 ^ __ROR4__(v152, 16) ^ LODWORD(STACK[0x5540]) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x5288])), 8) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x5148])), 24) ^ *(v140 + 4 * LODWORD(STACK[0x50F8]));
  LODWORD(STACK[0x5740]) ^= (v136 + v134) ^ LODWORD(STACK[0x4E18]);
  v156 = (STACK[0x53F8] & v80) >> v76;
  v157 = STACK[0x4DF8] << v82;
  STACK[0x51C0] = v156;
  LODWORD(STACK[0x5680]) = LODWORD(STACK[0x5180]) ^ (v157 | v156);
  LODWORD(STACK[0x5148]) = (v136 | v134) ^ LODWORD(STACK[0x5258]) ^ LODWORD(STACK[0x4DF0]);
  v158 = v139 << v82;
  v159 = v150 >> v97;
  LODWORD(STACK[0x5340]) = LODWORD(STACK[0x4DC8]) ^ (v158 + (v150 >> v97));
  LODWORD(STACK[0x5600]) = v70;
  LODWORD(v156) = v70 & 0x8B8B8B8A ^ 0xC64D4CCD;
  v160 = STACK[0x5760];
  v161 = STACK[0x5760] & v156;
  LODWORD(STACK[0x5030]) = v156;
  v162 = v80 & v156;
  STACK[0x5028] = v161;
  STACK[0x5018] = v162;
  v163 = v162 >> v97;
  v164 = v97;
  STACK[0x5038] = v163;
  LODWORD(STACK[0x5288]) = v158 ^ LODWORD(STACK[0x5170]) ^ (v150 >> v97) ^ ((v161 << v75) + v163);
  v165 = v153 >> v76;
  LODWORD(v153) = v144 ^ (v153 >> v76);
  LODWORD(STACK[0x5140]) = LODWORD(STACK[0x5230]) ^ v153;
  LODWORD(STACK[0x5180]) = v153 ^ LODWORD(STACK[0x4DB0]);
  LODWORD(STACK[0x5170]) = LODWORD(STACK[0x4DA0]) ^ (v142 + v154);
  v166 = STACK[0x4DB8];
  LODWORD(STACK[0x50F8]) = LODWORD(STACK[0x4DA8]) ^ (STACK[0x4DB8] | v151);
  LODWORD(STACK[0x50F0]) = LODWORD(STACK[0x4D98]) ^ (v137 + v154);
  LODWORD(v97) = LODWORD(STACK[0x5278]) ^ LODWORD(STACK[0x4D58]);
  LODWORD(STACK[0x5188]) ^= (v137 | v154) ^ LODWORD(STACK[0x4C68]);
  v167 = STACK[0x4DC0];
  LODWORD(STACK[0x4E88]) = (STACK[0x4DC0] + v151) ^ v97;
  LODWORD(STACK[0x4E80]) = (v167 + v151) ^ LODWORD(STACK[0x4BA8]) ^ LODWORD(STACK[0x5250]);
  LODWORD(STACK[0x5190]) ^= v167 ^ v159 ^ LODWORD(STACK[0x4B98]);
  v168 = LODWORD(STACK[0x4BA0]) ^ (v137 | v165) ^ LODWORD(STACK[0x57B0]);
  v169 = LODWORD(STACK[0x4B90]) ^ v143 ^ LODWORD(STACK[0x5510]);
  v170 = v160 & STACK[0x54B0];
  v171 = STACK[0x4B80];
  STACK[0x4F90] = v146;
  STACK[0x4AF8] = v170 << v146;
  STACK[0x5540] = v142;
  v172 = v142 ^ v134 ^ ((v170 << v146) + (v171 >> v145)) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x5078])), 8) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4FD0])), 24) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4EF0])), 16) ^ *(v140 + 4 * LODWORD(STACK[0x4ED0]));
  STACK[0x4F88] = v164;
  v173 = v170 << v75;
  v174 = STACK[0x4B78] << v75;
  STACK[0x4FA8] = v75;
  STACK[0x4FD0] = v173;
  LODWORD(STACK[0x57B0]) = (v132 | v159) ^ (v173 + (v171 >> v164)) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4EC8])), 16) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4FE0])), 24) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4EE8])), 8) ^ *(v140 + 4 * LODWORD(STACK[0x4EB8]));
  v175 = v136 ^ v165 ^ LODWORD(STACK[0x4B88]) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4F10])), 16) ^ *(v140 + 4 * LODWORD(STACK[0x4F00])) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4EF8])), 24) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4ED8])), 8);
  v176 = (v174 | (v171 >> v164)) ^ v155 ^ *(v140 + 4 * LODWORD(STACK[0x50E8])) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x50B8])), 8) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4EC0])), 24) ^ __ROR4__(*(v140 + 4 * LODWORD(STACK[0x4EE0])), 16);
  STACK[0x5330] = v145;
  LODWORD(STACK[0x5510]) = (v136 + (STACK[0x4FC8] >> v145)) ^ LODWORD(STACK[0x4B70]) ^ LODWORD(STACK[0x5280]);
  LODWORD(STACK[0x5280]) = LODWORD(STACK[0x4B60]) ^ (v132 | (STACK[0x4B28] >> v164)) ^ LODWORD(STACK[0x51A0]);
  v177 = STACK[0x4B48] >> v145;
  v178 = STACK[0x4B58] << v146;
  STACK[0x4F10] = v178;
  v179 = v178 ^ v177;
  v180 = v129 ^ LODWORD(STACK[0x5680]) ^ v132;
  LODWORD(STACK[0x4FC8]) = v179;
  LODWORD(STACK[0x5278]) = v179 ^ (v132 | v151) ^ LODWORD(STACK[0x5780]);
  LODWORD(STACK[0x5270]) = v158 ^ v129 ^ LODWORD(STACK[0x4B68]) ^ LODWORD(STACK[0x5260]);
  v181 = LODWORD(STACK[0x4B40]) ^ LODWORD(STACK[0x4E90]) ^ LODWORD(STACK[0x5268]);
  v182 = v158 + v129;
  v183 = (v158 + v151) ^ LODWORD(STACK[0x4B30]) ^ LODWORD(STACK[0x57C0]);
  STACK[0x5460] = v154;
  v184 = LODWORD(STACK[0x4B38]) ^ (v144 | v154) ^ LODWORD(STACK[0x5240]);
  v185 = LODWORD(STACK[0x56D0]) ^ v151 ^ v166 ^ ((STACK[0x4B50] << v75) | STACK[0x53B0]);
  v186 = STACK[0x5430];
  v187 = STACK[0x5378];
  v188 = LODWORD(STACK[0x5430]) - 1044447163 + LODWORD(STACK[0x5378]);
  v189 = v175 + v188;
  v190 = STACK[0x5178];
  v191 = STACK[0x4DD0];
  if ((v175 + v188))
  {
    v192 = STACK[0x4DD0];
  }

  else
  {
    v192 = STACK[0x5178];
  }

  LODWORD(STACK[0x5268]) = v192;
  if (v189)
  {
    v193 = STACK[0x4DD8];
  }

  else
  {
    v193 = v191;
  }

  if (v189)
  {
    v194 = v190;
  }

  else
  {
    v194 = STACK[0x5790];
  }

  if (v189)
  {
    v195 = STACK[0x5790];
  }

  else
  {
    v195 = STACK[0x4DD8];
  }

  LODWORD(STACK[0x5240]) = v195;
  v196 = STACK[0x4EA8];
  v197 = STACK[0x4EA0];
  if (v189)
  {
    v198 = STACK[0x4EA8];
  }

  else
  {
    v198 = STACK[0x4EA0];
  }

  LODWORD(STACK[0x5250]) = v198;
  v199 = STACK[0x5228];
  if ((v189 & 1) == 0)
  {
    v197 = STACK[0x5228];
  }

  LODWORD(STACK[0x5258]) = v197;
  v200 = STACK[0x4EB0];
  if ((v189 & 1) == 0)
  {
    v199 = STACK[0x4EB0];
  }

  LODWORD(STACK[0x5228]) = v199;
  if (v189)
  {
    v201 = v200;
  }

  else
  {
    v201 = v196;
  }

  LODWORD(STACK[0x5230]) = v201;
  v202 = STACK[0x5148];
  v203 = STACK[0x5140];
  if (v189)
  {
    v204 = STACK[0x5140];
  }

  else
  {
    v204 = STACK[0x5148];
  }

  LODWORD(STACK[0x5260]) = v204;
  v205 = STACK[0x5740];
  if (v189)
  {
    v206 = STACK[0x5740];
  }

  else
  {
    v206 = v203;
  }

  LODWORD(STACK[0x5140]) = v206;
  if (v189)
  {
    v207 = v202;
  }

  else
  {
    v207 = v180;
  }

  LODWORD(STACK[0x5100]) = v207;
  if (v189)
  {
    v208 = v180;
  }

  else
  {
    v208 = v205;
  }

  if (v189)
  {
    v209 = STACK[0x4E80];
  }

  else
  {
    v209 = v169;
  }

  if (v189)
  {
    v210 = v169;
  }

  else
  {
    v210 = STACK[0x5190];
  }

  if (v189)
  {
    v211 = v168;
  }

  else
  {
    v211 = STACK[0x4E80];
  }

  if (v189)
  {
    v212 = STACK[0x5190];
  }

  else
  {
    v212 = v168;
  }

  v213 = STACK[0x50F0];
  v214 = STACK[0x50F8];
  if (v189)
  {
    v215 = STACK[0x50F0];
  }

  else
  {
    v215 = STACK[0x50F8];
  }

  LODWORD(STACK[0x50E8]) = v215;
  if (v189)
  {
    v216 = v214;
  }

  else
  {
    v216 = STACK[0x5188];
  }

  v217 = STACK[0x4E88];
  if (v189)
  {
    v218 = STACK[0x5188];
  }

  else
  {
    v218 = STACK[0x4E88];
  }

  LODWORD(STACK[0x4EE0]) = v218;
  if (v189)
  {
    v219 = v217;
  }

  else
  {
    v219 = v213;
  }

  if (v189)
  {
    v220 = v172;
  }

  else
  {
    v220 = v176;
  }

  if (v189)
  {
    v221 = v176;
  }

  else
  {
    v221 = v175;
  }

  if (v189)
  {
    v222 = v175;
  }

  else
  {
    v222 = STACK[0x57B0];
  }

  if (v189)
  {
    v172 = STACK[0x57B0];
    v223 = v183;
  }

  else
  {
    v223 = v181;
  }

  if (v189)
  {
    v224 = v181;
  }

  else
  {
    v224 = v185;
  }

  if (v189)
  {
    v183 = v184;
    v184 = v185;
  }

  v225 = STACK[0x5160];
  LODWORD(STACK[0x4FE0]) = v182;
  v226 = v182 ^ v225;
  v227 = STACK[0x5168];
  if (v189)
  {
    v228 = STACK[0x5358];
  }

  else
  {
    v228 = STACK[0x5168];
  }

  LODWORD(STACK[0x4EB8]) = v228;
  if (v189)
  {
    v229 = v227;
  }

  else
  {
    v229 = v187;
  }

  LODWORD(STACK[0x4E90]) = v229;
  if (v189)
  {
    v230 = STACK[0x5340];
  }

  else
  {
    v230 = STACK[0x5170];
  }

  v231 = STACK[0x5180];
  if (v189)
  {
    v232 = STACK[0x5170];
  }

  else
  {
    v232 = STACK[0x5180];
  }

  LODWORD(STACK[0x4EB0]) = v232;
  if (v189)
  {
    v233 = v231;
  }

  else
  {
    v233 = STACK[0x5288];
  }

  v234 = STACK[0x5420];
  if ((v189 & 1) == 0)
  {
    v234 = STACK[0x5440];
  }

  LODWORD(STACK[0x4E08]) = v226;
  if (v189)
  {
    v235 = v226;
  }

  else
  {
    v235 = v186;
  }

  v236 = STACK[0x5278];
  if ((v189 & 1) == 0)
  {
    v236 = STACK[0x5270];
  }

  v237 = STACK[0x5510];
  if (v189)
  {
    v237 = STACK[0x5280];
  }

  LODWORD(STACK[0x5680]) = v189;
  v238 = (v189 & 2) == 0;
  if ((v189 & 2) != 0)
  {
    v239 = v193;
  }

  else
  {
    v239 = v194;
  }

  LODWORD(STACK[0x5148]) = v239;
  if (v238)
  {
    v240 = v193;
  }

  else
  {
    v240 = v194;
  }

  LODWORD(STACK[0x5190]) = v240;
  if (v238)
  {
    v241 = v216;
  }

  else
  {
    v241 = v219;
  }

  LODWORD(STACK[0x51A0]) = v241;
  if (v238)
  {
    v242 = v219;
  }

  else
  {
    v242 = v216;
  }

  LODWORD(STACK[0x4DF8]) = v242;
  LODWORD(STACK[0x4DB0]) = *(v140 + 4 * LODWORD(STACK[0x5158]));
  LODWORD(STACK[0x4DB8]) = *(v140 + 4 * LODWORD(STACK[0x5150]));
  if (v238)
  {
    v243 = v220;
  }

  else
  {
    v243 = v222;
  }

  LODWORD(STACK[0x4EF8]) = v243;
  if (v238)
  {
    v244 = v222;
  }

  else
  {
    v244 = v220;
  }

  LODWORD(STACK[0x5160]) = v244;
  v245 = STACK[0x5198];
  LODWORD(STACK[0x4DC0]) = v188;
  LODWORD(STACK[0x4DA8]) = v245 - v188;
  STACK[0x5790] = STACK[0x4FA8];
  STACK[0x5780] = STACK[0x5330];
  STACK[0x57B0] = STACK[0x4F90];
  STACK[0x57C0] = STACK[0x4F88];
  LODWORD(STACK[0x4E88]) = v234;
  LODWORD(STACK[0x4E78]) = v235;
  if (v238)
  {
    v246 = v235;
  }

  else
  {
    v246 = v234;
  }

  LODWORD(STACK[0x5158]) = v246;
  v247 = STACK[0x5268];
  if (v238)
  {
    v247 = STACK[0x5240];
  }

  LODWORD(STACK[0x5168]) = v247;
  v248 = STACK[0x5250];
  if (v238)
  {
    v248 = STACK[0x5228];
  }

  LODWORD(STACK[0x4DD0]) = v248;
  v249 = STACK[0x5258];
  if (!v238)
  {
    v249 = STACK[0x5230];
  }

  LODWORD(STACK[0x4DC8]) = v249;
  LODWORD(STACK[0x5078]) = v208;
  v250 = STACK[0x5260];
  if (v238)
  {
    v250 = v208;
  }

  LODWORD(STACK[0x5178]) = v250;
  LODWORD(STACK[0x4EA8]) = v233;
  LODWORD(STACK[0x4EA0]) = v230;
  if (v238)
  {
    v251 = v230;
  }

  else
  {
    v251 = v233;
  }

  LODWORD(STACK[0x5188]) = v251;
  LODWORD(STACK[0x50F0]) = v210;
  LODWORD(STACK[0x4EF0]) = v211;
  if (v238)
  {
    v252 = v211;
  }

  else
  {
    v252 = v210;
  }

  LODWORD(STACK[0x50B8]) = v252;
  LODWORD(STACK[0x50F8]) = v209;
  LODWORD(STACK[0x4EE8]) = v212;
  if (v238)
  {
    v253 = v212;
  }

  else
  {
    v253 = v209;
  }

  LODWORD(STACK[0x4F00]) = v253;
  LODWORD(STACK[0x4ED8]) = v221;
  LODWORD(STACK[0x4E80]) = v172;
  if (v238)
  {
    v254 = v221;
  }

  else
  {
    v254 = v172;
  }

  LODWORD(STACK[0x5170]) = v254;
  LODWORD(STACK[0x4DF0]) = v236;
  LODWORD(STACK[0x4DD8]) = v237;
  if (v238)
  {
    v255 = v236;
  }

  else
  {
    v255 = v237;
  }

  LODWORD(STACK[0x5180]) = v255;
  LODWORD(STACK[0x4ED0]) = v224;
  LODWORD(STACK[0x4EC0]) = v183;
  if (v238)
  {
    v256 = v224;
  }

  else
  {
    v256 = v183;
  }

  LODWORD(STACK[0x5198]) = v256;
  LODWORD(STACK[0x4EC8]) = v223;
  LODWORD(STACK[0x4E18]) = v184;
  if (v238)
  {
    v257 = v223;
  }

  else
  {
    v257 = v184;
  }

  LODWORD(STACK[0x5150]) = v257;
  v258 = STACK[0x5640] & 0x3638569C;
  v259 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x56C0]));
  LODWORD(STACK[0x56D0]) = LODWORD(STACK[0x56C0]) - 13759;
  return v259(116066, 700515854, LODWORD(STACK[0x4F80]), v258, 4181057006, LODWORD(STACK[0x5730]));
}

uint64_t sub_1004FE5FC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xDA50]) = v1;
  LODWORD(STACK[0xDA4C]) = v2;
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1004FE628()
{
  v0 = STACK[0x57D8];
  v1 = STACK[0x2C88];
  v2 = STACK[0x2C88] + 20040;
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * STACK[0x2C88]);
  return (*(v0 + 8 * ((v2 ^ 0x5F3F) + v1)))();
}

uint64_t sub_1004FE668()
{
  v1 = STACK[0xBBB8];
  LODWORD(STACK[0xB88C]) = STACK[0xBBB8];
  STACK[0xCB58] = STACK[0x67E0];
  v2 = *STACK[0x45F8];
  v3 = *STACK[0x45F0];
  v4 = (-2 * ((v3 - v2) & 1) + (v3 - v2) * (v0 + 38) + 5) & 7;
  v5 = ((((v1 >> (((v0 + 1) & 0xBB) - 14)) ^ 0x5478E434) - 1494531312) ^ (((v1 >> (((v0 + 1) & 0xBB) - 14)) ^ 0x70A9D0B4) - 2110097520) ^ (((v1 >> (((v0 + 1) & 0xBB) - 14)) ^ 0x29F0FC89) - 614245453)) + 71646687 + (((v4 ^ 0x7D2B8D24) + 342843777) ^ (v4 + 1975185749) ^ ((v4 ^ 0x5A140379) + 860942302));
  v6 = (v5 ^ 0x42FA6529) & (2 * (v5 & 0x92C3664D)) ^ v5 & 0x92C3664D;
  v7 = ((2 * (v5 ^ 0x63FCE539)) ^ 0xE27F06E8) & (v5 ^ 0x63FCE539) ^ (2 * (v5 ^ 0x63FCE539)) & 0xF13F8374;
  v8 = v7 ^ 0x11008114;
  v9 = (v7 ^ 0xC01F0260) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xC4FE0DD0) & v8 ^ (4 * v8) & 0xF13F8374;
  v11 = v9 ^ 0xF13F8374 ^ (v10 ^ 0xC03E0150) & (16 * v9);
  v12 = (16 * (v10 ^ 0x31018224)) & 0xF13F8370 ^ 0xE0078034 ^ ((16 * (v10 ^ 0x31018224)) ^ 0x13F83740) & (v10 ^ 0x31018224);
  v13 = (v11 << 8) & 0xF13F8300 ^ v11 ^ ((v11 << 8) ^ 0x3F837400) & v12;
  v14 = (v12 << 8) & 0x13F0000 ^ ((v12 << 8) ^ 0x7830000) & v12 ^ 0x3C0000;
  v15 = (19 * ((v3 + v2) ^ 0x10)) & 0x17;
  if (v15 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(STACK[0x5C70] - 0x30BDFED8F32E64F5);
  LODWORD(STACK[0x7A8C]) = (16 * v5) ^ (32 * ((v13 << 16) & 0x13F0000 ^ v13 ^ ((v13 << 16) ^ 0x3740000) & v14)) ^ 0xD260A50;
  LODWORD(STACK[0x8774]) = v16;
  return (*(STACK[0x57D8] + 8 * ((26746 * (v17 == -769884005)) ^ v0)))();
}

uint64_t sub_1004FE968()
{
  v1 = STACK[0x57D8];
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 - 20727 + (v0 ^ 0x524E))))();
}

uint64_t sub_1004FEC48()
{
  v2 = STACK[0x5460];
  if ((STACK[0x57A0] & 2) != 0)
  {
    v2 = STACK[0x5450];
  }

  LODWORD(STACK[0x56C0]) = v2;
  LODWORD(STACK[0x5388]) = v0 ^ LODWORD(STACK[0x54F0]);
  return (*(STACK[0x57D8] + 8 * v1))(1932779842);
}

uint64_t sub_1004FED2C()
{
  v2 = STACK[0x79DC];
  v3 = STACK[0x6A08];
  STACK[0xB420] = STACK[0xA2C8];
  LODWORD(STACK[0x8C54]) = v2;
  STACK[0x8EA0] = v3;
  *(v1 + 1160) = -746967297;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004FED8C()
{
  v0 = STACK[0x1560];
  STACK[0x8AF8] = 0x79296B4A625EDF44;
  STACK[0xB530] = 0;
  LODWORD(STACK[0x93D8]) = -769884012;
  STACK[0xCCC8] = STACK[0xB968];
  STACK[0x9830] = &STACK[0x8AF8];
  LODWORD(STACK[0x8724]) = 1033645735;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1004FEE3C()
{
  v1 = STACK[0x57D8];
  STACK[0x9E28] = *(STACK[0x57D8] + 8 * (v0 - 1016));
  return (*(v1 + 8 * (v0 - 1016 + ((v0 - 1016) ^ 0x2888) - 3080)))();
}

uint64_t sub_1004FF0A8()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0x5CFC]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 16904)))();
}

uint64_t sub_1004FF2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x51B8] - 18104;
  STACK[0xC660] = STACK[0x7588] - 0x2C73422C535007B6 - (((STACK[0x36D8] & 0x96A556CF ^ 0xA7197BA7595FD839) + (5 * LODWORD(STACK[0x36D4]))) & (2 * STACK[0x7588]));
  return (*(STACK[0x57D8] + 8 * (v4 ^ (37 * (v3 == -143113071)))))(15115, 4404, a3, 22622);
}

uint64_t sub_1004FF35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W8>)
{
  *(v6 + 4) = ((v5 + 1) ^ 0xDFF77DDC) + ((2 * (v5 + 1)) & 0xBFEEFBB8) + (((a5 + 14154) | 0x962) ^ 0x65EA975A);
  v7 = STACK[0xC788];
  v8 = STACK[0x6CF8];
  v9 = STACK[0x57D8];
  STACK[0x5F68] = *(STACK[0x57D8] + 8 * a5);
  return (*(v9 + 8 * (a5 ^ 0x263F ^ (32659 * ((a5 + 993778460) > 0x6493BC3C)))))(a1, v7, a2, a3, a4, STACK[0x57C0], 395, v8);
}

uint64_t sub_1004FF454()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  STACK[0x97B0] = 0;
  return (*(v1 + 8 * (v0 - 19204)))(v2);
}

uint64_t sub_1004FF48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0x51B8] ^ 0x5856;
  v8 = STACK[0x51B8] - 20918;
  v9 = STACK[0x57D8];
  v10 = STACK[0xBD78];
  STACK[0x7D00] = *(STACK[0x57D8] + 8 * v8);
  return (*(v9 + 8 * (v7 + v8 + 5281)))(a1, a2, a3, a4, a5, a6, a7, v10);
}

uint64_t sub_1004FF540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  LODWORD(STACK[0x5780]) = v9;
  LODWORD(STACK[0x5790]) = v10;
  STACK[0x57A0] = a8;
  LODWORD(STACK[0x57B0]) = v12;
  return (*(STACK[0x57D8] + 8 * v11))(a1, a2, a3, a4, a5, a6, a7, v8);
}

uint64_t sub_1004FF5A8(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v10 = *(v6 + v7) - (*(v8 + v7) ^ 0xF);
  v11 = (v9 ^ v10) + a3 + (a4 & (2 * v10));
  v13 = v7 == 15 || v11 != a2;
  return (*(STACK[0x57D8] + 8 * ((v13 * a5) ^ v5)))();
}

uint64_t sub_1004FF618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x5028]) = LODWORD(STACK[0x5178]) + LODWORD(STACK[0x5338]) + LODWORD(STACK[0x5028]) - 1555009970;
  LODWORD(STACK[0x5178]) = LODWORD(STACK[0x5348]) + LODWORD(STACK[0x4FA0]) + LODWORD(STACK[0x4F98]) + 172431376;
  LODWORD(STACK[0x56E0]) = LODWORD(STACK[0x4F48]) - LODWORD(STACK[0x4F58]);
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x4F68]) - LODWORD(STACK[0x4F70]);
  LODWORD(STACK[0x5338]) = LODWORD(STACK[0x4F60]) ^ LODWORD(STACK[0x5620]);
  return (*(STACK[0x57D8] + 8 * (v6 - 10631)))(a1, 1328041615, 2374539132, (v7 - 1), v8, a6, 1483462841, -1328041614);
}

uint64_t sub_1004FF784@<X0>(int a1@<W0>, char a2@<W2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v22 = STACK[0x5360];
  v23 = *(*(&off_101353600 + v17) + (v8 ^ 0xD2) - 3);
  HIDWORD(v24) = v23 ^ 0xE54059;
  LODWORD(v24) = v23 ^ 0xFDFFFFFF;
  v25 = (v24 >> 24) ^ ((v24 >> 24) >> v20) ^ ((v24 >> 24) >> 2) ^ 0x9D95F7C5;
  v26 = (((((v8 ^ ((v8 & STACK[0x5388]) >> 1)) & a1) >> LODWORD(STACK[0x5360])) | ((v8 ^ ((v8 & STACK[0x5388]) >> 1)) << a2 << LODWORD(STACK[0x5540]))) ^ v19);
  *(STACK[0xD7D8] + 4 * v26) = v9 ^ (((v25 ^ ((v25 & STACK[0x5388]) >> 1)) & STACK[0x54E0]) >> LODWORD(STACK[0x5390]) >> LODWORD(STACK[0x5398])) ^ (((v25 ^ ((v25 & STACK[0x5388]) >> 1)) & a6) << v18 << LODWORD(STACK[0x53B8]));
  v27 = (*(*(&off_101353600 + v16) + (v8 ^ 0xAC)) - 8900);
  v28 = (*(*(&off_101353600 + v16) + (v8 ^ 0xAC)) - 8900) ^ (v27 >> 8) ^ (v27 >> 4);
  v29 = (v12 + v28 - ((2 * v28) & 0x2002)) ^ a8;
  v30 = STACK[0x57A0];
  *(a5 + 4 * v26) = LODWORD(STACK[0x57A0]) ^ v13 ^ (v29 + v14 - (v21 & (2 * v29)));
  v31 = 534986589 * *(*(&off_101353600 + v10 - 17575) + (v8 ^ 0xB0) - 2) + 1276489320;
  v32 = v31 ^ (((v31 ^ 0xEA3D6B1C) & v11 ^ v31 & 0xEFB797A8) >> 1) ^ 0x9F27EA99;
  v33 = ((v32 & STACK[0x55C0]) >> v22) + ((v32 & a4) << v15);
  v34 = (v33 + v12 - ((2 * v33) & 0xBDEA2002)) ^ a8;
  *(STACK[0xD7D0] + 4 * v26) = v30 ^ (v13 + 3067) ^ (v34 + v14 - (v21 & (2 * v34)));
  v35 = LODWORD(STACK[0x55C0]);
  *(a3 + 4 * v26) = a7 ^ *(*(&off_101353600 + v10 - 17772) + (v8 ^ 0xC8) - 6) ^ ((v8 ^ 0xD28B) + (v8 ^ 0x60) - ((2 * ((v8 ^ 0xD28B) + (v8 ^ 0x60))) & 0xC8) - 924);
  return (*(STACK[0x57D8] + 8 * ((11374 * (v8 == 255)) ^ v10)))(v35);
}

uint64_t sub_1004FFA10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x56E0]) = 0;
  v14 = *(v13 + (a8 | 0x1DF3Bu));
  v15 = (((v14 ^ 0x43) - 67) ^ ((v14 ^ 0x48) - 72) ^ (((v11 - 3572) | 0x5046) + (v14 ^ 0xFFFFFFB6) - 12)) - ((a8 - 106) ^ (a8 | 0x62) ^ (v9 - a8)) - 31;
  v16 = v15 & 0xFFFFFF9F ^ v10;
  v17 = v15 ^ (2 * ((v15 ^ 0x48) & (2 * ((v15 ^ 0x48) & (2 * ((v15 ^ 0x48) & (2 * ((v15 ^ 0x48) & (2 * ((v15 ^ 0x48) & (2 * (((2 * v15) & 0x12 ^ 0x56) & v15 ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16));
  v18 = (((v17 ^ 8) + 9) ^ ((v17 ^ 0xFFFFFF9F) - 96) ^ ((v17 ^ 0x24) + 37)) + 31;
  v19 = v18 ^ 0x10;
  LODWORD(STACK[0x5300]) = v18 ^ (2 * (v19 & (2 * (v19 & (2 * (v19 & (2 * (((2 * (((2 * (((2 * v18) & 0x22 | 0x11) & v18)) | 0x11) & v18)) ^ 0x3A) & v19 ^ v18 & 0x2B ^ v8)) ^ v18 & 0x2B ^ v8)) ^ v18 & 0x2B ^ v8)) ^ v18 & 0x2B ^ v8)) ^ 8;
  v20 = *(STACK[0x57D8] + 8 * v11);
  LODWORD(STACK[0x56F0]) = 5;
  v21 = LODWORD(STACK[0x5388]);
  LODWORD(STACK[0x5440]) = STACK[0x5520];
  LODWORD(STACK[0x5600]) = STACK[0x5580];
  LODWORD(STACK[0x53E8]) = a4;
  LODWORD(STACK[0x53F8]) = STACK[0x55D0];
  LODWORD(STACK[0x5620]) = a7;
  LODWORD(STACK[0x53B0]) = STACK[0x55A0];
  LODWORD(STACK[0x54B0]) = STACK[0x54F0];
  LODWORD(STACK[0x5460]) = v12;
  LODWORD(STACK[0x5450]) = STACK[0x5530];
  LODWORD(STACK[0x54C0]) = STACK[0x54E0];
  return v20(a1, v21);
}

uint64_t sub_1004FFD4C()
{
  v0 = STACK[0x6A08];
  STACK[0xB420] = &STACK[0x100F0];
  LODWORD(STACK[0x8C54]) = -769884004;
  STACK[0x8EA0] = v0;
  LODWORD(STACK[0xBC38]) = -746967324;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2178])))();
}

uint64_t sub_1004FFE04@<X0>(unint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, unint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v24 = STACK[0x57D8];
  STACK[0xC908] = *(STACK[0x57D8] + 8 * a9);
  STACK[0x8B60] = v10;
  v23[260] = v17;
  STACK[0x6BC0] = v15;
  LODWORD(STACK[0x7500]) = v16;
  v23[52] = a2;
  STACK[0xB488] = v12;
  STACK[0x7B60] = a4;
  LODWORD(STACK[0xCE00]) = v14;
  STACK[0xC6D0] = v11;
  LODWORD(STACK[0x7490]) = a7;
  LODWORD(STACK[0x690C]) = a6;
  LODWORD(STACK[0x7158]) = a8;
  LODWORD(STACK[0x8444]) = v18;
  STACK[0xB820] = a1;
  LODWORD(STACK[0x7B54]) = a3;
  STACK[0x8F48] = v13;
  LODWORD(STACK[0x5C58]) = a5;
  STACK[0x7958] = v20;
  STACK[0x6768] = v19;
  *(v22 + 404) = v21;
  LODWORD(STACK[0x9450]) = 2101965948;
  STACK[0x6490] = 0;
  STACK[0xC560] = 0x2369327399A66D95;
  STACK[0xC4D0] = &STACK[0xC560];
  LODWORD(STACK[0x7EBC]) = 195325320;
  STACK[0x7910] = 0xBCF261FDE04D217ALL;
  v23[290] = 1;
  v23[692] = -1055854036;
  return (*(v24 + 8 * v9))();
}

uint64_t sub_1004FFFC0()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(v0 - 0x1883660EE8144416);
  return (*(v1 + 8 * SLODWORD(STACK[0x4330])))(v2);
}

uint64_t sub_100500004()
{
  v3 = STACK[0xABF8];
  *(v3 + 264) = STACK[0x65F8];
  *(v3 + 272) = STACK[0x74C4];
  v4 = STACK[0x7EE8];
  *(v3 + 280) = STACK[0x7EE8];
  v5 = *v4;
  v6 = *STACK[0x51F0];
  v7 = *STACK[0x51E8] & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + (((v4 & 0xCDA70EC8) - 1399510453 + (v4 & 0xFFFFFFF8 | (v1 - 876529872))) & v7));
  v9 = (v8 + __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xB88801D4E1C76353;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0x8AB7427025057E2ELL) - (v11 + v10) - 0x455BA1381282BF18) ^ 0x826CEFAD0A78289FLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (((2 * (v14 + v13)) & 0xB997E4DD65571A52) - (v14 + v13) - 0x5CCBF26EB2AB8D2ALL) ^ 0x46B4BCECC1919787;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE1A1FD5BD155F97ALL;
  v18 = __ROR8__(v17, 8);
  v19 = v17 ^ __ROR8__(v16, 61);
  v20 = (((2 * (v18 + v19)) & 0xA02266CA6E814ABCLL) - (v18 + v19) - 0x501133653740A55FLL) ^ 0x758E8796CB1DE538;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0x75EC74A12B980DF4) - (v22 + v21) + 0x4509C5AF6A33F905) ^ 0xBF3C2762A10DC8C2;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (__ROR8__((((2 * (v25 + v24)) | 0xAC5243656F2A1566) - (v25 + v24) - 0x562921B2B7950AB3) ^ 0x84D92D549770D91DLL, 8) + ((((2 * (v25 + v24)) | 0xAC5243656F2A1566) - (v25 + v24) - 0x562921B2B7950AB3) ^ 0x84D92D549770D91DLL ^ __ROR8__(v24, 61))) ^ 0xF4730B31AE70757BLL;
  LOBYTE(v18) = 8 * (v4 & 7);
  v27 = *++v4;
  v28 = *(v6 + (((v4 & 0xAA383678) + (v4 & 0x55C7C980 | 0xAA38367B) - 805043553) & v7));
  v29 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = (v28 + v29 - ((2 * (v28 + v29)) & 0xFC05AF1C2414E04ELL) - 0x1FD2871EDF58FD9) ^ 0x468AD65AF3CD1374;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x38C8B16AE7056877;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) | 0x6EA1099E6FC13C70) - (v34 + v33) + 0x48AF7B30C81F61C8) ^ 0x52D035B2BB257B69;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0x9362FB25B96A59C8) - (v37 + v36) + 0x364E826D234AD31CLL) ^ 0x281080C90DE0D59ELL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0x997FADA28ACF9AFELL) + 0x4CBFD6D14567CD7FLL) ^ 0x96DF9DDD46C572E6;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) | 0x1B3D19C15A1F0B42) - (v43 + v42) - 0xD9E8CE0AD0F85A1) ^ 0xF7AB6E2D6631B466;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (((v0 - (v1 | ((v1 ^ 0xA39A64BB) << 32))) | ((v1 | ((v1 ^ 0xA39A64BB) << 32)) - v0)) >> 63) ^ 0xD2F00CE620E5D3AELL ^ (__ROR8__(v44, 8) + v45);
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  LODWORD(v4) = ((v26 >> v18) ^ v5) + 16 * ((((v48 + v47 - ((2 * (v48 + v47)) & 0xE49BC775ED71C0FELL) + 0x724DE3BAF6B8E07FLL) ^ 0x863EE88B58C89504) >> (8 * (v4 & 7u))) ^ v27);
  *(v3 + 288) = (v4 - 47 * (((2789 * v4) >> 16) >> 1) + 17);
  *(v3 + 304) = -769883971;
  *(v3 + 320) = -769883983;
  *(v3 + 328) = STACK[0x5CA8];
  LODWORD(STACK[0x1D4D0]) = v1 - 551690071 * ((2 * ((v2 - 240) & 0x50DAE148) - (v2 - 240) + 790961842) ^ 0x61C84DE5) - 1294017515;
  *(v3 + 296) = STACK[0x4E98];
  *(v3 + 312) = STACK[0x53F0];
  *(v3 + 336) = 96;
  LODWORD(STACK[0xA24C]) = -1749965970;
  STACK[0x1D4C8] = v3 + 264;
  v49 = STACK[0x57D8];
  v50 = (*(STACK[0x57D8] + 8 * (v1 - 31808291)))(v2 - 240);
  return (*(v49 + 8 * (v1 - 31835539)))(v50);
}

uint64_t sub_10050061C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W7>, uint64_t a6@<X8>)
{
  v15 = *v14 & 0xFFFFFFFFFFFFFFF8;
  v16 = __ROR8__(((v8 - 1837864385) & 0x6D8BD8D7 ^ 0xFFFFFFFFFFFFA7AELL) & (a6 + v7), 8);
  v17 = *(*v13 + (((((v8 - 1837864385) & 0x6D8BD8D7 ^ 0xFFFFA7AE) & (a6 + v7)) + a5) & v15));
  v18 = (((2 * (v16 + v17)) | 0x494C7534FD3BA1DCLL) - (v16 + v17) + 0x5B59C56581622F12) ^ 0x1C2E3B4E9F5AB3BDLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0xB09AA48601897572) + 0x584D524300C4BAB9) ^ 0x6085E329E7C1D2CELL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__((((2 * (v23 + v22)) | 0x85BEC4D863CA00EALL) - (v23 + v22) - 0x42DF626C31E50075) ^ 0xA75FD311BD20E524, 8);
  v25 = (((2 * (v23 + v22)) | 0x85BEC4D863CA00EALL) - (v23 + v22) - 0x42DF626C31E50075) ^ 0xA75FD311BD20E524 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ v12;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v11;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a2;
  v31 = *(*v13 + ((((((a1 + v7) & 0xFFFFFFF8) - 2036191529) ^ 0x989C5370) + 1526576851 + ((2 * ((a1 + v7) & 0xFFFFFFF8) + 222584238) & 0x3138A6E0)) & v15));
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = v31 + __ROR8__((a1 + v7) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = (__ROR8__(v30, 8) + v32) ^ v10;
  v35 = (((2 * v33) | 0x9689801AC287AD1CLL) - v33 + 0x34BB3FF29EBC2972) ^ 0x73CCC1D98084B5DDLL;
  v36 = v35 ^ __ROR8__(v31, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v9;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a4;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v12;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ v11;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = ((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v32, 61))) ^ a3) >> (8 * ((a6 + v7) & 7));
  v47 = __ROR8__((((2 * (v45 + v44)) | 0x754E0271B6BC8F5CLL) - (v45 + v44) - 0x3AA70138DB5E47AELL) ^ 0xC092E3F510607669, 8);
  v48 = (((2 * (v45 + v44)) | 0x754E0271B6BC8F5CLL) - (v45 + v44) - 0x3AA70138DB5E47AELL) ^ 0xC092E3F510607669 ^ __ROR8__(v44, 61);
  v49 = ((2 * (v47 + v48)) & 0x9E28EE6B2FE335B6) - (v47 + v48) - 0x4F14773597F19ADCLL;
  *(a1 + v7) = (((__ROR8__(v49 ^ 0x621B842C48EBB68ALL, 8) + (v49 ^ 0x621B842C48EBB68ALL ^ __ROR8__(v48, 61))) ^ a3) >> (8 * ((a1 + v7) & 7))) ^ *(a6 + v7) ^ v46;
  return (*(STACK[0x57D8] + 8 * ((113 * (v7 + 1 == v6)) ^ v8)))();
}

uint64_t sub_100500958(int a1)
{
  v1 = *(STACK[0x57D8] + 8 * a1);
  STACK[0x55A0] = (a1 - 8054);
  return v1();
}

uint64_t sub_100500A14()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x51B8] - 21200;
  v3 = STACK[0x6A10];
  v4 = STACK[0xB2D4];
  LODWORD(STACK[0x659C]) = -143113071;
  STACK[0xB870] = v3 + 4;
  v5 = ((v4 + 2002807637) ^ 0xCA9F80B6) & (2 * ((v4 + 2002807637) & 0x889F94A7)) ^ (v4 + 2002807637) & 0x889F94A7;
  v6 = ((2 * ((v4 + 2002807637) ^ 0xDB8F81B8)) ^ 0xA6202A3E) & ((v4 + 2002807637) ^ 0xDB8F81B8) ^ (2 * ((v4 + 2002807637) ^ 0xDB8F81B8)) & 0x5310151E;
  v7 = v6 ^ 0x51101501;
  v8 = (v6 ^ 0x1300001D) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x4C40547C) & v7 ^ (4 * v7) & 0x5310151C;
  v10 = (v9 ^ (v0 + 963)) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x13100103)) ^ 0x310151F0) & (v9 ^ 0x13100103) ^ (16 * (v9 ^ 0x13100103)) & 0x53101510;
  v12 = v10 ^ 0x5310151F ^ (v11 ^ 0x1100110F) & (v10 << 8);
  v13 = (v4 + 2002807637) ^ (2 * ((v12 << 16) & 0x53100000 ^ v12 ^ ((v12 << 16) ^ 0x151F0000) & (((v11 ^ 0x4210040F) << 8) & 0x53100000 ^ 0x43000000 ^ (((v11 ^ 0x4210040F) << 8) ^ 0x10150000) & (v11 ^ 0x4210040F))));
  LODWORD(STACK[0x5E34]) = v13 ^ 0xDE833E0D;
  STACK[0x8838] = v13 ^ 0xC9FBE99u;
  v14 = STACK[0x57D8];
  v15 = (*(STACK[0x57D8] + 8 * (v1 + 9192)))();
  STACK[0x9A60] = v15;
  if (v15)
  {
    v16 = v3 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  return (*(v14 + 8 * ((11006 * v17) ^ v2)))();
}

uint64_t sub_100500C2C()
{
  *(v1 - 0x55A8D952E5D4684ALL) = *(STACK[0xCB28] - 0x79CEC8CF5A6FCEBALL);
  v2 = STACK[0x57D8];
  STACK[0xAFD0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (((2621 * (v0 ^ 0xC37)) ^ 0xF86) + v0)))();
}

uint64_t sub_100500CCC()
{
  v1 = STACK[0x51B8];
  STACK[0x1D4C8] = STACK[0x4168];
  LODWORD(STACK[0x1D4C0]) = (v1 + 1717148634) ^ (1964904101 * ((((v0 - 240) | 0x7F3D94F) + (~(v0 - 240) | 0xF80C26B0)) ^ 0xFDD132CA));
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x2413)))(v0 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1ED4])))(v3);
}

uint64_t sub_100500D64@<X0>(uint64_t a1@<X8>)
{
  v5 = &STACK[0x10120] + v2;
  STACK[0x9418] = &STACK[0x10120] + v2;
  STACK[0x79C8] = &STACK[0x10120] + v2 + 195;
  *(v5 + 70) = 0;
  *(v5 + 73) = 0;
  *(v5 + 37) = 0;
  *(v5 + 38) = 0;
  v6 = (&STACK[0x10120] + v2 + 284);
  *(v5 + 216) = 0u;
  STACK[0xC060] = &STACK[0x10120] + v2 + 216;
  STACK[0x5988] = &STACK[0x10120] + v2 + 280;
  STACK[0x9A40] = &STACK[0x10120] + v2 + 568;
  STACK[0x7ED8] = a1 + 336;
  STACK[0xB060] = &STACK[0x10120] + v2 + 224;
  *(&STACK[0x10120] + v2 + 232) = 0u;
  STACK[0xA678] = &STACK[0x10120] + v2 + 232;
  STACK[0xA840] = &STACK[0x10120] + v2 + 240;
  *(&STACK[0x10120] + v2 + 248) = 0u;
  STACK[0x75C0] = &STACK[0x10120] + v2 + 248;
  v7 = v1 ^ 0x6A07;
  *(&STACK[0x10120] + v2 + 264) = 0u;
  STACK[0xBC50] = v6;
  *v6 = 0;
  v8 = (((v1 ^ 0x6A07) - 25441) | 0x4844) - 22015;
  STACK[0x9B90] = &STACK[0x10120] + v2 + 128;
  STACK[0x9760] = &STACK[0x10120] + v2 + 312;
  STACK[0x9980] = &STACK[0x10120] + v2 + 288;
  STACK[0x6C30] = &STACK[0x10120] + v2 + 292;
  STACK[0x72C8] = &STACK[0x10120] + v2 + 296;
  v9 = STACK[0x57D8];
  v10 = (*(STACK[0x57D8] + 8 * ((v1 ^ 0x6A07) + 2280)))();
  v12 = v3 == 0x30BDFED8F32E6831 || v4 == 0x79296B4A625EDF44;
  return (*(v9 + 8 * (((v8 ^ 0x25E) * v12) ^ v7)))(v10);
}

uint64_t sub_100500F68()
{
  STACK[0xB3E8] = 0x79296B4A625EDF44;
  STACK[0xC0C0] = 0;
  LODWORD(STACK[0x7B8C]) = -769884012;
  STACK[0x9778] = 0;
  LODWORD(STACK[0x5874]) = -769884012;
  STACK[0x64B8] = 0;
  LODWORD(STACK[0x86E0]) = -769884012;
  STACK[0xB810] = 0;
  LODWORD(STACK[0x605C]) = -769884012;
  STACK[0x8558] = 0;
  LODWORD(STACK[0xB904]) = 0;
  STACK[0xA698] = 0xD38CBDD3ACAFF84ALL;
  LODWORD(STACK[0x93DC]) = -769884012;
  LODWORD(STACK[0xB51C]) = -769884012;
  STACK[0xCCC8] = STACK[0x8160];
  STACK[0x9830] = &STACK[0xB3E8];
  LODWORD(STACK[0x8724]) = -502224478;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100501264()
{
  v0 = STACK[0x51B8];
  LODWORD(STACK[0xB744]) = LODWORD(STACK[0x974C]) << ((STACK[0x51B8] - 127) & 0xF8 ^ 0xD4);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * (v0 - 22059));
  return (*(v1 + 8 * (v0 - 17146)))();
}

uint64_t sub_100501480()
{
  v1 = STACK[0x58D0];
  LODWORD(STACK[0x7A00]) = -769884024;
  STACK[0x9848] = v1;
  STACK[0x6898] = 0;
  return (*(STACK[0x57D8] + 8 * (((v1 != 0) * (((2 * v0) ^ 0x9D4A) - 33101 + 155 * (v0 ^ 0x65BD))) ^ v0)))();
}

uint64_t sub_100501678()
{
  v0 = STACK[0x51B8] + 771292628;
  v1 = STACK[0x57D8];
  v2 = STACK[0xD9C];
  STACK[0xD018] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0xD9C]));
  return (*(v1 + 8 * ((v0 - 771299694) ^ v2)))();
}

uint64_t sub_10050171C()
{
  v1 = STACK[0x6990];
  v2 = STACK[0x7D68];
  v3 = *STACK[0x5A50];
  LODWORD(STACK[0x1D4D4]) = (STACK[0x51B8] + 2049900435) ^ (711523751 * ((((2 * (v0 - 240)) | 0x7F37F76E) - (v0 - 240) - 1067187127) ^ 0xF81DA66));
  STACK[0x1D4C0] = v3;
  STACK[0x1D4D8] = v1;
  STACK[0x1D4C8] = v2;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x15E0])))(v0 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x15D8])))(v5);
}

uint64_t sub_100501874()
{
  v1 = STACK[0x1F88];
  STACK[0x6390] = v0;
  LODWORD(STACK[0x70A8]) = STACK[0x75DC];
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1005018B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x5780];
  LODWORD(STACK[0x5080]) = LODWORD(STACK[0x52D0]) ^ 0x8D185B2C;
  v4 = STACK[0x5320];
  LODWORD(STACK[0x57B0]) = v3 ^ 0xDE;
  LODWORD(STACK[0x5760]) = v4 ^ 0x87570441 ^ v3 ^ 0xDE;
  LODWORD(STACK[0x5740]) = LODWORD(STACK[0x54E0]) ^ 0x6F831C48;
  LODWORD(STACK[0x5098]) = v4 & 0xFFFFFF01;
  v5 = LODWORD(STACK[0x5308]) ^ (2 * LODWORD(STACK[0x52D8])) ^ 0x3FA4D843;
  v6 = STACK[0x50A0];
  LODWORD(STACK[0x5750]) = v5;
  LODWORD(STACK[0x52D8]) = v6 ^ v5;
  LODWORD(STACK[0x50A0]) = LODWORD(STACK[0x5090]) ^ 0x33BE9B1D;
  LODWORD(STACK[0x5068]) = v4 ^ 0xB5BAF59A;
  STACK[0x5790] = STACK[0xD7E8];
  LODWORD(STACK[0x5770]) = (((LODWORD(STACK[0x5730]) ^ 0x6A3E4D2) - 508396062) ^ ((LODWORD(STACK[0x5730]) ^ 0xEFCA22F5) + 148618183) ^ ((LODWORD(STACK[0x5730]) ^ 0xE0F5619F) + 132446381)) - 1615688049;
  v7 = *(STACK[0x57D8] + 8 * v3);
  LODWORD(STACK[0x5780]) = -1828061184;
  return v7(0x305DE6B49B843700, a2, a3, 0x51AEADC64E362950);
}

uint64_t sub_100501AE8()
{
  LODWORD(STACK[0x972C]) = 103679699;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 24516)))(LODWORD(STACK[0x953C]) ^ 0x62E06D3 ^ ((LODWORD(STACK[0x953C]) ^ 0xC761C55B) + 1051737208) ^ ((LODWORD(STACK[0x953C]) ^ 0x932B2B88) + 1794822821) ^ ((((v0 ^ 0x1C7C) + 765171702) ^ LODWORD(STACK[0x953C])) - 733319471) ^ (((4352 * (v0 ^ 0x1C7C)) ^ LODWORD(STACK[0x953C]) ^ 0x7FFF19FC) - 2043771183));
  STACK[0x9918] = v2;
  if (v2)
  {
    v3 = -143113071;
  }

  else
  {
    v3 = STACK[0x4C30];
  }

  LODWORD(STACK[0xDB18]) = v3;
  return (*(v1 + 8 * ((194 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_100501C6C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 9207)))();
  return (*(v1 + 8 * (v0 - 20032)))(v2);
}

uint64_t sub_100501C98(uint64_t a1, uint64_t a2, int a3)
{
  v6 = STACK[0x57C0];
  LODWORD(STACK[0x5120]) = (v3 + 177830521) * LODWORD(STACK[0x57C0]);
  LODWORD(STACK[0x5520]) = LODWORD(STACK[0x53F0]) ^ LODWORD(STACK[0x51C8]) ^ LODWORD(STACK[0x5190]) ^ LODWORD(STACK[0x50E8]) ^ LODWORD(STACK[0x5148]) ^ v6 ^ v4;
  LODWORD(STACK[0x5540]) = a3 + LODWORD(STACK[0x5140]);
  LODWORD(STACK[0x5470]) = LODWORD(STACK[0x50F0]) - LODWORD(STACK[0x5780]);
  return (*(STACK[0x57D8] + 8 * v5))();
}

uint64_t sub_100501E5C(unint64_t a1)
{
  LODWORD(STACK[0x52E8]) = v4;
  STACK[0x50F0] = v3;
  STACK[0xCF30] += 16;
  STACK[0xD7C8] = a1;
  STACK[0xD7F8] = v1 + 0x37C27853A020055FLL;
  STACK[0xD7E8] = a1;
  v7 = STACK[0x57C0] != 0x52EFDEAB447FB86CLL && v5 != 0;
  return (*(STACK[0x57D8] + 8 * (v2 ^ (55 * v7))))();
}

uint64_t sub_100501F1C()
{
  v2 = STACK[0x6A08];
  LODWORD(STACK[0x98F4]) = v1;
  STACK[0x6230] = v2;
  LODWORD(STACK[0x6974]) = 630277340;
  return (*(STACK[0x57D8] + 8 * (v0 - 17575)))();
}

uint64_t sub_100501FD4()
{
  v2 = ((v0 - 26295) | v1) - 769889532;
  if (STACK[0x7CC8])
  {
    v3 = LODWORD(STACK[0xBD30]) == v2;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(STACK[0x57D8] + 8 * ((v4 * (((v0 - 26295) ^ 0xE11) - 7895)) ^ v0)))();
}

uint64_t sub_100502058()
{
  v4 = (v0 - 143113071 - v3) ^ v1;
  LODWORD(STACK[0xC14C]) = v4;
  return (*(STACK[0x57D8] + 8 * (((v4 == v2 - 143142808) * ((v2 + 2113824461) & 0x82017D5F ^ 0x588E)) ^ v2)))();
}

uint64_t sub_1005021A4(int a1, int a2, int a3, int a4, char a5, unint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x5280]) = a8;
  LODWORD(STACK[0x52D8]) = a8 ^ 0xB05;
  v19 = a7 & ((a8 ^ 0xB05) - 27117) ^ 0x494EE6D6;
  LODWORD(STACK[0x52B8]) = v19;
  v20 = STACK[0x4F80];
  v21 = *(STACK[0x4F80] + (*(v13 + v19) ^ 0x1ALL)) - 115;
  v22 = a7 & 0xFFFFFFF9 ^ 0x494EE6D6;
  LODWORD(STACK[0x5298]) = v22;
  v23 = *(v13 + v22);
  v24 = v23 - ((2 * v23) & 0xB6);
  v25 = v23 ^ v10;
  v26 = STACK[0x4F78];
  v27 = ((v21 ^ (v21 >> 4) & 7 ^ 0x33333333) << 24) | ((*(STACK[0x4F78] + v25) ^ (v24 - 37) ^ 0x74) << 8);
  LODWORD(v25) = a7 & 0xFFFFFFF3 ^ 0x494EE6DE;
  LODWORD(STACK[0x52B0]) = v25;
  v28 = STACK[0xD7C8];
  v29 = STACK[0x4F88];
  v30 = *(STACK[0x4F88] + (*(v28 + v25) ^ 0xBLL)) ^ (*(v28 + v25) - ((2 * *(v28 + v25)) & 0x40) - 96) ^ v8;
  v31 = a7 & 0xFFFFFFF0 ^ 0x494EE6DF;
  LODWORD(STACK[0x52A8]) = v31;
  v32 = *(v26 + (*(v28 + v31) ^ 0xBFLL)) ^ (*(v28 + v31) - ((2 * *(v28 + v31)) & 0xB6) - 37) ^ v9 | (v30 << 24);
  v33 = a7 & 0xFFFFFFF6 ^ 0x494EE6DF;
  LODWORD(STACK[0x52A0]) = v33;
  v34 = *(v29 + (*(v28 + v33) ^ 0xD4)) ^ (*(v28 + v33) - ((2 * *(v28 + v33)) & 0x40) - 96) ^ 0xB6;
  v35 = a7 & 0xFFFFFFF7 ^ 0x494EE6DE;
  LODWORD(STACK[0x5288]) = v35;
  v36 = (v34 << 16) | ((*(v29 + (*(v28 + v35) ^ a6)) ^ (*(v28 + v35) - ((2 * *(v28 + v35)) & 0x40) - 96) ^ 0x1C) << 24);
  v37 = a7 & 0xFFFFFFF2 ^ 0x494EE6DF;
  LODWORD(STACK[0x5278]) = v37;
  v38 = *(v26 + (*(v28 + v37) ^ 0x78)) ^ (*(v28 + v37) - ((2 * *(v28 + v37)) & 0xB6) - 37) ^ v11;
  LODWORD(STACK[0x5270]) = a7 ^ 0x494EE6D6;
  v39 = v32 | (v38 << 16);
  v40 = *(v20 + (*(v28 + (a7 ^ 0x494EE6D6u)) ^ 0xALL)) - 115;
  v41 = a7 & 0xFFFFFFFC ^ 0x494EE6D7;
  LODWORD(STACK[0x5290]) = v41;
  v42 = *(v26 + (*(v28 + v41) ^ 0xF9)) ^ (*(v28 + v41) - ((2 * *(v28 + v41)) & 0xB6) - 37) ^ 0x6D | ((v40 ^ 0xD7 ^ (v40 >> 4) & 7) << 24);
  v43 = a7 & 0xFFFFFFFE ^ 0x494EE6D7;
  LODWORD(STACK[0x5268]) = v43;
  v44 = v42 | ((*(v26 + (*(v28 + v43) ^ 7)) ^ (*(v28 + v43) - ((2 * *(v28 + v43)) & 0xB6) - 37) ^ 0xB2) << 16);
  v45 = a7 & a4 ^ 0x494EE6DE;
  LODWORD(STACK[0x5260]) = v45;
  v46 = *(v26 + (*(v28 + v45) ^ 0x18)) ^ (*(v28 + v45) - ((2 * *(v28 + v45)) & 0xB6) - 37) ^ 0xE2;
  v47 = a7 & 0xFFFFFFF8 ^ 0x494EE6D7;
  LODWORD(STACK[0x5250]) = v47;
  v48 = v36 | (v46 << 8);
  v49 = *(v20 + (*(v28 + v47) ^ 0x58)) - 115;
  v50 = v27 & 0xFFFFFF00 | v49 ^ 0xB6 ^ (v49 >> 4) & 7;
  v51 = a7 & a2 ^ 0x494EE6D7;
  LODWORD(STACK[0x5238]) = v51;
  v52 = *(STACK[0x4F70] + (*(v28 + v51) ^ 0xE1)) ^ (*(v28 + v51) - ((2 * *(v28 + v51)) & 0xF3) + 121);
  v53 = a7 & 0xFFFFFFF1 ^ 0x494EE6DE;
  LODWORD(STACK[0x5258]) = v53;
  v54 = v52 ^ 0x1E;
  v55 = *(v28 + v53);
  v56 = v50 | (v54 << 16);
  LODWORD(v29) = v39 | ((*(v26 + (v55 ^ 0x3D)) ^ (v55 - ((2 * v55) & 0xB6) - 37) ^ a1) << 8);
  LODWORD(STACK[0x5108]) = v56;
  v57 = v56 ^ ((v56 & v18) >> 1);
  LOBYTE(v56) = STACK[0x5540];
  LOBYTE(v47) = STACK[0x5370];
  v58 = STACK[0x55C0];
  v59 = ((v57 & v14) << v56 << v47) ^ ((v57 & STACK[0x55C0]) >> v16);
  v60 = STACK[0x53D8];
  v61 = LODWORD(STACK[0x53A8]) ^ LODWORD(STACK[0x53D8]);
  v62 = v59 + v61 - 2 * v59;
  LODWORD(STACK[0x5248]) = a7;
  LODWORD(v55) = a7 & 0xFFFFFFFD ^ 0x494EE6D6;
  LODWORD(STACK[0x5228]) = v55;
  LODWORD(v55) = *(v20 + (*(v28 + v55) ^ 0xD8)) - 115;
  v63 = v44 & 0xFFFF00FF | ((v55 ^ a5 ^ (v55 >> 4) & 7) << 8);
  LODWORD(v25) = a7 & a3 ^ 0x494EE6DF;
  LODWORD(STACK[0x5230]) = v25;
  v64 = *(v26 + (*(v28 + v25) ^ 0xABLL)) ^ (*(v28 + v25) - ((2 * *(v28 + v25)) & 0xB6) - 37) ^ 0x5E | v48;
  LODWORD(v28) = v63 & STACK[0x5318];
  v65 = STACK[0x5318];
  LODWORD(STACK[0x5110]) = v63;
  v66 = STACK[0x54E0];
  v67 = STACK[0x5348];
  LODWORD(v55) = (((v63 ^ (v28 >> 1)) & STACK[0x54E0]) >> LODWORD(STACK[0x50E0]) >> LODWORD(STACK[0x50E8])) ^ (((v63 ^ (v28 >> 1)) & STACK[0x5348]) << v15);
  LODWORD(STACK[0x50F8]) = v64;
  v68 = (((v64 ^ ((v64 & v18) >> 1)) & v14) << v47 << v56) + (((v64 ^ ((v64 & v18) >> 1)) & v66) >> v16);
  LODWORD(STACK[0x5218]) = v68;
  v69 = 2048086489 * v62 + ((2048086489 * v62) >> 16);
  v70 = v55;
  LODWORD(STACK[0x5210]) = v55;
  LODWORD(v28) = (1659392319 * (v69 + v55 - (v69 >> 8))) ^ ((1659392319 * (v69 + v55 - (v69 >> 8))) >> 16);
  LODWORD(v28) = v28 - v68 - (v28 >> 8);
  v71 = (STACK[0x5600] >> 1) | (STACK[0x5600] << 63);
  v72 = STACK[0x55F0];
  v73 = 2048086489 * ((v72 ^ v12) - v61 + v62) + ((2048086489 * ((v72 ^ v12) - v61 + v62)) >> 16);
  v74 = v73 - (v73 >> 8) + v70;
  v75 = __ROR8__(v74, 1);
  v76 = ((v71 ^ v75) >> 63) | (2 * (v71 ^ v75));
  v77 = ((v12 - (v72 ^ v12)) ^ v72 ^ v12) + 2 * ((v12 - (v72 ^ v12)) & (v72 ^ v12));
  LODWORD(STACK[0x5100]) = v29;
  v78 = (((v29 ^ ((v29 & v65) >> 1)) & v58) >> LODWORD(STACK[0x5380]) >> LODWORD(STACK[0x5378])) | (((v29 ^ ((v29 & v65) >> 1)) & v67) << v15);
  LODWORD(STACK[0x5200]) = v78;
  v79 = (v72 ^ v12 ^ LODWORD(STACK[0x5610])) & 0xB2B1C367 ^ ((v72 ^ v12) & 0xB2B1C367 | STACK[0x5610] & LODWORD(STACK[0x4AF8]));
  v80 = (30421215 * v28) ^ ((30421215 * v28) >> 16) ^ (((30421215 * v28) ^ ((30421215 * v28) >> 16)) >> 8);
  LODWORD(STACK[0x5240]) = LODWORD(STACK[0x52F0]) < 0x5992E9B3;
  v81 = v80 & 0x2000;
  if ((v81 & STACK[0x5560]) != 0)
  {
    v82 = -v81;
  }

  else
  {
    v82 = v80 & 0x2000;
  }

  v83 = (v82 + LODWORD(STACK[0x5560])) ^ v81;
  LODWORD(STACK[0x5208]) = v61 - v62;
  if ((v69 & 0x8000000) != 0)
  {
    v85 = -134217728;
  }

  else
  {
    v85 = 0x8000000;
  }

  v86 = v72 ^ v69 ^ (v85 + v69);
  v84 = (v80 - LODWORD(STACK[0x5570])) ^ v80 ^ LODWORD(STACK[0x5570]) ^ -(v80 ^ LODWORD(STACK[0x5570]));
  v87 = v84 + v80;
  v88 = 1536813849 * (v80 ^ v78) - ((1536813849 * (v80 ^ v78)) >> 16);
  LODWORD(STACK[0x51F8]) = v88 >> 8;
  LODWORD(STACK[0x51E0]) = v88;
  v89 = STACK[0xD7D8];
  STACK[0x5220] = STACK[0xD7E0];
  v90 = v88 - v89 - (v88 >> 8);
  *(v17 - 152) = v89;
  LODWORD(STACK[0x5550]) = v90;
  v91 = (v90 & 1) == 0;
  v92 = STACK[0x55D0];
  if (v91)
  {
    v93 = v84 + v80;
  }

  else
  {
    v93 = STACK[0x55D0];
  }

  LODWORD(STACK[0x57C0]) = v93;
  v94 = STACK[0x55E0];
  if (!v91)
  {
    v92 = STACK[0x55E0];
  }

  LODWORD(STACK[0x5570]) = v92;
  v95 = STACK[0x55B0];
  if (!v91)
  {
    v94 = STACK[0x55B0];
  }

  LODWORD(STACK[0x55E0]) = v94;
  if (v91)
  {
    v96 = v95;
  }

  else
  {
    v96 = v87;
  }

  v97 = STACK[0x54F0];
  v98 = STACK[0x5470];
  if (v91)
  {
    v99 = STACK[0x5470];
  }

  else
  {
    v99 = STACK[0x54F0];
  }

  LODWORD(STACK[0x5188]) = v99;
  v100 = STACK[0x5510];
  if (!v91)
  {
    v97 = STACK[0x5510];
  }

  LODWORD(STACK[0x5560]) = v97;
  if (v91)
  {
    v101 = v100;
  }

  else
  {
    v101 = STACK[0x5500];
  }

  if (v91)
  {
    v102 = STACK[0x5500];
  }

  else
  {
    v102 = v98;
  }

  LODWORD(STACK[0x5500]) = v102;
  v103 = STACK[0x57B0];
  v104 = STACK[0x57A0];
  if (v91)
  {
    v105 = STACK[0x57B0];
  }

  else
  {
    v105 = STACK[0x57A0];
  }

  LODWORD(STACK[0x5610]) = v105;
  if (v91)
  {
    v103 = v83;
  }

  LODWORD(STACK[0x57B0]) = v103;
  v106 = STACK[0x5790];
  if (v91)
  {
    v107 = STACK[0x5790];
  }

  else
  {
    v107 = v83;
  }

  LODWORD(STACK[0x51B0]) = v107;
  if (v91)
  {
    v108 = v104;
  }

  else
  {
    v108 = v106;
  }

  v109 = STACK[0x5450];
  v110 = STACK[0x5440];
  if (v91)
  {
    v111 = STACK[0x5450];
  }

  else
  {
    v111 = STACK[0x5440];
  }

  LODWORD(STACK[0x5180]) = v111;
  v112 = STACK[0x5460];
  if (v91)
  {
    v109 = STACK[0x5460];
  }

  LODWORD(STACK[0x51D0]) = v109;
  if (v91)
  {
    v113 = STACK[0x5430];
  }

  else
  {
    v113 = v112;
  }

  if (v91)
  {
    v114 = v110;
  }

  else
  {
    v114 = STACK[0x5430];
  }

  LODWORD(STACK[0x5440]) = v114;
  v115 = STACK[0x5770];
  if (v91)
  {
    v116 = v76 ^ v74;
  }

  else
  {
    v116 = STACK[0x5770];
  }

  LODWORD(STACK[0x5600]) = v116;
  v117 = STACK[0x5780];
  if (!v91)
  {
    v115 = STACK[0x5780];
  }

  LODWORD(STACK[0x5150]) = v115;
  if (!v91)
  {
    v117 = v79;
  }

  LODWORD(STACK[0x51A8]) = v117;
  if (v91)
  {
    v118 = v79;
  }

  else
  {
    v118 = v76 ^ v74;
  }

  v119 = STACK[0x5408];
  v120 = STACK[0x5400];
  if (v91)
  {
    v121 = STACK[0x5408];
  }

  else
  {
    v121 = STACK[0x5400];
  }

  LODWORD(STACK[0x55F0]) = v121;
  v122 = STACK[0x5410];
  if (v91)
  {
    v119 = STACK[0x5410];
  }

  LODWORD(STACK[0x5408]) = v119;
  v123 = STACK[0x5420];
  if (v91)
  {
    v122 = STACK[0x5420];
  }

  LODWORD(STACK[0x51A0]) = v122;
  if (v91)
  {
    v124 = v120;
  }

  else
  {
    v124 = v123;
  }

  v125 = STACK[0x5760];
  v126 = STACK[0x5750];
  if (v91)
  {
    v127 = STACK[0x5760];
  }

  else
  {
    v127 = STACK[0x5750];
  }

  LODWORD(STACK[0x5178]) = v127;
  v128 = STACK[0x5740];
  if (!v91)
  {
    v126 = STACK[0x5740];
  }

  LODWORD(STACK[0x5750]) = v126;
  v129 = STACK[0x5730];
  if (v91)
  {
    v125 = STACK[0x5730];
  }

  LODWORD(STACK[0x5198]) = v125;
  if (v91)
  {
    v130 = v128;
  }

  else
  {
    v130 = v129;
  }

  v131 = STACK[0x53F8];
  v132 = STACK[0x53F0];
  if (v91)
  {
    v133 = STACK[0x53F8];
  }

  else
  {
    v133 = STACK[0x53F0];
  }

  LODWORD(STACK[0x51D8]) = v133;
  v134 = STACK[0x53E8];
  if (!v91)
  {
    v132 = STACK[0x53E8];
  }

  LODWORD(STACK[0x5148]) = v132;
  v135 = STACK[0x53E0];
  if (!v91)
  {
    v134 = STACK[0x53E0];
  }

  LODWORD(STACK[0x5190]) = v134;
  if (v91)
  {
    v136 = v135;
  }

  else
  {
    v136 = v131;
  }

  v137 = v86 ^ 0x8000000;
  v138 = STACK[0x5720];
  if (v91)
  {
    v139 = v137;
  }

  else
  {
    v139 = STACK[0x5720];
  }

  LODWORD(STACK[0x5140]) = v139;
  v140 = STACK[0x5710];
  if (!v91)
  {
    v138 = STACK[0x5710];
  }

  LODWORD(STACK[0x5720]) = v138;
  if (v91)
  {
    v141 = v140;
  }

  else
  {
    v141 = STACK[0x55A0];
  }

  if (v91)
  {
    v142 = STACK[0x55A0];
  }

  else
  {
    v142 = v137;
  }

  v143 = STACK[0x53D0];
  if (v91)
  {
    v144 = v60;
  }

  else
  {
    v144 = STACK[0x53D0];
  }

  LODWORD(STACK[0x51C8]) = v144;
  v145 = STACK[0x53C8];
  if (v91)
  {
    v146 = v143;
  }

  else
  {
    v146 = STACK[0x53C8];
  }

  v147 = STACK[0x53C0];
  if (!v91)
  {
    v145 = STACK[0x53C0];
  }

  LODWORD(STACK[0x5160]) = v145;
  if (v91)
  {
    v148 = v147;
  }

  else
  {
    v148 = v60;
  }

  v149 = STACK[0x5700];
  v150 = STACK[0x56E0];
  if (v91)
  {
    v151 = STACK[0x56E0];
  }

  else
  {
    v151 = STACK[0x5700];
  }

  v152 = STACK[0x5590];
  if (!v91)
  {
    v149 = STACK[0x5590];
  }

  LODWORD(STACK[0x5700]) = v149;
  if (v91)
  {
    v153 = STACK[0x56F0];
  }

  else
  {
    v153 = v150;
  }

  if (v91)
  {
    v154 = v152;
  }

  else
  {
    v154 = STACK[0x56F0];
  }

  v155 = STACK[0x5680];
  if (v91)
  {
    v156 = STACK[0x5680];
  }

  else
  {
    v156 = v77;
  }

  LODWORD(STACK[0x51C0]) = v156;
  v157 = STACK[0x56C0];
  if (v91)
  {
    v158 = STACK[0x56C0];
  }

  else
  {
    v158 = v155;
  }

  v159 = STACK[0x56D0];
  if (v91)
  {
    v157 = STACK[0x56D0];
  }

  LODWORD(STACK[0x5680]) = v157;
  if (v91)
  {
    v160 = v77;
  }

  else
  {
    v160 = v159;
  }

  v161 = STACK[0x5660];
  v162 = STACK[0x5650];
  if (v91)
  {
    v163 = STACK[0x5660];
  }

  else
  {
    v163 = STACK[0x5650];
  }

  v164 = STACK[0x5670];
  if (v91)
  {
    v161 = STACK[0x5670];
  }

  LODWORD(STACK[0x5170]) = v161;
  if (v91)
  {
    v165 = STACK[0x5580];
  }

  else
  {
    v165 = v164;
  }

  if (v91)
  {
    v166 = v162;
  }

  else
  {
    v166 = STACK[0x5580];
  }

  v167 = STACK[0x5630];
  v168 = STACK[0x5620];
  if (v91)
  {
    v169 = STACK[0x5630];
  }

  else
  {
    v169 = STACK[0x5620];
  }

  LODWORD(STACK[0x5138]) = v169;
  v170 = STACK[0x5520];
  if (!v91)
  {
    v168 = STACK[0x5520];
  }

  LODWORD(STACK[0x5168]) = v168;
  v171 = STACK[0x5640];
  if (v91)
  {
    v172 = STACK[0x5640];
  }

  else
  {
    v172 = v167;
  }

  LODWORD(STACK[0x5158]) = v172;
  if (v91)
  {
    v173 = v170;
  }

  else
  {
    v173 = v171;
  }

  v174 = __ROR4__(__ROR4__(STACK[0x54A0], 24) ^ 0x2EB4811C, 8) ^ 0x1C2EB481;
  v175 = STACK[0x54B0];
  if (v91)
  {
    v176 = STACK[0x54B0];
  }

  else
  {
    v176 = v174;
  }

  LODWORD(STACK[0x5130]) = v176;
  if (v91)
  {
    v177 = STACK[0x54C0];
  }

  else
  {
    v177 = v175;
  }

  v178 = STACK[0x54D0];
  if (v91)
  {
    v179 = v174;
  }

  else
  {
    v179 = STACK[0x54D0];
  }

  if (!v91)
  {
    v178 = STACK[0x54C0];
  }

  v180 = STACK[0x5480];
  v181 = STACK[0x5340];
  if (v91)
  {
    v182 = STACK[0x5340];
  }

  else
  {
    v182 = STACK[0x5480];
  }

  LODWORD(STACK[0x53B0]) = v182;
  v183 = STACK[0x5490];
  if (v91)
  {
    v181 = STACK[0x5490];
  }

  v184 = STACK[0x5338];
  if (v91)
  {
    v183 = STACK[0x5338];
  }

  LODWORD(STACK[0x53B8]) = v183;
  if (v91)
  {
    v185 = v180;
  }

  else
  {
    v185 = v184;
  }

  v186 = (STACK[0x5550] & 2) == 0;
  v187 = STACK[0x5570];
  if ((STACK[0x5550] & 2) != 0)
  {
    v188 = v96;
  }

  else
  {
    v188 = STACK[0x5570];
  }

  LODWORD(STACK[0x55D0]) = v188;
  if (v186)
  {
    v189 = v96;
  }

  else
  {
    v189 = v187;
  }

  LODWORD(STACK[0x55B0]) = v189;
  v190 = STACK[0x57C0];
  v191 = STACK[0x55E0];
  if (v186)
  {
    v192 = STACK[0x57C0];
  }

  else
  {
    v192 = STACK[0x55E0];
  }

  LODWORD(STACK[0x5570]) = v192;
  v193 = *(v17 - 152);
  if (v186)
  {
    v194 = v191;
  }

  else
  {
    v194 = v190;
  }

  LODWORD(STACK[0x55E0]) = v194;
  v195 = STACK[0x5188];
  if (v186)
  {
    v196 = STACK[0x5188];
  }

  else
  {
    v196 = v101;
  }

  LODWORD(STACK[0x5470]) = v196;
  if (v186)
  {
    v197 = v101;
  }

  else
  {
    v197 = v195;
  }

  LODWORD(STACK[0x5510]) = v197;
  v198 = STACK[0x5560];
  v199 = STACK[0x5500];
  if (v186)
  {
    v200 = STACK[0x5560];
  }

  else
  {
    v200 = STACK[0x5500];
  }

  LODWORD(STACK[0x54F0]) = v200;
  if (v186)
  {
    v201 = v199;
  }

  else
  {
    v201 = v198;
  }

  LODWORD(STACK[0x5500]) = v201;
  v202 = STACK[0x57B0];
  if (v186)
  {
    v203 = STACK[0x57B0];
  }

  else
  {
    v203 = v108;
  }

  LODWORD(STACK[0x5560]) = v203;
  if (v186)
  {
    v204 = v108;
  }

  else
  {
    v204 = v202;
  }

  LODWORD(STACK[0x57A0]) = v204;
  v205 = STACK[0x5610];
  v206 = STACK[0x51B0];
  if (v186)
  {
    v207 = STACK[0x5610];
  }

  else
  {
    v207 = STACK[0x51B0];
  }

  LODWORD(STACK[0x57B0]) = v207;
  if (v186)
  {
    v208 = v206;
  }

  else
  {
    v208 = v205;
  }

  LODWORD(STACK[0x5790]) = v208;
  v209 = STACK[0x5180];
  if (v186)
  {
    v210 = STACK[0x5180];
  }

  else
  {
    v210 = v113;
  }

  LODWORD(STACK[0x5450]) = v210;
  if (v186)
  {
    v211 = v113;
  }

  else
  {
    v211 = v209;
  }

  LODWORD(STACK[0x5430]) = v211;
  v212 = STACK[0x51D0];
  v213 = STACK[0x5440];
  if (v186)
  {
    v214 = STACK[0x51D0];
  }

  else
  {
    v214 = STACK[0x5440];
  }

  LODWORD(STACK[0x5460]) = v214;
  if (v186)
  {
    v215 = v213;
  }

  else
  {
    v215 = v212;
  }

  LODWORD(STACK[0x5440]) = v215;
  v216 = STACK[0x5150];
  if (v186)
  {
    v217 = STACK[0x5150];
  }

  else
  {
    v217 = v118;
  }

  LODWORD(STACK[0x5770]) = v217;
  if (v186)
  {
    v218 = v118;
  }

  else
  {
    v218 = v216;
  }

  LODWORD(STACK[0x5610]) = v218;
  v219 = STACK[0x5600];
  v220 = STACK[0x51A8];
  if (v186)
  {
    v221 = STACK[0x51A8];
  }

  else
  {
    v221 = STACK[0x5600];
  }

  LODWORD(STACK[0x5780]) = v221;
  if (v186)
  {
    v222 = v219;
  }

  else
  {
    v222 = v220;
  }

  STACK[0x5600] = v222;
  v223 = STACK[0x5408];
  if (v186)
  {
    v224 = STACK[0x5408];
  }

  else
  {
    v224 = v124;
  }

  LODWORD(STACK[0x5410]) = v224;
  if (v186)
  {
    v225 = v124;
  }

  else
  {
    v225 = v223;
  }

  LODWORD(STACK[0x5400]) = v225;
  v226 = STACK[0x55F0];
  v227 = STACK[0x51A0];
  if (v186)
  {
    v228 = STACK[0x55F0];
  }

  else
  {
    v228 = STACK[0x51A0];
  }

  LODWORD(STACK[0x5408]) = v228;
  if (v186)
  {
    v229 = v227;
  }

  else
  {
    v229 = v226;
  }

  LODWORD(STACK[0x5420]) = v229;
  v230 = STACK[0x5178];
  if (v186)
  {
    v231 = STACK[0x5178];
  }

  else
  {
    v231 = v130;
  }

  LODWORD(STACK[0x5760]) = v231;
  if (v186)
  {
    v232 = v130;
  }

  else
  {
    v232 = v230;
  }

  LODWORD(STACK[0x5740]) = v232;
  v233 = STACK[0x5750];
  v234 = STACK[0x5198];
  if (v186)
  {
    v235 = STACK[0x5198];
  }

  else
  {
    v235 = STACK[0x5750];
  }

  LODWORD(STACK[0x5730]) = v235;
  if (v186)
  {
    v236 = v233;
  }

  else
  {
    v236 = v234;
  }

  LODWORD(STACK[0x5750]) = v236;
  v237 = STACK[0x5148];
  if (v186)
  {
    v238 = STACK[0x5148];
  }

  else
  {
    v238 = v136;
  }

  LODWORD(STACK[0x53F0]) = v238;
  if (v186)
  {
    v239 = v136;
  }

  else
  {
    v239 = v237;
  }

  LODWORD(STACK[0x53E0]) = v239;
  v240 = STACK[0x51D8];
  v241 = STACK[0x5190];
  if (v186)
  {
    v242 = STACK[0x5190];
  }

  else
  {
    v242 = STACK[0x51D8];
  }

  LODWORD(STACK[0x53E8]) = v242;
  if (v186)
  {
    v243 = v240;
  }

  else
  {
    v243 = v241;
  }

  LODWORD(STACK[0x53F8]) = v243;
  v244 = STACK[0x5140];
  if (v186)
  {
    v245 = STACK[0x5140];
  }

  else
  {
    v245 = v141;
  }

  LODWORD(STACK[0x55F0]) = v245;
  if (v186)
  {
    v246 = v141;
  }

  else
  {
    v246 = v244;
  }

  LODWORD(STACK[0x5710]) = v246;
  v247 = STACK[0x5720];
  if (v186)
  {
    v248 = v142;
  }

  else
  {
    v248 = STACK[0x5720];
  }

  LODWORD(STACK[0x55A0]) = v248;
  if (v186)
  {
    v249 = v247;
  }

  else
  {
    v249 = v142;
  }

  LODWORD(STACK[0x5720]) = v249;
  if (v186)
  {
    v250 = v146;
  }

  else
  {
    v250 = v148;
  }

  LODWORD(STACK[0x53D0]) = v250;
  if (v186)
  {
    v251 = v148;
  }

  else
  {
    v251 = v146;
  }

  LODWORD(STACK[0x53C0]) = v251;
  v252 = STACK[0x51C8];
  v253 = STACK[0x5160];
  if (v186)
  {
    v254 = STACK[0x5160];
  }

  else
  {
    v254 = STACK[0x51C8];
  }

  LODWORD(STACK[0x53C8]) = v254;
  if (v186)
  {
    v255 = v252;
  }

  else
  {
    v255 = v253;
  }

  LODWORD(STACK[0x53D8]) = v255;
  if (v186)
  {
    v256 = v154;
  }

  else
  {
    v256 = v151;
  }

  LODWORD(STACK[0x5590]) = v256;
  if (v186)
  {
    v257 = v151;
  }

  else
  {
    v257 = v154;
  }

  LODWORD(STACK[0x56E0]) = v257;
  v258 = STACK[0x5700];
  if (v186)
  {
    v259 = v153;
  }

  else
  {
    v259 = STACK[0x5700];
  }

  LODWORD(STACK[0x56F0]) = v259;
  if (v186)
  {
    v260 = v258;
  }

  else
  {
    v260 = v153;
  }

  LODWORD(STACK[0x5700]) = v260;
  if (v186)
  {
    v261 = v160;
  }

  else
  {
    v261 = v158;
  }

  LODWORD(STACK[0x57C0]) = v261;
  if (v186)
  {
    v262 = v158;
  }

  else
  {
    v262 = v160;
  }

  LODWORD(STACK[0x56C0]) = v262;
  v263 = STACK[0x51C0];
  v264 = STACK[0x5680];
  if (v186)
  {
    v265 = STACK[0x5680];
  }

  else
  {
    v265 = STACK[0x51C0];
  }

  LODWORD(STACK[0x56D0]) = v265;
  if (v186)
  {
    v266 = v263;
  }

  else
  {
    v266 = v264;
  }

  LODWORD(STACK[0x5680]) = v266;
  if (v186)
  {
    v267 = v163;
  }

  else
  {
    v267 = v165;
  }

  LODWORD(STACK[0x5660]) = v267;
  if (v186)
  {
    v268 = v165;
  }

  else
  {
    v268 = v163;
  }

  LODWORD(STACK[0x5580]) = v268;
  v269 = STACK[0x5170];
  if (v186)
  {
    v270 = STACK[0x5170];
  }

  else
  {
    v270 = v166;
  }

  LODWORD(STACK[0x5670]) = v270;
  if (v186)
  {
    v271 = v166;
  }

  else
  {
    v271 = v269;
  }

  LODWORD(STACK[0x5650]) = v271;
  v272 = STACK[0x5138];
  if (v186)
  {
    v273 = v173;
  }

  else
  {
    v273 = STACK[0x5138];
  }

  LODWORD(STACK[0x5520]) = v273;
  if (!v186)
  {
    v272 = v173;
  }

  LODWORD(STACK[0x5630]) = v272;
  v274 = STACK[0x5168];
  v275 = STACK[0x5158];
  if (v186)
  {
    v276 = STACK[0x5168];
  }

  else
  {
    v276 = STACK[0x5158];
  }

  LODWORD(STACK[0x5620]) = v276;
  if (v186)
  {
    v277 = v275;
  }

  else
  {
    v277 = v274;
  }

  LODWORD(STACK[0x5640]) = v277;
  if (v186)
  {
    v278 = v179;
  }

  else
  {
    v278 = v177;
  }

  LODWORD(STACK[0x54A0]) = v278;
  if (v186)
  {
    v279 = v177;
  }

  else
  {
    v279 = v179;
  }

  LODWORD(STACK[0x54C0]) = v279;
  v280 = STACK[0x5130];
  if (v186)
  {
    v281 = STACK[0x5130];
  }

  else
  {
    v281 = v178;
  }

  LODWORD(STACK[0x54B0]) = v281;
  if (v186)
  {
    v282 = v178;
  }

  else
  {
    v282 = v280;
  }

  LODWORD(STACK[0x54D0]) = v282;
  if (v186)
  {
    v283 = v181;
  }

  else
  {
    v283 = v185;
  }

  LODWORD(STACK[0x5490]) = v283;
  if (v186)
  {
    v284 = v185;
  }

  else
  {
    v284 = v181;
  }

  LODWORD(STACK[0x5480]) = v284;
  v285 = STACK[0x51E0];
  v286 = STACK[0x51F8];
  v287 = LODWORD(STACK[0x5350]) - v193 + LODWORD(STACK[0x51E0]) - LODWORD(STACK[0x51F8]);
  if (v186)
  {
    v288 = STACK[0x53B0];
  }

  else
  {
    v288 = STACK[0x53B8];
  }

  if (v186)
  {
    v289 = STACK[0x53B8];
  }

  else
  {
    v289 = STACK[0x53B0];
  }

  if (v287)
  {
    v290 = STACK[0x5218];
  }

  else
  {
    v290 = STACK[0x5208];
  }

  v291 = STACK[0x5210];
  if (v287)
  {
    v292 = STACK[0x5208];
  }

  else
  {
    v292 = STACK[0x5210];
  }

  if (v287)
  {
    v293 = STACK[0x5200];
  }

  else
  {
    v291 = STACK[0x5200];
    v293 = STACK[0x5218];
  }

  if ((v287 & 2) != 0)
  {
    v294 = v290;
  }

  else
  {
    v294 = v291;
  }

  if ((v287 & 2) != 0)
  {
    v295 = v291;
  }

  else
  {
    v295 = v290;
  }

  v296 = STACK[0x5330];
  if ((v287 & 2) != 0)
  {
    v297 = v292;
  }

  else
  {
    v297 = v293;
  }

  v298 = LODWORD(STACK[0x4E80]) ^ ((v284 ^ LODWORD(STACK[0x5330]) ^ -(v284 ^ LODWORD(STACK[0x5330])) ^ (v297 - (v284 ^ LODWORD(STACK[0x5330]) ^ v297))) + v297);
  v299 = STACK[0xD7D0];
  STACK[0x5218] = STACK[0xD7C8];
  STACK[0xD7D8] = v193 + 4 * BYTE2(v298);
  v300 = *(v193 + 4 * BYTE2(v298));
  v301 = LODWORD(STACK[0x4E70]) ^ v294;
  LODWORD(STACK[0x5338]) = v289;
  v302 = v301 ^ v289;
  STACK[0xD7D8] = v193;
  v303 = *(v193 + 4 * ((v301 ^ v289) >> 16));
  v304 = LODWORD(STACK[0x4E68]) ^ v295;
  LODWORD(STACK[0x5340]) = v288;
  v305 = v304 ^ v288;
  STACK[0xD7D8] = v193 + 4 * ((v304 ^ v288) >> 24);
  v306 = *(v193 + 4 * ((v304 ^ v288) >> 24));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v298);
  v307 = *(v193 + 4 * BYTE1(v298));
  if ((v287 & 2) != 0)
  {
    v292 = v293;
  }

  STACK[0xD7D8] = v193 + 4 * HIBYTE(v298);
  v308 = *(v193 + 4 * HIBYTE(v298));
  STACK[0xD7D8] = v193 + 4 * v302;
  v309 = *(v193 + 4 * v302);
  v310 = LODWORD(STACK[0x4E78]) ^ v292 ^ v283;
  STACK[0xD7D8] = v193 + 4 * BYTE1(v310);
  v311 = *(v193 + 4 * BYTE1(v310));
  STACK[0xD7D8] = v193 + 4 * v305;
  v312 = *(v193 + 4 * v305);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v302);
  v313 = *(v193 + 4 * BYTE1(v302));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v310);
  v314 = *(v193 + 4 * BYTE2(v310));
  STACK[0xD7D8] = v193 + 4 * v298;
  v315 = *(v193 + 4 * v298);
  v316 = v303 ^ __ROR4__(v307, 8) ^ __ROR4__(v312, 16);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v305);
  v317 = *(v193 + 4 * BYTE2(v305));
  v318 = HIBYTE(v302);
  STACK[0xD7D8] = v193 + 4 * v318;
  v319 = *(v193 + 4 * v318);
  STACK[0xD7D8] = v193 + 4 * v310;
  v320 = *(v193 + 4 * v310);
  v321 = BYTE1(v305);
  STACK[0xD7D8] = v193 + 4 * v321;
  v310 >>= 24;
  v322 = *(v193 + 4 * v321);
  STACK[0xD7D8] = v193 + 4 * v310;
  v323 = v316 ^ __ROR4__(*(v193 + 4 * v310), 24);
  v324 = STACK[0x4FA0];
  v325 = v296 ^ LODWORD(STACK[0x4FA0]);
  v326 = v325 ^ LODWORD(STACK[0x4F68]) ^ v300 ^ __ROR4__(v319, 24) ^ __ROR4__(v320, 16) ^ __ROR4__(v322, 8);
  v327 = v325 ^ LODWORD(STACK[0x4F58]) ^ __ROR4__(v306, 24) ^ __ROR4__(v313, 8) ^ v314 ^ __ROR4__(v315, 16);
  v328 = LODWORD(STACK[0x5358]) - v193 + v285 - v286;
  v329 = v325 ^ LODWORD(STACK[0x4F50]) ^ __ROR4__(v308, 24) ^ __ROR4__(v309, 16) ^ __ROR4__(v311, 8) ^ v317 ^ v281;
  v330 = v327 ^ v279;
  v331 = (v327 ^ v279);
  STACK[0xD7D8] = v193 + 4 * v331;
  v332 = *(v193 + 4 * v331);
  STACK[0xD7D8] = v193 + 4 * v329;
  v333 = *(v193 + 4 * v329);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v329);
  v334 = *(v193 + 4 * BYTE2(v329));
  v335 = LODWORD(STACK[0x5550]) + LODWORD(STACK[0x5530]);
  LODWORD(STACK[0x5530]) = v335;
  v336 = v326 ^ v278;
  STACK[0xD7D8] = v193;
  v337 = *(v193 + 4 * v336);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v330);
  v338 = *(v193 + 4 * BYTE2(v330));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v330);
  v339 = *(v193 + 4 * HIBYTE(v330));
  v340 = v325 ^ LODWORD(STACK[0x4F60]) ^ v282 ^ (v328 - 2 * v287 + v335 + v323);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v340);
  v341 = *(v193 + 4 * BYTE1(v340));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v336);
  v342 = *(v193 + 4 * HIBYTE(v336));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v329);
  v343 = *(v193 + 4 * HIBYTE(v329));
  v344 = LODWORD(STACK[0x4E60]) ^ v273 ^ __ROR4__(v332, 16);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v340);
  v345 = *(v193 + 4 * BYTE2(v340));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v336);
  v346 = *(v193 + 4 * BYTE1(v336));
  v347 = BYTE1(v329);
  STACK[0xD7D8] = v193 + 4 * v347;
  v348 = v344 ^ __ROR4__(*(v193 + 4 * v347), 8);
  v349 = BYTE1(v330);
  STACK[0xD7D8] = v193 + 4 * v349;
  v350 = *(v193 + 4 * v349);
  v351 = BYTE2(v336);
  STACK[0xD7D8] = v193 + 4 * v351;
  v352 = *(v193 + 4 * v351);
  v353 = v340;
  STACK[0xD7D8] = v193 + 4 * v340;
  v340 >>= 24;
  v354 = *(v193 + 4 * v353);
  STACK[0xD7D8] = v193 + 4 * v340;
  v355 = v348 ^ v352 ^ __ROR4__(*(v193 + 4 * v340), 24);
  v356 = LODWORD(STACK[0x4E50]) ^ LODWORD(STACK[0x5630]) ^ (v337 << 16) ^ HIWORD(v337) ^ v338 ^ __ROR4__(v341, 8) ^ __ROR4__(v343, 24);
  v357 = LODWORD(STACK[0x4E44]) ^ LODWORD(STACK[0x5620]) ^ v334 ^ __ROR4__(v342, 24) ^ __ROR4__(v350, 8) ^ __ROR4__(v354, 16);
  v358 = LODWORD(STACK[0x4E38]) ^ LODWORD(STACK[0x5640]) ^ __ROR4__(v333, 16) ^ __ROR4__(v339, 24) ^ v345 ^ __ROR4__(v346, 8);
  STACK[0xD7D8] = v193 + 4 * v356;
  v359 = *(v193 + 4 * v356);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v357);
  v360 = *(v193 + 4 * BYTE2(v357));
  STACK[0xD7D8] = v193;
  v361 = *(v193 + ((v355 >> 22) & 0x3FC));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v357);
  v362 = *(v193 + 4 * HIBYTE(v357));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v358);
  v363 = *(v193 + 4 * BYTE2(v358));
  STACK[0xD7D8] = v193;
  v364 = *(v193 + 4 * BYTE1(v355));
  STACK[0xD7D8] = v193 + 4 * v355;
  v365 = *(v193 + 4 * v355);
  LODWORD(v355) = BYTE2(v355);
  STACK[0xD7D8] = v193 + 4 * v355;
  LODWORD(v355) = *(v193 + 4 * v355);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v358);
  v366 = *(v193 + 4 * BYTE1(v358));
  STACK[0xD7D8] = v193 + 4 * v357;
  v367 = *(v193 + 4 * v357);
  STACK[0xD7D8] = v193 + 4 * v358;
  v368 = *(v193 + 4 * v358);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v356);
  v369 = *(v193 + 4 * BYTE1(v356));
  LODWORD(v355) = v355 ^ __ROR4__(v359, 16);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v356);
  v370 = *(v193 + 4 * BYTE2(v356));
  v356 >>= 24;
  STACK[0xD7D8] = v193 + 4 * v356;
  v358 >>= 24;
  v371 = *(v193 + 4 * v356);
  STACK[0xD7D8] = v193 + 4 * v358;
  LODWORD(v355) = v355 ^ __ROR4__(*(v193 + 4 * v358), 24);
  v372 = BYTE1(v357);
  STACK[0xD7D8] = v193 + 4 * v372;
  v373 = v355 ^ __ROR4__(*(v193 + 4 * v372), 8);
  v374 = STACK[0x4FA8];
  v375 = STACK[0x5088];
  v376 = LODWORD(STACK[0x5088]) ^ LODWORD(STACK[0x4FA8]) ^ LODWORD(STACK[0x4E24]) ^ LODWORD(STACK[0x5580]) ^ __ROR4__(v362, 24) ^ __ROR4__(v365, 16) ^ __ROR4__(v366, 8);
  v377 = v360 ^ LODWORD(STACK[0x4E20]) ^ __ROR4__(v361, 24) ^ __ROR4__(v368, 16) ^ __ROR4__(v369, 8);
  v378 = (LODWORD(STACK[0x4E10]) ^ (LODWORD(STACK[0x4E34]) + v373) ^ 0x7A2A3E10) + 1467871253 - 2 * ((LODWORD(STACK[0x4E10]) ^ (LODWORD(STACK[0x4E34]) + v373) ^ 0x7A2A3E10) & 0x577DF01F ^ (LODWORD(STACK[0x4E10]) ^ (LODWORD(STACK[0x4E34]) + v373)) & 0xA);
  v379 = LODWORD(STACK[0x5088]) ^ LODWORD(STACK[0x4FA8]) ^ LODWORD(STACK[0x4E28]) ^ LODWORD(STACK[0x5650]) ^ v363 ^ __ROR4__(v364, 8) ^ __ROR4__(v367, 16) ^ __ROR4__(v371, 24);
  v380 = v376 ^ v370;
  v381 = LODWORD(STACK[0x4FA8]) ^ LODWORD(STACK[0x50B8]) ^ (v377 - ((2 * v377) & 0xF043F822) - 131990511);
  v382 = STACK[0x5328];
  v383 = LODWORD(STACK[0x5328]) ^ LODWORD(STACK[0x5368]);
  v384 = STACK[0x5368];
  LODWORD(STACK[0x5210]) = v383;
  v385 = STACK[0x4F90];
  v386 = v383 ^ v375 ^ LODWORD(STACK[0x4F90]) ^ LODWORD(STACK[0x5670]) ^ (v381 - 1160056759 - ((2 * v381) & 0x75B5E092));
  v387 = LODWORD(STACK[0x50C8]) ^ v374 ^ LODWORD(STACK[0x4B28]) ^ LODWORD(STACK[0x4E18]) ^ LODWORD(STACK[0x5660]) ^ 0x6805AF29 ^ ((LODWORD(STACK[0x4B30]) ^ v378) - ((2 * (LODWORD(STACK[0x4B30]) ^ v378)) & 0xBC443F60) + 1579294640);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v386);
  v388 = *(v193 + 4 * BYTE2(v386));
  STACK[0xD7D8] = v193;
  LODWORD(v355) = *(v193 + 4 * BYTE2(v379));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v380);
  v389 = *(v193 + 4 * BYTE2(v380));
  STACK[0xD7D8] = v193;
  v390 = *(v193 + 4 * v387);
  STACK[0xD7D8] = v193 + 4 * v386;
  v391 = *(v193 + 4 * v386);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v379);
  v392 = *(v193 + 4 * BYTE1(v379));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v386);
  v393 = *(v193 + 4 * BYTE1(v386));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v379);
  v394 = *(v193 + 4 * HIBYTE(v379));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v387);
  v395 = *(v193 + 4 * BYTE2(v387));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v380);
  v396 = *(v193 + 4 * HIBYTE(v380));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v380);
  v397 = *(v193 + 4 * BYTE1(v380));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v387);
  v398 = *(v193 + 4 * HIBYTE(v387));
  STACK[0xD7D8] = v193 + 4 * v380;
  v399 = *(v193 + 4 * v380);
  v400 = BYTE1(v387);
  STACK[0xD7D8] = v193 + 4 * v400;
  v386 >>= 24;
  v401 = *(v193 + 4 * v400);
  STACK[0xD7D8] = v193 + 4 * v386;
  v402 = *(v193 + 4 * v386);
  v403 = v379;
  STACK[0xD7D8] = v193 + 4 * v379;
  v404 = LODWORD(STACK[0x50A0]) ^ v324;
  v405 = v404 ^ LODWORD(STACK[0x4E08]) ^ LODWORD(STACK[0x56C0]) ^ v388;
  LODWORD(v355) = v404 ^ LODWORD(STACK[0x4E00]) ^ LODWORD(STACK[0x57C0]) ^ v355 ^ __ROR4__(v391, 16) ^ __ROR4__(v396, 24);
  v406 = v404 ^ LODWORD(STACK[0x4DF8]) ^ LODWORD(STACK[0x56D0]) ^ v389 ^ __ROR4__(v390, 16) ^ __ROR4__(v392, 8);
  v407 = *(v193 + 4 * v403);
  v408 = v404 ^ LODWORD(STACK[0x4F48]) ^ LODWORD(STACK[0x5680]) ^ __ROR4__(v393, 8) ^ __ROR4__(v394, 24) ^ v395 ^ __ROR4__(v399, 16);
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v408);
  v409 = *(v193 + 4 * HIBYTE(v408));
  v410 = v406 ^ __ROR4__(v402, 24);
  STACK[0xD7D8] = v193 + 4 * v410;
  v411 = *(v193 + 4 * v410);
  LODWORD(v355) = v355 ^ __ROR4__(v401, 8);
  STACK[0xD7D8] = v193 + 4 * v355;
  v412 = *(v193 + 4 * v355);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v408);
  v413 = *(v193 + 4 * BYTE1(v408));
  STACK[0xD7D8] = v193 + 4 * v408;
  v414 = *(v193 + 4 * v408);
  v415 = v405 ^ __ROR4__(v397, 8) ^ __ROR4__(v398, 24) ^ __ROR4__(v407, 16);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v415);
  v416 = *(v193 + 4 * BYTE2(v415));
  STACK[0xD7D8] = v193 + 4 * v415;
  v417 = *(v193 + 4 * v415);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v410);
  v418 = *(v193 + 4 * BYTE1(v410));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v355);
  HIDWORD(v419) = v417;
  LODWORD(v419) = v417;
  v420 = *(v193 + 4 * BYTE2(v355));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v415);
  v421 = *(v193 + 4 * HIBYTE(v415));
  v422 = (v419 >> 16) ^ __ROR4__(v413, 8) ^ v420;
  STACK[0xD7D8] = v193 + 4 * BYTE2(v410);
  v423 = *(v193 + 4 * BYTE2(v410));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v355);
  v424 = *(v193 + 4 * BYTE1(v355));
  v425 = BYTE1(v415);
  STACK[0xD7D8] = v193 + 4 * v425;
  HIDWORD(v419) = v421;
  LODWORD(v419) = v421;
  v426 = (v419 >> 24) ^ __ROR4__(v414, 16) ^ v423 ^ __ROR4__(v424, 8);
  v427 = *(v193 + 4 * v425);
  v428 = BYTE2(v408);
  STACK[0xD7D8] = v193 + 4 * v428;
  HIDWORD(v419) = v427;
  LODWORD(v419) = v427;
  v429 = (v419 >> 8) ^ __ROR4__(v411, 16) ^ *(v193 + 4 * v428);
  LODWORD(v355) = BYTE3(v355);
  STACK[0xD7D8] = v193 + 4 * v355;
  v430 = v429 ^ __ROR4__(*(v193 + 4 * v355), 24);
  v410 >>= 24;
  STACK[0xD7D8] = v193 + 4 * v410;
  LODWORD(v419) = __ROR4__(*(v193 + 4 * v410), 24);
  LODWORD(v355) = (v422 ^ v419) + 348159785 - ((2 * (v422 ^ v419)) & 0x2980FE52);
  v431 = LODWORD(STACK[0x5330]) ^ LODWORD(STACK[0x5090]);
  v432 = v431 ^ LODWORD(STACK[0x4DE8]) ^ LODWORD(STACK[0x56E0]) ^ (LODWORD(STACK[0x4DF0]) + v430);
  v433 = v382 ^ LODWORD(STACK[0x5080]) ^ LODWORD(STACK[0x4F10]) ^ __ROR4__(v409, 24) ^ __ROR4__(v412, 16) ^ v416;
  LODWORD(v419) = __ROR4__(v418, 8);
  v434 = (v433 ^ v419) - 1160056759 - ((2 * (v433 ^ v419)) & 0x75B5E092);
  v435 = LODWORD(STACK[0x4DE0]) ^ LODWORD(STACK[0x5700]) ^ 0xAC974653 ^ v355;
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v435);
  v436 = LODWORD(STACK[0x4BA0]) + v426;
  LODWORD(v355) = v431 ^ v384 ^ v385;
  v437 = v431 ^ LODWORD(STACK[0x4B20]);
  v438 = *(v193 + 4 * HIBYTE(v435));
  v439 = v437 ^ LODWORD(STACK[0x5590]) ^ v436;
  v440 = (v437 ^ LOBYTE(STACK[0x5590]) ^ v436);
  STACK[0xD7D8] = v193 + 4 * v440;
  v441 = *(v193 + 4 * v440);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v432);
  v442 = *(v193 + 4 * BYTE1(v432));
  v443 = v355 ^ LODWORD(STACK[0x56F0]) ^ v434;
  STACK[0xD7D8] = v193 + 4 * BYTE2(v439);
  HIDWORD(v419) = v441;
  LODWORD(v419) = v441;
  LODWORD(v355) = *(v193 + 4 * BYTE2(v439));
  STACK[0xD7D8] = v193;
  v444 = *(v193 + 4 * BYTE1(v439));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v432);
  v445 = (v419 >> 16) ^ __ROR4__(v438, 24) ^ *(v193 + 4 * BYTE2(v432));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v432);
  HIDWORD(v419) = *(v193 + 4 * HIBYTE(v432));
  LODWORD(v419) = HIDWORD(v419);
  v446 = (v419 >> 24) ^ __ROR4__(v444, 8);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v443);
  v447 = *(v193 + 4 * BYTE1(v443));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v435);
  v448 = v445 ^ __ROR4__(v447, 8);
  v449 = *(v193 + 4 * BYTE1(v435));
  STACK[0xD7D8] = v193 + 4 * v443;
  LODWORD(v355) = v355 ^ __ROR4__(v449, 8);
  HIDWORD(v419) = *(v193 + 4 * v443);
  LODWORD(v419) = HIDWORD(v419);
  STACK[0xD7D8] = v193 + 4 * v435;
  v450 = *(v193 + 4 * v435);
  v451 = BYTE2(v435);
  STACK[0xD7D8] = v193 + 4 * v451;
  v452 = v446 ^ __ROR4__(v450, 16);
  v453 = *(v193 + 4 * v451);
  STACK[0xD7D8] = v193 + 4 * v432;
  v454 = *(v193 + 4 * v432);
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v443);
  v455 = v355 ^ __ROR4__(v454, 16) ^ __ROR4__(*(v193 + 4 * HIBYTE(v443)), 24);
  v439 >>= 24;
  STACK[0xD7D8] = v193 + 4 * v439;
  v456 = (v419 >> 16) ^ __ROR4__(v442, 8) ^ v453 ^ __ROR4__(*(v193 + 4 * v439), 24);
  v457 = BYTE2(v443);
  STACK[0xD7D8] = v193 + 4 * v457;
  v458 = v452 ^ *(v193 + 4 * v457);
  v459 = v448 + v287 - v335;
  v460 = LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x52F8]) ^ v458;
  LODWORD(STACK[0x51D8]) = v458;
  STACK[0xD7D8] = v193 + 4 * BYTE1(v460);
  v461 = LODWORD(STACK[0x4B98]) ^ LODWORD(STACK[0x5710]) ^ v455;
  LODWORD(STACK[0x51D0]) = v455;
  v462 = *(v193 + 4 * BYTE1(v460));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v461);
  LODWORD(STACK[0x5350]) = v287;
  LODWORD(STACK[0x5358]) = v328;
  v463 = v456 - v287 + v328;
  LODWORD(STACK[0x51E0]) = v463;
  v464 = *(v193 + 4 * BYTE2(v461));
  v465 = LODWORD(STACK[0x4B90]) ^ LODWORD(STACK[0x5720]) ^ v463;
  STACK[0xD7D8] = v193;
  v466 = *(v193 + 4 * v465);
  v467 = LODWORD(STACK[0x4B70]) ^ LODWORD(STACK[0x55F0]) ^ v459;
  v468 = (LOBYTE(STACK[0x4B70]) ^ LOBYTE(STACK[0x55F0]) ^ v459);
  STACK[0xD7D8] = v193 + 4 * (LOBYTE(STACK[0x4B70]) ^ LOBYTE(STACK[0x55F0]) ^ v459);
  v469 = *(v193 + 4 * v468);
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v465);
  v470 = *(v193 + 4 * HIBYTE(v465));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v460);
  v471 = *(v193 + 4 * HIBYTE(v460));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v467);
  v472 = *(v193 + 4 * BYTE2(v467));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v460);
  v473 = *(v193 + 4 * BYTE2(v460));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v465);
  v474 = *(v193 + 4 * BYTE2(v465));
  STACK[0xD7D8] = v193;
  v475 = *(v193 + 4 * v460);
  v476 = BYTE1(v465);
  STACK[0xD7D8] = v193 + 4 * v476;
  v477 = *(v193 + 4 * v476);
  STACK[0xD7D8] = v193 + 4 * v461;
  v478 = *(v193 + 4 * v461);
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v461);
  v479 = *(v193 + 4 * HIBYTE(v461));
  v480 = (v467 >> LODWORD(STACK[0x4B68]) >> LODWORD(STACK[0x4B00]));
  STACK[0xD7D8] = v193 + 4 * (v467 >> LODWORD(STACK[0x4B68]) >> LODWORD(STACK[0x4B00]));
  v481 = *(v193 + 4 * v480);
  v482 = BYTE1(v467);
  STACK[0xD7D8] = v193 + 4 * v482;
  v483 = *(v193 + 4 * v482);
  v484 = BYTE1(v461);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v461);
  v485 = STACK[0x4F98];
  v486 = LODWORD(STACK[0x5098]) ^ LODWORD(STACK[0x4F98]);
  v487 = v486 ^ LODWORD(STACK[0x4DA0]) ^ LODWORD(STACK[0x5740]) ^ v474 ^ __ROR4__(v475, 16) ^ __ROR4__(v479, 24) ^ __ROR4__(v483, 8);
  v488 = v486 ^ LODWORD(STACK[0x4DD8]) ^ LODWORD(STACK[0x5750]) ^ __ROR4__(v462, 8) ^ __ROR4__(v470, 24);
  v489 = v486 ^ LODWORD(STACK[0x4DA8]) ^ LODWORD(STACK[0x5760]) ^ __ROR4__(v466, 16);
  v490 = v486 ^ LODWORD(STACK[0x4DC0]) ^ LODWORD(STACK[0x5730]) ^ v464 ^ __ROR4__(v469, 16) ^ __ROR4__(v471, 24);
  v491 = *(v193 + 4 * v484);
  v492 = v490 ^ __ROR4__(v477, 8);
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v492);
  v493 = *(v193 + 4 * HIBYTE(v492));
  v494 = v489 ^ v473;
  STACK[0xD7D8] = v193 + 4 * v492;
  v495 = *(v193 + 4 * v492);
  v496 = v494 ^ __ROR4__(v481, 24);
  STACK[0xD7D8] = v193 + 4 * BYTE1(v487);
  v497 = *(v193 + 4 * BYTE1(v487));
  v498 = v496 ^ __ROR4__(v491, 8);
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v498);
  v499 = *(v193 + 4 * HIBYTE(v498));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v492);
  v500 = *(v193 + 4 * BYTE1(v492));
  v501 = v488 ^ v472 ^ __ROR4__(v478, 16);
  STACK[0xD7D8] = v193 + 4 * v501;
  v502 = *(v193 + 4 * v501);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v498);
  v503 = *(v193 + 4 * BYTE2(v498));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v498);
  v504 = *(v193 + 4 * BYTE1(v498));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v501);
  v505 = *(v193 + 4 * HIBYTE(v501));
  STACK[0xD7D8] = v193 + 4 * v498;
  v506 = *(v193 + 4 * v498);
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v487);
  v507 = *(v193 + 4 * HIBYTE(v487));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v487);
  v508 = *(v193 + 4 * BYTE2(v487));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v501);
  v509 = *(v193 + 4 * BYTE1(v501));
  v510 = BYTE2(v501);
  STACK[0xD7D8] = v193 + 4 * v510;
  v511 = *(v193 + 4 * v510);
  STACK[0xD7D8] = v193 + 4 * v487;
  v512 = *(v193 + 4 * v487);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v492);
  v513 = v375 ^ v485;
  v514 = v375 ^ v485 ^ LODWORD(STACK[0x4DB8]) ^ LODWORD(STACK[0x5610]) ^ __ROR4__(v500, 8) ^ v503 ^ __ROR4__(v505, 24) ^ __ROR4__(v512, 16);
  v515 = STACK[0x5600];
  v516 = v513 ^ LODWORD(STACK[0x4F40]) ^ STACK[0x5600] ^ __ROR4__(v495, 16) ^ __ROR4__(v504, 8) ^ __ROR4__(v507, 24) ^ v511;
  v517 = v513 ^ LODWORD(STACK[0x4F30]) ^ LODWORD(STACK[0x5770]) ^ __ROR4__(v493, 24) ^ __ROR4__(v506, 16);
  v518 = v513 ^ LODWORD(STACK[0x4D58]) ^ LODWORD(STACK[0x5780]) ^ __ROR4__(v497, 8) ^ __ROR4__(v499, 24) ^ __ROR4__(v502, 16) ^ *(v193 + 4 * BYTE2(v492));
  STACK[0xD7D8] = v193 + 4 * BYTE1(v514);
  v519 = *(v193 + 4 * BYTE1(v514));
  STACK[0xD7D8] = v193 + 4 * v518;
  v520 = *(v193 + 4 * v518);
  STACK[0xD7D8] = v193 + 4 * v516;
  v521 = *(v193 + 4 * v516);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v514);
  v522 = *(v193 + 4 * BYTE2(v514));
  STACK[0xD7D8] = v193;
  v523 = *(v193 + 4 * BYTE1(v516));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v518);
  v524 = *(v193 + 4 * HIBYTE(v518));
  v525 = v517 ^ v508 ^ __ROR4__(v509, 8);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v525);
  v526 = *(v193 + 4 * BYTE2(v525));
  STACK[0xD7D8] = v193 + 4 * v525;
  v527 = *(v193 + 4 * v525);
  STACK[0xD7D8] = v193 + 4 * BYTE2(v516);
  v528 = *(v193 + 4 * BYTE2(v516));
  STACK[0xD7D8] = v193 + 4 * BYTE2(v518);
  v529 = *(v193 + 4 * BYTE2(v518));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v525);
  v530 = *(v193 + 4 * HIBYTE(v525));
  STACK[0xD7D8] = v193 + 4 * HIBYTE(v514);
  v531 = *(v193 + 4 * HIBYTE(v514));
  STACK[0xD7D8] = v193 + 4 * v514;
  v532 = *(v193 + 4 * v514);
  v533 = BYTE1(v525);
  STACK[0xD7D8] = v193 + 4 * v533;
  v534 = *(v193 + 4 * v533);
  v516 >>= 24;
  STACK[0xD7D8] = v193 + 4 * v516;
  v535 = *(v193 + 4 * v516);
  v536 = BYTE1(v518);
  STACK[0xD7D8] = v193 + 4 * v536;
  v537 = *(v193 + 4 * v536);
  STACK[0xD7D8] = v193;
  v538 = LODWORD(STACK[0x4DB0]) ^ LODWORD(STACK[0x57A0]) ^ v522 ^ __ROR4__(v527, 16) ^ __ROR4__(v535, 24) ^ __ROR4__(v537, 8);
  v539 = LODWORD(STACK[0x5310]) ^ LODWORD(STACK[0x5790]) ^ __ROR4__(v519, 8) ^ __ROR4__(v520, 16) ^ v528 ^ __ROR4__(v530, 24);
  v540 = LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x57B0]) ^ __ROR4__(v521, 16) ^ v529 ^ __ROR4__(v531, 24) ^ __ROR4__(v534, 8);
  v541 = LODWORD(STACK[0x5300]) ^ LODWORD(STACK[0x5560]) ^ __ROR4__(v523, 8) ^ __ROR4__(v524, 24) ^ v526 ^ __ROR4__(v532, 16);
  v542 = v538 >> (v515 & 8) >> (v515 & 8 ^ 8);
  v543 = *(STACK[0xD7F0] + 4 * BYTE1(v539)) ^ __ROR4__(*(STACK[0xD7F0] + 4 * v538), 8) ^ __ROR4__(*(STACK[0xD7F0] + 4 * HIBYTE(v540)), 16) ^ __ROR4__(*(STACK[0xD7F0] + 4 * BYTE2(v541)), 24);
  v544 = *(STACK[0xD7F0] + 4 * BYTE1(v540)) ^ __ROR4__(*(STACK[0xD7F0] + 4 * HIBYTE(v539)), 16) ^ __ROR4__(*(STACK[0xD7F0] + 4 * BYTE2(v538)), 24);
  v545 = *(STACK[0xD7F0] + 4 * BYTE1(v541)) ^ __ROR4__(*(STACK[0xD7F0] + 4 * BYTE2(v540)), 24) ^ __ROR4__(*(STACK[0xD7F0] + 4 * v539), 8) ^ __ROR4__(*(STACK[0xD7F0] + 4 * HIBYTE(v538)), 16);
  v546 = v544 ^ __ROR4__(*(STACK[0xD7F0] + 4 * v541), 8);
  v547 = *(STACK[0xD7F0] + 4 * v542) ^ LODWORD(STACK[0x5570]) ^ __ROR4__(*(STACK[0xD7F0] + 4 * HIBYTE(v541)), 16) ^ __ROR4__(*(STACK[0xD7F0] + 4 * v540), 8);
  LODWORD(v419) = __ROR4__(*(STACK[0xD7F0] + 4 * BYTE2(v539)), 24);
  v548 = (v547 ^ v419) + 997525402 - ((2 * (v547 ^ v419)) & 0x76EA0F34);
  v549 = STACK[0x50C0];
  v550 = STACK[0x50D0];
  v551 = ((v548 ^ v549) - 943004683 - ((2 * (v548 ^ v549)) & 0x8F95C7EA)) ^ LODWORD(STACK[0x50D0]);
  LODWORD(STACK[0x5208]) = v551 - 1157128756 - ((2 * v551) & 0x760F3B98);
  v552 = LODWORD(STACK[0x55D0]) ^ v549 ^ (v543 + 997525402 - ((2 * v543) & 0x76EA0F34));
  v553 = v546 - 943004683 - ((2 * v546) & 0x8F95C7EA);
  v554 = (v552 - 943004683 - ((2 * v552) & 0x8F95C7EA)) ^ v550;
  LODWORD(STACK[0x5200]) = v554 - 1157128756 - ((2 * v554) & 0x760F3B98);
  v555 = LODWORD(STACK[0x55E0]) ^ v550 ^ (v545 - 943004683 - ((2 * v545) & 0x8F95C7EA));
  v556 = (v555 + 997525402 - ((2 * v555) & 0x76EA0F34)) ^ v549;
  LODWORD(STACK[0x51F8]) = v556 - 1157128756 - ((2 * v556) & 0x760F3B98);
  v557 = LODWORD(STACK[0x4B88]) ^ LODWORD(STACK[0x53C0]) ^ v458;
  v558 = STACK[0xD7D8];
  STACK[0xD7D8] += 4 * HIBYTE(v557);
  v559 = *(v558 + 4 * HIBYTE(v557));
  v560 = LODWORD(STACK[0x53D8]) ^ LODWORD(STACK[0x52F8]) ^ v459;
  v561 = v459;
  STACK[0xD7D8] = v558 + 4 * BYTE2(v560);
  v562 = LODWORD(STACK[0x4B80]) ^ LODWORD(STACK[0x53C8]) ^ v455;
  v563 = *(v558 + 4 * BYTE2(v560));
  STACK[0xD7D8] = v558;
  v564 = *(v558 + 4 * v560);
  STACK[0xD7D8] = v558 + 4 * v562;
  v565 = *(v558 + 4 * v562);
  STACK[0xD7D8] = v558 + 4 * v557;
  v566 = STACK[0x51E0];
  v567 = LODWORD(STACK[0x4B78]) ^ LODWORD(STACK[0x53D0]) ^ LODWORD(STACK[0x51E0]);
  v568 = *(v558 + 4 * v557);
  STACK[0xD7D8] = v558 + 4 * HIBYTE(v567);
  v569 = *(v558 + 4 * HIBYTE(v567));
  STACK[0xD7D8] = v558 + 4 * BYTE1(v560);
  v570 = *(v558 + 4 * BYTE1(v560));
  STACK[0xD7D8] = v558 + 4 * HIBYTE(v562);
  v571 = *(v558 + 4 * HIBYTE(v562));
  STACK[0xD7D8] = v558 + 4 * BYTE2(v557);
  v572 = *(v558 + 4 * BYTE2(v557));
  STACK[0xD7D8] = v558;
  v573 = *(v558 + 4 * v567);
  STACK[0xD7D8] = v558 + 4 * BYTE1(v567);
  v574 = *(v558 + 4 * BYTE1(v567));
  STACK[0xD7D8] = v558 + 4 * BYTE1(v562);
  v575 = *(v558 + 4 * BYTE1(v562));
  v576 = (v558 + 4 * BYTE2(v562));
  STACK[0xD7D8] = v576;
  v577 = *v576;
  v578 = BYTE2(v567);
  STACK[0xD7D8] = v558 + 4 * BYTE2(v567);
  v579 = HIBYTE(v560);
  HIDWORD(v419) = v573;
  LODWORD(v419) = v573;
  v580 = v419 >> 16;
  v581 = *(v558 + 4 * v578);
  STACK[0xD7D8] = v558 + 4 * v579;
  v582 = v572 & 0x800;
  if ((WORD1(v419) & v572 & 0x800) != 0)
  {
    v582 = -v582;
  }

  v583 = *(v558 + 4 * v579);
  v584 = BYTE1(v557);
  STACK[0xD7D8] = v558 + 4 * v584;
  v585 = v486 ^ LODWORD(STACK[0x4D98]) ^ LODWORD(STACK[0x53F8]) ^ v572 & 0xFFFFF7FF ^ (v582 + v580) ^ __ROR4__(v575, 8) ^ __ROR4__(v583, 24);
  v586 = v486 ^ LODWORD(STACK[0x4DC8]) ^ LODWORD(STACK[0x53F0]) ^ v563;
  v587 = v486 ^ LODWORD(STACK[0x4F38]) ^ LODWORD(STACK[0x53E8]) ^ __ROR4__(v568, 16) ^ __ROR4__(v570, 8) ^ __ROR4__(v571, 24) ^ v581;
  v588 = *(v558 + 4 * v584);
  v589 = v486 ^ LODWORD(STACK[0x4DD0]) ^ LODWORD(STACK[0x53E0]) ^ __ROR4__(v559, 24);
  STACK[0xD7D8] = v558 + 4 * v587;
  v590 = *(v558 + 4 * v587);
  STACK[0xD7D8] = v558 + 4 * BYTE1(v587);
  v591 = *(v558 + 4 * BYTE1(v587));
  STACK[0xD7D8] = v558 + 4 * HIBYTE(v587);
  v592 = *(v558 + 4 * HIBYTE(v587));
  v593 = v589 ^ __ROR4__(v564, 16) ^ __ROR4__(v574, 8) ^ v577;
  STACK[0xD7D8] = v558 + 4 * HIBYTE(v593);
  v594 = *(v558 + 4 * HIBYTE(v593));
  STACK[0xD7D8] = v558 + 4 * BYTE2(v593);
  v595 = *(v558 + 4 * BYTE2(v593));
  STACK[0xD7D8] = v558 + 4 * HIBYTE(v585);
  v596 = *(v558 + 4 * HIBYTE(v585));
  v597 = v586 ^ __ROR4__(v565, 16) ^ __ROR4__(v569, 24) ^ __ROR4__(v588, 8);
  STACK[0xD7D8] = v558 + 4 * BYTE2(v587);
  v598 = *(v558 + 4 * BYTE2(v587));
  STACK[0xD7D8] = v558 + 4 * BYTE2(v585);
  v599 = *(v558 + 4 * BYTE2(v585));
  STACK[0xD7D8] = v558 + 4 * BYTE1(v597);
  v600 = *(v558 + 4 * BYTE1(v597));
  STACK[0xD7D8] = v558 + 4 * BYTE1(v585);
  v601 = (2 * (v553 ^ v550)) & 0x76EA0F34;
  v602 = (v553 ^ v550) + 997525402;
  v603 = *(v558 + 4 * BYTE1(v585));
  v604 = v602 - v601;
  STACK[0xD7D8] = v558 + 4 * v593;
  v605 = *(v558 + 4 * v593);
  STACK[0xD7D8] = v558 + 4 * v585;
  v606 = *(v558 + 4 * v585);
  v607 = LODWORD(STACK[0x55B0]) ^ v549 ^ v604;
  STACK[0xD7D8] = v558 + 4 * BYTE2(v597);
  v608 = *(v558 + 4 * BYTE2(v597));
  v609 = BYTE1(v593);
  STACK[0xD7D8] = v558 + 4 * v609;
  v610 = *(v558 + 4 * v609);
  STACK[0xD7D8] = v558 + 4 * HIBYTE(v597);
  v611 = *(v558 + 4 * HIBYTE(v597));
  STACK[0xD7D8] = v558 + 4 * v597;
  v612 = v513 ^ LODWORD(STACK[0x4F28]) ^ LODWORD(STACK[0x5408]) ^ __ROR4__(v592, 24) ^ __ROR4__(v603, 8) ^ __ROR4__(v605, 16) ^ v608;
  v613 = v513 ^ LODWORD(STACK[0x4C68]) ^ LODWORD(STACK[0x5410]) ^ __ROR4__(v590, 16) ^ v599 ^ __ROR4__(v610, 8) ^ __ROR4__(v611, 24);
  v614 = v513 ^ LODWORD(STACK[0x4F18]) ^ LODWORD(STACK[0x5420]) ^ __ROR4__(v591, 8) ^ v595 ^ __ROR4__(v596, 24);
  v615 = __ROR4__(*(v558 + 4 * v597), 16);
  LOBYTE(v595) = v614 ^ v615;
  STACK[0xD7D8] = v558 + 4 * ((v614 ^ v615) >> 16);
  v616 = *(v558 + 4 * ((v614 ^ v615) >> 16));
  STACK[0xD7D8] = v558;
  v617 = *(v558 + 4 * v613);
  STACK[0xD7D8] = v558 + 4 * v612;
  v618 = *(v558 + 4 * v612);
  v619 = (v614 ^ v615) >> 24;
  STACK[0xD7D8] = v558 + 4 * v619;
  v620 = *(v558 + 4 * v619);
  v621 = v513 ^ LODWORD(STACK[0x4F20]) ^ LODWORD(STACK[0x5400]) ^ __ROR4__(v594, 24);
  STACK[0xD7D8] = v558 + 4 * ((v614 ^ v615) >> 8);
  v622 = *(v558 + 4 * ((v614 ^ v615) >> 8));
  v623 = STACK[0x5348];
  STACK[0xD7D8] = v558 + 4 * HIBYTE(v613);
  v624 = *(v558 + 4 * HIBYTE(v613));
  v625 = v621 ^ v598 ^ __ROR4__(v600, 8);
  STACK[0xD7D8] = v558 + 4 * BYTE2(v613);
  v626 = *(v558 + 4 * BYTE2(v613));
  v628 = __ROR4__(v606, 16);
  v627 = v625 ^ v628;
  v629 = (v625 ^ v628);
  STACK[0xD7D8] = v558 + 4 * v629;
  v630 = *(v558 + 4 * v629);
  STACK[0xD7D8] = v558 + 4 * BYTE2(v627);
  v631 = *(v558 + 4 * BYTE2(v627));
  STACK[0xD7D8] = v558 + 4 * HIBYTE(v612);
  v632 = *(v558 + 4 * HIBYTE(v612));
  v633 = v607 - 1157128756 - ((2 * v607) & 0x760F3B98);
  v634 = BYTE1(v613);
  STACK[0xD7D8] = v558 + 4 * v634;
  v635 = *(v558 + 4 * v634);
  STACK[0xD7D8] = v558 + 4 * BYTE1(v612);
  v636 = *(v558 + 4 * BYTE1(v612));
  v637 = v566 ^ (-1025720473 - v561);
  STACK[0xD7D8] = v558 + 4 * BYTE2(v612);
  v638 = *(v558 + 4 * BYTE2(v612));
  v639 = LODWORD(STACK[0x51D8]) + LODWORD(STACK[0x51D0]);
  STACK[0xD7D8] = v558 + 4 * BYTE1(v627);
  v640 = *(v558 + 4 * BYTE1(v627));
  v641 = v637 - v639;
  STACK[0xD7D8] = v558 + 4 * v595;
  v642 = *(v558 + 4 * v595);
  v627 >>= 24;
  STACK[0xD7D8] = v558 + 4 * v627;
  v643 = *(v558 + 4 * v627);
  STACK[0xD7D8] = v558;
  v644 = LODWORD(STACK[0x5300]) ^ LODWORD(STACK[0x5430]) ^ __ROR4__(v635, 8) ^ v638 ^ __ROR4__(v642, 16) ^ __ROR4__(v643, 24);
  v645 = LODWORD(STACK[0x5308]) ^ LODWORD(STACK[0x5460]) ^ __ROR4__(v617, 16);
  v646 = STACK[0x5388];
  v647 = STACK[0x5360];
  v648 = v645 ^ __ROR4__(v620, 24) ^ v631 ^ __ROR4__(v636, 8);
  v649 = LODWORD(STACK[0x5310]) ^ LODWORD(STACK[0x5440]) ^ __ROR4__(v622, 8) ^ v626 ^ __ROR4__(v630, 16) ^ __ROR4__(v632, 24);
  v650 = LODWORD(STACK[0x4BA8]) ^ LODWORD(STACK[0x5450]) ^ v616 ^ __ROR4__(v618, 16);
  v651 = STACK[0x50A8];
  v652 = v650 ^ __ROR4__(v624, 24);
  v654 = __ROR4__(v640, 8);
  v653 = v652 ^ v654;
  v655 = STACK[0xD7F0];
  STACK[0xD7F0] += 4 * v644;
  v656 = v641 + 1603031199;
  v657 = ((v656 ^ LODWORD(STACK[0x5510])) - 943004683 - ((2 * (v656 ^ LODWORD(STACK[0x5510]))) & 0x8F95C7EA)) ^ v550;
  v658 = (v657 + 997525402 - ((2 * v657) & 0x76EA0F34)) ^ v549 ^ __ROR4__(*(v655 + 4 * (v652 ^ v654)), 8) ^ __ROR4__(*(v655 + 4 * HIBYTE(v648)), 16) ^ __ROR4__(*(v655 + 4 * BYTE2(v644)), 24) ^ *(v655 + 4 * BYTE1(v649));
  v659 = v658 - 1157128756 - ((2 * v658) & 0x760F3B98);
  v660 = (v641 + 1603031199) ^ LODWORD(STACK[0x5470]) ^ __ROR4__(*(v655 + 4 * ((v652 ^ v654) >> 16)), 24) ^ __ROR4__(*(v655 + 4 * HIBYTE(v649)), 16) ^ *(v655 + 4 * BYTE1(v648));
  v661 = __ROR4__(*(v655 + 4 * v644), 8);
  v662 = ((v660 ^ v661) - 943004683 - ((2 * (v660 ^ v661)) & 0x8F95C7EA)) ^ v550;
  v663 = (v662 + 997525402 - ((2 * v662) & 0x76EA0F34)) ^ v549;
  v664 = v663 - 1157128756 - ((2 * v663) & 0x760F3B98);
  v665 = (v641 + 1603031199) ^ LODWORD(STACK[0x54F0]) ^ __ROR4__(*(v655 + 4 * v648), 8) ^ __ROR4__(*(v655 + 4 * BYTE2(v649)), 24) ^ __ROR4__(*(v655 + 4 * HIBYTE(v644)), 16) ^ *(v655 + 4 * BYTE1(v653));
  v666 = (v665 - 943004683 - ((2 * v665) & 0x8F95C7EA)) ^ v550;
  v667 = (v641 + 1603031199) ^ LODWORD(STACK[0x5500]) ^ __ROR4__(*(v655 + 4 * v649), 8) ^ *(v655 + 4 * BYTE1(v644)) ^ __ROR4__(*(v655 + 4 * BYTE2(v648)), 24);
  v668 = __ROR4__(*(v655 + 4 * HIBYTE(v653)), 16);
  v669 = STACK[0x55D0];
  v670 = ((v667 ^ v668) - 943004683 - ((2 * (v667 ^ v668)) & 0x8F95C7EA)) ^ v550;
  v671 = (v670 - 1157128756 - ((2 * v670) & 0x760F3B98)) ^ LODWORD(STACK[0x50B0]);
  v672 = v671 + 997525402 - ((2 * v671) & 0x76EA0F34);
  v673 = (v666 + 997525402 - ((2 * v666) & 0x76EA0F34)) ^ v549;
  v674 = v673 - 1157128756 - ((2 * v673) & 0x760F3B98);
  v675 = LODWORD(STACK[0x4B18]) ^ LODWORD(STACK[0x51F8]);
  v676 = LODWORD(STACK[0x4B18]) ^ LODWORD(STACK[0x5200]);
  v677 = LODWORD(STACK[0x4B18]) ^ LODWORD(STACK[0x5208]);
  v678 = STACK[0x5530];
  if (STACK[0x5530])
  {
    v679 = LODWORD(STACK[0x4B18]) ^ LODWORD(STACK[0x5208]);
  }

  else
  {
    v679 = LODWORD(STACK[0x4B18]) ^ LODWORD(STACK[0x5200]);
  }

  if (v678)
  {
    v677 = LODWORD(STACK[0x4B18]) ^ v633;
  }

  else
  {
    v676 = LODWORD(STACK[0x4B18]) ^ LODWORD(STACK[0x51F8]);
  }

  if ((v678 & 1) == 0)
  {
    v675 = LODWORD(STACK[0x4B18]) ^ v633;
  }

  v680 = LODWORD(STACK[0x4B10]) ^ v659;
  v681 = LODWORD(STACK[0x4B10]) ^ v674;
  v682 = LODWORD(STACK[0x4B08]) ^ v672;
  v683 = LODWORD(STACK[0x4B10]) ^ v664;
  if (v678)
  {
    v684 = v681;
  }

  else
  {
    v684 = LODWORD(STACK[0x4B10]) ^ v659;
  }

  if ((v678 & 1) == 0)
  {
    v680 = v682;
    v682 = v683;
    v683 = v681;
  }

  if ((v678 & 2) != 0)
  {
    v685 = v679;
  }

  else
  {
    v685 = v675;
  }

  if ((v678 & 2) != 0)
  {
    v686 = v676;
  }

  else
  {
    v675 = v679;
    v686 = v677;
  }

  if ((v678 & 2) != 0)
  {
    v687 = v684;
  }

  else
  {
    v677 = v676;
    v687 = v682;
  }

  if ((STACK[0x5530] & 2) != 0)
  {
    v688 = v683;
  }

  else
  {
    v682 = v684;
    v688 = v680;
  }

  if ((STACK[0x5530] & 2) != 0)
  {
    v689 = v680;
  }

  else
  {
    v689 = v683;
  }

  v690 = v687 ^ v656 ^ v686 ^ v677;
  v691 = LODWORD(STACK[0xD84]) + LODWORD(STACK[0xD84]) * ((v656 ^ 0x74DF9A25) + (v682 ^ 0x8B2065DA ^ v690)) + v675;
  v692 = v691 ^ v688;
  v693 = v691 ^ v688 ^ v685;
  v694 = v689 ^ v677 ^ v693;
  v695 = v692 ^ v687 ^ v694 ^ ((v690 ^ 0x74DF9A25) + 1106583191 * ((v689 ^ 0x8B2065DA) + (v693 ^ 0x74DF9A25)) + 1106583191);
  v696 = v692 ^ v656 ^ 0x74DF9A25 ^ v682 ^ v693;
  v697 = v694 + 1401346573 * ((v695 ^ v682) - (v656 ^ 0x74DF9A25));
  v698 = LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x4F08]) ^ LODWORD(STACK[0x55A0]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5720]) ^ LODWORD(STACK[0x56E0]) ^ STACK[0x5600] ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x57A0]) ^ LODWORD(STACK[0x5780]);
  v699 = LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x57B0]) ^ LODWORD(STACK[0x5590]);
  v700 = (v698 ^ v699 ^ LODWORD(STACK[0x5730])) - 1160056759 - ((2 * (v698 ^ v699 ^ LODWORD(STACK[0x5730]))) & 0x75B5E092);
  v701 = STACK[0x5318];
  v702 = (v669 & STACK[0x5318]) >> 1;
  v703 = v702 & 0x10000000;
  if ((v702 & 0x10000000 & v669) != 0)
  {
    v703 = -v703;
  }

  v704 = (v703 + v669) ^ v702 & 0x6FFFFFFF;
  v705 = LODWORD(STACK[0x55B0]) ^ ((STACK[0x55B0] & v701) >> 1);
  v706 = STACK[0x5390];
  v707 = STACK[0x5398];
  v708 = LODWORD(STACK[0x5570]) ^ ((STACK[0x5570] & v701) >> 1);
  v709 = STACK[0x5320];
  v710 = LODWORD(STACK[0x55E0]) ^ ((STACK[0x55E0] & v646) >> 1);
  v711 = STACK[0x5218];
  v712 = LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x5368]) ^ LODWORD(STACK[0x53B8]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x5790]) ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x57C0]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5520]) ^ LODWORD(STACK[0x54C0]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x54D0]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x5490]) ^ LODWORD(STACK[0x5480]) ^ LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x54B0]) ^ ((v708 & v709) << v651) ^ (((v710 ^ v708) & STACK[0x55C0]) >> v647) ^ ((v710 & v709) << LODWORD(STACK[0x5540]) << LODWORD(STACK[0x5370])) ^ (((v705 & STACK[0x54E0]) >> v706 >> v707) + ((v705 & v623) << v651)) ^ ((v704 & v623) << v651) ^ ((v704 & STACK[0x54E0]) >> v706 >> v707) ^ v700;
  v713 = v712 ^ LODWORD(STACK[0x5368]) ^ ((LODWORD(STACK[0x52C0]) ^ LODWORD(STACK[0x5328]) ^ v695) - 1160056759 - ((2 * (LODWORD(STACK[0x52C0]) ^ LODWORD(STACK[0x5328]) ^ v695)) & 0x75B5E092));
  v714 = (v696 ^ v695) + 1428538057 * (v712 - LODWORD(STACK[0x4B60])) + 779864023 * ((v687 ^ v656) + (v697 ^ 0x8B2065DA)) + 779864023;
  v715 = LODWORD(STACK[0x5210]) ^ (LODWORD(STACK[0x52C8]) - 1160056759 - ((2 * LODWORD(STACK[0x52C8])) & 0x75B5E092)) ^ v712 ^ v697;
  v716 = v713 ^ (((v713 ^ 0xF23D053A) & STACK[0x4B50] ^ v713 & 0x1B468780) >> 1);
  v717 = LODWORD(STACK[0x4B58]) ^ LODWORD(STACK[0x52D0]) ^ (-485388207 * (v712 ^ LODWORD(STACK[0x5328]))) ^ v656 ^ v689 ^ v691 ^ 0x592CE4DE ^ v696 ^ v695;
  v718 = (((v717 ^ ((v717 & v646) >> 1)) & STACK[0x55C0]) >> LODWORD(STACK[0x5378]) >> LODWORD(STACK[0x5380])) ^ (((v717 ^ ((v717 & v646) >> 1)) & v623) << LODWORD(STACK[0x5370]) << LODWORD(STACK[0x5540]));
  v719 = v715 ^ (((v715 ^ 0x21CEE37A) & STACK[0x4B48] ^ v715 & STACK[0x4AE8]) >> 1);
  v720 = ((v719 & 0xFA770D7B ^ 0x3042005A ^ (v719 ^ 0x314A825E) & STACK[0x4B38]) >> v647) | (((v719 ^ 0x314A825E) & v623) << v651);
  v721 = LODWORD(STACK[0x52E0]) ^ 0xD05F0130 ^ v714 ^ (((LODWORD(STACK[0x52E0]) ^ 0xD05F0130 ^ v714) & v646) >> 1);
  v722 = ((v721 & STACK[0x5320]) << LODWORD(STACK[0x5540]) << LODWORD(STACK[0x5370])) + ((v721 & STACK[0x55C0]) >> v707 >> v706);
  v723 = v718 ^ LODWORD(STACK[0x4FB8]) ^ (((v716 ^ LODWORD(STACK[0x4AF0])) & STACK[0x5320]) << v651) ^ ((v716 & 0xD61BB93 ^ 0x9210392 ^ (v716 ^ LODWORD(STACK[0x4AF0])) & STACK[0x4B40]) >> v647);
  v724 = v720 ^ v718;
  v725 = v723 ^ v720;
  v726 = v724 ^ v722 ^ LODWORD(STACK[0x4FB8]);
  v727 = LODWORD(STACK[0x5070]) ^ v725 ^ v722 ^ LODWORD(STACK[0x4FB8]);
  v728 = LODWORD(STACK[0x4FB0]) ^ v725;
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v728);
  v729 = *(v299 + 4 * HIBYTE(v728));
  v730 = LODWORD(STACK[0x4F00]) ^ v726;
  STACK[0xD7D0] = v299 + 4 * BYTE2(v730);
  v731 = LODWORD(STACK[0x4EF8]) ^ v723;
  v732 = *(v299 + 4 * BYTE2(v730));
  v733 = v731 ^ v722;
  STACK[0xD7D0] = v299 + 4 * BYTE1(v733);
  v734 = *(v299 + 4 * BYTE1(v733));
  v735 = v727 ^ v726;
  STACK[0xD7D0] = v299 + 4 * v735;
  v736 = *(v299 + 4 * v735);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v730);
  v737 = *(v299 + 4 * HIBYTE(v730));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v733);
  v738 = *(v299 + 4 * BYTE2(v733));
  STACK[0xD7F0] = v655;
  STACK[0xD7D0] = v299 + 4 * BYTE1(v735);
  v739 = *(v299 + 4 * BYTE1(v735));
  STACK[0xD7D0] = v299 + 4 * v728;
  v740 = *(v299 + 4 * v728);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v733);
  v741 = *(v299 + 4 * HIBYTE(v733));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v735);
  v742 = *(v299 + 4 * BYTE2(v735));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v728);
  v743 = *(v299 + 4 * BYTE1(v728));
  STACK[0xD7D0] = v299 + 4 * v730;
  v735 >>= 24;
  v744 = *(v299 + 4 * v730);
  STACK[0xD7D0] = v299 + 4 * v735;
  v745 = *(v299 + 4 * v735);
  v746 = BYTE2(v728);
  STACK[0xD7D0] = v299 + 4 * v746;
  v747 = *(v299 + 4 * v746);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v730);
  v748 = *(v299 + 4 * BYTE1(v730));
  STACK[0xD7D0] = v299 + 4 * v733;
  v749 = LODWORD(STACK[0x4EF0]) ^ __ROR4__(v741, 24) ^ v742 ^ __ROR4__(v743, 8) ^ __ROR4__(v744, 16);
  v750 = LODWORD(STACK[0x4EE8]) ^ __ROR4__(v729, 24) ^ v732 ^ __ROR4__(v734, 8) ^ __ROR4__(v736, 16);
  v751 = LODWORD(STACK[0x5050]) ^ __ROR4__(v745, 24) ^ v747;
  v752 = *(v299 + 4 * v733);
  v753 = LODWORD(STACK[0x5058]) ^ __ROR4__(v737, 24) ^ v738 ^ __ROR4__(v739, 8);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v750);
  v754 = *(v299 + 4 * HIBYTE(v750));
  v755 = v753 ^ __ROR4__(v740, 16);
  STACK[0xD7D0] = v299 + 4 * BYTE2(v755);
  v756 = *(v299 + 4 * BYTE2(v755));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v749);
  v757 = *(v299 + 4 * BYTE1(v749));
  v758 = v751 ^ __ROR4__(v748, 8) ^ __ROR4__(v752, 16);
  STACK[0xD7D0] = v299 + 4 * v758;
  v759 = *(v299 + 4 * v758);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v755);
  v760 = *(v299 + 4 * HIBYTE(v755));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v749);
  v761 = *(v299 + 4 * BYTE2(v749));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v758);
  v762 = *(v299 + 4 * BYTE1(v758));
  STACK[0xD7D0] = v299 + 4 * v750;
  v763 = *(v299 + 4 * v750);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v749);
  v764 = *(v299 + 4 * HIBYTE(v749));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v758);
  v765 = *(v299 + 4 * BYTE2(v758));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v750);
  v766 = *(v299 + 4 * BYTE1(v750));
  STACK[0xD7D0] = v299 + 4 * v755;
  v758 >>= 24;
  v767 = *(v299 + 4 * v755);
  STACK[0xD7D0] = v299 + 4 * v758;
  v768 = *(v299 + 4 * v758);
  v769 = BYTE2(v750);
  STACK[0xD7D0] = v299 + 4 * v769;
  v770 = *(v299 + 4 * v769);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v755);
  v771 = *(v299 + 4 * BYTE1(v755));
  v772 = v749;
  STACK[0xD7D0] = v299 + 4 * v749;
  v773 = LODWORD(STACK[0x4EE0]) ^ __ROR4__(v764, 24) ^ v765 ^ __ROR4__(v766, 8) ^ __ROR4__(v767, 16);
  v774 = LODWORD(STACK[0x5048]) ^ __ROR4__(v760, 24) ^ v761 ^ __ROR4__(v762, 8) ^ __ROR4__(v763, 16);
  v775 = LODWORD(STACK[0x4ED8]) ^ __ROR4__(v754, 24) ^ v756 ^ __ROR4__(v757, 8) ^ __ROR4__(v759, 16);
  v776 = *(v299 + 4 * v772);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v775);
  v777 = *(v299 + 4 * HIBYTE(v775));
  v778 = LODWORD(STACK[0x5040]) ^ __ROR4__(v768, 24) ^ v770;
  STACK[0xD7D0] = v299 + 4 * BYTE2(v774);
  v779 = *(v299 + 4 * BYTE2(v774));
  v780 = __ROR4__(v771, 8);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v773);
  v781 = *(v299 + 4 * BYTE1(v773));
  v782 = v778 ^ v780 ^ HIWORD(v776);
  STACK[0xD7D0] = v299 + 4 * v782;
  v783 = *(v299 + 4 * v782);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v774);
  v784 = *(v299 + 4 * HIBYTE(v774));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v773);
  v785 = *(v299 + 4 * BYTE2(v773));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v782);
  v786 = *(v299 + 4 * BYTE1(v782));
  STACK[0xD7D0] = v299 + 4 * v775;
  v787 = *(v299 + 4 * v775);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v773);
  v788 = *(v299 + 4 * HIBYTE(v773));
  v789 = v782 ^ (v776 << 16);
  STACK[0xD7D0] = v299 + 4 * BYTE2(v789);
  v790 = *(v299 + 4 * BYTE2(v789));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v775);
  v791 = *(v299 + 4 * BYTE1(v775));
  STACK[0xD7D0] = v299 + 4 * v774;
  v789 >>= 24;
  v792 = *(v299 + 4 * v774);
  STACK[0xD7D0] = v299 + 4 * v789;
  v793 = *(v299 + 4 * v789);
  v794 = BYTE2(v775);
  STACK[0xD7D0] = v299 + 4 * v794;
  v795 = *(v299 + 4 * v794);
  v796 = BYTE1(v774);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v774);
  v797 = LODWORD(STACK[0x5038]) ^ __ROR4__(v777, 24) ^ v779 ^ __ROR4__(v781, 8) ^ __ROR4__(v783, 16);
  v798 = *(v299 + 4 * v796);
  v799 = v773;
  STACK[0xD7D0] = v299 + 4 * v773;
  v800 = LODWORD(STACK[0x5030]) ^ __ROR4__(v784, 24) ^ v785 ^ __ROR4__(v786, 8) ^ __ROR4__(v787, 16);
  v801 = LODWORD(STACK[0x4ED0]) ^ __ROR4__(v788, 24) ^ v790 ^ __ROR4__(v791, 8) ^ __ROR4__(v792, 16);
  v802 = *(v299 + 4 * v799);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v797);
  v803 = LODWORD(STACK[0x5028]) ^ __ROR4__(v793, 24);
  v804 = *(v299 + 4 * HIBYTE(v797));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v800);
  v805 = *(v299 + 4 * BYTE2(v800));
  v806 = v803 ^ v795 ^ __ROR4__(v798, 8);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v801);
  v807 = *(v299 + 4 * BYTE1(v801));
  v809 = __ROR4__(v802, 16);
  v808 = v806 ^ v809;
  v810 = (v806 ^ v809);
  STACK[0xD7D0] = v299 + 4 * v810;
  v811 = *(v299 + 4 * v810);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v800);
  v812 = *(v299 + 4 * HIBYTE(v800));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v801);
  v813 = *(v299 + 4 * BYTE2(v801));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v808);
  v814 = *(v299 + 4 * BYTE1(v808));
  STACK[0xD7D0] = v299 + 4 * v797;
  v815 = *(v299 + 4 * v797);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v801);
  v816 = *(v299 + 4 * HIBYTE(v801));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v808);
  v817 = *(v299 + 4 * BYTE2(v808));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v797);
  v818 = *(v299 + 4 * BYTE1(v797));
  STACK[0xD7D0] = v299 + 4 * v800;
  v808 >>= 24;
  v819 = *(v299 + 4 * v800);
  STACK[0xD7D0] = v299 + 4 * v808;
  v820 = *(v299 + 4 * v808);
  v821 = BYTE2(v797);
  STACK[0xD7D0] = v299 + 4 * v821;
  v822 = *(v299 + 4 * v821);
  v823 = BYTE1(v800);
  STACK[0xD7D0] = v299 + 4 * v823;
  v824 = *(v299 + 4 * v823);
  STACK[0xD7D0] = v299 + 4 * v801;
  v825 = LODWORD(STACK[0x5018]) ^ __ROR4__(v816, 24) ^ v817 ^ __ROR4__(v818, 8) ^ __ROR4__(v819, 16);
  v826 = LODWORD(STACK[0x4EC8]) ^ __ROR4__(v812, 24) ^ v813 ^ __ROR4__(v814, 8) ^ __ROR4__(v815, 16);
  v827 = LODWORD(STACK[0x5020]) ^ __ROR4__(v804, 24) ^ v805 ^ __ROR4__(v807, 8) ^ __ROR4__(v811, 16);
  v828 = *(v299 + 4 * v801);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v827);
  v829 = LODWORD(STACK[0x4EC0]) ^ __ROR4__(v820, 24);
  v830 = *(v299 + 4 * HIBYTE(v827));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v826);
  v831 = *(v299 + 4 * BYTE2(v826));
  v832 = v829 ^ v822 ^ __ROR4__(v824, 8);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v825);
  v833 = *(v299 + 4 * BYTE1(v825));
  v834 = v832 ^ __ROR4__(v828, 16);
  STACK[0xD7D0] = v299 + 4 * v834;
  v835 = *(v299 + 4 * v834);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v826);
  v836 = *(v299 + 4 * HIBYTE(v826));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v825);
  v837 = *(v299 + 4 * BYTE2(v825));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v834);
  v838 = *(v299 + 4 * BYTE1(v834));
  STACK[0xD7D0] = v299 + 4 * v827;
  v839 = *(v299 + 4 * v827);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v825);
  v840 = *(v299 + 4 * HIBYTE(v825));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v834);
  v841 = *(v299 + 4 * BYTE2(v834));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v827);
  v842 = *(v299 + 4 * BYTE1(v827));
  STACK[0xD7D0] = v299 + 4 * v826;
  v834 >>= 24;
  v843 = *(v299 + 4 * v826);
  STACK[0xD7D0] = v299 + 4 * v834;
  v844 = *(v299 + 4 * v834);
  v845 = BYTE2(v827);
  STACK[0xD7D0] = v299 + 4 * v845;
  v846 = *(v299 + 4 * v845);
  v847 = BYTE1(v826);
  STACK[0xD7D0] = v299 + 4 * v847;
  v848 = *(v299 + 4 * v847);
  v849 = v825;
  STACK[0xD7D0] = v299 + 4 * v825;
  v850 = LODWORD(STACK[0x5008]) ^ __ROR4__(v836, 24) ^ v837 ^ __ROR4__(v838, 8) ^ __ROR4__(v839, 16);
  v851 = LODWORD(STACK[0x4EB8]) ^ __ROR4__(v840, 24) ^ v841 ^ __ROR4__(v842, 8) ^ __ROR4__(v843, 16);
  v852 = LODWORD(STACK[0x5010]) ^ __ROR4__(v830, 24) ^ v831 ^ __ROR4__(v833, 8) ^ __ROR4__(v835, 16);
  v853 = *(v299 + 4 * v849);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v852);
  v854 = *(v299 + 4 * HIBYTE(v852));
  v855 = LODWORD(STACK[0x4EB0]) ^ __ROR4__(v844, 24) ^ v846;
  STACK[0xD7D0] = v299 + 4 * BYTE2(v850);
  v856 = *(v299 + 4 * BYTE2(v850));
  v857 = v855 ^ __ROR4__(v848, 8);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v851);
  v858 = *(v299 + 4 * BYTE1(v851));
  v860 = __ROR4__(v853, 16);
  v859 = v857 ^ v860;
  v861 = (v857 ^ v860);
  STACK[0xD7D0] = v299 + 4 * v861;
  v862 = *(v299 + 4 * v861);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v850);
  v863 = *(v299 + 4 * HIBYTE(v850));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v851);
  v864 = *(v299 + 4 * BYTE2(v851));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v859);
  v865 = *(v299 + 4 * BYTE1(v859));
  STACK[0xD7D0] = v299 + 4 * v852;
  v866 = *(v299 + 4 * v852);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v851);
  v867 = *(v299 + 4 * HIBYTE(v851));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v859);
  v868 = *(v299 + 4 * BYTE2(v859));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v852);
  v869 = *(v299 + 4 * BYTE1(v852));
  STACK[0xD7D0] = v299 + 4 * v850;
  v859 >>= 24;
  v870 = *(v299 + 4 * v850);
  STACK[0xD7D0] = v299 + 4 * v859;
  v871 = *(v299 + 4 * v859);
  v872 = BYTE2(v852);
  STACK[0xD7D0] = v299 + 4 * v872;
  v873 = *(v299 + 4 * v872);
  v874 = BYTE1(v850);
  STACK[0xD7D0] = v299 + 4 * v874;
  v875 = *(v299 + 4 * v874);
  STACK[0xD7D0] = v299 + 4 * v851;
  v876 = LODWORD(STACK[0x5000]) ^ __ROR4__(v854, 24) ^ v856 ^ __ROR4__(v858, 8) ^ __ROR4__(v862, 16);
  v877 = LODWORD(STACK[0x5060]) ^ __ROR4__(v867, 24) ^ v868 ^ __ROR4__(v869, 8) ^ __ROR4__(v870, 16);
  v878 = LODWORD(STACK[0x4FF0]) ^ __ROR4__(v871, 24) ^ v873 ^ __ROR4__(v875, 8);
  v879 = *(v299 + 4 * v851);
  v880 = LODWORD(STACK[0x4FF8]) ^ __ROR4__(v863, 24) ^ v864 ^ __ROR4__(v865, 8);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v876);
  v881 = *(v299 + 4 * HIBYTE(v876));
  v882 = v880 ^ __ROR4__(v866, 16);
  STACK[0xD7D0] = v299 + 4 * BYTE2(v882);
  v883 = *(v299 + 4 * BYTE2(v882));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v877);
  v884 = v878 ^ (v879 << 16);
  v885 = *(v299 + 4 * BYTE1(v877));
  v886 = v884 ^ HIWORD(v879);
  STACK[0xD7D0] = v299 + 4 * v886;
  v887 = *(v299 + 4 * v886);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v882);
  v888 = *(v299 + 4 * HIBYTE(v882));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v877);
  v889 = *(v299 + 4 * BYTE2(v877));
  v890 = BYTE1(v886);
  STACK[0xD7D0] = v299 + 4 * v890;
  v891 = *(v299 + 4 * v890);
  STACK[0xD7D0] = v299 + 4 * v876;
  v892 = *(v299 + 4 * v876);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v877);
  v893 = *(v299 + 4 * HIBYTE(v877));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v884);
  v894 = *(v299 + 4 * BYTE2(v884));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v876);
  v895 = *(v299 + 4 * BYTE1(v876));
  STACK[0xD7D0] = v299 + 4 * v882;
  v884 >>= 24;
  v896 = *(v299 + 4 * v882);
  STACK[0xD7D0] = v299 + 4 * v884;
  v897 = *(v299 + 4 * v884);
  v898 = BYTE2(v876);
  STACK[0xD7D0] = v299 + 4 * v898;
  v899 = *(v299 + 4 * v898);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v882);
  v900 = *(v299 + 4 * BYTE1(v882));
  v901 = v877;
  STACK[0xD7D0] = v299 + 4 * v877;
  v902 = LODWORD(STACK[0x4EA8]) ^ __ROR4__(v893, 24) ^ v894 ^ __ROR4__(v895, 8) ^ __ROR4__(v896, 16);
  v903 = LODWORD(STACK[0x4FE8]) ^ __ROR4__(v881, 24) ^ v883 ^ __ROR4__(v885, 8) ^ __ROR4__(v887, 16);
  v904 = LODWORD(STACK[0x5078]) ^ __ROR4__(v897, 24) ^ v899;
  v905 = *(v299 + 4 * v901);
  v906 = LODWORD(STACK[0x4EA0]) ^ __ROR4__(v888, 24) ^ v889 ^ __ROR4__(v891, 8);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v903);
  v907 = *(v299 + 4 * HIBYTE(v903));
  v908 = v906 ^ __ROR4__(v892, 16);
  STACK[0xD7D0] = v299 + 4 * BYTE2(v908);
  v909 = *(v299 + 4 * BYTE2(v908));
  v910 = v904 ^ __ROR4__(v900, 8);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v902);
  v911 = *(v299 + 4 * BYTE1(v902));
  v912 = v910 ^ __ROR4__(v905, 16);
  STACK[0xD7D0] = v299 + 4 * v912;
  v913 = *(v299 + 4 * v912);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v908);
  v914 = *(v299 + 4 * HIBYTE(v908));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v902);
  v915 = *(v299 + 4 * BYTE2(v902));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v912);
  v916 = *(v299 + 4 * BYTE1(v912));
  STACK[0xD7D0] = v299 + 4 * v903;
  v917 = *(v299 + 4 * v903);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v902);
  v918 = *(v299 + 4 * HIBYTE(v902));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v912);
  v919 = *(v299 + 4 * BYTE2(v912)) ^ __ROR4__(v918, 24);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v903);
  HIDWORD(v921) = *(v299 + 4 * BYTE1(v903));
  LODWORD(v921) = HIDWORD(v921);
  v920 = v921 >> 8;
  STACK[0xD7D0] = v299 + 4 * v908;
  v922 = v920 + v919;
  v923 = v920 & v919;
  v912 >>= 24;
  v924 = *(v299 + 4 * v908);
  STACK[0xD7D0] = v299 + 4 * v912;
  v925 = v922 - 2 * v923;
  v926 = *(v299 + 4 * v912);
  v927 = BYTE2(v903);
  STACK[0xD7D0] = v299 + 4 * v927;
  v928 = *(v299 + 4 * v927);
  v929 = BYTE1(v908);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v908);
  v930 = LODWORD(STACK[0x4FE0]) ^ __ROR4__(v914, 24) ^ v915 ^ __ROR4__(v916, 8);
  v931 = *(v299 + 4 * v929);
  v932 = v930 ^ __ROR4__(v917, 16);
  STACK[0xD7D0] = v299 + 4 * v902;
  v933 = LODWORD(STACK[0x4FD8]) ^ __ROR4__(v924, 16) ^ v925;
  v934 = LODWORD(STACK[0x4E98]) ^ __ROR4__(v907, 24) ^ v909 ^ __ROR4__(v911, 8) ^ __ROR4__(v913, 16);
  v935 = *(v299 + 4 * v902);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v934);
  v936 = *(v299 + 4 * HIBYTE(v934));
  v937 = LODWORD(STACK[0x4FD0]) ^ __ROR4__(v926, 24) ^ v928;
  STACK[0xD7D0] = v299 + 4 * BYTE2(v932);
  v938 = *(v299 + 4 * BYTE2(v932));
  v939 = v937 ^ __ROR4__(v931, 8);
  STACK[0xD7D0] = v299 + 4 * BYTE1(v933);
  v940 = *(v299 + 4 * BYTE1(v933));
  v941 = v939 ^ __ROR4__(v935, 16);
  STACK[0xD7D0] = v299 + 4 * v941;
  v942 = *(v299 + 4 * v941);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v932);
  v943 = *(v299 + 4 * HIBYTE(v932));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v933);
  v944 = *(v299 + 4 * BYTE2(v933));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v941);
  v945 = *(v299 + 4 * BYTE1(v941));
  STACK[0xD7D0] = v299 + 4 * v934;
  v946 = *(v299 + 4 * v934);
  STACK[0xD7D0] = v299 + 4 * HIBYTE(v933);
  v947 = *(v299 + 4 * HIBYTE(v933));
  STACK[0xD7D0] = v299 + 4 * BYTE2(v941);
  v948 = *(v299 + 4 * BYTE2(v941));
  STACK[0xD7D0] = v299 + 4 * BYTE1(v934);
  v949 = *(v299 + 4 * BYTE1(v934));
  STACK[0xD7D0] = v299 + 4 * v932;
  v941 >>= 24;
  v950 = *(v299 + 4 * v932);
  STACK[0xD7D0] = v299 + 4 * v941;
  v951 = *(v299 + 4 * v941);
  v952 = BYTE2(v934);
  STACK[0xD7D0] = v299 + 4 * v952;
  v953 = *(v299 + 4 * v952);
  v954 = BYTE1(v932);
  STACK[0xD7D0] = v299 + 4 * v954;
  v955 = *(v299 + 4 * v954);
  v956 = (v299 + 4 * v933);
  STACK[0xD7D0] = v956;
  v957 = *v956;
  STACK[0xD7D0] = v299;
  v958 = LODWORD(STACK[0x4FC8]) ^ __ROR4__(v936, 24) ^ v938;
  v959 = LODWORD(STACK[0x4FC0]) ^ __ROR4__(v951, 24) ^ v953;
  v960 = LODWORD(STACK[0x4E88]) ^ __ROR4__(v947, 24) ^ v948;
  v961 = LODWORD(STACK[0x4E90]) ^ __ROR4__(v943, 24) ^ v944 ^ __ROR4__(v945, 8);
  LODWORD(v921) = __ROR4__(v946, 16);
  v962 = v961 ^ v921;
  v963 = (v961 ^ v921);
  v964 = STACK[0x5220];
  STACK[0xD7E0] = STACK[0x5220] + 4 * (v961 ^ v921);
  v965 = v959 ^ __ROR4__(v955, 8) ^ __ROR4__(v957, 16);
  v966 = *(v964 + 4 * v963);
  STACK[0xD7E0] = v964 + 4 * HIBYTE(v965);
  v967 = v958 ^ __ROR4__(v940, 8) ^ __ROR4__(v942, 16);
  v968 = *(v964 + 4 * HIBYTE(v965));
  STACK[0xD7E0] = v964 + 4 * BYTE2(v967);
  v969 = v960 ^ __ROR4__(v949, 8) ^ __ROR4__(v950, 16);
  v970 = STACK[0x5068];
  v971 = LODWORD(STACK[0x5068]) ^ __ROR4__(*(v964 + 4 * HIBYTE(v962)), 16) ^ __ROR4__(*(v964 + 4 * BYTE2(v969)), 24) ^ *(v964 + 4 * BYTE1(v965));
  v972 = STACK[0x50D8];
  v973 = *(v964 + 4 * BYTE2(v967));
  v974 = LODWORD(STACK[0x50D8]) ^ __ROR4__(*(v964 + 4 * HIBYTE(v969)), 16) ^ __ROR4__(*(v964 + 4 * BYTE2(v965)), 24) ^ *(v964 + 4 * BYTE1(v967));
  STACK[0xD7E0] = v964 + 4 * BYTE1(v962);
  v975 = *(v964 + 4 * BYTE1(v962));
  STACK[0xD7E0] = v964 + 4 * v969;
  v976 = v970 ^ __ROR4__(v968, 16) ^ __ROR4__(v973, 24) ^ v975;
  v977 = v971 ^ __ROR4__(*(v964 + 4 * v967), 8);
  v978 = v974 ^ __ROR4__(v966, 8) ^ 0x6F68601D;
  v979 = v977 ^ 0x9938C258 ^ v978;
  v980 = v979 ^ v972 ^ __ROR4__(*(v964 + 4 * HIBYTE(v967)), 16) ^ __ROR4__(*(v964 + 4 * BYTE2(v962)), 24) ^ *(v964 + 4 * BYTE1(v969)) ^ __ROR4__(*(v964 + 4 * v965), 8);
  v981 = v976 ^ __ROR4__(*(v964 + 4 * v969), 8) ^ 0xA264291;
  v982 = v980 ^ 0x4A9C2FA ^ v978 ^ v981;
  v983 = STACK[0x5280];
  v984 = *(*(&off_101353600 + LODWORD(STACK[0x5280]) - 24047) + (BYTE1(v982) ^ 0x8ELL) - 8);
  HIDWORD(v921) = v984 ^ 7;
  LODWORD(v921) = (v984 ^ 0xE0) << 24;
  v985 = STACK[0xD7C8];
  *(v985 + LODWORD(STACK[0x5228])) = (v921 >> 28) ^ 0xEF;
  *(v985 + LODWORD(STACK[0x5298])) = *(*(&off_101353600 + (v983 ^ 0x66E2)) + (v982 ^ 0x2CLL) - 4) ^ (v982 - ((2 * v982) & 0x2E) - 105) ^ 0x64;
  v986 = v980 ^ 0x4A9C2FA ^ v979;
  *(v985 + LODWORD(STACK[0x5278])) = *(*(&off_101353600 + v983 - 25006) + ((v986 ^ 0x9649008C) >> 24)) ^ 0x45 ^ (*(*(&off_101353600 + v983 - 25006) + ((v986 ^ 0x9649008C) >> 24)) >> 4) & 7;
  v987 = *(*(&off_101353600 + v983 - 23871) + (v980 ^ 0xFA ^ v979 ^ 0x8Cu) - 8);
  HIDWORD(v921) = v987 ^ 0xF;
  LODWORD(v921) = (v987 ^ 0xFFFFFFBF) << 24;
  *(v985 + LODWORD(STACK[0x5238])) = (v921 >> 29) ^ 0x98;
  v988 = v981 ^ v979;
  *(v985 + LODWORD(STACK[0x5270])) = *(*(&off_101353600 + v983 - 23978) + (((v981 ^ v979) >> 24) ^ 0xCBLL) - 12) ^ 0x5D;
  *(v985 + LODWORD(STACK[0x5288])) = *(*(&off_101353600 + (v983 ^ 0x6631)) + (HIBYTE(v980) ^ 0x22) - 12) ^ 0x29;
  BYTE1(v981) = BYTE1(v980) ^ 0x5C;
  *(v985 + LODWORD(STACK[0x5268])) = ((v980 ^ 0xD2) + (v980 ^ 0x3E) - ((2 * ((v980 ^ 0xD2) + (v980 ^ 0x3E))) & 0xE3) - 15) ^ 0x54 ^ *(*(&off_101353600 + (v983 ^ 0x610A)) + (v980 ^ 0xF9) - 4);
  *(v985 + LODWORD(STACK[0x5250])) = (((v980 ^ 0x4A9C2FA) >> 16) - (((v980 ^ 0x4A9C2FA) >> 15) & 0x2A) - 107) ^ 0x63 ^ *(*(&off_101353600 + v983 - 24569) + (((v980 ^ 0x4A9C2FA) >> 16) ^ 0xCBLL) - 4);
  LOBYTE(v979) = *(*(&off_101353600 + (v983 ^ 0x61D2)) + (BYTE2(v986) ^ 0xA9) - 12);
  *(v985 + LODWORD(STACK[0x5260])) = v979 ^ ((v979 ^ 0x72) << 6) ^ (4 * (v979 ^ 0x72)) ^ 0x57;
  v989 = STACK[0xD7C8];
  *(v989 + LODWORD(STACK[0x5230])) = ((BYTE2(v988) ^ 0xA5) + *(*(&off_101353600 + v983 - 24255) + (BYTE2(v988) ^ 0x12) - 4) - 7) ^ 0x39;
  LOBYTE(v979) = *(*(&off_101353600 + (v983 ^ 0x6673)) + (BYTE2(v982) ^ 0x84));
  *(v989 + LODWORD(STACK[0x52B8])) = v979 ^ 0x76 ^ (((8 * v979) ^ 0xA8) - 8);
  *(v989 + LODWORD(STACK[0x52A0])) = *(*(&off_101353600 + v983 - 24457) + (HIBYTE(v982) ^ 0x39) - 8) ^ 0xE1;
  LOBYTE(v979) = *(*(&off_101353600 + (v983 ^ 0x6181)) + (v988 ^ 0x4ELL));
  *(v989 + LODWORD(STACK[0x5258])) = v979 ^ ((v979 ^ 0x6C) >> 6) ^ ((v979 ^ 0x6C) >> 3) ^ 0x6A;
  *(v989 + LODWORD(STACK[0x5290])) = ((BYTE1(v988) ^ 5) + *(*(&off_101353600 + (v983 & 0x397A1498)) + (BYTE1(v988) ^ 0xE7) - 4) - 115) ^ 0x97;
  *(v711 + LODWORD(STACK[0x52B0])) = (BYTE1(v986) - ((v986 >> 7) & 0x44) - 94) ^ 0x8B ^ *(*(&off_101353600 + (v983 & 0xA0F80D62)) + (BYTE1(v986) ^ 0x2ELL));
  *(v711 + LODWORD(STACK[0x52A8])) = *(*(&off_101353600 + v983 - 24409) + (BYTE1(v981) ^ 0x52) - 4) ^ 0xF6;
  STACK[0xD7E0] = v964;
  v990 = (((LODWORD(STACK[0x5248]) ^ 0xC4F64386) + 990493818) ^ ((LODWORD(STACK[0x5248]) ^ 0x2352FC8E) - 592641166) ^ ((LODWORD(STACK[0x5248]) ^ 0xAEEA59DE) + 1360373282)) + 1749732398;
  v991 = (v990 ^ 0xFCD59039) & (2 * (v990 & 0xE1041AB8)) ^ v990 & 0xE1041AB8;
  v992 = ((2 * (v990 ^ 0x3CD5A149)) ^ 0xBBA377E2) & (v990 ^ 0x3CD5A149) ^ (2 * (v990 ^ 0x3CD5A149)) & 0xDDD1BBF0;
  v993 = (v992 ^ 0x880033E0) & (4 * v991) ^ v991;
  v994 = ((4 * (v992 ^ 0x44508811)) ^ 0x7746EFC4) & (v992 ^ 0x44508811) ^ (4 * (v992 ^ 0x44508811)) & 0xDDD1BBF0;
  v995 = (v994 ^ 0x5540ABC0) & (16 * v993) ^ v993;
  v996 = ((16 * (v994 ^ 0x88911031)) ^ 0xDD1BBF10) & (v994 ^ 0x88911031) ^ (16 * (v994 ^ 0x88911031)) & 0xDDD1BBF0;
  v997 = v995 ^ 0xDDD1BBF1 ^ (v996 ^ 0xDD11BB00) & (v995 << 8);
  v998 = v990 ^ (2 * ((v997 << 16) & 0x5DD10000 ^ v997 ^ ((v997 << 16) ^ 0x3BF10000) & (((v996 ^ 0xC000E1) << 8) & 0x5DD10000 ^ 0xC400000 ^ (((v996 ^ 0xC000E1) << 8) ^ 0x51BB0000) & (v996 ^ 0xC000E1))));
  v999 = (((v998 ^ 0x964BF268) + 1241482780) ^ ((v998 ^ 0x50DF4F5A) - 1888797910) ^ ((v998 ^ 0xAF91D068) + 1881515036)) - 1562259319;
  v1000 = v999 >= LODWORD(STACK[0x52F0]);
  v1001 = LODWORD(STACK[0x5240]) ^ (v999 < 0x5992E9B3);
  v1002 = !v1000;
  if (v1001)
  {
    v1003 = STACK[0x5240];
  }

  else
  {
    v1003 = v1002;
  }

  return (*(STACK[0x57D8] + 8 * ((482 * (v1003 ^ 1)) ^ v983)))();
}