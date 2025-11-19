uint64_t sub_1009C9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x440] = STACK[0x3A0];
  STACK[0x5E0] = STACK[0x328];
  STACK[0x3D8] = STACK[0x320];
  STACK[0x570] = a67;
  STACK[0x638] = STACK[0x210];
  STACK[0x580] = STACK[0x228];
  STACK[0x558] = STACK[0x310];
  STACK[0x620] = STACK[0x208];
  STACK[0x630] = STACK[0x200];
  STACK[0x3B8] = a66;
  STACK[0x430] = STACK[0x260];
  STACK[0x4E0] = STACK[0x348];
  STACK[0x470] = STACK[0x350];
  STACK[0x5E8] = STACK[0x2D0];
  STACK[0x568] = STACK[0x2D8];
  return (*(v67 + 140744))(a1, a2, a3, a4, a5, a6, a7, 23958);
}

uint64_t sub_1009C9CC0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 42;
  v4 = (*(v1 + 8 * (v2 ^ 0x73F7)))(42);
  *(a1 + 24) = v4;
  return (*(v1 + 8 * (((v4 == 0) * (((v2 - 14667) ^ 0x8EA3) + ((v2 - 14667) | 0x842) - 38606)) ^ v2)))();
}

uint64_t sub_1009C9D38@<X0>(uint64_t a1@<X7>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = v2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_1009C9EE0@<X0>(int a1@<W8>)
{
  *(v2 + 1040) = 0;
  LODWORD(STACK[0x7CC]) = -371865839;
  return (*(v1 + 8 * (a1 - 2031)))();
}

uint64_t sub_1009C9F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v61 = (*(v60 + 8 * (v59 ^ 0x7136u)))(a59);
  STACK[0x3C0] = v61;
  return (*(v60 + 8 * (((((v61 == 0) ^ (v59 + 1)) & 1) * ((34 * (v59 ^ 0xBE87)) ^ 0xAF6D)) ^ v59)))();
}

uint64_t sub_1009CA0C8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v38.i64[0] = v22 + a16;
  v38.i64[1] = v19 + a16 - 2;
  *&v39 = v19 + a16 - 15;
  *(&v39 + 1) = v19 + a16 - 16;
  *&STACK[0x590] = v39;
  *&v39 = v19 + a16 - 13;
  *(&v39 + 1) = v19 + a16 - 14;
  *&STACK[0x570] = v39;
  *&v39 = v19 + a16 - 11;
  *(&v39 + 1) = v19 + a16 - 12;
  *&STACK[0x580] = v39;
  v40.i64[0] = v19 + a16 - 7;
  v40.i64[1] = v19 + a16 - 8;
  v41.i64[0] = v19 + a16 - 5;
  v41.i64[1] = v19 + a16 - 6;
  v42.i64[0] = v19 + a16 - 3;
  v42.i64[1] = v19 + a16 - 4;
  v43 = vandq_s8(v42, *&STACK[0x540]);
  v44 = vandq_s8(v41, *&STACK[0x540]);
  v45 = vandq_s8(v40, *&STACK[0x540]);
  v46 = vandq_s8(v38, *&STACK[0x540]);
  v47 = *&STACK[0x540];
  v48 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v36);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v36);
  v52 = *&STACK[0x510];
  v53 = veorq_s8(v51, *&STACK[0x510]);
  v54 = veorq_s8(v50, *&STACK[0x510]);
  v55 = *&STACK[0x500];
  v56 = veorq_s8(v50, *&STACK[0x500]);
  v57 = veorq_s8(v51, *&STACK[0x500]);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v56);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, a8), vorrq_s8(v58, v27)), v27), v24);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, a8), vorrq_s8(v59, v27)), v27), v24);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63), v25);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62), v25);
  v66 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v68 = veorq_s8(v65, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = *&STACK[0x4B0];
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, *&STACK[0x4B0]), vorrq_s8(v71, v26)), v26), v28);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, *&STACK[0x4B0]), vorrq_s8(v70, v26)), v26), v28);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v75), v29);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v76), v29);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v84 = veorq_s8(vaddq_s64(v82, v80), v30);
  v85 = veorq_s8(v83, v30);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v87 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87);
  v90 = vaddq_s64(v88, v86);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(v90, vandq_s8(vaddq_s64(v90, v90), v31)), v32), v33);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(v89, vandq_s8(vaddq_s64(v89, v89), v31)), v32), v33);
  v93.i64[0] = v19 + a16 - 9;
  v93.i64[1] = v19 + a16 - 10;
  *&STACK[0x560] = v93;
  v94 = vaddq_s64(v48, v36);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL)));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL)));
  v97 = vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v37));
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), v34), v96), v35), *&STACK[0x420]);
  v193.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), v34), v95), v35), *&STACK[0x420]), v97);
  v193.val[3] = vshlq_u64(v98, vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v37)));
  v99 = veorq_s8(v94, v52);
  v100 = veorq_s8(v94, v55);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, a8), vorrq_s8(v101, v27)), v27), v24);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v25);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, v72), vorrq_s8(v106, v26)), v26), v28);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v29);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v30);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), v31)), v32), v33);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL)));
  v116 = vandq_s8(v93, v47);
  v117 = vaddq_s64(v49, v36);
  v193.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v115, v115), v34), v115), v35), *&STACK[0x420]), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v37)));
  v118 = veorq_s8(v117, v52);
  v119 = veorq_s8(v117, v55);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, a8), vorrq_s8(v120, v27)), v27), v24);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v25);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v125, v72), vorrq_s8(v125, v26)), v26), v28);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v29);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v30);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(v132, vandq_s8(vaddq_s64(v132, v132), v31)), v32), v33);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v136 = vandq_s8(*&STACK[0x580], v47);
  v137 = vaddq_s64(v135, v134);
  v138 = vandq_s8(*&STACK[0x570], v47);
  v193.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), v34), v137), v35), *&STACK[0x420]), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v37)));
  v139 = vandq_s8(*&STACK[0x590], v47);
  v140 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v141 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v144 = vaddq_s64(v141, v36);
  v145 = vaddq_s64(v140, v36);
  v141.i64[0] = vqtbl4q_s8(v193, *&STACK[0x550]).u64[0];
  v193.val[0] = veorq_s8(v145, v52);
  v193.val[1] = veorq_s8(v144, v52);
  v193.val[2] = veorq_s8(v144, v55);
  v193.val[3] = veorq_s8(v145, v55);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL), v193.val[3]);
  v193.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v193.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193.val[0], a8), vorrq_s8(v193.val[0], v27)), v27), v24);
  v193.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193.val[1], a8), vorrq_s8(v193.val[1], v27)), v27), v24);
  v193.val[2] = veorq_s8(v193.val[1], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]), v25);
  v146 = vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL);
  v193.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL), v193.val[3]), v25);
  v193.val[2] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[1], v146);
  v147 = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[3]);
  v193.val[1] = vaddq_s64(v147, v193.val[2]);
  v193.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193.val[0], v72), vorrq_s8(v193.val[0], v26)), v26), v28);
  v193.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193.val[1], v72), vorrq_s8(v193.val[1], v26)), v26), v28);
  v193.val[2] = veorq_s8(v193.val[1], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]), v29);
  v148 = vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL);
  v193.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL), v193.val[3]), v29);
  v193.val[2] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[1], v148);
  v149 = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[3]);
  v193.val[1] = veorq_s8(vaddq_s64(v149, v193.val[2]), v30);
  v193.val[0] = veorq_s8(v193.val[0], v30);
  v150 = vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL);
  v193.val[2] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[1], v150);
  v151 = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[3]);
  v193.val[1] = vaddq_s64(v151, v193.val[2]);
  v193.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v193.val[1], vandq_s8(vaddq_s64(v193.val[1], v193.val[1]), v31)), v32), v33);
  v152 = vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL);
  v193.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v193.val[0], vandq_s8(vaddq_s64(v193.val[0], v193.val[0]), v31)), v32), v33);
  v193.val[2] = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[3], 3uLL), v193.val[3], 0x3DuLL));
  v193.val[3] = veorq_s8(v193.val[1], v152);
  v153 = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v154 = vaddq_s64(v142, v36);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[3]);
  v193.val[1] = vaddq_s64(v153, v193.val[2]);
  v193.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v193.val[0], v193.val[0]), v34), v193.val[0]), v35), *&STACK[0x420]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x590], 3uLL), v37)));
  v193.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v193.val[1], v193.val[1]), v34), v193.val[1]), v35), *&STACK[0x420]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x570], 3uLL), v37)));
  v155 = veorq_s8(v154, v52);
  v156 = veorq_s8(v154, v55);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v157, a8), vorrq_s8(v157, v27)), v27), v24);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), v25);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161);
  v163 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v162, v72), vorrq_s8(v162, v26)), v26), v28);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v29);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v30);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(v169, vandq_s8(vaddq_s64(v169, v169), v31)), v32), v33);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL)));
  v172 = vaddq_s64(v143, v36);
  v193.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), v34), v171), v35), *&STACK[0x420]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x580], 3uLL), v37)));
  v173 = veorq_s8(v172, v52);
  v174 = veorq_s8(v172, v55);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, a8), vorrq_s8(v175, v27)), v27), v24);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v25);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v180, v72), vorrq_s8(v180, v26)), v26), v28);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v29);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v30);
  v186 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v188 = veorq_s8(v185, v186);
  v189 = vaddq_s64(v187, v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(v189, vandq_s8(vaddq_s64(v189, v189), v31)), v32), v33);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL)));
  v193.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v191, v191), v34), v191), v35), *&STACK[0x420]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x560], 3uLL), v37)));
  v141.i64[1] = vqtbl4q_s8(v193, *&STACK[0x550]).u64[0];
  v193.val[0] = vrev64q_s8(*(v21 + a16));
  v193.val[1].i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v193.val[1].i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v193.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v193.val[0], v193.val[0], 8uLL), v193.val[1]), v141));
  *(v20 + a16) = vextq_s8(v193.val[0], v193.val[0], 8uLL);
  return (*(v16 + 8 * (((v18 + a16 != 0) * v23) ^ v17)))();
}

uint64_t sub_1009CAB24(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35)
{
  *a35 = a3;
  *v37 = (*(v36 + 8 * (v35 ^ 0x8057)))();
  return (*(v36 + 8 * ((v35 + 2002569289) ^ 0x775D4441 ^ (2338 * ((v35 + 2002569289) > 0x22E40D39)))))();
}

uint64_t sub_1009CAC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  v35 = *(v33 - 0x217E172EFA1E81CLL);
  v36 = (((*(v33 - 0x217E172EFA1E804) ^ 0x2E48A12) - 48531986) ^ ((*(v33 - 0x217E172EFA1E804) ^ 0xEB389B4F) + 348611761) ^ ((*(v33 - 0x217E172EFA1E804) ^ 0x962BE ^ (v32 - 882657711) & 0x349CBFFE) - 644684)) - 54746966;
  v37 = 634647737 * ((2 * ((v34 - 160) & 0x5D7A6FB0) - (v34 - 160) - 1568305078) ^ 0xCF13BFB6);
  *(v34 - 128) = v32 - v37 + 23743;
  *(v34 - 120) = v33 - 0x217E172EFA1E800;
  *(v34 - 152) = &a31;
  *(v34 - 144) = &a28;
  *(v34 - 136) = v35;
  *(v34 - 160) = v36 ^ v37;
  v38 = (*(v31 + 8 * (v32 + 35874)))(v34 - 160);
  return (*(v31 + 8 * ((42837 * (*(v34 - 112) == -371865839)) ^ v32)))(v38);
}

uint64_t sub_1009CADD8()
{
  v2 = STACK[0x320];
  v3 = *(*(STACK[0x320] + 32) + 24) == STACK[0x320];
  STACK[0x3A0] = &STACK[0x4C4];
  v4 = *(v1 + 8 * ((v3 * ((((v0 + 11501576) | 0x4C0A5C52) - 1287250009) ^ (v0 - 1122640411) & 0x42E9FDEF)) ^ v0));
  STACK[0x328] = v2;
  return v4();
}

uint64_t sub_1009CAE50@<X0>(uint64_t a1@<X8>)
{
  *v1 = v3;
  v5 = *(a1 + 8);
  v6 = ((*(&STACK[0x26C] + (STACK[0x26C] & 3)) ^ 0x10u) % ((((v5 - 0x3CE25E0EC5200378) / ((v2 - 7547) + 4)) - (((5 * (v2 ^ 0x18C8)) ^ 0x79EDEF25) & (2 * ((v5 - 0x3CE25E0EC5200378) / ((v2 - 7547) + 4)))) - 1124664915) ^ 0xBCF6F9AD) + 43) & 0x1FC;
  LODWORD(v5) = ((v5 ^ 0x856EE369) - 1078910993) ^ v5 ^ ((v5 ^ 0xB8E68B54) - 2110162988) ^ ((v5 ^ 0x375786AA) + 227047982) ^ ((v5 ^ 0xCFFFEDEF) - 182447767);
  return (*(v4 + 8 * ((39584 * ((((v5 ^ 0x38B81FF3) - 2115451379) ^ ((v5 ^ 0xF88C4E4D) + 1104975795) ^ ((v5 ^ 0x51452C6) - 1136358598)) - (((v6 ^ 0x58DEB9CA) + 431986018) ^ ((v6 ^ 0x43314A18) + 38823604) ^ ((v6 ^ 0x1BEFF3D2) + 1519312762)) - 990883317 < 0x7FFFFFFF)) ^ v2)))();
}

uint64_t sub_1009CB020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v22 = v13 + a3 + a2;
  v23 = (__ROR8__((a6 + v22) & 0xFFFFFFFFFFFFFFF8, 8) + v15) & 0xF9FFFFFFFFFFFFFFLL;
  v24 = v23 ^ 0x12219E3FC273472;
  v25 = v23 ^ v16;
  v26 = (__ROR8__(v24, 8) + v25) ^ v18;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = ((v17 & (2 * (v28 + v27))) - (v28 + v27) - 0x681A52E31CF92B84) ^ v7;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v20;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = __ROR8__((a1 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = ((v8 & (2 * (v33 + v32))) - (v33 + v32) + 0x34C25248632CE8B0) ^ 0xB672D25FDC6F28D9;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (v6 - v34) & 0x185F139E2B33A58DLL | (v34 + v15) & 0xE5A0EC61D4CC5A72;
  v39 = __ROR8__(v38 ^ 0x1D7D0A7DD71491FFLL, 8);
  v38 ^= 0xA9F65DB150283DF1;
  v40 = (((2 * (v37 + v36)) | 0x67ABD7AAC45213B8) - (v37 + v36) + 0x4C2A142A9DD6F624) ^ 0x1948316F80CDDDA0;
  v41 = v40 ^ __ROR8__(v36, 61);
  v42 = (v39 + v38 - (v11 & (2 * (v39 + v38))) + v9) ^ v10;
  v43 = v42 ^ __ROR8__(v38, 61);
  v44 = (__ROR8__(v40, 8) + v41) ^ v19;
  v45 = (__ROR8__(v42, 8) + v43) ^ v21;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v20;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v44, 8) + (v44 ^ __ROR8__(v41, 61));
  v50 = __ROR8__(v47, 8);
  v51 = ((v12 & (2 * (v50 + v48))) - (v50 + v48) + 0x22FBC31546DB8D4FLL) ^ 0xA04B4302F9984D26;
  v52 = v51 ^ __ROR8__(v48, 61);
  v53 = __ROR8__(v51, 8);
  v54 = STACK[0x3A8];
  v55 = (((2 * (v53 + v52)) | 0x8D7A00719C5C6184) - (v53 + v52) - 0x46BD0038CE2E30C2) ^ 0xEC20DA822CCAE4BELL;
  v56 = v55 ^ __ROR8__(v52, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ v19;
  *(a1 + v22) = (((((2 * v49) | 0xCC3717CE5664B278) - v49 + 0x19E47418D4CDA6C4) ^ 0x7D07FFC04E2C5624) >> (8 * ((a6 + v22) & 7))) ^ (((__ROR8__(v57, 8) + (v57 ^ __ROR8__(v56, 61))) ^ v14) >> (8 * ((a1 + v22) & 7))) ^ *(a6 + v22);
  return (*(v54 + 8 * (((v22 == 0) * a5) ^ a4)))();
}

uint64_t sub_1009CB368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v10 + 696) = v8;
  LODWORD(STACK[0x848]) = -1242440285;
  *(v10 + 216) = &STACK[0x7F8];
  LODWORD(STACK[0x61C]) = 1429795827;
  return (*(a8 + 8 * (((v9 != -468182992) * (v9 - 3504974)) ^ (v9 - 3507021))))();
}

uint64_t sub_1009CB4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18)
{
  v21 = v18 < 0xB1BF937F;
  v22 = a18 + (((v19 ^ 0x42AFA883) - 957275834) ^ ((v19 ^ 0xDA246F94) + 1585112659) ^ ((v19 ^ 0xAFF763F) - 1901985798)) + a8 - 1529753397;
  v23 = v21 ^ (v22 < 0xB1BF937F);
  v24 = v22 < v18;
  if (!v23)
  {
    v21 = v24;
  }

  return (*(v20 + 8 * ((v21 * (19 * (a8 ^ 0xABE7) - 5700)) | a8)))();
}

uint64_t sub_1009CB5B4()
{
  *(v2 + 808) = *(v2 + 208);
  LODWORD(STACK[0x4F4]) = STACK[0x694];
  return (*(v1 + 8 * ((27846 * (v0 < 0x2FA73A3B)) ^ (v0 + 1737042418))))();
}

uint64_t sub_1009CB60C@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v23 = v13 + (LODWORD(STACK[0x418]) ^ *(v21 - 152) ^ v9 ^ v11) * v12;
  v24 = *(STACK[0x448] + 4 * (v23 - (((v23 * v14) >> 32) >> 3) * v15));
  *(*(v21 - 160) + 4 * v9) = v18 ^ v19 ^ v20 ^ LODWORD(STACK[0x3C4]) ^ a8 ^ v17 ^ ((((a1 ^ v24) + a2) ^ ((v24 ^ a3) + a4) ^ ((v24 ^ a5) + a6)) + a7);
  return (*(v16 + 8 * (((v10 == 0) * v22) ^ a9)))();
}

uint64_t sub_1009CB6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, unsigned __int8 a28, unsigned __int8 a29)
{
  v33 = v30;
  v385 = v29;
  v34 = *(v31 + 8 * (v30 - 4627)) - 1854713495;
  v35 = *(v34 + (a17 ^ 0x8ELL));
  HIDWORD(v37) = ~v35;
  LODWORD(v37) = (v35 ^ 0x10) << 24;
  v36 = v37 >> 26;
  v38 = *(v31 + 8 * (v30 ^ 0x15F5)) - 281099575;
  v39 = 809 * (v30 ^ 0x14FF) - 34532;
  v40 = *(v38 + (a23 ^ 0xFALL));
  v41 = *(v38 + (a15 ^ 0xDLL));
  v42 = *(v31 + 8 * (v30 - 3814)) - 175664642;
  HIDWORD(v37) = ((v41 >> 5) | (8 * v41)) ^ 2;
  LODWORD(v37) = (v41 << 27) ^ 0x78000000;
  LOBYTE(v41) = v37 >> 27;
  v43 = *(v31 + 8 * (v30 - 3541)) - 1141239911;
  v44 = *(v38 + (a19 ^ 0x8FLL)) << 16;
  v45 = *(v43 + (a16 ^ 0x17));
  v46 = (((v45 ^ 0x40) - 64) ^ ((v45 ^ 9) - 9) ^ ((v45 ^ 0x7E) - 126)) + 15;
  v47 = ((v46 >> 4) | (16 * v46)) - ((2 * ((v46 >> 4) | (16 * v46))) & 0xFFFFFFA8) + 84;
  HIDWORD(v37) = v47 ^ 7;
  LODWORD(v37) = (v47 ^ 0xFFFFFFBF) << 24;
  v48 = v37 >> 28;
  v49 = ((((*(v42 + (a18 ^ 0x56)) + 121) ^ 0xAAAAAAAA) << 24) ^ 0x256498E9) & (v44 ^ 0xFFC198E9) | v44 & 0x9B0000;
  v50 = *(v34 + (a21 ^ 0x34));
  v51 = ((v49 ^ 0x97574620) & (((v50 << 6) | 0x39) ^ 0xFFFFDE14) ^ 0xD2D680D8) & ((v50 >> 2) ^ 0xFFFFDFFB) ^ (v50 >> 2) & 0xEEEEEEEE;
  v52 = *(v43 + (a28 ^ 0x24));
  v53 = ((2 * v52) & 0xB0 ^ 0x20) + (v52 ^ (-40 - (v52 ^ 0xEF)) ^ 0x37 ^ (-55 - (((v52 ^ 0xD2) + 46) ^ ((v52 ^ 0x68) - 104) ^ ((v52 ^ 0x8D) + 115))));
  v54 = ((v51 ^ 0xBAE45E15) - 2 * ((v51 ^ 0xBAE45E15) & 0x16C70973 ^ v51 & 2) + 382151025) ^ 0x16C72971;
  v55 = *(v34 + (a25 ^ 0x7ELL));
  HIDWORD(v37) = ~v55;
  LODWORD(v37) = (v55 ^ 0x10) << 24;
  v56 = v37 >> 26;
  v57 = *(v31 + 8 * (v33 - 1182)) - 1665757562;
  v58 = *(v31 + 8 * (v33 - 1025)) - 65701875;
  v59 = *(v31 + 8 * (v33 ^ 0x1228)) - 2074578050;
  v60 = *(v59 + 4 * (((((*(v43 + (a24 ^ 0x14)) ^ 0xE5) + 27) ^ ((*(v43 + (a24 ^ 0x14)) ^ 0x5F) - 95) ^ ((*(v43 + (a24 ^ 0x14)) ^ 0x8D) + 115)) + 15) ^ 0x94u)) ^ 0x58628F5;
  LODWORD(v37) = __ROR4__(*(v57 + 4 * ((*(v42 + (a14 ^ 0xE3)) + 121) ^ 0xC7u)) ^ *(v58 + 4 * (*(v38 + (a27 ^ 0xB7)) ^ 0x6FLL)) ^ v60 ^ 0xFAFCE25C ^ (2 * v60) & 0x98EF72BA, 26);
  v61 = *(v31 + 8 * (v33 ^ 0x1778)) - 1757669970;
  v62 = v54 + ((((((*(v43 + (a20 ^ 0xA1)) ^ 0x4F) - 79) ^ ((*(v43 + (a20 ^ 0xA1)) ^ 0xE7) + 25) ^ ((*(v43 + (a20 ^ 0xA1)) ^ 0x9F) + 97)) + 15) ^ 0xFA) << 8);
  v63 = *(v61 + 4 * (v54 ^ 0x5Eu)) ^ __ROR4__(v37 ^ 0xDC16FCBB, 6);
  v64 = *(v59 + 4 * ((v53 - 40) ^ 0x7Du)) ^ 0x24459ED6;
  v65 = *(v58 + 4 * (v41 ^ 0x17u)) ^ *(v61 + 4 * (v56 ^ 0xF8u)) ^ v64 ^ (2 * v64) & 0x98EF72BA ^ *(v57 + 4 * (HIBYTE(v62) ^ 0xD5));
  v66 = *(v59 + 4 * (v48 ^ 0xD6u));
  v67 = v66 ^ 0xB2DE6B5C;
  v68 = v66 ^ 0x56295C;
  v69 = *(v59 + 4 * (BYTE1(v62) ^ 0xA4u));
  v70 = *(v57 + 4 * ((*(v42 + (a26 ^ 0xF2)) + 121) ^ 0xB2u)) ^ *(v58 + 4 * (v40 ^ 0x8D)) ^ 0xA6EE4705;
  v71 = (v69 ^ 0xEDB0550C ^ (2 * v69) & 0x98EF72BA) + v70 - 2 * ((v69 ^ 0xEDB0550C ^ (2 * v69) & 0x98EF72BA) & v70);
  v72 = v36 ^ 0x82u;
  v73 = v63 ^ 0xF5B01A4A;
  v74 = v71 ^ *(v61 + 4 * v72);
  v75 = *(v57 + 4 * ((v63 ^ 0xF5B01A4A) >> 24));
  v76 = *(v58 + 4 * BYTE2(v74));
  v77 = v75 & 8;
  if (v65 == 276878216)
  {
    v68 = v67;
  }

  v78 = -1802333311 * v32;
  v79 = *(*(v31 + 8 * (v33 - 1217)) + (v39 & v78 ^ 0x25) - 1817284275);
  v384 = v32;
  v383 = v79 - 5;
  v80 = ((*(*(v31 + 8 * (v33 ^ 0x1ED0)) + (((-27775 * v32) >> 8) ^ 0xE6) - 1169281338) << 8) ^ 0x4AACE871) & ((v79 - 5) ^ 0x4AACFFF9) | (v79 - 5) & 0x8E;
  v81 = *(*(v31 + 8 * (v33 - 2968)) + (HIBYTE(v78) ^ 0xALL) - 1114798146);
  v82 = *(v34 + (a29 ^ 0xDCLL));
  HIDWORD(v83) = ~v82;
  LODWORD(v83) = (v82 ^ 0x10) << 24;
  v84 = ((((*(*(v31 + 8 * (v33 ^ 0x191C)) + (HIWORD(v78) & 0xFB ^ 0x96 ^ (HIWORD(v78) & 4 | 0x18)) - 1904336726) << 16) ^ 0x9C86FC0E) & (((v81 ^ 0xFFFFFFFB) << 24) ^ 0x59FFFEBF) | ((v81 ^ 0xFFFFFFFB) << 24) & 0x63000000) ^ 0x7337051B) & (v80 ^ 0xB5532604) ^ v80 & 0x42A006EA;
  LOBYTE(v78) = *(v42 + (a22 ^ 0xAFLL));
  v85 = *(v58 + 4 * (BYTE2(v62) ^ 0x27u));
  v86 = *(v61 + 4 * ((v83 >> 26) ^ 0xEu)) ^ *(v57 + 4 * ((v78 + 121) ^ 0x1Fu)) ^ v67 ^ ((((v85 ^ 0xD8BA7F35) - (v85 ^ 0x96649BD9)) ^ 0xFFFFFFF8) + (v85 ^ 0xD8BA7F35)) ^ (2 * v68) & 0x98EF72BA;
  v87 = v65 ^ 0x974A9F78;
  v88 = v65 ^ 0x813AB406;
  if (((v75 | v76 | 0xFFFFFFF7) ^ (v75 & 8 | 0x182124A0)) == 0xE7DEDB57)
  {
    v89 = 0;
  }

  else
  {
    v89 = -2 * (v77 ^ 8);
  }

  v90 = *(v59 + 4 * (((v86 ^ 0x28AE45FB) >> (BYTE2(v62) & 8 ^ 8) >> (BYTE2(v62) & 8)) ^ 0x66u)) ^ 0xCFAC3178;
  v91 = *(v61 + 4 * (v87 ^ 0x73u)) ^ v75 & 0xFFFFFFF7 ^ v90 ^ (2 * v90) & 0x98EF72BA ^ ((v76 ^ 0xD8BA7F35) + (v77 ^ 8) + v89);
  v92 = *(v59 + 4 * ((((((v74 ^ 0x376F20A6) >> (v71 & 8)) - ((2 * ((v74 ^ 0x376F20A6) >> (v71 & 8))) & 0xD2DC249E) + 1768821327) ^ 0x696E124F) >> (v71 & 8 ^ 8)) ^ 0x66u)) ^ 0x904B8BA2;
  v93 = *(v58 + 4 * BYTE2(v73)) ^ *(v57 + 4 * HIBYTE(v88)) ^ v92 ^ (2 * v92) & 0x98EF72BA;
  v94 = *(v59 + 4 * BYTE1(v73)) ^ 0x26366494;
  v95 = *(v59 + 4 * BYTE1(v88)) ^ 0x1DF845F8;
  v96 = *(v58 + 4 * (BYTE2(v86) ^ 0xC1u)) ^ *(v61 + 4 * (v63 ^ 0x47u)) ^ *(v57 + 4 * (HIBYTE(v74) ^ 0xC7)) ^ v95 ^ (2 * v95) & 0x98EF72BA;
  LODWORD(v98) = __ROR4__(*(v57 + 4 * (HIBYTE(v86) ^ 0xD8)) ^ *(v58 + 4 * (BYTE2(v87) ^ 0x1Fu)) ^ *(v61 + 4 * (v74 ^ 0xABu)) ^ v94 ^ (2 * v94) & 0x98EF72BA ^ 0xACB1BB99, 21) ^ 0xB83F538D;
  HIDWORD(v98) = v98;
  v97 = v98 >> 11;
  v99 = *(v59 + 4 * (BYTE1(v97) ^ 0x34u)) ^ 0x989E966C;
  v100 = v93 ^ *(v61 + 4 * (v86 ^ 0xF6u));
  v101 = v100 ^ 0x3411CF10;
  LODWORD(v98) = __ROR4__(*(v57 + 4 * (HIBYTE(v91) ^ 0xC6)) ^ *(v58 + 4 * (BYTE2(v96) ^ 0xC7u)) ^ v99 ^ (2 * v99) & 0x98EF72BA ^ 0xECFB889 ^ *(v61 + 4 * (v100 ^ 0xBCu)), 13);
  v102 = *(v58 + 4 * (BYTE2(v91) ^ 0x3Bu)) ^ *(v57 + 4 * (HIBYTE(v100) ^ 0xF));
  v103 = (v102 & 0x7D062FAD ^ 0xA6FFD757) - (v102 ^ 0x24179757);
  v104 = *(v59 + 4 * (BYTE1(v96) ^ 0xA5u)) ^ 0x17FF0C4B;
  v105 = (2 * v104) & 0x98EF72BA ^ v104;
  v106 = (v102 & 0x7D062FAD ^ 0x24060705) + (v105 & 0x7D062FAD ^ 0x70000985) + ((2 * ((v105 & 0x7D062FAD ^ 0x70000985) & (v102 ^ 0x59062F09) ^ v105 & 0x7D00280C)) ^ 0x1FFFEFF7) + 1;
  v107 = (v106 & 0x6F66EDC2 | (v103 ^ v105 & 0x82F9D052 ^ 0x1238526D) & ~v106) ^ *(v61 + 4 * (v97 ^ 0xACu));
  v108 = *(v59 + 4 * (BYTE1(v91) ^ 0xB7u)) ^ 0xD7215FF9;
  v109 = HIBYTE(v96) ^ 0xAA;
  v110 = *(v58 + 4 * (BYTE2(v101) ^ 0xA6u)) ^ *(v57 + 4 * (HIBYTE(v97) ^ 0x7D)) ^ *(v61 + 4 * (v96 ^ 0xFCu)) ^ v108 ^ (2 * v108) & 0x98EF72BA;
  v111 = *(v59 + 4 * (BYTE1(v101) ^ 0xA0u));
  v112 = *(v58 + 4 * (BYTE2(v97) ^ 0x46u)) ^ *(v57 + 4 * v109) ^ *(v61 + 4 * (v91 ^ 0x6Fu)) ^ v111 ^ ((v111 & 0xCC77B95D ^ 0x44103104) << !(v93 & 1) << (v93 & 1));
  v113 = *(v59 + 4 * BYTE1(v110)) ^ 0x8368988B;
  LODWORD(v98) = v98 ^ 0xD9F6E6B6;
  HIDWORD(v98) = v98;
  v114 = v98 >> 19;
  v115 = *(v58 + 4 * (BYTE2(v112) ^ 0xB3u)) ^ *(v57 + 4 * (HIBYTE(v114) ^ 0xE3)) ^ v113 ^ (2 * v113) & 0x98EF72BA ^ *(v61 + 4 * (v107 ^ 0x6Du));
  BYTE2(v113) = BYTE2(v110) ^ 0x54;
  v116 = *(v59 + 4 * (BYTE1(v112) ^ 0x1Bu)) ^ 0xB3717208;
  v117 = *(v58 + 4 * (BYTE2(v114) ^ 0x1Au)) ^ *(v61 + 4 * (v110 ^ 0xEBu)) ^ v116 ^ (2 * v116) & 0x98EF72BA ^ *(v57 + 4 * (HIBYTE(v107) ^ 0xD2));
  v118 = *(v59 + 4 * (BYTE1(v114) ^ 0x86u)) ^ 0xB8D1809D;
  v119 = *(v58 + 4 * (BYTE2(v107) ^ 0x8Fu)) ^ *(v57 + 4 * ((v110 ^ 0x915466E6) >> 24)) ^ *(v61 + 4 * (v112 ^ 2u)) ^ v118 ^ (2 * v118) & 0x98EF72BA;
  v120 = *(v59 + 4 * (BYTE1(v107) ^ 0x5Au)) ^ 0x59DAB1B3;
  v121 = *(v57 + 4 * (HIBYTE(v112) ^ 0x76)) ^ *(v58 + 4 * BYTE2(v113)) ^ *(v61 + 4 * ((v98 >> 19) ^ 0xC2u)) ^ v120 ^ 0x268DF0E6 ^ (2 * v120) & 0x98EF72BA;
  LOWORD(v114) = v115 ^ 0x421;
  BYTE2(v112) = BYTE2(v119) ^ 0x5B;
  v122 = *(v59 + 4 * ((v119 ^ 0x8083) >> 8)) ^ 0x23C9DB8A;
  v123 = *(v58 + 4 * BYTE2(v121)) ^ *(v57 + 4 * (HIBYTE(v115) ^ 0xEB)) ^ *(v61 + 4 * (v117 ^ 0x1Du)) ^ v122 ^ (2 * v122) & 0x98EF72BA;
  v124 = *(v58 + 4 * ((v115 ^ 0x1B9E0421) >> 16)) ^ *(v57 + 4 * ((v117 ^ 0xDC3D4A1D) >> 24));
  v125 = *(v59 + 4 * BYTE1(v121)) ^ 0x39C09EC5;
  v126 = v124 ^ *(v61 + 4 * (v119 ^ 0x83u)) ^ v125 ^ (2 * v125) & 0x98EF72BA;
  v127 = *(v58 + 4 * ((v117 ^ 0xDC3D4A1D) >> 16)) ^ *(v57 + 4 * (HIBYTE(v119) ^ 0xB0));
  v128 = *(v59 + 4 * BYTE1(v114));
  v129 = v127 ^ *(v61 + 4 * v121) ^ (((2 * v128) & 0x98CD1030 ^ v128 & 0xBFCD1935 ^ 0x503BE6CA) & (v128 & 0x4032E6CA ^ 0xB4AB6446 ^ (2 * v128) & 0x22628A) | ((2 * v128) & 0x98CD1030 ^ v128 & 0xBFCD1935) & 0xB441931);
  v130 = *(v59 + 4 * (BYTE1(v117) ^ 0x2Cu)) ^ 0x88EE1824;
  v131 = *(v58 + 4 * BYTE2(v112)) ^ v130 ^ *(v57 + 4 * HIBYTE(v121)) ^ (2 * v130) & 0x98EF72BA;
  v132 = v131 == -746833371;
  LODWORD(v98) = __ROR4__(*(v61 + 4 * v114) ^ 0xA566B347 ^ v131, 25);
  v133 = BYTE2(v129) ^ 0xFA;
  v134 = *(v59 + 4 * ((v129 ^ 0x6DBE) >> 8));
  v135 = v134 ^ 0x5EC0897A;
  v136 = v134 ^ 0x4C408958;
  LODWORD(v98) = v98 ^ 0xBCF3F5C4;
  HIDWORD(v98) = v98;
  v137 = v98 >> 7;
  v138 = *(v59 + 4 * (BYTE1(v137) ^ 0x68u)) ^ 0x1112002C;
  v139 = v138 ^ *(v61 + 4 * (v129 ^ 0xBEu)) ^ (2 * v138) & 0x98EF72BA ^ __ROR4__(__ROR4__(*(v57 + 4 * (HIBYTE(v126) ^ 0xF1)) ^ *(v58 + 4 * (BYTE2(v123) ^ 0xDCu)) ^ 0x806F77EE, 25) ^ 0x593E38E5, 7);
  v140 = *(v59 + 4 * (BYTE1(v123) ^ 0x20u)) ^ 0xFEEE06DD;
  v141 = *(v58 + 4 * (BYTE2(v126) ^ 0x8Eu)) ^ *(v57 + 4 * (HIBYTE(v129) ^ 0xB8)) ^ v140 ^ *(v61 + 4 * ((v98 >> 7) ^ 0xEu)) ^ (2 * v140) & 0x98EF72BA;
  v142 = BYTE1(v126) ^ 0xB;
  v143 = *(v57 + 4 * (HIBYTE(v123) ^ 0xA6)) ^ *(v61 + 4 * (v126 ^ 0x2Fu));
  if (v132)
  {
    v144 = v135;
  }

  else
  {
    v144 = v136;
  }

  v145 = v143 ^ v135 ^ *(v58 + 4 * (BYTE2(v137) ^ 0xB0u)) ^ 0xFA227CA0 ^ (2 * v144) & 0x98EF72BA;
  v146 = *(v59 + 4 * v142) ^ 0x541FF6BA;
  v147 = *(v58 + 4 * v133) ^ *(v61 + 4 * (v123 ^ 0xA8u)) ^ v146 ^ *(v57 + 4 * (HIBYTE(v137) ^ 0x9C)) ^ (2 * v146) & 0x98EF72BA;
  v148 = *(v59 + 4 * (BYTE1(v141) ^ 0x9Du));
  v149 = *(v61 + 4 * (v139 ^ 0x24u)) ^ __ROR4__(((((v148 & 0x2000000 | 0x6CADC5CA) ^ v148 & 0xFDFFFFFF ^ 0xF84BBF2F) << 30) | 0x3FFFFFFF) & ((((v148 & 0x2000000 | 0x6CADC5CA) ^ v148 & 0xFDFFFFFF) >> 2) & 0x131DEE57 ^ 0x65C53A34) ^ __ROR4__(*(v58 + 4 * (BYTE2(v147) ^ 0x3Au)) ^ *(v57 + 4 * HIBYTE(v145)) ^ (v148 & 0x2000000 | 0x6CADC5CA) ^ v148 & 0xFDFFFFFF ^ 0xF84BBF2F, 3) ^ 0xE609C458, 29);
  v150 = *(v59 + 4 * (BYTE1(v147) ^ 0xBCu)) ^ 0x49A43FB9;
  v151 = *(v58 + 4 * BYTE2(v145)) ^ *(v61 + 4 * (v141 ^ 0x26u)) ^ v150 ^ *(v57 + 4 * ((v139 ^ 0xD9E43629) >> 24));
  v152 = *(v59 + 4 * BYTE1(v145)) ^ 0x377BFBED;
  v153 = *(v58 + 4 * ((v139 ^ 0xD9E43629) >> 16)) ^ *(v57 + 4 * (HIBYTE(v141) ^ 0xC9)) ^ *(v61 + 4 * (v147 ^ 0x25u)) ^ v152 ^ (2 * v152) & 0x98EF72BA;
  LODWORD(v155) = __ROR4__(BYTE2(v141) ^ 0x8EE32EC7, 6) ^ 0x87AE0952;
  HIDWORD(v155) = v155;
  v154 = v155 >> 17;
  HIDWORD(v155) = v154 ^ 0x146;
  LODWORD(v155) = v154 ^ 0xFAD66C00;
  v156 = *(v59 + 4 * (BYTE1(v139) ^ 0x50u)) ^ 0x76A25849;
  v157 = *(v58 + 4 * ((v155 >> 9) ^ 0xC61C113A)) ^ *(v57 + 4 * (HIBYTE(v147) ^ 0x83)) ^ *(v61 + 4 * v145) ^ v156 ^ (2 * v156) & 0x98EF72BA;
  v158 = *(v59 + 4 * (BYTE1(v153) ^ 0x7Eu)) ^ 0x4781C390;
  v159 = v151 ^ (2 * v150) & 0x98EF72BA;
  v160 = ((v159 >> 1) & 0x4F ^ 0xE2A0DA2B) & ~(v151 << 31);
  v161 = ((v159 >> 1) & 0x30 | 0x8000100) ^ (v159 >> 1) & 0x30;
  v162 = (v159 >> 1) & 0x4F | 0x500000 | (v151 << 31);
  v163 = *(v58 + 4 * ((v157 ^ 0x21F2EEE8) >> 16)) ^ *(v61 + 4 * ((v151 ^ (2 * v150) & 0xBA) ^ 0xB3u)) ^ v158 ^ (2 * v158) & 0x98EF72BA ^ *(v57 + 4 * (HIBYTE(v149) ^ 0xE1)) ^ ((2 * ((v162 ^ v160 ^ 0x1320202B) & (v161 ^ 0x7371E8FF) | v161)) | ((v162 ^ ~v160) >> 31));
  v164 = *(v59 + 4 * ((v157 ^ 0xEEE8) >> 8)) ^ 0xA296AB62;
  v165 = *(v58 + 4 * (BYTE2(v149) ^ 0x84u)) ^ *(v57 + 4 * (HIBYTE(v159) ^ 0xB8)) ^ *(v61 + 4 * (v153 ^ 0x64u)) ^ v164 ^ (2 * v164) & 0x98EF72BA;
  v166 = *(v59 + 4 * (BYTE1(v149) ^ 0x84u));
  v167 = v166 ^ 0x65903704;
  v168 = v166 & 0x200000;
  if (((2 * v167) & v168) != 0)
  {
    v168 = -v168;
  }

  v169 = *(v58 + 4 * (BYTE2(v159) ^ 0xD6u)) ^ *(v57 + 4 * (HIBYTE(v153) ^ 0xCD)) ^ *(v61 + 4 * (v157 ^ 0xE8u)) ^ v167 & 0xFFDFFFFF ^ (v168 + ((2 * v167) & 0x98EF72BA));
  v170 = *(v59 + 4 * (BYTE1(v159) ^ 0xC6u));
  v171 = *(v58 + 4 * (BYTE2(v153) ^ 0x8Du)) ^ v170 ^ *(v57 + 4 * (HIBYTE(v157) ^ 0xD1)) ^ (2 * v170) & 0x98EF72BA ^ *(v61 + 4 * (v149 ^ 0x92u));
  v172 = *(v59 + 4 * (BYTE1(v169) ^ 0x1Eu));
  v173 = (v172 ^ (1705232069 - (v172 ^ 0x65903704)) ^ 0x33F1C1 ^ (-3404225 - (((v172 ^ 0xAC90B185) + 1399803515) ^ ((v172 ^ 0xBD478007) + 1119387641) ^ ((v172 ^ 0x11E4C043) - 300204099)))) + 1705232069;
  v174 = *(v58 + 4 * (BYTE2(v171) ^ 0x53u)) ^ *(v57 + 4 * ((v163 ^ 0x3220114C) >> 24)) ^ *(v61 + 4 * (v165 ^ 0x84u)) ^ v173 ^ (2 * v173) & 0x98EF72BA;
  v175 = *(v59 + 4 * (BYTE1(v171) ^ 0x46u)) ^ 0x3C3DC4AB;
  v176 = *(v58 + 4 * ((v163 ^ 0x3220114C) >> 16)) ^ *(v57 + 4 * ((v165 ^ 0xEFF62C89) >> 24)) ^ v175 ^ (2 * v175) & 0x98EF72BA ^ *(v61 + 4 * (v169 ^ 0xFAu));
  v177 = *(v59 + 4 * ((v163 ^ 0x114C) >> 8)) ^ 0xBCB53804;
  v178 = *(v58 + 4 * (((v165 ^ 0xEFF62C89) >> 16) ^ 0x6Fu)) ^ *(v61 + 4 * (v171 ^ 0xFDu)) ^ v177 ^ (2 * v177) & 0x98EF72BA;
  v179 = *(v57 + 4 * (HIBYTE(v171) ^ 2));
  v180 = v178 ^ *(v57 + 4 * (HIBYTE(v169) ^ 0xA1));
  v181 = *(v58 + 4 * (BYTE2(v169) ^ 0xCDu));
  v182 = *(v59 + 4 * (BYTE1(v165) ^ 0x4Au)) ^ 0x2E6715CB;
  v183 = v181 ^ v179 ^ *(v61 + 4 * (v163 ^ 0x41u)) ^ v182 ^ (2 * v182) & 0x98EF72BA;
  v184 = *(v31 + 8 * (v33 ^ 0x1599)) - 1624525739;
  v185 = *(v31 + 8 * (v33 ^ 0x1029)) - 2139384443;
  v186 = *(v31 + 8 * (v33 - 709)) - 538332375;
  v187 = *(v31 + 8 * (v33 ^ 0x1CD7)) - 1856313155;
  v188 = v174 ^ 0xB7;
  v189 = ((v174 ^ 0x74D38AB7) >> 16) ^ *(v184 + 4 * (HIBYTE(v176) ^ 0xD9)) ^ *(v185 + 4 * (((v174 ^ 0x74D38AB7) >> 16) ^ 0xA6u));
  v190 = *(v184 + 4 * (HIBYTE(v174) ^ 0xEF));
  v191 = *(v184 + 4 * ((v180 ^ 0x1A6C6B25u) >> 24));
  v192 = *(v184 + 4 * ((HIBYTE(v183) ^ 0x5C) - ((2 * (HIBYTE(v183) ^ 0x5C)) & 0x136) + 155));
  v193 = BYTE2(v183);
  LODWORD(v184) = *(v185 + 4 * (BYTE2(v183) ^ 0xCDu));
  v194 = v189 ^ __ROR4__(*(v186 + 4 * (BYTE1(v183) ^ 0xE1u)), 15);
  v195 = BYTE2(v176);
  v196 = *(v185 + 4 * (BYTE2(v176) ^ 0x3Du));
  v197 = *(v186 + 4 * ((v180 ^ 0x6B25) >> 8));
  v198 = *(v186 + 4 * (BYTE1(v174) ^ 0x10u));
  LODWORD(v186) = *(v186 + 4 * (BYTE1(v176) ^ 0xAEu));
  v199 = *(v187 + 4 * (v176 ^ 0x63u));
  v200 = *(v187 + 4 * (v180 ^ 0xD1u));
  v201 = *(v187 + 4 * (v183 ^ 0x1Fu));
  v202 = *(v187 + 4 * v188);
  v381 = v84 ^ 0xD539E539;
  v382 = v84;
  v203 = v195 ^ v84 ^ 0xD539E539 ^ v191 ^ v196 ^ __ROR4__(v198, 15) ^ v201 ^ (v201 >> 4) ^ (v201 >> 6);
  LODWORD(v187) = v84 ^ v200 ^ (v200 >> 6) ^ (v200 >> 4) ^ __ROR4__(__ROR4__(v194 ^ 0xC5830EFD, 15) ^ 0x99195D11, 17) ^ 0x30F009D1;
  v204 = v84 ^ v202 ^ (v202 >> 6) ^ (v202 >> 4) ^ __ROR4__(__ROR4__(BYTE2(v180) ^ 0x6C ^ *(v185 + 4 * (((v180 ^ 0x1A6C6B25u) >> 16) ^ 0xA6u)) ^ v192 ^ __ROR4__(v186, 15) ^ 0x9389F2AF, 24) ^ 0x828A1344, 8) ^ 0x2E3BC4E3;
  v205 = v190 ^ v84 ^ 0xD539E539 ^ v184 ^ v193 ^ __ROR4__(v197, 15) ^ v199 ^ (v199 >> 4) ^ (v199 >> 6) ^ v203;
  v203 ^= 0xAEABE2B4;
  v206 = v205 ^ v187;
  v207 = v205 ^ v187 ^ 0x55224B8B;
  LODWORD(v186) = v204 ^ v203 ^ v187;
  v208 = v207 ^ v203 ^ v204;
  v209 = v207 ^ v203 ^ v187;
  v210 = *(v31 + 8 * (v33 - 3381)) - 755329735;
  v380 = v33;
  v211 = *(v31 + 8 * (v33 ^ 0x10AB)) - 537396967;
  v212 = *(v31 + 8 * (v33 ^ 0x1511)) - 798222195;
  v213 = *(v31 + 8 * (v33 - 3716)) - 1898873486;
  v214 = *(v211 + 4 * (BYTE2(v186) ^ 0x8Du));
  v215 = *(v212 + 4 * (BYTE1(v208) ^ 0x39u)) ^ (v214 - 757034853) ^ *(v213 + 4 * ((v207 ^ v203 ^ v187) ^ 0x5Eu)) ^ (16 * (v214 - 757034853)) & 0xB8EB6750 ^ (*(v210 + 4 * (HIBYTE(v206) ^ 0x4E)) + (((HIBYTE(v206) ^ 0x77) + 1907807747) ^ HIBYTE(v206) ^ 0x77) - 1549319538) ^ ((BYTE1(v208) ^ 0xE3) - 34201294);
  v216 = *(v211 + 4 * (BYTE2(v208) ^ 0x7Eu)) - 757034853;
  HIDWORD(v217) = ((HIBYTE(v208) ^ 0xC4) + 1907807747) ^ HIBYTE(v208);
  LODWORD(v217) = (HIBYTE(v208) ^ 0xC4) + 1907807747;
  v218 = ((~(v209 >> 7) & 0x64) + (BYTE1(v209) ^ 0xFDF6210D)) ^ *(v212 + 4 * (BYTE1(v209) ^ 0xE5u)) ^ v216 ^ *(v213 + 4 * ((v206 ^ 0x95) + ((2 * v206) & 0x1BE ^ 0xFFFFFED5) + 224)) ^ (16 * v216) & 0xB8EB6750 ^ (*(v210 + 4 * (BYTE3(v186) ^ 0xB9)) + (((BYTE3(v186) ^ 0x80) + 1907807747) ^ BYTE3(v186) ^ 0x80) - 1549319538);
  v219 = *(v211 + 4 * (BYTE2(v209) ^ 0xABu)) - 757034853;
  v220 = *(v212 + 4 * (BYTE1(v206) ^ 0x1Eu)) ^ ((BYTE1(v206) ^ 0xC4) - 34201294) ^ *(v213 + 4 * (v186 ^ 0xE6u)) ^ v219 ^ (*(v210 + 4 * (HIBYTE(v208) ^ 0xFD)) - 1549319538 + (__ROR4__((v217 >> 8) ^ 0x8C01CB6D, 24) ^ 0x1CB6D48)) ^ (16 * v219) & 0xB8EB6750;
  v221 = (((HIBYTE(v209) ^ 0x65) + 1907807747) ^ HIBYTE(v209) ^ 0x65) - 1549319538 + *(v210 + 4 * (HIBYTE(v209) ^ 0x5C));
  v222 = *(v211 + 4 * (BYTE2(v206) ^ 0xFDu)) - 757034853;
  v223 = v221 ^ ((BYTE1(v186) ^ 0xC3) - 34201294) ^ *(v212 + 4 * (BYTE1(v186) ^ 0x19u)) ^ v222 ^ *(v213 + 4 * (v208 ^ 0x5Fu)) ^ (16 * v222) & 0xB8EB6750;
  v224 = *(v211 + 4 * (BYTE2(v218) ^ 0x5Du)) - 757034853;
  v225 = (*(v210 + 4 * (HIBYTE(v215) ^ 0x1E)) + (((HIBYTE(v215) ^ 0x27) + 1907807747) ^ HIBYTE(v215) ^ 0x27) - 1549319538) ^ v224;
  v226 = ((v225 & 0xE9051927 ^ 0x16FFFD5A) & (~v225 | 0xE9051927) | v225 & 0x280) ^ 0x16FFFD5A;
  v227 = v220 ^ 0xCFFD24CE;
  v228 = *(v213 + 4 * (v223 ^ 0x46u)) ^ (((v220 ^ 0x24CE) >> 8) - 34201294) ^ *(v212 + 4 * (((v220 ^ 0x24CE) >> 8) - ((v220 >> 7) & 0x1B4) + 218)) ^ ((-v226 ^ (((16 * v224) & 0xB8EB6750) - (v226 ^ (16 * v224) & 0xB8EB6750)) ^ 0x10F9CD11 ^ (v226 - ((2 * v226) & 0x21F39A22) + 284806417)) + ((16 * v224) & 0xB8EB6750));
  v229 = *(v211 + 4 * (BYTE2(v220) ^ 0x28u)) - 757034853;
  v230 = ((((HIBYTE(v218) ^ 0x72) + 1907807747) ^ HIBYTE(v218) ^ 0x72) - 1549319538 + *(v210 + 4 * (HIBYTE(v218) ^ 0x4B))) ^ v229;
  v231 = *(v213 + 4 * (v215 ^ 0xAFu)) ^ *(v212 + 4 * (BYTE1(v223) ^ 0xB3u)) ^ ((BYTE1(v223) ^ 0x69) - 34201294) ^ (16 * v229) & 0xB8EB6750 ^ ((v230 & 0x2ECDADA3 ^ 0x617FA08C) & (v230 & 0xD132525C ^ 0xFFFFFDBF) | v230 & 0x90005250);
  v232 = *(v212 + 4 * (BYTE1(v215) ^ 0x29u));
  v233 = *(v211 + 4 * (BYTE2(v223) ^ 0x9Du)) - 757034853;
  v234 = v233 ^ *(v213 + 4 * (v218 ^ 0xDFu)) ^ (((HIBYTE(v227) + 1907807747) ^ HIBYTE(v227)) - 1549319538 + *(v210 + 4 * (HIBYTE(v227) ^ 0x39))) ^ (16 * v233) & 0xB8EB6750 ^ ((v232 ^ ((BYTE1(v215) ^ 0xF3) - 34201294 - (v232 ^ ((BYTE1(v215) ^ 0xF3) - ((2 * ((BYTE1(v215) ^ 0xF3) - 34201294)) & 0x7A404522) + 991318979))) ^ 0x3D203291 ^ (-1025520273 - (((v232 ^ 0xC922F1A5) + 920456795) ^ ((v232 ^ 0xDB88F682) + 611780990) ^ ((v232 ^ 0x2F8A35B6) - 797586870)))) + (BYTE1(v215) ^ 0xF3) - 34201294);
  v235 = *(v211 + 4 * (BYTE2(v215) ^ 0xB0u)) - 757034853;
  v236 = ((BYTE1(v218) ^ 0x36) - 34201294) ^ ((((HIBYTE(v223) ^ 0xB6) + 1907807747) ^ HIBYTE(v223) ^ 0xB6) - 1549319538 + *(v210 + 4 * (HIBYTE(v223) ^ 0x8F))) ^ *(v212 + 4 * (BYTE1(v218) ^ 0xECu)) ^ v235 ^ *(v213 + 4 * v227) ^ 0x19EF3230;
  v237 = *(v211 + 4 * (BYTE2(v231) ^ 0xBBu)) - 757034853;
  HIDWORD(v217) = *(v210 + 4 * (HIBYTE(v228) ^ 0xC3)) + (((HIBYTE(v228) ^ 0xFA) + 1907807747) ^ HIBYTE(v228) ^ 0xFA) - 1549319538;
  LODWORD(v217) = HIDWORD(v217);
  v238 = v236 ^ (16 * v235) & 0xB8EB6750;
  v239 = *(v213 + 4 * (v236 ^ (16 * v235) & 0x50)) ^ ((BYTE1(v234) ^ 0x9A) - 34201294) ^ *(v212 + 4 * (BYTE1(v234) ^ 0x40u)) ^ __ROR4__((v217 >> 27) ^ __ROR4__(v237 ^ 0x88049BBA ^ (16 * v237) & 0xB8EB6750, 27) ^ 0x477451B6, 5);
  v240 = *(v211 + 4 * (BYTE2(v234) ^ 0x64u)) - 757034853;
  v241 = *(v212 + 4 * (BYTE1(v238) ^ 0xDAu)) ^ (BYTE1(v238) - 34201294) ^ ((((HIBYTE(v231) ^ 0xEE) + 1907807747) ^ HIBYTE(v231) ^ 0xEE) - 1549319538 + *(v210 + 4 * (HIBYTE(v231) ^ 0xD7))) ^ v240 ^ (16 * v240) & 0xB8EB6750 ^ *(v213 + 4 * (v228 ^ 0xF4u));
  v242 = HIBYTE(v238);
  v243 = ((v236 >> 23) & 6) + (HIBYTE(v238) ^ 0x71B6D603);
  v244 = *(v211 + 4 * BYTE2(v238)) - 757034853;
  v245 = *(v212 + 4 * (BYTE1(v228) ^ 0x48u)) ^ ((BYTE1(v228) ^ 0x92) - 34201294) ^ (*(v210 + 4 * (HIBYTE(v234) ^ 0xD)) + (((HIBYTE(v234) ^ 0x34) + 1907807747) ^ HIBYTE(v234) ^ 0x34) - 1549319538) ^ v244 ^ *(v213 + 4 * (v231 ^ 0x7Du)) ^ (16 * v244) & 0xB8EB6750;
  v246 = *(v211 + 4 * (BYTE2(v228) ^ 0x17u)) - 757034853;
  v247 = ((v243 ^ v242) - 1549319538 + *(v210 + 4 * (v242 ^ 0x39))) ^ ((BYTE1(v231) ^ 0x9D) - 34201294) ^ *(v212 + 4 * (BYTE1(v231) ^ 0x47u)) ^ *(v213 + 4 * (v234 ^ 0xB8u)) ^ v246 ^ (16 * v246) & 0xB8EB6750;
  v248 = *(v211 + 4 * (BYTE2(v241) ^ 0xA9u)) - 757034853;
  v249 = *(v213 + 4 * (v247 ^ 0x69u)) ^ __ROR4__(((((v245 >> 7) & 0x64 ^ 0x20) + (BYTE1(v245) ^ 0x1A7)) << 20) ^ __ROR4__(*(v212 + 4 * (BYTE1(v245) ^ 0x4Fu)) ^ v248 ^ (16 * v248) & 0xB8EB6750 ^ 0xBA87CD87 ^ ((((HIBYTE(v239) ^ 0x41) + 1907807747) ^ HIBYTE(v239) ^ 0x41) - 1549319538 + *(v210 + 4 * (HIBYTE(v239) ^ 0x78))), 12) ^ 0x245634F6, 20);
  v250 = BYTE2(v247) ^ 0xD0;
  v251 = *(v211 + 4 * (BYTE2(v245) ^ 0xB3u)) - 757034853;
  v252 = *(v212 + 4 * (BYTE1(v247) ^ 0x82u)) ^ ((((HIBYTE(v241) ^ 0xF6) + 1907807747) ^ HIBYTE(v241) ^ 0xF6) - 1549319538 + *(v210 + 4 * (HIBYTE(v241) ^ 0xCF))) ^ v251 ^ ((BYTE1(v247) ^ 0x58) - 34201294) ^ (16 * v251) & 0xB8EB6750 ^ *(v213 + 4 * (v239 ^ 0xECu));
  v253 = (v247 >> 29) ^ 0xFFB4A139;
  v247 >>= 24;
  LODWORD(v217) = __ROR4__((((v247 ^ 0xC4) << 27) ^ 0xE7FFFFFF) & v253 ^ __ROR4__((v247 ^ 0xC4) + 1907807747, 5) ^ 0x6F17C603, 27);
  v254 = *(v211 + 4 * (BYTE2(v239) ^ 0x5Bu)) - 757034853;
  v255 = *(v212 + 4 * (BYTE1(v241) ^ 0xA1u)) ^ ((BYTE1(v241) ^ 0x7B) - 34201294) ^ ((v217 ^ 0x146CE791) + *(v210 + 4 * (v247 ^ 0xFD)) - 1549319538) ^ v254 ^ *(v213 + 4 * (v245 ^ 0x95u)) ^ (16 * v254) & 0xB8EB6750;
  LODWORD(v217) = __ROR4__(((((v249 ^ 0xFB846F11) - (v249 ^ 0x20D458D7)) ^ 0xFFFFFFFC) + (v249 ^ 0xFB846F11)) ^ 0x870E6322, 28);
  v256 = v217 ^ 0x52A6EE;
  v257 = *(v211 + 4 * v250) - 757034853;
  v259 = __PAIR64__(v217 ^ 0x52A6EE, __ROR4__(((BYTE1(v239) ^ 0x2D) - 34201294) ^ ((((HIBYTE(v245) ^ 0x1D) + 1907807747) ^ HIBYTE(v245) ^ 0x1D) - 1549319538 + *(v210 + 4 * (HIBYTE(v245) ^ 0x24))) ^ v257 ^ *(v213 + 4 * (v241 ^ 0x53u)) ^ (16 * v257) & 0xB8EB6750 ^ *(v212 + 4 * (BYTE1(v239) ^ 0xF7u)) ^ 0xC4839374, 27));
  v258 = v259 ^ 0x8E1B925F;
  LODWORD(v259) = v256;
  v260 = v259 >> 4;
  v261 = *(v211 + 4 * (BYTE2(v252) ^ 0x87u)) - 757034853;
  HIDWORD(v259) = v258;
  LODWORD(v259) = v258;
  v262 = v259 >> 5;
  v263 = v261 ^ *(v213 + 4 * (v255 ^ 0xBDu)) ^ (16 * v261) & 0xB8EB6750 ^ *(v212 + 4 * (BYTE1(v262) ^ 0x47u)) ^ ((BYTE1(v262) ^ 0x9D) - 34201294) ^ (*(v210 + 4 * (HIBYTE(v260) ^ 0x5E)) + (((HIBYTE(v260) ^ 0x67) + 1907807747) ^ HIBYTE(v260) ^ 0x67) - 1549319538);
  LODWORD(v186) = *(v211 + 4 * (BYTE2(v262) ^ 0x16u));
  v264 = ((((HIBYTE(v252) ^ 0x5A) + 1907807747) ^ HIBYTE(v252) ^ 0x5A) - 1549319538 + *(v210 + 4 * (HIBYTE(v252) ^ 0x63))) ^ ((BYTE1(v255) ^ 0xF9) - 34201294) ^ *(v212 + 4 * (BYTE1(v255) ^ 0x23u)) ^ (16 * (v186 - 757034853)) & 0xB8EB6750 ^ 0x2E739FA5 ^ (v186 - ((2 * (v186 - 757034853)) & 0x26A75A68) - 432783921);
  v265 = *(v213 + 4 * (v260 ^ 0x93u));
  v266 = (-(v265 ^ 0xE29AD242) ^ (v264 - (v265 ^ 0xE29AD242 ^ v264)) ^ 0xB3B3C169 ^ ((v265 ^ 0xE29AD242) - 2 * ((v265 ^ 0xE29AD242) & 0x33B3C179 ^ v265 & 0x10) - 1280065175)) + v264;
  v267 = *(v211 + 4 * (BYTE2(v255) ^ 0x15u)) - 757034853;
  v268 = *(v212 + 4 * (BYTE1(v260) ^ 0x93u)) ^ ((BYTE1(v260) ^ 0x49) - 34201294) ^ ((((HIBYTE(v262) ^ 0x9E) + 1907807747) ^ HIBYTE(v262) ^ 0x9E) - 1549319538 + *(v210 + 4 * (HIBYTE(v262) ^ 0xA7))) ^ *(v213 + 4 * (v252 ^ 0xBFu)) ^ ((-((16 * v267) & 0xB8EB6750) ^ (v267 - ((16 * v267) & 0xB8EB6750 ^ v267)) ^ (((16 * v267) & 0xB8EB6750) - ((32 * v267) & 0x7086C480) + 2051238470) ^ 0x7A436A46) + v267);
  v269 = *(v211 + 4 * (BYTE2(v260) ^ 0xDEu)) - 757034853;
  v270 = ((BYTE1(v252) ^ 0xF0) - 34201294) ^ *(v212 + 4 * (BYTE1(v252) ^ 0x2Au)) ^ ((((HIBYTE(v255) ^ 0x87) + 1907807747) ^ HIBYTE(v255) ^ 0x87) - 1549319538 + *(v210 + 4 * (HIBYTE(v255) ^ 0xBE))) ^ *(v213 + 4 * (((2 * v262) | 0xFFFFFE41) - v262 + 479)) ^ v269 ^ 0x573E246E ^ (16 * v269) & 0xB8EB6750;
  v271 = *(v211 + 4 * BYTE2(v268)) - 757034853;
  v272 = v271 ^ *(v213 + 4 * (v263 ^ 0x2Eu)) ^ (BYTE1(v270) - 34201294) ^ *(v212 + 4 * (BYTE1(v270) ^ 0xDAu)) ^ (16 * v271) & 0xB8EB6750 ^ (*(v210 + 4 * (HIBYTE(v266) ^ 0x4E)) + (HIBYTE(v266) ^ 0x71B6D677 ^ ((~(v266 >> 23) & 6) + (HIBYTE(v266) ^ 0x74))) - 1549319538);
  LODWORD(v186) = *(v211 + 4 * BYTE2(v270)) - 757034853;
  v273 = *(v212 + 4 * (BYTE1(v263) ^ 0x8Bu)) ^ ((BYTE1(v263) ^ 0x51) - 34201294) ^ ((((HIBYTE(v268) ^ 0x9A) + 1907807747) ^ HIBYTE(v268) ^ 0x9A) - 1549319538 + *(v210 + 4 * (HIBYTE(v268) ^ 0xA3))) ^ v186 ^ (16 * v186) & 0xB8EB6750 ^ *(v213 + 4 * (v266 ^ 0x41u));
  v274 = BYTE2(v263) ^ 0x84;
  v275 = *(v211 + 4 * (BYTE2(v266) ^ 0x74u));
  v276 = *(v212 + 4 * (BYTE1(v268) ^ 0xF1u)) ^ ((((HIBYTE(v263) ^ 0xBE) + 1907807747) ^ HIBYTE(v263) ^ 0xBE) - 1549319538 + *(v210 + 4 * (HIBYTE(v263) ^ 0x87))) ^ *(v213 + 4 * v270) ^ (v275 - 757034853) ^ ((BYTE1(v268) ^ 0x2B) - 34201294) ^ (16 * (v275 - 757034853)) & 0xB8EB6750 ^ 0xA391B993;
  v277 = *(v211 + 4 * v274) - 757034853;
  v278 = (((HIBYTE(v270) + 1907807747) ^ HIBYTE(v270)) - 1549319538 + *(v210 + 4 * (HIBYTE(v270) ^ 0x39))) ^ ((BYTE1(v266) ^ 0x84) - 34201294) ^ v277 ^ *(v213 + 4 * (v268 ^ 0xCBu)) ^ *(v212 + 4 * (BYTE1(v266) ^ 0x5Eu)) ^ (16 * v277) & 0xB8EB6750;
  v279 = BYTE1(v273) ^ 0x37;
  v280 = *(v212 + 4 * (BYTE1(v273) ^ 0xEDu));
  v281 = ((34201294 - v279) ^ (v279 - ((2 * v279 - 68402588) & 0x800666) + 2118001765) ^ 0x80480333 ^ ((v280 ^ 0x3D203291) - ((v279 - ((2 * v279 - 68402588) & 0x7A404522) + 991318979) ^ v280))) + (v280 ^ 0x3D203291);
  v282 = (((HIBYTE(v272) ^ 0x8A) + 1907807747) ^ HIBYTE(v272) ^ 0x8A) - 1549319538 + *(v210 + 4 * (HIBYTE(v272) ^ 0xB3));
  v283 = *(v211 + 4 * (BYTE2(v273) ^ 0xBFu)) - 757034853;
  v284 = (16 * v283) & 0xB8EB6750 ^ v283;
  v285 = *(v211 + 4 * ((BYTE2(v272) ^ 0xCC) + ((v272 >> 15) & 0x1AA ^ 0xFFFFFE77) + 214)) - 757034853;
  v286 = __ROR4__((((HIBYTE(v276) + 1907807747) ^ HIBYTE(v276)) - 1549319538 + *(v210 + 4 * (HIBYTE(v276) ^ 0x39))) ^ v285 ^ *(v213 + 4 * ((v278 ^ 0xCD) + ((2 * v278) & 0x1BE ^ 0xFFFFFE65) + 224)) ^ (16 * v285) & 0xB8EB6750 ^ v281 ^ 0xDB1EF19B, 10) ^ 0xBCF30F3A;
  v287 = v284 & 0x100;
  if ((v284 & 0x100 & v282) != 0)
  {
    v287 = -v287;
  }

  v288 = v287 + v282;
  v289 = *(v212 + 4 * (BYTE1(v278) ^ 0x71u));
  v290 = (v289 << 21) ^ 0x973C79F6;
  v289 >>= 11;
  v291 = (v289 & 0x3FFFE ^ 0xFFFC59F0) & v290 | v289 & 0x8609;
  v293 = __PAIR64__(v286, __ROR4__((((v278 >> 3) & 0x1FE0 ^ 0x1560) - 1094441377) ^ __ROR4__(v291 & 0x6D488D73 ^ 0xAF1357B1 ^ (v291 ^ 0x12A30208) & (v289 & 0x1F0000 ^ 0x92B5728C), 16) ^ 0xB9D9D76E, 5));
  v292 = v284 & 0xFFFFFEFF ^ *(v213 + 4 * v276) ^ v288 ^ v293;
  v294 = HIBYTE(v278) ^ 0xCC;
  v295 = *(v211 + 4 * (BYTE2(v278) ^ 0xDAu)) - 757034853;
  v296 = ((((HIBYTE(v273) ^ 0xFD) + 1907807747) ^ HIBYTE(v273) ^ 0xFD) - 1549319538 + *(v210 + 4 * (HIBYTE(v273) ^ 0xC4))) ^ (BYTE1(v276) - 34201294) ^ v295 ^ *(v213 + 4 * (v272 ^ 8u)) ^ *(v212 + 4 * (BYTE1(v276) ^ 0xDAu)) ^ (16 * v295) & 0xB8EB6750;
  v297 = *(v211 + 4 * BYTE2(v276)) - 757034853;
  v298 = BYTE1(v272);
  v299 = (((v294 + 1907807747) ^ v294) - 1549319538 + *(v210 + 4 * (((v294 - (HIBYTE(v278) ^ 0xF5)) ^ 0xFFFFFFFE) + v294))) ^ ((v298 ^ 0x25) - 34201294) ^ *(v212 + 4 * (v298 ^ 0xFFu)) ^ v297 ^ *(v213 + 4 * (v273 ^ 0x47u)) ^ (16 * v297) & 0xB8EB6750;
  v300 = ((((v299 ^ 0xCFFFC320) >> (((v298 ^ 0x25) + 50) & 0x18)) - ((2 * ((v299 ^ 0xCFFFC320) >> (((v298 ^ 0x25) + 50) & 0x18))) & 0xD72653B8) + 1804806620) ^ 0x6B9329DC) >> (((v298 ^ 0x25) + 50) & 0x18 ^ 0x18);
  LODWORD(v293) = v286;
  v301 = v293 >> 22;
  v302 = *(v211 + 4 * (BYTE2(v292) ^ 0xBAu)) - 757034853;
  v303 = ((BYTE1(v296) ^ 0x28) - 34201294) ^ *(v212 + 4 * (BYTE1(v296) ^ 0xF2u)) ^ *(v213 + 4 * ~v299) ^ v302 ^ (*(v210 + 4 * (HIBYTE(v301) ^ 0x6C)) + (((HIBYTE(v301) ^ 0x55) + 1907807747) ^ HIBYTE(v301) ^ 0x55) - 1549319538) ^ (16 * v302) & 0xB8EB6750;
  v304 = *(v211 + 4 * (BYTE2(v296) ^ 0xD9u)) - 757034853;
  v305 = v304 ^ *(v212 + 4 * (BYTE1(v299) ^ 0x19u)) ^ *(v213 + 4 * ((v293 >> 22) ^ 0x1Cu)) ^ ((BYTE1(v299) ^ 0xC3) - 34201294) ^ (*(v210 + 4 * (HIBYTE(v292) ^ 0xF1)) + (((HIBYTE(v292) ^ 0xC8) + 1907807747) ^ HIBYTE(v292) ^ 0xC8) - 1549319538) ^ (16 * v304) & 0xB8EB6750;
  v306 = *(v211 + 4 * (BYTE2(v299) ^ 0x2Au)) - 757034853;
  v307 = ((((HIBYTE(v296) ^ 0x39) + 1907807747) ^ HIBYTE(v296) ^ 0x39) - 1549319538 + *(v210 + 4 * HIBYTE(v296))) ^ ((BYTE1(v301) ^ 0xF4) - 34201294) ^ v306 ^ *(v212 + 4 * (BYTE1(v301) ^ 0x2Eu)) ^ *(v213 + 4 * (v292 ^ 0xA6u)) ^ (16 * v306) & 0xB8EB6750;
  v308 = (v300 ^ 0x71B6D603) + 2 * (v300 & 3);
  v309 = *(v211 + 4 * (BYTE2(v301) ^ 0x5Du)) - 757034853;
  v310 = __ROR4__(((BYTE1(v292) ^ 0x3F) - 34201294) ^ *(v212 + 4 * (BYTE1(v292) ^ 0xE5u)) ^ v309 ^ *(v213 + 4 * (v296 ^ 0xC3u)) ^ (16 * v309) & 0xB8EB6750 ^ 0x342035CE ^ (*(v210 + 4 * (v300 ^ 0x39u)) - 1549319538 + (v300 ^ 0x90B9BBC2 ^ (v308 - ((2 * v308) & 0x21612784) - 1866875966))), 2) ^ 0xF9C6CADF;
  v311 = BYTE2(v305) ^ 0x61;
  v312 = v311 >= 0xA3;
  if (v311 >= 0xA3)
  {
    v311 -= 163;
  }

  v313 = v303 ^ 0xD529332C;
  v314 = (BYTE2(v305) ^ 0x61) + 93;
  if (!v312)
  {
    v314 = BYTE2(v305) ^ 0x61;
  }

  if (v311)
  {
    v315 = 0;
  }

  else
  {
    v315 = v314;
  }

  HIDWORD(v317) = v310;
  LODWORD(v317) = v310;
  v316 = v317 >> 30;
  v318 = (v317 >> 30) ^ 0x59;
  v319 = *(v212 + 4 * (BYTE1(v307) ^ 0xF8u));
  v132 = (v319 & 0x40000) == 0;
  v320 = v319 ^ 0x3D203291;
  if (v132)
  {
    v321 = 0x40000;
  }

  else
  {
    v321 = -262144;
  }

  v322 = *(v211 + 4 * (((BYTE2(v305) ^ 0x61) - v315) ^ 0xD5u)) - 757034853;
  v323 = __ROR4__((((HIBYTE(v313) + 1907807747) ^ HIBYTE(v313)) - 1549319538 + *(v210 + 4 * (((v303 ^ 0xD529332C) >> 24) ^ 0x39))) ^ *(v213 + 4 * v318) ^ v322 ^ ((BYTE1(v307) ^ 0x22) + 502669618) & 0x15B023FF ^ (16 * v322) & 0xB8EB6750 ^ (v321 + v320) ^ 0x960B7362, 24) ^ 0xEC9D05B8;
  v324 = (((HIBYTE(v305) ^ 0x92) + 1907807747) ^ HIBYTE(v305) ^ 0x92) - 1549319538 + *(v210 + 4 * (HIBYTE(v305) ^ 0xAB));
  v325 = *(v211 + 4 * (BYTE2(v316) ^ 0x4Bu));
  v326 = ((((HIBYTE(v307) ^ 0x80) + 1907807747) ^ HIBYTE(v307) ^ 0x80) - 1549319538 + *(v210 + 4 * (HIBYTE(v307) ^ 0xB9))) ^ *(v212 + 4 * (BYTE1(v313) ^ 0xDAu)) ^ (16 * (v325 - 757034853)) & 0xB8EB6750 ^ 0x4FDC835C ^ (v325 - ((2 * (v325 - 757034853)) & 0xE5F9639A) + 1172128360);
  if ((v326 & 0x1000000) != 0)
  {
    v327 = -16777216;
  }

  else
  {
    v327 = 0x1000000;
  }

  v328 = (v327 + v326) ^ (BYTE1(v313) - 34201294) & 0xFCFFFFFF;
  v329 = *(v213 + 4 * (v305 ^ 0xB9u)) ^ 0xE29AD242;
  v330 = v329 & 0x40;
  if ((v328 & v329 & 0x40) != 0)
  {
    v330 = -v330;
  }

  v331 = (v330 + v328) ^ v329 & 0xFFFFFFBF;
  v332 = *(v210 + 4 * (HIBYTE(v316) ^ 0x2B)) + (((HIBYTE(v316) ^ 0x12) + 1907807747) ^ HIBYTE(v316) ^ 0x12);
  v333 = *(v211 + 4 * (BYTE2(v307) ^ 0x63u)) - 757034853;
  v334 = *(v211 + 4 * (BYTE2(v303) ^ 0xFCu)) - 757034853;
  v335 = BYTE1(v305);
  v336 = v335 ^ 0x90;
  v337 = *(v212 + 4 * (BYTE1(v316) ^ 0xADu));
  v338 = *(v212 + 4 * (v335 ^ 0x4Au));
  v339 = v336 - 34201294;
  v340 = v324 ^ v333 ^ *(v213 + 4 * v313) ^ (16 * v333) & 0xB8EB6750 ^ v337 ^ 0x915B6632 ^ (((2 * (((2 * (v316 >> 8)) & 0x64 ^ 0x64) & (v316 >> 8) ^ (2 * (v316 >> 8)) & 0x44)) ^ 0x88) + (BYTE1(v316) ^ 0xFDF62121 ^ (2 * (v316 >> 8)) & 0x64));
  HIDWORD(v342) = v323;
  LODWORD(v342) = v323;
  v341 = v342 >> 8;
  v343 = v338 ^ v339 ^ *(v213 + 4 * (v307 ^ 0x64u)) ^ (((1549319538 - v332) ^ (((16 * v334) & 0xB8EB6750 ^ v334) - ((16 * v334) & 0xB8EB6750 ^ v334 ^ (v332 - 1549319538))) ^ 0xCC0D6E1C ^ (v332 - 1549319538 - ((2 * (v332 - 1549319538)) & 0x981ADC38) - 871535076)) + ((16 * v334) & 0xB8EB6750 ^ v334));
  v344 = (v341 ^ 0x73ADA44) >> (v316 & 8) >> (v316 & 8 ^ 8);
  v345 = *(&off_1010A0B50 + (v380 ^ 0x1DF6)) - 613794094;
  v346 = *(&off_1010A0B50 + v380 - 3763) - 1488785463;
  v347 = *&v346[4 * BYTE2(v340)] ^ 0x434079A9;
  v348 = *(&off_1010A0B50 + v380 - 1213) - 572833423;
  LOWORD(v338) = *&v348[2 * (((v331 ^ 0x890E) >> 8) ^ 0x3D)] + (((v331 ^ 0x890E) >> 8) ^ 0xDDA);
  v349 = *(&off_1010A0B50 + v380 - 2853) - 1844058167;
  v350 = *&v346[4 * (BYTE2(v331) ^ 0x2A)] ^ 0x560D8E05;
  v351 = BYTE1(v323) ^ 0x5DLL;
  v352 = *&v346[4 * (BYTE2(v343) ^ 0xFC)] ^ 0x5A41580D;
  v353 = *&v345[4 * ((v331 ^ 0xC4B8890E) >> 24)];
  v354 = *&v345[4 * (HIBYTE(v343) ^ 0x51)];
  LOWORD(v332) = (v349[v340 ^ 0x19] - 87) ^ (*&v348[2 * (v344 ^ 0x3D)] - (v344 ^ 0xF225) - 2080);
  v355 = *&v345[4 * (HIBYTE(v341) ^ 0x4D)] + 189026327;
  LODWORD(v345) = *&v345[4 * HIBYTE(v340)] + 189026327;
  LODWORD(v346) = *&v346[4 * (BYTE2(v341) ^ 0xA8)] ^ 0x30505530;
  LOBYTE(v344) = v349[v331 ^ 0x17];
  v356 = (v353 + 189026327) ^ ((v353 + 189026327) >> 5) ^ ((v353 + 189026327) >> 3) ^ v352 ^ (16 * v352) ^ (v352 << 6) ^ v332 ^ 0x8CB96DE3;
  v357 = (v354 + 189026327) ^ ((v354 + 189026327) >> 5) ^ ((v354 + 189026327) >> 3) ^ v346 ^ (16 * v346) ^ (v346 << 6) ^ (*&v348[2 * (BYTE1(v340) ^ 0x3D)] - (BYTE1(v340) ^ -BYTE1(v340) ^ (-3547 - (BYTE1(v340) ^ 0xF225))) + 1467) ^ (v344 - 87);
  v358 = v345 ^ (v345 >> 5) ^ (v345 >> 3) ^ v350 ^ (16 * v350) ^ (v350 << 6) ^ (v349[v351] - 87) ^ (*&v348[2 * (((v343 ^ 0x7486) >> 8) ^ 0x3D)] + (((v343 ^ 0x7486) >> 8) ^ 0xDDA) - 2079) ^ v356;
  v359 = v355 ^ (v355 >> 5) ^ (v355 >> 3) ^ v347 ^ (16 * v347) ^ (v347 << 6) ^ (v349[(v343 ^ 0x86) - ((2 * v343) & 0x32) + 25] - 87) ^ (v338 - 2079) ^ v358;
  v360 = (-(v358 ^ 0x2CE5F98D) ^ ((v357 ^ 0x17F585F3) - (v357 ^ 0x17F585F3 ^ v358 ^ 0x2CE5F98D)) ^ 0x7FA2F20C ^ ((v358 ^ 0x2CE5F98D) - ((2 * (v358 ^ 0x2CE5F98D)) & 0xFF45E418) + 2141385228)) + (v357 ^ 0x17F585F3);
  HIDWORD(v342) = v359 ^ v383;
  LODWORD(v342) = v359 ^ v381;
  v361 = v360 ^ v382;
  v362 = v357 ^ 0xF189CE65 ^ v359 ^ v381;
  v363 = v362 ^ v356;
  v364 = v362 ^ v360;
  v365 = *(&off_1010A0B50 + (v380 ^ 0x1370)) - 1347249818;
  v366 = ((v362 ^ v356) ^ 0xF8) - ((2 * ((v362 ^ v356) ^ 0xF8)) & 0x8E);
  v367 = v365[BYTE1(v364) ^ 0xE9];
  LOBYTE(v367) = v367 ^ (v367 >> 4) ^ (v367 >> 2);
  v384[11] = ((v367 & 0x1D ^ 0x71) & (v367 & 0xE2 ^ 0x9D) | v367 & 0x82) ^ 0xF;
  v368 = *(&off_1010A0B50 + (v380 ^ 0x1F04)) - 1938837774;
  v384[6] = v368[v366 + 71] ^ 0x79;
  v369 = *(&off_1010A0B50 + v380 - 3386) - 163409654;
  LOBYTE(v367) = v369[HIBYTE(v361) ^ 0xA7];
  HIDWORD(v342) = (v342 >> 5) ^ 0x45489BED;
  LODWORD(v342) = HIDWORD(v342);
  v370 = v342 >> 27;
  v384[8] = ((v367 & 0x75 ^ 0xE4) & (v367 | 0x75) | v367 & 0xA) ^ 0x2A;
  v384[13] = v369[HIBYTE(v370) ^ 0xBFLL] ^ 0x4E;
  LOBYTE(v367) = v365[(((v342 >> 27) ^ 0x5A95) >> 8) ^ 0x85];
  v371 = (v367 ^ 7) + ((2 * v367) & 0xCF ^ 0xC0) + ((2 * v367) & 0xCF ^ 0x3F) + 1;
  v372 = v371 >> 2;
  v373 = v372 ^ (v371 >> 4);
  if ((v372 & v371 & 0x20) != 0)
  {
    v374 = -(v371 & 0x20);
  }

  else
  {
    LOBYTE(v374) = v371 & 0x20;
  }

  v384[3] = v371 & 0xDF ^ (v374 + v373) ^ 0x18;
  v375 = v365[BYTE1(v363) ^ 0x78];
  v384[10] = v375 ^ (v375 >> 4) ^ (v375 >> 2) ^ 0x1E;
  v376 = v365[BYTE1(v361) ^ 0x2CLL];
  v384[4] = v376 ^ 0x10 ^ (v376 >> 2) ^ ((v376 ^ 0x10) >> 4) ^ 0xF;
  v377 = *(&off_1010A0B50 + v380 - 1995) - 1197322767;
  v384[5] = v377[BYTE2(v361) ^ 0x9ELL] ^ 5;
  v384[9] = ((v368[v361 ^ 0xA5] & 0xD6 ^ 0x34) & (v368[v361 ^ 0xA5] & 0x29 ^ 0xFE) | v368[v361 ^ 0xA5] & 9) ^ 0x4D;
  v384[15] = v377[BYTE2(v364) ^ 0x8FLL] ^ 5;
  *v384 = ((((v364 ^ 0xB8EF6CA7) >> 24) ^ 0x7A) + 92 + (((v364 ^ 0xB8EF6CA7) >> 24) ^ 0x7A) - 2 * ((((v364 ^ 0xB8EF6CA7) >> 24) ^ 0x7A) + 92)) ^ 0xEA ^ v369[((v364 ^ 0xB8EF6CA7) >> 24) ^ 0x48];
  v378 = ((v363 >> 15) & 0x54 ^ 0xFFFFFFFB) + (BYTE2(v363) ^ 0xD3);
  v384[1] = v368[v364 ^ 0xA7] ^ 0x79;
  v384[7] = v377[v378 - ((2 * v378 + 86) & 0x94) + 117] ^ 5;
  v384[12] = v369[HIBYTE(v363) ^ 0x20] ^ 0x4E;
  v384[14] = v377[BYTE2(v370) ^ 0xE0] ^ 5;
  v384[2] = v368[v370 ^ 0x95] ^ 0x79;
  return (*(v385 + 8 * v380))(a1);
}

uint64_t sub_1009CEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 864);
  *(v9 + 528) = v10;
  return (*(a8 + 8 * (((v10 == 0) * (((v8 - 23373) ^ 0x4F02) - 576)) ^ v8)))();
}

uint64_t sub_1009CEEB0@<X0>(int a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v16 = v12 + ((v7 ^ v15) ^ v10) * v11;
  LOBYTE(v16) = *(a5 + v16 - (((v16 * v13) >> 32) >> 4) * a1);
  *(a6 + 4 * v7) = a7 ^ (a2 ^ v16 ^ (a3 | (v16 << 6)) ^ (4 * (a2 ^ v16)));
  return (*(v14 + 8 * (((v9 != 0) * a4) | v8)))();
}

void sub_1009CF194(void *a1)
{
  v3 = *a1 == 0x217E172EFA1E81CLL || a1[3] == 0;
  v1 = 17902189 * (((a1 | 0xE5FEA108) - (a1 & 0xE5FEA108)) ^ 0x6BB1B718);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1009CF2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(v10 + ((v11 ^ 0xFAu) & *(v13 - 234))) % (v8 - 1801985797);
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  return (*(v12 + 8 * (v11 ^ (2 * (v14 > 7)))))(a1, v15, a3, a4, a5, a6, a8 + (((v11 - 23443) | 0x1190) ^ 0xB4E45A61) + v9 + 24, v15);
}

uint64_t sub_1009CF408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = STACK[0x208];
  v10 = (a8 ^ (STACK[0x208] - 28262) ^ 0x309FC010) & (2 * (a8 & 0x3ADFFC88)) ^ a8 & 0x3ADFFC88;
  v11 = ((STACK[0x208] + 2016229419) ^ (2 * (a8 ^ 0x86C90D3D))) & (a8 ^ 0x86C90D3D) ^ (2 * (a8 ^ 0x86C90D3D)) & 0xBC16F1B4;
  v12 = v11 ^ 0x84121095;
  v13 = (v11 ^ 0x3804E0B5) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0xF05BC6D4) & v12 ^ (4 * v12) & 0xBC16F1B4;
  v15 = (v14 ^ 0xB012C080) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0xC043121)) ^ 0xC16F1B50) & (v14 ^ 0xC043121) ^ (16 * (v14 ^ 0xC043121)) & 0xBC16F190;
  v17 = LOBYTE(STACK[0x483]);
  STACK[0x348] = a8;
  v18 = a8 ^ (2 * ((((v16 ^ 0x3C10E0A5) << 8) & 0x3C160000 ^ 0x14100000 ^ (((v16 ^ 0x3C10E0A5) << 8) ^ 0x16F10000) & (v16 ^ 0x3C10E0A5)) & (((v16 ^ 0x80061100) & (v15 << 8) ^ v15) << 16) ^ (v16 ^ 0x80061100) & (v15 << 8) ^ v15));
  v19 = ((v18 ^ 0x92A9BC0D) + 1107039637) ^ ((v18 ^ 0xF31EB905) + 541790365) ^ ((v18 ^ 0x5B68F980) - 2009247718);
  v21 = a8 == 0x3CE25E0EC520035FLL || v19 + v17 % (-376810246 - v19) == -376810246;
  return (*(v8 + 8 * ((81 * v21) ^ v9)))();
}

uint64_t sub_1009CF5EC@<X0>(int a1@<W7>, uint64_t a2@<X8>)
{
  STACK[0x3D8] = &STACK[0x570] + a2;
  STACK[0x418] = a2 + 432;
  LODWORD(STACK[0x4F4]) = v5;
  STACK[0x4E0] = v3;
  LODWORD(STACK[0x52C]) = -2068518553;
  LODWORD(STACK[0x3F4]) = a1;
  STACK[0x498] = 0;
  LODWORD(STACK[0x4B4]) = a1;
  LODWORD(STACK[0x374]) = 315866173;
  *(&STACK[0x570] + a2) = 587691322;
  LODWORD(STACK[0x2E8]) = 205 * (v2 ^ 0x60A5AC31) + v4 + 844822547;
  LODWORD(STACK[0x340]) = v4 + 170054310;
  LODWORD(STACK[0x348]) = v4 - 1948925638;
  LODWORD(STACK[0x2D8]) = v4 - 1101487451;
  LODWORD(STACK[0x2E0]) = v4 + 1956212658;
  return (*(v6 + 8 * (v2 ^ 0x60A5D335 ^ (33140 * (v2 > 0x75B4F374)))))();
}

uint64_t sub_1009CF748@<X0>(int a1@<W3>, int a2@<W4>, _DWORD *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v28 = (*(a23 + 8) + (1487 * (a2 ^ 0x87A0u) - 16146) * a1 % *(a23 + 32));
  v29 = *v28;
  LODWORD(v28) = 1864610357 * ((*(*v23 + (*a3 & 0x72D7ACF8)) ^ v28) & 0x7FFFFFFF);
  v30 = 1864610357 * (v28 ^ (v28 >> 16));
  return (*(v27 + 8 * a2))((v29 ^ *(v24 + (v30 >> 24)) ^ *((v30 >> 24) + v26 + 2) ^ *((v30 >> 24) + v25 + 4) ^ v30 ^ (-97 * BYTE3(v30)) ^ 0x77) % 0xDu);
}

uint64_t sub_1009CF818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v33 = 634647737 * ((((v32 - 144) | 0xEC34F2FF) + (~(v32 - 144) | 0x13CB0D00)) ^ 0x81A2DD02);
  *(v32 - 144) = &a28;
  *(v32 - 136) = v33 ^ 0x3E21593E;
  *(v32 - 132) = (v30 + 2100) ^ v33;
  (*(v28 + 8 * (v30 + 30532)))(v32 - 144);
  *(v32 - 136) = v30 + 1112314453 * ((((v32 - 144) | 0x9EC82C9B) - ((v32 - 144) & 0x9EC82C98)) ^ 0x719E0642) + 13672;
  *(v32 - 112) = v31;
  *(v32 - 104) = v29;
  *(v32 - 128) = &a18;
  *(v32 - 120) = &a28;
  *(v32 - 144) = &a18;
  v34 = (*(v28 + 8 * (v30 + 30467)))(v32 - 144);
  return (*(v28 + 8 * v30))(v34);
}

uint64_t sub_1009CF908@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 24) = v4;
  *(v3[3] + 32) = v3[4];
  *(a1 + 8) += (v1 - 15883) - 0x3CE25E0EC5202F06 + v3[1];
  return (*(v5 + 8 * (v1 - 1996)))();
}

uint64_t sub_1009CFA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v16 = a5 + a6;
  v17 = a5 + a6 + 9;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = (0x296E95066F186A7ELL - v18) & v15 | (v18 - 0x296E95066F186A7FLL) & v8;
  v20 = v19 ^ v9;
  v21 = v19 ^ v10;
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x14BA074A2F986FE5;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x2C378843F9A46E98;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = ((v11 & (2 * (v26 + v25))) - (v26 + v25) + v12) ^ v13;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x82B08017BF43C069;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = a5 - 1;
  v33 = ((v7 | (2 * (v30 + v31))) - (v30 + v31) + a2) ^ a3;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v14;
  *(v16 + 9) = (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ 0x9B1C7427651E0F18) >> (8 * (v17 & 7u))) ^ *(v6 + v32);
  return (*(a1 + 8 * ((30 * (v32 != 0)) ^ a4)))();
}

uint64_t sub_1009CFB44()
{
  v4 = *(v0 + 8);
  *(v3 - 256) = LODWORD(STACK[0x578]) ^ (906386353 * ((2 * (v1 & 0x7A908300) - v1 + 91192568) ^ 0x346EB1DC));
  *(v3 - 248) = v4;
  v5 = (*(v2 + 8 * LODWORD(STACK[0x574])))(v3 - 256);
  return (*(v2 + 8 * (((*(v0 + 32) == 244187688) * LODWORD(STACK[0x570])) ^ 0x7974u)))(v5);
}

uint64_t sub_1009CFCC8()
{
  v7 = v6 + v3;
  v8 = (((v4 + 8238) | 0x818) ^ 0x4813) & (v3 + 15);
  v9 = v0 - v3 + v8 + 1;
  v10 = v0 + v8 + 1;
  v11 = v8 + v2 + (((v4 + 1094790442) | 0x82862200) ^ 0xC3C76F08) - v3;
  v12 = v8 + v2 + 8;
  v13 = v8 + v1 + 3;
  v15 = v12 > v6 && v11 < v7;
  v17 = v10 > v6 && v9 < v7 || v15;
  if (v13 <= v6 || v13 - v3 >= v7)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1;
  }

  return (*(v5 + 8 * ((60 * (v19 ^ 1)) ^ v4)))();
}

uint64_t sub_1009CFDB4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v13 = v8;
  v14 = STACK[0xE88];
  LODWORD(STACK[0xE28]) = ((a7 ^ LODWORD(STACK[0xCA8]) ^ LODWORD(STACK[0xE88])) - (-LODWORD(STACK[0xD00]) ^ 0x54689595 ^ v11 ^ (v8 - ((2 * v8) & 0xA8D12B2A) + 1416140181))) ^ a6;
  v15 = (((v12 ^ 0x9357472C) + 1099497350) ^ ((v12 ^ 0xD7AC0191) + 91470137) ^ ((v12 ^ 0x44FB46BD) - 1775960555)) - a1 + 1818936510;
  v16 = (v15 ^ 0x9A214051) & (2 * (v15 & 0xC0B58298)) ^ v15 & 0xC0B58298;
  v17 = ((2 * (v15 ^ 0x1A4B4561)) ^ 0xB5FD8FF2) & (v15 ^ 0x1A4B4561) ^ (2 * (v15 ^ 0x1A4B4561)) & 0xDAFEC7F8;
  v18 = v17 ^ 0x4A024009;
  v19 = (v17 ^ 0xFC06E0) & (4 * v16) ^ v16;
  v20 = ((4 * v18) ^ 0x6BFB1FE4) & v18 ^ (4 * v18) & 0xDAFEC7F8;
  v21 = (v20 ^ 0x4AFA07E0) & (16 * v19) ^ v19;
  v22 = ((16 * (v20 ^ 0x9004C019)) ^ 0xAFEC7F90) & (v20 ^ 0x9004C019) ^ (16 * (v20 ^ 0x9004C019)) & 0xDAFEC7D0;
  v23 = v21 ^ 0xDAFEC7F9 ^ (v22 ^ 0x8AEC4700) & (v21 << 8);
  v24 = (v23 << 16) & 0x5AFE0000 ^ v23 ^ ((v23 << 16) ^ 0x47F90000) & (((v22 ^ 0x50128069) << 8) & 0x5AFE0000 ^ (((v22 ^ 0x50128069) << 8) ^ 0x7EC70000) & (v22 ^ 0x50128069) ^ 0x380000);
  v25 = a6 + a1 + v12;
  v26 = -1105643485 - (((LODWORD(STACK[0xC98]) ^ 0xEDB9DE31) + 306586063) ^ ((LODWORD(STACK[0xC98]) ^ 0x3B9C4B1E) - 1000098590) ^ ((LODWORD(STACK[0xC98]) ^ 0x97C352F2) + 1748806926));
  v27 = v10 + v9 + a8;
  v28 = STACK[0xC80];
  LODWORD(STACK[0xE00]) = v27 ^ ((LODWORD(STACK[0xC80]) ^ 0xEFB412FC ^ v26 ^ (v14 + 1345988398)) - (v11 + 1345988398)) ^ ((LODWORD(STACK[0xC80]) ^ 0xEFB412FC ^ v26 ^ (a7 + 1345988398)) - (v13 + 1345988398)) ^ 0x26C19A52;
  v29 = v27 - (v13 + 1345988398);
  v30 = (a8 - v10) ^ (v11 + 1345988398) ^ 0xBBFA7A86 ^ (v29 - ((2 * v29) & 0x77F4F50C) - 1141212538);
  v31 = v30 + v29;
  LODWORD(STACK[0xE68]) = ((v28 ^ (v14 + 1345988398) ^ 0xC0734785 ^ (a7 - ((2 * (a7 + 1345988398)) & 0x5F8EAAF2) - 2147386201)) - (v26 ^ (v11 + 1345988398) ^ 0x828E23E0 ^ (v13 - ((2 * (v13 + 1345988398)) & 0x51C47C0) - 758625522))) ^ v25;
  v32 = v25 - (a7 + 1345988398);
  v33 = (v14 + 1345988398) ^ v15 ^ (v32 - ((2 * v32) & 0xDAA601A6) - 313327405) ^ (2 * v24) ^ 0x1DEB0DB9;
  v34 = v33 + v32;
  v35 = LODWORD(STACK[0xCC8]) ^ 0xA4B52F2 ^ (v14 + 675357352);
  v36 = a7 - v33;
  v37 = v13 - v30;
  v38 = v13 - v30 + 2083940453;
  v39 = v35 ^ (-2113119643 - LODWORD(STACK[0xCE8]) - ((2 * LODWORD(STACK[0xC68])) & 0x418B4CA));
  v40 = (LODWORD(STACK[0xC68]) ^ LODWORD(STACK[0xCC8]) ^ 0x88470897 ^ (v36 + 2083940453)) - v38;
  LODWORD(STACK[0xE70]) = (((v36 - ((2 * (v36 + 2083940453)) & 0x418B4CA) - 29179190) ^ v35) - (LODWORD(STACK[0xC68]) ^ (v11 + 675357352) ^ 0xD2A5450A ^ (v37 - ((2 * v38) & 0xA54A8A14) + 1323019631))) ^ v34;
  v41 = v36 + 2083940453 + v34;
  v42 = v41 + v14 + 675357352;
  LODWORD(STACK[0xDE8]) = v31 ^ (v39 - (v11 + 675357352)) ^ v40;
  v43 = -(v34 + 2083940453);
  v44 = v38 + v31;
  v45 = -LODWORD(STACK[0xCB0]);
  v46 = v44 + v11 + 675357352;
  v47 = a7 - v34 - 2147317834;
  v48 = v13 - v31 - 806270506;
  v43 -= 1906021685;
  v49 = v37 - v44 - 1906021685;
  v44 += 548084688;
  v50 = v45 ^ (LODWORD(STACK[0xCB8]) - ((2 * LODWORD(STACK[0xCB8])) & 0xC0B429AE) + 1616516311) ^ 0x605A14D7 ^ v43;
  v45 ^= 0xAF6842C9;
  v41 += 548084688;
  v51 = v46 ^ 0xAF6842C9;
  v52 = (v45 ^ LODWORD(STACK[0xCB8]) ^ v42) - (v46 ^ 0xAF6842C9);
  v42 ^= 0xAF6842C9;
  LODWORD(STACK[0xE78]) = ((v42 ^ LODWORD(STACK[0xCB8]) ^ v43) - (v45 ^ v46 ^ v49)) ^ v41;
  LODWORD(STACK[0xE08]) = v52 ^ v44 ^ (v50 - v49);
  v53 = v42 - v47;
  v54 = (v53 + 1527094895) ^ v41;
  v55 = v47 - v36;
  v56 = v51 - v48;
  v57 = v48 - v37;
  v58 = v36 + 2061729040;
  v59 = v37 - 1357936997 + ((v51 - v48 - 1426825073) ^ v44);
  v60 = (v51 - v48 + 300698285) ^ (v37 + 2061729040);
  v61 = v36 - 1357936997 + v54 + v55;
  v62 = v55 - 1374220721;
  v63 = v53 - v55 + 2143689151;
  v64 = 2 * (v55 - 1374220721);
  v65 = v58 ^ (v53 - 1040349043) ^ (v55 - 1075645636 + (~v64 | 0xDC683627)) ^ 0x11CBE4EC;
  v66 = -LODWORD(STACK[0xC90]);
  v67 = v57 + v59;
  v68 = v56 - v57 + 530816511;
  v69 = v68 ^ 0xA47E939D;
  v70 = v57 + v59 + (v68 ^ 0xA47E939D);
  v71 = v67 + 2079966998;
  v72 = v57 + 1579699247;
  v73 = v65 ^ LODWORD(STACK[0xCC0]);
  v74 = (v66 ^ (LODWORD(STACK[0xCC0]) - ((2 * LODWORD(STACK[0xCC0])) & 0x9DA3FFE) + 82649087) ^ 0x4ED1FFF ^ v63) - v68;
  v75 = v60 ^ (v57 - ((2 * (v57 + 1579699247)) & 0x6E43AEE2) + 357180320);
  v76 = v75 ^ 0xB721D771;
  v77 = v66 ^ v68 ^ 0x3F5A1C3C ^ ((v75 ^ 0xB721D771) - 2 * ((v75 ^ 0xB721D771) & 0x3F5A1C3E ^ v75 & 2) + 1062870076);
  v78 = (v73 ^ v66) - (v75 ^ 0xB721D771);
  v79 = ((v73 ^ v63) - v77) ^ (v61 - 873952970);
  LODWORD(STACK[0xE18]) = v74 ^ v71 ^ v78;
  v80 = v61 - 873952970 + v65;
  v81 = (-LODWORD(STACK[0xCD0]) ^ LODWORD(STACK[0xCF8]) ^ 0xA5B8DB20 ^ (v55 - (v64 & 0x4B71B640) + 1406134639)) - v72;
  v82 = v71 + v76;
  v83 = (-LODWORD(STACK[0xCD0]) ^ (LODWORD(STACK[0xCF8]) - ((2 * LODWORD(STACK[0xCF8])) & 0x124AF7FE) + 153451519) ^ 0x9257BFF ^ v80) - v82;
  LODWORD(STACK[0xE10]) = ((LODWORD(STACK[0xCF8]) ^ v62 ^ 0xC6BD2607 ^ (v80 - ((2 * v80) & 0x8D7A4C0E) - 960682489)) - (-LODWORD(STACK[0xCD0]) ^ v72 ^ 0xCF3515E2 ^ (v82 - ((2 * v82) & 0x9E6A2BC4) - 818604574))) ^ (v61 - 873952970);
  LODWORD(STACK[0xE20]) = (v82 ^ 0xDD68AAA5 ^ v72) - (v69 - 532311122);
  STACK[0xD30] = STACK[0xF28];
  v84 = STACK[0xD38];
  v85 = *(STACK[0xED8] + 8 * SLODWORD(STACK[0xD38]));
  LODWORD(STACK[0xE88]) = 274940;
  v84 -= 1245863143;
  LODWORD(STACK[0xD20]) = v84;
  LODWORD(STACK[0xD28]) = v84 ^ 0xB5BDF2E1;
  LODWORD(STACK[0xDF8]) = STACK[0xCD8];
  LODWORD(STACK[0xDF0]) = STACK[0xCA0];
  return v85(v70 - 641141341, v79, v81 ^ v71 ^ v83, v82 ^ 0xDD68AAA5 ^ (v69 + 1901297640), v82, 1416705707, v69 + 1901297640, 2856076792);
}

uint64_t sub_1009D0790@<X0>(uint64_t a1@<X8>)
{
  (*(v3 + 8 * (v1 ^ 0x4664)))(a1);
  *(*(v2 + 232) + 24) = 0;
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1009D0814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 656) = a2;
  LODWORD(STACK[0x63C]) = v3;
  return (*(v4 + 8 * (v2 ^ 0x8CCACECC ^ (4718 * (v2 <= (v2 ^ 0x6CD85D95))))))();
}

uint64_t sub_1009D0988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  STACK[0x3F0] = v7[20] + 24;
  LODWORD(STACK[0x250]) = LODWORD(STACK[0xA94]) ^ 0x780B3361;
  v8 = SLOWORD(STACK[0xA8E]);
  LODWORD(STACK[0x3B0]) = v8;
  LODWORD(STACK[0x380]) = v8 ^ 0x7374;
  STACK[0x3E0] = v7[43] + 24;
  v9 = SLOWORD(STACK[0xB5E]);
  LODWORD(STACK[0x390]) = v9;
  LODWORD(STACK[0x370]) = v9 ^ 0x387C;
  LODWORD(STACK[0x240]) = LODWORD(STACK[0xB64]) ^ 0x780B3361;
  STACK[0x3D0] = v7[144] + 24;
  STACK[0x3C0] = v7[153] + 24;
  v10 = STACK[0xA90];
  LODWORD(STACK[0x270]) = STACK[0xA90];
  LODWORD(STACK[0x360]) = v10 ^ 0x780B3361;
  v11 = STACK[0xB60];
  LODWORD(STACK[0x260]) = STACK[0xB60];
  LODWORD(STACK[0x350]) = v11 ^ 0x780B3361;
  LODWORD(STACK[0x340]) = v6 - 17246;
  v12 = *(a5 + 8 * (v5 + 6114));
  v13 = (v6 + 59094795) & 0xFC79FFFF;
  LODWORD(STACK[0x330]) = v6 + 10682;
  LODWORD(STACK[0x230]) = v13;
  LODWORD(STACK[0x320]) = v13 - 16219;
  LODWORD(STACK[0x2A0]) = v6 + 6357;
  LODWORD(STACK[0x210]) = v6 - 18677;
  LODWORD(STACK[0x290]) = ((v6 - 237078767) & 0xE213FF9 ^ 0xCA0F) + v6 - 18677;
  LODWORD(STACK[0x300]) = v6 - 16033;
  v14 = (v6 - 26719) ^ 0x82D3;
  v15 = (v6 - 26719) | 0x1328;
  LODWORD(STACK[0x2F0]) = (v6 - 26719) ^ 0x984C;
  LODWORD(STACK[0x280]) = v14;
  LODWORD(STACK[0x2B0]) = (v14 - 29395) | 0x32E;
  LODWORD(STACK[0x2E0]) = v6 - 29251;
  LODWORD(STACK[0x220]) = v15;
  LODWORD(STACK[0x2D0]) = v15 ^ 0x3330;
  LODWORD(STACK[0x2C0]) = v6 - 5442;
  return v12(a1, a2, 0xB52FFCE62967CC61, 0xE331C78B2F58FF32);
}

uint64_t sub_1009D0C60@<X0>(char a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v17 = *(v16 + 4 * (a5 ^ ((((v10 ^ 0xFEAD9475) + 2023435664) ^ v10 ^ ((v10 ^ 0x6D49410C) - 343934729) ^ ((v10 ^ 0xDFEA6C02) + 1507644922) ^ ((v10 ^ 0x35C7FF7E) - 1276033402)) >> 2)) + 72);
  *(v9 + (v10 + a6)) = (v15 ^ HIBYTE(v17)) - ((2 * (v15 ^ HIBYTE(v17))) & 0xBF) + 95;
  *(v9 + (v10 + a7)) = (BYTE2(v17) ^ 0x7C) - ((2 * (BYTE2(v17) ^ 0x7C)) & 0xBF) + 95;
  *(v9 + (v10 + a8)) = (v13 ^ BYTE1(v17)) - ((2 * (v13 ^ BYTE1(v17))) & 0xBF) + 95;
  *(v9 + (v10 + v11)) = v17 ^ a1;
  v18 = LODWORD(STACK[0x10A0]) > a3;
  if (v10 + v12 < a2 == v18)
  {
    v18 = v10 + v12 < LODWORD(STACK[0x10A0]) + a2;
  }

  return (*(v14 + 8 * ((!v18 * a4) ^ a9)))();
}

uint64_t sub_1009D0D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = v11 - 1;
  v26 = __ROR8__((a5 + v25) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = v23 - ((((v14 + 2438) - v26 + v16) | a8) + ((v26 + v22) | a7));
  v28 = v27 ^ v15;
  v29 = v27 ^ v10;
  v30 = __ROR8__(v28, 8);
  v31 = ((v9 & (2 * (v30 + v29))) - (v30 + v29) + v12) ^ v8;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a4;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ a6;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((v37 + v36) | v24) - ((v37 + v36) | a1) + a1) ^ v20;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v17;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v21;
  *(v18 + v25 + v13) = (((__ROR8__(v42, 8) + (v42 ^ __ROR8__(v41, 61))) ^ v19) >> (8 * ((a5 + v25) & 7))) ^ *(a5 + v25);
  return (*(STACK[0x3A8] + 8 * (((v25 == 0) * a3) ^ v14)))();
}

uint64_t sub_1009D0E84(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v21 = *(a19 + 4);
  v22 = v21 > (v19 ^ 0x44E6u) + 877837184;
  if ((a2 + 1987301381) < 0xCBAD4469 == v22)
  {
    v22 = a2 + 1987301381 < v21 + ((98 * (v19 ^ 0x44E6)) ^ 0xCBAD4C05);
  }

  return (*(v20 + 8 * ((428 * v22) ^ v19)))();
}

uint64_t sub_1009D0FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, unint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v48 = *(STACK[0x640] + 24);
  v49 = *(a1 + 8 * ((53 * (((10 * ((STACK[0x4D8] - 15763) ^ 0x7430) + 2768383636) ^ a6) < 8)) ^ (STACK[0x4D8] - 15763)));
  v50 = STACK[0x808];
  STACK[0x590] = v48;
  STACK[0x580] = v50;
  return v49(a1, a2, a3, a4, v48, v50, a5, 0xA8CD05C03C3E3942, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t sub_1009D10FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = STACK[0x598];
  v11 = STACK[0x648];
  v12 = &a9 + STACK[0x648] - 0x3240C0231B2918BELL;
  STACK[0x4F8] = v12;
  v13 = v12 + 16;
  STACK[0x7F0] = (v12 + 16);
  STACK[0x448] = (v12 + 48);
  STACK[0x648] = ((v9 - 12975) ^ (v9 - 1539886152) & 0x5BC8177Fu ^ 0x8E7BLL) + v11;
  (*(a5 + 8 * (v9 ^ 0x71C2)))();
  v15 = (*(a5 + 8 * (v9 ^ 0x71C2)))(v13, 0, 32);
  STACK[0x818] = 0;
  STACK[0x5F8] = 0;
  LODWORD(STACK[0x504]) = -371865839;
  STACK[0x560] = 0;
  LODWORD(STACK[0x694]) = -371865839;
  STACK[0x888] = v10;
  return (*(a5 + 8 * ((84 * (v10 == 0)) ^ v9)))(v15);
}

uint64_t sub_1009D1238(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  LODWORD(STACK[0xED0]) = 0;
  LODWORD(STACK[0xE38]) = 0;
  LODWORD(STACK[0xE48]) = 0;
  LODWORD(STACK[0xE50]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  v12 = STACK[0xC88];
  v13 = STACK[0xC88] >> 8;
  v14 = STACK[0xE78];
  *(STACK[0xF10] + 23) ^= LODWORD(STACK[0xC24]) ^ *(STACK[0xF50] + 31) ^ 0x37 ^ STACK[0xE78];
  v15 = (((v6 + 102) ^ *(STACK[0xF50] + 40) ^ 0x11) + 84) ^ ((*(STACK[0xF50] + 40) ^ a6) + 93) ^ ((*(STACK[0xF50] + 40) ^ 0x94) + 83);
  v16 = v15 - 64;
  v17 = (v15 & 0xF4) + 67;
  v18 = v17 ^ v15 & 0xE;
  v19 = v11;
  v20 = STACK[0xEB8];
  v21 = *(STACK[0xEB8] + ((v16 ^ (2 * ((v16 ^ 0x74) & (2 * ((v16 ^ 0x74) & (2 * ((v16 ^ 0x74) & (2 * ((v16 ^ 0x74) & (2 * ((v16 ^ 0x74) & (2 * (v16 & (2 * v17) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0x6Bu));
  v22 = (((v21 ^ 0xAF) + 81) ^ ((v21 ^ 0x2B) - 43) ^ ((v21 ^ 0xC2) + 62)) + 41;
  v23 = v22 & 3 ^ 0x69;
  v24 = v22 ^ (2 * ((v22 ^ 0x30) & (2 * ((v22 ^ 0x30) & (2 * ((v22 ^ 0x30) & (2 * ((v22 ^ 0x30) & (2 * ((v22 ^ 0x30) & (2 * (((2 * v22) & 0x62 ^ 0x32) & (v22 ^ 0x30) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23)) ^ v23));
  *(STACK[0xF10] + 57) ^= v9 ^ (-51 * (v24 ^ (v24 >> 4) ^ (v24 >> 1) ^ v7)) ^ 0xCB ^ v12;
  *(STACK[0xF10] + 116) ^= LODWORD(STACK[0xCE0]) ^ BYTE1(v14) ^ ~*(STACK[0xF50] + 32);
  LODWORD(v13) = *(v19 + 0xF2E9006A87B15ADLL * ((v13 & 0x7C3C0CECA9C9A8 ^ 0x944410008CA1C0A0) + (v13 & 0x7C3C0CECA9C9A8 ^ 0x382C0C60080908)) + (((LODWORD(STACK[0xC40]) ^ *(STACK[0xF10] + 150) ^ *(STACK[0xF50] + 125) ^ v13 ^ 0xC1) * ((v14 & 0xFB ^ 0xD1 | v14 & 0xFB ^ 0x7A) ^ v14 & 0x50)) ^ 0xAFLL));
  LODWORD(v13) = ((2 * (((v13 >> 2) | (v13 << 6)) ^ 0xFFFFFFBB)) & 0xFFFFFFE4 | 1) ^ ((v13 >> 2) | (v13 << 6)) ^ 0xFFFFFFBB;
  LOBYTE(v13) = (((v13 ^ 1) - 74) ^ ((v13 ^ 0x8B) + 64) ^ ((v13 ^ 0x6C) - 39)) - 5;
  v25 = v13 & v8 ^ 0xDC;
  *(STACK[0xF10] + 150) = v13 ^ (2 * ((v13 ^ 0x30) & (2 * ((v13 ^ 0x30) & (2 * ((v13 ^ 0x30) & (2 * ((v13 ^ 0x30) & (2 * ((v13 ^ 0x30) & (2 * ((v13 ^ 0x30) & (2 * v13) & 0x62 ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ 0xAD;
  *(STACK[0xF10] + 51) ^= LODWORD(STACK[0xBB8]) ^ BYTE2(v14) ^ *(STACK[0xF50] + 34) ^ 0x33;
  v26 = STACK[0xEC0];
  LOBYTE(v13) = *(STACK[0xEC0] + (((BYTE2(v12) ^ 0x1F) - 7) ^ 0x98));
  v27 = 105 - 59 * (((v13 ^ 0x85) - 61) ^ ((v13 ^ 0xF6) - 78) ^ ((v13 ^ 0x18) + 96));
  LOBYTE(v13) = v27 & 0x86 ^ 0xC8;
  LODWORD(STACK[0xE60]) = 1;
  v28 = *(v20 + (((LODWORD(STACK[0xB20]) ^ v27 ^ (2 * ((v27 ^ 0x74) & (2 * ((v27 ^ 0x74) & (2 * ((v27 ^ 0x74) & (2 * ((v27 ^ 0x74) & (2 * ((v27 ^ 0x74) & (2 * v13) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ v13)) ^ 0x30) + ((((v14 & 1) == 0) | v14 & 0x11 & (v14 & 0x11 ^ 0xFC)) ^ 0x13)) ^ 0x91));
  v29 = ((v28 ^ 0xFFFFFFC9) + 55) ^ ((v28 ^ 0xFFFFFFF1) + 15) ^ ((v28 ^ 0x7E) - 126);
  v30 = (v29 + 80) & 0xFFFFFFF0 ^ 0x37;
  v31 = (v29 + 80) ^ (2 * (((v29 + 80) ^ 0xA) & (2 * (((v29 + 80) ^ 0xA) & (2 * (((v29 + 80) ^ 0xA) & (2 * (((v29 + 80) ^ 0xA) & (2 * (((2 * v29) & 0x14 ^ 0x7A) & ((v29 + 80) ^ 0xA) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30));
  v32 = v31 ^ (v31 >> 4) ^ (v31 >> 1);
  LOBYTE(v32) = -51 * (((v32 ^ 0x8C) - 61) ^ ((v32 ^ 0x3A) + 117) ^ ((v32 ^ 0xD1) - 96)) + 120;
  v33 = v32 & 0x40 ^ 0x75;
  *(STACK[0xF10] + 85) ^= *(STACK[0xF50] + 28) ^ v32 ^ (2 * ((v32 ^ 0x66) & (2 * ((v32 ^ 0x66) & (2 * ((v32 ^ 0x66) & (2 * ((v32 ^ 0x66) & (2 * ((v32 ^ 0x66) & (2 * ((v32 ^ 0x66) & a3 ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ 0xF6;
  v34 = ((BYTE3(v12) ^ LOBYTE(STACK[0xC78]) ^ 0xAE) >> 4) | (16 * ((v12 >> 24) ^ LODWORD(STACK[0xC78]) ^ 0xFFFFFFAE));
  *(STACK[0xF10] + 144) ^= LODWORD(STACK[0xBB0]) ^ BYTE3(v14) ^ *(STACK[0xF50] + 22) ^ 0xD5;
  v35 = STACK[0xEB0];
  LODWORD(v13) = -81 * (v34 ^ *(STACK[0xEB0] + (v34 ^ 0xB1)) ^ 0x20) + 111;
  v36 = v13 & 0xFFFFFFDB ^ 0xFFFFFFA5;
  v37 = (v13 ^ 0x10) & (2 * ((v13 ^ 0x10) & (2 * ((v13 ^ 0x10) & (2 * ((v13 ^ 0x10) & (2 * ((v13 ^ 0x10) & (2 * ((v13 ^ 0x10) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36;
  LODWORD(v13) = v13 ^ *(STACK[0xF10] + 20);
  HIDWORD(v38) = v13 ^ ~(2 * v37);
  LODWORD(v38) = (v13 ^ (2 * v37) ^ 0x55555555) << 24;
  LOBYTE(v13) = *(a5 + ((v38 >> 28) ^ 0x8DLL));
  LOBYTE(v13) = -81 * (((v13 ^ 0xE4) + 29) ^ ((v13 ^ 0xA0) + 89) ^ ((v13 ^ 0x74) - 115));
  v39 = (v13 - 97) & 0x98 ^ 0xD3;
  *(STACK[0xF10] + 20) = (v13 - 97) ^ *(STACK[0xF50] + 122) ^ (2 * (((v13 - 97) ^ 0x7A) & (2 * (((v13 - 97) ^ 0x7A) & (2 * (((v13 - 97) ^ 0x7A) & (2 * (((v13 - 97) ^ 0x7A) & (2 * (((v13 - 97) ^ 0x7A) & (2 * (v39 ^ (32 - v13) & 0x22)) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39));
  LODWORD(v13) = *(v20 + (((((BYTE4(v14) ^ 0x98) - 105) ^ ((BYTE4(v14) ^ 0xB3) - 66) ^ ((BYTE4(v14) ^ 0xDA) - 43)) + 18) ^ 0x91));
  LODWORD(v13) = ((v13 ^ 0x64) - 100) ^ ((v13 ^ 0x18) - 24) ^ ((v13 ^ 0x3A) - 58);
  v40 = v13 + 14;
  LODWORD(v13) = (v13 - 114) & 0xFFFFFFCC | 0x13;
  v41 = v13 ^ v40 & 0x3E;
  LODWORD(v13) = v40 ^ (2 * ((v40 ^ 0x4C) & (2 * ((v40 ^ 0x4C) & (2 * ((v40 ^ 0x4C) & (2 * ((v40 ^ 0x4C) & (2 * ((v40 ^ 0x4C) & (2 * ((v40 ^ 0x4C) & (2 * v13) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41));
  LODWORD(v13) = -51 * (v13 ^ (v13 >> 4) ^ (v13 >> 1) ^ 0x64) - 49;
  v42 = v13 & 0xFFFFFFDD ^ 0x56;
  LODWORD(v13) = *(STACK[0xF10] + 79) ^ LODWORD(STACK[0xC70]) ^ v13 ^ (2 * ((v13 ^ 0x30) & (2 * ((v13 ^ 0x30) & (2 * ((v13 ^ 0x30) & (2 * ((v13 ^ 0x30) & (2 * ((v13 ^ 0x30) & (2 * (v13 & (2 * v13) & 0x62 ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42));
  HIDWORD(v38) = v13 ^ 0xC;
  LODWORD(v38) = (v13 ^ 0xE0) << 24;
  LOBYTE(v13) = (v38 >> 28) ^ *(v35 + ((v38 >> 28) ^ 0x93));
  LOBYTE(v42) = a4 - 81 * (((v13 ^ 0xE0) - 8) ^ ((v13 ^ 0xF1) - 25) ^ ((v13 ^ 0x13) + 5));
  LOBYTE(v30) = (v42 & 0x8C | 0x51) ^ v42 & 0xA2;
  *(STACK[0xF10] + 79) = *(STACK[0xF50] + 111) ^ v42 ^ (2 * ((v42 ^ 0xC) & (2 * ((v42 ^ 0xC) & (2 * ((v42 ^ 0xC) & (2 * ((v42 ^ 0xC) & (2 * ((v42 ^ 0xC) & (2 * ((v42 ^ 0xC) & (2 * v30) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ 1;
  LOBYTE(v42) = (((*(STACK[0xF50] + 43) ^ 0x4F) - 47) ^ ((*(STACK[0xF50] + 43) ^ 0xBA) + 38) ^ ((*(STACK[0xF50] + 43) ^ 0x48) - 40)) - 20;
  LOBYTE(v41) = (v42 & 0xEA | 0x14) ^ v42 & 0xF8;
  LOBYTE(v42) = v42 ^ (2 * ((v42 ^ 0x68) & (2 * ((v42 ^ 0x68) & (2 * ((v42 ^ 0x68) & (2 * ((v42 ^ 0x68) & (2 * ((v42 ^ 0x68) & (2 * v41) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ v41)) ^ 0x8A;
  *(STACK[0xF10] + 113 - ((((v12 >> 40) & 0x250 ^ 0x240) + ((v12 >> 40) & 0x250)) & 0x480)) = BYTE4(v12) ^ LODWORD(STACK[0xC4C]) ^ *(STACK[0xF10] + 113) ^ (-110 - 59 * (((*(v26 + v42) ^ 0xAD) + 84) ^ ((*(v26 + v42) ^ 2) - 3) ^ ((*(v26 + v42) ^ 0xC4) + 59))) ^ 0xA1;
  *(STACK[0xF10] + 14) ^= LODWORD(STACK[0xBC8]) ^ *(STACK[0xF50] + 76) ^ 0xB5 ^ BYTE5(v14);
  *(STACK[0xF10] + 48) ^= BYTE5(v12) ^ LODWORD(STACK[0xAF8]) ^ *(STACK[0xF50] + 120) ^ 0x31;
  LOBYTE(v41) = *(STACK[0xEC8] + (((LODWORD(STACK[0xBA8]) ^ *(STACK[0xF10] + 107) ^ 0x14 ^ BYTE6(v14)) + 18) ^ 0xB9));
  LOBYTE(v41) = -51 * (((v41 ^ 0x61) + 64) ^ ((v41 ^ 0xAB) - 10) ^ ((v41 ^ 0xB) + 86)) + 11;
  v43 = v41 & 0xB5 ^ 0xF0;
  LOBYTE(v30) = *(v19 + (((HIWORD(v12) & 0x205 ^ 1) + (HIWORD(v12) & 0x205 ^ 0x204)) | 0x225) + ((((*(STACK[0xF50] + 89) ^ 0xC9) >> 4) | (16 * (*(STACK[0xF50] + 89) ^ 0xC9))) ^ 0x24));
  LOBYTE(v30) = -81 * (((v30 ^ 0x25) + 20) ^ ((v30 ^ 0xA5) - 108) ^ ((v30 ^ 0xB0) - 121));
  v44 = (v30 - 78) & 0xED ^ 0x34;
  *(STACK[0xF10] + 107) = v41 ^ (v30 - 78) ^ (2 * (v44 ^ v43 ^ ((v30 - 78) ^ 4) & (2 * (((v30 - 78) ^ 4) & (2 * (((v30 - 78) ^ 4) & (2 * (((v30 - 78) ^ 4) & (2 * (((v30 - 78) ^ 4) & (2 * ((v30 + 50) & (2 * v44) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ (v41 ^ 0x54) & (2 * ((v41 ^ 0x54) & (2 * ((v41 ^ 0x54) & (2 * ((v41 ^ 0x54) & (2 * ((v41 ^ 0x54) & (2 * (v41 & (2 * v41) & 0x2A ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)))) ^ 0xDC;
  *(STACK[0xF10] + 141) ^= BYTE6(v12) ^ LODWORD(STACK[0xB98]) ^ *(STACK[0xF50] + 15) ^ 0x68;
  *(STACK[0xF10] + 42) ^= LODWORD(STACK[0xAE8]) ^ *(STACK[0xF50] + 61) ^ v10 ^ HIBYTE(v14);
  v45 = *(STACK[0xED8] + 8 * v6);
  LODWORD(STACK[0xE58]) = 1;
  LODWORD(STACK[0xE30]) = 1;
  LODWORD(STACK[0xE40]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xE20]) = 1;
  return v45(188);
}

uint64_t sub_1009D1E88@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v3 = STACK[0x258];
  v4 = (a1 + STACK[0x258]);
  *v4 = STACK[0x338];
  v4[1] = 0xBCE25E0EC5200378;
  return (*(v2 + 8 * ((((a2 + 1287275443) ^ 0x4CBA6F4E ^ (241 * (a2 ^ 0x1AD6))) * (v3 >= 0)) ^ a2)))();
}

uint64_t sub_1009D1F3C()
{
  v6 = v2 < 0xF4A0E39A;
  LODWORD(STACK[0x23F8]) = v4;
  LODWORD(STACK[0x23FC]) = v1;
  v7 = *(v0 + 128) - 1183096208;
  v8 = v6 ^ (v7 < 0xF4A0E39A);
  v9 = v2 > v7;
  if (!v8)
  {
    v6 = v9;
  }

  if (v6)
  {
    v10 = -42018;
  }

  else
  {
    v10 = v3;
  }

  LODWORD(STACK[0x24EC]) = v10;
  return (*(v5 + 8 * ((131 * (v10 != 0)) ^ 0x1669u)))();
}

uint64_t sub_1009D2010@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, char a8@<W8>)
{
  v25 = ((v11 ^ v24) + v12) ^ v11 ^ (v13 + (v11 ^ v18) + v19) ^ ((v11 ^ v20) + v21) ^ ((v11 ^ v22) + v23);
  v26 = (((v25 ^ a6) + a7) ^ ((v25 ^ v14) + v15) ^ ((v25 ^ v17) + a8)) + v9;
  STACK[0x540] = a1 - 1;
  *(v8 + a1 - 1) = v26 * (v11 + a5) + (v26 * a2 + (v11 + a5) * v10) * a3 + a4;
  return (*(v16 + 8 * ((47454 * (STACK[0x540] == 0)) ^ v13)))();
}

uint64_t sub_1009D20CC()
{
  v2 = STACK[0x318];
  *STACK[0x318] = 0;
  v3 = (*(v0 + 8 * (v1 ^ 0xE938)))(90000);
  v2[1] = v3;
  v2[2] = 0xA00000000;
  v2[4] = 1;
  v2[5] = 0x1BCA70720C86509CLL;
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v4 = STACK[0x330];
  v2[9] = STACK[0x330];
  v2[10] = v4;
  *v3 = 0x3CE25E0EC5200378;
  return (*(v0 + 8 * (((*(v2[10] + 24) == v4) * (v1 + 13330)) ^ v1)))();
}

uint64_t sub_1009D21A4()
{
  v3 = (*(v2 + 8 * (v1 ^ 0x7D25213u)))();
  *(v0 + 24) = 0;
  return (*(v2 + 8 * (v1 ^ 0x7D2D727 ^ ((v1 == -244063837) * (v1 ^ 0x7D24861u)))))(v3);
}

uint64_t sub_1009D2320@<X0>(uint64_t a1@<X8>)
{
  v8 = (v2 ^ v3 ^ v5) + v4;
  *(v1 + v8) = *(a1 + v8);
  return (*(v7 + 8 * (((v8 == 0) * v6) ^ v2)))();
}

uint64_t sub_1009D234C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q2>)
{
  v8 = *(a3 + 8 * ((((v7 - 27092) ^ 0x16DD ^ ((v7 - 37630) | 0x3802)) * (v5 == v6)) ^ v7));
  v9 = *&STACK[0x270];
  v10 = *&STACK[0x380];
  v11 = *&STACK[0x390];
  v12 = *&STACK[0x3B0];
  STACK[0x3E0] = v6;
  return v8(0x9C13D4053EC4CEB8, a1, 32014, 0x2C378843F9A46E98, a2, 0xBD7D2DE9C10AA16ALL, 0x1D3BCD708988B1A1, 0xE2C4328F76774E5ELL, a4, *&STACK[0x300], a5, *&STACK[0x2F0], v11, v10, v12, v9);
}

uint64_t sub_1009D2520@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = *(v25 + 8 * a6);
  v30 = *(&off_1010A0B50 + (a4 ^ 0x7087F137));
  v29 = *(&off_1010A0B50 + (a4 ^ 0x7087EA56));
  v27 = *(*(v29 + a5) + (*(v30 + v24) & 0x72D7ACF8));
  return v26(*(&off_1010A0B50 + a4 - 1887951712) - 1260529494, a1, a2, a3, v26, a4, *(&off_1010A0B50 + (a4 ^ 0x7087F1CD)) - 908123987, 107 * ((((((v27 ^ (v22 + v23 - 128941938)) & 0x7FFFFFFF) * a3) ^ ((((v27 ^ (v22 + v23 - 128941938)) & 0x7FFFFFFF) * a3) >> 16)) * a3) >> 24), a7, a8, a9, a10, a11, a12, a13, a14, *(&off_1010A0B50 + a4 - 1887951663) - 1048392095, *(&off_1010A0B50 + a4 - 1887951413) - 579625171, *(&off_1010A0B50 + a4 - 1887950058) - 2076177714, a18, *(&off_1010A0B50 + a4 - 1887952171) - 179860347, v29, v30, a22);
}

uint64_t sub_1009D283C(char a1, int a2, unsigned int a3, int a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0xE38]) = v15 + 20725;
  v21 = STACK[0xED0];
  v22 = *(STACK[0xED0] + 4 * (v13 ^ 0xA1u) + 122352) ^ ((v13 ^ v9) - (v10 & (2 * (v13 ^ v9))) - 2100827259) ^ *(STACK[0xED0] + 4 * (BYTE1(v13) ^ 0x26u) + 129664) ^ (((v15 + 20725) ^ 0x8FB1A4E9) + (v13 ^ v9)) ^ *(STACK[0xED0] + 4 * (BYTE2(v13) ^ 0xC0u) + 1112);
  v23 = ((((v13 >> 20) & 0xF0 | (v13 >> 28)) - ((2 * ((v13 >> 20) & 0xF0 | (v13 >> 28))) & 0x8A) - 59) ^ *(STACK[0xEB0] + (((v13 >> 20) & 0xF0 | (v13 >> 28)) ^ 0x93)) ^ 0xC7) * a1;
  v24 = v22 ^ ((v23 ^ 0x39) - 223261890) ^ *(STACK[0xED0] + 4 * (v23 ^ 0xADu) + 140608);
  v25 = *(STACK[0xED0] + 4 * (a3 ^ 0xD2u) + 97676) ^ (957617160 - BYTE1(a3)) ^ *(STACK[0xED0] + 4 * (BYTE1(a3) ^ 0xFEu) + 26388) ^ *(STACK[0xED0] + 4 * (BYTE2(a3) ^ v12) + 52092) ^ *(STACK[0xED0] + 4 * (HIBYTE(a3) ^ 0xE) + 47852);
  v26 = (a5 - ((2 * a5) & 0x744A5684) + 975514434) ^ v13 & (a8 ^ a4) ^ (a3 ^ 0x1D3707F2) & a5 ^ (a3 ^ 0x1D3707F2) & a2;
  v27 = (v19 ^ 0xB8EAFBB1) & (2 * (v19 & 0xB8CAFA3A)) ^ v19 & 0xB8CAFA3A;
  v28 = ((2 * (v19 ^ 0xF8FA1BA5)) ^ 0x8061C33E) & (v19 ^ 0xF8FA1BA5) ^ (2 * (v19 ^ 0xF8FA1BA5)) & 0x4030E19E;
  v29 = (v28 ^ 0x20C118) & (4 * v27) ^ v27;
  v30 = ((4 * (v28 ^ 0x40102081)) ^ 0xC3867C) & (v28 ^ 0x40102081) ^ (4 * (v28 ^ 0x40102081)) & 0x4030E19C;
  v31 = (v30 ^ 0x8000) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x40306183)) ^ 0x30E19F0) & (v30 ^ 0x40306183) ^ (16 * (v30 ^ 0x40306183)) & 0x4030E190;
  v33 = ((v31 ^ 0x4030E19F ^ v32 & (v31 << 8)) << 16) & 0x40300000 ^ v31 ^ 0x4030E19F ^ v32 & (v31 << 8) ^ (((v32 ^ 0x4030E00F) << 8) & 0x40300000 ^ 0x40100000 ^ (((v32 ^ 0x4030E00F) << 8) ^ 0x30E10000) & (v32 ^ 0x4030E00F)) & (((v31 ^ 0x4030E19F ^ v32 & (v31 << 8)) << 16) ^ 0x619F0000);
  v34 = (a7 ^ 0xC261AF7E) & (2 * (a7 & 0xC3680F7F)) ^ a7 & 0xC3680F7F;
  v35 = ((2 * (a7 ^ 0xC4A1A9D6)) ^ 0xF934D52) & (a7 ^ 0xC4A1A9D6) ^ (2 * (a7 ^ 0xC4A1A9D6)) & 0x7C9A6A8;
  v36 = (v35 ^ 0x7800400) & (4 * v34) ^ v34;
  v37 = ((4 * (v35 ^ 0x48A2A9)) ^ 0x1F269AA4) & (v35 ^ 0x48A2A9) ^ (4 * (v35 ^ 0x48A2A9)) & 0x7C9A6A8;
  v38 = (v37 ^ 0x70082A0) & (16 * v36) ^ v36;
  v39 = ((16 * (v37 ^ 0xC92409)) ^ 0x7C9A6A90) & (v37 ^ 0xC92409) ^ (16 * (v37 ^ 0xC92409)) & 0x7C9A680;
  v40 = v38 ^ 0x7C9A6A9 ^ (v39 ^ 0x4882200) & (v38 << 8);
  v41 = (v40 << 16) & 0x7C90000 ^ v40 ^ ((v40 << 16) ^ 0x26A90000) & (((v39 ^ 0x3418429) << 8) & 0x7C90000 ^ 0x6490000 ^ (((v39 ^ 0x3418429) << 8) ^ 0x49A60000) & (v39 ^ 0x3418429));
  v42 = a4 ^ v13 & (a5 ^ a2);
  v44 = v42 ^ a3 & 0xB4F1A4AC ^ (a3 ^ 0x1D3707F2) & (a4 ^ 0xC98124E) ^ (a3 ^ 0x1D3707F2) & (a8 ^ 0xB869B6E2);
  v45 = (v24 ^ 0x7B6AA013 ^ v19 ^ v14 ^ (2 * v33) ^ v25) - (v19 ^ v14 ^ (2 * v33) ^ v25 ^ 0x54335C27);
  v24 ^= 0x35CA9BC6u;
  v46 = v16 + 1016590465 + (a7 ^ (2 * v41) ^ v24 ^ 0xDB7A25DF);
  v47 = (LODWORD(STACK[0xE88]) ^ 0x11106261 ^ v24) - (LODWORD(STACK[0xE88]) ^ 0xB830593);
  v48 = v45 ^ v46 ^ 0xD585B6D9 ^ (v47 - ((2 * v47) & 0xAB0B6DB2) - 712657191);
  v49 = v20 + v19 + 1330172501;
  v50 = (v20 + v19 - ((2 * v49) & 0xCC4E9798) - 1250943455) ^ v14;
  v51 = a7 + v18 + 1821123104;
  v52 = STACK[0xE10];
  v53 = v19 + LODWORD(STACK[0xE10]);
  v54 = v53 + 1130049064 + v50;
  v55 = v26 ^ (-979444067 - v20) ^ (v54 - ((2 * v54) & 0x3DA22FD0) - 1630464024);
  v56 = ((a7 + v18 - ((2 * v51) & 0x17060B26) + 2014259123) ^ LODWORD(STACK[0xE88])) + a6 + a7 - 1050031365;
  v44 ^= 0x5343A910u;
  v57 = (((v55 ^ 0xA4F43CAA) - 2 * ((v55 ^ 0xA4F43CAA) & 0x5A45AA52 ^ v55 & 0x10) + 1514515010) ^ v44) - (v55 ^ 0xA4F43CAA);
  v58 = (v44 ^ (222187097 - v18 - ((2 * (-1292327913 - v18)) & 0xB48B5484))) - (-1292327913 - v18);
  v59 = (v44 ^ (v56 - ((2 * v56) & 0xB48B5484) + 1514515010)) - v56;
  v60 = v58 ^ (v59 - ((2 * v59) & 0x47538DE4) - 1549154574) ^ 0xA3A9C6F2 ^ v57;
  v61 = STACK[0xDA0];
  LODWORD(STACK[0xE88]) = v17 - (a6 + a7) + LODWORD(STACK[0xCE0]) + (*(STACK[0xED0] + 4 * (v8 & 0x3F ^ 0x17) + 71052) ^ 0xD19CD8DA) + v60 + v48 + 1512834997 + *(STACK[0xDA0] + 4 * ((295 * (((v11 ^ 0x56BB49B5) - 1455114677) ^ ((v11 ^ 0x33779C75) - 863476853) ^ ((v11 ^ 0x81EDA719) + 2115131623)) - 494163193) % 0x478));
  v62 = *(v21 + 4 * (v11 ^ (HIWORD(a3) & 0xC | 0x2010000) ^ (HIWORD(a3) & 0x2D ^ 0xE97E6FD6) & (HIWORD(a3) & 0x2D ^ 0xEB7F6FF7) ^ 0xF5E1D09) + 39052);
  v63 = v62 ^ 0x8A7EAD24 ^ (v62 >> 5) ^ ((v62 ^ 0x8A7EAD24) >> 1);
  v53 -= 166456081;
  v64 = a6 + a7 + 1948430786;
  v65 = (v49 ^ v53) - v54;
  v66 = (v64 ^ v51) - v56;
  v67 = v56 ^ 0x6B325A37 ^ v64;
  v68 = (v56 ^ 0x6B325A37) - v67;
  v69 = v65 - v20 - 861704555 + v65;
  v70 = v65 - v20 - 861704555;
  v54 ^= 0x6B325A37u;
  v71 = v52 + LODWORD(STACK[0xCE8]);
  v72 = v54 - (v54 ^ v53);
  LODWORD(STACK[0xDC0]) = v72;
  v73 = (v54 ^ v53) - v70;
  LODWORD(STACK[0xDD8]) = v70;
  LODWORD(STACK[0xE10]) = v73;
  v74 = v71 + v53 + (v26 ^ 0x3A252B42) + (v25 ^ 0x8A9F2EEF) + (v63 ^ 0x3C9D83FF) - 1970261010 + *(v61 + 4 * ((295 * (((v11 ^ 0x62A13B40) - 1654733632) ^ ((v11 ^ 0x3CC5C1D4) - 1019593172) ^ ((v11 ^ 0xBA45884D) + 1169848243)) - 494085903) % 0x478));
  LODWORD(STACK[0xDE0]) = v74;
  LODWORD(STACK[0xDB0]) = (BYTE2(LODWORD(STACK[0xEB8])) ^ 0xCD) - (BYTE2(LODWORD(STACK[0xEB8])) ^ 0x4C30BDAB);
  v75 = v70 ^ ((v68 & 0x87D18752 ^ 0x87D18752) + (v68 & 0x87D18752));
  v76 = v75 + 2069427336;
  v77 = (v75 + 2069427336) ^ 0xC1597E07;
  v78 = v75 + v72 - v69;
  LODWORD(STACK[0xDE8]) = v78;
  v79 = v78 - v76;
  v80 = v77 - v79;
  STACK[0xE08] = v15;
  LODWORD(STACK[0xE00]) = v69 ^ 0x9A13C12B;
  v81 = (v77 - v79) ^ ((v69 ^ 0x9A13C12B ^ (v73 + 886636940)) + v76);
  v82 = v69 ^ 0x5B4ABF2C;
  v83 = v79 + 1189296277;
  v84 = v81 ^ v69 ^ 0x5B4ABF2C;
  v85 = v84 + v77 - v79;
  v86 = v85 ^ (v79 + 1189296277 - v81);
  LODWORD(v61) = v85 + 990829056;
  v87 = STACK[0xE30];
  v88 = LODWORD(STACK[0xE30]) ^ (v85 + 990829056) ^ 0x5F1B3BB ^ (v86 - ((2 * v86) & 0xBE36776) + 99726267);
  v89 = STACK[0xE18];
  v90 = (v88 ^ LODWORD(STACK[0xE18])) - v88;
  v91 = v66 - v18 - 1174588401;
  v92 = v67 - v91;
  LODWORD(STACK[0xDF8]) = v92;
  v93 = (v91 ^ 0x87D18752) + 2069427336;
  v94 = (v91 ^ 0x87D18752) + v68 - (v91 + v66);
  LODWORD(STACK[0xDB8]) = v94;
  v95 = v94 - v93;
  v96 = (v93 ^ 0xC1597E07) - (v94 - v93);
  v97 = (v91 + v66) ^ 0x5B4ABF2C;
  v98 = (v91 + v66) ^ 0x9A13C12B;
  LODWORD(STACK[0xDF0]) = v98;
  v99 = v96 ^ ((v98 ^ (v92 + 886636940)) + v93);
  v100 = v95 + 1189296277;
  v101 = (v99 ^ v97) + v96;
  v102 = v101 ^ (v95 + 1189296277 - v99);
  v103 = v101 + 990829056;
  v104 = (((v101 + 990829056) ^ v89) - (v101 + 990829056)) ^ ((v102 ^ v89) - v102 - ((2 * ((v102 ^ v89) - v102)) & 0x61C86050) - 1327222744) ^ 0xB0E43028 ^ v90;
  v105 = (v81 + v80) ^ v84;
  v106 = v81 + v80 - v86;
  LODWORD(STACK[0xE18]) = v61 - v106;
  v107 = v87 + v105;
  v108 = v61 - v106 + v105;
  v109 = (v99 + v96) ^ v99 ^ v97;
  v110 = v74 + v104 - v109;
  LODWORD(STACK[0xE30]) = (v108 - 424121559) ^ (-v107 - LODWORD(STACK[0xE88])) ^ 0x85166C7E ^ (v110 - ((2 * v110) & 0xA2CD8FC) - 2062128002);
  v111 = v102 - v99 + (v99 ^ v97);
  v112 = v108 + v106 - 1712560452;
  LODWORD(STACK[0xDA8]) = (v108 - 424121559) ^ (v112 - ((2 * v112) & 0x21CE2E54) - 1863903446) ^ 0x90E7172A ^ v110;
  v113 = LODWORD(STACK[0xE70]) ^ 0x1D3707F2;
  v114 = (((v100 ^ LODWORD(STACK[0xE58])) - v100) ^ ((v96 ^ LODWORD(STACK[0xE58])) - v96 - ((2 * ((v96 ^ LODWORD(STACK[0xE58])) - v96)) & 0xA730ECE8) - 744982924) ^ ((v113 ^ v83 ^ v80 ^ LODWORD(STACK[0xE58])) - (v113 ^ v83 ^ v80)) ^ 0xD3987674) - v97;
  LODWORD(STACK[0xCE0]) = (v114 ^ 0xF7AFDBEF) + 1006612254 + ((2 * v114) & 0xEF5FB7DE);
  LODWORD(STACK[0xCE8]) = v82 + v113;
  v115 = STACK[0xE20];
  v116 = STACK[0xE48];
  v117 = STACK[0xEB8];
  v118 = v109 + v111 + 566707497 + v103 + v109 - 1712560452;
  v119 = ((v109 + v111 + 990829056 + v102) ^ 0x5E011DAA ^ v118) + ((v111 - v103 - 1591577788 + v111 + 990829056) ^ (v103 + v109 + 877364400)) + 954679254 + v118 + v103 + v109 + 877364400 - 1754094056;
  LODWORD(v61) = v112 - 1705042444 + v108 - 424121559 + v112 - 1754094056;
  LODWORD(STACK[0xE88]) = v119 ^ ((v119 ^ 0xC94BC706) + 336926174) ^ ((v119 ^ 0x6F92F284) - 1295245216) ^ ((v119 ^ 0x7F87F651) - 1562827637) ^ ((v119 ^ 0xFBFFEEF7) + 648100909) ^ 0x292228B7;
  LODWORD(STACK[0xE10]) = (((v61 ^ 0x9FE50ADA) + 39529697) ^ ((v61 ^ 0x4F1FC76B) - 761142958) ^ ((v61 ^ 0xB11D647E) + 748896837)) + 2031500316;
  v120 = *(STACK[0xED8] + 8 * STACK[0xE08]);
  LODWORD(STACK[0xE18]) = v115;
  LODWORD(STACK[0xE40]) = v117;
  LODWORD(STACK[0xE30]) = v116;
  LODWORD(STACK[0xE48]) = STACK[0xEA0];
  return v120();
}

uint64_t sub_1009D3F70(uint64_t a1)
{
  *(a1 + 4) = 1;
  *(a1 + 12) = v3;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1009D4008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0xAAC]) = v9;
  STACK[0xA30] = *(a8 + 8 * (v8 - 38623));
  return (*(a8 + 8 * (((v8 - 10660) ^ 0x67AD) + v8 - 38623)))();
}

uint64_t sub_1009D4048(__n128 a1)
{
  v5.n128_u64[0] = (v1 + 13) & 0xF;
  v5.n128_u64[1] = (v1 + 12) & 0xF;
  v6.n128_u64[0] = (v1 + 11) & 0xF;
  v6.n128_u64[1] = (v1 + 10) & 0xF;
  v7.n128_u64[0] = (v1 + 9) & 0xF;
  v7.n128_u64[1] = v1 & 0xF ^ 8;
  v10.val[0].i64[0] = (v1 + 7) & 0xF;
  v10.val[0].i64[1] = (v1 + 6) & 0xF;
  v10.val[1].i64[0] = (v1 + 5) & 0xF;
  v10.val[1].i64[1] = (v1 + 4) & 0xF;
  v10.val[2].i64[0] = (v1 + 3) & 0xF;
  v10.val[2].i64[1] = (v1 + 2) & 0xF;
  v10.val[3].i64[0] = (v1 + 1) & 0xF;
  v10.val[3].i64[1] = v1 & 0xF;
  v8.n128_u64[0] = 0x4747474747474747;
  v8.n128_u64[1] = 0x4747474747474747;
  return (*(v4 + 8 * v2))((v1 + 14) & 0xF, (v2 + 10670), v1 + v3 - 16, (v1 & 0x10) - 16, (v2 + 10670) ^ 0xBB7ALL, 979, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_1009D4474(__n128 a1, uint64_t a2, unsigned int a3)
{
  v5.n128_u64[0] = (v3 + 13) & 0xF;
  v5.n128_u64[1] = (v3 + 12) & 0xF;
  v6.n128_u64[0] = (v3 - 123 + a3 - 121) & 0xF;
  v6.n128_u64[1] = (v3 + 10) & 0xF;
  v7.n128_u64[0] = (v3 + 9) & 0xF;
  v7.n128_u64[1] = v3 & 0xF ^ 8;
  v10.val[0].i64[0] = (v3 + 7) & 0xF;
  v10.val[0].i64[1] = (v3 + 6) & 0xF;
  v10.val[1].i64[0] = (v3 + 5) & 0xF;
  v10.val[1].i64[1] = (v3 + 4) & 0xF;
  v10.val[2].i64[0] = (v3 + 3) & 0xFLL;
  v10.val[2].i64[1] = (v3 + 2) & 0xFLL;
  v10.val[3].i64[0] = (v3 + 1) & 0xFLL;
  v10.val[3].i64[1] = v3 & 0xF;
  v8.n128_u64[0] = 0xF5F5F5F5F5F5F5F5;
  v8.n128_u64[1] = 0xF5F5F5F5F5F5F5F5;
  return (*(*(v4 - 192) + 8 * ((4616 * (a3 < 0xF3FAA3AA)) ^ (a3 - 1302434161))))((v3 + 14) & 0xF, a3 - 1302413310 - (v3 & 0x10) - 23793, 23793 - (a3 - 1302413310), v3 + *(v4 - 184) - 16, v3 - 1, a3 - 1302413310, 31830, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v10, xmmword_100BC76B0), v8);
}

uint64_t sub_1009D4638()
{
  v3 = *(&off_1010A0B50 + v0 - 20857) - 1108338527;
  v4 = (*(v2 - 145) ^ 0xF5) + *(*(&off_1010A0B50 + v0 - 20472) + (*(v2 - 145) ^ 0xD4) - 1589028310) - 46;
  v5 = (~v4 | 0xFFFFFE00) & ((*(*(&off_1010A0B50 + ((v0 - 1119) ^ 0x51ED)) + (*(v2 - 147) ^ 0xD1) - 1284375218) << 16) ^ 0x35C25257) | v4 & 0xA8;
  v6 = ((((((2 * *(v2 - 146)) & 0xF4 ^ 0xB4) + (*(v2 - 146) ^ 0xA0)) ^ *(*(&off_1010A0B50 + ((v0 - 1119) ^ 0x5973)) + (*(v2 - 146) ^ 0x69) - 404252734)) << 8) ^ 0xCD76322) & (v5 ^ 0x813AD20) ^ v5 & 0x312802DD;
  v7 = *(v2 - 148) ^ 0xDBLL;
  v8 = (v3[v7] >> 4) | (16 * v3[v7]);
  LODWORD(v7) = ((v3[v7] >> 4) | (16 * v3[v7]));
  v9 = (((v8 ^ (v7 >> 3) ^ (v7 >> 2)) << 24) ^ 0x79742855) & (v6 ^ 0xC221D3A0);
  v10 = ((v1 ^ 0xFCB47A16) + 1361337275) ^ ((v1 ^ 0xA35EAD9B) + 248417336) ^ ((v1 ^ 0x38FECEEB) - 1787891896);
  v11 = *(*(v2 - 192) + 8 * (v0 - 1119));
  *(v2 - 200) = v10 + 74651274;
  return v11(474805091, v9, v6 & 0x18BD7AA ^ 0xFE43798B ^ v9, 1776551167, 2912681766);
}

uint64_t sub_1009D4BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  HIDWORD(a21) = a63 ^ LODWORD(STACK[0x3C4]);
  LODWORD(v345) = LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x380]);
  HIDWORD(v345) = a62 ^ LODWORD(STACK[0x32C]) ^ LODWORD(STACK[0x37C]);
  LODWORD(v346) = LODWORD(STACK[0x2F8]) ^ a72;
  LODWORD(a48) = a48 ^ a42 ^ a46 ^ a9 ^ HIDWORD(a42);
  v348 = a49 ^ HIDWORD(a48) ^ HIDWORD(a46) ^ HIDWORD(a44) ^ LODWORD(STACK[0x318]);
  LODWORD(STACK[0x3C4]) = 0;
  v349 = a78 ^ a73 ^ a50 ^ a44 ^ LODWORD(STACK[0x208]);
  LODWORD(STACK[0x208]) = LODWORD(STACK[0x204]) ^ a82 ^ HIDWORD(a50) ^ a45 ^ a71;
  LODWORD(STACK[0x2C4]) ^= LODWORD(STACK[0x2BC]) ^ HIDWORD(a51) ^ a79 ^ HIDWORD(a47);
  LODWORD(STACK[0x2D0]) ^= LODWORD(STACK[0x2C8]) ^ a52 ^ a81 ^ a54;
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x2D4]) ^ HIDWORD(a52) ^ LODWORD(STACK[0x20C]) ^ HIDWORD(a54);
  LODWORD(STACK[0x318]) = LODWORD(STACK[0x2EC]) ^ LODWORD(STACK[0x2E0]) ^ HIDWORD(a56) ^ a61 ^ LODWORD(STACK[0x228]);
  LODWORD(STACK[0x320]) = LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x240]);
  LODWORD(STACK[0x32C]) = LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x31C]) ^ a56 ^ a77 ^ LODWORD(STACK[0x230]);
  LODWORD(STACK[0x340]) = LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x328]) ^ HIDWORD(a58) ^ LODWORD(STACK[0x234]) ^ LODWORD(STACK[0x200]);
  LODWORD(STACK[0x330]) = a58 ^ LODWORD(STACK[0x23C]);
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x334]) ^ a55 ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x224]);
  LODWORD(STACK[0x380]) = HIDWORD(a61) ^ LODWORD(STACK[0x33C]) ^ HIDWORD(a14);
  v84 = *(v83 - 112);
  HIDWORD(v346) = a7;
  *(v83 - 212) = a7 - 1617297620;
  v85 = (((-1100934795 * (v84 ^ 0x78) - 1518592445) ^ 0x82C32678 ^ (((-1100934795 * (v84 ^ 0x78) - 1518592445) ^ 0x82C32678) % ((a7 - 1617297620) ^ 0x72D5u))) + 1359850268) ^ 0xBE769892;
  v86 = v85 - 697012916;
  v87 = (v85 - 1018902550) ^ (v85 - 697012916) ^ 0xF744A665;
  v88 = v85 - v87 - 2045435043;
  v89 = STACK[0x390];
  v90 = *(STACK[0x390] + 4 * (2407 * (v84 ^ 0x9D) + 16078760 - 8512 * (((8073247 * (2407 * (v84 ^ 0x9Du) + 16078760)) >> 32) >> 4)));
  HIDWORD(v91) = v90 ^ 0x2588FE0;
  LODWORD(v91) = v90 ^ 0x55555555;
  LODWORD(STACK[0x338]) = v91 >> 27;
  v92 = v87 - v85;
  LOBYTE(v85) = (v85 - 22) ^ (v85 + 76) ^ 0x65 ^ *(v83 - 111);
  v93 = (-1100934795 * v85 - 1518592445) ^ v87;
  v94 = v86 ^ 0x247D0A9 ^ (v92 - v88 + ((v93 % 0x101) ^ v93) + 8705959 - 2 * ((v92 - v88 + ((v93 % 0x101) ^ v93) + 1352220325) & 0x4B75EE5F ^ (v92 - v88 + ((v93 % 0x101) ^ v93) + 8705959) & 1) - 1685432996);
  v95 = (v94 - 1018902550) ^ v86;
  v96 = v92 - v94 + 1127835843;
  v97 = v88 + v94;
  v94 -= 697012916;
  v98 = v95 ^ v94;
  v99 = v97 - v98 - 1658069954;
  LODWORD(STACK[0x334]) = 2407 * (v85 ^ 0x51) + 16694952 - 8512 * (((8073247 * (2407 * (v85 ^ 0x51u) + 16694952)) >> 32) >> 4);
  v100 = v96 + v98;
  LOBYTE(v85) = v98 ^ *(v83 - 110);
  v101 = v100 - v99 + 1454894526 + ((((-1100934795 * v85 - 1518592445) ^ v98) % 0x101) ^ (-1100934795 * v85 - 1518592445) ^ v98);
  v102 = v94 ^ 0x83D943DA ^ (v101 - ((2 * v101 - 1701549796) & 0x95D6FA5A) - 1741311557);
  v103 = v102 - 697012916;
  v104 = (v102 - 1018902550) ^ v94 ^ (v102 - 697012916);
  v105 = v99 + v102 - v104 + 1976150318;
  LODWORD(STACK[0x328]) = 2407 * (v85 ^ 0x80) - 8512 * ((504578 * (2407 * (v85 ^ 0x80u))) >> 32);
  v106 = v100 - v102 - 1987799186 + v104;
  LOBYTE(v85) = v104 ^ *(v83 - 109);
  v107 = v106 - v105 - 449909470 + ((((-1100934795 * v85 - 1518592445) ^ v104) % 0x101) ^ (-1100934795 * v85 - 1518592445) ^ v104);
  v108 = v103 ^ 0xF004B5BC ^ (v107 - ((2 * v107 + 1226665516) & 0x726D1696) + 1573208673);
  v109 = (v108 - 1018902550) ^ v103;
  v110 = v106 - v108;
  v111 = 1010636358 - v105 - (v106 - v108);
  v112 = v109 ^ v111;
  v113 = *(v82 + 4337 * (v85 ^ 0xFE) + 13383982 - 4992 * (((13765921 * (4337 * (v85 ^ 0xFEu) + 13383982)) >> 32) >> 4));
  v114 = v105 + v108 - v112 - 130470291;
  HIDWORD(v91) = v113 ^ 3;
  LODWORD(v91) = ~v113 << 24;
  LODWORD(STACK[0x33C]) = v91 >> 28;
  v115 = v110 + 547610883 + v112;
  LOBYTE(v105) = v112 ^ *(v83 - 108);
  v116 = v115 - v114 + 1193396318 + ((((-1100934795 * v105 - 1518592445) ^ v112) % 0x101) ^ (-1100934795 * v105 - 1518592445) ^ v112);
  v117 = v111 ^ 0x58039015 ^ (v116 - ((2 * v116 + 659501792) & 0x22635DC4) - 1529264046);
  v118 = v117 - 697012916;
  v119 = (v117 - 1018902550) ^ v111 ^ (v117 - 697012916);
  v120 = v114 + v117 - v119 - 1638718335;
  v121 = 2407 * ((((2 * (v105 - 58)) & 0x74) + ((v105 - 58) ^ 0x3A)) ^ 0xFA) + 16078760;
  v122 = *(v89 + 4 * (v121 - 8512 * (((8073247 * v121) >> 32) >> 4)));
  HIDWORD(v91) = v122 ^ 0x2588FE0;
  LODWORD(v91) = v122 ^ 0x55555555;
  v123 = v91 >> 27;
  v124 = v115 - v117 - 413477986 + v119;
  LOBYTE(v117) = v119 ^ *(v83 - 107);
  v125 = v124 - v120 + 784622061 + ((((-1100934795 * v117 - 1518592445) ^ v119) % 0x101) ^ (-1100934795 * v117 - 1518592445) ^ v119);
  v126 = v118 ^ 0x4B5DF1CF ^ (v125 - ((2 * v125 + 15172064) & 0x4DF9E70) - 555511768);
  v127 = (v126 - 1018902550) ^ v118;
  v128 = v124 - v126 + 1460969222;
  v129 = v120 + v126;
  v126 -= 697012916;
  v130 = v127 ^ v126;
  v131 = v129 - v130 + 567243481;
  LODWORD(STACK[0x31C]) = 2407 * (v117 ^ 0x51) + 16694952 - 8512 * (((8073247 * (2407 * (v117 ^ 0x51u) + 16694952)) >> 32) >> 4);
  v132 = (-1100934795 * (v130 ^ *(v83 - 106)) - 1518592445) ^ v130;
  v133 = v128 + v130 - v131 - 1897329296 + ((v132 % 0x101) ^ v132);
  v134 = v126 ^ 0x12909A39 ^ (v133 - ((2 * v133 - 2130660648) & 0xB745499C) + 472055354);
  v135 = (v134 - 1018902550) ^ v126;
  v136 = v128 + v130 - v134 + 774931873;
  v137 = v131 + v134;
  v134 -= 697012916;
  v138 = v135 ^ v134;
  v139 = v137 - v138 - 882952320;
  LODWORD(STACK[0x2EC]) = 2407 * ((v130 ^ *(v83 - 106)) ^ 0x5A) - 8512 * ((504578 * (2407 * ((v130 ^ *(v83 - 106)) ^ 0x5Au))) >> 32);
  v140 = v136 + v138;
  LOBYTE(v128) = v138 ^ *(v83 - 105);
  v141 = v140 - v139 + 1333358328 + ((((-1100934795 * v128 - 1518592445) ^ v138) % 0x101) ^ (-1100934795 * v128 - 1518592445) ^ v138);
  v142 = v134 ^ 0x56CDF4FB ^ (v141 - ((2 * v141 + 757740510) & 0x3FFF9418) + 915727355);
  v143 = (v142 - 1018902550) ^ v134;
  v144 = v140 - v142;
  v145 = v139 + v142;
  v146 = 1295772885 - v139 - v144;
  v147 = v143 ^ v146;
  v148 = v145 - v147 + 1985326857;
  v149 = *(v82 + 4337 * (v128 ^ 0x21) + 13383982 - 4992 * (((13765921 * (4337 * (v128 ^ 0x21u) + 13383982)) >> 32) >> 4));
  HIDWORD(v91) = v149 ^ 3;
  LODWORD(v91) = ~v149 << 24;
  LODWORD(STACK[0x324]) = v91 >> 28;
  v150 = v144 + 1275309817 + v147;
  LOBYTE(v149) = v147 ^ *(v83 - 104);
  v151 = v150 - v148 - 1537844856 + ((((-1100934795 * v149 - 1518592445) ^ v147) % 0x101) ^ (-1100934795 * v149 - 1518592445) ^ v147);
  v152 = v146 ^ 0x366BCA2E ^ (v151 - ((2 * v151 - 889110730) & 0xFEB3E9B2) - 455437196);
  v153 = (v152 - 1018902550) ^ v146;
  v154 = v150 - v152;
  v155 = 261442263 - v148;
  v156 = v148 + v152;
  v157 = v155 - v154;
  v158 = v153 ^ (v155 - v154);
  v159 = v156 - v158 - 859145785;
  v160 = *(v89 + 4 * (2407 * (v149 ^ 0x29) + 16078760 - 8512 * (((8073247 * (2407 * (v149 ^ 0x29u) + 16078760)) >> 32) >> 4)));
  HIDWORD(v91) = v160 ^ 0x2588FE0;
  LODWORD(v91) = v160 ^ 0x55555555;
  v161 = v91 >> 27;
  v162 = v154 + 1084784358 + v158;
  LOBYTE(v149) = v158 ^ *(v83 - 103);
  v163 = v162 - v159 + 1138636527 + ((((-1100934795 * v149 - 1518592445) ^ v158) % 0x101) ^ (-1100934795 * v149 - 1518592445) ^ v158);
  v164 = v157 ^ 0x37B01F3F ^ (v163 - ((2 * v163 - 1759356286) & 0xFD044390) + 1242779401);
  v165 = v162 - v164 + 1180417743;
  v166 = 2407 * (v149 ^ 0x16) + 16694952 - 8512 * (((8073247 * (2407 * (v149 ^ 0x16u) + 16694952)) >> 32) >> 4);
  v167 = v159 + v164;
  v168 = v164 - 697012916;
  v169 = (v164 - 1018902550) ^ v157 ^ (v164 - 697012916);
  v170 = v165 + v169;
  v171 = v167 - v169;
  LOBYTE(v157) = v169 ^ *(v83 - 102);
  v172 = (-1100934795 * v157 - 1518592445) ^ v169;
  v171 += 10419284;
  v173 = v82;
  v174 = v168 ^ 0x60262BFF ^ (v170 - v171 + ((v172 % 0x101) ^ v172) - 64198351 - 2 * ((v170 - v171 + ((v172 % 0x101) ^ v172) + 53023201) & 0x29141509 ^ (v170 - v171 + ((v172 % 0x101) ^ v172) - 64198351) & 1) + 1880145336);
  v175 = (v174 - 1018902550) ^ v168 ^ (v174 - 697012916);
  v176 = v171 + v174 - v175 + 1885346662;
  v177 = 2407 * (v157 ^ 0xF6) - 8512 * ((504578 * (2407 * (v157 ^ 0xF6u))) >> 32);
  v178 = v170 - v174 - 2016225397 + v175;
  v179 = v175 ^ *(v83 - 101);
  v180 = (-1100934795 * v179 - 1518592445) ^ v175;
  v181 = (v174 - 697012916) ^ 0x7C31BEF1 ^ (v178 - v176 + ((v180 % 0x101) ^ v180) - 775763928 - 2 * ((v178 - v176 + ((v180 % 0x101) ^ v180) - 450050584) & 0x35038017 ^ (v178 - v176 + ((v180 % 0x101) ^ v180) - 775763928) & 0x11) + 141393350);
  v182 = v178 - v181;
  v183 = 1547039128 - v176 - v182;
  v184 = v176 + v181;
  v185 = (v181 - 1018902550) ^ (v174 - 697012916) ^ v183;
  v186 = v184 - v185 - 525318286;
  v187 = v182 - 497083810 + v185;
  LOBYTE(v174) = v185 ^ *(v83 - 100);
  v188 = (-1100934795 * v174 - 1518592445) ^ v185;
  v189 = v183 ^ 0x924B78CE ^ (v187 - v186 + ((v188 % 0x101) ^ v188) - 127030942 + ~(2 * ((v187 - v186 + ((v188 % 0x101) ^ v188) + 485778216) & 0x5B79463B ^ (v187 - v186 + ((v188 % 0x101) ^ v188) - 1394043324) & 2)));
  v190 = (v189 - 1018902550) ^ v183;
  v191 = 2407 * (v174 ^ 0x66) + 16078760 - 8512 * (((8073247 * (2407 * (v174 ^ 0x66u) + 16078760)) >> 32) >> 4);
  v192 = v187 - v189 + 1313394454;
  v193 = v186 + v189;
  v189 -= 697012916;
  v194 = v190 ^ v189;
  v195 = v193 - (v190 ^ v189) - 835367764;
  v196 = v192 + v194;
  v197 = (-1100934795 * (v194 ^ *(v83 - 99)) - 1518592445) ^ v194;
  v198 = v196 - v195 - 692551683 + ((v197 % 0x101) ^ v197);
  v199 = v189 ^ 0xC2B85B08 ^ (v198 - ((2 * v198 + 524132826) & 0x1714CBFE) - 886491412);
  v200 = v199 - 697012916;
  v201 = (v199 - 1018902550) ^ v189 ^ (v199 - 697012916);
  LOBYTE(v189) = (v199 - 22) ^ v189 ^ (v199 + 76) ^ *(v83 - 98);
  v202 = 2407 * (v189 ^ 0x82) - 8512 * ((504578 * (2407 * (v189 ^ 0x82u))) >> 32);
  v203 = *(v173 + 4337 * (v179 ^ 0x14) + 13383982 - 4992 * (((13765921 * (4337 * (v179 ^ 0x14u) + 13383982)) >> 32) >> 4));
  HIDWORD(v91) = v203 ^ 3;
  LODWORD(v91) = ~v203 << 24;
  v204 = v91 >> 28;
  v205 = v195 + v199 - v201 - 1158883928;
  v206 = v196 - v199 + 2139563667 + v201;
  v207 = v206 - v205 + 1865266989 + ((((-1100934795 * v189 - 1518592445) ^ v201) % 0x101) ^ (-1100934795 * v189 - 1518592445) ^ v201);
  v208 = (v199 - 697012916) ^ 0x70FAD2E2 ^ (v207 - ((2 * v207 + 940274172) & 0x7391D82A) - 1781619437);
  v209 = *(v89 + 4 * v191);
  LOBYTE(v191) = v208 + 76;
  v210 = (v208 - 1018902550) ^ v200 ^ (v208 - 697012916);
  LOBYTE(v200) = (v208 - 22) ^ v200 ^ (v208 + 76) ^ *(v83 - 97);
  HIDWORD(v91) = v209 ^ 0x2588FE0;
  LODWORD(v91) = v209 ^ 0x55555555;
  v211 = v91 >> 27;
  v212 = v210 - (v208 + v205) + 1271900015;
  v213 = v206 - v208 + 158973881;
  v214 = *(v89 + 4 * LODWORD(STACK[0x334]));
  v215 = *(v89 + 4 * LODWORD(STACK[0x328]));
  v216 = *(v89 + 4 * LODWORD(STACK[0x31C]));
  v217 = *(v89 + 4 * LODWORD(STACK[0x2EC]));
  v218 = *(v89 + 4 * v166);
  v219 = *(v89 + 4 * v177);
  v220 = *(v89 + 4 * (2407 * ((v194 ^ *(v83 - 99)) ^ 0x41) + 16694952 - 8512 * (((8073247 * (2407 * ((v194 ^ *(v83 - 99)) ^ 0x41u) + 16694952)) >> 32) >> 4)));
  v221 = *(v89 + 4 * v202);
  v222 = v213 + v210;
  v223 = v212 + v222 + 1203082838 + ((((-1100934795 * v200 - 1518592445) ^ v210) % 0x101) ^ (-1100934795 * v200 - 1518592445) ^ v210);
  LOBYTE(v223) = (v191 ^ 0xDD ^ (v223 - ((2 * v223 - 78) & 0x54) + 3)) - 22;
  LOBYTE(v89) = v223 ^ v191 ^ (v212 - v222 + 75 + v223 - ((2 * (v212 - v222 + 75 + v223) + 4) & 8) + 14);
  v224 = *(v173 + 4337 * (v200 ^ 0xAB) + 13383982 - 4992 * (((13765921 * (4337 * (v200 ^ 0xABu) + 13383982)) >> 32) >> 4));
  HIDWORD(v91) = v224 ^ 3;
  LODWORD(v91) = ~v224 << 24;
  v225 = HIDWORD(a21) ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x338]) ^ v214 ^ (4 * LODWORD(STACK[0x338]) * LODWORD(STACK[0x338])) ^ 0x8D9BDE64 ^ v215;
  v226 = v345 ^ LODWORD(STACK[0x39C]) ^ v123 ^ v216 ^ (4 * v123 * v123) ^ 0x4491AA67 ^ v217;
  v227 = HIDWORD(v345) ^ LODWORD(STACK[0x39C]) ^ v161 ^ v218 ^ (4 * v161 * v161) ^ 0xAB28805D ^ v219;
  v228 = v346 ^ LODWORD(STACK[0x39C]) ^ v211 ^ v220 ^ (4 * v211 * v211) ^ 0xEDC1EE09 ^ v221;
  v229 = *(v83 - 208);
  v230 = *(v83 - 248);
  v231 = STACK[0x370];
  v232 = *(v83 - 232);
  v233 = a48 ^ *(v229 + 4 * HIBYTE(v225)) ^ *(v230 + 4 * BYTE1(v227)) ^ *(STACK[0x370] + 4 * (v226 ^ LODWORD(STACK[0x324]))) ^ 0xE65C4CD7 ^ *(v232 + 4 * BYTE2(v228));
  v234 = v348 ^ *(v232 + 4 * BYTE2(v225)) ^ *(v229 + 4 * HIBYTE(v226)) ^ *(STACK[0x370] + 4 * (v227 ^ v204)) ^ 0x7ED466BD ^ *(v230 + 4 * BYTE1(v228));
  v235 = v225 ^ LODWORD(STACK[0x33C]);
  v236 = HIDWORD(a55) ^ HIDWORD(a53) ^ a47 ^ HIDWORD(a45) ^ a43 ^ *(v232 + 4 * BYTE2(v226)) ^ *(v230 + 4 * BYTE1(v225)) ^ *(v229 + 4 * HIBYTE(v227)) ^ 0xEF1A9982 ^ *(STACK[0x370] + 4 * (v228 ^ (v91 >> 28)));
  v237 = a75 ^ *(v232 + 4 * BYTE2(v227)) ^ *(v230 + 4 * BYTE1(v226)) ^ *(STACK[0x370] + 4 * v235) ^ 0x202922D3 ^ *(v229 + 4 * HIBYTE(v228));
  v238 = a64 ^ *(v229 + 4 * HIBYTE(v233)) ^ *(v232 + 4 * BYTE2(v237)) ^ *(STACK[0x370] + 4 * v234) ^ 0x258C1D28 ^ *(v230 + 4 * BYTE1(v236));
  v239 = a68 ^ *(v229 + 4 * HIBYTE(v234)) ^ *(v230 + 4 * BYTE1(v237)) ^ *(v232 + 4 * BYTE2(v233)) ^ 0xDF95DD5D ^ *(STACK[0x370] + 4 * v236);
  v240 = a76 ^ *(v232 + 4 * BYTE2(v234)) ^ *(v230 + 4 * BYTE1(v233)) ^ *(STACK[0x370] + 4 * v237) ^ 0x68A8066B ^ *(v229 + 4 * HIBYTE(v236));
  v241 = LODWORD(STACK[0x210]) ^ *(v229 + 4 * HIBYTE(v237)) ^ *(v230 + 4 * BYTE1(v234)) ^ *(STACK[0x370] + 4 * v233) ^ 0x19A2C607 ^ *(v232 + 4 * BYTE2(v236));
  v242 = a67 ^ a66 ^ HIDWORD(a49) ^ a53 ^ HIDWORD(a43) ^ *(v229 + 4 * HIBYTE(v238)) ^ *(v232 + 4 * BYTE2(v241)) ^ *(v230 + 4 * BYTE1(v240)) ^ *(STACK[0x370] + 4 * v239) ^ 0x116AAC5;
  v243 = a69 ^ *(v229 + 4 * HIBYTE(v240)) ^ *(v232 + 4 * BYTE2(v239)) ^ *(v230 + 4 * BYTE1(v238)) ^ *(STACK[0x370] + 4 * v241) ^ 0xDE5A2A8C;
  v244 = v349 ^ *(v229 + 4 * HIBYTE(v239)) ^ *(v232 + 4 * BYTE2(v238)) ^ *(v230 + 4 * BYTE1(v241)) ^ *(STACK[0x370] + 4 * v240) ^ 0x6344F860;
  v245 = LODWORD(STACK[0x208]) ^ *(v229 + 4 * HIBYTE(v241)) ^ *(v230 + 4 * BYTE1(v239)) ^ *(v232 + 4 * BYTE2(v240)) ^ *(STACK[0x370] + 4 * v238) ^ 0xB02FFA48;
  v246 = LODWORD(STACK[0x284]) ^ *(v230 + 4 * BYTE1(v243)) ^ *(v229 + 4 * HIBYTE(v242)) ^ *(v232 + 4 * BYTE2(v245)) ^ *(STACK[0x370] + 4 * v244) ^ 0x6C76F7D8;
  v247 = LODWORD(STACK[0x2C4]) ^ *(v229 + 4 * HIBYTE(v244)) ^ *(v232 + 4 * BYTE2(v242)) ^ *(v230 + 4 * BYTE1(v245)) ^ *(STACK[0x370] + 4 * v243) ^ 0xF7862A46;
  v248 = LODWORD(STACK[0x2D0]) ^ *(v232 + 4 * BYTE2(v244)) ^ *(v229 + 4 * HIBYTE(v243)) ^ *(v230 + 4 * BYTE1(v242)) ^ *(STACK[0x370] + 4 * v245) ^ 0x394448D9;
  v249 = LODWORD(STACK[0x2F8]) ^ *(v229 + 4 * HIBYTE(v245)) ^ *(v232 + 4 * BYTE2(v243)) ^ *(v230 + 4 * BYTE1(v244)) ^ *(STACK[0x370] + 4 * v242) ^ 0x2BDCCBCF;
  v250 = LODWORD(STACK[0x318]) ^ *(v229 + 4 * HIBYTE(v247)) ^ *(v232 + 4 * BYTE2(v246)) ^ *(STACK[0x370] + 4 * v248) ^ *(v230 + 4 * BYTE1(v249)) ^ 0xB715579B;
  v251 = LODWORD(STACK[0x214]) ^ *(v229 + 4 * HIBYTE(v246)) ^ *(STACK[0x370] + 4 * v247) ^ *(v232 + 4 * BYTE2(v249)) ^ *(v230 + 4 * BYTE1(v248)) ^ 0xA46D3386;
  v252 = LODWORD(STACK[0x320]) ^ *(v232 + 4 * BYTE2(v247)) ^ *(v229 + 4 * HIBYTE(v248)) ^ *(v230 + 4 * BYTE1(v246)) ^ *(STACK[0x370] + 4 * v249) ^ 0xCF573EE7;
  v253 = LODWORD(STACK[0x35C]) ^ *(v232 + 4 * BYTE2(v248)) ^ *(v229 + 4 * HIBYTE(v249)) ^ *(v230 + 4 * BYTE1(v247)) ^ *(STACK[0x370] + 4 * v246) ^ 0x4054AFE0;
  v254 = LODWORD(STACK[0x32C]) ^ *(v229 + 4 * HIBYTE(v251)) ^ *(v232 + 4 * BYTE2(v253)) ^ *(v230 + 4 * BYTE1(v252)) ^ *(STACK[0x370] + 4 * v250) ^ 0xA970B1F0;
  v255 = a70 ^ *(v229 + 4 * HIBYTE(v250)) ^ *(v232 + 4 * BYTE2(v251)) ^ *(v230 + 4 * BYTE1(v253)) ^ *(STACK[0x370] + 4 * v252) ^ 0x8AD6BB29;
  v256 = LODWORD(STACK[0x27C]) ^ *(v229 + 4 * HIBYTE(v253)) ^ *(v230 + 4 * BYTE1(v250)) ^ *(v232 + 4 * BYTE2(v252)) ^ *(STACK[0x370] + 4 * v251) ^ 0xC454AFAD;
  v257 = LODWORD(STACK[0x340]) ^ *(v229 + 4 * HIBYTE(v252)) ^ *(v230 + 4 * BYTE1(v251)) ^ *(v232 + 4 * BYTE2(v250)) ^ *(STACK[0x370] + 4 * v253) ^ 0xCF0B19F7;
  v258 = a74 ^ *(v229 + 4 * HIBYTE(v254)) ^ *(v232 + 4 * BYTE2(v256)) ^ *(v230 + 4 * BYTE1(v257)) ^ *(STACK[0x370] + 4 * v255) ^ 0xF1D697F5;
  v259 = HIDWORD(a60) ^ *(v229 + 4 * HIBYTE(v255)) ^ *(v230 + 4 * BYTE1(v256)) ^ *(v232 + 4 * BYTE2(v254)) ^ *(STACK[0x370] + 4 * v257) ^ 0xA4694F1A;
  v260 = LODWORD(STACK[0x330]) ^ *(v229 + 4 * HIBYTE(v257)) ^ *(v232 + 4 * BYTE2(v255)) ^ *(v230 + 4 * BYTE1(v254)) ^ *(STACK[0x370] + 4 * v256) ^ 0x9CBEED38;
  v261 = LODWORD(STACK[0x3B0]) ^ *(v229 + 4 * HIBYTE(v256)) ^ *(v232 + 4 * BYTE2(v257)) ^ *(v230 + 4 * BYTE1(v255)) ^ *(STACK[0x370] + 4 * v254) ^ 0x62C6770A;
  v262 = LODWORD(STACK[0x21C]) ^ *(v229 + 4 * HIBYTE(v258)) ^ *(v232 + 4 * BYTE2(v261)) ^ *(v230 + 4 * BYTE1(v260)) ^ *(STACK[0x370] + 4 * (BYTE4(a60) ^ *(v229 + 4 * HIBYTE(v255)) ^ *(v230 + 4 * BYTE1(v256)) ^ *(v232 + 4 * BYTE2(v254)) ^ *(STACK[0x370] + 4 * v257) ^ 0x1Au)) ^ 0x9E91A2DF;
  v263 = LODWORD(STACK[0x37C]) ^ *(v232 + 4 * BYTE2(v258)) ^ *(v229 + 4 * HIBYTE(v259)) ^ *(STACK[0x370] + 4 * v260) ^ *(v230 + 4 * BYTE1(v261)) ^ 0xD6FEC974;
  v264 = a65 ^ *(v229 + 4 * HIBYTE(v260)) ^ *(v232 + 4 * BYTE2(v259)) ^ *(STACK[0x370] + 4 * v261) ^ *(v230 + 4 * BYTE1(v258)) ^ 0xD4F97374;
  v265 = LODWORD(STACK[0x380]) ^ *(v229 + 4 * HIBYTE(v261)) ^ *(v232 + 4 * BYTE2(v260)) ^ *(v230 + 4 * BYTE1(v259)) ^ *(STACK[0x370] + 4 * v258) ^ 0xB0F515A8;
  v266 = *(v229 + 4 * HIBYTE(v263)) ^ LODWORD(STACK[0x220]) ^ *(v232 + 4 * BYTE2(v262));
  v267 = *(v230 + 4 * BYTE1(v265));
  v268 = -1930000007 - (((v267 ^ 0x471D94DE) - 1193120990) ^ ((v267 ^ 0x36A3D226) - 916705830) ^ ((v267 ^ 0xB668650D) + 1234672371));
  v269 = (v268 ^ 0x2AB200C3) & (2 * (v268 & 0xAB335292)) ^ v268 & 0xAB335292;
  v270 = ((2 * (v268 ^ 0x7A9281E7)) ^ 0xA343A6EA) & (v268 ^ 0x7A9281E7) ^ (2 * (v268 ^ 0x7A9281E7)) & 0xD1A1D374;
  v271 = (v270 ^ 0x81018240) & (4 * v269) ^ v269;
  v272 = ((4 * (v270 ^ 0x50A05115)) ^ 0x46874DD4) & (v270 ^ 0x50A05115) ^ (4 * (v270 ^ 0x50A05115)) & 0xD1A1D374;
  v273 = (v272 ^ 0x40814140) & (16 * v271) ^ v271;
  v274 = ((16 * (v272 ^ 0x91209221)) ^ 0x1A1D3750) & (v272 ^ 0x91209221) ^ (16 * (v272 ^ 0x91209221)) & 0xD1A1D350;
  v275 = v273 ^ 0xD1A1D375 ^ (v274 ^ 0x10011300) & (v273 << 8);
  v276 = v268 ^ v267 ^ ((((v266 ^ 0x65DCA489) - 1963678262) ^ ((v266 ^ 0xB5ABA15A) + 1518575643) ^ ((v266 ^ 0x18DB4E15) - 135049386)) - (((v266 ^ v267 ^ 0xD7D9C18E) + 955367631) ^ ((v266 ^ v267 ^ 0xBA715ABD) + 1431919614) ^ ((v266 ^ v267 ^ 0x62D2F300) - 1912933823)) - 1194451219) ^ (2 * ((v275 << 16) & 0x51A10000 ^ v275 ^ ((v275 << 16) ^ 0x53750000) & (((v274 ^ 0xC1A0C025) << 8) & 0x51A10000 ^ 0x50200000 ^ (((v274 ^ 0xC1A0C025) << 8) ^ 0x21D30000) & (v274 ^ 0xC1A0C025))));
  v277 = (((v266 ^ 0x3F27F1) - 283695438) ^ ((v266 ^ 0xCA450992) + 627902675) ^ ((v266 ^ 0x2D665A5) - 302095130)) - 694226214 + (((v276 ^ 0x719B4595) + 1606529692) ^ ((v276 ^ 0x417BD928) + 1864445479) ^ ((v276 ^ 0x5D044B30) + 1935588415));
  v278 = *(v232 + 4 * BYTE2(v263));
  v279 = (((LODWORD(STACK[0x36C]) ^ 0x5FAA722E) + 899553830) ^ ((LODWORD(STACK[0x36C]) ^ 0x34E0C96) + 1769628830) ^ ((LODWORD(STACK[0x36C]) ^ 0xFDFF63F1) - 1748300805)) + (((v278 ^ 0x5B42E46F) - 1531110511) ^ ((v278 ^ 0x63BE112F) - 1673400623) ^ ((v278 ^ 0xFF818057) + 8290217)) + ((2 * ((v278 ^ 0x23C5AEA0) & (LODWORD(STACK[0x36C]) ^ 0x211B1D49) ^ STACK[0x36C] & 0x64B8DBB7)) ^ 0xBFCFCDFD) + 790782467;
  v280 = LODWORD(STACK[0x22C]) ^ *(v229 + 4 * HIBYTE(v262)) ^ *(v232 + 4 * BYTE2(v265)) ^ *(v230 + 4 * BYTE1(v264)) ^ *(STACK[0x370] + 4 * v263) ^ 0x3B83A5EA;
  v281 = *(STACK[0x370] + 4 * v264) ^ v277 ^ ((v277 ^ 0x2CF3D78E) - 1829931627) ^ ((v277 ^ 0x1F100524) - 1592875201) ^ ((v277 ^ 0x8DFD46B0) + 870573227) ^ ((v277 ^ 0xFFFFC9FF) + 1105292262) ^ 0xD42DA353;
  v282 = LODWORD(STACK[0x368]) ^ *(v229 + 4 * HIBYTE(v264)) ^ *(STACK[0x370] + 4 * v265) ^ *(v230 + 4 * BYTE1(v262)) ^ v279 ^ ((v279 ^ 0x483CCBF5) - 2062068187) ^ ((v279 ^ 0x6CFC5907) - 1579694889) ^ ((v279 ^ 0x68FF8F23) - 1512828173) ^ ((v279 ^ 0x7EEB7FFF) - 1279204817) ^ 0x4012F14D;
  v283 = LODWORD(STACK[0x258]) ^ LODWORD(STACK[0x344]) ^ *(v229 + 4 * HIBYTE(v265)) ^ *(v232 + 4 * BYTE2(v264)) ^ *(v230 + 4 * BYTE1(v263)) ^ *(STACK[0x370] + 4 * v262) ^ 0xBCFDA521;
  v284 = *(v83 - 224);
  v285 = *(v83 - 256);
  v286 = LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x25C]) ^ LODWORD(STACK[0x2B8]) ^ HIDWORD(a28) ^ a25 ^ LODWORD(STACK[0x294]) ^ a16 ^ HIDWORD(a15) ^ a15 ^ LODWORD(STACK[0x278]) ^ a19 ^ LODWORD(STACK[0x274]) ^ HIDWORD(a17) ^ *(*(v83 - 240) + 4 * HIBYTE(v282) - 0x110B7AE779858CBBLL) ^ *(v284 + 4 * BYTE1(v280)) ^ *(v285 + 4 * v283 - 0x773A4D19D25F5F4CLL) ^ *(STACK[0x3D8] + 4 * BYTE2(v281));
  v287 = *(v83 - 240);
  v288 = LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x244]) ^ LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x2F4]) ^ a26 ^ HIDWORD(a16) ^ LODWORD(STACK[0x29C]) ^ a17 ^ HIDWORD(a25) ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x274]) ^ HIDWORD(a17) ^ *(STACK[0x3D8] + 4 * BYTE2(v283)) ^ *(v287 + 4 * HIBYTE(v280) - 0x110B7AE779858CBBLL) ^ *(v284 + 4 * BYTE1(v282)) ^ 0x83161A2E ^ *(v285 + 4 * v281 - 0x773A4D19D25F5F4CLL);
  v289 = LODWORD(STACK[0x274]) ^ HIDWORD(a17);
  v290 = HIDWORD(a9) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x254]) ^ LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x2B4]) ^ LODWORD(STACK[0x358]) ^ LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x2A8]) ^ a27 ^ LODWORD(STACK[0x298]) ^ HIDWORD(a18) ^ a18 ^ HIDWORD(a26) ^ LODWORD(STACK[0x278]) ^ a19 ^ v289 ^ *(v284 + 4 * BYTE1(v283)) ^ *(STACK[0x3D8] + 4 * BYTE2(v280)) ^ *(v285 + 4 * v282 - 0x773A4D19D25F5F4CLL) ^ 0xEBEB1F5 ^ *(v287 + 4 * HIBYTE(v281) - 0x110B7AE779858CBBLL);
  v291 = LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x218]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x264]) ^ LODWORD(STACK[0x260]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x364]) ^ LODWORD(STACK[0x384]) ^ LODWORD(STACK[0x2B8]) ^ HIDWORD(a36) ^ a28 ^ LODWORD(STACK[0x2A0]) ^ a20 ^ HIDWORD(a19) ^ HIDWORD(a27) ^ LODWORD(STACK[0x278]) ^ a19 ^ v289 ^ *(v287 + 4 * HIBYTE(v283) - 0x110B7AE779858CBBLL) ^ *(STACK[0x3D8] + 4 * BYTE2(v282)) ^ *(v285 + 4 * v280 - 0x773A4D19D25F5F4CLL) ^ 0x3A7E3A82 ^ *(v284 + 4 * BYTE1(v281));
  v292 = STACK[0x288];
  LODWORD(v91) = __ROR4__(LODWORD(STACK[0x2B0]) ^ *(a59 + 4 * ((v286 ^ 0xBD063A2E) >> 16)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v290)) ^ *(a24 + 4 * BYTE1(v291)) ^ *(STACK[0x288] + 4 * v288) ^ 0x1A6BDC53, 16);
  v293 = *(a59 + 4 * BYTE2(v291)) ^ HIDWORD(a29) ^ *(a24 + 4 * BYTE1(v288)) ^ *(STACK[0x3C8] + 4 * ((v286 ^ 0xBD063A2E) >> 24)) ^ *(STACK[0x288] + 4 * v290);
  v294 = a31 ^ *(STACK[0x3C8] + 4 * HIBYTE(v291)) ^ *(a59 + 4 * BYTE2(v288)) ^ *(a24 + 4 * BYTE1(v290)) ^ *(STACK[0x288] + 4 * (v286 ^ 0x2Eu)) ^ 0xDF1584B9;
  v295 = a41 ^ *(STACK[0x3C8] + 4 * HIBYTE(v288)) ^ *(a59 + 4 * BYTE2(v290)) ^ *(a24 + 4 * ((v286 ^ 0x3A2E) >> 8)) ^ *(STACK[0x288] + 4 * v291) ^ 0x5E940752;
  LODWORD(v91) = __ROR4__(v91 ^ 0xE5D1667F, 16);
  v296 = LODWORD(STACK[0x2CC]) ^ *(STACK[0x3C8] + 4 * HIBYTE(v295)) ^ *(STACK[0x288] + 4 * v294) ^ *(a24 + 4 * ((v293 ^ 0x1C45) >> 8)) ^ 0x89B03078 ^ *(a59 + 4 * ((v91 ^ 0xDA365FCD) >> 16));
  v297 = *(a59 + 4 * BYTE2(v295)) ^ HIDWORD(a30) ^ *(STACK[0x3C8] + 4 * HIBYTE(v294)) ^ *(STACK[0x288] + 4 * (v293 ^ 0x45u)) ^ *(a24 + 4 * ((v91 ^ 0x5FCD) >> 8));
  v298 = LODWORD(STACK[0x2FC]) ^ *(a59 + 4 * ((v293 ^ 0x96141C45) >> 16)) ^ *(a24 + 4 * BYTE1(v294)) ^ *(STACK[0x288] + 4 * v295) ^ 0xA37F64EE ^ *(STACK[0x3C8] + 4 * ((v91 ^ 0xDA365FCD) >> 24));
  v299 = LODWORD(STACK[0x300]) ^ *(a59 + 4 * BYTE2(v294)) ^ *(a24 + 4 * BYTE1(v295)) ^ *(STACK[0x3C8] + 4 * (HIBYTE(v293) ^ 0xA7)) ^ 0x19041F24 ^ *(STACK[0x288] + 4 * (v91 ^ 0xCDu));
  v300 = HIDWORD(a31) ^ *(a59 + 4 * BYTE2(v296)) ^ *(STACK[0x3C8] + 4 * (HIBYTE(v297) ^ 0x94)) ^ *(a24 + 4 * BYTE1(v298)) ^ *(STACK[0x288] + 4 * ((LOBYTE(STACK[0x300]) ^ *(a59 + 4 * BYTE2(v294)) ^ *(a24 + 4 * BYTE1(v295)) ^ *(STACK[0x3C8] + 4 * (HIBYTE(v293) ^ 0xA7))) ^ 0x24u ^ *(STACK[0x288] + 4 * (v91 ^ 0xCDu)))) ^ 0xA656BB3A;
  v301 = HIDWORD(a33) ^ *(STACK[0x3C8] + 4 * HIBYTE(v296)) ^ *(STACK[0x288] + 4 * (v297 ^ 0xAAu)) ^ *(a59 + 4 * BYTE2(v298)) ^ *(a24 + 4 * BYTE1(v299)) ^ 0x831A6605;
  v302 = LODWORD(STACK[0x2AC]) ^ *(a59 + 4 * BYTE2(v299)) ^ *(a24 + 4 * ((v297 ^ 0xF3AA) >> 8)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v298)) ^ *(STACK[0x288] + 4 * v296) ^ 0x2BD757B4;
  v303 = LODWORD(STACK[0x378]) ^ *(STACK[0x3C8] + 4 * HIBYTE(v299)) ^ *(a59 + 4 * ((v297 ^ 0x4E85F3AA) >> 16)) ^ *(a24 + 4 * BYTE1(v296)) ^ *(STACK[0x288] + 4 * v298) ^ 0x6A3EF59C;
  v304 = a33 ^ *(STACK[0x3C8] + 4 * HIBYTE(v300)) ^ *(a24 + 4 * BYTE1(v302)) ^ *(a59 + 4 * BYTE2(v301)) ^ *(STACK[0x288] + 4 * (LOBYTE(STACK[0x378]) ^ *(STACK[0x3C8] + 4 * HIBYTE(v299)) ^ *(a59 + 4 * ((v297 ^ 0x4E85F3AA) >> 16)) ^ (*(a24 + 4 * BYTE1(v296)) ^ *(STACK[0x288] + 4 * v298)) ^ 0x9Cu)) ^ 0x99212C82;
  v305 = a35 ^ *(STACK[0x3C8] + 4 * HIBYTE(v301)) ^ *(a59 + 4 * BYTE2(v302)) ^ *(a24 + 4 * BYTE1(v303)) ^ *(STACK[0x288] + 4 * v300) ^ 0x21D647CA;
  v306 = LODWORD(STACK[0x308]) ^ *(a59 + 4 * BYTE2(v303)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v302)) ^ *(STACK[0x288] + 4 * v301) ^ *(a24 + 4 * (v300 >> (v89 & 8) >> (v89 & 8 ^ 8))) ^ 0x2F06ABD7;
  v307 = LODWORD(STACK[0x378]) ^ HIDWORD(a35) ^ *(STACK[0x3C8] + 4 * HIBYTE(v303)) ^ *(a59 + 4 * BYTE2(v300)) ^ *(a24 + 4 * BYTE1(v301)) ^ *(STACK[0x288] + 4 * v302) ^ 0x679A2AB4;
  v308 = a34 ^ *(STACK[0x3C8] + 4 * HIBYTE(v304)) ^ *(a59 + 4 * BYTE2(v305)) ^ *(a24 + 4 * BYTE1(v306)) ^ *(STACK[0x288] + 4 * v307) ^ 0x3F68E6AE;
  v309 = LODWORD(STACK[0x304]) ^ *(a24 + 4 * BYTE1(v307)) ^ *(a59 + 4 * BYTE2(v306)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v305)) ^ *(STACK[0x288] + 4 * v304) ^ 0x9681A506;
  v310 = LODWORD(STACK[0x2C0]) ^ *(a59 + 4 * BYTE2(v307)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v306)) ^ *(STACK[0x288] + 4 * v305) ^ *(a24 + 4 * BYTE1(v304)) ^ 0xC1D3E098;
  v311 = a37 ^ *(a59 + 4 * BYTE2(v304)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v307)) ^ *(a24 + 4 * BYTE1(v305));
  v312 = *(STACK[0x288] + 4 * v306) ^ 0xFEA47720;
  v313 = v311 ^ v312;
  v314 = LODWORD(STACK[0x30C]) ^ *(STACK[0x3C8] + 4 * HIBYTE(v309)) ^ *(a59 + 4 * BYTE2(v310)) ^ *(a24 + 4 * ((v311 ^ v312) >> 8)) ^ *(STACK[0x288] + 4 * v308) ^ 0xC4CADBD9;
  v315 = LODWORD(STACK[0x310]) ^ *(STACK[0x3C8] + 4 * HIBYTE(v310)) ^ *(a59 + 4 * BYTE2(v313)) ^ *(a24 + 4 * BYTE1(v308)) ^ *(STACK[0x288] + 4 * v309) ^ 0x3F6C053D;
  v316 = *(a59 + 4 * BYTE2(v309));
  v317 = LODWORD(STACK[0x314]) ^ *(a24 + 4 * BYTE1(v309)) ^ *(a59 + 4 * BYTE2(v308)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v313)) ^ *(STACK[0x288] + 4 * v310) ^ 0x9E67E6CE;
  v318 = LODWORD(STACK[0x348]) ^ v316 ^ *(a24 + 4 * BYTE1(v310)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v308)) ^ *(STACK[0x288] + 4 * v313) ^ 0xF9E2BD6C;
  v319 = *(a24 + 4 * BYTE1(v318)) ^ a30 ^ *(a59 + 4 * BYTE2(v317)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v315)) ^ *(STACK[0x288] + 4 * v314);
  v320 = *(STACK[0x3C8] + 4 * HIBYTE(v314)) ^ HIDWORD(a37) ^ *(a59 + 4 * BYTE2(v315)) ^ *(STACK[0x288] + 4 * v318) ^ *(a24 + 4 * BYTE1(v317));
  v321 = HIDWORD(a38) ^ *(STACK[0x288] + 4 * v317) ^ *(a24 + 4 * BYTE1(v315)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v318)) ^ *(a59 + 4 * BYTE2(v314)) ^ 0xE50986B6;
  v322 = a40 ^ *(STACK[0x3C8] + 4 * HIBYTE(v317)) ^ *(a24 + 4 * BYTE1(v314)) ^ *(a59 + 4 * BYTE2(v318)) ^ *(STACK[0x288] + 4 * v315) ^ 0x444E1E08;
  v323 = a38 ^ *(STACK[0x3C8] + 4 * (HIBYTE(v320) ^ 0x35)) ^ *(STACK[0x288] + 4 * ((BYTE4(a38) ^ *(STACK[0x288] + 4 * v317) ^ *(a24 + 4 * BYTE1(v315)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v318)) ^ *(a59 + 4 * BYTE2(v314))) ^ 0xB6u)) ^ *(a59 + 4 * ((v319 ^ 0xCB7959DD) >> 16)) ^ *(a24 + 4 * BYTE1(v322)) ^ 0x8339EF4A;
  v324 = a39 ^ *(STACK[0x3C8] + 4 * HIBYTE(v322)) ^ *(a59 + 4 * BYTE2(v321)) ^ *(a24 + 4 * ((v320 ^ 0xB23) >> 8)) ^ *(STACK[0x288] + 4 * (v319 ^ 0xDDu)) ^ 0xFB662591;
  v325 = HIDWORD(a40) ^ *(STACK[0x3C8] + 4 * (HIBYTE(v319) ^ 0x15)) ^ *(a59 + 4 * BYTE2(v322)) ^ *(a24 + 4 * BYTE1(v321)) ^ *(STACK[0x288] + 4 * (v320 ^ 0x23u)) ^ 0xCEAD0B9B;
  v326 = HIDWORD(a41) ^ *(STACK[0x3C8] + 4 * HIBYTE(v321)) ^ *(a59 + 4 * ((v320 ^ 0xFD840B23) >> 16)) ^ *(a24 + 4 * ((v319 ^ 0x59DD) >> 8)) ^ *(STACK[0x288] + 4 * v322) ^ 0x46821E2B;
  v327 = HIDWORD(a39) ^ *(a59 + 4 * BYTE2(v325)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v323)) ^ *(a24 + 4 * BYTE1(v324)) ^ *(STACK[0x288] + 4 * v326) ^ 0x3D840B23;
  v328 = a29 ^ a12 ^ *(STACK[0x3C8] + 4 * HIBYTE(v325)) ^ *(a59 + 4 * BYTE2(v324)) ^ *(a24 + 4 * BYTE1(v326)) ^ *(STACK[0x288] + 4 * v323) ^ 0x648EC82F;
  v329 = LODWORD(STACK[0x2A4]) ^ *(a59 + 4 * BYTE2(v326)) ^ *(STACK[0x3C8] + 4 * HIBYTE(v324)) ^ *(a24 + 4 * BYTE1(v323)) ^ *(STACK[0x288] + 4 * v325) ^ 0x8C857482;
  v330 = STACK[0x3D0];
  v331 = a51 ^ *(a59 + 4 * BYTE2(v323)) ^ *(a24 + 4 * BYTE1(v325)) ^ *(STACK[0x288] + 4 * v324) ^ *(STACK[0x3C8] + 4 * HIBYTE(v326)) ^ 0xC8B37E28;
  LODWORD(v89) = *(a80 + 4 * HIBYTE(v328));
  v332 = *(a80 + 4 * HIBYTE(v329));
  v333 = *(STACK[0x3D0] + 4 * BYTE1(v327));
  v334 = *(a1 + 4 * v328);
  LODWORD(v285) = *(STACK[0x3D0] + 4 * BYTE1(v328));
  v335 = a36 ^ HIDWORD(a20) ^ HIDWORD(a12) ^ *(STACK[0x3D0] + 4 * BYTE1(v329)) ^ *(STACK[0x268] + 4 * BYTE2(v328)) ^ *(a80 + 4 * HIBYTE(v327)) ^ *(a1 + 4 * v331) ^ 0x22203732;
  LODWORD(v284) = *(a1 + 4 * v329) ^ 0x22203732;
  v336 = HIDWORD(a32) ^ HIDWORD(a20) ^ HIDWORD(a12) ^ *(STACK[0x268] + 4 * BYTE2(v329)) ^ v89 ^ *(STACK[0x3D0] + 4 * BYTE1(v331)) ^ *(a1 + 4 * v327) ^ 0x22203732;
  v337 = a32 ^ HIDWORD(a20) ^ HIDWORD(a12) ^ *(STACK[0x268] + 4 * BYTE2(v327)) ^ *(a80 + 4 * HIBYTE(v331)) ^ v285 ^ v284;
  v338 = HIDWORD(a34) ^ HIDWORD(a20) ^ HIDWORD(a12) ^ *(STACK[0x268] + 4 * BYTE2(v331)) ^ v332 ^ v333 ^ v334 ^ 0x22203732;
  v339 = HIBYTE(v335);
  v340 = STACK[0x3B8];
  LOBYTE(v191) = *(STACK[0x3B8] + 4337 * (v336 ^ 0x77) + 16740820 - 4992 * (((13765921 * (4337 * (v336 ^ 0x77u) + 16740820)) >> 32) >> 4));
  LODWORD(STACK[0x3B0]) = HIBYTE(v337);
  LOBYTE(v284) = *(v340 + 4337 * (HIBYTE(v336) ^ 0x55) + 4449762 - 4992 * (((6882961 * (4337 * (HIBYTE(v336) ^ 0x55) + 4449762)) >> 32) >> 3));
  *(v83 - 105) = v191 ^ 0x5E;
  *(v83 - 108) = HIBYTE(v336) ^ 0xDE ^ v284;
  *(v83 - 104) = HIBYTE(v338) ^ 0x5F ^ *(v340 + 4337 * (HIBYTE(v338) ^ 0x1F) + 4449762 - 4992 * (((6882961 * (4337 * (HIBYTE(v338) ^ 0x1F) + 4449762)) >> 32) >> 3));
  v341 = v340;
  *(v83 - 109) = *(v340 + 4337 * (v335 ^ 0x35) + 16740820 - 4992 * (((13765921 * (4337 * (v335 ^ 0x35u) + 16740820)) >> 32) >> 4)) ^ 1;
  *(v83 - 106) = BYTE1(v336) ^ ((BYTE1(v336) ^ 0xC8) + 103) ^ 0x8E ^ *(v340 + 4337 * (BYTE1(v336) ^ 0x6B) + 19026419 - 4992 * (((13765921 * (4337 * (BYTE1(v336) ^ 0x6Bu) + 19026419)) >> 32) >> 4));
  LOBYTE(v173) = *(v340 + 4337 * (BYTE2(v335) ^ 0x79) + 11137416 - 4992 * (((13765921 * (4337 * (BYTE2(v335) ^ 0x79u) + 11137416)) >> 32) >> 4));
  *(v83 - 99) = *(v340 + 4337 * (BYTE2(v337) ^ 0xBF) + 11137416 - 4992 * (((13765921 * (4337 * (BYTE2(v337) ^ 0xBFu) + 11137416)) >> 32) >> 4)) ^ 0x5C;
  *(v83 - 111) = v173 ^ 0xAB;
  *(v83 - 102) = BYTE1(v338) ^ 0xD7 ^ ((BYTE1(v338) ^ 0xD7) + 103) ^ 0x54 ^ *(v340 + 4337 * (BYTE1(v338) ^ 0x74) + 19026419 - 4992 * (((13765921 * (4337 * (BYTE1(v338) ^ 0x74u) + 19026419)) >> 32) >> 4));
  *(v83 - 110) = BYTE1(v335) ^ ((BYTE1(v335) ^ 0xD9) + 103) ^ 0xB0 ^ *(v340 + 4337 * (BYTE1(v335) ^ 0x7A) + 19026419 - 4992 * (((13765921 * (4337 * (BYTE1(v335) ^ 0x7Au) + 19026419)) >> 32) >> 4));
  v342 = STACK[0x3D8];
  LOBYTE(v335) = *(v340 + 4337 * (v337 ^ 0xE7) + 16740820 - 4992 * (((13765921 * (4337 * (v337 ^ 0xE7u) + 16740820)) >> 32) >> 4));
  *(v83 - 107) = *(v340 + 4337 * BYTE2(v336) + 11137416 - 4992 * (((13765921 * (4337 * BYTE2(v336) + 11137416)) >> 32) >> 4)) ^ 0xA1;
  *(v83 - 97) = v335 ^ 0x33;
  *(v83 - 112) = v339 ^ *(v340 + 4337 * (v339 ^ 0x2C) + 4449762 - 4992 * (((6882961 * (4337 * (v339 ^ 0x2C) + 4449762)) >> 32) >> 3)) ^ 0xFE;
  LODWORD(v284) = STACK[0x3B0];
  *(v83 - 98) = BYTE1(v337) ^ ((BYTE1(v337) ^ 0x88) + 103) ^ 0x31 ^ *(v340 + 4337 * (BYTE1(v337) ^ 0x2B) + 19026419 - 4992 * (((13765921 * (4337 * (BYTE1(v337) ^ 0x2Bu) + 19026419)) >> 32) >> 4));
  *(v83 - 100) = v284 ^ *(v340 + 4337 * (v284 ^ 0x7C) + 4449762 - 4992 * (((6882961 * (4337 * (v284 ^ 0x7C) + 4449762)) >> 32) >> 3)) ^ 0x83;
  v343 = *(v83 - 208);
  *(v83 - 101) = *(v341 + 4337 * (v338 ^ 0x3B) + 16740820 - 4992 * (((13765921 * (4337 * (v338 ^ 0x3Bu) + 16740820)) >> 32) >> 4)) ^ 0x32;
  *(v83 - 103) = *(v341 + 4337 * (BYTE2(v338) ^ 0x28) + 11137416 - 4992 * (((13765921 * (4337 * (BYTE2(v338) ^ 0x28u) + 11137416)) >> 32) >> 4)) ^ 0x74;
  return (*(*(v83 - 200) + 8 * ((18175 * (HIDWORD(v346) > 0xF922127)) ^ (HIDWORD(v346) - 1617316279))))(4337, v343, a1, v230, v342, v231, v292, v330, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v345, v346, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a1, a58, a59, a60, a61);
}

uint64_t sub_1009D7CF8@<X0>(uint64_t a1@<X0>, int a2@<W4>, _DWORD *a3@<X8>)
{
  v16 = ((*(*v3 + (*a3 & v11)) ^ a2) & 0x7FFFFFFF) * v12;
  v17 = (v16 ^ HIWORD(v16)) * v12;
  *(v9 + a1) = *(v8 + a1) ^ *(v4 + (v17 >> 24)) ^ *((v17 >> 24) + v6 + 2) ^ *((v17 >> 24) + v5 + 4) ^ v17 ^ (BYTE3(v17) * v13) ^ v14;
  return (*(v10 + 8 * (((a1 == 0) * v15) ^ v7)))(a1 - 1);
}

uint64_t sub_1009D7D7C@<X0>(unsigned int a1@<W2>, int a2@<W3>, int a3@<W4>, int a4@<W5>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v62 = v51 ^ *(v52 + 8 * ((v60 & a5 | v59 & a4) ^ a1));
  *(v53 + 8 * (a2 ^ v57)) = v51 ^ *(v52 + 8 * ((v55 & a5 | v56 & v61) ^ a1));
  *(v53 + 8 * (v58 ^ v57)) = v62;
  return (*(a51 + 8 * (((a2 == 62) * a3) ^ v54)))();
}

uint64_t sub_1009D7E18()
{
  v3 = *(v2 + 688);
  *(v2 + 1088) = v3;
  return (*(v1 + 8 * (((((v3 == 0) ^ v0) & 1) * (v0 - 31396)) ^ v0)))();
}

uint64_t sub_1009D7E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v31 = *(v27 + 4 * ((0x9ED10ECD % (v29 >> 2)) & 0x3FFFFFFC));
  v32 = *(v30 + 8 * a12);
  v33 = *(v32 - 527405895);
  v34 = (a27 - 17253) ^ 0x8E72 ^ *(v27 + 4 * (((v29 >> 2) - 1) & v31));
  v35 = *(v30 + 8 * SHIDWORD(a11)) + 4 * v33;
  v36 = *(v35 - 1940437438);
  v38 = v34 & ~HIWORD(v31);
  v37 = v38 == 0;
  v39 = v38 + v38 * v36;
  v40 = v37;
  if (v37)
  {
    v41 = v36;
  }

  else
  {
    v41 = 0;
  }

  *(v35 - 1940437438) = (v39 + v41) * v36;
  *(v32 - 527405895) = (v33 + 1) % 6u;
  return (*(v28 + 8 * ((3608 * v40) ^ HIDWORD(a12))))(a1, -1940437438, a3, a4, a5, v36, v41, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1009D7F44(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v2 + 8 * (v1 - 245318928)))();
}

uint64_t sub_1009D7F78@<X0>(int a1@<W8>)
{
  v8 = 1022166737 * ((~(v7 - 232) & 0x1341B166 | (v7 - 232) & 0xECBE4E98) ^ 0xA95150F4);
  *(v7 - 224) = v6 - 19689 - v8 - 1450;
  *(v7 - 220) = ((v5 ^ 0xBFBECAE2) + 1920991072 + (((v6 - 31432) ^ 0x7F7DA7EF) & a1)) ^ v8;
  *(v1 + 2088) = v4;
  *(v1 + 2072) = v3;
  v9 = (*(v2 + 8 * ((v6 - 19689) ^ 0xAC5E)))(v7 - 232);
  return (*(STACK[0x5A0] + 8 * (v6 - 19689)))(v9);
}

uint64_t sub_1009D8030@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v18 = v11 + (v14 ^ (v7 ^ v15) ^ v9) * v10;
  v19 = *(v16 + 4 * (v18 - (((v18 * v12) >> 32) >> 12) * v13));
  *(a1 + 4 * v7) = a6 ^ a5 ^ v19 ^ a3 ^ a2 & (v19 >> 3);
  return (*(v17 + 8 * (((v8 == 0) * a4) ^ a7)))();
}

uint64_t sub_1009D81B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, __int16 a17, char a18, __int16 a19, char a20, int a21, int a22, char a23)
{
  v27 = 1012831759 * ((~(v26 - 152) & 0xB93798ED | (v26 - 152) & 0x46C86710) ^ 0xA9A48E67);
  *(v26 - 104) = v23 - v27 + 40274;
  *(v26 - 100) = ((((v25 ^ 0x1FB5E5D) - 33250909) ^ ((v25 ^ 0xB41ACAC6) + 1273312570) ^ (((((v23 + 33498) ^ 0xA8B4D463) - 1283464890) ^ v25) - 1546933130)) - 129675808) ^ v27;
  *(v26 - 112) = &a23;
  *(v26 - 120) = &a16;
  *(v26 - 128) = a15;
  *(v26 - 152) = &a18;
  *(v26 - 144) = &a20;
  v28 = (*(v24 + 8 * (v23 + 43095)))(v26 - 152);
  return (*(v24 + 8 * ((43036 * (*(v26 - 136) == -371865839)) ^ v23)))(v28);
}

uint64_t sub_1009D843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v20 - 136) = v19 + 1112314453 * (((~(v20 - 144) & 0x7D05F8CC) - (~(v20 - 144) | 0x7D05F8CD)) ^ 0x9253D214) + 17052;
  *(v20 - 144) = &a18;
  *(v20 - 128) = &a18;
  *(v20 - 120) = &a16;
  *(v20 - 112) = a13;
  *(v20 - 104) = a14;
  v21 = (*(v18 + 8 * (v19 + 33847)))(v20 - 144);
  return (*(v18 + 8 * (v19 + 3222)))(v21);
}

uint64_t sub_1009D8500@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + 8);
  v4[2] = v2;
  v4[54] = 0;
  LODWORD(STACK[0x5A4]) = -371865839;
  v4[46] = 0x1E1F0F237218496;
  return (*(v3 + 8 * (((v5 == 0) * ((v1 - 46343) ^ v1 ^ 0xB762)) ^ v1)))();
}

uint64_t sub_1009D86D0@<X0>(int a1@<W8>)
{
  v3 = (((v1 ^ 0xF44A2CC8) + 196465464) ^ ((v1 ^ 0xFF5EDE17) + 10559977) ^ ((v1 ^ 0xE2C135CE) + 490654258)) + 887128327;
  v4 = v3 == ((a1 - 593819763) & 0xC1043FFB ^ 0x4B0A02AD) || v3 == 1258952051;
  v5 = v4;
  v6 = v5 ^ 0x7F;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  return (*(v2 + 8 * ((13 * (v6 + v7 != 127)) ^ (a1 - 1650492219))))();
}

uint64_t sub_1009D887C()
{
  v3 = 634647737 * (((v0 | 0x442C253E) - v0 + (v0 & 0xBBD3DAC0)) ^ 0x29BA0AC2);
  *(v2 - 248) = STACK[0x1F58];
  *(v2 - 240) = 20983 - v3;
  *(v2 - 256) = v3 - 1431125376;
  v4 = (*(v1 + 415752))(v2 - 256);
  STACK[0x2038] = *(v1 + 35440);
  return (*(v1 + 60184))(v4);
}

uint64_t sub_1009D89C0(_BYTE *a1)
{
  a1[3] = v1 ^ 0xC0;
  a1[2] = BYTE1(v1) ^ 0x9B;
  a1[1] = BYTE2(v1) ^ 0x1B;
  *a1 = HIBYTE(v1) ^ 0x3B;
  a1[7] = v2 ^ 0xEF;
  a1[6] = BYTE1(v2) ^ 0xC5;
  a1[5] = BYTE2(v2) ^ 0x74;
  a1[4] = HIBYTE(v2) ^ 0x87;
  a1[11] = v3 ^ 0xC;
  a1[10] = BYTE1(v3) ^ 0x30;
  a1[9] = BYTE2(v3) ^ 0x46;
  a1[8] = HIBYTE(v3) ^ 0xF1;
  a1[15] = v4 ^ 0xF0;
  a1[14] = BYTE1(v4) ^ 0x7B;
  a1[13] = BYTE2(v4) ^ 0x91;
  a1[12] = HIBYTE(v4) ^ 0xD6;
  return (*(v6 + 8 * (v5 ^ 0x37B7)))();
}

uint64_t sub_1009D8A84()
{
  v4 = *(v2 + 64);
  v3 = *(v2 + 68);
  *(v2 + 56) = 8 * v3 - ((16 * v3) & 0xBF) + 95;
  *(v2 + 57) = (v3 >> 5) - ((v3 >> 5 << ((v0 + 39) ^ 1)) & 0xBE) + 95;
  *(v2 + 58) = (v3 >> 13) - ((v3 >> 12) & 0xBE) + 95;
  *(v2 + 59) = (v3 >> 21) - ((v3 >> 20) & 0xBE) + 95;
  *(v2 + 60) = (__PAIR64__(v4, v3) >> 29) - ((2 * (__PAIR64__(v4, v3) >> 29)) & 0xBF) + 95;
  *(v2 + 61) = (v4 >> 5) - ((v4 >> 4) & 0xBE) + 95;
  *(v2 + 62) = (v4 >> 13) - ((v4 >> 12) & 0xBE) + 95;
  return (*(v1 + 8 * v0))();
}

uint64_t sub_1009D8B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  LODWORD(a47) = 0;
  v55 = v53 - 15927;
  LODWORD(a50) = (((v52 ^ 0x6DBA3566) - 344362038) ^ ((v52 ^ 0x23686A2) - 2064269298) ^ ((v52 ^ 0xB9C86DAC) + 1057696516)) - 610625527;
  HIDWORD(a10) = 15245 * (v55 ^ 0x46FA) + 740392490;
  LODWORD(a48) = v51[4];
  LODWORD(a51) = v51[5];
  LODWORD(a45) = v51[7];
  LODWORD(a46) = v51[8];
  LODWORD(a43) = v51[13];
  LODWORD(a44) = v51[10];
  LODWORD(a49) = 1905316711;
  return (*(v54 + 8 * v55))(a1, a2, a3, v51[2], v51[15], v51[1], a7, v51[6], a9, a10, &STACK[0x290], a12, v51, v51, v51, v51, v51, v51, v51, v51, v51, v51, v51, v51, v51, v51, v51, v51, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a4);
}

uint64_t sub_1009D8C98@<X0>(int a1@<W8>)
{
  v2 = *(v1 + 8 * a1);
  LODWORD(STACK[0x2F8]) = -371865839;
  return v2();
}

uint64_t sub_1009D8D38@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, char a8@<W8>)
{
  STACK[0x4F0] = a1 - 1;
  v23 = ((2 * (v11 ^ v21)) ^ (v12 + v17)) & (v11 ^ v21) ^ (2 * (v11 ^ v21)) & v18;
  v24 = (v23 ^ v19) & (4 * ((v14 & (2 * v11) ^ v16) & v11)) ^ (v14 & (2 * v11) ^ v16) & v11;
  v25 = v11 ^ (2 * ((v20 ^ (4 * v23)) & v23 & (16 * v24) ^ v24));
  v26 = (((v25 ^ a4) + a5) ^ ((v25 ^ a6) + a7) ^ ((v25 ^ v13) + a8)) + v8;
  *(v22 + a1 - 1) = v26 * (v11 + a3) + (v26 * v9 + (v11 + a3) * v10) * a2 + 60;
  return (*(v15 + 8 * (((16 * (STACK[0x4F0] != 0)) | (32 * (STACK[0x4F0] != 0))) ^ v12)))();
}

uint64_t sub_1009D8DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v10 = (*(v8 + 8 * (v9 ^ 0x52C0u)))(v7, va, 32, 1536) != 0;
  return (*(v8 + 8 * ((v10 * ((v9 - 30565) ^ 0x220A)) ^ v9)))();
}

uint64_t sub_1009D8E40@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v22 = (v10 ^ v9);
  v23 = *(v18 + 4 * (v14 + (v22 ^ v12) * v13 - ((((v14 + (v22 ^ v12) * v13) * v15) >> 32) >> 3) * a1));
  *(v21 + 4 * v10) = v19 ^ ((v22 ^ a2) + v17 + (((v23 ^ a7) + a8) ^ ((v23 ^ a5) + a6) ^ ((a3 ^ v23) + a4)));
  return (*(v16 + 8 * (((v11 == 0) * v20) ^ a9)))();
}

void sub_1009D8F4C(uint64_t a1)
{
  v1 = *(a1 + 24) - 906386353 * ((2 * (a1 & 0x5595B649) - a1 - 1435874890) ^ 0x9B6B8492);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1009D9050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, int a62, unint64_t *a63)
{
  a61 = v68;
  a62 = 20;
  a63 = &STACK[0x208];
  a64 = &a56;
  a65 = 1;
  a66 = &STACK[0x210];
  a67 = 32;
  *(v70 - 132) = (v67 + 14237) ^ (1112314453 * ((((v70 - 144) | 0xA7132002) - ((v70 - 144) | 0x58ECDFFD) + 1491918845) ^ 0x48450ADB));
  *(v70 - 144) = &a59;
  v71 = (*(v69 + 8 * (v67 + 45895)))(v70 - 144);
  return (*(v69 + 8 * ((11152 * (*(v70 - 136) == ((v67 - 457386544) & 0x1B435ADC ^ 0xE9D58D85))) ^ v67)))(v71);
}

uint64_t sub_1009D913C@<X0>(uint64_t a1@<X8>)
{
  *(v5 - 244) = (v1 - 1650492344) ^ (1012831759 * (((v3 | 0xB47EA74E) - (v3 | 0x4B8158B1) + 1266768049) ^ 0xA4EDB1C4));
  *(v5 - 256) = a1;
  v6 = (*(v4 + 8 * (v1 ^ 0x62601B31)))(v5 - 256);
  *(v2 + 128) = 0x7E666516A39B34A6;
  return (*(v4 + 8 * (v1 - 1650495608)))(v6);
}

void sub_1009D93C0(uint64_t a1)
{
  v1 = *a1 - 193924789 * ((((2 * a1) | 0x2C95790E) - a1 + 1773486969) ^ 0x20F18EE1);
  v2 = *(a1 + 8);
  v3 = (*(v2 + 16) >> 3) & 0x3F;
  *(v2 + 24 + v3) = 57;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1009D953C@<X0>(uint64_t a1@<X7>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = v2;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_1009D962C@<X0>(int a1@<W8>)
{
  v7 = v4 + v2 > a1;
  if (a1 < v1 != v4 > v3)
  {
    v7 = v4 > v3;
  }

  return (*(v6 + 8 * (((8 * !v7) | (32 * !v7)) ^ v5)))();
}

uint64_t sub_1009D9678@<X0>(unint64_t a1@<X8>)
{
  v7 = 155453101 * ((((v6 - 232) | 0xC07ED875) + (~(v6 - 232) | 0x3F81278A)) ^ 0x2658C3BB);
  *(v6 - 216) = v4 - v7 - 17260;
  *(v6 - 212) = (v3 - ((2 * v3) & 0xADE12D36) + 1458607771) ^ v7;
  *(v6 - 200) = v7 ^ 0xB84B89A0;
  STACK[0x1CD0] = a1;
  STACK[0x1CC0] = v5;
  *(v6 - 232) = ((((v2 ^ 0x585928E3) - 1482238179) ^ ((v2 ^ 0x70BE2277) - 1891508855) ^ ((v4 ^ 0x62866E49) + (v2 ^ 0x9D79E940))) - 1107073305) ^ v7;
  STACK[0x1CB0] = v1;
  v8 = STACK[0x3A8];
  (*(STACK[0x3A8] + 8 * (v4 ^ 0xB492)))(v6 - 232);
  return (*(v8 + 8 * v4))(0xFF53A90FB55653FELL);
}

uint64_t sub_1009D97BC()
{
  STACK[0x360] = 0;
  v3 = STACK[0x200];
  v4 = STACK[0x200] <= 0x800000000C9168CCLL;
  STACK[0x368] = &STACK[0x460];
  v4 = !v4 || v3 < (v1 + 33622) - v0 - 0x7FFFFFFFF36F4AACLL;
  v5 = v4;
  return (*(v2 + 8 * ((v5 * (((v1 + 1287540308) & 0xFFFBDFDB) - 1287254379)) ^ v1)))();
}

uint64_t sub_1009D9884()
{
  STACK[0x360] = 0;
  STACK[0x368] = &STACK[0x460];
  v2 = *(v1 + 8 * (((*(*(STACK[0x300] + 32) + 24) == STACK[0x300]) * ((v0 + 1786105495) & 0x958A236E ^ 0x8251)) ^ v0));
  STACK[0x308] = STACK[0x300];
  return v2();
}

uint64_t sub_1009D990C@<X0>(int a1@<W2>, uint64_t a2@<X3>, int a3@<W8>)
{
  v5 = v4[396] ^ ((((((a3 + 1144120547) | 0x8884C02) + 0x80000000) ^ (a3 + 1287270629)) & v4[623] | *v4 & 0x7FFFFFFE) >> 1);
  v4[623] = (v5 - ((2 * v5) & 0x8C9CE976) + a1) ^ *(a2 + 4 * (*v4 & 1));
  return (*(v3 + 8 * ((27649 * (LODWORD(STACK[0x41C]) > 0x26F)) ^ a3)))();
}

uint64_t sub_1009D9BBC(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v16 = v8 + (v13 ^ (v4 ^ a4) ^ v6) * v7;
  *(a1 + 4 * v4) = v11 ^ *(v14 + 4 * (v16 - (((v16 * v9) >> 32) >> 12) * v10));
  return (*(v15 + 8 * (((v5 == 0) * a2) ^ v12)))();
}

uint64_t sub_1009D9D68@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v33 = (((v31 ^ 0x6977) + 15881) ^ 0x8D12D8FA) + a1;
  v34 = *(v30 + 8 * (v31 + 24870));
  *(v32 - 240) = v29;
  v35 = v34(v33);
  v42 = *(v32 - 248);
  if ((*(v32 - 240) & 4) != 0)
  {
    v42 = v35;
  }

  if ((*(v32 - 240) & 4) == 0)
  {
    a15 = v35;
  }

  return (*(v30 + 8 * ((((v42 | a15) == 0) * (2306 * (v31 ^ 0x6977) - 11521)) | v31)))(v35, v42, v36, v37, v38, v39, v40, v41, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1009D9DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x1058]) = 0;
  *(v8 - 176) = (a8 & 0x52C1FFFF) - 37366;
  v10 = *(v8 - 168);
  LODWORD(STACK[0x1030]) = (v10[1] ^ ((a8 & 0x52C1FFFF) - 37456)) + 2 * (v10[1] & 0xF) + 120;
  v11 = (v10[6] ^ 0x5D) + ((2 * v10[6]) & 0xFFBAu) - 9;
  LODWORD(STACK[0x1040]) = (v10[5] ^ 0xFFFFFFF9) + ((2 * v10[5]) & 0xFFF3) + 95;
  return (*(v9 + 8 * (a8 & 0x52C1FFFF)))(a1, (v10[4] ^ 0x63) + ((2 * v10[4]) & 0xFFC7u) - 64, v10, 222, v10, v11, a7, ((2 * v10[3]) & 0x74) + (v10[3] ^ 0x3Au));
}

uint64_t sub_1009D9EE4()
{
  v5 = *(&STACK[0x224] + v0 + 72);
  v6 = ((902 * (v1 ^ 0x54D0) - 310792529) ^ v0) + ((2 * v0) & 0xDAF3FF70);
  *(v3 + v6 + 310771783) = (HIBYTE(v5) ^ 0x1D) - ((2 * (HIBYTE(v5) ^ 0x1D)) & 0xBF) + 95;
  *(v3 + v6 + 310771784) = (BYTE2(v5) ^ 0x7C) - ((2 * (BYTE2(v5) ^ 0x7C)) & 0xBF) + 95;
  *(v3 + v6 + 310771785) = (BYTE1(v5) ^ 0x86) - ((2 * (BYTE1(v5) ^ 0x86)) & 0xBF) + 95;
  *(v3 + v6 + 310771786) = v5 ^ 0x23;
  return (*(v4 + 8 * ((((LODWORD(STACK[0x280]) + ~(v0 + 4)) >> 32) * v2) ^ v1)))();
}

uint64_t sub_1009DA000(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v14.val[0].i64[0] = (v10 + a3 - 1) & 0xF;
  v14.val[0].i64[1] = (v10 + a3 + v11 + 2) & 0xF;
  v14.val[1].i64[0] = (v10 + a3 + 13) & 0xF;
  v14.val[1].i64[1] = (v10 + a3 + 12) & 0xF;
  v14.val[2].i64[0] = (v10 + a3 + 11) & 0xF;
  v14.val[2].i64[1] = (v10 + a3 + 10) & 0xF;
  v14.val[3].i64[0] = (v10 + a3 + 9) & 0xF;
  v14.val[3].i64[1] = (v10 + a3) & 0xF ^ 8;
  *(a4 + a3) = veor_s8(veor_s8(veor_s8(*(v8 + v14.val[0].i64[0] - 7), *(a4 + a3)), veor_s8(*(v14.val[0].i64[0] + v7 - 6), *(v9 + v14.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v14, a6), a7)));
  return (*(v12 + 8 * (((a2 == a3) * a5) ^ a1)))();
}

uint64_t sub_1009DA104()
{
  v3 = *(v1 + 8 * v0);
  LODWORD(STACK[0x3E0]) = (v2 - 18534) | 0x29A;
  LODWORD(STACK[0x3C0]) = v2 - 34902;
  LODWORD(STACK[0x3B0]) = v2 - 24811;
  LODWORD(STACK[0x3D0]) = v2 - 1349554580;
  v4 = (v2 + 2115394185) & 0x81E99F57;
  LODWORD(STACK[0x380]) = v4;
  LODWORD(STACK[0x390]) = v4 ^ 0xE9D54556;
  return v3(0xFF53A90FB55653FELL);
}

uint64_t sub_1009DA298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0xEA8]) = 0;
  LODWORD(STACK[0xE20]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDB0]) = 0;
  LODWORD(STACK[0xD28]) = 0;
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
  v9 = STACK[0xE88] - 14045;
  STACK[0xD48] = v6 ^ 0xBF542833;
  STACK[0xC88] = v8 ^ 0xBB6EEF716CE8A42CLL;
  v10 = *(v7 + 8 * v9);
  LODWORD(STACK[0xE18]) = 1;
  LODWORD(STACK[0xDF0]) = 1;
  LODWORD(STACK[0xDE8]) = 1;
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD98]) = 1;
  LODWORD(STACK[0xDF8]) = 1;
  LODWORD(STACK[0xDA8]) = 1;
  LODWORD(STACK[0xD18]) = 1;
  LODWORD(STACK[0xD10]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  LODWORD(STACK[0xDE0]) = 1;
  LODWORD(STACK[0xD00]) = 1;
  LODWORD(STACK[0xD08]) = 1;
  LODWORD(STACK[0xDA0]) = 1;
  LODWORD(STACK[0xE08]) = 1;
  return v10(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184, a6, &off_1010A0B50, 12602655);
}

uint64_t sub_1009DA3E0()
{
  v3 = (*(v1 + 8 * (v0 + 2537)))(1032) == 0;
  *(v2 - 212) = v0 - 19703;
  return (*(v1 + 8 * ((v3 * ((v0 - 19703) ^ 0x73D0)) | v0)))();
}

void sub_1009DA48C(uint64_t a1)
{
  v1 = *(a1 + 16) + 1022166737 * (a1 ^ 0xBA10E192);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1009DA5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, _DWORD *a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  *a10 = v17;
  *a11 = a15;
  return (*(v16 + 8 * (v15 + 2638)))();
}

uint64_t sub_1009DA71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 - 248) = 0;
  v16 = *(v14 + 8 * (a5 - 31809));
  return v16(a1, a2, v16, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void sub_1009DA800(uint64_t a1)
{
  v1 = 634647737 * ((a1 - 2 * (a1 & 0x508F3EC6) - 795918650) ^ 0xBD19113A);
  v2 = *(a1 + 32) + v1;
  if (*(a1 + 24))
  {
    v3 = *(a1 + 40) == 0;
  }

  else
  {
    v3 = 1;
  }

  v7 = v3 || (*a1 ^ v1) == 317118873 || *(a1 + 16) == 0 || *(a1 + 8) == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1009DA8FC(uint64_t a1, uint64_t a2)
{
  v5 = v2 - 1135546798;
  if ((v2 - 1135546798) <= 0x40)
  {
    v5 = 64;
  }

  return (*(v4 + 8 * ((v3 - 19280) ^ (1954 * ((v5 - v2 + 1135546798) < 0x1F)))))(a1, a2, 0);
}

uint64_t sub_1009DAA44()
{
  *(v3 - 256) = (1603510583 * ((v1 - 2 * (v1 & 0x18BD2E20) + 415051302) ^ 0x8F661C8D)) ^ 0x810B;
  v4 = (*(v2 + 416392))(v3 - 256);
  LODWORD(STACK[0x1364]) = *(v3 - 252);
  v5 = STACK[0x11F8];
  STACK[0x2418] = STACK[0x11F8];
  v6 = STACK[0xC84];
  LODWORD(STACK[0x2420]) = STACK[0xC84];
  LODWORD(STACK[0x140C]) = v0;
  STACK[0x15D8] = 0x217E172EFA1E81CLL;
  STACK[0x9D0] = 0;
  if (v5)
  {
    v7 = v6 == v0;
  }

  else
  {
    v7 = 1;
  }

  v10 = v7 || STACK[0x1AD8] == 0 || STACK[0x14A0] == 0;
  return (*(v2 + 8 * ((498 * v10) ^ 0xC0E1u)))(v4);
}

uint64_t sub_1009DAB64@<X0>(int a1@<W8>)
{
  v10 = ((((a1 + 915244943) & 0xC9725F7D) + (v2 ^ 0x2A8C499C) - 713858317) ^ ((v2 ^ 0xA4DEFC09) + 1528890359) ^ (((a1 + 1736902176) ^ v2) - 1736929924)) + 1311902843;
  v11 = (v3 + (((v10 ^ 0x2873C2AD) - 1278183366) ^ v10 ^ ((v10 ^ 0x2D6A8594) - 1228325119) ^ ((v10 ^ 0x9ABA5DAD) + 18474810) ^ ((v10 ^ 0xFBFF5FFF) + v5) ^ v7));
  v12 = *v11;
  v13 = ((((v11 ^ v1) & 0x7FFFFFFF) * v4) ^ ((((v11 ^ v1) & 0x7FFFFFFF) * v4) >> 16)) * v4;
  v14 = *(STACK[0x388] + (v13 >> 24)) ^ v12 ^ *(STACK[0x398] + (v13 >> 24)) ^ *((v13 >> 24) + STACK[0x390] + 3) ^ v13 ^ ((v13 >> 24) * v6);
  return (*(v9 + 8 * ((86 * ((((v14 ^ 0xFE) + 10) ^ ((v14 ^ v8) - 113) ^ ((v14 ^ 0x87) + 113)) == 120)) ^ (a1 - 2518))))();
}

uint64_t sub_1009DAF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  v35 = (*a32 + a14);
  v36 = *v35;
  v37 = (((((v35 ^ v34) & 0x7FFFFFFF) * v32) >> ((a12 ^ 0x51) - 15)) ^ (((v35 ^ v34) & 0x7FFFFFFF) * v32)) * v32;
  v38 = v37 >> ((-91 * (a12 ^ 0x51)) ^ 0xE3u);
  v39 = *(&off_1010A0B50 + a12 - 31067) - 579625171;
  v40 = *(&off_1010A0B50 + a12 - 29712) - 2076177714;
  v41 = *(&off_1010A0B50 + (a12 ^ 0x85B7)) - 1048392095;
  v42 = v39[v38] ^ v36 ^ v40[v38] ^ v41[v38 + 5] ^ v37 ^ (-83 * v38);
  v43 = (*a32 + a13);
  LOBYTE(v37) = *v43;
  v44 = ((((v43 ^ v34) & 0x7FFFFFFF) * v32) ^ ((((v43 ^ v34) & 0x7FFFFFFF) * v32) >> 16)) * v32;
  LOBYTE(v41) = v39[v44 >> 24] ^ v37 ^ v40[v44 >> 24] ^ v44 ^ v41[(v44 >> 24) + 5] ^ (-83 * BYTE3(v44));
  return (*(v33 + 8 * ((60 * (((v41 | (v42 << 8)) - 2 * ((v41 & 0x1F | (v42 << 8) & 0x781F) ^ v41 & 9)) == 0)) ^ a12)))();
}

void sub_1009DB230(uint64_t a1)
{
  v1 = *(a1 + 28) + 634647737 * (((a1 | 0xBD685D91) - (a1 | 0x4297A26E) + 1117233774) ^ 0xD0FE726D);
  v2 = (v1 - 1352446982) | 0x1448u;
  v4 = (&v3 & 0xBBB6BABBABDABD70) + (((v2 - 0x3B182230D59C9EC0) ^ *(a1 + 16)) & 0x92A42A12A28A2921) + (((v2 - 0x3B182230D59C9EC0) ^ *(a1 + 16)) & 0x291290A909509454) + 2 * (((v2 - 0x3B182230D59C9EC0) ^ *(a1 + 16)) & &v3 & 0x4449454454254288) + (((&v3 & 0x4449454454254288) - (((v2 - 0x3B182230D59C9EC0) ^ *(a1 + 16)) & 0x444945445425428ALL) + 0x8928A88A84A8514) & 0x444945445425428ALL);
  v3 = ((2 * v4) & 0x47B771E2) + (v4 ^ 0xA3DBB8F1);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1009DB438()
{
  *(&STACK[0x414] + v5) = (v1 ^ 0x92) + *(v2 + v0 - 1595864867) - ((2 * *(v2 + v0 - 1595864867)) & 0xBF) + 51;
  v9 = v3 > 0x47E97A81 && v2 - 389381284 >= v3 || (v2 - 1595864862) > 0xF;
  return (*(v6 + 8 * ((v9 * v4) ^ v1)))();
}

uint64_t sub_1009DB4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ++LODWORD(STACK[0xEC8]);
  STACK[0xDE8] = v8 + 8;
  v11 = *(v9 + 8 * (v7 - 8320));
  STACK[0xDE0] = v10;
  return v11(a1, STACK[0xDF0], a3, a4, a5, STACK[0xDC8], a7, STACK[0xDB8]);
}

uint64_t sub_1009DB518(uint64_t a1)
{
  v4 = STACK[0xED0];
  v5 = STACK[0xED0] + 5473;
  STACK[0xEC8] = v1;
  return (*(v3 + 8 * v4))(a1, *(v2 - 184 + 8 * ((v5 ^ 0xFFFFFFFFCA464E02) + v1)));
}

uint64_t sub_1009DB5B4(uint64_t a1, double a2, double a3, double a4, double a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  STACK[0x4A0] = *(v15 + v17 - 8);
  v25.i64[0] = v15 + v17 - 7;
  v25.i64[1] = v15 + v17 - 8;
  v26.i64[0] = v15 + v17 - 3;
  v26.i64[1] = v15 + v17 - 4;
  v27.i64[0] = v15 + v17 - 1;
  v27.i64[1] = v15 + v17 - 2;
  v28 = v27;
  *&STACK[0x480] = v27;
  v27.i64[0] = v15 + v17 + v16;
  v27.i64[1] = v15 + v17 - 6;
  *&STACK[0x490] = v27;
  v29.i64[0] = v14 + v17 + 3;
  v29.i64[1] = v14 + v17 + 2;
  v30.i64[0] = v14 + v17 + 7;
  v30.i64[1] = v14 + v17 + 6;
  v31 = *&STACK[0x380];
  v32 = vandq_s8(v27, *&STACK[0x380]);
  v33 = vandq_s8(v28, *&STACK[0x380]);
  v34 = vandq_s8(v26, *&STACK[0x380]);
  v35 = vandq_s8(v25, *&STACK[0x380]);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0x440]);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0x440]);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x440]);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0x440]);
  v40 = vaddq_s64(vsubq_s64(vorrq_s8(v39, *&STACK[0x430]), vorrq_s8(v39, *&STACK[0x360])), *&STACK[0x360]);
  v41 = vaddq_s64(vsubq_s64(vorrq_s8(v38, *&STACK[0x430]), vorrq_s8(v38, *&STACK[0x360])), *&STACK[0x360]);
  v42 = vaddq_s64(vsubq_s64(vorrq_s8(v37, *&STACK[0x430]), vorrq_s8(v37, *&STACK[0x360])), *&STACK[0x360]);
  v43 = vaddq_s64(vsubq_s64(vorrq_s8(v36, *&STACK[0x430]), vorrq_s8(v36, *&STACK[0x360])), *&STACK[0x360]);
  v44 = veorq_s8(v43, *&STACK[0x420]);
  v45 = veorq_s8(v42, *&STACK[0x420]);
  v46 = veorq_s8(v41, *&STACK[0x420]);
  v47 = veorq_s8(v40, *&STACK[0x420]);
  v48 = veorq_s8(v40, *&STACK[0x410]);
  v49 = veorq_s8(v41, *&STACK[0x410]);
  v50 = veorq_s8(v42, *&STACK[0x410]);
  v51 = veorq_s8(v43, *&STACK[0x410]);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v51);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v50);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v55, v55), *&STACK[0x400]), v55), *&STACK[0x3F0]), *&STACK[0x3E0]);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v54, v54), *&STACK[0x400]), v54), *&STACK[0x3F0]), *&STACK[0x3E0]);
  v58 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), *&STACK[0x400]), v53), *&STACK[0x3F0]), *&STACK[0x3E0]);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), *&STACK[0x400]), v52), *&STACK[0x3F0]), *&STACK[0x3E0]);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v62 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v63 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v64 = veorq_s8(v56, v58);
  v65 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v66 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v67 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v64);
  v69 = veorq_s8(vaddq_s64(v65, v61), *&STACK[0x3D0]);
  v70 = veorq_s8(vaddq_s64(v66, v62), *&STACK[0x3D0]);
  v71 = veorq_s8(vaddq_s64(v67, v63), *&STACK[0x3D0]);
  v72 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v73 = veorq_s8(v68, *&STACK[0x3D0]);
  v74 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v77 = veorq_s8(v71, v75);
  v78 = veorq_s8(v70, v74);
  v79 = veorq_s8(v69, v72);
  v80 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v81 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v79);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76), *&STACK[0x3C0]);
  v84 = veorq_s8(vaddq_s64(v80, v77), *&STACK[0x3C0]);
  v85 = veorq_s8(vaddq_s64(v81, v78), *&STACK[0x3C0]);
  v86 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v87 = veorq_s8(v82, *&STACK[0x3C0]);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v89 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v90 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v91 = veorq_s8(v83, v86);
  v92 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v91);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v90);
  v96 = vaddq_s64(v93, v89);
  *&STACK[0x460] = vaddq_s64(v92, v88);
  v97 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v94, v94), *&STACK[0x570]), v94), *&STACK[0x560]);
  v98 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v95, v95), *&STACK[0x570]), v95), *&STACK[0x560]);
  v99 = *&STACK[0x550];
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), *&STACK[0x570]), v96), *&STACK[0x560]), *&STACK[0x550]);
  *&STACK[0x470] = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v101 = veorq_s8(v98, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v103 = veorq_s8(v97, v99);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v105 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v106 = veorq_s8(v100, v102);
  v107 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v111 = vaddq_s64(v108, v105);
  v112 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v113 = vandq_s8(v30, v31);
  v114 = vandq_s8(v29, v31);
  v115 = vaddq_s64(v107, v104);
  v116 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v117 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v118 = *&STACK[0x3A0];
  v119 = veorq_s8(v115, *&STACK[0x540]);
  v120 = *&STACK[0x390];
  v121 = vbslq_s8(*&STACK[0x520], vsubq_s64(*&STACK[0x390], v116), vaddq_s64(v116, *&STACK[0x3A0]));
  v122 = vbslq_s8(*&STACK[0x520], vsubq_s64(*&STACK[0x390], v117), vaddq_s64(v117, *&STACK[0x3A0]));
  v123 = veorq_s8(v122, *&STACK[0x510]);
  v124 = veorq_s8(v111, *&STACK[0x540]);
  v125 = veorq_s8(v121, *&STACK[0x510]);
  v126 = veorq_s8(v121, *&STACK[0x500]);
  v127 = veorq_s8(v122, *&STACK[0x500]);
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = veorq_s8(v124, v112);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v127);
  v131 = vaddq_s64(v128, v126);
  v132 = veorq_s8(v130, *&STACK[0x350]);
  v133 = veorq_s8(v119, v110);
  v134 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v135 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v136 = veorq_s8(v131, *&STACK[0x350]);
  v137 = *&STACK[0x350];
  v138 = veorq_s8(v136, v134);
  v139 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v138);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v135);
  v142 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v143 = *&STACK[0x340];
  v144 = vsubq_s64(vorrq_s8(v140, *&STACK[0x340]), vorrq_s8(v140, v23));
  v145 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v148 = veorq_s8(vaddq_s64(v144, v23), *&STACK[0x320]);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v141, *&STACK[0x340]), vorrq_s8(v141, v23)), v23), *&STACK[0x320]);
  v150 = *&STACK[0x320];
  v151 = veorq_s8(v149, v145);
  v152 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v153 = vaddq_s64(v139, v129);
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v151), *&STACK[0x4F0]);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v152), *&STACK[0x4F0]);
  v156 = veorq_s8(v153, *&STACK[0x530]);
  v157 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(v142, v133), *&STACK[0x530]);
  v159 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v160 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v161 = veorq_s8(v158, v147);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v159);
  v163 = vaddq_s64(v160, v157);
  v164 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v163, v163), *&STACK[0x4E0]), v163), *&STACK[0x4C0]), *&STACK[0x4B0]);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), *&STACK[0x4E0]), v162), *&STACK[0x4C0]), *&STACK[0x4B0]);
  v167 = *&STACK[0x4B0];
  v168 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v169 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v170 = veorq_s8(v165, v164);
  v171 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v170);
  v173 = vaddq_s64(v171, v169);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), veorq_s8(v156, v146));
  v175 = vdupq_n_s64(v13);
  *&STACK[0x450] = v175;
  v176 = vdupq_n_s64(v20);
  v177 = vdupq_n_s64(v18);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, v175), vorrq_s8(v173, v176)), v176), v177);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v180 = vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), a6));
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v172, v175), vorrq_s8(v172, v176)), v176), v177);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v183 = vshlq_u64(veorq_s8(v174, v24), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), a6)));
  v184 = vdupq_n_s64(a12);
  v185 = vshlq_u64(veorq_s8(vaddq_s64(v168, v161), v24), v180);
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v184);
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v184);
  v168.i64[0] = v14 + v17 + 9;
  v168.i64[1] = v14 + v17 + 8;
  v188 = vdupq_n_s64(v21);
  v255.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL))), v188), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a6))), v185);
  v255.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL))), v188), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a6))), v183);
  v189 = vandq_s8(v168, v31);
  v190 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v192 = vbslq_s8(*&STACK[0x520], vsubq_s64(v120, v191), vaddq_s64(v191, v118));
  v193 = veorq_s8(v192, *&STACK[0x510]);
  v194 = veorq_s8(v192, *&STACK[0x500]);
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v137);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v197, v143), vorrq_s8(v197, v23)), v23), v150);
  v199 = veorq_s8(vaddq_s64(v109, v106), *&STACK[0x540]);
  v200 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v201 = veorq_s8(v199, v190);
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v200), *&STACK[0x4F0]);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v204 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL);
  v207 = vaddq_s64(v205, v203);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v207, v207), *&STACK[0x4E0]), v207), *&STACK[0x4C0]), v167);
  v209 = veorq_s8(vaddq_s64(v204, v201), *&STACK[0x530]);
  v210 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v211 = veorq_s8(v209, v206);
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v210);
  v213 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v214 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v212, *&STACK[0x450]), vorrq_s8(v212, v176)), v176), v177);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), v184);
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL)));
  v215.i64[0] = v14 + v17 + 5;
  v215.i64[1] = v14 + v17 + 4;
  v255.val[0] = veorq_s8(vshlq_u64(veorq_s8(v217, v188), vnegq_s64(vandq_s8(vshlq_n_s64(v168, 3uLL), a6))), vshlq_u64(veorq_s8(vaddq_s64(v213, v211), v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x480], 3uLL), a6))));
  v218 = vandq_s8(v215, v31);
  v219 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v220 = vbslq_s8(*&STACK[0x520], vsubq_s64(v120, v219), vaddq_s64(v219, v118));
  v221 = veorq_s8(v220, *&STACK[0x510]);
  v222 = veorq_s8(v220, *&STACK[0x500]);
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), v137);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(*&STACK[0x460], *&STACK[0x460]), *&STACK[0x570]), *&STACK[0x460]), *&STACK[0x560]), *&STACK[0x550]);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v227 = veorq_s8(v225, *&STACK[0x470]);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v226, v143), vorrq_s8(v226, v23)), v23), v150);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v230 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v231 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v232 = vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL);
  v233 = vaddq_s64(v230, v227);
  v234 = veorq_s8(vaddq_s64(v231, v229), *&STACK[0x4F0]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v236 = veorq_s8(v233, *&STACK[0x540]);
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235);
  v238 = veorq_s8(v236, v232);
  v239 = vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v237, v237), *&STACK[0x4E0]), v237), *&STACK[0x4C0]), *&STACK[0x4B0]);
  v241 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v242 = veorq_s8(v240, v239);
  v243 = vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL);
  v244 = vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL);
  v245 = vaddq_s64(v241, v238);
  v246 = vaddq_s64(v243, v242);
  v247 = veorq_s8(v245, *&STACK[0x530]);
  v248 = veorq_s8(v247, v244);
  v249 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v246, *&STACK[0x450]), vorrq_s8(v246, v176)), v176), v177);
  v250 = vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL);
  v252 = veorq_s8(v249, v250);
  v253 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v252), v184);
  v255.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL))), v188), vnegq_s64(vandq_s8(vshlq_n_s64(v215, 3uLL), a6))), vshlq_u64(veorq_s8(vaddq_s64(v251, v248), v24), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x490], 3uLL), a6))));
  *(v14 + v17 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v255, *&STACK[0x310])), STACK[0x4A0]);
  return (*(a1 + 8 * (((v22 == 0) * v19) ^ v12)))();
}

uint64_t sub_1009DC224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61)
{
  v62 = 6 * (a1 ^ 0x3AFD2200);
  HIDWORD(a40) = LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x238]) ^ (v62 ^ 0x69692 | a48);
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x254]) ^ 0xEE21E8A1;
  HIDWORD(a50) ^= (2 * HIDWORD(a50)) ^ 0x901E441C;
  LODWORD(a51) = a50 - 2 * a51;
  LODWORD(STACK[0x254]) = LODWORD(STACK[0x25C]) ^ 0x8B8B6022;
  LODWORD(STACK[0x240]) += LODWORD(STACK[0x244]) + LODWORD(STACK[0x33C]) + HIDWORD(a48) + (LODWORD(STACK[0x458]) ^ HIDWORD(a47) & 0xC7D97A0 ^ 0xD896566E) + 1;
  v63 = a61 ^ LODWORD(STACK[0x470]);
  LODWORD(STACK[0x24C]) ^= LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x408]) ^ 0xAE1809CB;
  LODWORD(STACK[0x244]) = v63 ^ 0x46926B22;
  v64 = *(STACK[0x480] + 8 * ((11902 * (a1 > 0x6837B82F)) ^ (a1 + 1157811895)));
  LODWORD(STACK[0x458]) = v62;
  STACK[0x470] = (v62 - 9151) | 0xD80u;
  return v64(a1, v61 - 0x62F0452EEC8C123ELL, v61 + 0x29D5EF2408A47C9DLL, a4, a5, v61 - 0x5D7457CFBA970FDLL, v61 + 0x4881E9BD3F2EAE19, v61 - 0x5778459B7078DF95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1009DC530()
{
  v5 = 906386353 * (((((v4 - 144) | 0x1B681F72) ^ 0xFFFFFFFE) - (~(v4 - 144) | 0xE497E08D)) ^ 0xD5962DA9);
  *(v4 - 128) = v2;
  *(v4 - 144) = v3 - v5 + 6593;
  *(v4 - 140) = ((v0 - 3) ^ (((v0 - 3) ^ 0x77045FE1) - 197902739) ^ (((v0 - 3) ^ 0x7992A810) - 89994850) ^ ((((v3 - 31920) | 0x8A09) ^ 0xE907CFB) + ((v0 - 3) ^ 0x8DA0867C)) ^ (((((v3 - 1456) | 0x262C) - 441901) ^ (v0 - 3)) + 2093583987) ^ 0x4DEC1FE1) + v5;
  v6 = (*(v1 + 8 * (v3 + 15899)))(v4 - 144);
  return (*(v1 + 8 * ((115 * (*(v4 - 136) == -1729168700)) ^ v3)))(v6);
}

uint64_t sub_1009DC66C(__n128 a1)
{
  v5.n128_u64[0] = (v2 + 13) & 0xF;
  v5.n128_u64[1] = (v2 + 12) & 0xF;
  v6.n128_u64[0] = (v2 + 11) & 0xF;
  v6.n128_u64[1] = (v2 + 10) & 0xF;
  v7.n128_u64[0] = (v2 + 9) & 0xF;
  v7.n128_u64[1] = v1 & 0xF ^ 1;
  v11.val[0].i64[0] = (v2 + 7) & 0xF;
  v11.val[0].i64[1] = (v2 + 6) & 0xF;
  v11.val[1].i64[0] = (v2 + 5) & 0xF;
  v11.val[1].i64[1] = (v2 + 4) & 0xF;
  v11.val[2].i64[0] = (v2 + 3) & 0xF;
  v11.val[2].i64[1] = (v2 + 2) & 0xF;
  v11.val[3].i64[0] = (v2 + 1) & 0xF;
  v11.val[3].i64[1] = v2 & 0xF;
  v8.n128_u64[0] = 0x6565656565656565;
  v8.n128_u64[1] = 0x6565656565656565;
  v9.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v9.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v4 + 8 * v3))((v2 + 14) & 0xF, v2 - 16, (v1 & 0x10) - 16, (v3 + 7935) ^ 0xE449, a1, v5, v6, v7, xmmword_100BC76B0, vqtbl4q_s8(v11, xmmword_100BC76B0), v8, v9);
}

uint64_t sub_1009DC848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[97] = v9;
  LODWORD(STACK[0x94C]) = 1842761881;
  v12[134] = *(a8 + 8 * v11);
  v12[162] = 0;
  LODWORD(STACK[0x7D4]) = 0;
  return (*(a8 + 8 * (((v10 == 0) * ((v8 ^ 0x165A) - 37311)) ^ v8)))();
}

uint64_t sub_1009DC948()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xA4E0)))(LODWORD(STACK[0x7CC]) ^ 0xE9D5C50E ^ ((v0 - 28255) | 0x206));
  STACK[0xAF8] = v2;
  if (v2)
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891397;
  }

  LODWORD(STACK[0xB04]) = v3;
  return (*(v1 + 8 * ((243 * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1009DC9DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  LODWORD(STACK[0xCF0]) = a4;
  STACK[0xBF8] = v49;
  v51 = STACK[0x9B8];
  v52 = 409 * (LODWORD(STACK[0x9B8]) ^ 0x1AB8);
  LODWORD(STACK[0xAD0]) = LODWORD(STACK[0xC50]) ^ 0xB0541CA2;
  LODWORD(STACK[0xAE0]) = LODWORD(STACK[0xBA8]) ^ 0x42AF74C9;
  LODWORD(STACK[0xC90]) = LODWORD(STACK[0xC24]) ^ 0x302357AA;
  LODWORD(STACK[0xCA0]) = LODWORD(STACK[0xBC0]) ^ 0xB5B5B5B5;
  LODWORD(STACK[0xC80]) ^= 0xEFB412FC;
  LODWORD(STACK[0xDD8]) = v52;
  LODWORD(STACK[0xA98]) = ((v51 ^ 0x1AB8) - 1451448494) ^ v50;
  LODWORD(STACK[0xE68]) = LODWORD(STACK[0xC68]) ^ a5;
  LODWORD(STACK[0xC70]) = -LODWORD(STACK[0xCE0]);
  LODWORD(STACK[0xC68]) = -v47;
  return (*(STACK[0xED8] + 8 * (v51 | (76 * (STACK[0xDE0] < 0x10)))))(v48, STACK[0xEA8], a3, 211, LODWORD(STACK[0x8B0]), LODWORD(STACK[0xDF0]), LODWORD(STACK[0xDC8]), LODWORD(STACK[0xD08]), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_1009DCB6C(int a1)
{
  v6 = 23958;
  atomic_compare_exchange_strong(v5, &v6, v3);
  return (*(v4 + 8 * (((v6 == a1) * v1) ^ v2)))();
}

uint64_t sub_1009DCB90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v29 = (v20 - 1995263482) & 0x76ECFFFF;
  LODWORD(STACK[0x290]) = v29;
  v30 = v29 ^ 0x1E31u;
  v31 = *(STACK[0x5A0] + 8 * (((v21 < ((v20 - 417315574) & 0x18DFEFBE) - 41374) * v30) ^ (v20 + 2657)));
  *&STACK[0x440] = vdupq_n_s64(0xD6916AF990E79581);
  *&STACK[0x3B0] = vdupq_n_s64(v22);
  *&STACK[0x3C0] = vdupq_n_s64(0x296E95066F186A7EuLL);
  *&STACK[0x390] = vdupq_n_s64(0x2C378843F9A46E98uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0x14BA074A2F986FE5uLL);
  *&STACK[0x370] = vdupq_n_s64(0x4BB2CF10603AF002uLL);
  *&STACK[0x380] = vdupq_n_s64(0xBD7D2DE9C10AA16ALL);
  *&STACK[0x2B0] = vdupq_n_s64(v27);
  *&STACK[0x350] = vdupq_n_s64(0x3BC4FBA94204947DuLL);
  *&STACK[0x360] = vdupq_n_s64(0xC9024F07DF79306BLL);
  *&STACK[0x340] = vdupq_n_s64(0x444C3EF7816B06F8uLL);
  *&STACK[0x490] = vdupq_n_s64(a7);
  *&STACK[0x470] = vdupq_n_s64(0xB37F3E686055C37DLL);
  *&STACK[0x590] = vdupq_n_s64(v25);
  *&STACK[0x460] = vdupq_n_s64(0xCB0F1D4FE79F5D56);
  *&STACK[0x480] = vdupq_n_s64(0x67FD13F296EE9EB2uLL);
  *&STACK[0x450] = vdupq_n_s64(a1);
  *&STACK[0x4C0] = vdupq_n_s64(0x8D4F80F477B96692);
  *&STACK[0x320] = vdupq_n_s64(v23);
  *&STACK[0x330] = vdupq_n_s64(a8);
  *&STACK[0x580] = vdupq_n_s64(v18);
  *&STACK[0x300] = vdupq_n_s64(v28);
  *&STACK[0x310] = vdupq_n_s64(a6);
  *&STACK[0x2C0] = vdupq_n_s64(0x72ED5DC178B16E75uLL);
  *&STACK[0x570] = vdupq_n_s64(v24);
  *&STACK[0x550] = vdupq_n_s64(v19);
  *&STACK[0x540] = vdupq_n_s64(0x9B1C7427651E0F18);
  *&STACK[0x530] = vdupq_n_s64(0xA325067CBC52C678);
  *&STACK[0x520] = vdupq_n_s64(a5);
  *&STACK[0x560] = vdupq_n_s64(v26);
  *&STACK[0x510] = vdupq_n_s64(0xF2F9342312EBF434);
  *&STACK[0x500] = vdupq_n_s64(0xA6C8D664ECAB6230);
  return v31(a1, v30, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1009DCE04@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2484]) = a1;
  LODWORD(STACK[0x2480]) = v1;
  v5 = *v2 > 0x42882FD7u;
  if (v1 - 1341626012 < (((v3 ^ 0xFB8F) - 34213) ^ 0xBD77F416) == v5)
  {
    v5 = v1 - 1341626012 < (*v2 - 1116221400);
  }

  return (*(v4 + 8 * ((246 * !v5) ^ v3)))();
}

uint64_t sub_1009DCEF0()
{
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v1 + 8 * (v0 ^ 0x22D30933 ^ (20736 * (v0 != 186179592)))))(v2);
}

uint64_t sub_1009DCF94@<X0>(int a1@<W8>)
{
  v6 = 0;
  v7 = *(*v3 + (*STACK[0x800] & 0x20FAB224)) ^ 0x20FAB225;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  v15 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  STACK[0x2680] = 0;
  v16 = 16777619 * ((553300517 * v15 + 7) ^ (553300517 * v15)) % 7;
  v17 = 16777619 * ((553300517 * v15 + 6) ^ (553300517 * v15)) % 6;
  v18 = 16777619 * ((553300517 * v15 + 5) ^ (553300517 * v15)) % 5;
  v19 = 16777619 * ((553300517 * v15 + 3) ^ (553300517 * v15)) % 3;
  v20 = *(&STACK[0x2680] | v16);
  *(&STACK[0x2680] | v16) = STACK[0x2687];
  v21 = *(&STACK[0x2680] | v17);
  *(&STACK[0x2680] | v17) = STACK[0x2686];
  v22 = *(&STACK[0x2680] | v18);
  *(&STACK[0x2680] | v18) = STACK[0x2685];
  v23 = STACK[0x2680];
  LOBYTE(STACK[0x2680]) = STACK[0x2684];
  v24 = *(&STACK[0x2680] | v19);
  *(&STACK[0x2680] | v19) = STACK[0x2683];
  STACK[0x2688] = v1;
  v25 = vdup_n_s32(553300517 * v15);
  v26.i32[0] = v25.i32[0];
  v26.i32[1] = 553300517 * v15 + 1;
  LOBYTE(STACK[0x2687]) = v20;
  LOBYTE(STACK[0x2686]) = v21;
  LOBYTE(STACK[0x2685]) = v22;
  v27 = veor_s8(vmul_s32(v26, v25), v25);
  LOBYTE(STACK[0x2684]) = v23;
  LOBYTE(STACK[0x2683]) = v24;
  v28 = STACK[0x2681];
  LOBYTE(STACK[0x2682]) = STACK[0x2680];
  LOWORD(STACK[0x2680]) = v28;
  STACK[0x2680] = vmla_s32(v27, STACK[0x2680], v5);
  v29 = STACK[0x2688];
  v30 = (553300517 * STACK[0x2688]) ^ v15;
  v31 = vdupq_n_s32(v30);
  v32 = xmmword_100BC7620;
  v33 = xmmword_100BC7630;
  v34 = xmmword_100BC7640;
  v35 = xmmword_100BC7650;
  v36 = *&STACK[0x610];
  v37.i64[0] = 0x1000000010;
  v37.i64[1] = 0x1000000010;
  v38.i64[0] = 0x9393939393939393;
  v38.i64[1] = 0x9393939393939393;
  do
  {
    v39 = *(v29 + v6);
    v60.val[1] = veorq_s8(vqtbl1q_s8(v39, xmmword_100BC7690), veorq_s8(v31, vmulq_s32(vaddq_s32(v34, v31), vsubq_s32(v34, v31))));
    v60.val[0] = veorq_s8(vqtbl1q_s8(v39, xmmword_100BC76A0), veorq_s8(v31, vmulq_s32(vaddq_s32(v35, v31), vsubq_s32(v35, v31))));
    v60.val[2] = veorq_s8(vqtbl1q_s8(v39, xmmword_100BC7680), veorq_s8(v31, vmulq_s32(vaddq_s32(v33, v31), vsubq_s32(v33, v31))));
    v60.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v39, xmmword_100BC7670), v31), vmulq_s32(vaddq_s32(v32, v31), vsubq_s32(v32, v31)));
    *(v29 + v6) = vmulq_s8(vqtbl4q_s8(v60, v36), v38);
    v6 += 16;
    v35 = vaddq_s32(v35, v37);
    v34 = vaddq_s32(v34, v37);
    v33 = vaddq_s32(v33, v37);
    v32 = vaddq_s32(v32, v37);
  }

  while (v6 != 576);
  v40 = 0;
  v41 = xmmword_100F52AE0;
  v42 = xmmword_100F52AF0;
  v43 = v29 + 576;
  v44 = vdupq_n_s32(v30);
  v45 = *&STACK[0x5F0];
  v46.i64[0] = 0x800000008;
  v46.i64[1] = 0x800000008;
  do
  {
    v34.i64[0] = *(v43 + v40);
    v59.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v34, xmmword_100BC7690), v44), vmulq_s32(vaddq_s32(v41, v44), vsubq_s32(v41, v44)));
    v59.val[0] = veorq_s8(vqtbl1q_s8(v34, xmmword_100BC76A0), veorq_s8(v44, vmulq_s32(vaddq_s32(v42, v44), vsubq_s32(v42, v44))));
    v34 = vqtbl2q_s8(v59, v45);
    *(v43 + v40) = vmul_s8(*v34.i8, v4);
    v42 = vaddq_s32(v42, v46);
    v41 = vaddq_s32(v41, v46);
    v40 += 8;
  }

  while (v40 != 8);
  v47 = 72;
  do
  {
    v48 = 16777619 * ((v30 + v47) ^ v30) % v47;
    v49 = *(v29 + 8 * v48) ^ *(v29 + 8 * v47);
    *(v29 + 8 * v47) = v49;
    v50 = *(v29 + 8 * v48) ^ v49;
    *(v29 + 8 * v48) = v50;
    *(v29 + 8 * v47) ^= v50;
    v51 = v47-- + 1;
  }

  while (v51 > 2);
  v52 = *(&STACK[0x2688] + v16);
  *(&STACK[0x2688] + v16) = STACK[0x268F];
  LOBYTE(STACK[0x268F]) = v52;
  v53 = *(&STACK[0x2688] + v17);
  *(&STACK[0x2688] + v17) = STACK[0x268E];
  LOBYTE(STACK[0x268E]) = v53;
  v54 = *(&STACK[0x2688] + v18);
  *(&STACK[0x2688] + v18) = STACK[0x268D];
  LOBYTE(STACK[0x268D]) = v54;
  v55 = STACK[0x2688];
  LOBYTE(STACK[0x2688]) = STACK[0x268C];
  LOBYTE(STACK[0x268C]) = v55;
  v56 = *(&STACK[0x2688] + v19);
  *(&STACK[0x2688] + v19) = STACK[0x268B];
  LOBYTE(STACK[0x268B]) = v56;
  v57 = STACK[0x2689];
  LOBYTE(STACK[0x268A]) = STACK[0x2688];
  LOWORD(STACK[0x2688]) = v57;
  STACK[0x2688] = vmla_s32(v27, STACK[0x2688], v5);
  *STACK[0x6E8] = STACK[0x2688] ^ STACK[0x2680];
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1009DD5A0()
{
  STACK[0x1E20] = v4;
  LODWORD(STACK[0x1C20]) = v2;
  LODWORD(STACK[0x83C]) = v6;
  LODWORD(STACK[0xAA0]) = v0;
  LODWORD(STACK[0x1D0C]) = v1;
  return (*(v7 + 8 * ((25608 * (v5 == ((v3 + 577161126) & 0xDD993F27 ^ 0xE9D5EA34))) ^ v3)))();
}

uint64_t sub_1009DD604(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  *v1 = v1[13];
  v3 = v1[1];
  v1[1] = v1[54];
  v1[54] = v3;
  v4 = v1[2];
  v1[2] = v1[24];
  v1[24] = v4;
  v5 = v1[3];
  v1[3] = v1[17];
  v6 = v1[4];
  v1[4] = v1[42];
  v1[42] = v6;
  v7 = v1[32];
  v1[32] = v1[5];
  v8 = v1[6];
  v1[6] = v1[18];
  v9 = v1[7];
  v10 = v1[15];
  v11 = v1[43];
  v1[43] = v1[9];
  v12 = v1[10];
  v1[10] = v1[52];
  v1[52] = v12;
  v13 = v1[11];
  v1[11] = v1[22];
  v14 = v1[12];
  v1[12] = v1[44];
  v1[44] = v14;
  v1[13] = v1[30];
  v15 = v1[14];
  v16 = v1[34];
  v1[15] = v1[49];
  v1[49] = v9;
  v1[14] = v1[16];
  v1[17] = v1[20];
  v1[18] = v1[40];
  v1[7] = v1[19];
  v1[20] = v1[53];
  v1[53] = v5;
  v17 = v1[21];
  v18 = v1[41];
  v1[22] = v1[47];
  v19 = v1[23];
  v20 = v1[31];
  v21 = v1[24];
  v1[24] = v1[38];
  v1[9] = v1[25];
  v1[5] = v1[26];
  v22 = v1[27];
  v23 = v1[33];
  v24 = v1[1];
  v1[1] = v1[28];
  v1[16] = v1[29];
  v1[30] = v1[36];
  v1[31] = v16;
  v1[29] = v19;
  result = v1[32];
  v1[32] = v1[6];
  v1[6] = result;
  v1[33] = v20;
  v1[23] = v22;
  v1[34] = v7;
  v1[26] = v15;
  v1[28] = v1[35];
  v1[36] = v18;
  v1[21] = v2;
  v1[38] = v23;
  v1[27] = v21;
  v1[19] = v1[39];
  v1[40] = v1[2];
  v1[2] = v8;
  v1[41] = *v1;
  *v1 = v17;
  v26 = v1[42];
  v1[42] = v1[50];
  v27 = v1[43];
  v1[43] = v10;
  v1[39] = v27;
  v28 = v1[44];
  v1[44] = v1[3];
  v1[3] = v28;
  v29 = v1[12];
  v1[12] = v1[45];
  v1[45] = v1[46];
  v1[47] = v11;
  v1[25] = v13;
  v30 = v1[49];
  v1[49] = v1[4];
  v1[4] = v30;
  v1[50] = v24;
  v1[35] = v26;
  v1[46] = v1[51];
  v31 = v1[52];
  v1[52] = v29;
  v1[51] = v31;
  v32 = v1[53];
  v1[53] = v1[10];
  v1[10] = v32;
  v33 = v1[54];
  v1[54] = v1[11];
  v1[11] = v33;
  return result;
}

uint64_t sub_1009DD918(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v19 = *(a1 + 8 * (((1075 * (v7 ^ 0xFE2BB947) + 10877) * (v7 == -418884831)) ^ (v7 + 30694373)));
  *&STACK[0x540] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x530] = vdupq_n_s64(0x38uLL);
  *&STACK[0x520] = vdupq_n_s64(v17);
  *&STACK[0x510] = vdupq_n_s64(v9);
  *&STACK[0x500] = vdupq_n_s64(v16);
  *&STACK[0x4F0] = vdupq_n_s64(a3);
  *&STACK[0x4E0] = vdupq_n_s64(a4);
  *&STACK[0x4C0] = vdupq_n_s64(a6);
  *&STACK[0x4B0] = vdupq_n_s64(a5);
  *&STACK[0x4A0] = vdupq_n_s64(v13);
  *&STACK[0x490] = vdupq_n_s64(v18);
  *&STACK[0x480] = vdupq_n_s64(v8);
  *&STACK[0x470] = vdupq_n_s64(a7);
  *&STACK[0x460] = vdupq_n_s64(a2);
  *&STACK[0x450] = vdupq_n_s64(v14);
  *&STACK[0x440] = vdupq_n_s64(v12);
  *&STACK[0x430] = vdupq_n_s64(v11);
  *&STACK[0x420] = vdupq_n_s64(v15);
  *&STACK[0x410] = vdupq_n_s64(v10);
  *&STACK[0x550] = xmmword_100BC76B0;
  return v19();
}

uint64_t sub_1009DDB6C@<X0>(unsigned int a1@<W8>)
{
  v5 = 4 * (v1 - 2144013255);
  v6 = *(*STACK[0x3F0] + (*STACK[0x3E8] & 0x47BFB5A4)) + v4 + v5;
  *(STACK[0x3D8] + v5) ^= (739637081 * (v4 + v5)) ^ *(v4 + v5) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v6 + ((a1 + 436133890) ^ 0x47BFDDF8)) & (*v3 ^ 0x7226FCCCLL))) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v6 + 1203746215) & (*v3 ^ 0x7226FCCCLL))) ^ 0x6BAA42FC;
  return (*(v2 + 8 * (a1 ^ 0xE601D7C3 ^ (57510 * (a1 < 0x8A77F44E)))))();
}

uint64_t sub_1009DDC88(uint64_t a1, uint64_t a2, int a3)
{
  v10 = v8 + v6;
  v11 = (((v7 - 1976527166) | 0x44A7684) + 1904511283) & (a3 + 5);
  v12 = v11 + 1 - v6;
  v13 = v3 + v12;
  v14 = v3 + v11 + 1;
  v15 = v5 + v12;
  v16 = v5 + v11 + 1;
  v17 = v11 + v4;
  v18 = 10 * (v7 ^ 0x613Au) - v6 + v17 - 22197;
  v19 = v17 + 3;
  v21 = v14 > v8 && v13 < v10;
  v23 = v16 > v8 && v15 < v10 || v21;
  if (v19 <= v8 || v18 >= v10)
  {
    v25 = v23;
  }

  else
  {
    v25 = 1;
  }

  return (*(v9 + 8 * ((125 * v25) ^ v7)))();
}

void sub_1009DDF84(uint64_t a1)
{
  v1 = 139493411 * ((a1 - 2 * (a1 & 0x61D69BEF) - 506029073) ^ 0xEDFB7AAA);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1009DE044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61)
{
  *(v64 + 24) = a1;
  v66 = STACK[0x300];
  *(*(STACK[0x300] + 24) + 32) = *(STACK[0x300] + 32);
  *(STACK[0x318] + 40) = *(v66 + 8) + *(STACK[0x318] + 40) - 0x3CE25E0EC5200378;
  v67 = ((((v62 + 1287270048) ^ LOBYTE(STACK[0x463]) ^ 0xCD1CC322B8B52187) + 0x32E33CDD0BF0802BLL) ^ ((LOBYTE(STACK[0x463]) ^ 0xC608B42D308EAC46) + 0x39F74BD2CF7153BALL) ^ ((LOBYTE(STACK[0x463]) ^ 0xB14770FC481D31CLL) - 0xB14770FC481D31CLL)) + 0x73B4913AF7C22BB3;
  *(v66 + 8) = 0x79C4BC1D8A4006F0 - *(v66 + 8);
  *(v66 + 16) = v67;
  *a61 = 0x3CE25E0EC5200378;
  STACK[0x3D0] = v61 + 0x43FA9B81374FC417;
  v68 = *(v65 + 8 * (v62 ^ (8080 * (v61 == 0xBC05647EC8B03BE9))));
  STACK[0x368] = &STACK[0x460];
  STACK[0x308] = v66;
  STACK[0x360] = v63;
  return v68(v68, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1009DE1A8@<X0>(int a1@<W8>)
{
  *(v2 + (a1 - 373769242)) = -2;
  v5 = a1 + 819241386 < (*v3 + 1193010627);
  if ((a1 + 819241386) < 0x471BE5C3 != *v3 > 0xB8E41A3C)
  {
    v5 = *v3 > 0xB8E41A3C;
  }

  return (*(v4 + 8 * ((!v5 * (v1 - 19508)) ^ v1)))();
}

uint64_t sub_1009DE410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4D8] - 24464;
  LODWORD(STACK[0x860]) = v8;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_1009DE42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4D8] - 38895;
  LOWORD(STACK[0xB9E]) = v8;
  v10 = *(a8 + 8 * (v9 ^ 0x12B5));
  LODWORD(STACK[0x510]) = v8;
  return v10();
}

uint64_t sub_1009DEAB8@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  v3 = (a2 - 3078);
  v4 = (v2 ^ 0xFEFE7FEBAEBFA77ALL) + 0x7BF3FFFD7B5BFBB0 + ((v3 + 0x15D7EAD46) & (2 * v2));
  STACK[0xC48] = v4;
  v5 = STACK[0xAA0];
  STACK[0xC50] = STACK[0xAA0];
  return (*(a1 + 8 * ((25947 * (v4 - v5 + (v3 ^ 0xA86E) - 0xB5890E2FA478DCLL < 0xFFFFFFFFFFFFFFF6)) ^ a2)))();
}

uint64_t sub_1009DEB54(int a1, int a2, int a3, int a4)
{
  v14 = v6 < v9;
  v15 = (*(*(v13 + 8) + 4 * v5) ^ v10) + v7 + (*(*(v11 + 8) + 4 * v5) ^ v10);
  *(*(v4 + 8) + 4 * v5) = v15 + a2 - (a1 & (2 * v15));
  if (v14 == v5 + 1 > a4)
  {
    v14 = v5 + a3 < v6;
  }

  return (*(v12 + 8 * ((v14 | (2 * v14)) ^ v8)))();
}

uint64_t sub_1009DEBCC()
{
  LODWORD(STACK[0xB54]) = v2;
  *(v3 + 440) -= 32;
  return (*(v1 + 8 * (((v2 != ((v0 + 1392864145) & 0xACFA1E4B) - 371870514) * (v0 - 34907)) ^ (v0 - 25360))))();
}

uint64_t sub_1009DEC38(__n128 a1)
{
  v4.n128_u64[0] = (v1 + 13) & 0xF;
  v4.n128_u64[1] = (v1 + 12) & 0xF;
  v5.n128_u64[0] = (v1 + 11) & 0xF;
  v5.n128_u64[1] = (v1 + 10) & 0xF;
  v6.n128_u64[0] = (v1 + 9) & 0xF;
  v6.n128_u64[1] = v1 & 0xF ^ 8;
  v9.val[1].i64[0] = (v1 + 5) & 0xF;
  v9.val[1].i64[1] = (v1 + 4) & 0xF;
  v9.val[2].i64[0] = (v1 + 3) & 0xF;
  v9.val[2].i64[1] = (v1 + 2) & 0xF;
  v9.val[3].i64[0] = (v1 + 1) & 0xFLL;
  v9.val[3].i64[1] = v1 & 0xF;
  v9.val[0].i64[1] = (v1 + 6) & 0xF;
  v9.val[0].i64[0] = (v1 + 7) & 0xF;
  v7.n128_u64[0] = 0x3B3B3B3B3B3B3B3BLL;
  v7.n128_u64[1] = 0x3B3B3B3B3B3B3B3BLL;
  return (*(v3 + 8 * ((10317 * (v2 == 1887574846)) ^ (v2 - 11834))))(0, (((v2 - 15) ^ 8) + v1) & 0xF, (((v2 - 1075219983) ^ 0xBFE9A05D) + 1259579844) & 0xB4ECBFFD, -33278, 53806, a1, v4, v5, v6, xmmword_100BC76B0, vqtbl4q_s8(v9, xmmword_100BC76B0), v7);
}

uint64_t sub_1009DED70()
{
  v3 = *(v2 + 8 * ((v0 - 7681) ^ 0x4909));
  LODWORD(STACK[0x2FC]) = v1;
  return v3();
}

uint64_t sub_1009DF094(uint64_t a1)
{
  *(v2 - 208) = a1;
  v4 = *(v3 + 8 * (v1 ^ 0xC5DCCD3A ^ (22370 * (v1 < 0x3026B446))));
  LODWORD(STACK[0x358]) = ((v1 + 1649688981) | 0x42C20011) - 870210515;
  return v4(1093870634, 2779555243, 1515412053, 3356858295, 938109001, 126962643, 3579454451, 78);
}

uint64_t sub_1009DF1F4(uint64_t a1, unint64_t a2, int a3)
{
  STACK[0xE28] = *STACK[0xBD8];
  LODWORD(STACK[0xEC0]) = ((a2 ^ 0xFE784904) + 25671420) ^ ((a2 ^ 0xA26D0733) + 1569913037) ^ ((a2 ^ 0xE838250F) + 398973681);
  v6 = v3;
  v7 = *(&off_1010A0B50 + (a3 ^ 0x9A88));
  STACK[0xEC8] = v7 - 276239614;
  STACK[0xE30] = v7 - 276239342;
  v8 = v4[61];
  STACK[0xE48] = a2;
  LODWORD(v9) = __ROR4__(a2 ^ 0x62912870, 7) ^ 0xE1E00B41;
  HIDWORD(v9) = v9;
  v10 = *v3 ^ 2;
  STACK[0xE40] = v7 - 276239076;
  LODWORD(v10) = *(v7 - 276239076 + v10);
  v11 = v4[75];
  LODWORD(STACK[0xE78]) = (((v9 >> 25) ^ 0xD697E498) + 1524242578) ^ (((v9 >> 25) ^ 0x9810062C) + 341703206) ^ (((v9 >> 25) ^ 0x683E010C) - 462160634);
  v12 = v4[89] - ((2 * v4[89]) & 0x16) + 0x5E0696A14C99F50BLL;
  v13 = ((v11 - ((2 * v11) & 0x4444444444444444)) << 24) + 0x34486CF422000000;
  v14 = ((v10 >> 2) & 0x1E) + (((v10 >> 3) | (32 * v10)) ^ 0xFFFFFF8F);
  LOBYTE(v11) = v14 + 120;
  v15 = ((v3[16] - ((2 * v3[16]) & 0xD8u) + 112) << 56) - 0x400000000000000;
  v16 = (v14 + 113) * (v14 + 76) + 37 * v14 - 39;
  LOBYTE(v14) = (16 * ((v16 ^ 0xC) & (2 * ((v16 ^ 0x7C) & (2 * ((v16 ^ 0x7C) & (2 * (v16 & 0x8A ^ 0xF)) ^ v16 & 0x8A ^ 0xF)) ^ v16 & 0x8A ^ 0xF)) ^ v16 & 0x8A ^ 0xF)) ^ (8 * v16);
  v17 = v4;
  v18 = v11 & 0xCD ^ 0x2A;
  v19 = v11 ^ (2 * ((v11 ^ 0x78) & (2 * ((v11 ^ 0x78) & (2 * ((v11 ^ 0x78) & (2 * ((v11 ^ 0x78) & (2 * ((v11 ^ 0x78) & (2 * (v11 & (2 * v11) & 0x72 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18));
  v20 = (v19 ^ 0x14) & (v14 ^ 0x54) ^ v19 & 4;
  v21 = ((v17[4] - ((2 * v17[4]) & 0xFFBFu) + 10495977) << 40) - 0xA0000000000;
  v22 = ((v6[30] - ((2 * v6[30]) & 0x11C)) << 16) + 0x399968105E8E0000;
  v23 = (v12 & 0x14040000001092C0 ^ 0x2990425216068B3 ^ (v12 ^ 0xA1F9695EB3660A34) & ((((v8 - ((2 * v8) & 0x1C8)) << 8) + 0x3B3B3F1A7610E400) ^ 0x70A9C3DCC7F4893FLL)) & (v22 ^ 0xC66697EFA171FFFFLL);
  v24 = ((v17[44] - ((2 * v17[44]) & 0x34u) + 24136) << 48) - 0x2E000000000000;
  v25 = (((v14 ^ 0x69) - 119) ^ ((v14 ^ 0xDD) + 61) ^ ((v14 ^ 0xE4) + 6)) + (((v19 ^ 0xAF) - 104) ^ ((v19 ^ 0x6F) + 88) ^ ((v19 ^ 0x54) + 109)) - ((((2 * v20) ^ 0x75) - 126) ^ (((2 * v20) ^ 0x16) - 29) ^ (((2 * v20) ^ 0x6B) - 96)) + 97;
  v26 = v25 & 0xCC ^ 0xB9;
  STACK[0xED0] = a3 ^ 0xFB16u;
  v27 = (v25 ^ (2 * ((v25 ^ 0x1A) & (2 * ((v25 ^ 0x1A) & (2 * ((v25 ^ 0x1A) & (2 * ((v25 ^ 0x1A) & (2 * (((2 * (v26 ^ v25 & 0x56)) ^ 0x24) & (v25 ^ 0x1A) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26))) << 32;
  v28 = (v27 ^ 0xFFFFFF33FFFFFFFFLL) & (v13 & 0x24086CE4F7000000 ^ 0x3F471FB4DC66FF8ELL ^ (v22 & 0x209000104F6B0000 ^ 0x6CDAE9E8D6126501 ^ v23) & (v13 ^ 0xCBB7930BDDFFFFFFLL));
  v29 = v27 & 0xB400000000;
  v30 = ((v6[28] + (~(2 * v6[28]) | 0xFFFFFFFFFF05)) << 16) - 0x17FF5FEBC7820000;
  v31 = ((v17[112] - ((2 * v17[112]) & 0xFCu) + 39068) << 48) - 0x1E000000000000;
  v32 = v6[37] - ((2 * v6[37]) & 0x1D2) + 0xB742B371DFBA2E9;
  v33 = (v32 & 0x408010002837BLL ^ 0x555AB538C8C01EEALL ^ (v32 ^ 0xF48BD4C8E2045D04) & ((((v6[29] - ((2 * v6[29]) & 0x1B4)) << 8) + 0x2D1EC0FB05B1DA00) ^ 0x8245E767BB049284)) & (v30 ^ 0x17FF5FEBC782FFFFLL) ^ v30 & 0x200009880000;
  v34 = v28 ^ (v29 | v21 ^ v15 ^ v24) ^ 0x9E8CA7059531BB2DLL;
  v35 = ((v6[14] - ((2 * v6[14]) & 0x7777u) + 202) << 56) - 0xF00000000000000;
  v36 = (v33 ^ 0x5FA455A810021D0) & ((((v17[37] - ((2 * v17[37]) & 0x26)) << 24) + 0x7582ACC313000000) ^ 0x43C558F9837275D3) ^ v33 & 0xC9B80BC56F8D8A2CLL;
  v37 = (v36 ^ 0x1B8014000800020) & ((((v17[16] - ((2 * v17[16]) & 0x86u) + 1005684299) << 32) - 0x800000000) ^ 0x5BDBAFFCB69574E7);
  v38 = ((v17[66] - ((2 * v17[66]) & 0xB2u) + 5454188) << 40) - 0x130000000000;
  STACK[0xE58] = v6;
  v39 = v31 ^ v38 ^ v35 ^ v36 & 0x9FD5D640496A8B18 ^ v37 ^ 0x9BA523744D1DB215;
  STACK[0xE60] = v17;
  STACK[0xE38] = v7 - 276238807;
  v40 = STACK[0xE48] ^ 0xBDA475EED36641AALL;
  STACK[0xE20] = v40;
  v41 = (((v40 << 32) & 0x200000000000 ^ 0x57776ECAB9F4D1B3) + 0x6DCB28ACC3FCC399) ^ 0xFFFE111107F98760;
  STACK[0xEB8] = v41 + 0x384DC09CA9B1D31;
  v42 = (((v41 + 0x384DC09CA9B1D31) ^ 0x9DE3C00126CDD08CLL) + 0x5C5D7D8E9D91002FLL) ^ (v41 + 0x384DC09CA9B1D31) ^ (((v41 + 0x384DC09CA9B1D31) ^ 0x52EF7AC19BE719BFLL) - 0x6CAE38B1DF4436E2) ^ (((v41 + 0x384DC09CA9B1D31) ^ 0x8E9EB75F26319B93) + 0x4F200AD09D6D4B32) ^ (((v41 + 0x384DC09CA9B1D31) ^ 0x7FD34FEFDFB87DFDLL) - 0x41920D9F9B1B52A0);
  STACK[0xEB0] = v42 ^ 0x3E41427044A32F5DLL;
  STACK[0xEA8] = v42 & 0xDE2A2FB746BC082CLL;
  STACK[0xEA0] = (v40 << 32) & 0xFFFFDFFFFFFFFFFFLL;
  STACK[0xE80] = 0x78FDA8D6BEAB4189 - v41;
  LODWORD(STACK[0xE78]) = STACK[0xE88] + LODWORD(STACK[0xEC0]) - LODWORD(STACK[0xE78]) - 1246763139;
  return (*(v5 + 8 * a3))(STACK[0xEC8] + 4, 4294962423, 0x222F0A9900000000, v39, v34, 1681229542);
}

uint64_t sub_1009E09EC@<X0>(char a1@<W2>, char a2@<W3>, uint64_t a3@<X4>, char a4@<W5>, char a5@<W6>, char a6@<W7>, char a7@<W8>)
{
  v23 = (v10 ^ 0xFFFFFFFFFFFF72E6) + v12;
  v24 = ((v11 ^ a4) + a5) ^ v11 ^ ((v11 ^ a6) + v14) ^ ((v11 ^ v22) + v8) ^ ((v11 ^ v9) + a7);
  *(a3 + v23) = ((((v24 ^ v16) + v21) ^ ((v24 ^ v20) + v19) ^ ((v24 ^ v18) + v17)) + v13) * (v11 + a1) + v11 * v7 + a2;
  return (*(v15 + 8 * ((46 * (v23 != 0)) ^ v10)))();
}

uint64_t sub_1009E0A88(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 8 * a1);
  v10 = *v7;
  v11 = *v7 + 4;
  v12 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = (v12 - 0x296E95066F186A7FLL) ^ 0xB3A94E2F7B1B987CLL;
  v14 = (__ROR8__((v12 - 0x296E95066F186A7FLL) ^ 0x72219E3FC273472, 8) + v13) ^ 0x14BA074A2F986FE5;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0x2C378843F9A46E98;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * (v18 + v17)) | 0x9D9845494FC970F2) - (v18 + v17) - 0x4ECC22A4A7E4B879) ^ 0xF3B10F4D66EE1913;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x82B08017BF43C069;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((v23 + v22) & v8 ^ 0x983240801AB2500) + ((v23 + v22) ^ 0x961489F57C445A24) - (((v23 + v22) ^ 0x961489F57C445A24) & v8)) ^ 0x310EFE87C70BA17CLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((v26 + v25) | 0x4AD00319D698339ELL) - ((v26 + v25) | a3) + a3) ^ 0xC562225A28435F2DLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  *(v10 + 4) = v6 ^ 0x5C ^ (((((2 * (v29 + v28)) | 0x85FFF0CB5B49AA56) - (v29 + v28) - 0x42FFF865ADA4D52BLL) ^ 0xD9E38C42C8BADA33) >> (8 * (v11 & 7u)));
  v30 = __ROR8__((v10 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = (0x296E95066F186A7ELL - v30) & 0x6817BAF44AE008C1 | (v30 - 0x296E95066F186A7FLL) & 0x91E8450BB51FF73ELL;
  v32 = v31 ^ 0x6935A317B6C73CB3;
  v31 ^= 0xDDBEF4DB31FB90BDLL;
  v33 = (__ROR8__(v32, 8) + v31) ^ 0x14BA074A2F986FE5;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x2C378843F9A46E98;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xBD7D2DE9C10AA16ALL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0x88505E8AE28CC05ELL) - 0x3BD7D0BA8EB99FD1) ^ 0x4698AF52CE05A046;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0xAA9DDABAE2E4D47CLL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0xFEB301930C096308) + 0x7F5980C98604B184) ^ 0xF0EBA18A78DFDD37;
  *(v10 + 5) = v5 ^ 0x48 ^ (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v43, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v10 + 5) & 7)));
  return v9();
}

uint64_t sub_1009E0E28()
{
  v1 = STACK[0x318] - 26988;
  v2 = STACK[0x318] - 17683;
  v3 = (STACK[0x318] + 1822257408) & 0x93628EFF;
  v4 = *(STACK[0x640] + 24);
  STACK[0x858] = v4;
  return (*(v0 + 8 * (((v4 == 0) * (v2 - 51678 + v3)) ^ v1)))();
}

uint64_t sub_1009E0E8C@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, int a9@<W8>)
{
  v24 = ((v9 ^ v13) + v14) ^ v9 ^ ((v9 ^ v15) + a1) ^ ((v9 ^ a2) + a3) ^ ((a4 ^ v9) + a5);
  v25 = ((v24 ^ a6) + a7) ^ ((v24 ^ a8) + v17) ^ ((v24 ^ v18) + v19);
  *(v22 + v12) = v10 + v25 * v21 + v11 * (v25 + v20);
  return (*(v16 + 8 * (((v12 == 0) * v23) ^ a9)))();
}

uint64_t sub_1009E0F1C()
{
  v7 = *(v6 - 136);
  v8 = v7 + v3;
  v9 = ((v3 + ((v4 + 112) & 0x7B) - 100) & 0xF) + 1;
  v10 = v0 + v9 - v3;
  v11 = v0 + v9;
  v12 = v1 + v9 - v3;
  v13 = v1 + v9;
  v14 = v2 + v9 - v3;
  v15 = v2 + v9;
  v17 = v11 > v7 && v10 < v8;
  if (v13 > v7 && v12 < v8)
  {
    v17 = 1;
  }

  v20 = v15 > v7 && v14 < v8 || v17;
  return (*(v5 + 8 * ((v20 * ((v4 + 624979960) & 0xDABFBB8D ^ 0xAB00)) ^ v4)))();
}

uint64_t sub_1009E0FF4@<X0>(int a1@<W8>)
{
  STACK[0x1270] = v4;
  LODWORD(STACK[0x103C]) = v3;
  LODWORD(STACK[0x1E0C]) = v1;
  STACK[0x1628] = v2;
  return (*(v6 + 8 * (((*(v4 + 24) == v5) * (((a1 + 1650480159) ^ 0x6260DCB4) + 61587)) ^ a1)))();
}

uint64_t sub_1009E1044@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v56 = *(v55 + 4 * (v53 - 1509012706));
  v57 = 1566083941 * (((v56 ^ (v56 >> 30) ^ 0xD1BA2FA1) - 1983430422) ^ ((v56 ^ (v56 >> 30) ^ 0x36BF1FCE) + 1858236551) ^ ((v56 ^ (v56 >> 30) ^ 0xE705306F) - 1082630360)) + 1832097745;
  v58 = (v57 ^ 0x97A29D4B) & (2 * (v57 & 0xC7CADD62)) ^ v57 & 0xC7CADD62;
  v59 = ((2 * (v57 ^ 0x9822250F)) ^ 0xBFD1F0DA) & (v57 ^ 0x9822250F) ^ (2 * (v57 ^ 0x9822250F)) & 0x5FE8F86C;
  v60 = v59 ^ 0x40280825;
  v61 = (v59 ^ 0x1F40F008) & (4 * v58) ^ v58;
  v62 = ((4 * v60) ^ 0x7FA3E1B4) & v60 ^ (4 * v60) & 0x5FE8F86C;
  v63 = (v62 ^ 0x5FA0E020) & (16 * v61) ^ v61;
  v64 = ((16 * (v62 ^ 0x481849)) ^ 0xFE8F86D0) & (v62 ^ 0x481849) ^ (16 * (v62 ^ 0x481849)) & 0x5FE8F840;
  v65 = v63 ^ 0x5FE8F86D ^ (v64 ^ 0x5E888000) & (v63 << 8);
  v66 = v57 ^ *(v55 + 4 * (v53 - 1509012705)) ^ (2 * ((v65 << 16) & 0x5FE80000 ^ v65 ^ ((v65 << 16) ^ 0x786D0000) & (((v64 ^ 0x160782D) << 8) & 0x5FE80000 ^ 0x17000000 ^ (((v64 ^ 0x160782D) << 8) ^ 0x68F80000) & (v64 ^ 0x160782D))));
  *(v55 + 4 * (v53 - 1509012705)) = (((v66 ^ 0xCA50BA10) - 1526688811) ^ ((v66 ^ 0x714E621C) + 505301977) ^ ((v66 ^ 0x73D5F5B4) + 478534769)) - v53 - 1302941596;
  *(v54 - 128) = (906386353 * a52) | 1;
  *(v54 - 100) = (a1 + 1011128567) ^ (906386353 * a52);
  *(v54 - 136) = 931728104 - 906386353 * a52;
  *(v54 - 120) = (v53 - 577284600) ^ (906386353 * a52);
  *(v54 - 108) = ((a1 + 1011128546) ^ 0x12FC) + 906386353 * a52;
  *(v54 - 104) = 906386353 * a52 + a1 + 800686912;
  *(v54 - 144) = (a1 + 1011128546) ^ (906386353 * a52);
  v67 = (*(v52 + 8 * (a1 + 24320)))(v54 - 144);
  return (*(v52 + 8 * *(v54 - 112)))(v67);
}

uint64_t sub_1009E1324(uint64_t a1)
{
  STACK[0x1D88] = *(a1 + 40);
  v3 = (*(v2 + 8 * (v1 - 1223026071)))();
  return (*(v2 + 8 * ((56614 * (v1 > ((v1 - 1718148045) & 0x7FE2FBDE ^ 0x8113377D))) ^ (v1 - 1223058739))))(v3);
}

uint64_t sub_1009E13E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v11 ^ v13;
  v16 = 0xE9596001AC522F48 - (((v14 ^ 0xB41BC628ECFC17F0) + 0x326063CF801A6658) ^ ((v14 ^ 0x9A8B4DA5C4117B4FLL) + 0x1CF0E842A8F70AE9) ^ ((v14 ^ 0x941DB0EC015F45F1 ^ (((v11 ^ v13) - 5791) | 0x100u)) + 0x1266150B6DB9B974));
  v17 = (v16 ^ 0xCC7D658077BC4DB9) & (2 * (v16 & 0xE87E75A167BE513CLL)) ^ v16 & 0xE87E75A167BE513CLL;
  v18 = ((2 * (v16 ^ 0x9C8127C2F8C84FE1)) ^ 0xE9FEA4C73EEC3DBALL) & (v16 ^ 0x9C8127C2F8C84FE1) ^ (2 * (v16 ^ 0x9C8127C2F8C84FE1)) & 0x74FF52639F761EDCLL;
  v19 = v18 ^ 0x1401522081120245;
  v20 = (v18 ^ 0x60FA00031E600C90) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0xD3FD498E7DD87B74) & v19 ^ (4 * v19) & 0x74FF52639F761EDCLL;
  v22 = (v21 ^ 0x50FD40021D501A40) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x2402126182260489)) ^ 0x4FF52639F761EDD0) & (v21 ^ 0x2402126182260489) ^ (16 * (v21 ^ 0x2402126182260489)) & 0x74FF52639F761ED0;
  v24 = (v23 ^ 0x44F5022197600C00) & (v22 << 8) ^ v22;
  v25 = (((v23 ^ 0x300A50420816120DLL) << 8) ^ 0xFF52639F761EDD00) & (v23 ^ 0x300A50420816120DLL) ^ ((v23 ^ 0x300A50420816120DLL) << 8) & 0x74FF52639F761C00;
  v26 = v24 ^ 0x74FF52639F761EDDLL ^ (v25 ^ 0x7452420316160000) & (v24 << 16);
  v27 = (v26 << 32) & 0x526300000000 ^ v26 ^ ((v26 << 32) ^ 0x1EDD00000000) & (((v25 ^ 0xAD1060896002DDLL) << 16) & 0x526300000000 ^ 0x400100000000 ^ (((v25 ^ 0xAD1060896002DDLL) << 16) ^ 0x1F7600000000) & (v25 ^ 0xAD1060896002DDLL));
  v28 = ((v16 ^ 0xD5977AB547C01E0) - 0x1AD8FDF5CC3DAF24) ^ v16 ^ ((v16 ^ 0x87746103996694F4) + 0x6F0A14A2FED8C5D0) ^ ((v16 ^ 0xC25175482A38DC8ELL) + 0x2A2F00E94D868DB6) ^ ((v16 ^ 0x5FFDE9BE7F63E75ELL) - 0x487C63E0E722499ALL);
  v29 = (v27 << 17) ^ (v16 << 16);
  v30 = __ROR8__(v14, 48);
  v31 = ((v29 & 0x80000000) + 0xDB677F4EF7955F5) ^ 0x73006001DC000;
  v32 = v29 & 0xFFFFFFFF7FFFFFFFLL | HIWORD(v28);
  v33 = 0x3DE599E2F61FD4E2 - (((v14 ^ 0xE2CAB424C09288C0) + 0x1D354BDB3F6D7740) ^ ((v14 ^ 0x91AD961C7B648A6DLL) + 0x6E5269E3849B7593) ^ ((v14 ^ 0x5D0B2E455CFF0C71) - 0x5D0B2E455CFF0C71));
  v34 = v33 ^ ((v33 ^ v8) - 0x3702AE130E94CB8DLL) ^ ((v33 ^ 0x5AA140E336808189) - 0x36F0E683EBA86237) ^ ((v33 ^ 0xB55A10EC7E8E5E0) - 0x6704076E1AC0065ELL) ^ ((v33 ^ 0x66F64FFEFFFCAFE4) - 0xAA7E99E22D44C5ALL) ^ 0x2AB9C6943F743A6CLL;
  v35 = (v31 + 0x5368B502672ACD91) ^ 0x9381AA8324A7C73BLL;
  v36 = ((v31 + 0x5368B502672ACD91) & 0x280000002 | (((((v31 + 0x5368B502672ACD91) & 0x280000002uLL) >> 31) & 1) << 32)) ^ v35 & (2 * ((v31 + 0x5368B502672ACD91) & 0x280000002));
  v37 = (2 * v35) & 0x520A88984514940 ^ 0x520A88884514941 ^ ((2 * v35) ^ 0x128852131228A480) & v35;
  v38 = (v36 & 0xFFFFFFF7FFFFFFFFLL | (((v36 >> 33) & 1) << 35) | 0x506A00005554900) ^ v37 & (4 * v36);
  v39 = (4 * v37) & v12 ^ 0x861098988821241 ^ ((4 * v37) ^ 0x359EA626375D6D04) & v37;
  v40 = (16 * v38) & v12 ^ v38 ^ ((16 * v38) ^ 0x506A000055549000) & v39;
  v41 = (16 * v39) & v12 ^ 0x905210100824B41 ^ ((16 * v39) ^ 0xD67A9898DD75B410) & v39;
  v42 = (v40 << 8) & 0xD67A9898DD75B00 ^ v40 ^ ((v40 << 8) ^ 0x64A0000001590000) & v41;
  v43 = (v41 << 8) & 0xD67A9898DD75100 ^ 0x846200008841A41 ^ ((v41 << 8) ^ 0x67A9898DD75B4100) & v41;
  v44 = v42 ^ (v42 << 16) & 0xD67A9898DD70000 ^ ((v42 << 16) ^ 0xA000015059000000) & v43 ^ 0xC23088985870241;
  v45 = (v31 + 0x5368B502672ACD91) ^ (2 * ((v44 << 32) & 0xD67A98900000000 ^ v44 ^ ((v44 << 32) ^ 0xDD75B4100000000) & ((v43 << 16) & 0xD67A98900000000 ^ 0x466200800000000 ^ ((v43 << 16) ^ 0x29898DD700000000) & v43)));
  if (((v45 ^ 0x9EA7421BB2DE2AF8) & (v30 ^ 0xD316D9B500CDE76BLL) ^ v45 & 0xDF6B3EBC0E11C906) == 0x9E23021802100800)
  {
    v46 = v31 + 0x5368B502672ACD91;
  }

  else
  {
    v46 = 0x6ECB44E845F3F97BLL - v31;
  }

  v47 = (((v30 ^ 0x5CDD3E3F65DD331DLL) - 0x3D7D9CA7ADB621FALL) ^ ((v30 ^ 0x867D0334C1AECB28) + 0x18225E53F63A2631) ^ ((v30 ^ 0xD6DDDA02AAAFD659) + 0x488287659D3B3B42)) - 0x76176C6A2B525CB2 + v46;
  v48 = (v47 ^ 0x309021045B7BB5A7) & (2 * (v47 & 0x82DAB5069B7A35B7)) ^ v47 & 0x82DAB5069B7A35B7;
  v49 = ((2 * (v47 ^ 0x3035010459AF95A3)) ^ 0x65DF680585AB4028) & (v47 ^ 0x3035010459AF95A3) ^ (2 * (v47 ^ 0x3035010459AF95A3)) & 0xB2EFB402C2D5A014;
  v50 = v49 ^ 0x922094024254A014;
  v51 = (v49 ^ 0xCF200080810000) & (4 * v48) ^ v48;
  v52 = ((4 * v50) ^ 0xCBBED00B0B568050) & v50 ^ (4 * v50) & 0xB2EFB402C2D5A010;
  v53 = (v52 ^ 0x82AE900202548010) & (16 * v51) ^ v51;
  v54 = ((16 * (v52 ^ 0x30412400C0812004)) ^ 0x2EFB402C2D5A0140) & (v52 ^ 0x30412400C0812004) ^ (16 * (v52 ^ 0x30412400C0812004)) & 0xB2EFB402C2D5A000;
  v55 = (v54 ^ 0x22EB000000500000) & (v53 << 8) ^ v53;
  v56 = (((v54 ^ 0x9004B402C285A014) << 8) ^ 0xEFB402C2D5A01400) & (v54 ^ 0x9004B402C285A014) ^ ((v54 ^ 0x9004B402C285A014) << 8) & 0xB2EFB402C2D5A000;
  v57 = v55 ^ 0xB2EFB402C2D5A014 ^ (v56 ^ 0xA2A40002C0800000) & (v55 << 16);
  v58 = __ROR8__(v32 ^ v47 ^ (2 * ((v57 << 32) & a7 ^ v57 ^ ((v57 << 32) ^ 0x42D5A01400000000) & (((v56 ^ 0x104BB4000255A014) << 16) & a7 ^ 0x2ED340200000000 ^ (((v56 ^ 0x104BB4000255A014) << 16) ^ 0x3402C2D500000000) & (v56 ^ 0x104BB4000255A014)))) ^ 0xE4427549811294F8, 16);
  v59 = ((v58 ^ 0xE4076906544373D4) - 0x12E19A2EE55B8091) ^ ((v58 ^ 0x7E251F5548409561) + 0x773C138206A799DCLL) ^ ((v58 ^ 0x6CC4857BAD1B15F0) + 0x65DD89ACE3FC194BLL);
  v60 = v59 - (((v58 ^ v34 ^ 0xE75B4E147FE8F12) - 0x1FFE78DF6A97A915) ^ ((v58 ^ v34 ^ 0x193CF0D670C88286) - 0x8B73CE85DA1A481) ^ ((v58 ^ v34 ^ 0xA747D7EB64722703) + 0x4933E42AB6E4FEFCLL)) - 0x5A9D2C7913675605;
  v61 = v34 ^ v14 ^ v60 ^ ((v60 ^ 0x2D4C235E2CEEAF02) - 0x6BA41037462B1989) ^ ((v60 ^ 0xB860D9A5412DD8A7) + 0x1771533D41791D4) ^ ((v60 ^ 0xA879057DF57D3CCBLL) + 0x116EC9EB604775C0) ^ ((v60 ^ 0x7BBDCCEFF27BFDE5) - 0x3D55FF8698BE4B6ELL);
  v62 = (((v61 ^ 0x44CD68DFBFE855FBLL) + 0x7650E56F11BE9191) ^ ((v61 ^ 0x6F90D5220C2A3FF9) + 0x5D0D5892A27CFB93) ^ ((v61 ^ 0x531E21DDC520B87) + 0x37AC6FAD7204CFEDLL)) + v59;
  v63 = ((v62 - 0x41F665B11DF09860) ^ 0x39F1A87C80D5D983) & (2 * ((v62 - 0x41F665B11DF09860) & 0xB9E5CA7D2AE59D28)) ^ (v62 - 0x41F665B11DF09860) & 0xB9E5CA7D2AE59D28;
  v64 = ((2 * ((v62 - 0x41F665B11DF09860) ^ 0xBB038F684D5F983)) ^ 0x64ABE5175C60C956) & ((v62 - 0x41F665B11DF09860) ^ 0xBB038F684D5F983) ^ (2 * ((v62 - 0x41F665B11DF09860) ^ 0xBB038F684D5F983)) & 0xB255F28BAE3064AALL;
  v65 = v64 ^ 0x92541288A21024A9;
  v66 = (v64 ^ 0x200160010C204000) & (4 * v63) ^ v63;
  v67 = ((4 * v65) ^ 0xC957CA2EB8C192ACLL) & v65 ^ (4 * v65) & 0xB255F28BAE3064A8;
  v68 = (v67 ^ 0x8055C20AA80000A0) & (16 * v66) ^ v66;
  v69 = ((16 * (v67 ^ 0x3200308106306403)) ^ 0x255F28BAE3064AB0) & (v67 ^ 0x3200308106306403) ^ (16 * (v67 ^ 0x3200308106306403)) & 0xB255F28BAE3064A0;
  v70 = (v69 ^ 0x2055208AA2004000) & (v68 << 8) ^ v68;
  v71 = (((v69 ^ 0x9200D2010C30240BLL) << 8) ^ 0x55F28BAE3064AB00) & (v69 ^ 0x9200D2010C30240BLL) ^ ((v69 ^ 0x9200D2010C30240BLL) << 8) & 0xB255F28BAE306000;
  v72 = v70 ^ 0xB255F28BAE3064ABLL ^ (v71 ^ 0x1050828A20200000) & (v70 << 16);
  v73 = (v62 - 0x41F665B11DF09860) ^ (2 * ((v72 << 32) & a8 ^ v72 ^ ((v72 << 32) ^ 0x2E3064AB00000000) & (((v71 ^ 0xA20570018E1044ABLL) << 16) & a8 ^ 0x54508B00000000 ^ (((v71 ^ 0xA20570018E1044ABLL) << 16) ^ 0x728BAE3000000000) & (v71 ^ 0xA20570018E1044ABLL)))) ^ 0x4E2FED69CB59DA94;
  v74 = v73 ^ v10;
  v75 = v73 ^ a1;
  v76 = v74 ^ a4 & 0x7A596DF87D2394E2 ^ (v75 ^ 0xC2A77B9F76219528) & (a4 ^ 0xD8F1BD5E70E6B0ACLL);
  v77 = __ROR8__(__ROR8__(v9 ^ 0xEFEB57343116C293 ^ a4 ^ 0x159992F81AB454C5, 50) ^ 0x7F31B022D96A89C3, 14);
  v78 = v77 & 0xA3579352E701BBCBLL ^ (v77 ^ 0x5925759D4CC24AFCLL) & (a4 ^ 0x8459D1F36818F498) ^ 0xAC14EAF1AF5E1B52 ^ v75;
  return (*(STACK[0xED8] + 8 * v15))(v76 ^ v78 ^ 0x590E59325136BE10 ^ ((v76 ^ v78) >> 28) ^ __ROR8__(v76 ^ v78 ^ 0x590E59325136BE10, 19) ^ ((v76 ^ v78 ^ 0x590E59325136BE10) << 36) ^ 0x71B0EB23D32A8101);
}

uint64_t sub_1009E2F58(uint64_t a1)
{
  v1 = 906386353 * ((((2 * a1) | 0x2A4373B0) - a1 - 354531800) ^ 0x242074FC);
  v2 = *a1 + v1;
  v3 = (*(a1 + 4) - v1) ^ 0x31238193;
  if (v3 < 0)
  {
    v3 = -v3;
  }

  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1051086576;
  v5 = v4 - 1051086576 < 0;
  v7 = 1051086576 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1010A0B50 + (v2 ^ 0xA331)) + 8 * ((6260 * ((v3 >> 5) < v7)) ^ v2) - 810145054))();
}

uint64_t sub_1009E301C(uint64_t a1)
{
  *(v2 - 256) = 0;
  v4 = *(v2 - 160);
  return (*(v3 + 8 * (v1 ^ 0x9EF6A83C ^ (13817 * (v1 != -172852948)))))(a1, (*(v4 + 2) ^ 0x57) + ((2 * *(v4 + 2)) & 0xFFAEu) - 4, (*(v4 + 4) ^ 0x4B) + ((2 * *(v4 + 4)) & 0xFF96u) - 9);
}

uint64_t sub_1009E314C()
{
  v3 = *(v2 + 400);
  (*(v1 + 8 * (v0 ^ 0xDCC8)))(&STACK[0xCA7], 4096);
  STACK[0x878] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xD06 ^ (11519 * (v0 != 1168124489)))))(v3);
}

void **sub_1009E3410(void **result)
{
  v1 = *result;
  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_1009E3538()
{
  v1 = STACK[0x318] - 11474;
  v2 = v0 == LODWORD(STACK[0x3D0]);
  LOBYTE(STACK[0x767]) = v2;
  return (*(STACK[0x3A8] + 8 * ((55763 * v2) ^ v1)))();
}

void sub_1009E35C8(uint64_t a1)
{
  v1 = *(a1 + 16) + 155453101 * ((-2 - ((a1 | 0x443382D8) + (~a1 | 0xBBCC7D27))) ^ 0x5DEA66E8);
  __asm { BRAA            X9, X17 }
}

void sub_1009E3690()
{
  if (v0 == 503447476)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 20) = v2;
}

uint64_t sub_1009E37D0@<X0>(int a1@<W2>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v21 = (((v18 ^ a7) + (v10 ^ v11) + v12) ^ v10 ^ ((v10 ^ a1) + v20) ^ ((v10 ^ v8) + v16) ^ ((v10 ^ v13) + v14)) >> 6;
  v22 = (((v21 ^ v15) + v17) ^ ((v21 ^ v19) + v7) ^ ((v21 ^ a3) + a6)) + v9;
  return (*(a2 + 8 * (((((v22 - v18) | (v18 - v22)) >= 0) * a5) ^ (v18 + a4))))();
}

uint64_t sub_1009E392C()
{
  *v1 = 0;
  v4 = v1[2];
  LODWORD(STACK[0xA14]) = v4;
  LODWORD(STACK[0x1FC8]) = v0;
  v5 = v4 + v0 - 1940641950 > (LODWORD(STACK[0x1BA8]) - 1940641950);
  if (v4 + v0 > ((v2 + 954937603) ^ 0x38EBEC27u) + 1940596578 != LODWORD(STACK[0x1BA8]) > 0x73ABD89D)
  {
    v5 = v4 + v0 > ((v2 + 954937603) ^ 0x38EBEC27u) + 1940596578;
  }

  return (*(v3 + 8 * ((39 * v5) ^ v2)))();
}

uint64_t sub_1009E39C8(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, int a8)
{
  v15.val[0].i64[0] = (v11 + a5 - 1) & 0xF;
  v15.val[0].i64[1] = (v11 + a5 + 14) & 0xF;
  v15.val[1].i64[0] = (a6 + a5) & 0xF;
  v15.val[1].i64[1] = (v11 + a5 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + a5 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + a5 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + a5 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + a5) & 0xF ^ 8;
  *(a7 + a5) = veor_s8(veor_s8(veor_s8(*(v10 + v15.val[0].i64[0] - 7), *(a7 + a5)), veor_s8(*(v15.val[0].i64[0] + v8 - 6), *(v9 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a1), a2)));
  return (*(v13 + 8 * (((a4 == a5) * a8) ^ v12)))();
}

uint64_t sub_1009E6864()
{
  v3 = v1 + 8373;
  v5 = (*(v0 + 8 * (v3 ^ 0xF0B1)))(*(v2 - 168) ^ 0xE9D5C711);
  return (*(v0 + 8 * (((v5 != 0) * (v3 + 34358 + 13721 * (v3 ^ 0x3A2A) - 90406)) | v3)))(0);
}

uint64_t sub_1009E6900(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, char a5, int a6)
{
  v11 = STACK[0x5A0];
  *v10 = *a2 ^ *(v7 + (a3 & 0xF)) ^ *((a3 & 0xF) + v8 + 1) ^ ((a3 & 0xF) * a4) ^ *(v9 + (a3 & 0xF)) ^ a5;
  return (*(v11 + 8 * (((a3 == 0) * a6) ^ v6)))(a1, a2 - 1, a3 - 1);
}

uint64_t sub_1009E6958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = v16 + *v13;
  v22 = __ROR8__((v21 - 0x77618121D9EA8995) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((2 * v22 + 0x2D22D5F321CF2B02) & 0x3833AC852BF37AD8) - v22 + 0xD54BEC3D91EAD12;
  v24 = __ROR8__(v23 ^ 0xE4C4305E962176E1, 8);
  v23 ^= 0x504F6792111DDAEFuLL;
  v25 = __ROR8__((v24 + v23) ^ 0x14BA074A2F986FE5, 8);
  v26 = (v24 + v23) ^ 0x14BA074A2F986FE5 ^ __ROR8__(v23, 61);
  v27 = (v25 + v26) ^ v9;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((v29 + v28) | 0x9CA55D84F65A99B2) - ((v29 + v28) | v20) + v20) ^ 0x21D8706D375038D8;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v8;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = *(a5 + 8 * v18);
  v36 = __ROR8__((((v34 + v33) | 0x2DBC9B9342966C8DLL) - ((v34 + v33) | v12) + v12) ^ 0x87214129A072B8F1, 8);
  v37 = (((v34 + v33) | 0x2DBC9B9342966C8DLL) - ((v34 + v33) | v12) + v12) ^ 0x87214129A072B8F1 ^ __ROR8__(v33, 61);
  v38 = (((v36 + v37) | 0xABFB04E607E229F0) - ((v36 + v37) | a7) + a7) ^ 0x244925A5F9394543;
  *(v21 - 0x77618121D9EA8995) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v21 + 107) & 7))) ^ HIBYTE(v19) ^ 0x91;
  v39 = __ROR8__((v21 - 0x77618121D9EA8994) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = ((0x296E95066F186A7ELL - v39) & 0x51F1AF3817ABCAD4) + v39 - 0x296E95066F186A7FLL - ((v39 - 0x296E95066F186A7FLL) & 0x53F1AF3817ABCAD4);
  v41 = __ROR8__(v40 ^ 0x54D3B6DBEB8CFEA6, 8);
  v40 ^= 0xE058E1176CB052A8;
  v42 = (v41 + v40) ^ 0x14BA074A2F986FE5;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0x75A6D19F0C6867C0) + 0x3AD368CF863433E0) ^ 0x16E4E08C7F905D78;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) | 0xCC64C34E16E9732CLL) - (v47 + v46) + 0x19CD9E58F48B466ALL) ^ 0x5B4F4C4ECA7E18FCLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v8;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = (((2 * (v52 + v51)) & 0x19C65FC09C0D4C32) - (v52 + v51) - 0xCE32FE04E06A61ALL) ^ 0x59810AA5531D8D9ALL;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((v55 + v54) | 0x78989669C029B6EBLL) - ((v55 + v54) | v14) + v14) ^ 0xF72AB72A3EF2DA58;
  v57 = __ROR8__((v21 - 0x77618121D9EA8993) & 0xFFFFFFFFFFFFFFF8, 8);
  *(v21 - 0x77618121D9EA8994) = (((__ROR8__(v56, 8) + (v56 ^ __ROR8__(v54, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v21 + 108) & 7))) ^ BYTE2(v19) ^ 0xDE;
  v58 = ((0x296E95066F186A7ELL - v57) & 0x815F3681021F858BLL) + v57 - 0x296E95066F186A7FLL - ((v57 - 0x296E95066F186A7FLL) & 0x835F3681021F858BLL);
  v59 = v58 ^ 0x847D2F62FE38B1F9;
  v58 ^= 0x30F678AE79041DF7uLL;
  v60 = __ROR8__(v59, 8);
  v61 = (((v60 + v58) | 0x97B76A051CE23393) - ((v60 + v58) | v10) + v10) ^ 0x830D6D4F337A5C76;
  v62 = v61 ^ __ROR8__(v58, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ v9;
  v64 = __ROR8__(v63, 8);
  v65 = v63 ^ __ROR8__(v62, 61);
  v66 = (((2 * (v64 + v65)) & 0x4A116F4A475E6212) - (v64 + v65) - 0x2508B7A523AF310ALL) ^ 0x678A65B31D5A6F9CLL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0x1C31660AE6BB1B66) - (v68 + v67) + 0x71E74CFA8CA2724CLL) ^ 0xF357CCED33E1B225;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((v71 + v70) & 0xE46CE57B6C42BADDLL ^ 0xE444C40A4C42304CLL) + ((v71 + v70) & 0x1B931A8493BD4522 ^ 0x1101080400B80523) - 1) ^ 0x5FD816B4AE1EE112;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  *(v21 - 0x77618121D9EA8993) = (((__ROR8__((((v74 + v73) | 0x66DE1BC79C4C0F5ELL) - ((v74 + v73) | v11) + v11) ^ 0xE96C3A84629763EDLL, 8) + ((((v74 + v73) | 0x66DE1BC79C4C0F5ELL) - ((v74 + v73) | v11) + v11) ^ 0xE96C3A84629763EDLL ^ __ROR8__(v73, 61))) ^ 0x9B1C7427651E0F18) >> (8 * ((v21 + 109) & 7))) ^ BYTE1(v19) ^ 0xF4;
  v21 -= 0x77618121D9EA8992;
  v75 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = ((2 * (v75 - 0x296E95066F186A7FLL)) | 0xC93FF201A6CF04B4) - (v75 - 0x296E95066F186A7FLL) + 0x1B6006FF2C987DA6;
  v77 = v76 ^ 0xE3BDE0E32F40B628;
  v76 ^= 0x5736B72FA87C1A26uLL;
  v78 = (__ROR8__(v77, 8) + v76) ^ 0x14BA074A2F986FE5;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ v9;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((v82 + v81) | 0x30B131F11BB74009) - ((v82 + v81) | a6) + a6) ^ a8;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ v8;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = ((a4 | (2 * (v87 + v86))) - (v87 + v86) + v15) ^ v17;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x8FB22143FEDB6CB3;
  *v21 = v19 ^ (((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v89, 61))) ^ 0x9B1C7427651E0F18) >> (8 * (v21 & 7u))) ^ 0x70;
  return v35();
}

uint64_t sub_1009E7114()
{
  v4 = 634647737 * ((2 * ((v3 - 160) & 0xFBBE6A0) - (v3 - 160) - 263972514) ^ 0x9DD236A2);
  v5 = ((v1 + 539781842) & 0xDFD3F6F6) - v4 + (((*v2 ^ 0x36581210) - 911741456) ^ ((*v2 ^ 0x70CAFEAE) - 1892351662) ^ ((*v2 ^ 0xAF472BAF) + 1354273007 + ((v1 - 144399295) & 0x89B4BF7))) + 355056348;
  *(v3 - 156) = (v1 - 6005) ^ v4;
  *(v3 - 152) = v5;
  v6 = (*(v0 + 8 * (v1 ^ 0x9845)))(v3 - 160);
  return (*(v0 + 8 * ((121 * (*(v3 - 160) != 5)) ^ v1)))(v6);
}

uint64_t sub_1009E7280()
{
  v1 = (*(STACK[0x3A8] + 8 * ((v0 | 0xA10) + 15240)))(64);
  STACK[0x840] = v1;
  return (*(STACK[0x3A8] + 8 * (((v1 == 0) * ((v0 | 0xA10) - 1706 + (v0 | 0xA10) - 19241 - 52294)) | v0 | 0xA10)))();
}

uint64_t sub_1009E72F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v21 = *(v17 + 4 * (8717 * ((v10 ^ v15) ^ v11) - (((8717 * ((v10 ^ v15) ^ v11) * v12) >> 32) >> 12) * v13));
  *(*(v20 - 208) + 4 * v10) = v16 ^ v18 ^ a7 ^ ((((v21 ^ v14) + a1) ^ ((v21 ^ a2) + a3) ^ ((v21 ^ a4) + a5)) + a6);
  return (*(*(v20 - 200) + 8 * (v19 ^ (((v9 | v8) >> 31) * a8))))();
}

uint64_t sub_1009E73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x208] = v72;
  STACK[0x538] = a72;
  STACK[0x480] = 0;
  return (*(v73 + 202400))();
}

void sub_1009E74C8(uint64_t a1)
{
  v1 = 1012831759 * ((-2 - ((a1 | 0x536555AC) + (~a1 | 0xAC9AAA53))) ^ 0xBC09BCD9);
  v2 = *(a1 + 4) - v1;
  v3 = (*a1 - v1);
  v4 = *(*(a1 + 16) + 4);
  v6 = v4 - 1051086576;
  v5 = v4 - 1051086576 < 0;
  v7 = 1051086576 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  v8 = 4 * v7;
  v9 = v8 + 3554420754u;
  v10 = (v3 | ((v3 < 0x5F4339D) << 32)) + 3454530677u;
  v11 = v8 > 0xFFFFFFFF2C23D7EDLL;
  v12 = (v10 < 0xD3DC2812) ^ v11;
  v13 = v9 > v10;
  if (v12)
  {
    v13 = v11;
  }

  __asm { BRAA            X13, X17 }
}

uint64_t sub_1009E75D8()
{
  v2 = (v0 - 40932) | 0x400;
  v3 = *(v1 - 216);
  v4 = (*(v3 + 8 * (v0 ^ 0x7A9D)))(1028);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  STACK[0x4A0] = 0;
  *(v1 - 248) = 0;
  STACK[0x498] = 0;
  *(v1 - 256) = 0;
  STACK[0x480] = 0;
  *(v1 - 240) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  STACK[0x4B0] = 0;
  *(v1 - 224) = v2;
  v5 = *(v3 + 8 * (((v4 == 0) * (v2 ^ (v0 - 39937))) ^ v0));
  *(v1 - 148) = -1391007032;
  return v5();
}

uint64_t sub_1009E76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = *(v11 + 8 * a6);
  *&STACK[0x3E0] = xmmword_100BC76B0;
  return v13(vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(v9), vdupq_n_s64(v10), vdupq_n_s64(v6), vdupq_n_s64(v12), vdupq_n_s64(v8), vdupq_n_s64(v7));
}

uint64_t sub_1009E7878(unint64_t a1)
{
  STACK[0x260] = 0;
  v4 = *(v2 + 8 * (v1 - 1287243786));
  STACK[0x2D8] = a1;
  STACK[0x2D0] = a1;
  STACK[0x350] = a1;
  STACK[0x348] = v3;
  return v4();
}

uint64_t sub_1009E78BC(uint64_t result)
{
  v1 = *(result + 8);
  *v1 = 0xA899CE99F48C99A8;
  v1[1] = 0x85A86CCEF66CACCELL;
  v1[2] = 0;
  return result;
}

void sub_1009E79F0(uint64_t a1)
{
  v1 = *(a1 + 16) + 906386353 * (((a1 | 0xD1FD4C) - (a1 & 0xD1FD4C)) ^ 0x31D03068);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1009E7ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(*(a8 + 96) + 1624) = *(a2 + 8);
  *(*(a8 + 96) + 1616) = *(a2 + 4);
  return (*(v8 + 61976))();
}

uint64_t sub_1009E7BD8()
{
  v3 = *(v2 + 664);
  *(v2 + 1184) = 0;
  return (*(v1 + 8 * (((v3 != 0) * (((v0 - 4248) ^ 0x8126) - 34914)) ^ v0)))();
}

uint64_t sub_1009E7C20(uint64_t a1, unint64_t a2, uint64_t a3)
{
  STACK[0xFC0] = a2;
  STACK[0xFB0] = v3;
  v7 = *(v4 + 16);
  v8 = 1022166737 * ((v6 - 136 - 2 * ((v6 - 136) & 0x103C571812776DE8) - 0x6FC3A8E7ED889211) ^ 0xEEB62565A8678C7DLL);
  v9 = 1022166737 * ((v6 - 136 - 2 * ((v6 - 136) & 0x12776DE8) + 309816815) ^ 0xA8678C7D) + v5;
  *(v6 - 100) = v9 - 1337436062;
  *(v6 - 112) = v7 ^ v8;
  *(v6 - 136) = v8;
  *(v6 - 120) = (v5 ^ 0xB0484B67) + 1022166737 * ((v6 - 136 - 2 * ((v6 - 136) & 0x12776DE8) + 309816815) ^ 0xA8678C7D);
  *(v6 - 116) = (v5 | 0xB0484B70) - 1022166737 * ((v6 - 136 - 2 * ((v6 - 136) & 0x12776DE8) + 309816815) ^ 0xA8678C7D);
  *(v6 - 128) = -1022166737 * ((v6 - 136 - 2 * ((v6 - 136) & 0x12776DE8) + 309816815) ^ 0xA8678C7D);
  *(v6 - 124) = v9 + 782601083;
  v11 = (*(a3 + 8 * (v5 ^ 0xCB13)))(v6 - 136);
  return (*(a3 + 8 * *(v6 - 104)))(v11);
}

uint64_t sub_1009E7D5C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x5C0]) = v3;
  v4 = STACK[0x2B8];
  LODWORD(STACK[0x53C]) = STACK[0x368];
  LODWORD(STACK[0x50C]) = STACK[0x340];
  LODWORD(STACK[0x634]) = STACK[0x330];
  LODWORD(STACK[0x5D4]) = STACK[0x2FC];
  LODWORD(STACK[0x66C]) = v1;
  LODWORD(STACK[0x3CC]) = STACK[0x2F0];
  LODWORD(STACK[0x3F8]) = STACK[0x2F8];
  LODWORD(STACK[0x4C4]) = a1;
  LODWORD(STACK[0x4DC]) = STACK[0x2D0];
  LODWORD(STACK[0x538]) = STACK[0x2E4];
  LODWORD(STACK[0x54C]) = STACK[0x30C];
  LOBYTE(STACK[0x61B]) = STACK[0x2D8] & 1;
  return (*(v2 + 8 * v4))();
}

uint64_t sub_1009E7F00(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  LODWORD(STACK[0xDC8]) = v18 + 15084;
  v17[a15] = (v24 - ((2 * v24) & 0x58) - 84) ^ 0xAC;
  LODWORD(STACK[0xD68]) = (v18 + 15084) ^ 0x68A3;
  v20[1] = v22 - ((((v18 - 20) ^ 0xA3) + 27) & (2 * v22)) - 124;
  v17[a14] = (a1 - ((2 * a1) & 0x64) + 50) ^ 0x32;
  v20[2] = v16 - ((2 * v16) & 8) - 124;
  v17[2] = (v19 - ((2 * v19) & 0xC3) + 97) ^ 0x61;
  v25 = ((v21 ^ 0x1C29F2A1) - 472511137) ^ ((v21 ^ 0xACF414A2) + 1393290078) ^ ((v21 ^ 0x9DFDA155) + 1644322475);
  v20[3] = a8 - ((2 * a8) & 8) - 124;
  v27 = v16 ^ v21;
  v28 = ((v16 ^ 0xA7026B0) + 1431743650) ^ ((v16 ^ 0xC5A886C8) - 1701966630) ^ ((v16 ^ 0x772C1649) + 671784025);
  v17[3] = (v23 - ((2 * v23) & 0xFC) + 126) ^ 0x7E;
  v29 = v24 + a1;
  v30 = v24 ^ v19;
  v20[4] = v16 ^ v21 ^ 0xD5;
  v31 = ((v19 ^ 0xC9EC24DA) - 1898491199) ^ ((v19 ^ 0xB3D143FC) - 185977369) ^ ((v19 ^ 0xC2C9D117) - 2047695090);
  v32 = v29 - 1724645570 + (((v24 ^ v19 ^ 0x7298F192) + 1607915129) ^ ((v24 ^ v19 ^ 0xA05BE44E) - 1927953499) ^ ((v24 ^ v19 ^ 0x2D7C55DB) + 3306034));
  v33 = (v32 ^ 0x939810D3) & (2 * (v32 & 0x93DA98D4)) ^ v32 & 0x93DA98D4;
  v34 = v17;
  v35 = ((2 * (v32 ^ 0xB09C11F3)) ^ 0x468D124E) & (v32 ^ 0xB09C11F3) ^ (2 * (v32 ^ 0xB09C11F3)) & 0x23468926;
  v36 = v35 ^ 0x21428921;
  v37 = (v35 ^ 0x2040000) & (4 * v33) ^ v33;
  v38 = ((4 * v36) ^ 0x8D1A249C) & v36 ^ (4 * v36) & 0x23468924;
  v39 = v37 ^ 0x23468927 ^ (v38 ^ 0x1020000) & (16 * v37);
  v40 = (16 * (v38 ^ 0x22448923)) & 0x23468920 ^ 0x3060907 ^ ((16 * (v38 ^ 0x22448923)) ^ 0x34689270) & (v38 ^ 0x22448923);
  v41 = ((v39 << 8) ^ 0x46892700) & v40 ^ v39 ^ ((v39 << 8) & 0x23468900 | 1);
  v42 = ((v40 << 8) ^ 0x46892700) & v40 ^ ((v40 << 8) & 0x23468100 | 1);
  v43 = v32 ^ (2 * (v42 & 0x46B82701 ^ v41 ^ ((v41 << 16) ^ 0x4E9E2751) & (v42 ^ 0x21460000) ^ ((v41 << 16) ^ 0x4E9E2751) & 0x23460101));
  v44 = v25 + v22 + (((v27 ^ 0xD8737CCC) - 1677055393) ^ ((v27 ^ 0xFB239788) - 1084571365) ^ ((v27 ^ 0xF1CFEC15) - 1246315896)) - 722993408;
  v45 = (v44 ^ 0x894DF68A) & (2 * (v44 & 0xC151F692)) ^ v44 & 0xC151F692;
  v46 = ((2 * (v44 ^ 0x8B4E168A)) ^ 0x943FC030) & (v44 ^ 0x8B4E168A) ^ (2 * (v44 ^ 0x8B4E168A)) & 0x4A1FE018;
  v47 = v46 ^ 0x4A002008;
  v48 = (v46 ^ 0xFC010) & (4 * v45) ^ v45;
  v49 = ((4 * v47) ^ 0x287F8060) & v47 ^ (4 * v47) & 0x4A1FE018;
  v50 = v48 ^ 0x4A1FE018 ^ (v49 ^ 0x81F8000) & (16 * v48);
  v51 = (16 * (v49 ^ 0x42006018)) & 0x4A1FE000 ^ 0x4A01E018 ^ ((16 * (v49 ^ 0x42006018)) ^ 0xA1FE0180) & (v49 ^ 0x42006018);
  v52 = (v50 << 8) & 0x4A1FE000 ^ v50 ^ ((v50 << 8) ^ 0x1FE01800) & v51;
  v53 = v44 ^ (2 * ((v52 << 16) & 0x4A1F0000 ^ v52 ^ ((v52 << 16) ^ 0x60180000) & ((v51 << 8) & 0x4A1F0000 ^ 0x401F0000 ^ ((v51 << 8) ^ 0x1FE00000) & v51)));
  v17[4] = v30 ^ 7;
  v20[5] = v53 ^ 0x26;
  v54 = (((v30 ^ 0xD8EBE339) - 173685548) ^ ((v30 ^ 0xDEF0DFD8) - 205588429) ^ ((v30 ^ 0xF9A47CE6) - 722838771)) + v23;
  v17[5] = v43 ^ 0x9A;
  v55 = (((v27 ^ 0xC2E42857) - 2036498746) ^ ((v27 ^ 0xDF81654E) - 1678232611) ^ ((v27 ^ 0xCFFA4A48) - 1954341669)) + a8;
  LOBYTE(v52) = ((v28 - 126) ^ 0x4A) & (2 * ((v28 - 126) & 0x4B)) ^ (v28 - 126) & 0x4B;
  v56 = ((2 * ((v28 - 126) ^ 0x5A)) ^ 0x22) & ((v28 - 126) ^ 0x5A) ^ (2 * ((v28 - 126) ^ 0x5A)) & 0x10;
  v20[6] = (v28 - 126) ^ (2 * ((((4 * (v56 ^ 0x11)) ^ 0x40) & (v56 ^ 0x11) ^ (4 * (v56 ^ 0x11)) & 0x10) & (16 * (v56 & (4 * v52) ^ v52)) ^ v56 & (4 * v52) ^ v52)) ^ 0xCF;
  v17[6] = (v31 - 82) ^ (62 - v31) ^ (((v31 - 82) ^ 0x52) + 66) ^ (((v31 - 82) ^ v15) - 97) ^ (((v31 - 82) ^ 0xCC) - 32) ^ 0xEC;
  LOBYTE(v39) = ((v55 + 89) ^ 0x17) & (2 * ((v55 + 89) & 0x27)) ^ (v55 + 89) & 0x27;
  v57 = ((2 * ((v55 + 89) ^ 0x1F)) ^ 0x70) & ((v55 + 89) ^ 0x1F) ^ (2 * ((v55 + 89) ^ 0x1F)) & 0x38;
  LOBYTE(v52) = v57 ^ 8;
  v58 = v39 ^ 0x38 ^ (v57 ^ 0x30) & (4 * v39);
  v20[7] = (v55 + 89) ^ (2 * (((4 * v52) & 0x30 ^ ((4 * v52) ^ 0xE0) & v52 ^ 0x20) & (16 * v58) ^ v58)) ^ 0xD3;
  v59 = ((v55 - 2083942158) ^ 0xF9E9764E) & (2 * ((v55 - 2083942158) & 0xF9F2744E)) ^ (v55 - 2083942158) & 0xF9F2744E;
  v60 = ((2 * ((v55 - 2083942158) ^ 0x782D9E5A)) ^ 0x3BFD428) & ((v55 - 2083942158) ^ 0x782D9E5A) ^ (2 * ((v55 - 2083942158) ^ 0x782D9E5A)) & 0x81DFEA14;
  v61 = v60 ^ 0x80402A14;
  v62 = (v60 ^ 0x19BC000) & (4 * v59) ^ v59;
  v63 = ((4 * v61) ^ 0x77FA850) & v61 ^ (4 * v61) & 0x81DFEA10;
  v64 = v62 ^ 0x81DFEA14 ^ (v63 ^ 0x15FA800) & (16 * v62);
  v65 = (16 * (v63 ^ 0x80804204)) & 0x81DFEA00 ^ 0x80014A14 ^ ((16 * (v63 ^ 0x80804204)) ^ 0x1DFEA140) & (v63 ^ 0x80804204);
  v66 = (v64 << 8) & 0x81DFEA00 ^ v64 ^ ((v64 << 8) ^ 0xDFEA1400) & v65;
  v67 = (v66 << 16) & 0x1DF0000 ^ v66 ^ ((v66 << 16) ^ 0x6A140000) & ((v65 << 8) & 0x81DF0000 ^ 0x150000 ^ ((v65 << 8) ^ 0xDFEA0000) & v65);
  LOBYTE(v66) = ((v54 + 29) ^ 0xB9) & (2 * ((v54 + 29) & 0x39)) ^ (v54 + 29) & 0x39;
  LOBYTE(v61) = ((2 * ((v54 + 29) ^ 0x8B)) ^ 0x64) & ((v54 + 29) ^ 0x8B) ^ (2 * ((v54 + 29) ^ 0x8B)) & 0xB2;
  v68 = v43 ^ v30;
  LOBYTE(v66) = (((4 * (v61 ^ 0x92)) ^ 0xC0) & (v61 ^ 0x92) ^ (4 * (v61 ^ 0x92)) & 0xB0) & (16 * ((v61 ^ 0x20) & (4 * v66) ^ v66)) ^ (v61 ^ 0x20) & (4 * v66) ^ v66;
  v69 = (v55 - 2083942158) ^ (2 * v67);
  v17[7] = ((((v30 ^ 0x39) - 44) ^ ((v30 ^ 0xD8) + 51) ^ ((v30 ^ 0xE6) + 13)) + v23 + 29) ^ (2 * v66) ^ 0x39;
  v70 = ((v27 ^ 0xD6A33FE8) - 1831179909) ^ ((v27 ^ 0x9199FBC3) - 706695854) ^ ((v27 ^ 0x95A5C37A) - 774072855);
  v71 = ((v30 ^ 0xED33EC14) - 1065497601) ^ ((v30 ^ 0x6FC277D9) + 1116491828) ^ ((v30 ^ 0x7D4EDBCA) + 1342241825);
  v72 = v71 - 32073821 + (((v68 ^ 0xD47F8BD5) - 1358666385) ^ ((v68 ^ 0x4EA4B6EA) + 903829586) ^ ((v68 ^ 0xB033F7A2) - 884467430));
  v73 = v70 - 134959059 + (((v53 ^ v27 ^ 0x9502A35E) + 25372396) ^ ((v53 ^ v27 ^ 0x4DA0DD31) - 652126075) ^ ((v53 ^ v27 ^ 0xCB634F9C) + 1608698410));
  v74 = v28 + 1144853806 + (((v69 ^ 0xF9283A96) + 168290120) ^ ((v69 ^ 0x884339DA) + 2070733836) ^ ((v69 ^ 0x889AA32A) + 2075492092));
  v75 = (v74 ^ 0x352FCAD7) & (2 * (v74 & 0xA60FE2E7)) ^ v74 & 0xA60FE2E7;
  v76 = ((2 * (v74 ^ 0x392ACF91)) ^ 0x3E4A5AEC) & (v74 ^ 0x392ACF91) ^ (2 * (v74 ^ 0x392ACF91)) & 0x9F252D76;
  v77 = (v76 ^ 0x18000824) & (4 * v75) ^ v75;
  v78 = ((4 * (v76 ^ 0x81252512)) ^ 0x7C94B5D8) & (v76 ^ 0x81252512) ^ (4 * (v76 ^ 0x81252512)) & 0x9F252D70;
  v79 = (v78 ^ 0x1C042550) & (16 * v77) ^ v77;
  v80 = ((16 * (v78 ^ 0x83210826)) ^ 0xF252D760) & (v78 ^ 0x83210826) ^ (16 * (v78 ^ 0x83210826)) & 0x9F252D60;
  v81 = v79 ^ 0x9F252D76 ^ (v80 ^ 0x92000500) & (v79 << 8);
  v82 = v20;
  v83 = ((v54 - 326974300) ^ 0x40C237B) & (2 * ((v54 - 326974300) & 0x552E2A72)) ^ (v54 - 326974300) & 0x552E2A72;
  v84 = ((2 * ((v54 - 326974300) ^ 0x845477FB)) ^ 0xA2F4BB12) & ((v54 - 326974300) ^ 0x845477FB) ^ (2 * ((v54 - 326974300) ^ 0x845477FB)) & 0xD17A5D88;
  v85 = (v84 ^ 0x80701900) & (4 * v83) ^ v83;
  v86 = ((4 * (v84 ^ 0x510A4489)) ^ 0x45E97624) & (v84 ^ 0x510A4489) ^ (4 * (v84 ^ 0x510A4489)) & 0xD17A5D88;
  v87 = (v86 ^ 0x41685400) & (16 * v85) ^ v85;
  v88 = ((16 * (v86 ^ 0x90120989)) ^ 0x17A5D890) & (v86 ^ 0x90120989) ^ (16 * (v86 ^ 0x90120989)) & 0xD17A5D80;
  v89 = v87 ^ 0xD17A5D89 ^ (v88 ^ 0x11205800) & (v87 << 8);
  v90 = (v89 << 16) & 0x517A0000 ^ v89 ^ ((v89 << 16) ^ 0x5D890000) & (((v88 ^ 0xC05A0509) << 8) & 0xD17A0000 ^ 0x1220000 ^ (((v88 ^ 0xC05A0509) << 8) ^ 0x7A5D0000) & (v88 ^ 0xC05A0509));
  v71 += 621636763;
  v91 = (v71 ^ 0xB2DD95BE) & (2 * (v71 & 0xBAC1993F)) ^ v71 & 0xBAC1993F;
  v92 = ((2 * (v71 ^ 0xE6DFB7D8)) ^ 0xB83C5DCE) & (v71 ^ 0xE6DFB7D8) ^ (2 * (v71 ^ 0xE6DFB7D8)) & 0x5C1E2EE6;
  v93 = (v92 ^ 0x180C0CC4) & (4 * v91) ^ v91;
  v94 = ((4 * (v92 ^ 0x44022221)) ^ 0x7078BB9C) & (v92 ^ 0x44022221) ^ (4 * (v92 ^ 0x44022221)) & 0x5C1E2EE4;
  v95 = (v94 ^ 0x50182A80) & (16 * v93) ^ v93;
  v96 = ((16 * (v94 ^ 0xC060463)) ^ 0xC1E2EE70) & (v94 ^ 0xC060463) ^ (16 * (v94 ^ 0xC060463)) & 0x5C1E2EE0;
  v97 = v95 ^ 0x5C1E2EE7 ^ (v96 ^ 0x40022E00) & (v95 << 8);
  v98 = (v54 - 326974300) ^ (2 * v90);
  v99 = v71 ^ (2 * ((v97 << 16) & 0x5C1E0000 ^ v97 ^ ((v97 << 16) ^ 0x2EE70000) & (((v96 ^ 0x1C1C0087) << 8) & 0x5C1E0000 ^ 0x40100000 ^ (((v96 ^ 0x1C1C0087) << 8) ^ 0x1E2E0000) & (v96 ^ 0x1C1C0087)))) ^ v98;
  v100 = ((v99 ^ 0x505C75B9) - 1600283799) ^ ((v99 ^ 0xFDE44F51) + 220569985) ^ ((v99 ^ 0xE2836F79) + 306348457);
  v101 = ((v70 + 583098952) ^ 0xF8D0B93E) & (2 * ((v70 + 583098952) & 0xF918B9BC)) ^ (v70 + 583098952) & 0xF918B9BC;
  v102 = ((2 * ((v70 + 583098952) ^ 0x4AE0FA4E)) ^ 0x67F087E4) & ((v70 + 583098952) ^ 0x4AE0FA4E) ^ (2 * ((v70 + 583098952) ^ 0x4AE0FA4E)) & 0xB3F843F2;
  v103 = (v102 ^ 0x20E003E0) & (4 * v101) ^ v101;
  v104 = ((4 * (v102 ^ 0x90084012)) ^ 0xCFE10FC8) & (v102 ^ 0x90084012) ^ (4 * (v102 ^ 0x90084012)) & 0xB3F843F0;
  v105 = (v104 ^ 0x83E003C0) & (16 * v103) ^ v103;
  v106 = ((16 * (v104 ^ 0x30184032)) ^ 0x3F843F20) & (v104 ^ 0x30184032) ^ (16 * (v104 ^ 0x30184032)) & 0xB3F843E0;
  v107 = v105 ^ 0xB3F843F2 ^ (v106 ^ 0x33800300) & (v105 << 8);
  v108 = (v70 + 583098952) ^ (2 * ((v107 << 16) & 0x33F80000 ^ v107 ^ ((v107 << 16) ^ 0x43F20000) & (((v106 ^ 0x807840D2) << 8) & 0x33F80000 ^ 0x3B80000 ^ (((v106 ^ 0x807840D2) << 8) ^ 0x78430000) & (v106 ^ 0x807840D2)))) ^ v69;
  v109 = ((v108 ^ 0x8AF85CA0) + 1250917776) ^ ((v108 ^ 0xE7BDABBF) + 667585169) ^ ((v108 ^ 0xDBC6921) - 842315761);
  v20[8] = (v109 - 115) ^ (18 - v109) ^ (((v109 - 115) ^ 0x86) - 25) ^ (((v109 - 115) ^ 0x67) + 8) ^ (((v109 - 115) ^ 0x81) - 30) ^ 0x1B;
  v17[8] = (v100 - 118) ^ (65 - v100) ^ (((v100 - 118) ^ 0xC0) - 11) ^ (((v100 - 118) ^ 0x12) + 39) ^ (((v100 - 118) ^ 0xE6) - 45) ^ 0xCB;
  v110 = v74 ^ (v55 - 2083942158) ^ (2 * (v81 ^ v67 ^ (v81 << 16) & 0x1F250000 ^ ((v81 << 16) ^ 0x2D760000) & (((v80 ^ 0xD252816) << 8) & 0x1F250000 ^ 0x1A000000 ^ (((v80 ^ 0xD252816) << 8) ^ 0x252D0000) & (v80 ^ 0xD252816))));
  LOBYTE(v106) = (v73 ^ 0xEB) & 0xF6 | (v73 ^ 0x14) & (2 * (v73 ^ 0xEB));
  LOBYTE(v107) = (v106 ^ 0x40) & (4 * (((2 * v73) & 0x20 ^ 0x90) & v73)) ^ ((2 * v73) & 0x20 ^ 0x90) & v73;
  v20[9] = v73 ^ (2 * ((((v73 ^ 0xEB) & 0xE4 | (v73 ^ 0x14) & (2 * (v73 ^ 0xEB)) & 0xEC | (4 * v106) & ~v106) ^ 0xF3) & (16 * v107) ^ v107)) ^ 0x14;
  v111 = v31 + 1096879356 + (((v98 ^ 0xFE3026B4) + 187946326) ^ ((v98 ^ 0xB3FBC73D) + 1190671581) ^ ((v98 ^ 0x180170E9) - 318602487));
  v112 = (v111 ^ 0xF36BE821) & (2 * (v111 & 0xFB038244)) ^ v111 & 0xFB038244;
  v113 = ((2 * (v111 ^ 0x776FE829)) ^ 0x18D8D4DA) & (v111 ^ 0x776FE829) ^ (2 * (v111 ^ 0x776FE829)) & 0x8C6C6A6C;
  v114 = v113 ^ 0x84242A25;
  v115 = (v113 ^ 0x8080000) & (4 * v112) ^ v112;
  v116 = ((4 * v114) ^ 0x31B1A9B4) & v114 ^ (4 * v114) & 0x8C6C6A6C;
  v117 = (v116 ^ 0x202820) & (16 * v115) ^ v115;
  v118 = ((16 * (v116 ^ 0x8C4C4249)) ^ 0xC6C6A6D0) & (v116 ^ 0x8C4C4249) ^ (16 * (v116 ^ 0x8C4C4249)) & 0x8C6C6A40;
  v119 = v117 ^ 0x8C6C6A6D ^ (v118 ^ 0x84442200) & (v117 << 8);
  v17[9] = ((v72 ^ 0x2C) + 36) ^ v72 ^ ((v72 ^ 0x38) + 56) ^ ((v72 ^ 0x3B) + 53) ^ ((v72 ^ 0xDF) - 47) ^ 0xF0;
  v20[10] = v74 ^ (v55 - 14) ^ (2 * (v81 ^ v67)) ^ 0xE9;
  v120 = v111 ^ (v54 - 326974300) ^ (2 * (v119 ^ v90 ^ (v119 << 16) & 0xC6C0000 ^ ((v119 << 16) ^ 0x6A6D0000) & (((v118 ^ 0x828482D) << 8) & 0xC6C0000 ^ (((v118 ^ 0x828482D) << 8) ^ 0x6C6A0000) & (v118 ^ 0x828482D) ^ 0x40000)));
  v17[10] = v120 ^ 0xFE;
  LOBYTE(v118) = ((v55 - 4) ^ 0xE2) & (2 * ((v55 - 4) & 0xF4)) ^ (v55 - 4) & 0xF4;
  LOBYTE(v119) = ((2 * ((v55 - 4) ^ 0x2A)) ^ 0xBC) & ((v55 - 4) ^ 0x2A) ^ (2 * ((v55 - 4) ^ 0x2A)) & 0xDE;
  v20[11] = (v55 - 4) ^ (2 * (((4 * (v119 ^ 0x42)) & 0xC0 ^ ((4 * (v119 ^ 0x42)) ^ 0x60) & (v119 ^ 0x42) ^ 0x40) & (16 * ((v119 ^ 0x90) & (4 * v118) ^ v118)) ^ (v119 ^ 0x90) & (4 * v118) ^ v118)) ^ 0x70;
  v121 = v55 - (((v110 ^ 0xB6E35CD3) - 1953555855) ^ ((v110 ^ 0xE8DF15B6) - 709668074) ^ ((v110 ^ 0x25C05108) + 413931436));
  v122 = v109 + 828504312 + (((v110 ^ 0xA48425D7) - 1712823435) ^ ((v110 ^ 0x7566CFE1) + 1208650051) ^ ((v110 ^ 0xAA1EF25B) - 1754090247));
  LOBYTE(v118) = ((v54 + 0x80) ^ 0x57) & (2 * ((v54 + 0x80) & 0x46)) ^ (v54 + 0x80) & 0x46;
  LOBYTE(v110) = ((2 * ((v54 + 0x80) ^ 0xDF)) ^ 0x32) & ((v54 + 0x80) ^ 0xDF) ^ (2 * ((v54 + 0x80) ^ 0xDF)) & 0x98;
  v17[11] = (v54 + 0x80) ^ (2 * (((4 * (v110 ^ 0x89)) ^ 0x60) & (v110 ^ 0x89) & (16 * ((v110 ^ 0x10) & (4 * v118) ^ v118)) ^ (v110 ^ 0x10) & (4 * v118) ^ v118)) ^ 0x46;
  v123 = v72 - v100;
  v124 = v54 - (((v120 ^ 0x9124B521) - 128079410) ^ ((v120 ^ 0x756D519) + 1848625654) ^ ((v120 ^ 0x30BBA7C6) + 1505934123));
  v125 = v100 - 969235345 + (((v120 ^ 0x68997638) + 31484629) ^ ((v120 ^ 0xEB9926AB) - 2099234232) ^ ((v120 ^ 0x25C9976D) + 1286638466));
  v126 = v100 - v124 + 1895890018;
  v127 = (v126 ^ 0x9461C273) & (2 * (v126 & 0xD669EA84)) ^ v126 & 0xD669EA84;
  v128 = ((2 * (v126 ^ 0xB0E3C273)) ^ 0xCD1451EE) & (v126 ^ 0xB0E3C273) ^ (2 * (v126 ^ 0xB0E3C273)) & 0x668A28F6;
  v129 = v128 ^ 0x228A2811;
  v130 = (v128 ^ 0x40000020) & (4 * v127) ^ v127;
  v131 = ((4 * v129) ^ 0x9A28A3DC) & v129 ^ (4 * v129) & 0x668A28F4;
  v132 = (v131 ^ 0x20820C0) & (16 * v130) ^ v130;
  v133 = ((16 * (v131 ^ 0x64820823)) ^ 0x68A28F70) & (v131 ^ 0x64820823) ^ (16 * (v131 ^ 0x64820823)) & 0x668A28F0;
  v134 = v132 ^ 0x668A28F7 ^ (v133 ^ 0x60820800) & (v132 << 8);
  v135 = v73 - v109 - 1502537446;
  v136 = (((v123 - 1676834028) ^ 0xF3F4104E) + 1206282867) ^ (v123 - 1676834028) ^ (((v123 - 1676834028) ^ 0xF3215F41) + 1194534270) ^ (((v123 - 1676834028) ^ 0x15C53513) - 1579725008) ^ (((v123 - 1676834028) ^ 0x5EFDFFDF) - 353401372) ^ v126 ^ (2 * ((v134 << 16) & 0x668A0000 ^ v134 ^ ((v134 << 16) ^ 0x28F70000) & (((v133 ^ 0x6082087) << 8) & 0x668A0000 ^ 0x64820000 ^ (((v133 ^ 0x6082087) << 8) ^ 0xA280000) & (v133 ^ 0x6082087))));
  v137 = v109 - v121;
  v138 = ((v135 ^ 0x1B3B4938) - 1913056064) ^ v135 ^ ((v135 ^ 0xB18043C8) + 658644560) ^ ((v135 ^ 0xBC7B0777) + 716790513) ^ ((v135 ^ 0x7FFDAFFF) - 381685127) ^ (v137 + 2065024171) ^ (((v137 + 2065024171) ^ 0xF58BBDEC) - 849528464) ^ (((v137 + 2065024171) ^ 0xA1C82D1D) - 1726043745) ^ (((v137 + 2065024171) ^ 0x2C951672) + 339972850) ^ (((v137 + 2065024171) ^ 0xBFFFFDFF) - 2027325059);
  v139 = (((v121 + 1996122886) ^ 0x3CEFB0A4) + 508967710) ^ (v121 + 1996122886) ^ (((v121 + 1996122886) ^ 0xA4880DF6) - 2043574704) ^ (((v121 + 1996122886) ^ 0xBA5EB47B) - 1729675325) ^ (((v121 + 1996122886) ^ 0xFF7F7D6F) - 574163241);
  v140 = v137 - v121;
  LOBYTE(v129) = ((v140 - 55) ^ 0x27) & (2 * ((v140 - 55) & 0xA7)) ^ (v140 - 55) & 0xA7;
  LOBYTE(v137) = ((2 * ((v140 - 55) ^ 0x2B)) ^ 0x18) & ((v140 - 55) ^ 0x2B) ^ (2 * ((v140 - 55) ^ 0x2B)) & 0x8C;
  v20[12] = (v140 - 55) ^ (2 * (((4 * (v137 ^ 0x84)) ^ 0x30) & (v137 ^ 0x84) & (16 * ((v137 ^ 8) & (4 * v129) ^ v129)) ^ (v137 ^ 8) & (4 * v129) ^ v129)) ^ 0x23;
  v141 = v126 - v124;
  v142 = v138 ^ 0x1F3718E3;
  LOBYTE(v129) = (((v126 - v124 - 40) ^ 0x86) + 85) ^ (v126 - v124 - 40) ^ (((v126 - v124 - 40) ^ 0x87) + 86) ^ (((v126 - v124 - 40) ^ 0x93) + 66) ^ (((v126 - v124 - 40) ^ 0xBF) + 110) ^ 0x2D;
  v143 = v139 ^ 0x27DC694F;
  v144 = ((v122 ^ 0x46CD73B5) - 1582065004) ^ v122 ^ ((v122 ^ 0x7C8BD999) - 1678430016) ^ ((v122 ^ 0x1D304E0B) - 95508690) ^ ((v122 ^ 0x3FF7F2FE) - 662103079) ^ v138 ^ 0x1F3718E3;
  v17[12] = v129;
  v20[((2 * (-1293283229 - v121)) & 8 ^ (-1293283229 - v121) ^ v139 ^ 0x27DC694F) & 0xD ^ 5] = v138 ^ 0x80;
  v17[13] = v136 ^ 0xA9;
  v20[14] = ((v122 ^ 0xB5) - 108) ^ v122 ^ ((v122 ^ 0x99) - 64) ^ ((v122 ^ 0xB) + 46) ^ ((v122 ^ 0xFE) - 39) ^ v138 ^ 0xE3 ^ 0xBA;
  v145 = (((v124 + 1636505464) ^ 0x7AB044F3) - 7470701) ^ (v124 + 1636505464) ^ (((v124 + 1636505464) ^ 0xB572F341) + 810333729) ^ (((v124 + 1636505464) ^ 0xCAFCF0D3) + 1338160563) ^ (((v124 + 1636505464) ^ 0x7FFFFDFF) - 87967585);
  v146 = ((v125 ^ 0x1AC5E2F1) - 1327749170) ^ v125 ^ ((v125 ^ 0x199A7D3E) - 1283213309) ^ ((v125 ^ 0x29464BF2) - 2090889521) ^ ((v125 ^ 0x7FFFEEFE) - 706335805) ^ v136 ^ 0xE9E06448;
  v17[14] = v146 ^ 0x22;
  v20[15] = v139 ^ 0xC2;
  v147 = (((v146 ^ 0x347B6AC6) - 1306976166) ^ ((v146 ^ 0xA8EA0DFF) + 780683105) ^ ((v146 ^ 0x3103071B) - 1218359931)) - v141;
  v17[15] = (((v124 + 120) ^ 0xF3) - 109) ^ (v124 + 120) ^ (((v124 + 120) ^ 0x41) + 33) ^ (((v124 + 120) ^ 0xD3) - 77) ^ (-(v124 + 120) - 98) ^ 0x9E;
  v148 = (((v144 ^ 0xDF582758) + 1626397914) ^ ((v144 ^ 0xA863637E) + 399218944) ^ ((v144 ^ 0xDE999318) + 1630627994)) - (v140 + 1626182345);
  v149 = ((v136 ^ 0x97B81B8D) - 2119729093) ^ ((v136 ^ 0x4C8EDD47) + 1519470321) ^ ((v136 ^ 0xCAA2F863) - 591567915);
  v150 = ((v141 - 1576855182) ^ 0xA7C12F04) & (2 * ((v141 - 1576855182) & 0x27958FA6)) ^ (v141 - 1576855182) & 0x27958FA6;
  v151 = ((2 * ((v141 - 1576855182) ^ 0xA6EB2804)) ^ 0x2FD4F44) & ((v141 - 1576855182) ^ 0xA6EB2804) ^ (2 * ((v141 - 1576855182) ^ 0xA6EB2804)) & 0x817EA7A2;
  v152 = v151 ^ 0x8102A0A2;
  v153 = (v151 ^ 0x7C0700) & (4 * v150) ^ v150;
  v154 = ((4 * v152) ^ 0x5FA9E88) & v152 ^ (4 * v152) & 0x817EA7A0;
  v155 = (v154 ^ 0x17A8680) & (16 * v153) ^ v153;
  v156 = ((16 * (v154 ^ 0x80042122)) ^ 0x17EA7A20) & (v154 ^ 0x80042122) ^ (16 * (v154 ^ 0x80042122)) & 0x817EA7A0;
  v157 = v155 ^ 0x817EA7A2 ^ (v156 ^ 0x16A2200) & (v155 << 8);
  v158 = (v141 - 1576855182) ^ (2 * ((v157 << 16) & 0x17E0000 ^ v157 ^ ((v157 << 16) ^ 0x27A20000) & (((v156 ^ 0x80148582) << 8) & 0x17E0000 ^ 0x1580000 ^ (((v156 ^ 0x80148582) << 8) ^ 0x7EA70000) & (v156 ^ 0x80148582))));
  v159 = v136 ^ 0xE9E06448 ^ v145 ^ (v147 - 156598182) ^ (((v147 - 156598182) ^ 0xD91CAF) - 11742060) ^ (((v147 - 156598182) ^ 0x13AB29B4) - 331423351) ^ (((v147 - 156598182) ^ 0xECE7BD37) + 326268172) ^ (((v147 - 156598182) ^ 0xFFFFBFEF) + 6977492);
  v160 = ((v148 - 1591567936) ^ 0x89187895) & (2 * ((v148 - 1591567936) & 0xA1597AD9)) ^ (v148 - 1591567936) & 0xA1597AD9;
  v161 = ((2 * ((v148 - 1591567936) ^ 0x8B1A4885)) ^ 0x548664B8) & ((v148 - 1591567936) ^ 0x8B1A4885) ^ (2 * ((v148 - 1591567936) ^ 0x8B1A4885)) & 0x2A43325C;
  v162 = (v161 ^ 0x22008) & (4 * v160) ^ v160;
  v163 = ((4 * (v161 ^ 0x2A411244)) ^ 0xA90CC970) & (v161 ^ 0x2A411244) ^ (4 * (v161 ^ 0x2A411244)) & 0x2A433258;
  v164 = (v163 ^ 0x28000050) & (16 * v162) ^ v162;
  v165 = ((16 * (v163 ^ 0x243320C)) ^ 0xA43325C0) & (v163 ^ 0x243320C) ^ (16 * (v163 ^ 0x243320C)) & 0x2A433240;
  v166 = v164 ^ 0x2A43325C ^ (v165 ^ 0x20032000) & (v164 << 8);
  v167 = (((v138 ^ 0xF1B94E8) - 271354891) ^ ((v138 ^ 0x68F9FF71) - 2010048402) ^ ((v138 ^ 0xC9F6B29D) + 691950978)) + v148 - 1591567936;
  v168 = v142 ^ v143 ^ (v148 - 1591567936) ^ (2 * ((v166 << 16) & 0x2A430000 ^ v166 ^ ((v166 << 16) ^ 0x325C0000) & (((v165 ^ 0xA40121C) << 8) & 0x2A430000 ^ 0x28410000 ^ (((v165 ^ 0xA40121C) << 8) ^ 0x43320000) & (v165 ^ 0xA40121C))));
  v169 = ((v167 - 1742023015) ^ 0xE2A63E5F) & (2 * ((v167 - 1742023015) & 0x84B63F5E)) ^ (v167 - 1742023015) & 0x84B63F5E;
  v170 = ((2 * ((v167 - 1742023015) ^ 0xEBA232EF)) ^ 0xDE281B62) & ((v167 - 1742023015) ^ 0xEBA232EF) ^ (2 * ((v167 - 1742023015) ^ 0xEBA232EF)) & 0x6F140DB0;
  v171 = (v170 ^ 0x6000920) & (4 * v169) ^ v169;
  v172 = ((4 * (v170 ^ 0x21140491)) ^ 0xBC5036C4) & (v170 ^ 0x21140491) ^ (4 * (v170 ^ 0x21140491)) & 0x6F140DB0;
  v173 = (v172 ^ 0x2C100480) & (16 * v171) ^ v171;
  v174 = ((16 * (v172 ^ 0x43040931)) ^ 0xF140DB10) & (v172 ^ 0x43040931) ^ (16 * (v172 ^ 0x43040931)) & 0x6F140D90;
  v175 = v173 ^ 0x6F140DB1 ^ (v174 ^ 0x61000900) & (v173 << 8);
  v176 = (v167 - 1742023015) ^ (2 * ((v175 << 16) & 0x6F140000 ^ v175 ^ ((v175 << 16) ^ 0xDB10000) & (((v174 ^ 0xE1404A1) << 8) & 0x6F140000 ^ 0x6B100000 ^ (((v174 ^ 0xE1404A1) << 8) ^ 0x140D0000) & (v174 ^ 0xE1404A1))));
  v140 -= 1522732913;
  v177 = (v140 ^ 0x6EFB7C6D) & (2 * (v140 & 0x4EF37D4E)) ^ v140 & 0x4EF37D4E;
  v178 = ((2 * (v140 ^ 0x72B96C7D)) ^ 0x78942266) & (v140 ^ 0x72B96C7D) ^ (2 * (v140 ^ 0x72B96C7D)) & 0x3C4A1132;
  v179 = (v178 ^ 0x38000020) & (4 * v177) ^ v177;
  v180 = ((4 * (v178 ^ 0x44A1111)) ^ 0xF12844CC) & (v178 ^ 0x44A1111) ^ (4 * (v178 ^ 0x44A1111)) & 0x3C4A1130;
  v181 = (v180 ^ 0x30080000) & (16 * v179) ^ v179;
  v182 = ((16 * (v180 ^ 0xC421133)) ^ 0xC4A11330) & (v180 ^ 0xC421133) ^ (16 * (v180 ^ 0xC421133)) & 0x3C4A1130;
  v183 = v181 ^ 0x3C4A1133 ^ (v182 ^ 0x4001100) & (v181 << 8);
  v184 = v140 ^ (2 * ((v183 << 16) & 0x3C4A0000 ^ v183 ^ ((v183 << 16) ^ 0x11330000) & (((v182 ^ 0x384A0003) << 8) & 0x3C4A0000 ^ 0x344A0000 ^ (((v182 ^ 0x384A0003) << 8) ^ 0x4A110000) & (v182 ^ 0x384A0003))));
  v185 = v149 + 1042386639 + v147 - 156598182;
  v186 = (v185 ^ 0xB72A6DF5) & (2 * (v185 & 0x844C6D86)) ^ v185 & 0x844C6D86;
  v187 = ((2 * (v185 ^ 0xBF3AA5F9)) ^ 0x76ED90FE) & (v185 ^ 0xBF3AA5F9) ^ (2 * (v185 ^ 0xBF3AA5F9)) & 0x3B76C87E;
  v188 = v187 ^ 0x9124801;
  v189 = (v187 ^ 0x32608038) & (4 * v186) ^ v186;
  v190 = ((4 * v188) ^ 0xEDDB21FC) & v188 ^ (4 * v188) & 0x3B76C87C;
  v191 = (v190 ^ 0x29520060) & (16 * v189) ^ v189;
  v192 = ((16 * (v190 ^ 0x1224C803)) ^ 0xB76C87F0) & (v190 ^ 0x1224C803) ^ (16 * (v190 ^ 0x1224C803)) & 0x3B76C870;
  v193 = v191 ^ 0x3B76C87F ^ (v192 ^ 0x33648000) & (v191 << 8);
  v194 = v185 ^ (2 * ((v193 << 16) & 0x3B760000 ^ v193 ^ ((v193 << 16) ^ 0x487F0000) & (((v192 ^ 0x812480F) << 8) & 0x3B760000 ^ 0x9360000 ^ (((v192 ^ 0x812480F) << 8) ^ 0x76C80000) & (v192 ^ 0x812480F))));
  v195 = v147 - 716933297;
  v196 = (v195 ^ 0xFEAB5D70) & (2 * (v195 & 0xFF2B907A)) ^ v195 & 0xFF2B907A;
  v197 = ((2 * ((v147 - 716933297) ^ 0x62EE5D64)) ^ 0x3B8B9A3C) & ((v147 - 716933297) ^ 0x62EE5D64) ^ (2 * ((v147 - 716933297) ^ 0x62EE5D64)) & 0x9DC5CD1E;
  v198 = v197 ^ 0x84444502;
  v199 = (v197 ^ 0x19808018) & (4 * v196) ^ v196;
  v200 = ((4 * v198) ^ 0x77173478) & v198 ^ (4 * v198) & 0x9DC5CD18;
  v201 = (v200 ^ 0x15050400) & (16 * v199) ^ v199;
  v202 = ((16 * (v200 ^ 0x88C0C906)) ^ 0xDC5CD1E0) & (v200 ^ 0x88C0C906) ^ (16 * (v200 ^ 0x88C0C906)) & 0x9DC5CD00;
  v203 = v202 ^ 0x1810C1E;
  v204 = v201 ^ 0x9DC5CD1E ^ (v202 ^ 0x9C44C100) & (v201 << 8);
  v205 = v158 ^ v194;
  v206 = v195 ^ (2 * ((v204 << 16) & 0x1DC50000 ^ v204 ^ ((v204 << 16) ^ 0x4D1E0000) & ((v203 << 8) & 0x1DC50000 ^ ((v203 << 8) ^ 0x45CD0000) & v203 ^ 0x18000000)));
  v207 = v184 ^ v176;
  v20[16] = v207 ^ 0x90;
  v17[16] = v158 ^ v194 ^ 0x9A;
  v148 -= 570892775;
  v208 = (v148 ^ 0x2AAAE528) & (2 * (v148 & 0x42B2F5B2)) ^ v148 & 0x42B2F5B2;
  v209 = ((2 * (v148 ^ 0xAA8EAE4C)) ^ 0xD078B7FC) & (v148 ^ 0xAA8EAE4C) ^ (2 * (v148 ^ 0xAA8EAE4C)) & 0xE83C5BFE;
  v210 = v209 ^ 0x28044802;
  v211 = (v209 ^ 0x1813D8) & (4 * v208) ^ v208;
  v212 = ((4 * v210) ^ 0xA0F16FF8) & v210 ^ (4 * v210) & 0xE83C5BF8;
  v213 = (v212 ^ 0xA0304BE0) & (16 * v211) ^ v211;
  v214 = ((16 * (v212 ^ 0x480C1006)) ^ 0x83C5BFE0) & (v212 ^ 0x480C1006) ^ (16 * (v212 ^ 0x480C1006)) & 0xE83C5BE0;
  v215 = v213 ^ 0xE83C5BFE ^ (v214 ^ 0x80041B00) & (v213 << 8);
  v216 = v148 ^ (2 * ((v215 << 16) & 0x683C0000 ^ v215 ^ ((v215 << 16) ^ 0x5BFE0000) & (((v214 ^ 0x6838401E) << 8) & 0x683C0000 ^ 0x40240000 ^ (((v214 ^ 0x6838401E) << 8) ^ 0x3C5B0000) & (v214 ^ 0x6838401E))));
  v20[17] = v176 ^ 0xB8;
  v217 = v167 + 154914907;
  v17[17] = v194 ^ 0x78;
  v20[18] = v216 ^ 0xCA;
  v17[18] = v206 ^ 0x46;
  v20[19] = v168 ^ 0xB;
  v17[19] = v159 ^ 0xBC;
  v218 = v167 - 310222589 + (((v168 ^ 0xF27E79A8) + 1967604705) ^ ((v168 ^ 0x2C792788) - 1421861439) ^ ((v168 ^ 0x24E19CAF) - 1546082584));
  v219 = (v218 ^ 0xA85DC63C) & (2 * (v218 & 0x8C81E73E)) ^ v218 & 0x8C81E73E;
  v220 = ((2 * (v218 ^ 0xB95D8E28)) ^ 0x6BB8D22C) & (v218 ^ 0xB95D8E28) ^ (2 * (v218 ^ 0xB95D8E28)) & 0x35DC6916;
  v221 = v220 ^ 0x14442912;
  v222 = (v220 ^ 0x20080000) & (4 * v219) ^ v219;
  v223 = ((4 * v221) ^ 0xD771A458) & v221 ^ (4 * v221) & 0x35DC6910;
  v224 = v222 ^ 0x35DC6916 ^ (v223 ^ 0x15502000) & (16 * v222);
  v225 = (16 * (v223 ^ 0x208C4906)) & 0x35DC6900 ^ 0x20186816 ^ ((16 * (v223 ^ 0x208C4906)) ^ 0x5DC69160) & (v223 ^ 0x208C4906);
  v226 = (v224 << 8) & 0x35DC6900 ^ v224 ^ ((v224 << 8) ^ 0xDC691600) & v225;
  v227 = v218 ^ (2 * ((v226 << 16) & 0x35DC0000 ^ v226 ^ ((v226 << 16) ^ 0x69160000) & ((v225 << 8) & 0x35DC0000 ^ 0x21940000 ^ ((v225 << 8) ^ 0x5C690000) & v225)));
  v228 = v227 ^ 0x92841B19 ^ v207;
  v229 = (((v227 ^ 0xF3FD7540) - 1635348057) ^ ((v227 ^ 0xF2506EAB) - 1624536498) ^ ((v227 ^ 0x8C2C2EF9) - 514340320)) - 1683670033;
  v230 = ((v229 ^ 0xA185EFC0) + 1691867099) ^ v229 ^ ((v229 ^ 0xDACF368) - 922825869) ^ ((v229 ^ 0xE97A24B2) + 740826281) ^ ((v229 ^ 0x7FFEFFFF) - 1163081754);
  v231 = (((v227 ^ 0x92841B19 ^ v216 ^ 0x46F22343) - 958629643) ^ ((v227 ^ 0x92841B19 ^ v216 ^ 0x145DEB6A) - 1804357410) ^ ((v227 ^ 0x92841B19 ^ v216 ^ 0x4F18A46C) - 818479140)) - 12094567 + (((v230 ^ 0xFBFA0A0E) + 1730784818) ^ ((v230 ^ 0xF0149BDB) + 1824997349) ^ ((v230 ^ 0x31435630) - 1383009776));
  v232 = ((v231 ^ 0xA525A7B8) + 428168993) ^ v231 ^ ((v231 ^ 0x2E02CF6C) - 1834860555) ^ ((v231 ^ 0x37A6184C) - 1962481451) ^ ((v231 ^ 0xFFDE7FFF) + 1132367720);
  v233 = v228 ^ v232 ^ 0x4F898F36;
  v234 = ((v217 ^ 0x728A8A84) - 1675429334) ^ v217 ^ ((v217 ^ 0xCACB1240) + 610493166) ^ ((v217 ^ 0xD6F9E8EB) + 944871495) ^ ((v217 ^ 0x7FEFFF7D) - 1857581103) ^ v233;
  v20[20] = v233 ^ 0xCA;
  v235 = (((v194 ^ 0xFC7CD2B2) + 1251055191) ^ ((v194 ^ 0x9CA011AE) + 709711179) ^ ((v194 ^ 0x82913E64) + 880573057)) - 1465234428;
  v236 = (((v159 ^ 0xC178A8F1) + 1379393429) ^ ((v159 ^ 0xEA2750E6) + 2036868996) ^ ((v159 ^ 0xA9802FAB) + 986667215)) + 1152924949 + v235;
  v237 = ((v236 ^ 0x8698AC2D) + 33024941) ^ v236 ^ ((v236 ^ 0xBE69AF9E) + 956753952) ^ ((v236 ^ 0xF79E0430) + 1894859698) ^ ((v236 ^ 0xB7FFBFFD) + 814807165);
  v238 = v237 ^ 0xA69D4300 ^ v206;
  v239 = (((v233 ^ 0x85BC2FEE) + 230624229) ^ ((v233 ^ 0xA76ECCCA) + 795732161) ^ ((v233 ^ 0x67DC366A) - 270593439)) - (((v232 ^ 0x2F4D30DC) - 1623506922) ^ ((v232 ^ 0x2A1677E8) - 1704982750) ^ ((v232 ^ 0x46044853) - 160286565));
  v240 = v237 ^ 0xA69D4300 ^ v205;
  v241 = (((v237 ^ 0xC93F56EC) - 1872893420) ^ ((v237 ^ 0x169DAF69) + 1342116759) ^ ((v237 ^ 0xA73241FB) - 28246779)) + 1652578404;
  v242 = (v241 ^ 0xB87FC898) & (2 * (v241 & 0xBD7FE919)) ^ v241 & 0xBD7FE919;
  v243 = ((2 * (v241 ^ 0xCACF48BA)) ^ 0xEF614346) & (v241 ^ 0xCACF48BA) ^ (2 * (v241 ^ 0xCACF48BA)) & 0x77B0A1A2;
  v244 = v243 ^ 0x1090A0A1;
  v245 = (v243 ^ 0x67200000) & (4 * v242) ^ v242;
  v246 = ((4 * v244) ^ 0xDEC2868C) & v244 ^ (4 * v244) & 0x77B0A1A0;
  v247 = (v246 ^ 0x56808080) & (16 * v245) ^ v245;
  v248 = ((16 * (v246 ^ 0x21302123)) ^ 0x7B0A1A30) & (v246 ^ 0x21302123) ^ (16 * (v246 ^ 0x21302123)) & 0x77B0A1A0;
  v249 = v247 ^ 0x77B0A1A3 ^ (v248 ^ 0x73000000) & (v247 << 8);
  v250 = v241 ^ (2 * ((v249 << 16) & 0x77B00000 ^ v249 ^ ((v249 << 16) ^ 0x21A30000) & (((v248 ^ 0x4B0A183) << 8) & 0x77B00000 ^ 0x47100000 ^ (((v248 ^ 0x4B0A183) << 8) ^ 0x30A10000) & (v248 ^ 0x4B0A183))));
  v251 = (((v238 ^ 0x10A69BBF) + 1969399916) ^ ((v238 ^ 0x22630CDD) + 1202142986) ^ ((v238 ^ 0x3260665A) + 1470387599)) - 1750267219 + (((v250 ^ 0xAE200B9A) - 2006508245) ^ ((v250 ^ 0x8B3875BE) - 1384160497) ^ ((v250 ^ 0x3446D47B) + 302105292));
  v252 = (v251 ^ 0xABC77465) & (2 * (v251 & 0xCBD77576)) ^ v251 & 0xCBD77576;
  v253 = ((2 * (v251 ^ 0x3DC9F6A5)) ^ 0xEC3D07A6) & (v251 ^ 0x3DC9F6A5) ^ (2 * (v251 ^ 0x3DC9F6A5)) & 0xF61E83D2;
  v254 = v253 ^ 0x12028051;
  v255 = (v253 ^ 0x641C0380) & (4 * v252) ^ v252;
  v256 = ((4 * v254) ^ 0xD87A0F4C) & v254 ^ (4 * v254) & 0xF61E83D0;
  v257 = (v256 ^ 0xD01A0340) & (16 * v255) ^ v255;
  v258 = ((16 * (v256 ^ 0x26048093)) ^ 0x61E83D30) & (v256 ^ 0x26048093) ^ (16 * (v256 ^ 0x26048093)) & 0xF61E83D0;
  v259 = v257 ^ 0xF61E83D3 ^ (v258 ^ 0x60080100) & (v257 << 8);
  v260 = v251 ^ (2 * ((v259 << 16) & 0x761E0000 ^ v259 ^ ((v259 << 16) ^ 0x3D30000) & (((v258 ^ 0x961682C3) << 8) & 0x761E0000 ^ 0x601C0000 ^ (((v258 ^ 0x961682C3) << 8) ^ 0x1E830000) & (v258 ^ 0x961682C3))));
  v261 = v240 ^ v260 ^ 0xFE980FD7;
  v17[20] = v261 ^ 0xE3;
  v262 = (v235 ^ 0xD9312574) & (2 * (v235 & 0xDDB82571)) ^ v235 & 0xDDB82571;
  v263 = ((2 * (v235 ^ 0xE2516F36)) ^ 0x7FD2948E) & (v235 ^ 0xE2516F36) ^ (2 * (v235 ^ 0xE2516F36)) & 0x3FE94A46;
  v264 = (v263 ^ 0x3FC00004) & (4 * v262) ^ v262;
  v265 = ((4 * (v263 ^ 0x294A41)) ^ 0xFFA5291C) & (v263 ^ 0x294A41) ^ (4 * (v263 ^ 0x294A41)) & 0x3FE94A44;
  v266 = (v265 ^ 0x3FA10800) & (16 * v264) ^ v264;
  v267 = ((16 * (v265 ^ 0x484243)) ^ 0xFE94A470) & (v265 ^ 0x484243) ^ (16 * (v265 ^ 0x484243)) & 0x3FE94A40;
  v268 = v266 ^ 0x3FE94A47 ^ (v267 ^ 0x3E800000) & (v266 << 8);
  v269 = v235 ^ (2 * ((v268 << 16) & 0x3FE90000 ^ v268 ^ ((v268 << 16) ^ 0x4A470000) & (((v267 ^ 0x1694A07) << 8) & 0x3FE90000 ^ 0x16A10000 ^ (((v267 ^ 0x1694A07) << 8) ^ 0x694A0000) & (v267 ^ 0x1694A07)))) ^ v261;
  v20[21] = v234 ^ 0x98;
  v17[21] = v235 ^ (2 * v268) ^ v261 ^ 0x1C;
  v20[22] = v232 ^ 0xE3;
  v17[22] = v260 ^ 0xD0;
  v20[23] = v230 ^ 0x61;
  v270 = (((v261 ^ 0x7653E176) + 781942384) ^ ((v261 ^ 0xF923BAA0) - 1578424902) ^ ((v261 ^ 0x494AE035) + 293764909)) - (((v260 ^ 0x1955FDC3) + 405933548) ^ ((v260 ^ 0xFD95747) + 247375728) ^ ((v260 ^ 0x3542D854) + 874850429));
  v271 = v232 ^ 0x4F898F36 ^ v230;
  v272 = (((v232 ^ 0x73913D18) - 1008251438) ^ ((v232 ^ 0x3CDE16F) - 1279553113) ^ ((v232 ^ 0x3303D310) - 2089442342)) - (((v234 ^ 0xAE1C2BA3) + 131999213) ^ ((v234 ^ 0x644591EB) - 846749787) ^ ((v234 ^ 0x9E00E054) + 935521820));
  v273 = (((v234 ^ 0x6737F6A2) - 822740754) ^ ((v234 ^ 0x67AD1593) - 831579171) ^ ((v234 ^ 0x54C3B92D) - 50219165)) + v239 + 1612704716;
  v274 = (v273 ^ 0xCB560D6B) & (2 * (v273 & 0xC8604E4A)) ^ v273 & 0xC8604E4A;
  v275 = ((2 * (v273 ^ 0x4B168D6F)) ^ 0x6ED864A) & (v273 ^ 0x4B168D6F) ^ (2 * (v273 ^ 0x4B168D6F)) & 0x8376C324;
  v276 = v275 ^ 0x81124125;
  v277 = (v275 ^ 0x2000200) & (4 * v274) ^ v274;
  v278 = ((4 * v276) ^ 0xDDB0C94) & v276 ^ (4 * v276) & 0x8376C324;
  v279 = (v278 ^ 0x1520000) & (16 * v277) ^ v277;
  v280 = ((16 * (v278 ^ 0x8224C321)) ^ 0x376C3250) & (v278 ^ 0x8224C321) ^ (16 * (v278 ^ 0x8224C321)) & 0x8376C300;
  v281 = v279 ^ 0x8376C325 ^ (v280 ^ 0x3640200) & (v279 << 8);
  v282 = v273 ^ v271 ^ (2 * ((v281 << 16) & 0x3760000 ^ v281 ^ ((v281 << 16) ^ 0x43250000) & (((v280 ^ 0x8012C125) << 8) & 0x3760000 ^ 0x1340000 ^ (((v280 ^ 0x8012C125) << 8) ^ 0x76C30000) & (v280 ^ 0x8012C125))));
  v283 = ((v239 - 846587189) ^ 0x8EE37659) & (2 * ((v239 - 846587189) & 0xAEF3471C)) ^ (v239 - 846587189) & 0xAEF3471C;
  v284 = ((2 * ((v239 - 846587189) ^ 0x8F837C49)) ^ 0x42E076AA) & ((v239 - 846587189) ^ 0x8F837C49) ^ (2 * ((v239 - 846587189) ^ 0x8F837C49)) & 0x21703B54;
  v285 = (v284 ^ 0x403000) & (4 * v283) ^ v283;
  v286 = ((4 * (v284 ^ 0x21100955)) ^ 0x85C0ED54) & (v284 ^ 0x21100955) ^ (4 * (v284 ^ 0x21100955)) & 0x21703B54;
  v287 = (v286 ^ 0x1402940) & (16 * v285) ^ v285;
  v288 = ((16 * (v286 ^ 0x20301201)) ^ 0x1703B550) & (v286 ^ 0x20301201) ^ (16 * (v286 ^ 0x20301201)) & 0x21703B50;
  v289 = v287 ^ 0x21703B55 ^ (v288 ^ 0x1003100) & (v287 << 8);
  v290 = (v239 - 846587189) ^ (2 * ((v289 << 16) & 0x21700000 ^ v289 ^ ((v289 << 16) ^ 0x3B550000) & (((v288 ^ 0x20700A05) << 8) & 0x21700000 ^ 0x1400000 ^ (((v288 ^ 0x20700A05) << 8) ^ 0x703B0000) & (v288 ^ 0x20700A05))));
  v291 = (((v239 + 1132889999) ^ 0x5F27FDD5) - 237716785) ^ (v239 + 1132889999) ^ (((v239 + 1132889999) ^ 0xD5685F61) + 2073761915) ^ (((v239 + 1132889999) ^ 0x4B8B5AF) - 1437863243) ^ (((v239 + 1132889999) ^ 0xDFFBAFFF) + 1896409317);
  v17[23] = v250 ^ 0x5F;
  v292 = v260 ^ 0xFE980FD7 ^ v250;
  v293 = (((v260 ^ 0x23A719F2) + 583068123) ^ ((v260 ^ 0xC7B356E0) - 959142199) ^ ((v260 ^ 0xC7DA3DC2) - 960639509)) - (((v269 ^ 0x105ED1D7) - 179224392) ^ ((v269 ^ 0x27490767) - 1035561464) ^ ((v269 ^ 0x47C5DCAC) - 1563800115));
  v294 = v272 + (((v271 ^ 0x427355E0) - 1650145580) ^ ((v271 ^ 0xB9A70978) + 1718655564) ^ ((v271 ^ 0x44BD5527) - 1687501291));
  v295 = (((v269 ^ 0xF6395CA7) + 322358728) ^ ((v269 ^ 0x2C9F703E) - 913252001) ^ ((v269 ^ 0xAA742685) + 1333508070)) + v270 + 1738658688;
  v296 = (v295 ^ 0x85B7CE6C) & (2 * (v295 & 0x8637EF01)) ^ v295 & 0x8637EF01;
  v297 = ((2 * (v295 ^ 0x8DBF8C6E)) ^ 0x1710C6DE) & (v295 ^ 0x8DBF8C6E) ^ (2 * (v295 ^ 0x8DBF8C6E)) & 0xB88636E;
  v298 = v297 ^ 0x8882121;
  v299 = (v297 ^ 0x100400C) & (4 * v296) ^ v296;
  v300 = ((4 * v298) ^ 0x2E218DBC) & v298 ^ (4 * v298) & 0xB88636C;
  v301 = (v300 ^ 0xA000120) & (16 * v299) ^ v299;
  v302 = ((16 * (v300 ^ 0x1886243)) ^ 0xB88636F0) & (v300 ^ 0x1886243) ^ (16 * (v300 ^ 0x1886243)) & 0xB886360;
  v303 = v301 ^ 0xB88636F ^ (v302 ^ 0x8802200) & (v301 << 8);
  v20[24] = v290 ^ 0x32;
  v304 = (((v270 + 1328111525) ^ 0x71FBCD) - 1969346023) ^ (v270 + 1328111525) ^ (((v270 + 1328111525) ^ 0xB4903AF8) + 1048570670) ^ (((v270 + 1328111525) ^ 0xBE0618E0) + 887736630) ^ (((v270 + 1328111525) ^ 0x7FF7F7FF) - 182966741);
  v305 = v295 ^ v292 ^ (2 * ((v303 << 16) & 0xB880000 ^ v303 ^ ((v303 << 16) ^ 0x636F0000) & (((v302 ^ 0x308410F) << 8) & 0xB880000 ^ 0x3880000 ^ (((v302 ^ 0x308410F) << 8) ^ 0x8630000) & (v302 ^ 0x308410F))));
  v306 = v270 - 987378583;
  v307 = ((v270 - 987378583) ^ 0xA0EFDDC4) & (2 * ((v270 - 987378583) & 0x8AEFD1D6)) ^ (v270 - 987378583) & 0x8AEFD1D6;
  v308 = ((2 * ((v270 - 987378583) ^ 0xB5625C40)) ^ 0x7F1B1B2C) & ((v270 - 987378583) ^ 0xB5625C40) ^ (2 * ((v270 - 987378583) ^ 0xB5625C40)) & 0x3F8D8D96;
  v309 = (v308 ^ 0x3F090900) & (4 * v307) ^ v307;
  v310 = ((4 * (v308 ^ 0x848492)) ^ 0xFE363658) & (v308 ^ 0x848492) ^ (4 * (v308 ^ 0x848492)) & 0x3F8D8D90;
  v311 = (v310 ^ 0x3E040400) & (16 * v309) ^ v309;
  v312 = ((16 * (v310 ^ 0x1898986)) ^ 0xF8D8D960) & (v310 ^ 0x1898986) ^ (16 * (v310 ^ 0x1898986)) & 0x3F8D8D80;
  v313 = v311 ^ 0x3F8D8D96 ^ (v312 ^ 0x38888900) & (v311 << 8);
  v314 = v306 ^ (2 * ((v313 << 16) & 0x3F8D0000 ^ v313 ^ ((v313 << 16) ^ 0xD960000) & (((v312 ^ 0x7050496) << 8) & 0x3F8D0000 ^ 0x32000000 ^ (((v312 ^ 0x7050496) << 8) ^ 0xD8D0000) & (v312 ^ 0x7050496))));
  v17[24] = v304 ^ 0x2A;
  v20[25] = v282 ^ 0x30;
  v17[25] = v305 ^ 0x87;
  v315 = v282 ^ v290 ^ v291;
  v20[26] = (v294 + 14) ^ (-24 - v294) ^ (((v294 + 14) ^ 0x9A) - 108) ^ (((v294 + 14) ^ 0x13) + 27) ^ (((v294 + 14) ^ 0x80) - 118) ^ 0x72;
  v316 = v293 + (((v292 ^ 0x9F33102) + 126800502) ^ ((v292 ^ 0xAB3493CF) - 1521913671) ^ ((v292 ^ 0xE7DD3B9E) - 375334678));
  LOBYTE(v313) = ((2 * ((v316 + 91) ^ 0xCB)) ^ 0x9E) & ((v316 + 91) ^ 0xCB) ^ (2 * ((v316 + 91) ^ 0xCB)) & 0xCE;
  LOBYTE(v312) = ((2 * (v316 + 91)) & 8 ^ 4) & (v316 + 91);
  LOBYTE(v313) = (4 * v313) & (v313 ^ 0x80) & (16 * (v313 & (4 * v312) ^ v312)) ^ v313 & (4 * v312) ^ v312;
  v317 = v305 ^ v314 ^ v304;
  v17[26] = (v316 + 91) ^ (2 * v313) ^ 4;
  v20[27] = v271 ^ 0x3B;
  v17[27] = v292 ^ 0x53;
  v318 = ((v315 ^ 0x2B38A2D1) - 1746793741) ^ ((v315 ^ 0xEE8884C4) + 1381117160) ^ ((v315 ^ 0xC4B120F3) + 2020313297);
  v319 = ((v305 ^ 0xDAE447FB) - 1322867557) ^ ((v305 ^ 0x48AE60AC) + 594314190) ^ ((v305 ^ 0xC975D9D0) - 1565050190);
  LOBYTE(v315) = (((v271 ^ 0xC3) - 46) ^ ((v271 ^ 0x63) + 114) ^ ((v271 ^ 0x3B) + 42)) + (((v315 ^ 0xD1) - 13) ^ ((v315 ^ 0xC4) - 24) ^ ((v315 ^ 0xF3) - 47)) + 5;
  LOBYTE(v305) = (v315 - 17) ^ (85 - v315) ^ (((v315 - 17) ^ 0x45) - 1) ^ (((v315 - 17) ^ 0x6A) - 46) ^ (((v315 - 17) ^ 0x94) + 48);
  v320 = ((v317 ^ 0x54916B41) + 1256221384) ^ ((v317 ^ 0x5FBD79F9) + 1103919232) ^ ((v317 ^ 0xCBFF08EF) - 712111766);
  v20[28] = v291 ^ 0x78;
  v17[28] = v314 ^ 0xE2;
  v321 = v316 - v319;
  LOBYTE(v319) = ((v318 + 5) ^ 0x21) & (2 * ((v318 + 5) & 0x35)) ^ (v318 + 5) & 0x35;
  LOBYTE(v315) = ((2 * ((v318 + 5) ^ 0xB)) ^ 0x7C) & ((v318 + 5) ^ 0xB) ^ (2 * ((v318 + 5) ^ 0xB)) & 0x3E;
  LOBYTE(v319) = v319 ^ 0x3E ^ (v315 ^ 0x3C) & (4 * v319);
  v20[29] = (v318 + 5) ^ (2 * ((16 * v319) & 0x30 ^ v319 ^ ((16 * v319) ^ 0x60) & (((4 * v315) ^ 0xF0) & v315 ^ (4 * v315) & 0x30))) ^ 0x8D;
  v322 = v294 - (((v282 ^ 0x8E16043C) - 1805301887) ^ ((v282 ^ 0xF83DD8B1) - 498164978) ^ ((v282 ^ 0x88955339) - 1830416250)) - 1862862550 + v318 + 1766438661;
  LOBYTE(v294) = ((v320 - 32) ^ 0xF) & (2 * ((v320 - 32) & 0x4E)) ^ (v320 - 32) & 0x4E;
  LOBYTE(v319) = ((2 * ((v320 - 32) ^ 0x93)) ^ 0xBA) & ((v320 - 32) ^ 0x93) ^ (2 * ((v320 - 32) ^ 0x93)) & 0xDC;
  v17[29] = (v320 - 32) ^ (2 * (((4 * (v319 ^ 0x45)) & 0xC0 ^ ((4 * (v319 ^ 0x45)) ^ 0x60) & (v319 ^ 0x45) ^ 0x40) & (16 * ((v319 ^ 0x18) & (4 * v294) ^ v294)) ^ (v319 ^ 0x18) & (4 * v294) ^ v294)) ^ 0x4E;
  LOBYTE(v294) = (v322 ^ 0xAB) & (2 * (v322 & 0x2C)) ^ v322 & 0x2C;
  LOBYTE(v319) = ((2 * (v322 ^ 0xF3)) ^ 0xBE) & (v322 ^ 0xF3) ^ (2 * (v322 ^ 0xF3)) & 0xDE;
  LOBYTE(v294) = v294 ^ 0xDF ^ (v319 ^ 0x90) & (4 * v294);
  LOBYTE(v319) = ((16 * v294) ^ 0x70) & (((4 * (v319 ^ 0x41)) ^ 0x70) & (v319 ^ 0x41) ^ (4 * (v319 ^ 0x41)) & 0xD0);
  LOBYTE(v315) = (16 * v294) & 0xDF ^ v294;
  v323 = v321 - 1737432211 + v320 + 1748451808;
  v20[30] = v322 ^ (2 * (v315 ^ v319)) ^ 0xB6;
  LOBYTE(v319) = ((v321 + 109 + v320 - 32) ^ 7) & (2 * ((v321 + 109 + v320 - 32) & 0x27)) ^ (v321 + 109 + v320 - 32) & 0x27;
  LOBYTE(v315) = ((2 * ((v321 + 109 + v320 - 32) ^ 0xF)) ^ 0x50) & ((v321 + 109 + v320 - 32) ^ 0xF) ^ (2 * ((v321 + 109 + v320 - 32) ^ 0xF)) & 0x28;
  v17[30] = (v321 + 109 + v320 - 32) ^ (2 * (((4 * (v315 ^ 0x28)) & 0x20 ^ ((4 * (v315 ^ 0x28)) ^ 0xA0) & (v315 ^ 0x28) ^ 0x20) & (16 * (v315 & (4 * v319) ^ v319)) ^ v315 & (4 * v319) ^ v319)) ^ 0x27;
  v20[31] = v305 ^ 0xC0;
  LOBYTE(v319) = (((v292 ^ 0xF1) + 52) ^ ((v292 ^ 0x7A) - 71) ^ ((v292 ^ 0xFC) + 63)) - 120 + v320 - 32;
  LOBYTE(v315) = ((2 * (v319 ^ 0x5B)) ^ 0x96) & (v319 ^ 0x5B) ^ (2 * (v319 ^ 0x5B)) & 0x4A;
  LOBYTE(v298) = v315 & (4 * (((2 * v319) & 0x20 ^ 0x10) & v319)) ^ ((2 * v319) & 0x20 ^ 0x10) & v319;
  v17[31] = v319 ^ (2 * ((4 * v315) & (v315 ^ 0x80) & (16 * v298) ^ v298)) ^ 0x10;
  v324 = (((v314 ^ 0xC5DCCEE5) - 479356047) ^ ((v314 ^ 0x63654696) + 1171526404) ^ ((v314 ^ 0xB0D37E91) - 1771951355)) - v323 - 1759210819;
  v325 = (v324 ^ 0xC4DC19) & (2 * (v324 & 0xA8E69E5D)) ^ v324 & 0xA8E69E5D;
  v326 = ((2 * (v324 ^ 0x110DC89B)) ^ 0x73D6AD8C) & (v324 ^ 0x110DC89B) ^ (2 * (v324 ^ 0x110DC89B)) & 0xB9EB56C6;
  v327 = v326 ^ 0x88295242;
  v328 = (v326 ^ 0x21820084) & (4 * v325) ^ v325;
  v329 = ((4 * v327) ^ 0xE7AD5B18) & v327 ^ (4 * v327) & 0xB9EB56C0;
  v330 = (v329 ^ 0xA1A95200) & (16 * v328) ^ v328;
  v331 = ((16 * (v329 ^ 0x184204C6)) ^ 0x9EB56C60) & (v329 ^ 0x184204C6) ^ (16 * (v329 ^ 0x184204C6)) & 0xB9EB56C0;
  v332 = v330 ^ 0xB9EB56C6 ^ (v331 ^ 0x98A14400) & (v330 << 8);
  v333 = v324 ^ (2 * ((v332 << 16) & 0x39EB0000 ^ v332 ^ ((v332 << 16) ^ 0x56C60000) & (((v331 ^ 0x214A1286) << 8) & 0x39EB0000 ^ 0x10A90000 ^ (((v331 ^ 0x214A1286) << 8) ^ 0x6B560000) & (v331 ^ 0x214A1286))));
  v334 = (((v292 ^ 0xCD63C760) - 71933277) ^ ((v292 ^ 0x2F51067B) + 428123066) ^ ((v292 ^ 0xDAB9746C) - 328412753)) - 1525687675 + v323;
  v335 = (v334 ^ 0xD32B7CBA) & (2 * (v334 & 0xDBAB4033)) ^ v334 & 0xDBAB4033;
  v336 = ((2 * (v334 ^ 0xC7397CFE)) ^ 0x3924799A) & (v334 ^ 0xC7397CFE) ^ (2 * (v334 ^ 0xC7397CFE)) & 0x1C923CCC;
  v337 = v336 ^ 0x4920445;
  v338 = (v336 ^ 0x18000088) & (4 * v335) ^ v335;
  v339 = ((4 * v337) ^ 0x7248F334) & v337 ^ (4 * v337) & 0x1C923CCC;
  v340 = (v339 ^ 0x10003000) & (16 * v338) ^ v338;
  v341 = ((16 * (v339 ^ 0xC920CC9)) ^ 0xC923CCD0) & (v339 ^ 0xC920CC9) ^ (16 * (v339 ^ 0xC920CC9)) & 0x1C923CC0;
  v342 = v340 ^ 0x1C923CCD ^ (v341 ^ 0x8020C00) & (v340 << 8);
  v343 = v334 ^ (2 * ((v342 << 16) & 0x1C920000 ^ v342 ^ ((v342 << 16) ^ 0x3CCD0000) & (((v341 ^ 0x1490300D) << 8) & 0x1C920000 ^ 0xC820000 ^ (((v341 ^ 0x1490300D) << 8) ^ 0x123C0000) & (v341 ^ 0x1490300D))));
  v344 = (((v320 - 1198016584) ^ 0xB6184305) - 1001060449) ^ (v320 - 1198016584) ^ (((v320 - 1198016584) ^ 0xCCBA30B5) - 1091079121) ^ (((v320 - 1198016584) ^ 0x80FF376B) - 223185935) ^ (((v320 - 1198016584) ^ 0x77EFFFBF) + 94550821);
  v345 = (((v291 ^ 0x784FB25F) - 689995126) ^ ((v291 ^ 0x8E53FC2F) + 549702906) ^ ((v291 ^ 0x5F86CA8C) - 250152357)) - v322 + 1250258610;
  v346 = (((v318 - 1711917834) ^ 0xAE99AAF6) + 523017888) ^ (v318 - 1711917834) ^ (((v318 - 1711917834) ^ 0xC837DEB2) + 2038622940) ^ (((v318 - 1711917834) ^ 0xD71F090D) + 1722432869) ^ (((v318 - 1711917834) ^ 0xFFFBB6DF) + 1313768119);
  v347 = (((v271 ^ 0xDE1A4629) - 37059012) ^ ((v271 ^ 0xC2468BA7) - 510243914) ^ ((v271 ^ 0xDEA4E815) - 42719224)) - 2080815481 + v322;
  v348 = (v347 ^ 0x66DE0A41) & (2 * (v347 & 0x86DC2B62)) ^ v347 & 0x86DC2B62;
  v349 = ((2 * (v347 ^ 0x6BE61C81)) ^ 0xDA746FC6) & (v347 ^ 0x6BE61C81) ^ (2 * (v347 ^ 0x6BE61C81)) & 0xED3A37E2;
  v350 = v349 ^ 0x250A1021;
  v351 = (v349 ^ 0x8302780) & (4 * v348) ^ v348;
  v352 = ((4 * v350) ^ 0xB4E8DF8C) & v350 ^ (4 * v350) & 0xED3A37E0;
  v353 = (v352 ^ 0xA4281780) & (16 * v351) ^ v351;
  v354 = ((16 * (v352 ^ 0x49122063)) ^ 0xD3A37E30) & (v352 ^ 0x49122063) ^ (16 * (v352 ^ 0x49122063)) & 0xED3A37E0;
  v355 = v353 ^ 0xED3A37E3 ^ (v354 ^ 0xC1223600) & (v353 << 8);
  v356 = v347 ^ (2 * ((v355 << 16) & 0x6D3A0000 ^ v355 ^ ((v355 << 16) ^ 0x37E30000) & (((v354 ^ 0x2C1801C3) << 8) & 0x6D3A0000 ^ 0x45080000 ^ (((v354 ^ 0x2C1801C3) << 8) ^ 0x3A370000) & (v354 ^ 0x2C1801C3))));
  v357 = (v345 ^ 0xFFDFFFFF) + 1034844753;
  v358 = ((v345 ^ 0xA36DB018) + 1629238712) ^ v345;
  v359 = v343 ^ v344 ^ v292;
  v360 = ((v345 ^ 0x868E609) - 904305753) ^ ((v345 ^ 0x6954D3BE) - 1423616494);
  v361 = v356 ^ v346 ^ v271;
  v362 = v361 ^ v358 ^ v360 ^ v357;
  v20[32] = v362 ^ 0x7D;
  v363 = v359 ^ v333;
  v364 = (((v362 ^ 0x13750116) + 1192654551) ^ ((v362 ^ 0x7F64D963) + 721923748) ^ ((v362 ^ 0xCBC1088C) - 1616740531)) + 1260386545;
  v17[32] = v359 ^ v333 ^ 0x6B;
  v20[33] = v356 ^ v346 ^ 0xB6;
  v17[33] = v343 ^ v344 ^ 0xCD;
  v20[34] = v356 ^ 0x20;
  v365 = v364 ^ v356 ^ v346 ^ ((v364 ^ 0x6E699806) - 2041757179) ^ ((v364 ^ 0x144E7045) - 60118456) ^ ((v364 ^ 0x12033201) - 98047996) ^ ((v364 ^ 0x7FFFFFBF) - 1747245634);
  v17[34] = v343 ^ 0xA9;
  v20[35] = v361 ^ 0x2D;
  v366 = ((v346 ^ 0xD0F9B3BD) - 1626448554) ^ ((v346 ^ 0x9E17FBB1) - 773843622) ^ ((v346 ^ 0xFEE6591B) - 1324238860);
  v17[35] = v359 ^ 0xBA;
  v20[36] = v365 ^ 0xCA;
  v367 = ((v356 ^ v346 ^ 0x838A7544) - 1311176140) ^ ((v356 ^ v346 ^ 0xA4456336) - 1776935870) ^ ((v356 ^ v346 ^ 0x812B43C1) - 1283965769);
  v368 = v367 - 1399793567;
  v369 = ((((v363 ^ 0x5DE630FF) + 165658374) ^ ((v363 ^ 0xD3FFF4DC) - 2017035481) ^ ((v363 ^ 0x1A1BC048) + 1310871475)) - ((((v343 & 0xD90785D2 ^ 0xF952857E) - 1455272559) ^ ((v343 & 0xD90785D2 ^ 0xF4A38EF6) - 1531754983) ^ ((v343 & 0xD90785D2 ^ 0xD4F60A08) - 2065251609)) + (((v343 & 0xD90785D2 ^ 0xD91969BA) - 412717723) ^ ((v343 & 0xD90785D2 ^ 0x8D5BA712) - 1289444403) ^ ((v343 & 0xD90785D2 ^ 0x54424AFA) + 1782402597))) + 123453034) ^ v343 ^ v344;
  v17[36] = (((5 - v363) ^ ((v363 ^ 0xDC) + 39) ^ ((v363 ^ 0x48) - 77)) - ((((v343 & 0xD2 ^ 0x7E) - 111) ^ ((v343 & 0xD2 ^ 0xF6) + 25) ^ ((v343 & 0xD2 ^ 8) - 25)) + (((v343 & 0xD2 ^ 0xBA) + 101) ^ ((v343 & 0xD2 ^ 0x12) - 51) ^ ((v343 & 0xD2 ^ 0xFA) + 37))) + 106) ^ v343 ^ v344 ^ 0x4C;
  v20[37] = (v367 + 97) ^ (v367 + 93) ^ (((v367 + 97) ^ 0xD2) + 42) ^ (((v367 + 97) ^ 0x2F) - 43) ^ (((v367 + 97) ^ 0xF9) + 3) ^ 0x80;
  v370 = v366 + (((v361 ^ 0x27346C94) - 1600308029) ^ ((v361 ^ 0xDD0AB5EB) + 1520690622) ^ ((v361 ^ 0x606073D6) - 406248575));
  v371 = (((v343 ^ v344 ^ 0xED18AC43) - 592651419) ^ ((v343 ^ v344 ^ 0x4030A63D) + 1904529691) ^ ((v343 ^ v344 ^ 0x5575232) + 887301398)) - 1391940175;
  v17[((((v344 & 0x210606BD ^ 0x5FF6D376) + 1377483733) ^ ((v344 & 0x210606BD ^ 0xE9E3514D) + 1678719472) ^ ((v344 & 0x210606BD ^ 0x36138423) + 1006627970)) + (((v344 & 0x210606BD ^ 0x3BBD8018) + 644561676) ^ ((v344 & 0x210606BD ^ 0x371DB6F6) + 717950438) ^ ((v344 & 0x210606BD ^ 0x2DA0364B) + 813075801)) + 893310350) & 0x40000165] = ((v371 ^ 0xA5) - 94) ^ v371 ^ ((v371 ^ 0xA9) - 82) ^ ((v371 ^ 0x48) + 77) ^ ((v371 ^ 0xBF) - 68) ^ 0xFB;
  v372 = v366 + 663698889 + (((v365 ^ 0x774EC04E) - 2132109340) ^ ((v365 ^ 0x962E511E) + 1636435636) ^ ((v365 ^ 0x505FE11E) - 1476675916));
  LOBYTE(v367) = (v372 ^ 0x5A) & (2 * (v372 & 0x53)) ^ v372 & 0x53;
  LOBYTE(v360) = ((2 * (v372 ^ 0x5E)) ^ 0x1A) & (v372 ^ 0x5E) ^ (2 * (v372 ^ 0x5E)) & 0xC;
  v20[38] = (v366 - 55 + (v365 ^ 0x4E) - 28) ^ (2 * (((4 * (v360 ^ 5)) ^ 0x30) & (v360 ^ 5) & (16 * ((v360 ^ 8) & (4 * v367) ^ v367)) ^ (v360 ^ 8) & (4 * v367) ^ v367)) ^ 0xD7;
  v373 = (((v359 ^ 0x2028D414) - 1301414052) ^ ((v359 ^ 0x674BFD3B) - 183576971) ^ ((v359 ^ 0x29D51E95) - 1148176933)) + (((v344 ^ 0x78BB96F8) + 272844894) ^ ((v344 ^ 0x8FFC6EAA) - 419123184) ^ ((v344 ^ 0x84B799B7) - 330348781));
  v374 = (((v369 ^ 0x3536EAFD) + 1015595662) ^ ((v369 ^ 0xED4BC27A) - 453645813) ^ ((v369 ^ 0x700270CB) + 2042386620)) + (((v344 ^ 0x67B270E0) + 256552518) ^ ((v344 ^ 0x5BF45BB1) + 856458517) ^ ((v344 ^ 0x4FB64AB4) + 659461138));
  LOBYTE(v367) = ((2 * (v374 + 126)) & 8 ^ 4) & (v374 + 126);
  LOBYTE(v344) = ((2 * ((v374 + 126) ^ 0x61)) ^ 0xCA) & ((v374 + 126) ^ 0x61) ^ (2 * ((v374 + 126) ^ 0x61)) & 0x64;
  v375 = v370 + 587905246;
  v17[38] = (v374 + 126) ^ (2 * ((v344 ^ 0x40) & (4 * v344) & (16 * (v344 & (4 * v367) ^ v367)) ^ v344 & (4 * v367) ^ v367)) ^ 4;
  v20[39] = (58 - v370) ^ (v370 - 34) ^ (((v370 - 34) ^ 0x4B) - 83) ^ (((v370 - 34) ^ 0xB0) + 88) ^ (((v370 - 34) ^ 0x1C) - 4) ^ 0x9C;
  v17[39] = (v373 + 10) ^ (113 - v373) ^ (((v373 + 10) ^ 0xFE) + 123) ^ (((v373 + 10) ^ 0x33) - 72) ^ (((v373 + 10) ^ 0x49) - 50) ^ 0x7B;
  v376 = ((v365 ^ 0x165C4CDB) - 503833737) ^ ((v365 ^ 0x4018BE5F) - 1212356109) ^ ((v365 ^ 0xE77B82CA) + 283104616);
  v377 = v371 - (v373 - 53688310) - 551460736;
  v378 = (((v369 ^ 0xE70EDB19) - 290393238) ^ ((v369 ^ 0x27584F1) + 197897346) ^ ((v369 ^ 0x4D0407A4) + 1153052629)) - (v374 - v373);
  v379 = (((v373 - 53688310) ^ 0xC0D7BC42) + 488946887) ^ (v373 - 53688310) ^ (((v373 - 53688310) ^ 0x8982F4A5) + 1416754210) ^ (((v373 - 53688310) ^ 0x14C40A63) - 919139608) ^ (((v373 - 53688310) ^ 0x7F9DBDFF) - 1569800836) ^ (v378 - 171407408);
  v380 = (((v379 ^ 0x9A054C) + 1521124604) ^ ((v379 ^ 0x81270758) - 619215120) ^ ((v379 ^ 0xA3B1FD6F) - 108954407)) - (((v377 ^ 0xA0AE77F0) - 1251846581) ^ ((v377 ^ 0x73016937) + 1724729486) ^ ((v377 ^ 0x68C6EBB2) + 2097859081));
  v381 = (v375 ^ 0xA53CE0E5) & (2 * (v375 & 0xB1B8F0E8)) ^ v375 & 0xB1B8F0E8;
  v382 = ((2 * (v375 ^ 0xC43CA065)) ^ 0xEB08A11A) & (v375 ^ 0xC43CA065) ^ (2 * (v375 ^ 0xC43CA065)) & 0x7584508C;
  v383 = v382 ^ 0x14845085;
  v384 = (v382 ^ 0x41000000) & (4 * v381) ^ v381;
  v385 = ((4 * v383) ^ 0xD6114234) & v383 ^ (4 * v383) & 0x7584508C;
  v386 = v384 ^ 0x7584508D ^ (v385 ^ 0x54004000) & (16 * v384);
  v387 = (16 * (v385 ^ 0x21841089)) & 0x75845080 ^ 0x2580500D ^ ((16 * (v385 ^ 0x21841089)) ^ 0x584508D0) & (v385 ^ 0x21841089);
  v388 = (v386 << 8) & 0x75845000 ^ v386 ^ ((v386 << 8) ^ 0x84508D00) & v387;
  v389 = v372 - (v370 + 587905246);
  v390 = v376 - v389 - 649580879;
  v391 = v390 ^ (v370 + 587905246) ^ (2 * ((v388 << 16) & 0x75840000 ^ v388 ^ ((v388 << 16) ^ 0x508D0000) & ((v387 << 8) & 0x75840000 ^ 0x71840000 ^ ((v387 << 8) ^ 0x4500000) & v387)));
  LOBYTE(v383) = ((((v390 - ((2 * v390) & 0xDC) + 110) ^ 0xF1) + 15) ^ (((v390 - ((2 * v390) & 0xDC) + 110) ^ 0x7A) - 122) ^ (((v390 - ((2 * v390) & 0xDC) + 110) ^ 0xE5) + 27)) + 52;
  LOBYTE(v358) = v383 & 0x72 ^ 0x69;
  v392 = v368 - (v370 + 587905246) + 283593236;
  v20[40] = v383 ^ (2 * ((v383 ^ 0x20) & (2 * ((v383 ^ 0x20) & (2 * ((v383 ^ 0x20) & (2 * ((v383 ^ 0x20) & (2 * (v358 ^ v383 & 0x12)) ^ v358)) ^ v358)) ^ v358)) ^ v358)) ^ 0xF6;
  v393 = (((v391 ^ 0xA85AE56A) - 1447544793) ^ ((v391 ^ 0xA404E1A5) - 1511637782) ^ ((v391 ^ 0xFFE6553D) - 33257358)) - (((v392 ^ 0x974AE384) - 1155761548) ^ ((v392 ^ 0x30B8B95D) + 485367979) ^ ((v392 ^ 0x1C9BAFAC) + 818755164));
  LOBYTE(v391) = v378 - 48 - ((2 * (v378 - 48)) & 0x58) - 84;
  v17[40] = (((v391 ^ 0xE8) + 24) ^ ((v391 ^ 0xBF) + 65) ^ ((v391 ^ 0xFB) + 5)) + 18;
  v394 = v393 - 335085804 + v389;
  v395 = (v394 ^ 0xD6F0A3D2) & (2 * (v394 & 0x98FA8A1B)) ^ v394 & 0x98FA8A1B;
  v396 = ((2 * (v394 ^ 0xD781B3C2)) ^ 0x9EF673B2) & (v394 ^ 0xD781B3C2) ^ (2 * (v394 ^ 0xD781B3C2)) & 0x4F7B39D8;
  v397 = v396 ^ 0x41090849;
  v398 = (v396 ^ 0x6723090) & (4 * v395) ^ v395;
  v399 = ((4 * v397) ^ 0x3DECE764) & v397 ^ (4 * v397) & 0x4F7B39D8;
  v400 = (v399 ^ 0xD682140) & (16 * v398) ^ v398;
  v401 = ((16 * (v399 ^ 0x42131899)) ^ 0xF7B39D90) & (v399 ^ 0x42131899) ^ (16 * (v399 ^ 0x42131899)) & 0x4F7B39D0;
  v402 = v400 ^ 0x4F7B39D9 ^ (v401 ^ 0x47331900) & (v400 << 8);
  v403 = v394 ^ (2 * ((v402 << 16) & 0x4F7B0000 ^ v402 ^ ((v402 << 16) ^ 0x39D90000) & (((v401 ^ 0x8482049) << 8) & 0x4F7B0000 ^ 0x4420000 ^ (((v401 ^ 0x8482049) << 8) ^ 0x7B390000) & (v401 ^ 0x8482049))));
  v20[41] = v392 ^ 0xF1;
  v404 = v374 - v373 + 1504920436 + v380 + 1448448714;
  v405 = (v404 ^ 0xEED4B7B3) & (2 * (v404 & 0xEED687B8)) ^ v404 & 0xEED687B8;
  v406 = ((2 * (v404 ^ 0xA774B183)) ^ 0x93446C76) & (v404 ^ 0xA774B183) ^ (2 * (v404 ^ 0xA774B183)) & 0x49A2363A;
  v407 = (v406 ^ 0x1002420) & (4 * v405) ^ v405;
  v408 = ((4 * (v406 ^ 0x48A21209)) ^ 0x2688D8EC) & (v406 ^ 0x48A21209) ^ (4 * (v406 ^ 0x48A21209)) & 0x49A23638;
  v409 = (v408 ^ 0x801020) & (16 * v407) ^ v407;
  v410 = ((16 * (v408 ^ 0x49222613)) ^ 0x9A2363B0) & (v408 ^ 0x49222613) ^ (16 * (v408 ^ 0x49222613)) & 0x49A23630;
  v411 = v409 ^ 0x49A2363B ^ (v410 ^ 0x8222200) & (v409 << 8);
  v412 = v404 ^ (2 * ((v411 << 16) & 0x49A20000 ^ v411 ^ ((v411 << 16) ^ 0x363B0000) & (((v410 ^ 0x4180140B) << 8) & 0x49A20000 ^ 0x49800000 ^ (((v410 ^ 0x4180140B) << 8) ^ 0x22360000) & (v410 ^ 0x4180140B))));
  v17[41] = v377 ^ 0x75;
  v20[42] = v403 ^ 0x2D;
  v17[42] = v412 ^ 0xCE;
  LOBYTE(v404) = ((v393 + 20) ^ 0x3D) & (2 * ((v393 + 20) & 0xB0)) ^ (v393 + 20) & 0xB0;
  LOBYTE(v410) = ((2 * ((v393 + 20) ^ 0x1D)) ^ 0x5A) & ((v393 + 20) ^ 0x1D) ^ (2 * ((v393 + 20) ^ 0x1D)) & 0xAC;
  v20[43] = (v393 + 20) ^ (2 * ((16 * (v404 ^ 0xAD ^ v410 & (4 * v404))) & 0x20 ^ v404 ^ 0xAD ^ v410 & (4 * v404) ^ (((4 * (v410 ^ 0xA5)) ^ 0xB0) & (v410 ^ 0xA5) ^ (4 * (v410 ^ 0xA5)) & 0xA0) & ((16 * (v404 ^ 0xAD ^ v410 & (4 * v404))) ^ 0x50))) ^ 0x6E;
  v17[43] = (v380 - 54) ^ (-3 - v380) ^ (((v380 - 54) ^ 0xD) + 54) ^ (((v380 - 54) ^ 7) + 64) ^ (((v380 - 54) ^ 0x32) + 11) ^ 0xC7;
  v413 = v390 - v393;
  v414 = (((v413 + 595910729) ^ 0xF16641AC) + 1525475464) ^ (v413 + 595910729) ^ (((v413 + 595910729) ^ 0x2E4FECD5) - 2050669057) ^ (((v413 + 595910729) ^ 0xF5B3C45A) + 1580821874) ^ (((v413 + 595910729) ^ 0x7EEF3FF7) - 714762531);
  v415 = ((v393 + 30630542) ^ 0x61B3B55D) & (2 * ((v393 + 30630542) & 0x71BBC160)) ^ (v393 + 30630542) & 0x71BBC160;
  v416 = ((2 * ((v393 + 30630542) ^ 0x20D2371D)) ^ 0xA2D3ECFA) & ((v393 + 30630542) ^ 0x20D2371D) ^ (2 * ((v393 + 30630542) ^ 0x20D2371D)) & 0x5169F67C;
  v417 = (v416 ^ 0x410400) & (4 * v415) ^ v415;
  v418 = ((4 * (v416 ^ 0x51281205)) ^ 0x45A7D9F4) & (v416 ^ 0x51281205) ^ (4 * (v416 ^ 0x51281205)) & 0x5169F67C;
  v419 = (v418 ^ 0x4121D060) & (16 * v417) ^ v417;
  v420 = ((16 * (v418 ^ 0x10482609)) ^ 0x169F67D0) & (v418 ^ 0x10482609) ^ (16 * (v418 ^ 0x10482609)) & 0x5169F650;
  v421 = v419 ^ 0x5169F67D ^ (v420 ^ 0x10096600) & (v419 << 8);
  v422 = (v393 + 30630542) ^ (2 * ((v421 << 16) & 0x51690000 ^ v421 ^ ((v421 << 16) ^ 0x767D0000) & (((v420 ^ 0x4160902D) << 8) & 0x51690000 ^ 0x10090000 ^ (((v420 ^ 0x4160902D) << 8) ^ 0x69F60000) & (v420 ^ 0x4160902D))));
  v423 = v422 ^ v392 ^ v403;
  v424 = v414 ^ (v393 - 166196525) ^ v423;
  v425 = v413 + (((v424 ^ 0x1F414235) + 1192848080) ^ ((v424 ^ 0xD0D1B3C9) - 2004247756) ^ ((v424 ^ 0x4788866E) + 533769877));
  v20[44] = v414 ^ 0x50;
  v426 = ((v392 ^ 0x7F72521B) + 1394920429) ^ ((v392 ^ 0xF93652EE) - 715076838) ^ ((v392 ^ 0x3D2DF580) + 293301368);
  v427 = v378 - v380;
  LOBYTE(v421) = ((2 * ((v427 + 127) ^ 0xCB)) ^ 0x98) & ((v427 + 127) ^ 0xCB) ^ (2 * ((v427 + 127) ^ 0xCB)) & 0x4C;
  v428 = (v427 + 1696566655) & 0xCE340D87;
  LOBYTE(v420) = (2 * v428) & ((v427 + 127) ^ 0xC7) ^ v428;
  v17[44] = (v427 + 127) ^ (2 * ((((4 * (v421 ^ 0x44)) ^ 0x30) & (v421 ^ 0x44) ^ (4 * (v421 ^ 0x44)) & 0x40) & (16 * ((v421 ^ 8) & (4 * v420) ^ v420)) ^ (v421 ^ 8) & (4 * v420) ^ v420)) ^ 0x87;
  v426 -= 1115850647;
  v20[45] = v426 ^ 0xAE;
  v429 = (((v377 ^ 0x5B4B0F1) + 276336972) ^ ((v377 ^ 0x8AD9E412) - 1625963095) ^ ((v377 ^ 0x3404A196) + 566788141)) - 1508437988;
  v17[45] = ((((v377 ^ 0xF1) + 76) ^ ((v377 ^ 0x12) - 87) ^ ((v377 ^ 0x96) + 45)) + 28) ^ 0x2A;
  v430 = (((v380 + 1156322235) ^ 0xBA5C2199) + 2054924265) ^ (v380 + 1156322235) ^ (((v380 + 1156322235) ^ 0xFFD4A098) + 1072899818) ^ (((v380 + 1156322235) ^ 0xA5AF8661) + 1703411729) ^ (((v380 + 1156322235) ^ 0xDFFF7EEE) + 534313120) ^ v377 ^ v412;
  v20[46] = v423 ^ 0xC2;
  v17[46] = (((v380 - 69) ^ 0x99) - 23) ^ (v380 - 69) ^ (((v380 - 69) ^ 0x98) - 22) ^ (((v380 - 69) ^ 0x61) + 17) ^ (((v380 - 69) ^ 0xEE) - 96) ^ v377 ^ v412 ^ 0x35;
  v20[47] = v422 ^ 0x1E;
  v431 = (((v426 ^ 0xE72B9295) + 774720005) ^ ((v426 ^ 0xF5B4D380) + 1018301202) ^ ((v426 ^ 0xE2B3923F) + 733301423)) - (((v414 ^ 0xFED65B21) + 1999427230) ^ ((v414 ^ 0xC49425C8) + 1299097717) ^ ((v414 ^ 0x6E37283D) - 405953150));
  v17[47] = (((v380 - 69) ^ 0x99) - 23) ^ (v380 - 69) ^ (((v380 - 69) ^ 0x98) - 22) ^ (((v380 - 69) ^ 0x61) + 17) ^ (((v380 - 69) ^ 0xEE) - 96) ^ 0x8E;
  v432 = ((v429 ^ 0x1F63CC92) - 1998560051) ^ ((v429 ^ 0x416142CD) - 689771884) ^ ((v429 ^ 0xAE2E5D75) + 967701804);
  v433 = (2 * v428) & ((v427 + 1696566655) ^ 0xAEA78996) ^ v428;
  v434 = ((2 * ((v427 + 1696566655) ^ 0xBAC79896)) ^ 0xE9E72A22) & ((v427 + 1696566655) ^ 0xBAC79896) ^ (2 * ((v427 + 1696566655) ^ 0xBAC79896)) & 0x74F39510;
  v435 = (v434 ^ 0x60E00000) & (4 * v433) ^ v433;
  v436 = ((4 * (v434 ^ 0x14109511)) ^ 0xD3CE5444) & (v434 ^ 0x14109511) ^ (4 * (v434 ^ 0x14109511)) & 0x74F39510;
  v437 = (v436 ^ 0x50C21400) & (16 * v435) ^ v435;
  v438 = ((16 * (v436 ^ 0x24318111)) ^ 0x4F395110) & (v436 ^ 0x24318111) ^ (16 * (v436 ^ 0x24318111)) & 0x74F39510;
  v439 = v437 ^ 0x74F39511 ^ (v438 ^ 0x44311100) & (v437 << 8);
  v440 = ((v439 << 16) ^ 0x15110000) & (((v438 ^ 0x30C28401) << 8) & 0x74F30000 ^ 0x4620000 ^ (((v438 ^ 0x30C28401) << 8) ^ 0x73950000) & (v438 ^ 0x30C28401));
  v431 -= 1536831571;
  v393 -= 1968214393;
  v441 = v432 - v427 + 1694296453;
  v442 = (v427 + 1696566655) ^ (v380 - 2019786478) ^ (2 * ((v439 << 16) & 0x74F30000 ^ v439 ^ v440)) ^ v430;
  v443 = v427 + (((v442 ^ 0x32957AB1) + 161970947) ^ ((v442 ^ 0xD843E73E) - 479074674) ^ ((v442 ^ 0x1C40DD1F) + 661839021));
  LOBYTE(v440) = ((2 * (v425 + 84)) & 4 ^ 0x82) & (v425 + 84);
  LOBYTE(v432) = ((2 * ((v425 + 84) ^ 0x47)) ^ 0x8A) & ((v425 + 84) ^ 0x47) ^ (2 * ((v425 + 84) ^ 0x47)) & 0xC4;
  v20[48] = (v425 + 84) ^ (2 * ((4 * v432) & (v432 ^ 0x80) & (16 * (v432 & (4 * v440) ^ v440)) ^ v432 & (4 * v440) ^ v440)) ^ 6;
  v17[48] = (((v443 - 63) ^ 0x54) - 65) ^ (v443 - 63) ^ (((v443 - 63) ^ 0x6C) - 121) ^ (((v443 - 63) ^ 0x80) + 107) ^ (((v443 - 63) ^ 0xAD) + 72) ^ 0x15;
  v20[49] = v431 ^ 0xCD;
  v17[49] = v441 ^ 0x49;
  v20[50] = v424 ^ 0x16;
  v17[50] = v442 ^ 0x90;
  LOBYTE(v432) = ((2 * (v393 & 0x25)) & 2 | v393 & 0x25) ^ (2 * (v393 & 0x25)) & (v393 ^ 0x82);
  LOBYTE(v421) = ((2 * (v393 ^ 0x82)) ^ 0x4E) & (v393 ^ 0x82) ^ (2 * (v393 ^ 0x82)) & 0xA6;
  v380 += 271119318;
  v20[51] = v393 ^ (2 * ((((4 * (v421 ^ 0xA1)) ^ 0x90) & (v421 ^ 0xA1) ^ (4 * (v421 ^ 0xA1)) & 0xA0) & (16 * ((v421 ^ 5) & (4 * v432) ^ v432)) ^ (v421 ^ 5) & (4 * v432) ^ v432)) ^ 0xA1;
  v444 = ((v442 ^ 0xD6E6550F) - 441234442) ^ ((v442 ^ 0x2F1F5BF8) + 474629379) ^ ((v442 ^ 0x3553EFF2) + 101118217);
  v17[51] = ((v380 ^ 0xC4) - 47) ^ v380 ^ ((v380 ^ 0xF7) - 28) ^ ((v380 ^ 0x23) + 56) ^ ((v380 ^ 0xFB) - 16) ^ 0xEB;
  v445 = v443 - 1046079039 + v380;
  v446 = ((v424 ^ 0x72F0EF04) + 1059833597) ^ ((v424 ^ 0x351C1E9) + 1317726226) ^ ((v424 ^ 0xC385F8EA) - 1906388717);
  v447 = v443 - v444;
  v448 = v444 + (((v441 ^ 0x247A1651) + 1538924573) ^ ((v441 ^ 0x3FCE996E) + 1074704164) ^ ((v441 ^ 0x491B2476) + 920326716));
  v449 = v448 + v444;
  v450 = v448 + v444 - 1676482266;
  v451 = v425 - 2003457196 + v393;
  v452 = v425 - v446 - 1025513332;
  v20[52] = (((v425 - v446 - 116) ^ 0x20) - 96) ^ (v425 - v446 - 116) ^ (((v425 - v446 - 116) ^ 0xCD) + 115) ^ (((v425 - v446 - 116) ^ 0x72) - 50) ^ (((v425 - v446 - 116) ^ 0xDF) + 97) ^ 0xC4;
  v453 = v446 + (((v431 ^ 0xA65AEFC8) + 2000400971) ^ ((v431 ^ 0x9156247B) + 1077377530) ^ ((v431 ^ 0x65A360FA) - 1262338695));
  v454 = v453 + v446;
  v17[52] = (v447 + 4) ^ (-34 - v447) ^ (((v447 + 4) ^ 0x2D) + 49) ^ (((v447 + 4) ^ 0x73) + 111) ^ (((v447 + 4) ^ 0x43) + 95) ^ 0xE2;
  v20[53] = (v446 + (((v431 ^ 0xC8) + 75) ^ ((v431 ^ 0x7B) - 6) ^ ((v431 ^ 0xFA) + 121)) + 52) ^ 0xE0;
  v17[53] = (v448 - 5) ^ 0x64;
  v20[54] = (((v453 + v446 - 57) ^ 0x4D) + 34) ^ (v453 + v446 - 57) ^ (((v453 + v446 - 57) ^ 0x71) + 30) ^ (((v453 + v446 - 57) ^ 0x10) + 125) ^ (((v453 + v446 - 57) ^ 0xBF) - 44) ^ 0x17;
  v17[54] = (((v448 + v444 + 111) ^ 4) - 112) ^ (5 - (v448 + v444)) ^ (((v448 + v444 + 111) ^ 0x7B) - 15);
  v20[55] = (((v451 + v452) ^ 0x95) - 12) ^ (-103 - (v451 + v452)) ^ (((v451 + v452) ^ 0xEA) - 115) ^ 0x84;
  v455 = v445 + v447 + 1005680900;
  LOBYTE(v444) = (v455 ^ 0x1C) & (2 * (v455 & 0x1E)) ^ v455 & 0x1E;
  LOBYTE(v421) = ((2 * (v455 ^ 0x24)) ^ 0x74) & (v455 ^ 0x24) ^ (2 * (v455 ^ 0x24)) & 0x3A;
  v17[55] = v455 ^ (2 * (((4 * (v421 ^ 0xA)) & 0x20 ^ ((4 * (v421 ^ 0xA)) ^ 0xE0) & (v421 ^ 0xA) ^ 0x20) & (16 * ((v421 ^ 0x30) & (4 * v444) ^ v444)) ^ (v421 ^ 0x30) & (4 * v444) ^ v444)) ^ 0x1E;
  v456 = v447 + 1638533952 + ((((2 * v450) ^ 0xF05D46BB) + 1570160219) ^ (((2 * v450) ^ 0x26DAF4CB) - 1961817045) ^ (((2 * v450) ^ 0xD687B270) + 2068597394));
  v457 = (v450 + ((v448 - 762289413) ^ 0x426FA364)) ^ v450;
  v458 = v452 + 2 * (v453 + v446 + 1169395551);
  v459 = (v458 ^ 0xC5B5E3F6) & (2 * (v458 & 0xE5B5EBC0)) ^ v458 & 0xE5B5EBC0;
  v460 = ((2 * (v458 ^ 0x4CBDE576)) ^ 0x52101D6C) & (v458 ^ 0x4CBDE576) ^ (2 * (v458 ^ 0x4CBDE576)) & 0xA9080EB6;
  v461 = v460 ^ 0xA9080292;
  v462 = (v460 ^ 0xC00) & (4 * v459) ^ v459;
  v463 = ((4 * v461) ^ 0xA4203AD8) & v461 ^ (4 * v461) & 0xA9080EB0;
  v464 = (v463 ^ 0xA0000A80) & (16 * v462) ^ v462;
  v465 = ((16 * (v463 ^ 0x9080426)) ^ 0x9080EB60) & (v463 ^ 0x9080426) ^ (16 * (v463 ^ 0x9080426)) & 0xA9080EA0;
  v466 = v464 ^ 0xA9080EB6 ^ (v465 ^ 0x80000A00) & (v464 << 8);
  v467 = v458 ^ (2 * ((v466 << 16) & 0x29080000 ^ v466 ^ ((v466 << 16) ^ 0xEB60000) & (((v465 ^ 0x29080496) << 8) & 0x29080000 ^ 0x21000000 ^ (((v465 ^ 0x29080496) << 8) ^ 0x80E0000) & (v465 ^ 0x29080496))));
  v468 = (v453 + v446 + 1169395551 + ((v453 + 2083588404) ^ 0x426FA364)) ^ (v453 + v446 + 1169395551);
  v20[56] = v467 ^ 0x28;
  v17[56] = (v456 - ((2 * v456) & 0xE4) + 114) ^ 0x72;
  v469 = v449 + 81675879 + v455;
  v470 = (v469 ^ 0xF3620CDF) & (2 * (v469 & 0xFB74AE9E)) ^ v469 & 0xFB74AE9E;
  v471 = ((2 * (v469 ^ 0x874A18DF)) ^ 0xF87D6C82) & (v469 ^ 0x874A18DF) ^ (2 * (v469 ^ 0x874A18DF)) & 0x7C3EB640;
  v472 = v471 ^ 0x4029241;
  v473 = (v471 ^ 0x78342400) & (4 * v470) ^ v470;
  v474 = ((4 * v472) ^ 0xF0FAD904) & v472 ^ (4 * v472) & 0x7C3EB640;
  v475 = v473 ^ 0x7C3EB641 ^ (v474 ^ 0x703A9000) & (16 * v473);
  v476 = (16 * (v474 ^ 0xC042641)) & 0x7C3EB640 ^ 0x3C149241 ^ ((16 * (v474 ^ 0xC042641)) ^ 0xC3EB6410) & (v474 ^ 0xC042641);
  v477 = (v475 << 8) & 0x7C3EB600 ^ v475 ^ ((v475 << 8) ^ 0x3EB64100) & v476;
  v478 = v469 ^ (2 * ((v477 << 16) & 0x7C3E0000 ^ v477 ^ ((v477 << 16) ^ 0x36410000) & ((v476 << 8) & 0x7C3E0000 ^ 0x40080000 ^ ((v476 << 8) ^ 0x3EB60000) & v476)));
  v20[57] = v468 - ((2 * v468) & 8) - 124;
  v17[57] = (v457 - ((2 * v457) & 0xD2) - 23) ^ 0xE9;
  v20[58] = v453 + v446 + 25 + (~(2 * (v453 + v446 + 25)) | 0xF7) - 123;
  LOBYTE(v477) = ((v449 + 66) ^ 0x1C) & (2 * ((v449 + 66) & 0x9E)) ^ (v449 + 66) & 0x9E;
  v479 = v454 - 2109060729 + v451 + v452 - ((2 * (v454 - 2109060729 + v451 + v452)) & 0x70B3261A) + 945394445;
  LOBYTE(v469) = ((2 * ((v449 + 66) ^ 0x10)) ^ 0x1C) & ((v449 + 66) ^ 0x10) ^ (2 * ((v449 + 66) ^ 0x10)) & 0x8E;
  v17[58] = (v449 + 66) ^ (2 * (((4 * v469) ^ 0x20) & v469 & (16 * ((v469 ^ 8) & (4 * v477) ^ v477)) ^ (v469 ^ 8) & (4 * v477) ^ v477)) ^ 0x9E;
  v480 = v454 + 1833485923;
  v20[59] = v479 ^ 0x89;
  v481 = v479 ^ (v454 - ((2 * (v454 + 1833485923)) & 0x70B3261A) - 1516086928);
  v17[59] = v478 ^ 0x1C;
  LODWORD(STACK[0xD30]) = v468 - v481;
  v482 = ((2 * ((v467 ^ 0x8C139B48) - v480)) & 0xEF7EEBB6) + (((v467 ^ 0x8C139B48) - v480) ^ 0xF7BF75DB);
  LODWORD(STACK[0xE88]) = v482;
  v482 += 2105466614;
  LODWORD(STACK[0xDF0]) = v482;
  v483 = v449 - 1012391894;
  v20[60] = ((v482 ^ 0xB0) - 97) ^ v482 ^ ((v482 ^ 0xA2) - 115) ^ ((v482 ^ 0x38) + 23) ^ ((v482 ^ 0xFB) - 42) ^ 0x55;
  v484 = v478 ^ (v449 - ((2 * (v449 - 1012391894)) & 0x3DFCBF54) + 1655078868);
  v485 = v468 - v481 - 1208364998 + (((v481 ^ 0x77EDDBE5) - 1024631147) ^ ((v481 ^ 0xDDE78AFB) + 1759973259) ^ ((v481 ^ 0x64C2DD9A) - 775792404));
  v486 = ((v485 ^ 0x906F1417) + 1548825049) ^ v485 ^ ((v485 ^ 0xF96EB04E) + 894473602) ^ ((v485 ^ 0x37AFC1D6) - 74324966) ^ ((v485 ^ 0x6D6FBFBF) - 1588487567);
  v487 = ((2 * ((v456 ^ 0x2BB66DE4) - v483)) & 0xF7CB51F6) + (((v456 ^ 0x2BB66DE4) - v483) ^ 0x7BE5A8FB);
  LODWORD(STACK[0xE68]) = v487;
  LOBYTE(v456) = ((v487 + 127) ^ 0xF7) & (2 * ((v487 + 127) & 0x86)) ^ (v487 + 127) & 0x86;
  LOBYTE(v469) = ((2 * ((v487 + 127) ^ 0xF3)) ^ 0xEA) & ((v487 + 127) ^ 0xF3) ^ (2 * ((v487 + 127) ^ 0xF3)) & 0x74;
  LOBYTE(v456) = v456 ^ 0x75 ^ (v469 ^ 0x20) & (4 * v456);
  v17[60] = (v487 + 127) ^ (2 * ((16 * v456) ^ v456 ^ ((16 * v456) ^ 0x50) & ((4 * (v469 ^ 0x15)) & 0x70 ^ ((4 * (v469 ^ 0x15)) ^ 0xD0) & (v469 ^ 0x15) ^ 0x20))) ^ 0xCC;
  v488 = v457 + (v484 ^ 0x72646249) - 1599825381 + (((v484 ^ 0x1B103B36) - 1889904892) ^ ((v484 ^ 0xAC403B32) + 940201736) ^ ((v484 ^ 0xF4031136) + 1615428868));
  v489 = (v488 ^ 0xC939EADE) & (2 * (v488 & 0x8841E8DE)) ^ v488 & 0x8841E8DE;
  v490 = ((2 * (v488 ^ 0xD9392A5E)) ^ 0xA2F18500) & (v488 ^ 0xD9392A5E) ^ (2 * (v488 ^ 0xD9392A5E)) & 0x5178C280;
  v491 = (v490 ^ 0x8000) & (4 * v489) ^ v489;
  v492 = ((4 * (v490 ^ 0x51084280)) ^ 0x45E30A00) & (v490 ^ 0x51084280) ^ (4 * (v490 ^ 0x51084280)) & 0x5178C280;
  v493 = (v492 ^ 0x41600200) & (16 * v491) ^ v491;
  v494 = ((16 * (v492 ^ 0x1018C080)) ^ 0x178C2800) & (v492 ^ 0x1018C080) ^ (16 * (v492 ^ 0x1018C080)) & 0x5178C280;
  v495 = v493 ^ 0x5178C280 ^ (v494 ^ 0x11080000) & (v493 << 8);
  LODWORD(STACK[0xD38]) = v486;
  LODWORD(STACK[0xD10]) = v486 ^ v480;
  v496 = v488 ^ (2 * ((v495 << 16) & 0x51780000 ^ v495 ^ ((v495 << 16) ^ 0x42800000) & (((v494 ^ 0x4070C280) << 8) & 0x51780000 ^ 0x1380000 ^ (((v494 ^ 0x4070C280) << 8) ^ 0x78C20000) & (v494 ^ 0x4070C280))));
  v20[61] = v486 ^ 0xB4;
  v497 = v496 ^ v483;
  LODWORD(STACK[0xD28]) = v496;
  v17[61] = v496 ^ 0xDE;
  v20[62] = v486 ^ v480 ^ 0xB4;
  v17[62] = v496 ^ v483 ^ 0xDE;
  v20[63] = v481;
  v17[63] = v484 ^ 0x32;
  STACK[0xDE8] = (v17 + 63);
  v498 = (((v484 ^ 0xFA6A9164) + 1847655762) ^ ((v484 ^ 0xE24CBF03) + 1980158775) ^ ((v484 ^ 0x5B753F55) - 817933471)) - 361583048 + (v496 ^ 0x554F9221);
  LOBYTE(v481) = -21 - 5 * v17[2];
  LOBYTE(v494) = v481 & 0x97 ^ 0x41;
  LOBYTE(v481) = v481 ^ (2 * ((v481 ^ 0x14) & (2 * ((v481 ^ 0x14) & (2 * ((v481 ^ 0x14) & (2 * ((v481 ^ 0x14) & (2 * ((v481 ^ 0x14) & (2 * (v481 & (2 * v494) ^ v494)) ^ v494)) ^ v494)) ^ v494)) ^ v494)) ^ v494));
  v499 = STACK[0xE90];
  LOBYTE(v481) = v481 ^ *(STACK[0xE90] + (v481 ^ 0xB1));
  v17[2] = (((v481 ^ 0xD6) + 3) ^ ((v481 ^ 0x47) - 108) ^ ((v481 ^ 0x84) + 81)) + 61;
  v500 = (v34[9] >> 4) | (16 * v34[9]);
  v501 = STACK[0xE98];
  LOBYTE(v500) = *(STACK[0xE98] + ((v500 - ((2 * v500) & 0x24) + 18) ^ 0x9FLL));
  v17[9] = -81 * (((v500 ^ 0x2B) - 23) ^ ((v500 ^ 0xE3) + 33) ^ ((v500 ^ 0xF8) + 60)) + 52;
  LODWORD(STACK[0xDD0]) = v498;
  LOBYTE(v500) = v17[(v498 & 0x12 ^ 0x12) + (v498 & 0x12)] + 123;
  LOBYTE(v494) = v500 & 0xFB ^ 0x32;
  v502 = STACK[0xEC8];
  LOBYTE(v500) = *(STACK[0xEC8] + ((v500 ^ (2 * ((v500 ^ 0x16) & (2 * ((v500 ^ 0x16) & (2 * ((v500 ^ 0x16) & (2 * ((v500 ^ 0x16) & (2 * ((v500 ^ 0x16) & (2 * ((v500 ^ 6) & (2 * v500) & 0x2E ^ v494)) ^ v494)) ^ v494)) ^ v494)) ^ v494)) ^ v494))) ^ 0x42u));
  v17[18] = -72 - 51 * (((v500 ^ 0xE) - 87) ^ ((v500 ^ 0x88) + 47) ^ ((v500 ^ 0x47) - 30));
  LOBYTE(v500) = -24 - 5 * v17[25];
  LOBYTE(v494) = v500 & 0x18 | 0x87;
  LOBYTE(v484) = v494 ^ v500 & 0x3E;
  v503 = STACK[0xEA0];
  v504 = *(STACK[0xEA0] + ((v500 ^ (2 * ((v500 ^ 0x18) & (2 * ((v500 ^ 0x18) & (2 * ((v500 ^ 0x18) & (2 * ((v500 ^ 0x18) & (2 * ((v500 ^ 0x18) & (2 * ((v500 ^ 0x18) & (2 * v494) ^ v484)) ^ v484)) ^ v484)) ^ v484)) ^ v484)) ^ v484))) ^ 0x89u));
  LOBYTE(v504) = (2 * (((v504 >> 2) | (v504 << 6)) ^ 0x27)) & 0xE4 ^ ((v504 >> 2) | (v504 << 6)) ^ 0x27;
  v17[25] = (((v504 ^ 2) + 103) ^ ((v504 ^ 0xB4) - 47) ^ ((v504 ^ 0xED) - 118)) - 65;
  LOBYTE(v504) = 50 - 5 * v17[27];
  LOBYTE(v494) = ~v504 & 0x32;
  LOBYTE(v484) = 2 * (((2 * v494) & 0xDF | v494) ^ (2 * v494) & v504);
  LOBYTE(v484) = 2 * ((v484 & 0x4C | v494) ^ v484 & v504);
  LOBYTE(v484) = 2 * ((v484 & 0x4C | v494) ^ v484 & v504);
  LOBYTE(v484) = 2 * ((v484 & 0x4C | v494) ^ v484 & v504);
  v505 = *(v503 + ((v504 ^ (2 * ((v484 & 0x4C | v494) ^ v484 & v504))) ^ 0x9Du));
  LOBYTE(v505) = (2 * (((v505 >> 2) | (v505 << 6)) ^ 0x46)) & 0xE4 ^ ((v505 >> 2) | (v505 << 6)) ^ 0x46;
  v17[27] = (((v505 ^ 0xCF) + 43) ^ ((v505 ^ 0x74) - 110) ^ ((v505 ^ 0x41) - 91)) - 33;
  LOBYTE(v505) = v17[28];
  LOBYTE(v494) = v505 + 70;
  LOBYTE(v505) = (-71 - v505) & 0xB3 | 8;
  LOBYTE(v484) = v505 ^ v494 & 0x52;
  LOBYTE(v505) = *(STACK[0xEA8] + ((v494 ^ (2 * ((v494 ^ 0x32) & (2 * ((v494 ^ 0x32) & (2 * ((v494 ^ 0x32) & (2 * ((v494 ^ 0x32) & (2 * ((v494 ^ 0x32) & (2 * ((v494 ^ 0x32) & (2 * v505) ^ v484)) ^ v484)) ^ v484)) ^ v484)) ^ v484)) ^ v484))) ^ 0x86u));
  v506 = STACK[0xEA8];
  LOBYTE(v494) = (((v505 ^ 0x3C) - 60) ^ ((v505 ^ 0xD8) + 40) ^ ((v505 ^ 0xA2) + 94)) + 126;
  LOBYTE(v484) = v494 & 0x16 ^ 0x73;
  LOBYTE(v505) = v494 ^ ((16 * ((v505 & 2) != 0)) | 0x21) ^ (2 * ((v494 ^ 0x30) & (2 * ((v494 ^ 0x30) & (2 * ((v494 ^ 0x30) & (2 * ((v494 ^ 0x30) & (2 * (v494 & (2 * (v484 ^ v494 & 0x26)) ^ v484)) ^ v484)) ^ v484)) ^ v484)) ^ v484));
  v17[28] = -95 - 59 * (((v505 ^ 0xBB) - 44) ^ ((v505 ^ 0x44) + 45) ^ ((v505 ^ 0x45) + 46));
  LOBYTE(v505) = v17[29] + 85;
  LOBYTE(v494) = v505 & 0x14 ^ 0x78;
  LOBYTE(v505) = *(v506 + ((v505 ^ (2 * ((v505 ^ 0x24) & (2 * ((v505 ^ 0x24) & (2 * ((v505 ^ 0x24) & (2 * ((v505 ^ 0x24) & (2 * v494) ^ v494)) ^ v494)) ^ v494)) ^ v494))) ^ 0x73u));
  LOBYTE(v494) = (((v505 ^ 0xA9) + 87) ^ ((v505 ^ 0x2F) - 47) ^ ((v505 ^ 0xC0) + 64)) - 109;
  LOBYTE(v483) = v494 & 0x7D ^ 0xF1;
  LOBYTE(v505) = v494 ^ ((16 * ((v505 & 2) != 0)) | 0x21) ^ (2 * ((v494 ^ 0x1A) & (2 * ((v494 ^ 0x1A) & (2 * ((v494 ^ 0x1A) & (2 * ((v494 ^ 0x1A) & (2 * ((v494 ^ 0x1A) & (2 * (((2 * v494) & 0x36 ^ 0x66) & (v494 ^ 0x12) ^ v483)) ^ v483)) ^ v483)) ^ v483)) ^ v483)) ^ v483));
  v17[29] = -59 * (((v505 ^ 0x3B) - 65) ^ ((v505 ^ 6) - 124) ^ ((v505 ^ 0xEC) + 106)) - 105;
  LOBYTE(v505) = v17[32];
  LOBYTE(v484) = (v505 + 112) & 0x98 ^ 0x3F;
  LOBYTE(v469) = (v505 + 112) ^ 0x22;
  LOBYTE(v494) = *(STACK[0xEB8] + (((v505 + 112) ^ (2 * (v469 & (2 * (v469 & (2 * (v469 & (2 * (v469 & (2 * (((2 * (v505 + 112)) | 0x3A) & v469 ^ v484)) ^ v484)) ^ v484)) ^ v484)) ^ v484))) ^ 9u));
  LOBYTE(v494) = ((v494 ^ 0xBC) + 68) ^ ((v494 ^ 0xC) - 12) ^ ((v494 ^ 0xF6) + 10);
  LOBYTE(v484) = v494 + 54;
  LOBYTE(v494) = ((-55 - v494) & 0xA4 | 0x10) ^ (v494 + 54) & 0x28;
  LOBYTE(v494) = v484 ^ (2 * ((v484 ^ 0x24) & (2 * ((v484 ^ 0x24) & (2 * ((v484 ^ 0x24) & (2 * (((2 * (v484 & (2 * v494) ^ v494)) ^ 0x40) & (v484 ^ 0x24) ^ v494)) ^ v494)) ^ v494)) ^ v494));
  LOBYTE(v505) = (((v505 & 1 ^ 0xFD) - 13) ^ ((v505 & 1 ^ 0xE7) - 23) ^ ((v505 & 1 ^ 0x1B) + 21)) + (v505 & 1 ^ ((v505 & 1) + 97) ^ ((v505 & 1 ^ 0xF3) + 116) ^ 0x87);
  v507 = (v494 ^ ((v494 & 0xF8) >> 3) ^ 0x9D) >> ((v505 ^ (2 * (v505 & (2 * ((v505 + 16) & 0x3A ^ 0xAD)) ^ (v505 + 16) & 0x3A ^ 0xAD))) & 7 ^ 2);
  LOBYTE(v507) = (-v507 ^ (v507 - ((2 * v507) & 0xD6) + 107) ^ 0x6B ^ ((v494 ^ 0x8C) - (v494 ^ 0xCC ^ (v507 + ((2 * v507) & 0x80) + 64)))) + (v494 ^ 0x8C);
  v17[32] = -83 - 51 * (((v507 ^ 0xF9) - 120) ^ ((v507 ^ 0xDB) - 90) ^ ((v507 ^ 0xC2) - 67));
  v508 = (v34[43] >> 4) | (16 * v34[43]);
  LOBYTE(v508) = *(v501 + ((v508 - ((2 * v508) & 0x8C) + 70) ^ 0xCBLL));
  v17[43] = (-81 * (((v508 ^ 0x48) + 8) ^ ((v508 ^ 0x9C) - 44) ^ ((v508 ^ 0xE4) - 84))) ^ 0x80;
  LOBYTE(v508) = -75 - 5 * v17[52];
  LOBYTE(v494) = v508 & 0xCD ^ 0x41;
  v509 = *(v503 + ((v508 ^ (2 * ((v508 ^ 0x4A) & (2 * ((v508 ^ 0x4A) & (2 * ((v508 ^ 0x4A) & (2 * ((v508 ^ 0x4A) & (2 * ((v508 ^ 0xA) & (2 * ((((2 * v508) & 0x96 ^ 0x86) & 2 | v494) ^ ((2 * v508) & 0x96 ^ 0x86) & v508)) ^ v494)) ^ v494)) ^ v494)) ^ v494)) ^ v494))) ^ 0x62u));
  LOBYTE(v509) = (2 * (((v509 >> 2) | (v509 << 6)) ^ 0xCD)) & 0xE4 ^ ((v509 >> 2) | (v509 << 6)) ^ 0xCD;
  v17[52] = (((v509 ^ 0x89) + 18) ^ ((v509 ^ 0x2A) - 77) ^ ((v509 ^ 0xD6) + 79)) + 17;
  LOBYTE(v509) = v17[55] + 109;
  LOBYTE(v484) = v509 & 0x3B ^ 0xCB;
  LOBYTE(v509) = *(v502 + ((v509 ^ (2 * ((v509 ^ 0x24) & (2 * ((v509 ^ 0x24) & (2 * ((v509 ^ 0x24) & (2 * ((v509 ^ 0x24) & (2 * (((2 * (((2 * v509) & 0x4A | 0x25) & v509)) ^ 0x1E) & (v509 ^ 4) ^ v484)) ^ v484)) ^ v484)) ^ v484)) ^ v484))) ^ 0x82u));
  v17[55] = -51 * (((v509 ^ 0x36) + 22) ^ ((v509 ^ 0x9B) - 71) ^ ((v509 ^ 0x6C) + 80)) + 57;
  LOBYTE(v509) = (((*v82 ^ 0x5A) - 90) ^ ((*v82 ^ 0xA5) + 91) ^ ((*v82 ^ 0x7B) - 123)) - 75;
  LOBYTE(v494) = v509 & 0xE7 ^ 3;
  v510 = *(v502 + ((v509 ^ (2 * ((v509 ^ 0x60) & (2 * ((v509 ^ 0x60) & (2 * ((v509 ^ 0x60) & (2 * ((v509 ^ 0x60) & (2 * ((v509 ^ 0x60) & (2 * (v509 & (2 * v494) ^ v494)) ^ v494)) ^ v494)) ^ v494)) ^ v494)) ^ v494))) ^ 0x5Eu));
  v511 = LODWORD(STACK[0xC14]) - 51 * (((v510 ^ 0x59) - 119) ^ ((v510 ^ 0x2A) - 4) ^ ((v510 ^ 0xFFFFFFB2) + 100));
  LOBYTE(v494) = v511 & 0xDE ^ 0x19;
  v512 = STACK[0xD58];
  v513 = LODWORD(STACK[0xD58]);
  v514 = v513 - ((2 * v513) & 0x186A5DCD0) + 0x48C1750BC352EE68;
  STACK[0xD08] = v514;
  v515 = STACK[0xF38];
  v516 = STACK[0xF38];
  *v82 = *(STACK[0xF38] + (v514 ^ 0x48C1750BC352EE68)) ^ v511 ^ (2 * ((v511 ^ 0x2C) & (2 * ((v511 ^ 0x2C) & (2 * ((v511 ^ 0x2C) & (2 * ((v511 ^ 0x2C) & (2 * ((v511 ^ 0x2C) & (2 * (v494 ^ v511 & 0x32)) ^ v494)) ^ v494)) ^ v494)) ^ v494)) ^ v494)) ^ 0x5A;
  v517 = v513 + v515;
  v518 = *(STACK[0xEB0] + (((v82[1] >> 4) | (16 * v82[1])) ^ 0xDBLL)) ^ ((v82[1] >> 4) | (16 * v82[1]));
  LOBYTE(v518) = -81 * (((v518 ^ 0x33) + 46) ^ (v518 + 31) ^ ((v518 ^ 0xF9) - 24)) - 21;
  LOBYTE(v513) = v518 & 0xBA ^ 0xE0;
  v82[1] = *(v517 + 1) ^ v518 ^ (2 * ((v518 ^ 0x78) & (2 * ((v518 ^ 0x78) & (2 * ((v518 ^ 0x78) & (2 * ((v518 ^ 0x78) & (2 * ((v518 ^ 0x78) & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ 0x3E;
  v82[2] ^= *(v516 + (v512 + 2));
  v82[3] ^= *(v516 + (v512 + 3));
  v82[4] ^= *(v516 + (v512 + 4));
  v82[5] ^= *(v516 + (v512 + 5));
  LOBYTE(v517) = *(v516 + (v512 + 6)) ^ v82[6];
  LOBYTE(v517) = (((v517 ^ 2) + 54) ^ ((v517 ^ 0xF7) - 63) ^ ((v517 ^ 0x71) + 71)) + 112;
  LOBYTE(v516) = v517 & 0x76 ^ 0x44;
  LOBYTE(v517) = *(v502 + ((v517 ^ (2 * ((v517 ^ 0x6C) & (2 * ((v517 ^ 0x6C) & (2 * ((v517 ^ 0x6C) & (2 * ((v517 ^ 0x6C) & (2 * ((v517 ^ 0x6C) & (2 * v516) ^ v516)) ^ v516)) ^ v516)) ^ v516)) ^ v516))) ^ 0xCFu));
  LODWORD(STACK[0xD20]) = 14;
  LOBYTE(v517) = -51 * (((v517 ^ 0x2F) + 123) ^ ((v517 ^ 0x95) - 63) ^ ((v517 ^ 0x7B) + 47)) + 14;
  LOBYTE(v516) = v517 & 0x27 ^ 0xC3;
  v82[6] = v517 ^ (2 * ((v517 ^ 0x20) & (2 * ((v517 ^ 0x20) & (2 * ((v517 ^ 0x20) & (2 * ((v517 ^ 0x20) & (2 * (((2 * (((2 * v517) & 0x42 | 0x21) & v517)) ^ 6) & v517 ^ v516)) ^ v516)) ^ v516)) ^ v516)) ^ v516)) ^ 0xA3;
  v519 = STACK[0xF38];
  v520 = STACK[0xF38];
  LOBYTE(v518) = 5 - 5 * (*(STACK[0xF38] + (v512 + 7)) ^ v82[7] ^ 0x84);
  LOBYTE(v513) = v518 & 0x47 ^ 0x66;
  LOBYTE(v518) = v518 ^ (2 * ((v518 ^ 0x7A) & (2 * ((v518 ^ 0x7A) & (2 * ((v518 ^ 0x7A) & (2 * ((v518 ^ 0x7A) & (2 * ((v518 ^ 0x7A) & (2 * ((v518 ^ 0x7A) & (2 * v518) & 0x76 ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513));
  LOBYTE(v518) = v518 ^ *(v499 + (v518 ^ 0x61));
  LOBYTE(v518) = (((v518 ^ 0xF6) + 11) ^ ((v518 ^ 0x97) + 108) ^ ((v518 ^ 0xA4) + 89)) - 44;
  LOBYTE(v513) = v518 & 0xA3 ^ 0x79;
  v82[7] = v518 ^ (2 * ((v518 ^ 0x70) & (2 * ((v518 ^ 0x70) & (2 * ((v518 ^ 0x70) & (2 * ((v518 ^ 0x70) & (2 * ((v518 ^ 0x70) & (2 * (((2 * v518) & 0x62 ^ 0x52) & (v518 ^ 0x70) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ 0x27;
  v82[8] ^= *(v519 + (v512 + 8));
  LOBYTE(v519) = *(v519 + (v512 + 9)) ^ v82[9];
  LOBYTE(v519) = (((v519 ^ 0xF5) + 113) ^ ((v519 ^ 0xE4) + 98) ^ ((v519 ^ 0x95) + 17)) + 14;
  LOBYTE(v518) = v519 & 0x51 ^ 0xF4;
  LOBYTE(v519) = *(STACK[0xEC0] + ((v519 ^ (2 * ((v519 ^ 0x68) & (2 * ((v519 ^ 0x68) & (2 * ((v519 ^ 0x68) & (2 * ((v519 ^ 0x68) & (2 * ((v519 ^ 0x68) & (2 * ((v519 ^ 0x68) & (2 * v519) & 0x52 ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ v518))) ^ 0xC9u));
  v521 = STACK[0xEC0];
  LOBYTE(v519) = -119 - 59 * (((v519 ^ 0x98) + 60) ^ ((v519 ^ 0xB4) + 24) ^ ((v519 ^ 0x47) - 27));
  LOBYTE(v518) = v519 & 0x54 ^ 0x45;
  v82[9] = v519 ^ (2 * ((v519 ^ 0x4A) & (2 * ((v519 ^ 0x4A) & (2 * ((v519 ^ 0x4A) & (2 * ((v519 ^ 0x4A) & (2 * (((2 * ((v518 | 0xA) ^ v519 & 0x1E)) & 0xA | v518) ^ (2 * ((v518 | 0xA) ^ v519 & 0x1E)) & v519)) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ 0xD0;
  v82[10] ^= *(v520 + (v512 + 10));
  LOBYTE(v519) = (((v82[11] ^ 0xCF) + 49) ^ ((v82[11] ^ 0x58) - 88) ^ ((v82[11] ^ 0x13) - 19)) - 66;
  LOBYTE(v518) = v519 & 0x17 ^ 0xFC;
  LOBYTE(v519) = *(v521 + ((v519 ^ (2 * ((v519 ^ 0x3E) & (2 * ((v519 ^ 0x3E) & (2 * ((v519 ^ 0x3E) & (2 * ((v519 ^ 0x3E) & (2 * ((v519 ^ 0x3E) & (2 * ((v519 ^ 0x3E) & (2 * v519) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ v518))) ^ 0x8Fu));
  LOBYTE(v519) = -59 * (((v519 ^ 0xDD) - 92) ^ ((v519 ^ 0xA0) - 33) ^ ((v519 ^ 0x16) + 105)) + 22;
  LOBYTE(v518) = v519 & 0xC2 ^ 0xA3;
  v82[11] = *(v520 + (v512 + 11)) ^ v519 ^ (2 * ((v519 ^ 0x7C) & (2 * ((v519 ^ 0x7C) & (2 * ((v519 ^ 0x7C) & (2 * ((v519 ^ 0x7C) & (2 * ((v519 ^ 0x7C) & (2 * (v518 ^ v519 & 0x3E)) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ 0x46;
  v82[12] ^= *(v520 + (v512 + 12));
  LOBYTE(v520) = *(v520 + (v512 + 13));
  LOBYTE(v519) = v520 + 110;
  LOBYTE(v520) = ((v520 - 18) & 0x8B | 0x30) ^ (v520 + 110) & 0x60;
  LOBYTE(v520) = *(v506 + ((v519 ^ (2 * ((v519 ^ 0xA) & (2 * ((v519 ^ 0xA) & (2 * ((v519 ^ 0xA) & (2 * ((v519 ^ 0xA) & (2 * ((v519 ^ 0xA) & (2 * ((v519 ^ 2) & (2 * v520) ^ v520)) ^ v520)) ^ v520)) ^ v520)) ^ v520)) ^ v520))) ^ 0x8Cu));
  LOBYTE(v519) = (((v520 ^ 0x14) - 20) ^ ((v520 ^ 0x5D) - 93) ^ ((v520 ^ 0xF) - 15)) + 100;
  LOBYTE(v518) = v519 & 0xDC ^ 0x89;
  LOBYTE(v520) = -59 * ((8 * v520) & 0x10 ^ v519 ^ (2 * ((v519 ^ 0x4A) & (2 * ((v519 ^ 0x4A) & (2 * ((v519 ^ 0x4A) & (2 * ((v519 ^ 0x4A) & (2 * (((2 * (v518 ^ v519 & 0x16)) ^ 4) & (v519 ^ 0xA) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ 0x51) - 39;
  LOBYTE(v519) = v520 & 0x9D ^ 0x7F;
  v82[13] ^= v520 ^ (2 * ((v520 ^ 0x26) & (2 * ((v520 ^ 0x26) & (2 * ((v520 ^ 0x26) & (2 * ((v520 ^ 0x26) & (2 * ((v520 ^ 0x26) & (2 * (((2 * v520) & 0x4E ^ 0x3A) & (v520 ^ 0x26) ^ v519)) ^ v519)) ^ v519)) ^ v519)) ^ v519)) ^ v519)) ^ 0x9D;
  v522 = STACK[0xF38];
  v523 = STACK[0xF38];
  v82[14] ^= *(STACK[0xF38] + (v512 + 14));
  LOBYTE(v518) = v82[15] ^ *(v522 + (v512 + 15));
  STACK[0xE98] = v501;
  LOBYTE(v518) = *(v501 + (((v518 >> 4) | (16 * v518)) ^ 0xC5));
  LOBYTE(v518) = -81 * (((v518 ^ 0x4A) + 68) ^ ((v518 ^ 0x98) - 110) ^ ((v518 ^ 0xE2) - 20)) - 92;
  LOBYTE(v513) = v518 & 0xDC ^ 0x97;
  v82[15] = v518 ^ (2 * ((v518 ^ 0x36) & (2 * ((v518 ^ 0x36) & (2 * ((v518 ^ 0x36) & (2 * ((v518 ^ 0x36) & (2 * (((2 * (v513 ^ v518 & 0x6A)) ^ 0x44) & (v518 ^ 0x36) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ 0x58;
  v82[16] ^= *(v522 + (v512 + 16));
  v82[17] ^= *(v522 + (v512 + 17));
  v82[18] ^= *(v522 + (v512 + 18));
  LOBYTE(v522) = v82[19] ^ *(v522 + (v512 + 19));
  LOBYTE(v522) = -43 - 5 * (((v522 ^ 0x2D) - 40) ^ ((v522 ^ 0x86) + 125) ^ ((v522 ^ 0x2F) - 42));
  LOBYTE(v518) = v522 & 0x9A ^ 0xBA;
  LODWORD(v522) = *(v503 + ((v522 ^ (2 * ((v522 ^ 0x24) & (2 * ((v522 ^ 0x24) & (2 * ((v522 ^ 0x24) & (2 * ((v522 ^ 0x24) & (2 * ((v522 ^ 0x24) & (2 * v518) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ v518))) ^ 0x35u));
  LODWORD(v522) = (2 * (((v522 >> 2) | (v522 << 6)) ^ 0x3A)) & 0x7FE4 ^ ((v522 >> 2) | (v522 << 6)) ^ 0x3A;
  LOBYTE(v522) = (((v522 ^ 0xCD) + 124) ^ ((v522 ^ 0xF7) + 66) ^ ((v522 ^ 0x5C) - 21)) + 101;
  LOBYTE(v518) = v522 & 0x35 ^ 0x36;
  v82[19] = v522 ^ (2 * ((v522 ^ 0x48) & (2 * ((v522 ^ 0x48) & (2 * ((v522 ^ 0x48) & (2 * ((v522 ^ 0x48) & (2 * ((v522 ^ 0x48) & (2 * ((v522 ^ 0x48) & (2 * v518) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ v518)) ^ 0xB1;
  v82[20] ^= *(v523 + (v512 + 20));
  v82[21] ^= *(v523 + (v512 + 21));
  v82[22] ^= *(v523 + (v512 + 22));
  LOBYTE(v522) = *(v523 + (v512 + 23)) ^ v82[23];
  LOBYTE(v522) = (((v522 ^ 0xDF) - 38) ^ ((v522 ^ 0x8A) - 115) ^ ((v522 ^ 0xD1) - 40)) - 21;
  LOBYTE(v523) = (v522 & 0xA4 | 0x18) ^ v522 & 0x70;
  LOBYTE(v522) = *(v502 + ((v522 ^ (2 * ((v522 ^ 0x24) & (2 * ((v522 ^ 0x24) & (2 * ((v522 ^ 0x24) & (2 * ((v522 ^ 0x24) & (2 * ((v522 ^ 0x24) & (2 * v523) ^ v523)) ^ v523)) ^ v523)) ^ v523)) ^ v523))) ^ 0x6Du));
  LOBYTE(v522) = -51 * (((v522 ^ 0x93) - 71) ^ ((v522 ^ 0x7D) + 87) ^ ((v522 ^ 0x2F) + 5)) - 5;
  LOBYTE(v523) = v522 & 0xA2 ^ 0x6E;
  v82[23] = v522 ^ (2 * ((v522 ^ 0x54) & (2 * ((v522 ^ 0x54) & (2 * ((v522 ^ 0x54) & (2 * ((v522 ^ 0x54) & (2 * ((v522 ^ 0x54) & (2 * v523) ^ v523)) ^ v523)) ^ v523)) ^ v523)) ^ v523)) ^ 0x26;
  v524 = STACK[0xF38];
  v525 = STACK[0xF38];
  LOBYTE(v513) = v82[24] ^ *(STACK[0xF38] + (v512 + 24)) ^ 0x43;
  LOBYTE(v513) = *(v501 + (((v513 >> 4) | (16 * v513)) ^ 0xF1));
  LOBYTE(v514) = -20 - 81 * (((v513 ^ 0xF4) - 47) ^ ((v513 ^ 0xB6) - 109) ^ ((v513 ^ 0x72) + 87));
  LOBYTE(v513) = v514 & 0x69 ^ 0x78;
  v82[24] = v514 ^ (2 * ((v514 ^ 0x38) & (2 * ((v514 ^ 0x38) & (2 * ((v514 ^ 0x38) & (2 * ((v514 ^ 0x38) & (2 * (v514 & (2 * (v514 & (2 * v514) & 0x72 ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ 0xED;
  LOBYTE(v514) = *(v524 + (v512 + 25)) ^ v82[25];
  LOBYTE(v514) = (((v514 ^ 0x1F) + 68) ^ ((v514 ^ 0x88) - 43) ^ ((v514 ^ 0x13) + 80)) - 115;
  LOBYTE(v524) = v514 & 0xF ^ 0xDE;
  LOBYTE(v514) = *(v506 + ((v514 ^ (2 * ((v514 ^ 0x12) & (2 * ((v514 ^ 0x12) & (2 * ((v514 ^ 0x12) & (2 * ((v514 ^ 0x12) & (2 * ((v514 ^ 0x12) & (2 * ((v514 ^ 0x12) & (2 * v514) & 0x26 ^ v524)) ^ v524)) ^ v524)) ^ v524)) ^ v524)) ^ v524))) ^ 0x68u));
  LOBYTE(v524) = ((v514 ^ 0x4C) - 76) ^ ((v514 ^ 0xBF) + 65) ^ ((v514 ^ 0xB5) + 75);
  LOBYTE(v513) = v524 - 122;
  LOBYTE(v524) = (v524 + 6) & 0xA8 | 0x13;
  LOBYTE(v477) = v524 ^ v513 & 0x66;
  LOBYTE(v514) = v513 ^ (8 * v514) & 0x10 ^ (2 * ((v513 ^ 0x28) & (2 * ((v513 ^ 0x28) & (2 * ((v513 ^ 0x28) & (2 * ((v513 ^ 0x28) & (2 * ((v513 ^ 0x28) & (2 * (v513 & (2 * v524) ^ v477)) ^ v477)) ^ v477)) ^ v477)) ^ v477)) ^ v477));
  LOBYTE(v514) = -101 - 59 * (((v514 ^ 0x1C) - 40) ^ ((v514 ^ 0xD3) + 25) ^ ((v514 ^ 0x8C) + 72));
  LOBYTE(v524) = v514 & 0x38 ^ 0xA0;
  v82[25] = v514 ^ (2 * ((v514 ^ 0x78) & (2 * ((v514 ^ 0x78) & (2 * ((v514 ^ 0x78) & (2 * ((v514 ^ 0x78) & (2 * v524) ^ v524)) ^ v524)) ^ v524)) ^ v524)) ^ 0xBC;
  v82[26] ^= *(v525 + (v512 + 26));
  v82[27] ^= *(v525 + (v512 + 27));
  v82[28] ^= *(v525 + (v512 + 28));
  LOBYTE(v524) = *(v525 + (v512 + 29));
  v526 = STACK[0xE68];
  v527 = LODWORD(STACK[0xE68]) + 1523601690;
  LODWORD(STACK[0xD18]) = v527;
  LODWORD(v514) = v526 + v527 - 1499070380 + (((v497 ^ 0x8E70CEF4) - 105581157) ^ ((v497 ^ 0x5B5A306D) + 748555012) ^ ((v497 ^ 0x7F9A9347) + 140421162));
  LOBYTE(v524) = 85 - 5 * (((v524 ^ v82[29] ^ 0xC6) - 28) ^ ((v524 ^ v82[29] ^ 0xAB) - 113) ^ ((v524 ^ v82[29] ^ 0xE9) - 51));
  LOBYTE(v525) = v524 & 0x4D ^ 0x5C;
  LOBYTE(v525) = v524 ^ (2 * ((v524 ^ 0x54) & (2 * ((v524 ^ 0x54) & (2 * ((v524 ^ 0x54) & (2 * ((v524 ^ 0x54) & (2 * ((v524 ^ 0x54) & (2 * (v524 & (2 * v524) & 0x2A ^ v525)) ^ v525)) ^ v525)) ^ v525)) ^ v525)) ^ v525));
  LODWORD(STACK[0xE68]) = v514;
  LOBYTE(v524) = (v525 & 0x1F ^ 2) & ((v514 & 5) + 1 + (v514 & 5 ^ 5));
  v528 = *(v503 + (v525 ^ 0xE2));
  v529 = (v528 ^ 0x46) << (v524 + (v525 & 6 ^ 4));
  LODWORD(v529) = ((v529 - ((2 * v529) & 0x90) - 56) ^ 0xFFFFFFC8) + ((v528 >> 2) ^ 0x11);
  LOBYTE(v528) = (2 * v529) & 0xE4 ^ v529;
  LODWORD(v513) = ((v512 + 141848778) ^ 0xE743CF10) & (2 * ((v512 + 141848778) & 0xF78B8F54)) ^ (v512 + 141848778) & 0xF78B8F54;
  LODWORD(v499) = ((2 * ((v512 + 141848778) ^ 0x2E42CB30)) ^ 0xB39288C8) & ((v512 + 141848778) ^ 0x2E42CB30) ^ (2 * ((v512 + 141848778) ^ 0x2E42CB30)) & 0xD9C94464;
  LODWORD(v513) = (v499 ^ 0x90000040) & (4 * v513) ^ v513;
  LODWORD(v499) = ((4 * (v499 ^ 0x48494424)) ^ 0x67251190) & (v499 ^ 0x48494424) ^ (4 * (v499 ^ 0x48494424)) & 0xD9C94460;
  LODWORD(v513) = (v499 ^ 0x41010000) & (16 * v513) ^ v513;
  LODWORD(v499) = ((16 * (v499 ^ 0x98C84464)) ^ 0x9C944640) & (v499 ^ 0x98C84464) ^ (16 * (v499 ^ 0x98C84464)) & 0xD9C94440;
  LODWORD(v513) = v513 ^ 0xD9C94464 ^ (v499 ^ 0x98804400) & (v513 << 8);
  v530 = (v512 + 141848778) ^ (2 * ((v513 << 16) & 0x59C90000 ^ v513 ^ ((v513 << 16) ^ 0x44640000) & (((v499 ^ 0x41490024) << 8) & 0x59C90000 ^ 0x10890000 ^ (((v499 ^ 0x41490024) << 8) ^ 0x49440000) & (v499 ^ 0x41490024))));
  LOBYTE(v528) = (((v528 ^ 0x16) - 30) ^ ((v528 ^ 0xAF) + 89) ^ ((v528 ^ 0x30) - 56)) - 40;
  LOBYTE(v513) = v528 & 0x58 ^ 0xD8;
  v82[29] = v528 ^ (2 * ((v528 ^ 0x28) & (2 * ((v528 ^ 0x28) & (2 * ((v528 ^ 0x28) & (2 * ((v528 ^ 0x28) & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ 0xDC;
  v531 = STACK[0xF38];
  v532 = STACK[0xF38];
  v82[30] ^= *(STACK[0xF38] + (v530 ^ 0xC499079CLL));
  LOBYTE(v513) = *(v531 + (v512 + 31)) ^ v82[31];
  v82[31] = v513;
  LOBYTE(v513) = (v513 & 0x24 ^ ((v513 & 0x24) - 115) ^ ((v513 & 0x24 ^ 0xF2) - 7) ^ 0x75) + (v513 & 0x24 ^ 0x20);
  LOBYTE(v477) = v513 + 106;
  LOBYTE(v513) = ((v513 - 22) & 0x85 | 0x48) ^ (v513 + 106) & 0x90;
  LOBYTE(v513) = v477 ^ (2 * ((v477 ^ 6) & (2 * ((v477 ^ 6) & (2 * ((v477 ^ 6) & (2 * ((v477 ^ 6) & (2 * ((v477 ^ 6) & (2 * ((v477 ^ 6) & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513));
  LOBYTE(v513) = ((((v513 ^ 0xC6) - 23) ^ ((v513 ^ 0xF4) - 37) ^ ((v513 ^ 0xFA) - 43)) + 25) * *(v531 + (v512 + 32)) + 67;
  LOBYTE(v531) = v513 & 0xA5 ^ 0x14;
  LODWORD(v513) = *(v503 + ((v513 ^ (2 * ((v513 ^ 0x3C) & (2 * ((v513 ^ 0x3C) & (2 * ((v513 ^ 0x3C) & (2 * ((v513 ^ 0x3C) & (2 * ((v513 ^ 0x3C) & (2 * (v513 & (2 * v513) & 0x7A ^ v531)) ^ v531)) ^ v531)) ^ v531)) ^ v531)) ^ v531))) ^ 0xAu));
  v533 = (v513 ^ 0x46) << ((v530 & 0xCA ^ 0x67 ^ (v530 & 0xCB ^ 0xAD) & (v530 & 0xCB ^ 0xBC)) + 59);
  LODWORD(v533) = (v533 - ((2 * v533) & 0x28) - 108) ^ (v513 >> 2);
  LOBYTE(v533) = v533 ^ (2 * v533) & 0xE4 ^ 0xC;
  LOBYTE(v513) = v533 + 119;
  LOBYTE(v533) = ((-120 - v533) & 0x88 | 6) ^ (v533 + 119) & 0xC;
  v82[32] ^= v513 ^ (2 * ((v513 ^ 8) & (2 * ((v513 ^ 8) & (2 * ((v513 ^ 8) & (2 * ((v513 ^ 8) & (2 * ((v513 ^ 8) & (2 * v533) ^ v533)) ^ v533)) ^ v533)) ^ v533)) ^ v533)) ^ 0x84;
  v82[33] ^= *(v532 + (v512 + 33));
  LOBYTE(v533) = 16 - 5 * *(v532 + (v512 + 34));
  LOBYTE(v513) = v533 & 0x50 ^ 0x70;
  LOBYTE(v533) = v533 ^ (2 * ((v533 ^ 0x70) & (2 * ((v533 ^ 0x70) & (2 * ((v533 ^ 0x70) & (2 * ((v533 ^ 0x70) & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513));
  v534 = STACK[0xE90];
  LOBYTE(v533) = (*(STACK[0xE90] + (v533 ^ 0x76)) ^ v533 ^ 0xD2) + 4;
  LOBYTE(v513) = v533 & 0x71 ^ 0x4F;
  v82[34] ^= v533 ^ (2 * ((v533 ^ 0x7A) & (2 * ((v533 ^ 0x7A) & (2 * ((v533 ^ 0x7A) & (2 * ((v533 ^ 0x7A) & (2 * ((v533 ^ 0x7A) & (2 * (((2 * v533) & 0x76 ^ 0xA) & (v533 ^ 0x7A) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ 0x71;
  v82[35] ^= *(v532 + (v512 + 35));
  LOBYTE(v533) = *(v532 + (v512 + 36)) ^ v82[36];
  LOBYTE(v533) = ((v533 ^ 7) - 34) ^ ((v533 ^ 0x14) - 49) ^ ((v533 ^ 0x97) + 78);
  LOBYTE(v532) = v533 + 25;
  LOBYTE(v533) = ((v533 - 103) & 0x81 | 0x5E) ^ (v533 + 25) & 0xBC;
  LODWORD(v533) = *(v506 + ((v532 ^ (2 * (v532 & (2 * (v532 & (2 * (v532 & (2 * (v532 & (2 * (v532 & (2 * (v532 & (2 * v533) ^ v533)) ^ v533)) ^ v533)) ^ v533)) ^ v533)) ^ v533))) ^ 0x5Au));
  LODWORD(v532) = (((v533 ^ 0xFFFFFFB1) + 79) ^ -v533 ^ ((v533 ^ 8) - 8)) + 71;
  LOBYTE(v513) = v532 & 0x45 ^ 0x73;
  LOBYTE(v533) = v532 ^ (8 * v533) & 0x10 ^ (2 * ((v532 ^ 0x66) & (2 * ((v532 ^ 0x66) & (2 * ((v532 ^ 0x66) & (2 * ((v532 ^ 0x66) & (2 * ((v532 ^ 0x66) & (2 * (((2 * v532) & 0x4E ^ 0x22) & (v532 ^ 0x66) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513));
  LOBYTE(v533) = -59 * (((v533 ^ 0xDA) - 94) ^ ((v533 ^ 0x37) + 77) ^ ((v533 ^ 0x25) + 95)) - 90;
  LOBYTE(v532) = v533 & 0x24 ^ 0x2B;
  v82[36] = v533 ^ (2 * ((v533 ^ 0x56) & (2 * ((v533 ^ 0x56) & (2 * ((v533 ^ 0x56) & (2 * ((v533 ^ 0x56) & (2 * ((v533 ^ 0x56) & (2 * ((v533 ^ 0x56) & 0x32 ^ v532)) ^ v532)) ^ v532)) ^ v532)) ^ v532)) ^ v532)) ^ 0xA0;
  v535 = STACK[0xF38];
  v536 = STACK[0xF38];
  LOBYTE(v513) = v82[37] ^ *(STACK[0xF38] + (v512 + 37));
  LOBYTE(v513) = 118 - 5 * (((v513 ^ 0xB5) + 3) ^ ((v513 ^ 0xC9) + 127) ^ ((v513 ^ 0xF8) + 80));
  LOBYTE(v531) = v513 & 0xEC ^ 0x33;
  LOBYTE(v513) = v513 ^ (2 * ((v513 ^ 0xE) & (2 * ((v513 ^ 0xE) & (2 * ((v513 ^ 0xE) & (2 * ((v513 ^ 0xE) & (2 * ((v513 ^ 0xE) & (2 * ((v513 ^ 0xE) & 0x22 ^ v531)) ^ v531)) ^ v531)) ^ v531)) ^ v531)) ^ v531));
  LOBYTE(v513) = v513 ^ *(v534 + (v513 ^ 0xCALL));
  LOBYTE(v513) = ((v513 ^ 0xC2) + 51) ^ ((v513 ^ 0x8C) + 125) ^ ((v513 ^ 0x20) - 47);
  LOBYTE(v531) = v513 - 59;
  LOBYTE(v513) = (58 - v513) & 0x9B;
  LOBYTE(v477) = v513 ^ v531 & 0x12;
  v82[37] = v531 ^ (2 * ((v531 ^ 0x1A) & (2 * ((v531 ^ 0x1A) & (2 * ((v531 ^ 0x1A) & (2 * ((v531 ^ 0x1A) & (2 * ((v531 ^ 0x1A) & (2 * ((v531 ^ 0x12) & (2 * v513) ^ v477)) ^ v477)) ^ v477)) ^ v477)) ^ v477)) ^ v477)) ^ 0xD;
  LODWORD(v535) = *(v535 + (v512 + 38));
  LOBYTE(v513) = -5 * (((v82[38] ^ 0x57) - 87) ^ ((v82[38] ^ 0xE4) + 28) ^ ((v82[38] ^ 0x37) - 55));
  LOBYTE(v531) = v513 - 55;
  LOBYTE(v513) = ((54 - v513) & 0xA3 | 0x54) ^ (v513 - 55) & 0xAA;
  LODWORD(v535) = ((v535 >> 4) | (16 * v535)) - ((2 * ((v535 >> 4) | (16 * v535))) & 0x6C) - 74;
  v537 = STACK[0xEB0];
  LODWORD(v535) = 16 - 81 * (*(STACK[0xEB0] + (v535 ^ 0x25)) ^ v535 ^ 0xFFFFFFB4);
  v538 = *(v503 + ((v531 ^ (2 * ((v531 ^ 0x22) & (2 * ((v531 ^ 0x22) & (2 * ((v531 ^ 0x22) & (2 * ((v531 ^ 0x22) & (2 * ((v531 ^ 0x22) & (2 * ((v531 ^ 0x22) & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513))) ^ 0xA6u));
  v539 = (v538 >> 2) | (v538 << 6);
  v540 = (v539 & 0xF2 ^ 0x9Du) << (((((v524 & 0xD ^ 0xF5) & ~(v524 & 0xD) ^ (v524 & 5 | 0xE8)) - 28) & (STACK[0xD08] ^ 0x97)) + (v512 & 1));
  LOBYTE(v540) = v539 ^ 0xA8 ^ (v540 - ((2 * v540) & 0x54) - 86);
  LOBYTE(v539) = v540 + 91;
  LOBYTE(v540) = (v540 - 37) & 0xA4 | 0x11;
  LOBYTE(v513) = v540 ^ v539 & 0x62;
  v82[38] = v535 ^ v539 ^ (2 * (((2 * (((2 * (((32 * (((((32 * (((v535 ^ 0x70) >> 4) & 1)) | 0x10) & (v535 ^ 0x70)) >> 4) & 3)) | 0x10) & (v535 ^ 0x70))) ^ 0x10) & (v535 ^ 0x70))) ^ 0x10) & (v535 ^ 0x70) ^ v513 ^ (v539 ^ 0x24) & (2 * ((v539 ^ 0x24) & (2 * ((v539 ^ 0x24) & (2 * ((v539 ^ 0x24) & (2 * ((v539 ^ 0x24) & (2 * (v539 & (2 * v540) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)))) ^ 0x52;
  v82[39] ^= *(v536 + (v512 + 39));
  v82[40] ^= *(v536 + (v512 + 40));
  v541 = v82[41];
  v82[41] = v541 ^ *(v536 + (v512 + 41));
  v82[42] ^= *(v536 + (v512 + 42));
  v82[43] ^= *(v536 + (v512 + 43));
  v82[44] ^= *(v536 + (v541 & 0xFFFFFFBF ^ 0xA8 ^ (v541 ^ 0x84) & (v541 ^ 0xC4)) + v512);
  v82[(v82[45] & 0x2D ^ 4) + (v82[45] & 0x2D ^ 0x29)] = *(v536 + (v512 + 45)) ^ v82[45];
  LOBYTE(v540) = -111 - 5 * *(v536 + (v512 + 46));
  LOBYTE(v535) = v540 & 0xA9 ^ 0xA5;
  LODWORD(v540) = *(v503 + ((v540 ^ (2 * ((v540 ^ 0x6E) & (2 * ((v540 ^ 0x6E) & (2 * ((v540 ^ 0x6E) & (2 * ((v540 ^ 0x6E) & (2 * ((v540 ^ 0x6E) & (2 * (((2 * v540) & 0x5E ^ 0x46) & (v540 ^ 0x4E) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535))) ^ 6u));
  LODWORD(v540) = (((v540 >> 2) | (v540 << 6)) ^ (2 * ((v540 >> 2) | (v540 << 6))) & 0x7FE4 ^ 0x38) + 65;
  LOBYTE(v541) = v540 & 0x48 ^ 0xCD;
  v82[46] ^= v540 ^ (2 * ((v540 ^ 0x3E) & (2 * ((v540 ^ 0x3E) & (2 * ((v540 ^ 0x3E) & (2 * ((v540 ^ 0x3E) & (2 * ((v540 ^ 0x3E) & (2 * ((v540 ^ 0x3E) & 0x36 ^ v541)) ^ v541)) ^ v541)) ^ v541)) ^ v541)) ^ v541)) ^ 0x48;
  v542 = STACK[0xF38];
  v543 = STACK[0xF38];
  LOBYTE(v535) = *(STACK[0xF38] + (v512 + 47)) ^ v82[47] ^ 0x15;
  v544 = STACK[0xE98];
  LOBYTE(v535) = *(STACK[0xE98] + (((v535 >> 4) | (16 * v535)) ^ 0x94));
  LOBYTE(v535) = -81 * (((v535 ^ 0xFA) + 33) ^ ((v535 ^ 0x10) - 53) ^ ((v535 ^ 0xDA) + 1));
  LOBYTE(v536) = v535 - 59;
  LOBYTE(v535) = ((58 - v535) & 0x96 | 0x20) ^ (v535 - 59) & 0x64;
  v82[47] = v536 ^ (2 * ((v536 ^ 0x14) & (2 * ((v536 ^ 0x14) & (2 * ((v536 ^ 0x14) & (2 * ((v536 ^ 0x14) & (2 * ((v536 ^ 0x16) & (2 * v535) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ 0x76;
  v82[48] ^= *(v542 + (v512 + 48));
  LOBYTE(v542) = *(v542 + (v512 + 49));
  LOBYTE(v535) = v542 - 112;
  LOBYTE(v542) = (111 - v542) & 0x82 | 0x35;
  LOBYTE(v536) = v542 ^ v535 & 0x6A;
  v545 = STACK[0xEB8];
  LODWORD(v542) = *(STACK[0xEB8] + ((v535 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * (v535 & (2 * v542) ^ v536)) ^ 4) & v535 ^ v536)) ^ 4) & v535 ^ v536)) ^ 4) & v535 ^ v536)) ^ 4) & v535 ^ v536)) ^ 4) & v535 ^ v536))) ^ 0x7Du));
  LODWORD(v542) = (((v542 ^ 0xFFFFFF8E) + 114) ^ ((v542 ^ 0x74) - 116) ^ ((v542 ^ 0xFFFFFFBC) + 68)) - 8;
  LODWORD(v535) = v542 & 0xFFFFFFDC ^ 0x3D;
  LODWORD(v542) = v542 ^ (2 * ((v542 ^ 0x62) & (2 * ((v542 ^ 0x62) & (2 * ((v542 ^ 0x62) & (2 * ((v542 ^ 0x62) & (2 * ((v542 ^ 0x62) & (2 * ((v542 ^ 0x62) & 0x3E ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535));
  LODWORD(v542) = -51 * (v542 ^ (v542 >> 4) ^ (v542 >> 1) ^ 0x5F) - 118;
  LOBYTE(v535) = v542 & 0x24 ^ 0xFB;
  v82[49] ^= v542 ^ (2 * ((v542 ^ 0x76) & (2 * ((v542 ^ 0x76) & (2 * ((v542 ^ 0x76) & (2 * ((v542 ^ 0x76) & (2 * ((v542 ^ 0x76) & (2 * ((v542 ^ 0x76) & 0x12 ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ 0x24;
  LOBYTE(v542) = v82[50] ^ *(v543 + (v512 + 50)) ^ 0xBA;
  LOBYTE(v542) = ((v542 >> 4) | (16 * v542)) ^ *(v537 + (((v542 >> 4) | (16 * v542)) ^ 0x70));
  LOBYTE(v542) = -81 * (((v542 ^ 0xD) - 62) ^ ((v542 ^ 0x99) + 86) ^ ((v542 ^ 0x75) - 70)) - 42;
  LOBYTE(v535) = v542 & 0x48 ^ 0xC8;
  v82[50] = v542 ^ (2 * ((v542 ^ 0x38) & (2 * ((v542 ^ 0x38) & (2 * ((v542 ^ 0x38) & (2 * ((v542 ^ 0x38) & (2 * v535) | v535)) ^ v535)) ^ v535)) ^ v535)) ^ 0xCC;
  v82[51] ^= *(v543 + (v512 + 51));
  v82[52] ^= *(v543 + (v512 + 52));
  v82[53] ^= *(v543 + (v512 + 53));
  LOBYTE(v543) = *(v543 + (v512 + 54));
  LOBYTE(v542) = v543 + 16;
  LOBYTE(v543) = v543 & 8 ^ 0x8C ^ (v543 + 16) & 0xE9;
  LODWORD(v543) = *(v506 + ((v542 ^ (2 * ((v542 ^ 0x68) & (2 * ((v542 ^ 0x68) & (2 * ((v542 ^ 0x68) & (2 * ((v542 ^ 0x68) & (2 * ((v542 ^ 0x68) & (2 * (v542 & (2 * (v542 & 0xE9)) ^ v543)) ^ v543)) ^ v543)) ^ v543)) ^ v543)) ^ v543))) ^ 0x86u));
  LODWORD(v542) = ((v543 ^ 0xFFFFFF93) + 109) ^ ((v543 ^ 0x39) - 57) ^ ((v543 ^ 0xFFFFFFEC) + 20);
  LODWORD(v535) = v542 + 88;
  LODWORD(v542) = (v542 - 40) & 0xFFFFFFD6 | 1;
  LODWORD(v536) = v542 ^ v535 & 0xE;
  LODWORD(v543) = 13 - 59 * (((32 * ((v543 >> 2) & 1)) | 0x51) ^ ((16 * ((v543 >> 1) & 3)) | 4) ^ v535 ^ (2 * ((v535 ^ 0x56) & (2 * ((v535 ^ 0x56) & (2 * ((v535 ^ 0x56) & (2 * ((v535 ^ 0x56) & (2 * ((v535 ^ 0x56) & (2 * ((v535 ^ 0x56) & (2 * v542) ^ v536)) ^ v536)) ^ v536)) ^ v536)) ^ v536)) ^ v536)));
  LOBYTE(v542) = v543 & 0x67 ^ 0xDA;
  v82[54] ^= v543 ^ (2 * ((v543 ^ 0x72) & (2 * ((v543 ^ 0x72) & (2 * ((v543 ^ 0x72) & (2 * ((v543 ^ 0x72) & (2 * ((v543 ^ 0x72) & (2 * ((v543 ^ 0x72) & (2 * v543) & 0x66 ^ v542)) ^ v542)) ^ v542)) ^ v542)) ^ v542)) ^ v542)) ^ 0x67;
  v546 = STACK[0xF38];
  v547 = STACK[0xF38];
  v82[55] ^= *(STACK[0xF38] + (v512 + 55));
  v82[56] ^= *(v546 + (v512 + 56));
  v82[57] ^= *(v546 + (v512 + 57));
  LOBYTE(v535) = (((v82[58] ^ 0xEA) + 22) ^ ((v82[58] ^ 0x42) - 66) ^ ((v82[58] ^ 0x2C) - 44)) + 126;
  LOBYTE(v536) = v535 & 0xF1 ^ 0x89;
  LOBYTE(v513) = 2 * ((2 * v535) ^ 0xE ^ v536 ^ ((2 * v535) ^ 0xE) & v535);
  LOBYTE(v513) = 2 * ((2 * (v513 ^ v536 ^ v513 & v535)) ^ v536 ^ (2 * (v513 ^ v536 ^ v513 & v535)) & v535);
  LOBYTE(v513) = 2 * ((2 * (v513 ^ v536 ^ v513 & v535)) ^ v536 ^ (2 * (v513 ^ v536 ^ v513 & v535)) & v535);
  LODWORD(v535) = *(v506 + ((v535 ^ (2 * (v513 ^ v536 ^ v513 & v535))) ^ 0x96u));
  LODWORD(v536) = (((v535 ^ 0x1D) - 29) ^ ((v535 ^ 0x23) - 35) ^ ((v535 ^ 0x78) - 120)) - 126;
  LODWORD(v513) = (v536 & 0xFFFFFFAC | 0x41) ^ v536 & 0xFFFFFF82;
  LODWORD(v535) = v536 ^ ((16 * ((v535 >> 1) & 1)) | 0x65) ^ (2 * ((v536 ^ 0x2C) & (2 * ((v536 ^ 0x2C) & (2 * ((v536 ^ 0x2C) & (2 * ((v536 ^ 0x2C) & (2 * ((v536 ^ 0x2C) & (2 * (v536 & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513));
  LOBYTE(v535) = -69 - 59 * (((v535 ^ 0x99) + 60) ^ ((v535 ^ 0x83) + 34) ^ ((v535 ^ 0xDC) + 127));
  LOBYTE(v536) = v535 & 0xD4 ^ 0x24;
  v82[58] = *(v546 + (v512 + 58)) ^ v535 ^ (2 * ((v535 ^ 0xC) & (2 * ((v535 ^ 0xC) & (2 * ((v535 ^ 0xC) & (2 * ((v535 ^ 0xC) & (2 * v536) ^ v536)) ^ v536)) ^ v536)) ^ v536)) ^ 0x50;
  v82[59] ^= *(v547 + (v512 + 59));
  v82[60] ^= *(v547 + (v512 + 60));
  v82[61] ^= *(v547 + (v512 + 61));
  v82[62] ^= *(v547 + (v512 + 62));
  v82[63] ^= *(v547 + (v512 + 63));
  LOBYTE(v547) = -61 - 5 * (((*v82 ^ 0xA9) + 87) ^ ((*v82 ^ 0x15) - 21) ^ ((*v82 ^ 0x38) - 56));
  LOBYTE(v546) = v547 & 0x9B ^ 0x39;
  LODWORD(v547) = *(v503 + ((v547 ^ (2 * ((v547 ^ 0x28) & (2 * ((v547 ^ 0x28) & (2 * ((v547 ^ 0x28) & (2 * ((v547 ^ 0x28) & (2 * (((2 * (((2 * v547) & 0x52 | 0x29) & v547)) ^ 0x32) & v547 ^ v546)) ^ v546)) ^ v546)) ^ v546)) ^ v546))) ^ 0x34u));
  LOBYTE(v546) = ((v547 >> 2) | (v547 << 6)) ^ (2 * ((v547 >> 2) | (v547 << 6))) & 0xE4;
  LOBYTE(v547) = v34[3] + 69;
  LOBYTE(v535) = v547 & 0x8A ^ 0xAB;
  LOBYTE(v547) = v547 ^ (2 * ((v547 ^ 0x34) & (2 * ((v547 ^ 0x34) & (2 * ((v547 ^ 0x34) & (2 * ((v547 ^ 0x34) & (2 * ((v547 ^ 0x34) & (2 * ((v547 ^ 0x34) & 0x3E ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535)) ^ v535));
  v548 = v82[3];
  v549 = STACK[0xEC0];
  LOBYTE(v547) = *(STACK[0xEC0] + (v547 ^ 0x12u));
  LODWORD(v513) = *(STACK[0xDB0] + 4 * (v548 ^ 0x71));
  LODWORD(v536) = ((v548 ^ 0xFC525A78) & ((v82[1] << 16) ^ 0xFF7B7BFF) | (v82[1] << 16) & 0xAD0000) ^ 0x848000;
  v550 = ((v536 >> 20) & 0xF ^ 0xFFFFFFC3) & ((v536 >> 12) & 0xF0 | 0xC70B4C0F) | (v536 >> 12) & 0x30;
  v551 = STACK[0xDA8];
  v552 = STACK[0xE08];
  LODWORD(v546) = v548 ^ *(STACK[0xDA8] + 2 * (v82[2] ^ 0xE6)) ^ (v513 - ((2 * v513) & 0xBA2CFE50) + 1561755432) ^ __ROR4__(*(STACK[0xE18] + 4 * ((-81 * (*(v537 + (v550 ^ 0xC70B4C5ELL)) ^ ((v550 ^ 0xCD) - 2 * ((v550 ^ 0xCD) & 0xF) + 15) ^ 0xD)) ^ 0x67u)), 7) ^ *(STACK[0xE08] + 4 * (((v546 ^ 0x38) - 1) ^ 0x2Cu));
  LODWORD(v548) = *(STACK[0xDE0] + 2 * (v34[2] ^ 0x89));
  LOBYTE(v550) = *(v506 + ((((-81 * ((((v34[1] >> 4) | (16 * v34[1])) - 2 * (v34[1] >> 4) - 113) ^ 0x8D ^ *(v537 + ((((v34[1] >> 4) | (16 * v34[1])) - 2 * (v34[1] >> 4) - 113) ^ 0x1CLL)))) ^ 0x42) - 7) ^ 0x67));
  LOBYTE(v513) = ((v550 ^ 0x59) - 89) ^ ((v550 ^ 0x67) - 103) ^ ((v550 ^ 0x78) - 120);
  LOBYTE(v531) = v513 + 50;
  LOBYTE(v513) = ((-51 - v513) & 0xFC | 2) ^ (v513 + 50) & 0x54;
  LOBYTE(v477) = 2 * ((v531 ^ 0x7C) & (2 * ((2 * v513) ^ v513 ^ (2 * v513) & v531)) ^ v513);
  LOBYTE(v477) = 2 * ((v531 ^ 0x7C) & (2 * (v477 ^ v513 ^ v477 & v531)) ^ v513);
  LOBYTE(v550) = -59 * (v531 ^ ((16 * ((v550 & 2) != 0)) | 0x25) ^ (2 * (v477 ^ v513 ^ v477 & v531)));
  v553 = STACK[0xE70];
  LODWORD(v550) = v550 ^ *(STACK[0xE70] + 4 * (v550 ^ 0xAEu));
  v554 = STACK[0xDC0];
  LODWORD(v547) = *(STACK[0xDC0] + 4 * ((16 - 59 * (((v547 ^ 0x87) - 60) ^ ((v547 ^ 0xA2) - 25) ^ ((v547 ^ 0x4E) + 11))) ^ 0xE0u));
  v555 = *v34;
  v556 = v555 - ((2 * v555) & 0xEEEEEEEE);
  v557 = STACK[0xE28];
  LODWORD(v555) = *(STACK[0xE28] + 4 * (v555 ^ 2));
  *v82 = ((v546 ^ 0x8020A2A0) >> 24) ^ 0xD3;
  LODWORD(v547) = v547 ^ (v556 + 1548666487) ^ v555 ^ (((v548 >> 3) | (v548 << 13)) >> 1) & 0x31AA ^ ((v548 >> 3) | (v548 << 13)) ^ v550 & 0x3F77EFBB ^ (v550 & 0xE1893244 ^ 0xF7DCEF97) & (v550 & 0xE1893244 ^ 0xD6FFCDBF);
  *v34 = BYTE3(v547) ^ 0x61;
  v82[1] = ((v546 ^ 0x8020A2A0) >> 16) ^ 0x8B;
  v34[1] = BYTE2(v547) ^ 0x70;
  v82[2] = ((v546 ^ 0xA2A0) >> 8) ^ 0xDD;
  v34[2] = BYTE1(v547) ^ 0x68;
  v82[3] = v546 ^ 0xA8;
  v34[3] = ((v547 ^ 0x38) - 2 * (v547 & 1) - 127) ^ 0x81;
  v558 = STACK[0xDB8];
  LOBYTE(v548) = *(v549 + (((v82[4] ^ 0xF6) - 7) ^ 0x98));
  v559 = STACK[0xDF8];
  LODWORD(v547) = *(STACK[0xDB8] + 4 * (v82[7] ^ 0x24)) ^ *(v551 + 2 * (v82[6] ^ 0x24)) ^ *(STACK[0xDF8] + 4 * (v82[5] ^ 0x22)) ^ *(v552 + 4 * ((-59 * (((v548 ^ 0x65) + 52) ^ ((v548 ^ 0x82) - 43) ^ ((v548 ^ 0x8C) - 37)) + 74) ^ 0x1Eu));
  LODWORD(v546) = (v34[7] + 645268425 + (~(2 * v34[7]) | 0x3FFFFE6F)) & 0x2047FFFF ^ 0x98B9F4B7;
  LOBYTE(v546) = *(v544 + ((((16 * (v546 & 0xF)) ^ 0xFFFFFFFD) & ((((v34[7] - 55 + (~(2 * v34[7]) | 0x6F)) ^ 0xB7) >> 4) ^ 0x985AD5F2) | (v546 >> 4) & 2) ^ 0x985AD570));
  LOBYTE(v548) = v34[6] + 54;
  LOBYTE(v550) = v548 & 0xD6 ^ 0xD;
  LODWORD(v548) = *(v545 + ((v548 ^ (2 * ((v548 ^ 0x5C) & (2 * ((v548 ^ 0x5C) & (2 * ((v548 ^ 0x5C) & (2 * ((v548 ^ 0x5C) & (2 * ((v548 ^ 0x5C) & (2 * (v550 ^ v548 & 0xA)) ^ v550)) ^ v550)) ^ v550)) ^ v550)) ^ v550))) ^ 0x47u));
  LODWORD(v548) = (((v548 ^ 0xFFFFFFFA) + 6) ^ ((v548 ^ 0x5E) - 94) ^ ((v548 ^ 0xFFFFFFE2) + 30)) + 63;
  LODWORD(v550) = v548 & 0x51 ^ 0x6F;
  LODWORD(v548) = v548 ^ (2 * ((v548 ^ 0x1A) & (2 * ((v548 ^ 0x1A) & (2 * ((v548 ^ 0x1A) & (2 * ((v548 ^ 0x1A) & (2 * ((v548 ^ 0x1A) & (2 * (((2 * v548) & 0x36 ^ 0x4A) & (v548 ^ 0x1A) ^ v550)) ^ v550)) ^ v550)) ^ v550)) ^ v550)) ^ v550));
  LODWORD(v548) = -51 * (v548 ^ (v548 >> 4) ^ (v548 >> 1) ^ 0xFFFFFF9C);
  v560 = STACK[0xDD8];
  LOWORD(v548) = (v548 - ((2 * v548) & 0x166) + 9651) ^ *(STACK[0xDD8] + 2 * (v548 ^ 0xADu));
  v561 = STACK[0xE00];
  LODWORD(v513) = *(STACK[0xE00] + 4 * (v34[5] ^ 0xA3));
  LODWORD(v546) = (v34[4] - ((2 * v34[4]) & 0xEC) - 1613456522) ^ *(v557 + 4 * (v34[4] ^ 0xEALL)) ^ (((2 * v513) & 0x5EB42212 ^ 0x48102200) - ((2 * ((2 * v513) & 0x5EB42212 ^ 0x48102200)) & 0x30084000) + 403122380) ^ 0xF8EF50A1 ^ v513 ^ *(v554 + 4 * ((-81 * (((v546 ^ 0x62) - 59) ^ ((v546 ^ 0x93) + 54) ^ ((v546 ^ 0xC1) + 104)) - 57) ^ 0xCAu));
  v82[4] = BYTE3(v547) ^ 0x47;
  v34[4] = BYTE3(v546) ^ 0x50;
  v82[5] = BYTE2(v547) ^ 0x3D;
  LOWORD(v548) = v546 ^ v548;
  v34[5] = BYTE2(v546) ^ 0x6F;
  v82[6] = BYTE1(v547) ^ 0xDA;
  v34[6] = BYTE1(v548) ^ 0x31;
  v82[7] = v547 ^ 0x2A;
  v34[7] = v548 ^ 0x40;
  LOBYTE(v546) = (((v82[10] ^ 0x1D) - 29) ^ ((v82[10] ^ 0xB) - 11) ^ ((v82[10] ^ 0x92) + 110)) - 100;
  LOBYTE(v550) = v546 & 0x2E ^ 0xBA;
  LOBYTE(v546) = *(v545 + ((v546 ^ (2 * ((v546 ^ 0x78) & (2 * ((v546 ^ 0x78) & (2 * ((v546 ^ 0x78) & (2 * ((v546 ^ 0x78) & (2 * ((v546 ^ 0x78) & (2 * v550) ^ v550)) ^ v550)) ^ v550)) ^ v550)) ^ v550))) ^ 0xBFu));
  LOBYTE(v546) = (((v546 ^ 0xFB) + 5) ^ v546 ^ ((v546 ^ 0xBD) + 67)) + 24;
  LOBYTE(v550) = v546 & 0x66 ^ 0x52;
  LOBYTE(v550) = v546 ^ (2 * ((v546 ^ 0x40) & (2 * ((v546 ^ 0x40) & (2 * ((v546 ^ 0x40) & (2 * ((v546 ^ 0x40) & (2 * ((v546 ^ 0x40) & (2 * v550) ^ v550)) ^ v550)) ^ v550)) ^ v550)) ^ v550));
  v562 = v34[((v548 & 9 ^ 9) + (v548 & 9)) | 1];
  LODWORD(v548) = ((v34[8] - ((2 * v34[8]) & 0xCA)) << 24) - 452984832;
  LODWORD(v548) = ((((v562 - ((2 * v562) & 0xE4)) << 16) - 1334706176) ^ 0xDACBEF55) & (v548 ^ 0x1AFFFFF7) ^ v548 & 0x95000000;
  LOBYTE(v497) = v550 ^ (v550 >> 4) ^ (v550 >> 1);
  LODWORD(v555) = v34[10];
  v563 = v34[11];
  LODWORD(v550) = (((((v555 - ((2 * v555) & 0xE0)) << 8) - 1998819328) ^ 0x1D1CB34) & ((v563 - ((2 * v563) & 0x7A) - 89525187) ^ 0x5560BC9) ^ ((v563 - ((2 * v563) & 0x7A) - 89525187) & 0x408044CB | 0x8E07A834)) & (v548 ^ 0x104610AA);
  LOBYTE(v513) = 5 * (((v82[8] ^ 0xE) - 14) ^ ((v82[8] ^ 0xCA) + 54) ^ ((v82[8] ^ 0x40) - 64));
  LOBYTE(v556) = -50 - v513;
  LOBYTE(v513) = ((v513 + 49) & 0x9E | 0x20) ^ (-50 - v513) & 0x54;
  LODWORD(v515) = *(v559 + 4 * (v82[9] ^ 0xELL));
  LOBYTE(v513) = v556 ^ (2 * ((v556 ^ 0x1C) & (2 * ((v556 ^ 0x1C) & (2 * ((v556 ^ 0x1C) & (2 * ((v556 ^ 0x1C) & (2 * ((v556 ^ 0x1C) & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513));
  LOBYTE(v556) = (v515 & 0x6F ^ 8) + (v515 & 0x6F ^ 0x67);
  v564 = *(v551 + 2 * ((-51 * (v497 ^ 0xB3)) ^ 0xC6u));
  v565 = STACK[0xE90];
  v566 = v82[11];
  v567 = (v564 & 0x23 ^ 0x5809) + (v564 & 0x23 ^ 0x22);
  v568 = v82;
  v569 = STACK[0xD98];
  v570 = v564 ^ *(v558 + 4 * (v566 ^ 0xD5u)) ^ v515 ^ *(STACK[0xD98] + 4 * (((*(STACK[0xE90] + (((v556 & 0xFB) - ((2 * v556) & 0xF0) + 120) ^ 0x4D ^ v513 ^ 0xB2u)) ^ v564 & 3 ^ v513 ^ 0xB2 ^ (v564 & 0x23 ^ 0xF1) & (v564 & 0x23 ^ 0x15) ^ 0xEB) - 1) ^ 0x8Eu));
  LODWORD(v513) = ((v563 ^ 0xF5A7BDF6) + 173556412) ^ ((v563 ^ 0x3FFE15B1) - 1073616131) ^ ((v563 ^ 0xCA59A832) + 900093824);
  v571 = STACK[0xED0];
  v572 = v560;
  LOWORD(v555) = *(v560 + 2 * (v555 ^ 0xDF)) ^ (v555 - ((2 * v555) & 0x1C) - 24306);
  LODWORD(v513) = (v513 + 1437753282) ^ (v513 - 1222289749) ^ (((v513 + 1437753282) ^ 0x3168883C) - 1692063431) ^ (((v513 + 1437753282) ^ 0x30C420F9) - 1702264322) ^ (((v513 + 1437753282) ^ 0xBBE109C9) + 296528078) ^ (((v513 + 1437753282) ^ 0xEFFFFFF7) + 1169317620) ^ *(STACK[0xED0] + 4 * v567 + 4 * (v563 ^ 0xE9));
  LODWORD(v515) = (v513 & 0xCA994DD8 ^ 0x8A090100) + (v513 & 0xCA994DD8 ^ 0x40904CD8);
  v573 = STACK[0xE20];
  LODWORD(v546) = (v562 - ((2 * v562) & 4) + 179577858) ^ *(v553 + 4 * (v562 ^ 0xCB)) ^ v555 ^ 0xD59A ^ v513 ^ (v515 - ((2 * v515) & 0xAA349960) - 719696713) ^ *(STACK[0xE20] + 4 * (((v548 & 0xB875A854 ^ 0xEFBBFF5D ^ v550) >> (v555 & 8 ^ 0x1A ^ (v555 & 0x18 ^ 0xF7) & (v555 & 0x18 | 2))) ^ 0xB4u));
  v574 = v570 ^ 0x767F72E7u;
  v575 = v574 >> ((v566 & 0x18 ^ 0x18) + (v566 & 0x18u));
  v568[8] = (v575 - ((2 * v575) & 0x9C) - 50) ^ 0x4A;
  LOBYTE(v575) = v546 ^ 0xE;
  v576 = v34;
  v34[8] = ((v546 ^ 0x4BDD5E0E) >> 24) ^ 0x27;
  v568[9] = BYTE2(v574) ^ 0x84;
  v34[9] = ((v546 ^ 0x4BDD5E0E) >> 16) ^ 4;
  v568[10] = BYTE1(v570) ^ 0xF6;
  v34[10] = ((v546 ^ 0x5E0E) >> 8) ^ 0xB9;
  v568[11] = v570 ^ 0x63;
  v34[11] = v546 ^ 0x1B;
  LODWORD(v546) = (v34[13] >> 4) | (16 * v34[13]);
  LODWORD(v550) = v568[12];
  LODWORD(v574) = ((v568[13] << 16) ^ 0xFBD71FE8) & ((v550 << 24) ^ 0x7FFF9FED);
  LODWORD(v555) = (v34[15] >> 4) | (16 * v34[15]);
  v577 = v568[15] & 9 ^ 0xBE55A8BD ^ ((((v568[14] << 8) ^ 0x6DD18811) & ((v574 & 0xFBFFFFFF | (((v550 >> 2) & 1) << 26)) ^ 0x80ACE079) | v574 & 0x922E0080) ^ 0xB7591E67) & (v568[15] ^ 0xFFFFFF73);
  LODWORD(v546) = (-81 * (*(STACK[0xEB0] + ((v546 - ((2 * v546) & 0x54) + 42) ^ 0xB9)) ^ (v546 - ((2 * v546) & 0x54) + 42) ^ 0x28)) << 16;
  LODWORD(v550) = (((v34[14] + (~(2 * v34[14]) | 0xFFFF13)) << 8) + 271349504) ^ 0xCF7F3B53;
  LODWORD(v546) = v550 & ~v546 | v546 & 0xAC0000;
  v578 = v558;
  LODWORD(v513) = *(STACK[0xDA0] + 2 * BYTE1(v577)) ^ *(v558 + 4 * v577);
  v579 = STACK[0xE18];
  v580 = *(STACK[0xE18] + 4 * BYTE2(v577));
  LODWORD(v577) = v513 ^ (v580 >> 7) ^ *(v569 + ((v577 >> 22) & 0x3FC)) ^ (v580 << ((v575 & 0x19 ^ 8) + (v575 & 0x19 ^ 0x11)));
  LOWORD(v550) = BYTE1(v550) ^ *(v572 + 2 * (BYTE1(v550) ^ 0x18u));
  LOBYTE(v575) = -81 * ((v555 - ((2 * v555) & 0xE8) - 12) ^ 0xF6 ^ *(STACK[0xEB0] + ((v555 - ((2 * v555) & 0xE8) - 12) ^ 0x67)));
  v581 = STACK[0xE10];
  LODWORD(v546) = *(v561 + 4 * (BYTE2(v546) ^ 0x8Bu)) ^ 0x7D1388AD;
  LODWORD(v546) = v575 ^ 0x8B ^ ((v575 ^ 0x8B) - 1222289948) ^ *(v571 + 4 * (v34[12] ^ 0x5CLL) + 34828) ^ *(STACK[0xE10] + 4 * (v575 ^ 0x17u)) ^ v546 ^ (2 * v546) & 0x5EB42212;
  v568[12] = BYTE3(v577) ^ 0x8C;
  v34[12] = BYTE3(v546) ^ 0x5F;
  v568[13] = BYTE2(v577) ^ 0xAA;
  LOWORD(v550) = v546 ^ v550;
  v34[13] = BYTE2(v546) ^ 0xC8;
  v568[14] = (BYTE1(v577) ^ 0x8E) - ((2 * (BYTE1(v577) ^ 0x8E)) & 8) - 124;
  v34[14] = BYTE1(v550) ^ 0x6C;
  v568[15] = v577 ^ 0x88;
  v34[15] = v550 ^ 0xB;
  LODWORD(v550) = v34[16] - ((2 * v34[16]) & 0xFFF3);
  LOBYTE(v575) = (v575 & 0x10 ^ 0x10) + (v575 & 0x10) - ((2 * ((v575 & 0x10 ^ 0x10) + (v575 & 0x10))) & 0x20) + 28;
  v582 = ((v34[17] - ((2 * v34[17]) & 0x84) - 0x5B4858E5704BE4BELL) ^ 0xA4B7A71A8FB41B42) << (v575 & 0x68 ^ 8) << (v575 & 0x94 ^ 0x14);
  LOBYTE(v577) = v34[18] - ((2 * v34[18]) & 0xBB);
  LODWORD(v513) = v34[19];
  LODWORD(STACK[0xD08]) = 109;
  LODWORD(v555) = 59 * v513 + 109;
  LODWORD(v513) = v555 - (v513 << 6);
  LODWORD(v580) = v513 & 0xFFFFFFC5 ^ 0x39;
  LODWORD(v513) = v513 ^ (2 * ((v513 ^ 0x12) & (2 * ((v513 ^ 0x12) & (2 * ((v513 ^ 0x12) & (2 * ((v513 ^ 0x12) & (2 * ((v513 ^ 0x12) & (2 * (((2 * v555) & 0x26 ^ 0x56) & (v513 ^ 0x12) ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580));
  LODWORD(v513) = *(v565 + (v513 ^ 0xE3)) ^ v513 ^ 0x47;
  LODWORD(v550) = (-v513 | 0xFFFFF003) & (((v550 << 24) + 2030043136) ^ 0x69A1F08C) ^ v582 ^ ((v513 - 1) & 0x73 | 0x871C0500);
  v583 = v551;
  LODWORD(v513) = *(v551 + 2 * (v568[18] ^ 0xC0));
  v584 = STACK[0xEC0];
  LOBYTE(v580) = *(STACK[0xEC0] + ((((v568[16] ^ ((v568[16] ^ 0xFD) + 40) ^ ((v568[16] ^ 0x83) + 90) ^ 0x25) + 119) ^ ((v513 & 0xF8 ^ 0xD8) + (v513 ^ 0x20)) & 0xF8) ^ 0x60u));
  v585 = STACK[0xDB0];
  v586 = v579;
  LODWORD(v555) = *(v569 + 4 * (((-59 * (((v580 ^ 0xF5) - 40) ^ ((v580 ^ 0xA0) - 125) ^ ((v580 ^ 0x3E) + 29))) ^ 1) + 14));
  LOBYTE(v577) = (v577 - 35) ^ BYTE1(v550);
  LODWORD(v580) = v550;
  LODWORD(v515) = *(v581 + 4 * (v550 ^ 0x8Au));
  v587 = v581;
  LODWORD(v550) = BYTE3(v550);
  LODWORD(v513) = v513 ^ *(STACK[0xDB0] + 4 * ((((v568[19] & 0x27 ^ 0xE3) + (v568[19] & 0x27 ^ 4)) | 0xC2) ^ v568[19] ^ 0xFEu)) ^ __ROR4__(*(v579 + 4 * (v568[17] ^ 0x9ELL)), 7) ^ (((v568[19] & 0x27 ^ 0xE3) + (v568[19] & 0x27 ^ 4)) | 0xC2) ^ v568[19] ^ v555;
  LODWORD(v582) = *(v561 + 4 * (BYTE2(v582) ^ 0x4CLL)) ^ 0x8AD13674;
  LODWORD(v580) = v580 ^ 0x16;
  LODWORD(v582) = *(v557 + 4 * (v550 ^ 0xA8)) ^ v515 ^ v582 ^ (2 * v582) & 0x5EB42212 ^ (v580 - 1222289948);
  LOWORD(v555) = *(v572 + 2 * (v577 ^ 0x78u));
  v568[16] = BYTE3(v513) ^ 0x99;
  v34[16] = BYTE3(v582) ^ 0x76;
  v568[17] = BYTE2(v513) ^ 0x66;
  v34[17] = BYTE2(v582) ^ 0x31;
  v568[(v513 & 0x3F08DE10 ^ 0x22089E00) - 1057545726 + (v513 & 0x3F08DE10 ^ 0x1D004010)] = BYTE1(v513) ^ 0xC4;
  LOWORD(v582) = v582 ^ v577 ^ v555;
  v34[18] = BYTE1(v582) ^ 0x76;
  v568[19] = v513 ^ 0x55;
  v34[19] = v580 ^ v550 ^ 0x67 ^ v582;
  LOBYTE(v582) = 5 * (((v568[22] ^ 0xC8) + 56) ^ v568[22] ^ ((v568[22] ^ 0xCC) + 52));
  LOBYTE(v577) = ((v582 + 21) & 0x82 | 0x1C) ^ (-22 - v582) & 0x3C;
  LOBYTE(v513) = (-22 - v582) ^ (2 * ((106 - v582) & (2 * ((106 - v582) & (2 * ((106 - v582) & (2 * ((106 - v582) & (2 * ((106 - v582) & (2 * v577) ^ v577)) ^ v577)) ^ v577)) ^ v577)) ^ v577));
  LODWORD(v582) = v34[23];
  LOBYTE(v580) = *(v565 + (v513 ^ 0x98));
  LODWORD(v577) = ((v34[21] + (~(2 * v34[21]) | 0xFFC5)) << 16) + 1193148416;
  LODWORD(v550) = ((v582 - ((2 * v582) & 0x19A) - 440806195) & 0x190037D ^ 0xDF88B23E ^ ((v582 - ((2 * v582) & 0x19A) - 440806195) ^ 0x462B02) & ((((v34[22] - ((2 * v34[22]) & 0xB2)) << 8) + 1860000000) ^ 0xF1BD82) & 0x81FFFFFF) & (v577 ^ 0xB8E2FFFF);
  LOBYTE(v555) = v580 ^ v513;
  LOBYTE(v513) = (v580 & 0xC4) + (((v580 & 0xC4 ^ 0xF8) + 50) ^ ((v580 & 0xC4) + 46) ^ ((v580 & 0xC4 ^ 0x86) + 80)) + 109;
  LOBYTE(v580) = v513 & 0x2B ^ 0xD3;
  LOBYTE(v513) = v568[23] ^ v513 ^ (2 * ((v513 ^ 4) & (2 * ((v513 ^ 4) & (2 * ((v513 ^ 4) & (2 * ((v513 ^ 4) & (2 * (((2 * (((2 * v513) & 0xA | 5) & v513)) ^ 0x2E) & (v513 ^ 4) ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580));
  LODWORD(v580) = v568[21];
  HIDWORD(v588) = v580 ^ 0xC;
  LODWORD(v588) = v580 << 24;
  LOBYTE(v580) = *(STACK[0xE98] + ((v588 >> 28) ^ 0x8DLL));
  LODWORD(v513) = *(v583 + 2 * (((v555 ^ 0x3C) - 1) ^ 0x4Bu)) ^ *(v578 + 4 * (v513 ^ 0xAFu)) ^ __ROR4__(*(v579 + 4 * ((-46 - 81 * (((v580 ^ 0xB5) - 75) ^ ((v580 ^ 0x84) - 122) ^ ((v580 ^ 1) + 1))) ^ 0x67u)), 7);
  LOBYTE(v555) = v582 + 125;
  LOBYTE(v582) = (-126 - v582) & 0x95 | 2;
  LOBYTE(v580) = v582 ^ v555 & 0x26;
  v589 = STACK[0xEC8];
  LODWORD(v580) = *(STACK[0xEC8] + ((v555 ^ (2 * ((v555 ^ 0x14) & (2 * ((v555 ^ 0x14) & (2 * ((v555 ^ 0x14) & (2 * ((v555 ^ 0x14) & (2 * ((v555 ^ 0x14) & (2 * (v555 & (2 * v582) ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580))) ^ 0xAu));
  LODWORD(v582) = v513 ^ *(v569 + 4 * (v568[20] ^ 0x42));
  LODWORD(v577) = v550 ^ v577 & 0xCB0000;
  LOBYTE(v550) = *(STACK[0xEB8] + (((BYTE1(v550) ^ 0xFC) + 18) ^ 0x91));
  LOBYTE(v550) = (((v550 ^ 0xA6) + 90) ^ ((v550 ^ 0x7A) - 122) ^ ((v550 ^ 0x9A) + 102)) + 43;
  LOBYTE(v555) = v550 & 0x8B ^ 0xB6;
  LOBYTE(v550) = v550 ^ (2 * ((v550 ^ 0x2E) & (2 * ((v550 ^ 0x2E) & (2 * ((v550 ^ 0x2E) & (2 * ((v550 ^ 0x2E) & (2 * ((v550 ^ 0x2E) & (2 * ((v550 ^ 0x2E) & (2 * v550) & 0x5E ^ v555)) ^ v555)) ^ v555)) ^ v555)) ^ v555)) ^ v555));
  v590 = STACK[0xDE0];
  LODWORD(v550) = *(STACK[0xDE0] + 2 * ((-51 * (v550 ^ (v550 >> 4) ^ (v550 >> 1) ^ 0x26)) ^ 0x3Fu));
  LODWORD(v501) = -51 * (((v580 ^ 0xFFFFFFD2) + 96) ^ ((v580 ^ 0xFFFFFFCB) + 71) ^ ((v580 ^ 0xFFFFFFD8) + 86)) + 87;
  LODWORD(v550) = (v550 >> 3) | (v550 << 13);
  LOBYTE(v513) = v34[20];
  LOBYTE(v580) = v513 - 119;
  LOBYTE(v513) = ((118 - v513) & 0x89 | 0x40) ^ (v513 - 119) & 0x92;
  LOBYTE(v513) = *(STACK[0xEC8] + ((v580 ^ (2 * ((v580 ^ 8) & (2 * ((v580 ^ 8) & (2 * ((v580 ^ 8) & (2 * ((v580 ^ 8) & (2 * ((v580 ^ 8) & (2 * (v580 & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513))) ^ 0xA2u));
  v591 = v573;
  LODWORD(v513) = *(STACK[0xE70] + 4 * (BYTE2(v577) ^ 0x6Bu)) ^ *(v587 + 4 * (v501 ^ 0xF1u)) ^ *(v573 + 4 * ((-51 * (((v513 ^ 0x5B) - 1) ^ ((v513 ^ 0x9F) + 59) ^ ((v513 ^ 5) - 95)) + 31) ^ 0x90u)) ^ ((v501 ^ 0x6D) - 1222289948) ^ ((v501 ^ 0x6D) - ((2 * (v501 ^ 0x6D)) & 0x1A6) - 1382851117) ^ v550 ^ 0x6199 ^ (v550 >> 1) & 0x31AA;
  v592 = (v582 ^ 0xEE287BCE) >> ((v550 & 0x18 ^ 0x18) + (v550 & 0x18));
  v568[20] = (v592 - ((2 * v592) & 0xD8) + 108) ^ 0xE8;
  v34[20] = BYTE3(v513) ^ 0x40;
  v568[21] = BYTE2(v582) ^ 0xAC;
  v34[21] = BYTE2(v513) ^ 0xEB;
  v568[22] = ~BYTE1(v582);
  v34[22] = BYTE1(v513) ^ 0x61;
  v568[23] = v582 ^ 0x4A;
  v34[23] = v513 ^ BYTE2(v577) ^ 0x75;
  LODWORD(v577) = v34[26];
  LOBYTE(v555) = (v577 & 8 ^ ((v577 & 8) + 79) ^ ((v577 & 8 ^ 0x48) + 9) ^ 0x5F) + (((v577 & 8 ^ 0x1D) + 60) ^ ((v577 & 8 ^ 0xBC) - 101) ^ ((v577 & 8 ^ 0xA9) - 112));
  LOBYTE(v580) = v555 - 3;
  LOBYTE(v555) = (2 - v555) & 0x93 | 8;
  LOBYTE(v515) = v555 ^ v580 & 0x12;
  LOBYTE(v555) = v580 ^ (2 * ((v580 ^ 0x12) & (2 * ((v580 ^ 0x12) & (2 * ((v580 ^ 0x12) & (2 * ((v580 ^ 0x12) & (2 * ((v580 ^ 0x12) & (2 * ((v580 ^ 0x12) & (2 * v555) ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ 0x99;
  LODWORD(v577) = ((v577 - ((2 * v577) & 0xDA) - 1886376851) ^ 0x8F902C6D) << (v555 & 0xBA ^ 0x18) << (v555 & 0x45);
  LODWORD(v555) = ((v34[24] - ((2 * v34[24]) & 0x72)) << 24) - 1191182336;
  LODWORD(v513) = v34[27] + 101;
  LOBYTE(v515) = v513 & 0x3B ^ 0x4F;
  HIDWORD(v588) = ((v513 ^ (2 * ((v513 ^ 0xAA) & (2 * ((v513 ^ 0x2C) & (2 * ((v513 ^ 0x2C) & (2 * ((v513 ^ 0x2C) & (2 * ((v513 ^ 0x2C) & (2 * (((2 * v513) & 0x5A ^ 0x16) & v513 ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ v515))) >> 4) ^ 3;
  LODWORD(v588) = ((16 * v513) ^ (32 * ((v513 ^ 4) & (2 * ((v513 ^ 0x2C) & (2 * (v513 & 0x65 ^ 0xFFFFFFEC)) ^ v513 & 0x65)) ^ v513 & 0x65 ^ 0xFFFFFFEC)) ^ 0x55555555) << 24;
  LOBYTE(v513) = *(v589 + ((v588 >> 28) ^ 0xB9));
  LOBYTE(v513) = -51 * (((v513 ^ 0xEF) - 86) ^ ((v513 ^ 0xE5) - 92) ^ ((v513 ^ 0xCB) - 114)) + 24;
  LODWORD(v592) = v513 & 0x99 | (~v513 | 0xFFFFFF00) & (v555 & 0xF000000 ^ 0xE295FBBA ^ ((((v34[25] - ((2 * v34[25]) & 0x1DA)) << 16) + 1961689088) ^ 0x844481DC) & (v555 ^ 0x46FFF1FC));
  v593 = STACK[0xDA0];
  v594 = v585;
  v595 = STACK[0xE08];
  LODWORD(v582) = *(v585 + 4 * (v568[27] ^ 0xC0)) ^ v568[27] ^ *(STACK[0xDA0] + 2 * (v568[26] ^ 0xF9)) ^ __ROR4__(*(v579 + 4 * ((((((v568[24] << 24) ^ 0xF53B590A) & ~(v568[25] << 16) | (v568[25] << 16) & 0xC40000) ^ 0x63DD6CC8) >> 16) ^ 0x63)), 7) ^ *(STACK[0xE08] + 4 * ((((((v568[24] << 24) ^ 0xF53B590A) & ~(v568[25] << 16) | (v568[25] << 16) & 0xC40000) ^ 0x63DD6CC8) >> 24) ^ 0x80));
  LODWORD(v592) = v577 ^ v592;
  LOWORD(v577) = *(v584 + ((BYTE1(v577) - 7) ^ 0x98));
  LOWORD(v577) = (((v577 ^ 0xFFEB) - 104) ^ ((v577 ^ 0xFFB8) - 59) ^ ((v577 ^ 0x38) + 69)) + 92;
  LOWORD(v577) = v577 - (-124 - 4 * v577) + 16 * (-124 - 4 * v577);
  LOBYTE(v555) = *(STACK[0xEA8] + (((BYTE3(v592) ^ 0x6D) - 7) ^ 0x67));
  LOBYTE(v513) = (((v555 ^ 0xA6) + 90) ^ ((v555 ^ 0xB1) + 79) ^ ((v555 ^ 0x51) - 81)) + 57;
  LOBYTE(v580) = v513 & 0xF3 ^ 7;
  LOBYTE(v513) = (8 * v555) & 0x10 ^ v513 ^ (2 * ((v513 ^ 0x74) & (2 * ((v513 ^ 0x74) & (2 * ((v513 ^ 0x74) & (2 * ((v513 ^ 0x74) & (2 * ((v513 ^ 0x74) & (2 * (((2 * v513) & 0x6A ^ 6) & v513 ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580));
  LODWORD(v555) = v592;
  LODWORD(v580) = *(v587 + 4 * (v592 ^ 0xD7u));
  v596 = STACK[0xE00];
  LODWORD(v592) = *(STACK[0xE00] + 4 * (BYTE2(v592) ^ 3u));
  LODWORD(v577) = v580 ^ v592 ^ (2 * v592) & 0x5EB42212 ^ (v577 - ((2 * v577) & 0x194) - 14390) ^ *(v572 + 2 * (v577 ^ 0xEDu)) ^ ((v555 ^ 0x4B) - 1222289948) ^ 0x1434652F ^ *(v591 + 4 * ((-59 * (v513 ^ 0x7E)) ^ 0x9Cu));
  v568[24] = BYTE3(v582) ^ 0x39;
  v576[24] = BYTE3(v577) ^ 0x59;
  v568[25] = BYTE2(v582) ^ 0x66;
  v576[25] = BYTE2(v577) ^ 0x7C;
  v568[26] = (BYTE1(v582) ^ 0x6C) + (~(2 * (BYTE1(v582) ^ 0x6C)) | 0xF7) - 123;
  v576[26] = BYTE1(v577) ^ 0x7B;
  v568[27] = v582 ^ 0x34;
  v576[27] = v577 ^ v555 ^ 0x2A;
  LOBYTE(v582) = v576[30] + 92;
  LOBYTE(v577) = v582 & 0x54 ^ 0xD3;
  LOBYTE(v582) = *(v589 + ((v582 ^ (2 * ((v582 ^ 0x36) & (2 * ((v582 ^ 0x36) & (2 * ((v582 ^ 0x36) & (2 * ((v582 ^ 0x36) & (2 * (((2 * (v577 ^ v582 & 0x62)) ^ 0x44) & (v582 ^ 0x36) ^ v577)) ^ v577)) ^ v577)) ^ v577)) ^ v577))) ^ 0xEDu));
  LOBYTE(v577) = ((v568[29] ^ 0xFC) + 4) ^ ((v568[29] ^ 0xC0) + 64) ^ ((v568[29] ^ 0xB8) + 72);
  LOBYTE(v592) = v577 - 26;
  LOBYTE(v577) = ((v577 + 102) & 0xB0 | 0x43) ^ (v577 - 26) & 0x86;
  LOBYTE(v577) = *(v589 + ((v592 ^ (2 * ((v592 ^ 0x30) & (2 * ((v592 ^ 0x30) & (2 * ((v592 ^ 0x30) & (2 * ((v592 ^ 0x30) & (2 * ((v592 ^ 0x30) & (2 * (v592 & (2 * v577) ^ v577)) ^ v577)) ^ v577)) ^ v577)) ^ v577)) ^ v577))) ^ 0x8Fu));
  LODWORD(v585) = (LODWORD(STACK[0xD08]) - 51 * (((v577 ^ 0x21) + 63) ^ ((v577 ^ 0x54) + 76) ^ ((v577 ^ 0xB4) - 84)));
  LODWORD(v577) = ((v568[28] << 24) ^ 0x480F3B42) & ~(v585 << 16) & 0xFF0FFFFF | (v585 >> 4 << 20);
  LODWORD(v585) = (v568[30] << 8) & 0x9800 | (v577 ^ 0xB1BF5C01) & ((v568[30] << 8) ^ 0xFFFFF343);
  LOBYTE(v592) = (((v568[31] ^ 0xE5) + 27) ^ ((v568[31] ^ 0xDA) + 38) ^ ((v568[31] ^ 0xBB) + 69)) - 44;
  LOBYTE(v513) = v592 & 0xED ^ 0x22;
  LOBYTE(v592) = *(v584 + ((v592 ^ (2 * ((v592 ^ 0x28) & (2 * ((v592 ^ 0x28) & (2 * ((v592 ^ 0x28) & (2 * ((v592 ^ 0x28) & (2 * ((v592 ^ 0x28) & (2 * (v592 & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513))) ^ 0x75u));
  LOBYTE(v577) = *(v584 + (((BYTE2(v577) ^ 0xD3) - 7) ^ 0x98));
  LOBYTE(v592) = -14 - 59 * (v592 ^ ((v592 ^ 0xC) - 45) ^ ((v592 ^ 0xC6) + 25) ^ 0x21);
  v597 = STACK[0xDA8];
  LODWORD(v555) = *(STACK[0xDA8] + 2 * (((v585 ^ 0x1A2A) >> 8) ^ 5)) ^ *(v594 + 4 * (v592 ^ 0x57u)) ^ __ROR4__(*(v586 + 4 * ((-59 * (((v577 ^ 0xD1) + 102) ^ ((v577 ^ 0xE3) + 88) ^ ((v577 ^ 0x59) - 18)) - 96) ^ 0x67u)), 7) ^ *(v595 + 4 * (((v585 ^ 0x53491A2A) >> 24) ^ 0x59));
  LODWORD(v585) = *(v590 + 2 * ((-28 - 51 * (((v582 ^ 0x79) + 52) ^ ((v582 ^ 0x1C) + 87) ^ ((v582 ^ 0xA4) - 17))) ^ 0xE2u));
  LODWORD(v582) = (v585 >> 3) | (v585 << 13);
  LODWORD(v584) = v576[31];
  v598 = STACK[0xDC0];
  LODWORD(v513) = *(STACK[0xDC0] + 4 * (v584 ^ 0x56));
  LODWORD(v580) = *(v596 + 4 * (v576[29] ^ 0x45));
  v599 = v576[28];
  LODWORD(v515) = *(v591 + 4 * (v599 ^ 0xD7));
  v568[28] = BYTE3(v555) ^ 0x45;
  LOWORD(v596) = v582 >> 1;
  LODWORD(v563) = v582 ^ v513 ^ v515 ^ v580 ^ 0x67586779 ^ (v582 >> 1) & 0x31AA ^ (2 * (v580 ^ 0x67586779)) & 0x5EB42212;
  v600 = (v563 ^ 0xCCE7F9F3) >> (((((v584 & 0x18 ^ 0xF6) - 94) ^ ((v584 & 0x18) + 88)) ^ ((v584 & 0x18 ^ 0xB4) - 28)) + ((((v584 & 0x18 ^ 0xAE) + 40) ^ ((v584 & 0x18) + 78)) ^ ((v584 & 0x18 ^ 0x54) - 34)) + 22);
  v576[28] = (v600 - ((2 * v600) & 0x94) + 74) ^ 0x4A;
  v568[29] = BYTE2(v555) ^ 0xD1;
  LODWORD(v569) = (v563 ^ 0xCF60692E) >> 16;
  LODWORD(STACK[0xD08]) = v569;
  v576[29] = v569 ^ 0x87;
  v568[(v584 ^ (v584 - ((2 * v584) & 0xF7) + 11)) & 0x1E ^ 0x14] = BYTE1(v555) ^ 0x53;
  LODWORD(v580) = ((LODWORD(STACK[0xD10]) ^ 0x4F050FC2) + 1301906108) ^ ((LODWORD(STACK[0xD10]) ^ 0xFA759099) - 118940191) ^ ((LODWORD(STACK[0xD10]) ^ 0x86B1456B) - 2077374445);
  LODWORD(v600) = LODWORD(STACK[0xE88]) - 554269638;
  LODWORD(STACK[0xD10]) = v600;
  LODWORD(STACK[0xE88]) = v580 + LODWORD(STACK[0xDF0]) + v600 + 1499747301;
  LODWORD(STACK[0xDF0]) = (LODWORD(STACK[0xD38]) ^ 0x3A7BF660 ^ ((v600 & 0x68653673 ^ 0x68653673) + (v600 & 0x68653673) - ((2 * ((v600 & 0x68653673 ^ 0x68653673) + (v600 & 0x68653673))) & 0x115458A0) + 163195984)) - (v600 ^ 0xC262201D);
  LOBYTE(v599) = v599 + 71 + (~(2 * v599) | 0x73);
  v576[30] = ((v563 ^ 0x692E) >> 8) ^ 0x90;
  v568[31] = v592 ^ 0xF2 ^ v555;
  v576[31] = v563 ^ 0xF3;
  LODWORD(v555) = (v596 & 0x22 ^ 2) + (v596 & 0x22 ^ 0x20);
  LOBYTE(v513) = (((v568[35] ^ 0x38) - 56) ^ ((v568[35] ^ 0x18) - 24) ^ ((v568[35] ^ 0xA4) + 92)) + 15;
  LOBYTE(v580) = v513 & 0x5B ^ 0xEA;
  LODWORD(v513) = *(STACK[0xEB8] + ((v513 ^ (2 * ((v513 ^ 6) & (2 * ((v513 ^ 6) & (2 * ((v513 ^ 6) & (2 * ((v513 ^ 6) & (2 * ((v513 ^ 6) & (2 * ((v513 ^ 6) & (2 * v513) & 0xE ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580))) ^ 0xCAu));
  LODWORD(v513) = (((v513 ^ 0xFFFFFFDD) + 35) ^ ((v513 ^ 0x2B) - 43) ^ ((v513 ^ 0xFFFFFFB0) + 80)) - 34;
  LODWORD(v580) = v513 & 0xFFFFFF90 ^ 0xFFFFFFDA;
  LODWORD(v515) = 2 * ((v513 ^ 0x7C) & (2 * v580) ^ v580);
  LODWORD(v515) = 2 * ((2 * (v515 ^ v580 ^ v515 & v513)) ^ v580 ^ (2 * (v515 ^ v580 ^ v515 & v513)) & v513);
  LODWORD(v513) = v513 ^ (2 * ((2 * (v515 ^ v580 ^ v515 & v513)) ^ v580 ^ (2 * (v515 ^ v580 ^ v515 & v513)) & v513));
  LODWORD(v515) = (v568[33] ^ 0x84) << 16;
  v601 = v515 & 0x2B0000 ^ 0x4285BFB2 ^ ((((v568[34] << 8) ^ 0xFFDE7243) & ((v568[32] << 24) ^ 0x7DDEF643) | (v568[34] << 8) & 0x900) ^ 0x740AE8F1) & (v515 ^ 0xFFDFFFFF);
  LODWORD(v513) = 117 - (v513 ^ (v513 >> 4) ^ (v513 >> 1) ^ 0x31);
  LOBYTE(v580) = v513 & 0x7B ^ 0xF8;
  LOBYTE(v513) = v513 ^ (2 * ((v513 ^ 0xA) & (2 * ((v513 ^ 0xA) & (2 * ((v513 ^ 0xA) & (2 * ((v513 ^ 0xA) & (2 * ((v513 ^ 0xA) & (2 * ((v513 ^ 2) & (2 * v513) & 0x16 ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580)) ^ v580));
  v602 = v576[35];
  LODWORD(v584) = ((v602 ^ 0xB3C19607) + 1279158619) ^ ((v602 ^ 0x24DFE4F9) - 618652763) ^ ((v602 ^ 0x971E7248) + 1759612182);
  LOBYTE(v513) = (*(STACK[0xE90] + (v513 ^ 0x5DLL)) ^ v513 ^ 0xF9) - 1;
  v603 = v594;
  LODWORD(v563) = *(STACK[0xDF8] + 4 * BYTE2(v601)) ^ *(v593 + 2 * (((((v568[34] << 8) ^ 0x7243) & 0xF643 | (v568[34] << 8) & 0x900) ^ 0x5743) >> 8)) ^ v513 ^ *(v594 + 4 * (v513 ^ 2u));
  v604 = STACK[0xDD8];
  v605 = STACK[0xEC8];
  LOBYTE(v592) = *(STACK[0xEC8] + ((((v576[33] - ((2 * v576[33]) & 0x28) + 20) ^ 0xE9) + 18) ^ 0xB9));
  LOBYTE(v577) = -14 - 51 * (((v592 ^ 0x7D) - 6) ^ ((v592 ^ 0xEA) + 111) ^ ((v592 ^ 0x56) - 45));
  v606 = v576[32];
  v607 = STACK[0xE10];
  LODWORD(v577) = *(STACK[0xE10] + 4 * (v602 ^ 0x2A)) ^ (v606 - ((2 * v606) & 0xFFFFFFC3) + 1223906017) ^ (v584 - 1222289928) ^ (v584 + 1141010039) ^ (((v584 + 1141010039) ^ 0x5F2BA29F) - 455724284) ^ (((v584 + 1141010039) ^ 0xCB53B9AF) + 1890461748) ^ (((v584 + 1141010039) ^ 0x2FA5EAAC) - 1806140623) ^ (((v584 + 1141010039) ^ 0xFFDF9FFF) + 1143082596) ^ *(STACK[0xE70] + 4 * (v577 ^ 0xAEu)) ^ *(STACK[0xE28] + 4 * (v606 ^ 0x6E)) ^ v577 ^ *(STACK[0xDD8] + 2 * (v576[v555] ^ 0xBu)) ^ (v576[v555] - ((2 * v576[v555]) & 0x98) + 15692);
  LODWORD(v555) = v563 ^ *(v595 + ((v601 >> 22) & 0x3FC));
  LODWORD(v601) = v563 & 0x9BED140A ^ 0x1B48040A;
  LODWORD(v577) = v577 ^ (v601 + (v563 & 0x9BED140A ^ 0x80A51000));
  v568[32] = BYTE3(v555) ^ 0xC3;
  v576[32] = BYTE3(v577) ^ 0xBE;
  v568[33] = BYTE2(v555) ^ 0x97;
  v576[33] = BYTE2(v577) ^ 0x37;
  v568[34] = BYTE1(v555) ^ 0x4B;
  v576[34] = BYTE1(v577) ^ 0x1F;
  v568[35] = v555 ^ 0xE5;
  v576[35] = v577 ^ 0xE3;
  LODWORD(v606) = (v568[37] ^ 0x84) << 16;
  v608 = v576[37];
  v609 = ((v608 - ((2 * v608) & 0xBC)) << 16) + 0x53341A65DE5E0000;
  v610 = (v609 ^ 0xACCBE59A2181F0CALL) & ((((v576[36] - ((2 * v576[36]) & 0x14C)) << 24) + 0x9E09486A6000000) ^ 0x33C349C3BF93F0CALL) ^ v609 & 0x41140220C66C0000;
  LOBYTE(v513) = (((v568[39] ^ 0x92) + 110) ^ ((v568[39] ^ 0xDE) + 34) ^ ((v568[39] ^ 0xC8) + 56)) - 95;
  LOBYTE(v609) = v513 & 0xE ^ 0x39;
  LOBYTE(v513) = *(STACK[0xE80] + (v601 & 0xFF8) + (v601 & 0xFF8 ^ 0x548) + ((v513 ^ (2 * ((v513 ^ 0x5C) & (2 * ((v513 ^ 0x5C) & (2 * ((v513 ^ 0x5C) & (2 * ((v513 ^ 0x5C) & (2 * ((v513 ^ 0x5C) & (2 * (v609 ^ v513 & 0x12)) ^ v609)) ^ v609)) ^ v609)) ^ v609)) ^ v609))) ^ 0x69u));
  LOBYTE(v609) = ((v513 ^ 0x13) - 19) ^ ((v513 ^ 0x25) - 37) ^ ((v513 ^ 0x70) - 112);
  LOBYTE(v601) = (v609 + 112) & 0xBE;
  LOBYTE(v515) = ((v609 + 112) ^ 0x3C) & (2 * (((v609 + 112) ^ 0x3C) & (2 * (((v609 + 112) ^ 0x3C) & (2 * (((v609 + 112) ^ 0x3C) & (2 * (((v609 + 112) ^ 0x3C) & (2 * v601) ^ v601)) ^ v601)) ^ v601)) ^ v601)) ^ (v601 | 0x40);
  v611 = v576[39];
  LOBYTE(v513) = (8 * (v513 & 3)) ^ ((8 * (v513 & 1)) | 3) ^ (v609 - 16) ^ (2 * v515);
  LODWORD(v609) = (v555 ^ 0x8638A963) & (v555 ^ 0x6F12FF67) ^ v555 & 0x14148859;
  v612 = (((v568[36] << 24) ^ 0xAC4FA022) & ~v606 | v606 & 0xB00000) ^ 0xA8DD24A6;
  v613 = STACK[0xE18];
  LODWORD(v599) = *(v597 + 2 * (v568[38] ^ 0xADLL)) ^ *(STACK[0xED0] + 4 * ((-59 * (v513 ^ 0x30)) ^ 0xB3u) + 95576) ^ __ROR4__(*(STACK[0xE18] + 4 * BYTE2(v612)), 7) ^ *(v595 + ((v612 >> 22) & 0x3FC)) ^ v609 & 0x10344018 ^ (v609 ^ 0x10C4218) & (v599 & 0x40 ^ 0xCC4CCE41 ^ (v599 & 0x51 | 0xC9400408) & (v599 & 0x51 ^ 0xE9704F19));
  LODWORD(v612) = ((v611 ^ 0xC711ACC3) + 955143151) ^ ((v611 ^ 0x398C78A2) - 965507184) ^ ((v611 ^ 0xFE9DD4C4) + 23210986);
  v614 = STACK[0xE00];
  LODWORD(v608) = *(STACK[0xE00] + 4 * v608) ^ 0x4E7204E5;
  LODWORD(v608) = (2 * v608) & 0x5EB42212 ^ v608;
  LODWORD(v555) = ((v610 & 0x6040 ^ 0xDFFB ^ (v610 ^ 0xF35) & ((v611 - ((2 * v611) & 0x82) + 2369) & 0x8AB ^ 0xA1EE ^ ((v611 - ((2 * v611) & 0x82) + 2369) ^ 0xF614) & ((((v576[38] - ((2 * v576[38]) & 0x1AE)) << 8) - 10496) ^ 0xE054))) >> 8);
  LOWORD(v555) = v555 ^ *(v604 + 2 * (v555 ^ 0xFC));
  LODWORD(v608) = (v612 + 1986887595) ^ (v612 - 1222289829) ^ (((v612 + 1986887595) ^ 0x5EBEF7D6) - 684951778) ^ *(v607 + 4 * (v611 ^ 0x39)) ^ (((v612 + 1986887595) ^ 0x781E9500) - 242477620) ^ (((v612 + 1986887595) ^ 0x3B3AE29D) - 1297587625) ^ (((v612 + 1986887595) ^ 0x6BF7FF7F) - 496664651) ^ v608 ^ *(STACK[0xED0] + 4 * (((v608 & 0x4510 ^ 0x4010) + (v608 & 0x4510 ^ 0x500)) & 0xAAAAAAAA ^ 0x2203) + (((v610 & 0xED5FF3126A4D6040 ^ 0x7BB7DFED54FFDFFBLL ^ (v610 ^ 0x84C8209A20200F35) & ((v611 - ((2 * v611) & 0x82) - 0x485AA1B396AAF6BFLL) & 0x10A00000000008ABLL ^ 0x8003D9D38F88A1EELL ^ ((v611 - ((2 * v611) & 0x82) - 0x485AA1B396AAF6BFLL) ^ 0x485AA1B396AAF614) & ((((v576[38] - ((2 * v576[38]) & 0x1AE)) << 8) + 0x7F09AFC380BAD700) ^ 0xFD0A7AFD9A80E054))) >> 22) & 0x3FFFFFFFFFCLL));
  v568[36] = BYTE3(v599) ^ 0xE;
  v576[36] = BYTE3(v608) ^ 0x2A;
  v568[37] = BYTE2(v599) ^ 0xFC;
  v576[37] = BYTE2(v608) ^ 0xFA;
  v568[38] = BYTE1(v599) ^ 0x39;
  v576[38] = ((v608 ^ v555) >> 8) ^ 0x5B;
  v568[39] = v599 ^ 0xDA;
  v576[39] = v608 ^ v555 ^ 0xC2;
  LOBYTE(v599) = ((v568[40] ^ 0x81) + 127) ^ ((v568[40] ^ 0x99) + 103) ^ ((v568[40] ^ 0x9C) + 100);
  LOBYTE(v608) = v599 - 20;
  LOBYTE(v599) = (v599 + 108) & 0x91 | 0xA;
  LOBYTE(v612) = v599 ^ v608 & 0x34;
  v615 = STACK[0xEA8];
  LODWORD(v599) = *(STACK[0xEA8] + ((v608 ^ (2 * ((v608 ^ 0x10) & (2 * ((v608 ^ 0x10) & (2 * ((v608 ^ 0x10) & (2 * ((v608 ^ 0x10) & (2 * (v608 & (2 * (v608 & (2 * v599) ^ v612)) ^ v612)) ^ v612)) ^ v612)) ^ v612)) ^ v612))) ^ 0xC2u));
  LODWORD(v608) = (((v599 ^ 0xFFFFFF87) + 121) ^ ((v599 ^ 0x27) - 39) ^ ((v599 ^ 0xFFFFFFE6) + 26)) - 91;
  LODWORD(v608) = (8 * v599) & 0x10 ^ v608 ^ (2 * ((v608 ^ 8) & (2 * ((v608 ^ 8) & (2 * ((v608 ^ 8) & (2 * (((2 * (((2 * (((2 * v608) & 0x16 | 9) & v608)) | 9) & v608)) ^ 0x14) & (v608 ^ 8) ^ v608 & 0x1D ^ 0x4A)) ^ v608 & 0x1D ^ 0x4A)) ^ v608 & 0x1D ^ 0x4A)) ^ v608 & 0x1D ^ 0x4A));
  LODWORD(v599) = (v576[40] >> 4) | (16 * v576[40]);
  LOBYTE(v513) = -5 * (((v568[43] ^ 0xB8) + 72) ^ ((v568[43] ^ 0x11) - 17) ^ ((v568[43] ^ 0x2D) - 45)) - 36;
  LOBYTE(v555) = (v513 & 0x90 | 0x44) ^ v513 & 0x88;
  LODWORD(v599) = (-81 * (*(STACK[0xEB0] + ((v599 - ((2 * v599) & 0xFC) - 2) ^ 0x6DLL)) ^ (v599 - ((2 * v599) & 0xFC) - 2) ^ 0xFC)) << 24;
  LODWORD(v513) = *(STACK[0xEA0] + ((v513 ^ (2 * ((v513 ^ 0x10) & (2 * ((v513 ^ 0x10) & (2 * ((v513 ^ 0x10) & (2 * ((v513 ^ 0x10) & (2 * ((v513 ^ 0x10) & (2 * v555) ^ v555)) ^ v555)) ^ v555)) ^ v555)) ^ v555))) ^ 0xB7u));
  LODWORD(v612) = v599 & 0x63000000 ^ 0x53574F5A ^ ((((v576[41] - ((2 * v576[41]) & 0x15E)) << 16) - 844169216) ^ 0x51C387F7) & (v599 ^ 0xFFFFEFFF);
  v616 = v576[42];
  LODWORD(v555) = ((v616 - ((2 * v616) & 0x1F4)) << 8) + 1471347200;
  LODWORD(v612) = (v555 ^ 0xA84D00AD) & v612 ^ v555 & 0x10843700;
  LOBYTE(v555) = v576[43] + 65;
  LOBYTE(v609) = (v555 & 0xD1 | 0x22) ^ v555 & 0xC4;
  LOBYTE(v555) = *(v605 + ((v555 ^ (2 * ((v555 ^ 0x50) & (2 * ((v555 ^ 0x50) & (2 * ((v555 ^ 0x50) & (2 * ((v555 ^ 0x50) & (2 * ((v555 ^ 0x50) & (2 * ((v555 ^ 0x50) & (2 * v609) ^ v609)) ^ v609)) ^ v609)) ^ v609)) ^ v609)) ^ v609))) ^ 0xACu));
  v617 = ((-989855744 * (v608 ^ 0x90)) & 0x18000000 | ((((v568[42] << 8) ^ 0x8C432B41) & ((v568[41] << 16) ^ 0xECF3FF49) | (v568[41] << 16) & 0xBC0000) ^ 0x6B9691C1) & ~(-989855744 * (v608 ^ 0x90))) ^ 0x63C1EB04;
  LOBYTE(v608) = (((v513 >> 2) | (v513 << 6)) ^ (2 * ((v513 >> 2) | (v513 << 6))) & 0xE4 ^ 0x38) - 1;
  v618 = STACK[0xD98];
  LODWORD(v513) = *(v597 + 2 * BYTE1(v617)) ^ *(v603 + 4 * (v608 ^ 0x95u)) ^ __ROR4__(*(v613 + 4 * BYTE2(v617)), 7) ^ *(STACK[0xD98] + ((v617 >> 22) & 0x3FC));
  v619 = v604;
  LODWORD(v617) = *(v604 + 2 * (v616 ^ 0x43)) ^ (v616 - ((2 * v616) & 0xF2) - 32391) ^ *(STACK[0xE20] + 4 * (BYTE3(v612) ^ 0xD4));
  LODWORD(v612) = *(v614 + 4 * (BYTE2(v612) ^ 0x20)) ^ 0x748CB58C;
  LODWORD(v612) = v617 ^ v612 ^ (2 * v612) & 0x5EB42212 ^ *(v598 + 4 * ((-51 * (((v555 ^ 0x77) + 37) ^ ((v555 ^ 0x2E) + 126) ^ ((v555 ^ 0x98) - 52)) + 73) ^ 0x2Fu));
  v568[40] = BYTE3(v513) ^ 0x92;
  v576[40] = BYTE3(v612) ^ 0x17;
  v568[41] = BYTE2(v513) ^ 0x37;
  v576[41] = BYTE2(v612) ^ 0x75;
  v568[42] = BYTE1(v513) ^ 0x96;
  v576[42] = BYTE1(v612) ^ 0x20;
  v568[43] = v608 ^ v513 ^ 0x1F;
  v576[43] = v612 ^ 0x3C;
  LODWORD(v610) = WORD1(v612) & 0x24 ^ 0x90803D3E ^ (WORD1(v612) & 0x2C ^ 0x90803D1A) & (WORD1(v612) | 0x90803D12);
  LOBYTE(v608) = v616 & 0x10;
  LOBYTE(v612) = v616 & 0x10 ^ 0x10;
  LODWORD(v616) = ((v576[45] - ((2 * v576[45]) & 0x152) - 865778775) ^ 0xCC6543A9) << ((v612 ^ v616) & 0x10);
  LODWORD(v555) = ((v576[46] - ((2 * v576[46]) & 0xE8)) << 8) - 2011991040;
  LODWORD(v555) = v555 & 0xAFF1400 ^ v616 ^ (v555 ^ 0x77008B03) & ((((v576[44] - ((2 * v576[44]) & 0xFF9F)) << 24) - 822083584) ^ 0xA00EB03);
  LOBYTE(v617) = v568[47];
  v620 = STACK[0xDB8];
  LODWORD(v563) = *(v593 + 2 * (v568[46] ^ 3)) ^ *(STACK[0xDB8] + 4 * (v617 ^ 0x1Fu));
  LODWORD(v513) = v568[45];
  LODWORD(v515) = *(v613 + 4 * (v513 ^ 0xAD));
  LOBYTE(v617) = (v617 & 0xAE ^ 0x2A) + (v617 & 0xAE ^ ((v617 & 0xAE) + 91) ^ ((v617 & 0xAE ^ 0x8E) - 43) ^ 0x5B) + 87;
  LOBYTE(v611) = v617 & 0xD8 ^ 0x8B;
  STACK[0xD38] = 11;
  LOBYTE(v611) = v616 ^ v576[47] ^ v617 ^ (2 * ((v617 ^ 0x4A) & (2 * ((v617 ^ 0x4A) & (2 * ((v617 ^ 0x4A) & (2 * ((v617 ^ 0x4A) & (2 * (((2 * (v611 ^ v617 & 0x12)) ^ 4) & (v617 ^ 0xA) ^ v611)) ^ v611)) ^ v611)) ^ v611)) ^ v611));
  LODWORD(v513) = *(v618 + 4 * (v568[v610] ^ 0xC3)) ^ (v515 >> 7) ^ v563 ^ (v515 << (~(v513 & (v513 ^ 0x18)) & 8) << ((v513 & (v513 ^ 0x18) ^ ~(v513 & 1)) & 0x11));
  LOBYTE(v617) = (v563 & 0xE8 ^ 0x20) + (v563 & 0xE8 ^ 0xC8);
  LOBYTE(v515) = *(v615 + (((BYTE1(v555) ^ 0x47) - 7) ^ 0x67));
  LOBYTE(v617) = (((v515 ^ 0xA5) + 91) ^ ((v515 ^ 0x7F) - 127) ^ ((v515 ^ 0x9C) + 100)) + ((((v617 - ((2 * v617) & 0x60) + 48) ^ 0x20) - 32) ^ (((v617 - ((2 * v617) & 0x60) + 48) ^ 0x35) - 53) ^ (((v617 - ((2 * v617) & 0x60) + 48) ^ 0x25) - 37)) + 125;
  LOBYTE(v610) = v617 & 0xB3 ^ 0x6D;
  v621 = STACK[0xDE0];
  LODWORD(v617) = *(STACK[0xDE0] + 2 * ((-59 * ((8 * v515) & 0x10 ^ v617 ^ (2 * ((v617 ^ 0x78) & (2 * ((v617 ^ 0x78) & (2 * ((v617 ^ 0x78) & (2 * ((v617 ^ 0x78) & (2 * ((v617 ^ 0x78) & (2 * (((2 * v617) & 0x72 ^ 0x4A) & (v617 ^ 0x78) ^ v610)) ^ v610)) ^ v610)) ^ v610)) ^ v610)) ^ v610)) ^ 0x3E)) ^ 0x3Fu));
  LODWORD(v515) = *(v607 + 4 * (v611 ^ 0x44u));
  LODWORD(v610) = *(STACK[0xE70] + 4 * (BYTE2(v616) ^ 0xDCu));
  LODWORD(v555) = BYTE3(v555);
  v622 = STACK[0xE28];
  LODWORD(v563) = *(STACK[0xE28] + 4 * (v555 ^ 0xDD));
  v568[44] = BYTE3(v513) ^ 0x9A;
  LOBYTE(v611) = v611 ^ 0xD8;
  LODWORD(v617) = v610 ^ v563 ^ v515 ^ (v611 - 1222289948) ^ (((v617 >> 3) | (v617 << 13)) >> 1) & 0x31AA ^ ((v617 >> 3) | (v617 << 13));
  v576[44] = BYTE3(v617) ^ 0xEA;
  LODWORD(v578) = WORD1(v513);
  v568[45] = BYTE2(v513) ^ 0x94;
  v576[45] = BYTE2(v617) ^ 0xDF;
  v568[46] = BYTE1(v513) ^ 0xCD;
  v576[46] = BYTE1(v617) ^ 0x29;
  v568[47] = v513 ^ 0x32;
  v576[47] = v611 ^ 0x84 ^ v555 ^ BYTE2(v616) ^ v617;
  LOBYTE(v608) = (((((v612 + v608) | 0x85) ^ 0xAE) + 82) ^ ((((v612 + v608) | 0x85) ^ 0x41) - 65) ^ ((((v612 + v608) | 0x85) ^ 0x22) - 34)) + v576[49] - 80;
  LOBYTE(v612) = v608 & 0xE ^ 0x68;
  LOBYTE(v608) = *(v615 + ((v608 ^ (2 * ((v608 ^ 0x3C) & (2 * ((v608 ^ 0x3C) & (2 * ((v608 ^ 0x3C) & (2 * ((v608 ^ 0x3C) & (2 * ((v608 ^ 0x3C) & (2 * v612) ^ v612)) ^ v612)) ^ v612)) ^ v612)) ^ v612))) ^ 0x69u));
  LOBYTE(v612) = (((v608 ^ 0xE5) + 27) ^ ((v608 ^ 0x73) - 115) ^ ((v608 ^ 0xD0) + 48)) + 107;
  LOBYTE(v513) = (v612 & 0xC3 | 0x38) ^ v612 & 0xF0;
  LOBYTE(v612) = (8 * v608) & 0x9F ^ ((8 * v608) & 0x89 | 6) ^ v612 ^ (2 * ((v612 ^ 0x42) & (2 * ((v612 ^ 0x42) & (2 * ((v612 ^ 0x42) & (2 * ((v612 ^ 0x42) & (2 * ((v612 ^ 0x42) & (2 * ((v612 ^ 0x42) & (2 * v513) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513));
  LODWORD(v513) = (v568[50] ^ 0x84) << ((v578 & 8 ^ 8) + (v578 & 8));
  v623 = v568[51] ^ ((((v568[48] ^ 0xBD) << 24) ^ 0x838F0432) & ((v568[49] << 16) ^ 0xFF4B0432) & 0xFF8FFFFF | (((v568[49] >> 4) & 7) << 20)) ^ 0x60FA9C97 ^ (v513 - ((2 * v513) & 0xB385A650) - 641543384);
  LODWORD(v513) = v576[51] - ((2 * v576[51]) & 0x14A) + 1926048933;
  v624 = STACK[0xDA8];
  LODWORD(v611) = ((-59 * (v612 ^ 0xB8)) << 16) & 0x340000 ^ 0x7BDF1B85 ^ (((-59 * (v612 ^ 0xB8)) << 16) ^ 0xC4FFFFFF) & (v513 & 0x30400636 ^ 0x412CCA05 ^ (v513 ^ 0x8D32D348) & ((((v576[50] - ((2 * v576[50]) & 0x1A4)) << 8) + 1777324544) ^ 0x6148FBC9));
  LOBYTE(v513) = *(STACK[0xEB8] + (((v513 & 0x36 ^ 5 ^ (v513 ^ 0x48) & 0xC9 ^ 0x85) + 18) ^ 0x91));
  LOBYTE(v513) = (((v513 ^ 0xF3) + 13) ^ ((v513 ^ 0x86) + 122) ^ ((v513 ^ 0x33) - 51)) - 5;
  LOBYTE(v555) = v513 & 0x97 ^ 0xEC;
  LOBYTE(v513) = v513 ^ (2 * ((v513 ^ 0x5E) & (2 * ((v513 ^ 0x5E) & (2 * ((v513 ^ 0x5E) & (2 * ((v513 ^ 0x5E) & (2 * ((v513 ^ 0x5E) & (2 * ((v513 ^ 0x5E) & (2 * v513) & 0x3E ^ v555)) ^ v555)) ^ v555)) ^ v555)) ^ v555)) ^ v555));
  v625 = v618;
  LODWORD(v623) = *(STACK[0xDA8] + 2 * BYTE1(v623)) ^ *(v620 + 4 * v623) ^ __ROR4__(*(v613 + 4 * BYTE2(v623)), 7) ^ *(v618 + ((v623 >> 22) & 0x3FC));
  LODWORD(v555) = *(v619 + 2 * (BYTE1(v611) ^ 0xFCu));
  LOBYTE(v617) = (v555 & 0x94 ^ 0x10) + (v555 & 0x94 ^ 0x84);
  LOBYTE(v515) = *(STACK[0xEB8] + ((BYTE2(v611) + 18) ^ 0x91));
  LOBYTE(v617) = (((v515 ^ 0x4C) - 76) ^ ((v515 ^ 0xCD) + 51) ^ ((v515 ^ 0xC7) + 57)) + ((((v617 - ((2 * v617) & 0x68) + 116) ^ 0x81) + 127) ^ (((v617 - ((2 * v617) & 0x68) + 116) ^ 0x44) - 68) ^ (((v617 - ((2 * v617) & 0x68) + 116) ^ 0xB1) + 79)) - 17;
  LOBYTE(v515) = v617 & 0x63 ^ 0xDC;
  LOBYTE(v617) = v617 ^ (2 * ((v617 ^ 0x4A) & (2 * ((v617 ^ 0x4A) & (2 * ((v617 ^ 0x4A) & (2 * ((v617 ^ 0x4A) & (2 * ((v617 ^ 0x4A) & (2 * ((v617 ^ 2) & (2 * v617) & 0x16 ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ v515));
  LOBYTE(v513) = -51 * (v513 ^ (v513 >> 4) ^ (v513 >> 1) ^ 0x35);
  v626 = STACK[0xE00];
  LODWORD(v617) = *(STACK[0xE00] + 4 * ((-51 * (v617 ^ (v617 >> 4) ^ (v617 >> 1) ^ 0xB4)) ^ 0xCEu));
  LODWORD(v612) = *(v607 + 4 * (v513 ^ 0xD5u)) ^ (v576[48] - ((2 * v576[48]) & 0x1111) - 517789048) ^ v555 ^ *(v622 + 4 * (v576[48] ^ 0xD2)) ^ v617 ^ BYTE1(v611) ^ (2 * v617) & 0x5EB42212;
  LOBYTE(v513) = v513 ^ 0x49;
  LODWORD(v612) = v612 ^ (v513 - 1222289948);
  v568[48] = BYTE3(v623) ^ 0xD2;
  v576[48] = BYTE3(v612) ^ 0xFE;
  v568[49] = BYTE2(v623) ^ 7;
  v576[49] = BYTE2(v612) ^ 0xF;
  v568[50] = ~BYTE1(v623);
  v576[50] = BYTE1(v612) ^ 0xF8;
  v568[51] = v623 ^ 0x53;
  v576[51] = v513 ^ v612 ^ 0xE0;
  LODWORD(v513) = *(STACK[0xE98] + (((v568[52] >> 4) | (16 * v568[52])) ^ 0xC5));
  LODWORD(v513) = -1962934272 - 1358954496 * (((v513 ^ 0xE8) - 61) ^ ((v513 ^ 0xB3) - 102) ^ ((v513 ^ 0x6B) + 66));
  LODWORD(v513) = (v513 & 0x42000000 | 0x11A112) ^ ((v568[53] << 16) ^ 0xBD4E48ED) & ~v513;
  LODWORD(v555) = ((v576[54] - ((2 * v576[54]) & 0x96)) << 8) - 1140503808;
  v627 = v568[55] & 0xC0 ^ 0xA8F3C1DD ^ (v513 & 0xDBEC4010 ^ 0x7DD68B4C ^ (v513 | 0x1600) & ((v568[54] << 8) ^ 0x24133A63)) & (v568[55] ^ 0xFFFFFF7B);
  v628 = v576[55];
  LODWORD(v623) = ((v576[53] - ((2 * v576[53]) & 0x9C)) << 16) + 877527040;
  LODWORD(v513) = ((v628 - ((2 * v628) & 0xA8) - 481463980) & 0x1A3E ^ 0x12FC9E44 ^ (v555 & 0x8C75D800 ^ 0xDFD94A59 ^ (v555 ^ 0x438A2498) & ((((v576[52] - ((2 * v576[52]) & 0x5C)) << 24) + 771751936) ^ 0x5D8A2798)) & ((v628 - ((2 * v628) & 0xA8) - 481463980) ^ 0x1CB28EAB)) & (v623 ^ 0xCBB1FFFF) ^ v623 & 0xD550000;
  v629 = STACK[0xDF8];
  v630 = v624;
  LODWORD(v623) = *(STACK[0xDF8] + 4 * BYTE2(v627)) ^ *(v620 + 4 * v627) ^ *(v624 + 2 * BYTE1(v627));
  LOBYTE(v555) = (v623 ^ 0x6B) & (v623 ^ 0xFD) ^ v623 & 0x69;
  v631 = v621;
  LODWORD(v555) = *(v621 + 2 * (((v513 ^ 0xF6EEAB91) >> (v555 & 0xEF ^ 0x61) >> (v555 & 0x10)) ^ 0xDCLL));
  LODWORD(v623) = v623 ^ *(v618 + ((v627 >> 22) & 0x3FC));
  LODWORD(v627) = ((v513 >> 12) & 0xF0 ^ 0x2CC962FF) & ((v513 >> 20) & 0xF ^ 0x2CDD62F1);
  v632 = STACK[0xDC0];
  LODWORD(v628) = *(STACK[0xDC0] + 4 * (v628 ^ 0x26));
  v633 = STACK[0xEB0];
  LOBYTE(v627) = *(STACK[0xEB0] + ((v513 >> 20) & 7 ^ 0xC5 ^ (v627 ^ 0x604C) & (v627 ^ 0xAEDD874B))) ^ v627 ^ 0x1D;
  v634 = STACK[0xEC8];
  LOBYTE(v513) = *(STACK[0xEC8] + (((BYTE3(v513) ^ 0xF6) + 18) ^ 0xB9));
  LODWORD(v627) = *(v626 + 4 * ((-81 * v627) ^ 0x49u)) ^ 0x642D9924;
  v635 = STACK[0xE20];
  LODWORD(v628) = (v628 - ((2 * v628) & 0x79F73378) + 1023121852) ^ v627 ^ *(STACK[0xE20] + 4 * ((LODWORD(STACK[0xD20]) - 51 * (((v513 ^ 0xC0) - 71) ^ ((v513 ^ 0x2D) + 86) ^ ((v513 ^ 0x2C) + 85))) ^ 0x9Cu)) ^ (2 * v627) & 0x5EB42212 ^ (((v555 >> 3) | (v555 << 13)) >> 1) & 0x31AA ^ ((v555 >> 3) | (v555 << 13));
  v568[52] = BYTE3(v623) ^ 0x8E;
  v576[52] = ((v628 ^ 0x2A578E3) >> 24) ^ 0x73;
  v568[53] = BYTE2(v623) ^ 0x35;
  v576[53] = ((v628 ^ 0x2A578E3) >> 16) ^ 0x34;
  v568[54] = BYTE1(v623) ^ 0x78;
  v576[54] = ((v628 ^ 0x78E3) >> 8) ^ 0xA7;
  v568[55] = v623 ^ 0x25;
  v576[55] = v628 ^ 0xF3;
  LODWORD(v623) = v568[(BYTE3(v623) & 0x38 ^ 0x30) + (BYTE3(v623) & 0x38 ^ 8)] << 24;
  LOBYTE(v555) = v576[59];
  LODWORD(v628) = ((((v568[57] << 16) ^ 0x42143627) & ~v623 | v623 & 0xBD000000) ^ 0x70DD4D37) & ~(v568[58] << 8) ^ ((v568[58] << 8) & 0x8400 | 0x9320027);
  LOBYTE(v513) = (v555 + 56) & 0x17 ^ 0xAB;
  v636 = STACK[0xEC0];
  LOBYTE(v623) = *(STACK[0xEC0] + (((v555 + 56) ^ (2 * (((v555 + 56) ^ 0x40) & (2 * (((v555 + 56) ^ 0x40) & (2 * (((v555 + 56) ^ 0x40) & (2 * (((v555 + 56) ^ 0x40) & (2 * (((v555 + 56) ^ 0x40) & (2 * (((2 * (v555 & 1)) ^ 0x56) & ((v555 + 56) ^ 0x40) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513))) ^ 0x8Fu));
  LOBYTE(v623) = -53 - 59 * (v623 ^ ((v623 ^ 0xEA) + 50) ^ ((v623 ^ 0xA5) + 127) ^ 0x24);
  LOBYTE(v513) = *(v634 + (((BYTE1(v628) ^ 0xA2) + 18) ^ 0xB9));
  LOBYTE(v616) = *(STACK[0xE80] + (v578 & 0x64A) + (v578 & 0x64A ^ 0x64A) + (((BYTE2(v628) ^ 0xCF) + 18) ^ 0x91));
  LOBYTE(v616) = (((v616 ^ 0x7D) - 125) ^ ((v616 ^ 0x94) + 108) ^ ((v616 ^ 0xAF) + 81)) - 17;
  LOBYTE(v555) = v616 & 0x6F ^ 0x42;
  LOBYTE(v616) = v616 ^ (2 * ((v616 ^ 0x6A) & (2 * ((v616 ^ 0x6A) & (2 * ((v616 ^ 0x6A) & (2 * ((v616 ^ 0x6A) & (2 * ((v616 ^ 0x6A) & (2 * ((v616 ^ 0xC3) & (2 * v616) & 0x56 ^ v555)) ^ v555)) ^ v555)) ^ v555)) ^ v555)) ^ v555));
  v637 = STACK[0xDB0];
  LODWORD(v555) = *(v631 + 2 * (v576[58] ^ 0x6CLL));
  LODWORD(v616) = v568[59] ^ *(STACK[0xDB0] + 4 * (v568[59] ^ 0x81)) ^ *(v630 + 2 * ((79 - 51 * (((v513 ^ 0xFE) + 76) ^ ((v513 ^ 0x41) - 11) ^ ((v513 ^ 0x7E) - 52))) ^ 0x97u)) ^ *(v625 + 4 * (BYTE3(v628) ^ 0x8ELL)) ^ *(v629 + 4 * ((-51 * (v616 ^ (v616 >> 4) ^ (v616 >> 1) ^ 0xBE)) ^ 0x26u));
  LOBYTE(v513) = v576[57] + 99;
  LOBYTE(v627) = v513 & 0xD6 | 0x20;
  LOBYTE(v513) = *(STACK[0xEA8] + ((v513 ^ (2 * ((v513 ^ 0x14) & (2 * ((v513 ^ 0x14) & (2 * ((v513 ^ 0x14) & (2 * ((v513 ^ 0x14) & (2 * ((v513 ^ 0x14) & (2 * v627) ^ v627)) ^ v627)) ^ v627)) ^ v627)) ^ v627))) ^ 0xB1u));
  LOWORD(v555) = (((v555 >> 3) | (v555 << 13)) >> 1) & 0x31AA ^ ((v555 >> 3) | (v555 << 13));
  LOBYTE(v627) = (((v513 ^ 0xD4) + 44) ^ ((v513 ^ 0x28) - 40) ^ ((v513 ^ 0xBA) + 70)) + 114;
  LOBYTE(v515) = v627 & 0x92 ^ 0xBB;
  LOBYTE(v513) = -59 * ((8 * v513) & 0x10 ^ v627 ^ (2 * ((v627 ^ 0x3C) & (2 * ((v627 ^ 0x3C) & (2 * ((v627 ^ 0x3C) & (2 * ((v627 ^ 0x3C) & (2 * ((v627 ^ 0x3C) & (2 * ((v627 ^ 0x3C) & 0x2E ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ v515)) ^ 0x1F);
  LODWORD(v628) = *(v632 + 4 * (v623 ^ 0x7Bu)) ^ (v576[56] - ((2 * v576[56]) & 0xD4) - 1005919382) ^ *(STACK[0xE28] + 4 * (v576[56] ^ 0x44)) ^ *(STACK[0xE70] + 4 * (v513 ^ 0xCAu));
  LODWORD(v627) = v555 ^ 0xA23C ^ v628;
  LODWORD(v513) = v513 ^ v627;
  v568[56] = ((v616 ^ 0x96E9775) >> 24) ^ 0xBC;
  v638 = (v513 ^ 0xF5D91580) >> ((v555 & 0x18 ^ 0x18) + (v555 & 0x18));
  v576[56] = (v638 - ((2 * v638) & 0xD6) + 107) ^ 0x6B;
  v568[57] = ((v616 ^ 0x96E9775) >> 16) ^ 0xA2;
  v576[57] = BYTE2(v628) ^ 0xD9;
  v568[58] = ((v616 ^ 0x9775) >> 8) ^ 0x7A;
  v576[58] = BYTE1(v627) ^ 0x15;
  v568[59] = v616 ^ 0x62;
  v576[59] = v513 ^ 0x80;
  LOBYTE(v628) = 116 - 5 * (((v568[62] ^ 0x85) + 123) ^ ((v568[62] ^ 0xC8) + 56) ^ ((v568[62] ^ 0xC9) + 55));
  LOBYTE(v513) = v628 & 0x62 ^ 0x55;
  LOBYTE(v628) = v628 ^ (2 * ((v628 ^ 0x78) & (2 * ((v628 ^ 0x78) & (2 * ((v628 ^ 0x78) & (2 * ((v628 ^ 0x78) & (2 * ((v628 ^ 0x78) & (2 * (v513 ^ v628 & 0x1A)) ^ v513)) ^ v513)) ^ v513)) ^ v513)) ^ v513));
  LOBYTE(v513) = v628 ^ 0x3E;
  LOBYTE(v628) = 115 - (((v628 & 0x38 ^ 0x18) + (v628 & 0x38 ^ 0x20)) & 0x55);
  LODWORD(v616) = (STACK[0xD08] & 0x6B ^ 0xBE) & (STACK[0xD08] & 0x6B ^ 0xFC) ^ STACK[0xD08] & 0x29 ^ 0xFFFFFFD7;
  LOBYTE(v625) = *(STACK[0xE90] + ((v616 + (~(2 * v616) | 0x47) + 93) ^ v513 ^ 0x4D)) ^ v513 ^ 0xDE;
  LODWORD(v616) = (v576[62] >> 4) | (16 * v576[62]);
  LOBYTE(v638) = (((v568[63] ^ 0x1D) - 29) ^ ((v568[63] ^ 0xDF) + 33) ^ ((v568[63] ^ 0x46) - 70)) - 14;
  LOBYTE(v627) = v638 & 0x5B ^ 0xE8;
  LOBYTE(v638) = *(v636 + ((v638 ^ (2 * ((v638 ^ 0xA) & (2 * ((v638 ^ 0xA) & (2 * ((v638 ^ 0xA) & (2 * ((v638 ^ 0xA) & (2 * ((v638 ^ 0xA) & (2 * ((v638 ^ 2) & (2 * v638) & 0x16 ^ v627)) ^ v627)) ^ v627)) ^ v627)) ^ v627)) ^ v627))) ^ 0xC3u));
  LODWORD(v513) = (-81 * (*(v633 + ((v616 - ((2 * v616) & 0xA8) - 44) ^ 0x47)) ^ (v616 - ((2 * v616) & 0xA8) - 44) ^ 0xD6)) << (((v623 & 0xA ^ 0xAA) + (v623 & 0xA)) & 0xC);
  LODWORD(v515) = (((v576[61] - ((2 * v576[61]) & 0xA0) - 1489514160) ^ 0xA737D150) << (v628 & 0x60 ^ 0x60) << (v628 & 0x90 ^ 0x10)) & 0xC0FFFFFF;
  LOBYTE(v623) = -59 * (((v638 ^ 0xEC) - 39) ^ (v638 + 53) ^ ((v638 ^ 7) + 52)) + 32;
  LODWORD(v628) = *(v637 + 4 * (v623 ^ 0xA3u));
  HIDWORD(v588) = *(STACK[0xE18] + 4 * (v568[61] ^ 0xBALL));
  LODWORD(v588) = HIDWORD(v588);
  LOBYTE(v638) = -89 - 5 * (((v568[60] ^ 0x4B) - 87) ^ ((v568[60] ^ 0x1A) - 6) ^ ((v568[60] ^ 0xA2) + 66));
  LOBYTE(v627) = v638 & 0x9C ^ 0xBB;
  LOBYTE(v638) = v638 ^ (2 * ((v638 ^ 0x2E) & (2 * ((v638 ^ 0x2E) & (2 * ((v638 ^ 0x2E) & (2 * ((v638 ^ 0x2E) & (2 * ((v638 ^ 0x2E) & (2 * ((v638 ^ 0x2E) & 0x32 ^ v627)) ^ v627)) ^ v627)) ^ v627)) ^ v627)) ^ v627));
  LODWORD(v636) = v513 ^ v515 ^ 0x2A4928B0;
  LODWORD(v631) = *(STACK[0xE08] + 4 * (((*(STACK[0xE90] + (v638 ^ 0xBALL)) ^ v638 ^ 0x1E) - 1) ^ 0x1Eu));
  LOWORD(v634) = (BYTE1(v636) | 0xB400) ^ *(STACK[0xDD8] + 2 * (BYTE1(v636) ^ 0xBBu));
  LODWORD(v616) = (v636 ^ (*STACK[0xDE8] - ((2 * *STACK[0xDE8]) & 0xDF) - 17));
  LODWORD(v636) = *(v626 + 4 * (BYTE2(v636) ^ 0x3Eu));
  LODWORD(v637) = v636 ^ *(v635 + 4 * (v576[60] ^ 0x91)) ^ (2 * v636) & 0x5EB42212 ^ ((v616 ^ 0x2B) - 1222289948) ^ *(STACK[0xE10] + 4 * (v616 ^ 0xB7));
  LOWORD(v634) = v636 ^ *(v635 + 4 * (v576[60] ^ 0x91)) ^ (2 * v636) & 0x2212 ^ ((v616 ^ 0x2B) + 21988) ^ *(STACK[0xE10] + 4 * (v616 ^ 0xB7)) ^ v634;
  LOBYTE(v587) = v634 ^ v616;
  LODWORD(v616) = v628 ^ v623 ^ (v631 - ((2 * v631) & 0xE08D41A8) - 263806764) ^ ((v588 >> 7) - 2 * ((v588 >> 7) & 0x1AED5EAD ^ (HIDWORD(v588) >> 7) & 0xD) - 1695719776) ^ *(v630 + 2 * ((v625 - 1) ^ 0x57u));
  v639 = v616 ^ 0x282E9C08;
  v640 = v639 >> ((v587 & 0x10 ^ 0x10) + (v587 & 0x10));
  v568[60] = ((v616 ^ 0x282E9C08) >> 24) ^ 0x84;
  v576[60] = BYTE3(v637) ^ 0x86;
  v568[61] = (v640 - ((2 * v640) & 0x30) + 24) ^ 0x9C;
  v576[61] = BYTE2(v637) ^ 0x92;
  v568[62] = BYTE1(v639) - ((v639 >> 7) & 8) - 124;
  v576[62] = ((BYTE1(v634) ^ 0x2E) - ((2 * (BYTE1(v634) ^ 0x2E)) & 0x5E) - 81) ^ 0xAF;
  v568[63] = (v616 ^ 8) - ((2 * v616) & 8) - 124;
  LODWORD(STACK[0xD10]) = (LODWORD(STACK[0xD28]) ^ 0xC2D55BAD) - (LODWORD(STACK[0xD18]) ^ 0xC262201D);
  return (*(STACK[0xED8] + 8 * SLODWORD(STACK[0xDC8])))();
}

uint64_t sub_1009F6920()
{
  v3 = *(v2 + 8 * v0);
  LODWORD(STACK[0x4F0]) = v1;
  return v3(3951228415, 10, 9375, 4294960332, 35368, 11116);
}

void sub_1009F6988(uint64_t a1)
{
  v2 = (*(a1 + 8) ^ 0xBFBEBDBFFDB6EFFFLL) + 0x404142404B14A614 + ((2 * *(a1 + 8)) & 0x7F7D7B7FFB6DDFFELL);
  v3 = v2 < 0x48CB9613;
  v4 = v2 > *a1 + 1221301779;
  if (*a1 > 0xFFFFFFFFB73469ECLL != v3)
  {
    v4 = v3;
  }

  v1 = *(a1 + 36) ^ (1012831759 * ((-2 - ((a1 | 0x1AB092BF) + (~a1 | 0xE54F6D40))) ^ 0xF5DC7BCA));
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1009F6B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(v367) = STACK[0x2E8];
  v78 = -1018859626 * ((((((v77 ^ 0x7444) - 5935) | 0x812u) - 709034890) ^ LODWORD(STACK[0x2E8])) / 5) + 1609230325;
  v79 = ((v78 ^ 0x4FE2131B) - 269022446) ^ v78 ^ ((v78 ^ 0x56F697B0) - 152858693) ^ ((v78 ^ 0x39018CA5) - 1726704464) ^ ((v78 ^ 0x7FFFEFFB) - 538249230);
  v80 = STACK[0x270];
  v81 = (STACK[0x280] & 0x198A8650 ^ 0x918D4935) / 3 + 912909740;
  LODWORD(v365) = STACK[0x318];
  v82 = *(&off_1010A0B50 + (v77 ^ 0x7444) - 15899) - 1229559899;
  v83 = ((v81 ^ 0x7FE6E6F3) - 959818044) ^ v81 ^ ((v81 ^ 0x51BB9000) - 392749007) ^ ((v81 ^ 0xD731C6E3) + 1847424724) ^ ((v81 ^ 0xBFBFFFDF) + 110317552);
  HIDWORD(v366) = HIDWORD(a47);
  v84 = (((1717986919 * (*&v82[4 * (STACK[0x314] & 0x3F ^ 0x11)] & 0x3CBA9069 ^ 0x7FC6913Du)) >> 32) >> 1) + (((a48 ^ 0xF50F4C76) + 183546762) ^ ((a48 ^ 0xA87D0632) + 1468201422) ^ ((a48 ^ 0xA2F093FB) + 1561291781)) + 929658936;
  LODWORD(a48) = v84 ^ ((v84 ^ 0xD30E6A8C) + 454494987) ^ ((v84 ^ 0x37B33603) - 5613690) ^ ((v84 ^ 0xACA43D49) + 1690131664) ^ ((v84 ^ 0x7FFFFFBF) - 1209622982) ^ 0xC86447C6;
  v85 = STACK[0x388];
  v86 = *(&a59 + (STACK[0x36C] & 0x3F ^ 0x11));
  v87 = *(&a59 + (STACK[0x3EC] & 0x3F ^ 0x11));
  v88 = v79 & 0x3E ^ 0x34;
  v89 = *(&a27 + v88);
  HIDWORD(v367) = a75;
  v90 = (((v89 ^ 0xEA3E7871) + 365004687) ^ ((v89 ^ 0x646C564A) - 1684821578) ^ ((v89 ^ 0x71D0F784) - 1909520260)) + (((a76 ^ 0xFFBA3918) + 4572904) ^ ((a76 ^ 0xEF628926) + 278755034) ^ ((a76 ^ 0xC56589AF) + 983201361)) - 672968015;
  v91 = a37;
  v92 = ((((LODWORD(STACK[0x478]) ^ 0xA87B9650) + 1468295600) ^ ((LODWORD(STACK[0x478]) ^ 0x72026FF2) - 1912762354) ^ ((LODWORD(STACK[0x478]) ^ 0xFC4C033) - 264552499)) - 709019247) * (HIDWORD(a37) & 0x20480600 ^ 0xD8FC77AF ^ (v83 & 0xBA10042D ^ 0xDAA475A2 ^ (HIDWORD(a37) ^ 0x4592DD92) & (v83 ^ 0x46D34FCF)) & (HIDWORD(a37) & 0xE048272C ^ 0xFFB7D9FF)) + 1422431707;
  v93 = ((2 * (v92 & 0xAB376A25)) & 0x50009442 | v92 & 0xAB376A25) ^ (2 * (v92 & 0xAB376A25)) & (v92 ^ 0xFAA7D476);
  v94 = ((2 * (v92 ^ 0xFAA7D476)) ^ 0xA3217CA6) & (v92 ^ 0xFAA7D476) ^ (2 * (v92 ^ 0xFAA7D476)) & 0x5190BE52;
  v95 = v94 ^ 0x50908251;
  v96 = (v94 ^ 0x1003A41) & (4 * v93) ^ v93;
  v97 = ((4 * v95) ^ 0x4642F94C) & v95 ^ (4 * v95) & 0x5190BE50;
  v98 = (v97 ^ 0x4000B840) & (16 * v96) ^ v96;
  v99 = ((16 * (v97 ^ 0x11900613)) ^ 0x190BE530) & (v97 ^ 0x11900613) ^ (16 * (v97 ^ 0x11900613)) & 0x5190BE50;
  v100 = v98 ^ 0x5190BE53 ^ (v99 ^ 0x1100A400) & (v98 << 8);
  a76 = v90 ^ ((v90 ^ 0x71EBAA8B) - 1934136810) ^ ((v90 ^ 0xD0E1B237) + 767390378) ^ ((v90 ^ 0x5C56D1A2) - 1593175747) ^ ((v90 ^ 0xFFFFF67F) + 44250850) ^ 0xD71E06F0;
  LODWORD(STACK[0x280]) = v92 ^ (2 * ((v100 << 16) & 0x51900000 ^ v100 ^ ((v100 << 16) ^ 0x3E530000) & (((v99 ^ 0x40901A43) << 8) & 0x51900000 ^ 0x41000000 ^ (((v99 ^ 0x40901A43) << 8) ^ 0x10BE0000) & (v99 ^ 0x40901A43)))) ^ 0xFD8B2F12;
  HIDWORD(v362) = STACK[0x230];
  LOBYTE(v90) = (((LODWORD(STACK[0x234]) ^ 0xC6) + 58) ^ ((LODWORD(STACK[0x234]) ^ 0x59) - 89) ^ ((LODWORD(STACK[0x234]) ^ 0xE) - 14)) - 63;
  v364 = LODWORD(STACK[0x280]);
  LOBYTE(v92) = (((LODWORD(STACK[0x280]) ^ 0x3C) - 60) ^ ((LODWORD(STACK[0x280]) ^ 0x23) - 35) ^ ((LODWORD(STACK[0x280]) ^ 0x8E) + 114)) - 14;
  v101 = v92 * v90 + 41 * (80 * v92 - 121 * v90);
  v102 = 0x908D4D25 >> ((v86 ^ 1) & 5) >> ((v86 ^ 8) & 0x1A ^ 0x18);
  LOBYTE(v95) = ((v86 ^ 0xAA) + 22) ^ v86 ^ ((v86 ^ 0xB) + 21);
  LODWORD(v362) = STACK[0x238];
  v103 = (v362 & 0xCFB878B2 ^ 0xFA01E8BF) & (v362 & 0x4F2159FC ^ 0xF5F9BF93) ^ v362 & 0x400009D0;
  v104 = (v89 ^ 0xFF82D9BF) / 5;
  v105 = (v103 ^ 0xD9C4B9D7) & (v104 ^ 0xFFFFFDFE) ^ v104 & 0x19829647;
  HIDWORD(v365) = a57;
  v106 = (((HIDWORD(a58) ^ 0x58CB30D0) - 1489711312) ^ ((HIDWORD(a58) ^ 0x87546354) + 2024512684) ^ ((HIDWORD(a58) ^ 0x201D8A3B) - 538806843)) + 184941922 + (((v105 & 0xD1D92659 ^ 0xF9E48929 ^ (v105 ^ 0xE67D69B8) & (v79 ^ 0x8E33C1AC)) & ~((v103 ^ 0x3FB9D06F) & v104) | (v103 ^ 0x3FB9D06F) & v104 & 0x60050CE) ^ 0xC64256CE);
  HIDWORD(a58) = v106 ^ ((v106 ^ 0xEF45EB00) + 456734558) ^ ((v106 ^ 0x72D71F42) - 2035563744) ^ ((v106 ^ 0x29EE091F) - 577579709) ^ ((v106 ^ 0xBFFFDEFF) + 1266877091) ^ 0xF401FA1D;
  v107 = *&v82[4 * (STACK[0x470] & 0x3F ^ 0x11)] ^ 0x8D9973AA;
  LODWORD(v355) = v79;
  v359 = LODWORD(STACK[0x294]);
  v108 = (((LODWORD(STACK[0x2A4]) ^ 0x965730F) - 157643535) ^ ((LODWORD(STACK[0x2A4]) ^ 0xAB2EB975) + 1423001227) ^ ((LODWORD(STACK[0x2A4]) ^ 0x77F6F3EB) - 2012673003)) + 1077914619 + ((v107 & (v79 ^ 0xA015180A) ^ v79 & 0x721BAA15) & 0xEC130E64 ^ 0x33FDF99B ^ (v107 & (v79 ^ 0xA015180A) ^ v79 & 0x721BAA15 ^ 0x1FEEF1DB) & (v79 & 0x2C929048 ^ 0x1F6E71DB));
  v109 = (v108 ^ 0x5798DD7) & (2 * (v108 & 0x957D8D96)) ^ v108 & 0x957D8D96;
  v110 = ((2 * (v108 ^ 0x2FC88DFB)) ^ 0x756A00DA) & (v108 ^ 0x2FC88DFB) ^ (2 * (v108 ^ 0x2FC88DFB)) & 0xBAB5006C;
  v111 = (v110 ^ 0x30200048) & (4 * v109) ^ v109;
  v112 = ((4 * (v110 ^ 0x8A950025)) ^ 0xEAD401B4) & (v110 ^ 0x8A950025) ^ (4 * (v110 ^ 0x8A950025)) & 0xBAB5006C;
  v113 = v111 ^ 0xBAB5006D ^ (v112 ^ 0xAA940020) & (16 * v111);
  v114 = (16 * (v112 ^ 0x10210049)) & 0xBAB50040 ^ 0x10A5002D ^ ((16 * (v112 ^ 0x10210049)) ^ 0xAB5006D0) & (v112 ^ 0x10210049);
  v115 = (v113 << 8) & 0xBAB50000 ^ v113 ^ ((v113 << 8) ^ 0xB5006D00) & v114;
  LODWORD(STACK[0x2A4]) = v108 ^ (2 * ((v115 << 16) & 0x3AB50000 ^ v115 ^ ((v115 << 16) ^ 0x6D0000) & ((v114 << 8) & 0x3AB50000 ^ 0xAB50000 ^ ((v114 << 8) ^ 0x35000000) & v114))) ^ 0x55E0B4DD;
  HIDWORD(v357) = HIDWORD(a45);
  v116 = (((HIDWORD(a44) ^ 0x852CFF0B) + 2060648693) ^ ((HIDWORD(a44) ^ 0xBB262F7A) + 1155125382) ^ ((HIDWORD(a44) ^ 0xC18809CE) + 1048049202)) - 386963544;
  v117 = (v116 ^ 0xE6BB59D7) & (2 * (v116 & 0xC83B5986)) ^ v116 & 0xC83B5986;
  v118 = ((2 * (v116 ^ 0xF69F7BD3)) ^ 0x7D4844AA) & (v116 ^ 0xF69F7BD3) ^ (2 * (v116 ^ 0xF69F7BD3)) & 0x3EA42254;
  v119 = (v118 ^ 0x20000000) & (4 * v117) ^ v117;
  v120 = ((4 * (v118 ^ 0x2A42255)) ^ 0xFA908954) & (v118 ^ 0x2A42255) ^ (4 * (v118 ^ 0x2A42255)) & 0x3EA42254;
  v121 = v119 ^ 0x3EA42255 ^ (v120 ^ 0x3A800040) & (16 * v119);
  v122 = (16 * (v120 ^ 0x4242201)) & 0x3EA42250 ^ 0x14A40205 ^ ((16 * (v120 ^ 0x4242201)) ^ 0xEA422550) & (v120 ^ 0x4242201);
  v123 = (v121 << 8) & 0x3EA42200 ^ v121 ^ ((v121 << 8) ^ 0xA4225500) & v122;
  HIDWORD(a44) = v116 ^ (2 * ((v123 << 16) & 0x3EA40000 ^ v123 ^ ((v123 << 16) ^ 0x22550000) & ((v122 << 8) & 0x3EA40000 ^ 0x1A840000 ^ ((v122 << 8) ^ 0x24220000) & v122))) ^ 0x46B9C493;
  v358 = LODWORD(STACK[0x2D0]);
  HIDWORD(v363) = STACK[0x23C];
  LODWORD(STACK[0x240]) ^= 3 * (*&v82[4 * (STACK[0x2D8] & 0x3F ^ 0x11)] & 0x3CBA9069 ^ 0x3C829029) - 2096903546;
  v124 = STACK[0x33C];
  v125 = *(&a59 + (STACK[0x340] & 0x3F ^ 0x11));
  v126 = (-1869787867 << (15 - v95)) ^ v102;
  v127 = (((v125 ^ 0x422CC7FD) - 1110231037) ^ ((v125 ^ 0x4EA20736) - 1319241526) ^ ((v125 ^ 0xD933F95A) + 650905254)) + (((LODWORD(STACK[0x43C]) ^ 0xBE72F863) + 1099761565) ^ ((LODWORD(STACK[0x43C]) ^ 0x8354D8D6) + 2091591466) ^ ((LODWORD(STACK[0x43C]) ^ 0xE89B1924) + 392488668)) - 445681303;
  v128 = (v127 ^ 0xC74221B2) & (2 * (v127 & 0xC60B01BA)) ^ v127 & 0xC60B01BA;
  v129 = ((2 * (v127 ^ 0x47462296)) ^ 0x29A4658) & (v127 ^ 0x47462296) ^ (2 * (v127 ^ 0x47462296)) & 0x814D232C;
  v130 = (v129 ^ 0x80208) & (4 * v128) ^ v128;
  v131 = ((4 * (v129 ^ 0x81452124)) ^ 0x5348CB0) & (v129 ^ 0x81452124) ^ (4 * (v129 ^ 0x81452124)) & 0x814D2328;
  v132 = (v131 ^ 0x1040020) & (16 * v130) ^ v130;
  v133 = ((16 * (v131 ^ 0x8049230C)) ^ 0x14D232C0) & (v131 ^ 0x8049230C) ^ (16 * (v131 ^ 0x8049230C)) & 0x814D2300;
  v134 = v132 ^ 0x814D232C ^ (v133 ^ 0x402200) & (v132 << 8);
  v135 = v127 ^ (2 * ((v134 << 16) & 0x14D0000 ^ v134 ^ ((v134 << 16) ^ 0x232C0000) & (((v133 ^ 0x810D012C) << 8) & 0x14D0000 ^ 0x4C0000 ^ (((v133 ^ 0x810D012C) << 8) ^ 0x4D230000) & (v133 ^ 0x810D012C)))) ^ 0x13347E73;
  LOBYTE(v134) = STACK[0x3AC];
  v136 = (1327585788 << (15 - (((v134 ^ 5) + 27) ^ ((v134 ^ 0xE) + 18) ^ ((v134 ^ 0x1A) + 6)))) ^ (0x4F2159FCu >> (v134 & 0xF ^ 1) >> (~v134 & 0x10));
  v137 = STACK[0x224];
  v138 = HIDWORD(a54);
  v139 = (((a54 ^ 0xCF5BFAF8) + 816055560) ^ ((a54 ^ 0x99BF78C2) + 1715504958) ^ ((a54 ^ 0xA9665B85) + 1452909691)) - (((v136 & 0x40C01 | (STACK[0x204] & 0x908D4D25 ^ 0x44825) & ~v136) ^ 0x74C655FE) & (v136 & (LODWORD(STACK[0x204]) ^ 0xD5BD3991) ^ 0xF6DF7FFF) ^ (v136 & (LODWORD(STACK[0x204]) ^ 0xD5BD3991) | 0xE44F14DA)) + 1639273370;
  v140 = (v139 ^ 0xD9ED0630) & (2 * (v139 & 0x9DCD8625)) ^ v139 & 0x9DCD8625;
  v141 = ((2 * (v139 ^ 0xC1FC0638)) ^ 0xB863003A) & (v139 ^ 0xC1FC0638) ^ (2 * (v139 ^ 0xC1FC0638)) & 0x5C31801C;
  v142 = (v141 ^ 0x18200018) & (4 * v140) ^ v140;
  v143 = ((4 * (v141 ^ 0x44108005)) ^ 0x70C60074) & (v141 ^ 0x44108005) ^ (4 * (v141 ^ 0x44108005)) & 0x5C31801C;
  v144 = v142 ^ 0x5C31801D ^ (v143 ^ 0x50000010) & (16 * v142);
  v145 = (16 * (v143 ^ 0xC318009)) & 0x5C318010 ^ 0x1C21800D ^ ((16 * (v143 ^ 0xC318009)) ^ 0xC31801D0) & (v143 ^ 0xC318009);
  v146 = (v144 << 8) & 0x5C318000 ^ v144 ^ ((v144 << 8) ^ 0x31801D00) & v145;
  LODWORD(v366) = v126;
  v147 = *(&a27 + (v126 & 0x3F ^ 0x1Au));
  LODWORD(a54) = v139 ^ (2 * ((v146 << 16) & 0x5C310000 ^ v146 ^ ((v146 << 16) ^ 0x1D0000) & ((v145 << 8) & 0x5C310000 ^ 0x4C310000 ^ ((v145 << 8) ^ 0x31800000) & v145))) ^ 0xFA0E5FA0;
  LODWORD(STACK[0x43C]) = v135;
  LODWORD(STACK[0x388]) = v85 ^ 0xDBD3D289;
  LODWORD(v361) = STACK[0x240];
  LODWORD(v357) = STACK[0x350];
  v148 = *&v82[4 * (STACK[0x344] & 0x3F ^ 0x11)];
  LODWORD(v363) = a35;
  v149 = (*(&a59 + v88) ^ 0xD5BD3991) / 5 + ((v148 & 0x80009000 | 0x8040700) ^ (v148 & 0x400105A2 ^ 0xA4FB091D ^ (v148 & 0x4CF50FA3 ^ 0xFF8AF9FF) & (LODWORD(STACK[0x244]) ^ 0x6BC5C73)) & (v148 & 0xB30AF05C ^ 0x4CFD2FE3)) + (((HIDWORD(a36) ^ 0x36FB0AD5) - 922421973) ^ ((HIDWORD(a36) ^ 0x1536BB84) - 355908484) ^ ((HIDWORD(a36) ^ 0xDC4F68EE) + 598775570)) + 1649602805;
  v150 = (v149 ^ 0x9C8FC6AB) & (2 * (v149 & 0x9D2FE8CB)) ^ v149 & 0x9D2FE8CB;
  v151 = ((2 * (v149 ^ 0xB49F86BD)) ^ 0x5360DCEC) & (v149 ^ 0xB49F86BD) ^ (2 * (v149 ^ 0xB49F86BD)) & 0x29B06E76;
  v152 = (v151 ^ 0x1204464) & (4 * v150) ^ v150;
  v153 = ((4 * (v151 ^ 0x28902212)) ^ 0xA6C1B9D8) & (v151 ^ 0x28902212) ^ (4 * (v151 ^ 0x28902212)) & 0x29B06E70;
  v154 = (v153 ^ 0x20802850) & (16 * v152) ^ v152;
  v155 = ((16 * (v153 ^ 0x9304626)) ^ 0x9B06E760) & (v153 ^ 0x9304626) ^ (16 * (v153 ^ 0x9304626)) & 0x29B06E60;
  v156 = v154 ^ 0x29B06E76 ^ (v155 ^ 0x9006600) & (v154 << 8);
  HIDWORD(a36) = v149 ^ (2 * ((v156 << 16) & 0x29B00000 ^ v156 ^ ((v156 << 16) ^ 0x6E760000) & (((v155 ^ 0x20B00816) << 8) & 0x29B00000 ^ 0x9900000 ^ (((v155 ^ 0x20B00816) << 8) ^ 0x306E0000) & (v155 ^ 0x20B00816)))) ^ 0x61ADED98;
  v157 = *(&a59 + (v147 & 0x3F ^ 0x1ALL));
  LOBYTE(v156) = (((v157 ^ 0x35) - 53) ^ ((v157 ^ 0x23) - 35) ^ ((v157 ^ 0x87) + 121)) + 4;
  LOBYTE(v157) = (((v157 ^ 0xB) - 11) ^ ((v157 ^ 0x5E) - 94) ^ ((v157 ^ 0xC4) + 60)) + 110;
  HIDWORD(a51) = *&v82[4 * ((v156 * v157 - (45 * v156 + 35 * v157) + 16 * (45 * v156 + 35 * v157) + 7) & 0x3F)];
  HIDWORD(v361) = STACK[0x2FC];
  v158 = *&v82[4 * (STACK[0x2FC] & 0x3F ^ 0x11)];
  LODWORD(v360) = a40;
  v159 = ((1732666407 << (v101 + 48)) ^ (0x67466427u >> (-48 - v101))) - 1448126950;
  v160 = (v159 ^ 0xF4D9F7C2) & (2 * (v159 & 0xE6DDF70B)) ^ v159 & 0xE6DDF70B;
  v161 = ((2 * (v159 ^ 0x304991D0)) ^ 0xAD28CDB6) & (v159 ^ 0x304991D0) ^ (2 * (v159 ^ 0x304991D0)) & 0xD69466DA;
  v162 = v159 ^ (2 * (((4 * (v161 ^ 0x52942249)) & 0x569466D0 ^ 0x52100240 ^ ((4 * (v161 ^ 0x52942249)) ^ 0x5A519B60) & (v161 ^ 0x52942249)) & (16 * ((v161 ^ 0x84004410) & (4 * v160) ^ v160)) ^ (v161 ^ 0x84004410) & (4 * v160) ^ v160)) ^ 0xAD28CDB6;
  a64 = STACK[0x3B4];
  v163 = *(&a59 + (STACK[0x418] & 0x3F ^ 0x11)) ^ 0xD5BD3991;
  HIDWORD(v355) = a57;
  LODWORD(a37) = v91 ^ (v163 << (~a57 & 0x1B) << (~a57 & 4)) ^ 0x39247D13 ^ ((v163 >> (a57 + 1)) - ((2 * (v163 >> (a57 + 1))) & 0x8DB705D8) - 958692628);
  HIDWORD(a37) ^= v158 ^ 0xFF82D9BF;
  v164 = (HIDWORD(a47) ^ 0xFF82D9BE) & (v80 ^ 0x2438FB0);
  HIDWORD(a20) = v162;
  v165 = v162 & 0x3F ^ 0x3D;
  v166 = (*&v82[4 * v165] ^ 0xBE84E247) & (v80 ^ 0x2A42C66E) ^ v80 & 0x41063BF8;
  v167 = (((HIDWORD(a51) ^ 0x6A4EEEBD) - 1783557821) ^ ((HIDWORD(a51) ^ 0xD7D94996) + 673625706) ^ ((HIDWORD(a51) ^ 0x42157E94) - 1108704916)) + ((((v166 ^ 0xFFFDFD96) & (HIDWORD(a47) & 0xD7FEB620 ^ 0x2B7F1B16 ^ v164) ^ v166 & 0x30274C8) >> 1) ^ 0x7E7FC5BF) + 242891327;
  HIDWORD(a51) = v167 ^ ((v167 ^ 0x81B61AFC) + 1891534212) ^ ((v167 ^ 0xB9618604) + 1214847356) ^ ((v167 ^ 0xC9DE2086) + 953597946) ^ ((v167 ^ 0xFFFEDCFE) + 251020162) ^ 0xF175B93F;
  v168 = STACK[0x2B0];
  v169 = *&v82[4 * (STACK[0x2B8] & 0x3F ^ 0x11)];
  v170 = (((v169 ^ 0x6A657FB0) - 1785036720) ^ ((v169 ^ 0x19138973) - 420710771) ^ ((v169 ^ 0x8CF42F7C) + 1930154116)) + 1302372673;
  v171 = (((v169 ^ 0x5842D2BA) - 1480774330) ^ ((v169 ^ 0x829CB6B8) + 2103658824) ^ ((v169 ^ 0x255CBDBD) - 626834877)) + 1784919053;
  v172 = v170 * v171 - 528237761 * (-1516323326 * v171 + 30427086 * v170);
  v173 = (((LODWORD(STACK[0x468]) ^ 0x33211CED) - 857808109) ^ ((LODWORD(STACK[0x468]) ^ 0x852BA541) + 2060737215) ^ ((LODWORD(STACK[0x468]) ^ 0x63B7803D) - 1672970301)) - 615397064;
  v174 = (((LODWORD(STACK[0x468]) ^ 0x9693DC56) + 1768694698) ^ ((LODWORD(STACK[0x468]) ^ 0xB44F193F) + 1269884609) ^ ((LODWORD(STACK[0x468]) ^ 0xF761FCF8) + 144573192)) + 353667014;
  v175 = v173 * v174 - 1935850507 * (-486127937 * v173 - 757571499 * v174);
  HIDWORD(a13) = STACK[0x234];
  v176 = (((HIDWORD(a13) ^ 0xA473D6C9) + 1535912247) ^ ((HIDWORD(a13) ^ 0x11D8CA88) - 299420296) ^ ((HIDWORD(a13) ^ 0x601625D0) - 1612064208)) - 66582792;
  v177 = (((HIDWORD(a13) ^ 0x6EB94395) - 1857635221) ^ ((HIDWORD(a13) ^ 0x300C95B2) - 806131122) ^ ((HIDWORD(a13) ^ 0x8B08EFB6) + 1962348618)) - 383649500;
  v178 = v176 * v177 - 699627485 * (-1379150289 * v176 - 1534982125 * v177);
  v179 = (((LODWORD(STACK[0x3C8]) ^ 0x20AE3B68) - 548289384) ^ ((LODWORD(STACK[0x3C8]) ^ 0xE44D1737) + 464709833) ^ ((LODWORD(STACK[0x3C8]) ^ 0x115E15CE) - 291378638)) + 210600857;
  v180 = (((LODWORD(STACK[0x3C8]) ^ 0xB143CAE2) + 1320957214) ^ ((LODWORD(STACK[0x3C8]) ^ 0x85618555) + 2057206443) ^ ((LODWORD(STACK[0x3C8]) ^ 0xE19F7626) + 509643226)) + 593440244;
  v181 = -858477727 * (111584701 * v179 - 2085113608 * v180) + v179 * v180;
  v182 = ((v172 - 1900577380) * (v169 ^ 0xFF82D9BF)) & (HIDWORD(a46) ^ 0x7D2640);
  a75 = HIDWORD(v367) ^ 0x160F7561 ^ (v182 & 0xE9F08A9E | (v137 & 0x9A436210 ^ 0x860E5571 ^ (v137 ^ 0xD5BD3991) & (HIDWORD(a46) ^ 0x65C1BBAF)) & ~v182);
  LOBYTE(v137) = a77 & 0x12 ^ 0x8F ^ (v87 & 0xB8 ^ 0x1D ^ (v87 ^ 0x91) & (a77 ^ 0x29)) & (a77 & 0x96 ^ 0xF9);
  v183 = STACK[0x310];
  LOBYTE(v182) = *&v82[4 * (STACK[0x30C] & 0x3F ^ 0x11)];
  v184 = (v147 ^ 0x6F0F949Au) >> (~v182 & 0x17) >> (~v182 & 8);
  v185 = (v147 ^ 0x6F0F949A) << (1 - (((v182 ^ 0xF9) + 7) ^ ((v182 ^ 0xF3) + 13) ^ ((v182 ^ 0x55) + 11)));
  v186 = ((v185 - ((2 * v185) & 0x18B2FA34) + 207191322) ^ v184) & 0x147F3886 ^ 0xBD0B0F87;
  v187 = STACK[0x354];
  v188 = *(&a27 + (STACK[0x358] & 0x3F ^ 0x11));
  HIDWORD(v360) = a64;
  v356 = *&v82[4 * (v124 & 0x3F ^ 0x11)];
  a67 ^= 0xFBD2F7BD ^ (v186 & (v188 & 0xEB80C779 ^ 0x56FF3EF6) | v188 & 0x4280C078);
  v189 = a56;
  v190 = *&v82[4 * (v137 & 0x3F)];
  v191 = (v190 & 0x6660A29A ^ 0xC841F96 ^ (v190 & 0x6F72B2DA ^ 0xFF8FDDBF) & (a56 ^ 0x9E77324)) & (v190 & 0x908D4D25 ^ 0x6F7FB6DA) ^ v190 & 0xC4820;
  v192 = (HIDWORD(a41) ^ 0x7D2640) & (HIDWORD(a44) ^ 0x428BBCF2) ^ HIDWORD(a41) & 0x42F69AB2;
  v193 = (((a41 ^ 0x51D20D86) - 1372720518) ^ ((a41 ^ 0x19D7E4B2) - 433579186) ^ ((a41 ^ 0xB787308B) + 1215876981)) + 778651005 + (v192 & 0x1EC4A235 ^ 0x1E80A035 ^ (v191 & 0x9C3C6C08 ^ 0x793B11C2 ^ (v191 ^ 0xFA81DF2D) & (HIDWORD(a44) ^ 0x63BEB5B7)) & (v192 ^ 0xFF8BFDFF));
  v194 = *(&a59 + (STACK[0x438] & 0x3F ^ 0x11));
  HIDWORD(v367) = v83;
  v195 = a73;
  v196 = (((a74 ^ 0x3FB6A7A2) - 1068935074) ^ ((a74 ^ 0xC1140E5D) + 1055650211) ^ ((a74 ^ 0x2B1F906E) - 723488878)) + 1289315882 + (v194 & 0x121BE13 ^ 0xD0988782 ^ (v194 & 0xD8880084 ^ 0xDACBFAF4 ^ (v194 & 0xD8DA01C4 ^ 0xF7BDFFBB) & (v83 ^ 0xBA5EF553)) & (v194 & 0x2725FE3B ^ 0xFADAC7EE));
  v197 = (v196 ^ 0xECDBCA56) & (2 * (v196 & 0x88E3D367)) ^ v196 & 0x88E3D367;
  v198 = ((2 * (v196 ^ 0xFDDFE85C)) ^ 0xEA787676) & (v196 ^ 0xFDDFE85C) ^ (2 * (v196 ^ 0xFDDFE85C)) & 0x753C3B3A;
  v199 = (v198 ^ 0x60181230) & (4 * v197) ^ v197;
  v200 = ((4 * (v198 ^ 0x15040909)) ^ 0xD4F0ECEC) & (v198 ^ 0x15040909) ^ (4 * (v198 ^ 0x15040909)) & 0x753C3B38;
  v201 = (v200 ^ 0x54302820) & (16 * v199) ^ v199;
  v202 = ((16 * (v200 ^ 0x210C1313)) ^ 0x53C3B3B0) & (v200 ^ 0x210C1313) ^ (16 * (v200 ^ 0x210C1313)) & 0x753C3B30;
  v203 = v201 ^ 0x753C3B3B ^ (v202 ^ 0x51003300) & (v201 << 8);
  a74 = v196 ^ (2 * ((v203 << 16) & 0x753C0000 ^ v203 ^ ((v203 << 16) ^ 0x3B3B0000) & (((v202 ^ 0x243C080B) << 8) & 0x753C0000 ^ 0x41040000 ^ (((v202 ^ 0x243C080B) << 8) ^ 0x3C3B0000) & (v202 ^ 0x243C080B)))) ^ 0xD5569C80;
  a75 ^= v175 + 1447534483;
  v204 = (v178 - 1385182427) * (HIDWORD(a13) ^ 0xD5BD3991);
  v205 = 2 * LODWORD(STACK[0x440]);
  v206 = STACK[0x26C];
  v207 = HIDWORD(a44) ^ 0x32E543BE ^ (((v204 & 0x380D9308 | (v205 ^ 0x2CDA77A3) & ~v204 & 0x3A8D9308) ^ 0x306543BE ^ ((v204 & 0x785FFB7E | (v205 ^ 0x2CDA77A3) & ~v204) ^ 0x87A00481) & (LODWORD(STACK[0x268]) ^ 0xEF30AA99)) & ~(v204 & (v205 ^ 0xAB7A7322)) | v204 & (v205 ^ 0xAB7A7322) & 0xCD1ABC40);
  LODWORD(a41) = v193 ^ ((v193 ^ 0x8A7E56D) - 641830608) ^ ((v193 ^ 0xDB832A3F) + 177913470) ^ ((v193 ^ 0x82395BB0) + 1394659315) ^ ((v193 ^ 0x7FFBFF5F) - 1360893154) ^ 0xD164B202;
  HIDWORD(a44) = v207;
  v208 = STACK[0x31C];
  v209 = *(&a59 + (STACK[0x31C] & 0x3F ^ 0x11));
  v210 = (v181 - 1339801320) & (HIDWORD(v362) ^ 0x2A42C66E) & 0x9E2A29B5 | (v209 & 0x1D3ED582 ^ 0x74E9C7CA ^ (v209 ^ 0xD5BD3991) & (HIDWORD(v362) ^ 0xC883EC13)) & ~((v181 - 1339801320) & (HIDWORD(v362) ^ 0x2A42C66E));
  v211 = STACK[0x328];
  v212 = STACK[0x32C] & 0x3F ^ 0x11;
  v213 = *(&a59 + v212);
  LODWORD(STACK[0x238]) = v362 ^ 0x61D5D64A ^ v210;
  v214 = *(&a27 + v212);
  LODWORD(a51) = v355 ^ 0xA0683E4A;
  v215 = *(&a59 + (STACK[0x404] & 0x3F ^ 0x11));
  v216 = (((*(&a27 + v165) ^ 0x37F87D93) - 939031955) ^ ((*(&a27 + v165) ^ 0x3A0ADABF) - 973789887) ^ ((*(&a27 + v165) ^ 0xF2707E93) + 227508589)) - (((v215 ^ 0x73FCC7D) - 121621629) ^ ((v215 ^ 0x7FB954F5) - 2142852341) ^ ((v215 ^ 0xAD3BA119) + 1388601063)) + 1631944260;
  v217 = (v216 ^ 0xDCE90CCD) & (2 * (v216 & 0xD8E98C0D)) ^ v216 & 0xD8E98C0D;
  LODWORD(v212) = ((2 * (v216 ^ 0xCDA81CD5)) ^ 0x2A8321B0) & (v216 ^ 0xCDA81CD5) ^ (2 * (v216 ^ 0xCDA81CD5)) & 0x154190D8;
  v218 = (v212 ^ 0x10) & (4 * v217) ^ v217;
  LODWORD(v212) = ((4 * (v212 ^ 0x15409048)) ^ 0x55064360) & (v212 ^ 0x15409048) ^ (4 * (v212 ^ 0x15409048)) & 0x154190D8;
  v219 = (v212 ^ 0x15000040) & (16 * v218) ^ v218;
  LODWORD(v212) = ((16 * (v212 ^ 0x419098)) ^ 0x54190D80) & (v212 ^ 0x419098) ^ (16 * (v212 ^ 0x419098)) & 0x154190C0;
  v220 = v219 ^ 0x154190D8 ^ (v212 ^ 0x14010000) & (v219 << 8);
  LODWORD(STACK[0x288]) = v216 ^ (2 * ((v220 << 16) & 0x15410000 ^ v220 ^ ((v220 << 16) ^ 0x10D80000) & (((v212 ^ 0x1409058) << 8) & 0x15410000 ^ 0x14410000 ^ (((v212 ^ 0x1409058) << 8) ^ 0x41900000) & (v212 ^ 0x1409058)))) ^ 0x757942C;
  v221 = (HIDWORD(v355) ^ 0xFF82D9BF) / 3 - (*(&a59 + (STACK[0x450] & 0x3F ^ 0x11)) ^ 0xD5BD3991) / 3 + (((v138 ^ 0xDC9CF9A1) + 593692255) ^ ((v138 ^ 0x9D981357) + 1650977961) ^ ((v138 ^ 0xBE863349) + 1098501303)) + 864478620;
  HIDWORD(a54) = v221 ^ ((v221 ^ 0xA27F041B) + 1770319930) ^ ((v221 ^ 0x5525FBAE) - 1629614195) ^ ((v221 ^ 0x3CB10A95) - 146080072) ^ ((v221 ^ 0xFFEFFEFD) + 873728736) ^ 0xCB86D262;
  v222 = *(&a27 + (STACK[0x3A0] & 0x3F ^ 0x11));
  v223 = (((v222 ^ 0x8C1F6F2ECC39767ALL) + 0x73E090D133C68986) ^ ((v222 ^ 0xFD4E8B6DC065F4F1) + 0x2B174923F9A0B0FLL) ^ ((v222 ^ 0x7151E443F3DE5B34) - 0x7151E443F3DE5B34)) + 0x17741FEA6;
  v224 = v223 > 0x9647D291;
  v225 = 2290649225u * v223 - 0x50264E2BF39D779FLL;
  v226 = STACK[0x224];
  LODWORD(v212) = (((v187 ^ 0x4199295E) - 1100556638) ^ ((v187 ^ 0x9B7C0BF2) + 1686369294) ^ ((v187 ^ 0xF581B3D) - 257432381)) + 910214153 - 3 * (-1971890273 - (((v214 ^ 0xA87105B4) + 1468987980) ^ ((v214 ^ 0x96E7AD79) + 1763201671) ^ ((v214 ^ 0xC1147172) + 1055624846)));
  LODWORD(STACK[0x318]) = v147 & 0xA06072A0 ^ v365 ^ 0xDAFDEB7F ^ ((v213 ^ LODWORD(STACK[0x224])) & (v147 ^ 0x6F0F949A) ^ 0x5A9D895F) & (v147 & 0xB070FBAE ^ 0x6F8F94DB);
  LODWORD(STACK[0x354]) = v212 ^ ((v212 ^ 0x3576169E) - 1442159846) ^ ((v212 ^ 0x752B5A1C) - 363384932) ^ ((v212 ^ 0x5FB13915) - 1060287341) ^ ((v212 ^ 0x7F6FFFEF) - 535590295) ^ 0xB53EB3E9;
  LODWORD(v223) = (((v206 ^ 0x88D7C06D) + 1999126419) ^ ((v206 ^ 0x7FD1997B) - 2144442747) ^ ((v206 ^ 0x22BB6087) - 582705287)) + 179393177;
  v227 = (v223 ^ 0xC05A884E) & (2 * (v223 & 0xE81B026E)) ^ v223 & 0xE81B026E;
  LODWORD(v212) = ((2 * (v223 ^ 0xC07A8C52)) ^ 0x50C31C78) & (v223 ^ 0xC07A8C52) ^ (2 * (v223 ^ 0xC07A8C52)) & 0x28618E3C;
  v228 = (v212 ^ 0x400838) & (4 * v227) ^ v227;
  LODWORD(v212) = ((4 * (v212 ^ 0x28208204)) ^ 0xA18638F0) & (v212 ^ 0x28208204) ^ (4 * (v212 ^ 0x28208204)) & 0x28618E38;
  v229 = (v212 ^ 0x20000820) & (16 * v228) ^ v228;
  LODWORD(v212) = ((16 * (v212 ^ 0x861860C)) ^ 0x8618E3C0) & (v212 ^ 0x861860C) ^ (16 * (v212 ^ 0x861860C)) & 0x28618E00;
  v230 = v229 ^ 0x28618E3C ^ (v212 ^ 0x8200) & (v229 << 8);
  LODWORD(STACK[0x26C]) = v223 ^ (2 * ((v230 << 16) & 0x28610000 ^ v230 ^ ((v230 << 16) ^ 0xE3C0000) & (((v212 ^ 0x28610C3C) << 8) & 0x28610000 ^ 0x8610000 ^ (((v212 ^ 0x28610C3C) << 8) ^ 0x618E0000) & (v212 ^ 0x28610C3C)))) ^ 0x7D252787;
  v231 = *&v82[4 * ((v364 >> 1) & 0x3F ^ 8)];
  LODWORD(v223) = (((LODWORD(STACK[0x3C4]) ^ 0xA8A1265) - 176820837) ^ ((LODWORD(STACK[0x3C4]) ^ 0x5731E441) - 1462887489) ^ ((LODWORD(STACK[0x3C4]) ^ 0x8806CFB5) + 2012819531)) - (((v231 ^ 0x796697FE) - 2036766718) ^ ((v231 ^ 0xA80FF4A7) + 1475349337) ^ ((v231 ^ 0x2EEBBAE6) - 787200742)) - 193424613;
  LODWORD(STACK[0x3C4]) = v223 ^ ((v223 ^ 0x846AEC31) + 1705713800) ^ ((v223 ^ 0x807F991A) + 1639863725) ^ ((v223 ^ 0x6CD2B99F) - 1928104662) ^ ((v223 ^ 0x76F9FFFD) - 1757924532) ^ 0xCB830AD8;
  v232 = v224;
  v233 = ((v225 >> 35) | (v232 << 29)) + 0x20000000;
  v234 = (v233 ^ 0xF2CD1E81) & (2 * (v233 & 0x42091CA5)) ^ v233 & 0x42091CA5;
  v235 = ((2 * (v233 ^ 0xF2DF368B)) ^ 0x61AC545C) & (v233 ^ 0xF2DF368B) ^ (2 * (v233 ^ 0xF2DF368B)) & 0x30D62A2E;
  v236 = (v235 ^ 0x4000C) & (4 * v234) ^ v234;
  v237 = ((4 * (v235 ^ 0x10522A22)) ^ 0xC358A8B8) & (v235 ^ 0x10522A22) ^ (4 * (v235 ^ 0x10522A22)) & 0x30D62A28;
  v238 = (v237 ^ 0x502820) & (16 * v236) ^ v236;
  v239 = ((16 * (v237 ^ 0x30860206)) ^ 0xD62A2E0) & (v237 ^ 0x30860206) ^ (16 * (v237 ^ 0x30860206)) & 0x30D62A20;
  v240 = v238 ^ 0x30D62A2E ^ (v239 ^ 0x422200) & (v238 << 8);
  v241 = v233 ^ (2 * ((v240 << 16) & 0x30D60000 ^ v240 ^ ((v240 << 16) ^ 0x2A2E0000) & (((v239 ^ 0x3094080E) << 8) & 0x30D60000 ^ 0x20D40000 ^ (((v239 ^ 0x3094080E) << 8) ^ 0x562A0000) & (v239 ^ 0x3094080E)))) ^ 0x36147168;
  v242 = STACK[0x260];
  v243 = LODWORD(STACK[0x248]) ^ 0x35BA3A4C;
  LODWORD(STACK[0x204]) = v241;
  LODWORD(STACK[0x248]) = v243;
  v244 = STACK[0x248];
  v245 = STACK[0x27C] & 0xA0FA4852 ^ 0x8DB91B99;
  v246 = (v242 & 0x908D4D25 ^ 0xA5723754) & (v242 & 0x5987B420 ^ 0xF5FDFBDD) ^ v242 & 0x48008020;
  v247 = -1514253966 - v245;
  v248 = v246 & 0x51027D05;
  v249 = (v247 ^ ((v247 ^ 0x56260651) - 12251431) ^ ((v247 ^ 0xA53DBA8E) + 207532552) ^ ((v247 ^ 0xFA78345E) + 1394293976) ^ ((v247 ^ 0x5FFF7FF7) - 157517953) ^ v357 ^ 0x193682A) & (v246 & 0x888D8020 ^ 0x599FFD2F) ^ v246 & 0x80808080;
  v250 = (((v168 ^ 0xFD946587) + 40606329) ^ ((v168 ^ 0xE6A9122B) + 425127381) ^ ((v168 ^ 0xCE804E3D) + 830452163)) + 176153317 + (v249 & 0x481DF921 ^ 0xB3B2A6CF ^ (v249 ^ 0xF3205BC2) & (v248 ^ 0xA2A03ACB));
  LODWORD(STACK[0x2B8]) = 194342988;
  LODWORD(STACK[0x2B0]) = v250 ^ ((v250 ^ 0xF4BA8799) + 1065865523) ^ ((v250 ^ 0x469C3F7B) - 1918801455) ^ ((v250 ^ 0xFA3BEE19) + 822524083) ^ ((v250 ^ 0x7CDFFFAF) - 1209882363) ^ 0xE17F90C5;
  v251 = a70;
  v252 = *&v82[4 * (v359 & 0x3F ^ 0x11)];
  v253 = (((v252 ^ 0x9214F159) + 1844121255) ^ ((v252 ^ 0xD37F3159) + 746639015) ^ ((v252 ^ 0xBEE919BF) + 1092019777)) + (((a72 ^ 0x5302E1AB) - 1392697771) ^ ((a72 ^ 0xB2EF1CF9) + 1292952327) ^ ((a72 ^ 0x3450C4C3) - 877708483)) + 1008355334;
  v254 = v253 ^ ((v253 ^ 0xF396A995) + 1790141149) ^ ((v253 ^ 0xBD21E34D) + 604252165) ^ ((v253 ^ 0x77908190) - 290108710) ^ ((v253 ^ 0x5FFDFFFE) - 958909256) ^ 0xB3670D27;
  LOBYTE(v253) = ((-122 - v245) * (114 - v245) + 4) * (28 - v245);
  v255 = (((v183 ^ 0xA96E0071) + 1452408719) ^ ((v183 ^ 0xD200FFF6) + 771686410) ^ ((v183 ^ 0xAED3C616) + 1361852906)) - ((-209375800 << -(v253 & 0x1F)) ^ (0xF3852DC8 >> v253)) + 879192651;
  v256 = (v255 ^ 0xB811AF64) & (2 * (v255 & 0xA155CF46)) ^ v255 & 0xA155CF46;
  v257 = ((2 * (v255 ^ 0xBA323768)) ^ 0x36CFF05C) & (v255 ^ 0xBA323768) ^ (2 * (v255 ^ 0xBA323768)) & 0x1B67F82E;
  v258 = (v257 ^ 0x2477008) & (4 * v256) ^ v256;
  v259 = ((4 * (v257 ^ 0x9200822)) ^ 0x6D9FE0B8) & (v257 ^ 0x9200822) ^ (4 * (v257 ^ 0x9200822)) & 0x1B67F828;
  v260 = (v259 ^ 0x907E020) & (16 * v258) ^ v258;
  v261 = ((16 * (v259 ^ 0x12601806)) ^ 0xB67F82E0) & (v259 ^ 0x12601806) ^ (16 * (v259 ^ 0x12601806)) & 0x1B67F820;
  v262 = v260 ^ 0x1B67F82E ^ (v261 ^ 0x12678000) & (v260 << 8);
  LODWORD(STACK[0x310]) = v255 ^ (2 * ((v262 << 16) & 0x1B670000 ^ v262 ^ ((v262 << 16) ^ 0x782E0000) & (((v261 ^ 0x900780E) << 8) & 0x1B670000 ^ 0x18070000 ^ (((v261 ^ 0x900780E) << 8) ^ 0x67F80000) & (v261 ^ 0x900780E)))) ^ 0x726B068B;
  v263 = HIDWORD(a44);
  v264 = (HIDWORD(a44) & 0x4F2159FC ^ 0x6BA1E775) & (HIDWORD(a44) & 0xC0540978 ^ 0x6FB7FFBF) ^ HIDWORD(a44) & 0xC0540130;
  v265 = a63;
  v266 = (((a61 ^ 0x5336C6B6) - 1396098742) ^ ((a61 ^ 0xA2352108) + 1573576440) ^ ((a61 ^ 0x24BEDE2F) - 616488495)) - 320040070 + (v264 & 0xC9201894 ^ 0xE90AA414 ^ (v264 ^ 0xDB0A4136) & ((-1190107637 << (BYTE4(v366) + 1)) ^ 0x16D5436B ^ (0xB910660B >> ((BYTE4(v366) ^ 0x9C) & 0xC) >> ((BYTE4(v366) ^ 0x9C) & 0x13 ^ 3))));
  v267 = (v266 ^ 0xC88A0756) & (2 * (v266 & 0xE8D0A618)) ^ v266 & 0xE8D0A618;
  v268 = ((2 * (v266 ^ 0xD98A0746)) ^ 0x62B542BC) & (v266 ^ 0xD98A0746) ^ (2 * (v266 ^ 0xD98A0746)) & 0x315AA15E;
  v269 = (v268 ^ 0x20000000) & (4 * v267) ^ v267;
  v270 = ((4 * (v268 ^ 0x114AA142)) ^ 0xC56A8578) & (v268 ^ 0x114AA142) ^ (4 * (v268 ^ 0x114AA142)) & 0x315AA158;
  v271 = v269 ^ 0x315AA15E ^ (v270 ^ 0x14A8140) & (16 * v269);
  v272 = (16 * (v270 ^ 0x30102006)) & 0x315AA140 ^ 0x2050A01E ^ ((16 * (v270 ^ 0x30102006)) ^ 0x15AA15E0) & (v270 ^ 0x30102006);
  v273 = (v271 << 8) & 0x315AA100 ^ v271 ^ ((v271 << 8) ^ 0x5AA15E00) & v272;
  a72 = v254;
  LODWORD(a61) = v266 ^ (2 * ((v273 << 16) & 0x315A0000 ^ v273 ^ ((v273 << 16) ^ 0x215E0000) & ((v272 << 8) & 0x315A0000 ^ 0x215A0000 ^ ((v272 << 8) ^ 0x5AA10000) & v272))) ^ 0x3D6CDD35;
  LOBYTE(v273) = *(&a27 + (STACK[0x404] & 0x3F ^ 0x11));
  LOBYTE(v273) = (((v367 ^ 0xB) - 11) ^ ((v367 ^ 0xCF) + 49) ^ ((v367 ^ 0x55) - 85)) + (((v273 ^ 0x8C) + 116) ^ ((v273 ^ 0x35) - 53) ^ ((v273 ^ 6) - 6));
  LODWORD(STACK[0x280]) = (((LODWORD(STACK[0x388]) ^ 0xD5BD3991) / 3) << (v273 & 0x1F ^ 0x10)) ^ (((LODWORD(STACK[0x388]) ^ 0xD5BD3991) / 3) >> (16 - v273)) ^ 0xD5BD3991;
  LODWORD(a42) = -1019721258;
  v274 = *&v82[4 * (STACK[0x478] & 0x3F ^ 0x11)];
  v275 = 2143649911 - (((v274 ^ 0xC718F228) + 954666456) ^ ((v274 ^ 0xA63DA320) + 1505909984) ^ ((v274 ^ 0x9EA788B7) + 1633187657));
  v276 = (v275 ^ 0xC9818734) & (2 * (v275 & 0xE98A0439)) ^ v275 & 0xE98A0439;
  v277 = ((2 * (v275 ^ 0xCB958726)) ^ 0x443F063E) & (v275 ^ 0xCB958726) ^ (2 * (v275 ^ 0xCB958726)) & 0x221F831E;
  v278 = (v277 ^ 0x1C001C) & (4 * v276) ^ v276;
  v279 = ((4 * (v277 ^ 0x22008101)) ^ 0x887E0C7C) & (v277 ^ 0x22008101) ^ (4 * (v277 ^ 0x22008101)) & 0x221F831C;
  v280 = (v279 ^ 0x1E001E) & (16 * v278) ^ v278;
  v281 = ((16 * (v279 ^ 0x22018303)) ^ 0x21F831F0) & (v279 ^ 0x22018303) ^ (16 * (v279 ^ 0x22018303)) & 0x221F8310;
  v282 = v280 ^ 0x221F831F ^ (v281 ^ 0x20180100) & (v280 << 8);
  LODWORD(a32) = v275 ^ (2 * ((v282 << 16) & 0x221F0000 ^ v282 ^ ((v282 << 16) ^ 0x31F0000) & (((v281 ^ 0x207820F) << 8) & 0x221F0000 ^ 0x201C0000 ^ (((v281 ^ 0x207820F) << 8) ^ 0x1F830000) & (v281 ^ 0x207820F)))) ^ 0x5609DBB8;
  v283 = v265 ^ 0x1C53B0;
  v284 = *&v82[4 * (v208 & 0x3F ^ 0x11)];
  v285 = (((v244 ^ 0x45872F4E) - 1166487374) ^ ((v244 ^ 0x4A1A2C40) - 1243229248) ^ ((v244 ^ 0xDA203A9F) + 635422049)) + 1204054810 + (v284 & 0x41000024 ^ 0xFFF3BA7F ^ (v284 & 0x4202800 ^ 0x4B30F038 ^ (v284 & 0xC202D00 ^ 0xCF1CDBBC) & v283) & (v284 & 0xC3109024 ^ 0xC3C6F98));
  v286 = (v285 ^ 0xCDF8EE76) & (2 * (v285 & 0x8DF8CE77)) ^ v285 & 0x8DF8CE77;
  v287 = ((2 * (v285 ^ 0xC5196296)) ^ 0x91C359C2) & (v285 ^ 0xC5196296) ^ (2 * (v285 ^ 0xC5196296)) & 0x48E1ACE0;
  v288 = (v287 ^ 0xC108C0) & (4 * v286) ^ v286;
  v289 = ((4 * (v287 ^ 0x4820A421)) ^ 0x2386B384) & (v287 ^ 0x4820A421) ^ (4 * (v287 ^ 0x4820A421)) & 0x48E1ACE0;
  v290 = (v289 ^ 0x80A080) & (16 * v288) ^ v288;
  v291 = ((16 * (v289 ^ 0x48610C61)) ^ 0x8E1ACE10) & (v289 ^ 0x48610C61) ^ (16 * (v289 ^ 0x48610C61)) & 0x48E1ACC0;
  v292 = v290 ^ 0x48E1ACE1 ^ (v291 ^ 0x8008C00) & (v290 << 8);
  LODWORD(STACK[0x248]) = v285 ^ (2 * ((v292 << 16) & 0x48E10000 ^ v292 ^ ((v292 << 16) ^ 0x2CE10000) & (((v291 ^ 0x40E120E1) << 8) & 0x48E10000 ^ 0x8410000 ^ (((v291 ^ 0x40E120E1) << 8) ^ 0x61AC0000) & (v291 ^ 0x40E120E1)))) ^ 0xD844AE24;
  v293 = *(&a59 + (v211 & 0x3F ^ 0x11));
  v294 = *&v82[4 * (STACK[0x418] & 0x3F ^ 0x11)] ^ 0xBFu;
  v295 = (((v293 >> 1) ^ 0x6ADE9CC8) * ((v293 >> 1) ^ 0x6ADE9CC8) * ((v293 >> 1) ^ 0x6ADE9CC8)) ^ v251;
  v296 = (((v361 ^ 0x796E1E88) - 2037259912) ^ ((v361 ^ 0xB1FDBD54) + 1308770988) ^ ((v361 ^ 0x1D2E9A4D) - 489593421)) - 1511320528;
  v297 = (v296 ^ 0xE3089CBD) & (2 * (v296 & 0xEA2A90B9)) ^ v296 & 0xEA2A90B9;
  v298 = ((2 * (v296 ^ 0xB74D9CCF)) ^ 0xBACE18EC) & (v296 ^ 0xB74D9CCF) ^ (2 * (v296 ^ 0xB74D9CCF)) & 0x5D670C76;
  v299 = (v298 ^ 0x18460064) & (4 * v297) ^ v297;
  v300 = ((4 * (v298 ^ 0x45210412)) ^ 0x759C31D8) & (v298 ^ 0x45210412) ^ (4 * (v298 ^ 0x45210412)) & 0x5D670C70;
  v301 = (v300 ^ 0x55040050) & (16 * v299) ^ v299;
  v302 = ((16 * (v300 ^ 0x8630C26)) ^ 0xD670C760) & (v300 ^ 0x8630C26) ^ (16 * (v300 ^ 0x8630C26)) & 0x5D670C60;
  v303 = v301 ^ 0x5D670C76 ^ (v302 ^ 0x54600400) & (v301 << 8);
  a70 = v295;
  LODWORD(STACK[0x240]) = v296 ^ (2 * ((v303 << 16) & 0x5D670000 ^ v303 ^ ((v303 << 16) ^ 0xC760000) & (((v302 ^ 0x9070816) << 8) & 0x5D670000 ^ 0x18630000 ^ (((v302 ^ 0x9070816) << 8) ^ 0x670C0000) & (v302 ^ 0x9070816)))) ^ 0x9D95B1C4;
  v304 = v356 & 0x39 ^ 0x12;
  v305 = (((v360 ^ 0x77BAEDBB) - 2008739259) ^ ((v360 ^ 0xD70507DD) + 687536163) ^ ((v360 ^ 0x5F3D33D9) - 1597846489)) - (((*&v82[4 * v304] ^ 0xD7471F44) + 683204796) ^ ((*&v82[4 * v304] ^ 0xDA77CFC4) + 629682236) ^ ((*&v82[4 * v304] ^ 0xF2B2093F) + 223213249)) + 735755259;
  v306 = ((2 * (v305 & 0xD4254405)) & 0x20080000 | v305 & 0xD4254405) ^ (2 * (v305 & 0xD4254405)) & (v305 ^ 0xF4A95491);
  v307 = ((2 * (v305 ^ 0xF4A95491)) ^ 0x41182128) & (v305 ^ 0xF4A95491) ^ (2 * (v305 ^ 0xF4A95491)) & 0x208C1094;
  v308 = (v307 ^ 0x80080) & (4 * v306) ^ v306;
  v309 = ((4 * (v307 ^ 0x20841094)) ^ 0x82304250) & (v307 ^ 0x20841094) ^ (4 * (v307 ^ 0x20841094)) & 0x208C1090;
  v310 = (v309 ^ 0x10) & (16 * v308) ^ v308;
  v311 = ((16 * (v309 ^ 0x208C1084)) ^ 0x8C10940) & (v309 ^ 0x208C1084) ^ (16 * (v309 ^ 0x208C1084)) & 0x208C1080;
  v312 = v310 ^ 0x208C1094 ^ (v311 ^ 0x800000) & (v310 << 8);
  LODWORD(a40) = v305 ^ (2 * ((v312 << 16) & 0x208C0000 ^ v312 ^ ((v312 << 16) ^ 0x10940000) & (((v311 ^ 0x200C1094) << 8) & 0x208C0000 ^ 0x208C0000 ^ (((v311 ^ 0x200C1094) << 8) ^ 0xC100000) & (v311 ^ 0x200C1094)))) ^ 0x6BB7BC92;
  v313 = STACK[0x280];
  v314 = (STACK[0x280] & 0x46813282 ^ 0x333EC35F) & (*(&a27 + v304) & 0x313EC15D ^ 0x67BB32CF) | STACK[0x280] & 0x88400C20;
  v315 = *&v82[4 * (STACK[0x3CC] & 0x3F ^ 0x11)];
  v316 = (v314 ^ 0x31B4182) & (v315 & 0x739BC995 ^ 0x805D2602) ^ v315 & 0x22194185;
  v317 = (v314 ^ 0x4B13C891) & (v315 & 0x739BC995 ^ 0x7FA2D9FD) ^ v315 & 0x118A0101;
  v318 = (((v263 ^ 0x27064E7A) - 654724730) ^ ((v263 ^ 0x4E08F730) - 1309210416) ^ ((v263 ^ 0x968C60F5) + 1769185035)) + 2013632979 + (v317 & 0x129A0174 ^ 0x825C2034 ^ (v316 & 0x12126290 ^ 0x7F03BC33 ^ (v316 ^ 0xFFA2FBFD) & (a44 ^ 0xEDB0BB07)) & (v317 ^ 0xE25DEEBE));
  v319 = (v226 ^ 0x2A42C66E) & (HIDWORD(a13) ^ 0xA293D86D) ^ v226 & 0x88D11E03;
  v320 = (v319 ^ 0x8400602) & ((HIDWORD(v361) >> 1) ^ 0x5C1BA471) ^ v319 & 0xC93AC746;
  v321 = (v319 ^ 0x77BFF9FD) & ((HIDWORD(v361) >> 1) ^ 0x422B04B9) ^ v319 & 0x28F59871;
  HIDWORD(a44) = v318 ^ ((v318 ^ 0xD3EB8F0B) + 1419161832) ^ ((v318 ^ 0x7DF6E862) - 91498609) ^ ((v318 ^ 0xE9605985) + 1847420522) ^ ((v318 ^ 0x3FFFFEFF) - 1199390444) ^ 0x870019AC;
  LODWORD(a35) = v363 ^ v321 & 0x2CD42438 ^ 0x73BFDBF7 ^ (v320 & 0xA5F62F31 ^ 0xF6DDF2F6 ^ (v320 ^ 0xF7FFF9FD) & (HIDWORD(v363) ^ 0x704B16A0)) & (v321 ^ 0xDF4A678E);
  LODWORD(v304) = (a42 & 0xEE52A4B4 ^ 0xEE0280B4) + 46167811;
  v322 = ((2 * (v304 & 0xED439D00)) | 0x404) & (v304 ^ 0xEF31B7B8) ^ v304 & 0xED439D00 ^ ((2 * (v304 & 0xED439D00)) & 0x2022800 | 0x80);
  v323 = (2 * (v304 ^ 0xEF31B7B8)) & 0x242087A ^ 0x24A280A ^ ((2 * (v304 ^ 0xEF31B7B8)) ^ 0x4B040B4) & (v304 ^ 0xEF31B7B8);
  v324 = (4 * v322) & 0x25A28F8 ^ v322 ^ ((4 * v322) ^ 0xA08) & v323;
  v325 = (4 * v323) & 0x25A28F8 ^ 0x2120812 ^ ((4 * v323) ^ 0x968A3E8) & v323;
  v326 = (16 * v324) & 0x25A28F0 ^ v324 ^ ((16 * v324) ^ 0xA8A0) & v325;
  v327 = (16 * v325) & 0x25A28E0 ^ 0x258205A ^ ((16 * v325) ^ 0x25A28FA0) & v325;
  v328 = v326 ^ (v326 << 8) & 0x25A2800 ^ ((v326 << 8) ^ 0x222A00) & v327 ^ 0x25822D0;
  v329 = (v328 << 16) ^ 0x28FA0000u;
  LODWORD(STACK[0x314]) = v304 ^ (2 * ((v328 << 16) & 0x25A0000 ^ v328 ^ v329 & ((v327 << 8) & 0x25A0000 ^ 0x520000 ^ ((v327 << 8) ^ 0x5A280000) & v327))) ^ 0x3CD6F727;
  LODWORD(v304) = (((v189 ^ 0x3CE9B6CC) - 1021949644) ^ ((v189 ^ 0xCE9E0CF8) + 828502792) ^ ((v189 ^ 0xDF5638B) - 234185611)) - (((LODWORD(STACK[0x468]) ^ 0xBB64B485) + 1151028091) ^ ((LODWORD(STACK[0x468]) ^ 0x587E2CA8) - 1484663976) ^ ((LODWORD(STACK[0x468]) ^ 0x36A7A1BC) - 916955580)) + 1455610896;
  v330 = (v304 ^ 0x8388B0DD) & (2 * (v304 & 0xD302C41E)) ^ v304 & 0xD302C41E;
  v331 = ((2 * (v304 ^ 0x58938D9)) ^ 0xAD17F98E) & (v304 ^ 0x58938D9) ^ (2 * (v304 ^ 0x58938D9)) & 0xD68BFCC6;
  v332 = (v331 ^ 0x84033080) & (4 * v330) ^ v330;
  v333 = ((4 * (v331 ^ 0x52880441)) ^ 0x5A2FF31C) & (v331 ^ 0x52880441) ^ (4 * (v331 ^ 0x52880441)) & 0xD68BFCC4;
  v334 = (v333 ^ 0x520BF000) & (16 * v332) ^ v332;
  v335 = ((16 * (v333 ^ 0x84800CC3)) ^ 0x68BFCC70) & (v333 ^ 0x84800CC3) ^ (16 * (v333 ^ 0x84800CC3)) & 0xD68BFCC0;
  v336 = v334 ^ 0xD68BFCC7 ^ (v335 ^ 0x408BCC00) & (v334 << 8);
  LODWORD(a56) = v304 ^ (2 * ((v336 << 16) & 0x568B0000 ^ v336 ^ ((v336 << 16) ^ 0x7CC70000) & (((v335 ^ 0x96003087) << 8) & 0x568B0000 ^ 0x54030000 ^ (((v335 ^ 0x96003087) << 8) ^ 0xBFC0000) & (v335 ^ 0x96003087)))) ^ 0x2891E42F;
  LODWORD(v304) = (((HIDWORD(v365) ^ 0x52FDF846) - 1392375878) ^ ((HIDWORD(v365) ^ 0xCE8DBFA3) + 829571165) ^ ((HIDWORD(v365) ^ 0x63F29E5A) - 1676844634)) + (((v195 ^ 0x8DF896A1) + 1913088351) ^ ((v195 ^ 0xB192FD43) + 1315766973) ^ ((v195 ^ 0xE9D75273) + 371764621)) - 507891126;
  v337 = (v304 ^ 0xE3C1E414) & (2 * (v304 & 0xF385E106)) ^ v304 & 0xF385E106;
  v338 = ((2 * (v304 ^ 0xC4CB2418)) ^ 0x6E9D8A3C) & (v304 ^ 0xC4CB2418) ^ (2 * (v304 ^ 0xC4CB2418)) & 0x374EC51E;
  v339 = (v338 ^ 0x60C8018) & (4 * v337) ^ v337;
  v340 = ((4 * (v338 ^ 0x11424502)) ^ 0xDD3B1478) & (v338 ^ 0x11424502) ^ (4 * (v338 ^ 0x11424502)) & 0x374EC518;
  v341 = (v340 ^ 0x150A0400) & (16 * v339) ^ v339;
  v342 = ((16 * (v340 ^ 0x2244C106)) ^ 0x74EC51E0) & (v340 ^ 0x2244C106) ^ (16 * (v340 ^ 0x2244C106)) & 0x374EC500;
  v343 = v341 ^ 0x374EC51E ^ (v342 ^ 0x344C4100) & (v341 << 8);
  LODWORD(v304) = v304 ^ (2 * ((v343 << 16) & 0x374E0000 ^ v343 ^ ((v343 << 16) ^ 0x451E0000) & (((v342 ^ 0x302841E) << 8) & 0x374E0000 ^ 0x310A0000 ^ (((v342 ^ 0x302841E) << 8) ^ 0x4EC50000) & (v342 ^ 0x302841E)))) ^ 0x42B952AB;
  v344 = (((HIDWORD(v360) ^ 0x47CE9329) - 1204720425) ^ ((HIDWORD(v360) ^ 0x348D10D8) - 881660120) ^ ((HIDWORD(v360) ^ 0xA6FEBA60) + 1493255584)) - (((v313 ^ 0xAF2FDFA8) + 1355817048) ^ ((v313 ^ 0x60C4D2AA) - 1623511722) ^ ((v313 ^ 0x1A563493) - 441857171)) + 908737436;
  v345 = (v344 ^ 0xE1D5A741) & (2 * (v344 & 0xC9D5C464)) ^ v344 & 0xC9D5C464;
  v346 = ((2 * (v344 ^ 0x605F2F41)) ^ 0x5315D64A) & (v344 ^ 0x605F2F41) ^ (2 * (v344 ^ 0x605F2F41)) & 0xA98AEB24;
  v347 = (v346 ^ 0x1000200) & (4 * v345) ^ v345;
  v348 = ((4 * (v346 ^ 0xA88A2925)) ^ 0xA62BAC94) & (v346 ^ 0xA88A2925) ^ (4 * (v346 ^ 0xA88A2925)) & 0xA98AEB24;
  v349 = (v348 ^ 0xA00AA800) & (16 * v347) ^ v347;
  v350 = ((16 * (v348 ^ 0x9804321)) ^ 0x98AEB250) & (v348 ^ 0x9804321) ^ (16 * (v348 ^ 0x9804321)) & 0xA98AEB00;
  v351 = v349 ^ 0xA98AEB25 ^ (v350 ^ 0x888AA200) & (v349 << 8);
  v352 = (v351 << 16) ^ 0x6B250000;
  a73 = v304;
  a64 = v344 ^ (2 * ((v351 << 16) & 0x298A0000 ^ v351 ^ v352 & (((v350 ^ 0x21004925) << 8) & 0x298A0000 ^ 0x21000000 ^ (((v350 ^ 0x21004925) << 8) ^ 0xAEB0000) & (v350 ^ 0x21004925)))) ^ 0x1D7D2BBF;
  v353 = *(a25 + 8 * (v77 ^ 0x7444 | (4 * (*a24 == 0))));
  return v353(19, 18, v353, 696909824, v294, v352, v247, v329, v355, v356, v357, v358, a13, v359, v360, v361, v362, v363, v364, a20, v365, v366, v367, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1009FB6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v47 = *(v45 + 8 * (((((a32 - 1521637108) & 0x1AB2F7B8) - 24611) * (BYTE4(a16) & 1)) ^ a32));
  *(v46 - 156) = 371891215;
  return v47(a23, a2, *(v46 - 256), a4, a5, a6, a7, *(v46 - 184), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1009FB880(double a1, __n128 a2)
{
  a2.n128_u16[0] = -2571;
  a2.n128_u8[2] = -11;
  a2.n128_u8[3] = -11;
  a2.n128_u8[4] = -11;
  a2.n128_u8[5] = -11;
  a2.n128_u8[6] = -11;
  a2.n128_u8[7] = -11;
  return (*(v3 + 8 * (v2 + 1904539515)))(xmmword_100F523B0, a2);
}

uint64_t sub_1009FD524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, _DWORD *a26)
{
  v29 = 634647737 * ((~(v28 - 216) & 0x5CD1CBB8 | (v28 - 216) & 0xA32E3440) ^ 0x3147E444);
  *(v28 - 208) = &STACK[0x494];
  *(v28 - 216) = v29 - 1431125373;
  *(v28 - 200) = v27 - v29 + 4732;
  v30 = (*(v26 + 8 * (v27 + 35718)))(v28 - 216);
  return (*(v26 + 8 * ((37066 * (*a26 - 226614841 + (((STACK[0x4D8] & ((34 * (v27 ^ 0x3FC0)) ^ 0x18E9) ^ (v27 + 1713172551)) - 859236498) ^ ((STACK[0x4D8] & ((34 * (v27 ^ 0x3FC0)) ^ 0x18E9)) + 1289140528) ^ ((STACK[0x4D8] & ((34 * (v27 ^ 0x3FC0)) ^ 0x18E9) ^ 0x97984F02) + 1028421550)) + 1655547209 < 0xFFFFFFC0)) ^ v27)))(v30);
}

uint64_t sub_1009FD8CC()
{
  LODWORD(STACK[0x48C]) = v1;
  STACK[0x848] = STACK[0x780];
  v2 = STACK[0x3A8];
  STACK[0x670] = *(STACK[0x3A8] + 8 * v0);
  return (*(v2 + 8 * ((104916 * ((v0 ^ 0xB92010D4) < (v0 ^ 0x1B942B4Fu))) ^ (v0 + 33770))))();
}

uint64_t sub_1009FDCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  LODWORD(STACK[0xD78]) = v6;
  STACK[0xD80] = a6;
  return (*(STACK[0xED8] + 8 * ((((LODWORD(STACK[0xE70]) - 30169) ^ LODWORD(STACK[0xE70]) ^ 0x8A28) * (STACK[0xE20] & 1)) | LODWORD(STACK[0xE70]))))(a1, a2, a3, a4, a5, 142);
}

uint64_t sub_1009FDD8C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *a1 != 0;
  v1 = *(a1 + 12) - 297845113 * ((2 * (a1 & 0x7304DE7B) - a1 - 1929698940) ^ 0xFBC83D1A);
  return (*(*(&off_1010A0B50 + v1 - 12998) + 8 * (((4 * v4) | (v4 << 6)) ^ v1) - 810145054))();
}

void sub_1009FDE20(uint64_t a1)
{
  v1 = *(a1 + 8) - 17902189 * (((a1 | 0x597625D2) - (a1 | 0xA689DA2D) - 1500915155) ^ 0xD73933C2);
  v2 = *(a1 + 16);
  v3 = **a1;
  v7[0] = 0x3EA64EF000000082;
  v7[1] = &v10;
  v8[0] = 0x3EA64EF000000082;
  v8[1] = &v9;
  v4 = 1012831759 * ((((2 * &v11) | 0x542A1524) - &v11 - 706022034) ^ 0x3A861C18);
  LODWORD(v12) = 959188428 - v4;
  HIDWORD(v12) = v4 ^ (v1 + 3120);
  v11 = v3;
  v5 = *(&off_1010A0B50 + (v1 ^ 0x9E13)) - 810145054;
  (*&v5[8 * v1 + 99888])(&v11);
  v14 = v2;
  LODWORD(v13) = (155453101 * ((2 * (&v11 & 0xD869C90) - &v11 - 226925718) ^ 0x145F78A5)) ^ (v1 - 21739);
  v11 = v7;
  v12 = v3;
  (*&v5[8 * (v1 ^ 0x518E)])(&v11);
  HIDWORD(v12) = v1 + 1022166737 * ((~&v11 & 0xEF2CA80F | &v11 & 0x10D357F0) ^ 0x553C499D) - 8899;
  v11 = v7;
  (*&v5[8 * v1 + 100128])(&v11);
  LODWORD(v2) = v12;
  v6 = 193924789 * ((~&v11 & 0xE021ABA6 | &v11 & 0x1FDE5458) ^ 0x569A99C0);
  v12 = v3;
  LODWORD(v11) = v1 - v6 + 4586;
  HIDWORD(v11) = v2 - v6 + 1619470620;
  (*&v5[8 * v1 + 99664])(&v11);
  v11 = v8;
  v13 = v3;
  LODWORD(v12) = v1 - 353670337 * (((&v11 | 0x77E53067) - (&v11 & 0x77E53060)) ^ 0xC3C4C85A) - 27062;
  (*&v5[8 * v1 + 99512])(&v11);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1009FE2DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = a2 + STACK[0x350] * a1 + 8;
  *(v4 - 216) = (v3 + 36190) ^ (634647737 * ((v4 - 216 - 2 * ((v4 - 216) & 0x66B43FC0) - 424394812) ^ 0x8B221038));
  *(v4 - 208) = v5;
  v6 = (*(v2 + 8 * (v3 + 39622)))(v4 - 216);
  return (*(v2 + 8 * ((42209 * (*(v4 - 200) == 0)) ^ v3)))(v6);
}

uint64_t sub_1009FE398(uint64_t a1, int a2, int8x16_t a3, int8x16_t a4)
{
  v9 = (a1 + v6);
  v10 = vaddq_s8(vaddq_s8(*v7, a4), vmvnq_s8(vandq_s8(vaddq_s8(*v7, *v7), a3)));
  *v9 = vaddq_s8(vaddq_s8(v7[-1], a4), vmvnq_s8(vandq_s8(vaddq_s8(v7[-1], v7[-1]), a3)));
  v9[1] = v10;
  return (*(v8 + 8 * (((v5 == 0) * a2) ^ v4)))();
}

uint64_t sub_1009FE428(uint64_t result)
{
  if ((v1 ^ 0xF7F35DF9) + ((2 * v1) & 0xEFE6B0D0) == -135045639)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(result + 12) = v2;
  return result;
}

void sub_1009FE49C(uint64_t a1)
{
  v1 = *(a1 + 4) + 1022166737 * ((-2 - ((a1 | 0x52A92C79) + (~a1 | 0xAD56D386))) ^ 0x17463214);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1009FE614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8 + 13630;
  v10 = (v8 + 936242616) & 0xC832B3FF;
  v11 = (*(a8 + 8 * ((v8 + 13630) ^ 0xFFAC)))(32);
  v12 = STACK[0x5A0];
  STACK[0x738] = v11;
  return (*(v12 + 8 * (((v11 == 0) * (v10 - 41201)) ^ v9)))();
}

uint64_t sub_1009FE6D0(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = veorq_s8(a1, a5);
  v29 = veorq_s8(a2, a5);
  v30 = veorq_s8(a4, a5);
  v31 = veorq_s8(a3, a5);
  v32 = vandq_s8(a3, a6);
  v33 = vandq_s8(a4, a6);
  v34 = vandq_s8(a2, a6);
  v35 = vandq_s8(a1, a6);
  v36 = veorq_s8(vandq_s8(vaddq_s64(v35, v35), veorq_s8(a1, a7)), v35);
  v37 = veorq_s8(vandq_s8(vaddq_s64(v34, v34), veorq_s8(a2, a7)), v34);
  v38 = veorq_s8(vandq_s8(vaddq_s64(v33, v33), veorq_s8(a4, a7)), v33);
  v39 = vaddq_s64(v30, v30);
  v40 = vaddq_s64(v29, v29);
  v41 = vaddq_s64(v28, v28);
  v42 = vaddq_s64(v31, v31);
  v43 = veorq_s8(vandq_s8(veorq_s8(v41, a8), v28), vandq_s8(v41, v19));
  v44 = veorq_s8(vandq_s8(veorq_s8(v40, a8), v29), vandq_s8(v40, v19));
  v45 = veorq_s8(vandq_s8(veorq_s8(v39, a8), v30), vandq_s8(v39, v19));
  v46 = veorq_s8(vandq_s8(veorq_s8(v42, a8), v31), vandq_s8(v42, v19));
  v76.val[1] = veorq_s8(v44, v20);
  v76.val[2] = veorq_s8(v43, v20);
  v47 = veorq_s8(vandq_s8(vaddq_s64(v32, v32), veorq_s8(a3, a7)), v32);
  v48 = veorq_s8(v46, v20);
  v49 = vandq_s8(veorq_s8(v45, v21), vshlq_n_s64(v38, 2uLL));
  v50 = veorq_s8(v45, v20);
  v51 = veorq_s8(vandq_s8(veorq_s8(v46, v21), vshlq_n_s64(v47, 2uLL)), v47);
  v52 = veorq_s8(v49, v38);
  v53 = veorq_s8(vandq_s8(veorq_s8(v44, v21), vshlq_n_s64(v37, 2uLL)), v37);
  v54 = veorq_s8(vandq_s8(veorq_s8(v43, v21), vshlq_n_s64(v36, 2uLL)), v36);
  v55 = vshlq_n_s64(v76.val[2], 2uLL);
  v56 = vshlq_n_s64(v76.val[1], 2uLL);
  v76.val[0] = vshlq_n_s64(v50, 2uLL);
  v76.val[3] = vshlq_n_s64(v48, 2uLL);
  v57 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v55, v19), v23), vandq_s8(veorq_s8(v55, v22), v76.val[2])), vshlq_n_s64(v54, 4uLL)), v54);
  v58 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v56, v19), v23), vandq_s8(veorq_s8(v56, v22), v76.val[1])), vshlq_n_s64(v53, 4uLL)), v53);
  v59 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v76.val[0], v19), v23), vandq_s8(veorq_s8(v76.val[0], v22), v50)), vshlq_n_s64(v52, 4uLL)), v52);
  v60 = veorq_s8(vandq_s8(veorq_s8(veorq_s8(vandq_s8(v76.val[3], v19), v23), vandq_s8(veorq_s8(v76.val[3], v22), v48)), vshlq_n_s64(v51, 4uLL)), v51);
  v61 = veorq_s8(veorq_s8(a3, v24), vaddq_s64(v60, v60));
  v62 = veorq_s8(veorq_s8(a4, v24), vaddq_s64(v59, v59));
  v63 = veorq_s8(veorq_s8(a2, v24), vaddq_s64(v58, v58));
  v64 = veorq_s8(veorq_s8(a1, v24), vaddq_s64(v57, v57));
  v65 = vaddq_s64(a1, v25);
  v66 = v64.i64[1];
  v67 = v65.i64[1];
  v68 = v64.i64[0];
  v69 = vaddq_s64(a4, v25);
  v70 = v65.i64[0];
  v71 = vaddq_s64(a2, v25);
  v76.val[1].i64[0] = v68 * v70;
  v76.val[1].i64[1] = v66 * v67;
  v72 = v62.i64[1] * v69.i64[1];
  v76.val[0].i64[0] = v63.i64[0] * v71.i64[0];
  v73 = v62.i64[0] * v69.i64[0];
  v76.val[0].i64[1] = v63.i64[1] * v71.i64[1];
  v74 = vaddq_s64(a3, v25);
  v76.val[2].i64[0] = v73;
  v76.val[2].i64[1] = v72;
  v76.val[3].i64[0] = v61.i64[0] * v74.i64[0];
  v76.val[3].i64[1] = v61.i64[1] * v74.i64[1];
  *(v15 + ~a15 + a13) = vrev64_s8(*&vqtbl4q_s8(v76, v26));
  return (*(v17 + 8 * (((a14 == 0) * v16) ^ v18)))(vaddq_s64(a1, v27), vaddq_s64(a2, v27), vaddq_s64(a3, v27), vaddq_s64(a4, v27));
}

uint64_t sub_1009FE9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(a8 + 8 * (v8 ^ 0xD52A)))();
  v11 = STACK[0x5A0];
  *(v9 + 24) = 0;
  return (*(v11 + 8 * v8))(v10);
}

uint64_t sub_1009FEBEC()
{
  *(v4 - 136) = v2;
  *(v4 - 120) = v0;
  *(v4 - 128) = (v3 + 32318) ^ (155453101 * (((((v4 - 136) | 0x707C3928) ^ 0xFFFFFFFE) - (~(v4 - 136) | 0x8F83C6D7)) ^ 0x69A5DD18));
  v5 = (*(v1 + 8 * (v3 ^ 0x8DF5)))(v4 - 136);
  return (*(v1 + 8 * v3))(v5);
}

uint64_t sub_1009FED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(v9 + 704) + 24);
  STACK[0x5F0] = v10;
  return (*(a8 + 8 * ((((v8 ^ (v10 == 0)) & 1) * (v8 - 49463)) | v8)))();
}

uint64_t sub_1009FEDAC@<X0>(int a1@<W3>, int a2@<W6>, int a3@<W8>)
{
  v8 = v6 - 538106384;
  v9 = ((v6 - 538106384) ^ 0x1CE0C2EE) & (2 * ((v6 - 538106384) & 0x18E2E8E8)) ^ (v6 - 538106384) & 0x18E2E8E8;
  v10 = ((2 * ((v6 - 538106384) ^ 0x1D24C33E)) ^ 0xB8C57AC) & ((v6 - 538106384) ^ 0x1D24C33E) ^ (2 * ((v6 - 538106384) ^ 0x1D24C33E)) & 0x5C62BD6;
  v11 = v10 ^ 0x4422852;
  v12 = (v10 ^ 0x1840380) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0x1718AF58) & v11 ^ (4 * v11) & 0x5C62BD0;
  v14 = (v13 ^ 0x5002B40) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0xC60086)) ^ 0x5C62BD60) & (v13 ^ 0xC60086) ^ (16 * (v13 ^ 0xC60086)) & 0x5C62BC0;
  v16 = v14 ^ 0x5C62BD6 ^ (v15 ^ 0x4422900) & (v14 << 8);
  v17 = (LODWORD(STACK[0x2E0]) ^ 0x2B757265) & (2 * (STACK[0x2E0] & a3)) ^ STACK[0x2E0] & a3;
  v18 = ((2 * (LODWORD(STACK[0x2E0]) ^ 0x3B15320D)) ^ 0x6EC88CF2) & (LODWORD(STACK[0x2E0]) ^ 0x3B15320D) ^ (2 * (LODWORD(STACK[0x2E0]) ^ 0x3B15320D)) & 0xB7644678;
  v19 = v18 ^ 0x91244209;
  v20 = (v18 ^ 0x22400070) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0xDD9119E4) & v19 ^ (4 * v19) & 0xB7644678;
  v22 = (v21 ^ 0x95000060) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x22644619)) ^ 0x76446790) & (v21 ^ 0x22644619) ^ (16 * (v21 ^ 0x22644619)) & 0xB7644650;
  v24 = v22 ^ 0xB7644679 ^ (v23 ^ 0x36444600) & (v22 << 8);
  v25 = v8 ^ (2 * ((v16 << 16) & 0x5C60000 ^ v16 ^ ((v16 << 16) ^ 0x2BD60000) & (((v15 ^ 0x1840296) << 8) & 0x5C60000 ^ 0x1C40000 ^ (((v15 ^ 0x1840296) << 8) ^ 0x462B0000) & (v15 ^ 0x1840296))));
  v26 = LODWORD(STACK[0x2E0]) ^ (2 * ((v24 << 16) & 0x37640000 ^ v24 ^ ((v24 << 16) ^ 0x46790000) & (((v23 ^ 0x81200069) << 8) & 0x37640000 ^ 0x13200000 ^ (((v23 ^ 0x81200069) << 8) ^ 0x64460000) & (v23 ^ 0x81200069))));
  v27 = STACK[0x348];
  *(v27 + 66) = 0;
  *(v27 + 33) = 0;
  *(v27 + 51) = 0;
  *v27 = 0;
  *(v27 + 28) = 0;
  *(v27 + 62) = 0;
  *(v27 + 14) = 0;
  *(v27 + 54) = 0;
  *(v27 + 25) = 0;
  *(v27 + 36) = 0;
  *(v27 + 21) = 0;
  *(v27 + 7) = 0;
  *(v27 + 10) = 0;
  *(v27 + 46) = 0;
  *(v27 + 43) = 0;
  *(v27 + 17) = 0;
  *(v27 + 40) = 0;
  *(v27 + 68) = 0;
  *(v27 + 3) = 0;
  *(v27 + 38) = 0;
  *(v27 + 35) = 0;
  *(v27 + 53) = 0;
  *(v27 + 58) = 0;
  *(v27 + 32) = 0;
  *(v27 + 20) = 0;
  *(v27 + 1) = 0;
  *(v27 + 50) = 0;
  *(v27 + 65) = 0;
  *(v27 + 24) = 0;
  *(v27 + 5) = 0;
  *(v27 + 16) = 0;
  *(v27 + 61) = 0;
  *(v27 + 45) = 0;
  *(v27 + 49) = 0;
  *(v27 + 23) = 0;
  LODWORD(v29) = __ROR4__(v26 ^ 0xD8DED58D, 8) ^ 0xF6FE9572;
  HIDWORD(v29) = v29;
  v28 = v29 >> 24;
  *(v27 + 27) = 0;
  *(v27 + 56) = 0;
  v30 = (((v5 ^ 0xFAD00CD7) + 759175129) ^ ((v5 ^ 0x26866B02) - 250187762) ^ ((v5 ^ 0xC2F9A394) + 359250076)) - 1279185266;
  *(v27 + 8) = 0;
  *(v27 + 60) = 0;
  *(v27 + 12) = 0;
  *(v27 + 63) = 0;
  *(v27 + 52) = 0;
  *(v27 + 67) = 0;
  *(v27 + 41) = 0;
  *(v27 + 19) = 0;
  *(v27 + 34) = 0;
  *(v27 + 30) = 0;
  LODWORD(v27) = LODWORD(STACK[0x2E8]) + 760620547;
  LOBYTE(STACK[0x10AC]) = BYTE1(v27) ^ 0xF9;
  v31 = ((2 * a1) & 0x5FDA89F0) + (a1 ^ 0x2FED44F8);
  LOBYTE(STACK[0x10B0]) = BYTE1(v31) ^ 0x5E;
  v32 = ((2 * v30) & 0x5FDE446) + (v30 ^ 0x82FEF223);
  LOBYTE(STACK[0x10B9]) = v32 ^ 0x82;
  v33 = (v4 & 0xDD7D14C3 ^ 0x738565BD) & (v4 & 0x2282EB3C ^ 0xDFFF3CFB);
  v34 = v33 | v4 & 0x28A00;
  LOBYTE(STACK[0x10B3]) = BYTE2(v34) ^ 0xF1;
  LOBYTE(STACK[0x10AE]) = HIBYTE(v31) ^ 0x3F;
  LOBYTE(STACK[0x10B4]) = BYTE1(v34) ^ 0x6D;
  LOBYTE(STACK[0x10AB]) = BYTE2(v27) ^ 0x96;
  LOBYTE(STACK[0x10AD]) = v27 ^ 0x28;
  LOBYTE(STACK[0x10AA]) = BYTE3(v27) ^ 0xA3;
  LOBYTE(STACK[0x10AF]) = BYTE2(v31) ^ 0xA8;
  LOBYTE(STACK[0x10B1]) = v31 ^ 0x10;
  LOBYTE(STACK[0x10B2]) = HIBYTE(v33) ^ 0xFA;
  LOBYTE(STACK[0x10B8]) = BYTE1(v32) ^ 0x5C;
  v35 = LODWORD(STACK[0x2F0]) + 1105981417;
  LOBYTE(STACK[0x10B7]) = BYTE2(v32) ^ 0xA1;
  LOBYTE(STACK[0x10B5]) = v33 ^ 0xBD;
  LOBYTE(STACK[0x10BC]) = BYTE1(v35) ^ 0xF9;
  LOBYTE(STACK[0x10B6]) = HIBYTE(v32) ^ 0xD1;
  LOBYTE(STACK[0x10C5]) = BYTE3(v29) ^ 0x95;
  LODWORD(v27) = ((2 * v25) & 0x4025B420 ^ 0x53400) + (v25 ^ 0x30F06554);
  LOBYTE(STACK[0x10C0]) = BYTE1(v27) ^ 0x5E;
  LOBYTE(STACK[0x10BF]) = BYTE2(v27) ^ 0xA8;
  LOBYTE(STACK[0x10BD]) = v35 ^ 0x28;
  LOBYTE(STACK[0x10C1]) = (((2 * v25) & 0x20) + (v25 ^ 0x54)) ^ 0x10;
  LOBYTE(STACK[0x10BE]) = BYTE3(v27) ^ 0x3F;
  LOBYTE(STACK[0x10BA]) = HIBYTE(v35) ^ 0xA3;
  LOBYTE(STACK[0x10BB]) = BYTE2(v35) ^ 0x96;
  LOBYTE(STACK[0x10C3]) = BYTE2(v28) ^ 0x7C;
  LOBYTE(STACK[0x10C9]) = (a2 - 71) ^ 0x82;
  LOBYTE(STACK[0x10C2]) = HIBYTE(v28) ^ 0xEE;
  LOBYTE(STACK[0x10C6]) = ((a2 - 991286343) >> 24) ^ 0xD1;
  LOBYTE(STACK[0x10C7]) = ((a2 - 991286343) >> 16) ^ 0xA1;
  LOBYTE(STACK[0x10C8]) = ((a2 + 11193) >> 8) ^ 0x5C;
  LOBYTE(STACK[0x10C4]) = BYTE1(v28) ^ 0x88;
  STACK[0x568] -= 624;
  return (*(v7 + 8 * v3))(STACK[0x390]);
}

uint64_t sub_1009FF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = STACK[0x4D8];
  LOWORD(STACK[0xB7E]) = v8;
  return (*(a8 + 8 * (v9 - 34468)))();
}

uint64_t sub_1009FF518(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v20 = v12 + ((v8 ^ v17) ^ v10) * v11;
  v21 = *(STACK[0x448] + 4 * (v20 - (((v20 >> 6) * v13) >> 32) * v14));
  *(v19 + 4 * v8) = a7 ^ ((((v21 ^ v15) + a1) ^ ((v21 ^ a2) + a3) ^ ((v21 ^ a4) + a5)) + a6);
  return (*(v16 + 8 * (((v9 == 0) * a8) ^ v18)))();
}

uint64_t sub_1009FF608(unsigned int a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned __int8 *a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unsigned int a50, int a51, int a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v108 = *a7 ^ a2;
  v65 = a7[3] ^ a3;
  v107 = a7[5] ^ v56;
  v66 = a7[2] ^ v64;
  v67 = a7[4] ^ a6;
  v68 = a7[7] ^ v57;
  v69 = a7[10] ^ v58;
  v70 = a7[8] ^ a1;
  v71 = a7[14] ^ a8;
  v72 = a7[9];
  v73 = a7[11] ^ v59;
  v74 = *(&off_1010A0B50 + a52 - 8959) - 1830535646;
  v75 = *&v74[8 * ((*a7 ^ a2) ^ 0x17BLL)];
  v76 = a7[15] + v61 - 2 * (a7[15] & v61);
  v77 = *&v74[8 * ((a7[1] ^ v62) ^ 0x7A)];
  LODWORD(a32) = (a52 + 692278949) & 0xD6BCDF7F;
  v78 = v73;
  v79 = v73;
  v80 = ((8 * v75) ^ 0x4BD8FD18) + 112;
  v81 = *&v74[8 * ((a7[2] ^ v64) ^ 0x79)];
  v82 = ((8 * v81) ^ 0x4BD8FD18) + 112;
  LODWORD(v81) = v77 ^ v75 ^ v81;
  v83 = *&v74[8 * (v65 ^ 0x78)];
  LODWORD(v81) = v81 ^ v83 ^ v80;
  v84 = *&v74[8 * (v67 ^ 0x7F)];
  v85 = ((8 * v84) ^ 0x4BD8FD18) + 112;
  v86 = v84 ^ v82;
  v87 = *&v74[8 * (v107 ^ 0x17ELL)];
  LODWORD(v81) = v81 ^ ((a32 ^ (8 * v77) ^ 0x4BD8A60E) + 112) ^ v86 ^ v87;
  v88 = *&v74[8 * ((a7[6] ^ v55) ^ 0x7D)];
  LODWORD(v83) = (((8 * v83) ^ 0x4BD8FD18) + 112) ^ v88 ^ v85;
  v89 = *&v74[8 * (v68 ^ 0x7C)];
  LODWORD(v81) = v81 ^ v83 ^ v89;
  v90 = *&v74[8 * (v70 ^ 0x7B)];
  LODWORD(v88) = (((8 * v87) ^ 0x4BD8FD18) + 112) ^ v90 ^ (((8 * v88) ^ 0x4BD8FD18) + 112);
  v91 = *&v74[8 * ((v72 ^ v63) ^ 0x7A)];
  LODWORD(v81) = v81 ^ v88 ^ v91 ^ (((8 * v89) ^ 0x4BD8FD18) + 112);
  v92 = *&v74[8 * (v69 ^ 0x179)];
  LODWORD(v78) = *&v74[8 * (v78 ^ 0x178)] ^ 0x897B1FA3;
  v93 = *&v74[8 * ((a7[12] ^ a50) ^ 0x17FLL)];
  LODWORD(v90) = v92 ^ (((8 * v90) ^ 0x4BD8FD18) + 112) ^ (((8 * v91) ^ 0x4BD8FD18) + 112) ^ v93 ^ v78 ^ (((8 * v92) ^ 0x4BD8FD18) + 112);
  v94 = *&v74[8 * ((a7[13] ^ v60) ^ 0x17ELL)];
  LODWORD(v81) = v81 ^ v90;
  LODWORD(v90) = ((8 * v94) ^ 0x4BD8FD18) + 112;
  v95 = *&v74[8 * (v71 ^ 0x17DLL)];
  LODWORD(v94) = v94 ^ v95 ^ (((8 * v93) ^ 0x4BD8FD18) + 112);
  v96 = *&v74[8 * (v76 ^ 0x7C)];
  LODWORD(v90) = v94 ^ v96 ^ v90;
  v97 = ((8 * v96) ^ 0x18u) + 112;
  LODWORD(v81) = v81 ^ v90 ^ (((8 * v95) ^ 0x18) + 112) ^ ((v78 + 46) << ((v72 ^ ~v63) & 1) << ((v72 ^ v63) & 2) << ((((v72 ^ v63) ^ 0xF) & 1) == 0) << ((v72 ^ v63 ^ 0xF) & 2)) ^ v97;
  v105 = v76;
  LODWORD(v78) = v76 - ((2 * v76) & 0x72);
  v98 = v72 ^ v63;
  v99 = a7[1] ^ v62;
  v106 = a7[13] ^ v60;
  v104 = a7[12] ^ a50;
  LODWORD(v81) = v99 ^ v69 ^ v65 ^ v108 ^ v71 ^ v66 ^ v67 ^ v104 ^ v70 ^ v68 ^ v98 ^ a7[6] ^ v55 ^ v106 ^ v79 ^ (v78 + 57) ^ v81;
  HIDWORD(a33) = *(*(&off_1010A0B50 + a52 - 5899) + ((((v81 ^ 0x9A) - ((2 * v81) & 0xA) + 5) ^ v107) ^ 0x63) - 1160889930) + 106;
  v100 = (((BYTE4(a33) ^ 0x34u) << 8) ^ 0x20039784243ED95BLL) & (BYTE4(a33) ^ 0x20039784243EFFC5) | (HIDWORD(a33) ^ 0x34u) & 0xA4;
  v101 = ((v100 << 16) ^ 0x680D9D28FB8B9A7BLL) & (v100 ^ 0xDFFC687BDBC10900) ^ ((((BYTE4(a33) ^ 0x34u) << 8) ^ 0x20039784243ED95BLL) & (BYTE4(a33) ^ 0x20039784243EFFC5) & 0x20680200A6584 | (HIDWORD(a33) ^ 0x34u) & 0x84);
  v102 = *(a55 + 8 * ((481 * ((a45 & 1) == 0)) ^ (a52 + 18950)));
  LODWORD(a45) = ((v81 ^ 0xFFFFFF9A) - ((2 * v81) & 0xA) + 5) ^ v107 ^ 5;
  return v102(v74, v102, 52, ((v101 << 32) ^ 0xD3010080FFFFFFFFLL) & (v101 ^ 0x1775134388ED429CLL), v98, v70, a7, v97, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v99, a32, a33, v65, v66, v104, v67, v105, v68, v70, a7[6] ^ v55, v69, v106, v71, a45);
}

uint64_t sub_1009FFC30(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = v8 - 1;
  v14 = *(*a8 + (*a4 & 0x72D7ACF8));
  v15 = ((((v14 ^ (v9 + v13)) & 0x7FFFFFFF) * v12) ^ ((((v14 ^ (v9 + v13)) & 0x7FFFFFFFu) * v12) >> 16)) * v12;
  v16 = ((((v14 ^ (a2 + v13)) & 0x7FFFFFFF) * v12) ^ ((((v14 ^ (a2 + v13)) & 0x7FFFFFFFu) * v12) >> 16)) * v12;
  *(a2 + v13) = *(a7 + (v15 >> 24)) ^ *(v9 + v13) ^ *(a1 + (v15 >> 24)) ^ *(a6 + (v15 >> 24) + ((v10 + 18804) ^ 0x767Bu)) ^ *(a7 + (v16 >> 24)) ^ *(a1 + (v16 >> 24)) ^ *((v16 >> 24) + a6 + 5) ^ v15 ^ v16 ^ (-83 * BYTE3(v15)) ^ (-83 * BYTE3(v16));
  return (*(v11 + 8 * (v10 ^ (32 * (v13 == 0)))))();
}

uint64_t sub_1009FFD2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v111 = (*v2 ^ 0x7D7EB7FB) - 138412304 + ((2 * *v2) & 0xFAFD6FF6);
  v112 = (v2[1] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[1]) & 0xFAFD6FF6);
  v113 = (v2[2] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[2]) & 0xFAFD6FF6);
  v114 = (v2[3] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[3]) & 0xFAFD6FF6);
  v115 = (v2[4] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[4]) & 0xFAFD6FF6);
  v116 = (v2[5] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[5]) & 0xFAFD6FF6);
  v117 = (v2[6] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[6]) & 0xFAFD6FF6);
  v118 = (v2[7] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[7]) & 0xFAFD6FF6);
  v119 = (v2[8] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[8]) & 0xFAFD6FF6);
  v120 = (v2[9] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[9]) & 0xFAFD6FF6);
  v121 = (v2[10] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[10]) & 0xFAFD6FF6);
  v122 = (v2[11] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[11]) & 0xFAFD6FF6);
  v123 = (v2[12] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[12]) & 0xFAFD6FF6);
  v124 = (v2[13] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[13]) & 0xFAFD6FF6);
  v125 = (v2[14] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[14]) & 0xFAFD6FF6);
  v126 = (v2[15] ^ 0x7D7EB7FB) - 138412304 + ((2 * v2[15]) & 0xFAFD6FF6);
  v3 = *v1 - ((2 * *v1) & 0x18C) - 813749562;
  v4 = ((v1[2] - ((2 * v1[2]) & 0x1C0)) << 16) + 216006656;
  v5 = (v3 & 0x3EB ^ 0x9325D67B ^ ((((v1[1] - ((2 * v1[1]) & 0x1B2)) << 8) + 1094048000) ^ 0x1C58B114) & (v3 ^ 0x3080D5FA)) & (v4 ^ 0xF31FFFFF);
  v6 = v4 & 0x1B70000;
  v7 = ((v1[3] - 2 * (v1[3] & 0xF)) << 24) - 1895825408;
  v8 = (v6 ^ 0x9322B965 ^ v5) & (v7 ^ 0x70FFFFFF) ^ v7 & 0xA2000000;
  v9 = v1[4] - ((2 * v1[4]) & 0xEC) - 238085002;
  v10 = ((v1[6] - ((2 * v1[6]) & 0x7A)) << 16) - 1539506176;
  v11 = (v9 & 0x80319 ^ 0xC3A482C0 ^ ((((v1[5] - ((2 * v1[5]) & 0x1AE)) << 8) + 2016401152) ^ 0x11AD83E6) & (v9 ^ 0xE30E399)) & (v10 ^ 0x5BC2FFFF);
  v12 = v10 & 0x15D10000;
  v13 = ((v1[7] - ((2 * v1[7]) & 0x1A)) << 24) + 218103808;
  v14 = (v12 ^ 0x437C2B2B ^ v11) & (v13 ^ 0xF2FFFFFF) ^ (v13 & 0x12000000 | 0x9002C0);
  v15 = v1[8] - 2 * (v1[8] & 0x3F) + 45807935;
  v16 = ((v1[10] - ((2 * v1[10]) & 4)) << 16) + 33685504;
  v17 = (v15 & 0x2020E70 ^ 0xD1A9D9AF ^ ((((v1[9] - ((2 * v1[9]) & 0xC0)) << 8) - 1497079808) ^ 0x63FD318F) & (v15 ^ 0xFD450690)) & (v16 ^ 0xFDFDFFFF);
  v18 = v16 & 0xE96D0000;
  v19 = ((v1[11] - ((2 * v1[11]) & 0x14)) << 24) + 167772160;
  v20 = (v18 ^ 0xCF4B023D ^ v17) & (v19 ^ 0xF5FFFFFF) ^ v19 & 0x26000000;
  v21 = v1[12] - ((2 * v1[12]) & 0x7777) + 1685696955;
  v22 = ((v1[14] - ((2 * v1[14]) & 0x10A)) << 16) - 1970995200;
  v23 = (v21 & 0x1721 ^ 0x84EE0FAC ^ ((((v1[13] - ((2 * v1[13]) & 0x142)) << 8) + 1610195200) ^ 0xAB1EA9DE) & (v21 ^ 0x9B864E44)) & (v22 ^ 0x757AFFFF);
  v24 = v22 & 0x8FF60000;
  v25 = ((v1[15] - ((2 * v1[15]) & 0xFF8F)) << 24) - 956301312;
  v26 = (v24 ^ 0xD54CCD76 ^ v23) & (v25 ^ 0x38FFFFFF) ^ v25 & 0xD0000000;
  v27 = (v26 ^ 0x5B472E8F ^ v20 ^ 0x504C7EAC) & 0x56742092 ^ v26 ^ 0x5B472E8F ^ (v26 ^ 0x5B472E8F ^ v20 ^ 0x504C7EAC ^ 0x3F13092B) & (v14 ^ 0xBBA7DF4F);
  HIDWORD(v28) = v111 + (((v8 ^ 0xE29B66D9) + 1928138149) ^ ((v8 ^ 0xA52D6B6C) + 895156242) ^ ((v8 ^ 0x987C087D) + 134898433)) + 1536447269 + (((v27 ^ 0xB62224EB) - 960417899) ^ ((v27 ^ 0x84ECA760) - 200299488) ^ ((v27 ^ 0x90587623) - 524583587));
  LODWORD(v28) = HIDWORD(v28);
  v29 = (((v14 ^ 0x8AB1F68A) - 751851717) ^ ((v14 ^ 0x9E1192F0) - 946879679) ^ ((v14 ^ 0xF9739BA7) - 1595028968)) + ((v28 >> 25) ^ 0x729B2A9E) + ((2 * (v28 >> 25)) & 0xE536553C) - 652794124;
  v30 = (v14 ^ 0x6646035C) & v29 | (v20 ^ 0x504C7EAC) & ~v29;
  HIDWORD(v28) = v112 + (((v26 ^ 0x6BEB559D) - 816610066) ^ ((v26 ^ 0x26ECE69) - 1495916774) ^ ((v26 ^ 0x864440D1) + 586977698)) - 1890381029 + (((v30 ^ 0x33278DF3) - 744822025) ^ ((v30 ^ 0xA99143AF) + 1227629739) ^ ((v30 ^ 0x112332DD) - 241281575));
  LODWORD(v28) = HIDWORD(v28);
  v31 = (v28 >> 20) + v29;
  HIDWORD(v28) = v113 + (((v20 ^ 0x93F99D2) - 1500768126) ^ ((v20 ^ 0xA790EB01) + 136538707) ^ ((v20 ^ 0x7576F0FE) - 624594514)) - 30731009 + (((v31 & (v14 ^ 0xEDD3FFDD ^ v29) ^ v14 ^ 0xD80DE23B) - 180593509) ^ ((v31 & (v14 ^ 0xEDD3FFDD ^ v29) ^ v14 ^ 0xF6D74FA8) - 605622006) ^ ((v31 & (v14 ^ 0xEDD3FFDD ^ v29) ^ v14 ^ 0xC309524E) - 298259216));
  LODWORD(v28) = HIDWORD(v28);
  v32 = (v28 >> 15) + v31;
  HIDWORD(v28) = v114 + (((v14 ^ 0x40317F71) + 430911170) ^ ((v14 ^ 0x1DA000D4) + 1144934757) ^ ((v14 ^ 0xB0428078) - 371404343)) - 1013968207 + ((((v31 & v32 | v29 & ~v32) ^ 0xBEC2EE9E) - 913301050) ^ (((v31 & v32 | v29 & ~v32) ^ 0xD72E28AB) - 1602426895) ^ (((v31 & v32 | v29 & ~v32) ^ 0x69ECC635) + 515770735));
  LODWORD(v28) = HIDWORD(v28);
  v33 = (v28 >> 10) + v32;
  HIDWORD(v28) = v115 + v29 - 1010468213 + ((v31 - ((2 * v31) & 0xF83F3112) - 65038199) ^ 0xFC1F9889 ^ v33 & (v32 ^ v31));
  LODWORD(v28) = HIDWORD(v28);
  v34 = (v28 >> 25) + v33;
  HIDWORD(v28) = v116 + v31 + 894013671 + ((v32 - ((2 * v32) & 0xDB69A2BA) + 1840566621) ^ 0x6DB4D15D ^ v34 & (v33 ^ v32));
  LODWORD(v28) = HIDWORD(v28);
  v35 = (v28 >> 20) + v34;
  HIDWORD(v28) = v117 + v32 - 748671140 + ((v33 - ((2 * v33) & 0xC629E6F8) - 485166212) ^ 0xE314F37C ^ v35 & (v34 ^ v33));
  LODWORD(v28) = HIDWORD(v28);
  v36 = (v28 >> 15) + v35;
  HIDWORD(v28) = v118 + v33 - 537604729 + ((v34 - ((2 * v34) & 0xB0D9E6A8) + 1483535188) ^ 0x586CF354 ^ v36 & (v35 ^ v34));
  LODWORD(v28) = HIDWORD(v28);
  v37 = (v28 >> 10) + v36;
  HIDWORD(v28) = v119 + v34 + 1983633573 + ((v35 - ((2 * v35) & 0x7359ACEE) - 1179855241) ^ 0xB9ACD677 ^ v37 & (v36 ^ v35));
  LODWORD(v28) = HIDWORD(v28);
  v38 = (v28 >> 25) + v37;
  HIDWORD(v28) = v120 + v35 + 858033828 + ((v36 - ((2 * v36) & 0xEEC2C970) - 144612168) ^ 0xF76164B8 ^ v38 & (v37 ^ v36));
  LODWORD(v28) = HIDWORD(v28);
  v39 = (v28 >> 20) + v38;
  HIDWORD(v28) = v121 + v36 - 1177952866 + ((v37 - ((2 * v37) & 0xFFAA0DD8) - 2816276) ^ 0xFFD506EC ^ v39 & (v38 ^ v37));
  LODWORD(v28) = HIDWORD(v28);
  v40 = (v28 >> 15) + v39;
  HIDWORD(v28) = v122 + v37 + 99727220 + ((v38 - ((2 * v38) & 0xFB0DAEF0) + 2105988984) ^ 0x7D86D778 ^ v40 & (v39 ^ v38));
  LODWORD(v28) = HIDWORD(v28);
  v41 = (v28 >> 10) + v40;
  HIDWORD(v28) = v123 + v38 - 580084457 + ((v39 - ((2 * v39) & 0xA81DD90) - 2059342136) ^ 0x8540EEC8 ^ v41 & (v40 ^ v39));
  LODWORD(v28) = HIDWORD(v28);
  v42 = (v28 >> 25) + v41;
  HIDWORD(v28) = v124 + v39 + 684337882 + ((v40 - ((2 * v40) & 0x5329B974) - 1449861958) ^ 0xA994DCBA ^ v42 & (v41 ^ v40));
  LODWORD(v28) = HIDWORD(v28);
  v43 = (v28 >> 20) + v42;
  HIDWORD(v28) = v125 + v40 + 1929197591 + ((v41 - ((2 * v41) & 0xF87BB9DC) - 63054610) ^ 0xFC3DDCEE ^ v43 & (v42 ^ v41));
  LODWORD(v28) = HIDWORD(v28);
  v44 = (v28 >> 15) + v43;
  HIDWORD(v28) = v126 + v41 + 372790289 + ((v42 - ((2 * v42) & 0xBCCF1A36) + 1583844635) ^ 0x5E678D1B ^ v44 & (v43 ^ v42));
  LODWORD(v28) = HIDWORD(v28);
  v45 = (v28 >> 10) + v44;
  HIDWORD(v28) = v112 + v42 - 656364046 + ((v44 - ((2 * v44) & 0x1C591C38) + 237800988) ^ 0xE2C8E1C ^ (v45 ^ v44) & v43);
  LODWORD(v28) = HIDWORD(v28);
  v46 = (v28 >> 27) + v45;
  HIDWORD(v28) = v117 + v43 - 587765861 + ((v45 - ((2 * v45) & 0xEC84CC3A) + 1984063005) ^ 0x7642661D ^ (v46 ^ v45) & v44);
  LODWORD(v28) = HIDWORD(v28);
  v47 = (v28 >> 23) + v46;
  HIDWORD(v28) = v122 + v44 + 917358704 + ((v46 - ((2 * v46) & 0x88EC0C1A) - 998898163) ^ 0xC476060D ^ (v47 ^ v46) & v45);
  LODWORD(v28) = HIDWORD(v28);
  v48 = (v28 >> 18) + v47;
  HIDWORD(v28) = v111 + v45 + 1304605524 + ((v47 - ((2 * v47) & 0xDFD72BF0) - 269773320) ^ 0xEFEB95F8 ^ (v48 ^ v47) & v46);
  LODWORD(v28) = HIDWORD(v28);
  v49 = (v28 >> 12) + v48;
  HIDWORD(v28) = v116 + v46 - 1641744759 + ((v48 - ((2 * v48) & 0xA154CFB2) - 794138663) ^ 0xD0AA67D9 ^ (v49 ^ v48) & v47);
  LODWORD(v28) = HIDWORD(v28);
  v50 = (v28 >> 27) + v49;
  HIDWORD(v28) = v121 + v47 + 266840298 + ((v49 - ((2 * v49) & 0x2DE84C1A) + 385099277) ^ 0x16F4260D ^ (v50 ^ v49) & v48);
  LODWORD(v28) = HIDWORD(v28);
  v51 = (v28 >> 23) + v50;
  HIDWORD(v28) = v126 + v48 - 1994386972 + ((v50 - ((2 * v50) & 0x6E78F7C) - 2089564226) ^ 0x8373C7BE ^ (v51 ^ v50) & v49);
  LODWORD(v28) = HIDWORD(v28);
  LODWORD(v2) = (v28 >> 18) + v51;
  HIDWORD(v28) = v115 + v49 - 1812523793 + ((v51 - ((2 * v51) & 0x54749E62) + 708464433) ^ 0x2A3A4F31 ^ (v2 ^ v51) & v50);
  LODWORD(v28) = HIDWORD(v28);
  v52 = (v28 >> 12) + v2;
  HIDWORD(v28) = v120 + v50 - 617259589 + ((v2 - ((2 * v2) & 0xAF3192D0) - 677852824) ^ 0xD798C968 ^ (v52 ^ v2) & v51);
  LODWORD(v28) = HIDWORD(v28);
  v53 = (v28 >> 27) + v52;
  HIDWORD(v28) = v125 + v51 - 955638512 + ((v52 - ((2 * v52) & 0x61F0242E) - 1325919721) ^ 0xB0F81217 ^ (v53 ^ v52) & v2);
  LODWORD(v28) = HIDWORD(v28);
  v54 = (v28 >> 23) + v53;
  HIDWORD(v28) = v114 + v2 + 1275407059 + ((v53 - ((2 * v53) & 0x2DF9702A) + 385660949) ^ 0x16FCB815 ^ (v54 ^ v53) & v52);
  LODWORD(v28) = HIDWORD(v28);
  v55 = (v28 >> 18) + v54;
  HIDWORD(v28) = v119 + v52 - 640254597 + ((v54 - ((2 * v54) & 0x90807054) + 1212168234) ^ 0x4840382A ^ (v55 ^ v54) & v53);
  LODWORD(v28) = HIDWORD(v28);
  LODWORD(v2) = (v28 >> 12) + v55;
  HIDWORD(v28) = v124 + v53 - 1469795056 + ((v55 - ((2 * v55) & 0x7F7A5C70) + 1069362744) ^ 0x3FBD2E38 ^ (v2 ^ v55) & v54);
  LODWORD(v28) = HIDWORD(v28);
  v56 = (v28 >> 27) + v2;
  HIDWORD(v28) = v113 + v54 - 1345436625 + ((v2 - ((2 * v2) & 0x47C8E3FC) - 1545309698) ^ 0xA3E471FE ^ (v56 ^ v2) & v55);
  LODWORD(v28) = HIDWORD(v28);
  v57 = (v28 >> 23) + v56;
  HIDWORD(v28) = v118 + v55 - 2103468379 + ((v56 - ((2 * v56) & 0x4CF65A88) + 645606724) ^ 0x267B2D44 ^ (v57 ^ v56) & v2);
  LODWORD(v28) = HIDWORD(v28);
  v58 = (v28 >> 18) + v57;
  HIDWORD(v28) = v123 + v2 - 2133067104 + ((v57 - ((2 * v57) & 0xC1F480C8) - 520470428) ^ 0xE0FA4064 ^ (v58 ^ v57) & v56);
  LODWORD(v28) = HIDWORD(v28);
  v59 = *(&v111 + (v56 & 0xF));
  v60 = (v28 >> 12) + v58;
  *(&v111 + (v56 & 0xF)) = *(&v111 + (v60 & 0xF));
  *(&v111 + (v60 & 0xF)) = *(&v111 + (v58 & 0xF));
  *(&v111 + (v58 & 0xF)) = *(&v111 + (v57 & 0xF));
  *(&v111 + (v57 & 0xF)) = *(&v111 + (v56 >> 4));
  *(&v111 + (v56 >> 4)) = *(&v111 + (v60 >> 4));
  *(&v111 + (v60 >> 4)) = *(&v111 + (v58 >> 4));
  *(&v111 + (v58 >> 4)) = *(&v111 + (v57 >> 4));
  *(&v111 + (v57 >> 4)) = v59;
  HIDWORD(v28) = v116 + v56 + 2068729173 + ((v57 - ((2 * v57) & 0xA666B9E0) + 1395875056) ^ v58 ^ 0x53335CF0 ^ v60);
  LODWORD(v28) = HIDWORD(v28);
  v61 = (v28 >> 28) + v60;
  HIDWORD(v28) = v119 + v57 - 504491370 + ((v58 - 879962547 + (~(2 * v58) | 0x68E65367)) ^ v60 ^ 0xCB8CD64C ^ v61);
  LODWORD(v28) = HIDWORD(v28);
  v62 = (v28 >> 21) + v61;
  HIDWORD(v28) = v122 + v58 + 782211643 + ((v60 - ((2 * v60) & 0x32AC09AC) + 425067734) ^ v61 ^ 0x195604D6 ^ v62);
  LODWORD(v28) = HIDWORD(v28);
  v63 = (v28 >> 16) + v62;
  HIDWORD(v28) = v125 + v60 - 1403084685 + ((v61 - ((2 * v61) & 0x680A4CBA) + 872752733) ^ v62 ^ 0x3405265D ^ v63);
  LODWORD(v28) = HIDWORD(v28);
  v64 = (v28 >> 9) + v63;
  HIDWORD(v28) = v112 + v61 + 370526245 + ((v62 - ((2 * v62) & 0xA0CA2B10) + 1348801928) ^ v63 ^ 0x50651588 ^ v64);
  LODWORD(v28) = HIDWORD(v28);
  v65 = (v28 >> 28) + v64;
  HIDWORD(v28) = v115 + v62 + 399622471 + ((v63 - ((2 * v63) & 0x1DD9064A) + 250381093) ^ v64 ^ 0xEEC8325 ^ v65);
  LODWORD(v28) = HIDWORD(v28);
  v66 = (v28 >> 21) + v65;
  HIDWORD(v28) = v118 + v63 - 1717461345 + ((v64 - ((2 * v64) & 0x207C2E4E) - 1874979033) ^ v65 ^ 0x903E1727 ^ v66);
  LODWORD(v28) = HIDWORD(v28);
  v67 = (v28 >> 16) + v66;
  HIDWORD(v28) = v121 + v64 - 575565576 + ((v65 - ((2 * v65) & 0x5C9088) - 2144450492) ^ v66 ^ 0x802E4844 ^ v67);
  LODWORD(v28) = HIDWORD(v28);
  v68 = (v28 >> 9) + v67;
  HIDWORD(v28) = v124 + v65 + 143625268 + ((v66 - 1042052685 + (~(2 * v66) | 0x7C38EC9B)) ^ v67 ^ 0xC1E389B2 ^ v68);
  LODWORD(v28) = HIDWORD(v28);
  v69 = (v28 >> 28) + v68;
  HIDWORD(v28) = v111 + v66 - 676064480 + ((v67 - ((2 * v67) & 0x35436ADC) + 446805358) ^ v68 ^ 0x1AA1B56E ^ v69);
  LODWORD(v28) = HIDWORD(v28);
  v70 = (v28 >> 21) + v69;
  HIDWORD(v28) = v114 + v67 + 1976085640 + ((v68 - ((2 * v68) & 0x97B86A5A) - 874760915) ^ v69 ^ 0xCBDC352D ^ v70);
  LODWORD(v28) = HIDWORD(v28);
  v71 = (v28 >> 16) + v70;
  HIDWORD(v28) = v117 + v68 - 969785824 + ((v69 - ((2 * v69) & 0x824C4012) - 1054466039) ^ v70 ^ 0xC1262009 ^ v71);
  LODWORD(v28) = HIDWORD(v28);
  v72 = (v28 >> 9) + v71;
  HIDWORD(v28) = v120 + v69 - 1248103391 + ((v70 - ((2 * v70) & 0x178FB054) + 197646378) ^ v71 ^ 0xBC7D82A ^ v72);
  LODWORD(v28) = HIDWORD(v28);
  v73 = (v28 >> 28) + v72;
  HIDWORD(v28) = v123 + v70 + 1078539229 + ((v71 - ((2 * v71) & 0x9652B270) - 886482632) ^ v72 ^ 0xCB295938 ^ v73);
  LODWORD(v28) = HIDWORD(v28);
  v74 = (v28 >> 21) + v73;
  HIDWORD(v28) = v126 + v71 + 902316749 + ((v72 - ((2 * v72) & 0xBF48B134) - 542877542) ^ v73 ^ 0xDFA4589A ^ v74);
  LODWORD(v28) = HIDWORD(v28);
  v75 = (v28 >> 16) + v74;
  HIDWORD(v28) = v113 + v72 - 184233091 + ((v73 - ((2 * v73) & 0xF2D1B518) + 2036914828) ^ v74 ^ 0x7968DA8C ^ v75);
  LODWORD(v28) = HIDWORD(v28);
  v76 = (v28 >> 9) + v75;
  HIDWORD(v28) = v111 + v73 + 2063675058 + ((v75 - ((2 * v75) & 0x26F25060) + 326707248) ^ 0x4145A017 ^ (v76 & 0xADC377D8 | (v74 ^ 0xADC377D8) & ~v76));
  LODWORD(v28) = HIDWORD(v28);
  v77 = (v28 >> 26) + v76;
  HIDWORD(v28) = v118 + v74 + 212759467 + ((v76 - ((2 * v76) & 0xD537872E) - 358890601) ^ 0xFE1CEE35 ^ (v77 & 0xEB78D25D | (v75 ^ 0xEB78D25D) & ~v77));
  LODWORD(v28) = HIDWORD(v28);
  v78 = (v28 >> 22) + v77;
  HIDWORD(v28) = v125 + v75 + 1466407881 + ((v77 - ((2 * v77) & 0x76A9B3F4) + 995416570) ^ 0xF0BC954 ^ (v78 & 0xCBA0EF51 | (v76 ^ 0xCBA0EF51) & ~v78));
  LODWORD(v28) = HIDWORD(v28);
  v79 = (v28 >> 17) + v78;
  HIDWORD(v28) = v116 + v76 + 1137392068 + ((v78 - ((2 * v78) & 0xF7A4CB4C) + 2077386150) ^ 0xB8B346E1 ^ (v79 & 0x3C9EDCB8 | (v77 ^ 0x3C9EDCB8) & ~v79));
  LODWORD(v28) = HIDWORD(v28);
  v80 = (v28 >> 11) + v79;
  HIDWORD(v28) = v123 + v77 + 2040285023 + ((v79 - ((2 * v79) & 0xECEF9E86) + 1987563331) ^ 0x355EB006 ^ (v80 & 0xBCD680BA | (v78 ^ 0xBCD680BA) & ~v80));
  LODWORD(v28) = HIDWORD(v28);
  v81 = (v28 >> 26) + v80;
  HIDWORD(v28) = v114 + v78 + 804178780 + ((v80 - ((2 * v80) & 0x99ECDD9C) - 856265010) ^ 0x699C131E ^ (v81 & 0x5A95822F | (v79 ^ 0x5A95822F) & ~v81));
  LODWORD(v28) = HIDWORD(v28);
  v82 = (v28 >> 22) + v81;
  HIDWORD(v28) = v121 + v79 - 1277876895 + ((v81 - ((2 * v81) & 0x50E4EAE) + 42411863) ^ 0x80D48A39 ^ (v82 & 0x7DAC5291 | (v80 ^ 0x7DAC5291) & ~v82));
  LODWORD(v28) = HIDWORD(v28);
  v83 = (v28 >> 17) + v82;
  HIDWORD(v28) = v112 + v80 + 961988928 + ((v82 - ((2 * v82) & 0x5A25865C) - 1391279314) ^ 0x210A4DF9 ^ (v83 & 0x73E77128 | (v81 ^ 0x73E77128) & ~v83));
  LODWORD(v28) = HIDWORD(v28);
  v84 = (v28 >> 11) + v83;
  HIDWORD(v28) = v119 + v81 - 300433680 + ((v83 - ((2 * v83) & 0xF89B0502) - 62029183) ^ 0xED28D42D ^ (v84 & 0xEE9AA953 | (v82 ^ 0xEE9AA953) & ~v84));
  LODWORD(v28) = HIDWORD(v28);
  v85 = (v28 >> 26) + v84;
  HIDWORD(v28) = v126 + v82 - 1589714840 + ((v84 - ((2 * v84) & 0x422C9ECA) - 1592373403) ^ 0x27C6354 ^ (v85 & 0x5C95D3CE | (v83 ^ 0x5C95D3CE) & ~v85));
  LODWORD(v28) = HIDWORD(v28);
  LODWORD(v2) = (v28 >> 22) + v85;
  HIDWORD(v28) = v117 + v83 + 1774152474 + ((v85 - ((2 * v85) & 0xA8BDEA3A) + 1415509277) ^ 0x8F5B4BA3 ^ (v2 & 0x24FA4141 | (v84 ^ 0x24FA4141) & ~v2));
  LODWORD(v28) = HIDWORD(v28);
  v86 = (v28 >> 17) + v2;
  HIDWORD(v28) = v124 + v84 - 689198205 + ((v2 - ((2 * v2) & 0x55AFD5B2) + 718793433) ^ 0x72AD84C7 ^ (v86 & 0xA78591E1 | (v85 ^ 0xA78591E1) & ~v86));
  LODWORD(v28) = HIDWORD(v28);
  v87 = (v28 >> 11) + v86;
  HIDWORD(v28) = v115 + v85 + 722387793 + ((v86 - ((2 * v86) & 0x7DD4A150) - 1091940184) ^ 0x2C7EE2A7 ^ (v87 & 0x6D6B4DF0 | (v2 ^ 0x6D6B4DF0) & ~v87));
  LODWORD(v28) = HIDWORD(v28);
  v88 = v87 + ((v28 >> 26) ^ 0x6DBC7576) + ((2 * (v28 >> 26)) & 0xDB78EAEC) - 67638274;
  v89 = ((v88 ^ 0x247E6409) - 1305085309) ^ v88 ^ ((v88 ^ 0x6357D6CB) - 182695871) ^ ((v88 ^ 0xD362BC49) + 1160323779) ^ ((v88 ^ 0xFDFF6FFF) + 1807020405);
  HIDWORD(v28) = v122 + v2 + 1405542154 + ((((v89 ^ 0x964B9E8B) & v86 ^ v87 ^ 0xF3D49F4F) + 1906986615) ^ (((v89 ^ 0x964B9E8B) & v86 ^ v87 ^ 0x52A5A575) - 790924211) ^ (((v89 ^ 0x964B9E8B) & v86 ^ v87 ^ 0x5E8EC5C5) - 588245763));
  LODWORD(v28) = HIDWORD(v28);
  v90 = (((v89 ^ 0xF65659FD) - 1166286177) ^ ((v89 ^ 0xA2BF487C) - 292359392) ^ ((v89 ^ 0x3D5D70F5) + 1903217559)) + ((v28 >> 22) ^ 0xFBEAD7A9) + ((2 * (v28 >> 22)) & 0xF7D5AF52) + 995207558;
  LODWORD(v2) = (v90 ^ 0xABA50031) & (2 * (v90 & 0xA329A4B9)) ^ v90 & 0xA329A4B9;
  v91 = ((2 * (v90 ^ 0xEFA40973)) ^ 0x991B5B94) & (v90 ^ 0xEFA40973) ^ (2 * (v90 ^ 0xEFA40973)) & 0x4C8DADCA;
  v92 = v91 ^ 0x4484A44A;
  v93 = (v91 ^ 0x8090180) & (4 * v2) ^ v2;
  LODWORD(v2) = ((4 * v92) ^ 0x3236B728) & v92 ^ (4 * v92) & 0x4C8DADC8;
  v94 = (v2 ^ 0x4A500) & (16 * v93) ^ v93;
  LODWORD(v2) = ((16 * (v2 ^ 0x4C8908C2)) ^ 0xC8DADCA0) & (v2 ^ 0x4C8908C2) ^ (16 * (v2 ^ 0x4C8908C2)) & 0x4C8DADC0;
  v95 = v94 ^ 0x4C8DADCA ^ (v2 ^ 0x48888C00) & (v94 << 8);
  v96 = v90 ^ (2 * ((v95 << 16) & 0x4C8D0000 ^ v95 ^ ((v95 << 16) ^ 0x2DCA0000) & (((v2 ^ 0x405214A) << 8) & 0x4C8D0000 ^ (((v2 ^ 0x405214A) << 8) ^ 0xDAD0000) & (v2 ^ 0x405214A) ^ 0x40000000)));
  HIDWORD(v28) = v113 + v86 + 410018490 + ((((v96 ^ 0xDCDD00D2) & v87 ^ v89 ^ 0xFB410F7D) + 1412262113) ^ (((v96 ^ 0xDCDD00D2) & v87 ^ v89 ^ 0x22F77705) - 1919217511) ^ (((v96 ^ 0xDCDD00D2) & v87 ^ v89 ^ 0x4FFDE6F3) - 527335057));
  LODWORD(v28) = HIDWORD(v28);
  v97 = (((v96 ^ 0x65A84817) - 540169743) ^ ((v96 ^ 0x9D09228) - 1279953968) ^ ((v96 ^ 0x4F5A2512) - 180370186)) + ((v28 >> 17) ^ 0x71BDFFFD) + ((2 * (v28 >> 17)) & 0xE37BFFFA) + 1416469912;
  result = 2607985761;
  v99 = ((v97 ^ 0xE828786A) + 1218788342) ^ v97 ^ ((v97 ^ 0xEF5EDC7C) + 1339269092) ^ ((v97 ^ 0x63FBEF89) - 1015632873) ^ ((v97 ^ 0x3BFFF7FF) - 1686981535);
  v100 = v96 ^ v89 & 0x92520BA4 ^ (v99 ^ 0x32DF483B) & (v89 ^ 0x69B46174);
  HIDWORD(v28) = v120 + v87 + 1737695875 + (((v100 ^ 0x54F7BFEA) + 421933369) ^ ((v100 ^ 0x83C2A255) - 837604216) ^ ((v100 ^ 0xBF81C49) + 1177129628));
  LODWORD(v28) = HIDWORD(v28);
  v101 = (((v99 ^ 0x33192AF9) - 1488266337) ^ ((v99 ^ 0x8210311D) + 373538939) ^ ((v99 ^ 0xEE7BA784) + 2049464036)) + ((v28 >> 11) ^ 0xBDCEFE9D) + ((2 * (v28 >> 11)) & 0x7B9DFD3A) - 396021144;
  v102 = (v101 ^ 0x8E2A05E3) & (2 * (v101 & 0x8EAA81F3)) ^ v101 & 0x8EAA81F3;
  v103 = ((2 * (v101 ^ 0x933B0587)) ^ 0x3B2308E8) & (v101 ^ 0x933B0587) ^ (2 * (v101 ^ 0x933B0587)) & 0x1D918474;
  v104 = v103 ^ 0x4908414;
  v105 = (v103 ^ 0x19000040) & (4 * v102) ^ v102;
  v106 = ((4 * v104) ^ 0x764611D0) & v104 ^ (4 * v104) & 0x1D918470;
  v107 = (v106 ^ 0x14000050) & (16 * v105) ^ v105;
  v108 = ((16 * (v106 ^ 0x9918424)) ^ 0xD9184740) & (v106 ^ 0x9918424) ^ (16 * (v106 ^ 0x9918424)) & 0x1D918440;
  v109 = v107 ^ 0x1D918474 ^ (v108 ^ 0x19100400) & (v107 << 8);
  v110 = v101 ^ (2 * ((v109 << 16) & 0x1D910000 ^ v109 ^ ((v109 << 16) ^ 0x4740000) & (((v108 ^ 0x4818034) << 8) & 0x1D910000 ^ 0xC110000 ^ (((v108 ^ 0x4818034) << 8) ^ 0x11840000) & (v108 ^ 0x4818034))));
  *v1 += (((v89 ^ 0x7B) - 71) ^ ((v89 ^ 0x4B) - 119) ^ ((v89 ^ 0x44) - 120)) + 72;
  v1[1] += (((BYTE1(v89) ^ 0xEE) + 64) ^ ((BYTE1(v89) ^ 0xE7) + 55) ^ ((BYTE1(v89) ^ 0x68) - 70)) + 79;
  v1[2] += (((BYTE2(v89) ^ 0xA7) - 93) ^ ((BYTE2(v89) ^ 0x76) + 116) ^ ((BYTE2(v89) ^ 0x65) + 97)) + 78;
  v1[3] = v1[3] + (((HIBYTE(v89) ^ 0xD) + 127) ^ ((HIBYTE(v89) ^ 0x22) + 82) ^ ((HIBYTE(v89) ^ 0x46) + 54)) - 27;
  v1[4] = v1[4] + (((v110 ^ 0xA5) - 122) ^ ((v110 ^ 0x49) + 106) ^ ((v110 ^ 0xF7) - 40)) - 60;
  v1[5] = v1[5] + (((BYTE1(v110) ^ 0xC7) + 99) ^ ((BYTE1(v110) ^ 0xD6) + 116) ^ ((BYTE1(v110) ^ 0x98) + 62)) - 45;
  v1[6] += (((BYTE2(v110) ^ 0x5E) + 46) ^ ((BYTE2(v110) ^ 0xB9) - 53) ^ ((BYTE2(v110) ^ 0x4E) + 62)) + 37;
  v1[7] += (((HIBYTE(v110) ^ 0xDB) - 69) ^ ((HIBYTE(v110) ^ 0xC0) - 94) ^ ((HIBYTE(v110) ^ 0xA6) - 56)) + 35;
  v1[8] = v1[8] + (((v99 ^ 0xA4) - 5) ^ ((v99 ^ 0xDC) - 125) ^ ((v99 ^ 0x18) + 71)) - 63;
  v1[9] = v1[9] + (((BYTE1(v99) ^ 0xCB) + 44) ^ ((BYTE1(v99) ^ 0x9E) + 127) ^ ((BYTE1(v99) ^ 0xE9) + 10)) - 93;
  v1[10] = v1[10] + (((BYTE2(v99) ^ 0x63) + 112) ^ ((BYTE2(v99) ^ 0x2D) + 34) ^ ((BYTE2(v99) ^ 0x3C) + 49)) - 127;
  v1[11] += (((HIBYTE(v99) ^ 0x9D) + 110) ^ ((HIBYTE(v99) ^ 0xAF) + 96) ^ ((HIBYTE(v99) ^ 0x6D) - 98)) + 80;
  v1[12] += (((v96 ^ 0xE2) + 34) ^ ((v96 ^ 0xD0) + 20) ^ ((v96 ^ 0x1F) - 35)) + 17;
  v1[13] = v1[13] + (((BYTE1(v96) ^ 0xB3) + 77) ^ ((BYTE1(v96) ^ 0xC5) + 59) ^ ((BYTE1(v96) ^ 0x89) + 119)) - 1;
  v1[14] = v1[14] + (((BYTE2(v96) ^ 0xFB) - 77) ^ ((BYTE2(v96) ^ 0x96) - 32) ^ ((BYTE2(v96) ^ 0x4F) + 7)) - 108;
  v1[15] = v1[15] + (((HIBYTE(v96) ^ 0x5B) + 62) ^ ((HIBYTE(v96) ^ 0x85) - 28) ^ ((HIBYTE(v96) ^ 0xFD) - 100)) - 70;
  return result;
}

void sub_100A02270(uint64_t a1)
{
  v1 = *(a1 + 16) ^ (297845113 * (((a1 | 0x6D276B2B) - (a1 | 0x92D894D4) - 1831299884) ^ 0x1A1477B5));
  v2 = *(*a1 + 4);
  v4 = v2 - 1051086576;
  v3 = v2 - 1051086576 < 0;
  v5 = 1051086576 - v2;
  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(*(a1 + 24) + 4);
  v8 = v7 - 1051086576;
  v9 = 1051086576 - v7;
  if (v8 < 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v14 = *a1;
  v13 = (193924789 * (&v13 ^ 0xB6BB3266)) ^ (v1 + 1143827234);
  v11 = *(&off_1010A0B50 + v1 - 21054) - 810145054;
  (*&v11[8 * (v1 ^ 0x9CCD)])(&v13);
  if (v6 >= v10)
  {
    v12 = (v10 ^ 0xFFDB8DFF) + 998243328 + ((2 * v10) & 0xFFB71BFE);
  }

  else
  {
    v12 = (v6 ^ 0x7FDB8DFF) - 1149240320 + ((2 * v6) & 0xFFB71BFE);
  }

  __asm { BRAA            X13, X17 }
}

uint64_t sub_100A02438@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v15 = ((v7 - (v8 & v10) + 107) ^ v6) ^ v11;
  *(a1 + 4 * v7) = v14 ^ v13 ^ v15 ^ a4 ^ *(*(a5 + 8 * a2) + 4 * v15 + a3);
  return (*(v12 + 8 * ((28 * (v9 != 0)) ^ (a6 + 214))))();
}

uint64_t sub_100A024F0(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = -16706;
  a1.n128_u8[2] = -66;
  a1.n128_u8[3] = -66;
  a1.n128_u8[4] = -66;
  a1.n128_u8[5] = -66;
  a1.n128_u8[6] = -66;
  a1.n128_u8[7] = -66;
  a2.n128_u16[0] = 24672;
  a2.n128_u8[2] = 96;
  a2.n128_u8[3] = 96;
  a2.n128_u8[4] = 96;
  a2.n128_u8[5] = 96;
  a2.n128_u8[6] = 96;
  a2.n128_u8[7] = 96;
  return (*(v3 + 8 * v2))((v2 + 12686), a1, a2);
}

uint64_t sub_100A02694@<X0>(int a1@<W8>)
{
  v4 = STACK[0x340];
  *(v3 - 160) = (v2 + 205816671) ^ STACK[0x340];
  *(v3 - 120) = a1 - v4 - 1781247979;
  *(v3 - 144) = STACK[0x338];
  *(v3 - 132) = ((a1 - 1712412871) | 0x50) - v4;
  *(v3 - 128) = v4;
  *(v3 - 136) = (a1 - 1712417208) ^ v4;
  *(v3 - 152) = (a1 - 1712412871) ^ v4;
  v5 = (*(v1 + 8 * (a1 ^ 0xE1D3)))(v3 - 160);
  return (*(v1 + 8 * *(v3 - 124)))(v5);
}

uint64_t sub_100A02728@<X0>(int a1@<W0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  v10 = (v8 + (((v4 + 1787) ^ v7) & a2));
  v11 = vaddq_s8(vsubq_s8(*v5, vandq_s8(vaddq_s8(*v5, *v5), a3)), a4);
  *v10 = vaddq_s8(vsubq_s8(v5[-1], vandq_s8(vaddq_s8(v5[-1], v5[-1]), a3)), a4);
  v10[1] = v11;
  return (*(v9 + 8 * (((v6 == 0) * a1) ^ v4)))();
}

uint64_t sub_100A027C8()
{
  *v3 = v0;
  *STACK[0x368] = (*(v2 + 8 * (v1 + 35296)))();
  return (*(v2 + 8 * v1))();
}

uint64_t sub_100A02868@<X0>(int a1@<W8>)
{
  if ((((v2 - 203958493) ^ 0xF3D7F3C3) & a1) == 0x12)
  {
    v4 = 17;
  }

  else
  {
    v4 = 1;
  }

  v5 = (*(v3 + 8 * (v2 ^ 0xD72E)))(v1, v4, *(v1 + 4), 0, 0, 0, 0);
  return (*(v3 + 8 * (v2 | (4 * (((((2 * v5) & 0xFE70FF92) + (v5 ^ 0xFF387FC9)) & ((v2 ^ 0xF3D7EF65) + 203951138)) != 255360972)))))();
}

uint64_t sub_100A02914@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x5C0]) = v5;
  LODWORD(STACK[0x53C]) = STACK[0x368];
  LODWORD(STACK[0x50C]) = STACK[0x340];
  LODWORD(STACK[0x634]) = a1;
  LODWORD(STACK[0x5D4]) = STACK[0x2FC];
  LODWORD(STACK[0x66C]) = v3;
  LODWORD(STACK[0x3CC]) = v6;
  LODWORD(STACK[0x3F8]) = STACK[0x2F8];
  LODWORD(STACK[0x4C4]) = a2;
  LODWORD(STACK[0x4DC]) = STACK[0x2D0];
  LODWORD(STACK[0x538]) = STACK[0x2E4];
  LODWORD(STACK[0x54C]) = STACK[0x30C];
  LOBYTE(STACK[0x61B]) = STACK[0x2D8] & 1;
  return (*(v4 + 8 * v2))();
}

uint64_t sub_100A02988()
{
  v2 = (*(v1 + 8 * (v0 + 2826)))(32);
  STACK[0x680] = v2;
  return (*(v1 + 8 * ((23 * (((v2 == 0) ^ (103 * (((v0 - 106) | 0x42) ^ 0x5F))) & 1)) ^ v0)))();
}

uint64_t sub_100A029F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = *(v9 + 8 * (a8 - 924092609));
  LODWORD(STACK[0x24C]) = v8;
  return v10((a8 + 971142258), 94, 2876489349, 61);
}

uint64_t sub_100A02DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0xEA8]) = 0;
  LODWORD(STACK[0xE18]) = 0;
  LODWORD(STACK[0xDF0]) = 0;
  LODWORD(STACK[0xDE8]) = 0;
  LODWORD(STACK[0xD98]) = 0;
  LODWORD(STACK[0xDF8]) = 0;
  LODWORD(STACK[0xDA8]) = 0;
  LODWORD(STACK[0xD18]) = 0;
  LODWORD(STACK[0xE20]) = 0;
  LODWORD(STACK[0xE10]) = 0;
  LODWORD(STACK[0xDB0]) = 0;
  LODWORD(STACK[0xD28]) = 0;
  LODWORD(STACK[0xDB8]) = 0;
  LODWORD(STACK[0xD88]) = 0;
  LODWORD(STACK[0xDC0]) = 0;
  LODWORD(STACK[0xE28]) = 0;
  LODWORD(STACK[0xD30]) = 0;
  LODWORD(STACK[0xDD8]) = 0;
  LODWORD(STACK[0xD58]) = 0;
  LODWORD(STACK[0xD70]) = 0;
  LODWORD(STACK[0xDE0]) = 0;
  LODWORD(STACK[0xD80]) = 0;
  LODWORD(STACK[0xD00]) = 0;
  LODWORD(STACK[0xD08]) = 0;
  LODWORD(STACK[0xDA0]) = 0;
  LODWORD(STACK[0xD38]) = 0;
  LODWORD(STACK[0xE08]) = 0;
  LODWORD(STACK[0xD20]) = 0;
  v9 = STACK[0xF10];
  v10 = v7 ^ LODWORD(STACK[0x4E0]) ^ *(STACK[0xF10] + 122);
  STACK[0xE88] = (v6 - 1137046093);
  *(v9 + 122) = v10 ^ 0x3B ^ *(STACK[0xF50] + ((((v10 & 9) - 87) ^ ((v10 & 9) + 105) ^ (v6 - 77 + (v10 & 9 ^ 0x28) - 23)) + (((v10 & 9 ^ 0xBB) - 81) ^ ((v10 & 9) - 102) ^ ((v10 & 9 ^ 0xFC) - 22)) - 98));
  STACK[0xC88] = a6 ^ 0xBB0C18CEAFA04FA5;
  v11 = *(v8 + 8 * ((12238 * (v6 == -1659709143)) ^ (v6 - 1137060138)));
  LODWORD(STACK[0xCF8]) = 1;
  LODWORD(STACK[0xD10]) = 1;
  LODWORD(STACK[0xE00]) = 1;
  return v11(4294947698, -22206133, STACK[0xBD8], 0xFFFFF20000000000, 184);
}

uint64_t sub_100A0302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  LODWORD(STACK[0x3B8]) = a6;
  v9 = *(v8 + 8 * (v6 ^ 0x7F80));
  STACK[0x3C8] = a5;
  v10 = v9(1032);
  v11 = *(v7 - 200);
  *(v7 - 216) = 0;
  return (*(v11 + 8 * ((138 * (((v10 == 0) ^ (v6 - 118) ^ 0x55) & 1)) | v6)))();
}

uint64_t sub_100A0316C@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  a1[1] = a2;
  return (*(v5 + 8 * (((v3 != 0) * v4) ^ v2)))();
}

uint64_t sub_100A0338C@<X0>(uint64_t a1@<X7>, _BYTE *a2@<X8>)
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
  return (*(a1 + 8 * (((*(v4 + 848) != 0) * (v2 ^ 0xE722 ^ (v2 + 23330) ^ 0x18E)) ^ v2)))();
}

uint64_t sub_100A034D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x318];
  LOWORD(STACK[0xA26]) = v4;
  return (*(STACK[0x3A8] + 8 * (v5 - 28074)))(a1, a2, a3, a4, v5);
}

uint64_t sub_100A03504()
{
  v4 = *(v0 + 8);
  STACK[0x1E60] = v0 + 8;
  *(v3 - 248) = v4;
  *(v3 - 256) = (v2 + 703924575) ^ (634647737 * ((((2 * (v3 - 256)) | 0x2A2D1C2E) - (v3 - 256) - 353799703) ^ 0x7880A1EB));
  v5 = (*(v1 + 8 * (v2 ^ 0xCC2C)))(v3 - 256);
  STACK[0x1410] = *(v1 + 8 * v2);
  return (*(v1 + 8 * (((v2 + 10995) ^ 0x3C4C) + v2)))(v5);
}

uint64_t sub_100A035C8@<X0>(int a1@<W1>, unsigned int a2@<W8>)
{
  v3 = (a1 - 31952) | 0x220;
  *(&STACK[0x3A0] + a2) ^= *(*(&off_1010A0B50 + (v3 ^ 0x1074)) + a2 - 204973602) ^ 0x8F;
  return (*(v2 + 8 * v3))();
}

void sub_100A0378C()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 12) ^ (1112314453 * ((((2 * v0) | 0xA83162D4) - v0 - 1410904426) ^ 0xBB4E9BB3));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100A03878@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 24);
  v7 = __ROR8__((v6 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v8 = *(a1 + 8 * v3);
  v9 = ((v7 - 0x296E95066F186A7FLL) | 0x7F8CF47A0DDD2A80) - ((v7 - 0x296E95066F186A7FLL) | 0x80730B85F222D57FLL) - 0x7F8CF47A0DDD2A81;
  v10 = v9 ^ 0x78AEED99F1FA1EF2;
  v9 ^= 0xCC25BA5576C6B2FCLL;
  v11 = __ROR8__(v10, 8);
  v12 = __ROR8__((((2 * (v11 + v9)) & 0x4757308570142184) - (v11 + v9) - 0x23AB9842B80A10C3) ^ 0xC8EE60F7686D80D8, 8);
  v13 = (((2 * (v11 + v9)) & 0x4757308570142184) - (v11 + v9) - 0x23AB9842B80A10C3) ^ 0xC8EE60F7686D80D8 ^ __ROR8__(v9, 61);
  v14 = (v12 + v13) ^ 0x2C378843F9A46E98;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ v4;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x82B08017BF43C069;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (((2 * (v20 + v19)) | 0x6FA00F307AD285CELL) - (v20 + v19) + 0x482FF867C296BD19) ^ 0x1D4DDD22DF8D969BLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = __ROR8__(v21, 8);
  v24 = (((2 * (v23 + v22)) | 0x43EA8C014D72D45CLL) - (v23 + v22) + 0x5E0AB9FF594695D2) ^ 0x2E4767435862069DLL;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v6[10] = (((v26 + v25 - ((2 * (v26 + v25)) & 0x2D8EF7625F92FAD0) + 0x16C77BB12FC97D68) ^ 0x8DDB0F964AD77270) >> (8 * ((v6 + 10) & 7u))) ^ HIBYTE(a2) ^ 0xD4;
  v27 = __ROR8__((v6 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = -2 - (((0x296E95066F186A7ELL - v27) | 0x812ECE5E5373C3DBLL) + ((v27 - 0x296E95066F186A7FLL) | 0x7ED131A1AC8C3C24));
  v29 = v28 ^ 0x860CD7BDAF54F7A9;
  v28 ^= 0x3287807128685BA7uLL;
  v30 = (__ROR8__(v29, 8) + v28) ^ 0x14BA074A2F986FE5;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x2C378843F9A46E98;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  v35 = (((2 * (v34 + v33)) | 0x32AE8F99AB71EA50) - (v34 + v33) - 0x195747CCD5B8F528) ^ 0xA42A6A2514B25442;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((v37 + v36) | 0x7320A01F0299C0C1) - ((v37 + v36) | 0x8CDF5FE0FD663F3ELL) - 0x7320A01F0299C0C2) ^ 0xF1902008BDDA00A8;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0x1E2ADB414A9307EELL) - 0x70EA925F5AB67C09) ^ 0x2588B71A47AD578BLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0x751C15CDE44619C2) - (v43 + v42) + 0x4571F5190DDCF31ELL) ^ 0xCAC3D45AF3079FADLL;
  v45 = __ROR8__(v44, 8);
  v46 = __ROR8__(v42, 61);
  v6[11] = (((v45 + (v44 ^ v46) - ((2 * (v45 + (v44 ^ v46))) & 0x52D1D86046E744A6) + 0x2968EC302373A253) ^ 0xB2749817466DAD4BLL) >> (8 * ((v6 + 11) & 7u))) ^ BYTE6(a2) ^ 0xA5;
  v47 = __ROR8__((v6 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = (0x296E95066F186A7ELL - v47) & 0x794A1A89743498B1 | (v47 - 0x296E95066F186A7FLL) & 0x84B5E5768BCB674ELL;
  v49 = v48 ^ 0x7C68036A8813ACC3;
  v48 ^= 0xC8E354A60F2F00CDLL;
  v50 = (__ROR8__(v49, 8) + v48) ^ 0x14BA074A2F986FE5;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x2C378843F9A46E98;
  v53 = __ROR8__(v52, 8);
  v54 = v52 ^ __ROR8__(v51, 61);
  v55 = (((2 * (v53 + v54)) & 0xA249D6CC0BCCA700) - (v53 + v54) - 0x5124EB6605E65381) ^ 0x13A639703B130D15;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x82B08017BF43C069;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xAA9DDABAE2E4D47CLL;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x8FB22143FEDB6CB3;
  v6[12] = (((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v60, 61))) ^ v5) >> (8 * ((v6 + 12) & 7u))) ^ BYTE5(a2) ^ 0x3E;
  v62 = __ROR8__((v6 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v63 = ((0x296E95066F186A7ELL - v62) & 0x696F4673D36DE29DLL) + v62 - 0x296E95066F186A7FLL - ((v62 - 0x296E95066F186A7FLL) & 0x6D6F4673D36DE29DLL);
  v64 = v63 ^ 0x6A4D5F902F4AD6EFLL;
  v63 ^= 0xDEC6085CA8767AE1;
  v65 = __ROR8__(v64, 8);
  v66 = (v65 + v63 - ((2 * (v65 + v63)) & 0x1B3949B08886F780) + 0xD9CA4D844437BC0) ^ 0x1926A3926BDB1425;
  v67 = v66 ^ __ROR8__(v63, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x2C378843F9A46E98;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((v70 + v69) | 0xD4F2363B6EF523) - ((v70 + v69) | 0xFF2B0DC9C4910ADCLL) - 0xD4F2363B6EF524) ^ 0xBDA9DFDFFA645449;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = __ROR8__(v71, 8);
  v74 = __ROR8__((((v73 + v72) & 0x91B969E0C19E5375 ^ 0x9008600000825375) + ((v73 + v72) & 0x6E46961F3E61AC8ALL ^ 0x2A44140330410C81) - 1) ^ 0x38FCF4148F809F9CLL, 8);
  v75 = (((v73 + v72) & 0x91B969E0C19E5375 ^ 0x9008600000825375) + ((v73 + v72) & 0x6E46961F3E61AC8ALL ^ 0x2A44140330410C81) - 1) ^ 0x38FCF4148F809F9CLL ^ __ROR8__(v72, 61);
  v76 = (v74 + v75) ^ 0xAA9DDABAE2E4D47CLL;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (v78 + v77 - ((2 * (v78 + v77)) & 0xA35BB6A5474A5D2CLL) - 0x2E5224AD5C5AD16ALL) ^ 0x5E1FFA115D7E4225;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  LOBYTE(v25) = (((((2 * ((v81 + v80) ^ 0xD3B9B851F2097674)) & 0x6AEA922499CF30AALL) - ((v81 + v80) ^ 0xD3B9B851F2097674) + 0x4A8AB6EDB31867AALL) ^ 0x22F7A9B240F1EC6) >> (8 * ((v6 + 13) & 7u))) ^ BYTE4(a2) ^ 0x4E;
  v82 = __ROR8__((v6 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v6[13] = v25;
  v83 = -2 - (((0x296E95066F186A7ELL - v82) | 0xE66D92511BC5A5BLL) + ((v82 + 0x6916AF990E79581) | 0xF19926DAEE43A5A4));
  v84 = v83 ^ 0x944C0C6ED9B6E29;
  v83 ^= 0xBDCF970A6AA7C227;
  v85 = __ROR8__(v84, 8);
  v86 = (((2 * (v85 + v83)) | 0xB84EA8E40647B16) - (v85 + v83) - 0x5C2754720323D8BLL) ^ 0x1178720D0FAA526ELL;
  v87 = v86 ^ __ROR8__(v83, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0x2C378843F9A46E98;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = __ROR8__((((2 * (v90 + v89)) | 0x44A18314D53B083ELL) - (v90 + v89) - 0x2250C18A6A9D841FLL) ^ 0x9F2DEC63AB972575, 8);
  v92 = (((2 * (v90 + v89)) | 0x44A18314D53B083ELL) - (v90 + v89) - 0x2250C18A6A9D841FLL) ^ 0x9F2DEC63AB972575 ^ __ROR8__(v89, 61);
  v93 = (v91 + v92 - ((2 * (v91 + v92)) & 0x6FB26939647901DALL) + 0x37D9349CB23C80EDLL) ^ 0xB569B48B0D7F4084;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (((2 * (v95 + v94)) | 0x106BFCB5893A8DF0) - (v95 + v94) + 0x77CA01A53B62B908) ^ 0x22A824E026799284;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (((2 * (v98 + v97)) | 0x80494BCDB9BD7234) - (v98 + v97) + 0x3FDB5A19232146E6) ^ 0x4F9684A52205D5A9;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  v6[14] = (((((2 * (v101 + v100)) & 0x1E5C145EFE2F4014) - (v101 + v100) + 0x70D1F5D080E85FF5) ^ 0xEBCD81F7E5F650EDLL) >> (8 * ((v6 + 14) & 7u))) ^ BYTE3(a2) ^ 0x27;
  v102 = __ROR8__((v6 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v103 = (0x296E95066F186A7ELL - v102) & 0x680551F87DC54615 | (v102 - 0x296E95066F186A7FLL) & 0x95FAAE07823AB9EALL;
  v104 = v103 ^ 0x6D27481B81E27267;
  v103 ^= 0xD9AC1FD706DEDE69;
  v105 = (__ROR8__(v104, 8) + v103) ^ 0x14BA074A2F986FE5;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((v107 + v106) & 0xB90C1C681EE8883BLL ^ 0x90080C481068080ALL) + ((v107 + v106) & 0x46F3E397E11777C4 ^ 0x42C00380601273C1) - 1) ^ 0xFEFF878B89DE1552;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = __ROR8__((((2 * (v110 + v109)) & 0x56F7B2AC5F994E46) - (v110 + v109) - 0x2B7BD9562FCCA724) ^ 0x69F90B401139F9B6, 8);
  v112 = (((2 * (v110 + v109)) & 0x56F7B2AC5F994E46) - (v110 + v109) - 0x2B7BD9562FCCA724) ^ 0x69F90B401139F9B6 ^ __ROR8__(v109, 61);
  v113 = (((v111 + v112) ^ 0xA671FAF5A6DC8D77 | 0x988BE54C1108E42CLL) - ((v111 + v112) ^ 0xA671FAF5A6DC8D77 | 0x67741AB3EEF71BD3) + 0x67741AB3EEF71BD3) ^ 0xBC4A9FAE0897A932;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((2 * (v115 + v114)) & 0xF5BA5EC2CE3F62A4) - (v115 + v114) + 0x522D09E98E04EADLL) ^ 0xAFBF0A247A049AD1;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = __ROR8__(v116, 8);
  v6[15] = (((__ROR8__((v118 + v117 - ((2 * (v118 + v117)) & 0x939EF87BFA8DDB10) - 0x363083C202B91278) ^ 0x467D5D7E039D813BLL, 8) + ((v118 + v117 - ((2 * (v118 + v117)) & 0x939EF87BFA8DDB10) - 0x363083C202B91278) ^ 0x467D5D7E039D813BLL ^ __ROR8__(v117, 61))) ^ v5) >> (8 * ((v6 + 15) & 7u))) ^ BYTE2(a2) ^ 0x30;
  v119 = __ROR8__((v6 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v120 = ((2 * (v119 - 0x296E95066F186A7FLL)) | 0xFA59C6CB8F42CD78) - (v119 - 0x296E95066F186A7FLL) + 0x2D31C9A385E9944;
  v121 = v120 ^ 0xFA0EFA863B8652CELL;
  v120 ^= 0x4E85AD4ABCBAFEC0uLL;
  v122 = (__ROR8__(v121, 8) + v120) ^ 0x14BA074A2F986FE5;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0x2C378843F9A46E98;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ v4;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (v128 + v127 - ((2 * (v128 + v127)) & 0x5542AB1B317F268CLL) + 0x2AA1558D98BF9346) ^ 0xA811D59A27FC532FLL;
  v130 = v129 ^ __ROR8__(v127, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0xAA9DDABAE2E4D47CLL;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0x8FB22143FEDB6CB3;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = __ROR8__(v133, 8);
  v6[16] = (((((2 * (v135 + v134)) | 0x3FA3A1DB0D738C12) - (v135 + v134) + 0x602E2F12794639F7) ^ 0x4CDA4CAE3A7C911) >> (8 * ((v6 + 16) & 7u))) ^ BYTE1(a2) ^ 0x82;
  v136 = (__ROR8__((v6 + 17) & 0xFFFFFFFFFFFFFFF8, 8) - 0x296E95066F186A7FLL) & 0xF9FFFFFFFFFFFFFFLL;
  v137 = v136 ^ 0x12219E3FC273472;
  v136 ^= 0xB5A94E2F7B1B987CLL;
  v138 = __ROR8__(v137, 8);
  v139 = __ROR8__((((2 * (v138 + v136)) & 0xF7A4AF9285CC9B58) - (v138 + v136) - 0x7BD257C942E64DADLL) ^ 0x9097AF7C9281DDB6, 8);
  v140 = (((2 * (v138 + v136)) & 0xF7A4AF9285CC9B58) - (v138 + v136) - 0x7BD257C942E64DADLL) ^ 0x9097AF7C9281DDB6 ^ __ROR8__(v136, 61);
  v141 = (v139 + v140) ^ 0x2C378843F9A46E98;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ v4;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0x82B08017BF43C069;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = (__ROR8__(v145, 8) + v146) ^ 0xAA9DDABAE2E4D47CLL;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0x8FB22143FEDB6CB3;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v6[17] = (((((2 * (v151 + v150)) | 0x1729776ADB68C76ALL) - (v151 + v150) + 0x746B444A924B9C4BLL) ^ 0x1088CF9208AA6CADLL) >> (8 * ((v6 + 17) & 7u))) ^ a2 ^ 0xB3;
  return v8(a1);
}

uint64_t sub_100A04880@<X0>(int a1@<W8>)
{
  v6 = (v2 - 23970) | 0x61C1;
  v7 = 139493411 * ((v5 - 160 - 2 * ((v5 - 160) & 0x2DA38E58) - 1381790116) ^ 0xA18E6F19);
  *(v5 - 136) = v1;
  *(v5 - 124) = -32733 * ((v5 - 160 - 2 * ((v5 - 160) & 0x8E58) - 29092) ^ 0x6F19) + 27993;
  *(v5 - 152) = v5 - 164;
  *(v5 - 128) = v7 + 1945538087 * a1 + 777030313 + ((v6 - 14263) | 0x8160);
  *(v5 - 160) = v6 - v7 + 20359;
  *(v5 - 144) = v7 - 399939611;
  v8 = (*(v3 + 8 * (v6 + 26946)))(v5 - 160);
  *v4 = *(v5 - 120);
  return (*(v3 + 8 * v6))(v8);
}

uint64_t sub_100A04A6C@<X0>(int a1@<W8>)
{
  *(v3 + 1208) = *(v2 + 8 * a1);
  v4 = (*(v2 + 8 * (v1 + 16946)))(112);
  STACK[0x808] = v4;
  return (*(v2 + 8 * ((2019 * (v4 != 0)) ^ (v1 - 15490))))();
}

uint64_t sub_100A04B7C()
{
  v7 = v5 - 1;
  STACK[0x548] = v7;
  *(v0 + v7) = (v4 ^ ((v4 ^ 0xFC) - 46) ^ ((v4 ^ 0x85) - 87) ^ (v2 - 78 + (v4 ^ 0xD0)) ^ ((v4 ^ 0x7B) + 87) ^ 0x68) * (v4 + 63);
  if (v3 < 0x16C5C33C != STACK[0x548] > 0xFFFFFFFFE93A3CC3)
  {
    v8 = STACK[0x548] > 0xFFFFFFFFE93A3CC3;
  }

  else
  {
    v8 = STACK[0x548] + 382059324 > v3;
  }

  return (*(v6 + 8 * ((79 * v8) ^ v1)))();
}

uint64_t sub_100A04C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[64] = 0;
  STACK[0x610] = 0x451AF1BD62FF9D5ELL;
  v10[87] = v8;
  LODWORD(STACK[0x848]) = 444589199;
  v10[27] = &STACK[0x830];
  LODWORD(STACK[0x61C]) = 1634195529;
  return (*(a8 + 8 * v9))();
}

uint64_t sub_100A04D54@<X0>(uint64_t a1@<X7>, int a2@<W8>)
{
  *v4 = v3;
  *(v3 + 8) = *(v2 + 8);
  *(v2 + 8) = v3;
  return (*(a1 + 8 * (((a2 + 673247992) | 0x1048214) ^ ((((a2 + 673247992) | 0x1048214) - 690321236) | 0x2892) ^ 0x292543A3 ^ (14807 * (((a2 + 673247992) | 0x1048214) != -1837453375)))))();
}

uint64_t sub_100A04DE8@<X0>(int a1@<W8>)
{
  v8 = v5 + v2 > a1;
  if (a1 < v1 != v5 > v3)
  {
    v8 = v5 > v3;
  }

  return (*(v6 + 8 * ((v8 * v4) ^ v7)))();
}

uint64_t sub_100A05004()
{
  v2[68] = 0;
  v2[74] = 0x2882B6585C441805;
  v2[70] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((v0 ^ 0x1116) + v0)))();
}

uint64_t sub_100A050A4()
{
  v3 = *(v2 + 904);
  *(v2 + 1000) = *(v1 + 8 * (v0 - 5113));
  return (*(v1 + 8 * ((23327 * ((v0 - 5113) ^ 0x1045) - 38042) ^ (v0 - 5113))))(v3);
}

uint64_t sub_100A05168@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W7>, uint64_t a8@<X8>)
{
  *(v18 + (v17 ^ 0xE9D5C711)) ^= *(a8 + (((v17 ^ 0x4D637F6E) - 1298366318) ^ ((v17 ^ 0xEE7D6576) + 293771914) ^ (((a2 - 17040) ^ v17 ^ 0x4ACBEFE7) - 1254874377)) - a3);
  v22 = (((v17 ^ 0x6A8F528C) - 1787777676) ^ ((v17 ^ 0x75B29727) + v19) ^ ((v17 ^ v20) + v21)) + v11;
  v23 = ((v22 ^ v12) + v13) ^ v22 ^ ((v22 ^ a1) + v8) ^ ((v22 ^ a4) + a5) ^ ((v22 ^ 0xFFFFFFFD) + a6);
  v24 = (((v23 ^ a7) + 346848828) ^ ((v23 ^ v14) + 648167274) ^ ((v23 ^ v16) + 606370237)) + 90448312;
  v25 = (v9 < v10) ^ (v24 < v10);
  v26 = v24 < v9;
  if (v25)
  {
    v26 = v9 < v10;
  }

  return (*(v15 + 8 * ((248 * !v26) ^ a2)))();
}

uint64_t sub_100A05464()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xFB41)))((7528 * (v0 ^ 0x31DCu) - 371903479) ^ LODWORD(STACK[0x964]));
  STACK[0xAB8] = v2;
  if (v2)
  {
    v3 = -371865839;
  }

  else
  {
    v3 = 371891397;
  }

  LODWORD(STACK[0xAC4]) = v3;
  return (*(v1 + 8 * ((984 * (((v0 ^ 0x306F ^ (v2 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_100A05560@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  LODWORD(v209) = 0;
  HIDWORD(v209) = 22709 * (v17 ^ 0x1F13);
  v20 = v18 & 0xFFFFFFF5 ^ (HIDWORD(v209) - 1590243807);
  *(v19 - 156) = v20;
  v221 = v18 & 0xFFFFFFF4 ^ 0xA1377F8BLL;
  LOBYTE(v20) = (*(a1 + v20) ^ 0x6D) + *(a9 + (*(a1 + v20) ^ 0xE8)) - 112;
  v21 = *(a1 + v221);
  v22 = v18 & ((v17 + 37162) ^ 0xFFFF4FC8) ^ 0xA1377F8DLL;
  *(v19 - 152) = v22;
  v23 = (((v20 - (v20 ^ 0x16)) ^ 0xFC) + v20);
  v24 = *(a6 + (v21 ^ 0x9B));
  LODWORD(v21) = (v24 ^ 0x9EECFC21) & ~(v23 << 8);
  v25 = ((v23 & 3) << 8) | 0x20100085;
  v26 = *(a1 + v22);
  v27 = v25 ^ v21;
  v28 = v18;
  v29 = v18 & 0xFFFFFFFB ^ 0xA1377F8DLL;
  *(v19 - 168) = v29;
  LODWORD(v21) = *(a7 + (v26 ^ 0xA0)) + (v26 ^ 0xBE) - 67;
  v30 = *(a1 + v29);
  v31 = v18 & 0xFFFFFFFD ^ 0xA1377F8BLL;
  *(v19 - 184) = v31;
  v32 = (v21 ^ 0xB) << 24;
  LODWORD(v30) = ((*(a7 + (v30 ^ 0x4E)) + (v30 ^ 0x50) - 67) ^ 0xDE) << 24;
  v33 = (*(a1 + v31) ^ 0x28) + *(a9 + (*(a1 + v31) ^ 0xADLL)) - 112;
  v34 = v28 & 0xFFFFFFF7 ^ 0xA1377F89;
  *(v19 - 176) = v34;
  v217 = v28 & 0xFFFFFFF6 ^ 0xA1377F89;
  v35 = (*(a8 + (*(a1 + v217) ^ 0x3ALL)) ^ *(a1 + v217)) << 16;
  v36 = ((((((*(a7 + (*(a1 + v34) ^ 0xD5)) + (*(a1 + v34) ^ 0xCB) - 67) ^ 0xFFFFFF81) << 24) ^ 0x7A20C3D9) & (v35 ^ 0xFF6FDBD9) | v35 & 0xFFDFFFFF) ^ 0x25560AAC) & (v27 ^ 0x41033512);
  v222 = v28 & 0xFFFFFFF1 ^ 0xA1377F8FLL;
  v37 = v28;
  v219 = v28 & 0xFFFFFFFC ^ 0xA1377F8BLL;
  v38 = *(a6 + (*(a1 + v219) ^ 0x6ALL));
  v218 = v37 & 0xFFFFFFF9 ^ 0xA1377F8FLL;
  v220 = v37 ^ 0xA1377F89;
  v39 = ((((*(a1 + v218) ^ 0xC2) + *(a9 + (*(a1 + v218) ^ 0x47)) - 112) << 8) ^ 0xD6CCF032) & (v30 ^ 0x1EEDFFBA) | v30 & 0x29000000;
  v215 = v37 & 0xFFFFFFF2 ^ 0xA1377F8DLL;
  v213 = v37 & 0xFFFFFFF0 ^ 0xA1377F8FLL;
  v40 = *(a6 + (*(a1 + v213) ^ 0xA3));
  v41 = (((*(a8 + (*(a1 + v215) ^ 0x60)) ^ *(a1 + v215)) << 16) ^ 0x14398E1) & ((((((*(a1 + v222) ^ 0xA0) + *(a9 + (*(a1 + v222) ^ 0x25)) - 112) << 8) ^ 0xB3347A39) & (v32 ^ 0x7E3FFFFF) | v32 & 0x4C000000) ^ 0x74CB19C0) ^ (((((*(a1 + v222) ^ 0xA0) + *(a9 + (*(a1 + v222) ^ 0x25)) - 112) << 8) ^ 0xB3347A39) & (v32 ^ 0x7E3FFFFF) & 0xFE306718 | v32 & 0x4C000000);
  v214 = v37 & 0xFFFFFFFE ^ 0xA1377F89;
  v42 = *(a8 + (*(a1 + v214) ^ 0x26)) ^ *(a1 + v214);
  HIDWORD(v211) = v37;
  v216 = v37 & 0xFFFFFFFA ^ 0xA1377F8DLL;
  LODWORD(v30) = ((v42 << 16) ^ 0xFF3FFFFF) & ((((*(a7 + (*(a1 + v220) ^ 0x52)) + (*(a1 + v220) ^ 0x4C) - 67) ^ 0xE5) << 24) ^ 0xEB42A6A2) | (v42 << 16) & 0xBD0000;
  v43 = (v30 ^ 0x5205595D) & (((v38 ^ 0xA293FF38) & ((v33 << 8) ^ 0xA293937A) | v38 & 0x85) ^ 0xF2DCE06C) ^ v30 & 0xAFB00220;
  v212 = v37 & 0xFFFFFFF8 ^ 0xA1377F8FLL;
  v44 = *(a6 + (*(a1 + v212) ^ 0x4CLL));
  v45 = (((((*(a8 + (*(a1 + v216) ^ 0xE7)) ^ *(a1 + v216)) << 16) ^ 0xCDA92066) & (v44 ^ 0xCFFF7B2C) | v44 & 0x99999999) ^ 0x1BA1949C) & (v39 ^ 0x9337BCD);
  v46 = *(&off_1010A0B50 + v17 - 6804) - 1159622395;
  v47 = *(&off_1010A0B50 + v17 - 5501) - 1654166826;
  v48 = *(&off_1010A0B50 + v17 - 6628) - 90876107;
  v49 = v36 ^ v27 & 0x9000368A;
  v50 = *(&off_1010A0B50 + (v17 ^ 0x10BC)) - 1338526283;
  v51 = ((BYTE2(v41) ^ 0xBDEF7646) - 321262649 + *&v46[4 * (BYTE2(v41) ^ 0x21)]) ^ *&v47[4 * (HIBYTE(v43) ^ 0xFF)] ^ *&v48[4 * (v44 ^ 0x2E)] ^ (*&v50[4 * (BYTE1(v49) ^ 0x3A)] - 1748740096);
  v52 = v45 ^ v39 & 0x29044B00;
  v53 = *&v47[4 * (HIBYTE(v52) ^ 0xA)] ^ *&v48[4 * (v24 ^ 0x39)] ^ (*&v50[4 * (((*(a1 + v222) ^ 0xA0) + *(a9 + (*(a1 + v222) ^ 0x25)) - 112) ^ 0xDB)] - 1748740096) ^ (*&v46[4 * (BYTE2(v43) ^ 0xEF)] + (BYTE2(v43) ^ 0xBDEF7688) - 321262649) ^ (v36 ^ v27 & 0x8A);
  HIDWORD(v210) = (v41 ^ 0x3C932B53) & (v40 ^ 0xFFFFFFBC) ^ v40 & 0x55555555;
  v54 = *&v47[4 * (HIBYTE(v49) ^ 0x28)] ^ ((~v32 & 0x39 ^ 0xC0) & 0xE1 ^ ~v32 & 0x18 ^ 0x53) & (v40 ^ 0xBC) ^ v40 & 0x55 ^ *&v48[4 * (v40 ^ 0x88)] ^ (*&v50[4 * (v33 ^ 0xA1)] - 1748740096) ^ ((BYTE2(v52) ^ 0xBDEF76CC) - 321262649 + *&v46[4 * (BYTE2(v52) ^ 0xAB)]);
  LODWORD(v44) = *&v47[4 * (HIBYTE(v41) ^ 0x69)];
  HIDWORD(a17) = *(v19 - 120) < 0x41185571u;
  v55 = (v44 & 0x20000) == 0;
  v56 = v44 ^ 0xC722F57B;
  if (v55)
  {
    v57 = -131072;
  }

  else
  {
    v57 = 0x20000;
  }

  LODWORD(v210) = v43;
  v58 = ((BYTE2(v36) ^ 0xBDEF7667) - 321262649 + *&v46[4 * BYTE2(v36)]) ^ v43 ^ *&v48[4 * (v38 ^ 0x4A)] ^ (*&v50[4 * (((*(a1 + v218) ^ 0xC2) + *(a9 + (*(a1 + v218) ^ 0x47)) - 112) ^ 0xE7)] - 1748740096) ^ (v57 + v56);
  v59 = *&v48[4 * (v53 ^ HIBYTE(v52) ^ 0xDB)] ^ v53 ^ HIBYTE(v52);
  v60 = *&v47[4 * (HIBYTE(v51) ^ 0x3A)] ^ HIBYTE(v51) ^ (*&v50[4 * (BYTE1(v54) ^ 0xA7)] - 1748740096) ^ (*&v46[4 * ((v58 >> 15) | 0xFFFFFFD7) + 84 + 4 * (BYTE2(v58) ^ 0x5F)] + (BYTE2(v58) ^ 0xBDEF762C) - 321262649);
  v61 = (-(v60 ^ 0x46BD3057) ^ ((v59 ^ 0xE5043857) - (v59 ^ 0xA3B90800 ^ v60)) ^ 0x7B5395E ^ ((v60 ^ 0x46BD3057) - ((2 * (v60 ^ 0x46BD3057)) & 0xF6A72BC) + 129317214)) + (v59 ^ 0xE5043857);
  v62 = v54 ^ HIBYTE(v49);
  v63 = ((BYTE2(v51) ^ 0xBDEF76F6) - 321262649 + *&v46[4 * (BYTE2(v51) ^ 0x91)]) ^ *&v47[4 * (HIBYTE(v53) ^ 0x8B)] ^ *&v48[4 * (v62 ^ 0xE2)] ^ (*&v50[4 * (BYTE1(v58) ^ 0x2D)] - 1748740096);
  v64 = v62 ^ HIBYTE(v53);
  v65 = HIBYTE(v54);
  v66 = v51 ^ v45;
  v67 = ((BYTE2(v53) ^ 0xBDEF764F) - 321262649 + *&v46[4 * (BYTE2(v53) ^ 0x28)]) ^ *&v47[4 * (HIBYTE(v54) ^ 0x1F)] ^ (*&v50[4 * (BYTE1(v51) ^ 0xC5)] - 1748740096) ^ __ROR4__(__ROR4__(v58 ^ HIBYTE(v41) ^ 0x5807ECBF ^ *&v48[4 * (v58 ^ HIBYTE(v41) ^ 0x11)], 16) ^ 0x60D340AE, 16);
  v68 = HIBYTE(v58) ^ v66 ^ HIBYTE(v43) ^ *&v47[4 * (HIBYTE(v58) ^ 0xFF)] ^ ((BYTE2(v54) ^ 0xBDEF762B) - 321262649 + *&v46[4 * (BYTE2(v54) ^ 0x4C)]) ^ (*&v50[4 * (BYTE1(v53) ^ 0x31)] - 1748740096) ^ *&v48[4 * (v66 ^ HIBYTE(v43) ^ 0xD)];
  v69 = ((v68 & 0xF9B517D6 ^ 0xFCAF8E9) - (v68 ^ 0xDC078E1)) ^ v68 & 0xF9B517D6;
  v70 = v64 ^ v63;
  v71 = *&v48[4 * ((v64 ^ v63) ^ 0x2D)];
  HIDWORD(v72) = v71 ^ v70;
  LODWORD(v72) = v71 ^ v70 & 0xF8;
  v73 = HIBYTE(v61);
  v74 = (*&v50[4 * (BYTE1(v67) ^ 0x1B)] - 1748740096) ^ *&v47[4 * (HIBYTE(v61) ^ 0x84)] ^ __ROR4__((v72 >> 3) ^ 0x5A7AA2C1, 29) ^ (*&v46[4 * (BYTE2(v69) ^ 0x94)] + (BYTE2(v69) ^ 0xBDEF76F3) - 321262649);
  v75 = HIBYTE(v63);
  v76 = v67 ^ v65;
  v77 = ((BYTE2(v61) ^ 0xBDEF76EC) - 321262649 + *&v46[4 * (BYTE2(v61) ^ 0x8B)]) ^ *&v47[4 * (HIBYTE(v63) ^ 0x85)] ^ *&v48[4 * (v76 ^ 0xA8)] ^ (*&v50[4 * (BYTE1(v69) ^ 0xFE)] - 1748740096);
  v78 = (BYTE2(v63) ^ 0xBDEF7667) - 321262649 + *&v46[4 * BYTE2(v63)];
  v79 = HIBYTE(v67);
  v80 = *&v47[4 * (HIBYTE(v67) ^ 0xB8)];
  v81 = ~v80 & 0x40000;
  v55 = (v78 & v81) == 0;
  v82 = v78 + v81;
  v83 = 2 * v81;
  if (v55)
  {
    v84 = 0;
  }

  else
  {
    v84 = -v83;
  }

  v85 = *&v48[4 * (v69 ^ 0x51)] ^ v80 & 0xFFFBFFFF ^ (v82 + v84) ^ (*&v50[4 * (BYTE1(v61) ^ 0x25)] - 1748740096);
  v86 = ((BYTE2(v67) ^ 0xBDEF7613) - 321262649 + *&v46[4 * (BYTE2(v67) ^ 0x74)]) ^ (*&v50[4 * (BYTE1(v63) ^ 0xF5)] - 1748740096) ^ *&v47[4 * (HIBYTE(v69) ^ 0x11)] ^ *&v48[4 * (v61 ^ 0x70)];
  v87 = HIBYTE(v69) ^ v61;
  v88 = *&v47[4 * (HIBYTE(v74) ^ 0x9F)] ^ HIBYTE(v74) ^ (*&v46[4 * (BYTE2(v86) ^ 0xFA)] + (BYTE2(v86) ^ 0xEE) + (((BYTE2(v86) ^ 0xEE) - (BYTE2(v86) ^ 0xBDEF769D)) ^ 0xFFFFFFFE) - 321262649) ^ (*&v50[4 * (-(BYTE1(v85) ^ 0x8D) ^ (238 - (BYTE1(v85) ^ 0x63)) ^ 0x167D547D ^ ((BYTE1(v85) ^ 0x8D) - 2 * ((BYTE1(v85) ^ 0x8D) & 0x7F ^ (v85 >> 8) & 2) + 377312381)) + 952] - 1748740096);
  v89 = *&v48[4 * (v76 ^ v75 ^ v77 ^ 0x84)] ^ v76 ^ v75 ^ v77;
  v90 = v89 & 0x40;
  v55 = (v90 & ~v88) == 0;
  v91 = v88 ^ 0x46BD30F2;
  if (!v55)
  {
    v90 = -v90;
  }

  v92 = (v90 + v91) ^ v89 & 0xFFFFFFBF;
  v93 = (v85 ^ v69) ^ v79;
  v94 = ((BYTE2(v74) ^ 0xBDEF76EE) - 321262649 + *&v46[4 * (BYTE2(v74) ^ 0x89)]) ^ *&v47[4 * (HIBYTE(v77) ^ 0x96)] ^ *&v48[4 * (v93 ^ 0x1B)] ^ (*&v50[4 * (BYTE1(v86) ^ 0xE8)] - 1748740096);
  v95 = *&v50[4 * (BYTE1(v74) ^ 0x48)];
  v96 = ((2 * (v95 ^ 0xFA4F63A9)) ^ 0x64BE7648) & (v95 ^ 0xFA4F63A9) ^ (2 * (v95 ^ 0xFA4F63A9)) & 0x325F3B24;
  v97 = 2 * (v95 & 0xC810588D);
  v98 = (v96 ^ 0x20022200) & (4 * (v97 & (v95 ^ 0xEA4F52A9) ^ v95 & 0xC810588D)) ^ v97 & (v95 ^ 0xEA4F52A9) ^ v95 & 0xC810588D;
  v99 = ((4 * (v96 ^ 0x12410924)) ^ 0xC97CEC90) & (v96 ^ 0x12410924) ^ (4 * (v96 ^ 0x12410924)) & 0x325F3B20;
  v100 = (v99 ^ 0x5C2800) & (16 * v98) ^ v98;
  v101 = ((16 * (v99 ^ 0x32031324)) ^ 0x25F3B240) & (v99 ^ 0x32031324) ^ (16 * (v99 ^ 0x32031324)) & 0x325F3B00;
  v102 = v100 ^ 0x325F3B24 ^ (v101 ^ 0x20533200) & (v100 << 8);
  v103 = (v102 << 16) & 0x22590000 ^ v102 ^ ((v102 << 16) ^ 0x23000000) & (((v101 ^ 0x120C0924) << 8) & 0x325F0000 ^ 0x20400000 ^ (((v101 ^ 0x120C0924) << 8) ^ 0x1F3B0000) & (v101 ^ 0x120C0924));
  v104 = v97 & (v95 ^ 0x49FCCFEB) ^ v95 & 0xC810588D ^ (v97 & 0x80209102 | 0x800244);
  v105 = (2 * (v95 ^ 0x49FCCFEB)) & 0x81EC9766 ^ 0x80249122 ^ ((2 * (v95 ^ 0x49FCCFEB)) ^ 0x3D92ECC) & (v95 ^ 0x49FCCFEB);
  v106 = (4 * v104) & 0xC08764 ^ v104 ^ ((4 * v104) ^ 0x2000910) & v105;
  v107 = (4 * v105) & 0x81EC9760 ^ 0x804C8266 ^ ((4 * v105) ^ 0x7B25D98) & v105;
  v108 = (16 * v106) & 0x81EC9760 ^ v106 ^ ((16 * v106) ^ 0x8003440) & v107;
  v109 = (16 * v107) & 0x81EC9760 ^ 0x81248106 ^ ((16 * v107) ^ 0x1EC97660) & v107;
  v110 = v108 ^ (v108 << 8) & 0x81EC9700 ^ ((v108 << 8) ^ 0x80170400) & v109;
  v111 = (v95 ^ (2 * (((v110 ^ 0x1688462) << 16) & 0x1EC0000 ^ v110 ^ 0x1688462 ^ (((v110 ^ 0x1688462) << 16) ^ 0x17660000) & ((v109 << 8) & 0x1EC0000 ^ 0x1680000 ^ ((v109 << 8) ^ 0x6C970000) & v109))) ^ 0x6B28932) + (((4 * v103) ^ (2 * v95)) & 0x9F67FEE6 ^ 0x91445C82);
  LOBYTE(v95) = v87 ^ v86;
  v112 = ((BYTE2(v77) ^ 0xBDEF76EC) - 321262649 + *&v46[4 * (BYTE2(v77) ^ 0x8B)]) ^ *&v47[4 * (HIBYTE(v85) ^ 0x11)] ^ *&v48[4 * ((v87 ^ v86) ^ 0x7C)] ^ v111;
  v113 = v74 ^ v73;
  v114 = v113 ^ 3;
  v115 = -(v113 ^ 3) ^ (145 - (v113 ^ 0x92)) ^ 0x2E8E4BD6 ^ (v114 - ((2 * v114) & 0x1AC) + 781077462);
  v116 = HIBYTE(v86);
  v117 = ((BYTE2(v85) ^ 0xBDEF7607) - 321262649 + *&v46[4 * (BYTE2(v85) ^ 0x60)]) ^ *&v47[4 * (HIBYTE(v86) ^ 0x87)] ^ (*&v50[4 * (BYTE1(v77) ^ 0xD9)] - 1748740096) ^ *&v48[4 * (v115 + 145)];
  v118 = v93 ^ HIBYTE(v77);
  v119 = HIBYTE(v92);
  v120 = v118 ^ v94;
  v121 = *&v48[4 * (v120 ^ 0x69)] ^ *&v47[4 * (HIBYTE(v92) ^ 0x29)] ^ (*&v46[4 * (BYTE2(v117) ^ 0x27)] + (BYTE2(v117) ^ 0xBDEF7640) - 321262649) ^ (*&v50[4 * (BYTE1(v112) ^ 0xBB)] - 1748740096);
  v122 = (v112 ^ v95) ^ HIBYTE(v85);
  v123 = ((BYTE2(v92) ^ 0xBDEF7656) - 321262649 + *&v46[4 * (BYTE2(v92) ^ 0x31)]) ^ *&v47[4 * (HIBYTE(v94) ^ 0xEE)] ^ (1748740095 - *&v50[4 * (BYTE1(v117) ^ 0x8A)]) ^ *&v48[4 * (v122 ^ 0x4A)];
  v124 = HIBYTE(v94) ^ v122;
  v125 = *&v47[4 * (HIBYTE(v112) ^ 0xB3)] ^ HIBYTE(v112) ^ 0x46BD30DE;
  v126 = (BYTE2(v94) ^ 0xBDEF7609) - 321262649 + *&v46[4 * (BYTE2(v94) ^ 0x6E)];
  v127 = (*&v50[4 * (BYTE1(v92) ^ 0x54)] - 1748740096) ^ v116 ^ v114 ^ v117 ^ *&v48[4 * (v116 ^ v114 ^ v117 ^ 0x85)] ^ (v125 + v126 - 2 * (v125 & v126));
  v128 = *&v47[4 * ((HIBYTE(v117) ^ 0xBA) - ((2 * (HIBYTE(v117) ^ 0xBA)) & 0x30)) + 96] ^ HIBYTE(v117) ^ 0xBA ^ (*&v50[4 * (BYTE1(v94) ^ 0x86)] - 1748740096) ^ *&v48[4 * (v92 ^ 0x24)] ^ v92 ^ (*&v46[4 * (BYTE2(v112) ^ 0x56)] + (BYTE2(v112) ^ 0xBDEF7631) - 321262649);
  v129 = v123 ^ v124;
  LOBYTE(v125) = (v48[4 * (v92 ^ 0x24)] ^ v92) & 0x10;
  v130 = (v129 ^ 0x52B0F29Fu) >> v125 >> (v125 ^ 0x10);
  v131 = HIBYTE(v121);
  v132 = *&v48[4 * (v129 ^ 0xE)];
  v133 = (*&v50[4 * (BYTE1(v127) ^ 0xC)] - 1748740096) ^ *&v47[4 * (HIBYTE(v121) ^ 0xCD)] ^ v132 & 0x7FFFFFFF ^ (v129 ^ 0xEE747D58) & (v132 & 0x80000000 | 0x6EF6FFFF) ^ (*&v46[4 * (BYTE2(v128) ^ 0xC8)] + (BYTE2(v128) ^ 0xBDEF76AF) - 321262649);
  v134 = *&v47[4 * (HIBYTE(v123) ^ 0x4A)];
  v135 = *&v48[4 * (v127 ^ 0x57)] ^ ((BYTE2(v121) ^ 0xBDEF76F2) - 321262649 + *&v46[4 * (BYTE2(v121) ^ 0x95)]) ^ (*&v50[4 * (BYTE1(v128) ^ 0x30)] - 1748740096) ^ ((v134 ^ ((HIBYTE(v123) ^ 0x819FC55C) - (HIBYTE(v123) ^ 0x46BD3027 ^ v134)) ^ 0xC722F57B ^ (954010245 - (((v134 ^ 0xBDF488DD) + 1108047651) ^ ((v134 ^ 0xED90E206) + 309272058) ^ ((v134 ^ 0x97469FA0) + 1756979296)))) + (HIBYTE(v123) ^ 0x819FC55C));
  v136 = *&v48[4 * (v128 ^ 0xF4)] ^ (*&v50[4 * (BYTE1(v121) ^ 0x75)] - 1748740096) ^ *&v47[4 * (HIBYTE(v127) ^ 0x2F)] ^ (*&v46[4 * (v130 ^ 0x14)] + (v130 ^ 0xBDEF7673) - 321262649);
  v137 = v119 ^ v120 ^ v121 ^ *&v47[4 * (HIBYTE(v128) ^ 0x25)] ^ *&v48[4 * (v119 ^ v120 ^ v121 ^ 0x8A)] ^ (*&v50[4 * (BYTE1(v123) ^ 0x1C)] - 1748740096) ^ HIBYTE(v128) ^ (*&v46[4 * (BYTE2(v127) ^ 0x3C)] + (BYTE2(v127) ^ 0xBDEF765B) - 321262649) ^ 0xA3B9084E;
  v138 = v137 - ((2 * v137) & 0x86BBD6F6) - 1017255045;
  v139 = HIBYTE(v133);
  LOBYTE(v120) = v127 ^ v48[4 * (v127 ^ 0x57)] ^ ((BYTE2(v121) ^ 0xF2) - 57 + v46[4 * (BYTE2(v121) ^ 0x95)]) ^ v50[4 * (BYTE1(v128) ^ 0x30)] ^ ((v134 ^ ((HIBYTE(v123) ^ 0x5C) - (HIBYTE(v123) ^ 0x27 ^ v134)) ^ 0x7B ^ (-123 - (((v134 ^ 0xDD) + 35) ^ ((v134 ^ 6) - 6) ^ ((v134 ^ 0xA0) + 96)))) + (HIBYTE(v123) ^ 0x5C));
  v140 = *&v48[4 * (v120 ^ 0xD9)] ^ *&v47[4 * (HIBYTE(v133) ^ 0xF9)] ^ (*&v50[4 * (((*&v48[4 * (v128 ^ 0xF4)] ^ (*&v50[4 * (BYTE1(v121) ^ 0x75)] + 22528) ^ *&v47[4 * (HIBYTE(v127) ^ 0x2F)] ^ (*&v46[4 * (v130 ^ 0x14)] + (v130 ^ 0x7673) - 5177)) >> 8) ^ 0xDE)] - 1748740096) ^ (*&v46[4 * (BYTE2(v138) ^ 0x14)] + (BYTE2(v138) ^ 0xBDEF7673) - 321262649);
  v141 = *&v47[4 * (HIBYTE(v135) ^ 0xA)];
  v142 = (v141 & 0x720EAEF4 ^ HIBYTE(v135) & 0xF4 ^ 0x9DF1DB9B) & (HIBYTE(v135) & 0xB ^ 0xD16DCBF9 ^ v141 & 0x8DF1510B) | (v141 & 0x720EAEF4 ^ HIBYTE(v135) & 0xF4) & 0x22022404;
  v143 = *&v46[4 * (BYTE2(v133) ^ 0x7C)];
  v144 = ((v143 ^ 0x2351817F) - 813143366) ^ v143 ^ ((v143 ^ 0x1B11F564) - 137879901) ^ ((v143 ^ 0xF4911BFD) + 407433276) ^ ((v143 ^ 0xDFF77BDF) + 858689562);
  v145 = (v48[4 * (v128 ^ 0xF4)] ^ v50[4 * (BYTE1(v121) ^ 0x75)] ^ v47[4 * (HIBYTE(v127) ^ 0x2F)] ^ (v46[4 * (v130 ^ 0x14)] + (v130 ^ 0x73) - 57) ^ v128) ^ HIBYTE(v127);
  v146 = *&v48[4 * (v145 ^ 0x4D)] ^ (*&v50[4 * (BYTE1(v138) ^ 0xEE)] - 1748740096) ^ v142 ^ (((2 * ((v144 ^ 0x201439) & (BYTE2(v133) ^ 0x24B01E31) ^ v144 & 0x195F682A)) ^ 0x220C0050) + (v143 ^ ((v143 ^ 0xCDD7C0A9) + 554576752) ^ ((v143 ^ 0x14CD44A5) - 132862108) ^ ((v143 ^ 0xADCB6EC2) + 1091732741) ^ ((v143 ^ 0x67F7FEF7) - 1959914190) ^ BYTE2(v133) ^ 0xAEC96222));
  v147 = (*&v50[4 * (BYTE1(v133) ^ 0x26)] - 1748740096) ^ *&v47[4 * (HIBYTE(v136) ^ 0xE8)] ^ *&v48[4 * ((v137 - ((2 * v137) & 0xF6) + 123) ^ 0x91)] ^ ((BYTE2(v135) ^ 0xBDEF76AD) - 321262649 + *&v46[4 * (BYTE2(v135) ^ 0xCA)]);
  v148 = v133 ^ v131;
  v149 = *&v48[4 * (v148 ^ 0x4B)] ^ ((BYTE2(v136) ^ 0xBDEF7604) - 321262649 + *&v46[4 * (BYTE2(v136) ^ 0x63)]) ^ *&v47[4 * (HIBYTE(v138) ^ 0x18)] ^ (*&v50[4 * (BYTE1(v135) ^ 0xA7)] - 1748740096);
  v150 = *&v50[4 * ((((*&v50[4 * (BYTE1(v133) ^ 0x26)] + 22528) ^ *&v47[4 * (HIBYTE(v136) ^ 0xE8)] ^ *&v48[4 * ((v137 - ((2 * v137) & 0xF6) + 123) ^ 0x91)] ^ ((BYTE2(v135) ^ 0x76AD) - 5177 + *&v46[4 * (BYTE2(v135) ^ 0xCA)])) >> 8) ^ 0x48)];
  v151 = v146 ^ v145;
  v152 = *&v48[4 * (v151 ^ 0x91)] ^ *&v47[4 * (HIBYTE(v140) ^ 0x29)] ^ (*&v46[4 * (BYTE2(v149) ^ 0x2A)] + (BYTE2(v149) ^ 0xBDEF764D) - 321262649) ^ (((2 * (((v150 ^ 0x60EB25D5) + 687570266) ^ v150 ^ ((v150 ^ 0x5C51F884) + 339845129) ^ ((v150 ^ 0x34AA955D) + 2092617170) ^ ((v150 ^ 0x3FFFEF7F) + 2012198900))) & 0x9F67FEE6 ^ 0xF474EE6) + (v150 ^ ((v150 ^ 0x5C77C96A) - 1805151769) ^ ((v150 ^ 0x2E89541C) - 426177391) ^ ((v150 ^ 0x3AAE85D2) - 222372513) ^ ((v150 ^ 0x7FBFBFD7) - 1213208740) ^ 0xF85C5800));
  v153 = (v147 ^ (v137 - ((2 * v137) & 0xF6) + 123)) ^ HIBYTE(v136);
  v154 = *&v48[4 * (v153 ^ 0x70)] ^ (*&v50[4 * (BYTE1(v149) ^ 0xD2)] - 1748740096) ^ ((BYTE2(v140) ^ 0xBDEF76A3) - 321262649 + *&v46[4 * (BYTE2(v140) ^ 0xC4)]) ^ *&v47[4 * (HIBYTE(v146) ^ 0x7E)];
  v155 = HIBYTE(v138) ^ v148 ^ v149;
  HIDWORD(v156) = ((BYTE2(v146) ^ 0xBDEF76C0) - 321262649 + *&v46[4 * (BYTE2(v146) ^ 0xA7)]) ^ *&v47[4 * (HIBYTE(v147) ^ 0x90)] ^ (*&v50[4 * (BYTE1(v140) ^ 0xD4)] - 1748740096) ^ HIBYTE(v147);
  LODWORD(v156) = ((BYTE2(v146) ^ 0xBDEF76C0) - 321262649 + *&v46[4 * (BYTE2(v146) ^ 0xA7)]) ^ *&v47[4 * (HIBYTE(v147) ^ 0x90)] ^ (*&v50[4 * (BYTE1(v140) ^ 0xD4)] - 1748740096);
  LODWORD(v156) = __ROR4__((v156 >> 29) ^ 0xF7047173, 3);
  v157 = *&v48[4 * (v155 ^ 0xB2)] ^ v156;
  v158 = HIBYTE(v149) ^ (v140 ^ v120) ^ v139 ^ *&v47[4 * (HIBYTE(v149) ^ 0xA4)] ^ ((BYTE2(v147) ^ 0xBDEF76CA) - 321262649 + *&v46[4 * (BYTE2(v147) ^ 0xAD)]) ^ *&v48[4 * ((v140 ^ v120) ^ v139 ^ 0xAD)] ^ (*&v50[4 * (BYTE1(v146) ^ 6)] - 1748740096);
  v159 = HIBYTE(v146) ^ v153 ^ (v48[4 * (v153 ^ 0x70)] ^ v50[4 * (BYTE1(v149) ^ 0xD2)] ^ ((BYTE2(v140) ^ 0xA3) - 57 + v46[4 * (BYTE2(v140) ^ 0xC4)]) ^ v47[4 * (HIBYTE(v146) ^ 0x7E)]);
  v160 = HIBYTE(v152);
  v161 = *&v48[4 * (v159 ^ 0xB0)] ^ *&v47[4 * (HIBYTE(v152) ^ 0x16)] ^ (*&v46[4 * (BYTE2(v158) ^ 0x3E)] + (BYTE2(v158) ^ 0xBDEF7659) - 321262649) ^ (*&v50[4 * (BYTE1(v157) ^ 0xA)] - 1748740096);
  v162 = (v48[4 * (v155 ^ 0xB2)] ^ v156) ^ v155;
  v163 = v162 ^ *&v47[4 * (HIBYTE(v154) ^ 0xF2)] ^ ((BYTE2(v152) ^ 0xBDEF767B) - 321262649 + *&v46[4 * (BYTE2(v152) ^ 0x1C)]) ^ (*&v50[4 * (BYTE1(v158) ^ 0x9B)] - 1748740096) ^ *&v48[4 * (v162 ^ 0x36)];
  v164 = HIBYTE(v157) ^ 0x46BD3058 ^ *&v47[4 * (HIBYTE(v157) ^ 0x35)];
  v165 = (BYTE2(v154) ^ 0xBDEF76DC) - 321262649 + *&v46[4 * (BYTE2(v154) ^ 0xBB)];
  v166 = *&v48[4 * (v158 ^ 0x9D)] ^ (*&v50[4 * (((*&v48[4 * (v151 ^ 0x91)] ^ *&v47[4 * (HIBYTE(v140) ^ 0x29)] ^ (*&v46[4 * (BYTE2(v149) ^ 0x2A)] + (BYTE2(v149) ^ 0x764D) - 5177) ^ (((2 * (((v150 ^ 0x25D5) + 32090) ^ v150 ^ ((v150 ^ 0xF884) - 24567) ^ ((v150 ^ 0x955D) - 12846) ^ ((v150 ^ 0xEF7F) - 18444))) & 0xFEE6 ^ 0x4EE6) + (v150 ^ ((v150 ^ 0xC96A) - 28185) ^ ((v150 ^ 0x541C) + 3217) ^ ((v150 ^ 0x85D2) - 8865) ^ ((v150 ^ 0xBFD7) - 6308) ^ 0x5800))) >> 8) ^ 0x70)] - 1748740096) ^ (v165 + v164 - 2 * (v165 & v164));
  v167 = HIBYTE(v158) ^ v151 ^ HIBYTE(v140) ^ v152 ^ *&v47[4 * HIBYTE(v158)] ^ *&v48[4 * (v151 ^ HIBYTE(v140) ^ v152 ^ 0xC)] ^ (*&v50[4 * (BYTE1(v154) ^ 0x18)] - 1748740096) ^ ((BYTE2(v157) ^ 0xBDEF7655) - 321262649 + *&v46[4 * (BYTE2(v157) ^ 0x32)]);
  v168 = v163 ^ HIBYTE(v154);
  v169 = v166 ^ v158;
  v170 = *(&off_1010A0B50 + (v17 ^ 0x1754)) - 650226931;
  v171 = *&v170[4 * ((HIBYTE(v161) ^ 0xA9) - ((2 * (HIBYTE(v161) ^ 0xA9)) & 0x8E)) + 284];
  v172 = v168 ^ 0x7027BD21u;
  v173 = *&v170[4 * BYTE3(v172)];
  v174 = v169 ^ 0x6BBBF39Bu;
  v175 = *&v170[4 * BYTE3(v174)];
  v176 = v167 ^ 0x4D;
  v177 = *&v170[4 * ((v167 ^ 0xDF6CCA4D) >> 24)];
  v178 = *(&off_1010A0B50 + (v17 ^ 0x17B0)) - 2092628407;
  v179 = *&v178[4 * (((v167 ^ 0xDF6CCA4D) >> 16) ^ 0xEF)];
  v180 = *&v178[4 * (BYTE2(v161) ^ 0x5D)];
  v181 = *&v178[4 * (BYTE2(v163) ^ 0xC8)];
  v182 = *(&off_1010A0B50 + v17 - 4164) - 160813611;
  v183 = *&v182[4 * (BYTE1(v166) ^ 0x79)];
  v184 = *&v182[4 * ((v167 ^ 0xCA4D) >> 8)];
  v185 = *&v182[4 * (BYTE1(v161) ^ 0x29)];
  v186 = *&v182[4 * BYTE1(v172)];
  v187 = v160 ^ v159 ^ v161;
  v188 = *(&off_1010A0B50 + v17 - 3814) - 793030107;
  v189 = *&v188[4 * (v168 ^ 0xD1)];
  v190 = *&v188[4 * (v169 ^ 0x6B)];
  v191 = *&v188[4 * (v167 ^ 0xBD)];
  v192 = ((v187 ^ 0xB912A04E) + (v187 ^ 0x9D)) ^ *(v19 - 144) ^ v177 ^ *&v188[4 * (v187 ^ 0x6D)] ^ (v186 - 1429973550) ^ *&v178[4 * BYTE2(v174)];
  v193 = *(&off_1010A0B50 + v17 - 7205) - 1361768722;
  *(a5 + v213) = v193[v192 ^ 0xFALL] ^ 0xA8;
  v194 = ((v176 ^ 0xB912A0D3) + v176) ^ *(v19 - 140) ^ v181 ^ (v185 - 1429973550) ^ v191 ^ v175;
  v195 = *(&off_1010A0B50 + (v17 ^ 0x1CAA)) - 1385946571;
  *(a5 + v217) = v195[BYTE2(v194) ^ 0xELL] ^ 0xB4;
  *(a5 + v221) = v193[v194 ^ 0xFFLL] ^ 0x7E;
  v196 = v180 & 0x20;
  if ((v196 & ~v173) != 0)
  {
    v196 = -v196;
  }

  v197 = ((v169 ^ 0xB912A048) + (v169 ^ 0x9B)) ^ *(v19 - 136) ^ v180 & 0xFFFFFFDF ^ (v184 - 1429973550) ^ v190 ^ (v196 + (v173 ^ 0xB449E463));
  *(a5 + v212) = v193[(((v169 ^ 0x48) + (v169 ^ 0x9B)) ^ *(v19 - 136) ^ v180 & 0xDF ^ (v184 - 46) ^ v190 ^ (v196 + (v173 ^ 0x63))) ^ 0x59] ^ 0x45;
  v198 = ((v172 ^ 0xB912A0D3) + v172) ^ *(v19 - 128) ^ v179 ^ v171 ^ (v183 - 1429973550) ^ v189;
  *(a5 + v219) = v193[v198 ^ 0xF7] ^ 0x61;
  v199 = *(&off_1010A0B50 + v17 - 6112) - 617989799;
  *(a5 + v218) = (((2 * BYTE1(v197)) ^ 0x86) + 110) ^ v199[BYTE1(v197) ^ 0x8FLL] ^ 0x66;
  *(a5 + v215) = v195[BYTE2(v192) ^ 0xDALL] ^ 0x9D;
  *(a5 + v214) = v195[BYTE2(v198) ^ 0xB2] ^ 9;
  *(a5 + *(v19 - 184)) = (((2 * BYTE1(v198)) ^ 0x90) + 110) ^ 0x21 ^ v199[BYTE1(v198) ^ 4];
  LODWORD(v201) = __ROR4__((((v192 >> 12) ^ 0x7B69C4D5) & ((v192 >> 8 << 28) ^ 0xEB69C4DF) & 0x7FFFFFFF | ((v192 >> 11) << 31)) ^ 0x901CA50A, 28) ^ 0x75F1EFCE;
  HIDWORD(v201) = v201;
  v200 = v201 >> 3;
  HIDWORD(v201) = v200 ^ 0x1AA9F330;
  LODWORD(v201) = ~v200;
  *(a5 + v222) = (((2 * BYTE1(v192)) ^ 2) + 110) ^ 0xCB ^ v199[(v201 >> 29) ^ 0x17E86B7BLL];
  v202 = *(&off_1010A0B50 + (v17 ^ 0x13E4)) - 977126083;
  *(a5 + *(v19 - 168)) = ((HIBYTE(v197) ^ 0xDA) - 72) ^ v202[HIBYTE(v197) ^ 0x14] ^ 0xE0;
  *(a5 + *(v19 - 176)) = ((BYTE3(v194) ^ 0x91) - 72) ^ 0x72 ^ v202[BYTE3(v194) ^ 0x5FLL];
  *(a5 + *(v19 - 156)) = (((2 * BYTE1(v194)) ^ 0x10) + 110) ^ 0xBA ^ v199[BYTE1(v194) ^ 0x44];
  *(a5 + v216) = v195[BYTE2(v197) ^ 0xD6] ^ 0x71;
  *(a5 + v220) = ((HIBYTE(v198) ^ 0xD6) - 72) ^ 0xF5 ^ v202[HIBYTE(v198) ^ 0x18];
  v203 = (((v37 ^ 0x59792F72) - 1501114226) ^ ((v37 ^ 0x7581BE35) - 1971437109) ^ ((v37 ^ 0x8DCFEECE) + 1915752754)) + 140161524;
  v204 = HIBYTE(v192);
  v205 = ((v203 ^ 0x91A12F85) + 159244834) ^ v203 ^ ((v203 ^ 0x4A2DA4C6) - 755930781) ^ ((v203 ^ 0x514046E3) - 912487608) ^ ((v203 ^ 0xEDEFFFFB) + 1966289504);
  *(a5 + *(v19 - 152)) = ((v204 ^ 0x17) - 72) ^ 0xE6 ^ v202[v204 ^ 0xD9];
  v206 = (((v205 ^ 0x1E5C3FCF) + 666340835) ^ ((v205 ^ 0xB11E0C90) - 1997160770) ^ ((v205 ^ 0xC8610104) - 242568406)) - 498084614;
  LODWORD(v199) = HIDWORD(a17) ^ (v206 < 0x41185571);
  v207 = v206 < *(v19 - 120);
  if (v199)
  {
    v207 = HIDWORD(a17);
  }

  LODWORD(v211) = v17 + 37162;
  return (*(a10 + 8 * ((v207 | (8 * v207)) ^ v17)))(v172, v174, v17, v195, v193, v194, 178, 2864993746, a2, a3, a4, a5, a6, a7, a8, a9, a10, v209, __PAIR64__(v49, v52), v210, v211, v212, v213, a17, v214);
}

uint64_t sub_100A0786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, _DWORD *a4@<X3>, void *a5@<X7>, uint64_t a6@<X8>)
{
  v17 = v9 - 1;
  v18 = (a6 + (v7 + v17));
  v19 = (a2 + (v6 + v17));
  v20 = *(*a5 + (*a4 & a3));
  v21 = ((((v18 ^ v20) & 0x7FFFFFFF) * v13) ^ ((((v18 ^ v20) & 0x7FFFFFFF) * v13) >> 16)) * v13;
  v22 = ((((v19 ^ v20) & 0x7FFFFFFF) * v13) ^ ((((v19 ^ v20) & 0x7FFFFFFF) * v13) >> 16)) * v13;
  LOBYTE(v18) = *(v10 + (v21 >> 24)) ^ *v18 ^ *(a1 + (v21 >> 24)) ^ *(v11 + (v21 >> 24) + ((v8 + 39174) ^ 0xB695u)) ^ *(v10 + (v22 >> 24));
  v23 = *(v15 - 256);
  v24 = *(v15 - 248);
  *v19 = v18 ^ *(v23 + (v22 >> 24)) ^ *((v22 >> 24) + v11 + 5) ^ v21 ^ v22 ^ (BYTE3(v21) * v14) ^ (BYTE3(v22) * v14);
  return (*(v12 + 8 * ((44 * (v17 == 0)) ^ v8)))(v23, v24, 1926737144, v16);
}

uint64_t sub_100A07A0C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v25 = (((v9 ^ 0x6B234601) + v14) ^ ((v9 ^ a2) + a3) ^ ((v9 ^ a4) + a5)) + a6;
  v26 = ((v25 ^ a7) + a8) ^ v25 ^ ((v25 ^ v15) + v16) ^ ((v25 ^ v18) + v19) ^ ((v25 ^ v20) + v21);
  *((v26 ^ v22) - v12 + v23 + v24) = *(v13 + (v26 ^ v22) + v8) - ((2 * *(v13 + (v26 ^ v22) + v8)) & 0xBF) + 95;
  return (*(v17 + 8 * (((v26 == v22) * v10) ^ v11)))();
}

uint64_t sub_100A07AB8@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X7>, int a5@<W8>)
{
  v18 = *(v14 + 4 * (((v5 ^ v16) ^ v7) * v8 - (((((v5 ^ v16) ^ v7) * v8 * v9) >> 32) >> 3) * v10));
  *(a4 + 4 * v5) = v12 ^ v13 ^ a3 ^ (((v18 ^ a1) >> ((v15 ^ v18 & 3) & 1) >> (v11 & ~(v15 ^ v18 & 3)) >> (v18 & 3 ^ 1)) ^ a2) & ((v18 << 29) ^ 0xBFFFFFFF);
  return (*(v17 + 8 * ((31 * (v6 != 0)) ^ a5)))();
}

uint64_t sub_100A07EA8()
{
  v3 = v1 - 25663;
  v4 = (*(v2 + 8 * (v1 + 6834)))(((v1 - 885043227) & 0x34C05FBD ^ 0xC4DA215F) + v0);
  STACK[0x2470] = v4;
  v5 = v4 == 0;
  LOBYTE(STACK[0x247F]) = v5;
  return (*(v2 + 8 * ((33385 * v5) ^ v3)))();
}

uint64_t sub_100A07FA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(STACK[0x7D4]) = (v11 ^ 0x3262473F) + v8 - v9;
  v12 = *(a8 + 8 * (v11 ^ 0xEEC));
  STACK[0x3A0] = a2;
  STACK[0x390] = v10;
  v13 = v12();
  v14 = STACK[0x5A0];
  STACK[0xB40] = v13;
  return (*(v14 + 8 * (((v13 == 0) * (((v11 - 41708) | 0x8026) ^ 0xA169)) ^ v11)))();
}

uint64_t sub_100A0802C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, unint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int8x16_t a58)
{
  STACK[0x410] = *(v65 + v62 - 8);
  v70.i64[0] = v65 + v62 - 7;
  v70.i64[1] = v65 + v62 - 8;
  v71.i64[0] = v65 + v62 - 5;
  v71.i64[1] = v65 + v62 - 6;
  v72.i64[0] = v65 + v62 - 3;
  v72.i64[1] = v67 + v62 + a6;
  v73 = v72;
  *&STACK[0x3F0] = v72;
  v72.i64[0] = v65 + v62 - 1;
  v72.i64[1] = v65 + v62 - 2;
  *&STACK[0x400] = v72;
  v74.i64[0] = v63 + v62;
  v74.i64[1] = v66 + v62 + a6;
  *&STACK[0x3E0] = v74;
  v75.i64[0] = a5 + v62;
  v75.i64[1] = a4 + v62;
  v76.i64[0] = a3 + v62;
  v76.i64[1] = v64 + v62;
  v77 = vandq_s8(v72, *&STACK[0x4B0]);
  v78 = vandq_s8(v73, *&STACK[0x4B0]);
  v79 = vandq_s8(v71, *&STACK[0x4B0]);
  v80 = vandq_s8(v70, *&STACK[0x4B0]);
  v81 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v85 = vaddq_s64(v84, *&STACK[0x440]);
  v86 = vaddq_s64(v83, *&STACK[0x440]);
  v87 = vaddq_s64(v82, *&STACK[0x440]);
  v88 = vaddq_s64(v81, *&STACK[0x440]);
  v89 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3C0], v84), *&STACK[0x3B0]), v85), vandq_s8(v85, *&STACK[0x2C0]));
  v90 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3C0], v83), *&STACK[0x3B0]), v86), vandq_s8(v86, *&STACK[0x2C0]));
  v91 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3C0], v82), *&STACK[0x3B0]), v87), vandq_s8(v87, *&STACK[0x2C0]));
  v92 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3C0], v81), *&STACK[0x3B0]), v88), vandq_s8(v88, *&STACK[0x2C0]));
  v93 = veorq_s8(v92, *&STACK[0x310]);
  v94 = veorq_s8(v91, *&STACK[0x310]);
  v95 = veorq_s8(v90, *&STACK[0x310]);
  v96 = veorq_s8(v89, *&STACK[0x310]);
  v97 = veorq_s8(v89, *&STACK[0x300]);
  v98 = veorq_s8(v90, *&STACK[0x300]);
  v99 = veorq_s8(v91, *&STACK[0x300]);
  v100 = veorq_s8(v92, *&STACK[0x300]);
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), *&STACK[0x3A0]);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v98), *&STACK[0x3A0]);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v99), *&STACK[0x3A0]);
  v105 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v106 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v100), *&STACK[0x3A0]);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v109 = veorq_s8(v104, v106);
  v110 = veorq_s8(v102, v105);
  v111 = veorq_s8(v101, v103);
  v112 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v114 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v111);
  v116 = veorq_s8(vaddq_s64(v112, v108), *&STACK[0x390]);
  v117 = veorq_s8(vaddq_s64(v113, v109), *&STACK[0x390]);
  v118 = veorq_s8(vaddq_s64(v114, v110), *&STACK[0x390]);
  v119 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v120 = veorq_s8(v115, *&STACK[0x390]);
  v121 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v124 = veorq_s8(v118, v122);
  v125 = veorq_s8(v117, v121);
  v126 = veorq_s8(v116, v119);
  v127 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v126);
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v123), *&STACK[0x380]);
  v131 = veorq_s8(vaddq_s64(v127, v124), *&STACK[0x380]);
  v132 = veorq_s8(vaddq_s64(v128, v125), *&STACK[0x380]);
  v133 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v135 = veorq_s8(v129, *&STACK[0x380]);
  v136 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v137 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v138 = veorq_s8(v132, v136);
  v139 = veorq_s8(v131, v134);
  v140 = veorq_s8(v130, v133);
  v141 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v140);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v139);
  v145 = vaddq_s64(v142, v138);
  v146 = vaddq_s64(v141, v137);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v143, *&STACK[0x370]), vorrq_s8(v143, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x360]);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v144, *&STACK[0x370]), vorrq_s8(v144, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x360]);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v145, *&STACK[0x370]), vorrq_s8(v145, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x360]);
  v150 = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v146, *&STACK[0x370]), vorrq_s8(v146, *&STACK[0x2B0])), *&STACK[0x2B0]), *&STACK[0x360]);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v153 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v154 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v155 = veorq_s8(v147, v150);
  v156 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v154);
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), *&STACK[0x350]);
  v159 = veorq_s8(vaddq_s64(v156, v153), *&STACK[0x350]);
  v160 = veorq_s8(v157, *&STACK[0x350]);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v155), *&STACK[0x350]);
  v162 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), *&STACK[0x340]), v158), v68);
  v163 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), *&STACK[0x340]), v159), v68);
  v164 = vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL);
  v165 = veorq_s8(v163, v69);
  v166 = vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL);
  v167 = veorq_s8(v162, v69);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v169 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v170 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v171 = vandq_s8(v76, *&STACK[0x4B0]);
  v172 = vandq_s8(v75, *&STACK[0x4B0]);
  v173 = vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL);
  v174 = vandq_s8(v74, *&STACK[0x4B0]);
  v175 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v169);
  v178 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v180 = vaddq_s64(v170, v168);
  v181 = vaddq_s64(vsubq_s64(v178, vandq_s8(vaddq_s64(vaddq_s64(v178, v178), *&STACK[0x530]), *&STACK[0x510])), *&STACK[0x460]);
  v182 = vaddq_s64(vsubq_s64(v176, vandq_s8(vaddq_s64(vaddq_s64(v176, v176), *&STACK[0x530]), *&STACK[0x510])), *&STACK[0x460]);
  v183 = veorq_s8(v182, *&STACK[0x480]);
  v184 = veorq_s8(v181, *&STACK[0x480]);
  v185 = veorq_s8(v181, *&STACK[0x450]);
  v186 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v188 = vaddq_s64(v186, v185);
  v189 = veorq_s8(v182, *&STACK[0x450]);
  v190 = vaddq_s64(v187, v189);
  v191 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v192 = veorq_s8(vaddq_s64(vsubq_s64(v188, vandq_s8(vaddq_s64(v188, v188), *&STACK[0x4C0])), *&STACK[0x330]), *&STACK[0x320]);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(v190, vandq_s8(vaddq_s64(v190, v190), *&STACK[0x4C0])), *&STACK[0x330]), *&STACK[0x320]);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v195 = veorq_s8(v192, v191);
  v196 = vaddq_s64(vsubq_s64(vorrq_s8(v180, *&STACK[0x560]), vorrq_s8(v180, *&STACK[0x590])), *&STACK[0x590]);
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v195);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), *&STACK[0x430]);
  v199 = veorq_s8(v197, *&STACK[0x430]);
  v200 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v177, *&STACK[0x560]), vorrq_s8(v177, *&STACK[0x590])), *&STACK[0x590]), *&STACK[0x500]);
  v202 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v203 = veorq_s8(v198, v200);
  v204 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v205 = veorq_s8(v196, *&STACK[0x500]);
  v206 = vaddq_s64(v204, v202);
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v203), *&STACK[0x3D0]);
  v208 = veorq_s8(v205, v179);
  v209 = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v210 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v211 = veorq_s8(v201, v173);
  v212 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v213 = veorq_s8(v206, *&STACK[0x3D0]);
  v214 = veorq_s8(v213, v209);
  v215 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v217 = vaddq_s64(v212, v210);
  v218 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v220 = veorq_s8(vaddq_s64(v216, v214), *&STACK[0x4A0]);
  v221 = vaddq_s64(v218, v211);
  v222 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v223 = vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL);
  v224 = veorq_s8(v217, *&STACK[0x4A0]);
  v225 = veorq_s8(v224, v219);
  v226 = vaddq_s64(v215, v208);
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225);
  v228 = vaddq_s64(v223, v222);
  v229 = vsubq_s64(vandq_s8(vaddq_s64(v228, v228), *&STACK[0x550]), v228);
  v230 = vdupq_n_s64(a7);
  v231 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v227, v227), *&STACK[0x550]), v227), *&STACK[0x580]);
  v232 = vshlq_u64(veorq_s8(v221, *&STACK[0x540]), vnegq_s64(vandq_s8(vshlq_n_s64(v71, 3uLL), v230)));
  v233 = veorq_s8(vaddq_s64(v229, *&STACK[0x580]), *&STACK[0x570]);
  v234 = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v235 = veorq_s8(v231, *&STACK[0x570]);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v237 = veorq_s8(v233, v234);
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), *&STACK[0x420]);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v237), *&STACK[0x420]);
  v240 = vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL);
  v241 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v242 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), veorq_s8(v238, v240)), *&STACK[0x520]), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v230)));
  v243 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), *&STACK[0x340]), v161), *&STACK[0x490]), *&STACK[0x470]);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), *&STACK[0x340]), v160), *&STACK[0x490]), *&STACK[0x470]);
  v245 = veorq_s8(v244, v166);
  v246 = veorq_s8(v243, v164);
  v296.val[3] = veorq_s8(vshlq_u64(veorq_s8(v226, *&STACK[0x540]), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), v230))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v241), *&STACK[0x520]), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v230))));
  v296.val[2] = veorq_s8(v232, v242);
  v247 = vaddq_s64(vsubq_s64(v175, vandq_s8(vaddq_s64(vaddq_s64(v175, v175), *&STACK[0x530]), *&STACK[0x510])), *&STACK[0x460]);
  v248 = veorq_s8(v247, *&STACK[0x480]);
  v249 = veorq_s8(v247, *&STACK[0x450]);
  v250 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249);
  v251 = veorq_s8(vaddq_s64(vsubq_s64(v250, vandq_s8(vaddq_s64(v250, v250), *&STACK[0x4C0])), *&STACK[0x330]), *&STACK[0x320]);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252);
  v254 = vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL);
  v256 = veorq_s8(v253, *&STACK[0x430]);
  v257 = veorq_s8(v256, v254);
  v258 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v257), *&STACK[0x3D0]);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v257, 3uLL), v257, 0x3DuLL));
  v261 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260), *&STACK[0x4A0]);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v258, *&STACK[0x560]), vorrq_s8(v258, *&STACK[0x590])), *&STACK[0x590]), *&STACK[0x500]);
  v263 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), v263);
  v265 = veorq_s8(v262, v255);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v264, v264), *&STACK[0x550]), v264), *&STACK[0x580]), *&STACK[0x570]);
  v267 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v268 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL));
  v269 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v268), *&STACK[0x420]);
  v73.i64[0] = v61 + v62;
  v73.i64[1] = v60 + v62;
  v296.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v267, v265), *&STACK[0x540]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3F0], 3uLL), v230))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL), veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL))), *&STACK[0x520]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), v230))));
  v270 = vandq_s8(v73, *&STACK[0x4B0]);
  v271 = vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v273 = vaddq_s64(vsubq_s64(v271, vandq_s8(vaddq_s64(vaddq_s64(v271, v271), *&STACK[0x530]), *&STACK[0x510])), *&STACK[0x460]);
  v274 = veorq_s8(v273, *&STACK[0x480]);
  v275 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v246);
  v276 = veorq_s8(v273, *&STACK[0x450]);
  v277 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274, 0x38uLL), v274, 8uLL), v276);
  v278 = veorq_s8(vaddq_s64(vsubq_s64(v277, vandq_s8(vaddq_s64(v277, v277), *&STACK[0x4C0])), *&STACK[0x330]), *&STACK[0x320]);
  v279 = veorq_s8(v278, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v280 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL), v279), *&STACK[0x430]);
  v281 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL));
  v282 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v275, *&STACK[0x560]), vorrq_s8(v275, *&STACK[0x590])), *&STACK[0x590]), *&STACK[0x500]);
  v283 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v281), *&STACK[0x3D0]);
  v284 = veorq_s8(v282, v272);
  v285 = veorq_s8(v283, vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL));
  v286 = vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL);
  v287 = vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL);
  v288 = veorq_s8(vaddq_s64(v286, v285), *&STACK[0x4A0]);
  v289 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v290 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v289);
  v291 = vaddq_s64(v287, v284);
  v292 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v290, v290), *&STACK[0x550]), v290), *&STACK[0x580]), *&STACK[0x570]);
  v293 = veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL));
  v294 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), v293), *&STACK[0x420]);
  v296.val[0] = veorq_s8(vshlq_u64(veorq_s8(v291, *&STACK[0x540]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x400], 3uLL), v230))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL))), *&STACK[0x520]), vnegq_s64(vandq_s8(vshlq_n_s64(v73, 3uLL), v230))));
  *(v64 + v62) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v296, a58)), STACK[0x410]);
  return (*(a1 + 8 * (((a2 == 0) * v58) ^ v59)))();
}

uint64_t sub_100A08C58@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v9 = 155453101 * ((~(v7 - 232) & 0x7A0BCE95 | (v7 - 232) & 0x85F43168) ^ 0x9C2DD55A);
  v8[262] = v6;
  v8[260] = v3;
  v8[264] = a2;
  *(v7 - 200) = v9 ^ 0xB84B89A0;
  *(v7 - 232) = ((((v2 ^ 0xB9D69E16) + 1177117162) ^ ((v2 ^ 0x5A80728C) - 1518367372) ^ (((((v5 + 1832169986) & 0x92CBBBAE) - 957413901) ^ v2) + 957372511)) + 773705294) ^ v9;
  *(v7 - 216) = v5 - v9 + 288;
  *(v7 - 212) = (v4 - ((2 * v4) & 0xADE12D36) + 1458607771) ^ v9;
  (*(a1 + 8 * (v5 ^ 0xFFE6)))(v7 - 232);
  return (*(STACK[0x5A0] + 8 * v5))(0xCF031BE5DA58FD0DLL, 0xFF53A90FB55653FELL);
}

uint64_t sub_100A08DAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  STACK[0x488] = a5;
  STACK[0x4D0] = STACK[0x340];
  STACK[0x360] = STACK[0x2F0];
  STACK[0x460] = STACK[0x2E0];
  STACK[0x438] = STACK[0x2D8];
  STACK[0x550] = v7;
  STACK[0x380] = STACK[0x348];
  STACK[0x468] = v8;
  STACK[0x548] = v6;
  STACK[0x350] = v9;
  STACK[0x520] = a2;
  STACK[0x378] = v10;
  STACK[0x3F8] = v5;
  return (*(v12 + 8 * v11))();
}

uint64_t sub_100A08E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  v23 = ((2 * (a17 & 0xA4812146)) & 0x41020000 | a17 & 0xA4812146) ^ (2 * (a17 & 0xA4812146)) & (a17 ^ 0x514BBD56);
  v24 = ((2 * (a17 ^ 0x514BBD56)) ^ 0xEB956792 ^ a22 ^ 0x97AA) & (a17 ^ 0x514BBD56) ^ (2 * (a17 ^ 0x514BBD56)) & 0xF5CA9C10;
  v25 = v24 ^ 0x144A8410;
  v26 = (v24 ^ 0xA0000800) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0xD72A7040) & v25 ^ (4 * v25) & 0xF5CA9C10;
  v28 = (v27 ^ 0xD50A1000) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x20C08C10)) ^ 0x5CA9C100) & (v27 ^ 0x20C08C10) ^ (16 * (v27 ^ 0x20C08C10)) & 0xF5CA9C00;
  v30 = v28 ^ 0xF5CA9C10 ^ (v29 ^ 0x54888000) & (v28 << 8);
  v31 = a17 ^ (2 * ((v30 << 16) & 0x75CA0000 ^ v30 ^ ((v30 << 16) ^ 0x1C100000) & (((v29 ^ 0xA1421C10) << 8) & 0x75CA0000 ^ 0x35420000 ^ (((v29 ^ 0xA1421C10) << 8) ^ 0x4A9C0000) & (v29 ^ 0xA1421C10))));
  v33 = v31 != 1729370470 && (((a22 ^ 0x97AA) - 24483) & v31) == 6;
  return (*(*(v22 - 192) + 8 * ((v33 * (a22 ^ 0xC86F)) ^ a22 ^ 0x97AA)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_100A09058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t (*a20)(uint64_t), int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v32 = 1112314453 * ((~(v31 - 168) & 0xD3011CB3 | (v31 - 168) & 0x2CFEE348) ^ 0x3C57366A);
  *(v31 - 168) = v32 + v29 - 22078;
  *(v31 - 160) = a29;
  *(v31 - 152) = v32 + a22 + 364710457;
  v33 = (*(v30 + 8 * (v29 ^ 0xB7BE)))(v31 - 168);
  return a20(v33);
}

uint64_t sub_100A090E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  STACK[0x2B8] = 0xF34B91D963C09C2;
  LODWORD(STACK[0x284]) = *(*(v42 + 8 * (v40 ^ 0x58F0)) - 775311879);
  v44 = *(*(v42 + 8 * (v40 ^ 0x5359)) - 586084794);
  *(v43 - 184) = v40 - a40 - 1230200223;
  *(v43 - 180) = ((v40 - 163562892) ^ 0x1C7) - a40;
  *(v43 - 204) = v40 - 163562892 + a40;
  *(v43 - 200) = a40;
  *(v43 - 192) = v44 - a40;
  *(v43 - 216) = -a40;
  *(v43 - 212) = v40 - 163562892 - a40 + 4361;
  (*(v41 + 8 * (v40 + 30781)))(v43 - 216);
  return (*(v41 + 8 * *(v43 - 208)))(36168);
}

uint64_t sub_100A09284(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v14 = (v11 + (v4 + v5 + a4));
  v15 = *v14;
  v16 = v14[1];
  v17 = (v9 + v5);
  *v17 = vaddq_s8(vsubq_s8(v15, vandq_s8(vaddq_s8(v15, v15), v12)), v13);
  v17[1] = vaddq_s8(vsubq_s8(v16, vandq_s8(vaddq_s8(v16, v16), v12)), v13);
  return (*(v8 + 8 * (((v5 + 32 == (a2 ^ v10) - 327) * v7) ^ v6)))();
}

uint64_t sub_100A0941C@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v20 = (((a5 ^ 0x8588DA11) + a2) ^ ((a5 ^ 0x88FE1508) + a1) ^ ((a5 ^ 0x5DF5C0F0) - 1576386800)) + 1929876693;
  v21 = (v20 ^ a6) & (2 * (v20 & 0xDD7B7B15)) ^ v20 & 0xDD7B7B15;
  v22 = ((2 * (v8 ^ v20)) ^ 0x793D30BA) & (v8 ^ v20) ^ (2 * (v8 ^ v20)) & v14;
  v23 = v22 ^ 0x4828845;
  v24 = (v22 ^ 0x381C1018) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xF27A6174) & v23 ^ (4 * v23) & v14;
  v26 = (v25 ^ v16) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ v15)) ^ v19) & (v25 ^ v15) ^ (16 * (v25 ^ v15)) & v17;
  v28 = v26 ^ a3 ^ (v27 ^ v13) & (v26 << 8);
  return (*(*(v18 - 144) + 8 * ((254 * ((v20 ^ (2 * ((v28 << 16) & a7 ^ v28 ^ ((v28 << 16) ^ v12) & (((v27 ^ v10) << 8) & a7 ^ v11 ^ (((v27 ^ v10) << 8) ^ a4) & (v27 ^ v10)))) ^ 0x947E4BAF) * v9 > 0x55555555)) ^ a8)))();
}

uint64_t sub_100A09658@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W8>)
{
  v17 = v9 + a4 + (*(*(v15 + 8) + 4 * (a7 + a2)) ^ a3);
  *(*(v8 + 8) + 4 * (a7 + a2)) = v17 - (((v13 & a1) + a5) & (2 * v17)) + a3;
  v18 = v16 > v12;
  v19 = a7 + a6;
  v20 = v18 ^ (v19 < v11);
  v21 = v19 < v10;
  if (!v20)
  {
    v18 = v21;
  }

  return (*(v14 + 8 * ((28 * !v18) ^ a8)))();
}

uint64_t sub_100A09748()
{
  v2 = STACK[0xA70] - 0x8AA5BE76575BF8CLL + (((v0 ^ 0x1974EA2F4FB7BC6BLL) - 0x1974EA2F4FB7BC6BLL) ^ ((v0 ^ 0x4B3CAEF87B8F2884) - 0x4B3CAEF87B8F2884) ^ ((v0 ^ 0x524844D7DDED53FELL) - 0x524844D7DDED53FELL)) + 0x15B8B3498;
  v3 = STACK[0xA68] - 0x1D8D9B2A403B9935;
  v4 = v2 < 0x71B56D87;
  v5 = v2 > v3;
  if (v3 < 0x71B56D87 != v4)
  {
    v5 = v4;
  }

  return (*(v1 + 8 * ((212 * v5) ^ (STACK[0x318] - 13034))))(&STACK[0x490]);
}

uint64_t sub_100A098F0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v16 = v10 + ((v6 ^ a6) ^ v8) * v9;
  *(a4 + 4 * (a2 & v6)) = v13 ^ __ROR4__(*(a5 + 4 * (v16 - (((v16 * v11) >> 32) >> 3) * v12)), 7) ^ a1;
  return (*(v14 + 8 * (((v7 == 0) | (4 * (v7 == 0))) ^ v15)))();
}

uint64_t sub_100A09A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x4C0];
  v7 = STACK[0x488];
  STACK[0x340] = STACK[0x4D0];
  STACK[0x2F0] = STACK[0x360];
  STACK[0x2E8] = STACK[0x378];
  STACK[0x2E0] = STACK[0x460];
  STACK[0x2D8] = STACK[0x438];
  STACK[0x348] = STACK[0x380];
  STACK[0x2D0] = (v4 + 9924) - 32078;
  return (*(v5 + 8 * (v4 + 10138)))(v6, STACK[0x520], a3, a4, v7);
}

uint64_t sub_100A09AF4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = v7 - 1;
  *(a2 + v10) ^= *(v4 + (v10 & 0xF)) ^ *(v2 + (v10 & 0xF)) ^ ((v10 & 0xF) * v6) ^ *((v10 & 0xF) + v3 + 4);
  return (*(v9 + 8 * (((v10 != v8) * a1) ^ v5)))();
}

uint64_t sub_100A09B44@<X0>(int a1@<W8>)
{
  STACK[0x4A0] = *(v4 + 8 * a1);
  if (v1)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v4 + 8 * ((v6 * ((((v3 + 1019335425) & 0xC33DF775) + 1500) ^ 0x5D1B)) ^ v3)))();
}

uint64_t sub_100A09C58@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, _DWORD *a63)
{
  *(v65 + v66) = v63;
  STACK[0x578] -= 32;
  return (*(v64 + 8 * ((5151 * (*a63 == -17958193)) ^ (a1 | 0x6ED0u))))();
}

uint64_t sub_100A09E40(void *a1)
{
  a1[3] = STACK[0x330];
  v3 = STACK[0x318];
  a1[4] = *(STACK[0x318] + 80);
  *(v3 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = 0x3CE25E0EC52162F0;
  a1[11247] = 0x3CE25E0EC52162F0;
  a1[11248] = 0xBCE25E0EC5200378;
  return (*(v1 + 8 * v2))();
}

uint64_t sub_100A09ED0@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v24 = v18 + ((v9 ^ v17) ^ v11) * v12 + v13;
  v25 = *(v20 + 4 * (v24 - (((v24 >> 6) * v14) >> 32) * v15));
  *(v21 + 4 * v9) = v19 ^ v22 ^ a8 ^ ((((v25 ^ a1) + a2) ^ ((v25 ^ a3) + a4) ^ ((v25 ^ a5) + a6)) + a7);
  return (*(v16 + 8 * (((v10 == 0) * v23) ^ a9)))();
}

uint64_t sub_100A09F54(double a1, __n128 a2)
{
  a2.n128_u16[0] = 15677;
  a2.n128_u8[2] = 61;
  a2.n128_u8[3] = 61;
  a2.n128_u8[4] = 61;
  a2.n128_u8[5] = 61;
  a2.n128_u8[6] = 61;
  a2.n128_u8[7] = 61;
  return (*(v4 + 8 * (v3 + 1904526874)))(v2 & 7, xmmword_100F523B0, a2);
}

uint64_t sub_100A09FF4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = v3 < v7;
  *(a2 + a1) = *(v5 + (a1 & 0xF)) ^ *(v2 + a1) ^ *(v6 + (a1 & 0xF)) ^ (89 * (a1 & 0xF)) ^ *(v4 + (a1 & 0xF));
  if (v10 == a1 + 1 > 0xCBEADECD)
  {
    v10 = (((v8 + 22211) | 0x1A88) ^ 0x34159FA9) + a1 < v3;
  }

  return (*(v9 + 8 * ((56030 * v10) ^ v8)))();
}

uint64_t sub_100A0A104@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 400);
  *(v2 + 1000) = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((a1 - 85594389) & 0x51AB6FE ^ 0x97B1) + a1)))(v3);
}

uint64_t sub_100A0A180()
{
  v6 = *(v2 + 8);
  v7 = (v4 & ~v0) + 2 * (v0 & v4) + ((v4 ^ (v1 - 1351148094) & 0x5088B7BF ^ 0xFFFF6848) & v0);
  v8 = *(v5 + 8 * (v1 - 48918));
  v9 = *(v8 - 527405895);
  v10 = *(v5 + 8 * (v1 - 45347)) + 4 * v9;
  v11 = *(v10 - 1940437438);
  v12 = (v7 ^ v4) + (v7 ^ v4) * v11;
  if (v7 == v4)
  {
    v13 = *(v10 - 1940437438);
  }

  else
  {
    v13 = 0;
  }

  *(v10 - 1940437438) = (v12 + v13) * v11;
  *(v8 - 527405895) = (v9 + 1) % 6u;
  return (*(v3 + 8 * ((90 * (v6 == 0)) ^ v1)))();
}

uint64_t sub_100A0A24C(uint64_t a1, double a2, double a3, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int64x2_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v34.i64[0] = v21 + a16 + 7;
  v34.i64[1] = v21 + a16 + v19;
  v35.i64[0] = v21 + a16 + 9;
  v35.i64[1] = v21 + a16 + 8;
  v36.i64[0] = v21 + a16 + 5;
  v36.i64[1] = v21 + a16 + 4;
  v37.i64[0] = v21 + a16 + 3;
  v37.i64[1] = v21 + a16 + 2;
  *&v38 = v21 + a16 + 1;
  *(&v38 + 1) = v21 + a16;
  *&STACK[0x580] = v38;
  *&v38 = v21 + a16 - 1;
  *(&v38 + 1) = v21 + a16 - 2;
  *&STACK[0x570] = v38;
  v39 = vandq_s8(v37, v25);
  v40 = vandq_s8(v36, v25);
  v41 = vandq_s8(v35, v25);
  v42 = vandq_s8(v34, v25);
  v43 = *&STACK[0x520];
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), *&STACK[0x520]);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), *&STACK[0x520]);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), *&STACK[0x520]);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), *&STACK[0x520]);
  v48 = vsubq_s64(vorrq_s8(v44, v24), vorrq_s8(v44, a6));
  v49 = vsubq_s64(vorrq_s8(v46, v24), vorrq_s8(v46, a6));
  *&STACK[0x560] = vsubq_s64(vorrq_s8(v47, v24), vorrq_s8(v47, a6));
  v50 = vaddq_s64(vsubq_s64(vorrq_s8(v45, v24), vorrq_s8(v45, a6)), a6);
  v51 = vaddq_s64(v48, a6);
  v52 = veorq_s8(v51, *&STACK[0x500]);
  v53 = veorq_s8(v50, *&STACK[0x500]);
  v54 = veorq_s8(v50, a7);
  v55 = veorq_s8(v51, a7);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v57, v57), a8), v57), a9), v23);
  v59 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v56, v56), a8), v56), a9), v23);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v59);
  v63 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v61), v22);
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62), v22);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v66 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v67 = veorq_s8(v63, v65);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = veorq_s8(vaddq_s64(v68, v66), v26);
  v71 = vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL);
  v72 = veorq_s8(v69, v26);
  v73 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v74 = veorq_s8(v70, v71);
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v73), v27);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v74), v27);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78);
  v81 = vaddq_s64(v79, v77);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v81, v81), v28), v81), v29), v30);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v80, v80), v28), v80), v29), v30);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), v31);
  v89 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v90 = veorq_s8(v87, v31);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = veorq_s8(v88, v89);
  v93 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v89.i64[0] = v21 + a16 - 3;
  v89.i64[1] = v21 + a16 - 4;
  v94 = vaddq_s64(v49, a6);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v92);
  v96 = vaddq_s64(v93, v91);
  v193.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), v32)), v33), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), a4)));
  v193.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v32)), v33), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a4)));
  v97 = veorq_s8(v94, *&STACK[0x500]);
  v98 = veorq_s8(v94, a7);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), a8), v99), a9), v23);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v22);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v26);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v27);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v28), v108), v29), v30);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v31);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v110.i64[0] = v21 + a16 - 5;
  v110.i64[1] = v21 + a16 - 6;
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = vandq_s8(v110, v25);
  v115 = vaddq_s64(*&STACK[0x560], a6);
  v193.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), v32)), v33), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a4)));
  v116 = veorq_s8(v115, *&STACK[0x500]);
  v117 = veorq_s8(v115, a7);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v118, v118), a8), v118), a9), v23);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v22);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v26);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v27);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v28), v127), v29), v30);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v31);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v133 = vandq_s8(v89, v25);
  v134 = vaddq_s64(v132, v131);
  v135 = vandq_s8(*&STACK[0x570], v25);
  v193.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v134, vandq_s8(vaddq_s64(v134, v134), v32)), v33), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a4)));
  v136 = vandq_s8(*&STACK[0x580], v25);
  v137 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v43);
  v141 = vaddq_s64(v139, v43);
  v142 = vaddq_s64(v138, v43);
  v143 = vaddq_s64(v137, v43);
  v144 = vsubq_s64(vorrq_s8(v141, v24), vorrq_s8(v141, a6));
  v145 = vsubq_s64(vorrq_s8(v142, v24), vorrq_s8(v142, a6));
  v146 = vaddq_s64(v144, a6);
  v147 = vaddq_s64(vsubq_s64(vorrq_s8(v140, v24), vorrq_s8(v140, a6)), a6);
  v142.i64[0] = vqtbl4q_s8(v193, *&STACK[0x550]).u64[0];
  v193.val[0] = veorq_s8(v147, *&STACK[0x500]);
  v193.val[1] = veorq_s8(v146, *&STACK[0x500]);
  v193.val[2] = veorq_s8(v146, a7);
  v148 = veorq_s8(v147, a7);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL), v148);
  v193.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v193.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v193.val[1], v193.val[1]), a8), v193.val[1]), a9), v23);
  v193.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v193.val[0], v193.val[0]), a8), v193.val[0]), a9), v23);
  v149 = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v193.val[2] = veorq_s8(v193.val[1], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v193.val[1] = veorq_s8(vaddq_s64(v193.val[3], v149), v22);
  v193.val[0] = veorq_s8(v193.val[0], v22);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v150 = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[2] = veorq_s8(v193.val[1], v193.val[3]);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v193.val[1] = veorq_s8(vaddq_s64(v193.val[3], v150), v26);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v193.val[0] = veorq_s8(v193.val[0], v26);
  v151 = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[2] = veorq_s8(v193.val[1], v193.val[3]);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v193.val[1] = veorq_s8(vaddq_s64(v193.val[3], v151), v27);
  v193.val[0] = veorq_s8(v193.val[0], v27);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v152 = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[2] = veorq_s8(v193.val[1], v193.val[3]);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v193.val[1] = vaddq_s64(v193.val[3], v152);
  v193.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v193.val[1], v193.val[1]), v28), v193.val[1]), v29), v30);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v193.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v193.val[0], v193.val[0]), v28), v193.val[0]), v29), v30);
  v153 = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[2] = veorq_s8(v193.val[1], v193.val[3]);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v193.val[1] = veorq_s8(vaddq_s64(v193.val[3], v153), v31);
  v193.val[0] = veorq_s8(v193.val[0], v31);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v154 = veorq_s8(v193.val[0], vsraq_n_u64(vshlq_n_s64(v193.val[2], 3uLL), v193.val[2], 0x3DuLL));
  v193.val[2] = veorq_s8(v193.val[1], v193.val[3]);
  v193.val[3] = vsraq_n_u64(vshlq_n_s64(v193.val[0], 0x38uLL), v193.val[0], 8uLL);
  v155 = vaddq_s64(v145, a6);
  v193.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193.val[1], 0x38uLL), v193.val[1], 8uLL), v193.val[2]);
  v156 = vaddq_s64(v193.val[3], v154);
  v193.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v193.val[0], vandq_s8(vaddq_s64(v193.val[0], v193.val[0]), v32)), v33), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v110, 3uLL), a4)));
  v193.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v156, vandq_s8(vaddq_s64(v156, v156), v32)), v33), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), a4)));
  v157 = veorq_s8(v155, *&STACK[0x500]);
  v158 = veorq_s8(v155, a7);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), a8), v159), a9), v23);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v22);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v26);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v27);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), v28), v168), v29), v30);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v31);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL)));
  v173 = vaddq_s64(vsubq_s64(vorrq_s8(v143, v24), vorrq_s8(v143, a6)), a6);
  v193.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v172, vandq_s8(vaddq_s64(v172, v172), v32)), v33), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x570], 3uLL), a4)));
  v174 = veorq_s8(v173, *&STACK[0x500]);
  v175 = veorq_s8(v173, a7);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v176, v176), a8), v176), a9), v23);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v22);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v26);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v27);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v185, v185), v28), v185), v29), v30);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v31);
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL)));
  v193.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v189, vandq_s8(vaddq_s64(v189, v189), v32)), v33), *&STACK[0x410]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x580], 3uLL), a4)));
  v142.i64[1] = vqtbl4q_s8(v193, *&STACK[0x550]).u64[0];
  v190 = vrev64q_s8(*(v18 + a16));
  v193.val[0].i64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v193.val[0].i64[1] = 0x5F5F5F5F5F5F5F5FLL;
  v191 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v190, v190, 8uLL), v193.val[0]), v142));
  *(v21 + a16 - 6) = vextq_s8(v191, v191, 8uLL);
  return (*(a1 + 8 * (((v17 != 0) * v20) ^ v16)))();
}

uint64_t sub_100A0ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x175C];
  v10 = (v9 ^ 0xAE33903C) & (2 * (v9 & 0xAEB3A53E)) ^ v9 & 0xAEB3A53E;
  v11 = ((2 * (v9 ^ 0xF356904C)) ^ 0xBBCA6AE4) & (v9 ^ 0xF356904C) ^ (2 * (v9 ^ 0xF356904C)) & 0x5DE53572;
  v12 = v11 ^ 0x44251512;
  v13 = (v11 ^ 0x19C02060) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x7794D5C8) & v12 ^ (4 * v12) & 0x5DE53570;
  v15 = (v14 ^ 0x55841540) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x8612032)) ^ 0xDE535720) & (v14 ^ 0x8612032) ^ (16 * (v14 ^ 0x8612032)) & 0x5DE53560;
  v17 = v15 ^ 0x5DE53572 ^ (v16 ^ 0x5C411500) & (v15 << 8);
  *(STACK[0x2578] + 4 * (((LODWORD(STACK[0x175C]) ^ (2 * ((v17 << 16) & 0x5DE50000 ^ v17 ^ ((v17 << 16) ^ 0x35720000) & (((v16 ^ 0x1A42052) << 8) & 0x5DE50000 ^ 0x18C00000 ^ (((v16 ^ 0x1A42052) << 8) ^ 0x65350000) & (v16 ^ 0x1A42052))))) >> 2) ^ 0xFEE73F6)) = (((v7 ^ 0x63ECA257) - 1676452439) ^ ((v7 ^ 0x2F73E562) - 796124514) ^ ((v7 ^ 0xA54A8024) + 1521844188)) + 461449957;
  return (*(v8 + 234896))(a1, a2, a3, a4, a5, a6, a7, 2104385511);
}

uint64_t sub_100A0AEA4(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = (v7 ^ v15);
  *(a1 + 4 * v7) = a3 ^ ((*(a7 + 4 * ((v9 - v19) * v10 - (((((v9 - v19) * v10) * v11) >> 32) >> 3) * v12)) ^ a2) + (v17 ^ v19 ^ v14) + (v19 ^ v13) + 1);
  return (*(*(v18 - 216) + 8 * (((v8 == 0) * a4) ^ v16)))();
}

uint64_t sub_100A0AF14@<X0>(unsigned int a1@<W8>)
{
  v3 = STACK[0x5C0];
  v4 = *(v2 + 8 * ((227 * (((((a1 - 42841) | 0x8844) + (a1 ^ 0x87A76C3BLL)) ^ v1) > 7)) ^ a1));
  STACK[0x3F0] = *(STACK[0x530] + 24);
  STACK[0x3E0] = v3;
  return v4(0x18BDF6F3D659C9FELL, 0x712D560FD0C41AEALL, 0x80C32B019129EFD0, 0xA994A82BA76C276DLL, 0x14E985C266668607);
}

uint64_t sub_100A0B0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v18.i64[0] = v13 + v12 - 7;
  v18.i64[1] = v13 + v12 + a6;
  v19 = v18;
  *&STACK[0x580] = v18;
  v18.i64[0] = v13 + v12 - 1;
  v18.i64[1] = v13 + v12 - 2;
  v20 = v18;
  *&STACK[0x570] = v18;
  v21.i64[0] = v13 + v12 - 3;
  v21.i64[1] = v13 + v12 - 4;
  v22.i64[0] = v13 + v12 - 5;
  v22.i64[1] = v13 + v12 - 6;
  v23 = *&STACK[0x530];
  v24 = vandq_s8(v22, *&STACK[0x530]);
  v25 = vandq_s8(v21, *&STACK[0x530]);
  v26 = vandq_s8(v20, *&STACK[0x530]);
  v27 = vandq_s8(v19, *&STACK[0x530]);
  v28 = vsraq_n_u64(vshlq_n_s64(v27, 0x38uLL), v27, 8uLL);
  v29 = vsraq_n_u64(vshlq_n_s64(v26, 0x38uLL), v26, 8uLL);
  v30 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v31 = vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL);
  v32 = vaddq_s64(v31, *&STACK[0x510]);
  v33 = vaddq_s64(v30, *&STACK[0x510]);
  v34 = vaddq_s64(v29, *&STACK[0x510]);
  v35 = vaddq_s64(v28, *&STACK[0x510]);
  v36 = *&STACK[0x410];
  v37 = vandq_s8(vsubq_s64(*&STACK[0x410], v31), *&STACK[0x3F0]);
  v38.i64[0] = a5 + v12 + 3;
  v39.i64[0] = a5 + v12 + 9;
  v40 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x410], v28), *&STACK[0x3F0]), v35);
  v31.i64[0] = a5 + v12 + 7;
  v41 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x410], v29), *&STACK[0x3F0]), v34);
  v28.i64[0] = a5 + v12 + 5;
  v42 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x410], v30), *&STACK[0x3F0]), v33);
  v43 = vaddq_s64(v37, v32);
  v44 = vandq_s8(v35, *&STACK[0x3F0]);
  v45 = vandq_s8(v34, *&STACK[0x3F0]);
  v46 = vandq_s8(v33, *&STACK[0x3F0]);
  v47 = vandq_s8(v32, *&STACK[0x3F0]);
  v38.i64[1] = a5 + v12 + 2;
  *&STACK[0x550] = v38;
  v48 = vsubq_s64(v43, v47);
  v49 = vsubq_s64(v42, v46);
  v50 = vsubq_s64(v41, v45);
  v51 = vsubq_s64(v40, v44);
  v39.i64[1] = a5 + v12 + 8;
  v52 = veorq_s8(v51, *&STACK[0x500]);
  v53 = veorq_s8(v50, *&STACK[0x500]);
  v54 = veorq_s8(v49, *&STACK[0x500]);
  v55 = veorq_s8(v48, *&STACK[0x500]);
  v56 = veorq_s8(v48, *&STACK[0x4F0]);
  v57 = veorq_s8(v49, *&STACK[0x4F0]);
  v58 = veorq_s8(v50, *&STACK[0x4F0]);
  v59 = veorq_s8(v51, *&STACK[0x4F0]);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v58);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56);
  v31.i64[1] = a5 + v12 + 6;
  v28.i64[1] = a5 + v12 + 4;
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, *&STACK[0x4E0]), vorrq_s8(v60, *&STACK[0x3D0])), *&STACK[0x3D0]), *&STACK[0x4C0]);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, *&STACK[0x4E0]), vorrq_s8(v61, *&STACK[0x3D0])), *&STACK[0x3D0]), *&STACK[0x4C0]);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v62, *&STACK[0x4E0]), vorrq_s8(v62, *&STACK[0x3D0])), *&STACK[0x3D0]), *&STACK[0x4C0]);
  v67 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v68 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v63, *&STACK[0x4E0]), vorrq_s8(v63, *&STACK[0x3D0])), *&STACK[0x3D0]), *&STACK[0x4C0]);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v71 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v72 = veorq_s8(v65, v68);
  v73 = veorq_s8(v64, v67);
  v74 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v73);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v72);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v71);
  v78 = vaddq_s64(v74, v70);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, *&STACK[0x4B0]), vorrq_s8(v75, *&STACK[0x3B0])), *&STACK[0x3B0]), *&STACK[0x4A0]);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, *&STACK[0x4B0]), vorrq_s8(v76, *&STACK[0x3B0])), *&STACK[0x3B0]), *&STACK[0x4A0]);
  v81 = vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v77, *&STACK[0x4B0]), vorrq_s8(v77, *&STACK[0x3B0])), *&STACK[0x3B0]), *&STACK[0x4A0]);
  v83 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v78, *&STACK[0x4B0]), vorrq_s8(v78, *&STACK[0x3B0])), *&STACK[0x3B0]), *&STACK[0x4A0]);
  v87 = veorq_s8(v86, v85);
  v88 = veorq_s8(v82, v84);
  v89 = veorq_s8(v80, v83);
  v90 = veorq_s8(v79, v81);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v90);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v89);
  v95 = vaddq_s64(v92, v88);
  v96 = vaddq_s64(v91, v87);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), *&STACK[0x490]), v96), *&STACK[0x480]), *&STACK[0x470]);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), *&STACK[0x490]), v95), *&STACK[0x480]), *&STACK[0x470]);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), *&STACK[0x490]), v94), *&STACK[0x480]), *&STACK[0x470]);
  v100 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), *&STACK[0x490]), v93), *&STACK[0x480]), *&STACK[0x470]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v105 = veorq_s8(v99, v102);
  v106 = veorq_s8(v98, v101);
  v107 = veorq_s8(v97, v100);
  v108 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v110 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v107);
  v112 = veorq_s8(vaddq_s64(v108, v104), *&STACK[0x460]);
  v113 = veorq_s8(vaddq_s64(v109, v105), *&STACK[0x460]);
  v114 = veorq_s8(vaddq_s64(v110, v106), *&STACK[0x460]);
  v115 = veorq_s8(v111, *&STACK[0x460]);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), *&STACK[0x450]), v115), *&STACK[0x440]), *&STACK[0x430]);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), *&STACK[0x450]), v114), *&STACK[0x440]), *&STACK[0x430]);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), *&STACK[0x450]), v113), *&STACK[0x440]), *&STACK[0x430]);
  v119 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), *&STACK[0x450]), v112), *&STACK[0x440]), *&STACK[0x430]);
  *&STACK[0x560] = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v123 = veorq_s8(v118, v121);
  v124 = veorq_s8(v117, v120);
  v125 = veorq_s8(v116, v119);
  v126 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  *&STACK[0x540] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v123);
  v127 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v124), v15);
  v128 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v125), v15);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v132 = veorq_s8(v127, v129);
  v133 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v135 = vandq_s8(v28, v23);
  v136 = vandq_s8(v31, v23);
  v137 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v138 = vandq_s8(v39, v23);
  v139 = v39;
  v140 = vandq_s8(v38, v23);
  v141 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v146 = veorq_s8(vaddq_s64(v133, v131), v16);
  v147 = veorq_s8(vaddq_s64(v134, v132), v16);
  v148 = vorrq_s8(vandq_s8(vsubq_s64(v36, v145), *&STACK[0x390]), vandq_s8(vaddq_s64(v145, *&STACK[0x3A0]), *&STACK[0x380]));
  v149 = vorrq_s8(vandq_s8(vsubq_s64(v36, v144), *&STACK[0x390]), vandq_s8(vaddq_s64(v144, *&STACK[0x3A0]), *&STACK[0x380]));
  v150 = vorrq_s8(vandq_s8(vsubq_s64(v36, v143), *&STACK[0x390]), vandq_s8(vaddq_s64(v143, *&STACK[0x3A0]), *&STACK[0x380]));
  v151 = vorrq_s8(vandq_s8(vsubq_s64(v36, v141), *&STACK[0x390]), vandq_s8(vaddq_s64(v141, *&STACK[0x3A0]), *&STACK[0x380]));
  v152 = veorq_s8(v149, v17);
  v153 = veorq_s8(v148, v17);
  v154 = veorq_s8(v148, *&STACK[0x330]);
  v155 = veorq_s8(v149, *&STACK[0x330]);
  v156 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v155);
  v158 = vdupq_n_s64(v11);
  v159 = veorq_s8(vaddq_s64(v156, v154), v158);
  v160 = veorq_s8(v157, v158);
  v161 = vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL);
  v162 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v163 = veorq_s8(v159, v161);
  v164 = vsubq_s64(vandq_s8(vaddq_s64(v147, v147), *&STACK[0x400]), v147);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v163);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v162);
  v167 = vdupq_n_s64(v7);
  v168 = vdupq_n_s64(v8);
  v169 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), v167), v165), v168);
  v170 = vdupq_n_s64(v9);
  v171 = veorq_s8(vaddq_s64(v164, *&STACK[0x3E0]), *&STACK[0x3C0]);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v166, v166), v167), v166), v168), v170);
  v173 = veorq_s8(v169, v170);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), *&STACK[0x400]), v146), *&STACK[0x3E0]), *&STACK[0x3C0]);
  v175 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v176 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v177 = veorq_s8(v174, v142);
  v178 = vdupq_n_s64(a3);
  v179 = veorq_s8(v171, v137);
  v180 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v175), v178);
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v176), v178);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v184 = veorq_s8(v181, v180);
  v185 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v187 = vdupq_n_s64(a4);
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v187);
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v184), v187);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v191 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v191);
  v193 = vaddq_s64(v185, v177);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190);
  v195 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v197 = vshlq_n_s64(v21, 3uLL);
  v198 = vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), *&STACK[0x520]));
  v199 = veorq_s8(v194, v15);
  v200 = veorq_s8(v192, v15);
  v201 = veorq_s8(v200, v196);
  v202 = veorq_s8(v199, v195);
  v203 = vshlq_u64(veorq_s8(vaddq_s64(v186, v179), *&STACK[0x350]), vnegq_s64(vandq_s8(v197, *&STACK[0x520])));
  v204 = vshlq_u64(veorq_s8(v193, *&STACK[0x350]), v198);
  v205 = vdupq_n_s64(v14);
  v206 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v205);
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v202), v205);
  v208 = vandq_s8(vshlq_n_s64(v28, 3uLL), *&STACK[0x520]);
  v209 = veorq_s8(*&STACK[0x540], v15);
  v258.val[2] = veorq_s8(v204, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL))), *&STACK[0x350]), vnegq_s64(v208)));
  v258.val[1] = veorq_s8(v203, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL))), *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), *&STACK[0x520]))));
  v210 = veorq_s8(v150, v17);
  v211 = veorq_s8(v150, *&STACK[0x330]);
  v212 = veorq_s8(v209, v128);
  v213 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211), v158);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v215 = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v217 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v218 = vaddq_s64(v216, v214);
  v219 = vaddq_s64(v215, v212);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v218, v218), v167), v218), v168), v170);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v222 = veorq_s8(v219, v16);
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v178);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224), v187);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v227 = vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v222, v222), *&STACK[0x400]), v222), *&STACK[0x3E0]), *&STACK[0x3C0]);
  v229 = veorq_s8(vaddq_s64(v227, v226), v15);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v205);
  v258.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), veorq_s8(v228, v217)), *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x570], 3uLL), *&STACK[0x520]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL))), *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(v139, 3uLL), *&STACK[0x520]))));
  v232 = veorq_s8(v151, v17);
  v233 = veorq_s8(vaddq_s64(v126, *&STACK[0x560]), v15);
  v234 = veorq_s8(v151, *&STACK[0x330]);
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v234), v158);
  v236 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(*&STACK[0x560], 3uLL), *&STACK[0x560], 0x3DuLL));
  v237 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v238 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v240 = vaddq_s64(v238, v237);
  v241 = vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL);
  v242 = vaddq_s64(v239, v236);
  v243 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v240, v240), v167), v240), v168), v170);
  v244 = veorq_s8(v242, v16);
  v245 = veorq_s8(v243, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v244, v244), *&STACK[0x400]), v244), *&STACK[0x3E0]), *&STACK[0x3C0]);
  v247 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v245), v178);
  v248 = veorq_s8(v246, v241);
  v249 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v250 = vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v252 = veorq_s8(vaddq_s64(v250, v249), v187);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253), v15);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v256 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255), v205);
  v258.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v251, v248), *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x580], 3uLL), *&STACK[0x520]))), vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), veorq_s8(v256, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL))), *&STACK[0x350]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x550], 3uLL), *&STACK[0x520]))));
  *v38.i64[1] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v258, *&STACK[0x340])), *(v13 + v12 - 8));
  return (*(a1 + 8 * (((a2 == 0) * v10) ^ a7)))();
}

uint64_t sub_100A0BC3C()
{
  v5 = *(&off_1010A0B50 + v0 - 19883) - 1695127495;
  v6 = v5[*(v4 - 97) ^ 0xA3] ^ *(v4 - 97);
  v7 = *(&off_1010A0B50 + v0 - 16075) - 241406439;
  v8 = v5[*(v4 - 105) ^ 0x28] ^ *(v4 - 105);
  v9 = *(&off_1010A0B50 + ((v0 + 6337) ^ 0x78FA)) - 1281779175;
  v10 = (((*(v4 - 100) ^ 0x81 ^ v9[*(v4 - 100) ^ 0x9BLL]) << ((v0 - 63) ^ 0x13)) ^ 0x7DC8BE28) & (v6 ^ 0xFFF8BF66) | v6 & 0xD7;
  v11 = *(&off_1010A0B50 + v0 - 19336) - 1167681678;
  v12 = (((v9[*(v4 - 108) ^ 0x13] ^ *(v4 - 108)) << 24) ^ 0xC5150A91) & (v8 ^ 0xFF975FBB) | v8 & 0x6E;
  v13 = v11[*(v4 - 98) ^ 0x63] << 8;
  v14 = (v10 & 0x53C00070 ^ 0xC32FA4A0 ^ ((v7[*(v4 - 99) ^ 0xF0] << 16) ^ 0xAC6B878F) & (v10 ^ 0xA4372100)) & (v13 ^ 0xFFFF04FF);
  v15 = v13 & 0xDC00;
  v16 = v5[*(v4 - 109) ^ 0xB3] ^ *(v4 - 109);
  v17 = ((v7[*(v4 - 111) ^ 0x25] << 16) ^ 0xE250D855) & ~v16 | v16 & 0xAAAAAAAA;
  v18 = v11[*(v4 - 106) ^ 0x5DLL] << 8;
  v19 = ((v11[*(v4 - 110) ^ 0x85] << 8) ^ 0x24060F21) & (v17 ^ 0x4D727A6) | v17 & 0xC2F900DE;
  v20 = v7[*(v4 - 107) ^ 0x1FLL] << 16;
  v21 = ((v18 & 0xCA00 | (v18 ^ 0xFFFFE1FF) & (v12 ^ 0x94823FCA)) ^ 0x3F998B88) & (v20 ^ 0xFFD7FFFF);
  v22 = (((v9[*(v4 - 112) ^ 0x31] ^ *(v4 - 112)) << 24) ^ 0xFEF484DD) & (v19 ^ 0x19CBA32A);
  *(v4 - 128) = (((v1 ^ 0xB8FBB25) - 144592963) ^ ((v1 ^ 0x9B6D7D47) + 1736665567) ^ ((v1 ^ 0xD30C6965) + 803372541)) + 687804094;
  v23 = *(v3 + 8 * (v0 + 6337));
  *(v4 - 120) = v2;
  return v23(v22, v15 ^ 0xB91124CD ^ v14, v20 & 0xFFF1FFFF ^ 0xF50B5D9D ^ v21, v19 & 0x60B7B22 ^ 0x2994479E ^ v22);
}

uint64_t sub_100A0C078@<X0>(int a1@<W8>)
{
  *(v2 - 200) = a1 ^ 0x6302;
  v4 = STACK[0xFB0];
  v5 = (*(STACK[0xFB0] + 14) << 8) ^ 0xE7837225;
  v6 = *STACK[0xFB0] << (((a1 ^ 2) - 92) ^ 0xD3);
  v7 = *(STACK[0xFB0] + 13) << 16;
  v8 = *(STACK[0xFB0] + 9) << 16;
  v9 = *(STACK[0xFB0] + 5) << 16;
  v10 = v9 & 0x140000;
  v11 = v9 ^ 0xFFA0FFFF;
  v12 = v8 & 0x1E0000 ^ 0x41DB146F ^ ((((*(STACK[0xFB0] + 10) << 8) ^ 0x6CA06BB9) & (*(STACK[0xFB0] + 11) ^ 0x6CECFFE4) | *(STACK[0xFB0] + 11) & 0x46) ^ 0x9415491) & (v8 ^ 0x6DA2FFFF);
  v13 = (((*(STACK[0xFB0] + 2) << 8) ^ 0x374E9966) & (*(STACK[0xFB0] + 3) ^ 0xBF7FFF21) | *(STACK[0xFB0] + 3) & 0x99) ^ 0xF0770D0D;
  v14 = (*(STACK[0xFB0] + 12) ^ 0x2C) << 24;
  v15 = (*(STACK[0xFB0] + 4) ^ 0x2B) << 24;
  LODWORD(STACK[0xF88]) = v15 & 0xA2000000 ^ 0x9B4A68E8 ^ (v10 ^ 0x14CDC691 ^ (((*(STACK[0xFB0] + 7) ^ 0xFFFFFF81) & ((*(STACK[0xFB0] + 6) << 8) ^ 0x385C4D8E) | *(STACK[0xFB0] + 7) & 0x71) ^ 0x71B7BFC9) & v11) & (v15 ^ 0x8BFFFFFF);
  LODWORD(STACK[0xF80]) = (v4[8] << 24) & 0xDB000000 ^ 0x4A6EE5B0 ^ ((v4[8] << 24) ^ 0x20FFFFFF) & v12;
  v16 = v4[15];
  v17 = v16 & 0xDA;
  LODWORD(STACK[0xF7C]) = v14 & 0x9FFFFFFF ^ 0x7776137B ^ (v7 & 0xB30000 ^ 0x5C9813A9 ^ (((v16 ^ 0xFFFFFFE0) & v5 | v17) ^ 0xDBCFB7EF) & (v7 ^ 0xFFA0FFFF)) & (v14 ^ 0x8CFFFFFF);
  LODWORD(STACK[0xF78]) = v6 & 0xDF000000 ^ 0x23498724 ^ ((v4[1] << 16) & 0xC60000 ^ 0xE79685CB ^ ((v4[1] << 16) ^ 0xFF20FFFF) & v13) & (v6 ^ 0xA0FFFFFF);
  LODWORD(STACK[0xFBC]) = v1;
  return (*(v3 + 8 * (a1 | (8 * (v1 == 32720342)))))(v17);
}

uint64_t sub_100A0C918@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W7>, unsigned int a6@<W8>)
{
  v19 = *(v15 + 4 * ((v17 ^ v16 ^ v6 ^ v8) * v9 % v10)) ^ v11;
  *(v14 + 4 * v6) = v13 ^ a5 ^ a1 ^ a2 ^ v19 ^ a3 ^ v12 & (16 * v19);
  return (*(v18 + 8 * (((v7 == 0) * a4) ^ a6)))();
}

uint64_t sub_100A0C980()
{
  *(v2 + 696) = 0;
  *(v2 + 560) = *(v0 + 8 * (v1 - 32543));
  return (*(v0 + 8 * (((v1 ^ 0xF0AE) - 20663) ^ (v1 - 32543))))();
}

uint64_t sub_100A0CA44()
{
  STACK[0x2048] = v0;
  STACK[0x1550] = *(v1 + 35328);
  return (*(v1 + 57472))();
}

uint64_t sub_100A0CB88()
{
  v3 = *(v2 + 8 * v1);
  LODWORD(STACK[0x39C]) = v0;
  STACK[0x3E8] = v3;
  return (*(v2 + 8 * (v1 + 40879 + v1 + 7182)))();
}

uint64_t sub_100A0CBBC(__n128 a1)
{
  a1.n128_u16[0] = -24416;
  a1.n128_u8[2] = -96;
  a1.n128_u8[3] = -96;
  a1.n128_u8[4] = -96;
  a1.n128_u8[5] = -96;
  a1.n128_u8[6] = -96;
  a1.n128_u8[7] = -96;
  return (*(v1 + 8 * v2))((v2 + 31889), a1);
}

uint64_t sub_100A0CDD4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v70 = (v67 + (v65 - 2032567367));
  v71 = *(*(a60 - 1680276466) + (*(a61 - 231415367) & 0x165BDC84)) + v70;
  v72 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v71 + 375118981) & (qword_1010C0540 ^ 0x7226FCCC))) ^ (2 * v70) ^ (((v63 ^ a1) >> v62) - (((v63 ^ a1) >> v62 << (((v61 ^ v66) * v69) ^ 0xB9)) & 0x64) + (v61 ^ a8) - 48) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + ((v71 + 375118983) & (qword_1010C0540 ^ 0x7226FCCC)));
  *v70 = v72 ^ 0xB5;
  return (*(v64 + 8 * ((110 * (v65 - (v72 != 181) == v68)) ^ v61)))();
}

uint64_t sub_100A0CFAC@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v23 = v10 - 1;
  v24 = ((v11 ^ a5) + a6) ^ v11 ^ ((v11 ^ a7) + a8) ^ ((v11 ^ v15) + v22) ^ (((v9 - 60) ^ v11 ^ 0x6F) - 47);
  v25 = (((v24 ^ v20) + v18) ^ ((v24 ^ a9) + v21) ^ ((v24 ^ a3) + v19)) + v14;
  *(a4 + v23) = v25 * (v11 + v16) + (v25 * v17 + (v11 + v16) * v12) * a1 + a2;
  return (*(v13 + 8 * (((v23 == 0) | (16 * (v23 == 0))) ^ v9)))();
}

uint64_t sub_100A0D058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v61 = v58 - 1;
  v62 = ((v56 ^ 0xF8) + 25) ^ v56 ^ ((v56 ^ 0x2E) - 49) ^ ((v56 ^ 0xFE) + 31) ^ (((v57 - 44) ^ v56 ^ 0x98) - 40);
  v63 = (((v62 ^ 0xB4) + 49) ^ ((v62 ^ 0xC8) + 77) ^ ((v62 ^ 0xD9) + 94)) - 31;
  STACK[0x298] = v61;
  *(v59 + v61) = v63 * (v56 + 21) + (-21 - v56 - 65 * v63 + 32 * (v56 + 21)) * a9 + 105;
  return (*(v60 + 8 * ((973 * (STACK[0x298] == 0)) ^ v57)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_100A0D234()
{
  STACK[0x4E0] = 0;
  STACK[0x6C0] = *(v0 + 8 * (v1 - 32544));
  return (*(v0 + 8 * (v1 - 57304 + 20 * (v1 ^ 0x8E6C))))();
}

uint64_t sub_100A0D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  *(v52 + 24) = v48;
  v53 = STACK[0x288];
  *(*(STACK[0x288] + 24) + 32) = *(STACK[0x288] + 32);
  *(STACK[0x210] + 40) = *(v53 + 8) + *(STACK[0x210] + 40) - 0x3CE25E0EC5200378;
  v54 = LOBYTE(STACK[0x583]);
  *(v53 + 8) = 0x79C4BC1D8A4006F0 - *(v53 + 8);
  *(v53 + 16) = (((v54 ^ 0xA8544F68AA9B59ACLL) + 0x57ABB0975564A654) ^ ((v54 ^ 0x6AC7420A319731C8) - 0x6AC7420A319731C8) ^ (((v51 - 1723186078) & 0x66B5AB7B) + (v54 ^ 0xC2930D629B0C68FFLL) + 0x3D6CF29D64F36BAFLL)) + 0x73B4913AF7C22BBFLL;
  *a48 = 0x3CE25E0EC5200378;
  STACK[0x420] = v49 - 0x2D1A561109647E30;
  v55 = *(STACK[0x350] + 8 * (v51 | (v49 != 0x2D1A561109647E30) | (2 * (v49 != 0x2D1A561109647E30))));
  STACK[0x2D0] = &STACK[0x580];
  STACK[0x290] = v53;
  return v55(v50);
}

uint64_t sub_100A0D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v11 = *(v10 + 8 * (v8 + 20136));
  STACK[0x350] = a8;
  v12 = v11(1032);
  v13 = *(v9 - 200);
  *(v9 - 216) = 0;
  return (*(v13 + 8 * (((v12 == 0) ^ (((v8 - 124) | 0x2E) - 13)) & 1 | v8)))();
}

uint64_t sub_100A0D574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x394]) = a8;
  v11 = (v9 - 38630) | 0x1401;
  v12 = *(v8 + 8 * (v9 ^ 0x5D9Eu));
  STACK[0x400] = a6;
  v13 = v12(1032);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  *(v10 - 192) = 0;
  STACK[0x4A0] = 0;
  *(v10 - 248) = 0;
  *(v10 - 176) = 0;
  STACK[0x498] = 0;
  *(v10 - 256) = 0;
  *(v10 - 168) = 0;
  STACK[0x480] = 0;
  *(v10 - 208) = 0;
  *(v10 - 200) = 0;
  *(v10 - 240) = 0;
  *(v10 - 232) = 0;
  *(v10 - 184) = 0;
  STACK[0x4A8] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v10 - 160) = 0;
  STACK[0x4B0] = 0;
  STACK[0x398] = v13;
  *(v10 - 224) = v11;
  v14 = *(v8 + 8 * (((v13 == 0) * ((((v9 + 1790929109) & 0xF76FD117) - 1647295679) ^ v11)) ^ v9));
  *(v10 - 148) = 1644243867;
  return v14();
}

uint64_t sub_100A0D9A8(int a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + v4 + 72);
  v10 = (((v6 | 0x184) ^ 0x7BF6BC6E) & (2 * v4)) + (v4 ^ 0x3DFB5FFF);
  *(v5 + (v10 - 1039884287)) = v9 ^ a2;
  *(v5 + (v10 - 1039884286)) = (BYTE1(v9) ^ 0x86) + (~(2 * (BYTE1(v9) ^ 0x86)) | 0x41) + 96;
  *(v5 + (v10 + a1)) = (BYTE2(v9) ^ 0x7C) - ((2 * (BYTE2(v9) ^ 0x7C)) & 0xBF) + 95;
  *(v5 + (v10 - 1039884284)) = (HIBYTE(v9) ^ 0x1D) - ((2 * (HIBYTE(v9) ^ 0x1D)) & 0xBF) + 95;
  return (*(v8 + 8 * ((23524 * (v4 + 4 < *(a4 + 92))) ^ v7)))();
}

uint64_t sub_100A0E418(double a1, double a2, double a3, double a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v13 = *(v10 + 8 * (((((v11 == v12) ^ ((a10 ^ 0xB5) + 1)) & 1) * (((a10 - 19671) | 0x4005) - 17756)) ^ a10));
  v14 = *&STACK[0x560];
  v15 = STACK[0x3C0];
  STACK[0x590] = v12;
  return v13(v15, *&STACK[0x500], *&STACK[0x4F0], *&STACK[0x4E0], *&STACK[0x4C0], a5, v14);
}

uint64_t sub_100A0E550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = STACK[0x5D8];
  v11 = *(STACK[0x5D8] + 8);
  v12 = *(v9 + 640);
  v12[1] = v11;
  *v12 = *v10;
  return (*(a8 + 8 * (((((v8 + 24683) | 0x54) ^ (v8 - 1777338919) & 0x69EFEFFF ^ 0x85B4) * (v11 == 0)) ^ v8)))();
}

uint64_t sub_100A0E7D4()
{
  v3 = (v0 + 1) | 4;
  v4 = ((((v1 ^ 0xFB) + 3) ^ v1 ^ ((v1 ^ 0xFB) + 3) ^ ((v1 ^ 7) - 1)) ^ (((((v3 - 17) & 0xB) + 96) ^ v1) + 9)) & 0xF;
  return (*(v2 + 8 * ((111 * (((v4 - v3) | (v3 - v4)) >= 0)) ^ (v3 + 8481))))();
}

uint64_t sub_100A0E974()
{
  v2 = STACK[0x478];
  *v2 = 0u;
  v2[1] = 0u;
  return (*(v1 + 8 * (v0 ^ 0x981E ^ (110144 * (((((v0 + 13784) | 0x4088) - 1306316324) ^ v0) < 0x4F3F77DE)))))();
}

uint64_t sub_100A0EA58()
{
  v2 = -1802333311 * STACK[0x2A0];
  v3 = *(*(&off_1010A0B50 + (v1 ^ 0xD7E3F0FA)) + ((-127 * STACK[0x2A0]) ^ 0x39) - 1637384006);
  LODWORD(STACK[0x2B4]) = *(*(&off_1010A0B50 + (v1 + 672934570)) + ((v2 >> (v1 + 102)) ^ 0xB8) - 2015567026);
  v4 = *(*(&off_1010A0B50 + (v1 ^ 0xD7E3E837)) + (HIBYTE(v2) ^ 0x20) - 1343054115);
  LODWORD(STACK[0x2A0]) = (v3 - 10);
  LODWORD(STACK[0x29C]) = (687865856 * v4 + 1006632960) ^ 0x96FFFFFF;
  LODWORD(STACK[0x364]) = -1772253337;
  return (*(v0 + 8 * ((63720 * (v1 < 0x25EBE34E)) ^ (v1 + 672953693))))(1888019921, 1888023059, 3315342186, 2267437531, 122083653, 62890);
}

uint64_t sub_100A0EC28@<X0>(int a1@<W8>)
{
  v3 = a1 + 1362;
  LODWORD(STACK[0x2B4]) = (a1 - 1640667218) & 0x61C9F9AA;
  v4 = (*(v1 + 8 * ((a1 + 1362) ^ 0x694D)))(1028);
  *(v2 - 256) = v4;
  return (*(v1 + 8 * ((2007 * (((v4 == 0) ^ (v3 + 96)) & 1)) ^ v3)))();
}

uint64_t sub_100A0EC90(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *(*(&off_1010A0B50 + v7) + 4 * ((v3 ^ v11) & v5 ^ v6) + v8);
  *(a1 + 4 * v3) = a3 ^ LODWORD(STACK[0x25C]) ^ v14 ^ (v14 >> 8) ^ (v14 >> 4) ^ v9;
  return (*(v12 + 8 * (((v4 == 0) * v10) ^ v13)))();
}

uint64_t sub_100A0F084()
{
  v5 = 1112314453 * ((((v4 - 216) | 0x21359455) - ((v4 - 216) & 0x21359450)) ^ 0xCE63BE8C);
  *(v4 - 208) = &STACK[0x494];
  *(v4 - 200) = (v3 ^ 0x66BFFBAF) + (((v1 - 42475) | 0x111) ^ 0xBF6CFB2D) + v5 + ((v3 << ((v1 - 62) & 0xBF ^ 0xAE)) & 0xCD7FF75E);
  *(v4 - 216) = v5 + v1 - 33683;
  v6 = (*(v0 + 8 * (v1 + 8505)))(v4 - 216);
  return (*(v0 + 8 * (v1 ^ (25 * (v2 == 0)))))(v6);
}

void sub_100A0F174()
{
  if (v0 == 1363701600)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891401;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_100A0F238(int a1, int a2, int a3, int a4)
{
  v12 = (*(*(v10 + 8) + v6) ^ a1) + v5;
  *(*(v4 + 8) + v6) = v12 + a3 - (a2 & (2 * v12));
  return (*(v11 + 8 * ((((v9 | v8) >= 0) * a4) ^ v7)))();
}

uint64_t sub_100A0F2A8()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x4841)))(1032);
  STACK[0x368] = v2;
  LODWORD(STACK[0x2B0]) = v0 ^ 0x24AD;
  return (*(v1 + 8 * (((((v0 ^ 0x24AD ^ (v2 == 0)) & 1) == 0) * (v0 - 33040)) ^ v0)))();
}

uint64_t sub_100A0F314()
{
  v4 = (((v3 ^ 0xB4DD9000) + 1260548096) ^ ((v3 ^ 0xD76B2371) + 680844431) ^ ((v3 ^ 0x8A637460) + 1973193632)) + 408714918;
  v5 = (((v0 ^ 0x7D00B9E) - 131074974) ^ ((v0 ^ 0x8BBCF0CF) + 1950551857) ^ (v1 - 1706689729 + (v1 ^ 0xC6 ^ v0 ^ 0x65B9F407))) + 408714918;
  v6 = (v4 < 0x2E86B795) ^ (v5 < 0x2E86B795);
  v7 = v4 < v5;
  if (v6)
  {
    v7 = v5 < 0x2E86B795;
  }

  return (*(v2 + 8 * ((85 * !v7) ^ v1)))();
}

uint64_t sub_100A0F558(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, unint64_t a47, unint64_t a48, unint64_t a49, unint64_t a50, unint64_t a51, unint64_t a52)
{
  STACK[0x530] = STACK[0x2D0];
  STACK[0x5A0] = STACK[0x290];
  STACK[0x650] = STACK[0x288];
  STACK[0x3D0] = a48;
  STACK[0x468] = a51;
  STACK[0x430] = a52;
  STACK[0x400] = v54;
  STACK[0x660] = a50;
  STACK[0x490] = a49;
  STACK[0x520] = a47;
  STACK[0x4D0] = 0;
  STACK[0x4B0] = v53;
  STACK[0x438] = a1;
  STACK[0x560] = a1;
  STACK[0x3E0] = a1;
  v56 = (*(v52 + 8 * (v55 ^ 0xF08B)))();
  STACK[0x320] = 0;
  return (*(v52 + 8 * v55))(v56);
}

uint64_t sub_100A0F5E8@<X0>(uint64_t a1@<X8>)
{
  v8 = (v6 - 1) & 0xF;
  v12 = (v3 - a1 - v6 + v8 + 1) > 0xF && (v5 - a1 - v6 + v8 + 2) > 0xF && v2 - a1 >= (v1 - 7140) - 40717 && v4 - a1 - v6 + v8 + 3 >= ((4 * v1) ^ 0x2EC14uLL);
  return (*(v7 + 8 * (((4 * v12) | (8 * v12)) ^ v1)))(v6, (4 * v1) ^ 0x28610u);
}

uint64_t sub_100A0F6DC()
{
  *(v1 - 256) = 0;
  v2 = *(v1 - 168);
  v3 = *(v2 + 1) - ((2 * *(v2 + 1)) & 0xFF96);
  LODWORD(STACK[0x1018]) = (*(v2 + 5) ^ 0xFFFFFFF9) + ((2 * *(v2 + 5)) & 0xFFF3) + 120;
  LODWORD(STACK[0x1020]) = v3 + 75;
  return (*(*(v1 - 144) + 8 * v0))();
}

uint64_t sub_100A0F814@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  LODWORD(STACK[0x9B4]) = a2;
  LODWORD(STACK[0x1874]) = v5;
  LODWORD(STACK[0x1950]) = v2;
  LODWORD(STACK[0x1A90]) = v4;
  LODWORD(STACK[0xB14]) = v7;
  LODWORD(STACK[0x175C]) = v3;
  return (*(a1 + 8 * v6))();
}

uint64_t sub_100A0F848(uint64_t a1, int8x16_t a2, int8x16_t a3, int64x2_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  v32.i64[0] = v16 + a12 + 3;
  v32.i64[1] = v16 + a12 + 2;
  v33.i64[0] = v16 + a12 + 5;
  v33.i64[1] = v16 + a12 + 4;
  v34.i64[0] = v16 + a12 + 9;
  v34.i64[1] = v16 + a12 + 8;
  v35.i64[0] = v16 + a12 + 7;
  v35.i64[1] = v16 + a12 + v18;
  v36 = vandq_s8(v35, a2);
  v37 = vandq_s8(v34, a2);
  v38 = vandq_s8(v33, a2);
  v39 = vandq_s8(v32, a2);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vorrq_s8(vandq_s8(vsubq_s64(a5, v43), a6), vandq_s8(vaddq_s64(v43, a4), a7));
  v45 = vorrq_s8(vandq_s8(vsubq_s64(a5, v42), a6), vandq_s8(vaddq_s64(v42, a4), a7));
  v46 = vorrq_s8(vandq_s8(vsubq_s64(a5, v41), a6), vandq_s8(vaddq_s64(v41, a4), a7));
  v47 = vorrq_s8(vandq_s8(vsubq_s64(a5, v40), a6), vandq_s8(vaddq_s64(v40, a4), a7));
  v48 = veorq_s8(v47, a8);
  v49 = veorq_s8(v46, a8);
  v50 = veorq_s8(v46, a9);
  v51 = veorq_s8(v47, a9);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), v20);
  v53 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), v20);
  v55 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v53);
  v57 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(v57, v55), v21);
  v60 = veorq_s8(v58, v21);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v66, v66), v22), v66), v23), v24);
  v68 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v65, v65), v22), v65), v23), v24);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v67, v68);
  v72 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = veorq_s8(vaddq_s64(v72, v70), v25);
  v75 = veorq_s8(v73, v25);
  v76 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v77 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v78 = veorq_s8(v74, v76);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78);
  v81 = vaddq_s64(v79, v77);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v81, v81), v26), v81), v27), v28);
  v83 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), v26), v80), v27), v28);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v86 = veorq_s8(v82, v83);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = veorq_s8(vaddq_s64(v87, v85), v29);
  v90 = veorq_s8(v88, v29);
  v122.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a3)));
  v122.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a3)));
  v91 = veorq_s8(v45, a8);
  v92 = veorq_s8(v45, a9);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v20);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v21);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), v22), v97), v23), v24);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v25);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v26), v102), v27), v28);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v29);
  v122.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a3)));
  v106 = veorq_s8(v44, a8);
  v107 = veorq_s8(v44, a9);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v20);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v21);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v22), v112), v23), v24);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v25);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v117, v117), v26), v117), v27), v28);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v29);
  v122.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL))), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a3)));
  *(v16 + a12 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v122, v30)), *(v17 + a12));
  return (*(a1 + 8 * (((v15 == 0) * v19) ^ a15)))();
}

uint64_t sub_100A0FD4C@<X0>(int a1@<W3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  HIDWORD(a15) = v16;
  LODWORD(v204) = 0;
  *(v19 - 124) = v18 + 1289456956;
  v21 = v16 ^ 0x705C806ALL;
  *(v19 - 144) = v21;
  v22 = *(a2 + (v16 & 0xFFFFFFFA ^ 0x705C806FLL));
  v23 = v18 + 1289456956 + *(a10 + (*(a2 + v21) ^ 0xEFLL)) - 117;
  HIDWORD(v204) = 54 * (v18 ^ 0x6BD0);
  v24 = (HIDWORD(v204) ^ 0xFFFFB293) & v16 ^ 0x705C806ELL;
  *(v19 - 152) = v24;
  v25 = v23 ^ 0x8A;
  LOBYTE(v23) = -3 * *(a9 + (v22 ^ 0x68)) - 118;
  LODWORD(v22) = *(a8 + (*(a2 + v24) ^ 0x99));
  v26 = (v23 ^ ((v23 & 0xF0) >> 4)) << 16;
  v27 = v16 & 0xFFFFFFF6 ^ 0x705C806BLL;
  v28 = v16 & 0xFFFFFFF7 ^ 0x705C806ALL;
  *(v19 - 168) = v28;
  *(v19 - 160) = v27;
  v214 = v16 & 0xFFFFFFFE ^ 0x705C806BLL;
  v29 = v18;
  v30 = (v26 ^ 0x1A11FFC3) & ((((v22 >> 3) | (32 * v22)) << 8) ^ 0x1A93D2C3) | v26 & 0x6C0000;
  LOBYTE(v26) = -3 * *(a9 + (*(a2 + v27) ^ 1)) - 118;
  v31 = (*(a10 + (*(a2 + v28) ^ 0x21)) << 24) - 2046820352;
  v32 = -3 * *(a9 + (*(a2 + v214) ^ 0xD6)) - 118;
  LODWORD(v22) = (((v26 ^ ((v26 & 0xF0) >> 4)) << 16) ^ 0xA08DD24D) & (v31 ^ 0x93FFDEDD) | v31 & 0x5F000000;
  v33 = v16 & 0xFFFFFFF0 ^ 0x705C806FLL;
  *(v19 - 136) = v33;
  v213 = v16 & 0xFFFFFFF2 ^ 0x705C806FLL;
  v34 = (v32 ^ ((v32 & 0xF0) >> 4)) << 16;
  LOBYTE(v26) = *(a7 + (*(a2 + v33) ^ 0x1CLL));
  v35 = (v34 ^ 0xFFF0FFFF) & ((v25 << 24) ^ 0x1F913E42) | v34 & 0x6E0000;
  LOBYTE(v25) = -3 * *(a9 + (*(a2 + v213) ^ 0x77)) - 118;
  v212 = v16 & 0xFFFFFFF8 ^ 0x705C806FLL;
  v36 = (v25 ^ ((v25 & 0xF0) >> 4));
  HIDWORD(v38) = v16 ^ 0xB3643F60;
  LODWORD(v38) = v16 ^ 0xB3643F60;
  v37 = v38 >> 21;
  HIDWORD(v38) = v37 ^ 0x619;
  LODWORD(v38) = v37 ^ 0xC5F82000;
  LOBYTE(v37) = *(a7 + (*(a2 + v212) ^ 0x8BLL)) - 54;
  v39 = *(a8 + (*(a2 + (v38 >> 11)) ^ 0x71));
  v211 = v16 & 0xFFFFFFF5 ^ 0x705C806ALL;
  LOWORD(v39) = ((v39 >> 3) | (32 * v39)) << 8;
  v40 = (v39 | 0xFFFF01FF) & ((v36 << 16) ^ 0xF17812F1) | v39 & 0xED00;
  v41 = *(a8 + (*(a2 + v211) ^ 0x48));
  v210 = v16 & 0xFFFFFFF3 ^ 0x705C806ELL;
  v208 = v16 & 0xFFFFFFFD ^ 0x705C806ALL;
  v42 = ((((v41 >> 3) | (32 * v41)) << 8) ^ 0xA9EF138C) & (v22 ^ 0x6E02DB2) | v22 & 0x56100041;
  LODWORD(v22) = (*(a10 + (*(a2 + v210) ^ 6)) << 24) - 2046820352;
  v43 = *(a8 + (*(a2 + v208) ^ 0x1ALL));
  v44 = (v22 & 0x56000000 ^ 0xBEFE6D1E ^ (v22 ^ 0x1AFFFF01) & (v40 ^ 0x582089F0)) & (~(v26 - 54) | 0xFFFFFF00) | (v26 - 54) & 0xE0;
  v45 = v43 >> 3;
  v206 = v16 & 0xFFFFFFFB ^ 0x705C806ELL;
  v46 = (((32 * v43) ^ 0x99999999) & ((v43 >> 3) ^ 0xFD) | (v43 >> 3) & 6) << 8;
  v47 = *(a10 + (*(a2 + v206) ^ 0x93));
  v205 = v16 & 0xFFFFFFF4 ^ 0x705C806BLL;
  LODWORD(v21) = ((v47 - ((((2 * v47) ^ (4 * ((v47 ^ 0x18) & (2 * ((v47 ^ 0x18) & (2 * ((v47 ^ 0x18) & (2 * ((v47 & 0x9A | 0x24) ^ v47 & 0x78)) ^ (v47 & 0x9A | 0x24) ^ v47 & 0x78)) ^ (v47 & 0x9A | 0x24) ^ v47 & 0x78)) ^ (v47 & 0x9A | 0x24) ^ v47 & 0x78)) ^ 0x44444444) + 88) & 0x64)) << 24) - 1207959552;
  LODWORD(v21) = v21 & 0xC1FFFFFF | ((v37 & 0x1D | (~v37 | 0xFFFFFF00) & (v30 ^ 0x8732CA21)) ^ 0xA386AD54) & ~v21;
  v207 = v16 & 0xFFFFFFFC ^ 0x705C806BLL;
  LOBYTE(v30) = *(a7 + (*(a2 + v207) ^ 0x26)) - 54;
  v48 = (((v46 & 0x2B00 | (v46 ^ 0xFFFF90C6) & (v35 ^ 0x8957EA84)) ^ 0x6DF9C72B) & (~v30 | 0xFFFFFF00) | v30 & 0x12) ^ v15;
  v49 = v44 ^ v17;
  v50 = (~(*(a7 + ((((*(a2 + v205) - (*(a2 + v205) ^ 0xF8)) ^ 0xFFFFFFF0) + *(a2 + v205)) ^ 0xBBLL)) - 54) | 0xFFFFFF00) & (v42 ^ 0xAE46A540);
  LOBYTE(v30) = v26 & 0x24 ^ 0x3D;
  LOBYTE(v30) = (v26 ^ 0x4A) & (2 * ((v26 ^ 0x4A) & (2 * ((v26 ^ 0x4A) & (2 * ((v26 ^ 0x4A) & (2 * ((v26 ^ 0x4A) & (2 * ((v26 ^ 0x4A) & 0x2E ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30;
  v209 = *(v19 - 120) < 0xC500D04C;
  v51 = v45 ^ 2;
  v52 = v21 ^ v20;
  v53 = (*(a7 + ((((*(a2 + v205) - (*(a2 + v205) ^ 0xF8)) ^ 0xFFFFFFF0) + *(a2 + v205)) ^ 0xBBLL)) - 54) & 0x72 ^ a1 ^ v50;
  if (((v26 ^ (2 * v30) ^ 0x59) - 90) | (v26 ^ (2 * v30)) ^ 0x59)
  {
    v54 = v52 ^ 0x1C;
  }

  else
  {
    v54 = v51;
  }

  v55 = v53 ^ 0x81;
  v56 = *(&off_1010A0B50 + (v29 - 25299)) - 421970962;
  v57 = *(&off_1010A0B50 + (v29 ^ 0x6FDF)) - 1403996926;
  v58 = *&v57[4 * (HIBYTE(v48) ^ 0x83)];
  v59 = *(&off_1010A0B50 + (v29 - 26479)) - 315268494;
  v60 = v49;
  v61 = v49 ^ 0x68;
  v62 = *(&off_1010A0B50 + (v29 ^ 0x634E)) - 637971943;
  v63 = (-617227789 * v58 + 629579645) ^ (2042148582 * v58 + 1450617850) ^ *&v59[4 * (BYTE2(v52) ^ 0xB)] ^ *&v62[4 * v61] ^ (*&v56[4 * (((v53 ^ 0x281) >> 8) ^ 0xA2)] - ((((v53 ^ 0x281) >> 8) - 1235327663) ^ ((v53 ^ 0x281) >> 8)) - 535574632) ^ ((BYTE2(v52) ^ 0xF8) - 1335884252);
  v64 = *&v57[4 * (HIBYTE(v52) ^ 0x4E)];
  v65 = *&v59[4 * (((v53 ^ 0xDE140281) >> 16) ^ 0xF3)] ^ (((v53 ^ 0xDE140281) >> 16) - 1335884252) ^ (-617227789 * v64 + 629579645) ^ (2042148582 * v64 + 1450617850) ^ *&v62[4 * (v48 ^ 0x70)] ^ (*&v56[4 * (BYTE1(v60) ^ 0x2E)] - (((BYTE1(v60) ^ 0x8C) - 1235327663) ^ BYTE1(v60) ^ 0x8C) - 535574632);
  v66 = *&v57[4 * (HIBYTE(v53) ^ 0xA8)];
  v67 = *&v59[4 * (BYTE2(v60) ^ 0x1A)];
  v68 = (-617227789 * v66 + 629579645) ^ (2042148582 * v66 + 1450617850) ^ (*&v56[4 * (BYTE1(v48) ^ 0x59)] - (((BYTE1(v48) ^ 0xFB) - 1235327663) ^ BYTE1(v48) ^ 0xFB) - 535574632) ^ *&v62[4 * (v54 ^ 3)] ^ ((v67 ^ ((BYTE2(v60) ^ 0xE9) - 1335884252 - (v67 ^ ((BYTE2(v60) ^ 0xE9) - ((2 * ((BYTE2(v60) ^ 0xE9) - 1335884252)) & 0x8F2) + 1021923997))) ^ 0x8C894C79 ^ (1937159047 - (((v67 ^ 0x4FED9C77) - 1340972151) ^ ((v67 ^ 0xA0835499) + 1602005863) ^ ((v67 ^ 0x63E78497) - 1676117143)))) + (BYTE2(v60) ^ 0xE9) - 1335884252);
  v69 = *&v57[4 * (HIBYTE(v60) ^ 0x1C)];
  v70 = (2042148582 * v69 + 1450617850) ^ ((BYTE2(v48) ^ 0xB7) - 1335884252) ^ (-617227789 * v69 + 629579645) ^ *&v59[4 * (BYTE2(v48) ^ 0x44)] ^ *&v62[4 * v55] ^ (*&v56[4 * (BYTE1(v52) ^ 0x77)] - (((BYTE1(v52) ^ 0xD5) - 1235327663) ^ BYTE1(v52) ^ 0xD5) - 535574632);
  v71 = *&v57[4 * ((v63 ^ 0x5CE28B7Bu) >> 24)];
  BYTE1(v66) = BYTE1(v65) ^ 0x51;
  v72 = *&v59[4 * (((v65 ^ 0x684551FEu) >> 16) ^ 0xF3)] ^ (((v65 ^ 0x684551FEu) >> 16) - 1335884252) ^ (2042148582 * v71 + 1450617850) ^ (-617227789 * v71 + 629579645) ^ *&v62[4 * (v70 ^ 0xE)] ^ (*&v56[4 * (BYTE1(v68) ^ 0xD7)] - (((BYTE1(v68) ^ 0x75) - 1235327663) ^ BYTE1(v68) ^ 0x75) - 535574632);
  v73 = *&v57[4 * ((v65 ^ 0x684551FEu) >> 24)];
  v74 = (2042148582 * v73 + 1450617850) ^ (-617227789 * v73 + 629579645);
  v75 = *&v59[4 * (BYTE2(v68) ^ 0x4C)];
  v76 = (v75 & 0x86408D9 | 0x53035026) ^ ((BYTE2(v68) ^ 0xBF) - 1335884252) ^ (v74 ^ v75) & 0xF79BF726;
  v77 = (v76 & 0x7B55BAEB ^ v74 & 0x84408C9 ^ 0xA4AF6734) & (v74 & 0x200010 ^ 0x6B2F6B7D ^ v76 & 0x84AA4514) | (v76 & 0x7B55BAEB ^ v74 & 0x84408C9) & 0x10509082;
  v78 = *&v57[4 * (HIBYTE(v68) ^ 0x3E)];
  v79 = BYTE2(v70) ^ 0xB3;
  v80 = *&v59[4 * (BYTE2(v70) ^ 0x40)];
  v81 = *&v62[4 * (v65 ^ 0xFD)] ^ __ROR4__(__ROR4__((*&v56[4 * (((v63 ^ 0x8B7B) >> 8) ^ 0xA2)] - ((((v63 ^ 0x8B7B) >> 8) - 1235327663) ^ ((v63 ^ 0x8B7B) >> 8)) - 535574632) ^ __ROR4__((((1534263296 * v78) | ((2042148582 * v78 + 1450617850) >> 17)) + 1442643968) ^ (((-319193088 * v78) | ((-617227789 * v78 + 629579645) >> 17)) + 1337884672) ^ 0xCF0D065F, 15) ^ (((1335884252 - v79) ^ (v79 - ((2 * v79 + 1623198792) & 0x60000C9A) + 720925809) ^ 0x7A986E4D ^ ((v80 ^ 0x8C894C79) - ((v79 + 1021923998 + ((2 * v79 + 1623198792) & 0xF2 ^ 0xFFFFF7FF)) ^ v80))) + (v80 ^ 0x8C894C79)), 8) ^ 0xA8F06EB0, 24);
  v82 = (BYTE1(v66) - 1235327663) ^ BYTE1(v66);
  v83 = *&v56[4 * (BYTE1(v66) ^ 0xA2)];
  v84 = *&v62[4 * (v63 ^ 0x78)] ^ (*&v56[4 * (BYTE1(v70) ^ 0x9A)] - (((BYTE1(v70) ^ 0x38) - 1235327663) ^ BYTE1(v70) ^ 0x38) - 535574632) ^ 0xD6B70461 ^ v77;
  v85 = v83 - v82;
  v86 = *&v57[4 * (HIBYTE(v70) ^ 0xB3)];
  v87 = *&v59[4 * (((v63 ^ 0x5CE28B7Bu) >> 16) ^ 0xF3)] ^ (((v63 ^ 0x5CE28B7Bu) >> 16) - 1335884252) ^ (2042148582 * v86 + 1450617850) ^ (-617227789 * v86 + 629579645) ^ *&v62[4 * (v68 ^ 0x58)];
  v88 = *&v57[4 * (HIBYTE(v72) ^ 0xA6)];
  v89 = v87 ^ (v85 - 535574632);
  HIDWORD(v90) = *&v59[4 * (BYTE2(v84) ^ 0xF3)] ^ (-617227789 * v88 + 629579645) ^ (2042148582 * v88 + 1450617850) ^ (BYTE2(v84) - 1335884252) ^ 0x33CF92FB;
  LODWORD(v90) = HIDWORD(v90);
  v91 = *&v62[4 * (v89 ^ 0x5C)] ^ ((v90 >> 15) >> 17) ^ (*&v56[4 * (BYTE1(v81) ^ 0x30)] - (((BYTE1(v81) ^ 0x92) - 1235327663) ^ BYTE1(v81) ^ 0x92) - 535574632) ^ ((((v90 >> 15) << 15) ^ 0xCD088000) + 1917726605 + (((v90 >> 15) << 16) & 0xE49C0000 ^ 0x7FEFFFFF));
  v92 = *&v57[4 * HIBYTE(v84)];
  v93 = *&v62[4 * (v72 ^ 0xE0)] ^ (*&v56[4 * (((v89 ^ 0x365C) >> 8) ^ 0xA2)] - ((((v89 ^ 0x365C) >> 8) - 1235327663) ^ ((v89 ^ 0x365C) >> 8)) - 535574632) ^ ((BYTE2(v81) ^ 0x95) - 1335884252) ^ *&v59[4 * (BYTE2(v81) ^ 0x66)] ^ __ROR4__(__ROR4__((2042148582 * v92 + 1450617850) ^ (-617227789 * v92 + 629579645) ^ 0x4D0D60D4, 12) ^ 0x2E00711C, 20);
  v94 = *&v57[4 * (HIBYTE(v81) ^ 0xC)];
  v95 = *&v59[4 * (((v89 ^ 0xD21E365C) >> 16) ^ 0xF3)] ^ (((v89 ^ 0xD21E365C) >> 16) - 1335884252) ^ (-617227789 * v94 + 629579645) ^ (2042148582 * v94 + 1450617850) ^ (*&v56[4 * (BYTE1(v72) ^ 0x3A)] - (((BYTE1(v72) ^ 0x98) - 1235327663) ^ BYTE1(v72) ^ 0x98) - 535574632) ^ *&v62[4 * v84];
  v96 = v81;
  v97 = (v81 ^ 0xF4) + 1762629908 + ((2 * v81) & 0x26 ^ 0xFFFFFFDF);
  v98 = *&v57[4 * (HIBYTE(v89) ^ 0xA4)];
  v99 = v97 ^ ((BYTE2(v72) ^ 0xBE) - 1335884252) ^ *&v59[4 * (BYTE2(v72) ^ 0x4D)] ^ (2042148582 * v98 + 1450617850) ^ (-617227789 * v98 + 629579645) ^ *&v62[4 * (v96 ^ 0xF7)] ^ (*&v56[4 * (BYTE1(v84) ^ 0xA2)] - ((BYTE1(v84) - 1235327663) ^ BYTE1(v84)) - 535574632);
  v100 = v95 ^ 0xA0D013AA;
  v101 = v93 ^ 0xFD61BFCC;
  v102 = *&v57[4 * (HIBYTE(v91) ^ 0x83)];
  v103 = v96 ^ 0x6A1427F ^ v99;
  v104 = (BYTE2(v101) - 1335884252) ^ *&v59[4 * (BYTE2(v101) ^ 0xF3)] ^ (2042148582 * v102 + 1450617850) ^ (-617227789 * v102 + 629579645) ^ *&v62[4 * (v96 ^ 0x7F ^ v99)] ^ (*&v56[4 * (BYTE1(v100) ^ 0xA2)] - ((BYTE1(v100) - 1235327663) ^ BYTE1(v100)) - 535574632);
  v105 = *&v57[4 * (HIBYTE(v93) ^ 0x8B)];
  v106 = *&v59[4 * (BYTE2(v100) ^ 0xF3)] ^ (BYTE2(v100) - 1335884252) ^ (-617227789 * v105 + 629579645) ^ (2042148582 * v105 + 1450617850) ^ *&v62[4 * (v91 ^ 0x92)] ^ (*&v56[4 * (BYTE1(v103) ^ 0xA2)] - ((BYTE1(v103) - 1235327663) ^ BYTE1(v103)) - 535574632);
  v107 = *&v57[4 * (HIBYTE(v95) ^ 0xD6)];
  v108 = *&v59[4 * (BYTE2(v103) ^ 0xF3)] ^ (BYTE2(v103) - 1335884252) ^ (-617227789 * v107 + 629579645) ^ (2042148582 * v107 + 1450617850) ^ *&v62[4 * (v93 ^ 0xCC)] ^ (*&v56[4 * (BYTE1(v91) ^ 0x4B)] - (((BYTE1(v91) ^ 0xE9) - 1235327663) ^ BYTE1(v91) ^ 0xE9) - 535574632);
  v109 = *&v56[4 * (BYTE1(v101) ^ 0xA2)] - ((BYTE1(v101) - 1235327663) ^ BYTE1(v101)) - 535574632;
  v110 = *&v57[4 * (HIBYTE(v99) ^ 0x70)];
  v111 = ((BYTE2(v91) ^ 0xF) - 1335884252) ^ (2042148582 * v110 + 1450617850) ^ *&v59[4 * (BYTE2(v91) ^ 0xFC)] ^ (-617227789 * v110 + 629579645) ^ 0xCCE4E4BE ^ (v109 - ((2 * v109) & 0x80DB518E) + 1080928455);
  v112 = *&v62[4 * v100];
  v113 = v111 & 0x400000;
  v114 = (v111 & 0x400000 & ~v112) == 0;
  v115 = v112 ^ 0x24C65577;
  if (!v114)
  {
    v113 = -v113;
  }

  v116 = (v113 + v115) ^ v111 & 0xFFBFFFFF;
  v117 = BYTE2(v104) ^ 0xC4;
  v118 = *&v57[4 * ((v104 ^ 0xA1C4487A) >> 24)];
  v119 = *&v59[4 * (BYTE2(v106) ^ 0x2A)] ^ ((BYTE2(v106) ^ 0xD9) - 1335884252) ^ (-617227789 * v118 + 629579645) ^ (2042148582 * v118 + 1450617850) ^ (*&v56[4 * (BYTE1(v108) ^ 0xE4)] - (((BYTE1(v108) ^ 0x46) - 1235327663) ^ BYTE1(v108) ^ 0x46) - 535574632) ^ *&v62[4 * (v116 ^ 0xD3)];
  v120 = *&v57[4 * (HIBYTE(v106) ^ 0xB)];
  v121 = *&v59[4 * (BYTE2(v108) ^ 0x9A)] ^ ((BYTE2(v108) ^ 0x69) - 1335884252) ^ (2042148582 * v120 + 1450617850) ^ (-617227789 * v120 + 629579645) ^ *&v62[4 * (v104 ^ 0x79)] ^ (*&v56[4 * (BYTE1(v116) ^ 0xD8)] - (((BYTE1(v116) ^ 0x7A) - 1235327663) ^ BYTE1(v116) ^ 0x7A) - 535574632);
  v122 = *&v57[4 * (HIBYTE(v108) ^ 0xB6)];
  v123 = (2042148582 * v122 + 1450617850) ^ (-617227789 * v122 + 629579645) ^ *&v62[4 * (v106 ^ 0xEF)] ^ (*&v56[4 * (((v104 ^ 0x487A) >> 8) ^ 0xA2)] - ((((v104 ^ 0x487A) >> 8) - 1235327663) ^ ((v104 ^ 0x487A) >> 8)) - 535574632) ^ ((BYTE2(v116) ^ 0xE8) - 1335884252) ^ *&v59[4 * (BYTE2(v116) ^ 0x1B)];
  v124 = *&v57[4 * (HIBYTE(v116) ^ 0x6C)];
  v125 = *&v59[4 * (v117 ^ 0xF3)] ^ (v117 - 1335884252) ^ (2042148582 * v124 + 1450617850) ^ (-617227789 * v124 + 629579645) ^ (*&v56[4 * (BYTE1(v106) ^ 9)] - (((BYTE1(v106) ^ 0xAB) - 1235327663) ^ BYTE1(v106) ^ 0xAB) - 535574632) ^ *&v62[4 * (v108 ^ 0x2B)];
  v126 = *&v57[4 * (HIBYTE(v119) ^ 0x55)];
  v127 = v125 ^ 0x47E14D21;
  v128 = (2042148582 * v126 + 1450617850) ^ *&v59[4 * (BYTE2(v121) ^ 0xDC)] ^ (-617227789 * v126 + 629579645) ^ *&v62[4 * (v125 ^ 0x21)] ^ (*&v56[4 * (BYTE1(v123) ^ 0x72)] - (((BYTE1(v123) ^ 0xD0) - 1235327663) ^ BYTE1(v123) ^ 0xD0) - 535574632) ^ ((~(v121 >> 15) & 0x48) + (BYTE2(v121) ^ 0xB060060B));
  v129 = *&v57[4 * (HIBYTE(v121) ^ 0x35)];
  v130 = *&v59[4 * (BYTE2(v123) ^ 0xD5)] ^ ((BYTE2(v123) ^ 0x26) - 1335884252) ^ (-617227789 * v129 + 629579645) ^ (2042148582 * v129 + 1450617850) ^ *&v62[4 * (v119 ^ 0x56)];
  v131 = *&v57[4 * (HIBYTE(v123) ^ 0xE8)];
  v132 = v130 ^ __ROR4__(__ROR4__((*&v56[4 * (((v125 ^ 0x4D21) >> 8) ^ 0xA2)] - ((((v125 ^ 0x4D21) >> 8) - 1235327663) ^ ((v125 ^ 0x4D21) >> 8)) - 535574632) ^ 0xF25C8890, 23) ^ 0xA0102503, 9);
  v133 = *&v59[4 * (((v125 ^ 0x47E14D21u) >> 16) ^ 0xF3)] ^ (-617227789 * v131 + 629579645) ^ (2042148582 * v131 + 1450617850) ^ 0x8C894C79;
  v134 = (*&v56[4 * (BYTE1(v119) ^ 0x9F)] - (((BYTE1(v119) ^ 0x3D) - 1235327663) ^ BYTE1(v119) ^ 0x3D) - 535574632) ^ *&v62[4 * (v121 ^ 0xD7)] ^ (((1335884252 - BYTE2(v127)) ^ (BYTE2(v127) - ((2 * (BYTE2(v127) - 1335884252)) & 0x60800B7E) - 1540656157) ^ 0xF3CB6DBF ^ (v133 - (v133 ^ (BYTE2(v127) - 1335884252)))) + v133);
  v135 = BYTE1(v121) ^ 0x68;
  v136 = *&v57[4 * HIBYTE(v127)];
  v137 = *&v59[4 * (BYTE2(v119) ^ 0x65)] ^ ((BYTE2(v119) ^ 0x96) - 1335884252) ^ (2042148582 * v136 + 1450617850) ^ (-617227789 * v136 + 629579645) ^ *&v62[4 * (v123 ^ 0x92)] ^ (((1235327663 - v135) ^ (v135 - ((v135 - 1235327663) ^ v135)) ^ 0xA3CF00A4 ^ (v135 - ((2 * (v135 - 1235327663)) & 0x2820CEB6) + 311387308)) - v135 + *&v56[4 * (BYTE1(v121) ^ 0xCA)] - 535574631);
  v138 = ((v134 >> 7) & 0xA2 ^ 0x22) + (BYTE1(v134) ^ 0xB65E6544);
  v139 = BYTE1(v134) ^ 0x1F79B40C ^ (v138 - ((2 * v138) & 0x2CB04832) + 528069657);
  v140 = *&v57[4 * (HIBYTE(v128) ^ 9)];
  v141 = (2042148582 * v140 + 1450617850) ^ (-617227789 * v140 + 629579645) ^ ((BYTE2(v132) ^ 0x64) - 1335884252) ^ *&v59[4 * (BYTE2(v132) ^ 0x97)] ^ *&v62[4 * (v137 ^ 0x4F)] ^ (*&v56[4 * (BYTE1(v134) ^ 0xB7)] + v139 - 2 * v139 - 535574632);
  v142 = *&v57[4 * (HIBYTE(v132) ^ 0x24)];
  v143 = (-617227789 * v142 + 629579645) ^ *&v59[4 * (BYTE2(v134) ^ 0xD4)] ^ (2042148582 * v142 + 1450617850) ^ ((BYTE2(v134) ^ 0x27) - 1335884252);
  v144 = v137 ^ 0xF82FEA4C;
  v146 = __ROR4__((((((v143 >> 25) ^ 0x46) - ((2 * ((v143 >> 25) ^ 0x46)) & 0xC0) + 2057585376) ^ 0x7AA442E0) + ((v143 << 7) ^ 0x44A63C80)) ^ __ROR4__(*&v56[4 * (((v137 ^ 0xEA4C) >> 8) ^ 0xA2)] - ((((v137 ^ 0xEA4C) >> 8) - 1235327663) ^ ((v137 ^ 0xEA4C) >> 8)) - 535574632, 25) ^ 0xD734AECC, 7);
  v145 = *&v62[4 * (v128 ^ 0x45)] ^ v146;
  v147 = *&v57[4 * (HIBYTE(v134) ^ 0x58)];
  v148 = *&v59[4 * (((v137 ^ 0xF82FEA4C) >> 16) ^ 0xF3)] ^ (((v137 ^ 0xF82FEA4C) >> 16) - 1335884252) ^ (-617227789 * v147 + 629579645) ^ (2042148582 * v147 + 1450617850) ^ (*&v56[4 * (((v128 ^ 0xE145) >> 8) ^ 0xA2)] - ((((v128 ^ 0xE145) >> 8) - 1235327663) ^ ((v128 ^ 0xE145) >> 8)) - 535574632) ^ *&v62[4 * (v132 ^ 0x7E)];
  v149 = *&v57[4 * HIBYTE(v144)];
  v150 = *&v59[4 * (((v128 ^ 0x7FA7E145) >> 16) ^ 0xF3)] ^ (((v128 ^ 0x7FA7E145) >> 16) - 1335884252) ^ (2042148582 * v149 + 1450617850) ^ (-617227789 * v149 + 629579645) ^ (*&v56[4 * (BYTE1(v132) ^ 0x55)] - (((BYTE1(v132) ^ 0xF7) - 1235327663) ^ BYTE1(v132) ^ 0xF7) - 535574632) ^ *&v62[4 * (v134 ^ 0x79)];
  v151 = ((v148 >> 7) & 0xA2 ^ 0xA0) + (BYTE1(v148) ^ 0xB65E6521);
  v152 = *&v57[4 * (HIBYTE(v141) ^ 0xA9)];
  v153 = v145 ^ 0xF6D4F2C2;
  v154 = (-617227789 * v152 + 629579645) ^ (2042148582 * v152 + 1450617850) ^ *&v62[4 * (v150 ^ 0xA9)] ^ (BYTE2(v153) - 1335884252) ^ (*&v56[4 * (BYTE1(v148) ^ 0xD2)] - 535574631 + (BYTE1(v148) ^ 0xDE157035 ^ (v151 - ((2 * v151) & 0x40940F74) + 569020346))) ^ *&v59[4 * (BYTE2(v153) ^ 0xF3)];
  v155 = *&v57[4 * (HIBYTE(v145) ^ 0x80)];
  v156 = ((v148 ^ 0x5C3D708B) >> (BYTE2(v60) & 0x10) >> (BYTE2(v60) & 0x10 ^ 0x10));
  v157 = (2042148582 * v155 + 1450617850) ^ (v156 - 1335884252) ^ (-617227789 * v155 + 629579645) ^ *&v59[4 * (v156 ^ 0xF3)] ^ (*&v56[4 * (BYTE1(v150) ^ 0xC6)] - (((BYTE1(v150) ^ 0x64) - 1235327663) ^ BYTE1(v150) ^ 0x64) - 535574632) ^ *&v62[4 * (v141 ^ 0x74)];
  v158 = *&v57[4 * (HIBYTE(v148) ^ 0x2A)];
  v159 = (-617227789 * v158 + 629579645) ^ ((BYTE2(v150) ^ 0x72) - 1335884252) ^ (2042148582 * v158 + 1450617850) ^ *&v59[4 * (BYTE2(v150) ^ 0x81)] ^ (*&v56[4 * (BYTE1(v141) ^ 0xFC)] - (((BYTE1(v141) ^ 0x5E) - 1235327663) ^ BYTE1(v141) ^ 0x5E) - 535574632) ^ *&v62[4 * ((v62[4 * (v128 ^ 0x45)] ^ v146) ^ 0xC2)];
  v160 = *&v57[4 * (HIBYTE(v150) ^ 0xB9)];
  v161 = -617227789 * v160 + 629579645;
  v162 = 2042148582 * v160 + 1450617850;
  v114 = (v161 & 0x4000 & v162) == 0;
  v163 = v161 & 0x4000 ^ v162;
  v164 = v162 - (v161 & 0x4000);
  if (v114)
  {
    v164 = v163;
  }

  v165 = *&v59[4 * (BYTE2(v141) ^ 0x88)] ^ ((BYTE2(v141) ^ 0x7B) - 1335884252) ^ *&v62[4 * (v148 ^ 0x88)] ^ v161 & 0xFFFFBFFF ^ v164 ^ (((((v153 >> 8) & 0xEE ^ 0x181036D ^ (BYTE1(v153) - 1235327663) & 0x804822EE) & ~((BYTE1(v153) - 1235327663) & 0x34124111 ^ (v153 >> 8) & 0x11) | ((BYTE1(v153) - 1235327663) & 0x34124111 ^ (v153 >> 8) & 0x11) & 0x4010) ^ 0xC868F892) + *&v56[4 * (BYTE1(v153) ^ 0xA2)] - 535574631);
  v166 = *&v57[4 * ((v154 ^ 0xC0FE7FD) >> 24)];
  v167 = *&v59[4 * (((v157 ^ 0x849CCE75) >> 16) ^ 0xF3)] ^ (((v157 ^ 0x849CCE75) >> 16) - 1335884252) ^ (2042148582 * v166 + 1450617850) ^ (-617227789 * v166 + 629579645) ^ *&v62[4 * (v165 ^ 0x57)] ^ (*&v56[4 * (((v159 ^ 0x4093) >> 8) ^ 0xA2)] - ((((v159 ^ 0x4093) >> 8) - 1235327663) ^ ((v159 ^ 0x4093) >> 8)) - 535574632);
  v168 = *&v57[4 * (HIBYTE(v157) ^ 0xF2)];
  v169 = *&v59[4 * (((v159 ^ 0xB3C14093) >> 16) ^ 0xF3)] ^ (((v159 ^ 0xB3C14093) >> 16) - 1335884252) ^ (-617227789 * v168 + 629579645) ^ (2042148582 * v168 + 1450617850) ^ *&v62[4 * (v154 ^ 0xFE)] ^ (*&v56[4 * (BYTE1(v165) ^ 0x78)] - (((BYTE1(v165) ^ 0xDA) - 1235327663) ^ BYTE1(v165) ^ 0xDA) - 535574632);
  v170 = *&v57[4 * ((v159 ^ 0xB3C14093) >> 24)];
  v171 = *&v57[4 * (HIBYTE(v165) ^ 0x61)];
  v172 = *&v59[4 * (BYTE2(v165) ^ 0x20)] ^ ((BYTE2(v165) ^ 0xD3) - 1335884252) ^ (2042148582 * v170 + 1450617850) ^ (-617227789 * v170 + 629579645) ^ (-535574632 - (((((v154 ^ 0xC0FE7FD) >> 7) & 0xA2) + (((v154 ^ 0xE7FD) >> 8) ^ 0xB65E6551)) ^ ((v154 ^ 0xE7FD) >> 8)) + *&v56[4 * (((v154 ^ 0xE7FD) >> 8) ^ 0xA2)]) ^ *&v62[4 * (((v157 ^ 0x75) - (v157 ^ 0x76)) ^ 0xFFFFFFFE) + 4 * (v157 ^ 0x75)];
  v173 = (((v154 ^ 0xC0FE7FD) >> 16) - 1335884252) ^ *&v59[4 * (((v154 ^ 0xC0FE7FD) >> 16) ^ 0xF3)] ^ (-617227789 * v171 + 629579645) ^ (2042148582 * v171 + 1450617850) ^ (*&v56[4 * (((v157 ^ 0xCE75) >> 8) ^ 0xA2)] - ((((v157 ^ 0xCE75) >> 8) - 1235327663) ^ ((v157 ^ 0xCE75) >> 8)) - 535574632) ^ *&v62[4 * (v159 ^ 0x90)] ^ 0xDEB77E50;
  v174 = (v173 & 0xE66242BF ^ 0x6ABF9C45) & (v173 & 0x199DBD40 ^ 0xEF67FBBF);
  v175 = v174 | v173 & 0x11002100;
  v176 = *(&off_1010A0B50 + (v29 ^ 0x6372)) - 1100611371;
  v177 = *(&off_1010A0B50 + (v29 ^ 0x7AD4)) - 209169307;
  v178 = *(&off_1010A0B50 + (v29 - 25533)) - 207901774;
  v179 = *(&off_1010A0B50 + (v29 ^ 0x6A33)) - 1539737202;
  v180 = *&v177[4 * (HIBYTE(v167) ^ 0xF)] ^ ((HIBYTE(v167) ^ 0x47) - (HIBYTE(v167) ^ 0x866D2A9A)) ^ ((BYTE2(v169) ^ 0xEDCBCAB7) - 349334840 + *&v176[4 * (BYTE2(v169) ^ 0x1E)]) ^ __ROR4__(*&v178[4 * (BYTE1(v172) ^ 0x9E)], 21) ^ *&v179[4 * (v174 ^ 0x9B)] ^ ((v174 ^ 0x2A) + 1050666316);
  v181 = (HIBYTE(v172) ^ 6) - (HIBYTE(v172) ^ 0x866D2ADB);
  v182 = ((HIBYTE(v169) ^ 0xDE) - (HIBYTE(v169) ^ 0x866D2A03)) ^ ((v167 ^ 0xA0) + 1050666316) ^ ((BYTE2(v172) ^ 0xEDCBCA16) - 349334840 + *&v176[4 * (BYTE2(v172) ^ 0xBF)]) ^ *&v177[4 * (HIBYTE(v169) ^ 0x96)] ^ __ROR4__(*&v178[4 * (BYTE1(v175) ^ 0x5C)], 21) ^ *&v179[4 * (v167 ^ 0x11)];
  v183 = (BYTE2(v175) ^ 0xEDCBCA35) - 349334840 + *&v176[4 * (HIWORD(v175) & 0xFE ^ (HIWORD(v175) & 1 | 0x7DD025C8) ^ 0x7DD02554)];
  v184 = BYTE2(v167);
  LODWORD(v176) = *&v176[4 * (BYTE2(v167) ^ 0xE2)];
  v185 = *&v177[4 * (HIBYTE(v172) ^ 0x4E)];
  v175 >>= 24;
  v186 = *&v177[4 * (v175 ^ 0xF0)];
  v187 = v181 ^ (((2 * v169) & 0x98 ^ 0x10) + (v169 ^ 0x3E9FE5F4)) ^ v185 ^ *&v179[4 * (v169 ^ 9)] ^ v183 ^ __ROR4__(*&v178[4 * (BYTE1(v167) ^ 0x10)], 21);
  LODWORD(v178) = ((v175 ^ 0xB8) - (v175 ^ 0x866D2A65)) ^ ((v172 ^ 0x46) + 1050666316) ^ ((v184 ^ 0xEDCBCA4B) - 349334840 + v176) ^ v186 ^ __ROR4__(*&v178[4 * (BYTE1(v169) ^ 0x20)], 21) ^ *&v179[4 * (v172 ^ 0xF7)];
  v188 = *(&off_1010A0B50 + (v29 - 25181)) - 217892846;
  *(a6 + v206) = ((HIBYTE(v182) ^ 0x5E) + v188[HIBYTE(v182) ^ 0x7FLL] - 121) ^ 0xAF;
  v189 = *(&off_1010A0B50 + (v29 ^ 0x6978)) - 1947561311;
  v190 = v189[v187 ^ 0x2FLL];
  *(a6 + v205) = ((v190 >> 6) | (4 * v190)) ^ 0xFD;
  v191 = *(&off_1010A0B50 + (v29 - 25974)) - 2117138383;
  *(a6 + (v16 & 0xFFFFFFFA ^ 0x705C806FLL)) = BYTE2(v182) ^ 0x95 ^ v191[BYTE2(v182) ^ 0x9BLL];
  *(a6 + v214) = v191[BYTE2(v180) ^ 0x3BLL] & 0xEB ^ (((v191[BYTE2(v180) ^ 0x3BLL] ^ BYTE2(v180)) & 0x14 ^ 0x67) & (BYTE2(v180) & 0xEB ^ 0x5D) | BYTE2(v180) & 0x88) ^ 7;
  *(a6 + v213) = BYTE2(v178) ^ 0xA0 ^ v191[BYTE2(v178) ^ 0x9CLL];
  v192 = v189[v182 ^ 0xDALL];
  *(a6 + v212) = ((v192 >> 6) | (4 * v192)) ^ 0x1B;
  v193 = v189[v180 ^ 0x69];
  *(a6 + v207) = ((v193 >> 6) | (4 * v193)) ^ 0xAD;
  v194 = *(&off_1010A0B50 + (v29 ^ 0x6C5F)) - 48315774;
  *(a6 + v211) = (v194[BYTE1(v187) ^ 0xE2] + 34) ^ 0x4B;
  *(a6 + v208) = (v194[BYTE1(v180) ^ 0x9CLL] + 34) ^ 0xA8;
  *(a6 + v210) = ((BYTE3(v178) ^ 0x34) + v188[(v178 >> 24) ^ 0x15] - 121) ^ 0x91;
  *(a6 + *(v19 - 144)) = ((HIBYTE(v180) ^ 0xF9) + v188[HIBYTE(v180) ^ 0xD8] - 121) ^ 0x8F;
  *(a6 + *(v19 - 168)) = ((HIBYTE(v187) ^ 0xB4) + v188[HIBYTE(v187) ^ 0x95] - 121) ^ 0xAF;
  *(a6 + *(v19 - 152)) = (v194[BYTE1(v182) ^ 0xD6] + 34) ^ 0x64;
  *(a6 + *(v19 - 160)) = BYTE2(v187) ^ 0xED ^ v191[BYTE2(v187) ^ 0x7BLL];
  *(a6 + (v16 & 0xFFFFFFF1 ^ 0x705C806ELL)) = (v194[BYTE1(v178) ^ 0x6BLL] + 34) ^ 0x89;
  v195 = v189[v178 ^ 0x8ELL];
  v196 = (((v16 ^ 0x3B13F88) - 61947784) ^ ((v16 ^ 0xC5FCADA1) + 973296223) ^ ((v16 ^ 0xB6111243) + 1240395197)) - 1043369836;
  LODWORD(v188) = (v196 ^ 0x2CE92FE5) & (2 * (v196 & 0xAE8D0FE6)) ^ v196 & 0xAE8D0FE6;
  LODWORD(v189) = ((2 * (v196 ^ 0x7CF931A5)) ^ 0xA4E87C86) & (v196 ^ 0x7CF931A5) ^ (2 * (v196 ^ 0x7CF931A5)) & 0xD2743E42;
  LODWORD(v191) = v189 ^ 0x52140241;
  LODWORD(v189) = (v189 ^ 0x80603C00) & (4 * v188) ^ v188;
  LODWORD(v188) = ((4 * v191) ^ 0x49D0F90C) & v191 ^ (4 * v191) & 0xD2743E40;
  LODWORD(v189) = (v188 ^ 0x40503800) & (16 * v189) ^ v189;
  LODWORD(v188) = ((16 * (v188 ^ 0x92240643)) ^ 0x2743E430) & (v188 ^ 0x92240643) ^ (16 * (v188 ^ 0x92240643)) & 0xD2743E40;
  LODWORD(v189) = v189 ^ 0xD2743E43 ^ (v188 ^ 0x2402400) & (v189 << 8);
  v197 = (v189 << 16) ^ 0x3E430000u;
  v198 = (v189 << 16) & 0x52740000;
  v199 = v196 ^ (2 * (v198 ^ v189 ^ v197 & (((v188 ^ 0xD0341A43) << 8) & 0x52740000 ^ 0x2400000 ^ (((v188 ^ 0xD0341A43) << 8) ^ 0x743E0000) & (v188 ^ 0xD0341A43))));
  *(a6 + *(v19 - 136)) = ((v195 >> 6) | (4 * v195)) ^ 0xE1;
  v200 = (((v199 ^ 0xE479DDE3) + 1161810199) ^ ((v199 ^ 0x7C56F71C) - 586089494) ^ ((v199 ^ 0xB6CA599F) + 395072875)) + 895307958;
  v201 = v209 ^ (v200 < 0xC500D04C);
  v202 = v200 < *(v19 - 120);
  if (v201)
  {
    v202 = v209;
  }

  return (*(a11 + 8 * ((59737 * v202) ^ v29)))(149, v199, v198, 226, v197, HIWORD(v180) & 0xEB ^ 0x5D, v181, v186, a3, a4, a5, a6, a7, a8, a9, a10, a11, v204, __PAIR64__(v29, v60), v205, a15, v206, v207);
}

uint64_t sub_100A120E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31)
{
  v34 = STACK[0x4A8];
  *(v33 - 160) = v32 + 634647737 * ((((v33 - 160) | 0x68314604) - (v33 - 160) + ((v33 - 160) & 0x97CEB9F8)) ^ 0x5A769F8) - 212187954;
  (*(v31 + 8 * a31))(v33 - 160);
  return (*(v31 + 8 * (v32 + 866968423 + v32 - 8491 - 866969653)))(v34);
}

uint64_t sub_100A12384()
{
  LODWORD(STACK[0x52C]) = -371865831;
  *(v2 - 152) = 23473 * ((v2 - 160 - 2 * ((v2 - 160) & 0xD88) + 3471) ^ 0xC0AB) + 18064;
  *(v2 - 144) = &STACK[0x610];
  *(v2 - 160) = (v1 + 2003) ^ (906386353 * ((v2 - 160 - 2 * ((v2 - 160) & 0x15600D88) - 1788867185) ^ 0xA461C0AB));
  v3 = (*(v0 + 8 * (v1 + 40799)))(v2 - 160);
  v4 = (LOBYTE(STACK[0x610]) << (((v1 + 63) | 0x68) + 31)) | (LOBYTE(STACK[0x611]) << 16) | (LOBYTE(STACK[0x612]) << 8);
  v5 = LOBYTE(STACK[0x613]) - ((2 * LOBYTE(STACK[0x613])) & 0xFFE7) - 2304525;
  v6 = v5 & 0x8004036B ^ 0x2ED122E6 ^ ((v4 - ((2 * v4) & 0x70B9E600) - 1201867930) ^ 0xFF5C17F2) & (v5 ^ 0x232A0C);
  v7 = 0xA3D70A3D70A3D71 * (((v6 ^ 0x21A4AA41DEEBE8D3) - 0x21A4AA41DEEBE8D3) ^ ((v6 ^ 0x49F61E0CB4BAE548) - 0x49F61E0CB4BAE548) ^ ((v6 ^ 0x6852B44D8384CA8ALL) - 0x6852B44D8384CA8ALL)) - 0x443ABF6EB59B39AFLL;
  v8 = (v7 ^ 0xBC693E5CAC1A036) & (2 * (v7 & 0x8BE8D3E9EB112530)) ^ v7 & 0x8BE8D3E9EB112530;
  v9 = ((2 * (v7 ^ 0x1C17B677DEC3E816)) ^ 0x2FFECB3C6BA59A4CLL) & (v7 ^ 0x1C17B677DEC3E816) ^ (2 * (v7 ^ 0x1C17B677DEC3E816)) & 0x97FF659E35D2CD26;
  v10 = v9 ^ 0x9001248214524522;
  v11 = (v9 ^ 0x7E6410C20808800) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0x5FFD9678D74B3498) & v10 ^ (4 * v10) & 0x97FF659E35D2CD20;
  v13 = (v12 ^ 0x17FD041815420400) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x800261862090C926)) ^ 0x7FF659E35D2CD260) & (v12 ^ 0x800261862090C926) ^ (16 * (v12 ^ 0x800261862090C926)) & 0x97FF659E35D2CD20;
  v15 = (v14 ^ 0x17F641821500C000) & (v13 << 8) ^ v13;
  v16 = (((v14 ^ 0x8009241C20D20D06) << 8) ^ 0xFF659E35D2CD2600) & (v14 ^ 0x8009241C20D20D06) ^ ((v14 ^ 0x8009241C20D20D06) << 8) & 0x97FF659E35D2C400;
  v17 = v15 ^ 0x97FF659E35D2CD26 ^ (v16 ^ 0x9765041410C00000) & (v15 << 16);
  v18 = v7 ^ (2 * ((v17 << 32) & 0x17FF659E00000000 ^ v17 ^ ((v17 << 32) ^ 0x35D2CD2600000000) & (((v16 ^ 0x9A618A2512C926) << 16) & 0x17FF659E00000000 ^ 0x1261400C00000000 ^ (((v16 ^ 0x9A618A2512C926) << 16) ^ 0x659E35D200000000) & (v16 ^ 0x9A618A2512C926))));
  v19 = ((v18 ^ 0xB9C5E50B003753D0) + 0x263766896C61606FLL) ^ ((v18 ^ 0xA3BAE3A5480D93B7) + 0x3C486027245BA00ALL);
  LODWORD(v18) = __CFADD__(25 * (v19 ^ ((v18 ^ 0x95CD9477C88E7F1BLL) + 0xA3F17F5A4D84CA6)), 0x69BE4E05DDE040F5) + (((v19 ^ ((v18 ^ 0x95CD9477C88E7F1BLL) + 0xA3F17F5A4D84CA6)) * 0x19uLL) >> 64) + 25 * ((__CFADD__(v18 ^ 0xB9C5E50B003753D0, 0x263766896C61606FLL) - 1) ^ (__CFADD__(v18 ^ 0xA3BAE3A5480D93B7, 0x3C486027245BA00ALL) - 1) ^ (__CFADD__(v18 ^ 0x95CD9477C88E7F1BLL, 0xA3F17F5A4D84CA6) - 1)) + 1286634149;
  LODWORD(v16) = (v18 ^ 0xBA0F3468) & (2 * (v18 & 0xB34F8572)) ^ v18 & 0xB34F8572;
  LODWORD(v19) = ((2 * (v18 ^ 0xBE8B3C8C)) ^ 0x1B8973FC) & (v18 ^ 0xBE8B3C8C) ^ (2 * (v18 ^ 0xBE8B3C8C)) & 0xDC4B9FE;
  LODWORD(v10) = v19 ^ 0x4448802;
  LODWORD(v19) = (v19 ^ 0x90031D8) & (4 * v16) ^ v16;
  LODWORD(v16) = ((4 * v10) ^ 0x3712E7F8) & v10 ^ (4 * v10) & 0xDC4B9F8;
  LODWORD(v19) = (v16 ^ 0x500A1E0) & (16 * v19) ^ v19;
  LODWORD(v16) = ((16 * (v16 ^ 0x8C41806)) ^ 0xDC4B9FE0) & (v16 ^ 0x8C41806) ^ (16 * (v16 ^ 0x8C41806)) & 0xDC4B9E0;
  LODWORD(v19) = v19 ^ 0xDC4B9FE ^ (v16 ^ 0xC409900) & (v19 << 8);
  LODWORD(v18) = v18 ^ (2 * ((v19 << 16) & 0xDC40000 ^ v19 ^ ((v19 << 16) ^ 0x39FE0000) & (((v16 ^ 0x184201E) << 8) & 0xDC40000 ^ 0x9440000 ^ (((v16 ^ 0x184201E) << 8) ^ 0x44B90000) & (v16 ^ 0x184201E))));
  return (*(v0 + 8 * ((60053 * ((((v18 ^ 0x63DCE2C7) - 826790744) ^ ((v18 ^ 0x9E9E3FDB) + 872083900) ^ ((v18 ^ 0x460C2B92) - 345446925)) - 371865839 < 0xB)) ^ (v1 + 18855))))(v3);
}

uint64_t sub_100A12A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(v12 - 196 + (*(v12 - 196) & 3));
  *v8 = v9;
  v14 = *(a7 + 8);
  v15 = v14 + v11;
  if (v14 + v11 < 0)
  {
    v15 = v14 - 0x3CE25E0EC5200375;
  }

  v16 = ((v13 % (((v15 >> 2) - ((2 * (v15 >> 2)) & 0x946A3F38) - 902488164) ^ (((v7 + 11145) ^ 0x67320113) + 1661117823))) + 43) & 0x1FC;
  v17 = ((v16 ^ 0x8F08F463) - 1981080567) ^ ((v16 ^ 0x6F15B4AB) + 1777753281) ^ ((v16 ^ 0xE01D40C8) - 419518300);
  v18 = (v14 ^ 0x3ADFFACB) & (2 * (v14 & 0x3ADFFC88)) ^ v14 & 0x3ADFFC88;
  v19 = ((2 * (v14 ^ 0x2BDF63DB)) ^ 0x22013EA6) & (v14 ^ 0x2BDF63DB) ^ (2 * (v14 ^ 0x2BDF63DB)) & 0x11009F52;
  v20 = v19 ^ 0x11008151;
  v21 = (v19 ^ 0x1E00) & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0x44027D4C) & v20 ^ (4 * v20) & 0x11009F50;
  v23 = (v22 ^ 0x1D40) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x11008213)) ^ 0x1009F530) & (v22 ^ 0x11008213) ^ (16 * (v22 ^ 0x11008213)) & 0x11009F50;
  v25 = v14 ^ (2 * (((((v24 ^ 0x1000A43) << 8) ^ 0x9F0000) & (v24 ^ 0x1000A43) ^ ((v24 ^ 0x1000A43) << 8) & 0x11000000) & (((v24 ^ 0x10009500) & (v23 << 8) ^ v23) << 16) ^ (v24 ^ 0x10009500) & (v23 << 8) ^ v23));
  return (*(v10 + 8 * ((11739 * ((((v25 ^ 0x7BB88BB1) - 271664174) ^ ((v25 ^ 0x238BF872) - 1208104941) ^ ((v25 ^ 0x62EC8F4B) - 157630676)) - v17 + 1480203114 < 0x7FFFFFFF)) ^ v7)))();
}

uint64_t sub_100A12CA4(uint64_t a1, int a2)
{
  v4 = ((v2 - 2262) ^ 0xB978D39E ^ ((v2 + 4251) | 0xAA0)) + a2;
  v5 = (STACK[0x340] > 0x399AA867) ^ (v4 < 0xC6655798);
  v6 = v4 < STACK[0x340] - 966436968;
  if (v5)
  {
    v6 = STACK[0x340] > 0x399AA867;
  }

  return (*(v3 + 8 * ((203 * v6) ^ v2)))();
}

uint64_t sub_100A12D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(a8 + 8 * (v8 + 13716)))();
}

uint64_t sub_100A12D5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  STACK[0x488] = a5;
  STACK[0x4D0] = STACK[0x340];
  STACK[0x360] = STACK[0x2F0];
  STACK[0x378] = STACK[0x2E8];
  STACK[0x3F8] = v7;
  STACK[0x460] = STACK[0x2E0];
  STACK[0x438] = STACK[0x2D8];
  STACK[0x550] = v9;
  STACK[0x380] = STACK[0x348];
  STACK[0x468] = v10;
  STACK[0x548] = v8;
  STACK[0x350] = v11;
  STACK[0x520] = a2;
  return (*(v12 + 8 * (a7 + 1060)))();
}

uint64_t sub_100A12F2C(unint64_t a1)
{
  STACK[0x2A0] = v2;
  STACK[0x2A8] = a1;
  *(v4 - 200) = 0;
  STACK[0x380] = 0;
  STACK[0x2E8] = 0x62E4696A8717207ALL;
  *(v4 - 240) = 0;
  STACK[0x390] = 0;
  STACK[0x3A8] = 0;
  STACK[0x378] = 0x39EE1ABD25DEFE23;
  *(v4 - 120) = 0;
  STACK[0x348] = 0;
  *(v4 - 176) = 0;
  *(v4 - 168) = 0;
  STACK[0x398] = 0;
  STACK[0x3B8] = 0;
  *(v4 - 160) = 0;
  STACK[0x358] = 0;
  *(v4 - 144) = 0x1D7023DC76380AAELL;
  *(v4 - 136) = 0;
  STACK[0x300] = 0;
  STACK[0x320] = 0;
  STACK[0x2F8] = 0;
  STACK[0x2B8] = 0;
  *(v4 - 232) = 0;
  *(v4 - 224) = 0;
  STACK[0x2C0] = 0;
  *(v4 - 208) = 0;
  STACK[0x368] = 0;
  STACK[0x330] = 0;
  STACK[0x350] = 0;
  STACK[0x370] = 0;
  STACK[0x340] = 0;
  STACK[0x338] = 0;
  *(v4 - 256) = 0;
  *(v4 - 248) = 0;
  STACK[0x2D8] = 0;
  STACK[0x308] = 0;
  STACK[0x2C8] = 0;
  STACK[0x2D0] = 0;
  STACK[0x328] = 0;
  *(v4 - 192) = 0;
  STACK[0x310] = 0x4D985619206D859ELL;
  STACK[0x318] = 0;
  STACK[0x2E0] = 0x24965CA6DD01B567;
  *(v4 - 128) = 0x307A38E120ABF2DBLL;
  *(v4 - 216) = 0;
  *(v4 - 152) = 0;
  STACK[0x388] = 0x5B6CF5AE3669EC94;
  STACK[0x2F0] = 0;
  LODWORD(STACK[0x364]) = -1813965822;
  STACK[0x3B0] = 0;
  return (*(v3 + 8 * (v1 - 28294)))(651118169, 1821924564, 1821924563, 1581753874, 1228141945, 1813600667);
}

uint64_t sub_100A13100@<X0>(uint64_t a1@<X7>, unint64_t a2@<X8>)
{
  v4 = (((v2 + 17822) + (v3 ^ 0x664444EE275AF2B0) - 0x664444EE275B78BALL) ^ ((v3 ^ 0x2F9793364DD38139) - 0x2F9793364DD38139) ^ ((v3 ^ 0x49D3D7D8835CB498) - 0x49D3D7D8835CB498)) + ((v2 + 24898) ^ 0x1911EDDBFLL);
  v5 = v4 < 0xA748B500;
  v6 = a2 + 2806560000u < v4;
  if (a2 > 0xFFFFFFFF58B74AFFLL != v5)
  {
    v6 = v5;
  }

  return (*(a1 + 8 * ((248 * !v6) ^ v2)))();
}

uint64_t sub_100A13200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(STACK[0xAE8] + 24);
  STACK[0x750] = v9;
  return (*(a8 + 8 * ((((5 * (((v8 - 34782) | 0x1141) ^ 0x1107)) ^ 0xA1B2) * (v9 != 0)) ^ v8)))();
}

uint64_t sub_100A132A8()
{
  v6 = v5[126] + v1;
  v5[91] = v0;
  LODWORD(STACK[0x7CC]) = v2;
  v5[41] = v6;
  return (*(v4 + 8 * (((v6 == 0) * (158 * (v3 ^ 0x2C72) + ((v3 - 8807) | 0x6430) - 63171)) ^ v3)))();
}

uint64_t sub_100A13300(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0;
  a1[1] = 0;
  *(v9 + 864) = a1;
  *(v9 + 960) = *(a8 + 8 * v8);
  return (*(a8 + 79592))();
}

uint64_t sub_100A13358@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v5 = (*(v2 + a2 + 6) << 24) | (*(v2 + a2 + 7) << 16) | (*(v2 + a2 + 8) << 8);
  v6 = *(v2 + a2 + 9) - ((2 * *(v2 + a2 + 9)) & 0xB6) + 1803538779;
  v7 = ((v5 - ((2 * v5) & 0x3ADD5E00) - 1653690450) ^ 0x95D1C5B1) & (v6 ^ 0x94802EA4) ^ v6 & 0x210095E0;
  v8 = v2 + (((v7 ^ 0x6F4CBE74B33EAA55) - 0x6F4CBE747354961BLL) ^ ((v7 ^ 0xA3BDB5048B427221) + 0x5C424AFBB4D7B191) ^ ((v7 ^ 0xCCF10B7011C3232BLL) + 0x330EF48F2E56E09BLL));
  v9 = a1 + 4287830174;
  v10 = (v8 + 3923101467) > 0xFFFFFFFFEA42AE72;
  v11 = v8 + 4287830184 > v9;
  if (v9 < 0x15BD518D != v10)
  {
    v11 = v10;
  }

  return (*(v4 + 8 * ((453 * v11) ^ v3)))();
}

uint64_t sub_100A134F0()
{
  v2 = (v0 - 2102861051) & 0x7D56FDED;
  v3 = *(v1 - 216);
  v4 = (*(v3 + 8 * (v0 + 38754)))(1032);
  STACK[0x4B8] = 0;
  LODWORD(STACK[0x48C]) = 0;
  STACK[0x4A0] = 0;
  STACK[0x498] = 0;
  STACK[0x490] = 0;
  STACK[0x478] = 0;
  *(v1 - 224) = v2;
  v5 = *(v3 + 8 * (((v2 ^ ((v0 - 4258) | 0x1048) ^ 0x2662) * (v4 == 0)) ^ v0));
  *(v1 - 148) = -1391007032;
  return v5();
}

uint64_t sub_100A137B0()
{
  v2[133] = 0;
  v2[129] = 0x221DA9F0F1EA5226;
  v2[70] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 14095) | 0x3880) - 20569) ^ v0)))();
}

uint64_t sub_100A13914@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v16 = (((a1 ^ (a1 >> 30) ^ a8) + v13) ^ ((a1 ^ (a1 >> 30) ^ a3) + a4) ^ (v9 + (a1 ^ (a1 >> 30) ^ a5))) * a6;
  *(v14 + 4 * a9) = a9 + v11 + v16;
  return (*(v12 + 8 * (((a9 < 0x26F) * a2) ^ v15)))((v10 + a7 + v16));
}

uint64_t sub_100A13A6C()
{
  v26 = vld4q_s8(v3);
  v5 = veorq_s8(v26.val[0], v4);
  v6 = vmovl_high_u8(v5);
  v7 = vmovl_u8(*v5.i8);
  v8 = veorq_s8(v26.val[1], v4);
  _Q17 = vmovl_high_u8(v8);
  _Q16 = vmovl_u8(*v8.i8);
  v11 = vshll_n_s16(*_Q16.i8, 0x10uLL);
  __asm { SHLL2           V16.4S, V16.8H, #0x10 }

  v16 = vshll_n_s16(*_Q17.i8, 0x10uLL);
  __asm { SHLL2           V17.4S, V17.8H, #0x10 }

  v17 = veorq_s8(v26.val[2], v4);
  v18 = vmovl_u8(*v17.i8);
  v19 = vmovl_high_u8(v17);
  v26.val[0] = veorq_s8(v26.val[3], v4);
  v26.val[1] = vmovl_u8(*v26.val[0].i8);
  v26.val[2] = vmovl_u16(*v26.val[1].i8);
  v26.val[1] = vmovl_high_u16(v26.val[1]);
  v26.val[0] = vmovl_high_u8(v26.val[0]);
  v26.val[3] = vmovl_u16(*v26.val[0].i8);
  v26.val[0] = vmovl_high_u16(v26.val[0]);
  v20 = vorrq_s8(vorrq_s8(vorrq_s8(_Q17, vshll_high_n_u16(v19, 8uLL)), vshlq_n_s32(vmovl_high_u16(v6), 0x18uLL)), v26.val[0]);
  v21 = vorrq_s8(vorrq_s8(vorrq_s8(v16, vshll_n_u16(*v19.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v6.i8), 0x18uLL)), v26.val[3]);
  v22 = vorrq_s8(vorrq_s8(vorrq_s8(_Q16, vshll_high_n_u16(v18, 8uLL)), vshlq_n_s32(vmovl_high_u16(v7), 0x18uLL)), v26.val[1]);
  v23 = vorrq_s8(vorrq_s8(vorrq_s8(v11, vshll_n_u16(*v18.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v7.i8), 0x18uLL)), v26.val[2]);
  v24 = vdupq_n_s32(0x69D5C71Bu);
  v26.val[0] = veorq_s8(vandq_s8(v20, v24), (*v26.val & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v26.val[3] = veorq_s8(vandq_s8(v21, v24), (*&v26.val[3] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v26.val[1] = veorq_s8(vandq_s8(v22, v24), (*&v26.val[1] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v26.val[2] = veorq_s8(vandq_s8(v23, v24), (*&v26.val[2] & __PAIR128__(0xFFFFFF0AFFFFFF0ALL, 0xFFFFFF0AFFFFFF0ALL)));
  v26.val[0] = vaddq_s32(vsubq_s32(v20, vaddq_s32(v26.val[0], v26.val[0])), *&STACK[0x280]);
  v26.val[3] = vaddq_s32(vsubq_s32(v21, vaddq_s32(v26.val[3], v26.val[3])), *&STACK[0x280]);
  v26.val[1] = vaddq_s32(vsubq_s32(v22, vaddq_s32(v26.val[1], v26.val[1])), *&STACK[0x280]);
  *v0 = vaddq_s32(vsubq_s32(v23, vaddq_s32(v26.val[2], v26.val[2])), *&STACK[0x280]);
  *(v0 + 16) = v26.val[1];
  *(v0 + 32) = v26.val[3];
  *(v0 + 48) = v26.val[0];
  return (*(v2 + 8 * v1))((v1 + 748787462) & 0xD35E7FDF, (v1 + 748787462) & 0xD35E7FDF ^ 0xB2580D12);
}

uint64_t sub_100A13D60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int64x2_t a54, uint64_t a55, uint64_t a56, int64x2_t a57, int8x16_t a58, int8x16_t a59, int8x16_t a60, int8x16_t a61)
{
  v69.i64[0] = v61 + v65 - 15;
  *&STACK[0x430] = *(v61 + v65 - 16);
  v69.i64[1] = v61 + v65 - 16;
  v70 = v69;
  v71.i64[0] = v61 + v65 - 13;
  v71.i64[1] = v61 + v65 - 14;
  v72 = v71;
  *&STACK[0x3F0] = v71;
  *&STACK[0x400] = v69;
  v71.i64[0] = v61 + v65 - 11;
  v71.i64[1] = v61 + v65 - 12;
  v73 = v71;
  *&STACK[0x410] = v71;
  v71.i64[0] = v61 + v65 - 9;
  v71.i64[1] = v61 + v65 - 10;
  *&STACK[0x420] = v71;
  v74.i64[0] = v61 + v65 - 5;
  v74.i64[1] = v61 + v65 - 6;
  v75 = v74;
  *&STACK[0x3D0] = v74;
  v74.i64[0] = v61 + v65 - 3;
  v74.i64[1] = v61 + v65 - 4;
  v76 = v74;
  *&STACK[0x3C0] = v74;
  v74.i64[0] = v61 + v65 - 1;
  v74.i64[1] = v61 + v65 - 2;
  v77 = v74;
  *&STACK[0x3E0] = v74;
  v74.i64[0] = v61 + v65 - 7;
  v74.i64[1] = v61 + v65 + a55;
  v78 = v74;
  *&STACK[0x330] = v74;
  v74.i64[0] = a3 + v65 + 5;
  v79.i64[0] = a3 + v65 + 7;
  v74.i64[1] = a3 + v65 + 4;
  v80 = v74;
  v79.i64[1] = a3 + v65 + 6;
  v81 = v79;
  v82 = vandq_s8(v78, *&STACK[0x4E0]);
  v83 = vandq_s8(v77, *&STACK[0x4E0]);
  v84 = vandq_s8(v76, *&STACK[0x4E0]);
  v85 = vandq_s8(v75, *&STACK[0x4E0]);
  v86 = vandq_s8(v71, *&STACK[0x4E0]);
  v87 = vandq_s8(v73, *&STACK[0x4E0]);
  v88 = vandq_s8(v72, *&STACK[0x4E0]);
  v89 = vandq_s8(v70, *&STACK[0x4E0]);
  v90 = *&STACK[0x4E0];
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), *&STACK[0x260]);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), *&STACK[0x260]);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), *&STACK[0x260]);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), *&STACK[0x260]);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), *&STACK[0x260]);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), *&STACK[0x260]);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), *&STACK[0x260]);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), *&STACK[0x260]);
  v99 = vaddq_s64(vsubq_s64(vorrq_s8(v98, *&STACK[0x250]), vorrq_s8(v98, a57)), a57);
  v100 = vaddq_s64(vsubq_s64(vorrq_s8(v97, *&STACK[0x250]), vorrq_s8(v97, a57)), a57);
  v101 = vaddq_s64(vsubq_s64(vorrq_s8(v96, *&STACK[0x250]), vorrq_s8(v96, a57)), a57);
  v102 = vaddq_s64(vsubq_s64(vorrq_s8(v95, *&STACK[0x250]), vorrq_s8(v95, a57)), a57);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(v94, *&STACK[0x250]), vorrq_s8(v94, a57)), a57);
  v104 = vaddq_s64(vsubq_s64(vorrq_s8(v93, *&STACK[0x250]), vorrq_s8(v93, a57)), a57);
  v105 = vaddq_s64(vsubq_s64(vorrq_s8(v92, *&STACK[0x250]), vorrq_s8(v92, a57)), a57);
  v106 = vaddq_s64(vsubq_s64(vorrq_s8(v91, *&STACK[0x250]), vorrq_s8(v91, a57)), a57);
  v107 = veorq_s8(v106, *&STACK[0x240]);
  v108 = veorq_s8(v105, *&STACK[0x240]);
  v109 = veorq_s8(v104, *&STACK[0x240]);
  v110 = veorq_s8(v103, *&STACK[0x240]);
  v111 = veorq_s8(v102, *&STACK[0x240]);
  v112 = veorq_s8(v101, *&STACK[0x240]);
  v113 = veorq_s8(v100, *&STACK[0x240]);
  v114 = veorq_s8(v99, *&STACK[0x240]);
  v115 = veorq_s8(v99, *&STACK[0x230]);
  v116 = veorq_s8(v100, *&STACK[0x230]);
  v117 = veorq_s8(v101, *&STACK[0x230]);
  v118 = veorq_s8(v102, *&STACK[0x230]);
  v119 = veorq_s8(v103, *&STACK[0x230]);
  v120 = veorq_s8(v104, *&STACK[0x230]);
  v121 = veorq_s8(v105, *&STACK[0x230]);
  v122 = veorq_s8(v106, *&STACK[0x230]);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v122);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v121);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v120);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v119);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v118);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v117);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v116);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v131 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), *&STACK[0x220]), v123), *&STACK[0x210]);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), *&STACK[0x220]), v130), *&STACK[0x210]), *&STACK[0x200]);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), *&STACK[0x220]), v129), *&STACK[0x210]), *&STACK[0x200]);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), *&STACK[0x220]), v128), *&STACK[0x210]), *&STACK[0x200]);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v127, v127), *&STACK[0x220]), v127), *&STACK[0x210]), *&STACK[0x200]);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v126, v126), *&STACK[0x220]), v126), *&STACK[0x210]), *&STACK[0x200]);
  v137 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v125, v125), *&STACK[0x220]), v125), *&STACK[0x210]), *&STACK[0x200]);
  v141 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v124, v124), *&STACK[0x220]), v124), *&STACK[0x210]), *&STACK[0x200]);
  v144 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v145 = veorq_s8(v131, *&STACK[0x200]);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v147 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v148 = veorq_s8(v140, v144);
  v149 = veorq_s8(v136, v142);
  v150 = veorq_s8(v135, v141);
  v151 = veorq_s8(v134, v139);
  v152 = veorq_s8(v133, v138);
  v153 = veorq_s8(v132, v137);
  v154 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v157 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v152);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), a61);
  v161 = veorq_s8(vaddq_s64(v154, v147), a61);
  v162 = veorq_s8(vaddq_s64(v155, v148), a61);
  v163 = veorq_s8(vaddq_s64(v156, v149), a61);
  v164 = veorq_s8(vaddq_s64(v157, v150), a61);
  v165 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v167 = veorq_s8(vaddq_s64(v158, v151), a61);
  v168 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v169 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v170 = veorq_s8(v159, a61);
  v171 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v153), a61);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v176 = veorq_s8(v170, v173);
  v177 = veorq_s8(v167, v172);
  v178 = veorq_s8(v164, v171);
  v179 = veorq_s8(v163, v169);
  v180 = veorq_s8(v162, v168);
  v181 = veorq_s8(v161, v166);
  v182 = veorq_s8(v160, v165);
  v183 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v181);
  v190 = veorq_s8(vaddq_s64(v183, v175), a60);
  v191 = veorq_s8(vaddq_s64(v184, v176), a60);
  v192 = veorq_s8(vaddq_s64(v185, v177), a60);
  v193 = veorq_s8(vaddq_s64(v186, v178), a60);
  v194 = veorq_s8(vaddq_s64(v187, v179), a60);
  v195 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v196 = veorq_s8(vaddq_s64(v188, v180), a60);
  v197 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v198 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v199 = veorq_s8(v189, a60);
  v200 = vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v182), a60);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v205 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v206 = veorq_s8(v196, v202);
  v207 = veorq_s8(v194, v201);
  v208 = veorq_s8(v193, v200);
  v209 = veorq_s8(v192, v198);
  v210 = veorq_s8(v191, v197);
  v211 = veorq_s8(v190, v195);
  v212 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL);
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v211);
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v210);
  v219 = vaddq_s64(v216, v209);
  v220 = vaddq_s64(v215, v208);
  v221 = vaddq_s64(v214, v207);
  v222 = vaddq_s64(v213, v206);
  v223 = vaddq_s64(v212, v205);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204);
  *&STACK[0x320] = vsubq_s64(vorrq_s8(vaddq_s64(v224, v224), a59), v224);
  *&STACK[0x3A0] = vsubq_s64(vorrq_s8(vaddq_s64(v219, v219), a59), v219);
  *&STACK[0x3B0] = vsubq_s64(vorrq_s8(vaddq_s64(v220, v220), a59), v220);
  *&STACK[0x380] = vsubq_s64(vorrq_s8(vaddq_s64(v217, v217), a59), v217);
  *&STACK[0x390] = vsubq_s64(vorrq_s8(vaddq_s64(v218, v218), a59), v218);
  v225 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v221, v221), a59), v221), *&STACK[0x510]);
  v226 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v222, v222), a59), v222), *&STACK[0x510]);
  v227 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v223, v223), a59), v223), *&STACK[0x510]);
  *&STACK[0x310] = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v228 = *&STACK[0x500];
  v229 = veorq_s8(v227, *&STACK[0x500]);
  v230 = veorq_s8(v226, *&STACK[0x500]);
  *&STACK[0x370] = vsraq_n_u64(vshlq_n_s64(v208, 3uLL), v208, 0x3DuLL);
  *&STACK[0x360] = vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL);
  v231 = veorq_s8(v225, v228);
  *&STACK[0x350] = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  *&STACK[0x340] = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v233 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v234 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL));
  v235 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL);
  v239 = vandq_s8(v81, v90);
  v240 = vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL);
  v241 = vandq_s8(v80, v90);
  v242 = vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL);
  v243 = vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL);
  *&STACK[0x300] = vaddq_s64(v237, v234);
  v244 = *&STACK[0x4B0];
  v245 = *&STACK[0x4A0];
  v246 = *&STACK[0x490];
  v247 = vbslq_s8(*&STACK[0x490], vsubq_s64(*&STACK[0x4A0], v242), vaddq_s64(v242, *&STACK[0x4B0]));
  v248 = vaddq_s64(v236, v233);
  v249 = vbslq_s8(*&STACK[0x490], vsubq_s64(*&STACK[0x4A0], v243), vaddq_s64(v243, *&STACK[0x4B0]));
  v250 = veorq_s8(v249, *&STACK[0x550]);
  v251 = veorq_s8(v247, *&STACK[0x550]);
  v252 = vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL);
  v255 = veorq_s8(v247, *&STACK[0x540]);
  v256 = veorq_s8(v249, *&STACK[0x540]);
  v257 = *&STACK[0x540];
  v258 = vaddq_s64(v235, v232);
  v259 = vaddq_s64(v253, v256);
  v260 = veorq_s8(vaddq_s64(v252, v255), *&STACK[0x480]);
  v261 = veorq_s8(v259, *&STACK[0x480]);
  v262 = *&STACK[0x480];
  v263 = veorq_s8(v258, *&STACK[0x4F0]);
  v264 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v265 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v266 = veorq_s8(v248, *&STACK[0x4F0]);
  v267 = *&STACK[0x4F0];
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v265);
  v269 = veorq_s8(v266, v238);
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL), v264);
  v271 = *&STACK[0x470];
  v272 = vsubq_s64(vorrq_s8(v268, *&STACK[0x570]), vorrq_s8(v268, *&STACK[0x470]));
  v273 = veorq_s8(v263, v254);
  v274 = vsubq_s64(vorrq_s8(v270, *&STACK[0x570]), vorrq_s8(v270, *&STACK[0x470]));
  v275 = vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v264, 3uLL), v264, 0x3DuLL);
  v278 = veorq_s8(vaddq_s64(v274, *&STACK[0x470]), *&STACK[0x530]);
  v279 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v280 = veorq_s8(v278, v277);
  v281 = vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v283 = vaddq_s64(v279, v273);
  v284 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v285 = veorq_s8(vaddq_s64(v272, *&STACK[0x470]), *&STACK[0x530]);
  v286 = veorq_s8(v285, v275);
  v287 = veorq_s8(vaddq_s64(v281, v280), *&STACK[0x460]);
  v288 = veorq_s8(vaddq_s64(v276, v269), *&STACK[0x560]);
  v289 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v286), *&STACK[0x460]);
  v290 = veorq_s8(v283, *&STACK[0x560]);
  v291 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL));
  v292 = veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL));
  v293 = veorq_s8(v290, v282);
  v294 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), v292);
  v295 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v291);
  v296 = veorq_s8(v288, v284);
  v297 = vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL);
  v298 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v294, v294), *&STACK[0x520]), v294), a54);
  v299 = vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL);
  v300 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v295, v295), *&STACK[0x520]), v295), a54), *&STACK[0x440]);
  v301 = veorq_s8(v298, *&STACK[0x440]);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v303 = veorq_s8(v300, v299);
  v304 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL), v303);
  v305 = vdupq_n_s64(v62);
  v306 = vdupq_n_s64(a2);
  v307 = vsubq_s64(vorrq_s8(v304, v305), vorrq_s8(v304, v306));
  v308 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302);
  v309 = v305;
  v310 = vsubq_s64(vorrq_s8(v308, v305), vorrq_s8(v308, v306));
  v311 = vaddq_s64(v297, v293);
  v312 = vsraq_n_u64(vshlq_n_s64(v303, 3uLL), v303, 0x3DuLL);
  v313 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v314 = vdupq_n_s64(v64);
  v315 = veorq_s8(vaddq_s64(v310, v306), v314);
  *&STACK[0x2C0] = v314;
  v316 = veorq_s8(v315, v313);
  v317 = vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL);
  v318 = veorq_s8(vaddq_s64(v307, v306), v314);
  v319 = veorq_s8(v318, v312);
  v320 = vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL);
  v321 = vaddq_s64(v317, v316);
  v322 = vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL);
  v323 = vdupq_n_s64(v63);
  v324 = veorq_s8(vaddq_s64(v320, v319), v323);
  v325 = veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v326 = vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL);
  v327 = veorq_s8(v321, v323);
  v328 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), veorq_s8(v327, v322));
  v329 = *&STACK[0x4C0];
  v330 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v296), *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), a58)));
  v322.i64[0] = a3 + v65 + 9;
  v322.i64[1] = a3 + v65 + 8;
  v288.i64[0] = a3 + v65 + 3;
  v288.i64[1] = a3 + v65 + 2;
  *&STACK[0x290] = v288;
  v331 = v329;
  v332 = vdupq_n_s64(v67);
  v538.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v326, v325), v332), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), a58))), vshlq_u64(veorq_s8(v311, v329), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), a58))));
  v538.val[1] = veorq_s8(vshlq_u64(veorq_s8(v328, v332), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), a58))), v330);
  v333 = vandq_s8(v322, v90);
  v334 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v335 = vandq_s8(v288, v90);
  v336 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v337 = vbslq_s8(v246, vsubq_s64(v245, v334), vaddq_s64(v334, v244));
  v338 = vbslq_s8(v246, vsubq_s64(v245, v336), vaddq_s64(v336, v244));
  v339 = v267;
  v340 = veorq_s8(*&STACK[0x300], v267);
  v341 = veorq_s8(v340, v240);
  v342 = vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL);
  v343 = *&STACK[0x550];
  v344 = veorq_s8(v337, *&STACK[0x550]);
  v345 = veorq_s8(v337, v257);
  v346 = vsraq_n_u64(vshlq_n_s64(v345, 3uLL), v345, 0x3DuLL);
  v347 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), v345), v262);
  v348 = veorq_s8(v347, v346);
  v349 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v348);
  v350 = *&STACK[0x570];
  v351 = vaddq_s64(vsubq_s64(vorrq_s8(v349, *&STACK[0x570]), vorrq_s8(v349, v271)), v271);
  v352 = *&STACK[0x530];
  v353 = veorq_s8(v351, *&STACK[0x530]);
  v354 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v355 = *&STACK[0x460];
  v356 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), v354), *&STACK[0x460]);
  v357 = veorq_s8(v356, vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL));
  v358 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL), v357);
  v359 = *&STACK[0x520];
  v360 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v361 = vaddq_s64(v342, v341);
  v362 = vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL);
  v363 = *&STACK[0x560];
  v364 = veorq_s8(v361, *&STACK[0x560]);
  v365 = veorq_s8(v364, v360);
  v366 = vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL);
  v367 = *&STACK[0x440];
  v368 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v358, v358), *&STACK[0x520]), v358), a54), *&STACK[0x440]);
  v369 = veorq_s8(v368, v362);
  v370 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v368, 0x38uLL), v368, 8uLL), v369);
  v371 = v309;
  *&STACK[0x270] = v306;
  *&STACK[0x280] = v309;
  v372 = vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL);
  v373 = vaddq_s64(v366, v365);
  v374 = *&STACK[0x2C0];
  v375 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v370, v309), vorrq_s8(v370, v306)), v306), *&STACK[0x2C0]);
  v376 = veorq_s8(v375, v372);
  v377 = vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL);
  v378 = veorq_s8(v373, v329);
  v379 = vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), a58));
  v380 = v323;
  *&STACK[0x2A0] = v323;
  *&STACK[0x2B0] = v332;
  v381 = veorq_s8(vaddq_s64(v377, v376), v323);
  v382 = vshlq_u64(v378, v379);
  v383 = veorq_s8(v381, vsraq_n_u64(vshlq_n_s64(v376, 3uLL), v376, 0x3DuLL));
  v384 = vsraq_n_u64(vshlq_n_s64(v381, 0x38uLL), v381, 8uLL);
  v381.i64[0] = a3 + v65 - 5;
  v381.i64[1] = a3 + v65 - 6;
  v376.i64[0] = a3 + v65 - 3;
  v376.i64[1] = a3 + v65 - 4;
  *&STACK[0x300] = v376;
  v385 = vshlq_u64(veorq_s8(vaddq_s64(v384, v383), v332), vnegq_s64(vandq_s8(vshlq_n_s64(v322, 3uLL), a58)));
  v314.i64[0] = a3 + v65 - 1;
  v314.i64[1] = a3 + v65 - 2;
  v386 = v314;
  *&STACK[0x3C0] = v314;
  v387 = *&STACK[0x510];
  v388 = *&STACK[0x500];
  v389 = veorq_s8(vaddq_s64(*&STACK[0x320], *&STACK[0x510]), *&STACK[0x500]);
  v538.val[0] = veorq_s8(v385, v382);
  v390 = veorq_s8(v338, v343);
  v391 = veorq_s8(v338, v257);
  v392 = veorq_s8(v389, *&STACK[0x310]);
  v393 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391), v262);
  v394 = v262;
  v395 = veorq_s8(v393, vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL));
  v396 = vsraq_n_u64(vshlq_n_s64(v389, 0x38uLL), v389, 8uLL);
  v397 = vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL);
  v398 = vsraq_n_u64(vshlq_n_s64(v392, 3uLL), v392, 0x3DuLL);
  v399 = vaddq_s64(v397, v395);
  v400 = vaddq_s64(v396, v392);
  v401 = *&STACK[0x470];
  v402 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v399, v350), vorrq_s8(v399, *&STACK[0x470])), *&STACK[0x470]), v352);
  v403 = veorq_s8(v400, v339);
  v404 = veorq_s8(v402, vsraq_n_u64(vshlq_n_s64(v395, 3uLL), v395, 0x3DuLL));
  v405 = veorq_s8(v403, v398);
  v406 = vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL);
  v407 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v402, 0x38uLL), v402, 8uLL), v404), v355);
  v408 = vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL);
  v409 = veorq_s8(v407, v406);
  v410 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), v409);
  v411 = vsraq_n_u64(vshlq_n_s64(v405, 3uLL), v405, 0x3DuLL);
  v412 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v410, v410), v359), v410), a54), v367);
  v413 = veorq_s8(v412, vsraq_n_u64(vshlq_n_s64(v409, 3uLL), v409, 0x3DuLL));
  v414 = veorq_s8(vaddq_s64(v408, v405), v363);
  v415 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), v413);
  v416 = vorrq_s8(v415, v371);
  v417 = *&STACK[0x270];
  v418 = veorq_s8(v414, v411);
  v419 = v374;
  v420 = veorq_s8(vaddq_s64(vsubq_s64(v416, vorrq_s8(v415, *&STACK[0x270])), *&STACK[0x270]), v374);
  v421 = veorq_s8(v420, vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL));
  v422 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v414.i64[0] = a3 + v65 + 1;
  v414.i64[1] = a3 + v65;
  *&STACK[0x3E0] = v414;
  v423 = vaddq_s64(v422, v418);
  v424 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL), v421), v380);
  v425 = veorq_s8(v424, vsraq_n_u64(vshlq_n_s64(v421, 3uLL), v421, 0x3DuLL));
  v426 = vsraq_n_u64(vshlq_n_s64(v424, 0x38uLL), v424, 8uLL);
  v427 = vshlq_u64(veorq_s8(v423, v331), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), a58)));
  v428 = vandq_s8(v414, *&STACK[0x4E0]);
  v429 = vaddq_s64(v426, v425);
  v430 = vandq_s8(v386, *&STACK[0x4E0]);
  v431 = vshlq_u64(veorq_s8(v429, v332), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x290], 3uLL), a58)));
  v432 = vandq_s8(v376, *&STACK[0x4E0]);
  v538.val[3] = veorq_s8(v431, v427);
  v433 = vandq_s8(v381, *&STACK[0x4E0]);
  v434 = v381;
  v435 = vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL);
  v436 = vsraq_n_u64(vshlq_n_s64(v432, 0x38uLL), v432, 8uLL);
  v437 = vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL);
  v438 = vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL);
  v439 = vbslq_s8(*&STACK[0x490], vsubq_s64(*&STACK[0x4A0], v435), vaddq_s64(v435, *&STACK[0x4B0]));
  v440 = vbslq_s8(*&STACK[0x490], vsubq_s64(*&STACK[0x4A0], v436), vaddq_s64(v436, *&STACK[0x4B0]));
  v441 = vbslq_s8(*&STACK[0x490], vsubq_s64(*&STACK[0x4A0], v437), vaddq_s64(v437, *&STACK[0x4B0]));
  *&STACK[0x330] = vbslq_s8(*&STACK[0x490], vsubq_s64(*&STACK[0x4A0], v438), vaddq_s64(v438, *&STACK[0x4B0]));
  v442 = veorq_s8(vaddq_s64(*&STACK[0x3B0], v387), v388);
  v443 = veorq_s8(vaddq_s64(*&STACK[0x3A0], v387), v388);
  v444 = veorq_s8(vaddq_s64(*&STACK[0x390], v387), v388);
  v445 = veorq_s8(vaddq_s64(*&STACK[0x380], v387), v388);
  v446 = veorq_s8(v445, *&STACK[0x340]);
  v447 = veorq_s8(v444, *&STACK[0x350]);
  v448 = veorq_s8(v443, *&STACK[0x360]);
  *&STACK[0x3D0] = vqtbl4q_s8(v538, *&STACK[0x450]);
  v538.val[1] = veorq_s8(v440, v343);
  v538.val[0] = veorq_s8(v439, v343);
  v538.val[2] = vsraq_n_u64(vshlq_n_s64(v538.val[0], 0x38uLL), v538.val[0], 8uLL);
  v538.val[0] = veorq_s8(v442, *&STACK[0x370]);
  v538.val[3] = vsraq_n_u64(vshlq_n_s64(v538.val[1], 0x38uLL), v538.val[1], 8uLL);
  v538.val[1] = veorq_s8(v439, *&STACK[0x540]);
  v449 = vaddq_s64(v538.val[2], v538.val[1]);
  v450 = vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL);
  v451 = vsraq_n_u64(vshlq_n_s64(v538.val[1], 3uLL), v538.val[1], 0x3DuLL);
  v538.val[1] = veorq_s8(v440, *&STACK[0x540]);
  v538.val[2] = veorq_s8(vaddq_s64(v538.val[3], v538.val[1]), v394);
  v538.val[3] = veorq_s8(v538.val[2], vsraq_n_u64(vshlq_n_s64(v538.val[1], 3uLL), v538.val[1], 0x3DuLL));
  v538.val[1] = vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL);
  v452 = vsraq_n_u64(vshlq_n_s64(v538.val[2], 0x38uLL), v538.val[2], 8uLL);
  v453 = veorq_s8(v449, v394);
  v454 = veorq_s8(v453, v451);
  v538.val[2] = vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL);
  v455 = vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL);
  v456 = vsraq_n_u64(vshlq_n_s64(v447, 3uLL), v447, 0x3DuLL);
  v457 = vaddq_s64(v455, v454);
  v458 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL), v447);
  v459 = vaddq_s64(v452, v538.val[3]);
  v460 = v401;
  v461 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v457, *&STACK[0x570]), vorrq_s8(v457, v401)), v401), *&STACK[0x530]);
  v462 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v459, *&STACK[0x570]), vorrq_s8(v459, v401)), v401), *&STACK[0x530]);
  v538.val[3] = veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v538.val[3], 3uLL), v538.val[3], 0x3DuLL));
  v463 = veorq_s8(v461, vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL));
  v464 = vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL);
  v465 = vsraq_n_u64(vshlq_n_s64(v461, 0x38uLL), v461, 8uLL);
  v466 = vsraq_n_u64(vshlq_n_s64(v446, 3uLL), v446, 0x3DuLL);
  v467 = veorq_s8(vaddq_s64(v464, v538.val[3]), v355);
  v468 = veorq_s8(vaddq_s64(v465, v463), v355);
  v469 = veorq_s8(vaddq_s64(v450, v446), *&STACK[0x4F0]);
  v470 = vsraq_n_u64(vshlq_n_s64(v538.val[3], 3uLL), v538.val[3], 0x3DuLL);
  v538.val[3] = veorq_s8(v468, vsraq_n_u64(vshlq_n_s64(v463, 3uLL), v463, 0x3DuLL));
  v471 = veorq_s8(v467, v470);
  v472 = veorq_s8(v458, *&STACK[0x4F0]);
  v473 = vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL);
  v474 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v467, 0x38uLL), v467, 8uLL), v471);
  v475 = veorq_s8(v472, v456);
  v476 = vaddq_s64(v473, v538.val[3]);
  v477 = veorq_s8(v469, v466);
  v478 = vsraq_n_u64(vshlq_n_s64(v538.val[3], 3uLL), v538.val[3], 0x3DuLL);
  v538.val[3] = vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL);
  v479 = vsraq_n_u64(vshlq_n_s64(v471, 3uLL), v471, 0x3DuLL);
  v480 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v474, v474), *&STACK[0x520]), v474), a54), v367);
  v481 = vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL);
  v482 = veorq_s8(v480, v479);
  v483 = vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL);
  v484 = vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL);
  v485 = vaddq_s64(v481, v477);
  v486 = vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL);
  v487 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v476, v476), *&STACK[0x520]), v476), a54), v367);
  v488 = veorq_s8(v487, v478);
  v538.val[3] = vaddq_s64(v538.val[3], v475);
  v489 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v487, 0x38uLL), v487, 8uLL), v488);
  v490 = vaddq_s64(v483, v482);
  v538.val[3] = veorq_s8(v538.val[3], *&STACK[0x560]);
  v491 = veorq_s8(v485, *&STACK[0x560]);
  v492 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v489, *&STACK[0x280]), vorrq_s8(v489, v417)), v417), v419);
  v493 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v490, *&STACK[0x280]), vorrq_s8(v490, v417)), v417), v419);
  v494 = veorq_s8(v491, v484);
  v495 = veorq_s8(v493, vsraq_n_u64(vshlq_n_s64(v482, 3uLL), v482, 0x3DuLL));
  v496 = veorq_s8(v492, vsraq_n_u64(vshlq_n_s64(v488, 3uLL), v488, 0x3DuLL));
  v497 = vsraq_n_u64(vshlq_n_s64(v493, 0x38uLL), v493, 8uLL);
  v498 = vsraq_n_u64(vshlq_n_s64(v492, 0x38uLL), v492, 8uLL);
  v499 = vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL);
  v500 = veorq_s8(vaddq_s64(v497, v495), *&STACK[0x2A0]);
  v501 = veorq_s8(vaddq_s64(v498, v496), *&STACK[0x2A0]);
  v502 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v500, 0x38uLL), v500, 8uLL), veorq_s8(v500, vsraq_n_u64(vshlq_n_s64(v495, 3uLL), v495, 0x3DuLL))), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x300], 3uLL), a58)));
  v539.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v501, 0x38uLL), v501, 8uLL), veorq_s8(v501, vsraq_n_u64(vshlq_n_s64(v496, 3uLL), v496, 0x3DuLL))), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(v434, 3uLL), a58))), vshlq_u64(veorq_s8(vaddq_s64(v499, v494), *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x400], 3uLL), a58))));
  v539.val[2] = veorq_s8(v502, vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v538.val[3], 0x38uLL), v538.val[3], 8uLL), veorq_s8(v538.val[3], v486)), *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3F0], 3uLL), a58))));
  v503 = veorq_s8(v441, *&STACK[0x550]);
  v504 = veorq_s8(v441, *&STACK[0x540]);
  v538.val[3] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v503, 0x38uLL), v503, 8uLL), v504);
  v505 = vsraq_n_u64(vshlq_n_s64(v538.val[0], 3uLL), v538.val[0], 0x3DuLL);
  v538.val[3] = veorq_s8(v538.val[3], *&STACK[0x480]);
  v506 = veorq_s8(v538.val[3], vsraq_n_u64(vshlq_n_s64(v504, 3uLL), v504, 0x3DuLL));
  v507 = vaddq_s64(v538.val[2], v538.val[0]);
  v538.val[2] = vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL);
  v538.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v538.val[3], 0x38uLL), v538.val[3], 8uLL), v506);
  v538.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v538.val[0], *&STACK[0x570]), vorrq_s8(v538.val[0], v460)), v460), *&STACK[0x530]);
  v538.val[1] = veorq_s8(vaddq_s64(v538.val[1], v448), *&STACK[0x4F0]);
  v538.val[3] = veorq_s8(v538.val[0], vsraq_n_u64(vshlq_n_s64(v506, 3uLL), v506, 0x3DuLL));
  v508 = vsraq_n_u64(vshlq_n_s64(v538.val[0], 0x38uLL), v538.val[0], 8uLL);
  v538.val[0] = veorq_s8(v538.val[1], v538.val[2]);
  v538.val[2] = vaddq_s64(v508, v538.val[3]);
  v509 = vsraq_n_u64(vshlq_n_s64(v538.val[3], 3uLL), v538.val[3], 0x3DuLL);
  v538.val[2] = veorq_s8(v538.val[2], v355);
  v538.val[3] = vsraq_n_u64(vshlq_n_s64(v538.val[1], 0x38uLL), v538.val[1], 8uLL);
  v538.val[1] = veorq_s8(v538.val[2], v509);
  v538.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v538.val[2], 0x38uLL), v538.val[2], 8uLL), v538.val[1]);
  v510 = vsraq_n_u64(vshlq_n_s64(v538.val[0], 3uLL), v538.val[0], 0x3DuLL);
  v538.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v538.val[2], v538.val[2]), *&STACK[0x520]), v538.val[2]), a54), v367);
  v538.val[1] = veorq_s8(v538.val[2], vsraq_n_u64(vshlq_n_s64(v538.val[1], 3uLL), v538.val[1], 0x3DuLL));
  v538.val[0] = veorq_s8(vaddq_s64(v538.val[3], v538.val[0]), *&STACK[0x560]);
  v538.val[2] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v538.val[2], 0x38uLL), v538.val[2], 8uLL), v538.val[1]);
  v511 = veorq_s8(v538.val[0], v510);
  v538.val[2] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v538.val[2], *&STACK[0x280]), vorrq_s8(v538.val[2], v417)), v417), v419);
  v538.val[3] = veorq_s8(v538.val[2], vsraq_n_u64(vshlq_n_s64(v538.val[1], 3uLL), v538.val[1], 0x3DuLL));
  v538.val[1] = vsraq_n_u64(vshlq_n_s64(v538.val[0], 0x38uLL), v538.val[0], 8uLL);
  v538.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v538.val[2], 0x38uLL), v538.val[2], 8uLL), v538.val[3]), *&STACK[0x2A0]);
  v512 = veorq_s8(v507, *&STACK[0x4F0]);
  v513 = veorq_s8(v512, v505);
  v539.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v538.val[0], 0x38uLL), v538.val[0], 8uLL), veorq_s8(v538.val[0], vsraq_n_u64(vshlq_n_s64(v538.val[3], 3uLL), v538.val[3], 0x3DuLL))), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), a58))), vshlq_u64(veorq_s8(vaddq_s64(v538.val[1], v511), *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x410], 3uLL), a58))));
  v514 = veorq_s8(*&STACK[0x330], *&STACK[0x550]);
  v538.val[0] = vsraq_n_u64(vshlq_n_s64(v514, 0x38uLL), v514, 8uLL);
  v515 = veorq_s8(*&STACK[0x330], *&STACK[0x540]);
  v516 = vsraq_n_u64(vshlq_n_s64(v512, 0x38uLL), v512, 8uLL);
  v517 = veorq_s8(vaddq_s64(v538.val[0], v515), *&STACK[0x480]);
  v538.val[0] = veorq_s8(v517, vsraq_n_u64(vshlq_n_s64(v515, 3uLL), v515, 0x3DuLL));
  v518 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v517, 0x38uLL), v517, 8uLL), v538.val[0]);
  v519 = vsraq_n_u64(vshlq_n_s64(v538.val[0], 3uLL), v538.val[0], 0x3DuLL);
  v538.val[0] = vsraq_n_u64(vshlq_n_s64(v513, 3uLL), v513, 0x3DuLL);
  v520 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v518, *&STACK[0x570]), vorrq_s8(v518, v460)), v460), *&STACK[0x530]);
  v521 = vaddq_s64(v516, v513);
  v522 = veorq_s8(v520, v519);
  v523 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v520, 0x38uLL), v520, 8uLL), v522), v355);
  v524 = veorq_s8(v521, *&STACK[0x560]);
  v525 = veorq_s8(v523, vsraq_n_u64(vshlq_n_s64(v522, 3uLL), v522, 0x3DuLL));
  v526 = vsraq_n_u64(vshlq_n_s64(v523, 0x38uLL), v523, 8uLL);
  v527 = veorq_s8(v524, v538.val[0]);
  v528 = vaddq_s64(v526, v525);
  v538.val[0] = vsraq_n_u64(vshlq_n_s64(v524, 0x38uLL), v524, 8uLL);
  v529 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v528, v528), *&STACK[0x520]), v528), a54), v367);
  v530 = veorq_s8(v529, vsraq_n_u64(vshlq_n_s64(v525, 3uLL), v525, 0x3DuLL));
  v531 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v529, 0x38uLL), v529, 8uLL), v530);
  v532 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v531, *&STACK[0x280]), vorrq_s8(v531, v417)), v417), v419);
  v533 = veorq_s8(v532, vsraq_n_u64(vshlq_n_s64(v530, 3uLL), v530, 0x3DuLL));
  v534 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v532, 0x38uLL), v532, 8uLL), v533), *&STACK[0x2A0]);
  v539.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v534, 0x38uLL), v534, 8uLL), veorq_s8(v534, vsraq_n_u64(vshlq_n_s64(v533, 3uLL), v533, 0x3DuLL))), *&STACK[0x2B0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), a58))), vshlq_u64(veorq_s8(vaddq_s64(v538.val[0], v527), *&STACK[0x4C0]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x420], 3uLL), a58))));
  v535 = *&STACK[0x3D0];
  v535.i64[1] = vqtbl4q_s8(v539, *&STACK[0x450]).u64[0];
  v536 = vrev64q_s8(v535);
  *(a3 + v65 - 6) = veorq_s8(vextq_s8(v536, v536, 8uLL), *&STACK[0x430]);
  return (*(a1 + 8 * ((108 * (v68 != 0)) ^ v66)))();
}