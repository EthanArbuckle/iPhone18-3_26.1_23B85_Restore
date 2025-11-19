uint64_t sub_1003D085C@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v24 = (v9 ^ 0x14 ^ a9) & (2 * (v9 & 0xEA)) ^ v9 & 0xEA;
  v25 = ((2 * (v9 ^ 0x53)) ^ a1) & (v9 ^ 0x53) ^ (2 * (v9 ^ 0x53)) & a2;
  v26 = v9 ^ (2 * (((4 * (v25 ^ a3)) & a6 ^ a7 ^ ((4 * (v25 ^ a3)) ^ a5) & (v25 ^ a3)) & (16 * ((v25 ^ a4) & (4 * v24) ^ v24)) ^ (v25 ^ a4) & (4 * v24) ^ v24));
  v27 = ((v26 ^ a8) + v20) ^ ((v26 ^ v22) + v23) ^ ((v26 ^ v18) + v15);
  *(v10 + v13) = v11 + v27 * v17 + v12 * (v27 + v16);
  return (*(v14 + 8 * (((v13 == 0) * v19) ^ v21)))();
}

uint64_t sub_1003D09B8@<X0>(int a1@<W8>)
{
  v3 = STACK[0x384];
  LODWORD(STACK[0x598]) = STACK[0x3F8];
  LODWORD(STACK[0x59C]) = -1261198202;
  LODWORD(STACK[0x5A0]) = ((a1 - 48600) | 0x9085) ^ LODWORD(STACK[0x454]) ^ 0xE9D5548C;
  LODWORD(STACK[0x7B8]) = v3 ^ v1;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1003D0AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v51 = (a1 + a49);
  *v51 = STACK[0x208];
  v51[1] = 0xBCE25E0EC5200378;
  return (*(v50 + 8 * (((((v49 - 5352) | 0x21C1) + 14844) * (a49 >= 0)) ^ v49)))();
}

uint64_t sub_1003D0B20@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W8>)
{
  v16 = v14 + 4 * v8;
  *(v14 + 4 * ((a8 ^ v10) + v8) + v15) = *(v16 + v12) ^ *(a7 + 4 * (*(v16 + v11) & 1)) ^ (((*(v16 + v11) ^ a1) & a2 ^ (v9 & 0x80000000 | v13 & 0x7FFFFFFF) | (*(v16 + v11) ^ a1) & a3) >> 1) ^ a4;
  return (*(STACK[0x430] + 8 * (((v8 + 1 != a6) * a5) ^ a8)))();
}

uint64_t sub_1003D0B90@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * ((((v3 ^ 0xBB8C) + v4 - 1051122177 != 0) * ((v3 ^ 0x4215) - 29298)) | v3 ^ 0x4215)))();
}

uint64_t sub_1003D0C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, uint64_t a55, char a56, uint64_t a57, char a58, int a59, char a60, uint64_t a61, uint64_t a62, char a63)
{
  v73 = (&a68 ^ 0xFF6AFFB85D3CF7FDLL) + 0x950047A2C30803 + ((2 * &a68) & 0xFED5FF70BA79EFF8);
  v74 = ((2 * (v73 % 0x25)) & 0x5E) + ((v73 % 0x25) ^ 0xDD72CB8F5FED366FLL);
  v75 = v74 + 0x228D3470A012C9A0;
  v76 = v74 + 0x228D34710F0CC1EELL;
  v77 = v74 + 0x4A4F534AD742380CLL;
  if (v76 < 0x6EF9F85D)
  {
    v77 = 0x27C21EDA372F6E7BLL;
  }

  v78 = (v77 ^ 0x46E967BAA7277953) & (2 * (v77 & 0x198)) ^ v77 & 0x198;
  v79 = (2 * (v77 ^ 0x46E967BAA7277873)) & 0x9ED4869F6FF7E9EALL ^ 0x8254828120102829 ^ ((2 * (v77 ^ 0x46E967BAA7277873)) ^ 0x3DA90D3EDFEFD3D6) & (v77 ^ 0x46E967BAA7277873);
  v80 = (4 * v78) & 0xFFFFFFFFFFFFF9FFLL ^ (v78 | 0x8484848240204843) ^ (4 * v78) & v79;
  v81 = (4 * v79) & 0x9ED4869F6FF7E9E8 ^ 0x8484848240204843 ^ ((4 * v79) ^ 0x7B521A7DBFDFA7ACLL) & v79;
  v82 = (16 * v80) & 0x9ED4869F6FF7E9E0 ^ v80 ^ ((16 * v80) ^ 0x4848482402048430) & v81;
  v83 = (16 * v81) & 0x9ED4869F6FF7E9E0 ^ 0x129486090081614BLL ^ ((16 * v81) ^ 0xED4869F6FF7E9EB0) & v81;
  v84 = (v82 << 8) & 0x9ED4869F6FF7E900 ^ v82 ^ ((v82 << 8) ^ 0xC484864224C86300) & v83;
  v85 = (v83 << 8) & 0x9ED4869F6FF7E900 ^ 0xA500090081600EBLL ^ ((v83 << 8) ^ 0xD4869F6FF7E9EB00) & v83;
  v86 = v84 ^ (v84 << 16) & 0x9ED4869F6FF70000 ^ ((v84 << 16) ^ 0x28466E4A9630000) & v85 ^ 0x9410829F20704088;
  v87 = (v77 ^ (2 * ((v86 << 32) & 0x1ED4869F00000000 ^ v86 ^ ((v86 << 32) ^ 0x6FF7E9EB00000000) & ((v85 << 16) & 0x1ED4869F00000000 ^ 0x1840800800000000 ^ ((v85 << 16) ^ 0x69F6FF700000000) & v85)))) & 0xFFFFFFFFFFFFFFFCLL;
  v88 = ((v87 ^ 0x3B399E23F1FAD2C7) + 0x1DC13644B97691A4) ^ ((v87 ^ 0xC57B50B6857205D2) - 0x1C7C072E3201B949) ^ ((v87 ^ 0x67F239863B79559) + 0x20878BFF2B3BD63ELL);
  v89 = vdupq_n_s64((&a56 ^ 0x47F6C773CEFF77E9) - 0x4082C021C8381480 + ((2 * &a56) & 0x8FED8EE79DFEEFD0));
  v90 = vaddq_s64(v89, xmmword_100F52380);
  v91 = vaddq_s64(v89, xmmword_100F52390);
  v92 = vdupq_n_s64(0xCC68E58A2A2A3AF0);
  v93 = veorq_s8(v91, v92);
  v94 = veorq_s8(v90, v92);
  v95 = vdupq_n_s64(0xF88BF8ADF9389C97);
  v96 = vandq_s8(v91, v95);
  v97 = vandq_s8(v90, v95);
  v98 = vdupq_n_s64(0xFC6BF489F83A1AD6);
  v99 = veorq_s8(vandq_s8(vaddq_s64(v97, v97), veorq_s8(v90, v98)), v97);
  v100 = veorq_s8(vandq_s8(vaddq_s64(v96, v96), veorq_s8(v91, v98)), v96);
  v101 = vaddq_s64(v94, v94);
  v102 = vaddq_s64(v93, v93);
  v103 = vdupq_n_s64(0x69C63A4FA6254CCEuLL);
  v104 = vandq_s8(veorq_s8(v101, v103), v94);
  v105 = vandq_s8(veorq_s8(v102, v103), v93);
  v106 = vdupq_n_s64(0x34E31D27D312A666uLL);
  v107 = veorq_s8(v105, vandq_s8(v102, v106));
  v108 = veorq_s8(v104, vandq_s8(v101, v106));
  v109 = vdupq_n_s64(0x142105205112A221uLL);
  v110 = veorq_s8(v108, v109);
  v111 = veorq_s8(v107, v109);
  v112 = vdupq_n_s64(0x3042000790100445uLL);
  v113 = veorq_s8(vandq_s8(veorq_s8(v107, v112), vshlq_n_s64(v100, 2uLL)), v100);
  v114 = veorq_s8(vandq_s8(veorq_s8(v108, v112), vshlq_n_s64(v99, 2uLL)), v99);
  v115 = vshlq_n_s64(v111, 2uLL);
  v116 = vshlq_n_s64(v110, 2uLL);
  v117 = vdupq_n_s64(0x538C749F4C4A999CuLL);
  v118 = veorq_s8(v116, v117);
  v119 = vandq_s8(veorq_s8(v115, v117), v111);
  v120 = vdupq_n_s64(0x34E31D27D312A664uLL);
  v121 = veorq_s8(vandq_s8(veorq_s8(vandq_s8(v118, v110), vandq_s8(v116, v120)), vshlq_n_s64(v114, 4uLL)), v114);
  v122 = veorq_s8(vandq_s8(veorq_s8(v119, vandq_s8(v115, v120)), vshlq_n_s64(v113, 4uLL)), v113);
  v123 = vdupq_n_s64(0x2DuLL);
  v124 = veorq_s8(veorq_s8(v91, v123), vaddq_s64(v122, v122));
  v125 = veorq_s8(veorq_s8(v90, v123), vaddq_s64(v121, v121));
  v126 = vaddq_s64(v89, xmmword_100F52CA0);
  v126.i64[0] = (v125.i32[0] * v126.i32[0]);
  v126.i64[1] = (v125.i32[2] * v126.i32[2]);
  v127 = vaddq_s64(v89, xmmword_100F52C90);
  v128 = (v124.i32[2] * v127.i32[2]);
  v129 = (v124.i32[0] * v127.i32[0]);
  v130 = vdupq_n_s64((&a71 ^ 0xF17FEAFB6FBDFEAFLL) + 0x4FBF959EFBE6E37ELL + ((2 * &a71) & 0xE2FFD5F6DF7BFD50));
  v131 = vaddq_s64(v130, xmmword_100F52380);
  v132 = vaddq_s64(v130, xmmword_100F52390);
  v133 = vdupq_n_s64(0xA00DB2F5747C32B8);
  v134 = vdupq_n_s64(0x1ECDCD90E0272F6BuLL);
  v135 = vaddq_s64(veorq_s8(v131, v133), v134);
  v136 = vaddq_s64(veorq_s8(v132, v133), v134);
  v137 = vdupq_n_s64(0x1E476621F07839A4uLL);
  v138 = vdupq_n_s64(0xA087194464232477);
  v139 = vaddq_s64(veorq_s8(v132, v137), v138);
  v140 = vaddq_s64(veorq_s8(v131, v137), v138);
  v141 = vdupq_n_s64(0x302B8B114CCA46EuLL);
  v142 = vdupq_n_s64(0xBDC2C7D48097B9BDLL);
  v143 = vaddq_s64(veorq_s8(v131, v141), v142);
  v144 = vaddq_s64(veorq_s8(v132, v141), v142);
  v145 = vdupq_n_s64(0xFC77ECFFFB6C4D5FLL);
  v146 = vdupq_n_s64(0x8EuLL);
  v147 = vaddq_s64(veorq_s8(v132, v145), v146);
  v148 = vaddq_s64(veorq_s8(v131, v145), v146);
  v145.i64[0] = v129;
  v145.i64[1] = v128;
  *v145.i8 = vmovn_s64(v145);
  *v121.i8 = vmovn_s64(v126);
  v149 = veorq_s8(v132, v136);
  v132.i16[0] = v121.i16[2];
  v150 = vdupq_n_s64(0x97uLL);
  v151 = veorq_s8(veorq_s8(veorq_s8(v131, v135), veorq_s8(v140, v143)), veorq_s8(v148, v150));
  v152 = vaddq_s64(v130, xmmword_100F52CC0);
  v153 = veorq_s8(veorq_s8(v149, veorq_s8(v139, v144)), veorq_s8(v147, v150));
  v154 = vaddq_s64(v130, xmmword_100F52CB0);
  v151.i64[0] = (v151.i32[0] * v152.i32[0]);
  v154.i64[0] = (v153.i32[0] * v154.i32[0]);
  v154.i64[1] = (v153.i32[2] * v154.i32[2]);
  *v154.i8 = vmovn_s64(v154);
  v151.i64[1] = (v151.i32[2] * v152.i32[2]);
  *v153.i8 = vmovn_s64(v151);
  v151.i16[0] = v153.i16[2];
  v155 = *(v71 + 8 * ((37675 * ((a54 + 1180041780) > 0x175AF980)) ^ (a54 + 8131)));
  HIDWORD(v157) = (a54 + 841153210) & 0xCDDD63FF;
  v132.i16[1] = v121.i16[0];
  a61 += 64;
  v132.i16[2] = v145.i16[2];
  v132.i16[3] = v145.i16[0];
  v151.i16[1] = v153.i16[0];
  v151.i16[2] = v154.i16[2];
  v151.i16[3] = v154.i16[0];
  HIDWORD(v159) = a54 + 1865146070;
  *v132.i8 = vuzp1_s8(*v132.i8, *v132.i8);
  LODWORD(v159) = a54 - 1049724198;
  HIDWORD(v158) = a54 + 47007;
  LODWORD(v158) = a54 + 326166106;
  LODWORD(v157) = a54 + 13402;
  HIDWORD(a23) = a54 - 1037406246;
  HIDWORD(a50) = a54 + 800713249;
  HIDWORD(a48) = a54 ^ 0xCE23;
  v160 = 1603510583 * ((((2 * (v72 - 216)) | 0xF9308EA45D856BBELL) - (v72 - 216) + 0x367B8ADD13D4A21) ^ 0xC36950BEB9198774);
  HIDWORD(a40) = a54 + 31597;
  HIDWORD(a32) = HIDWORD(v157) - 5912;
  return (v155)(a1, a2, v88 + 0x213ABA95B0AD6C57, 166554824, 4294938714, 45716, 1956, 25812, a9, a10, (&a60 ^ 0x7F7F70FDF78EF74FLL) - 0x10040029C00C0500 + ((2 * &a60) & 0xFEFEE1FBEF1DEE90), (&a63 ^ 0xFFDB79DFFFDFFEFFLL) + 0x5CFFAF7D4EE07F3FLL + ((2 * &a63) & 0xFFB6F3BFFFBFFDF0), (&a58 ^ 0xD1FDFBFFF173DB2BLL) + 0x3FBFCDAECFEDFFD6 + ((2 * &a58) & 0xA3FBF7FFE2E7B650), (&a65 ^ 0x834DEF7EDFBCB7DFLL) + 0x7FF6FBF7E5EFDFF6 + ((2 * &a65) & 0x69BDEFDBF796FB0), vuzp1_s8(*v151.i8, *v132.i8), v128, 0, 1, 2, 3, a21, (&a70 ^ 0xFFFF66FD5FFEAD7FLL) + 0x7D69BBF7FCFFDFA7 + ((2 * &a70) & 0xFFFECDFABFFD5AF0), a23, v157, v132.i64[0], v132.i64[1], v75, v88 + 0x213ABA95A04CFF12, v88 + 0x42B506A4A4BDB381, a30, (~(v72 - 216) & 0xC12DAD6FFC5D06E1 | (v72 - 216) & 0x3ED2529003A2F918) ^ 0x6FA750A1CD5CCBC5, a32, (v72 - 216) | 0x1F1814D65E23BD66, a34, a35, a36, a37, a38, v88 + 0x213ABA95B0AD6C57, a40, v158, v159, a43, a44, a45, a46, v160 ^ 0x26F, a48, 3776548152u - 906386353 * ((2 * ((v72 - 216) & 0x72155FC63021B268) - (v72 - 216) - 0x72155FC63021B26BLL) ^ 0x23605DF7FEDF80B1), a50, (((2 * (v72 - 216)) | 0xE813A3C71421873ALL) - (v72 - 216) + 0xBF62E1C75EF3C63) ^ 0xCBF8C60F1DCBF136, v160);
}

uint64_t sub_1003D19D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v19 = a7 + 4 * (v9 + 5 * (v8 ^ 0x7AECu));
  v20 = *(v12 + v19);
  v21 = *(v11 + 4 * (v9 & 0x1F)) ^ *(v15 + v19);
  v22 = ((*(v11 + v19) - (a6 & (2 * *(v11 + v19))) + v14) ^ *(*(&off_1010A0B50 + (v8 ^ a8)) + 4 * (v20 & 0x1F) + v10)) - 686988095 * (((v21 ^ v16) + v17) ^ ((v21 ^ v18) + 637382349) ^ ((v21 ^ 0x399831DE) - 775897409)) - 600950037;
  *(v11 + v19) = v22;
  *(v12 + v19) = v20 + 478674045 * v22;
  return (*(v13 + 8 * ((61092 * (v9 == 1367197143)) ^ v8)))();
}

uint64_t sub_1003D1CB0(void *a1)
{
  v4 = STACK[0x240] < 0xFFFFFFFFFFFFFFD7;
  a1[3] = STACK[0x330];
  a1[4] = *(v1 + 80);
  *(v1 + 80) = a1;
  *(a1[4] + 24) = a1;
  a1[1] = STACK[0x2F8];
  return (*(v3 + 8 * (((((v2 - 23809) | 0x1482) ^ 0xEC54) * v4) ^ v2)))();
}

uint64_t sub_1003D1D30()
{
  LODWORD(STACK[0x1B84]) = v2;
  LODWORD(STACK[0x840]) = v1;
  return (*(v4 + 8 * ((87 * (((v2 == v3) ^ ((v0 ^ 0xDE) - 1)) & 1)) ^ v0 ^ 0xB8DE)))();
}

uint64_t sub_1003D1D7C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xF8A0)))(STACK[0x1F28]);
  STACK[0x1F28] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003D1E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, unint64_t a27, unint64_t a28, unint64_t a29, unint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53, unint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x4C0] = STACK[0x228];
  STACK[0x418] = a68;
  STACK[0x3E8] = a67;
  STACK[0x4E0] = a27;
  STACK[0x420] = a30;
  STACK[0x368] = a31;
  STACK[0x440] = v71;
  STACK[0x400] = a29;
  STACK[0x3A8] = a28;
  STACK[0x470] = a26;
  STACK[0x390] = v73;
  STACK[0x428] = v68;
  STACK[0x318] = v69;
  STACK[0x4D0] = a53;
  STACK[0x3C0] = a54;
  return (*(v70 + 8 * v72))();
}

uint64_t sub_1003D1F20()
{
  *(v2 - 256) = STACK[0xCB0];
  *(v2 - 244) = v0 - 1012831759 * ((((v2 - 256) | 0xE842DB87) - (v2 - 256) + ((v2 - 256) & 0x17BD2478)) ^ 0xF8D1CD0D) + 31482;
  v3 = (*(v1 + 8 * (v0 + 37490)))(v2 - 256);
  return (*(v1 + 8 * v0))(v3);
}

uint64_t sub_1003D208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t (*a29)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v34 = (((v29 ^ 0x9215D1C0) + 1844063808) ^ ((v29 ^ 0x9C9D0FFD) + 1667428355) ^ ((v29 ^ 0x13F45841) - 334780481)) - 1949821965 + (((*(v33 - 172) ^ 0x5B93CB39) - 1536412473) ^ ((*(v33 - 172) ^ 0x35EA2B0C) - 904538892) ^ ((*(v33 - 172) ^ 0x73056649) - 1929733705));
  v35 = (v34 ^ 0x8EAEF1D1) & (2 * (v34 & 0xAF30F905)) ^ v34 & 0xAF30F905;
  v36 = ((2 * (v34 ^ 0x82EF91D9)) ^ 0x5BBED1B8) & (v34 ^ 0x82EF91D9) ^ (2 * (v34 ^ 0x82EF91D9)) & 0x2DDF68DC;
  v37 = v36 ^ 0x24412844;
  v38 = (v36 ^ 0x9864018) & (4 * v35) ^ v35;
  v39 = ((4 * v37) ^ 0xB77DA370) & v37 ^ (4 * v37) & 0x2DDF68D8;
  v40 = (v39 ^ 0x255D2050) & (16 * v38) ^ v38;
  v41 = ((16 * (v39 ^ 0x882488C)) ^ 0xDDF68DC0) & (v39 ^ 0x882488C) ^ (16 * (v39 ^ 0x882488C)) & 0x2DDF68C0;
  v42 = v40 ^ 0x2DDF68DC ^ (v41 ^ 0xDD60800) & (v40 << 8);
  v43 = v34 ^ (2 * ((v42 << 16) & 0x2DDF0000 ^ v42 ^ ((v42 << 16) ^ 0x68DC0000) & (((v41 ^ 0x2009601C) << 8) & 0x2DDF0000 ^ 0x20970000 ^ (((v41 ^ 0x2009601C) << 8) ^ 0x5F680000) & (v41 ^ 0x2009601C))));
  v44 = (((v31 ^ 0x646E788E) - 1684961422) ^ ((v31 ^ 0x9EB62929) + 1632229079) ^ ((v31 ^ 0xE7A4D7DB) + 408627237)) + (((*(v33 - 168) ^ 0x18F0FED) - 26152941) ^ ((*(v33 - 168) ^ 0xAFE11296) + 1344204138) ^ ((*(v33 - 168) ^ 0xB3129B07) + 1290626297)) + 2026491816;
  *(v33 - 172) = v43 ^ 0xB84AAEC1;
  *(v33 - 168) = v44 ^ ((v44 ^ 0x4F74E61F) - 1923359919) ^ ((v44 ^ 0x1DDB5DE2) - 537632594) ^ ((v44 ^ 0x108082A2) - 760234002) ^ ((v44 ^ 0x7FFFFBEF) - 1110391135) ^ 0x20AC44CC;
  v45 = (((v32 ^ 0xB433838A) + 1271692406) ^ ((v32 ^ 0x47BC0B32) - 1203505970) ^ ((v32 ^ 0xEEF30EC4) + 286060860)) - 1321889895 + (((*(v33 - 164) ^ 0xC41C3AED) + 1004782867) ^ ((*(v33 - 164) ^ 0x46C0FAAF) - 1187052207) ^ ((*(v33 - 164) ^ 0x9FA0463E) + 1616886210));
  v46 = (((v30 ^ 0x8A2D99FD) + 1976722947) ^ ((v30 ^ 0x78AC6CB) - 126535371) ^ ((v30 ^ 0x90DBD94A) + 1864640182)) + 1226562951 + (((*(v33 - 160) ^ 0x8DD8746) - 148735814) ^ ((*(v33 - 160) ^ 0x61EFA341) - 1643094849) ^ ((*(v33 - 160) ^ 0x744EA27B) - 1951310459));
  *(v33 - 164) = v45 ^ ((v45 ^ 0x79D17092) - 267252275) ^ ((v45 ^ 0xB4609836) + 1034151273) ^ ((v45 ^ 0xC462957A) + 1302456357) ^ ((v45 ^ 0x7FEFFF7F) - 164855262) ^ 0x6B4004DD;
  *(v33 - 160) = v46 ^ ((v46 ^ 0xF9EEBD5D) + 137597486) ^ ((v46 ^ 0x87BE71E8) + 1986223769) ^ ((v46 ^ 0xC78DF145) + 911269430) ^ ((v46 ^ 0xB7FFED7F) + 1176683024) ^ 0x135E56F3;
  return a29(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_1003D270C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, char *a13, int a14, int a15, uint64_t a16, uint64_t a17, int a18)
{
  v23 = 139493411 * (&a13 ^ 0xC2DE145);
  a13 = &a12;
  a14 = (v19 + 818 * (v22 ^ 0x1450) + 433357486) ^ v23;
  a15 = v23 + 4443 + v22;
  a16 = v20;
  a17 = v21;
  (*(v18 + 8 * (v22 + 47333)))(&a13);
  return (*(v18 + 8 * ((21145 * (a18 == -371865839)) ^ v22)))(a1);
}

uint64_t sub_1003D27B0@<X0>(int a1@<W8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v9 = (v3 + v4);
  v10 = vaddq_s8(vaddq_s8(*v5, a3), vmvnq_s8(vandq_s8(vaddq_s8(*v5, *v5), a2)));
  *v9 = vaddq_s8(vaddq_s8(v5[-1], a3), vmvnq_s8(vandq_s8(vaddq_s8(v5[-1], v5[-1]), a2)));
  v9[1] = v10;
  return (*(v8 + 8 * (((v6 == 0) * v7) ^ a1)))();
}

uint64_t sub_1003D280C()
{
  v8 = 23958;
  atomic_compare_exchange_strong((*(v7 + 8 * v1) + v3), &v8, v4);
  return (*(v6 + 8 * (((v8 == v5) * v2) ^ v0)))();
}

uint64_t sub_1003D29BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, int a7, int a8)
{
  v10 = a4 < a5;
  if (v10 == v8 + a8 < a5)
  {
    v10 = v8 + a8 < a4;
  }

  return (*(STACK[0x6A0] + 8 * ((!v10 * v9) ^ a7)))();
}

uint64_t sub_1003D2BC4(uint64_t a1, unsigned int a2)
{
  v5 = STACK[0x4A0] | ((STACK[0x4A0] < a2) << 32);
  STACK[0x620] = v5 + 0x68381515BABEFD5DLL;
  v6 = *(STACK[0x698] + 8);
  v7 = v6 + 188949737;
  v5 -= 1590396632;
  v8 = v6 > 0xFFFFFFFFF4BCDB16;
  v9 = v8 ^ (v5 < (((v3 ^ 0x4E86u) + 24729) ^ 0xB434082uLL));
  v10 = v7 > v5;
  if (v9)
  {
    v10 = v8;
  }

  v11 = *(v4 + 8 * ((60758 * v10) ^ v3));
  STACK[0x7B0] = *(&off_1010A0B50 + (v3 ^ 0x5FB0)) - 843317594;
  v12 = *(&off_1010A0B50 + (v3 ^ 0x48A1));
  STACK[0x6E8] = *(&off_1010A0B50 + v3 - 19592) - 955876402;
  STACK[0x488] = v12 - 145359299;
  STACK[0x6F0] = *(&off_1010A0B50 + v3 - 15398) - 1819216066;
  v13 = *(&off_1010A0B50 + v3 - 18185);
  STACK[0x480] = *(&off_1010A0B50 + v3 - 15504) - 437425274;
  STACK[0x648] = v13 - 1306953403;
  STACK[0x720] = *(&off_1010A0B50 + (v3 ^ 0x41C7));
  STACK[0x350] = *(&off_1010A0B50 + (v3 ^ 0x48AD)) - 1048392095;
  STACK[0x668] = *(&off_1010A0B50 + (v3 ^ 0x4351)) - 106330419;
  STACK[0x5A0] = *(&off_1010A0B50 + v3 - 17874) - 1187663822;
  STACK[0x660] = *(&off_1010A0B50 + v3 - 16171) - 1791174639;
  STACK[0x7C8] = *(&off_1010A0B50 + v3 - 16943) - 1452020499;
  STACK[0x738] = *(&off_1010A0B50 + (v3 ^ 0x48DD)) - 1533277583;
  STACK[0x7D8] = *(&off_1010A0B50 + (v3 ^ 0x489C)) - 1260529494;
  STACK[0x718] = *(&off_1010A0B50 + v3 - 18989) - 185987839;
  STACK[0x348] = *(&off_1010A0B50 + v3 - 16662) - 2076177714;
  STACK[0x758] = *(&off_1010A0B50 + v3 - 16201) - 387137787;
  STACK[0x6F8] = *(&off_1010A0B50 + (v3 ^ 0x48CF));
  v14 = *(&off_1010A0B50 + (v3 ^ 0x5D4B));
  STACK[0x730] = *(&off_1010A0B50 + (v3 ^ 0x4D41)) - 2054928035;
  STACK[0x800] = v14 - 231415367;
  v15 = *(&off_1010A0B50 + (v3 ^ 0x462A)) - 1680276466;
  v16 = *(&off_1010A0B50 + (v3 ^ 0x5F85));
  STACK[0x5E0] = *(&off_1010A0B50 + v3 - 15426) - 1940437438;
  STACK[0x498] = v16 - 312008199;
  STACK[0x6A8] = *(&off_1010A0B50 + (v3 ^ 0x46F7)) - 906524323;
  v17 = *(&off_1010A0B50 + (v3 ^ 0x44B0));
  STACK[0x710] = *(&off_1010A0B50 + (v3 ^ 0x445B)) - 82484695;
  STACK[0x6A0] = v17 - 387469914;
  STACK[0x678] = *(&off_1010A0B50 + (v3 ^ 0x49CA)) - 1630321106;
  v18 = *(&off_1010A0B50 + v3 - 18961);
  STACK[0x560] = *(&off_1010A0B50 + v3 - 16636) - 429698118;
  STACK[0x7F8] = v18 - 64766467;
  STACK[0x328] = *(&off_1010A0B50 + (v3 ^ 0x428B)) - 815276167;
  v19 = *(&off_1010A0B50 + (v3 ^ 0x5DCD));
  STACK[0x6E0] = *(&off_1010A0B50 + v3 - 19586) - 1236683774;
  STACK[0x680] = v19 - 930370047;
  STACK[0x5A8] = *(&off_1010A0B50 + v3 - 19694) - 477118410;
  v20 = *(&off_1010A0B50 + (v3 ^ 0x4713));
  STACK[0x6C8] = v20 - 1799566047;
  STACK[0x6C0] = v20 - 1799565999;
  v21 = *(&off_1010A0B50 + (v3 ^ 0x4C04)) - 691187598;
  STACK[0x490] = *(&off_1010A0B50 + v3 - 18809) - 20274347;
  STACK[0x420] = *(&off_1010A0B50 + (v3 ^ 0x4AAD)) - 672472991;
  STACK[0x7C0] = *(&off_1010A0B50 + (v3 ^ 0x4EA9)) - 179860347;
  STACK[0x6D8] = *(&off_1010A0B50 + (v3 ^ 0x4417)) - 1084492803;
  STACK[0x418] = *(&off_1010A0B50 + (v3 ^ 0x49AC)) - 1547464358;
  STACK[0x5D8] = *(&off_1010A0B50 + v3 - 18997);
  STACK[0x7A8] = *(&off_1010A0B50 + v3 - 19221) - 1497176871;
  v22 = *(&off_1010A0B50 + v3 - 18004);
  STACK[0x478] = *(&off_1010A0B50 + v3 - 19508) - 592212286;
  STACK[0x728] = v22 - 830127198;
  STACK[0x7B8] = *(&off_1010A0B50 + v3 - 18840) - 1074833858;
  v23 = *(&off_1010A0B50 + v3 - 17146);
  STACK[0x750] = *(&off_1010A0B50 + v3 - 18091) - 2127129455;
  STACK[0x808] = v23 - 183391798;
  STACK[0x6B0] = *(&off_1010A0B50 + (v3 ^ 0x5F4D)) - 1722172543;
  v24 = *(&off_1010A0B50 + (v3 ^ 0x5DB1));
  STACK[0x340] = *(&off_1010A0B50 + v3 - 18017) - 579625171;
  STACK[0x7D0] = v24 - 908123987;
  STACK[0x6D0] = *(&off_1010A0B50 + (v3 ^ 0x41D3)) - 839786143;
  v25 = *(&off_1010A0B50 + (v3 ^ 0x4059));
  LODWORD(STACK[0x3D4]) = v3;
  v26 = *(&off_1010A0B50 + v3 - 17785);
  STACK[0x670] = v25 - 2100355563;
  STACK[0x410] = v26 - 1415919787;
  STACK[0x658] = v2;
  STACK[0x628] = 5 * v2;
  STACK[0x7F0] = v15;
  STACK[0x810] = v21;
  return v11();
}

uint64_t sub_1003D325C(int a1, uint64_t a2, char a3, uint64_t a4, char a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, int a60, uint64_t a61, uint64_t a62, char a63)
{
  v81 = v74 - 345209289 * v79 + (v70 ^ 0x2EDB393D) + (((v80 ^ 0x1F9F16BC) - 530519740) ^ ((v80 ^ 0x502219F6) - 1344412150) ^ (((v70 - 910216742) & 0x3640EFDF ^ 0x85D20627) + (v80 ^ 0x7A2D731B)));
  v82 = (v81 ^ 0xD3E9B98E) & (2 * (v81 & 0xDBEDBD8F)) ^ v81 & 0xDBEDBD8F;
  v83 = ((2 * (v81 ^ 0xD17AE18A)) ^ 0x152EB80A) & (v81 ^ 0xD17AE18A) ^ (2 * (v81 ^ 0xD17AE18A)) & 0xA975C04;
  v84 = v83 ^ 0xA914405;
  v85 = (v83 ^ 0x61800) & (4 * v82) ^ v82;
  v86 = ((4 * v84) ^ 0x2A5D7014) & v84 ^ (4 * v84) & 0xA975C04;
  v87 = (v86 ^ 0xA155000) & (16 * v85) ^ v85;
  v88 = ((16 * (v86 ^ 0x820C01)) ^ 0xA975C050) & (v86 ^ 0x820C01) ^ (16 * (v86 ^ 0x820C01)) & 0xA975C00;
  v89 = v87 ^ 0xA975C05 ^ (v88 ^ 0x8154000) & (v87 << 8);
  v90 = v81 ^ (2014252218 * *(a70 + 4 * v72)) ^ (2 * ((v89 << 16) & 0xA970000 ^ v89 ^ ((v89 << 16) ^ 0x5C050000) & (((v88 ^ 0x2821C05) << 8) & 0xA970000 ^ 0x8830000 ^ (((v88 ^ 0x2821C05) << 8) ^ 0x175C0000) & (v88 ^ 0x2821C05))));
  v91 = ((v90 ^ 0x796366DC) + 232533118) ^ ((v90 ^ 0x9E4579EB) - 352701621) ^ ((v90 ^ 0x39EF1AB2) + 1297109012);
  v92 = ((2 * v71) & 0x13E) + (v71 ^ 0xFDBFE7EFFF5ABB9FLL);
  v93 = v92 + 0x240181000A543E4;
  v94 = STACK[0x218];
  v95 = (STACK[0x218] + 4 * v92 + 0x900604002951184);
  v96 = STACK[0x220];
  if (v93 < 0xFFFFFFFFFFFFFF83)
  {
    v95 = (STACK[0x220] + 4 * v93);
  }

  v97 = STACK[0x210];
  *(STACK[0x210] + 4 * (v73 & 0x1F)) -= (32737052 * (v91 - (((*v95 ^ 0x3D6C9B9A) + 43213926) ^ ((*v95 ^ 0x23F84E7A) + 470266246) ^ ((*v95 ^ 0x2B04A9B1) - 721725873))) + 1391756568) ^ 0x15084036;
  v98 = *(a70 + 4 * (a5 & 0x1F));
  v99 = STACK[0x200];
  v100 = *(STACK[0x200] + 4 * ((a67 + a6) & 0x1F));
  v101 = *(a69 + 4 * ((a65 + a6) & 0x1F)) - 372264001;
  v102 = 457880378 * (v101 + v98) * (v100 - v91 - 1435087067) + 1585096164 * (v101 - v100) * (v98 + 1435087067 + v91) - 953841149;
  v103 = (*(v97 + 4 * (v77 & 0x1F)) - 2099164960) % 0x1Bu;
  if (v103)
  {
    v102 = (v102 >> v103) ^ (v102 << -v103);
  }

  *(v99 + 4 * (a3 & 0x1F)) = v102;
  v104 = ((2 * v75) & 0x30) + (v75 ^ 0xDFEFDDDAFEFDCFB8);
  v105 = v104 + 0x2010222501023045;
  v106 = (a62 + 4 * v104 - 0x7FBF776BFBF73EE0);
  if (v105 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v106 = (a61 + 4 * v105);
  }

  v107 = v102 - ((32737052 * (*(a70 + 4 * ((a63 + a6) & 0x1F)) - (((*v106 ^ 0x19695A92) - 426334866) ^ ((*v106 ^ 0xBEE54D) - 12510541) ^ ((*v106 ^ 0x21FB0430) - 1643840560)) + v102) - 249337636) ^ 0x15084036);
  v108 = (v107 ^ 0xFDDDF84F) + 2146355126 + ((2 * v107) & 0xFBBBF09E);
  *(v99 + 4 * (v78 & 0x1F)) = *(v99 + 4 * (v78 & 0x1F)) - 51 * v108 + 264913151;
  v109 = (v108 ^ 0xA02BBFF3) & (2 * (v108 & 0x82333FFB)) ^ v108 & 0x82333FFB;
  v110 = ((2 * (v108 ^ 0xA46DAD45)) ^ 0x4CBD257C) & (v108 ^ 0xA46DAD45) ^ (2 * (v108 ^ 0xA46DAD45)) & 0x265E92BE;
  v111 = v110 ^ 0x22429282;
  v112 = (v110 ^ 0x3C003C) & (4 * v109) ^ v109;
  v113 = ((4 * v111) ^ 0x997A4AF8) & v111 ^ (4 * v111) & 0x265E92B8;
  v114 = (v113 ^ 0x5A02B0) & (16 * v112) ^ v112;
  v115 = ((16 * (v113 ^ 0x26049006)) ^ 0x65E92BE0) & (v113 ^ 0x26049006) ^ (16 * (v113 ^ 0x26049006)) & 0x265E92A0;
  v116 = v114 ^ 0x265E92BE ^ (v115 ^ 0x24480200) & (v114 << 8);
  v117 = v108 ^ (345209289 * (a60 + a6 + *(v99 + 4 * ((a58 + a6) & 0x1F))) + 1148114543) ^ (2 * ((v116 << 16) & 0x265E0000 ^ v116 ^ ((v116 << 16) ^ 0x12BE0000) & (((v115 ^ 0x216901E) << 8) & 0x265E0000 ^ 0x204C0000 ^ (((v115 ^ 0x216901E) << 8) ^ 0x5E920000) & (v115 ^ 0x216901E))));
  v118 = ((v117 ^ 0x7B548F86) - 1477034638) ^ ((v117 ^ 0xB271FD66) + 1859342226) ^ ((v117 ^ 0x3976867) - 550118767);
  v119 = (a53 ^ v76 ^ ((v76 ^ 0x9126BD23) + 1909689824) ^ ((v76 ^ 0xE83DD2FE) + 147382787) ^ ((v76 ^ 0x38EAD721) - 668997666) ^ ((v76 ^ 0x5EFB77FF) - 1106360572) ^ 0xC9ABCB14) + 129;
  v120 = ((2 * (v119 % 0x81)) & 0x1F6) + ((v119 % 0x81) ^ 0x7F79AD7AF3EDF4FBLL);
  v121 = v120 - 0x7F79AD7AF3EDF578;
  v122 = (v94 + 4 * v120 + 0x2194A1430482C14);
  if (v121 < 0xFFFFFFFFFFFFFF83)
  {
    v122 = (v96 + 4 * v121);
  }

  *(v97 + 4 * (v77 & 0x1F)) = v118 - (((*v122 ^ 0xB8743C72) + 1200341902) ^ ((*v122 ^ 0x5DC70E96) - 1573326486) ^ ((*v122 ^ 0xD0234EB5) + 802992459)) + 830313054;
  return (*(STACK[0x228] + 8 * (v70 ^ (55161 * (a6 == 31)))))((a1 + 3));
}

uint64_t sub_1003D3B0C(uint64_t a1, int a2, int a3)
{
  v5 = a2 - a3;
  if ((a2 - a3) >= 0xFA)
  {
    v5 = 250;
  }

  return (*(v4 + 8 * v3))(a1, 3062752778, (v3 - 8) ^ 0x5B46EB23u, 219188744, 2257078020, 2189967620, 438377488, (v5 + a1));
}

uint64_t sub_1003D3BE4()
{
  v3 = (*(v0 + 8 * (v1 ^ 0xF31A)))();
  v4 = ((v3 << ((v1 - 17) ^ 0xBE)) & (((v1 + 570446018) | 0x48360500) ^ 0xB5A96A08)) + (v3 ^ 0x6FCFFFCD);
  *(v2 + 48) = v4 - 658507781;
  return (*(v0 + 8 * ((43107 * ((v4 - 1875902413) >= 0)) ^ v1)))();
}

uint64_t sub_1003D3DF4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v3 = (((*(a2 + 8) ^ 0xCE1037B1) + 837797967) ^ ((*(a2 + 8) ^ 0xC6255C16) + 970630122) ^ ((a1 ^ 0x696C ^ *(a2 + 8) ^ 0xE1E097BF) + 505369418)) + 1677682841;
  *(a2 + 8) = v3 ^ ((v3 ^ 0xB3B91D5D) + 913261350) ^ ((v3 ^ 0x7608E791) - 203507222) ^ ((v3 ^ 0xC447A0F4) + 1100086925) ^ ((v3 ^ 0x7BDFFBBF) - 32922168) ^ 0x93FC6696;
  return (*(v2 + 8 * a1))();
}

uint64_t sub_1003D408C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, unint64_t a27, unint64_t a28, unint64_t a29, unint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x4C0] = STACK[0x228];
  STACK[0x418] = a68;
  STACK[0x3E8] = a67;
  STACK[0x4E0] = a27;
  STACK[0x420] = a30;
  STACK[0x368] = a31;
  STACK[0x440] = v70;
  STACK[0x400] = a29;
  STACK[0x3A8] = a28;
  STACK[0x470] = a26;
  STACK[0x390] = 0;
  STACK[0x428] = v68;
  STACK[0x318] = a1;
  STACK[0x4D0] = a1;
  STACK[0x3C0] = a1;
  v72 = (*(v69 + 8 * (v71 + 38088)))();
  return (*(v69 + 8 * v71))(v72);
}

uint64_t sub_1003D4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v13 = *(a1 + v8 - 1144625584) ^ v11;
  v14 = ((*(a1 + v8 + v10) ^ v11) << 24) | ((((v9 - 61) ^ *(a1 + v8 - 1144625586)) ^ 0x3C) << 16) | ((*(a1 + v8 - 1144625585) ^ v11) << 8) | v13;
  v15 = v14 - 2 * (v14 & a7 ^ v13 & 0xA);
  v16 = a1 & 0x4D ^ (2 * (a1 & 0x4D)) & 0x7E ^ ((2 * (a1 & 0x4D)) | 0x6222800) & (a1 ^ 0xE4AC0C16) ^ 0x5F6A6A5B;
  v17 = ((2 * (a1 ^ 0xE4AC0C16)) ^ 0xB8F6FCB6) & (a1 ^ 0xE4AC0C16) ^ (2 * (a1 ^ 0xE4AC0C16)) & 0x4108025A;
  v18 = v16 ^ v17 & 0x200190A6 ^ ((4 * v16) ^ 0x5B8A11CA) & (v17 ^ 0x1E626813);
  v19 = ((4 * v17) ^ 0x5FAA18EE) & (v17 ^ 0x1E626813) ^ v17 & 0x200190A6;
  v20 = v18 ^ v19 & 0x2623B8A6 ^ ((16 * v18) ^ 0xB2A79D36) & (v19 ^ 0x622280B);
  v21 = ((16 * v19) ^ 0x44013886) & (v19 ^ 0x622280B) ^ v19 & 0x2623B8A6;
  v22 = v20 ^ v21 & 0x2623B8A6 ^ ((v20 << 8) ^ 0x4C49E3A6) & (v21 ^ 0x622285B);
  v23 = ((v21 << 8) ^ 0x40BBAA6) & (v21 ^ 0x622285B) ^ v21 & 0x2623B8A6;
  *(v12 + 4 * (((a1 ^ (2 * (v22 ^ v23 & 0x2623B8A6 ^ ((v22 << 16) ^ 0x647AB8A6) & (v23 ^ 0x59480000) ^ ((v22 << 16) ^ 0x647AB8A6) & 0x5F6A2802))) >> 2) ^ 0x144ACBE)) = v15 - 371865839;
  return (*(a8 + 8 * ((11421 * ((a1 - 1144625583) < 0x40)) ^ v9)))(a1 + 4);
}

uint64_t sub_1003D43D4(int a1, unsigned int a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = v10 - 1;
  v15 = ((*(*v13 + (*v11 & a3)) ^ (v9 + v14)) & 0x7FFFFFFF) * a8;
  v16 = (v15 ^ HIWORD(v15)) * a8;
  *(v8 + v14) = *(v9 + v14) ^ *(a6 + (v16 >> 24)) ^ *((v16 >> 24) + a7 + 6) ^ *(a4 + (v16 >> 24)) ^ v16 ^ (-7 * BYTE3(v16)) ^ a5;
  return (*(v12 + 8 * (((v14 != 0) * a1) | a2)))();
}

uint64_t sub_1003D4454@<X0>(int a1@<W5>, _DWORD *a2@<X7>, int a3@<W8>)
{
  v9 = v3 - 28404;
  v10 = (v3 + 536847551) | 0x42608040;
  v11 = STACK[0xE88];
  v12 = (*(STACK[0xE88] + 8) + (99 * v5 + 1835905336) % (*(STACK[0xE88] + 32) - 5));
  v13 = *v12;
  v14 = (STACK[0x14C8] + (v4 + v10 + 146756374));
  v15 = *v14;
  v16 = *(*v8 + (*a2 & v6));
  v17 = ((((v16 ^ v12) & 0x7FFFFFFF) * a1) ^ ((((v16 ^ v12) & 0x7FFFFFFF) * a1) >> 16)) * a1;
  v18 = 1864610357 * ((1864610357 * ((v16 ^ v14) & 0x7FFFFFFF)) ^ ((1864610357 * ((v16 ^ v14) & 0x7FFFFFFF)) >> 16));
  LODWORD(v17) = (v13 ^ v15 ^ *(STACK[0x6D8] + (v17 >> 24)) ^ *(STACK[0x6E0] + (v17 >> 24)) ^ *(STACK[0x6D0] + (v17 >> 24)) ^ *(STACK[0x6D8] + (v18 >> 24)) ^ *(STACK[0x6E0] + (v18 >> 24)) ^ *(STACK[0x6D0] + (v18 >> 24)) ^ v17 ^ v18 ^ (-109 * BYTE3(v17)) ^ (-109 * BYTE3(v18)) ^ 0x41);
  LODWORD(v17) = (((v17 ^ 0xE96B1184) + 378859132) ^ ((v17 ^ 0x9A1D49BB) + 1709356613) ^ ((v17 ^ 0x7376587E) - 1937135742)) + 65;
  v19 = v4 + 1797268329;
  v20 = (v17 ^ 0x1EF7482F) + ((2 * v17) & 0x3DEE905E);
  v21 = v19 - 146506256 + v20 - 205602850;
  v22 = (((LODWORD(STACK[0x1B1C]) ^ 0x9FEF8BC0) + 1611691072) ^ ((LODWORD(STACK[0x1B1C]) ^ 0xFE45EEBF) + 28971329) ^ ((LODWORD(STACK[0x1B1C]) ^ 0x887FA26E) + 2004901266)) - 204452594;
  v23 = v22 < 0x9FA85FD;
  v24 = v21 > v22;
  v25 = STACK[0xD10];
  *v25 = v17;
  STACK[0x17E8] = (v25 + 1);
  LODWORD(STACK[0xEAC]) = v19;
  LODWORD(STACK[0x120C]) = v20 - 205602850;
  v26 = v24;
  if (v23 != v21 < 0x9FA85FD)
  {
    v27 = v21 < 0x9FA85FD;
  }

  else
  {
    v27 = v26;
  }

  if ((v20 - 519522372) < 0xFFFFFFEB)
  {
    v27 = 1;
  }

  LODWORD(STACK[0x1D9C]) = a3 + 1;
  LODWORD(STACK[0x1210]) = *(v11 + 32) + 747449579;
  return (*(v7 + 8 * ((30474 * v27) ^ v9)))();
}

uint64_t sub_1003D4734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(STACK[0xBC8] + (LODWORD(STACK[0x1B0C]) + v4));
  LOBYTE(STACK[0x1667]) = (((v7 ^ 0x3A) - 58) ^ ((v7 ^ 0xE6) + 26) ^ (((((v5 - 62) | 0x50) + 43) ^ v7) + 125)) - ((((v4 - ((2 * v4) & 2) - 111) ^ 0xF3) + 13) ^ (((v4 - ((2 * v4) & 2) - 111) ^ 0xDA) + 38) ^ (((v4 - ((2 * v4) & 2) - 111) ^ 0xB8) + 72)) + 48;
  return (*(v6 + 8 * v5))(a1, a2, a3, a4, &off_1010A0B50, &STACK[0x17DF], 94, 2596675714);
}

uint64_t sub_1003D4934@<X0>(int a1@<W8>)
{
  v4 = *v1;
  STACK[0x12D8] = v4;
  if (v4)
  {
    v5 = v2 == ((a1 + 655765077) & 0xD8E9977B) - 371900264;
  }

  else
  {
    v5 = 0;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((v6 * (a1 ^ 0xC0C1)) ^ a1)))();
}

uint64_t sub_1003D4BFC@<X0>(uint64_t a1@<X8>)
{
  v8 = v6 + v5 + v4;
  *(a1 + v8) = *(v2 + v8);
  return (*(v1 + 8 * (((v8 == 0) * v3) ^ v7)))();
}

uint64_t sub_1003D4E7C()
{
  LODWORD(STACK[0xF54]) = v0;
  v4 = (((v2 ^ 0x6EA68293) - 1856406163) ^ ((v2 ^ 0xE5E9B6A1) + 437668191) ^ ((v2 ^ 0x629AF323) - 1654321955)) - 532027198;
  v5 = v4 < 0xF67421B1;
  v6 = v0 - 160173938 + ((v1 - 989623752) & 0x3AFC7BF3) < v4;
  if (v0 > 0x98BDE4E != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * (((2 * v6) | (8 * v6)) ^ v1)))();
}

uint64_t sub_1003D4FE8()
{
  *(v1 - 1) = v5;
  *v1 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v3) ^ v0)))();
}

uint64_t sub_1003D5010@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v25 = v12 + v13 + v9;
  v26 = (a9 ^ a1) & (2 * (a9 & v15)) ^ a9 & v15;
  v27 = ((2 * (a9 ^ v14)) ^ a2) & (a9 ^ v14) ^ (2 * (a9 ^ v14)) & a3;
  v28 = a9 ^ (2 * ((a4 ^ (4 * v27)) & (v27 ^ a5) & (16 * (v27 & (4 * v26) ^ v26)) ^ v27 & (4 * v26) ^ v26));
  v29 = ((v28 ^ a6) + a7) ^ ((v28 ^ a8) + v16) ^ ((v28 ^ v19) + v20);
  *(v23 + v25) = v10 + v29 * v22 + v11 * (v29 + v21);
  return (*(v17 + 8 * (((v25 == 0) * v24) ^ v18)))();
}

uint64_t sub_1003D5114@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v6 = *(v5 + 4 * ((a2 - 553701615) ^ v3));
  *(a1 + 4 * v2 - 0x16B70C050) = (v6 ^ 0x1DAFEFCE) - 402808836 + ((2 * v6) & 0x3B5FDF9C);
  return (*(v4 + 8 * a2))();
}

uint64_t sub_1003D5190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = *(&STACK[0x21C] + (STACK[0x21E] & 3 ^ 1)) ^ 0xE1;
  STACK[0x208] = 0;
  return (*(a63 + 8 * ((187 * (((v64 - 13 * ((330382100 * v64) >> 32) + 7) & 0x1C) != 0)) ^ v63)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_1003D5408@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v78 = (v66 ^ a6) & (2 * (v66 & 0xE5)) ^ v66 & 0xE5;
  v79 = (((v64 + 17) | 0x38) ^ (2 * (v66 ^ 0x48)) ^ a7) & (v66 ^ 0x48) ^ (2 * (v66 ^ 0x48)) & a8;
  v80 = v66 ^ (2 * (((4 * (v79 ^ v67)) & v70 ^ v72 ^ ((4 * (v79 ^ v67)) ^ v77) & (v79 ^ v67)) & (16 * ((v79 ^ v68) & (4 * v78) ^ v78)) ^ (v79 ^ v68) & (4 * v78) ^ v78));
  v81 = (((v80 ^ a9) + a3) ^ ((v80 ^ v76) + v69) ^ ((v80 ^ v73) + v71)) + v74;
  v82 = v65 - 1;
  *(a5 + v82) = v81 * (v66 + v75) - (33 * (v66 + v75) + v81 * a1) + ((33 * (v66 + v75) + v81 * a1) << 6) + a2;
  return (*(a64 + 8 * (((v82 == 0) * a4) ^ v64)))();
}

uint64_t sub_1003D54F0()
{
  v2 = STACK[0x5FC];
  LODWORD(STACK[0x7F0]) = STACK[0x5B4];
  v3 = LODWORD(STACK[0x51C]) ^ v1;
  LODWORD(STACK[0x7F4]) = 334539782;
  LODWORD(STACK[0x7F8]) = v3;
  LODWORD(STACK[0xA10]) = v2 ^ 0xE9D54203 ^ ((v0 - 44072) | 0x8012);
  return (*(STACK[0x430] + 8 * v0))();
}

uint64_t sub_1003D554C()
{
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v1 + 8 * ((v0 ^ 0x80300A17) + 2144310660)))(8660, v2);
}

uint64_t sub_1003D55A0@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 - 1;
  v7 = ((v3 ^ 0xA4) - 55) ^ v3 ^ ((v3 ^ 0x98) - 11) ^ ((v3 ^ 0xD9) + v2) ^ ((v3 ^ 0x76) + 27);
  v8 = (((v7 ^ 0x1D) - 82) ^ (79 - v7) ^ ((v7 ^ 0xCB) + 124)) - 82;
  STACK[0x210] = v6;
  *(a1 + v6) = v8 * (v3 + 15) + 55 * (-119 * v8 + 8 * (v3 + 15)) - 56;
  return (*(v5 + 8 * ((3412 * (STACK[0x210] == 0)) ^ v1)))();
}

uint64_t sub_1003D56CC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(a69 + 4 * (((((v70 - 127) | 0x10) ^ 0xF7) * v69 + 9) & 0x1F)) = v74;
  v80 = (v73 ^ ((v70 - 4921) | 0x1901u) ^ 0x377FFFF79FCFA464) + ((2 * v73) & 0x2ELL);
  v81 = v80 - 0x377FFFF79FCFFFFALL;
  v82 = (a62 + 4 * v80 + 0x2200002180C00024);
  if (v81 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v82 = (a61 + 4 * v81);
  }

  v83 = v74 + 480397877 + ((32737052 * (v74 + *(v79 + 4 * ((a60 + v76) & 0x1F)) - (((*v82 ^ 0x200EACF) + 2113869105) ^ ((*v82 ^ 0x3726D0AC) - 1999032492) ^ ((*v82 ^ 0xD0A818C) + 1928691316))) + 1760676544) ^ 0xEAF7BFC9);
  *(a69 + 4 * (v77 & 0x1F)) = *(a69 + 4 * (v77 & 0x1F)) - 51 * v83 + 536082767;
  v84 = v83 ^ (345209289 * (v75 + v76 + *(a69 + 4 * ((a1 + v76) & 0x1F))) - 52930930) ^ ((v83 ^ 0x5B0EDFDB) - 1776044462) ^ ((v83 ^ 0xCFAF7F1E) + 42079893) ^ ((v83 ^ 0xD38CD9CF) + 513912902) ^ ((v83 ^ 0x75FFEF7F) - 1194162442);
  v85 = ((v84 ^ 0xBA88BE8F) - 263849170) ^ ((v84 ^ 0x2D748A32) + 1740230545) ^ ((v84 ^ 0xA52EA2C8) - 270276757);
  v86 = (v72 ^ v69 ^ ((v69 ^ 0x46DE35B5) - 428728848) ^ ((v69 ^ 0xD8B981D) - 1389907896) ^ ((v69 ^ 0xEBEB85F2) + 1262988713) ^ ((v69 ^ 0xFFEDFFFF) + 1598150566) ^ 0x4CBAF2AC) + 129;
  v87 = ((v86 % 0x81) ^ 0x1676EEAFB4ABB4FFLL) + 2 * (v86 % 0x81);
  v88 = v87 - 0x1676EEAFB4ABB57CLL;
  v89 = (STACK[0x218] + 4 * v87 - 0x59DBBABED2AED3FCLL);
  if (v88 < 0xFFFFFFFFFFFFFF83)
  {
    v89 = (STACK[0x220] + 4 * v88);
  }

  *(v78 + 4 * v71) = v85 - (((*v89 ^ 0x42D157E8) - 1121015784) ^ ((*v89 ^ 0xD6FB38A5) + 688179035) ^ ((*v89 ^ 0xA1BA131C) + 1581640932)) - 814848265;
  return (*(STACK[0x228] + 8 * (v70 ^ (26 * (v76 == 31)))))();
}

uint64_t sub_1003D5AC0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return (*(v2 + 8 * ((v1 - 1445511491) & 0x5628BF70)))();
}

uint64_t sub_1003D5B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a5 - 8546;
  v7 = (*(v5 + 8 * (a5 ^ 0x7FEB)))(266);
  v8 = STACK[0x358];
  STACK[0x410] = v7;
  return (*(v8 + 8 * ((2032 * (v7 == 0)) ^ v6)))();
}

uint64_t sub_1003D5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x274]) = v4;
  v6 = (*(a4 + 8 * (v5 ^ 0x7FEB)))(262);
  v7 = STACK[0x358];
  STACK[0x3F0] = v6;
  return (*(v7 + 8 * (((16 * (v6 != 0)) | ((v6 != 0) << 6)) ^ (v5 - 603))))();
}

uint64_t sub_1003D5E78@<X0>(int a1@<W8>)
{
  v2 = (a1 - 227688461) & 0x62F2F9D7;
  v3 = (*(v1 + 8 * (v2 - 1650460073)))();
  return (*(v1 + 8 * (v2 - 1650471154)))(v3);
}

uint64_t sub_1003D5F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, unsigned int a61)
{
  v65 = *(v61 + 8) + 24 * a61;
  v66 = 297845113 * ((2 * ((v64 - 144) & 0x5324C3FA3E6C6748) - (v64 - 144) - 0x5324C3FA3E6C674ELL) ^ 0x1B809DC0B6A0842CLL);
  *(v64 - 112) = v61;
  *(v64 - 120) = v66 ^ 0x53E1E632;
  *(v64 - 116) = (v63 + 44796) ^ v66;
  *(v64 - 144) = v65;
  *(v64 - 136) = 0;
  *(v64 - 128) = 0x53AC680EDC603FD5 - v66;
  v67 = (*(v62 + 8 * (v63 + 46568)))(v64 - 144);
  return (*(v62 + 8 * v63))(v67);
}

uint64_t sub_1003D6284@<X0>(int a1@<W8>)
{
  v2 = *(&STACK[0x258] + ((a1 ^ 0xF8) + v1) % 0x28u);
  v3 = *(&STACK[0x258] + (v1 - 8874) % 0x28u);
  v4 = *(&STACK[0x258] + (v1 - 8873) % 0x28u);
  *(STACK[0x200] + 4 * v1 - 0x106B88AB0) = (v2 - ((2 * v2) & 0x1AE) - 1874324265) & 0x48B ^ 0x44DF6FF7 ^ ((((*(&STACK[0x258] + (v1 - 8875) % 0x28u) << 8) ^ 0xFB17E29A) & ~((v3 << 16) | (v4 << 24)) | ((v3 << 16) | (v4 << 24)) & 0x4E80000) ^ 0xBFC889EE) & ((v2 - ((2 * v2) & 0x1AE) - 1874324265) ^ 0x6FB7EB29);
  return (*(STACK[0x228] + 8 * ((21 * (v1 == 1101931435)) ^ a1)))();
}

uint64_t sub_1003D6564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64x2_t *a5, int64x2_t *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24, int64x2_t a25, int64x2_t a26, double a27, double a28, double a29, double a30, double a31, double a32, double a33, double a34, double a35, double a36, double a37, double a38, double a39, double a40, double a41, double a42, double a43, double a44, double a45, double a46, double a47, double a48, double a49, double a50, double a51, double a52, double a53, double a54, double a55, double a56, double a57, double a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = vdupq_n_s64((&a75 ^ 0xE14BEFDBFE1ECAFFLL) + 0x5FFEF7FD6FEF7F9CLL + ((&a75 << (((v67 + 111) & 0xCCu) - 127)) & 0xC297DFB7FC3D95F0));
  *&v71 = (v67 - 471309969) & 0x1C176BCC;
  LODWORD(a58) = LODWORD(v71) ^ 0x33C4;
  return (*(v68 + 8 * v67))(vaddq_s64(v69, xmmword_100F52320), vaddq_s64(v69, xmmword_100F52330), vaddq_s64(v69, xmmword_100F52340), vaddq_s64(v69, xmmword_100F52350), vaddq_s64(v69, a6[54]), vaddq_s64(v69, a5[55]), vaddq_s64(v69, a26), vaddq_s64(v69, a25), a17, a18, a19, a20, a21, a22, a23, a24, *a25.i64, *&a25.i64[1], *a26.i64, *&a26.i64[1], a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, COERCE_DOUBLE(&STACK[0x5D9]), v71);
}

uint64_t sub_1003D66F8@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W8>)
{
  v17 = v16 + 4 * v7;
  *(v17 + v13) = *(v17 + v11) ^ *(a1 + 4 * (*(v17 + v9) & 1)) ^ ((((a6 + v8) ^ v10 ^ *(v17 + v9)) & a3 ^ (v6 & 0x80000000 | a2 & 0x7FFFFFFF) | ((a6 + v8) ^ v10 ^ *(v17 + v9)) & a4) >> 1) ^ a5;
  return (*(v12 + 8 * (((v7 + 1 != v14) * v15) ^ a6)))();
}

uint64_t sub_1003D6880()
{
  v1 = STACK[0x1E68];
  v2 = (*(v0 + 415048))(*(STACK[0x1E68] + 672));
  *(v1 + 672) = 0;
  *(v1 + 680) = -371865839;
  return (*(v0 + 117216))(v2);
}

uint64_t sub_1003D68C8()
{
  if ((v0 - 973349088) <= 0x40)
  {
    v3 = 64;
  }

  else
  {
    v3 = v0 - 973349088;
  }

  return (*(v2 + 8 * (v1 ^ 0x9F0B ^ (70 * ((-((v1 - (v3 - v0 + 973349088) - ((8093 * (v1 ^ 0x1D) - 1481885499) & 0x5853EBEE ^ 0x63EFLL)) ^ (~(v3 - v0 + 973349088) + v1)) | (v1 - (v3 - v0 + 973349088) - ((8093 * (v1 ^ 0x1D) - 1481885499) & 0x5853EBEE ^ 0x63EFuLL))) >> 63)))))();
}

uint64_t sub_1003D6C24(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v12 = LODWORD(STACK[0x360]) + v7;
  v13 = LODWORD(STACK[0x358]) + a1;
  v14 = LODWORD(STACK[0x354]) + v11;
  LODWORD(STACK[0x30C]) = LODWORD(STACK[0x364]) + a6 + ((v6 + 257955743) & 0x709FFFDF) - 1360166390;
  v15 = LODWORD(STACK[0x35C]) + a4;
  v16 = LODWORD(STACK[0x368]) + v9;
  LODWORD(STACK[0x350]) = v10 + v8;
  LODWORD(STACK[0x2D4]) = v12 + 259845544;
  LODWORD(STACK[0x320]) = v13 + 1305239378;
  LODWORD(STACK[0x2C8]) = v14 + 1376689739;
  LODWORD(STACK[0x338]) = v15 - 1089149480;
  LODWORD(STACK[0x32C]) = LODWORD(STACK[0x494]) + 1817607190;
  LODWORD(STACK[0x314]) = v16 + 1040284480;
  v17 = *(STACK[0x6A0] + 8 * v6);
  LODWORD(STACK[0x2CC]) = STACK[0x4AC];
  LODWORD(STACK[0x2E8]) = STACK[0x4A8];
  LODWORD(STACK[0x304]) = STACK[0x4A4];
  LODWORD(STACK[0x310]) = STACK[0x4B4];
  LODWORD(STACK[0x2EC]) = STACK[0x4B0];
  LODWORD(STACK[0x2E0]) = STACK[0x49C];
  LODWORD(STACK[0x344]) = STACK[0x4A0];
  LODWORD(STACK[0x31C]) = STACK[0x498];
  return v17();
}

uint64_t sub_1003D6DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = ((22818 * (v12 ^ 0x18A5)) ^ 0x9AA15975) + v11 < a11 - 1736692573;
  if ((a11 - 1736692573) < 0x9AA1EB31 != v11 > 0x655E14CE)
  {
    v14 = (a11 - 1736692573) < 0x9AA1EB31;
  }

  return (*(v13 + 8 * (((4 * v14) | (8 * v14)) ^ v12)))();
}

uint64_t sub_1003D71B4@<X0>(void *a1@<X8>)
{
  v4 = (v1 - 1986781343) | 0x60414301;
  *a1 = (((*(v2 + 16) ^ 0x4A6D5282AF9BEC0) - 0x4A6D5282AF9BEC0) ^ ((*(v2 + 16) ^ 0x1869F8BC28324C0DLL) - 0x1869F8BC28324C0DLL) ^ (((((213 * (v4 ^ 0xE9D5C702)) ^ 0x63AB) + 0x1CCF2D94EB1DC978) ^ *(v2 + 16)) - 0x1CCF2D94EB1E35DCLL)) + *v2 + 3923101465;
  return (*(v3 + 8 * ((59403 * (((*(v2 + 24) - v4) | (v4 - *(v2 + 24))) >= 0)) ^ (v4 + 371882926))))();
}

uint64_t sub_1003D7320()
{
  v3 = (*(v2 + 8 * (v0 + 48346)))();
  LODWORD(STACK[0x1E8C]) = v1;
  *STACK[0xE30] = STACK[0xC10];
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1003D7860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, unsigned int a62)
{
  (*(v62 + 8 * (v65 ^ 0x4DFF)))((v65 ^ 0x48F82A6u) + v64, &STACK[0x670], a62);
  (*(v62 + 8 * (v65 ^ 0x4C11)))((v65 ^ 0x48F82A6u) + v64);
  STACK[0x768] = v63;
  *(v66 - 208) = v65 + 1112314453 * ((((2 * (v66 - 216)) | 0xBF63A838) - (v66 - 216) + 541993956) ^ 0x30E7FEC5) - 20081;
  v67 = (*(v62 + 8 * (v65 ^ 0x4AE7)))(v66 - 216);
  return (*(v62 + 8 * v65))(v67);
}

uint64_t sub_1003D79E4(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  STACK[0x328] = v11 - 1;
  v17 = ((v10 ^ a3) + a4) ^ v10 ^ ((v10 ^ a5) + a6) ^ ((v10 ^ v12) + v13) ^ (((v9 + a2) ^ v10 ^ a7) + a8);
  *(v8 + v11 - 1) = ((((v17 ^ v16) - 97) ^ ((v17 ^ 0xFC) + 123) ^ ((v17 ^ 0x41) - 56)) + 108) * (v10 - 14) + v10 * v15 - 32;
  return (*(v14 + 8 * ((47103 * (STACK[0x328] == 0)) ^ v9)))();
}

uint64_t sub_1003D7AC4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v59 = (v56 + 1588182291) & 0xA1567ECE;
  v57 = v55 + v59;
  v60 = *(a2 + 8 * ((48150 * (v57 == 0x9545B36DF3F44073)) ^ v56));
  return v60(v57 + 0x6ABA4C920C0BBF8DLL, 44, 2792145378, 2739882705, 822440708, 874969143, 823009732, 875408119, a3, a1, a5, a6, v59, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v60, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1003D7C68()
{
  *(v2 - 140) = 31550 - 353670337 * ((((v2 - 144) | 0xC729D6D8) - ((v2 - 144) & 0xC729D6D8)) ^ 0x73082EE5);
  v3 = (*(v0 + 419624))(v2 - 144);
  return (*(v0 + 8 * ((25 * (*(v2 - 144) == v1)) ^ 0x5801u)))(v3);
}

uint64_t sub_1003D7D38@<X0>(int a1@<W8>)
{
  v10 = *v3;
  v11 = *v2;
  v12 = STACK[0x420];
  v13 = STACK[0x418];
  v14 = (v11 + (v1 + v9));
  v15 = ((*(*STACK[0x418] + (*STACK[0x420] & v5)) ^ v14) & 0x7FFFFFFF) * v7;
  v16 = (v15 ^ HIWORD(v15)) * v7;
  v17 = STACK[0x3F8];
  v18 = STACK[0x400];
  v19 = STACK[0x428];
  *v14 = *(STACK[0x3F8] + (v16 >> 24)) ^ HIBYTE(a1) ^ *((v16 >> 24) + STACK[0x400] + 2) ^ *((v16 >> 24) + STACK[0x428] + 4) ^ v16 ^ (BYTE3(v16) * v6) ^ v4;
  v20 = (v11 + (v1 - 194741834));
  LODWORD(v16) = ((*(*v13 + (*v12 & v5)) ^ v20) & 0x7FFFFFFF) * v7;
  v21 = (v16 ^ WORD1(v16)) * v7;
  *v20 = *(v17 + (v21 >> 24)) ^ BYTE2(a1) ^ *((v21 >> 24) + v18 + 2) ^ *((v21 >> 24) + v19 + 4) ^ v21 ^ (BYTE3(v21) * v6) ^ 0xB0;
  v22 = (v11 + (v1 - 194741833));
  LODWORD(v21) = ((*(*v13 + (*v12 & v5)) ^ v22) & 0x7FFFFFFF) * v7;
  v23 = (v21 ^ WORD1(v21)) * v7;
  *v22 = *(v17 + (v23 >> 24)) ^ BYTE1(a1) ^ *((v23 >> 24) + v18 + 2) ^ *((v23 >> 24) + v19 + 4) ^ v23 ^ (BYTE3(v23) * v6) ^ 0x7E;
  v24 = (v11 + (v1 - 194741832));
  LODWORD(v11) = ((*(*v13 + (*v12 & v5)) ^ v24) & 0x7FFFFFFF) * v7;
  v25 = (v11 ^ WORD1(v11)) * v7;
  *v24 = a1 ^ *(v17 + (v25 >> 24)) ^ *((v25 >> 24) + v18 + 2) ^ *((v25 >> 24) + v19 + 4) ^ v25 ^ (BYTE3(v25) * v6) ^ v8;
  return v10();
}

uint64_t sub_1003D7F08@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v66 = v65[396] ^ ((*v65 & 0x7FFFFFFE | v65[623] & 0x80000000) >> 1);
  v65[623] = (6 * (a3 ^ 0x8B8A) + v66 - (a2 & (2 * v66)) + 1606136475) ^ *(a1 + 4 * (*v65 & 1));
  return (*(v64 + 8 * ((8870 * (a64 > 0x26F)) ^ a3)))();
}

uint64_t sub_1003D7F88@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v17 = (v11 * v7) ^ a5;
  if ((v17 & v8) != 0)
  {
    v18 = v10;
  }

  else
  {
    v18 = v8;
  }

  *(a1 + 4 * (v11 * v7)) = v15 ^ a6 ^ a2 ^ *(*(&off_1010A0B50 + v12) + ((v18 + v17) ^ v9) + v13);
  return (*(v16 + 8 * (((v14 + v11 == a3) * a4) ^ a7)))();
}

uint64_t sub_1003D8120()
{
  v1 = STACK[0x358];
  v2 = (*(STACK[0x358] + 8 * (v0 + 35869)))(1028);
  STACK[0x460] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 1893300424) & 0x8F26FDFF ^ (v0 - 1032487114) & 0x3D8A673B ^ 0x9066)) ^ v0)))();
}

uint64_t sub_1003D81A0(int8x16_t a1, int8x16_t a2, double a3, double a4, int8x16_t a5, int8x16_t a6, int32x4_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a2.i64[0] = *(v18 + 4);
  a2.i32[2] = *(v18 + 12);
  v20 = vextq_s8(a1, a2, 0xCuLL);
  a2.i32[3] = *(v17 + 16);
  v21 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a2, a5), vandq_s8(v20, v19)), 1uLL), *(v18 - 908));
  v22.i32[0] = *(a14 + 4 * (*(v18 + 4) & 1));
  v22.i32[1] = *(a14 + 4 * (a2.i32[1] & v15));
  v22.i32[2] = *(a14 + 4 * (a2.i8[8] & 1));
  v22.i32[3] = *(a14 + 4 * (a2.i8[12] & 1));
  *v18 = veorq_s8(vaddq_s32(vsubq_s32(v21, vandq_s8(vaddq_s32(v21, v21), a6)), a7), v22);
  return (*(STACK[0x430] + 8 * (((v16 != 0) * a9) ^ v14)))(a2);
}

uint64_t sub_1003D82A8()
{
  STACK[0xA458] = STACK[0x7650] + 712;
  v1 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 15011) | 0x8680) - 43635) ^ v0)))();
}

uint64_t sub_1003D834C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v31 = 193924789 * ((2 * ((v30 - 136) & 0xC1F26B8) - (v30 - 136) + 1944115525) ^ 0xC55BEB23);
  *(v30 - 120) = 1531353906 - v31;
  *(v30 - 132) = v29 - v31 - 25939;
  v32 = *(a1 + 8 * (v29 - 43453)) - 1197654894;
  *(v30 - 112) = v27;
  *(v30 - 104) = v32;
  *(v30 - 128) = &a27;
  v33 = (*(v28 + 8 * (v29 + 6542)))(v30 - 136);
  return (*(v28 + 8 * (v29 - 37773)))(v33);
}

uint64_t sub_1003D8408(uint64_t a1, uint64_t a2)
{
  STACK[0x380] = v2;
  STACK[0x6A8] = &STACK[0xBC0];
  return (*(STACK[0x6A0] + 8 * v3))(a1, a2, 796669, ((v3 - 164523011) & 0x9CE3F5Cu) - 7999, 965, 61);
}

uint64_t sub_1003D8478@<X0>(uint64_t a1@<X8>)
{
  v9 = (v6 + 136);
  if (!v6)
  {
    v9 = v1;
  }

  *v9 = v2;
  *(a1 + 136) = 0;
  v10 = STACK[0x740];
  *(v8 - 256) = a1;
  *(v8 - 248) = v10;
  *(v8 - 240) = v5 + 906386353 * (v4 ^ 0x3101CD24) + 1884336863;
  v11 = (*(v7 + 8 * (v5 + 21855)))(v8 - 256);
  v12 = (((*(v3 + 8) ^ 0x5E0262F5) - 1577214709) ^ ((*(v3 + 8) ^ 0x9EBAAF8B) + 1631932533) ^ ((*(v3 + 8) ^ 0x296D0A6F) - 695011951)) + ((v5 - 14637) ^ 0x4B66DD5A);
  *(v3 + 8) = v12 ^ ((v12 ^ 0x516C9026) - 821922095) ^ ((v12 ^ 0x51FC26A) - 1687083875) ^ ((v12 ^ 0x421FB4AA) - 596553123) ^ ((v12 ^ 0x77FDFFEF) - 376235750) ^ 0x8844DE18;
  return (*(v7 + 8 * v5))(v11);
}

uint64_t sub_1003D8624@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v18 = (((((a1 >> v8) | a6) ^ a1 ^ a7) + v14) ^ ((((a1 >> v8) | a6) ^ a1 ^ v15) + v16) ^ ((((a1 >> v8) | a6) ^ a1 ^ v11) + a2)) * a3;
  *(v17 + 4 * a8) = a8 + a5 + v18;
  return (*(v13 + 8 * (((a8 < 0x26F) * v10) ^ v12)))((v9 + a4 + v18));
}

uint64_t sub_1003D8708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = 1112314453 * ((((v31 - 128) | 0x8B25DF87) - (v31 - 128) + ((v31 - 128) & 0x74DA2078)) ^ 0x6473F55E);
  *(v31 - 128) = v32 + v30 + 8567;
  *(v31 - 112) = v32 + (((((v30 ^ 0x2D7B) + 1668697188) ^ a13) - 1668707516) ^ ((a13 ^ 0xCAA403EB) + 895220757) ^ ((a13 ^ (v30 - 957102417) & 0xB93CFC7F ^ 0xC0377814) - 1074245702)) + 268615998;
  *(v31 - 120) = &a20;
  v33 = (*(v29 + 8 * (v30 ^ 0xCE45)))(v31 - 128);
  v34 = ((a29 & 0x3F ^ 0xD223C087) - 1784178529) ^ ((a29 & 0x3F ^ 0x1D9EF701) + 1511698201) ^ ((a29 & 0x3F ^ 0xCFBD3786) - 2009501792);
  *(&a20 + v34 - 1199855642) = -33;
  return (*(v29 + 8 * ((38204 * (v34 - 1199855698 < 0xFFFFFFC8)) ^ v30)))(v33);
}

uint64_t sub_1003D88B4@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 - 16433;
  v6 = (v1 ^ 0xFFFFFFFFFFFF7059 ^ (v5 - 258494197) & 0xF68AFEE) + a1;
  v8 = v6 <= (v5 + 12554) + 4294942793u && 1338165231 - v2 >= v6;
  return (*(v4 + 8 * (v8 ^ v5)))();
}

uint64_t sub_1003D8924@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, _BYTE *a9@<X8>)
{
  a9[15] = v17;
  a9[14] = v16;
  a9[13] = v15;
  a9[12] = a8;
  a9[11] = a6;
  a9[10] = a5;
  a9[9] = a4;
  a9[8] = a3;
  a9[7] = a2;
  a9[6] = a1;
  a9[5] = a7;
  a9[4] = v14;
  a9[3] = v13;
  a9[2] = v12;
  a9[1] = v11;
  *a9 = v10;
  return (*(v18 + 8 * v9))();
}

uint64_t sub_1003D899C@<X0>(unsigned int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, _DWORD *a6@<X7>, uint64_t a7@<X8>)
{
  v13 = ((*(*v12 + (*a6 & a1)) ^ v8) & 0x7FFFFFFF) * a5;
  v14 = (v13 ^ HIWORD(v13)) * a5;
  *(v10 + v7) = *(a4 + (v14 >> 24)) ^ *(a7 + v7) ^ *((v14 >> 24) + a2 + 2) ^ *(a3 + (v14 >> 24)) ^ v14 ^ (-9 * BYTE3(v14));
  return (*(v11 + 8 * ((v7 != 0) | v9)))();
}

uint64_t sub_1003D8A18(unint64_t a1)
{
  STACK[0x230] = 0;
  v3 = *(STACK[0x430] + 8 * (v1 - 10185));
  STACK[0x260] = a1;
  STACK[0x258] = a1;
  STACK[0x368] = a1;
  STACK[0x340] = v2;
  return v3();
}

uint64_t sub_1003D8DC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unint64_t a38, uint64_t a39, unint64_t a40, unint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44, unint64_t a45, unint64_t a46, unint64_t a47)
{
  STACK[0x4D8] = STACK[0x380];
  STACK[0x488] = STACK[0x2E8];
  STACK[0x5C8] = STACK[0x2D8];
  STACK[0x610] = a41;
  STACK[0x5A8] = a46;
  STACK[0x510] = a47;
  STACK[0x458] = a40;
  STACK[0x4F0] = a45;
  STACK[0x478] = a44;
  STACK[0x428] = a38;
  STACK[0x5B0] = 0;
  STACK[0x620] = v48;
  STACK[0x538] = a1;
  STACK[0x568] = a1;
  STACK[0x450] = a1;
  v50 = (*(v49 + 8 * (v47 + 45855)))();
  return (*(v49 + 8 * v47))(v50);
}

uint64_t sub_1003D8E98@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v11 = (a5 + v5 + a1 + v9);
  *v11 = v10;
  v11[1] = v10;
  return (*(a4 + 8 * ((((v8 ^ a2) + v5 == v7) * a3) | v6)))();
}

uint64_t sub_1003D8ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t))
{
  v23 = 1112314453 * ((v22 - 152 - 2 * ((v22 - 152) & 0x64A1A090) - 459169646) ^ 0xBF78A4B);
  *(v22 - 136) = v23 + (a6 ^ 0xEFFDFF2D) + ((2 * a6) & 0x1A) + 909048576;
  *(v22 - 144) = a4;
  *(v22 - 152) = v23 + v21 - 61361011;
  v24 = (*(a8 + 8 * (v21 ^ 0x3A8B96B)))(v22 - 152);
  return a21(v24);
}

uint64_t sub_1003D90DC()
{
  v1 = *(STACK[0xE80] + 8);
  STACK[0x1AA8] = STACK[0xE80] + 8;
  STACK[0x8F8] = v1;
  STACK[0x10C0] = &STACK[0x1A84];
  LODWORD(STACK[0xD50]) = -1102842941;
  return (*(v0 + 124800))();
}

void *sub_1003D91C4@<X0>(char *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, __int128 a40)
{
  v42 = *a1;
  v43 = *(a1 + 1);
  v44 = *(a1 + 9);
  v45 = *(a1 + 13);
  v46 = a1[15];
  LOBYTE(a40) = v42;
  *(&a40 + 1) = v43;
  *(&a40 + 9) = v44;
  *(&a40 + 13) = v45;
  HIBYTE(a40) = v46;
  return (*(v41 + 8 * v40))(&a40);
}

uint64_t sub_1003D921C()
{
  v9 = *(v4 + 4 * v0);
  v10 = *(v3 + 4 * v0);
  v11 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(v10, v9), vaddq_s32(veorq_s8(v10, v5), v6)), veorq_s8(vaddq_s32(veorq_s8(v10, v8), vdupq_n_s32(0x5FFAE04Eu)), vaddq_s32(veorq_s8(v10, vdupq_n_s32(0x251EFD28u)), vdupq_n_s32(0xCCD14E97)))), vaddq_s32(veorq_s8(v10, vdupq_n_s32(0x3FFEFFEFu)), vdupq_n_s32(0xD6314C52)));
  v12 = vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v11, vdupq_n_s32(0xA53F49DE)), vdupq_n_s32(0x55996A54u)), vaddq_s32(veorq_s8(v11, vdupq_n_s32(0xF0689347)), vdupq_n_s32(0xCEB0CBu))), vaddq_s32(veorq_s8(v11, vdupq_n_s32(0x436796D8u)), vdupq_n_s32(0xB3C1B556))), vdupq_n_s32(0x2F99DC74u));
  v13.i64[0] = 0x8400000084;
  v13.i64[1] = 0x8400000084;
  v14 = veorq_s8(v12, vdupq_n_s32(0x1FA0C00Bu));
  v15 = vandq_s8(v12, v7);
  v16 = veorq_s8(vandq_s8(vaddq_s32(v15, v15), veorq_s8(v12, vdupq_n_s32(0xCDAFA33F))), v15);
  v17 = vaddq_s32(v14, v14);
  v18 = vdupq_n_s32(0xF66F73B4);
  v19 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(vaddq_s32(vsubq_s32(v9, vandq_s8(vaddq_s32(v9, v9), vdupq_n_s32(0xB63DF234))), vdupq_n_s32(0xDB1EF91A)), v12), vaddq_s32(veorq_s8(v12, vdupq_n_s32(0x48C3C2E3u)), vdupq_n_s32(0xA10C715E))), veorq_s8(vaddq_s32(veorq_s8(v12, vdupq_n_s32(0xA1F81C35)), vdupq_n_s32(0x4837AF8Cu)), vaddq_s32(veorq_s8(v12, vdupq_n_s32(0xF46DECu)), vdupq_n_s32(0xE93BDE53)))), veorq_s8(vaddq_s32(veorq_s8(v12, v13), vdupq_n_s32(0x16304CC6u)), vdupq_n_s32(0xCD2EB55B)));
  v20 = veorq_s8(vandq_s8(veorq_s8(v17, vdupq_n_s32(0xECDEE768)), v14), vandq_s8(v17, v18));
  *(v4 + 4 * v0) = v19;
  v21 = veorq_s8(v20, vdupq_n_s32(0x12211094u));
  v22 = veorq_s8(vandq_s8(veorq_s8(v20, vdupq_n_s32(0xF44E4320)), vshlq_n_s32(v16, 2uLL)), v16);
  v23 = vshlq_n_s32(v21, 2uLL);
  v24 = veorq_s8(vandq_s8(veorq_s8(v23, vdupq_n_s32(0xD9BDCED0)), v21), vandq_s8(v23, v18));
  v25 = veorq_s8(v24, vdupq_n_s32(0x26423124u));
  v26 = vshlq_n_s32(v25, 4uLL);
  v27 = veorq_s8(vandq_s8(veorq_s8(v24, vdupq_n_s32(0xD02D4294)), vshlq_n_s32(v22, 4uLL)), v22);
  v28 = veorq_s8(vandq_s8(veorq_s8(v26, vdupq_n_s32(0x66F73B40u)), v25), vandq_s8(v26, vdupq_n_s32(0xF66F73B0)));
  v29 = veorq_s8(v28, vdupq_n_s32(0x900840B4));
  v30 = veorq_s8(veorq_s8(v27, v18), vandq_s8(veorq_s8(v28, vdupq_n_s32(0x666733B4u)), vshlq_n_s32(v27, 8uLL)));
  v31 = vshlq_n_s32(v29, 8uLL);
  v32 = veorq_s8(veorq_s8(vandq_s8(v31, vdupq_n_s32(0xF66F0000)), vdupq_n_s32(0x100C0000u)), vandq_s8(veorq_s8(v31, vdupq_n_s32(0x6F730000u)), v29));
  v33 = vshlq_n_s32(v30, 0x10uLL);
  v34 = veorq_s8(veorq_s8(vandq_s8(v33, vdupq_n_s32(0x766F0000u)), v30), vandq_s8(veorq_s8(v33, vdupq_n_s32(0x73B40000u)), v32));
  v35 = veorq_s8(veorq_s8(v19, v12), vaddq_s32(v34, v34));
  *(v3 + 4 * v0) = vaddq_s32(veorq_s8(veorq_s8(vaddq_s32(veorq_s8(v35, vdupq_n_s32(0x73C4A6E3u)), vdupq_n_s32(0xA7264974)), vaddq_s32(veorq_s8(v35, vdupq_n_s32(0xA41003C4)), vdupq_n_s32(0x70F2EC55u))), vaddq_s32(veorq_s8(v35, vdupq_n_s32(0x368DF1F0u)), vdupq_n_s32(0xE26F1E61))), vdupq_n_s32(0xE07490F9));
  return (*(v2 + 8 * ((8 * (((v0 == 28) ^ (v1 + 17)) & 1)) & 0x7F | ((((v0 == 28) ^ (v1 - 7663)) & 1) << 7) | v1)))();
}

uint64_t sub_1003D97B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = LODWORD(STACK[0x3FC]) - 3384;
  STACK[0x5F8] = a65;
  STACK[0x538] = 0;
  return (*(v65 + 8 * v66))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1003D97F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, unsigned __int8 a18)
{
  v21 = (v19 ^ 0xB0DFF86F) & (2 * (v19 & 0x3ADFFC88)) ^ v19 & 0x3ADFFC88;
  v22 = ((2 * (v19 ^ 0xC0E6086F)) ^ (v18 - 840251570) ^ (v18 - 36439) ^ 0x39989C33) & (v19 ^ 0xC0E6086F) ^ (2 * (v19 ^ 0xC0E6086F)) & 0xFA39F4E6;
  v23 = v22 ^ 0xA081421;
  v24 = (v22 ^ 0xF031E040) & (4 * v21) ^ v21;
  v25 = ((4 * v23) ^ 0xE8E7D39C) & v23 ^ (4 * v23) & 0xFA39F4E4;
  v26 = (v25 ^ 0xE821D080) & (16 * v24) ^ v24;
  v27 = ((16 * (v25 ^ 0x12182463)) ^ 0xA39F4E70) & (v25 ^ 0x12182463) ^ (16 * (v25 ^ 0x12182463)) & 0xFA39F4E0;
  v28 = v19 ^ (2 * ((((v27 ^ 0x5820B087) << 8) & 0x7A390000 ^ 0x38300000 ^ (((v27 ^ 0x5820B087) << 8) ^ 0x39F40000) & (v27 ^ 0x5820B087)) & (((v27 ^ 0xA2194400) & (v26 << 8) ^ v26) << 16) ^ (v27 ^ 0xA2194400) & (v26 << 8) ^ v26));
  v29 = ((v28 ^ 0xDA69BDC5) + 233238602) ^ ((v28 ^ 0xFADD6D35) + 760357050) ^ ((v28 ^ 0x1A6B2C78) - 840670731);
  v30 = v29 + a18 % (-313478931 - v29);
  v32 = v19 == 0x3CE25E0EC520035FLL || v30 == -313478931;
  return (*(v20 + 8 * ((8 * v32) | (32 * v32) | v18)))();
}

uint64_t sub_1003D9AEC()
{
  v1 = LODWORD(STACK[0x8BC]) + 8;
  LODWORD(STACK[0x22AC]) = v1;
  LODWORD(STACK[0x8BC]) = v1;
  STACK[0x22B0] = STACK[0x1A48];
  LODWORD(STACK[0x22BC]) = STACK[0x151C];
  return (*(v0 + 82656))(272927381, 1098911744, 3615948874, 679014059, 586117158, 3708850138, 3669497116, 2174637684);
}

uint64_t sub_1003D9BCC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x2C4]) = a1;
  v4 = STACK[0x438];
  v5 = (*(v2 + 8 * (v1 + 32103)))(STACK[0x438] + 16, 0);
  v6 = STACK[0x2A8];
  v6[2] = *(v4 + 16) - ((((v1 - 16710) | 0x6080) + 1406753109) & (2 * *(v4 + 16))) + 703390482;
  v6[1] = *(v4 + 24) - ((2 * *(v4 + 24)) & 0x53D9C624) + 703390482;
  v7 = (*(v2 + 8 * (v1 + 32046)))(v5);
  v6[3] = v7 - ((2 * v7) & 0x53D9C624) + 703390482;
  v8 = (*(v2 + 8 * (v1 + 32046)))();
  *v6 = v8 - ((2 * v8) & 0x53D9C624) + 703390482;
  LODWORD(STACK[0x250]) = v3 - ((2 * v3) & 0x63BEEA5E) + 836728111;
  return (*(v2 + 8 * v1))();
}

uint64_t sub_1003D9D04@<X0>(char a1@<W1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, char a6@<W6>, char a7@<W7>, uint64_t a8@<X8>)
{
  v24 = a8 - 1;
  v25 = ((v9 ^ v10) + v11) ^ v9 ^ ((v9 ^ v12) + v13) ^ ((v9 ^ v14) + v15) ^ ((v9 ^ a1) + a2);
  *(v22 + v24) = ((((v25 ^ a4) + a5) ^ ((v25 ^ a6) + a7) ^ ((v25 ^ v16) + v18)) + v19) * (v9 + v20) + v9 * a3 + v21;
  return (*(v17 + 8 * (((v24 == 0) * v23) ^ v8)))(0);
}

uint64_t sub_1003D9EAC()
{
  v1 = STACK[0x358];
  v2 = (*(STACK[0x358] + 8 * (v0 + 42003)))(1032);
  STACK[0x3A0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 + 36542) ^ 0xB558)) ^ v0)))();
}

uint64_t sub_1003D9F00(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8)
{
  v13 = (a6 ^ v8 ^ (16 * a6) ^ 0x53E60u ^ 0xFFFFFFFF8AEEF425) + a4;
  v14 = -771517617 * (*(v10 + 4 * v13) ^ v12);
  *(v10 + 4 * v13) = v14;
  *(v10 + 4 * v13) = ((*(STACK[0x218] + 4 * (*(v11 + 4 * a8) % 0x101u)) - 932433617) * (a2 - 608475310 * a4 + 1072340479)) ^ v14;
  return (*(STACK[0x228] + 8 * (a6 ^ ((v9 == 20) * v8))))();
}

uint64_t sub_1003DA030(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *v7 = a4;
  *v6 = (*(v4 + 8 * (v5 + 50590)))();
  return (*(v4 + 8 * (v5 + 29513)))();
}

uint64_t sub_1003DA098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54)
{
  v57 = v56[623];
  if (v55 - (a54 - 694) >= ~(a54 - 694))
  {
    ++v57;
  }

  *v56 = v57;
  return (*(v54 + 8 * ((a54 - 694) ^ 0xA43A)))();
}

uint64_t sub_1003DA210(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24)
{
  v40 = *(*(v34 + 8) + 4 * (v24 + v39));
  v41 = (*(v30 + 4 * (v24 + v39)) ^ 0x36DFEE05) + (HIDWORD(a5) ^ 0xF4B750B2) + ((((v40 ^ v26) + a1) ^ (((v28 + v38) | v35) + a4 + (v40 ^ a3)) ^ ((v40 ^ a6) + a7)) + 920645125) * v29;
  *(v30 + 4 * (v24 + v31)) = (v41 - (v33 & (2 * v41)) + v36) ^ a8;
  v42 = v24 + v25 < a2;
  if (a23 > v37 != v24 + v25 < v27)
  {
    v42 = a23 > v37;
  }

  return (*(a24 + 8 * ((!v42 * v32) ^ v28)))();
}

uint64_t sub_1003DA5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = (((*(v8 + v9) ^ 0x65) - 101) ^ ((*(v8 + v9) ^ 0x20) - 32) ^ (((((a8 + 36) | 0x88) + 107) ^ *(v8 + v9)) - 26)) - 119;
  v12 = v11 & 0x23 ^ 0x2E;
  *(v8 + v9) = v11 ^ (2 * ((v11 ^ 0x56) & (2 * ((v11 ^ 0x56) & (2 * ((v11 ^ 0x56) & (2 * ((v11 ^ 0x56) & (2 * ((v11 ^ 0x56) & (2 * ((v11 ^ 0x56) & (2 * v11) & 0x2E ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ 0x7C;
  return (*(v10 + 8 * a8))();
}

uint64_t sub_1003DA678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = ((24686 * (v39 ^ 0x3233)) ^ (v39 + 655115188) & 0xD8F38F3F ^ 0x8C26D045A1CF4EB2) + (((v40 ^ 0x33D9B2B0F0D68B3FLL) + 0x3FFF62F561B996DDLL) ^ ((v40 ^ 0x46985BBE11D97466) + 0x4ABE8BFB80B66986) ^ ((v40 ^ 0xABE16F11EF000A6) + 0x698C6B48F9F1D46));
  v43 = v42 < 0x8000000010606D68;
  v44 = a39 < v42;
  if (a39 < 0x8000000010606D68 != v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v44;
  }

  return (*(v41 + 8 * ((20227 * v45) ^ v39)))();
}

uint64_t sub_1003DA834(uint64_t a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v82 = v69 - 129 * (((v69 * v78) >> 32) >> 3);
  v83 = ((2 * v82) & 0x1F2) + (v82 ^ 0xE7FFCFF777E76CF9);
  v84 = v83 + a64;
  v85 = (v73 + 4 * (v83 + a64));
  v86 = (a8 + 4 * v83 + 0x6000C02220624C1CLL);
  if (v84 < 0xFFFFFFFFFFFFFF83)
  {
    v86 = v85;
  }

  v87 = a4 ^ ((a4 ^ 0xC9E1007) - 541520495) ^ ((a4 ^ 0x324F819D) - 513238005) ^ ((a4 ^ 0xEDE2AC0C) + 1053143452) ^ ((a4 ^ 0xFFEBDFFE) + 751616618) ^ 0x7DA8F0C7;
  v88 = (((v87 ^ 0xE890CA87BF6F3B32) + 0x176F35784090C4CELL) ^ ((v87 ^ 0x7E52B8A0CC96AF4ALL) - 0x7E52B8A0CC96AF4ALL) ^ ((v87 ^ 0x96C27227228986D7) + 0x693D8DD8DD767929)) * v68 - 0x6E7126C3E2BF30ABLL;
  v89 = (v88 ^ 0x2D08F23ECE3C2872) & (2 * (v88 & 0x4D0CFA3E8E3E8C64)) ^ v88 & 0x4D0CFA3E8E3E8C64;
  v90 = ((*v86 ^ 0x9C675F5F) + 1670946977) ^ ((*v86 ^ 0x66913C94) - 1720794260) ^ ((*v86 ^ 0xCF661F9A) + 815390822);
  v91 = ((2 * (v88 ^ 0x3711A267D231387ALL)) ^ 0xF43AB0B2B81F683CLL) & (v88 ^ 0x3711A267D231387ALL) ^ (2 * (v88 ^ 0x3711A267D231387ALL)) & 0x7A1D58595C0FB41ELL;
  v92 = ((4 * (v91 ^ 0xA05484944009402)) ^ 0xE8756165703ED078) & (v91 ^ 0xA05484944009402) ^ (4 * (v91 ^ 0xA05484944009402)) & 0x7A1D58595C0FB418;
  v93 = (v92 ^ 0x68154041500E9000) & (16 * ((v91 ^ 0x70101010180E2010) & (4 * v89) ^ v89)) ^ (v91 ^ 0x70101010180E2010) & (4 * v89) ^ v89;
  v94 = ((16 * (v92 ^ 0x120818180C012406)) ^ 0xA1D58595C0FB41E0) & (v92 ^ 0x120818180C012406) ^ (16 * (v92 ^ 0x120818180C012406)) & v81;
  v95 = (v94 ^ 0x20150011400B0000) & (v93 << 8) ^ v93;
  v96 = (((v94 ^ 0x5A0858481C04B41ELL) << 8) ^ 0x1D58595C0FB41E00) & (v94 ^ 0x5A0858481C04B41ELL) ^ ((v94 ^ 0x5A0858481C04B41ELL) << 8) & v81;
  v97 = v95 ^ 0x7A1D58595C0FB41ELL ^ (v96 ^ 0x181858580C040000) & (v95 << 16);
  v98 = v88 ^ (2 * ((v97 << 32) & 0x7A1D585900000000 ^ v97 ^ ((v97 << 32) ^ 0x5C0FB41E00000000) & (((v96 ^ 0x62050001500BA01ELL) << 16) & 0x7A1D585900000000 ^ 0x2204005000000000 ^ (((v96 ^ 0x62050001500BA01ELL) << 16) ^ 0x58595C0F00000000) & (v96 ^ 0x62050001500BA01ELL))));
  v99 = ((v98 ^ 0x6F2D1D8C11958FBDLL) - 0x78515EC77F1F9EELL) ^ ((v98 ^ 0x335A8486C03D4EE2) - 0x5BF28CE6A65938B1);
  v100 = __CFADD__((v99 ^ ((v98 ^ 0x555BF3B6E7892507) - 0x3DF3FBD681ED5354)) * v80, 0xC2E4E1CB36401EFDLL) + (((v99 ^ ((v98 ^ 0x555BF3B6E7892507uLL) - 0x3DF3FBD681ED5354)) * v80) >> 64) + ((v74 + __CFADD__(v98 ^ 0x6F2D1D8C11958FBDLL, 0xF87AEA13880E0612)) ^ (v74 + __CFADD__(v98 ^ 0x335A8486C03D4EE2, 0xA40D731959A6C74FLL)) ^ (v74 + __CFADD__(v98 ^ 0x555BF3B6E7892507, 0xC20C04297E12ACACLL))) * v80 + 1698849886;
  v101 = 1698849904 - v100 - ((((1698849904 - v100) * v77) >> 32) >> 4) * v80;
  v102 = ((2 * v101) & 0x2E) + (v101 ^ 0x67FDF2F6BDAADF97);
  v103 = v102 - 0x67FDF2F6BDAADF9ALL;
  v104 = (v72 + 4 * v102 + 0x60083425095481A4);
  if (v103 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v104 = (v75 + 4 * v103);
  }

  v105 = *v104;
  v106 = v100 - 1698849855 - ((((v100 - 1698849855) * v77) >> 32) >> 4) * v80;
  v107 = ((2 * v106) & 0x2A) + (v106 ^ 0x2F97EF5FFF5F7A95);
  v108 = v107 - 0x2F97EF5FFF5F7A98;
  v109 = (v72 + 4 * v107 + 0x41A04280028215ACLL);
  v110 = __CFADD__(v108, 3);
  v111 = (v75 + 4 * v108);
  if (!v110)
  {
    v109 = v111;
  }

  v112 = ((v105 ^ 0x61D402C4) - 1641284292) ^ ((v105 ^ 0x72839B6E) - 1921227630) ^ ((v105 ^ 0x6B7B2245) - 1803231813);
  v113 = *v109 & 0x1F ^ 0xFLL;
  v114 = *(v76 + 4 * v113) + 275374348 * v112 + (v79 + v66 * (v90 + 78207113)) * (-2016197615 - v112);
  v115 = v70 - 129 * (((v70 * v78) >> 32) >> 3);
  v116 = ((2 * v115) & 0x1EE) + (v115 ^ 0x7DCD7FF9FF7EF1F7);
  *(v76 + 4 * v113) = v114 - 129180108;
  v117 = (a8 + 4 * v116 + 0x8CA001802043824);
  if ((v116 - 0x7DCD7FF9FF7EF274) < 0xFFFFFFFFFFFFFF83)
  {
    v117 = (v73 + 4 * (v116 - 0x7DCD7FF9FF7EF274));
  }

  v118 = ((v67 ^ a5 ^ ((v67 ^ 0xF9) + 14)) ^ (((v67 ^ 0x1C) + 9) ^ ((v67 ^ 0xF1) + 6))) & 0x1F ^ 0xB;
  *(a7 + 4 * v118) += a3 + v71 * ((((*v117 ^ 0x194A8E79) - 424316537) ^ ((*v117 ^ 0xD0927D15) + 795706091) ^ ((*v117 ^ 0xFC488F3D) + 62353603)) - 76828983);
  return (*(STACK[0x228] + 8 * ((29274 * (v66 == 31)) ^ a66)))();
}

uint64_t sub_1003DB1A4()
{
  v3 = STACK[0xEB0];
  v4 = 634647737 * (((v0 | 0xA66BDB93) - v0 + (v0 & 0x59942468)) ^ 0xCBFDF46F);
  *(v2 - 240) = 20983 - v4;
  *(v2 - 256) = v4 - 1431125376;
  *(v2 - 248) = v3;
  v5 = (*(v1 + 415752))(v2 - 256);
  STACK[0x2038] = *(v1 + 35528);
  return (*(v1 + 60184))(v5);
}

uint64_t sub_1003DB500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = ((v63 ^ 0xC0) - 47) ^ v63 ^ (v64 + (v63 ^ 0xE5) + 105) ^ ((v63 ^ 0x3D) + 46) ^ ((v63 ^ 0xF7) - 24);
  *(v66 + v65 - 1) = ((((v67 ^ 0x67) + 1) ^ ((v67 ^ 0xD5) - 77) ^ ((v67 ^ 0xE7) - 127)) - 12) * (v63 + 34) - 39 * v63 - 46;
  return (*(a63 + 8 * ((38 * (v65 != 1)) ^ v64)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, v66, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1003DB6B4()
{
  v2 = v0 - 1650486319;
  v3 = (*(v1 + 8 * (v0 - 1650460073)))();
  return (*(v1 + 8 * v2))(v3);
}

uint64_t sub_1003DB7C0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v11 = (a3 + v5 + v4 + v9);
  *v11 = a4;
  v11[1] = a4;
  return (*(v10 + 8 * (((v5 + a1 + v7 == v6) * a2) ^ v8)))();
}

uint64_t sub_1003DBD2C()
{
  *(v2 - 144) = &STACK[0x770];
  *(v2 - 152) = v0 + 193924789 * ((((2 * ((v2 - 152) ^ 0xB7E48102)) | 0xA7D29DB6) - ((v2 - 152) ^ 0xB7E48102) + 739684645) ^ 0xD2B6FDBF) - 24409;
  v3 = (*(v1 + 8 * (v0 + 24202)))(v2 - 152);
  return (*(v1 + 8 * (v0 + 13)))(v3);
}

uint64_t sub_1003DBDB4()
{
  v5 = *(STACK[0x410] + 4 * (v2 - 651223090));
  v6 = 1664525 * (((((v5 >> 30) | 0xB1D273A8) ^ v5 ^ 0x6EDBA581) - 1859888513) ^ ((((v5 >> 30) | 0xB1D273A8) ^ v5 ^ 0x6A08EA27) - 1778969127) ^ ((((v5 >> 30) | 0xB1D273A8) ^ v5 ^ 0xB5013C0E) + 1258210290)) + 903649774;
  v7 = (v6 ^ 0xE71231D0) & (2 * (v6 & 0xF750359A)) ^ v6 & 0xF750359A;
  v8 = ((2 * (v6 ^ 0x65125AC0)) ^ 0x2484DEB4) & (v6 ^ 0x65125AC0) ^ (2 * (v6 ^ 0x65125AC0)) & 0x92426F5A;
  v9 = v8 ^ 0x9242214A;
  v10 = (v8 ^ 0x4E10) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0x4909BD68) & v9 ^ (4 * v9) & 0x92426F58;
  v12 = (v11 ^ 0x2D40) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x92424212)) ^ 0x2426F5A0) & (v11 ^ 0x92424212) ^ (16 * (v11 ^ 0x92424212)) & 0x92426F40;
  v14 = v12 ^ 0x92426F5A ^ (v13 ^ 0x26500) & (v12 << 8);
  v15 = v6 ^ *(STACK[0x410] + 4 * (v2 - 651223089)) ^ (2 * ((v14 << 16) & 0x12420000 ^ v14 ^ ((v14 << 16) ^ 0x6F5A0000) & (((v13 ^ 0x92400A5A) << 8) & 0x12420000 ^ (((v13 ^ 0x92400A5A) << 8) ^ 0x426F0000) & (v13 ^ 0x92400A5A) ^ 0x10000000)));
  v16 = *(STACK[0x408] + 4 * (v3 - 864632998));
  *(STACK[0x410] + 4 * (v2 - 651223089)) = v3 + (((v16 ^ 0xF63057D0) + v0) ^ ((v16 ^ 0x5D48B7FE) - 1565046782) ^ ((v16 ^ 0x269FFD17) - 648019223)) + 508519640 + (((v15 ^ 0xD9C3365D) + 849193674) ^ ((v15 ^ 0x1855315A) - 217338417) ^ ((v15 ^ 0x16C6EC29) - 40341314));
  v17 = STACK[0x3E0];
  *(v4 - 152) = (v2 - 1190069721) ^ STACK[0x3E0];
  *(v4 - 128) = (v1 - 1890935239) ^ v17;
  *(v4 - 124) = v1 - 1890938624 - v17 - 101;
  *(v4 - 112) = v1 - v17 - 1781259153;
  *(v4 - 144) = (v1 - 1890938624) ^ v17;
  *(v4 - 120) = v17;
  *(v4 - 136) = STACK[0x3D8];
  v18 = v1 + 29577;
  v19 = STACK[0x430];
  v20 = (*(STACK[0x430] + 8 * v18))(v4 - 152);
  return (*(v19 + 8 * *(v4 - 116)))(v20);
}

uint64_t sub_1003DC0E0()
{
  v1 = (*(v0 + 415048))(STACK[0xE50]);
  STACK[0xE50] = 0;
  return (*(v0 + 272872))(v1);
}

uint64_t sub_1003DC1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  LODWORD(STACK[0xE1C]) = 1497668682;
  v10 = STACK[0x9D8] == 0x217E172EFA1E81CLL || STACK[0x10B0] == ((a8 - 1773220059) & 0x69B1BBFF) - 43741;
  return (*(v8 + 8 * ((108 * v10) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, STACK[0x800]);
}

uint64_t sub_1003DC2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, int a63)
{
  *(v79 + 4 * (a7 & 0x1F)) = v72;
  v82 = (v74 ^ (v73 + 5262) ^ 0xFF6FDF4FFD7FC669) + ((2 * v74) & 0x1CLL);
  v83 = v82 + (v73 ^ 0x9020B0028014F6);
  v84 = *(&off_1010A0B50 + (v73 ^ 0x94EE)) + 4 * v82 + 0x24082BFD3D72039;
  if (v83 < 0xFFFFFFFFFFFFFFFDLL)
  {
    v84 = *(&off_1010A0B50 + (v73 ^ 0x8DA9)) + 4 * v83 - 811080462;
  }

  v85 = v72 + 1379121645 + ((32737052 * (v72 + *(a72 + 4 * ((a65 + v81) & 0x1F)) - (((*v84 ^ 0x37D348D5) + 137148203) ^ ((*v84 ^ 0x2C5F0226) + 329317850) ^ ((*v84 ^ 0x23A0F11C) - 1671491868))) + 1760676544) ^ 0xEAF7BFC9);
  *(v79 + 4 * (v77 & 0x1F)) = *(v79 + 4 * (v77 & 0x1F)) - 51 * v85 - 873645321;
  v86 = v85 ^ (345209289 * (a63 + v81 + *(v79 + 4 * ((a61 + v81) & 0x1F))) - 378608087) ^ ((v85 ^ 0xB27A955E) + 635530381) ^ ((v85 ^ 0x5DD48A9A) - 900762807) ^ ((v85 ^ 0xE831E256) + 2141854597) ^ ((v85 ^ 0x6FFBFBBF) - 127925650);
  v87 = ((v86 ^ 0xCB4E80E7) - 866712816) ^ ((v86 ^ 0x8E3E705A) - 1993870413) ^ ((v86 ^ 0x2D14F690) + 705525113);
  v88 = ((2 * (v76 & 0x2E ^ 0xA3E90BD3)) ^ 0x46921526) & (v76 ^ 0x3580633D) ^ v76 & 0x2E ^ 0xA3E90BD3 ^ ((2 * (v76 & 0x2E ^ 0xA3E90BD3)) & 0x14002D2 | 1);
  v89 = ((2 * (v76 ^ 0x3580633D)) ^ 0x46921526) & (v76 ^ 0x3580633D) ^ ((2 * (v76 ^ 0x3580633D)) & 0xA0290852 | 0x2800101);
  v90 = v88 ^ v89 & 0x10008027 ^ ((4 * v88) ^ 0x9BE4A7E6) & (v89 ^ 0x1400283);
  v91 = ((4 * v89) ^ 0x144088AA) & (v89 ^ 0x1400283) ^ v89 & 0x10008027;
  v92 = v90 ^ v91 & 0x114082A7 ^ ((16 * v90) ^ 0x2FD03F97) & (v91 ^ 0x1400283);
  v93 = ((16 * v91) ^ 0x540AA97) & (v91 ^ 0x1400283) ^ v91 & 0x114082A7;
  v94 = v92 ^ v93 & 0x114082A7 ^ ((v92 << 8) ^ 0xB849D2A7) & (v93 ^ 0x14002D3);
  v95 = ((v93 << 8) ^ 0x514201A7) & (v93 ^ 0x14002D3) ^ v93 & 0x114082A7;
  v96 = (v80 ^ v76 ^ (2 * (v94 ^ v95 & 0x114082A7 ^ ((v94 << 16) ^ 0x1A9382A7) & (v95 ^ 0x22A90000) ^ ((v94 << 16) ^ 0x1A9382A7) & 0x23E90283)) ^ 0xF8854F17) + 129;
  v97 = ((2 * (v96 % 0x81)) & 0x18E) + ((v96 % 0x81) ^ 0xBF90A7DF7FDDFBC7);
  v98 = v97 + 0x406F5820802203BCLL;
  v99 = (STACK[0x218] + 4 * v97 + 0x1BD6082008810E4);
  if (v98 < 0xFFFFFFFFFFFFFF83)
  {
    v99 = (STACK[0x220] + 4 * v98);
  }

  *(STACK[0x210] + 4 * v75) = v87 - (((*v99 ^ 0xFA78D314) + 92744940) ^ ((*v99 ^ 0x62CC04B9) - 1657537721) ^ ((*v99 ^ 0xAD24ABFC) + 1390105604)) - 669993719;
  return (*(v78 + 8 * (v73 ^ (16241 * (v81 == 31)))))();
}

uint64_t sub_1003DC7F4(uint64_t a1, __n128 a2, __n128 a3)
{
  v5.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v5.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(v4 + 8 * (v3 - 1650490425)))(a1, -30362, a2, a3, v5);
}

uint64_t sub_1003DC8D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  STACK[0x250] = 0;
  STACK[0x228] = &STACK[0x2D4];
  v62 = *(v60 + 24);
  v63 = *(v61 + 8 * (((5 * (a2 ^ 0xBC3E) + ((a2 - 43509) | 0x9A50) - 66077) * (v62 == STACK[0x230])) ^ a2));
  return v63(v62, v63, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_1003DC938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v33 = ((2 * (v30 - 1311860046)) & 0x1F2) + ((v30 - 1311860046) ^ 0xBB3FB92ED3CFBDF9);
  if (v33 >= 0xBB3FB92ED3CFBDF9)
  {
    v34 = (4 * v33 + a28 + 0x13011B44B0C1081CLL);
  }

  else
  {
    v34 = (4 * v33 + a27 + 0x13011B44B0C10694);
  }

  v32 = ((2 * (3 * v30 + 76)) & 0x94 ^ 0xCA) & (3 * v30 + 76);
  v35 = *(a5 + 4 * (((3 * v30 + 76) ^ (2 * (((((3 * v30 + 76) ^ 0x9F) << ((v28 + 91) ^ 7)) ^ 0x28) & ((3 * v30 + 76) ^ 0x9F) & (4 * v32) ^ v32))) & 0x1F ^ 0xAu));
  v36 = (((*v34 ^ 0x47876920) - 1200056608) ^ ((*v34 ^ 0x12565FAA) - 307650474) ^ ((*v34 ^ 0x2B12581B) - 722622491)) + 2039337978;
  v37 = ((v35 ^ 0x1D8B6DA8) - 495676840) ^ ((v35 ^ 0x9D38B85F) + 1657227169);
  v38 = 452398786 - v29 + 133 * ((v29 - 452398786) / 0x85u);
  v39 = ((2 * ((3 * v30 + 359387291 + v38) % 0x85)) & 0x1F6) + (((3 * v30 + 359387291 + v38) % 0x85) ^ 0xEFEFEF973FF7F6FBLL);
  v40 = v39 + 0x10101068C00808A3;
  *(STACK[0x220] + 4 * ((7 * v30 + 28) & 0x1F)) = *(a5 + 4 * ((7 * v30 + 28) & 0x1F)) ^ 0x40309F7C ^ (-2042045743 * (v36 * ((v37 ^ ((v35 ^ 0xABD86AD8) + 1411880232)) + 728481583) + 87399063 * (v37 ^ ((v35 ^ 0xABD86AD8) + 1411880232))) + 2070760201);
  v41 = (a28 + 4 * v39 + 0x404041A300202414);
  if (v40 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v41 = (a27 + 4 * v40);
  }

  *(v31 + 4 * ((13 * v30 + 10) & 0x1F)) = *(v31 + 4 * ((13 * v30 + 10) & 0x1F)) - 507501053 * (((((*v41 ^ 0xAF0AA182) + 1358257790) ^ ((*v41 ^ 0x9D15228E) + 1659559282) ^ ((*v41 ^ 0x4CDCED9D) - 1289547165)) - 1076674242) * (v30 - 1311860046) - 1091556013 * v30) - 1953933022;
  return (*(a6 + 8 * ((116 * (v30 != 1311860077)) ^ v28)))();
}

uint64_t sub_1003DCCDC@<X0>(unsigned int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>)
{
  a5.i64[0] = *(v11 + 4);
  a5.i32[2] = *(v12 + 4 * (v8 + a3));
  v15 = vextq_s8(a4, a5, 0xCuLL);
  a5.i32[3] = *(v10 + 16);
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a5, a6), vandq_s8(v15, a7)), 1uLL), *(v11 - 908));
  v17.i32[0] = *(v14 + 4 * (*(v11 + 4) & 1));
  v17.i32[1] = *(v14 + 4 * (*(v11 + 8) & 1));
  v17.i32[2] = *(v14 + 4 * (a5.i8[8] & 1));
  v17.i32[3] = *(v14 + 4 * (a5.i8[12] & 1));
  *v11 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), vdupq_n_s32(a1))), vdupq_n_s32(a2)), v17);
  return (*(v13 + 8 * (v7 ^ (4 * (v9 != 0)))))(a5);
}

uint64_t sub_1003DCE08()
{
  v3 = *(STACK[0x698] + 16);
  *(v2 - 248) = v0 + 155453101 * ((((2 * (v2 - 256)) | 0xA2F744C0) - (v2 - 256) - 1367056992) ^ 0xB75DB9AF) - 1353723208;
  *(v2 - 256) = v3;
  v4 = (*(v1 + 8 * (v0 - 1650460040)))(v2 - 256);
  return (*(v1 + 8 * (v0 - 1650506396)))(v4);
}

uint64_t sub_1003DD58C@<X0>(uint64_t a1@<X0>, char a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, char a6@<W7>, uint64_t a7@<X8>)
{
  v22 = ((2 * ((((v11 + v21) | v10) + v20) ^ a1)) ^ a2) & ((((v11 + v21) | v10) + v20) ^ a1) ^ (2 * ((((v11 + v21) | v10) + v20) ^ a1)) & a3;
  v23 = v22 ^ a4;
  v24 = (v22 ^ a5) & (4 * ((v19 & (2 * a1) ^ v8) & a1)) ^ (v19 & (2 * a1) ^ v8) & a1;
  v25 = a1 ^ (2 * (((4 * v23) & v13 ^ 0xA0 ^ ((4 * v23) ^ a6) & v23) & (16 * v24) ^ v24));
  v26 = (((v25 ^ 0x3D) + 0x80) ^ ((v25 ^ v17) + v14) ^ ((v25 ^ v18) + 114)) + 83;
  v27 = v9 - 1;
  STACK[0x448] = v27;
  *(v7 + v27) = v26 * (a1 + 108) - 109 * (26 * v26 + (a1 + 108) * v12) + v15;
  return (*(a7 + 8 * (((STACK[0x448] == 0) * v16) ^ v11)))(a1 + 1);
}

uint64_t sub_1003DD6EC(int a1, __n128 a2)
{
  v10 = (v5 + v3 + v6 + v7);
  *v10 = a2;
  v10[1] = a2;
  return (*(v9 + 8 * (((v8 + v3 == v2) * a1) ^ v4)))();
}

uint64_t sub_1003DD834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  LODWORD(STACK[0x220]) = v46;
  LODWORD(a45) = v45;
  return (*(STACK[0x228] + 8 * (v47 - 12182)))(a1, a2, a3, a4, a5, a6, a7, 281084425, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
}

uint64_t sub_1003DD974@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char a9@<W8>)
{
  v23 = ((a9 ^ v14) + v15) ^ a9 ^ ((a9 ^ v16) + a1) ^ ((a9 ^ a2) + a3) ^ (v13 + (a9 ^ v12));
  *(v21 + v11) = v10 + v9 * ((((v23 ^ a4) + a5) ^ ((v23 ^ a6) + a7) ^ ((v23 ^ a8) + v18)) + v19);
  return (*(v17 + 8 * (((v11 == 132) * v20) ^ v22)))();
}

uint64_t sub_1003DDAEC@<X0>(unint64_t a1@<X8>)
{
  v4 = STACK[0x430];
  STACK[0x4A0] = *(STACK[0x430] + 8 * v1);
  STACK[0x548] = a1;
  STACK[0x600] = v3;
  STACK[0x588] = 0;
  return (*(v4 + 8 * ((v2 + 19110) | (32 * (v3 == 0)))))();
}

uint64_t sub_1003DDF1C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (a1 - 1065843383) & 0x3F87A7AB;
  v67 = (((a65 - 417574352) & 0xCBC7491E) << ((a1 + 73) & 0xAB ^ 0x28)) & ((a65 - 417574352) ^ 0xABC6489C) ^ (a65 - 417574352) & 0xCBC7491E;
  v68 = (a1 - 419349386) & (2 * ((a65 - 417574352) ^ 0x2CC6DAB4)) ^ ((2 * ((a65 - 417574352) ^ 0x2CC6DAB4)) ^ 0xCE032754) & ((a65 - 417574352) ^ 0x2CC6DAB4);
  v69 = v68 ^ 0x210090AA;
  v70 = (v68 ^ 0x46019002) & (4 * v67) ^ v67;
  v71 = ((4 * v69) ^ 0x9C064EA8) & v69 ^ (4 * v69) & 0xE70193A8;
  v72 = (v71 ^ 0x840002A2) & (16 * v70) ^ v70;
  v73 = ((16 * (v71 ^ 0x63019102)) ^ 0x70193AA0) & (v71 ^ 0x63019102) ^ (16 * (v71 ^ 0x63019102)) & 0xE70193A0;
  v74 = v72 ^ 0xE70193AA ^ (v73 ^ 0x60011200) & (v72 << 8);
  v75 = (a65 - 417574352) ^ (2 * ((v74 << 16) & 0x67010000 ^ v74 ^ ((v74 << 16) ^ 0x13AA0000) & (((v73 ^ 0x8700810A) << 8) & 0x67010000 ^ 0x66000000 ^ (((v73 ^ 0x8700810A) << 8) ^ 0x1930000) & (v73 ^ 0x8700810A))));
  v77 = v75 == 63204938 || (((v66 ^ 0xC254) - 18030) & v75) != 10;
  v78 = *(v65 + 8 * ((v77 * (((v66 + 543) | 0x95) ^ 0x86A6)) ^ v66));
  LODWORD(STACK[0x2B8]) = -42899;
  return v78();
}

uint64_t sub_1003DE158@<X0>(uint64_t a1@<X8>)
{
  v8 = v6 - 1;
  *(v2 + v8) = *(a1 + v8) ^ *(v7 - 128 + v8) ^ (-31 * v8) ^ *(v1 + v8) ^ *(v3 + v8);
  return (*(v5 + 8 * (((v8 == 0) * ((v4 + 11733) ^ 0x7142)) ^ v4)))();
}

uint64_t sub_1003DE214@<X0>(int a1@<W8>)
{
  v6 = a1 - 8942;
  *(v5 - 256) = (a1 + 19669) ^ (297845113 * (v3 ^ 0x77331C9E));
  *(v5 - 248) = v1;
  v7 = (*(v4 + 8 * (a1 + 34566)))(v5 - 256);
  *(v2 - 0x217E172EFA1E81CLL) = 0;
  return (*(v4 + 8 * v6))(v7);
}

uint64_t sub_1003DE298()
{
  *v1 = v0;
  STACK[0x348] = v3;
  STACK[0x598] = v3;
  *STACK[0x3E0] = (*(v4 + 8 * (v2 ^ 0x6684)))();
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1003DE414@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v3 = v2[396] ^ (((((a2 + 11783) | 0x668) ^ 0x7FFFA906) & *v2 | v2[623] & 0x80000000) >> 1);
  v2[623] = (v3 - ((v3 << ((-24 * (a2 ^ 0x82)) ^ 0xF9)) & 0x34F516BC) + 444238686) ^ *(a1 + 4 * (*v2 & 1));
  return (*(STACK[0x430] + 8 * ((59135 * (LODWORD(STACK[0x5D4]) > 0x26F)) ^ a2)))();
}

uint64_t sub_1003DE5A4@<X0>(int a1@<W0>, char a2@<W4>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = ((v74 ^ 0x9E99AD0F232DBA01) + 0x616652F0DCD245FFLL) ^ ((v74 ^ 0xF9C4241D347DDC8CLL) + 0x63BDBE2CB822374) ^ ((v74 ^ 0x675D891268176A19) - 0x675D891268176A19);
  v81 = (v80 + ((LODWORD(STACK[0x2A8]) | 0x812Au) ^ 0xD854E3E6190F8C1BLL)) * (v80 + 2573754629u) + 0x27AB1C1A6637DF2FLL * v80 - 0x323187AAE61FE65ALL;
  v82 = ((2 * (v81 % 0xC95119CF)) & 0x15F5FDDD6) + ((v81 % 0xC95119CF) ^ 0x2FFE9EF9AFAFEEEBLL);
  v83 = ((v78 ^ 0x319733560B458688) - 0x319733560B458688) ^ ((v78 ^ 0x2697699F5330C842) - 0x2697699F5330C842) ^ ((v78 ^ 0x17005AC92732425ELL) - 0x17005AC92732425ELL);
  v84 = ((v83 + 2135362708) * (v83 + 0x6FDA9A89DF335CC5) - 0x6FDA9A895FEC5031 * v83 + 2575459919u * v82 - 0x2405866BB9CCBCA2) % 0x8C3E3039;
  v85 = (((((v84 - ((2 * v84) & 0x7E3ED352) - 0x6F922287C0E09657) ^ 0x61987AED3818847ELL) - 0x61987AED3818847ELL) ^ (((v84 - ((2 * v84) & 0x7E3ED352) - 0x6F922287C0E09657) ^ 0x719124FD8D1457EFLL) - 0x719124FD8D1457EFLL) ^ (((v84 - ((2 * v84) & 0x7E3ED352) - 0x6F922287C0E09657) ^ 0x806483688A13BA38) + 0x7F9B7C9775EC45C8)) - 0x5E02C2BA77EDB855) * (v82 - 0x2FFE9EF9AFAFEEEBLL) - 0x118F5FCD48F2DE02 * v82 + 0x377031AD676FE07BLL;
  v86 = (v85 ^ 0x98389517221D61BLL) & (2 * (v85 & 0x81ABA9517B45C75BLL)) ^ v85 & 0x81ABA9517B45C75BLL;
  v87 = ((2 * (v85 ^ 0xB86895120205AAFLL)) ^ 0x145A4000B6CB3BE8) & (v85 ^ 0xB86895120205AAFLL) ^ (2 * (v85 ^ 0xB86895120205AAFLL)) & v79;
  v88 = v87 ^ 0x8A25200049248414;
  v89 = (v87 ^ 0x80000120119E0) & (4 * v86) ^ v86;
  v90 = ((4 * v88) ^ 0x28B480016D9677D0) & v88 ^ (4 * v88) & 0x8A2D20005B659DF0;
  v91 = (v90 ^ 0x8240000490415D0) & (16 * v89) ^ v89;
  v92 = ((16 * (v90 ^ 0x8209200012618824)) ^ 0xA2D20005B659DF40) & (v90 ^ 0x8209200012618824) ^ (16 * (v90 ^ 0x8209200012618824)) & 0x8A2D20005B659DC0;
  v93 = (v92 ^ 0x8200000012419D00) & (v91 << 8) ^ v91;
  v94 = (((v92 ^ 0x82D2000492400B4) << 8) ^ 0x2D20005B659DF400) & (v92 ^ 0x82D2000492400B4) ^ ((v92 ^ 0x82D2000492400B4) << 8) & 0x8A2D20005B659400;
  v95 = v93 ^ v79 ^ (v94 ^ 0x820000041050000) & (v93 << 16);
  v96 = (v76 - 782313471);
  LODWORD(v88) = (((v67 + v96) ^ *(*v71 + (*v69 & v70))) & 0x7FFFFFFF) * a1;
  v97 = (v88 ^ WORD1(v88)) * a1;
  v98 = v85 ^ (2 * ((v95 << 32) & v77 ^ v95 ^ ((v95 << 32) ^ 0x5B659DF400000000) & (((v94 ^ 0x820D20001A6009F4) << 16) & v77 ^ v77 ^ (((v94 ^ 0x820D20001A6009F4) << 16) ^ 0x20005B6500000000) & (v94 ^ 0x820D20001A6009F4))));
  *(v68 + v96) = *(v67 + v96) ^ *(a66 + (v97 >> 24)) ^ *(a65 + (v97 >> 24)) ^ *((v97 >> 24) + STACK[0x200] + 2) ^ v97 ^ (-5 * BYTE3(v97)) ^ ((v85 ^ (2 * v95)) >> 15) ^ 0x1D;
  v99 = (v76 - 782313470);
  LODWORD(v94) = ((*(*v71 + (*v69 & v70)) ^ (v67 + v99)) & 0x7FFFFFFF) * a1;
  v100 = (v94 ^ WORD1(v94)) * a1;
  *(v68 + v99) = *(v67 + v99) ^ *(v73 + (v100 >> 24)) ^ *((v100 >> 24) + v66 + 2) ^ *((v100 >> 24) + v75 + 4) ^ v100 ^ (BYTE3(v100) * a2) ^ 0xC9 ^ (((v98 >> 23) ^ 0x9B) + ~(2 * (((v98 >> 23) ^ 0x9B) & 0x4D ^ (v98 >> 23) & 4)) - 54);
  v101 = (v76 - 782313469);
  LODWORD(v97) = ((*(*v71 + (*v69 & v70)) ^ (v67 + v101)) & 0x7FFFFFFF) * a1;
  v102 = (v97 ^ WORD1(v97)) * a1;
  *(v68 + v101) = *(v67 + v101) ^ *(v73 + (v102 >> 24)) ^ *((v102 >> 24) + v66 + 2) ^ *((v102 >> 24) + v75 + 4) ^ v102 ^ (BYTE3(v102) * a2) ^ (((v98 >> 31) ^ 0xA3) - ((2 * ((v98 >> 31) ^ 0xA3)) & 0xFC) + 126) ^ 0x7E;
  v103 = (((v76 ^ 0x7CC7292A) - 1382420181) ^ v76 ^ ((v76 ^ 0x8C94E7AB) + 1573535660) ^ ((v76 ^ 0xA30D1E80) + 1918092930) ^ ((v76 ^ 0x7DFFF7FC) - 1398722560)) & 0xFFFFFFFC ^ 0x2EA127FFLL;
  LODWORD(v102) = ((*(*v71 + (*v69 & v70)) ^ (v67 + v103)) & 0x7FFFFFFF) * a1;
  v104 = (v102 ^ WORD1(v102)) * a1;
  v105 = a3 < LODWORD(STACK[0x2B0]);
  *(v68 + v103) = *(v67 + v103) ^ *(v73 + (v104 >> 24)) ^ *((v104 >> 24) + v66 + 2) ^ *((v104 >> 24) + v75 + 4) ^ v104 ^ (BYTE3(v104) * a2) ^ 0xEC ^ (((v98 >> 39) ^ 0xD2) - ((2 * ((v98 >> 39) ^ 0xD2)) & 0xD8) - 20);
  v106 = v76 - 1541133439 < a3;
  if (v105 != (v76 - 1541133439) < 0xD2C5537C)
  {
    v106 = v105;
  }

  return (*(v72 + 8 * ((63065 * v106) ^ LODWORD(STACK[0x298]))))();
}

uint64_t sub_1003DEF3C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB5C]) = v1;
  v4 = (((a1 ^ 0x2A75E483) - 712369283) ^ ((a1 ^ 0x19AAE9C5) - 430631365) ^ ((v2 ^ 0x8EB39D9) + 1500861392 + (a1 ^ 0xDA0ACA57) - 1013684905)) + 898829142;
  v5 = v4 < 0x4BBD4445;
  v6 = v1 + 1270694981 < v4;
  if (v1 > 0xB442BBBA != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * (((8 * !v6) | (32 * !v6)) ^ v2)))();
}

uint64_t sub_1003DF1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = STACK[0xF68];
  if ((STACK[0xF68] - 0x4344E26C616AAD01) <= 5000)
  {
    v42 = 5000;
  }

  else
  {
    v42 = STACK[0xF68] - 0x4344E26C616AAD01;
  }

  STACK[0x778] = v42;
  STACK[0x7A0] = STACK[0x1090];
  STACK[0x798] = STACK[0x1668];
  STACK[0x788] = v41 - 0x4344E26C616AADCALL;
  v65 = STACK[0x1D50];
  if (v41 >= 0x4344E26C616AADD9)
  {
    v43 = v41 + 0x4344E26C616AADCCLL;
  }

  else
  {
    v43 = 0x8689C4D8C2D55BA5;
  }

  v64 = STACK[0x12E8];
  v66 = STACK[0x1880];
  v63 = STACK[0x1008];
  v44 = (v43 ^ 0x75753A973C82976FLL) & (2 * (v43 & 0x79763B273D2AA46ELL)) ^ v43 & 0x79763B273D2AA46ELL;
  v45 = STACK[0x13D0];
  v46 = ((2 * (v43 ^ ((v39 + 1650507686) + 0x27353AD7027306D9))) ^ 0xBC8603E0B3F2E68ALL) & (v43 ^ ((v39 + 1650507686) + 0x27353AD7027306D9)) ^ (2 * (v43 ^ ((v39 + 1650507686) + 0x27353AD7027306D9))) & 0x5E4301F059F97344;
  v47 = v46 ^ 0x4241001048091145;
  v48 = (v46 ^ 0xC0001A011F02200) & (4 * v44) ^ v44;
  v49 = ((4 * v47) ^ 0x790C07C167E5CD14) & v47 ^ (4 * v47) & 0x5E4301F059F97344;
  v50 = (v49 ^ 0x580001C041E14100) & (16 * v48) ^ v48;
  v51 = ((16 * (v49 ^ 0x643003018183241)) ^ 0xE4301F059F973450) & (v49 ^ 0x643003018183241) ^ (16 * (v49 ^ 0x643003018183241)) & 0x5E4301F059F97340;
  v52 = (v51 ^ 0x4400010019913000) & (v50 << 8) ^ v50;
  v53 = (((v51 ^ 0x1A4300F040684305) << 8) ^ 0x4301F059F9734500) & (v51 ^ 0x1A4300F040684305) ^ ((v51 ^ 0x1A4300F040684305) << 8) & 0x5E4301F059F97100;
  v54 = v52 ^ 0x5E4301F059F97345 ^ (v53 ^ 0x4201005059710000) & (v52 << 16);
  v55 = (v54 << 32) ^ 0x59F9734500000000;
  v56 = (v43 ^ (2 * ((v54 << 32) & 0x5E4301F000000000 ^ v54 ^ v55 & (((v53 ^ 0x1C4201A000883245) << 16) & 0x5E4301F000000000 ^ 0x5E03000000000000 ^ (((v53 ^ 0x1C4201A000883245) << 16) ^ 0x1F059F900000000) & (v53 ^ 0x1C4201A000883245))))) & 0xFFFFFFFFFFFFFFFCLL;
  v57 = ((v56 ^ 0xCB05B450737D8263) - 0xD85E20677C336CCLL) ^ ((v56 ^ 0xF4E37E8EDE8DC6CCLL) - 0x326328D8DA337263) ^ ((v56 ^ 0x4A94F0992328064BLL) + 0x73EB5930D8694D1CLL);
  v62 = v57 + 0x635FAE280E77DCBBLL;
  v61 = v57 + 0x4BD9DDAF1E4F2B13;
  v58 = ((v42 & 0x7FFFFFFFFFFFFFFCLL ^ 0xF22BCE2BCE9E4FBBLL) - 0x27ECC4E260B7D38FLL) ^ ((v42 & 0x7FFFFFFFFFFFFFFCLL ^ 0x6A34B1A757485479) + 0x400C4491069E37B3) ^ ((v42 & 0x7FFFFFFFFFFFFFFCLL ^ 0x981F7F8C99D61BC2) - 0x4DD8754537FF87F6);
  STACK[0x258] = v58 - 0x2A38F53651D663E4;
  v59 = ((((v58 + 1934204820) ^ 0x93D5B7ED) - 1458943125) ^ (v58 + 1934204820) ^ (((v58 + 1934204820) ^ 0x72D2AC67) + 1208832225) ^ (((v58 + 1934204820) ^ 0xBD8EF3D) + 822547387) ^ (((v58 + 1934204820) ^ 0x2FFFF7CF) + 354421577)) & 0xFFFFFFFC;
  STACK[0x770] = (((v59 ^ 0xA0364159DA1B1D08) + 0x5347F3AAE901FB45) ^ ((v59 ^ 0x94C343C34C818341) + 0x67B2F1307F9B650ELL) ^ ((v59 ^ 0x34F5029A53BA9D31) - 0x387B4F969F5F8482)) + 0xC8E4D0C09C51AA2;
  return (*(v40 + 8 * (v39 ^ 0x83F1)))(v55, a2, a3, a4, a5, a6, v45, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v61, v62, a33, a34, a35, a36, a37, a38, a39, v63, v64, v65, v66);
}

uint64_t sub_1003DF8A8(uint64_t a1, unsigned int a2)
{
  STACK[0x248] = v2;
  v5 = (*(a1 + 16) + v2);
  v6 = v5[12];
  v7 = LODWORD(STACK[0x220]) + 5363 * (v6 ^ 0xD5);
  v8 = *(&off_1010A0B50 + SLODWORD(STACK[0x21C])) - 525141979;
  v9 = v6 ^ 0x24;
  v10 = 5363 * (v5[5] ^ 0x7A) + 31577344;
  LOBYTE(v6) = v8[v10 - 20608 * (((106707263 * v10) >> 32) >> 9)];
  v11 = 5363 * (v5[3] ^ 0xF5) + 63154688;
  v12 = v6 ^ 0x16;
  v13 = v8[v11 - 20608 * (((106707263 * v11) >> 32) >> 9)];
  v14 = (v8[v7 % 0x5080] ^ 0x27) + v9;
  v15 = 5363 * (v5[8] ^ 0x41) + 72765184;
  v16 = (v8[5363 * (v5[14] ^ 0xF2) + 50798336 - 20608 * (((106707263 * (5363 * (v5[14] ^ 0xF2u) + 50798336)) >> 32) >> 9)] ^ v5[14]);
  v17 = 5363 * (v5[1] ^ 0xEAB);
  v18 = (v8[v15 - 20608 * (((213414525 * v15) >> 32) >> 10)] ^ 0x5A) << 24;
  v19 = v5[10] ^ 0xD;
  v20 = (v8[v17 - 20608 * (((1667301 * v17) >> 32) >> 3)] << 16) ^ 0x45A08C3;
  v21 = v14 ^ 6;
  LODWORD(STACK[0x228]) = v13;
  v22 = v8[5363 * v19 + 4118784 - 20608 * (((1667301 * (5363 * v19 + 4118784)) >> 32) >> 3)];
  LOBYTE(v19) = (v22 >> 4) | (16 * v22);
  v23 = v22 & 0xF;
  v24 = 5363 * (v5[15] ^ 0xF3) + 59035904;
  v25 = v20 & (v13 ^ 0x84FFEC48);
  v26 = v8[v24 - 20608 * (((106707263 * v24) >> 32) >> 9)];
  v27 = v18 ^ 0x169CFF5C;
  v28 = 5363 * (v5[11] ^ 0xEE) + 94748121;
  v29 = v18 & 0xAAAAAAAA;
  v30 = v26 ^ 0xFFFFFFDF;
  v31 = v26 & 0x17;
  v32 = 5363 * (v5[9] ^ 0x48) + 37069056;
  v33 = (v21 << 24) ^ 0x7996F936;
  v34 = v8[v32 - 20608 * (((106707263 * v32) >> 32) >> 9)];
  v35 = (v12 ^ (16 * v12));
  v36 = v25 | v13 & 0x3C;
  LOBYTE(v19) = v23 ^ v19;
  v37 = ((v34 ^ 0xFFFFFFE1) + 31) ^ ((v34 ^ 0x2F) - 47) ^ ((v34 ^ 0xFFFFFFE9) + 23);
  v38 = *v5 ^ v8[5363 * (*v5 ^ 0x165B) - 20608 * (((1667301 * (5363 * (*v5 ^ 0x165Bu))) >> 32) >> 3)] ^ 0x20;
  v39 = v19;
  v40 = 109 * v37 - 101;
  v41 = (((v5[13] ^ 0xF) + 46) ^ v8[5363 * (v5[13] ^ 0x67) - 20608 * (((1667301 * (5363 * (v5[13] ^ 0x67u))) >> 32) >> 3)]) << 16;
  v42 = v41 ^ 0x920000;
  v43 = 5363 * (v5[7] ^ 0x8C) + 21966848;
  v44 = v8[v43 - 20608 * (((1667301 * v43) >> 32) >> 3)];
  v45 = v41 & 0x7D0000;
  v46 = v33 & ((v16 << 8) ^ 0xFF9618BF) ^ ((((v16 >> 1) & 3) << 9) | 0x23000089);
  v47 = ((v35 << 16) ^ 0x2DD42B01) & ~v44;
  v48 = ((16 * ((v44 ^ 0x1A) & 3)) ^ v44 ^ 0x1A) & 0xFE;
  v49 = 5363 * (v5[4] ^ 0xF1) + 101623487;
  v50 = v8[v49 - 20608 * (((213414525 * v49) >> 32) >> 10)];
  v51 = v47 | v48;
  v52 = v5[2];
  STACK[0x230] = v5;
  v53 = ((v39 << 8) ^ 0x55988F5C) & v27 | v29;
  v54 = (v50 ^ 0xE2 ^ (v50 >> 2) & 0x38) << 24;
  LOBYTE(v29) = v8[5363 * (v52 ^ 0x75) + 2745856 - 20608 * (((1667301 * (5363 * (v52 ^ 0x75u) + 2745856)) >> 32) >> 3)];
  LOBYTE(v50) = -97 - 55 * (((v29 ^ 0x30) - 48) ^ ((v29 ^ 0xD1) + 47) ^ ((v29 ^ 0xC6) + 58));
  v55 = (v31 | v30 & (v46 ^ 0xEE202057)) ^ 0x8334E270;
  v56 = (v51 ^ 0x41A605B6) & (v54 ^ 0xBCFFAFFF) ^ v54 & 0x93000000;
  v57 = v42 & v55;
  v58 = 5363 * (v5[6] ^ 0xF4) + 90618611;
  v59 = (v50 ^ ((v50 & 0xF0) >> 4)) << 8;
  v60 = (((v57 ^ v45) >> 16) ^ 0x7D) * v4 - 1760729088;
  v61 = (((v53 ^ 0x1281) >> 8) ^ 0x50) * v4 + 757180928;
  v62 = (v56 ^ 0x8AD100) & ((v8[v58 - 20608 * (((213414525 * v58) >> 32) >> 10)] << 8) ^ 0xDC9FCC06) ^ v56 & 0x236023F9;
  v63 = (v56 & 6 ^ v56 & 0xF9 ^ 0xEC) * v4 + 1166676736;
  v64 = (((v59 | 0xFFFF01FF) & ((v38 << 24) ^ 0x96E50238) | v59 & 0xFFFFFDFF) ^ 0x84A3153D) & (v36 ^ 0xFBA2F77A) ^ v36 & 0x4B900FA;
  v65 = v8[v28 - 20608 * (((213414525 * v28) >> 32) >> 10)];
  v66 = ((v40 >> 1) & 0x76 ^ v40) << 16;
  v67 = v60 - (((v60 * a2) >> 32) >> 12) * v3;
  v68 = (v66 ^ 0xFF48FFDD) & (v53 ^ 0xD1601281);
  LODWORD(v5) = v68 ^ v66 & 0x70000;
  v69 = *(&off_1010A0B50 + SLODWORD(STACK[0x218])) - 322331398;
  v70 = *&v69[4 * (v61 - (((v61 * a2) >> 32) >> 12) * v3)];
  v71 = *&v69[4 * ((BYTE1(v55) ^ 0x24) * v4 - 662925394 - (((((BYTE1(v55) ^ 0x24u) * v4 - 662925394) * a2) >> 32) >> 12) * v3)];
  v53 >>= 24;
  v72 = (*&v69[4 * ((v65 ^ 0x2C) * v4 - 1513486336 - (((((v65 ^ 0x2Cu) * v4 - 1513486336) * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) + (v65 & 0xB6 ^ 0x90757FB ^ (v68 ^ 0x94) & (v65 ^ 0xF8));
  v73 = *&v69[4 * ((HIBYTE(v46) ^ 0x35) * v4 - 926284800 - (((((HIBYTE(v46) ^ 0x35) * v4 - 926284800) * a2) >> 32) >> 12) * v3)];
  v74 = ((*&v69[4 * ((v53 ^ 0x9D95) * v4 - ((((v53 ^ 0x9D95) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) - (v53 ^ 0x8541E401)) ^ *&v69[4 * ((BYTE2(v62) ^ 0xEB) * v4 - 600993982 - (((((BYTE2(v62) ^ 0xEBu) * v4 - 600993982) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((v55 ^ 0x45) * v4 - 1861171456 - (((((v55 ^ 0x45u) * v4 - 1861171456) * a2) >> 32) >> 12) * v3)];
  v75 = *&v69[4 * v67] ^ *&v69[4 * (v63 - (((v63 * a2) >> 32) >> 12) * v3)] ^ ((((v70 ^ 0x939A21B6) + 1818615370) ^ ((v70 ^ 0x4A0967F4) - 1242130420) ^ ((v70 ^ 0xD915F3BC) + 652872772)) + 246861532) ^ ((HIBYTE(v64) ^ 0x5F) - 517961077) ^ *&v69[4 * ((HIBYTE(v64) ^ 0x690D) * v4 - ((((HIBYTE(v64) ^ 0x690D) * v4 * a2) >> 32) >> 12) * v3)];
  HIDWORD(v76) = *&v69[4 * ((BYTE1(v62) ^ 0xC8) * v4 + 347685120 - (((((BYTE1(v62) ^ 0xC8u) * v4 + 347685120) * a2) >> 32) >> 12) * v3)];
  LODWORD(v76) = HIDWORD(v76);
  v77 = v72 ^ *&v69[4 * ((HIBYTE(v62) ^ 0x19EB3) * v4 - ((((HIBYTE(v62) ^ 0x19EB3) * v4 * a2) >> 32) >> 12) * v3)] ^ ((((v71 ^ 0xE73A6CED) + 415601427) ^ ((v71 ^ 0xF96404E8) + 110885656) ^ ((v71 ^ 0x1ED8DDFB) - 517529083)) - 936698337) ^ ((*&v69[4 * ((BYTE2(v64) ^ 0xB3F7) * v4 - ((((BYTE2(v64) ^ 0xB3F7u) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) - (BYTE2(v64) ^ 0x7C5528F4));
  v78 = ((*&v69[4 * ((BYTE2(v5) ^ 0x126C3) * v4 - ((((BYTE2(v5) ^ 0x126C3u) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) + (BYTE2(v5) ^ 0x49ECBD8C)) ^ v73 ^ (v76 >> 31) ^ ((v76 >> 31) >> 1) & 0x23001C18 ^ ((*&v69[4 * ((LODWORD(STACK[0x228]) ^ 0xC4) * v4 + 1838867968 - (((((LODWORD(STACK[0x228]) ^ 0xC4u) * v4 + 1838867968) * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) - (v64 ^ 0x3B11CD83));
  v79 = v74 ^ *&v69[4 * ((BYTE1(v64) ^ 0x10EB5) * v4 - ((((BYTE1(v64) ^ 0x10EB5u) * v4 * a2) >> 32) >> 12) * v3)];
  v80 = (v72 ^ v69[4 * ((HIBYTE(v62) ^ 0x19EB3) * v4 - ((((HIBYTE(v62) ^ 0x19EB3) * v4 * a2) >> 32) >> 12) * v3)] ^ ((((v71 ^ 0xED) + 19) ^ ((v71 ^ 0xE8) + 24) ^ ((v71 ^ 0xFB) + 5)) + 31) ^ ((v69[4 * ((BYTE2(v64) ^ 0xB3F7) * v4 - ((((BYTE2(v64) ^ 0xB3F7u) * v4 * a2) >> 32) >> 12) * v3)] ^ 0xFE) - (BYTE2(v64) ^ 0xF4))) ^ HIBYTE(v62);
  LOBYTE(v74) = BYTE1(v79) ^ BYTE2(v78);
  v81 = *&v69[4 * (((v79 ^ BYTE2(v62) ^ BYTE1(v64)) ^ 0xF5D3) * v4 - (((((v79 ^ BYTE2(v62) ^ BYTE1(v64)) ^ 0xF5D3u) * v4 * a2) >> 32) >> 12) * v3)];
  v82 = *&v69[4 * ((BYTE2(v77) ^ 0xF7) * v4 - 964916480 - (((((BYTE2(v77) ^ 0xF7u) * v4 - 964916480) * a2) >> 32) >> 12) * v3)];
  v83 = (v81 >> 3) & 0xE8B2CE6;
  v84 = ((HIBYTE(v77) ^ 0x81) - (HIBYTE(v77) ^ 0xDBC623F4)) ^ ((BYTE2(v75) ^ 0xB9) - 115295812) ^ *&v69[4 * ((BYTE2(v75) ^ 0x12881) * v4 - ((((BYTE2(v75) ^ 0x12881u) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((BYTE1(v78) ^ 0xD397) * v4 - ((((BYTE1(v78) ^ 0xD397u) * v4 * a2) >> 32) >> 12) * v3)];
  v85 = BYTE1(v78) ^ v81;
  v86 = *&v69[4 * ((BYTE2(v78) ^ 0x9487) * v4 - ((((BYTE2(v78) ^ 0x9487u) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((HIBYTE(v75) ^ 0xCF) * v4 + 2062931712 - (((((HIBYTE(v75) ^ 0xCF) * v4 + 2062931712) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((BYTE1(v79) ^ 0x2BCA) * v4 - ((((BYTE1(v79) ^ 0x2BCAu) * v4 * a2) >> 32) >> 12) * v3)] ^ ((v80 ^ 0xCC) - (v80 ^ 0x45A030A6));
  v87 = *&v69[4 * ((HIBYTE(v78) ^ 0x1C) * v4 - 1644834048 - (((((HIBYTE(v78) ^ 0x1C) * v4 - 1644834048) * a2) >> 32) >> 12) * v3)];
  v88 = *&v69[4 * ((HIBYTE(v79) ^ 0x133DE) * v4 - ((((HIBYTE(v79) ^ 0x133DE) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((BYTE1(v75) ^ 0xF1C0) * v4 - ((((BYTE1(v75) ^ 0xF1C0u) * v4 * a2) >> 32) >> 12) * v3)] ^ ((*&v69[4 * ((v78 ^ 0x5202) * v4 - ((((v78 ^ 0x5202u) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) - (v78 ^ 0xFF50A670));
  v89 = *&v69[4 * ((BYTE2(v79) ^ 0x18D11) * v4 - ((((BYTE2(v79) ^ 0x18D11u) * v4 * a2) >> 32) >> 12) * v3)];
  v90 = v86 ^ *&v69[4 * ((v80 ^ 0x685E) * v4 - ((((v80 ^ 0x685Eu) * v4 * a2) >> 32) >> 12) * v3)];
  v91 = ((v87 ^ 0xC4548AC2) + 1001092414) ^ ((v87 ^ 0x5BA96234) - 1537827380);
  v92 = v84 ^ *&v69[4 * ((HIBYTE(v77) ^ 0x67) * v4 - 740400021 - (((((HIBYTE(v77) ^ 0x67) * v4 - 740400021) * a2) >> 32) >> 12) * v3)] ^ v85;
  v93 = (v87 ^ 0x9F7B5D08) + 1619305208;
  v94 = BYTE1(v77);
  v95 = *&v69[4 * ((BYTE1(v77) ^ 0x104B0) * v4 - ((((BYTE1(v77) ^ 0x104B0u) * v4 * a2) >> 32) >> 12) * v3)];
  v96 = v92 ^ v83;
  v97 = v91 ^ v93;
  v98 = (HIBYTE(v64) ^ 0xD3 ^ v75) * v4 - 1266243584;
  v99 = v82 ^ ((BYTE1(v75) ^ 0xAA) - (BYTE1(v75) ^ 0xF9C5EAF3)) ^ (v82 >> 3) ^ (v82 >> 1);
  v100 = *&v69[4 * (v98 - (((v98 * a2) >> 32) >> 12) * v3)];
  v101 = v99 ^ v88;
  v102 = HIBYTE(v90);
  v103 = v89 ^ v94 ^ (v89 >> 1) ^ v95 ^ (v89 >> 5) ^ v100 ^ (v97 + 1429149220);
  v104 = (BYTE2(v90) ^ 0x59) * v4 + 285874432 - (((((BYTE2(v90) ^ 0x59u) * v4 + 285874432) * a2) >> 32) >> 12) * v3;
  v105 = ((v99 ^ v88) ^ 0x3A) * v4 + 1081687040;
  LOBYTE(v94) = v74 ^ v90;
  v106 = HIBYTE(v103);
  v107 = v96 >> 8;
  v108 = *&v69[4 * ((BYTE1(v101) ^ 0xDD) * v4 + 610380544 - (((((BYTE1(v101) ^ 0xDDu) * v4 + 610380544) * a2) >> 32) >> 12) * v3)];
  v109 = *&v69[4 * ((HIBYTE(v90) ^ 0x3788) * v4 - ((((HIBYTE(v90) ^ 0x3788) * v4 * a2) >> 32) >> 12) * v3)] ^ ((v96 ^ 0xF) + 1951597044) ^ *&v69[4 * ((v96 ^ 0x9940) * v4 - ((((v96 ^ 0x9940u) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((BYTE2(v103) ^ 0x149BE) * v4 - ((((BYTE2(v103) ^ 0x149BEu) * v4 * a2) >> 32) >> 12) * v3)];
  v110 = HIWORD(v103);
  v111 = (*&v69[4 * ((BYTE1(v103) ^ 0x1A281) * v4 - ((((BYTE1(v103) ^ 0x1A281u) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) - (BYTE1(v103) ^ 0x459D0627);
  v112 = *&v69[4 * ((BYTE1(v90) ^ 0x42) * v4 - 1273969920 - (((((BYTE1(v90) ^ 0x42u) * v4 - 1273969920) * a2) >> 32) >> 12) * v3)];
  v113 = *&v69[4 * ((v103 ^ 3) * v4 + 1437098496 - (((((v103 ^ 3u) * v4 + 1437098496) * a2) >> 32) >> 12) * v3)];
  v114 = *&v69[4 * v104] ^ *&v69[4 * ((HIBYTE(v96) ^ 0xBF) * v4 + 834444288 - (((((HIBYTE(v96) ^ 0xBF) * v4 + 834444288) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * (v105 - (((v105 * a2) >> 32) >> 12) * v3)] ^ v111;
  v115 = HIBYTE(v101) ^ ((BYTE2(v96) ^ 0x65D982D1) + (BYTE2(v96) ^ 0x89)) ^ *&v69[4 * ((BYTE2(v96) ^ 4) * v4 - 779182606 - (((((BYTE2(v96) ^ 4u) * v4 - 779182606) * a2) >> 32) >> 12) * v3)] ^ v112 ^ *&v69[4 * ((HIBYTE(v101) ^ 0x391B) * v4 - ((((HIBYTE(v101) ^ 0x391B) * v4 * a2) >> 32) >> 12) * v3)] ^ (2 * v112);
  v116 = *&v69[4 * ((BYTE2(v101) ^ 0x7B) * v4 + 1406193152 - (((((BYTE2(v101) ^ 0x7Bu) * v4 + 1406193152) * a2) >> 32) >> 12) * v3)];
  v117 = v115 ^ ((((v113 ^ 0xA1DC5539) + 1579395783) ^ ((v113 ^ 0xC468B09) - 205949705) ^ ((v113 ^ 0xAD1C6BCE) + 1390646322)) + 1553686022);
  v118 = v94 ^ 0xD4;
  v119 = (((v116 ^ 0x48964E64) - 1217810020) ^ ((v116 ^ 0x5A9604D1) - 1519781073) ^ ((v116 ^ 0x1286FF4B) - 310837067)) + 83116460;
  v120 = v109 ^ ((((v108 ^ 0x6E5247E4) - 1850886116) ^ ((v108 ^ 0xC22F541A) + 1037085670) ^ ((v108 ^ 0xACFBA600) + 1392794112)) + 809234538);
  LOBYTE(v116) = v109 ^ ((((v108 ^ 0xE4) + 28) ^ ((v108 ^ 0x1A) - 26) ^ v108) + 106) ^ v110;
  v121 = *&v69[4 * ((BYTE1(v96) ^ 0xE070) * v4 - ((((BYTE1(v96) ^ 0xE070u) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * (v118 * v4 + 84989696 - (((4327423 * (v118 * v4 + 84989696)) >> 32) >> 7) * v3)] ^ *&v69[4 * ((v106 ^ 0x1496) * v4 - ((((v106 ^ 0x1496) * v4 * a2) >> 32) >> 12) * v3)] ^ v119;
  LOBYTE(v119) = v121 ^ v107;
  v122 = HIBYTE(v120);
  v123 = HIBYTE(v121);
  v124 = *&v69[4 * ((BYTE2(v120) ^ 0x5E) * v4 - 1977066496 - (((((BYTE2(v120) ^ 0x5Eu) * v4 - 1977066496) * a2) >> 32) >> 12) * v3)];
  v125 = *&v69[4 * ((BYTE1(v121) ^ 0x1C) * v4 + 46358016 - (((4327423 * ((BYTE1(v121) ^ 0x1Cu) * v4 + 46358016)) >> 32) >> 7) * v3)];
  v126 = *&v69[4 * ((BYTE2(v121) ^ 0xDB) * v4 - 872140086 - (((((BYTE2(v121) ^ 0xDBu) * v4 - 872140086) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((HIBYTE(v120) ^ 0xDF2F) * v4 - ((((HIBYTE(v120) ^ 0xDF2F) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((v114 ^ 0xAA) * v4 + 2047479040 - (((((v114 ^ 0xAAu) * v4 + 2047479040) * a2) >> 32) >> 12) * v3)] ^ ((*&v69[4 * ((BYTE1(v117) ^ 0xA83A) * v4 - ((((BYTE1(v117) ^ 0xA83Au) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) - (BYTE1(v117) ^ 0xB0D7B7F4)) ^ ((BYTE2(v121) ^ 0x8F) + 621208924);
  v127 = *&v69[4 * ((BYTE2(v114) ^ 0x49) * v4 - 1552118016 - (((((BYTE2(v114) ^ 0x49u) * v4 - 1552118016) * a2) >> 32) >> 12) * v3)];
  v128 = ((v124 ^ 0x79D673CE) - 2044097486) ^ ((v124 ^ 0x892539A) - 143807386) ^ ((v124 ^ 0x71C295AA) - 1908577706);
  v129 = (v106 ^ 0x15 ^ v119) * v4 + 857623296;
  v130 = -403971511 * (((v125 ^ 0xD53A5388) + 717597816) ^ ((v125 ^ 0xD9BB81FD) + 642022915) ^ ((v125 ^ 0xC07678B) - 201811851)) + 1430135150;
  v131 = (v102 ^ v116 ^ 0xC0) * v4 + 293600768;
  v132 = *&v69[4 * ((v117 ^ 0xDF) * v4 + 903981312 - (((((v117 ^ 0xDFu) * v4 + 903981312) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((HIBYTE(v114) ^ 0x96) * v4 - 972642816 - (((((HIBYTE(v114) ^ 0x96) * v4 - 972642816) * a2) >> 32) >> 12) * v3)] ^ (v128 + 1720190360) ^ v130 ^ (1613767600 * (v128 + 1720190360)) ^ (v130 >> 3);
  v133 = *&v69[4 * ((HIBYTE(v117) ^ 0x95) * v4 + 316779776 - (((((HIBYTE(v117) ^ 0x95) * v4 + 316779776) * a2) >> 32) >> 12) * v3)] ^ __ROR4__(*&v69[4 * ((BYTE1(v120) ^ 0x28) * v4 + 216337408 - (((((BYTE1(v120) ^ 0x28u) * v4 + 216337408) * a2) >> 32) >> 12) * v3)], 18) ^ *&v69[4 * (v129 - (((v129 * a2) >> 32) >> 12) * v3)] ^ ((((v127 ^ 0xBFBD912) - 201054482) ^ ((v127 ^ 0x30EEB04E) - 820949070) ^ ((v127 ^ 0x3B93DCA2) - 999546018)) + 675264919);
  v134 = *&v69[4 * ((BYTE2(v117) ^ 0x18B8B) * v4 - ((((BYTE2(v117) ^ 0x18B8Bu) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((v123 ^ 0x587E) * v4 - ((((v123 ^ 0x587E) * v4 * a2) >> 32) >> 12) * v3)] ^ __ROR4__(*&v69[4 * ((BYTE1(v114) ^ 0x67) * v4 + 1823415296 - (((((BYTE1(v114) ^ 0x67u) * v4 + 1823415296) * a2) >> 32) >> 12) * v3)], 17) ^ *&v69[4 * (v131 - (((v131 * a2) >> 32) >> 12) * v3)];
  LOBYTE(v117) = v134 ^ BYTE2(v117);
  v135 = HIBYTE(v126);
  v136 = HIBYTE(v134) ^ 0x10;
  v137 = v132 ^ (v130 >> 7);
  v138 = HIBYTE(v133);
  LODWORD(v76) = __ROR4__(*&v69[4 * ((BYTE2(v134) ^ 0x8E) * v4 - 1467128320 - (((((BYTE2(v134) ^ 0x8Eu) * v4 - 1467128320) * a2) >> 32) >> 12) * v3)], 26);
  v139 = *&v69[4 * ((BYTE2(v126) ^ 0x7C) * v4 - 546788906 - (((((BYTE2(v126) ^ 0x7Cu) * v4 - 546788906) * a2) >> 32) >> 12) * v3)];
  v140 = (*&v69[4 * ((BYTE1(v134) ^ 0xD8) * v4 - 693921281 - (((((BYTE1(v134) ^ 0xD8u) * v4 - 693921281) * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) - (BYTE1(v134) ^ 0xB901A447);
  v141 = *&v69[4 * ((v133 ^ 0x4A) * v4 - 1397591296 - (((((v133 ^ 0x4Au) * v4 - 1397591296) * a2) >> 32) >> 12) * v3)];
  v142 = ((v139 ^ 0xDFFFFC58) + 536871848) ^ ((v139 ^ 0xD80C0E3C) + 670298564) ^ ((v139 ^ 0x775479A) - 125126554);
  v143 = *&v69[4 * ((HIBYTE(v126) ^ 0xF8D3) * v4 - ((((HIBYTE(v126) ^ 0xF8D3) * v4 * a2) >> 32) >> 12) * v3)] ^ v76 ^ *&v69[4 * ((BYTE1(v133) ^ 0x11462) * v4 - ((((BYTE1(v133) ^ 0x11462u) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * (((v132 ^ (v130 >> 7)) ^ 0xD1) * v4 + 602654208 - ((((((v132 ^ (v130 >> 7)) ^ 0xD1u) * v4 + 602654208) * a2) >> 32) >> 12) * v3)];
  v144 = v140 ^ __ROR4__(*&v69[4 * ((HIBYTE(v137) ^ 0x93) * v4 - 523519355 - (((((HIBYTE(v137) ^ 0x93) * v4 - 523519355) * a2) >> 32) >> 12) * v3)], 13);
  v145 = *&v69[4 * ((BYTE2(v137) ^ 0x81) * v4 - 1281696256 - (((((BYTE2(v137) ^ 0x81u) * v4 - 1281696256) * a2) >> 32) >> 12) * v3)];
  v146 = (v123 ^ 0xB7 ^ v117) * v4 + 1923857664;
  v147 = *&v69[4 * (v136 * v4 + 169979392 - ((((v136 * v4 + 169979392) * a2) >> 32) >> 12) * v3)];
  v148 = v146 - (((v146 * a2) >> 32) >> 12) * v3;
  v149 = (((v141 ^ 0x82BC7CE) - 137086926) ^ ((v141 ^ 0xB89B9C2F) + 1197761489) ^ ((v141 ^ 0xB036EE1F) + 1338577377)) - 2130809325;
  v150 = ((v147 ^ 0x38D21AEC) - 953293548) ^ ((v147 ^ 0x20FFF28A) - 553644682) ^ ((v147 ^ 0x18AB5D98) - 413883800);
  LOBYTE(v146) = v143 ^ BYTE1(v133);
  v151 = *&v69[4 * ((HIBYTE(v133) ^ 0x1814D) * v4 - ((((HIBYTE(v133) ^ 0x1814D) * v4 * a2) >> 32) >> 12) * v3)] ^ ((BYTE1(v126) ^ 0x85) + 1057421924) ^ *&v69[4 * ((BYTE1(v126) ^ 0xC9B6) * v4 - ((((BYTE1(v126) ^ 0xC9B6u) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * v148];
  v152 = *&v69[4 * ((BYTE1(v137) ^ 0xE) * v4 + 1483456512 - (((((BYTE1(v137) ^ 0xEu) * v4 + 1483456512) * a2) >> 32) >> 12) * v3)];
  v153 = v126 ^ v122;
  v154 = v153 ^ 0xFFFFFF50;
  v155 = *&v69[4 * ((v153 ^ 0x7F49) * v4 - ((((v153 ^ 0x7F49u) * v4 * a2) >> 32) >> 12) * v3)];
  v156 = v144 ^ (v142 + 84568072) ^ ((v142 + 84568072) >> 4) ^ ((v142 + 84568072) >> 7) ^ v149;
  v157 = v151 ^ (651599752 * (((v145 ^ 0x799C96A) + 409351830) ^ ((v145 ^ 0xF042FE8) + 284938264) ^ ((v145 ^ 0x81B537C) - 136008572)) - 310183728) ^ (81449969 * (((v145 ^ 0xA7919B0E) + 1483629810) ^ ((v145 ^ 0x3A271B2) - 60977586) ^ ((v145 ^ 0xA4B55F42) + 1531617470)) + 2031988254);
  v158 = *&v69[4 * ((BYTE2(v133) ^ 0x15195) * v4 - ((((BYTE2(v133) ^ 0x15195u) * v4 * a2) >> 32) >> 12) * v3)] ^ BYTE2(v133) ^ (v150 - 1470558736) ^ v152 ^ (16 * (v152 ^ 0x44F25B41) * (v152 ^ 0x44F25B41)) ^ (v154 - 1985082375 + (((v155 ^ 0xCE4E3E1C) + 833733092) ^ ((v155 ^ 0xD8910AEC) + 661583124) ^ ((v155 ^ 0x1659810E) - 374964494)));
  v159 = HIBYTE(v158);
  v160 = v158 >> 8;
  v161 = *&v69[4 * ((v156 ^ 0xC1) * v4 + 1753878272 - (((((v156 ^ 0xC1u) * v4 + 1753878272) * a2) >> 32) >> 12) * v3)];
  v162 = *&v69[4 * ((HIBYTE(v156) ^ 0x78) * v4 + 1305750784 - (((((HIBYTE(v156) ^ 0x78) * v4 + 1305750784) * a2) >> 32) >> 12) * v3)];
  v163 = (v138 ^ 0xBB ^ v157) * v4 - 1289422592;
  v164 = *&v69[4 * ((HIBYTE(v143) ^ 0xE752) * v4 - ((((HIBYTE(v143) ^ 0xE752) * v4 * a2) >> 32) >> 12) * v3)] ^ ((HIBYTE(v143) ^ 0x1AC057D8) + (HIBYTE(v143) ^ 0xF)) ^ *&v69[4 * ((BYTE2(v158) ^ 0x144D1) * v4 - ((((BYTE2(v158) ^ 0x144D1u) * v4 * a2) >> 32) >> 12) * v3)] ^ __ROR4__(*&v69[4 * ((BYTE1(v157) ^ 0x60) * v4 + 2078384384 - (((((BYTE1(v157) ^ 0x60u) * v4 + 2078384384) * a2) >> 32) >> 12) * v3)], 8);
  v165 = *&v69[4 * ((BYTE2(v156) ^ 0x67) * v4 - 2108414208 - (((((BYTE2(v156) ^ 0x67u) * v4 - 2108414208) * a2) >> 32) >> 12) * v3)];
  v166 = ((*&v69[4 * ((BYTE2(v143) ^ 0x1643C) * v4 - ((((BYTE2(v143) ^ 0x1643Cu) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) + (BYTE2(v143) ^ 0x17171695)) ^ *&v69[4 * ((BYTE1(v158) ^ 0xD7D3) * v4 - ((((BYTE1(v158) ^ 0xD7D3u) * v4 * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * (v163 - (((v163 * a2) >> 32) >> 12) * v3)];
  v167 = *&v69[4 * ((BYTE1(v143) ^ 0x8E) * v4 + 1398466816 - (((((BYTE1(v143) ^ 0x8Eu) * v4 + 1398466816) * a2) >> 32) >> 12) * v3)];
  v168 = *&v69[4 * ((v158 ^ 0x3381) * v4 - ((((v158 ^ 0x3381u) * v4 * a2) >> 32) >> 12) * v3)];
  v169 = (((v167 ^ 0x2F26610E) - 791044366) ^ ((v167 ^ 0x6234BD12) - 1647623442) ^ ((v167 ^ 0x4D9469E2) - 1301572066)) + 1653858811;
  v170 = v164 ^ v161 ^ (v161 >> 3) & 0x7935D49;
  v171 = v166 ^ ((((v162 ^ 0x1B3D0F3D) - 456986429) ^ ((v162 ^ 0x37525612) - 928142866) ^ ((v162 ^ 0x2CE9ECD1) - 753528017)) - 863538116);
  v172 = *&v69[4 * ((BYTE2(v157) ^ 0x82) * v4 - 833417863 - (((((BYTE2(v157) ^ 0x82u) * v4 - 833417863) * a2) >> 32) >> 12) * v3)];
  v173 = *&v69[4 * ((BYTE1(v156) ^ 0x99) * v4 + 1653435904 - (((((BYTE1(v156) ^ 0x99u) * v4 + 1653435904) * a2) >> 32) >> 12) * v3)];
  v174 = (v135 ^ 0xA2 ^ v146) * v4 + 710822912;
  v175 = v168 ^ *&v69[4 * ((HIBYTE(v157) ^ 0xB6) * v4 + 1900678656 - (((((HIBYTE(v157) ^ 0xB6) * v4 + 1900678656) * a2) >> 32) >> 12) * v3)] ^ (v168 >> 4) ^ (v168 >> 7) ^ ((((v165 ^ 0xC50F8697) + 988838249) ^ ((v165 ^ 0x9A2BA23B) + 1708416453) ^ ((v165 ^ 0x5FA29152) - 1604489554)) - 1148386537) ^ v169;
  v176 = *&v69[4 * ((v159 ^ 0x14083) * v4 - ((((v159 ^ 0x14083) * v4 * a2) >> 32) >> 12) * v3)] ^ v159 ^ v173 ^ (2 * v173) ^ *&v69[4 * (v174 - (((v174 * a2) >> 32) >> 12) * v3)] ^ ((((v172 ^ 0x8156FE8B) + 2125005173) ^ ((v172 ^ 0xFB0890FB) + 83324677) ^ ((v172 ^ 0x7AD8DB8E) - 2061032334)) + 47507114);
  v177 = HIWORD(v175);
  v178 = *&v69[4 * ((BYTE1(v175) ^ 0x3F) * v4 - 1389864960 - (((((BYTE1(v175) ^ 0x3Fu) * v4 - 1389864960) * a2) >> 32) >> 12) * v3)];
  v179 = *&v69[4 * ((BYTE1(v176) ^ 0xC1) * v4 + 942612992 - (((((BYTE1(v176) ^ 0xC1u) * v4 + 942612992) * a2) >> 32) >> 12) * v3)];
  v180 = *&v69[4 * ((BYTE2(v176) ^ 0x71) * v4 - 647472722 - (((((BYTE2(v176) ^ 0x71u) * v4 - 647472722) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((HIBYTE(v170) ^ 0x37) * v4 - 608750499 - (((((HIBYTE(v170) ^ 0x37) * v4 - 608750499) * a2) >> 32) >> 12) * v3)];
  v181 = *&v69[4 * ((v175 ^ 0x8E) * v4 + 1375287808 - (((((v175 ^ 0x8Eu) * v4 + 1375287808) * a2) >> 32) >> 12) * v3)] ^ 0xBE11626E;
  v182 = *&v69[4 * ((BYTE1(v170) ^ 0xB6) * v4 - 624233352 - (((((BYTE1(v170) ^ 0xB6u) * v4 - 624233352) * a2) >> 32) >> 12) * v3)] ^ 0x82D9648;
  v183 = *&v69[4 * ((HIBYTE(v175) ^ 0xE11A) * v4 - ((((HIBYTE(v175) ^ 0xE11A) * v4 * a2) >> 32) >> 12) * v3)] ^ HIBYTE(v175) ^ *&v69[4 * ((BYTE2(v171) ^ 0x75) * v4 - 1907529472 - (((((BYTE2(v171) ^ 0x75u) * v4 - 1907529472) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((v176 ^ 0xCB) * v4 + 1854320640 - (((((v176 ^ 0xCBu) * v4 + 1854320640) * a2) >> 32) >> 12) * v3)] ^ v182 ^ (16 * v182) & 0x4F93E60;
  v184 = *&v69[4 * ((HIBYTE(v176) ^ 0xC1) * v4 + 208611072 - (((((HIBYTE(v176) ^ 0xC1) * v4 + 208611072) * a2) >> 32) >> 12) * v3)];
  v185 = *&v69[4 * ((HIBYTE(v171) ^ 0x3558) * v4 - ((((HIBYTE(v171) ^ 0x3558) * v4 * a2) >> 32) >> 12) * v3)] ^ HIBYTE(v171) ^ *&v69[4 * ((BYTE2(v170) ^ 0x54) * v4 - 724917168 - (((((BYTE2(v170) ^ 0x54u) * v4 - 724917168) * a2) >> 32) >> 12) * v3)] ^ v179 ^ (v179 >> 2) ^ (v179 >> 3);
  v186 = *&v69[4 * ((BYTE2(v175) ^ 0xDCD9) * v4 - ((((BYTE2(v175) ^ 0xDCD9u) * v4 * a2) >> 32) >> 12) * v3)];
  v187 = (((v184 ^ 0x3DFB650F) - 1039885583) ^ ((v184 ^ 0x38264FD4) - 942034900) ^ ((v184 ^ 0x55B9F25) - 89890597)) - 305844589;
  v170 = v170;
  v188 = v180 ^ __ROR4__(*&v69[4 * (((v171 ^ v160) ^ 8) * v4 - 879896603 - ((((((v171 ^ v160) ^ 8u) * v4 - 879896603) * a2) >> 32) >> 12) * v3)], 23) ^ ((((v178 ^ 0x5535EB0B) - 1429596939) ^ ((v178 ^ 0x8410C08A) + 2079276918) ^ ((v178 ^ 0xD1A39E7F) + 777806209)) - 1785874424);
  v189 = v186 ^ ((v170 ^ 0x36) - (v170 ^ 0xB2D36C8D)) ^ *&v69[4 * ((BYTE1(v171) ^ 0xE7) * v4 - 1405317632 - (((((BYTE1(v171) ^ 0xE7u) * v4 - 1405317632) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((v170 ^ 0xD98) * v4 - (((4327423 * ((v170 ^ 0xD98) * v4)) >> 32) >> 7) * v3)] ^ (((4 * v184) ^ 0x21AD7F8) + 735992512);
  v190 = v189 ^ v187;
  LOBYTE(v160) = v186 ^ ((v170 ^ 0x36) - (v170 ^ 0x8D)) ^ v69[4 * ((BYTE1(v171) ^ 0xE7) * v4 - 1405317632 - (((((BYTE1(v171) ^ 0xE7u) * v4 - 1405317632) * a2) >> 32) >> 12) * v3)] ^ v69[4 * ((v170 ^ 0xD98) * v4 - (((4327423 * ((v170 ^ 0xD98) * v4)) >> 32) >> 7) * v3)] ^ (((4 * v184) ^ 0xF8) - 64) ^ ((((v184 ^ 0xF) - 15) ^ ((v184 ^ 0xD4) + 44) ^ ((v184 ^ 0x25) - 37)) - 109) ^ v177;
  v191 = v185 ^ v181 ^ (8 * v181) ^ (v181 << 7);
  v192 = v189 ^ ~v187;
  v193 = *&v69[4 * ((HIBYTE(v188) ^ 0xB7) * v4 - 802421976 - (((((HIBYTE(v188) ^ 0xB7) * v4 - 802421976) * a2) >> 32) >> 12) * v3)];
  v194 = *&v69[4 * ((BYTE1(v183) ^ 0xF6) * v4 + 772633600 - (((((BYTE1(v183) ^ 0xF6u) * v4 + 772633600) * a2) >> 32) >> 12) * v3)] ^ 0x66FC7B0C;
  v195 = *&v69[4 * ((v191 ^ 0xD8) * v4 + 564022528 - (((((v191 ^ 0xD8u) * v4 + 564022528) * a2) >> 32) >> 12) * v3)];
  v196 = *&v69[4 * ((HIBYTE(v191) ^ 0x8A98) * v4 - ((((HIBYTE(v191) ^ 0x8A98) * v4 * a2) >> 32) >> 12) * v3)];
  v197 = v194 ^ (16 * v194) ^ (8 * v194) ^ ((BYTE2(v190) ^ 0x3A69F1F0) + (*&v69[4 * ((BYTE2(v190) ^ 0xAFEE) * v4 - ((((BYTE2(v190) ^ 0xAFEEu) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE));
  v198 = *&v69[4 * ((BYTE1(v190) ^ 0x9B) * v4 - 670681911 - (((((BYTE1(v190) ^ 0x9Bu) * v4 - 670681911) * a2) >> 32) >> 12) * v3)];
  v199 = *&v69[4 * ((v183 ^ 0x7E) * v4 + 1947036672 - (((((v183 ^ 0x7Eu) * v4 + 1947036672) * a2) >> 32) >> 12) * v3)] ^ 0xA4FD018D;
  v200 = *&v69[4 * ((HIBYTE(v183) ^ 0xAF) * v4 - 2131593216 - (((((HIBYTE(v183) ^ 0xAF) * v4 - 2131593216) * a2) >> 32) >> 12) * v3)];
  v201 = ((v200 ^ 0xB8717C31) + 1200522191) ^ ((v200 ^ 0x77A26089) - 2007130249) ^ ((v200 ^ 0xCF55A946) + 816469690);
  v202 = v197 ^ ((((v193 ^ 0xFC4F2EDF) + 61919521) ^ ((v193 ^ 0x78B25ACA) - 2024954570) ^ ((v193 ^ 0x847BC1EB) + 2072264213)) - 1409007422);
  v203 = *&v69[4 * ((BYTE1(v188) ^ 0xEBEE) * v4 - ((((BYTE1(v188) ^ 0xEBEEu) * v4 * a2) >> 32) >> 12) * v3)];
  v204 = v199 ^ *&v69[4 * ((BYTE2(v188) ^ 0x11AC8) * v4 - ((((BYTE2(v188) ^ 0x11AC8u) * v4 * a2) >> 32) >> 12) * v3)] ^ (4 * v199) ^ (8 * v199) ^ ((((v198 ^ 0xD25FE307) + 765467897) ^ ((v198 ^ 0xD9EB04D8) + 638909224) ^ ((v198 ^ 0xB325221) - 187847201)) + 1262014051);
  v160 = v160;
  v205 = ((v195 ^ 0x3306C5E9) - 856081897) ^ ((v195 ^ 0x28D05F78) - 684744568);
  v206 = *&v69[4 * ((v160 ^ 0xC159) * v4 - ((((v160 ^ 0xC159) * v4 * a2) >> 32) >> 12) * v3)];
  v207 = ((v196 ^ 0xB65F31E7) + 1235275289) ^ ((v196 ^ 0x2817E2B1) - 672654001);
  v192 >>= 24;
  v208 = (v195 ^ 0x1B502F6F) - 458239855;
  v209 = (v196 ^ 0x9ECE66A8) + 1630640472;
  v210 = (((v203 ^ 0x9F049086) + 1627090810) ^ ((v203 ^ 0xA6A59865) + 1499096987) ^ ((v203 ^ 0x3927BD1D) - 958905629)) - 1459093750;
  v211 = v192 + 414668849;
  v212 = *&v69[4 * ((v192 ^ 0x5B25) * v4 - ((((v192 ^ 0x5B25) * v4 * a2) >> 32) >> 12) * v3)];
  v213 = *&v69[4 * ((BYTE2(v183) ^ 0x64) * v4 + 231790080 - (((((BYTE2(v183) ^ 0x64u) * v4 + 231790080) * a2) >> 32) >> 12) * v3)];
  v214 = v210 ^ ((v160 ^ 0xAE) - 1834773384 + (((v206 ^ 0xCA6BCF1D) + 898904291) ^ ((v206 ^ 0xB80065CC) + 1207933492) ^ ((v206 ^ 0x72ED1F2F) - 1928142639))) ^ (2 * v210) & 0x1C8C5290;
  v215 = -2076239705 * (((v213 ^ 0x33021B59) - 855776089) ^ ((v213 ^ 0xE46DB031) + 462573519) ^ ((v213 ^ 0xD7E91E96) + 672588138)) - 1166899022;
  v216 = v204 ^ ((HIBYTE(v191) ^ 0xFFFFFF02) - 2010870491 + (v207 ^ v209));
  v217 = *&v69[4 * ((BYTE2(v191) ^ 0xEF8E) * v4 - ((((BYTE2(v191) ^ 0xEF8Eu) * v4 * a2) >> 32) >> 12) * v3)] ^ BYTE2(v191) ^ (v201 + 152093043) ^ ((v201 + 152093043) >> 1) ^ ((v201 + 152093043) >> 5) ^ v214;
  v218 = (*&v69[4 * ((v188 ^ 0x1B6C8) * v4 - ((((v188 ^ 0x1B6C8u) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) - (v188 ^ 0x3BFDCA48);
  v219 = v202 ^ ((v205 ^ v208) + 818588528) ^ (8 * ((v205 ^ v208) + 818588528) * ((v205 ^ v208) + 818588528));
  v220 = v211 ^ ((BYTE1(v191) ^ 0xAD) - 629676499) ^ v212 ^ v218 ^ *&v69[4 * ((BYTE1(v191) ^ 0x5AF7) * v4 - ((((BYTE1(v191) ^ 0x5AF7u) * v4 * a2) >> 32) >> 12) * v3)] ^ v215 ^ (4 * (v215 ^ (142487886 * (((v213 ^ 0x751E9518) + 182545128) ^ ((v213 ^ 0x564908A0) - 1447626912) ^ ((v213 ^ 0x23D12846) + 472831930)) + 887427428)));
  v221 = ((*&v69[4 * ((BYTE2(v191) ^ 0xEF8E) * v4 - ((((BYTE2(v191) ^ 0xEF8Eu) * v4 * a2) >> 32) >> 12) * v3)] ^ BYTE2(v191) ^ (v201 - 16013) ^ ((v201 + 152093043) >> 1) ^ ((v201 + 152093043) >> 5) ^ v214) >> 8) ^ 0x59;
  v222 = *&v69[4 * ((BYTE1(v220) ^ 0x40) * v4 + 1282571776 - (((((BYTE1(v220) ^ 0x40u) * v4 + 1282571776) * a2) >> 32) >> 12) * v3)];
  v223 = *&v69[4 * ((BYTE2(v219) ^ 0x1473C) * v4 - ((((BYTE2(v219) ^ 0x1473Cu) * v4 * a2) >> 32) >> 12) * v3)];
  v224 = *&v69[4 * ((HIBYTE(v217) ^ 0x9D) * v4 - 1049906176 - (((((HIBYTE(v217) ^ 0x9D) * v4 - 1049906176) * a2) >> 32) >> 12) * v3)];
  v225 = v222 ^ *&v69[4 * ((HIBYTE(v216) ^ 0x2A) * v4 - 794695640 - (((((HIBYTE(v216) ^ 0x2A) * v4 - 794695640) * a2) >> 32) >> 12) * v3)] ^ (8 * v222) ^ (v217 + (v217 ^ 0xC83302B4) + (*&v69[4 * ((v217 ^ 0x162E2) * v4 - ((((v217 ^ 0x162E2u) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) + 1);
  v226 = *&v69[4 * ((BYTE2(v220) ^ 0x92) * v4 - 1351233280 - (((((BYTE2(v220) ^ 0x92u) * v4 - 1351233280) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((BYTE1(v217) ^ 0xA7) * v4 - 616507016 - (((((BYTE1(v217) ^ 0xA7u) * v4 - 616507016) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((v216 ^ 0x2253) * v4 - ((((v216 ^ 0x2253u) * v4 * a2) >> 32) >> 12) * v3)] ^ (v221 + 2015100953) ^ *&v69[4 * ((HIBYTE(v219) ^ 0x2459) * v4 - ((((HIBYTE(v219) ^ 0x2459) * v4 * a2) >> 32) >> 12) * v3)];
  v227 = (((v224 ^ 0x2BA0C855) - 731957333) ^ ((v224 ^ 0x4C73D02F) - 1282658351) ^ ((v224 ^ 0x6755AD84) - 1733668228)) + 1275371660;
  v228 = *&v69[4 * ((BYTE1(v219) ^ 0x120A7) * v4 - ((((BYTE1(v219) ^ 0x120A7u) * v4 * a2) >> 32) >> 12) * v3)];
  v229 = *&v69[4 * ((BYTE2(v216) ^ 0x14EBB) * v4 - ((((BYTE2(v216) ^ 0x14EBBu) * v4 * a2) >> 32) >> 12) * v3)] ^ ((BYTE2(v216) ^ 0x17) - 1145560289) ^ *&v69[4 * ((v220 ^ 0xD9) * v4 + 1869773312 - (((((v220 ^ 0xD9u) * v4 + 1869773312) * a2) >> 32) >> 12) * v3)] ^ v227;
  HIDWORD(v76) = *&v69[4 * ((BYTE2(v217) ^ 3) * v4 - 1142622208 - (((((BYTE2(v217) ^ 3u) * v4 - 1142622208) * a2) >> 32) >> 12) * v3)];
  LODWORD(v76) = HIDWORD(v76);
  v230 = *&v69[4 * ((BYTE1(v216) ^ 0x12B9) * v4 - ((((BYTE1(v216) ^ 0x12B9u) * v4 * a2) >> 32) >> 12) * v3)];
  v231 = v225 ^ ((((v223 ^ 0xDE26EDCF) + 567874097) ^ ((v223 ^ 0x40AFD155) - 1085264213) ^ ((v223 ^ 0x9E0F8964) + 1643148956)) - 925955816);
  v232 = (((v230 ^ 0x1B9C9233) - 463245875) ^ ((v230 ^ 0x4560E0AB) - 1163976875) ^ ((v230 ^ 0x5E7AC766) - 1585104742)) + 206733015;
  v233 = v229 ^ (v227 >> 3) ^ (v227 >> 5) ^ (542736283 * (((v228 ^ 0x76CD8EA2) - 1993182882) ^ ((v228 ^ 0xFD29B83A) + 47597510) ^ ((v228 ^ 0x8B628366) + 1956478106)) + 723989194);
  v234 = (v76 >> 13) ^ __ROR4__(*&v69[4 * ((HIBYTE(v220) ^ 0xE6) * v4 - 1374412288 - (((((HIBYTE(v220) ^ 0xE6) * v4 - 1374412288) * a2) >> 32) >> 12) * v3)], 29) ^ *&v69[4 * ((v219 ^ 0x3462) * v4 - ((((v219 ^ 0x3462u) * v4 * a2) >> 32) >> 12) * v3)] ^ v232;
  v235 = ((v229 ^ (v227 >> 3) ^ (v227 >> 5) ^ (32667 * (((v228 ^ 0x8EA2) + 29022) ^ ((v228 ^ 0xB83A) + 18374) ^ ((v228 ^ 0x8366) + 31898)) + 13002)) >> 8);
  v236 = v69;
  v237 = *&v69[4 * ((v234 ^ 0x4E) * v4 - 1312601600 - (((((v234 ^ 0x4Eu) * v4 - 1312601600) * a2) >> 32) >> 12) * v3)];
  v238 = __ROR4__(*&v69[4 * ((BYTE2(v231) ^ 0xDE) * v4 - 1181253888 - (((((BYTE2(v231) ^ 0xDEu) * v4 - 1181253888) * a2) >> 32) >> 12) * v3)], 21) ^ 0xF0FCEA84;
  v239 = *&v236[4 * ((HIBYTE(v233) ^ 0x9F03) * v4 - ((((HIBYTE(v233) ^ 0x9F03) * v4 * a2) >> 32) >> 12) * v3)] ^ HIBYTE(v233) ^ __ROR4__(*&v236[4 * ((BYTE1(v226) ^ 0xE3) * v4 + 672191232 - (((((BYTE1(v226) ^ 0xE3u) * v4 + 672191232) * a2) >> 32) >> 12) * v3)], 4) ^ v237 ^ v238 ^ (16 * v237) ^ (2 * v238);
  v240 = *&v69[4 * ((HIBYTE(v226) ^ 0x10) * v4 - 841174380 - (((((HIBYTE(v226) ^ 0x10) * v4 - 841174380) * a2) >> 32) >> 12) * v3)] ^ ((HIBYTE(v226) ^ 0x25) - (HIBYTE(v226) ^ 0x2D40AAD2)) ^ *&v69[4 * ((BYTE2(v234) ^ 5) * v4 - 1034453504 - (((((BYTE2(v234) ^ 5u) * v4 - 1034453504) * a2) >> 32) >> 12) * v3)] ^ ((*&v236[4 * ((v231 ^ 0x8414) * v4 - ((((v231 ^ 0x8414u) * v4 * a2) >> 32) >> 12) * v3)] ^ 0x86B5FE) + (((v231 ^ 0xD7) - 1960113783) ^ v231 ^ 0xD7)) ^ *&v236[4 * ((BYTE1(v233) ^ 0xE9C9) * v4 - ((((BYTE1(v233) ^ 0xE9C9u) * v4 * a2) >> 32) >> 12) * v3)];
  v241 = STACK[0x208];
  v242 = (v221 ^ 0x10841 ^ v226) * v4;
  v243 = *&v69[4 * ((BYTE2(v226) ^ 0xC0) * v4 - 1575297024 - (((((BYTE2(v226) ^ 0xC0u) * v4 - 1575297024) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((BYTE1(v234) ^ 0x36) * v4 + 1993394688 - (((((BYTE1(v234) ^ 0x36u) * v4 + 1993394688) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((HIBYTE(v231) ^ 0x54) * v4 - 786939123 - (((((HIBYTE(v231) ^ 0x54) * v4 - 786939123) * a2) >> 32) >> 12) * v3)] ^ *&v69[4 * ((v233 ^ 0x5D) * v4 + 1645709568 - (((((v233 ^ 0x5Du) * v4 + 1645709568) * a2) >> 32) >> 12) * v3)];
  v244 = *&v69[4 * ((BYTE1(v231) ^ 0x20) * v4 + 818991616 - (((((BYTE1(v231) ^ 0x20u) * v4 + 818991616) * a2) >> 32) >> 12) * v3)];
  v245 = HIBYTE(v234) ^ BYTE2(v233) ^ *&v236[4 * ((HIBYTE(v234) ^ 0x27) * v4 - 771426089 - (((((HIBYTE(v234) ^ 0x27) * v4 - 771426089) * a2) >> 32) >> 12) * v3)] ^ v244 ^ *&v236[4 * (v242 - (((v242 * a2) >> 32) >> 12) * v3)] ^ (v244 >> 2) & 0x2D72A31 ^ *&v236[4 * ((BYTE2(v233) ^ 0x11377) * v4 - ((((BYTE2(v233) ^ 0x11377u) * v4 * a2) >> 32) >> 12) * v3)];
  v246 = v240 ^ ((v235 ^ 0x9D) - 414036253);
  LOBYTE(v238) = v8[5363 * (BYTE2(v239) ^ 0x32) + 13729280 - 20608 * (((1667301 * (5363 * (BYTE2(v239) ^ 0x32u) + 13729280)) >> 32) >> 3)];
  LOBYTE(v238) = (((v238 ^ 0x1D) - 29) ^ ((v238 ^ 0x1A) - 26) ^ ((v238 ^ 0x20) - 32)) + 114;
  v247 = STACK[0x230];
  v247[9] = v238 ^ (2 * v238) ^ 0x6D;
  v248 = v8[5363 * (BYTE1(v243) ^ 0x231C) - 20608 * (((106707263 * (5363 * (BYTE1(v243) ^ 0x231Cu))) >> 32) >> 9)];
  v247[6] = ((v248 >> 6) | (4 * v248)) ^ 0x9E ^ (((v248 >> 6) | (4 * v248)) >> 1) & 0x51;
  v247[1] = v8[5363 * (BYTE2(v246) ^ 0x10) + 6864640 - 20608 * (((1667301 * (5363 * (BYTE2(v246) ^ 0x10u) + 6864640)) >> 32) >> 3)] ^ 0x71;
  v247[14] = ~v8[5363 * (BYTE1(v245) ^ 0xAC) + 12356352 - 20608 * (((1667301 * (5363 * (BYTE1(v245) ^ 0xACu) + 12356352)) >> 32) >> 3)];
  *v247 = v8[5363 * (HIBYTE(v246) ^ 0x32) + 34323200 - 20608 * (((106707263 * (5363 * (HIBYTE(v246) ^ 0x32) + 34323200)) >> 32) >> 9)] ^ 0x72;
  v247[4] = ((HIBYTE(v243) ^ 0xC5) - 115) ^ ((HIBYTE(v243) ^ 0xC5) - ((2 * (HIBYTE(v243) ^ 0xC5)) & 0xDF) + 111) ^ 0xD6 ^ v8[5363 * (HIBYTE(v243) ^ 0x6F) + 89245683 - 20608 * (((213414525 * (5363 * (HIBYTE(v243) ^ 0x6F) + 89245683)) >> 32) >> 10)];
  v247[10] = v8[5363 * (BYTE1(v239) ^ 0x1322) - 20608 * (((1667301 * (5363 * (BYTE1(v239) ^ 0x1322u))) >> 32) >> 3)];
  v249 = v8[5363 * (v239 ^ 0x77) + 102996415 - 20608 * (((213414525 * (5363 * (v239 ^ 0x77u) + 102996415)) >> 32) >> 10)];
  v250 = 97 * (((v249 ^ 0xFFFFFFD2) + 46) ^ ((v249 ^ 0xFFFFFFD7) + 41) ^ ((v249 ^ 0x22) - 34)) - 57;
  v247[11] = v250 ^ (v250 >> 2) & 0x3E ^ 0xFC;
  v247[5] = v8[5363 * (BYTE2(v243) ^ 0x73) + 107142014 - 20608 * (((213414525 * (5363 * (BYTE2(v243) ^ 0x73u) + 107142014)) >> 32) >> 10)] ^ 0x6E;
  v247[12] = v8[5363 * (HIBYTE(v245) ^ 0x18C) - 20608 * (((1667301 * (5363 * (HIBYTE(v245) ^ 0x18C))) >> 32) >> 3)] ^ 0x46;
  v247[13] = v8[5363 * (BYTE2(v245) ^ 0x1A3C) - 20608 * (((106707263 * (5363 * (BYTE2(v245) ^ 0x1A3Cu))) >> 32) >> 9)] ^ 0x35;
  LOBYTE(v250) = v8[5363 * (v243 ^ 0x3181) - 20608 * (((213414525 * (5363 * (v243 ^ 0x3181u))) >> 32) >> 10)];
  v247[7] = ((((v250 ^ 0x1D) - 29) ^ ((v250 ^ 0x37) - 55) ^ ((v250 ^ 0xD) - 13)) + 79) ^ 0x87;
  v247[15] = ((v245 ^ 0x90) + (~(2 * v245) | 0xB1) + 40) ^ 0x96 ^ v8[5363 * (v245 ^ 0x1F14) - 20608 * (((106707263 * (5363 * (v245 ^ 0x1F14u))) >> 32) >> 9)];
  v247[2] = ((BYTE1(v246) ^ 0xA0) - ((2 * (BYTE1(v246) ^ 0xA0)) & 0x4E) + 39) ^ 0x2C ^ v8[5363 * (BYTE1(v246) ^ 0x33B6) - 20608 * (((213414525 * (5363 * (BYTE1(v246) ^ 0x33B6u))) >> 32) >> 10)];
  v247[3] = v8[5363 * ((v240 ^ ((v235 ^ 0x9D) - 29)) ^ 0x1577) - 20608 * (((1667301 * (5363 * ((v240 ^ ((v235 ^ 0x9D) - 29)) ^ 0x1577u))) >> 32) >> 3)] ^ 0xF1;
  v247[8] = ((HIBYTE(v239) ^ 0xBF) - ((2 * (HIBYTE(v239) ^ 0xBF)) & 0x4E) + 39) ^ v8[5363 * (HIBYTE(v239) ^ 0x3E6F) - 20608 * (((213414525 * (5363 * (HIBYTE(v239) ^ 0x3E6F))) >> 32) >> 10)] ^ 0x1C;
  return (*(STACK[0x238] + 8 * ((14623 * (STACK[0x248] == 768)) ^ LODWORD(STACK[0x224]))))(v241);
}

uint64_t sub_1003E2E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(STACK[0x6A0] + 8 * (v7 + 5104));
  LODWORD(STACK[0x490]) = 22480932;
  LODWORD(STACK[0x4B4]) = 1867876295;
  return v8(a1, a2, a3, a4, a5, a6, a7, 104);
}

uint64_t sub_1003E2EA8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v8 = (v5 ^ 0xD745E84F) & (2 * (((v6 - 2096503563) & 0x7CF63E37 ^ 0x9841F4BB) & v5)) ^ ((v6 - 2096503563) & 0x7CF63E37 ^ 0x9841F4BB) & v5;
  v9 = ((2 * (v5 ^ 0xD745FC5B)) ^ 0x9E086DA8) & (v5 ^ 0xD745FC5B) ^ (2 * (v5 ^ 0xD745FC5B)) & 0x4F0436D4;
  v10 = (v9 ^ 0x2002400) & (4 * v8) ^ v8;
  v11 = ((4 * (v9 ^ 0x41041254)) ^ 0x3C10DB50) & (v9 ^ 0x41041254) ^ (4 * (v9 ^ 0x41041254)) & 0x4F0436D0;
  v12 = (v11 ^ 0xC001254) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x43042484)) ^ 0xF0436D40) & (v11 ^ 0x43042484) ^ (16 * (v11 ^ 0x43042484)) & 0x4F0436C0;
  v14 = v12 ^ 0x4F0436D4 ^ (v13 ^ 0x40002494) & (v12 << 8);
  v15 = v5 ^ (2 * ((v14 << 16) & 0x4F040000 ^ v14 ^ ((v14 << 16) ^ 0x36D40000) & (((v13 ^ 0xF041294) << 8) & 0x4F040000 ^ 0x4B000000 ^ (((v13 ^ 0xF041294) << 8) ^ 0x4360000) & (v13 ^ 0xF041294)))) ^ 0xEBE9372E;
  v16 = 139493411 * ((((2 * &a3) | 0x25DBF818) - &a3 + 1829897204) ^ 0x9EC01D49);
  a3 = a1;
  a4 = v15 - v16;
  a5 = (v6 + 1143842457) ^ v16;
  v17 = (*(v7 + 8 * (v6 ^ 0xD701)))(&a3);
  return (*(v7 + 8 * v6))(v17);
}

uint64_t sub_1003E30E4@<X0>(unsigned int a1@<W8>)
{
  LOBYTE(STACK[0x39F]) = a1 > v2 - 16968;
  LODWORD(STACK[0x518]) = *(v1 + 16);
  return (*(v3 + 8 * v2))();
}

uint64_t sub_1003E31FC(int a1, unint64_t a2, int a3)
{
  v6 = v3 - 996805650;
  v7 = a1 - 996805650 < ((v4 - 34104) | 0x8000u) - 779990285;
  v8 = (v6 < 0xD1830BD9) ^ v7;
  v9 = a1 - 996805650 > v6;
  if (!v8)
  {
    v7 = v9;
  }

  LOBYTE(STACK[0x9B3]) = v7;
  v10 = *(v5 + 8 * ((54 * v7) ^ v4));
  LODWORD(STACK[0x7A0]) = a1;
  LODWORD(STACK[0x798]) = v7;
  STACK[0x7E0] = a2;
  LODWORD(STACK[0x790]) = a3;
  return v10();
}

uint64_t sub_1003E32A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = LODWORD(STACK[0x658]) ^ 0x7C0;
  LODWORD(STACK[0x688]) = v6 - 1614465189;
  LODWORD(STACK[0x5C8]) = 16 * LOBYTE(STACK[0x1029]);
  v8 = *(STACK[0x6A0] + 8 * v7);
  LODWORD(STACK[0x680]) = a5;
  LODWORD(STACK[0x698]) = -1946452735;
  LODWORD(STACK[0x530]) = v7 - 2954;
  LODWORD(STACK[0x5C0]) = v7 - 13018;
  LODWORD(STACK[0x5B8]) = (v7 + 894546050) ^ 0x3551D182;
  return v8(36344, 894559023, 287, a4, 3304, a6, 3776);
}

uint64_t sub_1003E3388@<X0>(int a1@<W8>)
{
  v4 = ((a1 + LODWORD(STACK[0x1A6C]) + 1479227538) | (((a1 + LODWORD(STACK[0x1A6C]) + 1479227538) < 0xED0B152A) << 32)) - 3074250621u;
  v5 = STACK[0x17B0] - 0x61E4F89B27D8D337 + ((v1 - 36568) ^ 0x283Eu);
  v6 = v4 < 0x35CDBDA9;
  v7 = v4 > v5;
  if (v5 < 0x35CDBDA9 != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = v2;
  }

  LODWORD(STACK[0xB2C]) = v8;
  return (*(v3 + 8 * ((60 * v7) ^ v1)))();
}

uint64_t sub_1003E34A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58, unint64_t a59)
{
  STACK[0x250] = 0;
  STACK[0x210] = *(v61 + 8 * v59);
  return (*(v61 + 8 * ((((v60 - 4689) ^ 0x329B) * (a59 < a58)) ^ (v60 - 13557))))(a1, a2, 134811904, 1888345281, 0xC31ECAD93E830103, -27770, 1015798979, 2619194244);
}

uint64_t sub_1003E3580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  *(v44 + 24) = a1;
  v45 = STACK[0x2D8];
  *(*(STACK[0x2D8] + 24) + 32) = *(STACK[0x2D8] + 32);
  *(STACK[0x2E0] + 40) = *(v45 + 8) + *(STACK[0x2E0] + 40) - 0x3CE25E0EC5200378;
  v46 = LOBYTE(STACK[0x5EF]);
  v47 = (v46 ^ 0xC29412F8602AA4A4) + 0x3D6BED079FD4EEF8;
  *(v45 + 8) = 0x79C4BC1D8A4006F0 - *(v45 + 8);
  *(v45 + 16) = (((v46 ^ 0xD43F09A717932990) + 0x2BC0F658E86CD670) ^ ((v46 ^ 0x16AB1B5F77B98D7FLL) - 0x16AB1B5F77B98D7FLL) ^ ((v41 - 17406) + v47)) + 0x73B4913AF7C22B6FLL;
  *a41 = 0x3CE25E0EC5200378;
  STACK[0x570] = v42 + 0x13F2B408A9FF9D84;
  v48 = *(STACK[0x3D0] + 8 * (v41 ^ (231 * (v42 == 0xEC0D4BF75600627CLL))));
  STACK[0x380] = &STACK[0x5EC];
  STACK[0x2E8] = v45;
  STACK[0x348] = v43;
  return v48(v48, v47, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1003E3794@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v9 = v2 < v6;
  *(v3 + (a2 - 865350230)) = *(a1 + v5);
  if (v9 == v5 + 1 > v4)
  {
    v9 = v5 - 1700664526 < v2;
  }

  return (*(v8 + 8 * ((v9 * (v7 - 6299)) ^ v7)))();
}

uint64_t sub_1003E38EC()
{
  v1 = (LOBYTE(STACK[0x3807]) - 51) * (v0 - 74) - 76 * v0 - 91;
  v2 = v1 & 0xFFFFFFE7 ^ 0xFFFFFFCA;
  v3 = STACK[0xF10];
  v4 = v1 ^ 0x52;
  v5 = v1 ^ (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * (v4 & (2 * ((v1 << (STACK[0xF10] - 58)) & (v1 ^ 2) & 0x26 ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ 0xB8;
  v6 = LODWORD(STACK[0x1AA8]);
  *(STACK[0x7D38] + v6) = v5;
  LODWORD(v6) = v6 + 1;
  LODWORD(STACK[0x1AA8]) = v6;
  return (*(STACK[0xF18] + 8 * ((120 * (v6 > 0xF)) ^ (v3 - 28833))))();
}

uint64_t sub_1003E3A30@<X0>(int a1@<W8>)
{
  STACK[0x1DC0] = v3;
  LODWORD(STACK[0x3418]) = v4;
  LODWORD(STACK[0x4F14]) = v5;
  LODWORD(STACK[0x6168]) = v1;
  LODWORD(STACK[0x188C]) = a1;
  return (*(STACK[0xF18] + 8 * ((2160 * (v6 == (v2 ^ 0xD266) - 371916370)) ^ v2)))();
}

uint64_t sub_1003E3B08()
{
  v1 = STACK[0xF18];
  STACK[0x2308] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 5112 + v0 + 19388)))();
}

uint64_t sub_1003E3B54()
{
  v2 = v1 + v0;
  v3 = 19 * ((v1 + v0) ^ 0x654);
  v4 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v2);
  return (*(v4 + 8 * (v2 + v3 - 1893)))();
}

uint64_t sub_1003E3BD8()
{
  STACK[0x2DA0] = *(v1 - 0x10A99C80114D147FLL);
  STACK[0x43F8] = STACK[0x33F0];
  STACK[0x6160] = 0;
  LODWORD(STACK[0x72A4]) = 1414226292;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003E3CD0()
{
  v1 = STACK[0x358];
  v2 = (*(STACK[0x358] + 8 * (v0 + 32190)))(1032);
  STACK[0x458] = v2;
  return (*(v1 + 8 * (((((v0 + 105) ^ (v2 == 0)) & 1) * (((2 * v0) ^ 0xCA82) - 20905)) ^ v0)))();
}

uint64_t sub_1003E3D70@<X0>(int a1@<W8>)
{
  v1 = STACK[0x7A78];
  *(v1 + 332) = *STACK[0x8D20];
  *(v1 + 324) = -371931376;
  LODWORD(STACK[0x27D4]) = 1997798456;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1003E3DC0()
{
  v1 = STACK[0xF18];
  STACK[0x1C80] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 24906) ^ v0)))(&STACK[0xB000]);
}

uint64_t sub_1003E3E24()
{
  v1 = STACK[0xF18];
  STACK[0x61A0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 23096 + (v0 ^ 0x8854))))();
}

uint64_t sub_1003E3EA0@<X0>(__int16 a1@<W8>)
{
  v2 = v1 + 13654;
  v3 = *(STACK[0x8B28] - 0x427A3CD3E8C5DA2FLL);
  v4 = STACK[0x94A8];
  v5 = 139493411 * ((((2 * (&STACK[0x10000] + 3800)) | 0x366708B6) - (&STACK[0x10000] + 3800) + 1691122597) ^ 0x971E651E);
  LODWORD(STACK[0x10ED8]) = v2 - v5 + 11617;
  LOWORD(STACK[0x10EFC]) = -32733 * ((((2 * (&STACK[0x10000] + 3800)) | 0x8B6) - (&STACK[0x10000] + 3800) + 31653) ^ 0x651E) + (a1 ^ 0xED7D) + ((2 * a1) & 0xDAFA) + 32731;
  LODWORD(STACK[0x10EF8]) = v5 + 1945538087 * v4 + 777074195;
  STACK[0x10EE0] = &STACK[0x2A8C];
  STACK[0x10EF0] = v3;
  LODWORD(STACK[0x10EE8]) = v5 - 231256020;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 18204)))(&STACK[0x10ED8]);
  v8 = STACK[0x10F00];
  LODWORD(STACK[0x1A64]) = STACK[0x10F00];
  return (*(v6 + 8 * ((2023 * (v8 == ((v2 + 1017445392) & 0xC35AAC6F) + 1497657315)) ^ v2)))(v7);
}

uint64_t sub_1003E3FEC@<X0>(uint64_t a1@<X8>)
{
  STACK[0x5C50] = ((((a1 << (((v1 - 50) | 0x33) ^ 0x38)) ^ 0x9EBCB34E28755233) + 0x417B6C5AD14CEDD4) ^ (((a1 << (((v1 - 50) | 0x33) ^ 0x38)) ^ 0xEF61A4AFDDE7FCFCLL) + 0x30A67BBB24DE431DLL) ^ (((a1 << (((v1 - 50) | 0x33) ^ 0x38)) ^ 0x71DD17E6BB3C9647) - 0x51E5370DBDFAD658)) + 0x5B19622655C50F59;
  LODWORD(STACK[0x1374]) = 592073700;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x2AD75877 ^ (14845 * (v1 > 0xA5C8EFB6)))))();
}

uint64_t sub_1003E40EC@<X0>(uint64_t a1@<X8>)
{
  v3 = (STACK[0x8880] + 136);
  if (!STACK[0x8880])
  {
    v3 = STACK[0x76B0];
  }

  *v3 = *(a1 + 136);
  *(a1 + 136) = 0;
  v4 = STACK[0x6AF0];
  v5 = (((*(v4 + 8) ^ 0xF1D70427) + 237566937) ^ ((*(v4 + 8) ^ 0x2CB83E82) - 750272130) ^ ((*(v4 + 8) ^ 0x34BAFDB4) - 884669876)) + ((5 * (v2 ^ 0x56E1)) ^ 0x5C6611E1);
  *(v4 + 8) = v5 ^ ((v5 ^ (((v2 + 2097251366) & 0x82FE8F3B) + 604918647)) - 1453207131) ^ ((v5 ^ 0x85D189D1) + 146704072) ^ ((v5 ^ 0xCB03874) - 2116077725) ^ ((v5 ^ 0xDFFF9FFE) + 1385205993) ^ 0x9B4537F8;
  return (*(STACK[0xF18] + 8 * (((2 * (*v1 == 0)) | (4 * (*v1 == 0))) ^ v2)))();
}

uint64_t sub_1003E4248()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 115;
  v3 = STACK[0xF10] - 18342;
  v4 = STACK[0xB1A8];
  v5 = 1603510583 * ((&STACK[0x10ED8] - 2 * (&STACK[0x10ED8] & 0x24F18B50845F4960) - 0x5B0E74AF7BA0B699) ^ 0x9B009CBC13847BCCLL);
  v6 = STACK[0xF10] - v5 - 29881;
  STACK[0x10F08] = STACK[0xB1B8];
  LODWORD(STACK[0x10ED8]) = v6;
  STACK[0x10EE0] = 0;
  STACK[0x10EE8] = v4;
  STACK[0x10EF8] = v5 + 0x1D5BAA6B483C089DLL;
  STACK[0x10EF0] = v5 + 0x787CF1E15A2A6CC2;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v1 ^ 0x402D)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((62 * (((v2 ^ (v1 + 26)) ^ (LODWORD(STACK[0x10F00]) == v0)) & 1)) ^ v3)))(v8);
}

uint64_t sub_1003E456C@<X0>(int a1@<W8>)
{
  v4 = 906386353 * STACK[0x288];
  *(v3 - 108) = (a1 + 1959518848) ^ v4;
  *(v3 - 152) = (a1 + 1959518692) ^ v4;
  *(v3 - 144) = 2607695012u - v4;
  *(v3 - 136) = v4 + 1;
  *(v3 - 116) = ((a1 + 1959518692) ^ 0x12E5) + v4;
  *(v3 - 112) = v4 + a1 + 800686711;
  *(v3 - 128) = (v2 + 741418054) ^ v4;
  v5 = (*(v1 + 8 * (a1 + 24119)))(v3 - 152);
  return (*(v1 + 8 * *(v3 - 120)))(v5);
}

uint64_t sub_1003E4724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, unsigned int a7@<W8>)
{
  v16 = (*(v11 + 4 * a6) ^ v15) * ((v14 ^ v9) - 771534640);
  *(v11 + 4 * a6) = v16;
  v17 = *(v12 + 4 * a7) - 257 * (((*(v12 + 4 * a7) * v13) >> 32) >> 8);
  v18 = *(&off_1010A0B50 + v14 - 12640) - 1780851438;
  STACK[0x218] = v18;
  *(v11 + 4 * a6) = ((*&v18[4 * v17] + v7) * v10) ^ v16;
  return (*(STACK[0x228] + 8 * (v14 ^ ((v8 == 13) * v9))))(a1, a2, a3, a4, a5, (v14 ^ v9) - 6017);
}

uint64_t sub_1003E48A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(STACK[0xF18] + 8 * v5);
  v7 = STACK[0x8D30];
  LODWORD(STACK[0xE80]) = v5 - 9148;
  return v6(4294967041, a2, v7, 3732271616, a5, 9924, LODWORD(STACK[0xD60]), 0x5A7D67FDA7C70A5CLL);
}

uint64_t sub_1003E493C()
{
  v1 = STACK[0x93F0];
  v2 = LODWORD(STACK[0x8D3C]) * (v0 - 1776748843) - 1378563772;
  v3 = (((LODWORD(STACK[0x6BE8]) ^ 0xF3F4BFB) - 255806459) ^ ((LODWORD(STACK[0x6BE8]) ^ 0x6BF7E9A0) - 1811409312) ^ ((LODWORD(STACK[0x6BE8]) ^ 0x8D1D654A) + 1927453366)) + 1722579672;
  v4 = 155453101 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x2FDEE5F5) + ((&STACK[0x10000] + 3800) | 0xD0211A0A))) ^ 0xC9F8FE3A);
  LODWORD(STACK[0x10F04]) = v4 + 2069619737;
  LODWORD(STACK[0x10EF4]) = v3 ^ v4;
  LODWORD(STACK[0x10EF0]) = v4 ^ 0xE40DFA59;
  STACK[0x10EF8] = 0;
  STACK[0x10F10] = v1;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0xE5F5) + ((&STACK[0x10000] + 3800) | 0x1A0A))) ^ 0xFE3A);
  LODWORD(STACK[0x10F08]) = v0 - v4 - 39867269;
  STACK[0x10EE0] = &STACK[0x156C];
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  LODWORD(STACK[0x10ED8]) = v2 ^ v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 ^ 0x6C4F69FA)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((41014 * (v0 < 0x7F1FE95D)) ^ (v0 - 1817147931))))(v6);
}

uint64_t sub_1003E4B9C()
{
  v2 = STACK[0x94BC];
  v3 = *(v0 + 60);
  STACK[0x13E0] = v0 + 60;
  return (*(STACK[0xF18] + 8 * (((v2 < v3) * (((v1 - 37813) | 0x22F3) + 4010)) ^ v1)))();
}

uint64_t sub_1003E4BF4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x5284];
  v3 = STACK[0x89A0];
  v4 = STACK[0x1C58];
  v5 = 634647737 * (((&STACK[0x10ED8] | 0xB19779DA86D7C66DLL) - (&STACK[0x10ED8] | 0x4E68862579283992) + 0x4E68862579283992) ^ 0x6B4CD635EB41E991);
  LODWORD(STACK[0x10EEC]) = (a1 + 198615317) ^ v5;
  STACK[0x10EF0] = &STACK[0x49E8];
  STACK[0x10F10] = 0;
  STACK[0x10ED8] = v4;
  STACK[0x10EE0] = (v3 ^ 0xDB414AE13ADC4087) - v5;
  LODWORD(STACK[0x10EFC]) = v5 + ((v1 - 942) ^ 0x486DF078) * v2 - 1273174928;
  LODWORD(STACK[0x10EF8]) = v1 - v5 - 417234542;
  STACK[0x10F08] = 0;
  STACK[0x10F00] = &STACK[0x10B4];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 + 16360)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((10005 * (LODWORD(STACK[0x10EE8]) == -371865839)) ^ (v1 - 31660))))(v7);
}

uint64_t sub_1003E4E24(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = 32639;
  a1.n128_u8[2] = 127;
  a1.n128_u8[3] = 127;
  a1.n128_u8[4] = 127;
  a1.n128_u8[5] = 127;
  a1.n128_u8[6] = 127;
  a1.n128_u8[7] = 127;
  a2.n128_u16[0] = -7454;
  a2.n128_u8[2] = -30;
  a2.n128_u8[3] = -30;
  a2.n128_u8[4] = -30;
  a2.n128_u8[5] = -30;
  a2.n128_u8[6] = -30;
  a2.n128_u8[7] = -30;
  return (*(STACK[0xF18] + 8 * v2))(a1, a2);
}

uint64_t sub_1003E4E60@<X0>(_DWORD *a1@<X8>)
{
  a1[9] = v1;
  a1[11] = v4;
  a1[24] = v3;
  v5 = (((v3 ^ 0x94535007BF6F9C65) + 0x6BACAFF84090639BLL) ^ ((v3 ^ 0x7F152A10E265BE08) - 0x7F152A10E265BE08) ^ (((v2 - 1179486098) & 0x464DFB7F ^ 0x14B985E84B2091BFLL) + (v3 ^ 0xEB467A17B4DFE57CLL))) + 0x3AE1413AF7325DD3;
  STACK[0x7990] = v5;
  STACK[0x5C50] = v5;
  LODWORD(STACK[0x1374]) = -933667193;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1003E5014()
{
  *v2 = 0;
  STACK[0x5C50] = ((v0 + 29678) ^ 0x3AE1413AF732D6E8) + (((v1 ^ 0x569DF9679B46FDEELL) - 0x569DF9679B46FDEELL) ^ ((v1 ^ 0x7856800D8ADF9E7BLL) - 0x7856800D8ADF9E7BLL) ^ ((v1 ^ 0x2ECB796AF84CA484) - 0x2ECB796AF84CA484));
  LODWORD(STACK[0x1374]) = -977747122;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003E5124()
{
  v2 = v0 + 1274321345;
  v3 = v0 + 29770;
  v4 = *(STACK[0x6258] + 408);
  v5 = 1603510583 * ((&STACK[0x10000] + 3800) ^ 0x97DB32AB);
  v6 = (*(STACK[0x6258] + 456) ^ 0xE4092261) + v5;
  LODWORD(STACK[0x10EE4]) = ((((*(STACK[0x6258] + 336) ^ 0xE48FD313) + 460336365) ^ ((*(STACK[0x6258] + 336) ^ 0x9FC7E7AA) + 1614288982) ^ ((*(STACK[0x6258] + 336) ^ 0xF9091DBF) + (v3 ^ 0x6F6697A))) - 1460811449) ^ v5;
  LODWORD(STACK[0x10EE8]) = v5 - 1848409876 + v2;
  LODWORD(STACK[0x10EDC]) = v6;
  LODWORD(STACK[0x10ED8]) = 991889963 * (((v4 ^ 0x2478B99D) - 611891613) ^ ((v4 ^ 0x541590D7) - 1410699479) ^ ((v4 ^ 0xF22C004C) + 231997364)) - v5 - 481434718;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 - 1274274952)))(&STACK[0x10ED8]);
  v9 = STACK[0x10EE0];
  v10 = (2 * (v9 ^ 0xA0B7DB12) + 1074012160) & (v9 ^ 0xA0B7DB12);
  v11 = (2 * (v9 ^ 0x12)) & (v9 ^ 0x12) & (4 * (((2 * v9) & 0x24 | 0x12) & v9)) ^ (((2 * v9) & 0x24 | 0x12) & v9 | 0x3FC3DC00);
  v12 = (4 * v10 - 1072947200) & v10;
  v13 = (((16 * v11) ^ 0xC03C0000) & v12 | (16 * v11) & 0x3FC3DC00) ^ v11 & 0x3C21CFE;
  v14 = (((16 * v12) | 0xC03C0000) & v12 | (16 * v12) & 0x3C21C00) ^ 0x3C21C00;
  v15 = (v13 << 8) & 0x3FC3DC00 ^ v13 ^ ((v13 << 8) ^ 0xC3DC0000) & v14;
  *(STACK[0x88D8] + 16 * v1 + 8) = LODWORD(STACK[0x10EE0]) ^ (2 * ((v15 << 16) & 0x3FC30000 ^ v15 ^ ((v15 << 16) ^ 0x5C000000) & ((v14 << 8) & 0x3FC30000 ^ 0x3C030000 ^ ((v14 << 8) ^ 0x43DC0000) & v14))) ^ 0x981390CF09E2D54;
  return (*(v7 + 8 * (v2 ^ 0x4BF4A643 ^ (15133 * (v2 == 490917325)))))(v8);
}

uint64_t sub_1003E53F0@<X0>(int a1@<W8>)
{
  *(v1 + 256) = 1;
  *(v1 + 288) = STACK[0x14B8];
  *(v1 + 280) = STACK[0x87E0];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1003E542C()
{
  LODWORD(STACK[0xB79C]) = v0;
  LODWORD(STACK[0x75C0]) = v1;
  return (*(STACK[0xF18] + 8 * (((((v0 == 79829760) ^ (v2 + 111)) & 1) * ((v2 ^ 0xAAE7) - 7947)) ^ v2)))();
}

uint64_t sub_1003E5490@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W8>)
{
  v6 = STACK[0x2BC];
  LODWORD(STACK[0x510]) = STACK[0x298];
  LODWORD(STACK[0x4FC]) = v4;
  LODWORD(STACK[0x500]) = v3;
  LODWORD(STACK[0x504]) = a2;
  LODWORD(STACK[0x508]) = a1;
  *STACK[0x560] = a3;
  return (*(v5 + 8 * (v6 - 6086)))();
}

uint64_t sub_1003E5550()
{
  v0 = STACK[0xF10] - 29040;
  v1 = STACK[0x6360];
  *(v1 + 8) = 0;
  *(v1 + 4) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003E5580()
{
  v7 = (v4 - 672771172) & 0x28197BEB;
  v8 = (v4 + 1720263810) & v5;
  v9 = v4 + v6;
  v10 = v4 ^ v0;
  v11 = STACK[0xF18];
  v12 = (*(STACK[0xF18] + 8 * v10))(v3);
  return (*(v11 + 8 * ((((v8 ^ v2) + v7) * (v1 == 0)) ^ v9)))(v12);
}

uint64_t sub_1003E55EC()
{
  v0 = *(STACK[0xF18] + 8 * SLODWORD(STACK[0xE80]));
  LODWORD(STACK[0xE70]) = LODWORD(STACK[0xE80]) ^ 0xB407;
  return v0(LODWORD(STACK[0xEC0]), 9924);
}

uint64_t sub_1003E5674@<X0>(void *a1@<X8>)
{
  *a1 = *(STACK[0x8C20] + 16);
  *v1 = v3;
  return (*(STACK[0xF18] + 8 * (v2 & 0xD4543FFF)))();
}

uint64_t sub_1003E5E04()
{
  v1 = STACK[0xF18];
  STACK[0x67B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 - 3960) | 0x4129) ^ 0x16D) + v0)))();
}

uint64_t sub_1003E5E40()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 474335344;
  v2 = STACK[0xF10] + 11093;
  v3 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0x54838503) + (~(&STACK[0x10000] + 3800) | 0xAB7C7AFC)) ^ 0xEE936490);
  v4 = 1446135777 * LODWORD(STACK[0x23B4]) - v3 + 2011904846;
  STACK[0x10EE0] = *(STACK[0x75F8] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10EDC]) = v4;
  LODWORD(STACK[0x10ED8]) = v2 ^ v3;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v0 + 16466)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (v1 ^ 0xE3BAF498 ^ (23271 * (v1 < 0xC64CE55A)))))(v6);
}

uint64_t sub_1003E5F78@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB02C]) = a1 | 4;
  v6 = (((v1 ^ 0xA8CEBE12) + 1462845934) ^ ((v1 ^ 0xD9299A47) + 651584953) ^ ((v1 ^ 0x9832E344) + 1741453311 + ((418 * (v2 ^ 0x27A2) + 6271) | 0x8414))) + 1528276306;
  v8 = v6 > 0x7141DE40 && a1 + 1900142149 > v6 || v3 == v4;
  v9 = v8;
  if (v8)
  {
    v5 = 371891407;
  }

  LODWORD(STACK[0xB030]) = v5;
  return (*(STACK[0xF18] + 8 * ((107 * v9) ^ v2)))();
}

uint64_t sub_1003E6100@<X0>(int a1@<W8>)
{
  v1 = a1 - 896;
  v2 = v1 - 10871;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))();
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1003E6130()
{
  v1 = STACK[0xF18];
  STACK[0x1968] = *(STACK[0xF18] + 8 * (v0 & 0x41299737));
  return (*(v1 + 8 * ((v0 & 0x41299737) + 15091)))();
}

uint64_t sub_1003E62A4@<X0>(int a1@<W8>)
{
  v5 = *v2;
  v6 = STACK[0xF18];
  v7 = *(STACK[0xF18] + 8 * a1);
  STACK[0x3D98] = 0;
  LODWORD(STACK[0x63E0]) = -371865839;
  LODWORD(STACK[0x10ED8]) = v1 - 1012831759 * ((~(&STACK[0x10000] + 3800) & 0x15523686 | (&STACK[0x10000] + 3800) & 0xEAADC978) ^ 0x5C1200C) + 1369;
  STACK[0x10EE0] = v5;
  STACK[0x10EF8] = &STACK[0x63E0];
  STACK[0x10EF0] = &STACK[0x3D98];
  v8 = (*(v6 + 8 * (v1 ^ 0x4068)))(&STACK[0x10ED8]);
  *v4 = STACK[0x3D98];
  *v3 = STACK[0x63E0];
  return v7(v8);
}

uint64_t sub_1003E6368()
{
  v0 = STACK[0xC70];
  v1 = (LODWORD(STACK[0x76C0]) + LODWORD(STACK[0x1EA4]) + 1944478076);
  LODWORD(STACK[0xB33C]) = v1;
  STACK[0x2778] = STACK[0x3378];
  v2 = LODWORD(STACK[0x836C]);
  v3 = *(STACK[0x4810] + 32) + 614070625;
  v4 = ((v3 & ((v0 - 24951) ^ 0xDB666641)) << (((v0 + 64) | 0xC) ^ 0x9F)) & (v3 ^ 0x9375C41A) ^ v3 & ((v0 - 24951) ^ 0xDB666641);
  v5 = ((2 * (v3 ^ 0xB3FDC03E)) ^ 0xD1378D48) & (v3 ^ 0xB3FDC03E) ^ (2 * (v3 ^ 0xB3FDC03E)) & 0x689BC6A4;
  v6 = v5 ^ 0x288842A4;
  v7 = (v5 ^ 0x40104404) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xA26F1A90) & v6 ^ (4 * v6) & 0x689BC6A0;
  v9 = (v8 ^ 0x200B0280) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x4890C424)) ^ 0x89BC6A40) & (v8 ^ 0x4890C424) ^ (16 * (v8 ^ 0x4890C424)) & 0x689BC680;
  v11 = v9 ^ 0x689BC6A4 ^ (v10 ^ 0x8984200) & (v9 << 8);
  LODWORD(STACK[0xB340]) = v3 ^ (2 * ((v11 << 16) & 0x689B0000 ^ v11 ^ ((v11 << 16) ^ 0x46A40000) & (((v10 ^ 0x600384A4) << 8) & 0x689B0000 ^ 0x60190000 ^ (((v10 ^ 0x600384A4) << 8) ^ 0x1BC60000) & (v10 ^ 0x600384A4)))) ^ 0x6956F363;
  v12 = (v1 | ((v1 < 0xD931F511) << 32)) - 2806107706u;
  v13 = (v2 | ((v2 < 0xCBC6136) << 32)) + 624149913;
  v14 = v12 < 0x31F026CF;
  v15 = v12 > v13;
  if (v14 != v13 < 0x31F026CF)
  {
    v15 = v14;
  }

  if (v15)
  {
    v16 = 371891407;
  }

  else
  {
    v16 = -371865839;
  }

  LODWORD(STACK[0x76DC]) = v16;
  return (*(STACK[0xF18] + 8 * (((2 * v15) | (4 * v15)) ^ v0)))();
}

uint64_t sub_1003E65EC@<X0>(unint64_t *a1@<X6>, unint64_t a2@<X8>)
{
  v5 = 0;
  v6 = *(*v3 + (*v2 & 0x20FAB224)) ^ 0x20FAB225;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v9;
  v11 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v10 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v10;
  v12 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v11 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v11;
  v13 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v12 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v12;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  STACK[0xBC00] = 0;
  STACK[0xBC08] = a2;
  v15 = 16777619 * ((553300517 * v14 + 7) ^ (553300517 * v14)) % 7;
  v16 = 16777619 * ((553300517 * v14 + 6) ^ (553300517 * v14)) % 6;
  v17 = 16777619 * ((553300517 * v14 + 5) ^ (553300517 * v14)) % 5;
  v18 = *(&STACK[0xBC00] | v15);
  *(&STACK[0xBC00] | v15) = STACK[0xBC07];
  v19 = *(&STACK[0xBC00] | v16);
  *(&STACK[0xBC00] | v16) = STACK[0xBC06];
  v20 = *(&STACK[0xBC00] | v17);
  *(&STACK[0xBC00] | v17) = STACK[0xBC05];
  v21 = 16777619 * ((553300517 * v14 + 3) ^ (553300517 * v14)) % 3;
  v22 = vdup_n_s32(553300517 * v14);
  v23.i32[0] = v22.i32[0];
  v23.i32[1] = 553300517 * v14 + 1;
  LOBYTE(STACK[0xBC07]) = v18;
  v24 = veor_s8(vmul_s32(v23, v22), v22);
  LOBYTE(STACK[0xBC06]) = v19;
  LOBYTE(STACK[0xBC05]) = v20;
  v25 = STACK[0xBC00];
  LOBYTE(STACK[0xBC00]) = STACK[0xBC04];
  LOBYTE(STACK[0xBC04]) = v25;
  v26 = *(&STACK[0xBC00] | v21);
  *(&STACK[0xBC00] | v21) = STACK[0xBC03];
  LOBYTE(STACK[0xBC03]) = v26;
  v27 = STACK[0xBC01];
  LOBYTE(STACK[0xBC02]) = STACK[0xBC00];
  LOWORD(STACK[0xBC00]) = v27;
  STACK[0xBC00] = vmla_s32(v24, STACK[0xBC00], vdup_n_s32(0x1000193u));
  v28 = STACK[0xBC08];
  v29 = (553300517 * STACK[0xBC08]) ^ v14;
  v30 = vdupq_n_s32(v29);
  v31 = xmmword_100BC7620;
  v32 = xmmword_100BC7630;
  v33 = xmmword_100BC7640;
  v34 = xmmword_100BC7650;
  v35.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v36.i64[0] = 0x9393939393939393;
  v36.i64[1] = 0x9393939393939393;
  v37.i64[0] = 0x1000000010;
  v37.i64[1] = 0x1000000010;
  do
  {
    v38 = *(v28 + v5);
    v58.val[1] = veorq_s8(vqtbl1q_s8(v38, xmmword_100BC7690), veorq_s8(v30, vmulq_s32(vaddq_s32(v33, v30), vsubq_s32(v33, v30))));
    v58.val[0] = veorq_s8(vqtbl1q_s8(v38, xmmword_100BC76A0), veorq_s8(v30, vmulq_s32(vaddq_s32(v34, v30), vsubq_s32(v34, v30))));
    v58.val[2] = veorq_s8(vqtbl1q_s8(v38, xmmword_100BC7680), veorq_s8(v30, vmulq_s32(vaddq_s32(v32, v30), vsubq_s32(v32, v30))));
    v58.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v38, xmmword_100BC7670), v30), vmulq_s32(vaddq_s32(v31, v30), vsubq_s32(v31, v30)));
    *(v28 + v5) = vmulq_s8(vqtbl4q_s8(v58, xmmword_100BC7660), v36);
    v5 += 16;
    v34 = vaddq_s32(v34, v37);
    v33 = vaddq_s32(v33, v37);
    v32 = vaddq_s32(v32, v37);
    v31 = vaddq_s32(v31, v37);
  }

  while (v5 != 576);
  v39 = 0;
  v40 = xmmword_100F52AE0;
  v41 = vdupq_n_s32(v29);
  v42 = xmmword_100F52AF0;
  v43 = v28 + 576;
  v44.i64[0] = 0x800000008;
  v44.i64[1] = 0x800000008;
  do
  {
    v35.i64[0] = *(v43 + v39);
    v57.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), v41), vmulq_s32(vaddq_s32(v40, v41), vsubq_s32(v40, v41)));
    v57.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v41, vmulq_s32(vaddq_s32(v42, v41), vsubq_s32(v42, v41))));
    v35 = vqtbl2q_s8(v57, xmmword_100F52AD0);
    *(v43 + v39) = vmul_s8(*v35.i8, 0x9393939393939393);
    v42 = vaddq_s32(v42, v44);
    v40 = vaddq_s32(v40, v44);
    v39 += 8;
  }

  while (v39 != 8);
  v45 = 72;
  do
  {
    v46 = 16777619 * ((v29 + v45) ^ v29) % v45;
    v47 = *(v28 + 8 * v46) ^ *(v28 + 8 * v45);
    *(v28 + 8 * v45) = v47;
    v48 = *(v28 + 8 * v46) ^ v47;
    *(v28 + 8 * v46) = v48;
    *(v28 + 8 * v45) ^= v48;
    v49 = v45-- + 1;
  }

  while (v49 > 2);
  v50 = *(&STACK[0xBC08] + v15);
  *(&STACK[0xBC08] + v15) = STACK[0xBC0F];
  LOBYTE(STACK[0xBC0F]) = v50;
  v51 = *(&STACK[0xBC08] + v16);
  *(&STACK[0xBC08] + v16) = STACK[0xBC0E];
  LOBYTE(STACK[0xBC0E]) = v51;
  v52 = *(&STACK[0xBC08] + v17);
  *(&STACK[0xBC08] + v17) = STACK[0xBC0D];
  LOBYTE(STACK[0xBC0D]) = v52;
  v53 = STACK[0xBC08];
  LOBYTE(STACK[0xBC08]) = STACK[0xBC0C];
  LOBYTE(STACK[0xBC0C]) = v53;
  v54 = *(&STACK[0xBC08] + v21);
  *(&STACK[0xBC08] + v21) = STACK[0xBC0B];
  LOBYTE(STACK[0xBC0B]) = v54;
  v55 = STACK[0xBC09];
  LOBYTE(STACK[0xBC0A]) = STACK[0xBC08];
  LOWORD(STACK[0xBC08]) = v55;
  STACK[0xBC08] = vmla_s32(v24, STACK[0xBC08], vdup_n_s32(0x1000193u));
  *a1 = STACK[0xBC08] ^ STACK[0xBC00];
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_1003E6A7C()
{
  LODWORD(STACK[0x193C]) = v0;
  v2 = STACK[0xF18];
  STACK[0x5930] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 + 4344 + v1 + 5533)))();
}

uint64_t sub_1003E6B14()
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
  return (*(STACK[0xF18] + 8 * ((389 * (v0 ^ 0x241) + 26368) ^ v0)))();
}

uint64_t sub_1003E6D3C@<X0>(int a1@<W8>)
{
  *(v1 + 8) = v1 + 16;
  v4 = *(v2 - 0x10A99C80114D147FLL);
  STACK[0x4EA0] = v4;
  v5 = (STACK[0x33F0] ^ 0xF67EC6F3D0126DB9) & (a1 ^ 0x70E77807FDD8615FLL) ^ STACK[0x33F0] & 0x70E77807EBF259B1;
  STACK[0x8E30] = (((v3 - 1885924694) & 0x70686BB6u) + 18569) ^ v5 ^ 0x30E56F64242A6EFELL;
  v6 = STACK[0x3CA8];
  v7 = *(v2 - 0x10A99C80114D1317) & 0xFF1661A8 | (LODWORD(STACK[0x2320]) ^ 0xE93C5946) & ~*(v2 - 0x10A99C80114D1317);
  LODWORD(STACK[0x844C]) = v7 ^ 0xE93C5946;
  v8 = STACK[0x7690];
  v9 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x3030] = v9;
  STACK[0x70D0] = (v9 + 256);
  STACK[0x7690] = v8 + 512;
  STACK[0x4F60] = v1;
  v13 = v4 == 0x217E172EFA1E81CLL || v5 == 0x8F99BFFC3FEDB64ELL || v6 == 0 || v7 == 15310423;
  return (*(STACK[0xF18] + 8 * ((7 * v13) ^ v3)))();
}

uint64_t sub_1003E6EF0()
{
  STACK[0x4F8] = v0;
  STACK[0x500] = v1;
  v2 = STACK[0xD50];
  v3 = LODWORD(STACK[0xD50]) + 18462;
  LODWORD(STACK[0xD30]) = *(*STACK[0xE50] + ((LODWORD(STACK[0xD50]) + 2105974141) & *STACK[0xE58]));
  v4 = *(STACK[0xF18] + 8 * v2);
  LODWORD(STACK[0xD50]) = v3 - 9586;
  STACK[0xE60] = *(&off_1010A0B50 + (v3 ^ 0x6FBFu)) - 1890482078;
  STACK[0xE40] = *(&off_1010A0B50 + (v3 ^ 0x6DD6u)) - 248198187;
  LODWORD(STACK[0xD40]) = v3;
  STACK[0xE30] = *(&off_1010A0B50 + v3 - 24974) - 1705118567;
  return v4(2336);
}

uint64_t sub_1003E7074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = (LODWORD(STACK[0xEA0]) ^ *STACK[0xED0] ^ *(STACK[0x9B8] + a3) ^ *(STACK[0x9A8] + STACK[0xEC0]) ^ *(STACK[0x9B0] + STACK[0xEB0])) - *(a8 + 2);
  v12 = (v10 & (2 * v11)) + ((743 * (((v8 + 1441936418) | 0x2A0DAE5D) ^ 0x7FFFFFDA)) ^ 0xF7F69094 ^ v11) != v9;
  return (*(STACK[0xF18] + 8 * ((v12 | (32 * v12)) ^ v8)))();
}

uint64_t sub_1003E7880()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 2082913335;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003E7AE0()
{
  v1 = STACK[0x5D10];
  v2 = STACK[0x1CF8];
  LODWORD(STACK[0x10ED8]) = v0 - 1112314453 * ((((&STACK[0x10000] + 3800) | 0x680F79BE) - ((&STACK[0x10000] + 3800) & 0x680F79B8)) ^ 0x87595367) + 19066;
  STACK[0x10EE0] = v1;
  STACK[0x10EE8] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 47079)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((23 * (LODWORD(STACK[0x10EF0]) != (v0 ^ 0xBF82) + 185152724)) ^ v0)))(v4);
}

uint64_t sub_1003E7C4C()
{
  v1 = STACK[0xF18];
  STACK[0x54B0] = *(STACK[0xF18] + 8 * (v0 - 37096));
  return (*(v1 + 8 * ((((v0 - 37463) | 0x4254) - 9991) ^ (v0 - 37096))))();
}

uint64_t sub_1003E7C8C@<X0>(int a1@<W8>)
{
  v7 = a1 - 21498;
  v8 = 1603510583 * ((((&STACK[0x10000] + 3800) | 0xB0F6F12C) - ((&STACK[0x10000] + 3800) & 0xB0F6F128)) ^ 0x272DC387);
  STACK[0x10F10] = &STACK[0x8928];
  STACK[0x10EF0] = v4;
  STACK[0x10EF8] = v5;
  LODWORD(STACK[0x10F08]) = v8 - 11300 + a1;
  STACK[0x10F20] = 0;
  LODWORD(STACK[0x10F18]) = v8 + 415730403 + (((v6 ^ 0x37AFE5EB) - 934274539) ^ ((v6 ^ 0x41450873) - 1095043187) ^ ((((a1 - 32570) | 0xA0A4) ^ 0x60C079D2) + (v6 ^ 0x9F3F2A89)));
  STACK[0x10EE0] = v2;
  STACK[0x10EE8] = v1;
  STACK[0x10F00] = v3;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (a1 + 16294)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * ((46752 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ v7)))(v10);
}

uint64_t sub_1003E7DF8()
{
  v1 = LODWORD(STACK[0x748C]) + LODWORD(STACK[0x3114]);
  v2 = LODWORD(STACK[0x8824]) + LODWORD(STACK[0x6CBC]) + 1111267821;
  LODWORD(STACK[0xB10C]) = v2;
  if (v2 == v1)
  {
    v3 = STACK[0x71B4];
  }

  else
  {
    v3 = 371891374;
  }

  return (*(STACK[0xF18] + 8 * ((31093 * (v3 == (v0 ^ 0xE9D57389 ^ ((v0 - 13731) | 0x813B)))) ^ v0)))();
}

uint64_t sub_1003E7EA4@<X0>(unint64_t *a1@<X8>)
{
  v2 = *a1;
  STACK[0x3688] = v2;
  return (*(STACK[0xF18] + 8 * ((483 * (((v2 == 0) ^ (v1 + 47 + v1 + 115 + 1)) & 1)) ^ v1)))();
}

uint64_t sub_1003E7F30()
{
  STACK[0x10EE0] = STACK[0x43A0];
  LODWORD(STACK[0x10ED8]) = (v0 + 26508) ^ (297845113 * ((((&STACK[0x10000] + 3800) | 0x154F1551) - ((&STACK[0x10000] + 3800) & 0x154F1550)) ^ 0x627C09CF));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE3C5)))(&STACK[0x10ED8]);
  STACK[0x43A0] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003E80AC()
{
  if ((((v0 ^ 0xB46C86A3) + 1267956061) ^ ((v0 ^ 0x7FC046B6) - 2143307446) ^ ((((v1 ^ 0xFBD5) + 578308835) ^ v0) - 578356996)) - 371865856 >= 0xFFFFFFEF)
  {
    v2 = -371865855;
  }

  else
  {
    v2 = v0;
  }

  v3 = *(STACK[0xF18] + 8 * ((4081 * ((((v2 ^ 0xE85C9F2B) + 396583125) ^ ((v2 ^ 0x30A424AA) - 816063658) ^ ((v2 ^ 0x312D7C90) - 825064592)) == 371865839)) ^ v1));
  STACK[0xEC0] = *(&off_1010A0B50 + v1 - 15618) - 138899678;
  STACK[0xEA0] = *(&off_1010A0B50 + (v1 ^ 0x4890)) - 427434202;
  return v3();
}

uint64_t sub_1003E8268@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x658303E8) + 1703085034) ^ 0x83A51825));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41E7)))(&STACK[0x10ED8]);
  *(v3 + 312) = 0;
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_1003E82EC()
{
  v1 = STACK[0xF18];
  STACK[0x17A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 8261 + 353 * (v0 ^ 0x948))))();
}

uint64_t sub_1003E8328@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v11 = *(a1 + (a2 + v8) % ((v10 + 591762984) & 0xDCBA0FD9 ^ 0xFA6));
  v12 = v11 ^ 0x5F;
  if (v11 == 160)
  {
    v12 = 0;
  }

  *(a1 + (v8 - 288525730)) ^= *(a1 + v12) ^ 0x5F;
  v13 = (((*v9 ^ 0x82693DF1) + v2) ^ ((*v9 ^ v3) + v5) ^ ((*v9 ^ v6) + v4)) - 901194849;
  v14 = v13 < 0xE0731486;
  v15 = v8 - 817854747 < v13;
  if ((v8 - 817854747) < 0xE0731486 != v14)
  {
    v15 = v14;
  }

  return (*(STACK[0xF18] + 8 * ((v15 * v7) ^ v10)))();
}

uint64_t sub_1003E841C()
{
  v1 = STACK[0xF18];
  STACK[0x3F60] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 - 16374 + ((v0 - 3695) | 0x8500))))();
}

uint64_t sub_1003E8450()
{
  v3 = v0 ^ 0xF89E;
  LODWORD(STACK[0x10ED8]) = (v0 ^ 0xF89E) + 1603510583 * ((&STACK[0x10000] + 3800) ^ 0x97DB32AB) + 2102;
  STACK[0x10EE0] = v1;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * ((v0 ^ 0xF89E) + 23277)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 104) = v2;
  return (*(v4 + 8 * v3))(v5);
}

uint64_t sub_1003E8558()
{
  v0 = STACK[0xF10] - 29591;
  v1 = (((LODWORD(STACK[0x326C]) ^ 0xB342CFA4) + 1287467100) ^ ((LODWORD(STACK[0x326C]) ^ 0x8D723329) + 1921895639) ^ (((89 * (STACK[0xF10] ^ 0x8B7F)) ^ 0x281AD3C0) + (LODWORD(STACK[0x326C]) ^ 0xD7E53B9C))) + 1183769043;
  v2 = (v1 ^ 0x254D488) & (2 * (v1 & 0xA346E52A)) ^ v1 & 0xA346E52A;
  v3 = ((2 * (v1 ^ 0x25196C8)) ^ 0x422EE7C4) & (v1 ^ 0x25196C8) ^ (2 * (v1 ^ 0x25196C8)) & 0xA11773E2;
  v4 = v3 ^ 0xA1111022;
  v5 = (v3 ^ 0x621C0) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x845DCF88) & v4 ^ (4 * v4) & 0xA11773E0;
  v7 = (v6 ^ 0x80154380) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x21023062)) ^ 0x11773E20) & (v6 ^ 0x21023062) ^ (16 * (v6 ^ 0x21023062)) & 0xA11773E0;
  v9 = v7 ^ 0xA11773E2 ^ (v8 ^ 0x1173200) & (v7 << 8);
  v10 = v1 ^ (2 * ((v9 << 16) & 0x21170000 ^ v9 ^ ((v9 << 16) ^ 0x73E20000) & (((v8 ^ 0xA00041C2) << 8) & 0x21170000 ^ 0x20040000 ^ (((v8 ^ 0xA00041C2) << 8) ^ 0x17730000) & (v8 ^ 0xA00041C2))));
  LODWORD(STACK[0x8E1C]) = v10 ^ 0x4AB9C5FF;
  return (*(STACK[0xF18] + 8 * ((15854 * ((v10 & 0xF) == 14)) ^ v0)))();
}

uint64_t sub_1003E883C(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  STACK[0xE60] = a4;
  v5 = bswap32(*(a1 + 4));
  STACK[0xEA0] = (v5 << (((v4 - 33) & 0x91u) - 16)) & 0x1782966F6;
  STACK[0xE90] = v5 - 0x6F35C01143EB4C85;
  STACK[0xE40] = a1;
  v6 = STACK[0x4EE0];
  v7 = STACK[0x8A18];
  v8 = STACK[0x7690];
  v9 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xEC0] = STACK[0x7690];
  STACK[0xEB0] = v8 + 240;
  STACK[0x7690] = v8 + 240;
  STACK[0x94C8] = a1 + 24;
  STACK[0x4180] = a1 + 40;
  STACK[0x5DF0] = v6;
  STACK[0xE80] = v7;
  v10 = *v7;
  v11 = STACK[0xF18];
  v12 = *(STACK[0xF18] + 8 * (v4 + 34081));
  LODWORD(STACK[0x7F44]) = -716811217;
  v12(*(&off_1010A0B50 + v4 - 16276) - 1579701490, &STACK[0xC4D0] + v8, 80);
  v13 = *(v11 + 8 * (v4 ^ 0x8F61));
  v14 = *(&off_1010A0B50 + (v4 ^ 0x4977)) - 1720572879;
  STACK[0xED0] = (v9 + 80);
  v13(v14, v9 + 80, 80);
  v15 = *(v11 + 8 * (v4 ^ 0x8F61));
  v16 = *(&off_1010A0B50 + (v4 ^ 0x4B3D)) - 61838299;
  STACK[0xE70] = (v9 + 160);
  v17 = v15(v16, v9 + 160, 80);
  v18 = (((v10 ^ 0x2CE51A5A) - 753211994) ^ ((v10 ^ 0x44F0E8EB) - 1156638955) ^ ((v10 ^ 0x81C035A0) + 2118109792)) == 371865839;
  return (*(v11 + 8 * (v18 | (2 * v18) | v4)))(v17);
}

uint64_t sub_1003E8A30@<X0>(unsigned int a1@<W8>)
{
  v3 = *(*(STACK[0x4A90] + 40) + 16 * (v1 - 1858686995) + 8);
  *(STACK[0x8690] + a1) = (v3 - ((v3 << (24 * (v2 ^ 0x48) + 81)) & 0x14) + 10) ^ 0xA;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1003E8B4C()
{
  v2 = *(STACK[0xF18] + 8 * (v0 ^ (30694 * ((((v1 ^ 0xDA5AD957) + 631580329) ^ ((v1 ^ 0x3B462F21) - 994455329) ^ ((v1 ^ 0x8C93167) - 147403111)) != 371865831))));
  LODWORD(STACK[0xEC0]) = 1724701211;
  return v2();
}

uint64_t sub_1003E8C48()
{
  v2 = *(v1 + 16);
  STACK[0xE90] = v1 + 16;
  return (*(STACK[0xF18] + 8 * (((v2 != 0) * (v0 - 39007 + 551 * (v0 ^ 0x8790))) ^ v0)))();
}

uint64_t sub_1003E8C9C(uint64_t a1, int a2)
{
  v4 = (((a2 ^ 0x8C77A0D1) + 1938317103) ^ ((a2 ^ 0xD43938D8) + 734447400) ^ ((a2 ^ 0xB19B5F18) + 1315217640)) - 509347357;
  v5 = (((v3 ^ 0x9B44597) + (v2 ^ 0xF64BA3C6)) ^ ((v3 ^ 0x918CC4ED) + 1853045523) ^ ((v3 ^ 0x71ED466B) - 1911375467)) - 509347357;
  v6 = v4 < 0xF7CE32D2;
  v7 = v4 > v5;
  if (v6 != v5 < 0xF7CE32D2)
  {
    v7 = v6;
  }

  return (*(STACK[0xF18] + 8 * ((44317 * v7) ^ v2)))();
}

uint64_t sub_1003E8DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, int a61, int a62, char a63)
{
  v82 = STACK[0x200];
  *(STACK[0x200] + 4 * ((v81 + ((v74 + 55) & 0xBB ^ 0xD)) & 0x1F)) = a6;
  v83 = ((2 * v78) & 0x12) + (v78 ^ 0xBFF1F4FDFCABEFE9);
  v84 = v83 + 0x400E0B020354100FLL;
  v85 = *(&off_1010A0B50 + v74 - 17152) + 4 * v83 + 0x382C07E62C0286;
  if (v84 < 0xFFFFFFFFFFFFFFF8)
  {
    v85 = *(&off_1010A0B50 + v74 - 14323) + 4 * v84 - 987117155;
  }

  v86 = (-102575295 * ((((a6 ^ 0x422DDA7C) - 1110301308) ^ ((a6 ^ 0xA663DD33) + 1503404749) ^ ((a6 ^ 0x9E97B7DE) + 1634224162)) + *(a72 + 4 * ((a65 + v75) & 0x1F)) - (((*v85 ^ 0x6C4D9566) - 1817023846) ^ ((*v85 ^ 0x4D6F03C6) - 1299121094) ^ ((*v85 ^ 0xCDBEE8E) - 215740046))) + 2095376857) ^ a6;
  v87 = (((v86 ^ 0x46C71FA0) + 1811190766) ^ ((v86 ^ 0x5545168) + 677895462) ^ ((v86 ^ 0x305E30E6) + 493730988)) - 999000685;
  v88 = *(v82 + 4 * (v72 & 0x1F));
  v89 = (((v88 ^ 0x5AABABE3) - 1521200099) ^ ((v88 ^ 0x8D5C17AE) + 1923344466) ^ ((v88 ^ 0xAD2E0CDC) + 1389490980)) - 113 * v87 + 1288382833;
  *(v82 + 4 * (v72 & 0x1F)) = v89 ^ ((v89 ^ 0x70FBCC9A) - 1559976003) ^ ((v89 ^ 0x6D408E88) - 1094720081) ^ ((v89 ^ 0x4ED42134) - 1658107373) ^ ((v89 ^ 0x7F6FF7FF) - 1399808806) ^ 0x56D92448;
  v90 = *(v82 + 4 * ((a63 + v75) & 0x1F));
  v91 = v87 + (a61 + v75 + (((v90 ^ 0x50EA6052) + 789946286) ^ ((v90 ^ 0x5DD11BF1) - 1573985265) ^ ((v90 ^ 0x77E2CB32) + 136131790))) * v76;
  v92 = (a59 ^ v77 ^ ((v77 ^ 0xCF6FD9B) - 844200869) ^ ((v77 ^ 0x4F347012) - 1905522220) ^ ((v77 ^ 0x428AF648) - 2083352694) ^ ((v77 ^ 0x3FEFFDFF) - 21527489) ^ 0x892A8187) + 131;
  v93 = ((v92 - v92 / 0x83 * v80) ^ 0x17B3FB76CBFE3EFFLL) + 2 * (v92 - v92 / 0x83 * v80);
  v94 = v93 - 0x17B3FB76CBFE3F3ALL;
  v95 = (STACK[0x220] + 4 * v93 - 0x5ECFEDDB2FF8FBFCLL);
  if (v94 < 0xFFFFFFFFFFFFFFC5)
  {
    v95 = (STACK[0x218] + 4 * v94);
  }

  *(v79 + 4 * v73) = v91 + 1362168284 - (((*v95 ^ 0x494F82B6) - 1229947574) ^ ((*v95 ^ 0x838CE3C2) + 2087918654) ^ ((*v95 ^ 0xE9D1637A) + 372153478)) - 1204654598;
  return (*(STACK[0x228] + 8 * (v74 ^ (36624 * (v75 == 31)))))();
}

uint64_t sub_1003E937C()
{
  STACK[0x29C8] = v1;
  LODWORD(STACK[0xEC0]) = v0 - 1371057307;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x51B902FC ^ ((v0 == -191640881) * ((v0 - 1371057307) ^ 0xD470)))))();
}

uint64_t sub_1003E94E4(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *(*(&off_1010A0B50 + v6) + 4 * ((v3 ^ v12) ^ v5) + v7) + v8;
  *(a1 + 4 * (v10 & v3)) = a3 ^ LODWORD(STACK[0x2A8]) ^ v13 ^ (8 * v13) ^ v9;
  return (*(STACK[0x358] + 8 * (v11 ^ (2 * (v4 == 0)))))();
}

uint64_t sub_1003E95A0(uint64_t a1)
{
  *(a1 + 12) = v3;
  v5 = *(v2 + 72 * v1 + 8);
  v6 = v3 + 2065974920;
  v7 = (((v5 ^ 0xABA04EC6) + 1415557434) ^ (v4 - 1316369912 + (v5 ^ 0x4E75AABD)) ^ ((v5 ^ 0xC00236A) + ((116 * (v4 ^ 0x8A43)) ^ 0xF3FF76F6))) - 1352042820;
  v8 = (v3 + 2065974920) < 0xC593AFAB;
  v9 = v7 < 0xC593AFAB;
  v10 = v6 < v7;
  if (v8 != v9)
  {
    v10 = v9;
  }

  return (*(STACK[0xF18] + 8 * ((57156 * v10) ^ (v4 - 4922))))();
}

uint64_t sub_1003E96F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0xEA0]) = 0;
  LODWORD(STACK[0xE60]) = 0;
  v8 = STACK[0xF18];
  STACK[0x4648] = *(STACK[0xF18] + 8 * v7);
  v9 = *(v8 + 8 * (v7 - 38161 + v7 + 40564));
  LODWORD(STACK[0xE70]) = 1;
  return v9(a1, a2, a3, a4, a5, a6, a7, &STACK[0x6954]);
}

uint64_t sub_1003E977C()
{
  v1 = *(STACK[0x1238] + 8);
  STACK[0x4EB0] = STACK[0x1238] + 8;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762632163) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xEDC3E112) - (&STACK[0x10000] + 3800) - 1994518665) ^ 0x47E03DAD));
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 45383)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (((LODWORD(STACK[0x59AC]) == ((v0 - 55376476) & 0x34CFDFF) - 7446) * (v0 - 6263)) ^ v0)))(v3);
}

uint64_t sub_1003E9858@<X0>(int a1@<W8>)
{
  v2 = a1 - 30439;
  v3 = a1 - 54;
  v4 = 1603510583 * (((((&STACK[0x10000] + 3800) | 0x67945C44) ^ 0xFFFFFFFE) - (~(&STACK[0x10000] + 3800) | 0x986BA3BB)) ^ 0xFB09110);
  STACK[0x10EE0] = *(STACK[0x1C58] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10EEC]) = v1 - v4 + ((a1 - 341234482) & 0x14563E5E) - 672740346;
  LODWORD(STACK[0x10EE8]) = a1 - 30439 - v4 - 6478;
  LODWORD(STACK[0x10EDC]) = -1826625867 - v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * ((a1 - 30439) ^ 0xFEF6)))(&STACK[0x10ED8]);
  v7 = STACK[0x10ED8];
  LODWORD(STACK[0x839C]) = STACK[0x10ED8];
  return (*(v5 + 8 * ((23 * ((v3 ^ (v7 == -371865839)) & 1)) ^ v2)))(v6);
}

uint64_t sub_1003E9B1C()
{
  v2 = (v0 + 677628116) | 0x7890246;
  v3 = ((v2 - 644634938) << (((v0 - 44) | 0x46u) - 38)) + v2;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x2FED19AF ^ (((((v1 - v3) | (v3 - v1)) & 0x8000000000000000) == 0) * (v2 - 804098606)))))();
}

uint64_t sub_1003E9BA0@<X0>(int a1@<W8>)
{
  v1 = *STACK[0x8818];
  v2 = 634647737 * (&STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL);
  LODWORD(STACK[0x10EF8]) = a1 - v2 - 1230214699;
  LODWORD(STACK[0x10EE4]) = a1 + 1477851604 + v2;
  LODWORD(STACK[0x10EFC]) = ((a1 + 1477851604) ^ 0x13) - v2;
  LODWORD(STACK[0x10EDC]) = ((a1 + 1477851604) ^ 0x136B) - v2;
  LODWORD(STACK[0x10ED8]) = -634647737 * (&STACK[0x10ED8] ^ 0xDADBAFEF6D962FFCLL);
  STACK[0x10EE8] = v2 ^ 0x31637661;
  STACK[0x10EF0] = v1 - v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (a1 + 16305)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * SLODWORD(STACK[0x10EE0])))(v4);
}

uint64_t sub_1003E9C70()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xE03F)))();
  STACK[0x6A98] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003E9CB0()
{
  v1 = *(STACK[0x2DC0] + 296);
  STACK[0x81A8] = STACK[0x88B8];
  STACK[0x97E8] = v1;
  LODWORD(STACK[0x6974]) = 103711526;
  return (*(STACK[0xF18] + 8 * (v0 - 26939)))();
}

uint64_t sub_1003E9D68@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 + v2;
  v8 = v4 + v3;
  v9 = v4 - 1;
  *(a1 + v9) = *(v1 + v9) ^ *(v5 + v9) ^ (-61 * v9) ^ *(v7 + 5) ^ *(v8 + 4);
  return (*(STACK[0xF18] + 8 * (((v9 == 0) * ((v6 + 489516225) & 0x62D2FFFE ^ 0x6DA4)) ^ v6)))();
}

uint64_t sub_1003E9F48()
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
  STACK[0xC210] = 0;
  STACK[0xC218] = v0;
  v10 = 16777619 * ((553300517 * v9 + 7) ^ (553300517 * v9)) % 7;
  v11 = *(&STACK[0xC210] | v10);
  *(&STACK[0xC210] | v10) = 0;
  LOBYTE(STACK[0xC217]) = v11;
  v12 = 16777619 * ((553300517 * v9 + 6) ^ (553300517 * v9)) % 6;
  v13 = *(&STACK[0xC210] | v12);
  *(&STACK[0xC210] | v12) = STACK[0xC216];
  LOBYTE(STACK[0xC216]) = v13;
  v14 = 16777619 * ((553300517 * v9 + 5) ^ (553300517 * v9)) % 5;
  v15 = *(&STACK[0xC210] | v14);
  *(&STACK[0xC210] | v14) = STACK[0xC215];
  LOBYTE(STACK[0xC215]) = v15;
  v16 = STACK[0xC210];
  LOBYTE(STACK[0xC210]) = STACK[0xC214];
  LOBYTE(STACK[0xC214]) = v16;
  v17 = 16777619 * ((553300517 * v9 + 3) ^ (553300517 * v9)) % 3;
  v18 = *(&STACK[0xC210] | v17);
  *(&STACK[0xC210] | v17) = STACK[0xC213];
  LOBYTE(STACK[0xC213]) = v18;
  v19 = STACK[0xC211];
  LOBYTE(STACK[0xC212]) = STACK[0xC210];
  LOWORD(STACK[0xC210]) = v19;
  v20 = vdup_n_s32(553300517 * v9);
  v21.i32[0] = v20.i32[0];
  v21.i32[1] = 553300517 * v9 + 1;
  v22 = veor_s8(vmul_s32(v21, v20), v20);
  STACK[0xC210] = vmla_s32(v22, STACK[0xC210], vdup_n_s32(0x1000193u));
  STACK[0xC218] ^= STACK[0xC210];
  STACK[0xC218] = vmul_s32(vsub_s32(STACK[0xC218], v22), vdup_n_s32(0x359C449Bu));
  v23 = STACK[0xC21A];
  LOWORD(STACK[0xC219]) = STACK[0xC218];
  LOBYTE(STACK[0xC218]) = v23;
  v24 = (&STACK[0xC218] | v17);
  LOBYTE(v19) = *v24;
  *v24 = STACK[0xC21B];
  LOBYTE(STACK[0xC21B]) = v19;
  LOBYTE(v24) = STACK[0xC218];
  LOBYTE(STACK[0xC218]) = STACK[0xC21C];
  LOBYTE(STACK[0xC21C]) = v24;
  v25 = (&STACK[0xC218] | v14);
  LOBYTE(v24) = *v25;
  *v25 = STACK[0xC21D];
  LOBYTE(STACK[0xC21D]) = v24;
  v26 = (&STACK[0xC218] | v12);
  LOBYTE(v25) = *v26;
  *v26 = STACK[0xC21E];
  LOBYTE(STACK[0xC21E]) = v25;
  v27 = (&STACK[0xC218] | v10);
  v28 = *v27;
  *v27 = STACK[0xC21F];
  LOBYTE(STACK[0xC21F]) = v28;
  v29 = STACK[0xC218];
  v30 = (553300517 * STACK[0xC218]) ^ v9;
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
  *STACK[0x940] = STACK[0xC218];
  return (*(STACK[0xF18] + 8 * (v1 - 27577)))(v47, v48);
}

uint64_t sub_1003EA4E0@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    v2 = LODWORD(STACK[0x2178]) == -371865839;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  return (*(STACK[0xF18] + 8 * ((((v3 ^ (v1 - 39)) & 1) * ((v1 + 11037) ^ 0x8B0C)) ^ v1)))();
}

uint64_t sub_1003EA6A4()
{
  v1 = STACK[0xF18];
  STACK[0x3988] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 2953) ^ v0)))();
}

uint64_t sub_1003EA708()
{
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0x8D6C2ED6)))(v0);
  return (*(v2 + 8 * ((31664 * (v1 == 1177866602)) ^ (v1 + 1922254003))))(STACK[0xEC0], LODWORD(STACK[0xEB0]), 4294950242, 40665, 109, 3587000818, 23860, 35644);
}

uint64_t sub_1003EA7A8()
{
  v2 = *(v1 + 4);
  LODWORD(STACK[0x33BC]) = v2;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * ((v0 + 2315) ^ 0x8E27)) ^ v0)))();
}

uint64_t sub_1003EAB30@<X0>(int a1@<W8>)
{
  v2 = STACK[0xF10] - 7328;
  LODWORD(STACK[0x3E84]) = a1;
  return (*(STACK[0xF18] + 8 * (v2 | (4 * (a1 != v1)))))();
}

uint64_t sub_1003EACD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x2D8]) = a4;
  v6 = (*(v5 + 8 * (v4 + 13197)))(263);
  v7 = STACK[0x358];
  STACK[0x3C0] = v6;
  return (*(v7 + 8 * (((v6 != 0) * (((v4 - 25297) | 0x8109) - 46411)) ^ v4)))();
}

uint64_t sub_1003EAD70()
{
  v2 = v0 - 21780;
  v3 = (v0 - 32086) | 0x1084;
  v4 = *(STACK[0x15C8] - 0x217E172EFA1E81CLL);
  v5 = 139493411 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x484C4BE0) + 1212959712) ^ 0x4461AAA5);
  STACK[0x10EE0] = &STACK[0x60D4];
  LODWORD(STACK[0x10EE8]) = v5 - 265723336;
  STACK[0x10EF0] = v4;
  LODWORD(STACK[0x10ED8]) = v0 - 21780 - v5 + 17660;
  LOWORD(STACK[0x10EFC]) = -32733 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x4BE0) + 19424) ^ 0xAAA5) + 27992;
  LODWORD(STACK[0x10EF8]) = v5 + ((v0 - 21780) ^ 0x73F6E26B) * v1 + 777074195;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * ((v0 - 21780) ^ 0xA74F)))(&STACK[0x10ED8]);
  v8 = STACK[0x10F00];
  LODWORD(STACK[0x8AB4]) = STACK[0x10F00];
  return (*(v6 + 8 * ((2 * (v8 == v3 + 1497647036)) | (32 * (v8 == v3 + 1497647036)) | v2)))(v7);
}

uint64_t sub_1003EAE9C@<X0>(char a1@<W2>, unint64_t a2@<X8>)
{
  LOBYTE(STACK[0x48B7]) = a1;
  STACK[0x10EE0] = v3;
  STACK[0x10EE8] = a2;
  LODWORD(STACK[0x10EF0]) = v2 - 1012831759 * ((((2 * (&STACK[0x10000] + 3800)) | 0x29E18E8) - (&STACK[0x10000] + 3800) - 21957748) ^ 0x11DC1AFE) + 46630489;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v2 ^ 0xC7C2)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x231C]) = STACK[0x10ED8];
  STACK[0x4B88] = *(v4 + 8 * v2);
  return (*(v4 + 8 * (((v2 + 30177) ^ 0x8A8A) + v2)))(v5);
}

uint64_t sub_1003EAF60()
{
  v4 = *(v0 + v3);
  v5 = LODWORD(STACK[0x46B0]) ^ (v1 - 969422308);
  STACK[0x8FE8] = v4;
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x704C]) = -2116087624;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v5;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v1 - 29747)))();
}

uint64_t sub_1003EAFF4()
{
  v1 = *(STACK[0x33F8] + 56) << ((v0 - 18) ^ 0xDBu);
  *STACK[0x9618] = ((*STACK[0x9618] ^ 0xBD4C1140B1FB3349) & ~v1 | v1 & 0x4B32D7B300000000) ^ 0xBD4C1140B1FB3349;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003EB05C@<X0>(unsigned int a1@<W8>)
{
  *(v2 + 4916) = v3;
  LOBYTE(STACK[0xB33B]) = 0;
  LODWORD(STACK[0x7934]) = v1;
  return (*(STACK[0xF18] + 8 * ((4363 * (a1 < ((a1 - 1992872998) & 0xEAF0BFFF ^ 0xB2884A2F))) ^ (a1 + 1948737908))))();
}

uint64_t sub_1003EB0C8()
{
  STACK[0x5C50] = 0x3AE1413A0D5C96D2;
  LODWORD(STACK[0x1374]) = -69364964;
  return (*(STACK[0xF18] + 8 * ((14822 * (v0 <= ((11881 * (v0 ^ 0xB2A2BB37)) ^ 0x72836522))) ^ (v0 + 1297964057))))();
}

uint64_t sub_1003EB164@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 352);
  STACK[0x10EF8] = &STACK[0x72EC];
  STACK[0x10EF0] = &STACK[0x6698];
  LODWORD(STACK[0x10ED8]) = v1 - 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x66538E18) - (&STACK[0x10000] + 3800) + 430731747) ^ 0x93F6769) + 30582;
  STACK[0x10EE0] = v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD24D)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EE8]) == (((v1 + 27452) | 0x301) ^ 0xE9D5404A)) * (((v1 + 855623285) & 0xCD00736D) - 6239)) ^ v1)))(v4);
}

uint64_t sub_1003EB378()
{
  v1 = STACK[0xF18];
  STACK[0x18C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 8413) ^ v0)))();
}

uint64_t sub_1003EB3A0()
{
  LODWORD(STACK[0x10ED8]) = (1603510583 * (((((&STACK[0x10000] + 3800) ^ 0x3E1571C8) & 0x7F1DF1C8) + ((&STACK[0x10000] + 3800) ^ 0x41888C36) - (((&STACK[0x10000] + 3800) ^ 0x41888C36) & 0x7F1DF1CC)) ^ 0xA94E4F51)) ^ (STACK[0xF10] - 2608);
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 50418)))(&STACK[0x10ED8]);
  return (*(v1 + 149592))(v2);
}

uint64_t sub_1003EB4D4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x667C]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v1 - 32591));
  return (*(v2 + 8 * ((v1 - 32591) ^ (v1 - 437423004) & 0x1A12827E ^ 0x8F15 ^ (4662 * (((v1 - 32591) ^ 0x5300B764u) < 0x56834F72)))))();
}

uint64_t sub_1003EB5B8()
{
  v1 = STACK[0xF10] - 9214;
  LODWORD(STACK[0x198C]) = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003EB618()
{
  v3 = (((*v0 ^ 0xABACDBF8) + 1414734856) ^ (((v2 - 376752369) ^ 0xE98B717A) - 200618549 + (*v0 ^ 0xBF489E5)) ^ ((*v0 ^ 0x498D950C) - 1234015500)) + 1235006693;
  v4 = v3 < 0x5FC6EDD4;
  v5 = v1 - 511408486 < v3;
  if ((v1 - 511408486) < 0x5FC6EDD4 != v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return (*(STACK[0x228] + 8 * ((46 * v6) ^ v2)))();
}

uint64_t sub_1003EB858()
{
  v3 = *(v2 + v1);
  STACK[0x1320] = v3;
  v4 = *(STACK[0x6F38] + v1);
  STACK[0x93F0] = v4;
  LODWORD(STACK[0x8D3C]) = STACK[0x4AFC];
  v5 = STACK[0x3BC8];
  LODWORD(STACK[0x6BE8]) = STACK[0x3BC8];
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = !v6 && v5 != ((v0 - 9319) ^ 0xE9D586F1) + ((v0 - 9319) | 0x3020);
  return (*(STACK[0xF18] + 8 * ((14 * v8) ^ v0)))();
}

uint64_t sub_1003EBB48()
{
  LODWORD(STACK[0x55C8]) = *(v1 + 24);
  LODWORD(STACK[0x7DE4]) = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003EBB84()
{
  v2 = (LODWORD(STACK[0x17DC]) + LODWORD(STACK[0x3E80]) + 305877361 + v0 - 4525);
  v3 = (v2 | ((v2 < 0x33CBA83B) << 32)) + 965100990;
  v4 = STACK[0x6018] - 0x5D1E61E3CA6BB1ELL;
  v5 = v3 < 0x6D51EDF5;
  v6 = v3 > v4;
  if (v4 < ((v0 - 4276) | 0x3001u) + 1834071886 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v1 = 371891407;
  }

  LODWORD(STACK[0x5E94]) = v1;
  return (*(STACK[0xF18] + 8 * ((194 * v7) ^ v0)))();
}

uint64_t sub_1003EBC64()
{
  v3 = (v0 + 1460393153) & 0xFFFFFFFFA8F3BEFALL;
  STACK[0x2FA0] = *(*(v1 + 168) + 40) + (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0xCD60E52FFB9405D6) + (*(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFEC2178E0)) & (((v3 + 958) | 0x4803u) ^ 0x7FFFFFFFFFFFA75CLL) ^ v2) + 1;
  v4 = STACK[0xF18];
  STACK[0x4920] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v3 + 1797)))();
}

uint64_t sub_1003EBD28@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v7 = (a1 - 19573);
  v8 = a1 + 6738;
  v9 = ((2 * (v3 - 6)) & 0x571FEFFE) + ((v3 - 6) ^ v5);
  *(v9 + v2 + v6) = *(a2 + v4 + v9);
  v10 = (((v3 - 7) << ((v8 ^ 0xFCu) - 58)) & 0x571FEFFE) + ((v3 - 7) ^ v5);
  *(v10 + v2 + v6) = *(a2 + v10 + v4);
  v11 = ((v3 - 7 - v7) | (v7 - (v3 - 7))) >> 63;
  return (*(STACK[0xF18] + 8 * (((2 * v11) | (8 * v11)) ^ v8)))();
}

uint64_t sub_1003EBE08@<X0>(unint64_t a1@<X8>)
{
  v10 = *v7;
  v11 = STACK[0xF18];
  STACK[0x5638] = *(STACK[0xF18] + 8 * v9);
  STACK[0x94A0] = v6;
  LODWORD(STACK[0x31E8]) = v4;
  LODWORD(STACK[0x3920]) = v5;
  STACK[0x1478] = v10;
  STACK[0x5378] = a1;
  STACK[0x3690] = v3;
  STACK[0x5CD0] = v1;
  v12 = STACK[0x7690];
  v13 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x62C8] = v13;
  STACK[0x7F20] = v13;
  STACK[0x20F8] = (v13 + 16);
  STACK[0x67C8] = (v13 + 32);
  STACK[0x6E60] = (v13 + 48);
  STACK[0x8AF0] = (v13 + 64);
  STACK[0x7898] = (v13 + 80);
  STACK[0x7690] = v12 + (((v8 + 13102) | 0x323u) ^ 0x8B9BLL);
  LODWORD(STACK[0x68C4]) = 0;
  STACK[0x7C60] = 0;
  STACK[0x2700] = 0;
  LODWORD(STACK[0x21A4]) = -1366859764;
  STACK[0x6CC0] = 0;
  if (v6)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  v17 = !v14 && v3 != 0 && v1 != 0;
  return (*(v11 + 8 * (((v17 & (v2 | (a1 == 0))) * ((v8 + 383806228) & 0xE91F6BD3 ^ 0x2A2D)) ^ v8)))();
}

uint64_t sub_1003EBF28()
{
  v1 = STACK[0xF18];
  STACK[0x5990] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1424 ^ (14661 * ((v0 ^ 0x80261C1D) > 0x56597D34)))))();
}

uint64_t sub_1003EC064@<X0>(int a1@<W8>)
{
  v4 = a1 + 12085 - v2 - 371885352;
  if (v3)
  {
    v4 = 371891892;
  }

  LODWORD(STACK[0x6A84]) = v4 ^ v1;
  return (*(STACK[0xF18] + 8 * ((((v4 ^ v1) != -371865839) * (((a1 - 1632585775) & 0x614F2B3F) + 21)) ^ a1)))();
}

uint64_t sub_1003EC0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xF10];
  v4 = STACK[0xF10] ^ 0x33B0;
  LODWORD(STACK[0xA5B4]) = STACK[0x98D4] & 0xFFFFFFFE ^ 0x34ABF106;
  return (*(STACK[0xF18] + 8 * (v3 - 29445)))(a1, a2, a3, v4, ((0x88 % (v4 ^ 0xEE56B9BB ^ LODWORD(STACK[0xA5BC]))) ^ 0xFEAB5FFF) + 2 * (0x88 % (v4 ^ 0xEE56B9BB ^ LODWORD(STACK[0xA5BC]))) + 1100165708);
}

uint64_t sub_1003EC1EC()
{
  v0 = STACK[0xF10] - 752;
  v1 = STACK[0xF10] - 35602;
  v2 = STACK[0xF18];
  STACK[0x61A0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 - 23106 + v1)))();
}

uint64_t sub_1003EC22C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x20C8]) = a1;
  LODWORD(STACK[0x1474]) = a1;
  LODWORD(STACK[0x24EC]) = STACK[0x1678];
  v2 = STACK[0x8F20];
  v3 = STACK[0x3E68];
  v4 = 155453101 * (((~&STACK[0x10ED8] | 0xDE72B5BD44E5F3A4) + (&STACK[0x10ED8] | 0x218D4A42BB1A0C5BLL)) ^ 0x9DFA14B75D3C1795);
  LODWORD(STACK[0x10EE0]) = LODWORD(STACK[0x645C]) + v4;
  STACK[0x10EE8] = &STACK[0x1474];
  STACK[0x10EF0] = &STACK[0x6478];
  STACK[0x10ED8] = &STACK[0xF28] ^ 0xA72D128673B06877;
  STACK[0x10F10] = &STACK[0x6534];
  STACK[0x10F18] = &STACK[0x1678];
  STACK[0x10EF8] = &STACK[0x20C8];
  STACK[0x10F00] = (((v1 - 15670) | 0x830Bu) ^ v3 ^ 0x8BE4784CFD78E70ELL) - v4;
  STACK[0x10F28] = v2;
  LODWORD(STACK[0x10F08]) = (v1 + 28556) ^ v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8974)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((63166 * (LODWORD(STACK[0x10F20]) == ((v1 + 17188) | 0x11) - 371900810)) ^ v1)))(v6);
}

uint64_t sub_1003EC444()
{
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 + 4559)))(LOWORD(STACK[0x4E26]) ^ 0xD462u);
  v3 = LODWORD(STACK[0x3D64]) == (((v0 - 45401) | 0x8301) ^ 0x69D34C29) && STACK[0xF98] != 0;
  return (*(v1 + 8 * ((v3 * ((v0 ^ 0x32A8) - 35563)) ^ v0)))();
}

uint64_t sub_1003EC69C()
{
  *STACK[0x4E98] = 0;
  *(STACK[0x64E0] + v0) = -371865839;
  return (*(STACK[0xF18] + 8 * (((STACK[0x1040] == 0) * ((327 * ((v1 + 3225) ^ 0x97B9)) ^ (109 * ((v1 + 3225) ^ 0x9693)) ^ 0xFC7)) ^ (v1 + 3225))))();
}

uint64_t sub_1003EC764()
{
  STACK[0x9968] = &STACK[0xC4D0] + v0;
  v2 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0xDAB5 ^ (v1 + 1376248206) & 0xADF8DFB4)))();
}

uint64_t sub_1003EC7D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 24) - 0x22EE7697D45D5413;
  v4 = (v1 - 3053) + (v1 ^ 0x2D23u) + *(a1 + 24) - 0x22EE7697D45E7979;
  v5 = v3 < 0xB53FEDB5;
  v6 = v3 > v4;
  if (v5 != v4 < 0xB53FEDB5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((7 * !v6) ^ v1)))();
}

uint64_t sub_1003EC8B4()
{
  v1 = v0 - 16744;
  v2 = (v0 - 16744) ^ 0x68DE;
  v3 = STACK[0xED0];
  *(v3 + 8) = -371865839;
  *(v3 + 44) = 0;
  *v3 = -1359724707;
  *(v3 + 172) = -2109658874;
  *(v3 + 28) = 0;
  *(v3 + 36) = 16;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 33;
  *(v3 + 148) = -371865839;
  *(v3 + 264) = 0x981390C2FED9246;
  *(v3 + 272) = 1692332675;
  *(v3 + 184) = v3;
  *(v3 + 296) = 0x981390C2FED9246;
  v4 = STACK[0x8938];
  v5 = STACK[0x8818];
  v5[1] = *(STACK[0x8938] + 128);
  v5[2] = *(v4 + 132);
  v5[44] = *(v4 + 136);
  STACK[0x73D0] = v4;
  STACK[0x37E0] = v5;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x9038] = v7;
  STACK[0x6AA8] = v7;
  STACK[0x2220] = (v7 + 576);
  STACK[0x1808] = (v7 + 608);
  STACK[0x7690] = v6 + ((v2 - 3933) ^ 0x1320);
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(STACK[0xF18] + 8 * ((1020 * v9) ^ v1)))();
}

uint64_t sub_1003ECA18()
{
  v1 = STACK[0xF10] ^ 0xCE9D;
  v2 = STACK[0xF10] - 15092;
  STACK[0x1238] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 17816) * (v0 != 0)) ^ v2)))();
}

uint64_t sub_1003ECA58()
{
  STACK[0x10EE8] = &STACK[0x38CC];
  LODWORD(STACK[0x10ED8]) = (v0 - 22550) ^ (906386353 * ((((2 * (&STACK[0x10000] + 3800)) | 0xE49FCB9A) - (&STACK[0x10000] + 3800) - 1917838797) ^ 0x434E28E9));
  LOWORD(STACK[0x10EE0]) = 23473 * ((((2 * (&STACK[0x10000] + 3800)) | 0xCB9A) - (&STACK[0x10000] + 3800) + 6707) ^ 0x28E9) + 18064;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x418A)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x9EDC]) = STACK[0x10EDC];
  return (*(v1 + 8 * (v0 - 29888)))(v2);
}

uint64_t sub_1003ECC6C@<X0>(int a1@<W8>)
{
  v4 = (((v1 ^ 0x3AD892AA) - 987271850) ^ ((v1 ^ 0x35E15F28) - 903962408) ^ ((v1 ^ (((v3 + 625000894) & 0xDABEBDF7) - 420748829)) + 420738413)) + 117391626;
  v5 = ((a1 + 489257466) < 0x1D2979F9) ^ (v4 < 0x1D2979F9);
  v6 = a1 + 489257466 > v4;
  if (v5)
  {
    v6 = (a1 + 489257466) < 0x1D2979F9;
  }

  if (v6)
  {
    v2 = 371891407;
  }

  return (*(STACK[0xF18] + 8 * ((6350 * (v2 == -371865839)) ^ v3)))();
}

uint64_t sub_1003ECDE4()
{
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x43F36440) - 1007459264) ^ 0x75485626) - 17968;
  STACK[0x10ED8] = v0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 25981)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1003ECE70@<X0>(int a1@<W8>)
{
  v3 = a1 & 0x29F3CBFB;
  v4 = 1022166737 * (((&STACK[0x10ED8] | 0x9CDF5DE46BC83A5ELL) - (&STACK[0x10ED8] | 0x6320A21B9437C5A1) + 0x6320A21B9437C5A1) ^ 0xE2552F99D1D8DBCCLL);
  STACK[0x10ED8] = ((STACK[0x3F70] - (*(*v2 + (*v1 & 0xFFFFFFFFB724B0B8)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x719361230411ED1BLL)) > 0x7FFFFFFF04B306EFLL) ^ (*(STACK[0x8948] + 72) - (*(*v2 + (*v1 & 0xFFFFFFFF90A15330)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x26EE718C68DCDF5BLL) > 0x7FFFFFFF04B306EFLL) | v4;
  LODWORD(STACK[0x10EFC]) = ((v3 + 749709396) ^ 0x1303) + v4;
  LODWORD(STACK[0x10EE4]) = v4 + v3 + 782565441;
  LODWORD(STACK[0x10EE0]) = -1022166737 * (((&STACK[0x10ED8] | 0x9CDF5DE46BC83A5ELL) - (&STACK[0x10ED8] | 0x6320A21B9437C5A1) - 1808284255) ^ 0xD1D8DBCC);
  LODWORD(STACK[0x10EEC]) = v3 + 749709396 - v4;
  LODWORD(STACK[0x10EE8]) = v4 + v3 + 749709396 + 8;
  STACK[0x10EF0] = v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v3 ^ 0x4029u)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * SLODWORD(STACK[0x10EF8])))(v6);
}

uint64_t sub_1003ECFF0@<X0>(char a1@<W0>, int a2@<W1>, char a3@<W2>, unsigned int a4@<W8>)
{
  v10 = (v5 + a4);
  v11 = ((((v10 ^ v9) & 0x7FFFFFFF) * a2) ^ ((((v10 ^ v9) & 0x7FFFFFFF) * a2) >> 16)) * a2;
  v12 = *(STACK[0x930] + (v11 >> 24)) ^ *v10 ^ *(STACK[0x948] + (v11 >> 24)) ^ *(STACK[0x950] + (v11 >> 24)) ^ v11 ^ (BYTE3(v11) * (((v7 + v8) ^ a1) - 98)) ^ a3;
  return (*(STACK[0xF18] + 8 * ((7 * (((v6 << (v12 & 0x3E ^ 0x1Eu) << ((v12 & 1) == 0)) & (*(v4 + 8 * ((*(STACK[0x930] + (v11 >> 24)) ^ *v10 ^ *(STACK[0x948] + (v11 >> 24)) ^ *(STACK[0x950] + (v11 >> 24)) ^ v11 ^ (BYTE3(v11) * (((v7 + v8) ^ a1) - 98))) >> 6)) ^ 7)) != 0)) ^ v7)))();
}

uint64_t sub_1003ED0A0@<X0>(uint64_t a1@<X8>)
{
  v7 = a1 + (v1 ^ 0xE9D5C711);
  *(v4 + 36) = -371865839;
  *(v4 + 40) = 0;
  *(v4 + 48) = 3923101457;
  v8 = ((v3 ^ 0xF6BC1694) - 1748092416) ^ v2 ^ ((v3 ^ 0x245DC037) + 1160769373) ^ ((v3 ^ 0xC77EFFB6) - 1509109538);
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  v9 = 1022166737 * ((&STACK[0x10000] + 3800) ^ 0xBA10E192);
  STACK[0x10EE0] = v7;
  LODWORD(STACK[0x10EDC]) = v9 ^ ((v3 ^ ((v6 - 20310) | 0x8812) ^ 0x8B1272BA) + ((v6 - 1996) ^ 0xEA609C58)) ^ 0x77581785 ^ v8;
  LODWORD(STACK[0x10EE8]) = v6 - v9 - 10223;
  STACK[0x10EF0] = v5;
  v10 = STACK[0xF18];
  v11 = (*(STACK[0xF18] + 8 * (v6 ^ 0x9F34)))(&STACK[0x10ED8]);
  return (*(v10 + 8 * ((58196 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ v6)))(v11);
}

uint64_t sub_1003ED28C@<X0>(int a1@<W8>)
{
  v4 = STACK[0xF18];
  STACK[0x7608] = *(STACK[0xF18] + 8 * a1);
  STACK[0xB2A0] = v1;
  STACK[0xB2A8] = v2;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xB2B0] = v6;
  STACK[0xB2B8] = (v6 + 256);
  STACK[0xB2C0] = (v6 + 276);
  STACK[0x7690] = v5 + 3360;
  LODWORD(STACK[0x1AAC]) = 256;
  v7 = *(v1 + 32);
  STACK[0xB2C8] = v1 + 32;
  v8 = *(v1 + 40);
  STACK[0xB2D0] = v1 + 40;
  v9 = 155453101 * ((((&STACK[0x10000] + 3800) | 0xDAE2A338) - (&STACK[0x10000] + 3800) + ((&STACK[0x10000] + 3800) & 0x251D5CC0)) ^ 0x3CC4B8F7);
  LODWORD(STACK[0x10F00]) = v9 ^ 0x5AF81C38;
  LODWORD(STACK[0x10EEC]) = v3 - v9 + 371909545;
  STACK[0x10EF0] = &STACK[0x1AAC];
  STACK[0x10EF8] = v7;
  LODWORD(STACK[0x10ED8]) = v9 ^ 0xE30E58FF;
  LODWORD(STACK[0x10EDC]) = 1305734685 * v8 - v9 + 1096739917;
  STACK[0x10EE0] = v6;
  v10 = (*(v4 + 8 * (v3 + 371917936)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((52 * (((((LODWORD(STACK[0x10EE8]) - v3) | (v3 - LODWORD(STACK[0x10EE8]))) >> ((v3 + 57) ^ 0x55)) & 1) == 0)) ^ (v3 + 371874931))))(v10);
}

uint64_t sub_1003ED48C()
{
  v1 = STACK[0xF18];
  STACK[0x6A00] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x20B2 ^ (32348 * ((v0 ^ 0x7DBCCF5u) > 0xDB349709)))))();
}

void *sub_1003ED4F8()
{
  v0 = STACK[0xF10] ^ 0x8C9B;
  v1 = STACK[0xF10] - 30977;
  v2 = STACK[0xF18];
  STACK[0x3F68] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v0 + v1 + 923)))(&STACK[0x7C48]);
}

uint64_t sub_1003ED600@<X0>(uint64_t a1@<X8>)
{
  STACK[0x9638] = *(a1 + 296);
  STACK[0xAF10] = a1 + 36;
  STACK[0x1B00] = 0;
  LODWORD(STACK[0x6ABC]) = -371865839;
  STACK[0x5020] = 0;
  LODWORD(STACK[0x10EE4]) = v2 - 193924789 * ((((&STACK[0x10000] + 3800) ^ 0x845AA8C3 | 0xEFBF8190) - ((&STACK[0x10000] + 3800) ^ 0x845AA8C3) + (((&STACK[0x10000] + 3800) ^ 0x845AA8C3) & 0x10407E6B)) ^ 0xDD5E1B35) - 31225;
  STACK[0x10ED8] = v1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 + 12724)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v2))(v4);
}

uint64_t sub_1003ED828()
{
  v2 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x14CFE928)) ^ 0x14CFE92BLL;
  v3 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v2 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v2;
  v4 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v3 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v3;
  v5 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v4 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v4;
  v6 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v5 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v5;
  v7 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v6 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v6;
  v8 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v7 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v7;
  v9 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v8 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v8;
  v10 = *(v0 + 48);
  v11 = v9 ^ (349169963 * v10) ^ *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v9 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL)));
  for (i = 1; i != 33; ++i)
  {
    v13 = 16777619 * ((v11 + i) ^ v11) % i;
    v14 = *(v10 + 8 * v13) ^ *(v10 + 8 * i);
    *(v10 + 8 * i) = v14;
    v15 = *(v10 + 8 * v13) ^ v14;
    *(v10 + 8 * v13) = v15;
    *(v10 + 8 * i) ^= v15;
  }

  v16 = 0;
  v17 = xmmword_100BC7620;
  v18 = xmmword_100BC7630;
  v19 = xmmword_100BC7640;
  v20 = xmmword_100BC7650;
  v21.i64[0] = 0x9B009B009B009BLL;
  v21.i64[1] = 0x9B009B009B009BLL;
  v22.i64[0] = 0x1000000010;
  v22.i64[1] = 0x1000000010;
  v23 = vdupq_n_s32(v11);
  do
  {
    v24 = *(v10 + v16);
    v25 = vmovl_high_u8(v24);
    v26 = vmovl_u8(*v24.i8);
    v37.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v19, v23), vsubq_s32(v19, v23)), v23), vmull_high_u16(v26, v21));
    v37.val[2] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v18, v23), vsubq_s32(v18, v23)), v23), vmull_u16(*v25.i8, 0x9B009B009B009BLL));
    v37.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v20, v23), vsubq_s32(v20, v23)), v23), vmull_u16(*v26.i8, 0x9B009B009B009BLL));
    v37.val[3] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v17, v23), vsubq_s32(v17, v23)), v23), vmull_high_u16(v25, v21));
    *(v10 + v16) = vqtbl4q_s8(v37, xmmword_100BC7660);
    v16 += 16;
    v20 = vaddq_s32(v20, v22);
    v19 = vaddq_s32(v19, v22);
    v18 = vaddq_s32(v18, v22);
    v17 = vaddq_s32(v17, v22);
  }

  while (v16 != 256);
  v27 = 0;
  v28 = xmmword_100F52B10;
  v29 = xmmword_100F52B20;
  v30 = vdupq_n_s32(v11);
  v31 = v10 + 256;
  v32.i64[0] = 0x9B009B009B009BLL;
  v32.i64[1] = 0x9B009B009B009BLL;
  v33.i64[0] = 0x800000008;
  v33.i64[1] = 0x800000008;
  do
  {
    v34 = vmovl_u8(*(v31 + v27));
    v36.val[1] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v28, v30), vsubq_s32(v28, v30)), v30), vmull_high_u16(v34, v32));
    v36.val[0] = veorq_s8(veorq_s8(vmulq_s32(vaddq_s32(v29, v30), vsubq_s32(v29, v30)), v30), vmull_u16(*v34.i8, 0x9B009B009B009BLL));
    *(v31 + v27) = vqtbl2q_s8(v36, xmmword_100F52AD0).u64[0];
    v29 = vaddq_s32(v29, v33);
    v28 = vaddq_s32(v28, v33);
    v27 += 8;
  }

  while (v27 != 8);
  return (*(STACK[0xF18] + 8 * (v1 + 58)))(v28, v29);
}

uint64_t sub_1003EDBA4()
{
  v1 = STACK[0x1E30];
  *(v1 + 216) = 1;
  *(v1 + 228) = 1;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003EDD48()
{
  LODWORD(STACK[0x1D40]) = v2;
  LODWORD(STACK[0x6DBC]) = v3;
  STACK[0x7518] = v0;
  LODWORD(STACK[0x2530]) = v1;
  v5 = STACK[0xF10];
  LODWORD(STACK[0x10ED8]) = STACK[0xF10] + 634647737 * (((~(&STACK[0x10000] + 3800) & 0x93994FE4) - (~(&STACK[0x10000] + 3800) | 0x93994FE5)) ^ 0xFE0F6019) - 212212507;
  v6 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v5 + 16387)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x25BC]) = -1562523887;
  v7 = STACK[0x7690];
  STACK[0x75B8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xA300] = &STACK[0xC4D0] + v7 + 120;
  (*(v6 + 8 * (v4 ^ 0xC553)))(&STACK[0xC4D0] + v7 + 120, 0, 1024);
  STACK[0xA308] = &STACK[0xC4D0] + v7 + 120;
  STACK[0x7690] = v7 + ((v4 + 21589) ^ 0x6779);
  (*(v6 + 8 * (v4 + 47933)))(STACK[0x2AD8], &STACK[0xC4D0] + v7 + 1152, 32);
  v8 = (*(v6 + 8 * (v4 ^ 0xC4FD)))(&STACK[0xC4D0] + v7 + 1152, 0, 0, 0, 0, 0, &STACK[0x2214], 0);
  STACK[0x99B8] = *(v6 + 8 * v4);
  return (*(v6 + 8 * (v4 ^ 0x1980)))(v8);
}

uint64_t sub_1003EDF34(int a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, int a8)
{
  v16 = (2 * (a3 ^ a1)) & 0x1084102 ^ 0x1084152 ^ ((2 * (a3 ^ a1)) ^ 0x8E7296CC) & (a3 ^ a1);
  v17 = v16 & 0x180;
  v18 = (4 * v16) & 0x8529CF50 ^ 0x8108C212 ^ ((4 * v16) ^ 0x90863560) & v16;
  v19 = ((((v17 >> 7) & 1) << 11) | 0x200) ^ (v17 | v15) ^ v18 & (v14 ^ (16 * v17));
  v20 = (16 * v18) & a4 ^ a5 ^ ((16 * v18) ^ a7) & v18;
  v21 = v19 ^ (v19 << 8) & 0x1098200 ^ ((v19 << 8) ^ v13) & v20 ^ 0x1094200;
  v22 = (4 * a3) ^ (8 * ((v21 << 16) & a8 ^ v21 ^ ((v21 << 16) ^ 0xF520000) & ((v20 << 8) & a8 ^ 0x4200000 ^ ((v20 << 8) ^ 0x9CF0000) & v20))) ^ 0xB7AF1810;
  v23 = *(a2 + 4 * (a3 - v8));
  v24 = (v10 + v22);
  v24[3] = HIBYTE(v23) ^ 0xE1;
  v24[2] = BYTE2(v23) ^ 0xE1;
  v24[1] = BYTE1(v23) - ((v23 >> 7) & 0xC2) - 31;
  *v24 = v23 - ((2 * v23) & 0xC3) - 31;
  return (*(v11 + 8 * (((((a3 + 1) & 0xFFFFFFFCLL) == 306685792) * v12) ^ v9)))();
}

uint64_t sub_1003EE324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  *(v44 + 24) = a1;
  v45 = STACK[0x300];
  *(*(STACK[0x300] + 24) + 32) = *(STACK[0x300] + 32);
  *(STACK[0x308] + 40) += *(v45 + 8) + (v42 ^ 0xC31DA1F13ADF4DB0);
  v46 = (((LOBYTE(STACK[0x47F]) ^ 0x93EE2A2BF5EA98CCLL) + 0x6C11D5D40A156734) ^ ((LOBYTE(STACK[0x47F]) ^ 0xB18A007E1F808C28) + 0x4E75FF81E07F73D8) ^ ((LOBYTE(STACK[0x47F]) ^ 0x22642A55EA6A1423) - 0x22642A55EA6A1423)) + 0x73B4913AF7C22BEBLL;
  *(v45 + 8) = 0x79C4BC1D8A4006F0 - *(v45 + 8);
  *(v45 + 16) = v46;
  *a41 = 0x3CE25E0EC5200378;
  STACK[0x570] = v41 + 0x3CE1E39507E23E9BLL;
  v47 = *(STACK[0x430] + 8 * (v42 ^ (185 * (v41 != 0xC31E1C6AF81DC165))));
  STACK[0x3D0] = &STACK[0x47C];
  STACK[0x310] = v45;
  STACK[0x388] = v43;
  return v47(v47, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1003EE4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 17 * (STACK[0xF10] ^ 0x81E0);
  v4 = STACK[0xF10] - 34120;
  LODWORD(STACK[0xA540]) = STACK[0x98D4];
  v5 = 0x1677 % (LODWORD(STACK[0xA544]) ^ 0xAF3D9A27) - (((0x1677 % (LODWORD(STACK[0xA544]) ^ 0xAF3D9A27)) << (v3 + 118)) & 0x1422) - 1419949551;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1DC5)))(a1, a2, a3, v3, (((v5 ^ 0xE3C9F13A) + 473304774) ^ ((v5 ^ 0x6CA8A495) - 1822991509) ^ ((v5 ^ 0x243C1FBE) - 607920062)) - 342107044);
}

uint64_t sub_1003EE59C()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] - 32141) | 0x4000;
  v2 = STACK[0xF10] - 31043;
  LODWORD(STACK[0x2C5C]) = STACK[0x98D4];
  LODWORD(STACK[0x5374]) = (((LODWORD(STACK[0x9FC4]) ^ 0x441F02F7) - 1142883063) ^ (v1 - 584332326 + (LODWORD(STACK[0x9FC4]) ^ 0x22D3E678)) ^ ((LODWORD(STACK[0x9FC4]) ^ 0x8F19239E) + 1894177890)) - (((LODWORD(STACK[0x9FCC]) ^ 0x5FBD7D5) - 100390869) ^ ((LODWORD(STACK[0x9FCC]) ^ 0xF02EF118) + 265359080) ^ ((LODWORD(STACK[0x9FCC]) ^ 0x1C00E1DC) - 469819868)) + 699559980;
  return (*(STACK[0xF18] + 8 * ((10277 * (v2 != 92515709)) ^ (v0 - 35079))))();
}

uint64_t sub_1003EE6BC()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB185)))(STACK[0x4518] - 0x217E172EFA1E81CLL);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003EE6F8@<X0>(int a1@<W8>)
{
  v6 = STACK[0xF18];
  STACK[0x4990] = *(STACK[0xF18] + 8 * a1);
  STACK[0x1E30] = v2;
  STACK[0x42F8] = v1;
  STACK[0x7690] = v3 + 112;
  return (*(v6 + 8 * ((57 * (v5 != 0)) ^ v4)))();
}

uint64_t sub_1003EE98C@<X0>(char a1@<W0>, int a2@<W2>, unsigned int a3@<W3>, uint64_t a4@<X5>, int a5@<W6>, int a6@<W7>, int a7@<W8>)
{
  v19 = ((2 * ((((a2 + 305320) | 0x5C23098) - 96940422) & v9 ^ 0xF0CECD9B)) ^ 0xCFA2C576) & (v9 ^ 0xA061E64) ^ (((a2 + 305320) | 0x5C23098) - 96940422) & v9 ^ 0xF0CECD9B;
  v20 = (v11 ^ 0xB83223AC) & (v9 ^ 0xC100A0B6);
  v21 = ((4 * v19) ^ 0x55F9112C) & (v20 | 0x2E3F5E40) ^ v19;
  v22 = ((4 * v20) ^ 0x96C22740) & (v20 | 0x6270640) ^ 0xDEF193DB;
  v23 = (16 * v21) & v12 ^ v21 ^ ((16 * v21) ^ a6) & v22;
  v24 = (16 * v22) & v12 ^ 0xF002040B ^ ((16 * v22) ^ a6) & v22;
  v25 = v23 ^ (v23 << 8) & 0xF0CECD00 ^ ((v23 << 8) ^ 0x2040B00) & v24 ^ 0xC8C090;
  v26 = v10 ^ (((v25 << 16) & v17 ^ v25 ^ ((v25 << 16) ^ 0x1B0000) & ((v24 << 8) & v17 ^ ((v24 << 8) ^ 0x4D0000) & v24 ^ 0x20000)) << 9);
  v27 = v18 + a3;
  v28 = *(v27 + 4) - ((2 * *(v27 + 4)) & 0xD4) + 534753642;
  v29 = (v26 ^ 0x31C83015) & (v28 ^ 0xE0204E15) ^ v28 & 0x20FEA;
  v30 = 34835 * (((v29 ^ 0xDCE974F5) - 1636999129) ^ ((v29 ^ 0x63A7547E) + 555958446) ^ ((v29 ^ 0x1A1D1F4) + 1126548776)) + 1226587500;
  v31 = v30 ^ ((v30 ^ 0xEDF6907F) + 1554627286) ^ ((v30 ^ 0xB60B9453) + 122994426) ^ ((v30 ^ 0x6EA26B8E) - 537050843) ^ ((v30 ^ 0x7BFFBAF7) - 895446946) ^ 0x750CA367;
  v32 = 0x1020E30EFC8F0 * (((v31 ^ 0x73D17331F05B7FCLL) - 0x673D17331F05B7FCLL) ^ ((v31 ^ 0x813D235F4C70162) + 0x57EC2DCA0B38FE9ELL) ^ ((v31 ^ 0xF2EC506D06EC0ACLL) + 0x30D13AF92F913F54)) + 0x20C2719E66F73CE2;
  v33 = v32 ^ ((v32 ^ 0x5B8016042485AF3) - 0x7755A80420B04F1) ^ ((v32 ^ 0x3EB5333603A4A29DLL) - 0x3C7868D603E7FC9FLL) ^ ((v32 ^ 0xE67D94598E553B95) + 0x1B4F304671E99A69) ^ ((v32 ^ 0xDFBDFDEFCFFA9DF9) + 0x228F59F030463C05);
  v34 = ((v33 ^ 0x923D095F652D5CD5) + 0x4D310F089BC0E564) ^ ((v33 ^ 0x34849D7EAC09EEA1) - 0x147764D6AD1BA8E8);
  LODWORD(v33) = __CFADD__((v34 ^ ((v33 ^ 0xA474CFC1C967EC76) + 0x7B78C996378A55C1)) * v14, 0xCE911A7E68EF7712) + (((v34 ^ ((v33 ^ 0xA474CFC1C967EC76) + 0x7B78C996378A55C1)) * v14) >> 64) + ((a5 + __CFADD__(v33 ^ 0x923D095F652D5CD5, 0x4D310F089BC0E564)) ^ (a5 + __CFADD__(v33 ^ 0x34849D7EAC09EEA1, 0xEB889B2952E45718)) ^ (a5 + __CFADD__(v33 ^ 0xA474CFC1C967EC76, 0x7B78C996378A55C1))) * v14 + 2127030885;
  v35 = (v33 ^ 3) & (2 * (v33 & 0x93)) ^ v33 & 0x93;
  LOBYTE(v34) = ((2 * (v33 ^ 0x23)) ^ 0x60) & (v33 ^ 0x23) ^ (2 * (v33 ^ 0x23)) & 0xB0;
  *(v13 + v7) = v33 ^ (2 * ((((4 * (v34 ^ 0x90)) ^ 0xC0) & (v34 ^ 0x90) ^ (4 * (v34 ^ 0x90)) & 0xB0) & (16 * (v34 & (4 * v35) ^ v35)) ^ v34 & (4 * v35) ^ v35)) ^ 0xCC;
  v36 = a7 + 15280 * (((v26 ^ 0x30CCBE3) & ~*(v27 + 4) | *(v27 + 4) & 0x1C) ^ 0xC290BE3);
  v37 = v36 - (((v36 * v8) >> 32) >> 15) * v15;
  *(a4 + v7) = (v37 - ((2 * v37) & 0x20) + 17) ^ a1;
  return (*(STACK[0xF18] + 8 * (a2 ^ ((v7 == 15) * v16))))();
}

uint64_t sub_1003EEF6C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD69B)))(v1);
  *(STACK[0x2748] + 104) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1003EEFA4@<X0>(int a1@<W8>)
{
  v3 = *STACK[0xE58];
  v4 = *STACK[0xE50];
  v5 = *(v1 + 40) - (*(v4 + (v3 & 0xFFFFFFFFF1F71F20)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x329F1AD0046BFA29);
  v6 = v5 ^ ((a1 + 1375451780) | (((a1 + 944735278) ^ 0xC7AFF096) << 32));
  v7 = (v6 & v5) >> (__clz(v6 | 1) ^ 0x3Fu);
  LODWORD(v6) = *(v2 + 48) - (*(v4 + (v3 & 0x43420908)) & 0x7FFFFFFFFFFFFFFFLL ^ 0x7B49658091533B91uLL) > 0xFFFFFFFF51FC45BFLL;
  v8 = 1022166737 * (((&STACK[0x10ED8] | 0x911FDD22CFF1861ALL) - (&STACK[0x10ED8] | 0x6EE022DD300E79E5) + 0x6EE022DD300E79E5) ^ 0xEF95AF5F75E16788);
  LODWORD(STACK[0x10EEC]) = a1 + 944735278 - v8;
  LODWORD(STACK[0x10EE8]) = ((a1 + 944735278) ^ 0x2E) + v8;
  STACK[0x10ED8] = v8;
  LODWORD(STACK[0x10EFC]) = ((a1 + 944735278) ^ 0x1309) + v8;
  STACK[0x10EF0] = v8 & 0xFFFFFFFFFFFFFFFELL | (v6 ^ v7) & 1;
  LODWORD(STACK[0x10EE0]) = -1022166737 * (((&STACK[0x10ED8] | 0x911FDD22CFF1861ALL) - (&STACK[0x10ED8] | 0x6EE022DD300E79E5) + 806255077) ^ 0x75E16788);
  LODWORD(STACK[0x10EE4]) = v8 + a1 + 782565441;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (a1 + 16343)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * SLODWORD(STACK[0x10EF8])))(v10);
}

uint64_t sub_1003EF148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  v5 = a5 ^ 0x77DE;
  v6 = LODWORD(STACK[0x76C0]) + LODWORD(STACK[0x1EA4]) + 1944478076;
  LODWORD(STACK[0xA4F4]) = v6;
  return (*(STACK[0xF18] + 8 * (v5 ^ 0x1ABF)))(a1, a2, a3, a4, ((v5 + 33283) | 0x328u) + v6 + 1728844287);
}

uint64_t sub_1003EF280()
{
  v1 = STACK[0xF18];
  STACK[0x78C0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((((v0 + 1738220408) & 0x9864F7A8) - 3391) ^ v0)))();
}

uint64_t sub_1003EF2C4()
{
  v1 = STACK[0x2484];
  STACK[0x8FE8] = *(*(STACK[0x2B08] - 0x10A99C80114D147FLL) - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1751212916;
  LODWORD(STACK[0x704C]) = -2116087564;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003EF354()
{
  STACK[0x3E68] = LODWORD(STACK[0x8340]) ^ (((v1 - 2099) | 0x844u) + 0x981390CC6383CD8);
  v2 = v0 == ((v1 - 2135337214) & 0x7F46B5DF) + 1497659130;
  return (*(STACK[0xF18] + 8 * ((v2 | (16 * v2)) ^ v1)))();
}

uint64_t sub_1003EF418()
{
  v0 = STACK[0xF10];
  v1 = STACK[0xF10] - 1259894691;
  v2 = STACK[0x3378];
  v3 = *(STACK[0x3378] + 132) + (((LODWORD(STACK[0xA50C]) ^ 0xB4C26E3F) + 1262326209) ^ ((LODWORD(STACK[0xA50C]) ^ 0xB44FAFB7) + 1269846089) ^ ((LODWORD(STACK[0xA50C]) ^ 0xE9580699) + 380107111)) - 371865796;
  *(v2 + 128) = STACK[0xA50C];
  *(v2 + 132) = v3;
  return (*(STACK[0xF18] + 8 * ((30473 * (v1 < 0xF6A27171)) ^ (v0 - 23991))))();
}

uint64_t sub_1003EF6A8()
{
  LODWORD(STACK[0x10EE4]) = (v1 + 9403) ^ (1012831759 * ((((2 * (&STACK[0x10ED8] ^ 0xCC751109)) | 0x61D63834) - (&STACK[0x10ED8] ^ 0xCC751109) - 820714522) ^ 0xEC0D1B99));
  STACK[0x10ED8] = v0;
  v4 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 ^ 0xECBC)))(&STACK[0x10ED8]);
  *(v2 + 128) = v3;
  STACK[0x10EE0] = *(v2 + 320);
  LODWORD(STACK[0x10ED8]) = v1 + 139493411 * ((2 * (&STACK[0x10ED8] & 0x40B429F8) - &STACK[0x10ED8] - 1085549050) ^ 0xB3663743) + 2387;
  v5 = (*(v4 + 8 * (v1 ^ 0xEC16)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v1))(v5);
}

uint64_t sub_1003EF7B0()
{
  v2 = v1 + v0 + 497486954;
  if (v2 <= 0x40)
  {
    v2 = 64;
  }

  return (*(STACK[0xF18] + 8 * ((28 * (v2 - v1 - 497524781 > 0x1E)) ^ v0)))();
}

uint64_t sub_1003EF964@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>)
{
  v4 = (a3 - 49930) | 0x15C1;
  *(a2 + 16 * v3 + 8) = (11881 * (v4 ^ 0x15E2u)) ^ *(a1 + 24) ^ 0x981390C2FED196CLL;
  return (*(STACK[0xF18] + 8 * v4))();
}

uint64_t sub_1003EF9BC()
{
  STACK[0x8828] = STACK[0x1E08] + 33;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xF2B4)))();
  v3 = ((2 * v2) & 0xFDECC74C) + (v2 ^ (v0 - 17421695));
  LODWORD(STACK[0x8A68]) = v3 + 2013265152;
  return (*(v1 + 8 * ((((v3 + ((v0 - 14628) ^ 0x81099C5B)) >= 0) | (2 * ((v3 + ((v0 - 14628) ^ 0x81099C5B)) >= 0))) ^ v0)))(v2);
}

uint64_t sub_1003EFABC()
{
  LODWORD(STACK[0x1F74]) = v1;
  LODWORD(STACK[0x3B28]) = v0;
  return (*(STACK[0xF18] + 8 * (((((23 * (v2 ^ 0x8A5C)) ^ 0xF58446A9) + ((v2 + 172995925) | 0x2C0C27)) * (v3 == -371865839)) ^ (v2 - 27386))))();
}

uint64_t sub_1003EFC44()
{
  v6 = STACK[0xF18];
  STACK[0xEC0] = *(STACK[0xF18] + 8 * v0);
  return (*(v6 + 8 * ((106 * (((v3 + 71) ^ (v4 + v2 + ((v2 < ((v3 + 28467) ^ 0x46CA9D1u)) << 32) - 74190874 > v5 + v1 + ((v1 < 0x51744E85) << 32) - 1366576773)) & 1)) ^ v3)))();
}

uint64_t sub_1003EFCDC()
{
  v0 = STACK[0xF10] - 8381;
  STACK[0x5188] = 0x217E172EFA1E81CLL;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003EFD10()
{
  v0 = STACK[0xF10] - 23566;
  STACK[0x8A48] = STACK[0xEA0];
  LODWORD(STACK[0x6B14]) = STACK[0xE90];
  STACK[0x6FE8] = STACK[0xEB0];
  LODWORD(STACK[0x15B4]) = STACK[0xEC0];
  return (*(STACK[0xF18] + 8 * ((43033 * (STACK[0x93A8] == 0)) ^ v0)))();
}

uint64_t sub_1003EFE98()
{
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v1 + 34473)))(v0);
  return (*(v2 + 8 * v1))(STACK[0xEC0], LODWORD(STACK[0xEB0]), 4294950242, 40665, 109, 3587000818, 23860, 35644);
}

uint64_t sub_1003EFF98(uint64_t a1)
{
  *STACK[0x6668] = a1;
  *STACK[0x5160] = STACK[0x33BC];
  return (*(STACK[0xF18] + 8 * (v1 - 9630)))();
}

uint64_t sub_1003F0070()
{
  v1 = STACK[0xF18];
  STACK[0x5418] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xAD81 ^ (67 * (v0 ^ 0x7D3)))))();
}

uint64_t sub_1003F00D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x7020] + 32 * STACK[0x8198]);
  v6 = STACK[0xF18];
  STACK[0x6260] = *(STACK[0xF18] + 8 * v4);
  return (*(v6 + 8 * (v4 ^ (v4 - 737563220) & 0x2BF6DDBF ^ 0x91E3 ^ (9272 * ((v4 - 27174681) < 0x4D86597A)))))(a1, a2, a3, a4, v5);
}

uint64_t sub_1003F02B4@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE4]) = (v1 + 8151) ^ (1012831759 * ((((&STACK[0x10000] + 3800) | 0x6304BA45) - ((&STACK[0x10000] + 3800) | 0x9CFB45BA) - 1661254214) ^ 0x7397ACCF));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 40608)))(&STACK[0x10ED8]);
  *(STACK[0x78B0] + 128) = v2;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1003F03A4()
{
  LOBYTE(STACK[0x2D37]) = v3;
  LODWORD(STACK[0x14FC]) = v0;
  LODWORD(STACK[0x7BAC]) = v1;
  STACK[0x91C8] = 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1003F0400()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))(v0 - 0x65D7F4DC84452C66);
  return (*(v2 + 8 * (v1 - 33901)))(v3);
}

uint64_t sub_1003F04A8()
{
  v6 = STACK[0xF18];
  STACK[0x8C78] = *(STACK[0xF18] + 8 * v0);
  STACK[0xB528] = v5;
  LODWORD(STACK[0xB534]) = v2;
  STACK[0xB538] = v4;
  STACK[0xB540] = v3;
  return (*(v6 + 8 * (((109 * (v1 ^ 0x1917) + ((v1 - 3405) | 0x8038) - 71066) * (v5 == 0)) ^ v1)))();
}

uint64_t sub_1003F05C0()
{
  v1 = STACK[0xF10] ^ 0xCA5F;
  v2 = 2146 * (STACK[0xF10] ^ 0x8B23);
  LODWORD(STACK[0xB4AC]) = v0;
  v3 = STACK[0x7690];
  STACK[0x87F8] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v3 - 51472 + v2;
  LODWORD(STACK[0x662C]) = -371865839;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003F06C0@<X0>(unint64_t a1@<X8>)
{
  STACK[0xBA98] = a1;
  STACK[0xBAA0] = v1;
  LOBYTE(STACK[0xBAAF]) = v3;
  STACK[0xBAB0] = v4;
  STACK[0x7690] = ((v2 - 200992808) & 0xBFABB3B) + STACK[0x7690] - 35627;
  return (*(STACK[0xF18] + 8 * (((a1 == 0) * ((v2 - 11514) ^ 0x8B51)) ^ v2)))();
}

uint64_t sub_1003F0738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x9940] = v4;
  v5 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * v3);
  return (*(v5 + 8 * (((v3 ^ 0x37C0) - 1404) ^ v3)))(a1, a2, a3, 0x1D54AEB378980553);
}

uint64_t sub_1003F087C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(STACK[0xF18] + 8 * (v1 | 0x4006)))();
}

uint64_t sub_1003F0944()
{
  v1 = STACK[0xF18];
  STACK[0x3988] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((16949 * (v0 ^ 0xFBB) - 43886) ^ v0)))();
}

uint64_t sub_1003F0B18@<X0>(char a1@<W0>, char a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, unsigned int a6@<W5>, int a7@<W6>, int a8@<W7>, char a9@<W8>)
{
  v24 = *(STACK[0xEA0] + ((495 * ((v11 - (a9 & 0x7A) - 67) ^ v13)) & 0x1FF ^ 0x100));
  v25 = v24 & v15 ^ 0x30;
  v26 = a5 + (v24 ^ (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * ((v24 ^ a1) & (2 * v25) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ v25)) ^ a2) * a4;
  v27 = v14 + (*(v9 + v26 - (((v26 * a6) >> 32) >> 1) * a7) ^ v19) * a4;
  *(v20 + (*(v12 + 4 * (v16 + (v11 ^ a3) * a8 - ((((v16 + (v11 ^ a3) * a8) * v17) >> 32) >> 13) * v18)) ^ v21) + v22) = *(v9 + v27 - (((v27 * a6) >> 32) >> 1) * a7) ^ 0x7C;
  return (*(STACK[0xF18] + 8 * (((v11 == 511) * v23) ^ v10)))();
}

uint64_t sub_1003F0C60(int a1)
{
  v9 = v1 < v4;
  if (v9 == v2 + 1 > ((a1 + v5) & v6 ^ v8))
  {
    v9 = v2 + v7 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((v9 * v3) ^ a1)))();
}

uint64_t sub_1003F0D58@<X0>(uint64_t a1@<X2>, int a2@<W6>, int a3@<W7>, int a4@<W8>)
{
  v13 = (((a4 - 14030) | 0x8004u) - 32959) & (13 * v4 + 24);
  v14 = v6 + 4 * v4;
  v15 = (*(v10 + 4 * v13) - 450790015) * *(v12 + v14);
  v16 = (v7 & (2 * ((a2 - v4) % 0x85u))) + (((a2 - v4) % 0x85u) ^ v9);
  v17 = v16 + 0x8CA1600075005CFLL;
  v18 = *(&off_1010A0B50 + (a4 ^ 0x27F7)) - 1795038215;
  v19 = &v18[4 * v16 + 0x232858001D4018C4];
  v20 = *(&off_1010A0B50 + (a4 ^ 0x355B));
  v21 = (v8 & (2 * v15)) + (v15 ^ 0xD7FDB6F6);
  v22 = v20 - 1331463379;
  if (v17 < 0xFFFFFFFFFFFFFF9ELL)
  {
    v19 = (v20 - 1331463379 + 4 * v17);
  }

  v23 = *v19;
  v24 = *(a1 + 4 * (((v4 ^ 0x487B70FC) - 140175380) ^ v4 ^ ((v4 ^ 0xB23C1291) + 232945031) ^ ((v4 ^ 0xE591055A) + 1515151950) ^ ((v4 ^ 0x5FF7FFDF) - 534144823) ^ 0x402198F3)) * a3 + 73696428 * v21 - 1822103814 * (((v23 ^ 0xB4E8E73) - 189697651) ^ ((v23 ^ 0x3724D6C) - 57822572) ^ ((v23 ^ 0x76FFAD8E) - 1996467598)) + ((((v23 ^ 0xB4E8E73) - 189697651) ^ ((v23 ^ 0x3724D6C) - 57822572) ^ ((v23 ^ 0x76FFAD8E) - 1996467598)) + 2126737041) * (v21 - 1801625072);
  v25 = ((v24 + 1765583212) ^ 0xAF08FDF3) & (2 * ((v24 + 1765583212) & 0xCFA2FDFB)) ^ (v24 + 1765583212) & 0xCFA2FDFB;
  v26 = ((2 * ((v24 + 1765583212) ^ 0x2A48FF35)) ^ 0xCBD4059C) & ((v24 + 1765583212) ^ 0x2A48FF35) ^ (2 * ((v24 + 1765583212) ^ 0x2A48FF35)) & 0xE5EA02CE;
  v27 = ((4 * (v26 ^ 0x242A0242)) ^ 0x97A80B38) & (v26 ^ 0x242A0242) ^ (4 * (v26 ^ 0x242A0242)) & 0xE5EA02C8;
  v28 = (v27 ^ 0x85A80200) & (16 * ((v26 ^ 0x4180008C) & (4 * v25) ^ v25)) ^ (v26 ^ 0x4180008C) & (4 * v25) ^ v25;
  v29 = ((16 * (v27 ^ 0x604200C6)) ^ 0x5EA02CE0) & (v27 ^ 0x604200C6) ^ (16 * (v27 ^ 0x604200C6)) & 0xE5EA02C0;
  v30 = v28 ^ 0xE5EA02CE ^ (v29 ^ 0x44A00000) & (v28 << 8);
  v31 = (v24 + 1765583212) ^ (2 * ((v30 << 16) & 0x65EA0000 ^ v30 ^ ((v30 << 16) ^ 0x2CE0000) & (((v29 ^ 0xA14A020E) << 8) & 0x65EA0000 ^ 0x5E80000 ^ (((v29 ^ 0xA14A020E) << 8) ^ 0x6A020000) & (v29 ^ 0xA14A020E)))) ^ 0x2E894748;
  *(v11 + v14) = v31;
  v32 = ((2 * ((v24 + 954181545) % 0x85u)) & 0x146) + (((v24 + 954181545) % 0x85u) ^ 0x5EEEFFCFDDBEEEA3);
  v33 = __CFADD__(v32 - 0x5EEEFFCFDDBEEF05, 98);
  v34 = (v22 + 4 * (v32 - 0x5EEEFFCFDDBEEF05));
  v35 = &v18[4 * v32 - 0x7BBBFF3F76FBBA8CLL];
  if (!v33)
  {
    v35 = v34;
  }

  *(v10 + 4 * v13) = *(v10 + 4 * v13) - 1062673203 * (((v31 ^ *v35 ^ 0x46054A8C) - 1174751884) ^ ((v31 ^ *v35 ^ 0x43CF3320) - 1137652512) ^ ((v31 ^ *v35 ^ 0x5062A812) - 1348642834)) - 1367852467;
  return (*(v5 + 8 * ((17189 * (v4 == 1075943687)) ^ a4)))();
}

uint64_t sub_1003F11C0@<X0>(unint64_t a1@<X8>)
{
  v6 = *v2;
  v7 = STACK[0xF18];
  STACK[0x85A0] = *(STACK[0xF18] + 8 * v3);
  STACK[0x91B0] = v4;
  LODWORD(STACK[0x2EEC]) = v5;
  STACK[0x97D0] = a1;
  LODWORD(STACK[0x62F0]) = v6;
  return (*(v7 + 8 * (((v4 != 0x217E172EFA1E81CLL) * (((v1 - 751312760) & 0x2CC7BFFF) - 11938)) ^ v1)))();
}

uint64_t sub_1003F12EC()
{
  v1 = STACK[0xF18];
  STACK[0x3978] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x4C48 ^ (v0 + 24590))))();
}

uint64_t sub_1003F14BC()
{
  v1 = STACK[0xF18];
  STACK[0x1528] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((21999 * ((v0 - 2022486933) < 0x1F5A3238)) ^ (v0 + 10468))))();
}

uint64_t sub_1003F1530()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0xCB19)))(v0 + ((v1 - 2043510795) & 0x79CDB9FFu) + 17392228, STACK[0xF98], LODWORD(STACK[0x14AC]) ^ 0xE9D5C711);
  v4 = (v3 ^ 0x67C9ABF9B7F6FFFFLL) + 0x1836540648090001 + ((v3 << v1) & 0xCF9357F36FEDFFFELL);
  v5 = (((v4 | v1 | ((v1 ^ 0x80000001) << 32)) - v4) | (v4 - (v1 | ((v1 ^ 0x80000001) << 32))) & ~((v1 | ((v1 ^ 0x80000001) << 32)) ^ v4)) >> 63;
  return (*(v2 + 8 * ((v5 | (32 * v5)) ^ (v1 | 0x3A54))))();
}

uint64_t sub_1003F18A0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0xB0F5B35C) - (&STACK[0x10000] + 3800) - 1484446126) ^ 0xBE5CC261));
  STACK[0x10EE0] = a1;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *(v2 + 328) = 0;
  return (*(v3 + 8 * (v1 + 7101)))(v4);
}

uint64_t sub_1003F194C()
{
  v4 = (v1 - 234862968) & 0xDFF79FB;
  v5 = v2 + v0 + 1121346601 + v4 + 1891103983;
  v6 = ((v3 - 1282485934) < 0xCD36D9C) ^ (v5 < 0xCD36D9C);
  v7 = v5 < v3 - 1282485934;
  if (v6)
  {
    v7 = (v3 - 1282485934) < 0xCD36D9C;
  }

  return (*(STACK[0xF18] + 8 * ((121 * (((v4 ^ v7) & 1) == 0)) ^ v4)))();
}

uint64_t sub_1003F19EC@<X0>(unint64_t a1@<X8>)
{
  v6 = v5 - 29506;
  v7 = *(&off_1010A0B50 + (v5 ^ 0x8C8F)) + v4 - 664413706;
  v8 = 353670337 * ((&STACK[0x10000] + 3800) ^ 0xB421F83D);
  LODWORD(STACK[0x10EFC]) = v8 + 1478411808 + v5;
  LODWORD(STACK[0x10ED8]) = ((v3 ^ 0xCFEDF2FD) + 955673960 + ((2 * v3) & 0x9FDBE5FA)) ^ v8;
  STACK[0x10EF0] = v2;
  STACK[0x10EE8] = v7;
  STACK[0x10EE0] = v1;
  STACK[0x10F00] = a1;
  STACK[0x10F08] = &STACK[0xF28] ^ 0x29DCF992F3801DC7;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v5 ^ 0x405F)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * v6))(v10);
}

uint64_t sub_1003F1BF4()
{
  LOWORD(STACK[0x973E]) = 13421;
  LODWORD(STACK[0x111C]) = v1;
  return (*(STACK[0xF18] + 8 * (v0 & 0xB8ABAC6F)))();
}

uint64_t sub_1003F1C38()
{
  LODWORD(STACK[0xB594]) = 176739301;
  LODWORD(STACK[0xB590]) = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003F1C70@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x5DC8] + (LODWORD(STACK[0x392C]) + v1));
  LOBYTE(STACK[0x1587]) = (((v2 ^ 0x1E) - 30) ^ ((v2 ^ 0x49) - 73) ^ ((v2 ^ (a1 - 117)) - 8)) - ((((v1 - ((2 * v1) & 2) - 71) ^ 0x46) - 70) ^ (((v1 - ((2 * v1) & 2) - 71) ^ 3) - 3) ^ (((v1 - ((2 * v1) & 2) - 71) ^ 0xFC) + 4)) - 9;
  return (*(STACK[0xF18] + 8 * (a1 ^ 0x15FB)))();
}

uint64_t sub_1003F1E78@<X0>(int a1@<W8>)
{
  STACK[0x8A98] = v4;
  STACK[0x6F80] = v3;
  LODWORD(STACK[0x3F88]) = a1;
  LODWORD(STACK[0x5F9C]) = v6;
  STACK[0x9030] = v2;
  LODWORD(STACK[0xEC0]) = v5;
  LODWORD(STACK[0x5194]) = v5;
  STACK[0xEB0] = v4;
  return (*(STACK[0xF18] + 8 * (((v4 == 0x217E172EFA1E81CLL) * (((v1 - 27097) | 0x501D) + (v1 ^ 0xFFFFC633))) ^ v1)))();
}

uint64_t sub_1003F1EF8@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 33;
  v2 = STACK[0xF18];
  STACK[0x1968] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((((v1 + 558540789) & 0xDEB557F7) + 15154) ^ v1)))();
}

uint64_t sub_1003F1F7C(unint64_t a1)
{
  v6 = 1112314453 * ((((2 * &STACK[0x10ED8]) | 0x12E08EB60EBD4FE4) - &STACK[0x10ED8] + 0x768FB8A4F8A1580ELL) ^ 0x757CEFE0E8088D2BLL);
  STACK[0x10EE0] = &STACK[0xF28] ^ 0x42D956088FAC34A6;
  LODWORD(STACK[0x10F10]) = v6 ^ v4 ^ 0xF5C133B2;
  STACK[0x10F08] = 0;
  STACK[0x10F00] = 0x7E64F704B81EC009 * (((2 * v5) & 0x1FFFFFFECLL) + (v5 ^ 0x1D3B47DDFFFFFFF6)) - v6 - 0xC4F8827AF2E0F17;
  LODWORD(STACK[0x10EEC]) = v3 - v6 + 61367020;
  STACK[0x10F18] = (0x7CC076D8A04EB42FLL * (((((v3 + 29407) | 0x93Bu) ^ 0x16F9FE6A0) & (2 * v2)) + (v2 ^ 0x7F72FEBFB7CFB6CDLL)) - 0x732B6F9853B1B95FLL) ^ v6;
  LODWORD(STACK[0x10ED8]) = 1440258045 - v6;
  STACK[0x10EF0] = v1;
  STACK[0x10EF8] = a1;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v3 + 48266)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * v3))(v8);
}

uint64_t sub_1003F216C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x68E4]) = a1;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x9AD4 ^ (v1 + 30211))))();
}

uint64_t sub_1003F2204@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x4D1C]) = v2;
  STACK[0x5E30] = v4;
  STACK[0x7540] = a1;
  STACK[0x1A00] = v3;
  if (v4)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  return (*(STACK[0xF18] + 8 * ((v6 * ((v1 - 252356203) & 0xF0AFBFE ^ (v1 + 21875))) ^ v1)))();
}

uint64_t sub_1003F23F0()
{
  LODWORD(STACK[0x5564]) = v1;
  LODWORD(STACK[0x6ECC]) = v0;
  return (STACK[0x27A8])();
}

uint64_t sub_1003F24CC()
{
  v4 = v3 ^ 0x7348;
  v5 = *(v1 + v0);
  v6 = 1022166737 * ((((&STACK[0x10000] + 3800) | 0x7853A05E) - ((&STACK[0x10000] + 3800) & 0x7853A058)) ^ 0xC24341CC);
  LODWORD(STACK[0x10EDC]) = v6 + 23240 + v4;
  LODWORD(STACK[0x10EF0]) = v6 ^ v2 ^ ((v2 ^ 0x64E02F65) - 1034203951) ^ ((v2 ^ 0x1478ACC5) - 1295790223) ^ ((v2 ^ 0x7622B4BD ^ (2 * v4) ^ 0x6A86) - 795245689) ^ 0xF2A05DA2 ^ ((v2 ^ 0x5FFE9238 ^ (1223 * (v4 ^ 0x1F13))) - 112878483);
  STACK[0x10EE0] = &STACK[0x1264];
  STACK[0x10EE8] = v5;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v4 + 44131)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * (v4 ^ (32 * (LODWORD(STACK[0x10ED8]) == -371865839)))))(v8);
}

uint64_t sub_1003F26E8()
{
  LODWORD(STACK[0x10ED8]) = v0 + 634647737 * ((~(&STACK[0x10000] + 3800) & 0xFEF731A6 | (&STACK[0x10000] + 3800) & 0x108CE58) ^ 0x93611E5A) - 212226673;
  v2 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x9AF)))(&STACK[0x10ED8]);
  v3 = (((*v1 ^ 0x33ACD921) + (((v0 - 16744) | 0xA12) ^ 0xCC53ADE4)) ^ ((((v0 - 49644) | 0xC50) ^ *v1 ^ 0x3A1991) - 3806564) ^ ((*v1 ^ 0xDA430B54) + 633140396)) - 786669691;
  v4 = (*(v2 + 8 * (v0 + 2055)))(((v3 ^ 0x829BEE1) + 277928303) ^ v3 ^ ((v3 ^ 0x6506C459) + 2109711319) ^ ((v3 ^ 0xFCC20C27) - 461673559) ^ ((v3 ^ 0x76ABEEEF) + 1846708577) ^ 0xE7469870);
  STACK[0xB8D8] = v4;
  return (*(v2 + 8 * ((39 * (v4 != 0)) ^ v0)))();
}

uint64_t sub_1003F28F4()
{
  *(v2 + 32) = v1;
  v3 = *(v2 + 40);
  v4 = STACK[0xF18];
  STACK[0x98B0] = *(STACK[0xF18] + 8 * v0);
  return (*(v4 + 8 * (v0 + 5138)))(v3);
}

uint64_t sub_1003F2AE0()
{
  v1 = (STACK[0xF10] - 1784) | 0x804;
  v2 = (STACK[0xF10] - 34571) | 0x4809;
  v3 = STACK[0xF10] - 28173;
  STACK[0x19C0] = v0;
  return (*(STACK[0xF18] + 8 * ((37550 * (LODWORD(STACK[0x6650]) == ((v2 - 371917027) ^ v1))) ^ v3)))();
}

uint64_t sub_1003F2C00@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  a4 = (v8 + 11379) ^ (906386353 * (((&a3 | 0x2B6C6CF0) - &a3 + (&a3 & 0xD4939308)) ^ 0x1A6DA1D4));
  a3 = v6;
  a5 = a1;
  a6 = v6;
  v9 = (*(v7 + 8 * (v8 + 46030)))(&a3);
  return (*(v7 + 8 * v8))(v9);
}

uint64_t sub_1003F2CC4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8244]) = v1;
  v3 = (((v2 ^ 0xD54C2610) + (a1 ^ 0x2AB340D8)) ^ ((v2 ^ 0xD57C70C6) + 713264954) ^ ((v2 ^ ((a1 - 31016) | 0x1304) ^ 0xE9E5A2C3) + 370830905)) - 852434824;
  v4 = v3 < 0xE35B1967;
  v5 = v1 - 480568985 < v3;
  if (v1 > 0x1CA4E698 != v4)
  {
    v5 = v4;
  }

  return (*(STACK[0xF18] + 8 * ((31 * !v5) ^ a1)))();
}

uint64_t sub_1003F2FB0@<X0>(int a1@<W8>)
{
  v3 = ((2 * v1) ^ 0xD3AB8E22) + a1;
  LODWORD(STACK[0x9048]) = v3;
  v4 = 16 * (v3 - ((2 * v3) & 0x10045FDF4) + ((v2 + 924633262) & 0xC8E3AB3F)) + 0x23FA611802273BF0;
  STACK[0x5C50] = (((v4 ^ 0xC96DD0FE0E80ED3CLL) - 0x41FDE5CE4B23C2B2) ^ ((v4 ^ 0xB20D6280F344FAE4) - 0x3A9D57B0B6E7D56ALL) ^ ((v4 ^ 0x589AD366FFEBF878) + 0x2FF519A945B7280ALL)) - 0x19B46A9DAB16A910;
  LODWORD(STACK[0x1374]) = 1994342846;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1003F3534()
{
  STACK[0x76C8] = 0x217E172EFA1E81CLL;
  LODWORD(STACK[0x8538]) = -371865839;
  v2 = *(v0 - 0x10A99C80114D147FLL);
  v3 = *(v2 - 0x217E172EFA1E81CLL);
  v4 = v2 - 0x217E172EFA1E800;
  LODWORD(v2) = (((*(v2 - 0x217E172EFA1E804) ^ 0x41E61D53) - 1105599827) ^ (((v1 - 5960) | 0x212) + 1676761775 + (*(v2 - 0x217E172EFA1E804) ^ 0x9C0E833F)) ^ (((v1 - 12181) ^ 0x343D5ECE ^ *(v2 - 0x217E172EFA1E804)) - 876435837)) - 54746966;
  v5 = 634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x1ABB1C48) + 448470092) ^ 0x772D33B0);
  STACK[0x10F00] = v4;
  LODWORD(STACK[0x10EF8]) = v1 - v5 + 25625;
  STACK[0x10EF0] = v3;
  LODWORD(STACK[0x10ED8]) = v2 ^ v5;
  STACK[0x10EE0] = &STACK[0x8530];
  STACK[0x10EE8] = &STACK[0x6674];
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0xFD8C)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((4 * (LODWORD(STACK[0x10F08]) == -371865839)) | (32 * (LODWORD(STACK[0x10F08]) == -371865839))) ^ v1)))(v7);
}

uint64_t sub_1003F36E0()
{
  STACK[0x7690] = 109 * (v2 ^ 0x3A00u) + STACK[0x7690] - 35387;
  STACK[0x23E8] = v3;
  return (*(STACK[0xF18] + 8 * (((4 * (((v2 - 12) ^ ((v1 | v0) == 0)) & 1)) & 0xEF | (16 * (((v2 - 12) ^ ((v1 | v0) == 0)) & 1))) ^ v2)))();
}

uint64_t sub_1003F3748()
{
  v2 = (((((v0 ^ 0x7053) + 26683) ^ 0x95FA28F9) + (v1 ^ 0x6A05BFF7)) ^ ((v1 ^ 0x29A365F9) - 698574329) ^ ((v1 ^ 0xAA73099E ^ (29 * (v0 ^ 0x7053))) + 1435296481)) - 1147477383;
  v3 = (v2 ^ 0x2F32D45B) & (2 * (v2 & 0x2E3AE498)) ^ v2 & 0x2E3AE498;
  v4 = ((2 * (v2 ^ 0x3312146B)) ^ 0x3A51E1E6) & (v2 ^ 0x3312146B) ^ (2 * (v2 ^ 0x3312146B)) & 0x1D28F0F2;
  v5 = v4 ^ 0x5281011;
  v6 = (v4 ^ 0x1800A0E0) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0x74A3C3CC) & v5 ^ (4 * v5) & 0x1D28F0F0;
  v8 = (v7 ^ 0x1420C0C0) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x9083033)) ^ 0xD28F0F30) & (v7 ^ 0x9083033) ^ (16 * (v7 ^ 0x9083033)) & 0x1D28F0F0;
  v10 = (v2 ^ (2 * ((((v9 ^ 0xD20F0C3) << 8) & 0x1D280000 ^ 0x8200000 ^ (((v9 ^ 0xD20F0C3) << 8) ^ 0x28F00000) & (v9 ^ 0xD20F0C3)) & (((v9 ^ 0x10080000) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0x10080000) & (v8 << 8) ^ v8))) != 775611544;
  return (*(STACK[0xF18] + 8 * (v10 | (8 * v10) | v0)))();
}

uint64_t sub_1003F3968(int a1, int a2, char a3, int a4, int a5, int a6, int a7, int a8)
{
  v17 = *(v16 + v9 + v13 * ((v11 + 18) ^ v8) - ((((v9 + v13 * ((v11 + 18) ^ v8)) * v10) >> 32) >> 4) * a5);
  v18 = v14 + (((v17 ^ a1) + a2) ^ ((v17 ^ a6) + a7) ^ ((v17 ^ a8) + v12)) * a4;
  *(v16 + v18 - (((v18 * v10) >> 32) >> 4) * a5) = a3 - ((2 * a3) & 4) + 50;
  return (*(STACK[0x6A0] + 8 * ((2 * (v13 + 1 == v15)) | (16 * (v13 + 1 == v15)) | v11)))();
}

uint64_t sub_1003F3D28()
{
  LODWORD(STACK[0x4B5C]) = v1;
  STACK[0x7690] = ((v0 - 1730844957) & 0x672A8FFF) + STACK[0x7690] - 33822;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * (v0 - 32557));
  return (*(v2 + 8 * (v0 - 30314)))();
}

uint64_t sub_1003F3E00()
{
  *STACK[0x37D0] = STACK[0x7A28];
  *STACK[0x85F0] = v0[60];
  *STACK[0x97B8] = 5;
  *STACK[0x9240] = v0[38];
  *STACK[0x37F0] = v0[39];
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003F3E64()
{
  v1 = STACK[0x93F0];
  v2 = ((v0 + 14723 + (LODWORD(STACK[0x51A4]) ^ 0xFB07A688) + 83342076) ^ ((LODWORD(STACK[0x51A4]) ^ 0x7668C9F4) - 1986578932) ^ ((LODWORD(STACK[0x51A4]) ^ 0x64BAA86D) - 1689954413)) + 1722579672;
  v3 = 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x15654BA8) - (&STACK[0x10000] + 3800) - 358960048) ^ 0xCBCAF9F);
  LODWORD(STACK[0x10ED8]) = (40409587 * LODWORD(STACK[0x156C]) - 1378563772) ^ v3;
  STACK[0x10EF8] = 0;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((2 * ((&STACK[0x10000] + 3800) & 0x4BA8) - (&STACK[0x10000] + 3800) - 19376) ^ 0xAF9F);
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = &STACK[0x6804];
  STACK[0x10F10] = v1;
  LODWORD(STACK[0x10F04]) = v3 + 2069619737;
  LODWORD(STACK[0x10F08]) = v0 - v3 + 1777263264;
  LODWORD(STACK[0x10EF0]) = v3 ^ 0xE40DF64E;
  LODWORD(STACK[0x10EF4]) = v2 ^ v3;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA61D)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_1003F3FE8()
{
  v3 = v1 < 0x70983A0A;
  if (v3 == v0 + 1 > (((v2 - 7028) | 0xB1Bu) ^ 0xFFFFFFFF8F674ECELL))
  {
    v3 = v0 + 1889024523 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((61 * v3) ^ v2)))();
}

uint64_t sub_1003F4064()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD07C)))();
  *v1 = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1003F409C@<X0>(char a1@<W0>, _DWORD *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v14 = ((*(*a3 + (*a2 & v6)) ^ v13) & 0x7FFFFFFF) * v7;
  v15 = (v14 ^ HIWORD(v14)) * v7;
  *(a5 + v9) = *(v10 + v9) ^ *(a4 + (v15 >> 24)) ^ *((v15 >> 24) + v12 + 2) ^ *((v15 >> 24) + v11 + 4) ^ v15 ^ (BYTE3(v15) * v8) ^ a1;
  return (*(STACK[0xF18] + 8 * ((31 * (v9 == 0)) ^ v5)))();
}

uint64_t sub_1003F41A4@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W3>, unsigned int a4@<W4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v18 = (v13 + (v8 + v12));
  v19 = *v18;
  v20 = *(*v6 + (*v17 & a1));
  v21 = ((((v18 ^ v20) & 0x7FFFFFFF) * a2) ^ ((((v18 ^ v20) & 0x7FFFFFFF) * a2) >> 16)) * a2;
  v22 = (v14 + (v7 + v12));
  v23 = ((((v22 ^ v20) & 0x7FFFFFFF) * a2) ^ ((((v22 ^ v20) & 0x7FFFFFFF) * a2) >> 16)) * a2;
  *v22 = *(a6 + (v21 >> 24)) ^ v19 ^ *(v16 + (v21 >> 24)) ^ *((v21 >> 24) + v15 + 5) ^ *(a6 + (v23 >> 24)) ^ *(v16 + (v23 >> 24)) ^ *((v23 >> 24) + v15 + 5) ^ v21 ^ v23 ^ (BYTE3(v21) * (v11 ^ 0xC7)) ^ (BYTE3(v23) * v10);
  v24 = v12 + a3 < v9;
  if (v9 < 0xDB8EF917 != v12 + 1 > a4)
  {
    v24 = v9 < 0xDB8EF917;
  }

  return (*(STACK[0xF18] + 8 * ((v24 * a5) ^ v11)))();
}

uint64_t sub_1003F4518()
{
  v1 = (((v0 ^ 0x3C639E92) - 1013161618) ^ ((v0 ^ 0x86A1E7FD) + 2036209667) ^ ((v0 ^ 0x6AD89915) - 1792579861)) + 210794277;
  v2 = ((v1 ^ 0x15D4D2F4) - 698434654) ^ v1 ^ ((v1 ^ 0x58124C6E) - 1684527812) ^ ((v1 ^ 0xE48F6CE) - 842883172) ^ ((v1 ^ 0x7FFBFEFE) - 1133406292);
  return (*(STACK[0xF18] + 8 * ((112 * ((((v2 ^ 0xF77C672A) - 454234618) ^ ((v2 ^ 0xEA6EB4C2) - 100778514) ^ ((v2 ^ 0x21674542) + 855100526)) - 803544966 < 0x30)) ^ LODWORD(STACK[0xE80]))))();
}

void *sub_1003F5434()
{
  v0 = (32 * STACK[0xF10]) ^ 0x1160C0;
  v1 = STACK[0xF10] - 30946;
  v2 = STACK[0xF18];
  STACK[0x3F68] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v0 + 1932) ^ v1)))(&STACK[0x5C9C]);
}

uint64_t sub_1003F54CC()
{
  v1.n128_u64[0] = 0xBEBEBEBEBEBEBEBELL;
  v1.n128_u64[1] = 0xBEBEBEBEBEBEBEBELL;
  v2.n128_u64[0] = 0x5F5F5F5F5F5F5F5FLL;
  v2.n128_u64[1] = 0x5F5F5F5F5F5F5F5FLL;
  return (*(STACK[0xF18] + 8 * (v0 + 29103)))(v1, v2);
}

uint64_t sub_1003F55B8()
{
  v3 = ((v2 ^ 0x4D58D6063D34D50FLL) - 0x4D58D6063D34D50FLL) ^ ((v2 ^ 0xFD171DD91A70C5B4) + 0x2E8E226E58F3A4CLL) ^ ((v2 ^ 0xB04FCBDFCE91D7AALL) + 0x4FB03420316E2856);
  v4 = (v1 | ((v1 < ((v0 - 50288) | 0x200u) + 563104538) << 32)) + 2702780350u;
  LODWORD(STACK[0x3E80]) = 0;
  STACK[0x6018] = v3 + 0x5D1E61F93CE7024;
  if (v3 + 0x1AC7F3FE8 < 0xC2A978D7 != v4 < 0xC2A978D7)
  {
    v5 = v4 < 0xC2A978D7;
  }

  else
  {
    v5 = v4 > v3 + 0x1AC7F3FE8;
  }

  if (v5)
  {
    v6 = 371891407;
  }

  else
  {
    v6 = -371865839;
  }

  LODWORD(STACK[0x2198]) = v6;
  return (*(STACK[0xF18] + 8 * ((243 * !v5) ^ v0)))();
}

uint64_t sub_1003F5724()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 2947)))(v2);
}

uint64_t sub_1003F5790()
{
  STACK[0x5C50] = 0x3AE1413A0D5C97C2;
  LODWORD(STACK[0x1374]) = 1085960688;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003F57CC()
{
  STACK[0x5C50] = 0x3AE1413A0D5C96EALL;
  LODWORD(STACK[0x1374]) = 715545447;
  return (*(STACK[0xF18] + 8 * ((823 * (v0 < 0x75FFE642)) ^ (v0 - 338345999))))();
}

uint64_t sub_1003F5908()
{
  LODWORD(STACK[0x93C8]) = STACK[0x2694];
  v3 = STACK[0x7ACC];
  v4 = STACK[0x7690];
  STACK[0x5DA0] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v4 + ((v2 + 590690209) & 0xDCCAEF7B ^ 0x8B2BLL);
  LODWORD(STACK[0x138C]) = v3;
  LODWORD(STACK[0x5284]) = v1;
  LODWORD(STACK[0x1404]) = -371865839;
  LODWORD(STACK[0x17CC]) = -371865839;
  STACK[0x79C8] = 0;
  LODWORD(STACK[0x43DC]) = v0;
  STACK[0x38C0] = 0;
  STACK[0x7EC0] = 0;
  LODWORD(STACK[0x3E34]) = -371865839;
  LODWORD(STACK[0x26F4]) = -371865839;
  LODWORD(STACK[0x60D4]) = -371865839;
  return (*(STACK[0xF18] + 8 * (((STACK[0x15C8] == 0x217E172EFA1E81CLL) * (((v2 + 1792457617) & 0x9528FAFE) - 6739)) ^ v2)))();
}

uint64_t sub_1003F59F8()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 1045871420;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003F5A4C()
{
  v1 = STACK[0xF10] ^ 0x8B38;
  v2 = v1 + 344;
  v3 = 10196 * v1;
  v4 = STACK[0xF10] - 21466;
  LODWORD(STACK[0x2F48]) = v0;
  return (*(STACK[0xF18] + 8 * ((34881 * (v0 == (v2 ^ 0xE9D54ECE) + v3)) ^ v4)))();
}

uint64_t sub_1003F5C10@<X0>(uint64_t a1@<X8>)
{
  v4 = (((v1 ^ 0x103F67C4) - 272590788) ^ ((v1 ^ 0x138BF538) - 327939384) ^ (((327 * (v2 ^ 0x98C8)) ^ 0x159E2128) + (v1 ^ 0xEA6155ED))) + 345304869 + (((v3 ^ 0xFFEFC454) - 782118500) ^ ((v3 ^ 0xC9AF052E) - 417263390) ^ ((v3 ^ ((v2 - 38787) | 0x1C48) ^ 0xEE4F131) + 543881621));
  v5 = (v4 ^ 0xBE169EF8) & (2 * (v4 & 0xBF169EFD)) ^ v4 & 0xBF169EFD;
  v6 = ((2 * (v4 ^ 0x923B83D0)) ^ 0x5A5A3A5A) & (v4 ^ 0x923B83D0) ^ (2 * (v4 ^ 0x923B83D0)) & 0x2D2D1D2C;
  v7 = v6 ^ 0x25250525;
  v8 = (v6 ^ 0x8081808) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xB4B474B4) & v7 ^ (4 * v7) & 0x2D2D1D2C;
  v10 = (v9 ^ 0x24241420) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x9090909)) ^ 0xD2D1D2D0) & (v9 ^ 0x9090909) ^ (16 * (v9 ^ 0x9090909)) & 0x2D2D1D00;
  v12 = v10 ^ 0x2D2D1D2D ^ (v11 ^ 0x11000) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x2D2D0000 ^ v12 ^ ((v12 << 16) ^ 0x1D2D0000) & (((v11 ^ 0x2D2C0D2D) << 8) & 0x2D2D0000 ^ (((v11 ^ 0x2D2C0D2D) << 8) ^ 0x2D1D0000) & (v11 ^ 0x2D2C0D2D) ^ 0x200000)));
  v14 = (((v13 ^ 0xE6C05177) + 268225855) ^ ((v13 ^ 0xEE59FB26) + 124086128) ^ ((v13 ^ 0xF78F0EF6) + 515084992)) - 205188556;
  v15 = (((*(a1 + 12) ^ 0xEDC6BAAC) + 305743188) ^ ((*(a1 + 12) ^ 0x6A4C9B7D) - 1783405437) ^ ((*(a1 + 12) ^ 0x6E5FE6C0) - 1851778752)) - 205188556;
  v16 = v14 < 0x9EF4B23;
  v17 = v14 > v15;
  if (v15 < 0x9EF4B23 != v16)
  {
    v17 = v16;
  }

  return (*(STACK[0xF18] + 8 * ((677 * v17) ^ v2)))();
}

uint64_t sub_1003F5F2C()
{
  LODWORD(STACK[0x10EE0]) = v0 + 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x3700F310) - (&STACK[0x10000] + 3800) - 922809109) ^ 0x2ED91724) + 296753103;
  STACK[0x10ED8] = STACK[0x818];
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x41F1)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * ((v0 - 1510989695) ^ 0xA5F0E07C ^ (56408 * (v0 == -653163846)))))(v2);
}

uint64_t sub_1003F5FF4()
{
  v1 = STACK[0x4C20];
  *v1 = -371865831;
  *(v1 + 8) = 0x981390C2FED9246;
  *(v1 + 16) = -371865795;
  STACK[0x6C68] = v1 + 0x3956D6F8E8F5C0CFLL;
  *(v1 + 32) = -371865793;
  *(v1 + 24) = 0x981390C2FED9246;
  v2 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x1295 ^ (2165 * ((v0 ^ 0xF05154AA) > 0x448E3945)))))();
}

uint64_t sub_1003F60E0@<X0>(int a1@<W8>)
{
  v7 = STACK[0xF18];
  STACK[0x7C28] = *(STACK[0xF18] + 8 * v4);
  STACK[0x74F0] = v6;
  LODWORD(STACK[0xB308]) = a1;
  LODWORD(STACK[0xB30C]) = v2;
  LODWORD(STACK[0xB310]) = v3;
  STACK[0x60F0] = v1;
  v8 = STACK[0x7690];
  STACK[0x8280] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = v8 + 32;
  STACK[0x5188] = 0x217E172EFA1E81CLL;
  return (*(v7 + 8 * (((v6 == 0) * (((v5 - 26759) | 0x4078) ^ 0x5C5F)) ^ v5)))();
}

uint64_t sub_1003F6174()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xA721)))();
  *(v1 + 16) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1003F6290()
{
  STACK[0x8FE8] = *(STACK[0x6140] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1986096245;
  LODWORD(STACK[0x704C]) = -2116087576;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0xB644)))();
}

uint64_t sub_1003F65FC()
{
  v1 = STACK[0xF18];
  v2 = *(STACK[0xF18] + 8 * v0);
  STACK[0xED0] = v2;
  STACK[0x8F00] = v2;
  return (*(v1 + 8 * (((v0 + 2631) ^ 0x38A0) + v0)))();
}

uint64_t sub_1003F6634()
{
  STACK[0x61C0] = v0;
  STACK[0x3C50] = v1;
  return (*(STACK[0xF18] + 8 * (v3 ^ v2 | (16 * ((((23691 * (v3 ^ v2 ^ 0xABEA)) ^ (*(STACK[0x6AF0] + 8) == ((((v3 ^ v2) - 37857) | 0x690) ^ 0xE9D5D986))) & 1) == 0)))))();
}

uint64_t sub_1003F6714()
{
  v1 = *(STACK[0x75F8] - 0x217E172EFA1E81CLL);
  v2 = 155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x272709E8) - (&STACK[0x10000] + 3800) - 656869871) ^ 0x3EFEEDDE);
  LODWORD(STACK[0x10ED8]) = (40409587 * LODWORD(STACK[0x2CEC]) - 1378563772) ^ v2;
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((2 * ((&STACK[0x10000] + 3800) & 0x9E8) - (&STACK[0x10000] + 3800) - 2543) ^ 0xEDDE);
  STACK[0x10F10] = v1;
  LODWORD(STACK[0x10EF0]) = v2 ^ 0xE203FC55;
  STACK[0x10EF8] = 0;
  LODWORD(STACK[0x10F08]) = v0 - v2 - 2145810296;
  LODWORD(STACK[0x10F04]) = v2 + 2069619737;
  LODWORD(STACK[0x10EF4]) = v2 ^ 0x7CD6B3C8;
  STACK[0x10EE0] = 0;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 + 371917779)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((31 * (((LODWORD(STACK[0x10F0C]) - v0) | (v0 - LODWORD(STACK[0x10F0C]))) >> 31)) ^ (v0 + 371884155))))(v4);
}

uint64_t sub_1003F6894()
{
  v4 = *(v1 + v0);
  v5 = STACK[0x43DC];
  v6 = 139493411 * ((2 * ((&STACK[0x10000] + 3800) & 0x3A753C8) - (&STACK[0x10000] + 3800) - 61297615) ^ 0xF0754D74);
  STACK[0x10EE0] = &STACK[0x3B50];
  LODWORD(STACK[0x10EE8]) = v6 - 265854682;
  LODWORD(STACK[0x10ED8]) = v2 - v6 + 17255;
  LOWORD(STACK[0x10EFC]) = -32733 * ((2 * ((&STACK[0x10000] + 3800) & 0x53C8) - (&STACK[0x10000] + 3800) - 21455) ^ 0x4D74) + 27992;
  LODWORD(STACK[0x10EF8]) = v6 + ((v2 - 24650) ^ 0x73F683B0) * v5 + 777074195;
  STACK[0x10EF0] = v4;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 + 23842)))(&STACK[0x10ED8]);
  v9 = STACK[0x10F00];
  LODWORD(STACK[0x314C]) = STACK[0x10F00];
  v11 = v9 != v3 && LODWORD(STACK[0x1264]) != -371865711;
  return (*(v7 + 8 * ((948 * v11) ^ v2)))(v8);
}

uint64_t sub_1003F69EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v51 = STACK[0x490];
  v52 = STACK[0x490] + a46;
  STACK[0x2A8] = v52;
  STACK[0x438] = v52;
  STACK[0x490] = v51 + 32;
  *(v50 - 160) = 0x50CDD289C9C56256;
  LODWORD(STACK[0x2C4]) = *(*(v49 + 8 * (v46 - 25200)) - 775311879);
  v53 = *(*(v49 + 8 * (v46 - 27353)) + v47);
  *(v50 - 140) = v46 - 1579068743 + 634647737 * ((a45 - ((v50 - 152) | 0x9362E36A) - 1822235798) ^ 0x10B3369);
  v54 = v46 - 1579068743 - 634647737 * ((a45 - ((v50 - 152) | 0x9362E36A) - 1822235798) ^ 0x10B3369);
  *(v50 - 120) = v46 - 634647737 * ((a45 - ((v50 - 152) | 0x9362E36A) - 1822235798) ^ 0x10B3369) - 1230206911;
  *(v50 - 116) = v54 - 1;
  *(v50 - 136) = v53 ^ (634647737 * ((a45 - ((v50 - 152) | 0x5DC7C7769362E36ALL) + 0x5DC7C7769362E36ALL) ^ 0x78E39766010B3369));
  *(v50 - 128) = -634647737 * ((a45 - ((v50 - 152) | 0x5DC7C7769362E36ALL) + 0x5DC7C7769362E36ALL) ^ 0x78E39766010B3369);
  *(v50 - 152) = -634647737 * ((a45 - ((v50 - 152) | 0x9362E36A) - 1822235798) ^ 0x10B3369);
  *(v50 - 148) = v54 - 4794;
  v55 = (*(v48 + 8 * (v46 ^ 0xA623)))(v50 - 152);
  return (*(v48 + 8 * *(v50 - 144)))(v55);
}

uint64_t sub_1003F6B30()
{
  v1 = STACK[0x81C0];
  v2 = 1112314453 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x4B531E8) - 2068499987) ^ 0x6BE31B34);
  LODWORD(STACK[0x10EE8]) = v2 + (((LODWORD(STACK[0x7C40]) ^ 0x1D5C6A7A) - 492595834) ^ ((LODWORD(STACK[0x7C40]) ^ 0x17C18285) - 398557829) ^ (((((v0 - 33711) | 0x30C0) - 481837528) ^ LODWORD(STACK[0x7C40])) + 481808402)) + 268615998;
  STACK[0x10EE0] = v1;
  LODWORD(STACK[0x10ED8]) = v2 + v0 - 40475;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xFD3)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * v0))(v4);
}

uint64_t sub_1003F6ECC()
{
  v1 = STACK[0xF18];
  STACK[0x1528] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xA533 ^ (v0 + 37944))))();
}

uint64_t sub_1003F6FEC@<X0>(int a1@<W2>, uint64_t a2@<X7>, int a3@<W8>, __n128 a4@<Q0>)
{
  v8 = (v6 + (v4 ^ v7));
  *v8 = a4;
  v8[1] = a4;
  return (*(a2 + 8 * (((v5 == 0) * a1) ^ a3)))();
}

uint64_t sub_1003F70D0()
{
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))(v1);
  return (*(v3 + 8 * ((((v0 + 306932932) & 0xEDB4BDFE ^ 0xB5E0) * (v2 == 0)) ^ (v0 - 30550))))(v4);
}

uint64_t sub_1003F7188()
{
  v2 = (((v1 ^ 0xB9A4A0B8) + 1180393288) ^ ((v1 ^ 0x82340734) + 2110519500) ^ ((v1 ^ 0xD245EBA6 ^ ((v0 - 46813) | 0x8B1A)) + 767205219)) + 1092804047;
  v3 = (v2 ^ 0x86B0FCA3) & (2 * (v2 & 0xA8B2FCCA)) ^ v2 & 0xA8B2FCCA;
  v4 = ((2 * (v2 ^ 0x8790FDB7)) ^ 0x5E4402FA) & (v2 ^ 0x8790FDB7) ^ (2 * (v2 ^ 0x8790FDB7)) & 0x2F22017C;
  v5 = v4 ^ 0x21220105;
  v6 = (v4 ^ 0x6000078) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xBC8805F4) & v5 ^ (4 * v5) & 0x2F22017C;
  v8 = (v7 ^ 0x2C000160) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x3220009)) ^ 0xF22017D0) & (v7 ^ 0x3220009) ^ (16 * (v7 ^ 0x3220009)) & 0x2F220150;
  v10 = v8 ^ 0x2F22017D ^ (v9 ^ 0x22200100) & (v8 << 8);
  return (*(STACK[0xF18] + 8 * ((505 * ((v2 ^ (2 * ((v10 << 16) & 0x2F220000 ^ v10 ^ ((v10 << 16) ^ 0x17D0000) & (((v9 ^ 0xD02002D) << 8) & 0x2F220000 ^ 0xD220000 ^ (((v9 ^ 0xD02002D) << 8) ^ 0x22010000) & (v9 ^ 0xD02002D))))) != -189333968)) ^ v0)))();
}

uint64_t sub_1003F7374()
{
  LODWORD(STACK[0xA0B4]) = v2;
  LODWORD(STACK[0x6B4C]) = v0;
  v3 = STACK[0x4748] + 80;
  v4 = (((LODWORD(STACK[0x5AF0]) ^ 0x72A57B09) - 1923447561) ^ ((LODWORD(STACK[0x5AF0]) ^ 0xC318386B) + 1021822869) ^ ((LODWORD(STACK[0x5AF0]) ^ 0x58688473) - 1483244659)) + 180400317;
  v5 = ((v4 ^ 0x22F752B8) - 35502968) ^ v4 ^ ((v4 ^ 0xFB181FF3) + 604834253) ^ ((v4 ^ 0x86FA5974) + 1508855628) ^ ((v4 ^ 0x7FFFFDFF) - 1595216959);
  LODWORD(STACK[0x5AF0]) = v5 ^ 0xC93F2ED1;
  v6 = STACK[0x6460];
  v7 = STACK[0x2E18];
  v8 = 1112314453 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x82C740) + 8570694) ^ 0xEFD4ED9F);
  LOWORD(STACK[0x10ED8]) = -28075 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0xC740) - 14522) ^ 0xED9F) + 3771;
  STACK[0x10EF8] = v3;
  LODWORD(STACK[0x10EDC]) = (v1 + 679158052) ^ v8;
  LODWORD(STACK[0x10EF0]) = v8 + 1599993265 * (((v5 ^ 0x2BD7C411) + 488052032) ^ ((v5 ^ 0xAB9B4DD1) - 1654940416) ^ ((v5 ^ 0xA0A66000) - 1771654865)) + 782852994;
  STACK[0x10EE8] = v7;
  STACK[0x10EE0] = v6;
  v9 = STACK[0xF18];
  v10 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41CB)))(&STACK[0x10ED8]);
  return (*(v9 + 8 * ((v1 - 31346) ^ 0x23D8)))(v10);
}

uint64_t sub_1003F75F4()
{
  v1 = v0 - 27162;
  v2 = v0 ^ 0x4192;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))();
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1003F7624()
{
  STACK[0x8000] = v3;
  *v0 = -93;
  v0[1] = *v2 ^ (((v4 - 105) | 0xC) + 34);
  STACK[0x33A8] = v1 + 40;
  v5 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v4);
  return (*(v5 + 8 * ((7800 * ((v4 + 1945904633) < 0xE6274159)) ^ (v4 + 327))))();
}

uint64_t sub_1003F7798()
{
  v1 = (((LODWORD(STACK[0x75DC]) ^ 0xEB7AB7BD) + 344279107) ^ ((LODWORD(STACK[0x75DC]) ^ 0x5A6E7981) - 1517189505) ^ (((((v0 + 926984456) & 0xC8BEBFFB) + 1489037923) ^ LODWORD(STACK[0x75DC])) - 1489045805)) - 944073996;
  v2 = ((((4 * LODWORD(STACK[0x17C8])) ^ 0x981DEF0C) - 1992769214) ^ (((4 * LODWORD(STACK[0x17C8])) ^ 0xFC51910B) - 311115961) ^ (((4 * LODWORD(STACK[0x17C8])) ^ 0xC31B6243) - 767669233)) + 661821913;
  v3 = (v1 < 0xDDE4CBE3) ^ (v2 < 0xDDE4CBE3);
  v4 = v1 < v2;
  if (v3)
  {
    v4 = v2 < 0xDDE4CBE3;
  }

  return (*(STACK[0xF18] + 8 * ((43 * !v4) ^ v0)))();
}

uint64_t sub_1003F7980@<X0>(int a1@<W8>)
{
  STACK[0x60B8] = 0;
  STACK[0x4D88] = &STACK[0x2EF0];
  LODWORD(STACK[0x43E4]) = 1769414068;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1003F79C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  v5 = STACK[0xF18];
  STACK[0x98B8] = *(STACK[0xF18] + 8 * a4);
  return (*(v5 + 8 * (a5 - 19727)))(a1, a2, a3, 0x1D54AEB378980553);
}

uint64_t sub_1003F7AC0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xA524]) = v1;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * ((((a1 + 693978406) < 0xE8AD66C3) * ((a1 ^ 0x11B3) + 102)) ^ (a1 - 1438))))();
}

uint64_t sub_1003F7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v9 = (((v7 ^ 0x75C46851D9293B27) - 0x75C46851D9293B27) ^ ((v7 ^ 0xDA7EE13FE5E70400) + 0x25811EC01A18FC00) ^ ((a7 + 9009) + 0x59C44F9DECDBD477 + (((a7 + 8471) - 0x59C44F9DECDCCEADLL) ^ v7))) + 0x981390C3B7A2359;
  v10 = (((*v8 ^ 0xB5C2A7689D073A29) + 0x4A3D589762F8C5D7) ^ ((*v8 ^ 0x4123F918A1008652) - 0x4123F918A1008652) ^ ((*v8 ^ 0xFD60677C13EA2E3DLL) + 0x29F9883EC15D1C3)) + 0x981390C3B7A2359;
  v11 = (v10 < 0xB8C9113) ^ (v9 < 0xB8C9113);
  v12 = v10 < v9;
  if (v11)
  {
    v13 = v9 < 0xB8C9113;
  }

  else
  {
    v13 = v12;
  }

  return (*(STACK[0xF18] + 8 * ((503 * !v13) ^ a7)))();
}

uint64_t sub_1003F7CB4()
{
  v1 = STACK[0x2B08];
  v2 = *(*(STACK[0x2B08] - 0x10A99C80114D147FLL) - 0x217E172EFA1E81CLL);
  v3 = STACK[0x38F8];
  v4 = STACK[0x2484];
  v5 = (((4 * LODWORD(STACK[0x9000])) ^ 0x81FC864C) - 1208613172) ^ (((4 * LODWORD(STACK[0x9000])) ^ 0xA0C72A4B) - 1764906291) ^ (((4 * LODWORD(STACK[0x9000])) ^ (((v0 + 1240072426) & 0xB615FEFB ^ 0x213B4C1E) + v0 - 1393)) + 389098625);
  v6 = 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0x6DD1B32C) - (&STACK[0x10000] + 3800) - 921229718) ^ 0xD0CEC259);
  LOWORD(STACK[0x10F00]) = 16376 - 1709 * ((((2 * (&STACK[0x10000] + 3800)) | 0xB32C) - (&STACK[0x10000] + 3800) + 9834) ^ 0xC259);
  LODWORD(STACK[0x10ED8]) = (40409587 * v4 - 1378563772) ^ v6;
  STACK[0x10F10] = v2;
  STACK[0x10EF8] = v3;
  LODWORD(STACK[0x10EF4]) = v6 ^ 0x7CD6B3C8;
  LODWORD(STACK[0x10F08]) = v0 - v6 + 1777275077;
  LODWORD(STACK[0x10F04]) = v6 + 1162961809 + v5;
  LODWORD(STACK[0x10EF0]) = v6 ^ 0xD6FBF85B;
  STACK[0x10EE8] = &STACK[0xF28] ^ 0xB2C981EB4C31130FLL;
  STACK[0x10EE0] = 0;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v0 + 35856)))(&STACK[0x10ED8]);
  v9 = STACK[0x10F0C];
  *(v1 - 0x10A99C80114D130FLL) &= ~0x80u;
  return (*(v7 + 8 * ((42116 * (v9 == -371865839)) ^ v0)))(v8);
}

uint64_t sub_1003F7F84()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 39184)))(0);
  LOWORD(STACK[0x4E26]) = v2 - (((39 * (v0 ^ 0x33D8)) ^ 0x94C2) & (2 * v2)) - 11166;
  LODWORD(STACK[0xB264]) = -371865839;
  return (*(v1 + 8 * v0))(4294956435, 139, 92, 4294955822, 3076, 18528, 4294944407, 61041);
}

uint64_t sub_1003F8070()
{
  v3 = STACK[0x1EC8];
  v4 = LODWORD(STACK[0x4324]) ^ (((v2 + 2073811) | 0x420F0440) + 1301780580);
  v5 = 297845113 * ((((&STACK[0x10000] + 3800) | 0xFBA1BDB9) - ((&STACK[0x10000] + 3800) & 0xFBA1BDB8)) ^ 0x8C92A127);
  STACK[0x10EE8] = STACK[0x50B0];
  STACK[0x10EE0] = v1;
  STACK[0x10F08] = v3;
  LODWORD(STACK[0x10EF0]) = v4 + v5;
  LODWORD(STACK[0x10ED8]) = v2 - v5 - 18651;
  STACK[0x10EF8] = v0;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 ^ 0xA8D5)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_1003F816C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 4911) ^ v0)))();
}

uint64_t sub_1003F8204()
{
  v0 = STACK[0xF10] + 741715841;
  v1 = (STACK[0xF10] - 30967) | 0x509;
  LODWORD(STACK[0x3434]) = STACK[0x57E4];
  STACK[0x6840] = &STACK[0x4158];
  LODWORD(STACK[0x5EBC]) = 1294246121;
  return (*(STACK[0xF18] + 8 * (((v1 + 10482) * (v0 < 0x9834066C)) ^ (v0 - 741748672))))();
}

uint64_t sub_1003F8518()
{
  v1 = STACK[0xF18];
  STACK[0x4CD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0xB498 ^ ((v0 + 29387) | 0x20C4))))();
}

uint64_t sub_1003F8580()
{
  LODWORD(STACK[0x6F1C]) = v0;
  LODWORD(STACK[0x6CD4]) = (((LODWORD(STACK[0x3044]) ^ 0x8C31425A) + 1942928806) ^ ((LODWORD(STACK[0x3044]) ^ 0xBD2ECE53) + 1121005997) ^ ((LODWORD(STACK[0x3044]) ^ (v1 - 657840130)) + 657831144)) - 371865819;
  LODWORD(STACK[0x62B4]) = LODWORD(STACK[0x6094]) + 20;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003F86F4@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -536832406;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1003F8724()
{
  v2 = (*(v1 + 8 * (v0 + 33746)))(266);
  v3 = STACK[0x358];
  STACK[0x398] = v2 + 0x417E989A56845D1DLL;
  return (*(v3 + 8 * (((v2 == 0) * (((v0 - 254166755) & 0xF26B55F) + ((v0 - 16610) | 0x8141) - 80637)) ^ v0)))();
}

uint64_t sub_1003F8A4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v9 = (v7 + v2 + a2);
  *v9 = v8;
  v9[1] = v8;
  return (*(v6 + 8 * ((124 * (v2 + a1 + v5 != v4)) ^ v3)))();
}

uint64_t sub_1003F8A80()
{
  STACK[0x8FE8] = v0;
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1952541036;
  LODWORD(STACK[0x704C]) = -2116087612;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v2))();
}

uint64_t sub_1003F8B18()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 3901)))();
}

uint64_t sub_1003F8E28@<X0>(int a1@<W0>, int a2@<W1>, unint64_t a3@<X8>)
{
  v12 = ((v11 + 29657) | 0x206) + (((v10 ^ v5) + v9) ^ ((a2 ^ v5) + a1) ^ ((v8 ^ v5) + v7)) - 222714536;
  v13 = 353670337 * ((2 * (((&STACK[0x10000] + 3800) ^ 0x20DB1D28) & 0x5808B0B0) - ((&STACK[0x10000] + 3800) ^ 0x20DB1D28) + 670519112) ^ 0xB30DAA5D);
  v14 = STACK[0xF10];
  v15 = STACK[0xF10] + v13;
  STACK[0x10EF0] = v3;
  STACK[0x10F00] = STACK[0x6B0];
  STACK[0x10F08] = v4;
  STACK[0x10EE0] = a3;
  STACK[0x10EE8] = v6;
  LODWORD(STACK[0x10EFC]) = v15 + 1478411808;
  LODWORD(STACK[0x10ED8]) = v12 ^ v13;
  v16 = STACK[0xF18];
  v17 = (*(STACK[0xF18] + 8 * (v14 ^ 0x405F)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x95DC]) = STACK[0x10EF8];
  STACK[0x4B88] = *(v16 + 8 * v11);
  return (*(v16 + 8 * (v11 ^ 0x18EE)))(v17);
}

uint64_t sub_1003F8F9C@<X0>(int a1@<W0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W6>, int a7@<W7>, int a8@<W8>)
{
  v20 = *(v19 + ((((v8 - ((v8 << a2) & 0xD4) + 106) ^ a3) * a4) & 0x1FF ^ 0x100));
  v21 = v20 & 0x9C ^ 0xB7;
  v22 = 2899 * ((v20 ^ (2 * ((v20 ^ a7) & (2 * ((v20 ^ a7) & (2 * ((v20 ^ a7) & (2 * ((v20 ^ a7) & (2 * (((2 * (v21 ^ v20 & 0x2A)) ^ 0x44) & (v20 ^ a7) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21))) ^ 0xA) + 7389551;
  v23 = *(v18 + 4 * (v22 - (((13849149 * v22) >> 32) >> 5) * a1)) ^ 0xA6755686;
  v24 = BYTE1(v23) * a4;
  v25 = *(v19 + (((v23 >> 24) * a4) & 0x1FF));
  v26 = *(v19 + ((BYTE2(v23) * a4) & 0x1FF));
  if (((v23 >> 8) & 0xFE) != 0)
  {
    v24 &= 0x1FFu;
  }

  v29 = *(STACK[0xEA0] + v24);
  v30 = v29 & 0xCC ^ 0x8F;
  v31 = *(STACK[0xEA0] + ((v23 * a4) & 0x1FF));
  v27 = v25 & v15 ^ v16;
  v32 = v25 ^ (2 * ((v25 ^ a7) & (2 * ((v25 ^ a7) & (2 * ((v25 ^ a7) & (2 * ((v25 ^ a7) & (2 * (((2 * (v27 ^ v25 & 0x66)) ^ 0xCC) & (v25 ^ a7) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27));
  v33 = v31 & v15 ^ v16;
  v28 = v26 & v17 ^ 0xD7;
  v34 = v26 ^ (2 * ((v26 ^ a7) & (2 * ((v26 ^ a7) & (2 * ((v26 ^ a7) & (2 * ((v26 ^ a7) & (2 * (((2 * (v28 ^ v26 & 0x6A)) ^ 0x44) & (v26 ^ a7) ^ v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28));
  v35 = (v31 ^ a7) & (2 * ((v31 ^ a7) & (2 * ((v31 ^ a7) & (2 * ((v31 ^ a7) & (2 * (((2 * (v33 ^ v31 & 0x66666666)) ^ 0xCCCCCCCC) & (v31 ^ a7) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33;
  v36 = ((v32 ^ v15) << 16) | ((v34 ^ v17) << 8);
  *(v9 + 4 * (*(STACK[0xED0] + 4 * (v10 - v10 / 0x26C4 * a1)) ^ v13)) = a5 ^ ((a6 ^ ((((v29 ^ (2 * ((v29 ^ a7) & (2 * ((v29 ^ a7) & (2 * ((v29 ^ a7) & (2 * ((v29 ^ a7) & (2 * ((v29 ^ a7) & (2 * ((v29 ^ a7) & 0x3A ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0xA87181) & ~v36 | v36 & 0x578E00) << 8)) & ((v31 ^ (2 * v35)) ^ v11) | (v31 ^ (2 * v35)) & v12);
  return (*(STACK[0xF18] + 8 * (((v8 == 255) * v14) ^ a8)))();
}

uint64_t sub_1003F9278@<X0>(void *a1@<X8>)
{
  v3 = (((*v1 ^ 0x8C2B88BDBA07F643) + 0x73D4774245F809BDLL) ^ ((*v1 ^ 0x84878112E9841F45) + 0x7B787EED167BE0BBLL) ^ ((v2 & 0x3BAE5FFFu) + 21119 - 0x12D30A37C6F1B9DLL + (*v1 ^ ((v2 & 0x3BAE5FFF) - 1472032290) & 0x57BD377F ^ 0x12D30A37C6E6C7CLL))) + 0x981390C94B5E308;
  v4 = (((*a1 ^ 0xDE1F5F514F39FDA8) + 0x21E0A0AEB0C60258) ^ ((*a1 ^ 0x89FA51A778B0B499) + 0x7605AE58874F4B67) ^ ((*a1 ^ 0x5E6437FA1864DB77) - 0x5E6437FA1864DB77)) + 0x981390C94B5E308;
  v5 = v3 < 0x64C850C2;
  v6 = v3 > v4;
  if (v4 < 0x64C850C2 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((945 * v6) ^ v2 & 0x3BAE5FFFu)))();
}

uint64_t sub_1003F945C()
{
  v1 = STACK[0x358];
  v2 = (*(STACK[0x358] + 8 * (v0 ^ 0xDDE)))(1032);
  STACK[0x3D0] = v2;
  return (*(v1 + 8 * (v0 | (16 * (((v2 == 0) ^ (v0 + 79)) & 1)))))();
}

uint64_t sub_1003F94B8@<X0>(int a1@<W8>)
{
  v3 = a1 - 31458;
  v5 = v2 != -371865852 || v1 != (v3 ^ 0xE9D56AA1 ^ (785 * (v3 ^ 0x21F8)));
  return (*(STACK[0xF18] + 8 * ((39 * v5) ^ v3)))();
}

uint64_t sub_1003F9518@<X0>(unint64_t a1@<X8>)
{
  v3 = (((*v1 ^ 0xA60E24743E309FCLL) - 0xA60E24743E309FCLL) ^ ((*v1 ^ 0x4013723426EA8BCLL) - 0x4013723426EA8BCLL) ^ (((v2 - 15312) ^ 0xF81F1397D19F47C1) + (*v1 ^ 0x7E0EC682E603306))) + 0x5C39C5D9FED104D4;
  v4 = 193924789 * ((~&STACK[0x10ED8] & 0x9D921AD75B7A225BLL | &STACK[0x10ED8] & 0x626DE528A485DDA0) ^ 0x66090A23EDC1103DLL);
  STACK[0x10ED8] = a1;
  STACK[0x10EE8] = v3 ^ v4;
  LODWORD(STACK[0x10EF0]) = v4 + v2 - 966;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 ^ 0xB72)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v2))(v6);
}

uint64_t sub_1003F97A8()
{
  v0 = LODWORD(STACK[0x8CBC]) + LODWORD(STACK[0x7B24]) + 682352019;
  v1 = (((LODWORD(STACK[0x779C]) ^ 0xA1C37565) + 1581025947) ^ ((LODWORD(STACK[0x779C]) ^ 0x97641BF6) + (((STACK[0xF10] ^ 0x8982) + 42991) ^ 0x689B4EA2)) ^ ((LODWORD(STACK[0x779C]) ^ 0xDF72A982) + 546133630)) + 2009937977;
  v2 = v0 < 0x8DF77128;
  v3 = v0 > v1;
  if (v2 == v1 < 0x8DF77128)
  {
    v2 = v3;
  }

  return (*(STACK[0xF18] + 8 * ((199 * !v2) ^ (STACK[0xF10] - 26566))))();
}

uint64_t sub_1003F9984(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(a5 + v7 * v8 + 36);
  v10 = v9 - 997099970 < a6;
  if (a3 > -1466249852 != v9 - 997099970 < (((v6 - 36057) | 0x8A2A) ^ 0x5765B940))
  {
    v10 = a3 > -1466249852;
  }

  v11 = v9 != 315866172 && v10;
  return (*(STACK[0xF18] + 8 * ((v11 * (v6 - 35313)) ^ v6)))();
}

uint64_t sub_1003F9A18@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 * v3 + v4 * v4 + v2 * v2;
  LOWORD(v6) = v6 % 0x7FFF - ((2 * (v6 % 0x7FFF)) & 0x7AEE) + 15735;
  v7 = 1603510583 * (((v9 ^ 0x2E048840) & 0x6F249848 | (v9 ^ 0x80814604) & 0x90DB67B4) ^ 0x395EFCEF);
  v10 = v7 + v1 - 915;
  v11 = v7 ^ 0xDA54AE97;
  v9[2] = v7 - 22130;
  v9[0] = (((v6 ^ 0xD1A) - 3354) ^ ((v6 ^ 0xBA2D) + 17875) ^ ((v6 ^ 0x8A40) + 30144)) - v7 + 19864;
  result = (*(a1 + 8 * (v1 ^ 0x9E19)))(v9);
  *(v5 + 16) = v9[1];
  return result;
}

uint64_t sub_1003F9BD8()
{
  v1 = *(STACK[0xF18] + 8 * ((v0 + 1285772956) ^ 0x4CA30361 ^ (110296 * (v0 + 1285772956 == ((v0 + 22459) ^ 0x6828A2E5)))));
  LODWORD(STACK[0xED0]) = v0 - 1768840054;
  return v1();
}

uint64_t sub_1003F9CD0()
{
  v5 = *v2;
  v6 = STACK[0xF18];
  v7 = *(STACK[0xF18] + 8 * v4);
  STACK[0xB6F8] = STACK[0xED0];
  v8 = STACK[0x7690];
  v9 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xB718] = v9;
  STACK[0xB720] = (v9 + 144);
  STACK[0xB728] = (v9 + 288);
  STACK[0xB730] = (v9 + 424);
  STACK[0x7848] = v7;
  LODWORD(STACK[0xB704]) = v5;
  STACK[0xB708] = v3;
  STACK[0xB710] = v0;
  STACK[0x7690] = v8 + 560;
  return (*(v6 + 8 * ((54321 * ((((v5 ^ 0x776EBBDC) - 2003745756) ^ ((v5 ^ 0x1CDF5F82) - 484401026) ^ ((v5 ^ 0x80F9A95E) + ((v1 - 10056) ^ 0x7F063551))) - 347583264 < 0xFFFFFFE0)) ^ (v1 - 10056))))();
}

uint64_t sub_1003F9F2C@<X0>(int a1@<W8>)
{
  v2 = 193924789 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x14AD2508) - 1800592114) ^ 0x22161768);
  v3 = v2 ^ LODWORD(STACK[0x782C]) ^ 0xE2DEE678;
  LODWORD(STACK[0x10EE0]) = (v1 + 515021418) ^ v2;
  LODWORD(STACK[0x10EE4]) = v3;
  LODWORD(STACK[0x10ED8]) = (a1 ^ 0xF63942F5) + v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 ^ 0x768B)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * (v1 | (8 * ((LODWORD(STACK[0x10EDC]) + (((v1 - 39491) | 0x1C18) ^ 0xF4FFB93u)) >> 31)))))(v5);
}

uint64_t sub_1003FA04C(uint64_t a1)
{
  v4 = *(a1 + 8 * (v2 - 14918)) - 880414687;
  v5 = *(v4 + v1 + 16);
  v6 = (v3 + v1);
  *v6 = *(v4 + v1);
  v6[1] = v5;
  return (*(STACK[0xF18] + 8 * ((2046 * (v1 != 192)) ^ v2)))();
}

uint64_t sub_1003FA0A0@<X0>(int a1@<W8>)
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = 1285188785;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1003FA0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = STACK[0xD80];
  v7 = (LODWORD(STACK[0xD80]) + 1703200189) & 0x9A7B55F8;
  LODWORD(STACK[0xE30]) = *(*STACK[0xE50] + ((v7 + 2105959716) & *STACK[0xE58]));
  v8 = *(STACK[0xF18] + 8 * v6);
  LODWORD(STACK[0xE40]) = v7;
  LODWORD(STACK[0xE60]) = (v7 - 13608) | 0x5451;
  return v8(a1, a2, a3, a4, a5, a6, 0x2488179CB8FF9A1ELL);
}

uint64_t sub_1003FA250@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v10 = a2 < v7;
  *(v8 + a1) = *(v4 + (a1 & 0xF)) ^ *(v2 + a1) ^ *((a1 & 0xF) + v5 + 6) ^ (-119 * (a1 & 0xF)) ^ *(v3 + (a1 & 0xF));
  if (v10 == a1 + 1 > v6 + 211691991)
  {
    v10 = a1 - 211719451 < a2;
  }

  return (*(v9 + 8 * ((2035 * v10) ^ v6)))();
}

uint64_t sub_1003FA3BC()
{
  v1 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x7A5D ^ (v0 + 21593))))();
}

uint64_t sub_1003FA488@<X0>(int a1@<W8>)
{
  STACK[0xB360] = v1;
  LODWORD(STACK[0xB368]) = v5;
  LODWORD(STACK[0xB36C]) = v3;
  STACK[0xB370] = v2;
  v6 = STACK[0x7690];
  v7 = (&STACK[0xC4D0] + STACK[0x7690]);
  STACK[0x4170] = v7;
  STACK[0xB378] = (v7 + 0x1C60E257DE744BCLL);
  STACK[0x7690] = (a1 ^ 0x1397u) + v6 - 13374;
  LODWORD(STACK[0x3FB0]) = v3;
  STACK[0x84D0] = v4;
  LODWORD(STACK[0x7D74]) = -2068518553;
  LODWORD(STACK[0x5CBC]) = -371865839;
  STACK[0x39A8] = 0;
  LODWORD(STACK[0x376C]) = -371865839;
  LODWORD(STACK[0x1360]) = 315866173;
  *v7 = 1514555413;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1003FA878()
{
  v1 = (STACK[0xF10] - 35611) | 0xE15;
  v2 = STACK[0xF10] - 32006;
  LODWORD(STACK[0x8C48]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 + 39627) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_1003FA8D0(int *a1)
{
  v2 = *a1 - 1;
  *a1 = v2;
  return (*(STACK[0xF18] + 8 * (((v2 != 11881 * (v1 ^ 0x74D7) - 35643) * (327 * (v1 ^ 0x74B9) - 35190)) ^ v1)))();
}

uint64_t sub_1003FA9A8()
{
  *v2 = 0;
  v3 = STACK[0xF18];
  *(*(STACK[0xF18] + 8 * (v1 + 41417)))() = 0;
  v4 = (*(v3 + 8 * (v1 + 41440)))(v0 + 33, 493);
  return (*(v3 + 8 * ((45433 * (((2 * v4) & 0xFE57FB9E) + (v4 ^ 0x7F2BFDCF) == (v1 ^ 0x7F2BD498))) ^ v1)))();
}

uint64_t sub_1003FAAAC(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0xEB0]) = a3;
  STACK[0xEC0] = v4;
  return (*(STACK[0xF18] + 8 * (v3 - 10544)))(716046336, 1989345280);
}

uint64_t sub_1003FAB44()
{
  v4 = v1 + (v2 ^ 0x60D8u) + ((v1 < 0x33CBA83B) << 32) + 466482896;
  v5 = v0 - 0x5D1E61E5A5EB1B9;
  v6 = (v5 < 0x4F99F75A) ^ (v4 < ((v2 - 1119289488) & 0x42B6CDE7 ^ 0x4F99F2B9uLL));
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < ((v2 - 1119289488) & 0x42B6CDE7 ^ 0x4F99F2B9uLL);
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = v3;
  }

  LODWORD(STACK[0x6010]) = v8;
  v9 = v8 == -371865839;
  LOBYTE(STACK[0x8576]) = v9;
  return (*(STACK[0xF18] + 8 * ((42 * v9) ^ v2)))();
}

uint64_t sub_1003FAC20(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0xEC0]) = v2 + LODWORD(STACK[0x27A4]) - 1368776040;
  LODWORD(STACK[0xEA0]) = -LODWORD(STACK[0x97C4]);
  v3 = *(STACK[0xF18] + 8 * v2);
  v4 = STACK[0xF10];
  v5 = STACK[0xF10] ^ 0x8B31;
  STACK[0xEB0] = STACK[0x96F0];
  v6 = STACK[0x3F30];
  LODWORD(STACK[0xE80]) = v4 - 23585;
  STACK[0xE90] = STACK[0x7978];
  LODWORD(STACK[0xD90]) = 2137 * v5;
  LODWORD(STACK[0xE70]) = (2137 * v5) ^ 0x46D02FDE;
  LODWORD(STACK[0xE10]) = STACK[0x89CC];
  LODWORD(STACK[0xE00]) = v4 - 23830;
  LODWORD(STACK[0xDF0]) = STACK[0x27C4];
  STACK[0xDE0] = STACK[0x88F0];
  LODWORD(STACK[0xDD0]) = v4 - 8802;
  LODWORD(STACK[0xDC0]) = STACK[0x1AF4];
  LODWORD(STACK[0xDB0]) = ((v4 + 13819) ^ 0xE180) - 7895;
  LODWORD(STACK[0xE60]) = v4 - 8424;
  LODWORD(STACK[0xE40]) = (162 * (v4 ^ 0x8B79)) ^ 0x147B34F3;
  LODWORD(STACK[0xE30]) = v4 + 15224;
  LODWORD(STACK[0xE20]) = (v4 ^ 0xB3F0) - 148142919;
  LODWORD(STACK[0xDA0]) = v4 - 22821;
  return v3(v6, a2, (v4 - 1731709756), (v4 - 26144), STACK[0x958]);
}

uint64_t sub_1003FAD98@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[65];
  v1[4] = *(*(v3 + 8) + 120 * v2 + 8);
  v1[5] = *(*(v3 + 8) + 120 * v2 + 8);
  v4 = STACK[0xF18];
  STACK[0x9880] = *(STACK[0xF18] + 8 * a1);
  return (*(v4 + 44488))();
}

uint64_t sub_1003FAE94()
{
  v3 = STACK[0x1EC8];
  v4 = STACK[0x4324];
  v5 = 17902189 * ((((&STACK[0x10000] + 3800) ^ 0x30BC76CE) - 2 * (((&STACK[0x10000] + 3800) ^ 0x30BC76CE) & 0x5FE78F22) + 1609010978) ^ 0xE114EFFC);
  STACK[0x10ED8] = STACK[0x50B0];
  LODWORD(STACK[0x10EE0]) = v5 + 14368 + v2;
  LODWORD(STACK[0x10EFC]) = (((v2 + 33595597) | 0x402E0846) - 1397501934) ^ v5 ^ v4;
  STACK[0x10EF0] = v3;
  STACK[0x10EE8] = v0;
  STACK[0x10F00] = v1;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 ^ 0xA8CB)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * v2))(v7);
}

uint64_t sub_1003FB064()
{
  LODWORD(STACK[0x6940]) = v0;
  STACK[0x13D8] = STACK[0x89D8];
  STACK[0x42E0] = &STACK[0x13D8];
  return (*(STACK[0xF18] + 8 * (v1 - 15341)))();
}

uint64_t sub_1003FB0A8()
{
  STACK[0x5C50] = ((2 * v1) & 0x9BBFBDF4) + (((v0 + 29678) - 0x40E0680B220AC41) ^ v1) + 0x3EEF47BABF7CB7C8;
  LODWORD(STACK[0x1374]) = -360388387;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003FB1EC()
{
  v1 = STACK[0xF18];
  STACK[0x9820] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 9715) ^ 0x3C92) + v0)))();
}

uint64_t sub_1003FB4C4()
{
  v1 = STACK[0x5600];
  STACK[0x7F08] = STACK[0x5600];
  return (*(STACK[0xF18] + 8 * ((((((v0 + 23297) ^ (v1 == 0)) & 1) == 0) * (v0 - 11502)) ^ v0)))();
}

uint64_t sub_1003FB518()
{
  v3 = (((*(v2 + 16) ^ 0xBEE34A64) + 1092400540) ^ ((*(v2 + 16) ^ 0x1EFC1F6A) - 519839594) ^ ((*(v2 + 16) ^ 0x49CA921F) - 1238012447)) + (((v1 ^ 0x89012AF1) + 1996412175) ^ ((v1 ^ 0x18FA5A96) - 419060374) ^ ((v1 ^ 0x782EB776) - 2016363500 + ((v0 + 30346) | 0x424))) + 145066952;
  LODWORD(STACK[0x607C]) = v3 ^ ((v3 ^ 0x2EE48803) - 438138269) ^ ((v3 ^ 0x48F16BA8) - 2080937526) ^ ((v3 ^ 0xAD12EDCB) + 1712648107) ^ ((v3 ^ 0xFFFEF3FE) + 888730016) ^ 0xDD2C3A8F;
  return (*(STACK[0xF18] + 8 * (v0 + 14058)))(0);
}

uint64_t sub_1003FB6D0()
{
  v0 = STACK[0xF10];
  v1 = (STACK[0xF10] + 532407420) & 0xE043994D;
  v2 = STACK[0xF10] - 30557;
  v3 = STACK[0xB1A8];
  v4 = STACK[0xB1B0];
  v5 = 1603510583 * ((2 * (&STACK[0x10ED8] & 0x1514B58C3FC52B0) - &STACK[0x10ED8] - 0x1514B58C3FC52B2) ^ 0xC15FA34BABD89FE5);
  STACK[0x10EF0] = v5 + 0x787CF1E15A2A6CC2;
  STACK[0x10EF8] = v5 + 0x1D5BAA6B483C089DLL;
  STACK[0x10F08] = v4;
  LODWORD(STACK[0x10ED8]) = v0 - v5 - 29881;
  STACK[0x10EE0] = 0;
  STACK[0x10EE8] = v3;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v0 ^ 0x402D)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * (((LODWORD(STACK[0x10F00]) == v1 + 371889036) * (v0 ^ 0xF526)) ^ v2)))(v7);
}

uint64_t sub_1003FB80C()
{
  STACK[0xED0] = STACK[0xAF18];
  STACK[0xEB0] = STACK[0x7690];
  v1 = *(STACK[0xF18] + 8 * v0);
  LODWORD(STACK[0xEC0]) = 1724701210;
  return v1();
}

uint64_t sub_1003FB8C0@<X0>(unint64_t a1@<X8>)
{
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((&STACK[0x10000] + 3800) ^ 0xB6BB3266) - 18559;
  STACK[0x10ED8] = a1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 25390)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1003FBA00@<X0>(int a1@<W8>)
{
  v2 = (((LODWORD(STACK[0x2B84]) ^ 0x512AB9DB) - 1361754587) ^ ((LODWORD(STACK[0x2B84]) ^ 0xE60A29A6) + 435541594) ^ ((((v1 - 31698) | 0x24F) ^ LODWORD(STACK[0x2B84]) ^ 0x5EF55133) - 1593137004)) + 416360990;
  v3 = (a1 ^ (v1 - 1690338275)) + ((2 * a1) & 0x1F7FE) - 1816434930;
  v4 = (v3 < 0x2EFB630D) ^ (v2 < 0x2EFB630D);
  v5 = v2 >= v3;
  if (v4)
  {
    v5 = v2 < 0x2EFB630D;
  }

  return (*(STACK[0xF18] + 8 * ((65504 * v5) ^ v1)))();
}

uint64_t sub_1003FBAF8()
{
  *(STACK[0x7980] + 248) = v1;
  if (v1)
  {
    v2 = -371865839;
  }

  else
  {
    v2 = 371891397;
  }

  LODWORD(STACK[0xB7FC]) = v2;
  return (*(STACK[0xF18] + 8 * (((((v1 == 0) ^ (v0 - 56)) & 1) * (v0 ^ 0xBFF1)) ^ v0)))();
}

uint64_t sub_1003FBD54()
{
  STACK[0xA2D8] = STACK[0x55A0] + 56;
  LODWORD(STACK[0x10ED8]) = (v0 + 12746) ^ (906386353 * ((((&STACK[0x10000] + 3800) | 0x40ED93D0) - ((&STACK[0x10000] + 3800) | 0xBF126C2F) - 1089311697) ^ 0x71EC5EF4));
  LOWORD(STACK[0x10EE0]) = 23473 * ((((&STACK[0x10000] + 3800) | 0x93D0) - ((&STACK[0x10000] + 3800) | 0x6C2F) + 27695) ^ 0x5EF4) + 18068;
  STACK[0x10EE8] = &STACK[0xC3DE];
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 51542)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (v0 ^ 0x96B4 ^ (11881 * (v0 ^ 0x158)))))(v2);
}

uint64_t sub_1003FBE34@<X0>(int a1@<W8>)
{
  STACK[0x2B68] = v3;
  STACK[0x35A0] = v2;
  STACK[0x1FD0] = v1;
  STACK[0x7568] = 0;
  LODWORD(STACK[0x86AC]) = -371865839;
  v6 = v3 == 0x217E172EFA1E81CLL || v2 == 0 || v1 == 0;
  return (*(STACK[0xF18] + 8 * (((((71 * (a1 ^ 0x10)) ^ v6) & 1) * (a1 ^ 0x4A92)) ^ a1)))();
}

uint64_t sub_1003FBFD4()
{
  v1 = (v0 - 1548504784 + LODWORD(STACK[0xDF0])) * LODWORD(STACK[0xE80]) + 824083826;
  STACK[0xEA0] = v1 ^ LODWORD(STACK[0xE70]) ^ ((v1 ^ 0x7A8A4705) - 1268040311) ^ ((v1 ^ 0x232727AD) - 305767135) ^ ((v1 ^ 0x9F489A01) + 1370087565) ^ ((v1 ^ 0xF7FB7FDB) + 958006615) ^ 0xA0E0927A80393AB4;
  v2 = *(STACK[0xF18] + 8 * SLODWORD(STACK[0xDE0]));
  LODWORD(STACK[0xE90]) = STACK[0xE60];
  return v2();
}

uint64_t sub_1003FC164()
{
  v1 = STACK[0xF18];
  STACK[0x4CA8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * ((v0 + 8141) ^ v0)))();
}

uint64_t sub_1003FC1A8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((2 * ((&STACK[0x10000] + 3800) & 0x5FD16080) - (&STACK[0x10000] + 3800) + 539926397) ^ 0xC60884B2));
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *(v3 + 360) = 0;
  return (*(v4 + 8 * v2))(v5);
}

uint64_t sub_1003FC3D0()
{
  LODWORD(STACK[0xED0]) = v0;
  v2 = STACK[0x2F0C];
  LODWORD(STACK[0x10ED8]) = (v1 + 703913737) ^ (634647737 * ((&STACK[0x10000] + 3800 - 2 * ((&STACK[0x10000] + 3800) & 0x578CEC70) - 678630285) ^ 0xBA1AC38F));
  STACK[0x10EE0] = STACK[0x818];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0xFB86)))(&STACK[0x10ED8]);
  v6 = v2 != -371865839 && *(STACK[0x798] + 8) != 0;
  return (*(v3 + 8 * ((v6 * (((v1 ^ 0x3003) + 49625) ^ 0x4827 ^ (109 * (v1 ^ 0x3003)))) ^ v1)))(v4);
}

uint64_t sub_1003FC628()
{
  LODWORD(STACK[0x4294]) = v1;
  v2 = STACK[0x3C08];
  v3 = STACK[0x6B38];
  STACK[0x4A98] = STACK[0x8C68];
  STACK[0x3E98] = v2;
  LODWORD(STACK[0x655C]) = v3;
  LODWORD(STACK[0x884C]) = -365995882;
  return (*(STACK[0xF18] + 8 * (v0 - 30246)))();
}

uint64_t sub_1003FC6C8()
{
  STACK[0x9CF8] = ((v2 << ((v1 ^ 0xBAu) + 40)) & 0x1FFEEF4CELL) + (v2 ^ 0xFACFF9FDFFF77A67) + 0x5B967AE68AEF000;
  STACK[0x9D00] = v0;
  v3 = STACK[0xF18];
  STACK[0x99B8] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * (v1 ^ 0x1967 ^ (14867 * (v1 == -563530507)))))();
}

uint64_t sub_1003FC870()
{
  v1 = STACK[0xF18];
  STACK[0x3058] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x19D1 ^ (v0 + 11875))))();
}

uint64_t sub_1003FC908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x4F08] = 0;
  v7 = STACK[0xF18];
  STACK[0x61A0] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * (v6 ^ 0xA634 ^ (v6 + 34814))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1003FC97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x3F60] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * (v6 ^ 0xD832 ^ (v6 + 30301))))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_1003FC9F4()
{
  v3 = STACK[0x6B4C];
  LODWORD(STACK[0xB74C]) = STACK[0x2158];
  LODWORD(STACK[0xB748]) = v0;
  LODWORD(STACK[0xB744]) = v3;
  return (*(STACK[0xF18] + 8 * ((28205 * (((v2 - (v1 - 371901482)) | (v1 - 371901482 - v2)) >= 0)) ^ (v1 - 28809))))();
}

uint64_t sub_1003FCAA4@<X0>(int a1@<W8>)
{
  LOBYTE(STACK[0x86E7]) = v4;
  LODWORD(STACK[0x4008]) = a1;
  LODWORD(STACK[0x9000]) = v3;
  return (*(STACK[0xF18] + 8 * (v2 | (2 * (((v1 == -371865839) ^ (v2 - 1)) & 1)))))();
}

uint64_t sub_1003FCAF8()
{
  v0 = STACK[0xF10] - 34121;
  LODWORD(STACK[0xA098]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x1DC4 ^ (10420 * (v0 == -1601198067)))))();
}

uint64_t sub_1003FCC38()
{
  v2 = v0 ^ 0xB15E;
  v3 = 139493411 * ((((&STACK[0x10000] + 3800) | 0x2067008A) - ((&STACK[0x10000] + 3800) | 0xDF98FF75) - 543621259) ^ 0x2C4AE1CF);
  STACK[0x10ED8] = STACK[0x1180];
  LODWORD(STACK[0x10EE0]) = v1 + v3 + (((v0 ^ 0xB15E) - 8355) ^ 0xA538D44);
  STACK[0x10EE8] = &STACK[0x3D08];
  LODWORD(STACK[0x10EF0]) = (v0 ^ 0xB15E) - v3 - 1276;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * ((v0 ^ 0xB15E) + 36577)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((92 * (((v2 - 126) ^ (LODWORD(STACK[0x10EE4]) == 133690028)) & 1)) ^ v2)))(v5);
}

uint64_t sub_1003FCDEC()
{
  v4 = *(v1 + v2);
  v5 = STACK[0x408C];
  v6 = (v5 ^ 0x14336B27) & (2 * (v5 & 0xA6BB63B6)) ^ v5 & 0xA6BB63B6;
  v7 = ((2 * (v5 ^ 0x1903A80B)) ^ (((v3 + 10461) ^ 0xA2C8) + 2138110145)) & (v5 ^ 0x1903A80B) ^ (2 * (v5 ^ 0x1903A80B)) & 0xBFB8CBBC;
  v8 = v7 ^ 0x80884885;
  v9 = (v7 ^ 0x3F308338) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0xFEE32EF4) & v8 ^ (4 * v8) & 0xBFB8CBBC;
  v11 = (v10 ^ 0xBEA00AA0) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x118C109)) ^ 0xFB8CBBD0) & (v10 ^ 0x118C109) ^ (16 * (v10 ^ 0x118C109)) & 0xBFB8CB90;
  v13 = v11 ^ 0xBFB8CBBD ^ (v12 ^ 0xBB888B00) & (v11 << 8);
  v14 = (v13 << 16) & 0x3FB80000 ^ v13 ^ ((v13 << 16) ^ 0x4BBD0000) & (((v12 ^ 0x430402D) << 8) & 0x3FB80000 ^ 0x7300000 ^ (((v12 ^ 0x430402D) << 8) ^ 0x38CB0000) & (v12 ^ 0x430402D));
  v15 = 1022166737 * ((((2 * (&STACK[0x10000] + 3800)) | 0x9615FCD0) - (&STACK[0x10000] + 3800) - 1259011688) ^ 0xF11A1FFA);
  LODWORD(STACK[0x10EDC]) = v15 + v3 + 26168;
  LODWORD(STACK[0x10EF0]) = v15 ^ v5 ^ (2 * v14) ^ 0x655E3524;
  STACK[0x10EE8] = v4;
  STACK[0x10EE0] = v0 + 404;
  v16 = STACK[0xF18];
  v17 = (*(STACK[0xF18] + 8 * (v3 ^ 0xD8F3)))(&STACK[0x10ED8]);
  return (*(v16 + 8 * ((31899 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ v3)))(v17);
}

uint64_t sub_1003FD008@<X0>(int a1@<W8>)
{
  *(v3 + 8) = a1;
  STACK[0x94B0] = v3 + 8;
  *(v3 + 16) = 0;
  *(v3 + 24) = a1;
  STACK[0x7118] = v3 + 16;
  STACK[0x31C8] = v3 + 24;
  *(v3 + 32) = 0;
  STACK[0x4E70] = v3 + 32;
  *v3 = 0;
  *(v3 + 40) = a1;
  STACK[0x19E0] = v3 + 40;
  return (*(STACK[0xF18] + 8 * ((((v1 - 1308325184) & 0x4DFBBF7F ^ 0xBE3C) * (v2 == 0)) ^ v1)))();
}

uint64_t sub_1003FD168()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xDED0)))(STACK[0x6A98]);
  STACK[0x6A98] = 0;
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003FD1E8()
{
  v2 = v0 - 2801;
  v3 = 10 * ((v0 - 2801) ^ 0x144);
  LODWORD(STACK[0x1BC4]) = v1;
  v4 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v2);
  return (*(v4 + 8 * ((v3 ^ 0x8A94) + v2)))();
}

uint64_t sub_1003FD33C()
{
  v1 = STACK[0xF18];
  STACK[0x4580] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 1441773204) & 0xAA10F867 ^ 0x83DC) + v0)))();
}

uint64_t sub_1003FD560()
{
  v0 = STACK[0xF10] + 2220;
  LODWORD(STACK[0x33DC]) = -371865839;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003FD588()
{
  STACK[0x60B8] = &STACK[0x71A8];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = -1937411247;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003FD5BC()
{
  v1 = STACK[0x82E8];
  v2 = 906386353 * ((2 * ((&STACK[0x10000] + 3800) & 0x7DE253E8) - (&STACK[0x10000] + 3800) - 2111984624) ^ 0xB31C6134);
  LODWORD(STACK[0x10EF0]) = 1625534992 - v2;
  LODWORD(STACK[0x10EF8]) = 776646616 - v2;
  LODWORD(STACK[0x10EDC]) = (v0 + 26622) ^ v2;
  LODWORD(STACK[0x10ED8]) = -1135722494 - v2;
  STACK[0x10EE8] = v1;
  STACK[0x10EE0] = &STACK[0x63E8];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xD38B)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * (((LODWORD(STACK[0x10EF4]) != ((v0 + 120) ^ 0x7F7EDB8)) * ((3 * (v0 ^ 0x2BCD)) ^ 0x9E7B)) ^ v0)))(v4);
}

uint64_t sub_1003FD6C4()
{
  v0 = STACK[0xF10] - 26089;
  LODWORD(STACK[0x68C4]) = STACK[0x2614];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_1003FD944()
{
  v2 = v0 ^ 0x4192;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * v2))();
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_1003FD968(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v11 = a8 < v8;
  *(STACK[0xED0] + (v9 - 744244286)) = -114;
  v12 = (v10 - 30982) | 0x2022;
  LODWORD(STACK[0xE40]) = v12;
  v13 = (v12 ^ 0xC6D53A1C) + v9;
  v14 = v11 ^ (v13 < v8);
  v15 = v13 < a8;
  if (!v14)
  {
    v11 = v15;
  }

  return (*(STACK[0xF18] + 8 * ((!v11 * a2) ^ v10)))();
}

uint64_t sub_1003FD9E8@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB100]) = a1;
  v5 = *v3;
  STACK[0x77F8] = v5;
  v6 = *(v2 + 12);
  v7 = ((v4 - 1242785346) & 0x4A132C7F) + v1 + 1958942074;
  v8 = v6 - 1219203533;
  v9 = v6 > ((v4 - 1242785346) ^ 0xB5ECF5D6) + 1219191664;
  v10 = (v7 < 0xB7546E33) ^ v9;
  v11 = v7 < v8;
  if (!v10)
  {
    v9 = v11;
  }

  v12 = !v9;
  if (!v5)
  {
    v12 = 1;
  }

  return (*(STACK[0xF18] + 8 * (v4 ^ (16 * v12))))();
}

uint64_t sub_1003FDBB0()
{
  v0 = (STACK[0xF10] - 29370) | 0xA00A;
  v1 = STACK[0xF10] - 34132;
  LODWORD(STACK[0xA4BC]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xA55A ^ v0)))();
}

uint64_t sub_1003FDC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(&off_1010A0B50 + v4 - 24622) - 736947255;
  v6 = *&v5[a4 + 16];
  v7 = (a3 + a4);
  *v7 = *&v5[a4];
  v7[1] = v6;
  return (*(STACK[0xF18] + 8 * (((a4 == 192) * (((v4 - 23810) | 0x7020) ^ 0x9456)) ^ v4)))(a1, a2, 224);
}

uint64_t sub_1003FDD48@<X0>(int a1@<W8>)
{
  v3 = STACK[0xF18];
  STACK[0xED0] = *(STACK[0xF18] + 8 * a1);
  return (*(v3 + 8 * ((28 * ((((v2 + 20) ^ (v2 - 1)) ^ ((v1 & 1) == 0)) & 1)) ^ v2)))();
}

uint64_t sub_1003FDE48@<X0>(int a1@<W8>)
{
  v1 = (a1 + 371875058) | 0xA0;
  v2 = a1 ^ 0xE9D5E9AA;
  v3 = ((LODWORD(STACK[0x73CC]) - a1) | (a1 - LODWORD(STACK[0x73CC]))) >= 0;
  if (LODWORD(STACK[0x4824]) != -371865840)
  {
    v3 = 0;
  }

  return (*(STACK[0xF18] + 8 * (v2 ^ (v3 * (v1 ^ (v2 + 30425))))))();
}

uint64_t sub_1003FDED0()
{
  v1 = STACK[0x958C];
  STACK[0x10EE0] = *(STACK[0x6140] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x10EDC]) = -1022166737 * ((((&STACK[0x10ED8] ^ 0x5C206080) & 0x7CB87EE8) + (&STACK[0x10ED8] ^ 0xA39D9E6E) - ((&STACK[0x10ED8] ^ 0xA39D9E6E) & 0x7CB87EE8)) ^ 0x65350114) + 1446135777 * v1 + 2011904846;
  LODWORD(STACK[0x10ED8]) = (v0 + 30570) ^ (1022166737 * ((((&STACK[0x10ED8] ^ 0x5C206080) & 0x7CB87EE8) + (&STACK[0x10ED8] ^ 0xA39D9E6E) - ((&STACK[0x10ED8] ^ 0xA39D9E6E) & 0x7CB87EE8)) ^ 0x65350114));
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 35943)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((64890 * (LODWORD(STACK[0x10EE8]) == ((v0 + 19477) ^ 0xAEEA) - 371875520)) ^ v0)))(v3);
}

uint64_t sub_1003FDFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (v7)
  {
    v8 = a6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(STACK[0xF18] + 8 * ((v9 * ((v6 + 14291) ^ 0xE662 ^ ((v6 + 21587) | 0x208))) ^ v6)))();
}

uint64_t sub_1003FE034()
{
  STACK[0x10ED8] = STACK[0x8828];
  LODWORD(STACK[0x10EE0]) = v0 + 1112314453 * ((((&STACK[0x10000] + 3800) | 0xEF487DE4) - ((&STACK[0x10000] + 3800) | 0x10B7821B) + 280461851) ^ 0x1E573D) - 176;
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 37594)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_1003FE0C8()
{
  v1 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFEC2178E0));
  STACK[0x2FA0] = (v1 & 0x603F92394BAB4DF2 ^ 0xE00D00110A014972 ^ (((v0 - 2366) | 0x22u) + 0x7FFFFFFFFFFF74C4) & v1 ^ 0x1B32B66C61FAA489) - (v1 & 0x603F92394BAB4DF2 ^ 0xE00D00110A014972);
  return (*(STACK[0xF18] + 8 * (((*(STACK[0x78B0] + 368) != 0) * (v0 - 37967)) | v0)))();
}

uint64_t sub_1003FE1DC@<X0>(unint64_t a1@<X8>)
{
  v5 = STACK[0xF18];
  STACK[0x2648] = *(STACK[0xF18] + 8 * v4);
  STACK[0x3DD0] = a1;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x2818] = v7;
  STACK[0x1908] = (v7 + 128);
  STACK[0x3670] = (v7 + 256);
  STACK[0x6500] = (v7 + 1616);
  STACK[0x7690] = v6 + 1744;
  v8 = *(v1 - 0x217E172EFA1E81CLL);
  v9 = ((v2 & 0xA6BB63B6) << ((v3 + 94) & 0xCF ^ 0x4F)) & (v2 ^ 0x96334BA4) ^ v2 & 0xA6BB63B6;
  v10 = ((2 * (v2 ^ 0xDE4389A0)) ^ (((v3 - 7423) | 0x891A) - 235845391)) & (v2 ^ 0xDE4389A0) ^ (2 * (v2 ^ 0xDE4389A0)) & 0x78F8EA16;
  v11 = v10 ^ 0x8082A12;
  v12 = (v10 ^ 0x30F0A000) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xE3E3A858) & v11 ^ (4 * v11) & 0x78F8EA14;
  v14 = (v13 ^ 0x60E0A800) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x18184206)) ^ 0x8F8EA160) & (v13 ^ 0x18184206) ^ (16 * (v13 ^ 0x18184206)) & 0x78F8EA00;
  v16 = v14 ^ 0x78F8EA16 ^ (v15 ^ 0x888A000) & (v14 << 8);
  v17 = 1012831759 * (((~(&STACK[0x10000] + 3800) | 0xDA7C04D0) + ((&STACK[0x10000] + 3800) | 0x2583FB2F)) ^ 0x3510EDA4);
  LOBYTE(STACK[0x10EF8]) = 69 - 15 * (((~(&STACK[0x10000] - 40) | 0xD0) + ((&STACK[0x10000] - 40) | 0x2F)) ^ 0xA4);
  LODWORD(STACK[0x10EE8]) = v3 - v17 + 5073;
  STACK[0x10EF0] = v8;
  STACK[0x10EE0] = &STACK[0x2208];
  LODWORD(STACK[0x10ED8]) = 471346692 - v17;
  STACK[0x10F00] = v7;
  LODWORD(STACK[0x10F08]) = v17 ^ v2 ^ (2 * ((v16 << 16) & 0xF8F8F8F8 ^ v16 ^ ((v16 << 16) ^ 0x6A160000) & (((v15 ^ 0x70704A16) << 8) & 0x78F80000 ^ (((v15 ^ 0x70704A16) << 8) ^ 0x78EA0000) & (v15 ^ 0x70704A16) ^ 0x100000))) ^ 0x80B7B868;
  v18 = (*(v5 + 8 * (v3 ^ 0xD59D)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((43222 * (LODWORD(STACK[0x10EFC]) == -371865839)) ^ v3)))(v18);
}

uint64_t sub_1003FE488()
{
  v1 = STACK[0x3378] + 24;
  v2 = STACK[0xF18];
  STACK[0x9AD0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * (v0 ^ 0x196B ^ ((v0 - 65) | 0x2065))))(v1);
}

uint64_t sub_1003FE6AC()
{
  v1 = STACK[0xB1B8];
  LODWORD(STACK[0x10EE8]) = (v0 + 4439) ^ (139493411 * ((((&STACK[0x10000] + 3800) | 0xA1054C32) - ((&STACK[0x10000] + 3800) | 0x5EFAB3CD) + 1593488333) ^ 0xAD28AD77));
  STACK[0x10EE0] = v1;
  LOBYTE(STACK[0x10ED8]) = ((35 * ((((&STACK[0x10000] - 40) | 0x32) - ((&STACK[0x10000] - 40) | 0xCD) - 51) ^ 0x77)) & 1) == 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 11677)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1003FE74C()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 32530;
  LODWORD(STACK[0x94E4]) = v0;
  v3 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v2);
  return (*(v3 + 8 * (v1 - 30314)))();
}

uint64_t sub_1003FE9F0@<X0>(uint64_t a1@<X8>)
{
  v8 = v3 - 1;
  v9 = ((*(*STACK[0xE50] + (*STACK[0xE58] & v4)) ^ (a1 + v8)) & 0x7FFFFFFF) * v5;
  v10 = (v9 ^ HIWORD(v9)) * v5;
  *(v1 + v8) = *(a1 + v8) ^ *(STACK[0x780] + (v10 >> 24)) ^ *(STACK[0x788] + (v10 >> 24)) ^ *(STACK[0x778] + (v10 >> 24)) ^ v10 ^ (5 * BYTE3(v10)) ^ v6;
  return (*(STACK[0xF18] + 8 * (((v8 == 0) * v7) ^ v2)))();
}

uint64_t sub_1003FEA80(uint64_t a1)
{
  *(a1 + 16 * v3 + 8) = 0;
  *(*(v2 + 8) + 16 * v3 + 4) = -2014549278;
  *(*(v2 + 8) + 16 * v3) = -371865839;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003FEB70@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = (a3 + (v7 & v8 ^ a1 | v5));
  *v9 = a4;
  v9[1] = a4;
  return (*(STACK[0xF18] + 8 * (((v5 + 32 == v6) * a2) ^ v4)))();
}

uint64_t sub_1003FEBA8()
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 != 1436313903) * ((v0 + 4007) ^ 0x11C9)) ^ (v0 + 2693))))();
}

uint64_t sub_1003FEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] - 29045;
  STACK[0x7548] = STACK[0x7BB0];
  STACK[0x77B0] = &STACK[0x5430];
  LODWORD(STACK[0x648C]) = -1957727202;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_1003FEE38()
{
  v1 = STACK[0x6ED0];
  STACK[0x5DC8] = STACK[0x6ED0];
  if (v1)
  {
    v2 = STACK[0x80C8] == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && STACK[0x29B0] != 0;
  return (*(STACK[0xF18] + 8 * ((v4 * (((v0 - 42577) | 0x8802) + ((v0 - 16235) ^ 0xFFFF1EEE))) ^ v0)))();
}

uint64_t sub_1003FEEA0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 20849)))(v2);
}

uint64_t sub_1003FEECC()
{
  v2 = STACK[0x5C80];
  LODWORD(STACK[0x22D4]) = v1;
  return (*(STACK[0xF18] + 8 * (((v2 == 0) * (((v0 + 26660) ^ 0xFFFFFFCC) + (v0 ^ 0xA82C))) ^ v0)))();
}

uint64_t sub_1003FF0A8()
{
  *(*(v3 + 16) + 8 * v2) = v0;
  v4 = v1 + 38396 + *(v3 + 8) - 44562;
  ++*(v3 + 4);
  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_1003FF250()
{
  v0 = STACK[0xF10] - 32133;
  *(STACK[0x4D80] + (LODWORD(STACK[0xA320]) - 636593748)) = 2;
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x2409)))();
}

uint64_t sub_1003FF2CC()
{
  v1 = STACK[0xF10] - 31806;
  v2 = STACK[0xF10] - 8881;
  LODWORD(STACK[0xF64]) = v0;
  return (*(STACK[0xF18] + 8 * ((47 * (v0 == (v1 ^ 0xE9D5C9EC))) ^ v2)))();
}

uint64_t sub_1003FF314()
{
  v5 = v1 < v2;
  *(*(v4 + 16) + 8 * (v3 - 1709676228)) = 0x981390C2FED9246;
  if (v5 == v3 + 838536860 < v2)
  {
    LOBYTE(v5) = v3 + 838536860 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((((v0 - 60) ^ v5) & 1 | (2 * (((v0 - 60) ^ v5) & 1))) ^ v0)))();
}

uint64_t sub_1003FF5D0@<X0>(int a1@<W8>)
{
  v1 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v1 + 8 * (a1 ^ 0x1188)))();
}

uint64_t sub_1003FF638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0xED0];
  *(v5 + 8) = -371865839;
  *(v5 + 44) = 0;
  *v5 = -1359724707;
  *(v5 + 172) = -2109658874;
  *(v5 + 28) = 0;
  *(v5 + 36) = 16;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 33;
  *(v5 + 148) = -371865839;
  *(v5 + 264) = 0x981390C2FED9246;
  *(v5 + 272) = 1692332675;
  *(v5 + 184) = v5;
  *(v5 + 296) = 0x981390C2FED9246;
  v6 = STACK[0xF18];
  STACK[0x6260] = *(STACK[0xF18] + 8 * v4);
  return (*(v6 + 8 * ((((v4 + 31441) | 0x10A2) ^ 0x967C) + v4)))(a1, a2, a3, a4, LODWORD(STACK[0x41CC]));
}

uint64_t sub_1003FF770()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4192)))(v0);
  return (*(v2 + 8 * (v1 - 21385)))(v3);
}

uint64_t sub_1003FF7A0()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 7575;
  STACK[0x5F58] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 - 35628) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_1003FF7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  v12 = 0;
  v13 = *(*v10 + (*v9 & 0x20FAB224)) ^ 0x20FAB225;
  v14 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v13 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v13;
  v15 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v14 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v14;
  v16 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v15 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v15;
  v17 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v16 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v16;
  v18 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v17 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v17;
  v19 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v18 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v18;
  v20 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v19 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v19;
  v21 = *((qword_1010C0550 ^ 0x8FEE9E171B0FB924) + (v20 & (qword_1010C0540 ^ 0x94DFF197226FCCCLL))) ^ v20;
  STACK[0xBC30] = 0;
  STACK[0xBC38] = v8;
  v22 = 16777619 * ((553300517 * v21 + 7) ^ (553300517 * v21)) % 7;
  v23 = 16777619 * ((553300517 * v21 + 6) ^ (553300517 * v21)) % 6;
  v24 = 16777619 * ((553300517 * v21 + 5) ^ (553300517 * v21)) % 5;
  v25 = *(&STACK[0xBC30] | v22);
  *(&STACK[0xBC30] | v22) = STACK[0xBC37];
  v26 = *(&STACK[0xBC30] | v23);
  *(&STACK[0xBC30] | v23) = STACK[0xBC36];
  v27 = *(&STACK[0xBC30] | v24);
  *(&STACK[0xBC30] | v24) = STACK[0xBC35];
  v28 = vdup_n_s32(553300517 * v21);
  v29 = 16777619 * ((553300517 * v21 + 3) ^ (553300517 * v21)) % 3;
  v30.i32[0] = v28.i32[0];
  v30.i32[1] = 553300517 * v21 + 1;
  LOBYTE(STACK[0xBC37]) = v25;
  v31 = veor_s8(vmul_s32(v30, v28), v28);
  LOBYTE(STACK[0xBC36]) = v26;
  LOBYTE(STACK[0xBC35]) = v27;
  v32 = STACK[0xBC30];
  LOBYTE(STACK[0xBC30]) = STACK[0xBC34];
  LOBYTE(STACK[0xBC34]) = v32;
  v33 = *(&STACK[0xBC30] | v29);
  *(&STACK[0xBC30] | v29) = STACK[0xBC33];
  LOBYTE(STACK[0xBC33]) = v33;
  v34 = STACK[0xBC31];
  LOBYTE(STACK[0xBC32]) = STACK[0xBC30];
  LOWORD(STACK[0xBC30]) = v34;
  STACK[0xBC30] = vmla_s32(v31, STACK[0xBC30], vdup_n_s32(0x1000193u));
  v35 = STACK[0xBC38];
  v36 = (553300517 * STACK[0xBC38]) ^ v21;
  v37 = vdupq_n_s32(v36);
  v38 = xmmword_100BC7620;
  v39 = xmmword_100BC7630;
  v40 = xmmword_100BC7640;
  v41 = xmmword_100BC7650;
  v42.i64[1] = 0xFFFFFF0FFFFFFF0ELL;
  v43.i64[0] = 0x9393939393939393;
  v43.i64[1] = 0x9393939393939393;
  v44.i64[0] = 0x1000000010;
  v44.i64[1] = 0x1000000010;
  do
  {
    v45 = *(v35 + v12);
    v65.val[1] = veorq_s8(vqtbl1q_s8(v45, xmmword_100BC7690), veorq_s8(v37, vmulq_s32(vaddq_s32(v40, v37), vsubq_s32(v40, v37))));
    v65.val[0] = veorq_s8(vqtbl1q_s8(v45, xmmword_100BC76A0), veorq_s8(v37, vmulq_s32(vaddq_s32(v41, v37), vsubq_s32(v41, v37))));
    v65.val[2] = veorq_s8(vqtbl1q_s8(v45, xmmword_100BC7680), veorq_s8(v37, vmulq_s32(vaddq_s32(v39, v37), vsubq_s32(v39, v37))));
    v65.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v45, xmmword_100BC7670), v37), vmulq_s32(vaddq_s32(v38, v37), vsubq_s32(v38, v37)));
    *(v35 + v12) = vmulq_s8(vqtbl4q_s8(v65, xmmword_100BC7660), v43);
    v12 += 16;
    v41 = vaddq_s32(v41, v44);
    v40 = vaddq_s32(v40, v44);
    v39 = vaddq_s32(v39, v44);
    v38 = vaddq_s32(v38, v44);
  }

  while (v12 != 576);
  v46 = 0;
  v47 = xmmword_100F52AE0;
  v48 = vdupq_n_s32(v36);
  v49 = xmmword_100F52AF0;
  v50 = v35 + 576;
  v51.i64[0] = 0x800000008;
  v51.i64[1] = 0x800000008;
  do
  {
    v42.i64[0] = *(v50 + v46);
    v64.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v42, xmmword_100BC7690), v48), vmulq_s32(vaddq_s32(v47, v48), vsubq_s32(v47, v48)));
    v64.val[0] = veorq_s8(vqtbl1q_s8(v42, xmmword_100BC76A0), veorq_s8(v48, vmulq_s32(vaddq_s32(v49, v48), vsubq_s32(v49, v48))));
    v42 = vqtbl2q_s8(v64, xmmword_100F52AD0);
    *(v50 + v46) = vmul_s8(*v42.i8, 0x9393939393939393);
    v49 = vaddq_s32(v49, v51);
    v47 = vaddq_s32(v47, v51);
    v46 += 8;
  }

  while (v46 != 8);
  v52 = 72;
  do
  {
    v53 = 16777619 * ((v36 + v52) ^ v36) % v52;
    v54 = *(v35 + 8 * v53) ^ *(v35 + 8 * v52);
    *(v35 + 8 * v52) = v54;
    v55 = *(v35 + 8 * v53) ^ v54;
    *(v35 + 8 * v53) = v55;
    *(v35 + 8 * v52) ^= v55;
    v56 = v52-- + 1;
  }

  while (v56 > 2);
  v57 = *(&STACK[0xBC38] + v22);
  *(&STACK[0xBC38] + v22) = STACK[0xBC3F];
  LOBYTE(STACK[0xBC3F]) = v57;
  v58 = *(&STACK[0xBC38] + v23);
  *(&STACK[0xBC38] + v23) = STACK[0xBC3E];
  LOBYTE(STACK[0xBC3E]) = v58;
  v59 = *(&STACK[0xBC38] + v24);
  *(&STACK[0xBC38] + v24) = STACK[0xBC3D];
  LOBYTE(STACK[0xBC3D]) = v59;
  v60 = STACK[0xBC38];
  LOBYTE(STACK[0xBC38]) = STACK[0xBC3C];
  LOBYTE(STACK[0xBC3C]) = v60;
  v61 = *(&STACK[0xBC38] + v29);
  *(&STACK[0xBC38] + v29) = STACK[0xBC3B];
  LOBYTE(STACK[0xBC3B]) = v61;
  v62 = STACK[0xBC39];
  LOBYTE(STACK[0xBC3A]) = STACK[0xBC38];
  LOWORD(STACK[0xBC38]) = v62;
  STACK[0xBC38] = vmla_s32(v31, STACK[0xBC38], vdup_n_s32(0x1000193u));
  *a8 = STACK[0xBC38] ^ STACK[0xBC30];
  return (*(STACK[0xF18] + 8 * v11))();
}

uint64_t sub_1003FFCE0@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v2 = (STACK[0xF10] - 1335) | 0x49;
  v3 = STACK[0xF10] - 24790;
  STACK[0x7690] = a2 - 864;
  return (*(STACK[0xF18] + 8 * ((32656 * (a1 == (v2 ^ 0xE9D5415C))) ^ v3)))();
}

uint64_t sub_1003FFE14@<X0>(_DWORD *a1@<X8>)
{
  v3 = (((*a1 ^ 0xF0127192) + 267226734) ^ ((*a1 ^ 0x57F32271) - 1475551857) ^ (((v2 + 371871735) ^ *a1 ^ 0x4E3483FA) + (v2 ^ 0x581EAC1F))) - 54746966;
  v4 = 634647737 * ((((&STACK[0x10000] + 3800) | 0x2D85A6EF) - ((&STACK[0x10000] + 3800) & 0x2D85A6E8)) ^ 0x40138913);
  STACK[0x10EF0] = v1;
  LODWORD(STACK[0x10EF8]) = v2 - v4 + 371905616;
  STACK[0x10F00] = (a1 + 1);
  STACK[0x10EE0] = &STACK[0x4A34];
  STACK[0x10EE8] = &STACK[0x4D54];
  LODWORD(STACK[0x10ED8]) = v3 ^ v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v2 + 371917747)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * (v2 ^ 0xE9D5E2C0 ^ (31518 * (((LODWORD(STACK[0x10F08]) - v2) | (v2 - LODWORD(STACK[0x10F08]))) >= 0)))))(v6);
}

uint64_t sub_1004001DC@<X0>(int a1@<W8>)
{
  STACK[0x9410] = STACK[0x3AF8];
  LODWORD(STACK[0xAD38]) = STACK[0x5504];
  STACK[0x7598] = 0x981390C2FED9246;
  return (*(STACK[0xF18] + 8 * (((*(STACK[0x790] - 573165550) == 0) * ((975 * (a1 ^ 0xAF7D) - 528545127) & 0x1F8047B5 ^ 0x678B)) ^ a1)))();
}

uint64_t sub_10040026C()
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
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100400308()
{
  v1 = *STACK[0x4278];
  LODWORD(STACK[0xEC0]) = *v1;
  v2 = *(v1 + 8);
  LODWORD(STACK[0xEB0]) = *(v1 + 16);
  v3 = STACK[0x8AC8];
  STACK[0x6E00] = STACK[0x8AC8];
  v4 = STACK[0x7690];
  v5 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x4260] = (v5 + 256);
  STACK[0xED0] = v5;
  STACK[0x3B00] = (v5 + 512);
  STACK[0x7690] = v4 + ((v0 + 28267) ^ 0x880BLL);
  LODWORD(STACK[0x64BC]) = -347583232;
  if (v3)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(STACK[0xF18] + 8 * ((11 * v7) ^ v0)))();
}

uint64_t sub_1004003F4()
{
  v0 = STACK[0xF10] - 16490;
  STACK[0x3760] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100400420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = STACK[0xF10] + 1647;
  LOBYTE(STACK[0x3FAF]) = 59;
  return (*(STACK[0xF18] + 8 * v7))(a1, a2, a3, a4, a5, a6, a7, STACK[0x910]);
}

uint64_t sub_100400458@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v14 = v5 + v4;
  v15 = *(*v10 + (*v9 & v6));
  v16 = (((((a2 + v14) ^ v15) & 0x7FFFFFFF) * v7) ^ (((((a2 + v14) ^ v15) & 0x7FFFFFFFu) * v7) >> 16)) * v7;
  v17 = (((((v2 + v14) ^ v15) & 0x7FFFFFFF) * v7) ^ (((((v2 + v14) ^ v15) & 0x7FFFFFFFu) * v7) >> 16)) * v7;
  *(v2 + v14) = *(v11 + (v16 >> 24)) ^ *(a2 + v14) ^ *((v16 >> 24) + v13 + 2) ^ *((v16 >> 24) + v12 + 4) ^ *(v11 + (v17 >> 24)) ^ *((v17 >> 24) + v13 + 2) ^ *((v17 >> 24) + v12 + 4) ^ v16 ^ v17 ^ (BYTE3(v16) * v8) ^ (BYTE3(v17) * v8);
  return (*(STACK[0xF18] + 8 * (((v14 == 0) * a1) ^ v3)))();
}

uint64_t sub_1004008FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 ^ (v3 + 292932915) & 0xEE898BFD ^ 0x55FDF7B1CB8D184ELL) + ((2 * a2) & 0x1971A37BELL);
  *(a1 + 16) = v4 + 0x1720E5E47FFDCC48;
  v4 -= 0x55FDF7B121002B6FLL;
  v5 = STACK[0x7D20] - 0x6F6F2C6D775EA9A8;
  v6 = v4 < 0xAA8CF06C;
  v7 = v4 > v5;
  if (v5 < 0xAA8CF06C != v6)
  {
    v7 = v6;
  }

  if (v7)
  {
    v2 = 371891407;
  }

  *(a1 + 24) = v2;
  v8 = v2 == -371865839;
  v9 = v2 != -371865839;
  v10 = v8;
  *(a1 + 31) = v10;
  return (*(STACK[0xF18] + 8 * ((202 * v9) ^ v3)))();
}

uint64_t sub_100400A08()
{
  v1 = STACK[0xF18];
  STACK[0x9820] = *(STACK[0xF18] + 8 * (v0 - 32248));
  return (*(v1 + 8 * (((v0 == 1675028567) * (v0 - 26169)) ^ (v0 - 28228))))();
}

uint64_t sub_100400A60(int a1, int a2)
{
  v3 = (((a2 ^ 0xDFB465C6) + 541825594) ^ ((v2 ^ 0x6E4) + 627420397 + (a2 ^ 0xDA9A3513)) ^ ((a2 ^ 0xECFB97C4) + 319055932)) + 785052719;
  v4 = (((a1 ^ 0xAA4C9E94) + 1437819244) ^ ((a1 ^ 0xA49F3C71) + 1533068175) ^ ((a1 ^ 0xE70665F4) + 419011084)) + 785052719;
  v5 = v3 < 0x44F52D1E;
  v6 = v3 > v4;
  if (v5 != v4 < 0x44F52D1E)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((15 * !v6) ^ v2)))();
}

uint64_t sub_100400BA0()
{
  v1 = STACK[0xF18];
  STACK[0x2F78] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 + 41951) ^ 0x82ED) + v0)))();
}

uint64_t sub_100400C40()
{
  v0 = STACK[0xF10];
  LODWORD(STACK[0xA4E8]) = STACK[0x98D4];
  return (*(STACK[0xF18] + 8 * (v0 - 29445)))();
}

uint64_t sub_100400CF8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v7 = v6 << LODWORD(STACK[0xE00]);
  v8 = *(STACK[0xED0] + 4 * ((2899 * (((v6 ^ 0x462A1DF8) - 377163718) ^ ((v6 ^ 0x5CEA4837) - 213604873) ^ ((v6 ^ 0x403A194Fu) - 275450737)) - 750770264) % 0x26C4));
  v9 = (((v7 ^ 0x31492AD2) + 172946301) ^ ((v7 ^ 0x61B2A1EF) + 1521842242) ^ ((v7 ^ 0x8729EF14) - 1137822021)) * a2 + 469199514;
  v10 = (v9 ^ 0xF39CDFC0) & (2 * (v9 & 0xFBDD1FC9)) ^ v9 & 0xFBDD1FC9;
  v11 = ((2 * (v9 ^ 0xB38EDAD0)) ^ 0x90A78A32) & (v9 ^ 0xB38EDAD0) ^ (2 * (v9 ^ 0xB38EDAD0)) & 0x4853C518;
  v12 = ((4 * (v11 ^ 0x48504509)) ^ 0x214F1464) & (v11 ^ 0x48504509) ^ (4 * (v11 ^ 0x48504509)) & 0x4853C518;
  v13 = (v12 ^ 0x430400) & (16 * ((v11 ^ 0x8000) & (4 * v10) ^ v10)) ^ (v11 ^ 0x8000) & (4 * v10) ^ v10;
  v14 = ((16 * (v12 ^ 0x4810C119)) ^ 0x853C5190) & (v12 ^ 0x4810C119) ^ (16 * (v12 ^ 0x4810C119)) & 0x4853C510;
  v15 = v13 ^ 0x4853C519 ^ (v14 ^ 0x104100) & (v13 << 8);
  v16 = v9 ^ (2 * ((v15 << 16) & 0x48530000 ^ v15 ^ ((v15 << 16) ^ 0x45190000) & (((v14 ^ 0x48438409) << 8) & 0x48530000 ^ 0x8120000 ^ (((v14 ^ 0x48438409) << 8) ^ 0x53C50000) & (v14 ^ 0x48438409)))) ^ 0xD740420;
  v17 = (((v7 ^ 0x1A7CBCFD) - 551812000) ^ ((v7 ^ 0xA1EE601B) + 1687083194) ^ ((v7 ^ 0x6C40B8C9) - 1457520532)) * a2 + 1476232205;
  v18 = v17 - ((((v17 >> 5) * a5) >> 32) >> 1) * a6;
  v19 = (((v6 ^ 0x89E68C24) + 1981379548) ^ ((v6 ^ 0xF6347EFA) + 164331782) ^ ((v6 ^ 0x2528BE50) - 623427152)) - 1049551451;
  v20 = 0xE070381C0E071 * (((v16 ^ 0x3D119146A252F255) - 0x3D119146A252F255) ^ ((v16 ^ 0xC10CADA7FF9DB885) + 0x3EF352580062477BLL) ^ ((v16 ^ 0xFC1D3CE1BBE3DB0BLL) + 0x3E2C31E441C24F5)) - 0xE125928EC9B8DABLL;
  v21 = (v19 ^ 0x59298CEB) & (2 * (v19 & 0x99892EEA)) ^ v19 & 0x99892EEA;
  v22 = ((2 * (v19 ^ 0x482B81AF)) ^ 0xA3455E8A) & (v19 ^ 0x482B81AF) ^ (2 * (v19 ^ 0x482B81AF)) & 0xD1A2AF44;
  v23 = ((4 * (v22 ^ 0x50A2A145)) ^ 0x468ABD14) & (v22 ^ 0x50A2A145) ^ (4 * (v22 ^ 0x50A2A145)) & 0xD1A2AF44;
  v24 = (v23 ^ 0x4082AD00) & (16 * ((v22 ^ 0x80000E00) & (4 * v21) ^ v21)) ^ (v22 ^ 0x80000E00) & (4 * v21) ^ v21;
  v25 = ((16 * (v23 ^ 0x91200241)) ^ 0x1A2AF450) & (v23 ^ 0x91200241) ^ (16 * (v23 ^ 0x91200241)) & 0xD1A2AF40;
  v26 = v24 ^ 0xD1A2AF45 ^ (v25 ^ 0x1022A400) & (v24 << 8);
  v27 = v19 ^ (2 * ((v26 << 16) & 0x51A20000 ^ v26 ^ ((v26 << 16) ^ 0x2F450000) & (((v25 ^ 0xC1800B05) << 8) & 0x51A20000 ^ 0x51000000 ^ (((v25 ^ 0xC1800B05) << 8) ^ 0x22AF0000) & (v25 ^ 0xC1800B05))));
  v28 = *(STACK[0xEC0] + 4 * ((707 * (((v8 ^ 0x5CB5F7E0) + 175404384) ^ ((v8 ^ 0x5789614C) + 21554164) ^ ((v8 ^ 0x26AECF7Bu) + 1886342597)) + 1734983109) % 0x300));
  v29 = (((v7 ^ 0x4518C529) + 1626268048) ^ ((v7 ^ 0xD78CA611) - 226852168) ^ ((v7 ^ 0x45460712) + 1622156213)) * a2 + 1623868742;
  v30 = v20 ^ ((v20 ^ 0xE37E947F0DDB7F04) - 0x7BB987F3B7030FAELL) ^ ((v20 ^ 0xA02395B068A6AC05) - 0x38E4863CD27EDCAFLL) ^ ((v20 ^ 0xA0F1A9A40A7A58D5) - 0x3836BA28B0A2287FLL) ^ ((v20 ^ 0x7B6BBBE7D5DFFB7ELL) + 0x1C53579490F8742CLL);
  v31 = v29 - ((((v29 >> 5) * a5) >> 32) >> 1) * a6;
  v32 = v30 ^ 0x95E1B12296A7A091;
  v34 = v30 ^ 0x24C130AD1BD83091;
  v30 ^= 0x29E7920337A7E0AAuLL;
  v35 = (v32 + 0x1C08DA763EFBC9D8) ^ (v34 - 0x52D7A4064C7BA628);
  v36 = __CFADD__(v30, 0xA00EF9579FFB89EDLL);
  v37 = (__CFADD__(v32, 0x1C08DA763EFBC9D8) - 1) ^ (__CFADD__(v34, 0xAD285BF9B38459D8) - 1);
  LODWORD(v32) = (((v7 ^ 0x5D9FCA42) - 1423490812) ^ ((v7 ^ 0xC0E5448F) + 912117711) ^ ((v7 ^ 0x4AA8EAE1) - 1139777119)) * a2 + 2023944237;
  v38 = v35 ^ (v30 - 0x5FF106A860047613);
  v39 = v32 - ((((v32 >> 5) * a5) >> 32) >> 1) * a6;
  LODWORD(v35) = v37 ^ (v36 - 1);
  LODWORD(v34) = (((v7 ^ 0x514C6172) - 1791260376) ^ ((v7 ^ 0xA199D67D) + 1710112297) ^ ((v7 ^ 0x2707D322) - 479184008)) * a2 + 1686421946;
  v40 = v34 - ((((v34 >> 5) * a5) >> 32) >> 1) * a6;
  v41 = ((v38 * 0x1240uLL) >> 64) + 4672 * v35;
  LODWORD(v35) = (((v7 ^ 0x6D01444F) - 807673834) ^ ((v7 ^ 0x67F336C0) - 987131237) ^ ((v7 ^ 0xDD2016A4) + 2147136255)) * a2 - 982887863;
  v36 = __CFADD__(4672 * v38, 0x6FE298AE1526DAC0);
  v42 = v35 - ((((v35 >> 5) * a5) >> 32) >> 1) * a6;
  v43 = STACK[0xEB0] + (*(STACK[0xED0] + 4 * ((2899 * (((v28 ^ 0xAB5CD720) - 1401935441) ^ ((v28 ^ 0x1FCFB895) + 417547804) ^ ((v28 ^ 0xA5CEE658) - 1562240809)) - 652935532) % 0x26C4)) ^ 0xC6A71E2);
  v44 = v36 + v41 + 1401951059;
  v45 = v36 + v41 + 1401948723;
  if ((v44 - 1401946701) >= 0x920)
  {
    v44 = v45;
  }

  v46 = (1864610357 * ((1864610357 * ((v43 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) >> 16))) >> 24;
  v48 = *(STACK[0xE60] + v46);
  v49 = *(v46 + STACK[0xE40] + 3);
  v50 = -57 * ((1864610357 * ((1864610357 * ((v43 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v43 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) >> 16))) >> 24);
  LOBYTE(v46) = *(v46 + STACK[0xE30] + 1);
  v51 = (53 * ((53 * (v43 ^ LOBYTE(STACK[0xE70]))) ^ ((1864610357 * ((v43 ^ LODWORD(STACK[0xE70])) & 0x7FFFFFFF)) >> 16))) ^ *v43 ^ v48 ^ v49;
  v52 = v51 ^ v46 ^ v50;
  v53 = v50 ^ v46;
  v54 = *(a4 + 8 * (v44 - 1401946701)) ^ 0x5EA8D0C7439DF7E5;
  if (v52)
  {
    v55 = v54;
  }

  else
  {
    v55 = 0x6F71081D176F4151;
  }

  v56 = *(a4 + 8 * v40) ^ 0x4EF3787F0BDF2C1FLL;
  if ((v52 & 0x10) == 0)
  {
    v56 = 0x7F2AA0A55F2D9AABLL;
  }

  v57 = ((((v51 ^ v53 ^ 0x3D) + 109) ^ ((v51 ^ v53 ^ 0xE) + 96) ^ ((v51 ^ v53 ^ 0x33) + 99)) - 82) < 0;
  v58 = *(a4 + 8 * v39);
  v59 = *(a4 + 8 * v42);
  v47 = (((v7 ^ 0xDBBEBA21) + 652589462) ^ ((v7 ^ 0x73E013B6) - 1900343293) ^ ((v7 ^ 0x7F8CCDB9) - 2099786226)) * a2 - 662614744;
  v60 = *(a4 + 8 * (v47 - ((((v47 >> 5) * a5) >> 32) >> 1) * a6)) ^ 0xBB7458B8BB67582CLL;
  v61 = *(a4 + 8 * v18) ^ 0x7916AD75C34858B0;
  if (!v57)
  {
    v60 = 0x8AAD8062EF95EE98;
  }

  if ((v52 & 0x40) == 0)
  {
    v61 = 0x48CF75AF97BAEE04;
  }

  v62 = v58 ^ 0xC20E7AC97E604695;
  if ((v52 & 0x20) == 0)
  {
    v62 = 0xF3D7A2132A92F021;
  }

  v63 = v59 ^ 0xEE0BA7ECE28C6EBCLL;
  v33 = (((v7 ^ 0x70C0A97D) + 1760822142) ^ ((v7 ^ 0x8D027AEC) - 1791569683) ^ ((v7 ^ 0x2A10B7B9) + 841227706)) * a2 + 867479946;
  v64 = *(a4 + 8 * (v33 - ((((v33 >> 5) * a5) >> 32) >> 1) * a6)) ^ 0x76F4B3014B5CBDA6;
  if ((v52 & 2) == 0)
  {
    v64 = 0x472D6BDB1FAE0B12;
  }

  if ((v52 & 4) == 0)
  {
    v63 = 0xDFD27F36B67ED808;
  }

  v65 = v61 ^ STACK[0xE10] ^ v55 ^ v63 ^ v56 ^ v62 ^ v64;
  v66 = *(a4 + 8 * v31) ^ 0x88C83351E7DD4EE9;
  if ((v52 & 8) == 0)
  {
    v66 = 0xB911EB8BB32FF85DLL;
  }

  STACK[0xE10] = v65 ^ v66 ^ v60;
  return (*(STACK[0xF18] + 8 * (((((v27 ^ 0x59785644) - 994994858) ^ ((v27 ^ 0xB9C3E07F) + 604644207) ^ ((v27 ^ 0xD877C65B) + 1170081099)) + 1526353038 > 0x2F) ^ LODWORD(STACK[0xE80]))))();
}

uint64_t sub_100401E90()
{
  v2 = *(v0 - 0x7E666516A39B34A6);
  v3 = STACK[0x6DB0] ^ 0xE74734B2971F82B6;
  v4 = 155453101 * ((((2 * &STACK[0x10ED8]) | 0x3534CD0EBDCD946) - &STACK[0x10ED8] - 0x1A9A66875EE6CA3) ^ 0xBDDEF89D93C8776CLL);
  LOBYTE(STACK[0x10EE8]) = v4 + 56;
  STACK[0x10EE0] = v2;
  LODWORD(STACK[0x10EF8]) = v1 - v4 - 3193;
  STACK[0x10EF0] = &STACK[0x1368];
  STACK[0x10F00] = (((v1 - 1476) | 0x200u) - 0x3417D6BAA9BB7C47) ^ &STACK[0xF28];
  STACK[0x10F08] = v3 - v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD1B7)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((20133 * (LODWORD(STACK[0x10ED8]) == v1 - 371872699)) ^ v1)))(v6);
}

uint64_t sub_100402064()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 44328)))();
  *(v1 + 16) = 0;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_1004021A0()
{
  v1 = STACK[0xF18];
  STACK[0x3770] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (((v0 ^ 0x86A) + 9783) ^ v0)))();
}

uint64_t sub_10040229C()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 35336)))(STACK[0x1268]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100402328()
{
  STACK[0x2688] = STACK[0x7BB0];
  STACK[0x1488] = &STACK[0x73D8];
  STACK[0x5D28] = &STACK[0xF44];
  LODWORD(STACK[0x4704]) = 1926036913;
  return (*(STACK[0xF18] + 8 * ((4415 * (v0 > 0xB28C7845)) ^ (v0 + 370145130))))();
}

uint64_t sub_1004023A0()
{
  STACK[0x7B80] = 0;
  v1 = STACK[0xF18];
  STACK[0x90E8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + v0 - 1634 + 16224)))();
}

uint64_t sub_100402408@<X0>(int a1@<W8>)
{
  v4 = a1 != v1 && LODWORD(STACK[0x68E0]) == 1;
  LOBYTE(STACK[0x7907]) = v4;
  return (*(STACK[0xF18] + 8 * ((v4 * ((832 * (v2 ^ 0x5DC0) + 2729) ^ (4423 * (v2 ^ 0x5DD6)))) ^ v2)))();
}

uint64_t sub_10040246C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v14 = STACK[0xF18];
  STACK[0x8FA0] = *(STACK[0xF18] + 8 * v10);
  STACK[0x3358] = v5;
  STACK[0x8970] = v12;
  STACK[0x4D00] = v8;
  STACK[0x7928] = v13;
  STACK[0x61F8] = a4;
  STACK[0x5270] = v6;
  LODWORD(STACK[0x8A34]) = v7;
  STACK[0x53F8] = v9;
  v15 = STACK[0x7690];
  STACK[0x2430] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x7690] = ((v4 - 739969773) & 0x2C1B3EED) + v15 - 15900;
  STACK[0x7A78] = v11;
  STACK[0x98B8] = *(v14 + 8 * v4);
  return (*(v14 + 8 * (v4 + 10033)))(a1, a2, a3, 0x1D54AEB378980553);
}

uint64_t sub_10040251C()
{
  v1 = STACK[0xF18];
  STACK[0x2AE0] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x6954 ^ (41638 * ((v0 ^ 0x375B5969 ^ ((v0 + 14163) | 0x8800)) > 0x880D3E21)))))();
}

uint64_t sub_100402584()
{
  *STACK[0x5B50] = 1;
  v1 = STACK[0x2400];
  STACK[0x3348] = STACK[0x2400];
  return (*(STACK[0xF18] + 8 * (((v1 == 0) * (((v0 + 7353) ^ 0x2CCF) - 35634)) ^ (v0 + 7353))))();
}

uint64_t sub_1004028E8@<X0>(int a1@<W0>, char a2@<W1>, void *a3@<X8>)
{
  v15 = v7 - 1;
  v16 = (v11 + (v5 + v15));
  v17 = (v12 + (v4 + v15));
  v18 = *v16;
  v19 = *(*a3 + (*v3 & 0x72D7ACF8));
  v20 = ((((v16 ^ v19) & v10) * a1) ^ ((((v16 ^ v19) & v10) * a1) >> 16)) * a1;
  v21 = ((((v17 ^ v19) & 0x7FFFFFFF) * a1) ^ ((((v17 ^ v19) & 0x7FFFFFFF) * a1) >> 16)) * a1;
  *v17 = *(v9 + (v20 >> 24)) ^ v18 ^ *(v14 + (v20 >> 24)) ^ *((v20 >> 24) + v13 + 5) ^ *(v9 + (v21 >> 24)) ^ *(v14 + (v21 >> 24)) ^ *((v21 >> 24) + v13 + 5) ^ v20 ^ v21 ^ (BYTE3(v20) * a2) ^ (BYTE3(v21) * a2);
  return (*(STACK[0xF18] + 8 * (((v15 == 0) * v8) ^ v6)))();
}

uint64_t sub_1004029C8()
{
  v3 = v0 ^ 0x2392;
  v4 = (*(v2 + 8 * ((v0 ^ 0x2392u) + 11374)))();
  *v1 = 0;
  return (*(v2 + 8 * v3))(v4, 4864, 47535, 41, 42121, 1522864703, 4294958380, 2329);
}

uint64_t sub_100402C1C()
{
  *STACK[0x7118] = STACK[0x73B8];
  **(v1 + 201) = STACK[0x4724];
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100402C78@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W8>)
{
  v9 = *(v5 + 96);
  v10 = *(v5 + 80);
  v11 = STACK[0xF18];
  STACK[0x25C8] = *(STACK[0xF18] + 8 * v4);
  STACK[0x2B18] = v10;
  STACK[0x4960] = v9;
  STACK[0x4BD0] = v3;
  STACK[0x7950] = a1;
  STACK[0x8158] = v8;
  STACK[0x65A8] = a2;
  STACK[0x5EF0] = v7;
  STACK[0x3848] = v6;
  STACK[0x2D88] = 0;
  return (*(v11 + 8 * ((473 * ((a3 ^ (v10 == 0x217E172EFA1E81CLL)) & 1)) ^ a3)))();
}

uint64_t sub_100402DB8()
{
  v4 = ((v2 - 38743) ^ 0x5E15484C) + v0;
  v5 = *(v1 + 128) + 1251755584;
  v6 = v4 < (v2 ^ 0x8628u) - 2050905279;
  v7 = v4 > v5;
  v8 = v6 ^ (v5 < 0x85C1C76A);
  v9 = v7;
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
    v10 = 0;
  }

  *(v3 + 1212) = v0 + 4;
  *(v3 + 1216) = v10;
  return (*(STACK[0xF18] + 8 * ((15 * !v6) ^ v2)))();
}

uint64_t sub_100402EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v22 = a7 + (v10 & 0xF) * a6 - (((a7 + (v10 & 0xFu) * a6) * v15) >> 32) * v14;
  v23 = STACK[0xA30];
  LOBYTE(STACK[0xA30]) = *(v19 + v22);
  *(v19 + v22) = v23;
  v24 = STACK[0x7FB];
  v25 = v13 + v11 % 0xF * a6 - (((v13 + v11 % 0xF * a6) * v15) >> 32) * v14;
  LOBYTE(STACK[0x7FB]) = *(v19 + v25);
  *(v19 + v25) = v24;
  v26 = v10 ^ v11;
  v27 = STACK[0x992];
  v28 = a8 + v9 % 0xE * a6 - (((a8 + v9 % 0xE * a6) * v15) >> 32) * v14;
  LOBYTE(STACK[0x992]) = *(v19 + v28);
  *(v19 + v28) = v27;
  v29 = v17 + (v8 - v8 / 0xD * v16) * a6;
  v30 = v29 - ((v29 * v15) >> 32) * v14;
  v31 = STACK[0xB29];
  v32 = v10 ^ 0x9754D47F;
  LOBYTE(STACK[0xB29]) = *(v19 + v30);
  *(v19 + v30) = v31;
  v33 = ((v10 ^ 0x9754D47F) - 1092033019) % 0xC * a6 + 118844 - (((((v10 ^ 0x9754D47F) - 1092033019) % 0xC * a6 + 118844) * v15) >> 32) * v14;
  v34 = v26 - 540276360;
  v35 = STACK[0x8F4];
  LOBYTE(STACK[0x8F4]) = *(v19 + v33);
  *(v19 + v33) = v35;
  LOBYTE(v33) = STACK[0xA8B];
  v36 = v20 + (v26 - 540276360) % 0xBu * a6 - (((v20 + (v26 - 540276360) % 0xBu * a6) * v15) >> 32) * v14;
  LOBYTE(STACK[0xA8B]) = *(v19 + v36);
  v37 = (v9 ^ 0xCE7BDCB3) - v26;
  *(v19 + v36) = v33;
  v38 = v37 % 0xA * a6 + 119658 - (((v37 % 0xA * a6 + 119658) * v15) >> 32) * v14;
  LOBYTE(v33) = STACK[0x856];
  v39 = v8 ^ 0xCE7BDCB3;
  LOBYTE(STACK[0x856]) = *(v19 + v38);
  v40 = v8 ^ 0xCE7BDCB3;
  *(v19 + v38) = v33;
  v41 = v8 ^ 0xCE7BDCB3 ^ v37 ^ (v32 + 1991201771);
  v42 = v40 % 9 * a6 + 120065 - (((v40 % 9 * a6 + 120065) * v15) >> 32) * v14;
  LOBYTE(v33) = STACK[0x9ED];
  LOBYTE(STACK[0x9ED]) = *(v19 + v42);
  *(v19 + v42) = v33;
  v43 = (v41 & 7) * a6 + 120472 - ((((v41 & 7) * a6 + 120472) * v15) >> 32) * v14;
  LOBYTE(v36) = STACK[0xB84];
  LOBYTE(STACK[0xB84]) = *(v19 + v43);
  v44 = v37 + 1206620329;
  v45 = (v39 ^ v37) + v37 + 1206620329;
  *(v19 + v43) = v36;
  v46 = v39 ^ v34;
  v47 = v46 % 7 * a6 + 120879 - (((v46 % 7 * a6 + 120879) * v15) >> 32) * v14;
  LOBYTE(v39) = STACK[0x94F];
  v44 ^= 0xBD11FAE9;
  LOBYTE(STACK[0x94F]) = *(v19 + v47);
  *(v19 + v47) = v39;
  LOBYTE(v47) = STACK[0xAE6];
  v48 = v44 % 6 * a6 + 121286 - (((v44 % 6 * a6 + 121286) * v15) >> 32) * v14;
  LOBYTE(STACK[0xAE6]) = *(v19 + v48);
  *(v19 + v48) = v47;
  v49 = a5 + v45 % 5 * a6 - (((a5 + v45 % 5 * a6) * v15) >> 32) * v14;
  LOBYTE(v39) = STACK[0x8B1];
  LOBYTE(STACK[0x8B1]) = *(v19 + v49);
  v50 = v41 ^ v44;
  LOBYTE(v45) = (v45 - v50) ^ v44;
  v51 = v50 + v46;
  *(v19 + v49) = v39;
  v52 = v18 + ((v51 + v50) & 3) * a6;
  LOBYTE(v49) = STACK[0xA48];
  v53 = v52 - ((v52 * v15) >> 32) * v14;
  LOBYTE(STACK[0xA48]) = *(v19 + v53);
  *(v19 + v53) = v49;
  v54 = v21 + (v51 - 647231844) % 3 * a6;
  LOBYTE(v51) = STACK[0x813];
  v55 = v54 - ((v54 * v15) >> 32) * v14;
  LOBYTE(STACK[0x813]) = *(v19 + v55);
  *(v19 + v55) = v51;
  v56 = 849;
  if ((v45 & 1) == 0)
  {
    v56 = 442;
  }

  v57 = STACK[0x9AA];
  LOBYTE(STACK[0x9AA]) = *(v19 + v56);
  *(v19 + v56) = v57;
  return (*(STACK[0x6A0] + 8 * v12))();
}

uint64_t sub_10040331C@<X0>(int a1@<W4>, int a2@<W5>, int a3@<W8>)
{
  v7 = v3 < 0xF6A438CE;
  if (v7 == a3 + 1 > (v5 + a2))
  {
    v7 = a3 + a1 + v5 + 1545 < v3;
  }

  return (*(v6 + 8 * ((42 * (v4 & v7)) ^ v5)))();
}

uint64_t sub_10040337C()
{
  STACK[0x10EE0] = &STACK[0x4820];
  LODWORD(STACK[0x10ED8]) = (v0 + 2120644913) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0x46295367) + (~(&STACK[0x10000] + 3800) | 0xB9D6AC98)) ^ 0xA00F48A9));
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x6991A749)))(&STACK[0x10ED8]);
  v2 = (*(v1 + 8 * (v0 - 1771085559)))(STACK[0x698] - 925571059, STACK[0x768] - 1383350530, 16, *(&off_1010A0B50 + (v0 ^ 0x69916C6C)) - 959407855, &STACK[0x4820], 2);
  return (*(v1 + 8 * ((15569 * (v0 != 926781080)) ^ (v0 - 1771118634))))(v2);
}

uint64_t sub_1004034B8()
{
  v2 = STACK[0x3618];
  v3 = *(STACK[0x3618] + 8);
  *(v1 + 8) = v3;
  v5 = *(STACK[0x7B28] + 33);
  v4 = (STACK[0x7B28] + 33);
  STACK[0x2770] = v4;
  *v4 = (v5 & 0x2E | ((((v0 + 87) & 0xDD) + 116) ^ v3) & ~v5) ^ 0xD1;
  return (*(STACK[0xF18] + 8 * ((95 * (*(v2 + 120) == 0)) ^ v0)))();
}

uint64_t sub_100403568()
{
  v1 = STACK[0xF18];
  STACK[0x90E8] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 + 16231 + ((v0 - 1217918459) & 0x4897EF9F))))();
}

uint64_t sub_100403638@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x5D54]) = a1;
  LOBYTE(STACK[0x2FC7]) = v1;
  STACK[0x7758] = v5;
  STACK[0x2F30] = v2;
  LODWORD(STACK[0x4C94]) = v4;
  LODWORD(STACK[0x2B14]) = v6;
  v7 = (((LODWORD(STACK[0x5508]) ^ 0x53741B5) - 87507381) ^ ((LODWORD(STACK[0x5508]) ^ 0xA48E8257) + 1534164393) ^ (((v3 + 967915697) & 0xC64E3675) + (LODWORD(STACK[0x5508]) ^ 0x486C04F3) - 1215039303)) + 1287528691;
  v8 = v7 < 0x62E859E2;
  v9 = v4 + 1076693282 < v7;
  if ((v4 + 1076693282) < 0x62E859E2 != v8)
  {
    v9 = v8;
  }

  v10 = !v9;
  if (v6 != -371865839)
  {
    v10 = 1;
  }

  return (*(STACK[0xF18] + 8 * ((113 * v10) ^ v3)))();
}

uint64_t sub_100403744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (STACK[0xF10] + 1160588992) & 0xBAD2FE8F;
  v4 = STACK[0xF10] - 34310;
  LODWORD(STACK[0x9AFC]) = (v3 - 47245) & LODWORD(STACK[0x98D4]) ^ 0xF5FC5EBD;
  return (*(STACK[0xF18] + 8 * (v4 ^ 0x1D03)))(a1, a2, a3, v3, ((0x2CB % (LODWORD(STACK[0x9B04]) ^ 0xFBF75236)) ^ 0x6E8FF7FD) - 777086386 + ((2 * (0x2CB % (LODWORD(STACK[0x9B04]) ^ 0xFBF75236))) & 0x7FA));
}

uint64_t sub_10040393C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v9 = *(v4 + 16);
  STACK[0x3CB8] = v4 + 16;
  v10 = (v5 | ((v5 < (((v6 - 10918) | 0x120) ^ 0xEA4FE61u)) << 32)) + 0x27E068B704B72382;
  STACK[0x7E18] = v10;
  v11 = v4 + 72 * v10 - 0x371D737D71CEF030;
  *(v11 + 24) = v9;
  v12 = v11 + 24;
  STACK[0x8D80] = v12;
  *(v12 + 8) = v3;
  if (a3 == -371866076 || a3 == -371865832)
  {
    v14 = -371865829;
  }

  else
  {
    v14 = -371865840;
  }

  STACK[0x3DB0] = v8;
  *(v12 + 16) = 1894362932;
  *(v12 + 20) = v14;
  STACK[0x95A0] = v8;
  *(v7 + 6622) = 6957;
  LODWORD(STACK[0x16B4]) = 542653199;
  return (*(STACK[0xF18] + 8 * ((24917 * ((v6 + 844239371) < 0x13576B4B)) ^ (v6 - 27257))))(a1, a2, STACK[0xE58], STACK[0xE50]);
}

uint64_t sub_100403B50@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v7 = 4 * v3 - 2871730716;
  v8 = *(v5 + v7);
  v9 = *(v4 + 4 * ((v3 + 24) & 0x1F)) ^ *(a2 + v7);
  v10 = ((*(v4 + v7) - ((((v2 - 1535807055) & 0x5B8AB9FF) + 738340987) & (2 * *(v4 + v7))) - 1778295494) ^ *(a1 + 4 * (v8 & 0x1F))) - 686988095 * (((v9 ^ 0x3F826E3A) - 673521317) ^ ((v9 ^ 0xBFEF8ADD) + 1471612350) ^ ((v9 ^ 0xBBFBFAD3) + 1403221428)) - 600950037;
  *(v4 + v7) = v10;
  *(v5 + v7) = v8 + 478674045 * v10;
  return (*(v6 + 8 * ((v3 != 717932703) | (2 * (v3 != 717932703)) | v2)))();
}

uint64_t sub_100403C60@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v10 = (v8 + v4 + a1);
  v11 = vaddq_s8(vsubq_s8(*(v9 + v4 + 16), vandq_s8(vaddq_s8(*(v9 + v4 + 16), *(v9 + v4 + 16)), a2)), a3);
  *v10 = vaddq_s8(vsubq_s8(*(v9 + v4), vandq_s8(vaddq_s8(*(v9 + v4), *(v9 + v4)), a2)), a3);
  v10[1] = v11;
  return (*(STACK[0xF18] + 8 * (((v6 + v4 == v3) * v7) ^ v5)))();
}

uint64_t sub_100403D5C()
{
  STACK[0xCD0] = STACK[0xBA0] ^ STACK[0x4F0];
  STACK[0xCE0] = STACK[0xD40] ^ STACK[0xE90];
  STACK[0xD30] = STACK[0xE80] ^ STACK[0x4E0];
  STACK[0xD40] = STACK[0xCC0] ^ STACK[0x4D0];
  STACK[0xE80] = STACK[0xC80] ^ STACK[0x4D8];
  STACK[0xCC0] = STACK[0xC70] ^ STACK[0x4E8];
  STACK[0xC80] = STACK[0xA40] ^ STACK[0xA60];
  STACK[0xC70] = STACK[0xDD0] ^ STACK[0xA98];
  STACK[0xBA0] = STACK[0xDB0] ^ STACK[0x9E8];
  STACK[0xDD0] = STACK[0x508] ^ STACK[0x9E0];
  STACK[0xB70] = STACK[0xE40] & 0x73;
  STACK[0xE40] = STACK[0xE30] & 0xDA;
  STACK[0xB60] = (LODWORD(STACK[0xEB0]) - 35220) & STACK[0xD50];
  v0 = STACK[0xEC0];
  v1 = *(STACK[0xEC0] + 3409);
  v2 = v1 & 0x10 ^ 0xF5;
  v3 = v1 ^ (2 * ((v1 ^ 0x36) & (2 * ((v1 ^ 0x36) & (2 * ((v1 ^ 0x36) & (2 * ((v1 ^ 0x36) & (2 * (((2 * (v2 ^ v1 & 0x26)) ^ 0xCC) & (v1 ^ 0x36) ^ v2)) ^ v2)) ^ v2)) ^ v2)) ^ v2));
  v4 = *(STACK[0xEC0] + 3344);
  v5 = v4 & 0x4E ^ 0xFFFFFFCC;
  v6 = *(STACK[0xEC0] + 3193);
  v7 = v6 & 0x22222222 ^ 0x5E;
  HIDWORD(v9) = v6;
  LODWORD(v9) = (((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * ((v6 ^ 0x34) & (2 * v7) ^ v7)) ^ v7)) ^ v7)) ^ v7)) ^ v7) << 25) ^ (v6 << 24);
  LODWORD(v8) = v9 >> 25;
  HIDWORD(v9) = v8 ^ 0x11111111;
  LODWORD(v9) = v8 << 24;
  v10 = v4 ^ (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * v5) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5));
  STACK[0xDB0] = v10;
  LOBYTE(v4) = v0[3403];
  LOBYTE(v5) = v4 & 0x60 ^ 0xFD;
  LOBYTE(v8) = v4 ^ (2 * ((v4 ^ 0x36) & (2 * ((v4 ^ 0x36) & (2 * ((v4 ^ 0x36) & (2 * ((v4 ^ 0x36) & (2 * ((v4 ^ 0x36) & (2 * ((v4 ^ 0x36) & 0x16 ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5));
  LOBYTE(v4) = v0[3246];
  LOBYTE(v5) = v4 & 0xA2 ^ 0x9E;
  v11 = v4 ^ (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * ((v4 ^ 0x34) & (2 * v5) ^ v5)) ^ v5)) ^ v5)) ^ v5)) ^ v5));
  LOBYTE(v5) = v0[3499];
  LOBYTE(v4) = v5 & 0xDA ^ 0x12;
  LOBYTE(v5) = v5 ^ (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * ((v5 ^ 0x34) & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4));
  LOBYTE(v7) = v0[3363];
  LOBYTE(v4) = v7 & 0x2E ^ 0x5C;
  LOBYTE(v7) = v7 ^ (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * ((v7 ^ 0x34) & (2 * v4) ^ v4)) ^ v4)) ^ v4)) ^ v4)) ^ v4));
  LOBYTE(v4) = v0[3329];
  v12 = v4 & 0x98 ^ 0x31;
  v13 = v11 << 8;
  v14 = (v4 ^ (2 * ((v4 ^ 0x36) & (2 * ((v4 ^ 0x36) & (2 * ((v4 ^ 0x36) & (2 * ((v4 ^ 0x36) & (2 * (((2 * (v12 ^ v4 & 0x2E)) ^ 0xCC) & (v4 ^ 0x36) ^ v12)) ^ v12)) ^ v12)) ^ v12)) ^ v12)));
  STACK[0xE30] = v14;
  v15 = (v14 ^ 0x3160038192F6) & (v13 ^ 0x3160038110FFLL) | v13 & 0x6D00;
  LOBYTE(v14) = v0[3290];
  v16 = v14 & 0x78 ^ 0x61;
  v17 = (v15 << 16) | (((v14 ^ (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * (((2 * (v16 ^ v14 & 0x4E)) ^ 0xC) & (v14 ^ 0x36) ^ v16)) ^ v16)) ^ v16)) ^ v16)) ^ v16))) ^ 0x78u) << 8);
  LOBYTE(v14) = v0[3322];
  v18 = v14 & 0xE4 ^ 0x3B;
  v19 = (((v17 ^ 0x2A0181D0FFLL) & (v7 ^ 0x25BB91E3D002) | v17 & 0x2006E1C2F00) << 16) | (((v14 ^ (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & 0x12 ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18)) ^ v18))) ^ 0xE4u) << 8);
  STACK[0xBC0] = v5;
  v20 = (v19 ^ 0x800224055FFLL) & (v5 ^ 0x384C626C554CLL) | v19 & 0xC7B39D93AA00;
  v21 = v3 << 8;
  STACK[0xD50] = v21 | (v20 << 16);
  v8 = v8;
  v22 = ((((v21 & 0xFFFFFFFFFF00FFFFLL | (v10 << 16)) ^ 0xC3E015A0EBFFLL) & (v8 ^ 0xC3E015AAFBA8) | v21 & 0x400 | (v10 << 16) & 0x550400) << 16) | ((v9 >> 31) << 8);
  LOBYTE(v21) = v0[3420];
  LOBYTE(v14) = v21 & 0xD4 ^ 0x93;
  v23 = (v22 ^ 0xEA1004137AFFLL) & ((v21 ^ (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * (((2 * (v14 ^ v21 & 0x62)) ^ 0x44) & (v21 ^ 0x36) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14))) ^ 0xFE3A461B7AA7) | v22 & 0x1C5B9E48500;
  LOBYTE(v21) = v0[3414];
  LOBYTE(v14) = v21 & 0xA0 ^ 0x9D;
  v24 = v21 ^ (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & 0x16 ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14));
  LOBYTE(v14) = v0[3435];
  LOBYTE(v21) = v14 & 0x60 ^ 0x7D;
  v25 = (v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & 0x16 ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21)) ^ v21;
  LOBYTE(v21) = v0[3422];
  v26 = v21 & 0x10 ^ 0xF5;
  LOBYTE(v21) = v21 ^ (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * (((2 * (v26 ^ v21 & 0x26)) ^ 0xCC) & (v21 ^ 0x36) ^ v26)) ^ v26)) ^ v26)) ^ v26)) ^ v26));
  v27 = (((v14 ^ (2 * v25)) ^ 0x60u) << 8) | (v23 << 16);
  LOBYTE(v14) = v0[3471];
  v28 = v14 & 0xCA ^ 0x8A;
  v29 = (v27 ^ 0x10020018C7FFFLL) & ((v14 ^ (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * ((v14 ^ 0x34) & (2 * v28) | v28)) ^ v28)) ^ v28)) ^ v28)) ^ v28))) ^ 0xE50FFB33FC7F71) | v27 & 0x1AF004CC038000;
  LOBYTE(v14) = v0[3152];
  v30 = v14 & 0xBC ^ 7;
  v31 = (((v29 << 8) ^ 0x484000004FFLL) & ((v14 ^ (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * ((v14 ^ 0x36) & (2 * (((2 * (v30 ^ v14 & 0xA)) ^ 4) & (v14 ^ 0x36) ^ v30)) ^ v30)) ^ v30)) ^ v30)) ^ v30))) ^ 0x3DD595E5CB2C24F1) | (v29 << 8) & 0xC22A6A1A34D3DB00) ^ 0xFFFFFFFFFF7FBF4DLL;
  LOBYTE(v29) = v0[3210];
  v32 = v29 & 0x76 ^ 0x60;
  v33 = v29 ^ (2 * ((v29 ^ 0x34) & (2 * ((v29 ^ 0x34) & (2 * ((v29 ^ 0x34) & (2 * ((v29 ^ 0x34) & (2 * ((v29 ^ 0x34) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32));
  LOBYTE(v29) = v0[3437];
  v34 = v29 & 0x54 ^ 0xD3;
  LOBYTE(v29) = v29 ^ (2 * ((v29 ^ 0x36) & (2 * ((v29 ^ 0x36) & (2 * ((v29 ^ 0x36) & (2 * ((v29 ^ 0x36) & (2 * (((2 * (v34 ^ v29 & 0x62)) ^ 0x44) & (v29 ^ 0x36) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34));
  v35 = v0[3171];
  v36 = v35 & 0x66 ^ 0x78;
  v37 = ((v35 ^ (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * ((v35 ^ 0x34) & (2 * v36) ^ v36)) ^ v36)) ^ v36)) ^ v36)) ^ v36))) ^ 0xE185A5DEDB6BLL) & ~((v29 ^ 0x54u) << 8) | ((v29 ^ 0x54) << 8) & 0x2400;
  v38 = v0[3565];
  v39 = v38 & 0xFC ^ 0xFFFFFFA7;
  v40 = v38 ^ (2 * ((v38 ^ 0x36) & (2 * ((v38 ^ 0x36) & (2 * ((v38 ^ 0x36) & (2 * ((v38 ^ 0x36) & (2 * (((2 * (v39 ^ v38 & 0x4A)) ^ 4) & (v38 ^ 0x36) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39));
  STACK[0xB80] = v40;
  v41 = v0[3157];
  v42 = v41 & 0x7E ^ 0xFFFFFFE4;
  LODWORD(STACK[0xA60]) = (v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * ((v41 ^ 0x34) & (2 * v42) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42;
  STACK[0xC30] = v24;
  v43 = (((v37 << 16) | (v40 << 8)) ^ 0x1221044201FFLL) & (v24 ^ 0x937D1D4635FFLL) | ((v37 << 16) | (v40 << 8)) & 0x2482E2B9CA00;
  v44 = v0[3248];
  v45 = ~v44 & 0x4A;
  v46 = 2 * (((2 * v45) | v45) ^ (2 * v45) & v44);
  v47 = 2 * ((v46 & 0x34 | v45) ^ v46 & v44);
  v48 = 2 * ((v47 & 0x34 | v45) ^ v47 & v44);
  v49 = 2 * ((v48 & 0x34 | v45) ^ v48 & v44);
  v50 = v44 ^ (2 * ((v49 & 0x34 | v45) ^ v49 & v44));
  STACK[0xC40] = v50;
  LOBYTE(v44) = v0[3407];
  LOBYTE(v45) = v44 & 0x2A ^ 0x5A;
  LOBYTE(v40) = v44 ^ (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * ((v44 ^ 0x34) & (2 * v45) ^ v45)) ^ v45)) ^ v45)) ^ v45)) ^ v45));
  v51 = v0[3582];
  v52 = v51 & 0xFFFFFFF6 ^ 0xFFFFFFA0;
  v53 = v51 ^ (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * ((v51 ^ 0x34) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  STACK[0xE90] = v53;
  v54 = v53;
  v55 = (v53 ^ 0x33A80F7C53A4) & (((v43 << 16) | (v50 << 8)) ^ 0x20A0022011FFLL) | ((v43 << 16) | (v50 << 8)) & 0xCC57F083AC00;
  LOBYTE(v53) = v0[3286];
  LOBYTE(v52) = v53 & 0x46 ^ 0xC8;
  v56 = (((v53 ^ (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * ((v53 ^ 0x34) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0x46u) << 8) | (v55 << 16);
  LOBYTE(v53) = v0[3142];
  LOBYTE(v52) = v53 & 0x4C ^ 0x4F;
  v57 = ((v56 ^ 0x80008416FFLL) & ((v53 ^ (2 * ((v53 ^ 0x36) & (2 * ((v53 ^ 0x36) & (2 * ((v53 ^ 0x36) & (2 * ((v53 ^ 0x36) & (2 * ((v53 ^ 0x36) & (2 * ((v53 ^ 0x36) & 0x3A ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52))) ^ 0x1D2E2EBF4BC61693) | v56 & 0xE2D1D140B439E900) ^ 0xFFEFFFFF5BD616DFLL;
  LODWORD(v56) = v0[3348];
  v58 = v56 & 0xFFFFFFB2 ^ 6;
  v59 = v56 ^ (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * v58) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58));
  STACK[0xC20] = v59;
  LOBYTE(v56) = v0[3201];
  LOBYTE(v58) = v56 & 0x92 ^ 0x36;
  v60 = v59;
  v61 = v59 << 8;
  v62 = ((v56 ^ (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * ((v56 ^ 0x34) & (2 * v58) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0xAD9BABE3CD4BLL) & (v61 ^ 0xAD9BABE34DFFLL) | v61 & 0x3200;
  LOBYTE(v58) = v0[3367];
  LOBYTE(v39) = v58 & 0xFA ^ 0x22;
  v63 = (v62 << 16) | (((v58 ^ (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0xFAu) << 8);
  LOBYTE(v58) = v0[3394];
  LOBYTE(v39) = v58 & 0x6E ^ 0xFC;
  v64 = (v63 ^ 0x1800205CFFLL) & ((v58 ^ (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * ((v58 ^ 0x34) & (2 * v39) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0xA0BA96795CA1) | v63 & 0xB416986A300;
  LOBYTE(v58) = v0[3429];
  LOBYTE(v39) = v58 & 0xBC ^ 7;
  v65 = (v64 << 16) | (((v58 ^ (2 * ((v58 ^ 0x36) & (2 * ((v58 ^ 0x36) & (2 * ((v58 ^ 0x36) & (2 * ((v58 ^ 0x36) & (2 * (((2 * (v39 ^ v58 & 0xA)) ^ 4) & (v58 ^ 0x36) ^ v39)) ^ v39)) ^ v39)) ^ v39)) ^ v39))) ^ 0xBCu) << 8);
  v66 = (v65 ^ 0x80307DFF) & (v33 ^ 0xCAA180B77D8CLL) | v65 & 0x355E7F488200;
  STACK[0xC80] ^= STACK[0xB70] ^ 0x46C3E4FD119FA1F6 ^ (v31 - ((2 * v31) & 0xC0F4C66B0D69698ELL) - 0x1F859CCA794B4B39);
  LOBYTE(v31) = v0[3184];
  LOBYTE(v58) = v31 & 0xA ^ 0xEA;
  v67 = v0[3581];
  v68 = v67 & 0x98 ^ 0xFFFFFFB1;
  v69 = v67 ^ (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * (((2 * (v68 ^ v67 & 0x2E)) ^ 0xCCCCCCCC) & (v67 ^ 0x36) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68));
  STACK[0xB30] = v69;
  v70 = (((v31 ^ (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * v58) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0xAu) << 8) | (v66 << 16);
  LOBYTE(v31) = v0[3227];
  LOBYTE(v67) = v31 & 0x20 | 0x5D;
  LOBYTE(v58) = v31 ^ (2 * ((v31 ^ 0x36) & (2 * ((v31 ^ 0x36) & (2 * ((v31 ^ 0x36) & (2 * ((v31 ^ 0x36) & (2 * ((v31 ^ 0x36) & (2 * (((((v31 & 0x20) != 0) << 6) | 0x16) & (v31 ^ 0x36) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67));
  LOBYTE(v31) = v0[3333];
  LOBYTE(v67) = v31 & 0x1A ^ 0x72;
  v71 = (v31 ^ (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * ((v31 ^ 0x34) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)));
  STACK[0x9F0] = v71;
  v72 = ((v70 ^ 0x40000020187FFLL) & (v71 ^ 0x793D44257FFB872CLL) | v70 & 0x86C2BBDA80047800) ^ 0xFFFDDCFF7FFB8736;
  STACK[0xC70] ^= STACK[0xE40] ^ (v57 - ((2 * v57) & 0xBE8C718CC1B68864) - 0x20B9C7399F24BBCELL);
  STACK[0xB50] = v40;
  v73 = v40 << 8;
  STACK[0xB40] = v73;
  STACK[0xE40] = v72 - ((2 * v72) & 0xD52730E0C47D2C80) + 0x6A939870623E9640;
  LOBYTE(v72) = v0[3218];
  LOBYTE(v57) = v72 & 0x6C ^ 0x7F;
  LOBYTE(v68) = v72 ^ (2 * ((v72 ^ 0x36) & (2 * ((v72 ^ 0x36) & (2 * ((v72 ^ 0x36) & (2 * ((v72 ^ 0x36) & (2 * ((v72 ^ 0x36) & (2 * ((v72 ^ 0x36) & 0x1A ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57));
  v74 = (v68 << 8) | (((v73 | 0xFFFFFFFFFFFE1FFFLL) & (v21 ^ 0x5ED70F1E2065) | v73 & 0xFFFFFFFFFFFFDFFFLL) << 16);
  LOBYTE(v21) = v0[3513];
  LOBYTE(v57) = v21 & 0x68 ^ 0x79;
  v75 = (v21 ^ (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & 0x1E ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)));
  STACK[0xA40] = v75;
  LOBYTE(v21) = v0[3524];
  LOBYTE(v57) = v21 & 0xC ^ 0x6F;
  v76 = (((v74 ^ 0x30A1910883FFLL) & (v75 ^ 0x34A39358A397) | v74 & 0xB1C6CA75C00) << 16) | (((v21 ^ (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & (2 * ((v21 ^ 0x36) & 0x3A ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xCu) << 8);
  LOBYTE(v21) = v0[3299];
  LOBYTE(v57) = v21 & 0xAA ^ 0x1A;
  v77 = v61 | ((((v21 ^ (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * ((v21 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xA16FA3A690EALL) & (v76 ^ 0x2000090FFLL) | v76 & 0x5E905C596F00) << 16);
  v78 = ((v77 ^ 0x40001000610645FFLL) & (v60 ^ 0xF364731CE1464733) | v77 & 0xC9B8CE31EB9B800) ^ 0xFB7FFFFFF146F781;
  v79 = (v58 ^ 0x2839CE55258CLL) & ((v8 << 8) ^ 0x2839CE5505FFLL) | (v8 << 8) & 0xDA00;
  LOBYTE(v8) = v0[3356];
  LOBYTE(v58) = v8 & 0x48 ^ 0xC9;
  v80 = (v79 << 16) | (((v8 ^ (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & 0x3E ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0x48u) << 8);
  LOBYTE(v8) = v0[3518];
  LOBYTE(v58) = v8 & 0x48 ^ 0xC9;
  v81 = ((v8 ^ (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & 0x3E ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0x398051363308) & (v80 ^ 0x3180101233FFLL) | v80 & 0xC655AEC9CC00;
  LOBYTE(v8) = v0[3564];
  LOBYTE(v58) = v8 & 0x1E ^ 0x74;
  v82 = (((v81 << 16) | (v69 << 8)) ^ 0x800C83345FFLL) & ((v8 ^ (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * ((v8 ^ 0x34) & (2 * v58) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0x7D26C873C54FLL) | ((v81 << 16) | (v69 << 8)) & 0x82D9378C3A00;
  LOBYTE(v8) = v0[3446];
  LOBYTE(v58) = v8 & 0xFC ^ 0x27;
  v83 = (((v8 ^ (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * (((2 * (v58 ^ v8 & 0x4A)) ^ 4) & (v8 ^ 0x36) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58))) ^ 0xFCu) << 8) | (v82 << 16);
  LODWORD(v8) = v0[3433];
  v84 = v8 & 0x3C ^ 0x47;
  STACK[0xB70] = v8 ^ (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * (((2 * (v84 ^ v8 & 0xA)) ^ 4) & (v8 ^ 0x36) ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v84));
  STACK[0xBA0] ^= STACK[0xB60] ^ 0xFDFEFFFBDFD9F47DLL ^ ((v83 ^ 0x804004880288F4FFLL) & ((v8 ^ (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * ((v8 ^ 0x36) & (2 * (((2 * (v84 ^ v8 & 0xA)) ^ 4) & (v8 ^ 0x36) ^ v84)) ^ v84)) ^ v84)) ^ v84)) ^ v84))) ^ 0xF0F2F7CB9FC8F441) | v83 & 0xF0D083460370B00);
  LOBYTE(v83) = v0[3269];
  LOBYTE(v8) = v83 & 0xEC ^ 0x3F;
  v85 = (v83 ^ (2 * ((v83 ^ 0x36) & (2 * ((v83 ^ 0x36) & (2 * ((v83 ^ 0x36) & (2 * ((v83 ^ 0x36) & (2 * ((v83 ^ 0x36) & (2 * ((v83 ^ 0x36) & 0x1A ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8)) ^ v8))) ^ 0x8DD4483D831BLL;
  v86 = v54 << 8;
  v87 = v85 & ((v54 << 8) ^ 0x8DD4483D01FFLL) & 0xFFFFFFFFFFFF83FFLL | (((v54 >> 2) & 0x1F) << 10);
  LOBYTE(v85) = v0[3401];
  LOBYTE(v67) = v85 & 0xBC ^ 7;
  LOBYTE(v85) = v85 ^ (2 * ((v85 ^ 0x36) & (2 * ((v85 ^ 0x36) & (2 * ((v85 ^ 0x36) & (2 * ((v85 ^ 0x36) & (2 * (((2 * (v67 ^ v85 & 0xA)) ^ 4) & (v85 ^ 0x36) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ 0xDB;
  LOBYTE(v67) = v0[3450];
  LOBYTE(v54) = v67 & 0xF0 ^ 0x25;
  v88 = (v87 << 16) | (((v67 ^ (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * (((2 * (v54 ^ v67 & 0x46)) ^ 0xC) & (v67 ^ 0x36) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54))) ^ 0xF0u) << 8);
  LOBYTE(v67) = v0[3537];
  LOBYTE(v54) = v67 & 0x66 ^ 0x78;
  LOBYTE(v54) = v67 ^ (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * ((v67 ^ 0x34) & (2 * v54) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54));
  LOBYTE(v67) = v0[3543];
  LOBYTE(v40) = v67 & 0xA4 ^ 0x9B;
  v89 = (v88 ^ 0x914008006DFFLL) & ((v67 ^ (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & (2 * ((v67 ^ 0x36) & 0x12 ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40))) ^ 0xD9497AC16DEDLL) | v88 & 0x34853E9200;
  LOBYTE(v61) = v0[3297];
  LOBYTE(v67) = v61 & 0x7E ^ 0x64;
  v90 = (v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * ((v61 ^ 0x34) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67;
  v91 = (v89 << 16) | (v85 << 8);
  LOBYTE(v85) = v0[3550];
  LOBYTE(v57) = v85 & 0x74 ^ 0xE3;
  v92 = v13 | (((v91 ^ 0x128260FF) & ((v85 ^ (2 * ((v85 ^ 0x36) & (2 * ((v85 ^ 0x36) & (2 * ((v85 ^ 0x36) & (2 * ((v85 ^ 0x36) & (2 * (((2 * (v57 ^ v85 & 0x42)) ^ 4) & (v85 ^ 0x36) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x6E31F836043) | v91 & 0xF91CE07C9F00) << 16);
  LOBYTE(v91) = v0[3454];
  LOBYTE(v57) = v91 & 0x9E ^ 0x34;
  v93 = (v92 ^ 0x8002013800DFFLL) & ((v91 ^ (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xA5B8146B53842D42) | v92 & 0x5A47EB94AC7BD200;
  v94 = v0[3505];
  LOBYTE(v92) = v94 & 0x98 ^ 0xB1;
  LOBYTE(v21) = (v94 ^ 0x36) & (2 * ((v94 ^ 0x36) & (2 * ((v94 ^ 0x36) & (2 * ((v94 ^ 0x36) & (2 * (((2 * (v92 ^ v94 & 0x2E)) ^ 0xCC) & (v94 ^ 0x36) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92;
  LOBYTE(v40) = v0[3388];
  LOBYTE(v92) = v40 & 0x9A ^ 0xB2;
  LOBYTE(v53) = (v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * ((v40 ^ 0x34) & (2 * v92) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92;
  LOBYTE(v92) = v0[3588];
  LOBYTE(v91) = v92 & 0xD6 ^ 0x10;
  LOBYTE(v92) = v92 ^ (2 * ((v92 ^ 0x34) & (2 * ((v92 ^ 0x34) & (2 * ((v92 ^ 0x34) & (2 * ((v92 ^ 0x34) & (2 * ((v92 ^ 0x34) & (2 * v91) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ 0xD6;
  LODWORD(v91) = (v68 ^ 0x3C43) & ~(v92 << 8) | (v92 << 8) & 0xC3FF;
  LOBYTE(v57) = v0[3596];
  LOBYTE(v67) = (v57 & 0xB6 | 8) ^ v57 & 0x70;
  v95 = v57 ^ (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * v67) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67));
  LOBYTE(v57) = v0[3503];
  LOBYTE(v67) = v57 & 0xE0 ^ 0xBD;
  v96 = v57 ^ (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & 0x16 ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67)) ^ v67));
  v97 = v95 << 8;
  LODWORD(v57) = v0[3239];
  v98 = v57 & 0xFFFFFFDA ^ 0x12;
  v99 = v57 ^ (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * v98) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98));
  STACK[0xA98] = v99;
  LOBYTE(v57) = v0[3354];
  LOBYTE(v92) = v57 & 0xB6 | 1;
  LOBYTE(v98) = v92 ^ v57 & 0xE;
  v100 = (v57 ^ (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * v92) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98))) | ((((v97 | (v91 << 16)) ^ 0x1D000FF) & (v96 ^ 0x31FE82E4) | (v97 | (v91 << 16)) & 0xCE017D00) << 16);
  LOBYTE(v91) = v0[3392];
  LOBYTE(v57) = v91 & 0x26 | 0xD8;
  v101 = (((v91 ^ (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x26u) << 8) | ((v100 & 0xFFFFFFFFFFFF00FFLL | (v99 << 8)) << 16);
  LOBYTE(v91) = v0[3520];
  LOBYTE(v57) = v91 & 0x28 ^ 0xD9;
  LOBYTE(v60) = v91 ^ (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & 0x1E ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57));
  STACK[0xDD0] ^= 0xBFFFD7BEDEBF7801 ^ ((v101 ^ 0x820011BA040778FFLL) & (v54 ^ 0x83BB55BADC177867) | v101 & 0x7C44AA4523E88700);
  LOBYTE(v101) = v0[3426];
  LOBYTE(v91) = v101 & 0x1E ^ 0xF4;
  LOBYTE(v101) = v101 ^ (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * ((v101 ^ 0x34) & (2 * v91) ^ v91)) ^ v91)) ^ v91)) ^ v91)) ^ v91));
  LOBYTE(v91) = v0[3469];
  LOBYTE(v57) = v91 & 0x54 ^ 0xD3;
  v102 = v101;
  v103 = (v101 << 8) | (v60 << 16);
  v104 = (v103 ^ 0x693A442781FFLL) & ((v91 ^ (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * (((2 * (v57 ^ v91 & 0x62)) ^ 0x44) & (v91 ^ 0x36) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x693A456F91E6) | v103 & 0x906E00;
  LOBYTE(v91) = v0[3118];
  LOBYTE(v57) = v91 & 0xAC ^ 0x1F;
  v105 = (v104 << 16) | (((v91 ^ (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & (2 * ((v91 ^ 0x36) & 0x1A ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xACu) << 8);
  LOBYTE(v91) = v0[3148];
  LOBYTE(v57) = v91 & 0x66 ^ 0x78;
  v106 = (v105 ^ 0x9A006005A3FFLL) & ((v91 ^ (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * ((v91 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x9E25EC05A32ALL) | v105 & 0x41DA13FA5C00;
  LOBYTE(v105) = v0[3577];
  LOBYTE(v57) = v105 & 0x2A ^ 0x5A;
  LOBYTE(v105) = v105 ^ (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * ((v105 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57));
  v107 = (v106 << 16) | (((v41 ^ (2 * LOBYTE(STACK[0xA60]))) ^ 0x7Eu) << 8);
  LOBYTE(v57) = v0[3295];
  LOBYTE(v98) = v57 & 0x8E ^ 0xAC;
  v108 = (v107 ^ 0x8581344FFLL) & ((v57 ^ (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * v98) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98))) ^ 0x6F122E7A17443FLL) | v107 & 0x90EDD185E8BB00;
  LOBYTE(v57) = v0[3231];
  LOBYTE(v98) = v57 & 0xF0 ^ 0x25;
  v109 = (v57 ^ (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * (((2 * (v98 ^ v57 & 0x46)) ^ 0xC) & (v57 ^ 0x36) ^ v98)) ^ v98)) ^ v98)) ^ v98)) ^ v98)));
  STACK[0xB60] = v109;
  v110 = ((v108 << 8) ^ 0x80000004008B0AFFLL) & (v109 ^ 0xEE8C9266558FBA53) | (v108 << 8) & 0x11736D99AA704500;
  LOBYTE(v57) = v0[3380];
  LOBYTE(v109) = v57 & 0x18 ^ 0x71;
  v111 = ((v61 ^ (2 * v90)) ^ 0x7Eu) << 8;
  v112 = (((v40 ^ (2 * v53)) ^ 0x9Au) << 8) | ((((v57 ^ (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * ((v57 ^ 0x36) & (2 * (((2 * (v109 ^ v57 & 0x2E)) ^ 0xCC) & (v57 ^ 0x36) ^ v109)) ^ v109)) ^ v109)) ^ v109)) ^ v109))) ^ 0xFA1107F7DD0ALL) & ~v111 | v111 & 0x2222222222222222) << 16);
  v113 = v105;
  v114 = (((v94 ^ (2 * v21)) ^ 0x98u) << 8) | (((v112 ^ 0x822ED1FFFLL) & (v105 ^ 0x7DF77EF1F78) | v112 & 0x208810E000) << 16);
  LODWORD(v112) = v0[3441];
  LODWORD(v111) = v112 & 0xFFFFFF96 ^ 0xFFFFFFB0;
  STACK[0x9E8] = v112 ^ (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111));
  v115 = (v112 ^ (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)));
  STACK[0xA60] = v115;
  LOBYTE(v112) = v0[3208];
  LOBYTE(v111) = v112 & 0x3E ^ 0xC4;
  v116 = (((v112 ^ (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x3Eu) << 8) | (((v114 ^ 0xC0A5FEFF) & (v115 ^ 0x2AFCEF5FEC0) | v114 & 0xFD50310A0100) << 16);
  LOBYTE(v112) = v0[3562];
  v117 = (v116 ^ 0x2008000077FFLL) & ((v112 ^ (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & 0x12 ^ (v112 | 0xDB))) ^ (v112 | 0xDB))) ^ (v112 | 0xDB))) ^ (v112 | 0xDB))) ^ (v112 | 0xDB))) ^ (v112 | 0xDB)))) ^ 0x3636AF6E42407714) | v116 & 0xC9C95091BDBF8800;
  LOBYTE(v116) = v0[3412];
  LOBYTE(v112) = v116 & 0x14 ^ 0xF3;
  LOBYTE(v116) = v116 ^ (2 * ((v116 ^ 0x36) & (2 * ((v116 ^ 0x36) & (2 * ((v116 ^ 0x36) & (2 * ((v116 ^ 0x36) & (2 * (((2 * (v112 ^ v116 & 0x22)) ^ 0x44) & (v116 ^ 0x36) ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ v112));
  LOBYTE(v112) = v0[3397];
  LOBYTE(v111) = v112 & 0xE0 ^ 0x3D;
  v118 = ((((v112 ^ (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & 0x16 ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x7B05A5ABD7BLL) & ~((v116 ^ 0x14u) << 8) | ((v116 ^ 0x14) << 8) & 0x4200) << 16) | (v54 << 8);
  LOBYTE(v112) = v0[3528];
  LOBYTE(v111) = v112 & 0xD6 ^ 0x90;
  v119 = (v118 ^ 0xA5A1004498FFLL) & ((v112 ^ (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * ((v112 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0xBDA909459CC9) | v118 & 0x4252F6BA6300;
  LODWORD(v112) = v0[3307];
  LODWORD(v111) = v112 & 0x77777734 | 0x43;
  v120 = v112 ^ (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * (((2 * (v111 ^ v112 & 2)) ^ 4) & (v112 ^ 0x36) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111));
  STACK[0x9E0] = v120;
  LOBYTE(v112) = v0[3479];
  LOBYTE(v111) = v112 & 0x4C ^ 0x4F;
  v121 = (((v119 << 16) | (v120 << 8)) ^ 0x4020014001FFLL) & ((v112 ^ (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & 0x3A ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x5878BD5A2516) | ((v119 << 16) | (v120 << 8)) & 0xA78742A5DA00;
  LOBYTE(v112) = v0[3418];
  LOBYTE(v57) = v112 & 0xC0 | 0xD;
  STACK[0xAF0] ^= STACK[0xAB8] ^ 0xFFFF7FEB73B7AFDCLL ^ v93;
  v122 = (((v112 ^ (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & 0x36 ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xC0u) << 8) | (v121 << 16);
  LOBYTE(v112) = v0[3428];
  LOBYTE(v111) = v112 & 0x60 ^ 0xFD;
  v123 = v112 ^ (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & 0x16 ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111));
  STACK[0xAC8] ^= STACK[0xE20] ^ STACK[0xAA0] ^ 0xBEE12058BFE79027 ^ (v78 - ((2 * v78) & 0xDCE50C91ECC67FF2) - 0x118D79B7099CC007);
  LOBYTE(v115) = v0[3256];
  LOBYTE(v112) = v115 & 0x28 ^ 0x59;
  LOBYTE(v115) = v115 ^ (2 * ((v115 ^ 0x36) & (2 * ((v115 ^ 0x36) & (2 * ((v115 ^ 0x36) & (2 * ((v115 ^ 0x36) & (2 * ((v115 ^ 0x36) & (2 * ((v115 ^ 0x36) & 0x1E ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ v112)) ^ v112));
  LOBYTE(v112) = v0[3214];
  LOBYTE(v111) = v112 & 0x7C ^ 0xE7;
  v124 = ((v112 ^ (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * ((v112 ^ 0x36) & (2 * (((2 * (v111 ^ v112 & 0x4A)) ^ 4) & (v112 ^ 0x36) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x7Cu) << 8;
  v125 = (v115 ^ 0xE639CCD27048) & ~v124 | v124 & 0xFFFFFFFFFFFF8FFFLL;
  LOBYTE(v124) = v0[3484];
  LOBYTE(v111) = v124 & 0xF4 ^ 0x23;
  v126 = (v125 << 16) | (((v124 ^ (2 * ((v124 ^ 0x36) & (2 * ((v124 ^ 0x36) & (2 * ((v124 ^ 0x36) & (2 * ((v124 ^ 0x36) & (2 * (((2 * (v111 ^ v124 & 0x42)) ^ 4) & (v124 ^ 0x36) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0xF4u) << 8);
  STACK[0xE20] = STACK[0xA50] ^ STACK[0xAA8] ^ 0xFDFFFF5F757A65FALL ^ ((v122 ^ 0x402065FF) & (v123 ^ 0x41FF5A4F743A659ALL) | v122 & 0xBE00A5B08BC59A00);
  LOBYTE(v122) = v0[3384];
  LOBYTE(v124) = v122 & 0xD0 ^ 0x15;
  v127 = (v126 ^ 0x1098D9E54FFLL) & ((v122 ^ (2 * ((v122 ^ 0x36) & (2 * ((v122 ^ 0x36) & (2 * ((v122 ^ 0x36) & (2 * ((v122 ^ 0x36) & (2 * (((2 * (v124 ^ v122 & 0x66)) ^ 0xCC) & (v122 ^ 0x36) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124))) ^ 0x89DB8D9E54B6) | v126 & 0x44007261AB00;
  LOBYTE(v126) = v0[3378];
  LOBYTE(v124) = v126 & 0x1C ^ 0x77;
  v128 = (v127 << 16) | (STACK[0xE90] << 8);
  STACK[0xE10] ^= STACK[0xAB0] ^ 0xEFFFBFFF5FCFBBA3 ^ v110;
  v129 = (STACK[0x9F0] << 8) | (((v128 ^ 0x1890808FFLL) & ((v126 ^ (2 * ((v126 ^ 0x36) & (2 * ((v126 ^ 0x36) & (2 * ((v126 ^ 0x36) & (2 * ((v126 ^ 0x36) & (2 * (((2 * (v124 ^ v126 & 0x2A)) ^ 0x44) & (v126 ^ 0x36) ^ v124)) ^ v124)) ^ v124)) ^ v124)) ^ v124))) ^ 0x30B3C94E2AC0) | v128 & 0xCF4C36B1D500) << 16);
  LOBYTE(v124) = v0[3556];
  LOBYTE(v78) = v124 & 0x32 ^ 0x46;
  v130 = (v129 ^ 0x2000290010085FFLL) & ((v124 ^ (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * ((v124 ^ 0x34) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x1AD10BF0B18C9F8ELL) | v129 & 0xE52EF40F4E736000;
  LOBYTE(v129) = v0[3273];
  LOBYTE(v78) = v129 & 0x6A ^ 0x7A;
  LOBYTE(v129) = v129 ^ (2 * ((v129 ^ 0x34) & (2 * ((v129 ^ 0x34) & (2 * ((v129 ^ 0x34) & (2 * ((v129 ^ 0x34) & (2 * ((v129 ^ 0x34) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78));
  LOBYTE(v78) = v0[3335];
  LOBYTE(v111) = v78 & 0x88 ^ 0x29;
  v131 = v129 << 8;
  v132 = (v113 << 8) | ((((v78 ^ (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & 0x3E ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x8B94CD1E02EALL) & (v131 | 0x8B94CD1E00FFLL) | v131 & 0xFFFFFFFFFFFFFDFFLL) << 16);
  LOBYTE(v78) = v0[3120];
  LOBYTE(v111) = v78 & 0xE2 ^ 0xBE;
  v133 = (((v132 ^ 0x32E0948814FFLL) & (STACK[0xA40] ^ 0xB7E0D6C81C75) | v132 & 0x481E2937E300) << 16) | (((v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0xE2u) << 8);
  LOBYTE(v78) = v0[3144];
  LOBYTE(v111) = v78 & 0x22 ^ 0xDE;
  v134 = (v133 ^ 0x1540A2C7FFLL) & ((v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0xB67D44BBC7A4) | v133 & 0x4982BB443800;
  STACK[0xAC0] ^= STACK[0xA80] ^ 0xFFFFFFFFFE567730 ^ v117;
  LOBYTE(v78) = v0[3535];
  LOBYTE(v111) = v78 & 0xEC ^ 0xBF;
  v135 = (((v78 ^ (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & (2 * ((v78 ^ 0x36) & 0x1A ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0xECu) << 8) | (v134 << 16);
  LODWORD(v78) = v0[3541];
  LODWORD(v111) = v78 & 0x42 ^ 0x4E;
  STACK[0xAB8] = v78 ^ (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * ((v78 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111));
  v136 = (v135 ^ 0x800018208EFFLL) & (v60 ^ 0x2AC9EE8E5F268E0BLL) | v135 & 0xD5361171A0D97100;
  LOBYTE(v135) = v0[3301];
  LOBYTE(v78) = v135 & 0xD2 ^ 0x96;
  v137 = ((v135 ^ (2 * ((v135 ^ 0x34) & (2 * ((v135 ^ 0x34) & (2 * ((v135 ^ 0x34) & (2 * ((v135 ^ 0x34) & (2 * ((v135 ^ 0x34) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x9C2BA5B39BA1) & (v86 ^ 0x9C2BA5B309FFLL) | v86 & 0x6400;
  LOBYTE(v86) = v0[3522];
  LOBYTE(v78) = v86 & 0x7C ^ 0x67;
  v138 = (v137 << 16) | (((v86 ^ (2 * ((v86 ^ 0x36) & (2 * ((v86 ^ 0x36) & (2 * ((v86 ^ 0x36) & (2 * ((v86 ^ 0x36) & (2 * (((2 * (v78 ^ v86 & 0x4A)) ^ 4) & (v86 ^ 0x36) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x7Cu) << 8);
  LOBYTE(v86) = v0[3386];
  LOBYTE(v78) = v86 & 0x3C ^ 0xC7;
  LOBYTE(v111) = v0[3399];
  LOBYTE(v57) = v111 & 0x96 ^ 0x30;
  v139 = (v111 ^ (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)));
  v140 = (((v138 ^ 0x480C0084D9FFLL) & (v139 ^ 0x683E5684D957) | v138 & 0x8581A97B2600) << 16) | (v123 << 8);
  LOBYTE(v111) = v0[3284];
  LOBYTE(v57) = v111 & 0x98 ^ 0xB1;
  v141 = (((v111 ^ (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * (((2 * (v57 ^ v111 & 0x2E)) ^ 0xCC) & (v111 ^ 0x36) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x98u) << 8) | (((v140 ^ 0x23814FF) & (v102 ^ 0xB881DBB9142ALL) | v140 & 0x477E2446EB00) << 16);
  LOBYTE(v111) = v0[3280];
  LOBYTE(v57) = v111 & 0x52 ^ 0xD6;
  v142 = (v141 ^ 0x82402804B14FFLL) & ((v111 ^ (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x62FB6FBA905B14F5) | v141 & 0x9D0490456FA4EB00;
  LOBYTE(v141) = v0[3424];
  LOBYTE(v111) = v141 & 0x40 ^ 0xCD;
  v143 = (v96 << 8) | ((((v141 ^ (2 * ((v141 ^ 0x36) & (2 * ((v141 ^ 0x36) & (2 * ((v141 ^ 0x36) & (2 * ((v141 ^ 0x36) & (2 * ((v141 ^ 0x36) & (2 * ((v141 ^ 0x36) & 0x36 ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0xEC82324102CALL) & (v97 | 0xEC82324100FFLL) | v97 & 0xFFFFFFFFFFFFFDFFLL) << 16);
  LOBYTE(v111) = v0[3594];
  LOBYTE(v57) = v111 & 0x6C ^ 0x7F;
  v144 = ((v111 ^ (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & 0x1A ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x543CE7F73D44) & (v143 ^ 0x443C21751DFFLL) | v143 & 0x22411808C200;
  LOBYTE(v111) = v0[3331];
  LOBYTE(v57) = v111 & 0x98 ^ 0xB1;
  v145 = (v144 << 16) | (((v111 ^ (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * (((2 * (v57 ^ v111 & 0x2E)) ^ 0xCC) & (v111 ^ 0x36) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x98u) << 8);
  LOBYTE(v111) = v0[3615];
  LOBYTE(v57) = v111 & 0xBC ^ 0x87;
  v146 = (v145 ^ 0x180002419CFFLL) & ((v111 ^ (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * (((2 * (v57 ^ v111 & 0xA)) ^ 4) & (v111 ^ 0x36) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xFE665B619C5BLL) | v145 & 0x199A49E6300;
  LOBYTE(v111) = v0[3573];
  LOBYTE(v109) = v111 & 0x58 ^ 0xD1;
  LOBYTE(v99) = v111 ^ (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * (((2 * (v109 ^ v111 & 0x6E)) ^ 0xCC) & (v111 ^ 0x36) ^ v109)) ^ v109)) ^ v109)) ^ v109)) ^ v109));
  v147 = STACK[0xE00] ^ STACK[0xAD0] ^ 0xFFFFDFFEFFDC9FBCLL ^ v130;
  LOBYTE(v130) = v0[3452];
  LOBYTE(v111) = v130 & 0x8C ^ 0xAF;
  v148 = (((v130 ^ (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & 0x3A ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x8Cu) << 8) | (v146 << 16);
  LOBYTE(v130) = v0[3254];
  LOBYTE(v111) = v130 & 0x58 ^ 0xD1;
  v149 = (v148 ^ 0x2211811FFLL) & ((v130 ^ (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * (((2 * (v111 ^ v130 & 0x6E)) ^ 0xCC) & (v130 ^ 0x36) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x77668402355A11B4) | v148 & 0x88997BFDCAA5EE00;
  LOBYTE(v148) = v0[3310];
  LOBYTE(v130) = v148 & 0xE2 ^ 0x3E;
  LOBYTE(v148) = v148 ^ (2 * ((v148 ^ 0x34) & (2 * ((v148 ^ 0x34) & (2 * ((v148 ^ 0x34) & (2 * ((v148 ^ 0x34) & (2 * ((v148 ^ 0x34) & (2 * v130) ^ v130)) ^ v130)) ^ v130)) ^ v130)) ^ v130)) ^ 0xE2;
  LOBYTE(v130) = v0[3288];
  LOBYTE(v111) = v130 & 0x2A ^ 0x5A;
  v150 = ((v130 ^ (2 * ((v130 ^ 0x34) & (2 * ((v130 ^ 0x34) & (2 * ((v130 ^ 0x34) & (2 * ((v130 ^ 0x34) & (2 * ((v130 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x9DC93AF7) & ~(v148 << 8) | (v148 << 8) & 0xC500;
  LOBYTE(v130) = v0[3140];
  LOBYTE(v111) = v130 & 0x84 | 0x2B;
  v151 = (v150 << 16) | (((v130 ^ (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & 0x32 ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x84u) << 8);
  LOBYTE(v130) = v0[3609];
  LOBYTE(v111) = v130 & 0xEC ^ 0xBF;
  v152 = (v151 ^ 0x821D213631FFLL) & ((v130 ^ (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & 0x1A ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0xFFFFFFFFFF13);
  LOBYTE(v130) = v0[3411];
  LOBYTE(v111) = v130 & 0xF0 ^ 0x25;
  v153 = v130 ^ (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * ((v130 ^ 0x36) & (2 * (((2 * (v111 ^ v130 & 0x46)) ^ 0xC) & (v130 ^ 0x36) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111));
  v154 = v0[3431];
  LOBYTE(v130) = v154 & 0xDE ^ 0x14;
  LOBYTE(v111) = v0[3276];
  LOBYTE(v57) = v111 & 0x10 ^ 0x75;
  v155 = (((((STACK[0xBC0] << 8) | (v152 << 16)) ^ 0xC414040001FFLL) & (v139 ^ 0xDDD735F643CCLL) | ((STACK[0xBC0] << 8) | (v152 << 16)) & 0x2228CA09BC00) << 16) | (((v111 ^ (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * (((2 * (v57 ^ v111 & 0x26)) ^ 0xCC) & (v111 ^ 0x36) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x10u) << 8);
  LOBYTE(v111) = v0[3324];
  LOBYTE(v57) = v111 & 0xD2 ^ 0x96;
  v156 = (v155 ^ 0x20000A0020A5A6FFLL) & ((v111 ^ (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * ((v111 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0xEA672EEB33A5A628) | v155 & 0x1598D114CC5A5900;
  LOBYTE(v111) = v0[3490];
  LOBYTE(v57) = v111 & 0x94 ^ 0xB3;
  v157 = (v111 ^ (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * (((2 * (v57 ^ v111 & 0x22)) ^ 0x44) & (v111 ^ 0x36) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)));
  v158 = STACK[0xDE0] ^ STACK[0xAE8] ^ 0xFFFFFFFBF47F14A7 ^ v142;
  v159 = STACK[0xA20] ^ STACK[0xAD8] ^ 0xFFFF3FFFFBFFA6FALL ^ v156;
  v160 = (((v157 ^ 0xC00E3B8BF242) & ((STACK[0xB80] << 8) ^ 0xC00E3B8B02FFLL) | (STACK[0xB80] << 8) & 0xD00) << 16) | (((v86 ^ (2 * ((v86 ^ 0x36) & (2 * ((v86 ^ 0x36) & (2 * ((v86 ^ 0x36) & (2 * ((v86 ^ 0x36) & (2 * (((2 * (v78 ^ v86 & 0xA)) ^ 4) & (v86 ^ 0x36) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0x3Cu) << 8);
  LOBYTE(v156) = v0[3182];
  LOBYTE(v78) = v156 & 0xCC ^ 0xF;
  v161 = ((v156 ^ (2 * ((v156 ^ 0x36) & (2 * ((v156 ^ 0x36) & (2 * ((v156 ^ 0x36) & (2 * ((v156 ^ 0x36) & (2 * ((v156 ^ 0x36) & (2 * ((v156 ^ 0x36) & 0x3A ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78))) ^ 0xC24FAAB927AALL) & (v160 ^ 0xC044002927FFLL) | v160 & 0x39805546D800;
  LOBYTE(v160) = v0[3405];
  LOBYTE(v78) = v160 & 0xC ^ 0xEF;
  LOBYTE(v97) = v160 ^ (2 * ((v160 ^ 0x36) & (2 * ((v160 ^ 0x36) & (2 * ((v160 ^ 0x36) & (2 * ((v160 ^ 0x36) & (2 * ((v160 ^ 0x36) & (2 * ((v160 ^ 0x36) & 0x3A ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78));
  LOBYTE(v160) = v0[3473];
  LOBYTE(v78) = v160 & 0x82 ^ 0xAE;
  v162 = STACK[0xA70] ^ STACK[0xBB0] ^ 0xFEFFFEBFDFA68E23 ^ v136;
  v163 = (v160 ^ (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)));
  v164 = (v163 << 8) | (((((v161 << 16) | (v97 << 8)) ^ 0xD010D1FF) & (STACK[0xAB8] ^ 0xA6C6F030D5EELL) | ((v161 << 16) | (v97 << 8)) & 0x59390FCF2A00) << 16);
  LOBYTE(v160) = v0[3516];
  LOBYTE(v111) = (v160 & 0xB6 | 0x48) ^ v160 & 0xF0;
  v165 = (v164 ^ 0x808005049FFLL) & ((v160 ^ (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x2482AA0E9850CB32) | v164 & 0xDB7D55F167AF3400;
  v166 = STACK[0xDF0] ^ STACK[0xB90] ^ 0xFFFFFF6BBDFF11ECLL ^ v149;
  LOBYTE(v160) = v0[3337];
  LOBYTE(v111) = v160 & 0x66 ^ 0xF8;
  v167 = ((((v160 ^ (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * ((v160 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x9A3DDE2880B7) & ~STACK[0xB40] & 0xFFFFFFFFFFFF80FFLL | ((STACK[0xB50] & 0x7F) << 8)) << 16) | (STACK[0x9E8] << 8);
  LOBYTE(v111) = v0[3496];
  LOBYTE(v57) = v111 & 0x38 | 0xC1;
  v168 = (v167 ^ 0x2082112A41FFLL) & ((v111 ^ (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & (2 * ((v111 ^ 0x36) & 0xE ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x3282116B51EELL) | v167 & 0xCC28EE94AE00;
  v169 = STACK[0xA30] ^ STACK[0xBD0] ^ 0xFEFFFF7EDDFCCB74 ^ v165;
  LOBYTE(v165) = v0[3235];
  LOBYTE(v57) = v165 & 0x2C ^ 0x5F;
  v170 = (v168 << 16) | (((v165 ^ (2 * ((v165 ^ 0x36) & (2 * ((v165 ^ 0x36) & (2 * ((v165 ^ 0x36) & (2 * ((v165 ^ 0x36) & (2 * ((v165 ^ 0x36) & (2 * ((v165 ^ 0x36) & 0x1A ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57))) ^ 0x2Cu) << 8);
  v171 = (v170 ^ 0x44040808A2FFLL) & (v99 ^ 0x6666094CA26CLL) | v170 & 0x9999F6B35D00;
  LOBYTE(v170) = v0[3222];
  LOBYTE(v111) = v170 & 0x3E ^ 0xC4;
  LODWORD(v136) = v0[3547];
  LODWORD(v109) = v136 & 4 | 0xFFFFFFEB;
  LODWORD(v113) = (v136 ^ 0x36) & (2 * ((v136 ^ 0x36) & (2 * ((v136 ^ 0x36) & (2 * ((v136 ^ 0x36) & (2 * ((v136 ^ 0x36) & (2 * (((8 * (((v136 & 4) >> 2) & 1)) | 0x32) & (v136 ^ 0x36) ^ v109)) ^ v109)) ^ v109)) ^ v109)) ^ v109)) ^ v109;
  v172 = (((v170 ^ (2 * ((v170 ^ 0x34) & (2 * ((v170 ^ 0x34) & (2 * ((v170 ^ 0x34) & (2 * ((v170 ^ 0x34) & (2 * ((v170 ^ 0x34) & (2 * v111) ^ v111)) ^ v111)) ^ v111)) ^ v111)) ^ v111))) ^ 0x3Eu) << 8) | (v171 << 16);
  LOBYTE(v126) = v0[3584];
  LOBYTE(v170) = v126 & 0x34 | 0x43;
  v173 = (v172 ^ 0x45C016FF) & ((v126 ^ (2 * ((v126 ^ 0x36) & (2 * ((v126 ^ 0x36) & (2 * ((v126 ^ 0x36) & (2 * ((v126 ^ 0x36) & (2 * (((2 * (v170 ^ v126 & 2)) ^ 4) & (v126 ^ 0x36) ^ v170)) ^ v170)) ^ v170)) ^ v170)) ^ v170))) ^ 0x7222C4D0E5F01640) | v172 & 0x8DDD3B2F1A0FE900;
  v174 = (((v131 ^ 0x89E3E98491FFLL) & (STACK[0xB30] ^ 0x89E3E984D931) | v131 & 0x2600) << 16) | (((v154 ^ (2 * ((v154 ^ 0x34) & (2 * ((v154 ^ 0x34) & (2 * ((v154 ^ 0x34) & (2 * ((v154 ^ 0x34) & (2 * ((v154 ^ 0x34) & (2 * v130) ^ v130)) ^ v130)) ^ v130)) ^ v130)) ^ v130))) ^ 0xDEu) << 8);
  v175 = STACK[0x9E0];
  v176 = (((v174 ^ 0x663040276FFLL) & (v175 ^ 0xA663F7027660) | v174 & 0x498408FD8900) << 16) | (STACK[0xA98] << 8);
  LOBYTE(v130) = v0[3271];
  LOBYTE(v57) = v130 & 0x62 ^ 0x7E;
  LOBYTE(v131) = (v130 ^ 0x34) & (2 * ((v130 ^ 0x34) & (2 * ((v130 ^ 0x34) & (2 * ((v130 ^ 0x34) & (2 * ((v130 ^ 0x34) & (2 * v57) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ v57;
  LOBYTE(v57) = v0[3598];
  LOBYTE(v109) = v57 & 2 ^ 0x6E;
  v177 = (((v57 ^ (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * ((v57 ^ 0x34) & (2 * v109) ^ v109)) ^ v109)) ^ v109)) ^ v109)) ^ v109))) ^ 2u) << 8) | (((v176 ^ 0x4000800FFLL) & (v175 ^ 0xA80E20581869) | v176 & 0x57F1DFA7E700) << 16);
  v178 = STACK[0xC90] ^ STACK[0xA00] ^ v173;
  v179 = (v177 ^ 0x1088A305209FFFLL) & (STACK[0xC30] ^ 0x621FDCF7CD759F08) | v177 & 0x9DE02308328A6000;
  LOBYTE(v173) = v0[3320];
  LOBYTE(v177) = v173 & 0xF8 ^ 0xA1;
  v180 = ((((v173 ^ (2 * ((v173 ^ 0x36) & (2 * ((v173 ^ 0x36) & (2 * ((v173 ^ 0x36) & (2 * ((v173 ^ 0x36) & (2 * (((2 * (v177 ^ v173 & 0x4E)) ^ 0xC) & (v173 ^ 0x36) ^ v177)) ^ v177)) ^ v177)) ^ v177)) ^ v177))) ^ 0xA9DDC94AF52ELL) & ((STACK[0xC30] << 8) ^ 0xA9DDC94A55FFLL) | (STACK[0xC30] << 8) & 0xA00) << 16) | (v175 << 8);
  v181 = (v180 ^ 0x36150009C3FFLL) & (v163 ^ 0xFF5514DFE751) | v180 & 0xAEB201800;
  LOBYTE(v163) = v0[3592];
  LOBYTE(v177) = v163 & 0xCA ^ 0x8A;
  v182 = (v181 << 16) | (((v163 ^ (2 * ((v163 ^ 0x34) & (2 * ((v163 ^ 0x34) & (2 * ((v163 ^ 0x34) & (2 * ((v163 ^ 0x34) & (2 * ((v163 ^ 0x34) & (2 * v177) | v177)) ^ v177)) ^ v177)) ^ v177)) ^ v177))) ^ 0xCAu) << 8);
  LOBYTE(v163) = v0[3531];
  LOBYTE(v177) = v163 & 0xF4 ^ 0xA3;
  v183 = (STACK[0xE30] << 8) | (((v182 ^ 0xA0000048FFFLL) & ((v163 ^ (2 * ((v163 ^ 0x36) & (2 * ((v163 ^ 0x36) & (2 * ((v163 ^ 0x36) & (2 * ((v163 ^ 0x36) & (2 * (((2 * (v177 ^ v163 & 0x42)) ^ 4) & (v163 ^ 0x36) ^ v177)) ^ v177)) ^ v177)) ^ v177)) ^ v177))) ^ 0xF1B83C48F23) | v182 & 0xF0E47C3B7000) << 16);
  v184 = (v183 ^ 0x828602800FFLL) & (v175 ^ 0x735F89F866E888ECLL) | v183 & 0x8CA0760799177700;
  LODWORD(v183) = ((v136 ^ (2 * v113)) ^ 4) << 8;
  LODWORD(v183) = (STACK[0xB70] << 8) | (((STACK[0xC20] ^ 0xE1F) & ~v183 | v183 & 0xFFFFF1FF) << 16);
  LOBYTE(v175) = v0[3131];
  LOBYTE(v177) = v175 & 0xAA ^ 0x9A;
  v185 = (STACK[0xB60] << 8) | (((v157 << 8) | (((v183 ^ 0x4110C3FF) & (STACK[0xDB0] ^ 0x4B39D708) | v183 & 0xB4C62800) << 16) | (v175 ^ (2 * ((v175 ^ 0x34) & (2 * ((v175 ^ 0x34) & (2 * ((v175 ^ 0x34) & (2 * ((v175 ^ 0x34) & (2 * ((v175 ^ 0x34) & (2 * v177) ^ v177)) ^ v177)) ^ v177)) ^ v177)) ^ v177))) ^ 0x3Fu) << 16);
  v186 = (v185 ^ 0x904000310B9E0EFFLL) & (STACK[0xA60] ^ 0x9CEC9B351B9E0ED2) | v185 & 0x631364CAE461F100;
  LOBYTE(v185) = v0[3482];
  LOBYTE(v175) = v185 & 0x8E ^ 0xAC;
  LOBYTE(v185) = v185 ^ (2 * ((v185 ^ 0x34) & (2 * ((v185 ^ 0x34) & (2 * ((v185 ^ 0x34) & (2 * ((v185 ^ 0x34) & (2 * ((v185 ^ 0x34) & (2 * v175) ^ v175)) ^ v175)) ^ v175)) ^ v175)) ^ v175));
  LOBYTE(v175) = v0[3539];
  LOBYTE(v177) = v175 & 0xCC ^ 0x8F;
  v187 = ((v175 ^ (2 * ((v175 ^ 0x36) & (2 * ((v175 ^ 0x36) & (2 * ((v175 ^ 0x36) & (2 * ((v175 ^ 0x36) & (2 * ((v175 ^ 0x36) & (2 * ((v175 ^ 0x36) & 0x3A ^ v177)) ^ v177)) ^ v177)) ^ v177)) ^ v177)) ^ v177))) ^ 0x26011004072FLL) & ((v185 << 8) ^ 0x2601100401FFLL) & 0xFFFFFFFFFFFF07FFLL | ((v185 >> 3) << 11);
  LOBYTE(v177) = v0[3114];
  LOBYTE(v117) = v177 & 0x28 ^ 0x59;
  v188 = (v187 << 16) | (((v177 ^ (2 * ((v177 ^ 0x36) & (2 * ((v177 ^ 0x36) & (2 * ((v177 ^ 0x36) & (2 * ((v177 ^ 0x36) & (2 * ((v177 ^ 0x36) & (2 * ((v177 ^ 0x36) & 0x1E ^ v117)) ^ v117)) ^ v117)) ^ v117)) ^ v117)) ^ v117))) ^ 0x28u) << 8);
  v189 = (((v188 ^ 0x30141AFF) & (STACK[0xC40] ^ 0x119B33F71AABLL) | v188 & 0x4CC08E500) << 16) | (STACK[0xE90] << 8);
  v190 = (((v130 ^ (2 * v131)) ^ 0x62u) << 8) | (((v189 ^ 0x4000400008FFLL) & (v185 ^ 0x74614AE15A70) | v189 & 0x8B9EB51EA500) << 16);
  v191 = STACK[0xA10] ^ STACK[0xBE0] ^ 0xBBFFFBFFD7B716FCLL ^ ((STACK[0xD50] ^ 0x100993822106FFLL) & (v153 ^ 0x8A953997D3A7160CLL) | STACK[0xD50] & 0x756AC6682C58E900);
  v192 = STACK[0xD90] ^ STACK[0xC60] ^ 0xFFBFFEFFDF7D9FA8 ^ v179;
  v193 = STACK[0xCA0] ^ 0xFFF75BE9FEFF2B31 ^ ((v190 ^ 0x10800012BFFLL) & (v97 ^ 0xD63459694C952B3DLL) | v190 & 0x29CBA696B36AD400);
  v194 = (v193 - ((2 * v193) & 0xFD900BFDAB3214ECLL) + 0x7EC805FED5990A76) ^ STACK[0xD80];
  v195 = __ROR8__(__ROR8__((STACK[0xC80] + 208) ^ 0x82FDC3549F2558ALL, 56) ^ 0x2FDC3549F2558A08, 8);
  LODWORD(v131) = ((v195 - ((2 * STACK[0xC80]) & 0x1A0) - 2 * ((v195 - ((2 * STACK[0xC80]) & 0x1A0)) & 0x3E2320036EA20AB6 ^ v195 & 6) - 0x41DCDFFC915DF550) >> 32) ^ 0xF72CF0F7;
  LODWORD(v130) = STACK[0xC70] ^ 0xC953C758;
  v196 = STACK[0xDA0] ^ STACK[0xC50] ^ 0xFFDFFFFFEFFF98D8 ^ v184;
  v197 = STACK[0xE70] ^ STACK[0xD70] ^ v186;
  LODWORD(v186) = (v195 - ((2 * LODWORD(STACK[0xC80])) & 0x1A0) - 2 * ((v195 - ((2 * LODWORD(STACK[0xC80])) & 0x1A0)) & 0x6EA20AB6 ^ v195 & 6) + 1856113328) ^ 0x27ADDA44;
  v198 = STACK[0xB00] ^ STACK[0xAE0] ^ STACK[0xE60] & 0x26 ^ 0x271AA0C995313651 ^ STACK[0xE40];
  v199 = STACK[0x8D30];
  v199[1311] = HIDWORD(STACK[0xC70]) ^ 0xA31EF884;
  v199[2005] = v131;
  LODWORD(v131) = HIDWORD(STACK[0xAC8]) ^ 0x2E009703;
  LODWORD(v179) = STACK[0xAC8] ^ 0xD5626F0B;
  v199[733] = v186;
  v200 = v198 - 0x4726A08F10204E5ELL + (~(2 * v198) | 0x8E4D411E20409CBDLL);
  v199[623] = v131;
  LODWORD(v131) = STACK[0xBA0] ^ 0xA2263B6E;
  LODWORD(v198) = HIDWORD(STACK[0xBA0]) ^ 0x9E58882F;
  v199[523] = v200 ^ 0xA6D06155;
  v199[246] = HIDWORD(v200) ^ 0xF1D68F84;
  v199[233] = v198;
  v199[752] = v131;
  v201 = STACK[0xAC0];
  v199[1499] = HIDWORD(STACK[0xAC0]) ^ 0x6E2182F;
  v202 = STACK[0xDD0];
  LODWORD(v200) = HIDWORD(STACK[0xDD0]) ^ 0x15A10495;
  LODWORD(v198) = STACK[0xAF0] ^ 0xAB071C5;
  v199[239] = HIDWORD(STACK[0xAF0]) ^ 0xEDA47F4D;
  v199[361] = v130;
  v199[301] = v198;
  v199[1354] = v179;
  LODWORD(v131) = STACK[0xE10] ^ 0xDD14E185;
  LODWORD(v179) = HIDWORD(STACK[0xE10]) ^ 0x49D1B326;
  v199[1514] = v202 ^ 0xA0A930AB;
  v199[786] = v131;
  v199[270] = v147 ^ 0x4B01BBE9;
  v199[2088] = v200;
  v199[1507] = v179;
  v199[1508] = v201 ^ 0x36B0C843;
  v203 = STACK[0xE20];
  LODWORD(v179) = STACK[0xE20] ^ 0xACF6B6BB;
  v199[1389] = HIDWORD(v147) ^ 0x4226F89C;
  v204 = STACK[0x8D30];
  v204[833] = v158 ^ 0xB5D15CA4;
  LODWORD(v97) = STACK[0xEB0];
  v204[1834] = HIDWORD(v158) ^ 0x4B84AEBD;
  v204[1889] = HIDWORD(v162) ^ 0xAE866703;
  v204[398] = HIDWORD(v203) ^ 0xE3898F2C;
  v204[952] = v179;
  v205 = STACK[0x998];
  LODWORD(v179) = STACK[0x998] ^ 0x6D3276DD;
  v204[1059] = v166 ^ 0x4FEB43E;
  LODWORD(v200) = STACK[0xDC0] ^ 0xFCA3612D;
  LODWORD(v166) = HIDWORD(STACK[0xDC0]) ^ 0x6966448D;
  v204[670] = v162 ^ 0xB9579194;
  v204[1885] = HIDWORD(v159) ^ 0x5BC7CC63;
  v204[1022] = HIDWORD(v166) ^ 0x9DCFB142;
  v204[1491] = HIDWORD(v169) ^ 0xEC3C5666;
  v204[1313] = v179;
  v204[1383] = v159 ^ 0x6C46C410;
  v204[1944] = (HIDWORD(v205) ^ 0xA339D655) - ((2 * (HIDWORD(v205) ^ 0xA339D655)) & 0x921FA1E8) + 1225773300;
  v204[1626] = v178 ^ 0x3802CA0;
  v206 = STACK[0x510];
  LODWORD(v131) = STACK[0x510] ^ 0xF44DA1FE;
  v204[558] = v169 ^ 0xEA944FD0;
  v207 = STACK[0x4F8];
  LODWORD(v169) = HIDWORD(STACK[0x4F8]) ^ 0x9F342DF0;
  v204[1685] = HIDWORD(v178) ^ 0x7757B0D2;
  v204[76] = v166;
  v204[886] = v200;
  v204[1765] = v191 ^ 0x8F2A0F09;
  v204[1089] = v131;
  v208 = STACK[0x518];
  LODWORD(v178) = STACK[0x518] ^ 0xCECA49A9;
  v204[57] = v169;
  v209 = STACK[0x8D30];
  v209[1588] = v196 ^ 0xD10AFF11;
  v209[1464] = HIDWORD(v192) ^ 0xAEFCF911;
  v209[92] = HIDWORD(v191) ^ 0x1B2036D9;
  v209[1888] = v192 ^ 0xA0EA22DE;
  v209[1042] = HIDWORD(v196) ^ 0x63A7356B;
  v209[758] = v178;
  v209[818] = (HIDWORD(v206) ^ 0x41ECA072) + 1225773301 + (~(2 * (HIDWORD(v206) ^ 0x41ECA072)) | 0x6DE05E17);
  v210 = STACK[0x500];
  LODWORD(v200) = HIDWORD(STACK[0x500]) ^ 0x605AD5A1;
  v209[164] = HIDWORD(v208) ^ 0xA85FD884;
  v209[490] = v194 ^ 0x4B291957;
  v209[1468] = v200;
  v209[215] = v207 ^ 0x2C904165;
  v211 = STACK[0xCD0];
  LODWORD(v194) = HIDWORD(STACK[0xCD0]) ^ 0x30CEBC98;
  v209[943] = v197 ^ 0x48915F0F;
  v212 = STACK[0xCC0];
  v213 = STACK[0xCE0];
  LODWORD(v169) = STACK[0xCE0] ^ 0xA922347;
  v209[114] = HIDWORD(STACK[0xCC0]) ^ 0xEFA239B2;
  LODWORD(v196) = v212 ^ 0xA922347;
  v209[2037] = HIDWORD(v197) ^ 0x63BE6893;
  LODWORD(v212) = STACK[0xD30] ^ 0x36CEE695;
  LODWORD(v179) = v210 ^ 0x16A3CFD9;
  LODWORD(v210) = HIDWORD(STACK[0xD30]) ^ 0x30CEBC98;
  v209[47] = v179;
  v209[355] = v210;
  LODWORD(v210) = STACK[0xD60];
  LODWORD(STACK[0xE70]) = HIWORD(LODWORD(STACK[0xD60]));
  v214 = STACK[0xD40];
  LODWORD(v179) = STACK[0xD40] ^ 0x36CEE695;
  v209[1934] = v194;
  v209[535] = v169;
  v209[1890] = HIDWORD(v194) ^ 0x6F724684;
  v209[1872] = v211 ^ 0x36CEE695;
  v209[22] = v212;
  v209[627] = v196;
  v209[795] = v179;
  LODWORD(STACK[0xEC0]) = v210 >> 8;
  v209[2023] = HIDWORD(v213) ^ 0xEF0F39B2;
  v215 = STACK[0xE80];
  v209[44] = HIDWORD(STACK[0xE80]) ^ 0xEFA239B2;
  v216 = STACK[0x8D30];
  *(v216 + 5744) = HIDWORD(v214) ^ 0x30CEBC98;
  *(v216 + 8196) = v215 ^ 0xA922347;
  LODWORD(STACK[0xE90]) = BYTE3(v210);
  return (*(STACK[0xF18] + 8 * v97))();
}

uint64_t sub_100408668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (((*(v9 + a8) ^ 0xE3) + 29) ^ ((*(v9 + a8) ^ 0xF) - 15) ^ (((v8 + 58) ^ *(v9 + a8)) + 77)) + 103;
  v11 = v10 & 0x75 ^ 0x4E;
  *(v9 + a8) = v10 ^ (2 * ((v10 ^ 0x78) & (2 * ((v10 ^ 0x78) & (2 * ((v10 ^ 0x78) & (2 * ((v10 ^ 0x78) & (2 * ((v10 ^ 0x78) & (2 * ((v10 ^ 0x78) & (2 * v10) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ 0x2A;
  return (*(STACK[0xF18] + 8 * v8))();
}

uint64_t sub_1004087B0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 < v2;
  if (v4 == a1 + 1 > ((3 * (v3 ^ 0x228Cu)) ^ 0xFFFFFFFF8F67E157))
  {
    v4 = a1 + 1889024523 < v1;
  }

  return (*(STACK[0xF18] + 8 * ((23746 * v4) ^ v3)))();
}

uint64_t sub_100408918()
{
  v2 = *(STACK[0x1C08] + 104);
  v3 = *(STACK[0x1C08] + 112);
  STACK[0x5320] = v2;
  v4 = *v0;
  v5 = v0[1];
  STACK[0x7140] = v4;
  STACK[0x11E0] = v5 - ((v5 << (109 * (v1 ^ 0xBA) - 58)) & 0x130272185FDB248CLL) + 0x981390C2FED9246;
  LODWORD(STACK[0x10ED8]) = (v1 + 26638) ^ (1603510583 * ((((&STACK[0x10000] + 3800) | 0x9E44EAFB) - ((&STACK[0x10000] + 3800) | 0x61BB1504) + 1639650564) ^ 0x99FD850));
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v1 ^ 0xD3AC)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x439C]) = STACK[0x10EDC];
  v8 = STACK[0x4850];
  v9 = STACK[0x7690];
  STACK[0x8E90] = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x9348] = &STACK[0xC4D0] + v9 + 272;
  STACK[0x7F38] = &STACK[0xC4D0] + v9 + 312;
  STACK[0x7690] = v9 + 400;
  STACK[0x5FD8] = v3;
  STACK[0x47E8] = v8;
  v10 = *(*STACK[0xE50] + (*STACK[0xE58] & 0xFFFFFFFFB724B0B8));
  STACK[0x52F8] = (v10 & 0x7FFFFFFFFFFFFFFFLL ^ 0x719361230411ED1BLL ^ (3723 * (v1 ^ 0x18FF)) ^ v10 & 0x3218985631758570 ^ 0x8208985431641D76) - ((3723 * (v1 ^ 0x18FF)) ^ v10 & 0x3218985631758570 ^ 0x8208985431641D76);
  v12 = v2 == 0x7E666516A39B34A6 || v3 == 0;
  return (*(v6 + 8 * ((503 * v12) ^ v1)))(v7);
}

uint64_t sub_100408B10@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, unsigned int a7@<W8>)
{
  v11 = a7 > v8;
  v12 = (((v10 + v9) | a1) ^ a3) + a6;
  v13 = v11 ^ (v12 < v10 + a4);
  v14 = v12 < v7;
  if (!v13)
  {
    v11 = v14;
  }

  return (*(STACK[0xF18] + 8 * ((v11 * a5) ^ v10)))((v10 + a2));
}

uint64_t sub_100408B68@<X0>(unint64_t a1@<X8>)
{
  STACK[0x6ED8] = v4;
  STACK[0x6600] = a1;
  STACK[0x1FA8] = v1;
  STACK[0x2668] = v2;
  return (*(STACK[0xF18] + 8 * (((a1 != 0x981390C2FED9246) * (v3 ^ 0x73B3)) ^ v3)))();
}

uint64_t sub_100408BB8@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((~(&STACK[0x10000] + 3800) & 0xDDA0700A | (&STACK[0x10000] + 3800) & 0x225F8FF0) ^ 0x3B866BC5));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 + 16289)))(&STACK[0x10ED8]);
  *(v2 + 360) = 0;
  return (*(v3 + 8 * (v1 - 25293)))(v4);
}

uint64_t sub_100408C90()
{
  v1 = *(STACK[0x78B0] + 272);
  v2 = STACK[0x6A98];
  v3 = 353670337 * ((~(&STACK[0x10000] + 3800) & 0xCBC3C43F | (&STACK[0x10000] + 3800) & 0x343C3BC0) ^ 0x7FE23C02);
  LODWORD(STACK[0x10ED8]) = (((LODWORD(STACK[0x8BA4]) ^ 0xE708495C) + ((3 * (v0 ^ 0x39DC)) ^ 0x18F7C59F)) ^ ((LODWORD(STACK[0x8BA4]) ^ 0xDCDE4DAB) + 589410901) ^ ((LODWORD(STACK[0x8BA4]) ^ 0xD203C3E6) + 771505178)) - v3 + 1051652780;
  LODWORD(STACK[0x10EE0]) = v0 - v3 + 39960;
  STACK[0x10EF0] = v1;
  STACK[0x10EE8] = v2;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 43786)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * v0))(v5);
}

uint64_t sub_100408DF0()
{
  STACK[0x8FE8] = v1;
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x7FD8]) = 1986096245;
  LODWORD(STACK[0x704C]) = -2116087608;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * ((v0 + 175794810) ^ 0xA7AB592 ^ (14648 * (v0 + 175794810 > ((v0 + 28038) ^ 0xF711E680))))))();
}

uint64_t sub_100408FDC@<X0>(unint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = STACK[0x1E30];
  v5 = ((*(v1 + 36) ^ 0xE9FE392E) + 369215186) ^ ((*(v1 + 36) ^ 0x37CF23FE) - 936322046) ^ (((46 * (v2 ^ 0x2508)) ^ *(v1 + 36) ^ 0x37E45145) - 937745857);
  v6 = 1603510583 * ((((2 * (&STACK[0x10000] + 3800)) | 0xAC8DC014) - (&STACK[0x10000] + 3800) - 1447485450) ^ 0xC19DD2A1);
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EF8]) = v6 - 329899906 + v5;
  STACK[0x10EF0] = v4;
  LODWORD(STACK[0x10EE8]) = v3 - v6;
  LODWORD(STACK[0x10EE4]) = v2 - v6 + 8827;
  v7 = STACK[0xF18];
  v8 = (*(STACK[0xF18] + 8 * (v2 + 42456)))(&STACK[0x10ED8]);
  return (*(v7 + 8 * ((45690 * (LODWORD(STACK[0x10EE0]) == ((8 * v2) ^ 0x1F840) - 371917151)) ^ v2)))(v8);
}

uint64_t sub_1004091B0()
{
  v3 = STACK[0x138C];
  STACK[0x8FE8] = *(v0 + v2);
  LODWORD(STACK[0x44A8]) = v3;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x704C]) = -2116087609;
  LODWORD(STACK[0x4A8C]) = STACK[0x93C8];
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_100409264()
{
  v0 = STACK[0xF10] - 26525;
  *(STACK[0x78B0] + 168) = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10040935C@<X0>(unsigned int a1@<W8>)
{
  v3 = v1 - 28358;
  v4 = v1 - 103;
  v5 = STACK[0xB858] + a1;
  v6 = (STACK[0xB850] + v2);
  v7 = STACK[0xE58];
  v8 = STACK[0xE50];
  v9 = *(*STACK[0xE50] + (*STACK[0xE58] & 0x72D7ACF8));
  v10 = 1864610357 * ((1864610357 * ((v9 ^ v5) & 0x7FFFFFFF)) ^ ((1864610357 * ((v9 ^ v5) & 0x7FFFFFFF)) >> 16));
  v11 = v10 >> (v4 ^ 3u);
  v12 = STACK[0x8A0];
  v13 = STACK[0x898];
  v14 = STACK[0x8A8];
  v15 = 1864610357 * ((1864610357 * ((v9 ^ v6) & 0x7FFFFFFF)) ^ ((1864610357 * ((v9 ^ v6) & 0x7FFFFFFF)) >> 16));
  *v6 = *(STACK[0x8A0] + v11) ^ *v5 ^ *(v11 + STACK[0x898] + 3) ^ *(v11 + STACK[0x8A8] + 2) ^ *(STACK[0x8A0] + (v15 >> 24)) ^ *((v15 >> 24) + STACK[0x898] + 3) ^ *((v15 >> 24) + STACK[0x8A8] + 2) ^ v10 ^ v15 ^ (27 * v11) ^ (27 * BYTE3(v15));
  v16 = *v5;
  LODWORD(v5) = 1864610357 * ((*(*v8 + (*v7 & 0x72D7ACF8)) ^ v5) & 0x7FFFFFFF);
  v17 = 1864610357 * (v5 ^ WORD1(v5));
  *(STACK[0x39D8] + v2) = *(v12 + (v17 >> 24)) ^ v16 ^ *((v17 >> 24) + v13 + 3) ^ *((v17 >> 24) + v14 + 2) ^ v17 ^ (27 * BYTE3(v17));
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10040965C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x5BB8];
  STACK[0xAF50] = STACK[0x5BB8];
  v2 = STACK[0x9640];
  STACK[0xAF58] = STACK[0x9640];
  LODWORD(STACK[0xAF64]) = STACK[0x1594];
  STACK[0xAF68] = STACK[0x5A80];
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v6 = v3 || STACK[0x3490] == 0 || STACK[0x4FF0] == 0;
  return (*(STACK[0xF18] + 8 * ((((a1 ^ 0x33 ^ v6) & 1) * (a1 ^ 0x683C)) ^ a1)))();
}

uint64_t sub_1004096E0()
{
  v5 = *(v3 + v1);
  v6 = *(v0 + v1);
  v7 = 155453101 * ((((2 * (&STACK[0x10000] + 3800)) | 0xFA30F4B8) - (&STACK[0x10000] + 3800) + 48727460) ^ 0x1B3E6193);
  LODWORD(STACK[0x10EF4]) = ((((LODWORD(STACK[0x73CC]) ^ 0x7FDF1C04) - 2145328132) ^ ((LODWORD(STACK[0x73CC]) ^ 0x8AFD4023) + 1963114461) ^ ((LODWORD(STACK[0x73CC]) ^ 0x1CF79B36) - 485989174)) + 1714524362) ^ v7;
  STACK[0x10EF8] = &STACK[0xF28] ^ 0xB18B801BC34286D9;
  LODWORD(STACK[0x10EE0]) = (v4 + 5437) ^ v7;
  LODWORD(STACK[0x10EF0]) = (v2 ^ ((v2 ^ 0x8F0544C5) + 700327793) ^ ((v2 ^ 0x442727D6) - 493075356) ^ ((v2 ^ 0x7FFF7FFF) - 649847733) ^ 0xDB3CB5C0 ^ ((v2 ^ 0xED9980A6) + 1260540472 + ((v4 - 9286) | 0x9080))) - v7;
  STACK[0x10EE8] = v5;
  STACK[0x10ED8] = v6;
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v4 ^ 0xE823)))(&STACK[0x10ED8]);
  return (*(v8 + 8 * v4))(v9);
}

uint64_t sub_100409940@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB040]) = a1 + 8;
  v4 = (((v1 ^ 0xFF9C593E) + 6530754) ^ ((v1 ^ 0x44038123) - 1141080355) ^ ((v1 ^ 0x524A1F0C) - 1380632582 + (v3 ^ 0x2100) + 41241)) + 1561081304;
  v5 = (a1 + 8) > 0x8CC99138;
  v6 = v5 ^ (v4 < 0x73366EC7);
  v7 = a1 + 1932947151 > v4;
  if (!v6)
  {
    v5 = v7;
  }

  if (v5)
  {
    v2 = 371891407;
  }

  LODWORD(STACK[0xB044]) = v2;
  return (*(STACK[0xF18] + 8 * (v3 + 6 * (v2 != -371865839))))();
}

uint64_t sub_100409A98@<X0>(int a1@<W0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v15 = STACK[0xF18];
  v16 = *(STACK[0xF18] + 8 * v9);
  v17 = STACK[0x7690];
  v18 = *(&off_1010A0B50 + v14 - 36647);
  STACK[0x7690] += 288;
  v19 = *(&off_1010A0B50 + v14 - 37244);
  v20 = (*(v18 - 1610006835) + *(v19 - 513219118) + 0x7432F7C709D25B8ALL) ^ &STACK[0x7190];
  *(v18 - 1610006835) = v20 * ((v14 ^ 0x1E17u) - 1707622350 + ((v14 + 100957026) | 0x98880360)) + 0x1E4902B7976B33F7;
  STACK[0x6C40] = v16;
  STACK[0xFA0] = v10;
  STACK[0x1420] = v8;
  STACK[0x6898] = v7;
  STACK[0x5260] = v12;
  LODWORD(STACK[0x3CB4]) = v11;
  STACK[0x1A90] = v13;
  LODWORD(STACK[0x818C]) = a1;
  LODWORD(STACK[0x9738]) = a4;
  STACK[0x7138] = v6;
  STACK[0x79A8] = a6;
  LODWORD(STACK[0x2684]) = a2;
  STACK[0x5440] = a3;
  STACK[0x6760] = a5;
  STACK[0x5878] = &STACK[0xC4D0] + v17 + 16;
  STACK[0x5760] = &STACK[0xC4D0] + v17 + 32;
  STACK[0x1DD0] = &STACK[0xC4D0] + v17 + 52;
  STACK[0x50E8] = &STACK[0xC4D0] + v17 + 236;
  STACK[0x85C8] = &STACK[0xC4D0] + v17;
  STACK[0x1B30] = &STACK[0xC4D0] + v17 + 252;
  *(v19 - 513219118) = 952459099 * (v20 ^ 0xFE584BA7F0179476) + 0x6F2BB9D96EAADC09;
  STACK[0xF58] = 0;
  STACK[0x2748] = 0;
  STACK[0x77F8] = 0;
  LODWORD(STACK[0x1490]) = 0;
  LODWORD(STACK[0x300C]) = 0;
  LODWORD(STACK[0x7B50]) = 0;
  STACK[0x10DF0] = 0;
  LODWORD(STACK[0x3704]) = 0;
  STACK[0xC454] = 0;
  LODWORD(STACK[0x4784]) = 0;
  STACK[0xC3F9] = 0;
  STACK[0x8DD0] = 0;
  STACK[0x8F78] = 0;
  STACK[0x61A8] = 0;
  LODWORD(STACK[0x7998]) = -371865839;
  STACK[0x5AB0] = 0;
  LODWORD(STACK[0x10BC]) = -371865839;
  v21 = (*(v15 + 8 * (v14 + 13717)))(*(&off_1010A0B50 + (v14 ^ 0x9F91)) - 1595487931, STACK[0x50E8], 16);
  v23 = STACK[0x1420] == 0;
  v22 = STACK[0x1B30];
  *v22 = 0x6100000400000820;
  v22[1] = 0x100080400;
  v22[2] = 0x8000220200000;
  v22[3] = 0x20040001000000;
  v23 = v23 || STACK[0x1A90] == 0;
  v26 = !v23 && STACK[0x5440] != 0 && STACK[0x6898] != 0;
  return (*(v15 + 8 * ((122 * v26) ^ v14)))(v21);
}

uint64_t sub_100409D88()
{
  v0 = STACK[0xF10] - 31147;
  STACK[0xED0] = STACK[0x1B80];
  return (*(STACK[0xF18] + 8 * (v0 ^ 0x591E)))();
}

uint64_t sub_100409EDC()
{
  STACK[0x5658] = v1;
  LODWORD(STACK[0x2564]) = -2132281506;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100409F7C(uint64_t a1)
{
  v3 = (v2 - 35099) | 0x9591;
  v4 = 327 * (v3 ^ 0x97DC) + v1;
  if (a1)
  {
    v5 = LODWORD(STACK[0x7D5C]) == v4;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(STACK[0xF18] + 8 * ((13 * ((v3 ^ v6) & 1)) ^ v3)))();
}

uint64_t sub_10040A05C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x956C]) = v1;
  LODWORD(STACK[0x9354]) = a1;
  return (*(STACK[0xF18] + 8 * (((a1 == -371865839) * ((v2 ^ 0x8F2E) + v2 - 15762 - 20920)) | (v2 - 28763))))();
}

uint64_t sub_10040A100@<X0>(unint64_t a1@<X8>)
{
  STACK[0x5658] = a1;
  LODWORD(STACK[0x2564]) = -1813191686;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10040A17C()
{
  v2 = STACK[0x4DF0];
  *(v2 - 0x427A3CD3E8C5DA27) = STACK[0x550C];
  *(v2 - 0x427A3CD3E8C5DA07) = STACK[0x7534];
  *(v2 + v0) = STACK[0x82E8];
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8168)))(STACK[0x8100], v2 - 0x427A3CD3E8C5DA1FLL, 24);
  *STACK[0x31E0] = v2;
  return (*(v3 + 8 * v1))(v4);
}

uint64_t sub_10040A21C()
{
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 11835)))(STACK[0xEC0], LODWORD(STACK[0xEB0]), 4294950242, 40665, 109, 3587000818, 23860, 35644);
}

uint64_t sub_10040A2DC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(v5 + v6) ^ v8) - (*(a5 + v6) ^ v8);
  v13 = (v12 ^ v9) + v11 + (v10 & (2 * v12));
  v15 = a1 + v6 == 20 || v13 != a2;
  return (*(STACK[0xF18] + 8 * ((v15 * a3) ^ v7)))();
}

uint64_t sub_10040A38C@<X0>(int a1@<W1>, unsigned int a2@<W8>)
{
  *(v2 + 8 * a2) = v4;
  v5 = ((a1 - 2095231736) & 0x7CE28BBF) + *(v3 + 8) - 35642;
  ++*(v3 + 4);
  *(v3 + 8) = v5;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10040A4F8()
{
  v1 = STACK[0xF18];
  v2 = *(v1 + 8 * ((((*(STACK[0xF18] + 8 * ((v0 ^ 0x87AB) + 4751)))(24) != 0) * (((((v0 ^ 0x87AB) + 1063650536) & 0xC099D7FF) - 2528) ^ (109 * (v0 ^ 0x3EE5)))) ^ v0 ^ 0x87AB));
  return v2();
}

uint64_t sub_10040A5F8()
{
  v1 = STACK[0xF10] + 2520;
  STACK[0x2748] = v0;
  return (*(STACK[0xF18] + 8 * v1))();
}

uint64_t sub_10040A620()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))(v1);
  return (*(v2 + 8 * (v0 - 18911)))(v3);
}

uint64_t sub_10040A75C()
{
  v2 = 17902189 * ((((&STACK[0x10000] + 3800) | 0x6C4EC8CE) - ((&STACK[0x10000] + 3800) | 0x93B13731) - 1817102543) ^ 0xE201DEDE);
  LODWORD(STACK[0x10ED8]) = (v1 ^ 0xFD1A) - v2 - 390;
  LODWORD(STACK[0x10EDC]) = ((((v0 ^ 0xFAC1E1A) - 262938138) ^ ((v0 ^ 0x24813644) - 612447812) ^ ((((((v1 ^ 0xFD1A) + 1531873752) & 0xA4B17FC3) - 1023903860) ^ v0) + 1023873201)) - 41945309) ^ v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * ((v1 ^ 0xFD1A) + 24238)))(&STACK[0x10ED8]);
  v5 = LOBYTE(STACK[0x10EE0]) != ((((v1 ^ 0x1A) - 44) & 0xC7) + 125);
  return (*(v3 + 8 * (((4 * v5) | (16 * v5)) ^ v1 ^ 0xFD1A)))(v4);
}

uint64_t sub_10040A8E8()
{
  STACK[0x8FE8] = *(STACK[0x8900] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v1;
  LODWORD(STACK[0x7FD8]) = 1986359923;
  LODWORD(STACK[0x704C]) = -2116087632;
  LODWORD(STACK[0x4A8C]) = -371865840;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * ((v0 + 5368) ^ v0 ^ (14611 * (v0 == -111465259)))))();
}

uint64_t sub_10040A990()
{
  STACK[0x8688] = v0 + 8;
  v2 = STACK[0xF18];
  STACK[0x5CF8] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * ((v1 + 6348) ^ v1)))();
}

uint64_t sub_10040AB58(unsigned int a1)
{
  v5 = v2 < v4;
  if (v5 == v1 + 1 > a1)
  {
    v5 = ((v3 - 1826902024) & 0x6CE476D5 ^ 0x1300D356u) + v1 < v2;
  }

  return (*(STACK[0xF18] + 8 * ((v5 * (((v3 - 7757) | 0x8280) ^ 0x93FD)) ^ v3)))();
}

uint64_t sub_10040AC20()
{
  v2 = STACK[0x66A0];
  *(*v2 + 24) = v1;
  return (*(STACK[0xF18] + 8 * ((((((v0 - 28833) ^ (*(*v2 + 24) == 0)) & 1) == 0) * (v0 - 30101)) ^ v0)))();
}

uint64_t sub_10040AC84()
{
  STACK[0x9008] = 0;
  v1 = STACK[0xF18];
  STACK[0x8390] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1676 ^ (11750 * (v0 + 1602232810 > ((v0 + 1915045976) & 0x8DDAAFB3 ^ 0x789F23A2))))))();
}

uint64_t sub_10040AD3C()
{
  v5 = STACK[0xE80];
  *v0 = LODWORD(STACK[0xDF0]) ^ v1 ^ (2 * (v3 & (2 * (v3 & (2 * ((((v3 & (2 * v4)) ^ v2) << ((LODWORD(STACK[0xE80]) - 110) ^ 0x19)) & v3 ^ v2)) ^ v2)) ^ v2));
  return (*(STACK[0xF18] + 8 * (((((LODWORD(STACK[0x2E30]) ^ 0xB66BC4A) - 191282250) ^ ((LODWORD(STACK[0x2E30]) ^ 0x47443881) - 1195653249) ^ ((LODWORD(STACK[0x2E30]) ^ 0x6475C598) - 1685439896)) == -676806995) ^ v5)))();
}

void *sub_10040AE90()
{
  v0 = (STACK[0xF10] - 517690243) & 0x1EDACFE7;
  v1 = STACK[0xF10] - 30936;
  v2 = STACK[0xF18];
  STACK[0x3F68] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x8B6 ^ v0)))(&STACK[0x6028]);
}

uint64_t sub_10040B07C()
{
  LODWORD(STACK[0x34A0]) = v2;
  v3 = (((v2 ^ 0xB022B70F) + ((v1 + 3675) ^ 0x4FDDC3CA)) ^ ((v2 ^ 0x22D0038F) - 584057743) ^ (((((2 * v1) ^ 0xEE7E) - 2057613676) ^ v2) + 2057607598)) + 1705166696;
  v4 = (((*(v0 + 104) ^ 0x11F43222) - 301216290) ^ ((*(v0 + 104) ^ 0x24298F3E) - 606703422) ^ ((*(v0 + 104) ^ 0xDC087A0D) + 603424243)) + 936295335;
  v5 = v4 < -839322474;
  v6 = v3 < v4;
  if (v3 < -839322474 != v5)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((51650 * v6) ^ v1)))();
}

uint64_t sub_10040B198@<X0>(int a1@<W8>)
{
  v2 = v1 + 0x3AE1413A0D5C96C5;
  if (v1 < 0x3AE1413A0D5C96D2)
  {
    v2 = 0x75C282741AB92D97;
  }

  v3 = (((v2 ^ 0xDAC281C697A1DFE4) + 0x50FFFC4D72E70DA0) ^ v2 ^ ((v2 ^ 0x24D9E3D74E793771) - 0x511B61A354C01AF5) ^ ((v2 ^ 0x17EFFFF5FF6A9A57) - 0x622D7D81E5D3B7D3) ^ (((2 * a1) ^ 0x160B621BD94D950ALL) + (v2 ^ 0x9C361F903C0B5F46))) & 0xFFFFFFFFFFFFFFFCLL;
  STACK[0x90C0] = (((v3 ^ 0x1031105F65275192) + 0x38ADC6930A4EC071) ^ ((v3 ^ 0x2AAFE33C53A134C4) + 0x23335F03CC8A527) ^ ((v3 ^ 0x4F5C71172C3F48D2) + 0x67C0A7DB4356D931)) - 0x5D5E54B875D0BC4FLL;
  v4 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * a1);
  return (*(v4 + 8 * (a1 + 2231)))();
}

uint64_t sub_10040B3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0xF18];
  STACK[0x40F8] = *(STACK[0xF18] + 8 * v6);
  return (*(v7 + 8 * (((v6 + 43088) ^ 0xABE8) + v6)))(a1, a2, a3, a4, a5, a6, &STACK[0xA237]);
}

uint64_t sub_10040B3F0()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 25713)))(STACK[0x4108], v1 + 4, 24);
  *(v1 + 28) = STACK[0x18EC];
  *STACK[0x47D0] = v1;
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_10040B440()
{
  v1 = *STACK[0x3BD0];
  STACK[0x15A0] = STACK[0x4258];
  STACK[0x24B8] = v1;
  STACK[0x1EF8] = 0;
  return (*(STACK[0xF18] + 8 * (((((v1 == 0) ^ (v0 + 42)) & 1) * ((v0 - 271994136) & 0x10369B3B ^ 0x8B35)) ^ v0)))();
}

uint64_t sub_10040B560()
{
  v0 = LODWORD(STACK[0xED0]) - 6100;
  LODWORD(STACK[0x9264]) = 371892093;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10040B5E8@<X0>(uint64_t a1@<X8>)
{
  v3 = ((2 * v2) & 0x1FB3FEDFCLL) + 0x714040406E0C83FBLL + ((((v1 + 1156765613) & 0xBB0C639E) - 0x7140404002600B9ELL) ^ v2);
  v4 = ((2 * a1) & 0x175AFC7EELL) + (a1 ^ 0x6FEF776FBAD7E3F7) + (((v1 - 9928) | 0x902u) ^ 0x90108890B0D43F74);
  v5 = v3 < 0x6BAC7AF5;
  v6 = v3 > v4;
  if (v4 < 0x6BAC7AF5 != v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = 371891407;
  }

  else
  {
    v8 = -371865839;
  }

  LODWORD(STACK[0x5CF4]) = v8;
  return (*(STACK[0xF18] + 8 * (((4 * !v7) | (8 * !v7)) ^ v1)))();
}

uint64_t sub_10040B790@<X0>(int a1@<W8>)
{
  v2 = (a1 - 1227095621) & 0x492398FE;
  v3 = *(STACK[0x8900] - 0x217E172EFA1E81CLL);
  v4 = 1112314453 * ((((&STACK[0x10000] + 3800) | 0x4DD58154) - ((&STACK[0x10000] + 3800) & 0x4DD58150)) ^ 0xA283AB8D);
  v5 = v4 + LODWORD(STACK[0x2B24]) * (((v2 + 1827583617) & 0x9311CBBF) + 930533556);
  STACK[0x10EF8] = &STACK[0xF28] ^ 0x9A4000815EE1E11;
  LODWORD(STACK[0x10EF0]) = (v1 ^ 0xF302F526) + v4;
  LODWORD(STACK[0x10EEC]) = v5 - 70314178;
  LODWORD(STACK[0x10EE8]) = (v2 + 316109845) ^ v4;
  STACK[0x10EE0] = v3;
  v6 = STACK[0xF18];
  v7 = (*(STACK[0xF18] + 8 * (v2 + 50286)))(&STACK[0x10ED8]);
  return (*(v6 + 8 * ((12334 * (LODWORD(STACK[0x10ED8]) == -371865839)) ^ v2)))(v7);
}

uint64_t sub_10040B8D4()
{
  v4 = v3 - 1;
  *(v0 + 4 * v4 + 16) = *(v1 + 4 * v4);
  return (*(STACK[0xF18] + 8 * ((2213 * (v4 == (v2 ^ 0x6712u) - 50257)) ^ v2)))();
}

uint64_t sub_10040B970()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xFB7Fu)))(266);
  v3 = STACK[0x358];
  STACK[0x3C8] = v2;
  return (*(v3 + 8 * (((v2 != 0) * (((v0 - 11396) | 0xB018) ^ 0xB546)) ^ v0)))();
}

uint64_t sub_10040BAFC@<X0>(int a1@<W8>)
{
  STACK[0x60B8] = &STACK[0x3F70];
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = 415156677;
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_10040BB3C()
{
  v1 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v0);
  return (*(v1 + 8 * (v0 ^ 0x1F4D)))();
}

uint64_t sub_10040BBD8()
{
  v1 = STACK[0xF18];
  (*(STACK[0xF18] + 8 * (v0 ^ 0xD51C)))(STACK[0x6A98]);
  STACK[0x6A98] = 0;
  STACK[0x10EE0] = *(STACK[0x78B0] + 280);
  LODWORD(STACK[0x10ED8]) = v0 - 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x5B07298) - (&STACK[0x10000] + 3800) - 95449760) ^ 0xEADC9BEA) + 28895;
  STACK[0x10EF0] = &STACK[0x6A98];
  STACK[0x10EF8] = &STACK[0x8BA4];
  v2 = (*(v1 + 8 * (v0 + 43934)))(&STACK[0x10ED8]);
  return (*(v1 + 8 * (((LODWORD(STACK[0x10EE8]) == ((v0 + 21382) ^ 0xE9D5B42A)) * (((v0 + 354287178) & 0xEAE1EF79) + 6838)) ^ v0)))(v2);
}

uint64_t sub_10040BE0C()
{
  LODWORD(STACK[0x949C]) = *STACK[0x36B0] - (((11627 * (v1 ^ 0x4560)) ^ 0xD3ABD4F4) & (2 * *STACK[0x36B0])) - 371865839;
  STACK[0x83B0] = v0;
  v2 = STACK[0x7690];
  v3 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x5888] = v3;
  STACK[0x7690] = v2 + 576;
  STACK[0x10ED8] = v3;
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((&STACK[0x10000] + 3800) ^ 0xB6BB3266) + 27472;
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v1 + 34134)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((11 * (LODWORD(STACK[0x10EE0]) == v1 - 371883601)) ^ v1)))(v5);
}

uint64_t sub_10040BF4C()
{
  v1 = STACK[0x138C];
  v2 = STACK[0x89A0];
  v3 = 634647737 * (((&STACK[0x10ED8] | 0x8985160F15F7B6F0) - &STACK[0x10ED8] + (&STACK[0x10ED8] & 0x767AE9F0EA084908)) ^ 0x535EB9E07861990CLL);
  STACK[0x10EE0] = STACK[0x15C8];
  STACK[0x10ED8] = v3 + (((v2 ^ 0x5FFF79957A3637F1) - 0x5FFF79957A3637F1) ^ ((v2 ^ 0xED0EF447CB6BD981) + 0x12F10BB83494267FLL) ^ ((v2 ^ 0xBB70B4DE9EB07C36) + 0x448F4B21614F83CALL)) + 0x47272BD21B052DDFLL;
  LODWORD(STACK[0x10EEC]) = v3 + (((v0 ^ 0x9D67) - 29562) ^ 0x6E0BDDD6) * v1 + 1573703399;
  LODWORD(STACK[0x10EE8]) = v3 + v0 + 41208;
  STACK[0x10EF0] = &STACK[0x17CC];
  v4 = STACK[0xF18];
  v5 = (*(STACK[0xF18] + 8 * (v0 + 46479)))(&STACK[0x10ED8]);
  return (*(v4 + 8 * ((33189 * (LODWORD(STACK[0x10EF8]) == -371865839)) ^ v0)))(v5);
}

uint64_t sub_10040C1B0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x3CF8] = a1;
  STACK[0x6DB0] = v4;
  STACK[0x1020] = v3;
  LODWORD(STACK[0x4254]) = v2;
  LODWORD(STACK[0x5D00]) = 3072;
  *(v5 + 2524) = 256;
  return (*(STACK[0xF18] + 8 * (((a1 == 0x7E666516A39B34A6) * (((v1 ^ 0x9F5B4840) + 1621456742) ^ (v1 + 11981))) ^ v1)))();
}

uint64_t sub_10040C4E0@<X0>(int a1@<W0>, int a2@<W8>)
{
  v6 = STACK[0x360] & 0x4353BECB;
  LODWORD(STACK[0x67C]) = v2;
  LODWORD(STACK[0x680]) = a2;
  LODWORD(STACK[0x684]) = v3;
  return (*(STACK[0x430] + 8 * (((((a1 & 0x20000000) == (v6 ^ v5)) ^ v4) & 1 | (2 * ((((a1 & 0x20000000) == (v6 ^ v5)) ^ v4) & 1))) ^ LODWORD(STACK[0x35C]))))();
}

uint64_t sub_10040C53C(uint64_t a1, unint64_t a2)
{
  v5 = STACK[0x30E0] + v2;
  STACK[0x1718] = v5;
  LODWORD(STACK[0xED0]) = 106;
  LOBYTE(STACK[0x1AF3]) = 106;
  STACK[0x6920] = 0;
  LODWORD(STACK[0x7850]) = -371865839;
  STACK[0x3930] = STACK[0x660];
  STACK[0x2A60] = a2;
  STACK[0x85E8] = v5;
  LODWORD(STACK[0x4874]) = v4;
  LODWORD(STACK[0x726C]) = -187458873;
  return (*(STACK[0xF18] + 8 * v3))();
}

uint64_t sub_10040C5C8@<X0>(int a1@<W8>)
{
  v5 = *(v2 - 0x217E172EFA1E81CLL);
  v6 = STACK[0xF18];
  STACK[0x9740] = *(STACK[0xF18] + 8 * v3);
  STACK[0xB980] = v5;
  LODWORD(STACK[0xB988]) = v4;
  if (v5)
  {
    v7 = v4 == ((v1 - 1349) ^ 0x59441771);
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && a1 != ((v1 - 1557402754) & 0x5CD385C7) - 371866293;
  return (*(v6 + 8 * ((23 * v9) ^ v1)))();
}

uint64_t sub_10040C65C()
{
  STACK[0x5C50] = (((LODWORD(STACK[0x14B8]) ^ 0x2B9DB3F2E5968DDLL) - 0x2B9DB3F2E5968DDLL) ^ ((LODWORD(STACK[0x14B8]) ^ 0x27E89074E950233ALL) - 0x27E89074E950233ALL) ^ (((v0 + 29678 + 0x25514B4B2EDC01BBLL) ^ LODWORD(STACK[0x14B8])) - 0x25514B4B2EDC8CF6)) + 0x3AE1413AF7325DD3;
  LODWORD(STACK[0x1374]) = 54106783;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10040C724()
{
  *(v2 - 152) = v1 + 1012831759 * ((((v2 - 152) | 0xF5F9E80A) - ((v2 - 152) | 0xA0617F5) + 168171509) ^ 0xE56AFE80) + 23023;
  v3 = (*(v0 + 8 * (v1 ^ 0x81F0)))(v2 - 152);
  return (*(v0 + 8 * (((*(v2 - 148) == -371865839) * (((v1 + 5535) | 0xC8E) ^ 0x55E7)) ^ v1)))(v3);
}

uint64_t sub_10040C7C4()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v1 + 8 * (v0 - 18855)))(v2);
}

uint64_t sub_10040C9DC@<X0>(int a1@<W8>)
{
  STACK[0xB548] = v3;
  LODWORD(STACK[0xB554]) = v1;
  STACK[0xB558] = v2;
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(STACK[0xF18] + 8 * (((((a1 + 28) ^ v5) & 1) * ((a1 - 577907072) & 0x22728FBB ^ 0x8AE4)) ^ a1)))();
}

uint64_t sub_10040CA48@<X0>(__int16 a1@<W8>)
{
  v2 = *(STACK[0x1C58] - 0x217E172EFA1E81CLL);
  v3 = STACK[0x1494];
  v4 = 139493411 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x8C709317) + ((&STACK[0x10000] + 3800) | 0x738F6CE8))) ^ 0x805D7252);
  LOWORD(STACK[0x10EFC]) = -32733 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x9317) + ((&STACK[0x10000] + 3800) | 0x6CE8))) ^ 0x7252) + a1 - 12817 + 110 * (v1 ^ 0x3D53);
  STACK[0x10EE0] = &STACK[0x2694];
  LODWORD(STACK[0x10EE8]) = v4 - 231254985;
  STACK[0x10EF0] = v2;
  LODWORD(STACK[0x10ED8]) = v1 - v4 + 29582;
  LODWORD(STACK[0x10EF8]) = v4 + (v1 ^ 0x3D53) + 21783 + 1945538087 * v3 + 777052179;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 36169)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * ((97 * (LODWORD(STACK[0x10F00]) == 1497668682)) ^ v1)))(v6);
}

uint64_t sub_10040CD00()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0x4192)))();
  return (*(v1 + 8 * (v0 - 5674)))(v2);
}

uint64_t sub_10040CD4C()
{
  *v3 = 0;
  v4 = v1 + 48 * v2;
  *(v4 + 16) = 0;
  *(v4 + 8) = 0;
  *(v4 + 4) = 0;
  *(v4 + 20) = 0x3E54CF6A00000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1850287412;
  return (*(STACK[0xF18] + 8 * v0))();
}

void *sub_10040CE00()
{
  v1 = STACK[0x3B58];
  v2 = *(STACK[0x3B58] + 280);
  v3 = *(STACK[0x3B58] + 12);
  LODWORD(STACK[0x144C]) = *(STACK[0x3B58] + 8);
  LODWORD(STACK[0x87BC]) = v3;
  STACK[0x7B38] = v2;
  v4 = *(v1 + 296) + 4;
  STACK[0x5EA8] = v1 + 256;
  v5 = STACK[0x7690];
  v6 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x20B8] = v6;
  STACK[0x2520] = (v6 + 16);
  STACK[0x7690] = v5 + 32;
  STACK[0x7748] = v2;
  STACK[0x6E80] = v4;
  LODWORD(STACK[0x56AC]) = 2065143989;
  v7 = STACK[0xF18];
  STACK[0x37B8] = *(STACK[0xF18] + 8 * v0);
  return (*(v7 + 8 * (v0 ^ 0x39D9 ^ (1635 * (v0 != -368473573)))))(&STACK[0x56AC]);
}

uint64_t sub_10040CEC0@<X0>(int a1@<W4>, int a2@<W8>)
{
  v4 = (((a1 ^ 0x26D59A24) - 651532836) ^ ((a1 ^ 0x11E721B4) - 300360116) ^ ((a1 ^ 0x2A4E3DEC) - 709770732)) + 1224293333 + (((*(v2 + 88) ^ 0x5AAF3D81) - 1521433985) ^ ((*(v2 + 88) ^ 0xC46AC73) - 205958259) ^ ((*(v2 + 88) ^ 0x4B95D6AF ^ (7063 * (a2 ^ 0x426C))) - 1268062094));
  *(v2 + 88) = v4 ^ ((v4 ^ 0x9167B956) + 1620600949) ^ ((v4 ^ 0xB21A4D26) + 1139121157) ^ ((v4 ^ 0x52A2AD12) - 1554154447) ^ ((v4 ^ 0x7FDF77BF) - 1910462818) ^ 0x137CA8A1;
  return (*(v3 + 8 * a2))();
}

uint64_t sub_10040D0CC()
{
  v1 = STACK[0xF18];
  v2 = *(STACK[0xF18] + 8 * v0);
  STACK[0xED0] = v2;
  STACK[0x8F00] = v2;
  return (*(v1 + 8 * ((v0 + 15095) ^ v0)))();
}

uint64_t sub_10040D2C0@<X0>(unint64_t a1@<X8>)
{
  v6 = v3 + 48 * v5;
  v7 = *(v6 + 16);
  LODWORD(STACK[0x8150]) = *(v6 + 12) - ((2 * *(v6 + 12)) & 0xD3AB8E22) + (((v4 - 41539) | 0x802) ^ 0xE9D5DF26);
  LODWORD(STACK[0x6978]) = v7 - ((2 * v7) & 0xD3AB8E22) - 371865839;
  STACK[0x3200] = STACK[0x6388];
  STACK[0x8060] = STACK[0x8118];
  v8 = STACK[0x5D98];
  STACK[0x3CD8] = STACK[0x5D98];
  LODWORD(STACK[0x3948]) = *(v6 + 20) - ((2 * *(v6 + 20)) & 0xD3AB8E22) - 371865839;
  v9 = *(v6 + 32);
  STACK[0x70F0] = v9;
  STACK[0x36C8] = a1;
  LODWORD(STACK[0x83E0]) = v1;
  LODWORD(STACK[0x4234]) = v2;
  STACK[0x65B8] = 0;
  if (v8 | v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = LODWORD(STACK[0x3418]) == -371866690;
  }

  v12 = !v10 || STACK[0x1DC0] == 0x22EE7698899D41C8;
  return (*(STACK[0xF18] + 8 * ((233 * v12) ^ v4)))();
}

uint64_t sub_10040D3C0()
{
  v2 = STACK[0x19EC];
  STACK[0x8FE8] = *(STACK[0x7AA0] - 0x217E172EFA1E81CLL);
  LODWORD(STACK[0x44A8]) = v2;
  LODWORD(STACK[0x704C]) = -2116087606;
  LODWORD(STACK[0x7FD8]) = 1970496882;
  LODWORD(STACK[0x4A8C]) = v1 ^ 0xC638F0F1 ^ v0 ^ 0xB2AE;
  STACK[0x5B78] = 0;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10040D470@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x21A4]) = (((a1 ^ 0xB646) + 657652520) & 0xD8CCE4FF ^ 0xEED13E16) + v1 + (((a1 ^ 0xB646) - 27956 + ((LODWORD(STACK[0x34BC]) << 7) ^ 0x4BF9B324) - 196108883) ^ (((LODWORD(STACK[0x34BC]) << 7) ^ 0xA7F04714) + 407257400) ^ (((LODWORD(STACK[0x34BC]) << 7) ^ 0xEC09F430) + 1405088276));
  v2 = LODWORD(STACK[0x3920]) != 257;
  LOBYTE(STACK[0x8D3B]) = LODWORD(STACK[0x3920]) == 257;
  return (*(STACK[0xF18] + 8 * ((43 * v2) ^ a1 ^ 0xB646)))();
}

uint64_t sub_10040D5B8@<X0>(int a1@<W8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(a65 - 1401400883) != 1 || *(*(&off_1010A0B50 + a1 - 10585) - 228216043) == ((a1 - 12020) ^ 0xC83B) - 51259;
  v68.n128_u64[0] = 0x8000000080000000;
  v68.n128_u64[1] = 0x8000000080000000;
  return (*(v65 + 8 * ((496 * (((a1 - 1) ^ v67) & 1)) ^ a1)))(2935106286, 53507745, 3112564837, 340239404, 1022650558, 392425124, 2771981405, 3472876398, a2, a3, a4, a5, a6, v68, *&STACK[0x2C0], *&STACK[0x2B0]);
}

uint64_t sub_10040D734@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W6>, int a4@<W8>)
{
  v6 = (a4 - 22948);
  v7 = ((v4 ^ 0x10871272) + 1504804914) ^ ((v4 ^ 0x37C08B96) + 2130057686) ^ (((a4 - 20508) ^ 0x6E71791E) + (v4 ^ 0x274799E4));
  v8 = (v7 - 668829406);
  if ((v7 + 1944737096) < 0xBD20E76C != (v7 + 1944737064) < 0xBD20E76C)
  {
    v9 = (v7 + 1944737096) < 0xBD20E76C;
  }

  else
  {
    v9 = v7 + 1944737064 < (v7 + 1944737096);
  }

  return (*(v5 + 8 * ((!v9 * a3) ^ v6)))(v8, a1, a2, 313262080, v6);
}

uint64_t sub_10040D814@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x8DE8]) = a1 + v1 + ((v2 > 0x1Au) << 8) - 125;
  v4 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (((v3 + 3961) ^ 0x199A) + v3)))();
}

uint64_t sub_10040D8B4()
{
  v1 = STACK[0xF18];
  STACK[0x3450] = *(STACK[0xF18] + 8 * (v0 - 32880));
  return (*(v1 + 54248))();
}

uint64_t sub_10040DA20()
{
  v0 = STACK[0xC40];
  v1 = LODWORD(STACK[0xC40]) - 26101;
  STACK[0x2890] = 0;
  return (*(STACK[0xF18] + 8 * ((2042 * (((v1 ^ (LODWORD(STACK[0x2C9C]) > v0 - 27639)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_10040DAAC@<X0>(char a1@<W0>, char a2@<W7>, char a3@<W8>)
{
  v8 = STACK[0xED0];
  v9 = (((*STACK[0xED0] ^ 0x6C) - 108) ^ ((*STACK[0xED0] ^ 0x71) - 113) ^ ((*STACK[0xED0] ^ 0x42) - 66)) + (((a2 ^ 0xA4) + 92) ^ ((a2 ^ 0xB0) + 80) ^ ((a2 ^ 0x34) - 52));
  v10 = v9 - 91;
  v9 += 37;
  v11 = v9 & 0xDA;
  *STACK[0xED0] = v9 ^ (2 * ((v10 ^ 0x58) & (2 * ((v10 ^ 0x58) & (2 * ((v10 ^ 0x58) & (2 * ((v10 ^ 0x58) & (2 * ((v10 ^ 0x58) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ 5;
  if (v4 == 676806994)
  {
    v12 = v8;
  }

  else
  {
    v12 = (v8 + 1);
  }

  v13 = a3 + (((*v12 ^ 0xA) - 10) ^ ((*v12 ^ 0x63) - 99) ^ ((*v12 ^ 0x36) - 54)) + 96;
  v14 = v13 & 0xC ^ 0x3E;
  *v12 = v13 ^ (2 * ((v13 ^ 0x50) & (2 * ((v13 ^ 0x50) & (2 * ((v13 ^ 0x50) & (2 * ((v13 ^ 0x50) & (2 * ((v13 ^ 0x50) & (2 * v14) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ v14)) ^ 0x53;
  v15 = 2 % (v4 ^ 0x28574153u);
  v16 = v5 + (((*(v8 + v15) ^ 0x27) - 39) ^ ((*(v8 + v15) ^ 0xF7) + 9) ^ ((*(v8 + v15) ^ 0x8F) + 113)) + 84;
  v17 = v16 & 0xC0 | 0xD;
  *(v8 + v15) = v16 ^ (2 * ((v16 ^ 0x36) & (2 * ((v16 ^ 0x36) & (2 * ((v16 ^ 0x36) & (2 * ((v16 ^ 0x36) & (2 * ((v16 ^ 0x36) & (2 * ((v16 ^ 0x36) & 0x36 ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ v17)) ^ 0x9F;
  v18 = STACK[0x2E30];
  v19 = LODWORD(STACK[0x2E30]) ^ 0x28574153;
  v20 = v3 + (((*(v8 + 3 % v19) ^ 0x64) - 100) ^ ((*(v8 + 3 % v19) ^ 0xEC) + 20) ^ ((*(v8 + 3 % v19) ^ 0xD7) + 41)) - 110;
  v21 = ~v20 & 0x35;
  v22 = 2 * (((2 * ~v20) & 0x4A | v21) ^ (2 * ~v20) & v20);
  v23 = 2 * ((v22 & 0x4A | v21) ^ v22 & v20);
  v24 = 2 * ((v23 & 0x4A | v21) ^ v23 & v20);
  v25 = 2 * ((v24 & 0x4A | v21) ^ v24 & v20);
  v26 = 2 * ((v25 & 0x4A | v21) ^ v25 & v20);
  *(v8 + 3 % v19) = v20 ^ (2 * ((v26 & 0x4A | v21) ^ v26 & v20)) ^ 0x6A;
  v27 = *(v8 + 4 % v19);
  v28 = (((v27 ^ 1) - 1) ^ ((v27 ^ 0xFFFFFFC2) + 62) ^ ((v27 ^ 0xFFFFFF9C) + 100)) + LODWORD(STACK[0xD20]);
  v29 = v28 & 0x6B ^ 0xC5;
  *(v8 + 4 % v19) = v28 ^ (2 * ((v28 ^ 0x60) & (2 * ((v28 ^ 0x60) & (2 * ((v28 ^ 0x60) & (2 * ((v28 ^ 0x60) & (2 * (v28 & (2 * (((2 * v28) & 0x42 ^ 0xA) & v28 ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ v29)) ^ 0x34;
  v30 = *(v8 + 5 % v19);
  v31 = (((v30 ^ 0xFFFFFFFC) + 4) ^ ((v30 ^ 0x16) - 22) ^ ((v30 ^ 0xFFFFFFB5) + 75)) + LODWORD(STACK[0xD00]);
  v32 = v31 & 0x8A ^ 0xB6;
  *(v8 + 5 % v19) = v31 ^ (2 * ((v31 ^ 0x2C) & (2 * ((v31 ^ 0x2C) & (2 * ((v31 ^ 0x2C) & (2 * ((v31 ^ 0x2C) & (2 * ((v31 ^ 0x2C) & (2 * v32) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ v32)) ^ 0xD5;
  v33 = (((a1 ^ 0xEB) + 21) ^ ((a1 ^ 0xCC) + 52) ^ ((a1 ^ 0x13) - 19)) + (((*(v8 + 6 % v19) ^ 0x16) - 22) ^ ((*(v8 + 6 % v19) ^ 0x71) - 113) ^ ((*(v8 + 6 % v19) ^ 0x38) - 56)) - 29;
  LOBYTE(v31) = v33 & 2 | 0x69;
  *(v8 + 6 % v19) = v33 ^ (2 * ((v33 ^ 0x30) & (2 * ((v33 ^ 0x30) & (2 * ((v33 ^ 0x30) & (2 * ((v33 ^ 0x30) & (2 * ((v33 ^ 0x30) & (2 * (((4 * ((v33 & 2) != 0)) | 0x32) & (v33 ^ 0x30) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ 0x5D;
  v34 = LODWORD(STACK[0xE00]) + (*(v8 + 7 % v19) ^ 0x5F) - 95;
  LOBYTE(v31) = v34 & 0x7E ^ 0xD2;
  *(v8 + 7 % v19) = v34 ^ (2 * ((v34 ^ 0x58) & (2 * ((v34 ^ 0x58) & (2 * ((v34 ^ 0x58) & (2 * ((v34 ^ 0x58) & (2 * ((v34 ^ 0x58) & (2 * v31) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ 0x21;
  v35 = 8 % v19;
  v36 = *(v8 + 8 % v19);
  v37 = LODWORD(STACK[0xDD0]) + (((v36 ^ 0xFFFFFFFC) + 4) ^ ((v36 ^ 0x52) - 82) ^ ((v36 ^ 0xFFFFFFF1) + 15)) + 23;
  LOBYTE(v31) = v37 & 0xCB ^ 0x1B;
  *(v8 + v35) = v37 ^ (2 * ((v37 ^ 0x54) & (2 * ((v37 ^ 0x54) & (2 * ((v37 ^ 0x54) & (2 * ((v37 ^ 0x54) & (2 * ((v37 ^ 0x54) & (2 * (((2 * v37) & 0x2A ^ 0x1E) & v37 ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ v31)) ^ 0x94;
  v38 = v18 ^ 0x28574153;
  v39 = 9 % (v18 ^ 0x28574153u);
  LOBYTE(v18) = (((v6 ^ 2) - 2) ^ ((v6 ^ 0x8F) + 113) ^ ((v6 ^ 0xA6) + 90)) + (((*(v8 + v39) ^ 0x72) - 114) ^ ((*(v8 + v39) ^ 0x9E) + 98) ^ ((*(v8 + v39) ^ 0xB3) + 77)) - 94;
  v40 = v18 & 0x3C ^ 0xAA;
  *(v8 + v39) = v18 ^ (2 * ((v18 ^ 0x68) & (2 * ((v18 ^ 0x68) & (2 * ((v18 ^ 0x68) & (2 * ((v18 ^ 0x68) & (2 * ((v18 ^ 0x68) & (2 * v40) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ v40)) ^ 0x63;
  v41 = *(v8 + 0xA % v38);
  v42 = LODWORD(STACK[0xE40]) + (((v41 ^ 0x11) - 17) ^ ((v41 ^ 0x53) - 83) ^ ((v41 ^ 0x1D) - 29)) - 67;
  v43 = v42 & 0xAA ^ 0x88;
  *(v8 + 0xA % v38) = v42 ^ (2 * ((v42 ^ 0x18) & (2 * ((v42 ^ 0x18) & (2 * ((v42 ^ 0x18) & (2 * ((v42 ^ 0x18) & (2 * ((v42 ^ 0x18) & (2 * v43) | v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ 0xF5;
  v44 = *(v8 + 0xB % v38);
  v45 = (((v44 ^ 0x72) - 114) ^ ((v44 ^ 0x63) - 99) ^ ((v44 ^ 0x4E) - 78)) + LODWORD(STACK[0xE10]);
  v46 = v45 & 0x7A ^ 0x57;
  *(v8 + 0xB % v38) = v45 ^ (2 * ((v45 ^ 0x5C) & (2 * ((v45 ^ 0x5C) & (2 * ((v45 ^ 0x5C) & (2 * ((v45 ^ 0x5C) & (2 * ((v45 ^ 0x5C) & (2 * (v46 ^ v45 & 0x26)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ v46)) ^ 0x25;
  v47 = STACK[0x2E30];
  v48 = LODWORD(STACK[0x2E30]) ^ 0x28574153;
  v49 = *(v8 + 0xC % v48);
  v50 = (((STACK[0xD80] ^ 0x2F) - 47) ^ ((STACK[0xD80] ^ 0x54) - 84) ^ ((STACK[0xD80] ^ 0x24) - 36)) + (((v49 ^ 0xFFFFFFAD) + 83) ^ ((v49 ^ 0xFFFFFF88) + 120) ^ ((v49 ^ 0x7A) - 122)) - 46;
  LOBYTE(v44) = v50 & 0x22 ^ 0x2B;
  *(v8 + 0xC % v48) = v50 ^ (2 * ((v50 ^ 0x6C) & (2 * ((v50 ^ 0x6C) & (2 * ((v50 ^ 0x6C) & (2 * ((v50 ^ 0x6C) & (2 * ((v50 ^ 0x6C) & (2 * (v44 ^ v50 & 0xE)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ 0x7D;
  v51 = 0xD % v48;
  v52 = *(v8 + 0xD % v48);
  v53 = (((LODWORD(STACK[0xE20]) ^ 0xFFFFFFF3) + 13) ^ ((LODWORD(STACK[0xE20]) ^ 0x68) - 104) ^ ((LODWORD(STACK[0xE20]) ^ 0xFFFFFFC4) + 60)) + (((v52 ^ 0x1F) - 31) ^ ((v52 ^ 0xFFFFFF96) + 106) ^ ((v52 ^ 0xFFFFFFD6) + 42)) - 30;
  v54 = v53 & 0x42 ^ 0xD3;
  *(v8 + v51) = v53 ^ (2 * ((v53 ^ 0x5C) & (2 * ((v53 ^ 0x5C) & (2 * ((v53 ^ 0x5C) & (2 * ((v53 ^ 0x5C) & (2 * ((v53 ^ 0x5C) & (2 * (v54 ^ v53 & 0x1E)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ 0x1D;
  v55 = 0xE % (v47 ^ 0x28574153u);
  v56 = (((*(v8 + v55) ^ 5) - 5) ^ ((*(v8 + v55) ^ 0x6A) - 106) ^ ((*(v8 + v55) ^ 0x30) - 48)) + STACK[0xDA0];
  LOBYTE(v52) = (v56 - 64) & 0xAE;
  v56 += 64;
  *(v8 + v55) = v56 ^ (2 * ((v56 ^ 0x2C) & (2 * ((v56 ^ 0x2C) & (2 * ((v56 ^ 0x2C) & (2 * ((v56 ^ 0x2C) & (2 * ((v56 ^ 0x2C) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ 0xF1;
  v57 = 0xF % (v47 ^ 0x28574153u);
  v58 = (((*(v8 + v57) ^ 0x1F) - 31) ^ ((*(v8 + v57) ^ 0x4C) - 76) ^ ((*(v8 + v57) ^ 0xC) - 12)) + LODWORD(STACK[0xDE0]);
  v59 = v58 & 0x1F ^ 0x7D;
  *(v8 + v57) = v58 ^ (2 * ((v58 ^ 0x24) & (2 * ((v58 ^ 0x24) & (2 * ((v58 ^ 0x24) & (2 * ((v58 ^ 0x24) & (2 * (((2 * (((2 * v58) & 0x4A | 0x25) & v58)) ^ 0x3A) & (v58 ^ 0x24) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ v59)) ^ 0x40;
  v60 = 0x10 % (v47 ^ 0x28574153u);
  v61 = STACK[0xCE0] + (((*(v8 + v60) ^ 0x70) + 16) ^ ((*(v8 + v60) ^ 0xFFFFFF8F) + 113) ^ ((*(v8 + v60) ^ 0xFFFFFFA0) + 96)) + 17;
  LOBYTE(v57) = v61 & 0x50 ^ 0x41;
  *(v8 + v60) = v61 ^ (2 * ((v61 ^ 0x4E) & (2 * ((v61 ^ 0x4E) & (2 * ((v61 ^ 0x4E) & (2 * ((v61 ^ 0x4E) & (2 * (((2 * ((v57 | 0x1E) ^ v61 & 0x1E)) | v57) ^ (2 * ((v57 | 0x1E) ^ v61 & 0x1E)) & v61)) ^ v57)) ^ v57)) ^ v57)) ^ v57)) ^ 0xF;
  v62 = STACK[0x2E30];
  v63 = LODWORD(STACK[0x2E30]) ^ 0x28574153;
  v64 = *(v8 + 0x11 % v63);
  v65 = (((v64 ^ 0xFFFFFFEC) + 20) ^ ((v64 ^ 0x12) - 18) ^ ((v64 ^ 0xFFFFFFA1) + 95)) + LODWORD(STACK[0xE30]);
  LOBYTE(v44) = v65 & 9 | 0x46;
  *(v8 + 0x11 % v63) = v65 ^ (2 * ((v65 ^ 0xC) & (2 * ((v65 ^ 0xC) & (2 * ((v65 ^ 0xC) & (2 * ((v65 ^ 0xC) & (2 * ((v65 ^ 0xC) & (2 * ((v65 ^ 0xC) & (2 * v65) & 0x1A ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ v44)) ^ 0x56;
  v66 = *(v8 + 0x12 % v63);
  v67 = (((LODWORD(STACK[0xD70]) ^ 5) - 5) ^ ((LODWORD(STACK[0xD70]) ^ 0x12) - 18) ^ ((LODWORD(STACK[0xD70]) ^ 0x30) - 48)) + (((v66 ^ 0x3F) - 63) ^ ((v66 ^ 0xFFFFFFDE) + 34) ^ ((v66 ^ 0xFFFFFFBE) + 66)) - 87;
  v68 = v67 & 0x21 ^ 0x22;
  *(v8 + 0x12 % v63) = v67 ^ (2 * ((v67 ^ 0x5C) & (2 * ((v67 ^ 0x5C) & (2 * ((v67 ^ 0x5C) & (2 * ((v67 ^ 0x5C) & (2 * ((v67 ^ 0x5C) & (2 * ((v67 ^ 0x5C) & (2 * v68) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ v68)) ^ 0x7E;
  v69 = *(v8 + 0x13 % v63);
  v70 = (((v69 ^ 0xE) - 14) ^ ((v69 ^ 0xFFFFFFFE) + 2) ^ ((v69 ^ 0xFFFFFFAF) + 81)) + (((LODWORD(STACK[0xCF0]) ^ 0x4E) - 78) ^ ((LODWORD(STACK[0xCF0]) ^ 0xFFFFFFD1) + 47) ^ ((LODWORD(STACK[0xCF0]) ^ 0x6B) - 107));
  v71 = v70 & 1 | 0x34;
  *(v8 + 0x13 % v63) = (v70 + 122) ^ (2 * (((v70 + 122) ^ 0x58) & (2 * (((v70 + 122) ^ 0x58) & (2 * (((v70 + 122) ^ 0x58) & (2 * (((v70 + 122) ^ 0x58) & (2 * (((v70 + 122) ^ 0x58) & (2 * (((v70 + 122) ^ 0x58) & (2 * (v70 & 1)) | v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ v71)) ^ 0x5E;
  v62 ^= 0x28574153u;
  v72 = *(v8 + 0x14 % v62);
  v73 = LODWORD(STACK[0xE70]) + (((v72 ^ 0x37) - 55) ^ ((v72 ^ 0x18) - 24) ^ ((v72 ^ 0x70) - 112)) - 67;
  v74 = v73 & 0xE9 ^ 0xAD;
  *(v8 + 0x14 % v62) = v73 ^ (2 * ((v73 ^ 0x1E) & (2 * ((v73 ^ 0x1E) & (2 * ((v73 ^ 0x1E) & (2 * ((v73 ^ 0x1E) & (2 * ((v73 ^ 0x1E) & (2 * (((2 * (v73 & 0x1F)) ^ 0x76) & (v73 ^ 0x1E) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ v74)) ^ 0xB6;
  v75 = *(v8 + 0x15 % v62);
  v76 = LODWORD(STACK[0xCC0]) + (((v75 ^ 0x6D) - 109) ^ ((v75 ^ 0xFFFFFFD5) + 43) ^ ((v75 ^ 0xFFFFFFE7) + 25));
  v77 = v76 - 12;
  v78 = ((v76 + 116) & 0xF0 | 0xA) ^ (v76 - 12) & 0xF4;
  *(v8 + 0x15 % v62) = v77 ^ (2 * ((v77 ^ 0x70) & (2 * ((v77 ^ 0x70) & (2 * ((v77 ^ 0x70) & (2 * ((v77 ^ 0x70) & (2 * ((v77 ^ 0x70) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ 0x5B;
  v79 = 0x16 % v62;
  v80 = *(v8 + 0x16 % v62);
  v81 = (((v80 ^ 0x49) - 73) ^ ((v80 ^ 0xD) - 13) ^ ((v80 ^ 0x1B) - 27)) + LODWORD(STACK[0xD90]);
  v82 = v81 & 6 ^ 5;
  LOBYTE(v81) = v81 - 48;
  v83 = v82 ^ v81 & 0xDE;
  *(v8 + v79) = v81 ^ (2 * ((v81 ^ 0x5E) & (2 * ((v81 ^ 0x5E) & (2 * ((v81 ^ 0x5E) & (2 * ((v81 ^ 0x5E) & (2 * ((v81 ^ 0x5E) & (2 * (((2 * (v81 & 0xDE)) ^ 6) & (v81 ^ 0x1E) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ v83)) ^ 0x87;
  v84 = STACK[0x2E30];
  v85 = LODWORD(STACK[0x2E30]) ^ 0x28574153;
  v86 = *(v8 + 0x17 % v85);
  v87 = LODWORD(STACK[0xD30]) + (((v86 ^ 0x6E) - 110) ^ ((v86 ^ 0x7D) - 125) ^ ((v86 ^ 0x4C) - 76)) + 82;
  LOBYTE(v76) = (v87 & 0xF4 | 2) ^ v87 & 0xC;
  *(v8 + 0x17 % v85) = v87 ^ (2 * ((v87 ^ 0x74) & (2 * ((v87 ^ 0x74) & (2 * ((v87 ^ 0x74) & (2 * ((v87 ^ 0x74) & (2 * ((v87 ^ 0x74) & (2 * v76) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ v76)) ^ 0xA7;
  v88 = *(v8 + 0x18 % v85);
  v89 = (((LODWORD(STACK[0xCD0]) ^ 0xFFFFFFA0) + 96) ^ ((LODWORD(STACK[0xCD0]) ^ 0x2E) - 46) ^ ((LODWORD(STACK[0xCD0]) ^ 0xFFFFFFBC) + 68)) + (((v88 ^ 0xFFFFFF97) + 105) ^ ((v88 ^ 0x6B) - 107) ^ ((v88 ^ 0xFFFFFFA3) + 93)) - 58;
  LOBYTE(v86) = v89 & 0x59 ^ 0x4B;
  *(v8 + 0x18 % v85) = v89 ^ (2 * ((v89 ^ 0x4A) & (2 * ((v89 ^ 0x4A) & (2 * ((v89 ^ 0x4A) & (2 * ((v89 ^ 0x4A) & (2 * ((v89 ^ 0xA) & (2 * (((2 * v89) & 0x16 ^ 0x12) & (v89 ^ 2) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ v86)) ^ 6;
  v90 = *(v8 + 0x19 % v85);
  v91 = (((v90 ^ 0xFFFFFFD7) + 41) ^ ((v90 ^ 0xFFFFFFD8) + 40) ^ ((v90 ^ 0x50) - 80)) + LODWORD(STACK[0xDC0]);
  v92 = v91 & 0x60 ^ 0xEA;
  *(v8 + 0x19 % v85) = v91 ^ (2 * ((v91 ^ 0x2C) & (2 * ((v91 ^ 0x2C) & (2 * ((v91 ^ 0x2C) & (2 * ((v91 ^ 0x2C) & (2 * ((v91 ^ 0x2C) & (2 * v92) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ v92)) ^ 0x3F;
  v93 = 0x1A % (v84 ^ 0x28574153u);
  v94 = (((*(v8 + v93) ^ 0xC) - 12) ^ ((*(v8 + v93) ^ 0x65) - 101) ^ ((*(v8 + v93) ^ 0x36) - 54)) + LODWORD(STACK[0xD40]);
  LOBYTE(v89) = v94 & 0x83 ^ 0xB;
  *(v8 + v93) = v94 ^ (2 * ((v94 ^ 0xC) & (2 * ((v94 ^ 0xC) & (2 * ((v94 ^ 0xC) & (2 * ((v94 ^ 0xC) & (2 * ((v94 ^ 0xC) & (2 * (((2 * v94) & 0x1A ^ 0xE) & (v94 ^ 0xC) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ v89)) ^ 0xDC;
  v95 = 0x1B % (v84 ^ 0x28574153u);
  v96 = (((*(v8 + v95) ^ 0x7B) - 123) ^ ((*(v8 + v95) ^ 0xFFFFFFE1) + 31) ^ ((*(v8 + v95) ^ 0xFFFFFFC5) + 59)) + LODWORD(STACK[0xD60]);
  LOBYTE(v89) = v96 & 0x11 ^ 0x19;
  LOBYTE(v85) = 2 * ((2 * v96) ^ 0xEE ^ v89 ^ ((2 * v96) ^ 0xEE) & v96);
  LOBYTE(v85) = 2 * ((2 * (v85 ^ v89 ^ v85 & v96)) ^ v89 ^ (2 * (v85 ^ v89 ^ v85 & v96)) & v96);
  LOBYTE(v85) = 2 * ((2 * (v85 ^ v89 ^ v85 & v96)) ^ v89 ^ (2 * (v85 ^ v89 ^ v85 & v96)) & v96);
  *(v8 + v95) = v96 ^ (2 * (v85 ^ v89 ^ v85 & v96)) ^ 0x4E;
  v97 = 0x1C % (v84 ^ 0x28574153u);
  v98 = (((LODWORD(STACK[0xD50]) ^ 0xE) - 14) ^ ((LODWORD(STACK[0xD50]) ^ 0xFFFFFFBC) + 68) ^ ((LODWORD(STACK[0xD50]) ^ 0x46) - 70)) + (((*(v8 + v97) ^ 0x32) - 50) ^ ((*(v8 + v97) ^ 0x7C) - 124) ^ ((*(v8 + v97) ^ 0x11) - 17)) + 104;
  LOBYTE(v55) = v98 & 0x9D ^ 0xD9;
  *(v8 + v97) = v98 ^ (2 * ((v98 ^ 0x6A) & (2 * ((v98 ^ 0x6A) & (2 * ((v98 ^ 0x6A) & (2 * ((v98 ^ 0x6A) & (2 * ((v98 ^ 0x6A) & (2 * (((2 * v98) & 0x56 ^ 0x76) & (v98 ^ 0x62) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ 0xC2;
  v99 = LODWORD(STACK[0x2E30]) ^ 0x28574153;
  v100 = *(v8 + 0x1D % v99);
  v101 = LODWORD(STACK[0xDB0]) + (((v100 ^ 0x16) - 22) ^ ((v100 ^ 0x20) - 32) ^ ((v100 ^ 0x69) - 105)) - 96;
  LOBYTE(v96) = v101 & 0x95 ^ 0xB9;
  *(v8 + 0x1D % v99) = v101 ^ (2 * ((v101 ^ 0x22) & (2 * ((v101 ^ 0x22) & (2 * ((v101 ^ 0x22) & (2 * ((v101 ^ 0x22) & (2 * ((v101 ^ 0x22) & (2 * (((2 * v101) & 0x46 ^ 0x36) & (v101 ^ 0x22) ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ v96)) ^ 0xCA;
  v102 = *(v8 + 0x1E % v99);
  v103 = (((STACK[0xE60] ^ 0x4F) - 79) ^ ((STACK[0xE60] ^ 0xFFFFFFE3) + 29) ^ ((STACK[0xE60] ^ 0xFFFFFFF3) + 13)) + (((v102 ^ 0xFFFFFFDD) + 35) ^ ((v102 ^ 0xFFFFFFFB) + 5) ^ ((v102 ^ 0x79) - 121)) - 25;
  LOBYTE(v101) = v103 & 0x2F ^ 0x2C;
  *(v8 + 0x1E % v99) = v103 ^ (2 * ((v103 ^ 0x56) & (2 * ((v103 ^ 0x56) & (2 * ((v103 ^ 0x56) & (2 * ((v103 ^ 0x56) & (2 * ((v103 ^ 0x56) & (2 * ((v103 ^ 0x56) & (2 * v103) & 0x2E ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ v101)) ^ 0x70;
  v99 = 0x1F % v99;
  v104 = LODWORD(STACK[0xE90]) + (((*(v8 + v99) ^ 0x19) - 25) ^ ((*(v8 + v99) ^ 0xFFFFFF9B) + 101) ^ ((*(v8 + v99) ^ 0xFFFFFFDD) + 35)) - 7;
  *(v8 + v99) = v104 ^ (2 * (((2 * (((2 * (((2 * (((2 * (((2 * (v104 ^ 0x36)) & 0x6C ^ 0x1A) & (v104 ^ 0x36))) ^ 0x1A) & (v104 ^ 0x36))) ^ 0x1A) & (v104 ^ 0x36))) ^ 0x1A) & (v104 ^ 0x36))) ^ 0x1A) & (v104 ^ 0x76))) ^ 0x45;
  return (*(STACK[0xF18] + 8 * v7))();
}

uint64_t sub_10040F03C()
{
  v2 = *(v0 + 240);
  v3 = STACK[0x7A28];
  v4 = 1012831759 * ((2 * ((&STACK[0x10000] + 3800) & 0x27CA2DD8) - (&STACK[0x10000] + 3800) + 1479922210) ^ 0x48A6C4A8);
  LODWORD(STACK[0x10EF0]) = ((((v2 ^ 0xB98BCF73) + 1182019725) ^ ((v2 ^ 0x7DFFCCEC) - 2113916140) ^ (v1 - 765605272 + (v2 ^ 0x2DA1C48E))) - (((v2 & 0xF ^ 0x3DD48C59) + 682911557) ^ ((v2 & 0xF ^ 0x8E7C4A81) - 1692622435) ^ ((v2 & 0xF ^ 0xB3A8C6D9) - 1496830523)) + 722401428) ^ v4;
  STACK[0x10EE0] = v3;
  STACK[0x10EE8] = v3;
  LODWORD(STACK[0x10ED8]) = v1 - v4 - 12759;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 23485)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_10040F1EC()
{
  v1 = *(STACK[0x2140] - 0x10A99C80114D147FLL);
  STACK[0x10ED8] = &STACK[0x4B24];
  LODWORD(STACK[0x10EE0]) = (v0 - 20814) ^ (906386353 * ((((2 * ((&STACK[0x10000] + 3800) ^ 0xC200B780)) | 0x8A46198C) - ((&STACK[0x10000] + 3800) ^ 0xC200B780) - 1159924934) ^ 0xB6227662));
  STACK[0x10EE8] = v1 - 0x217E172EFA1E804;
  STACK[0x10EF0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0x487B)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((119 * (LODWORD(STACK[0x4B24]) == (((v0 ^ 0x832A) - 371863951) ^ (601 * (v0 ^ 0x832A))))) ^ v0)))(v3);
}

uint64_t sub_10040F38C()
{
  v0 = STACK[0xF10] - 31770;
  LODWORD(STACK[0x27D4]) = 1997798458;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_10040F3B4()
{
  LODWORD(STACK[0xEC0]) = (v0 & 4) == 0;
  LODWORD(STACK[0xEB0]) = (v2 - 643276920) & 0x26577EFB;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v2 ^ 0x5AED)))((v1 - 216864747));
  return (*(v3 + 8 * (((LODWORD(STACK[0xEB0]) - 28181) * LODWORD(STACK[0xEC0])) ^ v2)))(v4);
}

uint64_t sub_10040F424()
{
  v1 = v0 + 4012;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x504E)))();
  STACK[0x2400] = 0;
  LODWORD(STACK[0x7D5C]) = -371865839;
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10040F7BC()
{
  v2 = STACK[0x62C8];
  v3 = *(v0 + 1);
  v4 = LODWORD(STACK[0x68C4]);
  *(v3 + v4) = LOBYTE(STACK[0x19CF]) - 23;
  v5 = (v4 + 1);
  LODWORD(STACK[0x68C4]) = v5;
  v6 = STACK[0x8AF0];
  v7 = 1112314453 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0xAC3B2FBB) + ((&STACK[0x10000] + 3800) | 0x53C4D044))) ^ 0x436D0562);
  LODWORD(STACK[0x10EDC]) = (v1 + 679180694) ^ v7;
  LOWORD(STACK[0x10ED8]) = -28075 * ((-2 - ((~(&STACK[0x10000] + 3800) | 0x2FBB) + ((&STACK[0x10000] + 3800) | 0xD044))) ^ 0x562) + 3771;
  STACK[0x10EE8] = v3;
  STACK[0x10EE0] = v6;
  LODWORD(STACK[0x10EF0]) = v7 + (v1 ^ 0xB9F2) + 1599993265 * v5 + 1244262534;
  STACK[0x10EF8] = (v2 + 131);
  v8 = STACK[0xF18];
  v9 = (*(STACK[0xF18] + 8 * (v1 ^ 0xF839)))(&STACK[0x10ED8]);
  v10 = ((v5 ^ 0x3F7FF77BFABE7F6FLL) + v3 + ((2 * v5) & 0x1F57CFEDELL) - 0x3F7FF77BFABE7F6FLL);
  v10[19] = v2[150] ^ 0x5F;
  v10[18] = v2[149] ^ 0x5F;
  v10[17] = v2[148] ^ 0x5F;
  v10[16] = v2[147] ^ 0x5F;
  v10[15] = v2[146] ^ 0x5F;
  v10[14] = v2[145] ^ 0x5F;
  v10[13] = v2[144] ^ 0x5F;
  v10[12] = v2[143] ^ 0x5F;
  v10[11] = v2[142] ^ 0x5F;
  v10[10] = v2[141] ^ 0x5F;
  v10[9] = v2[140] ^ 0x5F;
  v10[8] = v2[139] ^ 0x5F;
  v10[7] = v2[138] ^ 0x5F;
  v10[6] = v2[137] ^ 0x5F;
  v10[5] = v2[136] ^ 0x5F;
  v10[4] = v2[135] ^ 0x5F;
  v10[3] = v2[134] ^ 0x5F;
  v10[2] = v2[133] ^ 0x5F;
  v10[1] = v2[132] ^ 0x5F;
  *v10 = v2[131] ^ 0x5F;
  v11 = LODWORD(STACK[0x68C4]) + 20;
  LODWORD(STACK[0x68C4]) = v11;
  *STACK[0x3690] = STACK[0x7C60];
  *STACK[0x5CD0] = v11;
  return (*(v8 + 8 * v1))(v9);
}

uint64_t sub_10040FB00(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(*(a6 + 8) + 8 * v8) = 0;
  v13 = v8 + a1 < *a6 + v6;
  if (v8 + 1 > v7 != *a6 + ((v9 | v10) ^ v12) > v7)
  {
    v13 = *a6 + ((v9 | v10) ^ v12) > v7;
  }

  return (*(STACK[0xF18] + 8 * ((v13 * a2) ^ v11)))();
}

uint64_t sub_10040FB60()
{
  v1 = 3 * (STACK[0xF10] ^ 0x899E);
  v2 = STACK[0xF10] + 7141;
  LODWORD(STACK[0x8B78]) = v0;
  return (*(STACK[0xF18] + 8 * (((v1 ^ 0xDE7) * (v0 == -371865839)) ^ v2)))();
}

uint64_t sub_10040FBB0()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] + 1811498016;
  v3 = (*(STACK[0x2940] + 10) << 16) ^ 0xB666DD8AC4D11333;
  v4 = 1022166737 * (((v0 | 0x6BB132BA867B04) - (v0 & 0x6BB132BA867B00)) ^ 0x7EE1C34F00969A96);
  LODWORD(STACK[0x10EFC]) = v4 + v2 + 3284;
  STACK[0x10EF0] = v4 ^ 0xB666DD8AC43C1333;
  STACK[0x10ED8] = v3 + v4;
  LODWORD(STACK[0x10EE4]) = v4 + v1 + 782565441;
  LODWORD(STACK[0x10EE0]) = -1022166737 * (((v0 | 0xBA867B04) - (v0 & 0xBA867B00)) ^ 0x969A96);
  LODWORD(STACK[0x10EE8]) = (v2 ^ 0xFF) + v4;
  LODWORD(STACK[0x10EEC]) = v2 - v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 ^ 0x4029)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * SLODWORD(STACK[0x10EF8])))(v6);
}

uint64_t sub_10040FD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(STACK[0xED0] + 4 * ((2899 * (((v6 ^ 0xACAEF57F) + 332338588) ^ ((v6 ^ 0xF47A0FA8) + 1260121933) ^ (LODWORD(STACK[0xE70]) + (v6 ^ 0xD51C4595))) + 1302423699) % 0x26C4));
  v10 = *(STACK[0xEC0] + 4 * ((707 * (((v9 ^ 0x26E69A12) + 2015206687) ^ ((v9 ^ 0xDD86E7CE) - 2088902461) ^ ((v9 ^ 0xAD42F81E) - 205914349)) - 1890816237) % 0x300));
  v11 = (((v6 ^ 0x41CA884A) - 1103792202) ^ ((v6 ^ 0xCDBACC14) + 843396076) ^ ((v6 ^ 0x1B8FB18) - 28900120)) - 1501090611;
  v12 = ((v11 ^ 0x5AB729D9) - 1107903583) ^ v11 ^ ((v11 ^ 0x6E07E5B) - 509481949) ^ ((v11 ^ 0x1906C1FA) - 28879996) ^ ((v11 ^ 0x5DEFFBFE) - 1162974840);
  v13 = (STACK[0xEB0] + (*(STACK[0xED0] + 4 * ((2899 * (((v10 ^ 0x25331A83) - 1505268029) ^ ((v10 ^ 0x80A2BC44) + 64407558) ^ ((v10 ^ 0xB4CC2F2A) + 934828908)) - 830713367) % 0x26C4)) ^ 0xC6A71E2));
  v14 = ((((8 * v6) ^ 0x366CA2C0) + 1934265275) ^ (((8 * v6) ^ 0x6543F001) + 543545724) ^ (((8 * v6) ^ 0x3D6AA8CB) + 2018279858)) * a6 + 1672768585;
  v16 = *(a4 + 8 * (v14 - ((((v14 >> 5) * v7) >> 32) >> 1) * v8)) ^ 0x1512709038A4390FLL;
  v15 = 1864610357 * ((1864610357 * ((v13 ^ LODWORD(STACK[0xE80])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v13 ^ LODWORD(STACK[0xE80])) & 0x7FFFFFFF)) >> 16));
  if ((((v15 ^ *v13 ^ *(STACK[0xE60] + (v15 >> 24)) ^ *((v15 >> 24) + STACK[0xE40] + 3)) ^ (*((v15 >> 24) + STACK[0xE30] + 1) ^ (-57 * BYTE3(v15)))) & 0x10) == 0)
  {
    v16 = 0xDB09D926376FA102;
  }

  return (*(STACK[0xF18] + 8 * ((26 * ((((v12 ^ 0x9A6AF7A0) - 253502816) ^ ((v12 ^ 0x96763F19) - 50392537) ^ ((v12 ^ 0x14A2A53F) + 2116782081)) - 1916223674 > 0x2F)) ^ LODWORD(STACK[0xE90]))))(v16);
}

uint64_t sub_100410B5C()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 16238)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_100410B90@<X0>(int a1@<W8>)
{
  v2 = v1 - 5395;
  v3 = a1 >= 2 * ((v2 - 1525293658) & 0x5AE9B6F7 ^ 0x1E8D) + 1696242096;
  return (*(STACK[0xF18] + 8 * ((v3 | (4 * v3)) ^ v2)))();
}

uint64_t sub_100410BE8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(STACK[0xF18] + 8 * (a3 - 11902));
  v4 = STACK[0xAE70];
  LODWORD(STACK[0xED0]) = a3 ^ 0xA6D92E3;
  return v3(a1, a2, 287281563, 0x100000010, v4, 17, 3861716904, (a3 ^ 0xA6D92E3u) - 731598036);
}

void *sub_100410CB8()
{
  v0 = (4 * STACK[0xF10]) ^ 0x22B4C;
  v1 = STACK[0xF10] - 30958;
  v2 = STACK[0xF18];
  STACK[0x3F68] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x898 ^ v0)))(&STACK[0x72DC]);
}

uint64_t sub_100410D04()
{
  v0 = STACK[0xF10] + 401094061;
  v1 = (STACK[0xF10] - 18843) | 0xC09;
  LODWORD(STACK[0x9354]) = 371891215;
  return (*(STACK[0xF18] + 8 * ((v1 + 401116255) ^ v0 ^ (12093 * (v0 > 0xF09CF5D7)))))();
}

uint64_t sub_100410D78@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + 16 * v2;
  v4 = 0x981390C2FED9246;
  if (*(STACK[0x6258] + 416) != -2109658874)
  {
    v4 = 0x981390C2FED9247;
  }

  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * (v1 ^ (v1 + 905523280) ^ 0xCA07C721 ^ (15132 * (v1 < 0x532A0410)))))();
}

uint64_t sub_100410DF4@<X0>(int a1@<W8>)
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
  STACK[0xBC60] = 0;
  STACK[0xBC68] = v1;
  v12 = 16777619 * ((553300517 * v11 + 7) ^ (553300517 * v11)) % 7;
  v13 = 16777619 * ((553300517 * v11 + 6) ^ (553300517 * v11)) % 6;
  v14 = 16777619 * ((553300517 * v11 + 5) ^ (553300517 * v11)) % 5;
  v15 = *(&STACK[0xBC60] | v12);
  *(&STACK[0xBC60] | v12) = STACK[0xBC67];
  v16 = *(&STACK[0xBC60] | v13);
  *(&STACK[0xBC60] | v13) = STACK[0xBC66];
  v17 = *(&STACK[0xBC60] | v14);
  *(&STACK[0xBC60] | v14) = STACK[0xBC65];
  v18 = 16777619 * ((553300517 * v11 + 3) ^ (553300517 * v11)) % 3;
  v19 = vdup_n_s32(553300517 * v11);
  v20.i32[0] = v19.i32[0];
  v20.i32[1] = 553300517 * v11 + 1;
  LOBYTE(STACK[0xBC67]) = v15;
  v21 = veor_s8(vmul_s32(v20, v19), v19);
  LOBYTE(STACK[0xBC66]) = v16;
  LOBYTE(STACK[0xBC65]) = v17;
  v22 = STACK[0xBC60];
  LOBYTE(STACK[0xBC60]) = STACK[0xBC64];
  LOBYTE(STACK[0xBC64]) = v22;
  v23 = *(&STACK[0xBC60] | v18);
  *(&STACK[0xBC60] | v18) = STACK[0xBC63];
  LOBYTE(STACK[0xBC63]) = v23;
  v24 = STACK[0xBC61];
  LOBYTE(STACK[0xBC62]) = STACK[0xBC60];
  LOWORD(STACK[0xBC60]) = v24;
  STACK[0xBC60] = vmla_s32(v21, STACK[0xBC60], vdup_n_s32(0x1000193u));
  v25 = STACK[0xBC68];
  v26 = (553300517 * STACK[0xBC68]) ^ v11;
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
    v56.val[1] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7690), veorq_s8(v27, vmulq_s32(vaddq_s32(v30, v27), vsubq_s32(v30, v27))));
    v56.val[0] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC76A0), veorq_s8(v27, vmulq_s32(vaddq_s32(v31, v27), vsubq_s32(v31, v27))));
    v56.val[2] = veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7680), veorq_s8(v27, vmulq_s32(vaddq_s32(v29, v27), vsubq_s32(v29, v27))));
    v56.val[3] = veorq_s8(veorq_s8(vqtbl1q_s8(v35, xmmword_100BC7670), v27), vmulq_s32(vaddq_s32(v28, v27), vsubq_s32(v28, v27)));
    *(v25 + v2) = vmulq_s8(vqtbl4q_s8(v56, xmmword_100BC7660), v33);
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
  v42 = STACK[0x940];
  do
  {
    v32.i64[0] = *(v40 + v36);
    v55.val[1] = veorq_s8(veorq_s8(vqtbl1q_s8(v32, xmmword_100BC7690), v38), vmulq_s32(vaddq_s32(v37, v38), vsubq_s32(v37, v38)));
    v55.val[0] = veorq_s8(vqtbl1q_s8(v32, xmmword_100BC76A0), veorq_s8(v38, vmulq_s32(vaddq_s32(v39, v38), vsubq_s32(v39, v38))));
    v32 = vqtbl2q_s8(v55, xmmword_100F52AD0);
    *(v40 + v36) = vmul_s8(*v32.i8, 0x9393939393939393);
    v39 = vaddq_s32(v39, v41);
    v37 = vaddq_s32(v37, v41);
    v36 += 8;
  }

  while (v36 != 8);
  v43 = 72;
  do
  {
    v44 = 16777619 * ((v26 + v43) ^ v26) % v43;
    v45 = *(v25 + 8 * v44) ^ *(v25 + 8 * v43);
    *(v25 + 8 * v43) = v45;
    v46 = *(v25 + 8 * v44) ^ v45;
    *(v25 + 8 * v44) = v46;
    *(v25 + 8 * v43) ^= v46;
    v47 = v43-- + 1;
  }

  while (v47 > 2);
  v48 = *(&STACK[0xBC68] + v12);
  *(&STACK[0xBC68] + v12) = STACK[0xBC6F];
  LOBYTE(STACK[0xBC6F]) = v48;
  v49 = *(&STACK[0xBC68] + v13);
  *(&STACK[0xBC68] + v13) = STACK[0xBC6E];
  LOBYTE(STACK[0xBC6E]) = v49;
  v50 = *(&STACK[0xBC68] + v14);
  *(&STACK[0xBC68] + v14) = STACK[0xBC6D];
  LOBYTE(STACK[0xBC6D]) = v50;
  v51 = STACK[0xBC68];
  LOBYTE(STACK[0xBC68]) = STACK[0xBC6C];
  LOBYTE(STACK[0xBC6C]) = v51;
  v52 = *(&STACK[0xBC68] + v18);
  *(&STACK[0xBC68] + v18) = STACK[0xBC6B];
  LOBYTE(STACK[0xBC6B]) = v52;
  v53 = STACK[0xBC69];
  LOBYTE(STACK[0xBC6A]) = STACK[0xBC68];
  LOWORD(STACK[0xBC68]) = v53;
  STACK[0xBC68] = vmla_s32(v21, STACK[0xBC68], vdup_n_s32(0x1000193u));
  *v42 = STACK[0xBC68] ^ STACK[0xBC60];
  return (*(STACK[0xF18] + 8 * a1))();
}

uint64_t sub_1004112CC(uint64_t a1, uint64_t a2)
{
  v2 = (((LODWORD(STACK[0x9B00]) ^ 0xCD5D8537) + 849509065) ^ ((LODWORD(STACK[0x9B00]) ^ 0xCD1CC737) + 853752009) ^ ((LODWORD(STACK[0x9B00]) ^ 0xE9948511) + 376142575)) + ((((LODWORD(STACK[0x9AFC]) ^ 0x18C4650A) - 415524106) ^ ((LODWORD(STACK[0x9AFC]) ^ 0x80EC963E) + 2131978690) ^ ((LODWORD(STACK[0x9AFC]) ^ 0x84016A98) + 2080281960)) + 472488364) * (LODWORD(STACK[0xB9DC]) ^ LODWORD(STACK[0x98D4])) + 1603850749;
  v3 = (v2 ^ 0x693EE115) & (2 * (v2 & 0x8A3CF514)) ^ v2 & 0x8A3CF514;
  v4 = ((2 * (v2 ^ 0x7D774B3D)) ^ 0xEE977C52) & (v2 ^ 0x7D774B3D) ^ (2 * (v2 ^ 0x7D774B3D)) & 0xF74BBE28;
  v5 = v4 ^ 0x11488229;
  v6 = (v4 ^ 0x60033C00) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xDD2EF8A4) & v5 ^ (4 * v5) & 0xF74BBE28;
  v8 = (v7 ^ 0xD50AB820) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x22410609)) ^ 0x74BBE290) & (v7 ^ 0x22410609) ^ (16 * (v7 ^ 0x22410609)) & 0xF74BBE00;
  v10 = v8 ^ 0xF74BBE29 ^ (v9 ^ 0x740BA200) & (v8 << 8);
  return (*(STACK[0xF18] + 8 * (STACK[0xF10] - 27580)))(a1, a2, v2 ^ (2 * ((v10 << 16) & 0x774B0000 ^ v10 ^ ((v10 << 16) ^ 0x3E290000) & (((v9 ^ 0x83401C29) << 8) & 0x774B0000 ^ 0x34410000 ^ (((v9 ^ 0x83401C29) << 8) ^ 0x4BBE0000) & (v9 ^ 0x83401C29)))) ^ 0x4209F75C);
}

uint64_t sub_100411584()
{
  STACK[0x20F0] = v2 + 36;
  LODWORD(STACK[0x10ED8]) = (v1 + 14264) ^ (1603510583 * ((2 * ((&STACK[0x10000] + 3800) & 0x5BE69FC0) - (&STACK[0x10000] + 3800) - 1541840834) ^ 0x33C25295));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x8202)))(&STACK[0x10ED8]);
  LODWORD(STACK[0x1D48]) = STACK[0x10EDC];
  v5 = *(v2 + v0);
  STACK[0x46D0] = v5;
  v6 = STACK[0x7690];
  v7 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0x35C0] = v7;
  STACK[0x39B8] = v7;
  STACK[0x1D90] = (v7 + 16);
  STACK[0x8B68] = (v7 + 32);
  STACK[0x4EC0] = (v7 + 48);
  STACK[0x1E90] = (v7 + 64);
  STACK[0x7690] = v6 + 144;
  STACK[0x1538] = 0;
  LODWORD(STACK[0x8DE8]) = 0;
  LODWORD(STACK[0x5E1C]) = 228322666;
  STACK[0x7E30] = 0;
  STACK[0x8EC8] = 0;
  return (*(v3 + 8 * (((v5 != 0) * ((v1 ^ 0x5B50) - 40045 + 109 * (v1 ^ 0x4814))) ^ v1)))(v4);
}

uint64_t sub_100411774()
{
  v1 = STACK[0x1D10];
  LODWORD(STACK[0x10ED8]) = v0 + 193924789 * ((&STACK[0x10000] + 3800) ^ 0xB6BB3266) - 4980;
  STACK[0x10EE0] = v1;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 ^ 0xEA91)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * v0))(v3);
}

uint64_t sub_100411880@<X0>(int a1@<W8>)
{
  v1 = STACK[0x2A44];
  STACK[0x7690] -= 480;
  return (*(STACK[0xF18] + 8 * (((((a1 - 1175) | 0x952) ^ 0xCEED) * (v1 == -371865839)) ^ a1)))();
}

uint64_t sub_1004119B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x998] = v7;
  v8 = STACK[0xE30];
  LODWORD(STACK[0xE60]) = *(*STACK[0xE50] + ((LODWORD(STACK[0xE30]) ^ 0x7D8619D1u) & *STACK[0xE58]));
  v9 = *(STACK[0xF18] + 8 * v8);
  LODWORD(STACK[0xE40]) = v8 ^ 0xD;
  v10 = ((v8 ^ 0xD) - 1102953275) & 0x41BD7D9F;
  LODWORD(STACK[0xD80]) = v10;
  LODWORD(STACK[0xE30]) = v10 ^ 0x725EBA48;
  STACK[0xDA0] = 0x746CAE6D16E384ELL;
  STACK[0xD90] = 0x252ABF31DC464323;
  return v9(a1, a2, a3, a4, 1337, a6, a7, 117670337);
}

uint64_t sub_100411D1C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 92) = 0;
  *(a1 + 8) = v1;
  *a1 = v2;
  STACK[0x60B8] = a1 + 64;
  STACK[0x4D88] = 0;
  LODWORD(STACK[0x43E4]) = 1003298658;
  return (*(STACK[0xF18] + 8 * (v3 - 6731)))();
}

uint64_t sub_100411DB4()
{
  v3 = STACK[0xF18];
  STACK[0x7AE0] = *(STACK[0xF18] + 8 * v1);
  return (*(v3 + 8 * ((23 * ((v0 - 32545) + v2 - 0x3AE1413A0D5CA2DDLL > 0x7FFFFFFFFFFFFF81)) ^ (v0 - 25518))))();
}

uint64_t sub_100411F30()
{
  LODWORD(STACK[0x8EA4]) = v1;
  LODWORD(STACK[0x10ED8]) = (v0 - 1762646631) ^ (906386353 * ((~(&STACK[0x10000] + 3800) & 0xE2A71CD | (&STACK[0x10000] + 3800) & 0xF1D58E30) ^ 0x3F2BBCE9));
  STACK[0x10EE0] = 0;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v0 + 30915)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * ((956 * (*STACK[0x970] > ((v0 - 909628407) & 0x3637CAB7 ^ 0x48B7))) ^ v0)))(v3);
}

uint64_t sub_100412074()
{
  LODWORD(STACK[0x10ED8]) = (v0 + 32301) ^ (1603510583 * ((((&STACK[0x10000] + 3800) ^ 0x217D3ADE | 0x1993E15B) - ((&STACK[0x10000] + 3800) ^ 0x217D3ADE) + (((&STACK[0x10000] + 3800) ^ 0x217D3ADE) & 0xE66C1EA4)) ^ 0xAF35E92E));
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 ^ 0xC98F)))(&STACK[0x10ED8]);
  STACK[0x8E20] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((15024 * ((v0 ^ 0x1CEA3EE7u) < (((v0 - 508) | 0x9501) ^ 0x22DD49C4u))) ^ (v0 + 4980))))(v2);
}

uint64_t sub_1004125EC()
{
  v2 = *STACK[0xE50];
  v3 = *STACK[0xE58] >> 2;
  v4 = *(v2 + 4 * ((0xC6DB409 % v3) & 0xFFFFFFC));
  v5 = STACK[0x8B0];
  v6 = *(STACK[0x8B0] - 527405895);
  v7 = ((v1 + 261) | 0x204) ^ 0x71BB ^ *(v2 + 4 * ((v3 - 1) & v4));
  v8 = *(STACK[0x8B8] + 4 * v6);
  v10 = v7 & ~HIWORD(v4);
  v9 = v10 == 0;
  v11 = v10 + v10 * v8;
  if (v9)
  {
    v12 = *(STACK[0x8B8] + 4 * v6);
  }

  else
  {
    v12 = 0;
  }

  *(STACK[0x8B8] + 4 * v6) = (v12 + v11) * v8;
  *(v5 - 527405895) = (v6 + 1) % 6u;
  if (v9)
  {
    v13 = v0;
  }

  else
  {
    v13 = 371891350;
  }

  return (*(STACK[0xF18] + 8 * ((60909 * (v13 == -371865839)) ^ (v1 - 10557))))();
}

uint64_t sub_100412838()
{
  STACK[0x308] = v0 + 0x1FE716A64089191CLL;
  v3 = *(v2 + 8 * ((46292 * (v0 + 0x1FE716A64089191CLL == ((v1 - 951560137) & 0x38B7FDFF ^ 0x6CCFLL))) ^ v1));
  return v3(v0 + 0x1FE716A64089191CLL, v3);
}

uint64_t sub_100412A0C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10EE0] = a1;
  LODWORD(STACK[0x10ED8]) = (v1 - 29457) ^ (155453101 * ((((&STACK[0x10000] + 3800) | 0x42B5A273) - ((&STACK[0x10000] + 3800) & 0x42B5A270)) ^ 0xA493B9BC));
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x41E7)))(&STACK[0x10ED8]);
  *(v2 + 344) = 0;
  return (*(v3 + 8 * (v1 + 3346)))(v4);
}

uint64_t sub_100412A94@<X0>(int a1@<W8>)
{
  STACK[0xB598] = v2;
  STACK[0xB5A0] = v1;
  STACK[0xB5A8] = v3;
  STACK[0xB5B0] = v4;
  if (v2)
  {
    v5 = v1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || v3 == 0 || v4 == 0;
  return (*(STACK[0xF18] + 8 * ((111 * ((((a1 - 48) ^ (a1 - 1)) ^ v8) & 1)) ^ a1)))();
}

uint64_t sub_100412AF4@<X0>(int a1@<W8>)
{
  v1 = STACK[0x60D8];
  v2 = STACK[0x9110];
  v2[10] = *(STACK[0x60D8] + 112);
  v2[11] = v1[13];
  v2[12] = v1[12];
  return (*(STACK[0xF18] + 8 * (((v1[21] != 0) * (((a1 - 28450) | 0x12) ^ 0x2006)) ^ a1)))();
}

uint64_t sub_100412C08()
{
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 + 3898)))(64);
  STACK[0x5188] = v3 + v0;
  return (*(v2 + 8 * (((v3 == 0) * ((v1 ^ 0xB5A1) - 3588)) ^ v1)))();
}

uint64_t sub_100412C9C()
{
  v1 = v0 & 0xFFFFFFFFD2818FFFLL;
  v2 = STACK[0xF18];
  STACK[0x4B88] = *(STACK[0xF18] + 8 * v1);
  return (*(v2 + 8 * (v1 ^ 0x1F06)))();
}

uint64_t sub_100412E6C@<X0>(uint64_t a1@<X8>)
{
  STACK[0xA4A0] = *(v1 + 145) + 68;
  v2 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * a1);
  return (*(v2 + 8 * (((309 * (a1 ^ 0x77F)) ^ 0x1990) + a1)))();
}

uint64_t sub_100412F50()
{
  v0 = STACK[0xF10] - 650;
  v1 = STACK[0xF10] - 33644;
  v2 = STACK[0x2748];
  v3 = *(STACK[0x2748] + 128);
  STACK[0x92B8] = STACK[0xA2E8];
  LODWORD(STACK[0x5B3C]) = v3;
  STACK[0x62E0] = *(v2 + 120);
  v4 = ((((v3 >> 4) ^ 0x5EFA81F6) - 601472069) ^ (((v3 >> 4) ^ 0xC4BDF1F7) + (v0 ^ 0x4661BB0D)) ^ (((v3 >> 4) ^ 0x94DA2C70) + 369552957)) - 2008028938;
  LODWORD(STACK[0x8C74]) = (16 * (((v4 ^ 0xF47C12B0) + 252865149) ^ v4 ^ ((v4 ^ 0x31C93C7) + 141749004) ^ ((v4 ^ 0xC07F99B) + 124354904) ^ ((v4 ^ 0xFF6FFDF) + 77104916))) ^ 0x507EE2EF;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x4538 ^ (2818 * ((v1 ^ 0x8385A314) < 0xAA0561D0)))))(&STACK[0xC3F9]);
}

uint64_t sub_1004131C0@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 + 1264632567;
  v6 = (v2 > 0x3A0D72DE) ^ (v5 < 0xC5F28D21);
  v7 = v5 < v3;
  v8 = *(a1 + 136);
  if (v6)
  {
    v7 = v2 > 0x3A0D72DE;
  }

  if (!v8)
  {
    v7 = 0;
  }

  return (*(STACK[0xF18] + 8 * ((25896 * v7) ^ v1)))();
}

uint64_t sub_1004133A4@<X0>(uint64_t a1@<X8>)
{
  v3 = (((*(a1 - 0x217E172EFA1E814) ^ 0xE0800E54) + 528478636) ^ ((*(a1 - 0x217E172EFA1E814) ^ 0x3E267330) - 1042707248) ^ ((*(a1 - 0x217E172EFA1E814) ^ 0x3773BA75) - 930331253)) + 1500628753;
  v4 = (((*(v2 - 0x217E172EFA1E814) ^ 0xDEAF0B6D) + 558953619) ^ ((*(v2 - 0x217E172EFA1E814) ^ 0x5324C97B) - 1394919803) ^ (((11881 * (v1 ^ 0x3088) + 1683847628) ^ *(v2 - 0x217E172EFA1E814)) - 1683883271)) + 1500628753;
  v5 = v3 < 0x6F9C0000;
  v6 = v3 > v4;
  if (v5 != v4 < 0x6F9C0000)
  {
    v6 = v5;
  }

  return (*(STACK[0xF18] + 8 * ((22791 * v6) ^ v1)))();
}

uint64_t sub_1004134C4()
{
  v0 = STACK[0xF10] - 33480;
  v1 = (STACK[0xF10] - 33450) | 0x740;
  v2 = STACK[0xF18];
  STACK[0x31A0] = *(STACK[0xF18] + 8 * v0);
  return (*(v2 + 8 * ((v1 + 3171) ^ v0)))();
}

uint64_t sub_100413518@<X0>(unint64_t a1@<X8>)
{
  STACK[0x10ED8] = a1;
  LODWORD(STACK[0x10EE4]) = v1 - 193924789 * ((2 * ((&STACK[0x10000] + 3800) & 0x195EAC18) - (&STACK[0x10000] + 3800) - 425634844) ^ 0x501A6182) - 27540;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * (v1 ^ 0x406F)))(&STACK[0x10ED8]);
  return (*(v2 + 8 * (v1 + 1166)))(v3);
}

uint64_t sub_1004135A0()
{
  v2 = v1 + 1661770549 + (((v0 ^ 0x7C2DBD74) - 2083372404) ^ ((v0 ^ 0x163D6A31) - 373123633) ^ ((v0 ^ v1 ^ 0xA300 ^ 0x83C50B0E) + 2084237228));
  v3 = ((2 * (v2 & 0x86C88381)) & 0x9110402 | v2 & 0x86C88381) ^ (2 * (v2 & 0x86C88381)) & (v2 ^ 0xFFB937E2);
  v4 = ((2 * (v2 ^ 0xFFB937E2)) ^ 0xF2E368C6) & (v2 ^ 0xFFB937E2) ^ (2 * (v2 ^ 0xFFB937E2)) & 0x7971B462;
  v5 = v4 ^ 0x9109421;
  v6 = (v4 ^ 0x30708021) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xE5C6D18C) & v5 ^ (4 * v5) & 0x7971B460;
  v8 = (v7 ^ 0x61409000) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x18312463)) ^ 0x971B4630) & (v7 ^ 0x18312463) ^ (16 * (v7 ^ 0x18312463)) & 0x7971B460;
  v10 = v8 ^ 0x7971B463 ^ (v9 ^ 0x11110400) & (v8 << 8);
  v11 = (v2 ^ (2 * ((v10 << 16) & 0x79710000 ^ v10 ^ ((v10 << 16) ^ 0x34630000) & (((v9 ^ 0x6860B043) << 8) & 0x79710000 ^ 0x8410000 ^ (((v9 ^ 0x6860B043) << 8) ^ 0x71B40000) & (v9 ^ 0x6860B043))))) & 0xFFFFF000;
  LODWORD(STACK[0xB24C]) = v11 ^ 0xFD3C2711;
  v12 = STACK[0xF18];
  v13 = (*(STACK[0xF18] + 8 * (v1 ^ 0x7332)))(*(STACK[0x820] - 1306953403), &STACK[0x1FC0], v11 ^ 0x14E9E000, 1);
  return (*(v12 + 8 * ((55 * (((2 * v13) & 0xEBDF767A) + (v13 ^ 0xF5EFBB3D) != -168838339)) ^ v1)))();
}

uint64_t sub_100413820()
{
  v0 = *(STACK[0xF18] + 8 * ((20344 * (LODWORD(STACK[0xED0]) < 0x97FABF69)) ^ (LODWORD(STACK[0xED0]) - 174916731)));
  LODWORD(STACK[0xED0]) = (LODWORD(STACK[0xED0]) ^ 0xA6DA147) - 11620;
  return v0();
}

uint64_t sub_100413A10()
{
  v1 = STACK[0xF10];
  v2 = STACK[0xF10] - 29772;
  *(STACK[0x8EB8] - 0x10A99C80114D144BLL) = *STACK[0x5E78];
  v3 = v1 - 33673;
  LODWORD(STACK[0xA4EC]) = v0;
  v4 = STACK[0xF18];
  STACK[0x98A8] = *(STACK[0xF18] + 8 * v3);
  return (*(v4 + 8 * (v3 ^ 0x14FD ^ ((v3 != 1561638482) * (v2 ^ 0x134B)))))();
}

uint64_t sub_100413AD8()
{
  v0 = STACK[0xF10] - 29538;
  *STACK[0x7220] = 2065143991;
  return (*(STACK[0xF18] + 8 * v0))();
}

uint64_t sub_100413B04@<X0>(int a1@<W2>, unsigned int a2@<W8>)
{
  v3 = (((a1 - 12244) | 0xA401) ^ 0xDE33DC6A) + v2;
  v4 = (a2 < 0x3A974E61) ^ (v3 < ((a1 - 60123137) & 0x3953F3Du) + 982986544);
  v5 = v3 < a2;
  if (v4)
  {
    v5 = a2 < 0x3A974E61;
  }

  return (*(STACK[0xF18] + 8 * ((4081 * !v5) ^ a1)))();
}

uint64_t sub_100413BE8@<X0>(unint64_t a1@<X8>)
{
  v7 = STACK[0xF18];
  STACK[0x6430] = *(STACK[0xF18] + 8 * v5);
  LOWORD(STACK[0xB8E6]) = v3;
  v8 = STACK[0x7690];
  v9 = &STACK[0xC4D0] + STACK[0x7690];
  STACK[0xB8E8] = v9;
  STACK[0xB8F0] = (v9 + 20);
  STACK[0xB8F8] = (v9 + 40);
  STACK[0x7690] = ((v6 - 533961564) & 0x1FD37FFB) + v8 - 28571;
  STACK[0x7270] = a1;
  STACK[0x1458] = v2;
  STACK[0x1E98] = 0;
  STACK[0x6700] = 0;
  STACK[0x4428] = 0;
  STACK[0x5000] = 0;
  if (a1)
  {
    v10 = v4 == v1;
  }

  else
  {
    v10 = 1;
  }

  v12 = !v10 && v2 != 0;
  return (*(v7 + 8 * ((64898 * v12) ^ (v6 - 7006))))();
}

uint64_t sub_100413CEC()
{
  v0[22] = 7085;
  v0[33] = 6498;
  v0[42] = 7085;
  v0[51] = 32089;
  v0[60] = 16;
  return (*(STACK[0xF18] + 96 * (v1 ^ 0x8281u)))();
}

uint64_t sub_100413DD8()
{
  *(*(v1 + 16) + 8 * v0) = v3;
  v4 = *(v1 + 8) + ((((v2 ^ 0x6389) + 9219) | 0xA38) ^ 0x8B3A);
  ++*(v1 + 4);
  *(v1 + 8) = v4;
  return (*(STACK[0xF18] + 8 * (v2 ^ 0x6389)))();
}

uint64_t sub_100413E28()
{
  STACK[0x63D0] = 0;
  LOBYTE(STACK[0x768F]) = 0;
  v1 = *(STACK[0x78B0] + 304);
  STACK[0x8C10] = v1;
  return (*(STACK[0xF18] + 8 * ((56 * ((((((v0 - 9939) | 0x9180) - 32438) ^ (v1 == 0)) & 1) == 0)) ^ (v0 + 31083))))();
}

uint64_t sub_100413E9C()
{
  v3 = *(STACK[0x6140] - 0x217E172EFA1E81CLL);
  v4 = 155453101 * ((((&STACK[0x10000] + 3800) | 0x7957021C) - ((&STACK[0x10000] + 3800) | 0x86A8FDE3) - 2035745309) ^ 0x9F7119D3);
  LODWORD(STACK[0x10EE8]) = (v1 + 1759) ^ v4;
  STACK[0x10EE0] = v3;
  LODWORD(STACK[0x10EDC]) = ((v0 + 563094662) * v2 + 28768794) ^ v4;
  v5 = STACK[0xF18];
  v6 = (*(STACK[0xF18] + 8 * (v1 + 15278)))(&STACK[0x10ED8]);
  return (*(v5 + 8 * v1))(v6);
}

uint64_t sub_100413FA4@<X0>(uint64_t a1@<X8>)
{
  v3 = a1 + 16 * v2;
  v4 = 0x981390C2FED9246;
  if (*(STACK[0x6258] + 344) != -2109658874)
  {
    v4 = 0x981390C2FED9247;
  }

  *(v3 + 8) = v4;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0xF074C40 ^ ((((v1 - 252106919) | 0x931) - 20520) * (v1 < 0x45CDA7D)))))();
}

uint64_t sub_1004141E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int32x4_t a9@<Q7>)
{
  a5.i64[0] = v10[57].i64[0];
  a5.i32[2] = v10[57].i32[2];
  v14 = vextq_s8(a4, a5, 0xCuLL);
  a5.i32[3] = v10[57].i32[3];
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(a5, a8), vandq_s8(v14, a7)), 1uLL), *v10);
  v16.i32[0] = *(a1 + 4 * (v10[57].i32[0] & 1));
  v16.i32[1] = *(a1 + 4 * (v10[57].i32[1] & 1));
  v16.i32[2] = *(a1 + 4 * (a5.i8[8] & 1));
  v16.i32[3] = *(a1 + 4 * (a5.i8[12] & 1));
  *(v13 + 4 * (v11 + (v9 ^ a2))) = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a6)), a9), v16);
  return (*(v12 + 8 * (((4 * (v11 == 392)) | ((v11 == 392) << 6)) ^ a3)))(a5);
}

uint64_t sub_10041429C@<X0>(int a1@<W8>)
{
  v1 = STACK[0x2108];
  *v1 = 1684169063;
  v2 = STACK[0x2B18];
  *(v1 + 8) = STACK[0x2DE0] ^ 0x427A3CD3E8C5DA2FLL;
  *(v1 + 16) = v2 - 0x217E172EFA1E804;
  *(v1 + 24) = STACK[0x4BD0];
  *(v1 + 32) = 0;
  return (*(STACK[0xF18] + 8 * ((56168 * ((((*(v2 - 0x217E172EFA1E810) ^ 0xEBD87873) + (((a1 ^ 0x481C) + 1939) ^ 0x14278F1D)) ^ ((*(v2 - 0x217E172EFA1E810) ^ 0x9A09BD30) + 1710637776) ^ (((52 * (a1 ^ 0x481C)) ^ *(v2 - 0x217E172EFA1E810) ^ 0x98043136) + 1744567726)) - 371931377 < 0xFFFEFFFE)) ^ a1)))();
}

uint64_t sub_1004144E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W4>, _DWORD *a5@<X5>, int a6@<W6>, unsigned int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v39 = v28 - (((v28 * a7) >> 32) >> 7) * v27;
  v40 = (*a5 ^ 0x2B6BBF2F) * *(a1 + 4 * (v32 & 0x1F));
  v41 = ((2 * v40) & 0xD5FADE1E) + (v40 ^ 0xEAFD6F0F);
  v42 = ((2 * v39) & 0x1BE) + (v39 ^ 0x7E6EFDFF4F7ED7DFLL);
  v43 = (a2 + 4 * (v42 - 0x7E6EFDFF4F7ED841));
  v44 = __CFADD__(v42 - 0x7E6EFDFF4F7ED841, 98);
  v45 = (v36 + 4 * v42 + 0x6440802C204A084);
  v47 = 2 * (v31 ^ 0x31FB4DB3);
  v48 = (v47 ^ v38) & (v31 ^ 0x31FB4DB3);
  v49 = v47 & 0x80002814;
  if (!v44)
  {
    v45 = v43;
  }

  v50 = v48 ^ v49;
  v51 = v48 & 0x49D80620;
  v46 = ((2 * (v31 & 0x26 ^ 0xB602E895)) ^ v38) & (v31 ^ 0x31FB4DB3) ^ v31 & 0x26 ^ 0xB602E895 ^ ((2 * (v31 & 0x26 ^ 0xB602E895)) & 0x24004004 | 0x12020080);
  v52 = v46 ^ v51 ^ ((4 * v46) ^ 0x7FD8E6F4) & (v50 ^ 0x3602C081);
  v53 = ((4 * v50) ^ 0xA7D144A0) & (v50 ^ 0x3602C081) ^ v51;
  v54 = v52 ^ v53 & a6 ^ ((16 * v52) ^ 0x1FF4CFF0) & (v53 ^ 0x36024085);
  v55 = ((16 * v53) ^ 0x1FFE4EA0) & (v53 ^ 0x36024085) ^ v53 & a6;
  v56 = v54 ^ v55 & a6 ^ ((v54 << 8) ^ 0x7F7253A0) & (v55 ^ 0x8000A815) ^ ((v54 << 8) ^ 0x7F7253A0) & 0xB602E880;
  v57 = 1523941053 * v41 - 1539985224 * *(v29 + 4 * (v31 ^ (2 * ((v56 << 16) & v35 ^ v56 ^ ((v56 << 16) ^ 0x68950000) & ((((v55 ^ 0x8000A815) << 8) ^ 0x7D32D3A0) & (v55 ^ 0x8000A815) ^ v55 & 0x7FDA0000 ^ (((v55 ^ 0x8000A815) << 8) ^ 0x7D32D3A0) & v35))) ^ 0xABFC7417)) + (v41 + 352489713) * ((((*v45 ^ 0xDD1B3C2C) + 585417684) ^ ((*v45 ^ 0xDC5BABF) - 231062207) ^ ((*v45 ^ 0xAE1DE802) + 1373771774)) + 676492416) + 415277037;
  v58 = ((2 * v57) & 0xBD7F5BF6) + (v57 ^ 0x5EBFADFB);
  v59 = v58 + 1645216153;
  v60 = (v59 ^ 0xF59C79D5) & (2 * (v59 & 0xE5217D81)) ^ v59 & 0xE5217D81;
  v61 = v58 + 1194426204 - ((((v58 + 1194426204) * a7) >> 32) >> 7) * v27;
  v62 = ((2 * (v59 ^ 0x379E58D5)) ^ 0xA57E4AA8) & (v59 ^ 0x379E58D5) ^ (2 * (v59 ^ 0x379E58D5)) & v37;
  v63 = v62 ^ 0x52812554;
  v64 = (v62 ^ 0x800E0000) & (4 * v60) ^ v60;
  v65 = ((4 * v63) ^ 0x4AFC9550) & v63 ^ (4 * v63) & 0xD2BF2550;
  v66 = v65 ^ 0x90032004;
  v67 = ((2 * v61) & 0xEE) + (v61 ^ 0xDFE7BF7F7FD7F777);
  v68 = (v65 ^ 0x42BC0550) & (16 * v64) ^ v64;
  v69 = 16 * (v65 ^ 0x90032004);
  v70 = (v69 ^ 0x2BF25540) & v66;
  v71 = v67 + 0x2018408080280827;
  v72 = (a27 + 4 * v67 - 0x7F9EFDFDFF5FDDDCLL);
  v44 = __CFADD__(v71, 98);
  v73 = (a2 + 4 * v71);
  v74 = v69 & 0xD2BF2540;
  if (!v44)
  {
    v72 = v73;
  }

  v75 = v70 ^ v74;
  v76 = v68 ^ v37 ^ (v75 ^ 0x2B20500) & (v68 << 8);
  *(a5 - 32) = v59;
  v77 = v59 ^ *v72 ^ (2 * ((v76 << 16) & v34 ^ v76 ^ ((v76 << 16) ^ 0x25540000) & (((v75 ^ 0xD00D2014) << 8) & v34 ^ 0x409A0000 ^ (((v75 ^ 0xD00D2014) << 8) ^ 0x3F250000) & (v75 ^ 0xD00D2014))));
  *(a1 + 4 * (v32 & 0x1F)) = *(a1 + 4 * (v32 & 0x1F)) - 1062673203 * (((v77 ^ 0x1BF20AC5) - 796804904) ^ ((v77 ^ 0x8A963772) + 1105560929) ^ ((v77 ^ 0xAFD0640F) + 1688458782)) + a3;
  return (*(STACK[0x228] + 8 * (((v33 == 0) * a4) ^ v30)))();
}

uint64_t sub_100414A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unint64_t a38, uint64_t a39, unint64_t a40, unint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44, unint64_t a45, unint64_t a46, unint64_t a47)
{
  STACK[0x4D8] = STACK[0x380];
  STACK[0x488] = STACK[0x2E8];
  STACK[0x5C8] = STACK[0x2D8];
  STACK[0x610] = a41;
  STACK[0x5A8] = a46;
  STACK[0x510] = a47;
  STACK[0x458] = a40;
  STACK[0x4F0] = a45;
  STACK[0x478] = a44;
  STACK[0x428] = a38;
  STACK[0x5B0] = STACK[0x218];
  STACK[0x620] = STACK[0x308];
  STACK[0x538] = STACK[0x310];
  STACK[0x568] = STACK[0x248];
  STACK[0x450] = STACK[0x250];
  return (*(v47 + 8 * a23))();
}

uint64_t sub_100414ACC@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(v5 + v6) = *(a1 + v6);
  return (*(v4 + 8 * (((v6 == 0) * v2) ^ v1)))();
}

uint64_t sub_100414B48@<X0>(_DWORD *a1@<X5>, int a2@<W8>)
{
  *a1 = v2;
  a1[1] = 2;
  return (*(STACK[0xF18] + 8 * (a2 ^ 0x9F9E1916 ^ (1011 * (a2 != 1110647162)))))();
}

uint64_t sub_100414BE8(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v7 = (((v6 - 10322) | 0x184) ^ 0x632BFD59u) + v5 < a4;
  if (a4 < a2 != v4 > 0x9CD42D21)
  {
    v7 = a4 < a2;
  }

  return (*(STACK[0xF18] + 8 * ((v7 * (((v6 - 1090631317) & 0x4101EB7B) - 35420)) ^ v6)))(3976166142);
}

uint64_t sub_100414CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x4E0] = v4;
  v5 = STACK[0xD40];
  v6 = 836 * (LODWORD(STACK[0xD40]) ^ 0x26E7);
  LODWORD(STACK[0xE70]) = *(*STACK[0xE50] + ((v6 ^ 0x7D8617F8u) & *STACK[0xE58]));
  v7 = *(STACK[0xF18] + 8 * v5);
  LODWORD(STACK[0xE80]) = v6;
  v8 = (v6 - 35978) | 0x8550;
  LODWORD(STACK[0xD40]) = v8;
  LODWORD(STACK[0xD50]) = v8 - 39559;
  return v7(a1, 117670337, 2336, a4, 3668381642);
}

uint64_t sub_100414E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = LODWORD(STACK[0x4950]);
  v6 = STACK[0xF18];
  STACK[0x5FF8] = *(STACK[0xF18] + 8 * v4);
  return (*(v6 + 8 * (v4 ^ 0x9EF7 ^ (v4 - 146104055) & 0x8B5D96E)))(a1, a2, a3, a4, v5);
}

uint64_t sub_100415010@<X0>(int a1@<W8>)
{
  v1 = a1 + 9772;
  v2 = STACK[0xF18];
  v3 = (*(STACK[0xF18] + 8 * ((a1 + 35316) ^ 0x4192)))();
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_10041505C()
{
  v2 = 193924789 * ((((&STACK[0x10000] + 3800) | 0xC1ED05B9) - ((&STACK[0x10000] + 3800) | 0x3E12FA46) + 1041431110) ^ 0x775637DF);
  LODWORD(STACK[0x10EE0]) = ((((*(v0 + 400) ^ (((v1 - 801885052) & 0x2FCB7EF9) - 1520667775)) + 1520651718) ^ (((v1 + 1745490871) & 0x97F5F3EF ^ 0x8EBF33B2 ^ *(v0 + 400)) + 1900043952) ^ ((*(v0 + 400) ^ 0xC236D47B) + 1036594053)) + 422821832) ^ v2;
  LODWORD(STACK[0x10ED8]) = (v1 + 209426523) ^ v2;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v1 ^ 0x40DD)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((v1 + 183) ^ (4 * (LOBYTE(STACK[0x10EDC]) != 55)))))(v4);
}

uint64_t sub_10041539C()
{
  v1 = STACK[0x144C];
  v2 = 17902189 * ((2 * ((&STACK[0x10000] + 3800) & 0x6FC52488) - (&STACK[0x10000] + 3800) - 1875190921) ^ 0x1E75CD67);
  LODWORD(STACK[0x10EDC]) = v2 + v0 + 2826;
  LODWORD(STACK[0x10EE0]) = (((v1 ^ 0x7DFBAF69) - 2113646441) ^ ((v1 ^ 0x4056B7B3) - 1079424947) ^ (v0 + 730243486 + (v1 ^ 0xD478ACF1 ^ (v0 - 1222379357) & 0x48DBFBFF))) - v2 + 681328634;
  v3 = STACK[0xF18];
  v4 = (*(STACK[0xF18] + 8 * (v0 ^ 0xB47A)))(&STACK[0x10ED8]);
  return (*(v3 + 8 * ((52600 * (LOBYTE(STACK[0x10ED8]) == 17)) ^ v0)))(v4);
}

uint64_t sub_100415554@<X0>(int a1@<W5>, int a2@<W8>)
{
  v8 = *(v7 + ((495 * ((a2 - ((v3 - 15) & (2 * a2)) - 67) ^ LODWORD(STACK[0xEC0]))) & 0x1FF ^ 0x100));
  v9 = v8 & 0x42 ^ 0x4E;
  v10 = ((v8 ^ (2 * ((v8 ^ v5) & (2 * ((v8 ^ v5) & (2 * ((v8 ^ v5) & (2 * ((v8 ^ v5) & (2 * ((v8 ^ v5) & (2 * v9) ^ v9)) ^ v9)) ^ v9)) ^ v9)) ^ v9))) ^ 0xF3) * a1 + 5585825;
  *(v4 + (*(v6 + 4 * ((2899 * ((a2 + 2304) ^ 0x3C2u) + 11268413) % 0x26C4)) ^ 0x8B6B2AE6) + 8464) = *(v2 + v10 - 3712 * (((2314099 * v10) >> 32) >> 1)) ^ 0xF4;
  return (*(STACK[0xF18] + 8 * ((30 * (a2 != 255)) ^ v3)))();
}

uint64_t sub_100415770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v7 = 0x981390C2FED9246;
  v7[2] = 0;
  v7[3] = 0;
  v8 = STACK[0x11F0];
  *(v8 + 8) = -371865839;
  STACK[0x3910] = v8;
  return (*(STACK[0xF18] + 8 * (((v6 ^ 0xFFFC1C65) + v6) ^ (25989 * (v6 == 256306640)))))(a1, a2, a3, a4, a5, a6, STACK[0x950]);
}

uint64_t sub_1004157F0()
{
  v3 = (((*v2 ^ 0x9000217B) + 1879039621) ^ ((*v2 ^ 0xF35761FF) + 212377089) ^ (((59 * (v1 ^ 0xC02E) - 1971203945) ^ *v2) + 1971157099)) - 1496415619;
  v5 = v3 > 0xBCF8BB6B && (v1 ^ 0xBCF87858) + v0 >= v3;
  return (*(STACK[0xF18] + 8 * (((4 * v5) | (v5 << 6)) ^ v1)))();
}

uint64_t sub_1004158B0@<X0>(unsigned int a1@<W0>, int a2@<W1>, char a3@<W2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v19 = a7 + v13;
  v20 = a7 - 1;
  v21 = (v8 + (v9 + v20));
  v22 = ((v21 ^ *(*v15 + (*v14 & a1))) & 0x7FFFFFFF) * a2;
  v23 = ((v22 >> ((v10 & v11) - 123)) ^ v22) * a2;
  *(a8 + v19) = *v21 ^ *(v17 + (v23 >> 24)) ^ *((v23 >> 24) + v18 + 3) ^ *((v23 >> 24) + v16 + 2) ^ v23 ^ (BYTE3(v23) * a3) ^ a4;
  return (*(STACK[0xF18] + 8 * (((v20 != a5) * a6) ^ v12)))();
}

uint64_t sub_1004159A0()
{
  v1 = STACK[0xF18];
  v2 = (*(STACK[0xF18] + 8 * (v0 + 24327)))(STACK[0x2930]);
  return (*(v1 + 8 * v0))(v2);
}

uint64_t sub_100415A70@<X0>(int a1@<W1>, unsigned int a2@<W2>, unsigned __int16 a3@<W4>, int a4@<W5>, int a5@<W6>, unsigned int a6@<W7>, int a7@<W8>)
{
  v23 = a5 + (*(v7 + v11 * (a7 ^ 0x27) + 2780740 - (v11 * (a7 ^ 0x27u) + 2780740) / 0xE80 * a1) ^ 0x9D) * a4;
  LOBYTE(v23) = *(STACK[0xEA0] + (((*(v7 + v23 - (((v23 * a6) >> 32) >> 4) * a1) ^ a3) * v17) & 0x1FF));
  v24 = v23 & 0x10 ^ v19;
  *(v16 + (*(v9 + 4 * (v13 + ((a7 + 3840) ^ 0x3C2) * v12 - ((((v13 + ((a7 + 3840) ^ 0x3C2u) * v12) * a2) >> 32) >> 13) * v15)) ^ v18) + v10) = v23 ^ HIBYTE(v14) ^ (2 * ((v23 ^ v21) & (2 * ((v23 ^ v21) & (2 * ((v23 ^ v21) & (2 * ((v23 ^ v21) & (2 * (((2 * (v24 ^ v23 & v20)) ^ 0xCC) & (v23 ^ v21) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v24)) ^ v22;
  return (*(STACK[0xF18] + 8 * (((a7 != 255) | (4 * (a7 != 255))) ^ v8)))();
}

uint64_t sub_100415B7C()
{
  v1 = (STACK[0xF10] + 1514) | 0x2E10;
  v2 = STACK[0xF10] + 2791;
  STACK[0x5F58] = v0;
  return (*(STACK[0xF18] + 8 * (((v1 ^ 0xBF22) * (v0 == 0)) ^ v2)))();
}

uint64_t sub_100415BFC()
{
  v1 = *STACK[0x6408];
  v2 = *(STACK[0x6408] + 8);
  v3 = (&STACK[0xC4D0] + STACK[0x7690]);
  STACK[0x7690] += 16;
  *v3 = v1;
  v3[1] = v2;
  return (*(STACK[0xF18] + 8 * (((v1 >= ((v0 + 16905) ^ 0x100006166uLL)) * (((v0 + 27046) | 0x238) ^ 0x8B38)) ^ v0)))();
}

uint64_t sub_100415C6C()
{
  v1 = STACK[0xF10] - 1921411633;
  v2 = ((v0 - v1) | (v1 - v0)) >= 0;
  return (*(STACK[0xF18] + 8 * (v1 ^ 0x8D7A112D ^ (v2 | (8 * v2)))))();
}

uint64_t sub_100415CC4@<X0>(int a1@<W8>)
{
  STACK[0xB848] = v2;
  STACK[0xB850] = v1;
  STACK[0xB858] = *(v2 + 8);
  return (*(STACK[0xF18] + 8 * (((*(v2 + 32) != 0) * (a1 ^ 0x487D ^ (a1 - 17711) ^ 0xF53F)) ^ a1)))();
}

uint64_t sub_100415D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v32 = 139493411 * ((2 * ((v31 - 128) & 0x62F2BB80) - (v31 - 128) - 1660074881) ^ 0x9120A53A);
  *(v31 - 120) = ((v29 + 2008978062) ^ v30) - v32 + ((2 * v30) & 0xEF7DEBF4) - 1403171216;
  *(v31 - 116) = (v29 - 15279) ^ v32;
  *(v31 - 128) = &a29;
  v33 = (*(a26 + 8 * (v29 ^ 0xA994)))(v31 - 128);
  return (*(a26 + 8 * v29))(v33);
}

uint64_t sub_100415E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v11 = 8 * v8;
  v12 = *(v10 + 4 * ((2899 * (((v8 ^ 0xCADF70F2) - 83799033) ^ ((v8 ^ 0xC0EB6A7A) - 248164721) ^ ((v8 ^ 0x4380FB28) + LODWORD(STACK[0xE30]))) + 1602593919) % 0x26C4));
  v13 = ((((8 * v8) ^ 0xF1638838) - 846383344) ^ (((8 * v8) ^ 0xC1F0D6C3) - 48338443) ^ (((8 * v8) ^ 0x7D3453C5) + 1104866547)) * a5 + 1446294712;
  v14 = ((((8 * v8) ^ 0x8F8719CA) - 342523242) ^ (((8 * v8) ^ 0x4103E671) + 621903151) ^ (((8 * v8) ^ 0x8323F292) - 416192050)) * a5 + 717263404;
  v15 = ((((8 * v8) ^ 0xBE78DE3B) + 2021994760) ^ (((8 * v8) ^ 0x98E32DA7) + 1579074204) ^ (((8 * v8) ^ 0x6B3CFEA7) - 1379855972)) * a5 + 846270250;
  v16 = *(STACK[0xEC0] + 4 * ((707 * (((v12 ^ 0x9648C09) + 165725500) ^ ((v12 ^ 0xA2DC2BB5) - 1571265912) ^ ((v12 ^ 0x862AFE6B) - 2035370150)) + 2081515278) % 0x300));
  v17 = ((((8 * v8) ^ 0x78B570A2) - 350910861) ^ (((8 * v8) ^ 0x301A0C99) - 1548027318) ^ (((8 * v8) ^ 0x5087111) - 1767340094)) * a5 + 1751933896;
  v18 = ((((8 * v8) ^ 0x2D75A6C9) + 1378989284) ^ (((8 * v8) ^ 0x2A477B41) + 1426286956) ^ (((8 * v8) ^ 0x4A95D0B7) + 902939294)) * a5 + 1005203724;
  v19 = (16 * v8) & 0x900;
  v20 = (((8 * v8) ^ 0xABED6957) + 402893303) ^ (((8 * v8) ^ 0x85403FD8) + 917438330) ^ (((8 * v8) ^ 0x630A5BA0) - 790324478);
  v21 = ((((8 * v8) ^ 0x52B944F0) + 1623640508) ^ (((8 * v8) ^ 0x409C497) + 913721821) ^ (((8 * v8) ^ 0x1B178D5B) + 694681617)) * a5 + 1314953274;
  v22 = (((8 * v8) ^ 0x179B90D5) + 1801734944) ^ (((8 * v8) ^ 0x763E3317) + 180480222) ^ (((8 * v8) ^ 0x2C02AEFA) + 1358787889);
  v23 = (((8 * v8) ^ 0xF8F0F566) + 625992686) ^ (((8 * v8) ^ 0x4F3FC711) - 1837051493) ^ (((8 * v8) ^ 0xFA683F5C) + 668412376);
  v24 = (((8 * v8) ^ 0x8171718B) + 1174123758) ^ (((8 * v8) ^ 0xB84CD940) + 2093358119) ^ (((8 * v8) ^ 0x749AA5E5) - 1341103996);
  v25 = ((((8 * v8) ^ 0x7E8F25CC) + 954789045) ^ (((8 * v8) ^ 0x9C3111B8) - 631842623) ^ (((8 * v8) ^ 0xAF19395C) - 377556955)) * a5 - 1637999966;
  v26 = ((((8 * v8) ^ 0x6D7971E2) - 153292287) ^ (((8 * v8) ^ 0x4D76E2A9) - 690790068) ^ (((8 * v8) ^ 0x6DA89E71) - 166912620)) * a5 + 1287356321;
  v27 = 2899 * (((v16 ^ 0x7E123B73) + 1252071349) ^ ((v16 ^ 0x51E1EC3D) + 1699922171) ^ ((v16 ^ 0x3EAE5EA3) + 169701989)) + 1921489423;
  v28 = v15 - ((((v15 >> 5) * a8) >> 32) >> 1) * v9;
  v29 = v27 % 0x26C4;
  v30 = (((v8 ^ 0x64CA2DA5) - 1690971557) ^ ((v8 ^ 0xA04D0076) + 1605566346) ^ ((v8 ^ 0x8D33CC7D) + 1925985155)) - 983155740;
  v31 = v17 - ((((v17 >> 5) * a8) >> 32) >> 1) * v9;
  v32 = (v30 ^ 0x34CB582) & (2 * (v30 & 0x844EA5CB)) ^ v30 & 0x844EA5CB;
  v33 = v18 - ((((v18 >> 5) * a8) >> 32) >> 1) * v9;
  v34 = v21 - ((((v21 >> 5) * a8) >> 32) >> 1) * v9;
  v35 = ((2 * (v30 ^ 0xBD0FE14)) ^ 0x1F3CB7BE) & (v30 ^ 0xBD0FE14) ^ (2 * (v30 ^ 0xBD0FE14)) & 0x8F9E5BDE;
  v36 = v35 ^ 0x80824841;
  v37 = v25 - ((((v25 >> 5) * a8) >> 32) >> 1) * v9;
  v38 = (v35 ^ 0x31C131C) & (4 * v32) ^ v32;
  v39 = 4 * (v35 ^ 0x80824841);
  v40 = (v39 ^ 0x3E796F7C) & v36;
  v41 = v39 & 0x8F9E5BDC;
  v42 = v26 - ((((v26 >> 5) * a8) >> 32) >> 1) * v9;
  v43 = (v40 ^ v41 ^ 0xE184B50) & (16 * v38) ^ v38;
  v44 = ((16 * (v40 ^ v41 ^ 0x81861083)) ^ 0xF9E5BDF0) & (v40 ^ v41 ^ 0x81861083) ^ (16 * (v40 ^ v41 ^ 0x81861083)) & 0x8F9E5BD0;
  v45 = v43 ^ 0x8F9E5BDF ^ (v44 ^ 0x89841900) & (v43 << 8);
  v46 = (((v11 ^ 0x9849119) + 1100999836) ^ ((v11 ^ 0x25E04EC9) + 1845179212) ^ ((v11 ^ 0x61C3D66B) + 702065642)) + ((v19 + 1230279527) ^ (v19 + 1461361559) ^ ((v19 ^ 0x89330E38) - 811099025));
  v47 = v24 * a5 - 1878761366 - (((((v24 * a5 - 1878761366) >> 5) * a8) >> 32) >> 1) * v9;
  v48 = v46 * a5 + 1823141047 - (((((v46 * a5 + 1823141047) >> 5) * a8) >> 32) >> 1) * v9;
  v49 = v30 ^ (2 * ((v45 << 16) & 0xF9E0000 ^ v45 ^ ((v45 << 16) ^ 0x5BDF0000) & (((v44 ^ 0x61A420F) << 8) & 0xF9E0000 ^ 0x1840000 ^ (((v44 ^ 0x61A420F) << 8) ^ 0x1E5B0000) & (v44 ^ 0x61A420F))));
  v50 = (STACK[0xEB0] + (*(v10 + 4 * v29) ^ 0xC6A71E2));
  v51 = *v50;
  v52 = 1864610357 * ((1864610357 * ((v50 ^ LODWORD(STACK[0xE60])) & 0x7FFFFFFF)) ^ ((1864610357 * ((v50 ^ LODWORD(STACK[0xE60])) & 0x7FFFFFFF)) >> 16));
  v53 = (((v11 ^ 0x760F3E80) + 641042860) ^ ((v11 ^ 0xF182F5C2) - 1581759766) ^ ((v11 ^ 0xCA2AC66F) - 1710198459)) * a5 + 1398724380;
  v54 = v53 - ((((v53 >> 5) * a8) >> 32) >> 1) * v9;
  v55 = (((v11 ^ 0x1B8218B4) + 956382788) ^ ((v11 ^ 0x62D102F9) + 1079125007) ^ ((v11 ^ 0x34F41770) + 376910216)) * a5 - 1943088193;
  v56 = v22 * a5 + 1193078743 - (((((v22 * a5 + 1193078743) >> 5) * a8) >> 32) >> 1) * v9;
  v57 = (((v11 ^ 0xC798B486) + 1463981091) ^ ((v11 ^ 0x57210250) - 939842827) ^ ((v11 ^ 0xDD1EBBFA) + 1304730463)) * a5 + 1029477674;
  v58 = v57 - ((((v57 >> 5) * a8) >> 32) >> 1) * v9;
  v59 = *(STACK[0xE90] + (v52 >> 24)) ^ v51 ^ *(STACK[0xE80] + (v52 >> 24)) ^ *((v52 >> 24) + STACK[0xE70] + 1) ^ v52 ^ (-107 * (v52 >> 24));
  v60 = *(a4 + 8 * (v14 - ((((v14 >> 5) * a8) >> 32) >> 1) * v9));
  v61 = *(a4 + 8 * v33);
  v62 = *(a4 + 8 * (v55 - ((((v55 >> 5) * a8) >> 32) >> 1) * v9));
  v63 = *(a4 + 8 * (v13 - ((((v13 >> 5) * a8) >> 32) >> 1) * v9)) ^ 0xC535EB3318759A9CLL;
  v64 = *(a4 + 8 * v31) ^ 0xA21A9BBDA5FC6FB5;
  if ((((*(STACK[0xE90] + (v52 >> 24)) ^ v51 ^ *(STACK[0xE80] + (v52 >> 24)) ^ *((v52 >> 24) + STACK[0xE70] + 1)) ^ (v52 ^ (-107 * BYTE3(v52)))) & 1) == 0)
  {
    v63 = 0xCFCE33B4946FCC5ALL;
  }

  v65 = v60 ^ 0x2B8AE73EF2618889;
  if (((*(STACK[0xE90] + (v52 >> 24)) ^ v51 ^ *(STACK[0xE80] + (v52 >> 24)) ^ *((v52 >> 24) + STACK[0xE70] + 1)) ^ (v52 ^ (-107 * BYTE3(v52)))))
  {
    v66 = v65;
  }

  else
  {
    v66 = 0x1A533FE4A6933E3DLL;
  }

  if ((((*(STACK[0xE90] + (v52 >> 24)) ^ v51 ^ *(STACK[0xE80] + (v52 >> 24)) ^ *((v52 >> 24) + STACK[0xE70] + 1)) ^ (v52 ^ (-107 * BYTE3(v52)))) & 8) != 0)
  {
    v67 = v64;
  }

  else
  {
    v67 = 0x93C34367F10ED901;
  }

  v68 = v62 ^ 0xF191954DDACA1B08;
  v69 = 0xFB6A4DCA56D04DCELL;
  if ((((*(STACK[0xE90] + (v52 >> 24)) ^ v51 ^ *(STACK[0xE80] + (v52 >> 24)) ^ *((v52 >> 24) + STACK[0xE70] + 1)) ^ (v52 ^ (-107 * BYTE3(v52)))) & 8) != 0)
  {
    v69 = v68;
  }

  v70 = 0x790F86714DEF405ELL;
  if ((((*(STACK[0xE90] + (v52 >> 24)) ^ v51 ^ *(STACK[0xE80] + (v52 >> 24)) ^ *((v52 >> 24) + STACK[0xE70] + 1)) ^ (v52 ^ (-107 * BYTE3(v52)))) & 4) != 0)
  {
    v70 = *(a4 + 8 * v34) ^ 0x73F45EF6C1F51698;
  }

  v71 = *(a4 + 8 * (v23 * a5 + 1916213714 - (((((v23 * a5 + 1916213714) >> 5) * a8) >> 32) >> 1) * v9)) ^ 0x1EBBA76554C19948;
  if ((v59 & 4) == 0)
  {
    v71 = 0x2F627FBF00332FFCLL;
  }

  if ((v59 & 2) != 0)
  {
    v72 = *(a4 + 8 * v37) ^ 0xD3A61A61BE3EEEACLL;
  }

  else
  {
    v72 = 0xE27FC2BBEACC5818;
  }

  v73 = v61 ^ 0xD6B5FF1D6B7B599ALL;
  if ((v59 & 2) == 0)
  {
    v73 = 0xDC4E279AE7610F5CLL;
  }

  v74 = *(a4 + 8 * v48);
  v75 = STACK[0xDA0] ^ v66;
  v76 = *(a4 + 8 * v42);
  v77 = *(a4 + 8 * v47) ^ 0x60CD2237B8B01A88;
  if (((((v59 ^ 0xF3) - 78) ^ ((v59 ^ 0xB2) - 15) ^ ((v59 ^ 0x41) + 4)) - 67) >= 0)
  {
    v77 = 0x5114FAEDEC42AC3CLL;
  }

  v78 = v76 ^ 0x54AE324A26239BE6;
  v79 = v74 ^ 0x5C09E42C7841353BLL;
  if (((((v59 ^ 0xF3) - 78) ^ ((v59 ^ 0xB2) - 15) ^ ((v59 ^ 0x41) + 4)) - 67) >= 0)
  {
    v79 = 0x56F23CABF45B63FDLL;
  }

  v80 = *(a4 + 8 * v28) ^ 0x64A8C6B49EC48790;
  v81 = *(a4 + 8 * v54) ^ 0x358971E11DB64EE0;
  if ((v59 & 0x10) == 0)
  {
    v78 = 0x5E55EACDAA39CD20;
    v81 = 0x450A93B4944F854;
  }

  if ((v59 & 0x20) == 0)
  {
    v80 = 0x6E531E3312DED156;
  }

  v82 = *(a4 + 8 * v58) ^ 0xA8864572BA4FAC39;
  if ((v59 & 0x20) == 0)
  {
    v82 = 0x995F9DA8EEBD1A8DLL;
  }

  v83 = v71 ^ v82;
  v84 = *(a4 + 8 * (v20 * a5 - 257108524 - (((((v20 * a5 - 257108524) >> 5) * a8) >> 32) >> 1) * v9)) ^ 0x17318CDDF657403BLL;
  if ((v59 & 0x40) == 0)
  {
    v84 = 0x26E85407A2A5F68FLL;
  }

  STACK[0xDA0] = v75 ^ v67 ^ v72 ^ v83 ^ v84 ^ v81 ^ 0xAE7E5BFE547C28B2 ^ v77;
  v85 = STACK[0xD90] ^ v63 ^ v70 ^ v78;
  v86 = *(a4 + 8 * v56) ^ 0x29D54769DF6122E6;
  if ((v59 & 0x40) == 0)
  {
    v86 = 0x232E9FEE537B7420;
  }

  STACK[0xD90] = v85 ^ v80 ^ v73 ^ v86 ^ v69 ^ 0xD43F882E77F6C53DLL ^ v79;
  return (*(STACK[0xF18] + 8 * ((13 * ((((v49 ^ 0xCD534E12) - 145341896) ^ ((v49 ^ 0x27D1590E) + 500454699) ^ ((v49 ^ 0x66CC0568) + 1556678989)) + 1236591022 < 0x18)) ^ LODWORD(STACK[0xE40]))))();
}