uint64_t sub_1007BF7FC()
{
  v0 = STACK[0xAF00];
  v1 = STACK[0x51B8];
  v2 = (STACK[0x51B8] - 13877) | 0x144;
  *v0 = 0x1D8A118EDE6D14DLL;
  *(v0 + 8) = 0;
  v3 = v1 - 21454;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1414217035;
  *(v0 + 28) = 0x800000002;
  *(v0 + 36) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = -1055333906;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1768711563;
  *(v0 + 68) = 0x400000001;
  *(v0 + 76) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0x1C81CC4C3;
  *(v0 + 112) = 0x200000004;
  v4 = STACK[0x57D8];
  STACK[0xBDD0] = *(STACK[0x57D8] + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x12EB ^ v2)))();
}

uint64_t sub_1007BFA8C(uint64_t a1, int a2)
{
  v3 = *(STACK[0x57D8] + 8 * (((v2 < ((a2 - 679873346) & 0x2885FBFC ^ 0x5A88uLL)) * (((a2 - 19319) | 0x110) - 7997)) ^ a2));
  *&STACK[0x55F0] = vdupq_n_s64(0x69C3804AD3ED1806uLL);
  *&STACK[0x55B0] = vdupq_n_s64(0x963C7FB52C12E7F9);
  *&STACK[0x55E0] = vdupq_n_s64(0x4F3A2BEFFCB20412uLL);
  *&STACK[0x55D0] = vdupq_n_s64(0x2CBB6299D478463BuLL);
  *&STACK[0x5780] = vdupq_n_s64(0x3CDFBFB8CC6B5942uLL);
  *&STACK[0x5770] = vdupq_n_s64(0xB5518463AD05BBB6);
  *&STACK[0x57C0] = vdupq_n_s64(0x25573DCE297D2224uLL);
  *&STACK[0x57B0] = vdupq_n_s64(0xD753457A2A18247uLL);
  *&STACK[0x57A0] = vdupq_n_s64(0x8E6DD424EF555375);
  *&STACK[0x5610] = vdupq_n_s64(0xA9114E495B9659F5);
  *&STACK[0x5760] = vdupq_n_s64(0x737F72B741F80E46uLL);
  *&STACK[0x5640] = vdupq_n_s64(0x87506FB3287C789DLL);
  *&STACK[0x5730] = vdupq_n_s64(0xFEF4275CC2CAB0EELL);
  *&STACK[0x5740] = vdupq_n_s64(0xB5E8CD08CFE8AE9ELL);
  *&STACK[0x5720] = vdupq_n_s64(0xBE7E0D15EF5656BCLL);
  *&STACK[0x5710] = vdupq_n_s64(0xA0C0F9750854D4A1);
  *&STACK[0x5600] = vdupq_n_s64(0xF9FFFFFFFFFFFFFFLL);
  *&STACK[0x56F0] = vdupq_n_s64(0x8F18BD9A62CD5640);
  *&STACK[0x5630] = vdupq_n_s64(0xA0221FD3D1DF2A65);
  *&STACK[0x56E0] = vdupq_n_s64(0xC32E0D7C3767078CLL);
  *&STACK[0x5700] = vdupq_n_s64(0x942E65EE602EA2C2);
  *&STACK[0x5620] = vdupq_n_s64(0x522ADAC7A4B9BB72uLL);
  *&STACK[0x55C0] = vdupq_n_s64(0xD6EA929C2DA32247);
  *&STACK[0x5750] = vdupq_n_s64(0x6397E438455E1B2EuLL);
  *&STACK[0x5790] = vdupq_n_s64(0x9C681BC7BAA1E4D1);
  return v3();
}

uint64_t sub_1007BFD5C@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  *&STACK[0x5680] = *(v7 + v3 - 16);
  v11.i64[0] = v6 + v3;
  v11.i64[1] = v7 + v3 - 8;
  v12.i64[0] = a1 + v3 + 9;
  v12.i64[1] = a1 + v3 + 8;
  v13 = v12;
  *&STACK[0x54D0] = v12;
  v12.i64[0] = a1 + v3 + 7;
  v12.i64[1] = a1 + v3 + 6;
  v14 = v12;
  v12.i64[0] = v7 + v3 - 1;
  v12.i64[1] = v7 + v3 - 2;
  v15 = v12;
  *&STACK[0x5630] = v12;
  v12.i64[0] = v7 + v3 - 3;
  v12.i64[1] = v7 + v3 - 4;
  v16 = v12;
  *&STACK[0x5620] = v12;
  v17.i64[0] = v7 + v3 - 5;
  v17.i64[1] = v7 + v3 - 6;
  v12.i64[0] = v7 + v3 - 9;
  v12.i64[1] = v7 + v3 - 10;
  v18 = v12;
  *&STACK[0x5670] = v12;
  v12.i64[0] = v7 + v3 - 11;
  v12.i64[1] = v7 + v3 - 12;
  v19 = v12;
  *&STACK[0x5660] = v12;
  v12.i64[0] = v7 + v3 - 13;
  v12.i64[1] = v7 + v3 - 14;
  v20 = v12;
  *&STACK[0x5640] = v12;
  v12.i64[0] = v7 + v3 - 15;
  v21.i64[0] = a1 + v3 + 5;
  v12.i64[1] = v7 + v3 - 16;
  *&STACK[0x5650] = v12;
  v21.i64[1] = a1 + v3 + 4;
  v22 = v21;
  v23 = *&STACK[0x4D70];
  v24 = vandq_s8(v12, *&STACK[0x4D70]);
  v25 = vandq_s8(v20, *&STACK[0x4D70]);
  v26 = vandq_s8(v19, *&STACK[0x4D70]);
  v27 = vandq_s8(v18, *&STACK[0x4D70]);
  v28 = vandq_s8(v11, *&STACK[0x4D70]);
  v29 = vandq_s8(v17, *&STACK[0x4D70]);
  v30 = vandq_s8(v16, *&STACK[0x4D70]);
  v31 = vandq_s8(v15, *&STACK[0x4D70]);
  v32 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL);
  v40 = vorrq_s8(vandq_s8(vsubq_s64(v8, v39), v9), vandq_s8(vaddq_s64(v39, *&STACK[0x4BD0]), v10));
  v41 = vorrq_s8(vandq_s8(vsubq_s64(v8, v38), v9), vandq_s8(vaddq_s64(v38, *&STACK[0x4BD0]), v10));
  v42 = vorrq_s8(vandq_s8(vsubq_s64(v8, v37), v9), vandq_s8(vaddq_s64(v37, *&STACK[0x4BD0]), v10));
  v43 = vorrq_s8(vandq_s8(vsubq_s64(v8, v36), v9), vandq_s8(vaddq_s64(v36, *&STACK[0x4BD0]), v10));
  v44 = vorrq_s8(vandq_s8(vsubq_s64(v8, v34), v9), vandq_s8(vaddq_s64(v34, *&STACK[0x4BD0]), v10));
  v45 = vorrq_s8(vandq_s8(vsubq_s64(v8, v35), v9), vandq_s8(vaddq_s64(v35, *&STACK[0x4BD0]), v10));
  v46 = vorrq_s8(vandq_s8(vsubq_s64(v8, v33), v9), vandq_s8(vaddq_s64(v33, *&STACK[0x4BD0]), v10));
  v47 = vorrq_s8(vandq_s8(vsubq_s64(v8, v32), v9), vandq_s8(vaddq_s64(v32, *&STACK[0x4BD0]), v10));
  v48 = veorq_s8(v47, *&STACK[0x5610]);
  v49 = veorq_s8(v46, *&STACK[0x5610]);
  v50 = veorq_s8(v44, *&STACK[0x5610]);
  v51 = veorq_s8(v45, *&STACK[0x5610]);
  v52 = veorq_s8(v43, *&STACK[0x5610]);
  v53 = veorq_s8(v42, *&STACK[0x5610]);
  v54 = veorq_s8(v41, *&STACK[0x5610]);
  v55 = veorq_s8(v40, *&STACK[0x5610]);
  v56 = veorq_s8(v40, *&STACK[0x5600]);
  v57 = veorq_s8(v41, *&STACK[0x5600]);
  v58 = veorq_s8(v42, *&STACK[0x5600]);
  v59 = veorq_s8(v43, *&STACK[0x5600]);
  v60 = veorq_s8(v44, *&STACK[0x5600]);
  v61 = veorq_s8(v45, *&STACK[0x5600]);
  v62 = veorq_s8(v46, *&STACK[0x5600]);
  v63 = veorq_s8(v47, *&STACK[0x5600]);
  v64 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v63);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v62);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v61);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v60);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v59);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v58);
  v72 = vaddq_s64(v65, v57);
  v73 = vaddq_s64(v64, v56);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v73, v73), *&STACK[0x55F0]), v73), *&STACK[0x55E0]), *&STACK[0x55D0]);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), *&STACK[0x55F0]), v72), *&STACK[0x55E0]), *&STACK[0x55D0]);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), *&STACK[0x55F0]), v71), *&STACK[0x55E0]), *&STACK[0x55D0]);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), *&STACK[0x55F0]), v70), *&STACK[0x55E0]), *&STACK[0x55D0]);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), *&STACK[0x55F0]), v69), *&STACK[0x55E0]), *&STACK[0x55D0]);
  v79 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), *&STACK[0x55F0]), v68), *&STACK[0x55E0]), *&STACK[0x55D0]);
  v82 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), *&STACK[0x55F0]), v67), *&STACK[0x55E0]), *&STACK[0x55D0]);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v66, v66), *&STACK[0x55F0]), v66), *&STACK[0x55E0]), *&STACK[0x55D0]);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v87 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v88 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v89 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v90 = veorq_s8(v77, v83);
  v91 = veorq_s8(v76, v82);
  v92 = veorq_s8(v75, v80);
  v93 = veorq_s8(v74, v79);
  v94 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v90);
  v97 = veorq_s8(vaddq_s64(v94, v86), *&STACK[0x4600]);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87), *&STACK[0x4600]);
  v99 = veorq_s8(vaddq_s64(v95, v89), *&STACK[0x4600]);
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v88), *&STACK[0x4600]);
  v101 = veorq_s8(v96, *&STACK[0x4600]);
  v102 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v91), *&STACK[0x4600]);
  v104 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v105 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v92), *&STACK[0x4600]);
  v107 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v93), *&STACK[0x4600]);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v112 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v113 = veorq_s8(v103, v109);
  v114 = veorq_s8(v101, v108);
  v115 = veorq_s8(v100, v107);
  v116 = veorq_s8(v99, v105);
  v117 = veorq_s8(v98, v104);
  v118 = veorq_s8(v97, v102);
  v119 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v116);
  v125 = *&STACK[0x4470];
  v126 = veorq_s8(vaddq_s64(v119, v111), *&STACK[0x4470]);
  v127 = veorq_s8(vaddq_s64(v120, v112), *&STACK[0x4470]);
  v128 = veorq_s8(vaddq_s64(v121, v113), *&STACK[0x4470]);
  v129 = veorq_s8(vaddq_s64(v123, v115), *&STACK[0x4470]);
  v130 = veorq_s8(vaddq_s64(v122, v114), *&STACK[0x4470]);
  v131 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v134 = veorq_s8(v124, *&STACK[0x4470]);
  v135 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v117), *&STACK[0x4470]);
  v137 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v118), *&STACK[0x4470]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v141 = veorq_s8(v136, v138);
  v142 = veorq_s8(v134, v137);
  v143 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v144 = veorq_s8(v130, v135);
  v145 = veorq_s8(v128, v133);
  v146 = veorq_s8(v127, v132);
  v147 = veorq_s8(v126, v131);
  v148 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v147);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), *&STACK[0x55C0]);
  v156 = veorq_s8(vaddq_s64(v148, v141), *&STACK[0x55C0]);
  v157 = veorq_s8(vaddq_s64(v150, v143), *&STACK[0x55C0]);
  v158 = veorq_s8(vaddq_s64(v149, v142), *&STACK[0x55C0]);
  v159 = veorq_s8(vaddq_s64(v151, v144), *&STACK[0x55C0]);
  v160 = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v162 = veorq_s8(vaddq_s64(v152, v145), *&STACK[0x55C0]);
  v163 = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v165 = veorq_s8(vaddq_s64(v153, v146), *&STACK[0x55C0]);
  v166 = vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v168 = veorq_s8(v154, *&STACK[0x55C0]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v170 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v171 = veorq_s8(v162, v167);
  v172 = veorq_s8(v159, v166);
  v173 = veorq_s8(v157, v164);
  v174 = veorq_s8(v158, v163);
  v175 = veorq_s8(v156, v161);
  v176 = veorq_s8(v155, v160);
  *&STACK[0x54E0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v176);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v175);
  *&STACK[0x5550] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v172);
  *&STACK[0x5530] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v171);
  *&STACK[0x5510] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v170);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v179 = *&STACK[0x5560];
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v173), *&STACK[0x5560]);
  *&STACK[0x5500] = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  *&STACK[0x54F0] = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  *&STACK[0x5520] = vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL);
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v174), v179);
  *&STACK[0x5540] = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v182 = veorq_s8(v177, v179);
  v183 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v184 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v185 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v186 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v187 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v185);
  v189 = *&STACK[0x4490];
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v186), *&STACK[0x4490]);
  v191 = veorq_s8(v188, *&STACK[0x4490]);
  v192 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v193 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v194 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v195 = vandq_s8(v22, v23);
  v196 = v22;
  v197 = vandq_s8(v14, v23);
  v198 = v14;
  v199 = vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL);
  v200 = vandq_s8(v13, v23);
  v201 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL);
  v174.i64[0] = a1 + v3 + 3;
  v174.i64[1] = a1 + v3 + 2;
  v204 = vandq_s8(v174, v23);
  v205 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v206 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v201, v201), *&STACK[0x5710]), *&STACK[0x5720]), v201);
  v207 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v202, v202), *&STACK[0x5710]), *&STACK[0x5720]), v202);
  v208 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v203, v203), *&STACK[0x5710]), *&STACK[0x5720]), v203);
  v209 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v205, v205), *&STACK[0x5710]), *&STACK[0x5720]), v205), *&STACK[0x57B0]);
  v210 = veorq_s8(v209, *&STACK[0x57C0]);
  v211 = vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL);
  v212 = vaddq_s64(v208, *&STACK[0x57B0]);
  v213 = veorq_s8(v212, *&STACK[0x57C0]);
  v214 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v215 = veorq_s8(v209, *&STACK[0x5780]);
  v216 = vaddq_s64(v211, v215);
  v217 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v218 = veorq_s8(v212, *&STACK[0x5780]);
  v219 = *&STACK[0x44D0];
  v220 = veorq_s8(vaddq_s64(v214, v218), *&STACK[0x44D0]);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v223 = veorq_s8(v216, *&STACK[0x44D0]);
  v224 = veorq_s8(v223, v217);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = *&STACK[0x5570];
  v227 = vaddq_s64(v222, v221);
  v228 = vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL);
  v229 = vaddq_s64(v194, v192);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v227, *&STACK[0x5770]), vorrq_s8(v227, *&STACK[0x5570])), *&STACK[0x5570]), *&STACK[0x5760]);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v233 = vaddq_s64(v199, v193);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v225, *&STACK[0x5770]), vorrq_s8(v225, *&STACK[0x5570])), *&STACK[0x5570]), *&STACK[0x5760]);
  v235 = veorq_s8(v234, v228);
  v236 = vaddq_s64(v232, v231);
  v237 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), v125);
  v240 = veorq_s8(v239, v238);
  v241 = vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL);
  v242 = veorq_s8(v236, v125);
  v243 = veorq_s8(v242, v237);
  v244 = vaddq_s64(v241, v240);
  v245 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243);
  v246 = vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL);
  v247 = veorq_s8(v229, *&STACK[0x4620]);
  v248 = vshlq_n_s64(v11, 3uLL);
  v249 = vdupq_n_s64(v2);
  v250 = vshlq_u64(v247, vnegq_s64(vandq_s8(v248, v249)));
  v251 = vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL);
  v252 = *&STACK[0x5700];
  v253 = veorq_s8(vaddq_s64(vsubq_s64(v245, vandq_s8(vaddq_s64(v245, v245), *&STACK[0x5750])), *&STACK[0x57A0]), *&STACK[0x5700]);
  v254 = veorq_s8(v253, v251);
  v255 = vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL);
  v256 = veorq_s8(vaddq_s64(vsubq_s64(v244, vandq_s8(vaddq_s64(v244, v244), *&STACK[0x5750])), *&STACK[0x57A0]), *&STACK[0x5700]);
  v257 = veorq_s8(v256, v246);
  v258 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v259 = vaddq_s64(v255, v254);
  v260 = *&STACK[0x5580];
  v261 = vaddq_s64(v258, v257);
  v262 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v263 = vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL);
  v264 = *&STACK[0x56C0];
  v265 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261, v261), *&STACK[0x56F0]), v261), *&STACK[0x5790]), *&STACK[0x56C0]);
  v266 = veorq_s8(v265, v263);
  v267 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v259, v259), *&STACK[0x56F0]), v259), *&STACK[0x5790]), *&STACK[0x56C0]);
  v269 = veorq_s8(v268, v262);
  v270 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v271 = vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL);
  v272 = vaddq_s64(v267, v266);
  v273 = vaddq_s64(v270, v269);
  v274 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v275 = veorq_s8(v273, *&STACK[0x4490]);
  v276 = veorq_s8(v272, *&STACK[0x4490]);
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL), veorq_s8(v276, v271));
  v278 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v275, 0x38uLL), v275, 8uLL), veorq_s8(v275, v274));
  v279 = *&STACK[0x56E0];
  v280 = vaddq_s64(v207, *&STACK[0x57B0]);
  v281 = *&STACK[0x56D0];
  v282 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v278, *&STACK[0x56E0]), vorrq_s8(v278, *&STACK[0x5580])), *&STACK[0x5580]), *&STACK[0x56D0]), vnegq_s64(vandq_s8(vshlq_n_s64(v196, 3uLL), v249)));
  v452.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v277, *&STACK[0x56E0]), vorrq_s8(v277, *&STACK[0x5580])), *&STACK[0x5580]), *&STACK[0x56D0]), vnegq_s64(vandq_s8(vshlq_n_s64(v174, 3uLL), v249))), v250);
  v452.val[2] = veorq_s8(v282, vshlq_u64(veorq_s8(v233, *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), v249))));
  v283 = veorq_s8(v280, *&STACK[0x57C0]);
  v284 = veorq_s8(v280, *&STACK[0x5780]);
  v285 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL), v284), *&STACK[0x44D0]);
  v286 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL));
  v287 = veorq_s8(vaddq_s64(v187, v184), *&STACK[0x4490]);
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v286);
  v289 = veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v290 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v288, *&STACK[0x5770]), vorrq_s8(v288, *&STACK[0x5570])), *&STACK[0x5570]), *&STACK[0x5760]);
  v292 = vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL);
  v293 = veorq_s8(v291, v290);
  v294 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v293), v125);
  v295 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL));
  v296 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295);
  v297 = vaddq_s64(v292, v289);
  v298 = veorq_s8(vaddq_s64(vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), *&STACK[0x5750])), *&STACK[0x57A0]), *&STACK[0x5700]);
  v299 = veorq_s8(v298, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v300 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL), v299);
  v301 = *&STACK[0x56F0];
  v302 = *&STACK[0x4620];
  v303 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v300, v300), *&STACK[0x56F0]), v300), *&STACK[0x5790]), *&STACK[0x56C0]);
  v304 = veorq_s8(v303, vsraq_n_u64(vshlq_n_s64(v299, 3uLL), v299, 0x3DuLL));
  v305 = vshlq_u64(veorq_s8(v297, *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5620], 3uLL), v249)));
  v306 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL), v304), *&STACK[0x4490]);
  v307 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v304, 3uLL), v304, 0x3DuLL)));
  v308 = vsubq_s64(vorrq_s8(v307, *&STACK[0x56E0]), vorrq_s8(v307, *&STACK[0x5580]));
  v307.i64[0] = a1 + v3 + 1;
  v309 = vshlq_u64(veorq_s8(vaddq_s64(v308, *&STACK[0x5580]), *&STACK[0x56D0]), vnegq_s64(vandq_s8(vshlq_n_s64(v198, 3uLL), v249)));
  v310.i64[0] = a1 + v3 - 1;
  v307.i64[1] = a1 + v3;
  *&STACK[0x5620] = v307;
  v310.i64[1] = a1 + v3 - 2;
  v311 = veorq_s8(*&STACK[0x54E0], v179);
  v312 = veorq_s8(v311, v183);
  v313 = vaddq_s64(v206, *&STACK[0x57B0]);
  v452.val[1] = veorq_s8(v309, v305);
  v314 = veorq_s8(v313, *&STACK[0x57C0]);
  v315 = vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL);
  v316 = veorq_s8(v313, *&STACK[0x5780]);
  v317 = vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL);
  v318 = veorq_s8(vaddq_s64(v315, v316), v219);
  v319 = veorq_s8(v318, vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL));
  v320 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL), v319);
  v321 = vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL);
  v322 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v323 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v320, *&STACK[0x5770]), vorrq_s8(v320, v226)), v226), *&STACK[0x5760]);
  v324 = vaddq_s64(v317, v312);
  v325 = veorq_s8(v323, v321);
  v326 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v323, 0x38uLL), v323, 8uLL), v325), v125);
  v327 = veorq_s8(v324, v189);
  v328 = veorq_s8(v326, vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL));
  v329 = vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL);
  v330 = veorq_s8(v327, v322);
  v331 = vaddq_s64(v329, v328);
  v332 = vsubq_s64(v331, vandq_s8(vaddq_s64(v331, v331), *&STACK[0x5750]));
  v333 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v334 = vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL);
  v331.i64[0] = a1 + v3 - 3;
  v335 = veorq_s8(vaddq_s64(v332, *&STACK[0x57A0]), v252);
  v336 = vaddq_s64(v333, v330);
  v337 = veorq_s8(v335, v334);
  v338 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v335.i64[0] = a1 + v3 - 5;
  v331.i64[1] = a1 + v3 - 4;
  v335.i64[1] = a1 + v3 - 6;
  v339 = veorq_s8(v178, v179);
  v340 = veorq_s8(*&STACK[0x5510], v179);
  v341 = veorq_s8(v340, *&STACK[0x54F0]);
  v342 = veorq_s8(v339, *&STACK[0x5500]);
  v343 = vaddq_s64(v338, v337);
  v344 = vshlq_u64(veorq_s8(v336, v302), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5630], 3uLL), v249)));
  v345 = v301;
  v346 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v343, v343), v301), v343), *&STACK[0x5790]), v264);
  v347 = veorq_s8(v346, vsraq_n_u64(vshlq_n_s64(v337, 3uLL), v337, 0x3DuLL));
  v348 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v346, 0x38uLL), v346, 8uLL), v347), v189);
  v349 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL), veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL)));
  v350 = vandq_s8(v331, v23);
  v452.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v349, v279), vorrq_s8(v349, v260)), v260), v281), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x54D0], 3uLL), v249))), v344);
  v351 = vandq_s8(v307, v23);
  v352 = vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL);
  v353 = vandq_s8(v310, v23);
  v354 = vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL);
  v356 = vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL);
  v357 = vandq_s8(v335, v23);
  v358 = vsraq_n_u64(vshlq_n_s64(v339, 0x38uLL), v339, 8uLL);
  v359 = vsraq_n_u64(vshlq_n_s64(v357, 0x38uLL), v357, 8uLL);
  v360 = a2[25];
  *&STACK[0x5510] = v360;
  *&STACK[0x5630] = vqtbl4q_s8(v452, v360);
  v452.val[2] = vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL);
  v452.val[1] = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v359, v359), *&STACK[0x5710]), *&STACK[0x5720]), v359), *&STACK[0x57B0]);
  v452.val[3] = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v356, v356), *&STACK[0x5710]), *&STACK[0x5720]), v356), *&STACK[0x57B0]);
  v361 = veorq_s8(v452.val[3], *&STACK[0x57C0]);
  v362 = veorq_s8(v452.val[1], *&STACK[0x57C0]);
  v452.val[1] = veorq_s8(v452.val[1], *&STACK[0x5780]);
  v452.val[3] = veorq_s8(v452.val[3], *&STACK[0x5780]);
  v363 = v219;
  v364 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v362, 0x38uLL), v362, 8uLL), v452.val[1]), v219);
  v365 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL), v452.val[3]), v219);
  v366 = vsraq_n_u64(vshlq_n_s64(v452.val[1], 3uLL), v452.val[1], 0x3DuLL);
  v452.val[1] = veorq_s8(v365, vsraq_n_u64(vshlq_n_s64(v452.val[3], 3uLL), v452.val[3], 0x3DuLL));
  v452.val[3] = veorq_s8(v364, v366);
  v367 = vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL);
  v368 = vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL);
  v369 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v370 = vaddq_s64(v354, v341);
  v371 = vaddq_s64(v368, v452.val[3]);
  v372 = vaddq_s64(v367, v452.val[1]);
  v373 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v371, *&STACK[0x5770]), vorrq_s8(v371, v226)), v226), *&STACK[0x5760]);
  v374 = veorq_s8(v370, v189);
  v375 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v372, *&STACK[0x5770]), vorrq_s8(v372, v226)), v226), *&STACK[0x5760]);
  v376 = vsraq_n_u64(vshlq_n_s64(v452.val[3], 3uLL), v452.val[3], 0x3DuLL);
  v452.val[3] = vsraq_n_u64(vshlq_n_s64(v452.val[1], 3uLL), v452.val[1], 0x3DuLL);
  v452.val[1] = veorq_s8(vaddq_s64(v358, v342), v189);
  v452.val[3] = veorq_s8(v375, v452.val[3]);
  v377 = veorq_s8(v373, v376);
  v452.val[2] = veorq_s8(v452.val[1], v452.val[2]);
  v378 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL), v452.val[3]);
  v379 = vsraq_n_u64(vshlq_n_s64(v452.val[3], 3uLL), v452.val[3], 0x3DuLL);
  v452.val[3] = veorq_s8(v374, v369);
  v380 = v125;
  v381 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL), v377), v125);
  v382 = veorq_s8(v381, vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL));
  v383 = vsraq_n_u64(vshlq_n_s64(v452.val[1], 0x38uLL), v452.val[1], 8uLL);
  v452.val[1] = vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL);
  v384 = veorq_s8(v378, v125);
  v385 = veorq_s8(v384, v379);
  v386 = vsraq_n_u64(vshlq_n_s64(v374, 0x38uLL), v374, 8uLL);
  v387 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v385);
  v452.val[1] = vaddq_s64(v452.val[1], v382);
  v452.val[3] = vaddq_s64(v386, v452.val[3]);
  v452.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v452.val[1], vandq_s8(vaddq_s64(v452.val[1], v452.val[1]), *&STACK[0x5750])), *&STACK[0x57A0]), v252);
  v388 = veorq_s8(vaddq_s64(vsubq_s64(v387, vandq_s8(vaddq_s64(v387, v387), *&STACK[0x5750])), *&STACK[0x57A0]), v252);
  v389 = veorq_s8(v388, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v390 = veorq_s8(v452.val[1], vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL));
  v391 = vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL);
  v392 = vsraq_n_u64(vshlq_n_s64(v452.val[1], 0x38uLL), v452.val[1], 8uLL);
  v452.val[1] = vaddq_s64(v391, v389);
  v452.val[2] = vaddq_s64(v383, v452.val[2]);
  v393 = vaddq_s64(v392, v390);
  v394 = vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL);
  v452.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v452.val[1], v452.val[1]), v345), v452.val[1]), *&STACK[0x5790]), v264);
  v395 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v393, v393), v345), v393), *&STACK[0x5790]), v264);
  v396 = veorq_s8(v395, vsraq_n_u64(vshlq_n_s64(v390, 3uLL), v390, 0x3DuLL));
  v397 = veorq_s8(v452.val[1], v394);
  v398 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), v396), v189);
  v452.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452.val[1], 0x38uLL), v452.val[1], 8uLL), v397), v189);
  v399 = veorq_s8(v452.val[1], vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL));
  v400 = veorq_s8(v398, vsraq_n_u64(vshlq_n_s64(v396, 3uLL), v396, 0x3DuLL));
  v401 = vsraq_n_u64(vshlq_n_s64(v452.val[1], 0x38uLL), v452.val[1], 8uLL);
  v452.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v398, 0x38uLL), v398, 8uLL), v400);
  v402 = vaddq_s64(v401, v399);
  v403 = veorq_s8(*&STACK[0x5530], *&STACK[0x5560]);
  v404 = veorq_s8(v403, *&STACK[0x5520]);
  v452.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v452.val[1], v279), vorrq_s8(v452.val[1], v260)), v260), v281), vnegq_s64(vandq_s8(vshlq_n_s64(v335, 3uLL), v249))), vshlq_u64(veorq_s8(v452.val[2], *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5650], 3uLL), v249))));
  v405 = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v402, v279), vorrq_s8(v402, v260)), v260), v281), vnegq_s64(vandq_s8(vshlq_n_s64(v331, 3uLL), v249))), vshlq_u64(veorq_s8(v452.val[3], *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5640], 3uLL), v249))));
  v406 = vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v352, v352), *&STACK[0x5710]), *&STACK[0x5720]), v352);
  v407 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(vaddq_s64(v355, v355), *&STACK[0x5710]), *&STACK[0x5720]), v355), *&STACK[0x57B0]);
  v452.val[1] = veorq_s8(v407, *&STACK[0x57C0]);
  v408 = veorq_s8(v407, *&STACK[0x5780]);
  v452.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452.val[1], 0x38uLL), v452.val[1], 8uLL), v408), v219);
  v409 = veorq_s8(v452.val[1], vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v452.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452.val[1], 0x38uLL), v452.val[1], 8uLL), v409);
  v452.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v452.val[1], *&STACK[0x5770]), vorrq_s8(v452.val[1], v226)), v226), *&STACK[0x5760]);
  v410 = veorq_s8(v452.val[1], vsraq_n_u64(vshlq_n_s64(v409, 3uLL), v409, 0x3DuLL));
  v411 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v404), v189);
  v452.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452.val[1], 0x38uLL), v452.val[1], 8uLL), v410), v380);
  v452.val[3] = vsraq_n_u64(vshlq_n_s64(v410, 3uLL), v410, 0x3DuLL);
  v412 = veorq_s8(v411, vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL));
  v452.val[2] = veorq_s8(v452.val[1], v452.val[3]);
  v452.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452.val[1], 0x38uLL), v452.val[1], 8uLL), v452.val[2]);
  v452.val[1] = vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL);
  v413 = veorq_s8(vaddq_s64(vsubq_s64(v452.val[3], vandq_s8(vaddq_s64(v452.val[3], v452.val[3]), *&STACK[0x5750])), *&STACK[0x57A0]), v252);
  v452.val[2] = veorq_s8(v413, vsraq_n_u64(vshlq_n_s64(v452.val[2], 3uLL), v452.val[2], 0x3DuLL));
  v414 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL), v452.val[2]);
  v415 = vaddq_s64(v452.val[1], v412);
  v416 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v414, v414), v345), v414), *&STACK[0x5790]), v264);
  v452.val[1] = veorq_s8(v416, vsraq_n_u64(vshlq_n_s64(v452.val[2], 3uLL), v452.val[2], 0x3DuLL));
  v417 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL), v452.val[1]), v189);
  v418 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v417, 0x38uLL), v417, 8uLL), veorq_s8(v417, vsraq_n_u64(vshlq_n_s64(v452.val[1], 3uLL), v452.val[1], 0x3DuLL)));
  v419 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v418, v279), vorrq_s8(v418, v260)), v260), v281), vnegq_s64(vandq_s8(vshlq_n_s64(v310, 3uLL), v249)));
  v420 = veorq_s8(*&STACK[0x5550], *&STACK[0x5560]);
  v452.val[1] = veorq_s8(v420, *&STACK[0x5540]);
  v421 = vaddq_s64(v406, *&STACK[0x57B0]);
  v422 = veorq_s8(v419, vshlq_u64(veorq_s8(v415, *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5660], 3uLL), v249))));
  v423 = veorq_s8(v421, *&STACK[0x57C0]);
  v424 = vsraq_n_u64(vshlq_n_s64(v423, 0x38uLL), v423, 8uLL);
  v425 = veorq_s8(v421, *&STACK[0x5780]);
  v426 = vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL);
  v427 = veorq_s8(vaddq_s64(v424, v425), v363);
  v428 = veorq_s8(v427, vsraq_n_u64(vshlq_n_s64(v425, 3uLL), v425, 0x3DuLL));
  v429 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL), v428);
  v430 = vsraq_n_u64(vshlq_n_s64(v428, 3uLL), v428, 0x3DuLL);
  v431 = vsraq_n_u64(vshlq_n_s64(v452.val[1], 3uLL), v452.val[1], 0x3DuLL);
  v432 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v429, *&STACK[0x5770]), vorrq_s8(v429, v226)), v226), *&STACK[0x5760]);
  v433 = veorq_s8(v432, v430);
  v434 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v432, 0x38uLL), v432, 8uLL), v433), v380);
  v435 = veorq_s8(vaddq_s64(v426, v452.val[1]), v189);
  v436 = veorq_s8(v434, vsraq_n_u64(vshlq_n_s64(v433, 3uLL), v433, 0x3DuLL));
  v452.val[1] = vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL);
  v437 = veorq_s8(v435, v431);
  v438 = vaddq_s64(v452.val[1], v436);
  v452.val[1] = vsraq_n_u64(vshlq_n_s64(v435, 0x38uLL), v435, 8uLL);
  v439 = veorq_s8(vaddq_s64(vsubq_s64(v438, vandq_s8(vaddq_s64(v438, v438), *&STACK[0x5750])), *&STACK[0x57A0]), v252);
  v440 = veorq_s8(v439, vsraq_n_u64(vshlq_n_s64(v436, 3uLL), v436, 0x3DuLL));
  v441 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v439, 0x38uLL), v439, 8uLL), v440);
  v442 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v441, v441), v345), v441), *&STACK[0x5790]), v264);
  v443 = veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL));
  v444 = vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL);
  v445 = vshlq_u64(veorq_s8(vaddq_s64(v452.val[1], v437), *&STACK[0x4620]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5670], 3uLL), v249)));
  v446 = veorq_s8(vaddq_s64(v444, v443), v189);
  v447 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v446, 0x38uLL), v446, 8uLL), veorq_s8(v446, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL)));
  v448 = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v447, v279), vorrq_s8(v447, v260)), v260), v281), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x5620], 3uLL), v249))), v445);
  v449 = *&STACK[0x5630];
  v449.i64[1] = vqtbl4q_s8(v452, *&STACK[0x5510]).u64[0];
  v450 = vrev64q_s8(v449);
  *(a1 + v3 - 6) = veorq_s8(vextq_s8(v450, v450, 8uLL), *&STACK[0x5680]);
  return (*(STACK[0x57D8] + 8 * ((63 * (v5 == 0)) ^ v4)))(a1 - 16);
}

uint64_t sub_1007C1378()
{
  v0 = STACK[0x3C6C];
  *STACK[0x6440] = -258641891;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007C13A4(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x92F8];
  v4 = STACK[0x57D8];
  STACK[0xD2B8] = *(STACK[0x57D8] + 8 * v2);
  return (*(v4 + 8 * (v2 + 4289)))(v3, a2, 1238384546, 998, 43);
}

uint64_t sub_1007C14B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v4 + 3064);
  v6 = *(v4 + 3080);
  v7 = *(v4 + 3099);
  v8 = *(v4 + 3100);
  v9 = *(v4 + 3104);
  v10 = *(v4 + 3124);
  LODWORD(STACK[0x57C0]) = *(v4 + 3160);
  return (*(STACK[0x57D8] + 8 * (v3 - 18019)))(v5, v6, a3, v10, v8, v7, v9);
}

uint64_t sub_1007C1614()
{
  v1 = *(STACK[0xA350] + 24);
  STACK[0xB558] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 != 0) * (((v0 - 25465) | 0x2C0) ^ 0x12F7)) ^ v0)))();
}

uint64_t sub_1007C17C4()
{
  v2 = *(v1 - 0x683CBC57EAB92A3ELL);
  STACK[0xA7F0] = 0;
  STACK[0xBA98] = 0;
  return (*(STACK[0x57D8] + 8 * (((((v0 - 1044534687) & 0x3E41F777 ^ 0xFFFFA0E8) + ((v0 - 1187638370) & 0x46C9DF5E)) * (v2 == 0x308E083E0C524CBELL)) ^ v0)))();
}

uint64_t sub_1007C19E4()
{
  LODWORD(STACK[0xA344]) = 0;
  STACK[0xA138] = 4;
  v1 = STACK[0x51B8];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x2440)))(&STACK[0x1D1CD], &STACK[0x9454], &STACK[0xA138], 0, 0);
  v4 = STACK[0x2088];
  STACK[0x1D4E0] = 551690071 * STACK[0x2088] + v3;
  v5 = LODWORD(STACK[0x2084]) - 551690071 * v4;
  LODWORD(STACK[0x1D4CC]) = v5;
  STACK[0x1D4D8] = -551690071 * v4;
  LODWORD(STACK[0x1D4D0]) = 551690071 * v4;
  LODWORD(STACK[0x1D4C4]) = (551690071 * v4) ^ LODWORD(STACK[0x2080]);
  LODWORD(STACK[0x1D4C0]) = (v1 - 1079089617) ^ (551690071 * v4);
  LODWORD(STACK[0x1D4C8]) = v5 + 524;
  v6 = (*(v2 + 8 * (v1 ^ 0x2411)))(v0 - 240);
  return (*(v2 + 8 * SLODWORD(STACK[0x1D4D4])))(v6);
}

uint64_t sub_1007C1AD4()
{
  v0 = STACK[0x57D8];
  v1 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0xA6E0]);
  STACK[0xA6E0] = 0;
  return (*(v0 + 8 * SLODWORD(STACK[0x1510])))(v1);
}

uint64_t sub_1007C1B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  LODWORD(STACK[0x38A8]) = LODWORD(STACK[0x4E50]) | LODWORD(STACK[0x4E60]);
  LODWORD(STACK[0x38A0]) = LODWORD(STACK[0x4E20]) | LODWORD(STACK[0x4E38]);
  LODWORD(STACK[0x4E38]) = STACK[0x4E08] & (LODWORD(STACK[0x4E10]) ^ 0x7074AFB5);
  v15 = a6 & 0x6E ^ 0x45;
  v16 = a5 & 0x36 ^ 0xA9;
  v17 = ((a6 ^ (2 * ((a6 ^ v12) & (2 * ((a6 ^ v12) & (2 * ((a6 ^ v12) & (2 * ((a6 ^ v12) & (2 * ((a6 ^ 0x44) & (2 * (v15 ^ a6 & 0xA)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15))) << 16) | (((a5 ^ (2 * ((a5 ^ v12) & (2 * ((a5 ^ v12) & (2 * ((a5 ^ v12) & (2 * ((a5 ^ v12) & (2 * ((a5 ^ v12) & (2 * (v16 ^ a5 & 0x12)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x36) << 8);
  v18 = (v13 & 0xE4 | 0x10) ^ v13 & 0xE0;
  v19 = v9 & 0xF0 ^ 0x8E;
  v20 = v7 & 0xB2 ^ 0xEF;
  v21 = (((v9 ^ (2 * ((v9 ^ v12) & (2 * ((v9 ^ v12) & (2 * ((v9 ^ v12) & (2 * ((v9 ^ v12) & (2 * ((v9 ^ v12) & (2 * v19) ^ v19)) ^ v19)) ^ v19)) ^ v19)) ^ v19))) ^ 0xF0) << 16) | (((v7 ^ (2 * ((v7 ^ v12) & (2 * ((v7 ^ v12) & (2 * ((v7 ^ v12) & (2 * ((v7 ^ v12) & (2 * ((v7 ^ v12) & (2 * (v20 ^ v7 & 0x16)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0xB2) << 8);
  v22 = v8 & 0x3E ^ 0xAD;
  v23 = (v8 ^ (2 * ((v8 ^ v12) & (2 * ((v8 ^ v12) & (2 * ((v8 ^ v12) & (2 * ((v8 ^ v12) & (2 * ((v8 ^ v12) & (2 * (v22 ^ v8 & 0x1A)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22)));
  LODWORD(STACK[0x3368]) = v23;
  v24 = (v23 ^ 0x35B5BA) & ~v21 | v21 & 0xCA4A00;
  v25 = STACK[0x4E78];
  LOBYTE(v21) = STACK[0x4E78] & 0xAA ^ 0xE3;
  v26 = STACK[0x4E68];
  v27 = STACK[0x4E68] & 8 | 0x92;
  v28 = STACK[0x4E70];
  v29 = (((v28 ^ (2 * ((v28 ^ v12) & (2 * ((v28 ^ v12) & (2 * ((v28 ^ v12) & (2 * ((v28 ^ v12) & (2 * (v28 & v12)) ^ v28 & v12)) ^ v28 & v12)) ^ v28 & v12)) ^ v28 & v12))) ^ 0xE4) << 8) | (((v25 ^ (2 * ((v25 ^ v12) & (2 * ((v25 ^ v12) & (2 * ((v25 ^ v12) & (2 * ((v25 ^ v12) & (2 * ((v25 ^ 0x44) & (2 * ((v25 ^ 0x44) & 0xE ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xAA) << 16);
  v30 = STACK[0x4E80];
  LOBYTE(v21) = STACK[0x4E80] & 0xDA ^ 0xBB;
  v31 = (v30 ^ (2 * ((v30 ^ v12) & (2 * ((v30 ^ v12) & (2 * ((v30 ^ v12) & (2 * ((v30 ^ v12) & (2 * ((v30 ^ v12) & (2 * ((v30 ^ v12) & 0x3E ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)));
  v32 = ((v31 ^ 0x67B053) & ~v29 | v29 & 0x984F00) << 8;
  LODWORD(STACK[0x32D8]) = (v32 ^ 0x904414FF) & ((v26 ^ (2 * ((v26 ^ v12) & (2 * ((v26 ^ v12) & (2 * ((v26 ^ v12) & (2 * ((v26 ^ v12) & (2 * ((v26 ^ v12) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) ^ 0xF0449454) | v32 & 0xFBB6B00;
  LOBYTE(v32) = v11 & 0x82 ^ 0xD7;
  v33 = (v31 << 16) | (((v11 ^ (2 * ((v11 ^ v12) & (2 * ((v11 ^ v12) & (2 * ((v11 ^ v12) & (2 * ((v11 ^ v12) & (2 * ((v11 ^ v12) & (2 * ((v11 ^ v12) & 0x26 ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32))) ^ 0x82) << 8);
  v34 = STACK[0x4EC8];
  v35 = STACK[0x4EC8] & 0x88 | 0x52;
  LODWORD(STACK[0x4E10]) = (((v33 ^ 0x10CFF) & ((v34 ^ (2 * ((v34 ^ v12) & (2 * ((v34 ^ v12) & (2 * ((v34 ^ v12) & (2 * ((v34 ^ v12) & (2 * ((v34 ^ v12) & (2 * v35) ^ v35)) ^ v35)) ^ v35)) ^ v35)) ^ v35))) ^ 0x890C7C) | v33 & 0x76F300) << 8) & 0x18598600;
  LOBYTE(v34) = v10 & 0x10 ^ 0x1E;
  LOBYTE(v30) = (a7 & 0xE4 | 0x19) ^ a7 & 0xF2;
  LODWORD(STACK[0x4E08]) = (((v17 ^ 0xD5AFFF) & ((v13 ^ (2 * ((v13 ^ v12) & (2 * ((v13 ^ v12) & (2 * ((v13 ^ v12) & (2 * ((v13 ^ v12) & (2 * ((v13 ^ v12) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x9A8EBC) | v17 & 0x657100) << 8) & 0x2C334F00;
  LODWORD(STACK[0x4E20]) = (v24 << 8) & 0x3A7D0100;
  v36 = (((v10 ^ (2 * ((v10 ^ v12) & (2 * ((v10 ^ v12) & (2 * ((v10 ^ v12) & (2 * ((v10 ^ v12) & (2 * ((v10 ^ v12) & (2 * v34) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34))) ^ 0x10) << 16) | (((a7 ^ (2 * ((a7 ^ v12) & (2 * ((a7 ^ v12) & (2 * ((a7 ^ v12) & (2 * ((a7 ^ v12) & (2 * ((a7 ^ v12) & (2 * ((a7 ^ v12) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0x16) << 8);
  LOBYTE(v17) = v14 & 0xBE ^ 0x6D;
  LODWORD(STACK[0x4A80]) = (((v14 ^ (2 * ((v14 ^ v12) & (2 * ((v14 ^ v12) & (2 * ((v14 ^ v12) & (2 * ((v14 ^ v12) & (2 * ((v14 ^ v12) & (2 * (v17 ^ v14 & 0x1A)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0x293DA3) & ~v36 | v36 & 0xD6C200) << 8;
  return (*(STACK[0x57D8] + 8 * SLODWORD(STACK[0x55A0])))();
}

uint64_t sub_1007C243C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = (((v2 ^ 0xC5146CC8) + 988517176) ^ ((v2 ^ 0xF10D8B28) + 250770648) ^ (a2 + 14655 + (v2 ^ 0xE6056774) + 435830838)) + 548930474;
  v4 = ((v3 ^ 0x1A8BB926) - 1410349617) ^ v3 ^ ((v3 ^ 0x29B0DFC6) - 1730895057) ^ ((v3 ^ 0x827B1A48) + 857695905) ^ ((v3 ^ 0xFFDBFFBF) + 1321173848);
  v5 = *(STACK[0xC6A8] + (v4 ^ 0x4E9B8317));
  *(a1 + (v4 ^ 0x4E9B8317)) = v5 - 2 * (v5 & 0xF) + 15;
  return (*(STACK[0x57D8] + 8 * ((11 * (v4 == 1318814487)) ^ a2)))();
}

uint64_t sub_1007C2580@<X0>(uint64_t a1@<X8>)
{
  v6 = v1 & 0xFFFFFFFC ^ 0xE4A0AA6F;
  LODWORD(STACK[0x5320]) = v6;
  v7 = STACK[0x50C8];
  v8 = *(STACK[0x50C8] + (*(a1 + v6) ^ 0x94));
  v9 = v1 & 0xFFFFFFFE ^ 0xE4A0AA6D;
  LODWORD(STACK[0x5328]) = v9;
  v10 = *(a1 + v9);
  LOBYTE(v9) = v8 ^ 0x9F ^ (v8 >> 4) ^ (((v8 ^ 0x9F) & 0xFC) >> 2);
  v11 = LODWORD(STACK[0x5360]) ^ 0x208D;
  LODWORD(STACK[0x5150]) = v11;
  LODWORD(STACK[0x4E70]) = v11 - 9391;
  LOBYTE(v8) = v11 + 81 + v10 - ((2 * v10) & 0x56);
  v12 = STACK[0x50B8];
  v13 = *(STACK[0x50B8] + (v10 ^ 0x41));
  LODWORD(v10) = (v8 - 15) ^ 0xE1;
  v14 = v1 & 0xFFFFFFF0 ^ 0xE4A0AA6F;
  LODWORD(STACK[0x5308]) = v14;
  v15 = STACK[0xD468];
  STACK[0x52B0] = STACK[0xD468];
  v16 = *(v7 + (*(v15 + v14) ^ 0x6FLL));
  LODWORD(v10) = v9 ^ 9 | ((v13 ^ v10) << 16);
  v17 = v1;
  v18 = v1 & 0xFFFFFFF2 ^ 0xE4A0AA6D;
  LODWORD(STACK[0x5310]) = v18;
  v19 = STACK[0x50D0];
  v20 = v16 ^ 0xFFFFFF9F ^ (v16 >> 4) ^ (((v16 ^ 0xFFFFFF9F) & 0xFC) >> 2) ^ 0xFFFFFF8D | ((*(STACK[0x50D0] + (*(v15 + v18) ^ 0x2ALL)) ^ 0x72) << 16);
  LODWORD(STACK[0x5318]) = v1 ^ 0xE4A0AA6D;
  v21 = *(v15 + (v1 ^ 0xE4A0AA6D));
  LODWORD(v21) = *(v12 + (v21 ^ 0x86)) ^ (v21 - ((2 * v21) & 0x56) + 43) ^ 0x4A;
  v22 = v1 & 0xFFFFFFFD ^ 0xE4A0AA6F;
  LODWORD(STACK[0x52C8]) = v22;
  LODWORD(v10) = v10 | (v21 << 24);
  LODWORD(v21) = *(v7 + (*(v15 + v22) ^ 8));
  v23 = v1 & 0xFFFFFFFA ^ 0xE4A0AA6D;
  LODWORD(STACK[0x52D8]) = v23;
  v24 = *(v7 + (*(v15 + v23) ^ 0xE7));
  v25 = v1 & 0xFFFFFFF3 ^ 0xE4A0AA6D;
  LODWORD(STACK[0x52C0]) = v25;
  v26 = STACK[0x50C0];
  v27 = v20 | ((*(STACK[0x50C0] + (*(v15 + v25) ^ 0xDFLL)) ^ 0x24) << 24);
  v28 = v1 & 0xFFFFFFF9 ^ 0xE4A0AA6F;
  LODWORD(STACK[0x52D0]) = v28;
  v29 = *(v7 + (*(v15 + v28) ^ 0xD0));
  v30 = v1 & 0xFFFFFFF7 ^ 0xE4A0AA6D;
  LODWORD(STACK[0x52A8]) = v30;
  LODWORD(v12) = *(v26 + (*(v15 + v30) ^ 0xFCLL));
  v31 = v17 & 0xFFFFFFF4 ^ 0xE4A0AA6F;
  LODWORD(STACK[0x5300]) = v31;
  LODWORD(v12) = *(v19 + (*(v15 + v31) ^ 0x23)) ^ 0xE3 | ((v12 ^ 0x55555555) << 24);
  v32 = v17 & 0xFFFFFFF1 ^ 0xE4A0AA6F;
  LODWORD(STACK[0x5298]) = v32;
  v33 = *(v7 + (*(v15 + v32) ^ 0x7BLL));
  v34 = ((v24 ^ 0xFFFFFF9F ^ (v24 >> 4) ^ (((v24 ^ 0xFFFFFF9F) & 0xFC) >> 2) ^ 0xFFFE) << 16) | ((v29 ^ 0x9F ^ (v29 >> 4) ^ (((v29 ^ 0x9F) & 0xFC) >> 2) ^ 0x36) << 8);
  v35 = v17 & 0xFFFFFFF8 ^ 0xE4A0AA6F;
  LODWORD(STACK[0x52B8]) = v35;
  v36 = v34 | *(v19 + (*(v15 + v35) ^ 0x82)) ^ 0xA;
  v37 = v17 & 0xFFFFFFFB ^ 0xE4A0AA6D;
  LODWORD(STACK[0x52F0]) = v37;
  v38 = v36 | ((*(v19 + (*(v15 + v37) ^ 0x94)) ^ 0xA4) << 24);
  v39 = v27 | ((v33 ^ 0x9F ^ (v33 >> 4) ^ (((v33 ^ 0x9F) & 0xFC) >> 2) ^ 0x34) << 8);
  LODWORD(STACK[0x52F8]) = v17;
  v40 = v17 & 0xFFFFFFF5 ^ 0xE4A0AA6F;
  LODWORD(STACK[0x52A0]) = v40;
  LOBYTE(v40) = *(v7 + (*(v15 + v40) ^ 0x74));
  LODWORD(v12) = v12 & 0xFFFF00FF | (((v40 ^ ((((((v40 ^ 0x9F) >> ((v40 ^ 0x9F) & 2)) >> ((v40 ^ 0x9F) & 2 ^ 2)) ^ v40 ^ 0x9F) & 0xFC) >> 2)) ^ 0xF7) << 8);
  v41 = v17 & 0xFFFFFFF6 ^ 0xE4A0AA6D;
  LODWORD(STACK[0x52E0]) = v41;
  v42 = v12 | ((*(v26 + (*(v15 + v41) ^ 0x86)) ^ 0x95) << 16);
  v43 = (v10 & 0xFFFF00FF | ((v21 ^ 0x9F ^ (v21 >> 4) ^ (((v21 ^ 0x9F) & 0xFC) >> 2) ^ 0x65) << 8)) ^ 0xA6;
  LODWORD(v10) = v43 & STACK[0x54D0];
  LODWORD(v12) = STACK[0x54D0];
  LODWORD(STACK[0x5138]) = v43;
  v44 = STACK[0x55B0];
  LOBYTE(v36) = STACK[0x5500];
  v45 = STACK[0x55A0];
  LODWORD(v15) = STACK[0x5790];
  v46 = (((v43 ^ (2 * v10)) & STACK[0x55A0]) << LODWORD(STACK[0x5790])) ^ (((v43 ^ (2 * v10)) & STACK[0x55B0]) >> v36);
  v47 = STACK[0x54F0];
  LODWORD(v7) = STACK[0x54F0];
  LODWORD(STACK[0x5148]) = v38;
  LODWORD(v10) = v38 ^ (2 * (v38 & v47));
  LODWORD(v26) = STACK[0x5338];
  LOBYTE(v19) = STACK[0x5450];
  v48 = STACK[0x5440];
  LOBYTE(v38) = STACK[0x57A0];
  LODWORD(v10) = ((v10 & STACK[0x5440]) >> v38) ^ ((v10 & STACK[0x5338]) << v19);
  LODWORD(STACK[0x5140]) = v39;
  v49 = (((v39 ^ (2 * (v39 & v12))) & v48) >> v38) + (((v39 ^ (2 * (v39 & v12))) & v45) << v19);
  LODWORD(STACK[0x5368]) = v49;
  LODWORD(STACK[0x5130]) = v42;
  v50 = (((v42 ^ (2 * (v42 & v7))) & v44) >> v36) + (((v42 ^ (2 * (v42 & v7))) & v26) << v15);
  STACK[0x5288] = v50;
  LODWORD(STACK[0x5560]) = v2;
  v51 = STACK[0x5520];
  v52 = 971513357 * (LODWORD(STACK[0x5520]) - v2 - v49);
  LODWORD(STACK[0x5290]) = v46;
  LODWORD(v21) = 1022759217 * ((v52 - HIWORD(v52) + ((v52 - HIWORD(v52)) >> 8)) ^ v46);
  LODWORD(v21) = v21 - WORD1(v21) + ((v21 - WORD1(v21)) >> 8);
  v53 = STACK[0x5380];
  LODWORD(v10) = v21 - v10;
  v54 = 1022759217 * ((971513357 * (v53 - LODWORD(STACK[0x5358]) - v49) - ((971513357 * (v53 - LODWORD(STACK[0x5358]) - v49)) >> 16) + ((971513357 * (v53 - LODWORD(STACK[0x5358]) - v49) - ((971513357 * (v53 - LODWORD(STACK[0x5358]) - v49)) >> 16)) >> 8)) ^ v46);
  v55 = HIWORD(v54);
  v56 = v54 - HIWORD(v54);
  v57 = v56 + (v56 >> 8);
  v58 = v57 + v10 - v21;
  v59 = 714080521 * v58;
  v60 = (714080521 * v58) >> 16;
  v61 = v60 + v59 - v50 + ((v60 + v59) >> 8);
  v62 = (((v56 ^ v55) + 2 * (v56 & v55)) ^ v4) + (v56 ^ v55) + 2 * (v56 & v55) - 2 * ((((v56 ^ v55) + 2 * (v56 & v55)) ^ v4) & ((v56 ^ v55) + 2 * (v56 & v55)));
  v63 = 714080521 * v10 + ((714080521 * v10) >> 16) + ((714080521 * v10 + ((714080521 * v10) >> 16)) >> 8);
  *(v5 - 152) = v3;
  v64 = v63 ^ LODWORD(STACK[0x55C0]);
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5330]) < 0x8A6B497;
  v65 = v64 & 0x10000;
  if ((v64 & 0x10000 & v63) != 0)
  {
    v65 = -v65;
  }

  v66 = ((((v65 + v63) ^ v64 & 0xFFFEFFFF) - v57) ^ v57) + 2 * ((((v65 + v63) ^ v64 & 0xFFFEFFFF) - v57) & v57);
  v67 = v51 & 0x800000;
  if ((v52 & v51 & 0x800000) != 0)
  {
    v67 = -v67;
  }

  v68 = v52 ^ v51 & 0xFF7FFFFF ^ (v67 + v52);
  LODWORD(STACK[0x5280]) = v57 - v58;
  LODWORD(STACK[0x5278]) = v60 ^ v59;
  LODWORD(STACK[0x5270]) = v60 & v59;
  v69 = STACK[0xD460];
  v70 = ((2010920219 * v61) ^ ((2010920219 * v61) >> 16) ^ (((2010920219 * v61) ^ ((2010920219 * v61) >> 16)) >> 8)) + STACK[0xD460];
  LODWORD(STACK[0x57C0]) = v70;
  v71 = (v70 & 1) == 0;
  v72 = STACK[0x5510];
  if (v70)
  {
    v73 = v68;
  }

  else
  {
    v73 = STACK[0x5510];
  }

  LODWORD(STACK[0x51C8]) = v73;
  v74 = STACK[0x5550];
  if (v71)
  {
    v75 = STACK[0x5550];
  }

  else
  {
    v75 = v72;
  }

  LODWORD(STACK[0x5520]) = v75;
  if (v71)
  {
    v76 = STACK[0x5530];
  }

  else
  {
    v76 = v74;
  }

  if (!v71)
  {
    v68 = STACK[0x5530];
  }

  LODWORD(STACK[0x51C0]) = v68;
  v77 = STACK[0x5370];
  if (v71)
  {
    v78 = v53;
  }

  else
  {
    v78 = STACK[0x5370];
  }

  LODWORD(STACK[0x5268]) = v78;
  v79 = STACK[0x5540];
  if (v71)
  {
    v80 = STACK[0x5540];
  }

  else
  {
    v80 = v53;
  }

  LODWORD(STACK[0x5380]) = v80;
  if (v71)
  {
    v81 = v77;
  }

  else
  {
    v81 = STACK[0x5378];
  }

  if (v71)
  {
    v79 = STACK[0x5378];
  }

  LODWORD(STACK[0x5378]) = v79;
  v82 = STACK[0x55F0];
  v83 = STACK[0x55D0];
  if (v71)
  {
    v84 = STACK[0x55F0];
  }

  else
  {
    v84 = STACK[0x55D0];
  }

  LODWORD(STACK[0x5260]) = v84;
  v85 = STACK[0x55E0];
  if (v71)
  {
    v86 = STACK[0x55E0];
  }

  else
  {
    v86 = v82;
  }

  LODWORD(STACK[0x51A0]) = v86;
  v87 = STACK[0x5600];
  if (v71)
  {
    v88 = STACK[0x5600];
  }

  else
  {
    v88 = v85;
  }

  LODWORD(STACK[0x55F0]) = v88;
  if (v71)
  {
    v89 = v83;
  }

  else
  {
    v89 = v87;
  }

  v90 = STACK[0x5408];
  v91 = STACK[0x5400];
  if (v71)
  {
    v92 = STACK[0x5408];
  }

  else
  {
    v92 = STACK[0x5400];
  }

  LODWORD(STACK[0x5200]) = v92;
  v93 = STACK[0x53F8];
  if (!v71)
  {
    v91 = STACK[0x53F8];
  }

  LODWORD(STACK[0x5400]) = v91;
  if (v71)
  {
    v94 = v93;
  }

  else
  {
    v94 = STACK[0x53F0];
  }

  if (v71)
  {
    v90 = STACK[0x53F0];
  }

  LODWORD(STACK[0x51B0]) = v90;
  v95 = STACK[0x5620];
  v96 = STACK[0x5780];
  if (v71)
  {
    v97 = STACK[0x5620];
  }

  else
  {
    v97 = STACK[0x5780];
  }

  LODWORD(STACK[0x5470]) = v97;
  v98 = STACK[0x5700];
  if (!v71)
  {
    v96 = STACK[0x5700];
  }

  LODWORD(STACK[0x5198]) = v96;
  if (v71)
  {
    v99 = STACK[0x5770];
  }

  else
  {
    v99 = v95;
  }

  if (v71)
  {
    v100 = v98;
  }

  else
  {
    v100 = STACK[0x5770];
  }

  LODWORD(STACK[0x5700]) = v100;
  v101 = STACK[0x53E8];
  v102 = STACK[0x53E0];
  if (v71)
  {
    v103 = STACK[0x53E8];
  }

  else
  {
    v103 = STACK[0x53E0];
  }

  LODWORD(STACK[0x55C0]) = v103;
  if (v71)
  {
    v104 = v102;
  }

  else
  {
    v104 = STACK[0x53D8];
  }

  if (v71)
  {
    v105 = STACK[0x53D0];
  }

  else
  {
    v105 = v101;
  }

  if (v71)
  {
    v106 = STACK[0x53D8];
  }

  else
  {
    v106 = STACK[0x53D0];
  }

  LODWORD(STACK[0x53E8]) = v106;
  if (v71)
  {
    v107 = STACK[0x5590];
  }

  else
  {
    v107 = STACK[0x5740];
  }

  if (v71)
  {
    v108 = STACK[0x5750];
  }

  else
  {
    v108 = STACK[0x5590];
  }

  if (v71)
  {
    v109 = STACK[0x5760];
  }

  else
  {
    v109 = STACK[0x5750];
  }

  if (v71)
  {
    v110 = STACK[0x5740];
  }

  else
  {
    v110 = STACK[0x5760];
  }

  v111 = STACK[0x53C0];
  v112 = STACK[0x53B8];
  if (v71)
  {
    v113 = STACK[0x53C0];
  }

  else
  {
    v113 = STACK[0x53B8];
  }

  LODWORD(STACK[0x5258]) = v113;
  if (v71)
  {
    v114 = STACK[0x53C8];
  }

  else
  {
    v114 = v111;
  }

  v115 = STACK[0x53B0];
  if (v71)
  {
    v116 = STACK[0x53B0];
  }

  else
  {
    v116 = STACK[0x53C8];
  }

  LODWORD(STACK[0x53C0]) = v116;
  if (v71)
  {
    v117 = v112;
  }

  else
  {
    v117 = v115;
  }

  v118 = STACK[0x5730];
  if (v71)
  {
    v119 = STACK[0x5730];
  }

  else
  {
    v119 = v62;
  }

  LODWORD(STACK[0x51F8]) = v119;
  v120 = STACK[0x5710];
  if (v71)
  {
    v121 = STACK[0x5710];
  }

  else
  {
    v121 = v118;
  }

  LODWORD(STACK[0x5230]) = v121;
  if (v71)
  {
    v122 = STACK[0x5720];
  }

  else
  {
    v122 = v120;
  }

  if (v71)
  {
    v123 = v62;
  }

  else
  {
    v123 = STACK[0x5720];
  }

  v124 = STACK[0x53A8];
  v125 = STACK[0x5390];
  if (v71)
  {
    v126 = STACK[0x5390];
  }

  else
  {
    v126 = STACK[0x53A8];
  }

  LODWORD(STACK[0x5250]) = v126;
  if (v71)
  {
    v127 = v124;
  }

  else
  {
    v127 = STACK[0x53A0];
  }

  if (v71)
  {
    v128 = STACK[0x5398];
  }

  else
  {
    v128 = v125;
  }

  if (v71)
  {
    v129 = STACK[0x53A0];
  }

  else
  {
    v129 = STACK[0x5398];
  }

  v130 = STACK[0x56D0];
  v131 = STACK[0x56C0];
  if (v71)
  {
    v132 = STACK[0x56D0];
  }

  else
  {
    v132 = STACK[0x56C0];
  }

  LODWORD(STACK[0x5248]) = v132;
  v133 = STACK[0x56E0];
  if (v71)
  {
    v134 = STACK[0x56E0];
  }

  else
  {
    v134 = v130;
  }

  LODWORD(STACK[0x56D0]) = v134;
  v135 = STACK[0x56F0];
  if (v71)
  {
    v136 = STACK[0x56F0];
  }

  else
  {
    v136 = v133;
  }

  LODWORD(STACK[0x5220]) = v136;
  if (v71)
  {
    v135 = v131;
  }

  v137 = STACK[0x5680];
  v138 = STACK[0x5670];
  if (v71)
  {
    v139 = STACK[0x5680];
  }

  else
  {
    v139 = STACK[0x5670];
  }

  LODWORD(STACK[0x5240]) = v139;
  v140 = STACK[0x5580];
  if (v71)
  {
    v141 = v138;
  }

  else
  {
    v141 = STACK[0x5580];
  }

  LODWORD(STACK[0x5670]) = v141;
  v142 = STACK[0x5660];
  if (v71)
  {
    v143 = v140;
  }

  else
  {
    v143 = STACK[0x5660];
  }

  LODWORD(STACK[0x5218]) = v143;
  if (v71)
  {
    v137 = v142;
  }

  v144 = STACK[0x5640];
  v145 = STACK[0x5630];
  if (v71)
  {
    v146 = STACK[0x5640];
  }

  else
  {
    v146 = STACK[0x5630];
  }

  LODWORD(STACK[0x51E0]) = v146;
  if (v71)
  {
    v147 = v145;
  }

  else
  {
    v147 = v66;
  }

  LODWORD(STACK[0x5630]) = v147;
  if (v71)
  {
    v148 = v66;
  }

  else
  {
    v148 = STACK[0x5650];
  }

  if (v71)
  {
    v149 = STACK[0x5650];
  }

  else
  {
    v149 = v144;
  }

  LODWORD(STACK[0x51A8]) = v149;
  v150 = STACK[0x5610];
  v151 = STACK[0x54B0];
  if (v71)
  {
    v152 = STACK[0x5610];
  }

  else
  {
    v152 = STACK[0x54B0];
  }

  LODWORD(STACK[0x51D8]) = v152;
  v153 = STACK[0x5570];
  if (v71)
  {
    v154 = v151;
  }

  else
  {
    v154 = STACK[0x5570];
  }

  LODWORD(STACK[0x54B0]) = v154;
  v155 = STACK[0x54C0];
  if (v71)
  {
    v156 = STACK[0x54C0];
  }

  else
  {
    v156 = v150;
  }

  LODWORD(STACK[0x5210]) = v156;
  if (v71)
  {
    v155 = v153;
  }

  v157 = STACK[0x54A0];
  v158 = STACK[0x5430];
  if (v71)
  {
    v159 = STACK[0x54A0];
  }

  else
  {
    v159 = STACK[0x5430];
  }

  LODWORD(STACK[0x5238]) = v159;
  v160 = STACK[0x5490];
  if (v71)
  {
    v161 = v158;
  }

  else
  {
    v161 = STACK[0x5490];
  }

  LODWORD(STACK[0x5190]) = v161;
  v162 = STACK[0x5480];
  if (!v71)
  {
    v160 = STACK[0x5480];
  }

  LODWORD(STACK[0x5208]) = v160;
  if (v71)
  {
    v157 = v162;
  }

  v163 = STACK[0x5410];
  v164 = STACK[0x5560];
  if (v71)
  {
    v165 = STACK[0x5560];
  }

  else
  {
    v165 = STACK[0x5410];
  }

  LODWORD(STACK[0x51D0]) = v165;
  v166 = STACK[0x5388];
  if (!v71)
  {
    v163 = STACK[0x5388];
  }

  LODWORD(STACK[0x5228]) = v163;
  if (v71)
  {
    v167 = v166;
  }

  else
  {
    v167 = STACK[0x5420];
  }

  if (v71)
  {
    v168 = STACK[0x5420];
  }

  else
  {
    v168 = v164;
  }

  LODWORD(STACK[0x5420]) = v168;
  v169 = STACK[0x57C0];
  v170 = STACK[0x51C8];
  if ((STACK[0x57C0] & 2) != 0)
  {
    v171 = v76;
  }

  else
  {
    v171 = STACK[0x51C8];
  }

  LODWORD(STACK[0x5510]) = v171;
  if ((v169 & 2) != 0)
  {
    v172 = v170;
  }

  else
  {
    v172 = v76;
  }

  LODWORD(STACK[0x5530]) = v172;
  v173 = STACK[0x5520];
  v174 = STACK[0x51C0];
  if ((v169 & 2) != 0)
  {
    v175 = STACK[0x51C0];
  }

  else
  {
    v175 = STACK[0x5520];
  }

  LODWORD(STACK[0x5550]) = v175;
  if ((v169 & 2) != 0)
  {
    v176 = v173;
  }

  else
  {
    v176 = v174;
  }

  LODWORD(STACK[0x5520]) = v176;
  v177 = STACK[0x5380];
  if ((v169 & 2) != 0)
  {
    v178 = STACK[0x5380];
  }

  else
  {
    v178 = v81;
  }

  LODWORD(STACK[0x5370]) = v178;
  if ((v169 & 2) != 0)
  {
    v179 = v81;
  }

  else
  {
    v179 = v177;
  }

  LODWORD(STACK[0x5540]) = v179;
  v180 = STACK[0x5268];
  v181 = STACK[0x5378];
  if ((v169 & 2) != 0)
  {
    v182 = STACK[0x5378];
  }

  else
  {
    v182 = STACK[0x5268];
  }

  LODWORD(STACK[0x5380]) = v182;
  if ((v169 & 2) != 0)
  {
    v183 = v180;
  }

  else
  {
    v183 = v181;
  }

  LODWORD(STACK[0x5378]) = v183;
  v184 = STACK[0x51A0];
  if ((v169 & 2) != 0)
  {
    v185 = STACK[0x51A0];
  }

  else
  {
    v185 = v89;
  }

  LODWORD(STACK[0x55D0]) = v185;
  if ((v169 & 2) == 0)
  {
    v89 = v184;
  }

  LODWORD(STACK[0x55E0]) = v89;
  v186 = STACK[0x5260];
  v187 = STACK[0x55F0];
  if ((v169 & 2) != 0)
  {
    v188 = STACK[0x5260];
  }

  else
  {
    v188 = STACK[0x55F0];
  }

  LODWORD(STACK[0x5600]) = v188;
  if ((v169 & 2) != 0)
  {
    v189 = v187;
  }

  else
  {
    v189 = v186;
  }

  LODWORD(STACK[0x55F0]) = v189;
  v190 = STACK[0x5200];
  if ((v169 & 2) != 0)
  {
    v191 = STACK[0x5200];
  }

  else
  {
    v191 = v94;
  }

  LODWORD(STACK[0x53F8]) = v191;
  if ((v169 & 2) != 0)
  {
    v192 = v94;
  }

  else
  {
    v192 = v190;
  }

  LODWORD(STACK[0x5408]) = v192;
  v193 = STACK[0x5400];
  v194 = STACK[0x51B0];
  if ((v169 & 2) != 0)
  {
    v195 = STACK[0x5400];
  }

  else
  {
    v195 = STACK[0x51B0];
  }

  LODWORD(STACK[0x53F0]) = v195;
  if ((v169 & 2) != 0)
  {
    v196 = v194;
  }

  else
  {
    v196 = v193;
  }

  LODWORD(STACK[0x5400]) = v196;
  v197 = STACK[0x5198];
  if ((v169 & 2) != 0)
  {
    v198 = v99;
  }

  else
  {
    v198 = STACK[0x5198];
  }

  LODWORD(STACK[0x5780]) = v198;
  if ((v169 & 2) != 0)
  {
    v199 = v197;
  }

  else
  {
    v199 = v99;
  }

  LODWORD(STACK[0x5770]) = v199;
  if ((v169 & 2) != 0)
  {
    v200 = v104;
  }

  else
  {
    v200 = v105;
  }

  LODWORD(STACK[0x53D0]) = v200;
  if ((v169 & 2) == 0)
  {
    v105 = v104;
  }

  LODWORD(STACK[0x53E0]) = v105;
  v201 = STACK[0x5470];
  v202 = STACK[0x5700];
  if ((v169 & 2) != 0)
  {
    v203 = STACK[0x5700];
  }

  else
  {
    v203 = STACK[0x5470];
  }

  LODWORD(STACK[0x5620]) = v203;
  if ((v169 & 2) != 0)
  {
    v204 = v201;
  }

  else
  {
    v204 = v202;
  }

  LODWORD(STACK[0x5700]) = v204;
  if ((v169 & 2) != 0)
  {
    v205 = v107;
  }

  else
  {
    v205 = v109;
  }

  LODWORD(STACK[0x5760]) = v205;
  if ((v169 & 2) != 0)
  {
    v206 = v109;
  }

  else
  {
    v206 = v107;
  }

  LODWORD(STACK[0x5590]) = v206;
  if ((v169 & 2) != 0)
  {
    v207 = v108;
  }

  else
  {
    v207 = v110;
  }

  LODWORD(STACK[0x5740]) = v207;
  if ((v169 & 2) != 0)
  {
    v208 = v110;
  }

  else
  {
    v208 = v108;
  }

  LODWORD(STACK[0x5750]) = v208;
  v209 = STACK[0x55C0];
  v210 = STACK[0x53E8];
  if ((v169 & 2) != 0)
  {
    v211 = STACK[0x55C0];
  }

  else
  {
    v211 = STACK[0x53E8];
  }

  LODWORD(STACK[0x53D8]) = v211;
  if ((v169 & 2) != 0)
  {
    v212 = v210;
  }

  else
  {
    v212 = v209;
  }

  LODWORD(STACK[0x53E8]) = v212;
  if ((v169 & 2) != 0)
  {
    v213 = v114;
  }

  else
  {
    v213 = v117;
  }

  LODWORD(STACK[0x53B8]) = v213;
  if ((v169 & 2) != 0)
  {
    v214 = v117;
  }

  else
  {
    v214 = v114;
  }

  LODWORD(STACK[0x53C8]) = v214;
  v215 = STACK[0x5258];
  v216 = STACK[0x53C0];
  if ((v169 & 2) != 0)
  {
    v217 = STACK[0x5258];
  }

  else
  {
    v217 = STACK[0x53C0];
  }

  LODWORD(STACK[0x53B0]) = v217;
  if ((v169 & 2) != 0)
  {
    v218 = v216;
  }

  else
  {
    v218 = v215;
  }

  LODWORD(STACK[0x53C0]) = v218;
  v219 = STACK[0x51F8];
  if ((v169 & 2) != 0)
  {
    v220 = v122;
  }

  else
  {
    v220 = STACK[0x51F8];
  }

  LODWORD(STACK[0x5730]) = v220;
  if ((v169 & 2) != 0)
  {
    v221 = v219;
  }

  else
  {
    v221 = v122;
  }

  LODWORD(STACK[0x5720]) = v221;
  v222 = STACK[0x5230];
  if ((v169 & 2) != 0)
  {
    v223 = v123;
  }

  else
  {
    v223 = STACK[0x5230];
  }

  LODWORD(STACK[0x5710]) = v223;
  if ((v169 & 2) != 0)
  {
    v224 = v222;
  }

  else
  {
    v224 = v123;
  }

  LODWORD(STACK[0x5470]) = v224;
  if ((v169 & 2) != 0)
  {
    v225 = v128;
  }

  else
  {
    v225 = v127;
  }

  LODWORD(STACK[0x53A8]) = v225;
  if ((v169 & 2) != 0)
  {
    v226 = v127;
  }

  else
  {
    v226 = v128;
  }

  LODWORD(STACK[0x5398]) = v226;
  v227 = STACK[0x5250];
  if ((v169 & 2) != 0)
  {
    v228 = v129;
  }

  else
  {
    v228 = STACK[0x5250];
  }

  LODWORD(STACK[0x5390]) = v228;
  if ((v169 & 2) != 0)
  {
    v229 = v227;
  }

  else
  {
    v229 = v129;
  }

  LODWORD(STACK[0x53A0]) = v229;
  v230 = STACK[0x56D0];
  if ((v169 & 2) != 0)
  {
    v231 = v135;
  }

  else
  {
    v231 = STACK[0x56D0];
  }

  LODWORD(STACK[0x56E0]) = v231;
  if ((v169 & 2) != 0)
  {
    v232 = v230;
  }

  else
  {
    v232 = v135;
  }

  LODWORD(STACK[0x56C0]) = v232;
  v233 = STACK[0x5248];
  v234 = STACK[0x5220];
  if ((v169 & 2) != 0)
  {
    v235 = STACK[0x5220];
  }

  else
  {
    v235 = STACK[0x5248];
  }

  LODWORD(STACK[0x56D0]) = v235;
  if ((v169 & 2) != 0)
  {
    v236 = v233;
  }

  else
  {
    v236 = v234;
  }

  LODWORD(STACK[0x56F0]) = v236;
  v237 = STACK[0x5670];
  if ((v169 & 2) != 0)
  {
    v238 = STACK[0x5670];
  }

  else
  {
    v238 = v137;
  }

  LODWORD(STACK[0x5660]) = v238;
  if ((v169 & 2) != 0)
  {
    v239 = v137;
  }

  else
  {
    v239 = v237;
  }

  LODWORD(STACK[0x5670]) = v239;
  v240 = STACK[0x5240];
  v241 = STACK[0x5218];
  if ((v169 & 2) != 0)
  {
    v242 = STACK[0x5240];
  }

  else
  {
    v242 = STACK[0x5218];
  }

  LODWORD(STACK[0x5580]) = v242;
  if ((v169 & 2) != 0)
  {
    v243 = v241;
  }

  else
  {
    v243 = v240;
  }

  LODWORD(STACK[0x5680]) = v243;
  v244 = STACK[0x51E0];
  if ((v169 & 2) != 0)
  {
    v245 = STACK[0x51E0];
  }

  else
  {
    v245 = v148;
  }

  LODWORD(STACK[0x55C0]) = v245;
  if ((v169 & 2) != 0)
  {
    v246 = v148;
  }

  else
  {
    v246 = v244;
  }

  LODWORD(STACK[0x5640]) = v246;
  v247 = STACK[0x5630];
  v248 = STACK[0x51A8];
  if ((v169 & 2) != 0)
  {
    v249 = STACK[0x5630];
  }

  else
  {
    v249 = STACK[0x51A8];
  }

  LODWORD(STACK[0x5650]) = v249;
  if ((v169 & 2) != 0)
  {
    v250 = v248;
  }

  else
  {
    v250 = v247;
  }

  LODWORD(STACK[0x5630]) = v250;
  v251 = STACK[0x51D8];
  if ((v169 & 2) != 0)
  {
    v252 = v155;
  }

  else
  {
    v252 = STACK[0x51D8];
  }

  LODWORD(STACK[0x5610]) = v252;
  if ((v169 & 2) != 0)
  {
    v253 = v251;
  }

  else
  {
    v253 = v155;
  }

  LODWORD(STACK[0x5570]) = v253;
  v254 = STACK[0x54B0];
  v255 = STACK[0x5210];
  if ((v169 & 2) != 0)
  {
    v256 = STACK[0x54B0];
  }

  else
  {
    v256 = STACK[0x5210];
  }

  LODWORD(STACK[0x54C0]) = v256;
  if ((v169 & 2) != 0)
  {
    v257 = v255;
  }

  else
  {
    v257 = v254;
  }

  LODWORD(STACK[0x54B0]) = v257;
  v258 = STACK[0x5190];
  if ((v169 & 2) != 0)
  {
    v259 = v157;
  }

  else
  {
    v259 = STACK[0x5190];
  }

  LODWORD(STACK[0x5430]) = v259;
  if ((v169 & 2) != 0)
  {
    v260 = v258;
  }

  else
  {
    v260 = v157;
  }

  LODWORD(STACK[0x5480]) = v260;
  v261 = STACK[0x5238];
  v262 = STACK[0x5208];
  if ((v169 & 2) != 0)
  {
    v263 = STACK[0x5238];
  }

  else
  {
    v263 = STACK[0x5208];
  }

  LODWORD(STACK[0x5490]) = v263;
  if ((v169 & 2) != 0)
  {
    v264 = v262;
  }

  else
  {
    v264 = v261;
  }

  LODWORD(STACK[0x54A0]) = v264;
  v265 = STACK[0x51D0];
  if ((v169 & 2) != 0)
  {
    v266 = STACK[0x51D0];
  }

  else
  {
    v266 = v167;
  }

  LODWORD(STACK[0x5388]) = v266;
  if ((v169 & 2) != 0)
  {
    v267 = v167;
  }

  else
  {
    v267 = v265;
  }

  LODWORD(STACK[0x5560]) = v267;
  v268 = STACK[0x5228];
  v269 = STACK[0x5420];
  if ((v169 & 2) != 0)
  {
    v270 = STACK[0x5420];
  }

  else
  {
    v270 = STACK[0x5228];
  }

  LODWORD(STACK[0x5410]) = v270;
  if ((v169 & 2) != 0)
  {
    v271 = v268;
  }

  else
  {
    v271 = v269;
  }

  LODWORD(STACK[0x5420]) = v271;
  v272 = STACK[0x5278];
  v273 = v272 + 2 * LODWORD(STACK[0x5270]) + ((v272 + 2 * LODWORD(STACK[0x5270])) >> 8) - STACK[0x5288];
  v274 = STACK[0x5288];
  v275 = v169 + LODWORD(STACK[0x5340]);
  v276 = STACK[0x5280];
  if (v275)
  {
    v277 = STACK[0x5280];
  }

  else
  {
    v277 = STACK[0x5290];
  }

  if (v275)
  {
    v276 = STACK[0x5288];
    v278 = STACK[0x5290];
  }

  else
  {
    v278 = STACK[0x5368];
  }

  if (v275)
  {
    v274 = STACK[0x5368];
  }

  v279 = STACK[0x50E0];
  v280 = STACK[0x5110];
  v281 = LODWORD(STACK[0x50E0]) ^ LODWORD(STACK[0x5110]) ^ v270;
  if ((v275 & 2) != 0)
  {
    v282 = v276;
  }

  else
  {
    v282 = v278;
  }

  v283 = v281 ^ v282;
  if ((v275 & 2) != 0)
  {
    v276 = v278;
    v284 = v274;
  }

  else
  {
    v284 = v277;
  }

  if ((v275 & 2) != 0)
  {
    v274 = v277;
  }

  v285 = STACK[0x50F0];
  v286 = (__ROR4__(__ROR4__(LODWORD(STACK[0x4EC8]) ^ (v283 - (v283 ^ LODWORD(STACK[0x50F0]))), 10) ^ 0xAC3D54EF, 22) ^ 0xF553BEB0) + v283;
  LODWORD(STACK[0x5290]) = LODWORD(STACK[0x50F0]) ^ v279;
  v287 = v285 ^ v279 ^ v280;
  v288 = v287 ^ LODWORD(STACK[0x50B0]) ^ v266 ^ v284;
  v289 = v287 ^ LODWORD(STACK[0x50A8]) ^ v267 ^ v274;
  v290 = LODWORD(STACK[0x5018]) ^ v286;
  STACK[0xD460] = v69 + 4 * BYTE1(v290);
  v291 = *(v69 + 4 * BYTE1(v290));
  STACK[0xD460] = v69 + 4 * BYTE1(v289);
  v292 = *(v69 + 4 * BYTE1(v289));
  v293 = v287 ^ LODWORD(STACK[0x5020]) ^ v271 ^ v276;
  STACK[0xD460] = v69 + 4 * BYTE2(v288);
  v294 = *(v69 + 4 * BYTE2(v288));
  STACK[0xD460] = v69 + 4 * BYTE2(v289);
  v295 = *(v69 + 4 * BYTE2(v289));
  STACK[0xD460] = v69;
  v296 = *(v69 + 4 * v289);
  STACK[0xD460] = v69 + 4 * BYTE2(v293);
  v297 = *(v69 + 4 * BYTE2(v293));
  STACK[0xD460] = v69;
  v298 = *(v69 + 4 * BYTE2(v290));
  STACK[0xD460] = v69 + 4 * v290;
  v299 = *(v69 + 4 * v290);
  STACK[0xD460] = v69 + 4 * HIBYTE(v288);
  v300 = *(v69 + 4 * HIBYTE(v288));
  STACK[0xD460] = v69 + 4 * BYTE1(v288);
  v301 = *(v69 + 4 * BYTE1(v288));
  STACK[0xD460] = v69 + 4 * v288;
  v302 = v295 ^ __ROR4__(*(v69 + 4 * v288), 16);
  STACK[0xD460] = v69 + 4 * v293;
  v303 = *(v69 + 4 * v293);
  STACK[0xD460] = v69 + 4 * HIBYTE(v293);
  v304 = *(v69 + 4 * HIBYTE(v293));
  v305 = BYTE1(v293);
  STACK[0xD460] = v69 + 4 * v305;
  v290 >>= 24;
  v306 = *(v69 + 4 * v305);
  STACK[0xD460] = v69 + 4 * v290;
  v307 = v302 ^ __ROR4__(v306, 8) ^ __ROR4__(*(v69 + 4 * v290), 24);
  v308 = STACK[0x50D8];
  v309 = LODWORD(STACK[0x50D8]) ^ LODWORD(STACK[0x5100]);
  v310 = v309 ^ __ROR4__(v291, 8) ^ v294 ^ __ROR4__(v296, 16) ^ __ROR4__(v304, 24);
  v311 = v309 ^ LODWORD(STACK[0x5098]) ^ v297 ^ __ROR4__(v299, 16) ^ __ROR4__(v301, 8);
  STACK[0xD460] = v69 + 4 * HIBYTE(v289);
  v312 = v311 ^ __ROR4__(*(v69 + 4 * HIBYTE(v289)), 24);
  v313 = LODWORD(STACK[0x50A0]) << (v272 & 1) << !(v272 & 1);
  v314 = v69 + LODWORD(STACK[0x54E0]) + ((2010920219 * v273) ^ ((2010920219 * v273) >> 16) ^ (((2010920219 * v273) ^ ((2010920219 * v273) >> 16)) >> 8));
  LODWORD(STACK[0x54E0]) = v314;
  v315 = v310 ^ (((v313 ^ 0xD6D51557) & STACK[0x55B0]) >> LODWORD(STACK[0x57A0])) ^ (((v313 ^ 0xD6D51557) & STACK[0x55A0]) << LODWORD(STACK[0x5790])) ^ v259;
  v316 = v307 - v314 + v275;
  v317 = LODWORD(STACK[0x4EC0]) ^ v260 ^ v316 & 0xFFFFBFFF;
  v318 = (v69 + 4 * HIBYTE(v315));
  STACK[0xD460] = v318;
  v319 = *v318;
  v320 = v316 & 0x4000;
  if ((v320 & v308) != 0)
  {
    v320 = -v320;
  }

  v321 = v317 ^ (v320 + v308);
  STACK[0xD460] = v69 + 4 * BYTE1(v321);
  v322 = *(v69 + 4 * BYTE1(v321));
  v323 = v312 ^ v263;
  v324 = (v312 ^ v263) >> 24;
  STACK[0xD460] = v69 + 4 * v324;
  v325 = *(v69 + 4 * v324);
  STACK[0xD460] = v69 + 4 * HIBYTE(v321);
  v326 = *(v69 + 4 * HIBYTE(v321));
  v327 = v298 ^ __ROR4__(v292, 8);
  STACK[0xD460] = v69 + 4 * BYTE1(v323);
  v328 = *(v69 + 4 * BYTE1(v323));
  v329 = v327 ^ __ROR4__(v300, 24);
  STACK[0xD460] = v69 + 4 * v323;
  v330 = *(v69 + 4 * v323);
  v331 = LODWORD(STACK[0x57C0]) + LODWORD(STACK[0x5460]);
  v332 = (v329 ^ __ROR4__(v303, 16)) - v275 + v331;
  v333 = v331;
  LODWORD(STACK[0x5460]) = v331;
  v334 = v309 ^ LODWORD(STACK[0x5010]) ^ v264 ^ v332;
  v335 = (v309 ^ LOBYTE(STACK[0x5010]) ^ v264 ^ v332);
  STACK[0xD460] = v69 + 4 * v335;
  v336 = *(v69 + 4 * v335);
  STACK[0xD460] = v69 + 4 * BYTE2(v321);
  v337 = *(v69 + 4 * BYTE2(v321));
  STACK[0xD460] = v69 + 4 * BYTE2(v315);
  v338 = *(v69 + 4 * BYTE2(v315));
  STACK[0xD460] = v69 + 4 * v321;
  v339 = *(v69 + 4 * v321);
  STACK[0xD460] = v69 + 4 * v315;
  v340 = *(v69 + 4 * v315);
  v341 = LODWORD(STACK[0x5008]) ^ v256 ^ __ROR4__(v328, 8);
  STACK[0xD460] = v69 + 4 * BYTE2(v334);
  v342 = *(v69 + 4 * BYTE2(v334));
  v343 = BYTE2(v323);
  STACK[0xD460] = v69 + 4 * v343;
  v344 = *(v69 + 4 * v343);
  STACK[0xD460] = v69 + 4 * HIBYTE(v334);
  v345 = v341 ^ v337 ^ __ROR4__(v340, 16) ^ __ROR4__(*(v69 + 4 * HIBYTE(v334)), 24);
  v346 = LODWORD(STACK[0x5000]) ^ __ROR4__(v319, 24) ^ __ROR4__(v322, 8) ^ LODWORD(STACK[0x5610]) ^ __ROR4__(v330, 16);
  v347 = LODWORD(STACK[0x4FF8]) ^ v257 ^ __ROR4__(v325, 24) ^ v338 ^ __ROR4__(v339, 16);
  STACK[0xD460] = v69 + 4 * BYTE1(v334);
  v348 = v347 ^ __ROR4__(*(v69 + 4 * BYTE1(v334)), 8);
  v349 = LODWORD(STACK[0x4FF0]) ^ LODWORD(STACK[0x5570]) ^ __ROR4__(v326, 24);
  v350 = BYTE1(v315);
  STACK[0xD460] = v69 + 4 * v350;
  v351 = v349 ^ __ROR4__(v336, 16) ^ v344 ^ __ROR4__(*(v69 + 4 * v350), 8);
  STACK[0xD460] = v69 + 4 * BYTE2(v348);
  v352 = *(v69 + 4 * BYTE2(v348));
  STACK[0xD460] = v69;
  v353 = *(v69 + 4 * HIBYTE(v345));
  STACK[0xD460] = v69 + 4 * HIBYTE(v348);
  v354 = *(v69 + 4 * HIBYTE(v348));
  STACK[0xD460] = v69 + 4 * HIBYTE(v351);
  v355 = v352 ^ __ROR4__(*(v69 + 4 * HIBYTE(v351)), 24);
  v356 = v346 ^ v342;
  STACK[0xD460] = v69 + 4 * BYTE2(v345);
  v357 = *(v69 + 4 * BYTE2(v345));
  STACK[0xD460] = v69;
  v358 = *(v69 + 4 * v351);
  STACK[0xD460] = v69 + 4 * BYTE1(v351);
  v359 = *(v69 + 4 * BYTE1(v351));
  STACK[0xD460] = v69 + 4 * HIBYTE(v356);
  HIDWORD(v360) = v358;
  LODWORD(v360) = v358;
  v361 = *(v69 + 4 * HIBYTE(v356));
  STACK[0xD460] = v69 + 4 * BYTE1(v345);
  v362 = (v360 >> 16) ^ __ROR4__(v354, 24) ^ __ROR4__(*(v69 + 4 * BYTE1(v345)), 8);
  STACK[0xD460] = v69 + 4 * v356;
  LODWORD(v353) = ((v353 >> (v273 & 0x18) >> (v273 & 0x18 ^ 0x18)) + (v353 << 8)) ^ __ROR4__(*(v69 + 4 * v356), 16);
  v363 = BYTE2(v351);
  STACK[0xD460] = v69 + 4 * v363;
  v364 = *(v69 + 4 * v363);
  STACK[0xD460] = v69 + 4 * v348;
  v365 = *(v69 + 4 * v348);
  STACK[0xD460] = v69 + 4 * BYTE1(v356);
  v366 = v355 ^ __ROR4__(*(v69 + 4 * BYTE1(v356)), 8);
  v367 = v353 ^ v364;
  STACK[0xD460] = v69 + 4 * v345;
  LODWORD(v353) = v366 ^ __ROR4__(*(v69 + 4 * v345), 16);
  STACK[0xD460] = v69 + 4 * BYTE2(v356);
  v368 = *(v69 + 4 * BYTE2(v356));
  v369 = BYTE1(v348);
  STACK[0xD460] = v69 + 4 * v369;
  v370 = (v362 ^ v368) + 954403502 - ((2 * (v362 ^ v368)) & 0x71C6155C);
  v371 = (v370 ^ LODWORD(STACK[0x5348])) - ((2 * (v370 ^ LODWORD(STACK[0x5348]))) & 0x941123D6) - 905408021;
  LODWORD(v360) = __ROR4__(*(v69 + 4 * v369), 8);
  v372 = LODWORD(STACK[0x4EB8]) ^ ((v371 ^ LODWORD(STACK[0x5118])) - ((2 * (v371 ^ LODWORD(STACK[0x5118]))) & 0xD2DB2AAC) - 378694314);
  v373 = v372 + 954403502 - ((2 * v372) & 0x71C6155C);
  v374 = (LODWORD(STACK[0x4EA0]) ^ (LODWORD(STACK[0x4FE8]) + (v367 ^ v360) + 1)) + 2 * ((LODWORD(STACK[0x4FE8]) + (v367 ^ v360) + 1) & LODWORD(STACK[0x4EA8]));
  v375 = LODWORD(STACK[0x5108]) ^ LODWORD(STACK[0x50F8]);
  v376 = v375 ^ LODWORD(STACK[0x5090]);
  v377 = v376 ^ LODWORD(STACK[0x5650]) ^ v357 ^ __ROR4__(v359, 8) ^ __ROR4__(v361, 24);
  LODWORD(v360) = __ROR4__(v365, 16);
  v378 = v377 ^ v360;
  LODWORD(v353) = v375 ^ LODWORD(STACK[0x4EF8]) ^ LODWORD(STACK[0x5630]) ^ (LODWORD(STACK[0x4EB0]) + v353);
  STACK[0xD460] = v69 + 4 * (v377 ^ v360);
  v379 = *(v69 + 4 * (v377 ^ v360));
  STACK[0xD460] = v69 + 4 * BYTE1(v353);
  v380 = *(v69 + 4 * BYTE1(v353));
  v381 = v376 ^ LODWORD(STACK[0x55C0]) ^ v374;
  STACK[0xD460] = v69 + 4 * v381;
  v382 = *(v69 + 4 * v381);
  STACK[0xD460] = v69 + 4 * BYTE2(v378);
  v383 = v375 ^ LODWORD(STACK[0x4E98]) ^ LODWORD(STACK[0x4FE0]) ^ LODWORD(STACK[0x5640]);
  v384 = *(v69 + 4 * BYTE2(v378));
  STACK[0xD460] = v69;
  v385 = *(v69 + 4 * HIBYTE(v378));
  v386 = v383 ^ v373;
  STACK[0xD460] = v69 + 4 * v386;
  v387 = *(v69 + 4 * v386);
  STACK[0xD460] = v69 + 4 * BYTE2(v353);
  v388 = *(v69 + 4 * BYTE2(v353));
  STACK[0xD460] = v69 + 4 * BYTE1(v381);
  v389 = *(v69 + 4 * BYTE1(v381));
  STACK[0xD460] = v69 + 4 * BYTE1(v386);
  v390 = *(v69 + 4 * BYTE1(v386));
  STACK[0xD460] = v69 + 4 * v353;
  v391 = *(v69 + 4 * v353);
  v392 = v387 >> (STACK[0x5540] & 0x10) >> (STACK[0x5540] & 0x10 ^ 0x10);
  STACK[0xD460] = v69 + 4 * BYTE2(v381);
  v393 = *(v69 + 4 * BYTE2(v381));
  STACK[0xD460] = v69 + 4 * HIBYTE(v386);
  v394 = v384 ^ __ROR4__(v389, 8) ^ __ROR4__(v391, 16) ^ __ROR4__(*(v69 + 4 * HIBYTE(v386)), 24);
  v395 = BYTE1(v378);
  STACK[0xD460] = v69 + 4 * v395;
  LODWORD(v353) = BYTE3(v353);
  v396 = *(v69 + 4 * v395);
  STACK[0xD460] = v69 + 4 * v353;
  v397 = *(v69 + 4 * v353);
  v398 = BYTE2(v386);
  STACK[0xD460] = v69 + 4 * v398;
  v399 = HIBYTE(v381);
  v400 = *(v69 + 4 * v398);
  STACK[0xD460] = v69 + 4 * v399;
  v401 = STACK[0x4EF0];
  if ((v394 & STACK[0x4EF0]) != 0)
  {
    v401 = STACK[0x4E78];
  }

  v402 = LODWORD(STACK[0x4FD0]) ^ LODWORD(STACK[0x5660]) ^ __ROR4__(v382, 16) ^ __ROR4__(v396, 8) ^ __ROR4__(v397, 24) ^ v400;
  v403 = LODWORD(STACK[0x4FC8]) ^ LODWORD(STACK[0x5680]) ^ __ROR4__(v379, 16) ^ v388 ^ __ROR4__(v390, 8) ^ __ROR4__(*(v69 + 4 * v399), 24);
  STACK[0xD460] = v69 + 4 * HIBYTE(v403);
  v404 = LODWORD(STACK[0x4FC0]) ^ LODWORD(STACK[0x5670]) ^ __ROR4__(v380, 8) ^ __ROR4__(v385, 24) ^ (v387 << 16) ^ v392;
  v405 = *(v69 + 4 * HIBYTE(v403));
  STACK[0xD460] = v69 + 4 * BYTE2(v403);
  v406 = *(v69 + 4 * BYTE2(v403));
  STACK[0xD460] = v69;
  v407 = *(v69 + 4 * v403);
  v408 = v404 ^ v393;
  STACK[0xD460] = v69 + 4 * BYTE1(v402);
  v409 = *(v69 + 4 * BYTE1(v402));
  STACK[0xD460] = v69 + 4 * HIBYTE(v408);
  v410 = *(v69 + 4 * HIBYTE(v408));
  v411 = LODWORD(STACK[0x4FD8]) ^ LODWORD(STACK[0x5580]) ^ (v401 + v394);
  STACK[0xD460] = v69 + 4 * (LOBYTE(STACK[0x4FD8]) ^ LOBYTE(STACK[0x5580]) ^ (v401 + v394));
  v412 = *(v69 + 4 * v411);
  v413 = v406 ^ __ROR4__(v409, 8);
  STACK[0xD460] = v69 + 4 * v402;
  v414 = *(v69 + 4 * v402);
  v415 = v413 ^ __ROR4__(v410, 24);
  STACK[0xD460] = v69 + 4 * BYTE2(v408);
  v416 = *(v69 + 4 * BYTE2(v408));
  v417 = v415 ^ __ROR4__(v412, 16);
  STACK[0xD460] = v69 + 4 * v408;
  v418 = *(v69 + 4 * v408);
  STACK[0xD460] = v69 + 4 * BYTE2(v411);
  v419 = *(v69 + 4 * BYTE2(v411));
  STACK[0xD460] = v69 + 4 * BYTE2(v402);
  v420 = *(v69 + 4 * BYTE2(v402));
  STACK[0xD460] = v69 + 4 * BYTE1(v411);
  v421 = v419 ^ __ROR4__(v407, 16);
  v422 = *(v69 + 4 * BYTE1(v411));
  v423 = BYTE1(v403);
  STACK[0xD460] = v69 + 4 * v423;
  v424 = *(v69 + 4 * v423);
  v425 = BYTE1(v408);
  STACK[0xD460] = v69 + 4 * v425;
  v402 >>= 24;
  v426 = *(v69 + 4 * v425);
  STACK[0xD460] = v69 + 4 * v402;
  v427 = v421 ^ __ROR4__(v426, 8) ^ __ROR4__(*(v69 + 4 * v402), 24);
  STACK[0xD460] = v69 + 4 * HIBYTE(v411);
  v428 = LODWORD(STACK[0x4EE0]) ^ __ROR4__(v414, 16) ^ v416 ^ __ROR4__(v424, 8);
  v429 = __ROR4__(*(v69 + 4 * HIBYTE(v411)), 24);
  v430 = (v428 ^ v429) - (STACK[0x3D4] & (2 * (v428 ^ v429)));
  v431 = LODWORD(STACK[0x4FA8]) ^ LODWORD(STACK[0x56F0]) ^ __ROR4__(v405, 24) ^ __ROR4__(v418, 16) ^ v420 ^ __ROR4__(v422, 8);
  v432 = LODWORD(STACK[0x4FB8]) ^ LODWORD(STACK[0x56C0]) ^ (LODWORD(STACK[0x4E90]) + v427);
  v433 = LODWORD(STACK[0x4FA0]) ^ LODWORD(STACK[0x56E0]) ^ 0x108A83BF ^ (v417 & 0xEF757C40 | STACK[0x4EE8] & ~v417);
  STACK[0xD460] = v69 + 4 * BYTE2(v433);
  v434 = *(v69 + 4 * BYTE2(v433));
  v435 = LODWORD(STACK[0x4FB0]) ^ LODWORD(STACK[0x56D0]) ^ 0x863F0BCD ^ (v430 - 909951059);
  STACK[0xD460] = v69;
  v436 = *(v69 + 4 * HIBYTE(v433));
  STACK[0xD460] = v69 + 4 * v433;
  v437 = *(v69 + 4 * v433);
  STACK[0xD460] = v69 + 4 * v432;
  v438 = *(v69 + 4 * v432);
  STACK[0xD460] = v69 + 4 * BYTE1(v432);
  v439 = v434 ^ __ROR4__(v438, 16);
  v440 = *(v69 + 4 * BYTE1(v432));
  STACK[0xD460] = v69 + 4 * BYTE2(v435);
  v441 = *(v69 + 4 * BYTE2(v435));
  STACK[0xD460] = v69;
  v442 = *(v69 + 4 * BYTE2(v432));
  STACK[0xD460] = v69 + 4 * v431;
  v443 = *(v69 + 4 * v431);
  STACK[0xD460] = v69 + 4 * v435;
  HIDWORD(v444) = v440;
  LODWORD(v444) = v440;
  v445 = *(v69 + 4 * v435);
  STACK[0xD460] = v69 + 4 * HIBYTE(v435);
  v446 = *(v69 + 4 * HIBYTE(v435));
  v447 = v441 ^ __ROR4__(v443, 16);
  v448 = BYTE1(v435);
  STACK[0xD460] = v69 + 4 * v448;
  v449 = *(v69 + 4 * v448);
  STACK[0xD460] = v69 + 4 * BYTE2(v431);
  v450 = (v444 >> 8) ^ __ROR4__(v436, 24) ^ __ROR4__(v445, 16) ^ *(v69 + 4 * BYTE2(v431));
  STACK[0xD460] = v69 + 4 * BYTE1(v431);
  v432 >>= 24;
  v451 = *(v69 + 4 * BYTE1(v431));
  STACK[0xD460] = v69 + 4 * v432;
  v452 = v439 ^ __ROR4__(v446, 24) ^ __ROR4__(v451, 8);
  LODWORD(STACK[0x5368]) = v452;
  v431 >>= 24;
  v453 = *(v69 + 4 * v432);
  STACK[0xD460] = v69 + 4 * v431;
  v454 = *(v69 + 4 * v431);
  v455 = BYTE1(v433);
  STACK[0xD460] = v69 + 4 * v455;
  v456 = v447 ^ __ROR4__(v453, 24) ^ __ROR4__(*(v69 + 4 * v455), 8);
  LODWORD(STACK[0x5288]) = v456;
  v457 = (v333 ^ v275 ^ __ROR4__(v437, 16) ^ v442 ^ __ROR4__(v449, 8) ^ __ROR4__(v454, 24)) - LODWORD(STACK[0x54E0]);
  LODWORD(STACK[0x5340]) = v275;
  v458 = v457 + v275;
  v459 = STACK[0x4ED8];
  v460 = LODWORD(STACK[0x4ED8]) ^ LODWORD(STACK[0x5060]) ^ LODWORD(STACK[0x5730]) ^ (v457 + v275);
  STACK[0xD460] = v69 + 4 * HIBYTE(v460);
  v461 = *(v69 + 4 * HIBYTE(v460));
  v462 = v459 ^ v456;
  v463 = LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5088]) ^ v459 ^ v456;
  STACK[0xD460] = v69 + 4 * BYTE1(v463);
  v464 = v459 ^ LODWORD(STACK[0x5080]) ^ LODWORD(STACK[0x5470]) ^ v450;
  v465 = *(v69 + 4 * BYTE1(v463));
  STACK[0xD460] = v69 + 4 * BYTE1(v464);
  v466 = v459 ^ LODWORD(STACK[0x5078]) ^ LODWORD(STACK[0x5720]) ^ v452;
  v467 = *(v69 + 4 * BYTE1(v464));
  STACK[0xD460] = v69 + 4 * (v459 ^ LOBYTE(STACK[0x5078]) ^ LOBYTE(STACK[0x5720]) ^ v452);
  v468 = *(v69 + 4 * v466);
  STACK[0xD460] = v69 + 4 * v464;
  v469 = *(v69 + 4 * v464);
  STACK[0xD460] = v69 + 4 * BYTE2(v464);
  v470 = *(v69 + 4 * BYTE2(v464));
  STACK[0xD460] = v69;
  v471 = *(v69 + 4 * HIBYTE(v466));
  STACK[0xD460] = v69 + 4 * HIBYTE(v463);
  v472 = *(v69 + 4 * HIBYTE(v463));
  STACK[0xD460] = v69 + 4 * BYTE2(v460);
  v473 = *(v69 + 4 * BYTE2(v460));
  STACK[0xD460] = v69 + 4 * BYTE1(v466);
  v474 = *(v69 + 4 * BYTE1(v466));
  STACK[0xD460] = v69 + 4 * v460;
  v475 = *(v69 + 4 * v460);
  v476 = BYTE1(v460);
  STACK[0xD460] = v69 + 4 * v476;
  v477 = *(v69 + 4 * v476);
  STACK[0xD460] = v69 + 4 * BYTE2(v463);
  v478 = *(v69 + 4 * BYTE2(v463));
  v479 = BYTE2(v466);
  STACK[0xD460] = v69 + 4 * v479;
  v480 = *(v69 + 4 * v479);
  STACK[0xD460] = v69 + 4 * v463;
  v464 >>= 24;
  v481 = *(v69 + 4 * v463);
  STACK[0xD460] = v69 + 4 * v464;
  v482 = LODWORD(STACK[0x4F78]) ^ LODWORD(STACK[0x5590]) ^ v470 ^ __ROR4__(v471, 24) ^ __ROR4__(v477, 8) ^ __ROR4__(v481, 16);
  v483 = LODWORD(STACK[0x4F70]) ^ LODWORD(STACK[0x5750]) ^ __ROR4__(v465, 8) ^ __ROR4__(v468, 16);
  v484 = LODWORD(STACK[0x4F68]) ^ LODWORD(STACK[0x5740]) ^ __ROR4__(v467, 8) ^ __ROR4__(v472, 24) ^ __ROR4__(v475, 16) ^ v480;
  v485 = LODWORD(STACK[0x4F60]) ^ LODWORD(STACK[0x5760]) ^ __ROR4__(v461, 24) ^ __ROR4__(v469, 16);
  v486 = *(v69 + 4 * v464);
  STACK[0xD460] = v69 + 4 * v484;
  v487 = *(v69 + 4 * v484);
  v488 = v485 ^ __ROR4__(v474, 8) ^ v478;
  STACK[0xD460] = v69 + 4 * BYTE1(v484);
  v489 = *(v69 + 4 * BYTE1(v484));
  STACK[0xD460] = v69 + 4 * v482;
  v490 = *(v69 + 4 * v482);
  STACK[0xD460] = v69 + 4 * BYTE2(v484);
  v491 = *(v69 + 4 * BYTE2(v484));
  STACK[0xD460] = v69;
  v492 = *(v69 + 4 * v488);
  STACK[0xD460] = v69 + 4 * BYTE2(v482);
  v484 >>= 24;
  v493 = *(v69 + 4 * BYTE2(v482));
  STACK[0xD460] = v69 + 4 * v484;
  v494 = *(v69 + 4 * v484);
  v495 = v483 ^ v473;
  STACK[0xD460] = v69 + 4 * HIBYTE(v482);
  v496 = *(v69 + 4 * HIBYTE(v482));
  v497 = v495 ^ __ROR4__(v486, 24);
  STACK[0xD460] = v69 + 4 * HIBYTE(v497);
  v498 = *(v69 + 4 * HIBYTE(v497));
  STACK[0xD460] = v69 + 4 * BYTE1(v488);
  v499 = *(v69 + 4 * BYTE1(v488));
  STACK[0xD460] = v69 + 4 * BYTE2(v497);
  v500 = *(v69 + 4 * BYTE2(v497));
  STACK[0xD460] = v69 + 4 * BYTE2(v488);
  v501 = *(v69 + 4 * BYTE2(v488));
  v502 = BYTE1(v482);
  STACK[0xD460] = v69 + 4 * v502;
  v488 >>= 24;
  v503 = *(v69 + 4 * v502);
  STACK[0xD460] = v69 + 4 * v488;
  v504 = *(v69 + 4 * v488);
  STACK[0xD460] = v69 + 4 * BYTE1(v497);
  v505 = *(v69 + 4 * BYTE1(v497));
  v506 = v497;
  STACK[0xD460] = v69 + 4 * v497;
  v507 = STACK[0x5290];
  v508 = LODWORD(STACK[0x5290]) ^ LODWORD(STACK[0x4F90]) ^ LODWORD(STACK[0x5780]) ^ __ROR4__(v487, 16) ^ __ROR4__(v496, 24) ^ __ROR4__(v499, 8) ^ v500;
  v509 = LODWORD(STACK[0x5290]) ^ LODWORD(STACK[0x5040]) ^ LODWORD(STACK[0x5620]) ^ __ROR4__(v489, 8) ^ __ROR4__(v490, 16) ^ __ROR4__(v498, 24);
  v510 = LODWORD(STACK[0x5290]) ^ LODWORD(STACK[0x4F80]) ^ LODWORD(STACK[0x5770]) ^ v491 ^ __ROR4__(v503, 8) ^ __ROR4__(v504, 24);
  LODWORD(v444) = __ROR4__(*(v69 + 4 * v506), 16);
  v511 = v510 ^ v444;
  v512 = (v510 ^ v444);
  STACK[0xD460] = v69 + 4 * v512;
  v513 = *(v69 + 4 * v512);
  v514 = v509 ^ v501;
  STACK[0xD460] = v69 + 4 * v508;
  v515 = *(v69 + 4 * v508);
  STACK[0xD460] = v69 + 4 * BYTE2(v511);
  v516 = *(v69 + 4 * BYTE2(v511));
  STACK[0xD460] = v69 + 4 * HIBYTE(v514);
  v517 = *(v69 + 4 * HIBYTE(v514));
  v518 = v507 ^ LODWORD(STACK[0x5038]) ^ LODWORD(STACK[0x5700]) ^ __ROR4__(v492, 16);
  STACK[0xD460] = v69 + 4 * BYTE1(v508);
  v519 = *(v69 + 4 * BYTE1(v508));
  v520 = v518 ^ v493;
  STACK[0xD460] = v69 + 4 * BYTE1(v514);
  v521 = *(v69 + 4 * BYTE1(v514));
  v522 = v520 ^ __ROR4__(v494, 24);
  STACK[0xD460] = v69 + 4 * BYTE1(v511);
  v523 = *(v69 + 4 * BYTE1(v511));
  v524 = v522 ^ __ROR4__(v505, 8);
  STACK[0xD460] = v69 + 4 * BYTE2(v524);
  v525 = *(v69 + 4 * BYTE2(v524));
  STACK[0xD460] = v69 + 4 * v514;
  v526 = *(v69 + 4 * v514);
  STACK[0xD460] = v69 + 4 * HIBYTE(v508);
  v511 >>= 24;
  v527 = *(v69 + 4 * HIBYTE(v508));
  STACK[0xD460] = v69 + 4 * v511;
  v528 = *(v69 + 4 * v511);
  STACK[0xD460] = v69 + 4 * v524;
  v529 = *(v69 + 4 * v524);
  v530 = BYTE1(v524);
  STACK[0xD460] = v69 + 4 * BYTE1(v524);
  v524 >>= 24;
  v531 = *(v69 + 4 * v530);
  STACK[0xD460] = v69 + 4 * v524;
  v532 = *(v69 + 4 * v524);
  v533 = BYTE2(v514);
  STACK[0xD460] = v69 + 4 * v533;
  v534 = *(v69 + 4 * v533);
  v535 = BYTE2(v508);
  STACK[0xD460] = v69 + 4 * v535;
  v536 = *(v69 + 4 * v535);
  STACK[0xD460] = v69;
  v537 = LODWORD(STACK[0x4F38]) ^ LODWORD(STACK[0x55F0]) ^ __ROR4__(v515, 16) ^ v516 ^ __ROR4__(v517, 24) ^ __ROR4__(v531, 8);
  v538 = LODWORD(STACK[0x4F30]) ^ LODWORD(STACK[0x5600]) ^ __ROR4__(v513, 16) ^ __ROR4__(v521, 8) ^ __ROR4__(v532, 24) ^ v536;
  v539 = LODWORD(STACK[0x4F28]) ^ LODWORD(STACK[0x55E0]) ^ __ROR4__(v519, 8) ^ v525 ^ __ROR4__(v526, 16) ^ __ROR4__(v528, 24);
  v540 = LODWORD(STACK[0x4F20]) ^ LODWORD(STACK[0x55D0]) ^ __ROR4__(v523, 8) ^ __ROR4__(v527, 24);
  v541 = STACK[0xD450];
  STACK[0xD450] += 4 * HIBYTE(v537);
  v542 = *(v541 + 4 * HIBYTE(v537));
  STACK[0xD450] = v541 + 4 * BYTE1(v538);
  v543 = *(v541 + 4 * BYTE1(v538));
  v544 = v540 ^ __ROR4__(v529, 16) ^ v534;
  STACK[0xD450] = v541 + 4 * v537;
  v545 = *(v541 + 4 * v537);
  STACK[0xD450] = v541 + 4 * HIBYTE(v539);
  v546 = *(v541 + 4 * HIBYTE(v539));
  STACK[0xD450] = v541 + 4 * v538;
  v547 = LODWORD(STACK[0x5510]) ^ __ROR4__(*(v541 + 4 * BYTE2(v539)), 24) ^ __ROR4__(*(v541 + 4 * v544), 8) ^ __ROR4__(v542, 16) ^ v543;
  v548 = *(v541 + 4 * v538);
  STACK[0xD450] = v541 + 4 * BYTE1(v537);
  v549 = LODWORD(STACK[0x5520]) ^ __ROR4__(*(v541 + 4 * HIBYTE(v544)), 16) ^ __ROR4__(*(v541 + 4 * BYTE2(v537)), 24) ^ *(v541 + 4 * BYTE1(v539)) ^ __ROR4__(v548, 8);
  v550 = *(v541 + 4 * BYTE1(v544)) ^ LODWORD(STACK[0x5550]) ^ __ROR4__(*(v541 + 4 * BYTE2(v538)), 24) ^ __ROR4__(v545, 8);
  v551 = *(v541 + 4 * v539);
  v552 = *(v541 + 4 * HIBYTE(v538));
  LODWORD(v444) = __ROR4__(v546, 16);
  v553 = *(v541 + 4 * BYTE2(v544));
  v554 = (v550 ^ v444) - 675245605 - ((2 * (v550 ^ v444)) & 0xAF8123B6);
  LODWORD(STACK[0x5280]) = v554;
  v555 = *(v541 + 4 * BYTE1(v537));
  STACK[0xD450] = v541;
  v556 = STACK[0x5120];
  v557 = (v554 ^ v556) - 1624439082 - ((2 * (v554 ^ v556)) & 0x3E5A0DAC);
  LODWORD(v541) = (v547 - 675245605 - ((2 * v547) & 0xAF8123B6)) ^ LODWORD(STACK[0x5120]);
  v558 = (v549 - 675245605 - ((2 * v549) & 0xAF8123B6)) ^ LODWORD(STACK[0x5120]);
  v559 = STACK[0x50E8];
  v560 = (v558 - 1624439082 - ((2 * v558) & 0x3E5A0DAC)) ^ LODWORD(STACK[0x50E8]);
  LODWORD(STACK[0x5278]) = v560 + 2092901755 - ((2 * v560) & 0xF97E4AF6);
  LODWORD(v541) = (v541 - 1624439082 - ((2 * v541) & 0x3E5A0DAC)) ^ v559;
  LODWORD(STACK[0x5270]) = v541 + 2092901755 - ((2 * v541) & 0xF97E4AF6);
  v561 = (LODWORD(STACK[0x5530]) - 675245605 - ((2 * LODWORD(STACK[0x5530])) & 0xAF8123B6)) ^ __ROR4__(v551, 8) ^ __ROR4__(v552, 16) ^ __ROR4__(v553, 24) ^ v555;
  v562 = LODWORD(STACK[0x5070]) ^ LODWORD(STACK[0x5390]) ^ v462;
  LODWORD(v541) = v459 ^ LODWORD(STACK[0x5050]) ^ LODWORD(STACK[0x53A0]) ^ v450;
  v563 = STACK[0xD460];
  STACK[0xD460] += 4 * BYTE2(v541);
  v564 = v459 ^ LODWORD(STACK[0x5058]) ^ LODWORD(STACK[0x53A8]) ^ v458;
  v565 = *(v563 + 4 * BYTE2(v541));
  STACK[0xD460] = v563;
  v566 = *(v563 + 4 * BYTE1(v564));
  STACK[0xD460] = v563 + 4 * HIBYTE(v564);
  v567 = v459 ^ LODWORD(STACK[0x5068]) ^ LODWORD(STACK[0x5398]) ^ LODWORD(STACK[0x5368]);
  v568 = *(v563 + 4 * HIBYTE(v564));
  STACK[0xD460] = v563 + 4 * BYTE1(v567);
  v569 = *(v563 + 4 * BYTE1(v567));
  STACK[0xD460] = v563 + 4 * v541;
  v570 = *(v563 + 4 * v541);
  STACK[0xD460] = v563 + 4 * BYTE1(v562);
  v571 = *(v563 + 4 * BYTE1(v562));
  LODWORD(STACK[0x5268]) = (v557 ^ v559) + 2092901755 - ((2 * (v557 ^ v559)) & 0xF97E4AF6);
  STACK[0xD460] = v563 + 4 * v562;
  v572 = *(v563 + 4 * v562);
  STACK[0xD460] = v563 + 4 * BYTE2(v564);
  v573 = *(v563 + 4 * BYTE2(v564));
  STACK[0xD460] = v563 + 4 * v564;
  v574 = *(v563 + 4 * v564);
  STACK[0xD460] = v563 + 4 * v567;
  v575 = *(v563 + 4 * v567);
  v576 = (v561 ^ v556) - 1624439082 - ((2 * (v561 ^ v556)) & 0x3E5A0DAC);
  STACK[0xD460] = v563 + 4 * BYTE2(v562);
  v577 = *(v563 + 4 * BYTE2(v562));
  STACK[0xD460] = v563 + 4 * BYTE1(v541);
  v562 >>= 24;
  v578 = *(v563 + 4 * BYTE1(v541));
  STACK[0xD460] = v563 + 4 * v562;
  LODWORD(v541) = BYTE3(v541);
  v579 = *(v563 + 4 * v562);
  STACK[0xD460] = v563 + 4 * v541;
  LODWORD(v541) = *(v563 + 4 * v541);
  v580 = (v576 ^ v559) + 2092901755 - ((2 * (v576 ^ v559)) & 0xF97E4AF6);
  STACK[0xD460] = v563 + 4 * BYTE2(v567);
  v581 = *(v563 + 4 * BYTE2(v567));
  v567 >>= 24;
  STACK[0xD460] = v563 + 4 * v567;
  v582 = LODWORD(STACK[0x4F50]) ^ LODWORD(STACK[0x53C0]) ^ __ROR4__(v571, 8) ^ v573 ^ __ROR4__(v575, 16) ^ __ROR4__(v541, 24);
  v583 = LODWORD(STACK[0x4F48]) ^ LODWORD(STACK[0x53B8]) ^ v565 ^ __ROR4__(v566, 8) ^ __ROR4__(v572, 16) ^ __ROR4__(*(v563 + 4 * v567), 24);
  LODWORD(v541) = LODWORD(STACK[0x4F40]) ^ LODWORD(STACK[0x53B0]) ^ __ROR4__(v574, 16) ^ __ROR4__(v578, 8);
  STACK[0xD460] = v563 + 4 * v582;
  v584 = *(v563 + 4 * v582);
  v585 = v541 ^ __ROR4__(v579, 24) ^ v581;
  STACK[0xD460] = v563 + 4 * v583;
  v586 = *(v563 + 4 * v583);
  STACK[0xD460] = v563 + 4 * BYTE1(v585);
  LODWORD(v541) = *(v563 + 4 * BYTE1(v585));
  STACK[0xD460] = v563 + 4 * BYTE1(v582);
  v587 = *(v563 + 4 * BYTE1(v582));
  STACK[0xD460] = v563 + 4 * BYTE2(v585);
  v588 = *(v563 + 4 * BYTE2(v585));
  STACK[0xD460] = v563 + 4 * v585;
  v589 = LODWORD(STACK[0x4F58]) ^ LODWORD(STACK[0x53C8]) ^ __ROR4__(v568, 24) ^ __ROR4__(v569, 8);
  v590 = *(v563 + 4 * v585);
  v591 = v589 ^ __ROR4__(v570, 16) ^ v577;
  STACK[0xD460] = v563 + 4 * BYTE2(v583);
  v592 = *(v563 + 4 * BYTE2(v583));
  STACK[0xD460] = v563 + 4 * BYTE2(v591);
  v593 = *(v563 + 4 * BYTE2(v591));
  STACK[0xD460] = v563 + 4 * BYTE1(v591);
  v594 = *(v563 + 4 * BYTE1(v591));
  v595 = ((v458 - 712011923) ^ 0x408AA430) + v450;
  STACK[0xD460] = v563 + 4 * HIBYTE(v583);
  v596 = *(v563 + 4 * HIBYTE(v583));
  STACK[0xD460] = v563 + 4 * v591;
  v597 = *(v563 + 4 * v591);
  STACK[0xD460] = v563 + 4 * BYTE2(v582);
  v585 >>= 24;
  v598 = *(v563 + 4 * BYTE2(v582));
  STACK[0xD460] = v563 + 4 * v585;
  v599 = *(v563 + 4 * v585);
  STACK[0xD460] = v563 + 4 * HIBYTE(v591);
  v600 = *(v563 + 4 * HIBYTE(v591));
  STACK[0xD460] = v563 + 4 * BYTE1(v583);
  v601 = *(v563 + 4 * BYTE1(v583));
  STACK[0xD460] = v563 + 4 * HIBYTE(v582);
  v602 = v507 ^ LODWORD(STACK[0x5048]) ^ LODWORD(STACK[0x53D0]) ^ __ROR4__(v587, 8) ^ v592;
  LODWORD(v541) = v507 ^ LODWORD(STACK[0x5030]) ^ LODWORD(STACK[0x53E0]) ^ __ROR4__(v586, 16) ^ __ROR4__(v541, 8) ^ v593;
  v603 = v507 ^ LODWORD(STACK[0x4F88]) ^ LODWORD(STACK[0x53E8]) ^ __ROR4__(v584, 16) ^ v588 ^ __ROR4__(v600, 24) ^ __ROR4__(v601, 8);
  v604 = *(v563 + 4 * HIBYTE(v582));
  STACK[0xD460] = v563 + 4 * HIBYTE(v603);
  v605 = v541 ^ __ROR4__(v604, 24);
  v606 = *(v563 + 4 * HIBYTE(v603));
  STACK[0xD460] = v563 + 4 * BYTE2(v605);
  LODWORD(v541) = v602 ^ __ROR4__(v597, 16) ^ __ROR4__(v599, 24);
  v607 = *(v563 + 4 * BYTE2(v605));
  STACK[0xD460] = v563;
  v608 = *(v563 + 4 * BYTE2(v603));
  STACK[0xD460] = v563 + 4 * BYTE3(v541);
  v609 = v507 ^ LODWORD(STACK[0x4F98]) ^ LODWORD(STACK[0x53D8]) ^ __ROR4__(v590, 16) ^ __ROR4__(v594, 8) ^ __ROR4__(v596, 24);
  v610 = *(v563 + 4 * BYTE3(v541));
  v611 = v609 ^ v598;
  STACK[0xD460] = v563 + 4 * BYTE2(v611);
  v612 = *(v563 + 4 * BYTE2(v611));
  STACK[0xD460] = v563 + 4 * BYTE1(v611);
  v613 = *(v563 + 4 * BYTE1(v611));
  v614 = (v595 ^ 0xA12570B7) - LODWORD(STACK[0x5368]);
  STACK[0xD460] = v563 + 4 * BYTE2(v541);
  v615 = *(v563 + 4 * BYTE2(v541));
  STACK[0xD460] = v563 + 4 * v603;
  v616 = *(v563 + 4 * v603);
  v617 = (v614 - 1229470718) ^ LODWORD(STACK[0x5288]);
  STACK[0xD460] = v563 + 4 * v605;
  v618 = *(v563 + 4 * v605);
  v619 = BYTE1(v603);
  STACK[0xD460] = v563 + 4 * v619;
  v620 = *(v563 + 4 * v619);
  STACK[0xD460] = v563 + 4 * HIBYTE(v611);
  v621 = *(v563 + 4 * HIBYTE(v611));
  STACK[0xD460] = v563 + 4 * HIBYTE(v605);
  v622 = *(v563 + 4 * HIBYTE(v605));
  STACK[0xD460] = v563 + 4 * v611;
  v624 = __PAIR64__(v621, __ROR4__(v620, 8));
  v623 = v607 ^ v624;
  v625 = *(v563 + 4 * v611);
  LODWORD(v624) = v621;
  v626 = v624 >> 24;
  v627 = v626 + v623;
  v628 = v626 & v623;
  STACK[0xD460] = v563 + 4 * BYTE1(v541);
  v629 = *(v563 + 4 * BYTE1(v541));
  STACK[0xD460] = v563 + 4 * v541;
  v630 = *(v563 + 4 * v541);
  STACK[0xD460] = v563 + 4 * BYTE1(v605);
  LODWORD(v541) = *(v563 + 4 * BYTE1(v605));
  STACK[0xD460] = v563;
  v631 = LODWORD(STACK[0x4F18]) ^ LODWORD(STACK[0x53F0]) ^ __ROR4__(v610, 24) ^ v612;
  v632 = LODWORD(STACK[0x4F10]) ^ LODWORD(STACK[0x5408]) ^ __ROR4__(v606, 24) ^ __ROR4__(v613, 8) ^ v615;
  v633 = LODWORD(STACK[0x4F08]) ^ LODWORD(STACK[0x5400]) ^ v608;
  v634 = v631 ^ __ROR4__(v616, 16);
  LODWORD(v624) = __ROR4__(v541, 8);
  v635 = v634 ^ v624;
  v636 = STACK[0xD450];
  STACK[0xD450] += 4 * (v634 ^ v624);
  v637 = v633 ^ __ROR4__(v622, 24) ^ __ROR4__(v625, 16);
  v638 = *(v636 + 4 * (v634 ^ v624));
  LODWORD(v624) = __ROR4__(v629, 8);
  LODWORD(v541) = v637 ^ v624;
  v639 = ((v637 ^ v624) >> 8);
  STACK[0xD450] = v636 + 4 * v639;
  v640 = *(v636 + 4 * v639);
  STACK[0xD450] = v636 + 4 * v541;
  v641 = *(v636 + 4 * v541);
  STACK[0xD450] = v636 + 4 * BYTE3(v541);
  v642 = *(v636 + 4 * BYTE3(v541));
  v643 = LODWORD(STACK[0x4F00]) ^ LODWORD(STACK[0x53F8]) ^ (v627 - 2 * v628);
  LODWORD(v541) = BYTE2(v541);
  STACK[0xD450] = v636 + 4 * v541;
  v644 = *(v636 + 4 * v541);
  v645 = v632 ^ __ROR4__(v618, 16);
  STACK[0xD450] = v636 + 4 * v645;
  LODWORD(v541) = *(v636 + 4 * v645);
  STACK[0xD450] = v636 + 4 * BYTE1(v645);
  LODWORD(v624) = __ROR4__(v630, 16);
  v646 = v643 ^ v624;
  v647 = *(v636 + 4 * BYTE1(v645));
  v648 = (v643 ^ v624);
  STACK[0xD450] = v636 + 4 * (v643 ^ v624);
  v649 = (__ROR4__(__ROR4__(v617, 15) ^ 0xF1CC4399, 17) ^ 0x21CCF8E6) - 1098864633;
  v650 = v649 ^ LODWORD(STACK[0x5378]) ^ __ROR4__(*(v636 + 4 * BYTE2(v635)), 24) ^ __ROR4__(*(v636 + 4 * HIBYTE(v645)), 16) ^ *(v636 + 4 * ((v643 ^ v624) >> 8));
  LODWORD(v624) = __ROR4__(v641, 8);
  v651 = ((v650 ^ v624) - 675245605 - ((2 * (v650 ^ v624)) & 0xAF8123B6)) ^ v556;
  v652 = (v651 - 1624439082 - ((2 * v651) & 0x3E5A0DAC)) ^ v559;
  v653 = v649 ^ LODWORD(STACK[0x5380]) ^ __ROR4__(*(v636 + 4 * HIBYTE(v646)), 16) ^ __ROR4__(v638, 8) ^ __ROR4__(v644, 24) ^ v647;
  v654 = v649 ^ LODWORD(STACK[0x5540]) ^ *(v636 + 4 * BYTE1(v635)) ^ __ROR4__(*(v636 + 4 * BYTE2(v645)), 24) ^ __ROR4__(v642, 16);
  LODWORD(v624) = __ROR4__(*(v636 + 4 * v648), 8);
  v655 = ((v654 ^ v624) - 675245605 - ((2 * (v654 ^ v624)) & 0xAF8123B6)) ^ v556;
  v656 = v649 ^ LODWORD(STACK[0x5370]) ^ __ROR4__(*(v636 + 4 * HIBYTE(v635)), 16) ^ __ROR4__(*(v636 + 4 * BYTE2(v646)), 24) ^ v640;
  LODWORD(v624) = __ROR4__(v541, 8);
  v657 = (v653 - 675245605 - ((2 * v653) & 0xAF8123B6)) ^ v556;
  LODWORD(v541) = ((v656 ^ v624) - 675245605 - ((2 * (v656 ^ v624)) & 0xAF8123B6)) ^ v556;
  v658 = (v655 - 1624439082 - ((2 * v655) & 0x3E5A0DAC)) ^ v559;
  v659 = (v657 - 1624439082 - ((2 * v657) & 0x3E5A0DAC)) ^ v559;
  v660 = v659 + 2092901755 - ((2 * v659) & 0xF97E4AF6);
  LODWORD(v541) = (v541 - 1624439082 - ((2 * v541) & 0x3E5A0DAC)) ^ v559;
  v661 = LODWORD(STACK[0x5280]) ^ v561;
  v662 = STACK[0x5460];
  v663 = LODWORD(STACK[0x4E80]) ^ (v652 + 2092901755 - ((2 * v652) & 0xF97E4AF6));
  v664 = LODWORD(STACK[0x4E80]) ^ (v658 + 2092901755 - ((2 * v658) & 0xF97E4AF6));
  v665 = LODWORD(STACK[0x4E80]) ^ (v541 + 2092901755 - ((2 * v541) & 0xF97E4AF6));
  if (STACK[0x5460])
  {
    v666 = v663;
  }

  else
  {
    v666 = v664;
  }

  if (v662)
  {
    v663 = v665;
  }

  v667 = LODWORD(STACK[0x4E80]) ^ v660;
  if (v662)
  {
    v665 = v667;
  }

  else
  {
    v664 = v667;
  }

  v668 = LODWORD(STACK[0x4E88]) ^ v580;
  v669 = LODWORD(STACK[0x4E88]) ^ LODWORD(STACK[0x5278]);
  v670 = LODWORD(STACK[0x4E88]) ^ LODWORD(STACK[0x5268]);
  v671 = LODWORD(STACK[0x4E88]) ^ LODWORD(STACK[0x5270]);
  if (v662)
  {
    v661 = 0;
  }

  else
  {
    v670 = LODWORD(STACK[0x4E88]) ^ LODWORD(STACK[0x5270]);
    v671 = LODWORD(STACK[0x4E88]) ^ LODWORD(STACK[0x5278]);
    v669 = v668;
  }

  v672 = v668 ^ v661;
  if ((v662 & 2) != 0)
  {
    v673 = v669;
  }

  else
  {
    v673 = v670;
  }

  if ((v662 & 2) != 0)
  {
    v669 = v670;
    v674 = v671;
  }

  else
  {
    v674 = v672;
  }

  if ((v662 & 2) != 0)
  {
    v671 = v672;
    v675 = v663;
  }

  else
  {
    v675 = v664;
  }

  if ((STACK[0x5460] & 2) != 0)
  {
    v663 = v664;
    v676 = v665;
  }

  else
  {
    v676 = v666;
  }

  if ((STACK[0x5460] & 2) != 0)
  {
    v665 = v666;
  }

  v677 = v673 ^ v649;
  v678 = v673 ^ v649 ^ v674 ^ v676;
  v679 = v678 ^ v649;
  v680 = ((v669 ^ -v669 ^ (1106266025 * (v663 ^ 0xC54C518E) - ((1106266025 * (v663 ^ 0xC54C518E)) ^ v669))) + 1106266025 * (v663 ^ 0xC54C518E)) ^ (1106266025 * (v678 ^ v649 ^ 0xC54C518E));
  v681 = v665 ^ 0xC54C518E;
  v682 = v671 + 744805349 * ((v680 ^ v649) - (v665 ^ 0xC54C518E));
  v683 = v663 ^ v649;
  v684 = v680 + 1481138645 * (v683 - v678);
  v685 = (v679 ^ v665 ^ v684) + 992624869 * ((v682 ^ 0xC54C518E) - (v675 ^ v649));
  v686 = (v682 ^ 0xC54C518E ^ v677 ^ v675) + 2032893181 * ((v685 ^ 0xC54C518E) - v683);
  v687 = v677 ^ v675 ^ v676;
  v688 = v686 ^ v687;
  v689 = v688 & v675;
  v690 = v688 + v675;
  v691 = LODWORD(STACK[0x5028]) ^ LODWORD(STACK[0x56F0]) ^ LODWORD(STACK[0x5710]) ^ LODWORD(STACK[0x5720]);
  v692 = STACK[0x5348];
  v693 = LODWORD(STACK[0x55E0]) ^ LODWORD(STACK[0x5348]) ^ LODWORD(STACK[0x55F0]) ^ LODWORD(STACK[0x55D0]) ^ LODWORD(STACK[0x5600]) ^ LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x5620]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5700]) ^ LODWORD(STACK[0x5760]) ^ LODWORD(STACK[0x5750]) ^ LODWORD(STACK[0x5590]) ^ LODWORD(STACK[0x5740]) ^ LODWORD(STACK[0x5730]) ^ (v691 + 954403502 - ((2 * v691) & 0x71C6155C));
  v694 = LODWORD(STACK[0x5510]) ^ (2 * (STACK[0x5510] & LODWORD(STACK[0x54F0])));
  v695 = LODWORD(STACK[0x5530]) ^ (2 * (STACK[0x5530] & LODWORD(STACK[0x54D0])));
  v696 = v695 & STACK[0x55B0] ^ v694 & STACK[0x5440];
  v697 = STACK[0x5790];
  v698 = STACK[0x5550];
  v699 = STACK[0x57A0];
  v700 = LODWORD(STACK[0x5680]) ^ LODWORD(STACK[0x54C0]) ^ LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5670]) ^ LODWORD(STACK[0x56C0]) ^ LODWORD(STACK[0x56E0]) ^ LODWORD(STACK[0x5580]) ^ LODWORD(STACK[0x5660]) ^ LODWORD(STACK[0x5610]) ^ LODWORD(STACK[0x54B0]) ^ LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x5430]) ^ LODWORD(STACK[0x54A0]) ^ LODWORD(STACK[0x5490]) ^ LODWORD(STACK[0x5480]) ^ LODWORD(STACK[0x5388]) ^ LODWORD(STACK[0x5420]) ^ LODWORD(STACK[0x5560]) ^ LODWORD(STACK[0x5410]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x55C0]) ^ LODWORD(STACK[0x5650]) ^ LODWORD(STACK[0x5640]) ^ ((v695 & STACK[0x55A0]) << v697) ^ ((v694 & STACK[0x5338]) << LODWORD(STACK[0x5450])) ^ (((v698 ^ (2 * (v698 & STACK[0x54F0]))) & STACK[0x5338]) << v697) ^ (((v698 ^ (2 * (v698 & STACK[0x54F0]))) & STACK[0x5440]) >> v699);
  v701 = LODWORD(STACK[0x5520]) ^ (2 * (STACK[0x5520] & LODWORD(STACK[0x54D0])));
  v702 = v700 ^ ((v701 & STACK[0x55A0]) << v697) ^ ((v701 & STACK[0x55B0]) >> v699) ^ (v696 >> LODWORD(STACK[0x5500])) ^ ((v693 ^ -v693 ^ (LODWORD(STACK[0x5470]) - (v693 ^ LODWORD(STACK[0x5470])))) + LODWORD(STACK[0x5470]));
  v703 = v690 - 2 * v689;
  v704 = v676 ^ v649 ^ __ROR4__(__ROR4__(v703 ^ v684, 28) ^ 0xBEF1B1C1, 4) ^ 0xDEA34A92;
  v705 = STACK[0x5128];
  v706 = v702 ^ LODWORD(STACK[0x5348]) ^ ((LODWORD(STACK[0x5178]) ^ v705 ^ v704) + 954403502 - ((2 * (LODWORD(STACK[0x5178]) ^ v705 ^ v704)) & 0x71C6155C));
  v707 = STACK[0x5360];
  v708 = *(&off_101353600 + (LODWORD(STACK[0x5360]) ^ 0x662F));
  v709 = STACK[0x52B0];
  *(v709 + LODWORD(STACK[0x5298])) = *(v708 + (BYTE1(v706) ^ 0xAALL)) ^ 0xBC;
  v710 = (1238028279 * ((v702 ^ v705) + LODWORD(STACK[0x4ED0])) + 2080504215 + (v687 ^ v649) + 1671) ^ LODWORD(STACK[0x5170]);
  v711 = *(&off_101353600 + v707 - 25194) - 4;
  *(v709 + LODWORD(STACK[0x52A8])) = (HIBYTE(v710) - ((v710 >> 23) & 0xD4) + 106) ^ v711[HIBYTE(v710) ^ 0xC7] ^ 0xF3;
  *(v709 + LODWORD(STACK[0x52A0])) = (BYTE1(v710) - ((v710 >> 7) & 0xD4) + 106) ^ v711[BYTE1(v710) ^ 0x5DLL] ^ 0x40;
  v712 = v702 ^ v705 ^ LODWORD(STACK[0x5180]) ^ (v685 + 61534507 * ((v649 ^ 0xC54C518E ^ v704) - v681));
  v713 = (v712 + 954403502 - ((2 * v712) & 0x71C6155C)) ^ v692;
  v714 = *(&off_101353600 + (v707 ^ 0x6734));
  *(v709 + LODWORD(STACK[0x52C8])) = *(v714 + (BYTE1(v713) ^ 0xEFLL)) ^ (BYTE1(v713) + (~(v713 >> 7) | 0x23) - 17) ^ 0x67;
  *(v709 + LODWORD(STACK[0x52C0])) = v711[((v706 ^ 0xC54C518E) >> 24) ^ 0xDLL] ^ (((v706 ^ 0xC54C518E) >> 24) - (((v706 ^ 0xC54C518E) >> 23) & 0xD4) + 106) ^ 0xA5;
  v715 = v705 ^ v692 ^ ((v702 ^ LODWORD(STACK[0x5188])) + 954403502 - ((2 * (v702 ^ LODWORD(STACK[0x5188]))) & 0x71C6155C)) ^ v703;
  *(v709 + LODWORD(STACK[0x52D0])) = *(v708 + (BYTE1(v715) ^ 0x7ALL)) ^ 0xD5;
  v716 = *(&off_101353600 + v707 - 24900) - 4;
  *(v709 + LODWORD(STACK[0x52B8])) = v716[v715 ^ 0xCFLL] ^ (v715 - ((2 * v715) & 0xB8) - 36) ^ 0xE0;
  *(v709 + LODWORD(STACK[0x52D8])) = v716[BYTE2(v715) ^ 0xE3] ^ ((BYTE2(v715) ^ 0x4C) - ((2 * (BYTE2(v715) ^ 0x4C)) & 0xB8) - 36) ^ 0x30;
  v717 = STACK[0xD468];
  v718 = STACK[0xD468];
  *(v717 + LODWORD(STACK[0x5320])) = v716[v713 ^ 0xF1] ^ (v713 - ((2 * v713) & 0xB8) - 36) ^ 0x41;
  *(v717 + LODWORD(STACK[0x52F0])) = *(v708 + (HIBYTE(v715) ^ 0xDALL)) ^ 0xEA;
  *(v717 + LODWORD(STACK[0x52E0])) = (BYTE2(v710) - ((v710 >> 15) & 0xDC) - 18) ^ *(v714 + (BYTE2(v710) ^ 0x5ELL)) ^ 0x8F;
  *(v717 + LODWORD(STACK[0x5308])) = *(v708 + (v706 ^ 0x4BLL)) ^ 0x65;
  *(v717 + LODWORD(STACK[0x5300])) = (v710 - ((2 * v710) & 0xD4) + 106) ^ 0x59 ^ v711[v710 ^ 0xD5];
  *(v717 + LODWORD(STACK[0x5328])) = *(v714 + (BYTE2(v713) ^ 0xF3)) ^ (BYTE2(v713) - ((v713 >> 15) & 0xDC) - 18) ^ 0x59;
  *(v717 + LODWORD(STACK[0x5310])) = *(v714 + (((v706 ^ 0xC54C518E) >> 16) ^ 0xE4)) ^ (((v706 ^ 0xC54C518E) >> 16) - (((v706 ^ 0xC54C518E) >> 15) & 0xDC) - 18) ^ 0x4C;
  *(v718 + LODWORD(STACK[0x5318])) = v711[HIBYTE(v713) ^ 0x40] ^ (HIBYTE(v713) - ((v713 >> 23) & 0xD4) + 106) ^ 0xB9;
  STACK[0xD450] = v636;
  LODWORD(v716) = (((LODWORD(STACK[0x52F8]) ^ 0x2D694C8F) - 761875599) ^ ((LODWORD(STACK[0x52F8]) ^ 0xE43CDE67) + 465772953) ^ ((LODWORD(STACK[0x52F8]) ^ 0x2DF53885) - 771045509)) + 833531767;
  LODWORD(v711) = ((v716 ^ 0x5F5EAC51) - 307275947) ^ v716 ^ ((v716 ^ 0x51484466) - 474366108) ^ ((v716 ^ 0x3CE61A32) - 1911037640) ^ ((v716 ^ 0x7FFEF6FF) - 854651397);
  LODWORD(v716) = (((v711 ^ 0xB52F7360) - 478273015) ^ ((v711 ^ 0xAD319FE5) - 77541746) ^ ((v711 ^ 0x5510E87F) + 54638872)) - 314089724;
  v719 = v716 >= LODWORD(STACK[0x5330]);
  v720 = LODWORD(STACK[0x52E8]) ^ (v716 < 0x8A6B497);
  v721 = !v719;
  if (v720)
  {
    v722 = STACK[0x52E8];
  }

  else
  {
    v722 = v721;
  }

  return (*(STACK[0x57D8] + 8 * ((228 * v722) ^ v707)))();
}

uint64_t sub_1007C69CC()
{
  v1 = *(STACK[0xBA38] + 24);
  STACK[0xB3F0] = v1;
  return (*(STACK[0x57D8] + 8 * (((v1 == 0) * (((v0 - 18965) | 0x60) + ((v0 - 2086598074) ^ 0x7C5EA395))) ^ v0)))();
}

uint64_t sub_1007C6A44()
{
  v1 = (STACK[0x3208] + STACK[0x5580]) ^ 0xB88801D4E1C76353;
  v2 = v1 ^ __ROR8__(STACK[0x3208], 61);
  v3 = __ROR8__(v1, 8);
  v4 = (((2 * (v3 + v2)) & 0x6CCA15C6ED346C70) - (v3 + v2) - 0x36650AE3769A3639) ^ 0xF15244766E60A1B0;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0xE580B17D8CC5E551;
  v7 = __ROR8__(v6, 8);
  v8 = v6 ^ __ROR8__(v5, 61);
  v9 = (v7 + v8 - ((2 * (v7 + v8)) & 0x2905C34D52484EFELL) - 0x6B7D1E5956DBD881) ^ 0x75231CFD7871DE05;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0x6F932E92FBA0EEBALL) - (v11 + v10) + 0x483668B6822F88A2) ^ 0x925623BA818D373BLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xFA35E2CDCB3E31C7;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xD2F00CE620E5D3AELL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = ((0x154AE89DB913438ELL - ((v18 + v17) | 0x154AE89DB913438ELL) + ((v18 + v17) | 0xEAB5176246ECBC71)) ^ 0x1EC61C53E89CC90ALL) >> STACK[0x57B0];
  LODWORD(v19) = ((v19 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFF9F) - 82) ^ ((v19 ^ LODWORD(STACK[0x57C0]) ^ 0x1B) + 42) ^ ((v19 ^ LODWORD(STACK[0x57C0]) ^ 0xFFFFFF84) - 73);
  v20 = (STACK[0x31E0] + STACK[0x56E0]) ^ 0xB88801D4E1C76353;
  v21 = v20 ^ __ROR8__(STACK[0x31E0], 61);
  v22 = __ROR8__(v20, 8);
  v23 = (0x499455683E4E9492 - ((v22 + v21) | 0x499455683E4E9492) + ((v22 + v21) | 0xB66BAA97C1B16B6DLL)) ^ 0x8EA31BFD26B4031ALL;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v25 + v24 - ((2 * (v25 + v24)) & 0xCB8EAEA8A126793CLL) - 0x1A38A8ABAF6CC362) ^ 0x47E629DC56D9CFLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xE1A1FD5BD155F97ALL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xDA604B0C03A2BF99;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xFA35E2CDCB3E31C7;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xD2F00CE620E5D3AELL;
  v35 = ((__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5480];
  LODWORD(v35) = ((v35 ^ LODWORD(STACK[0x54A0]) ^ 0xFFFFFFC7) - 44) ^ ((v35 ^ LODWORD(STACK[0x54A0])) + 21) ^ ((v35 ^ LODWORD(STACK[0x54A0]) ^ 0x47) + 84);
  v36 = (0x5156D6BF46C1E142 - ((STACK[0x31E8] + STACK[0x5700]) | 0x5156D6BF46C1E142) + ((STACK[0x31E8] + STACK[0x5700]) | 0xAEA92940B93E1EBDLL)) ^ 0x1621289458F97DEELL;
  v37 = v36 ^ __ROR8__(STACK[0x31E8], 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v38 + v37 - ((2 * (v38 + v37)) & 0x11995D80B6D3D618) - 0x7733513FA49614F4) ^ 0xB0041FAABC6C837BLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xE580B17D8CC5E551;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xE1A1FD5BD155F97ALL;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (0x74CDBB77E6BE3234 - ((v45 + v44) | 0x74CDBB77E6BE3234) + ((v45 + v44) | 0x8B3244881941CDCBLL)) ^ 0x51520F841AE37252;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - ((2 * (v48 + v47)) & 0x470CDA31A6BE392ELL) - 0x5C7992E72CA0E369) ^ 0x59B38FD518612D50;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((2 * (v51 + v50)) & 0x188F9FABF05FA4BCLL) - (v51 + v50) + 0x73B8302A07D02DA1) ^ 0xA1483CCC2735FE0FLL;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  LODWORD(STACK[0x4FF0]) = LODWORD(STACK[0x56F0]) ^ (((((2 * (v54 + v53)) | 0x1E2A517C903F71BCLL) - (v54 + v53) - 0xF1528BE481FB8DELL) ^ 0xFB66238FE66FCDA5) >> STACK[0x54B0]);
  v55 = (STACK[0x31F0] + STACK[0x5300]) ^ 0xB88801D4E1C76353;
  v56 = v55 ^ __ROR8__(STACK[0x31F0], 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) | 0x7E42872E0D43A63CLL) - (v57 + v56) + 0x40DEBC68F95E2CE2) ^ 0x87E9F2FDE1A4BB69;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xE580B17D8CC5E551;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xE1A1FD5BD155F97ALL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0xDA604B0C03A2BF99;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0xFA35E2CDCB3E31C7;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) | 0x87C9A53B003DFBELL) - (v68 + v67) + 0x7BC1B2D627FE1021) ^ 0x56CE41CFF8E43C71;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  LODWORD(STACK[0x5460]) = LODWORD(STACK[0x52C8]) ^ (((((v71 + v70) & 0x2E065E518C2D01D9 ^ 0x2E04165080290041) + ((v71 + v70) & 0xD1F9A1AE73D2FE26 ^ 0xD150A0206112CA21) - 1) ^ 0xB27BD414F4BBF1ALL) >> STACK[0x52C0]);
  v72 = (((2 * (STACK[0x31F8] + STACK[0x5360])) & 0xA93AE96678E8B0C0) - (STACK[0x31F8] + STACK[0x5360]) - 0x549D74B33C745861) ^ 0x13EA8A98224CC4CCLL;
  v73 = v72 ^ __ROR8__(STACK[0x31F8], 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x38C8B16AE7056877;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xE580B17D8CC5E551;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (((2 * (v78 + v77)) & 0x4CD3985E510F3B92) - (v78 + v77) - 0x2669CC2F28879DCALL) ^ 0x3837CE8B062D9B4CLL;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (0xB270678A0D929945 - ((v81 + v80) | 0xB270678A0D929945) + ((v81 + v80) | 0x4D8F9875F26D66BALL)) ^ 0x97EFD379F1CFD923 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__((0xB270678A0D929945 - ((v81 + v80) | 0xB270678A0D929945) + ((v81 + v80) | 0x4D8F9875F26D66BALL)) ^ 0x97EFD379F1CFD923, 8) + v82) ^ 0xFA35E2CDCB3E31C7;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xD2F00CE620E5D3AELL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  LODWORD(STACK[0x54C0]) = LODWORD(STACK[0x5398]) ^ (((((2 * (v87 + v86)) & 0xD98E88AA1CE58192) - (v87 + v86) - 0x6CC744550E72C0CALL) ^ 0x674BB09B5FFD4A4DLL) >> STACK[0x5390]);
  v88 = (((STACK[0x50F8] + STACK[0x5338]) | 0xA40E7E917A4C6D8) - ((STACK[0x50F8] + STACK[0x5338]) | 0xF5BF1816E85B3927) - 0xA40E7E917A4C6D9) ^ 0xB2C8E63DF663A58BLL;
  v89 = v88 ^ __ROR8__(STACK[0x50F8], 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * ((v90 + v89) ^ 0x61345D016D9F5B97)) | 0x2D7769CEB8C2D960) - ((v90 + v89) ^ 0x61345D016D9F5B97) + 0x69444B18A39E9350) ^ 0xCF47588CD6FB5F50;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0xE580B17D8CC5E551;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0xE1A1FD5BD155F97ALL;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (v97 + v96 - ((2 * (v97 + v96)) & 0x389ED5EB55460C68) - 0x63B0950A555CF9CCLL) ^ 0x462F21F9A901B9ADLL;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0xFA35E2CDCB3E31C7;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  LODWORD(STACK[0x4F78]) = LODWORD(STACK[0x52F0]) ^ (((__ROR8__((((2 * (v102 + v101)) & 0x1EA0C4EC66389718) - (v102 + v101) + 0x70AF9D89CCE3B473) ^ 0xA25F916FEC0667DDLL, 8) + ((((2 * (v102 + v101)) & 0x1EA0C4EC66389718) - (v102 + v101) + 0x70AF9D89CCE3B473) ^ 0xA25F916FEC0667DDLL ^ __ROR8__(v101, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x52D0]);
  v103 = (STACK[0x4DB0] - (STACK[0x4D58] & 0x825FFE9BB17B1806) - 0x3ED000B2274273FDLL) ^ 0xF9E74E273FB8E474;
  v104 = __ROR8__(v103, 8);
  v105 = v103 ^ STACK[0x4DB8];
  v106 = (((v104 + v105) | 0x64EAFA774657DF67) - ((v104 + v105) | 0x9B150588B9A82098) - 0x64EAFA774657DF68) ^ 0x816A4B0ACA923A36;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0xE1A1FD5BD155F97ALL;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ 0xDA604B0C03A2BF99;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0xFA35E2CDCB3E31C7;
  v113 = __ROR8__(v112, 8);
  v114 = v112 ^ __ROR8__(v111, 61);
  v115 = (((2 * (v113 + v114)) & 0x8CBC83DB2CBA66BALL) - (v113 + v114) + 0x39A1BE1269A2CCA2) ^ 0xEB51B2F449471F0CLL;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  LODWORD(STACK[0x5620]) = LODWORD(STACK[0x51C0]) ^ (((((v117 + v116) & 0xAFB89D0F226D07BBLL ^ 0x2290810E20240493) + ((v117 + v116) ^ 0x8D685E718EDB732CLL) - (((v117 + v116) ^ 0x8D685E718EDB732CLL) & 0xAFB89D0F226D07BBLL)) ^ 0xD6A3C84F02C601ECLL) >> STACK[0x51B0]);
  v118 = (((STACK[0x3200] + STACK[0x5160]) & 0x60CCB8CB06D04AA4 ^ 0x6008988002804284) + ((STACK[0x3200] + STACK[0x5160]) ^ 0x85D7266B8D552872) - (((STACK[0x3200] + STACK[0x5160]) ^ 0x85D7266B8D552872) & 0x60CCB8CB06D04AA4)) ^ 0x5D939F746A420185;
  v119 = v118 ^ __ROR8__(STACK[0x3200], 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0x38C8B16AE7056877;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0xE580B17D8CC5E551;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0xE1A1FD5BD155F97ALL;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v127 = (v126 + v125 - ((2 * (v126 + v125)) & 0x8B51AE082F0E0986) + 0x45A8D704178704C3) ^ 0x9FC89C081425BB5ALL;
  v128 = v127 ^ __ROR8__(v125, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0xFA35E2CDCB3E31C7;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = __ROR8__(v129, 8);
  v132 = (((2 * (v131 + v130)) & 0xDCE314B1C6A63AE2) - (v131 + v130) + 0x118E75A71CACE28ELL) ^ 0xC37E79413C493120;
  v133 = ((__ROR8__(v132, 8) + (v132 ^ __ROR8__(v130, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5148];
  LODWORD(v133) = ((v133 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFFAD) + 58) ^ ((v133 ^ LODWORD(STACK[0x5150]) ^ 0x35) - 94) ^ ((v133 ^ LODWORD(STACK[0x5150]) ^ 0xFFFFFF98) + 13);
  v134 = (((STACK[0x5128] + STACK[0x50D0]) ^ 0x70E9D8B949F9FF85) - ((2 * ((STACK[0x5128] + STACK[0x50D0]) ^ 0x70E9D8B949F9FF85)) & 0xD59DA8E2E46051A2) - 0x15312B8E8DCFD72FLL) ^ 0x22AF0D1CDA0EB407;
  v135 = v134 ^ __ROR8__(STACK[0x5128], 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0x38C8B16AE7056877;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (((2 * (v138 + v137)) | 0x3A26E098C6FA8BDCLL) - (v138 + v137) - 0x1D13704C637D45EELL) ^ 0xF893C131EFB8A0BFLL;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0xE1A1FD5BD155F97ALL;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0xDA604B0C03A2BF99;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0xFA35E2CDCB3E31C7;
  v146 = __ROR8__(v145, 8);
  v147 = v145 ^ __ROR8__(v144, 61);
  v148 = (v146 + v147 - ((2 * (v146 + v147)) & 0x739932DC08C7DE08) - 0x46336691FB9C10FCLL) ^ 0x6B3C958824863CAALL;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = __ROR8__(v148, 8);
  LODWORD(STACK[0x5560]) = LODWORD(STACK[0x50C8]) ^ (((((v150 + v149) | 0xAA02DF93E38EC940) - ((v150 + v149) | 0x55FD206C1C7136BFLL) + 0x55FD206C1C7136BFLL) ^ 0x5E71D4A24DFEBC3BLL) >> STACK[0x50C0]);
  v151 = ((STACK[0x4D98] & 0x2B0F3E9B2E105264) - STACK[0x4DA0] - 0x15879F4D97082933) ^ 0x52F061668930B59ELL;
  v152 = v151 ^ STACK[0x4DA8];
  v153 = (__ROR8__(v151, 8) + v152) ^ 0x38C8B16AE7056877;
  v154 = v153 ^ __ROR8__(v152, 61);
  v155 = (__ROR8__(v153, 8) + v154) ^ 0xE580B17D8CC5E551;
  v156 = v155 ^ __ROR8__(v154, 61);
  v157 = __ROR8__(v155, 8);
  v158 = (((2 * ((v157 + v156) ^ 0xED2A27E192AF03ELL)) & 0x7D66AC94504EB3B4) - ((v157 + v156) ^ 0xED2A27E192AF03ELL) - 0x3EB3564A282759DBLL) ^ 0x2E3FF6901FA7AF61 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__((((2 * ((v157 + v156) ^ 0xED2A27E192AF03ELL)) & 0x7D66AC94504EB3B4) - ((v157 + v156) ^ 0xED2A27E192AF03ELL) - 0x3EB3564A282759DBLL) ^ 0x2E3FF6901FA7AF61, 8) + v158) ^ 0xDA604B0C03A2BF99;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = __ROR8__(v159, 8);
  v162 = (((2 * (v161 + v160)) | 0x7014CC30559C1852) - (v161 + v160) - 0x380A66182ACE0C29) ^ 0xC23F84D5E1F03DEELL;
  v163 = v162 ^ __ROR8__(v160, 61);
  v164 = (__ROR8__(v162, 8) + v163) ^ 0xD2F00CE620E5D3AELL;
  v165 = __ROR8__(v164, 8);
  v166 = __ROR8__(v163, 61);
  LODWORD(STACK[0x5600]) = LODWORD(STACK[0x5040]) ^ (((((2 * (v165 + (v164 ^ v166))) & 0xB8F656D83B685858) - (v165 + (v164 ^ v166)) + 0x2384D493E24BD3D3) ^ 0xD7F7DFA24C3BA6A8) >> STACK[0x5038]);
  v167 = __ROR8__((STACK[0x5130] + STACK[0x4FC8]) ^ 0xB88801D4E1C76353, 8);
  v168 = (STACK[0x5130] + STACK[0x4FC8]) ^ 0xB88801D4E1C76353 ^ __ROR8__(STACK[0x5130], 61);
  v169 = (((2 * (v167 + v168)) | 0xDA3154F752DD25B6) - (v167 + v168) + 0x12E7558456916D25) ^ 0xD5D01B114E6BFAACLL;
  v170 = v169 ^ __ROR8__(v168, 61);
  v171 = __ROR8__(v169, 8);
  v172 = (((2 * (v171 + v170)) & 0x6121A77448DB14A4) - (v171 + v170) + 0x4F6F2C45DB9275ADLL) ^ 0xAAEF9D38575790FCLL;
  v173 = v172 ^ __ROR8__(v170, 61);
  v174 = (__ROR8__(v172, 8) + v173) ^ 0xE1A1FD5BD155F97ALL;
  v175 = v174 ^ __ROR8__(v173, 61);
  v176 = __ROR8__(v174, 8);
  v177 = (((2 * (v176 + v175)) | 0x107283ABCE210778) - (v176 + v175) + 0x77C6BE2A18EF7C44) ^ 0x52590AD9E4B23C25;
  v178 = v177 ^ __ROR8__(v175, 61);
  v179 = __ROR8__(v177, 8);
  v180 = (((2 * (v179 + v178)) | 0x9493AB03EAF06B94) - (v179 + v178) - 0x4A49D581F57835CALL) ^ 0xB07C374C3E46040DLL;
  v181 = v180 ^ __ROR8__(v178, 61);
  v182 = __ROR8__(v180, 8);
  v183 = (v182 + v181 - ((2 * (v182 + v181)) & 0x2DEF74884B3EB982) - 0x690845BBDA60A33FLL) ^ 0x4407B6A2057A8F6FLL;
  v184 = __ROR8__(v183, 8) + (v183 ^ __ROR8__(v181, 61));
  v185 = ((STACK[0x49C8] & 0x91E5572D7DB6EE70) - STACK[0x4970] - 0x48F2AB96BEDB7739) ^ 0xF8555BDA0E3EB94;
  v186 = v185 ^ STACK[0x4950];
  v187 = (__ROR8__(v185, 8) + v186) ^ 0x38C8B16AE7056877;
  v188 = v187 ^ __ROR8__(v186, 61);
  v189 = __ROR8__(v187, 8);
  v190 = (((v189 + v188) | 0xC7DCB780BD5E14E2) - ((v189 + v188) | 0x3823487F42A1EB1DLL) + 0x3823487F42A1EB1DLL) ^ 0x225C06FD319BF1B3;
  v191 = v190 ^ __ROR8__(v188, 61);
  v192 = __ROR8__(v190, 8);
  v193 = (((2 * (v192 + v191)) | 0x227F24B067C230BELL) - (v192 + v191) - 0x113F925833E1185FLL) ^ 0xF09E6F03E2B4E125;
  v194 = v193 ^ __ROR8__(v191, 61);
  v195 = (__ROR8__(v193, 8) + v194) ^ 0xDA604B0C03A2BF99;
  v196 = v195 ^ __ROR8__(v194, 61);
  v197 = __ROR8__(v195, 8);
  v198 = (v197 + v196 - ((2 * (v197 + v196)) & 0xF169001DF572F4DELL) - 0x74B7FF105468591) ^ 0x28162C331874BA8;
  v199 = v198 ^ __ROR8__(v196, 61);
  v200 = (__ROR8__(v198, 8) + v199) ^ 0xD2F00CE620E5D3AELL;
  v201 = v200 ^ __ROR8__(v199, 61);
  v202 = __ROR8__(v200, 8);
  LODWORD(STACK[0x5450]) = LODWORD(STACK[0x4F48]) ^ ((v184 ^ 0xF4730B31AE70757BLL) >> STACK[0x4F10]);
  v203 = ((v202 + v201 - ((2 * (v202 + v201)) & 0x272AD1BBC181FD9ELL) + 0x139568DDE0C0FECFLL) ^ 0xE7E663EC4EB08BB4) >> STACK[0x4EC8];
  v204 = (STACK[0x5138] + STACK[0x4DD8]) ^ 0xB88801D4E1C76353;
  v205 = v204 ^ __ROR8__(STACK[0x5138], 61);
  LODWORD(STACK[0x5120]) = LODWORD(STACK[0x4E80]) ^ v203;
  v206 = (__ROR8__(v204, 8) + v205) ^ 0x38C8B16AE7056877;
  v207 = v206 ^ __ROR8__(v205, 61);
  v208 = (__ROR8__(v206, 8) + v207) ^ 0xE580B17D8CC5E551;
  v209 = v208 ^ __ROR8__(v207, 61);
  v210 = (__ROR8__(v208, 8) + v209) ^ 0xE1A1FD5BD155F97ALL;
  v211 = v210 ^ __ROR8__(v209, 61);
  v212 = (__ROR8__(v210, 8) + v211) ^ 0xDA604B0C03A2BF99;
  v213 = v212 ^ __ROR8__(v211, 61);
  v214 = __ROR8__(v212, 8);
  v215 = (v214 + v213 - ((2 * (v214 + v213)) & 0x86AA4A0B8AFDE2AELL) + 0x43552505C57EF157) ^ 0xB960C7C80E40C090;
  v216 = v215 ^ __ROR8__(v213, 61);
  v217 = (__ROR8__(v215, 8) + v216) ^ 0xD2F00CE620E5D3AELL;
  v218 = v217 ^ __ROR8__(v216, 61);
  v219 = __ROR8__(v217, 8);
  v220 = ((2 * (v219 + v218)) & 0xFCF3D4B14886DF9ALL) - (v219 + v218);
  v221 = (STACK[0x5140] + STACK[0x4B78]) ^ 0xB88801D4E1C76353;
  v222 = v221 ^ __ROR8__(STACK[0x5140], 61);
  v223 = __ROR8__(v221, 8);
  v224 = (v223 + v222 - ((2 * (v223 + v222)) & 0xA62FAA9DF3E9BD4CLL) + 0x5317D54EF9F4DEA6) ^ 0x6BDF64241EF1B6D1;
  v225 = v224 ^ __ROR8__(v222, 61);
  v226 = __ROR8__(v224, 8);
  v227 = (((v226 + v225) | 0xC6D38BC7C36FBEC8) - ((v226 + v225) | 0x392C74383C904137) + 0x392C74383C904137) ^ 0x23533ABA4FAA5B99;
  v228 = v227 ^ __ROR8__(v225, 61);
  v229 = __ROR8__(v227, 8);
  v230 = (((v229 + v228) | 0x3F10C338C4D93E90) - ((v229 + v228) | 0xC0EF3CC73B26C16FLL) - 0x3F10C338C4D93E91) ^ 0xDEB13E63158CC7EALL;
  v231 = v230 ^ __ROR8__(v228, 61);
  v232 = __ROR8__(v230, 8);
  v233 = (v232 + v231 - ((2 * (v232 + v231)) & 0x658BFD5F7BB28520) - 0x4D3A01504226BD70) ^ 0x68A5B5A3BE7BFD09;
  v234 = v233 ^ __ROR8__(v231, 61);
  v235 = (__ROR8__(v233, 8) + v234) ^ 0xFA35E2CDCB3E31C7;
  v236 = v235 ^ __ROR8__(v234, 61);
  v237 = (__ROR8__(v235, 8) + v236) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x5358]) = LODWORD(STACK[0x4B60]) ^ (((v220 - 0x7E79EA58A4436FCELL) ^ 0x75F51E96F5CCE549) >> STACK[0x4DD0]);
  v238 = __ROR8__(v237, 8) + (v237 ^ __ROR8__(v236, 61));
  v239 = (STACK[0x5158] + STACK[0x4B20] - ((2 * (STACK[0x5158] + STACK[0x4B20])) & 0x27B658128B01BE4ELL) + 0x13DB2C094580DF27) ^ 0xAB532DDDA447BC74;
  v240 = v239 ^ __ROR8__(STACK[0x5158], 61);
  v241 = (__ROR8__(v239, 8) + v240) ^ 0x38C8B16AE7056877;
  v242 = v241 ^ __ROR8__(v240, 61);
  v243 = __ROR8__(v241, 8);
  v244 = (((v243 + v242) | 0x1761166BF396D14CLL) - ((v243 + v242) | 0xE89EE9940C692EB3) - 0x1761166BF396D14DLL) ^ 0xF2E1A7167F53341DLL;
  v245 = v244 ^ __ROR8__(v242, 61);
  v246 = (__ROR8__(v244, 8) + v245) ^ 0xE1A1FD5BD155F97ALL;
  v247 = v246 ^ __ROR8__(v245, 61);
  v248 = __ROR8__(v246, 8);
  v249 = (((2 * (v248 + v247)) | 0x678ABB7A809839ECLL) - (v248 + v247) - 0x33C55DBD404C1CF6) ^ 0xE9A516B143EEA36FLL;
  v250 = v249 ^ __ROR8__(v247, 61);
  v251 = __ROR8__(v249, 8);
  LODWORD(STACK[0x5440]) = LODWORD(STACK[0x4B70]) ^ (((((2 * v238) | 0xA11DD4A6C9817906) - v238 + 0x2F7115AC9B3F437DLL) ^ 0x24FDE162CAB0C9F8) >> STACK[0x4B68]);
  v252 = (((2 * (v251 + v250)) | 0xF0A8E2F226D0C69ELL) - (v251 + v250) - 0x785471791368634FLL) ^ 0x826193B4D8565288;
  v253 = v252 ^ __ROR8__(v250, 61);
  v254 = (__ROR8__(v252, 8) + v253) ^ 0xD2F00CE620E5D3AELL;
  v255 = v254 ^ __ROR8__(v253, 61);
  v256 = __ROR8__(v254, 8);
  v257 = ((((2 * (v256 + v255)) & 0xAC59D584A51B9712) - (v256 + v255) - 0x562CEAC2528DCB8ALL) ^ 0x5DA01E0C0302410DLL) >> STACK[0x4B28];
  LODWORD(v255) = ((v257 ^ LODWORD(STACK[0x4B30]) ^ 0x54) - 41) ^ ((v257 ^ LODWORD(STACK[0x4B30]) ^ 0x3A) - 71) ^ ((v257 ^ LODWORD(STACK[0x4B30]) ^ 0x6E) - 19);
  v258 = (STACK[0x5178] + STACK[0x3B40]) ^ 0xB88801D4E1C76353;
  v259 = v258 ^ __ROR8__(STACK[0x5178], 61);
  v260 = (__ROR8__(v258, 8) + v259) ^ 0x38C8B16AE7056877;
  v261 = v260 ^ __ROR8__(v259, 61);
  v262 = (__ROR8__(v260, 8) + v261) ^ 0xE580B17D8CC5E551;
  v263 = v262 ^ __ROR8__(v261, 61);
  v264 = __ROR8__(v262, 8);
  v265 = (((v264 + v263) ^ 0xE9329FC480545EF6) - ((2 * ((v264 + v263) ^ 0xE9329FC480545EF6)) & 0x257A87994F0EF074) - 0x6D42BC33587887C6) ^ 0x9A2E2153F686DFB6;
  v266 = v265 ^ __ROR8__(v263, 61);
  v267 = __ROR8__(v265, 8);
  v268 = (((v267 + v266) | 0xC43942710AD72E04) - ((v267 + v266) | 0x3BC6BD8EF528D1FBLL) + 0x3BC6BD8EF528D1FBLL) ^ 0x1E59097D0975919DLL;
  v269 = v268 ^ __ROR8__(v266, 61);
  v270 = __ROR8__(v268, 8);
  v271 = (v270 + v269 - ((2 * (v270 + v269)) & 0x6577C4A9CBB65580) + 0x32BBE254E5DB2AC0) ^ 0xC88E00992EE51B07;
  v272 = v271 ^ __ROR8__(v269, 61);
  v273 = __ROR8__(v271, 8);
  v274 = (((2 * (v273 + v272)) | 0xEAE3989CE6941BCELL) - (v273 + v272) - 0x7571CC4E734A0DE7) ^ 0xA781C0A853AFDE49;
  LODWORD(v274) = (((__ROR8__(v274, 8) + (v274 ^ __ROR8__(v272, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x3B10]) ^ LODWORD(STACK[0x3B1C]);
  LODWORD(v272) = ((v274 ^ 0x3A) - 33) ^ ((v274 ^ 0x63) - 120) ^ ((v274 ^ 0x59) - 66);
  v275 = (STACK[0x5208] + STACK[0x4FE0]) ^ 0xB88801D4E1C76353;
  v276 = v275 ^ __ROR8__(STACK[0x5208], 61);
  v277 = __ROR8__(v275, 8);
  v278 = (((2 * (v277 + v276)) | 0xF27502731AFB9DA0) - (v277 + v276) + 0x6C57EC672823130) ^ 0xC1F230536A78A6A7;
  v279 = v278 ^ __ROR8__(v276, 61);
  v280 = (__ROR8__(v278, 8) + v279) ^ 0xE580B17D8CC5E551;
  v281 = v280 ^ __ROR8__(v279, 61);
  v282 = __ROR8__(v280, 8);
  v283 = (((v282 + v281) | 0x46F78AC5CF119A75) - ((v282 + v281) | 0xB908753A30EE658ALL) - 0x46F78AC5CF119A76) ^ 0xA756779E1E44630FLL;
  v284 = v283 ^ __ROR8__(v281, 61);
  v285 = __ROR8__(v283, 8);
  v286 = (((v285 + v284) ^ 0xE9CBBE85A1ED7D75) - ((2 * ((v285 + v284) ^ 0xE9CBBE85A1ED7D75)) & 0x9D9C14164E689800) - 0x3131F5F4D8CBB400) ^ 0xFD65FF82857B8EECLL;
  v287 = v286 ^ __ROR8__(v284, 61);
  v288 = __ROR8__(v286, 8);
  v289 = __ROR8__((v288 + v287 - ((2 * (v288 + v287)) & 0x7A8F1FA76A4891B8) - 0x42B8702C4ADBB724) ^ 0x47726D1E7E1A791BLL, 8);
  v290 = (v288 + v287 - ((2 * (v288 + v287)) & 0x7A8F1FA76A4891B8) - 0x42B8702C4ADBB724) ^ 0x47726D1E7E1A791BLL ^ __ROR8__(v287, 61);
  v291 = (((2 * (v289 + v290)) & 0x569F08D2CB68987ALL) - (v289 + v290) - 0x2B4F846965B44C3ELL) ^ 0x6407770BAAE606CLL;
  LODWORD(STACK[0x5310]) = LODWORD(STACK[0x5408]) ^ (((__ROR8__(v291, 8) + (v291 ^ __ROR8__(v290, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x53A8]);
  v292 = (STACK[0x5530] - ((2 * STACK[0x5530]) & 0xB421D2FD6F08DAF4) + 0x5A10E97EB7846D7ALL) ^ 0xE298E8AA56430E29;
  v293 = v292 ^ STACK[0x55D0];
  v294 = __ROR8__(v292, 8);
  v295 = (((2 * (v294 + v293)) & 0x8F0107B750BF0F9ELL) - (v294 + v293) - 0x478083DBA85F87D0) ^ 0x80B7CD4EB0A51047;
  v296 = v295 ^ __ROR8__(v293, 61);
  v297 = __ROR8__(v295, 8);
  v298 = (((2 * (v297 + v296)) | 0x1EB6936C65E20C22) - (v297 + v296) - 0xF5B49B632F10611) ^ 0xEADBF8CBBE34E340;
  v299 = v298 ^ __ROR8__(v296, 61);
  v300 = __ROR8__(v298, 8);
  v301 = (((v300 + v299) & 0x9050026D1A0121C1 ^ 0x1040020110012141) + ((v300 + v299) & 0x6FAFFD92E5FEDE3ELL ^ 0x23078D82A5AE980BLL) - 1) ^ 0xD2E672D864FA4031;
  v302 = v301 ^ __ROR8__(v299, 61);
  v303 = __ROR8__(v301, 8);
  v304 = (((2 * (v303 + v302)) | 0x607E5A32736EE530) - (v303 + v302) + 0x4FC0D2E6C6488D68) ^ 0x6A5F66153A15CD01 ^ __ROR8__(v302, 61);
  v305 = (__ROR8__((((2 * (v303 + v302)) | 0x607E5A32736EE530) - (v303 + v302) + 0x4FC0D2E6C6488D68) ^ 0x6A5F66153A15CD01, 8) + v304) ^ 0xFA35E2CDCB3E31C7;
  v306 = v305 ^ __ROR8__(v304, 61);
  v307 = (__ROR8__(v305, 8) + v306) ^ 0xD2F00CE620E5D3AELL;
  v308 = v307 ^ __ROR8__(v306, 61);
  v309 = __ROR8__(v307, 8);
  LODWORD(STACK[0x5270]) = LODWORD(STACK[0x4AC8]) ^ (((((2 * (v309 + v308)) & 0xEA999A3EBBE9214ELL) - (v309 + v308) - 0x754CCD1F5DF490A8) ^ 0x7EC039D10C7B1A23) >> STACK[0x4A68]);
  v310 = v0 - 13402;
  v311 = (v0 - 9731) | 0x1036;
  v312 = STACK[0x5348] & ((STACK[0x5740] | 0x41FE3F6B) + 2050767130 + (STACK[0x5740] | 0xBE01C095));
  LODWORD(STACK[0x5230]) = v19 - 46;
  LODWORD(STACK[0x4F70]) = v35 - 2;
  LODWORD(STACK[0x5378]) = v133 - 108;
  LODWORD(STACK[0x5248]) = v255 - 126;
  v313 = *(STACK[0x53A0] + (v312 & (v311 ^ 0xFFFFCBC7)));
  v314 = __ROR8__((v313 + STACK[0x5780]) ^ 0xB88801D4E1C76353, 8);
  v315 = (v313 + STACK[0x5780]) ^ 0xB88801D4E1C76353 ^ __ROR8__(v313, 61);
  v316 = (((2 * (v314 + v315)) & 0xE729CD41CCB7DA7CLL) - (v314 + v315) + 0xC6B195F19A412C1) ^ 0x34A3A835FEA17AB6;
  v317 = __ROR8__(v316, 8);
  v318 = v316 ^ __ROR8__(v315, 61);
  v319 = (v317 + v318 - ((2 * (v317 + v318)) & 0x4F599F5CF33BACCELL) - 0x5853305186622999) ^ 0x422C7ED3F5583336;
  v320 = v319 ^ __ROR8__(v318, 61);
  v321 = (__ROR8__(v319, 8) + v320) ^ 0xE1A1FD5BD155F97ALL;
  v322 = v321 ^ __ROR8__(v320, 61);
  v323 = (__ROR8__(v321, 8) + v322) ^ 0xDA604B0C03A2BF99;
  LODWORD(STACK[0x4F98]) = v272 - 116;
  v324 = v323 ^ __ROR8__(v322, 61);
  v325 = (__ROR8__(v323, 8) + v324) ^ 0xFA35E2CDCB3E31C7;
  v326 = __ROR8__(v325, 8);
  v327 = v325 ^ __ROR8__(v324, 61);
  v328 = (((2 * ((v326 + v327) ^ 0x6335FD21F374B000)) | 0xDDBFDC2BA9AB2902) - ((v326 + v327) ^ 0x6335FD21F374B000) - 0x6EDFEE15D4D59481) ^ 0xDF1A1FD20744F72FLL;
  v329 = __ROR8__(v328, 8);
  v330 = __ROR8__(v327, 61);
  LODWORD(STACK[0x54F0]) = LODWORD(STACK[0x5670]) ^ (((((2 * (v329 + (v328 ^ v330))) | 0x2E99EB0305173654) - (v329 + (v328 ^ v330)) - 0x174CF581828B9B2ALL) ^ 0xE33FFEB02CFBEE51) >> STACK[0x53F8]);
  STACK[0x52F8] = 27;
  LODWORD(STACK[0x52B8]) = 12;
  return (*(STACK[0x57D8] + 8 * v310))(LODWORD(STACK[0x52A0]));
}

uint64_t sub_1007DBC5C()
{
  v1 = STACK[0xC310];
  v2 = STACK[0x7ED8];
  v3 = (&STACK[0x10120] + v2);
  *v3 = 0x5A6762CB0FB2273ALL;
  v3[1] = 0x678F1779A8439AF4;
  *(&STACK[0x10120] + v2 + 16) = veorq_s8(*(&STACK[0x10120] + v2), xmmword_1012371C0);
  STACK[0x7ED8] = v2 + 32;
  STACK[0xCF30] += 32;
  STACK[0xD1F8] = v1;
  STACK[0xD1F0] = v1;
  return (*(STACK[0x57D8] + 8 * ((((&STACK[0x10120] + v2 + 16) == v1) * ((v0 ^ 0x686D) - 6424)) ^ v0)))();
}

uint64_t sub_1007DBDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * (v7 - 21303));
  return (*(v9 + 8 * (v7 - 17963)))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1007DBFC4@<X0>(unsigned int a1@<W8>)
{
  v3 = v2 < 0x5CB93ECD;
  v4 = v1 + 1;
  if (v3 == v4 >= 0xA346C133)
  {
    v3 = v4 + 1555644109 < v2;
  }

  return (*(STACK[0x57D8] + 8 * ((32132 * v3) ^ a1)))();
}

uint64_t sub_1007DCA60()
{
  v1 = STACK[0x51B8] - 22049;
  LODWORD(STACK[0xBAC4]) = LODWORD(STACK[0x7CC0]) + v0;
  v2 = STACK[0x57D8];
  STACK[0xADE8] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x136C)))();
}

uint64_t sub_1007DCB1C(uint64_t a1)
{
  v2 = STACK[0xA880];
  STACK[0xC5B8] = STACK[0xA880];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0xD6B3399B029E788BLL;
  LODWORD(STACK[0xCD80]) = -541220389;
  return (*(STACK[0x57D8] + 8 * ((4673 * (v1 != 934102942)) ^ (v1 - 853979471))))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1007DCCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x5640] = v7 ^ 0xFFFFFF91;
  STACK[0x5630] = v7 ^ 0xFFFFFFE2;
  STACK[0x5650] = v7 ^ 0x16u;
  STACK[0x57B0] = v7 ^ 0x37u;
  return (*(STACK[0x57D8] + 8 * v8))(149, v7 ^ 0x58u, v7 ^ 0x6Fu, a4, v7 ^ 0xFFFFFFCF, v7 ^ 0x64u, a7, v7 ^ 0xFFFFFF94);
}

uint64_t sub_1007DCDD8()
{
  v0 = STACK[0x51B8] - 22082;
  LODWORD(STACK[0x9F9C]) = LODWORD(STACK[0xA4D0]) << (STACK[0x51B8] ^ 0x52);
  v1 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1748)))();
}

uint64_t sub_1007DCE38()
{
  v0 = (STACK[0x51B8] - 585956621) & 0x22ECF5FF;
  v1 = STACK[0x51B8] - 19796;
  STACK[0xBFC8] = STACK[0xA940];
  v2 = STACK[0x7ED8];
  v3 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x6C00] = v3;
  STACK[0xAC38] = (v3 + 3088);
  STACK[0x7ED8] = v2 + 6176;
  STACK[0x62F8] = 3088;
  v4 = STACK[0x57D8];
  STACK[0xCF38] = *(STACK[0x57D8] + 8 * v1);
  return (*(v4 + 8 * ((v0 ^ 0x599F) + v1)))();
}

uint64_t sub_1007DCF34()
{
  v0 = STACK[0x51B8] ^ 0x4886;
  LODWORD(STACK[0x8A04]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x8A04];
  LODWORD(STACK[0x9094]) = -32197432;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007DCFD8@<X0>(int a1@<W7>, int a2@<W8>)
{
  v6 = STACK[0x57D8];
  STACK[0x9CA8] = *(STACK[0x57D8] + 8 * a2);
  v7 = STACK[0x7ED8];
  v8 = (&STACK[0x10120] + STACK[0x7ED8]);
  STACK[0xC7B8] = v8;
  STACK[0x7ED8] = v7 + 432;
  LODWORD(STACK[0x58AC]) = v5;
  STACK[0x94E8] = v4;
  LODWORD(STACK[0x8C14]) = 85541415;
  STACK[0x6410] = 0;
  LODWORD(STACK[0x7584]) = 2056410192;
  LODWORD(STACK[0xB1EC]) = a1 + 1;
  *v8 = 1343290929;
  LODWORD(STACK[0x57C0]) = v3 + 43255311 + ((2 * v2) ^ 0x3E7E) + 3745;
  LODWORD(STACK[0x57A0]) = v3 - 39440240;
  LODWORD(STACK[0x57B0]) = v3 | 0xD0BAD1E0;
  return (*(v6 + 8 * v2))();
}

uint64_t sub_1007DD1D4()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x51B8] + 4051;
  v2 = (LOWORD(STACK[0xD7B4]) + 15) & 0xFFF0;
  v3 = STACK[0xD7B8];
  *(STACK[0xD7B8] + 8) = 7 * (STACK[0x51B8] ^ 0x595B) + 2101943338 + ((v2 + 21670) & 0xFFFE) + ((((v2 + 21670) & 0xFFFEu) < 0x5496) << 16) - 927;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2468)))((v2 + 16) & 0xFFF0);
  *v3 = v5;
  return (*(v4 + 8 * ((119 * (v5 != 0)) ^ v1)))();
}

void *sub_1007DD600()
{
  v0 = STACK[0x3C88];
  v1 = (STACK[0x3C88] - 2128) | 1;
  v2 = STACK[0x57D8];
  STACK[0x8F80] = *(STACK[0x57D8] + 8 * STACK[0x3C88]);
  return (*(v2 + 8 * (v0 + 9649 + v1)))(&STACK[0x5EC0]);
}

uint64_t sub_1007DD640@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = (a2 + v5);
  v9 = v8[1];
  v10 = v6 + v5;
  *(v10 + 24) = *v8;
  *(v10 + 40) = v9;
  return (*(STACK[0x57D8] + 8 * (((v5 + v7 + v3 == v2) * a1) ^ v4)))();
}

uint64_t sub_1007DD6DC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  STACK[0xB680] = 0;
  return (*(v1 + 8 * (v0 - 11337)))(v2);
}

uint64_t sub_1007DD718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7 | 0x70;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v8);
  return (*(v9 + 8 * (v8 ^ 0x10BE)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1007DD828()
{
  LODWORD(STACK[0x5290]) = v1;
  LODWORD(STACK[0x52C8]) = STACK[0x52D0] & 0xFFFFFFF8;
  v3 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v4 = *v3;
  STACK[0x5110] = ((v3 & 0xFFFFFFF8) + v2) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x53E8] = v3 & 0xFFFFFFFFFFFFFFF8;
  STACK[0x5620] = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x57B0] = 8 * (v3 & 7);
  LODWORD(STACK[0x57C0]) = v4 ^ 0xFFFFFFBD;
  STACK[0x53F8] = *STACK[0x51F0];
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 50;
  return (*(STACK[0x57D8] + 8 * (v0 ^ (212 * (LODWORD(STACK[0x53D0]) == 50)))))();
}

uint64_t sub_1007DD904@<X0>(int a1@<W8>)
{
  STACK[0xBF70] = v1 + 1;
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & ((v1 & 0x51C75520 | 0xAE38AADD) - 103642729 + ((((a1 - 1384693920) & 0x5288DFFF) + 1371995341) | v1 & 0xFFFFFFF8)) & 0xFFFFFFF8));
  v3 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = (((v2 + v3) | 0x9B844661E911A7E5) - ((v2 + v3) | 0x647BB99E16EE581ALL) + 0x647BB99E16EE581ALL) ^ 0x6F921728764F9B82;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (((2 * (v6 + v5)) & 0x8DC41610811BE9C2) - (v6 + v5) + 0x391DF4F7BF720B1ELL) ^ 0x2C2FB61983826157;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = __ROR8__(v7, 8);
  v10 = (((v9 + v8) | 0xB843D3CEF71D40F9) - ((v9 + v8) | 0x47BC2C3108E2BF06) + 0x47BC2C3108E2BF06) ^ 0x9A360709CF287962;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xE5AF1AB32EBD3CDDLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = __ROR8__(v12, 8);
  v15 = (v14 + v13 - ((2 * (v14 + v13)) & 0x89C9AEECDE5FF69CLL) + 0x44E4D7766F2FFB4ELL) ^ 0x83391E80A36A4C6FLL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xA82620A559D2DA78;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5F8DEC3EA3980A1BLL;
  LOBYTE(v19) = (((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0xC1C3C8D2A4C54828) >> (8 * (v1 & 7u))) ^ *v1;
  return (*(STACK[0x57D8] + 8 * ((21348 * ((((v19 ^ 0x22) - 60) ^ ((v19 ^ 0x90) + 114) ^ ((v19 ^ 0xB2) + 84)) == 58)) ^ a1)))();
}

uint64_t sub_1007DDB98@<X0>(int a1@<W8>)
{
  v2 = STACK[0x57D8];
  STACK[0xB618] = *(STACK[0x57D8] + 8 * v1);
  v3 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = ((a1 - 19908) ^ 0x3981u) + STACK[0x7ED8] - 13027;
  strcpy(v3, "com_apple_driver_FairPlayIOKit");
  v3[31] = 0;
  v4 = *(&off_101353600 + a1 - 21365);
  v3[32] = 0;
  return (*(v2 + 8 * ((28086 * (*v4 == (a1 - 86))) ^ (a1 - 9539))))();
}

uint64_t sub_1007DDC74()
{
  LODWORD(STACK[0xCBE8]) = v1;
  v3 = STACK[0x27F8];
  v4 = v0 - 1885730326 - STACK[0x27F8];
  LODWORD(STACK[0x1D4CC]) = v4;
  STACK[0x1D4D8] = v1 - v3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4C8]) = v4 + 55;
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4E0] = v3 + 4151854225u;
  LODWORD(STACK[0x1D4C4]) = v3 ^ (v0 - 1885730326) ^ 0xDDA;
  v5 = v0 ^ 0x2411;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v2 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_1007DDD74()
{
  v3 = STACK[0x51B8];
  v4 = STACK[0xC6A0];
  v5 = (STACK[0x51B8] - 22614) ^ 0x98E2C81A;
  v6 = 1534937323 * (((v0 | 0x859E2236FC9DD46ELL) - (v0 & 0x859E2236FC9DD46ELL)) ^ 0x48E6AAF43A732F29);
  *(v1 + 600) = -1729968320 - v6 + STACK[0x51B8] - 22614;
  *(v1 + 612) = v6 ^ (v3 - 22614) ^ 0x98E2C872;
  *(v1 + 604) = v6 + 1451493860 + v3;
  *(v1 + 608) = v6;
  *(v1 + 624) = v5 + v6;
  *(v1 + 592) = v4 ^ v6;
  *(v1 + 616) = v6;
  v7 = STACK[0x57D8];
  v8 = (*(STACK[0x57D8] + 8 * (v3 + 9182)))(v2 - 240);
  return (*(v7 + 8 * *(v1 + 628)))(v8);
}

uint64_t sub_1007DDF50@<X0>(int a1@<W8>)
{
  v1 = STACK[0x74A0];
  LODWORD(STACK[0x90E4]) = STACK[0x901C];
  v2 = STACK[0x8090];
  LODWORD(STACK[0x6BF4]) = STACK[0x8014];
  v3 = STACK[0xA3B8];
  STACK[0xA0C8] = STACK[0xA3B8];
  v4 = STACK[0x8BD8];
  STACK[0x5B18] = STACK[0x8BD8];
  v5 = STACK[0x7ED8];
  STACK[0x9BD0] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = v5 + ((a1 - 2129052318) & 0x7EE65DFE ^ 0x10CALL);
  STACK[0x5878] = v1;
  STACK[0x7288] = v2;
  if (v1)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 && v3 != 0 && v4 != 0;
  return (*(STACK[0x57D8] + 8 * ((1005 * v9) ^ a1)))();
}

uint64_t sub_1007DE08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0xB658] - 0x30BDFED8F32E6575;
  v9 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v9 + 8 * (v7 ^ 0x3C72 ^ (v7 + 10302))))(v8, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1007DE12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x5300]) = STACK[0x5220] & 0xFFFFFFF8;
  v4 = v3 + 14012;
  v5 = LODWORD(STACK[0x53D0]) != 44;
  v6 = STACK[0x4FC0] + LODWORD(STACK[0x52E8]);
  v7 = *v6;
  v8 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5288] = 8 * (v6 & 7);
  LODWORD(STACK[0x5290]) = v7 ^ 0xFFFFFFBD;
  STACK[0x51C0] = v6 & 0xFFFFFFFFFFFFFFF8;
  v9 = ((v6 & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v10 = *STACK[0x51E8];
  v11 = *STACK[0x51F0];
  LODWORD(STACK[0x52E8]) = LODWORD(STACK[0x5008]) + 44;
  STACK[0x5188] = v10;
  STACK[0x50D8] = v9;
  v12 = *(v11 + (v10 & v9));
  STACK[0x5218] = v8;
  return (*(STACK[0x57D8] + 8 * (v4 ^ (19 * v5))))(a1, a2, a3, __ROR8__((v12 + v8) ^ 0xB88801D4E1C76353, 8) + ((v12 + v8) ^ 0xB88801D4E1C76353 ^ __ROR8__(v12, 61)));
}

uint64_t sub_1007DE3EC()
{
  v3 = STACK[0x51B8];
  v4 = STACK[0x2D7C];
  v5 = STACK[0x2D68];
  *(v0 + 596) = STACK[0x2D68] ^ LODWORD(STACK[0x2D7C]) ^ 0x1057;
  *(v0 + 600) = v4 - v5 + 38;
  *(v0 + 604) = v4 - v5;
  *(v0 + 592) = (v3 - 1079089617) ^ v5;
  *(v0 + 608) = v5;
  *(v0 + 616) = 4151854225u - v5;
  *(v0 + 624) = v5 + v1;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x2411)))(v2 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_1007DE47C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 + 23708)))();
  STACK[0x9388] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1007DE4B4@<X0>(int a1@<W8>)
{
  v3 = STACK[0x57D8];
  STACK[0x8AA0] = *(STACK[0x57D8] + 8 * a1);
  return (*(v3 + 8 * (v2 ^ (16 * (v1 - 0x2C73422C535007B6 - ((2 * v1) & 0xA7197BA7595FF094) != ((v2 - 22275) ^ 0x5B96u) - 0x2C73422C5350600CLL)))))();
}

uint64_t sub_1007DE53C()
{
  v3 = v1 + v0;
  v4 = 1534937323 * ((v2 + 0x3CCA5DCB4B314C57 - 2 * ((v2 - 240) & 0x3CCA5DCB4B314D47)) ^ 0xF1B2D5098DDFB600);
  STACK[0x1D4C0] = STACK[0x6F98] ^ v4;
  LODWORD(STACK[0x1D4C8]) = (v3 | 0xBA444A36) - v4;
  LODWORD(STACK[0x1D4E0]) = v3 - 1169930866 + v4 + 99;
  LODWORD(STACK[0x1D4D0]) = v4;
  STACK[0x1D4D8] = v4;
  LODWORD(STACK[0x1D4CC]) = v4 + v1 + 1451493860;
  LODWORD(STACK[0x1D4D4]) = (v3 - 1169930866) ^ v4;
  v5 = v1 + 9182;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * v5))(v2 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4E4])))(v7);
}

uint64_t sub_1007DE614@<X0>(unint64_t a1@<X2>, unint64_t a2@<X8>)
{
  STACK[0x90E8] = a2;
  *(v4 + 2619) = v2;
  STACK[0x8380] = 0;
  LODWORD(STACK[0x7954]) = -769884012;
  STACK[0x65C8] = a1;
  STACK[0xBBC0] = 0x79296B4A625EDF44;
  STACK[0x5BE8] = a2 + 0x1B2DFF50870950FBLL;
  return (*(STACK[0x57D8] + 8 * ((16124 * ((((*(a2 + 48) ^ 0x6479C740) - 1685702464) ^ ((*(a2 + 48) ^ 0x6B5E43A2) - 1801339810) ^ ((*(a2 + 48) ^ 0xDD3B0476) + 583334794)) - 769884012 < ((v3 + 412458920) & 0xE76A2F3D ^ 0x27F5))) ^ (v3 - 3401))))();
}

uint64_t sub_1007DE7D4()
{
  v7 = STACK[0x57B0] + v6;
  v8 = *(*v4 + (((v7 & 0xFFFFFFF8 ^ (((v3 - 1523836128) & 0x5AD3B4F7) + 765401575)) + ((2 * (v7 & 0xFFFFFFF8)) | 0xA4C1C265) + 209574071) & *v5));
  v9 = STACK[0x57C0] + v6;
  v10 = (v8 + __ROR8__(v7 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0x91364DCB68334DBLL;
  v11 = v10 ^ __ROR8__(v8, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x448D6F6CA711D855;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (v13 + v14) ^ 0xF5F2FED308AA2278;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x67536EC0FB8B549DLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xF887455E88108A0CLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0x205D287BFC299E22) + 0x102E943DFE14CF11) ^ 0x345DDF585FF44B48;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0xDE474C5649931CCALL - ((v24 + v23) | 0xDE474C5649931CCALL) + ((v24 + v23) | 0x21B8B3A9B66CE335)) ^ 0x61717C438AA928D4;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = ((((2 * (v27 + v26)) | 0x49777767088A9E38) - (v27 + v26) + 0x5B44444C7BBAB0E4) ^ 0xCBD8E79D61929DDALL) >> (8 * (v7 & 7u));
  v29 = *(*v4 + (*v5 & ((v9 & 0xFFFFFFF8) - 1831847764) & 0xFFFFFFF8));
  v30 = (v29 + __ROR8__(v9 & 0xFFFFFFFFFFFFFFF8, 8)) ^ 0xC2AF3EAA3FF1B8E4;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x65F254DD188DB4FCLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) | 0x6B92EB94B6647C38) - (v34 + v33) - 0x35C975CA5B323E1CLL) ^ 0x5A39335C3A2B2C91;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xA1B29DC5D776132BLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0xCEC5CEDEEE266595 - ((v39 + v38) | 0xCEC5CEDEEE266595) + ((v39 + v38) | 0x313A312111D99A6ALL)) ^ 0xDE3E1160E43CD286;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) | 0x105F9468EEBB2CALL) - (v42 + v41) - 0x82FCA34775D965) ^ 0xD8454FBC8D6C00BBLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x5455012E8AB1C38FLL;
  LOBYTE(STACK[0xEFE6]) = (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v44, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v9 & 7u))) ^ *v7 ^ v28;
  v46 = (*(*v1 + 32 * *(((v9 - *v0) & 0xFFFFFFFFFFFFFFF0) + *v2 + 8) + 16))();
  return (*(STACK[0x57D8] + 8 * ((31874 * (v6 != 47)) ^ v3)))(v46);
}

uint64_t sub_1007DEBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, unsigned int a15, int a16, unsigned int a17, unsigned int a18, unsigned int a19, uint64_t a20, unint64_t a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, int a42, int a43, int a44, int a45, int a46, uint64_t a47, int a48, int a49, int a50, int a51, int a52, int a53, uint64_t a54, uint64_t a55, unint64_t a56, uint64_t a57, unint64_t a58, unint64_t a59, unint64_t a60, unint64_t a61, unint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x4E0]) = v77;
  LODWORD(STACK[0x4E8]) = a5;
  LODWORD(STACK[0x244]) = 0;
  v82 = (v77 + 346122519) & 0xEB5EF6FA;
  LODWORD(STACK[0x4AC]) = v82;
  v83 = STACK[0x474];
  v107 = a6 + 9 * LODWORD(STACK[0x474]) + 79;
  v84 = a49 + 19 * v107;
  v85 = a50 + 79 * v84;
  v108 = a53 - 83 * v85;
  v103 = a43 - 75 * v108;
  v104 = a44 - 43 * v103;
  v86 = a45 + v104 * (v82 - 61);
  v101 = a41 - v86 + (v86 << 7);
  v102 = a42 + 77 * v101;
  v87 = LODWORD(STACK[0x478]) + 13 * v102;
  LODWORD(STACK[0x478]) = v87;
  v106 = a51 + 13 * v87;
  v109 = v76 + 89 * v106;
  v110 = v80 + 55 * v109;
  v105 = a46 - 49 * (v78 - 41 * v110);
  v88 = LODWORD(STACK[0x218]) - (a67 + 23 * (v81 - 11 * (a72 - 25 * v105)));
  v89 = STACK[0x210] - 73 * v88;
  v90 = STACK[0x208] - 77 * v89;
  STACK[0x208] = v90;
  STACK[0x210] = v89;
  LODWORD(STACK[0x218]) = v88;
  v91 = LODWORD(STACK[0x228]) - 75 * (a71 + 25 * (17 * (a74 - 35 * (a76 + 25 * (a75 - 97 * v90))) + a73));
  LODWORD(STACK[0x228]) = v91;
  v92 = STACK[0x200] - 123 * (a69 - 55 * v91);
  v93 = v83 + 45 * (a70 - 69 * (a68 + 109 * v92));
  LODWORD(STACK[0x474]) = v93;
  STACK[0x200] = v92;
  v94 = ((127 * v107) << 48) | ((101 * v93 + 1427) << 56) | ((101 * v84) << 40) | ((-37 * v85) << 32) | ((-99 * v108) << 24);
  LOBYTE(v89) = 59 - 105 * v86;
  LOBYTE(v91) = v89 & 0x8D ^ 0xE4;
  v95 = (v94 - ((2 * v94) & 0x6A8AD8CF68000000) + 0x35456C67B4E3E871) & 0xBAB4F419410DF2FDLL ^ (((v89 ^ (2 * ((v89 ^ 0x44) & (2 * ((v89 ^ 0x44) & (2 * ((v89 ^ 0x44) & (2 * ((v89 ^ 0x44) & (2 * ((v89 ^ 0x44) & (2 * (v89 & (2 * v89) & 0xA ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91))) | (((-7 * v104) - ((-14 * v104) & 0xDALL)) << 8)) + 0x74B425BD71776D00) ^ ((v94 - ((2 * v94) & 0x6A8AD8CF68000000) + 0x35456C67B4E3E871) ^ 0x400A03800A1C0502) & (((49 * v103) << 16) ^ 0x454B0BE6BEF20D02);
  v96 = 101 * v105 + 95;
  v97 = ((-99 * v101) << 56) | ((-81 * v102) << 48) | ((-5 * LOBYTE(STACK[0x478])) << 40) | ((29 * v106) << 32) | ((-95 * v109) << 24);
  LOBYTE(v89) = v96 & 0x79 ^ 0xEC;
  STACK[0x230] ^= v95 ^ 0x1FB4A5ACF8480FELL;
  v98 = ((v97 - ((2 * v97) & 0x40007B5ED4000000) + 0x20003DAF6ACAB1AELL) ^ 0xDB23424091354E10) & (((-53 * v110) << 16) ^ 0xFB2377C1F9745E92) ^ (v97 - ((2 * v97) & 0x40007B5ED4000000) + 0x20003DAF6ACAB1AELL) & 0x4DC883E068BA16DLL ^ ((((69 * (v78 - 41 * v110)) - ((138 * (v78 - 41 * v110)) & 0x1AELL)) << 8) + 0x5F85CAF86600D700) ^ 0xA4A6B5179DFE28C7 ^ (v96 ^ (2 * ((v96 ^ 0x20) & (2 * ((v96 ^ 0x20) & (2 * ((v96 ^ 0x20) & (2 * ((v96 ^ 0x20) & (2 * (v96 & (2 * (((2 * v96) & 0x42 | 0x21) & v96)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89)));
  v99 = *(v79 + 8 * SLODWORD(STACK[0x4E0]));
  STACK[0x238] ^= v98;
  STACK[0x440] = a61;
  STACK[0x468] = a13;
  STACK[0x448] = a19;
  LODWORD(STACK[0x21C]) = STACK[0x4E8];
  STACK[0x438] = a60;
  STACK[0x4B0] = a22;
  STACK[0x4E0] = a59;
  STACK[0x4D8] = a56;
  LODWORD(STACK[0x450]) = a16;
  STACK[0x428] = a62;
  STACK[0x460] = a58;
  STACK[0x4C0] = a21;
  STACK[0x4B8] = a18;
  STACK[0x4C8] = a15;
  STACK[0x430] = a17;
  STACK[0x458] = a14;
  return v99(a1, a2, a3, a4, 0);
}

uint64_t sub_1007DF3A0()
{
  v0 = STACK[0x51B8] - 19857;
  v1 = (STACK[0x51B8] + 1675487109) & 0x9C21DDF7;
  v2 = STACK[0x57D8];
  STACK[0xCFB8] = *(STACK[0x57D8] + 8 * v0);
  return (*(v2 + 8 * (v0 + v1 - 292)))(STACK[0x57A0]);
}

uint64_t sub_1007DF45C()
{
  LODWORD(STACK[0x770C]) = v1;
  LOBYTE(STACK[0xCAC7]) = 0;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007DF71C@<X0>(unsigned __int8 *a1@<X8>)
{
  STACK[0xD248] = 0;
  STACK[0xD270] = 0;
  v2 = *(&off_101353600 + (v1 ^ 0x2499));
  STACK[0xD238] = 0;
  STACK[0xD240] = 0;
  v3 = a1[8];
  v4 = *(&off_101353600 + (v1 ^ 0x204A)) - 8;
  v5 = v4[v3 ^ 0x7D];
  STACK[0xD260] = 0x65D60BB8BC60833ELL;
  STACK[0xD278] = 0x258DA3F455597FD4;
  STACK[0xD228] = 0;
  v6 = *a1;
  LODWORD(STACK[0xD254]) = -866955040;
  LODWORD(v3) = v3 ^ v5 ^ 0xFFFFFF81;
  v7 = *(&off_101353600 + (v1 ^ 0x2686)) - 4;
  v8 = v6 ^ 0xB8 ^ v4[(((v6 ^ 0xF1) - (v6 ^ 0x3B)) ^ 0xFFFFFFFC) + (v6 ^ 0xF1)];
  v9 = v7[a1[11] ^ 0x7DLL] ^ 0x85 | (v3 << 24);
  v10 = *(&off_101353600 + (v1 - 7929)) - 4;
  v11 = (a1[12] ^ 0x72 ^ v4[a1[12] ^ 0x3CLL]) << 24;
  v12 = v10[a1[10] ^ 0xABLL] ^ 0x34;
  LODWORD(v3) = v10[a1[14] ^ 0x56] ^ 0x56;
  v13 = a1[4];
  STACK[0x5750] = v4;
  v14 = v11 | (v3 << 8);
  v15 = v13 ^ 0x16 ^ v4[v13 ^ 0xF4];
  LODWORD(v13) = *(v2 + (a1[9] ^ 0x99));
  v16 = (v9 | (v12 << 8)) & 0xFF00FFFF | (((v13 ^ (((((v13 ^ 0x9D) >> 2) & 0x16 ^ (v13 ^ 0xFFFFFF9D) & 0x56 | (v13 ^ 0xFFFFFF9D) & 0xA8) ^ ((v13 ^ 0x9D) >> 2) & 0x28) >> 1)) ^ 0xDE) << 16);
  LOBYTE(v12) = *(v2 + (a1[1] ^ 0xE3));
  v17 = a1[7] ^ 0xCLL;
  v18 = v7[a1[3] ^ 0xF0] ^ 0x85 | (v8 << 24);
  STACK[0x5770] = v7;
  v19 = v7[v17];
  v20 = v18 & 0xFF00FFFF | (((v12 ^ ((v12 ^ 0x9D) >> 3) ^ ((v12 ^ 0x9D) >> 1)) ^ 0xDF) << 16);
  LOBYTE(v12) = v10[a1[2] ^ 0xB7] ^ 0xA9;
  v21 = a1[5] ^ 0xEELL;
  STACK[0x5760] = v2;
  v22 = v20 & 0xFFFF00FF | ((v12 - ((2 * v12) & 0x46) + 35) << 8);
  v23 = v19 ^ 0x85;
  v24 = (((a1[6] - (a1[6] ^ 0x25)) ^ 0xFFFFFFFE) + a1[6]) ^ 0x97;
  v25 = (v23 << 6) & 0xFFFFFFFFC03FFFFFLL | (((*(v2 + v21) ^ ((*(v2 + v21) ^ 0x9D) >> 3) ^ ((*(v2 + v21) ^ 0x9D) >> 1)) ^ 0x40u) << 22);
  STACK[0x5740] = v10;
  v26 = (v25 | (v15 << 30) | (v15 >> 2) | ((v10[v24] ^ 0x36) << 14)) ^ 0xCA700F03;
  LODWORD(STACK[0x57B0]) = v16 ^ 0xFE;
  LODWORD(STACK[0x5780]) = v22;
  LODWORD(STACK[0x5790]) = v22 ^ 0x10;
  return (*(STACK[0x57D8] + 8 * v1))(v14, 2062533102, STACK[0xD268], 2360622187, (v26 << 26), v26, STACK[0xD230], 647350488);
}

uint64_t sub_1007DFB98@<X0>(int a1@<W8>)
{
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v1 == 0x63A567E3E81FD05;
  return (*(STACK[0x57D8] + 8 * ((((v6 ^ (a1 + 50)) & 1) * (a1 ^ 0x75FA)) ^ a1)))();
}

uint64_t sub_1007DFCE4@<X0>(_DWORD *a1@<X8>)
{
  *v1 = *a1;
  v1[1] = a1[1];
  v1[2] = a1[2];
  v1[3] = a1[3];
  v1[4] = a1[4];
  return (STACK[0xA0F8])();
}

uint64_t sub_1007DFD20@<X0>(int a1@<W2>, int a2@<W4>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  v12 = STACK[0x5060];
  LODWORD(STACK[0x5780]) = LODWORD(STACK[0x5058]) + LODWORD(STACK[0x5398]);
  v13 = LODWORD(STACK[0x5380]) + LODWORD(STACK[0x5378]) + LODWORD(STACK[0x5050]);
  v14 = (v11 + a4) >> 16;
  v15 = (v11 + a4 - v14) >> 8;
  v16 = (v11 + a1 - v15 - v14) >> 15;
  v17 = (STACK[0x57B0] + v11 - v16 - v15 - v14 - v7) >> (((v12 - 113) & 0x79) - 69);
  v18 = STACK[0x57B0] - v17 - v16 + v11 - v15 - v14 + v9;
  v19 = v11 - v17;
  v20 = v19 + v6;
  v21 = (v20 - v16 - v15 - v14) >> 15;
  v22 = (v20 + v21 - v16 - v15 - v14) >> 6;
  v23 = STACK[0x57B0] + v19 + v21 - v22 - v16 - v15 - v14 - v8;
  v24 = v19 + v21 + v5;
  v25 = (v24 - v22 - v16 - v15 - v14) >> 10;
  v26 = STACK[0x57B0] + v19 + ((v24 + v25 - v22 - v16 - v15 - v14) >> 4) + v25 + v21 - v22 - v16 - v15 - v14 - a5;
  v27 = (v26 ^ 0xB58F2697) - ((v26 ^ 0xB58F2697) >> 8);
  v28 = v26 ^ a3 ^ v10 & (v26 >> 1);
  v29 = v27 + (v27 >> 3);
  v30 = v29 + 1403198580 + ((v29 + 1403198580) >> 14) + ((v29 + 1403198580 + ((v29 + 1403198580) >> 14)) >> 5);
  v31 = (((v30 ^ 0x840C6CC4) - ((v30 ^ 0x840C6CC4) >> 14)) >> (v28 & 5) >> (v28 & 5 ^ 5)) + (v30 ^ 0x840C6CC4) - ((v30 ^ 0x840C6CC4) >> 14);
  v32 = LODWORD(STACK[0x5760]) ^ (LODWORD(STACK[0x4FB0]) - 1106674087 - ((2 * LODWORD(STACK[0x4FB0])) & 0x7C12FCB2));
  v33 = STACK[0x5338];
  v34 = LODWORD(STACK[0x57A0]) ^ 0xE43CC7D6 ^ (v33 + 280146994 - ((2 * v33) & 0x21656864));
  v35 = STACK[0x5720];
  v36 = LODWORD(STACK[0x4FB0]) ^ LODWORD(STACK[0x5720]) ^ (v32 - ((2 * v32) & 0x1C8F92DA) - 1907898003) ^ v18;
  v37 = a2 ^ v18;
  v38 = v31 + 68127163 + ((v31 + 68127163) >> 14) + ((v31 + 68127163 + ((v31 + 68127163) >> 14)) >> 6);
  v39 = (v34 - ((2 * v34) & 0x390516C2) - 1669166239) ^ LODWORD(STACK[0x5540]);
  v40 = v37 ^ v29 ^ v38 ^ 0xC062409 ^ v10 & ((v36 ^ v29 ^ v38) >> 1);
  v41 = (v40 - ((2 * v40) & 0x6AC5EFC8) + 895678436) ^ LODWORD(STACK[0x50E0]);
  LODWORD(STACK[0x5390]) = 2 * v41;
  LODWORD(STACK[0x5398]) = v41;
  LODWORD(STACK[0x5380]) = v41 - 1106674087 - ((2 * v41) & 0x7C12FCB2);
  v42 = v38 + 1764850293 - ((v38 + 1764850293) >> 9) - ((v38 + 1764850293 - ((v38 + 1764850293) >> 9)) >> 1);
  v43 = v30 ^ v23 ^ LODWORD(STACK[0x57C0]) ^ v42 ^ v10 & ((v39 ^ v33 ^ v23 ^ v30 ^ v42) >> 1);
  v44 = v33 ^ LODWORD(STACK[0x5078]) ^ v39 ^ (v43 - ((2 * v43) & 0x5BB22B40) - 1378282080);
  v45 = STACK[0x5610];
  v46 = LODWORD(STACK[0x55B0]) - ((2 * LODWORD(STACK[0x5610])) & 0x99D8DDC0) - 987510010;
  v47 = (v46 ^ LODWORD(STACK[0x5740])) - ((2 * (v46 ^ LODWORD(STACK[0x5740]))) & 0x19B3CD4);
  v48 = STACK[0xD7E8];
  v49 = *(STACK[0xD7E8] + 8 * (0x526A55A0u % LODWORD(STACK[0x5700])));
  v50 = STACK[0x5710];
  v51 = ((((v49 ^ 0x194466FA03D6D688) + 0x7C81B1CCF7BD3A62) ^ ((v49 ^ 0x34427F5F590F3365) + 0x5187A869AD64DF8DLL) ^ ((v49 ^ 0xA9829D21DE5D6169) - 0x33B8B5E8D5C9727FLL)) + 0x1EBEAC4DD9715DA8) % STACK[0x5710];
  v52 = STACK[0x5318];
  LODWORD(STACK[0x4F98]) = v13 + 1;
  LODWORD(STACK[0x5740]) = v44 - ((2 * v44) & 0x390516C2) - 1669166239;
  v53 = (v47 - 2134008214) ^ v52 ^ v45 ^ v31 ^ (v42 - 2093344818 + ((v42 - 2093344818) >> 11) + ((v42 - 2093344818 + ((v42 - 2093344818) >> 11)) >> 6));
  v54 = ((v53 ^ v28 ^ v10 & (v53 >> 1)) - 2134008214 + (~(2 * (v53 ^ v28 ^ v10 & (v53 >> 1))) | 0xFE64C32B) + 1) ^ v52;
  LODWORD(v49) = (v54 - ((2 * v54) & 0x77A7472C) + 1003725718) ^ LODWORD(STACK[0x53E0]);
  v55 = *(v48 + 8 * (((((*(v48 + 8 * v51) ^ 0x147EF55767DE692DLL) + 0x7C327E3A1D42EEFELL) ^ ((*(v48 + 8 * v51) ^ 0xAB31084E4C4E3135) - 0x3C827CDCC92D491ALL) ^ ((*(v48 + 8 * v51) ^ 0x3BCB799DAF14DC9CLL) + 0x5387F2F0D5885B4DLL)) + 0x1337F016EFF904D3) % v50));
  STACK[0x57B0] = v48;
  v56 = *(v48 + 8 * (((((v55 ^ 0xF86B2C6B961B5454) - 0x3066449139680D0ALL) ^ ((v55 ^ 0x6A140CA6C330AFACLL) + 0x5DE69BA393BC090ELL) ^ ((v55 ^ 0x16FBA449D1AF7F7CLL) + 0x2109334C8123D9DELL)) + 0x4C89EC7E3B0457FBLL) % v50));
  LODWORD(v56) = ((((v56 ^ 0x67EB9A8CE49218C2) - 0x1B9BAED1AAF19D99) ^ ((v56 ^ 0x34F76CB337D0C8C2) - 0x488758EE79B34D99) ^ ((v56 ^ 0xD79872BB57C65484) + 0x5417B919E65A2E21)) - 0x70B4F262152C20ALL) % v50;
  v57 = LODWORD(STACK[0x56E0]) ^ 0x9090E753;
  LODWORD(STACK[0x4E80]) = v49;
  LODWORD(STACK[0x55B0]) = v49 ^ 0xCDA656B1;
  v58 = LODWORD(STACK[0x56F0]) ^ 0x60EFBE80u;
  v59 = ((((v56 - ((2 * v56) & 0x2616C0A0) - 1827970992) ^ 0xDA6FBBBE) - 1743833318) ^ (((v56 - ((2 * v56) & 0x2616C0A0) - 1827970992) ^ 0x11891071) + 1407818967) ^ (((v56 - ((2 * v56) & 0x2616C0A0) - 1827970992) ^ 0x58EDCB9F) + 445466425)) - 99530174;
  v60 = *(STACK[0x57D8] + 8 * v12);
  v61 = (v12 + 2045364367) & 0x86167F79;
  STACK[0x57C0] = (v61 - 9614);
  return v60(v58, v61, 3341923624, v35 ^ 0x9AD874Au, v57, v59, 0xC00B5644105D1DC1, 0x148CE0BEE4254147);
}

uint64_t sub_1007E06C8()
{
  LODWORD(STACK[0xDD20]) = -769884012;
  LODWORD(STACK[0xDD1C]) = 0;
  return (*(STACK[0x57D8] + 8 * (v0 - 9998)))();
}

uint64_t sub_1007E0790()
{
  v0 = STACK[0x51B8] - 13407;
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (STACK[0x51B8] + 9207)))(STACK[0x69F0]);
  STACK[0x69F0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1007E07D0()
{
  v0 = STACK[0x51B8];
  v1 = STACK[0x57D8];
  STACK[0x8580] = *(STACK[0x57D8] + 8 * (STACK[0x51B8] - 20089));
  return (*(v1 + 8 * (v0 - 18047)))();
}

uint64_t sub_1007E092C()
{
  v2 = LODWORD(STACK[0x50D0]) - LODWORD(STACK[0x52C0]);
  LODWORD(STACK[0x57B0]) ^= LODWORD(STACK[0x50C8]) ^ LODWORD(STACK[0x51D0]);
  v3 = STACK[0x57A0];
  v4 = STACK[0x5520];
  if ((STACK[0x57A0] & 1) == 0)
  {
    v4 = STACK[0x5510];
  }

  if (v3)
  {
    v5 = STACK[0x5580];
  }

  else
  {
    v5 = STACK[0x5570];
  }

  if (v3)
  {
    v6 = STACK[0x5500];
  }

  else
  {
    v6 = STACK[0x5218];
  }

  if (v3)
  {
    v7 = STACK[0x54F0];
  }

  else
  {
    v7 = STACK[0x5220];
  }

  v8 = STACK[0x54C0];
  if (v3)
  {
    v8 = STACK[0x54D0];
  }

  v9 = STACK[0x54B0];
  if ((v3 & 1) == 0)
  {
    v9 = STACK[0x54E0];
  }

  v10 = STACK[0x5480];
  if (v3)
  {
    v10 = STACK[0x5248];
  }

  LODWORD(STACK[0x54F0]) = v10;
  v11 = (v3 & 2) == 0;
  v12 = STACK[0x5560];
  if (!v11)
  {
    v12 = STACK[0x5550];
  }

  LODWORD(STACK[0x5220]) = v12;
  v13 = STACK[0x5540];
  if (v11)
  {
    v13 = STACK[0x5530];
  }

  LODWORD(STACK[0x5540]) = v13;
  if (v11)
  {
    v14 = STACK[0x54A0];
  }

  else
  {
    v14 = STACK[0x5490];
  }

  v15 = STACK[0x53B0];
  if (v11)
  {
    v15 = STACK[0x53A8];
  }

  LODWORD(STACK[0x52C0]) = v15;
  v16 = STACK[0x5228];
  if (v11)
  {
    v17 = STACK[0x5228];
  }

  else
  {
    v17 = v4;
  }

  LODWORD(STACK[0x5510]) = v17;
  if (!v11)
  {
    v4 = v16;
  }

  LODWORD(STACK[0x5500]) = v4;
  if (v11)
  {
    v18 = v9;
  }

  else
  {
    v18 = v8;
  }

  LODWORD(STACK[0x5520]) = v18;
  if (v11)
  {
    v19 = v8;
  }

  else
  {
    v19 = v9;
  }

  LODWORD(STACK[0x51D0]) = v19;
  v20 = STACK[0x5420];
  LODWORD(STACK[0x5580]) = v5;
  if (!v11)
  {
    v20 = v5;
  }

  LODWORD(STACK[0x53B0]) = v20;
  LODWORD(STACK[0x5570]) = v6;
  LODWORD(STACK[0x53A8]) = v7;
  if (v11)
  {
    v21 = v6;
  }

  else
  {
    v21 = v7;
  }

  LODWORD(STACK[0x5560]) = v21;
  v22 = (STACK[0x53E8] & 1) == 0;
  v23 = STACK[0x5208];
  if ((STACK[0x53E8] & 1) == 0)
  {
    v23 = STACK[0x5168];
  }

  LODWORD(STACK[0x5168]) = v23;
  v24 = STACK[0x5148];
  if (v22)
  {
    v24 = STACK[0x5130];
  }

  LODWORD(STACK[0x5148]) = v24;
  v25 = STACK[0x50D8];
  if (v22)
  {
    v25 = STACK[0x5128];
    v26 = STACK[0x5118];
  }

  else
  {
    v26 = STACK[0x5120];
  }

  v27 = LODWORD(STACK[0x5398]) ^ v2 ^ 0x1BF811AF;
  v28 = STACK[0x5110];
  if (v22)
  {
    v29 = v27;
  }

  else
  {
    v28 = v27;
    v29 = STACK[0x5108];
  }

  if (v22)
  {
    v30 = STACK[0x5100];
  }

  else
  {
    v30 = STACK[0x50E0];
  }

  v31 = (STACK[0x5780] & 2) == 0;
  v32 = STACK[0x50F0];
  if ((STACK[0x5780] & 2) == 0)
  {
    v32 = v1;
  }

  LODWORD(STACK[0x5480]) = v32;
  v33 = STACK[0x5388];
  if (v31)
  {
    v33 = STACK[0x5380];
  }

  LODWORD(STACK[0x5490]) = v33;
  v34 = STACK[0x50F8];
  if (!v31)
  {
    v34 = STACK[0x50E8];
  }

  LODWORD(STACK[0x54B0]) = v34;
  LODWORD(STACK[0x5380]) = v14 ^ 0xA9D13323;
  v35 = *(STACK[0x57D8] + 8 * v0);
  LODWORD(STACK[0x57C0]) = v25;
  LODWORD(STACK[0x5530]) = v26;
  if (v31)
  {
    v36 = v25;
  }

  else
  {
    v36 = v26;
  }

  LODWORD(STACK[0x54A0]) = v36;
  v37 = STACK[0x53D8];
  LODWORD(STACK[0x5388]) = v29;
  if (!v31)
  {
    v37 = v29;
  }

  LODWORD(STACK[0x54E0]) = v37;
  v38 = STACK[0x53B8];
  if (!v31)
  {
    v38 = v28;
  }

  LODWORD(STACK[0x54C0]) = v38;
  v39 = STACK[0x53F8];
  LODWORD(STACK[0x5550]) = v30;
  if (!v31)
  {
    v39 = v30;
  }

  LODWORD(STACK[0x54D0]) = v39;
  v40 = STACK[0x53F0];
  if (v31)
  {
    v40 = STACK[0x53E0];
  }

  LODWORD(STACK[0x5248]) = v40;
  return v35();
}

uint64_t sub_1007E0EF8@<X0>(int a1@<W8>)
{
  v2 = 0;
  v3 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0xDF49AC04));
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v3 ^ 0xDF49AC05) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3 ^ 0xDF49AC05;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  v10 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  v11 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v10 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v10;
  STACK[0xEE90] = 0;
  STACK[0xEE98] = v1;
  v12 = 16777619 * ((-548819963 * v11 + 7) ^ (-548819963 * v11)) % 7;
  v13 = 16777619 * ((-548819963 * v11 + 6) ^ (-548819963 * v11)) % 6;
  v14 = 16777619 * ((-548819963 * v11 + 5) ^ (-548819963 * v11)) % 5;
  v15 = 16777619 * ((-548819963 * v11 + 3) ^ (-548819963 * v11)) % 3;
  v16 = *(&STACK[0xEE90] | v12);
  *(&STACK[0xEE90] | v12) = STACK[0xEE97];
  v17 = *(&STACK[0xEE90] | v13);
  *(&STACK[0xEE90] | v13) = STACK[0xEE96];
  v18 = *(&STACK[0xEE90] | v14);
  *(&STACK[0xEE90] | v14) = STACK[0xEE95];
  v19 = STACK[0xEE90];
  LOBYTE(STACK[0xEE90]) = STACK[0xEE94];
  v20 = *(&STACK[0xEE90] | v15);
  *(&STACK[0xEE90] | v15) = STACK[0xEE93];
  v21 = vdup_n_s32(-548819963 * v11);
  v22.i32[0] = v21.i32[0];
  v22.i32[1] = -548819963 * v11 + 1;
  LOBYTE(STACK[0xEE97]) = v16;
  LOBYTE(STACK[0xEE96]) = v17;
  LOBYTE(STACK[0xEE95]) = v18;
  v23 = veor_s8(vmul_s32(v22, v21), v21);
  LOBYTE(STACK[0xEE94]) = v19;
  LOBYTE(STACK[0xEE93]) = v20;
  v24 = STACK[0xEE91];
  LOBYTE(STACK[0xEE92]) = STACK[0xEE90];
  LOWORD(STACK[0xEE90]) = v24;
  v25 = vdup_n_s32(0x1000193u);
  STACK[0xEE90] = vmla_s32(v23, STACK[0xEE90], v25);
  v26 = STACK[0xEE98];
  v27 = (-548819963 * STACK[0xEE98]) ^ v11;
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
    v48.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237140), veorq_s8(v28, vmulq_s32(vaddq_s32(v31, v28), vsubq_s32(v31, v28))));
    v48.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237150), veorq_s8(v28, vmulq_s32(vaddq_s32(v32, v28), vsubq_s32(v32, v28))));
    v48.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_101237160), veorq_s8(v28, vmulq_s32(vaddq_s32(v30, v28), vsubq_s32(v30, v28))));
    v48.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_101237170), v28), vmulq_s32(vaddq_s32(v29, v28), vsubq_s32(v29, v28)));
    *(v26 + v2) = vmulq_s8(vqtbl4q_s8(v48, xmmword_101237130), v34);
    v2 += 16;
    v32 = vaddq_s32(v32, v33);
    v31 = vaddq_s32(v31, v33);
    v30 = vaddq_s32(v30, v33);
    v29 = vaddq_s32(v29, v33);
  }

  while (v2 != 32);
  v36 = 3;
  do
  {
    v37 = 16777619 * ((v27 + v36) ^ v27) % v36;
    v38 = *(v26 + 8 * v37) ^ *(v26 + 8 * v36);
    *(v26 + 8 * v36) = v38;
    v39 = *(v26 + 8 * v37) ^ v38;
    *(v26 + 8 * v37) = v39;
    *(v26 + 8 * v36) ^= v39;
    v40 = v36-- + 1;
  }

  while (v40 > 2);
  v41 = *(&STACK[0xEE98] + v12);
  *(&STACK[0xEE98] + v12) = STACK[0xEE9F];
  LOBYTE(STACK[0xEE9F]) = v41;
  v42 = *(&STACK[0xEE98] + v13);
  *(&STACK[0xEE98] + v13) = STACK[0xEE9E];
  LOBYTE(STACK[0xEE9E]) = v42;
  v43 = *(&STACK[0xEE98] + v14);
  *(&STACK[0xEE98] + v14) = STACK[0xEE9D];
  LOBYTE(STACK[0xEE9D]) = v43;
  v44 = STACK[0xEE98];
  LOBYTE(STACK[0xEE98]) = STACK[0xEE9C];
  LOBYTE(STACK[0xEE9C]) = v44;
  v45 = *(&STACK[0xEE98] + v15);
  *(&STACK[0xEE98] + v15) = STACK[0xEE9B];
  LOBYTE(STACK[0xEE9B]) = v45;
  v46 = STACK[0xEE99];
  LOBYTE(STACK[0xEE9A]) = STACK[0xEE98];
  LOWORD(STACK[0xEE98]) = v46;
  STACK[0xEE98] = vmla_s32(v23, STACK[0xEE98], v25);
  *STACK[0x4630] = STACK[0xEE98] ^ STACK[0xEE90];
  return (*(STACK[0x57D8] + 8 * a1))();
}

uint64_t sub_1007E134C()
{
  v0 = STACK[0x20A8];
  STACK[0xBD80] = *STACK[0x8648];
  v1 = *(STACK[0x82B0] - 0x79296B4A625EDCB8);
  STACK[0x7B58] = STACK[0x82B0] - 0x79296B4A625EDCF4;
  LODWORD(STACK[0x5D54]) = v1;
  LODWORD(STACK[0x8E0C]) = STACK[0x5BD8];
  STACK[0xC9D0] = STACK[0x6428];
  LODWORD(STACK[0x5F08]) = STACK[0xB0BC];
  STACK[0xB238] = 0;
  LODWORD(STACK[0xCF18]) = 2101965948;
  STACK[0x8818] = 0x2369327399A66D95;
  STACK[0xC4D0] = &STACK[0x8818];
  LODWORD(STACK[0x7EBC]) = -1389924012;
  STACK[0x7910] = 0x9B2BE379F302FE40;
  LODWORD(STACK[0x9C14]) = 0;
  LODWORD(STACK[0xA25C]) = 1685812471;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007E151C()
{
  v1 = STACK[0xA688];
  *v1 = STACK[0x75A0];
  *(v1 + 8) = STACK[0xB58C];
  *(v1 + 16) = STACK[0x8ED0];
  *(v1 + 24) = -769884028;
  *(v1 + 32) = STACK[0x91C0];
  *(v1 + 40) = 16;
  v2 = STACK[0xC268];
  *(v1 + 352) = STACK[0xCEE0];
  *(v1 + 360) = v2;
  *(v1 + 368) = STACK[0x6A00];
  STACK[0x80A8] = 0;
  LODWORD(STACK[0x9D80]) = 0;
  *(v1 + 56) = 0x1FF90131E266DB89;
  v3 = STACK[0x57D8];
  STACK[0x6928] = *(STACK[0x57D8] + 8 * v0);
  return (*(v3 + 8 * (v0 - 14592 + v0 + 14312)))();
}

uint64_t sub_1007E17A4(uint64_t a1)
{
  v2 = STACK[0xA620];
  STACK[0x6BB8] = STACK[0xA620];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0x6321847518D0320CLL;
  LODWORD(STACK[0xCD80]) = 308928082;
  return (*(STACK[0x57D8] + 8 * v1))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692, 4221484704, 0x1B3EC18598D49E09);
}

uint64_t sub_1007E1944()
{
  v1 = STACK[0x51B8];
  LODWORD(STACK[0xCF8C]) = v0;
  return (*(STACK[0x57D8] + 8 * (v1 - 15976)))();
}

uint64_t sub_1007E1988()
{
  v1 = (v0 - 274154836) & 0x10575CDE;
  v2 = STACK[0x63E0];
  LODWORD(STACK[0xDD24]) = *(STACK[0x63E0] + 4);
  STACK[0xDD28] = v2 + 8;
  STACK[0xDD30] = v2 + 16;
  LODWORD(STACK[0xDD3C]) = STACK[0xC814];
  v3 = v0;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x3CF5)))(36);
  STACK[0xB1D0] = v5;
  return (*(v4 + 8 * (((v5 != 0) * (v1 - 22578)) ^ v3)))();
}

uint64_t sub_1007E1A34()
{
  v0 = STACK[0x51B8] + 58;
  v1 = STACK[0x51B8] + 617185920;
  v2 = v1 ^ 0x24C9D86B;
  v3 = v1 & 0xDB367D7F;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x24AE)))(2560);
  STACK[0x7A10] = v5;
  return (*(v4 + 8 * (((v5 == 0) * (v2 ^ v3 ^ 0x5AC0)) ^ v0)))();
}

uint64_t sub_1007E1BD8@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v2 = STACK[0x7E88];
  v3 = STACK[0x7ED8];
  STACK[0x9260] = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x7ED8] = ((4098 * (a2 ^ 0x4AFu)) ^ 0x2014) + v3;
  STACK[0xA5E8] = v2;
  STACK[0x6F00] = 0;
  STACK[0x62C8] = 0;
  LODWORD(STACK[0x9E3C]) = 2101965948;
  v4 = STACK[0x57D8];
  STACK[0xC1C0] = *(STACK[0x57D8] + 8 * a2);
  return (*(v4 + 8 * (a2 + 3637)))(4294960487, a1, 12942, 30467, 15506, 2193001348, 2147336180, 0x5FFBEFAF3FFEDFFBLL);
}

uint64_t sub_1007E1CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x50B8]) = LODWORD(STACK[0x52D8]) ^ (2 * LODWORD(STACK[0x5140])) ^ 0x412C9543;
  LODWORD(STACK[0x5130]) = LODWORD(STACK[0x52C0]) ^ 0xD5E00601;
  LODWORD(STACK[0x5140]) = LODWORD(STACK[0x52B0]) ^ 0x19308784;
  LODWORD(STACK[0x5138]) = LODWORD(STACK[0x52A8]) ^ 0x77815676;
  LODWORD(STACK[0x4EB0]) = LODWORD(STACK[0x53B0]) - 1511100838;
  LODWORD(STACK[0x4EB8]) = LODWORD(STACK[0x5360]) + 1151279678;
  LODWORD(STACK[0x5110]) = LODWORD(STACK[0x5330]) ^ 0xC6E89A7;
  LODWORD(STACK[0x50C8]) = LODWORD(STACK[0x5770]) ^ LODWORD(STACK[0x5780]) ^ LODWORD(STACK[0x5540]) ^ LODWORD(STACK[0x54E0]) ^ (LODWORD(STACK[0x5358]) - 1841590118);
  LODWORD(STACK[0x5318]) = LODWORD(STACK[0x56F0]) ^ 0xB889EFBF;
  STACK[0x57A0] = STACK[0xD7E8];
  LODWORD(STACK[0x5790]) = (((LODWORD(STACK[0x5730]) ^ 0x3EE428D2) - 638209566) ^ ((LODWORD(STACK[0x5730]) ^ 0xD028F8B2) + 926507394) ^ ((LODWORD(STACK[0x5730]) ^ 0xE75077D8) + 4321004)) - 995278181;
  v3 = *(STACK[0x57D8] + 8 * STACK[0x57C0]);
  STACK[0x57B0] = 367 * (STACK[0x57C0] ^ 0x1BFA);
  LODWORD(STACK[0x5780]) = 335578121;
  LODWORD(STACK[0x5770]) = 536970243;
  return v3(a1, 0xDC5C7114DD7355FCLL, a3, 0xF8C3FBF6A3238A00, 0x6A3837A5C1674E2CLL, 0xE01873A32F4B37D0);
}

uint64_t sub_1007E1FC4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = STACK[0x4948];
  v7 = *(STACK[0x4948] + 7);
  v6 = STACK[0x4948] + 7;
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  v9 = *STACK[0x51F0];
  v10 = *STACK[0x51E8];
  v11 = *(v9 + (*STACK[0x51E8] & ((v6 & 0x800F5D98) + (v6 & 0x7FF0A260 | 0x800F5D9C) - 97723524)));
  v12 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = __ROR8__((v11 + v12) ^ 0xB88801D4E1C76353, 8);
  v14 = (v11 + v12) ^ 0xB88801D4E1C76353 ^ __ROR8__(v11, 61);
  v15 = (((2 * (v13 + v14)) | 0x57411CC4053DE018) - (v13 + v14) + 0x545F719DFD610FF4) ^ 0x93683F08E59B987BLL;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE580B17D8CC5E551;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((2 * (v19 + v18)) & 0xFDCB226DCC81550ELL) - (v19 + v18) + 0x11A6EC919BF5578) ^ 0xE0BB9392C8EAAC02;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xDA604B0C03A2BF99;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xFA35E2CDCB3E31C7;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = __ROR8__((v26 + v25 - ((2 * (v26 + v25)) & 0x2881E06772DE0646) + 0x1440F033B96F0323) ^ 0xC6B0FCD5998AD08DLL, 8);
  v28 = 2 * (v6 & 0xFFFFFFF8);
  LODWORD(STACK[0x5750]) = v28;
  LODWORD(v13) = v10 & 0xFFFFFFF8;
  v29 = *(v9 + (v10 & 0xFFFFFFF8 & ((v6 & 0xFFFFFFF8 ^ 0x1EDBC769) - 1726480252 + (v28 | 0xC248712D))));
  v30 = (v26 + v25 - ((2 * (v26 + v25)) & 0x2881E06772DE0646) + 0x1440F033B96F0323) ^ 0xC6B0FCD5998AD08DLL ^ __ROR8__(v25, 61);
  v31 = (((2 * (v29 + v12)) & 0x82ECE16E76CAA6) - (v29 + v12) + 0x7FBE898F48C49AACLL) ^ 0xC736885BA903F9FFLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x38C8B16AE7056877;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0xE580B17D8CC5E551;
  v36 = __ROR8__(v35, 8);
  v37 = v35 ^ __ROR8__(v34, 61);
  v38 = (((2 * (v36 + v37)) | 0x7E2C5AAF2CF73410) - (v36 + v37) - 0x3F162D57967B9A08) ^ 0xDEB7D00C472E6372;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0xE2B0988BE5952A96) + 0x71584C45F2CA954BLL) ^ 0xAB380749F1682AD2;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ 0xFA35E2CDCB3E31C7;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xD2F00CE620E5D3AELL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = 8 * (v6 & 7);
  LODWORD(STACK[0x5730]) = v7;
  LODWORD(v6) = (((v27 + v30) ^ 0xF4730B31AE70757BLL) >> v48) ^ v7;
  LODWORD(v6) = (((v6 ^ 0xFFFFFFAE) - 95) ^ (v6 - 57) ^ ((v6 ^ 0x66) + 105)) + 109;
  LODWORD(v27) = (((((v47 + v46) | 0x6FCDBAD0EC9AD2CLL) - ((v47 + v46) | 0xF9032452F13652D3) - 0x6FCDBAD0EC9AD2DLL) ^ 0xF28FD09CA0B9D857) >> v48) ^ v7;
  LODWORD(v27) = ((v27 ^ 0xFFFFFFB9) - 127) ^ (v27 + 50) ^ ((v27 ^ 0xFFFFFFB1) - 119);
  v49 = *(v9 + (v10 & 0xFFFFFFF8 & ((v5 & 0xFFFFFFF8 ^ 0x630DEEEB) + 388909615 + ((2 * (v5 & 0xFFFFFFF8)) & 0xC61BDDD0))));
  v50 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x55A0] = v50;
  v51 = (((2 * ((v49 + v50) ^ 0x3A439D5B7B41D4ABLL)) & 0x3F8EC269FC2157DCLL) - ((v49 + v50) ^ 0x3A439D5B7B41D4ABLL) + 0x60389ECB01EF5411) ^ 0xE2F302449B69E3E9;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x38C8B16AE7056877;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0xE580B17D8CC5E551;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) & 0x8C8E7A8BF0CFE54ELL) - (v57 + v56) - 0x46473D45F867F2A8) ^ 0x58193FE1D6CDF422;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) | 0x8DEED4FB7436B596) - (v60 + v59) + 0x3908958245E4A535) ^ 0x1C972171B9B9E552;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((2 * (v63 + v62)) & 0xC1F58228834D064) - (v63 + v62) + 0x79F053EEBBE597CDLL) ^ 0x83C5B12370DBA60ALL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (((v66 + v65) | 0x8B847BC272290E9ELL) - ((v66 + v65) | 0x747B843D8DD6F161) + 0x747B843D8DD6F161) ^ 0x5974772452CCDD30;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  LODWORD(STACK[0x5700]) = 122 * v6 - 4 * v27 + (64 - v27) * v6;
  v70 = 8 * (v5 & 7);
  STACK[0x55C0] = v70;
  LODWORD(v27) = *v5;
  LODWORD(v6) = (((((v69 + v68) | 0xF0B465446ED6BD1BLL) - ((v69 + v68) | 0xF4B9ABB912942E4) + 0xF4B9ABB912942E4) ^ 0x4C76E75C0A6C860) >> v70) ^ v27;
  v71 = v27;
  LODWORD(STACK[0x5720]) = v27;
  LODWORD(v6) = ((v6 ^ 0xFFFFFF97) + 16) ^ ((v6 ^ 0x2D) - 74) ^ ((v6 ^ 0xFFFFFFBA) + 35);
  STACK[0x55B0] = v5 & 0xFFFFFFFFFFFFFFF8;
  v72 = *(v9 + (v10 & 0xFFFFFFF8 & ((v5 & 0xFED28C58 | 0x12D73A7) + 2050767130 + (v5 & 0x12D73A0 | 0xFED28C59))));
  v73 = (((v72 + v50) | 0x5147C601DB975727) - ((v72 + v50) | 0xAEB839FE2468A8D8) - 0x5147C601DB975728) ^ 0xE9CFC7D53A503474;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x38C8B16AE7056877;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0xE580B17D8CC5E551;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xE1A1FD5BD155F97ALL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xDA604B0C03A2BF99;
  v82 = __ROR8__(v81, 8);
  v83 = v81 ^ __ROR8__(v80, 61);
  v84 = (((2 * (v82 + v83)) & 0xA7DF9D7DEE4F1EB6) - (v82 + v83) - 0x53EFCEBEF7278F5CLL) ^ 0x5625D38CC3E64163;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0xD2F00CE620E5D3AELL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  LODWORD(v87) = (((((2 * (v88 + v87)) & 0x11F0AB4B76F051C0) - (v88 + v87) + 0x7707AA5A4487D71FLL) ^ 0x8374A16BEAF7A264) >> v70) ^ v71;
  LODWORD(STACK[0x5710]) = (v6 + 103) * ((((v87 ^ 0xFFFFFFAB) + 84) ^ ((v87 ^ 0x56) - 81) ^ ((v87 ^ 0xFFFFFFFD) + 6)) + 8) - v6;
  v89 = *(v5 + 1);
  v90 = (v5 + 1) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5420]) = 2 * v90;
  v91 = v10;
  v92 = *(v9 + (v10 & ((v90 ^ 0x96A1BEEC) + 282982409 + ((2 * v90) | 0xD2BC8223))));
  v93 = __ROR8__(v90, 8);
  STACK[0x5570] = v93;
  v94 = __ROR8__((v92 + v93 - ((2 * (v92 + v93)) & 0x7EB824F37822B96) - 0x7C0A3ED8643EEA35) ^ 0x3B7DC0F37A067698, 8);
  v95 = (v92 + v93 - ((2 * (v92 + v93)) & 0x7EB824F37822B96) - 0x7C0A3ED8643EEA35) ^ 0x3B7DC0F37A067698 ^ __ROR8__(v92, 61);
  v96 = (v94 + v95) ^ 0x38C8B16AE7056877;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xE580B17D8CC5E551;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = __ROR8__((v100 + v99 - ((2 * (v100 + v99)) & 0x379AE767F093B59ALL) - 0x64328C4C07B62533) ^ 0x7A6C8EE8291C23B7, 8);
  v102 = (v100 + v99 - ((2 * (v100 + v99)) & 0x379AE767F093B59ALL) - 0x64328C4C07B62533) ^ 0x7A6C8EE8291C23B7 ^ __ROR8__(v99, 61);
  v103 = (v101 + v102 - ((2 * (v101 + v102)) & 0xAE47A64B049FE4D0) - 0x28DC2CDA7DB00D98) ^ 0xD43982981ED4DF1;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0xFA35E2CDCB3E31C7;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (v107 + v106 - ((2 * (v107 + v106)) & 0xE2B30E1E2AE139CELL) + 0x7159870F15709CE7) ^ 0xA3A98BE935954F49;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = 8 * ((v5 + 1) & 7);
  STACK[0x5560] = v111;
  LODWORD(v6) = (((((2 * (v110 + v109)) & 0x435691233D91D85ALL) - (v110 + v109) - 0x21AB48919EC8EC2ELL) ^ 0x2A27BC5FCF4766A9) >> v111) ^ v89;
  LODWORD(STACK[0x56F0]) = v89;
  STACK[0x5430] = v90;
  v112 = (v90 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x56E0] = v112;
  v113 = *(v9 + (v10 & v112));
  v114 = __ROR8__((v113 + v93) ^ 0xB88801D4E1C76353, 8);
  v115 = (v113 + v93) ^ 0xB88801D4E1C76353 ^ __ROR8__(v113, 61);
  v116 = (v114 + v115) ^ 0x38C8B16AE7056877;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0xE580B17D8CC5E551;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = __ROR8__(v118, 8);
  v121 = __ROR8__((((2 * (v120 + v119)) & 0x58575FCE73FF864CLL) - (v120 + v119) + 0x53D45018C6003CD9) ^ 0xB275AD431755C5A3, 8);
  v122 = (((2 * (v120 + v119)) & 0x58575FCE73FF864CLL) - (v120 + v119) + 0x53D45018C6003CD9) ^ 0xB275AD431755C5A3 ^ __ROR8__(v119, 61);
  v123 = (((v121 + v122) | 0xD219A3F91B8ED22DLL) - ((v121 + v122) | 0x2DE65C06E4712DD2) + 0x2DE65C06E4712DD2) ^ 0x879E8F5182C6DB4;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xFA35E2CDCB3E31C7;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v126) = (((__ROR8__(v127, 8) + (v127 ^ __ROR8__(v126, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v5 + 1) & 7))) ^ v89;
  LODWORD(v127) = ((v126 ^ 0xFFFFFFAC) - 114) ^ ((v126 ^ 0xFFFFFFB3) - 109) ^ ((v126 ^ 0x1F) + 63);
  LOBYTE(v126) = v5 + 2;
  LODWORD(v93) = *(v5 + 2);
  LODWORD(STACK[0x5680]) = v93;
  v128 = (v5 + 2) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v6) = (((v6 ^ 0x34) + 90) ^ ((v6 ^ 0xFFFFFFD8) - 74) ^ ((v6 ^ 0xFFFFFFEC) - 126)) - 84;
  v129 = *(v9 + (v13 & ((v128 ^ 0x4993BAD5) + 816348741 + ((2 * v128) & 0x932775A0))));
  LODWORD(STACK[0x56D0]) = -26 * (v127 - 30) - 4 * v6 + v6 * (v127 - 30);
  v130 = __ROR8__(v128, 8);
  STACK[0x5580] = v130;
  v131 = (v129 + v130) ^ 0xB88801D4E1C76353;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0x38C8B16AE7056877;
  v134 = __ROR8__(v133, 8);
  v135 = v133 ^ __ROR8__(v132, 61);
  v136 = (((v134 + v135) | 0x90D2F562332367AELL) - ((v134 + v135) | 0x6F2D0A9DCCDC9851) + 0x6F2D0A9DCCDC9851) ^ 0x7552441FBFE682FFLL;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (((2 * (v138 + v137)) | 0x9AA89F2624262AAELL) - (v138 + v137) - 0x4D544F9312131557) ^ 0xACF5B2C8C346EC2DLL;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0xDA604B0C03A2BF99;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0xFA35E2CDCB3E31C7;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (((2 * (v145 + v144)) & 0x28D4253ECEF6D5DCLL) - (v145 + v144) + 0x6B95ED6098849511) ^ 0xB965E186B86146BFLL;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = __ROR8__(v146, 8);
  v149 = 8 * (v126 & 7);
  v150 = v149;
  STACK[0x5590] = v149;
  LODWORD(v147) = (((((v148 + v147) | 0x1DE1E537E6108F6ALL) - ((v148 + v147) | 0xE21E1AC819EF7095) - 0x1DE1E537E6108F6BLL) ^ 0xE992EE064860FA11) >> v149) ^ v93;
  STACK[0x56C0] = v128;
  v151 = *(v9 + (v13 & ((v128 & 0xFBBC3EE8) + (v128 | 0xFBBC3EE8) + 2122316338)));
  LODWORD(v149) = ((v147 ^ 0x3B) - 127) ^ ((v147 ^ 0x24) - 96) ^ ((v147 ^ 0x1F) - 91);
  v152 = (((2 * (v151 + v130)) & 0xCF9E90550CF03752) - (v151 + v130) + 0x1830B7D57987E456) ^ 0xA0B8B60198408705;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0x38C8B16AE7056877;
  v155 = v154 ^ __ROR8__(v153, 61);
  v156 = __ROR8__(v154, 8);
  v157 = (((2 * (v156 + v155)) & 0xEF9B159B3D21CA64) - (v156 + v155) + 0x8327532616F1ACDLL) ^ 0xEDB2C44FEDAAFF9CLL;
  v158 = v157 ^ __ROR8__(v155, 61);
  v159 = __ROR8__(v157, 8);
  v160 = (((v159 + v158) & 0xD3AB682841DA4B74 ^ 0x8382200001184824) + ((v159 + v158) ^ 0x503DDE3B60C22359) - (((v159 + v158) ^ 0x503DDE3B60C22359) & 0xD3AB682841DA4B74)) ^ 0x62374B48F04D9157;
  v161 = v160 ^ __ROR8__(v158, 61);
  v162 = (__ROR8__(v160, 8) + v161) ^ 0xDA604B0C03A2BF99;
  v163 = v162 ^ __ROR8__(v161, 61);
  v164 = (__ROR8__(v162, 8) + v163) ^ 0xFA35E2CDCB3E31C7;
  v165 = __ROR8__(v164, 8);
  v166 = v164 ^ __ROR8__(v163, 61);
  v167 = (v165 + v166 - ((2 * (v165 + v166)) & 0x13A320D29B37A3E2) + 0x9D190694D9BD1F1) ^ 0xDB219C8F6D7E025FLL;
  LODWORD(v166) = (((__ROR8__(v167, 8) + (v167 ^ __ROR8__(v166, 61))) ^ 0xF4730B31AE70757BLL) >> v150) ^ v93;
  LODWORD(v165) = ((v166 ^ 0xFFFFFFBB) - 88) ^ ((v166 ^ 0xFFFFFFD4) - 55) ^ ((v166 ^ 0x6F) + 116);
  v168 = STACK[0x53B8];
  v170 = *(STACK[0x53B8] + 1);
  v169 = STACK[0x53B8] + 1;
  LODWORD(v130) = v169 & 0xFFFFFFF8;
  LODWORD(v121) = 2 * (v169 & 0xFFFFFFF8);
  LODWORD(STACK[0x53E8]) = v121;
  v171 = *(v9 + ((((v169 & 0xFFFFFFF8 ^ 0x2CA3135D) + 1301882301 + (v121 & 0x594626B0)) & v91) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x5500] = v169 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5348]) = 65 * (58 * v149 + 97 * v165) + (v165 + 41) * (v149 - 93);
  v172 = __ROR8__(v169 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x54E0] = v172;
  v173 = (v171 + v172) ^ 0xB88801D4E1C76353;
  v174 = v173 ^ __ROR8__(v171, 61);
  v175 = (__ROR8__(v173, 8) + v174) ^ 0x38C8B16AE7056877;
  v176 = v175 ^ __ROR8__(v174, 61);
  v177 = __ROR8__(v175, 8);
  v178 = (((2 * (v177 + v176)) & 0x782CF7DCC374D730) - (v177 + v176) + 0x43E984119E459467) ^ 0xA669356C12807136 ^ __ROR8__(v176, 61);
  v179 = (__ROR8__((((2 * (v177 + v176)) & 0x782CF7DCC374D730) - (v177 + v176) + 0x43E984119E459467) ^ 0xA669356C12807136, 8) + v178) ^ 0xE1A1FD5BD155F97ALL;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = (__ROR8__(v179, 8) + v180) ^ 0xDA604B0C03A2BF99;
  v182 = v181 ^ __ROR8__(v180, 61);
  v183 = (__ROR8__(v181, 8) + v182) ^ 0xFA35E2CDCB3E31C7;
  v184 = v183 ^ __ROR8__(v182, 61);
  v185 = (__ROR8__(v183, 8) + v184) ^ 0xD2F00CE620E5D3AELL;
  v186 = v185 ^ __ROR8__(v184, 61);
  v187 = __ROR8__(v185, 8);
  v188 = 8 * (v169 & 7);
  v189 = ((v187 + v186) ^ 0xF4730B31AE70757BLL) >> v188;
  LOBYTE(v121) = v188;
  STACK[0x54F0] = v188;
  LODWORD(STACK[0x5670]) = v170;
  v190 = *(v9 + (v13 & (v130 + 2050767130)));
  LODWORD(v189) = ((v189 ^ v170 ^ 0xFFFFFFDE) + 114) ^ ((v189 ^ v170) - 48) ^ ((v189 ^ v170 ^ 0xFFFFFFBE) + 18);
  v191 = (v190 + v172) ^ 0xB88801D4E1C76353;
  v192 = v191 ^ __ROR8__(v190, 61);
  v193 = (__ROR8__(v191, 8) + v192) ^ 0x38C8B16AE7056877;
  v194 = v193 ^ __ROR8__(v192, 61);
  v195 = (__ROR8__(v193, 8) + v194) ^ 0xE580B17D8CC5E551;
  v196 = v195 ^ __ROR8__(v194, 61);
  v197 = __ROR8__(v195, 8);
  v198 = (((2 * (v197 + v196)) | 0xE7377462644A26ACLL) - (v197 + v196) + 0xC6445CECDDAECAALL) ^ 0x123A476AE370EA2CLL;
  v199 = v198 ^ __ROR8__(v196, 61);
  v200 = __ROR8__(v198, 8);
  v201 = (((v200 + v199) | 0x9EF54131F30E2AADLL) - ((v200 + v199) | 0x610ABECE0CF1D552) + 0x610ABECE0CF1D552) ^ 0x44950A3DF0AC9534;
  v202 = v201 ^ __ROR8__(v199, 61);
  v203 = (__ROR8__(v201, 8) + v202) ^ 0xFA35E2CDCB3E31C7;
  v204 = v203 ^ __ROR8__(v202, 61);
  v205 = __ROR8__(v203, 8);
  v206 = (((2 * (v205 + v204)) & 0x75513413ECF90240) - (v205 + v204) - 0x3AA89A09F67C8121) ^ 0x17A769102966AD71;
  v207 = v206 ^ __ROR8__(v204, 61);
  v208 = __ROR8__(v206, 8);
  LODWORD(v206) = (((((2 * (v208 + v207)) & 0xE92EDD4277AB06B8) - (v208 + v207) - 0x74976EA13BD5835DLL) ^ 0x7F1B9A6F6A5A09D8) >> v121) ^ v170;
  LODWORD(v206) = (((v206 ^ 0xFFFFFFA2) - 40) ^ (v206 - 74) ^ ((v206 ^ 0x62) + 24)) - 49;
  LODWORD(STACK[0x5660]) = 69 * (44 * v206 - v189) + v206 * (v189 + 116);
  LODWORD(v93) = *(v168 + 15);
  v209 = (v168 + 15) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x53F0]) = 2 * v209;
  v210 = *(v9 + (v91 & ((v209 ^ 0xBF199FAC) + 961927369 + ((2 * v209) | 0x81CCC0A3))));
  v211 = __ROR8__(v209, 8);
  STACK[0x5550] = v211;
  v212 = (v210 + v211 - ((2 * (v210 + v211)) & 0x84BAB38848FB0C4ELL) - 0x3DA2A63BDB8279D9) ^ 0x7AD55810C5BAE574;
  v213 = v212 ^ __ROR8__(v210, 61);
  v214 = (__ROR8__(v212, 8) + v213) ^ 0x38C8B16AE7056877;
  v215 = v214 ^ __ROR8__(v213, 61);
  v216 = __ROR8__(v214, 8);
  v217 = (v216 + v215 - ((2 * (v216 + v215)) & 0xBF64F5F0F720657ELL) - 0x204D8507846FCD41) ^ 0x3A32CB85F755D7EELL;
  v218 = v217 ^ __ROR8__(v215, 61);
  v219 = __ROR8__(v217, 8);
  v220 = (((v219 + v218) | 0xA777B521C0880F3) - ((v219 + v218) | 0xF58884ADE3F77F0CLL) - 0xA777B521C0880F4) ^ 0xEBD68609CD5D7989;
  v221 = v220 ^ __ROR8__(v218, 61);
  v222 = (__ROR8__(v220, 8) + v221) ^ 0xDA604B0C03A2BF99;
  v223 = __ROR8__(v222, 8);
  v224 = v222 ^ __ROR8__(v221, 61);
  v225 = (((2 * (v223 + v224)) & 0xD1325F28F447CECELL) - (v223 + v224) - 0x68992F947A23E768) ^ 0x6D5332A64EE2295FLL;
  v226 = v225 ^ __ROR8__(v224, 61);
  v227 = __ROR8__(v225, 8);
  v228 = (v227 + v226 - ((2 * (v227 + v226)) & 0xD9C6DC24AD0687FALL) - 0x131C91EDA97CBC03) ^ 0x3E1362F476669053;
  v229 = v228 ^ __ROR8__(v226, 61);
  v230 = __ROR8__(v228, 8);
  v231 = 8 * ((v168 + 15) & 7);
  v232 = ((((v230 + v229) | 0xC933CA4AA730AC41) - ((v230 + v229) | 0x36CC35B558CF53BELL) + 0x36CC35B558CF53BELL) ^ 0x3D40C17B0940D93ALL) >> v231;
  STACK[0x5540] = v231;
  LODWORD(STACK[0x5610]) = v93;
  STACK[0x53F8] = v209;
  v233 = (v209 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x5620] = v233;
  v234 = *(v9 + (v91 & v233));
  v235 = (v234 + v211) ^ 0xB88801D4E1C76353;
  v236 = v235 ^ __ROR8__(v234, 61);
  v237 = __ROR8__(v235, 8);
  v238 = (v237 + v236 - ((2 * (v237 + v236)) & 0xB0A69864E60982F6) - 0x27ACB3CD8CFB3E85) ^ 0xE09BFD589401A90CLL;
  v239 = v238 ^ __ROR8__(v236, 61);
  v240 = (__ROR8__(v238, 8) + v239) ^ 0xE580B17D8CC5E551;
  v241 = v240 ^ __ROR8__(v239, 61);
  v242 = __ROR8__(v240, 8);
  v243 = (v242 + v241 - ((2 * (v242 + v241)) & 0xA359A684683BE6F8) + 0x51ACD342341DF37CLL) ^ 0xB00D2E19E5480A06;
  v244 = v243 ^ __ROR8__(v241, 61);
  v245 = __ROR8__(v243, 8);
  v246 = (((2 * (v245 + v244)) | 0x7DF4EF707923B678) - (v245 + v244) + 0x41058847C36E24C4) ^ 0x649A3CB43F3364A5;
  v247 = v246 ^ __ROR8__(v244, 61);
  v248 = (__ROR8__(v246, 8) + v247) ^ 0xFA35E2CDCB3E31C7;
  v249 = v248 ^ __ROR8__(v247, 61);
  v250 = (__ROR8__(v248, 8) + v249) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v249) = (((__ROR8__(v250, 8) + (v250 ^ __ROR8__(v249, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v168 + 15) & 7))) ^ v93;
  LODWORD(v232) = (((v232 ^ v93 ^ 0x56) + 66) ^ ((v232 ^ v93 ^ 0xFFFFFFF9) - 17) ^ ((v232 ^ v93 ^ 0xFFFFFFAF) - 71)) + 36;
  LODWORD(v249) = (((v249 ^ 0x1E) + 22) ^ ((v249 ^ 0xB) + 1) ^ ((v249 ^ 0x15) + 31)) + 90;
  LODWORD(STACK[0x5600]) = 51 * (44 * v249 - 2 * v232) + v232 * v249;
  LODWORD(v93) = *(v168 + 3);
  v251 = *(v9 + (v13 & (((v168 + 3) & 0xFFFFFFF8) + 2050767130)));
  v252 = (v168 + 3) & 0xFFFFFFFFFFFFFFF8;
  v253 = __ROR8__(v252, 8);
  STACK[0x54C0] = v253;
  v254 = (((2 * (v251 + v253)) | 0x56AA3DBC2B343936) - (v251 + v253) - 0x2B551EDE159A1C9BLL) ^ 0x93DD1F0AF45D7FC8;
  v255 = v254 ^ __ROR8__(v251, 61);
  v256 = (__ROR8__(v254, 8) + v255) ^ 0x38C8B16AE7056877;
  v257 = v256 ^ __ROR8__(v255, 61);
  v258 = (__ROR8__(v256, 8) + v257) ^ 0xE580B17D8CC5E551;
  v259 = v258 ^ __ROR8__(v257, 61);
  v260 = (__ROR8__(v258, 8) + v259) ^ 0xE1A1FD5BD155F97ALL;
  v261 = v260 ^ __ROR8__(v259, 61);
  v262 = __ROR8__(v260, 8);
  v263 = (((2 * (v262 + v261)) & 0x3F51BE1AEE5C57C6) - (v262 + v261) - 0x1FA8DF0D772E2BE4) ^ 0x3A376BFE8B736B85;
  v264 = v263 ^ __ROR8__(v261, 61);
  v265 = __ROR8__(v263, 8);
  v266 = __ROR8__((((2 * (v265 + v264)) | 0x40CA9528539A6350) - (v265 + v264) - 0x20654A9429CD31A8) ^ 0xDA50A859E2F3006FLL, 8);
  v267 = (((2 * (v265 + v264)) | 0x40CA9528539A6350) - (v265 + v264) - 0x20654A9429CD31A8) ^ 0xDA50A859E2F3006FLL ^ __ROR8__(v264, 61);
  v268 = (((2 * (v266 + v267)) & 0x7E37463007F2A11ELL) - (v266 + v267) - 0x3F1BA31803F95090) ^ 0x12145001DCE37CDELL;
  v269 = v268 ^ __ROR8__(v267, 61);
  v270 = __ROR8__(v268, 8);
  v271 = 8 * ((v168 + 3) & 7);
  STACK[0x54D0] = v271;
  LODWORD(v232) = (((v270 + v269) ^ 0xF4730B31AE70757BLL) >> v271) ^ v93;
  LODWORD(STACK[0x5650]) = v93;
  STACK[0x54B0] = v252;
  LODWORD(STACK[0x54A0]) = 2 * v252;
  v272 = *(v9 + (v91 & ((v252 ^ 0x5E35219C) + 470224455 + ((2 * v252) & 0xBC6A4330) + 2357)));
  LODWORD(v232) = ((v232 ^ 5) + 16) ^ ((v232 ^ 0x1D) + 24) ^ ((v232 ^ 0x18) + 19);
  v273 = (((v272 + v253) ^ 0xF49DBAA06D57F33) - ((2 * ((v272 + v253) ^ 0xF49DBAA06D57F33)) & 0xFE8AB234291AD7D8) - 0xBAA6E5EB729414) ^ 0x48848364F39F778CLL;
  v274 = v273 ^ __ROR8__(v272, 61);
  v275 = (__ROR8__(v273, 8) + v274) ^ 0x38C8B16AE7056877;
  v276 = v275 ^ __ROR8__(v274, 61);
  v277 = (__ROR8__(v275, 8) + v276) ^ 0xE580B17D8CC5E551;
  v278 = v277 ^ __ROR8__(v276, 61);
  v279 = (__ROR8__(v277, 8) + v278) ^ 0xE1A1FD5BD155F97ALL;
  v280 = __ROR8__(v279, 8);
  v281 = v279 ^ __ROR8__(v278, 61);
  v282 = (((2 * (v280 + v281)) & 0xF2FB5052ACCC9EF8) - (v280 + v281) + 0x68257D6A999B083) ^ 0xDCE21CDAAA3B0F1ALL;
  v283 = v282 ^ __ROR8__(v281, 61);
  v284 = __ROR8__(v282, 8);
  v285 = (((v284 + v283) & 0xE8F70A10FBA23933 ^ 0x40120800B3001811) + ((v284 + v283) & 0x1708F5EF045DC6CCLL ^ 0x1608B02500154405) - 1) ^ 0xAC2F5AE8782B6DD2;
  v286 = v285 ^ __ROR8__(v283, 61);
  v287 = __ROR8__(v285, 8);
  v288 = (((2 * (v287 + v286)) | 0x986D89745EB4C73CLL) - (v287 + v286) - 0x4C36C4BA2F5A639ELL) ^ 0x9EC6C85C0FBFB030;
  v289 = v288 ^ __ROR8__(v286, 61);
  v290 = __ROR8__(v288, 8);
  LODWORD(v289) = (((((2 * (v290 + v289)) | 0x650C07FB636237DALL) - (v290 + v289) + 0x4D79FC024E4EE413) ^ 0x46F508CC1FC16E96) >> (8 * ((v168 + 3) & 7))) ^ v93;
  LODWORD(v289) = (((v289 ^ 0xFFFFFF9A) - 65) ^ ((v289 ^ 7) + 36) ^ ((v289 ^ 0xFFFFFF9D) - 70)) + 86;
  LODWORD(STACK[0x5630]) = 123 * (124 * v289 - v232) + v289 * (v232 + 97);
  LODWORD(v288) = 2 * (v168 & 0xFFFFFFF8);
  LODWORD(STACK[0x52C0]) = v288;
  v291 = *(v9 + (v13 & ((v168 & 0xFFFFFFF8 ^ 0xC694F287) - 1280883053 + (v288 & 0x8D29E500))));
  STACK[0x5490] = v168 & 0xFFFFFFFFFFFFFFF8;
  v292 = __ROR8__(v168 & 0xFFFFFFFFFFFFFFF8, 8);
  STACK[0x5480] = v292;
  v293 = (v291 + v292 - ((2 * (v291 + v292)) & 0xF306C00AA6B6269ELL) + 0x79836005535B134FLL) ^ 0xC10B61D1B29C701CLL;
  v294 = v293 ^ __ROR8__(v291, 61);
  v295 = (__ROR8__(v293, 8) + v294) ^ 0x38C8B16AE7056877;
  v296 = __ROR8__(v295, 8);
  v297 = v295 ^ __ROR8__(v294, 61);
  v298 = (((2 * (v296 + v297)) | 0xF0E1185FF0EDF942) - (v296 + v297) - 0x78708C2FF876FCA1) ^ 0x9DF03D5274B319F0;
  v299 = v298 ^ __ROR8__(v297, 61);
  v300 = (__ROR8__(v298, 8) + v299) ^ 0xE1A1FD5BD155F97ALL;
  v301 = v300 ^ __ROR8__(v299, 61);
  v302 = (__ROR8__(v300, 8) + v301) ^ 0xDA604B0C03A2BF99;
  v303 = __ROR8__(v302, 8);
  v304 = v302 ^ __ROR8__(v301, 61);
  v305 = (((2 * (v303 + v304)) | 0xEC0A3DB8F9CBD2E2) - (v303 + v304) - 0x76051EDC7CE5E971) ^ 0x8C30FC11B7DBD8B6;
  v306 = v305 ^ __ROR8__(v304, 61);
  v307 = (__ROR8__(v305, 8) + v306) ^ 0xD2F00CE620E5D3AELL;
  v308 = v307 ^ __ROR8__(v306, 61);
  v309 = __ROR8__(v307, 8);
  v310 = 8 * (v168 & 7);
  v311 = ((((2 * (v309 + v308)) & 0x36AC3C8CCC6FF1EALL) - (v309 + v308) + 0x64A9E1B999C8070ALL) ^ 0x90DAEA8837B87271) >> v310;
  STACK[0x5470] = v310;
  LODWORD(v310) = *v168;
  LODWORD(STACK[0x55F0]) = v310;
  LODWORD(v307) = ((v311 ^ v310 ^ 0xA) - 85) ^ ((v311 ^ v310 ^ 0xFFFFFFDD) + 126) ^ ((v311 ^ v310 ^ a3) + 120);
  v312 = *(v9 + (v91 & ((((((v168 & 0xFFFFFFF8) + 438718019) & 0xEAB34F9B) + (((v168 & 0xFFFFFFF8) + 438718019) | 0xEAB34F9B) + 4) & 0xFFFFFFF8) + 1969396536)));
  v313 = __ROR8__((((2 * (v312 + v292)) | 0x35052A4440E394FCLL) - (v312 + v292) + 0x657D6ADDDF8E3582) ^ 0x220A94F6C1B6A92DLL, 8);
  v314 = (((2 * (v312 + v292)) | 0x35052A4440E394FCLL) - (v312 + v292) + 0x657D6ADDDF8E3582) ^ 0x220A94F6C1B6A92DLL ^ __ROR8__(v312, 61);
  v315 = (((2 * ((v313 + v314) ^ 0x3A20ED4F7A762B4FLL)) | 0xC40BDD686CCAC8D6) - ((v313 + v314) ^ 0x3A20ED4F7A762B4FLL) - 0x6205EEB43665646BLL) ^ 0x60EDB291AB162753;
  v316 = v315 ^ __ROR8__(v314, 61);
  v317 = (__ROR8__(v315, 8) + v316) ^ 0xE580B17D8CC5E551;
  v318 = v317 ^ __ROR8__(v316, 61);
  v319 = (__ROR8__(v317, 8) + v318) ^ 0xE1A1FD5BD155F97ALL;
  v320 = v319 ^ __ROR8__(v318, 61);
  v321 = (__ROR8__(v319, 8) + v320) ^ 0xDA604B0C03A2BF99;
  v322 = v321 ^ __ROR8__(v320, 61);
  v323 = (__ROR8__(v321, 8) + v322) ^ 0xFA35E2CDCB3E31C7;
  v324 = v323 ^ __ROR8__(v322, 61);
  v325 = __ROR8__(v323, 8);
  v326 = (((v325 + v324) | 0x445F95A1D62D8307) - ((v325 + v324) | 0xBBA06A5E29D27CF8) - 0x445F95A1D62D8308) ^ 0x96AF9947F6C850A9;
  LODWORD(v326) = (((__ROR8__(v326, 8) + (v326 ^ __ROR8__(v324, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * (v168 & 7u))) ^ v310;
  v327 = STACK[0x4948];
  v329 = *(STACK[0x4948] + 4);
  v328 = STACK[0x4948] + 4;
  v330 = v328 & 0xFFFFFFFFFFFFFFF8;
  v331 = ((v328 & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x5378] = v331;
  STACK[0x50D8] = v91;
  v332 = *(v9 + (v91 & v331));
  LODWORD(v326) = ((v326 ^ 0x6A) - 35) ^ ((v326 ^ 0xFFFFFF94) + 35) ^ ((v326 ^ 0xFFFFFFFE) + 73);
  LODWORD(STACK[0x52A8]) = -31 * (-63 * v326 + 60 * v307) + (v307 - 66) * (v326 - 115);
  v333 = __ROR8__(v328 & 0xFFFFFFFFFFFFFFF8, 8);
  v334 = (v332 + v333) ^ 0xB88801D4E1C76353;
  v335 = v334 ^ __ROR8__(v332, 61);
  v336 = (__ROR8__(v334, 8) + v335) ^ 0x38C8B16AE7056877;
  v337 = __ROR8__(v336, 8);
  v338 = v336 ^ __ROR8__(v335, 61);
  v339 = (((v337 + v338) | 0x18A5C535BAD7A4E7) - ((v337 + v338) | 0xE75A3ACA45285B18) - 0x18A5C535BAD7A4E8) ^ 0xFD257448361241B6;
  v340 = v339 ^ __ROR8__(v338, 61);
  v341 = (__ROR8__(v339, 8) + v340) ^ 0xE1A1FD5BD155F97ALL;
  v342 = v341 ^ __ROR8__(v340, 61);
  v343 = (__ROR8__(v341, 8) + v342) ^ 0xDA604B0C03A2BF99;
  v344 = v343 ^ __ROR8__(v342, 61);
  v345 = (__ROR8__(v343, 8) + v344) ^ 0xFA35E2CDCB3E31C7;
  v346 = v345 ^ __ROR8__(v344, 61);
  v347 = (__ROR8__(v345, 8) + v346) ^ 0xD2F00CE620E5D3AELL;
  v348 = 8 * (v328 & 7);
  LODWORD(v346) = (((__ROR8__(v347, 8) + (v347 ^ __ROR8__(v346, 61))) ^ 0xF4730B31AE70757BLL) >> v348) ^ v329;
  LODWORD(v346) = ((v346 ^ 0x73) - 7) ^ (v346 + 4) ^ ((v346 ^ 0xFFFFFFFB) + 113);
  v349 = *(v9 + ((((v328 & 0xFFFFFFF8 ^ 0xC6AB9CB9) - 1282368415 + ((2 * (v328 & 0xFFFFFFF8)) & 0x8D573970)) & v91) & 0xFFFFFFFFFFFFFFF8));
  v350 = (v349 + v333) ^ 0xB88801D4E1C76353;
  v351 = v350 ^ __ROR8__(v349, 61);
  v352 = (__ROR8__(v350, 8) + v351) ^ 0x38C8B16AE7056877;
  v353 = v352 ^ __ROR8__(v351, 61);
  v354 = (__ROR8__(v352, 8) + v353) ^ 0xE580B17D8CC5E551;
  v355 = v354 ^ __ROR8__(v353, 61);
  v356 = (__ROR8__(v354, 8) + v355) ^ 0xE1A1FD5BD155F97ALL;
  v357 = v356 ^ __ROR8__(v355, 61);
  v358 = (__ROR8__(v356, 8) + v357) ^ 0xDA604B0C03A2BF99;
  v359 = v358 ^ __ROR8__(v357, 61);
  v360 = __ROR8__(v358, 8);
  v361 = __ROR8__((v360 + v359 - ((2 * (v360 + v359)) & 0xA175EEAE75A15262) + 0x50BAF7573AD0A931) ^ 0xAA8F159AF1EE98F6, 8);
  v362 = (v360 + v359 - ((2 * (v360 + v359)) & 0xA175EEAE75A15262) + 0x50BAF7573AD0A931) ^ 0xAA8F159AF1EE98F6 ^ __ROR8__(v359, 61);
  v363 = (v361 + v362) ^ 0xD2F00CE620E5D3AELL;
  v364 = v363 ^ __ROR8__(v362, 61);
  v365 = __ROR8__(v363, 8);
  LODWORD(v364) = (((((2 * (v365 + v364)) & 0x4CA70956E909734ELL) - (v365 + v364) + 0x59AC7B548B7B4658) ^ 0xADDF7065250B3323) >> v348) ^ v329;
  LODWORD(v346) = (12 - v346) * ((((v364 ^ 0x79) - 45) ^ (v364 - 36) ^ ((v364 ^ 9) - 93)) - 68) + 104 * v346;
  STACK[0x5398] = v330;
  v366 = v9;
  v367 = *(v9 + (v13 & (v330 + ((-1744779215 - v330) | 0x2B138AC6) + ((v330 + 1744779214) | 0x2B138AC6) + 1328066133)));
  STACK[0x5390] = v333;
  v368 = (v367 + v333) ^ 0xB88801D4E1C76353;
  v369 = v368 ^ __ROR8__(v367, 61);
  v370 = (__ROR8__(v368, 8) + v369) ^ 0x38C8B16AE7056877;
  v371 = v370 ^ __ROR8__(v369, 61);
  v372 = __ROR8__(v370, 8);
  v373 = (((2 * (v372 + v371)) & 0xDE716AD3BA9C5432) - (v372 + v371) + 0x10C74A9622B1D5E6) ^ 0xF547FBEBAE7430B7;
  v374 = v373 ^ __ROR8__(v371, 61);
  v375 = (__ROR8__(v373, 8) + v374) ^ 0xE1A1FD5BD155F97ALL;
  v376 = v375 ^ __ROR8__(v374, 61);
  v377 = __ROR8__(v375, 8);
  v378 = (v377 + v376 - ((2 * (v377 + v376)) & 0xB55F04C4F9F52482) + 0x5AAF82627CFA9241) ^ 0x80CFC96E7F582DD8;
  v379 = v378 ^ __ROR8__(v376, 61);
  v380 = (__ROR8__(v378, 8) + v379) ^ 0xFA35E2CDCB3E31C7;
  v381 = v380 ^ __ROR8__(v379, 61);
  v382 = (__ROR8__(v380, 8) + v381) ^ 0xD2F00CE620E5D3AELL;
  v383 = __ROR8__(v382, 8) + (v382 ^ __ROR8__(v381, 61));
  LODWORD(v361) = 2 * (v346 - 96) - ((4 * (v346 - 96)) & 0xFFFFFFB4);
  LODWORD(v310) = STACK[0x5750];
  LODWORD(v330) = v13;
  v384 = *(v9 + (v13 & ((v8 ^ (a4 + 888)) + 431784375 + (LODWORD(STACK[0x5750]) | 0xC0FF6EC7))));
  v385 = (v384 + v12) ^ 0xB88801D4E1C76353;
  v386 = v385 ^ __ROR8__(v384, 61);
  v387 = (__ROR8__(v385, 8) + v386) ^ 0x38C8B16AE7056877;
  v388 = v387 ^ __ROR8__(v386, 61);
  v389 = __ROR8__(v387, 8);
  v390 = __ROR8__((((v389 + v388) & 0x3A53D4E8A65ECF0ELL ^ 0x21140E0A452420CLL) + ((v389 + v388) ^ 0x3CEE941A5A8C8D02) - (((v389 + v388) ^ 0x3CEE941A5A8C8D02) & 0x3A53D4E8A65ECF0ELL)) ^ 0xE33DF18F7017A75DLL, 8);
  v391 = (((v389 + v388) & 0x3A53D4E8A65ECF0ELL ^ 0x21140E0A452420CLL) + ((v389 + v388) ^ 0x3CEE941A5A8C8D02) - (((v389 + v388) ^ 0x3CEE941A5A8C8D02) & 0x3A53D4E8A65ECF0ELL)) ^ 0xE33DF18F7017A75DLL ^ __ROR8__(v388, 61);
  v392 = (v390 + v391) ^ 0xE1A1FD5BD155F97ALL;
  v393 = v392 ^ __ROR8__(v391, 61);
  v394 = __ROR8__(v392, 8);
  v395 = (((2 * (v394 + v393)) | 0x1A5D86C3A1F6E4D2) - (v394 + v393) + 0x72D13C9E2F048D97) ^ 0x574E886DD359CDF0;
  v396 = v395 ^ __ROR8__(v393, 61);
  v397 = (__ROR8__(v395, 8) + v396) ^ 0xFA35E2CDCB3E31C7;
  v398 = __ROR8__(v397, 8);
  v399 = v397 ^ __ROR8__(v396, 61);
  v400 = (((2 * (v398 + v399)) | 0x57C629E5B2F88C62) - (v398 + v399) - 0x2BE314F2D97C4631) ^ 0xF9131814F999959FLL;
  v401 = __ROR8__(v400, 8) + (v400 ^ __ROR8__(v399, 61));
  STACK[0x5460] = v8;
  v402 = *(v9 + (v13 & ((v8 ^ 0x96670265) - 472566091 + (v310 & 0x2CCE04C0))));
  STACK[0x5450] = v12;
  v403 = (v402 + v12) ^ 0xB88801D4E1C76353;
  v404 = v403 ^ __ROR8__(v402, 61);
  v405 = __ROR8__(v403, 8);
  v406 = __ROR8__((((v405 + v404) | 0x886CCC1C43E64BC2) - ((v405 + v404) | 0x779333E3BC19B43DLL) + 0x779333E3BC19B43DLL) ^ 0xB0A47D76A4E323B5, 8);
  v407 = (((v405 + v404) | 0x886CCC1C43E64BC2) - ((v405 + v404) | 0x779333E3BC19B43DLL) + 0x779333E3BC19B43DLL) ^ 0xB0A47D76A4E323B5 ^ __ROR8__(v404, 61);
  v408 = (v406 + v407) ^ 0xE580B17D8CC5E551;
  v409 = v408 ^ __ROR8__(v407, 61);
  v410 = (__ROR8__(v408, 8) + v409) ^ 0xE1A1FD5BD155F97ALL;
  v411 = v410 ^ __ROR8__(v409, 61);
  v412 = (__ROR8__(v410, 8) + v411) ^ 0xDA604B0C03A2BF99;
  v413 = v412 ^ __ROR8__(v411, 61);
  v414 = (__ROR8__(v412, 8) + v413) ^ 0xFA35E2CDCB3E31C7;
  v415 = v414 ^ __ROR8__(v413, 61);
  v416 = (__ROR8__(v414, 8) + v415) ^ 0xD2F00CE620E5D3AELL;
  v417 = v416 ^ __ROR8__(v415, 61);
  v418 = __ROR8__(v416, 8);
  v419 = ((v418 + v417) | 0x541BC3D1554FD5CDLL) - ((v418 + v417) | 0xABE43C2EAAB02A32);
  LODWORD(v310) = STACK[0x5730];
  LODWORD(v417) = ((v401 ^ 0xF4730B31AE70757BLL) >> v48) ^ LODWORD(STACK[0x5730]);
  STACK[0x5440] = v48;
  LOBYTE(v401) = (((v419 - 0x541BC3D1554FD5CELL) ^ 0xA068C8E0FB3FA0B6) >> v48) ^ v310;
  LODWORD(v419) = LODWORD(STACK[0x5700]) + 104;
  LODWORD(v310) = 2 * v419;
  LOBYTE(v419) = v401 ^ (2 * v419 - ((4 * v419) & 8) + 5);
  LODWORD(v401) = *(v327 + 13);
  v420 = (v327 + 13) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x5700]) = 2 * v420;
  v421 = *(v9 + (v13 & ((v420 ^ 0x75046F2C) + 87542254 + ((2 * v420) & 0xEA08DE50))));
  STACK[0x5520] = v420;
  v422 = __ROR8__(v420, 8);
  STACK[0x5510] = v422;
  v423 = (v421 + v422) ^ 0xB88801D4E1C76353;
  v424 = v423 ^ __ROR8__(v421, 61);
  v425 = (__ROR8__(v423, 8) + v424) ^ 0x38C8B16AE7056877;
  v426 = v425 ^ __ROR8__(v424, 61);
  v427 = (__ROR8__(v425, 8) + v426) ^ 0xE580B17D8CC5E551;
  v428 = v427 ^ __ROR8__(v426, 61);
  v429 = (__ROR8__(v427, 8) + v428) ^ 0xE1A1FD5BD155F97ALL;
  v430 = v429 ^ __ROR8__(v428, 61);
  v431 = (__ROR8__(v429, 8) + v430) ^ 0xDA604B0C03A2BF99;
  v432 = v431 ^ __ROR8__(v430, 61);
  v433 = __ROR8__(v431, 8);
  v434 = (((2 * ((v433 + v432) ^ 0x1D043A336B261C48)) | 0xC45C9FD6866A3D10) - ((v433 + v432) ^ 0x1D043A336B261C48) - 0x622E4FEB43351E88) ^ 0x851F9715E32D3307;
  v435 = v434 ^ __ROR8__(v432, 61);
  v436 = (__ROR8__(v434, 8) + v435) ^ 0xD2F00CE620E5D3AELL;
  v437 = 8 * ((v327 + 13) & 7);
  STACK[0x5530] = v437;
  LODWORD(v406) = (((__ROR8__(v436, 8) + (v436 ^ __ROR8__(v435, 61))) ^ 0xF4730B31AE70757BLL) >> v437) ^ v401;
  LODWORD(STACK[0x53C8]) = v401;
  LODWORD(v406) = ((v406 ^ 0x32) + 19) ^ ((v406 ^ 0x34) + 21) ^ ((v406 ^ 6) + 39);
  v438 = *(v366 + (v13 & (((v327 + 13) & 0xFFFFFFF8) + 2050767130)));
  v439 = (((v438 + v422) | 0x28C1F340DE5D109ALL) - ((v438 + v422) | 0xD73E0CBF21A2EF65) - 0x28C1F340DE5D109BLL) ^ 0x9049F2943F9A73C9;
  v440 = v439 ^ __ROR8__(v438, 61);
  v441 = (__ROR8__(v439, 8) + v440) ^ 0x38C8B16AE7056877;
  v442 = v441 ^ __ROR8__(v440, 61);
  v443 = (__ROR8__(v441, 8) + v442) ^ 0xE580B17D8CC5E551;
  v444 = __ROR8__(v443, 8);
  v445 = v443 ^ __ROR8__(v442, 61);
  v446 = (((2 * (v444 + v445)) | 0x3BCE75AD114CFD52) - (v444 + v445) - 0x1DE73AD688A67EA9) ^ 0xFC46C78D59F387D3;
  v447 = v446 ^ __ROR8__(v445, 61);
  v448 = (__ROR8__(v446, 8) + v447) ^ 0xDA604B0C03A2BF99;
  v449 = v448 ^ __ROR8__(v447, 61);
  v450 = (__ROR8__(v448, 8) + v449) ^ 0xFA35E2CDCB3E31C7;
  v451 = v450 ^ __ROR8__(v449, 61);
  v452 = (__ROR8__(v450, 8) + v451) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v451) = (((__ROR8__(v452, 8) + (v452 ^ __ROR8__(v451, 61))) ^ 0xF4730B31AE70757BLL) >> (8 * ((v327 + 13) & 7))) ^ v401;
  LODWORD(STACK[0x53B0]) = ((((v451 ^ 0x28) + 72) ^ ((v451 ^ 0xFFFFFFE2) - 114) ^ ((v451 ^ 0xFFFFFFCA) - 90)) - 50) * (v406 - 33) - 62 * v406;
  LODWORD(v310) = v417 & 0xFFFFFFA7 ^ v310 & v4;
  LODWORD(v417) = v419 & 0x58;
  v453 = *(v366 + (v13 & (STACK[0x55B0] + 2050767130)));
  LODWORD(STACK[0x5730]) = v310 | v417;
  v454 = (v453 + STACK[0x55A0] - ((2 * (v453 + STACK[0x55A0])) & 0x7266BC880C382108) - 0x46CCA1BBF9E3EF7CLL) ^ 0x1BB5F90E7DB73D7;
  v455 = v454 ^ __ROR8__(v453, 61);
  v456 = (__ROR8__(v454, 8) + v455) ^ 0x38C8B16AE7056877;
  v457 = v456 ^ __ROR8__(v455, 61);
  v458 = (__ROR8__(v456, 8) + v457) ^ 0xE580B17D8CC5E551;
  v459 = __ROR8__(v458, 8);
  v460 = v458 ^ __ROR8__(v457, 61);
  v461 = (((2 * (v459 + v460)) & 0xDAE3BF9479FDEB58) - (v459 + v460) + 0x128E2035C3010A53) ^ 0xF32FDD6E1254F329;
  v462 = v461 ^ __ROR8__(v460, 61);
  v463 = (__ROR8__(v461, 8) + v462) ^ 0xDA604B0C03A2BF99;
  v464 = v463 ^ __ROR8__(v462, 61);
  v465 = (__ROR8__(v463, 8) + v464) ^ 0xFA35E2CDCB3E31C7;
  v466 = v465 ^ __ROR8__(v464, 61);
  v467 = (__ROR8__(v465, 8) + v466) ^ 0xD2F00CE620E5D3AELL;
  v468 = v467 ^ __ROR8__(v466, 61);
  v469 = __ROR8__(v467, 8);
  LODWORD(STACK[0x5710]) = LODWORD(STACK[0x5720]) ^ (((((2 * (v469 + v468)) | 0x867E50292DC577DALL) - (v469 + v468) - 0x433F281496E2BBEDLL) ^ 0xB74C23253892CE96) >> STACK[0x55C0]) ^ (-54 * LODWORD(STACK[0x5710]) - ((116 - 108 * LODWORD(STACK[0x5710])) & 0xFFFFFFEF) + 49);
  STACK[0x53A0] = v348;
  LODWORD(STACK[0x5408]) = v329 ^ ((v383 ^ 0xF4730B31AE70757BLL) >> v348) ^ 0xFFFFFFB1 ^ (v361 - 38);
  v470 = v327;
  LOBYTE(v324) = v327 + 14;
  LODWORD(v13) = *(v327 + 14);
  v471 = (v327 + 14) & 0xFFFFFFFFFFFFFFF8;
  v472 = STACK[0x50D8];
  v473 = *(v366 + (STACK[0x50D8] & ((v471 ^ 0xF5661540) + 1872907869 + ((2 * v471) | 0x1533D57B))));
  v474 = __ROR8__(v471, 8);
  v475 = (v473 + v474) ^ 0xB88801D4E1C76353;
  v476 = v475 ^ __ROR8__(v473, 61);
  v477 = __ROR8__(v475, 8);
  v478 = (v477 + v476 - ((2 * (v477 + v476)) & 0xA9D3DDE652A6D136) + 0x54E9EEF32953689BLL) ^ 0x6C215F99CE5600ECLL;
  v479 = v478 ^ __ROR8__(v476, 61);
  v480 = __ROR8__(v478, 8);
  v481 = (((v480 + v479) | 0xDE387FAAC32B55A5) - ((v480 + v479) | 0x21C780553CD4AA5ALL) + 0x21C780553CD4AA5ALL) ^ 0x3BB8CED74FEEB0F4;
  v482 = v481 ^ __ROR8__(v479, 61);
  v483 = (__ROR8__(v481, 8) + v482) ^ 0xE1A1FD5BD155F97ALL;
  v484 = v483 ^ __ROR8__(v482, 61);
  v485 = (__ROR8__(v483, 8) + v484) ^ 0xDA604B0C03A2BF99;
  v486 = v485 ^ __ROR8__(v484, 61);
  v487 = (__ROR8__(v485, 8) + v486) ^ 0xFA35E2CDCB3E31C7;
  v488 = v487 ^ __ROR8__(v486, 61);
  v489 = (__ROR8__(v487, 8) + v488) ^ 0xD2F00CE620E5D3AELL;
  v490 = 8 * (v324 & 7);
  LODWORD(STACK[0x53E0]) = v13;
  LODWORD(v324) = (((__ROR8__(v489, 8) + (v489 ^ __ROR8__(v488, 61))) ^ 0xF4730B31AE70757BLL) >> v490) ^ v13;
  LODWORD(v324) = ((v324 ^ 0x67) - 68) ^ ((v324 ^ 0xFFFFFFE4) + 57) ^ ((v324 ^ 0xFFFFFF83) + 96);
  v491 = *(v366 + (v330 & ((v471 ^ 0x17DEC81) + 2075796892 + ((2 * v471) | 0xFD0426FD))));
  v492 = (((v491 + v474) & 0xF1E215B1AAD00CF1 ^ 0xC00531A8C00CD0) + ((v491 + v474) & 0xE1DEA4E552FF30ELL ^ 0x211E20855025305) - 1) ^ 0xBA59E6ED1C053C87;
  v493 = v492 ^ __ROR8__(v491, 61);
  v494 = __ROR8__(v492, 8);
  v495 = __ROR8__((((2 * (v494 + v493)) | 0x9070F62B7014C896) - (v494 + v493) + 0x37C784EA47F59BB5) ^ 0xF0F0CA7F5F0F0C3CLL, 8);
  v496 = (((2 * (v494 + v493)) | 0x9070F62B7014C896) - (v494 + v493) + 0x37C784EA47F59BB5) ^ 0xF0F0CA7F5F0F0C3CLL ^ __ROR8__(v493, 61);
  v497 = (((v495 + v496) & 0x2323481F11B51C3BLL ^ 0x2021400B11300832) + ((v495 + v496) & 0xDCDCB7E0EE4AE3C4 ^ 0xD0843700AA426281) - 1) ^ 0x1525C67637B78FE3;
  v498 = v497 ^ __ROR8__(v496, 61);
  v499 = __ROR8__(v497, 8);
  v500 = (v499 + v498 - ((2 * (v499 + v498)) & 0xDC889C1BBC5DE01ELL) - 0x11BBB1F221D10FF1) ^ 0xFE5B3560F7B0975;
  v501 = v500 ^ __ROR8__(v498, 61);
  v502 = (__ROR8__(v500, 8) + v501) ^ 0xDA604B0C03A2BF99;
  v503 = __ROR8__(v502, 8);
  v504 = v502 ^ __ROR8__(v501, 61);
  v505 = (((v503 + v504) | 0x848C767E00A8455BLL) - ((v503 + v504) | 0x7B738981FF57BAA4) + 0x7B738981FF57BAA4) ^ 0x7EB994B3CB96749CLL;
  v506 = v505 ^ __ROR8__(v504, 61);
  v507 = (__ROR8__(v505, 8) + v506) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v506) = (((__ROR8__(v507, 8) + (v507 ^ __ROR8__(v506, 61))) ^ 0xF4730B31AE70757BLL) >> v490) ^ v13;
  LODWORD(v506) = ((v506 ^ 0x31) + 76) ^ ((v506 ^ 0xFFFFFF93) - 22) ^ ((v506 ^ 0xFFFFFFA2) - 39);
  LODWORD(v507) = (v506 - 43) * (v324 + 97);
  LODWORD(v503) = 112 * v324 + 74 * v506;
  v508 = *(v470 + 8);
  v509 = (v470 + 8) & 0xFFFFFFFFFFFFFFF8;
  v510 = (v509 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v511 = *(v366 + (v472 & v510));
  LODWORD(v452) = v507 + 13 * v503;
  STACK[0x53D0] = v509;
  v512 = __ROR8__(v509, 8);
  v513 = (v511 + v512) ^ 0xB88801D4E1C76353;
  v514 = v513 ^ __ROR8__(v511, 61);
  v515 = __ROR8__(v513, 8) + v514;
  v516 = (((2 * v515) | 0xF1BE5DB9C5464312) - v515 - 0x78DF2EDCE2A32189) ^ 0x40179FB605A649FELL;
  v517 = __ROR8__(v514, 61);
  v518 = __ROR8__(v516, 8);
  v519 = v516 ^ v517;
  v520 = (v518 + v519) ^ 0xE580B17D8CC5E551;
  v521 = v520 ^ __ROR8__(v519, 61);
  v522 = __ROR8__(v520, 8);
  v523 = (((2 * (v522 + v521)) | 0xF8EC59AE787D732ALL) - (v522 + v521) + 0x389D328C3C1466BLL) ^ 0x1DD7D18CED6B40EFLL;
  v524 = v523 ^ __ROR8__(v521, 61);
  v525 = __ROR8__(v523, 8);
  v526 = (((v525 + v524) | 0x42F38BFBFBA1F097) - ((v525 + v524) | 0xBD0C7404045E0F68) - 0x42F38BFBFBA1F098) ^ 0x9893C0F7F8034F0ELL;
  v527 = v526 ^ __ROR8__(v524, 61);
  v528 = (__ROR8__(v526, 8) + v527) ^ 0xFA35E2CDCB3E31C7;
  v529 = v528 ^ __ROR8__(v527, 61);
  v530 = __ROR8__(v528, 8);
  v531 = (((2 * (v530 + v529)) | 0x753BA7B3206986EELL) - (v530 + v529) - 0x3A9DD3D99034C377) ^ 0xE86DDF3FB0D110D9;
  v532 = 8 * ((v470 + 8) & 7);
  LODWORD(v459) = (((__ROR8__(v531, 8) + (v531 ^ __ROR8__(v529, 61))) ^ 0xF4730B31AE70757BLL) >> v532) ^ v508;
  LODWORD(v459) = ((v459 ^ 7) + 58) ^ ((v459 ^ 0xFFFFFFF9) - 56) ^ ((v459 ^ 0xFFFFFFFE) - 63);
  v533 = (v515 - ((2 * v515) & 0x5C1D93F2456778CELL) - 0x51F13606DD4C4399) ^ 0x96C67893C5B6D410;
  v534 = v533 ^ v517;
  v535 = (__ROR8__(v533, 8) + v534) ^ 0xE580B17D8CC5E551;
  v536 = __ROR8__(v535, 8);
  v537 = v535 ^ __ROR8__(v534, 61);
  v538 = (v536 + v537) ^ 0xE1A1FD5BD155F97ALL;
  v539 = v538 ^ __ROR8__(v537, 61);
  v540 = (__ROR8__(v538, 8) + v539) ^ 0xDA604B0C03A2BF99;
  v541 = v540 ^ __ROR8__(v539, 61);
  v542 = (__ROR8__(v540, 8) + v541) ^ 0xFA35E2CDCB3E31C7;
  v543 = v542 ^ __ROR8__(v541, 61);
  v544 = (__ROR8__(v542, 8) + v543) ^ 0xD2F00CE620E5D3AELL;
  v545 = v544 ^ __ROR8__(v543, 61);
  v546 = __ROR8__(v544, 8);
  LODWORD(v545) = (((((2 * (v546 + v545)) & 0x73CA96E683656A06) - (v546 + v545) - 0x39E54B7341B2B504) ^ 0x3269BFBD103D3F87) >> v532) ^ v508;
  LODWORD(v545) = ((v545 ^ 0x26) + 33) ^ ((v545 ^ 0x11) + 24) ^ ((v545 ^ 0x37) + 50);
  LODWORD(v545) = (v459 + 58) * (v545 + 27) + 69 * (91 * v545 + 70 * v459);
  STACK[0x5410] = v471;
  LODWORD(STACK[0x5740]) = v330;
  v547 = *(v366 + (v330 & (535134799 * ((((-226077521 * v471) & 0x738376F0) + ((-226077521 * v471) | 0x738376F0)) | 1) + 2108629691)));
  STACK[0x5400] = v474;
  v548 = (((2 * (v547 + v474)) & 0xF52B2B0FE801F2ECLL) - (v547 + v474) - 0x7A959587F400F977) ^ 0x3DE26BACEA3865DALL;
  v549 = v548 ^ __ROR8__(v547, 61);
  v550 = __ROR8__(v548, 8);
  v551 = (((v550 + v549) & 0x6EFF92F1395A8744 ^ 0x85710F138420600) + ((v550 + v549) ^ 0xE7A8C60601B8F154) - (((v550 + v549) ^ 0xE7A8C60601B8F154) & 0x6EFF92F1395A8744)) ^ 0xB19FE59DDFE71E67;
  v552 = v551 ^ __ROR8__(v549, 61);
  v553 = __ROR8__(v551, 8);
  v554 = (v553 + v552 - ((2 * (v553 + v552)) & 0xA1C0FBDD2FF2A548) - 0x2F1F82116806AD5CLL) ^ 0x3560CC931B3CB7F5;
  v555 = v554 ^ __ROR8__(v552, 61);
  v556 = (__ROR8__(v554, 8) + v555) ^ 0xE1A1FD5BD155F97ALL;
  v557 = v556 ^ __ROR8__(v555, 61);
  v558 = (__ROR8__(v556, 8) + v557) ^ 0xDA604B0C03A2BF99;
  v559 = v558 ^ __ROR8__(v557, 61);
  v560 = (__ROR8__(v558, 8) + v559) ^ 0xFA35E2CDCB3E31C7;
  v561 = v560 ^ __ROR8__(v559, 61);
  v562 = (__ROR8__(v560, 8) + v561) ^ 0xD2F00CE620E5D3AELL;
  v563 = *(v470 + 10);
  v470 += 10;
  LODWORD(v452) = LODWORD(STACK[0x4960]) + 74 * v452;
  v564 = *(v366 + (v330 & ((v470 & 0x5CA3B648) + (v470 & 0xA35C49B0 | 0x5CA3B648) + 496534226)));
  v565 = __ROR8__(v470 & 0xFFFFFFFFFFFFFFF8, 8);
  v566 = (((v564 + v565) | 0x4D95E35110E7A81CLL) - ((v564 + v565) | 0xB26A1CAEEF1857E3) - 0x4D95E35110E7A81DLL) ^ 0xF51DE285F120CB4FLL;
  v567 = v566 ^ __ROR8__(v564, 61);
  v568 = (__ROR8__(v566, 8) + v567) ^ 0x38C8B16AE7056877;
  v569 = __ROR8__(v568, 8);
  v570 = v568 ^ __ROR8__(v567, 61);
  v571 = (((v569 + v570) | 0x210B48052DCF0E51) - ((v569 + v570) | 0xDEF4B7FAD230F1AELL) - 0x210B48052DCF0E52) ^ 0xC48BF978A10AEB00;
  v572 = v571 ^ __ROR8__(v570, 61);
  v573 = __ROR8__(v571, 8);
  v574 = (((2 * (v573 + v572)) & 0x1C234FCBFBFBFB26) - (v573 + v572) + 0x71EE581A0202026CLL) ^ 0x904FA541D357FB16;
  v575 = v574 ^ __ROR8__(v572, 61);
  v576 = (__ROR8__(v574, 8) + v575) ^ 0xDA604B0C03A2BF99;
  v577 = v576 ^ __ROR8__(v575, 61);
  v578 = (__ROR8__(v576, 8) + v577) ^ 0xFA35E2CDCB3E31C7;
  v579 = v578 ^ __ROR8__(v577, 61);
  v580 = __ROR8__(v578, 8);
  v581 = (((2 * (v580 + v579)) | 0x5AC03AE364DF77C2) - (v580 + v579) + 0x529FE28E4D90441FLL) ^ 0x7F901197928A684FLL;
  v582 = 8 * (v470 & 7);
  LODWORD(v536) = (((__ROR8__(v581, 8) + (v581 ^ __ROR8__(v579, 61))) ^ 0xF4730B31AE70757BLL) >> v582) ^ v563;
  STACK[0x5358] = v470 & 0xFFFFFFFFFFFFFFF8;
  v583 = ((v470 & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x5350] = v583;
  v584 = *(v366 + (v472 & v583));
  LODWORD(v569) = ((v536 ^ 0x2D) - 44) ^ ((v536 ^ 0x48) - 73) ^ ((v536 ^ 0x65) - 100);
  STACK[0x5368] = v565;
  v585 = v584 + v565;
  v586 = __ROR8__(v584, 61);
  v587 = (v584 + v565) ^ 0xB88801D4E1C76353;
  v588 = v587 ^ v586;
  v589 = (__ROR8__(v587, 8) + (v587 ^ v586)) ^ 0x38C8B16AE7056877;
  v590 = __ROR8__(v589, 8);
  v591 = v589 ^ __ROR8__(v588, 61);
  v592 = (v590 + v591) ^ 0xE580B17D8CC5E551;
  v593 = v592 ^ __ROR8__(v591, 61);
  v594 = __ROR8__(v592, 8);
  v595 = (((2 * (v594 + v593)) & 0xE8F7D100B1E57148) - (v594 + v593) - 0x747BE88058F2B8A5) ^ 0x6A25EA247658BE21;
  v596 = v595 ^ __ROR8__(v593, 61);
  v597 = (__ROR8__(v595, 8) + v596) ^ 0xDA604B0C03A2BF99;
  v598 = v597 ^ __ROR8__(v596, 61);
  v599 = (__ROR8__(v597, 8) + v598) ^ 0xFA35E2CDCB3E31C7;
  v600 = v599 ^ __ROR8__(v598, 61);
  v601 = __ROR8__(v599, 8);
  v602 = (((v601 + v600) | 0x97BF4D9DA041772) - ((v601 + v600) | 0xF6840B2625FBE88DLL) - 0x97BF4D9DA041773) ^ 0xDB8BF83FFAE1C4DCLL;
  v603 = v602 ^ __ROR8__(v600, 61);
  v604 = __ROR8__(v602, 8);
  LODWORD(v603) = (((((v604 + v603) | 0xF6269B066AFB032BLL) - ((v604 + v603) | 0x9D964F99504FCD4) + 0x9D964F99504FCD4) ^ 0x2559037C48B7650) >> v582) ^ v563;
  LODWORD(v603) = ((v603 ^ 0x6F) + 63) ^ ((v603 ^ 0x66) + 56) ^ ((v603 ^ 9) + 89);
  LODWORD(v603) = (v569 + 36) * (v603 - 27) + 107 * (-41 * v603 - 101 * v569);
  LODWORD(STACK[0x5720]) = ((16 * (LODWORD(STACK[0x5730]) ^ 0xFFFFFFDA)) ^ 0x6E) & (~(2 * (LOBYTE(STACK[0x5730]) ^ 0xDA)) | 0xFFFFFFF9);
  v605 = ((v585 | 0x2CFBF59B208C3F2ELL) - (v585 | 0xD3040A64DF73C0D1) - 0x2CFBF59B208C3F2FLL) ^ 0x9473F44FC14B5C7DLL ^ v586;
  v606 = (__ROR8__(((v585 | 0x2CFBF59B208C3F2ELL) - (v585 | 0xD3040A64DF73C0D1) - 0x2CFBF59B208C3F2FLL) ^ 0x9473F44FC14B5C7DLL, 8) + v605) ^ 0x38C8B16AE7056877;
  v607 = __ROR8__(v606, 8);
  v608 = v606 ^ __ROR8__(v605, 61);
  v609 = (((2 * (v607 + v608)) & 0xCB1071376B607850) - (v607 + v608) - 0x6588389BB5B03C29) ^ 0x7FF77619C68A2686;
  v610 = v609 ^ __ROR8__(v608, 61);
  v611 = (__ROR8__(v609, 8) + v610) ^ 0xE1A1FD5BD155F97ALL;
  v612 = v611 ^ __ROR8__(v610, 61);
  v613 = (__ROR8__(v611, 8) + v612) ^ 0xDA604B0C03A2BF99;
  v614 = v613 ^ __ROR8__(v612, 61);
  v615 = (__ROR8__(v613, 8) + v614) ^ 0xFA35E2CDCB3E31C7;
  v616 = v615 ^ __ROR8__(v614, 61);
  v617 = __ROR8__(v615, 8);
  v618 = (((2 * (v617 + v616)) | 0xCFBDA22FA821E2C8) - (v617 + v616) - 0x67DED117D410F164) ^ 0xB52EDDF1F4F522CALL;
  v619 = __ROR8__(v618, 8) + (v618 ^ __ROR8__(v616, 61));
  LODWORD(STACK[0x5730]) = ((16 * LODWORD(STACK[0x5408])) ^ 0xEA) & (~(2 * LODWORD(STACK[0x5408])) | 0xFFFFFFF9) & 0xFFFFFFFB | (4 * ((LODWORD(STACK[0x5408]) >> 1) & 1));
  STACK[0x5408] = v490;
  LODWORD(STACK[0x5328]) = LODWORD(STACK[0x53E0]) ^ (((__ROR8__(v562, 8) + (v562 ^ __ROR8__(v561, 61))) ^ 0xF4730B31AE70757BLL) >> v490) ^ v452;
  v620 = *(v366 + (v472 & v510));
  STACK[0x53D8] = v512;
  v621 = (((v620 + v512) | 0x5483377C17B066DLL) - ((v620 + v512) | 0xFAB7CC883E84F992) - 0x5483377C17B066ELL) ^ 0xBDC032A320BC653ELL;
  v622 = v621 ^ __ROR8__(v620, 61);
  v623 = __ROR8__(v621, 8);
  v624 = (((2 * (v623 + v622)) | 0xCD369FDC17AE30A0) - (v623 + v622) - 0x669B4FEE0BD71850) ^ 0x5E53FE84ECD27027;
  v625 = v624 ^ __ROR8__(v622, 61);
  v626 = (__ROR8__(v624, 8) + v625) ^ 0xE580B17D8CC5E551;
  v627 = v626 ^ __ROR8__(v625, 61);
  v628 = (__ROR8__(v626, 8) + v627) ^ 0xE1A1FD5BD155F97ALL;
  v629 = v628 ^ __ROR8__(v627, 61);
  v630 = (__ROR8__(v628, 8) + v629) ^ 0xDA604B0C03A2BF99;
  v631 = v630 ^ __ROR8__(v629, 61);
  v632 = __ROR8__(v630, 8);
  v633 = __ROR8__((((2 * (v632 + v631)) | 0x8D27AD6B622C50A4) - (v632 + v631) - 0x4693D6B5B1162852) ^ 0xBCA634787A281995, 8);
  v634 = (((2 * (v632 + v631)) | 0x8D27AD6B622C50A4) - (v632 + v631) - 0x4693D6B5B1162852) ^ 0xBCA634787A281995 ^ __ROR8__(v631, 61);
  v635 = (v633 + v634) ^ 0xD2F00CE620E5D3AELL;
  v636 = v635 ^ __ROR8__(v634, 61);
  v637 = __ROR8__(v635, 8);
  STACK[0x53E0] = v532;
  LODWORD(STACK[0x5320]) = (((v637 + v636 - ((2 * (v637 + v636)) & 0x22A9EF1B9E71F1AALL) - 0x6EAB087230C7072BLL) ^ 0x6527FCBC61488DAELL) >> v532) ^ v508 ^ (98 * (v545 - 101) - ((68 * (v545 - 101)) & 0x54) - 86);
  STACK[0x5360] = v582;
  LODWORD(STACK[0x5340]) = v563 ^ ((v619 ^ 0xF4730B31AE70757BLL) >> v582) ^ 0x2B ^ (46 * (v603 + 122) - ((92 * (v603 + 122)) & 0xFFFFFFA8) - 44);
  v638 = STACK[0x4948];
  v640 = *(STACK[0x4948] + 11);
  v639 = STACK[0x4948] + 11;
  v641 = v639 & 0xFFFFFFFFFFFFFFF8;
  v642 = ((v639 & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v643 = *(v366 + (v472 & v642));
  v644 = __ROR8__(v639 & 0xFFFFFFFFFFFFFFF8, 8);
  v645 = __ROR8__((v643 + v644) ^ 0xB88801D4E1C76353, 8);
  v646 = (v643 + v644) ^ 0xB88801D4E1C76353 ^ __ROR8__(v643, 61);
  v647 = (v645 + v646) ^ 0x38C8B16AE7056877;
  v648 = v647 ^ __ROR8__(v646, 61);
  v649 = (__ROR8__(v647, 8) + v648) ^ 0xE580B17D8CC5E551;
  v650 = v649 ^ __ROR8__(v648, 61);
  v651 = (__ROR8__(v649, 8) + v650) ^ 0xE1A1FD5BD155F97ALL;
  v652 = v651 ^ __ROR8__(v650, 61);
  v653 = (__ROR8__(v651, 8) + v652) ^ 0xDA604B0C03A2BF99;
  v654 = v653 ^ __ROR8__(v652, 61);
  v655 = (__ROR8__(v653, 8) + v654) ^ 0xFA35E2CDCB3E31C7;
  v656 = v655 ^ __ROR8__(v654, 61);
  v657 = __ROR8__(v655, 8);
  v658 = (v657 + v656 - ((2 * (v657 + v656)) & 0xD79683B106AB65F0) - 0x1434BE277CAA4D08) ^ 0x393B4D3EA3B06156;
  v659 = 8 * (v639 & 7);
  LODWORD(v639) = (((__ROR8__(v658, 8) + (v658 ^ __ROR8__(v656, 61))) ^ 0xF4730B31AE70757BLL) >> v659) ^ v640;
  LODWORD(v639) = ((v639 ^ 0x2E) - 106) ^ (68 - v639) ^ ((v639 ^ 0xFFFFFFD1) + 107);
  LODWORD(v656) = (v641 ^ 0xEBC8AFE4) - 1905030858;
  STACK[0x53C0] = v641;
  LODWORD(v641) = 2 * v641;
  LODWORD(STACK[0x53A8]) = v641;
  LODWORD(v330) = STACK[0x5740];
  v660 = *(v366 + (LODWORD(STACK[0x5740]) & (v656 + (v641 & 0xD7915FC0))));
  v661 = (v660 + v644) ^ 0xB88801D4E1C76353;
  v662 = v661 ^ __ROR8__(v660, 61);
  v663 = (__ROR8__(v661, 8) + v662) ^ 0x38C8B16AE7056877;
  v664 = v663 ^ __ROR8__(v662, 61);
  v665 = __ROR8__(v663, 8);
  v666 = __ROR8__((((v665 + v664) | 0x92B1E3B6132CE5ABLL) - ((v665 + v664) | 0x6D4E1C49ECD31A54) + 0x6D4E1C49ECD31A54) ^ 0x773152CB9FE900FALL, 8);
  v667 = (((v665 + v664) | 0x92B1E3B6132CE5ABLL) - ((v665 + v664) | 0x6D4E1C49ECD31A54) + 0x6D4E1C49ECD31A54) ^ 0x773152CB9FE900FALL ^ __ROR8__(v664, 61);
  v668 = (v666 + v667) ^ 0xE1A1FD5BD155F97ALL;
  v669 = v668 ^ __ROR8__(v667, 61);
  v670 = (__ROR8__(v668, 8) + v669) ^ 0xDA604B0C03A2BF99;
  v671 = v670 ^ __ROR8__(v669, 61);
  v672 = __ROR8__(v670, 8);
  v673 = __ROR8__((v672 + v671 - ((2 * (v672 + v671)) & 0x1E9F33575C56806ELL) + 0xF4F99ABAE2B4037) ^ 0xF57A7B66651571F0, 8);
  v674 = (v672 + v671 - ((2 * (v672 + v671)) & 0x1E9F33575C56806ELL) + 0xF4F99ABAE2B4037) ^ 0xF57A7B66651571F0 ^ __ROR8__(v671, 61);
  v675 = (v673 + v674) ^ 0xD2F00CE620E5D3AELL;
  v676 = v675 ^ __ROR8__(v674, 61);
  v677 = __ROR8__(v675, 8);
  LODWORD(v676) = (((((v677 + v676) | 0xF4EBF8CA8D236F92) - ((v677 + v676) | 0xB14073572DC906DLL) + 0xB14073572DC906DLL) ^ 0x98F3FB23531AE9) >> v659) ^ v640;
  LODWORD(v676) = ((v676 ^ 0x6B) + 108) ^ (v676 - 47) ^ ((v676 ^ 0xFFFFFFBB) - 68);
  LODWORD(v676) = (v676 + 86) * (v639 - 114) - 99 * (125 * v639 - 82 * v676);
  LODWORD(v675) = v638[9];
  LODWORD(v673) = (v638 + 9) & 0xFFFFFFF8;
  v678 = *(v366 + (LODWORD(STACK[0x5740]) & ((v673 ^ 0x4E3FE6CB) + 737956431 + ((2 * v673) & 0x9C7FCD90))));
  v679 = __ROR8__((v638 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v680 = __ROR8__((((v678 + v679) | 0x83695A5E19277319) - ((v678 + v679) | 0x7C96A5A1E6D88CE6) + 0x7C96A5A1E6D88CE6) ^ 0x3BE15B8AF8E0104ALL, 8);
  v681 = (((v678 + v679) | 0x83695A5E19277319) - ((v678 + v679) | 0x7C96A5A1E6D88CE6) + 0x7C96A5A1E6D88CE6) ^ 0x3BE15B8AF8E0104ALL ^ __ROR8__(v678, 61);
  v682 = (((2 * (v680 + v681)) & 0xFBF3EC333C14268ALL) - (v680 + v681) - 0x7DF9F6199E0A1346) ^ 0xBACEB88C86F084CDLL;
  v683 = v682 ^ __ROR8__(v681, 61);
  v684 = (__ROR8__(v682, 8) + v683) ^ 0xE580B17D8CC5E551;
  v685 = v684 ^ __ROR8__(v683, 61);
  v686 = __ROR8__(v684, 8);
  v687 = (((v686 + v685) | 0xD1FA5CF6C1DF057BLL) - ((v686 + v685) | 0x2E05A3093E20FA84) + 0x2E05A3093E20FA84) ^ 0x305BA1AD108AFC01;
  v688 = v687 ^ __ROR8__(v685, 61);
  v689 = (__ROR8__(v687, 8) + v688) ^ 0xDA604B0C03A2BF99;
  v690 = v689 ^ __ROR8__(v688, 61);
  v691 = __ROR8__(v689, 8);
  v692 = (v691 + v690 - ((2 * (v691 + v690)) & 0xBDED5D5D522A0294) - 0x2109515156EAFEB6) ^ 0x24C34C63622B308DLL;
  v693 = v692 ^ __ROR8__(v690, 61);
  v694 = (__ROR8__(v692, 8) + v693) ^ 0xD2F00CE620E5D3AELL;
  v695 = v694 ^ __ROR8__(v693, 61);
  v696 = __ROR8__(v694, 8);
  v697 = 8 * ((v638 + 9) & 7);
  LODWORD(v639) = (((((v696 + v695) | 0x992ACD2E5649B72ALL) - ((v696 + v695) | 0x66D532D1A9B648D5) + 0x66D532D1A9B648D5) ^ 0x6D59C61FF839C251) >> v697) ^ v675;
  LODWORD(v639) = ((v639 ^ 0xFFFFFFDD) - 68) ^ ((v639 ^ 2) + 101) ^ ((v639 ^ 0xFFFFFFDF) - 70);
  v698 = (v673 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v699 = v472;
  STACK[0x5370] = v698;
  v700 = *(v366 + (v472 & v698));
  v701 = (v700 + v679) ^ 0xB88801D4E1C76353;
  v702 = v701 ^ __ROR8__(v700, 61);
  v703 = __ROR8__(v701, 8);
  v704 = (((2 * (v703 + v702)) | 0x80F84AC5DF24439CLL) - (v703 + v702) + 0x3F83DA9D106DDE32) ^ 0xF8B49408089749B9;
  v705 = v704 ^ __ROR8__(v702, 61);
  v706 = (__ROR8__(v704, 8) + v705) ^ 0xE580B17D8CC5E551;
  v707 = v706 ^ __ROR8__(v705, 61);
  v708 = __ROR8__(v706, 8);
  v709 = __ROR8__((((v708 + v707) | 0xE3D4185C1730C4DLL) - ((v708 + v707) | 0xF1C2BE7A3E8CF3B2) - 0xE3D4185C1730C4ELL) ^ 0xEF9CBCDE1026F537, 8);
  v710 = (((v708 + v707) | 0xE3D4185C1730C4DLL) - ((v708 + v707) | 0xF1C2BE7A3E8CF3B2) - 0xE3D4185C1730C4ELL) ^ 0xEF9CBCDE1026F537 ^ __ROR8__(v707, 61);
  v711 = (v709 + v710) ^ 0xDA604B0C03A2BF99;
  v712 = v711 ^ __ROR8__(v710, 61);
  v713 = (__ROR8__(v711, 8) + v712) ^ 0xFA35E2CDCB3E31C7;
  v714 = v713 ^ __ROR8__(v712, 61);
  v715 = (__ROR8__(v713, 8) + v714) ^ 0xD2F00CE620E5D3AELL;
  v716 = v715 ^ __ROR8__(v714, 61);
  v717 = __ROR8__(v715, 8);
  LODWORD(v716) = (((v717 + v716 - ((2 * (v717 + v716)) & 0xC7FB00EE1CE4E62CLL) - 0x1C027F88F18D8CEALL) ^ 0x178E8B46A002066DLL) >> v697) ^ v675;
  LODWORD(v716) = ((v716 ^ 0xFFFFFFC8) - 121) ^ ((v716 ^ 0xFFFFFF9F) - 46) ^ ((v716 ^ 0x57) + 26);
  LODWORD(v716) = (v639 + 8) * (v716 - 70) - 79 * (-31 * v716 + 39 * v639);
  v718 = *(v366 + ((((STACK[0x5520] ^ 0x7F33334C) - 83294919 + (STACK[0x5700] & 0xFE666690) + 149) & v472) & 0xFFFFFFFFFFFFFFF8));
  v719 = (v718 + STACK[0x5510]) ^ 0xB88801D4E1C76353;
  v720 = v719 ^ __ROR8__(v718, 61);
  v721 = (__ROR8__(v719, 8) + v720) ^ 0x38C8B16AE7056877;
  v722 = v721 ^ __ROR8__(v720, 61);
  v723 = (__ROR8__(v721, 8) + v722) ^ 0xE580B17D8CC5E551;
  v724 = v723 ^ __ROR8__(v722, 61);
  v725 = (__ROR8__(v723, 8) + v724) ^ 0xE1A1FD5BD155F97ALL;
  v726 = __ROR8__(v725, 8);
  v727 = v725 ^ __ROR8__(v724, 61);
  v728 = (((2 * (v726 + v727)) & 0x518F924E97206AF4) - (v726 + v727) - 0x28C7C9274B90357BLL) ^ 0xD587DD4B7CD751CLL;
  v729 = v728 ^ __ROR8__(v727, 61);
  v730 = (__ROR8__(v728, 8) + v729) ^ 0xFA35E2CDCB3E31C7;
  v731 = v730 ^ __ROR8__(v729, 61);
  v732 = __ROR8__(v730, 8);
  v733 = (((2 * (v732 + v731)) | 0x1633700F1EA911CELL) - (v732 + v731) + 0x74E647F870AB7719) ^ 0x59E9B4E1AFB15B49;
  v734 = v733 ^ __ROR8__(v731, 61);
  v735 = __ROR8__(v733, 8);
  LODWORD(v734) = LODWORD(STACK[0x53C8]) ^ (((((2 * (v735 + v734)) | 0x3B4B2AF14BA9326CLL) - (v735 + v734) + 0x625A6A875A2B66CALL) ^ 0x69D69E490BA4EC4DuLL) >> STACK[0x5530]) ^ ((~(76 * LODWORD(STACK[0x53B0]) + 104) | 0xFFFFFF83) + 38 * LODWORD(STACK[0x53B0]) - 140);
  v736 = *(v366 + (((((v638 + 9) & 0x49676F38) + 819251679 + ((v638 + 9) & 0xB69890C0 | 0x49676F38) + 3) & v472) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x5388] = v679;
  v737 = (v736 + v679) ^ 0xB88801D4E1C76353;
  v738 = v737 ^ __ROR8__(v736, 61);
  v739 = __ROR8__(v737, 8);
  v740 = (((2 * (v739 + v738)) | 0x65E9DB881B78EF8ELL) - (v739 + v738) + 0x4D0B123BF2438839) ^ 0x8A3C5CAEEAB91FB0;
  v741 = v740 ^ __ROR8__(v738, 61);
  v742 = __ROR8__(v740, 8);
  v743 = __ROR8__((v742 + v741 - ((2 * (v742 + v741)) & 0xAE46EC0BE35F5720) + 0x57237605F1AFAB90) ^ 0xB2A3C7787D6A4EC1, 8);
  v744 = (v742 + v741 - ((2 * (v742 + v741)) & 0xAE46EC0BE35F5720) + 0x57237605F1AFAB90) ^ 0xB2A3C7787D6A4EC1 ^ __ROR8__(v741, 61);
  v745 = (v743 + v744) ^ 0xE1A1FD5BD155F97ALL;
  v746 = v745 ^ __ROR8__(v744, 61);
  v747 = __ROR8__(v745, 8);
  v748 = (((2 * (v747 + v746)) & 0x64B6879ACDC34342) - (v747 + v746) + 0x4DA4BC32991E5E5ELL) ^ 0x97C4F73E9ABCE1C7;
  v749 = v748 ^ __ROR8__(v746, 61);
  v750 = __ROR8__(v748, 8);
  v751 = (((2 * (v750 + v749)) & 0x868B72FCE91F43D6) - (v750 + v749) - 0x4345B97E748FA1ECLL) ^ 0x468FA44C404E6FD3;
  v752 = v751 ^ __ROR8__(v749, 61);
  v753 = __ROR8__(v751, 8);
  v754 = (((2 * (v753 + v752)) | 0x253F7659EC2BB478) - (v753 + v752) + 0x6D6044D309EA25C4) ^ 0x406FB7CAD6F00992;
  v755 = v754 ^ __ROR8__(v752, 61);
  v756 = __ROR8__(v754, 8);
  LODWORD(v754) = LODWORD(STACK[0x4E60]) - 62 * v716;
  STACK[0x5380] = v697;
  LODWORD(v755) = v675 ^ (((v756 + v755) ^ 0xF4730B31AE70757BLL) >> v697) ^ 0xFFFFFFE6 ^ v754;
  v757 = *(v366 + (v699 & v642));
  STACK[0x53B0] = v644;
  v758 = (v757 + v644) ^ 0xB88801D4E1C76353;
  v759 = v758 ^ __ROR8__(v757, 61);
  v760 = __ROR8__(v758, 8);
  v761 = (((2 * (v760 + v759)) | 0xE72E42927B62CD90) - (v760 + v759) - 0x739721493DB166C8) ^ 0x4B5F9023DAB40EBFLL;
  v762 = v761 ^ __ROR8__(v759, 61);
  v763 = (__ROR8__(v761, 8) + v762) ^ 0xE580B17D8CC5E551;
  v764 = v763 ^ __ROR8__(v762, 61);
  v765 = (__ROR8__(v763, 8) + v764) ^ 0xE1A1FD5BD155F97ALL;
  v766 = v765 ^ __ROR8__(v764, 61);
  v767 = (__ROR8__(v765, 8) + v766) ^ 0xDA604B0C03A2BF99;
  v768 = v767 ^ __ROR8__(v766, 61);
  v769 = __ROR8__(v767, 8);
  v770 = (((2 * (v769 + v768)) & 0x8EB026E194688542) - (v769 + v768) + 0x38A7EC8F35CBBD5ELL) ^ 0xC2920E42FEF58C99;
  v771 = v770 ^ __ROR8__(v768, 61);
  v772 = __ROR8__(v770, 8);
  v773 = (((v772 + v771) & 0xABEAD54FADAA1E21 ^ 0xA022554720000820) + ((v772 + v771) & 0x54152AB05255E1DELL ^ 0x50AB000554157) - 1) ^ 0x72D7531100B09AD8;
  LODWORD(STACK[0x5290]) = (16 * LODWORD(STACK[0x5340])) | (2 * (STACK[0x5340] & 3));
  LODWORD(STACK[0x5710]) = (16 * (LODWORD(STACK[0x5710]) ^ 4)) | (2 * (STACK[0x5710] & 3));
  STACK[0x53C8] = v659;
  LODWORD(v532) = v640 ^ (((__ROR8__(v773, 8) + (v773 ^ __ROR8__(v771, 61))) ^ 0xF4730B31AE70757BLL) >> v659) ^ 0xFFFFFFA6 ^ (62 * (v676 + 8) - ((124 * (v676 + 8)) & 0xFFFFFFAC) - 41);
  LODWORD(STACK[0x5700]) = ((2 * (v755 & 3)) ^ 0xFFFFFFF7) & ~(16 * v755);
  LODWORD(v755) = v638[3];
  v774 = (v638 + 3) & 0xFFFFFFFFFFFFFFF8;
  v775 = *(v366 + (v699 & ((v774 ^ 0xF6C04334) - 2089028124 + ((2 * v774) & 0xED808660))));
  v776 = __ROR8__(v774, 8);
  v777 = (v775 + v776 - ((2 * (v775 + v776)) & 0x63076CEBFB2020) + 0x3183B675FD9010) ^ 0xB8B98262943AF343;
  v778 = v777 ^ __ROR8__(v775, 61);
  v779 = __ROR8__(v777, 8);
  v780 = __ROR8__((((v779 + v778) | 0x987A001EF0FD865) - ((v779 + v778) | 0xF6785FFE10F0279ALL) - 0x987A001EF0FD866) ^ 0x314F116B080AB012, 8);
  v781 = (((v779 + v778) | 0x987A001EF0FD865) - ((v779 + v778) | 0xF6785FFE10F0279ALL) - 0x987A001EF0FD866) ^ 0x314F116B080AB012 ^ __ROR8__(v778, 61);
  v782 = (v780 + v781) ^ 0xE580B17D8CC5E551;
  v783 = v782 ^ __ROR8__(v781, 61);
  v784 = (__ROR8__(v782, 8) + v783) ^ 0xE1A1FD5BD155F97ALL;
  v785 = v784 ^ __ROR8__(v783, 61);
  v786 = (__ROR8__(v784, 8) + v785) ^ 0xDA604B0C03A2BF99;
  v787 = v786 ^ __ROR8__(v785, 61);
  v788 = __ROR8__(v786, 8);
  STACK[0x5310] = v774;
  v789 = (v788 + v787 - ((2 * (v788 + v787)) & 0x618D31C4C178AB6) - 0x7CF39671D9F43AA5) ^ 0x79398B43ED35F49CLL;
  v790 = v789 ^ __ROR8__(v787, 61);
  v791 = (__ROR8__(v789, 8) + v790) ^ 0xD2F00CE620E5D3AELL;
  v792 = *(v366 + (v330 & ((v774 ^ 0x324BC4B7) + 1206940771 + ((2 * v774) & 0x64978960))));
  v793 = __ROR8__(v791, 8) + (v791 ^ __ROR8__(v790, 61));
  STACK[0x5308] = v776;
  v794 = (v792 + v776) ^ 0xB88801D4E1C76353;
  v795 = v794 ^ __ROR8__(v792, 61);
  v796 = __ROR8__(v794, 8);
  v797 = (((2 * (v796 + v795)) & 0x3C13E77B030BD216) - (v796 + v795) + 0x61F60C427E7A16F4) ^ 0x593EBD28997F7E83;
  v798 = v797 ^ __ROR8__(v795, 61);
  v799 = __ROR8__(v797, 8);
  v800 = (((v799 + v798) | 0x750DE71F95550638) - ((v799 + v798) | 0x8AF218E06AAAF9C7) - 0x750DE71F95550639) ^ 0x908D56621990E369;
  v801 = v800 ^ __ROR8__(v798, 61);
  v802 = __ROR8__(v800, 8);
  v803 = __ROR8__((((2 * (v802 + v801)) | 0x4995A9FF8F2968B2) - (v802 + v801) + 0x5B352B00386B4BA7) ^ 0x456B29A416C14D23, 8);
  v804 = (((2 * (v802 + v801)) | 0x4995A9FF8F2968B2) - (v802 + v801) + 0x5B352B00386B4BA7) ^ 0x456B29A416C14D23 ^ __ROR8__(v801, 61);
  v805 = (((2 * (v803 + v804)) | 0x50673452C4C55224) - (v803 + v804) + 0x57CC65D69D9D56EELL) ^ 0x7253D12561C0168BLL;
  v806 = v805 ^ __ROR8__(v804, 61);
  v807 = (__ROR8__(v805, 8) + v806) ^ 0xFA35E2CDCB3E31C7;
  v808 = v807 ^ __ROR8__(v806, 61);
  v809 = (__ROR8__(v807, 8) + v808) ^ 0xD2F00CE620E5D3AELL;
  v810 = 8 * ((v638 + 3) & 7);
  STACK[0x5300] = v810;
  LODWORD(v793) = __PAIR64__(((v793 ^ 0xF4730B31AE70757BLL) >> v810) ^ v755, ((((__ROR8__(v809, 8) + (v809 ^ __ROR8__(v808, 61))) ^ 0xF4730B31AE70757BLL) >> v810) ^ v755) << 24) >> 27;
  v811 = v699;
  v812 = *(v366 + (v699 & STACK[0x56E0]));
  v813 = (v812 + STACK[0x5570]) ^ 0xB88801D4E1C76353;
  v814 = v813 ^ __ROR8__(v812, 61);
  v815 = __ROR8__(v813, 8);
  v816 = (v815 + v814 - ((2 * (v815 + v814)) & 0x178BCE4B53B8FE18) + 0xBC5E725A9DC7F0CLL) ^ 0x330D564F4ED9177BLL;
  v817 = v816 ^ __ROR8__(v814, 61);
  v818 = (__ROR8__(v816, 8) + v817) ^ 0xE580B17D8CC5E551;
  v819 = v818 ^ __ROR8__(v817, 61);
  v820 = __ROR8__(v818, 8);
  v821 = (((v820 + v819) | 0xCF2857266BD37C00) - ((v820 + v819) | 0x30D7A8D9942C83FFLL) + 0x30D7A8D9942C83FFLL) ^ 0x2E89AA7DBA86857ALL;
  v822 = v821 ^ __ROR8__(v819, 61);
  v823 = __ROR8__(v821, 8);
  v824 = (((v823 + v822) | 0x28460C6635216BB9) - ((v823 + v822) | 0xD7B9F399CADE9446) - 0x28460C6635216BBALL) ^ 0xF226476A3683D420;
  v825 = v824 ^ __ROR8__(v822, 61);
  v826 = (__ROR8__(v824, 8) + v825) ^ 0xFA35E2CDCB3E31C7;
  v827 = v826 ^ __ROR8__(v825, 61);
  v828 = (__ROR8__(v826, 8) + v827) ^ 0xD2F00CE620E5D3AELL;
  v829 = __ROR8__(v828, 8) + (v828 ^ __ROR8__(v827, 61));
  LODWORD(v808) = (~(100 * LODWORD(STACK[0x56D0]) + 10400) | 0xFFFFFFB3) - 14 * LODWORD(STACK[0x56D0]);
  v830 = (STACK[0x56C0] + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x5330] = v830;
  v831 = *(v366 + (v699 & v830));
  v832 = (v831 + STACK[0x5580]) ^ 0xB88801D4E1C76353;
  v833 = v832 ^ __ROR8__(v831, 61);
  v834 = (__ROR8__(v832, 8) + v833) ^ 0x38C8B16AE7056877;
  v835 = v834 ^ __ROR8__(v833, 61);
  v836 = (__ROR8__(v834, 8) + v835) ^ 0xE580B17D8CC5E551;
  v837 = v836 ^ __ROR8__(v835, 61);
  v838 = __ROR8__(v836, 8);
  v839 = (((2 * (v838 + v837)) & 0x5D27D4E257ACADD2) - (v838 + v837) - 0x2E93EA712BD656EALL) ^ 0x30CDE8D5057C506CLL;
  v840 = v839 ^ __ROR8__(v837, 61);
  v841 = (__ROR8__(v839, 8) + v840) ^ 0xDA604B0C03A2BF99;
  v842 = v841 ^ __ROR8__(v840, 61);
  v843 = __ROR8__(v841, 8);
  v844 = (v843 + v842 - ((2 * (v843 + v842)) & 0x62BF0717546ACF24) - 0x4EA07C7455CA986ELL) ^ 0x4B6A6146610B5655;
  v845 = v844 ^ __ROR8__(v842, 61);
  v846 = __ROR8__(v844, 8);
  v847 = (v846 + v845 - ((2 * (v846 + v845)) & 0xB2842E75EC547C4ALL) + 0x5942173AF62A3E25) ^ 0x8BB21BDCD6CFED8BLL;
  v848 = __ROR8__(v847, 8);
  v849 = __ROR8__(v845, 61);
  LODWORD(STACK[0x5318]) = LODWORD(STACK[0x5680]) ^ (((((2 * (v848 + (v847 ^ v849))) | 0xD06FA0FF0C4A6878) - (v848 + (v847 ^ v849)) + 0x17C82F8079DACBC4) ^ 0x1C44DB4E28554147) >> STACK[0x5590]) ^ 0xFFFFFFD3 ^ (-38 * (LODWORD(STACK[0x5348]) + 49) - ((-76 * (LODWORD(STACK[0x5348]) + 49)) & 0xFFFFFFA4) - 45);
  LODWORD(STACK[0x56D0]) = ((2 * (v734 ^ 0xFFFFFFBF)) & 6 | (16 * (v734 ^ 0xFFFFFFBF))) + ((2 * (((2 * (v734 ^ 0xFFFFFFBF)) & 6 | (16 * (v734 ^ 0xFFFFFFBF)) & 0x66) ^ ((2 * (v734 ^ 0xFFFFFFBF)) | 0x7B))) ^ 0xB);
  LODWORD(v847) = v808 - 1545;
  LODWORD(v829) = LODWORD(STACK[0x56F0]) ^ ((v829 ^ 0xF4730B31AE70757BLL) >> STACK[0x5560]) ^ 9;
  v850 = v638;
  LODWORD(v808) = v638[5];
  v851 = (v638 + 5) & 0xFFFFFFFFFFFFFFF8;
  v852 = (v851 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v853 = *(v366 + (v699 & v852));
  STACK[0x5340] = v851;
  v854 = __ROR8__(v851, 8);
  LODWORD(v829) = v829 ^ v847;
  v855 = v853 + v854;
  v856 = (((2 * (v853 + v854)) & 0xED67B0C71A26277ALL) - (v853 + v854) + 0x94C279C72ECEC42) ^ 0xB1C42648932B8F11;
  v857 = __ROR8__(v853, 61);
  v858 = v856 ^ v857;
  v859 = (__ROR8__(v856, 8) + (v856 ^ v857)) ^ 0x38C8B16AE7056877;
  v860 = v859 ^ __ROR8__(v858, 61);
  v861 = (__ROR8__(v859, 8) + v860) ^ 0xE580B17D8CC5E551;
  v862 = v861 ^ __ROR8__(v860, 61);
  v863 = __ROR8__(v861, 8);
  v864 = (((v863 + v862) | 0xA51441FAAB91936BLL) - ((v863 + v862) | 0x5AEBBE05546E6C94) + 0x5AEBBE05546E6C94) ^ 0x44B5BCA17AC46A11;
  v865 = v864 ^ __ROR8__(v862, 61);
  v866 = (__ROR8__(v864, 8) + v865) ^ 0xDA604B0C03A2BF99;
  v867 = v866 ^ __ROR8__(v865, 61);
  v868 = __ROR8__(v866, 8);
  v869 = (((2 * (v868 + v867)) & 0xF28AD60B73E37668) - (v868 + v867) + 0x6BA94FA460E44CBLL) ^ 0xFC8F76378D30750CLL ^ __ROR8__(v867, 61);
  v870 = (__ROR8__((((2 * (v868 + v867)) & 0xF28AD60B73E37668) - (v868 + v867) + 0x6BA94FA460E44CBLL) ^ 0xFC8F76378D30750CLL, 8) + v869) ^ 0xD2F00CE620E5D3AELL;
  v871 = 8 * ((v638 + 5) & 7);
  LODWORD(v582) = (((__ROR8__(v870, 8) + (v870 ^ __ROR8__(v869, 61))) ^ 0xF4730B31AE70757BLL) >> v871) ^ v808;
  LODWORD(v582) = ((v582 ^ 0x42) + 106) ^ (v582 - 36) ^ ((v582 ^ 0xFFFFFFB2) - 102);
  v872 = ((v855 | 0xF8AD4470760D5D68) - (v855 | 0x752BB8F89F2A297) + 0x752BB8F89F2A297) ^ 0x402545A497CA3E3BLL;
  v873 = v872 ^ v857;
  v874 = (__ROR8__(v872, 8) + v873) ^ 0x38C8B16AE7056877;
  v875 = __ROR8__(v874, 8);
  v876 = v874 ^ __ROR8__(v873, 61);
  v877 = (v875 + v876 - ((2 * (v875 + v876)) & 0xC48682727845CD34) - 0x1DBCBEC6C3DD1966) ^ 0x7C3F044B0E703CBLL;
  v878 = v877 ^ __ROR8__(v876, 61);
  v879 = (__ROR8__(v877, 8) + v878) ^ 0xE1A1FD5BD155F97ALL;
  v880 = v879 ^ __ROR8__(v878, 61);
  v881 = (__ROR8__(v879, 8) + v880) ^ 0xDA604B0C03A2BF99;
  v882 = v881 ^ __ROR8__(v880, 61);
  v883 = (__ROR8__(v881, 8) + v882) ^ 0xFA35E2CDCB3E31C7;
  v884 = v883 ^ __ROR8__(v882, 61);
  v885 = __ROR8__(v883, 8);
  v886 = (((v885 + v884) | 0x5D5CD3A03E8CD817) - ((v885 + v884) | 0xA2A32C5FC17327E8) - 0x5D5CD3A03E8CD818) ^ 0x8FACDF461E690BB9;
  LODWORD(v884) = (((__ROR8__(v886, 8) + (v886 ^ __ROR8__(v884, 61))) ^ 0xF4730B31AE70757BLL) >> v871) ^ v808;
  LODWORD(v675) = (v582 - 44) * ((v884 ^ ((v884 ^ 0x1B) - 71) ^ ((v884 ^ 0x47) - 27) ^ 0x5C) + 105) - 13 * v582;
  LODWORD(v582) = v638[6];
  LODWORD(v870) = (v638 + 6) & 0xFFFFFFF8;
  v887 = (v870 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x52F0] = v887;
  v888 = *(v366 + (v699 & v887));
  v889 = __ROR8__((v638 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v890 = (v888 + v889) ^ 0xB88801D4E1C76353;
  v891 = v890 ^ __ROR8__(v888, 61);
  v892 = __ROR8__(v890, 8);
  v893 = (((v892 + v891) | 0x74362601BAC7C0DELL) - ((v892 + v891) | 0x8BC9D9FE45383F21) - 0x74362601BAC7C0DFLL) ^ 0x4CFE976B5DC2A8A9;
  v894 = v893 ^ __ROR8__(v891, 61);
  v895 = (__ROR8__(v893, 8) + v894) ^ 0xE580B17D8CC5E551;
  v896 = v895 ^ __ROR8__(v894, 61);
  v897 = (__ROR8__(v895, 8) + v896) ^ 0xE1A1FD5BD155F97ALL;
  v898 = v897 ^ __ROR8__(v896, 61);
  v899 = (__ROR8__(v897, 8) + v898) ^ 0xDA604B0C03A2BF99;
  v900 = v899 ^ __ROR8__(v898, 61);
  v901 = (__ROR8__(v899, 8) + v900) ^ 0xFA35E2CDCB3E31C7;
  v902 = v901 ^ __ROR8__(v900, 61);
  v903 = __ROR8__(v901, 8);
  v904 = 8 * ((v638 + 6) & 7);
  LODWORD(v902) = (((__ROR8__((((v903 + v902) | 0x9C71317F70608185) - ((v903 + v902) | 0x638ECE808F9F7E7ALL) + 0x638ECE808F9F7E7ALL) ^ 0x4E813D995085522BLL, 8) + ((((v903 + v902) | 0x9C71317F70608185) - ((v903 + v902) | 0x638ECE808F9F7E7ALL) + 0x638ECE808F9F7E7ALL) ^ 0x4E813D995085522BLL ^ __ROR8__(v902, 61))) ^ 0xF4730B31AE70757BLL) >> v904) ^ v582;
  LODWORD(STACK[0x56F0]) = ((16 * v532) | (2 * (v532 & 3))) + ~(2 * (((16 * v532) | (2 * (v532 & 3))) & 0x1E ^ (2 * (v532 & 3))));
  LODWORD(STACK[0x52E0]) = ((v793 & 0xE0) >> 1) | (v793 << 7);
  v905 = *(v366 + (v699 & v852));
  STACK[0x5338] = v854;
  v906 = __ROR8__((((v905 + v854) | 0x13A2DAA2234D1979) - ((v905 + v854) | 0xEC5D255DDCB2E686) - 0x13A2DAA2234D197ALL) ^ 0xAB2ADB76C28A7A2ALL, 8);
  v907 = (((v905 + v854) | 0x13A2DAA2234D1979) - ((v905 + v854) | 0xEC5D255DDCB2E686) - 0x13A2DAA2234D197ALL) ^ 0xAB2ADB76C28A7A2ALL ^ __ROR8__(v905, 61);
  v908 = (v906 + v907) ^ 0x38C8B16AE7056877;
  v909 = v908 ^ __ROR8__(v907, 61);
  v910 = __ROR8__(v908, 8);
  v911 = (v910 + v909 - ((2 * (v910 + v909)) & 0x8A50AADE57FE9C94) - 0x3AD7AA90D400B1B6) ^ 0x20A8E412A73AAB1BLL;
  v912 = v911 ^ __ROR8__(v909, 61);
  v913 = __ROR8__(v911, 8);
  v914 = (v913 + v912 - ((2 * (v913 + v912)) & 0xF19E7DA57B2C5FCLL) + 0x78CF3ED2BD962FELL) ^ 0xE62D0EB6FA8C9B84;
  v915 = v914 ^ __ROR8__(v912, 61);
  v916 = __ROR8__(v914, 8);
  v917 = (((2 * (v916 + v915)) | 0x1469198F81B46EEELL) - (v916 + v915) - 0xA348CC7C0DA3777) ^ 0xD054C7CBC37888EELL;
  v918 = v917 ^ __ROR8__(v915, 61);
  v919 = __ROR8__(v917, 8);
  v920 = (((v919 + v918) | 0x3AF77D71A85496CALL) - ((v919 + v918) | 0xC508828E57AB6935) - 0x3AF77D71A85496CBLL) ^ 0xC0C29FBC636AA70DLL;
  v921 = v920 ^ __ROR8__(v918, 61);
  v922 = (__ROR8__(v920, 8) + v921) ^ 0xD2F00CE620E5D3AELL;
  v923 = v922 ^ __ROR8__(v921, 61);
  v924 = __ROR8__(v922, 8);
  LODWORD(v922) = LODWORD(STACK[0x4E20]) + 42 * v675;
  STACK[0x5348] = v871;
  LODWORD(v922) = v922 ^ v808 ^ (((((v924 + v923) | 0x322018491EF29E2FLL) - ((v924 + v923) | 0xCDDFE7B6E10D61D0) - 0x322018491EF29E30) ^ 0xC6531378B082EB54) >> v871);
  v925 = *(v366 + ((((v870 ^ 0xDDF7BAED) - 1673232851 + ((2 * v870) & 0xBBEF75D0)) & v699) & 0xFFFFFFFFFFFFFFF8));
  v926 = (((2 * (v925 + v889)) & 0x20B54ECB044DC846) - (v925 + v889) + 0x6FA5589A7DD91BDCLL) ^ 0xD72D594E9C1E788FLL;
  v927 = v926 ^ __ROR8__(v925, 61);
  v928 = (__ROR8__(v926, 8) + v927) ^ 0x38C8B16AE7056877;
  v929 = v928 ^ __ROR8__(v927, 61);
  v930 = __ROR8__(v928, 8);
  v931 = (((2 * (v930 + v929)) & 0xC4B5D275403E4FALL) - (v930 + v929) + 0x79DA516C55FE0D82) ^ 0x9C5AE011D93BE8D3;
  v932 = v931 ^ __ROR8__(v929, 61);
  v933 = __ROR8__(v931, 8);
  v934 = (((v933 + v932) & 0x86A3FC27197C699ALL ^ 0x8483D4011814010ALL) + ((v933 + v932) ^ 0x6A3429A621EB6EF4) - (((v933 + v932) ^ 0x6A3429A621EB6EF4) & 0x86A3FC27197C699ALL)) ^ 0xD3628DAE9C2FE14;
  v935 = v934 ^ __ROR8__(v932, 61);
  v936 = __ROR8__(v934, 8);
  v937 = __ROR8__((((2 * (v936 + v935)) | 0x9C124829A43C2A5CLL) - (v936 + v935) + 0x31F6DBEB2DE1EAD2) ^ 0x14696F18D1BCAAB7, 8);
  v938 = (((2 * (v936 + v935)) | 0x9C124829A43C2A5CLL) - (v936 + v935) + 0x31F6DBEB2DE1EAD2) ^ 0x14696F18D1BCAAB7 ^ __ROR8__(v935, 61);
  v939 = (v937 + v938) ^ 0xFA35E2CDCB3E31C7;
  v940 = v939 ^ __ROR8__(v938, 61);
  v941 = (__ROR8__(v939, 8) + v940) ^ 0xD2F00CE620E5D3AELL;
  v942 = v941 ^ __ROR8__(v940, 61);
  v943 = __ROR8__(v941, 8);
  LODWORD(v942) = ((((((2 * (v943 + v942)) | 0x493CDB2ECD1FBA58) - (v943 + v942) + 0x5B619268997022D4) ^ 0x50ED66A6C8FFA857) >> v904) ^ v582) * (-120 - 10 * (((v902 ^ 0x51) + 35) ^ (v902 - 108) ^ ((v902 ^ 0x31) - 61)));
  LODWORD(STACK[0x56E0]) = (((2 * LODWORD(STACK[0x5320])) & 4 | (2 * ((LODWORD(STACK[0x5320]) ^ 0xF) & 1)) | (16 * (LODWORD(STACK[0x5320]) ^ 0xF))) ^ 4) - ((32 * (LODWORD(STACK[0x5320]) ^ 0xF)) & 0x40);
  LODWORD(STACK[0x56C0]) = ((2 * (LODWORD(STACK[0x5328]) ^ 0xFFFFFFBF)) & 6 | (16 * (LODWORD(STACK[0x5328]) ^ 0xFFFFFFBF))) - 2 * (((2 * (LODWORD(STACK[0x5328]) ^ 0xFFFFFFBF)) & 6 | (16 * (LODWORD(STACK[0x5328]) ^ 0xFFFFFFBF)) & 0x26) ^ (2 * (LODWORD(STACK[0x5328]) ^ 0xFFFFFFBF)) & 2);
  v944 = *(v366 + (v699 & (v870 + 2050767128)));
  STACK[0x52E8] = v889;
  v945 = (v944 + v889) ^ 0xB88801D4E1C76353;
  v946 = v945 ^ __ROR8__(v944, 61);
  v947 = __ROR8__(v945, 8);
  v948 = __ROR8__((v947 + v946 - ((2 * (v947 + v946)) & 0x351C945C526BD948) + 0x1A8E4A2E2935ECA4) ^ 0x2246FB44CE3084D3, 8);
  v949 = (v947 + v946 - ((2 * (v947 + v946)) & 0x351C945C526BD948) + 0x1A8E4A2E2935ECA4) ^ 0x2246FB44CE3084D3 ^ __ROR8__(v946, 61);
  v950 = (((v948 + v949) | 0xD0DF990CB037FE90) - ((v948 + v949) | 0x2F2066F34FC8016FLL) + 0x2F2066F34FC8016FLL) ^ 0x355F28713CF21BC1;
  v951 = v950 ^ __ROR8__(v949, 61);
  v952 = (__ROR8__(v950, 8) + v951) ^ 0xE1A1FD5BD155F97ALL;
  v953 = v952 ^ __ROR8__(v951, 61);
  v954 = (__ROR8__(v952, 8) + v953) ^ 0xDA604B0C03A2BF99;
  v955 = v954 ^ __ROR8__(v953, 61);
  v956 = (__ROR8__(v954, 8) + v955) ^ 0xFA35E2CDCB3E31C7;
  v957 = v956 ^ __ROR8__(v955, 61);
  v958 = (__ROR8__(v956, 8) + v957) ^ 0xD2F00CE620E5D3AELL;
  v959 = v958 ^ __ROR8__(v957, 61);
  v960 = __ROR8__(v958, 8);
  v961 = v960 + v959 - ((2 * (v960 + v959)) & 0x8B1EE5E65E0E58BALL);
  LODWORD(STACK[0x5680]) = ((16 * v829) ^ 0xAC) & (~(2 * v829) | 0xFFFFFFFB) & 0xFFFFFFFD | (2 * (v829 & 1));
  LODWORD(v602) = v922 ^ 0xFFFFFF8E;
  LODWORD(v716) = (8 * (v922 ^ 0xFFFFFF8E)) & 0x10 | (8 * (v922 & 1));
  LOBYTE(v922) = v638 + 15;
  LODWORD(v675) = v638[15];
  v962 = (v638 + 15) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v886) = ((v638 + 15) & 0xDD50B180 | 0x22AF4E7F) + 2050767130 + ((v638 + 15) & 0x22AF4E78 | 0xDD50B181);
  LODWORD(v638) = STACK[0x5740];
  v963 = *(v366 + (LODWORD(STACK[0x5740]) & v886));
  v964 = __ROR8__(v962, 8);
  v965 = (v963 + v964 - ((2 * (v963 + v964)) & 0xC847707C9AA8B090) + 0x6423B83E4D545848) ^ 0xDCABB9EAAC933B1BLL;
  v966 = v965 ^ __ROR8__(v963, 61);
  v967 = __ROR8__(v965, 8);
  v968 = (v967 + v966 - ((2 * (v967 + v966)) & 0x161D68F9B666CF54) - 0x74F14B8324CC9856) ^ 0xB3C605163C360FDDLL;
  v969 = v968 ^ __ROR8__(v966, 61);
  v970 = __ROR8__(v968, 8);
  v971 = (((v970 + v969) | 0xA6C04A9639FB6C0) - ((v970 + v969) | 0xF593FB569C60493FLL) - 0xA6C04A9639FB6C1) ^ 0xEFECB5D4EF5A5391;
  v972 = v971 ^ __ROR8__(v969, 61);
  v973 = (__ROR8__(v971, 8) + v972) ^ 0xE1A1FD5BD155F97ALL;
  v974 = v973 ^ __ROR8__(v972, 61);
  v975 = __ROR8__(v973, 8);
  v976 = (((2 * (v975 + v974)) & 0x5BCAFE99BDDE5C4) - (v975 + v974) + 0x7D21A80B32110D1DLL) ^ 0xA741E30731B3B284;
  v977 = v976 ^ __ROR8__(v974, 61);
  v978 = __ROR8__(v976, 8);
  v979 = (v978 + v977 - ((2 * (v978 + v977)) & 0x6FB1C37B4982EBACLL) + 0x37D8E1BDA4C175D6) ^ 0xCDED03706FFF4411;
  v980 = v979 ^ __ROR8__(v977, 61);
  v981 = __ROR8__(v979, 8);
  v982 = (v981 + v980 - ((2 * (v981 + v980)) & 0x8318C619FDA5B7E2) - 0x3E739CF3012D240FLL) ^ 0x137C6FEADE37085FLL;
  v983 = 8 * (v922 & 7);
  LODWORD(v922) = (((__ROR8__(v982, 8) + (v982 ^ __ROR8__(v980, 61))) ^ 0xF4730B31AE70757BLL) >> v983) ^ v675;
  LODWORD(v980) = LODWORD(STACK[0x4FA0]) + 102 * (((v922 ^ 0x4F) + 22) ^ ((v922 ^ 0x5D) + 8) ^ ((v922 ^ 0x12) - 55));
  STACK[0x52F8] = v904;
  LODWORD(v922) = v582 ^ (((v961 + 0x458F72F32F072C5DLL) ^ 0xB1FC79C281775926) >> v904) ^ 0x63 ^ (v942 - ((2 * v942) & 0xFFFFFFEF) - 10);
  v984 = *(v366 + (v638 & ((v962 ^ 0x8837A09B) - 234579841 + ((2 * v962) & 0x106F4130))));
  v985 = __ROR8__((v984 + v964) ^ 0xB88801D4E1C76353, 8);
  v986 = (v984 + v964) ^ 0xB88801D4E1C76353 ^ __ROR8__(v984, 61);
  v987 = (v985 + v986) ^ 0x38C8B16AE7056877;
  v988 = v987 ^ __ROR8__(v986, 61);
  v989 = __ROR8__(v987, 8);
  v990 = (((v989 + v988) | 0x237FE6DAA8689C99) - ((v989 + v988) | 0xDC80192557976366) - 0x237FE6DAA8689C9ALL) ^ 0xC6FF57A724AD79C8;
  v991 = v990 ^ __ROR8__(v988, 61);
  v992 = __ROR8__(v990, 8);
  v993 = (((2 * ((v992 + v991) ^ 0x9E11F74492CE61C9)) & 0xAD0BE75968821918) - ((v992 + v991) ^ 0x9E11F74492CE61C9) - 0x5685F3ACB4410C8DLL) ^ 0xD6CA064C08256BC0;
  v994 = v993 ^ __ROR8__(v991, 61);
  v995 = (__ROR8__(v993, 8) + v994) ^ 0xDA604B0C03A2BF99;
  v996 = v995 ^ __ROR8__(v994, 61);
  v997 = (__ROR8__(v995, 8) + v996) ^ 0xFA35E2CDCB3E31C7;
  v998 = v997 ^ __ROR8__(v996, 61);
  v999 = (__ROR8__(v997, 8) + v998) ^ 0xD2F00CE620E5D3AELL;
  v1000 = v999 ^ __ROR8__(v998, 61);
  v1001 = __ROR8__(v999, 8);
  v1002 = *(v850 + 12);
  v850 += 12;
  v1003 = v850 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v904) = 2 * (v850 & 0xFFFFFFF8);
  LODWORD(STACK[0x52D0]) = v904;
  v1004 = *(v366 + (v638 & ((v850 & 0xFFFFFFF8 ^ 0xDC7956E4) - 1648172490 + (v904 & 0xB8F2ADC0))));
  v1005 = __ROR8__(v850 & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(v999) = v980 * ((((v1001 + v1000 - ((2 * (v1001 + v1000)) & 0x2BDF126B1B3C3906) + 0x15EF89358D9E1C83) ^ 0xE19C820423EE69F8) >> v983) ^ v675);
  v1006 = (((2 * (v1004 + v1005)) | 0x7370665378754F46) - (v1004 + v1005) - 0x39B83329BC3AA7A3) ^ 0x813032FD5DFDC4F0;
  v1007 = v1006 ^ __ROR8__(v1004, 61);
  v1008 = __ROR8__(v1006, 8);
  v1009 = (((v1008 + v1007) | 0xFB8E038993BC308CLL) - ((v1008 + v1007) | 0x471FC766C43CF73) + 0x471FC766C43CF73) ^ 0xC346B2E374B958FBLL;
  v1010 = v1009 ^ __ROR8__(v1007, 61);
  v1011 = (__ROR8__(v1009, 8) + v1010) ^ 0xE580B17D8CC5E551;
  v1012 = v1011 ^ __ROR8__(v1010, 61);
  v1013 = (__ROR8__(v1011, 8) + v1012) ^ 0xE1A1FD5BD155F97ALL;
  v1014 = v1013 ^ __ROR8__(v1012, 61);
  v1015 = (__ROR8__(v1013, 8) + v1014) ^ 0xDA604B0C03A2BF99;
  v1016 = v1015 ^ __ROR8__(v1014, 61);
  v1017 = (__ROR8__(v1015, 8) + v1016) ^ 0xFA35E2CDCB3E31C7;
  v1018 = v1017 ^ __ROR8__(v1016, 61);
  v1019 = (__ROR8__(v1017, 8) + v1018) ^ 0xD2F00CE620E5D3AELL;
  v1020 = 8 * (v850 & 7);
  LODWORD(v985) = (((__ROR8__(v1019, 8) + (v1019 ^ __ROR8__(v1018, 61))) ^ 0xF4730B31AE70757BLL) >> v1020) ^ v1002;
  LODWORD(v985) = ((v985 ^ 0xFFFFFFBE) - 35) ^ (v985 - 109) ^ ((v985 ^ 0x4E) + 45);
  v1021 = *(v366 + (v638 & (v1003 + 2050767130)));
  v1022 = (v1021 + v1005) ^ 0xB88801D4E1C76353;
  v1023 = v1022 ^ __ROR8__(v1021, 61);
  v1024 = (__ROR8__(v1022, 8) + v1023) ^ 0x38C8B16AE7056877;
  v1025 = v1024 ^ __ROR8__(v1023, 61);
  v1026 = __ROR8__(v1024, 8);
  v1027 = (v1026 + v1025 - ((2 * (v1026 + v1025)) & 0xBEA1A56620BE7364) + 0x5F50D2B3105F39B2) ^ 0xBAD063CE9C9ADCE3;
  v1028 = v1027 ^ __ROR8__(v1025, 61);
  v1029 = (__ROR8__(v1027, 8) + v1028) ^ 0xE1A1FD5BD155F97ALL;
  v1030 = v1029 ^ __ROR8__(v1028, 61);
  v1031 = __ROR8__(v1029, 8);
  v1032 = (((2 * (v1031 + v1030)) & 0x8814AA61042FC50ELL) - (v1031 + v1030) + 0x3BF5AACF7DE81D78) ^ 0xE195E1C37E4AA2E1;
  v1033 = v1032 ^ __ROR8__(v1030, 61);
  v1034 = (__ROR8__(v1032, 8) + v1033) ^ 0xFA35E2CDCB3E31C7;
  v1035 = v1034 ^ __ROR8__(v1033, 61);
  v1036 = __ROR8__(v1034, 8);
  v1037 = (((2 * ((v1036 + v1035) ^ 0x272251274E234BCELL)) | 0x1E3529C8898C72F8) - ((v1036 + v1035) ^ 0x272251274E234BCELL) - 0xF1A94E444C6397CLL) ^ 0xFAC8C9252A00A11CLL;
  v1038 = v1037 ^ __ROR8__(v1035, 61);
  v1039 = __ROR8__(v1037, 8);
  LODWORD(v1038) = (((((2 * (v1039 + v1038)) | 0x4A8D2A9CC591FC4CLL) - (v1039 + v1038) + 0x5AB96AB19D3701DALL) ^ 0x51359E7FCCB88B5DLL) >> v1020) ^ v1002;
  LODWORD(v1038) = ((v1038 ^ 0xFFFFFF86) + 68) ^ ((v1038 ^ 0xFFFFFF92) + 88) ^ ((v1038 ^ 0x14) - 46);
  LODWORD(v985) = (v1038 + 80) * (v985 - 5) + 61 * (50 * v985 + 74 * v1038);
  STACK[0x5328] = v962;
  v1040 = *(v366 + (v638 & (v962 + 2050767130)));
  STACK[0x5320] = v964;
  v1041 = (v1040 + v964) ^ 0xB88801D4E1C76353;
  v1042 = v1041 ^ __ROR8__(v1040, 61);
  v1043 = (__ROR8__(v1041, 8) + v1042) ^ 0x38C8B16AE7056877;
  v1044 = v1043 ^ __ROR8__(v1042, 61);
  v1045 = (__ROR8__(v1043, 8) + v1044) ^ 0xE580B17D8CC5E551;
  v1046 = v1045 ^ __ROR8__(v1044, 61);
  v1047 = __ROR8__(v1045, 8);
  v1048 = (((2 * (v1047 + v1046)) & 0xD53C2F1D3A6FA6F6) - (v1047 + v1046) - 0x6A9E178E9D37D37CLL) ^ 0x74C0152AB39DD5FELL;
  v1049 = v1048 ^ __ROR8__(v1046, 61);
  v1050 = __ROR8__(v1048, 8);
  v1051 = (((v1050 + v1049) | 0x6C5C47CA2307EA6ELL) - ((v1050 + v1049) | 0x93A3B835DCF81591) - 0x6C5C47CA2307EA6FLL) ^ 0xB63C0CC620A555F7;
  v1052 = v1051 ^ __ROR8__(v1049, 61);
  v1053 = (__ROR8__(v1051, 8) + v1052) ^ 0xFA35E2CDCB3E31C7;
  v1054 = v1053 ^ __ROR8__(v1052, 61);
  v1055 = (__ROR8__(v1053, 8) + v1054) ^ 0xD2F00CE620E5D3AELL;
  v1056 = v1055 ^ __ROR8__(v1054, 61);
  v1057 = __ROR8__(v1055, 8);
  v1058 = ((v1057 + v1056) | 0x5638FB9197F6A805) - ((v1057 + v1056) | 0xA9C7046E680957FALL);
  LODWORD(v1055) = (16 * LODWORD(STACK[0x5318])) | (2 * (STACK[0x5318] & 3));
  LODWORD(STACK[0x5218]) = v1055 - ((2 * v1055) & 0xFFFFFFDF);
  LODWORD(v904) = LODWORD(STACK[0x52E0]) >> 4;
  LODWORD(STACK[0x5228]) = (16 * v922) | (2 * (v922 & 3));
  STACK[0x52E0] = v1003;
  v1059 = *(v366 + ((((v1003 | 0x763B2519) + 2050767130 + (v1003 | 0x89C4DAE6) + 1) & v699) & 0xFFFFFFFFFFFFFFF8));
  STACK[0x52C8] = v1005;
  v1060 = __ROR8__((v1059 + v1005) ^ 0xB88801D4E1C76353, 8);
  v1061 = (v1059 + v1005) ^ 0xB88801D4E1C76353 ^ __ROR8__(v1059, 61);
  v1062 = (((2 * (v1060 + v1061)) & 0x280CF1E7E653E12CLL) - (v1060 + v1061) - 0x140678F3F329F097) ^ 0xD3313666EBD3671ELL;
  v1063 = v1062 ^ __ROR8__(v1061, 61);
  v1064 = (__ROR8__(v1062, 8) + v1063) ^ 0xE580B17D8CC5E551;
  v1065 = v1064 ^ __ROR8__(v1063, 61);
  v1066 = __ROR8__(v1064, 8);
  v1067 = (((2 * (v1066 + v1065)) & 0x8A136C37E1743C54) - (v1066 + v1065) + 0x3AF649E40F45E1D5) ^ 0xDB57B4BFDE1018AFLL;
  v1068 = v1067 ^ __ROR8__(v1065, 61);
  v1069 = __ROR8__(v1067, 8);
  v1070 = (v1069 + v1068 - ((2 * (v1069 + v1068)) & 0x1AA07E96375AF71CLL) - 0x72AFC0B4E4528472) ^ 0x57307447180FC417;
  v1071 = v1070 ^ __ROR8__(v1068, 61);
  v1072 = __ROR8__(v1070, 8);
  v1073 = (((v1072 + v1071) | 0x3E141E82C53070B3) - ((v1072 + v1071) | 0xC1EBE17D3ACF8F4CLL) - 0x3E141E82C53070B4) ^ 0xC421FC4F0E0E4174;
  v1074 = v1073 ^ __ROR8__(v1071, 61);
  v1075 = __ROR8__(v1073, 8);
  v1076 = (((2 * (v1075 + v1074)) & 0x9508C7695790B8D2) - (v1075 + v1074) - 0x4A8463B4ABC85C6ALL) ^ 0x678B90AD74D27038;
  STACK[0x52D8] = v1020;
  LODWORD(v1074) = v1002 ^ (((__ROR8__(v1076, 8) + (v1076 ^ __ROR8__(v1074, 61))) ^ 0xF4730B31AE70757BLL) >> v1020) ^ 0x35 ^ (42 * (v985 + 34) - ((84 * (v985 + 34)) & 0xFFFFFFD8) - 20);
  STACK[0x5318] = v983;
  LODWORD(v829) = v675 ^ (((v1058 - 0x5638FB9197F6A806) ^ 0xA24BF0A03986DD7ELL) >> v983) ^ 0x6F ^ (v999 - ((2 * v999) & 0xFFFFFFC7) + 98);
  LODWORD(STACK[0x5200]) = (v716 >> 2) & 0xFFFFFFF7 | (16 * v602) | (8 * ((v602 >> 1) & 1));
  LODWORD(v985) = STACK[0x5760];
  LODWORD(STACK[0x52B8]) = HIBYTE(LODWORD(STACK[0x5760]));
  LODWORD(v959) = BYTE3(v985) ^ 0x27 ^ (38 * BYTE3(v985) * BYTE3(v985));
  LODWORD(STACK[0x5130]) = (16 * (v904 ^ 0xA ^ (102 * v904 * v904))) | (2 * ((v904 ^ 0xA ^ (102 * v904 * v904)) & 3));
  LODWORD(STACK[0x51A0]) = ((2 * v1074) & 6 | (16 * v1074)) - 2 * (((2 * v1074) & 6 | (16 * v1074) & 0x26) ^ (2 * v1074) & 2);
  LODWORD(v870) = STACK[0x5790];
  LODWORD(v1076) = STACK[0x5780];
  LODWORD(v942) = (26 * WORD1(v1076) * WORD1(v1076)) ^ WORD1(v1076);
  LODWORD(STACK[0x5120]) = ((16 * v959) | (2 * (v959 & 3))) - ((2 * ((16 * v959) | (2 * (v959 & 3)))) & 0x88888888);
  LODWORD(v959) = (158 * (v1076 >> 8) * (v1076 >> 8)) ^ (v1076 >> 8);
  LODWORD(v904) = ((-122 * BYTE2(v870) * BYTE2(v870)) ^ BYTE2(v870)) ^ 0x36;
  LODWORD(STACK[0x5180]) = ((16 * v904) | (2 * (v904 & 3))) + ((32 * v904) & 0x80);
  LODWORD(STACK[0x51C8]) = ((16 * v829) ^ 0x2A) & (~(2 * v829) | 0xFFFFFFFD) & 0xFFFFFFFB | (4 * ((v829 >> 1) & 1));
  LODWORD(STACK[0x52B0]) = BYTE3(v870);
  LODWORD(v904) = BYTE3(v870) ^ (-58 * BYTE3(v870) * BYTE3(v870)) ^ 2;
  LODWORD(STACK[0x51B0]) = ((2 * (((2 * v904) & 6 | (16 * v904) & 0x46) ^ ((2 * v904) | 0x7B))) ^ 0xB) + ((2 * v904) & 6 | (16 * v904));
  LODWORD(STACK[0x51A8]) = ((16 * v959) | (2 * (v959 & 3))) - ((2 * ((16 * v959) | (2 * (v959 & 3)))) & 0x99999999);
  LODWORD(v999) = STACK[0x5770];
  LODWORD(v959) = (54 * WORD1(v999) * WORD1(v999)) ^ WORD1(v999);
  LODWORD(STACK[0x5230]) = LODWORD(STACK[0x5770]) >> 8;
  LODWORD(v904) = (182 * (v999 >> 8) * (v999 >> 8)) ^ (v999 >> 8);
  LODWORD(STACK[0x5140]) = ((16 * v904) | (2 * (v904 & 3))) - 32 * v904;
  LODWORD(v904) = (166 * (v870 >> 8) * (v870 >> 8)) ^ (v870 >> 8);
  LODWORD(v1074) = (16 * ((150 * v999 * v999) ^ v999)) | (2 * (((150 * v999 * v999) ^ v999) & 3));
  LODWORD(STACK[0x5168]) = v1074 - ((2 * v1074) & 0x66666666);
  LODWORD(v829) = (110 * WORD1(v985) * WORD1(v985)) ^ WORD1(v985);
  LODWORD(STACK[0x51C0]) = ((16 * v942) | (2 * (v942 & 3))) - ((32 * v942) & 0x40);
  LODWORD(STACK[0x5178]) = ((16 * v904) | (2 * (v904 & 3))) - ((2 * ((16 * v904) | (2 * (v904 & 3)))) & 0x3C);
  LODWORD(STACK[0x5128]) = ((2 * (((2 * v959) & 4 | (16 * v959) & 0x44 | 1) ^ ((2 * v959) | 0x7B))) ^ 0xB) + ((2 * v959) & 6 | (16 * v959));
  LODWORD(STACK[0x5268]) = (46 * (v985 >> 8) * (v985 >> 8)) ^ (v985 >> 8);
  LODWORD(v942) = ((-78 * v985 * v985) ^ v985) ^ 0x21;
  LODWORD(STACK[0x5190]) = ((16 * v942) | (2 * (v942 & 3))) + (~(2 * ((16 * v942) | (2 * (v942 & 3)))) | 0xDB);
  LODWORD(STACK[0x5198]) = ((16 * v829) | (2 * (v829 & 3))) - ((2 * ((16 * v829) | (2 * (v829 & 3)))) & 0x3C);
  LODWORD(v942) = ((-70 * v1076 * v1076) ^ v1076) ^ 0x5A;
  LODWORD(STACK[0x5170]) = ((2 * v942) & 6 | (16 * v942)) - 2 * (((2 * v942) & 6 | (16 * v942)) ^ (2 * v942) & 4);
  LODWORD(STACK[0x5298]) = BYTE3(v1076);
  LODWORD(v1074) = BYTE3(v1076) ^ 0x57 ^ (-86 * BYTE3(v1076) * BYTE3(v1076));
  LODWORD(STACK[0x52A0]) = BYTE3(v999);
  LODWORD(v942) = BYTE3(v999) ^ (2 * ((3 * BYTE3(v999) * BYTE3(v999)) & 0x7F)) ^ 0x7E;
  v1077 = STACK[0x53B8];
  v1079 = *(STACK[0x53B8] + 9);
  v1078 = STACK[0x53B8] + 9;
  LODWORD(STACK[0x5188]) = ((16 * v942) | (2 * (v942 & 3))) - ((2 * ((16 * v942) | (2 * (v942 & 3)))) & 0x78);
  v1080 = v1078 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v983) = v638;
  v1081 = *(v366 + (v638 & (-1414602269 * (((-1128043573 * (v1078 & 0xFFFFFFF8)) | 0x3311CF9B) + ((-1128043573 * (v1078 & 0xFFFFFFF8)) | 0xCCEE3065)) + 2050767130)));
  v1082 = __ROR8__(v1078 & 0xFFFFFFFFFFFFFFF8, 8);
  v1083 = __ROR8__((v1081 + v1082) ^ 0xB88801D4E1C76353, 8);
  v1084 = (v1081 + v1082) ^ 0xB88801D4E1C76353 ^ __ROR8__(v1081, 61);
  v1085 = (v1083 + v1084) ^ 0x38C8B16AE7056877;
  v1086 = v1085 ^ __ROR8__(v1084, 61);
  v1087 = (__ROR8__(v1085, 8) + v1086) ^ 0xE580B17D8CC5E551;
  v1088 = v1087 ^ __ROR8__(v1086, 61);
  v1089 = __ROR8__(v1087, 8);
  v1090 = __ROR8__((((2 * (v1089 + v1088)) | 0x1788E81600990B18) - (v1089 + v1088) + 0x743B8BF4FFB37A74) ^ 0x6A658950D1197CF6, 8);
  v1091 = (((2 * (v1089 + v1088)) | 0x1788E81600990B18) - (v1089 + v1088) + 0x743B8BF4FFB37A74) ^ 0x6A658950D1197CF6 ^ __ROR8__(v1088, 61);
  v1092 = (((2 * (v1090 + v1091)) & 0xDB2DDBD5A4CF4D42) - (v1090 + v1091) - 0x6D96EDEAD267A6A2) ^ 0x480959192E3AE6C7;
  v1093 = v1092 ^ __ROR8__(v1091, 61);
  v1094 = (__ROR8__(v1092, 8) + v1093) ^ 0xFA35E2CDCB3E31C7;
  v1095 = v1094 ^ __ROR8__(v1093, 61);
  v1096 = (__ROR8__(v1094, 8) + v1095) ^ 0xD2F00CE620E5D3AELL;
  v1097 = __ROR8__(v1096, 8);
  v1098 = __ROR8__(v1095, 61);
  v1099 = 8 * (v1078 & 7);
  LODWORD(v1095) = (((((2 * (v1097 + (v1096 ^ v1098))) & 0x3BCF8E1A3891D1D4) - (v1097 + (v1096 ^ v1098)) - 0x1DE7C70D1C48E8EBLL) ^ 0x166B33C34DC7626ELL) >> v1099) ^ v1079;
  LODWORD(v1096) = ((v1095 ^ 0x69) + 124) ^ ((v1095 ^ 0xFFFFFFC8) - 37) ^ ((v1095 ^ 0xFFFFFFA1) - 76);
  LODWORD(v1095) = 2 * (v1078 & 0xFFFFFFF8);
  v1100 = *(v366 + (v638 & ((v1078 & 0xFFFFFFF8 ^ 0x50A4A410) + 697799946 + (v1095 & 0xA1494820))));
  v1101 = __ROR8__((v1100 + v1082) ^ 0xB88801D4E1C76353, 8);
  v1102 = (v1100 + v1082) ^ 0xB88801D4E1C76353 ^ __ROR8__(v1100, 61);
  v1103 = (v1101 + v1102 - ((2 * (v1101 + v1102)) & 0x4F78A953A613252ELL) + 0x27BC54A9D3099297) ^ 0x1F74E5C3340CFAE0;
  v1104 = v1103 ^ __ROR8__(v1102, 61);
  v1105 = (__ROR8__(v1103, 8) + v1104) ^ 0xE580B17D8CC5E551;
  v1106 = v1105 ^ __ROR8__(v1104, 61);
  v1107 = __ROR8__(v1105, 8);
  v1108 = (((v1107 + v1106) | 0x823136C43142537CLL) - ((v1107 + v1106) | 0x7DCEC93BCEBDAC83) + 0x7DCEC93BCEBDAC83) ^ 0x6390CB9FE017AA06;
  v1109 = v1108 ^ __ROR8__(v1106, 61);
  v1110 = (__ROR8__(v1108, 8) + v1109) ^ 0xDA604B0C03A2BF99;
  v1111 = v1110 ^ __ROR8__(v1109, 61);
  v1112 = __ROR8__(v1110, 8);
  v1113 = __ROR8__((((v1112 + v1111) | 0xF6CDE09A4D94B36FLL) - ((v1112 + v1111) | 0x9321F65B26B4C90) + 0x9321F65B26B4C90) ^ 0xCF8025786AA82A8, 8);
  v1114 = (((v1112 + v1111) | 0xF6CDE09A4D94B36FLL) - ((v1112 + v1111) | 0x9321F65B26B4C90) + 0x9321F65B26B4C90) ^ 0xCF8025786AA82A8 ^ __ROR8__(v1111, 61);
  v1115 = (((2 * (v1113 + v1114)) | 0xCD66935AEB4295C0) - (v1113 + v1114) - 0x66B349AD75A14AE0) ^ 0xB443454B5544994ELL;
  v1116 = v1115 ^ __ROR8__(v1114, 61);
  v1117 = __ROR8__(v1115, 8);
  LODWORD(v1116) = (((((2 * (v1117 + v1116)) & 0x31FAD52EED19973ELL) - (v1117 + v1116) - 0x18FD6A97768CCBA0) ^ 0x13719E592703411BLL) >> v1099) ^ v1079;
  LODWORD(v1116) = ((v1116 ^ 0x7F) + 113) ^ ((v1116 ^ 0xFFFFFFF7) - 7) ^ ((v1116 ^ 0xFFFFFF88) - 120);
  STACK[0x5288] = v1080;
  v1118 = *(v366 + (v699 & ((v1080 ^ 0x4759B954) - 1047137679 + (v1095 | 0x714C8D53))));
  LODWORD(v1096) = (v1116 + 107) * (v1096 + 63) + 105 * (-67 * v1096 + 126 * v1116);
  STACK[0x5278] = v1082;
  v1119 = (((2 * (v1118 + v1082)) & 0x95131DB814918AA6) - (v1118 + v1082) - 0x4A898EDC0A48C554) ^ 0xDFE70F7147059FFLL;
  v1120 = v1119 ^ __ROR8__(v1118, 61);
  v1121 = __ROR8__(v1119, 8);
  v1122 = (((2 * (v1121 + v1120)) | 0x3E8DBA550AB4200CLL) - (v1121 + v1120) + 0x60B922D57AA5EFFALL) ^ 0xA78E6C40625F7871;
  v1123 = v1122 ^ __ROR8__(v1120, 61);
  v1124 = (__ROR8__(v1122, 8) + v1123) ^ 0xE580B17D8CC5E551;
  v1125 = v1124 ^ __ROR8__(v1123, 61);
  v1126 = __ROR8__(v1124, 8);
  v1127 = (((2 * (v1126 + v1125)) & 0x9F9C0DB3DBDDFFF8) - (v1126 + v1125) - 0x4FCE06D9EDEEFFFDLL) ^ 0x5190047DC344F979;
  v1128 = v1127 ^ __ROR8__(v1125, 61);
  v1129 = __ROR8__(v1127, 8);
  v1130 = (((v1129 + v1128) & 0xFF48E7BC0FCFD5BBLL ^ 0xD640041C09C091B8) + ((v1129 + v1128) & 0xB71843F0302A44 ^ 0x931801F0100005) - 1) ^ 0xCB35711FA722E25;
  v1131 = v1130 ^ __ROR8__(v1128, 61);
  v1132 = __ROR8__(v1130, 8);
  v1133 = (((v1132 + v1131) | 0x37A886B692C04253) - ((v1132 + v1131) | 0xC85779496D3FBDACLL) - 0x37A886B692C04254) ^ 0xCD9D647B59FE7394;
  v1134 = v1133 ^ __ROR8__(v1131, 61);
  v1135 = (__ROR8__(v1133, 8) + v1134) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v1096) = LODWORD(STACK[0x4E28]) - 102 * v1096;
  LODWORD(v716) = v1077[11];
  v1136 = (v1077 + 11) & 0xFFFFFFFFFFFFFFF8;
  v1137 = *(v366 + (v638 & ((v1136 ^ 0x7501418F) + 87750539 + ((2 * v1136) & 0xEA028310))));
  v1138 = __ROR8__(v1136, 8);
  v1139 = (v1137 + v1138) ^ 0xB88801D4E1C76353;
  v1140 = v1139 ^ __ROR8__(v1137, 61);
  v1141 = __ROR8__(v1139, 8);
  v1142 = (v1141 + v1140 - ((2 * (v1141 + v1140)) & 0x691F33AE53090EFCLL) - 0x4B706628D67B7882) ^ 0x8C4728BDCE81EF09;
  v1143 = v1142 ^ __ROR8__(v1140, 61);
  v1144 = (__ROR8__(v1142, 8) + v1143) ^ 0xE580B17D8CC5E551;
  v1145 = v1144 ^ __ROR8__(v1143, 61);
  v1146 = __ROR8__(v1144, 8);
  v1147 = __ROR8__((((2 * (v1146 + v1145)) & 0x101C6FB2D857BBD0) - (v1146 + v1145) + 0x77F1C82693D42217) ^ 0x9650357D4281DB6DLL, 8);
  v1148 = (((2 * (v1146 + v1145)) & 0x101C6FB2D857BBD0) - (v1146 + v1145) + 0x77F1C82693D42217) ^ 0x9650357D4281DB6DLL ^ __ROR8__(v1145, 61);
  v1149 = (((2 * (v1147 + v1148)) | 0x9A196AF9557FF8FCLL) - (v1147 + v1148) - 0x4D0CB57CAABFFC7ELL) ^ 0x976CFE70A91D43E7;
  v1150 = v1149 ^ __ROR8__(v1148, 61);
  v1151 = __ROR8__(v1149, 8);
  v1152 = (((2 * (v1151 + v1150)) & 0x433C73636ED3A190) - (v1151 + v1150) - 0x219E39B1B769D0C9) ^ 0x2454248383A81EF0;
  v1153 = v1152 ^ __ROR8__(v1150, 61);
  v1154 = __ROR8__(v1152, 8);
  v1155 = 8 * ((v1077 + 11) & 7);
  LODWORD(v1115) = (((__ROR8__((((2 * (v1154 + v1153)) | 0x61294FB772EFCDACLL) - (v1154 + v1153) - 0x3094A7DBB977E6D6) ^ 0xE264AB3D99923578, 8) + ((((2 * (v1154 + v1153)) | 0x61294FB772EFCDACLL) - (v1154 + v1153) - 0x3094A7DBB977E6D6) ^ 0xE264AB3D99923578 ^ __ROR8__(v1153, 61))) ^ 0xF4730B31AE70757BLL) >> v1155) ^ v716;
  LODWORD(v1153) = ((v1115 ^ 0x1F) - 66) ^ ((v1115 ^ 0xFFFFFFF3) + 82) ^ ((v1115 ^ 0xFFFFFFEC) + 79);
  STACK[0x5270] = v1136;
  v1156 = (v1136 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v1157 = *(v366 + (v811 & v1156));
  v1158 = __ROR8__((v1157 + v1138) ^ 0xB88801D4E1C76353, 8);
  v1159 = (v1157 + v1138) ^ 0xB88801D4E1C76353 ^ __ROR8__(v1157, 61);
  v1160 = (v1158 + v1159) ^ 0x38C8B16AE7056877;
  v1161 = v1160 ^ __ROR8__(v1159, 61);
  v1162 = (__ROR8__(v1160, 8) + v1161) ^ 0xE580B17D8CC5E551;
  v1163 = v1162 ^ __ROR8__(v1161, 61);
  v1164 = __ROR8__(v1162, 8);
  v1165 = __ROR8__((v1164 + v1163 - ((2 * (v1164 + v1163)) & 0xDAD3C2599816708ALL) - 0x12961ED333F4C7BBLL) ^ 0xCC81C771D5EC13FLL, 8);
  v1166 = (v1164 + v1163 - ((2 * (v1164 + v1163)) & 0xDAD3C2599816708ALL) - 0x12961ED333F4C7BBLL) ^ 0xCC81C771D5EC13FLL ^ __ROR8__(v1163, 61);
  v1167 = (v1165 + v1166) ^ 0xDA604B0C03A2BF99;
  v1168 = v1167 ^ __ROR8__(v1166, 61);
  v1169 = (__ROR8__(v1167, 8) + v1168) ^ 0xFA35E2CDCB3E31C7;
  v1170 = v1169 ^ __ROR8__(v1168, 61);
  v1171 = (__ROR8__(v1169, 8) + v1170) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v1170) = (((__ROR8__(v1171, 8) + (v1171 ^ __ROR8__(v1170, 61))) ^ 0xF4730B31AE70757BLL) >> v1155) ^ v716;
  LODWORD(v1170) = ((v1170 ^ 0xFFFFFFF8) - 54) ^ (v1170 + 2) ^ ((v1170 ^ 0xFFFFFFC8) - 6);
  LODWORD(v1153) = (v1153 + 118) * (v1170 + 58) + 19 * (29 * v1170 + 28 * v1153);
  LODWORD(v1170) = ((-58 * v870 * v870) ^ v870) ^ 0xBA;
  LODWORD(STACK[0x5138]) = ((16 * v1170) | (2 * (v1170 & 3))) + (~(2 * ((16 * v1170) | (2 * (v1170 & 3)))) | 0x53);
  LODWORD(v1170) = v1077[13];
  v1172 = (v1077 + 13) & 0xFFFFFFFFFFFFFFF8;
  v1173 = *(v366 + ((((v1172 ^ 0x89C27DAB) + 67020497 + ((2 * v1172) | 0xEC7B04A9) + 4085) & v811) & 0xFFFFFFFFFFFFFFF8));
  v1174 = __ROR8__(v1172, 8);
  v1175 = (v1173 + v1174) ^ 0xB88801D4E1C76353;
  v1176 = v1175 ^ __ROR8__(v1173, 61);
  v1177 = __ROR8__(v1175, 8);
  v1178 = __ROR8__((((2 * ((v1177 + v1176) ^ 0xA50794E5547CC49ALL)) & 0xA2BCFD2858BF7A2ELL) - ((v1177 + v1176) ^ 0xA50794E5547CC49ALL) - 0x515E7E942C5FBD18) ^ 0x336EA4E460D9EE05, 8);
  v1179 = (((2 * ((v1177 + v1176) ^ 0xA50794E5547CC49ALL)) & 0xA2BCFD2858BF7A2ELL) - ((v1177 + v1176) ^ 0xA50794E5547CC49ALL) - 0x515E7E942C5FBD18) ^ 0x336EA4E460D9EE05 ^ __ROR8__(v1176, 61);
  v1180 = (v1178 + v1179) ^ 0xE580B17D8CC5E551;
  v1181 = v1180 ^ __ROR8__(v1179, 61);
  v1182 = (__ROR8__(v1180, 8) + v1181) ^ 0xE1A1FD5BD155F97ALL;
  v1183 = v1182 ^ __ROR8__(v1181, 61);
  v1184 = (__ROR8__(v1182, 8) + v1183) ^ 0xDA604B0C03A2BF99;
  v1185 = v1184 ^ __ROR8__(v1183, 61);
  v1186 = __ROR8__(v1184, 8);
  v1187 = (((2 * (v1186 + v1185)) | 0x6C3DC475A29EC942) - (v1186 + v1185) + 0x49E11DC52EB09B5FLL) ^ 0x4C2B00F71A715566;
  v1188 = v1187 ^ __ROR8__(v1185, 61);
  v1189 = (__ROR8__(v1187, 8) + v1188) ^ 0xD2F00CE620E5D3AELL;
  v1190 = v1189 ^ __ROR8__(v1188, 61);
  v1191 = __ROR8__(v1189, 8);
  v1192 = 8 * ((v1077 + 13) & 7);
  LODWORD(v1171) = (((v1191 + v1190 - ((2 * (v1191 + v1190)) & 0xBA501CF6E389D916) + 0x5D280E7B71C4EC8BLL) ^ 0xA95B054ADFB499F0) >> v1192) ^ v1170;
  LODWORD(v1171) = ((v1171 ^ 0xFFFFFFD5) + 114) ^ ((v1171 ^ 0xFFFFFF9D) + 58) ^ ((v1171 ^ 0x48) - 19);
  v1193 = *(v366 + (v983 & ((v1172 ^ 0xFF7F1DA4) + 2042320575 + ((2 * v1172) | 0x101C4B7))));
  v1194 = (v1193 + v1174) ^ 0xB88801D4E1C76353;
  v1195 = v1194 ^ __ROR8__(v1193, 61);
  v1196 = (__ROR8__(v1194, 8) + v1195) ^ 0x38C8B16AE7056877;
  v1197 = v1196 ^ __ROR8__(v1195, 61);
  v1198 = (__ROR8__(v1196, 8) + v1197) ^ 0xE580B17D8CC5E551;
  v1199 = v1198 ^ __ROR8__(v1197, 61);
  v1200 = (__ROR8__(v1198, 8) + v1199) ^ 0xE1A1FD5BD155F97ALL;
  v1201 = __ROR8__(v1200, 8);
  v1202 = v1200 ^ __ROR8__(v1199, 61);
  v1203 = (v1201 + v1202 - ((2 * (v1201 + v1202)) & 0xE1DD04E66D475A84) - 0xF117D8CC95C52BELL) ^ 0x2A8EC97F350112DBLL;
  v1204 = v1203 ^ __ROR8__(v1202, 61);
  v1205 = __ROR8__(v1203, 8);
  v1206 = (v1205 + v1204 - ((2 * (v1205 + v1204)) & 0xBB183264BCC9C52ALL) - 0x2273E6CDA19B1D6BLL) ^ 0x27B9FBFF955AD352;
  v1207 = v1206 ^ __ROR8__(v1204, 61);
  v1208 = __ROR8__(v1206, 8);
  v1209 = (((v1208 + v1207) & 0x2E0752D3F73755F1 ^ 0x60642C331135130) + ((v1208 + v1207) ^ 0x39793834CEECA4C3) - (((v1208 + v1207) ^ 0x39793834CEECA4C3) & 0x2E0752D3F73755F1)) ^ 0xC58E6601193E229CLL;
  LODWORD(v1207) = (((__ROR8__(v1209, 8) + (v1209 ^ __ROR8__(v1207, 61))) ^ 0xF4730B31AE70757BLL) >> v1192) ^ v1170;
  LODWORD(v1171) = ((((v1207 ^ 0x22) - 115) ^ ((v1207 ^ 0xFFFFFFC6) + 105) ^ ((v1207 ^ 0xFFFFFFE4) + 75)) - 60) * (v1171 + 91) - 115 * v1171;
  LODWORD(STACK[0x5118]) = ((16 * v1074) | (2 * (v1074 & 3))) + (~(2 * ((16 * v1074) | (2 * (v1074 & 3)))) | 0x5B);
  STACK[0x5260] = v1172;
  v1210 = *(v366 + (v811 & (((v1077 + 13) & 0x20C91270) + ((v1077 + 13) & 0xDF36ED88 | 0x20C91274) + 1500718756)));
  STACK[0x5258] = v1174;
  v1211 = __ROR8__((v1210 + v1174) ^ 0xB88801D4E1C76353, 8);
  v1212 = (v1210 + v1174) ^ 0xB88801D4E1C76353 ^ __ROR8__(v1210, 61);
  v1213 = (((v1211 + v1212) | 0xB637127DDC335F62) - ((v1211 + v1212) | 0x49C8ED8223CCA09DLL) + 0x49C8ED8223CCA09DLL) ^ 0x8EFFA3173B363715;
  v1214 = v1213 ^ __ROR8__(v1212, 61);
  v1215 = __ROR8__(v1213, 8);
  v1216 = (((2 * (v1215 + v1214)) & 0x7B9DB1B4A56EB30) - (v1215 + v1214) + 0x7C2312725AD48A67) ^ 0x99A3A30FD6116F36;
  v1217 = v1216 ^ __ROR8__(v1214, 61);
  v1218 = (__ROR8__(v1216, 8) + v1217) ^ 0xE1A1FD5BD155F97ALL;
  v1219 = v1218 ^ __ROR8__(v1217, 61);
  v1220 = __ROR8__(v1218, 8);
  v1221 = __ROR8__((((2 * (v1220 + v1219)) | 0xAD52ECF5CBBE6916) - (v1220 + v1219) - 0x56A9767AE5DF348BLL) ^ 0x8CC93D76E67D8B12, 8);
  v1222 = (((2 * (v1220 + v1219)) | 0xAD52ECF5CBBE6916) - (v1220 + v1219) - 0x56A9767AE5DF348BLL) ^ 0x8CC93D76E67D8B12 ^ __ROR8__(v1219, 61);
  v1223 = (v1221 + v1222) ^ 0xFA35E2CDCB3E31C7;
  v1224 = v1223 ^ __ROR8__(v1222, 61);
  v1225 = __ROR8__(v1223, 8);
  v1226 = (((v1225 + v1224) | 0xA0820278FCDCA2) - ((v1225 + v1224) | 0xFF5F7DFD8703235DLL) - 0xA0820278FCDCA3) ^ 0xD2508EE458190F0CLL;
  LODWORD(v1171) = LODWORD(STACK[0x4E24]) + 34 * v1171;
  STACK[0x5280] = v1099;
  LODWORD(v904) = (16 * LODWORD(STACK[0x5268])) | (2 * (STACK[0x5268] & 3));
  LODWORD(STACK[0x5100]) = v904 - ((2 * v904) & 0xA4);
  STACK[0x5250] = v1192;
  LODWORD(v904) = v1170 ^ (((__ROR8__(v1226, 8) + (v1226 ^ __ROR8__(v1224, 61))) ^ 0xF4730B31AE70757BLL) >> v1192) ^ 0x16 ^ v1171;
  v1227 = *(v366 + (v811 & v1156));
  STACK[0x5268] = v1138;
  v1228 = (v1227 + v1138) ^ 0xB88801D4E1C76353;
  v1229 = v1228 ^ __ROR8__(v1227, 61);
  v1230 = __ROR8__(v1228, 8);
  v1231 = (v1230 + v1229 - ((2 * (v1230 + v1229)) & 0xA5A33EE2BD6BE638) + 0x52D19F715EB5F31CLL) ^ 0x6A192E1BB9B09B6BLL;
  v1232 = v1231 ^ __ROR8__(v1229, 61);
  v1233 = (__ROR8__(v1231, 8) + v1232) ^ 0xE580B17D8CC5E551;
  v1234 = __ROR8__(v1233, 8);
  v1235 = v1233 ^ __ROR8__(v1232, 61);
  v1236 = (v1234 + v1235 - ((2 * (v1234 + v1235)) & 0x44504F8078905028) + 0x222827C03C482814) ^ 0xC389DA9BED1DD16ELL;
  v1237 = v1236 ^ __ROR8__(v1235, 61);
  v1238 = __ROR8__(v1236, 8);
  v1239 = (((2 * (v1238 + v1237)) & 0xA12CC80332F7C228) - (v1238 + v1237) + 0x2F699BFE66841EEBLL) ^ 0xF509D0F26526A172;
  v1240 = v1239 ^ __ROR8__(v1237, 61);
  v1241 = __ROR8__(v1239, 8);
  v1242 = __ROR8__((v1241 + v1240 - ((2 * (v1241 + v1240)) & 0x56B47A98EBB4258CLL) + 0x2B5A3D4C75DA12C6) ^ 0xD16FDF81BEE42301, 8);
  v1243 = (v1241 + v1240 - ((2 * (v1241 + v1240)) & 0x56B47A98EBB4258CLL) + 0x2B5A3D4C75DA12C6) ^ 0xD16FDF81BEE42301 ^ __ROR8__(v1240, 61);
  v1244 = (v1242 + v1243) ^ 0xD2F00CE620E5D3AELL;
  v1245 = v1244 ^ __ROR8__(v1243, 61);
  v1246 = __ROR8__(v1244, 8);
  STACK[0x5248] = v1155;
  LODWORD(v1192) = v716 ^ (((((v1246 + v1245) | 0x48947A5F1BFE80C1) - ((v1246 + v1245) | 0xB76B85A0E4017F3ELL) - 0x48947A5F1BFE80C2) ^ 0xBCE7716EB58EF5BALL) >> v1155) ^ 0x19 ^ (66 * ((32 * (8 * v1153 - 48)) | ((8 * v1153 - 48) >> 3)) + 25);
  LODWORD(v1245) = v1079 ^ (((__ROR8__(v1135, 8) + (v1135 ^ __ROR8__(v1134, 61))) ^ 0xF4730B31AE70757BLL) >> v1099) ^ v1096 ^ 0xFFFFFFC7;
  LODWORD(STACK[0x50C0]) = (16 * v1245) | (2 * (v1245 & 3));
  v1247 = v1077;
  v1248 = (v1077 + 5);
  LODWORD(v1077) = v1077[5];
  v1249 = v1248 & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v1096) = 2 * (v1248 & 0xFFFFFFF8);
  v1250 = *(v366 + (v983 & ((v1248 & 0xFFFFFFF8 ^ 0xF68734C1) - 2085288871 + (v1096 & 0xED0E6980))));
  v1251 = __ROR8__(v1248 & 0xFFFFFFFFFFFFFFF8, 8);
  v1252 = (v1250 + v1251) ^ 0xB88801D4E1C76353;
  v1253 = v1252 ^ __ROR8__(v1250, 61);
  v1254 = __ROR8__(v1252, 8);
  v1255 = __ROR8__((((2 * (v1254 + v1253)) | 0xE62E2A6235677240) - (v1254 + v1253) - 0x731715311AB3B920) ^ 0x4BDFA45BFDB6D157, 8);
  v1256 = (((2 * (v1254 + v1253)) | 0xE62E2A6235677240) - (v1254 + v1253) - 0x731715311AB3B920) ^ 0x4BDFA45BFDB6D157 ^ __ROR8__(v1253, 61);
  v1257 = (v1255 + v1256) ^ 0xE580B17D8CC5E551;
  v1258 = v1257 ^ __ROR8__(v1256, 61);
  v1259 = __ROR8__(v1257, 8);
  v1260 = (((v1259 + v1258) | 0xF6161939856F672) - ((v1259 + v1258) | 0xF09E9E6C67A9098DLL) - 0xF6161939856F673) ^ 0xEEC09CC849030F08;
  v1261 = v1260 ^ __ROR8__(v1258, 61);
  v1262 = __ROR8__(v1260, 8);
  v1263 = (((2 * (v1262 + v1261)) & 0x693A97F8CBF4C8A2) - (v1262 + v1261) - 0x349D4BFC65FA6452) ^ 0x1102FF0F99A72437;
  v1264 = v1263 ^ __ROR8__(v1261, 61);
  v1265 = __ROR8__(v1263, 8);
  v1266 = (((v1265 + v1264) & 0xAD4A291B2FB6D6A2 ^ 0x540080A0EB050A0) + ((v1265 + v1264) ^ 0xA8BF6335E147A64FLL) - (((v1265 + v1264) ^ 0xA8BF6335E147A64FLL) & 0xAD4A291B2FB6D6A2)) ^ 0xFFC0A8E305CF412ALL;
  v1267 = v1266 ^ __ROR8__(v1264, 61);
  v1268 = (__ROR8__(v1266, 8) + v1267) ^ 0xD2F00CE620E5D3AELL;
  v1269 = 8 * (v1248 & 7);
  LODWORD(v1248) = (((__ROR8__(v1268, 8) + (v1268 ^ __ROR8__(v1267, 61))) ^ 0xF4730B31AE70757BLL) >> v1269) ^ v1077;
  LODWORD(v1248) = ((v1248 ^ 0x44) + 83) ^ ((v1248 ^ 0x7A) + 109) ^ ((v1248 ^ 0x3E) + 41);
  v1270 = *(v366 + (v983 & ((v1249 ^ 0x36BD5E25) + 1132387061 + (v1096 & 0x6D7ABC40))));
  v1271 = (v1270 + v1251) ^ 0xB88801D4E1C76353;
  v1272 = v1271 ^ __ROR8__(v1270, 61);
  v1273 = (__ROR8__(v1271, 8) + v1272) ^ 0x38C8B16AE7056877;
  v1274 = v1273 ^ __ROR8__(v1272, 61);
  v1275 = (__ROR8__(v1273, 8) + v1274) ^ 0xE580B17D8CC5E551;
  v1276 = v1275 ^ __ROR8__(v1274, 61);
  v1277 = __ROR8__(v1275, 8);
  v1278 = (((2 * ((v1277 + v1276) ^ 0xBA3AF309B309D10CLL)) | 0xFE1FF9C15DC1E872) - ((v1277 + v1276) ^ 0xBA3AF309B309D10CLL) - 0x7F0FFCE0AEE0F439) ^ 0x2494F2B2CCBCDC4FLL;
  v1279 = v1278 ^ __ROR8__(v1276, 61);
  v1280 = (__ROR8__(v1278, 8) + v1279) ^ 0xDA604B0C03A2BF99;
  v1281 = v1280 ^ __ROR8__(v1279, 61);
  v1282 = (__ROR8__(v1280, 8) + v1281) ^ 0xFA35E2CDCB3E31C7;
  v1283 = v1282 ^ __ROR8__(v1281, 61);
  v1284 = __ROR8__(v1282, 8);
  v1285 = (v1284 + v1283 - ((2 * (v1284 + v1283)) & 0x70A9520808A95ADALL) - 0x47AB56FBFBAB5293) ^ 0x6AA4A5E224B17EC3;
  v1286 = v1285 ^ __ROR8__(v1283, 61);
  v1287 = __ROR8__(v1285, 8);
  LODWORD(v1286) = (((((2 * (v1287 + v1286)) & 0x6B74FC0A37DAEC72) - (v1287 + v1286) + 0x4A4581FAE41289C6) ^ 0xBE368ACB4A62FCBDLL) >> v1269) ^ v1077;
  LODWORD(v1286) = ((v1286 ^ 0xFFFFFFEB) + 37) ^ ((v1286 ^ 8) - 56) ^ ((v1286 ^ 0xFFFFFFE3) + 45);
  LODWORD(v1286) = (v1248 + 48) * (v1286 + 57) - 19 * (125 * v1286 - 13 * v1248);
  LODWORD(STACK[0x50B8]) = ((16 * v904) | (2 * (v904 & 3))) + (~(2 * ((16 * v904) | (2 * (v904 & 3)))) | 0x7B);
  LOBYTE(v904) = v1247 + 7;
  LODWORD(v1248) = v1247[7];
  v1288 = (v1247 + 7) & 0xFFFFFFFFFFFFFFF8;
  v1289 = *(v366 + (v811 & (((((2 * v1288) & 0xED08D020) + (v1288 ^ 0xF6846812)) & 0xFFFFFFF8) - 2085105400)));
  v1290 = __ROR8__(v1288, 8);
  v1291 = __ROR8__((v1289 + v1290) ^ 0xB88801D4E1C76353, 8);
  v1292 = (v1289 + v1290) ^ 0xB88801D4E1C76353 ^ __ROR8__(v1289, 61);
  v1293 = (((2 * (v1291 + v1292)) & 0xC7DD7B0C939E1CAELL) - (v1291 + v1292) - 0x63EEBD8649CF0E58) ^ 0xA4D9F313513599DFLL;
  v1294 = v1293 ^ __ROR8__(v1292, 61);
  v1295 = (__ROR8__(v1293, 8) + v1294) ^ 0xE580B17D8CC5E551;
  v1296 = v1295 ^ __ROR8__(v1294, 61);
  v1297 = __ROR8__(v1295, 8);
  v1298 = (((2 * (v1297 + v1296)) & 0x1B5AA902946195FALL) - (v1297 + v1296) - 0xDAD54814A30CAFELL) ^ 0x13F35625649ACC78;
  v1299 = v1298 ^ __ROR8__(v1296, 61);
  v1300 = __ROR8__(v1298, 8);
  v1301 = (((2 * (v1300 + v1299)) & 0x8BE7B4A44716EC76) - (v1300 + v1299) + 0x3A0C25ADDC7489C4) ^ 0xE06C6EA1DFD6365DLL;
  v1302 = v1301 ^ __ROR8__(v1299, 61);
  v1303 = (__ROR8__(v1301, 8) + v1302) ^ 0xFA35E2CDCB3E31C7;
  v1304 = v1303 ^ __ROR8__(v1302, 61);
  v1305 = (__ROR8__(v1303, 8) + v1304) ^ 0xD2F00CE620E5D3AELL;
  v1306 = 8 * (v904 & 7);
  LODWORD(v904) = (((__ROR8__(v1305, 8) + (v1305 ^ __ROR8__(v1304, 61))) ^ 0xF4730B31AE70757BLL) >> v1306) ^ v1248;
  v1307 = *(v366 + (v983 & ((v1288 & 0x29111E28) + (v1288 | 0x29111E28) + 1361779442)));
  v1308 = (((v1307 + v1290) | 0xE9667A5DA7B33F6) - ((v1307 + v1290) | 0xF169985A2584CC09) - 0xE9667A5DA7B33F7) ^ 0xB61E66713BBC50A5;
  v1309 = v1308 ^ __ROR8__(v1307, 61);
  v1310 = __ROR8__(v1308, 8);
  v1311 = (((2 * (v1310 + v1309)) & 0x165544AB584633E4) - (v1310 + v1309) + 0x74D55DAA53DCE60DLL) ^ 0x4C1DECC0B4D98E7ALL;
  v1312 = v1311 ^ __ROR8__(v1309, 61);
  v1313 = (__ROR8__(v1311, 8) + v1312) ^ 0xE580B17D8CC5E551;
  v1314 = v1313 ^ __ROR8__(v1312, 61);
  v1315 = (__ROR8__(v1313, 8) + v1314) ^ 0xE1A1FD5BD155F97ALL;
  v1316 = v1315 ^ __ROR8__(v1314, 61);
  v1317 = (__ROR8__(v1315, 8) + v1316) ^ 0xDA604B0C03A2BF99;
  v1318 = v1317 ^ __ROR8__(v1316, 61);
  v1319 = (__ROR8__(v1317, 8) + v1318) ^ 0xFA35E2CDCB3E31C7;
  v1320 = v1319 ^ __ROR8__(v1318, 61);
  v1321 = (__ROR8__(v1319, 8) + v1320) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(v1320) = (((__ROR8__(v1321, 8) + (v1321 ^ __ROR8__(v1320, 61))) ^ 0xF4730B31AE70757BLL) >> v1306) ^ v1248;
  LODWORD(v1320) = ((v1320 ^ 0xFFFFFF8E) - 113) ^ ((v1320 ^ 0x22) + 35) ^ ((v1320 ^ 0xFFFFFFAC) - 83);
  v1322 = *(v366 + (v983 & ((STACK[0x5500] & 0xCC6003D8) + (STACK[0x5500] | 0xCC6003DC) - 1378077378)));
  LODWORD(v1320) = ((((v904 ^ 0x2A) - 126) ^ ((v904 ^ 0x64) - 48) ^ ((v904 ^ 0x4E) - 26)) + 94) * (v1320 - 1) - 10 * v1320;
  v1323 = (v1322 + STACK[0x54E0]) ^ 0xB88801D4E1C76353;
  v1324 = v1323 ^ __ROR8__(v1322, 61);
  v1325 = (__ROR8__(v1323, 8) + v1324) ^ 0x38C8B16AE7056877;
  v1326 = v1325 ^ __ROR8__(v1324, 61);
  v1327 = (__ROR8__(v1325, 8) + v1326) ^ 0xE580B17D8CC5E551;
  v1328 = v1327 ^ __ROR8__(v1326, 61);
  v1329 = __ROR8__(v1327, 8);
  v1330 = (v1329 + v1328 - ((2 * (v1329 + v1328)) & 0x92C242F0F1DC678CLL) + 0x4961217878EE33C6) ^ 0xA8C0DC23A9BBCABCLL;
  v1331 = v1330 ^ __ROR8__(v1328, 61);
  v1332 = (__ROR8__(v1330, 8) + v1331) ^ 0xDA604B0C03A2BF99;
  v1333 = v1332 ^ __ROR8__(v1331, 61);
  v1334 = (__ROR8__(v1332, 8) + v1333) ^ 0xFA35E2CDCB3E31C7;
  v1335 = v1334 ^ __ROR8__(v1333, 61);
  v1336 = (__ROR8__(v1334, 8) + v1335) ^ 0xD2F00CE620E5D3AELL;
  v1337 = v1336 ^ __ROR8__(v1335, 61);
  v1338 = __ROR8__(v1336, 8);
  LODWORD(v1336) = LODWORD(STACK[0x5670]) ^ (((((2 * (v1338 + v1337)) & 0xF03E2D5718111560) - (v1338 + v1337) + 0x7E0E95473F7754FLL) ^ 0xF393E265DD870034) >> STACK[0x54F0]) ^ 0x32 ^ (-10 * (LODWORD(STACK[0x5660]) + 112) - ((108 * (LODWORD(STACK[0x5660]) + 112)) & 0x64) + 50);
  STACK[0x51E0] = v1288;
  v1339 = *(v366 + (v983 & (v1288 + 2050767130)));
  STACK[0x51D8] = v1290;
  v1340 = (v1339 + v1290) ^ 0xB88801D4E1C76353;
  v1341 = v1340 ^ __ROR8__(v1339, 61);
  v1342 = (__ROR8__(v1340, 8) + v1341) ^ 0x38C8B16AE7056877;
  v1343 = v1342 ^ __ROR8__(v1341, 61);
  v1344 = (__ROR8__(v1342, 8) + v1343) ^ 0xE580B17D8CC5E551;
  v1345 = __ROR8__(v1344, 8);
  v1346 = v1344 ^ __ROR8__(v1343, 61);
  v1347 = (((2 * (v1345 + v1346)) & 0xFA2EE1F435E7371ALL) - (v1345 + v1346) - 0x7D1770FA1AF39B8ELL) ^ 0x6349725E34599D08;
  v1348 = v1347 ^ __ROR8__(v1346, 61);
  v1349 = (__ROR8__(v1347, 8) + v1348) ^ 0xDA604B0C03A2BF99;
  v1350 = v1349 ^ __ROR8__(v1348, 61);
  v1351 = (__ROR8__(v1349, 8) + v1350) ^ 0xFA35E2CDCB3E31C7;
  v1352 = __ROR8__(v1351, 8);
  v1353 = v1351 ^ __ROR8__(v1350, 61);
  v1354 = (v1352 + v1353 - ((2 * (v1352 + v1353)) & 0x7F5C32CD120891D8) - 0x4051E69976FBB714) ^ 0x6D5E1580A9E19B42;
  v1355 = v1354 ^ __ROR8__(v1353, 61);
  v1356 = __ROR8__(v1354, 8);
  STACK[0x51D0] = v1306;
  LODWORD(v1248) = v1248 ^ (((v1356 + v1355 - ((2 * (v1356 + v1355)) & 0xFFD5141B3A8B1A64) - 0x1575F262BA72CELL) ^ 0xB99813C3335F849) >> v1306) ^ ((~(4 * v1320 + 40) | 0xFFFFFFF3) + 58 * v1320 + 460);
  STACK[0x5210] = v1249;
  v1357 = *(v366 + (v983 & (v1249 + 2050767130)));
  STACK[0x5208] = v1251;
  v1358 = (v1357 + v1251) ^ 0xB88801D4E1C76353;
  v1359 = v1358 ^ __ROR8__(v1357, 61);
  v1360 = __ROR8__(v1358, 8);
  v1361 = (((2 * (v1360 + v1359)) | 0x11286EAD45E8DC9CLL) - (v1360 + v1359) - 0x8943756A2F46E4ELL) ^ 0x305C863C45F10639;
  v1362 = v1361 ^ __ROR8__(v1359, 61);
  v1363 = __ROR8__(v1361, 8);
  v1364 = (v1363 + v1362 - ((2 * (v1363 + v1362)) & 0xC22A0ADAD13CE0C8) + 0x6115056D689E7064) ^ 0x8495B410E45B9535;
  v1365 = v1364 ^ __ROR8__(v1362, 61);
  v1366 = __ROR8__(v1364, 8);
  v1367 = (((2 * (v1366 + v1365)) | 0x4E18AE8D4B960224) - (v1366 + v1365) + 0x58F3A8B95A34FEEELL) ^ 0x46ADAA1D749EF868;
  v1368 = v1367 ^ __ROR8__(v1365, 61);
  v1369 = (__ROR8__(v1367, 8) + v1368) ^ 0xDA604B0C03A2BF99;
  v1370 = v1369 ^ __ROR8__(v1368, 61);
  v1371 = (__ROR8__(v1369, 8) + v1370) ^ 0xFA35E2CDCB3E31C7;
  v1372 = v1371 ^ __ROR8__(v1370, 61);
  v1373 = (__ROR8__(v1371, 8) + v1372) ^ 0xD2F00CE620E5D3AELL;
  LODWORD(STACK[0x50B0]) = (~(12 * v1286) | 0xFFFFFFE3) - 10 * v1286;
  LODWORD(STACK[0x5670]) = (2 * (v1192 & 3)) | (16 * v1192);
  STACK[0x51F8] = v1269;
  LODWORD(STACK[0x50A8]) = v1077 ^ (((__ROR8__(v1373, 8) + (v1373 ^ __ROR8__(v1372, 61))) ^ 0xF4730B31AE70757BLL) >> v1269);
  v1374 = STACK[0x53B8];
  v1376 = *(STACK[0x53B8] + 14);
  v1375 = STACK[0x53B8] + 14;
  v1377 = ((v1375 & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  STACK[0x5240] = v1377;
  v1378 = *(v366 + (v811 & v1377));
  v1379 = __ROR8__(v1375 & 0xFFFFFFFFFFFFFFF8, 8);
  v1380 = (((2 * (v1378 + v1379)) & 0xEAA651BCEBF3A978) - (v1378 + v1379) - 0x755328DE75F9D4BDLL) ^ 0x3224D6F56BC14810;
  v1381 = v1380 ^ __ROR8__(v1378, 61);
  v1382 = (__ROR8__(v1380, 8) + v1381) ^ 0x38C8B16AE7056877;
  v1383 = v1382 ^ __ROR8__(v1381, 61);
  v1384 = __ROR8__(v1382, 8);
  v1385 = (((2 * (v1384 + v1383)) | 0x5596606CDD4B7252) - (v1384 + v1383) - 0x2ACB30366EA5B929) ^ 0xCF4B814BE2605C78;
  v1386 = v1385 ^ __ROR8__(v1383, 61);
  v1387 = (__ROR8__(v1385, 8) + v1386) ^ 0xE1A1FD5BD155F97ALL;
  v1388 = v1387 ^ __ROR8__(v1386, 61);
  v1389 = __ROR8__(v1387, 8);
  v1390 = (((v1389 + v1388) ^ 0xEF1EEC92DDAD3E5ELL | 0xC46E6D5F9E7F10CCLL) - ((v1389 + v1388) ^ 0xEF1EEC92DDAD3E5ELL | 0x3B9192A06180EF33) + 0x3B9192A06180EF33) ^ 0xF110CAC14070910BLL;
  v1391 = v1390 ^ __ROR8__(v1388, 61);
  v1392 = (__ROR8__(v1390, 8) + v1391) ^ 0xFA35E2CDCB3E31C7;
  v1393 = v1392 ^ __ROR8__(v1391, 61);
  v1394 = (__ROR8__(v1392, 8) + v1393) ^ 0xD2F00CE620E5D3AELL;
  v1395 = v1394 ^ __ROR8__(v1393, 61);
  v1396 = __ROR8__(v1394, 8);
  v1397 = ((2 * (v1396 + v1395)) & 0xCC7F86F80CDCB4D2) - (v1396 + v1395);
  v1398 = *(v366 + (v811 & ((v1375 & 0x4E975E10) + (v1375 & 0xB168A1E8 | 0x4E975E14) + 732224260)));
  STACK[0x5238] = v1379;
  v1399 = (v1398 + v1379) ^ 0xB88801D4E1C76353;
  v1400 = v1399 ^ __ROR8__(v1398, 61);
  v1401 = __ROR8__(v1399, 8);
  v1402 = __ROR8__((((2 * ((v1401 + v1400) ^ 0x96294CD0E51BDB8CLL)) | 0x400B1628AD17B180) - ((v1401 + v1400) ^ 0x96294CD0E51BDB8CLL) - 0x20058B14568BD8C0) ^ 0x8EE476AE54956B3BLL, 8);
  v1403 = (((2 * ((v1401 + v1400) ^ 0x96294CD0E51BDB8CLL)) | 0x400B1628AD17B180) - ((v1401 + v1400) ^ 0x96294CD0E51BDB8CLL) - 0x20058B14568BD8C0) ^ 0x8EE476AE54956B3BLL ^ __ROR8__(v1400, 61);
  v1404 = (v1402 + v1403) ^ 0xE580B17D8CC5E551;
  v1405 = v1404 ^ __ROR8__(v1403, 61);
  v1406 = __ROR8__(v1404, 8);
  v1407 = (v1406 + v1405 - ((2 * (v1406 + v1405)) & 0x7198D7D46A0B9998) - 0x47339415CAFA3334) ^ 0x596D96B1E45035B6;
  v1408 = v1407 ^ __ROR8__(v1405, 61);
  v1409 = (__ROR8__(v1407, 8) + v1408) ^ 0xDA604B0C03A2BF99;
  v1410 = v1409 ^ __ROR8__(v1408, 61);
  v1411 = (__ROR8__(v1409, 8) + v1410) ^ 0xFA35E2CDCB3E31C7;
  v1412 = v1411 ^ __ROR8__(v1410, 61);
  v1413 = __ROR8__(v1411, 8);
  v1414 = (((v1413 + v1412) | 0xDCDA9E99CF3FA596) - ((v1413 + v1412) | 0x2325616630C05A69) + 0x2325616630C05A69) ^ 0xE2A927FEFDA7638;
  v1415 = 8 * (v1375 & 7);
  STACK[0x5220] = v1415;
  HIDWORD(v1413) = (((v1397 - 0x663FC37C066E5A6ALL) ^ 0x6DB337B257E1D0EDLL) >> v1415) ^ v1376;
  LODWORD(v1413) = ((((__ROR8__(v1414, 8) + (v1414 ^ __ROR8__(v1412, 61))) ^ 0xF4730B31AE70757BLL) >> v1415) ^ v1376) << 24;
  LODWORD(v1134) = ((v1413 >> 27) >> 5) | (8 * (v1413 >> 27));
  LODWORD(v1375) = (118 * v1134 * v1134) ^ v1134;
  v1416 = *(v366 + (v811 & STACK[0x5620]));
  v1417 = (v1416 + STACK[0x5550]) ^ 0xB88801D4E1C76353;
  v1418 = v1417 ^ __ROR8__(v1416, 61);
  v1419 = (__ROR8__(v1417, 8) + v1418) ^ 0x38C8B16AE7056877;
  v1420 = v1419 ^ __ROR8__(v1418, 61);
  v1421 = (__ROR8__(v1419, 8) + v1420) ^ 0xE580B17D8CC5E551;
  v1422 = v1421 ^ __ROR8__(v1420, 61);
  v1423 = (__ROR8__(v1421, 8) + v1422) ^ 0xE1A1FD5BD155F97ALL;
  v1424 = v1423 ^ __ROR8__(v1422, 61);
  v1425 = (__ROR8__(v1423, 8) + v1424) ^ 0xDA604B0C03A2BF99;
  v1426 = v1425 ^ __ROR8__(v1424, 61);
  v1427 = (__ROR8__(v1425, 8) + v1426) ^ 0xFA35E2CDCB3E31C7;
  v1428 = v1427 ^ __ROR8__(v1426, 61);
  v1429 = (__ROR8__(v1427, 8) + v1428) ^ 0xD2F00CE620E5D3AELL;
  v1430 = v1429 ^ __ROR8__(v1428, 61);
  v1431 = __ROR8__(v1429, 8);
  LODWORD(v1429) = LODWORD(STACK[0x5610]) ^ (((((2 * (v1431 + v1430)) & 0xB808EC5309CB4DALL) - (v1431 + v1430) + 0x7A3FB89D67B1A592) ^ 0x8E4CB3ACC9C1D0E9) >> STACK[0x5540]) ^ 0x4E ^ (26 * (LODWORD(STACK[0x5600]) - 24) - ((52 * (LODWORD(STACK[0x5600]) - 24)) & 0xFFFFFFE7) - 13);
  v1432 = v1374;
  LOBYTE(v1397) = v1374 + 8;
  LODWORD(v1430) = *(v1374 + 8);
  v1433 = (v1374 + 8) & 0xFFFFFFFFFFFFFFF8;
  v1434 = *(v366 + ((((v1433 ^ 0xA43C8C41) - 704664359 + ((2 * v1433) & 0x48791880)) & v811) & 0xFFFFFFFFFFFFFFF8));
  v1435 = __ROR8__(v1433, 8);
  v1436 = (v1434 + v1435 - ((2 * (v1434 + v1435)) & 0x12ACF1E825289F62) - 0x76A9870BED6BB04FLL) ^ 0x31DE7920F3532CE2;
  v1437 = v1436 ^ __ROR8__(v1434, 61);
  v1438 = __ROR8__(v1436, 8);
  v1439 = (((2 * (v1438 + v1437)) | 0xD116184D55B41EBALL) - (v1438 + v1437) - 0x688B0C26AADA0F5DLL) ^ 0x5043BD4C4DDF672ALL;
  v1440 = v1439 ^ __ROR8__(v1437, 61);
  v1441 = (__ROR8__(v1439, 8) + v1440) ^ 0xE580B17D8CC5E551;
  v1442 = v1441 ^ __ROR8__(v1440, 61);
  v1443 = __ROR8__(v1441, 8);
  v1444 = (((2 * (v1443 + v1442)) & 0x743E9AF500501F56) - (v1443 + v1442) - 0x3A1F4D7A80280FACLL) ^ 0x24414FDEAE82092ELL;
  v1445 = v1444 ^ __ROR8__(v1442, 61);
  v1446 = (__ROR8__(v1444, 8) + v1445) ^ 0xDA604B0C03A2BF99;
  v1447 = v1446 ^ __ROR8__(v1445, 61);
  v1448 = (__ROR8__(v1446, 8) + v1447) ^ 0xFA35E2CDCB3E31C7;
  v1449 = v1448 ^ __ROR8__(v1447, 61);
  v1450 = (__ROR8__(v1448, 8) + v1449) ^ 0xD2F00CE620E5D3AELL;
  v1451 = 8 * (v1397 & 7);
  LODWORD(v1397) = (((__ROR8__(v1450, 8) + (v1450 ^ __ROR8__(v1449, 61))) ^ 0xF4730B31AE70757BLL) >> v1451) ^ v1430;
  v1452 = *(v366 + (v983 & (v1433 + 2050767130)));
  LODWORD(v1397) = ((v1397 ^ 0x5F) - 8) ^ ((v1397 ^ 0xFFFFFFC4) + 109) ^ ((v1397 ^ 0xFFFFFF9B) + 52);
  v1453 = (v1452 + v1435) ^ 0xB88801D4E1C76353;
  v1454 = v1453 ^ __ROR8__(v1452, 61);
  v1455 = (__ROR8__(v1453, 8) + v1454) ^ 0x38C8B16AE7056877;
  v1456 = v1455 ^ __ROR8__(v1454, 61);
  v1457 = (__ROR8__(v1455, 8) + v1456) ^ 0xE580B17D8CC5E551;
  v1458 = v1457 ^ __ROR8__(v1456, 61);
  v1459 = (__ROR8__(v1457, 8) + v1458) ^ 0xE1A1FD5BD155F97ALL;
  v1460 = v1459 ^ __ROR8__(v1458, 61);
  v1461 = (__ROR8__(v1459, 8) + v1460) ^ 0xDA604B0C03A2BF99;
  v1462 = v1461 ^ __ROR8__(v1460, 61);
  v1463 = (__ROR8__(v1461, 8) + v1462) ^ 0xFA35E2CDCB3E31C7;
  v1464 = __ROR8__(v1463, 8);
  v1465 = v1463 ^ __ROR8__(v1462, 61);
  v1466 = (v1464 + v1465) ^ 0xD2F00CE620E5D3AELL;
  v1467 = v1466 ^ __ROR8__(v1465, 61);
  v1468 = __ROR8__(v1466, 8);
  LODWORD(v1467) = (((((2 * (v1468 + v1467)) | 0xBEDAFE8BAF07D95ELL) - (v1468 + v1467) - 0x5F6D7F45D783ECAFLL) ^ 0xAB1E747479F399D4) >> v1451) ^ v1430;
  LODWORD(v1467) = ((v1467 ^ 0xFFFFFFD8) - 66) ^ (v1467 - 10) ^ ((v1467 ^ 0x48) + 46);
  LODWORD(v1397) = (v1397 + 96) * (v1467 - 86) + 19 * (80 * v1397 + 13 * v1467);
  LODWORD(STACK[0x50A0]) = ((2 * (v1336 & 3)) | (16 * v1336)) - ((4 * v1336) & 8);
  STACK[0x5158] = v1433;
  LODWORD(STACK[0x5150]) = 2 * v1433;
  v1469 = *(v366 + (v811 & ((v1433 ^ 0x836F4D6C) - 154342484 + ((2 * v1433) & 0x6DE9AD0))));
  STACK[0x5148] = v1435;
  v1470 = __ROR8__((v1469 + v1435) ^ 0xB88801D4E1C76353, 8);
  v1471 = (v1469 + v1435) ^ 0xB88801D4E1C76353 ^ __ROR8__(v1469, 61);
  v1472 = (v1470 + v1471) ^ 0x38C8B16AE7056877;
  v1473 = v1472 ^ __ROR8__(v1471, 61);
  v1474 = __ROR8__(v1472, 8);
  v1475 = (((2 * (v1474 + v1473)) & 0xD6A9089459E363DALL) - (v1474 + v1473) - 0x6B54844A2CF1B1EELL) ^ 0x712BCAC85FCBAB43;
  v1476 = v1475 ^ __ROR8__(v1473, 61);
  v1477 = (__ROR8__(v1475, 8) + v1476) ^ 0xE1A1FD5BD155F97ALL;
  v1478 = v1477 ^ __ROR8__(v1476, 61);
  v1479 = (__ROR8__(v1477, 8) + v1478) ^ 0xDA604B0C03A2BF99;
  v1480 = v1479 ^ __ROR8__(v1478, 61);
  v1481 = __ROR8__(v1479, 8);
  v1482 = (v1481 + v1480 - ((2 * (v1481 + v1480)) & 0x986EE7304F9A616) + 0x4C37739827CD30BLL) ^ 0xFEF695F44942E2CCLL;
  v1483 = v1482 ^ __ROR8__(v1480, 61);
  v1484 = (__ROR8__(v1482, 8) + v1483) ^ 0xD2F00CE620E5D3AELL;
  v1485 = __ROR8__(v1484, 8);
  v1486 = __ROR8__(v1483, 61);
  STACK[0x5160] = v1451;
  LODWORD(v1251) = (((((2 * (v1485 + (v1484 ^ v1486))) | 0x5F657B0FD431EA12) - (v1485 + (v1484 ^ v1486)) + 0x504D427815E70AF7) ^ 0x5BC1B6B644688072) >> v1451) ^ v1430 ^ (46 * v1397 - 107);
  LODWORD(v1483) = (16 * v1429) | (2 * (v1429 & 3));
  LODWORD(v1429) = v1432[4];
  LODWORD(STACK[0x5620]) = v1483 - ((2 * v1483) & 0xFFFFFF9F);
  v1487 = (v1432 + 4) & 0xFFFFFFFFFFFFFFF8;
  v1488 = *(v366 + (((((v1432 + 4) & 0x608B1A40) + ((v1432 + 4) & 0x9F74E5B8 | 0x608B1A41) + 431038169) & v811) & 0xFFFFFFFFFFFFFFF8));
  v1489 = __ROR8__(v1487, 8);
  v1490 = (v1488 + v1489 - ((2 * (v1488 + v1489)) & 0x6E19A5E7889460) - 0x7FC8F32D0C3BB5D0) ^ 0x38BF0D0612032963;
  v1491 = v1490 ^ __ROR8__(v1488, 61);
  v1492 = __ROR8__(v1490, 8);
  v1493 = __ROR8__((((v1492 + v1491) | 0xA65BA58EC2749CA7) - ((v1492 + v1491) | 0x59A45A713D8B6358) + 0x59A45A713D8B6358) ^ 0x9E9314E42571F4D0, 8);
  v1494 = (((v1492 + v1491) | 0xA65BA58EC2749CA7) - ((v1492 + v1491) | 0x59A45A713D8B6358) + 0x59A45A713D8B6358) ^ 0x9E9314E42571F4D0 ^ __ROR8__(v1491, 61);
  v1495 = (v1493 + v1494) ^ 0xE580B17D8CC5E551;
  v1496 = v1495 ^ __ROR8__(v1494, 61);
  v1497 = (__ROR8__(v1495, 8) + v1496) ^ 0xE1A1FD5BD155F97ALL;
  v1498 = v1497 ^ __ROR8__(v1496, 61);
  v1499 = __ROR8__(v1497, 8);
  v1500 = (((v1499 + v1498) & 0x1C7FAA03F67F6643 ^ 0x1808820290556442) + ((v1499 + v1498) & 0xE38055FC098099BCLL ^ 0x2300500C0000889DLL) - 1) ^ 0xE168990293F75347;
  v1501 = v1500 ^ __ROR8__(v1498, 61);
  v1502 = (__ROR8__(v1500, 8) + v1501) ^ 0xFA35E2CDCB3E31C7;
  v1503 = v1502 ^ __ROR8__(v1501, 61);
  v1504 = (__ROR8__(v1502, 8) + v1503) ^ 0xD2F00CE620E5D3AELL;
  v1505 = 8 * ((v1432 + 4) & 7);
  LODWORD(v1503) = (((__ROR8__(v1504, 8) + (v1504 ^ __ROR8__(v1503, 61))) ^ 0xF4730B31AE70757BLL) >> v1505) ^ v1429;
  LODWORD(v1484) = ((v1503 ^ 0xFFFFFFA7) - 8) ^ ((v1503 ^ 0x56) + 7) ^ ((v1503 ^ 0xFFFFFFF1) - 94);
  STACK[0x50F0] = v1487;
  v1506 = (v1487 + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  v1507 = *(v366 + (v811 & v1506));
  v1508 = (v1507 + v1489) ^ 0xB88801D4E1C76353;
  v1509 = v1508 ^ __ROR8__(v1507, 61);
  v1510 = (__ROR8__(v1508, 8) + v1509) ^ 0x38C8B16AE7056877;
  v1511 = __ROR8__(v1510, 8);
  v1512 = v1510 ^ __ROR8__(v1509, 61);
  v1513 = (((2 * (v1511 + v1512)) | 0xDC17E2469C4A56EALL) - (v1511 + v1512) - 0x6E0BF1234E252B75) ^ 0x8B8B405EC2E0CE24;
  v1514 = v1513 ^ __ROR8__(v1512, 61);
  v1515 = (__ROR8__(v1513, 8) + v1514) ^ 0xE1A1FD5BD155F97ALL;
  v1516 = v1515 ^ __ROR8__(v1514, 61);
  v1517 = __ROR8__(v1515, 8);
  v1518 = (((2 * (v1517 + v1516)) & 0xF1E4258415D48288) - (v1517 + v1516) + 0x70DED3DF515BEBBLL) ^ 0xDD6DA631F6B70122;
  v1519 = v1518 ^ __ROR8__(v1516, 61);
  v1520 = __ROR8__(v1518, 8);
  v1521 = __ROR8__((((v1520 + v1519) | 0x507F63B28244F1FBLL) - ((v1520 + v1519) | 0xAF809C4D7DBB0E04) - 0x507F63B28244F1FCLL) ^ 0xAA4A817F497AC03CLL, 8);
  v1522 = (((v1520 + v1519) | 0x507F63B28244F1FBLL) - ((v1520 + v1519) | 0xAF809C4D7DBB0E04) - 0x507F63B28244F1FCLL) ^ 0xAA4A817F497AC03CLL ^ __ROR8__(v1519, 61);
  v1523 = (v1521 + v1522) ^ 0xD2F00CE620E5D3AELL;
  v1524 = v1523 ^ __ROR8__(v1522, 61);
  v1525 = __ROR8__(v1523, 8);
  LODWORD(v1524) = (((v1525 + v1524 - ((2 * (v1525 + v1524)) & 0xA5A75F1B014A7680) - 0x2D2C50727F5AC4C0) ^ 0x26A0A4BC2ED54E3BLL) >> v1505) ^ v1429;
  LODWORD(STACK[0x5098]) = ((16 * v1375) | (2 * (v1375 & 3))) - ((2 * ((16 * v1375) | (2 * (v1375 & 3)))) & 0x78);
  v1526 = *(v366 + (v811 & v1506));
  STACK[0x50E8] = v1489;
  v1527 = (((v1526 + v1489) ^ 0x303985B1844BD22ELL) - ((2 * ((v1526 + v1489) ^ 0x303985B1844BD22ELL)) & 0x2E40E36933F7DE4) + 0x172071B499FBEF2) ^ 0x89C3837E2C130F8FLL;
  v1528 = v1527 ^ __ROR8__(v1526, 61);
  v1529 = __ROR8__(v1527, 8);
  v1530 = (((2 * (v1529 + v1528)) | 0xC131FA58F093913CLL) - (v1529 + v1528) + 0x1F6702D387B63762) ^ 0xD8504C469F4CA0E9;
  v1531 = v1530 ^ __ROR8__(v1528, 61);
  v1532 = (__ROR8__(v1530, 8) + v1531) ^ 0xE580B17D8CC5E551;
  v1533 = v1532 ^ __ROR8__(v1531, 61);
  v1534 = (__ROR8__(v1532, 8) + v1533) ^ 0xE1A1FD5BD155F97ALL;
  v1535 = v1534 ^ __ROR8__(v1533, 61);
  v1536 = (__ROR8__(v1534, 8) + v1535) ^ 0xDA604B0C03A2BF99;
  v1537 = v1536 ^ __ROR8__(v1535, 61);
  v1538 = __ROR8__(v1536, 8);
  v1539 = (((v1538 + v1537) | 0x9F8E52666D568ABALL) - ((v1538 + v1537) | 0x6071AD9992A97545) + 0x6071AD9992A97545) ^ 0x65BBB0ABA668BB7DLL;
  v1540 = v1539 ^ __ROR8__(v1537, 61);
  v1541 = __ROR8__(v1539, 8);
  v1542 = (((2 * (v1541 + v1540)) & 0xE614940C1893D938) - (v1541 + v1540) - 0x730A4A060C49EC9DLL) ^ 0x5E05B91FD353C0CDLL;
  STACK[0x50F8] = v1505;
  LODWORD(STACK[0x5090]) = v1429 ^ (((__ROR8__(v1542, 8) + (v1542 ^ __ROR8__(v1540, 61))) ^ 0xF4730B31AE70757BLL) >> v1505) ^ 0x3D ^ (108 - 14 * (((((v1524 ^ 0xFFFFFF9B) + 97) ^ ((v1524 ^ 0xFFFFFFF5) + 15) ^ ((v1524 ^ 0x6E) - 106)) + 102) * (v1484 - 81) - 98 * v1484));
  v1543 = *(v366 + ((((STACK[0x54B0] ^ 0xED613649) - 1931803951 + (STACK[0x54A0] & 0xDAC26C90)) & v811) & 0xFFFFFFFFFFFFFFF8));
  v1544 = (((v1543 + STACK[0x54C0]) | 0xFC29E23A912EB5CLL) - ((v1543 + STACK[0x54C0]) | 0xF03D61DC56ED14A3) - 0xFC29E23A912EB5DLL) ^ 0xB74A9FF748D5880FLL;
  v1545 = v1544 ^ __ROR8__(v1543, 61);
  v1546 = (__ROR8__(v1544, 8) + v1545) ^ 0x38C8B16AE7056877;
  v1547 = v1546 ^ __ROR8__(v1545, 61);
  v1548 = __ROR8__(v1546, 8);
  v1549 = __ROR8__((((2 * (v1548 + v1547)) | 0x57E14CECB61BC17ALL) - (v1548 + v1547) + 0x540F5989A4F21F43) ^ 0x4E70170BD7C805ECLL, 8);
  v1550 = (((2 * (v1548 + v1547)) | 0x57E14CECB61BC17ALL) - (v1548 + v1547) + 0x540F5989A4F21F43) ^ 0x4E70170BD7C805ECLL ^ __ROR8__(v1547, 61);
  v1551 = (v1549 + v1550) ^ 0xE1A1FD5BD155F97ALL;
  v1552 = v1551 ^ __ROR8__(v1550, 61);
  v1553 = (__ROR8__(v1551, 8) + v1552) ^ 0xDA604B0C03A2BF99;
  v1554 = v1553 ^ __ROR8__(v1552, 61);
  v1555 = (__ROR8__(v1553, 8) + v1554) ^ 0xFA35E2CDCB3E31C7;
  v1556 = v1555 ^ __ROR8__(v1554, 61);
  v1557 = (__ROR8__(v1555, 8) + v1556) ^ 0xD2F00CE620E5D3AELL;
  v1558 = __ROR8__(v1557, 8) + (v1557 ^ __ROR8__(v1556, 61));
  LODWORD(v1556) = v1432[10];
  v1559 = (v1432 + 10) & 0xFFFFFFFFFFFFFFF8;
  v1560 = *(v366 + (v983 & (((v1559 + 929178766) ^ 0x537AC093) - 278968129 + ((2 * (v1559 + 929178766)) & 0xA6F58124) + 2874)));
  v1561 = __ROR8__(v1559, 8);
  v1562 = (v1560 + v1561) ^ 0xB88801D4E1C76353;
  v1563 = v1562 ^ __ROR8__(v1560, 61);
  v1564 = (__ROR8__(v1562, 8) + v1563) ^ 0x38C8B16AE7056877;
  v1565 = v1564 ^ __ROR8__(v1563, 61);
  v1566 = (__ROR8__(v1564, 8) + v1565) ^ 0xE580B17D8CC5E551;
  v1567 = v1566 ^ __ROR8__(v1565, 61);
  v1568 = (__ROR8__(v1566, 8) + v1567) ^ 0xE1A1FD5BD155F97ALL;
  v1569 = v1568 ^ __ROR8__(v1567, 61);
  v1570 = __ROR8__(v1568, 8);
  v1571 = (((2 * (v1570 + v1569)) & 0x478C75B22E3539C0) - (v1570 + v1569) - 0x23C63AD9171A9CE1) ^ 0x6598E2AEB47DC86;
  v1572 = v1571 ^ __ROR8__(v1569, 61);
  v1573 = (__ROR8__(v1571, 8) + v1572) ^ 0xFA35E2CDCB3E31C7;
  v1574 = v1573 ^ __ROR8__(v1572, 61);
  v1575 = __ROR8__(v1573, 8);
  v1576 = (v1575 + v1574 - ((2 * (v1575 + v1574)) & 0x9323A1BFBBCC1F62) - 0x366E2F202219F04FLL) ^ 0x1B61DC39FD03DC1FLL;
  v1577 = 8 * ((v1432 + 10) & 7);
  LOBYTE(v1557) = (((__ROR8__(v1576, 8) + (v1576 ^ __ROR8__(v1574, 61))) ^ 0xF4730B31AE70757BLL) >> v1577) ^ v1556;
  v1578 = *(v366 + (v983 & (842113327 * (((v1559 * LODWORD(STACK[0x1090])) ^ 0x78AB14C6) - ((4623262 * v1559) & 0xF1562980 ^ 0xF156298C)) - 543453324)));
  LOBYTE(v1557) = ((v1557 ^ 0x27) - 40) ^ ((v1557 ^ 0x9D) + 110) ^ ((v1557 ^ 0xBA) + 75);
  v1579 = (((2 * (v1578 + v1561)) & 0x9DF5304B73AF3058) - (v1578 + v1561) - 0x4EFA9825B9D7982DLL) ^ 0x98D660EA7EF0480;
  v1580 = v1579 ^ __ROR8__(v1578, 61);
  v1581 = __ROR8__(v1579, 8);
  v1582 = (((2 * (v1581 + v1580)) & 0x56D4506EB96E05F8) - (v1581 + v1580) - 0x2B6A28375CB702FDLL) ^ 0xEC5D66A2444D9574;
  v1583 = v1582 ^ __ROR8__(v1580, 61);
  v1584 = __ROR8__(v1582, 8);
  v1585 = (v1584 + v1583 - ((2 * (v1584 + v1583)) & 0x86AD2ACDA97BA8FELL) - 0x3CA96A992B422B81) ^ 0x26D6241B5878312ELL ^ __ROR8__(v1583, 61);
  v1586 = (__ROR8__((v1584 + v1583 - ((2 * (v1584 + v1583)) & 0x86AD2ACDA97BA8FELL) - 0x3CA96A992B422B81) ^ 0x26D6241B5878312ELL, 8) + v1585) ^ 0xE1A1FD5BD155F97ALL;
  v1587 = v1586 ^ __ROR8__(v1585, 61);
  v1588 = (__ROR8__(v1586, 8) + v1587) ^ 0xDA604B0C03A2BF99;
  v1589 = v1588 ^ __ROR8__(v1587, 61);
  v1590 = (__ROR8__(v1588, 8) + v1589) ^ 0xFA35E2CDCB3E31C7;
  v1591 = v1590 ^ __ROR8__(v1589, 61);
  v1592 = (__ROR8__(v1590, 8) + v1591) ^ 0xD2F00CE620E5D3AELL;
  v1593 = v1592 ^ __ROR8__(v1591, 61);
  v1594 = __ROR8__(v1592, 8);
  LOBYTE(v1593) = (((v1594 + v1593 - ((2 * (v1594 + v1593)) & 0xFB10E3B6C5F31264) - 0x2778E249D0676CELL) ^ 0x9FB7AEACC89FC49) >> v1577) ^ v1556;
  LOBYTE(v1593) = v1593 ^ ((v1593 ^ 0xB6) - 61) ^ ((v1593 ^ 0x3D) + 74) ^ 0x8B;
  LODWORD(v1558) = LODWORD(STACK[0x5650]) ^ ((v1558 ^ 0xF4730B31AE70757BLL) >> STACK[0x54D0]) ^ 9 ^ (-((4 * (LODWORD(STACK[0x5630]) + 73)) & 0x18) - 110 * (LODWORD(STACK[0x5630]) + 73) - 116);
  LODWORD(v1484) = (16 * (v1248 ^ 0xFFFFFF87)) | (2 * ((v1248 ^ 0xFFFFFF87) & 3));
  LODWORD(STACK[0x5080]) = v1484 - ((2 * v1484) & 0x38);
  LODWORD(STACK[0x5660]) = (((16 * v1251) | (2 * (v1251 & 3))) ^ 0xC0) - ((2 * ((16 * v1251) | (2 * (v1251 & 3)))) & 0x44444444);
  LODWORD(STACK[0x5088]) = ((16 * v1558) | (2 * (v1558 & 3))) - ((2 * ((16 * v1558) | (2 * (v1558 & 3)))) & 0xFFFFFFC7);
  v1595 = *(v366 + (v983 & (-1713174777 * ((((-1915636041 * STACK[0x5490]) & 0x5D092D00) + ((-1915636041 * STACK[0x5490]) | 0x5D092D00)) | 4) + 1614078462)));
  v1596 = (((2 * (v1595 + STACK[0x5480])) | 0xFB574849A2FFEDCELL) - (v1595 + STACK[0x5480]) + 0x2545BDB2E800919) ^ 0x4523A5F030B895B4;
  v1597 = v1596 ^ __ROR8__(v1595, 61);
  v1598 = (__ROR8__(v1596, 8) + v1597) ^ 0x38C8B16AE7056877;
  v1599 = v1598 ^ __ROR8__(v1597, 61);
  v1600 = (__ROR8__(v1598, 8) + v1599) ^ 0xE580B17D8CC5E551;
  v1601 = v1600 ^ __ROR8__(v1599, 61);
  v1602 = __ROR8__(v1600, 8);
  v1603 = __ROR8__((((v1602 + v1601) & 0x2C9592D0B649EDD9 ^ 0x240000D084490D11) + ((v1602 + v1601) ^ 0xD995F3213BA4F0CELL) - (((v1602 + v1601) ^ 0xD995F3213BA4F0CELL) & 0x2C9592D0B649EDD9)) ^ 0x14A19CAA5CB8E46DLL, 8);
  v1604 = (((v1602 + v1601) & 0x2C9592D0B649EDD9 ^ 0x240000D084490D11) + ((v1602 + v1601) ^ 0xD995F3213BA4F0CELL) - (((v1602 + v1601) ^ 0xD995F3213BA4F0CELL) & 0x2C9592D0B649EDD9)) ^ 0x14A19CAA5CB8E46DLL ^ __ROR8__(v1601, 61);
  v1605 = (((v1603 + v1604) | 0x500A294CA7E5D626) - ((v1603 + v1604) | 0xAFF5D6B3581A29D9) - 0x500A294CA7E5D627) ^ 0x8A6A6240A44769BFLL;
  v1606 = v1605 ^ __ROR8__(v1604, 61);
  v1607 = __ROR8__(v1605, 8);
  v1608 = (v1607 + v1606 - ((2 * (v1607 + v1606)) & 0x7B8EBA5FD9EC8BC2) - 0x4238A2D01309BA1FLL) ^ 0x47F2BFE227C87426;
  v1609 = v1608 ^ __ROR8__(v1606, 61);
  v1610 = __ROR8__(v1608, 8);
  v1611 = (v1610 + v1609 - ((2 * (v1610 + v1609)) & 0x3C8DF5EC96DC5670) - 0x61B90509B491D4C8) ^ 0x4CB6F6106B8BF896;
  LODWORD(v1609) = (((__ROR8__(v1611, 8) + (v1611 ^ __ROR8__(v1609, 61))) ^ 0xF4730B31AE70757BLL) >> STACK[0x5470]) ^ LODWORD(STACK[0x55F0]) ^ (34 * (LODWORD(STACK[0x52A8]) + 113) - ((68 * (LODWORD(STACK[0x52A8]) + 113)) & 0xFFFFFFC8) + 100);
  STACK[0x52A8] = v1559;
  v1612 = *(v366 + (v983 & (((v1432 + 10) & 0x87859930 | 0x787A66CF) + 2050767130 + ((v1432 + 10) & 0x787A66C8 | 0x87859931))));
  STACK[0x5110] = v1561;
  v1613 = __ROR8__((v1612 + v1561) ^ 0xB88801D4E1C76353, 8);
  v1614 = (v1612 + v1561) ^ 0xB88801D4E1C76353 ^ __ROR8__(v1612, 61);
  v1615 = (v1613 + v1614) ^ 0x38C8B16AE7056877;
  v1616 = v1615 ^ __ROR8__(v1614, 61);
  v1617 = (__ROR8__(v1615, 8) + v1616) ^ 0xE580B17D8CC5E551;
  v1618 = v1617 ^ __ROR8__(v1616, 61);
  v1619 = __ROR8__(v1617, 8);
  v1620 = (((v1619 + v1618) | 0xD8EF08644F5F4BEALL) - ((v1619 + v1618) | 0x2710F79BB0A0B415) + 0x2710F79BB0A0B415) ^ 0x394EF53F9E0AB290;
  v1621 = v1620 ^ __ROR8__(v1618, 61);
  v1622 = (__ROR8__(v1620, 8) + v1621) ^ 0xDA604B0C03A2BF99;
  v1623 = v1622 ^ __ROR8__(v1621, 61);
  v1624 = (__ROR8__(v1622, 8) + v1623) ^ 0xFA35E2CDCB3E31C7;
  v1625 = v1624 ^ __ROR8__(v1623, 61);
  v1626 = (__ROR8__(v1624, 8) + v1625) ^ 0xD2F00CE620E5D3AELL;
  STACK[0x5108] = v1577;
  LODWORD(v1556) = v1556 ^ (((__ROR8__(v1626, 8) + (v1626 ^ __ROR8__(v1625, 61))) ^ 0xF4730B31AE70757BLL) >> v1577) ^ 0xFFFFFFBB ^ (((2 * ((v1593 - 99) * (v1557 + 102) + 11 * (42 * v1557 + 11 * v1593)) + 110) & 0x1E) + 25);
  LODWORD(STACK[0x55F0]) = ((2 * (v1556 & 3)) | (16 * v1556)) - ((4 * v1556) & 8);
  LODWORD(v1609) = ((16 * v1609) | (2 * (v1609 & 3))) ^ 0x41;
  LODWORD(STACK[0x5078]) = v1609 - ((2 * v1609) & 0x88888888);
  LODWORD(v1609) = v1432[12];
  v1627 = (v1432 + 12) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(STACK[0x50D0]) = 2 * v1627;
  v1628 = *(v366 + (v811 & ((v1627 ^ 0x6F1A7724) + 186761716 + ((2 * v1627) & 0xDE34EE40))));
  v1629 = __ROR8__(v1627, 8);
  v1630 = (((2 * (v1628 + v1629)) & 0xD317D02CB586F8B8) - (v1628 + v1629) + 0x167417E9A53C83A3) ^ 0xAEFC163D44FBE0F0;
  v1631 = v1630 ^ __ROR8__(v1628, 61);
  v1632 = (__ROR8__(v1630, 8) + v1631) ^ 0x38C8B16AE7056877;
  v1633 = v1632 ^ __ROR8__(v1631, 61);
  v1634 = __ROR8__(v1632, 8);
  v1635 = __ROR8__((((2 * (v1634 + v1633)) | 0xD2FF8D0E07A542BELL) - (v1634 + v1633) - 0x697FC68703D2A15FLL) ^ 0x8CFF77FA8F17440ELL, 8);
  v1636 = (((2 * (v1634 + v1633)) | 0xD2FF8D0E07A542BELL) - (v1634 + v1633) - 0x697FC68703D2A15FLL) ^ 0x8CFF77FA8F17440ELL ^ __ROR8__(v1633, 61);
  v1637 = (v1635 + v1636) ^ 0xE1A1FD5BD155F97ALL;
  v1638 = v1637 ^ __ROR8__(v1636, 61);
  v1639 = __ROR8__(v1637, 8);
  v1640 = (((v1639 + v1638) | 0xA1F24C5DB3DBFBF9) - ((v1639 + v1638) | 0x5E0DB3A24C240406) + 0x5E0DB3A24C240406) ^ 0x7B920751B0794460;
  v1641 = v1640 ^ __ROR8__(v1638, 61);
  v1642 = __ROR8__(v1640, 8);
  v1643 = (((v1642 + v1641) | 0xDA272799A45B480ALL) - ((v1642 + v1641) | 0x25D8D8665BA4B7F5) + 0x25D8D8665BA4B7F5) ^ 0x2012C5546F6579CDLL;
  v1644 = v1643 ^ __ROR8__(v1641, 61);
  v1645 = (__ROR8__(v1643, 8) + v1644) ^ 0xD2F00CE620E5D3AELL;
  v1646 = v1645 ^ __ROR8__(v1644, 61);
  v1647 = __ROR8__(v1645, 8);
  v1648 = 8 * ((v1432 + 12) & 7);
  LODWORD(v1557) = (((((2 * (v1647 + v1646)) & 0x1FCF23A294B048B8) - (v1647 + v1646) + 0x70186E2EB5A7DBA3) ^ 0x846B651F1BD7AED8) >> v1648) ^ v1609;
  LODWORD(v1557) = ((v1557 ^ 0xFFFFFFD9) + 88) ^ ((v1557 ^ 0xFFFFFFC1) + 80) ^ ((v1557 ^ 0x18) - 105);
  v1649 = *(v366 + (v983 & (((v1432 + 12) & 0x3A59E288) + ((v1432 + 12) & 0xC5A61D70 | 0x3A59E28D) + 1071797901)));
  v1650 = (v1649 + v1629 - ((2 * (v1649 + v1629)) & 0x3DE1FF92AA90F4DCLL) - 0x610F0036AAB78592) ^ 0x2678FE1DB48F193DLL;
  v1651 = v1650 ^ __ROR8__(v1649, 61);
  v1652 = (__ROR8__(v1650, 8) + v1651) ^ 0x38C8B16AE7056877;
  v1653 = v1652 ^ __ROR8__(v1651, 61);
  v1654 = __ROR8__(v1652, 8);
  v1655 = __ROR8__((v1654 + v1653 - ((2 * (v1654 + v1653)) & 0xBF8DCD1FEB855A1ALL) + 0x5FC6E68FF5C2AD0DLL) ^ 0xBA4657F27907485CLL, 8);
  v1656 = (v1654 + v1653 - ((2 * (v1654 + v1653)) & 0xBF8DCD1FEB855A1ALL) + 0x5FC6E68FF5C2AD0DLL) ^ 0xBA4657F27907485CLL ^ __ROR8__(v1653, 61);
  v1657 = (v1655 + v1656) ^ 0xE1A1FD5BD155F97ALL;
  v1658 = v1657 ^ __ROR8__(v1656, 61);
  v1659 = __ROR8__(v1657, 8);
  v1660 = (v1659 + v1658 - ((2 * (v1659 + v1658)) & 0x74831852F61F84C2) - 0x45BE73D684F03D9FLL) ^ 0x6021C72578AD7DF8;
  v1661 = v1660 ^ __ROR8__(v1658, 61);
  v1662 = (__ROR8__(v1660, 8) + v1661) ^ 0xFA35E2CDCB3E31C7;
  v1663 = v1662 ^ __ROR8__(v1661, 61);
  v1664 = (__ROR8__(v1662, 8) + v1663) ^ 0xD2F00CE620E5D3AELL;
  v1665 = v1664 ^ __ROR8__(v1663, 61);
  v1666 = __ROR8__(v1664, 8);
  LODWORD(v1665) = (((((2 * (v1666 + v1665)) | 0x3D63A32C9159F06ALL) - (v1666 + v1665) - 0x1EB1D19648ACF835) ^ 0xEAC2DAA7E6DC8D4ELL) >> v1648) ^ v1609;
  LODWORD(v1665) = ((v1665 ^ 0x16) - 108) ^ ((v1665 ^ 0x6D) - 23) ^ ((v1665 ^ 0x7B) - 1);
  LODWORD(v1664) = (v1557 - 116) * (v1665 - 9);
  LODWORD(v1557) = 5 * v1665 + 99 * v1557;
  STACK[0x50E0] = v1627;
  v1667 = *(v366 + (v811 & (((((v1432 + 12) & 0xD94060F0 | 0x26BF9F0D) + ((v1432 + 12) & 0x26BF9F08 | 0xD94060F2) - 650092301) & 0xFFFFFFF8) - 1594107864)));
  LODWORD(v1557) = v1664 + 97 * v1557;
  STACK[0x50D8] = v1629;
  v1668 = (v1667 + v1629) ^ 0xB88801D4E1C76353;
  v1669 = v1668 ^ __ROR8__(v1667, 61);
  v1670 = (__ROR8__(v1668, 8) + v1669) ^ 0x38C8B16AE7056877;
  v1671 = v1670 ^ __ROR8__(v1669, 61);
  v1672 = (__ROR8__(v1670, 8) + v1671) ^ 0xE580B17D8CC5E551;
  v1673 = v1672 ^ __ROR8__(v1671, 61);
  v1674 = (__ROR8__(v1672, 8) + v1673) ^ 0xE1A1FD5BD155F97ALL;
  v1675 = v1674 ^ __ROR8__(v1673, 61);
  v1676 = __ROR8__(v1674, 8);
  v1677 = (v1676 + v1675 - ((2 * (v1676 + v1675)) & 0x7E42F5A8D39FDEAALL) + 0x3F217AD469CFEF55) ^ 0xE54131D86A6D50CCLL;
  v1678 = v1677 ^ __ROR8__(v1675, 61);
  v1679 = __ROR8__(v1677, 8);
  v1680 = __ROR8__((v1679 + v1678 - ((2 * (v1679 + v1678)) & 0x704F8EAC43106C54) + 0x3827C7562188362ALL) ^ 0xC212259BEAB607EDLL, 8);
  v1681 = (v1679 + v1678 - ((2 * (v1679 + v1678)) & 0x704F8EAC43106C54) + 0x3827C7562188362ALL) ^ 0xC212259BEAB607EDLL ^ __ROR8__(v1678, 61);
  v1682 = (((2 * (v1680 + v1681)) & 0x96406D6D178FD08CLL) - (v1680 + v1681) - 0x4B2036B68BC7E847) ^ 0x662FC5AF54DDC417;
  STACK[0x50C8] = v1648;
  LODWORD(v1609) = v1609 ^ (((__ROR8__(v1682, 8) + (v1682 ^ __ROR8__(v1681, 61))) ^ 0xF4730B31AE70757BLL) >> v1648);
  LODWORD(v1682) = v1432[2];
  v1683 = v1432[6];
  LOBYTE(v1521) = LODWORD(STACK[0x5720]) ^ 0xA8;
  v1684 = STACK[0x57C0];
  STACK[0x5650] = STACK[0x57C0] + 5180;
  v1684[5180] = v1521;
  v1684[3388] = ((LODWORD(STACK[0x5120]) - 56) ^ 2) - 4;
  v1685 = (v1432 + 6) & 0xFFFFFFFFFFFFFFF8;
  v1686 = *(v366 + (v983 & (((v1432 + 6) & 0xFFFFFFF8 ^ 0x8F844917) - 357044221 + ((2 * ((v1432 + 6) & 0xFFFFFFF8)) & 0x1F089220))));
  v1687 = __ROR8__(v1685, 8);
  v1688 = (v1686 + v1687) ^ 0xB88801D4E1C76353;
  v1689 = v1688 ^ __ROR8__(v1686, 61);
  v1690 = (__ROR8__(v1688, 8) + v1689) ^ 0x38C8B16AE7056877;
  v1691 = v1690 ^ __ROR8__(v1689, 61);
  v1692 = __ROR8__(v1690, 8);
  v1693 = (((v1692 + v1691) | 0x2A0D103CE6E429AELL) - ((v1692 + v1691) | 0xD5F2EFC3191BD651) - 0x2A0D103CE6E429AFLL) ^ 0xCF8DA1416A21CCFFLL;
  v1694 = v1693 ^ __ROR8__(v1691, 61);
  v1695 = __ROR8__(v1693, 8);
  v1696 = (v1695 + v1694 - ((2 * (v1695 + v1694)) & 0xB25597757382B240) + 0x592ACBBAB9C15920) ^ 0xB88B36E16894A05ALL;
  v1697 = v1696 ^ __ROR8__(v1694, 61);
  v1698 = __ROR8__(v1696, 8);
  v1699 = (((2 * (v1698 + v1697)) & 0xEF6F76615F436BC6) - (v1698 + v1697) - 0x77B7BB30AFA1B5E4) ^ 0x52280FC353FCF585;
  v1700 = v1699 ^ __ROR8__(v1697, 61);
  v1701 = (__ROR8__(v1699, 8) + v1700) ^ 0xFA35E2CDCB3E31C7;
  v1702 = v1701 ^ __ROR8__(v1700, 61);
  v1703 = (__ROR8__(v1701, 8) + v1702) ^ 0xD2F00CE620E5D3AELL;
  v1704 = 8 * ((v1432 + 6) & 7);
  LODWORD(v1655) = (((__ROR8__(v1703, 8) + (v1703 ^ __ROR8__(v1702, 61))) ^ 0xF4730B31AE70757BLL) >> v1704) ^ v1683;
  LODWORD(v1655) = LODWORD(STACK[0x4E44]) + 110 * (((v1655 ^ 0x79) - 102) ^ ((v1655 ^ 0xC) - 19) ^ ((v1655 ^ 0x75) - 106));
  v1684[1332] = LODWORD(STACK[0x5130]) ^ 0xC6;
  LODWORD(v1703) = v1609 ^ 0xFFFFFFE5 ^ (86 * (v1557 - 58) - ((-84 * (v1557 - 58)) & 0xFFFFFF9F) - 50);
  v1705 = STACK[0x51E8];
  LODWORD(v1609) = *STACK[0x51E8] & 0xFFFFFFF8;
  v1706 = STACK[0x51F0];
  v1707 = *STACK[0x51F0];
  v1708 = *(v1707 + (v1609 & (v1685 + 2050767130)));
  v1709 = (v1708 + v1687 - ((2 * (v1708 + v1687)) & 0xE1DADB967F3EDEAALL) + 0x70ED6DCB3F9F6F55) ^ 0xC8656C1FDE580C06;
  v1710 = v1709 ^ __ROR8__(v1708, 61);
  v1711 = (__ROR8__(v1709, 8) + v1710) ^ 0x38C8B16AE7056877;
  v1712 = v1711 ^ __ROR8__(v1710, 61);
  v1713 = (__ROR8__(v1711, 8) + v1712) ^ 0xE580B17D8CC5E551;
  v1714 = v1713 ^ __ROR8__(v1712, 61);
  v1715 = __ROR8__(v1713, 8);
  v1716 = (((v1715 + v1714) ^ 0xADFA875FA32BEA04 | 0x4836D9B517A01B7DLL) - ((v1715 + v1714) ^ 0xADFA875FA32BEA04 | 0xB7C9264AE85FE482) - 0x4836D9B517A01B7ELL) ^ 0x46DA3B165DE0803;
  v1717 = v1716 ^ __ROR8__(v1714, 61);
  v1718 = (__ROR8__(v1716, 8) + v1717) ^ 0xDA604B0C03A2BF99;
  v1719 = v1718 ^ __ROR8__(v1717, 61);
  v1720 = (__ROR8__(v1718, 8) + v1719) ^ 0xFA35E2CDCB3E31C7;
  v1721 = v1720 ^ __ROR8__(v1719, 61);
  v1722 = __ROR8__(v1720, 8);
  v1723 = (((2 * (v1722 + v1721)) & 0x5BFB7051F0DD30F8) - (v1722 + v1721) - 0x2DFDB828F86E987DLL) ^ 0xF24B312774B42DLL;
  v1724 = v1723 ^ __ROR8__(v1721, 61);
  v1725 = __ROR8__(v1723, 8);
  LODWORD(v1655) = ((((((v1725 + v1724) ^ 0xBA0EA0B715484AC1) - ((2 * ((v1725 + v1724) ^ 0xBA0EA0B715484AC1)) & 0xF2EA704E887508E2) - 0x68AC7D8BBC57B8FLL) ^ 0xB70893A1FF02BBCBLL) >> v1704) ^ v1683) * v1655;
  v1684[3344] = (((LODWORD(STACK[0x56C0]) - 85) & 0xFE) - 6) ^ 0x62;
  LOBYTE(v1724) = LODWORD(STACK[0x5680]) ^ 0x6A;
  STACK[0x5630] = (v1684 + 5334);
  v1684[5334] = v1724;
  v1684[2371] = LODWORD(STACK[0x5730]) ^ 0x2C;
  HIDWORD(v1725) = v1703;
  LODWORD(v1725) = (v1703 & 3) << 29;
  v1684[2305] = (LODWORD(STACK[0x5140]) + 120) ^ 0x3E;
  v1684[2283] = (LODWORD(STACK[0x5128]) - 62) ^ 7;
  STACK[0x5140] = v1685;
  v1684[1288] = 16;
  v1726 = *(v1707 + (v1609 & (((v1432 + 6) & 0xFFFFFFF8) + 566223436 - ((v1432 + 6) & 0xA783AE08) + ((v1432 + 6) & 0xA783AE08 | 0x587C51F7) + 1239)));
  LOBYTE(v1609) = (v1725 >> 28) - ((2 * (v1725 >> 28)) & 0xBB);
  STACK[0x5128] = v1687;
  v1727 = (v1726 + v1687 - ((2 * (v1726 + v1687)) & 0xDCFA988286778292) - 0x1182B3BEBCC43EB7) ^ 0x56F54D95A2FCA21ALL;
  v1728 = v1727 ^ __ROR8__(v1726, 61);
  v1729 = (__ROR8__(v1727, 8) + v1728) ^ 0x38C8B16AE7056877;
  v1730 = v1729 ^ __ROR8__(v1728, 61);
  v1731 = __ROR8__(v1729, 8);
  v1732 = (((2 * (v1731 + v1730)) & 0x7A8695A5A4F3079ELL) - (v1731 + v1730) + 0x42BCB52D2D867C30) ^ 0xA73C0450A1439961;
  v1733 = v1732 ^ __ROR8__(v1730, 61);
  v1734 = __ROR8__(v1732, 8);
  v1735 = (((2 * (v1734 + v1733)) & 0x7F25AF2FA58C0FA6) - (v1734 + v1733) - 0x3F92D797D2C607D4) ^ 0x21CCD533FC6C0156;
  v1736 = v1735 ^ __ROR8__(v1733, 61);
  v1737 = (__ROR8__(v1735, 8) + v1736) ^ 0xDA604B0C03A2BF99;
  v1738 = v1737 ^ __ROR8__(v1736, 61);
  v1739 = (__ROR8__(v1737, 8) + v1738) ^ 0xFA35E2CDCB3E31C7;
  v1740 = v1739 ^ __ROR8__(v1738, 61);
  v1741 = __ROR8__(v1739, 8);
  v1742 = (((2 * (v1741 + v1740)) | 0x4FCB18BCF862EEF0) - (v1741 + v1740) + 0x581A73A183CE8888) ^ 0x751580B85CD4A4D6;
  STACK[0x5130] = v1704;
  LODWORD(v1740) = (((__ROR8__(v1742, 8) + (v1742 ^ __ROR8__(v1740, 61))) ^ 0xF4730B31AE70757BLL) >> v1704) ^ v1683 ^ (v1655 + (~(2 * v1655) | 0x57) - 42);
  v1684[1464] = (LODWORD(STACK[0x5670]) | 8) ^ 0x4E;
  v1743 = (((v1432 + 2) & 0xFFFFFFF8) + 2050767130) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v1723) = *v1705;
  v1744 = *v1706;
  v1745 = *(*v1706 + (*v1705 & v1743));
  v1746 = __ROR8__((v1432 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v1747 = (v1745 + v1746) ^ 0xB88801D4E1C76353;
  v1748 = v1747 ^ __ROR8__(v1745, 61);
  v1749 = __ROR8__(v1747, 8);
  v1750 = (((v1749 + v1748) | 0x84F7764228A9BFBALL) - ((v1749 + v1748) | 0x7B0889BDD7564045) + 0x7B0889BDD7564045) ^ 0xBC3FC728CFACD7CDLL;
  v1751 = v1750 ^ __ROR8__(v1748, 61);
  v1752 = __ROR8__(v1750, 8);
  v1753 = (((2 * (v1752 + v1751)) & 0xF4F17D871FA0AE60) - (v1752 + v1751) + 0x587413C702FA8CFLL) ^ 0xE007F041FCEA4D9ELL;
  v1754 = v1753 ^ __ROR8__(v1751, 61);
  v1755 = __ROR8__(v1753, 8);
  v1756 = (((2 * (v1755 + v1754)) | 0xB06CD90C22D1974) - (v1755 + v1754) - 0x58366C861168CBALL) ^ 0xE4229B93B04375C0;
  v1757 = v1756 ^ __ROR8__(v1754, 61);
  v1758 = __ROR8__(v1756, 8);
  v1759 = __ROR8__((((v1758 + v1757) | 0xD83AB937AB3DF1CDLL) - ((v1758 + v1757) | 0x27C546C854C20E32) + 0x27C546C854C20E32) ^ 0x25AF23BA89F4E54, 8);
  v1760 = (((v1758 + v1757) | 0xD83AB937AB3DF1CDLL) - ((v1758 + v1757) | 0x27C546C854C20E32) + 0x27C546C854C20E32) ^ 0x25AF23BA89F4E54 ^ __ROR8__(v1757, 61);
  v1761 = (v1759 + v1760 - ((2 * (v1759 + v1760)) & 0xD220AD2C5E3B6ADELL) + 0x691056962F1DB56FLL) ^ 0x9325B45BE42384A8;
  v1762 = v1761 ^ __ROR8__(v1760, 61);
  v1763 = __ROR8__(v1761, 8);
  v1764 = (((2 * (v1763 + v1762)) | 0xDCED0C9DC0E8B898) - (v1763 + v1762) + 0x118979B11F8BA3B4) ^ 0x3C868AA8C0918FE2;
  v1765 = v1764 ^ __ROR8__(v1762, 61);
  v1766 = __ROR8__(v1764, 8);
  v1767 = 8 * ((v1432 + 2) & 7);
  LODWORD(v1557) = (((((2 * (v1766 + v1765)) & 0xD2748534E121B1BCLL) - (v1766 + v1765) + 0x16C5BD658F6F2721) ^ 0xE2B6B654211F525ALL) >> v1767) ^ v1682;
  LODWORD(v1557) = ((v1557 ^ 0xA) - 127) ^ ((v1557 ^ 0x4F) - 58) ^ ((v1557 ^ 0x45) - 48);
  STACK[0x5120] = (v1432 + 2) & 0xFFFFFFFFFFFFFFF8;
  v1768 = *(v1744 + ((((v1432 + 2) & 0xA3FAD588) + ((v1432 + 2) & 0x5C052A70 | 0xA3FAD588) - 700357742) & v1723 & 0xFFFFFFF8));
  v1769 = (v1768 + v1746) ^ 0xB88801D4E1C76353;
  v1770 = v1769 ^ __ROR8__(v1768, 61);
  v1771 = __ROR8__(v1769, 8);
  v1772 = (((2 * (v1771 + v1770)) & 0xC3099B4CD044C71CLL) - (v1771 + v1770) + 0x1E7B325997DD9C71) ^ 0x26B3833370D8F406;
  v1773 = v1772 ^ __ROR8__(v1770, 61);
  v1774 = (__ROR8__(v1772, 8) + v1773) ^ 0xE580B17D8CC5E551;
  v1775 = v1774 ^ __ROR8__(v1773, 61);
  v1776 = (__ROR8__(v1774, 8) + v1775) ^ 0xE1A1FD5BD155F97ALL;
  v1777 = v1776 ^ __ROR8__(v1775, 61);
  v1778 = (__ROR8__(v1776, 8) + v1777) ^ 0xDA604B0C03A2BF99;
  v1779 = v1778 ^ __ROR8__(v1777, 61);
  v1780 = (__ROR8__(v1778, 8) + v1779) ^ 0xFA35E2CDCB3E31C7;
  v1781 = v1780 ^ __ROR8__(v1779, 61);
  v1782 = (__ROR8__(v1780, 8) + v1781) ^ 0xD2F00CE620E5D3AELL;
  v1783 = __ROR8__(v1782, 8);
  v1784 = __ROR8__(v1781, 61);
  LODWORD(v1781) = (((((2 * (v1783 + (v1782 ^ v1784))) | 0x1FB9FA4810108BDCLL) - (v1783 + (v1782 ^ v1784)) + 0x702302DBF7F7BA12) ^ 0x7BAFF615A6783095) >> v1767) ^ v1682;
  LODWORD(v1781) = ((v1781 ^ 0xFFFFFFF9) + 107) ^ ((v1781 ^ 0xFFFFFFAF) + 61) ^ ((v1781 ^ 0x56) - 58);
  LODWORD(v1557) = (v1557 - 104) * (v1781 - 46) + 73 * (-11 * v1781 - 54 * v1557);
  v1684[491] = (((LODWORD(STACK[0x5168]) - 61) & 0xFE) - 8) ^ 0x7C;
  LOBYTE(v1781) = LODWORD(STACK[0x50C0]) ^ 0xC6;
  STACK[0x56C0] = (v1684 + 4229);
  v1684[4229] = v1781;
  v1684[3300] = (((LODWORD(STACK[0x56E0]) + 45) & 0xFE) - 4) ^ 0xEE;
  v1785 = *(*v1706 + (*v1705 & v1743));
  STACK[0x5168] = v1746;
  v1786 = (v1785 + v1746) ^ 0xB88801D4E1C76353;
  v1787 = v1786 ^ __ROR8__(v1785, 61);
  v1788 = __ROR8__(v1786, 8);
  v1789 = (((2 * (v1788 + v1787)) | 0x7D4500791DF53ABELL) - (v1788 + v1787) - 0x3EA2803C8EFA9D5FLL) ^ 0x66A315669FFF528;
  v1790 = v1789 ^ __ROR8__(v1787, 61);
  v1791 = __ROR8__(v1789, 8);
  v1792 = (((v1791 + v1790) | 0x7504F655FDC965BFLL) - ((v1791 + v1790) | 0x8AFB09AA02369A40) - 0x7504F655FDC965C0) ^ 0x90844728710C80EELL;
  v1793 = v1792 ^ __ROR8__(v1790, 61);
  v1794 = __ROR8__(v1792, 8);
  v1795 = (((2 * (v1794 + v1793)) & 0x35B167E14321186) - (v1794 + v1793) - 0x1AD8B3F0A1908C4) ^ 0x1FF3899B24B30E46;
  v1796 = v1795 ^ __ROR8__(v1793, 61);
  v1797 = (__ROR8__(v1795, 8) + v1796) ^ 0xDA604B0C03A2BF99;
  v1798 = v1797 ^ __ROR8__(v1796, 61);
  v1799 = (__ROR8__(v1797, 8) + v1798) ^ 0xFA35E2CDCB3E31C7;
  v1800 = v1799 ^ __ROR8__(v1798, 61);
  v1801 = (__ROR8__(v1799, 8) + v1800) ^ 0xD2F00CE620E5D3AELL;
  v1802 = __ROR8__(v1801, 8);
  v1803 = __ROR8__(v1800, 61);
  v1804 = ((2 * (v1802 + (v1801 ^ v1803))) & 0x6FE54AB1BB481036) - (v1802 + (v1801 ^ v1803));
  LOBYTE(v1801) = (LODWORD(STACK[0x5660]) + 35) & 0xFE ^ 0xE4;
  STACK[0x5680] = (v1684 + 5224);
  v1684[5224] = v1801;
  LOBYTE(v1801) = (2 * (v1740 & 3)) | (16 * v1740);
  LOBYTE(v1740) = (LODWORD(STACK[0x5180]) + 73) & 0xFE ^ 0x8E;
  STACK[0x56E0] = (v1684 + 5246);
  v1684[5246] = v1740;
  v1684[2327] = (((-LODWORD(STACK[0x5290]) - 125) & 0xFE) - 4) ^ 0xB8;
  STACK[0x5180] = v1767;
  LODWORD(v1557) = v1682 ^ (((v1804 + 0x480D5AA7225BF7E4) ^ 0xBC7E51968C2B829FLL) >> v1767) ^ (-86 * (v1557 - 84) - ((84 * (v1557 - 84)) & 0xFFFFFF94) + 74);
  LOBYTE(v1804) = (LODWORD(STACK[0x51A0]) - 83) & 0xFE ^ 0x6A;
  STACK[0x5720] = (v1684 + 4295);
  v1684[4295] = v1804;
  LOBYTE(v1804) = (LODWORD(STACK[0x5178]) + 30) ^ 0x18;
  STACK[0x5660] = (v1684 + 5202);
  v1684[5202] = v1804;
  v1684[3256] = (v1801 | 8) ^ 0x8E;
  v1684[2393] = LODWORD(STACK[0x5700]) ^ 0x31;
  v1684[2415] = (LODWORD(STACK[0x5100]) - 38) ^ 0x9C;
  v1684[2349] = (LODWORD(STACK[0x5118]) - 37) ^ 0x1C;
  v1684[3278] = (LODWORD(STACK[0x56F0]) + 18) & 0xFE ^ 0xD6;
  LOBYTE(v1804) = (LODWORD(STACK[0x50B8]) - 61) ^ 4;
  STACK[0x5600] = (v1684 + 4317);
  v1684[4317] = v1804;
  LOBYTE(v1804) = (LODWORD(STACK[0x56D0]) + 101) ^ 0x24;
  STACK[0x5610] = (v1684 + 4339);
  v1684[4339] = v1804;
  v1684[469] = (LODWORD(STACK[0x5170]) + 123) ^ 0xBD;
  v1684[1442] = (LODWORD(STACK[0x5218]) - 26) ^ 0xA0;
  LOBYTE(v1687) = (LODWORD(STACK[0x5078]) - 52) ^ 0x4B;
  STACK[0x5700] = (v1684 + 4273);
  v1684[4273] = v1687;
  v1684[337] = LODWORD(STACK[0x5710]) ^ 0xC6;
  v1684[3366] = ((LODWORD(STACK[0x5200]) ^ 8) - 4) ^ 0xC2;
  v1684[425] = (LODWORD(STACK[0x51A8]) - 60) ^ 0x42;
  LOBYTE(v1687) = (LODWORD(STACK[0x5138]) - 40) & 0xFE ^ 0x10;
  STACK[0x56D0] = (v1684 + 4251);
  v1684[4251] = v1687;
  v1684[1354] = (LODWORD(STACK[0x5620]) + 78) ^ 0x88;
  v1684[381] = (LODWORD(STACK[0x51B0]) - 51) ^ 0xC;
  LOBYTE(v1687) = LODWORD(STACK[0x51C8]) ^ 0xEC;
  STACK[0x56F0] = (v1684 + 5268);
  v1684[5268] = v1687;
  v1684[359] = (LODWORD(STACK[0x5190]) - 108) & 0xFE ^ 0x54;
  v1684[1420] = (LODWORD(STACK[0x5188]) + 52) ^ 0xF2;
  STACK[0x5620] = (v1684 + 4361);
  v1684[4361] = (((v1609 + 87) & 0xFE) - 2) ^ 0x92;
  v1684[1310] = (LODWORD(STACK[0x5198]) + 22) ^ 0x90;
  v1684[2437] = (LODWORD(STACK[0x55F0]) + 4) ^ 0xC2;
  LOBYTE(v1609) = LODWORD(STACK[0x5228]) ^ 0xC6;
  STACK[0x5670] = (v1684 + 4207);
  v1684[4207] = v1609;
  v1684[1398] = (LODWORD(STACK[0x5098]) - 68) ^ 0x7A;
  v1684[3322] = (LODWORD(STACK[0x51C0]) - 96) ^ 0xA6;
  LOBYTE(v1609) = (LODWORD(STACK[0x5080]) - 107) ^ 0xD3;
  STACK[0x5710] = (v1684 + 5290);
  v1684[5290] = v1609;
  STACK[0x55F0] = (v1684 + 5312);
  v1684[5312] = (((2 * (v1557 ^ 0xFB)) & 6 | (16 * (v1557 ^ 0xFB))) - 2 * (((2 * (v1557 ^ 0xFB)) & 6 | (16 * (v1557 ^ 0xFB)) & 0x66) ^ (2 * (v1557 ^ 0xFB)) & 2) + 108) ^ 0xAA;
  v1684[1376] = (LODWORD(STACK[0x50A0]) - 116) ^ 0xA;
  v1684[3410] = (LODWORD(STACK[0x5088]) + 98) ^ 0xA4;
  v1684[403] = ((16 * LOBYTE(STACK[0x5090])) | (2 * (STACK[0x5090] & 3))) ^ 0xC6;
  LODWORD(v1609) = LODWORD(STACK[0x50A8]) ^ 0x2D ^ (LODWORD(STACK[0x50B0]) + 15);
  v1684[447] = (((16 * v1609) | (2 * (v1609 & 3))) - ((2 * ((16 * v1609) | (2 * (v1609 & 3)))) & 0xC7) - 22) ^ 0x2C;
  v1684[2239] = -20;
  STACK[0x5740] = (v1684 + 5158);
  v1684[5158] = 27;
  v1684[315] = -30;
  v1684[293] = 7;
  LODWORD(v1687) = LODWORD(STACK[0x57A0]) ^ 0x1CF6;
  v1684[3212] = 78;
  v1684[1266] = 35;
  STACK[0x5730] = (v1684 + 4185);
  v1684[4185] = -18;
  return (*(STACK[0x57D8] + 8 * v1687))();
}

uint64_t sub_1007ED828@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x77BC]) = a1;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 + 9192)))((a1 - 103679699));
  STACK[0x7658] = v3;
  return (*(v2 + 8 * (((v3 == 0) | (16 * (v3 == 0))) ^ (v1 + 7665))))();
}

uint64_t sub_1007ED8B4@<X0>(int a1@<W8>)
{
  v7 = v5 ^ v6 ^ v1 ^ v2;
  v9 = a1 == v3 && v7 == -143113071;
  return (*(STACK[0x57D8] + 8 * ((((v4 + 560455387) & 0xDE983FF3) - 4269) ^ v4 ^ (v9 * ((v4 + 22613) ^ 0x7BA4)))))();
}

uint64_t sub_1007ED974(int a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v12 = (STACK[0x57A0] & 2) == 0;
  if ((STACK[0x57A0] & 2) != 0)
  {
    v13 = a6;
  }

  else
  {
    v13 = v8;
  }

  LODWORD(STACK[0x51E0]) = v13;
  v14 = STACK[0x5730];
  if (v12)
  {
    v14 = STACK[0x5610];
  }

  LODWORD(STACK[0x5610]) = v14;
  v15 = STACK[0x55E0];
  if (!v12)
  {
    v15 = STACK[0x54C0];
  }

  LODWORD(STACK[0x5460]) = v15;
  v16 = STACK[0x53E0];
  if (!v12)
  {
    v16 = STACK[0x53D8];
  }

  LODWORD(STACK[0x5570]) = v16;
  v17 = (STACK[0x53B8] & 2) == 0;
  if ((STACK[0x53B8] & 2) != 0)
  {
    v18 = v9;
  }

  else
  {
    v18 = v10;
  }

  LODWORD(STACK[0x5210]) = v18;
  v19 = STACK[0x5238];
  if (v17)
  {
    v19 = STACK[0x5218];
  }

  LODWORD(STACK[0x5238]) = v19;
  return (*(STACK[0x57D8] + 8 * a5))(-405863631, a2, 5563 * (a5 ^ 0x4135u), -811727262, v7, v11 + a1 + a7 + ((a7 + a4) >> 16) - ((a7 + a4 + ((a7 + a4) >> 16)) >> 8) - 1);
}

uint64_t sub_1007EDADC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x5577)))(STACK[0x57C0]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1007EDBB0(uint64_t a1, void *a2, _DWORD *a3)
{
  v7 = *(*a2 + (((v5 & 0xFFFFFFF8 ^ (v6 + v3 - 16927 + 3235)) + ((2 * (v5 & 0xFFFFFFF8)) & 0x6CD34950) - 634317464) & *a3));
  v8 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v9 = __ROR8__((((2 * (v7 + v8)) | 0x7236EBAF949F7D18) - (v7 + v8) - 0x391B75D7CA4FBE8CLL) ^ 0x59BF3DD95D395793, 8);
  v10 = (((2 * (v7 + v8)) | 0x7236EBAF949F7D18) - (v7 + v8) - 0x391B75D7CA4FBE8CLL) ^ 0x59BF3DD95D395793 ^ __ROR8__(v7, 61);
  v11 = (((2 * ((v9 + v10) ^ 0x391BD42F83FE5D9BLL)) | 0xE3DD590A78B70670) - ((v9 + v10) ^ 0x391BD42F83FE5D9BLL) + 0xE11537AC3A47CC8) ^ 0xEA78ECFDBCDB4B1ELL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = __ROR8__((a1 - ((v13 + v12) | a1) + ((v13 + v12) | 0x6C0C7E9BB88E1B1FLL)) ^ 0x10D59808844DE96DLL, 8);
  v15 = (a1 - ((v13 + v12) | a1) + ((v13 + v12) | 0x6C0C7E9BB88E1B1FLL)) ^ 0x10D59808844DE96DLL ^ __ROR8__(v12, 61);
  v16 = (v14 + v15) ^ 0xFE8DAF4E81F4BA40;
  v17 = __ROR8__(v16, 8);
  v18 = v16 ^ __ROR8__(v15, 61);
  v19 = (((2 * (v17 + v18)) & 0xE0AE68116A1072E2) - (v17 + v18) - 0x70573408B5083972) ^ 0xAA6040691C0EB1E3;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0xAA00BDB59FB337ACLL) - 0x2AFFA1253026642ALL) ^ 0x6BDE33B83940F4A9;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x239C6C833211B9ABLL;
  *v5 = ((__ROR8__(v24, 8) + (v24 ^ __ROR8__(v23, 61))) ^ 0x6692BF9356155932uLL) >> (8 * (v5 & 7u));
  return (*(STACK[0x57D8] + 8 * ((995 * (v4 != 1)) ^ v3)))();
}

uint64_t sub_1007EDE04(uint64_t a1)
{
  *(a1 + 172) = 0;
  *(a1 + 32) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = -769884012;
  *(a1 + 104) = 0;
  *(a1 + 112) = -769884012;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a1;
  *(a1 + 24) = 0;
  return (*(STACK[0x57D8] + 8 * ((((((v1 ^ 0x5E62) - 8457) ^ 0xFFFFE950) + (((v1 ^ 0x5E62) - 8457) | 0x16A2)) * (v3 == 0)) ^ v1 ^ 0x5E62)))();
}

uint64_t sub_1007EDEAC(int a1)
{
  STACK[0xA470] = 0;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xBE4C];
  LODWORD(STACK[0x9094]) = a1 + 6;
  return (*(STACK[0x57D8] + 8 * v1))();
}

uint64_t sub_1007EDF10@<X0>(int a1@<W8>)
{
  v1 = a1 ^ 0x5050;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * ((a1 ^ 0x5050) + 9207)))();
  return (*(v2 + 8 * (v1 - 15518)))(v3);
}

uint64_t sub_1007EDF44@<X0>(unsigned int a1@<W8>)
{
  v5 = STACK[0x51E0];
  v6 = v3 ^ v4;
  v7 = STACK[0x53F0];
  v8 = STACK[0x5388];
  v9 = STACK[0x5168];
  v10 = STACK[0x4E68];
  v11 = STACK[0x5190];
  LODWORD(STACK[0x5368]) = (((a1 ^ ((a1 & STACK[0x53F0]) >> 1)) & STACK[0x5388]) >> LODWORD(STACK[0x5168])) ^ (((a1 ^ ((a1 & STACK[0x53F0]) >> 1)) & STACK[0x4E68]) << LODWORD(STACK[0x5190]));
  v12 = STACK[0x5148];
  v13 = STACK[0x4E60];
  v14 = STACK[0x53E0];
  v15 = STACK[0x5380];
  v16 = STACK[0x57C0];
  LODWORD(STACK[0x5350]) = (((v6 ^ ((v6 & STACK[0x5148]) >> 1)) & STACK[0x4E60]) >> LODWORD(STACK[0x53E0])) ^ (((v6 ^ ((v6 & STACK[0x5148]) >> 1)) & STACK[0x5380]) << LODWORD(STACK[0x57C0]));
  v17 = v1 ^ v4 ^ (((v1 ^ v4) & v12) >> 1);
  LODWORD(STACK[0x5358]) = ((v17 & v10) << v16) ^ ((v17 & v13) >> v9);
  LODWORD(STACK[0x5360]) = (((v2 ^ ((v2 & v7) >> 1)) & v8) >> v14) + (((v2 ^ ((v2 & v7) >> 1)) & v15) << v11);
  v18 = STACK[0x5298];
  v19 = STACK[0x5370];
  if (STACK[0x5298])
  {
    v20 = STACK[0x5370];
  }

  else
  {
    v20 = STACK[0x51A8];
  }

  v21 = STACK[0x51B0];
  if (v18)
  {
    v22 = STACK[0x51B0];
  }

  else
  {
    v22 = STACK[0x51C0];
  }

  if (v18)
  {
    v21 = STACK[0x51A8];
    v19 = STACK[0x51C0];
  }

  v23 = STACK[0x51D8];
  if (v18)
  {
    v24 = STACK[0x51D8];
  }

  else
  {
    v24 = STACK[0x51C8];
  }

  v25 = STACK[0x51D0];
  if (v18)
  {
    v26 = STACK[0x51D0];
  }

  else
  {
    v26 = STACK[0x5378];
  }

  if (v18)
  {
    v25 = STACK[0x51C8];
    v23 = STACK[0x5378];
  }

  if ((v18 & 2) != 0)
  {
    v27 = v22;
  }

  else
  {
    v27 = v20;
  }

  LODWORD(STACK[0x51A8]) = v27;
  if ((v18 & 2) == 0)
  {
    v20 = v22;
  }

  LODWORD(STACK[0x51C0]) = v20;
  if ((v18 & 2) != 0)
  {
    v28 = v19;
  }

  else
  {
    v28 = v21;
  }

  LODWORD(STACK[0x51B0]) = v28;
  if ((v18 & 2) != 0)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  LODWORD(STACK[0x51C8]) = v29;
  if ((v18 & 2) != 0)
  {
    v30 = v23;
  }

  else
  {
    v30 = v25;
  }

  LODWORD(STACK[0x51D0]) = v30;
  if ((v18 & 2) != 0)
  {
    v31 = v25;
  }

  else
  {
    v31 = v23;
  }

  LODWORD(STACK[0x51D8]) = v31;
  return (*(STACK[0x57D8] + 8 * v5))();
}

uint64_t sub_1007EE1B4@<X0>(int a1@<W6>, unsigned int a2@<W8>)
{
  v4 = LODWORD(STACK[0x5570]) ^ LODWORD(STACK[0x5650]);
  v5 = LODWORD(STACK[0x5108]) - LODWORD(STACK[0x53F0]);
  LODWORD(STACK[0x53F0]) = LODWORD(STACK[0x53E8]) ^ 0x25CC318;
  LODWORD(STACK[0x5540]) = LODWORD(STACK[0x5200]) ^ v5;
  LODWORD(STACK[0x5520]) = LODWORD(STACK[0x51D0]) + LODWORD(STACK[0x51E0]) + v4 + 1;
  v6 = STACK[0x5500];
  LODWORD(STACK[0x51D0]) = LODWORD(STACK[0x5110]) - LODWORD(STACK[0x5500]);
  LODWORD(STACK[0x5200]) = LODWORD(STACK[0x5530]) + LODWORD(STACK[0x5158]) + LODWORD(STACK[0x50F0]) + 1;
  LODWORD(STACK[0x5570]) = LODWORD(STACK[0x56C0]) ^ v6 ^ 0xD663D90A ^ LODWORD(STACK[0x50F8]);
  LODWORD(STACK[0x5650]) = LODWORD(STACK[0x5128]) + LODWORD(STACK[0x50E8]);
  LODWORD(STACK[0x51E0]) = LODWORD(STACK[0x5510]) ^ 0xBA7E269C;
  v7 = (((v3 ^ 0x190FE7E2EA023527) - ((v3 ^ 0x190FE7E2EA023527uLL) >> 30)) >> (-85 * (a2 ^ 0xFB) - 73)) + (v3 ^ 0x190FE7E2EA023527) - ((v3 ^ 0x190FE7E2EA023527uLL) >> 30);
  v8 = v7 - (v7 >> 7);
  v9 = (v8 ^ 0x63C7C67B3D8D0ED6) + ((v8 ^ 0x63C7C67B3D8D0ED6) >> 24) + (((v8 ^ 0x63C7C67B3D8D0ED6) + ((v8 ^ 0x63C7C67B3D8D0ED6) >> 24)) >> 13) - (((v8 ^ 0x63C7C67B3D8D0ED6) + ((v8 ^ 0x63C7C67B3D8D0ED6) >> 24) + (((v8 ^ 0x63C7C67B3D8D0ED6) + ((v8 ^ 0x63C7C67B3D8D0ED6) >> 24)) >> 13)) >> 6);
  v10 = (v9 ^ 0xDDFAC0FD6E2FA4DBLL) + ((v9 ^ 0xDDFAC0FD6E2FA4DBLL) >> 26) + (((v9 ^ 0xDDFAC0FD6E2FA4DBLL) + ((v9 ^ 0xDDFAC0FD6E2FA4DBLL) >> 26)) >> 14);
  v11 = v10 - (v10 >> 1);
  v12 = v11 - 0x122AEC67E2EBEE5ELL + ((v11 - 0x122AEC67E2EBEE5ELL) >> 24) - ((v11 - 0x122AEC67E2EBEE5ELL + ((v11 - 0x122AEC67E2EBEE5ELL) >> 24)) >> 13);
  v13 = v12 + (v12 >> 5) - 0x4D35EDA7233725F1 - ((v12 + (v12 >> 5) - 0x4D35EDA7233725F1) >> 24) - ((v12 + (v12 >> 5) - 0x4D35EDA7233725F1 - ((v12 + (v12 >> 5) - 0x4D35EDA7233725F1) >> 24)) >> 15);
  v14 = v13 + (v13 >> 3) + 0x3A889493B9EAC550 - ((v13 + (v13 >> 3) + 0x3A889493B9EAC550) >> 28) + ((v13 + (v13 >> 3) + 0x3A889493B9EAC550 - ((v13 + (v13 >> 3) + 0x3A889493B9EAC550) >> 28)) >> 12);
  v15 = ((v14 >> 4) ^ v14) + 2 * ((v14 >> 4) & v14);
  LODWORD(v14) = v15 ^ v11;
  v16 = v15 + 0x1F029AA24E928DABLL + ((v15 + 0x1F029AA24E928DABLL) >> 29) - ((v15 + 0x1F029AA24E928DABLL + ((v15 + 0x1F029AA24E928DABLL) >> 29)) >> 9);
  v17 = ((v16 >> 1) ^ v16) + 2 * ((v16 >> 1) & v16);
  v18 = v17 + 0x18F2DB87AFE1ED31 + ((v17 + 0x18F2DB87AFE1ED31) >> 27) + ((v17 + 0x18F2DB87AFE1ED31 + ((v17 + 0x18F2DB87AFE1ED31) >> 27)) >> 12);
  v19 = v18 + (v18 >> 8) - 0x76F2F6D54339999BLL - ((v18 + (v18 >> 8) - 0x76F2F6D54339999BLL) >> 26) - ((v18 + (v18 >> 8) - 0x76F2F6D54339999BLL - ((v18 + (v18 >> 8) - 0x76F2F6D54339999BLL) >> 26)) >> 10);
  return (*(STACK[0x57D8] + 8 * ((31929 * (a2 > 0xD93284EE)) ^ (a2 + 2035445142))))(v14 ^ (v19 - (v19 >> 2)) ^ a1 ^ v2 & (2 * (v14 ^ (v19 - (v19 >> 2)))));
}

uint64_t sub_1007EE598@<X0>(int a1@<W8>)
{
  v1 = a1 & 0x379DE6FF;
  v2 = ((a1 & 0x379DE6FF) + 484861582) ^ LODWORD(STACK[0x11B8]);
  v3 = STACK[0xC5B8];
  v4 = *(STACK[0xC5B8] - 0x1883660EE814440ALL);
  LODWORD(STACK[0xDAE4]) = v4 + 16;
  v5 = *(v3 - 0x1883660EE814440ELL) + 356041875;
  v6 = ((v1 + 484861582) & 0x63193AA4 ^ 0x1538CC87) + v4;
  v7 = v6 < 0x9282390F;
  v8 = v5 < v6;
  if (v7 != v5 < 0x9282390F)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = (STACK[0x5F78] == 0) | v9;
  if (v10)
  {
    v11 = -143155721;
  }

  else
  {
    v11 = -143113071;
  }

  LODWORD(STACK[0xDAE8]) = v11;
  return (*(STACK[0x57D8] + 8 * (v1 ^ (2 * (((v2 + 1) ^ v10) & 1u)))))();
}

uint64_t sub_1007EE698()
{
  LODWORD(STACK[0xA5DC]) = -769884012;
  STACK[0x9B00] = 0;
  LODWORD(STACK[0x8D7C]) = -769884012;
  STACK[0xCF28] = 0;
  STACK[0x8E10] = 0;
  LODWORD(STACK[0x6BE8]) = -769884012;
  STACK[0x76F8] = 0;
  LODWORD(STACK[0x94B0]) = -769884012;
  STACK[0xB9E8] = 0;
  LODWORD(STACK[0x6E94]) = -769884012;
  LODWORD(STACK[0xA14C]) = -769884012;
  LODWORD(STACK[0x8084]) = -769884012;
  STACK[0x9460] = 0;
  LODWORD(STACK[0xCD84]) = -769884012;
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0x6E94];
  LODWORD(STACK[0x9094]) = -32197497;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007EE7B0@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W5>, uint64_t a4@<X8>)
{
  v8 = *(v7 + a2) * v4;
  v9 = ((v8 ^ a3) + a2 + (((v8 ^ a3) + a2) >> 16)) >> 8;
  v10 = a2 + v6 + (v8 ^ a3) + (((v8 ^ a3) + a2) >> 16) + v9;
  v11 = (v10 ^ v8) + ((a2 + (v10 ^ v8)) >> ((v5 + 62) & 0xDC ^ 0x4C));
  v12 = ((v8 ^ a3) + a2 + (((v8 ^ a3) + a2) >> 16) + v9) ^ a1 ^ (v11 + a2 + ((v11 + a2) >> 8));
  v13 = ((a2 + v6 + v11 + ((v11 + a2) >> 8)) ^ v8) + a2;
  v14 = a4 == a2;
  v15 = a2 + 1;
  v16 = v12 ^ (v13 + (v13 >> 16) + ((v13 + WORD1(v13)) >> 8));
  v17 = !v14;
  return (*(STACK[0x57D8] + 8 * ((v17 | (4 * v17)) ^ v5)))(v16, v15);
}

uint64_t sub_1007EE954@<X0>(_BYTE *a1@<X8>)
{
  a1[31] = 23 * (((v2[31] ^ 0x47) - 65) ^ ((v2[31] ^ 0x25) - 35) ^ ((v2[31] ^ 0x57) + (((v1 ^ 0xD8) + 83) | 0x90) + 29)) - 69;
  a1[30] = 23 * (((v2[30] ^ 0x8D) - 35) ^ (-82 - v2[30]) ^ ((v2[30] ^ 0xEF) - 65)) - 69;
  a1[29] = 23 * (((v2[29] ^ 0x46) - 35) ^ ((v2[29] ^ 0x34) - 81) ^ ((v2[29] ^ 0x24) - 65)) - 69;
  a1[28] = 23 * (((v2[28] ^ 0x6B) - 35) ^ ((v2[28] ^ 0x19) - 81) ^ ((v2[28] ^ 9) - 65)) - 69;
  a1[27] = 23 * (((v2[27] ^ 0x7A) - 35) ^ ((v2[27] ^ 8) - 81) ^ ((v2[27] ^ 0x18) - 65)) - 69;
  a1[26] = 23 * (((v2[26] ^ 0xEF) - 35) ^ ((v2[26] ^ 0x9D) - 81) ^ ((v2[26] ^ 0x8D) - 65)) - 69;
  a1[25] = 23 * (((v2[25] ^ 0x3A) - 35) ^ ((v2[25] ^ 0x48) - 81) ^ ((v2[25] ^ 0x58) - 65)) - 69;
  return (*(STACK[0x57D8] + 8 * (v1 ^ 0xFF6ACCD8)))();
}

uint64_t sub_1007EEB30()
{
  v2 = v0 + 4 + (v1 ^ 0xF2A9);
  LODWORD(STACK[0xD14C]) = v2;
  v3 = v2 - 1618248582;
  v4 = (((LODWORD(STACK[0xBFE4]) ^ 0x2B97EF94) - 731377556) ^ ((LODWORD(STACK[0xBFE4]) ^ 0x62C1139A) - 1656820634) ^ ((LODWORD(STACK[0xBFE4]) ^ LODWORD(STACK[0x1E50])) + 1689617254)) + 1906834702;
  v5 = v2 > 0x60748385;
  v6 = v5 ^ (v4 < 0x9F8B7C7A);
  v7 = v3 > v4;
  if (!v6)
  {
    v5 = v7;
  }

  return (*(STACK[0x57D8] + 8 * ((45 * !v5) ^ LODWORD(STACK[0x1E2C]))))();
}

uint64_t sub_1007EECCC()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2E1C)))(LODWORD(STACK[0xA150]));
  STACK[0xA2B8] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (v0 ^ 0x68F2 ^ (41 * (v0 ^ 0x534D)))) ^ v0)))();
}

uint64_t sub_1007EED8C()
{
  v1 = STACK[0x51B8] - 20988;
  LOWORD(STACK[0xD14A]) = v0;
  return (*(STACK[0x57D8] + 8 * ((15118 * (v1 != -1256040008)) ^ LODWORD(STACK[0x3E90]))))();
}

uint64_t sub_1007EF264()
{
  STACK[0x5770] = v1;
  v4 = *(STACK[0x57D8] + 8 * v0);
  STACK[0x5790] = v3;
  STACK[0x5780] = v2;
  return v4();
}

uint64_t sub_1007EF38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W8>)
{
  if ((v9 & v5) != 0)
  {
    v13 = v6;
  }

  else
  {
    v13 = v5;
  }

  *(a1 + 4 * v9) = a3 ^ (v4 + 1031) ^ v8 ^ v12 ^ v11 ^ (*(*(a2 + 8 * (a4 - 19306)) + 4 * (v7 ^ (v13 + v9) & (a4 - 19661) ^ 0x85u) - 8) + 2029055621);
  return (*(STACK[0x57D8] + 8 * ((8374 * (v10 == 0)) ^ a4)))();
}

uint64_t sub_1007EF478()
{
  v1 = STACK[0x51B8];
  v2 = STACK[0x58B8];
  v3 = 1534937323 * ((((v0 - 240) | 0xF564B158BB3D3E81) - (v0 - 240) + ((v0 - 240) & 0xA9B4EA744C2C178)) ^ 0x381C399A7DD3C5C6);
  STACK[0x1D4D8] = v3;
  LODWORD(STACK[0x1D4CC]) = v3 + 1451493860 + v1;
  LODWORD(STACK[0x1D4C8]) = ((v1 - 2046275914) ^ 0x106F) - v3;
  LODWORD(STACK[0x1D4D4]) = (v1 - 2046275914) ^ v3;
  LODWORD(STACK[0x1D4E0]) = v3 + v1 - 2046275914 + 222;
  STACK[0x1D4C0] = v2 ^ v3;
  LODWORD(STACK[0x1D4D0]) = v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v1 + 9182)))(v0 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_1007EF598()
{
  v2 = v1 - 11297;
  v3 = STACK[0x57D8];
  v4 = (*(STACK[0x57D8] + 8 * ((v1 - 11297) ^ 0x3829)))(v0 ^ 0xD21C8094) == 0;
  return (*(v3 + 8 * ((((7407 * (v2 ^ 0x4415) - 780639264) & 0x2E87677F ^ 0x51F) * v4) ^ v2)))();
}

uint64_t sub_1007EF664@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v18 = v5 < v7;
  v19 = a2 + v2;
  v20 = v8 + v2;
  v21 = *(*v17 + (((v19 & (v4 ^ 0xFFFF9EC8) ^ 0x47F31D4A) + 651286325 + ((2 * (v19 & (v4 ^ 0xFFFF9EC8))) | 0x7019C569)) & *v9));
  v22 = (__ROR8__(v19 & (v4 ^ 0xFFFFFFFFFFFF9EC8), 8) + v21) ^ v10;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v12;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) & 0xB32437B19490BC4) - (v26 + v25) + 0x7A66DE42735B7A1DLL) ^ 0x8F9420917BF15865 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__((((2 * (v26 + v25)) & 0xB32437B19490BC4) - (v26 + v25) + 0x7A66DE42735B7A1DLL) ^ 0x8F9420917BF15865, 8) + v27) ^ v14;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xF83000EB79A26554) - (v30 + v29) - 0x7C180075BCD132ABLL) ^ 0x7B60BAD4CB3E4759;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v11;
  v34 = *(*v17 + (*v9 & ((v20 & 0xFFFFFFF8) - 555828759) & 0xFFFFFFF8));
  v35 = v33 ^ __ROR8__(v32, 61);
  v36 = (v34 + __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8)) ^ v10;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v33, 8);
  v39 = (__ROR8__(v36, 8) + v37) ^ v12;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a1;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x9899DB6ACF7BA1C2) - 0x33B3124A98422F1FLL) ^ 0xAB1F83759C36847CLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (v16 - ((v38 + v35) | v16) + ((v38 + v35) | 0x7162381FCA5D56CALL)) ^ 0x31ABF7F5F6989D2BLL;
  v48 = (v13 - ((v46 + v45) | v13) + ((v46 + v45) | 0x9A2EA82A37440D8ALL)) ^ 0x62A9ED74BF548786;
  v49 = v48 ^ __ROR8__(v45, 61);
  v50 = __ROR8__(v48, 8) + v49;
  v51 = (((2 * v50) & 0x14674467DB75BC06) - v50 - 0xA33A233EDBADE04) ^ 0xD1BF16A9B3A5A5A5;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v49, 61);
  v54 = (((2 * (v52 + v53)) | 0xE16CBFBA0BF696ECLL) - (v52 + v53) - 0x70B65FDD05FB4B76) ^ 0x307F9037393E8097;
  v55 = v2 + 1;
  *v20 = (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v53, 61))) ^ v15) >> (8 * (v20 & 7u))) ^ (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v35, 61))) ^ v15) >> (8 * (v19 & 7u))) ^ *v19;
  if (v18 == v55 > 0x8AB3AF5E)
  {
    v18 = v55 + v7 < v5;
  }

  return (*(STACK[0x57D8] + 8 * ((!v18 * v6) ^ v3)))();
}

uint64_t sub_1007EF9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 545 * (STACK[0x51B8] ^ 0x5877);
  v7 = STACK[0x57D8];
  v8 = STACK[0x8840];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x1800]));
  return (*(v7 + 8 * (LODWORD(STACK[0x17FC]) ^ v6)))(a1, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_1007EFB3C(int a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = STACK[0x5740];
  LODWORD(STACK[0x53D0]) ^= LODWORD(STACK[0x5640]) ^ LODWORD(STACK[0x5170]) ^ LODWORD(STACK[0x5630]) ^ LODWORD(STACK[0x50A8]);
  v16 = (a4 + v14) >> 16;
  v17 = (a4 + v14 + v16) >> 8;
  v18 = a4 + v16 + v17;
  v19 = v18 + v8;
  v20 = v19 >> 11;
  v21 = STACK[0x5750] + v18;
  v22 = (v21 + (v19 >> 11) - a1) >> ((v15 + 89) & 0xE7 ^ 0x42);
  v23 = v21 + (v19 >> 11) + v22 + a8;
  v24 = v22 + a4;
  v25 = v24 + v11 + (v19 >> 11) + v17 + v16;
  v26 = v25 >> 13;
  v27 = (v25 + (v25 >> 13)) >> 5;
  LODWORD(v19) = v24 + (v25 >> 13) + (v19 >> 11) + v27 + v17 + v16;
  v28 = STACK[0x5750] + v19 - v13;
  v29 = v19 + a7;
  v30 = (v19 + a7) >> 15;
  v31 = (v29 + v30) >> 2;
  v32 = v19 + v30 + a6;
  v33 = (v32 - v31) >> 9;
  v34 = v32 + v33;
  v35 = v26 + v20 + v17 + v16;
  v36 = (v34 - v31) >> 3;
  v37 = v24 + v33 + v30 + v27 + v36 + v35;
  v38 = STACK[0x5750] + v37 - v31 - a2;
  v39 = v34 + v36 - v31 - 1181963997;
  v40 = v39 >> 12;
  v41 = (v39 >> 12) + v39;
  v42 = v37 + v40 + (v41 >> 7) - v31;
  v43 = STACK[0x5750] + v42 - v9;
  v44 = STACK[0x5750] + v42 - (((v41 >> 7) + v41 - 505175844 - (((v41 >> 7) + v41 - 505175844) >> 11)) >> 7) - (((v41 >> 7) + v41 - 505175844) >> 11) - v10;
  v45 = (LODWORD(STACK[0x5730]) - 1191277213 - ((2 * LODWORD(STACK[0x5730])) & 0x71FD1AC6)) ^ LODWORD(STACK[0x5550]);
  v46 = (v44 ^ 0xB27566C9) + ((v44 ^ 0xB27566C9) >> 13) - (((v44 ^ 0xB27566C9) + ((v44 ^ 0xB27566C9) >> 13)) >> 6);
  v47 = LODWORD(STACK[0x53C0]) ^ (LODWORD(STACK[0x5550]) >> 1) & 0x15556E9A ^ v45 ^ ((v45 ^ LODWORD(STACK[0x56F0])) >> 1) & 0x15556E9A ^ LODWORD(STACK[0x5500]) ^ (LODWORD(STACK[0x5500]) >> 7) ^ LODWORD(STACK[0x53B0]) ^ LODWORD(STACK[0x50B8]) ^ a3 ^ v23 ^ v38 ^ v46 ^ 0x14554690 ^ ((v38 ^ v23 ^ v46) >> 1) & 0x15556E9A;
  v48 = LODWORD(STACK[0x5720]) - 612445306 - (STACK[0x5570] & 0xB6FDA70C);
  v49 = STACK[0x56D0];
  v50 = LODWORD(STACK[0x56D0]) ^ LODWORD(STACK[0x5700]) ^ v28;
  v51 = STACK[0x5650];
  LODWORD(STACK[0x53C0]) = LODWORD(STACK[0x50C0]) ^ LODWORD(STACK[0x5510]);
  v52 = (v46 ^ 0xD21A5998) - ((v46 ^ 0xD21A5998) >> 11) + (((v46 ^ 0xD21A5998) - ((v46 ^ 0xD21A5998) >> 11)) >> 3);
  LODWORD(STACK[0x57C0]) = v48 ^ LODWORD(STACK[0x5710]);
  LODWORD(STACK[0x5790]) = (2 * v47) & 0x71FD1AC6;
  LODWORD(STACK[0x5218]) ^= 0xEFEA8B50 ^ v49 ^ v51 ^ ((v12 ^ v51 ^ v28 ^ v43 ^ v52 ^ ((v50 ^ v43 ^ v52) >> 1) & 0x15556E9A) - 1022424114 - ((2 * (v12 ^ v51 ^ v28 ^ v43 ^ v52 ^ ((v50 ^ v43 ^ v52) >> 1) & 0x15556E9A)) & 0x861E179C));
  return (*(STACK[0x57D8] + 8 * v15))();
}

uint64_t sub_1007F042C()
{
  v1 = 0;
  v2 = *(*STACK[0x51F0] + (*STACK[0x51E8] & 0x75F30B2C));
  v3 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + ((v2 ^ 0x75F30B2Fu) & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v2 ^ 0x75F30B2Fu;
  v4 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v3 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v3;
  v5 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v4 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v4;
  v6 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v5 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v5;
  v7 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v6 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v6;
  v8 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v7 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v7;
  v9 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v8 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v8;
  v10 = STACK[0x5CA8];
  v11 = v9 ^ (1978862383 * STACK[0x5CA8]) ^ *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720)));
  v12 = vdupq_n_s32(v11);
  v13 = xmmword_1012370F0;
  v14 = xmmword_101237100;
  v15 = xmmword_101237110;
  v16 = xmmword_101237120;
  v17.i64[0] = 0x1000000010;
  v17.i64[1] = 0x1000000010;
  v18.i64[0] = 0x9393939393939393;
  v18.i64[1] = 0x9393939393939393;
  do
  {
    v19 = *(v10 + v1);
    v27.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v19, xmmword_101237140), v12), vmulq_s32(vaddq_s32(v15, v12), vsubq_s32(v15, v12)));
    v27.val[0] = veorq_s8(veorq_s8(vqtbl1q_s8(v19, xmmword_101237150), v12), vmulq_s32(vaddq_s32(v16, v12), vsubq_s32(v16, v12)));
    v27.val[2] = veorq_s8(veorq_s8(vqtbl1q_s8(v19, xmmword_101237160), v12), vmulq_s32(vaddq_s32(v14, v12), vsubq_s32(v14, v12)));
    v27.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v19, xmmword_101237170), v12), vmulq_s32(vaddq_s32(v13, v12), vsubq_s32(v13, v12)));
    *(v10 + v1) = vmulq_s8(vqtbl4q_s8(v27, xmmword_101237130), v18);
    v1 += 16;
    v16 = vaddq_s32(v16, v17);
    v15 = vaddq_s32(v15, v17);
    v14 = vaddq_s32(v14, v17);
    v13 = vaddq_s32(v13, v17);
  }

  while (v1 != 16);
  v20 = (v10 + 8);
  v21 = 1;
  for (i = 3; i > 2; --i)
  {
    v23 = 16777619 * ((v11 + v21) ^ v11) % v21;
    v24 = *(v10 + 8 * v23) ^ *v20;
    *v20 = v24;
    v25 = *(v10 + 8 * v23) ^ v24;
    *(v10 + 8 * v23) = v25;
    *v20-- ^= v25;
    --v21;
  }

  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007F0658()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v1 ^ 0x241B)))();
  STACK[0x7848] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1007F075C()
{
  STACK[0x7ED8] = v1;
  LODWORD(STACK[0xDCC8]) = v2;
  return (*(STACK[0x57D8] + 8 * (((v2 == -143113071) * (((v0 - 409143392) ^ 0xE79CBEBA) + ((v0 - 409143392) & 0x18635E77) - 24207)) ^ v0)))();
}

uint64_t sub_1007F07C4()
{
  v0 = STACK[0x26D0] & 0xCA7A9DCE;
  v1 = STACK[0x51B8] - 22243;
  v2 = STACK[0x57D8];
  STACK[0x9C28] = *(STACK[0x57D8] + 8 * v1);
  return (*(v2 + 8 * ((v0 + 439) ^ v1)))();
}

uint64_t sub_1007F081C(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x53F8];
  if (STACK[0x57A0])
  {
    v3 = STACK[0x5660];
  }

  v4 = (STACK[0x57A0] & 2) == 0;
  v5 = STACK[0x55C0];
  if ((STACK[0x57A0] & 2) == 0)
  {
    v5 = STACK[0x54B0];
  }

  LODWORD(STACK[0x5470]) = v5;
  v6 = STACK[0x5600];
  if (!v4)
  {
    v6 = STACK[0x5550];
  }

  LODWORD(STACK[0x5550]) = v6;
  if (v4)
  {
    v7 = STACK[0x5348];
  }

  else
  {
    v7 = STACK[0x5408];
  }

  LODWORD(STACK[0x5600]) = v7;
  v8 = STACK[0x5640];
  if (v4)
  {
    v8 = STACK[0x5620];
  }

  LODWORD(STACK[0x5640]) = v8;
  v9 = STACK[0x55B0];
  if (v4)
  {
    v9 = STACK[0x54A0];
  }

  LODWORD(STACK[0x5660]) = v9;
  v10 = STACK[0x55A0];
  if (v4)
  {
    v10 = STACK[0x5590];
  }

  LODWORD(STACK[0x5620]) = v10;
  if (v4)
  {
    v11 = STACK[0x53E8];
  }

  else
  {
    v11 = v3;
  }

  LODWORD(STACK[0x53F8]) = v11;
  v12 = STACK[0x5570];
  if (!v4)
  {
    v12 = STACK[0x5560];
  }

  LODWORD(STACK[0x54E0]) = v12;
  if (STACK[0x53B8])
  {
    v13 = STACK[0x5240];
  }

  else
  {
    v13 = STACK[0x5248];
  }

  v14 = (STACK[0x53B8] & 2) == 0;
  v15 = STACK[0x5230];
  if ((STACK[0x53B8] & 2) == 0)
  {
    v15 = STACK[0x5208];
  }

  LODWORD(STACK[0x5230]) = v15;
  v16 = STACK[0x5220];
  if (v14)
  {
    v16 = STACK[0x5210];
  }

  LODWORD(STACK[0x5240]) = v16;
  v17 = STACK[0x5490];
  if (!v14)
  {
    v17 = STACK[0x5460];
  }

  LODWORD(STACK[0x5248]) = v17;
  if (v14)
  {
    v18 = v13;
  }

  else
  {
    v18 = STACK[0x53D0];
  }

  LODWORD(STACK[0x5220]) = v18;
  return (*(STACK[0x57D8] + 8 * v2))(0, a2, 392612715, 0xFFFFFFFFLL);
}

uint64_t sub_1007F0C0C()
{
  v0 = STACK[0x51B8] ^ 0x3186;
  v1 = STACK[0x51B8] - 22094;
  v2 = (16 * LODWORD(STACK[0xAEB0]));
  v3 = STACK[0x57D8];
  STACK[0x9078] = *(STACK[0x57D8] + 8 * v1);
  return (*(v3 + 8 * (v0 + v1 - 22140)))(v2);
}

uint64_t sub_1007F0C68()
{
  STACK[0x7508] = STACK[0xC170];
  STACK[0x8C38] = &STACK[0xA754];
  LODWORD(STACK[0x9094]) = -32197422;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_1007F0D30()
{
  v0 = STACK[0x51B8] - 20034;
  LODWORD(STACK[0x79DC]) = -769883983;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x6303)))();
}

uint64_t sub_100801BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0x2208] & 0xE5C5EEC3;
  v7 = STACK[0x6B70];
  v8 = STACK[0x57D8];
  STACK[0xBF38] = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x2204]));
  return (*(v8 + 8 * (LODWORD(STACK[0x2200]) + v6)))(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t sub_100801D70(uint64_t a1, unsigned int a2, int a3)
{
  v6 = v3 + a2;
  v7 = __ROR8__(v6 & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = v5;
  v9 = ((0xCE408B2CABC99A34 - v7) & 0x97B9205C2DB5621BLL) + v7 + 0x31BF74D3543665CBLL - (((1489 * (a3 ^ 0x3865u)) ^ 0x93B9205C2DB55642) & (v7 + 0x31BF74D3543665CBLL));
  v10 = __ROR8__(v9 ^ ((a3 - 11840) + 0x70B61A5DD1E05F8), 8);
  v9 ^= 0x8AF0C73F7CAD3E7DLL;
  v11 = (v10 + v9) ^ v4;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xA7BAD6DDFE0EDBEALL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = __ROR8__((((2 * (v15 + v14)) & 0x98AE07AF700AC672) - (v15 + v14) + 0x33A8FC2847FA9CC6) ^ 0x33C72072D2D188F7, 8);
  v17 = (((2 * (v15 + v14)) & 0x98AE07AF700AC672) - (v15 + v14) + 0x33A8FC2847FA9CC6) ^ 0x33C72072D2D188F7 ^ __ROR8__(v14, 61);
  v18 = (v16 + v17 - ((2 * (v16 + v17)) & 0x69CD83CD7D9B78C6) + 0x34E6C1E6BECDBC63) ^ 0x5335B6F75D056C14;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (0x8FE322FC5A00C525 - ((v20 + v19) | 0x8FE322FC5A00C525) + ((v20 + v19) | 0x701CDD03A5FF3ADALL)) ^ 0x29BF412B12AAD98DLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x8B163508E451EC08;
  LOBYTE(v6) = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ v8) >> (8 * (v6 & 7u))) ^ *v6;
  return (*(STACK[0x57D8] + 8 * ((23 * ((((v6 ^ 0x50) - 98) ^ v6 ^ ((v6 ^ 0x62) - 80)) != 225)) ^ a3)))();
}

uint64_t sub_100801FF8()
{
  v0 = STACK[0xF00];
  v1 = STACK[0x57D8];
  v2 = (STACK[0xF00] - 1551239984) & 0x5C7659DF;
  STACK[0x7CA8] = *(STACK[0x57D8] + 8 * STACK[0xF00]);
  return (*(v1 + 8 * ((v2 ^ 0x5F87) + v0)))();
}

uint64_t sub_100802048@<X0>(_BYTE *a1@<X8>)
{
  a1[23] = v2[23] ^ 0xFC;
  a1[22] = v2[22] ^ 0xBA;
  a1[21] = v2[21] ^ 0x5B;
  a1[20] = v2[20] ^ 0xA;
  a1[19] = v2[19] ^ 0x1F;
  a1[18] = v2[18] ^ 0xC2;
  a1[17] = (v1 + 54) & 0x7F ^ 0x2B ^ v2[17] ^ 0x99;
  a1[16] = v2[16] ^ 0x1E;
  return (*(STACK[0x57D8] + 8 * ((v1 - 1481525194) & 0x584DFE7F)))();
}

uint64_t sub_100802224()
{
  v1 = STACK[0xF40];
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (LODWORD(STACK[0xF40]) ^ 0x75B8062)))(v0);
  STACK[0xB9D8] = 0;
  return (*(v2 + 8 * (v1 ^ 0x75BCD94 ^ (21053 * (v1 >= v1 + 864902190)))))(v3);
}

uint64_t sub_100802414()
{
  STACK[0x57C0] = 0;
  v2 = STACK[0x8A98];
  STACK[0x8F68] = 0x1883660EE8144416;
  v3 = ((((v1 ^ 0xBD63B442) + 1117539262) ^ ((v1 ^ 0xE5D6F651) + 438897071) ^ ((v1 ^ 0x8AA98F2F ^ (v0 + 15463)) + 1968586105)) - 769883981) & 0xFFFFFFF0;
  STACK[0x7810] = v2;
  STACK[0x8000] = &STACK[0x8F68];
  STACK[0x5FC0] = 0;
  LODWORD(STACK[0xA12C]) = (((v3 ^ 0xEAA1FAA6) + 1808010832) ^ ((v3 ^ 0xEF25D93C) + 1849699798) ^ ((v3 ^ 0x584239A) - 2065574028)) - 68976750;
  LODWORD(STACK[0xC0DC]) = -2013569059;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100802570()
{
  v2 = STACK[0x270C];
  v3 = STACK[0x51B8];
  v4 = STACK[0x51B8] - 1079089617;
  v5 = STACK[0x26E0];
  LODWORD(STACK[0x1D4C4]) = STACK[0x26E0] ^ LODWORD(STACK[0x2700]);
  LODWORD(STACK[0x1D4CC]) = v2 - v5;
  STACK[0x1D4D8] = v0 - v5;
  LODWORD(STACK[0x1D4C8]) = (v2 ^ 9) - v5;
  STACK[0x1D4E0] = v5 + 4151854225u;
  LODWORD(STACK[0x1D4D0]) = v5;
  LODWORD(STACK[0x1D4C0]) = v4 ^ v5;
  v6 = STACK[0x57D8];
  v7 = (*(STACK[0x57D8] + 8 * (v3 ^ 0x2411)))(v1 - 240);
  return (*(v6 + 8 * SLODWORD(STACK[0x1D4D4])))(v7);
}

uint64_t sub_100802D50()
{
  v3 = *v1;
  v2 = v1[1];
  if ((v2 & 0xFu) <= ((v0 - 1485) ^ 0x4989u))
  {
    v4 = 16;
  }

  else
  {
    v4 = 32;
  }

  v5 = v4 - (v2 & 0xF);
  LOWORD(STACK[0xE10A]) = v5 + 18439;
  return (*(STACK[0x57D8] + 8 * ((((v5 - 6) + 6 > (v3 - v2)) * ((v0 - 17515) ^ 0xAD4)) ^ v0)))();
}

uint64_t sub_100802DE0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v2 = STACK[0x7578];
  STACK[0x8078] = STACK[0x7578];
  STACK[0x7ED0] = v2;
  STACK[0xC880] = 0x6321847518D0320CLL;
  LODWORD(STACK[0xCD80]) = -73482592;
  return (*(STACK[0x57D8] + 8 * a2))(a1, 272629776, 410912332, 1543499262, 2265206393, 3965507692);
}

uint64_t sub_100802F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = STACK[0x57D8];
  STACK[0xCFB0] = *(STACK[0x57D8] + 8 * v7);
  return (*(v8 + 8 * (v7 ^ 0x16CF)))(a1, a2, a3, a4, a5, a6, a7, 3562894612);
}

uint64_t sub_1008032C0()
{
  v1 = v0 - 3727;
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x241B)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100803318()
{
  v2 = STACK[0x57D8];
  v3 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x5B6B)))(v1);
  STACK[0x9D90] = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10080336C()
{
  v1 = *(v0 + 312);
  *(v0 + 320) = v1;
  v2 = *(v0 + 308);
  *(v0 + 332) = v2;
  *(v0 + 336) = v2 ^ 0x4C22;
  *(v0 + 340) = v2 - 17378;
  v3 = (v2 ^ 0x585DLL) * v1;
  v4 = v1 + *(v0 + 3800) - 68;
  *(v0 + 344) = v3;
  *(v0 + 352) = v4;
  *(v0 + 296) = v4;
  v5 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (v2 + 8946));
  return (*(v5 + 8 * (v2 + 8890)))();
}

uint64_t sub_100803414()
{
  STACK[0xB188] = 0;
  v2 = STACK[0xC528];
  STACK[0x75A0] = STACK[0xC528];
  LODWORD(STACK[0xB58C]) = STACK[0x8830];
  STACK[0x6080] = STACK[0xA568];
  LODWORD(STACK[0x6A00]) = STACK[0x6B7C];
  v3 = STACK[0x7ED8];
  v4 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0x8ED0] = v4;
  STACK[0x91C0] = (v4 + 16);
  STACK[0xA688] = (v4 + 32);
  STACK[0x7ED8] = v3 + ((v1 + 2981) ^ 0x1EB1);
  STACK[0xC268] = 0x79296B4A625EDF44;
  LOWORD(STACK[0x87B6]) = -3415;
  LODWORD(STACK[0x7D34]) = -769884012;
  STACK[0x5F58] = v0;
  STACK[0xA700] = 0;
  LODWORD(STACK[0x7C28]) = 0;
  if (v2)
  {
    v5 = v0 == 0xD38CBDD3ACAFF84ALL;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(STACK[0x57D8] + 8 * ((v6 * (v1 - 4701)) ^ v1)))();
}

uint64_t sub_100803560()
{
  STACK[0xDB00] = STACK[0xA2E0];
  LODWORD(STACK[0xDB08]) = STACK[0xA754];
  STACK[0x7CC8] = STACK[0xBD40];
  LODWORD(STACK[0xBD30]) = STACK[0xB5CC];
  STACK[0x9E90] = STACK[0xC188];
  LOBYTE(STACK[0xDB0F]) = LOBYTE(STACK[0xCB88]) ^ (17 * (v0 ^ 0xEF) + 29);
  STACK[0x9020] = STACK[0x8A60];
  LODWORD(STACK[0x858C]) = STACK[0xB174];
  LODWORD(STACK[0xDB10]) = STACK[0x6B7C];
  v1 = STACK[0x7ED8];
  v2 = &STACK[0x10120] + STACK[0x7ED8];
  STACK[0xCA50] = v2;
  STACK[0x6D38] = (v2 + 16);
  STACK[0xB348] = (v2 + 240);
  STACK[0x7ED8] = v1 + 640;
  STACK[0x95C8] = 0x79296B4A625EDF44;
  STACK[0xA590] = 0x2F0471E20AD18A8CLL;
  STACK[0xB8D8] = 0;
  LODWORD(STACK[0xB288]) = -769884012;
  return (*(STACK[0x57D8] + 8 * v0))();
}

uint64_t sub_100803A34()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0xBB9F73AD)))();
  STACK[0xB458] = 0;
  return (*(v1 + 8 * (v0 ^ 0xBB9F26BD ^ ((v0 == 716932820) * ((v0 + 1147224643) ^ 0x29A7)))))(v2);
}

uint64_t sub_100803AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(STACK[0x57D8] + 8 * (((551 * ((a6 + 4682) ^ 0x46A7) + ((a6 - 12330) | 0x302A) - 38661) * (LODWORD(STACK[0x53D0]) == 22)) ^ (a6 + 4682)));
  LODWORD(STACK[0x54F0]) = 188;
  LODWORD(STACK[0x5270]) = 176;
  STACK[0x52F8] = 22;
  LODWORD(STACK[0x52B8]) = 12;
  return v6();
}

uint64_t sub_100803B84(int a1)
{
  v6 = v2 + 18141;
  v7 = (v6 - 14246) * ((~(2 * v1) & 0x806) + (v1 ^ 0xBCCE106C));
  v8 = *(v3 + 4008);
  v9 = 3903 * (*(v8 + v7 - v7 / 0x1708 * a1) - 28) + 17079528;
  *(v8 + v9 - (((93242167 * v9) >> 32) >> 7) * a1) = (((v1 ^ 0x32) - 86) ^ ((v1 ^ 0xA6) + 62) ^ ((v1 ^ 0xFB) + 97)) + 39;
  v10 = (((v1 ^ 0xB612FB02) + 1240270078) ^ ((v1 ^ 0x933B13B1) + 1824844879) ^ ((v1 ^ 0x99E7FCDC) + 1712849700)) + 187949352;
  v11 = (v10 ^ 0x291B2B0F) & (2 * (v10 & 0xB19A3348)) ^ v10 & 0xB19A3348;
  v12 = ((2 * (v10 ^ (v5 + 171))) ^ 0x712A74AE) & (v10 ^ (v5 + 171)) ^ (2 * (v10 ^ (v5 + 171))) & 0xB8953A56;
  LODWORD(v8) = v12 ^ 0x88950A51;
  v13 = (v12 ^ 0x41011) & (4 * v11) ^ v11;
  v14 = ((4 * v8) ^ 0xE254E95C) & v8 ^ (4 * v8) & 0xB8953A54;
  v15 = (v14 ^ 0xA0142843) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x18811203)) ^ 0x8953A570) & (v14 ^ 0x18811203) ^ (16 * (v14 ^ 0x18811203)) & 0xB8953A50;
  v17 = v15 ^ 0xB8953A57 ^ (v16 ^ 0x88112000) & (v15 << 8);
  v18 = v10 ^ (2 * ((v17 << 16) & 0x38950000 ^ v17 ^ ((v17 << 16) ^ 0x3A570000) & (((v16 ^ 0x30841A07) << 8) & 0x38950000 ^ 0x28850000 ^ (((v16 ^ 0x30841A07) << 8) ^ 0x953A0000) & (v16 ^ 0x30841A07))));
  return (*(STACK[0x57D8] + 8 * (v6 ^ (15558 * ((((v18 ^ (v4 + 288)) - 253327113) ^ ((v18 ^ 0x17BA93B7) - 468631614) ^ ((v18 ^ 0xA46DF0D1) + 1472617640)) - 1127345041 < 0x100)))))((v6 - 12737));
}

uint64_t sub_100803E60@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W8>)
{
  v11 = *(*(v10 + 1368) + a3 + ((a5 + 954368059) & 0xC71D5F7F) - ((((((a5 + 954368059) & 0xC71D5F7F) + a3) * v6) >> 32) >> 12) * v7);
  if (((a2 >> v9) & 1) == 0)
  {
    v11 = a1;
  }

  v12 = ~a4 | 0x9D;
  v13 = v11 & 0xF0 ^ 0x26;
  v14 = v13 ^ v12 ^ (a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & (2 * ((a4 ^ 0x34) & 0x16 ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ (v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * ((v11 ^ 0x34) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13));
  *(v8 + v5) = (((v11 ^ a4 ^ (2 * v14) ^ 0xFE) + 54) ^ ((v11 ^ a4 ^ (2 * v14) ^ 0x9D) + 87) ^ ((v11 ^ a4 ^ (2 * v14) ^ 0xF1) + 59)) - 14;
  return (*(STACK[0x57D8] + 8 * ((30172 * (v9 == 7)) ^ a5)))(a1);
}

uint64_t sub_100803F9C()
{
  v1 = (STACK[0x51B8] + 271) ^ 0x5E67;
  v2 = STACK[0x51B8] - 17290;
  LODWORD(STACK[0xCEBC]) = v0;
  return (*(STACK[0x57D8] + 8 * ((23885 * (v0 == v1 - 143114865)) ^ v2)))();
}

uint64_t sub_1008040B8()
{
  v3 = STACK[0x1D00] + 10 + (v0 ^ 0xD21C8094);
  STACK[0x1918] = v3;
  return (*(v1 + 8 * ((484 * (v3 <= STACK[0x1CF8])) ^ (v2 - 1211071217))))();
}

uint64_t sub_100804120()
{
  v4 = STACK[0x11F8];
  v5 = 1534937323 * ((((v3 - 240) | 0x4B01CFA884260E5DLL) - (v3 - 240) + ((v3 - 240) & 0xB4FE30577BD9F1A0)) ^ 0x8679476A42C8F51ALL);
  *(v3 - 224) = v5;
  *(v3 - 220) = ((v0 + 1211071600) | 0x494DF792) ^ v5;
  *(v3 - 216) = v5;
  *(v3 - 240) = v4 ^ v5;
  *(v3 - 232) = ((v0 + 1211071600) | 0x494DFAA0) - v5;
  *(v3 - 228) = v5 + v0 - 1632379223;
  *(v3 - 208) = ((v0 + 1211071600) ^ 0x494DF7E7) + v5;
  v6 = (*(v1 + 8 * (v0 + v2)))(v3 - 240);
  return (*(v1 + 8 * *(v3 - 204)))(v6);
}

uint64_t sub_100804278()
{
  v3 = STACK[0x3488];
  LODWORD(STACK[0x1D4CC]) = v0 + 1694029110 - STACK[0x3488];
  LODWORD(STACK[0x1D4D0]) = v3;
  STACK[0x1D4D8] = 4151854225u - v3;
  LODWORD(STACK[0x1D4C0]) = (v0 - 1079089617) ^ v3;
  LODWORD(STACK[0x1D4C4]) = (v0 + 1694025841) ^ v3;
  STACK[0x1D4E0] = v3 + v1;
  LODWORD(STACK[0x1D4C8]) = ((v0 + 1694029110) ^ 0x62) - v3;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (v0 + 9201)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4D4])))(v5);
}

uint64_t sub_100804324()
{
  v1 = (STACK[0x51B8] - 1068327021) & 0x3FAD1DFF;
  v2 = STACK[0x51B8] - 15350;
  LODWORD(STACK[0x769C]) = v0;
  v3 = SLOWORD(STACK[0xD96E]);
  STACK[0xAC58] = STACK[0xD970];
  return (*(STACK[0x57D8] + 8 * (((v3 == -2993) * (v1 ^ 0x35F9)) ^ v2)))();
}

uint64_t sub_100804480(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v19 = ((v12 ^ a8) >> v8) + (((v12 ^ a8) & v15) << v16);
  LOBYTE(v19) = a6 & (4 * ((v19 ^ (2 * (v19 & v17))) & v17)) ^ v19 ^ (2 * (v19 & v17));
  v20 = (16 * (v19 & v17)) & (4 * (v17 & a4)) & v14 ^ v19;
  LOBYTE(v19) = *((v20 ^ 0x71u) + v18 + 14679);
  LOBYTE(v19) = (((v19 ^ 0xA8) + 88) ^ ((v19 ^ 0x1C) - 28) ^ ((v19 ^ 0xB1) + 79)) - (((v20 ^ 0x85) + 67) ^ ((v20 ^ 0x11) - 41) ^ ((v20 ^ 0x7A) - 66));
  v21 = ((-80 - v19) & 0xE0 | 0x19) ^ (v19 + 79) & 0xB2;
  v22 = (v19 + 79) ^ 0x60;
  v23 = (v19 + 79) ^ (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * (v22 & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21));
  v24 = (16 * (~*(((v10 | ((v23 & 0xF0) >> 4)) ^ 0x96) + v18 + 260) & 0xF)) | *(((v23 & 0xF | v11) ^ 0x86) + v18 + 777) ^ 0x7ALL;
  v25 = (v24 ^ 0xC2) + 17;
  v26 = v25 & 0xEC | 3;
  v27 = v25 ^ 0x6E;
  LODWORD(v24) = (*((v24 ^ 0x89) + v18 + 11037) ^ v25 ^ (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v27 & (2 * (v26 ^ (2 - (v24 ^ 0xC2)) & 2)) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) ^ 0xF9;
  *(STACK[0x8070] + v13 % 0x3282) = *(STACK[0x8070] + 12337 * v24 - 12930 * (((1328683 * (12337 * v24)) >> 32) >> 2));
  return (*(STACK[0x57D8] + 8 * ((104 * (v12 != 255)) ^ (v9 + 3677))))();
}

uint64_t sub_100804808()
{
  v3 = *(v0 + 3128);
  v4 = *(*STACK[0x51F0] + ((*STACK[0x51E8] & ((v3 & 0xFFFFFFF8) - 1831847764)) & 0xFFFFFFFFFFFFFFF8));
  v5 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (v4 + v5 - ((2 * (v4 + v5)) & 0x43CA9D1BFF600FBALL) - 0x5E1AB172004FF823) ^ 0x634A7027C041BF39;
  v7 = v6 ^ __ROR8__(v4, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0x65F254DD188DB4FCLL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = __ROR8__(v8, 8);
  v11 = (((2 * (v10 + v9)) & 0x6388EAAD4BAD35D8) - (v10 + v9) - 0x31C47556A5D69AEDLL) ^ 0xA1CBCC3F3B30779ELL;
  v12 = v11 ^ __ROR8__(v9, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0xA1B29DC5D776132BLL;
  v14 = __ROR8__(v13, 8);
  v15 = v13 ^ __ROR8__(v12, 61);
  v16 = (v14 + v15) ^ v2;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (0xDEB0DB9118E9B5B8 - ((v18 + v17) | 0xDEB0DB9118E9B5B8) + ((v18 + v17) | 0x214F246EE7164A47)) ^ 0xF98897712D0F9399;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x5FBD98D32749C4CCLL) - (v21 + v20) + 0x502133966C5B1D99) ^ 0x47432B8E6EADE16;
  v23 = 3903 * ((((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v20, 61))) ^ 0x6F4F60BC0E025EE0uLL) >> (8 * (v3 & 7u))) ^ *(v0 + 295)) + 4008381;
  *(*(v0 + 4000) + 39045) = *(*(v0 + 4008) + v23 - 5896 * (((1456909 * v23) >> 32) >> 1));
  v24 = *(v0 + 3984) + 38;
  *(v0 + 3136) = v24;
  *(v0 + 296) = v24;
  v25 = STACK[0x57D8];
  *(v0 + 280) = *(STACK[0x57D8] + 8 * (v1 + 10089));
  return (*(v25 + 8 * (STACK[0x4D40] + 3096)))();
}

uint64_t sub_100805574()
{
  STACK[0x1CA8] = v1;
  v3 = STACK[0xD48];
  STACK[0x1CB0] = STACK[0xD48];
  return (*(v2 + 8 * ((11391 * (v1 - v3 > (((v0 - 3789) | 0x440u) - 1211073222) - 3083895688u)) ^ v0)))();
}

uint64_t sub_1008055DC()
{
  v2 = *(v0 + 696);
  v3 = *(*STACK[0x51F0] + (((((v2 & 0x3C007448 | 0xC3FF8BB3) + 1006662732 + (v2 & 0xC3FF8BB0 | 0x3C00744C) + 1) & 0xFFFFFFF8) + 1456456800) & *STACK[0x51E8]));
  v4 = (__ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8) + v3) ^ 0xC2AF3EAA3FF1B8E4;
  v5 = v4 ^ __ROR8__(v3, 61);
  v6 = __ROR8__(v4, 8);
  v7 = (0xD453B3B1E9C08802 - ((v6 + v5) | 0xD453B3B1E9C08802) + ((v6 + v5) | 0x2BAC4C4E163F77FDLL)) ^ 0x4E5E18930EB2C301;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0x6FF046966119128DLL;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xA1B29DC5D776132BLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ v1;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0xD8C7B31FCA19D9DELL;
  v16 = __ROR8__(v15, 8);
  v17 = v15 ^ __ROR8__(v14, 61);
  v18 = (v16 + v17) ^ 0x5455012E8AB1C38FLL;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  LODWORD(v2) = 5621 * ((((((2 * (v20 + v19)) | 0x7F3DCD8E3D86C4E0) - (v20 + v19) - 0x3F9EE6C71EC36270) ^ 0x50D1867B10C13C90uLL) >> (8 * (v2 & 7u))) ^ *(v0 + 295)) + 32028458;
  *(STACK[0xDCB8] + 2200) = *(STACK[0xDCB8] + v2 - 6152 * (((89362129 * v2) >> 32) >> 7));
  v21 = *(v0 + 688) + 33;
  *(v0 + 296) = v21;
  v22 = STACK[0x57D8];
  v23 = *(STACK[0x57D8] + 8 * (STACK[0x51B8] ^ 0x22B9));
  *(v0 + 704) = v21;
  *(v0 + 280) = v23;
  return (*(v22 + 8 * (LODWORD(STACK[0x4D68]) + 29306)))();
}

uint64_t sub_100805810(int a1, unint64_t a2, unsigned int a3)
{
  v9 = *(v8 + 4008);
  v10 = *(v9 + a2 - 5896 * ((((a2 >> 3) * v4) >> 64) >> 4));
  v11 = *(v8 + 4000);
  v12 = *(v11 + 4 * ((((v10 | ((v10 < 0x1C) << 8)) + 357740607) * ((4 * v3) ^ 0x16BC5) - 1301269561) % 0x2240));
  v13 = *(v9 + v6 + 3903 * (BYTE2(v12) ^ 0xC5) - 5896 * (((1456909 * (v6 + 3903 * (BYTE2(v12) ^ 0xC5u))) >> 32) >> 1));
  v14 = *(v9 + v6 + 3903 * (BYTE1(v12) ^ 0x64) - 5896 * (((1456909 * (v6 + 3903 * (BYTE1(v12) ^ 0x64u))) >> 32) >> 1));
  v15 = *(v9 + (3903 * (((HIBYTE(v12) ^ 0xF4DAB83D) + 481094704) ^ ((HIBYTE(v12) ^ 0x6EEFD805) - 2036757480) ^ ((HIBYTE(v12) ^ 0x9A356074) + 1917006951)) - 601041572) % 0x1708);
  v16 = *(v9 + (3903 * (((v12 ^ v7) + 1008365235) ^ ((v12 ^ 0x7E0C71B5) + 68569589) ^ ((v12 ^ 0x380C27B7u) + 1108746231)) + 1786173230) % 0x1708);
  v17 = v15 & 0xA0 ^ 0x66;
  v18 = v13 & 0xCA ^ 0x33;
  v19 = v13 ^ (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & (2 * ((v13 ^ 0x64) & 0x2E ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18));
  v20 = v14 & 0xE2 ^ 0x87;
  v21 = ((v19 ^ 0xCA) << 8) | (((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x44) & (2 * v17) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17))) ^ 0xA0) << 16);
  v22 = ((v14 ^ (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x44) & (2 * ((v14 ^ 0x44) & 6 ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x10C854) & ~v21 | v21 & 0xEF3700;
  v23 = v16 & 0xA8 ^ 0x62;
  v24 = v16 ^ (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x44) & (2 * v23) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23));
  *(v11 + 4 * (a3 % 0x2240)) = (((v22 << 8) ^ 0xFBAE5C69) & (v24 ^ 0xFFFFFF43) | v24 & 0x96) ^ 0xA7A38E18;
  return (*(STACK[0x57D8] + 8 * ((1409 * (a1 == 0)) ^ v5)))((a1 - 1), a2 + 3903, a3 + 2717);
}

uint64_t sub_100805BB0(uint64_t a1)
{
  v2 = *(STACK[0xA988] - 0x683CBC57EAB92A3ELL);
  STACK[0x6400] = 0;
  STACK[0xB0E8] = 0;
  return (*(STACK[0x57D8] + 8 * (((v2 != a1) * (11307 * (v1 ^ 0x2AF2) + ((v1 - 9246) ^ 0xFFFFA17C))) ^ v1)))();
}

uint64_t sub_100805CBC@<X0>(int a1@<W8>)
{
  v1 = STACK[0x8A40];
  STACK[0xCB28] = STACK[0x8A40];
  return (*(STACK[0x57D8] + 8 * (((v1 == 0x79CEC8CF5A6FCEBALL) * ((a1 + 1036983012) & 0xC230DD77 ^ ((a1 - 6126) | 0x283) ^ 0x12DF)) ^ a1)))();
}

uint64_t sub_100805DB0@<X0>(int a1@<W8>)
{
  v3 = 1534937323 * ((v2 - 0x4A11019A94909312 - 2 * ((v2 - 240) & 0xB5EEFE656B6F6DDELL)) ^ 0x789676A7AD819699);
  LODWORD(STACK[0x1D4D4]) = (a1 - 1953044315) ^ (1534937323 * ((v2 + 1802464494 - 2 * ((v2 - 240) & 0x6B6F6DDE)) ^ 0xAD819699));
  LODWORD(STACK[0x1D4D0]) = 1534937323 * ((v2 + 1802464494 - 2 * ((v2 - 240) & 0x6B6F6DDE)) ^ 0xAD819699);
  STACK[0x1D4D8] = (v1 & 1) + v3;
  LODWORD(STACK[0x1D4C8]) = ((a1 - 1953044315) ^ 0xFF9) - 1534937323 * ((v2 + 1802464494 - 2 * ((v2 - 240) & 0x6B6F6DDE)) ^ 0xAD819699);
  STACK[0x1D4C0] = v3;
  LODWORD(STACK[0x1D4CC]) = 1534937323 * ((v2 + 1802464494 - 2 * ((v2 - 240) & 0x6B6F6DDE)) ^ 0xAD819699) + a1 + 1451493860;
  LODWORD(STACK[0x1D4E0]) = 1534937323 * ((v2 + 1802464494 - 2 * ((v2 - 240) & 0x6B6F6DDE)) ^ 0xAD819699) + a1 - 1953036608;
  v4 = STACK[0x57D8];
  v5 = (*(STACK[0x57D8] + 8 * (a1 ^ 0x2462)))(v2 - 240);
  return (*(v4 + 8 * SLODWORD(STACK[0x1D4E4])))(v5);
}

uint64_t sub_100805EDC()
{
  v1 = STACK[0x51B8] - 17524;
  v2 = STACK[0xE8F0];
  v3 = STACK[0xE8F8] + 10 + (v0 ^ 0xD21C8094);
  STACK[0xD990] = v3;
  return (*(STACK[0x57D8] + 8 * ((2031 * (v3 <= v2)) ^ v1)))();
}

uint64_t sub_100805F44()
{
  v1 = STACK[0x57D8];
  STACK[0xC2A0] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x255B ^ ((v0 + 11253) | 0xD))))();
}

uint64_t sub_100806044()
{
  LODWORD(STACK[0xE82C]) = v1;
  STACK[0x7ED8] = (v0 - 21699) + STACK[0x7ED8] - 947;
  return (*(STACK[0x57D8] + 8 * ((v0 - 17404) ^ (24282 * (v1 == -143113071)))))();
}

uint64_t sub_10080609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x5158]) = LODWORD(STACK[0x5540]) | LODWORD(STACK[0x5600]);
  LODWORD(STACK[0x4AC8]) = LODWORD(STACK[0x5520]) | LODWORD(STACK[0x54F0]);
  v16 = v14 & 0x8E ^ 0xAD;
  v17 = v13 & 0xB4 | 0xB;
  v18 = v17 ^ v13 & 0x7E;
  v19 = (((v14 ^ (2 * ((v14 ^ v7) & (2 * ((v14 ^ v7) & (2 * ((v14 ^ v7) & (2 * ((v14 ^ v7) & (2 * ((v14 ^ v7) & (2 * (v16 ^ v14 & 0x3A)) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x8E) << 16) | (((v13 ^ (2 * ((v13 ^ v7) & (2 * ((v13 ^ v7) & (2 * ((v13 ^ v7) & (2 * ((v13 ^ v7) & (2 * ((v13 ^ v7) & (2 * ((v13 ^ v7) & (2 * v17) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xCA) << 8);
  v20 = v12 & 0xFC ^ v15;
  LODWORD(STACK[0x5600]) = ((((v12 ^ (2 * ((v12 ^ v7) & (2 * ((v12 ^ v7) & (2 * ((v12 ^ v7) & (2 * ((v12 ^ v7) & (2 * ((v12 ^ v7) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x7456DA) & ~v19 | v19 & 0x8BA900) << 8) & 0x801500;
  v21 = a6 & 0x90 ^ v8;
  v22 = v10 & 0x90 ^ v8;
  v23 = v11 & 0x4A ^ 0xFFFFFFCB;
  v24 = (((v10 ^ (2 * ((v10 ^ v7) & (2 * ((v10 ^ v7) & (2 * ((v10 ^ v7) & (2 * ((v10 ^ v7) & (2 * ((v10 ^ v7) & (2 * v22) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x90) << 16) | (((v11 ^ (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & 0x3E ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23))) ^ 0x4A) << 8);
  v25 = v9 & 0x6A ^ 0xFB;
  LODWORD(STACK[0x54F0]) = (((v24 ^ 0x7D70FF) & ((v9 ^ (2 * ((v9 ^ v7) & (2 * ((v9 ^ v7) & (2 * ((v9 ^ v7) & (2 * ((v9 ^ v7) & (2 * ((v9 ^ v7) & (2 * ((v9 ^ v7) & 0x1E ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0x5D204F) | v24 & 0xA2DF00) << 8) & 0x25EC0200;
  return (*(STACK[0x57D8] + 8 * v6))(a6 ^ (2 * ((a6 ^ v7) & (2 * ((a6 ^ v7) & (2 * ((a6 ^ v7) & (2 * ((a6 ^ v7) & (2 * ((a6 ^ v7) & (2 * v21) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)), 0, &STACK[0xD760], (v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & (2 * ((v11 ^ v7) & 0x3E ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23, 23024953);
}

uint64_t sub_100806524()
{
  v7 = *(v6 - 144);
  v8 = v0;
  v9 = v1;
  (*(v5 + 8 * (v7 ^ 0x6A2B)))(v3);
  (*(v5 + 8 * (v7 + 26069)))(v2);
  (*(v5 + 8 * (v7 ^ 0x6A2B)))(*(v6 - 160) - 0x539289D27294892ELL);
  (*(v5 + 8 * (v7 + 26069)))(*(v6 - 168) - 0x1D9747D13ECC41EDLL);
  (*(v5 + 8 * (v7 + 26069)))(v8);
  (*(v5 + 8 * (v7 + 26069)))(*(v6 - 128));
  (*(v5 + 8 * (v7 ^ 0x6A2B)))(v9);
  (*(v5 + 8 * (v7 ^ 0x6A2B)))(v4);
  return (*(v5 + 8 * v7))(*(v6 - 176));
}

uint64_t sub_100806788@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, char a6@<W5>, int a7@<W6>, int a8@<W7>, char a9@<W8>)
{
  LODWORD(STACK[0x4088]) = LODWORD(STACK[0x4B68]) | LODWORD(STACK[0x4B90]);
  LODWORD(STACK[0x4090]) = LODWORD(STACK[0x4B60]) | LODWORD(STACK[0x4B88]);
  LODWORD(STACK[0x4080]) = LODWORD(STACK[0x4B58]) | LODWORD(STACK[0x4B80]);
  LODWORD(STACK[0x4728]) = LODWORD(STACK[0x4B50]) | LODWORD(STACK[0x4B78]);
  LODWORD(STACK[0x4730]) = LODWORD(STACK[0x4A80]) | LODWORD(STACK[0x4B70]);
  v21 = v16 & 0xFA ^ 0x8B;
  v22 = a6 & 0x72 ^ 0x4F;
  v23 = (v16 ^ (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * ((v16 ^ 0x64) & (2 * (v21 ^ v16 & 0x1E)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)));
  v24 = (v23 << 16) | (((a6 ^ (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * ((a6 ^ 0x64) & (2 * (v22 ^ a6 & 0x16)) ^ v22)) ^ v22)) ^ v22)) ^ v22)) ^ v22))) ^ 0x72) << 8);
  v25 = v15 & 0x86 | 0x51;
  v26 = (v24 ^ 0x88FF) & ((v15 ^ (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & (2 * ((v15 ^ 0x64) & 0x22 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25))) ^ 0x608839) | v24 & 0x9F7700;
  v27 = a8 & 0x30 ^ 0xFFFFFFAE;
  v28 = v13;
  LODWORD(STACK[0x4B90]) = a8 ^ (2 * ((a8 ^ 0x64) & (2 * ((a8 ^ 0x64) & (2 * ((a8 ^ 0x64) & (2 * ((a8 ^ 0x64) & (2 * ((a8 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27));
  LOBYTE(v27) = a4 & 0x4C ^ 0x74;
  v26 <<= 8;
  LODWORD(STACK[0x4B88]) = v26 ^ 0x44500FF;
  LODWORD(STACK[0x4DD8]) = v26 & 0x53B2EA00;
  v29 = v9 & 0xA ^ 0xFFFFFF93;
  v30 = v9 ^ (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & (2 * ((v9 ^ 0x64) & 0x2E ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29));
  LODWORD(STACK[0x43E0]) = v30;
  v31 = STACK[0x4DD0];
  LOBYTE(v29) = STACK[0x4DD0] & 0xE8 ^ 0x82;
  v32 = (a4 ^ (2 * ((a4 ^ 0x64) & (2 * ((a4 ^ 0x64) & (2 * ((a4 ^ 0x64) & (2 * ((a4 ^ 0x64) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27))) << 8;
  LODWORD(STACK[0x4B50]) = ((v32 & 0xFF00FFFF | (v30 << 16)) ^ 0x41B0FF) & ((v31 ^ (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x64) & (2 * ((v31 ^ 0x44) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x49BC23) | v32 & 0x4300 | (v30 << 16) & 0xB64300;
  v33 = STACK[0x4DE0];
  v34 = STACK[0x4DE0] & 0x9E ^ 0xFFFFFFDD;
  LODWORD(STACK[0x4B80]) = v33 ^ (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * ((v33 ^ 0x64) & (2 * (v34 ^ v33 & 0x3A)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  v35 = STACK[0x4DE8];
  v36 = STACK[0x4DE8] & 0xC2 ^ 0x37;
  LOBYTE(v29) = a1 & 0xC2 ^ 0xB7;
  v37 = (a1 ^ (2 * ((a1 ^ 0x64) & (2 * ((a1 ^ 0x64) & (2 * ((a1 ^ 0x64) & (2 * ((a1 ^ 0x64) & (2 * ((a1 ^ 0x64) & (2 * ((a1 ^ 0x64) & 0x26 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)));
  LODWORD(STACK[0x43F0]) = v37;
  v37 <<= 8;
  v38 = v37 & 0xFF00FFFF | (((v35 ^ (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & (2 * ((v35 ^ 0x64) & 0x26 ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xC2) << 16);
  v39 = STACK[0x4DF0];
  v40 = (v39 & 0xE4 | 2) ^ v39 & 0xC;
  v41 = (v39 ^ (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * ((v39 ^ 0x64) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)));
  v42 = (v38 ^ 0xFFFCFF) & (v41 ^ 0xCB06D8) | v38 & 0x34F900;
  v43 = v20 & 0x84 | 0x50;
  LODWORD(STACK[0x4A80]) = v20 ^ (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * ((v20 ^ 0x64) & (2 * v43) | v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43));
  v42 <<= 8;
  LODWORD(STACK[0x4DD0]) = v42 ^ 0x1429C6FF;
  LODWORD(STACK[0x4DE0]) = v42 & 0x68162900;
  LOBYTE(v42) = a2 & 0xD2 ^ 0x3F;
  LOBYTE(v43) = v11 & 0xD0 ^ 0xBE;
  v44 = v37 & 0xFF00FFFF | (((a2 ^ (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & (2 * ((a2 ^ 0x64) & 0x36 ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))) ^ 0xD2) << 16);
  v45 = (v11 ^ (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * ((v11 ^ 0x64) & (2 * v43) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)));
  v46 = a7 & 0xB4 ^ 0x68;
  LODWORD(STACK[0x4B70]) = a7 ^ (2 * ((a7 ^ 0x64) & (2 * ((a7 ^ 0x64) & (2 * ((a7 ^ 0x64) & (2 * ((a7 ^ 0x64) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46));
  v47 = ((v44 ^ 0x7001FF) & (v45 ^ 0x70C335) | v44 & 0x8F3C00) << 8;
  LODWORD(STACK[0x4B78]) = v47 ^ 0x8F3C12FF;
  LODWORD(STACK[0x4DE8]) = v47 & 0x30436C00;
  LOBYTE(v46) = a9 & 0x98 ^ 0xDA;
  v48 = a3 & 0x52 ^ 0x7F;
  v49 = (((a3 ^ (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & (2 * ((a3 ^ 0x64) & 0x36 ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x52) << 8) | (((a9 ^ (2 * ((a9 ^ 0x64) & (2 * ((a9 ^ 0x64) & (2 * ((a9 ^ 0x64) & (2 * ((a9 ^ 0x64) & (2 * ((a9 ^ 0x64) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0x98) << 16);
  LOBYTE(v46) = v18 & 0x70 ^ 0x4E;
  LODWORD(STACK[0x4B60]) = ((v18 ^ (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * ((v18 ^ 0x64) & (2 * v46) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46))) ^ 0x3F4888) & ~v49 | v49 & 0xC0B700;
  v50 = v12 & 0xEEEEEEEE ^ 0xFFFFFF85;
  LODWORD(STACK[0x4B58]) = v12 ^ (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * ((v12 ^ 0x64) & (2 * (v12 & (2 * v50) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50));
  LOBYTE(v50) = v17 & 0xAA ^ 0x63;
  v51 = v10 & 0x6E ^ 0xC5;
  v52 = (((v17 ^ (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x64) & (2 * ((v17 ^ 0x44) & (2 * ((v17 ^ 0x44) & 0xE ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50)) ^ v50))) ^ 0xAA) << 8) | (((v10 ^ (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x64) & (2 * ((v10 ^ 0x44) & (2 * (v51 ^ v10 & 0xA)) ^ v51)) ^ v51)) ^ v51)) ^ v51)) ^ v51))) ^ 0x6E) << 16);
  v53 = v19 & 0xC0 | 0x36;
  v54 = a5 & 0x1A ^ 0x1B;
  LODWORD(STACK[0x43F8]) = a5 ^ (2 * ((a5 ^ 0x64) & (2 * ((a5 ^ 0x64) & (2 * ((a5 ^ 0x64) & (2 * ((a5 ^ 0x64) & (2 * ((a5 ^ 0x64) & (2 * ((a5 ^ 0x64) & (2 * v54) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54));
  v55 = ((v52 ^ 0x59B7FF) & ((v19 ^ (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & (2 * ((v19 ^ 0x64) & 0x2C ^ v53)) ^ v53)) ^ v53)) ^ v53)) ^ v53))) ^ 0x513445) | v52 & 0xAECB00) << 8;
  LODWORD(STACK[0x4B68]) = v55 ^ 0x8E8A6AFF;
  LODWORD(STACK[0x4DF0]) = v55 & 0x31519400;
  LOBYTE(v43) = v14;
  LOBYTE(v55) = (v14 & 0xE4 | 2) ^ v14 & 0xC;
  LOBYTE(v55) = (v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * ((v14 ^ 0x64) & (2 * v55) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55;
  v56 = STACK[0x4DF8];
  LOBYTE(v54) = STACK[0x4DF8] & 0xD2 ^ 0x3F;
  v57 = (((v43 ^ (2 * v55)) ^ 0xE8) << 16) | (((v56 ^ (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & (2 * ((v56 ^ 0x64) & 0x36 ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54))) ^ 0xD2) << 8);
  v58 = STACK[0x4E00];
  v59 = STACK[0x4E00] & 0x8A ^ 0xFFFFFFD3;
  LODWORD(STACK[0x4E00]) = v58 ^ (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & (2 * ((v58 ^ 0x64) & 0x2E ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59));
  v60 = STACK[0x4E08];
  LOBYTE(v59) = STACK[0x4E08] & 0x72 ^ 0x4F;
  v61 = (((v60 ^ (2 * ((v60 ^ 0x64) & (2 * ((v60 ^ 0x64) & (2 * ((v60 ^ 0x64) & (2 * ((v60 ^ 0x64) & (2 * ((v60 ^ 0x64) & (2 * (v59 ^ v60 & 0x16)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0x3D2928) & ~v57 | v57 & 0xC2D600) << 8;
  LODWORD(STACK[0x4DF8]) = v61 ^ 0x8044A4FF;
  LODWORD(STACK[0x4E08]) = v61 & 0x72930900;
  v62 = STACK[0x4E18];
  LOBYTE(v61) = STACK[0x4E18] & 0x82 ^ 0xD7;
  v63 = STACK[0x4E10];
  LOBYTE(v59) = STACK[0x4E10] & 0x70 ^ 0x4E;
  v64 = v32 & 0xFF00FFFF | (((v62 ^ (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & (2 * ((v62 ^ 0x64) & 0x26 ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61))) ^ 0x82) << 16);
  v65 = ((v63 ^ (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * ((v63 ^ 0x64) & (2 * v59) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0x1FA3B0) & ~v64 | v64 & 0xE05C00;
  v66 = STACK[0x4E20] & 0x24 ^ 0xFFFFFFA0;
  LODWORD(STACK[0x4E10]) = LODWORD(STACK[0x4E20]) ^ (2 * ((LODWORD(STACK[0x4E20]) ^ 0x64) & (2 * ((LODWORD(STACK[0x4E20]) ^ 0x64) & (2 * ((LODWORD(STACK[0x4E20]) ^ 0x64) & (2 * ((LODWORD(STACK[0x4E20]) ^ 0x64) & (2 * v66) | v66)) ^ v66)) ^ v66)) ^ v66));
  v65 <<= 8;
  LODWORD(STACK[0x4E18]) = v65 ^ 0x600025FF;
  LODWORD(STACK[0x4E20]) = v65 & 0x973CDA00;
  v67 = STACK[0x4E24];
  LOBYTE(v65) = STACK[0x4E24] & 0x8A ^ 0xD3;
  LOBYTE(v66) = v67 ^ (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & (2 * ((v67 ^ 0x64) & 0x2E ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65)) ^ v65));
  v68 = STACK[0x4E28];
  v69 = STACK[0x4E28] & 0x4A ^ 0x73;
  v70 = v68 ^ (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & (2 * ((v68 ^ 0x64) & 0x2E ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69)) ^ v69));
  v71 = STACK[0x4E34];
  v72 = STACK[0x4E34] & 0x1A ^ 0x9B;
  LODWORD(STACK[0x4E34]) = v66;
  v73 = (v66 << 8) | (((v71 ^ (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & (2 * ((v71 ^ 0x64) & 0x3E ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72)) ^ v72))) ^ 0x1A) << 16);
  LODWORD(STACK[0x4E28]) = ((v73 ^ 0x2510FF) & (v23 ^ 0x259267)) + (v73 & 0xDA6D00);
  v74 = STACK[0x4E38];
  LOBYTE(v73) = STACK[0x4E38] & 0xD4 ^ 0xB8;
  v75 = (v45 << 8) & 0xFF00FFFF | (((v74 ^ (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * ((v74 ^ 0x64) & (2 * v73) ^ v73)) ^ v73)) ^ v73)) ^ v73))) ^ 0xD4) << 16);
  v76 = STACK[0x4E44];
  LOBYTE(v66) = STACK[0x4E44] & 0x2A ^ 0x23;
  v77 = ((v76 ^ (2 * ((v76 ^ 0x64) & (2 * ((v76 ^ 0x64) & (2 * ((v76 ^ 0x64) & (2 * ((v76 ^ 0x64) & (2 * (((2 * (v66 ^ v76 & 0x4E)) & 0x44 | v66) ^ (2 * (v66 ^ v76 & 0x4E)) & v76)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) ^ 0x14EE9C) & (v75 ^ 0x142EFF) | v75 & 0xEB1100;
  v78 = STACK[0x4E50] & 0x8C ^ 0xFFFFFFD4;
  LODWORD(STACK[0x4E24]) = LODWORD(STACK[0x4E50]) ^ (2 * ((LODWORD(STACK[0x4E50]) ^ 0x64) & (2 * ((LODWORD(STACK[0x4E50]) ^ 0x64) & (2 * ((LODWORD(STACK[0x4E50]) ^ 0x64) & (2 * ((LODWORD(STACK[0x4E50]) ^ 0x64) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78));
  v77 <<= 8;
  LODWORD(STACK[0x4E44]) = v77 ^ 0x9FF;
  LODWORD(STACK[0x4E50]) = v77 & 0xFFA5C400;
  v79 = STACK[0x4E68];
  LOBYTE(v77) = STACK[0x4E68] & 0x3E ^ 0x2D;
  v80 = STACK[0x4E60];
  LOBYTE(v78) = STACK[0x4E60] & 0xB0 ^ 0xEE;
  LOBYTE(v78) = v80 ^ (2 * ((v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * ((v80 ^ 0x64) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78));
  LODWORD(STACK[0x4E60]) = v70 ^ 0xFFFFFFB5;
  HIDWORD(v81) = v70 ^ 0xA;
  LODWORD(v81) = ((v70 ^ 0xFC548AC0) & ~((v78 ^ 0xB0) << 8) | ((v78 ^ 0xB0) << 8) & 0x7500) ^ 0xFC548A80;
  v82 = (v79 ^ (2 * ((v79 ^ 0x64) & (2 * ((v79 ^ 0x64) & (2 * ((v79 ^ 0x64) & (2 * ((v79 ^ 0x64) & (2 * ((v79 ^ 0x64) & (2 * (v77 ^ v79 & 0x1A)) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77)));
  HIDWORD(v81) = v81 >> 6;
  LODWORD(v81) = HIDWORD(v81);
  v83 = (v82 << 8) | ((v81 >> 26) << 16);
  LODWORD(STACK[0x4E38]) = v83 ^ 0x355A00FF;
  LODWORD(STACK[0x4E70]) = v83 & 0xCAA5C300;
  v84 = STACK[0x4E80];
  LOBYTE(v83) = STACK[0x4E80] & 0xD2 ^ 0x3F;
  v85 = STACK[0x4E78];
  LOBYTE(v75) = STACK[0x4E78] & 0xEC ^ 4;
  v86 = (((v84 ^ (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & (2 * ((v84 ^ 0x64) & 0x36 ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83))) ^ 0xD2) << 8) | (((v85 ^ (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * v75) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75))) ^ 0xEC) << 16);
  v87 = STACK[0x4E88];
  LOBYTE(v77) = STACK[0x4E88] & 0xB0 ^ 0xEE;
  v88 = ((v87 ^ (2 * ((v87 ^ 0x64) & (2 * ((v87 ^ 0x64) & (2 * ((v87 ^ 0x64) & (2 * ((v87 ^ 0x64) & (2 * ((v87 ^ 0x64) & (2 * v77) ^ v77)) ^ v77)) ^ v77)) ^ v77)) ^ v77))) ^ 0x55B3C2) & ~v86 | v86 & 0xAA4C00;
  v89 = STACK[0x4EB8];
  LOBYTE(v86) = STACK[0x4EB8] & 0xB8 ^ 0xEA;
  LOBYTE(v89) = v89 ^ (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * v86) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86));
  v88 <<= 8;
  LODWORD(STACK[0x4E78]) = v88 ^ 0x2A4004FF;
  LODWORD(STACK[0x4EB8]) = v88 & 0xD19FA900;
  v90 = STACK[0x4EC0];
  LOBYTE(v88) = STACK[0x4EC0] & 0xCC ^ 0x34;
  v91 = STACK[0x4EC8];
  LOBYTE(v75) = STACK[0x4EC8] & 0xB2 ^ 0x6F;
  v92 = (LODWORD(STACK[0x43E0]) << 8) | (((v91 ^ (2 * ((v91 ^ 0x64) & (2 * ((v91 ^ 0x64) & (2 * ((v91 ^ 0x64) & (2 * ((v91 ^ 0x64) & (2 * ((v91 ^ 0x64) & (2 * (v75 ^ v91 & 0x16)) ^ v75)) ^ v75)) ^ v75)) ^ v75)) ^ v75))) ^ 0xB2) << 16);
  v93 = (((v90 ^ (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * ((v90 ^ 0x64) & (2 * v88) ^ v88)) ^ v88)) ^ v88)) ^ v88))) ^ 0x1A477) & ~v92 | v92 & 0xFE5B00) << 8;
  LODWORD(STACK[0x4EC0]) = v93 ^ 0xEC4104FF;
  LODWORD(STACK[0x4ED0]) = v93 & 0x1218CA00;
  v94 = STACK[0x4EF8];
  LOBYTE(v93) = STACK[0x4EF8] & 0x10 ^ 0x9E;
  v95 = (v41 << 8) & 0xFF00FFFF | (((v94 ^ (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * ((v94 ^ 0x64) & (2 * v93) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93))) ^ 0x10) << 16);
  v96 = STACK[0x4F00];
  LOBYTE(v93) = STACK[0x4F00] & 0x4C ^ 0x74;
  v97 = ((v95 ^ 0xD615FF) & ((v96 ^ (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * ((v96 ^ 0x64) & (2 * v93) ^ v93)) ^ v93)) ^ v93)) ^ v93))) ^ 0xD65569) | v95 & 0x29AA00) << 8;
  LODWORD(STACK[0x4F00]) = v97 ^ 0x20028AFF;
  LODWORD(STACK[0x4F48]) = v97 & 0xCFB85500;
  v98 = STACK[0x5098];
  LOBYTE(v97) = STACK[0x5098] & 0x8C ^ 0xD4;
  LOBYTE(v97) = v98 ^ (2 * ((v98 ^ 0x64) & (2 * ((v98 ^ 0x64) & (2 * ((v98 ^ 0x64) & (2 * ((v98 ^ 0x64) & (2 * v97) ^ v97)) ^ v97)) ^ v97)) ^ v97)) ^ 0x8C;
  v99 = STACK[0x50D8];
  LOBYTE(v95) = STACK[0x50D8] & 0x62 ^ 0xC7;
  v100 = (((v99 ^ (2 * ((v99 ^ 0x64) & (2 * ((v99 ^ 0x64) & (2 * ((v99 ^ 0x64) & (2 * ((v99 ^ 0x64) & (2 * ((v99 ^ 0x44) & (2 * ((v99 ^ 0x44) & 6 ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95))) ^ 0xDB9D92B3) & ~(v97 << 8) | (v97 << 8) & 0x6D00) ^ 0xDB9D92D1;
  v101 = STACK[0x51B0];
  LOBYTE(v95) = STACK[0x51B0] & 0xFE ^ 0xD;
  v102 = (((v101 ^ (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * ((v101 ^ 0x64) & (2 * v95) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95))) ^ 0xFE) << 8) | (v100 << 16);
  v103 = STACK[0x5248];
  LOBYTE(v95) = STACK[0x5248] & 0xF2 ^ 0xF;
  v104 = STACK[0x5270];
  LOBYTE(v29) = STACK[0x5270] & 0x10 ^ 0x1E;
  v105 = (((v103 ^ (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * ((v103 ^ 0x64) & (2 * (v95 ^ v103 & 0x16)) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95))) ^ 0xF2) << 16) | (((v104 ^ (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * ((v104 ^ 0x64) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x10) << 8);
  v106 = ((v82 ^ 0x78D929) & ~v105 | v105 & 0x872600) << 8;
  LODWORD(STACK[0x5270]) = v106 ^ 0x8202E0FF;
  LODWORD(STACK[0x5248]) = v106 & 0x1D6D0C00;
  v107 = STACK[0x53F8];
  LOBYTE(v106) = STACK[0x53F8] & 0x74 ^ 0xC8;
  v108 = STACK[0x53B8];
  LOBYTE(v29) = STACK[0x53B8] & 0xD8 ^ 0xBA;
  v109 = (((v107 ^ (2 * ((v107 ^ 0x64) & (2 * ((v107 ^ 0x64) & (2 * ((v107 ^ 0x64) & (2 * ((v107 ^ 0x64) & (2 * v106) ^ v106)) ^ v106)) ^ v106)) ^ v106))) ^ 0x74) << 8) | (((v108 ^ (2 * ((v108 ^ 0x64) & (2 * ((v108 ^ 0x64) & (2 * ((v108 ^ 0x64) & (2 * ((v108 ^ 0x64) & (2 * ((v108 ^ 0x64) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xD8) << 16);
  LODWORD(STACK[0x43D8]) = v89;
  v110 = ((v89 ^ 0x28AEF4) & ~v109 | v109 & 0xD75100) << 8;
  LODWORD(STACK[0x43E0]) = v110 ^ 0xD34020FF;
  LODWORD(STACK[0x51B0]) = v110 & 0x2493DB00;
  v111 = STACK[0x55A0];
  LOBYTE(v95) = STACK[0x55A0] & 0x58 ^ 0x7A;
  LOBYTE(v89) = v28 & 0xAC ^ 0x64;
  v112 = (((v28 ^ (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * ((v28 ^ 0x64) & (2 * v89) ^ v89)) ^ v89)) ^ v89)) ^ v89))) ^ 0xAC) << 8) | (((v111 ^ (2 * ((v111 ^ 0x64) & (2 * ((v111 ^ 0x64) & (2 * ((v111 ^ 0x64) & (2 * ((v111 ^ 0x64) & (2 * ((v111 ^ 0x64) & (2 * v95) ^ v95)) ^ v95)) ^ v95)) ^ v95)) ^ v95))) ^ 0x58) << 16);
  v113 = (LODWORD(STACK[0x43F0]) ^ 0x668B34) & ~v112 | v112 & 0x997400;
  LOBYTE(v95) = *STACK[0x5380];
  LOBYTE(v112) = v95 & 0xB6 ^ 0x69;
  LOBYTE(v95) = v95 ^ (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * ((v95 ^ 0x64) & (2 * (v112 ^ v95 & 0x12)) ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ v112));
  LOBYTE(v112) = *STACK[0x5130];
  LOBYTE(v89) = v112 & 0x3A ^ 0x2B;
  v114 = v95 << 16;
  v115 = v114 | (((v112 ^ (2 * ((v112 ^ 0x64) & (2 * ((v112 ^ 0x64) & (2 * ((v112 ^ 0x64) & (2 * ((v112 ^ 0x64) & (2 * ((v112 ^ 0x64) & (2 * (v89 ^ v112 & 0x1E)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89))) ^ 0x3A) << 8);
  LOBYTE(v112) = *STACK[0x5520];
  LOBYTE(v86) = v112 & 0x34 ^ 0xA8;
  v116 = (v115 ^ 0x9E3FF) & ((v112 ^ (2 * ((v112 ^ 0x64) & (2 * ((v112 ^ 0x64) & (2 * ((v112 ^ 0x64) & (2 * ((v112 ^ 0x64) & (2 * v86) ^ v86)) ^ v86)) ^ v86)) ^ v86))) ^ 0x29E396) | v115 & 0xD61C00;
  v117 = STACK[0xFE70];
  STACK[0x50D8] = STACK[0xFE70] + 35917;
  v118 = *(v117 + 35917);
  v119 = v118 & 0xFFFFFF94 ^ 0x58;
  LODWORD(STACK[0x43D0]) = v118 ^ (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * v119) ^ v119)) ^ v119)) ^ v119)) ^ v119));
  LOBYTE(v119) = *STACK[0x5298];
  LOBYTE(v118) = v119 & 0x8A ^ 0xD3;
  LOBYTE(v89) = *STACK[0x5550];
  LOBYTE(v96) = v89 & 0xC6 | 0x31;
  v120 = (((v119 ^ (2 * ((v119 ^ 0x64) & (2 * ((v119 ^ 0x64) & (2 * ((v119 ^ 0x64) & (2 * ((v119 ^ 0x64) & (2 * ((v119 ^ 0x64) & (2 * ((v119 ^ 0x64) & 0x2E ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118))) ^ 0x8A) << 16) | (((v89 ^ (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & 0x22 ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ v96))) ^ 0xC6) << 8);
  LOBYTE(v118) = *STACK[0x5570];
  LOBYTE(v89) = v118 & 0x96 ^ 0xD9;
  v121 = ((v118 ^ (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * (v89 ^ v118 & 0x32)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89))) ^ 0x589148) & ~v120 | v120 & 0xA76E00;
  LOBYTE(v118) = *STACK[0x5320];
  LOBYTE(v89) = v118 & 0xAC ^ 0xE4;
  v122 = v118 ^ (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * v89) ^ v89)) ^ v89)) ^ v89)) ^ v89));
  v121 <<= 8;
  LODWORD(STACK[0x43C8]) = v121 ^ 0x30C01FF;
  LODWORD(STACK[0x53F8]) = v121 & 0xF4F33E00;
  LOBYTE(v121) = *STACK[0x5378];
  LOBYTE(v118) = v121 & 0xF4 ^ 0x88;
  v123 = v114 & 0xFFFF00FF | (((v121 ^ (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * v118) ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118))) ^ 0xF4) << 8);
  LOBYTE(v121) = *STACK[0x55E0];
  LOBYTE(v118) = v121 & 0x8E ^ 0x55;
  v124 = (v123 ^ 0x91AFF) & ((v121 ^ (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * (v118 ^ v121 & 0xAA)) ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118))) ^ 0x2D1AA2) | v123 & 0xD2E500;
  LOBYTE(v121) = *STACK[0x4B40];
  LOBYTE(v118) = v121 & 0x68 ^ 0x42;
  LOBYTE(v121) = v121 ^ (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x64) & (2 * ((v121 ^ 0x44) & (2 * v118) ^ v118)) ^ v118)) ^ v118)) ^ v118)) ^ v118));
  LOBYTE(v118) = *STACK[0x5118];
  LOBYTE(v89) = v118 & 0xE0 | 6;
  LOBYTE(v118) = v118 ^ (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x64) & (2 * ((v118 ^ 0x44) & (2 * v89) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89));
  LOBYTE(v89) = *STACK[0x5110];
  LOBYTE(v91) = v89 & 0x6C ^ 0x44;
  LOBYTE(v85) = *STACK[0x5140];
  LOBYTE(v103) = v85 & 0x82 ^ 0x57;
  v125 = (((v89 ^ (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * ((v89 ^ 0x64) & (2 * v91) ^ v91)) ^ v91)) ^ v91)) ^ v91))) ^ 0x6C) << 16) | (((v85 ^ (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & (2 * ((v85 ^ 0x64) & 0x26 ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103)) ^ v103))) ^ 0x82) << 8);
  v126 = (v118 ^ 0x8C2848) & ~v125 | v125 & 0x73D700;
  v117 += 37912;
  STACK[0x5098] = v117;
  LOBYTE(v117) = *v117;
  LOBYTE(v125) = v117 & 0x78 ^ 0x4A;
  v126 <<= 8;
  LODWORD(STACK[0x43B8]) = v126 ^ 0x50C356FF;
  LODWORD(STACK[0x53B8]) = v126 & 0x2F1C0100;
  v127 = LODWORD(STACK[0x4B50]) << 8;
  LODWORD(STACK[0x4EF8]) = v127 & 0x64162000;
  LODWORD(STACK[0x4B80]) = (LODWORD(STACK[0x4B60]) << 8) & 0x40C68400;
  LODWORD(STACK[0x4E28]) = v102 & 0xB73F1B00;
  LODWORD(STACK[0x4B60]) = (v113 << 8) ^ 0x984001FF;
  LODWORD(STACK[0x4EC8]) = (v113 << 8) & 0x2135FA00;
  v116 <<= 8;
  LODWORD(STACK[0x4E24]) = v116 & 0x1A080200;
  LODWORD(STACK[0x4B50]) = v116 ^ 0x40145DFF;
  LODWORD(STACK[0x4B58]) = v122;
  LODWORD(STACK[0x4B70]) = v121;
  LODWORD(STACK[0x4E10]) = (v124 << 8) & 0x701CDA00;
  LODWORD(STACK[0x4A80]) = (v124 << 8) ^ 0xE101FF;
  v128 = *(STACK[0x57D8] + 8 * SLODWORD(STACK[0x55D0]));
  LODWORD(STACK[0x43B0]) = (v117 ^ (2 * ((v117 ^ 0x64) & (2 * ((v117 ^ 0x64) & (2 * ((v117 ^ 0x64) & (2 * ((v117 ^ 0x64) & (2 * ((v117 ^ 0x64) & (2 * v125) ^ v125)) ^ v125)) ^ v125)) ^ v125)) ^ v125)));
  return v128(v127 ^ 0x900114FF);
}

uint64_t sub_100808800()
{
  LODWORD(STACK[0x57C0]) = v0 + 22600;
  LODWORD(STACK[0xE074]) = -143113071;
  return (*(STACK[0x57D8] + 8 * (v0 + 14146)))();
}

uint64_t sub_1008088EC()
{
  STACK[0x55F0] = v6;
  LODWORD(STACK[0x4E90]) |= LODWORD(STACK[0x5128]);
  v8 = v0 >= 0x18A8E943;
  LODWORD(STACK[0x5128]) = v0 + 574451548;
  LODWORD(STACK[0x5140]) &= (v0 + 1741079833) ^ LODWORD(STACK[0x4B80]);
  LODWORD(STACK[0x52A8]) = STACK[0x5138] & (LODWORD(STACK[0x4B88]) ^ 0x1CE28BA9);
  LODWORD(STACK[0x5138]) = STACK[0x5130] & (LODWORD(STACK[0x4B90]) ^ 0x891DB1FF);
  LODWORD(STACK[0x5530]) = STACK[0x4D58] & (LODWORD(STACK[0x4C68]) ^ 0xD37F081E);
  v9 = STACK[0x5310];
  v10 = STACK[0x5310] & 0xBC ^ 0x84;
  v11 = v9 ^ (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * ((v9 ^ 0x34) & (2 * v10) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ v10)) ^ 0xBC;
  v12 = STACK[0x5318];
  v13 = STACK[0x5318] & 0xD0 ^ 0x96;
  v14 = v11;
  v15 = v11 << 8;
  v16 = ((v12 ^ (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * ((v12 ^ 0x34) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13))) ^ 0xE761) & (v15 ^ 0xFFFFF7FF) & 0xFFFFE7FF | (((v14 >> 3) & 3) << 11);
  v17 = STACK[0x5330];
  v18 = STACK[0x5330] & 0x44 ^ 0xC8;
  v19 = STACK[0x5320];
  v20 = (STACK[0x5320] & 0xFFFFFFB4 | 0x48) ^ STACK[0x5320] & 0xF0;
  LODWORD(STACK[0x5320]) = v19 ^ (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * ((v19 ^ 0x34) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20));
  LODWORD(STACK[0x5330]) = (((v17 ^ (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * ((v17 ^ 0x34) & (2 * v18) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x44) << 8) | (v16 << 16);
  v21 = STACK[0x5328];
  LOBYTE(v14) = STACK[0x5328] & 0xE8 ^ 0x3A;
  v22 = ((v21 ^ (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xA36E) & (v15 ^ 0xEBFF) | v15 & 0x5C00;
  v23 = STACK[0x5338];
  LOBYTE(v15) = STACK[0x5338] & 0xDE ^ 0x15;
  LOBYTE(v15) = v23 ^ (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * ((v23 ^ 0x34) & (2 * (v15 ^ v23 & 0xAA)) ^ v15)) ^ v15)) ^ v15)) ^ v15)) ^ v15));
  v24 = STACK[0x5350];
  LOBYTE(v20) = STACK[0x5350] & 0x7A ^ 0x63;
  v25 = (v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * ((v24 ^ 0x34) & (2 * (v20 ^ v24 & 0xE)) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20;
  v26 = STACK[0x5348];
  LOBYTE(v20) = (v26 & 0xB4 | 0x4A) ^ v26 & 0xFC;
  v27 = STACK[0x5358];
  v28 = ~LODWORD(STACK[0x5358]) & 0x4C;
  v29 = (((LODWORD(STACK[0x5350]) ^ (2 * v25)) ^ 0x7A) << 16) | (((LODWORD(STACK[0x5348]) ^ (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * ((v26 ^ 0x34) & (2 * v20) ^ v20)) ^ v20)) ^ v20)) ^ v20)) ^ v20))) ^ 0x48) << 8);
  v30 = (v15 ^ 0x72A39) & ~v29 | v29 & 0xF8D500;
  v22 <<= 16;
  LODWORD(STACK[0x5358]) = v22 & 0x2DCE0000;
  v31 = v22 & 0xFFFF00FF | (((v27 ^ (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * ((v27 ^ 0x34) & (2 * v28) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0x4C) << 8);
  v32 = STACK[0x5360];
  v33 = STACK[0x5360] & 0xAAAAAAA0 | 0x1E;
  LODWORD(STACK[0x5348]) = v32 ^ (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * ((v32 ^ 0x34) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33));
  LODWORD(STACK[0x5360]) = v31 ^ 0x5031FFFF;
  v34 = STACK[0x5240] & 0x54 ^ 0x50;
  LODWORD(STACK[0x5350]) = LODWORD(STACK[0x5240]) ^ (2 * ((LODWORD(STACK[0x5240]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5240]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5240]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5240]) ^ 0x34) & (2 * v34) | v34)) ^ v34)) ^ v34)) ^ v34));
  v35 = STACK[0x5378];
  LOBYTE(v31) = STACK[0x5378] & 0xD2 ^ 0x97;
  v36 = STACK[0x5370];
  v37 = STACK[0x5370] & 0xA2 ^ 0x9F;
  v38 = (((v35 ^ (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * (v31 ^ v35 & 0x26)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0xD2) << 16) | (((v36 ^ (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & (2 * ((v36 ^ 0x34) & 0x16 ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37)) ^ v37))) ^ 0xA2) << 8);
  v30 <<= 8;
  LODWORD(STACK[0x5378]) = v30 ^ 0xE81418FF;
  LODWORD(STACK[0x5370]) = v30 & 0x11EB6100;
  v39 = STACK[0x5340];
  LOBYTE(v30) = ~LODWORD(STACK[0x5340]) & 0x4C;
  v40 = (v38 ^ 0xBFFEFF) & ((v39 ^ (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * ((v39 ^ 0x34) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0xBF9EC5) | v38 & 0x406100;
  v41 = STACK[0x5380];
  LOBYTE(v30) = STACK[0x5380] & 0x3C ^ 0xC4;
  LODWORD(STACK[0x5240]) = ((v40 << 8) ^ 0x2010FF) & ((v41 ^ (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0xB3221163) | (v40 << 8) & 0x4CDDEE00;
  v42 = STACK[0x5368];
  LOBYTE(v40) = STACK[0x5368] & 8 ^ 0xEA;
  v43 = STACK[0x5388];
  LOBYTE(v31) = STACK[0x5388] & 0x42 ^ 0xCF;
  v44 = (((v42 ^ (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * ((v42 ^ 0x34) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 8) << 16) | (((v43 ^ (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & (2 * ((v43 ^ 0x34) & 0x36 ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x42) << 8);
  v45 = STACK[0x5390];
  LOBYTE(v43) = STACK[0x5390] & 0x76 ^ 0xE1;
  v46 = (v45 ^ (2 * ((v45 ^ 0x34) & (2 * ((v45 ^ 0x34) & (2 * ((v45 ^ 0x34) & (2 * ((v45 ^ 0x34) & (2 * ((v45 ^ 0x34) & (2 * (v43 ^ v45 & 2)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)));
  LODWORD(STACK[0x5390]) = v46;
  v47 = ((v46 ^ 0xA203F) & ~v44 | v44 & 0xF5DF00) << 8;
  LODWORD(STACK[0x5388]) = v47 ^ 0xF59534FF;
  LODWORD(STACK[0x5380]) = v47 & 0x24A8B00;
  v48 = STACK[0x5248];
  LOBYTE(v43) = STACK[0x5248] & 0xD6 ^ 0x91;
  v49 = STACK[0x53A0];
  LOBYTE(v31) = STACK[0x53A0] & 0x8A ^ 0xAB;
  v50 = (((v49 ^ (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & (2 * ((v49 ^ 0x34) & 0x3E ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x8A) << 16) | (((v48 ^ (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * ((v48 ^ 0x34) & (2 * (v43 ^ v48 & 0x22)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43))) ^ 0xD6) << 8);
  v51 = STACK[0x53A8];
  LOBYTE(v47) = STACK[0x53A8] & 0x3C ^ 0x44;
  v52 = ((v51 ^ (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47))) ^ 0x57F2D9) & ~v50 | v50 & 0xA80D00;
  v53 = STACK[0x53B0];
  LOBYTE(v47) = STACK[0x53B0] & 0xBE ^ 5;
  LOBYTE(v47) = v53 ^ (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * v47) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47)) ^ v47));
  v54 = STACK[0x53B8];
  LOBYTE(v31) = STACK[0x53B8] & 0xD0 ^ 0x96;
  LODWORD(STACK[0x5248]) = ((v52 << 8) ^ 0xA00118FF) & ((v54 ^ (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * ((v54 ^ 0x34) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0xE113D9E4) | (v52 << 8) & 0x1EEC2600;
  v55 = STACK[0x53C8];
  LOBYTE(v31) = STACK[0x53C8] & 0x5E ^ 0xD5;
  v56 = STACK[0x5398];
  LOBYTE(v29) = STACK[0x5398] & 0x16 ^ 0xF1;
  v57 = (((v55 ^ (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * ((v55 ^ 0x34) & (2 * (v31 ^ v55 & 0xAA)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31))) ^ 0x5E) << 16) | (((v56 ^ (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * (v29 ^ v56 & 0x22)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0x16) << 8);
  v58 = STACK[0x53E8];
  LOBYTE(v29) = STACK[0x53E8] & 0xD8 ^ 0x12;
  v59 = STACK[0x53C0];
  LOBYTE(v48) = STACK[0x53C0] & 0x74 ^ 0x60;
  v60 = STACK[0x53F0];
  v61 = STACK[0x53F0] & 0xC0 ^ 0xFFFFFF8E;
  LODWORD(STACK[0x53B0]) = v60 ^ (2 * ((v60 ^ 0x34) & (2 * ((v60 ^ 0x34) & (2 * ((v60 ^ 0x34) & (2 * ((v60 ^ 0x34) & (2 * ((v60 ^ 0x34) & 0x1C ^ v61)) ^ v61)) ^ v61)) ^ v61)) ^ v61));
  v62 = ((v47 ^ 0xFDC956) & ~v57 | v57 & 0x23600) << 8;
  LODWORD(STACK[0x53B8]) = v62 ^ 0x20015FF;
  LODWORD(STACK[0x53C8]) = v62 & 0x183FE200;
  v63 = STACK[0x53D0];
  LOBYTE(v62) = STACK[0x53D0] & 0x8A ^ 0x2B;
  v64 = (v63 ^ (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & (2 * ((v63 ^ 0x34) & 0x3E ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)) ^ v62)));
  v65 = STACK[0x53D8];
  v66 = STACK[0x53D8] & 0x46 ^ 0xFFFFFFC9;
  LODWORD(STACK[0x53E8]) = v65 ^ (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * ((v65 ^ 0x34) & (2 * (v66 ^ v65 & 0x32)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66));
  v67 = STACK[0x53E0];
  LOBYTE(v66) = STACK[0x53E0] & 0xAA ^ 0x1B;
  v68 = ((v64 ^ 0x52C394) & ~((((v59 ^ (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x74) << 8) | (((v58 ^ (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xD8) << 16)) | (((v59 ^ (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * ((v59 ^ 0x34) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 0x74) << 8) & 0x3C00 | (((v58 ^ (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xD8) << 16) & 0xAD3C00) << 8;
  LODWORD(STACK[0x53F0]) = (v68 ^ 0x210C20FF) & ((v67 ^ (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & 0x1E ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) ^ 0x238D2642) | v68 & 0xDC72D900;
  v69 = STACK[0x5400];
  LOBYTE(v66) = STACK[0x5400] & 0xA4 | 0x18;
  v70 = STACK[0x53F8];
  v71 = STACK[0x53F8] & 0xA6 ^ 0x99;
  v72 = (((v69 ^ (2 * ((v69 ^ 0x34) & (2 * ((v69 ^ 0x34) & (2 * ((v69 ^ 0x34) & (2 * ((v69 ^ 0x34) & (2 * v66) ^ v66)) ^ v66)) ^ v66)) ^ v66))) ^ 0xA4) << 16) | (((v70 ^ (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * ((v70 ^ 0x34) & (2 * (v71 ^ v70 & 0x12)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71))) ^ 0xA6) << 8);
  v73 = STACK[0x5408];
  LOBYTE(v57) = STACK[0x5408] & 0xCE ^ 0xD;
  v74 = (v72 ^ 0xFBDFFF) & ((v73 ^ (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * ((v73 ^ 0x34) & (2 * (v57 ^ v73 & 0x3A)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x93958B) | v72 & 0x6C6A00;
  v75 = STACK[0x5420];
  LOBYTE(v29) = STACK[0x5420] & 0xA0 ^ 0x9E;
  v76 = STACK[0x5410];
  v77 = STACK[0x5410] & 0x7C ^ 0xE4;
  v78 = (((v75 ^ (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * ((v75 ^ 0x34) & (2 * v29) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29))) ^ 0xA0) << 16) | (((v76 ^ (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * ((v76 ^ 0x34) & (2 * v77) ^ v77)) ^ v77)) ^ v77)) ^ v77))) ^ 0x7C) << 8);
  v79 = STACK[0x5430];
  v80 = STACK[0x5430] & 0xDC ^ 0x94;
  v81 = ((v79 ^ (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * ((v79 ^ 0x34) & (2 * v80) ^ v80)) ^ v80)) ^ v80)) ^ v80))) ^ 0xF2A44B) & ~v78 | v78 & 0xD5B00;
  v82 = STACK[0x5440];
  v83 = STACK[0x5440] & 0x8E ^ 0x2D;
  v84 = (v82 ^ (2 * ((v82 ^ 0x34) & (2 * ((v82 ^ 0x34) & (2 * ((v82 ^ 0x34) & (2 * ((v82 ^ 0x34) & (2 * ((v82 ^ 0x34) & (2 * (v83 ^ v82 & 0x3A)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)));
  LODWORD(STACK[0x4B10]) = ((v81 << 8) ^ 0x54948FF) & (v84 ^ 0x4549C98A) | (v81 << 8) & 0xBAB63600;
  v74 <<= 8;
  LODWORD(STACK[0x5430]) = v74 ^ 0x406A2AFF;
  LODWORD(STACK[0x5440]) = v74 & 0xAE859100;
  v85 = STACK[0x5450];
  LOBYTE(v74) = STACK[0x5450] & 0x14 ^ 0x70;
  LOBYTE(v74) = v85 ^ (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * ((v85 ^ 0x34) & (2 * v74) ^ v74)) ^ v74)) ^ v74)) ^ v74));
  v86 = STACK[0x5460];
  LOBYTE(v16) = STACK[0x5460] & 0x38 | 0xC2;
  v87 = (v64 << 16) | (((v86 ^ (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * ((v86 ^ 0x34) & (2 * v16) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x38) << 8);
  v88 = STACK[0x5250];
  LODWORD(STACK[0x5410]) = v88 ^ (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * ((v88 ^ 0x34) & (2 * (v88 & 0xB4)) ^ v88 & 0xB4)) ^ v88 & 0xB4)) ^ v88 & 0xB4)) ^ (v88 & 0xB4 | 0x40)));
  v89 = ((v87 ^ 0x559FF) & (v74 ^ 0xF59A9) | v87 & 0xF0A600) << 8;
  LODWORD(STACK[0x5450]) = v89 ^ 0x608200FF;
  LODWORD(STACK[0x5460]) = v89 & 0x146CE700;
  v90 = STACK[0x5258];
  LOBYTE(v87) = STACK[0x5258] & 0x96 ^ 0x31;
  v91 = STACK[0x5480];
  LOBYTE(v48) = STACK[0x5480] & 4 | 0xE8;
  v92 = STACK[0x5470];
  LOBYTE(v57) = STACK[0x5470] & 0xA0 ^ 0x9E;
  v93 = (((v90 ^ (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * ((v90 ^ 0x34) & (2 * (v87 ^ v90 & 0x22)) ^ v87)) ^ v87)) ^ v87)) ^ v87)) ^ v87))) ^ 0x96) << 16) | (((v91 ^ (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * v48) ^ v48)) ^ v48)) ^ v48)) ^ v48)) ^ v48))) ^ 4) << 8);
  v94 = ((v92 ^ (2 * ((v92 ^ 0x34) & (2 * ((v92 ^ 0x34) & (2 * ((v92 ^ 0x34) & (2 * ((v92 ^ 0x34) & (2 * ((v92 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x360A32) & ~v93 | v93 & 0xC9F500;
  v95 = STACK[0x54A0];
  LOBYTE(v93) = STACK[0x54A0] & 0x9E ^ 0x35;
  v96 = STACK[0x54B0];
  LOBYTE(v87) = STACK[0x54B0] & 0x64 ^ 0xF8;
  v97 = (((v96 ^ (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * ((v96 ^ 0x34) & (2 * v87) ^ v87)) ^ v87)) ^ v87)) ^ v87))) ^ 0x64) << 8) | (((v95 ^ (2 * ((v95 ^ 0x34) & (2 * ((v95 ^ 0x34) & (2 * ((v95 ^ 0x34) & (2 * ((v95 ^ 0x34) & (2 * ((v95 ^ 0x34) & (2 * (v93 ^ v95 & 0xAA)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93))) ^ 0x9E) << 16);
  v98 = STACK[0x54C0];
  LOBYTE(v93) = STACK[0x54C0] & 0xDA ^ 0x93;
  v99 = (((v98 ^ (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * ((v98 ^ 0x34) & (2 * (v93 ^ v98 & 0x2E)) ^ v93)) ^ v93)) ^ v93)) ^ v93)) ^ v93))) ^ 0xA9A621) & ~v97 | v97 & 0x565900) << 8;
  LODWORD(STACK[0x54C0]) = v99 ^ 0x60104FF;
  LODWORD(STACK[0x5408]) = v99 & 0x785CC200;
  v100 = STACK[0x54E0];
  LOBYTE(v99) = STACK[0x54E0] & 0x4A ^ 0x4B;
  LOBYTE(v99) = v100 ^ (2 * ((v100 ^ 0x34) & (2 * ((v100 ^ 0x34) & (2 * ((v100 ^ 0x34) & (2 * ((v100 ^ 0x34) & (2 * ((v100 ^ 0x34) & (2 * ((v100 ^ 0x34) & (2 * v99) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99));
  v101 = STACK[0x5260];
  LOBYTE(v81) = STACK[0x5260] & 0x78 ^ 0x62;
  v102 = STACK[0x5268];
  LOBYTE(v59) = STACK[0x5268] & 0x1E ^ 0xF5;
  v103 = (((v102 ^ (2 * ((v102 ^ 0x34) & (2 * ((v102 ^ 0x34) & (2 * ((v102 ^ 0x34) & (2 * ((v102 ^ 0x34) & (2 * ((v102 ^ 0x34) & (2 * (v59 ^ v102 & 0xAA)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59))) ^ 0x1E) << 8) | (((v101 ^ (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * v81) ^ v81)) ^ v81)) ^ v81)) ^ v81)) ^ v81))) ^ 0x78) << 16);
  v104 = (v99 ^ 0xAB20CE) & ~v103 | v103 & 0x54DF00;
  v105 = STACK[0x5278];
  LOBYTE(v99) = STACK[0x5278] & 0x9E ^ 0x35;
  v106 = STACK[0x54F0];
  v107 = STACK[0x54F0] & 0xEEEEEEEE ^ 0x3D;
  v108 = v106 ^ (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * ((v106 ^ 0x34) & (2 * (v107 ^ v106 & 0x1A)) ^ v107)) ^ v107)) ^ v107)) ^ v107)) ^ v107));
  v109 = STACK[0x5270];
  LOBYTE(v107) = STACK[0x5270] & 0x64 ^ 0x78;
  v110 = (((v109 ^ (2 * ((v109 ^ 0x34) & (2 * ((v109 ^ 0x34) & (2 * ((v109 ^ 0x34) & (2 * ((v109 ^ 0x34) & (2 * v107) ^ v107)) ^ v107)) ^ v107)) ^ v107))) ^ 0x64) << 8) | (((v105 ^ (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * (v99 ^ v105 & 0xAA)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99))) ^ 0x9E) << 16);
  v111 = STACK[0x5280];
  LOBYTE(v99) = STACK[0x5280] & 0xC2 ^ 0xF;
  v112 = (((v111 ^ (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & 0x36 ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99)) ^ v99))) ^ 0xE45074) & ~v110 | v110 & 0x1BAF00) << 8;
  LODWORD(STACK[0x5470]) = v112 ^ 0x188A01FF;
  LODWORD(STACK[0x54F0]) = v112 & 0x23255800;
  v113 = STACK[0x5500];
  LOBYTE(v112) = STACK[0x5500] & 0xBA ^ 0x83;
  LOBYTE(v112) = v113 ^ (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * ((v113 ^ 0x34) & (2 * (v112 ^ v113 & 0xE)) ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ v112));
  LOBYTE(v113) = v2;
  LOBYTE(v110) = v2 & 0xEA ^ 0x3B;
  v114 = (v2 ^ 0x34) & (2 * ((v2 ^ 0x34) & (2 * ((v2 ^ 0x34) & (2 * ((v2 ^ 0x34) & (2 * ((v2 ^ 0x34) & (2 * ((v2 ^ 0x34) & 0x1E ^ v110)) ^ v110)) ^ v110)) ^ v110)) ^ v110)) ^ v110;
  v115 = STACK[0x5510];
  v116 = STACK[0x5510] & 0xA ^ 0x6B;
  LODWORD(STACK[0x5400]) = v115 ^ (2 * ((v115 ^ 0x34) & (2 * ((v115 ^ 0x34) & (2 * ((v115 ^ 0x34) & (2 * ((v115 ^ 0x34) & (2 * ((v115 ^ 0x34) & (2 * ((v115 ^ 0x34) & 0x3E ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116)) ^ v116));
  v117 = v4 & 0x2C ^ 0x5C;
  v118 = STACK[0x5520];
  v119 = STACK[0x5520] & 0xAAAAAAAA ^ 0x1B;
  v120 = (((v113 ^ (2 * v114)) ^ 0xEA) << 16) | (((v118 ^ (2 * ((v118 ^ 0x34) & (2 * ((v118 ^ 0x34) & (2 * ((v118 ^ 0x34) & (2 * ((v118 ^ 0x34) & (2 * ((v118 ^ 0x34) & (2 * ((v118 ^ 0x34) & 0x1E ^ v119)) ^ v119)) ^ v119)) ^ v119)) ^ v119)) ^ v119))) ^ 0xAA) << 8);
  LOBYTE(v119) = (v3 & 0xB4 | 8) ^ v3 & 0x70;
  v121 = STACK[0x5540];
  v122 = STACK[0x5540] & 0x78 ^ 0xFFFFFFE2;
  v123 = (((v121 ^ (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * ((v121 ^ 0x34) & (2 * v122) ^ v122)) ^ v122)) ^ v122)) ^ v122)) ^ v122))) ^ 0x78) << 8) | (((v3 ^ (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * ((v3 ^ 0x34) & (2 * v119) ^ v119)) ^ v119)) ^ v119)) ^ v119)) ^ v119))) ^ 0xC4) << 16);
  v124 = ((v112 ^ 0x4FF481) & ~v120 | v120 & 0xB00B00) << 8;
  LODWORD(STACK[0x5540]) = v124 ^ 0xA008C4FF;
  LODWORD(STACK[0x5510]) = v124 & 0x1CA31200;
  v125 = ((v4 ^ (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * v117) ^ v117)) ^ v117)) ^ v117)) ^ v117))) ^ 0x198B68) & ~v123 | v123 & 0xE67400;
  v126 = STACK[0x5610];
  v127 = ~LODWORD(STACK[0x5610]) | 0x9D;
  LOBYTE(v123) = (v126 ^ 0x34) & (2 * ((v126 ^ 0x34) & (2 * ((v126 ^ 0x34) & (2 * ((v126 ^ 0x34) & (2 * ((v126 ^ 0x34) & (2 * ((v126 ^ 0x34) & 0x16 ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127)) ^ v127;
  v128 = STACK[0x5600] & 0x9C ^ 0x34;
  v129 = LODWORD(STACK[0x5600]) ^ (2 * ((LODWORD(STACK[0x5600]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5600]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5600]) ^ 0x34) & (2 * ((LODWORD(STACK[0x5600]) ^ 0x34) & (2 * v128) ^ v128)) ^ v128)) ^ v128)) ^ v128));
  LODWORD(STACK[0x5420]) = (v125 << 8) & 0x5CAC0100;
  v130 = (v84 << 8) & 0xFF00FFFF | (((v126 ^ (2 * v123)) ^ 0x62) << 16);
  v131 = (v130 ^ 0x1A20FF) & ((v1 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v1 ^ 0x34)) & 0x28 ^ 0x1C) & (v1 ^ 0x34))) ^ 0x1C) & (v1 ^ 0x34))) ^ 0x1C) & (v1 ^ 0x34))) ^ 0x5C) & (v1 ^ 0x34)))) ^ 0x1AA43A) | v130 & 0xE55B00;
  v132 = STACK[0x5620];
  v133 = STACK[0x5620] & 0xFFFFFFB4 | 0xB;
  v134 = v133 ^ STACK[0x5620] & 0x7E;
  v135 = v132 ^ (2 * ((v132 ^ 0x34) & (2 * ((v132 ^ 0x34) & (2 * ((v132 ^ 0x34) & (2 * ((v132 ^ 0x34) & (2 * ((v132 ^ 0x34) & (2 * ((v132 ^ 0x34) & (2 * v133) ^ v134)) ^ v134)) ^ v134)) ^ v134)) ^ v134)) ^ v134));
  v131 <<= 8;
  v136 = v131 ^ 0xC10008FF;
  LODWORD(STACK[0x5500]) = v131 & 0x2C59B300;
  v137 = STACK[0x5630];
  LOBYTE(v133) = STACK[0x5630] & 0xE4 ^ 0xB8;
  LOBYTE(v70) = STACK[0x5640] & 0xEE ^ 0x3D;
  v138 = LODWORD(STACK[0x5640]) ^ 0x34;
  v139 = (((v137 ^ (2 * ((v137 ^ 0x34) & (2 * ((v137 ^ 0x34) & (2 * ((v137 ^ 0x34) & (2 * ((v137 ^ 0x34) & (2 * v133) ^ v133)) ^ v133)) ^ v133)) ^ v133))) ^ 0xE4) << 16) | (((LODWORD(STACK[0x5640]) ^ (2 * (v138 & (2 * (v138 & (2 * (v138 & (2 * (v138 & (2 * (v138 & (2 * (v70 ^ STACK[0x5640] & 0x1A)) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70))) ^ 0xEE) << 8);
  LOBYTE(v133) = v7 & 0x92 ^ 0xB7;
  v140 = v7 ^ 0x34;
  v141 = ((v7 ^ (2 * (v140 & (2 * (v140 & (2 * (v140 & (2 * (v140 & (2 * (v140 & (2 * (v133 ^ v7 & 0x26)) ^ v133)) ^ v133)) ^ v133)) ^ v133)) ^ v133))) ^ 0xBCA51F) & ~v139 | v139 & 0x435A00;
  LOBYTE(v139) = v5 & 0x8C ^ 0x2C;
  v142 = v5 ^ (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * v139) ^ v139)) ^ v139)) ^ v139)) ^ v139));
  v143 = !v8;
  LODWORD(STACK[0x5640]) = STACK[0x5330] & 0xCF8FAD00;
  v144 = LODWORD(STACK[0x5410]);
  LODWORD(STACK[0x54E0]) = (v94 << 8) & 0x4FF3E600;
  LODWORD(STACK[0x54D0]) = (v104 << 8) & 0xDFBFFF00;
  LODWORD(STACK[0x5630]) = (v141 << 8) & 0x7B3EE100;
  return (*(STACK[0x57D8] + 8 * ((45490 * v143) ^ LODWORD(STACK[0x5128]))))(v129, LODWORD(STACK[0x5128]), v142, v108, v144, v136, v135, 144863992);
}

uint64_t sub_10080AA28@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W7>, int a4@<W8>)
{
  LODWORD(STACK[0x4B88]) = LODWORD(STACK[0x5620]) | LODWORD(STACK[0x5640]);
  LODWORD(STACK[0x4A50]) = LODWORD(STACK[0x5610]) | LODWORD(STACK[0x5460]);
  LODWORD(STACK[0x4AA0]) = LODWORD(STACK[0x5600]) | LODWORD(STACK[0x54F0]);
  LODWORD(STACK[0x4A88]) = LODWORD(STACK[0x5540]) | LODWORD(STACK[0x5630]);
  LODWORD(STACK[0x4AD0]) = v5 | LODWORD(STACK[0x5520]);
  LODWORD(STACK[0x5398]) = v9 & (v7 ^ 0x98CEB7F4);
  LODWORD(STACK[0x53C8]) = v10 & (a2 ^ 0xF3CFFC31);
  LODWORD(STACK[0x5390]) = a3 & (v8 ^ 0x4EE88ADE);
  LODWORD(STACK[0x53E0]) = a1 & (v6 ^ 0x4468F4E);
  LODWORD(STACK[0x5388]) = (v13 ^ 0xFCB29EA4 ^ ((v11 - 902479758) | 0x10A1488)) & v4;
  LODWORD(STACK[0x53C0]) = (v12 ^ 0x5412A69E) & a4;
  return (*(STACK[0x57D8] + 8 * (v11 + 26747)))();
}

uint64_t sub_10080ABBC()
{
  LODWORD(STACK[0x953C]) = STACK[0x8F0C];
  v1 = STACK[0x57D8];
  STACK[0x5E70] = *(STACK[0x57D8] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x615B) - 5398) ^ v0)))();
}

uint64_t sub_10080ADB4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  LODWORD(STACK[0x20D4]) = v10;
  v22 = 4647 * (((v8 - v10) >> 1) | ((v8 - v10) << 7) | 0xD50);
  v23 = 1291 * (97 * (*(v11 + v22 - 6784 * (((1266205 * v22) >> 32) >> 1)) ^ v9 ^ 0xE3)) + 2978337;
  v24 = *(STACK[0x3A60] + 8 * (v23 - 3108 * (((5527629 * v23) >> 32) >> 2)));
  STACK[0x1EC8] = v24 ^ ((v24 ^ 0x951AE5391FFE27CCLL) >> 6) ^ ((v24 ^ 0x951AE5391FFE27CCLL) >> 4) ^ 0xD007F72D6340ADEALL;
  v25 = *(STACK[0x3AC0] + 8 * v9);
  STACK[0x39D8] = a5;
  STACK[0x2128] = STACK[0x3AA0];
  STACK[0x3888] = v14;
  STACK[0x3880] = v17;
  STACK[0x2120] = STACK[0x3A30];
  STACK[0x39D0] = a8;
  STACK[0x3878] = v15;
  STACK[0x2118] = STACK[0x3A90];
  STACK[0x2110] = STACK[0x3A40];
  STACK[0x3870] = STACK[0x3940];
  STACK[0x3510] = STACK[0x3AD0];
  STACK[0x3868] = STACK[0x3948];
  STACK[0x2108] = STACK[0x3A48];
  STACK[0x3AB8] = a3;
  STACK[0x2100] = STACK[0x3AE8];
  STACK[0x3500] = STACK[0x3AC8];
  STACK[0x3508] = STACK[0x3558];
  STACK[0x39F0] = a2;
  STACK[0x3860] = v16;
  STACK[0x34F8] = STACK[0x39A0];
  STACK[0x3858] = STACK[0x3950];
  STACK[0x34F0] = STACK[0x3998];
  STACK[0x3AA8] = a1;
  STACK[0x3530] = STACK[0x39A8];
  STACK[0x34E8] = STACK[0x3A78];
  STACK[0x20F8] = STACK[0x3A58];
  STACK[0x34E0] = STACK[0x3A80];
  STACK[0x3850] = v21;
  STACK[0x3848] = v20;
  STACK[0x20F0] = STACK[0x3A88];
  STACK[0x20E8] = STACK[0x3A70];
  STACK[0x20E0] = STACK[0x3A38];
  STACK[0x20D8] = STACK[0x3A50];
  STACK[0x3838] = v19;
  STACK[0x3AB0] = v13;
  LODWORD(STACK[0x3900]) = STACK[0x36E0];
  STACK[0x39E8] = v12;
  STACK[0x3840] = v18;
  return v25();
}

uint64_t sub_10080B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x464]) = v8;
  v14 = LODWORD(STACK[0x6D0]) + LODWORD(STACK[0x6B8]);
  v15 = LODWORD(STACK[0x6B0]) + v11;
  v16 = LODWORD(STACK[0x6A8]) + 1185385741;
  v17 = (((v11 - 63132922) ^ (((a5 + 80512831) & 0xFB332AFB) - 788619082)) - 1551473125) ^ (a5 + 1821034696 + ((v11 - 63132922) ^ 0x1FF39CCC)) ^ (((v11 - 63132922) ^ 0xA5097733) - 697183607);
  v18 = (v15 + 1576164065) ^ 0xAE65E12F;
  v19 = (LODWORD(STACK[0x6D0]) + 1427188158) ^ 0x6A04285E;
  v20 = (v14 - 1228482151) ^ 0xAE65E12F;
  v21 = ((((v15 + 1576164065) ^ (LODWORD(STACK[0x660]) + 757792551 + v17) ^ 0xA3904731) + 938193156) ^ (((v15 + 1576164065) ^ (LODWORD(STACK[0x660]) + 757792551 + v17) ^ 0xE427508E) + 1885120189) ^ (((v15 + 1576164065) ^ (LODWORD(STACK[0x660]) + 757792551 + v17) ^ 0xE9D2F690) + 2108227747)) - v18 - 975050526;
  v22 = (LODWORD(STACK[0x660]) - 2 * v15 - v18 + (((v13 ^ 0x96EA5602) + 1763027454) ^ ((v13 ^ 0x119BFE3) - 18464739) ^ ((v13 ^ 0x7D5EF80C) - 2103375884)) + 741786321) ^ v21;
  v23 = v17 - 427593190;
  v24 = v18 + 1194314627;
  v25 = (v20 ^ (v19 + v16)) - v20;
  v26 = LODWORD(STACK[0x650]) + v16 - 2 * v14 - v20 + 1228482151;
  v27 = v21 ^ v24;
  v28 = v22 - (v21 ^ v24);
  v20 += 1194314627;
  v29 = v22 ^ v24;
  v30 = v25 ^ v26;
  v31 = v25 ^ v20;
  v27 ^= 0x26BF7A1Cu;
  v32 = v30 ^ v20;
  v33 = v30 - v31;
  v34 = v32 + v33;
  v35 = v28 + v27 + 1078436074;
  v31 ^= 0x26BF7A1Cu;
  v36 = v33 + v31;
  v37 = (v27 ^ v23 ^ v28) - (v28 + v27);
  v38 = v31 ^ v19 ^ v33;
  v39 = v37 ^ v35;
  v40 = v38 - v36;
  v41 = (v37 - 906805231) ^ v37 ^ v35;
  v42 = (-1438880620 - v28 - v41) ^ 0x7812A9C4;
  v43 = v40 ^ (v36 + 1078436074);
  v44 = v28 - 1845979431 + v29 + v39;
  v45 = v43 ^ (v40 - 906805231);
  v46 = (v34 + v43 - 1845979431) ^ v45;
  v47 = v45 + 136383596;
  v48 = v31 - 1438880620 - v36 - v45;
  v49 = v39 - v42 + 1369754423;
  v48 ^= 0x7812A9C4u;
  v50 = (v41 ^ v44) - v49;
  v51 = v43 - 1845979431 - v48 - 1079233442;
  v52 = v41 + 136383596 + v50;
  v53 = v46 - v51;
  v54 = v47 + v53;
  v55 = v52 ^ v50;
  v52 ^= 0xDCFE35FE;
  v56 = (v47 + v53) ^ v53;
  v57 = v52 ^ v49;
  v54 ^= 0xDCFE35FE;
  v58 = v54 ^ v48;
  v59 = ((v52 ^ v42) - (v55 + 300341088)) ^ (v55 + 300341088);
  v60 = v57 + v52 - v59;
  v61 = v60 ^ v59;
  v62 = v54 ^ v51;
  v63 = v55 + 608849839;
  v64 = v62 + v54;
  v65 = v57 ^ 0x844D15D8;
  v66 = (v62 ^ 0x844D15D8) - 1849437084;
  v67 = (v58 - (v56 + 300341088)) ^ (v56 + 300341088);
  v68 = (v60 ^ v59 ^ (v65 - 1849437084)) - v63;
  v69 = v60 ^ (v65 - 1849437084);
  v70 = v64 - v67;
  v71 = v69 ^ v63;
  v72 = v68 ^ v69;
  v56 += 608849839;
  v73 = v70 ^ v67;
  v74 = v68 - v72;
  v72 -= 1214843064;
  v75 = v73 ^ v66;
  v76 = v70 ^ v66;
  v77 = v75 - v56;
  v78 = v72 ^ ((v71 ^ v61) - 1552014046);
  v79 = v76 ^ v56;
  v80 = v78 + (v72 ^ v71);
  v81 = v77 ^ v76;
  v82 = v77 - v81;
  v72 ^= 0x17266196u;
  v81 -= 1214843064;
  v83 = v81 ^ ((v79 ^ v73) - 1552014046);
  v84 = (v78 ^ v74) - v72;
  v85 = v83 + (v81 ^ v79);
  v81 ^= 0x17266196u;
  v86 = v78 - 776814146 + v80;
  v87 = (v83 ^ v82) - v81;
  v88 = v86 ^ v72;
  v89 = v87 ^ v85;
  v90 = v83 - 776814146 + v85;
  v91 = ((v84 ^ v80) + 1127234064) ^ 0xF09A1140;
  v92 = v86 - v91;
  v93 = v88 ^ v92;
  v94 = (v89 + 1127234064) ^ 0xF09A1140;
  v95 = v90 ^ v81;
  v96 = v90 - v94;
  v94 += 720308775;
  v97 = v95 ^ v96;
  v91 += 720308775;
  v98 = (v87 - v97) ^ (v97 + 1779484612);
  v99 = v93 + (v98 & 0xE09C709A) + (v98 & 0xE09C709A ^ 0xE09C709A) + ((v93 + 1779484612) ^ (v84 - v93)) - 1988864214;
  v100 = v98 + v97 + 1779484612;
  v101 = (v94 ^ v96) - v100;
  v102 = (v92 ^ v91) - 227285918 - v99;
  v103 = (v91 ^ 0x334DF2F3) - 382881943 + v93 + 1779484612;
  v104 = v99 ^ v103;
  v105 = v103 - v102;
  v106 = (v93 - v102 + 1316509469) ^ v102;
  v107 = v104 ^ v105;
  v108 = (v94 ^ 0x334DF2F3) - 382881943 + v97 + 1779484612;
  v109 = (v97 - v101 + 1543795387) ^ (v101 - 227285918);
  v110 = v100 ^ v108;
  v111 = v108 - (v101 - 227285918);
  v112 = v110 ^ v111;
  v113 = v101 - (v112 + v109) - 865856423;
  v114 = (((v106 + 416579256) & 0x2C308029) + ((657162567 - v106) & 0x2C308029)) & 0x50410010 ^ ((v113 & v7 ^ v7) + (v113 & v7));
  v115 = v106 + v105;
  v116 = (v102 - (v107 + v106) - 638570505) ^ (v107 + v106);
  v117 = v107 - v105 - (v116 ^ (v106 + v105));
  v118 = v116 - v106 + 172867349;
  v119 = v109 + v111;
  v120 = v113 ^ (v112 + v109);
  v121 = v109 - 172867349;
  v122 = (v106 + 1317453731 + v114) ^ v115;
  v123 = v118 + v115;
  v118 ^= 0x3917DCCu;
  v124 = v123 - v118;
  v125 = v112 - v111 - (v120 ^ (v109 + v111));
  v126 = v120 - v109 + 172867349;
  v127 = v121 ^ v119;
  v128 = v126 + v119;
  v129 = v117 + 717593748 + v118 + 1229510201;
  v130 = v127 - 2 * v125;
  v131 = v122 - 2 * v117;
  v126 ^= 0x3917DCCu;
  v132 = v128 - v126;
  LOBYTE(STACK[0xE50]) = v130 + 108;
  LOBYTE(STACK[0x10C6]) = v129 ^ v9;
  LOBYTE(STACK[0xEAF]) = (v131 + 108) ^ v9;
  LOBYTE(STACK[0x1066]) = v124 ^ v9;
  LOBYTE(STACK[0x1067]) = v125 - 108 + v126 + 57;
  *(v10 - (((37497755 - v65) ^ (v65 - 1849437084)) & 0x30C20D0) + 51127175) = v132;
  v133 = (v131 - 717593748 + v129) ^ 0x61D90D5C;
  LOBYTE(STACK[0xE4F]) = (v118 + 57) ^ v9;
  v134 = (v125 + v126 + 1229510201 + v130) ^ 0x61D90D5C;
  LOBYTE(STACK[0xFA7]) = v134;
  v135 = ((917973446 - v126) | (v126 + 1229510201)) & 0x265C51D8 ^ v124 ^ (v131 - 1327382593);
  v132 ^= 0x265C51D8u;
  v136 = (v130 - 1327382593) ^ v132;
  v137 = v118 - 211576387 + v133;
  v132 += 938845682;
  LOBYTE(STACK[0xDF0]) = v126 + 57;
  LOBYTE(STACK[0x1006]) = (v131 + 108 + v129) ^ 2;
  LOBYTE(STACK[0xF47]) = v132;
  LOBYTE(STACK[0xDEF]) = v135 ^ v9;
  v138 = (v124 ^ 0x265C51D8) + 938845682;
  v139 = v126 - 211576387 + v134;
  v140 = v135 + 2088840872;
  LOBYTE(v111) = v138 ^ v9;
  v141 = v137 ^ v138;
  LOBYTE(STACK[0xFA6]) = v111;
  LOBYTE(STACK[0xD90]) = v136;
  v142 = v137 + v135;
  v143 = v139 ^ v132;
  LOBYTE(STACK[0x10FE]) = v139;
  v144 = v139 + v136;
  LOBYTE(STACK[0xD8F]) = v137 ^ v9;
  v145 = v133 + 557858527 - v142;
  v146 = v142 ^ v141;
  v147 = v134 + 557858527 - v144;
  v148 = v140 ^ 0x36FCE429;
  v149 = v144 ^ v143;
  v150 = (v136 + 2088840872) ^ 0x36FCE429;
  LOBYTE(STACK[0xF46]) = v145 ^ v9;
  LOBYTE(STACK[0xEE7]) = v147;
  v151 = v145 ^ v141;
  LOBYTE(STACK[0x109E]) = v150;
  LOBYTE(STACK[0x10FD]) = v140 ^ 0x77;
  LOBYTE(STACK[0x103E]) = v149;
  LOBYTE(STACK[0xEE6]) = v151 ^ v9;
  v152 = v147 ^ v143;
  v153 = v149 - (v147 ^ v143);
  LOBYTE(v143) = v146 ^ v9;
  v154 = v146 - v151;
  v155 = v145 - 34906233 + v146 - v151;
  v156 = v154 + v148;
  v157 = v154 + v145;
  LOBYTE(STACK[0x109D]) = v143;
  LOBYTE(STACK[0xE87]) = v152;
  v158 = v153 + v147;
  v159 = v153 + v150;
  v160 = v158 ^ (v152 + 454215713);
  v161 = v158 ^ v159;
  v162 = v159 + 93703294;
  v163 = v157 ^ v156;
  v164 = v157 ^ (v151 + 454215713);
  LOBYTE(v157) = v154 - v164;
  LOBYTE(STACK[0xE27]) = v161;
  v165 = v154 - v164 - v164;
  LOBYTE(STACK[0xDC7]) = v160;
  LOBYTE(STACK[0xFDE]) = v159 + 126;
  LOBYTE(STACK[0x103D]) = (v156 + 126) ^ v9;
  LOBYTE(STACK[0xE26]) = v164 ^ v9;
  LOBYTE(STACK[0xE86]) = v163 ^ v9;
  v166 = v165 + v163;
  v165 += 496893306;
  v167 = v166 + v165;
  v168 = v153 - v160;
  *(v10 + ((v159 + 93703294) & 0xB20E7F75) + ((-93703295 - v159) & 0xB20E7F75) + 1307673368) = v157 ^ v9;
  LOBYTE(STACK[0xF7E]) = v168;
  v169 = v168 - v160;
  v170 = v160 - 1348386489;
  v171 = v169 + v161;
  v172 = v164 - 1348386489 - v165;
  v169 += 496893306;
  v173 = v170 - v169;
  v174 = v156 + 1442089783 + -1348386489 - v165;
  v175 = v162 - v169;
  *(v10 + ((v167 ^ v9) & v6) + (v167 & v6 ^ 0x20)) = v167 ^ v9;
  v176 = v171 + v169;
  v177 = v174 ^ v165;
  LOBYTE(STACK[0xD67]) = v176;
  LOBYTE(STACK[0x10D5]) = v173;
  LOBYTE(STACK[0xF1D]) = v165 ^ v9;
  LOBYTE(STACK[0xF7D]) = v174 ^ v9;
  LOBYTE(STACK[0xF1E]) = v175;
  LOBYTE(STACK[0xD66]) = v172 ^ v9;
  v178 = v167 ^ v165;
  v179 = v175 ^ v169;
  LOBYTE(STACK[0xEBE]) = v169;
  v180 = v167 ^ ((v155 & 0x9E77A39D) + 1353130789 + (v155 & 0x9E77A39D ^ 0x9E77A39D));
  v181 = v172 - v180;
  v182 = v176 ^ v169;
  v183 = v181 ^ 0xCFCFCB09 ^ v177;
  v184 = v178 - v177;
  v176 ^= 0xEF1EC6C2;
  v185 = v173 - v176;
  LOBYTE(v173) = v183 ^ v180;
  v186 = v182 - v179;
  LOBYTE(STACK[0xEBD]) = v183 ^ v9;
  v185 ^= 0xCFCFCB09;
  LOBYTE(STACK[0xE5E]) = v185 ^ v179;
  v187 = v185 ^ v179 ^ v176;
  v188 = (v183 ^ v180) + v184;
  LOBYTE(STACK[0xE5D]) = v184 ^ v9;
  LOBYTE(STACK[0x1075]) = v187;
  v189 = v187 + v186;
  LOBYTE(STACK[0x10D4]) = v173 ^ v9;
  LOBYTE(STACK[0xDFE]) = v186;
  v186 += 690192264;
  LOBYTE(STACK[0x1015]) = v185;
  v190 = (v184 + 690192264) ^ v181 ^ 0xCFCFCB09;
  v191 = v190 + v177;
  LOBYTE(v181) = v181 ^ 0x57;
  v192 = v186 ^ v185;
  LOBYTE(STACK[0x1074]) = v181;
  v193 = (v191 + v184 + 690192264) ^ v190;
  v194 = v193 ^ v188;
  v195 = v192 + v179;
  v196 = v195 + v186;
  v197 = v196 ^ v192;
  LOBYTE(STACK[0x1014]) = v194 ^ v9;
  LOBYTE(STACK[0xF55]) = v197;
  LOBYTE(STACK[0xD9E]) = v195;
  LOBYTE(STACK[0xDFD]) = v191 ^ v9;
  LOBYTE(STACK[0xFB4]) = v193 ^ ((v181 & v9 ^ v9) + (v181 & v9));
  v198 = v197 ^ v189;
  LOBYTE(STACK[0xFB5]) = v198;
  LOBYTE(STACK[0xD9D]) = (v191 + v184 - 120) ^ v9;
  v199 = v193 ^ (v191 + 366482804);
  LOBYTE(STACK[0x110C]) = v196;
  v200 = -366482804 - v191 - v199 + v194;
  v201 = v197 ^ (v195 + 366482804);
  v202 = v195 - 2072158242;
  v203 = -366482804 - v195 - v201 + v198;
  v204 = v184 - 1532616790 + v191 + 366482804;
  v196 -= 1856326250;
  v205 = v201 ^ v196;
  v206 = v199 ^ v204;
  LOBYTE(STACK[0xEF5]) = v203;
  v207 = v191 - 2072158242 - v206;
  LOBYTE(STACK[0x104C]) = v196;
  LOBYTE(STACK[0x110B]) = (v191 - 34) ^ v9;
  LOBYTE(STACK[0xE95]) = v205;
  LOBYTE(STACK[0x10AC]) = v195 - 34;
  v208 = v200 + v206;
  LOBYTE(v195) = (v200 + v206) ^ v200;
  v209 = v202 - v205;
  LOBYTE(STACK[0xEF4]) = v206 ^ v9;
  v210 = (v200 + v206) ^ v200 ^ 0xA1D36A2A;
  v211 = v203 + v205;
  v212 = v211 - (v209 + 381768492);
  v213 = v207 + 381768492;
  LOBYTE(STACK[0xF54]) = v200 ^ v9;
  v214 = v207 ^ v204;
  LOBYTE(STACK[0xE94]) = v195 ^ 0x74;
  LOBYTE(STACK[0x10AB]) = v204 ^ v9;
  v215 = v208 - (v207 + 381768492);
  LOBYTE(STACK[0xFEC]) = v209 + 44;
  LOBYTE(STACK[0x104B]) = (v207 + 44) ^ v9;
  v216 = v196 ^ 0x19114657 ^ v209;
  v217 = v214 ^ 0x19114657;
  LOBYTE(STACK[0xDD5]) = v212;
  LOBYTE(STACK[0xF8C]) = v216;
  v218 = (v214 ^ 0x19114657) - v215;
  v219 = (v210 - 1500986696) ^ v218;
  v220 = v203 ^ 0xA1D36A2A ^ v211;
  LOBYTE(STACK[0xE35]) = v220;
  LOBYTE(STACK[0xFEB]) = v214 ^ 9;
  LOBYTE(STACK[0xE34]) = v215 ^ v9;
  v221 = v220 ^ (v209 + 381768492);
  v222 = (v214 ^ 0x19114657) + 1300294738;
  v223 = v216 - v212;
  v224 = (v216 - v212) ^ (v220 - 1500986696);
  v225 = v224 + v221;
  v226 = v219 + (v210 ^ v213);
  LOBYTE(STACK[0xF2C]) = v225;
  v216 += 1300294738;
  LOBYTE(STACK[0x10E3]) = v216;
  v227 = v225 - 137260290;
  LOBYTE(STACK[0xD75]) = v224;
  v228 = v226 - 137260290;
  LOBYTE(v214) = (v214 & 0x79 ^ 0x70 | (v214 ^ 9) & 0x79) + v219 - 121;
  LOBYTE(STACK[0xF8B]) = v226 ^ v9;
  v223 ^= 0x223F8A96u;
  LOBYTE(STACK[0xECC]) = v223;
  LOBYTE(v213) = v222 ^ v9;
  v229 = v219 - v222;
  v230 = v218 ^ 0x223F8A96 ^ (v226 - 137260290);
  LOBYTE(STACK[0xD74]) = v213;
  v231 = v217 - v226 - v230 + 1437555028;
  LOBYTE(v226) = v218 ^ 0xC8;
  v232 = (v225 - 137260290) ^ v223;
  v233 = v216 - v225 - v232 + 137260290;
  LOBYTE(STACK[0xF2B]) = v226;
  v234 = v224 - v216;
  LOBYTE(STACK[0x1083]) = v234;
  LOBYTE(STACK[0xDD4]) = v214 ^ v9;
  v235 = v227 - v233;
  v236 = (v227 - v233) ^ v232;
  v237 = (v228 - v231) ^ v230;
  LOBYTE(STACK[0xE6C]) = v227 - v233;
  v238 = v237 - 1828736896;
  LOBYTE(STACK[0x1082]) = v231 ^ v9;
  v239 = (v228 - v231) ^ v229;
  LOBYTE(STACK[0x1023]) = v233;
  LOBYTE(STACK[0xE0C]) = v236;
  v236 -= 1828736896;
  LOBYTE(STACK[0xECB]) = (v228 - v231) ^ v9;
  v240 = (v237 - 1828736896) ^ (v228 - v231 + 1421957617);
  v241 = (v237 - 1828736896) ^ v231;
  LOBYTE(v223) = v241 - 106;
  v242 = v236 ^ (v235 + 1421957617);
  LOBYTE(STACK[0xE6B]) = v237 ^ v9;
  LOBYTE(STACK[0x1022]) = v239 ^ v5;
  LOBYTE(STACK[0x10E2]) = v229 ^ v9;
  v243 = v234 ^ 0xECF7B94A ^ v235;
  v244 = v236 ^ v233;
  LOBYTE(STACK[0xFC3]) = v243;
  LOBYTE(STACK[0xE0B]) = v240 ^ v9;
  v245 = v236 ^ 0x16BE324D;
  LOBYTE(STACK[0x111A]) = v236 ^ 0x4D;
  v246 = v241 - 1387757418 + (v239 ^ 0xECF7B94A);
  v247 = v241 + 2002972425;
  v248 = v244 - 1387757418 + v243;
  LOBYTE(STACK[0xF63]) = v244 - 106;
  LOBYTE(STACK[0xDAC]) = v242;
  v249 = (v238 ^ 0x16BE324D) - 1349508097 * (((v241 + 2002972425) | (144511222 - v241)) & 0xA6586C1);
  v250 = v240 - (v238 ^ 0x16BE324D) - v249;
  LOBYTE(STACK[0xFC2]) = v223 ^ v9;
  v251 = v250 ^ v246;
  LOBYTE(STACK[0xDAB]) = v238 ^ 0x13;
  v252 = v242 - 2 * (v236 ^ 0x16BE324D) + 132276929;
  v253 = v244 + 2002972425 - v252;
  v254 = v247 - v250;
  v255 = v252 ^ v248;
  LOBYTE(STACK[0xF62]) = v251 ^ v9;
  v256 = v245 - 1349441024;
  LOBYTE(STACK[0x105A]) = v245;
  LOBYTE(STACK[0xEA3]) = v253;
  LOBYTE(STACK[0x1119]) = v250 ^ v9;
  LOBYTE(STACK[0x10BA]) = v252;
  v257 = v250 - v254;
  LOBYTE(STACK[0xF03]) = v255;
  LOBYTE(STACK[0x10B9]) = (v249 - 63) ^ v9;
  v258 = v254 + v251;
  v259 = v252 - v253;
  v260 = v249 - v257 - 1217164095;
  v261 = v256 - (v252 - v253);
  v262 = v260 + (v257 ^ v251);
  v263 = v255 + v253;
  v264 = v259 ^ v255;
  LOBYTE(STACK[0xF02]) = v254 ^ v9;
  v265 = v264 + v261;
  v266 = v262 + v257;
  v267 = v264 + v256;
  v268 = v261 ^ v263;
  LOBYTE(STACK[0xFFA]) = v267;
  LOBYTE(STACK[0xEA2]) = v262 ^ v9;
  LOBYTE(STACK[0x1059]) = (v262 + v257) ^ v9;
  LOBYTE(v262) = v260 ^ v258;
  LOBYTE(STACK[0xE43]) = v265;
  v269 = v266 ^ 0x92AF18CE;
  v263 ^= 0xE3349F02;
  LOBYTE(STACK[0xE42]) = v258 ^ 0x5C;
  LOBYTE(STACK[0xDE3]) = v263;
  v270 = v260 ^ v258 ^ 0x72670214;
  v271 = v267 ^ 0x92AF18CE;
  LOBYTE(STACK[0xFF9]) = v262 ^ v9;
  LOBYTE(STACK[0xF9A]) = v268;
  v272 = -v257 - (v266 ^ 0x92AF18CE);
  v273 = v265 - v267 - (v267 ^ 0x92AF18CE);
  v268 ^= 0x72670214u;
  v274 = (v268 ^ v263) + 481779480;
  LOBYTE(STACK[0xF3A]) = v267 ^ 0xCE;
  v275 = (v260 ^ 0x91539D16) + 481779480;
  LOBYTE(STACK[0xD83]) = v273;
  v276 = v268 + (v267 ^ 0x92AF18CE);
  LOBYTE(STACK[0xF99]) = v266 ^ v12;
  LOBYTE(STACK[0x10F1]) = v274;
  LOBYTE(STACK[0xDE2]) = v272 ^ v9;
  v277 = (((v266 ^ 0x92AF18CE) + 1490321080) ^ v7) + v270 + ((2 * ((v266 ^ 0x92AF18CE) + 1490321080)) & 0x4E570290) - 2063981968;
  LOBYTE(STACK[0xD82]) = v275 ^ v9;
  v278 = v272 ^ v266 ^ v277;
  v279 = (v275 ^ 0xCCCD7A4) - v277;
  *(v10 + (v266 & 0x1E9 ^ 0x1E9u) + (v266 & 0x1E9)) = ((((v266 ^ 0xCE) - 72) ^ v7) + v270 + ((2 * ((v266 ^ 0xCE) - 72)) & 0x90)) ^ v9;
  v280 = v277 ^ ((v266 ^ 0x92AF18CE) + 589696390);
  LOBYTE(STACK[0xEDA]) = v276;
  v281 = v273 ^ v267 ^ (v276 - 2063981968);
  LOBYTE(STACK[0x10F0]) = v278 ^ v12;
  v282 = ((v279 ^ (v269 + 2000026445) ^ 0x920F57EA) - 418150341) ^ ((v279 ^ (v269 + 2000026445) ^ 0xFE48CDE4) - 1957424587) ^ ((v279 ^ (v269 + 2000026445) ^ 0x6C479A0E) + 425412063);
  LOBYTE(v270) = v277 ^ (v269 - 122) ^ v9;
  v283 = (v274 ^ 0xCCCD7A4) - (v276 - 2063981968);
  LOBYTE(STACK[0x1031]) = (v274 ^ 0xA4) - (v276 + 112);
  LOBYTE(v273) = (v276 + 112) ^ (v271 - 122);
  v284 = ((v278 ^ 0xF24D2014) - 962796885) ^ ((v278 ^ 0xADEBA605) - 1724226372) ^ ((v278 ^ 0xCD099EDF) - 103261086);
  LOBYTE(STACK[0xE79]) = v270;
  LOBYTE(STACK[0x1091]) = v281 ^ 0xCE;
  LOBYTE(STACK[0xED9]) = (v269 + 77) ^ v9;
  v285 = v271 + 2000026445;
  v286 = ((v280 ^ 0x9252D2EA) - 1319757671) ^ ((v280 ^ 0x87A04237) - 1532721082) ^ ((v280 ^ 0x15F290DD) + 922114736);
  v287 = (v281 & 0x91B54447 ^ 0x2E394063) & (v281 & 0x91B54447 ^ 0xFEED81E6) ^ v281 & 0x1210442;
  v288 = (v271 + 2000026445) & 0x412FEEB9;
  LOBYTE(STACK[0xE7A]) = v271 + 77;
  LOBYTE(STACK[0xE1A]) = v273;
  v289 = 147457202 - v271;
  v290 = ((v278 ^ 0x4B54575D) + 2139461092) ^ ((v278 ^ 0xB68CE68E) - 2107825103) ^ ((v278 ^ 0x6F77A91D) + 1537633188);
  v291 = v283 - (((v281 ^ 0x72A8E129) + 632066862) ^ ((v281 ^ 0xCF77EE23) - 1737253848) ^ ((v281 ^ 0x2F7017C4) + 2020894145));
  v292 = v279 - v284;
  LOBYTE(STACK[0x1090]) = v279 ^ v9;
  v282 -= 282044343;
  v293 = (((v283 ^ v285 ^ 0x7539D1F1) + 1186320174) ^ ((v283 ^ v285 ^ 0x4C3AB50) + 927970701) ^ ((v283 ^ v285 ^ 0x71FA7AA1) + 1115055230)) + 176782430;
  LODWORD(STACK[0x658]) = v290 + 1549200065 * (((v287 ^ 0xFB11B1CE) + 1701769342) ^ ((v287 ^ 0x438608EA) - 570865318) ^ ((v287 ^ 0x70BFD01) - 1720402765)) + v282 - 546774842;
  LODWORD(STACK[0x650]) = (((v281 ^ 0x16EF6511) + 1105925910) ^ ((v281 ^ 0x44A851A2) + 330048423) ^ ((v281 ^ 0xC0E82C7D) - 1746116998)) - 986029175 + v293;
  LODWORD(STACK[0x660]) = (v292 - ((((v288 ^ 0xFAD4EEEC) - 234795104) ^ ((v288 ^ 0x28BF6F85) + 543870711) ^ ((v288 ^ 0xD26B8169) - 625074149)) + (((v289 & 0x412FEEB9 ^ 0xFE43AEF0) + 505259539) ^ ((v289 & 0x412FEEB9 ^ 0x7BA4BB71) - 1678068844) ^ ((v289 & 0x412FEEB9 ^ 0x85E71581) + 1706630500))) + v282 + 1821719399) ^ (v286 - 2089152514 + v292);
  v294 = STACK[0x3EC];
  LODWORD(STACK[0x6B0]) = v292 - 241613741;
  LODWORD(STACK[0x6D0]) = v291 - 2020225136 + v293;
  LODWORD(STACK[0x6B8]) = v291 + 281400493;
  return (*(STACK[0x6D8] + 8 * (a5 ^ (15 * ((v294 & 1) == 0)))))(439, 225, LODWORD(STACK[0x47C]), LODWORD(STACK[0x3F4]), 254620, 65, LODWORD(STACK[0x46C]), LODWORD(STACK[0x4B8]));
}

uint64_t sub_10080C640()
{
  v1 = *STACK[0xA3E8];
  STACK[0xC2D8] = *STACK[0x8778];
  LODWORD(STACK[0x723C]) = v1;
  LODWORD(STACK[0x708C]) = -276972024;
  return (*(STACK[0x57D8] + 8 * (v0 ^ 0x2828F8BC ^ v0 ^ 0x2828D90B ^ (25137 * (v0 > 0x7EA7F586)))))();
}

uint64_t sub_10080C6F4(int a1)
{
  LODWORD(STACK[0xC34]) = v1;
  v4 = STACK[0x1170];
  STACK[0x1210] = STACK[0x1170];
  return (*(v3 + 8 * (((v4 != 0x683CBC57EAB92A3ELL) * (((v2 + 1211076015) | 0x2080) ^ 0x31F8)) ^ (a1 + v2 - 1043))))();
}

uint64_t sub_10080C760()
{
  v4 = 1534937323 * ((v3 + 0x88617E29489631BLL - 2 * ((v3 - 240) & 0x88617E29489640BLL)) ^ 0xC5FE9F2052679F4CLL);
  *(v3 - 208) = 1534937323 * ((v3 - 1802935525 - 2 * ((v3 - 240) & 0x9489640B)) ^ 0x52679F4C) + v2 - 1744741906 - 10;
  *(v3 - 240) = v1 ^ v4;
  *(v3 - 224) = 1534937323 * ((v3 - 1802935525 - 2 * ((v3 - 240) & 0x9489640B)) ^ 0x52679F4C);
  *(v3 - 220) = (v2 - 1744741906) ^ (1534937323 * ((v3 - 1802935525 - 2 * ((v3 - 240) & 0x9489640B)) ^ 0x52679F4C));
  *(v3 - 232) = v2 - 1744741906 - 1534937323 * ((v3 - 1802935525 - 2 * ((v3 - 240) & 0x9489640B)) ^ 0x52679F4C) - 3287;
  *(v3 - 228) = 1534937323 * ((v3 - 1802935525 - 2 * ((v3 - 240) & 0x9489640B)) ^ 0x52679F4C) + v2 - 1632379223;
  *(v3 - 216) = v4;
  v5 = (*(v0 + 8 * (v2 ^ 0xB7D0FFA5)))(v3 - 240);
  return (*(v0 + 8 * *(v3 - 204)))(v5);
}

uint64_t sub_10080C824@<X0>(int a1@<W8>)
{
  v5 = (v1[4] << 24) | (v1[5] << 16) | (v1[6] << ((a1 + 5) & 0xDF ^ (v4 - 8)));
  v6 = ((v1[7] + 1303687285 + (~(2 * v1[7]) | 0xFFFFFF17)) ^ 0x890774B4) & (v5 ^ 0xD5F3FFFF) ^ v5 & 0x3B4C3B00;
  v7 = (((v6 ^ 0x8C7CFF28) + 1697399940) ^ ((v6 ^ 0x108456FC) - 103486120) ^ ((v6 ^ 0x584B6D14) - 1323575616)) + 591547730;
  v8 = v7 >= v2 + 1361431742;
  v9 = (v2 > 0xAEDA3341) ^ (v7 < 0x5125CCBE);
  v10 = !v8;
  if (v9)
  {
    v11 = v2 > 0xAEDA3341;
  }

  else
  {
    v11 = v10;
  }

  v12 = v2 > 0xB && v11;
  return (*(v3 + 8 * ((11236 * v12) ^ a1)))();
}

uint64_t sub_10080C95C()
{
  v3 = LODWORD(STACK[0x2DC]) ^ 0xEE78AA50;
  LODWORD(STACK[0xEDC]) = STACK[0x880];
  v4 = STACK[0x1570];
  *v4 = 0u;
  v4[1] = 0u;
  return (*(v0 + 8 * ((29 * ((v3 ^ (STACK[0x1090] != 0)) & 1)) ^ (v2 + v1 - 1803))))();
}

uint64_t sub_10080CB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x4B0]) += a6;
  LODWORD(STACK[0x4B4]) += v7;
  LODWORD(STACK[0x6D0]) = v6 - 1108;
  LODWORD(STACK[0x4AC]) += ((v6 - 1108) ^ 0xFFFFDDB7) + ((v6 - 10076) | 0x181);
  return (*(STACK[0x6D8] + 8 * (v6 ^ (21697 * (STACK[0x3F4] & 1)))))();
}

uint64_t sub_10080CBBC(unint64_t a1)
{
  STACK[0x4D0] = a1;
  STACK[0x1978] = *(v2 + 8 * (v1 - 24571));
  return (*(v2 + 8 * ((v1 - 24571) ^ 0x2BB0)))();
}

uint64_t sub_10080CCF0()
{
  v2 = STACK[0x1318];
  v3 = *(STACK[0x1318] + 8);
  v4 = STACK[0x1378];
  v4[1] = v3;
  *v4 = *v2;
  return (*(v1 + 8 * (((v3 == 0) * ((((v0 - 767) | 0x301) ^ 0xFFFFADCF) + ((v0 + 1007204470) & 0xC3F775BE))) ^ v0)))();
}

uint64_t sub_10080CD94@<X0>(unint64_t a1@<X8>)
{
  STACK[0xDB8] = a1;
  LODWORD(STACK[0x15FC]) = v2;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_10080D030@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  *(a1 + 56) = (v3 >> 21) ^ 0xF;
  *(a1 + 57) = (v3 >> (a2 - 51)) ^ 0xF;
  *(a1 + 58) = (v3 >> 5) ^ 0xF;
  *(a1 + 59) = ((__PAIR64__(v3, v4) >> 29) - ((2 * (__PAIR64__(v3, v4) >> 29)) & 0x42) - 95) ^ 0xAE;
  *(a1 + 60) = (v4 >> 21) ^ 0xF;
  *(a1 + 61) = (v4 >> 13) ^ 0xF;
  *(a1 + 62) = (v4 >> 5) ^ 0xF;
  return (*(v2 + 8 * (a2 - 5123)))();
}

uint64_t sub_10080D364()
{
  *(v4 - 240) = 27052 - 711523751 * ((~((v4 - 240) | 0x777D8189) + ((v4 - 240) & 0x777D8189)) ^ 0xB8985FA7);
  *(v4 - 232) = v0;
  v5 = (*(v1 + 8 * (v2 - 1211071625)))(v4 - 240);
  return (*(v1 + 8 * ((5343 * (((v3 - 1211071599) ^ 0xB7FDF7E8) < 0xDDD266EF)) ^ (v3 - 1211062129))))(v5);
}

uint64_t sub_10080D978()
{
  STACK[0x1080] = 0;
  STACK[0x17D0] = 0;
  return (*(v2 + 8 * (((((v0 == 0x308E083E0C524CBELL) ^ (v1 + 118)) & 1) * (((v1 - 22815) | 0x111) - 201)) ^ v1)))();
}

uint64_t sub_10080DA04()
{
  v2 = *(STACK[0xCD0] + 24);
  STACK[0xA90] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 - 23588 + ((v0 - 1414422075) & 0x544E34DF) + 2497)) ^ v0)))();
}

uint64_t sub_10080DAA8@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>, int8x16_t a5@<Q6>, int8x16_t a6@<Q7>)
{
  v11 = (a4 + (v8 + v7));
  v12 = *v11;
  v13 = v11[1];
  v14 = (a3 + v8);
  *v14 = vaddq_s8(vsubq_s8(v12, vandq_s8(vaddq_s8(v12, v12), a5)), a6);
  v14[1] = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a5)), a6);
  return (*(v9 + 8 * (((v8 == 32) * (a1 - v10 + v6)) ^ a2)))();
}

uint64_t sub_10080DB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *(*STACK[0x768] + (*STACK[0x868] & 0xDF49AC04)) ^ 0xDF49AC05;
  v10 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v9 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v9;
  v11 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v10 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v10;
  v12 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v11 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v11;
  v13 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v12 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v12;
  v14 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v13 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v13;
  v15 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v14 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v14;
  v16 = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v15 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v15;
  LODWORD(v16) = *((qword_101362AE8 ^ 0x722E09814B3EBE59) + (v16 & (qword_101362A48 ^ 0xDB653AB621E69720))) ^ v16;
  STACK[0x1D38] = v6;
  STACK[0x1D30] = 0;
  v17 = 16777619 * ((-548819963 * v16 + 7) ^ (-548819963 * v16)) % 7;
  v18 = *(&STACK[0x1D30] | v17);
  *(&STACK[0x1D30] | v17) = STACK[0x1D37];
  LOBYTE(STACK[0x1D37]) = v18;
  v19 = 16777619 * ((-548819963 * v16 + 6) ^ (-548819963 * v16)) % 6;
  v20 = *(&STACK[0x1D30] | v19);
  *(&STACK[0x1D30] | v19) = STACK[0x1D36];
  LOBYTE(STACK[0x1D36]) = v20;
  v21 = 16777619 * ((-548819963 * v16 + 5) ^ (-548819963 * v16)) % 5;
  v22 = *(&STACK[0x1D30] | v21);
  *(&STACK[0x1D30] | v21) = STACK[0x1D35];
  LOBYTE(STACK[0x1D35]) = v22;
  v23 = STACK[0x1D30];
  LOBYTE(STACK[0x1D30]) = STACK[0x1D34];
  LOBYTE(STACK[0x1D34]) = v23;
  v24 = 16777619 * ((-548819963 * v16 + 3) ^ (-548819963 * v16)) % 3;
  v25 = *(&STACK[0x1D30] | v24);
  *(&STACK[0x1D30] | v24) = STACK[0x1D33];
  LOBYTE(STACK[0x1D33]) = v25;
  v26 = STACK[0x1D31];
  LOBYTE(STACK[0x1D32]) = STACK[0x1D30];
  LOWORD(STACK[0x1D30]) = v26;
  v27 = vdup_n_s32(-548819963 * v16);
  v28.i32[0] = v27.i32[0];
  v28.i32[1] = -548819963 * v16 + 1;
  v29 = veor_s8(vmul_s32(v28, v27), v27);
  STACK[0x1D30] = vmla_s32(v29, STACK[0x1D30], vdup_n_s32(0x1000193u));
  STACK[0x1D38] ^= STACK[0x1D30];
  STACK[0x1D38] = vmul_s32(vsub_s32(STACK[0x1D38], v29), vdup_n_s32(0x359C449Bu));
  v30 = STACK[0x1D3A];
  LOWORD(STACK[0x1D39]) = STACK[0x1D38];
  LOBYTE(STACK[0x1D38]) = v30;
  v31 = (&STACK[0x1D38] | v24);
  LOBYTE(v26) = *v31;
  *v31 = STACK[0x1D3B];
  LOBYTE(STACK[0x1D3B]) = v26;
  LOBYTE(v31) = STACK[0x1D38];
  LOBYTE(STACK[0x1D38]) = STACK[0x1D3C];
  LOBYTE(STACK[0x1D3C]) = v31;
  v32 = (&STACK[0x1D38] | v21);
  LOBYTE(v31) = *v32;
  *v32 = STACK[0x1D3D];
  LOBYTE(STACK[0x1D3D]) = v31;
  v33 = (&STACK[0x1D38] | v19);
  LOBYTE(v32) = *v33;
  *v33 = STACK[0x1D3E];
  LOBYTE(STACK[0x1D3E]) = v32;
  v34 = (&STACK[0x1D38] | v17);
  v35 = *v34;
  *v34 = STACK[0x1D3F];
  LOBYTE(STACK[0x1D3F]) = v35;
  v36 = STACK[0x1D38];
  v37 = (-548819963 * STACK[0x1D38]) ^ v16;
  for (i = 1; i != 4; ++i)
  {
    v39 = 16777619 * ((v37 + i) ^ v37) % i;
    v40 = *(v36 + 8 * v39) ^ *(v36 + 8 * i);
    *(v36 + 8 * i) = v40;
    v41 = *(v36 + 8 * v39) ^ v40;
    *(v36 + 8 * v39) = v41;
    *(v36 + 8 * i) ^= v41;
  }

  v42 = 0;
  v43 = xmmword_1012370F0;
  v44 = xmmword_101237100;
  v45 = xmmword_101237110;
  v46 = xmmword_101237120;
  v47.i64[0] = 0x9B009B009B009BLL;
  v47.i64[1] = 0x9B009B009B009BLL;
  v48 = vdupq_n_s32(v37);
  v49.i64[0] = 0x1000000010;
  v49.i64[1] = 0x1000000010;
  do
  {
    v50 = *(v36 + v42);
    v51 = vmovl_high_u8(v50);
    v52 = vmovl_u8(*v50.i8);
    v54.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v45, v48), vsubq_s32(v45, v48)), v48), vmull_high_u16(v52, v47));
    v54.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v44, v48), vsubq_s32(v44, v48)), v48), vmull_u16(*v51.i8, 0x9B009B009B009BLL));
    v54.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v46, v48), vsubq_s32(v46, v48)), v48), vmull_u16(*v52.i8, 0x9B009B009B009BLL));
    v54.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v43, v48), vsubq_s32(v43, v48)), v48), vmull_high_u16(v51, v47));
    *(v36 + v42) = vqtbl4q_s8(v54, xmmword_101237130);
    v42 += 16;
    v46 = vaddq_s32(v46, v49);
    v45 = vaddq_s32(v45, v49);
    v44 = vaddq_s32(v44, v49);
    v43 = vaddq_s32(v43, v49);
  }

  while (v42 != 32);
  *a6 = STACK[0x1D38];
  return (*(v8 + 8 * (v7 ^ 0x50D9)))(v43, v44, v45, v46);
}

uint64_t sub_10080DF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62)
{
  STACK[0x15D8] = 0;
  STACK[0x1648] = *(v62 + 2584);
  return (*(v62 + 8 * ((a62 & 0xD6DBAFBD ^ 0x3EC6) + 323)))(a1, 1211082140, 1211098651, a4, a5, a6, a7, 0x308E083E0C524CBELL);
}

uint64_t sub_10080E018@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v57 = *(a2 + 4 * ((v56 + 3677 * a1) % ((3 * (a3 ^ 0x4589)) ^ 0x5221u)));
  *(&a56 + (1633 * a1 + 849160) % 0xA88u) = (((v57 ^ 0x54) + 93) ^ ((v57 ^ 0xA3) - 84) ^ ((v57 ^ 0x85) - 114)) - 28;
  return (*(a55 + 8 * ((13767 * (a1 == 255)) ^ (a3 + 1345))))();
}

uint64_t sub_10080E0CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  STACK[0x3AE8] = a8;
  STACK[0x3AD8] = a7;
  STACK[0x3AD0] = v9;
  STACK[0x3AA0] = HIDWORD(v11) & 0x200;
  STACK[0x3A88] = v8;
  STACK[0x3A98] = HIDWORD(v11) & 0x40000000;
  v12 = v8;
  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = HIDWORD(a1);
  v15 = HIDWORD(v10);
  if ((v10 & 0x100000000) != 0)
  {
    v16 = HIDWORD(a1);
  }

  else
  {
    v16 = 0;
  }

  v17 = (v8 * (v11 & 2)) ^ v13 ^ (v8 * (v11 & 4)) ^ (v8 * (v11 & 8)) ^ (v8 * (v11 & 0x10)) ^ (v8 * (v11 & 0x20)) ^ (v8 * (v11 & 0x40)) ^ (v8 * (v11 & 0x80)) ^ (v8 * (v11 & 0x100)) ^ (v8 * (v11 & 0x200)) ^ (v8 * (v11 & 0x400)) ^ (v8 * (v11 & 0x800)) ^ (v8 * (v11 & 0x1000)) ^ (v8 * (v11 & 0x2000)) ^ (v8 * (v11 & 0x4000)) ^ (v8 * (v11 & 0x8000)) ^ (v8 * (v11 & 0x10000)) ^ (v8 * (v11 & 0x20000)) ^ (v8 * (v11 & 0x40000)) ^ (v8 * (v11 & 0x80000)) ^ (v8 * (v11 & 0x100000)) ^ (v8 * (v11 & 0x200000));
  if (v10)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  STACK[0x3AC8] = v19;
  v20 = (a1 * (v10 & 0x20)) ^ (a1 * (v10 & 0x40)) ^ (a1 * (v10 & 0x10)) ^ (a1 * (v10 & 8)) ^ (a1 * (v10 & 4)) ^ (a1 * (v10 & 2)) ^ v19;
  STACK[0x3AA8] = v20;
  STACK[0x3A98] = v17 ^ (v12 * (v11 & 0x400000)) ^ (v12 * (v11 & 0x800000)) ^ (v12 * (v11 & 0x1000000)) ^ (v12 * (v11 & 0x2000000)) ^ (v12 * (v11 & 0x4000000)) ^ (v12 * (v11 & 0x8000000)) ^ (v12 * (v11 & 0x10000000)) ^ (v12 * (v11 & 0x20000000)) ^ (v12 * (v11 & 0x40000000));
  STACK[0x3AA0] = (a1 * (v10 & 0x20000000)) ^ (a1 * (v10 & 0x40000000)) ^ (a1 * (v10 & 0x10000000)) ^ (a1 * (v10 & 0x8000000)) ^ (a1 * (v10 & 0x4000000)) ^ (a1 * (v10 & 0x2000000)) ^ (a1 * (v10 & 0x1000000)) ^ (a1 * (v10 & 0x800000)) ^ (a1 * (v10 & 0x400000)) ^ (a1 * (v10 & 0x200000)) ^ (a1 * (v10 & 0x100000)) ^ (a1 * (v10 & 0x80000)) ^ (a1 * (v10 & 0x40000)) ^ (a1 * (v10 & 0x20000)) ^ (a1 * (v10 & 0x10000)) ^ (a1 * (v10 & 0x8000)) ^ (a1 * (v10 & 0x4000)) ^ (a1 * (v10 & 0x2000)) ^ (a1 * (v10 & 0x1000)) ^ (a1 * (v10 & 0x800)) ^ (a1 * (v10 & 0x400)) ^ (a1 * (v10 & 0x200)) ^ (a1 * (v10 & 0x100)) ^ (a1 * (v10 & 0x80)) ^ v20;
  v18 = v16 ^ (v14 * (BYTE4(v10) & 2)) ^ (v14 * (v15 & 4)) ^ (v14 * (BYTE4(v10) & 8)) ^ (v14 * (BYTE4(v10) & 0x10)) ^ (v14 * (BYTE4(v10) & 0x20)) ^ (v14 * (v15 & 0x40)) ^ (v14 * (BYTE4(v10) & 0x80)) ^ (v14 * (WORD2(v10) & 0x100)) ^ (v14 * (v15 & 0x200)) ^ (v14 * (v15 & 0x400)) ^ (v14 * (v15 & 0x800)) ^ (v14 * (v15 & 0x1000)) ^ (v14 * (v15 & 0x2000)) ^ (v14 * (v15 & 0x4000)) ^ (v14 * (v15 & 0x8000));
  STACK[0x3A90] = v18 ^ (v14 * (v15 & 0x10000)) ^ (v14 * (v15 & 0x20000)) ^ (v14 * (v15 & 0x40000)) ^ (v14 * (v15 & 0x80000)) ^ (v14 * (v15 & 0x100000)) ^ (v14 * (v15 & 0x200000)) ^ (v14 * (v15 & 0x400000)) ^ (v14 * (v15 & 0x800000)) ^ (v14 * (v15 & 0x1000000)) ^ (v14 * (v15 & 0x2000000)) ^ (v14 * (v15 & 0x4000000)) ^ (v14 * (v15 & 0x8000000)) ^ (v14 * (v15 & 0x10000000)) ^ (HIDWORD(a1) * (v15 & 0x20000000)) ^ (HIDWORD(a1) * (v15 & 0x40000000));
  return (*(STACK[0x3AC0] + 8 * ((494 * (*(STACK[0x3AE0] + STACK[0x3AD0]) == 14)) ^ LODWORD(STACK[0x3A80]))))(STACK[0x3AB8]);
}

uint64_t sub_10080F064()
{
  *(v2 - 232) = STACK[0x1200];
  *(v2 - 240) = 1211098651 - 711523751 * ((v2 - 1897523757 - 2 * ((v2 - 240) & 0x8EE616C3)) ^ 0xBEFC3712) + v0;
  v3 = (*(v1 + 8 * (v0 + 1211103369)))(v2 - 240);
  return (*(v1 + 8 * (v0 + 1211074932)))(v3);
}

uint64_t sub_10080F0F0()
{
  v3 = STACK[0x1BF8] + 10 + (v0 ^ 0xD21C8094);
  STACK[0x1A10] = v3;
  return (*(v1 + 8 * ((58 * (v3 > STACK[0x1BF0])) ^ (v2 - 1211071214))))();
}

uint64_t sub_10080F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LODWORD(a45) = HIDWORD(a53) >> (v55 - 55);
  LODWORD(a44) = BYTE3(a54);
  LODWORD(v59) = BYTE2(a52);
  HIDWORD(v59) = BYTE2(a55);
  LODWORD(v58) = BYTE4(a54);
  HIDWORD(v58) = a55;
  LODWORD(a52) = BYTE1(a52);
  return (*(v56 + 8 * v55))(121, a2, 3812295396, a4, 1633, 815661445, 68, 4294967176, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, v58, v59, a49, a50, a51, a52, a53, a54, a55, &STACK[0x203566]);
}

uint64_t sub_10080F2B4@<X0>(int a1@<W8>)
{
  v1 = LODWORD(STACK[0xA824]) == 11 * (a1 ^ 0x5AAF) - 143121442;
  LOBYTE(STACK[0x9737]) = v1;
  return (*(STACK[0x57D8] + 8 * ((247 * v1) ^ (a1 - 16631))))();
}

uint64_t sub_10080F374(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65.n128_u64[0] = 0x3636363636363636;
  v65.n128_u64[1] = 0x3636363636363636;
  v66.n128_u64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v66.n128_u64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v67.n128_u64[0] = 0x1E1E1E1E1E1E1E1ELL;
  v67.n128_u64[1] = 0x1E1E1E1E1E1E1E1ELL;
  v68.n128_u64[0] = 0xF0F0F0F0F0F0F0FLL;
  v68.n128_u64[1] = 0xF0F0F0F0F0F0F0FLL;
  return (*(v64 + 8 * v63))(a1, 16295, a7, a8, 0x2A346914086A013BLL, 1391039517, 2018409467, 2276551197, a2, a3, a4, a5, v65, v66, v67, v68, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a63 - 22792 + ((v63 - 1093256913) & 0x4129D8FB));
}

uint64_t sub_10080F4FC()
{
  v3 = STACK[0x8C8];
  strcpy(&STACK[0xE8A], "false");
  (*(v1 + 8 * (v0 + 20467)))(*(&off_101353600 + v0 - 10472), v3, 21);
  v4 = STACK[0x2B8];
  *(v2 - 224) = v0 - STACK[0x2B8] + 7385;
  *(v2 - 216) = &STACK[0xE8A];
  *(v2 - 240) = v4 + 6;
  *(v2 - 232) = v3;
  v5 = (*(v1 + 8 * (v0 ^ 0x5015)))(v2 - 240);
  return (*(v1 + 8 * ((204 * (LOBYTE(STACK[0x2044]) == ((v0 - 123) & 0xBD ^ 0xA4))) ^ v0)))(v5);
}

uint64_t sub_10080F5D8()
{
  *(v4 - 232) = 513742651 - ((((v4 - 240) | 0x2A44871) + (~(v4 - 240) | 0xFD5BB78E)) ^ 0x572A7D58) * v2 + v1;
  v5 = (*(v3 + 8 * (v1 ^ v0)))(v4 - 240);
  return (*(v3 + 8 * (v1 + 2120261795)))(v5);
}

uint64_t sub_10080F664()
{
  v7 = STACK[0x1278];
  v8 = STACK[0x3E8];
  *(v6 - 216) = STACK[0x3E8];
  *(v6 - 240) = v7 ^ v8;
  *(v6 - 208) = v4 + v5 - 1654815031 + v8 + 28;
  *(v6 - 224) = v8;
  *(v6 - 220) = (v4 + v5 - 1654815031) ^ v8;
  *(v6 - 232) = (v0 ^ 0x9D5D88C5 ^ v1) - v8;
  *(v6 - 228) = v8 + v4 - 1632379223;
  v9 = (*(v2 + 8 * (v4 + v3)))(v6 - 240);
  return (*(v2 + 8 * *(v6 - 204)))(v9);
}

uint64_t sub_10080F6F0(int a1)
{
  v5 = v1 ^ (v2 + 9036 - a1 + 1192) ^ 0x88AC1CA3;
  v7 = v3 < 0x20 || v5 < 8;
  return (*(v4 + 8 * ((v7 * ((v2 + 13595) ^ 0x76DA)) | (v2 + 9036))))();
}

uint64_t sub_10080F744@<X0>(int a1@<W0>, unsigned int a2@<W1>, int a3@<W4>, unsigned int a4@<W5>, unsigned int a5@<W8>)
{
  v15 = a5 < v14;
  *(v12 + ((v5 + a3) ^ a2) + v8 * a1 - ((((((v5 + a3) ^ a2) + v8 * a1) * a4) >> 32) >> 8) * v10) = *(v11 + (v6 + v8));
  if (v15 == v8 + v9 < v14)
  {
    v15 = a5 > v8 + v9;
  }

  return (*(STACK[0x6D8] + 8 * ((v15 * v13) ^ v7)))(439);
}

uint64_t sub_10080F7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x658]) = ((a5 - 1943695561) & 0x73DA3F39 ^ 0x3DCF072C) + (((v5 ^ 0x301ADDF2) - 807067122) ^ ((v5 ^ 0x4690012F) - 1183842607) ^ ((v5 ^ 0x9C27CD30) + 1675113168));
  v6 = *(STACK[0x6D8] + 8 * (a5 - 13257));
  LODWORD(STACK[0x464]) = STACK[0x468];
  return v6(439, a2, LODWORD(STACK[0x47C]), LODWORD(STACK[0x3F4]));
}

uint64_t sub_10080F9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x830] = STACK[0xC50];
  STACK[0x1150] = 0;
  LODWORD(STACK[0x1184]) = 0;
  STACK[0x10E0] = 0;
  STACK[0x1668] = &STACK[0x10E0];
  LODWORD(STACK[0xE38]) = 1142752960;
  return (*(v8 + 8 * v7))(a1, STACK[0x4B8], a3, a4, a5, 0xA82620A559D2DA78, a7, 0x153242EE3CF06A49);
}

uint64_t sub_10080FE98(uint64_t a1)
{
  v3 = STACK[0x1AC0] + 10 + (v1 ^ 0xD21C8094);
  STACK[0x1988] = v3;
  return (*(v2 + 8 * ((42 * (v3 > STACK[0x1AB8])) | 0x2150)))(a1, 1211082140);
}

uint64_t sub_10081031C()
{
  v1 = STACK[0x57D8];
  v2 = (*(STACK[0x57D8] + 8 * (v0 ^ 0x2683)))(1028);
  STACK[0xD790] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 18087) ^ 0x1621)) ^ v0)))();
}

uint64_t sub_100810378(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v10 = *(*(v8 + 4000) + a5 - 35072 * ((((a3 >> 6) * v9) >> 64) >> 1));
  *(*(v8 + 4008) + a2 - 5896 * ((((a2 >> 3) * v6) >> 64) >> 4)) = (((v10 ^ 0xC0) + 81) ^ ((v10 ^ 0x98) + 9) ^ ((v10 ^ 0xA9) + 58)) - 70;
  return (*(STACK[0x57D8] + 8 * ((21228 * (v7 == 0)) ^ a4)))(a1, a2 + 3903, a3 + v5);
}

uint64_t sub_100810410()
{
  STACK[0xCF30] = v2 - 32;
  STACK[0x7ED8] = v1 - 32;
  return v0();
}

uint64_t sub_10081048C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v21 = *(v17 + 8 * (v18 ^ 0x42D9));
  a17 = (v18 - 1723128465) ^ (1917435887 * (((&a16 | 0xC1D6809D) - &a16 + (&a16 & 0x3E297F60)) ^ 0x276DDB9B));
  a16 = v21;
  v22 = (*(v19 + 8 * (v18 + 14484)))(&a16);
  return (*(v19 + 8 * ((*v20 * (109 * ((v18 + 1325331298) & 0xB100DF63 ^ 0x164B) - 4411)) ^ v18)))(v22);
}

uint64_t sub_1008106E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v12 = LODWORD(STACK[0x3818]) + 4321;
  v13 = ((((v8 ^ 0x47) >> 1) | ((v8 ^ 0x47) << 7)) ^ 0xD9) * a6 + 19140993;
  v14 = v8 ^ LODWORD(STACK[0x38C0]) ^ 0xFFFFFFF7;
  v15 = (97 * (*(v11 + v13 - (((v13 * a8) >> 32) >> 1) * v10) ^ 0x27u)) ^ LODWORD(STACK[0x38F0]);
  v16 = (v8 ^ LODWORD(STACK[0x3680]) ^ 4) + 111;
  LODWORD(STACK[0x36E0]) = v8 ^ LODWORD(STACK[0x3668]) ^ 0x4F;
  v17 = v8 ^ LODWORD(STACK[0x38D8]) ^ 0x37u;
  v18 = *(v11 + 4647 * (v16 ^ 0x1C) + 4767822 - 6784 * (((1266205 * (4647 * (v16 ^ 0x1Cu) + 4767822)) >> 32) >> 1));
  LODWORD(STACK[0x3700]) = ((v18 ^ 0xE3) >> 3) | (32 * (v18 ^ 0xFFFFFFE3));
  return (*(v9 + 8 * v12))(v15, v14, v17, 9544938);
}

uint64_t sub_100810EB0@<X0>(int a1@<W4>, uint64_t a2@<X7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  v59 = *(&a56 + (1633 * a3 + 2129432) % (((v58 + 4029) | 0x84) - 18501));
  v60 = *(a2 + 4 * (3677 * (v59 | ((v59 < 0x5F) << 8)) + 4368276 - ((((3677 * (v59 | ((v59 < 0x5F) << 8)) + 4368276) * v56) >> 32) >> 12) * a1));
  HIDWORD(v61) = ((((v60 >> 1) & 0x7F80 ^ 0x328B9FF) - 1670781867) ^ (((v60 >> 1) & 0x7F80 ^ 0x414390A8) - 570241788) ^ (((v60 >> 1) & 0x7F80 ^ 0x426B4FD7) - 584445315)) + 1623415764;
  LODWORD(v61) = HIDWORD(v61);
  v62 = *(&a56 + (1633 * (((BYTE2(v60) ^ 0x53F36221) + 588054030) ^ ((BYTE2(v60) ^ 0x31F29F7E) + 1091371859) ^ ((BYTE2(v60) ^ 0x6201FDABu) + 318661000)) + 833817141) % 0xA88);
  v63 = *(&a56 + (1633 * (((HIBYTE(v60) ^ 0x9D2F7D61) + 1419580511) ^ ((HIBYTE(v60) ^ 0x12E1E19A) - 615282522) ^ ((HIBYTE(v60) ^ 0x8FCE9C0E) + 1182594354)) + 1696970371) % 0xA88);
  v64 = v63 & 0xC3 ^ 0x11;
  v65 = v63 ^ 0x20;
  v66 = v62 & 0xD3 ^ 0x99;
  v67 = *(&a56 + 1633 * (v61 >> 7) % 0xA88);
  v68 = (v62 ^ (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * ((v62 ^ 0x20) & (2 * (((2 * (((2 * v62) & 0x42 | 0x21) & v62)) ^ 0x72) & (v62 ^ 0x20) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) << 8;
  v69 = ((v63 ^ (2 * (v65 & (2 * (v65 & (2 * (v65 & (2 * (v65 & (2 * (((2 * (((2 * v63) & 0x42 | 0x21) & v63)) ^ 0x62) & v65 ^ v64)) ^ v64)) ^ v64)) ^ v64)) ^ v64))) << 16) ^ 0x86634F;
  v70 = v67 & 5 | 0xF2;
  v71 = v69 & (v68 ^ 0xFF344F) | v68 & 0x9C00;
  LOBYTE(v69) = v67 ^ (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * ((v67 ^ 0x20) & (2 * (v67 & (2 * (v67 & 5 | 0x12)) ^ (v67 & 5 | 0x12))) ^ v70)) ^ v70)) ^ v70)) ^ v70)) ^ v70));
  v72 = *(&a56 + (1633 * (((v60 ^ 0x90721F6D) - 1772697901) ^ ((v60 ^ 0x7C78CAAE) + 2052854546) ^ ((v60 ^ 0xEC0AD5B1) - 366081009)) - 819383456) % 0xA88);
  v73 = v72 & 0xA1 | 0x12;
  v74 = v73 ^ v72 & 0x64;
  v75 = v72 ^ (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * ((v72 ^ 0x20) & (2 * (v72 & (2 * (v72 & (2 * v73) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74));
  *(a2 + 4 * (v57 + 3677 * a3 - ((((v57 + 3677 * a3) * v56) >> 32) >> 12) * a1)) = (((((v71 ^ 0x675BF9) & (v69 ^ 0xFFFFBB) ^ v69 & 0x49) << 8) ^ 0xB0E8B860) & (v75 ^ 0xFFFFFFA4) | v75 & 0x9F) ^ 0x67B4C297;
  return (*(a55 + 8 * ((7231 * (a3 == 255)) ^ v58)))();
}

uint64_t sub_100811370@<X0>(int a1@<W8>)
{
  v4 = STACK[0xB298];
  v5 = STACK[0xB298];
  v6 = 3903 * (*STACK[0xB298] - 28) + 4002485;
  *v4 = *(v2[501] + v6 - (((1456909 * v6) >> 32) >> 1) * v1);
  v7 = v3 + 3903 * (v4[1] - 28);
  v4[1] = *(v2[501] + v7 - (((1456909 * v7) >> 32) >> 1) * v1);
  v8 = v3 + 3903 * (v4[2] - 28);
  v4[2] = *(v2[501] + v8 - (((1456909 * v8) >> 32) >> 1) * v1);
  v9 = v3 + 3903 * (v4[3] - 28);
  v4[3] = *(v2[501] + v9 - (((1456909 * v9) >> 32) >> 1) * v1);
  v10 = v3 + 3903 * (v4[4] - 28);
  v4[4] = *(v2[501] + v10 - (((1456909 * v10) >> 32) >> 1) * v1);
  v11 = v3 + 3903 * (v4[5] - 28);
  v4[5] = *(v2[501] + v11 - (((1456909 * v11) >> 32) >> 1) * v1);
  v12 = v3 + 3903 * (v4[6] - 28);
  v4[6] = *(v2[501] + v12 - (((1456909 * v12) >> 32) >> 1) * v1);
  v13 = v3 + 3903 * (v4[7] - 28);
  v4[7] = *(v2[501] + v13 - (((1456909 * v13) >> 32) >> 1) * v1);
  v14 = v3 + 3903 * (v4[8] - 28);
  v4[8] = *(v2[501] + v14 - (((1456909 * v14) >> 32) >> 1) * v1);
  LODWORD(v4) = v3 + 3903 * (v5[9] - 28);
  v5[9] = *(v2[501] + v4 - (((1456909 * v4) >> 32) >> 1) * v1);
  LODWORD(v4) = v3 + 3903 * (v5[10] - 28);
  v5[10] = *(v2[501] + v4 - (((1456909 * v4) >> 32) >> 1) * v1);
  LODWORD(v4) = v3 + 3903 * (v5[11] - 28);
  v5[11] = *(v2[501] + v4 - (((1456909 * v4) >> 32) >> 1) * v1);
  LODWORD(v4) = v3 + 3903 * (v5[12] - 28);
  v5[12] = *(v2[501] + v4 - (((1456909 * v4) >> 32) >> 1) * v1);
  LODWORD(v4) = v3 + 3903 * (v5[13] - 28);
  v5[13] = *(v2[501] + v4 - (((1456909 * v4) >> 32) >> 1) * v1);
  LODWORD(v4) = v3 + 3903 * (v5[14] - 28);
  v5[14] = *(v2[501] + v4 - (((1456909 * v4) >> 32) >> 1) * v1);
  LODWORD(v4) = v3 + 3903 * (v5[15] - 28);
  v5[15] = *(v2[501] + v4 - (((1456909 * v4) >> 32) >> 1) * v1);
  v15 = STACK[0xC038];
  v16 = STACK[0xC038];
  v17 = v3 + 3903 * (*STACK[0xC038] - 28);
  *v15 = *(v2[501] + v17 - (((1456909 * v17) >> 32) >> 1) * v1);
  v18 = 3903 * (v15[1] - 28) + 4002485;
  v15[1] = *(v2[501] + v18 - (((1456909 * v18) >> 32) >> 1) * v1);
  v19 = v3 + 3903 * (v15[2] - 28);
  v15[2] = *(v2[501] + v19 - (((1456909 * v19) >> 32) >> 1) * v1);
  v20 = v3 + 3903 * (v15[3] - 28);
  v15[3] = *(v2[501] + v20 - (((1456909 * v20) >> 32) >> 1) * v1);
  v21 = v3 + 3903 * (v15[4] - 28);
  v15[4] = *(v2[501] + v21 - (((1456909 * v21) >> 32) >> 1) * v1);
  v22 = v3 + 3903 * (v15[5] - 28);
  v15[5] = *(v2[501] + v22 - (((1456909 * v22) >> 32) >> 1) * v1);
  v23 = v3 + 3903 * (v15[6] - 28);
  v15[6] = *(v2[501] + v23 - (((1456909 * v23) >> 32) >> 1) * v1);
  v24 = v3 + 3903 * (v15[7] - 28);
  v15[7] = *(v2[501] + v24 - (((1456909 * v24) >> 32) >> 1) * v1);
  v25 = v3 + 3903 * (v15[8] - 28);
  v15[8] = *(v2[501] + v25 - (((1456909 * v25) >> 32) >> 1) * v1);
  LODWORD(v15) = v3 + 3903 * (v16[9] - 28);
  v16[9] = *(v2[501] + v15 - (((1456909 * v15) >> 32) >> 1) * v1);
  LODWORD(v15) = v3 + 3903 * (v16[10] - 28);
  v16[10] = *(v2[501] + v15 - (((1456909 * v15) >> 32) >> 1) * v1);
  v26 = v3 + 3903 * (v16[11] - 28);
  v16[11] = *(v2[501] + v26 - v26 / 0x1708 * v1);
  v27 = v3 + 3903 * (v16[12] - 28);
  v16[12] = *(v2[501] + v27 - (((1456909 * v27) >> 32) >> 1) * v1);
  v28 = v3 + 3903 * (v16[13] - 28);
  v16[13] = *(v2[501] + v28 - (((1456909 * v28) >> 32) >> 1) * v1);
  v29 = v3 + 3903 * (v16[14] - 28);
  v16[14] = *(v2[501] + v29 - (((1456909 * v29) >> 32) >> 1) * v1);
  v30 = v3 + 3903 * (v16[15] - 28);
  v16[15] = *(v2[501] + v30 - (((1456909 * v30) >> 32) >> 1) * v1);
  v31 = v2[502];
  LODWORD(v16) = 3903 * ((*v31 ^ 0xECFFEF36) + ((2 * *v31) & 0x6C)) - 1371725453;
  *v31 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v32 = v2[504];
  LODWORD(v16) = 3903 * ((*v32 ^ 0xFDFDBEF7) + ((2 * *v32) & 0xFFEF)) - 1600474636;
  *v32 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v33 = v2[506];
  LODWORD(v16) = 3903 * ((*v33 ^ 0x3FF0DD3B) + ((2 * *v33) & 0x76)) + 654328632;
  *v33 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v34 = v2[508];
  LODWORD(v16) = 3903 * ((*v34 ^ 0x7B3A7EBF) + ((2 * *v34) & 0xFF7F)) + 1063962556;
  *v34 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v35 = v2[510];
  LODWORD(v16) = 3903 * ((*v35 ^ 0x75FBFDDD) + ((2 * *v35) & 0xBBBB)) + 861519194;
  *v35 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v36 = v2[512];
  LODWORD(v16) = 3903 * ((*v36 ^ 0xCAB7DFE7) + ((2 * *v36) & 0xFFCF)) + 1457424100;
  *v36 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v37 = v2[514];
  LODWORD(v16) = 3903 * ((*v37 ^ 0xFF6FCE7E) + ((2 * *v37) & 0xFC)) - 1767901509;
  *v37 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v38 = v2[516];
  LODWORD(v16) = 3903 * ((*v38 ^ 0xFDFF57EF) + ((2 * *v38) & 0xFFDF)) - 2009103124;
  *v38 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v39 = v2[518];
  LODWORD(v16) = 3903 * ((*v39 ^ 0xEFF777FF) + 2 * *v39) + 1917759740;
  *v39 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v40 = v2[520];
  LODWORD(v16) = 3903 * ((*v40 ^ 0xFF7EF3FD) + ((2 * *v40) & 0xFFFB)) - 1347204230;
  *v40 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v41 = v2[522];
  LODWORD(v16) = 3903 * ((*v41 ^ 0xE67E3FFE) + 1543499262 + ((2 * *v41) & 0x1FC) + 4020) + 1032760173;
  *v41 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v42 = v2[524];
  LODWORD(v16) = 3903 * ((*v42 ^ 0xFFEEFF7B) + ((2 * *v42) & 0xF6)) + 57939320;
  *v42 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v43 = v2[526];
  LODWORD(v16) = 3903 * (2 * *v43 + 854478383 + (*v43 ^ 0xDFD9FFFF)) - 1537394069;
  *v43 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v44 = v2[528];
  LODWORD(v16) = 3903 * ((*v44 ^ 0x6D3FF7D5) + ((2 * *v44) & 0x1AA)) + 1576644946;
  *v44 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v45 = v2[530];
  LODWORD(v16) = 3903 * ((*v45 ^ 0x7EB73CBF) + ((2 * *v45) & 0xFF7F)) + 345376188;
  *v45 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  v46 = v2[532];
  LODWORD(v16) = 3903 * ((*v46 ^ 0xEB6D371F) + 2 * (*v46 & 0x1F)) - 1440626660;
  *v46 = *(v2[501] + v16 - v16 / 0x1708 * v1) - 28;
  return (*(STACK[0x57D8] + 8 * a1))();
}